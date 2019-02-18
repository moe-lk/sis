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
-- Table structure for table `z_4253_institutions`
--

DROP TABLE IF EXISTS `z_4253_institutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_4253_institutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `alternative_name` varchar(150) DEFAULT NULL,
  `code` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
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
  `logo_name` varchar(250) DEFAULT NULL,
  `logo_content` longblob,
  `shift_type` int(11) NOT NULL COMMENT '1=Single Shift Owner, 2=Single Shift Occupier, 3=Multiple Shift Owner, 4=Multiple Shift Occupier',
  `classification` int(1) NOT NULL DEFAULT '1' COMMENT '1 -> Academic Institution, 2 -> Non-academic institution',
  `area_id` int(11) NOT NULL COMMENT 'links to areas.id',
  `area_administrative_id` int(11) DEFAULT NULL,
  `institution_locality_id` int(11) NOT NULL COMMENT 'links to institution_localities.id',
  `institution_type_id` int(11) NOT NULL COMMENT 'links to institution_types.id',
  `institution_ownership_id` int(11) NOT NULL COMMENT 'links to institution_ownerships.id',
  `institution_status_id` int(11) NOT NULL COMMENT 'links to institution_statuses.id',
  `institution_sector_id` int(11) NOT NULL COMMENT 'links to institution_sectors.id',
  `institution_provider_id` int(11) NOT NULL COMMENT 'links to institution_providers.id',
  `institution_gender_id` int(5) NOT NULL COMMENT 'links to institution_genders.id',
  `institution_network_connectivity_id` int(11) NOT NULL COMMENT 'links to institution_network_connectivities.id',
  `security_group_id` int(11) NOT NULL DEFAULT '0',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `area_id` (`area_id`),
  KEY `security_group_id` (`security_group_id`),
  KEY `institution_locality_id` (`institution_locality_id`),
  KEY `institution_type_id` (`institution_type_id`),
  KEY `institution_ownership_id` (`institution_ownership_id`),
  KEY `institution_status_id` (`institution_status_id`),
  KEY `institution_sector_id` (`institution_sector_id`),
  KEY `institution_provider_id` (`institution_provider_id`),
  KEY `institution_gender_id` (`institution_gender_id`),
  KEY `institution_network_connectivity_id` (`institution_network_connectivity_id`),
  KEY `area_administrative_id` (`area_administrative_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_4253_institutions`
--

LOCK TABLES `z_4253_institutions` WRITE;
/*!40000 ALTER TABLE `z_4253_institutions` DISABLE KEYS */;
/*!40000 ALTER TABLE `z_4253_institutions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:37
