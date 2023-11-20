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
-- Table structure for table `daily_intake`
--

DROP TABLE IF EXISTS `daily_intake`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_intake` (
  `Tracking_Id` int NOT NULL,
  `Intake_time` datetime DEFAULT NULL,
  `Calories_taken` int DEFAULT NULL,
  `Macro_nutrients` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Tracking_Id`),
  CONSTRAINT `daily_intake_ibfk_1` FOREIGN KEY (`Tracking_Id`) REFERENCES `nutrition_tracker` (`Tracking_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_intake`
--

LOCK TABLES `daily_intake` WRITE;
/*!40000 ALTER TABLE `daily_intake` DISABLE KEYS */;
INSERT INTO `daily_intake` VALUES (0,'2023-04-29 23:07:50',340,'20'),(1,'2023-05-09 23:22:08',547,'63'),(2,'2023-08-18 16:53:53',758,'47'),(3,'2023-10-14 05:55:20',605,'02'),(4,'2023-01-12 14:04:10',988,'55'),(5,'2023-04-15 16:21:19',305,'01'),(6,'2023-02-01 18:09:57',911,'45'),(7,'2023-07-27 02:13:23',167,'35'),(8,'2023-03-07 10:20:19',871,'18'),(9,'2023-10-23 07:49:31',467,'11');
/*!40000 ALTER TABLE `daily_intake` ENABLE KEYS */;
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
