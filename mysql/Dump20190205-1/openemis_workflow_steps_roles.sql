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
-- Table structure for table `workflow_steps_roles`
--

DROP TABLE IF EXISTS `workflow_steps_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_steps_roles` (
  `id` char(36) NOT NULL,
  `workflow_step_id` int(11) NOT NULL COMMENT 'links to workflow_steps.id',
  `security_role_id` int(11) NOT NULL COMMENT 'links to security_roles.id',
  PRIMARY KEY (`id`),
  KEY `security_role_id` (`security_role_id`),
  KEY `workflow_step_id` (`workflow_step_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_steps_roles`
--

LOCK TABLES `workflow_steps_roles` WRITE;
/*!40000 ALTER TABLE `workflow_steps_roles` DISABLE KEYS */;
INSERT INTO `workflow_steps_roles` VALUES ('052df036-4495-465b-90bb-b273fba61a69',32,6),('0b86961f-aec5-41c2-85a4-2946f75ae4c1',19,2),('0f98accf-2b3d-4d74-b857-7460ac006511',30,4),('13ac3b1f-e33f-4628-9b41-78cc8b2e1c79',43,10),('150c1025-ef64-47fe-b211-30333597f810',32,5),('18ff1608-1594-4d4e-88ca-ae7339a4faf0',32,4),('19390323-ba0f-44f0-8879-a35362fbd634',125,5),('199263b3-7818-4bb6-af43-5705532058bd',17,10),('1a5a5067-6d97-4c72-b30d-a80afafe4a55',145,4),('24691ce8-5979-46e1-9150-5bbae8121d40',56,10),('27ad100f-586c-4a2c-83ca-013f92551ca5',37,10),('27cfe07d-c704-4022-ae44-7f217e334834',14,4),('2886d4d7-e203-427f-9f4c-eaf97f1b3e27',37,4),('296c88ee-96f0-4ac3-905c-653abacde9ea',146,6),('2f311f25-ab92-4f83-ab90-a875b1bb8d26',35,2),('31f4b29d-bf81-4093-af65-b2fe0b788e18',149,4),('3c891af7-6ee1-4272-be55-bd74a1a07715',34,4),('3c8d1bd5-2a83-4d5d-96e7-4eb213cea37a',123,6),('3e27db98-3187-4563-965d-603dcd1bbb2b',20,2),('41e74796-fbda-4519-b537-ea7bf65eaac5',46,4),('47934c98-edd1-46a5-ac97-2852f3c3fb9f',145,5),('4af5851f-f5a9-4ea6-b238-69c1a1ccfd65',126,4),('51b633f0-bd63-4aa9-845e-3edb6780b75a',43,2),('5390b318-9c7e-4566-b837-7abd682dbd2e',146,4),('57507f71-65f7-42fb-a044-498c2fb7805a',47,2),('58fccf52-8ef1-4a42-9b0e-7f6e17795f16',55,2),('5cbea30b-9c2f-49f8-ba59-5717816930be',2,4),('5ce29d06-ec93-4482-84b1-d0d13f9e082e',125,4),('5d7d3a7f-e5a5-46ea-9395-d63bdada35d3',2,10),('62d29e92-130d-49c2-ad06-5d325bb0bd21',122,4),('64dc8926-dd54-48c9-af86-f9a296fc623b',14,10),('680e95d0-e206-4cde-bdd1-6615a1b968ee',124,6),('68e8b575-7801-470a-b71e-67c0e102585f',47,4),('6badba59-486d-416a-9ea2-bcdff11c44b1',53,3),('6c22440e-bbce-49ef-ac87-bb6cd887d348',38,2),('6d8e70a7-f681-4044-8b29-ed8d3ba4d729',39,10),('712d6f3a-8c91-4b95-8c6c-ea28352510b0',46,2),('7191651c-1358-4a83-ba7a-2b19897477ed',51,2),('7434e983-7a71-47c4-b0ca-05b879761774',33,10),('76923ca6-d932-4176-9ab5-8888b2644b7b',29,4),('7af508e2-dff0-4017-8cf4-5af57eb31803',98,5),('7dc85dcc-3d12-4f5c-8e00-f622f57326b3',49,2),('827ce822-3f3c-4ed4-a066-bbb1bf622c6f',51,4),('84b5836a-a774-4f9c-a24a-ede672d77469',35,4),('8db2a7e4-b30d-46e3-9124-438dc6000049',55,10),('8e6baf29-f58e-4bec-9572-0f117ff8d4e7',124,5),('928dc9bd-61ba-498a-b9a2-5ea4f068cd6f',37,2),('95b80afa-83a6-40d1-a0aa-6b50aa443dab',48,4),('988545b8-6762-4576-aeed-c7e484e3e911',98,4),('99114e9c-9e35-462a-b2d8-58dd3661bf11',15,10),('99cc7ca0-fb7b-4e91-86f5-d3b018fb4e18',126,5),('99ecc631-6c6b-4997-a400-286c64de51e0',3,10),('9a24954d-9cf5-4af6-bb64-129f3e244332',16,2),('a29c0299-ae52-4732-9363-c1b49c8f27bc',28,4),('a3e3443e-9b69-4cad-9fca-c2a7ebce3b46',122,5),('a4e009fd-6913-4174-b089-74599b7c7a13',34,2),('a634ae02-9a5d-4f2d-ac12-a7ae2f6db155',19,10),('ab617367-7a3b-46e3-a3c2-d67c00e79376',145,6),('aebf9c69-d8de-4099-a7ab-532fde4a1523',45,4),('af9ee836-34b0-4572-9346-865912f325aa',18,2),('b1a4be9b-cf05-4ac4-a3df-e1733a0db042',55,3),('b1f3cc5e-34b7-412c-af20-2eb3683371a5',9,10),('b6a0aff5-c4f0-4ded-82be-0d8557d6c4c9',126,6),('b73f6038-abb8-40ca-849f-7d3637249a34',146,5),('b799edc1-6e5a-488b-8d68-c4bc5b6cae71',48,2),('bccc19da-2026-4842-bb23-79f41777637c',2,2),('be7ca5a5-0e33-491f-bff0-cf03e1ebd425',53,2),('c80543ec-3294-4417-9d66-0c29232859ac',127,5),('c9d9d284-c25a-4ac0-993f-efd1370b1ce3',11,10),('d02fea9e-b614-45f5-a6d1-fd0dc7aad378',45,2),('d28eb09e-f9fd-42ee-bdd0-2e92c8e71b4a',56,3),('d4cadb84-8122-46cc-81cc-f7b9dbe7c015',127,4),('d523422d-1466-44a8-b349-4d7fcd4a485c',50,4),('d852f9d7-7642-4fdb-9d0f-847eb8352277',50,2),('d95f9b9f-a482-43fe-b7d2-17e0bbf0057c',3,2),('da34cc83-a273-49ae-a423-d9df6af2cd12',56,2),('dbcec312-c9e1-443a-b998-f78bfa175bbb',27,4),('dd833d1b-0110-413d-a416-e8c7a8ccc7db',49,4),('e06710f6-ed54-4dd6-bbf4-4f3fe102e6f9',53,10),('e1f8dff7-3b70-4341-8680-e718f4298881',33,4),('e218dd99-5808-4a04-9cdc-c20f44df8a26',123,5),('e2b5a8f4-5871-4b23-8272-76df097d587e',11,2),('e3415b26-4c64-45f2-b6e5-cf78e9d3d734',23,2),('e43e337c-fa80-4e00-878d-fe0ef8b384e3',23,10),('e5016685-7fbc-42af-b0ac-4069443f50ec',39,2),('ebb4f6c6-d911-4da4-a8e2-fe913462e401',38,10),('f4d68b87-4ed9-4782-abd4-4d3aa705cc25',17,2),('f5feec2c-7fcc-412f-bdd2-5d8ee97acd72',33,2),('f73bb459-2ee4-45af-9c19-89c1981aa449',21,2),('f810a5d3-52cd-46c4-aad2-b85d013c11a9',40,2),('fc0745f5-85cb-4d26-af26-35816e844f5a',40,10),('fd4ca0fb-11da-4278-a021-177ce0e65042',122,6),('ff55a7c5-7a14-4a62-a266-8bb453e69624',43,4);
/*!40000 ALTER TABLE `workflow_steps_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 16:33:19
