from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
# Register your models here.

from borsApp.models import *


class CatAdmin(admin.ModelAdmin):
	model = Categoria
	list_display = ('nom','pare','descripcio')
	search_fields = ('nom','pare__nom')

'''
class UserInline(admin.StackedInline):
    model = User
    filter_horizontal = ('categoria',)
'''
class MyUserAdmin(UserAdmin):
	#model = User
	#filter_horizontal = ('categoria',)

	fieldsets = UserAdmin.fieldsets + (
            (None, {
				'fields': ('imatge','arxiu',),
			}),
	)
	#inlines = [UserInline]

admin.site.register( Categoria, CatAdmin )
admin.site.register( Cicle )
admin.site.register( User, MyUserAdmin)