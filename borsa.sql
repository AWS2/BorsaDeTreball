-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: borsa
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'admin_borsa'),(2,'admin_empresa'),(3,'alumnes'),(4,'profes');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (103,1,41),(104,1,42),(105,1,43),(106,1,44),(95,1,45),(96,1,46),(97,1,47),(98,1,48),(99,1,49),(100,1,50),(101,1,51),(102,1,52),(77,1,65),(78,1,66),(79,1,67),(80,1,68),(81,1,69),(82,1,70),(83,1,71),(84,1,72),(85,1,74),(86,1,76),(87,1,77),(88,1,78),(89,1,79),(90,1,80),(91,1,85),(92,1,86),(93,1,87),(94,1,88),(107,2,68),(108,2,70),(109,2,72),(110,2,77),(111,2,78),(112,2,79),(113,2,80),(114,3,65),(115,3,66),(116,3,67),(117,3,68),(118,3,80),(119,3,81),(120,3,82),(121,3,83),(122,3,84),(123,3,88),(124,3,92),(125,3,93),(126,3,94),(127,3,96),(128,3,104),(129,3,108),(130,3,112),(131,4,89),(132,4,90),(133,4,91),(134,4,92),(135,4,93),(136,4,94),(137,4,95),(138,4,96),(141,4,97),(139,4,98),(140,4,100),(142,4,101),(143,4,102),(144,4,103),(145,4,104),(146,4,105),(147,4,106),(148,4,107),(149,4,108),(150,4,109),(151,4,110),(152,4,111),(153,4,112);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add association',1,'add_association'),(2,'Can change association',1,'change_association'),(3,'Can delete association',1,'delete_association'),(4,'Can view association',1,'view_association'),(5,'Can add code',2,'add_code'),(6,'Can change code',2,'change_code'),(7,'Can delete code',2,'delete_code'),(8,'Can view code',2,'view_code'),(9,'Can add nonce',3,'add_nonce'),(10,'Can change nonce',3,'change_nonce'),(11,'Can delete nonce',3,'delete_nonce'),(12,'Can view nonce',3,'view_nonce'),(13,'Can add user social auth',4,'add_usersocialauth'),(14,'Can change user social auth',4,'change_usersocialauth'),(15,'Can delete user social auth',4,'delete_usersocialauth'),(16,'Can view user social auth',4,'view_usersocialauth'),(17,'Can add partial',5,'add_partial'),(18,'Can change partial',5,'change_partial'),(19,'Can delete partial',5,'delete_partial'),(20,'Can view partial',5,'view_partial'),(21,'Can add log entry',6,'add_logentry'),(22,'Can change log entry',6,'change_logentry'),(23,'Can delete log entry',6,'delete_logentry'),(24,'Can view log entry',6,'view_logentry'),(25,'Can add permission',7,'add_permission'),(26,'Can change permission',7,'change_permission'),(27,'Can delete permission',7,'delete_permission'),(28,'Can view permission',7,'view_permission'),(29,'Can add group',8,'add_group'),(30,'Can change group',8,'change_group'),(31,'Can delete group',8,'delete_group'),(32,'Can view group',8,'view_group'),(33,'Can add content type',9,'add_contenttype'),(34,'Can change content type',9,'change_contenttype'),(35,'Can delete content type',9,'delete_contenttype'),(36,'Can view content type',9,'view_contenttype'),(37,'Can add session',10,'add_session'),(38,'Can change session',10,'change_session'),(39,'Can delete session',10,'delete_session'),(40,'Can view session',10,'view_session'),(41,'Can add user',11,'add_user'),(42,'Can change user',11,'change_user'),(43,'Can delete user',11,'delete_user'),(44,'Can view user',11,'view_user'),(45,'Can add categoria',12,'add_categoria'),(46,'Can change categoria',12,'change_categoria'),(47,'Can delete categoria',12,'delete_categoria'),(48,'Can view categoria',12,'view_categoria'),(49,'Can add centre',13,'add_centre'),(50,'Can change centre',13,'change_centre'),(51,'Can delete centre',13,'delete_centre'),(52,'Can view centre',13,'view_centre'),(53,'Can add cicle',14,'add_cicle'),(54,'Can change cicle',14,'change_cicle'),(55,'Can delete cicle',14,'delete_cicle'),(56,'Can view cicle',14,'view_cicle'),(57,'Can add modul professional',15,'add_modulprofessional'),(58,'Can change modul professional',15,'change_modulprofessional'),(59,'Can delete modul professional',15,'delete_modulprofessional'),(60,'Can view modul professional',15,'view_modulprofessional'),(61,'Can add unitat formativa',16,'add_unitatformativa'),(62,'Can change unitat formativa',16,'change_unitatformativa'),(63,'Can delete unitat formativa',16,'delete_unitatformativa'),(64,'Can view unitat formativa',16,'view_unitatformativa'),(65,'Can add demanda',17,'add_demanda'),(66,'Can change demanda',17,'change_demanda'),(67,'Can delete demanda',17,'delete_demanda'),(68,'Can view demanda',17,'view_demanda'),(69,'Can add empresa',18,'add_empresa'),(70,'Can change empresa',18,'change_empresa'),(71,'Can delete empresa',18,'delete_empresa'),(72,'Can view empresa',18,'view_empresa'),(73,'Can add notificacio',19,'add_notificacio'),(74,'Can change notificacio',19,'change_notificacio'),(75,'Can delete notificacio',19,'delete_notificacio'),(76,'Can view notificacio',19,'view_notificacio'),(77,'Can add oferta',20,'add_oferta'),(78,'Can change oferta',20,'change_oferta'),(79,'Can delete oferta',20,'delete_oferta'),(80,'Can view oferta',20,'view_oferta'),(81,'Can add subscripcio',21,'add_subscripcio'),(82,'Can change subscripcio',21,'change_subscripcio'),(83,'Can delete subscripcio',21,'delete_subscripcio'),(84,'Can view subscripcio',21,'view_subscripcio'),(85,'Can add titol',22,'add_titol'),(86,'Can change titol',22,'change_titol'),(87,'Can delete titol',22,'delete_titol'),(88,'Can view titol',22,'view_titol'),(89,'Can add done spec',23,'add_donespec'),(90,'Can change done spec',23,'change_donespec'),(91,'Can delete done spec',23,'delete_donespec'),(92,'Can view done spec',23,'view_donespec'),(93,'Can add equip',24,'add_equip'),(94,'Can change equip',24,'change_equip'),(95,'Can delete equip',24,'delete_equip'),(96,'Can view equip',24,'view_equip'),(97,'Can add projecte',25,'add_projecte'),(98,'Can change projecte',25,'change_projecte'),(99,'Can delete projecte',25,'delete_projecte'),(100,'Can view projecte',25,'view_projecte'),(101,'Can add qualificacio',26,'add_qualificacio'),(102,'Can change qualificacio',26,'change_qualificacio'),(103,'Can delete qualificacio',26,'delete_qualificacio'),(104,'Can view qualificacio',26,'view_qualificacio'),(105,'Can add spec',27,'add_spec'),(106,'Can change spec',27,'change_spec'),(107,'Can delete spec',27,'delete_spec'),(108,'Can view spec',27,'view_spec'),(109,'Can add sprint',28,'add_sprint'),(110,'Can change sprint',28,'change_sprint'),(111,'Can delete sprint',28,'delete_sprint'),(112,'Can view sprint',28,'view_sprint');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borsApp_demanda`
--

DROP TABLE IF EXISTS `borsApp_demanda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borsApp_demanda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borsApp_demanda`
--

