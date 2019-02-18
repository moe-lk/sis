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
-- Table structure for table `z_4125_security_users`
--

DROP TABLE IF EXISTS `z_4125_security_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_4125_security_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL DEFAULT '',
  `openemis_no` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `third_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `preferred_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text,
  `postal_code` varchar(20) DEFAULT NULL,
  `address_area_id` int(11) DEFAULT NULL COMMENT 'links to area_administratives.id',
  `birthplace_area_id` int(11) DEFAULT NULL COMMENT 'links to area_administratives.id',
  `gender_id` int(1) NOT NULL COMMENT 'links to genders.id',
  `date_of_birth` date NOT NULL,
  `date_of_death` date DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `identity_type_id` int(11) DEFAULT NULL,
  `identity_number` varchar(50) DEFAULT NULL,
  `external_reference` varchar(50) DEFAULT NULL,
  `super_admin` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0 -> Inactive, 1 -> Active',
  `last_login` datetime DEFAULT NULL,
  `photo_name` varchar(250) DEFAULT '',
  `photo_content` longblob,
  `preferred_language` varchar(2) DEFAULT NULL,
  `is_student` int(1) NOT NULL DEFAULT '0',
  `is_staff` int(1) NOT NULL DEFAULT '0',
  `is_guardian` int(1) NOT NULL DEFAULT '0',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `openemis_no` (`openemis_no`),
  KEY `openemis_no_2` (`openemis_no`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`),
  KEY `gender_id` (`gender_id`),
  KEY `address_area_id` (`address_area_id`),
  KEY `birthplace_area_id` (`birthplace_area_id`),
  KEY `status` (`status`),
  KEY `middle_name` (`middle_name`),
  KEY `third_name` (`third_name`),
  KEY `is_student` (`is_student`),
  KEY `is_staff` (`is_staff`),
  KEY `is_guardian` (`is_guardian`),
  KEY `super_admin` (`super_admin`),
  KEY `identity_number` (`identity_number`),
  KEY `username` (`username`),
  KEY `is_student_2` (`is_student`,`first_name`,`last_name`,`gender_id`,`date_of_birth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_4125_security_users`
--

LOCK TABLES `z_4125_security_users` WRITE;
/*!40000 ALTER TABLE `z_4125_security_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `z_4125_security_users` ENABLE KEYS */;
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
