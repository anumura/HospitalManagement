CREATE DATABASE  IF NOT EXISTS `hospitalmanagement` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospitalmanagement`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospitalmanagement
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `bookappointment`
--

DROP TABLE IF EXISTS `bookappointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookappointment` (
  `Appointment_id` int NOT NULL AUTO_INCREMENT,
  `Doctor_First_Name` varchar(20) DEFAULT NULL,
  `Doctor_Last_Name` varchar(20) DEFAULT NULL,
  `Speciality` varchar(15) DEFAULT NULL,
  `Appointment_Date` date DEFAULT NULL,
  `Location` varchar(10) DEFAULT NULL,
  `Timeslot` varchar(10) DEFAULT NULL,
  `Description` varchar(30) DEFAULT NULL,
  `Mobile` varchar(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=801167558 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookappointment`
--

LOCK TABLES `bookappointment` WRITE;
/*!40000 ALTER TABLE `bookappointment` DISABLE KEYS */;
INSERT INTO `bookappointment` VALUES (801167554,'Rajesh','Anumula','Dentist','2020-11-26','BALLANTYNE','9:00AM','Dentist','7044211748','sdsds@gmail.com'),(801167555,'Rajesh','Anumula','Dentist','2020-12-24','BALLANTYNE','9:00AM','Teeth Pain','7044211748','rajesh@gmail.com'),(801167556,'Rajesh','Anumula','Dentist','2021-01-01','BALLANTYNE','9:00AM','Teethpain','7044211748','rajesh@gmail.com'),(801167557,'Mounik','RN','Dentist','2020-12-31','PINEVILLE','11:30AM','Wisdom Teeth','9652139125','mounikarn@gmail.com');
/*!40000 ALTER TABLE `bookappointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctordetails`
--

DROP TABLE IF EXISTS `doctordetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctordetails` (
  `Doctor_id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Gender` varchar(7) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Mobile` varchar(10) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(50) NOT NULL,
  `Education` varchar(50) DEFAULT NULL,
  `specilization` varchar(20) DEFAULT NULL,
  `Experience` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`Doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctordetails`
--

LOCK TABLES `doctordetails` WRITE;
/*!40000 ALTER TABLE `doctordetails` DISABLE KEYS */;
INSERT INTO `doctordetails` VALUES (1,'Rajesh','Anumula','Male','1995-10-10','7044211748','rajeshanumula@hotmail.com','Hello123','MBBS','Dentist','5'),(2,'Doctor1','Doctor1','Male','1994-08-09','7044211748','Doctor1@gmail.com','Doctor1','MBBS','Cardilogist','10'),(3,'Mounik','RN','Female','1992-08-09','7044211749','mounik@gmail.com','123456','MBBS','Dentist','5');
/*!40000 ALTER TABLE `doctordetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientdetails`
--

DROP TABLE IF EXISTS `patientdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientdetails` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `Password` varchar(50) NOT NULL,
  `patientName` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Mobile` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `maritalstatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientdetails`
--

LOCK TABLES `patientdetails` WRITE;
/*!40000 ALTER TABLE `patientdetails` DISABLE KEYS */;
INSERT INTO `patientdetails` VALUES (5,'123456','Rajesh','Male','1995-08-07',25,'7044211748','rajesh@gmail.com',NULL),(6,'123456','Mounika','Female','1992-08-09',28,'7044211740','mounikarn@gmail.com',NULL);
/*!40000 ALTER TABLE `patientdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_admin` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admin`
--

LOCK TABLES `tbl_admin` WRITE;
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` VALUES (1,'Admin','7044125622','admin@gmail.com','123456'),(2,'rajesh','9802115466','rajeshreddy@gmail.com','123456');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_admin_has_patientdetails`
--

DROP TABLE IF EXISTS `tbl_admin_has_patientdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_admin_has_patientdetails` (
  `tbl_admin_id` int NOT NULL,
  `patientdetails_patient_id` int DEFAULT NULL,
  PRIMARY KEY (`tbl_admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admin_has_patientdetails`
--

LOCK TABLES `tbl_admin_has_patientdetails` WRITE;
/*!40000 ALTER TABLE `tbl_admin_has_patientdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_admin_has_patientdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hospitalmanagement'
--

--
-- Dumping routines for database 'hospitalmanagement'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-03 12:40:38
