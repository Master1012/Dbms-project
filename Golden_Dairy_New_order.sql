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
-- Table structure for table `New_order`
--

DROP TABLE IF EXISTS `New_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `New_order` (
  `OrderID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  KEY `OrderID` (`OrderID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `New_order_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`Order_ID`),
  CONSTRAINT `New_order_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `New_order`
--

LOCK TABLES `New_order` WRITE;
/*!40000 ALTER TABLE `New_order` DISABLE KEYS */;
INSERT INTO `New_order` VALUES (29,71,274),(37,21,172),(97,78,484),(42,34,332),(26,60,284),(22,17,5),(57,12,149),(84,41,293),(29,59,148),(35,75,205),(61,85,135),(77,16,268),(38,81,309),(17,22,276),(92,96,199),(43,61,206),(33,86,219),(8,36,271),(75,88,107),(2,94,78),(32,52,494),(33,90,396),(7,61,228),(94,48,254),(29,47,448),(54,60,355),(83,35,475),(76,10,257),(44,89,110),(21,74,265),(53,78,346),(89,14,375),(29,62,290),(91,42,387),(59,40,292),(61,61,26),(39,27,381),(53,78,254),(70,28,427),(22,91,229),(2,89,250),(94,15,397),(59,65,266),(85,56,313),(29,22,302),(52,11,264),(85,96,267),(20,68,414),(74,31,124),(71,88,208),(90,47,477),(65,52,120),(87,16,168),(96,48,471),(98,63,350),(28,40,100),(18,10,182),(32,93,181),(51,76,180),(24,66,371),(30,84,478),(67,85,157),(68,32,135),(61,79,479),(55,44,120),(41,17,98),(70,34,432),(19,62,25),(24,45,192),(34,53,356),(80,15,184),(91,77,457),(57,93,427),(8,92,96),(78,23,121),(56,71,244),(7,75,228),(24,18,244),(93,58,85),(74,19,409),(62,11,492),(27,34,337),(11,87,376),(5,28,119),(17,9,25),(57,51,340),(23,61,296),(88,31,421),(93,87,391),(37,44,318),(10,38,322),(50,48,29),(75,78,49),(75,31,286),(56,92,67),(44,13,474),(57,89,105),(8,15,458),(75,30,406),(22,41,17);
/*!40000 ALTER TABLE `New_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-25 18:37:05
