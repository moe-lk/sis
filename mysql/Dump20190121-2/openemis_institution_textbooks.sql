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
-- Table structure for table `institution_textbooks`
--

DROP TABLE IF EXISTS `institution_textbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_textbooks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academic_period_id` int(11) NOT NULL COMMENT 'links to academic_period.id',
  `code` varchar(100) DEFAULT NULL,
  `comment` text,
  `textbook_status_id` int(11) DEFAULT NULL COMMENT 'links to textbook_statuses.id',
  `textbook_condition_id` int(11) DEFAULT NULL COMMENT 'links to textbook_conditions.id',
  `institution_id` int(11) NOT NULL COMMENT 'links to institutions.id',
  `education_grade_id` int(11) NOT NULL,
  `education_subject_id` int(11) NOT NULL COMMENT 'links to education_subjects.id',
  `student_id` int(11) DEFAULT NULL COMMENT 'links to security_users.id',
  `textbook_id` int(11) NOT NULL COMMENT 'links to textbooks.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`,`academic_period_id`),
  KEY `institution_id` (`institution_id`),
  KEY `education_subject_id` (`education_subject_id`),
  KEY `student_id` (`student_id`),
  KEY `textbook_id` (`textbook_id`),
  KEY `textbook_status_id` (`textbook_status_id`),
  KEY `textbook_condition_id` (`textbook_condition_id`),
  KEY `modified_user_id` (`modified_user_id`),
  KEY `created_user_id` (`created_user_id`),
  KEY `education_grade_id` (`education_grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_textbooks`
--

LOCK TABLES `institution_textbooks` WRITE;
/*!40000 ALTER TABLE `institution_textbooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_textbooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-21 21:45:18