LOCK TABLES `borsApp_demanda` WRITE;
/*!40000 ALTER TABLE `borsApp_demanda` DISABLE KEYS */;
/*!40000 ALTER TABLE `borsApp_demanda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borsApp_empresa`
--

DROP TABLE IF EXISTS `borsApp_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borsApp_empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `direccio` longtext NOT NULL,
  `poblacio` varchar(255) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `telefon` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `web` varchar(200) NOT NULL,
  `localitzacio` point NOT NULL,
  `descripcio` longtext NOT NULL,
  `imatge` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom` (`nom`),
  SPATIAL KEY `borsApp_empresa_localitzacio_id` (`localitzacio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borsApp_empresa`
--

LOCK TABLES `borsApp_empresa` WRITE;
/*!40000 ALTER TABLE `borsApp_empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `borsApp_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borsApp_empresa_admins`
--

DROP TABLE IF EXISTS `borsApp_empresa_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borsApp_empresa_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `borsApp_empresa_admins_empresa_id_user_id_4617df85_uniq` (`empresa_id`,`user_id`),
  KEY `borsApp_empresa_admins_user_id_6af8cb69_fk_core_user_id` (`user_id`),
  CONSTRAINT `borsApp_empresa_admins_empresa_id_615f7001_fk_borsApp_empresa_id` FOREIGN KEY (`empresa_id`) REFERENCES `borsApp_empresa` (`id`),
  CONSTRAINT `borsApp_empresa_admins_user_id_6af8cb69_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borsApp_empresa_admins`
--

LOCK TABLES `borsApp_empresa_admins` WRITE;
/*!40000 ALTER TABLE `borsApp_empresa_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `borsApp_empresa_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borsApp_empresa_adscripcio`
--

DROP TABLE IF EXISTS `borsApp_empresa_adscripcio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borsApp_empresa_adscripcio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa_id` int(11) NOT NULL,
  `centre_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `borsApp_empresa_adscripcio_empresa_id_centre_id_925d7576_uniq` (`empresa_id`,`centre_id`),
  KEY `borsApp_empresa_adscripcio_centre_id_d2d08829_fk_core_centre_id` (`centre_id`),
  CONSTRAINT `borsApp_empresa_adsc_empresa_id_584fc9c1_fk_borsApp_e` FOREIGN KEY (`empresa_id`) REFERENCES `borsApp_empresa` (`id`),
  CONSTRAINT `borsApp_empresa_adscripcio_centre_id_d2d08829_fk_core_centre_id` FOREIGN KEY (`centre_id`) REFERENCES `core_centre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borsApp_empresa_adscripcio`
--

LOCK TABLES `borsApp_empresa_adscripcio` WRITE;
/*!40000 ALTER TABLE `borsApp_empresa_adscripcio` DISABLE KEYS */;
/*!40000 ALTER TABLE `borsApp_empresa_adscripcio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borsApp_notificacio`
--

DROP TABLE IF EXISTS `borsApp_notificacio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borsApp_notificacio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registre` longtext NOT NULL,
  `enviament` datetime(6) DEFAULT NULL,
  `confirmacio` datetime(6) DEFAULT NULL,
  `oferta_id` int(11) NOT NULL,
  `usuari_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `borsApp_notificacio_oferta_id_usuari_id_da73e340_uniq` (`oferta_id`,`usuari_id`),
  KEY `borsApp_notificacio_usuari_id_432e1dd8_fk_core_user_id` (`usuari_id`),
  CONSTRAINT `borsApp_notificacio_oferta_id_8bcf6fbc_fk_borsApp_oferta_id` FOREIGN KEY (`oferta_id`) REFERENCES `borsApp_oferta` (`id`),
  CONSTRAINT `borsApp_notificacio_usuari_id_432e1dd8_fk_core_user_id` FOREIGN KEY (`usuari_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borsApp_notificacio`
--

LOCK TABLES `borsApp_notificacio` WRITE;
/*!40000 ALTER TABLE `borsApp_notificacio` DISABLE KEYS */;
/*!40000 ALTER TABLE `borsApp_notificacio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borsApp_oferta`
--

DROP TABLE IF EXISTS `borsApp_oferta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borsApp_oferta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inici` datetime(6) NOT NULL,
  `final` datetime(6) NOT NULL,
  `activa` tinyint(1) NOT NULL,
  `titol` varchar(255) NOT NULL,
  `descripcio` longtext NOT NULL,
  `creador_id` int(11) DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `borsApp_oferta_creador_id_72eb45ec_fk_core_user_id` (`creador_id`),
  KEY `borsApp_oferta_empresa_id_39510958_fk_borsApp_empresa_id` (`empresa_id`),
  CONSTRAINT `borsApp_oferta_creador_id_72eb45ec_fk_core_user_id` FOREIGN KEY (`creador_id`) REFERENCES `core_user` (`id`),
  CONSTRAINT `borsApp_oferta_empresa_id_39510958_fk_borsApp_empresa_id` FOREIGN KEY (`empresa_id`) REFERENCES `borsApp_empresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borsApp_oferta`
--

LOCK TABLES `borsApp_oferta` WRITE;
/*!40000 ALTER TABLE `borsApp_oferta` DISABLE KEYS */;
/*!40000 ALTER TABLE `borsApp_oferta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borsApp_oferta_cicles`
--

DROP TABLE IF EXISTS `borsApp_oferta_cicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borsApp_oferta_cicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oferta_id` int(11) NOT NULL,
  `cicle_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `borsApp_oferta_cicles_oferta_id_cicle_id_35228147_uniq` (`oferta_id`,`cicle_id`),
  KEY `borsApp_oferta_cicles_cicle_id_dfe64cfe_fk_core_cicle_id` (`cicle_id`),
  CONSTRAINT `borsApp_oferta_cicles_cicle_id_dfe64cfe_fk_core_cicle_id` FOREIGN KEY (`cicle_id`) REFERENCES `core_cicle` (`id`),
  CONSTRAINT `borsApp_oferta_cicles_oferta_id_f5363c47_fk_borsApp_oferta_id` FOREIGN KEY (`oferta_id`) REFERENCES `borsApp_oferta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borsApp_oferta_cicles`
--

LOCK TABLES `borsApp_oferta_cicles` WRITE;
/*!40000 ALTER TABLE `borsApp_oferta_cicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `borsApp_oferta_cicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borsApp_subscripcio`
--

DROP TABLE IF EXISTS `borsApp_subscripcio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borsApp_subscripcio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `distancia` double NOT NULL,
  `creat` datetime(6) NOT NULL,
  `modificat` datetime(6) NOT NULL,
  `alumne_id` int(11) NOT NULL,
  `centre_educatiu_id` int(11) DEFAULT NULL,
  `centre_treball_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `borsApp_subscripcio_alumne_id_5c12068b_fk_core_user_id` (`alumne_id`),
  KEY `borsApp_subscripcio_centre_educatiu_id_0c99fd46_fk_core_cent` (`centre_educatiu_id`),
  KEY `borsApp_subscripcio_centre_treball_id_154aa701_fk_borsApp_e` (`centre_treball_id`),
  CONSTRAINT `borsApp_subscripcio_alumne_id_5c12068b_fk_core_user_id` FOREIGN KEY (`alumne_id`) REFERENCES `core_user` (`id`),
  CONSTRAINT `borsApp_subscripcio_centre_educatiu_id_0c99fd46_fk_core_cent` FOREIGN KEY (`centre_educatiu_id`) REFERENCES `core_centre` (`id`),
  CONSTRAINT `borsApp_subscripcio_centre_treball_id_154aa701_fk_borsApp_e` FOREIGN KEY (`centre_treball_id`) REFERENCES `borsApp_empresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borsApp_subscripcio`
--

LOCK TABLES `borsApp_subscripcio` WRITE;
/*!40000 ALTER TABLE `borsApp_subscripcio` DISABLE KEYS */;
/*!40000 ALTER TABLE `borsApp_subscripcio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borsApp_subscripcio_categories`
--

DROP TABLE IF EXISTS `borsApp_subscripcio_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borsApp_subscripcio_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscripcio_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `borsApp_subscripcio_cate_subscripcio_id_categoria_a782ca7f_uniq` (`subscripcio_id`,`categoria_id`),
  KEY `borsApp_subscripcio__categoria_id_187182ec_fk_core_cate` (`categoria_id`),
  CONSTRAINT `borsApp_subscripcio__categoria_id_187182ec_fk_core_cate` FOREIGN KEY (`categoria_id`) REFERENCES `core_categoria` (`id`),
  CONSTRAINT `borsApp_subscripcio__subscripcio_id_45c5c583_fk_borsApp_s` FOREIGN KEY (`subscripcio_id`) REFERENCES `borsApp_subscripcio` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borsApp_subscripcio_categories`
--

LOCK TABLES `borsApp_subscripcio_categories` WRITE;
/*!40000 ALTER TABLE `borsApp_subscripcio_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `borsApp_subscripcio_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borsApp_subscripcio_cicles`
--

DROP TABLE IF EXISTS `borsApp_subscripcio_cicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borsApp_subscripcio_cicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscripcio_id` int(11) NOT NULL,
  `cicle_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `borsApp_subscripcio_cicles_subscripcio_id_cicle_id_64e9c2d6_uniq` (`subscripcio_id`,`cicle_id`),
  KEY `borsApp_subscripcio_cicles_cicle_id_004ecb63_fk_core_cicle_id` (`cicle_id`),
  CONSTRAINT `borsApp_subscripcio__subscripcio_id_7dc7f5cf_fk_borsApp_s` FOREIGN KEY (`subscripcio_id`) REFERENCES `borsApp_subscripcio` (`id`),
  CONSTRAINT `borsApp_subscripcio_cicles_cicle_id_004ecb63_fk_core_cicle_id` FOREIGN KEY (`cicle_id`) REFERENCES `core_cicle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borsApp_subscripcio_cicles`
--

LOCK TABLES `borsApp_subscripcio_cicles` WRITE;
/*!40000 ALTER TABLE `borsApp_subscripcio_cicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `borsApp_subscripcio_cicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borsApp_titol`
--

DROP TABLE IF EXISTS `borsApp_titol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borsApp_titol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `graduat` tinyint(1) NOT NULL,
  `data` date DEFAULT NULL,
  `descripcio` longtext NOT NULL,
  `alumne_id` int(11) NOT NULL,
  `centre_id` int(11) DEFAULT NULL,
  `cicle_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `borsApp_titol_alumne_id_31e29f62_fk_core_user_id` (`alumne_id`),
  KEY `borsApp_titol_centre_id_37d1692f_fk_core_centre_id` (`centre_id`),
  KEY `borsApp_titol_cicle_id_f89864d9_fk_core_cicle_id` (`cicle_id`),
  CONSTRAINT `borsApp_titol_alumne_id_31e29f62_fk_core_user_id` FOREIGN KEY (`alumne_id`) REFERENCES `core_user` (`id`),
  CONSTRAINT `borsApp_titol_centre_id_37d1692f_fk_core_centre_id` FOREIGN KEY (`centre_id`) REFERENCES `core_centre` (`id`),
  CONSTRAINT `borsApp_titol_cicle_id_f89864d9_fk_core_cicle_id` FOREIGN KEY (`cicle_id`) REFERENCES `core_cicle` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borsApp_titol`
--

LOCK TABLES `borsApp_titol` WRITE;
/*!40000 ALTER TABLE `borsApp_titol` DISABLE KEYS */;
INSERT INTO `borsApp_titol` VALUES (1,0,NULL,'',7,30,124);
/*!40000 ALTER TABLE `borsApp_titol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_categoria`
--

DROP TABLE IF EXISTS `core_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `descripcio` longtext,
  `pare_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom` (`nom`),
  KEY `core_categoria_pare_id_4218f562_fk_core_categoria_id` (`pare_id`),
  CONSTRAINT `core_categoria_pare_id_4218f562_fk_core_categoria_id` FOREIGN KEY (`pare_id`) REFERENCES `core_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_categoria`
--

LOCK TABLES `core_categoria` WRITE;
/*!40000 ALTER TABLE `core_categoria` DISABLE KEYS */;
INSERT INTO `core_categoria` VALUES (26,'Cicles Formatius de Formació Professional',NULL,NULL),(27,'AF',NULL,26),(28,'AG',NULL,26),(29,'AR',NULL,26),(30,'CM',NULL,26),(31,'EA',NULL,26),(32,'EE',NULL,26),(33,'EO',NULL,26),(34,'FM',NULL,26),(35,'FS',NULL,26),(36,'HT',NULL,26),(37,'IA',NULL,26),(38,'IC',NULL,26),(39,'IE',NULL,26),(40,'IM',NULL,26),(41,'IP',NULL,26),(42,'IS',NULL,26),(43,'MP',NULL,26),(44,'QU',NULL,26),(45,'SA',NULL,26),(46,'SC',NULL,26),(47,'SM',NULL,26),(48,'TM',NULL,26),(49,'TX',NULL,26),(50,'AE',NULL,26);
/*!40000 ALTER TABLE `core_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_centre`
--

DROP TABLE IF EXISTS `core_centre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_centre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `direccio` longtext NOT NULL,
  `poblacio` varchar(255) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `telefon` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `web` varchar(200) NOT NULL,
  `localitzacio` point NOT NULL,
  `descripcio` longtext NOT NULL,
  `imatge` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  SPATIAL KEY `core_centre_localitzacio_id` (`localitzacio`)
) ENGINE=InnoDB AUTO_INCREMENT=598 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_centre`
--

LOCK TABLES `core_centre` WRITE;
/*!40000 ALTER TABLE `core_centre` DISABLE KEYS */;
INSERT INTO `core_centre` VALUES (1,'Institut La Pineda','C. de la Batlloria, s/n','Badalona','08917',1,'a8001421@xtec.cat','',_binary '\0\0\0\0\0\0\0\��O\�@;��D@','',''),(2,'Institut Isaac Albéniz','Parc Serentill, s/n','Badalona','08915',1,'a8001431@xtec.cat','',_binary '\0\0\0\0\0\0\0�b�m�@4t`w�D@','',''),(3,'Institut Eugeni d\'Ors','Av. Maresme, 192-212','Badalona','08918',1,'a8001443@xtec.cat','',_binary '\0\0\0\0\0\0\0�i�1\�@\�\"ͫ��D@','',''),(4,'Institut Anna Gironella de Mundet','Pg. Vall d\'Hebron, s/n','Barcelona','08035',1,'a8012714@xtec.cat','',_binary '\0\0\0\0\0\0\0A�5��0@��\��ƶD@','',''),(5,'Institut Montjuïc','C. Cisell, 19','Barcelona','08038',1,'a8013093@xtec.cat','',_binary '\0\0\0\0\0\0\0�\����)@���Zq�D@','',''),(6,'Institut Joan d\'Àustria','C. Selva de Mar, 211','Barcelona','08020',1,'a8013101@xtec.cat','',_binary '\0\0\0\0\0\0\0r�g�@C�\�?C�D@','',''),(7,'Institut Jaume Balmes','C. Pau Claris, 121','Barcelona','08009',1,'a8013111@xtec.cat','',_binary '\0\0\0\0\0\0\0��E\�JV@�\�\�?�D@','',''),(8,'Institut Joan Boscà','Av. d\'Esplugues, 40','Barcelona','08034',1,'a8013123@xtec.cat','',_binary '\0\0\0\0\0\0\04U]�\�\0@\�@\�\�s�D@','',''),(9,'Institut Moisès Broggi','C. Sant Quintí, 32-50','Barcelona','08041',1,'a8013135@xtec.cat','',_binary '\0\0\0\0\0\0\03\�m@Sh\�D@','',''),(10,'Institut Emperador Carles','C. Enric Bargés, 9-13','Barcelona','08014',1,'a8013147@xtec.cat','',_binary '\0\0\0\0\0\0\0�]\�i+@R\���ڰD@','',''),(11,'Institut Infanta Isabel d\'Aragó','Pl. d\'Angeleta Ferrer, 1','Barcelona','08020',1,'a8013159@xtec.cat','',_binary '\0\0\0\0\0\0\0�\��I�@g!\�E�D@','',''),(12,'Institut Poeta Maragall','C. Provença, 187','Barcelona','08036',1,'a8013160@xtec.cat','',_binary '\0\0\0\0\0\0\0��A@*��\��D@','',''),(13,'Institut Ausiàs March','Av. d\'Esplugues, 38','Barcelona','08034',1,'a8013172@xtec.cat','',_binary '\0\0\0\0\0\0\0��w]�\�\0@\�@\�\�s�D@','',''),(14,'Institut Bernat Metge','C. Menorca, 55','Barcelona','08020',1,'a8013184@xtec.cat','',_binary '\0\0\0\0\0\0\0��S�@����$�D@','',''),(15,'Institut Milà i Fontanals','Pl. Josep Ma. Folch i Torres, s/n','Barcelona','08001',1,'a8013196@xtec.cat','',_binary '\0\0\0\0\0\0\0D�mS�a@�\�O��D@','',''),(16,'Institut Montserrat','C. Copèrnic, 84','Barcelona','08006',1,'a8013202@xtec.cat','',_binary '\0\0\0\0\0\0\0c6.%@\��4}o�D@','',''),(17,'Institut Narcís Monturiol','C. Harmonia, s/n','Barcelona','08035',1,'a8013214@xtec.cat','',_binary '\0\0\0\0\0\0\05�s-i#@�{N��D@','',''),(18,'Institut Menéndez y Pelayo','Via Augusta, 140','Barcelona','08006',1,'a8013226@xtec.cat','',_binary '\0\0\0\0\0\0\0m\�n��(@J���4�D@','',''),(19,'Institut Verdaguer','Parc de la Ciutadella, s/n','Barcelona','08003',1,'a8013238@xtec.cat','',_binary '\0\0\0\0\0\0\0o�˅?@ƀ\�=�D@','',''),(20,'Institut Escola del Treball','C. Comte d\'Urgell, 187','Barcelona','08036',1,'a8013275@xtec.cat','',_binary '\0\0\0\0\0\0\0�U��1@:��JɱD@','',''),(21,'Institut Sant Andreu','C. Badosa, 10-14','Barcelona','08016',1,'a8013366@xtec.cat','',_binary '\0\0\0\0\0\0\0yz\�eYq@M_�e�D@','',''),(22,'Institut Rambla Prim','C. Cristòbal de Moura, 223','Barcelona','08019',1,'a8013469@xtec.cat','',_binary '\0\0\0\0\0\0\0v0N��@\�Y�6�D@','',''),(23,'Institut Barri Besòs','C. Pujadas, 397','Barcelona','08019',1,'a8013470@xtec.cat','',_binary '\0\0\0\0\0\0\0e\�ė\�@\�)�2��D@','',''),(24,'Institut Ferran Tallada','C. Gran Vista, 54','Barcelona','08032',1,'a8014115@xtec.cat','',_binary '\0\0\0\0\0\0\0̺�\�\�N@\�ҙ\�εD@','',''),(25,'Institut Josep Serrat i Bonastre','C. Marquès de Santa Anna, 4','Barcelona','08023',1,'a8014188@xtec.cat','',_binary '\0\0\0\0\0\0\0�~\�L/@�`��D@','',''),(26,'Institut Juan Manuel Zafra','C. Rogent, 51','Barcelona','08026',1,'a8014206@xtec.cat','',_binary '\0\0\0\0\0\0\0\�-w@1�	살D@','',''),(27,'Institut Mare de Déu de la Mercè','C. Motors, 122-130','Barcelona','08040',1,'a8014401@xtec.cat','',_binary '\0\0\0\0\0\0\0\�*�q\'@v��ȬD@','',''),(28,'Institut Guillem de Berguedà','Camí de Pedret, 2','Berga','08600',1,'a8014693@xtec.cat','',_binary '\0\0\0\0\0\0\0\��-?��?Q%0�\rE@','',''),(29,'Institut Bisbe Sivilla','C. Valldebanador, 39','Calella','08370',1,'a8015171@xtec.cat','',_binary '\0\0\0\0\0\0\0pO\� 5@,`?\Z\�\�D@','',''),(30,'Institut Esteve Terradas i Illa','<p>C. Bonavista, 70</p>','Cornellà de Llobregat','08940',1,'a8016781@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\�KZ�\0@��y��D@','',''),(31,'Institut Francesc Macià','C. Joan Maragall, 42','Cornellà de Llobregat','08940',1,'a8016793@xtec.cat','',_binary '\0\0\0\0\0\0\0����\0@������D@','',''),(32,'Institut Severo Ochoa','C. Severo Ochoa, 1-13','Esplugues de Llobregat','08950',1,'a8017131@xtec.cat','',_binary '\0\0\0\0\0\0\0gy\n���\0@}ȘׯD@','',''),(33,'Institut Joanot Martorell','C. Sant Mateu, 30-32','Esplugues de Llobregat','08950',1,'a8017153@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\�\�J�\�\0@g�Y���D@','',''),(34,'Institut de Bruguers','C. Jaume I, 4','Gavà','08850',1,'a8017530@xtec.cat','',_binary '\0\0\0\0\0\0\0p\�0\�\0@\�W����D@','',''),(35,'Institut Antoni Cumella','C. Roger de Flor, s/n','Granollers','08401',1,'a8017931@xtec.cat','',_binary '\0\0\0\0\0\0\0AA� �B@\�!�_�\�D@','',''),(36,'Institut Santa Eulàlia','Pl. Pius XII, s/n','L\'Hospitalet de Llobregat','08902',1,'a8019307@xtec.cat','',_binary '\0\0\0\0\0\0\0ci��\�@�*��D@','',''),(37,'Institut Pedraforca','C. Enginyer Moncunill, 2','L\'Hospitalet de Llobregat','08905',1,'a8019319@xtec.cat','',_binary '\0\0\0\0\0\0\0ݏ\�K�\�\0@�=a���D@','',''),(38,'Institut Torras i Bages','Av. Can Serra, 101','L\'Hospitalet de Llobregat','08906',1,'a8019320@xtec.cat','',_binary '\0\0\0\0\0\0\0)\0p3�\�\0@L�(\�D@','',''),(39,'Institut Llobregat','C. Enric Prat de la Riba, 11-17','L\'Hospitalet de Llobregat','08901',1,'a8019371@xtec.cat','',_binary '\0\0\0\0\0\0\0\�.�(�\�\0@�\�\�t��D@','',''),(40,'Institut Provençana','C. de Sant Pius X, 8','L\'Hospitalet de Llobregat','08901',1,'a8019401@xtec.cat','',_binary '\0\0\0\0\0\0\0Q߮\�\�\0@\�J*\�~�D@','',''),(41,'Institut Bellvitge','Av. Amèrica, 99','L\'Hospitalet de Llobregat','08907',1,'a8019411@xtec.cat','',_binary '\0\0\0\0\0\0\0\�Z�J\�\0@�D�\�%�D@','',''),(42,'Institut Pere Vives i Vich','Av. Emili Vallès, 17','Igualada','08700',1,'a8019630@xtec.cat','',_binary '\0\0\0\0\0\0\0)D�0���?wp�\�\�D@','',''),(43,'Institut Lacetània','Av. Bases de Manresa, 51-59','Manresa','08240',1,'a8020462@xtec.cat','',_binary '\0\0\0\0\0\0\0uC\�<�?\'��\0E\�D@','',''),(44,'Institut Lluís de Peguera','Pl. Espanya, 2','Manresa','08240',1,'a8020474@xtec.cat','',_binary '\0\0\0\0\0\0\0:�;tw6�?�NѠ�\�D@','',''),(45,'Institut Pompeu Fabra','C. Fèlix Duran i Canyameres, 3','Martorell','08760',1,'a8020620@xtec.cat','',_binary '\0\0\0\0\0\0\0�����?\�ճ�D@','',''),(46,'Institut Maremar','Av. Cusí Fortunet, 52','El Masnou','08320',1,'a8020826@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\�ʝ\"�@XY�D@','',''),(47,'Institut Mediterrània','C. Rosa Sensat, s/n','El Masnou','08320',1,'a8020838@xtec.cat','',_binary '\0\0\0\0\0\0\0^m��<n@\�53jf�D@','',''),(48,'Institut Miquel Biada','C. Puig i Cadafalch, 89','Mataró','08303',1,'a8021259@xtec.cat','',_binary '\0\0\0\0\0\0\0\�kB��m@^]\�\�D@','',''),(49,'Institut Alexandre Satorras','Av. Velòdrom, s/n','Mataró','08304',1,'a8021260@xtec.cat','',_binary '\0\0\0\0\0\0\07\��@�\�Mb\�D@','',''),(50,'Institut Damià Campeny','Pl. dels Bous, 5','Mataró','08301',1,'a8021302@xtec.cat','',_binary '\0\0\0\0\0\0\0�)Hnx�@@�s�e\�D@','',''),(51,'Institut Lluís de Requesens','C. Felip Canalias, 19-23','Molins de Rei','08750',1,'a8021430@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�E#o&\0@\��x�\r�D@','',''),(52,'Institut de Mollet del Vallès','Av. Burgos, 96','Mollet del Vallès','08100',1,'a8021594@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\\��ܧ@�tm\�D@','',''),(53,'Institut Vicenç Plantada','C. Palau de Plegamans, 8','Mollet del Vallès','08100',1,'a8021600@xtec.cat','',_binary '\0\0\0\0\0\0\0ǽf�A�@MK�\ZS\�D@','',''),(54,'Institut Montserrat Miró i Vila','C. Carrerada, s/n','Montcada Centre','08110',1,'a8021788@xtec.cat','',_binary '\0\0\0\0\0\0\0߆{\�x@5��޾D@','',''),(55,'Institut Baldiri Guilera','C. Mestre Vigo Garreta, 1','El Prat de Llobregat','08820',1,'a8023131@xtec.cat','',_binary '\0\0\0\0\0\0\0(�7���\0@�p{uZ�D@','',''),(56,'Institut Escola Industrial','C. Calderón, 56','Sabadell','08201',1,'a8024741@xtec.cat','',_binary '\0\0\0\0\0\0\0-\�]\�\0@\�pR�\Z\�D@','',''),(57,'Institut Arraona','C. Praga, 43','Sabadell','08207',1,'a8024765@xtec.cat','',_binary '\0\0\0\0\0\0\0qS�Lҿ\0@�\�\�w\�D@','',''),(58,'Institut Egara','C. América, 55(Can Parellada)','Terrassa','08228',1,'a8024777@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�l��S\0@\�yd\�D@','',''),(59,'Institut Pau Vila','C. Viladomat, 118','Sabadell','08205',1,'a8024871@xtec.cat','',_binary '\0\0\0\0\0\0\0ޣ�O�\�\0@^R\\%�\�D@','',''),(60,'Institut Ferran Casablancas','C. Mare de les Aigües, 2','Sabadell','08206',1,'a8024881@xtec.cat','',_binary '\0\0\0\0\0\0\0\�w!*�\0@a[b\�\�D@','',''),(61,'Institut Castellarnau','Carretera N-150, Km. 15','Sabadell','08206',1,'a8024893@xtec.cat','',_binary '\0\0\0\0\0\0\0\�R����\0@\r��\"\�\�D@','',''),(62,'Institut Camps Blancs','Av. Aragó, 40','Sant Boi de Llobregat','08830',1,'a8025605@xtec.cat','',_binary '\0\0\0\0\0\0\0�ߠ�zD\0@�p�[��D@','',''),(63,'Institut Joaquim Rubió i Ors','C. Pau Claris, 4','Sant Boi de Llobregat','08830',1,'a8025654@xtec.cat','',_binary '\0\0\0\0\0\0\0#\�G�]L\0@W�C\�իD@','',''),(64,'Institut Olorda','C. Carles Buigas, s/n','Sant Feliu de Llobregat','08980',1,'a8026397@xtec.cat','',_binary '\0\0\0\0\0\0\0�庯m\0@Ӿ�x4�D@','',''),(65,'Institut Francesc Ferrer i Guàrdia','Av. de la Generalitat, 30','Sant Joan Despí','08970',1,'a8026683@xtec.cat','',_binary '\0\0\0\0\0\0\0q\"�܂\0@�\�\�mG�D@','',''),(66,'Institut Puig Castellar','C. Anselm Rius, 10','Santa Coloma de Gramenet','08924',1,'a8028047@xtec.cat','',_binary '\0\0\0\0\0\0\0��]\�\�@M�\�\�^�D@','',''),(67,'Institut de Terrassa','Rbla. d\'Egara, 331','Terrassa','08224',1,'a8030339@xtec.cat','',_binary '\0\0\0\0\0\0\0��*ޢ	\0@]/\�\�\�D@','',''),(68,'Institut Investigador Blanxart','C. Granada, 3','Terrassa','08226',1,'a8030340@xtec.cat','',_binary '\0\0\0\0\0\0\0)ZG\�;\0@~�-\�D@','',''),(69,'Institut de Vic','Av. Sant Bernat Calbó, 8','Vic','08500',1,'a8031022@xtec.cat','',_binary '\0\0\0\0\0\0\0~��C@cL:��D@','',''),(70,'Institut Jaume Callís','Av. Olímpia, 2','Vic','08500',1,'a8031034@xtec.cat','',_binary '\0\0\0\0\0\0\06{�\�\�@C�\0�v�D@','',''),(71,'Institut Torre Roja','Av. dels Jocs Olímpics, 8','Viladecans','08840',1,'a8031228@xtec.cat','',_binary '\0\0\0\0\0\0\0����H$\0@=ҵ6Z�D@','',''),(72,'Institut Francesc Xavier Lluch i Rafecas','C. Doctor Zamenhof, 30','Vilanova i la Geltrú','08800',1,'a8031681@xtec.cat','',_binary '\0\0\0\0\0\0\0[\�\�_�?&���j�D@','',''),(73,'Institut Manuel de Cabanyes','Av. Francesc Macià, 110-114','Vilanova i la Geltrú','08800',1,'a8031711@xtec.cat','',_binary '\0\0\0\0\0\0\0b��\�~�?\0�A�b�D@','',''),(74,'Institut Forat del Vent','Pizarro, 35','Cerdanyola del Vallès','08290',1,'a8031757@xtec.cat','',_binary '\0\0\0\0\0\0\0��\�]�.@vО+G�D@','',''),(75,'Institut Can Jofresa','Av. Can Jofresa, 9','Terrassa','08223',1,'a8031770@xtec.cat','',_binary '\0\0\0\0\0\0\0�<e[$.\0@�\Z�Wb\�D@','',''),(76,'Institut Valldemossa','C. Pintor Alsamora, 7-9','Barcelona','08016',1,'a8031812@xtec.cat','',_binary '\0\0\0\0\0\0\0�i�_Hq@̕2���D@','',''),(77,'Institut Illa dels Banyols','C. Lo Gaiter del Llobregat, 121-123','El Prat de Llobregat','08820',1,'a8031836@xtec.cat','',_binary '\0\0\0\0\0\0\0x��h\�\0@eks]�D@','',''),(78,'Institut Leonardo da Vinci','Ctra. de Sant Cugat a Rubí, s/n','Sant Cugat del Vallès','08190',1,'a8031861@xtec.cat','',_binary '\0\0\0\0\0\0\0��\�VQn\0@f`����D@','',''),(79,'Institut Arnau Cadell','Av. Villadelprat, 91-93','Sant Cugat del Vallès','08190',1,'a8031873@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\�\�\"�\0@\�кD@','',''),(80,'Institut Mitjans Audiovisuals','Via Laietana, 48-A','Barcelona','08003',1,'a8032385@xtec.cat','',_binary '\0\0\0\0\0\0\0�z��&g@X�=s}�D@','',''),(81,'Institut Pau Casals','Av. Lloreda, 16-32','Badalona','08917',1,'a8033869@xtec.cat','',_binary '\0\0\0\0\0\0\06��\0\�@Sx���D@','',''),(82,'Institut Joan Coromines','Ctra. de la Bordeta, 39-41','Barcelona','08014',1,'a8033882@xtec.cat','',_binary '\0\0\0\0\0\0\0x�\�\�q(@I��¯D@','',''),(83,'Institut Príncep de Girona','Travessera de Gràcia, 357','Barcelona','08025',1,'a8033894@xtec.cat','',_binary '\0\0\0\0\0\0\0Xa|�X@�3-�9�D@','',''),(84,'Institut Joan Miró','Av. Mare de Déu de Montserrat, s/n','Cornellà de Llobregat','08940',1,'a8033900@xtec.cat','',_binary '\0\0\0\0\0\0\0G���ݏ\0@\�:�ϬD@','',''),(85,'Institut Mercè Rodoreda','Rbla. Marina, 393','L\'Hospitalet de Llobregat','08907',1,'a8033912@xtec.cat','',_binary '\0\0\0\0\0\0\0��z\�\0@�E���D@','',''),(86,'Institut Pius Font i Quer','C. Amadeu Vives, s/n','Manresa','08240',1,'a8033924@xtec.cat','',_binary '\0\0\0\0\0\0\0�mȕ3a�?�|\�D\�\�D@','',''),(87,'Institut Rafael Casanova','C. Frederic Mompou, 41-45','Sant Boi de Llobregat','08830',1,'a8033961@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\�&\�#<\0@@0V��D@','',''),(88,'Institut Jaume Salvador i Pedrol','C. Sant Martí de l\'Erm, 4','Sant Joan Despí','08970',1,'a8033973@xtec.cat','',_binary '\0\0\0\0\0\0\0K\��ɿ\0@?Ҡ�O�D@','',''),(89,'Institut de Sant Just Desvern','Pg. de la Muntanya, s/n','Sant Just Desvern','08960',1,'a8033985@xtec.cat','',_binary '\0\0\0\0\0\0\0��K�כ\0@�>\'i�D@','',''),(90,'Institut Terra Roja','Circumval·lació, 45-57','Santa Coloma de Gramenet','08923',1,'a8034001@xtec.cat','',_binary '\0\0\0\0\0\0\0�h\n�f�@U��θD@','',''),(91,'Institut Frederic Mompou','Av. Mas Picó, 65-69','Sant Vicenç dels Horts','08620',1,'a8034011@xtec.cat','',_binary '\0\0\0\0\0\0\0Sk�#�\��?$�0�D@','',''),(92,'Institut Federica Montseny','C. Oporto, s/n','Badia del Vallès','08214',1,'a8034035@xtec.cat','',_binary '\0\0\0\0\0\0\0\�p\�\�\�\0@t��\�W�D@','',''),(93,'Institut Nicolau Copèrnic','C. del Torrent del Batlle, 10','Terrassa','08225',1,'a8034059@xtec.cat','',_binary '\0\0\0\0\0\0\0\�_\�3���?n\�\�\�\�D@','',''),(94,'Institut Poblenou','C. Doctor Josep Trueta, 206','Barcelona','08005',1,'a8034138@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\�Y�@\�\\���D@','',''),(95,'Institut Domènec Perramon','Paratge Torrent d\'en Terra, s/n','Arenys de Munt','08358',1,'a8034187@xtec.cat','',_binary '\0\0\0\0\0\0\0׼\��CK@C�?M=\�D@','',''),(96,'Institut La Guineueta','C. Artesania, 53-55','Barcelona','08042',1,'a8034205@xtec.cat','',_binary '\0\0\0\0\0\0\0{&l`@ؤ���D@','',''),(97,'Institut Bernat el Ferrer','C. Nostra Senyora de Lourdes, 34','Molins de Rei','08750',1,'a8034217@xtec.cat','',_binary '\0\0\0\0\0\0\0���7\0@\�N֍�D@','',''),(98,'Institut Les Corts','Travessera de les Corts, 131-159','Barcelona','08028',1,'a8034564@xtec.cat','',_binary '\0\0\0\0\0\0\0\�qR\�@��k*ΰD@','',''),(99,'Institut Joan Salvat i Papasseit','Pg. Salvat Papasseit, s/n','Barcelona','08003',1,'a8034576@xtec.cat','',_binary '\0\0\0\0\0\0\0\Z\�Π\�@l�f��D@','',''),(100,'Institut Joan Oliver','C. Armand Obiols, 2-30','Sabadell','08207',1,'a8034591@xtec.cat','',_binary '\0\0\0\0\0\0\0,\�+֑�\0@���M#\�D@','',''),(101,'Institut Baix Montseny','Pl.. de Muriel Casals, 2','Sant Celoni','08470',1,'a8034606@xtec.cat','',_binary '\0\0\0\0\0\0\0}��o\\\�@\�R^\�\�D@','',''),(102,'Institut de Sales','C. Antonio Machado, 43','Viladecans','08840',1,'a8034621@xtec.cat','',_binary '\0\0\0\0\0\0\0l\"\"8\0@������D@','',''),(103,'Institut Les Vinyes','C. Amèrica, 53','Santa Coloma de Gramenet','08924',1,'a8034643@xtec.cat','',_binary '\0\0\0\0\0\0\0�[\�_�@��@���D@','',''),(104,'Institut Bonanova','Pg. de Circumval·lació, 8','Barcelona','08003',1,'a8035039@xtec.cat','',_binary '\0\0\0\0\0\0\0pM� \�~@�s�A�D@','',''),(105,'Institut Miquel Martí i Pol','Av. Mare de Déu de Montserrat, 51','Cornellà de Llobregat','08940',1,'a8035143@xtec.cat','',_binary '\0\0\0\0\0\0\0 \���\�\0@���;ܬD@','',''),(106,'Institut Els Tres Turons','Ptge. Tres Turons, 1','Arenys de Mar','08350',1,'a8035155@xtec.cat','',_binary '\0\0\0\0\0\0\0\��C��W@\�\�v��\�D@','',''),(107,'Institut Barcelona-Congrés','C. Baró d\'Esponellà, 1-15','Barcelona','08031',1,'a8035167@xtec.cat','',_binary '\0\0\0\0\0\0\0��?�b@�E���D@','',''),(108,'Institut Pablo R. Picasso','C. Sant Feliu de Codines, 1','Barcelona','08033',1,'a8035209@xtec.cat','',_binary '\0\0\0\0\0\0\0[\�-,,r@\��\�D@','',''),(109,'Institut Manuel Blancafort','Av. 11 de Setembre, s/n','La Garriga','08530',1,'a8035222@xtec.cat','',_binary '\0\0\0\0\0\0\0\��uNZ@\�l�4\Z\�D@','',''),(110,'Institut Vil·la Romana','C. Santa Maria del Camí, s/n','La Garriga','08530',1,'a8035234@xtec.cat','',_binary '\0\0\0\0\0\0\0b��\�zF@\��\�jh\�D@','',''),(111,'Institut Gelida','C. de Joan Pascual i Batlle, 1-15','Gelida','08790',1,'a8035246@xtec.cat','',_binary '\0\0\0\0\0\0\0�Y��\��?�\�~���D@','',''),(112,'Institut Apel·les Mestres','C. Zuloaga, s/n','L\'Hospitalet de Llobregat','08906',1,'a8035258@xtec.cat','',_binary '\0\0\0\0\0\0\0�7a�\0@�\��r��D@','',''),(113,'Institut Palau Ausit','Ctra. de Santiga, s/n','Ripollet','08291',1,'a8035295@xtec.cat','',_binary '\0\0\0\0\0\0\02Kh�6@RS[���D@','',''),(114,'Institut Duc de Montblanc','Av. Can Fatjó, s/n','Rubí','08191',1,'a8035301@xtec.cat','',_binary '\0\0\0\0\0\0\0�ND�/\0@y��c�D@','',''),(115,'Institut Quercus','Av. Montserrat, 95','Sant Joan de Vilatorrada','08250',1,'a8035313@xtec.cat','',_binary '\0\0\0\0\0\0\02\�Ʉ�\��?�I�\�D@','',''),(116,'Institut Torrent de les Bruixes','C. Santa Eulàlia, s/n','Santa Coloma de Gramenet','08921',1,'a8035325@xtec.cat','',_binary '\0\0\0\0\0\0\0�� ���@������D@','',''),(117,'Institut La Romànica','Rda.. de Santa Maria, 310','Barberà del Vallès','08210',1,'a8035349@xtec.cat','',_binary '\0\0\0\0\0\0\0\��8\�\�@f7L�2\�D@','',''),(118,'Institut Alt Penedès','Av. de Tarragona, s/n','Vilafranca del Penedès','08720',1,'a8035362@xtec.cat','',_binary '\0\0\0\0\0\0\0ߗ���?�Z\���D@','',''),(119,'Institut Mig-Món','C. Ramon i Cajal, 9-11','Súria','08260',1,'a8042044@xtec.cat','',_binary '\0\0\0\0\0\0\01�GO��?ض���\�D@','',''),(120,'Institut J.V. Foix','Can Sempere, s/n','Rubí','08191',1,'a8036330@xtec.cat','',_binary '\0\0\0\0\0\0\0w\��+\0��?گ�$��D@','',''),(121,'Institut Arquitecte Manuel Raspall','Av. Mare de Déu de Montserrat, s/n','Cardedeu','08440',1,'a8036391@xtec.cat','',_binary '\0\0\0\0\0\0\0\�G\�\�@\�\�=s\�\�D@','',''),(122,'Institut La Vall de Tenes','Camí de la Rovira, s/n','La Sagrera','08187',1,'a8036998@xtec.cat','',_binary '\0\0\0\0\0\0\0��X|J\�@\�B�%\�D@','',''),(123,'Institut Joan Oró','C. Feliu Duran i Canyameres, 7','Martorell','08760',1,'a8037152@xtec.cat','',_binary '\0\0\0\0\0\0\0�����?\�ճ�D@','',''),(124,'Institut La Bastida','C. Santa Eulàlia, s/n','Santa Coloma de Gramenet','08921',1,'a8037176@xtec.cat','',_binary '\0\0\0\0\0\0\0�� ���@������D@','',''),(125,'Institut Lluís Companys','Ctra. de l\'Estació, s/n','Ripollet','08291',1,'a8037206@xtec.cat','',_binary '\0\0\0\0\0\0\0\��SQ�4@=D_�D@','',''),(126,'E.S.Art Dramat. de l\'Institut del Teatre','Pl. Margarida Xirgu, s/n','Barcelona','08004',1,'a8038399@xtec.cat','',_binary '\0\0\0\0\0\0\0Q\�x\�A@W�-�D@','',''),(127,'Institut L\'Alzina','Ptge. Salvador Riera, s/n','Barcelona','08027',1,'a8039057@xtec.cat','',_binary '\0\0\0\0\0\0\0&��\�on@\��\��Y�D@','',''),(128,'Institut Margarida Xirgu','Trav. de Collblanch, 56','L\'Hospitalet de Llobregat','08904',1,'a8039069@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�8+:�\0@�\�\��D@','',''),(129,'Institut Agustí Serra i Fontanet','C. Vallmanyà, 13-15','Sabadell','08207',1,'a8039203@xtec.cat','',_binary '\0\0\0\0\0\0\0���p}\�\0@��8�\�D@','',''),(130,'Institut La Valira','C. de l\'Orri, 66','La Seu d\'Urgell','25700',1,'c5009186@xtec.cat','',_binary '\0\0\0\0\0\0\0B=�.�?�c](U-E@','',''),(131,'Institut La Sedeta','C. Indústria, 67-73','Barcelona','08025',1,'a8040138@xtec.cat','',_binary '\0\0\0\0\0\0\0��ҁrX@\��\r�׳D@','',''),(132,'Institut Icària','C. Doctor Trueta, 81','Barcelona','08005',1,'a8040141@xtec.cat','',_binary '\0\0\0\0\0\0\0Kp��@����a�D@','',''),(133,'Institut La Llauna','C. Sagunto, 5 (edifici la Llauna)','Badalona','08912',1,'a8040527@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\�\��<�@\"_�w��D@','',''),(134,'Institut Les Marines','Camí Ral de València, 12','Castelldefels','08860',1,'a8040539@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\��ڱ�?�\�O��D@','',''),(135,'Institut El Cairat','C. Gorgonçana, 1','Esparreguera','08292',1,'a8040540@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\�V���?�+(j�\�D@','',''),(136,'Institut Antoni Pous i Argila','Av. Roma, 260','Manlleu','08560',1,'a8040552@xtec.cat','',_binary '\0\0\0\0\0\0\0P%���1@\�\r\�AR\0E@','',''),(137,'Institut Jaume Almera','C. Rafart, 5','Vilassar de Dalt','08339',1,'a8040564@xtec.cat','',_binary '\0\0\0\0\0\0\0�_�5\�@`���\�D@','',''),(138,'Institut Fort Pius','C. Ausias March, 78','Barcelona','08013',1,'a8040849@xtec.cat','',_binary '\0\0\0\0\0\0\0\\$�5p@�b9Ny�D@','',''),(139,'Institut La Mallola','C. Andreu Amat, 11','Esplugues de Llobregat','08950',1,'a8041374@xtec.cat','',_binary '\0\0\0\0\0\0\0}++�t�\0@\�+k��D@','',''),(140,'Institut Martí Dot','C. Josep Teixidor, 2-12','Sant Feliu de Llobregat','08980',1,'a8041519@xtec.cat','',_binary '\0\0\0\0\0\0\0`��9Q\0@��\��A�D@','',''),(141,'Institut El Calamot','Av. Joan Carles I, 62','Gavà','08850',1,'a8041866@xtec.cat','',_binary '\0\0\0\0\0\0\0��¢R\��?P�\0/�D@','',''),(142,'Institut Rubió i Tudurí','Av. Francesc Ferrer i Guàrdia, 16','Barcelona','08038',1,'a8041933@xtec.cat','',_binary '\0\0\0\0\0\0\0\�H��0@�\��=Q�D@','',''),(143,'Institut Badalona VII','C. Ausiàs March, 86','Badalona','08912',1,'a8042019@xtec.cat','',_binary '\0\0\0\0\0\0\0ȵZ�\�@1n\���D@','',''),(144,'Institut Vallès','C. Valentí Almirall, s/n','Sabadell','08206',1,'a8042020@xtec.cat','',_binary '\0\0\0\0\0\0\0\�R62\�\0@��n0\�D@','',''),(145,'Institut Can Puig','C. Joan Maragall, s/n','Sant Pere de Ribes','08810',1,'a8042056@xtec.cat','',_binary '\0\0\0\0\0\0\0�4���K�?�0�_�D@','',''),(146,'Institut Vinyes Velles','Av. de Barcelona, 2','Montornès Centre','08170',1,'a8042093@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�/M�@,F�c\�D@','',''),(147,'Institut Manuel Vázquez Montalbán','Av. Eduard Maristany, 59-61','Sant Adrià de Besòs','08930',1,'a8042101@xtec.cat','',_binary '\0\0\0\0\0\0\0?}���\�@\�� \�(�D@','',''),(148,'Institut Sant Ramon','Pl. de Les Fabricantes, 1','Cardona','08261',1,'a8042330@xtec.cat','',_binary '\0\0\0\0\0\0\0�Ԉ3�\��?�&l?�D@','',''),(149,'Institut de Badia del Vallès','C. Mallorca, s/n','Badia del Vallès','08214',1,'a8042342@xtec.cat','',_binary '\0\0\0\0\0\0\0�>i\��\0@>�p\��D@','',''),(150,'Institut Lluïsa Cura','Rda.. Sant Antoni, 19','Barcelona','08011',1,'a8042573@xtec.cat','',_binary '\0\0\0\0\0\0\03\�5N@rLN���D@','',''),(151,'Institut Alexandre de Riquer','C. Joan Baptista de la Salle, 6 i 8','Calaf','08280',1,'a8043395@xtec.cat','',_binary '\0\0\0\0\0\0\0b���\�6�?��\�\0�\�D@','',''),(152,'Institut Ernest Lluch','C. Diputació, 15','Barcelona','08015',1,'a8043462@xtec.cat','',_binary '\0\0\0\0\0\0\0\��e75@�ܜYq�D@','',''),(153,'Institut Manolo Hugué','C. Josep Germà, 2','Caldes de Montbui','08140',1,'a8043486@xtec.cat','',_binary '\0\0\0\0\0\0\0;�j$`@�\��\�D@','',''),(154,'Institut Pere Calders','Campus U.A.B.','Cerdanyola del Vallès','08193',1,'a8043504@xtec.cat','',_binary '\0\0\0\0\0\0\07�\\B\�\0@�\�R\�\��D@','',''),(155,'Institut Salvador Dalí','Av. Pare Andreu de Palma de Mallorca,1-3','El Prat de Llobregat','08820',1,'a8043589@xtec.cat','',_binary '\0\0\0\0\0\0\0|���\�\0@F�\�T�D@','',''),(156,'Institut Carles Vallbona','Camp de les Moreres, 14','Granollers','08401',1,'a8043644@xtec.cat','',_binary '\0\0\0\0\0\0\0y�u�\�C@�Z|w\�\�D@','',''),(157,'Institut Marina','C. Estació, s/n','La Llagosta','08120',1,'a8043656@xtec.cat','',_binary '\0\0\0\0\0\0\0B%\�㸑@`�\�J��D@','',''),(158,'Institut L\'Estatut','C. Flammarion, 1','Rubí','08191',1,'a8043668@xtec.cat','',_binary '\0\0\0\0\0\0\0��\�[T\0@��	�D@','',''),(159,'Institut El Palau','C. Empordà, 7-13','Sant Andreu de la Barca','08740',1,'a8043671@xtec.cat','',_binary '\0\0\0\0\0\0\0\�pGb�?y�,	1�D@','',''),(160,'Institut Marianao','Pg. de les Mimoses, 18','Sant Boi de Llobregat','08830',1,'a8043681@xtec.cat','',_binary '\0\0\0\0\0\0\0F\�\�\\\�/\0@��{\0��D@','',''),(161,'Institut Joaquim Mir','Av. Vilafranca, s/n','Vilanova i la Geltrú','08800',1,'a8043693@xtec.cat','',_binary '\0\0\0\0\0\0\0\�R	���?�A3n;�D@','',''),(162,'Institut Daniel Blanxart i Pedrals','C. Vall d\'Aran, 96-98','Olesa de Montserrat','08640',1,'a8043978@xtec.cat','',_binary '\0\0\0\0\0\0\0\�?�\�D�?N��I\�D@','',''),(163,'Institut Joan Ramon Benaprès','Camí de la Fita, s/n','Sitges','08870',1,'a8043981@xtec.cat','',_binary '\0\0\0\0\0\0\0CM\�B��?�3\��D@','',''),(164,'Institut Salvador Seguí','C. Santander, 7-9','Barcelona','08020',1,'a8044053@xtec.cat','',_binary '\0\0\0\0\0\0\0\�5\���@\�\�\�&�D@','',''),(165,'Institut Galileo Galilei','C. Molí, 57','Barcelona','08016',1,'a8044065@xtec.cat','',_binary '\0\0\0\0\0\0\0ＺNs@�o�B\�D@','',''),(166,'Institut Pla de les Moreres','C. Cristòfor Colom, s/n','Vilanova del Camí','08788',1,'a8044168@xtec.cat','',_binary '\0\0\0\0\0\0\0:\�UUIC�?@܎ּ\�D@','',''),(167,'Institut La Ferreria','C. del Progrés, 3','Montcada Centre','08110',1,'a8044533@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\'7~V@�\�=\n�D@','',''),(168,'Institut Pere Barnils','Av. Pere Barnils, s/n','Centelles','08540',1,'a8044569@xtec.cat','',_binary '\0\0\0\0\0\0\0@\�v�@�=\�}�\�D@','',''),(169,'Institut Vall d\'Arús','C. Mestres Esquè i Artó, 2','Vallirana Centre','08759',1,'a8044570@xtec.cat','',_binary '\0\0\0\0\0\0\0F�_��?8\�\�}��D@','',''),(170,'Institut Giola','C. Tulipa, s/n','Llinars del Vallès','08450',1,'a8044594@xtec.cat','',_binary '\0\0\0\0\0\0\0]\\H_�.@2{U>�\�D@','',''),(171,'Institut Moianès','C. de l\'Institut, 2','Moià','08180',1,'a8044600@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\n	�N\�\0@G�\�`:\�D@','',''),(172,'Institut Torre de Malla','Av. Espanya, 116','Parets del Vallès','08150',1,'a8044612@xtec.cat','',_binary '\0\0\0\0\0\0\0\�aأh\�@0�W]\�D@','',''),(173,'Institut Sabadell','C. Juvenal, 1','Sabadell','08206',1,'a8044624@xtec.cat','',_binary '\0\0\0\0\0\0\0\�)\�ќ�\0@f]vd�\�D@','',''),(174,'Institut Jaume Mimó','C. Serra dels Galliners, s/n','Cerdanyola del Vallès','08290',1,'a8044715@xtec.cat','',_binary '\0\0\0\0\0\0\0\�k\�\�@7\"��0�D@','',''),(175,'Institut Dr. Puigvert','Pg. de Santa Coloma, 46-54','Barcelona','08030',1,'a8044922@xtec.cat','',_binary '\0\0\0\0\0\0\0\�^��ϋ@p�y��D@','',''),(176,'Institut Escola d\'Hoteleria i Turisme de Barcelona','C. Pintor Alsamora, 3-5','Barcelona','08016',1,'a8044934@xtec.cat','',_binary '\0\0\0\0\0\0\0Д�6�r@ݲ9���D@','',''),(177,'Institut Josep Pla','C. Vall d\'Ordesa, 24-34','Barcelona','08031',1,'a8044958@xtec.cat','',_binary '\0\0\0\0\0\0\0\��e�P@\�Q��A�D@','',''),(178,'Institut Pere Fontdevila','Pont de les Eres, 4','Gironella','08680',1,'a8044971@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�E�\��?�\�BE@','',''),(179,'Institut Barres i Ones','Ctra. Antiga de València, 95','Badalona','08913',1,'a8044995@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�}\�\�@\�\��\��D@','',''),(180,'Institut Torre del Palau','Can Boada del Pi, s/n','Terrassa','08225',1,'a8045011@xtec.cat','',_binary '\0\0\0\0\0\0\0G\�-��?|�dj\�D@','',''),(181,'Institut Estela Ibèrica','Ptge. de Mas Granollacs, s/n','Santa Perpètua de Mogoda','08130',1,'a8045021@xtec.cat','',_binary '\0\0\0\0\0\0\0��(\�.{@\�%\�v\�D@','',''),(182,'Institut Europa','Av. Europa, 153','L\'Hospitalet de Llobregat','08907',1,'a8045070@xtec.cat','',_binary '\0\0\0\0\0\0\0��F�\"\�\0@��.h��D@','',''),(183,'Institut Obert de Catalunya','Av. del Paral·lel, 71-73','Barcelona','08004',1,'a8045203@xtec.cat','',_binary '\0\0\0\0\0\0\0�\��6�X@-8o\���D@','',''),(184,'Institut Escola Intermunicipal del Penedès','Pl. Santiago Rusiñol, s/n','Sant Sadurní d\'Anoia','08770',1,'a8045239@xtec.cat','',_binary '\0\0\0\0\0\0\0��a_�?�rC[\'�D@','',''),(185,'Institut Ramon Casas i Carbó','C. Lluis Companys, 2','Palau-solità i Plegamans','08184',1,'a8045306@xtec.cat','',_binary '\0\0\0\0\0\0\0㦰�i@&\�\�z\�D@','',''),(186,'Institut Vila de Gràcia','C. Riera de Sant Miquel, 58-62','Barcelona','08006',1,'a8045483@xtec.cat','',_binary '\0\0\0\0\0\0\0�g�\�=@����D@','',''),(187,'Institut Flos i Calcat','Av. Rio de Janeiro, 92','Barcelona','08016',1,'a8045513@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�t@�&�&�D@','',''),(188,'Institut Manuel Carrasco i Formiguera','C. Santa Fe, 2','Barcelona','08031',1,'a8045525@xtec.cat','',_binary '\0\0\0\0\0\0\0��s\�c@\�\�r[��D@','',''),(189,'Institut Josep Lluís Sert','Camí Ral de València, 10','Castelldefels','08860',1,'a8045537@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\��ڱ�?�\�O��D@','',''),(190,'Institut Banús','C. Sant Casimir, 16','Cerdanyola del Vallès','08290',1,'a8045549@xtec.cat','',_binary '\0\0\0\0\0\0\0)\n$\�@����D@','',''),(191,'Institut Can Planas','C. Folch i Torres, 1','Barberà del Vallès','08210',1,'a8045562@xtec.cat','',_binary '\0\0\0\0\0\0\0��\�@�@�w\�D@','',''),(192,'Institut Enric Borràs','Ptge. Encants, s/n','Badalona','08914',1,'a8045604@xtec.cat','',_binary '\0\0\0\0\0\0\00p	X\\\�@�n\r\�ƸD@','',''),(193,'Institut Celestí Bellera','C. Esteve Terrades, s/n','Granollers','08402',1,'a8045628@xtec.cat','',_binary '\0\0\0\0\0\0\0v;0�SR@\�V45\�D@','',''),(194,'Institut Lluís Domènech i Montaner','C. Francesc Cambó, 2','Canet de Mar','08360',1,'a8045641@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\�͇��@(�.��\�D@','',''),(195,'Institut Dolors Mallafrè i Ros','C. Doctor Zamenhof, 57','Vilanova i la Geltrú','08800',1,'a8045653@xtec.cat','',_binary '\0\0\0\0\0\0\0JYU�?y�\�2͜D@','',''),(196,'Institut Ramon Turró i Darder','Av. Tarragona, 4-12','Malgrat de Mar','08380',1,'a8045665@xtec.cat','',_binary '\0\0\0\0\0\0\0\��e\�\�@\�2\� �\�D@','',''),(197,'Institut Thalassa','Av. de la Unió , s/n','Montgat','08390',1,'a8045677@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�\��.@c�\�_��D@','',''),(198,'Institut Voltrera','Pg. de l\'Estació, 18','Entitat Oest d\'Abrera','08630',1,'a8045689@xtec.cat','',_binary '\0\0\0\0\0\0\0\�.)��n�?\n���\�D@','',''),(199,'Institut de Corbera de Llobregat','C. Andròmeda, 2','Corbera de Llobregat','08757',1,'a8045859@xtec.cat','',_binary '\0\0\0\0\0\0\0a;}\�5�?A \�pݵD@','',''),(200,'Institut Miramar','Av. Miramar, 16','Viladecans','08840',1,'a8045860@xtec.cat','',_binary '\0\0\0\0\0\0\0�sw=�\0@��M2��D@','',''),(201,'Institut Lluís Vives','C. Canalejas, 107','Barcelona','08028',1,'a8046581@xtec.cat','',_binary '\0\0\0\0\0\0\0�C\��G@h�[-��D@','',''),(202,'Institut Príncep de Viana','C. Torroella de Montgrí, 6-18','Barcelona','08027',1,'a8046608@xtec.cat','',_binary '\0\0\0\0\0\0\0 �\�U~@)4U�ǶD@','',''),(203,'Institut Molí de la Vila','C. Doctor Fleming, 24','Capellades','08786',1,'a8046645@xtec.cat','',_binary '\0\0\0\0\0\0\0n�H\\X��?!P�X\"\�D@','',''),(204,'Institut Joaquim Blume','C. Sant Mateu, 27-37','Esplugues de Llobregat','08950',1,'a8046657@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\�!&�\�\0@w�F]u�D@','',''),(205,'Institut Ribot i Serra','C. Concha Espina, 33','Sabadell','08204',1,'a8046669@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\�Q9\�\0@\�!U\�D@','',''),(206,'Institut Angeleta Ferrer i Sensat','C. Granollers, 43','Sant Cugat del Vallès','08190',1,'a8046670@xtec.cat','',_binary '\0\0\0\0\0\0\0X���`�\0@ʩ\�\��D@','',''),(207,'Institut de Castellar','C. Carrasco i Formiguera, 6','Castellar del Vallès','08211',1,'a8046682@xtec.cat','',_binary '\0\0\0\0\0\0\0�No��\0@\�8�E$\�D@','',''),(208,'Institut Centre d\'Alt Rendiment Esportiu','Av. Alcalde Barnils, s/n','Sant Cugat del Vallès','08174',1,'a8046694@xtec.cat','',_binary '\0\0\0\0\0\0\0�|z��\0@���oW�D@','',''),(209,'Institut Montserrat Roig','C. Cervantes, 46','Terrassa','08221',1,'a8046724@xtec.cat','',_binary '\0\0\0\0\0\0\0���3�\0@L\�\�D@','',''),(210,'Institut Thos i Codina','Riera de Cirera, 57','Mataró','08304',1,'a8046748@xtec.cat','',_binary '\0\0\0\0\0\0\0;�\�Z�y@�֎�k\�D@','',''),(211,'Institut Ventura Gassol','Av. Mónaco, 36-50','Badalona','08917',1,'a8046751@xtec.cat','',_binary '\0\0\0\0\0\0\0\��)\�@0G>��D@','',''),(212,'Institut Guillem Catà','C. de Rosa Sensat, 6-8','Manresa','08243',1,'a8046761@xtec.cat','',_binary '\0\0\0\0\0\0\0�5�v�?悾\�\�D@','',''),(213,'Institut d\'Alella','Av. del Bosquet, 7','Alella','08328',1,'a8046785@xtec.cat','',_binary '\0\0\0\0\0\0\0Ee\�amf@`B`@J�D@','',''),(214,'Institut Laia l\'Arquera','C. Ciutat Freta, 26','Mataró','08302',1,'a8046797@xtec.cat','',_binary '\0\0\0\0\0\0\0/ҥ.w@ϻҮY\�D@','',''),(215,'Institut Vilatzara','Av. Arquitecte Eduard Farrés, 101','Vilassar de Mar','08340',1,'a8046803@xtec.cat','',_binary '\0\0\0\0\0\0\0q�\\h%@\�B$�D@','',''),(216,'Institut Castellet','C. Bisbe Perelló, s/n','Sant Vicenç de Castellet','08295',1,'a8046840@xtec.cat','',_binary '\0\0\0\0\0\0\0�!�U\��?�\�A��\�D@','',''),(217,'Institut Llavaneres','Pg. del Perelló, 2','Sant Andreu de Llavaneres','08392',1,'a8046852@xtec.cat','',_binary '\0\0\0\0\0\0\0�ó�\�\�@#��\�D@','',''),(218,'Institut Bellulla','Pl. de l\'Ajuntament, s/n','Bellulla','08420',1,'a8046864@xtec.cat','',_binary '\0\0\0\0\0\0\0����7@\ZC\�`�\�D@','',''),(219,'Institut Miquel Bosch i Jover','C. Arquitecte Gaudí, 2-4','Artés','08271',1,'a8046876@xtec.cat','',_binary '\0\0\0\0\0\0\0E\�a\�V1�?S\�hQ�\�D@','',''),(220,'Institut Joan Mercader','C. Sant Vicenç, 27','Igualada','08700',1,'a8047364@xtec.cat','',_binary '\0\0\0\0\0\0\0\0�u\�\���?\�\�Y�W\�D@','',''),(221,'Institut Secretari Coloma','C. Secretari Coloma, 25','Barcelona','08025',1,'a8047421@xtec.cat','',_binary '\0\0\0\0\0\0\0�:.\ZR@d��$�D@','',''),(222,'Institut XXV Olimpíada','C. Dàlia, s/n','Barcelona','08004',1,'a8047431@xtec.cat','',_binary '\0\0\0\0\0\0\0����:-@���2J�D@','',''),(223,'Institut Alexandre Galí','C. Miquel Servet, s/n','Les Roquetes','08812',1,'a8047467@xtec.cat','',_binary '\0\0\0\0\0\0\0;.k\�\0��?��+�D@','',''),(224,'Institut Alba del Vallès','Av. Buxó Baliarda, 3','Sant Fost de Campsentelles','08105',1,'a8047479@xtec.cat','',_binary '\0\0\0\0\0\0\0D�U�A\�@�r�\��\�D@','',''),(225,'Institut Ribera Baixa','C. de l\'Aneto, 2-4','El Prat de Llobregat','08820',1,'a8047492@xtec.cat','',_binary '\0\0\0\0\0\0\0\�=�!Z�\0@��ވ��D@','',''),(226,'Institut Ítaca','C. Bonaventura Calopa, 15-21','Sant Boi de Llobregat','08830',1,'a8047509@xtec.cat','',_binary '\0\0\0\0\0\0\0�H^\0@�w���D@','',''),(227,'Institut Sant Quirze del Vallès','C. Bages, 21','Sant Quirze del Vallès','08192',1,'a8047583@xtec.cat','',_binary '\0\0\0\0\0\0\0N�0q�\0@[\\�3�\�D@','',''),(228,'Institut Cristòfol Colom','C. Mollerussa, s/n','Barcelona','08030',1,'a8047698@xtec.cat','',_binary '\0\0\0\0\0\0\0��@䜤@a\�\�%�D@','',''),(229,'Institut Guinovarda','C. Pompeu Fabra, 17','Piera','08784',1,'a8047820@xtec.cat','',_binary '\0\0\0\0\0\0\0����?^��\�\�\�D@','',''),(230,'Institut Eduard Fontserè','C. Mimoses, 31','L\'Hospitalet de Llobregat','08905',1,'a8051264@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\��Q\�\0@\r�$`��D@','',''),(231,'Institut de Puig-reig','Pg. Riera de la Sala, 3','Puig-reig','08692',1,'a8052207@xtec.cat','',_binary '\0\0\0\0\0\0\0|`\��?�\�Ʊ�D@','',''),(232,'Institut Miquel Tarradell','C. dels Àngels, 1 bis','Barcelona','08001',1,'a8052581@xtec.cat','',_binary '\0\0\0\0\0\0\0�\��rX@G#��\�D@','',''),(233,'Institut Pau Claris','Pg. Lluís Companys, 18','Barcelona','08018',1,'a8052608@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\�\�\\s@a.���D@','',''),(234,'Institut Vall d\'Hebron','Pg. de la Vall d\'Hebron, 93-95','Barcelona','08035',1,'a8052700@xtec.cat','',_binary '\0\0\0\0\0\0\0}M}\� @\�J}!�D@','',''),(235,'Institut Francisco de Goya','C. Garriga i Roca, 21','Barcelona','08041',1,'a8052724@xtec.cat','',_binary '\0\0\0\0\0\0\0|CNP�Z@���^�D@','',''),(236,'Institut Josep Comas i Solà','Via Barcino, s/n','Barcelona','08033',1,'a8052761@xtec.cat','',_binary '\0\0\0\0\0\0\05��\�@~� ���D@','',''),(237,'Institut Salvador Espriu','Pl. de les Glòries Catalanes, 20','Barcelona','08018',1,'a8052797@xtec.cat','',_binary '\0\0\0\0\0\0\0��\�@Vt�ųD@','',''),(238,'Institut Consell de Cent','C. Carrera, 25','Barcelona','08004',1,'a8052839@xtec.cat','',_binary '\0\0\0\0\0\0\0��|&+e@\�8��D@','',''),(239,'Institut d\'Argentona','C. Peons Caminers, 25','Argentona','08310',1,'a8052876@xtec.cat','',_binary '\0\0\0\0\0\0\0J��0@@cm���\�D@','',''),(240,'Institut Júlia Minguell','C. Niça, 4 (apartat 544)','Badalona','08913',1,'a8052888@xtec.cat','',_binary '\0\0\0\0\0\0\0����8�@�$�-!�D@','',''),(241,'Institut L\'Alt Berguedà','Av. Salarich, 29','Bagà','08695',1,'a8052891@xtec.cat','',_binary '\0\0\0\0\0\0\09p>ݏ\��?��\�\�@ E@','',''),(242,'Institut Lauro','C. Astúries, 3','Bellavista','08520',1,'a8052906@xtec.cat','',_binary '\0\0\0\0\0\0\0ē\�f@��2X�\�D@','',''),(243,'Institut Bisbe Berenguer','C. Aprestadora, 49','L\'Hospitalet de Llobregat','08902',1,'a8052918@xtec.cat','',_binary '\0\0\0\0\0\0\0�����@>�ţ��D@','',''),(244,'Institut de Lliçà','Av. dels Països Catalans, 26','Lliçà d\'Amunt','08186',1,'a8052955@xtec.cat','',_binary '\0\0\0\0\0\0\0e�V��@�\�\�D@','',''),(245,'Institut Josep Puig i Cadafalch','C. Sant Josep de Calassanç, 16','Mataró','08303',1,'a8052979@xtec.cat','',_binary '\0\0\0\0\0\0\0��5�ri@[e,\�\�\�D@','',''),(246,'Institut Montmeló','Av. Mil·lenari, 19','Montmeló','08160',1,'a8052980@xtec.cat','',_binary '\0\0\0\0\0\0\0�Hn��\�@�\���\�D@','',''),(247,'Institut Euclides','C. Passeig d\'Europa, 65','Pineda de Mar','08397',1,'a8052992@xtec.cat','',_binary '\0\0\0\0\0\0\0Am\Z�[@[,Y\�|\�D@','',''),(248,'Institut Castell de Quer','C. Mateu Garreta, s/n','Prats de Lluçanès','08513',1,'a8053005@xtec.cat','',_binary '\0\0\0\0\0\0\02\�Z]�@\0@��\�\�E@','',''),(249,'Institut Valerià Pujol i Bosch','Pg. de Can Balet, s/n','Premià de Dalt','08338',1,'a8053017@xtec.cat','',_binary '\0\0\0\0\0\0\0}%t��\�@\�c�C�D@','',''),(250,'Institut de la Roca del Vallès','Pl. Sant Jordi, s/n (APl. correus 128)','La Roca del Vallès','08430',1,'a8053030@xtec.cat','',_binary '\0\0\0\0\0\0\0<��Ș@L�\�Y\�D@','',''),(251,'Institut Gerbert d\'Aurillac','Av. Lluís Companys, s/n','Sant Fruitós de Bages','08272',1,'a8053054@xtec.cat','',_binary '\0\0\0\0\0\0\0�$\�b���?�q\�\�D@','',''),(252,'Institut Numància','C. Prat de la Riba, 118','Santa Coloma de Gramenet','08921',1,'a8053078@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�\Z��@\�!+���D@','',''),(253,'Institut El Foix','C. Maria Aurèlia Capmany, s/n','Els Monjos','08730',1,'a8053091@xtec.cat','',_binary '\0\0\0\0\0\0\0Ѩ�s���?�+9�D@','',''),(254,'Institut Reguissol','Pg. Reguissol, 1','Santa Maria de Palautordera','08460',1,'a8053108@xtec.cat','',_binary '\0\0\0\0\0\0\0\�aR?�@���\�D@','',''),(255,'Institut d\'Auro','C. del Convent, 20','Santpedor','08251',1,'a8053111@xtec.cat','',_binary '\0\0\0\0\0\0\0\�=\�/r�?\�m2\�\Z\�D@','',''),(256,'Institut Taradell','C. Pompeu Fabra, 12','Taradell','08552',1,'a8053121@xtec.cat','',_binary '\0\0\0\0\0\0\0u\�=xO@;\���\�D@','',''),(257,'Institut Castellbisbal','Plaça Lluís Companys, 7','Castellbisbal','08755',1,'a8053145@xtec.cat','',_binary '\0\0\0\0\0\0\0CD%e��?���}<�D@','',''),(258,'Institut Gorgs','C. de l\'Àliga, 65','Cerdanyola del Vallès','08290',1,'a8053157@xtec.cat','',_binary '\0\0\0\0\0\0\0\Z\�\Z6\�	@4��rr�D@','',''),(259,'Institut Matadepera','Av. del Mas Sot, 4- 10','Matadepera','08230',1,'a8053169@xtec.cat','',_binary '\0\0\0\0\0\0\0�LI\�}:\0@�\�\�D@','',''),(260,'Institut Polinyà','Av. Sabadell, 1-3','Polinyà','08213',1,'a8053170@xtec.cat','',_binary '\0\0\0\0\0\0\0,\�w�3@d\�=�\�D@','',''),(261,'Institut La Serreta','C. Lepant, 1','Rubí','08191',1,'a8053182@xtec.cat','',_binary '\0\0\0\0\0\0\0Gb\�\�G\0@rMj��D@','',''),(262,'Institut Miquel Crusafont i Pairó','C. Fuerteventura, 51-71','Sabadell','08205',1,'a8053200@xtec.cat','',_binary '\0\0\0\0\0\0\0�B\�,ո\0@\�\�\�\�D@','',''),(263,'Institut Jonqueres','C. Somport, 30','Sabadell','08207',1,'a8053212@xtec.cat','',_binary '\0\0\0\0\0\0\0;6�7�\0@A;c<#\�D@','',''),(264,'Institut Les Termes','C. Illa Bella, 20','Sabadell','08204',1,'a8053224@xtec.cat','',_binary '\0\0\0\0\0\0\0ޒ�\��\0@\Z���\�D@','',''),(265,'Institut Rovira-Forns','C. Tierno Galvan, 77','Santa Perpètua de Mogoda','08130',1,'a8053236@xtec.cat','',_binary '\0\0\0\0\0\0\0�ŀ\�m@^�il\�\�D@','',''),(266,'Institut de Sentmenat','C. Poca Farina, s/n','Sentmenat','08181',1,'a8053248@xtec.cat','',_binary '\0\0\0\0\0\0\0���Z\Z@�Q��y\�D@','',''),(267,'Institut Cavall Bernat','C. la Castellassa, s/n','Terrassa','08227',1,'a8053251@xtec.cat','',_binary '\0\0\0\0\0\0\05ߧ�@\0@���1\�D@','',''),(268,'Institut de Viladecavalls','Vial de Sant Jordi, s/n','Viladecavalls','08232',1,'a8053261@xtec.cat','',_binary '\0\0\0\0\0\0\0\0�vFX�?7FM�\�D@','',''),(269,'Institut El Castell','C. Barcelona, 91','Esparreguera','08292',1,'a8053285@xtec.cat','',_binary '\0\0\0\0\0\0\0y!�e��?��O�O\�D@','',''),(270,'Institut de Pallejà','Camí de Can Coll, s/n','Pallejà','08780',1,'a8053297@xtec.cat','',_binary '\0\0\0\0\0\0\0��\�ԍ\��?#�M���D@','',''),(271,'Institut Gabriela Mistral','C. Osca, 95-105','Sant Vicenç dels Horts','08620',1,'a8053340@xtec.cat','',_binary '\0\0\0\0\0\0\0\rG	Z~��? ��ԍ�D@','',''),(272,'Institut Montbui','C. de la Mercè, 9','Santa Margarida de Montbui','08710',1,'a8053352@xtec.cat','',_binary '\0\0\0\0\0\0\0#�����??;�\�\�D@','',''),(273,'Institut Josep Mestres i Busquets','C. Ferran i Clua, 19','Viladecans','08840',1,'a8053364@xtec.cat','',_binary '\0\0\0\0\0\0\0��.\0@��{�!�D@','',''),(274,'Institut Gallecs','Pg. Cesc Bas, 3','Mollet del Vallès','08100',1,'a8054034@xtec.cat','',_binary '\0\0\0\0\0\0\0�q�뉯@b{Vg/\�D@','',''),(275,'Institut La Ribera','C. Larramendi, s/n','Montcada Centre','08110',1,'a8054174@xtec.cat','',_binary '\0\0\0\0\0\0\0��&\n��@�-j�D@','',''),(276,'Institut Can Mas','C. Pau Casals, 102-104','Ripollet','08291',1,'a8054186@xtec.cat','',_binary '\0\0\0\0\0\0\0}��j.N@��\�\��D@','',''),(277,'Institut Estany de la Ricarda','C. Salvador Espriu, 1-3','El Prat de Llobregat','08820',1,'a8054198@xtec.cat','',_binary '\0\0\0\0\0\0\0C*U:	\�\0@\�^��D@','',''),(278,'Institut Joan Fuster','Pl. Ferran Reyes, 2-3','Barcelona','08027',1,'a8054228@xtec.cat','',_binary '\0\0\0\0\0\0\0\�^�S\�|@*Yߐ�D@','',''),(279,'Institut Eugeni Xammar','Antic Camí de Bigues, s/n','L\'Ametlla del Vallès','08480',1,'a8054241@xtec.cat','',_binary '\0\0\0\0\0\0\0�.\��@���t,\�D@','',''),(280,'Institut de Tona','C. Torres i Bages, 32','Tona','08551',1,'a8054277@xtec.cat','',_binary '\0\0\0\0\0\0\0�~�²\�@�?��a\�D@','',''),(281,'Institut El Sui','C. Penyafort, s/n','Cardedeu','08440',1,'a8054401@xtec.cat','',_binary '\0\0\0\0\0\0\0a�\�d\�@B���!\�D@','',''),(282,'Institut Bosc de Montjuïc','Av. Miramar, s/n','Barcelona','08038',1,'a8054848@xtec.cat','',_binary '\0\0\0\0\0\0\0\�I\�\�R@�e0�G�D@','',''),(283,'Institut Joaquima Pla i Farreras','Av. Ragull, 45-49','Sant Cugat del Vallès','08190',1,'a8054873@xtec.cat','',_binary '\0\0\0\0\0\0\0\n-y�ɹ\0@WQ�8�D@','',''),(284,'Institut Rubió i Ors','C. Molí, 24','L\'Hospitalet de Llobregat','08906',1,'a8055944@xtec.cat','',_binary '\0\0\0\0\0\0\0oj�Ϛ\�\0@�ȴ�)�D@','',''),(285,'Institut Can Vilumara','Av. de Josep Tarradellas i Joan, 153','L\'Hospitalet de Llobregat','08901',1,'a8056109@xtec.cat','',_binary '\0\0\0\0\0\0\0\�=�fJ\�\0@;@ီD@','',''),(286,'Institut Ramon Berenguer IV','C. Ramon Berenguer, 157','Santa Coloma de Gramenet','08924',1,'a8056985@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\�j��@�}e1s�D@','',''),(287,'Institut Cubelles','C. Josep Pla, s/n','Cubelles','08880',1,'a8057230@xtec.cat','',_binary '\0\0\0\0\0\0\0M~�x���?}�\�Ԣ�D@','',''),(288,'Institut Pere Ribot','C. Santa Eugènia, 62-72','Vilassar de Mar','08340',1,'a8057254@xtec.cat','',_binary '\0\0\0\0\0\0\0�÷@c�\�6>�D@','',''),(289,'Institut Joan Brossa','Av. Mare de Déu de Montserrat, 78-84','Barcelona','08024',1,'a8057540@xtec.cat','',_binary '\0\0\0\0\0\0\0��Ef�U@͚���D@','',''),(290,'Institut Baetulo','Av. Marquès de Sant Mori, 251','Badalona','08914',1,'a8057746@xtec.cat','',_binary '\0\0\0\0\0\0\0s��\�@=c\�N\�D@','',''),(291,'Institut Cirviànum de Torelló','C. Ausiàs March-Molina A. correus 69','Torelló','08570',1,'a8058404@xtec.cat','',_binary '\0\0\0\0\0\0\0ǳ�S�@D�\�E@','',''),(292,'Institut Bisaura','C. Mestre Quer, 13','Sant Quirze de Besora','08580',1,'a8058428@xtec.cat','',_binary '\0\0\0\0\0\0\0����X�@�\�{\rE@','',''),(293,'Institut Puig de la Creu','C. Alemanya, 34','Castellar del Vallès','08211',1,'a8058520@xtec.cat','',_binary '\0\0\0\0\0\0\0Sh�\�F�\0@�\�[į\�D@','',''),(294,'Institut Front Marítim','C. Espronceda, 18-34','Barcelona','08005',1,'a8058775@xtec.cat','',_binary '\0\0\0\0\0\0\0\']\�$�@)��j��D@','',''),(295,'Institut El Vern','Pg. Església, s/n','Lliçà de Vall','08185',1,'a8058969@xtec.cat','',_binary '\0\0\0\0\0\0\0$�E0\�@!?\�*i\�D@','',''),(296,'Institut Can Peixauet','C. Mossèn Jacint Verdaguer, 10-14','Santa Coloma de Gramenet','08923',1,'a8059329@xtec.cat','',_binary '\0\0\0\0\0\0\0Y�c쯫@��a8��D@','',''),(297,'IESA Institut del Teatre','Pl. Margarida Xirgu, s/n','Barcelona','08004',1,'a8059342@xtec.cat','',_binary '\0\0\0\0\0\0\0Q\�x\�A@W�-�D@','',''),(298,'Institut de Navarcles','Camí de l\'Angla, 8','Navarcles','08270',1,'a8059524@xtec.cat','',_binary '\0\0\0\0\0\0\0��;c�QA8z		)\�D@','',''),(299,'Institut Maria Aurèlia Capmany','C. Garrofer, 8','Cornellà de Llobregat','08940',1,'a8059688@xtec.cat','',_binary '\0\0\0\0\0\0\0�^\�>!�\0@\'\����D@','',''),(300,'Cons.Sup.Dansa Institut del Teatre','Pl. Margarida Xirgu, s/n','Barcelona','08004',1,'a8060307@xtec.cat','',_binary '\0\0\0\0\0\0\0Q\�x\�A@W�-�D@','',''),(301,'Institut de Masquefa','Av. del Maresme, 47-87','Masquefa','08783',1,'a8060514@xtec.cat','',_binary '\0\0\0\0\0\0\0c$%�\��?��6K��D@','',''),(302,'Institut Maria de Bell-lloc','Av. del Castell de Montbui, 11','El Rieral de Bigues','08415',1,'a8060915@xtec.cat','',_binary '\0\0\0\0\0\0\0\Zө��@�@kg\�\�D@','',''),(303,'Institut del Voltreganès','C. Matagalls, 48','La Gleva','08508',1,'a8060976@xtec.cat','',_binary '\0\0\0\0\0\0\0�\���u�@e\�\�\�:E@','',''),(304,'Institut Vinyet','C. Mestre Manel Torrens Girona, 2-6','Sitges','08870',1,'a8061014@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�˛5��?F��\��D@','',''),(305,'Institut de Vilanova del Vallès','C. Camí de Vilassar/ C. El Terral','Vilanova del Vallès','08410',1,'a8061038@xtec.cat','',_binary '\0\0\0\0\0\0\0f��xr@?�\�\�D@','',''),(306,'Institut Font del Ferro','Camí de la Ciutadella, s/n','Palafolls','08389',1,'a8061099@xtec.cat','',_binary '\0\0\0\0\0\0\0��^�\��@6\0t\�(\�D@','',''),(307,'Institut Turó d\'en Baldiri','C. Charles Darwin, 19','Teià Centre','08329',1,'a8061117@xtec.cat','',_binary '\0\0\0\0\0\0\0;q�A��@o d&��D@','',''),(308,'Institut Montserrat Colomer','Av. de Josep Llobet/ Camí de Ca n\'Amat','Sant Esteve Sesrovires','08635',1,'a8061129@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�\r_O��?��\�#��D@','',''),(309,'Institut Vacarisses','C. Josep Carner, 39','Vacarisses','08233',1,'a8061208@xtec.cat','',_binary '\0\0\0\0\0\0\0\�,Z���?��9\�\�\�D@','',''),(310,'Institut Torrelles de Llobregat','C. Ernest Lluch, 4','Torrelles de Llobregat','08629',1,'a8061361@xtec.cat','',_binary '\0\0\0\0\0\0\0�bȯ���?9ތ�D�D@','',''),(311,'Institut Cabrils','C. de Can Tosca, 2','Cabrils','08348',1,'a8062717@xtec.cat','',_binary '\0\0\0\0\0\0\0IJ\r�@DUó�\�D@','',''),(312,'Institut Pla Marcell','C. Ramon i Cajal, 58','Cardedeu','08440',1,'a8062729@xtec.cat','',_binary '\0\0\0\0\0\0\0�n�\��@:��\0a\�D@','',''),(313,'Institut Els Roures','C. del Doctor Joan Cardona, s/n','Dosrius','08319',1,'a8062730@xtec.cat','',_binary '\0\0\0\0\0\0\0a4\�\�\�G@�=.�\�D@','',''),(314,'Institut Vilamajor','C. de Can Llobera, s/n','Sant Pere de Vilamajor','08458',1,'a8062791@xtec.cat','',_binary '\0\0\0\0\0\0\0Lp�.=!@�ݩ%\�D@','',''),(315,'Institut Esteve Albert','Av. Sot del Camp, 1-3','Sant Vicenç de Montalt','08394',1,'a8062808@xtec.cat','',_binary '\0\0\0\0\0\0\0�\\UG�@\�\�\�\�D@','',''),(316,'Institut Tiana','C. Eduard Fontserè, s/n','Tiana','08391',1,'a8062857@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�$M\�@3�x�žD@','',''),(317,'Institut La Plana','C. Rector de Vallfogona, 65','Vic','08500',1,'a8062870@xtec.cat','',_binary '\0\0\0\0\0\0\0\"P?�\Z@թ\�.�D@','',''),(318,'Institut Montpedrós','C. Esquirol, 9','Santa Coloma de Cervelló','08690',1,'a8063229@xtec.cat','',_binary '\0\0\0\0\0\0\0���7�\0@S�w���D@','',''),(319,'Institut Salvador Claramunt','C. de La Plana, 6','Piera','08784',1,'a8063746@xtec.cat','',_binary '\0\0\0\0\0\0\0����?`�\��\�D@','',''),(320,'Institut de Collbató','C. Tarragona, 26','Collbató','08293',1,'a8063801@xtec.cat','',_binary '\0\0\0\0\0\0\0�d\��\0�?��O\r\�\�D@','',''),(321,'Institut Creu de Saba','Av. de Francesc Macià, 193','Olesa de Montserrat','08640',1,'a8063813@xtec.cat','',_binary '\0\0\0\0\0\0\0���\�&�?\Z\�\�\�\�D@','',''),(322,'Institut Les Margues','Av. de Francesc Macià, 14','Calldetenes','08506',1,'a8063837@xtec.cat','',_binary '\0\0\0\0\0\0\0���9fO@/��D@','',''),(323,'Institut Montgròs','C. Joan Cuadras i Marcer, 1','Sant Pere de Ribes','08810',1,'a8063904@xtec.cat','',_binary '\0\0\0\0\0\0\0��\��Z�?FB:�|�D@','',''),(324,'Institut Can Margarit','Av. dels Pins, 49 bis','Corbera de Llobregat','08757',1,'a8064003@xtec.cat','',_binary '\0\0\0\0\0\0\0\nVI\"�?\�\�\�el�D@','',''),(325,'Institut Quatre Cantons','Camí Antic de València, 37-39','Barcelona','08018',1,'a8064155@xtec.cat','',_binary '\0\0\0\0\0\0\0Cy�9��@x\�\�ɳD@','',''),(326,'Institut Serra de Noet','C. del Programari Lliure, 9','Berga','08600',1,'a8064830@xtec.cat','',_binary '\0\0\0\0\0\0\0.~K\�`q�?\�\�4fE@','',''),(327,'Institut Begues','Camí Ral, s/n','Begues','08859',1,'a8064908@xtec.cat','',_binary '\0\0\0\0\0\0\0Z4\�P��?\��WԢ�D@','',''),(328,'Institut Valèria Haliné','Camí Fondo de Ca n\'Aymerich, 4','Castelldefels','08860',1,'a8064911@xtec.cat','',_binary '\0\0\0\0\0\0\0\�Պ���?\�\�_ѣD@','',''),(329,'Institut de Sant Andreu','Av. Bonaventura Pedemonte, 2','Sant Andreu de la Barca','08740',1,'a8064921@xtec.cat','',_binary '\0\0\0\0\0\0\0��H�\��?�\�=s(�D@','',''),(330,'Institut Nou de Vilafranca del Penedès','<p>Av. Europa, s/n</p>','Vilafranca del Penedès','08720',1,'a8064970@xtec.cat','',_binary '\0\0\0\0\0\0\0F�a�2�?j[3�P�D@','',''),(331,'Institut de Vallbona d\'Anoia','C. Reguerot, s/n','Vallbona d\'Anoia','08785',1,'a8065019@xtec.cat','',_binary '\0\0\0\0\0\0\0ٿ	��Q�?R\�r�\�D@','',''),(332,'Institut de l\'Alt Foix','Pg. Esportiu, 18','Sant Martí Sarroca','08731',1,'a8065329@xtec.cat','',_binary '\0\0\0\0\0\0\0o�~\�T��?y8\0i_�D@','',''),(333,'Institut Cal Gravat','C. Puig i Cadafalch,54-56','Manresa','08242',1,'a8065330@xtec.cat','',_binary '\0\0\0\0\0\0\0\�W9��?\�\�\�\�;\�D@','',''),(334,'Institut Xaloc','C. Guifré el Pilós, s/n','Les Roquetes','08812',1,'a8065342@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�&\�\���?\�)\�\��D@','',''),(335,'Institut Baix a mar','C. Àncora, 29','Vilanova i la Geltrú','08800',1,'a8065354@xtec.cat','',_binary '\0\0\0\0\0\0\0�\\`�C��?h\�N�#�D@','',''),(336,'Institut de Pineda de Mar','C. Botticelli, 6-8','Pineda de Mar','08397',1,'a8065366@xtec.cat','',_binary '\0\0\0\0\0\0\0\�#}�a�@h\�K�\�D@','',''),(337,'Institut El Til·ler','Ctra. de Ribes, 45-55','Corró d\'Avall','08520',1,'a8065391@xtec.cat','',_binary '\0\0\0\0\0\0\0���\�\�_@\�>�&1\�D@','',''),(338,'Institut Hipàtia d\'Alexandria','C. Folch i Torres, 104-116','Lliçà d\'Amunt','08186',1,'a8065408@xtec.cat','',_binary '\0\0\0\0\0\0\0u)C��\�@��\�vV\�D@','',''),(339,'Institut Aiguaviva','Rbla. Pompeu Fabra, 1','Mollet del Vallès','08100',1,'a8065411@xtec.cat','',_binary '\0\0\0\0\0\0\01�\�2\�@[^w¤\�D@','',''),(340,'Institut Marta Mata','Camí de la Justada, 5','Montornès Centre','08170',1,'a8065421@xtec.cat','',_binary '\0\0\0\0\0\0\0�\��F.@��Z\r\�D@','',''),(341,'Institut La Sínia','C. Víctor Català, 8','Parets del Vallès','08150',1,'a8065433@xtec.cat','',_binary '\0\0\0\0\0\0\0\�.\�\�\�@^��A\�D@','',''),(342,'Institut Can Record','C. Galerna, 2','Sant Esteve de Palautordera','08461',1,'a8065469@xtec.cat','',_binary '\0\0\0\0\0\0\0���}@��c\�D@','',''),(343,'Institut Cardener','C. del Sol, 13','Sant Joan de Vilatorrada','08250',1,'a8066322@xtec.cat','',_binary '\0\0\0\0\0\0\0QRI\��?��OM\"\�D@','',''),(344,'Institut Mont Perdut','C. Mont Perdut, 1','Terrassa','08225',1,'a8066437@xtec.cat','',_binary '\0\0\0\0\0\0\0s�cN\0@�_�\\s\�D@','',''),(345,'Institut Martí Pous','C. Segre, 34','Barcelona','08009',1,'a8066528@xtec.cat','',_binary '\0\0\0\0\0\0\0�E\�� �@�>;\�z�D@','',''),(346,'Institut Maria Espinalt','C. Llacuna, 87-101','Barcelona','08018',1,'a8066541@xtec.cat','',_binary '\0\0\0\0\0\0\0\�}�l�@\�\�\0��D@','',''),(347,'Institut Viladomat','C. Consell de Cent, 127-129','Barcelona','08015',1,'a8066905@xtec.cat','',_binary '\0\0\0\0\0\0\0����[9@�)�ڰD@','',''),(348,'Institut de Cervelló','C. del Pi, s/n','Cervelló','08758',1,'a8067144@xtec.cat','',_binary '\0\0\0\0\0\0\0�|�V��??Q\�̿�D@','',''),(349,'Institut Salas i Xandri','Rda.. Arraona, s/n','Sant Quirze del Vallès','08192',1,'a8067211@xtec.cat','',_binary '\0\0\0\0\0\0\0Y�����\0@�.#�\�D@','',''),(350,'Institut Escola Les Vinyes','C. Major, 109','Castellbisbal','08755',1,'a8067594@xtec.cat','',_binary '\0\0\0\0\0\0\0���\�,��?P>Ȩn�D@','',''),(351,'Institut Manresa Sis','Vivendes Pare Ignasi Puig, s/n','Manresa','08242',1,'a8067636@xtec.cat','',_binary '\0\0\0\0\0\0\0�{b�*\��?�;hF\�D@','',''),(352,'Institut Gurb','C. de l\'Olivera, s/n','Gurb','08503',1,'a8068380@xtec.cat','',_binary '\0\0\0\0\0\0\0\�ПY�\�@jE\�p7�D@','',''),(353,'Institut Josefina Castellví i Piulachs','C. Remolar, 3','Viladecans','08840',1,'a8068495@xtec.cat','',_binary '\0\0\0\0\0\0\02CMn�\0@�Qi�i�D@','',''),(354,'Institut Les Aimerigues','C. Icària, 80','Terrassa','08224',1,'a8068537@xtec.cat','',_binary '\0\0\0\0\0\0\0\���X��?;\�J�t\�D@','',''),(355,'Institut Bages Sud','C. Salt del Rec, 10','El Borràs','08296',1,'a8068616@xtec.cat','',_binary '\0\0\0\0\0\0\0,�Sv���?lc\"�\�D@','',''),(356,'Institut Escola La Tordera','Ptge. Margarida, 1','Santa Maria de Palautordera','08460',1,'a8070908@xtec.cat','',_binary '\0\0\0\0\0\0\0M>\�\�@\�\Z��\�D@','',''),(357,'Institut Can Roca','C. Fàtima, 12','Terrassa','08225',1,'a8071196@xtec.cat','',_binary '\0\0\0\0\0\0\0�0�;!\0@*��J@\�D@','',''),(358,'Institut Escola Castellterçol','C. de Rocacorba, 23-29','Castellterçol','08183',1,'a8071214@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�\�p�\0@\�\�v\�\�D@','',''),(359,'Institut Escola Costa i Llobera','Camí de la Capella de Can Caralleu, s/n','Barcelona','08017',1,'a8071226@xtec.cat','',_binary '\0\0\0\0\0\0\0�m�\�\0@�G���D@','',''),(360,'Institut Escola Jacint Verdaguer','C. Gelida, s/n','Sant Sadurní d\'Anoia','08770',1,'a8071238@xtec.cat','',_binary '\0\0\0\0\0\0\0\��P����?\�&�ζD@','',''),(361,'Institut Vall del Mediona','Pg. de les Deus, 17','Sant Quintí de Mediona','08777',1,'a8071317@xtec.cat','',_binary '\0\0\0\0\0\0\0�>ڶ*��?^�|�B�D@','',''),(362,'Institut Escola del Prat','C. del Riu Túria, 2-4','El Prat de Llobregat','08820',1,'a8071691@xtec.cat','',_binary '\0\0\0\0\0\0\0�L3)�\0@2Q^�D@','',''),(363,'Institut del Ter','C. Eduard Rifà, 24','Manlleu','08560',1,'a8072176@xtec.cat','',_binary '\0\0\0\0\0\0\0᫸�SW@����\0E@','',''),(364,'Institut Escola Sant Jordi','C. Puig-reig, s/n','Navàs','08670',1,'a8072188@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�-M��?R=���D@','',''),(365,'Institut Premià de Mar','C. Rafael de Casanova, s/n','Premià de Mar','08330',1,'a8072255@xtec.cat','',_binary '\0\0\0\0\0\0\0#��K��@ߢ\��h�D@','',''),(366,'Institut Escola Turó de Roquetes','C. Alcàntara, 22','Barcelona','08001',1,'a8072292@xtec.cat','',_binary '\0\0\0\0\0\0\0���\�a@/a�\r%�D@','',''),(367,'Institut Domus d\'Olivet','Av. de Canovelles, 125','La Serra','08420',1,'a8072383@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�h;@�@V\�U\�D@','',''),(368,'Institut Torrent dels Alous','Ptge. Marconi, 13-15','Rubí','08191',1,'a8072401@xtec.cat','',_binary '\0\0\0\0\0\0\0��� LR\0@�`Q\�ؽD@','',''),(369,'Institut Sunsi Móra','C. Jaume Romagosa Duran, 4','Canet de Mar','08360',1,'a8072978@xtec.cat','',_binary '\0\0\0\0\0\0\0Yev{\�@����\�D@','',''),(370,'Institut de Sant Pol de Mar','Parc del Litoral, s/n','Sant Pol de Mar','08395',1,'a8073028@xtec.cat','',_binary '\0\0\0\0\0\0\0�p\�nD\�@\��*L�\�D@','',''),(371,'Institut de Cornellà','Av. Sant Ildefons, 24','Cornellà de Llobregat','08940',1,'a8073031@xtec.cat','',_binary '\0\0\0\0\0\0\0�hO9�\0@.ހ���D@','',''),(372,'Institut Maria Canela','Pl. Maria Canela, 1','Martorell','08760',1,'a8073077@xtec.cat','',_binary '\0\0\0\0\0\0\0tr!��\��?�5\�6�D@','',''),(373,'Institut Can Periquet','Camí de Can Llonch, s/n','Palau-solità i Plegamans','08184',1,'a8073119@xtec.cat','',_binary '\0\0\0\0\0\0\0\"B�Vxo@Ja{�\�\�D@','',''),(374,'Institut La Riera','C. Jacinto Benavente, 13','Badalona','08915',1,'a8073171@xtec.cat','',_binary '\0\0\0\0\0\0\0H��,\r@�t)y�D@','',''),(375,'Institut Badia i Margarit','Av. de Montserrat, 38-40','Igualada','08700',1,'a8073193@xtec.cat','',_binary '\0\0\0\0\0\0\0\��\��?���\�\�D@','',''),(376,'Institut Pic del Vent','C. Maria Aurèlia Campmany, 2','Caldes de Montbui','08140',1,'a8073651@xtec.cat','',_binary '\0\0\0\0\0\0\0z�}V@\�q\�9\�\�D@','',''),(377,'Institut Tordària','C. València, s/n','Tordera','08490',1,'a8073843@xtec.cat','',_binary '\0\0\0\0\0\0\0��\�\�i�@\�]sI�\�D@','',''),(378,'Institut de Seguretat Pública de Catalunya','Ctra. C-17, Barcelona-Ripoll, km 13,5','Mollet del Vallès','08100',1,'a8073910@xtec.cat','',_binary '\0\0\0\0\0\0\0�7�\�w\�@\��w\�\�D@','',''),(379,'Institut Pla del Bosc','C. de la Verge de Montserrat, 1','Canyelles','08811',1,'a8073961@xtec.cat','',_binary '\0\0\0\0\0\0\0��@�f��?�S�\�w�D@','',''),(380,'Institut La Serra','Av. Can Bordoll, 92-94','Sabadell','08201',1,'a8074410@xtec.cat','',_binary '\0\0\0\0\0\0\0\��\�\Z\�@\�H>\�D@','',''),(381,'Institut Les Salines','Av. 11 de Setembre, 36','El Prat de Llobregat','08820',1,'a8074631@xtec.cat','',_binary '\0\0\0\0\0\0\0k�{�h�\0@��9\�D@','',''),(382,'Institut Marta Estrada','C. Maria Palau, s/n','Granollers','08403',1,'a8074801@xtec.cat','',_binary '\0\0\0\0\0\0\0m\�ڛ<@��\�ȅ\�D@','',''),(383,'Institut de Nàutica de Barcelona','C. de l\'Escar, 6-8','Barcelona','08039',1,'a8074847@xtec.cat','',_binary '\0\0\0\0\0\0\04	H�@l\��D@','',''),(384,'Institut de Santa Coloma de Gramenet','C. Mossèn Jacint Verdaguer, 16','Santa Coloma de Gramenet','08922',1,'a8075074@xtec.cat','',_binary '\0\0\0\0\0\0\0�L\�(��@7�\\�D@','',''),(385,'Institut Escola Marta Mata','Av. del Castell, 42','Torelló','08570',1,'a8075256@xtec.cat','',_binary '\0\0\0\0\0\0\0��E�@�� ME@','',''),(386,'Institut Bitàcola','Rda.. de l\'Est, s/n','Barberà del Vallès','08210',1,'a8075281@xtec.cat','',_binary '\0\0\0\0\0\0\0� 8x�\0@^F:ΰ�D@','',''),(387,'Institut Escola Gavà Mar','C. Tellinaires, 59-61','Gavà','08850',1,'a8075293@xtec.cat','',_binary '\0\0\0\0\0\0\0\�(��\�/\0@\Z#�\�R�D@','',''),(388,'Institut Escola Sant Adrià de Besòs','Rbla. de la Mina, 36','Sant Adrià de Besòs','08930',1,'a8075384@xtec.cat','',_binary '\0\0\0\0\0\0\0;w~��\�@r�>9y�D@','',''),(389,'Institut de Formació Professional d\'Enoturisme de Catalunya','C. Amàlia Soler, 29','Vilafranca del Penedès','08720',1,'a8075451@xtec.cat','',_binary '\0\0\0\0\0\0\0��\\5�?Eݮg\�D@','',''),(390,'Institut Escola Antaviana','C. Nou Barris, 12','Barcelona','08001',1,'a8075657@xtec.cat','',_binary '\0\0\0\0\0\0\0|/ۻm@m]�D@','',''),(391,'Institut Escola El Til·ler','Pg. de Mollerussa, 1','Barcelona','08030',1,'a8075669@xtec.cat','',_binary '\0\0\0\0\0\0\0�&�}�@Ca\'\' �D@','',''),(392,'Institut Escola Trinitat Nova','C. Pedrosa, 16','Barcelona','08001',1,'a8075670@xtec.cat','',_binary '\0\0\0\0\0\0\0��=�y@\�Ao�D@','',''),(393,'Institut Viladecans VI','Av. Jocs Olímpics, 11','Viladecans','08840',1,'a8075682@xtec.cat','',_binary '\0\0\0\0\0\0\0��H$\0@=ҵ6Z�D@','',''),(394,'Institut Les Cinc Sénies','Rda.. de Rafael Estrany, 60','Mataró','08304',1,'a8075712@xtec.cat','',_binary '\0\0\0\0\0\0\0\0�<��@!j�Ε\�D@','',''),(395,'Institut Ca n\'Oriac','C. Príncep de Viana, s/n','Sabadell','08201',1,'a8076091@xtec.cat','',_binary '\0\0\0\0\0\0\0qS�Lҿ\0@�\�\�w\�D@','',''),(396,'Institut Joan Marquès','Av. Vallès, 483','Terrassa','08225',1,'a8076108@xtec.cat','',_binary '\0\0\0\0\0\0\0\�(E��7\0@��\�@\"\�D@','',''),(397,'Institut Nou de l\'Hospitalet de Llobregat','C. Ferrer i Guàrdia, s/n','L\'Hospitalet de Llobregat','08902',1,'a8076111@xtec.cat','',_binary '\0\0\0\0\0\0\0ƛ�\��\0@Qᯙa�D@','',''),(398,'Institut Escola Mar Mediterrània','Pg. de Ramon Berenguer III, 130','Mataró','08303',1,'a8076145@xtec.cat','',_binary '\0\0\0\0\0\0\02Y�zk@��\�\0\�D@','',''),(399,'Institut Escola Àngela Bransuela','Rda.. Sant Oleguer, 76','Mataró','08304',1,'a8076157@xtec.cat','',_binary '\0\0\0\0\0\0\0�n\�>�@ �oS|\�D@','',''),(400,'Institut Escola Gornal','Av. Carmen Amaya, 44','L\'Hospitalet de Llobregat','08902',1,'a8076169@xtec.cat','',_binary '\0\0\0\0\0\0\0\�p\�\�\��\0@uN�ϭD@','',''),(401,'Institut Tecnològic de Barcelona','C. Aiguablava, 121','Barcelona','08033',1,'a8076194@xtec.cat','',_binary '\0\0\0\0\0\0\0�2�sA~@m\�\r�D@','',''),(402,'Institut Pere Alsius i Torrent','C. Sardana, 17','Banyoles','17820',1,'b7000305@xtec.cat','',_binary '\0\0\0\0\0\0\0�\Z���@.\�®E@','',''),(403,'Institut Josep Brugulat','Ctra. de Figueroles, s/n','Banyoles','17820',1,'b7000330@xtec.cat','',_binary '\0\0\0\0\0\0\0`�\��D@2�\�\�E@','',''),(404,'Institut Sa Palomera','C. Vilar Petit, s/n','Blanes','17300',1,'b7000551@xtec.cat','',_binary '\0\0\0\0\0\0\0��54�@@\�\�\�_\�\�D@','',''),(405,'Institut Puig Cargol','Pla de Calonge, s/n','Calonge','17251',1,'b7000706@xtec.cat','',_binary '\0\0\0\0\0\0\0\r$��r8@$\�ma\�D@','',''),(406,'Institut Ramon Muntaner','C. Sant Pau, s/n','Figueres','17600',1,'b7001218@xtec.cat','',_binary '\0\0\0\0\0\0\0�CV�@f& !E@','',''),(407,'Institut Jaume Vicens Vives','C. Ferràndiz i de Bellés, s/n','Girona','17004',1,'b7001723@xtec.cat','',_binary '\0\0\0\0\0\0\0_�\�2;�@\�7�[{�D@','',''),(408,'Institut Montilivi','Av. Montilivi, 125','Girona','17003',1,'b7001735@xtec.cat','',_binary '\0\0\0\0\0\0\0�����@\�*\�q�D@','',''),(409,'Institut Escola d\'Hostaleria i Turisme de Girona','C. Josep Viader Moliner, 11','Girona','17005',1,'b7001759@xtec.cat','',_binary '\0\0\0\0\0\0\0o[c\�~@� \Zɝ�D@','',''),(410,'Institut Montsacopa','Av. Joan de Cabirol, s/n','Olot','17800',1,'b7002387@xtec.cat','',_binary '\0\0\0\0\0\0\0�v��\�@r\�.�NE@','',''),(411,'Institut La Garrotxa','Ctra. de Riudaura, 110','Olot','17800',1,'b7002399@xtec.cat','',_binary '\0\0\0\0\0\0\0:�\�bT�@VJ��zE@','',''),(412,'Institut Frederic Martí i Carreras','C. Frederic Martí Carreras, 13','Palafrugell','17200',1,'b7002545@xtec.cat','',_binary '\0\0\0\0\0\0\0o\�	\�R	@Q��n��D@','',''),(413,'Institut Baix Empordà','Av. de les Corts Catalanes, s/n','Palafrugell','17200',1,'b7002557@xtec.cat','',_binary '\0\0\0\0\0\0\0\r\�)s�T	@q}ި��D@','',''),(414,'Institut Sant Elm','C. Abat Sunyer, s/n','Sant Feliu de Guíxols','17220',1,'b7003306@xtec.cat','',_binary '\0\0\0\0\0\0\0ӻ�\"*<@!],\�D@','',''),(415,'Institut de Sant Feliu de Guíxols','C. Canigó, 41','Sant Feliu de Guíxols','17220',1,'b7003318@xtec.cat','',_binary '\0\0\0\0\0\0\0$�\Z!�2@\�\�C��\�D@','',''),(416,'Institut Alexandre Deulofeu','C. Joaquim Cusí Fortunet, 3','Figueres','17600',1,'b7004438@xtec.cat','',_binary '\0\0\0\0\0\0\0\'�I&V�@�PL\�N\"E@','',''),(417,'Institut Rafael Campalans','Pl. del Remei, s/n','Anglès','17160',1,'b7004487@xtec.cat','',_binary '\0\0\0\0\0\0\0`����@��4l�D@','',''),(418,'Institut Narcís Xifra i Masmitjà','Pg. Sant Joan Bosco, 1','Girona','17007',1,'b7004499@xtec.cat','',_binary '\0\0\0\0\0\0\0�\0\�;�@_^8�\0E@','',''),(419,'Institut Anton Busquets i Punset','C. de Joan Serras, 21','Sant Hilari Sacalm','17403',1,'b7004517@xtec.cat','',_binary '\0\0\0\0\0\0\0>+�)@ho\�vu�D@','',''),(420,'Institut Santiago Sobrequés i Vidal','C. Joan Reglà, 2-4','Girona','17003',1,'b7004530@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\�?���@�vp\�[�D@','',''),(421,'Institut Castell d\'Estela','Pujada de l\'Estació, 4','Amer','17170',1,'b7004578@xtec.cat','',_binary '\0\0\0\0\0\0\0��\�\�@qF\�9E@','',''),(422,'Institut Carles Rahola i Llorens','C. Joan Miró i Ferrà, 10','Girona','17007',1,'b7005042@xtec.cat','',_binary '\0\0\0\0\0\0\0�^)�Il@��\��,�D@','',''),(423,'Institut El Pedró','C. Vilabertran, 2-4','L\'Escala','17130',1,'b7005251@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�f�	@p�}\�E@','',''),(424,'Institut de Palamós','C. Nàpols, 22','Palamós','17230',1,'b7005352@xtec.cat','',_binary '\0\0\0\0\0\0\0!,יJ�@\�`<\�D@','',''),(425,'Institut Cap Norfeu','C. Ponent, s/n','Roses','17480',1,'b7005364@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�	�k	@\��sJ\"E@','',''),(426,'Institut de Santa Coloma de Farners','Av. Salvador Espriu, s/n','Santa Coloma de Farners','17430',1,'b7005376@xtec.cat','',_binary '\0\0\0\0\0\0\0�`\�R@)Q\�\�D@','',''),(427,'Institut Vallvera','Ptge. de la Fàbrica Tèxtil Coma Cros, 4','Salt','17190',1,'b7005388@xtec.cat','',_binary '\0\0\0\0\0\0\0B\��^@a���7�D@','',''),(428,'Institut Cendrassos','C. Arquitecte Pelai Martinez, 1','Figueres','17600',1,'b7005649@xtec.cat','',_binary '\0\0\0\0\0\0\0{Y��w�@y�!#E@','',''),(429,'Institut de Cassà de la Selva','C. Josep Pla, s/n','Cassà de la Selva','17244',1,'b7005650@xtec.cat','',_binary '\0\0\0\0\0\0\0X\�E`�@K�\�@�D@','',''),(430,'Institut Serrallarga','C. Joan Benejam, 1','Blanes','17300',1,'b7005662@xtec.cat','',_binary '\0\0\0\0\0\0\0�V��a@\r�R\�\�\�D@','',''),(431,'Institut Abat Oliba','Ctra. Barcelona, 57','Ripoll','17500',1,'b7005704@xtec.cat','',_binary '\0\0\0\0\0\0\04\�M��@�\�6��E@','',''),(432,'Institut S\'Agulla','Ctra. de Malgrat, 13','Blanes','17300',1,'b7005731@xtec.cat','',_binary '\0\0\0\0\0\0\0�u��;@\�\�p\�D@','',''),(433,'Institut Pere Borrell','C. Escoles Pies, 46','Puigcerdà','17520',1,'b7005741@xtec.cat','',_binary '\0\0\0\0\0\0\0\�oYP\�\��?j\�S\�j7E@','',''),(434,'Institut Bosc de la Coma','C. Toledo, s/n','Olot','17800',1,'b7005893@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�o�+\�@I@�E@','',''),(435,'Institut Ramon Coll i Rodés','C. Senyora de Rossell, 28-30','Lloret de Mar','17310',1,'b7005911@xtec.cat','',_binary '\0\0\0\0\0\0\0���w*�@(F\�1\�D@','',''),(436,'Institut Montgrí','C. Santa Caterina, 137','Torroella de Montgrí','17257',1,'b7005923@xtec.cat','',_binary '\0\0\0\0\0\0\0��1z\n	@p\�4\n�E@','',''),(437,'Institut Castelló d\'Empúries','C. Santa Clara, 55','Castelló d\'Empúries','17486',1,'b7006083@xtec.cat','',_binary '\0\0\0\0\0\0\0\�j\�7N�@+��\�\� E@','',''),(438,'Institut Montsoriu','Av. Doctor Carulla, s/n','Arbúcies','17401',1,'b7006605@xtec.cat','',_binary '\0\0\0\0\0\0\0\�]�0h(@�\�[\�D@','',''),(439,'Institut Pla de l\'Estany','C. Jaume Farriol i Montserrat, 31','Banyoles','17820',1,'b7006666@xtec.cat','',_binary '\0\0\0\0\0\0\0�<U\�@���\rE@','',''),(440,'Institut Cap de Creus','C. Teresa Miramont, s/n','Cadaqués','17488',1,'b7006678@xtec.cat','',_binary '\0\0\0\0\0\0\0\�Y��4\n@þ:\ZI%E@','',''),(441,'Institut Germans Vila-Riera','Ctra. de Molló, s/n','Camprodon','17867',1,'b7006681@xtec.cat','',_binary '\0\0\0\0\0\0\0�\r\�t�@�w\r��\'E@','',''),(442,'Institut Ridaura','C. Amadeu Vives, 42','Castell d\'Aro','17249',1,'b7006691@xtec.cat','',_binary '\0\0\0\0\0\0\0��BgO@ކԑ�\�D@','',''),(443,'Institut de Celrà','C. Països Catalans, s/n','Celrà','17460',1,'b7006708@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�rM@�ǖE@','',''),(444,'Institut Vescomtat de Cabrera','Pl. Catalunya, 1','Hostalric','17850',1,'b7006733@xtec.cat','',_binary '\0\0\0\0\0\0\0�I��\�@\�\�1�\�D@','',''),(445,'Institut de La Jonquera','C. de Lluís Companys, s/n','La Jonquera','17700',1,'b7006745@xtec.cat','',_binary '\0\0\0\0\0\0\0�NQ�\��@�TC5E@','',''),(446,'Institut de Llagostera','Av. del Gironès, 51','Llagostera','17240',1,'b7006757@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�kd\�.@�\�0,\�D@','',''),(447,'Institut de Llançà','C. Vuit de març, s/n','Llançà','17490',1,'b7006769@xtec.cat','',_binary '\0\0\0\0\0\0\0?\�K�\':	@�\�>��-E@','',''),(448,'Institut Rocagrossa','C. Rosa Sensat, 1-11','Lloret de Mar','17310',1,'b7006770@xtec.cat','',_binary '\0\0\0\0\0\0\01f�V�@\�_�\�D@','',''),(449,'Institut Joan Triadú','Pg. Àngel Guimerà, 2-3','Ribes de Freser','17534',1,'b7006794@xtec.cat','',_binary '\0\0\0\0\0\0\0��\���Y@\�	�!\'E@','',''),(450,'Institut de Tossa de Mar','Av. Catalunya, s/n','Tossa de Mar','17320',1,'b7006812@xtec.cat','',_binary '\0\0\0\0\0\0\0��\�%j@)0�\�\�\�D@','',''),(451,'Institut Vidreres','C. de l\'Institut, s/n','Vidreres','17411',1,'b7006824@xtec.cat','',_binary '\0\0\0\0\0\0\0 \�\�\�@#@�0��(\�D@','',''),(452,'Institut Illa de Rodes','Ctra. de les Arenes, 57','Roses','17480',1,'b7006851@xtec.cat','',_binary '\0\0\0\0\0\0\0\�in�\"f	@^��\�d\"E@','',''),(453,'Institut Santa Eugènia','C. Enric Marquès i Ribalta, 3','Girona','17006',1,'b7006939@xtec.cat','',_binary '\0\0\0\0\0\0\0h�0q�o@�\�:I�D@','',''),(454,'Institut La Bisbal','C. Eusebi Díaz Costa, 16-38','La Bisbal d\'Empordà','17100',1,'b7007300@xtec.cat','',_binary '\0\0\0\0\0\0\0���EGY@�.�N��D@','',''),(455,'Institut Olivar Gran','Av. Maria Àngels Anglada, 11','Figueres','17600',1,'b7007609@xtec.cat','',_binary '\0\0\0\0\0\0\0ܾQ�@U�_�\� E@','',''),(456,'Institut de Vilafant','C. Pla de l\'Estany, s/n','Vilafant','17740',1,'b7008390@xtec.cat','',_binary '\0\0\0\0\0\0\0�\Z\rֻ�@\�\�%!YE@','',''),(457,'Institut Salvador Sunyer i Aimeric','C. de Miquel Martí i Pol, s/n','Salt','17190',1,'b7008407@xtec.cat','',_binary '\0\0\0\0\0\0\0�4�\n�C@�OM\n��D@','',''),(458,'Institut de Caldes de Malavella','Av. Onze de Setembre, 4-18','Caldes de Malavella','17455',1,'b7008651@xtec.cat','',_binary '\0\0\0\0\0\0\0\�:\��\�i@\�{\�D@','',''),(459,'Institut Empuriabrava','C. Olivera, s/n','Castelló d\'Empúries','17487',1,'b7008729@xtec.cat','',_binary '\0\0\0\0\0\0\0�ݘ\Z\�@�\�)`!E@','',''),(460,'Institut Maçanet de la Selva','C. Escoles, 19','Maçanet de la Selva','17412',1,'b7008951@xtec.cat','',_binary '\0\0\0\0\0\0\0{�\�1\�@D�WA\�D@','',''),(461,'Institut de Vilablareix','C. Marie Curie, s/n','Vilablareix','17180',1,'b7009205@xtec.cat','',_binary '\0\0\0\0\0\0\0�9��oc@�\Z϶�D@','',''),(462,'Institut de Sils','C.de l\'Abat Oliva-C.Lluís Llach-C.JoseC','Sils','17410',1,'b7009308@xtec.cat','',_binary '\0\0\0\0\0\0\0\��9��\�@��tȼ\�D@','',''),(463,'Institut La Miquela','C. Salvador Dalí, 2','Bescanó','17162',1,'b7009783@xtec.cat','',_binary '\0\0\0\0\0\0\0�I\�S>\�@L�P\�M�D@','',''),(464,'Institut Escola Francesc Cambó i Batlle','Camí de Marenyà, s/n','Verges','17142',1,'b7009795@xtec.cat','',_binary '\0\0\0\0\0\0\0n��@5]@\�%6�:E@','',''),(465,'Institut Escola Salvador Vilarrasa','Pg. Pare Pujiula, 29','Besalú','17850',1,'b7009801@xtec.cat','',_binary '\0\0\0\0\0\0\0$\�ߴ\�@�\��E@','',''),(466,'Institut Escola Mestre Andreu','C. Mestre Josep Maria Andreu, 2','Sant Joan de les Abadesses','17860',1,'b7009813@xtec.cat','',_binary '\0\0\0\0\0\0\0�s�K@��\�E@','',''),(467,'Institut Escola Lloret de Mar','C. Santiago de Cuba, s/n','Lloret de Mar','17310',1,'b7009898@xtec.cat','',_binary '\0\0\0\0\0\0\0x;~Lğ@���\��\�D@','',''),(468,'Institut El Bruc','C. dels Prats, 2','Viabrea','17404',1,'b7010037@xtec.cat','',_binary '\0\0\0\0\0\0\0�!t��T@t�\�\�D@','',''),(469,'Institut Vall de Llémena','Pl. Rafel Masó, s/n','Sant Gregori','17150',1,'b7010189@xtec.cat','',_binary '\0\0\0\0\0\0\0#\�@@2��c\��D@','',''),(470,'Institut Ermessenda de Girona','C. Doctor Antic Roca, 38','Girona','17003',1,'b7010414@xtec.cat','',_binary '\0\0\0\0\0\0\0�M��@l�����D@','',''),(471,'Institut Ciutat de Balaguer','C. Urgell, 94','Balaguer','25600',1,'c5000833@xtec.cat','',_binary '\0\0\0\0\0\0\0I�\�H\�?1�\�\n=\�D@','',''),(472,'Institut Antoni Torroja','Pl. Universitat, s/n','Cervera','25200',1,'c5001311@xtec.cat','',_binary '\0\0\0\0\0\0\0w�O\�a�?3\�\�\�D@','',''),(473,'Institut Samuel Gili i Gaya','C. Ton Sirera, s/n','Lleida','25002',1,'c5002684@xtec.cat','',_binary '\0\0\0\0\0\0\0��᯽\�?\r\�H�\�D@','',''),(474,'Institut Marius Torres','C. Narcís Monturiol, 2','Lleida','25002',1,'c5002696@xtec.cat','',_binary '\0\0\0\0\0\0\0\�Afҽ\�?�\�\�6�\�D@','',''),(475,'Institut Guindàvols','C. Eugeni d\'Ors, s/n','Lleida','25196',1,'c5002726@xtec.cat','',_binary '\0\0\0\0\0\0\0.fe�I�\�?ߵ�\�D@','',''),(476,'Institut Caparrella','Partida Caparrella, 98','Lleida','25192',1,'c5002799@xtec.cat','',_binary '\0\0\0\0\0\0\00��\��\�?\��_\�D@','',''),(477,'Institut Mollerussa','Ctra. Torregrossa km. 1,9','Mollerussa','25230',1,'c5003202@xtec.cat','',_binary '\0\0\0\0\0\0\0\�P8�\��\�?�Q\�+�\�D@','',''),(478,'Institut Joan Brudieu','C. Doctor Iglesias Navarri, 27','La Seu d\'Urgell','25700',1,'c5004188@xtec.cat','',_binary '\0\0\0\0\0\0\0\�PF\�\�R�?Pa�;-E@','',''),(479,'Institut Manuel de Pedrolo','Av. Tarragona, 2','Tàrrega','25300',1,'c5004498@xtec.cat','',_binary '\0\0\0\0\0\0\0@-�*\�C�?;�L\�$\�D@','',''),(480,'Institut Ribera del Sió','C. Petronel·la, 1','Agramunt','25310',1,'c5005260@xtec.cat','',_binary '\0\0\0\0\0\0\0�,\�aܓ�?v���\�D@','',''),(481,'Institut Els Planells','Ctra. Montsonis, s/n','Artesa de Segre','25730',1,'c5005429@xtec.cat','',_binary '\0\0\0\0\0\0\07�25���?Q�\�s9�D@','',''),(482,'Institut Francesc Ribalta','C. Francesc  Ribalta, s/n','Solsona','25280',1,'c5005454@xtec.cat','',_binary '\0\0\0\0\0\0\0X�~�;L�?Z�B�f�D@','',''),(483,'Institut Terres de Ponent','Ctra. de Torregrossa, s/n','Mollerussa','25230',1,'c5005582@xtec.cat','',_binary '\0\0\0\0\0\0\0��B\�d\�?�\�5�\�D@','',''),(484,'Institut La Segarra','C. President Macià, s/n','Cervera','25200',1,'c5005685@xtec.cat','',_binary '\0\0\0\0\0\0\0Th\�1�e�?\��G_�\�D@','',''),(485,'Institut Almatà','Parc públic el Reial','Balaguer','25600',1,'c5005727@xtec.cat','',_binary '\0\0\0\0\0\0\0�^)\n\�\�?����\�D@','',''),(486,'Institut d\'Ostalaria de Les-Val d\'Aran','C. dels Banys, s/n','Les','25540',1,'c5006148@xtec.cat','',_binary '\0\0\0\0\0\0\0<z~�\�?\�[9��gE@','',''),(487,'Institut Escola de Sobrestants','C. Salvador Espriu, 2','Tàrrega','25300',1,'c5006215@xtec.cat','',_binary '\0\0\0\0\0\0\0\�j>׌>�?\0\�\�.\�D@','',''),(488,'Institut d\'Almenar','C. Espadós, 75','Almenar','25126',1,'c5006227@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�\�\�h\�?��	�l\�D@','',''),(489,'Institut d\'Aran','Ctra. de Betren, s/n','Vielha','25530',1,'c5006239@xtec.cat','',_binary '\0\0\0\0\0\0\0��ǯ\�?\"E��kYE@','',''),(490,'Institut El Pont de Suert','Barri Aragó, s/n','El Pont de Suert','25520',1,'c5006240@xtec.cat','',_binary '\0\0\0\0\0\0\0IƸ�p�\�?\��r�3E@','',''),(491,'Institut de Tremp','C. Bisbe Iglesias, 5','Tremp','25620',1,'c5006288@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\0*�\�\�?z\0N�\�E@','',''),(492,'Institut Hug Roger III','C. Joaquim Sostres, s/n','Sort','25560',1,'c5006291@xtec.cat','',_binary '\0\0\0\0\0\0\0\����?�R,B\�4E@','',''),(493,'Institut Aubenç','C. Germà Frederic, s/n','Oliana','25790',1,'c5006471@xtec.cat','',_binary '\0\0\0\0\0\0\0t�v\�b�?���\�E@','',''),(494,'Institut Canigó','C. Canigó, s/n','Almacelles','25100',1,'c5006483@xtec.cat','',_binary '\0\0\0\0\0\0\0,�\�\�?�&\�}\�D@','',''),(495,'Institut Josep Lladonosa','C. Jeroni Pujades, 16','Lleida','25005',1,'c5006495@xtec.cat','',_binary '\0\0\0\0\0\0\0���Qx_\�?����\�D@','',''),(496,'Institut Manuel de Montsuar','Partida de Montcada, 22','Lleida','25196',1,'c5006513@xtec.cat','',_binary '\0\0\0\0\0\0\0�o\�Z~�\�?j�ʎ\�D@','',''),(497,'Institut Josep Vallverdú','C. Doctor Josep Trueta, s/n','Les Borges Blanques','25400',1,'c5006525@xtec.cat','',_binary '\0\0\0\0\0\0\0de\�d�\�?�Ł95\�D@','',''),(498,'Institut de Ponts','Av. Pompeu Fabra, 59','Ponts','25740',1,'c5006574@xtec.cat','',_binary '\0\0\0\0\0\0\0I�����?p^	���D@','',''),(499,'Institut Lo Pla d\'Urgell','Av. d\'Urgell, 34','Bellpuig','25250',1,'c5006598@xtec.cat','',_binary '\0\0\0\0\0\0\0\�����?ܭ賜\�D@','',''),(500,'Institut d\'Hoteleria i Turisme','Partida Caparrella, s/n','Lleida','25192',1,'c5006720@xtec.cat','',_binary '\0\0\0\0\0\0\0[�\�\�|�\�?�\�r\�\�D@','',''),(501,'Institut Torrevicens','Av. Torre Vicens, 3','Lleida','25005',1,'c5006732@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\�K�,\�?0\�\�D@','',''),(502,'Institut Ronda','C. Henri Dunant, 3','Lleida','25003',1,'c5006771@xtec.cat','',_binary '\0\0\0\0\0\0\0\�$-%�\�?�H��\�D@','',''),(503,'Institut Alfons Costafreda','Ctra. de Tarragona, s/n','Tàrrega','25300',1,'c5006781@xtec.cat','',_binary '\0\0\0\0\0\0\0-�\�b39�?�_u\�\�D@','',''),(504,'Institut Morelló','Pl. la Closa, 7','Esterri d\'Àneu','25580',1,'c5007025@xtec.cat','',_binary '\0\0\0\0\0\0\0Hm7�\��?�X\�6fPE@','',''),(505,'Institut d\'Alcarràs','Pl. de l\'Arquitecte Ignasi Miquel, 1','Alcarràs','25180',1,'c5007153@xtec.cat','',_binary '\0\0\0\0\0\0\0���\�?\'\�\�\�D@','',''),(506,'Institut Maria Rúbies','C. Boqué/Av. Pla d\'Urgell, s/n','Lleida','25001',1,'c5007189@xtec.cat','',_binary '\0\0\0\0\0\0\0\�R��\�?�i(l�\�D@','',''),(507,'Institut l\'Olivera','Pl. Escoles, 3','La Granadella','25177',1,'c5007499@xtec.cat','',_binary '\0\0\0\0\0\0\0\�)A\�3\�?\�$\�Q��D@','',''),(508,'Institut de Guissona','C. Castanyers, 13','Guissona','25210',1,'c5007505@xtec.cat','',_binary '\0\0\0\0\0\0\0�	7r��?��\�\�\�D@','',''),(509,'Institut Seròs','Pl. de les Escoles, s/n','Seròs','25183',1,'c5007529@xtec.cat','',_binary '\0\0\0\0\0\0\0��}l�T\�? �\�od�D@','',''),(510,'Institut Ermengol IV','C. Enric Servet, s/n','Bellcaire d\'Urgell','25337',1,'c5007700@xtec.cat','',_binary '\0\0\0\0\0\0\0݀\�\�\�\�?F-\�\�D@','',''),(511,'Institut de Sant Llorenç de Morunys','C. de la Creueta, s/n','Sant Llorenç de Morunys','25282',1,'c5008248@xtec.cat','',_binary '\0\0\0\0\0\0\0\�uA3>r�?�E\�v.E@','',''),(512,'Institut de La Pobla de Segur','Av. Catalunya, 22','La Pobla de Segur','25500',1,'c5008352@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\��\�\�\�?���r E@','',''),(513,'Institut d\'Alpicat','C. Pompeu Fabra, 1','Alpicat','25110',1,'c5009721@xtec.cat','',_binary '\0\0\0\0\0\0\0V\�\�ĺ\�?(�l�\�D@','',''),(514,'Institut Joan Solà','Av. Europa /Av. Corts Catalanes','Torrefarrera','25123',1,'c5009733@xtec.cat','',_binary '\0\0\0\0\0\0\0c�Zkl�\�?H��\�\�D@','',''),(515,'Institut La Mitjana','C. Vicenç Ximenis, 4','Lleida','25005',1,'c5009836@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�\�H\�R\�?\�`�<\�D@','',''),(516,'Institut Castell dels Templers','C. Mart, 7','Lleida','25003',1,'c5010127@xtec.cat','',_binary '\0\0\0\0\0\0\0f#ГD|\�?ө 4\�D@','',''),(517,'Institut Escola Torre Queralt','Av. Sant Pere, 54','Lleida','25001',1,'c5010280@xtec.cat','',_binary '\0\0\0\0\0\0\0�~\�\�\�\�?�3��\�\�D@','',''),(518,'Institut Gaudí','Ctra. d\'Osca, 1 (Barri Gaudí)','Reus','43206',1,'e3002570@xtec.cat','',_binary '\0\0\0\0\0\0\0\�=���}�?\"�͔D@','',''),(519,'Institut Salvador Vilaseca','C. Misericòrdia, 12 bis','Reus','43205',1,'e3002582@xtec.cat','',_binary '\0\0\0\0\0\0\0��\�?���?׸�\�r�D@','',''),(520,'Institut Baix Camp','C. Jacint Barrau, 1','Reus','43201',1,'e3002594@xtec.cat','',_binary '\0\0\0\0\0\0\0-\n\�\���?E\�Y\�D@','',''),(521,'Institut Antoni de Martí i Franquès','C. Enric d\'Ossó, 3','Tarragona','43005',1,'e3003641@xtec.cat','',_binary '\0\0\0\0\0\0\0\���=\��?�\�H�D@','',''),(522,'Institut Comte de Rius','Ctra. de Valls, s/n (Zona Educacional)','Tarragona','43007',1,'e3003653@xtec.cat','',_binary '\0\0\0\0\0\0\0T	�P\��?n9d�E�D@','',''),(523,'Institut Pons d\'Icart','C. Assalt, 4','Tarragona','43003',1,'e3003732@xtec.cat','',_binary '\0\0\0\0\0\0\0\�|�\�n\n�?�0���D@','',''),(524,'Institut Dertosa','Av. Estadi, 14','Tortosa','43500',1,'e3004438@xtec.cat','',_binary '\0\0\0\0\0\0\0\��Zc\�t\�?�\"҅hD@','',''),(525,'Institut de l\'Ebre','Av. Colom, 34-42','Tortosa','43500',1,'e3004441@xtec.cat','',_binary '\0\0\0\0\0\0\0:?\0&}\�?G�ɦKhD@','',''),(526,'Institut Narcís Oller','C. Francesc Gumà Ferran, 1','Valls','43800',1,'e3004608@xtec.cat','',_binary '\0\0\0\0\0\0\0~T� �?�1UGF�D@','',''),(527,'Institut Jaume Huguet','C. Creu de Cames, s/n','Valls','43800',1,'e3004611@xtec.cat','',_binary '\0\0\0\0\0\0\0U2L\���?\�76)\�D@','',''),(528,'Institut Baix Penedès','Av. Salvador Palau Rabassó, 1','El Vendrell','43700',1,'e3004797@xtec.cat','',_binary '\0\0\0\0\0\0\0\�:\�!9j�?�c�K�D@','',''),(529,'Institut Andreu Nin','Av. Salvador Palau Rabassó, 18','El Vendrell','43700',1,'e3004803@xtec.cat','',_binary '\0\0\0\0\0\0\0%�4\�^�?���lh�D@','',''),(530,'Institut Francesc Vidal i Barraquer','Av. Lluís Companys, 1','Tarragona','43005',1,'e3005704@xtec.cat','',_binary '\0\0\0\0\0\0\0Fʱ\�\��?w�٢]�D@','',''),(531,'Institut Ramon Barbat i Miracle','Av. de l\'Alcalde Pere Molas, s/n','Vila-seca de Solcina','43480',1,'e3005972@xtec.cat','',_binary '\0\0\0\0\0\0\0���\�g�?�T�s�D@','',''),(532,'Institut Montsià','C. Madrid, 35-49','Amposta','43870',1,'e3006101@xtec.cat','',_binary '\0\0\0\0\0\0\0���.��\�?����\�ZD@','',''),(533,'Institut Campclar','Rambla de Ponent, 66','Tarragona','43006',1,'e3006125@xtec.cat','',_binary '\0\0\0\0\0\0\0\�ީPb�?]\�b\�ۏD@','',''),(534,'Institut Manuel Sales i Ferré','Av. de les Escoles, 6','Ulldecona','43550',1,'e3006496@xtec.cat','',_binary '\0\0\0\0\0\0\0V>�V@C\�?\�OFU\�LD@','',''),(535,'Institut Joan Amigó i Callau','C. del Serè, 10','L´Espluga de Francolí','43440',1,'e3006617@xtec.cat','',_binary '\0\0\0\0\0\0\0�	{�?Pd�i�D@','',''),(536,'Institut Pere Martell','Autovia de Salou, s/n','Tarragona','43006',1,'e3006630@xtec.cat','',_binary '\0\0\0\0\0\0\0�3\0m\��?\�\"y�D@','',''),(537,'Institut Terra Alta','Ctra. de Vilalba, 30','Gandesa','43780',1,'e3006642@xtec.cat','',_binary '\0\0\0\0\0\0\0\0��\�\�?Ӑ� D@','',''),(538,'Institut Cambrils','Pl. Ajuntament, 7','Cambrils','43850',1,'e3006654@xtec.cat','',_binary '\0\0\0\0\0\0\0\'$/�\��?0�oD\n�D@','',''),(539,'Institut Gabriel Ferrater i Soler','Ctra. de Montblanc, 5-9','Reus','43206',1,'e3006678@xtec.cat','',_binary '\0\0\0\0\0\0\0SS~�Q\��?\\�䝔D@','',''),(540,'Institut de La Sénia','C. Domenges, s/n','La Sénia','43560',1,'e3006681@xtec.cat','',_binary '\0\0\0\0\0\0\0_hqB\�?Ծ[N�QD@','',''),(541,'Institut Priorat','Ctra. de Porrera, s/n','Falset','43730',1,'e3006691@xtec.cat','',_binary '\0\0\0\0\0\0\0ģ۲F�\�?�٧�ۓD@','',''),(542,'Institut Joan Segura i Valls','C. Progrès, 7','Santa Coloma de Queralt','43420',1,'e3006708@xtec.cat','',_binary '\0\0\0\0\0\0\0�A�\��?^Hy\�D@','',''),(543,'Institut Torredembarra','Av. de Sant Jordi, 62-64','Torredembarra','43830',1,'e3006952@xtec.cat','',_binary '\0\0\0\0\0\0\0\�p�\\n�?\��k�[�D@','',''),(544,'Institut de Deltebre','Av. de Catalunya, s/n','Deltebre','43580',1,'e3006964@xtec.cat','',_binary '\0\0\0\0\0\0\0#w\�\�\�\"\�?EP�l>\\D@','',''),(545,'Institut Mare de Déu de la Candelera','Av. l\'Ensenyament, s/n','L\'Ametlla de Mar','43860',1,'e3006976@xtec.cat','',_binary '\0\0\0\0\0\0\0`\�Z\�7�\�?��\�pD@','',''),(546,'Institut Escola d\'Hoteleria i Turisme','C. Estel (Pg. Marítim)','Cambrils','43850',1,'e3007038@xtec.cat','',_binary '\0\0\0\0\0\0\020�j��?\�\�(,�D@','',''),(547,'Institut Sòl de Riu','C. Joan Maragall, s/n','Alcanar','43530',1,'e3007087@xtec.cat','',_binary '\0\0\0\0\0\0\0>$:ӝj\�?-��\�ED@','',''),(548,'Institut Julio Antonio','C. Comarques Catalanes, 103','Móra d\'Ebre','43740',1,'e3007129@xtec.cat','',_binary '\0\0\0\0\0\0\0U\\��\�b\�?@7d�=�D@','',''),(549,'Institut Berenguer d\'Entença','C. Ramon Berenguer IV, 7','L\'Hospitalet de l\'Infant','43890',1,'e3007208@xtec.cat','',_binary '\0\0\0\0\0\0\0���6�n\�?\�\�Ǎ?D@','',''),(550,'Institut Blanca d\'Anjou','Av. Sant Jordi, 1','El Perelló','43519',1,'e3007211@xtec.cat','',_binary '\0\0\0\0\0\0\09=��\�?Qp�&pD@','',''),(551,'Institut Els Alfacs','C. Doctor Torné, s/n','Sant Carles de la Ràpita','43540',1,'e3007221@xtec.cat','',_binary '\0\0\0\0\0\0\0(\�|��\�\�?n�K��OD@','',''),(552,'Institut de Flix','C. Salvador Espriu, 1','Flix','43750',1,'e3007233@xtec.cat','',_binary '\0\0\0\0\0\0\0��\��g\�?\�5�.��D@','',''),(553,'Institut Camí de Mar','C. Jaume Pallarès, s/n','Calafell','43820',1,'e3007257@xtec.cat','',_binary '\0\0\0\0\0\0\0\�(\�1�?�%�D@','',''),(554,'Institut d\'Horticultura i Jardineria','Autovia de Bellissens, 41','Reus','43204',1,'e3007385@xtec.cat','',_binary '\0\0\0\0\0\0\0շ�</�?�J=se�D@','',''),(555,'Institut Jaume I','C. Advocat Gallego, 6','Salou','43840',1,'e3007543@xtec.cat','',_binary '\0\0\0\0\0\0\0.����$�?Y 0ŋ�D@','',''),(556,'Institut de L\'Arboç','C. Pompeu Fabra, s/n','L\'Arboç','43720',1,'e3007580@xtec.cat','',_binary '\0\0\0\0\0\0\0�$��>��?,���X�D@','',''),(557,'Institut de Constantí','C. Onze de Setembre, s/n','Constantí','43120',1,'e3007646@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\��C|�?պ0y��D@','',''),(558,'Institut Joan Guinjoan i Gispert','C. Baltasar de Todà i de Tàpies, s/n','Riudoms','43330',1,'e3007658@xtec.cat','',_binary '\0\0\0\0\0\0\0\�Z%Sc\��?k\�^@�D@','',''),(559,'Institut Ramon de la Torre','C. Camí del Moro, 28-40','Torredembarra','43830',1,'e3007661@xtec.cat','',_binary '\0\0\0\0\0\0\0k�#�R��?�\�y+�D@','',''),(560,'Institut Torreforta','C. Móra d\'Ebre, s/n','Tarragona','43006',1,'e3008390@xtec.cat','',_binary '\0\0\0\0\0\0\0�\����r�?KʑY��D@','',''),(561,'Institut El Morell','C. César Martinell, 1','El Morell','43760',1,'e3008407@xtec.cat','',_binary '\0\0\0\0\0\0\0��0>�?w�ĩ�D@','',''),(562,'Institut Camarles','C. de la Granadella, s/n','Camarles','43894',1,'e3008419@xtec.cat','',_binary '\0\0\0\0\0\0\0�9�3:O\�?I�jbD@','',''),(563,'Institut Roquetes','C. Anselm Clavé, 8','Roquetes','43520',1,'e3008420@xtec.cat','',_binary '\0\0\0\0\0\0\0\�\�\��\�?�Z�\rPiD@','',''),(564,'Institut Sant Pere i Sant Pau','C. de l\'Institut, s/n','Sant Pere i Sant Pau','43007',1,'e3008432@xtec.cat','',_binary '\0\0\0\0\0\0\0\�6\����?\�\'`ߑD@','',''),(565,'Institut Josep Tapiró','C. Astorga, 37-39','Reus','43205',1,'e3008444@xtec.cat','',_binary '\0\0\0\0\0\0\0��\�8\��?\�̀���D@','',''),(566,'Institut Les Planes','Pl. Catalunya, 1','Santa Bàrbara','43570',1,'e3008456@xtec.cat','',_binary '\0\0\0\0\0\0\0T�~VEJ\�?��\�[D@','',''),(567,'Institut Collblanc','C. Carrasco i Formiguera, 12','La Canonja','43110',1,'e3008481@xtec.cat','',_binary '\0\0\0\0\0\0\0Bm�S��?��>l�D@','',''),(568,'Institut Escola de Capacitació Nauticopesquera de Catalunya','C. del Mediterrani, 2','L\'Ametlla de Mar','43860',1,'e3008493@xtec.cat','',_binary '\0\0\0\0\0\0\0���\�(�\�?����pD@','',''),(569,'Institut Pont del Diable','Av. de Sant Salvador, 17-A','Sant Salvador','43130',1,'e3008501@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�\�\r\��?.sxԔD@','',''),(570,'Institut Joan Puig i Ferreter','C. Abel Ferrater, s/n','La Selva del Camp','43470',1,'e3008511@xtec.cat','',_binary '\0\0\0\0\0\0\0�S\"&\"�?\�u��D@','',''),(571,'Institut Vila-seca','Av. de l\'Alcalde Pere Molas, s/n','Vila-seca de Solcina','43480',1,'e3008523@xtec.cat','',_binary '\0\0\0\0\0\0\0���\�g�?�T�s�D@','',''),(572,'Institut Antoni Ballester','C. de l\'1 d\'Octubre, 5','Mont-roig del Camp','43300',1,'e3008638@xtec.cat','',_binary '\0\0\0\0\0\0\0xQ\04f�\�?c�\�\�\��D@','',''),(573,'Institut Montsant','C. Comte de Rius, s/n','Cornudella de Montsant','43360',1,'e3008699@xtec.cat','',_binary '\0\0\0\0\0\0\0u�0A�\�?\�f\�R��D@','',''),(574,'Esc. de Música Institut Musical de Reus','C. d\'Antoni Gaudí, 14','Reus','43202',1,'e3008833@xtec.cat','',_binary '\0\0\0\0\0\0\0I\�j�f��?#f3\�d�D@','',''),(575,'Institut Martí l\'Humà','Av. Doctor Folch, s/n','Montblanc','43400',1,'e3009187@xtec.cat','',_binary '\0\0\0\0\0\0\0]����{�?q:�\��D@','',''),(576,'Institut Fonts del Glorieta','Av. de Martí i Pol, 2','Alcover','43460',1,'e3009497@xtec.cat','',_binary '\0\0\0\0\0\0\0�#�	��?\�\'.�d�D@','',''),(577,'Institut Cal·lípolis','Autovia de Salou, s/n','Tarragona','43006',1,'e3009722@xtec.cat','',_binary '\0\0\0\0\0\0\0�3\0m\��?\�\"y�D@','',''),(578,'Institut Ernest Lluch i Martí','Av. del Castell, s/n','Cunit','43881',1,'e3009850@xtec.cat','',_binary '\0\0\0\0\0\0\0x�b���?�\�\�\��D@','',''),(579,'Institut d\'Altafulla','C. Camí de l\'Oliverot, s/n','Altafulla','43893',1,'e3009977@xtec.cat','',_binary '\0\0\0\0\0\0\0磞���?\�����D@','',''),(580,'Institut La Mar de la Frau','C. Mas de Vileta, 1-3','Cambrils','43850',1,'e3010335@xtec.cat','',_binary '\0\0\0\0\0\0\0�z�c`�?�\�Y�D@','',''),(581,'Institut La Talaia','C. Brasil, 8','Segur de Calafell','43882',1,'e3010372@xtec.cat','',_binary '\0\0\0\0\0\0\0e\��\�Ź�?�y\��D@','',''),(582,'Institut Coster de la Torre','Av. de la Diputació, s/n','La Bisbal del Penedès','43717',1,'e3010414@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�\n��\��?6_�\�V�D@','',''),(583,'Institut Fontanelles','C. Cultura, 1','Les Borges del Camp','43350',1,'e3010578@xtec.cat','',_binary '\0\0\0\0\0\0\08�Lo�?�s\�e\0�D@','',''),(584,'Institut Serra de Miramar','Pl. del Quarter, s/n','Valls','43800',1,'e3010608@xtec.cat','',_binary '\0\0\0\0\0\0\0~.�}	�?�m\nk��D@','',''),(585,'Institut Els Pallaresos','Av. Catalunya, 12','Els Pallaresos','43151',1,'e3010748@xtec.cat','',_binary '\0\0\0\0\0\0\0$\�V\\�?�\n�E�D@','',''),(586,'Institut Roseta Mauri','C. Jaume Vidal i Alcover, 17-19','Reus','43204',1,'e3010852@xtec.cat','',_binary '\0\0\0\0\0\0\0S\�n5�\��?�T����D@','',''),(587,'Institut de Tecnificació','C. França, 19-21','Amposta','43870',1,'e3010888@xtec.cat','',_binary '\0\0\0\0\0\0\0\�>o�C�\�?��vZD@','',''),(588,'Institut Cristòfol Despuig','C. Rubí, 16','Tortosa','43500',1,'e3011170@xtec.cat','',_binary '\0\0\0\0\0\0\0��48\�\�\�?\�\"{��gD@','',''),(589,'Institut Roda de Berà','C. de la Font, 3','Roda de Berà','43883',1,'e3011418@xtec.cat','',_binary '\0\0\0\0\0\0\0y�>}9�?2�/��D@','',''),(590,'Institut Tarragona','Pl. de la Imperial Tarraco, 1','Tarragona','43003',1,'e3011479@xtec.cat','',_binary '\0\0\0\0\0\0\0�{���?����D�D@','',''),(591,'Institut Escola Pi del Burgar','C. Josep Vidal i Llecha, 1','Reus','43204',1,'e3012083@xtec.cat','',_binary '\0\0\0\0\0\0\0m���\��?\�ym,d�D@','',''),(592,'Institut Escola Mare de Déu del Portal','C. del Cós, 8','Batea','43786',1,'e3012113@xtec.cat','',_binary '\0\0\0\0\0\0\0�\r�ʬ\�?�ē\rƋD@','',''),(593,'Institut Escola 3 d\'Abril','C. Àngel Guimerà, 2','Móra la Nova','43770',1,'e3012289@xtec.cat','',_binary '\0\0\0\0\0\0\0�96\�\�\�?��\�#��D@','',''),(594,'Institut Escola Daniel Mangrané','Ctra. Jesús-Roquetes, s/n','Jesús','43590',1,'e3012307@xtec.cat','',_binary '\0\0\0\0\0\0\0��V\�B\�?�l��iD@','',''),(595,'Institut Escola L\'Agulla','Av. Catalunya, 3','El Catllar','43764',1,'e3012812@xtec.cat','',_binary '\0\0\0\0\0\0\0�!e\�xF�?j��\�p�D@','',''),(596,'Institut Escola Mediterrani','C. Riu Ter, s/n','Bonavista','43001',1,'e3012976@xtec.cat','',_binary '\0\0\0\0\0\0\0\0�?�i=�?~�`�ڎD@','',''),(597,'Institut de Miami','Av. de Cadis, s/n','Miami Platja','43892',1,'e3012988@xtec.cat','',_binary '\0\0\0\0\0\0\0�\�&ٙ�\�?\0*sˀD@','','');
/*!40000 ALTER TABLE `core_centre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_centre_admins`
--

DROP TABLE IF EXISTS `core_centre_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_centre_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `centre_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_centre_admins_centre_id_user_id_8325712b_uniq` (`centre_id`,`user_id`),
  KEY `core_centre_admins_user_id_de80d1cb_fk_core_user_id` (`user_id`),
  CONSTRAINT `core_centre_admins_centre_id_00b1d535_fk_core_centre_id` FOREIGN KEY (`centre_id`) REFERENCES `core_centre` (`id`),
  CONSTRAINT `core_centre_admins_user_id_de80d1cb_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_centre_admins`
--

LOCK TABLES `core_centre_admins` WRITE;
/*!40000 ALTER TABLE `core_centre_admins` DISABLE KEYS */;
INSERT INTO `core_centre_admins` VALUES (3,30,2),(4,30,3),(2,30,6),(1,330,5);
/*!40000 ALTER TABLE `core_centre_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_centre_cicles`
--

DROP TABLE IF EXISTS `core_centre_cicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_centre_cicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `centre_id` int(11) NOT NULL,
  `cicle_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_centre_cicles_centre_id_cicle_id_d283c7fd_uniq` (`centre_id`,`cicle_id`),
  KEY `core_centre_cicles_cicle_id_5a552b32_fk_core_cicle_id` (`cicle_id`),
  CONSTRAINT `core_centre_cicles_centre_id_58566ee8_fk_core_centre_id` FOREIGN KEY (`centre_id`) REFERENCES `core_centre` (`id`),
  CONSTRAINT `core_centre_cicles_cicle_id_5a552b32_fk_core_cicle_id` FOREIGN KEY (`cicle_id`) REFERENCES `core_cicle` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_centre_cicles`
--

LOCK TABLES `core_centre_cicles` WRITE;
/*!40000 ALTER TABLE `core_centre_cicles` DISABLE KEYS */;
INSERT INTO `core_centre_cicles` VALUES (2,30,1),(10,30,28),(3,30,37),(4,30,73),(5,30,75),(6,30,76),(8,30,120),(9,30,121),(7,30,124),(1,30,128);
/*!40000 ALTER TABLE `core_centre_cicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_cicle`
--

DROP TABLE IF EXISTS `core_cicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_cicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grau` varchar(4) NOT NULL,
  `codi` varchar(4) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `pladestudis` varchar(200) DEFAULT NULL,
  `descripcio` longtext NOT NULL,
  `familia_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codi` (`codi`),
  UNIQUE KEY `nom` (`nom`),
  KEY `core_cicle_familia_id_50b819b4_fk_core_categoria_id` (`familia_id`),
  CONSTRAINT `core_cicle_familia_id_50b819b4_fk_core_categoria_id` FOREIGN KEY (`familia_id`) REFERENCES `core_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_cicle`
--

LOCK TABLES `core_cicle` WRITE;
/*!40000 ALTER TABLE `core_cicle` DISABLE KEYS */;
INSERT INTO `core_cicle` VALUES (1,'CFGM','AF10','Preimpressió digital',NULL,'Preimpressió digital',27),(2,'CFGM','AF20','Impressió gràfica',NULL,'Impressió gràfica',27),(3,'CFGM','AF21','Impressió gràfica (converting)',NULL,'Impressió gràfica (converting)',27),(4,'CFGM','AF30','Postimpressió i acabats gràfics',NULL,'Postimpressió i acabats gràfics',27),(5,'CFGM','AG10','Gestió administrativa',NULL,'Gestió administrativa',28),(6,'CFGM','AG11','Gestió administrativa (àmbit jurídic)',NULL,'Gestió administrativa (àmbit jurídic)',28),(7,'CFGM','AG12','Gestió administrativa (àmbit sanitari)',NULL,'Gestió administrativa (àmbit sanitari)',28),(8,'CFGM','AR10','Producció agropecuària',NULL,'Producció agropecuària',29),(9,'CFGM','AR11','Producció agropecuària (Producció agrícola)',NULL,'Producció agropecuària (Producció agrícola)',29),(10,'CFGM','AR12','Producció agropecuària (Producció ramadera)',NULL,'Producció agropecuària (Producció ramadera)',29),(11,'CFGM','AR20','Producció agroecològica',NULL,'Producció agroecològica',29),(12,'CFGM','AR21','Producció agroecològica (Producció agrícola ecològica)',NULL,'Producció agroecològica (Producció agrícola ecològica)',29),(13,'CFGM','AR22','Producció agroecològica (Producció ramadera ecològica)',NULL,'Producció agroecològica (Producció ramadera ecològica)',29),(14,'CFGM','AR30','Aprofitament i conservació del medi natural',NULL,'Aprofitament i conservació del medi natural',29),(15,'CFGM','AR50','Jardineria i floristeria',NULL,'Jardineria i floristeria',29),(16,'CFGM','AR60','Activitats eqüestres',NULL,'Activitats eqüestres',29),(17,'CFGM','CM10','Activitats comercials',NULL,'Activitats comercials',30),(18,'CFGM','CM11','Activitats comercials (productes frescos)',NULL,'Activitats comercials (productes frescos)',30),(19,'CFGM','CM12','Activitats comercials (logística)',NULL,'Activitats comercials (logística)',30),(20,'CFGM','CM13','Activitats comercials (moda)',NULL,'Activitats comercials (moda)',30),(21,'CFGM','EA10','Xarxes, instal·lacions i estacions de tractament d\'aigua',NULL,'Xarxes, instal·lacions i estacions de tractament d\'aigua',31),(22,'CFGM','EA20','Xarxes i estacions de tractament d\'aigües',NULL,'Xarxes i estacions de tractament d\'aigües',31),(23,'CFGM','EE10','Instal·lacions elèctriques i automàtiques',NULL,'Instal·lacions elèctriques i automàtiques',32),(24,'CFGM','EE30','Instal.lacions de telecomunicacions',NULL,'Instal.lacions de telecomunicacions',32),(25,'CFGM','EO10','Obres d\'interior, decoració i rehabilitació',NULL,'Obres d\'interior, decoració i rehabilitació',33),(26,'CFGM','EO20','Construcció',NULL,'Construcció',33),(27,'CFGM','FM10','Soldadura i caldereria',NULL,'Soldadura i caldereria',34),(28,'CFGM','FM20','Mecanització',NULL,'Mecanització',34),(29,'CFGM','FM21','Mecanització (Manteniment i reparació en rellotgeria) ',NULL,'Mecanització (Manteniment i reparació en rellotgeria) ',34),(30,'CFGM','FS10','Fusteria i moble',NULL,'Fusteria i moble',35),(31,'CFGM','FS20','Instal·lació i moblament',NULL,'Instal·lació i moblament',35),(32,'CFGM','HT10','Cuina i gastronomia',NULL,'Cuina i gastronomia',36),(33,'CFGM','HT30','Serveis en restauració',NULL,'Serveis en restauració',36),(34,'CFGM','IA10','Elaboració de productes alimentaris',NULL,'Elaboració de productes alimentaris',37),(35,'CFGM','IA30','Olis d\'oliva i vins',NULL,'Olis d\'oliva i vins',37),(36,'CFGM','IA60','Forneria, pastisseria i confiteria',NULL,'Forneria, pastisseria i confiteria',37),(37,'CFGM','IC10','Sistemes microinformàtics i xarxes',NULL,'Sistemes microinformàtics i xarxes',38),(38,'CFGM','IE10','Excavacions i sondatges',NULL,'Excavacions i sondatges',39),(39,'CFGM','IE11','Excavacions i sondatges (operacions de maquinària de construcció)',NULL,'Excavacions i sondatges (operacions de maquinària de construcció)',39),(40,'CFGM','IE20','Pedra natural',NULL,'Pedra natural',39),(41,'CFGM','IM10','Manteniment electromecànic',NULL,'Manteniment electromecànic',40),(42,'CFGM','IM11','Manteniment electromecànic (vaixells d\'esbarjo i serveis portuaris)',NULL,'Manteniment electromecànic (vaixells d\'esbarjo i serveis portuaris)',40),(43,'CFGM','IM20','Instal·lacions de producció de calor',NULL,'Instal·lacions de producció de calor',40),(44,'CFGM','IM30','Instal·lacions frigorífiques i de climatització',NULL,'Instal·lacions frigorífiques i de climatització',40),(45,'CFGM','IP10','Perruqueria i cosmètica capil·lar',NULL,'Perruqueria i cosmètica capil·lar',41),(46,'CFGM','IP20','Estètica i bellesa',NULL,'Estètica i bellesa',41),(47,'CFGM','IS10','Vídeo, discjòquei i so',NULL,'Vídeo, discjòquei i so',42),(48,'CFGM','MP10','Cultius Aqüícoles',NULL,'Cultius Aqüícoles',43),(49,'CFGM','MP20','Operacions subaquàtiques i hiperbàriques',NULL,'Operacions subaquàtiques i hiperbàriques',43),(50,'CFGM','MP30','Navegació i pesca de litoral',NULL,'Navegació i pesca de litoral',43),(51,'CFGM','MP40','Manteniment i control de la maquinària de vaixells i embarcacions',NULL,'Manteniment i control de la maquinària de vaixells i embarcacions',43),(52,'CFGM','QU10','Planta química',NULL,'Planta química',44),(53,'CFGM','QU11','Planta química (productes farmacèutics i cosmètics)',NULL,'Planta química (productes farmacèutics i cosmètics)',44),(54,'CFGM','QU20','Operacions de laboratori',NULL,'Operacions de laboratori',44),(55,'CFGM','SA20','Farmàcia i parafarmàcia',NULL,'Farmàcia i parafarmàcia',45),(56,'CFGM','SA30','Emergències sanitàries',NULL,'Emergències sanitàries',45),(57,'CFGM','SC10','Atenció a persones en situació de dependència',NULL,'Atenció a persones en situació de dependència',46),(58,'CFGM','SM20','Emergències i protecció civil',NULL,'Emergències i protecció civil',47),(59,'CFGM','TM10','Electromecànica de vehicles automòbils',NULL,'Electromecànica de vehicles automòbils',48),(60,'CFGM','TM11','Electromecànica de vehicles automòbils (Avions amb motor de pistó)',NULL,'Electromecànica de vehicles automòbils (Avions amb motor de pistó)',48),(61,'CFGM','TM12','Electromecànica de vehicles automòbils (Electromecánica de vehicles industrials)',NULL,'Electromecànica de vehicles automòbils (Electromecánica de vehicles industrials)',48),(62,'CFGM','TM20','Carrosseria',NULL,'Carrosseria',48),(63,'CFGM','TM30','Electromecànica de maquinària',NULL,'Electromecànica de maquinària',48),(64,'CFGM','TM40','Manteniment de material rodant ferroviari',NULL,'Manteniment de material rodant ferroviari',48),(65,'CFGM','TM50','Conducció de vehicles de transport per carretera',NULL,'Conducció de vehicles de transport per carretera',48),(66,'CFGM','TM60','Manteniment d\'embarcacions d\'esbarjo',NULL,'Manteniment d\'embarcacions d\'esbarjo',48),(67,'CFGM','TX10','Fabricació i ennobliment de productes tèxtils',NULL,'Fabricació i ennobliment de productes tèxtils',49),(68,'CFGM','TX11','Fabricació i ennobliment de productes tèxtils (gèneres de punt)',NULL,'Fabricació i ennobliment de productes tèxtils (gèneres de punt)',49),(69,'CFGM','TX50','Confecció i moda',NULL,'Confecció i moda',49),(70,'CFGM','TX51','Confecció i moda (innovació i producció de la moda)',NULL,'Confecció i moda (innovació i producció de la moda)',49),(71,'CFGS','AEA0','Ensenyament i animació socioesportiva',NULL,'Ensenyament i animació socioesportiva',50),(72,'CFGS','AEB0','Condicionament físic',NULL,'Condicionament físic',50),(73,'CFGS','AFA0','Disseny i edició de publicacions impreses i multimèdia ',NULL,'Disseny i edició de publicacions impreses i multimèdia ',27),(74,'CFGS','AFB0','Disseny i gestió de la producció gràfica',NULL,'Disseny i gestió de la producció gràfica',27),(75,'CFGS','AGA0','Assistència a la direcció ',NULL,'Assistència a la direcció ',28),(76,'CFGS','AGB0','Administració i finances',NULL,'Administració i finances',28),(77,'CFGS','AGB1','Administració i finances (gestor d\'assegurances)',NULL,'Administració i finances (gestor d\'assegurances)',28),(78,'CFGS','ARA0','Gestió forestal i del medi natural',NULL,'Gestió forestal i del medi natural',29),(79,'CFGS','ARB0','Paisatgisme i medi rural',NULL,'Paisatgisme i medi rural',29),(80,'CFGS','ARB1','Paisatgisme i medi rural (gestió agropecuària)',NULL,'Paisatgisme i medi rural (gestió agropecuària)',29),(81,'CFGS','ARC0','Ramaderia i assistència en sanitat animal',NULL,'Ramaderia i assistència en sanitat animal',29),(82,'CFGS','CMA0','Gestió de vendes i espais comercials ',NULL,'Gestió de vendes i espais comercials ',30),(83,'CFGS','CMB0','Comerç internacional',NULL,'Comerç internacional',30),(84,'CFGS','CMC0','Transport i logística',NULL,'Transport i logística',30),(85,'CFGS','CMD0','Màrqueting i publicitat ',NULL,'Màrqueting i publicitat ',30),(86,'CFGS','CMD1','Màrqueting i publicitat (enològic)',NULL,'Màrqueting i publicitat (enològic)',30),(87,'CFGS','CMD2','Màrqueting i publicitat (promoció turística)',NULL,'Màrqueting i publicitat (promoció turística)',30),(88,'CFGS','EAA0','Eficiència energètica i energia solar tèrmica',NULL,'Eficiència energètica i energia solar tèrmica',31),(89,'CFGS','EAC0','Energies renovables',NULL,'Energies renovables',31),(90,'CFGS','EAD0','Gestió de l\'aigua',NULL,'Gestió de l\'aigua',31),(91,'CFGS','EEA0','Sistemes electrotècnics i automatitzats',NULL,'Sistemes electrotècnics i automatitzats',32),(92,'CFGS','EEA1','Sistemes electrotècnics i automatitzats (instal·lacions elèctriques i comunicacions del vaixell)',NULL,'Sistemes electrotècnics i automatitzats (instal·lacions elèctriques i comunicacions del vaixell)',32),(93,'CFGS','EEB0','Automatització i robòtica industrial',NULL,'Automatització i robòtica industrial',32),(94,'CFGS','EEC0','Manteniment electrònic',NULL,'Manteniment electrònic',32),(95,'CFGS','EED0','Sistemes de telecomunicacions i informàtics',NULL,'Sistemes de telecomunicacions i informàtics',32),(96,'CFGS','EEE0','Electromedicina clínica',NULL,'Electromedicina clínica',32),(97,'CFGS','EOA0','Projectes d\'obra civil',NULL,'Projectes d\'obra civil',33),(98,'CFGS','EOA1','Projectes d\'obra civil (Sobrestants)',NULL,'Projectes d\'obra civil (Sobrestants)',33),(99,'CFGS','EOA2','Projectes d\'obra civil (ús d\'aplicacions SIG)',NULL,'Projectes d\'obra civil (ús d\'aplicacions SIG)',33),(100,'CFGS','EOB0','Projectes d\'edificació',NULL,'Projectes d\'edificació',33),(101,'CFGS','EOB1','Projectes d\'edificació (rehabilitació i restauració)',NULL,'Projectes d\'edificació (rehabilitació i restauració)',33),(102,'CFGS','EOC0','Organització i control d\'obres de construcció',NULL,'Organització i control d\'obres de construcció',33),(103,'CFGS','FMA0','Construccions metàl·liques',NULL,'Construccions metàl·liques',34),(104,'CFGS','FMB0','Programació de la producció en fabricació mecànica',NULL,'Programació de la producció en fabricació mecànica',34),(105,'CFGS','FMB1','Programació de la producció en fabricació mecànica (motlles i matrius)',NULL,'Programació de la producció en fabricació mecànica (motlles i matrius)',34),(106,'CFGS','FMC0','Disseny en fabricació mecànica',NULL,'Disseny en fabricació mecànica',34),(107,'CFGS','FMC1','Disseny en fabricació mecànica (desenvolupament virtual de l\'automòbil)',NULL,'Disseny en fabricació mecànica (desenvolupament virtual de l\'automòbil)',34),(108,'CFGS','FMD0','Programació de la producció en emmotllament de metalls i polímers',NULL,'Programació de la producció en emmotllament de metalls i polímers',34),(109,'CFGS','FSA0','Disseny i moblament',NULL,'Disseny i moblament',35),(110,'CFGS','FSA1','Disseny i moblament (construccions efímeres i decorats)',NULL,'Disseny i moblament (construccions efímeres i decorats)',35),(111,'CFGS','HTA0','Agències de viatges i gestió d\'esdeveniments',NULL,'Agències de viatges i gestió d\'esdeveniments',36),(112,'CFGS','HTB0','Gestió d\'allotjaments turístics',NULL,'Gestió d\'allotjaments turístics',36),(113,'CFGS','HTD0','Direcció de cuina',NULL,'Direcció de cuina',36),(114,'CFGS','HTE0','Direcció de serveis en restauració',NULL,'Direcció de serveis en restauració',36),(115,'CFGS','HTF0','Guia, informació i assistència turístiques',NULL,'Guia, informació i assistència turístiques',36),(116,'CFGS','HTF1','Guia, informació i assistència turístiques (animació turística)',NULL,'Guia, informació i assistència turístiques (animació turística)',36),(117,'CFGS','IAA0','Vitivinicultura',NULL,'Vitivinicultura',37),(118,'CFGS','IAB0','Processos i qualitat en la indústria alimentària',NULL,'Processos i qualitat en la indústria alimentària',37),(119,'CFGS','ICA0','Administració de sistemes informàtics en xarxa',NULL,'Administració de sistemes informàtics en xarxa',38),(120,'CFGS','ICA1','Administració de sistemes informàtics en xarxa (ciberseguretat)',NULL,'Administració de sistemes informàtics en xarxa (ciberseguretat)',38),(121,'CFGS','ICB0','Desenvolupament d\'aplicacions multiplataforma',NULL,'Desenvolupament d\'aplicacions multiplataforma',38),(122,'CFGS','ICB1','Desenvolupament d\'aplicacions multiplataforma (informàtica aplicada a la logística)',NULL,'Desenvolupament d\'aplicacions multiplataforma (informàtica aplicada a la logística)',38),(123,'CFGS','ICB2','Desenvolupament d\'aplicacions multiplataforma (videojocs i oci digital)',NULL,'Desenvolupament d\'aplicacions multiplataforma (videojocs i oci digital)',38),(124,'CFGS','ICC0','Desenvolupament d\'aplicacions web',NULL,'Desenvolupament d\'aplicacions web',38),(125,'CFGS','ICC1','Desenvolupament d\'aplicacions web (bioinformàtica)',NULL,'Desenvolupament d\'aplicacions web (bioinformàtica)',38),(126,'CFGS','IMA0','Manteniment d\'instal·lacions tèrmiques i de fluids',NULL,'Manteniment d\'instal·lacions tèrmiques i de fluids',40),(127,'CFGS','IMB0','Desenvolupament de projectes d\'instal·lacions tèrmiques i de fluids',NULL,'Desenvolupament de projectes d\'instal·lacions tèrmiques i de fluids',40),(128,'CFGS','IMC0','Mecatrònica industrial',NULL,'Mecatrònica industrial',40),(129,'CFGS','IMC1','Mecatrònica industrial (fabricació de productes ceràmics)',NULL,'Mecatrònica industrial (fabricació de productes ceràmics)',40),(130,'CFGS','IPA0','Assessoria d\'imatge personal i corporativa',NULL,'Assessoria d\'imatge personal i corporativa',41),(131,'CFGS','IPB0','Estètica integral i benestar',NULL,'Estètica integral i benestar',41),(132,'CFGS','IPC0','Estilisme i direcció de perruqueria',NULL,'Estilisme i direcció de perruqueria',41),(133,'CFGS','IPD0','Caracterització i maquillatge professional',NULL,'Caracterització i maquillatge professional',41),(134,'CFGS','ISA0','Realització de projectes d\'audiovisuals i espectacles',NULL,'Realització de projectes d\'audiovisuals i espectacles',42),(135,'CFGS','ISB0','Il·luminació, captació i tractament d\'imatge',NULL,'Il·luminació, captació i tractament d\'imatge',42),(136,'CFGS','ISC0','So per a audiovisuals i espectacles',NULL,'So per a audiovisuals i espectacles',42),(137,'CFGS','ISD0','Producció d\'audiovisuals i espectacles',NULL,'Producció d\'audiovisuals i espectacles',42),(138,'CFGS','ISE0','Animacions 3D, jocs i entorns interactius',NULL,'Animacions 3D, jocs i entorns interactius',42),(139,'CFGS','ISE1','Animacions 3D, jocs i entorns interactius (móns virtuals, realitat augmentada i gamificació)',NULL,'Animacions 3D, jocs i entorns interactius (móns virtuals, realitat augmentada i gamificació)',42),(140,'CFGS','MPA0','Transport marítim i pesca d\'altura',NULL,'Transport marítim i pesca d\'altura',43),(141,'CFGS','MPB0','Aqüicultura',NULL,'Aqüicultura',43),(142,'CFGS','MPC0','Organització del manteniment de la maquinària de vaixells i embarcacions',NULL,'Organització del manteniment de la maquinària de vaixells i embarcacions',43),(143,'CFGS','QUA0','Química industrial',NULL,'Química industrial',44),(144,'CFGS','QUB0','Fabricació de productes farmacèutics, biotecnològics i afins',NULL,'Fabricació de productes farmacèutics, biotecnològics i afins',44),(145,'CFGS','QUD0','Laboratori d\'anàlisi i control de qualitat',NULL,'Laboratori d\'anàlisi i control de qualitat',44),(146,'CFGS','SAA0','Pròtesis dentals',NULL,'Pròtesis dentals',45),(147,'CFGS','SAB0','Ortopròtesi i productes de suport',NULL,'Ortopròtesi i productes de suport',45),(148,'CFGS','SAC0','Anatomia patològica i citodiagnòstic',NULL,'Anatomia patològica i citodiagnòstic',45),(149,'CFGS','SAD0','Documentació i administració sanitària',NULL,'Documentació i administració sanitària',45),(150,'CFGS','SAD1','Documentació i administració sanitàries (gestió de dades)',NULL,'Documentació i administració sanitàries (gestió de dades)',45),(151,'CFGS','SAE0','Laboratori clínic i biomèdic',NULL,'Laboratori clínic i biomèdic',45),(152,'CFGS','SAE1','Laboratori clínic i biomèdic (recerca)',NULL,'Laboratori clínic i biomèdic (recerca)',45),(153,'CFGS','SAF0','Radioteràpia i dosimetria',NULL,'Radioteràpia i dosimetria',45),(154,'CFGS','SAG0','Audiologia protètica',NULL,'Audiologia protètica',45),(155,'CFGS','SAH0','Higiene bucodental',NULL,'Higiene bucodental',45),(156,'CFGS','SAI0','Imatge per al diagnòstic i medicina nuclear',NULL,'Imatge per al diagnòstic i medicina nuclear',45),(157,'CFGS','SCA0','Animació sociocultural i turística ',NULL,'Animació sociocultural i turística ',46),(158,'CFGS','SCB0','Educació Infantil',NULL,'Educació Infantil',46),(159,'CFGS','SCC0','Integració social',NULL,'Integració social',46),(160,'CFGS','SCD0','Promoció d\'igualtat de gènere',NULL,'Promoció d\'igualtat de gènere',46),(161,'CFGS','SCE0','Mediació comunicativa',NULL,'Mediació comunicativa',46),(162,'CFGS','SMA0','Educació i control ambiental',NULL,'Educació i control ambiental',47),(163,'CFGS','SMB0','Coordinació d\'emergències i protecció civil',NULL,'Coordinació d\'emergències i protecció civil',47),(164,'CFGS','TMA0','Automoció',NULL,'Automoció',48),(165,'CFGS','TMA1','Automoció (Vehicles industrials)',NULL,'Automoció (Vehicles industrials)',48),(166,'CFGS','TXA0','Disseny tècnic en tèxtil i pell',NULL,'Disseny tècnic en tèxtil i pell',49),(167,'CFGS','TXB0','Vestuari a mida i d\'espectacles',NULL,'Vestuari a mida i d\'espectacles',49),(168,'CFGS','TXE0','Patronatge i moda',NULL,'Patronatge i moda',49);
/*!40000 ALTER TABLE `core_cicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_modulprofessional`
--

DROP TABLE IF EXISTS `core_modulprofessional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_modulprofessional` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `descripcio` longtext NOT NULL,
  `cicle_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_modulprofessional_cicle_id_ebc6c6ca_fk_core_cicle_id` (`cicle_id`),
  CONSTRAINT `core_modulprofessional_cicle_id_ebc6c6ca_fk_core_cicle_id` FOREIGN KEY (`cicle_id`) REFERENCES `core_cicle` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_modulprofessional`
--

LOCK TABLES `core_modulprofessional` WRITE;
/*!40000 ALTER TABLE `core_modulprofessional` DISABLE KEYS */;
INSERT INTO `core_modulprofessional` VALUES (141,1,'MP01 Implantació de sistemes operatius.','',119),(142,2,'MP02 Gestió de bases de dades','',119),(143,3,'MP03 Programació bàsica','',119),(144,4,'MP04 Llenguatges de marques i sistemes de gestió d\'informació.','',119),(145,5,'MP05 Fonaments de maquinari.','',119),(146,6,'MP06 Administració de sistemes operatius.','',119),(147,7,'MP07 Planificació i administració de xarxes.','',119),(148,8,'MP08 Serveis de xarxa i Internet.','',119),(149,9,'MP09 Implantació d\'aplicacions web.','',119),(150,10,'MP10 Administració de sistemes gestors de bases de dades.','',119),(151,11,'MP11 Seguretat i alta disponibilitat.','',119),(152,12,'MP12 FOL','',119),(153,13,'MP13 EIE','',119),(154,14,'MP14 Projecte ','',119),(155,1,'MP01 Sistemes informàtics','',121),(156,2,'MP02 Bases de dades','',121),(157,3,'MP03 Programació bàsica','',121),(158,4,'MP04 Llenguatges de marques i sistemes de gestió d\'informació.','',121),(159,5,'MP05 Entorns de desenvolupament.','',121),(160,6,'MP06 Accés a dades','',121),(161,7,'MP07. Desenvolupament d’interfícies.','',121),(162,8,'MP08 Programació multimèdia i dispositius mòbils.','',121),(163,9,'MP09 Programació de serveis i processos.','',121),(164,10,'MP10 Sistemes de gestió empresarial.','',121),(165,11,'MP11 FOL','',121),(166,12,'MP12 EIE','',121),(167,13,'MP13 Projecte ','',121),(168,1,'MP01 Sistemes informàtics','',124),(169,2,'MP02 Bases de dades','',124),(170,3,'MP03 Programació','',124),(171,4,'MP04 Llenguatge de marques i sistemes de gestió d’informació','',124),(172,5,'MP05 Entorns de desenvolupament','',124),(173,6,'MP06 Desenvolupament web en entorn client','',124),(174,7,'MP07 Desenvolupament web en entorn servidor','',124),(175,8,'MP08 Desplegament d\'aplicacions web','',124),(176,9,'M09 Disseny d\'interfícies web','',124),(177,10,'MP10 Formació i Orientació Laboral','',124),(178,11,'MP11 Empresa i iniciativa emprenedora','',124),(179,12,'MP12 Projecte ','',124),(180,1,'MP01.  Muntatge i manteniment d’equips','',37),(181,2,'MP02. Sistemes Operatius Monolloc','',37),(182,3,'MP03. Aplicacions ofimàtiques','',37),(183,4,'MP04. Sistemes operatius en xarxa','',37),(184,5,'MP05. Xarxes locals','',37),(185,6,'MP06.  Seguretat informàtica','',37),(186,7,'MP07.  Serveis de xarxa','',37),(187,8,'MP08.  Aplicacions Web','',37),(188,9,'MP09. FOL','',37),(189,10,'MP10. EiE','',37),(190,11,'MP11. Anglès ','',37),(191,12,'MP12. Síntesi','',37);
/*!40000 ALTER TABLE `core_modulprofessional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_unitatformativa`
--

DROP TABLE IF EXISTS `core_unitatformativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_unitatformativa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `descripcio` longtext NOT NULL,
  `mp_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_unitatformativa_mp_id_5e6cff8f_fk_core_modulprofessional_id` (`mp_id`),
  CONSTRAINT `core_unitatformativa_mp_id_5e6cff8f_fk_core_modulprofessional_id` FOREIGN KEY (`mp_id`) REFERENCES `core_modulprofessional` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_unitatformativa`
--

LOCK TABLES `core_unitatformativa` WRITE;
/*!40000 ALTER TABLE `core_unitatformativa` DISABLE KEYS */;
INSERT INTO `core_unitatformativa` VALUES (1,1,'UF1:  Instal·lació, configuració i explotació del sistema informàtic','',141),(2,2,'UF2:  Gestió de la informació i de recursos en una xarxa','',141),(3,3,'UF3:  Implantació de programari específic','',141),(4,4,'UF4:  Seguretat, rendiment i recursos','',141),(5,1,'UF1: Introducció a les bases de dades','',142),(6,2,'UF2: Llenguatges SQL: DML i DDL','',142),(7,3,'UF3: Assegurament de la informació','',142),(8,1,'UF1: Programació estructurada.','',143),(9,2,'UF2: Disseny modular','',143),(10,3,'UF3: Fonaments de gestió de fitxers','',143),(11,1,'UF1: Programació amb XML','',144),(12,2,'UF2: Àmbits d’aplicació de l’XML','',144),(13,3,'UF3: Sistemes de gestió d’informació empresarial','',144),(14,1,'UF1: Arquitectura de sistemes','',145),(15,2,'UF2: Instal·lació, configuració i recuperació de programari','',145),(16,3,'UF3: Implantació i manteniment de CPD','',145),(17,1,'UF1: Administració avançada de sistemes operatius','',146),(18,2,'UF2: Automatització de tasques i llenguatges de guions','',146),(19,1,'UF1: Introducció a les xarxes.','',147),(20,2,'UF2: Administració de dispositius de xarxa','',147),(21,3,'UF3: Administració avançada de xarxes.','',147),(22,1,'UF1: Serveis de noms i configuració automàtica','',148),(23,2,'UF2: Serveis Web i de transferència de fitxers','',148),(24,3,'UF3: Correu electrònic i missatgeria','',148),(25,4,'UF4: Serveis d\'àudio I vídeo','',148),(26,1,'UF1: Llenguatges de guions de servidor','',149),(27,2,'UF2: Implantació de gestors de continguts','',149),(28,1,'UF1: Llenguatges SQL: DCL i extensió procedimental ','',150),(29,2,'UF2: Instal·lació i ajustament de SGBD corporatiu','',150),(30,1,'UF1: Seguretat física, lògica i legislació','',151),(31,2,'UF2: Seguretat activa i accés remot','',151),(32,3,'UF3: Tallafocs i servidors intermediaris','',151),(33,4,'UF4: Alta disponibilitat','',151),(34,1,'UF1: Incorporació al treball','',152),(35,2,'UF2: Prevenció de riscos laborals','',152),(36,1,'UF1: Empresa i iniciativa emprenedora','',153),(37,1,'UF1: Projecte','',154),(38,1,'UF1:  Instal·lació, configuració i explotació del sistema informàtic','',155),(39,2,'UF2:  Gestió de la informació i de recursos en una xarxa','',155),(40,3,'UF3:  Implantació de programari específic','',155),(41,1,'UF1: Introducció a les bases de dades','',156),(42,2,'UF2: Llenguatges SQL: DML i DDL','',156),(43,3,'UF3: Llenguatge SQL: DCL i extensió procedimental','',156),(44,4,'UF4: Bases de dades objecte-relacionals','',156),(45,1,'UF1: Programació estructurada.','',157),(46,2,'UF2: Disseny modular','',157),(47,3,'UF3: Fonaments de gestió de fitxers','',157),(48,4,'UF4: Programació orientada a objectes. Fonaments','',157),(49,5,'UF5: POO. Llibreries de classes fonamentals','',157),(50,6,'UF6: POO. Introducció a la persistència en BD','',157),(51,1,'UF1: Programació amb XML','',158),(52,2,'UF2: Àmbits d’aplicació de l’XML','',158),(53,3,'UF3: Sistemes de gestió d’informació empresarial','',158),(54,1,'UF1: Desenvolupament de programari','',159),(55,2,'UF2: Optimització del programari','',159),(56,3,'UF3: Introducció al disseny orientat a objectes','',159),(57,1,'UF1: Persistència en fitxers','',160),(58,2,'UF2: Persistència en BDR-BDOR-BDOO','',160),(59,3,'UF3: Persistència en BD natives XML','',160),(60,4,'UF4: Components d’accés a dades','',160),(61,1,'UF1: Disseny i implementació d’interfícies.','',161),(62,2,'UF2: Preparació i distribució d’aplicacions.','',161),(63,1,'UF1: Desenvolupament d’aplicacions per dispositius mòbils','',162),(64,2,'UF2: Programació multimèdia','',162),(65,3,'UF3: Desenvolupament de jocs per dispositius mòbils','',162),(66,1,'UF1: Seguretat i criptografia ','',163),(67,2,'UF2: Processos i fils','',163),(68,3,'UF3: Sòcols i serveis','',163),(69,1,'UF1: Sistemes ERP-CRM. Implantació.','',164),(70,2,'UF2: Sistemes ERP-CRM. Explotació i adequació.','',164),(71,1,'UF1: Incorporació al treball','',165),(72,2,'UF2: Prevenció de riscos laborals','',165),(73,1,'UF1: Empresa i iniciativa emprenedora','',166),(74,1,'UF1: Projecte','',167),(75,1,'UF1:  Instal·lació, configuració i explotació del sistema informàtic','',168),(76,2,'UF2:  Gestió de la informació i de recursos en una xarxa','',168),(77,3,'UF3:  Implantació de programari específic','',168),(78,1,'UF1. Introducció a les bases de dades','',169),(79,2,'UF2. Llenguatges SQL: DML i DDL','',169),(80,3,'UF3. Llenguatges SQL: DCL i extensió procedimental','',169),(81,4,'UF4. Bases de dades objecte-relacionals','',169),(82,1,'UF1. Programació estructurada','',170),(83,2,'UF2. Disseny modular','',170),(84,3,'UF3. Fonaments de gestió de fitxers','',170),(85,4,'UF4. Programació orientada a objectes. Fonaments','',170),(86,5,'UF5. POO. Llibreries de classes fonamentals','',170),(87,6,'UF6. POO. Introducció a la persistència en BD','',170),(88,1,'UF1. Programació amb XML','',171),(89,2,'UF2. Àmbits d’aplicació de l’XML ','',171),(90,3,'UF3. Sistemes de gestió empresarial','',171),(91,1,'UF1. Desenvolupament de programari','',172),(92,2,'UF2. Optimització de programari:','',172),(93,3,'UF3. Introducció al disseny orientat a objectes','',172),(94,1,'UF1. Sintaxi del llenguatge. Objectes predefinits del llenguatge','',173),(95,2,'UF2. Estructures definides pel programador. Objectes. ','',173),(96,3,'UF3. Esdeveniments. Manegament de formularis. Model d\'objectes del document. ','',173),(97,4,'UF4. Comunicació asíncrona client-servidor.','',173),(98,1,'UF1. Desenvolupament web en entorn servidor. ','',174),(99,2,'UF2. Generació dinàmica de pagines web. ','',174),(100,3,'UF3. Tècniques d’accés a dades. ','',174),(101,4,'UF4. Serveis web. Pàgines dinàmiques interactives. Webs Híbrids. ','',174),(102,1,'UF1. Servidors web i de transferència de fitxers. ','',175),(103,2,'UF2. Servidors d’aplicacions web. ','',175),(104,3,'UF3. Desplegament d’aplicacions web. ','',175),(105,4,'UF4. Control de versions i documentació. ','',175),(106,1,'UF1. Disseny de la interfície. Estils. ','',176),(107,2,'UF2. Elements multimèdia: creació i integració. ','',176),(108,3,'UF3. Accessibilitat i usabilitat. ','',176),(109,1,'UF1: Incorporació al treball. ','',177),(110,2,'UF2: Prevenció de riscos laborals.','',177),(111,1,'UF1: Empresa iniciativa emprenedora. ','',178),(112,1,'UF1: Projecte desenvolupament','',179),(113,1,'UF1 Electricitat a l’ordinador','',180),(114,2,'UF2 Components d’un equip microinformàtic','',180),(115,3,'UF3 Muntatge d’un equip microinformàtic','',180),(116,4,'UF4 Noves tendències de muntatge','',180),(117,5,'UF5 Manteniment d’equips microinformàtics','',180),(118,6,'UF6 Instal·lació de programari','',180),(119,1,'UF1 Introducció als sistemes operatius','',181),(120,2,'UF2 Sistemes operatius propietaris','',181),(121,3,'UF3 Sistemes operatius lliures.','',181),(122,1,'UF1 Aplicacions ofimàtiques i atenció a l’usuari','',182),(123,2,'UF2 El correu i l’agenda electrònica ','',182),(124,3,'UF3 Processadors de text  ','',182),(125,4,'UF4 Fulls de càlcul  ','',182),(126,5,'UF5 Bases de dades  ','',182),(127,6,'UF6 Imatge i vídeo – Presentacions   ','',182),(128,1,'UF1 Sistemes operatius propietaris en xarxa','',183),(129,2,'UF2 Sistemes operatius lliures en xarxa','',183),(130,3,'UF3 Compartició de recursos i seguretat','',183),(131,4,'UF4 Integració de sistemes operatius ','',183),(132,1,'UF1 Introducció a les xarxes locals','',184),(133,2,'UF2 Configuració de commutadors  i encaminadors','',184),(134,3,'UF3 Resolució d’incidències en xarxes locals','',184),(135,1,'UF1 Seguretat passiva','',185),(136,2,'UF2 Còpies de seguretat','',185),(137,3,'UF3 Legislació de seguretat i protecció de dades','',185),(138,4,'UF4 Seguretat activa','',185),(139,5,'UF5 Tallafocs i monitoratge de xarxes','',185),(140,1,'UF1 Configuració de la xarxa (DNS i DHCP)','',186),(141,2,'UF2 Correu electrònic i transmissió d’arxius','',186),(142,3,'UF3 Servidor web i servidor intermediari o proxy','',186),(143,4,'UF4 Accés a sistemes remots ','',186),(144,1,'UF1 Ofimàtica i eines web','',187),(145,2,'UF2 Gestors d\'arxius web','',187),(146,3,'UF3 Gestors de continguts','',187),(147,4,'UF4 Portals web d’aprenentatge','',187),(148,5,'UF5 Fonaments d’HTML i fulls d’estils','',187),(149,1,'UF1. Incorporació al treball','',188),(150,2,'UF2. Prevenció de riscos laborals','',188),(151,1,'UF1. Empresa i iniciativa emprenedora','',189),(152,1,'UF1. Anglès','',190),(153,1,'UF1. Síntesi','',191);
/*!40000 ALTER TABLE `core_unitatformativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user`
--

DROP TABLE IF EXISTS `core_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `imatge` varchar(100) NOT NULL,
  `arxiu` varchar(100) NOT NULL,
  `descripcio` longtext,
  `localitzacio` point DEFAULT NULL,
  `centre_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `core_user_centre_id_e1f86fd0_fk_core_centre_id` (`centre_id`),
  CONSTRAINT `core_user_centre_id_e1f86fd0_fk_core_centre_id` FOREIGN KEY (`centre_id`) REFERENCES `core_centre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user`
--

LOCK TABLES `core_user` WRITE;
/*!40000 ALTER TABLE `core_user` DISABLE KEYS */;
INSERT INTO `core_user` VALUES (1,'pbkdf2_sha256$150000$u63m1RL2e69D$/Wl8K8OLNNB/tl/G7szxlhF1G5Jdv3NInnF13Rd66m4=','2019-09-05 10:26:43.231573',1,'admin','admin','ADMIN','emieza@xtec.cat',1,1,'2019-08-21 18:00:35.639408','','','',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL),(2,'pbkdf2_sha256$150000$J6PBxL6evzpJ$jQgDlYcW3VP5ayLPtk1tPMduXBl5NEfhDwZ5TPUMbns=','2019-09-05 10:00:47.590342',0,'lzabala','LEANDRO HERNAN','ZABALA IGLESIAS','lzabala@xtec.cat',1,1,'2019-08-21 18:38:17.107334','','','',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',30),(3,'pbkdf2_sha256$150000$4vaJOa9boCsA$rVYt7XHjZfBRyMmOLHKs24SQkXNDw65tOhd7Op1wV2k=','2019-09-05 10:27:35.332547',0,'emieza','Enric','Mieza','emieza@iesesteveterradas.cat',1,1,'2019-08-21 18:48:02.429894','imatgesPerfil/sonic.gif','','',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',30),(4,'pbkdf2_sha256$150000$tHUtBn1BQLLl$yqWDziP+RQHtJ5wfwrV34hMhLoAT2tsC8aHCUj4Evcg=','2019-08-22 10:01:47.410985',0,'testUser','Test User Almaixera','Manresa','almaixeracat@gmail.com',1,1,'2019-08-22 10:00:30.228608','','','',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',30),(5,'pbkdf2_sha256$150000$7hHTVwKJtUEc$2kXpTJmP9iAo/MQj3AfH7+xxruipV3R0DOBCZS47hf0=',NULL,0,'iporta','','','iporta3@xtec.cat',1,1,'2019-08-22 17:25:46.829556','','','',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',3),(6,'pbkdf2_sha256$150000$X3oOPDEYI9JT$/WIbhHggXk7+5/+IZNkd/1vN0sqzP4gJ4ark8N7t79I=','2019-09-02 12:28:26.785772',0,'jmengua2','Jordi','Mengual Portero','jmengua2@iesesteveterradas.cat',1,1,'2019-08-25 11:14:44.019501','','','',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',30),(7,'','2019-09-05 10:29:54.311363',0,'leandro.zabala_gmail.com','Leandro Hernán','Zabala Iglesias','leandro.zabala@gmail.com',1,1,'2019-09-05 10:28:15.097838','','',NULL,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',30);
/*!40000 ALTER TABLE `core_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_groups`
--

DROP TABLE IF EXISTS `core_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_user_groups_user_id_group_id_c82fcad1_uniq` (`user_id`,`group_id`),
  KEY `core_user_groups_group_id_fe8c697f_fk_auth_group_id` (`group_id`),
  CONSTRAINT `core_user_groups_group_id_fe8c697f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `core_user_groups_user_id_70b4d9b8_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_groups`
--

LOCK TABLES `core_user_groups` WRITE;
/*!40000 ALTER TABLE `core_user_groups` DISABLE KEYS */;
INSERT INTO `core_user_groups` VALUES (1,2,4),(7,3,1),(2,3,4),(3,4,3),(4,5,1),(5,6,1),(6,6,4),(8,7,3);
/*!40000 ALTER TABLE `core_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_user_permissions`
--

DROP TABLE IF EXISTS `core_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_user_user_permissions_user_id_permission_id_73ea0daa_uniq` (`user_id`,`permission_id`),
  KEY `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` (`permission_id`),
  CONSTRAINT `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `core_user_user_permissions_user_id_085123d3_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_user_permissions`
--

LOCK TABLES `core_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `core_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_core_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-08-21 18:38:17.222463','2','lzabala',1,'[{\"added\": {}}]',11,1),(2,'2019-08-21 18:38:26.975373','2','lzabala',2,'[{\"changed\": {\"fields\": [\"email\"]}}]',11,1),(3,'2019-08-21 18:39:35.316709','2','lzabala',2,'[{\"changed\": {\"fields\": [\"is_staff\", \"groups\", \"centre\"]}}]',11,1),(4,'2019-08-21 18:48:02.544262','3','emieza',1,'[{\"added\": {}}]',11,1),(5,'2019-08-21 18:48:30.987808','3','emieza',2,'[{\"changed\": {\"fields\": [\"email\", \"is_staff\", \"groups\", \"centre\"]}}]',11,1),(6,'2019-08-21 20:01:55.386866','30','Institut Esteve Terradas i Illa',2,'[{\"changed\": {\"fields\": [\"direccio\", \"cicles\"]}}]',13,1),(7,'2019-08-21 20:02:37.398454','1','Puzzle',1,'[{\"added\": {}}]',25,3),(8,'2019-08-21 20:03:56.860994','1','Puzzle',2,'[{\"added\": {\"name\": \"spec\", \"object\": \"doble taulell\"}}, {\"added\": {\"name\": \"spec\", \"object\": \"drag and drop peces taulell esq a dreta\"}}]',25,3),(9,'2019-08-21 23:14:44.118504','104','MP01 Sistemes informàtics',3,'',15,1),(10,'2019-08-21 23:14:44.121246','105','MP02 Bases de dades',3,'',15,1),(11,'2019-08-21 23:14:44.130187','106','MP03 Programació bàsica',3,'',15,1),(12,'2019-08-21 23:14:44.143432','107','MP04 Llenguatges de marques i sistemes de gestió d\'informació.',3,'',15,1),(13,'2019-08-21 23:14:44.153435','108','MP05 Entorns de desenvolupament.',3,'',15,1),(14,'2019-08-21 23:14:44.163534','109','MP06 Accés a dades',3,'',15,1),(15,'2019-08-21 23:14:44.173691','110','MP07. Desenvolupament d’interfícies.',3,'',15,1),(16,'2019-08-21 23:14:44.183718','111','MP08 Programació multimèdia i dispositius mòbils.',3,'',15,1),(17,'2019-08-21 23:14:44.194067','112','MP09 Programació de serveis i processos.',3,'',15,1),(18,'2019-08-21 23:14:44.204042','113','MP10 Sistemes de gestió empresarial.',3,'',15,1),(19,'2019-08-21 23:14:44.214212','114','MP11 FOL',3,'',15,1),(20,'2019-08-21 23:14:44.224266','115','MP12 EIE',3,'',15,1),(21,'2019-08-21 23:14:44.234244','116','MP13 Projecte ',3,'',15,1),(22,'2019-08-21 23:14:44.245205','117','MP01 Sistemes informàtics',3,'',15,1),(23,'2019-08-21 23:14:44.255146','118','MP02 Bases de dades',3,'',15,1),(24,'2019-08-21 23:14:44.265326','119','MP03 Programació',3,'',15,1),(25,'2019-08-21 23:14:44.275257','120','MP04 Llenguatge de marques i sistemes de gestió d’informació',3,'',15,1),(26,'2019-08-21 23:14:44.285185','121','MP05 Entorns de desenvolupament',3,'',15,1),(27,'2019-08-21 23:14:44.295059','122','MP06 Desenvolupament web en entorn client',3,'',15,1),(28,'2019-08-21 23:14:44.305145','123','MP07 Desenvolupament web en entorn servidor',3,'',15,1),(29,'2019-08-21 23:14:44.314989','124','MP08 Desplegament d\'aplicacions web',3,'',15,1),(30,'2019-08-21 23:14:44.324819','125','MP09 Disseny d\'interfícies web',3,'',15,1),(31,'2019-08-21 23:14:44.334733','126','MP10 Formació i Orientació Laboral',3,'',15,1),(32,'2019-08-21 23:14:44.344578','127','MP11 Empresa i iniciativa emprenedora',3,'',15,1),(33,'2019-08-21 23:14:44.354831','128','MP12 Projecte ',3,'',15,1),(34,'2019-08-21 23:14:44.364540','129','MP01.  Muntatge i manteniment d’equips',3,'',15,1),(35,'2019-08-21 23:14:44.374490','130','MP02. Sistemes Operatius Monolloc',3,'',15,1),(36,'2019-08-21 23:14:44.384332','131','MP03. Aplicacions ofimàtiques',3,'',15,1),(37,'2019-08-21 23:14:44.394263','132','MP04. Sistemes operatius en xarxa',3,'',15,1),(38,'2019-08-21 23:14:44.404234','133','MP05. Xarxes locals',3,'',15,1),(39,'2019-08-21 23:14:44.414305','134','MP06.  Seguretat informàtica',3,'',15,1),(40,'2019-08-21 23:14:44.424430','135','MP07.  Serveis de xarxa',3,'',15,1),(41,'2019-08-21 23:14:44.434258','136','MP08.  Aplicacions Web',3,'',15,1),(42,'2019-08-21 23:14:44.444164','137','MP09. FOL',3,'',15,1),(43,'2019-08-21 23:14:44.454190','138','MP10. EiE',3,'',15,1),(44,'2019-08-21 23:14:44.464189','139','MP11. Anglès ',3,'',15,1),(45,'2019-08-21 23:14:44.474306','140','MP12. Síntesi',3,'',15,1),(46,'2019-08-21 23:14:44.484076','90','MP01 Implantació de sistemes operatius.',3,'',15,1),(47,'2019-08-21 23:14:44.494053','91','MP02 Gestió de bases de dades',3,'',15,1),(48,'2019-08-21 23:14:44.504064','92','MP03 Programació bàsica',3,'',15,1),(49,'2019-08-21 23:14:44.514009','93','MP04 Llenguatges de marques i sistemes de gestió d\'informació.',3,'',15,1),(50,'2019-08-21 23:14:44.523792','94','MP05 Fonaments de maquinari.',3,'',15,1),(51,'2019-08-21 23:14:44.533606','95','MP06 Administració de sistemes operatius.',3,'',15,1),(52,'2019-08-21 23:14:44.543660','96','MP07 Planificació i administració de xarxes.',3,'',15,1),(53,'2019-08-21 23:14:44.553933','97','MP08 Serveis de xarxa i Internet.',3,'',15,1),(54,'2019-08-21 23:14:44.563732','98','MP09 Implantació d\'aplicacions web.',3,'',15,1),(55,'2019-08-21 23:14:44.574077','99','MP10 Administració de sistemes gestors de bases de dades.',3,'',15,1),(56,'2019-08-21 23:14:44.583937','100','MP11 Seguretat i alta disponibilitat.',3,'',15,1),(57,'2019-08-21 23:14:44.593830','101','MP12 FOL',3,'',15,1),(58,'2019-08-21 23:14:44.603782','102','MP13 EIE',3,'',15,1),(59,'2019-08-21 23:14:44.613706','103','MP14 Projecte ',3,'',15,1),(60,'2019-08-21 23:17:26.477889','1','Puzzle',2,'[{\"added\": {\"name\": \"spec\", \"object\": \"posta en producci\\u00f3 en Amazon AWS\"}}, {\"changed\": {\"name\": \"spec\", \"object\": \"doble taulell\", \"fields\": [\"mp\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"drag and drop peces taulell esq a dreta\", \"fields\": [\"mp\"]}}]',25,3),(61,'2019-08-21 23:19:19.715386','1','Puzzle',2,'[{\"added\": {\"name\": \"sprint\", \"object\": \"sprint #1\"}}]',25,3),(62,'2019-08-21 23:20:25.077717','1','Puzzle',2,'[{\"changed\": {\"name\": \"sprint\", \"object\": \"sprint #1\", \"fields\": [\"specs\"]}}]',25,3),(63,'2019-08-22 09:18:10.672992','1','Puzzle',2,'[{\"changed\": {\"name\": \"spec\", \"object\": \"drag and drop peces taulell esq a dreta\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"posta en producci\\u00f3 en Amazon AWS\", \"fields\": [\"ordre\"]}}]',25,3),(64,'2019-08-22 09:20:23.353116','1','Equip 1',1,'[{\"added\": {}}]',24,3),(65,'2019-08-22 09:22:19.546234','1','Equip 1',3,'',24,3),(66,'2019-08-22 09:22:19.548605','1','Equip 1',3,'',24,3),(67,'2019-08-22 09:22:35.150651','2','Equip 11',1,'[{\"added\": {}}]',24,3),(68,'2019-08-22 09:44:48.961086','3','Equip 12',1,'[{\"added\": {}}]',24,3),(69,'2019-08-22 10:00:30.343054','4','testUser',1,'[{\"added\": {}}]',11,1),(70,'2019-08-22 10:01:09.635830','4','testUser',2,'[{\"changed\": {\"fields\": [\"first_name\", \"is_staff\", \"groups\", \"centre\"]}}]',11,1),(71,'2019-08-22 10:01:40.060420','4','testUser',2,'[{\"changed\": {\"fields\": [\"email\"]}}]',11,1),(72,'2019-08-22 10:05:31.277033','4','Equipo A',1,'[{\"added\": {}}]',24,4),(73,'2019-08-22 17:25:46.944436','5','iporta',1,'[{\"added\": {}}]',11,1),(74,'2019-08-22 17:26:30.312581','5','iporta',2,'[{\"changed\": {\"fields\": [\"is_staff\", \"groups\"]}}]',11,1),(75,'2019-08-22 17:28:46.523637','330','Institut Nou de Vilafranca del Penedès',2,'[{\"changed\": {\"fields\": [\"direccio\", \"admins\"]}}]',13,1),(76,'2019-08-25 11:14:44.155360','6','jmengua2',1,'[{\"added\": {}}]',11,1),(77,'2019-08-25 11:15:11.013824','6','jmengua2',2,'[{\"changed\": {\"fields\": [\"email\", \"is_staff\", \"groups\", \"centre\"]}}]',11,1),(78,'2019-08-25 11:15:37.368326','30','Institut Esteve Terradas i Illa',2,'[{\"changed\": {\"fields\": [\"admins\"]}}]',13,1),(79,'2019-08-25 11:18:42.115768','1','admin',2,'[{\"changed\": {\"fields\": [\"first_name\"]}}]',11,1),(80,'2019-09-03 11:16:28.814917','5','iporta',2,'[{\"changed\": {\"fields\": [\"email\", \"centre\"]}}]',11,1),(81,'2019-09-04 12:07:55.631832','2','Terminal Fallout',1,'[{\"added\": {}}]',25,1),(82,'2019-09-05 08:58:04.604534','2','Terminal Fallout',2,'[{\"added\": {\"name\": \"spec\", \"object\": \"diccionari de paraules (arxiu)\"}}, {\"added\": {\"name\": \"spec\", \"object\": \"diccionari de contrasenyes\"}}]',25,3),(83,'2019-09-05 09:08:07.685101','2','Terminal Fallout',2,'[{\"changed\": {\"name\": \"spec\", \"object\": \"crear string de volcado de memoria\", \"fields\": [\"nom\"]}}]',25,3),(84,'2019-09-05 09:20:31.141078','2','Terminal Fallout',2,'[{\"added\": {\"name\": \"sprint\", \"object\": \"sprint #1 fallout\"}}, {\"added\": {\"name\": \"spec\", \"object\": \"formateo en pantalla (spans) del volcado de memoria\"}}, {\"added\": {\"name\": \"spec\", \"object\": \"simular fondo de pantalla del terminal de fallout\"}}]',25,3),(85,'2019-09-05 09:22:19.467110','2','Terminal Fallout',2,'[{\"added\": {\"name\": \"spec\", \"object\": \"marcador de nombre d\'intents (4)\"}}, {\"added\": {\"name\": \"spec\", \"object\": \"al fer hover sobre una paraula s\'ha de marcar amb v\\u00eddeo invers\"}}, {\"changed\": {\"name\": \"spec\", \"object\": \"simular fons de pantalla del terminal de fallout\", \"fields\": [\"nom\"]}}]',25,3),(86,'2019-09-05 09:24:12.600988','2','Terminal Fallout',2,'[{\"added\": {\"name\": \"spec\", \"object\": \"el servidor tria (i envia) una paraula com a contrasenya v\\u00e0lida\"}}, {\"added\": {\"name\": \"spec\", \"object\": \"al fer click sobre paraula s\'ha de comprovar si coincideix amb la contrasenya\"}}]',25,3),(87,'2019-09-05 09:25:56.747014','2','Terminal Fallout',2,'[{\"added\": {\"name\": \"spec\", \"object\": \"si es clica la contrasenya, final de joc\"}}, {\"added\": {\"name\": \"spec\", \"object\": \"si es clica una paraula que no \\u00e9s la contrasenya, cal especificar el nombre de car\\u00e0cters correctes que coincideixen en la seva posici\\u00f3 amb la contrasenya\"}}]',25,3),(88,'2019-09-05 09:26:30.536015','2','Terminal Fallout',2,'[{\"changed\": {\"name\": \"sprint\", \"object\": \"sprint #1 fallout\", \"fields\": [\"specs\"]}}]',25,3),(89,'2019-09-05 09:32:35.743777','2','Terminal Fallout',2,'[{\"added\": {\"name\": \"spec\", \"object\": \"prompt: al fer clic es mostra la paraula seleccionada i el resultat al prompt\"}}, {\"added\": {\"name\": \"spec\", \"object\": \"si esgotem el nombre d\'intents, joc fallit (0 punts)\"}}, {\"changed\": {\"name\": \"spec\", \"object\": \"simular fons de pantalla del terminal de fallout\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"marcador de nombre d\'intents (4)\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"al fer hover sobre una paraula s\'ha de marcar amb v\\u00eddeo invers\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"el servidor tria (i envia) una paraula com a contrasenya v\\u00e0lida\", \"fields\": [\"ordre\"]}}]',25,3),(90,'2019-09-05 09:38:57.645151','2','Terminal Fallout',2,'[{\"added\": {\"name\": \"spec\", \"object\": \"marcador de temps, compta el temps que triga l\'usuari fins encertar la contrasenya\"}}, {\"added\": {\"name\": \"spec\", \"object\": \"ranking: si la contrasenya \\u00e9s correcta, apareix prompt per demanar nom d\'usuari pel ranking\"}}]',25,3),(91,'2019-09-05 09:40:47.325839','2','Terminal Fallout',2,'[{\"added\": {\"name\": \"spec\", \"object\": \"acabada la partida, enviem puntuaci\\u00f3 (intents, temps, nom d\'usuari) pel ranking\"}}, {\"added\": {\"name\": \"spec\", \"object\": \"menu prinicpal: jugar i veure ranking\"}}]',25,3),(92,'2019-09-05 09:46:25.694641','2','Terminal Fallout',2,'[{\"added\": {\"name\": \"spec\", \"object\": \"Github: el projecte ha d\'estar gestionat des del primer dia a Github\"}}, {\"added\": {\"name\": \"spec\", \"object\": \"Posta en producci\\u00f3 p\\u00fablica IETI\"}}, {\"changed\": {\"name\": \"spec\", \"object\": \"diccionari (arxiu) de paraules de 5 car\\u00e0cters\", \"fields\": [\"nom\"]}}]',25,3),(93,'2019-09-05 09:48:38.969572','2','Terminal Fallout',2,'[{\"added\": {\"name\": \"spec\", \"object\": \"Posta en producci\\u00f3 en domini propi (freenom, AWS)\"}}, {\"added\": {\"name\": \"spec\", \"object\": \"ajudes (eliminaci\\u00f3 de brossa)\"}}]',25,3),(94,'2019-09-05 09:50:24.241808','2','Terminal Fallout',2,'[{\"added\": {\"name\": \"spec\", \"object\": \"ajudas (restabliment d\'intents)\"}}, {\"added\": {\"name\": \"spec\", \"object\": \"si la contrasenya \\u00e9s incorrecta, es substitueix per punts\"}}]',25,3),(95,'2019-09-05 09:50:59.347882','2','Terminal Fallout',2,'[{\"changed\": {\"name\": \"spec\", \"object\": \"si contrasenya \\u00e9s incorrecta, cal especificar el nombre de car\\u00e0cters correctes que coincideixen en la seva posici\\u00f3 amb la contrasenya\", \"fields\": [\"nom\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"prompt: al fer clic es mostra la paraula seleccionada i el resultat al prompt\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"si esgotem el nombre d\'intents, joc fallit (0 punts)\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"marcador de temps, compta el temps que triga l\'usuari fins encertar la contrasenya\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"ranking: si la contrasenya \\u00e9s correcta, apareix prompt per demanar nom d\'usuari pel ranking\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"acabada la partida, enviem puntuaci\\u00f3 (intents, temps, nom d\'usuari) pel ranking\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"menu prinicpal: jugar i veure ranking\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"Github: el projecte ha d\'estar gestionat des del primer dia a Github\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"Posta en producci\\u00f3 p\\u00fablica IETI\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"Posta en producci\\u00f3 en domini propi (freenom, AWS)\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"ajudes (eliminaci\\u00f3 de brossa)\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"ajudas (restabliment d\'intents)\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"si la contrasenya \\u00e9s incorrecta, es substitueix per punts\", \"fields\": [\"ordre\"]}}]',25,3),(96,'2019-09-05 09:53:47.328648','2','Terminal Fallout',2,'[{\"added\": {\"name\": \"spec\", \"object\": \"al comen\\u00e7ar la partida tries entre 3 nivells de dificultats (f\\u00e1cil, normal, alt)\"}}, {\"added\": {\"name\": \"spec\", \"object\": \"nivell f\\u00e0cil: menys car\\u00e0cters a la contrasenya i/o menys paraules i/o m\\u00e9s ajuts\"}}]',25,3),(97,'2019-09-05 09:56:29.634884','2','Terminal Fallout',2,'[{\"added\": {\"name\": \"spec\", \"object\": \"nivell dif\\u00edcil: m\\u00e9s car\\u00e0cters a la contrasenya, m\\u00e9s contrasenyes, menys ajuts\"}}, {\"added\": {\"name\": \"spec\", \"object\": \"visualitzaci\\u00f3 del ranking per nivells de dificultat\"}}]',25,3),(98,'2019-09-05 09:57:25.286319','2','Terminal Fallout',2,'[{\"added\": {\"name\": \"spec\", \"object\": \"visualitzaci\\u00f3 del ranking ordenat per intents\"}}, {\"added\": {\"name\": \"spec\", \"object\": \"visualitzaci\\u00f3 del ranking ordenat per temps\"}}]',25,3),(99,'2019-09-05 10:01:29.125221','2','Terminal Fallout',2,'[{\"changed\": {\"name\": \"spec\", \"object\": \"diccionari (arxiu) de paraules de 5 car\\u00e0cters\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"crear string de volcado de memoria\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"formateo en pantalla (spans) del volcado de memoria\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"el servidor tria (i envia) una paraula com a contrasenya v\\u00e0lida\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"simular fons de pantalla del terminal de fallout\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"marcador de nombre d\'intents (4)\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"al fer hover sobre una paraula s\'ha de marcar amb v\\u00eddeo invers\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"al fer click sobre paraula s\'ha de comprovar si coincideix amb la contrasenya\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"si es clica la contrasenya, final de joc\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"si contrasenya \\u00e9s incorrecta, cal especificar el nombre de car\\u00e0cters correctes que coincideixen en la seva posici\\u00f3 amb la contrasenya\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"si la contrasenya \\u00e9s incorrecta, es substitueix per punts\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"prompt: al fer clic es mostra la paraula seleccionada i el resultat al prompt\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"si esgotem el nombre d\'intents, joc fallit (0 punts)\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"marcador de temps, compta el temps que triga l\'usuari fins encertar la contrasenya\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"ranking: si la contrasenya \\u00e9s correcta, apareix prompt per demanar nom d\'usuari pel ranking\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"acabada la partida, enviem puntuaci\\u00f3 (intents, temps, nom d\'usuari) pel ranking\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"menu prinicpal: jugar i veure ranking\", \"fields\": [\"ordre\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"Github: el projecte ha d\'estar gestionat des del primer dia a Github\", \"fields\": [\"ordre\"]}}]',25,2),(100,'2019-09-05 10:02:21.362813','2','Terminal Fallout',2,'[{\"changed\": {\"name\": \"spec\", \"object\": \"crear string de volcat de memoria (6 paraules + simbols)\", \"fields\": [\"nom\"]}}, {\"changed\": {\"name\": \"spec\", \"object\": \"format en pantalla (spans) del volcado de memoria\", \"fields\": [\"nom\"]}}]',25,2),(101,'2019-09-05 10:05:03.308415','2','Terminal Fallout',2,'[{\"changed\": {\"name\": \"sprint\", \"object\": \"sprint #1 fallout\", \"fields\": [\"specs\"]}}]',25,2),(102,'2019-09-05 10:19:07.144986','3','Equipo A (sprint #1) : None',2,'[{\"changed\": {\"name\": \"done spec\", \"object\": \"Equipo A (doble taulell) : True\", \"fields\": [\"done\"]}}]',26,1),(103,'2019-09-05 10:23:09.096124','3','emieza',2,'[{\"changed\": {\"fields\": [\"groups\"]}}]',11,1),(104,'2019-09-05 10:27:25.748933','30','Institut Esteve Terradas i Illa',2,'[{\"changed\": {\"fields\": [\"admins\"]}}]',13,1),(105,'2019-09-05 10:30:47.206736','5','lele',1,'[{\"added\": {}}]',24,7),(106,'2019-09-05 10:33:05.090600','2','Terminal Fallout',2,'[{\"changed\": {\"name\": \"sprint\", \"object\": \"sprint #1 fallout\", \"fields\": [\"specs\"]}}]',25,3);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (6,'admin','logentry'),(8,'auth','group'),(7,'auth','permission'),(17,'borsApp','demanda'),(18,'borsApp','empresa'),(19,'borsApp','notificacio'),(20,'borsApp','oferta'),(21,'borsApp','subscripcio'),(22,'borsApp','titol'),(9,'contenttypes','contenttype'),(12,'core','categoria'),(13,'core','centre'),(14,'core','cicle'),(15,'core','modulprofessional'),(16,'core','unitatformativa'),(11,'core','user'),(23,'scrum','donespec'),(24,'scrum','equip'),(25,'scrum','projecte'),(26,'scrum','qualificacio'),(27,'scrum','spec'),(28,'scrum','sprint'),(10,'sessions','session'),(1,'social_django','association'),(2,'social_django','code'),(3,'social_django','nonce'),(5,'social_django','partial'),(4,'social_django','usersocialauth');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-08-21 17:52:14.754730'),(2,'contenttypes','0002_remove_content_type_name','2019-08-21 17:52:15.020899'),(3,'auth','0001_initial','2019-08-21 17:52:15.263157'),(4,'auth','0002_alter_permission_name_max_length','2019-08-21 17:52:15.970146'),(5,'auth','0003_alter_user_email_max_length','2019-08-21 17:52:15.984972'),(6,'auth','0004_alter_user_username_opts','2019-08-21 17:52:15.994418'),(7,'auth','0005_alter_user_last_login_null','2019-08-21 17:52:16.004568'),(8,'auth','0006_require_contenttypes_0002','2019-08-21 17:52:16.010103'),(9,'auth','0007_alter_validators_add_error_messages','2019-08-21 17:52:16.024664'),(10,'auth','0008_alter_user_username_max_length','2019-08-21 17:52:16.034354'),(11,'auth','0009_alter_user_last_name_max_length','2019-08-21 17:52:16.044334'),(12,'core','0001_initial','2019-08-21 17:52:17.003898'),(13,'admin','0001_initial','2019-08-21 17:52:19.914089'),(14,'admin','0002_logentry_remove_auto_add','2019-08-21 17:52:20.316039'),(15,'admin','0003_logentry_add_action_flag_choices','2019-08-21 17:52:20.328888'),(16,'auth','0010_alter_group_name_max_length','2019-08-21 17:52:20.352326'),(17,'auth','0011_update_proxy_permissions','2019-08-21 17:52:20.378211'),(18,'borsApp','0001_initial','2019-08-21 17:52:21.120298'),(19,'borsApp','0002_auto_20190821_1504','2019-08-21 17:52:22.981046'),(20,'scrum','0001_initial','2019-08-21 17:52:28.599897'),(21,'sessions','0001_initial','2019-08-21 17:52:32.385631'),(22,'default','0001_initial','2019-08-21 17:52:32.986807'),(23,'social_auth','0001_initial','2019-08-21 17:52:32.996411'),(24,'default','0002_add_related_name','2019-08-21 17:52:33.611189'),(25,'social_auth','0002_add_related_name','2019-08-21 17:52:33.620899'),(26,'default','0003_alter_email_max_length','2019-08-21 17:52:33.651937'),(27,'social_auth','0003_alter_email_max_length','2019-08-21 17:52:33.661828'),(28,'default','0004_auto_20160423_0400','2019-08-21 17:52:33.744466'),(29,'social_auth','0004_auto_20160423_0400','2019-08-21 17:52:33.747978'),(30,'social_auth','0005_auto_20160727_2333','2019-08-21 17:52:33.832682'),(31,'social_django','0006_partial','2019-08-21 17:52:33.916976'),(32,'social_django','0007_code_timestamp','2019-08-21 17:52:34.140027'),(33,'social_django','0008_partial_timestamp','2019-08-21 17:52:34.354869'),(34,'social_django','0005_auto_20160727_2333','2019-08-21 17:52:34.428280'),(35,'social_django','0001_initial','2019-08-21 17:52:34.436566'),(36,'social_django','0002_add_related_name','2019-08-21 17:52:34.446750'),(37,'social_django','0004_auto_20160423_0400','2019-08-21 17:52:34.456740'),(38,'social_django','0003_alter_email_max_length','2019-08-21 17:52:34.466949');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('14ric4xko0j7psyy6kv1dovsor6ilupg','YjQ3Y2M2OWVjYTc3MzYwNzdkMjdhYjlkNWVkOGViNjQ3NjQ0ZDZhMDp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJrc082dVRLMENEaWtTU0tCQmJaM0JKcTVnSzB3UEpxWiIsIl9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsX2NvcmUuYmFja2VuZHMuZ29vZ2xlLkdvb2dsZU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjM2YzI1MTllMWFiNjI2MmU2MWMwNjIxYzI1MzNlODc5NTdhYzk5YTAiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJnb29nbGUtb2F1dGgyIn0=','2019-09-05 09:57:37.373347'),('2tu4k3gh654jfowwt4jxkmq6okoc3z0y','YzdiZmQxNzZlYTU4ZGY1NDk1N2UzZDU5ZmExMGEwZGU4ZjcxOWM4Yjp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJ5dlVIZkl0MTNqTkxGM1lVamt5dmdnMlltb0VZZUdZWiJ9','2019-08-26 16:59:08.339858'),('33j4enuvza80b7772zsuyenm9dkep1u5','Y2FkMDc4NTEzZGE0YTQzMDQ1MGVlODNkODZhYzQzMmIxNzRmYTdjMzp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJyek5qQmtENUNRMHZkWFpOdmczWU5rV1V0SHgydGhMNiJ9','2019-08-29 16:48:28.540859'),('5td0d1kyp8t75cwb79y8hbihk5rwgfkh','YjdhMTgyMDdkZGQ5MWJkNzhmYThiNjkyOTY0OTZkY2U1NzEzYjYwMjp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJvZGZnRE8xSkJBTHVmcmVHbDdzNjZSQ0VNemtwVVR5MyJ9','2019-08-28 11:30:45.627331'),('9m53s9at3k14dqw6ywcqn8os0g5nu8br','MDY0NzVmM2M1YjkxMTlmN2Y4NzgyMDRhMWM3YzkyNDMwZDNmNGU3Njp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJFSzZzYTQ2dmI1cXdMeVV6SU00RWZSUk5mQ3NHcnRwTiIsIl9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsX2NvcmUuYmFja2VuZHMuZ29vZ2xlLkdvb2dsZU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImMxNzNhZjYyMDFiODZjOTgyMjdhOGNiMDg4NzA2ODI1MjE4ZDM1YmQiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJnb29nbGUtb2F1dGgyIn0=','2019-09-03 11:58:15.083661'),('anll33ml7j9u53dtemhp7oziq8vmd1nz','ZTRiNzk4OGE3YjcwOTdkYWNiN2I4NjFhN2FkMzE1NDg4ODNhMjM2NTp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJIdExQR1Z4QnFlRDdLYXdab0RhM0lkczUyN2VVbkFNdyIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsX2NvcmUuYmFja2VuZHMuZ29vZ2xlLkdvb2dsZU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjY3MzljMjZkYjRjNDExYTdiZmY4YjUyNWVkNjkyMzhkMDhkNWVlODUiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJnb29nbGUtb2F1dGgyIn0=','2019-08-25 12:33:21.840236'),('bvyp8uan62ipow5gpdmytq2kxhce6oeb','NWRhY2JhMTdmYzc1Yjg4NzYzYTJkNDI3NmVmM2RlNTcxMzI3YmRkYjp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJsc1J0Q3hLc2V4Q3I5MUJjVUg5d1ZnMEVmTmtwb2g2ciJ9','2019-09-04 18:08:12.350745'),('bz845heo5xt53sb7gcfl0etx0uwuvyw9','YTVlNTU5YTNkZDhjMTYwMDkwZGFjMThkY2U3ZDNiMTg4ZDI3M2NiNTp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJyOUhFaGxTWmVXUVBubG45aHNwd0FDUHdJR01vYVJ1ciIsIl9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsX2NvcmUuYmFja2VuZHMuZ29vZ2xlLkdvb2dsZU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjM2YzI1MTllMWFiNjI2MmU2MWMwNjIxYzI1MzNlODc5NTdhYzk5YTAiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJnb29nbGUtb2F1dGgyIn0=','2019-09-05 11:27:35.342823'),('lmorh4y9dug90puc5pfavsxsorzlztdx','NDhjZjY0MDlhNjcwYWM4ZDI4YThmNWEyNjA3Y2NmMGRhODBhODY2NTp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJwNDNES2RocFpTTkh1NEdadzdzT1dGN1pzVzJRYUR6NiIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsX2NvcmUuYmFja2VuZHMuZ29vZ2xlLkdvb2dsZU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjY3MzljMjZkYjRjNDExYTdiZmY4YjUyNWVkNjkyMzhkMDhkNWVlODUiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJnb29nbGUtb2F1dGgyIn0=','2019-09-05 09:51:57.333702'),('nc5xpts6bon5zxhnqsetv8vbs87p7bol','OWZlY2VhNzQzYjRkMzhlYmY4YmE4MGZhZTQxMDdiY2EzMGM1MTI2OTp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJpb3dYNXRBM1ZDZFlEbkE3b0dPWnJSQ0ExeGV2Q1hBYSIsIl9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsX2NvcmUuYmFja2VuZHMuZ29vZ2xlLkdvb2dsZU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImMxNzNhZjYyMDFiODZjOTgyMjdhOGNiMDg4NzA2ODI1MjE4ZDM1YmQiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJnb29nbGUtb2F1dGgyIn0=','2019-09-05 10:00:33.845402'),('qroa052i9ifmz7s810q3r9qn79kps9s2','MjZmYTcxMmNiYjg3OGVhY2M5OTBjODBjOWMyODcyZDQwYWY2OWM3Nzp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJqV2lTdnp5SkRQZHROU3JBaEtTYUtMTFdrcTlXY1Y3UyIsIl9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsX2NvcmUuYmFja2VuZHMuZ29vZ2xlLkdvb2dsZU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjEzYmZhM2IxZDk1ZDVhNzZhN2ExMGQzY2IzZTljZmMwNmY1MmVkZjQiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJnb29nbGUtb2F1dGgyIn0=','2019-09-02 13:28:26.804242'),('r38378s2jch2qf9ik7ptfzj9g5udq0wk','NWU3YjM0YWExYmZiMTE2ZDEyNmRhZGIyM2YwMzk1NWU2NDJlNDEyZTp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJWRGppMXR4dUVISFlRUVdDb1VpaDdIaDNLekZKTklHRiIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsX2NvcmUuYmFja2VuZHMuZ29vZ2xlLkdvb2dsZU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjY3MzljMjZkYjRjNDExYTdiZmY4YjUyNWVkNjkyMzhkMDhkNWVlODUiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJnb29nbGUtb2F1dGgyIn0=','2019-08-25 18:07:08.701990'),('rf5tgkt159akcqomh0wszc1gcleba000','ODcwZmNjZGE4MThhZGJkZTE3NDhjOTM0ODI1YmQ2NDhjZDcyN2RjNTp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJxeUxoVkt4VmhLSE80dUFhTE05RUJ6V2RFZGZNT09STSJ9','2019-08-26 11:59:04.225664'),('rfkoeyl4rkmh1px7l3yyqnv1l8wf4jzo','OGFkNDczMDk1NjQ5YTFmYmNhNDQwNDkzNzAwYWU0NmE0ODhiMmE0YTp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiI2WnRROFJqQ0ZKdW9ZSjFGYmE3eVByMVhPNjY1dzB4UyIsIl9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsX2NvcmUuYmFja2VuZHMuZ29vZ2xlLkdvb2dsZU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjM2YzI1MTllMWFiNjI2MmU2MWMwNjIxYzI1MzNlODc5NTdhYzk5YTAiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJnb29nbGUtb2F1dGgyIn0=','2019-09-04 13:08:22.837301'),('yfqyo7gu73kxf3usvahyfgshz6pi2u0c','ZWJkOTI3NjAxZjA2N2Q1YTFjY2JjN2U0YjdhNWE4MzExYWUxODk3YTp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJRaG4yN0FRd0VFU0NOazJHc3dxU2dzeVoxMFhXWWxUayIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsX2NvcmUuYmFja2VuZHMuZ29vZ2xlLkdvb2dsZU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjY3MzljMjZkYjRjNDExYTdiZmY4YjUyNWVkNjkyMzhkMDhkNWVlODUiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJnb29nbGUtb2F1dGgyIn0=','2019-09-03 12:11:22.847061'),('ym6k5wxhg6z745ete5y8lxq8p8312awx','Y2FhYTIzYzY1OWI5Njg4ZWY5ZTI0NWU4NWIxNzI5MGM0Njk3NGZhZjp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJHM0pzdWg1bTZzY3NlTzFLUnN5Q2x1RmJGb3FYV3k3YyJ9','2019-08-29 16:47:55.757581'),('zd1ik5vmu1z6mtgyiz6ju80qlb9zif7n','MjFiYTE3M2Y2ZTJkMjFhYzY3ZGY5NGY3MjE3Y2QwZGM2MjU1MzViODp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJ0czg0bDBLdlZiRGdObXQ3TFpHWTJLa2k1UmQ2cmV1eSIsIl9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsX2NvcmUuYmFja2VuZHMuZ29vZ2xlLkdvb2dsZU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjEzYmZhM2IxZDk1ZDVhNzZhN2ExMGQzY2IzZTljZmMwNmY1MmVkZjQiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJnb29nbGUtb2F1dGgyIn0=','2019-08-29 07:46:47.159166');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scrum_donespec`
--

DROP TABLE IF EXISTS `scrum_donespec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scrum_donespec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `done` tinyint(1) NOT NULL,
  `qualificacio_id` int(11) NOT NULL,
  `spec_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `scrum_donespec_qualificacio_id_5fe4e6cd_fk_scrum_qualificacio_id` (`qualificacio_id`),
  KEY `scrum_donespec_spec_id_11762dca_fk_scrum_spec_id` (`spec_id`),
  CONSTRAINT `scrum_donespec_qualificacio_id_5fe4e6cd_fk_scrum_qualificacio_id` FOREIGN KEY (`qualificacio_id`) REFERENCES `scrum_qualificacio` (`id`),
  CONSTRAINT `scrum_donespec_spec_id_11762dca_fk_scrum_spec_id` FOREIGN KEY (`spec_id`) REFERENCES `scrum_spec` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scrum_donespec`
--

LOCK TABLES `scrum_donespec` WRITE;
/*!40000 ALTER TABLE `scrum_donespec` DISABLE KEYS */;
INSERT INTO `scrum_donespec` VALUES (1,0,1,1),(2,0,1,2),(3,0,2,1),(4,0,2,2),(5,1,3,1),(6,0,3,2),(7,0,4,20),(8,0,4,4),(9,0,4,5),(10,0,4,6);
/*!40000 ALTER TABLE `scrum_donespec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scrum_equip`
--

DROP TABLE IF EXISTS `scrum_equip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scrum_equip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `descripcio` longtext NOT NULL,
  `projecte_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `scrum_equip_projecte_id_10815176_fk_scrum_projecte_id` (`projecte_id`),
  CONSTRAINT `scrum_equip_projecte_id_10815176_fk_scrum_projecte_id` FOREIGN KEY (`projecte_id`) REFERENCES `scrum_projecte` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scrum_equip`
--

LOCK TABLES `scrum_equip` WRITE;
/*!40000 ALTER TABLE `scrum_equip` DISABLE KEYS */;
INSERT INTO `scrum_equip` VALUES (2,'Equip 11','<p>aaaa</p>',1),(3,'Equip 12','<p>aaa</p>',1),(4,'Equipo A','<p>aaa</p>',1),(5,'lele','',2);
/*!40000 ALTER TABLE `scrum_equip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scrum_equip_membres`
--

DROP TABLE IF EXISTS `scrum_equip_membres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scrum_equip_membres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equip_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scrum_equip_membres_equip_id_user_id_2005aabd_uniq` (`equip_id`,`user_id`),
  KEY `scrum_equip_membres_user_id_5092e0b3_fk_core_user_id` (`user_id`),
  CONSTRAINT `scrum_equip_membres_equip_id_12e72785_fk_scrum_equip_id` FOREIGN KEY (`equip_id`) REFERENCES `scrum_equip` (`id`),
  CONSTRAINT `scrum_equip_membres_user_id_5092e0b3_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scrum_equip_membres`
--

LOCK TABLES `scrum_equip_membres` WRITE;
/*!40000 ALTER TABLE `scrum_equip_membres` DISABLE KEYS */;
INSERT INTO `scrum_equip_membres` VALUES (2,2,3),(3,3,2),(4,4,4),(5,5,4),(6,5,7);
/*!40000 ALTER TABLE `scrum_equip_membres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scrum_projecte`
--

DROP TABLE IF EXISTS `scrum_projecte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scrum_projecte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `descripcio` longtext NOT NULL,
  `inici` date NOT NULL,
  `final` date NOT NULL,
  `centre_id` int(11) NOT NULL,
  `cicle_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scrum_projecte_centre_id_f8eb63a0_fk_core_centre_id` (`centre_id`),
  KEY `scrum_projecte_cicle_id_4ab548cf_fk_core_cicle_id` (`cicle_id`),
  CONSTRAINT `scrum_projecte_centre_id_f8eb63a0_fk_core_centre_id` FOREIGN KEY (`centre_id`) REFERENCES `core_centre` (`id`),
  CONSTRAINT `scrum_projecte_cicle_id_4ab548cf_fk_core_cicle_id` FOREIGN KEY (`cicle_id`) REFERENCES `core_cicle` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scrum_projecte`
--

LOCK TABLES `scrum_projecte` WRITE;
/*!40000 ALTER TABLE `scrum_projecte` DISABLE KEYS */;
INSERT INTO `scrum_projecte` VALUES (1,'Puzzle','<p>Puzzle per AWS2</p>','2019-08-21','2019-09-30',30,124),(2,'Terminal Fallout','<p>Minijoc de hackig de terminal en el joc Fallout 4</p>\r\n<p>Mireu aquest <a href=\"https://www.youtube.com/watch?v=zeik4hTEolc\">v&iacute;deo explicatiu</a>.</p>\r\n<p>&nbsp;</p>','2019-10-14','2019-11-11',30,124);
/*!40000 ALTER TABLE `scrum_projecte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scrum_projecte_admins`
--

DROP TABLE IF EXISTS `scrum_projecte_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scrum_projecte_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projecte_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scrum_projecte_admins_projecte_id_user_id_d18d3dda_uniq` (`projecte_id`,`user_id`),
  KEY `scrum_projecte_admins_user_id_8584b61f_fk_core_user_id` (`user_id`),
  CONSTRAINT `scrum_projecte_admins_projecte_id_39f86f88_fk_scrum_projecte_id` FOREIGN KEY (`projecte_id`) REFERENCES `scrum_projecte` (`id`),
  CONSTRAINT `scrum_projecte_admins_user_id_8584b61f_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scrum_projecte_admins`
--

LOCK TABLES `scrum_projecte_admins` WRITE;
/*!40000 ALTER TABLE `scrum_projecte_admins` DISABLE KEYS */;
INSERT INTO `scrum_projecte_admins` VALUES (1,1,2),(2,1,3),(3,2,2),(4,2,3);
/*!40000 ALTER TABLE `scrum_projecte_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scrum_qualificacio`
--

DROP TABLE IF EXISTS `scrum_qualificacio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scrum_qualificacio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nota` double DEFAULT NULL,
  `comentaris` longtext NOT NULL,
  `equip_id` int(11) NOT NULL,
  `sprint_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `scrum_qualificacio_equip_id_841b6ad6_fk_scrum_equip_id` (`equip_id`),
  KEY `scrum_qualificacio_sprint_id_92f4008f_fk_scrum_sprint_id` (`sprint_id`),
  CONSTRAINT `scrum_qualificacio_equip_id_841b6ad6_fk_scrum_equip_id` FOREIGN KEY (`equip_id`) REFERENCES `scrum_equip` (`id`),
  CONSTRAINT `scrum_qualificacio_sprint_id_92f4008f_fk_scrum_sprint_id` FOREIGN KEY (`sprint_id`) REFERENCES `scrum_sprint` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scrum_qualificacio`
--

LOCK TABLES `scrum_qualificacio` WRITE;
/*!40000 ALTER TABLE `scrum_qualificacio` DISABLE KEYS */;
INSERT INTO `scrum_qualificacio` VALUES (1,NULL,'',2,1),(2,NULL,'',3,1),(3,NULL,'',4,1),(4,NULL,'',5,2);
/*!40000 ALTER TABLE `scrum_qualificacio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scrum_spec`
--

DROP TABLE IF EXISTS `scrum_spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scrum_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `descripcio` longtext NOT NULL,
  `ordre` int(11) NOT NULL,
  `pare_id` int(11) DEFAULT NULL,
  `projecte_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `scrum_spec_pare_id_916e56b7_fk_scrum_spec_id` (`pare_id`),
  KEY `scrum_spec_projecte_id_8190fe7c_fk_scrum_projecte_id` (`projecte_id`),
  CONSTRAINT `scrum_spec_pare_id_916e56b7_fk_scrum_spec_id` FOREIGN KEY (`pare_id`) REFERENCES `scrum_spec` (`id`),
  CONSTRAINT `scrum_spec_projecte_id_8190fe7c_fk_scrum_projecte_id` FOREIGN KEY (`projecte_id`) REFERENCES `scrum_projecte` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scrum_spec`
--

LOCK TABLES `scrum_spec` WRITE;
/*!40000 ALTER TABLE `scrum_spec` DISABLE KEYS */;
INSERT INTO `scrum_spec` VALUES (1,'doble taulell','',1,NULL,1),(2,'drag and drop peces taulell esq a dreta','',3,NULL,1),(3,'posta en producció en Amazon AWS','',2,NULL,1),(4,'diccionari (arxiu) de paraules de 5 caràcters','',2,NULL,2),(5,'crear string de volcat de memoria (6 paraules + simbols)','',3,NULL,2),(6,'format en pantalla (spans) del volcado de memoria','',4,NULL,2),(7,'simular fons de pantalla del terminal de fallout','',6,NULL,2),(8,'marcador de nombre d\'intents (4)','',7,NULL,2),(9,'al fer hover sobre una paraula s\'ha de marcar amb vídeo invers','',8,NULL,2),(10,'el servidor tria (i envia) una paraula com a contrasenya vàlida','',5,NULL,2),(11,'al fer click sobre paraula s\'ha de comprovar si coincideix amb la contrasenya','',9,NULL,2),(12,'si es clica la contrasenya, final de joc','',10,NULL,2),(13,'si contrasenya és incorrecta, cal especificar el nombre de caràcters correctes que coincideixen en la seva posició amb la contrasenya','',11,NULL,2),(14,'prompt: al fer clic es mostra la paraula seleccionada i el resultat al prompt','',13,NULL,2),(15,'si esgotem el nombre d\'intents, joc fallit (0 punts)','',14,NULL,2),(16,'marcador de temps, compta el temps que triga l\'usuari fins encertar la contrasenya','',15,NULL,2),(17,'ranking: si la contrasenya és correcta, apareix prompt per demanar nom d\'usuari pel ranking','',16,NULL,2),(18,'acabada la partida, enviem puntuació (intents, temps, nom d\'usuari) pel ranking','',17,NULL,2),(19,'menu prinicpal: jugar i veure ranking','',18,NULL,2),(20,'Github: el projecte ha d\'estar gestionat des del primer dia a Github','',1,NULL,2),(21,'Posta en producció pública IETI','',19,NULL,2),(22,'Posta en producció en domini propi (freenom, AWS)','',20,NULL,2),(23,'ajudes (eliminació de brossa)','',21,NULL,2),(24,'ajudas (restabliment d\'intents)','',22,NULL,2),(25,'si la contrasenya és incorrecta, es substitueix per punts','',12,NULL,2),(26,'al començar la partida tries entre 3 nivells de dificultats (fácil, normal, alt)','',23,NULL,2),(27,'nivell fàcil: menys caràcters a la contrasenya i/o menys paraules i/o més ajuts','',24,NULL,2),(28,'nivell difícil: més caràcters a la contrasenya, més contrasenyes, menys ajuts','',25,NULL,2),(29,'visualització del ranking per nivells de dificultat','',26,NULL,2),(30,'visualització del ranking ordenat per intents','',27,NULL,2),(31,'visualització del ranking ordenat per temps','',28,NULL,2);
/*!40000 ALTER TABLE `scrum_spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scrum_spec_mp`
--

DROP TABLE IF EXISTS `scrum_spec_mp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scrum_spec_mp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spec_id` int(11) NOT NULL,
  `modulprofessional_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scrum_spec_mp_spec_id_modulprofessional_id_ff4b2e2f_uniq` (`spec_id`,`modulprofessional_id`),
  KEY `scrum_spec_mp_modulprofessional_id_f1c77f33_fk_core_modu` (`modulprofessional_id`),
  CONSTRAINT `scrum_spec_mp_modulprofessional_id_f1c77f33_fk_core_modu` FOREIGN KEY (`modulprofessional_id`) REFERENCES `core_modulprofessional` (`id`),
  CONSTRAINT `scrum_spec_mp_spec_id_bedacb01_fk_scrum_spec_id` FOREIGN KEY (`spec_id`) REFERENCES `scrum_spec` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scrum_spec_mp`
--

LOCK TABLES `scrum_spec_mp` WRITE;
/*!40000 ALTER TABLE `scrum_spec_mp` DISABLE KEYS */;
INSERT INTO `scrum_spec_mp` VALUES (2,1,173),(3,1,174),(1,1,176),(5,2,173),(4,2,176),(6,3,174),(7,3,175),(8,4,174),(9,5,174),(11,6,173),(12,6,174),(10,6,176),(13,7,176),(14,8,173),(15,8,174),(17,9,173),(16,9,176),(18,10,174),(19,11,173),(20,12,173),(21,13,173),(22,14,173),(23,15,173),(24,16,173),(26,17,173),(25,17,176),(27,18,174),(29,19,174),(28,19,176),(30,20,175),(31,21,175),(32,22,175),(33,23,173),(34,23,174),(35,24,173),(36,25,173),(38,26,173),(39,26,174),(37,26,176),(40,27,173),(41,27,174),(42,28,173),(43,28,174),(44,29,174),(45,30,174),(46,31,174);
/*!40000 ALTER TABLE `scrum_spec_mp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scrum_sprint`
--

DROP TABLE IF EXISTS `scrum_sprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scrum_sprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `notes` longtext NOT NULL,
  `inici` date NOT NULL,
  `final` date NOT NULL,
  `projecte_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `scrum_sprint_projecte_id_7f253eaa_fk_scrum_projecte_id` (`projecte_id`),
  CONSTRAINT `scrum_sprint_projecte_id_7f253eaa_fk_scrum_projecte_id` FOREIGN KEY (`projecte_id`) REFERENCES `scrum_projecte` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scrum_sprint`
--

LOCK TABLES `scrum_sprint` WRITE;
/*!40000 ALTER TABLE `scrum_sprint` DISABLE KEYS */;
INSERT INTO `scrum_sprint` VALUES (1,'sprint #1','','2019-08-26','2019-09-02',1),(2,'sprint #1 fallout','','2019-10-14','2019-10-21',2);
/*!40000 ALTER TABLE `scrum_sprint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scrum_sprint_specs`
--

DROP TABLE IF EXISTS `scrum_sprint_specs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scrum_sprint_specs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sprint_id` int(11) NOT NULL,
  `spec_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scrum_sprint_specs_sprint_id_spec_id_90e3683e_uniq` (`sprint_id`,`spec_id`),
  KEY `scrum_sprint_specs_spec_id_a99b9521_fk_scrum_spec_id` (`spec_id`),
  CONSTRAINT `scrum_sprint_specs_spec_id_a99b9521_fk_scrum_spec_id` FOREIGN KEY (`spec_id`) REFERENCES `scrum_spec` (`id`),
  CONSTRAINT `scrum_sprint_specs_sprint_id_9f3fdd73_fk_scrum_sprint_id` FOREIGN KEY (`sprint_id`) REFERENCES `scrum_sprint` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scrum_sprint_specs`
--

LOCK TABLES `scrum_sprint_specs` WRITE;
/*!40000 ALTER TABLE `scrum_sprint_specs` DISABLE KEYS */;
INSERT INTO `scrum_sprint_specs` VALUES (1,1,1),(2,1,2),(7,2,4),(5,2,5),(8,2,6),(6,2,20);
/*!40000 ALTER TABLE `scrum_sprint_specs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`),
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_partial`
--

DROP TABLE IF EXISTS `social_auth_partial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) unsigned NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`),
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_partial`
--

LOCK TABLES `social_auth_partial` WRITE;
/*!40000 ALTER TABLE `social_auth_partial` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_partial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersocialauth_user_id_17d28448_fk_core_user_id` (`user_id`),
  CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
INSERT INTO `social_auth_usersocialauth` VALUES (1,'google-oauth2','emieza@xtec.cat','{\"auth_time\": 1567679203, \"expires\": 3599, \"token_type\": \"Bearer\", \"access_token\": \"ya29.Glx6BwjkyROxrF-LFTd5yRv_T889NMTX5WFaEWfQ_SnIFg0FW94sU2Oq3ZL-0_IK7_4V_OwXnD_K8glZvgyjebjhPuVGF2K3zRhBzVlsMstmqczjZGXa_-8f8hV7hw\"}',1),(2,'google-oauth2','emieza@iesesteveterradas.cat','{\"auth_time\": 1567679255, \"expires\": 3600, \"token_type\": \"Bearer\", \"access_token\": \"ya29.Glx6BydlL5Exh6XMONaedEOsSuaHJKedRyxof9fl8qnd02DqhBKn0u__NF_0kwz65o22R-188eZhS5UwA_CmL8dV0p2JjxlTRv5-AdKaC_-q5XIDggnOSXCA0jFa_w\"}',3),(3,'google-oauth2','almaixeracat@gmail.com','{\"auth_time\": 1566468107, \"expires\": 3600, \"token_type\": \"Bearer\", \"access_token\": \"ya29.GlxsB9obY1lgzdnXQDBsi4IWm8epOfhG6IYpcDRNr4-TFn-GAH06Z_zclTfM_BbJyabq_oTXbpaz_zZLrUDjLoSGJuExOeFOgDzJv27KwFxw19jneykBsJ1o7AdhAw\"}',4),(4,'google-oauth2','jmengua2@iesesteveterradas.cat','{\"auth_time\": 1567427306, \"expires\": 3600, \"token_type\": \"Bearer\", \"access_token\": \"ya29.Glx3B61XFSv_cm0qvxzA85WHGTjIYyjVHZKy54-bdvzyH6YHAxHeI9tj-myxhWqWOIRUgyXXrAcTw-fPDzwkLqTlHxBqC7a7H7ETpUqsGY4VBEhH7mWuES0mTNB_-w\"}',6),(5,'google-oauth2','lzabala@xtec.cat','{\"auth_time\": 1567677647, \"expires\": 3600, \"token_type\": \"Bearer\", \"access_token\": \"ya29.Glx6B04eFsFQFx6EystRUaYGo2b43sJaNAVkZTOgk1eqNnWirvsNlzMREd8jooYTkEBgBYawV9Gs9_oZG8b8EAt7Ts5ZfHacYq5aW3UTMHSdnthic8W8Op4OEBkgyw\"}',2),(6,'google-oauth2','leandro.zabala@gmail.com','{\"auth_time\": 1567679394, \"expires\": 3600, \"token_type\": \"Bearer\", \"access_token\": \"ya29.Glt6BwMtKVTk3px32izgOHw8oFz5GV7gcJAif6b1cN__LCK5OH36UI2tO1d09mOEYlFDbn14UA6hlLWwtKF823A9b71qXKgL7KEpponPqJYwg6GDVVmfwdNnbtoL\"}',7);
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-05 14:51:21
