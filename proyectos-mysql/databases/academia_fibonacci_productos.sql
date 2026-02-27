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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `precio` double NOT NULL,
  `stock` int DEFAULT '0',
  `categoria` varchar(50) DEFAULT NULL,
  `proveedor` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `fecha_registro` date DEFAULT (curdate()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Laptop HP Pavilion','Laptop 15.6\" Intel Core i5, 8GB RAM, 256GB SSD',7999.99,15,'Electronica','HP Guatemala',1,'2026-02-23'),(2,'Laptop Dell Inspiron','Laptop 14\" Intel Core i7, 16GB RAM, 512GB SSD',12499.99,8,'Electronica','Dell Centro America',1,'2026-02-23'),(3,'Monitor Samsung 24\"','Monitor Full HD 1920x1080, 75Hz, HDMI',2499.99,25,'Electronica','Samsung Guatemala',1,'2026-02-23'),(4,'Monitor LG 27\" 4K','Monitor UHD 4K, IPS, USB-C, 60Hz',4999.99,10,'Electronica','LG Electronics',1,'2026-02-23'),(5,'Tablet Samsung Galaxy','Tablet 10.4\", 64GB, WiFi',3499.99,20,'Electronica','Samsung Guatemala',1,'2026-02-23'),(6,'iPad Air','iPad Air 10.9\", 256GB, WiFi',8999.99,5,'Electronica','Apple Store',1,'2026-02-23'),(7,'Mouse Logitech MX','Mouse inalambrico ergonomico, Bluetooth',699.99,45,'Accesorios','Logitech',1,'2026-02-23'),(8,'Mouse Razer Gaming','Mouse gaming RGB, 16000 DPI',599.99,30,'Accesorios','Razer Inc',1,'2026-02-23'),(9,'Teclado Mecanico RGB','Teclado mecanico switches azules, RGB',899.99,35,'Accesorios','HyperX',1,'2026-02-23'),(10,'Teclado Logitech K380','Teclado Bluetooth multi-dispositivo',449.99,50,'Accesorios','Logitech',1,'2026-02-23'),(11,'Webcam Logitech C920','Webcam Full HD 1080p, microfono integrado',649.99,28,'Accesorios','Logitech',1,'2026-02-23'),(12,'Webcam Razer Kiyo','Webcam 1080p con luz anillo integrada',1299.99,12,'Accesorios','Razer Inc',1,'2026-02-23'),(13,'Hub USB-C 7 en 1','Hub USB-C con HDMI, USB 3.0, SD Card',399.99,40,'Accesorios','Anker',1,'2026-02-23'),(14,'Audifonos Sony WH-1000','Audifonos Bluetooth con cancelacion de ruido',2999.99,18,'Audio','Sony Guatemala',1,'2026-02-23'),(15,'Audifonos AirPods Pro','AirPods Pro 2da generacion',2499.99,22,'Audio','Apple Store',1,'2026-02-23'),(16,'Bocinas JBL Flip 6','Bocina Bluetooth portatil, resistente al agua',1199.99,35,'Audio','JBL Audio',1,'2026-02-23'),(17,'Microfono Blue Yeti','Microfono USB profesional para streaming',1599.99,15,'Audio','Blue Microphones',1,'2026-02-23'),(18,'Disco SSD Samsung 1TB','SSD NVMe M.2, lectura 3500MB/s',1299.99,40,'Almacenamiento','Samsung Guatemala',1,'2026-02-23'),(19,'Disco Externo 2TB','Disco duro externo USB 3.0',899.99,30,'Almacenamiento','Seagate',1,'2026-02-23'),(20,'Memoria USB 128GB','Memoria USB 3.1, 300MB/s',199.99,100,'Almacenamiento','SanDisk',1,'2026-02-23');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
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
