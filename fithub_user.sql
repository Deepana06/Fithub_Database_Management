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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `User_Id` int NOT NULL,
  `User_Name` varchar(255) DEFAULT NULL,
  `User_DOB` date DEFAULT NULL,
  `User_phoneNo` varchar(15) DEFAULT NULL,
  `User_mailId` varchar(255) DEFAULT NULL,
  `User_Password` varchar(255) DEFAULT NULL,
  `User_LoginId` varchar(255) DEFAULT NULL,
  `BMI` float DEFAULT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (0,'Abel','2001-03-07','575-831-1865','xufh.vuho@gmail.com','epyv.tjvmsi','Jeanine',25),(1,'Erick5','1970-07-15','014-474-8711','pskm@gmail.com','wlkzw.gpncb','Tabatha',26),(2,'Janice11','2013-02-06','353-114-4212','wdnl@gmail.com','vmsm','Clinton',20),(3,'Gretchen2','1950-04-17','243-556-3888','pazii8@gmail.com','jrfb.gbrpvpq','Casey',28),(4,'Lawanda','1984-10-11','817-220-5362','cmrui34@gmail.com','tmtd','Alexis',25),(5,'Robbie7','2009-10-29','221-391-6541','kicqtx6@gmail.com','vomv','Orlando',20),(6,'Carla401','2019-01-04','303-938-7141','monlt963@gmail.com','oquk','Autumn',16),(7,'Heath','1952-05-01','746-761-7723','rcff@gmail.com','yoao.thqw','Kendall',27),(8,'Kendra278','2009-12-31','387-172-3341','ucyp@gmail.com','lnvdri','Brad',16),(9,'Brandie6','2014-08-14','556-421-4671','lhynil.ekdhngu@gmail.com','cvzt.bcdue','Sharon',28);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
