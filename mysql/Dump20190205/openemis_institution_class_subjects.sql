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
-- Table structure for table `institution_class_subjects`
--

DROP TABLE IF EXISTS `institution_class_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_class_subjects` (
  `id` char(36) NOT NULL,
  `status` int(1) NOT NULL,
  `institution_class_id` int(11) NOT NULL COMMENT 'links to institution_classes.id',
  `institution_subject_id` int(11) NOT NULL COMMENT 'links to institution_subjects.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `institution_class_id` (`institution_class_id`),
  KEY `institution_subject_id` (`institution_subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_class_subjects`
--

LOCK TABLES `institution_class_subjects` WRITE;
/*!40000 ALTER TABLE `institution_class_subjects` DISABLE KEYS */;
INSERT INTO `institution_class_subjects` VALUES ('1ee172fc-3a9b-4e9d-8438-96d1d2cfce35',1,10,8,NULL,NULL,77,'2019-02-02 14:16:17'),('24953c58-a392-4ac3-9417-d4f6ec1bbc69',1,1,1,NULL,NULL,1,'2019-01-26 14:22:06'),('60cfd52c-74d0-4d02-be1b-b853bb5501b1',1,4,2,NULL,NULL,1,'2019-01-26 14:45:22'),('b3a039a0-755a-4938-9c29-bb3dada95c59',1,9,7,NULL,NULL,77,'2019-02-02 14:16:17'),('b7606bdf-d500-44b9-aed4-151c2b1609f9',1,11,9,NULL,NULL,77,'2019-02-02 14:16:17'),('d9e27454-c9b2-49fd-b304-e8746ba3ee06',1,8,6,NULL,NULL,38,'2019-01-30 09:26:33'),('fad4fd20-b32c-44d2-89e8-b535ee8f55f6',1,12,10,NULL,NULL,77,'2019-02-02 14:16:17');
/*!40000 ALTER TABLE `institution_class_subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 10:02:15
