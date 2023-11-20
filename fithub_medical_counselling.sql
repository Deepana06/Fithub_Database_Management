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
-- Table structure for table `medical_counselling`
--

DROP TABLE IF EXISTS `medical_counselling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_counselling` (
  `Counsellor_Id` int NOT NULL,
  `SSN` varchar(20) NOT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Counsellor_Id`,`SSN`),
  KEY `idx_medical_counselling` (`Counsellor_Id`,`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_counselling`
--

LOCK TABLES `medical_counselling` WRITE;
/*!40000 ALTER TABLE `medical_counselling` DISABLE KEYS */;
INSERT INTO `medical_counselling` VALUES (516548019,'138-50-6840','329-637-1526','Abraham Blackburn','pskm@gmail.com'),(715581063,'633-11-4032','368-277-6644','Dominick Neal','kicqtx6@gmail.com'),(827187475,'715-34-2687','596-590-8479','Cherie White','monlt963@gmail.com'),(1182054467,'441-28-9532','701-353-3725','Lynn Miles','pazii8@gmail.com'),(1283218712,'129-92-8302','854-774-2282','Erich Ingram','cmrui34@gmail.com'),(1368843497,'806-15-2206','660-705-7187','Charlotte Byrd','wdnl@gmail.com'),(1569741369,'140-61-5848','308-845-2517','Stephen Cisneros','xufh.vuho@gmail.com'),(1888030079,'595-62-5352','459-893-7727','Arthur Barrera','ucyp@gmail.com'),(2021317220,'363-35-0756','601-244-5989','Debra Middleton','lhynil.ekdhngu@gmail.com'),(2114931102,'143-38-7401','884-908-8137','Ebony Daniels','rcff@gmail.com');
/*!40000 ALTER TABLE `medical_counselling` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 16:42:09
