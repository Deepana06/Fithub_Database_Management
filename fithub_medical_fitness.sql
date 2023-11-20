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
-- Table structure for table `medical_fitness`
--

DROP TABLE IF EXISTS `medical_fitness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_fitness` (
  `Counsellor_Id` int NOT NULL,
  `C_SSN` varchar(20) NOT NULL,
  `Admin_Id` int NOT NULL,
  `A_SSN` varchar(20) NOT NULL,
  PRIMARY KEY (`Counsellor_Id`,`C_SSN`,`Admin_Id`,`A_SSN`),
  KEY `idx_medical_fitness` (`Counsellor_Id`,`C_SSN`,`Admin_Id`,`A_SSN`),
  KEY `Admin_Id` (`Admin_Id`,`A_SSN`),
  CONSTRAINT `medical_fitness_ibfk_1` FOREIGN KEY (`Counsellor_Id`, `C_SSN`) REFERENCES `medical_counselling` (`Counsellor_Id`, `SSN`),
  CONSTRAINT `medical_fitness_ibfk_2` FOREIGN KEY (`Admin_Id`, `A_SSN`) REFERENCES `administrator` (`Admin_Id`, `SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_fitness`
--

LOCK TABLES `medical_fitness` WRITE;
/*!40000 ALTER TABLE `medical_fitness` DISABLE KEYS */;
INSERT INTO `medical_fitness` VALUES (1888030079,'595-62-5352',1801503308,'673-34-1538'),(2114931102,'143-38-7401',2101472392,'755-32-0167');
/*!40000 ALTER TABLE `medical_fitness` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 16:42:07
