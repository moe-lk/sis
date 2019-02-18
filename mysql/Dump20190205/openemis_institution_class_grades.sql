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
-- Table structure for table `institution_class_grades`
--

DROP TABLE IF EXISTS `institution_class_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_class_grades` (
  `id` char(36) NOT NULL,
  `institution_class_id` int(11) NOT NULL COMMENT 'links to institution_classes.id',
  `education_grade_id` int(11) NOT NULL COMMENT 'links to education_grades.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `institution_class_id` (`institution_class_id`),
  KEY `education_grade_id` (`education_grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_class_grades`
--

LOCK TABLES `institution_class_grades` WRITE;
/*!40000 ALTER TABLE `institution_class_grades` DISABLE KEYS */;
INSERT INTO `institution_class_grades` VALUES ('17b7c37b-cb8f-41ff-b8e8-f1c168396f72',1,1,NULL,NULL,1,'2019-01-26 14:16:33'),('4f5c559a-f832-42c1-ba2d-9b597ae5bade',3,1,NULL,NULL,1,'2019-01-26 14:16:33'),('50dd6eb1-fda0-452f-a9fd-1c9e5bf700ca',9,1,NULL,NULL,77,'2019-02-02 14:16:17'),('50e5a384-7d37-40e7-ab06-434d30c59264',2,1,NULL,NULL,1,'2019-01-26 14:16:33'),('627fd125-09c8-4c6b-89b8-53862d93450d',4,1,NULL,NULL,1,'2019-01-26 14:45:22'),('66ae17af-5aaf-46bc-90e5-e43d8cc89df7',10,1,NULL,NULL,77,'2019-02-02 14:16:17'),('94570fb9-f583-495c-88e7-3bc9267d187c',8,1,NULL,NULL,38,'2019-01-30 09:26:33'),('e1491d95-8b55-467f-b6b8-d21ef728f03e',11,1,NULL,NULL,77,'2019-02-02 14:16:17'),('ec93bcc2-f946-4aa2-9c09-12dd48e38662',12,1,NULL,NULL,77,'2019-02-02 14:16:17');
/*!40000 ALTER TABLE `institution_class_grades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 10:02:35
