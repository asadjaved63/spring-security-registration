-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: registration_02
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `devicemetadata`
--

DROP TABLE IF EXISTS `devicemetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devicemetadata` (
  `id` bigint(20) NOT NULL,
  `deviceDetails` varchar(255) DEFAULT NULL,
  `lastLoggedIn` datetime(6) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devicemetadata`
--

LOCK TABLES `devicemetadata` WRITE;
/*!40000 ALTER TABLE `devicemetadata` DISABLE KEYS */;
INSERT INTO `devicemetadata` VALUES (1,'Chrome 76.0 - Windows 10.null','2019-09-13 02:35:25.213000','Islamabad',6),(2,'Chrome 76.0 - Windows 10.null','2019-09-13 02:54:50.759000','Islamabad',30);
/*!40000 ALTER TABLE `devicemetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (32),(32),(32),(32),(32),(32);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwordresettoken`
--

DROP TABLE IF EXISTS `passwordresettoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passwordresettoken` (
  `id` bigint(20) NOT NULL,
  `expiryDate` datetime(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgdew0adk8xruaoq2rgdsy34w2` (`user_id`),
  CONSTRAINT `FKgdew0adk8xruaoq2rgdsy34w2` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwordresettoken`
--

LOCK TABLES `passwordresettoken` WRITE;
/*!40000 ALTER TABLE `passwordresettoken` DISABLE KEYS */;
INSERT INTO `passwordresettoken` VALUES (11,'2019-09-01 09:06:25.262000','ab65cd69-6568-4939-83a1-c9cbb2e74ff3',6),(12,'2019-09-01 09:08:43.307000','564d0967-a1e5-44d7-9112-227bfdcc6c10',6),(13,'2019-09-01 09:28:25.878000','5b863648-ce29-469a-9f70-1159aba2d17b',6),(14,'2019-09-01 09:29:28.372000','2c835b6c-ec6d-4c01-bc7e-e68f86296515',6);
/*!40000 ALTER TABLE `passwordresettoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privilege` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege`
--

LOCK TABLES `privilege` WRITE;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
INSERT INTO `privilege` VALUES (1,'READ_PRIVILEGE'),(2,'WRITE_PRIVILEGE'),(3,'CHANGE_PASSWORD_PRIVILEGE');
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (4,'ROLE_ADMIN'),(5,'ROLE_USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_privileges`
--

DROP TABLE IF EXISTS `roles_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_privileges` (
  `role_id` bigint(20) NOT NULL,
  `privilege_id` bigint(20) NOT NULL,
  KEY `FKp0x1d9k5aksyqd1akwwfkh0ki` (`privilege_id`),
  KEY `FK2rfl694fu6ls2f2mqcxesqc6p` (`role_id`),
  CONSTRAINT `FK2rfl694fu6ls2f2mqcxesqc6p` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKp0x1d9k5aksyqd1akwwfkh0ki` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_privileges`
--

LOCK TABLES `roles_privileges` WRITE;
/*!40000 ALTER TABLE `roles_privileges` DISABLE KEYS */;
INSERT INTO `roles_privileges` VALUES (4,1),(4,2),(4,3),(5,1),(5,3);
/*!40000 ALTER TABLE `roles_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `isUsing2FA` bit(1) NOT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (6,'asadjaved63@yahoo.com',_binary '','Test',_binary '\0','Test','$2a$11$WAV8m0LzagkXw4L6WA2k9OyGOmXfPpWdGNP7EY72OkbbPTWT8rGfi','VLNJONKIKFL7FSVI'),(7,'asadjaved2@yahoo.com',_binary '\0','Asad',_binary '\0','Javed','$2a$11$KxLH2xqKkn8Nm0uDJhmXj.5RgPxkjW5vAh13q.5cUFmktz21zfge6','JSMRWODEEMJKFBNR'),(9,'asadjaved@yahoo.com',_binary '\0','Asad',_binary '\0','Javed','$2a$11$EL0rNXMiIeHHsCOM.SmA4OZvT6lU52ZUoWVyHYQyesaxmZB89O39G','5ZVQAG5EPX6WQ5EN'),(15,'test@test.com',_binary '','Test',_binary '\0','Test','$2a$11$n01O5GpIfOrHZALMi176OuvUj05ehcIx4LsGwyI.PUU9m2HEspHFq','RVXLAUAWCVJRCCDJ'),(16,'asadjaved7@gmail.com',_binary '','Asad',_binary '\0','Javed','$2a$11$bGgwRVczgUWhf3rVUYcaOuKUpoB7GtAcQOJ83uecvydWl6cI9CAiC','3Q7BBFMTQUVNBQXF'),(18,'asadjaved6@gmail.com',_binary '','Asad',_binary '\0','Javed','$2a$11$Wsf2bUgCo.nS3k7EJIxgLeH.aUptv2YfRFKrDUYUWcG3omtIfz8Hy','KQOPICJ2N32H7PDL'),(20,'asadjaved8@gmail.com',_binary '','Asad',_binary '\0','Javed','$2a$11$w8t1620PPiNunaJq6YTnqOdhoL/uwfsdxAvhDFlKguUyPdzNAiw6i','7WFLPRNG6B27P544'),(22,'asadjaved9@yahoo.com',_binary '\0','Asad',_binary '\0','Javed','$2a$11$o/pFH6jPIIz/DlTUxHnNQeJryD2y/q7bdbuG2ApDTsGURzUbhdZn6','DLG5I4ZCCPH6DGJM'),(24,'asadjaved10@yahoo.com',_binary '','Asad',_binary '\0','Javed','$2a$11$S4OVxhf6h/r4.IqwOiQHfOLXh1l5Ngs2bU7ZhO93ShuLOGipHTXP6','OZHRUVQU2KJR6J4C'),(26,'asadjaved11@yahoo.com',_binary '','Asad',_binary '\0','Javed','$2a$11$/GN/UJXdnOD/kXG0nBv.ruiyfHKlkgdwej3QO/dZ/5to/Ry9QI7q6','YVYVSCENI6QOQALW'),(28,'asadjaved12@yahoo.com',_binary '\0','Asad',_binary '\0','Javed','$2a$11$KcXGiP6QoflVsVTB8wDOiO3iL36dR2kFvLcPpGUY2YkgAXXMAj7Ki','FJBZXZI4EMAEF6KZ'),(30,'asadjaved63@gmail.com',_binary '','Asad',_binary '\0','Javed','$2a$11$I1cB3IjV6xsM97fCVlTiHO0c987E7LBRkFABJGQyD.gQi9gj3u2eG','4AHNTRVF4UOPFHHA');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `FKa9r8g5hiyy57ts5u4tkf0lbab` (`role_id`),
  KEY `FKci4mdvg1fmo9eqmwno1y9o0fa` (`user_id`),
  CONSTRAINT `FKa9r8g5hiyy57ts5u4tkf0lbab` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKci4mdvg1fmo9eqmwno1y9o0fa` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (7,5),(9,5),(6,4),(16,4),(18,5),(20,5),(22,5),(24,5),(26,5),(28,5),(30,5),(15,4);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verificationtoken`
--

DROP TABLE IF EXISTS `verificationtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verificationtoken` (
  `id` bigint(20) NOT NULL,
  `expiryDate` datetime(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_VERIFY_USER` (`user_id`),
  CONSTRAINT `FK_VERIFY_USER` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verificationtoken`
--

LOCK TABLES `verificationtoken` WRITE;
/*!40000 ALTER TABLE `verificationtoken` DISABLE KEYS */;
INSERT INTO `verificationtoken` VALUES (17,'2019-09-01 10:04:18.778000','be0f5927-0128-41a0-b1f0-5326638d75b5',16),(19,'2019-09-08 11:21:23.934000','da8399b5-45a7-4535-a37d-2cc2519d1da0',18),(21,'2019-09-08 12:08:01.655000','3a556641-839c-414a-8190-4f3eb6e2186f',20),(23,'2019-09-08 12:21:21.338000','3a556641-839c-414a-8190-4f3eb6e2186f',22),(25,'2019-09-08 13:36:42.913000','11701c9b-7cda-4d47-a0d1-f18d58194585',24),(27,'2019-09-08 13:48:05.441000','37e78465-c49d-4c0e-875a-fc59b57156d1',26),(29,'2019-09-08 14:00:38.867000','ed963fc6-5ea2-4fc5-95cd-648fdbe637b4',28),(31,'2019-09-08 14:13:01.327000','050e6c3b-3849-4eab-b2e0-aca5ca1cb2bd',30);
/*!40000 ALTER TABLE `verificationtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'registration_02'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-16 19:56:25
