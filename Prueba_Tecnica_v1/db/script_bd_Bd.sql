CREATE DATABASE  IF NOT EXISTS `prueba_tecnica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `prueba_tecnica`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: prueba_tecnica
-- ------------------------------------------------------
-- Server version	9.5.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '6e9546ff-ea88-11f0-975e-74d4ddc6f641:1-41';

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'prueba','prueba@test_00.com','$2a$10$e0NRJ5FvP4tqzN5sX9wKZOLYt9N7d0U3P6xWnBv6J1nH8pF9KQ',1,'2026-01-05 23:24:59'),(2,'prueba_02','prueba_01_02@gmail.com','$2a$10$PpyDxugsWnMc7Hb6XDbVG.vHPY0D5.921oz0AYbqpBEvOyGzv0SIu',1,'2026-01-06 06:02:37'),(4,'prueba_03','prueba_03@test.com','$2a$10$XqL6dTo3DuMji9//BAnkXeUgAUt103/X1ltcLH6Xzvho2Xc.KHycS',1,'2026-01-08 08:06:26'),(6,'ana','correo_ana@gmail.com','$2a$10$OuxRKEdR9oP2TlRGULPAyOFvuGSr42yJzgNl.5vvNswKlTdz0IkjC',1,'2026-01-08 09:59:16'),(7,'Zeus','zeus@gmail.com','$2a$10$.P/WK4JgiTVxUVk/qlaEROQiiy3Ki0KrngnSj3uPbzeaKpTb1tJzy',1,'2026-01-08 10:38:35'),(8,'Asia','asia_v2@gmail.com','$2a$10$tftRdaA8.qzdb1IhT07ZjegbgbeIzmIKjH5qA4BVpiNtsZ81zl7pW',1,'2026-01-08 10:39:03'),(13,'maria','maria_v1@gmail.com','$2a$10$gbmneko8QBEYOMZdi1Q.metWA3nuS2u9EbLTSu8B2aL3TWBMwgBiS',0,'2026-01-08 11:26:07');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-08  3:54:10
