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
-- Table structure for table `institution_site_staff`
--

DROP TABLE IF EXISTS `institution_site_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_site_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FTE` decimal(5,2) DEFAULT NULL,
  `start_date` date NOT NULL,
  `start_year` int(4) NOT NULL,
  `end_date` date DEFAULT NULL,
  `end_year` int(4) DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `staff_type_id` int(5) NOT NULL,
  `staff_status_id` int(3) NOT NULL,
  `institution_site_id` int(11) NOT NULL,
  `institution_site_position_id` int(11) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `staff_type_id` (`staff_type_id`),
  KEY `staff_status_id` (`staff_status_id`),
  KEY `institution_site_id` (`institution_site_id`),
  KEY `institution_site_position_id` (`institution_site_position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_site_staff`
--

LOCK TABLES `institution_site_staff` WRITE;
/*!40000 ALTER TABLE `institution_site_staff` DISABLE KEYS */;
INSERT INTO `institution_site_staff` VALUES (1,0.05,'2012-01-01',2012,NULL,NULL,5,3,0,1,1,NULL,NULL,1,'2014-12-09 21:30:10'),(2,0.05,'2013-01-01',2013,NULL,NULL,89,3,0,1,4,NULL,NULL,1,'2014-12-09 21:31:43'),(3,0.05,'2013-01-02',2013,NULL,NULL,18,3,0,1,2,NULL,NULL,1,'2014-12-09 21:32:19'),(4,0.05,'2013-12-01',2013,NULL,NULL,48,3,0,1,3,NULL,NULL,1,'2014-12-09 21:32:55'),(5,0.05,'2014-08-01',2014,NULL,NULL,67,3,0,1,3,NULL,NULL,1,'2014-12-09 21:33:20'),(6,0.05,'2009-12-27',2009,NULL,NULL,101,3,0,4,5,1,'2015-03-16 14:15:42',1,'2015-03-16 14:14:54');
/*!40000 ALTER TABLE `institution_site_staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 10:02:13
