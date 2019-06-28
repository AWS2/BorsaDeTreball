from django.core.management.base import BaseCommand, CommandError
from borsApp.models import Cicle, Categoria, Centre
from django.contrib.gis.geos import Point

import csv

class Command(BaseCommand):
    help = 'Carrega dades dels centres docents'

    def handle(self, *args, **options):
        # esborrem tots els centres
        Centre.objects.all().delete()

        with open('misc/Directori_de_centres_docents.csv') as csvfile:
            csv_reader = csv.DictReader( csvfile )
            for row in csv_reader:
                if row["Curs"] != "2018/2019" or "institut" not in row["Denominació completa"].lower():
                    continue
                qs = Centre.objects.filter(nom=row["Denominació completa"])
                if qs:
                    print("--- SALTANT (ja existeix) : "+row["Denominació completa"])
                    continue
                centre = Centre()
                centre.educatiu = True
                centre.codi = row["Codi centre"]
                centre.nom = row["Denominació completa"]
                centre.direccio = row["Adreça"]
                centre.poblacio = row["Nom localitat"]
                centre.cp = row["Codi postal"]
                centre.telefon = 1 #row["Telèfon"]
                centre.email = row["E-mail centre"]
                centre.web = ""
                x = row["Coordenades GEO X"]
                y = row["Coordenades GEO Y"]
                if( x and y ):
                    centre.localitzacio = Point(float(x),float(y))
                else:
                    centre.localitzacio = Point(0,0)
                centre.save()
                print(row["Codi centre"]+" | "+row["Denominació completa"])
