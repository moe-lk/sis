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
-- Table structure for table `workflow_statuses_steps`
--

DROP TABLE IF EXISTS `workflow_statuses_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_statuses_steps` (
  `id` char(36) NOT NULL,
  `workflow_status_id` int(11) NOT NULL COMMENT 'links to workflow_statuses.id',
  `workflow_step_id` int(11) NOT NULL COMMENT 'links to workflow_steps.id',
  PRIMARY KEY (`id`),
  KEY `workflow_status_id` (`workflow_status_id`),
  KEY `workflow_step_id` (`workflow_step_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_statuses_steps`
--

LOCK TABLES `workflow_statuses_steps` WRITE;
/*!40000 ALTER TABLE `workflow_statuses_steps` DISABLE KEYS */;
INSERT INTO `workflow_statuses_steps` VALUES ('354f1e50-02f7-11e6-80d4-061461f4d7bf',15,35),('3550b872-02f7-11e6-80d4-061461f4d7bf',14,34),('41399864-8436-11e5-90af-0025902f4ecc',3,7),('41399c38-8436-11e5-90af-0025902f4ecc',3,5),('41399c92-8436-11e5-90af-0025902f4ecc',3,8),('41399ce2-8436-11e5-90af-0025902f4ecc',4,9),('41583382-8436-11e5-90af-0025902f4ecc',5,13),('415834c2-8436-11e5-90af-0025902f4ecc',5,11),('4158351c-8436-11e5-90af-0025902f4ecc',5,14),('41583558-8436-11e5-90af-0025902f4ecc',6,15),('4171ba32-8436-11e5-90af-0025902f4ecc',7,19),('4171bb18-8436-11e5-90af-0025902f4ecc',7,17),('4171bb68-8436-11e5-90af-0025902f4ecc',7,20),('4171bbae-8436-11e5-90af-0025902f4ecc',8,21),('50d3708c-a2ff-11e5-9d14-0025902f4ecc',9,23),('50d371ae-a2ff-11e5-9d14-0025902f4ecc',10,25),('83860b64-d173-11e5-9d14-0025902f4ecc',11,29),('83861050-d173-11e5-9d14-0025902f4ecc',12,31),('8b16b531-9c00-11e6-98d5-525400b263eb',16,37),('9c773e6a-9c00-11e6-98d5-525400b263eb',17,38),('a5ddc9ec-9c00-11e6-98d5-525400b263eb',18,40),('b0b1b8c1-9c00-11e6-98d5-525400b263eb',19,41),('ddecedba-7ad0-11e5-90af-0025902f4ecc',1,3),('ddf34c6e-7ad0-11e5-90af-0025902f4ecc',2,1),('ddf9a866-7ad0-11e5-90af-0025902f4ecc',2,2);
/*!40000 ALTER TABLE `workflow_statuses_steps` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-23 15:48:56
