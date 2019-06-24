from django.db import models
from django.contrib.auth.models import AbstractUser
from django.utils.safestring import mark_safe
from django.conf import settings

from django.contrib.gis.db import models as gismodels
from django.contrib.gis.geos import Point
from djrichtextfield.models import RichTextField

# Create your models here.


class Categoria(models.Model):
	nom = models.CharField(max_length=255,unique=True)
	descripcio = RichTextField(blank=True,null=True)
	pare = models.ForeignKey('self',
			on_delete=models.CASCADE,
			null=True, blank=True, default=None)
	def __str__(self):
		return self.nom


class Cicle(models.Model):
	GRAU = (
		('CFGM',"Grau Mitjà"),
		('CFGS',"Grau Superior"),
		)
	grau = models.CharField(max_length=4,choices=GRAU)
	codi = models.CharField(max_length=4,unique=True)
	nom = models.CharField(max_length=255,unique=True)
	pladestudis = models.URLField(blank=True,null=True)
	familia = models.ForeignKey(Categoria,on_delete=models.CASCADE,null=True)
	descripcio = RichTextField()
	def __str__(self):
		return self.nom


class User(AbstractUser):
	# foto alumne o logo admin empresa
	imatge = models.ImageField(upload_to='imatgesPerfil', blank=True)
	# cv
	arxiu = models.FileField(upload_to='docPerfil', blank=True)
	descripcio = RichTextField(blank=True,null=True)
	localitzacio = gismodels.PointField(null=True,default=Point(0,0))
	def mostrar_imatge(self):
		return mark_safe('<img src="'+settings.MEDIA_URL+'%s" width="90" height="90"/>' % (self.imatge))
	mostrar_imatge.short_description = 'Avatar'
	#def save(self): hay que cambiar el metodo de guardar para la imagen


# centre educatiu o centre de treball (empresa)
class Centre(models.Model):
	educatiu = models.BooleanField()
	nom = models.CharField(max_length=255)
	direccio = RichTextField()
	poblacio = models.CharField(max_length=255)
	cp = models.CharField(max_length=5)
	telefon = models.IntegerField()
	email = models.EmailField()
	web = models.URLField(blank=True)
	# loc inicial al mar, enfront al Maresme (2.6875,41.5600)
	localitzacio = gismodels.PointField(blank=True,default=Point(2.6875,41.5600))
	descripcio = RichTextField(blank=True)
	# usuaris administradors
	admins = models.ManyToManyField(User,blank=True,related_name="admin")
	# només per centres educatius
	cicles = models.ManyToManyField(Cicle,blank=True)
	# logo empresa o centre educatiu
	imatge = models.ImageField(upload_to='imatgesCentre', blank=True)
	# si es empresa, adscrita a ceentres educatius
	adscripcio = models.ManyToManyField('self',blank=True)
	def __str__(self):
		return self.nom


# titol de CF obtingut per un alumne
class Titol(models.Model):
	cicle = models.ForeignKey(Cicle,on_delete=models.SET_NULL,null=True)
	centre = models.ForeignKey("Centre",on_delete=models.SET_NULL,null=True)
	data = models.DateField()
	alumne = models.ForeignKey(User,on_delete=models.CASCADE)
	# guardar descripció títol per si s'esborra el títol de referència
	descripcio = RichTextField(blank=True)


class Subscripcio(models.Model):
	centre_alumne = models.BooleanField()
	centre_empresa = models.BooleanField()
	categories = models.ManyToManyField(Categoria,blank=True)
	cicles = models.ManyToManyField(Cicle)
	distancia_empresa = models.FloatField(default=0.0) # en km al centre de treball
	distancia_centre = models.FloatField(default=0.0) # en km al centre de treball


from django.utils import timezone

class Oferta(models.Model):
	creada = models.DateTimeField(default=timezone.now)
	# TODO: check timedelta
	caduca = models.DateTimeField(default=timezone.now()+timezone.timedelta(days=32))
	activa = models.BooleanField()
	empresa = models.ForeignKey(Centre,on_delete=models.CASCADE,null=True)
	cicles = models.ManyToManyField(Cicle)
	titol = models.CharField(max_length=255)
	descripcio = RichTextField()


class Demandes(models.Model):
	pass

