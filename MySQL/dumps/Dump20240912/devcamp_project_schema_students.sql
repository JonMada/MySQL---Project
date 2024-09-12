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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `students_id` int NOT NULL AUTO_INCREMENT,
  `students_name` varchar(45) NOT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE KEY `students_id_UNIQUE` (`students_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Ana Pérez'),(2,'Luis Gómez'),(3,'Carlos Rodríguez'),(4,'Marta Fernández'),(5,'Eva Martínez'),(6,'Ana Pérez'),(7,'Luis Gómez'),(8,'Carlos Rodríguez'),(9,'Marta Fernández'),(10,'Eva Martínez'),(11,'Jorge López'),(12,'Claudia Castro'),(13,'Ricardo Vargas'),(14,'Sofía Morales'),(15,'Antonio Ruiz'),(16,'Patricia Moreno'),(17,'Manuel Ortega'),(18,'Isabel Soto'),(19,'Pedro Sánchez'),(20,'Laura Martínez'),(21,'Francisco Díaz'),(22,'Verónica Torres'),(23,'Julio Silva'),(24,'Sandra Romero'),(25,'Alberto Jiménez'),(26,'Lorena Álvarez'),(27,'Ana Pérez'),(28,'Luis Gómez'),(29,'Carlos Rodríguez'),(30,'Marta Fernández'),(31,'Eva Martínez'),(32,'Jorge López'),(33,'Claudia Castro'),(34,'Ricardo Vargas'),(35,'Sofía Morales'),(36,'Antonio Ruiz'),(37,'Patricia Moreno'),(38,'Manuel Ortega'),(39,'Isabel Soto'),(40,'Pedro Sánchez'),(41,'Laura Martínez'),(42,'Francisco Díaz'),(43,'Verónica Torres'),(44,'Julio Silva'),(45,'Sandra Romero'),(46,'Alberto Jiménez'),(47,'Lorena Álvarez');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
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
