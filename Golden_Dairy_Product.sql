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
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `Name` varchar(50) DEFAULT NULL,
  `ID` int DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES ('Milk Cream Cheese',1,'Milk',100,4,'Rich and creamy milk cream cheese'),('Organic Yogurt',2,'Yogurt',80,5,'Made with organic milk and live cultures'),('Unsalted Butter',3,'Butter',120,4,'Sweet cream unsalted butter, perfect for baking'),('Goat Cheese',4,'Cheese',150,4,'Mild and tangy goat cheese with a unique flavor'),('Whipping Cream',5,'Cream',70,5,'High-fat cream ideal for whipping and making desserts'),('Gouda Cheese',6,'Cheese',140,4,'Aged Gouda cheese with a nutty and caramel flavor'),('Strawberry Yogurt',7,'Yogurt',80,4,'Fresh and fruity yogurt with real strawberries'),('Sour Cream',8,'Cream',90,4,'Tangy sour cream, perfect for dips and sauces'),('Cheddar Cheese',9,'Cheese',170,4,'Sharp and aged cheddar cheese with a creamy texture'),('Vanilla Yogurt',10,'Yogurt',70,5,'Smooth and creamy yogurt with a hint of vanilla flavor'),('Blue Cheese',991,'Cheese',170,5,'Sharp and tangy blue cheese with a creamy texture'),('Peach Yogurt',992,'Yogurt',70,4,'Smooth and fruity yogurt with real peaches'),('Sweet Cream Cheese',993,'Cheese',100,5,'Sweet and creamy cheese, perfect for spreading on bagels'),('Plain Yogurt',994,'Yogurt',80,4,'Smooth and creamy plain yogurt with live cultures'),('Salted Butter',995,'Butter',120,5,'Sweet cream salted butter, perfect for cooking and baking'),('Brie Cheese',996,'Cheese',140,4,'Mild and creamy Brie cheese with a soft rind'),('Raspberry Yogurt',997,'Yogurt',80,5,'Fresh and fruity yogurt with real raspberries'),('Heavy Cream',998,'Cream',70,5,'High-fat cream ideal for whipping and making desserts'),('Mozzarella Cheese',999,'Cheese',170,4,'Smooth and stretchy mozzarella cheese, perfect for pizza'),('Coconut Yogurt',1000,'Yogurt',80,5,'Creamy and coconut-flavored yogurt with live cultures');
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-09 18:20:03
