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
-- Table structure for table `institution_subject_students`
--

DROP TABLE IF EXISTS `institution_subject_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_subject_students` (
  `student_id` int(11) NOT NULL COMMENT 'links to security_users.id',
  `institution_class_id` int(11) NOT NULL COMMENT 'links to institution_classes.id',
  `institution_id` int(11) NOT NULL COMMENT 'links to institutions.id',
  `academic_period_id` int(11) NOT NULL COMMENT 'links to academic_periods.id',
  `education_subject_id` int(11) NOT NULL COMMENT 'links to education_subjects.id',
  `education_grade_id` int(11) NOT NULL COMMENT 'links to education_grades.id',
  `id` varchar(64) NOT NULL,
  `total_mark` decimal(6,2) DEFAULT NULL,
  `institution_subject_id` int(11) NOT NULL COMMENT 'links to institution_subjects.id',
  `student_status_id` int(11) NOT NULL COMMENT 'links to student_statuses.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`student_id`,`institution_class_id`,`institution_id`,`academic_period_id`,`education_subject_id`,`education_grade_id`),
  KEY `student_id` (`student_id`),
  KEY `institution_subject_id` (`institution_subject_id`),
  KEY `institution_class_id` (`institution_class_id`),
  KEY `institution_id` (`institution_id`),
  KEY `academic_period_id` (`academic_period_id`),
  KEY `education_subject_id` (`education_subject_id`),
  KEY `education_grade_id` (`education_grade_id`),
  KEY `student_status_id` (`student_status_id`),
  KEY `modified_user_id` (`modified_user_id`),
  KEY `created_user_id` (`created_user_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_subject_students`
--

LOCK TABLES `institution_subject_students` WRITE;
/*!40000 ALTER TABLE `institution_subject_students` DISABLE KEYS */;
INSERT INTO `institution_subject_students` VALUES (45,8,2,2,1,1,'a8bca46f388a96900fc984e4c2ea36f190d4b79bc9f1a7bda144610a3fa64995',NULL,6,1,NULL,NULL,1,'2019-01-31 10:33:08'),(46,8,2,2,1,1,'94d5a3ede1c3511abf57a395192b13dafe3d385aafe5f54f5f57f32711ded624',NULL,6,1,NULL,NULL,38,'2019-01-31 10:47:24'),(70,8,2,2,1,1,'e49e22ac6ca036fea937c00b5f86b75964111e528de6d8cf123850b98262e392',NULL,6,1,NULL,NULL,1,'2019-01-31 10:43:57'),(71,8,2,2,1,1,'192e1a2439c00deb1ee0576a687fb79a0db1b40427f0474c1b372010b06aab91',NULL,6,1,NULL,NULL,38,'2019-01-31 10:46:47'),(72,8,2,2,1,1,'3d8b5f29002eabd667b4698cc0145a757fbfb882c734c2b48614a211bb955743',NULL,6,1,NULL,NULL,38,'2019-01-31 10:48:48'),(79,9,8,2,1,1,'645f1f11516ab3a15ad33ae01652710cd25bbf1a571b0c936ffc2fc16ff4b569',NULL,7,1,NULL,NULL,77,'2019-02-02 14:18:37');
/*!40000 ALTER TABLE `institution_subject_students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 10:02:20
