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
-- Table structure for table `institution_positions`
--

DROP TABLE IF EXISTS `institution_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL COMMENT 'links to workflow_steps.id',
  `position_no` varchar(30) NOT NULL,
  `staff_position_title_id` int(11) NOT NULL COMMENT 'links to staff_position_titles.id',
  `staff_position_grade_id` int(11) NOT NULL COMMENT 'links to staff_position_grades.id',
  `institution_id` int(11) NOT NULL COMMENT 'links to institutions.id',
  `assignee_id` int(11) NOT NULL DEFAULT '0' COMMENT 'links to security_users.id',
  `is_homeroom` int(1) NOT NULL DEFAULT '0',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status_id` (`status_id`),
  KEY `staff_position_title_id` (`staff_position_title_id`),
  KEY `staff_position_grade_id` (`staff_position_grade_id`),
  KEY `institution_id` (`institution_id`),
  KEY `assignee_id` (`assignee_id`),
  KEY `modified_user_id` (`modified_user_id`),
  KEY `created_user_id` (`created_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_positions`
--

LOCK TABLES `institution_positions` WRITE;
/*!40000 ALTER TABLE `institution_positions` DISABLE KEYS */;
INSERT INTO `institution_positions` VALUES (11,35,'SC989-1548838656',1,1,2,1,1,1,'2019-01-31 11:24:00',35,'2019-01-30 08:57:41'),(13,35,'SC989-1548839207',1,1,2,1,1,38,'2019-01-31 10:45:36',38,'2019-01-30 09:07:19'),(14,35,'SC989-1548839447',2,1,2,1,0,38,'2019-01-31 11:05:53',38,'2019-01-30 09:10:53'),(16,35,'SC09090-1548839965',2,1,1,1,1,1,'2019-01-31 17:16:15',1,'2019-01-30 09:19:31'),(18,26,'SC09090-1548936700',1,1,1,1,1,NULL,NULL,1,'2019-01-31 12:11:50'),(19,26,'SC09090-1548936757',2,2,1,1,1,NULL,NULL,1,'2019-01-31 12:12:41'),(20,29,'SC09090-1548936823',1,1,1,1,1,NULL,NULL,1,'2019-01-31 12:13:48'),(21,26,'SC989-1548956180',1,1,2,1,1,NULL,NULL,1,'2019-01-31 17:36:26'),(22,26,'SC989-1549000490',2,1,2,1,1,NULL,NULL,1,'2019-02-01 05:54:54'),(24,26,'SC989-1549001111',2,1,2,1,1,NULL,NULL,1,'2019-02-01 06:05:16'),(25,27,'SC989-1549001184',2,3,2,1,1,1,'2019-02-02 14:22:33',1,'2019-02-01 06:06:31'),(26,29,'SC989-1549103729',1,1,2,1,1,1,'2019-02-02 11:23:36',1,'2019-02-02 10:35:57'),(27,26,'SC989-1549103907',2,2,2,38,1,1,'2019-02-02 12:50:19',38,'2019-02-02 10:38:33'),(28,29,'SC989-1549104005',2,1,2,1,1,1,'2019-02-02 11:24:29',38,'2019-02-02 10:40:10'),(29,29,'SC989-1549104315',1,1,2,1,1,1,'2019-02-02 11:24:15',38,'2019-02-02 10:46:43'),(30,29,'SC989-1549105645',2,1,2,1,0,1,'2019-02-02 11:24:01',38,'2019-02-02 11:12:27'),(31,29,'SC989-1549106134',2,1,2,1,1,1,'2019-02-02 11:21:23',38,'2019-02-02 11:15:39'),(32,29,'SC989-1549107117',1,1,2,1,1,35,'2019-02-02 11:32:50',35,'2019-02-02 11:32:04'),(33,29,'SC989-1549107398',1,1,2,1,1,1,'2019-02-02 11:37:31',35,'2019-02-02 11:36:43'),(34,29,'SC7878-1549116196',2,1,8,77,1,77,'2019-02-02 14:08:24',77,'2019-02-02 14:03:21'),(35,29,'SC7878-1549116588',1,1,8,78,1,77,'2019-02-02 14:13:54',78,'2019-02-02 14:09:53'),(36,29,'SC7878-1549116730',2,1,8,77,1,77,'2019-02-02 14:12:26',77,'2019-02-02 14:12:15'),(37,29,'SC7878-1549116788',1,1,8,78,1,77,'2019-02-02 14:13:46',78,'2019-02-02 14:13:13');
/*!40000 ALTER TABLE `institution_positions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 10:02:35
