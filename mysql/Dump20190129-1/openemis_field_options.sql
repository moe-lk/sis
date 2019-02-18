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
-- Table structure for table `field_options`
--

DROP TABLE IF EXISTS `field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_options` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `plugin` varchar(50) DEFAULT NULL,
  `old_id` int(11) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent` varchar(50) DEFAULT NULL,
  `params` text,
  `order` int(3) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_options`
--

LOCK TABLES `field_options` WRITE;
/*!40000 ALTER TABLE `field_options` DISABLE KEYS */;
INSERT INTO `field_options` VALUES (1,NULL,66,'InstitutionSiteGender','Gender','Institution',NULL,1,1,NULL,NULL,1,'0000-00-00 00:00:00'),(2,NULL,5,'InstitutionSiteLocality','Locality','Institution',NULL,2,1,NULL,NULL,1,'0000-00-00 00:00:00'),(3,NULL,4,'InstitutionSiteOwnership','Ownership','Institution',NULL,3,1,NULL,NULL,1,'0000-00-00 00:00:00'),(4,NULL,1,'InstitutionSiteProvider','Provider','Institution',NULL,4,1,NULL,NULL,1,'0000-00-00 00:00:00'),(5,NULL,2,'InstitutionSiteSector','Sector','Institution',NULL,5,1,NULL,NULL,1,'0000-00-00 00:00:00'),(6,NULL,6,'InstitutionSiteStatus','Status','Institution',NULL,6,1,NULL,NULL,1,'0000-00-00 00:00:00'),(7,NULL,3,'InstitutionSiteType','Type','Institution',NULL,7,1,NULL,NULL,1,'0000-00-00 00:00:00'),(8,NULL,7,'InstitutionSiteCustomField','Custom Fields','Institution','{\"model\":\"InstitutionSiteCustomField\"}',8,1,NULL,NULL,1,'0000-00-00 00:00:00'),(9,NULL,10,'CensusCustomFieldOption','Custom Field Options','Institution Totals','{\"model\":\"CensusCustomFieldOption\"}',9,0,NULL,NULL,1,'0000-00-00 00:00:00'),(10,NULL,9,'CensusCustomField','Custom Fields','Institution Totals','{\"model\":\"CensusCustomField\"}',10,1,NULL,NULL,1,'0000-00-00 00:00:00'),(11,NULL,75,'CensusGrid','Custom Grids','Institution Totals','{\"model\":\"CensusGrid\"}',11,1,NULL,NULL,1,'0000-00-00 00:00:00'),(12,'Students',63,'StudentAbsenceReason','Absence Reasons','Student',NULL,12,1,NULL,NULL,1,'0000-00-00 00:00:00'),(13,'Students',55,'StudentBehaviourCategory','Behaviour Categories','Student',NULL,13,1,NULL,NULL,1,'0000-00-00 00:00:00'),(14,'Students',54,'StudentCategory','Categories','Student',NULL,14,1,NULL,NULL,1,'0000-00-00 00:00:00'),(15,'Students',76,'Gender','Gender','Student',NULL,15,0,NULL,NULL,1,'2014-08-12 17:32:25'),(16,'Students',56,'StudentStatus','Status','Student',NULL,16,0,NULL,NULL,1,'0000-00-00 00:00:00'),(17,'Students',57,'StudentCustomField','Custom Fields','Student','{\"model\":\"Students.StudentCustomField\"}',17,1,NULL,NULL,1,'0000-00-00 00:00:00'),(18,'Staff',64,'StaffAbsenceReason','Absence Reasons','Staff',NULL,18,1,NULL,NULL,1,'0000-00-00 00:00:00'),(19,'Staff',86,'StaffBehaviourCategory','Behaviour Categories','Staff',NULL,19,1,NULL,NULL,1,'0000-00-00 00:00:00'),(20,'Staff',74,'LeaveStatus','Leave Status','Staff',NULL,20,1,NULL,NULL,1,'0000-00-00 00:00:00'),(21,'Staff',73,'StaffLeaveType','Leave Type','Staff',NULL,21,1,NULL,NULL,1,'0000-00-00 00:00:00'),(22,'Staff',65,'StaffType','Staff Type','Staff',NULL,22,1,NULL,NULL,1,'0000-00-00 00:00:00'),(23,'Staff',82,'StaffStatus','Status','Staff',NULL,23,0,NULL,NULL,1,'0000-00-00 00:00:00'),(24,'Staff',62,'StaffTrainingCategory','Training Categories','Staff',NULL,24,1,NULL,NULL,1,'0000-00-00 00:00:00'),(25,'Staff',71,'StaffCustomField','Custom Fields','Staff','{\"model\":\"Staff.StaffCustomField\"}',25,1,NULL,NULL,1,'0000-00-00 00:00:00'),(27,NULL,15,'Bank','Banks','Finance','{\"model\":\"Bank\"}',27,1,NULL,NULL,1,'0000-00-00 00:00:00'),(28,NULL,16,'BankBranch','Bank Branches','Finance','{\"model\":\"BankBranch\"}',28,1,NULL,NULL,1,'0000-00-00 00:00:00'),(29,NULL,11,'FinanceNature','Nature','Finance','{\"model\":\"FinanceNature\"}',29,1,NULL,NULL,1,'0000-00-00 00:00:00'),(30,NULL,12,'FinanceType','Types','Finance','{\"model\":\"FinanceType\"}',30,1,NULL,NULL,1,'0000-00-00 00:00:00'),(31,NULL,13,'FinanceCategory','Categories','Finance','{\"model\":\"FinanceCategory\"}',31,1,NULL,NULL,1,'0000-00-00 00:00:00'),(32,NULL,14,'FinanceSource','Source','Finance','{\"model\":\"FinanceSource\"}',32,1,NULL,NULL,1,'0000-00-00 00:00:00'),(33,NULL,85,'FeeType','Fee Types','Finance',NULL,33,1,NULL,NULL,1,'2014-10-02 21:42:34'),(34,'Students',78,'GuardianEducationLevel','Guardian Education Levels','Guardian',NULL,34,1,NULL,NULL,1,'0000-00-00 00:00:00'),(35,'Students',77,'GuardianRelation','Guardian Relations','Guardian',NULL,35,1,NULL,NULL,1,'0000-00-00 00:00:00'),(36,NULL,31,'HealthAllergyType','Allergy Types','Health',NULL,36,1,NULL,NULL,1,'0000-00-00 00:00:00'),(37,NULL,29,'HealthCondition','Conditions','Health',NULL,37,1,NULL,NULL,1,'0000-00-00 00:00:00'),(38,NULL,33,'HealthConsultationType','Consultation Types','Health',NULL,38,1,NULL,NULL,1,'0000-00-00 00:00:00'),(39,NULL,30,'HealthImmunization','Immunization','Health',NULL,39,1,NULL,NULL,1,'0000-00-00 00:00:00'),(40,NULL,28,'HealthRelationship','Relationships','Health',NULL,40,1,NULL,NULL,1,'0000-00-00 00:00:00'),(41,NULL,32,'HealthTestType','Test Types','Health',NULL,41,1,NULL,NULL,1,'0000-00-00 00:00:00'),(42,NULL,35,'InfrastructureBuilding','Buildings','Infrastructure','{\"model\":\"InfrastructureBuilding\"}',42,1,NULL,NULL,1,'0000-00-00 00:00:00'),(43,NULL,34,'InfrastructureCategory','Categories','Infrastructure','{\"model\":\"InfrastructureCategory\"}',43,1,NULL,NULL,1,'0000-00-00 00:00:00'),(44,NULL,36,'InfrastructureEnergy','Energy','Infrastructure','{\"model\":\"InfrastructureEnergy\"}',44,1,NULL,NULL,1,'0000-00-00 00:00:00'),(45,NULL,37,'InfrastructureFurniture','Furniture','Infrastructure','{\"model\":\"InfrastructureFurniture\"}',45,1,NULL,NULL,1,'0000-00-00 00:00:00'),(46,NULL,42,'InfrastructureMaterial','Materials','Infrastructure','{\"model\":\"InfrastructureMaterial\"}',46,1,NULL,NULL,1,'0000-00-00 00:00:00'),(47,NULL,38,'InfrastructureResource','Resources','Infrastructure','{\"model\":\"InfrastructureResource\"}',47,1,NULL,NULL,1,'0000-00-00 00:00:00'),(48,NULL,39,'InfrastructureRoom','Rooms','Infrastructure','{\"model\":\"InfrastructureRoom\"}',48,1,NULL,NULL,1,'0000-00-00 00:00:00'),(49,NULL,40,'InfrastructureSanitation','Sanitation','Infrastructure','{\"model\":\"InfrastructureSanitation\"}',49,1,NULL,NULL,1,'0000-00-00 00:00:00'),(50,NULL,84,'SanitationGender','Sanitation Gender','Infrastructure',NULL,50,1,NULL,NULL,1,'2014-09-30 03:09:09'),(51,NULL,43,'InfrastructureStatus','Statuses','Infrastructure','{\"model\":\"InfrastructureStatus\"}',51,1,NULL,NULL,1,'0000-00-00 00:00:00'),(52,NULL,41,'InfrastructureWater','Water','Infrastructure','{\"model\":\"InfrastructureWater\"}',52,1,NULL,NULL,1,'0000-00-00 00:00:00'),(53,'Staff',60,'StaffPositionGrade','Grades','Position',NULL,53,1,NULL,NULL,1,'0000-00-00 00:00:00'),(54,'Staff',61,'StaffPositionStep','Steps','Position',NULL,54,1,NULL,NULL,1,'0000-00-00 00:00:00'),(55,'Staff',59,'StaffPositionTitle','Titles','Position',NULL,55,1,NULL,NULL,1,'0000-00-00 00:00:00'),(56,'Staff',87,'QualificationLevel','Levels','Qualification',NULL,56,1,NULL,NULL,1,'0000-00-00 00:00:00'),(57,'Training',79,'QualificationSpecialisation','Specialisations','Qualification',NULL,57,1,NULL,NULL,1,'2014-08-19 00:00:00'),(58,NULL,27,'QualityVisitType','Visit Types','Quality',NULL,58,1,NULL,NULL,1,'0000-00-00 00:00:00'),(59,NULL,44,'SalaryAdditionType','Addition Types','Salary',NULL,59,1,NULL,NULL,1,'0000-00-00 00:00:00'),(60,NULL,45,'SalaryDeductionType','Deduction Types','Salary',NULL,60,1,NULL,NULL,1,'0000-00-00 00:00:00'),(61,'Staff',69,'TrainingAchievementType','Achievement Types','Training',NULL,61,1,NULL,NULL,1,'0000-00-00 00:00:00'),(62,NULL,46,'TrainingCourseType','Course Types','Training',NULL,62,1,NULL,NULL,1,'0000-00-00 00:00:00'),(63,NULL,47,'TrainingFieldStudy','Field of Studies','Training',NULL,63,1,NULL,NULL,1,'0000-00-00 00:00:00'),(64,NULL,48,'TrainingLevel','Levels','Training',NULL,64,1,NULL,NULL,1,'0000-00-00 00:00:00'),(65,NULL,49,'TrainingModeDelivery','Mode of Deliveries','Training',NULL,65,1,NULL,NULL,1,'0000-00-00 00:00:00'),(66,'Staff',67,'TrainingNeedCategory','Need Categories','Training',NULL,66,1,NULL,NULL,1,'0000-00-00 00:00:00'),(67,NULL,50,'TrainingPriority','Priorities','Training',NULL,67,1,NULL,NULL,1,'0000-00-00 00:00:00'),(68,NULL,51,'TrainingProvider','Providers','Training',NULL,68,1,NULL,NULL,1,'0000-00-00 00:00:00'),(69,NULL,52,'TrainingRequirement','Requirements','Training',NULL,69,1,NULL,NULL,1,'0000-00-00 00:00:00'),(70,'Training',68,'TrainingResultType','Result Types','Training',NULL,70,1,NULL,NULL,1,'0000-00-00 00:00:00'),(71,NULL,53,'TrainingStatus','Statuses','Training',NULL,71,1,NULL,NULL,1,'0000-00-00 00:00:00'),(72,NULL,18,'ContactType','Contact Types','Others','{\"model\":\"ContactType\"}',72,1,NULL,NULL,1,'0000-00-00 00:00:00'),(73,'Staff',19,'EmploymentType','Employment Types','Others',NULL,73,1,NULL,NULL,1,'0000-00-00 00:00:00'),(74,NULL,20,'ExtracurricularType','Extracurricular Types','Others',NULL,74,1,NULL,NULL,1,'0000-00-00 00:00:00'),(75,NULL,24,'IdentityType','Identity Types','Others',NULL,75,1,NULL,NULL,1,'0000-00-00 00:00:00'),(76,NULL,23,'Language','Languages','Others',NULL,76,1,NULL,NULL,1,'0000-00-00 00:00:00'),(77,NULL,25,'LicenseType','License Types','Others',NULL,77,1,NULL,NULL,1,'0000-00-00 00:00:00'),(78,NULL,26,'SpecialNeedType','Special Need Types','Others',NULL,78,1,NULL,NULL,1,'0000-00-00 00:00:00'),(88,NULL,0,'InfrastructureOwnership','Ownership','Infrastructure',NULL,80,1,NULL,NULL,1,'0000-00-00 00:00:00'),(89,NULL,0,'InfrastructureCondition','Condition','Infrastructure',NULL,81,1,NULL,NULL,1,'0000-00-00 00:00:00'),(90,NULL,NULL,'Country','Countries','Others','{\"model\":\"Country\"}',82,1,NULL,NULL,1,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `field_options` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:25
