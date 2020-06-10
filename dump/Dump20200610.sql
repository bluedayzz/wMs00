-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: wmysqlm00
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `tBgoods`
--

DROP TABLE IF EXISTS `tBgoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tBgoods` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `category00` int unsigned NOT NULL,
  `category01` int unsigned NOT NULL,
  `category02` int unsigned NOT NULL,
  `use` tinyint unsigned NOT NULL,
  `idUser` int unsigned NOT NULL,
  `idGroup` int unsigned NOT NULL,
  PRIMARY KEY (`id`,`name`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `idx_tBgoods_name` (`name`),
  KEY `idx_tBgoods_category00` (`category00`),
  KEY `idx_tBgoods_category01` (`category01`),
  KEY `idx_tBgoods_category02` (`category02`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tBgoods`
--

LOCK TABLES `tBgoods` WRITE;
/*!40000 ALTER TABLE `tBgoods` DISABLE KEYS */;
/*!40000 ALTER TABLE `tBgoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tBgroup`
--

DROP TABLE IF EXISTS `tBgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tBgroup` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `use` tinyint NOT NULL,
  PRIMARY KEY (`id`,`name`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tBgroup`
--

LOCK TABLES `tBgroup` WRITE;
/*!40000 ALTER TABLE `tBgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tBgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tBitem`
--

DROP TABLE IF EXISTS `tBitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tBitem` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `idOption` int unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `value` int DEFAULT NULL,
  `use` tinyint NOT NULL,
  PRIMARY KEY (`id`,`idOption`,`name`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `idx_tBitem_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tBitem`
--

LOCK TABLES `tBitem` WRITE;
/*!40000 ALTER TABLE `tBitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tBitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tBm00`
--

DROP TABLE IF EXISTS `tBm00`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tBm00` (
  `idtBm00` int NOT NULL,
  PRIMARY KEY (`idtBm00`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tBm00`
--

LOCK TABLES `tBm00` WRITE;
/*!40000 ALTER TABLE `tBm00` DISABLE KEYS */;
/*!40000 ALTER TABLE `tBm00` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tBoption`
--

DROP TABLE IF EXISTS `tBoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tBoption` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `idGoods` int unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `use` tinyint NOT NULL,
  PRIMARY KEY (`id`,`idGoods`,`name`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `idx_tBoption_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tBoption`
--

LOCK TABLES `tBoption` WRITE;
/*!40000 ALTER TABLE `tBoption` DISABLE KEYS */;
/*!40000 ALTER TABLE `tBoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tBuser`
--

DROP TABLE IF EXISTS `tBuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tBuser` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `pwdTemp` varchar(45) DEFAULT NULL,
  `dateCreate` datetime NOT NULL,
  `dateLastLogin` datetime NOT NULL,
  `idGroup` int unsigned NOT NULL,
  PRIMARY KEY (`id`,`name`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tBuser`
--

LOCK TABLES `tBuser` WRITE;
/*!40000 ALTER TABLE `tBuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `tBuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'wmysqlm00'
--
/*!50003 DROP PROCEDURE IF EXISTS `pRselTbM00` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pRselTbM00`()
BEGIN
 SELECT idtBm00 from tBm00;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-10 17:51:21
