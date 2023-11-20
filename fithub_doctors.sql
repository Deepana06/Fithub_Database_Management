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
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `Counsellor_Id` int NOT NULL,
  `SSN` varchar(20) NOT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `Specialization` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Counsellor_Id`,`SSN`),
  KEY `idx_doctors` (`Counsellor_Id`,`SSN`),
  CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`Counsellor_Id`, `SSN`) REFERENCES `medical_counselling` (`Counsellor_Id`, `SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (516548019,'138-50-6840','787-715-1406','Katrina Weeks','ndvp211@gmail.com','Orthopedist'),(715581063,'633-11-4032','184-165-1624','Cassie Andrews','gthlq78@gmail.com','Psychiatrist'),(827187475,'715-34-2687','852-659-8935','Stephanie Lewis','mbdn.lkhey@gmail.com','Physician executive'),(1182054467,'441-28-9532','821-523-3056','Elisa Davenport','gnjt8@gmail.com','Physician executive'),(1283218712,'129-92-8302','643-251-5124','Jermaine Lynch','lmjjm@gmail.com','Psychiatrist'),(1368843497,'806-15-2206','069-311-4425','Esmeralda Mejia','mlfrm8@gmail.com','Psychiatrist'),(1569741369,'140-61-5848','276-773-2158','Ricardo Williamson','ydql@gmail.com','General Physician'),(1888030079,'595-62-5352','308-845-2517','Stephen Cisneros','xufh.vuho@gmail.com','Physician executive'),(2021317220,'363-35-0756','698-884-0281','Marci Moon','dviyrs.aliu@gmail.com','Psychiatrist'),(2114931102,'143-38-7401','200-221-5103','Roxanne Ellison','zkhdck83@gmail.com','General Physician');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
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
