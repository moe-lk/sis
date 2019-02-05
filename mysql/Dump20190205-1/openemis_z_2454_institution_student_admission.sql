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
-- Table structure for table `z_2454_institution_student_admission`
--

DROP TABLE IF EXISTS `z_2454_institution_student_admission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_2454_institution_student_admission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `requested_date` date DEFAULT NULL,
  `student_id` int(11) NOT NULL COMMENT 'links to security_users.id',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0 -> New, 1 -> Approve, 2 -> Reject, 3 -> Undo',
  `institution_id` int(11) NOT NULL COMMENT 'links to institutions.id',
  `academic_period_id` int(11) NOT NULL COMMENT 'links to academic_periods.id',
  `education_grade_id` int(11) NOT NULL COMMENT 'links to education_grades.id',
  `new_education_grade_id` int(11) DEFAULT NULL COMMENT 'links to education_grades.id',
  `institution_class_id` int(11) DEFAULT NULL COMMENT 'links to institution_classes.id',
  `previous_institution_id` int(11) NOT NULL COMMENT 'links to institutions.id',
  `student_transfer_reason_id` int(11) NOT NULL COMMENT 'links to student_transfer_reasons.id',
  `comment` text COLLATE utf8mb4_unicode_ci,
  `type` int(1) NOT NULL DEFAULT '2' COMMENT '1 -> Admission, 2 -> Transfer',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `institution_id` (`institution_id`),
  KEY `academic_period_id` (`academic_period_id`),
  KEY `education_grade_id` (`education_grade_id`),
  KEY `new_education_grade_id` (`new_education_grade_id`),
  KEY `institution_class_id` (`institution_class_id`),
  KEY `previous_institution_id` (`previous_institution_id`),
  KEY `student_transfer_reason_id` (`student_transfer_reason_id`),
  KEY `modified_user_id` (`modified_user_id`),
  KEY `created_user_id` (`created_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This table contains student admission records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_2454_institution_student_admission`
--

LOCK TABLES `z_2454_institution_student_admission` WRITE;
/*!40000 ALTER TABLE `z_2454_institution_student_admission` DISABLE KEYS */;
/*!40000 ALTER TABLE `z_2454_institution_student_admission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 16:33:44
