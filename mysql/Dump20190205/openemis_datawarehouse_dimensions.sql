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
-- Table structure for table `datawarehouse_dimensions`
--

DROP TABLE IF EXISTS `datawarehouse_dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datawarehouse_dimensions` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `field` varchar(50) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `joins` text,
  `datawarehouse_module_id` int(5) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `datawarehouse_module_id` (`datawarehouse_module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datawarehouse_dimensions`
--

LOCK TABLES `datawarehouse_dimensions` WRITE;
/*!40000 ALTER TABLE `datawarehouse_dimensions` DISABLE KEYS */;
INSERT INTO `datawarehouse_dimensions` VALUES (1,'Age','age','CensusStudent',NULL,1,NULL,NULL,1,'2014-07-14 00:00:00'),(2,'Sex','name','Gender','array(\n \'type\' => \'INNER\',\n  \'table\' => \'field_option_values\',\n \'alias\' => \'Gender\',\n  \'conditions\' => array(\'Gender.id = CensusStudent.gender_id\')\n)',1,NULL,NULL,1,'2014-07-14 00:00:00'),(3,'Locality','name','InstitutionSiteLocality','array(  \'type\' => \'INNER\',   \'table\' => \'institution_sites\', \'alias\' => \'InstitutionSite\',      \'conditions\' => array(\'InstitutionSite.id = CensusStudent.institution_site_id\')  ), array(     \'type\' => \'INNER\',      \'table\' => \'institution_site_localities\',     \'alias\' => \'InstitutionSiteLocality\',      \'conditions\' => array(\'InstitutionSiteLocality.id = InstitutionSite.institution_site_locality_id\')  )',1,NULL,NULL,1,'2014-07-14 00:00:00'),(4,'Category','name','StudentCategory','array(  \'type\' => \'INNER\',   \'table\' => \'student_categories\',  \'alias\' => \'StudentCategory\',   \'conditions\' => array(\'StudentCategory.id = CensusStudent.student_category_id\') )',1,NULL,NULL,1,'2014-07-14 00:00:00'),(5,'Grade','name','EducationGrade','array(  \'type\' => \'INNER\',   \'table\' => \'education_grades\',  \'alias\' => \'EducationGrade\',   \'conditions\' => array(\'EducationGrade.id = CensusStudent.education_grade_id\') )',1,NULL,NULL,1,'2014-07-14 00:00:00');
/*!40000 ALTER TABLE `datawarehouse_dimensions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 10:02:38
