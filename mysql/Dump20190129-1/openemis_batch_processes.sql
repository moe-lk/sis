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
-- Table structure for table `batch_processes`
--

DROP TABLE IF EXISTS `batch_processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_processes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `file_name` varchar(250) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `finish_date` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '-1 -> Error, 1 -> New, 2 -> Processing, 3 -> Completed',
  `reference_id` varchar(250) DEFAULT NULL,
  `reference_table` varchar(50) DEFAULT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_processes`
--

LOCK TABLES `batch_processes` WRITE;
/*!40000 ALTER TABLE `batch_processes` DISABLE KEYS */;
INSERT INTO `batch_processes` VALUES (85,'Student Report','/var/www/html/openemis.org/demo/core/www/app/webroot/logs/reports/85.log','2014-08-22 17:03:18','0000-00-00 00:00:00',2,'1000','reports',NULL,'2014-08-22 17:03:18',7,'2014-08-22 17:03:18'),(86,'Female Teachers Report','/var/www/html/openemis.org/demo/core/www/app/webroot/logs/reports/86.log','2014-09-27 15:36:45','0000-00-00 00:00:00',2,'1019','reports',NULL,'2014-08-22 17:03:18',7,'2014-08-22 17:03:18'),(143,'TEST 123','/var/www/html/openemis.org/demo/core/refresh/app/webroot/logs/datawarehouse/2014_12_28/datawarehouse_20141228_191938.log','2014-12-28 19:19:37','2014-12-28 19:19:38',3,'3','datawarehouse_indicators',NULL,'2014-12-28 19:19:37',1,'2014-12-28 19:19:36'),(144,'Student Teacher Ratio','/var/www/html/openemis.org/demo/core/refresh/app/webroot/logs/datawarehouse/2014_12_28/datawarehouse_20141228_191940.log','2014-12-28 19:19:38','2014-12-28 19:19:40',3,'5','datawarehouse_indicators',NULL,'2014-12-28 19:19:38',1,'2014-12-28 19:19:36');
/*!40000 ALTER TABLE `batch_processes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:28
