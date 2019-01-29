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
-- Table structure for table `institution_site_shifts`
--

DROP TABLE IF EXISTS `institution_site_shifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_site_shifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `academic_period_id` int(11) NOT NULL,
  `institution_site_id` int(11) NOT NULL,
  `location_institution_site_id` int(11) DEFAULT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_year_id` (`academic_period_id`),
  KEY `institution_site_id` (`institution_site_id`),
  KEY `location_institution_site_id` (`location_institution_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_site_shifts`
--

LOCK TABLES `institution_site_shifts` WRITE;
/*!40000 ALTER TABLE `institution_site_shifts` DISABLE KEYS */;
INSERT INTO `institution_site_shifts` VALUES (1,'Default Shift','8:00 am','2:00 pm',7,1,1,NULL,NULL,1,'0004-12-14 20:51:00'),(2,'Default Shift','8:00 am','2:00 pm',7,4,4,NULL,NULL,1,'0004-12-14 22:44:00'),(3,'Default Shift','8:00 am','2:00 pm',7,9,9,NULL,NULL,1,'0005-12-14 00:37:00'),(4,'Default Shift','8:00 am','2:00 pm',7,11,11,NULL,NULL,1,'0005-12-14 02:30:00'),(5,'Default Shift','8:00 am','2:00 pm',7,2,2,NULL,NULL,1,'0005-12-14 04:23:00'),(6,'Default Shift','8:00 am','2:00 pm',7,5,5,NULL,NULL,1,'0005-12-14 06:16:00'),(7,'Default Shift','8:00 am','2:00 pm',7,6,6,NULL,NULL,1,'0005-12-14 08:10:00'),(8,'Default Shift','8:00 am','2:00 pm',7,3,3,NULL,NULL,1,'0005-12-14 10:03:00'),(9,'Default Shift','8:00 am','2:00 pm',7,23,23,NULL,NULL,1,'0005-12-14 11:56:00'),(10,'Default Shift','8:00 am','2:00 pm',7,27,27,NULL,NULL,1,'0005-12-14 13:49:00'),(11,'Default Shift','8:00 am','2:00 pm',6,1,1,NULL,NULL,1,'0004-12-14 20:51:00'),(12,'Default Shift','8:00 am','2:00 pm',6,4,4,NULL,NULL,1,'0004-12-14 22:44:00'),(13,'Default Shift','8:00 am','2:00 pm',6,9,9,NULL,NULL,1,'0005-12-14 00:37:00'),(14,'Default Shift','8:00 am','2:00 pm',6,11,11,NULL,NULL,1,'0005-12-14 02:30:00'),(15,'Default Shift','8:00 am','2:00 pm',6,2,2,NULL,NULL,1,'0005-12-14 04:23:00'),(16,'Default Shift','8:00 am','2:00 pm',6,5,5,NULL,NULL,1,'0005-12-14 06:16:00'),(17,'Default Shift','8:00 am','2:00 pm',6,6,6,NULL,NULL,1,'0005-12-14 08:10:00'),(18,'Default Shift','8:00 am','2:00 pm',6,3,3,NULL,NULL,1,'0005-12-14 10:03:00'),(19,'Default Shift','8:00 am','2:00 pm',6,23,23,NULL,NULL,1,'0005-12-14 11:56:00'),(20,'Default Shift','8:00 am','2:00 pm',6,27,27,NULL,NULL,1,'0005-12-14 13:49:00'),(21,'Default Shift','8:00 am','2:00 pm',5,1,1,NULL,NULL,1,'0004-12-14 20:51:00'),(22,'Default Shift','8:00 am','2:00 pm',5,4,4,NULL,NULL,1,'0004-12-14 22:44:00'),(23,'Default Shift','8:00 am','2:00 pm',5,9,9,NULL,NULL,1,'0005-12-14 00:37:00'),(24,'Default Shift','8:00 am','2:00 pm',5,11,11,NULL,NULL,1,'0005-12-14 02:30:00'),(25,'Default Shift','8:00 am','2:00 pm',5,2,2,NULL,NULL,1,'0005-12-14 04:23:00'),(26,'Default Shift','8:00 am','2:00 pm',5,5,5,NULL,NULL,1,'0005-12-14 06:16:00'),(27,'Default Shift','8:00 am','2:00 pm',5,6,6,NULL,NULL,1,'0005-12-14 08:10:00'),(28,'Default Shift','8:00 am','2:00 pm',5,3,3,NULL,NULL,1,'0005-12-14 10:03:00'),(29,'Default Shift','8:00 am','2:00 pm',5,23,23,NULL,NULL,1,'0005-12-14 11:56:00'),(30,'Default Shift','8:00 am','2:00 pm',5,27,27,NULL,NULL,1,'0005-12-14 13:49:00'),(31,'Default Shift','8:00 am','2:00 pm',4,1,1,NULL,NULL,1,'0004-12-14 20:51:00'),(32,'Default Shift','8:00 am','2:00 pm',4,4,4,NULL,NULL,1,'0004-12-14 22:44:00'),(33,'Default Shift','8:00 am','2:00 pm',4,9,9,NULL,NULL,1,'0005-12-14 00:37:00'),(34,'Default Shift','8:00 am','2:00 pm',4,11,11,NULL,NULL,1,'0005-12-14 02:30:00'),(35,'Default Shift','8:00 am','2:00 pm',4,2,2,NULL,NULL,1,'0005-12-14 04:23:00'),(36,'Default Shift','8:00 am','2:00 pm',4,5,5,NULL,NULL,1,'0005-12-14 06:16:00'),(37,'Default Shift','8:00 am','2:00 pm',4,6,6,NULL,NULL,1,'0005-12-14 08:10:00'),(38,'Default Shift','8:00 am','2:00 pm',4,3,3,NULL,NULL,1,'0005-12-14 10:03:00'),(39,'Default Shift','8:00 am','2:00 pm',4,23,23,NULL,NULL,1,'0005-12-14 11:56:00'),(40,'Default Shift','8:00 am','2:00 pm',4,27,27,NULL,NULL,1,'0005-12-14 13:49:00'),(41,'Default Shift','8:00 am','2:00 pm',3,1,1,NULL,NULL,1,'0004-12-14 20:51:00'),(42,'Default Shift','8:00 am','2:00 pm',3,4,4,NULL,NULL,1,'0004-12-14 22:44:00'),(43,'Default Shift','8:00 am','2:00 pm',3,9,9,NULL,NULL,1,'0005-12-14 00:37:00'),(44,'Default Shift','8:00 am','2:00 pm',3,11,11,NULL,NULL,1,'0005-12-14 02:30:00'),(45,'Default Shift','8:00 am','2:00 pm',3,2,2,NULL,NULL,1,'0005-12-14 04:23:00'),(46,'Default Shift','8:00 am','2:00 pm',3,5,5,NULL,NULL,1,'0005-12-14 06:16:00'),(47,'Default Shift','8:00 am','2:00 pm',3,6,6,NULL,NULL,1,'0005-12-14 08:10:00'),(48,'Default Shift','8:00 am','2:00 pm',3,3,3,NULL,NULL,1,'0005-12-14 10:03:00'),(49,'Default Shift','8:00 am','2:00 pm',3,23,23,NULL,NULL,1,'0005-12-14 11:56:00'),(50,'Default Shift','8:00 am','2:00 pm',3,27,27,NULL,NULL,1,'0005-12-14 13:49:00'),(51,'Default Shift','8:00 am','2:00 pm',2,1,1,NULL,NULL,1,'0004-12-14 20:51:00'),(52,'Default Shift','8:00 am','2:00 pm',2,4,4,NULL,NULL,1,'0004-12-14 22:44:00'),(53,'Default Shift','8:00 am','2:00 pm',2,9,9,NULL,NULL,1,'0005-12-14 00:37:00'),(54,'Default Shift','8:00 am','2:00 pm',2,11,11,NULL,NULL,1,'0005-12-14 02:30:00'),(55,'Default Shift','8:00 am','2:00 pm',2,2,2,NULL,NULL,1,'0005-12-14 04:23:00'),(56,'Default Shift','8:00 am','2:00 pm',2,5,5,NULL,NULL,1,'0005-12-14 06:16:00'),(57,'Default Shift','8:00 am','2:00 pm',2,6,6,NULL,NULL,1,'0005-12-14 08:10:00'),(58,'Default Shift','8:00 am','2:00 pm',2,3,3,NULL,NULL,1,'0005-12-14 10:03:00'),(59,'Default Shift','8:00 am','2:00 pm',2,23,23,NULL,NULL,1,'0005-12-14 11:56:00'),(60,'Default Shift','8:00 am','2:00 pm',2,27,27,NULL,NULL,1,'0005-12-14 13:49:00'),(61,'Default Shift','8:00 am','2:00 pm',1,1,1,NULL,NULL,1,'0004-12-14 20:51:00'),(62,'Default Shift','8:00 am','2:00 pm',1,4,4,NULL,NULL,1,'0004-12-14 22:44:00'),(63,'Default Shift','8:00 am','2:00 pm',1,9,9,NULL,NULL,1,'0005-12-14 00:37:00'),(64,'Default Shift','8:00 am','2:00 pm',1,11,11,NULL,NULL,1,'0005-12-14 02:30:00'),(65,'Default Shift','8:00 am','2:00 pm',1,2,2,NULL,NULL,1,'0005-12-14 04:23:00'),(66,'Default Shift','8:00 am','2:00 pm',1,5,5,NULL,NULL,1,'0005-12-14 06:16:00'),(67,'Default Shift','8:00 am','2:00 pm',1,6,6,NULL,NULL,1,'0005-12-14 08:10:00'),(68,'Default Shift','8:00 am','2:00 pm',1,3,3,NULL,NULL,1,'0005-12-14 10:03:00'),(69,'Default Shift','8:00 am','2:00 pm',1,23,23,NULL,NULL,1,'0005-12-14 11:56:00'),(70,'Default Shift','8:00 am','2:00 pm',1,27,27,NULL,NULL,1,'0005-12-14 13:49:00');
/*!40000 ALTER TABLE `institution_site_shifts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:25
