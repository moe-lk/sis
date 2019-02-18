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
-- Table structure for table `workflow_models`
--

DROP TABLE IF EXISTS `workflow_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_models` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `model` varchar(200) NOT NULL,
  `filter` varchar(200) DEFAULT NULL,
  `is_school_based` int(1) NOT NULL DEFAULT '0',
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_user_id` (`created_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_models`
--

LOCK TABLES `workflow_models` WRITE;
/*!40000 ALTER TABLE `workflow_models` DISABLE KEYS */;
INSERT INTO `workflow_models` VALUES (1,'Staff > Career > Leave','Institution.StaffLeave','Staff.StaffLeaveTypes',1,1,'2016-11-08 07:25:05'),(2,'Institutions > Survey > Forms','Institution.InstitutionSurveys','Survey.SurveyForms',1,1,'2016-11-08 07:25:05'),(3,'Administration > Training > Courses','Training.TrainingCourses',NULL,0,1,'2016-11-08 07:25:05'),(4,'Administration > Training > Sessions','Training.TrainingSessions',NULL,0,1,'2016-11-08 07:25:05'),(5,'Administration > Training > Results','Training.TrainingSessionResults',NULL,0,1,'2016-11-08 07:25:05'),(6,'Staff > Training > Needs','Institution.StaffTrainingNeeds',NULL,0,1,'2016-11-08 07:25:05'),(7,'Institutions > Positions','Institution.InstitutionPositions',NULL,1,1,'2016-11-08 07:25:05'),(8,'Institutions > Staff > Change in Assignment','Institution.StaffPositionProfiles',NULL,1,1,'2016-11-08 07:25:05'),(9,'Institutions > Visits > Requests','Quality.VisitRequests',NULL,1,1,'2016-11-08 07:25:05'),(10,'Administration > Training > Applications','Training.TrainingApplications',NULL,1,1,'2016-11-08 07:25:05'),(11,'Staff > Professional Development > Licenses','Staff.Licenses','FieldOption.LicenseTypes',0,1,'2017-03-10 07:14:53'),(12,'Institutions > Cases','Cases.InstitutionCases',NULL,1,1,'2017-04-10 09:55:36'),(13,'Institutions > Staff Transfer > Receiving','Institution.StaffTransferIn',NULL,1,1,'2017-11-15 14:51:18'),(14,'Institutions > Staff Transfer > Sending','Institution.StaffTransferOut',NULL,1,1,'2017-11-15 14:51:18'),(15,'Institutions > Students > Student Withdraw','Institution.StudentWithdraw',NULL,1,1,'2019-01-25 08:44:12'),(16,'Institutions > Students > Student Admission','Institution.StudentAdmission',NULL,1,1,'2019-01-25 06:51:07'),(17,'Institutions > Student Transfer > Receiving','Institution.StudentTransferIn',NULL,1,1,'2019-01-25 06:51:07'),(18,'Institutions > Student Transfer > Sending','Institution.StudentTransferOut',NULL,1,1,'2019-01-25 06:51:07'),(19,'Staff > Career > Appraisals','Institution.StaffAppraisals','StaffAppraisal.AppraisalTypes',1,1,'2019-01-21 15:30:06'),(20,'Administration > Scholarships > Applications','Scholarship.Applications',NULL,0,1,'2019-01-21 15:24:27');
/*!40000 ALTER TABLE `workflow_models` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:11
