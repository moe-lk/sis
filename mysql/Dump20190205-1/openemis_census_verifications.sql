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
-- Table structure for table `census_verifications`
--

DROP TABLE IF EXISTS `census_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `census_verifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `institution_site_id` int(11) NOT NULL,
  `academic_period_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0 -> Unverified, 1 -> Verified',
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `institution_site_id` (`institution_site_id`),
  KEY `school_year_id` (`academic_period_id`),
  KEY `status` (`status`),
  KEY `created_user_id` (`created_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `census_verifications`
--

LOCK TABLES `census_verifications` WRITE;
/*!40000 ALTER TABLE `census_verifications` DISABLE KEYS */;
INSERT INTO `census_verifications` VALUES (1,16000,1,1,7,'2014-07-14 02:43:53'),(2,15997,1,1,7,'2014-07-15 03:34:47'),(3,1534,1,1,7,'2014-07-24 08:11:18'),(4,1534,1,0,1,'2014-08-21 22:27:11'),(5,1534,1,1,1,'2014-08-21 22:27:50'),(6,13877,1,1,7,'2014-09-07 23:03:28'),(7,1534,1,0,1,'2014-09-22 11:26:40'),(8,15049,1,1,7,'2014-10-20 17:39:20');
/*!40000 ALTER TABLE `census_verifications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 16:33:36
