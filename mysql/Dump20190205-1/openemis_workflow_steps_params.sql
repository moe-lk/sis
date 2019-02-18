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
-- Table structure for table `workflow_steps_params`
--

DROP TABLE IF EXISTS `workflow_steps_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_steps_params` (
  `id` char(36) NOT NULL,
  `workflow_step_id` int(11) NOT NULL COMMENT 'links to workflow_steps.id',
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_step_id` (`workflow_step_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_steps_params`
--

LOCK TABLES `workflow_steps_params` WRITE;
/*!40000 ALTER TABLE `workflow_steps_params` DISABLE KEYS */;
INSERT INTO `workflow_steps_params` VALUES ('08af3916-4357-4724-aa2a-f89019d95ef8',84,'institution_owner','1'),('0c44ad30-5852-4e5f-b725-d8d3bee762d5',83,'institution_owner','1'),('11716567-d496-4d55-919e-b31098ea3a8f',89,'institution_owner','2'),('1224ad1e-c6f1-4704-b7c4-a5607cd577d6',88,'institution_owner','2'),('30e19a7d-fae5-4678-aa2b-76196bd09d80',80,'institution_owner','1'),('5f7f2d9a-b334-41fe-bf11-35edb143117b',90,'institution_owner','2'),('62fb6303-003e-40f3-a917-6a1d196cf3ab',147,'institution_owner','1'),('84fc6fb3-6543-4bfd-8bc5-bcad7af408aa',81,'institution_owner','2'),('8f524298-6c2c-4803-a5c1-8ef13a7beb65',85,'institution_owner','2'),('c016d526-c373-4d07-a491-515fd6b2ee3a',82,'institution_owner','1'),('cb8a32f4-e1dd-4c7a-bb5c-c00f7d2571b5',81,'validate_approve','1'),('d52f7fc6-ab1e-40b1-859c-ea31985a33c2',145,'institution_owner','1'),('d5919add-4965-4a9e-8d60-d68a4134ddcd',87,'institution_owner','1'),('d967a2de-60ff-460f-95cb-5de98a8e296b',146,'institution_owner','2'),('e28a0786-fe42-400a-a91b-922df4f9a5ed',86,'institution_owner','2'),('ee8aef5f-a66e-49d8-8ef7-31ff69531955',87,'validate_approve','1'),('f810044f-4d45-4f43-8a4a-fd3accaabe36',79,'institution_owner','1');
/*!40000 ALTER TABLE `workflow_steps_params` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 16:33:37
