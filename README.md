
# Borsa de Treball IETI

Projecte per a borsa de treball online per a centres on s'imparteixen cicles formatius. El projecte s'ha iniciat a l'Institut Esteve Terradas i Illa de Cornellà de Llobregat i està sent dut a terme pels alumnes de DAW (programació web).

## Instal·lació

Per instal·lar-te aquest software has de tenir instal·lat GIT, Python 3.x i Virtualenv.

    $ git clone https://github.com/aws2/BorsaDeTreball.git
    $ cd BorsaDeTreball
    $ virtualenv env
    $ source env/bin/activate
    (env)$ pip install -r requirements.txt

Si en aquest punt obtens errors del pip install, probablement és perquè tens un virtualenv que només treballa en Python 2.x, i ens cal un virtualenv instal·lat per a Python 3.x (amb pip3). Consulta la documentació de pip.


Utilitzarem la base de dades PostGis, PostgreSQL amb ampliacions de geolocalització (com s'explica [aquí](https://realpython.com/location-based-app-with-geodjango-tutorial/). Per arrencar una instància dockeritzada ho farem mitjançant:

    $ docker run --name=postgis -d -e POSTGRES_USER=user001 -e POSTGRES_PASS=123456789 -e POSTGRES_DBNAME=gis -p 5432:5432 kartoza/postgis:9.6-2.4


Seguim creant la BD, carregant dades de prova i posant en marxa l'aplicació:

    (env)$ python manage.py migrate
    (env)$ python manage.py createsuperuser
    (env)$ python manage.py runserver

Si volem carregar dades de prova, podem fer (per exemple, amb "categories"):

    (env)$ python manage.py loaddata <arxiu_fixtures>



## Seguiment del projecte
Pots trobar més informació del desenvolupament del projecte a la wiki de l'Esteve Terradas:
    https://wiket.esteveterradas.cat/index.php/Projecte_Borsa_de_Treball


