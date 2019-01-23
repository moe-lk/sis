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
-- Table structure for table `assessment_item_results`
--

DROP TABLE IF EXISTS `assessment_item_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assessment_item_results` (
  `student_id` int(11) NOT NULL COMMENT 'links to security_users.id',
  `assessment_id` int(11) NOT NULL COMMENT 'links to assessments.id',
  `education_subject_id` int(11) NOT NULL COMMENT 'links to education_subjects.id',
  `education_grade_id` int(11) NOT NULL COMMENT 'links to education_grades.id',
  `academic_period_id` int(11) NOT NULL COMMENT 'links to academic_periods.id',
  `assessment_period_id` int(11) NOT NULL COMMENT 'links to assessment_periods.id',
  `id` char(36) NOT NULL,
  `marks` decimal(6,2) DEFAULT NULL,
  `assessment_grading_option_id` int(11) DEFAULT NULL,
  `institution_id` int(11) NOT NULL COMMENT 'links to institutions.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`student_id`,`assessment_id`,`education_subject_id`,`education_grade_id`,`academic_period_id`,`assessment_period_id`),
  KEY `assessment_grading_option_id` (`assessment_grading_option_id`),
  KEY `student_id` (`student_id`),
  KEY `assessment_id` (`assessment_id`),
  KEY `education_subject_id` (`education_subject_id`),
  KEY `education_grade_id` (`education_grade_id`),
  KEY `academic_period_id` (`academic_period_id`),
  KEY `assessment_period_id` (`assessment_period_id`),
  KEY `institution_id` (`institution_id`),
  KEY `modified_user_id` (`modified_user_id`),
  KEY `created_user_id` (`created_user_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_item_results`
--

LOCK TABLES `assessment_item_results` WRITE;
/*!40000 ALTER TABLE `assessment_item_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessment_item_results` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-23  9:31:04
