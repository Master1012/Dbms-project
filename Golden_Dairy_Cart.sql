-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Golden_Dairy
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `Cart`
--

DROP TABLE IF EXISTS `Cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cart` (
  `customer_ID` int NOT NULL,
  `Total_Cost` int DEFAULT NULL,
  PRIMARY KEY (`customer_ID`),
  CONSTRAINT `Cart_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `Customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cart`
--

LOCK TABLES `Cart` WRITE;
/*!40000 ALTER TABLE `Cart` DISABLE KEYS */;
INSERT INTO `Cart` VALUES (1,2664),(2,1362),(3,422),(4,3096),(5,2697),(6,1353),(7,4124),(8,2669),(9,3693),(10,4588),(11,3742),(12,78),(13,4032),(14,2082),(15,2483),(16,770),(17,4056),(18,3736),(19,364),(20,3364),(21,2873),(22,550),(23,754),(24,4782),(25,114),(26,666),(27,1185),(28,1901),(29,737),(30,710),(31,1362),(32,1510),(33,4335),(34,2664),(35,4127),(36,141),(37,112),(38,3673),(39,620),(40,4429),(41,1159),(42,1485),(43,1388),(44,3017),(45,60),(46,569),(47,2448),(48,2248),(49,1506),(50,105),(51,2507),(52,438),(53,2622),(54,2359),(55,4349),(56,378),(57,2831),(58,69),(59,1920),(60,1154),(61,355),(62,2392),(63,444),(64,4005),(65,1725),(66,2614),(67,363),(68,1274),(69,2942),(70,4458),(71,1719),(72,57),(73,4291),(74,2636),(75,4658),(76,2422),(77,570),(78,224),(79,1682),(80,882),(81,3204),(82,2671),(83,1475),(84,2162),(85,4000),(86,1865),(87,3170),(88,4922),(89,2794),(90,697),(91,1737),(92,333),(93,3394),(94,1709),(95,2521),(96,3798),(97,4264),(98,56),(99,4861),(100,2517);
/*!40000 ALTER TABLE `Cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-10 19:03:53
