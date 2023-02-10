-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: golden_dairy
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Name` varchar(50) DEFAULT NULL,
  `ID` int NOT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  `Protein` float DEFAULT NULL,
  `Energy` float DEFAULT NULL,
  `Fat` float DEFAULT NULL,
  `Carbohydrate` float DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('Full Cream',1,'Milk',33,5,3.5,75,4.5,5,500),('Toned Milk',2,'Milk',27,4.2,3.5,35,3,5,500),('Cow Milk',3,'Milk',28,4.3,3.1,64,3.6,4.8,500),('Buffalo Milk',4,'Milk',35,4,4.5,57.5,1.5,6.5,500),('Slim N trim',5,'Milk',24,4,3.5,35,0.1,5,500),('Butter',6,'Butter',56,4.1,0.5,722,80,0,100),('Cream cheese',7,'Cream',80,4.1,8,325,32,1.2,200),('Processed Cream',8,'Cream',73,4.2,20,314,26,0,200),('Processed cheese',9,'Cheese',127,4.1,20,314,26,0,200),('Malai Paneer',10,'Paneer',91,3.9,20,323,25,4.5,200),('Fresh Paneer',11,'Paneer',87,4,20,296,22,4.5,200),('Dahi',12,'Curd',22,4,4,61.5,3.1,4.4,250),('Mishti Doi',13,'Curd',20,4.2,3.9,166,6,24.2,80),('Premium curd',14,'Curd',60,4.2,1,74.1,4.5,4.4,400),('Butterschotch cone',15,'Ice cream',25,4.3,4.9,331,19.9,32.9,120),('Choco Crunch cone',16,'Ice Cream',30,4.2,5.1,338,19.5,35.7,120),('Two in one cone',17,'Ice Cream',30,3.8,5.1,330,20.3,31.8,120),('Black Currant cone',18,'Ice Cream',30,4,5.1,330,20.3,31.8,120),('Full Cream',19,'Milk',66,5,3.5,75,4.5,5,1000),('Toned Milk',20,'Milk',54,4.2,3.5,35,3,5,1000),('Cow Milk',21,'Milk',56,4.3,3.1,64,3.6,4.8,1000),('Buffalo Milk ',22,'Milk',70,4,4.5,67.5,1.5,6.5,1000),('Slim N Trim',23,'Milk',48,4,3.5,35,0.1,5,1000),('Lactose free milk',24,'Milk',25,4.3,3,59,3.1,4.8,250),('Lassi',25,'Lassi',23,4.3,2.3,79,2.1,12.8,250),('Lassi',26,'Lassi',15,4.3,2.3,79,2.1,12.8,200),('Lassi ',27,'Lassi',80,4.3,2.3,79,2.1,12.8,1000),('Lassi',28,'Lassi',42,4.3,2.3,79,2.1,12.8,500),('Kesar Milk',29,'Flavoured Milkshake',22,4.5,3.2,89,3.1,12,180),('Kesar Milk',30,'Flavoured Milkshake',43,4.5,3.2,89,3.1,12,360),('Kesar Elaichi',31,'Flavoured Milk',22,4.5,3.2,89,3.1,12,180),('Kesar Elaichi',32,'Flavoured Milk',43,4.5,3.2,89,3.1,12,360),('Kesar Milk',33,'Flavoured Milk',75,4.5,3.2,89,3.1,12,750),('Kesar Elaichi',34,'Flavoured Milk',75,4.5,3.2,89,3.1,12,750),('Badam',35,'Flavoured Milk',22,4.1,3.2,89,3.1,12,180),('Badam',36,'Flavoured Milk',43,4.1,3.2,89,3.1,12,360),('Badam',37,'Flavoured Milk',75,4.1,3.2,89,3.1,12,750),('Mango Lassi',38,'Lassi',15,3.9,1.8,76,1.7,13.5,200),('Mango Lassi',39,'Lassi',23,3.9,1.8,76,1.7,13.5,250),('Mango Lassi ',40,'Lassi ',42,3.9,1.8,76,1.7,13.5,500),('Mango Lassi',41,'Lassi',80,3.9,1.8,76,1.7,13.5,1000),('Strawberry Lassi',42,'Lassi',15,4.4,1.8,76,1.7,13.5,200),('Strawberry Lassi',43,'Lassi ',23,4.4,1.8,76,1.7,13.5,250),('Strawberry Lassi',44,'Lassi ',42,4.4,1.8,76,1.7,13.5,500),('Strawberry Lassi',45,'Lassi ',80,3.9,1.8,76,1.7,13.5,1000),('Rose Lassi',46,'Lassi ',15,3.9,1.8,76,1.7,13.5,200),('Rose Lassi',47,'Lassi ',23,3.9,1.8,76,1.7,13.5,250),('Rose Lassi',48,'Lassi ',42,3.9,1.8,76,1.7,13.5,500),('Rose Lassi',49,'Lassi ',80,3.9,1.8,76,1.7,13.5,1000),('Mango milk',50,'Flavoured Milk',22,4,3.2,89,3.1,12,180),('Mango milk',51,'Flavoured Milk',43,4,3.2,89,3.1,12,360),('Mango milk',52,'Flavoured Milk',75,4,3.2,89,3.1,12,750),('Vanilla milkshake',53,'Milkshake',22,3.6,3.2,89,3.1,12,180),('Vanilla milkshake',54,'Milkshake',43,3.6,3.2,89,3.1,12,360),('Vanilla milkshake',55,'Milkshake',75,3.6,3.2,89,3.1,12,750),('Chocolate Milkshake',56,'Milkshake',22,4.8,3.2,89,3.1,12,180),('Chocolate Milkshake',57,'Milkshake',43,4.8,3.2,89,3.1,12,360),('Chocolate Milkshake',58,'Milkshake',75,4.8,3.2,89,3.1,12,750),('Strawberry Milkshake',59,'Milkshake',22,4.3,3.2,89,3.1,12,180),('Strawberry Milkshake',60,'Milkshake',43,4.3,3.2,89,3.1,12,360),('Strawberry Milkshake',61,'Milkshake',75,4.3,3.2,89,3.1,12,750),('Cold coffee',62,'Flavoured Milk',22,4.6,3.2,89,3.1,12,180),('Cold coffee',63,'Flavoured Milk',43,4.6,3.2,89,3.1,12,360),('Cold coffee',64,'Flavoured Milk',75,4.6,3.2,89,3.1,12,750),('Dahi',65,'Curd',36,4,4,61.5,3.1,4.4,400),('Mishti Doi',66,'Curd',40,4.2,3.9,166,6,24.2,200),('Premium Curd',67,'Curd',100,4.2,1,74.1,4.5,4.4,750),('Dahi',68,'Curd',64,4,4,62.5,3.1,4.4,800),('Pista Badam Cone',69,'Ice Cream',30,4.4,4.9,331,19.9,32.9,120),('Butterschotch Cone',70,'Ice Cream',15,4.3,4.9,331,19.9,32.9,50),('Kesar Pista Cone',71,'Ice Cream',30,4.4,4.6,320,19.2,32.2,120),('Belgian Chocolate Cone',72,'Ice Cream',40,4.9,4.4,245,12.8,28.2,120),('Choco Vanilla Cone',73,'Ice Cream',20,4,4.7,312,16.6,36.1,120),('Chocolate Brownie',74,'Ice Cream',30,4.5,4.4,245,12.8,28.2,125),('Fruit N Nut Fantasy',75,'Ice Cream',30,4.2,3.9,235,13.5,24.3,125),('Choco Truffle ',76,'Ice Cream',40,4.2,4.1,255,14,28.3,80),('Choco Almond',77,'Ice Cream',40,4.4,4.7,242,15.2,21.8,80),('Choco Cappuccino',78,'Ice Cream',40,4,4.4,251,14.6,24.6,80),('Strawberry Twist',79,'Ice Cream',40,4,4.1,230,15.1,24.2,80),('Butterscotch Cone',80,'Ice Cream',20,4.3,4.9,331,19.9,32.9,100),('Choco Crunch Cone',81,'Ice Cream',20,4.2,5.1,338,19.5,35.7,100),('Choco Crunch Cone',82,'Ice Cream',15,4.2,5.1,338,19.5,35.7,50),('Two in one cone',83,'Ice Cream',20,3.8,5.1,330,20.3,31.8,100),('Two in one cone',84,'Ice Cream',15,3.8,5.1,330,20.3,31.8,50),('Black Currant cone',85,'Ice Cream',20,4,5.1,330,20.3,31.8,100),('Black Currant cone',86,'Ice Cream',15,4,5.1,330,20.3,31.8,50),('Chocobar',87,'Ice Cream',10,4.3,3.7,329,24,24,40),('Chocobar',88,'Ice Cream',15,4.3,3.7,329,24,24,60),('Mango Ice Cream',89,'Ice Cream',10,3.9,3.5,211,11.7,23.3,40),('Orange Ice Cream',90,'Ice Cream',10,3.9,3.5,211,11.7,23.3,40),('Mango Ice Cream',91,'Ice Cream',15,3.9,3.5,211,11.7,23.3,60),('Orange Ice Cream',92,'Ice Cream',15,3.9,3.5,211,11.7,23.3,60),('Chocolate Tub',93,'Ice Cream',150,4.3,4.1,255,14,28.3,1250),('Chocolate Tub',94,'Ice Cream',250,4.3,4.1,255,14,28.3,2000),('Vanilla Royale',95,'Ice Cream',140,3.8,3.7,219,13,21.8,1250),('Vanilla Royale',96,'Ice Cream',230,3.8,3.7,219,13,21.8,2000),('Choco Chip Tub',97,'Ice Cream',200,4.4,4.1,255,14,28.3,1250),('Choco Chip Tub',98,'Ice Cream',300,4.4,4.1,255,14,28.3,2000),('Milk Powder',99,'Milk',26,4,3,71.3,4.5,4.7,50),('Milk Powder',100,'Milk',365,4,3,71.3,4.5,4.7,1000);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-10 17:19:12
