-- MySQL dump 10.13  Distrib 5.6.22, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: Gaia
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `Book`
--

DROP TABLE IF EXISTS `Book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Book` (
  `ProductID` int(11) NOT NULL,
  `ISBN` varchar(45) DEFAULT NULL,
  `BookName` varchar(100) DEFAULT NULL,
  `Author` varchar(45) DEFAULT NULL,
  `PublishDate` year(4) DEFAULT NULL,
  `Publisher` varchar(45) DEFAULT NULL,
  `Description` longtext,
  PRIMARY KEY (`ProductID`),
  CONSTRAINT `ProductIDConstrain` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Book`
--

LOCK TABLES `Book` WRITE;
/*!40000 ALTER TABLE `Book` DISABLE KEYS */;
INSERT INTO `Book` VALUES (200011,'978-1511823562','Ultimate Gardening Book: 5 Gardening Books in 1','Joy Louis',2015,'CreateSpace Independent Publishing Platform','The ULTIMATE 5 IN 1 GARDENING COMBO! THIS WILL BE THE LAST GARDENING BOOK YOU’LL EVER NEED! SQUARE FOOT GARDENING + CONTAINER GARDENING + VERTICAL GARDENING + STRAW BALE GARDENING + CONTAINER GARDENING + URBAN HOMESTEADING!! 5 BOOKS IN 1! GROW THE BEST IN ORGANIC VEGETABLES, ORGANIC FRUITS AND ORGANIC HERBS! Perfect for Gardening Beginners or Seasoned Veterans! DO NOT PASS THIS ONE UP! By #1 Best Selling Author, Joy Louis!\n'),(200012,'B00WYPXRK4','Gardening: Raised Bed Gardening: Vegetable and Flower Growing Made Easy! ','Laura Smith',2015,'CreateSpace Independent Publishing Platform','Learn Gardening Secrets and Techniques to Produce the Delicious Organic Vegetables and Fruits'),(200013,'978-1580115636','The Beginner\'s Guide to Gardening','Editors of Creative Homeowner',2012,'Creative Homeowner','A beautifully illustrated and photographed book that will serve both the novice and experienced gardener well. The Beginner\'s Guide to Gardening contains all the basics: garden design; how to select healthy plants; how prepare the soil; garden maintenace, and so much more. In addition there is everything you need to know about growing  annuals and  perennials; roses; flowering bulbs; herbs; ground covers; trees and shrubs; vegetable gardens; and creating specialty gardens--all in a concise book'),(200014,'B00WYPXRK4','Gardening: The Ultimate Beginner\'s Guide','Laura Smith',2015,'Amazon Digital Services','Learn how to grow organic Vegetables and fruits the Easy WayWhen you download this book, you\'ll find out exactly what is involved in creating a garden that can provide you with fresh veggies and herbs for years to come. It also explains the advantages that organic gardening has over conventional gardening! \n');
/*!40000 ALTER TABLE `Book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `CustID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Street` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `States` char(2) DEFAULT NULL,
  `Zip` varchar(5) DEFAULT NULL,
  `Phone` char(10) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `CustomerReview_ReviewID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CustID`),
  KEY `fk_Customer_CustomerReview1_idx` (`CustomerReview_ReviewID`),
  KEY `Zip_idx` (`Zip`),
  CONSTRAINT `fk_Customer_CustomerReview1` FOREIGN KEY (`CustomerReview_ReviewID`) REFERENCES `CustomerReview` (`ReviewID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=100010 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (100001,'Bob','Smith','100 Main st','New Haven','CT','06511','2033334444','bob.smith@gmail.com',NULL),(100002,'Robert','Schartz','120 Church St','West Haven','CT','06516','2037867342','robert.schartz@yahoo.com',NULL),(100003,'Alice','Wong','1302 Wall St','Hartford','CT','06101','8608888888','alice.wong@gmail.com',NULL),(100004,'George','Simon','543 South St','Albany','NY','12233','2819999999','george.simon@outlook.com',NULL),(100009,'yong','deng','300 main st','west haven','ct','06516','2038888888','yong@gmail.com',NULL);
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerReview`
--

DROP TABLE IF EXISTS `CustomerReview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomerReview` (
  `ReviewID` int(11) NOT NULL AUTO_INCREMENT,
  `CustID` int(11) DEFAULT NULL,
  `OrderNumber` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Rate` int(11) DEFAULT NULL,
  `ReviewDetail` mediumtext,
  `ReviewDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ReviewID`),
  KEY `CustID_idx` (`CustID`),
  KEY `ProductID_idx` (`ProductID`),
  KEY `OrderNumber_idx` (`OrderNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerReview`
--

LOCK TABLES `CustomerReview` WRITE;
/*!40000 ALTER TABLE `CustomerReview` DISABLE KEYS */;
/*!40000 ALTER TABLE `CustomerReview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DVD`
--

DROP TABLE IF EXISTS `DVD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DVD` (
  `ProductID` int(11) NOT NULL,
  `DVDName` varchar(100) DEFAULT NULL,
  `PulisherTime` year(4) DEFAULT NULL,
  `Description` longtext,
  `Product_ProductID` int(11) NOT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `fk_DVD_Product1_idx` (`Product_ProductID`),
  CONSTRAINT `ProductIDCons` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_DVD_Product1` FOREIGN KEY (`Product_ProductID`) REFERENCES `Product` (`ProductID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DVD`
--

LOCK TABLES `DVD` WRITE;
/*!40000 ALTER TABLE `DVD` DISABLE KEYS */;
INSERT INTO `DVD` VALUES (200007,'Perennial Vegetable Gardening with Eric Toensmeier ',2012,'Imagine growing vegetables that require just about the same amount of care as perennial flowers and shrubs, need no annual tilling or planting, yet thrive and produce abundant and nutritious crops throughout the season. In this DVD a culmination of workshops recorded in Mexico, Florida, and Massachusetts plant specialist Eric Toensmeier introduces gardeners to more than 100 species of little-known, underappreciated plants. Ranging beyond the usual suspects (asparagus, rhubarb, and artichoke) to include such delights as ground cherry, ramps, air potatoes, the fragrant spring tree, and the much-sought-after, antioxidant-rich wolfberry (also known as the goji berry), Toensmeier explains how to raise, tend, harvest, and cook with plants that yield great crops and culinary satisfaction. Toensmeier also takes viewers on a plant-by-plant tour of his garden in Massachusetts.\n',200007),(200008,'The Complete Gardener: Great Gardening Tips',2007,'Prepare to be amazed as host Steve Brookes guides you around the garden in this fun and informative DVD. He\'ll show you a whole host of money-saving, innovative tips for growing healthier plants and tackling many common garden problems. Brookes will shows you how to use vacuum cleaner fluff as a superb tomato feed, banish cats from borders with a teabag and a can of muscle spray, stop slugs and snails in their tracks with a handful of horsehair, and much, much, more! BONUS FEATURE: Plot-2-Pot: a unique and fun combination of gardening and cookery featuring the talents of Steve Brookes and renowned celebrity chef Peter Osbourne. Learn to grow edible crops regardless of the size of your plot and cook up something wonderful in your pot. Steve Brookes is an award-winning TV & radio gardening presenter and author. Apprx 100 mins, color, interactive menus.',200008),(200009,'Homestead Blessings: The Art of Gardening\n',2009,'Everything from a small container garden in a city backyard to a large vegetable garden, this DVD is packed with helpful instruction to help you grow beautiful healthy flowers and vegetables. Includes composting, pest control, container gardening, vegetables, potato patches, climate conditions, flowers, and much more.',200009),(200010,'The Art & Practice of Gardening / Penelope Hobhouse\n',2008,'Penelope Hobhouse is England\'s leading garden writer, garden designer, garden historian, lecturer and gardener, and host of The Art and Practice of Gardening (produced by Perennial Productions) for Home and Garden Television in the USA. \nDISC 1 \nROSES FOR THE GARDEN features top rose authorities and rose gardens: world renowned rosarian David Austin Sr. from his Nursery & Rose Garden in Albrighton; Patrick Taylor on the glory of old roses at Mottisfont Abbey. VISIONS OF NATURE: The Naturalistic Garden Style explores today s most sought after garden style on both sides of the Atlantic, with a stunning visual tour of England\'s greatest 18th century landscape garden, Stourhead, and two of America\'s great naturalist gardens: Winterthur Gardens\' March Walk and Longwood Garden\'s native plant woodland garden, Peirce\'s Woods. STRUCTURAL ELEMENTS: Garden Architecture & Ornament features the 20th century\'s grand dame of British horticulture, Rosemary Verey in her equally renowned Barnsley House garden.. Hobhouse covers all the structural essentials, large and small: from steps, walls, and paving, to pots, paint color and garden furnishings THE SUMMER GARDEN sets out Hobhouse\'s secrets for summer beauty and abundance using a blend of annuals, perennials and biennials in her garden at Bettiscombe, and with Sandra Pope in her spectacular yellow border at Hadspen House. NURSERIES & PLANT COLLECTIONS: Hobhouse explores the Victorian era walled gardens at West Dean with Jim Buckland and Sarah Wain. NEW GARDEN IDEAS explores new alternative garden styles, from her first gravel garden at Bettiscombe to the eclectic mix of garden styles and plants at John Brookes\' Denmans Garden, and James Van Sweden\'s innovative garden fronting the Chesapeake Bay in Maryland.\n\nDISC 2\n\nFLOWER GARDENS leads with Marco Polo Stufano and his no-nonsense secrets for success from the celebrated Wave Hill Flower Garden. Penelope Hobhouse shares her insights from her own flower garden in Dorset. PLANTING THE BONES OF A GARDEN covers avenues and allees, plant repetition and rhythms, as Hobhouse presents the defining ingredients of every garden. Hobhouse explores two illustrative examples: the all-green topiary garden and the flower walk in its full spring glory. COLOR IN THE GARDEN serves up color theory basics and the art of applying it in the garden. from Helen Dillon and her celebrated blue, red and yellow color borders, to the gentle hues of Winterthur\'s Azalea woods. THE USEFUL GARDEN presents both time-honored and contemporary interpretations that combine the useful with the ornamental: with garden writer Anna Pavord in the restored, centuries old walled kitchen garden at Forde Abbey; and Hobhouse in her front compost and cutting garden at Bettiscombe. THE SMALLER GARDEN features renowned American landscape architect James Van Sweden in a small private town garden he created in Washington, D.C., and Hobhouse with London Times garden editor, Stephen Anderton in the exceptional series of small garden rooms at England\'s Wollerton Old Hall. THE COUNTRY GARDEN illumines how country garden principles can well apply to an urban or suburban setting, featuring John Brookes from his Denmans Garden in West Sussex, and Hobhouse with Irish garden designer Jim Reynolds in his enchanting Butterstream Garden. DESIGN BASICS highlights the most important aspects to consider in good garden design. She illustrates, from Athelhampton in Dorset, how grand public gardens offer a wealth of design and horticultural examples that can be applied to the smallest garden.',200010);
/*!40000 ALTER TABLE `DVD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HardinessZone`
--

DROP TABLE IF EXISTS `HardinessZone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HardinessZone` (
  `Zip` varchar(5) NOT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Zone` int(11) DEFAULT NULL,
  PRIMARY KEY (`Zip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HardinessZone`
--

LOCK TABLES `HardinessZone` WRITE;
/*!40000 ALTER TABLE `HardinessZone` DISABLE KEYS */;
INSERT INTO `HardinessZone` VALUES ('01101','Springfield','MA',5),('02361','Plymouth','MA',6),('02601','Hyannis','MA',7),('02840','Newport','RI',6),('02918','Providence','RI',6),('06006','Windsor','CT',6),('06095','Windsor','CT',6),('06096','Windsor Locks','CT',6),('06101','Hartford','CT',6),('06102','Hartford','CT',6),('06103','Hartford','CT',6),('06104','Hartford','CT',6),('06105','Hartford','CT',6),('06106','Hartford','CT',6),('06112','Hartford','CT',6),('06114','Hartford','CT',6),('06115','Hartford','CT',6),('06120','Hartford','CT',6),('06123','Hartford','CT',6),('06126','Hartford','CT',6),('06132','Hartford','CT',6),('06134','Hartford','CT',6),('06140','Hartford','CT',6),('06141','Hartford','CT',6),('06142','Hartford','CT',6),('06143','Hartford','CT',6),('06144','Hartford','CT',6),('06145','Hartford','CT',6),('06146','Hartford','CT',6),('06147','Hartford','CT',6),('06150','Hartford','CT',6),('06151','Hartford','CT',6),('06152','Hartford','CT',6),('06153','Hartford','CT',6),('06154','Hartford','CT',6),('06155','Hartford','CT',6),('06156','Hartford','CT',6),('06160','Hartford','CT',6),('06161','Hartford','CT',6),('06167','Hartford','CT',6),('06176','Hartford','CT',6),('06180','Hartford','CT',6),('06183','Hartford','CT',6),('06199','Hartford','CT',6),('06239','Danielson','CT',6),('06280','Windham','CT',6),('06320','New London','CT',6),('06351','Jewett City','CT',6),('06437','Guilford','CT',7),('06450','Meriden','CT',6),('06451','Meriden','CT',6),('06454','Meriden','CT',6),('06501','New Haven','CT',7),('06502','New Haven','CT',7),('06503','New Haven','CT',7),('06504','New Haven','CT',7),('06505','New Haven','CT',7),('06506','New Haven','CT',7),('06507','New Haven','CT',7),('06508','New Haven','CT',7),('06509','New Haven','CT',7),('06510','New Haven','CT',7),('06511','New Haven','CT',7),('06513','New Haven','CT',7),('06515','New Haven','CT',7),('06516','West Haven','CT',7),('06519','New Haven','CT',7),('06520','New Haven','CT',7),('06521','New Haven','CT',7),('06530','New Haven','CT',7),('06531','New Haven','CT',7),('06532','New Haven','CT',7),('06533','New Haven','CT',7),('06534','New Haven','CT',7),('06535','New Haven','CT',7),('06536','New Haven','CT',7),('06537','New Haven','CT',7),('06538','New Haven','CT',7),('06540','New Haven','CT',7),('06601','Bridgeport','CT',7),('06602','Bridgeport','CT',7),('06604','Bridgeport','CT',7),('06605','Bridgeport','CT',7),('06606','Bridgeport','CT',7),('06607','Bridgeport','CT',7),('06608','Bridgeport','CT',7),('06610','Bridgeport','CT',7),('06650','Bridgeport','CT',7),('06673','Bridgeport','CT',7),('06699','Bridgeport','CT',7),('06701','Waterbury','CT',6),('06702','Waterbury','CT',6),('06703','Waterbury','CT',6),('06704','Waterbury','CT',6),('06705','Waterbury','CT',6),('06706','Waterbury','CT',6),('06708','Waterbury','CT',6),('06710','Waterbury','CT',6),('06716','Wolcott','CT',6),('06720','Waterbury','CT',6),('06721','Waterbury','CT',6),('06722','Waterbury','CT',6),('06723','Waterbury','CT',6),('06724','Waterbury','CT',6),('06725','Waterbury','CT',6),('06726','Waterbury','CT',6),('06749','Waterbury','CT',6),('06810','Danbury','CT',6),('06811','Danbury','CT',6),('06813','Danbury','CT',6),('06814','Danbury','CT',6),('06816','Danbury','CT',6),('06817','Danbury','CT',6),('06830','Greenwich','CT',7),('06831','Greenwich','CT',7),('06832','Greenwich','CT',7),('06836','Greenwich','CT',7),('10708','Bronx','NY',7),('11201','Brooklyn','NY',7),('11717','Brentwood','NY',7),('12233','Albany','NY',5),('13021','Auburn','NY',6),('13902','Binghamton','NY',5),('14020','Batavia','NY',5),('14270','Buffalo','NY',7),('14850','Ithaca','NY',6);
/*!40000 ALTER TABLE `HardinessZone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Login`
--

DROP TABLE IF EXISTS `Login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Login` (
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `CustID` int(11) DEFAULT NULL,
  `Customer_CustID` int(11) DEFAULT NULL,
  `Alert` char(1) DEFAULT NULL,
  PRIMARY KEY (`UserName`),
  KEY `fk_Login_Customer_idx` (`Customer_CustID`),
  KEY `CustID_idx` (`CustID`),
  CONSTRAINT `CustID_Constrain` FOREIGN KEY (`CustID`) REFERENCES `Customer` (`CustID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_Login_Customer` FOREIGN KEY (`Customer_CustID`) REFERENCES `Customer` (`CustID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Login`
--

LOCK TABLES `Login` WRITE;
/*!40000 ALTER TABLE `Login` DISABLE KEYS */;
INSERT INTO `Login` VALUES ('yong','yong',100009,NULL,NULL);
/*!40000 ALTER TABLE `Login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderLine`
--

DROP TABLE IF EXISTS `OrderLine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderLine` (
  `OrderNumber` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT '0',
  `Quantity` int(11) DEFAULT NULL,
  `Orders_OrderNumber` int(11) DEFAULT NULL,
  `subTotal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OrderNumber`),
  KEY `fk_OrderLine_Orders1_idx` (`Orders_OrderNumber`),
  KEY `ProductID_idx` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderLine`
--

LOCK TABLES `OrderLine` WRITE;
/*!40000 ALTER TABLE `OrderLine` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderLine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orders` (
  `OrderNumber` int(11) NOT NULL AUTO_INCREMENT,
  `CustID` int(11) DEFAULT NULL,
  `PurchaseDate` datetime DEFAULT NULL,
  `Customer_CustID` int(11) DEFAULT NULL,
  `isProcessed` tinytext,
  PRIMARY KEY (`OrderNumber`),
  KEY `fk_Order_Customer1_idx` (`Customer_CustID`),
  KEY `CustID_idx` (`CustID`),
  CONSTRAINT `CustID` FOREIGN KEY (`CustID`) REFERENCES `Customer` (`CustID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_Order_Customer1` FOREIGN KEY (`Customer_CustID`) REFERENCES `Customer` (`CustID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Plant`
--

DROP TABLE IF EXISTS `Plant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Plant` (
  `ProductID` int(11) NOT NULL,
  `PlantCatID` int(11) DEFAULT NULL,
  `PlantName` varchar(45) DEFAULT NULL,
  `SunTolerance` varchar(45) DEFAULT NULL,
  `BlossomColor` varchar(45) DEFAULT NULL,
  `BotanicalName` varchar(45) DEFAULT NULL,
  `WaterRequirement` varchar(45) DEFAULT NULL,
  `ContainerSize` varchar(45) DEFAULT NULL,
  `MatureLength` varchar(45) DEFAULT NULL,
  `AdditionalChar` mediumtext,
  `Product_ProductID` int(11) NOT NULL,
  `PlantCategory_PlantCatID` int(11) NOT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `fk_Plant_Product1_idx` (`Product_ProductID`),
  KEY `fk_Plant_PlantCategory1_idx` (`PlantCategory_PlantCatID`),
  KEY `PlantCatID_idx` (`PlantCatID`),
  CONSTRAINT `PlantCatID` FOREIGN KEY (`PlantCatID`) REFERENCES `PlantCategory` (`PlantCatID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `ProductID` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_Plant_PlantCategory1` FOREIGN KEY (`PlantCategory_PlantCatID`) REFERENCES `PlantCategory` (`PlantCatID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Plant_Product1` FOREIGN KEY (`Product_ProductID`) REFERENCES `Product` (`ProductID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Plant`
--

LOCK TABLES `Plant` WRITE;
/*!40000 ALTER TABLE `Plant` DISABLE KEYS */;
INSERT INTO `Plant` VALUES (200001,1,'Supertunia Royal Velvet Petunia','Full Sun','Purple','Petunia','Medium','4.25 in ','12 in ','Deer Resistant,Disease Resistant,Drought Tolerant,Hummingbird/Butterfly Attractant ',200001,1),(200002,6,'June Plantain Lily','Full Shade','Lavender','Hosta \'June ','Medium',NULL,'10 in ','Hummingbird/Butterfly Attractant ',200002,6),(200003,2,'Incrediball Hydrangea Shrub','Full Sun ','White','Hydrangea arborescens \'Incrediball',NULL,NULL,'48 in ','Disease Resistant ',200003,2),(200004,3,'Kwanzan Cherry Tree','Full Sun ','White','Prunus serrulata \'Kwanzan ',NULL,NULL,'240 ','	\nNone Listed ',200004,3),(200005,5,'Cateracterum Palm','Medium','No Blossoms ','Chamaedorea cataractarum ','Medium','10 in ','72 in ',NULL,200005,5),(200006,4,'Goji Berry','Full Sun',NULL,'Lycium barbarum ','Medium','10 in','6 - 8 ft ','	\nNone Listed ',200006,4);
/*!40000 ALTER TABLE `Plant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PlantCategory`
--

DROP TABLE IF EXISTS `PlantCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PlantCategory` (
  `PlantCatID` int(11) NOT NULL,
  `PlantCatName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PlantCatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PlantCategory`
--

LOCK TABLES `PlantCategory` WRITE;
/*!40000 ALTER TABLE `PlantCategory` DISABLE KEYS */;
INSERT INTO `PlantCategory` VALUES (1,'Annuals'),(2,'Shrubs'),(3,'Trees'),(4,'Fruit Plants'),(5,'House Plants'),(6,'Perrennials');
/*!40000 ALTER TABLE `PlantCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Plant_Zone`
--

DROP TABLE IF EXISTS `Plant_Zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Plant_Zone` (
  `ProductID` int(11) NOT NULL,
  `Zone` int(11) NOT NULL,
  PRIMARY KEY (`ProductID`,`Zone`),
  CONSTRAINT `ProductIDC` FOREIGN KEY (`ProductID`) REFERENCES `Plant` (`ProductID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Plant_Zone`
--

LOCK TABLES `Plant_Zone` WRITE;
/*!40000 ALTER TABLE `Plant_Zone` DISABLE KEYS */;
INSERT INTO `Plant_Zone` VALUES (200001,10),(200001,11),(200002,3),(200002,4),(200002,5),(200002,6),(200002,7),(200002,8),(200003,4),(200003,5),(200003,6),(200003,7),(200003,8),(200004,4),(200004,5),(200004,6),(200004,7),(200004,8),(200006,5),(200006,6),(200006,7),(200006,8),(200006,9);
/*!40000 ALTER TABLE `Plant_Zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Product` (
  `ProductID` int(11) NOT NULL,
  `Price` float DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `ProductName` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (200001,9.99,20,'Supertunia Royal Velvet Petunia'),(200002,18.95,9,'June Plantain Lily'),(200003,5.12,30,'Incrediball Hydrangea Shrub'),(200004,6.78,44,'Kwanzan Cherry Tree'),(200005,7.98,5,'Cateracterum Palm'),(200006,18.9,78,'Goji Berry'),(200007,9,32,'Perennial Vegetable Gardening with Eric Toensmeier '),(200008,10,22,'The Complete Gardener: Great Gardening Tips'),(200009,10,32,'Homestead Blessings: The Art of Gardening'),(200010,10,20,'The Art & Practice of Gardening / Penelope Hobhouse'),(200011,5,50,'Ultimate Gardening Book: 5 Gardening Books in 1'),(200012,6,5,'Gardening: Raised Bed Gardening: Vegetable and Flower Growing Made Easy! '),(200013,9,34,'The Beginner\'s Guide to Gardening'),(200014,12,23,'Gardening: The Ultimate Beginner\'s Guide'),(200015,11.97,22,'5.5 in. Bypass Pruner'),(200016,87.98,5,'True Temper 6 cu. ft. Wheelbarrow with Steel Handles and Flat Free Tire'),(200017,399,30,'Toro Personal Pace Recycler 22 in. Variable Speed Self-Propelled Gas Lawn Mower with Briggs & Stratton Engine'),(200018,15.9,89,'Vertex Garden Essentials Tools Set');
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tools`
--

DROP TABLE IF EXISTS `Tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tools` (
  `ProductID` int(11) NOT NULL,
  `ToolName` varchar(150) DEFAULT NULL,
  `AdditionalChar` longtext,
  `Product_ProductID` int(11) NOT NULL,
  PRIMARY KEY (`ProductID`),
  CONSTRAINT `ProductIDConst` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tools`
--

LOCK TABLES `Tools` WRITE;
/*!40000 ALTER TABLE `Tools` DISABLE KEYS */;
INSERT INTO `Tools` VALUES (200015,'5.5 in. Bypass Pruner','Model # 91049666D',200015),(200016,'True Temper 6 cu. ft. Wheelbarrow with Steel Handles and Flat Free Tire','Model # 71099866C',200016),(200017,'Toro Personal Pace Recycler 22 in. Variable Speed Self-Propelled Gas Lawn Mower with Briggs & Stratton Engine','Model # 91045354A',200017),(200018,'Vertex Garden Essentials Tools Set','Model # 51096566J',200018);
/*!40000 ALTER TABLE `Tools` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-28 17:23:02
