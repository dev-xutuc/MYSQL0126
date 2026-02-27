CREATE DATABASE  IF NOT EXISTS `empresadb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `empresadb`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: empresadb
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `asignacionesdeproyectos`
--

DROP TABLE IF EXISTS `asignacionesdeproyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignacionesdeproyectos` (
  `asignacion_id` int NOT NULL AUTO_INCREMENT,
  `proyecto_id` int DEFAULT NULL,
  `empleado_id` int DEFAULT NULL,
  `horas_asignadas` int NOT NULL,
  PRIMARY KEY (`asignacion_id`),
  KEY `proyecto_id` (`proyecto_id`),
  KEY `empleado_id` (`empleado_id`),
  CONSTRAINT `asignacionesdeproyectos_ibfk_1` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`proyecto_id`),
  CONSTRAINT `asignacionesdeproyectos_ibfk_2` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`empleado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignacionesdeproyectos`
--

LOCK TABLES `asignacionesdeproyectos` WRITE;
/*!40000 ALTER TABLE `asignacionesdeproyectos` DISABLE KEYS */;
INSERT INTO `asignacionesdeproyectos` VALUES (1,1,8,5),(2,5,7,32),(3,4,6,17),(4,5,1,39),(5,2,6,24),(6,2,4,34),(7,4,4,21),(8,5,2,32),(9,1,2,29),(10,2,7,29),(11,4,1,13),(12,1,1,5),(13,1,1,10);
/*!40000 ALTER TABLE `asignacionesdeproyectos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-26 19:13:47
