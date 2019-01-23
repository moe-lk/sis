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
-- Table structure for table `workflows_filters`
--

DROP TABLE IF EXISTS `workflows_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflows_filters` (
  `id` char(36) NOT NULL,
  `workflow_id` int(11) NOT NULL COMMENT 'links to workflows.id',
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  KEY `workflow_id` (`workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflows_filters`
--

LOCK TABLES `workflows_filters` WRITE;
/*!40000 ALTER TABLE `workflows_filters` DISABLE KEYS */;
INSERT INTO `workflows_filters` VALUES ('1bd7b640-3c9a-4d29-9338-59e070457804',14,20),('2016d52e-d8cb-4b39-92cd-fb8d74de3392',10,0),('3d14b69d-da0d-46c4-bbc4-026840cf0777',17,403),('4ae014e0-7ace-11e5-90af-0025902f4ecc',1,0),('4ec31ed4-ec54-11e6-b8f2-525400b263eb',11,0),('68de0aac-ec55-11e6-b8f2-525400b263eb',12,3),('6b7a9861-ec55-11e6-b8f2-525400b263eb',12,4),('89e53112-10dd-4dee-885e-7fb51fe8f75f',15,400),('f04c87ed-2f02-42bd-b086-792aaf7f7ba3',16,405);
/*!40000 ALTER TABLE `workflows_filters` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-23  9:30:52
