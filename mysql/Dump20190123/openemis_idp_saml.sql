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
-- Table structure for table `idp_saml`
--

DROP TABLE IF EXISTS `idp_saml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idp_saml` (
  `system_authentication_id` int(11) NOT NULL COMMENT 'links to system_authenticatons.id',
  `idp_entity_id` varchar(200) NOT NULL,
  `idp_sso` varchar(200) NOT NULL,
  `idp_sso_binding` varchar(100) NOT NULL,
  `idp_slo` varchar(200) NOT NULL,
  `idp_slo_binding` varchar(100) NOT NULL,
  `idp_x509cert` text NOT NULL,
  `idp_cert_fingerprint` varchar(100) DEFAULT NULL,
  `idp_cert_fingerprint_algorithm` varchar(10) DEFAULT NULL,
  `sp_entity_id` varchar(200) NOT NULL,
  `sp_acs` varchar(200) NOT NULL,
  `sp_slo` varchar(100) NOT NULL,
  `sp_name_id_format` varchar(100) DEFAULT NULL,
  `sp_private_key` text,
  `sp_metadata` text NOT NULL,
  PRIMARY KEY (`system_authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idp_saml`
--

LOCK TABLES `idp_saml` WRITE;
/*!40000 ALTER TABLE `idp_saml` DISABLE KEYS */;
/*!40000 ALTER TABLE `idp_saml` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-23  9:31:03
