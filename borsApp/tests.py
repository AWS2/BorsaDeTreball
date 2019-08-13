from django.test import TestCase
from django.db.utils import IntegrityError
from django.contrib.staticfiles.testing import StaticLiveServerTestCase
from selenium.webdriver.firefox.webdriver import WebDriver
from selenium.common.exceptions import NoSuchElementException
from core.models import User

# Create your tests here.


from borsApp.models import *


class BorsaTests(StaticLiveServerTestCase):
    serialized_rollback = True
    fixtures = ['testdb.json',]
    loged = False
    username = None
    # permisos exclusius de superusuari
    #permisos_only_super = [ 'is_staff','is_superuser','groups','user_permissions']

    @classmethod
    def setUpClass(cls):
        super().setUpClass()
        cls.selenium = WebDriver()
        cls.selenium.implicitly_wait(5)

    @classmethod
    def tearDownClass(cls):
        cls.selenium.quit()
        super().tearDownClass()

    # UTILS GENERALS
    #######################################
    def ves_al_menu_principal(self):
        self.selenium.find_element_by_xpath('//a[@href="/admin/"]').click()

    def backend_login(self,usuari,contrasenya):
        self.selenium.get('%s%s' % (self.live_server_url, '/admin/login/'))
        username_input = self.selenium.find_element_by_name("username")
        username_input.send_keys(usuari)
        password_input = self.selenium.find_element_by_name("password")
        password_input.send_keys(contrasenya)
        self.selenium.find_element_by_xpath('//input[@value="Iniciar sessió"]').click()
        try:
            boto_logout = self.selenium.find_element_by_xpath('//a[text()="Finalitzar sessió"]')
        except NoSuchElementException as e:
            raise Exception("ERROR en login de l'usuari: "+usuari)
        self.loged = True
        self.username = usuari

    def backend_logout(self):
        self.ves_al_menu_principal()
        self.selenium.find_element_by_xpath('//a[text()="Finalitzar sessió"]').click()
        self.loged = False
        self.username = None

    def backend_crea_alumne(self,usuari,contrasenya):
        # tornem a menu principal
        self.selenium.find_element_by_xpath('//a[@href="/admin/"]').click()
        # anem a crear usuari
        self.selenium.find_element_by_xpath('//a[@href="/admin/core/user/add/"]').click()
        usuari_input = self.selenium.find_element_by_name('username')
        usuari_input.send_keys(usuari)
        p1_input = self.selenium.find_element_by_name('password1')
        p1_input.send_keys(contrasenya)
        p2_input = self.selenium.find_element_by_name('password2')
        p2_input.send_keys(contrasenya)
        self.selenium.find_element_by_xpath('//input[@value="Desar"]').click()
        # comprovem usuari creat OK
        # TODO: millorar test (comprovar no errors/warnings)
        #self.selenium.find_element_by_xpath('//li[@class="success" and contains(text(),"fou afegit amb èxit")]')
        self.selenium.find_element_by_xpath('//li[@class="success"]')

    # UTILS EMPRESES
    #######################################
    def check_menu_empresa(self,nom):
        # l'empresa es veu a ella i només a ella mateixa
        self.ves_al_menu_principal()
        self.selenium.find_element_by_xpath('//a[text()="Empreses"]').click()
        self.selenium.find_element_by_xpath('//a[text()="'+nom+'"]')


    # aqui va la "chicha"
    def crea_empresa(self,nom):
        self.ves_al_menu_principal()
        # afegim empresas
        self.selenium.find_element_by_xpath('//a[@href="/admin/borsApp/empresa/add/"]').click()
        self.selenium.find_element_by_name('nom').send_keys(nom)
        # accedir dins iframe direcció
        self.selenium.switch_to_frame("id_direccio_ifr")
        self.selenium.find_element_by_xpath('//body').send_keys("c. Tal, 1")
        # tornar al main frame
        self.selenium.switch_to_default_content()
        self.selenium.find_element_by_name('poblacio').send_keys("Cornellà")
        self.selenium.find_element_by_name('cp').send_keys("08940")
        self.selenium.find_element_by_name('telefon').send_keys("931112233")
        nom2 = nom.replace(' ','_')
        self.selenium.find_element_by_name('email').send_keys("info@"+nom2+".com")
        self.selenium.find_element_by_xpath('//input[@value="Desar"]').click()
        # check
        self.selenium.find_element_by_xpath('//li[@class="success"]')

    def ajusta_usuari_empresa(self,usuari,contrasenya):
        # se suposa que estem logats com a admin_centre
        self.ves_al_menu_principal()
        # menu usuaris
        self.selenium.find_element_by_xpath('//a[text()="Usuaris"]').click()
        # accedim a l'usuari de l'empresa acabada de crear
        # el nom de l'usuari és igual al de l'empresa, al menys pels tests
        self.selenium.find_element_by_xpath('//a[text()="'+usuari+'"]').click()
        # anem a canvi de contasenya
        self.selenium.find_element_by_xpath('//a[@href="../password/"]').click()
        self.selenium.find_element_by_name('password1').send_keys(contrasenya)
        self.selenium.find_element_by_name('password2').send_keys(contrasenya)

        self.selenium.find_element_by_xpath('//input[@value="Canviar contrasenya"]').click()
        # comprovem usuari creat OK
        # TODO: millorar test (comprovar no errors/warnings)
        #self.selenium.find_element_by_xpath('//li[@class="success" and contains(text(),"fou afegit amb èxit")]')
        self.selenium.find_element_by_xpath('//li[@class="success"]')

    def crea_oferta_caducada(self):
        self.ves_al_menu_principal()
        # menu ofertes
        self.selenium.find_element_by_xpath('//a[@href="/admin/borsApp/oferta/add/"]').click()
        # omplim form
        self.selenium.find_element_by_name('inici_0').clear()
        self.selenium.find_element_by_name('inici_1').clear()
        self.selenium.find_element_by_name('final_0').clear()
        self.selenium.find_element_by_name('final_1').clear()
        self.selenium.find_element_by_name('inici_0').send_keys("01/01/2019")
        self.selenium.find_element_by_name('inici_1').send_keys("10:30:00")
        self.selenium.find_element_by_name('final_0').send_keys("10/02/2019")
        self.selenium.find_element_by_name('final_1').send_keys("10:30:00")
        self.selenium.find_element_by_name('titol').send_keys("oferta test caducada 1")
        # select2 empresa (FK)
        self.selenium.find_element_by_xpath('//span[@id="select2-id_empresa-container"]').click()
        self.selenium.find_element_by_xpath('//li[text()="'+self.username+'"]').click()
        # select2 cicles (m2m)
        self.selenium.find_element_by_xpath('//div[@class="form-row field-cicles"]').click()
        self.selenium.find_element_by_xpath('//input[@class="select2-search__field"]').send_keys("web\n")
        # direccio té el RichTextField amb un iframe pel mig
        # accedir dins iframe direcció
        self.selenium.switch_to_frame("id_descripcio_ifr")
        self.selenium.find_element_by_xpath('//body').send_keys("oferta test caducada.\nbla bla...")
        # tornar al main frame
        self.selenium.switch_to_default_content()
        # submit
        self.selenium.find_element_by_xpath('//input[@value="Desar"]').click()
        # comprovem oferta creada OK
        self.selenium.find_element_by_xpath('//li[@class="success"]')

    def veu_oferta_caducada1(self):
        self.ves_al_menu_principal()
        self.selenium.find_element_by_xpath('//a[text()="Ofertes"]').click()
        self.selenium.find_element_by_xpath('//a[text()="oferta test caducada 1"]').click()

    def no_veu_oferta_caducada1(self):
        self.ves_al_menu_principal()
        try:
            self.selenium.find_element_by_xpath('//a[text()="Ofertes"]').click()
            self.selenium.find_element_by_xpath('//a[text()="oferta test caducada 1"]').click()
            raise Exception("ERROR: l'usuari no autoritzat '%s' pot veure les ofertes de l'empresa 1"%(self.username,))
        except NoSuchElementException as e:
            # si no el troba, esta OK
            pass
        except Exception as e:
            raise e


    # TESTS
    #######################################

    def test_1_crea_empreses(self):
        print("test_crea_empreses")
        # centre 1
        self.backend_login("admin1","enric123")
        self.backend_crea_alumne("alumne11","enric123")
        self.backend_crea_alumne("alumne12","enric123")
        # usuari i empresa es diran igual pels tests
        # ULL: no posar noms d'empresa amb espais per tests!!!
        self.crea_empresa("empresa11")
        self.ajusta_usuari_empresa("empresa11","enric123")
        self.check_menu_empresa("empresa11")
        # sortim de admin1
        self.backend_logout()
        # centre2 (admin2)
        self.backend_login("admin2","enric123")
        self.backend_crea_alumne("alumne21","enric123")
        self.backend_crea_alumne("alumne22","enric123")
        # empresa2
        self.crea_empresa("empresa21")
        self.ajusta_usuari_empresa("empresa21","enric123")
        self.check_menu_empresa("empresa21")
        self.backend_logout()

        #def test_2_empresa21_no_veu_empresa11(self):
        self.backend_login("empresa21","enric123")
        try:
            self.check_menu_empresa("empresa11")
            raise Exception("L'usuari empresa21 veu l'empresa11, i no li correspon.")
        except NoSuchElementException as e:
            # si no hi ha l'element "empresa11", anem bé
            pass
        except Exception as e:
            # si és qualsevol altre excepció, la rellancem
            raise e
        self.backend_logout()

        #def test_3_admin2_no_veu_empresa1(self):
        self.backend_login("admin2","enric123")
        try:
            self.check_menu_empresa("empresa11")
            raise Exception("L'usuari admin2 veu l'empresa1, i no li correspon.")
        except NoSuchElementException as e:
            # si no hi ha l'element "empresa1", anem bé
            pass
        except Exception as e:
            # si és qualsevol altre excepció, la rellancem
            raise e
        self.backend_logout()

        #def test_4_empresa1_oferta_caducada(self):
        # empresa1
        self.backend_login("empresa11","enric123")
        self.crea_oferta_caducada()
        self.veu_oferta_caducada1()
        self.backend_logout()
        # admin2
        self.backend_login("admin2","enric123")
        self.no_veu_oferta_caducada1()
        self.backend_logout()
        # alumne21
        self.backend_login("alumne21","enric123")
        self.no_veu_oferta_caducada1()
        self.backend_logout()
        # empresa2
        self.backend_login("empresa21","enric123")
        self.no_veu_oferta_caducada1()
        self.backend_logout()

    def xtest_5_empresa1_oferta_ok(self):
        self.backend_login("empresa11","enric123")
        self.crea_oferta_ok()
        self.backend_logout()
        # alumne1 sí veu l'oferta ok

    def xtest_alumne_veu_ofertes(self):
        # els alumnes del cicle en questió sí que veuen les ofertes
        pass

    def xtest_alumne_no_veu_ofertes(self):
        # els alumnes d'altres cicles NO veuen les ofertes
        pass

"""Afegir
- admins centre afegint alumne al frontend, tb té titol
- admins no veuen titols creuats
- alumnes no veuen titols creuats
- 

"""