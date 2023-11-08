-- MySQL dump 10.13  Distrib 8.0.32, for macos13 (x86_64)
--
-- Host: localhost    Database: creative_books
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `architecturebooks`
--

DROP TABLE IF EXISTS `architecturebooks`;
/*!50001 DROP VIEW IF EXISTS `architecturebooks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `architecturebooks` AS SELECT 
 1 AS `title`,
 1 AS `author_id`,
 1 AS `creativity_id`,
 1 AS `author_name`,
 1 AS `creativity_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT NULL,
  `book_id` int NOT NULL,
  `event` varchar(1000) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_log`
--

LOCK TABLES `audit_log` WRITE;
/*!40000 ALTER TABLE `audit_log` DISABLE KEYS */;
INSERT INTO `audit_log` VALUES (1,'2023-11-06 12:53:20',38,'New Book Added'),(2,'2023-11-07 10:38:29',39,'New Book Added'),(3,'2023-11-07 12:49:27',40,'New Book Added');
/*!40000 ALTER TABLE `audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `author_id` int unsigned NOT NULL,
  `author_name` varchar(100) NOT NULL,
  PRIMARY KEY (`author_id`),
  UNIQUE KEY `author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Jeanette Winter'),(2,'Maria Isabel Sanchez Vegara'),(3,'Jamia Wilson '),(4,'David Stabler'),(5,'Antoinette Portis'),(6,'Emma Lewis'),(7,'Fausto Gilberti'),(8,'Julia Finley Mosca'),(9,'Peter H. Reynolds'),(10,'Andrea Beaty'),(11,'Carson Ellis'),(12,'Zoë Tucker'),(13,'Katherine Halligan'),(14,'Hervé Tullet'),(15,'Susie Hodge'),(16,'Michael Bird'),(17,'Jeanette Winter'),(18,'Maria Isabel Sanchez Vegara'),(19,'Jamia Wilson '),(20,'David Stabler'),(21,'Antoinette Portis'),(22,'Emma Lewis'),(23,'Fausto Gilberti'),(24,'Julia Finley Mosca'),(25,'Peter H. Reynolds'),(26,'Andrea Beaty'),(27,'Carson Ellis'),(28,'Zoë Tucker'),(29,'Katherine Halligan'),(30,'Hervé Tullet'),(31,'Susie Hodge'),(32,'Michael Bird');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `book_img` text NOT NULL,
  `author_id` int unsigned NOT NULL,
  `genre_id` int unsigned NOT NULL,
  `stars` int DEFAULT '0',
  PRIMARY KEY (`book_id`),
  UNIQUE KEY `book_id` (`book_id`),
  KEY `fk_author_id` (`author_id`),
  KEY `fk_genre_id` (`genre_id`),
  CONSTRAINT `fk_author_id` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`),
  CONSTRAINT `fk_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'The Watcher: Jane Goodall\'s Life with the Chimps','https://m.media-amazon.com/images/I/91Ls5BNa3gL._SY522_.jpg',1,5,4),(2,'Jane Goodall: 19 (Little People, Big Dreams)','https://m.media-amazon.com/images/I/619RfTV-A+L._SY522_.jpg',2,5,0),(3,'Zaha Hadid (31): Little People, Big Dreams','https://m.media-amazon.com/images/I/6155d2ud4nL._SY522_.jpg',2,5,0),(4,'The World Is Not a Rectangle: A Portrait of Architect Zaha Hadid','https://m.media-amazon.com/images/I/717OTyxKPNL._SY522_.jpg',1,5,0),(5,'Young, Gifted and Black: Meet 52 Black Heroes from Past and Present','https://m.media-amazon.com/images/I/717Zg56zlFL._SY522_.jpg',3,5,0),(6,'Kid Artists: True Tales of Childhood from Creative Legends','https://m.media-amazon.com/images/I/81msCuTxLzL._SY522_.jpg',4,5,0),(7,'Not a Box','https://m.media-amazon.com/images/I/41b1xW9GafL.jpg',5,3,0),(8,'The Museum of Me','https://m.media-amazon.com/images/I/A150rYSV-uL._SY522_.jpg',6,1,0),(9,'Yves Klein Painted Everything Blue and Wasn\'t Sorry','https://m.media-amazon.com/images/I/51OQLoffvpL._SY522_.jpg',7,5,0),(10,'Yayoi Kusama Covered Everything in Dots and Wasn\'t Sorry','https://m.media-amazon.com/images/I/61XOtx-1HAL._SY522_.jpg',7,5,0),(11,'The Girl Who Thought in Pictures: The Story of Dr. Temple Grandin','https://m.media-amazon.com/images/I/513gjIgdnrL._SX342_SY445_.jpg',8,5,0),(12,'The Girl With a Mind for Math: The Story of Raye Montague','https://m.media-amazon.com/images/I/81cEgGaCKhL._SY522_.jpg',8,5,2),(13,'The Dot','https://m.media-amazon.com/images/I/51Zh9h+uMAL.jpg',9,3,0),(14,'Ish','https://m.media-amazon.com/images/I/61Bi1lW6bjS._SY522_.jpg',9,3,0),(15,'Rosie Revere Engineer','https://m.media-amazon.com/images/I/51QOK8bgvzL._SX342_SY445_.jpg',10,1,0),(16,'Ada Twist Scientist','https://m.media-amazon.com/images/I/81KY970weQL._SY522_.jpg',10,1,0),(17,'Iggy Peck Architect','https://m.media-amazon.com/images/I/81GjveG-eML._SY522_.jpg',10,1,2),(18,'Aaron Slater Illustrator','https://m.media-amazon.com/images/I/919HOUhd3xL._SY522_.jpg',10,1,0),(19,'Frida Kahlo: 2 (Little People, Big Dreams','https://m.media-amazon.com/images/I/91V75PHzYPL._SY522_.jpg',2,5,0),(20,'Home','https://m.media-amazon.com/images/I/81KhJ0DRwWL._SY522_.jpg',11,1,0),(21,'Du Iz Tak?','https://m.media-amazon.com/images/I/91trAZosIbL._SY522_.jpg',11,3,0),(22,'Greta and the Giants: inspired by Greta Thunberg\'s stand to save the world','https://m.media-amazon.com/images/I/91qhOCkhDZL._SY522_.jpg',12,5,0),(23,'HerStory: 50 Women and Girls Who Shook the World (Stories That Shook Up the World)','https://m.media-amazon.com/images/I/81HX+ZBFLoL._SY522_.jpg',13,5,0),(24,'Press Here','https://m.media-amazon.com/images/I/61ayrfuGFvL._SY522_.jpg',14,3,0),(25,'Why is art full of naked people?: & other vital questions about art','https://m.media-amazon.com/images/I/71CUcbSVMAL._SY522_.jpg',15,3,0),(26,'Vincent\'s Starry Night and Other Stories: A Children\'s History of Art','https://m.media-amazon.com/images/I/71fy1h818SL._SY522_.jpg',16,4,0),(27,'Say Zoop!','https://m.media-amazon.com/images/I/91nvpQKCm6L._SY522_.jpg',14,3,0),(37,'Happy Birthday Madame Chapeau','https://m.media-amazon.com/images/I/A1T0cUL0HzL._SY522_.jpg',10,1,5),(38,'Little People, BIG DREAMS: Treasury: 50 Stories from Brilliant Dreamers','https://m.media-amazon.com/images/I/81k4fm5pvbL._SY522_.jpg',5,1,0),(39,'The Girl With a Mind for Math: The Story of Raye Montague ','https://m.media-amazon.com/images/I/81cEgGaCKhL._SY522_.jpg',8,5,0),(40,'The Doctor with an Eye for Eyes: The Story of Dr. Patricia Bath ','https://m.media-amazon.com/images/I/818BVizUS0L._SY522_.jpg',8,5,0);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `LogNewBook` AFTER INSERT ON `books` FOR EACH ROW BEGIN
    INSERT INTO audit_log (event, book_id, timestamp)
    VALUES ('New Book Added', NEW.book_id, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `bookstore_analysis`
--

DROP TABLE IF EXISTS `bookstore_analysis`;
/*!50001 DROP VIEW IF EXISTS `bookstore_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bookstore_analysis` AS SELECT 
 1 AS `book_title`,
 1 AS `author_name`,
 1 AS `genre_name`,
 1 AS `average_stars`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `creativity`
--

DROP TABLE IF EXISTS `creativity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creativity` (
  `creativity_id` int unsigned NOT NULL AUTO_INCREMENT,
  `creativity_name` varchar(200) NOT NULL,
  PRIMARY KEY (`creativity_id`),
  UNIQUE KEY `creativity_id` (`creativity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creativity`
--

LOCK TABLES `creativity` WRITE;
/*!40000 ALTER TABLE `creativity` DISABLE KEYS */;
INSERT INTO `creativity` VALUES (1,'Graphic design'),(2,'Nature art'),(3,'Female artist'),(4,'Drawing'),(5,'Curioisity'),(6,'Architecture'),(7,'Printing'),(8,'Illustration'),(9,'Textile art'),(10,'Abstract art'),(11,'Sculpture'),(12,'Painting');
/*!40000 ALTER TABLE `creativity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creativity__books`
--

DROP TABLE IF EXISTS `creativity__books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creativity__books` (
  `book_creativity_id` int unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int unsigned NOT NULL,
  `creativity_id` int unsigned NOT NULL,
  PRIMARY KEY (`book_creativity_id`),
  UNIQUE KEY `book_creativity_id` (`book_creativity_id`),
  KEY `fk_creativity_id` (`creativity_id`),
  CONSTRAINT `fk_creativity_id` FOREIGN KEY (`creativity_id`) REFERENCES `creativity` (`creativity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creativity__books`
--

LOCK TABLES `creativity__books` WRITE;
/*!40000 ALTER TABLE `creativity__books` DISABLE KEYS */;
INSERT INTO `creativity__books` VALUES (1,1,5),(2,2,5),(3,3,5),(4,3,6),(5,4,5),(6,4,6),(7,5,5),(8,6,5),(9,7,5),(10,8,5),(11,8,12),(12,9,5),(13,9,10),(14,9,11),(15,10,12),(16,11,5),(17,12,5),(18,13,5),(19,14,5),(20,15,5),(21,16,5),(22,17,5),(23,17,6),(24,18,5),(25,18,8),(26,19,5),(27,19,12),(28,20,6),(29,21,5),(30,22,5),(31,23,5),(32,24,5),(33,25,5),(34,25,12),(35,26,5),(36,26,12),(37,27,5),(38,28,5),(39,28,5),(40,28,5),(41,28,5),(42,28,5),(43,28,5),(44,28,5),(45,28,5),(46,28,5);
/*!40000 ALTER TABLE `creativity__books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `diversebooks`
--

DROP TABLE IF EXISTS `diversebooks`;
/*!50001 DROP VIEW IF EXISTS `diversebooks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `diversebooks` AS SELECT 
 1 AS `title`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `genre_id` int unsigned NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(200) NOT NULL,
  PRIMARY KEY (`genre_id`),
  UNIQUE KEY `genre_id` (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'adventure'),(2,'fantasy'),(3,'funny'),(4,'non-fiction'),(5,'biograohy');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inclusivity`
--

DROP TABLE IF EXISTS `inclusivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inclusivity` (
  `inclusivity_id` int unsigned NOT NULL AUTO_INCREMENT,
  `inclusivity_name` varchar(200) NOT NULL,
  PRIMARY KEY (`inclusivity_id`),
  UNIQUE KEY `inclusivity_id` (`inclusivity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inclusivity`
--

LOCK TABLES `inclusivity` WRITE;
/*!40000 ALTER TABLE `inclusivity` DISABLE KEYS */;
INSERT INTO `inclusivity` VALUES (1,'Black representation'),(2,'LGBTQIA+ representation'),(3,'Disabled representation'),(4,'Female lead'),(5,'Mixed heritage representation'),(6,'neoro diverse representation');
/*!40000 ALTER TABLE `inclusivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inclusivity__books`
--

DROP TABLE IF EXISTS `inclusivity__books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inclusivity__books` (
  `book_inclusitivity_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int unsigned NOT NULL,
  `inclusivity_id` int unsigned NOT NULL,
  PRIMARY KEY (`book_inclusitivity_id`),
  UNIQUE KEY `book_inclusitivity_id` (`book_inclusitivity_id`),
  KEY `fk_inclusivity_id` (`inclusivity_id`),
  CONSTRAINT `fk_inclusivity_id` FOREIGN KEY (`inclusivity_id`) REFERENCES `inclusivity` (`inclusivity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inclusivity__books`
--

LOCK TABLES `inclusivity__books` WRITE;
/*!40000 ALTER TABLE `inclusivity__books` DISABLE KEYS */;
INSERT INTO `inclusivity__books` VALUES (1,1,4),(2,2,4),(3,3,4),(4,3,1),(5,4,5),(6,4,1),(7,5,1),(8,6,3),(9,10,4),(10,11,4),(11,11,6),(12,12,4),(13,12,6),(14,15,4),(15,16,4),(16,19,4),(17,22,6),(18,23,4),(19,28,4),(20,28,4),(21,28,4),(22,28,4),(23,28,4),(24,28,4),(25,28,4);
/*!40000 ALTER TABLE `inclusivity__books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `architecturebooks`
--

/*!50001 DROP VIEW IF EXISTS `architecturebooks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `architecturebooks` AS select `b`.`title` AS `title`,`b`.`author_id` AS `author_id`,`c`.`creativity_id` AS `creativity_id`,`a`.`author_name` AS `author_name`,`cr`.`creativity_name` AS `creativity_name` from (((`books` `b` join `creativity__books` `c` on((`c`.`book_id` = `b`.`book_id`))) join `authors` `a` on((`a`.`author_id` = `b`.`author_id`))) join `creativity` `cr` on((`cr`.`creativity_id` = `c`.`creativity_id`))) where (`c`.`creativity_id` = 6) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bookstore_analysis`
--

/*!50001 DROP VIEW IF EXISTS `bookstore_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bookstore_analysis` AS select `b`.`title` AS `book_title`,`a`.`author_name` AS `author_name`,`g`.`genre_name` AS `genre_name`,avg(`b`.`stars`) AS `average_stars` from ((`books` `b` join `authors` `a` on((`b`.`author_id` = `a`.`author_id`))) join `genres` `g` on((`b`.`genre_id` = `g`.`genre_id`))) group by `b`.`title`,`a`.`author_name`,`g`.`genre_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `diversebooks`
--

/*!50001 DROP VIEW IF EXISTS `diversebooks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `diversebooks` AS select `b`.`title` AS `title` from (`books` `b` join `inclusivity__books` `i` on((`i`.`book_id` = `b`.`book_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07 13:10:04
