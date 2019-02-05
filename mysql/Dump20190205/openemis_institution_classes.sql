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
-- Table structure for table `institution_classes`
--

DROP TABLE IF EXISTS `institution_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `class_number` int(11) DEFAULT NULL COMMENT 'This column is being used to determine whether this class is a multi-grade or single-grade.',
  `total_male_students` int(5) NOT NULL DEFAULT '0',
  `total_female_students` int(5) NOT NULL DEFAULT '0',
  `staff_id` int(11) DEFAULT '0' COMMENT 'links to security_users.id',
  `secondary_staff_id` int(11) DEFAULT NULL,
  `institution_shift_id` int(11) NOT NULL COMMENT 'links to institution_shifts.id',
  `institution_id` int(11) NOT NULL COMMENT 'links to institutions.id',
  `academic_period_id` int(11) NOT NULL COMMENT 'links to academic_periods.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `academic_period_id` (`academic_period_id`),
  KEY `institution_shift_id` (`institution_shift_id`),
  KEY `institution_id` (`institution_id`),
  KEY `secondary_staff_id` (`secondary_staff_id`),
  KEY `total_male_students` (`total_male_students`),
  KEY `total_female_students` (`total_female_students`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_classes`
--

LOCK TABLES `institution_classes` WRITE;
/*!40000 ALTER TABLE `institution_classes` DISABLE KEYS */;
INSERT INTO `institution_classes` VALUES (1,'Grade 1-A',1,0,0,0,0,1,1,2,1,'2019-01-26 14:44:41',1,'2019-01-26 14:16:33'),(2,'Grade 1-B',2,0,0,0,0,1,1,2,NULL,NULL,1,'2019-01-26 14:16:33'),(3,'Grade 1-C',3,0,0,0,0,1,1,2,NULL,NULL,1,'2019-01-26 14:16:33'),(4,'Grade 1-D',4,0,0,0,0,1,1,2,NULL,NULL,1,'2019-01-26 14:45:22'),(8,'Grade 1-A',1,5,0,51,0,4,2,2,1,'2019-02-02 11:25:43',38,'2019-01-30 09:26:33'),(9,'Grade 1-A',1,1,0,0,0,5,8,2,NULL,NULL,77,'2019-02-02 14:16:17'),(10,'Grade 1-B',2,0,0,0,0,5,8,2,NULL,NULL,77,'2019-02-02 14:16:17'),(11,'Grade 1-C',3,0,0,0,0,5,8,2,NULL,NULL,77,'2019-02-02 14:16:17'),(12,'Grade 1-D',4,0,0,0,0,5,8,2,NULL,NULL,77,'2019-02-02 14:16:17');
/*!40000 ALTER TABLE `institution_classes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 10:02:26
