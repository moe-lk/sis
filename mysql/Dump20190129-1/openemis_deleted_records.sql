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
-- Table structure for table `deleted_records`
--

DROP TABLE IF EXISTS `deleted_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deleted_records` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `deleted_date` int(8) NOT NULL,
  `reference_table` varchar(50) NOT NULL,
  `reference_key` text NOT NULL,
  `data` mediumtext NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`,`deleted_date`),
  KEY `reference_table` (`reference_table`),
  KEY `deleted_date` (`deleted_date`),
  KEY `created_user_id` (`created_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleted_records`
--

LOCK TABLES `deleted_records` WRITE;
/*!40000 ALTER TABLE `deleted_records` DISABLE KEYS */;
INSERT INTO `deleted_records` VALUES (1,20190123,'Area.Areas','43','{\"id\":43,\"code\":\"RATNAPURA\",\"name\":\"RATNAPURA\",\"parent_id\":8,\"lft\":53,\"rght\":54,\"area_level_id\":3,\"order\":9,\"visible\":1,\"modified_user_id\":null,\"modified\":null,\"created_user_id\":1,\"created\":\"2019-01-23T09:01:42+00:00\",\"code_name\":\"RATNAPURA - RATNAPURA\"}',1,'2019-01-23 09:02:01'),(2,20190123,'Area.Areas','126','{\"id\":126,\"code\":\"GAMPAHA - D\",\"name\":\"GAMPAHA\",\"parent_id\":18,\"lft\":46,\"rght\":47,\"area_level_id\":4,\"order\":2,\"visible\":1,\"modified_user_id\":null,\"modified\":null,\"created_user_id\":1,\"created\":\"2019-01-23T09:28:24+00:00\",\"code_name\":\"GAMPAHA - D - GAMPAHA\"}',1,'2019-01-23 09:29:02'),(3,20190123,'Area.Areas','127','{\"id\":127,\"code\":\"ATTANAGALLA\",\"name\":\"ATTANAGALLA\",\"parent_id\":18,\"lft\":46,\"rght\":47,\"area_level_id\":4,\"order\":2,\"visible\":1,\"modified_user_id\":null,\"modified\":null,\"created_user_id\":1,\"created\":\"2019-01-23T09:28:38+00:00\",\"code_name\":\"ATTANAGALLA - ATTANAGALLA\"}',1,'2019-01-23 09:29:07'),(6,20190127,'Institution.InstitutionShifts','2','{\"id\":2,\"start_time\":\"2019-01-27T10:45:00+00:00\",\"end_time\":\"2019-01-27T13:45:00+00:00\",\"academic_period_id\":2,\"institution_id\":1,\"location_institution_id\":1,\"shift_option_id\":2,\"previous_shift_id\":0,\"modified_user_id\":null,\"modified\":null,\"created_user_id\":1,\"created\":\"2019-01-26T14:16:08+00:00\"}',1,'2019-01-27 17:31:54'),(10,20190128,'Security.SecurityGroupAreas','{\"security_group_id\":4,\"area_id\":2}','{\"security_group_id\":4,\"area_id\":2,\"created_user_id\":1,\"created\":\"2019-01-27T18:03:26+00:00\"}',1,'2019-01-28 06:23:25'),(11,20190128,'Institution.InstitutionClasses','5','{\"id\":5,\"name\":\"Grade 1-A\",\"class_number\":1,\"total_male_students\":0,\"total_female_students\":0,\"staff_id\":0,\"secondary_staff_id\":0,\"institution_shift_id\":3,\"institution_id\":2,\"academic_period_id\":2,\"modified_user_id\":null,\"modified\":null,\"created_user_id\":38,\"created\":\"2019-01-27T18:08:37+00:00\"}',38,'2019-01-28 06:36:10'),(12,20190128,'Institution.InstitutionGrades','4','{\"id\":4,\"education_grade_id\":1,\"start_date\":\"2019-01-22T00:00:00+00:00\",\"start_year\":2019,\"end_date\":\"2019-12-31T00:00:00+00:00\",\"end_year\":2019,\"institution_id\":2,\"modified_user_id\":null,\"modified\":null,\"created_user_id\":38,\"created\":\"2019-01-27T18:08:20+00:00\"}',38,'2019-01-28 06:36:20'),(13,20190128,'Institution.InstitutionShifts','3','{\"id\":3,\"start_time\":\"2019-01-28T07:00:00+00:00\",\"end_time\":\"2019-01-28T11:00:00+00:00\",\"academic_period_id\":2,\"institution_id\":2,\"location_institution_id\":2,\"shift_option_id\":1,\"previous_shift_id\":0,\"modified_user_id\":null,\"modified\":null,\"created_user_id\":38,\"created\":\"2019-01-27T18:07:27+00:00\"}',38,'2019-01-28 06:36:38');
/*!40000 ALTER TABLE `deleted_records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:19
