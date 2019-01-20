-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: openemis
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `custom_field_types`
--

DROP TABLE IF EXISTS `custom_field_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `value` varchar(100) NOT NULL,
  `description` text,
  `format` varchar(50) NOT NULL,
  `is_mandatory` int(1) NOT NULL DEFAULT '0',
  `is_unique` int(1) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_types`
--

LOCK TABLES `custom_field_types` WRITE;
/*!40000 ALTER TABLE `custom_field_types` DISABLE KEYS */;
INSERT INTO `custom_field_types` VALUES (1,'TEXT','Text','text_value','','OpenEMIS',1,1,1),(2,'NUMBER','Number','number_value','','OpenEMIS',1,1,1),(3,'DECIMAL','Decimal','decimal_value','','OpenEMIS',1,0,1),(4,'TEXTAREA','Textarea','textarea_value','','OpenEMIS',1,0,1),(5,'DROPDOWN','Dropdown','number_value','','OpenEMIS',1,0,1),(6,'CHECKBOX','Checkbox','number_value','','OpenEMIS',0,0,1),(7,'TABLE','Table','text_value','','OpenEMIS',0,0,1),(8,'DATE','Date','date_value','','OpenEMIS',1,0,1),(9,'TIME','Time','time_value','','OpenEMIS',1,0,1),(10,'STUDENT_LIST','Student List','text_value','','OpenEMIS_Institution',0,0,1),(11,'COORDINATES','Coordinates','text_value','','OpenEMIS',1,0,1),(12,'FILE','File','file','','OpenEMIS',0,0,1),(13,'REPEATER','Repeater','text_value','','OpenEMIS_Institution',0,0,1);
/*!40000 ALTER TABLE `custom_field_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-17 15:12:58
