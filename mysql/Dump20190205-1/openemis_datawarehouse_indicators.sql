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
-- Table structure for table `datawarehouse_indicators`
--

DROP TABLE IF EXISTS `datawarehouse_indicators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datawarehouse_indicators` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `code` varchar(60) NOT NULL,
  `description` text,
  `editable` int(1) NOT NULL DEFAULT '1',
  `enabled` int(1) NOT NULL DEFAULT '1',
  `type` varchar(30) NOT NULL,
  `datawarehouse_unit_id` int(5) NOT NULL,
  `datawarehouse_field_id` int(5) NOT NULL,
  `denominator` int(5) DEFAULT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `classification` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `datawarehouse_field_id` (`datawarehouse_field_id`),
  KEY `datawarehouse_unit_id` (`datawarehouse_unit_id`),
  KEY `denominator` (`denominator`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datawarehouse_indicators`
--

LOCK TABLES `datawarehouse_indicators` WRITE;
/*!40000 ALTER TABLE `datawarehouse_indicators` DISABLE KEYS */;
INSERT INTO `datawarehouse_indicators` VALUES (1,'BLSQ','6482','How many?',1,1,'Custom',2,1,0,NULL,NULL,7,'2014-08-22 17:02:34',NULL),(2,'BLSQ','6482','How many?',1,1,'Custom',2,4,1,NULL,NULL,7,'2014-08-22 17:02:34',NULL),(3,'TEST 123','01','TEST 1223',1,1,'Custom',1,1,NULL,NULL,NULL,7,'2014-09-17 21:43:01',NULL),(4,'Student Teacher Ratio','PTR','Student Teacher Ratio',1,1,'Custom',3,1,0,NULL,NULL,1,'2014-09-22 11:43:13',NULL),(5,'Student Teacher Ratio','PTR','Student Teacher Ratio',1,1,'Custom',3,1,4,NULL,NULL,1,'2014-09-22 11:43:13',NULL);
/*!40000 ALTER TABLE `datawarehouse_indicators` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 16:33:52
