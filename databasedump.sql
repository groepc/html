# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: vincentsmits.tk (MySQL 5.6.16-log)
# Database: idh7-1415
# Generation Time: 2015-03-09 19:25:39 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table evaluatie
# ------------------------------------------------------------

DROP TABLE IF EXISTS `evaluatie`;

CREATE TABLE `evaluatie` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `datumtijd` date NOT NULL,
  `cijfer` double NOT NULL,
  `document` varchar(255) NOT NULL,
  `tentamenCode` varchar(255) NOT NULL,
  `gebruikerID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKEvaluatie245395` (`gebruikerID`),
  KEY `FKEvaluatie628467` (`tentamenCode`),
  CONSTRAINT `FKEvaluatie245395` FOREIGN KEY (`gebruikerID`) REFERENCES `gebruiker` (`ID`),
  CONSTRAINT `FKEvaluatie628467` FOREIGN KEY (`tentamenCode`) REFERENCES `tentamen` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `evaluatie` WRITE;
/*!40000 ALTER TABLE `evaluatie` DISABLE KEYS */;

INSERT INTO `evaluatie` (`ID`, `datumtijd`, `cijfer`, `document`, `tentamenCode`, `gebruikerID`)
VALUES
	(13,'2014-06-24',7,'53a9beab8b278.docx','IDH5',3),
	(14,'2014-06-24',6,'Dit was een beste toets','IDH5',20),
	(15,'2014-06-24',8,'Het was supa','IDH5',18),
	(16,'2014-06-24',8.7,'Goed tentamen alleen goede reacties..!','IDH5',125),
	(17,'2014-06-24',7.5,'leuk leuk leuk','IDH5',19),
	(18,'2014-06-26',7,'Goede toets..','IDH9BusIn',125),
	(19,'2014-06-26',4,'53ac16fe888ff.docx','IDH9BusIn',3),
	(20,'2014-06-26',7,'leuke toets','IDH6B',18),
	(21,'2014-06-26',6,'Goed hoor!','IDH9BusIn',23),
	(22,'2014-06-26',8,'53ac2fd58832f.docx','IDH6',3),
	(23,'2014-06-26',5,'Test','IDH6',125),
	(24,'2014-06-26',8,'Het was super','IDH6',18),
	(25,'2014-06-26',6,'was super leuk','IDH10',21);

/*!40000 ALTER TABLE `evaluatie` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table gebruiker
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gebruiker`;

CREATE TABLE `gebruiker` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `voornaam` varchar(255) NOT NULL,
  `tussenvoegsel` varchar(64) DEFAULT NULL,
  `achternaam` varchar(255) NOT NULL,
  `geslacht` char(1) NOT NULL,
  `geboortedatum` date NOT NULL,
  `gebruikersnaam` varchar(255) NOT NULL,
  `wachtwoord` varchar(255) NOT NULL,
  `rolID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `gebruikersnaam` (`gebruikersnaam`),
  KEY `FKGebruiker773236` (`rolID`),
  CONSTRAINT `FKGebruiker773236` FOREIGN KEY (`rolID`) REFERENCES `rol` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `gebruiker` WRITE;
/*!40000 ALTER TABLE `gebruiker` DISABLE KEYS */;

