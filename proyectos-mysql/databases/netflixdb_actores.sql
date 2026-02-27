CREATE DATABASE  IF NOT EXISTS `netflixdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `netflixdb`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: netflixdb
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
-- Table structure for table `actores`
--

DROP TABLE IF EXISTS `actores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actores` (
  `actor_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actores`
--

LOCK TABLES `actores` WRITE;
/*!40000 ALTER TABLE `actores` DISABLE KEYS */;
INSERT INTO `actores` VALUES (1,'Bryan Cranston','1956-03-07'),(2,'Millie Bobby Brown','2004-02-19'),(3,'Claire Foy','1984-04-16'),(4,'Mads Mikkelsen','1965-11-22'),(5,'Henry Cavill','1983-05-05'),(6,'Pedro Pascal','1975-04-02'),(7,'Will Arnett','1970-05-04'),(8,'Hailee Steinfeld','1996-12-11'),(9,'Cillian Murphy','1976-05-25'),(10,'Benedict Cumberbatch','1976-07-19'),(11,'Wagner Moura','1976-06-27'),(12,'Emilia Clarke','1986-10-23'),(13,'Steve Carell','1962-08-16'),(14,'Aaron Paul','1979-08-27'),(15,'Winona Ryder','1971-10-29'),(16,'Olivia Colman','1974-01-30'),(17,'Anya Chalotra','1996-07-21'),(18,'Gina Carano','1982-04-16'),(19,'Amy Sedaris','1961-03-29'),(20,'Sophie Turner','1996-02-21'),(21,'Matt Smith','1982-10-28'),(22,'Ella Purnell','1996-09-17'),(23,'Paul Anderson','1978-02-12'),(24,'Martin Freeman','1971-09-08'),(25,'Boyd Holbrook','1981-09-01'),(26,'Lena Headey','1973-10-03'),(27,'Kit Harington','1986-12-26'),(28,'Gwendoline Christie','1978-10-28'),(29,'Rami Malek','1981-05-12'),(30,'Carla Gugino','1971-08-29'),(31,'Jonathan Groff','1985-03-26'),(32,'Charlie Cox','1982-12-15'),(33,'Nicola Coughlan','1987-01-09'),(34,'Asa Butterfield','1997-04-01'),(35,'Mackenzie Davis','1987-04-01'),(36,'Bryan Cranston','1956-03-07'),(37,'Millie Bobby Brown','2004-02-19'),(38,'Claire Foy','1984-04-16'),(39,'Mads Mikkelsen','1965-11-22'),(40,'Henry Cavill','1983-05-05'),(41,'Pedro Pascal','1975-04-02'),(42,'Will Arnett','1970-05-04'),(43,'Hailee Steinfeld','1996-12-11'),(44,'Cillian Murphy','1976-05-25'),(45,'Benedict Cumberbatch','1976-07-19'),(46,'Wagner Moura','1976-06-27'),(47,'Emilia Clarke','1986-10-23'),(48,'Steve Carell','1962-08-16'),(49,'Aaron Paul','1979-08-27'),(50,'Winona Ryder','1971-10-29'),(51,'Olivia Colman','1974-01-30'),(52,'Anya Chalotra','1996-07-21'),(53,'Gina Carano','1982-04-16'),(54,'Amy Sedaris','1961-03-29'),(55,'Sophie Turner','1996-02-21'),(56,'Matt Smith','1982-10-28'),(57,'Ella Purnell','1996-09-17'),(58,'Paul Anderson','1978-02-12'),(59,'Martin Freeman','1971-09-08'),(60,'Boyd Holbrook','1981-09-01'),(61,'Lena Headey','1973-10-03'),(62,'Kit Harington','1986-12-26'),(63,'Gwendoline Christie','1978-10-28'),(64,'Rami Malek','1981-05-12'),(65,'Carla Gugino','1971-08-29'),(66,'Jonathan Groff','1985-03-26'),(67,'Charlie Cox','1982-12-15'),(68,'Nicola Coughlan','1987-01-09'),(69,'Asa Butterfield','1997-04-01'),(70,'Mackenzie Davis','1987-04-01'),(71,'Bryan Cranston','1956-03-07'),(72,'Millie Bobby Brown','2004-02-19'),(73,'Claire Foy','1984-04-16'),(74,'Mads Mikkelsen','1965-11-22'),(75,'Henry Cavill','1983-05-05'),(76,'Pedro Pascal','1975-04-02'),(77,'Will Arnett','1970-05-04'),(78,'Hailee Steinfeld','1996-12-11'),(79,'Cillian Murphy','1976-05-25'),(80,'Benedict Cumberbatch','1976-07-19'),(81,'Wagner Moura','1976-06-27'),(82,'Emilia Clarke','1986-10-23'),(83,'Steve Carell','1962-08-16'),(84,'Aaron Paul','1979-08-27'),(85,'Winona Ryder','1971-10-29'),(86,'Olivia Colman','1974-01-30'),(87,'Anya Chalotra','1996-07-21'),(88,'Gina Carano','1982-04-16'),(89,'Amy Sedaris','1961-03-29'),(90,'Sophie Turner','1996-02-21'),(91,'Matt Smith','1982-10-28'),(92,'Ella Purnell','1996-09-17'),(93,'Paul Anderson','1978-02-12'),(94,'Martin Freeman','1971-09-08'),(95,'Boyd Holbrook','1981-09-01'),(96,'Lena Headey','1973-10-03'),(97,'Kit Harington','1986-12-26'),(98,'Gwendoline Christie','1978-10-28'),(99,'Rami Malek','1981-05-12'),(100,'Carla Gugino','1971-08-29'),(101,'Jonathan Groff','1985-03-26'),(102,'Charlie Cox','1982-12-15'),(103,'Nicola Coughlan','1987-01-09'),(104,'Asa Butterfield','1997-04-01'),(105,'Mackenzie Davis','1987-04-01');
/*!40000 ALTER TABLE `actores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-26 19:13:40
