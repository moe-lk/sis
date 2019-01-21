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
-- Table structure for table `custom_modules`
--

DROP TABLE IF EXISTS `custom_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `model` varchar(200) DEFAULT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT '0',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_modules`
--

LOCK TABLES `custom_modules` WRITE;
/*!40000 ALTER TABLE `custom_modules` DISABLE KEYS */;
INSERT INTO `custom_modules` VALUES (1,'Institution','Institution > Overview','Institution.Institutions',1,0,NULL,NULL,1,'1990-01-01 00:00:00'),(2,'Student','Student > Overview','Student.Students',1,0,NULL,NULL,1,'1990-01-01 00:00:00'),(3,'Staff','Staff > Overview','Staff.Staff',1,0,NULL,NULL,1,'1990-01-01 00:00:00'),(5,'Institution > Students','Institution > Students > Survey','Student.StudentSurveys',1,0,NULL,NULL,1,'1990-01-01 00:00:00'),(6,'Institution > Repeater','Institution > Repeater > Survey','InstitutionRepeater.RepeaterSurveys',1,0,NULL,NULL,1,'1990-01-01 00:00:00'),(7,'Land','Institution > Land','Institution.InstitutionLands',1,1,NULL,NULL,1,'2017-05-29 09:57:12'),(8,'Building','Institution > Building','Institution.InstitutionBuildings',1,1,NULL,NULL,1,'2017-05-29 09:57:12'),(9,'Floor','Institution > Floor','Institution.InstitutionFloors',1,1,NULL,NULL,1,'2017-05-29 09:57:12'),(10,'Room','Institution > Room','Institution.InstitutionRooms',1,1,NULL,NULL,1,'1990-01-01 00:00:00');
/*!40000 ALTER TABLE `custom_modules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-21 21:45:24
