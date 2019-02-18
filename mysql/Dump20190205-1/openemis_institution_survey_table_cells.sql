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
-- Table structure for table `institution_survey_table_cells`
--

DROP TABLE IF EXISTS `institution_survey_table_cells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_survey_table_cells` (
  `text_value` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_value` int(11) DEFAULT NULL,
  `decimal_value` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `survey_question_id` int(11) NOT NULL COMMENT 'links to survey_questions.id',
  `survey_table_column_id` int(11) NOT NULL COMMENT 'links to survey_table_columns.id',
  `survey_table_row_id` int(11) NOT NULL COMMENT 'links to survey_table_rows.id',
  `institution_survey_id` int(11) NOT NULL COMMENT 'links to institution_surveys.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`survey_question_id`,`survey_table_column_id`,`survey_table_row_id`,`institution_survey_id`),
  KEY `survey_question_id` (`survey_question_id`),
  KEY `survey_table_column_id` (`survey_table_column_id`),
  KEY `survey_table_row_id` (`survey_table_row_id`),
  KEY `institution_survey_id` (`institution_survey_id`),
  KEY `modified_user_id` (`modified_user_id`),
  KEY `created_user_id` (`created_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This table contains the values of a table-type question in a form';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_survey_table_cells`
--

LOCK TABLES `institution_survey_table_cells` WRITE;
/*!40000 ALTER TABLE `institution_survey_table_cells` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_survey_table_cells` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 16:33:51
