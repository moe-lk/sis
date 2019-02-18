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
-- Table structure for table `user_identities`
--

DROP TABLE IF EXISTS `user_identities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_identities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identity_type_id` int(11) NOT NULL COMMENT 'links to identity_types.id',
  `number` varchar(50) NOT NULL,
  `issue_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `issue_location` varchar(100) DEFAULT NULL,
  `comments` text,
  `security_user_id` int(11) NOT NULL COMMENT 'links to security_users.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `identity_type_id` (`identity_type_id`),
  KEY `security_user_id` (`security_user_id`),
  KEY `number` (`number`),
  KEY `number_2` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_identities`
--

LOCK TABLES `user_identities` WRITE;
/*!40000 ALTER TABLE `user_identities` DISABLE KEYS */;
INSERT INTO `user_identities` VALUES (6,1,'12121231337',NULL,NULL,NULL,NULL,45,NULL,NULL,1,'2019-01-29 07:52:31'),(7,1,'12125131337',NULL,NULL,NULL,NULL,46,NULL,NULL,1,'2019-01-29 08:01:23'),(8,1,'12451231337',NULL,NULL,NULL,NULL,47,NULL,NULL,1,'2019-01-29 08:18:19'),(9,1,'45214531337',NULL,NULL,NULL,NULL,48,NULL,NULL,1,'2019-01-29 08:23:40'),(10,1,'1457531337',NULL,NULL,NULL,NULL,49,NULL,NULL,1,'2019-01-29 08:27:05');
/*!40000 ALTER TABLE `user_identities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:28
