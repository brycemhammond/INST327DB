-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: team_09_restaurants_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Available_Features`
--

DROP TABLE IF EXISTS `Available_Features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Available_Features` (
  `restaurants_id` int(10) unsigned NOT NULL,
  `feature_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`restaurants_id`,`feature_id`),
  KEY `fk_Restaurants_has_Features_Features1_idx` (`feature_id`),
  KEY `fk_Restaurants_has_Features_Restaurants_idx` (`restaurants_id`),
  CONSTRAINT `fk_Restaurants_has_Features_Features1` FOREIGN KEY (`feature_id`) REFERENCES `Features` (`feature_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Restaurants_has_Features_Restaurants` FOREIGN KEY (`restaurants_id`) REFERENCES `Restaurants` (`restaurants_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Available_Features`
--

LOCK TABLES `Available_Features` WRITE;
/*!40000 ALTER TABLE `Available_Features` DISABLE KEYS */;
INSERT INTO `Available_Features` VALUES (1,1),(1,2),(1,3),(1,4),(2,1),(2,2),(2,3),(2,4),(3,1),(3,2),(3,3),(3,4),(4,1),(4,3),(4,4),(5,1),(5,2),(5,3),(5,4),(6,1),(6,2),(6,3),(6,4),(7,1),(7,2),(7,3),(7,4),(8,1),(8,3),(8,4),(9,1),(9,2),(9,3),(9,4),(10,2),(10,3),(10,4),(11,1),(11,2),(11,3),(11,4),(12,2),(12,3),(12,4),(13,2),(13,3),(13,4),(14,1),(14,2),(14,3),(14,4),(15,2),(15,3),(15,4);
/*!40000 ALTER TABLE `Available_Features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cuisines`
--

DROP TABLE IF EXISTS `Cuisines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cuisines` (
  `cuisine_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cuisine_name` varchar(45) NOT NULL,
  PRIMARY KEY (`cuisine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cuisines`
--

LOCK TABLES `Cuisines` WRITE;
/*!40000 ALTER TABLE `Cuisines` DISABLE KEYS */;
INSERT INTO `Cuisines` VALUES (1,'Italian'),(2,'Chinese'),(3,'Indian'),(4,'Thai'),(5,'American'),(6,'Mexican'),(7,'Mediteranean'),(8,'Jamaican'),(9,'Fast Food'),(10,'Vegetarian'),(11,'Gluten Free'),(12,'Vegan'),(13,'Kosher'),(14,'Japanese'),(15,'Caribbean ');
/*!40000 ALTER TABLE `Cuisines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Diet_Cuisines`
--

DROP TABLE IF EXISTS `Diet_Cuisines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Diet_Cuisines` (
  `Diet_Cuisines_id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurants_id` int(10) unsigned NOT NULL,
  `cuisine_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Diet_Cuisines_id`),
  KEY `fk_Restaurants_has_Cuisines_Cuisines1_idx` (`cuisine_id`),
  KEY `fk_Restaurants_has_Cuisines_Restaurants1_idx` (`restaurants_id`),
  CONSTRAINT `fk_Restaurants_has_Cuisines_Cuisines1` FOREIGN KEY (`cuisine_id`) REFERENCES `Cuisines` (`cuisine_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Restaurants_has_Cuisines_Restaurants1` FOREIGN KEY (`restaurants_id`) REFERENCES `Restaurants` (`restaurants_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Diet_Cuisines`
--

LOCK TABLES `Diet_Cuisines` WRITE;
/*!40000 ALTER TABLE `Diet_Cuisines` DISABLE KEYS */;
INSERT INTO `Diet_Cuisines` VALUES (2,1,10),(3,2,5),(4,2,11),(5,3,5),(6,4,5),(7,4,1),(8,5,14),(9,5,10),(10,5,12),(11,6,5),(12,6,10),(13,7,8),(14,7,9),(15,8,7),(16,8,3),(17,8,15),(18,9,1),(19,9,5),(20,9,11),(21,10,1),(22,10,10),(23,11,5),(24,11,12),(25,12,2),(26,12,13),(27,13,2),(28,13,10),(29,14,2),(30,14,11),(31,15,5),(32,15,9),(33,1,4);
/*!40000 ALTER TABLE `Diet_Cuisines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Features`
--

DROP TABLE IF EXISTS `Features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Features` (
  `feature_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(45) NOT NULL,
  PRIMARY KEY (`feature_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Features`
--

LOCK TABLES `Features` WRITE;
/*!40000 ALTER TABLE `Features` DISABLE KEYS */;
INSERT INTO `Features` VALUES (1,'parking'),(2,'bathroom access'),(3,'delivery'),(4,'take out');
/*!40000 ALTER TABLE `Features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Food_Items`
--

DROP TABLE IF EXISTS `Food_Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Food_Items` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(45) DEFAULT NULL,
  `food_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `fk_Food_Items_Type_of_Food1_idx` (`food_type_id`),
  CONSTRAINT `fk_Food_Items_Type_of_Food1` FOREIGN KEY (`food_type_id`) REFERENCES `Type_of_Food` (`food_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Food_Items`
--

LOCK TABLES `Food_Items` WRITE;
/*!40000 ALTER TABLE `Food_Items` DISABLE KEYS */;
INSERT INTO `Food_Items` VALUES (1,'Chicken',2),(2,'Soups',2),(3,'Salads',2),(4,'Vegetables',2),(5,'Noodles',3),(6,'Fried Rice',3),(7,'Curries',3),(8,'Burgers',2),(9,'Fries',2),(10,'Wraps',2),(11,'Fish',3),(12,'Wings',3),(13,'Calzones',2),(14,'Bread Sticks',3),(15,'Sushi',3),(16,'Sandwiches',2),(17,'Pasta',3),(18,'Naan',2),(19,'Pizza',3),(20,'Subs',2),(21,'Tofu',2),(22,'Pho',2),(23,'Rolls (Summer/Spring/Egg)',3),(24,'Rice',2),(25,'Pork',3),(26,'Beef',3),(27,'Seafood',3),(28,'Egg',1);
/*!40000 ALTER TABLE `Food_Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Menu_Items`
--

DROP TABLE IF EXISTS `Menu_Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Menu_Items` (
  `menu_items_id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurants_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `item_price` decimal(5,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`menu_items_id`),
  KEY `fk_Type_of_Food_has_Restaurants_Restaurants1_idx` (`restaurants_id`),
  KEY `fk_joint_type_food_Items1_idx` (`item_id`),
  CONSTRAINT `fk_Type_of_Food_has_Restaurants_Restaurants1` FOREIGN KEY (`restaurants_id`) REFERENCES `Restaurants` (`restaurants_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_joint_type_food_Items1` FOREIGN KEY (`item_id`) REFERENCES `Food_Items` (`item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Menu_Items`
--

LOCK TABLES `Menu_Items` WRITE;
/*!40000 ALTER TABLE `Menu_Items` DISABLE KEYS */;
INSERT INTO `Menu_Items` VALUES (1,1,5,6.99),(2,1,6,5.99),(3,1,22,7.99),(4,1,23,3.50),(5,1,24,1.50),(6,2,3,8.99),(7,2,8,9.99),(8,2,9,4.50),(9,3,1,6.99),(10,3,8,9.99),(11,3,9,4.50),(12,3,12,15.99),(13,4,13,7.99),(14,4,12,15.99),(15,4,9,4.50),(16,5,6,5.99),(17,5,24,1.50),(18,5,15,35.99),(19,6,2,6.99),(20,6,3,8.99),(21,6,16,5.99),(22,6,20,7.99),(23,7,1,6.99),(24,7,25,6.99),(25,7,26,8.99),(26,7,24,1.50),(27,8,1,6.99),(28,8,10,5.99),(29,8,18,5.99),(30,8,26,8.99),(31,9,13,7.99),(32,9,19,20.99),(33,9,9,4.50),(34,9,3,8.99),(35,10,19,20.99),(36,10,13,7.99),(37,10,20,8.99),(38,10,17,7.99),(39,11,2,6.99),(40,11,3,8.99),(41,11,4,4.99),(42,12,22,7.99),(43,13,22,7.99),(44,14,27,15.99),(45,14,24,1.50),(46,14,26,8.99),(47,14,1,6.99),(48,15,19,20.99),(49,15,13,7.99);
/*!40000 ALTER TABLE `Menu_Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rating_Sources`
--

DROP TABLE IF EXISTS `Rating_Sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rating_Sources` (
  `source_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source_name` varchar(45) NOT NULL,
  PRIMARY KEY (`source_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rating_Sources`
--

LOCK TABLES `Rating_Sources` WRITE;
/*!40000 ALTER TABLE `Rating_Sources` DISABLE KEYS */;
INSERT INTO `Rating_Sources` VALUES (1,'Google'),(2,'Yelp'),(3,'TripAdvisor'),(4,'GrubHub'),(5,'Average');
/*!40000 ALTER TABLE `Rating_Sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ratings`
--

DROP TABLE IF EXISTS `Ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ratings` (
  `restaurantrating_id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(10) unsigned NOT NULL,
  `restaurants_id` int(10) unsigned NOT NULL,
  `rating_score` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`restaurantrating_id`),
  KEY `fk_Ratings_has_Restaurants_Restaurants1_idx` (`restaurants_id`),
  KEY `fk_Ratings_has_Restaurants_Ratings1_idx` (`source_id`),
  CONSTRAINT `fk_Ratings_has_Restaurants_Ratings1` FOREIGN KEY (`source_id`) REFERENCES `Rating_Sources` (`source_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ratings_has_Restaurants_Restaurants1` FOREIGN KEY (`restaurants_id`) REFERENCES `Restaurants` (`restaurants_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ratings`
--

LOCK TABLES `Ratings` WRITE;
/*!40000 ALTER TABLE `Ratings` DISABLE KEYS */;
INSERT INTO `Ratings` VALUES (1,1,1,4),(2,2,1,4),(3,3,1,4),(4,4,1,4),(5,5,1,4),(6,1,2,4),(7,2,2,3),(8,3,2,4),(9,4,2,0),(10,5,2,3),(11,1,3,5),(12,2,3,3),(13,3,3,4),(14,4,3,4),(15,5,3,4),(16,1,4,4),(17,2,4,4),(18,3,4,4),(19,4,4,5),(20,5,4,4),(21,1,5,4),(22,2,5,4),(23,3,5,4),(24,4,5,5),(25,5,5,4),(26,1,6,4),(27,2,6,4),(28,3,6,4),(29,4,6,0),(30,5,6,4),(31,1,7,4),(32,2,7,3),(33,3,7,4),(34,4,7,4),(35,5,7,4),(36,1,8,4),(37,2,8,4),(38,3,8,5),(39,4,8,5),(40,5,8,4),(41,1,9,4),(42,2,9,4),(43,3,9,4),(44,4,9,0),(45,5,9,4),(46,1,10,4),(47,2,10,3),(48,3,10,4),(49,4,10,4),(50,5,10,4),(51,1,11,4),(52,2,11,4),(53,3,11,5),(54,4,11,4),(55,5,11,4),(56,1,12,4),(57,2,12,4),(58,3,12,4),(59,4,12,0),(60,5,12,4),(61,1,13,4),(62,2,13,4),(63,3,13,5),(64,4,13,0),(65,5,13,4),(66,1,14,4),(67,2,14,4),(68,3,14,4),(69,4,14,5),(70,5,14,4),(71,1,15,4),(72,2,15,4),(73,3,15,5),(74,4,15,4),(75,5,15,4);
/*!40000 ALTER TABLE `Ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Restaurants`
--

DROP TABLE IF EXISTS `Restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Restaurants` (
  `restaurants_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(45) NOT NULL,
  `restaurant_street_address` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `restaurant_website` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `ZIP` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`restaurants_id`),
  UNIQUE KEY `restaurants_id_UNIQUE` (`restaurants_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Restaurants`
--

LOCK TABLES `Restaurants` WRITE;
/*!40000 ALTER TABLE `Restaurants` DISABLE KEYS */;
INSERT INTO `Restaurants` VALUES (1,'Array Thai','4511 College Ave','301-864-5550','http://www.arraythaicollegepark.com','College Park','MD','20740'),(2,'Bobby\'s Burger Palace','8150 Baltimore Ave','240-542-4702','http://bobbysburgerpalace.com','College Park','MD','20740'),(3,'Clucksters','7415 Baltimore Ave','301-864-0852','cluckuchicken.com','College Park','MD','20740'),(4,'D.P. Dough','8145 Balitmore Ave','301-614-9663','dpdough.com','College Park','MD','20740'),(5,'Hanami Japanese','8006 Balitmore Ave','301-982-9899','http://www.hanamijapanses.com','College Park','MD','20740'),(6,'Jason\'s Deli','7356 Baltimore Ave','301-779-3924','jasonsdeli.com','College Park','MD','20740'),(7,'The Jerk Pit','9078 Baltimore Ave','301-864-5150','myjerkpit.com','College Park','MD','20740'),(8,'Krazi Kebob','4427 Lehigh Road','301-864-5150','krazikebob.com','College Park','MD','20740'),(9,'Ledos Restaurant','4509 Knox Road','301-442-8122','http://www.ledorestaurant.com','College Park','MD','20740'),(10,'Mamma Lucia','4734 Cherry Hill Rd','301-513-0605','mammaluciapizzaandpasta.com','College Park','MD','20740'),(11,'NuVegan Café',' 8150 Baltimore Ave','240-553-7567','places.singleplatform.com','College Park','MD','20740'),(12,'Pho D\'Lite',' 8147 Baltimore Ave','301-982-5599','http://phodlite.com','College Park','MD','20740'),(13,'Pho Thom','7313 Baltimore Ave','240-582-7530','http://www.phothommd.com','College Park','MD','20740'),(14,'Shanhai Café','7409 Baltimore Ave','301-985-6202','shanhaicafemd.com','College Park','MD','20740'),(15,'Slices Pizza Co.','7313 Baltimore Ave','240-582-5207','slicespizzamd.com','College Park','MD','20740');
/*!40000 ALTER TABLE `Restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Type_of_Food`
--

DROP TABLE IF EXISTS `Type_of_Food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Type_of_Food` (
  `food_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `food_type_name` varchar(45) NOT NULL,
  PRIMARY KEY (`food_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Type_of_Food`
--

LOCK TABLES `Type_of_Food` WRITE;
/*!40000 ALTER TABLE `Type_of_Food` DISABLE KEYS */;
INSERT INTO `Type_of_Food` VALUES (1,'Food_type_ID'),(2,'1'),(3,'2'),(4,'3');
/*!40000 ALTER TABLE `Type_of_Food` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-12 14:57:38
