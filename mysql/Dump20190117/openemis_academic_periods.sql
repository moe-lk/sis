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
-- Table structure for table `academic_periods`
--

DROP TABLE IF EXISTS `academic_periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academic_periods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(60) NOT NULL,
  `name` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `start_year` int(4) NOT NULL,
  `end_date` date NOT NULL,
  `end_year` int(4) NOT NULL,
  `school_days` int(5) NOT NULL DEFAULT '0',
  `current` int(1) NOT NULL DEFAULT '0',
  `editable` int(1) NOT NULL DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `academic_period_level_id` int(11) NOT NULL COMMENT 'links to academic_period_levels.id',
  `order` int(3) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '1',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `current` (`current`),
  KEY `visible` (`visible`),
  KEY `editable` (`editable`),
  KEY `parent_id` (`parent_id`),
  KEY `academic_period_level_id` (`academic_period_level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_periods`
--

LOCK TABLES `academic_periods` WRITE;
/*!40000 ALTER TABLE `academic_periods` DISABLE KEYS */;
INSERT INTO `academic_periods` VALUES (1,'All','All Data','1990-01-01',1990,'2999-01-01',2999,0,0,1,0,1,24,-1,1,1,NULL,'2015-05-21 11:22:05',1,'1990-01-01 00:00:00');
/*!40000 ALTER TABLE `academic_periods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-17 15:12:52
