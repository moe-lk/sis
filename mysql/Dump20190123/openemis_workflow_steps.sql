-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: openemis
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `workflow_steps`
--

DROP TABLE IF EXISTS `workflow_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category` int(1) NOT NULL DEFAULT '0' COMMENT '1 -> TO DO, 2 -> IN PROGRESS, 3 -> DONE',
  `is_editable` int(1) NOT NULL DEFAULT '0',
  `is_removable` int(1) NOT NULL DEFAULT '0',
  `is_system_defined` int(1) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL COMMENT 'links to workflows.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `workflow_id` (`workflow_id`),
  KEY `modified_user_id` (`modified_user_id`),
  KEY `created_user_id` (`created_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_steps`
--

LOCK TABLES `workflow_steps` WRITE;
/*!40000 ALTER TABLE `workflow_steps` DISABLE KEYS */;
INSERT INTO `workflow_steps` VALUES (1,'Open',1,1,1,1,1,NULL,NULL,1,'2015-10-25 12:10:14'),(2,'Pending For Approval',2,0,0,1,1,2,'2016-11-10 13:52:52',1,'2015-10-25 12:10:14'),(3,'Closed',3,0,0,1,1,2,'2016-11-10 13:52:38',1,'2015-10-25 12:10:14'),(4,'Open',1,1,1,1,2,NULL,NULL,1,'2015-11-06 11:27:06'),(5,'Pending For Approval',2,0,0,1,2,2,'2017-11-03 09:24:56',1,'2015-11-06 11:27:06'),(6,'Closed',3,0,0,1,2,NULL,NULL,1,'2015-11-06 11:27:06'),(7,'Pending For Recommendation',0,0,0,0,2,NULL,NULL,1,'2015-11-06 11:27:06'),(8,'Pending For Accreditation',2,0,0,0,2,2,'2017-11-03 09:27:05',1,'2015-11-06 11:27:06'),(9,'Accredited',3,0,0,0,2,2,'2016-11-10 14:10:02',1,'2015-11-06 11:27:06'),(10,'Open',1,1,1,1,3,NULL,NULL,1,'2015-11-06 11:27:06'),(11,'Pending For Approval',2,0,0,1,3,2,'2016-11-10 13:53:31',1,'2015-11-06 11:27:06'),(12,'Closed',3,0,0,1,3,NULL,NULL,1,'2015-11-06 11:27:06'),(13,'Pending For Recommendation',0,0,0,0,3,NULL,NULL,1,'2015-11-06 11:27:06'),(14,'Pending For Registration',2,0,0,0,3,2,'2016-11-10 14:18:47',1,'2015-11-06 11:27:06'),(15,'Registered',3,0,0,0,3,2,'2016-11-10 14:21:01',1,'2015-11-06 11:27:06'),(16,'Open',1,1,1,1,4,2,'2017-10-20 09:50:15',1,'2015-11-06 11:27:06'),(17,'Pending For Approval',2,0,0,1,4,2,'2016-11-10 13:53:45',1,'2015-11-06 11:27:06'),(18,'Closed',3,0,0,1,4,2,'2017-10-20 09:50:21',1,'2015-11-06 11:27:06'),(19,'Pending For Evaluation',2,0,0,0,4,2,'2017-10-20 09:53:55',1,'2015-11-06 11:27:06'),(20,'Pending For Posting',2,0,0,0,4,2,'2017-10-20 09:49:32',1,'2015-11-06 11:27:06'),(21,'Posted',3,0,0,0,4,2,'2017-10-20 09:49:40',1,'2015-11-06 11:27:06'),(22,'Open',1,1,1,1,5,NULL,NULL,1,'2015-12-15 15:41:56'),(23,'Pending For Approval',2,0,0,1,5,2,'2016-11-10 13:54:00',1,'2015-12-15 15:41:56'),(24,'Closed',3,0,0,1,5,NULL,NULL,1,'2015-12-15 15:41:56'),(25,'Approved',0,0,0,0,5,NULL,NULL,1,'2015-12-15 15:41:56'),(26,'Open',1,1,1,1,6,NULL,NULL,1,'2016-02-12 18:29:36'),(27,'Pending For Approval',2,0,0,1,6,1,'2017-12-21 10:02:28',1,'2016-02-12 18:29:36'),(28,'Closed',3,0,0,1,6,1,'2017-12-21 10:02:49',1,'2016-02-12 18:29:36'),(29,'Active',3,0,0,0,6,1,'2017-12-21 10:02:59',1,'2016-02-12 18:29:36'),(30,'Pending For Deactivation',1,1,1,0,6,1,'2017-12-21 10:03:08',1,'2016-02-12 18:29:36'),(31,'Inactive',3,0,0,0,6,1,'2017-12-21 10:03:16',1,'2016-02-12 18:29:36'),(32,'Open',1,1,1,1,7,1,'2017-12-21 10:01:34',1,'2016-04-15 10:45:45'),(33,'Pending Approval',2,0,0,1,7,2,'2016-11-10 13:54:43',1,'2016-04-15 10:45:45'),(34,'Closed',3,0,0,1,7,1,'2017-12-21 10:02:02',1,'2016-04-15 10:45:45'),(35,'Approved',3,0,0,0,7,1,'2017-12-21 10:02:11',1,'2016-04-15 10:45:45'),(36,'Open',1,0,1,1,8,NULL,NULL,1,'2016-11-08 07:25:04'),(37,'Pending For Review',2,0,0,0,8,2,'2016-11-10 13:56:00',1,'2016-11-08 07:25:04'),(38,'Pending For Approval',2,0,0,1,8,2,'2016-11-10 13:56:14',1,'2016-11-08 07:25:04'),(39,'Withdrawn',3,0,0,1,8,1,'2016-11-10 17:36:39',1,'2016-11-08 07:25:04'),(40,'Approved',3,0,0,0,8,1,'2016-11-10 17:31:36',1,'2016-11-08 07:25:04'),(41,'Rejected',0,0,0,0,8,NULL,NULL,1,'2016-11-08 07:25:04'),(42,'Open',1,1,1,1,9,NULL,NULL,1,'2016-11-08 07:25:05'),(43,'Pending For Approval',2,0,0,1,9,2,'2016-11-10 13:55:00',1,'2016-11-08 07:25:05'),(44,'Closed',3,0,0,1,9,NULL,NULL,1,'2016-11-08 07:25:05'),(45,'Open',1,1,1,1,10,2,'2017-10-13 16:15:07',2,'2016-11-16 16:12:09'),(46,'Pending For Approval',2,0,0,1,10,1,'2017-12-21 11:37:51',2,'2016-11-16 16:12:09'),(47,'Closed',3,0,0,1,10,2,'2016-11-16 16:12:09',2,'2016-11-16 16:12:09'),(48,'Open',1,1,1,1,11,NULL,NULL,1,'2017-03-10 07:14:53'),(49,'Pending For Approval',2,0,0,1,11,1,'2017-12-21 10:01:10',1,'2017-03-10 07:14:53'),(50,'Closed',3,0,0,1,11,NULL,NULL,1,'2017-03-10 07:14:53'),(51,'Active',3,0,0,0,11,1,'2017-12-21 10:01:18',1,'2017-03-10 07:14:53'),(62,'Open',1,1,1,1,13,NULL,NULL,1,'2017-04-10 09:55:37'),(63,'Pending For Approval',2,0,0,1,13,NULL,NULL,1,'2017-04-10 09:55:37'),(64,'Closed',3,0,0,1,13,NULL,NULL,1,'2017-04-10 09:55:37'),(65,'Open',1,1,1,1,14,1,'2017-12-21 10:04:06',2,'2017-10-13 14:44:47'),(66,'Pending For Approval',2,0,0,1,14,1,'2017-12-21 10:03:54',2,'2017-10-13 14:44:47'),(67,'Closed',3,0,0,1,14,1,'2017-12-21 11:38:44',2,'2017-10-13 14:44:47'),(68,'Open',1,1,1,1,15,2,'2017-10-13 14:59:36',2,'2017-10-13 14:58:28'),(69,'Pending For Approval',2,0,0,1,15,1,'2017-12-21 11:37:28',2,'2017-10-13 14:58:28'),(70,'Closed',3,0,0,1,15,2,'2017-10-13 14:58:28',2,'2017-10-13 14:58:28'),(71,'Open',1,1,1,1,16,1,'2017-12-21 11:36:20',2,'2017-10-13 14:59:03'),(72,'Pending For Approval',2,0,0,1,16,1,'2017-12-21 11:39:10',2,'2017-10-13 14:59:03'),(73,'Closed',3,0,0,1,16,2,'2017-10-13 14:59:03',2,'2017-10-13 14:59:03'),(74,'Open',1,1,1,1,17,8,'2017-10-13 15:32:19',8,'2017-10-13 15:32:19'),(75,'Pending For Approval',2,0,0,1,17,1,'2017-12-21 11:37:07',8,'2017-10-13 15:32:19'),(76,'Closed',3,0,0,1,17,8,'2017-10-13 15:32:19',8,'2017-10-13 15:32:19'),(79,'Open',1,1,1,1,18,NULL,NULL,1,'2017-11-15 14:51:18'),(80,'Pending Approval',2,0,0,0,18,NULL,NULL,1,'2017-11-15 14:51:18'),(81,'Pending Approval From Sending Institution',2,0,0,1,18,NULL,NULL,1,'2017-11-15 14:51:18'),(82,'Pending Staff Assignment',2,0,0,0,18,NULL,NULL,1,'2017-11-15 14:51:18'),(83,'Assigned',3,0,0,0,18,NULL,NULL,1,'2017-11-15 14:51:18'),(84,'Closed',3,0,0,1,18,NULL,NULL,1,'2017-11-15 14:51:18'),(85,'Open',1,1,1,1,19,NULL,NULL,1,'2017-11-15 14:51:18'),(86,'Pending Approval',2,0,0,0,19,NULL,NULL,1,'2017-11-15 14:51:18'),(87,'Pending Approval From Receiving Institution',2,0,0,1,19,NULL,NULL,1,'2017-11-15 14:51:18'),(88,'Pending Staff Transfer',2,0,0,0,19,NULL,NULL,1,'2017-11-15 14:51:18'),(89,'Transferred',3,0,0,0,19,NULL,NULL,1,'2017-11-15 14:51:18'),(90,'Closed',3,0,0,1,19,NULL,NULL,1,'2017-11-15 14:51:18');
/*!40000 ALTER TABLE `workflow_steps` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-23  9:31:02
