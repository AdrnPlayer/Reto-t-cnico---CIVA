-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: busesdb
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `numero_bus` varchar(255) NOT NULL,
  `placa` varchar(255) NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `caracteristicas` varchar(255) DEFAULT NULL,
  `estado` int NOT NULL,
  `marca_bus_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe19muhu7oov3piftu8p0cs9v8` (`marca_bus_id`),
  CONSTRAINT `FKe19muhu7oov3piftu8p0cs9v8` FOREIGN KEY (`marca_bus_id`) REFERENCES `marca_bus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES (1,'BUS-100','XYZ001','2025-04-11 07:36:13','WiFi, Aire acondicionado',1,1),(2,'BUS-101','XYZ002','2025-04-11 07:36:13','TV, Asientos reclinables',1,2),(3,'BUS-102','XYZ003','2025-04-11 07:36:13','Sin aire, USB',1,3),(4,'BUS-103','XYZ004','2025-04-11 07:36:13','Aire acondicionado',1,1),(5,'BUS-104','XYZ005','2025-04-11 07:36:13','Asientos de cuero, WiFi',1,2),(6,'BUS-105','XYZ006','2025-04-11 07:36:13','USB, Luces LED',1,3),(7,'BUS-106','XYZ007','2025-04-11 07:36:13','Asientos reclinables',1,1),(8,'BUS-107','XYZ008','2025-04-11 07:36:13','WiFi, Cortinas',1,2),(9,'BUS-108','XYZ009','2025-04-11 07:36:13','TV, Luces LED',1,3),(10,'BUS-109','XYZ010','2025-04-11 07:36:13','Sin aire, Asientos básicos',0,1),(11,'BUS-110','XYZ011','2025-04-11 07:36:13','Aire acondicionado, WiFi',0,2),(12,'BUS-111','XYZ012','2025-04-11 07:36:13','Luces LED, TV',0,3),(13,'BUS-112','XYZ013','2025-04-11 07:36:13','Asientos cómodos',0,1),(14,'BUS-113','XYZ014','2025-04-11 07:36:13','WiFi, Ventanas panorámicas',0,2),(15,'BUS-114','XYZ015','2025-04-11 07:36:13','TV, Sin aire',0,3),(16,'BUS-115','XYZ016','2025-04-11 07:36:13','Cortinas, USB',0,1),(17,'BUS-116','XYZ017','2025-04-11 07:36:13','TV, WiFi, Luces LED',0,2),(18,'BUS-117','XYZ018','2025-04-11 07:36:13','Sin comodidades',0,3),(19,'BUS-118','XYZ019','2025-04-11 07:36:13','Aire acondicionado, TV',1,1),(20,'BUS-119','XYZ020','2025-04-11 07:36:13','WiFi, USB',1,2),(21,'BUS-120','XYZ021','2025-04-11 07:36:13','TV, Asientos ergonómicos',1,3),(22,'BUS-121','XYZ022','2025-04-11 07:36:13','Luces LED, Ventanas grandes',1,1),(23,'BUS-122','XYZ023','2025-04-11 07:36:13','Sin aire, Sin TV',1,2),(24,'BUS-123','XYZ024','2025-04-11 07:36:13','Cortinas, Luces LED',1,3),(25,'BUS-124','XYZ025','2025-04-11 07:36:13','Aire acondicionado',1,1),(26,'BUS-125','XYZ026','2025-04-11 07:36:13','WiFi, Asientos reclinables',1,2),(27,'BUS-126','XYZ027','2025-04-11 07:36:13','USB, TV',1,3),(28,'BUS-127','XYZ028','2025-04-11 07:36:13','Luces LED',1,1),(29,'BUS-128','XYZ029','2025-04-11 07:36:13','TV, Asientos reclinables',1,2),(30,'BUS-129','XYZ030','2025-04-11 07:36:13','WiFi, Cortinas',1,3),(31,'BUS-130','XYZ031','2025-04-11 07:36:13','Aire acondicionado, USB',1,1),(32,'BUS-131','XYZ032','2025-04-11 07:36:13','TV, Sin WiFi',1,2),(33,'BUS-132','XYZ033','2025-04-11 07:36:13','Luces LED, USB',1,3),(34,'BUS-133','XYZ034','2025-04-11 07:36:13','Sin TV, Sin aire',1,1),(35,'BUS-134','XYZ035','2025-04-11 07:36:13','Cortinas, TV',1,2),(36,'BUS-135','XYZ036','2025-04-11 07:36:13','Asientos básicos',1,3),(37,'BUS-136','XYZ037','2025-04-11 07:36:13','WiFi, Luces LED',1,1),(38,'BUS-137','XYZ038','2025-04-11 07:36:13','TV, USB, WiFi',1,2),(39,'BUS-138','XYZ039','2025-04-11 07:36:13','Sin comodidades',1,3),(40,'BUS-139','XYZ040','2025-04-11 07:36:13','Aire acondicionado, TV, WiFi',1,1),(41,'BUS-140','XYZ041','2025-04-11 07:36:13','Cortinas, Asientos ergonómicos',1,2),(42,'BUS-141','XY2041','2025-04-11 21:32:57','TV, Luces LED',1,4),(43,'BUS-142','XY2042','2025-04-11 21:32:57','Aire acondicionado, USB',0,5),(44,'BUS-143','XY2043','2025-04-11 21:32:57','Cortinas, TV, Asientos reclinables',1,4),(45,'BUS-144','XY2044','2025-04-11 21:32:57','WiFi, Ventanas grandes',0,5);
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-11 16:40:12
