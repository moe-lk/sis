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
-- Table structure for table `finance_types`
--

DROP TABLE IF EXISTS `finance_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `order` int(3) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `international_code` varchar(10) DEFAULT NULL,
  `national_code` varchar(10) DEFAULT NULL,
  `finance_nature_id` int(11) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_types`
--

LOCK TABLES `finance_types` WRITE;
/*!40000 ALTER TABLE `finance_types` DISABLE KEYS */;
INSERT INTO `finance_types` VALUES (1,'Instructional',1,1,'','',1,1,'2013-12-09 17:55:33',0,'0000-00-00 00:00:00'),(2,'Support Services',2,1,'','',1,1,'2013-12-09 17:55:33',0,'0000-00-00 00:00:00'),(3,'Facilities',3,1,'','',1,1,'2013-12-09 17:55:33',0,'0000-00-00 00:00:00'),(4,'Other',4,1,'','',1,1,'2013-12-09 17:55:33',0,'0000-00-00 00:00:00'),(5,'Instructional',1,1,'','',2,1,'2013-12-09 17:55:33',0,'0000-00-00 00:00:00'),(6,'Support Services',2,1,'','',2,1,'2013-12-09 17:55:33',0,'0000-00-00 00:00:00'),(7,'Facilities',3,1,'','',2,1,'2013-12-09 17:55:33',0,'0000-00-00 00:00:00'),(8,'Other',4,1,'','',2,1,'2013-12-09 17:55:33',0,'0000-00-00 00:00:00'),(9,'Instructional',1,1,'','',3,1,'2013-12-09 17:55:33',0,'0000-00-00 00:00:00'),(10,'Support Services',2,1,'','',3,1,'2013-12-09 17:55:33',0,'0000-00-00 00:00:00'),(11,'Facilities',3,1,'','',3,1,'2013-12-09 17:55:33',0,'0000-00-00 00:00:00'),(12,'Other',4,1,'','',3,1,'2013-12-09 17:55:33',0,'0000-00-00 00:00:00'),(13,'Instructional',1,1,'','',4,1,'2013-12-09 17:55:33',0,'0000-00-00 00:00:00'),(14,'Support Services',2,1,'','',4,1,'2013-12-09 17:55:33',0,'0000-00-00 00:00:00'),(15,'Facilities',3,1,'','',4,1,'2013-12-09 17:55:33',0,'0000-00-00 00:00:00'),(16,'Other',4,1,'','',4,1,'2013-12-09 17:55:33',0,'0000-00-00 00:00:00'),(17,'Other',1,1,'','',5,NULL,NULL,1,'2013-12-09 17:55:33');
/*!40000 ALTER TABLE `finance_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:23
