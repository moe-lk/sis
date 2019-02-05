-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: openemis
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `config_item_options`
--

DROP TABLE IF EXISTS `config_item_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_item_options` (
  `id` int(11) NOT NULL,
  `option_type` varchar(50) NOT NULL,
  `option` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `visible` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_item_options`
--

LOCK TABLES `config_item_options` WRITE;
/*!40000 ALTER TABLE `config_item_options` DISABLE KEYS */;
INSERT INTO `config_item_options` VALUES (1,'date_format','date(\'Y-n-j\')','Y-m-d',1,1),(2,'date_format','date(\'j-M-Y\')','d-M-Y',2,1),(3,'date_format','date(\'j-n-Y\')','d-m-Y',3,1),(4,'date_format','date(\'j/n/Y\')','d/m/Y',4,1),(5,'date_format','date(\'n/d/Y\')','m/d/Y',5,1),(6,'date_format','date(\'F j, Y\')','F d, Y',6,1),(7,'date_format','date(\'jS F Y\')','jS F Y',7,1),(10,'authentication_type','Local','Local',1,1),(11,'authentication_type','LDAP','LDAP',2,0),(12,'language','العربية','ar',1,1),(13,'language','中文','zh',2,1),(14,'language','English','en',3,1),(15,'language','Français','fr',4,1),(16,'language','русский','ru',5,1),(17,'language','español','es',6,1),(18,'yes_no','Yes','1',1,1),(19,'yes_no','No','0',2,1),(20,'wizard','Non-Mandatory','0',1,1),(21,'wizard','Mandatory','1',2,1),(22,'wizard','Excluded','2',3,1),(23,'database:Country','Country.name','Country.id',1,1),(24,'database:AcademicPeriod','AcademicPeriod.name','AcademicPeriod.id',1,1),(25,'yearbook_orientation','Portrait','P',1,1),(26,'yearbook_orientation','Landscape','L',2,1),(27,'first_day_of_week','Monday','1',1,1),(28,'first_day_of_week','Tuesday','2',2,1),(29,'first_day_of_week','Wednesday','3',3,1),(30,'first_day_of_week','Thursday','4',4,1),(31,'first_day_of_week','Friday','5',5,1),(32,'first_day_of_week','Saturday','6',6,1),(33,'first_day_of_week','Sunday','0',7,1),(34,'database:AreaLevel','AreaLevel.name','AreaLevel.id',1,1),(35,'authentication_type','Google','Google',3,1),(36,'authentication_type','Saml2','Saml2',4,1),(37,'authentication_type','OAuth 2.0 with OpenID Connect','OAuth2OpenIDConnect',5,1),(100,'external_data_source_type','None','None',1,1),(101,'external_data_source_type','OpenEMIS Identity','OpenEMIS Identity',2,1),(102,'external_data_source_type','Custom','Custom',3,1);
/*!40000 ALTER TABLE `config_item_options` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 10:02:23
