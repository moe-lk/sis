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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_periods`
--

LOCK TABLES `academic_periods` WRITE;
/*!40000 ALTER TABLE `academic_periods` DISABLE KEYS */;
INSERT INTO `academic_periods` VALUES (1,'All','All Data','1990-01-01',1990,'2999-01-01',2999,0,0,1,0,1,50,-1,1,1,NULL,'2015-05-21 11:22:05',1,'1990-01-01 00:00:00'),(2,'2019','YR2019','2019-01-01',2019,'2019-12-31',2019,0,1,1,1,24,25,1,2,1,1,'2019-01-26 13:45:37',1,'2019-01-26 13:45:20'),(3,'2018','YR2018','2018-01-01',2018,'2018-12-31',2018,0,0,1,1,26,27,1,3,1,NULL,NULL,1,'2019-01-26 13:46:11'),(4,'2017','GR2017','2017-01-01',2017,'2017-12-31',2017,0,0,1,1,28,29,1,4,1,NULL,NULL,1,'2019-01-26 13:46:47'),(5,'2016','YR2016','2016-01-01',2016,'2016-12-31',2016,0,0,1,1,30,31,1,5,1,NULL,NULL,1,'2019-01-26 13:47:22'),(6,'2015','YR2015','2015-01-01',2015,'2015-12-31',2015,0,0,1,1,32,33,1,6,1,NULL,NULL,1,'2019-01-26 13:48:07'),(7,'2014','YR2014','2014-01-01',2014,'2014-12-31',2014,0,0,1,1,34,35,1,7,1,NULL,NULL,1,'2019-01-26 13:48:36'),(8,'2013','YR2013','2013-01-01',2013,'2013-12-31',2013,0,0,1,1,36,37,1,8,1,NULL,NULL,1,'2019-01-26 13:49:34'),(9,'2012','YR2012','2012-01-01',2012,'2012-12-31',2012,0,0,1,1,38,39,1,9,1,NULL,NULL,1,'2019-01-26 13:50:07'),(10,'2011','YR2011','2011-01-01',2011,'2011-12-31',2011,0,0,1,1,40,41,1,10,1,NULL,NULL,1,'2019-01-26 13:50:35'),(11,'2010','YR2010','2010-01-01',2010,'2010-12-31',2010,0,0,1,1,42,43,1,11,1,NULL,NULL,1,'2019-01-26 13:51:18'),(12,'2009','YR2009','2009-01-01',2009,'2009-12-31',2009,0,0,1,1,44,45,1,12,1,NULL,NULL,1,'2019-01-26 13:51:53'),(13,'2008','YR2008','2008-01-01',2008,'2008-12-31',2008,0,0,1,1,46,47,1,13,1,1,'2019-01-26 14:08:46',1,'2019-01-26 13:52:48'),(14,'2007','YR2007','2007-01-01',2007,'2007-12-31',2007,0,0,1,1,48,49,1,14,1,NULL,NULL,1,'2019-01-26 13:53:24');
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

-- Dump completed on 2019-01-29 13:58:21
