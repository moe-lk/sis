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
-- Table structure for table `z_4387_workflow_transitions`
--

DROP TABLE IF EXISTS `z_4387_workflow_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_4387_workflow_transitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `prev_workflow_step_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workflow_step_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workflow_action_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workflow_model_id` int(11) NOT NULL COMMENT 'links to workflow_models.id',
  `model_reference` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_model_id` (`workflow_model_id`),
  KEY `model_reference` (`model_reference`),
  KEY `created_user_id` (`created_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This table contains specific action executed by users to transit from one step to another';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_4387_workflow_transitions`
--

LOCK TABLES `z_4387_workflow_transitions` WRITE;
/*!40000 ALTER TABLE `z_4387_workflow_transitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `z_4387_workflow_transitions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:44
