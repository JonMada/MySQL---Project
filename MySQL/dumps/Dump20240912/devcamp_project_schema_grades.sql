-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: devcamp_project_schema
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `grades_id` int NOT NULL AUTO_INCREMENT,
  `grades_score` decimal(10,2) DEFAULT NULL,
  `courses_id_grades` int DEFAULT NULL,
  `professor_id_grades` int DEFAULT NULL,
  `students_id_grades` int DEFAULT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE KEY `grades_id_UNIQUE` (`grades_id`),
  KEY `courses_id_grades_idx` (`courses_id_grades`),
  KEY `professor_id_grades_idx` (`professor_id_grades`),
  KEY `students_id_grades_idx` (`students_id_grades`),
  CONSTRAINT `courses_id_grades` FOREIGN KEY (`courses_id_grades`) REFERENCES `courses` (`courses_id`),
  CONSTRAINT `professor_id_grades` FOREIGN KEY (`professor_id_grades`) REFERENCES `professors` (`professors_id`),
  CONSTRAINT `students_id_grades` FOREIGN KEY (`students_id_grades`) REFERENCES `students` (`students_id`)
) ENGINE=InnoDB AUTO_INCREMENT=511 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (451,88.25,1,1,1),(452,91.00,2,2,2),(453,77.50,3,3,3),(454,85.75,4,4,4),(455,79.00,5,5,5),(456,82.50,6,6,6),(457,74.25,7,7,7),(458,90.75,8,8,8),(459,84.00,9,1,9),(460,87.50,10,2,10),(461,92.25,1,3,11),(462,80.75,2,4,12),(463,76.00,3,5,13),(464,88.50,4,6,14),(465,81.25,5,7,15),(466,89.00,6,8,16),(467,93.75,7,1,17),(468,77.25,8,2,18),(469,85.00,9,3,19),(470,83.50,10,4,20),(471,90.00,2,5,1),(472,78.25,3,6,2),(473,84.75,4,7,3),(474,76.50,5,8,4),(475,88.00,6,1,5),(476,72.75,7,2,6),(477,87.25,8,3,7),(478,82.00,9,4,8),(479,89.75,10,5,9),(480,85.50,1,6,10),(481,80.25,2,7,11),(482,91.75,3,8,12),(483,79.50,4,1,13),(484,87.00,5,2,14),(485,74.00,6,3,15),(486,90.25,7,4,16),(487,83.75,8,5,17),(488,88.75,9,6,18),(489,79.75,10,7,19),(490,84.25,1,8,20),(491,87.50,3,2,1),(492,75.00,4,3,2),(493,90.00,5,4,3),(494,82.25,6,5,4),(495,76.75,7,6,5),(496,91.00,8,7,6),(497,80.50,9,8,7),(498,89.25,10,1,8),(499,86.00,1,2,9),(500,77.75,2,3,10),(501,92.00,3,4,11),(502,81.50,4,5,12),(503,78.75,5,6,13),(504,85.25,6,7,14),(505,80.00,7,8,15),(506,93.00,8,1,16),(507,82.25,9,2,17),(508,79.50,10,3,18),(509,84.75,1,4,19),(510,86.50,2,5,20);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-12 18:58:40
