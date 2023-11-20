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
-- Table structure for table `premium_user`
--

DROP TABLE IF EXISTS `premium_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_user` (
  `User_Id` int NOT NULL,
  `User_Name` varchar(255) DEFAULT NULL,
  `User_DOB` date DEFAULT NULL,
  `User_phoneNo` varchar(15) DEFAULT NULL,
  `User_mailId` varchar(255) DEFAULT NULL,
  `User_Password` varchar(255) DEFAULT NULL,
  `User_LoginId` varchar(255) DEFAULT NULL,
  `BMI` float DEFAULT NULL,
  `Counsellor_Id` int DEFAULT NULL,
  `Admin_Id` int DEFAULT NULL,
  `SSN` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`User_Id`),
  KEY `Counsellor_Id` (`Counsellor_Id`),
  KEY `Admin_Id` (`Admin_Id`,`SSN`),
  CONSTRAINT `premium_user_ibfk_1` FOREIGN KEY (`Counsellor_Id`) REFERENCES `medical_counselling` (`Counsellor_Id`),
  CONSTRAINT `premium_user_ibfk_2` FOREIGN KEY (`Admin_Id`, `SSN`) REFERENCES `fitness_coach` (`Admin_Id`, `SSN`),
  CONSTRAINT `premium_user_ibfk_3` FOREIGN KEY (`User_Id`) REFERENCES `user` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premium_user`
--

LOCK TABLES `premium_user` WRITE;
/*!40000 ALTER TABLE `premium_user` DISABLE KEYS */;
INSERT INTO `premium_user` VALUES (0,'Colby3','1963-08-09','733-863-5454','hqzp5@gmail.com','utok.mstfw','Katina',21,715581063,1801503308,'673-34-1538'),(1,'Heath','1951-10-31','746-761-7723','rcff@gmail.com','yoao.thqw','Kendall',24,1283218712,1801503308,'673-34-1538'),(2,'Janice11','1999-08-01','353-114-4212','wdnl@gmail.com','vmsm','Clinton',21,1368843497,1801503308,'673-34-1538'),(3,'Robbie7','1997-01-03','221-391-6541','kicqtx6@gmail.com','vomv','Orlando',21,715581063,1801503308,'673-34-1538'),(4,'Kristen3','1976-03-07','574-154-7847','wuof.gpfh@gmail.com','jrxc','Hollie',23,715581063,1801503308,'673-34-1538'),(5,'Carla401','2004-03-23','303-938-7141','monlt963@gmail.com','oquk','Autumn',20,2021317220,1801503308,'673-34-1538'),(6,'Lawanda','1977-04-29','817-220-5362','cmrui34@gmail.com','tmtd','Alexis',23,715581063,1801503308,'673-34-1538'),(7,'Abel','1990-03-20','575-831-1865','xufh.vuho@gmail.com','epyv.tjvmsi','Jeanine',23,1888030079,1801503308,'673-34-1538'),(8,'Erick5','1966-02-19','014-474-8711','pskm@gmail.com','wlkzw.gpncb','Tabatha',23,2114931102,1801503308,'673-34-1538'),(9,'Keri0','1954-02-11','100-278-9931','zkhdck83@gmail.com','fysf','Cecil',21,1569741369,1801503308,'673-34-1538');
/*!40000 ALTER TABLE `premium_user` ENABLE KEYS */;
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
