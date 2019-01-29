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
-- Table structure for table `appraisal_dropdown_answers`
--

DROP TABLE IF EXISTS `appraisal_dropdown_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appraisal_dropdown_answers` (
  `appraisal_form_id` int(11) NOT NULL COMMENT 'links to appraisal_forms.id',
  `appraisal_criteria_id` int(11) NOT NULL COMMENT 'links to appraisal_criterias.id',
  `institution_staff_appraisal_id` int(11) NOT NULL COMMENT 'links to institution_staff_appraisals.id',
  `answer` int(11) DEFAULT NULL COMMENT 'links to appraisal_dropdown_options.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`appraisal_form_id`,`appraisal_criteria_id`,`institution_staff_appraisal_id`),
  KEY `appraisal_form_id` (`appraisal_form_id`),
  KEY `appraisal_criteria_id` (`appraisal_criteria_id`),
  KEY `institution_staff_appraisal_id` (`institution_staff_appraisal_id`),
  KEY `answer` (`answer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This table contains the dropdown answers recorded for a specific institution staff appraisal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appraisal_dropdown_answers`
--

LOCK TABLES `appraisal_dropdown_answers` WRITE;
/*!40000 ALTER TABLE `appraisal_dropdown_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `appraisal_dropdown_answers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:25
