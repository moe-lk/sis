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
-- Table structure for table `institution_sites`
--

DROP TABLE IF EXISTS `institution_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `alternative_name` varchar(150) NOT NULL,
  `code` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `date_opened` date NOT NULL,
  `year_opened` int(4) NOT NULL,
  `date_closed` date DEFAULT NULL,
  `year_closed` int(4) DEFAULT NULL,
  `longitude` varchar(15) DEFAULT NULL,
  `latitude` varchar(15) DEFAULT NULL,
  `institution_site_area_id` int(11) DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `area_administrative_id` int(11) DEFAULT NULL,
  `institution_id` int(11) NOT NULL,
  `institution_site_locality_id` int(11) NOT NULL,
  `institution_site_type_id` int(11) NOT NULL,
  `institution_site_ownership_id` int(11) NOT NULL,
  `institution_site_status_id` int(11) NOT NULL,
  `institution_site_sector_id` int(11) NOT NULL,
  `institution_site_provider_id` int(11) NOT NULL,
  `institution_site_gender_id` int(5) NOT NULL,
  `security_group_id` int(11) NOT NULL DEFAULT '0',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `area_id` (`area_id`),
  KEY `institution_id` (`institution_id`),
  KEY `institution_site_provider_id` (`institution_site_provider_id`),
  KEY `institution_site_sector_id` (`institution_site_sector_id`),
  KEY `institution_site_gender_id` (`institution_site_gender_id`),
  KEY `security_group_id` (`security_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_sites`
--

LOCK TABLES `institution_sites` WRITE;
/*!40000 ALTER TABLE `institution_sites` DISABLE KEYS */;
INSERT INTO `institution_sites` VALUES (1,'Atemkit Pre-School','','55A48','4018 W Clearwater Ave','18976','Dr Sedore','98765432','98765433','joey@sedore.com','http://www.education.gov/','0000-00-00',1980,NULL,NULL,'103.711','1.32',NULL,1,1,0,79,65,72,86,2,1,8,2,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(2,'Badihagwa Secondary School','','55A70','5 E Main','82001','Ms Toomey','98765432','98765433','traci@toomey.com','http://www.education.gov/','0000-00-00',1992,NULL,NULL,'103.7154','1.3222',NULL,1,1,0,80,70,72,86,2,1,8,3,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(3,'Baibari Primary School','','57B21','611 1st Ave N','10011','Ms Barkle','98765432','98765433','jessie@barkle.com','http://www.education.gov/','0000-00-00',1998,NULL,NULL,'103.7198','1.3244',NULL,1,1,0,81,66,72,86,2,1,8,4,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(4,'Cameron High School','','58D44','131 Rimbach St','96819','Dr Auteri','98765432','98765433','melvin@auteri.com','http://www.education.gov/','0000-00-00',1998,NULL,NULL,'103.7242','1.3266',NULL,1,1,0,79,71,72,86,2,1,8,5,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(5,'De La Salle Secondary School','','59462','103 Main St','97128','Mdm Leonesio','98765432','98765433','ashley@leonesio.com','http://www.education.gov/','0000-00-00',1998,NULL,NULL,'103.7286','1.3288',NULL,1,1,0,80,70,72,86,2,1,8,6,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(6,'Erave Secondary School','','54167','101 W Central Blvd','50548','Ms Deppert','98765432','98765433','sabrina@deppert.com','http://www.education.gov/','0000-00-00',1999,NULL,NULL,'103.733','1.331',NULL,1,1,0,81,70,72,86,2,1,8,7,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(7,'Gerehu Secondary School','','54151','218 W Main St','44839','Mr Humble','98765432','98765433','carla@humble.com','http://www.education.gov/','0000-00-00',1999,NULL,NULL,'103.7374','1.3332',NULL,1,1,0,79,70,72,86,2,1,8,8,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(8,'Gordon Secondary School','','55B52','979 3rd Ave','97402','Ms Sotlar','98765432','98765433','josephine@sotlar.com','http://www.education.gov/','0000-00-00',1999,NULL,NULL,'103.7418','1.3354',NULL,1,1,0,80,70,72,86,2,1,8,9,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(9,'Guriaso Pre-School','','67A09','300 E Phillips St','32259','Dr Resendiz','98765432','98765433','deandre@resendiz.com','http://www.education.gov/','0000-00-00',1999,NULL,NULL,'103.7462','1.3376',NULL,1,1,0,81,65,72,86,2,1,8,10,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(10,'Hoiebia High School','','54D51','415 Center St','85021','Mdm Schartz','98765432','98765433','robin@schartz.com','http://www.education.gov/','2019-07-00',2000,NULL,NULL,'103.7506','1.3398',NULL,1,1,0,79,71,72,86,2,1,8,11,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(11,'Issi Pre-School','','64439','3721 Oberlin Ave','18201','Mdm Morein','98765432','98765433','frankie@morein.com','http://www.education.gov/','2020-08-00',2000,NULL,NULL,'103.755','1.342',NULL,1,1,0,80,65,72,86,2,1,8,12,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(12,'Kalem Pre-School','','54B73','140 N Columbus St','46320','Dr Achorn','98765432','98765433','veronica@achorn.com','http://www.education.gov/','2013-01-01',2001,NULL,NULL,'103.7594','1.3442',NULL,1,1,0,81,65,72,86,2,1,8,13,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(13,'Kerowagi Secondary School','','63A82','1 First Federal Plz','77068','Mdm Davensizer','98765432','98765433','isaac@davensizer.com','http://www.education.gov/','2016-04-01',2001,NULL,NULL,'103.7638','1.3464',NULL,1,1,0,79,70,72,86,2,1,8,14,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(14,'Kila Kila Secondary School','','51B43','201 N Main St','7626','Mr Seiters','98765432','98765433','stephen@seiters.com','http://www.education.gov/','2016-04-02',2002,NULL,NULL,'103.7682','1.3486',NULL,1,1,0,80,70,72,86,2,1,8,15,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(15,'Klelbuf Pre-School','','62C41','185 E Market St','10940','Mr Hacher','98765432','98765433','warren@hacher.com','http://www.education.gov/','2017-05-02',2002,NULL,NULL,'103.7726','1.3508',NULL,1,1,0,81,65,72,86,2,1,8,16,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(16,'Lake Campbell Pre-School','','52A27','50 Spring St  #-1','78701','Mr Staub','98765432','98765433','mayme@staub.com','http://www.education.gov/','2020-08-02',2002,NULL,NULL,'103.777','1.353',NULL,1,1,0,79,65,72,86,2,1,8,17,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(17,'Lumi High School','','64443','851 Fort Street Mall','2919','Mdm Cinkan','98765432','98765433','hanna@cinkan.com','http://www.education.gov/','0002-02-03',2003,NULL,NULL,'103.7814','1.3552',NULL,1,1,0,80,71,72,86,2,1,8,18,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(18,'Maprik High School','','55032','275 W Bridge St','91203','Ms Wooldridge','98765432','98765433','kory@wooldridge.com','http://www.education.gov/','2017-05-03',2003,NULL,NULL,'103.7858','1.3574',NULL,1,1,0,81,71,72,86,2,1,8,19,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(19,'Marianville Secondary School','','51C11','12 E Broad St','68124','Mdm Santellana','98765432','98765433','lucas@santellana.com','http://www.education.gov/','2028-07-03',2003,NULL,NULL,'103.7902','1.3596',NULL,1,1,0,79,70,72,86,2,1,8,20,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(20,'Mercy Secondary School','','55055','135 E Liberty St','99336','Dr Resendes','98765432','98765433','vernice@resendes.com','http://www.education.gov/','2021-09-03',2003,NULL,NULL,'103.7946','1.3618',NULL,1,1,0,80,70,72,86,2,1,8,21,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(21,'Mimbite Pre-School','','67C51','615 W Markham St','15601','Mr Rathrock','98765432','98765433','janet@rathrock.com','http://www.education.gov/','2015-03-04',2004,NULL,NULL,'103.799','1.364',NULL,1,1,0,81,65,72,86,2,1,8,22,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(22,'Mt Hagen Secondary','','56G47','550 N Edward St','19130','Dr Deshay','98765432','98765433','robbie@deshay.com','http://www.education.gov/','2018-06-04',2004,NULL,NULL,'103.8034','1.3662',NULL,1,1,0,79,70,72,86,2,1,8,23,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(23,'Ninigil Primary School','','54693','25 E High St','29621','Mr Nguyen','98765432','98765433','kasey@nguyen.com','http://www.education.gov/','2023-11-04',2004,NULL,NULL,'103.8078','1.3684',NULL,1,1,0,80,66,72,86,2,1,8,24,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(24,'Notre Dame Secondary','','55179','100 W 25th Ave','84060','Dr Kreutzbender','98765432','98765433','derek@kreutzbender.com','http://www.education.gov/','2015-03-05',2005,NULL,NULL,'103.8122','1.3706',NULL,1,1,0,81,70,72,86,2,1,8,25,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(25,'Paka High School','','55A47','330 Route 211 E','60438','Mr Holmes','98765432','98765433','hillary@holmes.com','http://www.education.gov/','2016-04-05',2005,NULL,NULL,'103.8166','1.3728',NULL,1,1,0,79,71,72,86,2,1,8,26,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(26,'Pindiu Agro Technical High School','','64A48','100 S 2nd Ave','72201','Mr Mildon','98765432','98765433','ezekiel@mildon.com','http://www.education.gov/','2020-08-05',2005,NULL,NULL,'103.821','1.375',NULL,1,1,0,80,71,72,86,2,1,8,27,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(27,'Pino Primary School','','64B99','511 Saint Johns Ave','44691','Dr Janski','98765432','98765433','timothy@janski.com','http://www.education.gov/','2014-02-06',2006,NULL,NULL,'103.8254','1.3772',NULL,1,1,0,81,66,72,86,2,1,8,28,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(28,'Punda Primary School','','63230','532 Court St','43011','Ms Renzi','98765432','98765433','elaine@renzi.com','http://www.education.gov/','2018-06-06',2006,NULL,NULL,'103.8298','1.3794',NULL,1,1,0,79,66,72,86,2,1,8,29,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(29,'Rosary Secondary School','','58C23','22 James St','39564','Ms Bayer','98765432','98765433','reva@bayer.com','http://www.education.gov/','2014-02-07',2007,NULL,NULL,'103.8342','1.3816',NULL,1,1,0,80,70,72,86,2,1,8,30,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(30,'Senkom Primary School','','70C13','737 Levittown Ctr','10022','Ms Gerbi','98765432','98765433','deanna@gerbi.com','http://www.education.gov/','0003-04-11',2011,NULL,NULL,'103.8386','1.3838',NULL,1,1,0,81,66,72,86,2,1,8,31,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(31,'Sogae Primary School','','59B73','1810 Pioneer Ave','31401','Ms Leclare','98765432','98765433','minh@leclare.com','http://www.education.gov/','0001-04-13',2013,NULL,NULL,'103.843','1.386',NULL,1,1,0,79,66,72,86,2,1,8,32,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(32,'St. John Bosco High School  Dagua','','68410','118 Mill St','54656','Mr Hammitt','98765432','98765433','miranda@hammitt.com','http://www.education.gov/','0000-00-00',1980,NULL,NULL,'103.8474','1.3882',NULL,1,1,0,80,71,72,86,2,1,8,33,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(33,'St. Marcellin High School','','68A19','126 S Bellevue Ave','62522','Dr Ruffins','98765432','98765433','darrel@ruffins.com','http://www.education.gov/','0000-00-00',1992,NULL,NULL,'103.8518','1.3904',NULL,1,1,0,81,71,72,86,2,1,8,34,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(34,'St.Charles Lwanga Secondary School','','54D01','102 5th St N','20009','Mr Staffon','98765432','98765433','kira@staffon.com','http://www.education.gov/','0000-00-00',1998,NULL,NULL,'103.8562','1.3926',NULL,1,1,0,79,70,72,86,2,1,8,35,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(35,'Talpipi Primary School','','57001','550 N Brand Blvd  #-800','3894','Ms Dales','98765432','98765433','danny@dales.com','http://www.education.gov/','0000-00-00',1998,'2015-03-04',2004,'103.8606','1.3948',NULL,1,1,0,80,66,72,86,2,1,8,36,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(36,'Wareho Pre-School','','60D20','3540 S 84th St','11218','Mdm Guevarra','98765432','98765433','gregg@guevarra.com','http://www.education.gov/','0000-00-00',1998,'2018-06-04',2004,'103.865','1.397',NULL,1,1,0,81,65,72,86,2,1,8,37,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(37,'Wassisi Pre-School','','54061','1400 Gault Ave N','14614','Mdm Rheaves','98765432','98765433','johnnie@rheaves.com','http://www.education.gov/','0000-00-00',1999,'2023-11-04',2004,'103.8694','1.3992',NULL,1,1,0,79,65,72,86,2,1,8,38,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(38,'Wasu High School','','62B51','222 S 10th St','75081','Dr Truiolo','98765432','98765433','luciano@truiolo.com','http://www.education.gov/','0000-00-00',1999,'2015-03-05',2005,'103.8738','1.4014',NULL,1,1,0,80,71,72,86,2,1,8,39,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(39,'Wawoi Primary School','','55001','3043 Ridge Rd','18933','Mr Dalen','98765432','98765433','jeanie@dalen.com','http://www.education.gov/','0000-00-00',1999,'2016-04-05',2005,'103.8782','1.4036',NULL,1,1,0,81,66,72,86,2,1,8,40,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(40,'Weikint Primary School','','52B09','237 Jackson St Sw','35045','Mr Engelman','98765432','98765433','vernon@engelman.com','http://www.education.gov/','0000-00-00',1999,'2020-08-05',2005,'103.8826','1.4058',NULL,1,1,0,79,66,72,86,2,1,8,41,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(41,'Wublakil Secondary School ','','60C79','Rts 232 & 413','6877','Mdm Rowlett','98765432','98765433','sadie@rowlett.com','http://www.education.gov/','2019-07-00',2000,'2014-02-06',2006,'103.887','1.408',NULL,1,1,0,80,70,72,86,2,1,8,42,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(42,'Yabiru Secondary School','','52B33','404 Main St','10940','Ms Pahnke','98765432','98765433','ella@pahnke.com','http://www.education.gov/','2020-08-00',2000,'2018-06-06',2006,'103.8914','1.4102',NULL,1,1,0,81,70,72,86,2,1,8,43,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(43,'Yaggifo Secondary School','','56F16','16 Highland Park Way','94403','Dr Griglen','98765432','98765433','alfonso@griglen.com','http://www.education.gov/','2013-01-01',2001,'2014-02-07',2007,'103.8958','1.4124',NULL,1,1,0,79,70,72,86,2,1,8,44,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(44,'Yanbi Secondary School','','57C50','64 Dyerville Ave','54601','Mdm Nordlinger','98765432','98765433','denice@nordlinger.com','http://www.education.gov/','2016-04-01',2001,'0003-04-11',2011,'103.9002','1.4146',NULL,1,1,0,80,70,72,86,2,1,8,45,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00'),(45,'Yeran Secondary School','','57578','7828 N 19th Ave','3860','Mdm Gauer','98765432','98765433','eddie@gauer.com','http://www.education.gov/','2016-04-02',2002,'0001-04-13',2013,'103.9046','1.4168',NULL,1,1,0,81,70,72,86,2,1,8,46,0,'0000-00-00 00:00:00',2,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `institution_sites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 10:02:37
