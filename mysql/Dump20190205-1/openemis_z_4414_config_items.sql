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
-- Table structure for table `z_4414_config_items`
--

DROP TABLE IF EXISTS `z_4414_config_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_4414_config_items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `label` varchar(100) NOT NULL,
  `value` varchar(500) NOT NULL,
  `default_value` varchar(500) DEFAULT NULL,
  `editable` int(1) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '1',
  `field_type` varchar(50) NOT NULL,
  `option_type` varchar(50) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_4414_config_items`
--

LOCK TABLES `z_4414_config_items` WRITE;
/*!40000 ALTER TABLE `z_4414_config_items` DISABLE KEYS */;
INSERT INTO `z_4414_config_items` VALUES (1005,'Themes','themes','Themes','Themes','0','0',1,1,'','',NULL,NULL,1,'2017-11-30 01:01:17'),(1006,'Identities','GuardianIdentities','Add New Guardian','Identities','0','0',1,1,'Dropdown','wizard',NULL,NULL,1,'2019-01-02 00:00:00'),(1007,'Nationalities','GuardianNationalities','Add New Guardian','Nationalities','0','0',1,1,'Dropdown','wizard',NULL,NULL,1,'2019-01-02 00:00:00'),(1008,'Identities','OtherIdentities','Add New Other','Identities','0','0',1,1,'Dropdown','wizard',NULL,NULL,1,'2019-01-02 00:00:00'),(1009,'Nationalities','OtherNationalities','Add New Other','Nationalities','0','0',1,1,'Dropdown','wizard',NULL,NULL,1,'2019-01-02 00:00:00'),(1010,'Institution Contact Person Telephone','institution_contact_person_telephone','Custom Validation','Institution Contact Person Telephone','','',1,1,'','',NULL,NULL,1,'2019-01-02 10:01:30'),(1011,'Institution Contact Person Mobile','institution_contact_person_mobile','Custom Validation','Institution Contact Person Mobile','','',1,1,'','',NULL,NULL,1,'2019-01-02 10:01:30'),(1012,'Institution Contact Person Fax','institution_contact_person_fax','Custom Validation','Institution Contact Person Fax','','',1,1,'','',NULL,NULL,1,'2019-01-02 10:01:30');
/*!40000 ALTER TABLE `z_4414_config_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 16:33:42
