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
-- Table structure for table `institution_site_positions`
--

DROP TABLE IF EXISTS `institution_site_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_site_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_no` varchar(30) NOT NULL,
  `status` int(1) NOT NULL,
  `type` int(1) NOT NULL COMMENT '0-Non-Teaching / 1-Teacher ',
  `staff_position_title_id` int(11) NOT NULL,
  `staff_position_grade_id` int(11) NOT NULL,
  `institution_site_id` int(11) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_site_positions`
--

LOCK TABLES `institution_site_positions` WRITE;
/*!40000 ALTER TABLE `institution_site_positions` DISABLE KEYS */;
INSERT INTO `institution_site_positions` VALUES (1,'Principal',1,0,226,230,1,1,'2014-12-09 21:28:03',1,'2014-12-09 21:26:36'),(2,'Home Tutor',1,1,224,230,1,1,'2014-12-09 21:33:37',1,'2014-12-09 21:26:54'),(3,'Teacher',1,1,225,230,1,1,'2014-12-09 21:27:12',1,'2014-12-09 21:27:05'),(4,'School Admin',1,0,225,231,1,NULL,NULL,1,'2014-12-09 21:27:47'),(5,'Teacher',1,1,224,230,4,NULL,NULL,1,'2015-03-16 14:14:34');
/*!40000 ALTER TABLE `institution_site_positions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:20
