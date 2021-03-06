from django.shortcuts import render, redirect
from django.contrib.auth import logout
from django.shortcuts import redirect
from django import forms
from django.contrib.auth.decorators import login_required, user_passes_test
from django.utils import timezone

from core.models import *

from django.template import Context
from django.template.loader import get_template
from django.template.loader_tags import BlockNode, ExtendsNode
from django.utils.html import strip_tags
#
# Utils 
##########################################
def _get_node(template, context=Context(), name='subject'):
    for node in template:
        if isinstance(node, BlockNode) and node.name == name:
            return node.render(context)
        elif isinstance(node, ExtendsNode):
            return _get_node(node.nodelist, context, name)
    raise Exception("Node '%s' could not be found in template." % name)
def get_tos_text():
    templ = get_template("tos.html")
    section = _get_node(templ.template,name="content")
    text = strip_tags(section)
    return text.strip()

#
# TOS (Termes d'ús)
##########################################
# Decorator util @accepta_tos
def accepta_tos(func):
	def wrapper(request):
		if request.user.is_anonymous or request.user.tos:
			return func(request)
		else:
			return render( request, 'tos.html', {} )
	return wrapper


#
# TOS VIEWS (Termes d'ús)
##########################################
@login_required
def tos(request):
	return render( request, 'tos.html', {} )

@login_required
def tos_accepta(request):
	# Deixem constància de l'acceptació
	msg = "L'usuari ha ACCEPTAT els termes d'ús el {}.\n".format(timezone.now())
	msg += get_tos_text()
	if not request.user.registre:
		request.user.registre = msg
	else:
		request.user.registre += msg
	request.user.tos = True
	request.user.data_notificacio_tos = timezone.now()
	# obrim accés al backend
	request.user.is_staff = True
	request.user.save()
	return render( request, 'index.html', {} )

@login_required
def tos_refusa(request):
	# Deixem constància del refús
	msg = "L'usuari ha REFUSAT els termes d'ús el {}.\n".format(timezone.now())
	if not request.user.registre:
		request.user.registre = msg
	else:
		request.user.registre += msg
	# tanquem accés al backend
	request.user.is_staff = False
	request.user.save()
	logout(request)
	return render( request, 'index.html', {} )

#
# VIEWS
##########################################

from django.contrib.auth import authenticate, login

# Basic login and mainpage
def login_view(request):
	if request.method == "GET":
		return render( request, 'login.html', {} )
	else:
		email = request.POST["email"]
		passw = request.POST["password"]
		user = authenticate(request, email=email, password=passw)
		if user is not None:
			print("Loign OK user "+user.username)
			login(request,user)
			return redirect("/")
		# error in authenticate
		return render( request, 'login.html',
			{"msg":"Error: l'usuari o la contrasenya no son correctes."} )

def logout_view(request):
	logout(request)
	return redirect("/")

@accepta_tos
def index(request):
	return render( request, 'index.html', {} )

# Perfil
class PerfilForm(forms.ModelForm):
	class Meta:
		model = User
		#exclude = ('groups','permissions','is_staff','is_superuser','is_active',
		#	'password','last_login','date_joined')
		fields = ['first_name','last_name','email',
			'imatge','arxiu','descripcio',]

@login_required
@accepta_tos
def perfil(request):
	oldmail = request.user.email
	form = None
	if request.method=="POST":
		form = PerfilForm( request.POST, request.FILES, instance=request.user)
		if form.is_valid():
			# TODO: flash message?
			newmail = form.cleaned_data["email"]
			# guardem noves dades d'usuari
			form.save()
			# registrar canvis a registre
			if oldmail != newmail :
				request.user.registre += "Canvi d'email de l'usuari "+oldmail+" -> "+newmail+"\n"
				request.user.save()
			return redirect("/")
	else:
		# GET: create form
		form = PerfilForm(instance=request.user)
	
	return render(request, 'perfil.html', {"form":form} )


from django.contrib import messages
from django.contrib.auth import update_session_auth_hash
from django.contrib.auth.forms import PasswordChangeForm
from django.shortcuts import render, redirect

@login_required
@accepta_tos
def change_password(request):
    if request.method == 'POST':
        form = PasswordChangeForm(request.user, request.POST)
        if form.is_valid():
            user = form.save()
            update_session_auth_hash(request, user)  # Important!
            messages.success(request, 'Contrasenya canviada exitosament :)')
            return redirect('/perfil')
        else:
            messages.error(request, 'Sisplau, corregeix els errors descrits a continuació:')
    else:
        form = PasswordChangeForm(request.user)
    return render(request, 'change_password.html', {
        'form': form
    })
