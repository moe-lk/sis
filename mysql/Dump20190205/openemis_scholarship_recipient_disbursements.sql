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
-- Table structure for table `scholarship_recipient_disbursements`
--

DROP TABLE IF EXISTS `scholarship_recipient_disbursements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scholarship_recipient_disbursements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disbursement_date` date NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `scholarship_semester_id` int(11) NOT NULL COMMENT 'links to scholarship_semesters.id',
  `scholarship_disbursement_category_id` int(11) DEFAULT NULL COMMENT 'links to scholarship_disbursement_categories.id',
  `scholarship_recipient_payment_structure_id` int(11) NOT NULL COMMENT 'links to scholarship_recipient_payment_structures.id',
  `recipient_id` int(11) NOT NULL COMMENT 'links to security_users.id',
  `scholarship_id` int(11) NOT NULL COMMENT 'links to scholarships.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `scholarship_semester_id` (`scholarship_semester_id`),
  KEY `scholarship_disbursement_category_id` (`scholarship_disbursement_category_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `scholarship_id` (`scholarship_id`),
  KEY `modified_user_id` (`modified_user_id`),
  KEY `created_user_id` (`created_user_id`),
  KEY `scholarship_recipient_payment_structure_id` (`scholarship_recipient_payment_structure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This table contains the list of disbursements linked to specific scholarship recipient';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scholarship_recipient_disbursements`
--

LOCK TABLES `scholarship_recipient_disbursements` WRITE;
/*!40000 ALTER TABLE `scholarship_recipient_disbursements` DISABLE KEYS */;
/*!40000 ALTER TABLE `scholarship_recipient_disbursements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 10:02:24