INSERT INTO `gebruiker` (`ID`, `voornaam`, `tussenvoegsel`, `achternaam`, `geslacht`, `geboortedatum`, `gebruikersnaam`, `wachtwoord`, `rolID`)
VALUES
	(1,'Yassine',NULL,'Elouazzani','M','1989-11-11','superadmin','5bfe0c405c67de32b1de9ea40d093666',3),
	(2,'Dennis','','Schepers','M','1987-11-10','dennis','3b5354bdb3b4c20203b74aeacbe199f2',2),
	(3,'Julia','','Anthonissen','V','1975-05-03','doc001','281ab35f26dc0a6d9dab6fd4fbc304fc',2),
	(4,'Sophie','de','Jong','V','1985-08-14','doc002','281ab35f26dc0a6d9dab6fd4fbc304fc',2),
	(5,'Sophie','','Meijer','V','1961-05-15','doc003','281ab35f26dc0a6d9dab6fd4fbc304fc',2),
	(6,'Pascal','van','Gastel','M','1980-05-21','doc004','281ab35f26dc0a6d9dab6fd4fbc304fc',2),
	(7,'Robin','','Schellius','M','1976-12-01','doc005','281ab35f26dc0a6d9dab6fd4fbc304fc',2),
	(8,'Johnny','','Bravo','M','1993-07-03','doc006','281ab35f26dc0a6d9dab6fd4fbc304fc',2),
	(9,'Dennis','','Schepers','M','1991-10-04','doc007','281ab35f26dc0a6d9dab6fd4fbc304fc',2),
	(10,'Lodewijk','van','Doorn','M','1988-09-12','doc008','281ab35f26dc0a6d9dab6fd4fbc304fc',2),
	(11,'Richard','van','Riel','M','1980-08-11','doc009','281ab35f26dc0a6d9dab6fd4fbc304fc',2),
	(12,'Bas','','Hekking','M','1954-07-11','doc010','281ab35f26dc0a6d9dab6fd4fbc304fc',2),
	(13,'Anneke','','Laarhoven','V','1976-03-23','adm001','1ea49fadc61799b7867f95404c623f8e',3),
	(14,'Bianca','','Heck','V','1990-11-04','adm002','1ea49fadc61799b7867f95404c623f8e',3),
	(15,'Marja','','Joling','V','1988-01-01','adm003','1ea49fadc61799b7867f95404c623f8e',3),
	(16,'Lisa','van der','Horst','V','1970-09-12','adm004','1ea49fadc61799b7867f95404c623f8e',3),
	(17,'Mieke','','Baars','V','1994-04-05','adm005','1ea49fadc61799b7867f95404c623f8e',3),
	(18,'Gerard','','Kokx','M','1991-01-21','stu001','cd73502828457d15655bbd7a63fb0bc8',1),
	(19,'Jasper','van der','Starre','M','1992-02-14','stu002','cd73502828457d15655bbd7a63fb0bc8',1),
	(20,'Thor','god of','Thunder','M','1991-03-02','stu003','cd73502828457d15655bbd7a63fb0bc8',1),
	(21,'Zeus','god of the','Sky','M','1991-06-06','stu004','cd73502828457d15655bbd7a63fb0bc8',1),
	(22,'Odin','the','Alfather','M','1990-05-07','stu005','cd73502828457d15655bbd7a63fb0bc8',1),
	(23,'Dennis','','Vos','M','1990-02-08','stu006','cd73502828457d15655bbd7a63fb0bc8',1),
	(24,'Rob','','Voesenek','M','1990-07-09','stu007','cd73502828457d15655bbd7a63fb0bc8',1),
	(25,'Rene','','Konings','M','1990-08-02','stu008','cd73502828457d15655bbd7a63fb0bc8',1),
	(26,'Ron','van','Doorn','M','1990-12-03','stu009','cd73502828457d15655bbd7a63fb0bc8',1),
	(27,'Ronnie','','Schepers','M','1990-02-04','stu010','cd73502828457d15655bbd7a63fb0bc8',1),
	(28,'Wouter','','Kaat','M','1989-03-01','stu011','cd73502828457d15655bbd7a63fb0bc8',1),
	(29,'Corne','','Rasenberg','M','1989-10-02','stu012','cd73502828457d15655bbd7a63fb0bc8',1),
	(30,'Philip','','Potter','M','1989-05-03','stu013','cd73502828457d15655bbd7a63fb0bc8',1),
	(31,'Andre','de','Pool','M','1989-11-04','stu014','cd73502828457d15655bbd7a63fb0bc8',1),
	(32,'Cees','','Verdaasdonk','M','1989-09-04','stu015','cd73502828457d15655bbd7a63fb0bc8',1),
	(33,'Larissa','van','Oostende','V','1990-05-02','stu016','cd73502828457d15655bbd7a63fb0bc8',1),
	(34,'Aletta','','Voigt','V','1990-04-02','stu017','cd73502828457d15655bbd7a63fb0bc8',1),
	(35,'Melanie','de','Kok','V','1990-07-24','stu018','cd73502828457d15655bbd7a63fb0bc8',1),
	(36,'Marion','de','Jonge','V','1990-08-23','stu019','cd73502828457d15655bbd7a63fb0bc8',1),
	(37,'Liselot','van','Gastel','V','1991-09-05','stu020','cd73502828457d15655bbd7a63fb0bc8',1),
	(38,'Inge','','Jong','V','1991-01-05','stu021','cd73502828457d15655bbd7a63fb0bc8',1),
	(39,'Maria','','Kaat','V','1991-03-04','stu022','cd73502828457d15655bbd7a63fb0bc8',1),
	(40,'Bianca','','Schepers','V','1991-04-01','stu023','cd73502828457d15655bbd7a63fb0bc8',1),
	(41,'Lisanne','','Dieleman','V','1992-03-08','stu024','cd73502828457d15655bbd7a63fb0bc8',1),
	(42,'Fieke','de','Kruijk','V','1992-04-07','stu025','cd73502828457d15655bbd7a63fb0bc8',1),
	(43,'Iris','','Faase','V','1992-10-06','stu026','cd73502828457d15655bbd7a63fb0bc8',1),
	(44,'Roos','','Schier','V','1991-11-05','stu027','cd73502828457d15655bbd7a63fb0bc8',1),
	(45,'Manouschka','','Tops','V','1991-11-02','stu028','cd73502828457d15655bbd7a63fb0bc8',1),
	(46,'Christie','','Reekers','V','1991-12-08','stu029','cd73502828457d15655bbd7a63fb0bc8',1),
	(47,'Janneke','','Faase','V','1991-05-07','stu030','cd73502828457d15655bbd7a63fb0bc8',1),
	(123,'Martin','de','Kruijk','M','2014-02-27','admin','21232f297a57a5a743894a0e4a801fc3',1),
	(124,'Vincent',NULL,'Smits','m','1983-08-12','vmsmits','0a92f925bff210bff71cfc24c92ce174',1),
	(125,'christian',NULL,'Kooiman','m','2014-02-27','test','098f6bcd4621d373cade4e832627b4f6',3);

