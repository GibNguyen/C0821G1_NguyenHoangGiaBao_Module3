-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: resort_manager
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `bo_phan`
--

DROP TABLE IF EXISTS `bo_phan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bo_phan` (
  `ma_bo_phan` int NOT NULL,
  `ten_bo_phan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ma_bo_phan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bo_phan`
--

LOCK TABLES `bo_phan` WRITE;
/*!40000 ALTER TABLE `bo_phan` DISABLE KEYS */;
/*!40000 ALTER TABLE `bo_phan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai_khach`
--

DROP TABLE IF EXISTS `loai_khach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loai_khach` (
  `ma_loai_khach` int NOT NULL,
  `ten_loai_khach` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ma_loai_khach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_khach`
--

LOCK TABLES `loai_khach` WRITE;
/*!40000 ALTER TABLE `loai_khach` DISABLE KEYS */;
/*!40000 ALTER TABLE `loai_khach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhan_vien`
--

DROP TABLE IF EXISTS `nhan_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhan_vien` (
  `ma_nhan_vien` int NOT NULL,
  `ho_ten` varchar(45) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `so_cmnd` varchar(45) NOT NULL,
  `luong` double NOT NULL,
  `so_dien_thoai` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `dia_chi` varchar(45) DEFAULT NULL,
  `ma_vi_tri` int DEFAULT NULL,
  `ma_trinh_do` int DEFAULT NULL,
  `ma_bo_phan` int DEFAULT NULL,
  PRIMARY KEY (`ma_nhan_vien`),
  KEY `fk_vi_tri_idx` (`ma_vi_tri`),
  KEY `fk_trinh_do_idx` (`ma_trinh_do`),
  KEY `fk_bo_phan_idx` (`ma_bo_phan`),
  CONSTRAINT `fk_bo_phan` FOREIGN KEY (`ma_bo_phan`) REFERENCES `bo_phan` (`ma_bo_phan`),
  CONSTRAINT `fk_trinh_do` FOREIGN KEY (`ma_trinh_do`) REFERENCES `trinh_do` (`ma_trinh_do`),
  CONSTRAINT `fk_vi_tri` FOREIGN KEY (`ma_vi_tri`) REFERENCES `vi_tri` (`ma_vi_tri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhan_vien`
--

LOCK TABLES `nhan_vien` WRITE;
/*!40000 ALTER TABLE `nhan_vien` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhan_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trinh_do`
--

DROP TABLE IF EXISTS `trinh_do`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trinh_do` (
  `ma_trinh_do` int NOT NULL,
  `ten_trinh_do` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ma_trinh_do`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trinh_do`
--

LOCK TABLES `trinh_do` WRITE;
/*!40000 ALTER TABLE `trinh_do` DISABLE KEYS */;
/*!40000 ALTER TABLE `trinh_do` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vi_tri`
--

DROP TABLE IF EXISTS `vi_tri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vi_tri` (
  `ma_vi_tri` int NOT NULL,
  `ten_vi_tri` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ma_vi_tri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vi_tri`
--

LOCK TABLES `vi_tri` WRITE;
/*!40000 ALTER TABLE `vi_tri` DISABLE KEYS */;
/*!40000 ALTER TABLE `vi_tri` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-12 10:48:42
