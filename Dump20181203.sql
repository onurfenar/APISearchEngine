CREATE DATABASE  IF NOT EXISTS `apisepeti` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `apisepeti`;
-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: apisepeti
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `api`
--

DROP TABLE IF EXISTS `api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `application_id` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `isactive` varchar(50) DEFAULT NULL,
  `sample_uri` varchar(500) DEFAULT NULL,
  `sample_request` varchar(500) DEFAULT NULL,
  `sample_response` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api`
--

LOCK TABLES `api` WRITE;
/*!40000 ALTER TABLE `api` DISABLE KEYS */;
INSERT INTO `api` VALUES (7,0,0,'DENEME API','DENEME API ACIKLAMASI','TRAVEL','N','asdsad','asda','dasdasd'),(8,0,0,'ASDSADSAD','ASDADAD','WEATHER','N','asd','asd','asd'),(9,0,0,'sa','SADSADSAD','BOOKS','N','zxc','xzcxz','zxczxczxc');
/*!40000 ALTER TABLE `api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lov_categories`
--

DROP TABLE IF EXISTS `lov_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `lov_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  `category_description` varchar(100) DEFAULT NULL,
  `category_language` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lov_categories`
--

LOCK TABLES `lov_categories` WRITE;
/*!40000 ALTER TABLE `lov_categories` DISABLE KEYS */;
INSERT INTO `lov_categories` VALUES (9,'NEWS',NULL,'EN'),(10,'SPORTS',NULL,'EN'),(11,'ALL',NULL,'EN'),(12,'E-SHOPPING',NULL,'EN'),(13,'MAPS',NULL,'EN'),(14,'WEATHER',NULL,'EN'),(15,'BOOKS',NULL,'EN'),(16,'TRAVEL',NULL,'EN'),(17,'GAMES',NULL,'EN'),(18,'LIFE',NULL,'EN');
/*!40000 ALTER TABLE `lov_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_applications`
--

DROP TABLE IF EXISTS `user_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_applications` (
  `user_application_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_application_name` varchar(50) DEFAULT NULL,
  `user_application_description` varchar(50) DEFAULT NULL,
  `user_application_category` varchar(50) DEFAULT NULL,
  `user_application_isactive` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_application_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_applications`
--

LOCK TABLES `user_applications` WRITE;
/*!40000 ALTER TABLE `user_applications` DISABLE KEYS */;
INSERT INTO `user_applications` VALUES (4,0,'deneme application','denememe1','asdasdsad','Y'),(5,0,'deneme2','asdsad','asdsadasd','Y');
/*!40000 ALTER TABLE `user_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_password` varchar(20) DEFAULT NULL,
  `user_role` varchar(1) DEFAULT NULL,
  `user_address` varchar(100) DEFAULT NULL,
  `user_active` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (7,'denemeUser','denemeUser','denemeUser','N','denemeUser',NULL),(8,'asda','asdsa','asdasd','N','asdasd',NULL),(9,'ONUR','onurfenar@gmail.com','123213','N','asdasdasdasd',NULL),(10,'ONURFENAR','onurfenar@gmail.com','123123213','N','asdsadda',NULL),(11,'asdad','asdasd','aasdasd','N','asdasdasd',NULL),(12,'ONUR','FENAR@ONUR.COM','12345','N','FENAR@ONUR.COM',NULL),(13,'ASD','ASDASD','ASDASD','N','ASDASDADD',NULL),(14,'onurfenar','onurfenar@gmail.com','1232341','N','ASDASD',NULL),(15,'onur','onurfenar2@gmail.com','','N','onurfenar@gmail.com',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-03 15:35:17
