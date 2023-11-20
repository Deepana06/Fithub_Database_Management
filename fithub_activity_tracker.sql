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
-- Table structure for table `activity_tracker`
--

DROP TABLE IF EXISTS `activity_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_tracker` (
  `Activity_id` int NOT NULL,
  `Activity_type` varchar(255) DEFAULT NULL,
  `Calories_burnt` int DEFAULT NULL,
  `Hours` float DEFAULT NULL,
  `Step_counts` int DEFAULT NULL,
  `Distance_covered` float DEFAULT NULL,
  `date` date DEFAULT NULL,
  `Admin_Id` int DEFAULT NULL,
  `User_Id` int DEFAULT NULL,
  PRIMARY KEY (`Activity_id`),
  KEY `Admin_Id` (`Admin_Id`),
  KEY `User_Id` (`User_Id`),
  CONSTRAINT `activity_tracker_ibfk_1` FOREIGN KEY (`Admin_Id`) REFERENCES `administrator` (`Admin_Id`),
  CONSTRAINT `activity_tracker_ibfk_2` FOREIGN KEY (`User_Id`) REFERENCES `user` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_tracker`
--

LOCK TABLES `activity_tracker` WRITE;
/*!40000 ALTER TABLE `activity_tracker` DISABLE KEYS */;
INSERT INTO `activity_tracker` VALUES (0,'Exercise',232,3,1568971868,7.57468,'2023-08-18',1801503308,7),(1,'Exercise',275,1,1972923321,1.79433,'2023-04-27',1569741369,9),(2,'Exercise',174,1,1972693766,5.40014,'2023-07-02',1821668502,5),(3,'Exercise',296,4,1459337896,5.15654,'2023-03-07',7896087,0),(4,'Activities',264,1,168336463,5.03739,'2023-09-02',827187475,1),(5,'Exercise',296,3,53286715,7.27941,'2023-08-28',1174114687,1),(6,'Activities',107,4,1501631576,3.49991,'2023-02-06',2066027269,8),(7,'Activities',68,1,1728588967,7.83965,'2023-03-05',1821668502,4),(8,'Exercise',235,4,324768466,2.9732,'2023-04-17',1688013308,5),(9,'Activities',287,4,1985522668,9.28373,'2023-07-20',1388829001,2);
/*!40000 ALTER TABLE `activity_tracker` ENABLE KEYS */;
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
