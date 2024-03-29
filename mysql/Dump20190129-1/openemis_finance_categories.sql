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
-- Table structure for table `finance_categories`
--

DROP TABLE IF EXISTS `finance_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `order` int(3) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `international_code` varchar(10) DEFAULT NULL,
  `national_code` varchar(10) DEFAULT NULL,
  `finance_type_id` int(11) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_categories`
--

LOCK TABLES `finance_categories` WRITE;
/*!40000 ALTER TABLE `finance_categories` DISABLE KEYS */;
INSERT INTO `finance_categories` VALUES (1,'Donations',1,1,'','',1,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(2,'Fund Raising',2,1,'','',1,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(3,'Salaries',3,1,'','',1,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(4,'Scholarship',4,1,'','',1,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(5,'School Fees',5,1,'','',1,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(6,'Subsidies',6,1,'','',1,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(7,'Other',7,1,'','',1,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(8,'Donations',1,1,'','',2,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(9,'Fund Raising',2,1,'','',2,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(10,'Salaries',3,1,'','',2,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(11,'Scholarship',4,1,'','',2,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(12,'School Fees',5,1,'','',2,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(13,'Subsidies',6,1,'','',2,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(14,'Other',7,1,'','',2,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(15,'Donations',1,1,'','',3,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(16,'Fund Raising',2,1,'','',3,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(17,'Salaries',3,1,'','',3,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(18,'Scholarship',4,1,'','',3,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(19,'School Fees',5,1,'','',3,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(20,'Subsidies',6,1,'','',3,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(21,'Other',7,1,'','',3,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(22,'Donations',1,1,'','',4,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(23,'Fund Raising',2,1,'','',4,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(24,'Salaries',3,1,'','',4,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(25,'Scholarship',4,1,'','',4,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(26,'School Fees',5,1,'','',4,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(27,'Subsidies',6,1,'','',4,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(28,'Other',7,1,'','',4,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(29,'Donations',1,1,'','',5,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(30,'Fund Raising',2,1,'','',5,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(31,'Salaries',3,1,'','',5,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(32,'Scholarship',4,1,'','',5,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(33,'School Fees',5,1,'','',5,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(34,'Subsidies',6,1,'','',5,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(35,'Other',7,1,'','',5,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(36,'Donations',1,1,'','',6,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(37,'Fund Raising',2,1,'','',6,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(38,'Salaries',3,1,'','',6,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(39,'Scholarship',4,1,'','',6,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(40,'School Fees',5,1,'','',6,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(41,'Subsidies',6,1,'','',6,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(42,'Other',7,1,'','',6,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(43,'Donations',1,1,'','',7,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(44,'Fund Raising',2,1,'','',7,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(45,'Salaries',3,1,'','',7,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(46,'Scholarship',4,1,'','',7,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(47,'School Fees',5,1,'','',7,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(48,'Subsidies',6,1,'','',7,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(49,'Other',7,1,'','',7,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(50,'Donations',1,1,'','',8,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(51,'Fund Raising',2,1,'','',8,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(52,'Salaries',3,1,'','',8,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(53,'Scholarship',4,1,'','',8,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(54,'School Fees',5,1,'','',8,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(55,'Subsidies',6,1,'','',8,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(56,'Other',7,1,'','',8,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(57,'Donations',1,1,'','',9,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(58,'Fund Raising',2,1,'','',9,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(59,'Salaries',3,1,'','',9,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(60,'Scholarship',4,1,'','',9,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(61,'School Fees',5,1,'','',9,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(62,'Subsidies',6,1,'','',9,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(63,'Other',7,1,'','',9,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(64,'Donations',1,1,'','',10,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(65,'Fund Raising',2,1,'','',10,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(66,'Salaries',3,1,'','',10,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(67,'Scholarship',4,1,'','',10,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(68,'School Fees',5,1,'','',10,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(69,'Subsidies',6,1,'','',10,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(70,'Other',7,1,'','',10,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(71,'Donations',1,1,'','',11,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(72,'Fund Raising',2,1,'','',11,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(73,'Salaries',3,1,'','',11,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(74,'Scholarship',4,1,'','',11,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(75,'School Fees',5,1,'','',11,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(76,'Subsidies',6,1,'','',11,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(77,'Other',7,1,'','',11,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(78,'Donations',1,1,'','',12,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(79,'Fund Raising',2,1,'','',12,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(80,'Salaries',3,1,'','',12,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(81,'Scholarship',4,1,'','',12,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(82,'School Fees',5,1,'','',12,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(83,'Subsidies',6,1,'','',12,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(84,'Other',7,1,'','',12,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(85,'Donations',1,1,'','',13,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(86,'Fund Raising',2,1,'','',13,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(87,'Salaries',3,1,'','',13,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(88,'Scholarship',4,1,'','',13,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(89,'School Fees',5,1,'','',13,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(90,'Subsidies',6,1,'','',13,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(91,'Other',7,1,'','',13,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(92,'Donations',1,1,'','',14,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(93,'Fund Raising',2,1,'','',14,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(94,'Salaries',3,1,'','',14,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(95,'Scholarship',4,1,'','',14,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(96,'School Fees',5,1,'','',14,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(97,'Subsidies',6,1,'','',14,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(98,'Other',7,1,'','',14,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(99,'Donations',1,1,'','',15,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(100,'Fund Raising',2,1,'','',15,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(101,'Salaries',3,1,'','',15,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(102,'Scholarship',4,1,'','',15,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(103,'School Fees',5,1,'','',15,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(104,'Subsidies',6,1,'','',15,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(105,'Other',7,1,'','',15,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(106,'Donations',1,1,'','',16,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(107,'Fund Raising',2,1,'','',16,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(108,'Salaries',3,1,'','',16,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(109,'Scholarship',4,1,'','',16,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(110,'School Fees',5,1,'','',16,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(111,'Subsidies',6,1,'','',16,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(112,'Other',7,1,'','',16,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(113,'Donations',1,1,'','',17,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(114,'Fund Raising',2,1,'','',17,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(115,'Salaries',3,1,'','',17,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(116,'Scholarship',4,1,'','',17,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(117,'School Fees',5,1,'','',17,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(118,'Subsidies',6,1,'','',17,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00'),(119,'Other',7,1,'','',17,1,'0009-12-13 17:56:00',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `finance_categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:41
