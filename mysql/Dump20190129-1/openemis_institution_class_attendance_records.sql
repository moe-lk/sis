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
-- Table structure for table `institution_class_attendance_records`
--

DROP TABLE IF EXISTS `institution_class_attendance_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_class_attendance_records` (
  `institution_class_id` int(11) NOT NULL COMMENT 'link to institution_classes.id',
  `academic_period_id` int(11) NOT NULL COMMENT 'link to academic_period.id',
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL COMMENT 'Jan = 1, Dec = 12',
  `day_1` int(1) NOT NULL DEFAULT '0',
  `day_2` int(1) NOT NULL DEFAULT '0',
  `day_3` int(1) NOT NULL DEFAULT '0',
  `day_4` int(1) NOT NULL DEFAULT '0',
  `day_5` int(1) NOT NULL DEFAULT '0',
  `day_6` int(1) NOT NULL DEFAULT '0',
  `day_7` int(1) NOT NULL DEFAULT '0',
  `day_8` int(1) NOT NULL DEFAULT '0',
  `day_9` int(1) NOT NULL DEFAULT '0',
  `day_10` int(1) NOT NULL DEFAULT '0',
  `day_11` int(1) NOT NULL DEFAULT '0',
  `day_12` int(1) NOT NULL DEFAULT '0',
  `day_13` int(1) NOT NULL DEFAULT '0',
  `day_14` int(1) NOT NULL DEFAULT '0',
  `day_15` int(1) NOT NULL DEFAULT '0',
  `day_16` int(1) NOT NULL DEFAULT '0',
  `day_17` int(1) NOT NULL DEFAULT '0',
  `day_18` int(1) NOT NULL DEFAULT '0',
  `day_19` int(1) NOT NULL DEFAULT '0',
  `day_20` int(1) NOT NULL DEFAULT '0',
  `day_21` int(1) NOT NULL DEFAULT '0',
  `day_22` int(1) NOT NULL DEFAULT '0',
  `day_23` int(1) NOT NULL DEFAULT '0',
  `day_24` int(1) NOT NULL DEFAULT '0',
  `day_25` int(1) NOT NULL DEFAULT '0',
  `day_26` int(1) NOT NULL DEFAULT '0',
  `day_27` int(1) NOT NULL DEFAULT '0',
  `day_28` int(1) NOT NULL DEFAULT '0',
  `day_29` int(1) NOT NULL DEFAULT '0',
  `day_30` int(1) NOT NULL DEFAULT '0',
  `day_31` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`institution_class_id`,`academic_period_id`,`year`,`month`),
  KEY `institution_class_id` (`institution_class_id`),
  KEY `academic_period_id` (`academic_period_id`),
  KEY `year` (`year`),
  KEY `month` (`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This table contains the whether the class attendance is marked for a month';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_class_attendance_records`
--

LOCK TABLES `institution_class_attendance_records` WRITE;
/*!40000 ALTER TABLE `institution_class_attendance_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_class_attendance_records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:41
