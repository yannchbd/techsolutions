-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: techsolutions
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `components`
--

DROP TABLE IF EXISTS `components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components`
--

LOCK TABLES `components` WRITE;
/*!40000 ALTER TABLE `components` DISABLE KEYS */;
INSERT INTO `components` VALUES (1,'AMD Ryzen 9 9950X3D (4.3 GHz / 5.7 GHz)','CPU001'),(2,'AMD Ryzen 9 7950X (4.5 GHz / 5.7 GHz)','CPU002'),(3,'AMD Ryzen 7 7800X3D (4.2 GHz / 5.0 GHz)','CPU003'),(4,'Intel Core i9 14900K (3.2 GHz / 5.8 GHz)','CPU004'),(5,'Intel Core i7-14700KF (3.4 GHz / 5.6 GHz)','CPU005'),(6,'Intel Core i7-14700K (3.4 GHz / 5.6 GHz)','CPU006'),(7,'Intel Core i9-12900K (3.2 GHz / 5.2 GHz)','CPU007'),(8,'Intel Core Ultra 9 285K (3.7 GHz / 5.7 GHz)','CPU008'),(9,'AMD Ryzen 5 7600 Wraith Stealth (3.8 GHz / 5.1 GHz)','CPU009'),(10,'AMD Ryzen 5 5600XT Wraith Stealth (3.7 GHz / 4.7 GHz)','CPU010'),(11,'Intel Arc A380 Challenger ITX OC 6GB GDDR6','GPU001'),(12,'ASUS Dual GeForce RTX 5050 8GB','GPU002'),(13,'NVIDIA RTX A4000 Carte Graphique Professionnelle','GPU003'),(14,'ASUS Dual NVIDIA GeForce RTX 4060 Ti Evo OC Edition','GPU004'),(15,'NVIDIA RTX A2000 ','GPU005'),(16,'Nvidia GT710 954 MHz 2048 Mo PCI Express Noir','GPU006'),(17,'NVIDIA GeForce RTX 3050','GPU007'),(18,'MSI GeForce RTX 5070 Ti 16G VENTUS 3X OC','GPU008'),(19,'ASUS PRIME GeForce RTX 5080 16GB GDDR7 OC Edition','GPU009'),(20,'Gigabyte GeForce RTX 3060 WINDFORCE OC 12G (LHR)','GPU010'),(21,'Textorm 16 Go (2x 8 Go) DDR4 3200 MHz CL16','RAM001'),(22,'Textorm 32 Go (2x 16 Go) DDR4 3200 MHz CL16','RAM002'),(23,'Textorm 16 Go (2x 8 Go) DDR4 2666 MHz CL19','RAM003'),(24,'Textorm 32 Go (2x 16 Go) DDR4 2666 MHz CL19','RAM004'),(25,'Corsair Dominator Platinum DDR5 RGB 32 Go (2 x 16 Go) 6200 MHz CL36','RAM005'),(26,'Corsair Vengeance DDR5 32 Go (2 x 16 Go) 7200 MHz CL34 - Noir','RAM006'),(27,'Corsair Vengeance RGB DDR5 64 Go (2 x 32 Go) 6400 MHz CL42 - Noir','RAM007'),(28,'G.Skill Trident Z5 32 Go (2 x 16 Go) DDR5 7600 MHz CL36 - Noir','RAM008'),(29,'G.Skill Trident Z5 Neo RGB Series 32 Go (2x 16 Go) DDR5 8000 MHz CL38','RAM009'),(30,'G.Skill Trident Z5 CK 48 Go (2 x 24 Go) DDR5 9000 MHz CL42 - Noir','RAM010'),(31,'',''),(32,'Fox Spirit PM70 PRO M.2 NVMe 960 Go PCIe 4.0','SSD001'),(33,'Textorm BM40 M.2 2280 PCIE NVME 1920 Go','SSD002'),(34,'Corsair Force MP600 CORE XT R2 2 To','SSD003'),(35,'Corsair Force MP600 CORE XT 4 To','SSD004'),(36,'Corsair Force MP600 GS 1 To','SSD005'),(37,'Corsair Force MP600 GS 500 Go','SSD006'),(38,'Samsung SSD 9100 PRO M.2 PCIe NVMe 8 To avec dissipateur','SSD007'),(39,'Samsung SSD 9100 PRO M.2 PCIe NVMe 4 To avec dissipateur','SSD008'),(40,'Crucial T710 2 To - Avec dissipateur','SSD009'),(41,'Crucial T710 1 To - Avec dissipateur','SSD010'),(42,'Antec C5 ARGB (Noir)','BOI001'),(43,'Lian Li LANCOOL III Noir','BOI002'),(44,'NZXT H7 Flow Noir (2024)','BOI003'),(45,'Corsair 5000T (Noir)','BOI004'),(46,'be quiet! Pure Base 500 (Noir)','BOI005'),(47,'be quiet! Shadow Base 800 - Noir','BOI006'),(48,'Antec Performance 1 FT','BOI007'),(49,'Corsair 3500X (Blanc)','BOI008'),(50,'Fox Spirit EG1 (Noir)','BOI009'),(51,'Antec FLUX (Noir)','BOI010'),(52,'Fox Spirit HG 1000 80PLUS Gold','ALI001'),(53,'Fox Spirit HG 750 80PLUS Gold','ALI002'),(54,'Fox Spirit HG 850 80PLUS Gold','ALI003'),(55,'Antec HCG1000 Pro Platinum ATX 3.1','ALI004'),(56,'Antec HCG850 Pro Platinum ATX 3.1','ALI005'),(57,'be quiet! Pure Power 12 650W 80PLUS Gold','ALI006'),(58,'be quiet! Power Zone 2 850W 80PLUS Platinum','ALI007'),(59,'be quiet! Power Zone 2 1000W 80PLUS Platinum','ALI008'),(60,'ASUS ROG MAXIMUS Z890 HERO','CM001'),(61,'ASUS ROG MAXIMUS Z890 HERO BTF','CM002'),(62,'ASUS PRIME Z890-P WIFI','CM003'),(63,'Gigabyte B650 EAGLE AX','CM004'),(64,'ASUS PRIME B550-PLUS','CM005'),(65,'MSI B760 GAMING PLUS WIFI DDR4','CM006'),(66,'ASUS ProArt B650-CREATOR','CM007'),(67,'ASUS PRIME B550-PLUS','CM008'),(68,'Gigabyte B650E AORUS ELITE X AX ICE','CM009'),(69,'MSI MEG X870E GODLIKE','CM010'),(70,'Fox Spirit GT120','REF001'),(71,'Antec FrigusAir 400 ARGB','REF002'),(72,'be quiet! Dark Rock Elite','REF003'),(73,'be quiet! Dark Rock Slim','REF004'),(74,'Arctic Freezer 36 CO','REF005'),(75,'Arctic Liquid Freezer III Pro 360 (Noir)','REF006'),(76,'Arctic Liquid Freezer III Pro 420 (Noir)','REF007'),(77,'be quiet! Light Loop 240 mm','REF008'),(78,'be quiet! Light Loop 360 mm','REF009'),(79,'ASUS ROG Strix LC III 360','REF010'),(80,'Altyk 27\" LED - AQ27','ECR001'),(81,'Fox Spirit 34\" LED - PGN341','ECR002'),(82,'Acer 23.8\" LED - Vero V247YGbmipx','ECR003'),(83,'ASUS ROG Swift OLED PG32UCDP 32\"','ECR004'),(84,'Acer 21.5\" LED - Vero B227QE3bmiprxv','ECR005'),(85,'INOVU 27\" LED - MB27 V3','ECR006'),(86,'INOVU 27\" LED - MBQ27','ECR007'),(87,'Amzfast AMZG32C3Q - malvoyants','ECR008'),(88,'Gawfolk écran PC IPS Ultra-Large de 34 Pouces','ECR009'),(89,'Samsung Ecran PC Odyssey G9 49\'\' 240Hz','ECR010'),(90,'Logitech K860 Ergo','CLA001'),(91,'Clavier Azerty USB Noir et Braille','CLA002'),(92,'Logitech Signature K650 Graphite','CLA003'),(93,'Corsair K100 AIR (Cherry MX Ultra Low Profile)','CLA004'),(94,'INOVU BW10 AZERTY+ (AZERTY, Français)','CLA005'),(95,'INOVU BW10 (QWERTY, International)','CLA006'),(96,'TECKNET Mouse Pro S2','SOU001'),(97,'Logitech Lift Right Souris Ergonomique Verticale','SOU002'),(98,'Logitech Lift Left Souris Ergonomique Verticale','SOU003'),(99,'Wacom MovinkPad 11','SOU004'),(100,'Razer Viper V3 HyperSpeed','SOU005'),(101,'Tapis De Souris avec Repose Poignet en Gel','TAP001'),(102,'Tapis de souris XXL','TAP002'),(103,'Tapis de souris de jeu en verre 400 mm x 500 mm','TAP003'),(104,'Epson Solution d\'Impression A4 Blanche EcoTank ET-3956 avec Wi-FI','IMP001'),(105,'Canon PIXMA iX6850','IMP002'),(106,'Ricoh Image Scanner SP-1130N','SCA001'),(107,'Brother DS-640','SCA002'),(108,'Logitech C922 Pro','WEB001'),(109,'Logitech BRIO','WEB002'),(110,'Microsoft Windows 11 Professionnel - Version clé USB','LOG001'),(111,'Linux Mint','LOG002'),(112,'Microsoft 365 Business Standard - abonnement annuel','LOG003'),(113,'LibreOffice','LOG004'),(114,'Norton 360 Advanced - abonnement annuel','LOG005'),(115,'Kaspersky Small Office Security - 50 abonnement','LOG006'),(116,'Brother HL-L8360CDW','IMP003'),(117,'Audio-Technica ATH-GL3 Noir','CAS001'),(118,'Audio-Technica ATH-M50xSTS-USB','CAS002'),(119,'ThinkPad X1 Carbon Gen 13','PCP001');
/*!40000 ALTER TABLE `components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pc_components`
--

DROP TABLE IF EXISTS `pc_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pc_components` (
  `pc_id` int(10) unsigned NOT NULL,
  `component_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pc_id`,`component_id`),
  KEY `component_id` (`component_id`),
  CONSTRAINT `pc_components_ibfk_1` FOREIGN KEY (`pc_id`) REFERENCES `pcs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pc_components_ibfk_2` FOREIGN KEY (`component_id`) REFERENCES `components` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pc_components`
--

LOCK TABLES `pc_components` WRITE;
/*!40000 ALTER TABLE `pc_components` DISABLE KEYS */;
INSERT INTO `pc_components` VALUES (1,1),(1,10),(1,29),(1,34),(1,44),(1,54),(1,66),(1,75),(1,85),(1,86),(1,93),(1,96),(1,102),(1,111),(1,113),(2,4),(2,17),(2,28),(2,34),(2,35),(2,47),(2,55),(2,62),(2,72),(2,85),(2,86),(2,92),(2,96),(2,102),(2,111),(2,113),(3,1),(3,18),(3,27),(3,40),(3,45),(3,59),(3,66),(3,79),(3,81),(3,83),(3,93),(3,99),(3,100),(3,103),(3,110),(3,112),(4,9),(4,12),(4,22),(4,33),(4,42),(4,53),(4,65),(4,70),(4,80),(4,92),(4,96),(4,101),(4,108),(4,110),(4,112),(5,9),(5,17),(5,22),(5,32),(5,46),(5,57),(5,64),(5,73),(5,82),(5,85),(5,92),(5,96),(5,101),(5,108),(5,110),(5,112),(6,10),(6,16),(6,21),(6,32),(6,50),(6,57),(6,64),(6,70),(6,80),(6,94),(6,96),(6,101),(6,110),(6,112),(7,9),(7,19),(7,25),(7,40),(7,45),(7,59),(7,60),(7,76),(7,83),(7,89),(7,93),(7,100),(7,103),(7,109),(7,110),(7,112),(7,115),(8,9),(8,17),(8,22),(8,33),(8,46),(8,57),(8,64),(8,73),(8,85),(8,87),(8,91),(8,97),(8,101),(8,110),(8,112),(8,118);
/*!40000 ALTER TABLE `pc_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcs`
--

DROP TABLE IF EXISTS `pcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcs`
--

LOCK TABLES `pcs` WRITE;
/*!40000 ALTER TABLE `pcs` DISABLE KEYS */;
INSERT INTO `pcs` VALUES (1,'PC Développeur logiciel','https://media.ldlc.com/r705/ld/products/00/06/14/85/LD0006148565.jpg'),(2,'PC Infrastructures et réseau','https://media.ldlc.com/r705/ld/products/00/06/06/28/LD0006062803.jpg'),(3,'PC Design UX/UI','https://media.ldlc.com/r705/ld/products/00/06/21/80/LD0006218081.jpg'),(4,'PC Marketing/Vente','https://media.ldlc.com/r705/ld/products/00/06/12/71/LD0006127172.jpg'),(5,'PC Support client','https://media.ldlc.com/r705/ld/products/00/05/46/04/LD0005460496_2_0006083186.jpg'),(6,'PC RH et Administration','https://media.ldlc.com/r705/ld/products/00/06/27/81/LD0006278180.jpg'),(7,'PC Direction','https://media.ldlc.com/r705/ld/products/00/06/21/80/LD0006218081.jpg'),(8,'PC Déficient visuel','https://media.ldlc.com/r705/ld/products/00/05/46/04/LD0005460496_2_0006083186.jpg');
/*!40000 ALTER TABLE `pcs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-12  9:13:33
