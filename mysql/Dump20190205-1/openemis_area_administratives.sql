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
-- Table structure for table `area_administratives`
--

DROP TABLE IF EXISTS `area_administratives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area_administratives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(60) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_main_country` int(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `area_administrative_level_id` int(11) NOT NULL COMMENT 'links to area_administrative_levels.id',
  `order` int(3) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `area_administrative_level_id` (`area_administrative_level_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_administratives`
--

LOCK TABLES `area_administratives` WRITE;
/*!40000 ALTER TABLE `area_administratives` DISABLE KEYS */;
INSERT INTO `area_administratives` VALUES (1,'World','World',0,NULL,1,136,1,1,1,0,'1990-01-01 00:00:00',1,'2015-01-01 00:00:00'),(2,'LK','Sri Lanka',1,1,2,135,2,1,1,NULL,NULL,1,'2019-01-23 06:22:10'),(39,'11','Colombo',0,2,3,86,4,1,1,NULL,NULL,1,'2019-02-01 08:32:07'),(40,'12','Gampaha',0,2,87,88,4,2,1,NULL,NULL,1,'2019-02-01 08:36:38'),(41,'13','Kalutara',0,2,89,90,4,3,1,NULL,NULL,1,'2019-02-01 08:37:21'),(42,'21','Kandy',0,2,91,92,4,4,1,NULL,NULL,1,'2019-02-01 08:37:52'),(43,'22','Matale',0,2,93,94,4,5,1,NULL,NULL,1,'2019-02-01 08:38:15'),(44,'23','Nuwara Eliya',0,2,95,96,4,6,1,1,'2019-02-01 08:40:50',1,'2019-02-01 08:38:39'),(45,'31','Galle',0,2,97,98,4,7,1,NULL,NULL,1,'2019-02-01 08:39:14'),(46,'32','Matara',0,2,99,100,4,8,1,1,'2019-02-01 08:40:36',1,'2019-02-01 08:39:41'),(47,'33','Hambantota',0,2,101,102,4,9,1,NULL,NULL,1,'2019-02-01 08:40:04'),(48,'41','Jaffna',0,2,103,104,4,10,1,1,'2019-02-01 08:41:08',1,'2019-02-01 08:40:24'),(49,'42','Mannar',0,2,105,106,4,11,1,1,'2019-02-01 08:41:31',1,'2019-02-01 08:41:23'),(50,'43','Vavuniya',0,2,107,108,4,12,1,NULL,NULL,1,'2019-02-01 08:41:55'),(51,'44','Mullaitivu',0,2,109,110,4,13,1,NULL,NULL,1,'2019-02-01 08:42:26'),(52,'45','Kilinochchi',0,2,111,112,4,14,1,NULL,NULL,1,'2019-02-01 08:42:45'),(53,'51','Batticaloa',0,2,113,114,4,15,1,NULL,NULL,1,'2019-02-01 08:43:22'),(54,'52','Ampara',0,2,115,116,4,16,1,NULL,NULL,1,'2019-02-01 08:43:42'),(55,'53','Trincomalee',0,2,117,118,4,17,1,NULL,NULL,1,'2019-02-01 08:44:10'),(56,'61','Kurunegala',0,2,119,120,4,18,1,NULL,NULL,1,'2019-02-01 08:44:33'),(57,'62','Puttalam',0,2,121,122,4,19,1,NULL,NULL,1,'2019-02-01 08:44:53'),(58,'71','Anuradapura',0,2,123,124,4,20,1,NULL,NULL,1,'2019-02-01 08:46:48'),(59,'72','Polonnarua',0,2,125,126,4,21,1,NULL,NULL,1,'2019-02-01 08:47:20'),(60,'81','Badulla',0,2,127,128,4,22,1,NULL,NULL,1,'2019-02-01 08:48:58'),(61,'82','Monaragala',0,2,129,130,4,23,1,NULL,NULL,1,'2019-02-01 08:49:24'),(62,'91','Ratnapura',0,2,131,132,4,24,1,NULL,NULL,1,'2019-02-01 08:49:45'),(63,'92','Kegalle',0,2,133,134,4,25,1,NULL,NULL,1,'2019-02-01 08:50:08'),(64,'1103','Colombo',0,39,4,19,5,1,1,1,'2019-02-01 09:07:21',1,'2019-02-01 09:06:44'),(65,'1106','Kolonnawa',0,39,20,29,5,2,1,NULL,NULL,1,'2019-02-01 09:07:12'),(66,'1109','Kaduwela',0,39,30,35,5,3,1,NULL,NULL,1,'2019-02-01 09:43:40'),(67,'1112','Homagama',0,39,36,45,5,4,1,NULL,NULL,1,'2019-02-01 09:43:56'),(68,'1115','Hanwella',0,39,46,57,5,5,1,NULL,NULL,1,'2019-02-01 09:44:35'),(69,'1118','Padukka',0,39,58,65,5,6,1,NULL,NULL,1,'2019-02-01 09:44:59'),(70,'1121','Maharagama',0,39,66,73,5,7,1,NULL,NULL,1,'2019-02-01 09:45:15'),(71,'1124','Sri Jaya\' pura /  Nugegoda',0,39,74,75,5,8,1,NULL,NULL,1,'2019-02-01 09:46:26'),(72,'1127','Timbirigasyaya',0,39,76,77,5,9,1,NULL,NULL,1,'2019-02-01 09:46:44'),(73,'1130','Dehiwala',0,39,78,79,5,10,1,NULL,NULL,1,'2019-02-01 09:46:58'),(74,'1131','Ratmalana',0,39,80,81,5,11,1,NULL,NULL,1,'2019-02-01 09:47:19'),(75,'1133','Moratuwa',0,39,82,83,5,12,1,NULL,NULL,1,'2019-02-01 09:48:21'),(76,'1136','Kesbewa',0,39,84,85,5,13,1,NULL,NULL,1,'2019-02-01 09:48:37'),(77,'110301','Colombo  Fort (Medical)',0,64,5,6,6,1,1,NULL,NULL,1,'2019-02-01 09:50:26'),(78,'110302','Slave  Island (Medical)',0,64,7,8,6,2,1,NULL,NULL,1,'2019-02-01 09:50:44'),(79,'110303','New Bazzar (Medical)',0,64,9,10,6,3,1,NULL,NULL,1,'2019-02-01 09:50:54'),(80,'110304','Kotahena (Medical)',0,64,11,12,6,4,1,NULL,NULL,1,'2019-02-01 09:51:12'),(81,'110305','Modara (Medical)',0,64,13,14,6,5,1,NULL,NULL,1,'2019-02-01 09:51:39'),(82,'110306','Hulftsdorpe (Medical)',0,64,15,16,6,6,1,NULL,NULL,1,'2019-02-01 09:51:58'),(83,'110307','Maradana (Medical)',0,64,17,18,6,7,1,NULL,NULL,1,'2019-02-01 09:52:23'),(95,'110608','Kolonnawa',0,65,21,22,6,1,1,NULL,NULL,1,'2019-02-01 10:08:19'),(96,'110609','Ambathalen Pahala',0,65,23,24,6,2,1,NULL,NULL,1,'2019-02-01 10:08:37'),(97,'110610','Angoda',0,65,25,26,6,3,1,NULL,NULL,1,'2019-02-01 10:08:50'),(98,'110611','Mulleriyawa',0,65,27,28,6,4,1,NULL,NULL,1,'2019-02-01 10:09:04'),(99,'110912','Ranala / Nawagamuwa',0,66,31,32,6,1,1,NULL,NULL,1,'2019-02-01 10:10:00'),(100,'110913','Battaramulla',0,66,33,34,6,2,1,NULL,NULL,1,'2019-02-01 10:10:15'),(101,'111214','Kottawa',0,67,37,38,6,1,1,NULL,NULL,1,'2019-02-01 10:10:51'),(102,'111215','Kahatuduwa',0,67,39,40,6,2,1,NULL,NULL,1,'2019-02-01 10:11:01'),(103,'111216','Mattegoda',0,67,41,42,6,3,1,NULL,NULL,1,'2019-02-01 10:11:16'),(104,'111217','Athurugiriya',0,67,43,44,6,4,1,NULL,NULL,1,'2019-02-01 10:11:31'),(105,'111518','Avissawella (Medical)',0,68,47,48,6,2,1,NULL,NULL,1,'2019-02-01 10:11:58'),(106,'111519','Kosgama',0,68,49,50,6,3,1,NULL,NULL,1,'2019-02-01 10:12:15'),(107,'111520','Hanwella',0,68,51,52,6,4,1,NULL,NULL,1,'2019-02-01 10:12:32'),(108,'111521','Kaluaggala',0,68,53,54,6,5,1,NULL,NULL,1,'2019-02-01 10:12:47'),(109,'111822','Waga',0,69,59,60,6,1,1,NULL,NULL,1,'2019-02-01 10:14:01'),(110,'111823','Padukka',0,69,61,62,6,2,1,NULL,NULL,1,'2019-02-01 10:14:27'),(111,'111800','Divisional Secretary',0,69,63,64,6,3,1,NULL,NULL,1,'2019-02-01 10:14:42'),(112,'111500','Divisional Secretary',0,68,55,56,6,1,1,NULL,NULL,1,'2019-02-01 10:15:21'),(113,'112124','Sri Jayawardanapura - South (Medical)',0,70,67,68,6,1,1,NULL,NULL,1,'2019-02-01 10:16:39'),(114,'112125','Maharagama-North',0,70,69,70,6,2,1,NULL,NULL,1,'2019-02-01 10:18:42'),(115,'112126','Maharagama-South',0,70,71,72,6,3,1,NULL,NULL,1,'2019-02-01 10:19:53');
/*!40000 ALTER TABLE `area_administratives` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 16:33:54
