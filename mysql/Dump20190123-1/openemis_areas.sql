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
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(60) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `area_level_id` int(11) NOT NULL COMMENT 'links to area_levels.id',
  `order` int(3) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `area_level_id` (`area_level_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'LK','Sri Lanka',NULL,1,24,1,1,1,NULL,NULL,1,'2019-01-23 06:04:19'),(2,'WP','Western Province',1,2,5,2,1,1,NULL,NULL,1,'2019-01-23 06:04:38'),(3,'CP','Central Province',1,6,7,2,2,1,NULL,NULL,1,'2019-01-23 06:17:17'),(4,'SP','Southern Province',1,8,9,2,3,1,NULL,NULL,1,'2019-01-23 06:17:56'),(5,'UP','Uva Province',1,10,11,2,4,1,NULL,NULL,1,'2019-01-23 06:18:36'),(6,'SG','Sabaragamuwa Province',1,12,13,2,5,1,NULL,NULL,1,'2019-01-23 06:18:57'),(7,'NW','North Western Province',1,14,15,2,6,1,NULL,NULL,1,'2019-01-23 06:19:21'),(8,'NC','North Central Province',1,16,17,2,7,1,NULL,NULL,1,'2019-01-23 06:19:39'),(9,'NP','Nothern Province',1,18,19,2,8,1,NULL,NULL,1,'2019-01-23 06:20:00'),(10,'EP','Eastern Province',1,20,21,2,9,1,NULL,NULL,1,'2019-01-23 06:20:22'),(11,'NS','National Schools',1,22,23,2,10,1,NULL,NULL,1,'2019-01-23 06:20:56'),(12,'PI','PILIYANDALA',2,3,4,3,1,1,NULL,NULL,1,'2019-01-23 06:56:33');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-23 12:35:12
