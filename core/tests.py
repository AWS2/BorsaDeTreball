from django.test import TestCase
from django.contrib.staticfiles.testing import StaticLiveServerTestCase
from selenium.webdriver.firefox.webdriver import WebDriver

from core.models import User

# Create your tests here.

# Per volcar db per a test cal fer amb dumpdata --natural-foreign --natural-primary
# https://code.djangoproject.com/ticket/21278#comment:5


class MySeleniumTests(StaticLiveServerTestCase):
    fixtures = ['testdb.json',]
    #fixtures = ['centres_test.json','groups.json','users.json',]
    loged = False

    @classmethod
    def setUpClass(cls):
        super().setUpClass()
        cls.selenium = WebDriver()
        cls.selenium.implicitly_wait(5)

    @classmethod
    def tearDownClass(cls):
        cls.selenium.quit()
        super().tearDownClass()

    def backend_login(self,usuari,contrasenya):
        self.selenium.get('%s%s' % (self.live_server_url, '/admin/login/'))
        username_input = self.selenium.find_element_by_name("username")
        username_input.send_keys(usuari)
        password_input = self.selenium.find_element_by_name("password")
        password_input.send_keys(contrasenya)
        self.selenium.find_element_by_xpath('//input[@value="Iniciar sessió"]').click()
        self.loged = True

    def backend_logout(self):
        self.selenium.find_element_by_xpath('//a[text()="Finalitzar sessió"]').click()
        self.loged = False

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
        # TODO: comprovar que a l'afegir usuari no deixa editar super ni permisos

    def check_alumnes(self,alumnes,adminuser):
        # tornem a menu principal
        self.selenium.find_element_by_xpath('//a[@href="/admin/"]').click()
        # anem a menu usuaris
        self.selenium.find_element_by_xpath('//a[@href="/admin/core/user/"]').click()
        # check que hi son tots els alumnes
        for alumne in alumnes:
            self.selenium.find_element_by_xpath('//th[@class="field-username"]/a[text()="'+alumne+'"]')
        # check que tots els usuaris que es visualitzen a la llista son del centre
        usernames = self.selenium.find_elements_by_xpath('//th[@class="field-username"]/a')
        for username in usernames:
            # check que el user pertany al centre
            user = User.objects.get(username=username.text)
            if user.centre != adminuser.centre:
                raise Exception("L'usuari creat per l'admin_centre no pertany al seu centre")

    def check_items_admin_centre(self):
        # items de admin centre
        items = ['Ofertes','Subscripcions','Titols','Categories','Centres','Usuaris']
        for item in items:
            self.selenium.find_element_by_xpath('//a[text()="'+item+'"]')
        # items que NO hi han de ser
        # TODO: activar (comentat per check ràpid)
        """items = ['Cicles','Moduls Professionals','Python Social Auth','Grups']
        for item in items:
            try:
                self.selenium.find_element_by_xpath('//a[text()="'+item+'"]')
                # si trobem l'element prohibit, llancem excepció
                raise Exception("Usuari admin_centre no pot tenir ("+item+") al menu")
            except:
                pass"""

    def test_superadmin(self):
        self.backend_login("admin","admin123")
        # comprovem login fent logout
        self.backend_logout()
        # superadmin pot veure tots els items
        # TODO...

    def test_admin_centre1(self):
        self.backend_login("admin1","enric123")
        self.check_items_admin_centre()
        # admin1 centre crea alumnes
        alumnes = ["alumne11","alumne12","alumne13","alumne14"]
        for alumne in alumnes:
            self.backend_crea_alumne(alumne,"enric123")
        # admin1 pot veure els seus alumnes
        adminuser = User.objects.get(username="admin1")
        self.check_alumnes(alumnes,adminuser)
        # logout
        self.backend_logout()

    def xxtest_admin_centre2(self):
        self.backend_login("admin2","enric123")
        self.check_items_admin_centre()
        # admin2 centre crea alumnes
        self.backend_crea_alumne("alumne21","enric123")
        self.backend_crea_alumne("alumne22","enric123")
        # admin2 pot veure els seus alumnes
        # logout
        self.backend_logout()
