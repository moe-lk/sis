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
-- Table structure for table `scholarship_application_institution_choices`
--

DROP TABLE IF EXISTS `scholarship_application_institution_choices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scholarship_application_institution_choices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DOMESTIC, INTERNATIONAL',
  `institution_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estimated_cost` decimal(15,2) NOT NULL,
  `course_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_selected` int(1) NOT NULL DEFAULT '0' COMMENT '0 -> No, 1 -> Yes',
  `order` int(3) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0' COMMENT 'links to countries.id',
  `scholarship_institution_choice_status_id` int(11) NOT NULL COMMENT 'links to scholarship_institution_choice_statuses.id',
  `education_field_of_study_id` int(11) NOT NULL COMMENT 'links to education_field_of_studies.id',
  `qualification_level_id` int(11) NOT NULL COMMENT 'links to qualification_levels.id',
  `applicant_id` int(11) NOT NULL COMMENT 'links to security_users.id',
  `scholarship_id` int(11) NOT NULL COMMENT 'links to scholarships.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  KEY `scholarship_institution_choice_status_id` (`scholarship_institution_choice_status_id`),
  KEY `education_field_of_study_id` (`education_field_of_study_id`),
  KEY `qualification_level_id` (`qualification_level_id`),
  KEY `applicant_id` (`applicant_id`),
  KEY `scholarship_id` (`scholarship_id`),
  KEY `modified_user_id` (`modified_user_id`),
  KEY `created_user_id` (`created_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This table contains the list of institution choices linked to specific scholarship application';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scholarship_application_institution_choices`
--

LOCK TABLES `scholarship_application_institution_choices` WRITE;
/*!40000 ALTER TABLE `scholarship_application_institution_choices` DISABLE KEYS */;
/*!40000 ALTER TABLE `scholarship_application_institution_choices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 16:33:46
