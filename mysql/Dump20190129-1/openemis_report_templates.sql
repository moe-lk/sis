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
-- Table structure for table `report_templates`
--

DROP TABLE IF EXISTS `report_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `model` varchar(50) NOT NULL,
  `query` text NOT NULL,
  `security_user_id` int(11) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `security_user_id` (`security_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_templates`
--

LOCK TABLES `report_templates` WRITE;
/*!40000 ALTER TABLE `report_templates` DISABLE KEYS */;
INSERT INTO `report_templates` VALUES (1,'Test-S','','Student','$reportFields=array (\n  \'Student\' => \n  array (\n    \'identification_no\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'1\',\n      \'Type\' => \'string\',\n      \'Length\' => \'100\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n    \'first_name\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'2\',\n      \'Type\' => \'string\',\n      \'Length\' => \'100\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'LIKE\',\n      \'Example\' => \'s\',\n    ),\n    \'middle_name\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'3\',\n      \'Type\' => \'string\',\n      \'Length\' => \'100\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n    \'last_name\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'4\',\n      \'Type\' => \'string\',\n      \'Length\' => \'100\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n    \'preferred_name\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'5\',\n      \'Type\' => \'string\',\n      \'Length\' => \'100\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n    \'gender\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'6\',\n      \'Type\' => \'string\',\n      \'Length\' => \'1\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'f\',\n    ),\n    \'date_of_birth\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'7\',\n      \'Type\' => \'date\',\n      \'Length\' => \'10\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n    \'date_of_death\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'8\',\n      \'Type\' => \'date\',\n      \'Length\' => \'10\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n    \'address\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'9\',\n      \'Type\' => \'text\',\n      \'Length\' => \'10\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n    \'postal_code\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'10\',\n      \'Type\' => \'string\',\n      \'Length\' => \'20\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n  ),\n  \'Report\' => \n  array (\n    \'Logical\' => \'AND\',\n    \'OrderDirection\' => \'ASC\',\n    \'OrderBy1\' => \'Student.first_name\',\n    \'OrderBy2\' => \'Student.last_name\',\n    \'Output\' => \'xls\',\n    \'MainModel\' => \'Student\',\n    \'SaveReport\' => \'1\',\n    \'ReportName\' => \'Test-S\',\n    \'ReportDescription\' => \'\',\n    \'SharedReport\' => \'0\',\n    \'OneToManyOption\' => \'\',\n  ),\n);',7,NULL,NULL,7,'2014-09-07 18:02:03'),(2,'Student_Report_20140908_135002','','Student','$reportFields=array (\n  \'Student\' => \n  array (\n    \'identification_no\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'1\',\n      \'Type\' => \'string\',\n      \'Length\' => \'100\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n    \'first_name\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'2\',\n      \'Type\' => \'string\',\n      \'Length\' => \'100\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n    \'middle_name\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'3\',\n      \'Type\' => \'string\',\n      \'Length\' => \'100\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n    \'last_name\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'4\',\n      \'Type\' => \'string\',\n      \'Length\' => \'100\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n    \'preferred_name\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'5\',\n      \'Type\' => \'string\',\n      \'Length\' => \'100\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n    \'gender\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'6\',\n      \'Type\' => \'string\',\n      \'Length\' => \'1\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n    \'date_of_birth\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'7\',\n      \'Type\' => \'date\',\n      \'Length\' => \'10\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n    \'date_of_death\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'8\',\n      \'Type\' => \'date\',\n      \'Length\' => \'10\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n    \'address\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'9\',\n      \'Type\' => \'text\',\n      \'Length\' => \'10\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n    \'postal_code\' => \n    array (\n      \'Add\' => \'1\',\n      \'Position\' => \'10\',\n      \'Type\' => \'string\',\n      \'Length\' => \'20\',\n      \'Not\' => \'0\',\n      \'Filter\' => \'=\',\n      \'Example\' => \'\',\n    ),\n  ),\n  \'Report\' => \n  array (\n    \'Logical\' => \'AND\',\n    \'OrderDirection\' => \'ASC\',\n    \'Output\' => \'xls\',\n    \'MainModel\' => \'Student\',\n    \'SaveReport\' => \'1\',\n    \'ReportName\' => \'\',\n    \'ReportDescription\' => \'\',\n    \'SharedReport\' => \'0\',\n    \'OneToManyOption\' => \'\',\n  ),\n);',7,NULL,NULL,7,'2014-09-08 13:50:02');
/*!40000 ALTER TABLE `report_templates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:13
