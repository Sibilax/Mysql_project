-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mysql_devcamp_project
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
  `grades_exam` float NOT NULL,
  `grades_students_id` int NOT NULL,
  `grades_courses_id` int NOT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE KEY `grades_id_UNIQUE` (`grades_id`),
  KEY `grades_students_id_idx` (`grades_students_id`),
  KEY `grades_courses_id_idx` (`grades_courses_id`),
  CONSTRAINT `grades_courses_id` FOREIGN KEY (`grades_courses_id`) REFERENCES `courses` (`courses_id`) ON DELETE CASCADE,
  CONSTRAINT `grades_students_id` FOREIGN KEY (`grades_students_id`) REFERENCES `students` (`students_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,88,1,2),(2,80,2,2),(3,94,3,2),(4,79,4,2),(5,85,5,2),(6,83,6,2),(7,91,7,2),(8,88,8,2),(9,80,9,2),(10,94,10,2),(11,79,4,9),(12,85,5,9),(13,83,6,9),(14,91,7,9),(15,88,8,8),(16,90,8,3),(17,94,9,3),(18,72,10,3),(19,85,11,3),(20,73,12,3),(21,61,13,3),(22,86,14,3),(23,89,15,3),(24,91,16,3),(25,87,17,3),(26,92,18,3),(27,94,19,3),(28,95,20,3),(29,93,21,3),(30,98,22,3),(31,96,23,3),(32,97,24,3),(33,97,24,4),(34,67,25,4),(35,67,25,5),(36,77,26,5),(37,95,27,4),(38,82,28,4),(39,90,29,4),(40,85,30,4),(41,78,31,4),(42,91,32,4),(43,83,33,4),(44,95,34,4),(45,95,27,5),(46,92,28,5),(47,92,29,5),(48,75,30,5),(49,95,31,6),(50,92,32,6),(51,92,33,6),(52,75,34,6),(53,95,35,6),(54,92,36,6),(55,92,37,6),(56,75,38,6),(57,95,39,6),(58,92,40,6),(59,92,41,6),(60,75,42,6),(61,95,43,6),(62,92,44,6),(63,92,45,6),(64,75,46,6),(65,95,47,6),(66,92,48,6),(67,92,49,6),(68,75,50,6),(69,95,51,6),(70,92,52,6),(71,95,47,7),(72,92,48,7),(73,92,49,7),(74,75,50,7),(75,95,51,7),(76,80,52,7),(77,65,53,7),(78,75,54,7),(79,91,55,7),(80,91,56,7),(81,92,57,7),(82,75,58,7),(83,97,59,7),(84,80,60,7),(85,95,61,8),(86,80,62,8),(87,86,63,8),(88,75,64,8),(89,94,65,8),(90,91,66,8),(91,92,67,8),(92,75,68,8),(93,55,69,8),(94,94,70,8),(95,95,71,9),(96,80,72,9),(97,86,73,9),(98,60,61,9),(99,85,1,1),(100,75,1,8),(101,50,25,9),(102,68,38,8);
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

-- Dump completed on 2024-08-27  1:04:19
