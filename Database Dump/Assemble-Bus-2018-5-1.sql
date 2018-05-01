-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: assemblebus
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `addressId` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(40) DEFAULT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`addressId`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'1906 Ac St.','Frankfort','Kentucky','USA'),(2,'5173 Fermentum St.','Saint Paul','Minnesota','USA'),(3,'4584 Eu Av.','Columbus','Georgia','USA'),(4,'986 Et, Rd.','Rutland','Vermont','USA'),(5,'912-6898 Sodales Street','Chicago','Illinois','USA'),(6,'2664 Ullamcorper Rd.','Detroit','Michigan','USA'),(7,'P.O. Box 750, 8386 Sit Ave','Reading','Pennsylvania','USA'),(8,'Ap #208-3325 Tellus, Ave','Richmond','Virginia','USA'),(9,'P.O. Box 906, 521 Nascetur Rd.','Shreveport','Louisiana','USA'),(10,'P.O. Box 599, 5363 Ullamcorper St.','Kenosha','Wisconsin','USA'),(11,'826-1517 Fermentum Avenue','Overland Park','Kansas','USA'),(12,'1993 Convallis Avenue','Kailua','Hawaii','USA'),(13,'563 In St.','Wilmington','Delaware','USA'),(14,'Ap #296-7515 Metus Rd.','Knoxville','Tennessee','USA'),(15,'318-9494 Sit Ave','Jefferson City','Missouri','USA'),(16,'P.O. Box 417, 8836 Rhoncus Rd.','Racine','Wisconsin','USA'),(17,'P.O. Box 295, 7355 Nec Rd.','Kapolei','Hawaii','USA'),(18,'Ap #925-403 Integer St.','Vancouver','Washington','USA'),(19,'4974 Semper. Street','Milwaukee','Wisconsin','USA'),(20,'738-9521 Quisque Rd.','Portland','Oregon','USA'),(21,'P.O. Box 737, 3198 Sed Rd.','Chandler','Arizona','USA'),(22,'Ap #329-2981 Risus. Ave','Houston','Texas','USA'),(23,'Ap #773-8962 Velit. Avenue','Cedar Rapids','Iowa','USA'),(24,'Ap #351-6257 Mi, Av.','Akron','Ohio','USA'),(25,'P.O. Box 670, 1075 Lectus Rd.','Olathe','Kansas','USA'),(26,'216-443 Arcu St.','Reading','Pennsylvania','USA'),(27,'Ap #977-671 Ac Street','Phoenix','Arizona','USA'),(28,'Ap #357-1838 Placerat. Rd.','Tacoma','Washington','USA'),(29,'5279 Cursus Av.','Sacramento','California','USA'),(30,'Ap #463-8651 Nec St.','Chandler','Arizona','USA'),(31,'698-4841 Enim Street','Springfield','Massachusetts','USA'),(32,'622-6281 Parturient Ave','Baton Rouge','Louisiana','USA'),(33,'852-2667 Dui, Road','Gulfport','Mississippi','USA'),(34,'695-6392 Ante Ave','West Jordan','Utah','USA'),(35,'P.O. Box 206, 4122 Faucibus St.','Annapolis','Maryland','USA'),(36,'483-1814 Nec St.','Memphis','Tennessee','USA'),(37,'8395 Tempor, Avenue','Grand Rapids','Michigan','USA'),(38,'385-2297 Nunc Av.','Sioux City','Iowa','USA'),(39,'297-1561 Luctus Street','Henderson','Nevada','USA'),(40,'Ap #514-663 Odio Rd.','Columbus','Georgia','USA'),(41,'471-3608 Tellus Av.','Little Rock','Arkansas','USA'),(42,'492-9474 Gravida St.','Minneapolis','Minnesota','USA'),(43,'P.O. Box 440, 8416 Pede. Ave','Kenosha','Wisconsin','USA'),(44,'2356 Velit Av.','Athens','Georgia','USA'),(45,'878 Sit Street','Frederick','Maryland','USA'),(46,'5312 Iaculis St.','Tulsa','Oklahoma','USA'),(47,'P.O. Box 962, 8871 Turpis. Avenue','Miami','Florida','USA'),(48,'Ap #216-4775 Tellus Av.','Jefferson City','Missouri','USA'),(49,'269 Dignissim Road','Stamford','Connecticut','USA'),(50,'360-5861 Nonummy Rd.','Louisville','Kentucky','USA'),(51,'P.O. Box 543, 6393 Dictum Rd.','Portland','Maine','USA'),(52,'496-3219 Aliquam Rd.','Henderson','Nevada','USA'),(53,'950-5378 Inceptos Rd.','Billings','Montana','USA'),(54,'Ap #470-2970 Enim. St.','Anchorage','Alaska','USA'),(55,'557 Faucibus Street','Milwaukee','Wisconsin','USA'),(56,'383 Purus St.','Columbia','Maryland','USA'),(57,'Ap #724-9866 Dolor Street','Overland Park','Kansas','USA'),(58,'347-345 Ut Rd.','Baton Rouge','Louisiana','USA'),(59,'P.O. Box 301, 2539 At, Avenue','Anchorage','Alaska','USA'),(60,'Ap #744-9146 Dictum Road','Gary','Indiana','USA'),(61,'135 Orci Av.','Grand Rapids','Michigan','USA'),(62,'8332 Magna. Rd.','Frederick','Maryland','USA'),(63,'547-8459 Sed Avenue','Butte','Montana','USA'),(64,'P.O. Box 362, 6937 Scelerisque Street','Colorado Springs','Colorado','USA'),(65,'Ap #797-2041 Dolor Street','Stamford','Connecticut','USA'),(66,'P.O. Box 809, 800 Nec, Road','Gillette','Wyoming','USA'),(67,'P.O. Box 268, 4761 Egestas. Av.','Laramie','Wyoming','USA'),(68,'4758 Varius Av.','Cincinnati','Ohio','USA'),(69,'367-5132 Erat Street','Glendale','Arizona','USA'),(70,'9876 Fusce Av.','Akron','Ohio','USA'),(71,'352-7220 Enim. Ave','Norfolk','Virginia','USA'),(72,'222-4836 Natoque Street','Duluth','Minnesota','USA'),(73,'Ap #798-3203 Nulla Rd.','Mesa','Arizona','USA'),(74,'Ap #113-9177 Ante. Rd.','Chandler','Arizona','USA'),(75,'P.O. Box 548, 2094 Sem. Ave','Lakewood','Colorado','USA'),(76,'744-8340 Lacinia Avenue','Annapolis','Maryland','USA'),(77,'P.O. Box 205, 8042 Eros. Avenue','Milwaukee','Wisconsin','USA'),(78,'P.O. Box 187, 6018 Malesuada St.','Missoula','Montana','USA'),(79,'P.O. Box 641, 161 Integer Avenue','Georgia','Georgia','USA'),(80,'P.O. Box 195, 6519 Pede Rd.','Birmingham','Alabama','USA'),(81,'528-1265 Pede. Road','St. Petersburg','Florida','USA'),(82,'868-9546 Lectus Rd.','Stamford','Connecticut','USA'),(83,'Ap #850-721 Eget St.','Bowling Green','Kentucky','USA'),(84,'508-1792 Sit St.','Carson City','Nevada','USA'),(85,'Ap #362-2149 A, Street','Colchester','Vermont','USA'),(86,'P.O. Box 417, 4526 Dapibus Road','Paradise','Nevada','USA'),(87,'P.O. Box 710, 9178 Sagittis Street','Columbia','Missouri','USA'),(88,'4220 Magna Av.','Sioux City','Iowa','USA'),(89,'Ap #777-9473 Consequat St.','Boston','Massachusetts','USA'),(90,'8772 Ac Rd.','Pocatello','Idaho','USA'),(91,'Ap #219-5831 Lacinia St.','Pocatello','Idaho','USA'),(92,'174-3328 Ultrices. St.','Detroit','Michigan','USA'),(93,'P.O. Box 354, 314 Nunc Ave','Frederick','Maryland','USA'),(94,'728-7857 Dolor Avenue','Sterling Heights','Michigan','USA'),(95,'P.O. Box 766, 2750 Diam Avenue','Oklahoma City','Oklahoma','USA'),(96,'296-691 At, Rd.','Little Rock','Arkansas','USA'),(97,'Ap #977-6654 Viverra. Street','Burlington','Vermont','USA'),(98,'Ap #352-6390 Luctus Street','Overland Park','Kansas','USA'),(99,'4353 Non, Avenue','Harrisburg','Pennsylvania','USA'),(100,'3560 Nulla Ave','Jonesboro','Arkansas','USA'),(101,'P.O. Box 919, 3515 Gravida. Ave','Overland Park','Kansas','USA'),(102,'P.O. Box 407, 6642 Nibh Street','Wilmington','Delaware','USA'),(103,'Ap #961-3659 Lorem, Ave','Newport News','Virginia','USA'),(104,'Ap #179-9159 Duis Avenue','Richmond','Virginia','USA'),(105,'Ap #200-4949 Eu Rd.','Green Bay','Wisconsin','USA'),(106,'396 Ac, Ave','Denver','Colorado','USA'),(107,'Ap #863-4046 Lacus. Road','Allentown','Pennsylvania','USA'),(108,'8106 Semper Av.','Kenosha','Wisconsin','USA'),(109,'537-2233 Aliquet Street','Bangor','Maine','USA'),(110,'Ap #343-5397 Non Rd.','Covington','Kentucky','USA'),(111,'P.O. Box 569, 1275 Sapien, Street','Atlanta','Georgia','USA'),(112,'390-1169 Et, Rd.','Gillette','Wyoming','USA'),(113,'P.O. Box 576, 2202 Tortor St.','Nampa','Idaho','USA'),(114,'P.O. Box 310, 943 Nulla Rd.','Memphis','Tennessee','USA'),(115,'Ap #904-604 Lacinia Rd.','Owensboro','Kentucky','USA'),(116,'P.O. Box 358, 9294 Euismod Avenue','Minneapolis','Minnesota','USA'),(117,'781-1103 Nullam St.','Colchester','Vermont','USA'),(118,'P.O. Box 770, 6696 Adipiscing Avenue','Fort Worth','Texas','USA'),(119,'2561 Vitae, Ave','Frankfort','Kentucky','USA'),(120,'265-4262 Tempor Avenue','Pittsburgh','Pennsylvania','USA'),(121,'725-5935 Placerat, Ave','Aurora','Illinois','USA'),(122,'Ap #292-1750 Et Av.','Kansas City','Missouri','USA'),(123,'3174 Pede. St.','College','Alaska','USA'),(124,'757-1579 Neque. St.','Kansas City','Missouri','USA'),(125,'102 Duis St.','Springdale','Arkansas','USA'),(126,'P.O. Box 489, 1600 Non Road','Olathe','Kansas','USA'),(127,'8427 Elit. St.','Pittsburgh','Pennsylvania','USA'),(128,'P.O. Box 468, 7948 Amet, Ave','Erie','Pennsylvania','USA'),(129,'6809 Sem, St.','Helena','Montana','USA'),(130,'Ap #311-3487 Et, Rd.','Phoenix','Arizona','USA'),(131,'Ap #335-3281 Lobortis Rd.','Essex','Vermont','USA'),(132,'219-1371 Non St.','Glendale','Arizona','USA'),(133,'Ap #543-7309 Pede Avenue','Jackson','Mississippi','USA'),(134,'Ap #456-7944 Nonummy Avenue','Des Moines','Iowa','USA'),(135,'Ap #288-4644 Condimentum. St.','Independence','Missouri','USA'),(136,'3369 Non, Av.','Bellevue','Nebraska','USA'),(137,'985-1930 A, Ave','Seattle','Washington','USA'),(138,'1967 Non Road','Lansing','Michigan','USA'),(139,'274-6101 Risus St.','Meridian','Idaho','USA'),(140,'150-6155 Et Street','Chicago','Illinois','USA'),(141,'344-7874 Quis Avenue','West Jordan','Utah','USA'),(142,'5864 Tempus Rd.','Auburn','Maine','USA'),(143,'3948 Augue, Avenue','Covington','Kentucky','USA'),(144,'Ap #384-584 Vivamus Ave','Duluth','Minnesota','USA'),(145,'Ap #425-607 Duis Rd.','Pike Creek','Delaware','USA'),(146,'P.O. Box 765, 5201 Enim. Av.','Paradise','Nevada','USA'),(147,'5290 Cras Street','Naperville','Illinois','USA'),(148,'5401 Nunc Road','Iowa City','Iowa','USA'),(149,'P.O. Box 812, 2114 Nam St.','Georgia','Georgia','USA'),(150,'740 Interdum Street','Baton Rouge','Louisiana','USA'),(151,'Ap #603-7104 Mauris Av.','Frederick','Maryland','USA'),(152,'922-4204 Arcu Ave','Topeka','Kansas','USA'),(153,'6012 Mauris, Avenue','Richmond','Virginia','USA'),(154,'7218 Erat Rd.','Burlington','Vermont','USA'),(155,'P.O. Box 899, 9036 Vel St.','Racine','Wisconsin','USA'),(156,'Ap #242-5410 Eleifend Road','Springfield','Illinois','USA'),(157,'7837 Eleifend Ave','Cincinnati','Ohio','USA'),(158,'766 Iaculis St.','Olympia','Washington','USA'),(159,'165-3407 Scelerisque St.','Chattanooga','Tennessee','USA'),(160,'Ap #666-1513 Sit Avenue','Salt Lake City','Utah','USA'),(161,'P.O. Box 123, 1730 Consectetuer Rd.','Baltimore','Maryland','USA'),(162,'Ap #632-9739 Magna St.','Clarksville','Tennessee','USA'),(163,'P.O. Box 890, 2389 Nibh. St.','Tuscaloosa','Alabama','USA'),(164,'122 In Rd.','New Haven','Connecticut','USA'),(165,'Ap #961-3058 Ultricies Rd.','Annapolis','Maryland','USA'),(166,'262-7907 Eu St.','Casper','Wyoming','USA'),(167,'164-1505 Et Avenue','Fayetteville','Arkansas','USA'),(168,'406-4192 Pharetra Avenue','Dover','Delaware','USA'),(169,'Ap #293-9476 Phasellus Av.','Kearney','Nebraska','USA'),(170,'Ap #985-9931 Aliquam St.','Tallahassee','Florida','USA'),(171,'523-236 Sem St.','Huntsville','Alabama','USA'),(172,'702-477 Eu, St.','Olympia','Washington','USA'),(173,'364-180 Eu, Road','Saint Paul','Minnesota','USA'),(174,'3429 Mauris Ave','Saint Paul','Minnesota','USA'),(175,'478-9718 Morbi Rd.','Indianapolis','Indiana','USA'),(176,'6963 Facilisis, St.','Joliet','Illinois','USA'),(177,'P.O. Box 351, 8807 Ullamcorper, Rd.','Pike Creek','Delaware','USA'),(178,'Ap #700-7589 Lacinia Av.','Frankfort','Kentucky','USA'),(179,'9616 Varius St.','Kailua','Hawaii','USA'),(180,'1175 Luctus Rd.','Kaneohe','Hawaii','USA'),(181,'5915 Vestibulum St.','Springfield','Illinois','USA'),(182,'Ap #403-2242 Bibendum Avenue','Little Rock','Arkansas','USA'),(183,'917-2485 Ligula. Avenue','Fort Wayne','Indiana','USA'),(184,'219-3942 Phasellus Av.','Broken Arrow','Oklahoma','USA'),(185,'P.O. Box 745, 149 Volutpat Street','Reno','Nevada','USA'),(186,'666-8551 Tellus St.','Gresham','Oregon','USA'),(187,'Ap #197-3498 Semper, St.','Topeka','Kansas','USA'),(188,'P.O. Box 624, 4708 Sodales Ave','Olympia','Washington','USA'),(189,'4591 Massa. Road','West Jordan','Utah','USA'),(190,'7548 Neque. Av.','Milwaukee','Wisconsin','USA'),(191,'P.O. Box 916, 6148 Egestas. Ave','Fort Wayne','Indiana','USA'),(192,'4046 Scelerisque Ave','Lowell','Massachusetts','USA'),(193,'167-7681 Nam Rd.','Henderson','Nevada','USA'),(194,'P.O. Box 536, 5156 Nulla St.','Kenosha','Wisconsin','USA'),(195,'886-2305 Amet Rd.','Nashville','Tennessee','USA'),(196,'740-4065 Urna. Av.','Madison','Wisconsin','USA'),(197,'958-502 Proin Avenue','Lexington','Kentucky','USA'),(198,'5052 Orci, Street','South Bend','Indiana','USA'),(199,'992-5270 Quis Av.','Salt Lake City','Utah','USA'),(200,'2179 Nibh Rd.','Dallas','Texas','USA'),(201,'Ap #376-6860 Et Avenue','Denver','Colorado','USA'),(202,'P.O. Box 473, 6301 Aliquam St.','Casper','Wyoming','USA'),(203,'707-8677 Vitae Rd.','Austin','Texas','USA'),(204,'P.O. Box 832, 6705 Molestie St.','Joliet','Illinois','USA'),(205,'759-6215 Leo Avenue','San Jose','California','USA'),(206,'908-9612 Augue Rd.','Saint Louis','Missouri','USA'),(207,'194-4900 Lectus Rd.','Frankfort','Kentucky','USA'),(208,'818-6967 Curae; St.','St. Petersburg','Florida','USA'),(209,'P.O. Box 710, 7133 Nunc. St.','Des Moines','Iowa','USA'),(210,'Ap #249-6353 Et Street','Seattle','Washington','USA'),(211,'P.O. Box 165, 5254 Fringilla St.','Harrisburg','Pennsylvania','USA'),(212,'9280 Magna Road','Springdale','Arkansas','USA'),(213,'P.O. Box 936, 4966 Aliquam Rd.','Cheyenne','Wyoming','USA'),(214,'P.O. Box 334, 3798 Ut Rd.','Georgia','Georgia','USA'),(215,'Ap #219-7803 Mi. Street','Akron','Ohio','USA'),(216,'5930 Suspendisse Ave','Jacksonville','Florida','USA'),(217,'1434 Donec Ave','Sterling Heights','Michigan','USA'),(218,'8695 Donec Rd.','Shreveport','Louisiana','USA'),(219,'Ap #374-6309 Consectetuer Avenue','Essex','Vermont','USA'),(220,'939 Etiam St.','Salt Lake City','Utah','USA'),(221,'654-1152 Pellentesque Ave','Fort Smith','Arkansas','USA'),(222,'P.O. Box 756, 3204 Sed St.','Salt Lake City','Utah','USA'),(223,'736-1890 Suspendisse Avenue','Lawton','Oklahoma','USA'),(224,'4428 At Av.','Oklahoma City','Oklahoma','USA'),(225,'718-6081 Vivamus St.','Las Vegas','Nevada','USA'),(226,'2562 Mauris St.','Newark','Delaware','USA'),(227,'P.O. Box 515, 1600 Sodales. St.','Fort Smith','Arkansas','USA'),(228,'P.O. Box 823, 8841 Ipsum Ave','Green Bay','Wisconsin','USA'),(229,'Ap #821-2100 Nisi Avenue','Worcester','Massachusetts','USA'),(230,'519-680 Nascetur Avenue','Norman','Oklahoma','USA'),(231,'Ap #165-2647 Gravida Avenue','Omaha','Nebraska','USA'),(232,'Ap #249-1273 Ut, Ave','Colorado Springs','Colorado','USA'),(233,'3762 Enim Rd.','Henderson','Nevada','USA'),(234,'Ap #161-973 Sed, St.','Des Moines','Iowa','USA'),(235,'146-7913 Malesuada. Avenue','Columbus','Ohio','USA'),(236,'5016 Quis Avenue','Wichita','Kansas','USA'),(237,'Ap #549-7978 Egestas. St.','Chicago','Illinois','USA'),(238,'4153 Vestibulum Road','Saint Paul','Minnesota','USA'),(239,'P.O. Box 792, 9523 Montes, Road','Lexington','Kentucky','USA'),(240,'Ap #286-2759 Fusce St.','Covington','Kentucky','USA'),(241,'517-4447 Luctus Av.','Vancouver','Washington','USA'),(242,'Ap #381-7866 Proin St.','San Antonio','Texas','USA'),(243,'P.O. Box 814, 6864 Sed, St.','Knoxville','Tennessee','USA'),(244,'Ap #638-9600 Tempor St.','Nampa','Idaho','USA'),(245,'554-7869 Ornare St.','Springfield','Massachusetts','USA'),(246,'P.O. Box 819, 7502 Arcu. Street','Bridgeport','Connecticut','USA'),(247,'Ap #162-7048 Etiam Ave','Louisville','Kentucky','USA'),(248,'P.O. Box 671, 2105 Est Avenue','Toledo','Ohio','USA'),(249,'P.O. Box 645, 578 Erat Av.','College','Alaska','USA'),(250,'3852 Blandit Rd.','West Jordan','Utah','USA'),(251,'P.O. Box 609, 3615 Et Ave','South Bend','Indiana','USA'),(252,'8673 Eu St.','Jacksonville','Florida','USA'),(253,'Ap #730-458 Erat St.','Bellevue','Nebraska','USA'),(254,'P.O. Box 927, 7627 Fringilla Rd.','Jefferson City','Missouri','USA'),(255,'P.O. Box 274, 5772 Dolor. St.','Fort Worth','Texas','USA'),(256,'5873 Sed Rd.','Athens','Georgia','USA'),(257,'P.O. Box 882, 3496 Ullamcorper Rd.','Biloxi','Mississippi','USA'),(258,'4182 Ut Avenue','Detroit','Michigan','USA'),(259,'957-1781 Nunc Ave','Salem','Oregon','USA'),(260,'4293 Lacus, St.','Gillette','Wyoming','USA'),(261,'7416 Dolor Ave','South Burlington','Vermont','USA'),(262,'765 Odio Ave','Grand Rapids','Michigan','USA'),(263,'P.O. Box 991, 6090 Elit Avenue','Rock Springs','Wyoming','USA'),(264,'503-9902 Auctor, Avenue','Cedar Rapids','Iowa','USA'),(265,'434-7405 Dui, Road','Minneapolis','Minnesota','USA'),(266,'920-1925 Donec Rd.','Overland Park','Kansas','USA'),(267,'230-4899 Arcu. Ave','San Antonio','Texas','USA'),(268,'5265 At, Street','Pocatello','Idaho','USA'),(269,'Ap #788-1731 Parturient Street','Portland','Maine','USA'),(270,'P.O. Box 187, 5488 Orci. Av.','Dover','Delaware','USA'),(271,'Ap #536-5828 Nec Av.','Bear','Delaware','USA'),(272,'Ap #224-3489 Primis Rd.','Gulfport','Mississippi','USA'),(273,'P.O. Box 244, 2435 Vel, St.','Lowell','Massachusetts','USA'),(274,'Ap #683-5405 Sollicitudin Av.','Toledo','Ohio','USA'),(275,'933 Parturient St.','Clarksville','Tennessee','USA'),(276,'Ap #623-7928 Odio Street','Paradise','Nevada','USA'),(277,'P.O. Box 439, 2172 Cras St.','Montgomery','Alabama','USA'),(278,'Ap #631-4730 Arcu Rd.','West Jordan','Utah','USA'),(279,'Ap #568-6076 In, Street','Eugene','Oregon','USA'),(280,'2890 Eu Avenue','Ketchikan','Alaska','USA'),(281,'P.O. Box 669, 3483 Tristique Avenue','Shreveport','Louisiana','USA'),(282,'944-1566 Blandit Avenue','Cleveland','Ohio','USA'),(283,'615-4457 Id, Road','Warren','Michigan','USA'),(284,'Ap #668-7437 Nunc Avenue','Kaneohe','Hawaii','USA'),(285,'Ap #449-1229 Orci Av.','Vancouver','Washington','USA'),(286,'896-3001 Amet Rd.','Kaneohe','Hawaii','USA'),(287,'Ap #312-2453 Nec Av.','Broken Arrow','Oklahoma','USA'),(288,'528-8191 At Rd.','Hillsboro','Oregon','USA'),(289,'587-354 Vel Road','North Las Vegas','Nevada','USA'),(290,'153 Posuere St.','Kearney','Nebraska','USA'),(291,'1684 Metus Avenue','Laramie','Wyoming','USA'),(292,'8871 Commodo Road','Juneau','Alaska','USA'),(293,'424-2130 Semper Ave','Milwaukee','Wisconsin','USA'),(294,'P.O. Box 927, 5708 Arcu. Street','Columbus','Ohio','USA'),(295,'3585 Vestibulum, Street','Augusta','Georgia','USA'),(296,'974-715 Tincidunt Ave','Shreveport','Louisiana','USA'),(297,'434-5071 Et St.','Rochester','Minnesota','USA'),(298,'762-1310 Velit. Rd.','Billings','Montana','USA'),(299,'4610 Id, St.','Cedar Rapids','Iowa','USA'),(300,'P.O. Box 793, 2975 Auctor Road','Seattle','Washington','USA'),(301,'1607 Sed Avenue','Casper','Wyoming','USA'),(302,'5838 Vel Rd.','Laramie','Wyoming','USA'),(303,'8967 Mauris Av.','Missoula','Montana','USA'),(304,'P.O. Box 636, 3660 Sit Rd.','Mesa','Arizona','USA'),(305,'P.O. Box 306, 731 Malesuada Ave','Carson City','Nevada','USA'),(306,'774-1139 Non Ave','Fort Wayne','Indiana','USA'),(307,'9886 Lacinia St.','Bear','Delaware','USA'),(308,'375-4422 Condimentum Ave','Portland','Maine','USA'),(309,'P.O. Box 820, 6160 In Rd.','Helena','Montana','USA'),(310,'3003 Id, St.','Cincinnati','Ohio','USA'),(311,'P.O. Box 813, 1894 Amet Rd.','Las Vegas','Nevada','USA'),(312,'P.O. Box 176, 1809 A, Ave','Pike Creek','Delaware','USA'),(313,'P.O. Box 766, 2430 Aenean St.','Cleveland','Ohio','USA'),(314,'237-9827 Malesuada. Rd.','Salem','Oregon','USA'),(315,'856-3174 Cursus Road','Fort Wayne','Indiana','USA'),(316,'Ap #635-5767 Erat Street','Chattanooga','Tennessee','USA'),(317,'2982 Cursus St.','Laramie','Wyoming','USA'),(318,'Ap #813-7768 Integer Road','Gaithersburg','Maryland','USA'),(319,'8878 Magna Ave','Saint Louis','Missouri','USA'),(320,'665-2684 Diam. Ave','Kansas City','Kansas','USA'),(321,'P.O. Box 521, 8190 Sed St.','Rockford','Illinois','USA'),(322,'123 Arcu. Ave','Henderson','Nevada','USA'),(323,'624-4510 Aliquet St.','Aurora','Colorado','USA'),(324,'9021 Ac, Rd.','Lincoln','Nebraska','USA'),(325,'Ap #423-5003 Accumsan St.','Allentown','Pennsylvania','USA'),(326,'P.O. Box 253, 9992 Dolor. Av.','Wilmington','Delaware','USA'),(327,'Ap #866-4456 Ultricies Ave','Overland Park','Kansas','USA'),(328,'Ap #903-9007 Ultrices Av.','Bloomington','Minnesota','USA'),(329,'Ap #953-886 Sit Street','Green Bay','Wisconsin','USA'),(330,'Ap #679-6130 Sed St.','Provo','Utah','USA'),(331,'9835 Nec St.','Reading','Pennsylvania','USA'),(332,'P.O. Box 577, 7879 Accumsan Ave','Biloxi','Mississippi','USA'),(333,'2938 Ullamcorper St.','Olathe','Kansas','USA'),(334,'475-5111 Urna. Rd.','Lafayette','Louisiana','USA'),(335,'646-6688 Dolor. Avenue','Reading','Pennsylvania','USA'),(336,'542-6384 Magna St.','Colorado Springs','Colorado','USA'),(337,'Ap #440-8993 Diam Road','Lexington','Kentucky','USA'),(338,'401-988 In St.','Cleveland','Ohio','USA'),(339,'P.O. Box 811, 8773 Lectus Av.','Madison','Wisconsin','USA'),(340,'Ap #959-2653 Blandit Rd.','Oklahoma City','Oklahoma','USA'),(341,'543-1290 Phasellus Avenue','Seattle','Washington','USA'),(342,'2883 Commodo Street','Lincoln','Nebraska','USA'),(343,'P.O. Box 193, 4244 Lacus Street','Davenport','Iowa','USA'),(344,'P.O. Box 133, 3542 Ipsum. Avenue','Mobile','Alabama','USA'),(345,'448-7543 Sit Road','Oklahoma City','Oklahoma','USA'),(346,'436-5335 Et, St.','Great Falls','Montana','USA'),(347,'6546 Tincidunt Rd.','Joliet','Illinois','USA'),(348,'8658 Mi St.','Akron','Ohio','USA'),(349,'P.O. Box 451, 9390 Urna, Av.','Gresham','Oregon','USA'),(350,'9582 Elementum, Street','Sandy','Utah','USA'),(351,'1320 Neque Avenue','Bangor','Maine','USA'),(352,'371 Duis Av.','Phoenix','Arizona','USA'),(353,'Ap #882-391 Sed Street','Lakewood','Colorado','USA'),(354,'3033 Id, Rd.','Aurora','Illinois','USA'),(355,'7438 Metus. Road','Springfield','Massachusetts','USA'),(356,'203-2937 Vivamus Rd.','Norfolk','Virginia','USA'),(357,'262-4109 Vivamus Street','Tampa','Florida','USA'),(358,'Ap #338-4520 Justo. Road','Rock Springs','Wyoming','USA'),(359,'Ap #658-9646 Nulla Road','Augusta','Georgia','USA'),(360,'400 Proin St.','Rochester','Minnesota','USA'),(361,'P.O. Box 215, 8754 Blandit Street','Owensboro','Kentucky','USA'),(362,'Ap #776-8983 Cursus. Rd.','Laramie','Wyoming','USA'),(363,'784-2374 Accumsan Street','South Portland','Maine','USA'),(364,'P.O. Box 154, 2965 Enim. St.','Nampa','Idaho','USA'),(365,'288-5494 Id, Rd.','Newport News','Virginia','USA'),(366,'728-9637 Non, Av.','Naperville','Illinois','USA'),(367,'P.O. Box 703, 5182 Vitae Ave','Chicago','Illinois','USA'),(368,'Ap #468-9703 Mollis Av.','Davenport','Iowa','USA'),(369,'462-6601 Varius Av.','Gulfport','Mississippi','USA'),(370,'7952 Ut Road','Worcester','Massachusetts','USA'),(371,'P.O. Box 595, 4250 Vitae Av.','Sioux City','Iowa','USA'),(372,'826-3339 Orci. Road','Virginia Beach','Virginia','USA'),(373,'P.O. Box 685, 2183 Sagittis. Avenue','Worcester','Massachusetts','USA'),(374,'P.O. Box 334, 4982 Mi Av.','Akron','Ohio','USA'),(375,'P.O. Box 225, 886 Cras Street','Davenport','Iowa','USA'),(376,'665-6070 Magnis Ave','Oklahoma City','Oklahoma','USA'),(377,'Ap #220-991 Ridiculus Avenue','Seattle','Washington','USA'),(378,'P.O. Box 960, 2384 Orci. St.','Springdale','Arkansas','USA'),(379,'448-3759 Tincidunt. Avenue','Dover','Delaware','USA'),(380,'842-8224 Magna St.','Meridian','Idaho','USA'),(381,'808-3679 Interdum Avenue','Fairbanks','Alaska','USA'),(382,'P.O. Box 578, 4267 Eget, Avenue','Cedar Rapids','Iowa','USA'),(383,'487-7767 Amet Rd.','Kansas City','Missouri','USA'),(384,'7238 Vel Ave','Los Angeles','California','USA'),(385,'5587 Semper St.','Jacksonville','Florida','USA'),(386,'Ap #645-5426 Montes, Street','Overland Park','Kansas','USA'),(387,'3287 Interdum Avenue','Bloomington','Minnesota','USA'),(388,'696 Sagittis Road','Saint Louis','Missouri','USA'),(389,'P.O. Box 160, 3990 Quisque Street','Jefferson City','Missouri','USA'),(390,'2924 Iaculis, Street','Annapolis','Maryland','USA'),(391,'6409 Aliquet Avenue','Sacramento','California','USA'),(392,'350-6334 Ornare, St.','Boise','Idaho','USA'),(393,'2181 Sagittis St.','Knoxville','Tennessee','USA'),(394,'Ap #238-8289 Convallis Street','Lowell','Massachusetts','USA'),(395,'3088 Ipsum Avenue','Newport News','Virginia','USA'),(396,'P.O. Box 921, 3606 Mattis St.','Gaithersburg','Maryland','USA'),(397,'535 Felis St.','Austin','Texas','USA'),(398,'P.O. Box 540, 4085 Aliquam Rd.','Houston','Texas','USA'),(399,'Ap #199-9949 Nec Rd.','Memphis','Tennessee','USA'),(400,'938-9942 Eu St.','Wyoming','Wyoming','USA');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `busdriver`
--

