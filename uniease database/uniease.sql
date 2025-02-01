-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: unieasedb
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `admit`
--

DROP TABLE IF EXISTS `admit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admit` (
  `StudentID` int NOT NULL,
  `SectionID` int NOT NULL,
  `CourseID` int NOT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`StudentID`,`SectionID`),
  KEY `ad_fk2` (`SectionID`),
  CONSTRAINT `ad_fk1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`),
  CONSTRAINT `ad_fk2` FOREIGN KEY (`SectionID`) REFERENCES `section` (`SectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admit`
--

LOCK TABLES `admit` WRITE;
/*!40000 ALTER TABLE `admit` DISABLE KEYS */;
INSERT INTO `admit` VALUES (1001,1,31,'Accepted'),(1001,5,32,'Accepted'),(1001,9,33,'Accepted'),(1001,16,34,'Requested'),(1001,18,35,'Requested'),(1001,22,36,'Requested'),(1001,39,40,'Requested'),(1006,6,32,'Accepted'),(1006,10,33,'Accepted'),(1006,26,37,'Requested'),(1011,1,31,'Accepted'),(1011,3,31,'Accepted'),(1011,7,32,'Accepted'),(1011,11,33,'Accepted'),(1016,1,31,'Accepted'),(1016,12,33,'Accepted'),(1016,16,34,'Accepted'),(1016,20,35,'Accepted'),(1021,29,38,'Accepted'),(1021,33,39,'Accepted'),(1021,37,40,'Accepted'),(1022,22,36,'Accepted'),(1022,26,37,'Accepted'),(1022,30,38,'Accepted'),(1023,31,38,'Accepted'),(1023,35,39,'Accepted'),(1023,39,40,'Accepted'),(1024,24,36,'Accepted'),(1024,28,37,'Accepted'),(1024,32,38,'Accepted'),(1025,1,31,'Accepted'),(1025,5,32,'Accepted'),(1025,9,33,'Accepted'),(1026,10,33,'Accepted'),(1026,14,34,'Accepted'),(1026,18,35,'Accepted'),(1027,2,31,'Requested'),(1027,5,32,'Requested'),(1027,22,36,'Requested'),(1027,37,40,'Requested'),(1028,16,34,'Requested'),(1028,26,37,'Requested'),(1028,29,38,'Requested'),(1029,5,32,'Requested'),(1030,2,31,'Requested'),(1030,5,32,'Requested'),(1030,9,33,'Requested'),(1030,16,34,'Requested'),(1030,18,35,'Requested'),(1030,24,36,'Requested'),(1030,37,40,'Requested'),(1036,3,31,'Requested'),(1036,6,32,'Requested'),(1036,22,36,'Requested'),(1036,37,40,'Requested'),(1037,2,31,'Requested'),(1037,5,32,'Requested'),(1037,12,33,'Requested'),(1039,6,32,'Requested'),(1039,11,33,'Accepted'),(1039,18,35,'Requested'),(1040,5,32,'Requested'),(1040,11,33,'Accepted');
/*!40000 ALTER TABLE `admit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content` (
  `SectionID` int DEFAULT NULL,
  `CourseContentTitle` varchar(200) DEFAULT NULL,
  `CourseContent` varchar(300) DEFAULT NULL,
  KEY `con_fk1` (`SectionID`),
  CONSTRAINT `con_fk1` FOREIGN KEY (`SectionID`) REFERENCES `section` (`SectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,' Introduction to Programming and Computer Science - Full Course','http://www.youtube.com/watch?v=zOjov-2OZ0E '),(2,' Introduction to Programming and Computer Science - Full Course','http://www.youtube.com/watch?v=zOjov-2OZ0E '),(3,' Introduction to Programming and Computer Science - Full Course','http://www.youtube.com/watch?v=zOjov-2OZ0E '),(4,' Introduction to Programming and Computer Science - Full Course','http://www.youtube.com/watch?v=zOjov-2OZ0E '),(5,' Introduction to Programming and Computer Science - Full Course','http://www.youtube.com/watch?v=zOjov-2OZ0E '),(6,' Introduction to Programming and Computer Science - Full Course','http://www.youtube.com/watch?v=zOjov-2OZ0E '),(7,' Introduction to Programming and Computer Science - Full Course','http://www.youtube.com/watch?v=zOjov-2OZ0E '),(8,' Introduction to Programming and Computer Science - Full Course','http://www.youtube.com/watch?v=zOjov-2OZ0E '),(9,' Introduction to Programming and Computer Science - Full Course','http://www.youtube.com/watch?v=zOjov-2OZ0E '),(1,'Algorithms and Data Structures Tutorial - Full Course for Beginners','http://www.youtube.com/watch?v=8hly31xKli0'),(1,'What Are Cybersecurity Fundamentals?','http://www.youtube.com/watch?v=8hly31xKli0'),(1,'Algorithms and Data Structures Tutorial - Full Course for Beginners ','http://www.youtube.com/watch?v=8hly31xKli0'),(15,'Computer Networking Explained | Cisco CCNA 200-301','http://www.youtube.com/watch?v=tSodBEAJz9Y'),(15,'Cloud Computing In 6 Minutes | What Is Cloud Computing? | Cloud Computing Explained','http://www.youtube.com/watch?v=M988_fsOSWo'),(1,'What is Algorithm','https://www.geeksforgeeks.org/introduction-to-algorithms');
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `CourseID` int NOT NULL,
  `CourseName` varchar(100) NOT NULL,
  `Credits` int NOT NULL,
  `DepartmentID` int DEFAULT NULL,
  `CourseDescription` varchar(300) DEFAULT NULL,
  `CourseMaterial` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`CourseID`),
  KEY `cou_fk1` (`DepartmentID`),
  CONSTRAINT `cou_fk1` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`),
  CONSTRAINT `course_chk_1` CHECK ((`Credits` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Introduction to Programming',3,1,'Learn the basics of programming, including syntax, variables, loops, and functions.','Introduction to Programming by John Smith'),(2,'Data Structures and algorithms',3,1,'Detailed exploration of data structures like arrays, trees, and graphs, and algorithm design.','Data Structures and Algorithms by Narasimha Karumanchi'),(3,'Object Oriented Programming',3,1,'Focuses on object-oriented principles like inheritance, encapsulation, and polymorphism.','Object-Oriented Programming in Java by Herbert Schildt'),(4,'Operating Systems',3,1,'Introduction to operating systems, processes, threads, memory management, and file systems.','Operating System Concepts by Silberschatz'),(5,'Database Systems',3,1,'Learn database design, SQL, and optimization techniques.','Database System Concepts by Silberschatz'),(6,'Software Engineering',3,1,'Covers software development methodologies, testing, and design patterns.','Software Engineering by Pressman'),(7,'Artificial Intelligence',3,1,'Learn the basics of AI, including search algorithms, machine learning, and expert systems.','Artificial Intelligence: A Modern Approach by Stuart Russell'),(8,'Computer Networks',3,1,'Introduction to networking protocols, architectures, and network security.','Computer Networking by Kurose'),(9,'Machine Learning',3,1,'Study of supervised and unsupervised learning algorithms and their applications.','Hands-On Machine Learning with Scikit-Learn by Géron'),(10,'Web Development',3,1,'Focuses on building modern web applications using front-end and back-end technologies.','Modern Full-Stack Development by Zammetti'),(11,'Management Principles',3,2,NULL,NULL),(12,'Finance and Accounting',3,2,NULL,NULL),(13,'Marketing',3,2,NULL,NULL),(14,'Economics',3,2,NULL,NULL),(15,'Business Communication',3,2,NULL,NULL),(16,'Fundamentals of Electrical Engineering',3,3,NULL,NULL),(17,'Electronics',3,3,NULL,NULL),(18,'Electrical Circuits',3,3,NULL,NULL),(19,'Power Systems',3,3,NULL,NULL),(20,'Signal Processing',3,3,NULL,NULL),(21,'Electromagnetic Fields',3,3,NULL,NULL),(22,'Communication Systems',3,3,NULL,NULL),(23,'Engineering Mechanics',3,4,NULL,NULL),(24,'Thermodynamics',3,4,NULL,NULL),(25,'Fluid Mechanics',3,4,NULL,NULL),(26,'Material Science',3,4,NULL,NULL),(27,'Energy Systems',3,4,NULL,NULL),(28,'Structural Engineering',3,5,NULL,NULL),(29,'Geotechnical Engineering',3,5,NULL,NULL),(30,'Environmental Engineering',3,5,NULL,NULL),(31,'Advanced Algorithms',3,1,'Explores advanced techniques in algorithm design and analysis.','Introduction to Algorithms by Cormen'),(32,'Artificial Intelligence',3,1,'A comprehensive study of AI, including machine learning and natural language processing.','Artificial Intelligence by Russell'),(33,'Big Data Analytics',3,1,'Techniques for analyzing and managing large-scale datasets.','Big Data Analytics by Nathan Marz'),(34,'Cybersecurity Fundamentals',3,1,'Study of cybersecurity principles, threats, and defense mechanisms.','Cybersecurity by Singer'),(35,'Computer Graphics',3,1,'Covers 3D modeling, rendering, and visualization techniques.','Computer Graphics by Foley'),(36,'Cloud Computing',3,1,'Introduction to cloud platforms, deployment, and services.','Cloud Computing by Buyya'),(37,'Data Mining',3,1,'Study of extracting meaningful insights from large datasets.','Data Mining by Witten'),(38,'Machine Learning',3,1,'Focus on deep learning, neural networks, and practical applications.','Deep Learning by Goodfellow'),(39,'Blockchain Technology',3,1,'Study of blockchain architecture, cryptocurrency, and smart contracts.','Blockchain Technology by Bashir'),(40,'Internet of Things (IoT)',3,1,'Exploration of IoT devices, sensors, and applications.','IoT by Ashton');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `DepartmentID` int NOT NULL,
  `DepartmentHead` varchar(100) NOT NULL,
  `Floor` int DEFAULT NULL,
  `Budget` decimal(15,2) DEFAULT NULL,
  `DepartmentName` varchar(100) NOT NULL,
  PRIMARY KEY (`DepartmentID`),
  CONSTRAINT `department_chk_1` CHECK ((`Floor` >= 0)),
  CONSTRAINT `department_chk_2` CHECK ((`Budget` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Dr. Amit Chatterjee',2,1500000.00,'Computer Science'),(2,'Dr. Sohana Mitra',3,1200000.00,'Business Administration'),(3,'Dr. Rajesh Ghosh',4,1300000.00,'Electrical Engineering'),(4,'Dr. Priya Sen',3,1400000.00,'Mechanical Engineering'),(5,'Dr. Arjun Gupta',5,1350000.00,'Civil Engineering');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `StudentID` int NOT NULL,
  `CourseID` int NOT NULL,
  `Grade` varchar(5) DEFAULT NULL,
  `gpa` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`StudentID`,`CourseID`),
  KEY `gr_fk2` (`CourseID`),
  CONSTRAINT `gr_fk1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`) ON DELETE CASCADE,
  CONSTRAINT `gr_fk2` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1001,1,'A',4.00),(1001,2,'B+',3.30),(1001,3,'A-',3.70),(1001,4,'B',3.00),(1001,5,'A',4.00),(1006,1,'B+',3.30),(1006,6,'A',4.00),(1006,7,'A-',3.70),(1006,8,'B',3.00),(1006,31,'A-',3.70),(1011,1,'A-',3.70),(1011,2,'B',3.00),(1011,3,'A',4.00),(1011,4,'B+',3.30),(1011,9,'A',4.00),(1011,10,'A-',3.70),(1016,2,'B+',3.30),(1016,5,'A-',3.70),(1016,6,'B',3.00),(1021,3,'A',4.00),(1021,7,'A',4.00),(1021,8,'B+',3.30),(1021,9,'A-',3.70),(1021,10,'B',3.00),(1022,1,'A',4.00),(1022,4,'B+',3.30),(1022,5,'A-',3.70),(1022,7,'B',3.00),(1022,31,'A',4.00),(1023,2,'A-',3.70),(1023,3,'B+',3.30),(1023,8,'A',4.00),(1023,9,'B',3.00),(1023,10,'A',4.00),(1024,1,'B+',3.30),(1024,6,'A-',3.70),(1024,8,'A',4.00),(1025,1,'A',4.00),(1025,2,'B',3.00),(1025,3,'A-',3.70),(1025,5,'B+',3.30),(1025,7,'A',4.00),(1025,10,'B',3.00),(1026,3,'A-',3.70),(1026,4,'B',3.00),(1026,6,'B+',3.30),(1026,9,'A',4.00),(1027,1,'A',4.00),(1027,4,'B+',3.30),(1027,5,'A-',3.70),(1027,7,'B',3.00),(1028,2,'A-',3.70),(1028,3,'B+',3.30),(1028,8,'A',4.00),(1028,9,'B',3.00),(1028,10,'A',4.00),(1028,31,'B+',3.30),(1029,1,'B+',3.30),(1029,6,'A-',3.70),(1029,8,'A',4.00),(1029,31,'A-',3.70),(1030,1,'A',4.00),(1030,2,'B',3.00),(1030,3,'A-',3.70),(1030,5,'B+',3.30),(1031,3,'A-',3.70),(1031,4,'B',3.00),(1031,6,'B+',3.30),(1031,9,'A',4.00),(1039,31,'B+',3.30),(1040,31,'A-',3.70);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `InstructorID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `BaseSalary` decimal(10,2) DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`InstructorID`),
  UNIQUE KEY `Email` (`Email`),
  KEY `ins_fk1` (`DepartmentID`),
  CONSTRAINT `ins_fk1` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`),
  CONSTRAINT `instructor_chk_1` CHECK ((`BaseSalary` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (101,'Dr. Amit Chatterjee','amit.chatterjee@example.com',80000.00,1,'admin123'),(102,'Dr. Sohana Mitra','sohana.mitra@example.com',75000.00,2,'admin123'),(103,'Dr. Rajesh Ghosh','rajesh.ghosh@example.com',82000.00,3,'admin123'),(104,'Dr. Priya Sen','priya.sen@example.com',78000.00,4,'admin123'),(105,'Dr. Arjun Gupta','arjun.gupta@example.com',85000.00,5,'admin123'),(106,'Dr. Ishita Paul','ishita.paul@example.com',76000.00,1,'admin123'),(107,'Dr. Rakesh Sharma','rakesh.sharma@example.com',81000.00,1,'admin123'),(108,'Dr. Sneha Das','sneha.das@example.com',77000.00,1,'admin123'),(109,'Dr. Kunal Saha','kunal.saha@example.com',79000.00,1,'admin123'),(110,'Dr. Riya Chakraborty','riya.chakraborty@example.com',84000.00,1,'admin123'),(111,'Dr. Ankit Bose','ankit.bose@example.com',80000.00,1,'admin123'),(112,'Dr. Mitali Ghosh','mitali.ghosh@example.com',75000.00,1,'admin123'),(113,'Dr. Debashish Pal','debashish.pal@example.com',82000.00,1,'admin123'),(114,'Dr. Pooja Banerjee','pooja.banerjee@example.com',78000.00,1,'admin123'),(115,'Dr. Sayan Chatterjee','sayan.chatterjee@example.com',85000.00,1,'admin123'),(116,'Dr. Tina Ghoshal','tina.ghoshal@example.com',76000.00,1,'admin123'),(117,'Dr. Rahul Das','rahul.das@example.com',81000.00,2,'admin123'),(118,'Dr. Ananya Nandi','ananya.nandi@example.com',79000.00,2,'admin123'),(119,'Dr. Subhojit Sen','subhojit.sen@example.com',77000.00,2,'admin123'),(120,'Dr. Moumita Basu','moumita.basu@example.com',84000.00,3,'admin123');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `SectionID` int NOT NULL,
  `CourseID` int NOT NULL,
  `Trimester` varchar(10) NOT NULL,
  `Year` int NOT NULL,
  `TimeslotID` int NOT NULL,
  `RoomNo` varchar(10) NOT NULL,
  `InstructorID` int DEFAULT NULL,
  `Announcement` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`SectionID`),
  KEY `sec_fk1` (`CourseID`),
  KEY `sec_fk2` (`InstructorID`),
  KEY `sec_fk3` (`TimeslotID`),
  CONSTRAINT `sec_fk1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`) ON DELETE CASCADE,
  CONSTRAINT `sec_fk2` FOREIGN KEY (`InstructorID`) REFERENCES `instructor` (`InstructorID`) ON DELETE CASCADE,
  CONSTRAINT `sec_fk3` FOREIGN KEY (`TimeslotID`) REFERENCES `timeslot` (`TimeslotID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,31,'Spring',2025,101,'R101',106,'Class test will held on tomorrow'),(2,31,'Spring',2025,102,'R102',107,' Class on Monday is canceled.'),(3,31,'Spring',2025,103,'R103',108,' Class on Monday is canceled.'),(4,31,'Spring',2025,104,'R104',109,' Class on Monday is canceled.'),(5,32,'Spring',2025,105,'R105',110,' Assignment 2 is due on next class.'),(6,32,'Spring',2025,106,'R201',111,''),(7,32,'Spring',2025,107,'R202',112,' Assignment 2 is due on next class.'),(8,32,'Spring',2025,108,'R203',113,'The Class Test will be held tomorrow.'),(9,33,'Spring',2025,109,'R204',114,'The Class Test will be held tomorrow.'),(10,33,'Spring',2025,110,'R205',115,'The Class Test will be held tomorrow.'),(11,33,'Spring',2025,111,'R301',106,'Assignment 1 is due on sunday'),(12,33,'Spring',2025,112,'R302',107,' Assignment 2 is due on next class.'),(13,34,'Spring',2025,101,'R303',108,' A makeup class will be held tomorrow.'),(14,34,'Spring',2025,102,'R304',109,' Assignment 2 is due on next class.'),(15,34,'Spring',2025,103,'R305',110,' A makeup class will be held tomorrow.'),(16,34,'Spring',2025,104,'R401',111,'The Class Test will be held tomorrow.'),(17,35,'Spring',2025,105,'R402',112,' A makeup class will be held tomorrow.'),(18,35,'Spring',2025,106,'R403',113,'The Class Test will be held tomorrow.'),(19,35,'Spring',2025,107,'R404',114,' A makeup class will be held tomorrow.'),(20,35,'Spring',2025,108,'R405',115,'The Class Test will be held tomorrow.'),(21,36,'Spring',2025,109,'R501',106,' Assignment 2 is due on next class.'),(22,36,'Spring',2025,110,'R502',107,' Class on Monday is canceled.'),(23,36,'Spring',2025,111,'R503',108,' Class on Monday is canceled.'),(24,36,'Spring',2025,112,'R504',109,' Assignment 2 is due on next class.'),(25,37,'Spring',2025,101,'R505',110,' Class on Monday is canceled.'),(26,37,'Spring',2025,102,'R601',111,' Class on Monday is canceled.'),(27,37,'Spring',2025,103,'R602',112,'The Class Test will be held tomorrow.'),(28,37,'Spring',2025,104,'R603',113,' Assignment 2 is due on next class.'),(29,38,'Spring',2025,105,'R604',114,' Class on Monday is canceled.'),(30,38,'Spring',2025,106,'R605',115,'The Class Test will be held tomorrow.'),(31,38,'Spring',2025,107,'R701',106,' Class on Monday is canceled.'),(32,38,'Spring',2025,108,'R702',107,' Assignment 2 is due on next class.'),(33,39,'Spring',2025,109,'R703',108,' A makeup class will be held tomorrow.'),(34,39,'Spring',2025,110,'R704',109,' A makeup class will be held tomorrow.'),(35,39,'Spring',2025,111,'R705',110,' Assignment 2 is due on next class.'),(36,39,'Spring',2025,112,'R801',111,' Assignment 2 is due on next class.'),(37,40,'Spring',2025,101,'R802',112,' A makeup class will be held tomorrow.'),(38,40,'Spring',2025,102,'R803',113,' A makeup class will be held tomorrow.'),(39,40,'Spring',2025,103,'R804',114,' A makeup class will be held tomorrow.'),(40,40,'Spring',2025,104,'R805',115,'The Class Test will be held tomorrow.');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `StudentID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `BaseAmount` decimal(10,2) DEFAULT '0.00',
  `AdvisorID` int DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  `Password` varchar(100) NOT NULL,
  PRIMARY KEY (`StudentID`),
  UNIQUE KEY `Email` (`Email`),
  KEY `stu_fk1` (`DepartmentID`),
  KEY `stu_fk2` (`AdvisorID`),
  CONSTRAINT `stu_fk1` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`),
  CONSTRAINT `stu_fk2` FOREIGN KEY (`AdvisorID`) REFERENCES `instructor` (`InstructorID`)
) ENGINE=InnoDB AUTO_INCREMENT=1058 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1001,'Amit Das','2001-01-15','amit.das@example.com',5000.00,101,1,'admin123'),(1002,'Sohini Roy','2000-12-22','sohini.roy@example.com',5500.00,102,2,'admin123'),(1003,'Rajesh Kumar','1999-05-18','rajesh.kumar@example.com',6000.00,103,3,'admin123'),(1004,'Priya Sen','2002-03-10','priya.sen@example.com',4000.00,104,4,'admin123'),(1005,'Arjun Gupta','2001-07-25','arjun.gupta@example.com',4500.00,105,5,'admin123'),(1006,'Ishita Paul','2002-11-30','ishita.paul@example.com',4700.00,101,1,'admin123'),(1007,'Rakesh Sharma','2000-01-09','rakesh.sharma@example.com',4800.00,102,2,'admin123'),(1008,'Sneha Dasgupta','2001-04-19','sneha.dasgupta@example.com',4900.00,103,3,'admin123'),(1009,'Kunal Saha','1999-06-24','kunal.saha@example.com',5100.00,104,4,'admin123'),(1010,'Riya Chakraborty','2002-09-16','riya.chakraborty@example.com',5200.00,105,5,'admin123'),(1011,'Ankit Bose','2001-02-20','ankit.bose@example.com',4300.00,101,1,'admin123'),(1012,'Mitali Ghosh','2000-10-05','mitali.ghosh@example.com',5500.00,102,2,'admin123'),(1013,'Debashish Pal','1998-12-15','debashish.pal@example.com',5800.00,103,3,'admin123'),(1014,'Pooja Banerjee','2001-08-01','pooja.banerjee@example.com',5900.00,104,4,'admin123'),(1015,'Sayan Chatterjee','1999-09-30','sayan.chatterjee@example.com',5100.00,105,5,'admin123'),(1016,'Tina Ghoshal','2000-03-12','tina.ghoshal@example.com',4700.00,101,1,'admin123'),(1017,'Rahul Das','2001-01-17','rahul.das@example.com',5200.00,102,2,'admin123'),(1018,'Ananya Nandi','2002-05-11','ananya.nandi@example.com',5600.00,103,3,'admin123'),(1019,'Subhojit Sen','1999-11-09','subhojit.sen@example.com',5800.00,104,4,'admin123'),(1020,'Moumita Basu','2000-07-04','moumita.basu@example.com',5900.00,105,5,'admin123'),(1021,'Arif Ahmed','2002-01-10','arif.ahmed@example.com',6000.00,106,1,'admin123'),(1022,'Mou Sarker','2001-03-15','mou.sarker@example.com',6200.00,107,1,'admin123'),(1023,'Tanvir Hasan','2002-05-21','tanvir.hasan@example.com',5800.00,108,1,'admin123'),(1024,'Farhana Rahman','2003-07-10','farhana.rahman@example.com',5900.00,109,1,'admin123'),(1025,'Joy Chakraborty','2002-08-25','joy.chakraborty@example.com',6100.00,110,1,'admin123'),(1026,'Shimul Dutta','2001-09-10','shimul.dutta@example.com',5800.00,111,1,'admin123'),(1027,'Niloy Hossain','2000-11-20','niloy.hossain@example.com',5600.00,112,1,'admin123'),(1028,'Afia Akter','2002-12-05','afia.akter@example.com',6400.00,113,1,'admin123'),(1029,'Mahin Chowdhury','2003-01-30','mahin.chowdhury@example.com',6000.00,114,1,'admin123'),(1030,'Rizwan Karim','2001-02-14','rizwan.karim@example.com',5700.00,115,1,'admin123'),(1031,'Shorna Rani','2003-03-18','shorna.rani@example.com',6500.00,116,1,'admin123'),(1032,'Shahidul Islam','2000-06-10','shahidul.islam@example.com',6300.00,106,1,'admin123'),(1033,'Papia Sultana','2002-07-21','papia.sultana@example.com',6100.00,107,1,'admin123'),(1034,'Shuvo Roy','2001-09-15','shuvo.roy@example.com',5700.00,108,1,'admin123'),(1035,'Rashed Khan','2003-10-11','rashed.khan@example.com',6000.00,109,1,'admin123'),(1036,'Morshed Alam','2002-11-25','morshed.alam@example.com',6200.00,110,1,'admin123'),(1037,'Tahmina Akter','2003-01-07','tahmina.akter@example.com',6400.00,106,1,'admin123'),(1038,'Sabbir Ahmed','2001-02-17','sabbir.ahmed@example.com',6100.00,107,1,'admin123'),(1039,'Sanjida Islam','2000-03-11','sanjida.islam@example.com',5900.00,108,1,'admin123'),(1040,'Zahid Hasan','2001-04-19','zahid.hasan@example.com',6200.00,109,1,'admin123'),(1055,'Rohan',NULL,'rohan@nogmail.com',0.00,NULL,NULL,'rohan123'),(1056,'Raha',NULL,'raha@nogmail.com',0.00,NULL,NULL,'rahamoniabc'),(1057,'Jubair',NULL,'jubair@gmail.com',0.00,NULL,NULL,'123456678');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teaches`
--

DROP TABLE IF EXISTS `teaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teaches` (
  `InstructorID` int NOT NULL,
  `SectionID` int NOT NULL,
  `CourseID` int DEFAULT NULL,
  PRIMARY KEY (`InstructorID`,`SectionID`),
  KEY `tea_fk2` (`SectionID`),
  CONSTRAINT `tea_fk1` FOREIGN KEY (`InstructorID`) REFERENCES `instructor` (`InstructorID`) ON DELETE CASCADE,
  CONSTRAINT `tea_fk2` FOREIGN KEY (`SectionID`) REFERENCES `section` (`SectionID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teaches`
--

LOCK TABLES `teaches` WRITE;
/*!40000 ALTER TABLE `teaches` DISABLE KEYS */;
INSERT INTO `teaches` VALUES (106,1,31),(106,11,33),(106,21,36),(106,31,38),(107,2,31),(107,12,33),(107,22,36),(107,32,38),(108,3,31),(108,13,34),(108,23,36),(108,33,39),(109,4,31),(109,14,34),(109,24,36),(109,34,39),(110,5,32),(110,15,34),(110,25,37),(110,35,39),(111,6,32),(111,16,34),(111,26,37),(111,36,39),(112,7,32),(112,17,35),(112,27,37),(112,37,40),(113,8,32),(113,18,35),(113,28,37),(113,38,40),(114,9,33),(114,19,35),(114,29,38),(114,39,40),(115,10,33),(115,20,35),(115,30,38),(115,40,40);
/*!40000 ALTER TABLE `teaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeslot`
--

DROP TABLE IF EXISTS `timeslot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeslot` (
  `TimeslotID` int NOT NULL,
  `Weekday` varchar(10) NOT NULL,
  `SlotNumber` int NOT NULL,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  PRIMARY KEY (`TimeslotID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeslot`
--

LOCK TABLES `timeslot` WRITE;
/*!40000 ALTER TABLE `timeslot` DISABLE KEYS */;
INSERT INTO `timeslot` VALUES (101,'Sat',1,'09:00:00','10:30:00'),(102,'Sat',2,'11:00:00','12:30:00'),(103,'Sat',3,'02:00:00','03:30:00'),(104,'Sun',1,'09:00:00','10:30:00'),(105,'Sun',2,'11:00:00','12:30:00'),(106,'Sun',3,'02:00:00','03:30:00'),(107,'Tues',1,'09:00:00','10:30:00'),(108,'Tues',2,'11:00:00','12:30:00'),(109,'Tues',3,'02:00:00','03:30:00'),(110,'Wed',1,'09:00:00','10:30:00'),(111,'Wed',2,'11:00:00','12:30:00'),(112,'Wed',3,'02:00:00','03:30:00');
/*!40000 ALTER TABLE `timeslot` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-01 14:59:38
