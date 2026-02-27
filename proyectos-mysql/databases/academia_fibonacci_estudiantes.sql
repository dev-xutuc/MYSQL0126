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
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiantes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `carrera` varchar(100) DEFAULT NULL,
  `promedio` double DEFAULT '0',
  `activo` tinyint(1) DEFAULT '1',
  `fecha_inscripcion` date DEFAULT (curdate()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` VALUES (1,'Ana Garcia','ana.garcia@email.com',20,'Ingenieria en Sistemas',85.5,1,'2023-01-15'),(2,'Maria Lopez','maria.lopez@email.com',19,'Ingenieria en Sistemas',92.1,1,'2023-01-18'),(3,'Sofia Ramirez','sofia.ramirez@email.com',20,'Ingenieria en Sistemas',88.7,1,'2023-02-01'),(4,'Diego Hernandez','diego.hernandez@email.com',21,'Ingenieria en Sistemas',79.3,1,'2023-02-10'),(5,'Valentina Torres','valentina.torres@email.com',22,'Ingenieria en Sistemas',94.5,1,'2023-01-20'),(6,'Andres Morales','andres.morales@email.com',20,'Ingenieria en Sistemas',67.8,1,'2023-03-05'),(7,'Camila Ruiz','camila.ruiz@email.com',19,'Ingenieria en Sistemas',73.4,1,'2023-02-28'),(8,'Sebastian Castro','sebastian.castro@email.com',23,'Ingenieria en Sistemas',81.2,0,'2022-08-15'),(9,'Luis Martinez','luis.martinez@email.com',22,'Ingenieria Industrial',78.3,1,'2023-01-22'),(10,'Fernando Diaz','fernando.diaz@email.com',21,'Ingenieria Industrial',82.6,1,'2023-02-14'),(11,'Patricia Vega','patricia.vega@email.com',20,'Ingenieria Industrial',89.2,1,'2023-01-25'),(12,'Ricardo Soto','ricardo.soto@email.com',24,'Ingenieria Industrial',71.5,1,'2022-06-10'),(13,'Monica Flores','monica.flores@email.com',22,'Ingenieria Industrial',76.8,1,'2023-03-01'),(14,'Gabriel Mendez','gabriel.mendez@email.com',21,'Ingenieria Industrial',84.3,0,'2022-09-20'),(15,'Carlos Perez','carlos.perez@email.com',21,'Ingenieria Mecanica',80,1,'2023-01-28'),(16,'Jorge Navarro','jorge.navarro@email.com',23,'Ingenieria Mecanica',75.4,1,'2022-07-15'),(17,'Andrea Gutierrez','andrea.gutierrez@email.com',20,'Ingenieria Mecanica',91.3,1,'2023-02-20'),(18,'Marco Jimenez','marco.jimenez@email.com',22,'Ingenieria Mecanica',68.9,1,'2023-03-10'),(19,'Laura Sanchez','laura.sanchez@email.com',21,'Ingenieria Civil',87.6,1,'2023-01-30'),(20,'Roberto Silva','roberto.silva@email.com',24,'Ingenieria Civil',72.4,1,'2022-05-18'),(21,'Daniela Romero','daniela.romero@email.com',20,'Ingenieria Civil',95.2,1,'2023-02-05'),(22,'Oscar Vargas','oscar.vargas@email.com',23,'Ingenieria Civil',63.5,0,'2022-03-22'),(23,'Isabella Reyes','isabella.reyes@email.com',22,'Medicina',96.8,1,'2023-01-10'),(24,'Miguel Angel Cruz','miguel.cruz@email.com',25,'Medicina',88.4,1,'2022-01-15'),(25,'Carolina Herrera','carolina.herrera@email.com',23,'Medicina',91.7,1,'2022-08-20'),(26,'Pedro Gonzalez','pedro@email.com',21,'Ingeniería Civil',82.5,1,'2026-02-25'),(27,'Laura Mendez','laura@email.com',19,'Ingeniería Química',90,1,'2026-02-25'),(28,'Fernando','fer@email.com',25,'Arquitectura',95.4,1,'2026-02-25');
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
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
