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
INSERT INTO `workflow_statuses_steps` VALUES ('056a7ac8-ae0e-4137-9a28-0134a7c03a3d',9,19),('200d07b9-6d49-452b-a1d0-f535e9e5fd76',9,14),('214ea8b7-fc4f-48e7-bffd-4f393b382b45',5,7),('2c63199b-ee56-41ec-b2ab-68ae4925d699',9,15),('354f1e50-02f7-11e6-80d4-061461f4d7bf',15,35),('3550b872-02f7-11e6-80d4-061461f4d7bf',14,34),('3925b2d1-6971-4c2a-b0e3-dda7f762be8b',13,24),('39cbc746-e99c-4495-a6ff-2f3496cd1cd2',13,21),('41399864-8436-11e5-90af-0025902f4ecc',3,7),('41399c38-8436-11e5-90af-0025902f4ecc',3,5),('41399c92-8436-11e5-90af-0025902f4ecc',3,8),('41399ce2-8436-11e5-90af-0025902f4ecc',4,9),('41583382-8436-11e5-90af-0025902f4ecc',5,13),('415834c2-8436-11e5-90af-0025902f4ecc',5,11),('4158351c-8436-11e5-90af-0025902f4ecc',5,14),('41583558-8436-11e5-90af-0025902f4ecc',6,15),('4171ba32-8436-11e5-90af-0025902f4ecc',7,19),('4171bb18-8436-11e5-90af-0025902f4ecc',7,17),('4171bb68-8436-11e5-90af-0025902f4ecc',7,20),('4171bbae-8436-11e5-90af-0025902f4ecc',8,21),('451bec9f-d9cd-479d-bbc2-53f443e71b8a',8,12),('45bfb9c8-76ae-4fc0-84e0-63d5f1ecf8f4',12,20),('4f245e7c-7cb7-42d3-9023-9a3d0646bb95',9,13),('50d3708c-a2ff-11e5-9d14-0025902f4ecc',9,23),('50d371ae-a2ff-11e5-9d14-0025902f4ecc',10,25),('58101625-4dfc-469d-9ff7-5c5e740411a4',14,25),('61582fb1-2930-483a-81fd-692cb622df15',3,4),('65352692-2f6e-4f61-a97c-6cc04f893896',2,3),('66ec9a93-9b05-42b0-94e8-da46d4582a1a',1,5),('67568fc0-62f0-40c9-9aa8-6de8ee85f94f',9,16),('6fbd6e77-c159-4bad-aa9e-c4f377cba519',16,28),('76f55e11-9522-40fd-a510-51e0d02bf491',1,1),('7cfcce36-20fa-4f3f-8dcf-caa982e27219',11,18),('7f81d5b3-6ed9-4e9e-aa32-89d4832c2db4',18,31),('832f894f-63c3-40b9-8c27-e426f1149c8d',13,23),('83860b64-d173-11e5-9d14-0025902f4ecc',11,29),('83861050-d173-11e5-9d14-0025902f4ecc',12,31),('8b16b531-9c00-11e6-98d5-525400b263eb',16,37),('91718745-8136-4cc4-a984-068c693c21d4',1,2),('93a0657e-8f2f-46e7-aac8-a855b7b49e0c',5,8),('9c773e6a-9c00-11e6-98d5-525400b263eb',17,38),('a5ddc9ec-9c00-11e6-98d5-525400b263eb',18,40),('aa63281a-cb5b-4fe7-94c0-a19e9975455b',17,30),('b0b1b8c1-9c00-11e6-98d5-525400b263eb',19,41),('b2c6abea-37a4-4fc6-8b61-ae96a16adac4',13,22),('b6649df9-e16e-4583-a628-792e55dbfdf0',6,9),('bdf9232a-d033-425a-9648-bd941a537279',13,27),('be03bf54-e861-4b07-98d9-c0790c36141d',20,34),('ccfad0f5-812b-4024-be8e-851258d92196',6,4),('dd86f83e-aa33-4e08-bbbe-54f256443959',7,10),('ddecedba-7ad0-11e5-90af-0025902f4ecc',1,3),('ddf34c6e-7ad0-11e5-90af-0025902f4ecc',2,1),('ddf9a866-7ad0-11e5-90af-0025902f4ecc',2,2),('ec9784a6-749f-4154-bf08-8577574c5768',5,11),('f0c64f96-a67a-48d5-8191-ce9ff5e87fd6',10,17),('f4472545-fd89-4726-8c62-f703761ab07c',15,26),('fc22fef2-25f3-415d-b241-2b1eaabd8d2a',19,33);
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

-- Dump completed on 2019-01-21 21:45:21
