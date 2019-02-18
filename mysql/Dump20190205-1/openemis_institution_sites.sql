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
-- Table structure for table `institution_sites`
--

DROP TABLE IF EXISTS `institution_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `alternative_name` varchar(150) NOT NULL,
  `code` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `date_opened` date NOT NULL,
  `year_opened` int(4) NOT NULL,
  `date_closed` date DEFAULT NULL,
  `year_closed` int(4) DEFAULT NULL,
  `longitude` varchar(15) DEFAULT NULL,
  `latitude` varchar(15) DEFAULT NULL,
  `institution_site_area_id` int(11) DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `area_administrative_id` int(11) DEFAULT NULL,
  `institution_id` int(11) NOT NULL,
  `institution_site_locality_id` int(11) NOT NULL,
  `institution_site_type_id` int(11) NOT NULL,
  `institution_site_ownership_id` int(11) NOT NULL,
  `institution_site_status_id` int(11) NOT NULL,
  `institution_site_sector_id` int(11) NOT NULL,
  `institution_site_provider_id` int(11) NOT NULL,
  `institution_site_gender_id` int(5) NOT NULL,
  `security_group_id` int(11) NOT NULL DEFAULT '0',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `area_id` (`area_id`),
  KEY `institution_id` (`institution_id`),
  KEY `institution_site_provider_id` (`institution_site_provider_id`),
  KEY `institution_site_sector_id` (`institution_site_sector_id`),
  KEY `institution_site_gender_id` (`institution_site_gender_id`),
  KEY `security_group_id` (`security_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_sites`
--

LOCK TABLES `institution_sites` WRITE;
/*!40000 ALTER TABLE `institution_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_sites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 16:33:49
