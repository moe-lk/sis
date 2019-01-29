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
-- Table structure for table `workflows`
--

DROP TABLE IF EXISTS `workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(60) NOT NULL,
  `name` varchar(100) NOT NULL,
  `message` text,
  `workflow_model_id` int(11) NOT NULL COMMENT 'links to workflow_models.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_model_id` (`workflow_model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflows`
--

LOCK TABLES `workflows` WRITE;
/*!40000 ALTER TABLE `workflows` DISABLE KEYS */;
INSERT INTO `workflows` VALUES (1,'SURVEY-1001','Institutions - Survey - General',NULL,2,NULL,NULL,1,'2015-10-25 12:10:14'),(2,'TRN-1001','Training Courses',NULL,3,NULL,NULL,1,'2015-11-06 11:27:06'),(3,'TRN-2001','Training Sessions',NULL,4,NULL,NULL,1,'2015-11-06 11:27:06'),(4,'TRN-3001','Training Results',NULL,5,NULL,NULL,1,'2015-11-06 11:27:06'),(5,'TRN-4001','Training Needs',NULL,6,NULL,NULL,1,'2015-12-15 15:41:55'),(6,'POSITION-1001','Positions',NULL,7,NULL,NULL,1,'2016-02-12 18:29:36'),(7,'CHANGE-IN-ASSIGNMENT-01','Change in Assignment',NULL,8,1,'2019-01-27 04:33:22',1,'2016-04-15 10:45:45'),(8,'TRN-5001','Training Applications',NULL,10,NULL,NULL,1,'2016-11-08 07:25:04'),(9,'VISIT-1001','Institutions - Visit Requests',NULL,9,NULL,NULL,1,'2016-11-08 07:25:05'),(10,'Leave','Leave Application Workflow',NULL,1,NULL,NULL,2,'2016-11-16 16:12:09'),(11,'STAFF-LICENSE-1001','Staff Licenses - General',NULL,11,NULL,NULL,1,'2017-03-10 07:14:53'),(13,'CASES-1001','Cases - General',NULL,12,NULL,NULL,1,'2017-04-10 09:55:37'),(18,'STAFF-TRANSFER-1001','Staff Transfer - Receiving',NULL,13,NULL,NULL,1,'2017-11-15 14:51:18'),(19,'STAFF-TRANSFER-2001','Staff Transfer - Sending',NULL,14,NULL,NULL,1,'2017-11-15 14:51:18'),(20,'STUDENT-ADMISSION-1001','Student Admission',NULL,16,NULL,NULL,1,'2019-01-25 06:49:00'),(21,'STUDENT-TRANSFER-1001','Student Transfer - Receiving',NULL,17,NULL,NULL,1,'2019-01-25 06:49:00'),(22,'STUDENT-TRANSFER-2001','Student Transfer - Sending',NULL,18,NULL,NULL,1,'2019-01-25 06:49:00'),(24,'STUDENT-TRANSFER-1001','Student Transfer - Receiving',NULL,17,NULL,NULL,1,'2019-01-25 06:49:56'),(25,'STUDENT-TRANSFER-2001','Student Transfer - Sending',NULL,18,NULL,NULL,1,'2019-01-25 06:49:56'),(27,'STUDENT-TRANSFER-1001','Student Transfer - Receiving',NULL,17,NULL,NULL,1,'2019-01-25 06:51:07'),(28,'STUDENT-TRANSFER-2001','Student Transfer - Sending',NULL,18,NULL,NULL,1,'2019-01-25 06:51:07'),(29,'STUDENT-WITHDRAW-001','Student Withdraw',NULL,15,NULL,NULL,1,'2019-01-25 08:31:20'),(30,'STUDENT-WITHDRAW-001','Student Withdraw',NULL,15,NULL,NULL,1,'2019-01-25 08:39:08'),(31,'STUDENT-WITHDRAW-001','Student Withdraw',NULL,15,NULL,NULL,1,'2019-01-25 08:42:58'),(32,'STUDENT-WITHDRAW-001','Student Withdraw',NULL,15,NULL,NULL,1,'2019-01-25 08:44:12');
/*!40000 ALTER TABLE `workflows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:21
