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
-- Table structure for table `security_users`
--

DROP TABLE IF EXISTS `security_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` char(60) NOT NULL DEFAULT '',
  `openemis_no` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `third_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `preferred_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text,
  `postal_code` varchar(20) DEFAULT NULL,
  `address_area_id` int(11) DEFAULT NULL COMMENT 'links to area_administratives.id',
  `birthplace_area_id` int(11) DEFAULT NULL COMMENT 'links to area_administratives.id',
  `gender_id` int(1) NOT NULL COMMENT 'links to genders.id',
  `date_of_birth` date NOT NULL,
  `date_of_death` date DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `identity_type_id` int(11) DEFAULT NULL,
  `identity_number` varchar(50) DEFAULT NULL,
  `external_reference` varchar(50) DEFAULT NULL,
  `super_admin` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0 -> Inactive, 1 -> Active',
  `last_login` datetime DEFAULT NULL,
  `photo_name` varchar(250) DEFAULT '',
  `photo_content` longblob,
  `preferred_language` varchar(2) DEFAULT NULL,
  `is_student` int(1) NOT NULL DEFAULT '0',
  `is_staff` int(1) NOT NULL DEFAULT '0',
  `is_guardian` int(1) NOT NULL DEFAULT '0',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `openemis_no` (`openemis_no`),
  KEY `openemis_no_2` (`openemis_no`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`),
  KEY `gender_id` (`gender_id`),
  KEY `address_area_id` (`address_area_id`),
  KEY `birthplace_area_id` (`birthplace_area_id`),
  KEY `status` (`status`),
  KEY `middle_name` (`middle_name`),
  KEY `third_name` (`third_name`),
  KEY `is_student` (`is_student`),
  KEY `is_staff` (`is_staff`),
  KEY `is_guardian` (`is_guardian`),
  KEY `super_admin` (`super_admin`),
  KEY `identity_number` (`identity_number`),
  KEY `username` (`username`),
  KEY `is_student_2` (`is_student`,`first_name`,`last_name`,`gender_id`,`date_of_birth`),
  KEY `is_student_3` (`is_student`,`first_name`,`last_name`,`gender_id`,`date_of_birth`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_users`
--

LOCK TABLES `security_users` WRITE;
/*!40000 ALTER TABLE `security_users` DISABLE KEYS */;
INSERT INTO `security_users` VALUES (1,'admin','$2y$10$PA377.ZqiyLmaDs4GcB4pe5DZQzjmquHFSs.kdd.MzeL12ABATTkS','15020121','Administrator',NULL,NULL,'',NULL,'nizarucsc@gmail.com',NULL,NULL,NULL,NULL,1,'1990-12-13',NULL,NULL,NULL,NULL,NULL,1,1,'2019-01-28 06:20:57','',NULL,NULL,0,0,0,1,'2019-01-28 06:20:57',1,'2018-01-04 00:00:00'),(2,'1548512809','$2y$10$Q0vw5hw1EKUeQ0lzUNCHguhVDNdlursclVUanuD0fW5EbcqI0O2Li','1548512809','Test Student',NULL,NULL,'Test',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-06-10',NULL,NULL,NULL,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-26 14:27:08'),(3,'1548513439','$2y$10$jiDhpbmXQqG.byukY.dhpejt7K76M3GBxtOFymO05m63knPwXbK9e','1548513439','test',NULL,NULL,'student',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-06-10',NULL,NULL,NULL,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-26 14:37:56'),(4,'1548513834','$2y$10$ICwrWk9jrcGBPMSge3HnwOS9o8c1BoI4VTmLbOqfhqN/trou/wuKq','1548513834','Test',NULL,NULL,'Student',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-01-26',NULL,NULL,NULL,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-26 14:44:06'),(5,'1548514007','$2y$10$HZANTnOq6w7HBTekXDkMIu3YUjrzkyZAUPvmAoOqu4a2/muWvY3N2','1548514007','Test Teacher','','','Lastname','','',NULL,NULL,NULL,NULL,1,'1990-01-30',NULL,NULL,NULL,'',NULL,0,0,NULL,NULL,NULL,'en',0,0,0,1,'2019-01-27 17:59:30',1,'2019-01-26 14:47:17'),(6,'1548515446','$2y$10$vTeGI/wkaXVCKQ.d.fkVeORG7dxhDxzpUjSqt4Vh3VWk1TFyUEkg6','1548515446','Student',NULL,NULL,'Name',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-06-10',NULL,NULL,NULL,NULL,NULL,0,1,'2019-01-27 03:27:53','',NULL,'en',0,0,0,1,'2019-01-27 03:27:53',1,'2019-01-26 15:11:42'),(7,'1548519882','$2y$10$EuGWmg6YYKf2CaVyz92yaujpT.LuFtg8fMZ6u3.p4j.KnHvrUTr8a','1548519882','Test',NULL,NULL,'jkjk',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-06-10',NULL,NULL,NULL,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-26 16:24:52'),(28,'1548606082','$2y$10$/XjNH66ku1WJaj76gr0PQeYqaUDd3QPc6qPNhEhQZYVwiFoOarG2C','1548606082','jkjk',NULL,NULL,'jkjk',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-01-01',NULL,1,1,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-27 16:22:06'),(29,'1548606155','$2y$10$0rdHo1rA3JXdsdu2H2OZgutYzv/QFnuWVwVlvPPZzblzJqQeHfUQ2','1548606155','lkkl',NULL,NULL,'klkl',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-01-01',NULL,1,1,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-27 16:23:13'),(30,'1548606629','$2y$10$UE0CwE3YIo3n66X0tWJZreNEoGLSh0mmONE5lI1yJb.zf5a1.yYIq','1548606629','sfd',NULL,NULL,'fsfd',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-01-01',NULL,1,1,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-27 16:32:08'),(31,'1548607491','$2y$10$j2ed.wkC2Ju6UWI9WJ/BA.JwgteqdhwVdtwItQuUBXVxY8p7iiNsa','1548607491','jkjk',NULL,NULL,'jkjk',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-01-01',NULL,1,1,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-27 16:45:25'),(32,'1548608334','$2y$10$AV0OH78rxCa9jZiGPilBoOa6Y0DIxR0Sk8fukcFAMKhwQKxh9kwLi','1548608334','kdslak',NULL,NULL,'klkl',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-01-08',NULL,1,1,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-27 16:59:10'),(33,'1548608634','$2y$10$UT9bpadsxWfVBKhlqcZWturX2SWytkOvt0d0E6SAiP/IhXQUZr4Uy','1548608634','dfsfsd',NULL,NULL,'fsfd',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-01-23',NULL,1,1,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-27 17:04:33'),(34,'1548610095','$2y$10$jgbtA.3HbbCqwP6Kmo8OyuWmcwReaxATz43Gu.lEFQonVN6hu9RXW','1548610095','fsdfsd',NULL,NULL,'fssd',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-01-07',NULL,1,1,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-27 17:28:50'),(35,'1548610375','$2y$10$BtgrVHXi39xf6y4Z3R2WpOG5SBUrzVCCJlQYlJyrmppK9nq3tJlmG','1548610375','Test',NULL,NULL,'User',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-01-01',NULL,1,1,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-27 17:33:51'),(36,'1548610761','$2y$10$uoWG.KMJNDG8TBBpuGR9fO9cRhjtUE6jagzpenZGyzTt0XYceykQm','1548610761','dasdas',NULL,NULL,'dsasad',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-01-01',NULL,1,1,NULL,NULL,0,1,'2019-01-28 04:07:56','',NULL,'en',0,0,0,1,'2019-01-28 06:23:25',1,'2019-01-27 17:39:55'),(37,'1548610903','$2y$10$WaQzJUw0YHnitZH04zUgV.xnx68BCGBQHbyiUvP.6SIZ8iJxuRQYW','1548610903','dsds',NULL,NULL,'dss',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-01-28',NULL,1,1,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-27 17:42:13'),(38,'1548612152','$2y$10$8/kTVUMMLlgyOR5Z/u1eeO3ZMgU11x7up3RLIjVug8jsqUcVeNmJS','1548612152','Royal Cordinator','','','Cordi','','',NULL,NULL,NULL,NULL,1,'1990-01-30',NULL,NULL,NULL,'',NULL,0,1,'2019-01-28 06:23:35','',NULL,'en',0,0,0,1,'2019-01-28 06:23:35',1,'2019-01-27 18:03:03'),(39,'1548612534','$2y$10$L36w/MvUq.GArGiTFY4P1.QCAuAHI8wNVJe0FYR7d15c4rfedlj/S','1548612534','adhj','','','hjhj','','',NULL,NULL,NULL,NULL,1,'2014-01-28',NULL,1,1,NULL,NULL,0,1,NULL,NULL,NULL,'en',0,0,0,38,'2019-01-28 06:57:10',38,'2019-01-27 18:09:34'),(40,'1548615272','$2y$10$uVW1A6nvszoziWoPiL0tQOLDg9II3qMnNn.elTvOpc6aTz0vvUSzK','1548615272','Test','','','User','','',NULL,NULL,NULL,NULL,1,'2010-02-02',NULL,NULL,NULL,'',NULL,0,1,NULL,'',NULL,'en',0,0,0,1,'2019-01-28 06:23:25',38,'2019-01-27 18:54:52'),(41,'1548615520','$2y$10$HXLZLqNRQ34CTe6SE/4wgerjSePIx72MFxkynDLRAfNtvdUU8L8s.','1548615520','sajjkj',NULL,NULL,'jkjk',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-01-28',NULL,1,1,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-27 18:59:04'),(42,'1548653289','$2y$10$bviM21LafyoaV.rxoQQ6WucS3DLca/KIawAyMNShUN0VNd1DCEbLO','1548653289','MOhamed',NULL,NULL,'Nizar',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-01-01',NULL,1,1,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-28 05:32:08'),(43,'1548747850','$2y$10$uZjbWle5UCfJQ8EiWF3HE.g5b10GX9vNEYl.Nsez5FHmhqmmDD5Vq','1548747850','Mohamed',NULL,NULL,'Nizar',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-06-10',NULL,1,1,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-29 07:44:25'),(44,'1548747922','$2y$10$mNNa2/mGA.rApv96JPbzQeQj9mJLb0Z.zy7USXUyt9GvAlC/6FazS','1548747922','Test',NULL,NULL,'Test',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-06-10',NULL,1,1,NULL,NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-29 07:45:53'),(45,'1548748285','$2y$10$ZEf/MXSN0f72OktTURDOHexNq5WMZjMAdDcL1LGajjYM5Y1ZRvn6C','1548748285','Test',NULL,NULL,'Name',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-06-17',NULL,1,1,'12121231337',NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-29 07:52:31'),(46,'1548748844','$2y$10$LSrjurHtZaHXYflcJwDCR.v333nvP7.pI810BYvDn0Vg.LkiLYSWu','1548748844','test',NULL,NULL,'some',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-06-10',NULL,1,1,'12125131337',NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-29 08:01:23'),(47,'1548749702','$2y$10$EPiawmkHYR8BMVlWDOBJEOxtexPTDcqyFVH0EFASBxr3AWCWM1bP.','1548749702','Test',NULL,NULL,'User',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-06-17',NULL,1,1,'12451231337',NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-29 08:18:19'),(48,'1548750168','$2y$10$8hQQt2zWHF0REm4TeBMMHuUcS/Vs.Hz2byGE3cLqB8SM5007wrTsC','1548750168','some',NULL,NULL,'student',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-01-01',NULL,1,1,'45214531337',NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-29 08:23:40'),(49,'1548750288','$2y$10$4hzVh9Kj.Jo.puBs6YDFveTbEjL.Ic8ciHCFyBM8/Q4WtY.ghPRte','1548750288','test',NULL,NULL,'student',NULL,NULL,NULL,NULL,NULL,NULL,1,'2014-04-01',NULL,1,1,'1457531337',NULL,0,1,NULL,'',NULL,'en',0,0,0,NULL,NULL,1,'2019-01-29 08:27:05');
/*!40000 ALTER TABLE `security_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:20
