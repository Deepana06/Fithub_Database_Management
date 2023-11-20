-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: fithub
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `BankAccountNumber` varchar(20) NOT NULL,
  `CardDetails` varchar(255) DEFAULT NULL,
  `BankAddress` varchar(255) DEFAULT NULL,
  `BankName` varchar(255) DEFAULT NULL,
  `User_Id` int DEFAULT NULL,
  PRIMARY KEY (`BankAccountNumber`),
  KEY `User_Id` (`User_Id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `user` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('BOFA1968872878','485518695144','507 South Bank of America Freeway','SANTANDER',9),('BOFA5128384856','923835393324','64 North Santander Bank Drive','JPMorgan',9),('BOFA6517364923','352356386316','457 West JPMorgan Bank Way','JPMorgan',0),('BOFA6604784944','569878583235','76 North Bank of America Drive','SANTANDER',4),('BOFA7269164871','240666398454','308 East JPMorgan Bank Freeway','JPMorgan',7),('JPM6132687986','721586386434','927 North Santander Bank Boulevard','Bank of America',9),('SAN3142882875','228487482356','690 East Santander Bank Avenue','JPMorgan',8),('SAN7010466946','254046785525','76 South Santander Bank Drive','JPMorgan',2),('SAN8887664975','726865586455','836 East Bank of America Avenue','SANTANDER',6),('SAV3423564976','740159597316','852 West Santander Bank Freeway','SANTANDER',2);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 16:42:08
