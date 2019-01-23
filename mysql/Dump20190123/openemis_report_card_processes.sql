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
-- Table structure for table `report_card_processes`
--

DROP TABLE IF EXISTS `report_card_processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_card_processes` (
  `report_card_id` int(11) NOT NULL COMMENT 'links to report_cards.id',
  `institution_class_id` int(11) NOT NULL COMMENT 'links to institution_classes.id',
  `student_id` int(11) NOT NULL COMMENT 'links to security_users.id',
  `status` int(2) NOT NULL COMMENT '1 => New 2 => Running 3 => Completed -1 => Error',
  `institution_id` int(11) NOT NULL COMMENT 'links to institutions.id',
  `education_grade_id` int(11) NOT NULL COMMENT 'links to education_grades.id',
  `academic_period_id` int(11) NOT NULL COMMENT 'links to academic_periods.id',
  `created` datetime NOT NULL,
  PRIMARY KEY (`report_card_id`,`institution_class_id`,`student_id`),
  KEY `report_card_id` (`report_card_id`),
  KEY `institution_class_id` (`institution_class_id`),
  KEY `student_id` (`student_id`),
  KEY `institution_id` (`institution_id`),
  KEY `education_grade_id` (`education_grade_id`),
  KEY `academic_period_id` (`academic_period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Internal use - to track the report card processes currenly running';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_card_processes`
--

LOCK TABLES `report_card_processes` WRITE;
/*!40000 ALTER TABLE `report_card_processes` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_card_processes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-23  9:30:57
