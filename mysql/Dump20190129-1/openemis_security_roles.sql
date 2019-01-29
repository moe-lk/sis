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
-- Table structure for table `security_roles`
--

DROP TABLE IF EXISTS `security_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `order` int(3) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `security_group_id` int(11) NOT NULL COMMENT 'links to security_groups.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `security_group_id` (`security_group_id`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_roles`
--

LOCK TABLES `security_roles` WRITE;
/*!40000 ALTER TABLE `security_roles` DISABLE KEYS */;
INSERT INTO `security_roles` VALUES (1,'Group Administrator','GROUP_ADMINISTRATOR',2,1,-1,1,'2014-04-09 23:35:13',1,'1990-01-01 00:00:00'),(2,'Administrator','ADMINISTRATOR',1,1,-1,1,'2014-04-09 23:35:13',1,'1990-01-01 00:00:00'),(4,'Principal','PRINCIPAL',3,1,-1,1,'2019-01-28 06:23:09',1,'1990-01-01 00:00:00'),(5,'Homeroom Teacher','HOMEROOM_TEACHER',4,1,-1,2,'2017-10-12 17:06:55',1,'1990-01-01 00:00:00'),(6,'Teacher','TEACHER',5,1,-1,1,'2019-01-27 18:50:48',1,'2014-04-03 10:25:25'),(7,'Staff','STAFF',6,1,-1,38,'2019-01-27 18:56:15',1,'2014-04-03 10:25:25'),(8,'Student','STUDENT',8,1,-1,1,'2019-01-27 08:13:56',2,'2014-04-04 16:42:28'),(9,'Guardian','',7,1,-1,1,'2015-05-13 23:57:19',1,'2014-04-09 08:01:18');
/*!40000 ALTER TABLE `security_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:36
