-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: quan_ly_don_dat_hang
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
-- Table structure for table `chi_tiet_don_dat_hang`
--

DROP TABLE IF EXISTS `chi_tiet_don_dat_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_don_dat_hang` (
  `ma_dh` int NOT NULL,
  `ma_vt` int NOT NULL,
  PRIMARY KEY (`ma_dh`,`ma_vt`),
  KEY `ma_vt` (`ma_vt`),
  CONSTRAINT `chi_tiet_don_dat_hang_ibfk_1` FOREIGN KEY (`ma_dh`) REFERENCES `don_dat_hang` (`ma_dh`),
  CONSTRAINT `chi_tiet_don_dat_hang_ibfk_2` FOREIGN KEY (`ma_vt`) REFERENCES `vat_tu` (`ma_vt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_don_dat_hang`
--

LOCK TABLES `chi_tiet_don_dat_hang` WRITE;
/*!40000 ALTER TABLE `chi_tiet_don_dat_hang` DISABLE KEYS */;
/*!40000 ALTER TABLE `chi_tiet_don_dat_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chi_tiet_phieu_nhap`
--

DROP TABLE IF EXISTS `chi_tiet_phieu_nhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_phieu_nhap` (
  `ma_vt` int NOT NULL,
  `ma_pn` int NOT NULL,
  `don_gia_nhap` float DEFAULT NULL,
  `so_luong_nhap` int DEFAULT NULL,
  PRIMARY KEY (`ma_pn`,`ma_vt`),
  KEY `ma_vt` (`ma_vt`),
  CONSTRAINT `chi_tiet_phieu_nhap_ibfk_1` FOREIGN KEY (`ma_pn`) REFERENCES `phieu_nhap` (`ma_pn`),
  CONSTRAINT `chi_tiet_phieu_nhap_ibfk_2` FOREIGN KEY (`ma_vt`) REFERENCES `vat_tu` (`ma_vt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_phieu_nhap`
--

LOCK TABLES `chi_tiet_phieu_nhap` WRITE;
/*!40000 ALTER TABLE `chi_tiet_phieu_nhap` DISABLE KEYS */;
/*!40000 ALTER TABLE `chi_tiet_phieu_nhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chi_tiet_phieu_xuat`
--

DROP TABLE IF EXISTS `chi_tiet_phieu_xuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_phieu_xuat` (
  `ma_px` int NOT NULL,
  `ma_vt` int NOT NULL,
  `don_gia_xuat` float DEFAULT NULL,
  `so_luong_xuat` int DEFAULT NULL,
  PRIMARY KEY (`ma_px`,`ma_vt`),
  KEY `ma_vt` (`ma_vt`),
  CONSTRAINT `chi_tiet_phieu_xuat_ibfk_1` FOREIGN KEY (`ma_px`) REFERENCES `phieu_xuat` (`ma_px`),
  CONSTRAINT `chi_tiet_phieu_xuat_ibfk_2` FOREIGN KEY (`ma_vt`) REFERENCES `vat_tu` (`ma_vt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_phieu_xuat`
--

LOCK TABLES `chi_tiet_phieu_xuat` WRITE;
/*!40000 ALTER TABLE `chi_tiet_phieu_xuat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chi_tiet_phieu_xuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `don_dat_hang`
--

DROP TABLE IF EXISTS `don_dat_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `don_dat_hang` (
  `ma_dh` int NOT NULL,
  `ngay_dh` date DEFAULT NULL,
  `ma_ncc` int DEFAULT NULL,
  PRIMARY KEY (`ma_dh`),
  KEY `ma_ncc` (`ma_ncc`),
  CONSTRAINT `don_dat_hang_ibfk_1` FOREIGN KEY (`ma_ncc`) REFERENCES `nha_cung_cap` (`ma_ncc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `don_dat_hang`
--

LOCK TABLES `don_dat_hang` WRITE;
/*!40000 ALTER TABLE `don_dat_hang` DISABLE KEYS */;
/*!40000 ALTER TABLE `don_dat_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nha_cung_cap`
--

DROP TABLE IF EXISTS `nha_cung_cap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nha_cung_cap` (
  `ma_ncc` int NOT NULL,
  `ten_ncc` varchar(20) DEFAULT NULL,
  `dia_chi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ma_ncc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nha_cung_cap`
--

LOCK TABLES `nha_cung_cap` WRITE;
/*!40000 ALTER TABLE `nha_cung_cap` DISABLE KEYS */;
/*!40000 ALTER TABLE `nha_cung_cap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_nhap`
--

DROP TABLE IF EXISTS `phieu_nhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_nhap` (
  `ma_pn` int NOT NULL,
  `ngay_nhap` date DEFAULT NULL,
  PRIMARY KEY (`ma_pn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_nhap`
--

LOCK TABLES `phieu_nhap` WRITE;
/*!40000 ALTER TABLE `phieu_nhap` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieu_nhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_xuat`
--

DROP TABLE IF EXISTS `phieu_xuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_xuat` (
  `ma_px` int NOT NULL,
  `ngay_xuat` date DEFAULT NULL,
  PRIMARY KEY (`ma_px`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_xuat`
--

LOCK TABLES `phieu_xuat` WRITE;
/*!40000 ALTER TABLE `phieu_xuat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieu_xuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_dien_thoai`
--

DROP TABLE IF EXISTS `so_dien_thoai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_dien_thoai` (
  `id_sdt` int NOT NULL,
  `so_dien_thoai` int DEFAULT NULL,
  `ma_ncc` int DEFAULT NULL,
  PRIMARY KEY (`id_sdt`),
  KEY `ma_ncc` (`ma_ncc`),
  CONSTRAINT `so_dien_thoai_ibfk_1` FOREIGN KEY (`ma_ncc`) REFERENCES `nha_cung_cap` (`ma_ncc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_dien_thoai`
--

LOCK TABLES `so_dien_thoai` WRITE;
/*!40000 ALTER TABLE `so_dien_thoai` DISABLE KEYS */;
/*!40000 ALTER TABLE `so_dien_thoai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vat_tu`
--

DROP TABLE IF EXISTS `vat_tu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vat_tu` (
  `ma_vt` int NOT NULL,
  `ten_vt` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ma_vt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vat_tu`
--

LOCK TABLES `vat_tu` WRITE;
/*!40000 ALTER TABLE `vat_tu` DISABLE KEYS */;
/*!40000 ALTER TABLE `vat_tu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-15 15:22:03
