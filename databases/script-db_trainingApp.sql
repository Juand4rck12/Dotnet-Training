CREATE DATABASE  IF NOT EXISTS `training_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `training_db`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: training_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `competitor`
--

DROP TABLE IF EXISTS `competitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competitor` (
  `id_competitor` bigint NOT NULL AUTO_INCREMENT,
  `document` bigint NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `birthdate` datetime NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` enum('ACTIVO','INACTIVO') NOT NULL,
  PRIMARY KEY (`id_competitor`),
  UNIQUE KEY `document_UNIQUE` (`document`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitor`
--

LOCK TABLES `competitor` WRITE;
/*!40000 ALTER TABLE `competitor` DISABLE KEYS */;
INSERT INTO `competitor` VALUES (1,10000001,'Juan Pérez','C:\\Users\\victus\\OneDrive\\Documentos\\repos\\Dotnet-Training\\TrainingApp\\TrainingApp\\database\\images\\foto-1.jpg','1990-05-15 00:00:00','Calle 123, Bogotá','3101234567','juan.perez@example.com','ACTIVO'),(2,10000002,'María Gómez','C:\\Users\\victus\\OneDrive\\Documentos\\repos\\Dotnet-Training\\TrainingApp\\TrainingApp\\database\\images\\foto-2.jpg','1985-08-22 00:00:00','Avenida 456, Medellín','3119876543','maria.gomez@example.com','ACTIVO'),(3,10000003,'Carlos López','C:\\Users\\victus\\OneDrive\\Documentos\\repos\\Dotnet-Training\\TrainingApp\\TrainingApp\\database\\images\\foto-3.jpg','1995-03-10 00:00:00','Carrera 789, Cali','3125555555','carlos.lopez@example.com','INACTIVO'),(4,10000004,'Ana Rodríguez','C:\\Users\\victus\\OneDrive\\Documentos\\repos\\Dotnet-Training\\TrainingApp\\TrainingApp\\database\\images\\foto-4.jpg','1988-11-30 00:00:00','Diagonal 101, Barranquilla','3147778899','ana.rodriguez@example.com','ACTIVO'),(5,10000005,'Luisa Fernández','C:\\Users\\victus\\OneDrive\\Documentos\\repos\\Dotnet-Training\\TrainingApp\\TrainingApp\\database\\images\\foto-5.jpg','1999-07-14 00:00:00','Transversal 202, Cartagena','3153334444','luisa.fernandez@example.com','ACTIVO');
/*!40000 ALTER TABLE `competitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result_training`
--

DROP TABLE IF EXISTS `result_training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result_training` (
  `id_result_training` bigint NOT NULL AUTO_INCREMENT,
  `id_competitor` bigint NOT NULL,
  `id_skill` bigint NOT NULL,
  `id_training_plan` bigint NOT NULL,
  `evaluation_date` datetime NOT NULL,
  `result` decimal(3,2) NOT NULL,
  PRIMARY KEY (`id_result_training`),
  KEY `FK_skill_idx` (`id_skill`),
  KEY `FK__competitor_idx` (`id_competitor`),
  KEY `id_training_plan` (`id_training_plan`),
  CONSTRAINT `FK__competitor` FOREIGN KEY (`id_competitor`) REFERENCES `competitor` (`id_competitor`),
  CONSTRAINT `FK__skill` FOREIGN KEY (`id_skill`) REFERENCES `skill` (`id_skill`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `result_training_ibfk_1` FOREIGN KEY (`id_training_plan`) REFERENCES `training_plan` (`id_training_plan`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result_training`
--

LOCK TABLES `result_training` WRITE;
/*!40000 ALTER TABLE `result_training` DISABLE KEYS */;
INSERT INTO `result_training` VALUES (6,1,1,1,'2024-06-12 00:00:00',4.50),(7,2,2,1,'2024-07-17 00:00:00',4.80),(8,3,3,1,'2024-08-22 00:00:00',4.20),(9,4,4,1,'2024-09-27 00:00:00',4.90),(10,5,5,1,'2024-10-31 00:00:00',4.70);
/*!40000 ALTER TABLE `result_training` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `id_skill` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id_skill`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'SK001','Java Basics','Fundamentos de programación en Java'),(2,'SK002','SQL Avanzado','Manejo de bases de datos relacionales'),(3,'SK003','Spring Boot','Desarrollo de APIs REST con Spring'),(4,'SK004','React.js','Desarrollo frontend con React'),(5,'SK005','Seguridad Informática','Prácticas de ciberseguridad');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_plan`
--

DROP TABLE IF EXISTS `training_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training_plan` (
  `id_training_plan` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `id_competitor` bigint NOT NULL,
  `id_skill` bigint NOT NULL,
  PRIMARY KEY (`id_training_plan`),
  UNIQUE KEY `code_UNIQUE` (`code`),
  KEY `FK_competitor_idx` (`id_competitor`),
  KEY `FK_skill_idx` (`id_skill`),
  CONSTRAINT `FK_competitor` FOREIGN KEY (`id_competitor`) REFERENCES `competitor` (`id_competitor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_skill` FOREIGN KEY (`id_skill`) REFERENCES `skill` (`id_skill`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_plan`
--

LOCK TABLES `training_plan` WRITE;
/*!40000 ALTER TABLE `training_plan` DISABLE KEYS */;
INSERT INTO `training_plan` VALUES (1,'TP001','2024-01-10 00:00:00','2024-06-10 00:00:00',1,1),(2,'TP002','2024-02-15 00:00:00','2024-07-15 00:00:00',2,2),(3,'TP003','2024-03-20 00:00:00','2024-08-20 00:00:00',3,3),(4,'TP004','2024-04-25 00:00:00','2024-09-25 00:00:00',4,4),(5,'TP005','2024-05-30 00:00:00','2024-10-30 00:00:00',5,5);
/*!40000 ALTER TABLE `training_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_plan_skill`
--

DROP TABLE IF EXISTS `training_plan_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training_plan_skill` (
  `id_training_plan` bigint NOT NULL,
  `id_skill` bigint NOT NULL,
  PRIMARY KEY (`id_training_plan`,`id_skill`),
  KEY `id_skill` (`id_skill`),
  CONSTRAINT `training_plan_skill_ibfk_1` FOREIGN KEY (`id_training_plan`) REFERENCES `training_plan` (`id_training_plan`),
  CONSTRAINT `training_plan_skill_ibfk_2` FOREIGN KEY (`id_skill`) REFERENCES `skill` (`id_skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_plan_skill`
--

LOCK TABLES `training_plan_skill` WRITE;
/*!40000 ALTER TABLE `training_plan_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `training_plan_skill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-03 21:52:39