DROP TABLE IF EXISTS `busdriver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `busdriver` (
  `driverID` int(11) NOT NULL,
  `busType` varchar(25) NOT NULL,
  PRIMARY KEY (`driverID`),
  CONSTRAINT `busdriver_ibfk_1` FOREIGN KEY (`driverID`) REFERENCES `person` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `busdriver`
--

LOCK TABLES `busdriver` WRITE;
/*!40000 ALTER TABLE `busdriver` DISABLE KEYS */;
INSERT INTO `busdriver` VALUES (2,'Motorcoach'),(4,'Motorcoach'),(6,'Motorcoach'),(8,'Motorcoach'),(10,'Motorcoach'),(12,'Mini Bus'),(14,'Mini Bus'),(16,'Mini Bus'),(18,'Mini Bus'),(20,'Mini Bus'),(22,'Executive Bus'),(24,'Executive Bus'),(26,'Executive Bus'),(28,'Executive Bus'),(30,'Executive Bus'),(32,'School Bus'),(34,'School Bus'),(36,'School Bus'),(38,'School Bus'),(40,'School Bus'),(42,'Limo Bus'),(44,'Limo Bus'),(46,'Limo Bus'),(48,'Limo Bus'),(50,'Limo Bus'),(52,'Motorcoach'),(54,'Motorcoach'),(56,'Motorcoach'),(58,'Motorcoach'),(60,'Motorcoach'),(62,'Mini Bus'),(64,'Mini Bus'),(66,'Mini Bus'),(68,'Mini Bus'),(70,'Mini Bus'),(72,'Executive Bus'),(74,'Executive Bus'),(76,'Executive Bus'),(78,'Executive Bus'),(80,'Executive Bus'),(82,'School Bus'),(84,'School Bus'),(86,'School Bus'),(88,'School Bus'),(90,'School Bus'),(92,'Limo Bus'),(94,'Limo Bus'),(96,'Limo Bus'),(98,'Limo Bus'),(100,'Limo Bus');
/*!40000 ALTER TABLE `busdriver` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_bus_insert
before insert on BusDriver
for each row
BEGIN
IF new.busType != 'Motorcoach' AND new.busType != 'Mini Bus' AND new.busType != 'Executive Bus' AND new.busType != 'School Bus' AND new.busType != 'Limo Bus' then
signal sqlstate '45000';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_bus_update
before update on BusDriver
for each row
BEGIN
IF new.busType != 'Motorcoach' AND new.busType != 'Mini Bus' AND new.busType != 'Executive Bus' AND new.busType != 'School Bus' AND new.busType != 'Limo Bus' then
signal sqlstate '45000';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`userId`),
  CONSTRAINT `client_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `person` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1),(3),(5),(7),(9),(11),(13),(15),(17),(19),(21),(23),(25),(27),(29),(31),(33),(35),(37),(39),(41),(43),(45),(47),(49),(51),(53),(55),(57),(59),(61),(63),(65),(67),(69),(71),(73),(75),(77),(79),(81),(83),(85),(87),(89),(91),(93),(95),(97),(99),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),(171),(172),(173),(174),(175),(176),(177),(178),(179),(180),(181),(182),(183),(184),(185),(186),(187),(188),(189),(190),(191),(192),(193),(194),(195),(196),(197),(198),(199),(200);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `futuretrips`
