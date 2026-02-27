CREATE DATABASE  IF NOT EXISTS `academia_fibonacci` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `academia_fibonacci`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: academia_fibonacci
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
-- Table structure for table `inscripciones`
--

DROP TABLE IF EXISTS `inscripciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscripciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estudiante_id` int DEFAULT NULL,
  `curso_id` int DEFAULT NULL,
  `fecha_inscripcion` date DEFAULT NULL,
  `nota_final` double DEFAULT NULL,
  `estado` varchar(20) DEFAULT 'Cursando',
  PRIMARY KEY (`id`),
  KEY `estudiante_id` (`estudiante_id`),
  KEY `curso_id` (`curso_id`),
  CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`),
  CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripciones`
--

LOCK TABLES `inscripciones` WRITE;
/*!40000 ALTER TABLE `inscripciones` DISABLE KEYS */;
INSERT INTO `inscripciones` VALUES (1,1,1,'2023-01-20',88.5,'Aprobado'),(2,1,3,'2023-01-20',92,'Aprobado'),(3,1,7,'2023-01-20',78.5,'Aprobado'),(4,2,1,'2023-01-22',95,'Aprobado'),(5,2,3,'2023-01-22',97.5,'Aprobado'),(6,2,9,'2023-06-15',NULL,'Cursando'),(7,3,2,'2023-06-10',NULL,'Cursando'),(8,3,4,'2023-06-10',NULL,'Cursando'),(9,4,1,'2023-02-15',72,'Aprobado'),(10,4,7,'2023-02-15',65.5,'Aprobado'),(11,4,6,'2023-06-20',NULL,'Cursando'),(12,5,1,'2023-01-25',98,'Aprobado'),(13,5,2,'2023-06-12',NULL,'Cursando'),(14,5,5,'2023-06-12',NULL,'Cursando'),(15,9,1,'2023-01-28',75.5,'Aprobado'),(16,9,7,'2023-01-28',82,'Aprobado'),(17,9,8,'2023-06-18',NULL,'Cursando'),(18,10,3,'2023-02-20',85,'Aprobado'),(19,10,6,'2023-02-20',79.5,'Aprobado'),(20,11,1,'2023-01-30',91,'Aprobado'),(21,11,3,'2023-01-30',88.5,'Aprobado'),(22,11,5,'2023-06-25',NULL,'Cursando'),(23,15,7,'2023-02-01',83,'Aprobado'),(24,15,8,'2023-06-20',NULL,'Cursando'),(25,15,11,'2023-06-20',NULL,'Cursando'),(26,17,1,'2023-02-25',94.5,'Aprobado'),(27,17,7,'2023-02-25',96,'Aprobado'),(28,17,2,'2023-06-28',NULL,'Cursando'),(29,19,7,'2023-02-05',89,'Aprobado'),(30,19,8,'2023-06-15',NULL,'Cursando'),(31,21,1,'2023-02-10',97,'Aprobado'),(32,21,3,'2023-02-10',98.5,'Aprobado'),(33,21,5,'2023-06-22',NULL,'Cursando'),(34,23,7,'2023-01-15',99,'Aprobado'),(35,23,8,'2023-06-10',NULL,'Cursando'),(36,6,1,'2023-03-10',58,'Reprobado'),(37,6,7,'2023-03-10',52.5,'Reprobado'),(38,18,1,'2023-03-15',55,'Reprobado'),(39,22,7,'2023-03-20',48,'Reprobado'),(40,12,3,'2023-02-28',62,'Reprobado');
/*!40000 ALTER TABLE `inscripciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-26 19:13:46
