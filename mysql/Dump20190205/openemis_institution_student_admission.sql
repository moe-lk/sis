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
-- Table structure for table `institution_student_admission`
--

DROP TABLE IF EXISTS `institution_student_admission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_student_admission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'links to security_users.id',
  `status_id` int(11) NOT NULL COMMENT 'links to workflow_steps.id',
  `assignee_id` int(11) NOT NULL DEFAULT '0' COMMENT 'links to security_users.id',
  `institution_id` int(11) NOT NULL COMMENT 'links to institutions.id',
  `academic_period_id` int(11) NOT NULL COMMENT 'links to academic_periods.id',
  `education_grade_id` int(11) NOT NULL COMMENT 'links to education_grades.id',
  `institution_class_id` int(11) DEFAULT NULL COMMENT 'links to institution_classes.id',
  `comment` text COLLATE utf8mb4_unicode_ci,
  `modified_user_id` int(11) DEFAULT NULL COMMENT 'links to security_users.id',
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL COMMENT 'links to security_users.id',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `status_id` (`status_id`),
  KEY `assignee_id` (`assignee_id`),
  KEY `institution_id` (`institution_id`),
  KEY `academic_period_id` (`academic_period_id`),
  KEY `education_grade_id` (`education_grade_id`),
  KEY `institution_class_id` (`institution_class_id`),
  KEY `modified_user_id` (`modified_user_id`),
  KEY `created_user_id` (`created_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This table contains all the student admission requests';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_student_admission`
--

LOCK TABLES `institution_student_admission` WRITE;
/*!40000 ALTER TABLE `institution_student_admission` DISABLE KEYS */;
INSERT INTO `institution_student_admission` VALUES (5,'2019-01-01','2019-12-31',43,21,1,1,2,1,1,NULL,1,'2019-01-30 10:19:05',1,'2019-01-29 07:44:25'),(6,'2019-01-01','2019-12-31',44,21,1,1,2,1,1,NULL,1,'2019-01-30 10:19:56',1,'2019-01-29 07:45:53'),(8,'2019-01-01','2019-12-31',46,21,1,2,2,1,6,NULL,1,'2019-01-31 10:44:40',1,'2019-01-29 08:01:23'),(10,'2019-01-01','2019-12-31',48,21,1,2,2,1,6,'',1,'2019-01-31 10:42:25',1,'2019-01-29 08:23:40'),(11,'2019-01-01','2019-12-31',49,21,1,2,2,1,6,NULL,1,'2019-01-31 10:43:31',1,'2019-01-29 08:27:05'),(12,'2019-01-01','2019-12-31',53,21,1,2,2,1,8,'',1,'2019-01-31 10:43:03',38,'2019-01-30 09:28:31'),(18,'2019-01-01','2019-12-31',58,24,1,2,2,1,8,NULL,1,'2019-01-30 11:19:21',1,'2019-01-30 11:19:21'),(19,'2019-01-01','2019-12-31',59,21,1,2,2,1,8,NULL,1,'2019-01-30 11:23:03',1,'2019-01-30 11:23:03'),(20,'2019-01-01','2019-12-31',60,21,1,2,2,1,8,NULL,1,'2019-01-30 11:30:22',1,'2019-01-30 11:30:22'),(21,'2019-01-01','2019-12-31',61,21,1,2,2,1,8,NULL,1,'2019-01-30 11:32:22',1,'2019-01-30 11:32:22'),(22,'2019-01-01','2019-12-31',62,21,1,2,2,1,8,NULL,1,'2019-01-30 11:34:14',1,'2019-01-30 11:34:14'),(23,'2019-01-01','2019-12-31',63,21,1,2,2,1,8,'',1,'2019-01-30 19:33:45',1,'2019-01-30 11:40:16'),(24,'2019-01-01','2019-12-31',64,21,1,2,2,1,8,NULL,1,'2019-01-30 11:43:32',1,'2019-01-30 11:43:32'),(25,'2019-01-01','2019-12-31',65,21,1,2,2,1,8,NULL,1,'2019-01-30 11:45:20',1,'2019-01-30 11:45:20'),(26,'2019-01-01','2019-12-31',66,21,1,2,2,1,8,NULL,1,'2019-01-30 11:50:43',1,'2019-01-30 11:50:43'),(29,'2019-01-01','2019-12-31',57,21,1,2,2,1,8,NULL,1,'2019-01-30 12:03:36',1,'2019-01-30 12:03:36'),(30,'2019-01-01','2019-12-31',57,21,1,2,2,1,8,NULL,1,'2019-01-30 12:04:54',1,'2019-01-30 12:04:54'),(96,'2019-01-01','2019-12-31',45,124,0,2,2,1,8,NULL,1,'2019-01-31 10:33:08',1,'2019-01-31 10:33:08'),(97,'2019-01-01','2019-12-31',70,124,0,2,2,1,8,NULL,1,'2019-01-31 10:43:57',1,'2019-01-31 10:43:57'),(98,'2019-01-01','2019-12-31',71,124,0,2,2,1,8,NULL,38,'2019-01-31 10:46:47',38,'2019-01-31 10:46:47'),(99,'2019-01-01','2019-12-31',46,124,0,2,2,1,8,NULL,38,'2019-01-31 10:47:24',38,'2019-01-31 10:47:24'),(100,'2019-01-01','2019-12-31',72,124,0,2,2,1,8,NULL,38,'2019-01-31 10:48:48',38,'2019-01-31 10:48:48'),(101,'2019-01-01','2019-12-31',79,124,78,8,2,1,9,NULL,77,'2019-02-02 14:18:37',77,'2019-02-02 14:18:37');
/*!40000 ALTER TABLE `institution_student_admission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 10:02:21
