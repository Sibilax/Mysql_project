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
-- Table structure for table `students_enrollments`
--

DROP TABLE IF EXISTS `students_enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_enrollments` (
  `students_enrollments_id` int NOT NULL AUTO_INCREMENT,
  `students_enrollments_students_id` int NOT NULL,
  `students_enrollments_courses_id` int NOT NULL,
  PRIMARY KEY (`students_enrollments_id`),
  UNIQUE KEY `students_enrollments_id_UNIQUE` (`students_enrollments_id`),
  KEY `students_enrollments_students_id_idx` (`students_enrollments_students_id`),
  KEY `students_enrollments_courses_id_idx` (`students_enrollments_courses_id`),
  CONSTRAINT `students_enrollments_courses_id` FOREIGN KEY (`students_enrollments_courses_id`) REFERENCES `courses` (`courses_id`) ON DELETE CASCADE,
  CONSTRAINT `students_enrollments_students_id` FOREIGN KEY (`students_enrollments_students_id`) REFERENCES `students` (`students_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_enrollments`
--

LOCK TABLES `students_enrollments` WRITE;
/*!40000 ALTER TABLE `students_enrollments` DISABLE KEYS */;
INSERT INTO `students_enrollments` VALUES (1,1,2),(3,3,2),(4,4,2),(5,5,2),(6,6,2),(7,7,2),(8,8,2),(16,8,3),(17,9,3),(18,10,3),(19,11,3),(20,12,3),(21,13,3),(22,14,3),(23,15,3),(24,16,3),(25,17,3),(26,18,3),(32,19,3),(33,20,3),(34,21,3),(35,22,3),(36,23,3),(37,24,3),(38,24,4),(39,25,4),(40,26,4),(41,27,4),(42,28,4),(43,29,4),(44,30,4),(45,31,4),(46,32,4),(47,33,4),(48,34,4),(53,25,5),(54,26,5),(55,27,5),(56,28,5),(57,29,5),(58,30,5),(60,30,6),(61,31,6),(62,32,6),(63,33,6),(64,34,6),(65,35,6),(66,36,6),(67,37,6),(68,38,6),(69,39,6),(70,40,6),(71,41,6),(72,42,6),(73,43,6),(74,44,6),(75,45,6),(91,46,6),(92,47,6),(93,48,6),(94,49,6),(95,50,6),(96,51,6),(97,52,6),(98,47,7),(99,48,7),(100,49,7),(101,50,7),(102,51,7),(103,52,7),(104,53,7),(105,54,7),(106,55,7),(107,56,7),(108,57,7),(109,58,7),(110,59,7),(111,60,7),(113,61,8),(114,62,8),(115,63,8),(116,64,8),(117,65,8),(118,66,8),(119,67,8),(120,68,8),(121,69,8),(122,70,8),(128,71,9),(129,72,9),(130,73,9),(131,61,9),(132,1,1),(133,1,8),(134,25,9),(135,38,8);
/*!40000 ALTER TABLE `students_enrollments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-27  1:04:21
