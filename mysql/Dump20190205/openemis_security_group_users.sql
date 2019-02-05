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
-- Table structure for table `security_group_users`
--

DROP TABLE IF EXISTS `security_group_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_group_users` (
  `id` char(36) NOT NULL,
  `security_group_id` int(11) NOT NULL COMMENT 'links to security_groups.id',
  `security_user_id` int(11) NOT NULL COMMENT 'links to security_users.id',
  `security_role_id` int(11) NOT NULL COMMENT 'links to security_roles.id',
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `security_group_id` (`security_group_id`),
  KEY `security_user_id` (`security_user_id`),
  KEY `security_role_id` (`security_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_group_users`
--

LOCK TABLES `security_group_users` WRITE;
/*!40000 ALTER TABLE `security_group_users` DISABLE KEYS */;
INSERT INTO `security_group_users` VALUES ('09966ea3-bfdf-4569-a260-d549e65c3b8a',1,1,2,1,'2019-01-30 10:02:08'),('0fcd75c0-958b-4534-ac03-15a36e6a5b91',15,78,6,77,'2019-02-02 14:09:21'),('36b043c4-b0f3-45b9-9fe2-cfca499bf324',11,75,1,75,'2019-02-02 13:04:59'),('3b73b171-fe5d-4cc4-be71-5ed64f490e55',3,51,6,1,'2019-02-02 11:22:20'),('53acf534-6d13-40ab-a22b-a9ab3b9048a1',16,77,4,1,'2019-02-02 14:00:38'),('566cc67d-10af-4656-aaad-2100761ca0c1',7,38,4,1,'2019-01-31 05:45:06'),('5f4b1d4b-c671-46bc-922f-81d6f43f8369',8,75,13,1,'2019-02-02 12:50:19'),('73fd6fe4-7fa5-4e4d-b676-aeef54725137',3,51,7,1,'2019-02-02 11:25:00'),('893afd5b-b55a-47cc-a8a0-342ce244ace3',7,35,6,1,'2019-01-31 05:45:06'),('944f2cfd-aaa7-4ef1-a2d4-d0a786728a1f',3,51,5,1,'2019-02-02 11:25:00'),('94f9543f-f729-4c31-88de-53b6cc232df8',7,40,7,1,'2019-01-31 11:23:10'),('9ed97bb8-1436-46b6-9488-a559228106f5',15,78,5,77,'2019-02-02 14:09:21'),('a6c24dec-573f-41bf-b420-3af0b7e94b3b',11,76,14,75,'2019-02-02 13:04:59'),('db0a4d0e-0897-4f22-b724-02ce89382bb7',3,51,5,1,'2019-02-02 11:22:20'),('e86b1a8b-2029-497a-804f-61924b13c864',16,76,1,76,'2019-02-02 13:55:15');
/*!40000 ALTER TABLE `security_group_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 10:02:12
