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
-- Table structure for table `datawarehouse_indicator_subgroups`
--

DROP TABLE IF EXISTS `datawarehouse_indicator_subgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datawarehouse_indicator_subgroups` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `subgroup` text NOT NULL,
  `value` text NOT NULL,
  `datawarehouse_indicator_id` int(11) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `datawarehouse_indicator_id` (`datawarehouse_indicator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datawarehouse_indicator_subgroups`
--

LOCK TABLES `datawarehouse_indicator_subgroups` WRITE;
/*!40000 ALTER TABLE `datawarehouse_indicator_subgroups` DISABLE KEYS */;
INSERT INTO `datawarehouse_indicator_subgroups` VALUES (1,'All Ages, All Sexes, All Localities, All Categories, All Grades','',1,NULL,NULL,7,'2014-08-22 17:02:34'),(2,'All Ages, All Sexes, All Localities, All Categories, All Grades','',2,NULL,NULL,7,'2014-08-22 17:02:34'),(3,'Age: 14, Sex: Female, All Localities, All Categories, All Grades','CensusStudent.age=\"14\" AND Gender.name=\"Female\"',3,NULL,NULL,7,'2014-09-17 21:43:01'),(4,'All Ages, All Sexes, All Localities, All Categories, Grade: Grade 5','EducationGrade.name=\"Grade 5\"',4,NULL,NULL,1,'2014-09-22 11:43:13'),(5,'All Ages, All Sexes, All Localities, All Categories, Grade: Grade 5','EducationGrade.name=\"Grade 5\"',5,NULL,NULL,1,'2014-09-22 11:43:13');
/*!40000 ALTER TABLE `datawarehouse_indicator_subgroups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 10:02:12
