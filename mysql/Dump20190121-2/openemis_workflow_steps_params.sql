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
INSERT INTO `workflow_steps_params` VALUES ('0173af05-ed63-4f61-be73-260761b59f27',28,'institution_owner','2'),('02cdc63e-c7d3-41f9-bfc0-806bd5daf6cf',20,'institution_owner','1'),('08af3916-4357-4724-aa2a-f89019d95ef8',84,'institution_owner','1'),('0c44ad30-5852-4e5f-b725-d8d3bee762d5',83,'institution_owner','1'),('11716567-d496-4d55-919e-b31098ea3a8f',89,'institution_owner','2'),('1224ad1e-c6f1-4704-b7c4-a5607cd577d6',88,'institution_owner','2'),('14920472-e9ba-4f41-ba4b-35435f250ec1',17,'institution_owner','1'),('15ab186c-ba92-406d-8932-f0a7eb077b1c',19,'institution_owner','2'),('30e19a7d-fae5-4678-aa2b-76196bd09d80',80,'institution_owner','1'),('3fef2aec-013d-4e51-89d4-b27dbe13aac8',23,'institution_owner','1'),('5f7f2d9a-b334-41fe-bf11-35edb143117b',90,'institution_owner','2'),('613c1cd0-89f3-4fb3-855a-b4323c47e9b6',24,'institution_owner','2'),('7312172b-d140-4597-ae04-c77cb4dd249f',25,'institution_owner','2'),('7ce7e4fd-e172-4eb4-b5df-03e822d4bd7d',16,'institution_owner','1'),('84fc6fb3-6543-4bfd-8bc5-bcad7af408aa',81,'institution_owner','2'),('8766addd-c92e-49a5-8dbe-9624820a4aea',21,'institution_owner','2'),('89c675b3-6074-4d6f-a4c8-067f3d9b8c41',23,'validate_approve','1'),('8f524298-6c2c-4803-a5c1-8ef13a7beb65',85,'institution_owner','2'),('a97f90ae-76eb-4c32-add2-99a53a63b229',18,'institution_owner','1'),('ad9f7216-d502-497c-9334-cc939236c6be',13,'institution_owner','1'),('b53b9957-3d07-4bb0-b0e7-c337accf1c00',27,'institution_owner','1'),('c016d526-c373-4d07-a491-515fd6b2ee3a',82,'institution_owner','1'),('cb8a32f4-e1dd-4c7a-bb5c-c00f7d2571b5',81,'validate_approve','1'),('d58ee98e-49c8-48b0-b2c5-92f52ddf9cfa',15,'validate_approve','1'),('d5919add-4965-4a9e-8d60-d68a4134ddcd',87,'institution_owner','1'),('e22213a3-5fb1-48b8-8a4e-938505155fe8',14,'institution_owner','1'),('e28a0786-fe42-400a-a91b-922df4f9a5ed',86,'institution_owner','2'),('e9754a68-cb73-4df7-bb6b-7a0685384c5d',15,'institution_owner','2'),('ee8aef5f-a66e-49d8-8ef7-31ff69531955',87,'validate_approve','1'),('f7f1b5ee-ea7f-454c-ad0e-4593a6400928',22,'institution_owner','2'),('f810044f-4d45-4f43-8a4a-fd3accaabe36',79,'institution_owner','1'),('fb5ede4a-cfcb-48e4-a3e4-2eed433510b4',26,'institution_owner','2');
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

-- Dump completed on 2019-01-21 21:45:19
