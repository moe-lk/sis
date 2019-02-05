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
-- Table structure for table `institution_class_students`
--

DROP TABLE IF EXISTS `institution_class_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_class_students` (
  `student_id` int(11) NOT NULL COMMENT 'links to security_users.id',
  `institution_class_id` int(11) NOT NULL COMMENT 'links to institution_classes.id',
  `education_grade_id` int(11) NOT NULL COMMENT 'links to education_grades.id',
  `id` char(36) NOT NULL,
  `academic_period_id` int(11) NOT NULL COMMENT 'links to academic_periods.id',
  `institution_id` int(11) NOT NULL COMMENT 'links to institutions.id',
  `student_status_id` int(11) NOT NULL COMMENT 'links to student_statuses.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`student_id`,`institution_class_id`,`education_grade_id`),
  UNIQUE KEY `id` (`id`),
  KEY `academic_period_id` (`academic_period_id`),
  KEY `institution_id` (`institution_id`),
  KEY `student_status_id` (`student_status_id`),
  KEY `student_id` (`student_id`),
  KEY `institution_class_id` (`institution_class_id`),
  KEY `education_grade_id` (`education_grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_class_students`
--

LOCK TABLES `institution_class_students` WRITE;
/*!40000 ALTER TABLE `institution_class_students` DISABLE KEYS */;
INSERT INTO `institution_class_students` VALUES (45,8,1,'1a72f487-7461-4dd5-8b16-594cf3cddd31',2,2,1,NULL,NULL,1,'2019-01-31 10:33:08'),(46,8,1,'a3815cba-1a7f-47dc-b5d5-35c08a95df17',2,2,1,NULL,NULL,38,'2019-01-31 10:47:24'),(70,8,1,'960630ba-98bf-4c33-b5c2-e5d0c683398b',2,2,1,NULL,NULL,1,'2019-01-31 10:43:57'),(71,8,1,'d3b6777a-1c67-47fe-ab73-03d45f04e9a7',2,2,1,NULL,NULL,38,'2019-01-31 10:46:47'),(72,8,1,'96714db4-7f81-4044-be3f-edb165ed9a0d',2,2,1,NULL,NULL,38,'2019-01-31 10:48:48'),(79,9,1,'9c1dce47-2b2f-4876-a466-0e11e2d970a3',2,8,1,NULL,NULL,77,'2019-02-02 14:18:37');
/*!40000 ALTER TABLE `institution_class_students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 10:02:41