/*!40000 ALTER TABLE `gebruiker` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table inschrijving
# ------------------------------------------------------------

DROP TABLE IF EXISTS `inschrijving`;

CREATE TABLE `inschrijving` (
  `planningID` int(11) NOT NULL DEFAULT '0',
  `gebruikerID` int(11) NOT NULL,
  `datumtijd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cijfer` double DEFAULT NULL,
  `beoordeling` int(11) DEFAULT NULL,
  `aanwezig` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`planningID`,`gebruikerID`),
  KEY `FKInschrijvi150887` (`gebruikerID`),
  KEY `FKInschrijvi211155` (`planningID`),
  CONSTRAINT `FKInschrijvi150887` FOREIGN KEY (`gebruikerID`) REFERENCES `gebruiker` (`ID`),
  CONSTRAINT `FKInschrijvi211155` FOREIGN KEY (`planningID`) REFERENCES `planning` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `inschrijving` WRITE;
/*!40000 ALTER TABLE `inschrijving` DISABLE KEYS */;

INSERT INTO `inschrijving` (`planningID`, `gebruikerID`, `datumtijd`, `cijfer`, `beoordeling`, `aanwezig`)
VALUES
	(44,19,'2014-06-24 00:00:00',8.4,1,1),
	(44,20,'2014-06-24 00:00:00',8,1,1),
	(44,21,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(44,23,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(44,123,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(45,18,'2014-06-24 00:00:00',5,NULL,1),
	(45,46,'2014-06-24 00:00:00',6,NULL,1),
	(45,47,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(46,19,'2014-06-24 00:00:00',8,1,1),
	(46,21,'2014-06-24 00:00:00',4,NULL,1),
	(47,23,'2014-06-24 00:00:00',6,1,1),
	(47,24,'2014-06-24 00:00:00',7,1,1),
	(47,25,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(48,29,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(48,30,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(48,31,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(48,32,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(48,33,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(48,34,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(48,35,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(48,36,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(48,37,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(48,38,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(48,39,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(49,26,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(49,27,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(49,28,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(50,20,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(50,21,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(50,22,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(50,23,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(50,24,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(50,25,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(50,26,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(50,27,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(50,28,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(50,29,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(51,30,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(51,31,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(51,32,'2014-06-24 00:00:00',NULL,NULL,NULL),
	(56,20,'2014-06-26 00:00:00',8,1,1),
	(56,23,'2014-06-26 00:00:00',4,NULL,1),
	(57,19,'2014-06-26 00:00:00',6,1,1),
	(57,22,'2014-06-26 00:00:00',NULL,NULL,NULL),
	(58,21,'2014-06-26 00:00:00',1,NULL,1);

/*!40000 ALTER TABLE `inschrijving` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table lokaal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lokaal`;

CREATE TABLE `lokaal` (
  `code` varchar(64) NOT NULL,
  `aantalPlaatsen` int(11) NOT NULL,
  `computerlokaal` int(11) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `lokaal` WRITE;
/*!40000 ALTER TABLE `lokaal` DISABLE KEYS */;

INSERT INTO `lokaal` (`code`, `aantalPlaatsen`, `computerlokaal`)
VALUES
	('HA-101',20,1),
	('HA-102',20,1),
	('HA-103',25,1),
	('HA-104',25,1),
	('HA-105',25,1),
	('HA-201',30,1),
	('HA-202',30,1),
	('HA-203',30,1),
	('HA-204',30,1),
	('HA-205',30,1),
	('HB-121',25,1),
	('HB-122',25,1),
	('HB-123',25,1),
	('HC-301',40,0),
	('HC-302',40,0),
	('HC-303',40,0),
	('HC-304',30,0),
	('HC-305',30,0),
	('HC-306',30,0),
	('HD-416',15,0),
	('HD-417',15,0),
	('HD-418',20,0),
	('HD-419',20,0);

/*!40000 ALTER TABLE `lokaal` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table planning
# ------------------------------------------------------------

DROP TABLE IF EXISTS `planning`;

CREATE TABLE `planning` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `datumtijd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tentamencode` varchar(255) NOT NULL,
  `gebruikerID` int(11) NOT NULL,
  `lokaalCode` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKPlanning648795` (`lokaalCode`),
  KEY `FKPlanning625652` (`gebruikerID`),
  KEY `FKPlanning201523` (`tentamencode`),
  CONSTRAINT `FKPlanning201523` FOREIGN KEY (`tentamencode`) REFERENCES `tentamen` (`code`),
  CONSTRAINT `FKPlanning625652` FOREIGN KEY (`gebruikerID`) REFERENCES `gebruiker` (`ID`),
  CONSTRAINT `FKPlanning648795` FOREIGN KEY (`lokaalCode`) REFERENCES `lokaal` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `planning` WRITE;
/*!40000 ALTER TABLE `planning` DISABLE KEYS */;

INSERT INTO `planning` (`ID`, `datumtijd`, `tentamencode`, `gebruikerID`, `lokaalCode`)
VALUES
	(44,'2013-11-07 14:30:00','IDH5',125,'HA-201'),
	(45,'2013-11-14 17:00:00','IDH5',125,'HB-122'),
	(46,'2014-01-14 13:00:00','IDH6',125,'HA-202'),
	(47,'2014-01-21 12:30:00','IDH6',125,'HA-203'),
	(48,'2014-02-20 17:00:00','IDH6B',125,'HA-105'),
	(49,'2014-02-27 20:00:00','IDH6B',125,'HA-105'),
	(50,'2014-04-17 18:00:00','IDH6O',125,'HA-102'),
	(51,'2014-04-24 17:00:00','IDH6O',125,'HA-201'),
	(52,'2014-07-17 15:00:00','IDH8',125,'HA-204'),
	(53,'2014-07-24 16:20:00','IDH8',125,'HA-201'),
	(54,'2014-07-17 18:00:00','IDH8ASP',125,'HA-101'),
	(55,'2014-07-24 18:00:00','IDH8ASP',125,'HA-101'),
	(56,'2014-05-03 14:40:00','IDH9BusIn',125,'HA-105'),
	(57,'2014-05-10 16:40:00','IDH9BusIn',125,'HC-304'),
	(58,'2014-05-17 16:40:00','IDH10',125,'HC-302'),
	(59,'2014-05-24 14:00:00','IDH10',125,'HA-203');

/*!40000 ALTER TABLE `planning` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rol
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rol`;

CREATE TABLE `rol` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `naam` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `naam` (`naam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;

INSERT INTO `rol` (`ID`, `naam`)
VALUES
	(3,'Administratie'),
	(2,'Docent'),
	(1,'Student');

/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tentamen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tentamen`;

CREATE TABLE `tentamen` (
  `code` varchar(255) NOT NULL,
  `vak` varchar(255) NOT NULL,
  `periode` varchar(255) NOT NULL,
  `aantalStudenten` int(11) NOT NULL,
  `computerlokaal` int(11) NOT NULL,
  `surveillant` int(11) NOT NULL,
  `gebruikerID` int(11) NOT NULL,
  PRIMARY KEY (`code`),
  KEY `FKTentamen427434` (`gebruikerID`),
  CONSTRAINT `FKTentamen427434` FOREIGN KEY (`gebruikerID`) REFERENCES `gebruiker` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `tentamen` WRITE;
/*!40000 ALTER TABLE `tentamen` DISABLE KEYS */;

INSERT INTO `tentamen` (`code`, `vak`, `periode`, `aantalStudenten`, `computerlokaal`, `surveillant`, `gebruikerID`)
VALUES
	('IDH10','Mobile .NET','10',21,0,1,3),
	('IDH5','Java','5',40,1,1,3),
	('IDH6','Economie','6',23,0,1,3),
	('IDH6B','Bedrijfskunde','6',24,0,1,3),
	('IDH6O','IPR','6',25,1,0,3),
	('IDH8','Scrum','8',20,1,1,3),
	('IDH8ASP','ASP.NET','8',20,1,0,3),
	('IDH9BusIn','Business Intel','9',20,0,1,3);

/*!40000 ALTER TABLE `tentamen` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