--

DROP TABLE IF EXISTS `futuretrips`;
/*!50001 DROP VIEW IF EXISTS `futuretrips`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `futuretrips` AS SELECT 
 1 AS `tripId`,
 1 AS `originAddress`,
 1 AS `destAddress`,
 1 AS `beginDate`,
 1 AS `endDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `userId` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `UC_username` (`username`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `client` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'sit','RZG07ITO9ZP'),(3,'non','QAE05QQX1KR'),(5,'risus.','GZQ73BBM8GH'),(7,'Suspendisse','LIO56NWU5SR'),(9,'turpis.','BJC40SID2BJ'),(11,'ornare','OXG77VQC6JZ'),(13,'ligula.','VFZ26TEF2EX'),(15,'ut','CQD09HSB1IC'),(17,'neque','YLH36FPJ3VZ'),(19,'lorem,','ITY71XQO3EL'),(21,'semper','BKC57DFQ5GF'),(23,'pretium','ABT52RKV8LD'),(25,'egestas','OFA01OMW2XA'),(27,'heretic','CFN44IJI1MA'),(29,'massa.','MJM06MVQ7HX'),(31,'ultrices','GZI78NBL2CK'),(33,'ornare,','UTO65UFU4BK'),(35,'tincidunt,','KSC17SAY6VW'),(37,'Phasellus','FMG12AMF7LP'),(39,'eu,','VIG09DVP5OX'),(41,'eu','FYR53XUX1JL'),(43,'lime','KQD88CKR9WK'),(45,'porttitor','OYV54HRQ4WU'),(47,'liquid','VIG77BRD9TS'),(49,'viverra.','PEZ51LGZ1GL'),(51,'imperdiet','VIE96BEJ3GI'),(53,'Donec','LAQ94IXJ0WF'),(55,'mi','IOE21EAY2NL'),(57,'cursus','EWK44GLC4UX'),(59,'fringilla','NLF54WUV4KX'),(61,'pharetra','QXU45DKB0XJ'),(63,'dui.','GGH12ZGH5US'),(65,'interdum','PQN96YVQ7OI'),(67,'et','RWS43DOP5ZE'),(69,'facilisis.','HMH79ENS4PX'),(71,'sagittis.','QXR69UQP9GY'),(73,'amet','YCL62QBY5CP'),(75,'lorem','EHW09PXX8RB'),(77,'eleifend','NAU88HHE6SC'),(79,'In','CEC39QRN7IX'),(81,'mad','XPC74ZFR9BN'),(83,'arcu.','UZP46XIH4YF'),(85,'elit','MDO41SXS9JR'),(87,'sociis','VQD21YQF5OT'),(89,'velit','HJB32ETO9UA'),(91,'Sed','BYI57NPS8OU'),(93,'identity,','NJW29QYF3TJ'),(95,'porta','ENY08WYL1RR'),(97,'essence','GLF98VGS8TF'),(99,'blandit','BAT48ZFH8ZZ'),(101,'ransom,','BLR67MSK1HO'),(102,'neque.','OUY27JSX2AA'),(103,'acrobat','ECW33RQV0UG'),(104,'orci','QHE08IVQ8VZ'),(105,'Nunc','MIM04RJL7QF'),(106,'addict','RJK56RZB4XD'),(107,'propellant','QMJ47EUM6QV'),(108,'pellentesque.','AJO75HPS1NU'),(109,'dolor','POI48DYQ9RT'),(110,'fertile','TOR57HHQ8HU'),(111,'eget','XCP28OHL5EY'),(112,'euismod','XFC40UBB7JT'),(113,'absurdly','PBV36QBZ4PH'),(114,'live','RFY55TUS5TG'),(115,'enim.','ELU48XRN2VL'),(116,'drugstore','MOV73LHY9XL'),(117,'sodales','PQL20RJK2GM'),(118,'tristique','PMW11ANW6AS'),(119,'nec','DLV60DIC7RK'),(120,'homicide','KWR37NDW9OV'),(121,'feather','XDI79GAI5ZF'),(122,'molestie','YTP32MDX7AD'),(123,'leaf','PAN04GVD6EQ'),(124,'flesh','FMU92MOA7CT'),(125,'lick','DZD18GOV2DN'),(126,'ante.','JRH70IZF3OV'),(127,'devices','RBD13JVQ3IH'),(128,'erat','NVB91GPM5TT'),(129,'chapter','FDK15NSS2ZX'),(130,'sacred','SOB84ZJU7IO'),(131,'auctor','LCH43FTM0OS'),(132,'magma','VXX39ZPA6QX'),(133,'Nullam','PWU68VRT3BR'),(134,'shulk','QJQ40DOF7GU'),(135,'rex','WAR87RIJ4MD'),(136,'lucas','BUE16UNF8GV'),(137,'ness','QPJ09TDW6AR'),(138,'chrom','UCJ71WKC0EV'),(139,'anna','AWA64FYI0GJ'),(140,'iaculis','PYX28BGR8FY'),(141,'magna','DJM77AOY9MC'),(142,'bittersweet','PON22VGZ8KV'),(143,'feugiat','FQJ13PCH4RC'),(144,'mauris','ZHI21DID9YY'),(145,'enim,','VSC74PWA1IX'),(146,'aliquet','FLW24VBW8UM'),(147,'pede,','OXL77EPB0UO'),(148,'sem.','VMA00FHI9GJ'),(149,'rhoncus.','VDQ85AVV5FE'),(150,'vitae','NZO26SHM6CO'),(151,'soup','TAV84BXC1QA'),(152,'house','TOR37KYT3GR'),(153,'hurdle,','CHG30HMS8VU'),(154,'chewable','EPR20RVH7VC'),(155,'drone.','IHV72MYT7PV'),(156,'sollicitudin','KCY31YXM5RQ'),(157,'solitude','VNY48PEG8YM'),(158,'quis,','GAR33JJH0VN'),(159,'gravida.','OSH23FFC6YN'),(160,'beginner','JHD36GRC7TZ'),(161,'heavyweight','ENR21ZYQ8AN'),(162,'scelerisque','CZC54IXB0QR'),(163,'laoreet,','TXV66PSY7FI'),(164,'bowser','CCV28TER3RT'),(165,'mario','ZEO50YZY6YC'),(166,'link','JUY29JAK1XY'),(167,'zelda,','LNU70VWQ4LM'),(168,'augue','PLQ59WYO0IA'),(169,'midna','JFQ68NCZ9ET'),(170,'tempor','FHI24EXK7UO'),(171,'marth','NOE50KGC7LW'),(172,'tortor','ONS05TTG9KW'),(173,'ike','FRT16HIC1IO'),(174,'nisi','SDD41VXP2AE'),(175,'lectus','ZPA77PKR1OX'),(176,'inceptos','HZP69GCB9OP'),(177,'Proin','PIS45POO6TZ'),(178,'roy,','VPA09UVX6AU'),(179,'robin','WCQ76OAU1JN'),(180,'corrin','FTR46PZT4SM'),(181,'natoque','APE28OUR2NY'),(182,'aliquam,','WTT34BFW2YL'),(183,'magnis','AIL75PFB3XA'),(184,'at,','XEG73UXV1NV'),(185,'luigi','PTP38ZFH8RX'),(186,'accumsan','ABW03NUN7XH'),(187,'lucina','RYE50DSO1TG'),(188,'olimar','CJM34RGR9PC'),(189,'alm','VEV71HES9FG'),(190,'celica','OLG48GLY2OZ'),(191,'lyn','ZLG12VGF2DZ'),(192,'hector','MOQ90APT9HH'),(193,'eliwood','DFA16OMW6MJ'),(194,'Fusce','WAI56ZPE8UK'),(195,'pikachu','JZM68NNK0QW'),(196,'mollis','SZL25HWW4AO'),(197,'mewtwo','MWD15VEP4VC'),(198,'lucario','WFC31IKB1OR'),(199,'id','UUZ76UAX6GK'),(200,'charizard,','QLH51KPC6DU');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES ('Rudyard','Lambert','ipsum.leo.elementum@mauris.net',1),('Alden','Preston','adipiscing.lobortis@maurisa.com',2),('Ezekiel','Santana','lacus.Quisque@anteVivamusnon.ca',3),('Xander','Dominguez','Mauris@penatibus.edu',4),('Jena','Gordon','tristique@rutrumnonhendrerit.edu',5),('Perry','Ratliff','lacinia.Sed.congue@Fuscedolorquam.com',6),('Dean','Rosario','mollis.lectus.pede@nibh.net',7),('Kay','Delacruz','sit.amet@mi.edu',8),('Patricia','Walton','mollis.Duis@liberoProinsed.net',9),('Sybill','Stevens','vitae.erat.Vivamus@vestibulum.edu',10),('Mara','Henry','arcu.Vivamus@Quisqueornaretortor.co.uk',11),('Chanda','Hewitt','Sed.nec@nonummyut.com',12),('Bo','Carver','nulla@turpisnecmauris.co.uk',13),('Preston','Mcdonald','in@Classaptent.edu',14),('Alvin','Frazier','fermentum.convallis.ligula@massa.org',15),('Ashton','Rodriquez','ut@purusMaecenaslibero.net',16),('Lysandra','Ochoa','sagittis.felis@Aliquamtincidunt.com',17),('Cara','Frye','ligula.consectetuer@gravidanonsollicitudin.co.uk',18),('Colby','Parker','tincidunt.tempus.risus@quis.net',19),('Echo','Morrow','sem.semper@vulputaterisusa.co.uk',20),('Lacy','Mullins','aliquam@vehicula.ca',21),('Gavin','Alford','egestas.nunc@Infaucibus.com',22),('Mara','Webb','turpis@ametluctus.co.uk',23),('Shana','Castaneda','sed.sapien@nuncullamcorpereu.edu',24),('Raymond','Stuart','Donec.tincidunt@quis.org',25),('Jesse','Navarro','scelerisque.mollis.Phasellus@auctorveliteget.edu',26),('Kevin','Hanson','ante.blandit@interdumCurabitur.net',27),('Allegra','Mcdaniel','id.nunc@viverra.net',28),('Ursula','Hendrix','mattis.velit.justo@metus.ca',29),('Kay','Cleveland','nec.urna@Loremipsumdolor.com',30),('Quin','Kelly','egestas.a@Suspendissesagittis.ca',31),('Cade','Rutledge','diam.Sed@nislarcu.net',32),('Hyacinth','Marsh','dictum.cursus.Nunc@semutdolor.org',33),('Jayme','Robles','in.felis@Nulla.edu',34),('Tyler','Cooke','purus@arcu.edu',35),('Ariel','Wong','inceptos.hymenaeos@Suspendisse.org',36),('Cassady','Lancaster','et.magna@orcisemeget.org',37),('Anne','Burgess','nunc.id.enim@sed.net',38),('Dara','Barton','amet.nulla.Donec@nisl.ca',39),('Lester','Hobbs','Sed.nunc.est@auctor.ca',40),('Rhonda','Neal','Maecenas.ornare.egestas@interdum.edu',41),('Quemby','Olsen','quam.a@venenatis.net',42),('Caldwell','Welch','aliquet.sem.ut@auctor.com',43),('Dana','Knight','Suspendisse.dui.Fusce@aliquetnecimperdiet.com',44),('Quyn','Craig','fermentum.convallis@tincidunt.ca',45),('Meredith','Grimes','neque.non.quam@gravidasagittis.net',46),('Kirk','Carter','ipsum.dolor.sit@tristiqueaceleifend.net',47),('Thor','Ayala','augue.ut.lacus@adipiscinglacus.com',48),('Florence','Shields','tincidunt.tempus.risus@Donecluctus.com',49),('Derek','Atkins','tempor@faucibusidlibero.net',50),('Eagan','Maldonado','id@nisinibh.net',51),('Chastity','Jenkins','eleifend.Cras@nequeIn.co.uk',52),('Honorato','Silva','dui@Crassed.edu',53),('Emery','Nichols','magnis.dis@magnisdis.net',54),('Caldwell','Hanson','consectetuer.cursus.et@ipsumPhasellus.ca',55),('Rina','Lee','orci@pellentesquetellus.net',56),('Justina','Martin','mi.eleifend@eudoloregestas.edu',57),('Ali','Mckee','auctor.quis.tristique@et.net',58),('Cailin','Cline','arcu.et.pede@Nunc.net',59),('Destiny','Sweet','dapibus@nonummy.ca',60),('Quentin','Garner','accumsan@montes.com',61),('George','Sykes','semper.tellus.id@ut.ca',62),('Skyler','Wall','magnis@Vivamusnibhdolor.ca',63),('Patrick','Rodriguez','sodales@scelerisquesedsapien.edu',64),('Garrison','Nicholson','Cras.eget.nisi@Utsemper.ca',65),('Malachi','Downs','vel@nibhAliquam.edu',66),('Mary','Cole','mauris.blandit@quisdiam.net',67),('Juliet','Heath','Integer.sem@lobortis.org',68),('Neil','Quinn','consequat.nec@turpisNulla.edu',69),('Axel','Tyson','nulla.Integer@aliquetnecimperdiet.com',70),('Tanner','Lott','aliquam.adipiscing.lacus@primis.co.uk',71),('Ruth','Schmidt','non@congueInscelerisque.edu',72),('Karyn','Hill','aliquet.sem.ut@metusIn.ca',73),('Cody','Livingston','eros@arcu.net',74),('Logan','Macias','pede.blandit.congue@nisi.ca',75),('Mollie','Nunez','mauris.ut@semperegestas.co.uk',76),('Hedley','Summers','aliquet@urnaNunc.net',77),('Heidi','Lang','eget.massa@dolor.co.uk',78),('Judith','Miranda','posuere.cubilia.Curae@euaugue.org',79),('Lucius','Crosby','amet@nonante.com',80),('Lucy','Mcleod','eu.augue@placerat.edu',81),('Remedios','Nicholson','consectetuer.adipiscing.elit@vehicularisusNulla.ca',82),('Veronica','Shannon','cubilia.Curae.Donec@interdumfeugiat.ca',83),('Uriah','Hoffman','elementum@iaculis.co.uk',84),('Erin','Barlow','In.faucibus.Morbi@nostraper.ca',85),('Olga','Mcgee','ac@nonenimMauris.ca',86),('Kerry','Castro','augue.porttitor.interdum@ornareInfaucibus.edu',87),('Allistair','Hooper','Morbi.metus@suscipitnonummyFusce.com',88),('Farrah','Herman','pede@Nullam.ca',89),('Brock','Tillman','in.magna@loremtristique.org',90),('Iris','Michael','semper.egestas@vitaedolorDonec.net',91),('Noelle','Kent','laoreet@variusorci.edu',92),('Indira','Wynn','sapien.Nunc.pulvinar@Proinnislsem.com',93),('Sophia','Yates','nibh.Phasellus@Cumsociisnatoque.org',94),('Stephen','Francis','amet@aliquetmetus.edu',95),('Leigh','Wyatt','dui@maurisrhoncus.ca',96),('Deanna','Fitzgerald','lacinia.mattis@Proin.com',97),('Blaze','Little','Vestibulum@lobortis.edu',98),('Wade','Wilder','turpis.In@erat.co.uk',99),('Xavier','Ford','Donec.dignissim@imperdietullamcorper.co.uk',100),('Chelsea','Wiggins','Vestibulum.ut@ipsumCurabitur.org',101),('Philip','Jenkins','ipsum.dolor.sit@gravida.co.uk',102),('Fletcher','Little','Cras@Donec.co.uk',103),('Miriam','Melendez','ullamcorper.viverra@diam.com',104),('Macon','Bender','elit.dictum.eu@ligula.ca',105),('Noah','Walls','Lorem@dis.edu',106),('Louis','Dale','at.auctor.ullamcorper@enim.ca',107),('Reagan','Rhodes','nisi.magna.sed@semmagnanec.co.uk',108),('Abraham','Perry','Quisque@rhoncusProinnisl.net',109),('Blaine','Bridges','Donec@mi.net',110),('Nell','Adkins','tortor.Nunc@rutrumnon.org',111),('Shannon','Wood','lobortis@adipiscingnon.ca',112),('Cleo','Myers','aliquet@CurabiturmassaVestibulum.co.uk',113),('Merrill','Greene','ac.facilisis@diam.co.uk',114),('Craig','Young','tempus.non@felisDonec.com',115),('Illana','Curry','Vivamus@auctornonfeugiat.ca',116),('Briar','Solis','pellentesque@nunc.edu',117),('Ira','Jennings','lobortis.ultrices.Vivamus@consequat.org',118),('Stephanie','Crane','vulputate@luctuslobortis.com',119),('Peter','Holman','vulputate.lacus.Cras@turpis.net',120),('Alexandra','Douglas','mauris@uteros.com',121),('Victoria','England','molestie.arcu.Sed@Duis.com',122),('Isabella','Knox','vel.convallis@senectus.com',123),('Louis','Townsend','id.risus@Nullamfeugiatplacerat.ca',124),('Priscilla','Torres','montes.nascetur@libero.com',125),('Fallon','Harris','pede@sitamet.edu',126),('Donna','Nash','ligula.Aliquam.erat@volutpatNulla.com',127),('Aphrodite','Mathews','nibh.Donec@nibh.net',128),('Winter','Sparks','scelerisque.dui@quis.ca',129),('Tanek','Hayden','libero@Proin.com',130),('Isaac','Vincent','Donec@non.com',131),('Abigail','Torres','semper.et@dolor.ca',132),('Ora','Glass','molestie.tortor.nibh@acurna.co.uk',133),('Octavia','Chan','montes.nascetur@volutpatornarefacilisis.edu',134),('Kelly','Mckay','Quisque.tincidunt@Nullaeuneque.ca',135),('John','Dejesus','Nunc.pulvinar@In.org',136),('Delilah','Patrick','nec@utlacusNulla.net',137),('Mallory','Richardson','Aliquam.tincidunt.nunc@blandit.co.uk',138),('Cathleen','Bryan','felis.adipiscing@PhasellusnullaInteger.co.uk',139),('Sigourney','Kent','at.arcu@acorci.ca',140),('Kirk','Dejesus','neque.sed@massa.co.uk',141),('Hanna','Becker','Vivamus.euismod.urna@facilisismagna.co.uk',142),('Luke','Fisher','eu.dolor.egestas@consectetuer.ca',143),('Aiko','Marquez','ac@auctor.org',144),('Candice','Stokes','tellus.non.magna@enim.edu',145),('Brynne','English','eros.turpis@diamvelarcu.com',146),('Brendan','Flynn','ante.dictum@laoreet.ca',147),('Griffin','Frost','amet@vulputate.org',148),('Melvin','Puckett','fringilla.Donec.feugiat@utmolestie.org',149),('Tanner','Reid','Donec.consectetuer.mauris@quislectus.org',150),('Troy','Howell','sapien.gravida.non@molestieorcitincidunt.edu',151),('Rajah','Mays','dui.Suspendisse@feugiatnecdiam.ca',152),('Anthony','Ellison','Donec.nibh@pedemalesuadavel.ca',153),('Alfreda','Dunn','Nunc@egestas.ca',154),('Ramona','Knox','Duis@id.ca',155),('Rinah','Whitaker','vulputate.posuere@felisegetvarius.org',156),('Vielka','Rutledge','placerat.velit@duilectus.net',157),('Maggie','Schwartz','ligula@orciPhasellusdapibus.co.uk',158),('Claudia','Harrell','dapibus@magna.net',159),('Sybil','Clark','nibh.Quisque@acarcuNunc.edu',160),('Kelsey','Dotson','eleifend@laoreetlectus.org',161),('Isabelle','Leach','a.auctor@vitaedolor.co.uk',162),('Leslie','Key','Fusce.diam@maurisrhoncusid.com',163),('Louis','Cole','id@tempusscelerisque.edu',164),('Basil','Alford','habitant.morbi.tristique@velsapienimperdiet.org',165),('Shoshana','Duran','tristique@diameudolor.com',166),('Serena','Blake','eget.dictum.placerat@nisiCumsociis.net',167),('Julie','Allen','tempus.mauris@dapibusligulaAliquam.org',168),('Alfonso','Thornton','vitae.posuere@nisi.net',169),('Kevin','Poole','dolor.sit@molestieSed.com',170),('Baxter','Hudson','malesuada.vel@enimnectempus.edu',171),('Jerry','Macdonald','a.feugiat.tellus@ut.com',172),('Lucius','Snider','natoque.penatibus.et@disparturientmontes.org',173),('Xyla','Shaw','diam.luctus.lobortis@nec.ca',174),('Heather','Duffy','sapien.gravida@felis.edu',175),('Aileen','Navarro','Morbi.quis.urna@mauris.org',176),('Leila','Vega','commodo.tincidunt@ullamcorpervelit.org',177),('Nasim','Phelps','Praesent.eu.nulla@natoquepenatibuset.net',178),('Quincy','Bradley','et.netus.et@rhoncusDonec.net',179),('Deanna','Sears','Sed@diamPellentesque.ca',180),('Karyn','Coleman','dolor@Praesent.net',181),('Amos','Sellers','dis.parturient.montes@tortordictum.ca',182),('Joan','Morales','in@pedePraesent.org',183),('Genevieve','Barton','et.arcu.imperdiet@etmagnaPraesent.co.uk',184),('Jermaine','Navarro','ut.lacus@Cras.co.uk',185),('Kasimir','Hopper','ornare.egestas.ligula@Nam.ca',186),('Shana','Webb','erat.volutpat@facilisis.org',187),('Alexander','Decker','Cum@ultrices.com',188),('Kelsey','Sweet','Praesent.eu@enimEtiamimperdiet.ca',189),('Kathleen','Ingram','odio.tristique@sedconsequat.co.uk',190),('Paloma','Dyer','tellus.justo.sit@lacusAliquamrutrum.ca',191),('Guinevere','Wooten','sed.turpis.nec@ornarelectusjusto.ca',192),('Linda','Dawson','malesuada.augue.ut@ac.ca',193),('Erica','Castaneda','ac@Maurisnulla.org',194),('Vanna','Boone','blandit.viverra.Donec@natoque.org',195),('Bruno','Cardenas','mi@semNulla.co.uk',196),('Jade','Peters','ac.ipsum@utmolestie.org',197),('Burke','Burns','Nam.nulla.magna@PhasellusnullaInteger.co.uk',198),('Odysseus','Murray','gravida.molestie.arcu@loremvitae.co.uk',199),('Chiquita','Johnson','dui@vitaesemperegestas.edu',200);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rallypoint`
--

DROP TABLE IF EXISTS `rallypoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rallypoint` (
  `pointId` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pointId`),
  CONSTRAINT `fk_rallypoint` FOREIGN KEY (`pointId`) REFERENCES `address` (`addressId`)
) ENGINE=InnoDB AUTO_INCREMENT=399 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rallypoint`
--

LOCK TABLES `rallypoint` WRITE;
/*!40000 ALTER TABLE `rallypoint` DISABLE KEYS */;
INSERT INTO `rallypoint` VALUES (2),(3),(5),(6),(7),(8),(9),(12),(15),(23),(26),(33),(37),(38),(40),(41),(44),(49),(50),(58),(62),(63),(71),(73),(75),(76),(81),(82),(83),(87),(91),(92),(95),(97),(102),(103),(104),(105),(106),(108),(109),(110),(111),(112),(115),(118),(119),(120),(125),(127),(129),(130),(131),(132),(134),(135),(137),(138),(142),(143),(146),(149),(150),(151),(152),(153),(154),(156),(159),(160),(164),(168),(169),(176),(178),(180),(184),(192),(194),(196),(197),(200),(201),(202),(204),(208),(211),(221),(222),(224),(225),(228),(230),(232),(233),(234),(236),(237),(240),(243),(245),(246),(247),(248),(249),(252),(258),(259),(260),(261),(262),(264),(266),(267),(270),(274),(277),(279),(284),(287),(289),(290),(292),(295),(297),(300),(304),(307),(310),(311),(314),(316),(319),(325),(327),(328),(330),(332),(334),(335),(341),(348),(351),(352),(353),(354),(355),(356),(362),(367),(368),(369),(374),(375),(378),(381),(382),(383),(390),(392),(398);
/*!40000 ALTER TABLE `rallypoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `rallypointinfo`
--

DROP TABLE IF EXISTS `rallypointinfo`;
/*!50001 DROP VIEW IF EXISTS `rallypointinfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `rallypointinfo` AS SELECT 
 1 AS `pointId`,
 1 AS `street`,
 1 AS `city`,
 1 AS `state`,
 1 AS `country`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rallypointspertrip`
--

DROP TABLE IF EXISTS `rallypointspertrip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rallypointspertrip` (
  `pointId` int(11) NOT NULL,
  `tripId` int(11) NOT NULL,
  PRIMARY KEY (`pointId`,`tripId`),
  KEY `tripId` (`tripId`),
  CONSTRAINT `rallypointspertrip_ibfk_1` FOREIGN KEY (`pointId`) REFERENCES `rallypoint` (`pointId`),
  CONSTRAINT `rallypointspertrip_ibfk_2` FOREIGN KEY (`tripId`) REFERENCES `trip` (`tripId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rallypointspertrip`
--

LOCK TABLES `rallypointspertrip` WRITE;
/*!40000 ALTER TABLE `rallypointspertrip` DISABLE KEYS */;
INSERT INTO `rallypointspertrip` VALUES (176,1),(224,1),(284,1),(316,1),(353,1),(63,4),(243,4),(110,5),(356,5),(58,6),(131,6),(178,6),(196,6),(225,6),(375,6),(83,8),(92,8),(129,8),(152,8),(176,8),(233,8),(290,8),(38,9),(137,9),(180,9),(261,9),(6,12),(50,12),(180,12),(221,12),(233,12),(319,12),(50,16),(71,16),(104,16),(151,16),(327,16),(240,21),(245,21),(15,22),(81,22),(146,22),(152,22),(201,22),(224,22),(327,22),(374,22),(50,24),(381,24),(112,25),(355,25),(7,27),(382,27),(3,29),(150,29),(5,30),(109,30),(135,30),(249,30),(311,30),(15,33),(41,33),(184,33),(243,33),(246,33),(258,33),(184,35),(311,35),(334,35),(368,35),(398,35),(33,36),(375,36),(12,38),(118,38),(330,38),(37,40),(109,40),(129,40),(180,40),(354,40),(38,42),(40,42),(143,42),(260,42),(267,42),(353,42),(97,45),(132,45),(264,45),(267,45),(325,45),(40,46),(149,46),(270,46),(355,46),(156,49),(277,50),(71,57),(81,57),(252,57),(262,57),(330,57),(332,57),(109,59),(105,60),(91,61),(106,61),(159,61),(184,61),(135,62),(192,62),(243,62),(8,64),(307,64),(330,64),(356,64),(63,67),(81,67),(109,67),(115,67),(3,69),(5,69),(8,69),(83,69),(232,69),(236,69),(327,69),(164,70),(208,70),(279,70),(311,70),(58,73),(348,73),(5,76),(91,76),(200,76),(221,76),(225,76),(204,77),(300,77),(310,77),(332,77),(110,79),(135,79),(154,79),(196,79),(208,79),(245,79),(260,79),(392,79),(50,82),(58,82),(111,82),(118,82),(138,82),(176,82),(197,82),(252,82),(297,82),(307,82),(381,82),(258,83),(262,83),(382,83),(58,89),(368,89),(26,90),(104,90),(131,90),(154,90),(258,90),(259,90),(264,90),(348,90),(62,94),(63,94),(97,94),(300,94),(104,95),(115,95),(149,95),(325,95),(367,95),(200,98),(208,98),(264,98),(225,99),(398,99),(151,100),(152,100),(159,100),(237,100),(348,100),(102,101),(109,101),(292,101),(178,104),(341,104),(259,105),(277,105),(335,105),(355,105),(97,106),(150,106),(252,106),(130,107),(150,107),(374,107),(319,109),(390,109),(83,111),(208,111),(259,111),(262,111),(295,111),(7,115),(146,115),(201,115),(267,115),(91,118),(127,118),(225,118),(279,118),(297,118),(83,120),(208,120),(230,120),(297,120),(81,121),(201,121),(246,121),(356,121),(374,121),(2,122),(40,122),(105,122),(106,122),(135,122),(137,122),(169,122),(266,122),(353,122),(109,123),(262,123),(6,124),(92,124),(382,124),(62,132),(233,132),(287,132),(105,133),(160,133),(240,133),(304,134),(362,134),(378,134),(7,135),(168,135),(267,135),(81,137),(150,137),(201,137),(310,137),(367,137),(6,139),(50,139),(81,139),(130,139),(134,139),(135,139),(105,143),(180,143),(237,143),(270,143),(352,143),(398,143),(71,144),(154,144),(168,144),(279,144),(44,145),(50,145),(71,145),(75,145),(234,145),(307,145),(378,145),(12,146),(38,146),(108,146),(204,146),(225,146),(279,146),(362,146),(138,147),(258,147),(102,149),(258,149),(327,149),(374,149),(91,150),(307,150),(310,150),(327,150),(390,150),(7,154),(62,154),(143,154),(222,154),(260,154),(375,154),(23,155),(71,155),(75,155),(192,155),(233,155),(310,155),(12,158),(153,158),(232,158),(247,158),(3,162),(142,162),(152,162),(332,162),(230,164),(5,169),(150,169),(164,169),(304,169),(9,170),(201,170),(297,170),(41,175),(82,175),(103,175),(104,175),(105,175),(159,175),(164,175),(270,175),(279,175),(328,175),(335,175),(383,175),(44,177),(81,177),(135,177),(149,177),(8,178),(58,178),(97,178),(201,178),(249,178),(260,178),(82,179),(146,180),(314,180),(348,180),(115,183),(225,183),(307,183),(356,183),(105,185),(120,185),(208,185),(5,189),(75,189),(97,189),(328,189),(334,189),(92,195),(127,195),(258,195),(262,195),(266,195),(354,195),(104,197),(130,197),(23,198),(63,198),(146,198),(164,198),(196,198),(259,198),(328,198),(15,199),(258,199),(264,199),(351,199),(87,201),(109,201),(258,201),(352,201),(383,201),(40,204),(150,204),(262,204),(398,204),(3,205),(9,205),(160,205),(316,205),(335,206),(383,206),(8,208),(103,208),(137,208),(160,208),(222,208),(243,208),(252,208),(26,209),(221,209),(264,209),(390,209),(110,212),(224,212),(264,212),(287,212),(311,212),(8,216),(153,216),(178,216),(58,222),(102,222),(112,222),(134,222),(134,224),(152,224),(160,224),(192,224),(44,225),(92,225),(160,225),(319,225),(341,225),(102,227),(230,227),(258,227),(284,227),(327,227),(6,229),(73,229),(104,229),(168,229),(264,229),(62,230),(248,230),(258,230),(262,230),(307,230),(328,230),(356,230),(9,233),(233,233),(378,233),(383,233),(143,235),(200,235),(319,235),(341,235),(82,236),(129,236),(236,236),(287,236),(125,238),(129,238),(159,238),(233,238),(259,238),(289,238),(325,238),(390,238),(3,240),(83,240),(252,240),(259,240),(261,242),(267,242),(284,242),(289,242),(295,242),(353,242),(82,245),(176,245),(197,245),(352,245),(49,246),(109,246),(222,246),(381,246),(104,249),(120,249),(201,249),(237,249),(328,249),(334,249),(129,250),(135,250),(245,250),(156,257),(264,257),(266,257),(304,257),(325,257),(367,257),(194,259),(246,259),(354,259),(83,260),(159,260),(197,260),(316,260),(83,261),(234,261),(73,262),(154,262),(8,264),(109,264),(110,264),(236,264),(279,264),(297,264),(330,264),(335,264),(105,267),(149,267),(156,267),(297,267),(367,267),(246,269),(258,269),(262,269),(335,269),(348,269),(81,270),(134,270),(95,273),(230,273),(95,276),(138,276),(180,276),(316,276),(335,276),(351,276),(355,276),(6,277),(103,277),(132,277),(151,277),(201,277),(327,277),(368,277),(2,279),(9,279),(92,279),(221,279),(248,279),(260,279),(325,279),(3,282),(83,282),(115,282),(159,282),(202,282),(208,282),(290,282),(327,283),(352,283),(369,283),(132,289),(295,290),(5,294),(87,294),(127,294),(160,295),(367,295),(368,295),(41,298),(109,298),(127,298),(146,298),(284,298),(62,299),(150,299),(211,299),(368,299),(383,299),(82,300),(156,300),(279,300),(287,300);
/*!40000 ALTER TABLE `rallypointspertrip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `subscribedtrips`
--

DROP TABLE IF EXISTS `subscribedtrips`;
/*!50001 DROP VIEW IF EXISTS `subscribedtrips`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `subscribedtrips` AS SELECT 
 1 AS `tripId`,
 1 AS `originAddress`,
 1 AS `destAddress`,
 1 AS `beginDate`,
 1 AS `endDate`,
 1 AS `userId`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trip` (
  `tripId` int(11) NOT NULL AUTO_INCREMENT,
  `miles` int(11) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `numPassengers` int(11) DEFAULT NULL,
  `beginDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `driverID` int(11) DEFAULT NULL,
  `originAddress` int(11) DEFAULT NULL,
  `destAddress` int(11) DEFAULT NULL,
  `TripType` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`tripId`),
  KEY `FK_OriginAddress` (`originAddress`),
  KEY `FK_DestAddress` (`destAddress`),
  KEY `driver_index` (`driverID`),
  CONSTRAINT `FK_DestAddress` FOREIGN KEY (`destAddress`) REFERENCES `address` (`addressId`),
  CONSTRAINT `FK_OriginAddress` FOREIGN KEY (`originAddress`) REFERENCES `address` (`addressId`),
  CONSTRAINT `trip_ibfk_1` FOREIGN KEY (`driverID`) REFERENCES `busdriver` (`driverID`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip`
--

LOCK TABLES `trip` WRITE;
/*!40000 ALTER TABLE `trip` DISABLE KEYS */;
INSERT INTO `trip` VALUES (1,150,50.00,3,'2018-08-01 16:38:59','2018-08-04 16:38:59',18,216,122,'round'),(4,75,112.50,2,'2018-06-04 04:21:35','2018-06-07 04:21:35',94,310,195,'round'),(5,75,37.50,4,'2018-06-05 00:13:05','2018-06-08 00:13:05',72,222,48,'round'),(6,175,21.88,8,'2018-06-26 20:09:32','2018-06-29 20:09:32',64,393,110,'round'),(8,200,400.00,1,'2018-06-14 11:36:14','2018-06-17 11:36:14',78,385,30,'round'),(9,125,187.50,2,'2018-11-14 04:25:46','2018-11-17 04:25:46',46,368,100,'round'),(12,175,87.50,4,'2018-04-10 06:09:26','2018-04-13 06:09:26',30,397,308,'round'),(16,150,18.75,12,'2018-06-09 08:15:46','2018-06-12 08:15:46',52,82,26,'round'),(21,75,56.25,4,'2018-01-31 15:17:32','2018-02-03 15:17:32',50,354,285,'round'),(22,225,90.00,5,'2018-08-17 08:47:25','2018-08-20 08:47:25',72,194,347,'one-way'),(24,75,56.25,2,'2018-11-18 16:12:20','2018-11-21 16:12:20',52,375,245,'round'),(25,75,9.38,4,'2018-08-05 10:32:08','2018-08-08 10:32:08',86,42,143,'round'),(27,75,22.50,5,'2018-05-11 18:38:25','2018-05-14 18:38:25',52,269,53,'one-way'),(29,75,12.50,3,'2018-08-04 01:35:26','2018-08-07 01:35:26',40,340,379,'one-way'),(30,150,37.50,6,'2018-07-19 15:59:05','2018-07-22 15:59:05',52,387,244,'round'),(33,175,131.25,4,'2018-05-17 01:25:10','2018-05-20 01:25:10',50,22,337,'round'),(35,150,37.50,6,'2018-01-27 09:08:09','2018-01-30 09:08:09',54,21,282,'round'),(36,75,18.75,8,'2018-09-25 17:25:48','2018-09-28 17:25:48',76,280,395,'one-way'),(38,100,100.00,3,'2018-08-13 20:13:26','2018-08-16 20:13:26',42,317,112,'one-way'),(40,150,12.50,6,'2018-08-23 14:17:03','2018-08-26 14:17:03',40,258,382,'round'),(42,175,43.75,2,'2018-10-26 05:57:00','2018-10-29 05:57:00',88,251,270,'one-way'),(45,150,9.38,8,'2018-07-04 22:08:58','2018-07-07 22:08:58',82,23,97,'round'),(46,125,93.75,4,'2018-12-29 14:03:27','2019-01-01 14:03:27',50,240,400,'one-way'),(49,50,12.50,4,'2018-11-17 21:28:54','2018-11-20 21:28:54',20,109,93,'round'),(50,50,15.00,5,'2018-06-09 03:30:23','2018-06-12 03:30:23',8,274,261,'one-way'),(57,175,116.67,3,'2018-06-24 01:51:04','2018-06-27 01:51:04',78,112,266,'one-way'),(59,50,33.33,3,'2018-11-16 09:03:03','2018-11-19 09:03:03',80,156,41,'round'),(60,50,5.00,5,'2018-07-16 17:34:16','2018-07-19 17:34:16',84,173,278,'one-way'),(61,125,31.25,4,'2018-10-26 07:44:06','2018-10-29 07:44:06',66,133,227,'round'),(62,100,33.33,3,'2018-08-09 01:22:58','2018-08-12 01:22:58',68,173,55,'round'),(64,125,62.50,1,'2018-11-25 16:58:13','2018-11-28 16:58:13',86,245,156,'round'),(67,125,26.79,7,'2018-06-02 15:19:24','2018-06-05 15:19:24',8,222,104,'round'),(69,200,400.00,1,'2018-09-17 01:45:14','2018-09-20 01:45:14',30,300,341,'one-way'),(70,125,62.50,2,'2018-01-27 03:51:47','2018-01-30 03:51:47',62,176,4,'round'),(73,75,7.50,5,'2018-10-09 12:51:22','2018-10-12 12:51:22',82,219,124,'round'),(76,150,56.25,4,'2018-05-26 07:49:33','2018-05-29 07:49:33',56,63,356,'round'),(77,125,12.50,5,'2018-03-22 10:35:20','2018-03-25 10:35:20',36,373,335,'one-way'),(79,225,28.13,4,'2018-12-07 12:52:22','2018-12-10 12:52:22',88,36,297,'round'),(82,300,120.00,5,'2018-06-02 10:50:55','2018-06-05 10:50:55',80,206,215,'round'),(83,100,25.00,4,'2018-07-02 22:08:57','2018-07-05 22:08:57',66,263,18,'round'),(89,75,25.00,9,'2018-10-29 06:08:46','2018-11-01 06:08:46',50,298,13,'round'),(90,225,32.14,7,'2018-02-08 08:50:35','2018-02-11 08:50:35',62,360,331,'one-way'),(94,125,93.75,2,'2018-03-15 03:36:41','2018-03-18 03:36:41',4,373,343,'one-way'),(95,150,300.00,1,'2018-09-25 08:55:45','2018-09-28 08:55:45',24,304,38,'round'),(98,100,20.00,5,'2018-08-07 00:58:52','2018-08-10 00:58:52',64,209,1,'one-way'),(99,75,56.25,2,'2018-11-06 19:14:06','2018-11-09 19:14:06',8,151,334,'one-way'),(100,150,150.00,1,'2018-07-11 01:14:37','2018-07-14 01:14:37',66,116,149,'round'),(101,100,100.00,3,'2018-03-04 08:46:09','2018-03-07 08:46:09',44,259,103,'round'),(104,75,18.75,4,'2018-12-10 11:46:20','2018-12-13 11:46:20',14,6,60,'round'),(105,125,12.50,5,'2018-07-30 06:19:51','2018-08-02 06:19:51',90,363,298,'round'),(106,100,150.00,2,'2018-08-26 21:49:32','2018-08-29 21:49:32',98,75,51,'round'),(107,100,21.43,7,'2018-05-10 14:04:31','2018-05-13 14:04:31',8,60,216,'round'),(108,25,16.67,3,'2018-09-27 08:55:10','2018-09-30 08:55:10',26,148,271,'one-way'),(109,75,25.00,6,'2018-06-24 06:19:07','2018-06-27 06:19:07',28,378,382,'one-way'),(111,150,225.00,2,'2018-05-16 04:12:01','2018-05-19 04:12:01',100,104,194,'one-way'),(115,125,62.50,6,'2018-12-08 19:53:23','2018-12-11 19:53:23',50,231,278,'one-way'),(118,150,225.00,1,'2018-10-01 08:48:58','2018-10-04 08:48:58',4,91,118,'round'),(120,125,23.44,8,'2018-03-07 21:37:44','2018-03-10 21:37:44',54,176,349,'round'),(121,150,75.00,3,'2018-03-09 15:54:16','2018-03-12 15:54:16',8,158,42,'one-way'),(122,250,62.50,4,'2018-05-05 01:00:43','2018-05-08 01:00:43',14,109,133,'one-way'),(123,75,75.00,3,'2018-11-30 19:12:13','2018-12-03 19:12:13',42,373,177,'one-way'),(124,100,33.33,3,'2018-08-15 17:56:33','2018-08-18 17:56:33',62,142,370,'round'),(132,100,50.00,6,'2018-11-10 09:07:28','2018-11-13 09:07:28',42,373,283,'one-way'),(133,100,75.00,2,'2018-05-25 08:41:16','2018-05-28 08:41:16',60,119,262,'round'),(134,100,100.00,2,'2018-07-25 22:01:14','2018-07-28 22:01:14',30,366,380,'one-way'),(135,100,50.00,2,'2018-10-11 11:38:02','2018-10-14 11:38:02',16,142,208,'one-way'),(137,150,37.50,12,'2018-05-24 16:32:13','2018-05-27 16:32:13',94,50,66,'round'),(139,175,70.00,5,'2018-12-06 08:39:55','2018-12-09 08:39:55',30,96,141,'one-way'),(143,175,87.50,3,'2018-11-04 23:37:49','2018-11-07 23:37:49',8,117,292,'round'),(144,125,75.00,5,'2018-09-25 04:40:01','2018-09-28 04:40:01',96,36,148,'one-way'),(145,200,33.33,3,'2018-01-12 12:18:25','2018-01-15 12:18:25',32,278,386,'round'),(146,200,33.33,6,'2018-10-26 03:22:33','2018-10-29 03:22:33',68,110,12,'one-way'),(147,75,18.75,4,'2018-10-31 01:50:40','2018-11-03 01:50:40',18,33,11,'round'),(149,125,46.88,4,'2018-10-13 10:00:04','2018-10-16 10:00:04',4,305,135,'round'),(150,150,112.50,4,'2018-05-29 00:06:11','2018-06-01 00:06:11',94,138,364,'round'),(154,175,37.50,7,'2018-05-21 00:38:09','2018-05-24 00:38:09',58,195,280,'round'),(155,175,19.44,9,'2018-08-28 06:35:43','2018-08-31 06:35:43',12,246,31,'round'),(158,125,46.88,4,'2018-06-14 00:00:33','2018-06-17 00:00:33',54,344,171,'round'),(162,125,31.25,2,'2018-10-18 23:31:24','2018-10-21 23:31:24',34,390,290,'round'),(164,50,37.50,4,'2018-01-26 15:02:57','2018-01-29 15:02:57',96,372,330,'one-way'),(169,125,31.25,4,'2018-03-31 02:18:01','2018-04-03 02:18:01',68,224,293,'round'),(170,100,21.43,7,'2018-07-28 02:13:40','2018-07-31 02:13:40',58,339,103,'round'),(175,325,243.75,4,'2018-10-08 00:11:57','2018-10-11 00:11:57',98,60,58,'one-way'),(177,125,31.25,8,'2018-10-18 04:43:22','2018-10-21 04:43:22',26,158,313,'round'),(178,175,131.25,4,'2018-06-06 14:08:38','2018-06-09 14:08:38',98,151,52,'one-way'),(179,50,30.00,5,'2018-08-05 22:57:29','2018-08-08 22:57:29',48,323,381,'one-way'),(180,100,37.50,4,'2018-05-24 03:41:15','2018-05-27 03:41:15',56,77,259,'round'),(183,125,62.50,3,'2018-04-25 01:36:24','2018-04-28 01:36:24',4,103,264,'round'),(185,100,20.00,5,'2018-04-25 20:04:58','2018-04-28 20:04:58',62,211,280,'one-way'),(189,150,60.00,5,'2018-06-28 14:04:26','2018-07-01 14:04:26',28,271,128,'one-way'),(195,175,131.25,2,'2018-06-15 20:43:01','2018-06-18 20:43:01',60,155,357,'one-way'),(197,75,112.50,2,'2018-04-15 13:46:18','2018-04-18 13:46:18',44,314,7,'one-way'),(198,200,66.67,3,'2018-08-17 23:27:03','2018-08-20 23:27:03',64,91,231,'one-way'),(199,125,25.00,5,'2018-04-13 05:11:44','2018-04-16 05:11:44',62,167,309,'one-way'),(201,150,25.00,6,'2018-08-01 16:38:59','2018-08-04 16:38:59',18,216,122,'one-way'),(204,125,62.50,6,'2018-06-04 04:21:35','2018-06-07 04:21:35',94,310,195,'one-way'),(205,125,125.00,2,'2018-06-05 00:13:05','2018-06-08 00:13:05',72,222,48,'one-way'),(206,75,12.50,6,'2018-06-26 20:09:32','2018-06-29 20:09:32',64,393,110,'one-way'),(208,200,100.00,4,'2018-06-14 11:36:14','2018-06-17 11:36:14',78,385,30,'one-way'),(209,125,75.00,5,'2018-11-14 04:25:46','2018-11-17 04:25:46',46,368,100,'one-way'),(212,150,50.00,6,'2018-04-10 06:09:26','2018-04-13 06:09:26',30,397,308,'round'),(216,100,37.50,4,'2018-06-09 08:15:46','2018-06-12 08:15:46',52,82,26,'round'),(221,25,37.50,2,'2018-01-31 15:17:32','2018-02-03 15:17:32',50,354,285,'one-way'),(222,125,62.50,4,'2018-08-17 08:47:25','2018-08-20 08:47:25',72,194,347,'one-way'),(224,125,37.50,5,'2018-11-18 16:12:20','2018-11-21 16:12:20',52,375,245,'one-way'),(225,150,12.50,6,'2018-08-05 10:32:08','2018-08-08 10:32:08',86,42,143,'one-way'),(227,150,45.00,5,'2018-05-11 18:38:25','2018-05-14 18:38:25',52,269,53,'one-way'),(229,150,25.00,3,'2018-08-04 01:35:26','2018-08-07 01:35:26',40,340,379,'one-way'),(230,200,60.00,5,'2018-07-19 15:59:05','2018-07-22 15:59:05',52,387,244,'one-way'),(233,125,125.00,3,'2018-05-17 01:25:10','2018-05-20 01:25:10',50,22,337,'one-way'),(235,125,31.25,6,'2018-01-27 09:08:09','2018-01-30 09:08:09',54,21,282,'one-way'),(236,125,50.00,5,'2018-09-25 17:25:48','2018-09-28 17:25:48',76,280,395,'round'),(238,225,337.50,2,'2018-08-13 20:13:26','2018-08-16 20:13:26',42,317,112,'one-way'),(240,125,15.63,4,'2018-08-23 14:17:03','2018-08-26 14:17:03',40,258,382,'round'),(242,175,29.17,3,'2018-10-26 05:57:00','2018-10-29 05:57:00',88,251,270,'one-way'),(245,125,15.63,4,'2018-07-04 22:08:58','2018-07-07 22:08:58',82,23,97,'one-way'),(246,125,93.75,4,'2018-12-29 14:03:27','2019-01-01 14:03:27',50,240,400,'one-way'),(249,175,35.00,5,'2018-11-17 21:28:54','2018-11-20 21:28:54',20,109,93,'round'),(250,100,37.50,4,'2018-06-09 03:30:23','2018-06-12 03:30:23',8,274,261,'one-way'),(257,175,87.50,4,'2018-06-24 01:51:04','2018-06-27 01:51:04',78,112,266,'one-way'),(259,100,40.00,5,'2018-11-16 09:03:03','2018-11-19 09:03:03',80,156,41,'round'),(260,125,20.83,3,'2018-07-16 17:34:16','2018-07-19 17:34:16',84,173,278,'one-way'),(261,75,25.00,3,'2018-10-26 07:44:06','2018-10-29 07:44:06',66,133,227,'round'),(262,75,25.00,3,'2018-08-09 01:22:58','2018-08-12 01:22:58',68,173,55,'round'),(264,225,28.13,4,'2018-11-25 16:58:13','2018-11-28 16:58:13',86,245,156,'one-way'),(267,150,112.50,2,'2018-06-02 15:19:24','2018-06-05 15:19:24',8,222,104,'one-way'),(269,150,37.50,8,'2018-09-17 01:45:14','2018-09-20 01:45:14',30,300,341,'round'),(270,75,25.00,3,'2018-01-27 03:51:47','2018-01-30 03:51:47',62,176,4,'round'),(273,75,9.38,4,'2018-10-09 12:51:22','2018-10-12 12:51:22',82,219,124,'round'),(276,200,100.00,3,'2018-05-26 07:49:33','2018-05-29 07:49:33',56,63,356,'one-way'),(277,200,11.11,9,'2018-03-22 10:35:20','2018-03-25 10:35:20',36,373,335,'one-way'),(279,200,25.00,4,'2018-12-07 12:52:22','2018-12-10 12:52:22',88,36,297,'round'),(282,200,200.00,2,'2018-06-02 10:50:55','2018-06-05 10:50:55',80,206,215,'round'),(283,100,25.00,4,'2018-07-02 22:08:57','2018-07-05 22:08:57',66,263,18,'one-way'),(289,50,37.50,4,'2018-10-29 06:08:46','2018-11-01 06:08:46',50,298,13,'round'),(290,50,12.50,4,'2018-02-08 08:50:35','2018-02-11 08:50:35',62,360,331,'round'),(294,100,75.00,2,'2018-03-15 03:36:41','2018-03-18 03:36:41',4,373,343,'one-way'),(295,100,100.00,2,'2018-09-25 08:55:45','2018-09-28 08:55:45',24,304,38,'round'),(298,150,50.00,3,'2018-08-07 00:58:52','2018-08-10 00:58:52',64,209,1,'one-way'),(299,150,56.25,4,'2018-11-06 19:14:06','2018-11-09 19:14:06',8,151,334,'one-way'),(300,125,41.67,3,'2018-07-11 01:14:37','2018-07-14 01:14:37',66,116,149,'round');
/*!40000 ALTER TABLE `trip` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_trip_insert
before insert on Trip
for each row
BEGIN
IF (new.beginDate > new.endDate) or (new.TripType != 'round' AND new.TripType != 'one-way') then 
signal sqlstate '45000';
END IF;
if new.price is null then
call getPrice(new.TripType, new.driverId, new.numPassengers, new.miles, @price);
set new.price = (select @price);
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_trip_update
before update on Trip
for each row
BEGIN
IF (new.beginDate > new.endDate) OR (new.TripType != 'round' AND new.TripType != 'one-way') then 
signal sqlstate '45000';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `tripdriverinfo`
--

DROP TABLE IF EXISTS `tripdriverinfo`;
/*!50001 DROP VIEW IF EXISTS `tripdriverinfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tripdriverinfo` AS SELECT 
 1 AS `tripId`,
 1 AS `miles`,
 1 AS `price`,
 1 AS `numPassengers`,
 1 AS `beginDate`,
 1 AS `endDate`,
 1 AS `originAddress`,
 1 AS `destAddress`,
 1 AS `tripType`,
 1 AS `driverID`,
 1 AS `busType`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `userpertrip`
--

DROP TABLE IF EXISTS `userpertrip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpertrip` (
  `tripId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`tripId`,`userId`),
  KEY `userId` (`userId`),
  KEY `UserTrip_index` (`tripId`),
  CONSTRAINT `userpertrip_ibfk_1` FOREIGN KEY (`tripId`) REFERENCES `trip` (`tripId`),
  CONSTRAINT `userpertrip_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `client` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpertrip`
--

LOCK TABLES `userpertrip` WRITE;
/*!40000 ALTER TABLE `userpertrip` DISABLE KEYS */;
INSERT INTO `userpertrip` VALUES (101,1),(106,1),(204,1),(235,1),(245,1),(143,3),(201,3),(121,5),(149,5),(269,5),(277,5),(132,7),(198,7),(264,7),(22,9),(98,9),(179,9),(79,11),(115,11),(227,11),(61,13),(105,13),(137,13),(145,13),(225,13),(178,15),(224,15),(240,15),(273,15),(137,17),(221,17),(120,19),(216,21),(35,23),(45,23),(109,23),(169,23),(189,23),(295,23),(107,25),(122,27),(283,27),(36,29),(45,29),(120,29),(222,29),(269,29),(273,29),(30,31),(122,31),(139,31),(262,31),(277,33),(298,33),(46,35),(89,35),(133,35),(162,35),(204,35),(242,35),(259,35),(144,37),(158,37),(121,39),(209,39),(6,41),(83,41),(107,41),(144,41),(206,41),(238,41),(277,41),(12,43),(16,43),(143,43),(257,43),(16,45),(22,45),(59,45),(139,45),(240,45),(79,47),(201,47),(277,47),(27,49),(46,49),(61,49),(120,49),(137,49),(147,49),(155,49),(212,49),(235,49),(109,51),(132,51),(177,51),(208,51),(229,51),(1,53),(45,53),(73,53),(115,53),(150,53),(16,55),(236,55),(27,57),(36,59),(61,59),(109,59),(299,59),(35,61),(49,61),(199,61),(262,61),(276,61),(6,63),(149,63),(201,63),(98,65),(5,67),(30,67),(42,67),(57,67),(67,67),(90,67),(109,67),(158,67),(230,67),(235,67),(298,67),(29,69),(62,69),(90,69),(99,69),(164,69),(233,69),(246,69),(279,69),(60,71),(67,71),(82,71),(83,71),(104,71),(120,71),(134,71),(199,71),(205,73),(259,73),(59,75),(123,75),(150,75),(206,75),(38,77),(111,77),(155,77),(204,77),(260,77),(40,79),(67,79),(233,79),(178,81),(73,83),(170,83),(120,85),(36,87),(236,87),(29,89),(33,89),(204,89),(277,89),(67,91),(209,91),(270,93),(295,93),(29,95),(57,95),(139,95),(179,95),(83,97),(169,97),(230,97),(6,99),(45,99),(107,99),(107,101),(149,101),(225,101),(269,101),(82,102),(230,102),(49,103),(73,103),(76,103),(115,103),(277,103),(132,104),(134,104),(212,104),(277,104),(294,104),(299,104),(30,105),(89,105),(282,105),(89,106),(105,106),(137,106),(147,106),(16,107),(22,107),(90,107),(120,107),(124,107),(150,107),(199,107),(16,108),(67,108),(115,108),(120,108),(154,108),(257,108),(264,108),(89,109),(94,109),(104,109),(16,110),(45,110),(178,110),(260,110),(283,110),(115,111),(137,111),(158,111),(180,111),(290,111),(122,112),(238,112),(259,112),(180,113),(269,113),(21,114),(45,114),(77,114),(89,114),(154,114),(185,114),(206,114),(1,115),(12,115),(25,115),(27,115),(60,115),(95,115),(98,115),(180,115),(262,115),(36,116),(133,116),(222,116),(21,117),(62,117),(146,117),(158,117),(289,117),(90,118),(101,118),(108,119),(208,119),(9,120),(70,120),(154,120),(175,120),(224,120),(273,120),(289,120),(24,121),(79,121),(137,121),(146,121),(164,121),(177,121),(189,121),(212,121),(33,122),(82,122),(90,122),(155,122),(177,122),(249,122),(250,122),(36,123),(149,123),(208,123),(98,124),(105,124),(137,124),(177,124),(201,124),(12,125),(67,125),(197,125),(257,125),(82,126),(206,126),(261,126),(60,127),(162,127),(240,127),(118,128),(124,128),(189,128),(201,128),(212,128),(249,128),(70,129),(137,129),(164,129),(273,129),(24,130),(107,130),(137,130),(290,130),(189,131),(227,131),(229,131),(230,131),(240,131),(16,132),(89,132),(175,132),(204,132),(22,133),(40,133),(45,133),(132,133),(139,133),(246,133),(132,134),(177,134),(209,134),(269,134),(50,135),(146,135),(177,135),(224,135),(300,135),(77,136),(89,136),(38,137),(62,137),(155,137),(212,137),(261,137),(276,137),(8,138),(79,138),(206,138),(230,138),(245,138),(267,138),(6,139),(235,139),(33,140),(89,140),(137,140),(197,140),(27,141),(36,141),(82,141),(111,141),(6,142),(224,142),(277,142),(298,142),(5,143),(108,143),(198,143),(235,143),(67,145),(73,145),(105,145),(154,145),(216,146),(35,147),(42,147),(121,147),(146,147),(155,147),(189,147),(246,147),(154,148),(242,148),(246,148),(50,149),(175,149),(279,149),(154,150),(178,150),(195,150),(257,150),(35,151),(115,151),(209,151),(77,152),(123,152),(135,152),(185,152),(155,153),(170,153),(177,153),(199,153),(245,153),(259,153),(282,153),(64,154),(155,154),(279,154),(27,155),(30,155),(50,155),(98,155),(106,155),(30,157),(89,157),(169,157),(183,157),(175,158),(236,158),(283,158),(109,159),(120,159),(195,159),(16,160),(139,160),(227,160),(229,160),(35,161),(76,161),(124,161),(183,161),(264,161),(25,162),(46,162),(146,162),(225,162),(146,163),(269,163),(77,164),(107,164),(143,164),(155,164),(201,164),(205,164),(209,164),(221,164),(249,164),(16,165),(40,165),(105,165),(236,165),(279,165),(21,166),(135,166),(260,166),(170,167),(179,167),(299,167),(46,168),(61,168),(147,168),(177,168),(183,168),(261,168),(40,169),(170,169),(264,169),(290,169),(6,170),(16,170),(33,170),(36,170),(94,170),(206,170),(83,171),(25,172),(59,172),(76,173),(180,173),(242,173),(1,174),(6,174),(40,174),(147,174),(185,174),(225,174),(225,175),(276,175),(30,176),(76,176),(179,176),(300,176),(170,177),(267,177),(269,177),(283,177),(90,178),(104,178),(198,178),(224,178),(227,178),(236,178),(154,179),(222,179),(259,179),(49,180),(108,181),(170,181),(185,181),(199,181),(4,182),(16,182),(155,182),(222,182),(25,183),(60,183),(216,183),(77,184),(144,184),(212,184),(12,185),(250,185),(9,186),(50,186),(100,186),(179,186),(269,186),(16,188),(107,188),(164,188),(169,188),(233,188),(22,189),(45,189),(60,189),(99,189),(150,189),(49,190),(132,190),(145,190),(185,190),(249,190),(290,190),(5,191),(50,191),(57,191),(208,191),(249,191),(21,192),(69,192),(101,192),(109,192),(270,192),(300,192),(40,193),(137,193),(145,193),(170,193),(235,193),(250,193),(299,193),(6,194),(73,194),(104,194),(122,194),(225,194),(289,194),(90,195),(137,195),(144,195),(4,196),(5,196),(38,196),(270,196),(277,196),(245,197),(144,198),(204,198),(227,198),(250,198),(289,198),(36,199),(35,200),(123,200),(216,200),(294,200);
/*!40000 ALTER TABLE `userpertrip` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER update_trip_info_insert
after insert on UserPerTrip
for each row
BEGIN
update trip set trip.numPassengers = trip.numPassengers + 1 where trip.tripId = new.tripId;
call calculatePrice(new.tripId);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER update_trip_info_delete
after delete on UserPerTrip
for each row
BEGIN
update trip set trip.numPassengers = trip.numPassengers - 1 where trip.tripId = old.tripId;
if (select numPassengers from trip where tripId = old.tripId) > 0 then
call calculatePrice(old.tripId);
else update trip set price = 0 where tripId = old.tripId;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'assemblebus'
--

--
-- Dumping routines for database 'assemblebus'
--
/*!50003 DROP PROCEDURE IF EXISTS `calculatePrice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculatePrice`(IN inId INT)
BEGIN

DECLARE bus VARCHAR(25);
DECLARE type VARCHAR(10);
SET bus = (SELECT busType FROM busdriver WHERE driverID = (SELECT driverID from Trip where tripId=inId));
IF bus = 'Motorcoach' THEN update trip set price = ((miles*1.5)/numPassengers) WHERE tripId = inId;
ELSEIF bus = 'Mini Bus' THEN update trip set price = ((miles)/numPassengers) WHERE tripId = inId;
ELSEIF bus = 'Executive Bus' THEN update trip set price = ((miles*2)/numPassengers) WHERE tripId = inId;
ELSEIF bus = 'School Bus' THEN update trip set price = ((miles*0.5)/numPassengers) WHERE tripId = inId;
ELSE update trip set price = ((miles*3)/numPassengers) WHERE tripId = inId;
END IF;

SET type = (SELECT TripType FROM trip WHERE tripId=inId);
IF type = 'round' then 
update trip set price = price*2 where tripId=inId;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetPrice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPrice`(IN type VARCHAR(7), IN myDriverId int, IN numPassengers INT, IN miles INT, OUT price Decimal(10,2))
BEGIN

DECLARE bus VARCHAR(25);
SET bus = (SELECT busType FROM busdriver WHERE driverID = myDriverId);
IF bus = 'Motorcoach' THEN set price = ((miles*1.5)/numPassengers);
ELSEIF bus = 'Mini Bus' THEN set price = ((miles)/numPassengers);
ELSEIF bus = 'Executive Bus' THEN set price = ((miles*2)/numPassengers);
ELSEIF bus = 'School Bus' THEN set price = ((miles*0.5)/numPassengers);
ELSE set price = ((miles*3)/numPassengers);
END IF;

IF type = 'round' then set price = price*2;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `futuretrips`
--

/*!50001 DROP VIEW IF EXISTS `futuretrips`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `futuretrips` AS select `trip`.`tripId` AS `tripId`,`trip`.`originAddress` AS `originAddress`,`trip`.`destAddress` AS `destAddress`,`trip`.`beginDate` AS `beginDate`,`trip`.`endDate` AS `endDate` from `trip` where (`trip`.`beginDate` > now()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rallypointinfo`
--

/*!50001 DROP VIEW IF EXISTS `rallypointinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rallypointinfo` AS select `rallypoint`.`pointId` AS `pointId`,`address`.`street` AS `street`,`address`.`city` AS `city`,`address`.`state` AS `state`,`address`.`country` AS `country` from (`rallypoint` join `address` on((`rallypoint`.`pointId` = `address`.`addressId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `subscribedtrips`
--

/*!50001 DROP VIEW IF EXISTS `subscribedtrips`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `subscribedtrips` AS select `trip`.`tripId` AS `tripId`,`trip`.`originAddress` AS `originAddress`,`trip`.`destAddress` AS `destAddress`,`trip`.`beginDate` AS `beginDate`,`trip`.`endDate` AS `endDate`,`userpertrip`.`userId` AS `userId` from (`trip` join `userpertrip` on((`trip`.`tripId` = `userpertrip`.`tripId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tripdriverinfo`
--

/*!50001 DROP VIEW IF EXISTS `tripdriverinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tripdriverinfo` AS select `trip`.`tripId` AS `tripId`,`trip`.`miles` AS `miles`,`trip`.`price` AS `price`,`trip`.`numPassengers` AS `numPassengers`,`trip`.`beginDate` AS `beginDate`,`trip`.`endDate` AS `endDate`,`trip`.`originAddress` AS `originAddress`,`trip`.`destAddress` AS `destAddress`,`trip`.`TripType` AS `tripType`,`busdriver`.`driverID` AS `driverID`,`busdriver`.`busType` AS `busType` from (`busdriver` left join `trip` on((`trip`.`driverID` = `busdriver`.`driverID`))) */;
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

-- Dump completed on 2018-05-01 17:38:12
