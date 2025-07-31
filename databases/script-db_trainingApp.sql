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
  `email` varchar(50) NOT NULL,
  `status` enum('ACTIVO','INACTIVO') NOT NULL,
  PRIMARY KEY (`id_competitor`),
  UNIQUE KEY `document_UNIQUE` (`document`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitor`
--

LOCK TABLES `competitor` WRITE;
/*!40000 ALTER TABLE `competitor` DISABLE KEYS */;
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
  `evaluation_date` datetime NOT NULL,
  `result` decimal(3,2) NOT NULL,
  PRIMARY KEY (`id_result_training`),
  KEY `FK_skill_idx` (`id_skill`),
  CONSTRAINT `FK__competitor` FOREIGN KEY (`id_result_training`) REFERENCES `competitor` (`id_competitor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK__skill` FOREIGN KEY (`id_skill`) REFERENCES `skill` (`id_skill`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result_training`
--

LOCK TABLES `result_training` WRITE;
/*!40000 ALTER TABLE `result_training` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_plan`
--

LOCK TABLES `training_plan` WRITE;
/*!40000 ALTER TABLE `training_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `training_plan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-30 16:24:19
