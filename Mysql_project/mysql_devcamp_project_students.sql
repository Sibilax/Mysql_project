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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `students_id` int NOT NULL AUTO_INCREMENT,
  `students_name` varchar(50) NOT NULL,
  `students_email` varchar(50) NOT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE KEY `students_id_UNIQUE` (`students_id`),
  UNIQUE KEY `students_email_UNIQUE` (`students_email`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'John Smith','jsmith@sts.com'),(2,'Emma Johnson','ejohnson@sts.com'),(3,'Michael Brown','mbrown@sts.com'),(4,'Olivia Jones','ojones@sts.com'),(5,'Liam Garcia','lgarcia@sts.com'),(6,'Sophia Martinez','smartinez@sts.com'),(7,'Noah Hernandez','nhernandez@sts.com'),(8,'Isabella Lopez','ilopez@sts.com'),(9,'James Wilson','jwilson@sts.com'),(10,'Mia Anderson','manderson@sts.com'),(11,'Benjamin Thomas','bthomas@sts.com'),(12,'Charlotte Taylor','ctaylor@sts.com'),(13,'Lucas Moore','lmoore@sts.com'),(14,'Amelia White','awhite@sts.com'),(15,'Ethan Harris','eharris@sts.com'),(16,'Harper Clark','hclark@sts.com'),(17,'Alexander Lewis','alewis@sts.com'),(18,'Ella Walker','ewalker@sts.com'),(19,'Daniel Hall','dhall@sts.com'),(20,'Avery Allen','aallen@sts.com'),(21,'Matthew Young','myoung@sts.com'),(22,'Abigail King','aking@sts.com'),(23,'William Wright','wwright@sts.com'),(24,'Evelyn Scott','escott@sts.com'),(25,'Jack Green','jgreen@sts.com'),(26,'Zoe Adams','zadams@sts.com'),(27,'Sebastian Baker','sbaker@sts.com'),(28,'Lily Nelson','lnelson@sts.com'),(29,'Michael Carter','mcarter@sts.com'),(30,'Natalie Mitchell','nmitchell@sts.com'),(31,'Ryan Roberts','rroberts@sts.com'),(32,'Samantha Perez','sperez@sts.com'),(33,'Samuel Edwards','sedwards@sts.com'),(34,'Aria Collins','acollins@sts.com'),(35,'David Stewart','dstewart@sts.com'),(36,'Grace Sanchez','gsanchez@sts.com'),(37,'Matthew Morris','mmorris@sts.com'),(38,'Harper Ramirez','hramirez@sts.com'),(39,'Jacob Wood','jwood@sts.com'),(40,'Mia Cooper','mcooper@sts.com'),(41,'Aiden Morgan','amorgan@sts.com'),(42,'Riley Diaz','rdiaz@sts.com'),(43,'Logan Foster','lfoster@sts.com'),(44,'Emily Bailey','ebailey@sts.com'),(45,'Owen Ross','oross@sts.com'),(46,'Chloe Kelly','ckelly@sts.com'),(47,'Jack Butler','jbutler@sts.com'),(48,'Lillian Sanders','lsanders@sts.com'),(49,'William Rivera','wrivera@sts.com'),(50,'Sophia Rogers','srogers@sts.com'),(51,'Ethan Murphy','emurphy@sts.com'),(52,'Madison Hughes','mhughes@sts.com'),(53,'Jackson Price','jprice@sts.com'),(54,'Eleanor James','ejames@sts.com'),(55,'Gabriel Silva','gsilva@sts.com'),(56,'Lucia Romano','lromano@sts.com'),(57,'Matteo Ferrari','mferrari@sts.com'),(58,'Juliette Moreau','jmoreau@sts.com'),(59,'Sofia Russo','srusso@sts.com'),(60,'Carlos Gonzalez','cgonzalez@sts.com'),(61,'Lorenzo Ricci','lricci@sts.com'),(62,'Camille Dupont','cdupont@sts.com'),(63,'Ana Ruiz','aruiz@sts.com'),(64,'Giulia Bianchi','gbianchi@sts.com'),(65,'Isabelle Lefevre','ilefevre@sts.com'),(66,'Diego Morales','dmorales@sts.com'),(67,'Elena Costa','ecosta@sts.com'),(68,'Emilie Lefevre','elefevre@sts.com'),(69,'Antonio Morales','amorales@sts.com'),(70,'Francesca Conti','fconti@sts.com'),(71,'Claire Martin','cmartin@sts.com'),(72,'Ricardo Pereira','rpereira@sts.com'),(73,'Chiara Lombardi','clombardi@sts.com');
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

-- Dump completed on 2024-08-27  1:04:20
