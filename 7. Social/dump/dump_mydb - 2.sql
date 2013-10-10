-- MySQL dump 10.10
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.5.25

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
-- Table structure for table `blog1`
--

DROP TABLE IF EXISTS `blog1`;
CREATE TABLE `blog1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog1_blog11_idx` (`extension`),
  CONSTRAINT `fk_blog1_blog11` FOREIGN KEY (`extension`) REFERENCES `blog1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog1`
--


/*!40000 ALTER TABLE `blog1` DISABLE KEYS */;
LOCK TABLES `blog1` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog1` ENABLE KEYS */;

--
-- Table structure for table `blog10`
--

DROP TABLE IF EXISTS `blog10`;
CREATE TABLE `blog10` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog10_blog101_idx` (`extension`),
  CONSTRAINT `fk_blog10_blog101` FOREIGN KEY (`extension`) REFERENCES `blog10` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog10`
--


/*!40000 ALTER TABLE `blog10` DISABLE KEYS */;
LOCK TABLES `blog10` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog10` ENABLE KEYS */;

--
-- Table structure for table `blog11`
--

DROP TABLE IF EXISTS `blog11`;
CREATE TABLE `blog11` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog11_blog111_idx` (`extension`),
  CONSTRAINT `fk_blog11_blog111` FOREIGN KEY (`extension`) REFERENCES `blog11` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog11`
--


/*!40000 ALTER TABLE `blog11` DISABLE KEYS */;
LOCK TABLES `blog11` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog11` ENABLE KEYS */;

--
-- Table structure for table `blog12`
--

DROP TABLE IF EXISTS `blog12`;
CREATE TABLE `blog12` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog12_blog121_idx` (`extension`),
  CONSTRAINT `fk_blog12_blog121` FOREIGN KEY (`extension`) REFERENCES `blog12` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog12`
--


/*!40000 ALTER TABLE `blog12` DISABLE KEYS */;
LOCK TABLES `blog12` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog12` ENABLE KEYS */;

--
-- Table structure for table `blog13`
--

DROP TABLE IF EXISTS `blog13`;
CREATE TABLE `blog13` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog13_blog131_idx` (`extension`),
  CONSTRAINT `fk_blog13_blog131` FOREIGN KEY (`extension`) REFERENCES `blog13` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog13`
--


/*!40000 ALTER TABLE `blog13` DISABLE KEYS */;
LOCK TABLES `blog13` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog13` ENABLE KEYS */;

--
-- Table structure for table `blog14`
--

DROP TABLE IF EXISTS `blog14`;
CREATE TABLE `blog14` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog14_blog141_idx` (`extension`),
  CONSTRAINT `fk_blog14_blog141` FOREIGN KEY (`extension`) REFERENCES `blog14` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog14`
--


/*!40000 ALTER TABLE `blog14` DISABLE KEYS */;
LOCK TABLES `blog14` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog14` ENABLE KEYS */;

--
-- Table structure for table `blog15`
--

DROP TABLE IF EXISTS `blog15`;
CREATE TABLE `blog15` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog15_blog151_idx` (`extension`),
  CONSTRAINT `fk_blog15_blog151` FOREIGN KEY (`extension`) REFERENCES `blog15` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog15`
--


/*!40000 ALTER TABLE `blog15` DISABLE KEYS */;
LOCK TABLES `blog15` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog15` ENABLE KEYS */;

--
-- Table structure for table `blog16`
--

DROP TABLE IF EXISTS `blog16`;
CREATE TABLE `blog16` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog16_blog161_idx` (`extension`),
  CONSTRAINT `fk_blog16_blog161` FOREIGN KEY (`extension`) REFERENCES `blog16` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog16`
--


/*!40000 ALTER TABLE `blog16` DISABLE KEYS */;
LOCK TABLES `blog16` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog16` ENABLE KEYS */;

--
-- Table structure for table `blog17`
--

DROP TABLE IF EXISTS `blog17`;
CREATE TABLE `blog17` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog17_blog171_idx` (`extension`),
  CONSTRAINT `fk_blog17_blog171` FOREIGN KEY (`extension`) REFERENCES `blog17` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog17`
--


/*!40000 ALTER TABLE `blog17` DISABLE KEYS */;
LOCK TABLES `blog17` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog17` ENABLE KEYS */;

--
-- Table structure for table `blog18`
--

DROP TABLE IF EXISTS `blog18`;
CREATE TABLE `blog18` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog18_blog181_idx` (`extension`),
  CONSTRAINT `fk_blog18_blog181` FOREIGN KEY (`extension`) REFERENCES `blog18` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog18`
--


/*!40000 ALTER TABLE `blog18` DISABLE KEYS */;
LOCK TABLES `blog18` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog18` ENABLE KEYS */;

--
-- Table structure for table `blog19`
--

DROP TABLE IF EXISTS `blog19`;
CREATE TABLE `blog19` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog19_blog191_idx` (`extension`),
  CONSTRAINT `fk_blog19_blog191` FOREIGN KEY (`extension`) REFERENCES `blog19` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog19`
--


/*!40000 ALTER TABLE `blog19` DISABLE KEYS */;
LOCK TABLES `blog19` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog19` ENABLE KEYS */;

--
-- Table structure for table `blog2`
--

DROP TABLE IF EXISTS `blog2`;
CREATE TABLE `blog2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog2_blog21_idx` (`extension`),
  CONSTRAINT `fk_blog2_blog21` FOREIGN KEY (`extension`) REFERENCES `blog2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog2`
--


/*!40000 ALTER TABLE `blog2` DISABLE KEYS */;
LOCK TABLES `blog2` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog2` ENABLE KEYS */;

--
-- Table structure for table `blog20`
--

DROP TABLE IF EXISTS `blog20`;
CREATE TABLE `blog20` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog20_blog201_idx` (`extension`),
  CONSTRAINT `fk_blog20_blog201` FOREIGN KEY (`extension`) REFERENCES `blog20` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog20`
--


/*!40000 ALTER TABLE `blog20` DISABLE KEYS */;
LOCK TABLES `blog20` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog20` ENABLE KEYS */;

--
-- Table structure for table `blog21`
--

DROP TABLE IF EXISTS `blog21`;
CREATE TABLE `blog21` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog21_blog211_idx` (`extension`),
  CONSTRAINT `fk_blog21_blog211` FOREIGN KEY (`extension`) REFERENCES `blog21` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog21`
--


/*!40000 ALTER TABLE `blog21` DISABLE KEYS */;
LOCK TABLES `blog21` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog21` ENABLE KEYS */;

--
-- Table structure for table `blog22`
--

DROP TABLE IF EXISTS `blog22`;
CREATE TABLE `blog22` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog22_blog221_idx` (`extension`),
  CONSTRAINT `fk_blog22_blog221` FOREIGN KEY (`extension`) REFERENCES `blog22` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog22`
--


/*!40000 ALTER TABLE `blog22` DISABLE KEYS */;
LOCK TABLES `blog22` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog22` ENABLE KEYS */;

--
-- Table structure for table `blog23`
--

DROP TABLE IF EXISTS `blog23`;
CREATE TABLE `blog23` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog23_blog231_idx` (`extension`),
  CONSTRAINT `fk_blog23_blog231` FOREIGN KEY (`extension`) REFERENCES `blog23` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog23`
--


/*!40000 ALTER TABLE `blog23` DISABLE KEYS */;
LOCK TABLES `blog23` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog23` ENABLE KEYS */;

--
-- Table structure for table `blog24`
--

DROP TABLE IF EXISTS `blog24`;
CREATE TABLE `blog24` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog24_blog241_idx` (`extension`),
  CONSTRAINT `fk_blog24_blog241` FOREIGN KEY (`extension`) REFERENCES `blog24` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog24`
--


/*!40000 ALTER TABLE `blog24` DISABLE KEYS */;
LOCK TABLES `blog24` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog24` ENABLE KEYS */;

--
-- Table structure for table `blog25`
--

DROP TABLE IF EXISTS `blog25`;
CREATE TABLE `blog25` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog25_blog251_idx` (`extension`),
  CONSTRAINT `fk_blog25_blog251` FOREIGN KEY (`extension`) REFERENCES `blog25` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog25`
--


/*!40000 ALTER TABLE `blog25` DISABLE KEYS */;
LOCK TABLES `blog25` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog25` ENABLE KEYS */;

--
-- Table structure for table `blog26`
--

DROP TABLE IF EXISTS `blog26`;
CREATE TABLE `blog26` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog26_blog261_idx` (`extension`),
  CONSTRAINT `fk_blog26_blog261` FOREIGN KEY (`extension`) REFERENCES `blog26` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog26`
--


/*!40000 ALTER TABLE `blog26` DISABLE KEYS */;
LOCK TABLES `blog26` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog26` ENABLE KEYS */;

--
-- Table structure for table `blog27`
--

DROP TABLE IF EXISTS `blog27`;
CREATE TABLE `blog27` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog27_blog271_idx` (`extension`),
  CONSTRAINT `fk_blog27_blog271` FOREIGN KEY (`extension`) REFERENCES `blog27` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog27`
--


/*!40000 ALTER TABLE `blog27` DISABLE KEYS */;
LOCK TABLES `blog27` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog27` ENABLE KEYS */;

--
-- Table structure for table `blog28`
--

DROP TABLE IF EXISTS `blog28`;
CREATE TABLE `blog28` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog28_blog281_idx` (`extension`),
  CONSTRAINT `fk_blog28_blog281` FOREIGN KEY (`extension`) REFERENCES `blog28` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog28`
--


/*!40000 ALTER TABLE `blog28` DISABLE KEYS */;
LOCK TABLES `blog28` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog28` ENABLE KEYS */;

--
-- Table structure for table `blog29`
--

DROP TABLE IF EXISTS `blog29`;
CREATE TABLE `blog29` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog29_blog291_idx` (`extension`),
  CONSTRAINT `fk_blog29_blog291` FOREIGN KEY (`extension`) REFERENCES `blog29` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog29`
--


/*!40000 ALTER TABLE `blog29` DISABLE KEYS */;
LOCK TABLES `blog29` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog29` ENABLE KEYS */;

--
-- Table structure for table `blog3`
--

DROP TABLE IF EXISTS `blog3`;
CREATE TABLE `blog3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog3_blog31_idx` (`extension`),
  CONSTRAINT `fk_blog3_blog31` FOREIGN KEY (`extension`) REFERENCES `blog3` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog3`
--


/*!40000 ALTER TABLE `blog3` DISABLE KEYS */;
LOCK TABLES `blog3` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog3` ENABLE KEYS */;

--
-- Table structure for table `blog30`
--

DROP TABLE IF EXISTS `blog30`;
CREATE TABLE `blog30` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog30_blog301_idx` (`extension`),
  CONSTRAINT `fk_blog30_blog301` FOREIGN KEY (`extension`) REFERENCES `blog30` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog30`
--


/*!40000 ALTER TABLE `blog30` DISABLE KEYS */;
LOCK TABLES `blog30` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog30` ENABLE KEYS */;

--
-- Table structure for table `blog31`
--

DROP TABLE IF EXISTS `blog31`;
CREATE TABLE `blog31` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog31_blog311_idx` (`extension`),
  CONSTRAINT `fk_blog31_blog311` FOREIGN KEY (`extension`) REFERENCES `blog31` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog31`
--


/*!40000 ALTER TABLE `blog31` DISABLE KEYS */;
LOCK TABLES `blog31` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog31` ENABLE KEYS */;

--
-- Table structure for table `blog32`
--

DROP TABLE IF EXISTS `blog32`;
CREATE TABLE `blog32` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog32_blog321_idx` (`extension`),
  CONSTRAINT `fk_blog32_blog321` FOREIGN KEY (`extension`) REFERENCES `blog32` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog32`
--


/*!40000 ALTER TABLE `blog32` DISABLE KEYS */;
LOCK TABLES `blog32` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog32` ENABLE KEYS */;

--
-- Table structure for table `blog33`
--

DROP TABLE IF EXISTS `blog33`;
CREATE TABLE `blog33` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog33_blog331_idx` (`extension`),
  CONSTRAINT `fk_blog33_blog331` FOREIGN KEY (`extension`) REFERENCES `blog33` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog33`
--


/*!40000 ALTER TABLE `blog33` DISABLE KEYS */;
LOCK TABLES `blog33` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog33` ENABLE KEYS */;

--
-- Table structure for table `blog34`
--

DROP TABLE IF EXISTS `blog34`;
CREATE TABLE `blog34` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog34_blog341_idx` (`extension`),
  CONSTRAINT `fk_blog34_blog341` FOREIGN KEY (`extension`) REFERENCES `blog34` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog34`
--


/*!40000 ALTER TABLE `blog34` DISABLE KEYS */;
LOCK TABLES `blog34` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog34` ENABLE KEYS */;

--
-- Table structure for table `blog35`
--

DROP TABLE IF EXISTS `blog35`;
CREATE TABLE `blog35` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog35_blog351_idx` (`extension`),
  CONSTRAINT `fk_blog35_blog351` FOREIGN KEY (`extension`) REFERENCES `blog35` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog35`
--


/*!40000 ALTER TABLE `blog35` DISABLE KEYS */;
LOCK TABLES `blog35` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog35` ENABLE KEYS */;

--
-- Table structure for table `blog36`
--

DROP TABLE IF EXISTS `blog36`;
CREATE TABLE `blog36` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog36_blog361_idx` (`extension`),
  CONSTRAINT `fk_blog36_blog361` FOREIGN KEY (`extension`) REFERENCES `blog36` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog36`
--


/*!40000 ALTER TABLE `blog36` DISABLE KEYS */;
LOCK TABLES `blog36` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog36` ENABLE KEYS */;

--
-- Table structure for table `blog37`
--

DROP TABLE IF EXISTS `blog37`;
CREATE TABLE `blog37` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog37_blog371_idx` (`extension`),
  CONSTRAINT `fk_blog37_blog371` FOREIGN KEY (`extension`) REFERENCES `blog37` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog37`
--


/*!40000 ALTER TABLE `blog37` DISABLE KEYS */;
LOCK TABLES `blog37` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog37` ENABLE KEYS */;

--
-- Table structure for table `blog38`
--

DROP TABLE IF EXISTS `blog38`;
CREATE TABLE `blog38` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog38_blog381_idx` (`extension`),
  CONSTRAINT `fk_blog38_blog381` FOREIGN KEY (`extension`) REFERENCES `blog38` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog38`
--


/*!40000 ALTER TABLE `blog38` DISABLE KEYS */;
LOCK TABLES `blog38` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog38` ENABLE KEYS */;

--
-- Table structure for table `blog39`
--

DROP TABLE IF EXISTS `blog39`;
CREATE TABLE `blog39` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog39_blog391_idx` (`extension`),
  CONSTRAINT `fk_blog39_blog391` FOREIGN KEY (`extension`) REFERENCES `blog39` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog39`
--


/*!40000 ALTER TABLE `blog39` DISABLE KEYS */;
LOCK TABLES `blog39` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog39` ENABLE KEYS */;

--
-- Table structure for table `blog4`
--

DROP TABLE IF EXISTS `blog4`;
CREATE TABLE `blog4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog4_blog41_idx` (`extension`),
  CONSTRAINT `fk_blog4_blog41` FOREIGN KEY (`extension`) REFERENCES `blog4` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog4`
--


/*!40000 ALTER TABLE `blog4` DISABLE KEYS */;
LOCK TABLES `blog4` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog4` ENABLE KEYS */;

--
-- Table structure for table `blog40`
--

DROP TABLE IF EXISTS `blog40`;
CREATE TABLE `blog40` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog40_blog401_idx` (`extension`),
  CONSTRAINT `fk_blog40_blog401` FOREIGN KEY (`extension`) REFERENCES `blog40` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog40`
--


/*!40000 ALTER TABLE `blog40` DISABLE KEYS */;
LOCK TABLES `blog40` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog40` ENABLE KEYS */;

--
-- Table structure for table `blog5`
--

DROP TABLE IF EXISTS `blog5`;
CREATE TABLE `blog5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog5_blog51_idx` (`extension`),
  CONSTRAINT `fk_blog5_blog51` FOREIGN KEY (`extension`) REFERENCES `blog5` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog5`
--


/*!40000 ALTER TABLE `blog5` DISABLE KEYS */;
LOCK TABLES `blog5` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog5` ENABLE KEYS */;

--
-- Table structure for table `blog6`
--

DROP TABLE IF EXISTS `blog6`;
CREATE TABLE `blog6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog6_blog61_idx` (`extension`),
  CONSTRAINT `fk_blog6_blog61` FOREIGN KEY (`extension`) REFERENCES `blog6` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog6`
--


/*!40000 ALTER TABLE `blog6` DISABLE KEYS */;
LOCK TABLES `blog6` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog6` ENABLE KEYS */;

--
-- Table structure for table `blog7`
--

DROP TABLE IF EXISTS `blog7`;
CREATE TABLE `blog7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog7_blog71_idx` (`extension`),
  CONSTRAINT `fk_blog7_blog71` FOREIGN KEY (`extension`) REFERENCES `blog7` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog7`
--


/*!40000 ALTER TABLE `blog7` DISABLE KEYS */;
LOCK TABLES `blog7` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog7` ENABLE KEYS */;

--
-- Table structure for table `blog8`
--

DROP TABLE IF EXISTS `blog8`;
CREATE TABLE `blog8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog8_blog81_idx` (`extension`),
  CONSTRAINT `fk_blog8_blog81` FOREIGN KEY (`extension`) REFERENCES `blog8` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog8`
--


/*!40000 ALTER TABLE `blog8` DISABLE KEYS */;
LOCK TABLES `blog8` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog8` ENABLE KEYS */;

--
-- Table structure for table `blog9`
--

DROP TABLE IF EXISTS `blog9`;
CREATE TABLE `blog9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_blog9_blog91_idx` (`extension`),
  CONSTRAINT `fk_blog9_blog91` FOREIGN KEY (`extension`) REFERENCES `blog9` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog9`
--


/*!40000 ALTER TABLE `blog9` DISABLE KEYS */;
LOCK TABLES `blog9` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog9` ENABLE KEYS */;

--
-- Table structure for table `blogmetka`
--

DROP TABLE IF EXISTS `blogmetka`;
CREATE TABLE `blogmetka` (
  `idblogmetka` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `color` varchar(9) NOT NULL,
  PRIMARY KEY (`idblogmetka`),
  UNIQUE KEY `idblogmetka_UNIQUE` (`idblogmetka`),
  UNIQUE KEY `color_UNIQUE` (`color`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogmetka`
--


/*!40000 ALTER TABLE `blogmetka` DISABLE KEYS */;
LOCK TABLES `blogmetka` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blogmetka` ENABLE KEYS */;

--
-- Table structure for table `commentwall1`
--

DROP TABLE IF EXISTS `commentwall1`;
CREATE TABLE `commentwall1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall1_id` int(10) unsigned NOT NULL,
  `commentwall1_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall1_wall11_idx` (`wall1_id`),
  KEY `fk_commentwall1_commentwall11_idx` (`commentwall1_id`),
  KEY `fk_commentwall1_profile1_idx` (`profile_id`),
  KEY `fk_commentwall1_commentwall12_idx` (`extension`),
  CONSTRAINT `fk_commentwall1_commentwall11` FOREIGN KEY (`commentwall1_id`) REFERENCES `commentwall1` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall1_commentwall12` FOREIGN KEY (`extension`) REFERENCES `commentwall1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall1_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall1_wall11` FOREIGN KEY (`wall1_id`) REFERENCES `wall1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall1`
--


/*!40000 ALTER TABLE `commentwall1` DISABLE KEYS */;
LOCK TABLES `commentwall1` WRITE;
INSERT INTO `commentwall1` VALUES (1,'2013-05-29 15:32:31','пфпкфуп',0,2,NULL,1,NULL),(2,'2013-05-29 15:32:35','пфпкфуп<br />пфпкфуп',0,2,NULL,1,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall1` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall1_AINS` AFTER INSERT ON `commentwall1` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall1 SET countcomment= countcomment + 1 WHERE wall1.id=NEW.wall1_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall1_ADEL` AFTER DELETE ON `commentwall1` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall1 SET countcomment= countcomment - 1 WHERE wall1.id=OLD.wall1_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall10`
--

DROP TABLE IF EXISTS `commentwall10`;
CREATE TABLE `commentwall10` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall10_id` int(10) unsigned NOT NULL,
  `commentwall10_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall10_wall101_idx` (`wall10_id`),
  KEY `fk_commentwall10_commentwall101_idx` (`commentwall10_id`),
  KEY `fk_commentwall10_profile1_idx` (`profile_id`),
  KEY `fk_commentwall10_commentwall102_idx` (`extension`),
  CONSTRAINT `fk_commentwall10_commentwall101` FOREIGN KEY (`commentwall10_id`) REFERENCES `commentwall10` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall10_commentwall102` FOREIGN KEY (`extension`) REFERENCES `commentwall10` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall10_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall10_wall101` FOREIGN KEY (`wall10_id`) REFERENCES `wall10` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall10`
--


/*!40000 ALTER TABLE `commentwall10` DISABLE KEYS */;
LOCK TABLES `commentwall10` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall10` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall10_AINS` AFTER INSERT ON `commentwall10` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall10 SET countcomment= countcomment + 1 WHERE wall10.id=NEW.wall10_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall10_ADEL` AFTER DELETE ON `commentwall10` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall10 SET countcomment= countcomment - 1 WHERE wall10.id=OLD.wall10_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall11`
--

DROP TABLE IF EXISTS `commentwall11`;
CREATE TABLE `commentwall11` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall11_id` int(10) unsigned NOT NULL,
  `commentwall11_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall11_wall111_idx` (`wall11_id`),
  KEY `fk_commentwall11_commentwall111_idx` (`commentwall11_id`),
  KEY `fk_commentwall11_profile1_idx` (`profile_id`),
  KEY `fk_commentwall11_commentwall112_idx` (`extension`),
  CONSTRAINT `fk_commentwall11_commentwall111` FOREIGN KEY (`commentwall11_id`) REFERENCES `commentwall11` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall11_commentwall112` FOREIGN KEY (`extension`) REFERENCES `commentwall11` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall11_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall11_wall111` FOREIGN KEY (`wall11_id`) REFERENCES `wall11` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall11`
--


/*!40000 ALTER TABLE `commentwall11` DISABLE KEYS */;
LOCK TABLES `commentwall11` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall11` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall11_AINS` AFTER INSERT ON `commentwall11` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall11 SET countcomment= countcomment + 1 WHERE wall11.id=NEW.wall11_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall11_ADEL` AFTER DELETE ON `commentwall11` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall11 SET countcomment= countcomment - 1 WHERE wall11.id=OLD.wall11_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall12`
--

DROP TABLE IF EXISTS `commentwall12`;
CREATE TABLE `commentwall12` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall12_id` int(10) unsigned NOT NULL,
  `commentwall12_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall12_wall121_idx` (`wall12_id`),
  KEY `fk_commentwall12_commentwall121_idx` (`commentwall12_id`),
  KEY `fk_commentwall12_profile1_idx` (`profile_id`),
  KEY `fk_commentwall12_commentwall122_idx` (`extension`),
  CONSTRAINT `fk_commentwall12_commentwall121` FOREIGN KEY (`commentwall12_id`) REFERENCES `commentwall12` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall12_commentwall122` FOREIGN KEY (`extension`) REFERENCES `commentwall12` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall12_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall12_wall121` FOREIGN KEY (`wall12_id`) REFERENCES `wall12` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall12`
--


/*!40000 ALTER TABLE `commentwall12` DISABLE KEYS */;
LOCK TABLES `commentwall12` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall12` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall12_AINS` AFTER INSERT ON `commentwall12` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall12 SET countcomment= countcomment + 1 WHERE wall12.id=NEW.wall12_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall12_ADEL` AFTER DELETE ON `commentwall12` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall12 SET countcomment= countcomment - 1 WHERE wall12.id=OLD.wall12_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall13`
--

DROP TABLE IF EXISTS `commentwall13`;
CREATE TABLE `commentwall13` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall13_id` int(10) unsigned NOT NULL,
  `commentwall13_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall13_wall131_idx` (`wall13_id`),
  KEY `fk_commentwall13_commentwall131_idx` (`commentwall13_id`),
  KEY `fk_commentwall13_profile1_idx` (`profile_id`),
  KEY `fk_commentwall13_commentwall132_idx` (`extension`),
  CONSTRAINT `fk_commentwall13_commentwall131` FOREIGN KEY (`commentwall13_id`) REFERENCES `commentwall13` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall13_commentwall132` FOREIGN KEY (`extension`) REFERENCES `commentwall13` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall13_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall13_wall131` FOREIGN KEY (`wall13_id`) REFERENCES `wall13` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall13`
--


/*!40000 ALTER TABLE `commentwall13` DISABLE KEYS */;
LOCK TABLES `commentwall13` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall13` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall13_AINS` AFTER INSERT ON `commentwall13` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall13 SET countcomment= countcomment + 1 WHERE wall13.id=NEW.wall13_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall13_ADEL` AFTER DELETE ON `commentwall13` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall13 SET countcomment= countcomment - 1 WHERE wall13.id=OLD.wall13_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall14`
--

DROP TABLE IF EXISTS `commentwall14`;
CREATE TABLE `commentwall14` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall14_id` int(10) unsigned NOT NULL,
  `commentwall14_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall14_wall141_idx` (`wall14_id`),
  KEY `fk_commentwall14_commentwall141_idx` (`commentwall14_id`),
  KEY `fk_commentwall14_profile1_idx` (`profile_id`),
  KEY `fk_commentwall14_commentwall142_idx` (`extension`),
  CONSTRAINT `fk_commentwall14_commentwall141` FOREIGN KEY (`commentwall14_id`) REFERENCES `commentwall14` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall14_commentwall142` FOREIGN KEY (`extension`) REFERENCES `commentwall14` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall14_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall14_wall141` FOREIGN KEY (`wall14_id`) REFERENCES `wall14` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall14`
--


/*!40000 ALTER TABLE `commentwall14` DISABLE KEYS */;
LOCK TABLES `commentwall14` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall14` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall14_AINS` AFTER INSERT ON `commentwall14` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall14 SET countcomment= countcomment + 1 WHERE wall14.id=NEW.wall14_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall14_ADEL` AFTER DELETE ON `commentwall14` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall14 SET countcomment= countcomment - 1 WHERE wall14.id=OLD.wall14_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall15`
--

DROP TABLE IF EXISTS `commentwall15`;
CREATE TABLE `commentwall15` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall15_id` int(10) unsigned NOT NULL,
  `commentwall15_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall15_wall151_idx` (`wall15_id`),
  KEY `fk_commentwall15_commentwall151_idx` (`commentwall15_id`),
  KEY `fk_commentwall15_profile1_idx` (`profile_id`),
  KEY `fk_commentwall15_commentwall152_idx` (`extension`),
  CONSTRAINT `fk_commentwall15_commentwall151` FOREIGN KEY (`commentwall15_id`) REFERENCES `commentwall15` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall15_commentwall152` FOREIGN KEY (`extension`) REFERENCES `commentwall15` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall15_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall15_wall151` FOREIGN KEY (`wall15_id`) REFERENCES `wall15` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall15`
--


/*!40000 ALTER TABLE `commentwall15` DISABLE KEYS */;
LOCK TABLES `commentwall15` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall15` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall15_AINS` AFTER INSERT ON `commentwall15` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall15 SET countcomment= countcomment + 1 WHERE wall15.id=NEW.wall15_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall15_ADEL` AFTER DELETE ON `commentwall15` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall15 SET countcomment= countcomment - 1 WHERE wall15.id=OLD.wall15_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall16`
--

DROP TABLE IF EXISTS `commentwall16`;
CREATE TABLE `commentwall16` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall16_id` int(10) unsigned NOT NULL,
  `commentwall16_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall16_wall161_idx` (`wall16_id`),
  KEY `fk_commentwall16_commentwall161_idx` (`commentwall16_id`),
  KEY `fk_commentwall16_profile1_idx` (`profile_id`),
  KEY `fk_commentwall16_commentwall162_idx` (`extension`),
  CONSTRAINT `fk_commentwall16_commentwall161` FOREIGN KEY (`commentwall16_id`) REFERENCES `commentwall16` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall16_commentwall162` FOREIGN KEY (`extension`) REFERENCES `commentwall16` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall16_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall16_wall161` FOREIGN KEY (`wall16_id`) REFERENCES `wall16` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall16`
--


/*!40000 ALTER TABLE `commentwall16` DISABLE KEYS */;
LOCK TABLES `commentwall16` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall16` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall16_AINS` AFTER INSERT ON `commentwall16` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall16 SET countcomment= countcomment + 1 WHERE wall16.id=NEW.wall16_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall16_ADEL` AFTER DELETE ON `commentwall16` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall16 SET countcomment= countcomment - 1 WHERE wall16.id=OLD.wall16_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall17`
--

DROP TABLE IF EXISTS `commentwall17`;
CREATE TABLE `commentwall17` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall17_id` int(10) unsigned NOT NULL,
  `commentwall17_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall17_wall171_idx` (`wall17_id`),
  KEY `fk_commentwall17_commentwall171_idx` (`commentwall17_id`),
  KEY `fk_commentwall17_profile1_idx` (`profile_id`),
  KEY `fk_commentwall17_commentwall172_idx` (`extension`),
  CONSTRAINT `fk_commentwall17_commentwall171` FOREIGN KEY (`commentwall17_id`) REFERENCES `commentwall17` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall17_commentwall172` FOREIGN KEY (`extension`) REFERENCES `commentwall17` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall17_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall17_wall171` FOREIGN KEY (`wall17_id`) REFERENCES `wall17` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall17`
--


/*!40000 ALTER TABLE `commentwall17` DISABLE KEYS */;
LOCK TABLES `commentwall17` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall17` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall17_AINS` AFTER INSERT ON `commentwall17` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall17 SET countcomment= countcomment + 1 WHERE wall17.id=NEW.wall17_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall17_ADEL` AFTER DELETE ON `commentwall17` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall17 SET countcomment= countcomment - 1 WHERE wall17.id=OLD.wall17_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall18`
--

DROP TABLE IF EXISTS `commentwall18`;
CREATE TABLE `commentwall18` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall18_id` int(10) unsigned NOT NULL,
  `commentwall18_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall18_wall181_idx` (`wall18_id`),
  KEY `fk_commentwall18_commentwall181_idx` (`commentwall18_id`),
  KEY `fk_commentwall18_profile1_idx` (`profile_id`),
  KEY `fk_commentwall18_commentwall182_idx` (`extension`),
  CONSTRAINT `fk_commentwall18_commentwall181` FOREIGN KEY (`commentwall18_id`) REFERENCES `commentwall18` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall18_commentwall182` FOREIGN KEY (`extension`) REFERENCES `commentwall18` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall18_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall18_wall181` FOREIGN KEY (`wall18_id`) REFERENCES `wall18` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall18`
--


/*!40000 ALTER TABLE `commentwall18` DISABLE KEYS */;
LOCK TABLES `commentwall18` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall18` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall18_AINS` AFTER INSERT ON `commentwall18` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall18 SET countcomment= countcomment + 1 WHERE wall18.id=NEW.wall18_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall18_ADEL` AFTER DELETE ON `commentwall18` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall18 SET countcomment= countcomment - 1 WHERE wall18.id=OLD.wall18_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall19`
--

DROP TABLE IF EXISTS `commentwall19`;
CREATE TABLE `commentwall19` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall19_id` int(10) unsigned NOT NULL,
  `commentwall19_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall19_wall191_idx` (`wall19_id`),
  KEY `fk_commentwall19_commentwall191_idx` (`commentwall19_id`),
  KEY `fk_commentwall19_profile1_idx` (`profile_id`),
  KEY `fk_commentwall19_commentwall192_idx` (`extension`),
  CONSTRAINT `fk_commentwall19_commentwall191` FOREIGN KEY (`commentwall19_id`) REFERENCES `commentwall19` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall19_commentwall192` FOREIGN KEY (`extension`) REFERENCES `commentwall19` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall19_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall19_wall191` FOREIGN KEY (`wall19_id`) REFERENCES `wall19` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall19`
--


/*!40000 ALTER TABLE `commentwall19` DISABLE KEYS */;
LOCK TABLES `commentwall19` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall19` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall19_AINS` AFTER INSERT ON `commentwall19` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall19 SET countcomment= countcomment + 1 WHERE wall19.id=NEW.wall19_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall19_ADEL` AFTER DELETE ON `commentwall19` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall19 SET countcomment= countcomment - 1 WHERE wall19.id=OLD.wall19_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall2`
--

DROP TABLE IF EXISTS `commentwall2`;
CREATE TABLE `commentwall2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall2_id` int(10) unsigned NOT NULL,
  `commentwall2_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall2_wall21_idx` (`wall2_id`),
  KEY `fk_commentwall2_commentwall21_idx` (`commentwall2_id`),
  KEY `fk_commentwall2_profile1_idx` (`profile_id`),
  KEY `fk_commentwall2_commentwall22_idx` (`extension`),
  CONSTRAINT `fk_commentwall2_commentwall21` FOREIGN KEY (`commentwall2_id`) REFERENCES `commentwall2` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall2_commentwall22` FOREIGN KEY (`extension`) REFERENCES `commentwall2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall2_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall2_wall21` FOREIGN KEY (`wall2_id`) REFERENCES `wall2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall2`
--


/*!40000 ALTER TABLE `commentwall2` DISABLE KEYS */;
LOCK TABLES `commentwall2` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall2` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall2_AINS` AFTER INSERT ON `commentwall2` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall2 SET countcomment= countcomment + 1 WHERE wall2.id=NEW.wall2_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall2_ADEL` AFTER DELETE ON `commentwall2` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall2 SET countcomment= countcomment - 1 WHERE wall2.id=OLD.wall2_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall20`
--

DROP TABLE IF EXISTS `commentwall20`;
CREATE TABLE `commentwall20` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall20_id` int(10) unsigned NOT NULL,
  `commentwall20_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall20_wall201_idx` (`wall20_id`),
  KEY `fk_commentwall20_commentwall201_idx` (`commentwall20_id`),
  KEY `fk_commentwall20_profile1_idx` (`profile_id`),
  KEY `fk_commentwall20_commentwall202_idx` (`extension`),
  CONSTRAINT `fk_commentwall20_commentwall201` FOREIGN KEY (`commentwall20_id`) REFERENCES `commentwall20` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall20_commentwall202` FOREIGN KEY (`extension`) REFERENCES `commentwall20` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall20_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall20_wall201` FOREIGN KEY (`wall20_id`) REFERENCES `wall20` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall20`
--


/*!40000 ALTER TABLE `commentwall20` DISABLE KEYS */;
LOCK TABLES `commentwall20` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall20` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall20_AINS` AFTER INSERT ON `commentwall20` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall20 SET countcomment= countcomment + 1 WHERE wall20.id=NEW.wall20_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall20_ADEL` AFTER DELETE ON `commentwall20` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall20 SET countcomment= countcomment - 1 WHERE wall20.id=OLD.wall20_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall21`
--

DROP TABLE IF EXISTS `commentwall21`;
CREATE TABLE `commentwall21` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall21_id` int(10) unsigned NOT NULL,
  `commentwall21_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall21_wall211_idx` (`wall21_id`),
  KEY `fk_commentwall21_commentwall211_idx` (`commentwall21_id`),
  KEY `fk_commentwall21_profile1_idx` (`profile_id`),
  KEY `fk_commentwall21_commentwall212_idx` (`extension`),
  CONSTRAINT `fk_commentwall21_commentwall211` FOREIGN KEY (`commentwall21_id`) REFERENCES `commentwall21` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall21_commentwall212` FOREIGN KEY (`extension`) REFERENCES `commentwall21` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall21_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall21_wall211` FOREIGN KEY (`wall21_id`) REFERENCES `wall21` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall21`
--


/*!40000 ALTER TABLE `commentwall21` DISABLE KEYS */;
LOCK TABLES `commentwall21` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall21` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall21_AINS` AFTER INSERT ON `commentwall21` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall21 SET countcomment= countcomment + 1 WHERE wall21.id=NEW.wall21_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall21_ADEL` AFTER DELETE ON `commentwall21` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall21 SET countcomment= countcomment - 1 WHERE wall21.id=OLD.wall21_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall22`
--

DROP TABLE IF EXISTS `commentwall22`;
CREATE TABLE `commentwall22` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall22_id` int(10) unsigned NOT NULL,
  `commentwall22_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall22_wall221_idx` (`wall22_id`),
  KEY `fk_commentwall22_commentwall221_idx` (`commentwall22_id`),
  KEY `fk_commentwall22_profile1_idx` (`profile_id`),
  KEY `fk_commentwall22_commentwall222_idx` (`extension`),
  CONSTRAINT `fk_commentwall22_commentwall221` FOREIGN KEY (`commentwall22_id`) REFERENCES `commentwall22` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall22_commentwall222` FOREIGN KEY (`extension`) REFERENCES `commentwall22` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall22_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall22_wall221` FOREIGN KEY (`wall22_id`) REFERENCES `wall22` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall22`
--


/*!40000 ALTER TABLE `commentwall22` DISABLE KEYS */;
LOCK TABLES `commentwall22` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall22` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall22_AINS` AFTER INSERT ON `commentwall22` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall22 SET countcomment= countcomment + 1 WHERE wall22.id=NEW.wall22_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall22_ADEL` AFTER DELETE ON `commentwall22` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall22 SET countcomment= countcomment - 1 WHERE wall22.id=OLD.wall22_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall23`
--

DROP TABLE IF EXISTS `commentwall23`;
CREATE TABLE `commentwall23` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall23_id` int(10) unsigned NOT NULL,
  `commentwall23_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall23_wall231_idx` (`wall23_id`),
  KEY `fk_commentwall23_commentwall231_idx` (`commentwall23_id`),
  KEY `fk_commentwall23_profile1_idx` (`profile_id`),
  KEY `fk_commentwall23_commentwall232_idx` (`extension`),
  CONSTRAINT `fk_commentwall23_commentwall231` FOREIGN KEY (`commentwall23_id`) REFERENCES `commentwall23` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall23_commentwall232` FOREIGN KEY (`extension`) REFERENCES `commentwall23` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall23_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall23_wall231` FOREIGN KEY (`wall23_id`) REFERENCES `wall23` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall23`
--


/*!40000 ALTER TABLE `commentwall23` DISABLE KEYS */;
LOCK TABLES `commentwall23` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall23` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall23_AINS` AFTER INSERT ON `commentwall23` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall23 SET countcomment= countcomment + 1 WHERE wall23.id=NEW.wall23_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall23_ADEL` AFTER DELETE ON `commentwall23` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall23 SET countcomment= countcomment - 1 WHERE wall23.id=OLD.wall23_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall24`
--

DROP TABLE IF EXISTS `commentwall24`;
CREATE TABLE `commentwall24` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall24_id` int(10) unsigned NOT NULL,
  `commentwall24_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall24_wall241_idx` (`wall24_id`),
  KEY `fk_commentwall24_commentwall241_idx` (`commentwall24_id`),
  KEY `fk_commentwall24_profile1_idx` (`profile_id`),
  KEY `fk_commentwall24_commentwall242_idx` (`extension`),
  CONSTRAINT `fk_commentwall24_commentwall241` FOREIGN KEY (`commentwall24_id`) REFERENCES `commentwall24` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall24_commentwall242` FOREIGN KEY (`extension`) REFERENCES `commentwall24` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall24_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall24_wall241` FOREIGN KEY (`wall24_id`) REFERENCES `wall24` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall24`
--


/*!40000 ALTER TABLE `commentwall24` DISABLE KEYS */;
LOCK TABLES `commentwall24` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall24` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall24_AINS` AFTER INSERT ON `commentwall24` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall24 SET countcomment= countcomment + 1 WHERE wall24.id=NEW.wall24_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall24_ADEL` AFTER DELETE ON `commentwall24` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall24 SET countcomment= countcomment - 1 WHERE wall24.id=OLD.wall24_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall25`
--

DROP TABLE IF EXISTS `commentwall25`;
CREATE TABLE `commentwall25` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall25_id` int(10) unsigned NOT NULL,
  `commentwall25_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall25_wall251_idx` (`wall25_id`),
  KEY `fk_commentwall25_commentwall251_idx` (`commentwall25_id`),
  KEY `fk_commentwall25_profile1_idx` (`profile_id`),
  KEY `fk_commentwall25_commentwall252_idx` (`extension`),
  CONSTRAINT `fk_commentwall25_commentwall251` FOREIGN KEY (`commentwall25_id`) REFERENCES `commentwall25` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall25_commentwall252` FOREIGN KEY (`extension`) REFERENCES `commentwall25` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall25_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall25_wall251` FOREIGN KEY (`wall25_id`) REFERENCES `wall25` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall25`
--


/*!40000 ALTER TABLE `commentwall25` DISABLE KEYS */;
LOCK TABLES `commentwall25` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall25` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall25_AINS` AFTER INSERT ON `commentwall25` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall25 SET countcomment= countcomment + 1 WHERE wall25.id=NEW.wall25_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall25_ADEL` AFTER DELETE ON `commentwall25` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall25 SET countcomment= countcomment - 1 WHERE wall25.id=OLD.wall25_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall26`
--

DROP TABLE IF EXISTS `commentwall26`;
CREATE TABLE `commentwall26` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall26_id` int(10) unsigned NOT NULL,
  `commentwall26_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall26_wall261_idx` (`wall26_id`),
  KEY `fk_commentwall26_commentwall261_idx` (`commentwall26_id`),
  KEY `fk_commentwall26_profile1_idx` (`profile_id`),
  KEY `fk_commentwall26_commentwall262_idx` (`extension`),
  CONSTRAINT `fk_commentwall26_commentwall261` FOREIGN KEY (`commentwall26_id`) REFERENCES `commentwall26` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall26_commentwall262` FOREIGN KEY (`extension`) REFERENCES `commentwall26` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall26_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall26_wall261` FOREIGN KEY (`wall26_id`) REFERENCES `wall26` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall26`
--


/*!40000 ALTER TABLE `commentwall26` DISABLE KEYS */;
LOCK TABLES `commentwall26` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall26` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall26_AINS` AFTER INSERT ON `commentwall26` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall26 SET countcomment= countcomment + 1 WHERE wall26.id=NEW.wall26_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall26_ADEL` AFTER DELETE ON `commentwall26` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall26 SET countcomment= countcomment - 1 WHERE wall26.id=OLD.wall26_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall27`
--

DROP TABLE IF EXISTS `commentwall27`;
CREATE TABLE `commentwall27` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall27_id` int(10) unsigned NOT NULL,
  `commentwall27_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall27_wall271_idx` (`wall27_id`),
  KEY `fk_commentwall27_commentwall271_idx` (`commentwall27_id`),
  KEY `fk_commentwall27_profile1_idx` (`profile_id`),
  KEY `fk_commentwall27_commentwall272_idx` (`extension`),
  CONSTRAINT `fk_commentwall27_commentwall271` FOREIGN KEY (`commentwall27_id`) REFERENCES `commentwall27` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall27_commentwall272` FOREIGN KEY (`extension`) REFERENCES `commentwall27` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall27_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall27_wall271` FOREIGN KEY (`wall27_id`) REFERENCES `wall27` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall27`
--


/*!40000 ALTER TABLE `commentwall27` DISABLE KEYS */;
LOCK TABLES `commentwall27` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall27` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall27_AINS` AFTER INSERT ON `commentwall27` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall27 SET countcomment= countcomment + 1 WHERE wall27.id=NEW.wall27_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall27_ADEL` AFTER DELETE ON `commentwall27` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall27 SET countcomment= countcomment - 1 WHERE wall27.id=OLD.wall27_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall28`
--

DROP TABLE IF EXISTS `commentwall28`;
CREATE TABLE `commentwall28` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall28_id` int(10) unsigned NOT NULL,
  `commentwall28_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall28_wall281_idx` (`wall28_id`),
  KEY `fk_commentwall28_commentwall281_idx` (`commentwall28_id`),
  KEY `fk_commentwall28_profile1_idx` (`profile_id`),
  KEY `fk_commentwall28_commentwall282_idx` (`extension`),
  CONSTRAINT `fk_commentwall28_commentwall281` FOREIGN KEY (`commentwall28_id`) REFERENCES `commentwall28` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall28_commentwall282` FOREIGN KEY (`extension`) REFERENCES `commentwall28` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall28_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall28_wall281` FOREIGN KEY (`wall28_id`) REFERENCES `wall28` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall28`
--


/*!40000 ALTER TABLE `commentwall28` DISABLE KEYS */;
LOCK TABLES `commentwall28` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall28` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall28_AINS` AFTER INSERT ON `commentwall28` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall28 SET countcomment= countcomment + 1 WHERE wall28.id=NEW.wall28_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall28_ADEL` AFTER DELETE ON `commentwall28` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall28 SET countcomment= countcomment - 1 WHERE wall28.id=OLD.wall28_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall29`
--

DROP TABLE IF EXISTS `commentwall29`;
CREATE TABLE `commentwall29` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall29_id` int(10) unsigned NOT NULL,
  `commentwall29_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall29_wall291_idx` (`wall29_id`),
  KEY `fk_commentwall29_commentwall291_idx` (`commentwall29_id`),
  KEY `fk_commentwall29_profile1_idx` (`profile_id`),
  KEY `fk_commentwall29_commentwall292_idx` (`extension`),
  CONSTRAINT `fk_commentwall29_commentwall291` FOREIGN KEY (`commentwall29_id`) REFERENCES `commentwall29` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall29_commentwall292` FOREIGN KEY (`extension`) REFERENCES `commentwall29` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall29_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall29_wall291` FOREIGN KEY (`wall29_id`) REFERENCES `wall29` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall29`
--


/*!40000 ALTER TABLE `commentwall29` DISABLE KEYS */;
LOCK TABLES `commentwall29` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall29` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall29_AINS` AFTER INSERT ON `commentwall29` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall29 SET countcomment= countcomment + 1 WHERE wall29.id=NEW.wall29_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall29_ADEL` AFTER DELETE ON `commentwall29` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall29 SET countcomment= countcomment - 1 WHERE wall29.id=OLD.wall29_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall3`
--

DROP TABLE IF EXISTS `commentwall3`;
CREATE TABLE `commentwall3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall3_id` int(10) unsigned NOT NULL,
  `commentwall3_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall3_wall31_idx` (`wall3_id`),
  KEY `fk_commentwall3_commentwall31_idx` (`commentwall3_id`),
  KEY `fk_commentwall3_profile1_idx` (`profile_id`),
  KEY `fk_commentwall3_commentwall32_idx` (`extension`),
  CONSTRAINT `fk_commentwall3_commentwall31` FOREIGN KEY (`commentwall3_id`) REFERENCES `commentwall3` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall3_commentwall32` FOREIGN KEY (`extension`) REFERENCES `commentwall3` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall3_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall3_wall31` FOREIGN KEY (`wall3_id`) REFERENCES `wall3` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall3`
--


/*!40000 ALTER TABLE `commentwall3` DISABLE KEYS */;
LOCK TABLES `commentwall3` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall3` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall3_AINS` AFTER INSERT ON `commentwall3` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall3 SET countcomment= countcomment + 1 WHERE wall3.id=NEW.wall3_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall3_ADEL` AFTER DELETE ON `commentwall3` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall3 SET countcomment= countcomment - 1 WHERE wall3.id=OLD.wall3_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall30`
--

DROP TABLE IF EXISTS `commentwall30`;
CREATE TABLE `commentwall30` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall30_id` int(10) unsigned NOT NULL,
  `commentwall30_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall30_wall301_idx` (`wall30_id`),
  KEY `fk_commentwall30_commentwall301_idx` (`commentwall30_id`),
  KEY `fk_commentwall30_profile1_idx` (`profile_id`),
  KEY `fk_commentwall30_commentwall302_idx` (`extension`),
  CONSTRAINT `fk_commentwall30_commentwall301` FOREIGN KEY (`commentwall30_id`) REFERENCES `commentwall30` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall30_commentwall302` FOREIGN KEY (`extension`) REFERENCES `commentwall30` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall30_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall30_wall301` FOREIGN KEY (`wall30_id`) REFERENCES `wall30` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall30`
--


/*!40000 ALTER TABLE `commentwall30` DISABLE KEYS */;
LOCK TABLES `commentwall30` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall30` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall30_AINS` AFTER INSERT ON `commentwall30` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall30 SET countcomment= countcomment + 1 WHERE wall30.id=NEW.wall30_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall30_ADEL` AFTER DELETE ON `commentwall30` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall30 SET countcomment= countcomment - 1 WHERE wall30.id=OLD.wall30_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall31`
--

DROP TABLE IF EXISTS `commentwall31`;
CREATE TABLE `commentwall31` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall31_id` int(10) unsigned NOT NULL,
  `commentwall31_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall31_wall311_idx` (`wall31_id`),
  KEY `fk_commentwall31_commentwall311_idx` (`commentwall31_id`),
  KEY `fk_commentwall31_profile1_idx` (`profile_id`),
  KEY `fk_commentwall31_commentwall312_idx` (`extension`),
  CONSTRAINT `fk_commentwall31_commentwall311` FOREIGN KEY (`commentwall31_id`) REFERENCES `commentwall31` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall31_commentwall312` FOREIGN KEY (`extension`) REFERENCES `commentwall31` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall31_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall31_wall311` FOREIGN KEY (`wall31_id`) REFERENCES `wall31` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall31`
--


/*!40000 ALTER TABLE `commentwall31` DISABLE KEYS */;
LOCK TABLES `commentwall31` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall31` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall31_AINS` AFTER INSERT ON `commentwall31` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall31 SET countcomment= countcomment + 1 WHERE wall31.id=NEW.wall31_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall31_ADEL` AFTER DELETE ON `commentwall31` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall31 SET countcomment= countcomment - 1 WHERE wall31.id=OLD.wall31_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall32`
--

DROP TABLE IF EXISTS `commentwall32`;
CREATE TABLE `commentwall32` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall32_id` int(10) unsigned NOT NULL,
  `commentwall32_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall32_wall321_idx` (`wall32_id`),
  KEY `fk_commentwall32_commentwall321_idx` (`commentwall32_id`),
  KEY `fk_commentwall32_profile1_idx` (`profile_id`),
  KEY `fk_commentwall32_commentwall322_idx` (`extension`),
  CONSTRAINT `fk_commentwall32_commentwall321` FOREIGN KEY (`commentwall32_id`) REFERENCES `commentwall32` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall32_commentwall322` FOREIGN KEY (`extension`) REFERENCES `commentwall32` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall32_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall32_wall321` FOREIGN KEY (`wall32_id`) REFERENCES `wall32` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall32`
--


/*!40000 ALTER TABLE `commentwall32` DISABLE KEYS */;
LOCK TABLES `commentwall32` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall32` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall32_AINS` AFTER INSERT ON `commentwall32` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall32 SET countcomment= countcomment + 1 WHERE wall32.id=NEW.wall32_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall32_ADEL` AFTER DELETE ON `commentwall32` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall32 SET countcomment= countcomment - 1 WHERE wall32.id=OLD.wall32_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall33`
--

DROP TABLE IF EXISTS `commentwall33`;
CREATE TABLE `commentwall33` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall33_id` int(10) unsigned NOT NULL,
  `commentwall33_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall33_wall331_idx` (`wall33_id`),
  KEY `fk_commentwall33_commentwall331_idx` (`commentwall33_id`),
  KEY `fk_commentwall33_profile1_idx` (`profile_id`),
  KEY `fk_commentwall33_commentwall332_idx` (`extension`),
  CONSTRAINT `fk_commentwall33_commentwall331` FOREIGN KEY (`commentwall33_id`) REFERENCES `commentwall33` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall33_commentwall332` FOREIGN KEY (`extension`) REFERENCES `commentwall33` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall33_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall33_wall331` FOREIGN KEY (`wall33_id`) REFERENCES `wall33` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall33`
--


/*!40000 ALTER TABLE `commentwall33` DISABLE KEYS */;
LOCK TABLES `commentwall33` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall33` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall33_AINS` AFTER INSERT ON `commentwall33` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall33 SET countcomment= countcomment + 1 WHERE wall33.id=NEW.wall33_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall33_ADEL` AFTER DELETE ON `commentwall33` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall33 SET countcomment= countcomment - 1 WHERE wall33.id=OLD.wall33_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall34`
--

DROP TABLE IF EXISTS `commentwall34`;
CREATE TABLE `commentwall34` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall34_id` int(10) unsigned NOT NULL,
  `commentwall34_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall34_wall341_idx` (`wall34_id`),
  KEY `fk_commentwall34_commentwall341_idx` (`commentwall34_id`),
  KEY `fk_commentwall34_profile1_idx` (`profile_id`),
  KEY `fk_commentwall34_commentwall342_idx` (`extension`),
  CONSTRAINT `fk_commentwall34_commentwall341` FOREIGN KEY (`commentwall34_id`) REFERENCES `commentwall34` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall34_commentwall342` FOREIGN KEY (`extension`) REFERENCES `commentwall34` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall34_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall34_wall341` FOREIGN KEY (`wall34_id`) REFERENCES `wall34` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall34`
--


/*!40000 ALTER TABLE `commentwall34` DISABLE KEYS */;
LOCK TABLES `commentwall34` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall34` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall34_AINS` AFTER INSERT ON `commentwall34` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall34 SET countcomment= countcomment + 1 WHERE wall34.id=NEW.wall34_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall34_ADEL` AFTER DELETE ON `commentwall34` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall34 SET countcomment= countcomment - 1 WHERE wall34.id=OLD.wall34_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall35`
--

DROP TABLE IF EXISTS `commentwall35`;
CREATE TABLE `commentwall35` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall35_id` int(10) unsigned NOT NULL,
  `commentwall35_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall35_wall351_idx` (`wall35_id`),
  KEY `fk_commentwall35_commentwall351_idx` (`commentwall35_id`),
  KEY `fk_commentwall35_profile1_idx` (`profile_id`),
  KEY `fk_commentwall35_commentwall352_idx` (`extension`),
  CONSTRAINT `fk_commentwall35_commentwall351` FOREIGN KEY (`commentwall35_id`) REFERENCES `commentwall35` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall35_commentwall352` FOREIGN KEY (`extension`) REFERENCES `commentwall35` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall35_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall35_wall351` FOREIGN KEY (`wall35_id`) REFERENCES `wall35` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall35`
--


/*!40000 ALTER TABLE `commentwall35` DISABLE KEYS */;
LOCK TABLES `commentwall35` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall35` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall35_AINS` AFTER INSERT ON `commentwall35` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall35 SET countcomment= countcomment + 1 WHERE wall35.id=NEW.wall35_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall35_ADEL` AFTER DELETE ON `commentwall35` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall35 SET countcomment= countcomment - 1 WHERE wall35.id=OLD.wall35_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall36`
--

DROP TABLE IF EXISTS `commentwall36`;
CREATE TABLE `commentwall36` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall36_id` int(10) unsigned NOT NULL,
  `commentwall36_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall36_wall361_idx` (`wall36_id`),
  KEY `fk_commentwall36_commentwall361_idx` (`commentwall36_id`),
  KEY `fk_commentwall36_profile1_idx` (`profile_id`),
  KEY `fk_commentwall36_commentwall362_idx` (`extension`),
  CONSTRAINT `fk_commentwall36_commentwall361` FOREIGN KEY (`commentwall36_id`) REFERENCES `commentwall36` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall36_commentwall362` FOREIGN KEY (`extension`) REFERENCES `commentwall36` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall36_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall36_wall361` FOREIGN KEY (`wall36_id`) REFERENCES `wall36` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall36`
--


/*!40000 ALTER TABLE `commentwall36` DISABLE KEYS */;
LOCK TABLES `commentwall36` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall36` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall36_AINS` AFTER INSERT ON `commentwall36` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall36 SET countcomment= countcomment + 1 WHERE wall36.id=NEW.wall36_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall36_ADEL` AFTER DELETE ON `commentwall36` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall36 SET countcomment= countcomment - 1 WHERE wall36.id=OLD.wall36_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall37`
--

DROP TABLE IF EXISTS `commentwall37`;
CREATE TABLE `commentwall37` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall37_id` int(10) unsigned NOT NULL,
  `commentwall37_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall37_wall371_idx` (`wall37_id`),
  KEY `fk_commentwall37_commentwall371_idx` (`commentwall37_id`),
  KEY `fk_commentwall37_profile1_idx` (`profile_id`),
  KEY `fk_commentwall37_commentwall372_idx` (`extension`),
  CONSTRAINT `fk_commentwall37_commentwall371` FOREIGN KEY (`commentwall37_id`) REFERENCES `commentwall37` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall37_commentwall372` FOREIGN KEY (`extension`) REFERENCES `commentwall37` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall37_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall37_wall371` FOREIGN KEY (`wall37_id`) REFERENCES `wall37` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall37`
--


/*!40000 ALTER TABLE `commentwall37` DISABLE KEYS */;
LOCK TABLES `commentwall37` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall37` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall37_AINS` AFTER INSERT ON `commentwall37` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall37 SET countcomment= countcomment + 1 WHERE wall37.id=NEW.wall37_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall37_ADEL` AFTER DELETE ON `commentwall37` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall37 SET countcomment= countcomment - 1 WHERE wall37.id=OLD.wall37_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall38`
--

DROP TABLE IF EXISTS `commentwall38`;
CREATE TABLE `commentwall38` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall38_id` int(10) unsigned NOT NULL,
  `commentwall38_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall38_wall381_idx` (`wall38_id`),
  KEY `fk_commentwall38_commentwall381_idx` (`commentwall38_id`),
  KEY `fk_commentwall38_profile1_idx` (`profile_id`),
  KEY `fk_commentwall38_commentwall382_idx` (`extension`),
  CONSTRAINT `fk_commentwall38_commentwall381` FOREIGN KEY (`commentwall38_id`) REFERENCES `commentwall38` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall38_commentwall382` FOREIGN KEY (`extension`) REFERENCES `commentwall38` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall38_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall38_wall381` FOREIGN KEY (`wall38_id`) REFERENCES `wall38` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall38`
--


/*!40000 ALTER TABLE `commentwall38` DISABLE KEYS */;
LOCK TABLES `commentwall38` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall38` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall38_AINS` AFTER INSERT ON `commentwall38` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall38 SET countcomment= countcomment + 1 WHERE wall38.id=NEW.wall38_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall38_ADEL` AFTER DELETE ON `commentwall38` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall38 SET countcomment= countcomment - 1 WHERE wall38.id=OLD.wall38_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall39`
--

DROP TABLE IF EXISTS `commentwall39`;
CREATE TABLE `commentwall39` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall39_id` int(10) unsigned NOT NULL,
  `commentwall39_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall39_wall391_idx` (`wall39_id`),
  KEY `fk_commentwall39_commentwall391_idx` (`commentwall39_id`),
  KEY `fk_commentwall39_profile1_idx` (`profile_id`),
  KEY `fk_commentwall39_commentwall392_idx` (`extension`),
  CONSTRAINT `fk_commentwall39_commentwall391` FOREIGN KEY (`commentwall39_id`) REFERENCES `commentwall39` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall39_commentwall392` FOREIGN KEY (`extension`) REFERENCES `commentwall39` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall39_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall39_wall391` FOREIGN KEY (`wall39_id`) REFERENCES `wall39` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall39`
--


/*!40000 ALTER TABLE `commentwall39` DISABLE KEYS */;
LOCK TABLES `commentwall39` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall39` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall39_AINS` AFTER INSERT ON `commentwall39` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall39 SET countcomment= countcomment + 1 WHERE wall39.id=NEW.wall39_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall39_ADEL` AFTER DELETE ON `commentwall39` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall39 SET countcomment= countcomment - 1 WHERE wall39.id=OLD.wall39_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall4`
--

DROP TABLE IF EXISTS `commentwall4`;
CREATE TABLE `commentwall4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall4_id` int(10) unsigned NOT NULL,
  `commentwall4_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall4_wall41_idx` (`wall4_id`),
  KEY `fk_commentwall4_commentwall41_idx` (`commentwall4_id`),
  KEY `fk_commentwall4_profile1_idx` (`profile_id`),
  KEY `fk_commentwall4_commentwall42_idx` (`extension`),
  CONSTRAINT `fk_commentwall4_commentwall41` FOREIGN KEY (`commentwall4_id`) REFERENCES `commentwall4` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall4_commentwall42` FOREIGN KEY (`extension`) REFERENCES `commentwall4` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall4_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall4_wall41` FOREIGN KEY (`wall4_id`) REFERENCES `wall4` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall4`
--


/*!40000 ALTER TABLE `commentwall4` DISABLE KEYS */;
LOCK TABLES `commentwall4` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall4` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall4_AINS` AFTER INSERT ON `commentwall4` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall4 SET countcomment= countcomment + 1 WHERE wall4.id=NEW.wall4_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall4_ADEL` AFTER DELETE ON `commentwall4` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall4 SET countcomment= countcomment - 1 WHERE wall4.id=OLD.wall4_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall40`
--

DROP TABLE IF EXISTS `commentwall40`;
CREATE TABLE `commentwall40` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall40_id` int(10) unsigned NOT NULL,
  `commentwall40_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall40_wall401_idx` (`wall40_id`),
  KEY `fk_commentwall40_commentwall401_idx` (`commentwall40_id`),
  KEY `fk_commentwall40_profile1_idx` (`profile_id`),
  KEY `fk_commentwall40_commentwall402_idx` (`extension`),
  CONSTRAINT `fk_commentwall40_commentwall401` FOREIGN KEY (`commentwall40_id`) REFERENCES `commentwall40` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall40_commentwall402` FOREIGN KEY (`extension`) REFERENCES `commentwall40` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall40_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall40_wall401` FOREIGN KEY (`wall40_id`) REFERENCES `wall40` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall40`
--


/*!40000 ALTER TABLE `commentwall40` DISABLE KEYS */;
LOCK TABLES `commentwall40` WRITE;
INSERT INTO `commentwall40` VALUES (1,'2013-05-30 07:33:10','уртеерт',0,25,NULL,5,NULL),(2,'2013-05-30 07:33:13','уетруерт',0,25,NULL,5,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall40` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall40_AINS` AFTER INSERT ON `commentwall40` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall40 SET countcomment= countcomment + 1 WHERE wall40.id=NEW.wall40_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall40_ADEL` AFTER DELETE ON `commentwall40` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall40 SET countcomment= countcomment - 1 WHERE wall40.id=OLD.wall40_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall5`
--

DROP TABLE IF EXISTS `commentwall5`;
CREATE TABLE `commentwall5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall5_id` int(10) unsigned NOT NULL,
  `commentwall5_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall5_wall51_idx` (`wall5_id`),
  KEY `fk_commentwall5_commentwall51_idx` (`commentwall5_id`),
  KEY `fk_commentwall5_profile1_idx` (`profile_id`),
  KEY `fk_commentwall5_commentwall52_idx` (`extension`),
  CONSTRAINT `fk_commentwall5_commentwall51` FOREIGN KEY (`commentwall5_id`) REFERENCES `commentwall5` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall5_commentwall52` FOREIGN KEY (`extension`) REFERENCES `commentwall5` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall5_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall5_wall51` FOREIGN KEY (`wall5_id`) REFERENCES `wall5` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall5`
--


/*!40000 ALTER TABLE `commentwall5` DISABLE KEYS */;
LOCK TABLES `commentwall5` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall5` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall5_AINS` AFTER INSERT ON `commentwall5` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall5 SET countcomment= countcomment + 1 WHERE wall5.id=NEW.wall5_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall5_ADEL` AFTER DELETE ON `commentwall5` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall5 SET countcomment= countcomment - 1 WHERE wall5.id=OLD.wall5_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall6`
--

DROP TABLE IF EXISTS `commentwall6`;
CREATE TABLE `commentwall6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall6_id` int(10) unsigned NOT NULL,
  `commentwall6_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall6_wall61_idx` (`wall6_id`),
  KEY `fk_commentwall6_commentwall61_idx` (`commentwall6_id`),
  KEY `fk_commentwall6_profile1_idx` (`profile_id`),
  KEY `fk_commentwall6_commentwall62_idx` (`extension`),
  CONSTRAINT `fk_commentwall6_commentwall61` FOREIGN KEY (`commentwall6_id`) REFERENCES `commentwall6` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall6_commentwall62` FOREIGN KEY (`extension`) REFERENCES `commentwall6` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall6_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall6_wall61` FOREIGN KEY (`wall6_id`) REFERENCES `wall6` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall6`
--


/*!40000 ALTER TABLE `commentwall6` DISABLE KEYS */;
LOCK TABLES `commentwall6` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall6` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall6_AINS` AFTER INSERT ON `commentwall6` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall6 SET countcomment= countcomment + 1 WHERE wall6.id=NEW.wall6_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall6_ADEL` AFTER DELETE ON `commentwall6` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall6 SET countcomment= countcomment - 1 WHERE wall6.id=OLD.wall6_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall7`
--

DROP TABLE IF EXISTS `commentwall7`;
CREATE TABLE `commentwall7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall7_id` int(10) unsigned NOT NULL,
  `commentwall7_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall7_wall71_idx` (`wall7_id`),
  KEY `fk_commentwall7_commentwall71_idx` (`commentwall7_id`),
  KEY `fk_commentwall7_profile1_idx` (`profile_id`),
  KEY `fk_commentwall7_commentwall72_idx` (`extension`),
  CONSTRAINT `fk_commentwall7_commentwall71` FOREIGN KEY (`commentwall7_id`) REFERENCES `commentwall7` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall7_commentwall72` FOREIGN KEY (`extension`) REFERENCES `commentwall7` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall7_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall7_wall71` FOREIGN KEY (`wall7_id`) REFERENCES `wall7` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall7`
--


/*!40000 ALTER TABLE `commentwall7` DISABLE KEYS */;
LOCK TABLES `commentwall7` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall7` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall7_AINS` AFTER INSERT ON `commentwall7` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall7 SET countcomment= countcomment + 1 WHERE wall7.id=NEW.wall7_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall7_ADEL` AFTER DELETE ON `commentwall7` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall7 SET countcomment= countcomment - 1 WHERE wall7.id=OLD.wall7_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall8`
--

DROP TABLE IF EXISTS `commentwall8`;
CREATE TABLE `commentwall8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall8_id` int(10) unsigned NOT NULL,
  `commentwall8_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall8_wall81_idx` (`wall8_id`),
  KEY `fk_commentwall8_commentwall81_idx` (`commentwall8_id`),
  KEY `fk_commentwall8_profile1_idx` (`profile_id`),
  KEY `fk_commentwall8_commentwall82_idx` (`extension`),
  CONSTRAINT `fk_commentwall8_commentwall81` FOREIGN KEY (`commentwall8_id`) REFERENCES `commentwall8` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall8_commentwall82` FOREIGN KEY (`extension`) REFERENCES `commentwall8` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall8_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall8_wall81` FOREIGN KEY (`wall8_id`) REFERENCES `wall8` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall8`
--


/*!40000 ALTER TABLE `commentwall8` DISABLE KEYS */;
LOCK TABLES `commentwall8` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall8` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall8_AINS` AFTER INSERT ON `commentwall8` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall8 SET countcomment= countcomment + 1 WHERE wall8.id=NEW.wall8_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall8_ADEL` AFTER DELETE ON `commentwall8` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall8 SET countcomment= countcomment - 1 WHERE wall8.id=OLD.wall8_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `commentwall9`
--

DROP TABLE IF EXISTS `commentwall9`;
CREATE TABLE `commentwall9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `wall9_id` int(10) unsigned NOT NULL,
  `commentwall9_id` int(10) unsigned DEFAULT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentwall9_wall91_idx` (`wall9_id`),
  KEY `fk_commentwall9_commentwall91_idx` (`commentwall9_id`),
  KEY `fk_commentwall9_profile1_idx` (`profile_id`),
  KEY `fk_commentwall9_commentwall92_idx` (`extension`),
  CONSTRAINT `fk_commentwall9_commentwall91` FOREIGN KEY (`commentwall9_id`) REFERENCES `commentwall9` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall9_commentwall92` FOREIGN KEY (`extension`) REFERENCES `commentwall9` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall9_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwall9_wall91` FOREIGN KEY (`wall9_id`) REFERENCES `wall9` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentwall9`
--


/*!40000 ALTER TABLE `commentwall9` DISABLE KEYS */;
LOCK TABLES `commentwall9` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `commentwall9` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall9_AINS` AFTER INSERT ON `commentwall9` FOR EACH ROW IF NEW.extension is NULL THEN UPDATE wall9 SET countcomment= countcomment + 1 WHERE wall9.id=NEW.wall9_id; END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `commentwall9_ADEL` AFTER DELETE ON `commentwall9` FOR EACH ROW IF OLD.extension is NULL THEN UPDATE wall9 SET countcomment= countcomment - 1 WHERE wall9.id=OLD.wall9_id; END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup1`
--

DROP TABLE IF EXISTS `contactgroup1`;
CREATE TABLE `contactgroup1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup1`
--


/*!40000 ALTER TABLE `contactgroup1` DISABLE KEYS */;
LOCK TABLES `contactgroup1` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup1` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup1_BDEL` BEFORE DELETE ON `contactgroup1` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser1 SET state = 2 WHERE contactgroup1_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser1 WHERE contactgroup1_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup1_ADEL` AFTER DELETE ON `contactgroup1` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser1 WHERE contactgroup1_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup10`
--

DROP TABLE IF EXISTS `contactgroup10`;
CREATE TABLE `contactgroup10` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup10`
--


/*!40000 ALTER TABLE `contactgroup10` DISABLE KEYS */;
LOCK TABLES `contactgroup10` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup10` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup10_BDEL` BEFORE DELETE ON `contactgroup10` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser10 SET state = 2 WHERE contactgroup10_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser10 WHERE contactgroup10_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup10_ADEL` AFTER DELETE ON `contactgroup10` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser10 WHERE contactgroup10_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup11`
--

DROP TABLE IF EXISTS `contactgroup11`;
CREATE TABLE `contactgroup11` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup11`
--


/*!40000 ALTER TABLE `contactgroup11` DISABLE KEYS */;
LOCK TABLES `contactgroup11` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup11` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup11_BDEL` BEFORE DELETE ON `contactgroup11` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser11 SET state = 2 WHERE contactgroup11_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser11 WHERE contactgroup11_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup11_ADEL` AFTER DELETE ON `contactgroup11` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser11 WHERE contactgroup11_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup12`
--

DROP TABLE IF EXISTS `contactgroup12`;
CREATE TABLE `contactgroup12` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup12`
--


/*!40000 ALTER TABLE `contactgroup12` DISABLE KEYS */;
LOCK TABLES `contactgroup12` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup12` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup12_BDEL` BEFORE DELETE ON `contactgroup12` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser12 SET state = 2 WHERE contactgroup12_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser12 WHERE contactgroup12_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup12_ADEL` AFTER DELETE ON `contactgroup12` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser12 WHERE contactgroup12_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup13`
--

DROP TABLE IF EXISTS `contactgroup13`;
CREATE TABLE `contactgroup13` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup13`
--


/*!40000 ALTER TABLE `contactgroup13` DISABLE KEYS */;
LOCK TABLES `contactgroup13` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup13` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup13_BDEL` BEFORE DELETE ON `contactgroup13` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser13 SET state = 2 WHERE contactgroup13_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser13 WHERE contactgroup13_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup13_ADEL` AFTER DELETE ON `contactgroup13` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser13 WHERE contactgroup13_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup14`
--

DROP TABLE IF EXISTS `contactgroup14`;
CREATE TABLE `contactgroup14` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup14`
--


/*!40000 ALTER TABLE `contactgroup14` DISABLE KEYS */;
LOCK TABLES `contactgroup14` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup14` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup14_BDEL` BEFORE DELETE ON `contactgroup14` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser14 SET state = 2 WHERE contactgroup14_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser14 WHERE contactgroup14_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup14_ADEL` AFTER DELETE ON `contactgroup14` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser14 WHERE contactgroup14_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup15`
--

DROP TABLE IF EXISTS `contactgroup15`;
CREATE TABLE `contactgroup15` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup15`
--


/*!40000 ALTER TABLE `contactgroup15` DISABLE KEYS */;
LOCK TABLES `contactgroup15` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup15` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup15_BDEL` BEFORE DELETE ON `contactgroup15` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser15 SET state = 2 WHERE contactgroup15_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser15 WHERE contactgroup15_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup15_ADEL` AFTER DELETE ON `contactgroup15` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser15 WHERE contactgroup15_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup16`
--

DROP TABLE IF EXISTS `contactgroup16`;
CREATE TABLE `contactgroup16` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup16`
--


/*!40000 ALTER TABLE `contactgroup16` DISABLE KEYS */;
LOCK TABLES `contactgroup16` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup16` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup16_BDEL` BEFORE DELETE ON `contactgroup16` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser16 SET state = 2 WHERE contactgroup16_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser16 WHERE contactgroup16_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup16_ADEL` AFTER DELETE ON `contactgroup16` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser16 WHERE contactgroup16_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup17`
--

DROP TABLE IF EXISTS `contactgroup17`;
CREATE TABLE `contactgroup17` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup17`
--


/*!40000 ALTER TABLE `contactgroup17` DISABLE KEYS */;
LOCK TABLES `contactgroup17` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup17` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup17_BDEL` BEFORE DELETE ON `contactgroup17` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser17 SET state = 2 WHERE contactgroup17_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser17 WHERE contactgroup17_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup17_ADEL` AFTER DELETE ON `contactgroup17` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser17 WHERE contactgroup17_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup18`
--

DROP TABLE IF EXISTS `contactgroup18`;
CREATE TABLE `contactgroup18` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup18`
--


/*!40000 ALTER TABLE `contactgroup18` DISABLE KEYS */;
LOCK TABLES `contactgroup18` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup18` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup18_BDEL` BEFORE DELETE ON `contactgroup18` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser18 SET state = 2 WHERE contactgroup18_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser18 WHERE contactgroup18_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup18_ADEL` AFTER DELETE ON `contactgroup18` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser18 WHERE contactgroup18_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup19`
--

DROP TABLE IF EXISTS `contactgroup19`;
CREATE TABLE `contactgroup19` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup19`
--


/*!40000 ALTER TABLE `contactgroup19` DISABLE KEYS */;
LOCK TABLES `contactgroup19` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup19` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup19_BDEL` BEFORE DELETE ON `contactgroup19` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser19 SET state = 2 WHERE contactgroup19_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser19 WHERE contactgroup19_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup19_ADEL` AFTER DELETE ON `contactgroup19` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser19 WHERE contactgroup19_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup2`
--

DROP TABLE IF EXISTS `contactgroup2`;
CREATE TABLE `contactgroup2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup2`
--


/*!40000 ALTER TABLE `contactgroup2` DISABLE KEYS */;
LOCK TABLES `contactgroup2` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup2` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup2_BDEL` BEFORE DELETE ON `contactgroup2` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser2 SET state = 2 WHERE contactgroup2_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser2 WHERE contactgroup2_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup2_ADEL` AFTER DELETE ON `contactgroup2` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser2 WHERE contactgroup2_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup20`
--

DROP TABLE IF EXISTS `contactgroup20`;
CREATE TABLE `contactgroup20` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup20`
--


/*!40000 ALTER TABLE `contactgroup20` DISABLE KEYS */;
LOCK TABLES `contactgroup20` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup20` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup20_BDEL` BEFORE DELETE ON `contactgroup20` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser20 SET state = 2 WHERE contactgroup20_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser20 WHERE contactgroup20_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup20_ADEL` AFTER DELETE ON `contactgroup20` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser20 WHERE contactgroup20_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup21`
--

DROP TABLE IF EXISTS `contactgroup21`;
CREATE TABLE `contactgroup21` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup21`
--


/*!40000 ALTER TABLE `contactgroup21` DISABLE KEYS */;
LOCK TABLES `contactgroup21` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup21` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup21_BDEL` BEFORE DELETE ON `contactgroup21` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser21 SET state = 2 WHERE contactgroup21_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser21 WHERE contactgroup21_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup21_ADEL` AFTER DELETE ON `contactgroup21` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser21 WHERE contactgroup21_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup22`
--

DROP TABLE IF EXISTS `contactgroup22`;
CREATE TABLE `contactgroup22` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup22`
--


/*!40000 ALTER TABLE `contactgroup22` DISABLE KEYS */;
LOCK TABLES `contactgroup22` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup22` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup22_BDEL` BEFORE DELETE ON `contactgroup22` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser22 SET state = 2 WHERE contactgroup22_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser22 WHERE contactgroup22_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup22_ADEL` AFTER DELETE ON `contactgroup22` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser22 WHERE contactgroup22_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup23`
--

DROP TABLE IF EXISTS `contactgroup23`;
CREATE TABLE `contactgroup23` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup23`
--


/*!40000 ALTER TABLE `contactgroup23` DISABLE KEYS */;
LOCK TABLES `contactgroup23` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup23` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup23_BDEL` BEFORE DELETE ON `contactgroup23` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser23 SET state = 2 WHERE contactgroup23_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser23 WHERE contactgroup23_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup23_ADEL` AFTER DELETE ON `contactgroup23` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser23 WHERE contactgroup23_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup24`
--

DROP TABLE IF EXISTS `contactgroup24`;
CREATE TABLE `contactgroup24` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup24`
--


/*!40000 ALTER TABLE `contactgroup24` DISABLE KEYS */;
LOCK TABLES `contactgroup24` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup24` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup24_BDEL` BEFORE DELETE ON `contactgroup24` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser24 SET state = 2 WHERE contactgroup24_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser24 WHERE contactgroup24_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup24_ADEL` AFTER DELETE ON `contactgroup24` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser24 WHERE contactgroup24_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup25`
--

DROP TABLE IF EXISTS `contactgroup25`;
CREATE TABLE `contactgroup25` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup25`
--


/*!40000 ALTER TABLE `contactgroup25` DISABLE KEYS */;
LOCK TABLES `contactgroup25` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup25` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup25_BDEL` BEFORE DELETE ON `contactgroup25` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser25 SET state = 2 WHERE contactgroup25_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser25 WHERE contactgroup25_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup25_ADEL` AFTER DELETE ON `contactgroup25` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser25 WHERE contactgroup25_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup26`
--

DROP TABLE IF EXISTS `contactgroup26`;
CREATE TABLE `contactgroup26` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup26`
--


/*!40000 ALTER TABLE `contactgroup26` DISABLE KEYS */;
LOCK TABLES `contactgroup26` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup26` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup26_BDEL` BEFORE DELETE ON `contactgroup26` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser26 SET state = 2 WHERE contactgroup26_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser26 WHERE contactgroup26_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup26_ADEL` AFTER DELETE ON `contactgroup26` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser26 WHERE contactgroup26_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup27`
--

DROP TABLE IF EXISTS `contactgroup27`;
CREATE TABLE `contactgroup27` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup27`
--


/*!40000 ALTER TABLE `contactgroup27` DISABLE KEYS */;
LOCK TABLES `contactgroup27` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup27` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup27_BDEL` BEFORE DELETE ON `contactgroup27` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser27 SET state = 2 WHERE contactgroup27_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser27 WHERE contactgroup27_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup27_ADEL` AFTER DELETE ON `contactgroup27` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser27 WHERE contactgroup27_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup28`
--

DROP TABLE IF EXISTS `contactgroup28`;
CREATE TABLE `contactgroup28` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup28`
--


/*!40000 ALTER TABLE `contactgroup28` DISABLE KEYS */;
LOCK TABLES `contactgroup28` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup28` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup28_BDEL` BEFORE DELETE ON `contactgroup28` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser28 SET state = 2 WHERE contactgroup28_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser28 WHERE contactgroup28_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup28_ADEL` AFTER DELETE ON `contactgroup28` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser28 WHERE contactgroup28_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup29`
--

DROP TABLE IF EXISTS `contactgroup29`;
CREATE TABLE `contactgroup29` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup29`
--


/*!40000 ALTER TABLE `contactgroup29` DISABLE KEYS */;
LOCK TABLES `contactgroup29` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup29` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup29_BDEL` BEFORE DELETE ON `contactgroup29` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser29 SET state = 2 WHERE contactgroup29_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser29 WHERE contactgroup29_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup29_ADEL` AFTER DELETE ON `contactgroup29` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser29 WHERE contactgroup29_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup3`
--

DROP TABLE IF EXISTS `contactgroup3`;
CREATE TABLE `contactgroup3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup3`
--


/*!40000 ALTER TABLE `contactgroup3` DISABLE KEYS */;
LOCK TABLES `contactgroup3` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup3` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup3_BDEL` BEFORE DELETE ON `contactgroup3` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser3 SET state = 2 WHERE contactgroup3_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser3 WHERE contactgroup3_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup3_ADEL` AFTER DELETE ON `contactgroup3` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser3 WHERE contactgroup3_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup30`
--

DROP TABLE IF EXISTS `contactgroup30`;
CREATE TABLE `contactgroup30` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup30`
--


/*!40000 ALTER TABLE `contactgroup30` DISABLE KEYS */;
LOCK TABLES `contactgroup30` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup30` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup30_BDEL` BEFORE DELETE ON `contactgroup30` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser30 SET state = 2 WHERE contactgroup30_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser30 WHERE contactgroup30_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup30_ADEL` AFTER DELETE ON `contactgroup30` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser30 WHERE contactgroup30_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup31`
--

DROP TABLE IF EXISTS `contactgroup31`;
CREATE TABLE `contactgroup31` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup31`
--


/*!40000 ALTER TABLE `contactgroup31` DISABLE KEYS */;
LOCK TABLES `contactgroup31` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup31` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup31_BDEL` BEFORE DELETE ON `contactgroup31` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser31 SET state = 2 WHERE contactgroup31_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser31 WHERE contactgroup31_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup31_ADEL` AFTER DELETE ON `contactgroup31` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser31 WHERE contactgroup31_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup32`
--

DROP TABLE IF EXISTS `contactgroup32`;
CREATE TABLE `contactgroup32` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup32`
--


/*!40000 ALTER TABLE `contactgroup32` DISABLE KEYS */;
LOCK TABLES `contactgroup32` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup32` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup32_BDEL` BEFORE DELETE ON `contactgroup32` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser32 SET state = 2 WHERE contactgroup32_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser32 WHERE contactgroup32_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup32_ADEL` AFTER DELETE ON `contactgroup32` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser32 WHERE contactgroup32_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup33`
--

DROP TABLE IF EXISTS `contactgroup33`;
CREATE TABLE `contactgroup33` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup33`
--


/*!40000 ALTER TABLE `contactgroup33` DISABLE KEYS */;
LOCK TABLES `contactgroup33` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup33` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup33_BDEL` BEFORE DELETE ON `contactgroup33` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser33 SET state = 2 WHERE contactgroup33_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser33 WHERE contactgroup33_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup33_ADEL` AFTER DELETE ON `contactgroup33` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser33 WHERE contactgroup33_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup34`
--

DROP TABLE IF EXISTS `contactgroup34`;
CREATE TABLE `contactgroup34` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup34`
--


/*!40000 ALTER TABLE `contactgroup34` DISABLE KEYS */;
LOCK TABLES `contactgroup34` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup34` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup34_BDEL` BEFORE DELETE ON `contactgroup34` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser34 SET state = 2 WHERE contactgroup34_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser34 WHERE contactgroup34_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup34_ADEL` AFTER DELETE ON `contactgroup34` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser34 WHERE contactgroup34_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup35`
--

DROP TABLE IF EXISTS `contactgroup35`;
CREATE TABLE `contactgroup35` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup35`
--


/*!40000 ALTER TABLE `contactgroup35` DISABLE KEYS */;
LOCK TABLES `contactgroup35` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup35` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup35_BDEL` BEFORE DELETE ON `contactgroup35` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser35 SET state = 2 WHERE contactgroup35_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser35 WHERE contactgroup35_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup35_ADEL` AFTER DELETE ON `contactgroup35` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser35 WHERE contactgroup35_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup36`
--

DROP TABLE IF EXISTS `contactgroup36`;
CREATE TABLE `contactgroup36` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup36`
--


/*!40000 ALTER TABLE `contactgroup36` DISABLE KEYS */;
LOCK TABLES `contactgroup36` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup36` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup36_BDEL` BEFORE DELETE ON `contactgroup36` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser36 SET state = 2 WHERE contactgroup36_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser36 WHERE contactgroup36_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup36_ADEL` AFTER DELETE ON `contactgroup36` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser36 WHERE contactgroup36_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup37`
--

DROP TABLE IF EXISTS `contactgroup37`;
CREATE TABLE `contactgroup37` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup37`
--


/*!40000 ALTER TABLE `contactgroup37` DISABLE KEYS */;
LOCK TABLES `contactgroup37` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup37` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup37_BDEL` BEFORE DELETE ON `contactgroup37` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser37 SET state = 2 WHERE contactgroup37_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser37 WHERE contactgroup37_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup37_ADEL` AFTER DELETE ON `contactgroup37` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser37 WHERE contactgroup37_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup38`
--

DROP TABLE IF EXISTS `contactgroup38`;
CREATE TABLE `contactgroup38` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup38`
--


/*!40000 ALTER TABLE `contactgroup38` DISABLE KEYS */;
LOCK TABLES `contactgroup38` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup38` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup38_BDEL` BEFORE DELETE ON `contactgroup38` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser38 SET state = 2 WHERE contactgroup38_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser38 WHERE contactgroup38_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup38_ADEL` AFTER DELETE ON `contactgroup38` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser38 WHERE contactgroup38_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup39`
--

DROP TABLE IF EXISTS `contactgroup39`;
CREATE TABLE `contactgroup39` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup39`
--


/*!40000 ALTER TABLE `contactgroup39` DISABLE KEYS */;
LOCK TABLES `contactgroup39` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup39` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup39_BDEL` BEFORE DELETE ON `contactgroup39` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser39 SET state = 2 WHERE contactgroup39_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser39 WHERE contactgroup39_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup39_ADEL` AFTER DELETE ON `contactgroup39` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser39 WHERE contactgroup39_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup4`
--

DROP TABLE IF EXISTS `contactgroup4`;
CREATE TABLE `contactgroup4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup4`
--


/*!40000 ALTER TABLE `contactgroup4` DISABLE KEYS */;
LOCK TABLES `contactgroup4` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup4` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup4_BDEL` BEFORE DELETE ON `contactgroup4` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser4 SET state = 2 WHERE contactgroup4_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser4 WHERE contactgroup4_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup4_ADEL` AFTER DELETE ON `contactgroup4` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser4 WHERE contactgroup4_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup40`
--

DROP TABLE IF EXISTS `contactgroup40`;
CREATE TABLE `contactgroup40` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup40`
--


/*!40000 ALTER TABLE `contactgroup40` DISABLE KEYS */;
LOCK TABLES `contactgroup40` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup40` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup40_BDEL` BEFORE DELETE ON `contactgroup40` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser40 SET state = 2 WHERE contactgroup40_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser40 WHERE contactgroup40_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup40_ADEL` AFTER DELETE ON `contactgroup40` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser40 WHERE contactgroup40_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup5`
--

DROP TABLE IF EXISTS `contactgroup5`;
CREATE TABLE `contactgroup5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup5`
--


/*!40000 ALTER TABLE `contactgroup5` DISABLE KEYS */;
LOCK TABLES `contactgroup5` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup5` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup5_BDEL` BEFORE DELETE ON `contactgroup5` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser5 SET state = 2 WHERE contactgroup5_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser5 WHERE contactgroup5_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup5_ADEL` AFTER DELETE ON `contactgroup5` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser5 WHERE contactgroup5_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup6`
--

DROP TABLE IF EXISTS `contactgroup6`;
CREATE TABLE `contactgroup6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup6`
--


/*!40000 ALTER TABLE `contactgroup6` DISABLE KEYS */;
LOCK TABLES `contactgroup6` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup6` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup6_BDEL` BEFORE DELETE ON `contactgroup6` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser6 SET state = 2 WHERE contactgroup6_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser6 WHERE contactgroup6_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup6_ADEL` AFTER DELETE ON `contactgroup6` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser6 WHERE contactgroup6_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup7`
--

DROP TABLE IF EXISTS `contactgroup7`;
CREATE TABLE `contactgroup7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup7`
--


/*!40000 ALTER TABLE `contactgroup7` DISABLE KEYS */;
LOCK TABLES `contactgroup7` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup7` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup7_BDEL` BEFORE DELETE ON `contactgroup7` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser7 SET state = 2 WHERE contactgroup7_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser7 WHERE contactgroup7_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup7_ADEL` AFTER DELETE ON `contactgroup7` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser7 WHERE contactgroup7_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup8`
--

DROP TABLE IF EXISTS `contactgroup8`;
CREATE TABLE `contactgroup8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup8`
--


/*!40000 ALTER TABLE `contactgroup8` DISABLE KEYS */;
LOCK TABLES `contactgroup8` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup8` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup8_BDEL` BEFORE DELETE ON `contactgroup8` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser8 SET state = 2 WHERE contactgroup8_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser8 WHERE contactgroup8_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup8_ADEL` AFTER DELETE ON `contactgroup8` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser8 WHERE contactgroup8_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `contactgroup9`
--

DROP TABLE IF EXISTS `contactgroup9`;
CREATE TABLE `contactgroup9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `countuser` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroup9`
--


/*!40000 ALTER TABLE `contactgroup9` DISABLE KEYS */;
LOCK TABLES `contactgroup9` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contactgroup9` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup9_BDEL` BEFORE DELETE ON `contactgroup9` FOR EACH ROW BEGIN UPDATE spisokcontactgroupuser9 SET state = 2 WHERE contactgroup9_id = OLD.id AND iduser not in (SELECT * FROM (SELECT DISTINCT iduser FROM spisokcontactgroupuser9 WHERE contactgroup9_id != OLD.id) AS X); END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `contactgroup9_ADEL` AFTER DELETE ON `contactgroup9` FOR EACH ROW BEGIN DELETE FROM spisokcontactgroupuser9 WHERE contactgroup9_id is null AND state =0; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `holliday`
--

DROP TABLE IF EXISTS `holliday`;
CREATE TABLE `holliday` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `name` varchar(256) NOT NULL,
  `descriptor` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `holliday`
--


/*!40000 ALTER TABLE `holliday` DISABLE KEYS */;
LOCK TABLES `holliday` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `holliday` ENABLE KEYS */;

--
-- Table structure for table `likecommentwall1`
--

DROP TABLE IF EXISTS `likecommentwall1`;
CREATE TABLE `likecommentwall1` (
  `commentwall1_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall1_commentwall11_idx` (`commentwall1_id`),
  KEY `fk_likecommentwall1_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall1_commentwall11` FOREIGN KEY (`commentwall1_id`) REFERENCES `commentwall1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall1_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall1`
--


/*!40000 ALTER TABLE `likecommentwall1` DISABLE KEYS */;
LOCK TABLES `likecommentwall1` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall1` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall1_AINS` AFTER INSERT ON `likecommentwall1` FOR EACH ROW UPDATE commentwall1 SET countlike = countlike +1 WHERE commentwall1.id = New.commentwall1_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall1_ADEL` AFTER DELETE ON `likecommentwall1` FOR EACH ROW UPDATE commentwall1 SET countlike = countlike -1 WHERE commentwall1.id = old.commentwall1_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall10`
--

DROP TABLE IF EXISTS `likecommentwall10`;
CREATE TABLE `likecommentwall10` (
  `commentwall10_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall10_commentwall101_idx` (`commentwall10_id`),
  KEY `fk_likecommentwall10_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall10_commentwall101` FOREIGN KEY (`commentwall10_id`) REFERENCES `commentwall10` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall10_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall10`
--


/*!40000 ALTER TABLE `likecommentwall10` DISABLE KEYS */;
LOCK TABLES `likecommentwall10` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall10` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall10_AINS` AFTER INSERT ON `likecommentwall10` FOR EACH ROW UPDATE commentwall10 SET countlike = countlike +1 WHERE commentwall10.id = New.commentwall10_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall10_ADEL` AFTER DELETE ON `likecommentwall10` FOR EACH ROW UPDATE commentwall10 SET countlike = countlike -1 WHERE commentwall10.id = old.commentwall10_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall11`
--

DROP TABLE IF EXISTS `likecommentwall11`;
CREATE TABLE `likecommentwall11` (
  `commentwall11_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall11_commentwall111_idx` (`commentwall11_id`),
  KEY `fk_likecommentwall11_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall11_commentwall111` FOREIGN KEY (`commentwall11_id`) REFERENCES `commentwall11` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall11_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall11`
--


/*!40000 ALTER TABLE `likecommentwall11` DISABLE KEYS */;
LOCK TABLES `likecommentwall11` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall11` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall11_AINS` AFTER INSERT ON `likecommentwall11` FOR EACH ROW UPDATE commentwall11 SET countlike = countlike +1 WHERE commentwall11.id = New.commentwall11_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall11_ADEL` AFTER DELETE ON `likecommentwall11` FOR EACH ROW UPDATE commentwall11 SET countlike = countlike -1 WHERE commentwall11.id = old.commentwall11_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall12`
--

DROP TABLE IF EXISTS `likecommentwall12`;
CREATE TABLE `likecommentwall12` (
  `commentwall12_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall12_commentwall121_idx` (`commentwall12_id`),
  KEY `fk_likecommentwall12_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall12_commentwall121` FOREIGN KEY (`commentwall12_id`) REFERENCES `commentwall12` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall12_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall12`
--


/*!40000 ALTER TABLE `likecommentwall12` DISABLE KEYS */;
LOCK TABLES `likecommentwall12` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall12` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall12_AINS` AFTER INSERT ON `likecommentwall12` FOR EACH ROW UPDATE commentwall12 SET countlike = countlike +1 WHERE commentwall12.id = New.commentwall12_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall12_ADEL` AFTER DELETE ON `likecommentwall12` FOR EACH ROW UPDATE commentwall12 SET countlike = countlike -1 WHERE commentwall12.id = old.commentwall12_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall13`
--

DROP TABLE IF EXISTS `likecommentwall13`;
CREATE TABLE `likecommentwall13` (
  `commentwall13_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall13_commentwall131_idx` (`commentwall13_id`),
  KEY `fk_likecommentwall13_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall13_commentwall131` FOREIGN KEY (`commentwall13_id`) REFERENCES `commentwall13` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall13_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall13`
--


/*!40000 ALTER TABLE `likecommentwall13` DISABLE KEYS */;
LOCK TABLES `likecommentwall13` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall13` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall13_AINS` AFTER INSERT ON `likecommentwall13` FOR EACH ROW UPDATE commentwall13 SET countlike = countlike +1 WHERE commentwall13.id = New.commentwall13_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall13_ADEL` AFTER DELETE ON `likecommentwall13` FOR EACH ROW UPDATE commentwall13 SET countlike = countlike -1 WHERE commentwall13.id = old.commentwall13_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall14`
--

DROP TABLE IF EXISTS `likecommentwall14`;
CREATE TABLE `likecommentwall14` (
  `commentwall14_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall14_commentwall141_idx` (`commentwall14_id`),
  KEY `fk_likecommentwall14_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall14_commentwall141` FOREIGN KEY (`commentwall14_id`) REFERENCES `commentwall14` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall14_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall14`
--


/*!40000 ALTER TABLE `likecommentwall14` DISABLE KEYS */;
LOCK TABLES `likecommentwall14` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall14` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall14_AINS` AFTER INSERT ON `likecommentwall14` FOR EACH ROW UPDATE commentwall14 SET countlike = countlike +1 WHERE commentwall14.id = New.commentwall14_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall14_ADEL` AFTER DELETE ON `likecommentwall14` FOR EACH ROW UPDATE commentwall14 SET countlike = countlike -1 WHERE commentwall14.id = old.commentwall14_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall15`
--

DROP TABLE IF EXISTS `likecommentwall15`;
CREATE TABLE `likecommentwall15` (
  `commentwall15_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall15_commentwall151_idx` (`commentwall15_id`),
  KEY `fk_likecommentwall15_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall15_commentwall151` FOREIGN KEY (`commentwall15_id`) REFERENCES `commentwall15` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall15_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall15`
--


/*!40000 ALTER TABLE `likecommentwall15` DISABLE KEYS */;
LOCK TABLES `likecommentwall15` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall15` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall15_AINS` AFTER INSERT ON `likecommentwall15` FOR EACH ROW UPDATE commentwall15 SET countlike = countlike +1 WHERE commentwall15.id = New.commentwall15_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall15_ADEL` AFTER DELETE ON `likecommentwall15` FOR EACH ROW UPDATE commentwall15 SET countlike = countlike -1 WHERE commentwall15.id = old.commentwall15_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall16`
--

DROP TABLE IF EXISTS `likecommentwall16`;
CREATE TABLE `likecommentwall16` (
  `commentwall16_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall16_commentwall161_idx` (`commentwall16_id`),
  KEY `fk_likecommentwall16_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall16_commentwall161` FOREIGN KEY (`commentwall16_id`) REFERENCES `commentwall16` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall16_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall16`
--


/*!40000 ALTER TABLE `likecommentwall16` DISABLE KEYS */;
LOCK TABLES `likecommentwall16` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall16` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall16_AINS` AFTER INSERT ON `likecommentwall16` FOR EACH ROW UPDATE commentwall16 SET countlike = countlike +1 WHERE commentwall16.id = New.commentwall16_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall16_ADEL` AFTER DELETE ON `likecommentwall16` FOR EACH ROW UPDATE commentwall16 SET countlike = countlike -1 WHERE commentwall16.id = old.commentwall16_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall17`
--

DROP TABLE IF EXISTS `likecommentwall17`;
CREATE TABLE `likecommentwall17` (
  `commentwall17_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall17_commentwall171_idx` (`commentwall17_id`),
  KEY `fk_likecommentwall17_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall17_commentwall171` FOREIGN KEY (`commentwall17_id`) REFERENCES `commentwall17` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall17_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall17`
--


/*!40000 ALTER TABLE `likecommentwall17` DISABLE KEYS */;
LOCK TABLES `likecommentwall17` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall17` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall17_AINS` AFTER INSERT ON `likecommentwall17` FOR EACH ROW UPDATE commentwall17 SET countlike = countlike +1 WHERE commentwall17.id = New.commentwall17_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall17_ADEL` AFTER DELETE ON `likecommentwall17` FOR EACH ROW UPDATE commentwall17 SET countlike = countlike -1 WHERE commentwall17.id = old.commentwall17_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall18`
--

DROP TABLE IF EXISTS `likecommentwall18`;
CREATE TABLE `likecommentwall18` (
  `commentwall18_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall18_commentwall181_idx` (`commentwall18_id`),
  KEY `fk_likecommentwall18_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall18_commentwall181` FOREIGN KEY (`commentwall18_id`) REFERENCES `commentwall18` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall18_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall18`
--


/*!40000 ALTER TABLE `likecommentwall18` DISABLE KEYS */;
LOCK TABLES `likecommentwall18` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall18` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall18_AINS` AFTER INSERT ON `likecommentwall18` FOR EACH ROW UPDATE commentwall18 SET countlike = countlike +1 WHERE commentwall18.id = New.commentwall18_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall18_ADEL` AFTER DELETE ON `likecommentwall18` FOR EACH ROW UPDATE commentwall18 SET countlike = countlike -1 WHERE commentwall18.id = old.commentwall18_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall19`
--

DROP TABLE IF EXISTS `likecommentwall19`;
CREATE TABLE `likecommentwall19` (
  `commentwall19_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall19_commentwall191_idx` (`commentwall19_id`),
  KEY `fk_likecommentwall19_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall19_commentwall191` FOREIGN KEY (`commentwall19_id`) REFERENCES `commentwall19` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall19_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall19`
--


/*!40000 ALTER TABLE `likecommentwall19` DISABLE KEYS */;
LOCK TABLES `likecommentwall19` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall19` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall19_AINS` AFTER INSERT ON `likecommentwall19` FOR EACH ROW UPDATE commentwall19 SET countlike = countlike +1 WHERE commentwall19.id = New.commentwall19_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall19_ADEL` AFTER DELETE ON `likecommentwall19` FOR EACH ROW UPDATE commentwall19 SET countlike = countlike -1 WHERE commentwall19.id = old.commentwall19_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall2`
--

DROP TABLE IF EXISTS `likecommentwall2`;
CREATE TABLE `likecommentwall2` (
  `commentwall2_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall2_commentwall21_idx` (`commentwall2_id`),
  KEY `fk_likecommentwall2_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall2_commentwall21` FOREIGN KEY (`commentwall2_id`) REFERENCES `commentwall2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall2_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall2`
--


/*!40000 ALTER TABLE `likecommentwall2` DISABLE KEYS */;
LOCK TABLES `likecommentwall2` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall2` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall2_AINS` AFTER INSERT ON `likecommentwall2` FOR EACH ROW UPDATE commentwall2 SET countlike = countlike +1 WHERE commentwall2.id = New.commentwall2_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall2_ADEL` AFTER DELETE ON `likecommentwall2` FOR EACH ROW UPDATE commentwall2 SET countlike = countlike -1 WHERE commentwall2.id = old.commentwall2_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall20`
--

DROP TABLE IF EXISTS `likecommentwall20`;
CREATE TABLE `likecommentwall20` (
  `commentwall20_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall20_commentwall201_idx` (`commentwall20_id`),
  KEY `fk_likecommentwall20_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall20_commentwall201` FOREIGN KEY (`commentwall20_id`) REFERENCES `commentwall20` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall20_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall20`
--


/*!40000 ALTER TABLE `likecommentwall20` DISABLE KEYS */;
LOCK TABLES `likecommentwall20` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall20` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall20_AINS` AFTER INSERT ON `likecommentwall20` FOR EACH ROW UPDATE commentwall20 SET countlike = countlike +1 WHERE commentwall20.id = New.commentwall20_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall20_ADEL` AFTER DELETE ON `likecommentwall20` FOR EACH ROW UPDATE commentwall20 SET countlike = countlike -1 WHERE commentwall20.id = old.commentwall20_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall21`
--

DROP TABLE IF EXISTS `likecommentwall21`;
CREATE TABLE `likecommentwall21` (
  `commentwall21_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall21_commentwall211_idx` (`commentwall21_id`),
  KEY `fk_likecommentwall21_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall21_commentwall211` FOREIGN KEY (`commentwall21_id`) REFERENCES `commentwall21` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall21_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall21`
--


/*!40000 ALTER TABLE `likecommentwall21` DISABLE KEYS */;
LOCK TABLES `likecommentwall21` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall21` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall21_AINS` AFTER INSERT ON `likecommentwall21` FOR EACH ROW UPDATE commentwall21 SET countlike = countlike +1 WHERE commentwall21.id = New.commentwall21_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall21_ADEL` AFTER DELETE ON `likecommentwall21` FOR EACH ROW UPDATE commentwall21 SET countlike = countlike -1 WHERE commentwall21.id = old.commentwall21_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall22`
--

DROP TABLE IF EXISTS `likecommentwall22`;
CREATE TABLE `likecommentwall22` (
  `commentwall22_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall22_commentwall221_idx` (`commentwall22_id`),
  KEY `fk_likecommentwall22_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall22_commentwall221` FOREIGN KEY (`commentwall22_id`) REFERENCES `commentwall22` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall22_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall22`
--


/*!40000 ALTER TABLE `likecommentwall22` DISABLE KEYS */;
LOCK TABLES `likecommentwall22` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall22` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall22_AINS` AFTER INSERT ON `likecommentwall22` FOR EACH ROW UPDATE commentwall22 SET countlike = countlike +1 WHERE commentwall22.id = New.commentwall22_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall22_ADEL` AFTER DELETE ON `likecommentwall22` FOR EACH ROW UPDATE commentwall22 SET countlike = countlike -1 WHERE commentwall22.id = old.commentwall22_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall23`
--

DROP TABLE IF EXISTS `likecommentwall23`;
CREATE TABLE `likecommentwall23` (
  `commentwall23_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall23_commentwall231_idx` (`commentwall23_id`),
  KEY `fk_likecommentwall23_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall23_commentwall231` FOREIGN KEY (`commentwall23_id`) REFERENCES `commentwall23` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall23_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall23`
--


/*!40000 ALTER TABLE `likecommentwall23` DISABLE KEYS */;
LOCK TABLES `likecommentwall23` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall23` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall23_AINS` AFTER INSERT ON `likecommentwall23` FOR EACH ROW UPDATE commentwall23 SET countlike = countlike +1 WHERE commentwall23.id = New.commentwall23_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall23_ADEL` AFTER DELETE ON `likecommentwall23` FOR EACH ROW UPDATE commentwall23 SET countlike = countlike -1 WHERE commentwall23.id = old.commentwall23_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall24`
--

DROP TABLE IF EXISTS `likecommentwall24`;
CREATE TABLE `likecommentwall24` (
  `commentwall24_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall24_commentwall241_idx` (`commentwall24_id`),
  KEY `fk_likecommentwall24_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall24_commentwall241` FOREIGN KEY (`commentwall24_id`) REFERENCES `commentwall24` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall24_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall24`
--


/*!40000 ALTER TABLE `likecommentwall24` DISABLE KEYS */;
LOCK TABLES `likecommentwall24` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall24` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall24_AINS` AFTER INSERT ON `likecommentwall24` FOR EACH ROW UPDATE commentwall24 SET countlike = countlike +1 WHERE commentwall24.id = New.commentwall24_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall24_ADEL` AFTER DELETE ON `likecommentwall24` FOR EACH ROW UPDATE commentwall24 SET countlike = countlike -1 WHERE commentwall24.id = old.commentwall24_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall25`
--

DROP TABLE IF EXISTS `likecommentwall25`;
CREATE TABLE `likecommentwall25` (
  `commentwall25_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall25_commentwall251_idx` (`commentwall25_id`),
  KEY `fk_likecommentwall25_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall25_commentwall251` FOREIGN KEY (`commentwall25_id`) REFERENCES `commentwall25` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall25_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall25`
--


/*!40000 ALTER TABLE `likecommentwall25` DISABLE KEYS */;
LOCK TABLES `likecommentwall25` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall25` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall25_AINS` AFTER INSERT ON `likecommentwall25` FOR EACH ROW UPDATE commentwall25 SET countlike = countlike +1 WHERE commentwall25.id = New.commentwall25_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall25_ADEL` AFTER DELETE ON `likecommentwall25` FOR EACH ROW UPDATE commentwall25 SET countlike = countlike -1 WHERE commentwall25.id = old.commentwall25_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall26`
--

DROP TABLE IF EXISTS `likecommentwall26`;
CREATE TABLE `likecommentwall26` (
  `commentwall26_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall26_commentwall261_idx` (`commentwall26_id`),
  KEY `fk_likecommentwall26_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall26_commentwall261` FOREIGN KEY (`commentwall26_id`) REFERENCES `commentwall26` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall26_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall26`
--


/*!40000 ALTER TABLE `likecommentwall26` DISABLE KEYS */;
LOCK TABLES `likecommentwall26` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall26` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall26_AINS` AFTER INSERT ON `likecommentwall26` FOR EACH ROW UPDATE commentwall26 SET countlike = countlike +1 WHERE commentwall26.id = New.commentwall26_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall26_ADEL` AFTER DELETE ON `likecommentwall26` FOR EACH ROW UPDATE commentwall26 SET countlike = countlike -1 WHERE commentwall26.id = old.commentwall26_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall27`
--

DROP TABLE IF EXISTS `likecommentwall27`;
CREATE TABLE `likecommentwall27` (
  `commentwall27_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall27_commentwall271_idx` (`commentwall27_id`),
  KEY `fk_likecommentwall27_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall27_commentwall271` FOREIGN KEY (`commentwall27_id`) REFERENCES `commentwall27` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall27_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall27`
--


/*!40000 ALTER TABLE `likecommentwall27` DISABLE KEYS */;
LOCK TABLES `likecommentwall27` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall27` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall27_AINS` AFTER INSERT ON `likecommentwall27` FOR EACH ROW UPDATE commentwall27 SET countlike = countlike +1 WHERE commentwall27.id = New.commentwall27_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall27_ADEL` AFTER DELETE ON `likecommentwall27` FOR EACH ROW UPDATE commentwall27 SET countlike = countlike -1 WHERE commentwall27.id = old.commentwall27_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall28`
--

DROP TABLE IF EXISTS `likecommentwall28`;
CREATE TABLE `likecommentwall28` (
  `commentwall28_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall28_commentwall281_idx` (`commentwall28_id`),
  KEY `fk_likecommentwall28_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall28_commentwall281` FOREIGN KEY (`commentwall28_id`) REFERENCES `commentwall28` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall28_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall28`
--


/*!40000 ALTER TABLE `likecommentwall28` DISABLE KEYS */;
LOCK TABLES `likecommentwall28` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall28` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall28_AINS` AFTER INSERT ON `likecommentwall28` FOR EACH ROW UPDATE commentwall28 SET countlike = countlike +1 WHERE commentwall28.id = New.commentwall28_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall28_ADEL` AFTER DELETE ON `likecommentwall28` FOR EACH ROW UPDATE commentwall28 SET countlike = countlike -1 WHERE commentwall28.id = old.commentwall28_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall29`
--

DROP TABLE IF EXISTS `likecommentwall29`;
CREATE TABLE `likecommentwall29` (
  `commentwall29_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall29_commentwall291_idx` (`commentwall29_id`),
  KEY `fk_likecommentwall29_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall29_commentwall291` FOREIGN KEY (`commentwall29_id`) REFERENCES `commentwall29` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall29_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall29`
--


/*!40000 ALTER TABLE `likecommentwall29` DISABLE KEYS */;
LOCK TABLES `likecommentwall29` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall29` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall29_AINS` AFTER INSERT ON `likecommentwall29` FOR EACH ROW UPDATE commentwall29 SET countlike = countlike +1 WHERE commentwall29.id = New.commentwall29_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall29_ADEL` AFTER DELETE ON `likecommentwall29` FOR EACH ROW UPDATE commentwall29 SET countlike = countlike -1 WHERE commentwall29.id = old.commentwall29_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall3`
--

DROP TABLE IF EXISTS `likecommentwall3`;
CREATE TABLE `likecommentwall3` (
  `commentwall3_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall3_commentwall31_idx` (`commentwall3_id`),
  KEY `fk_likecommentwall3_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall3_commentwall31` FOREIGN KEY (`commentwall3_id`) REFERENCES `commentwall3` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall3_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall3`
--


/*!40000 ALTER TABLE `likecommentwall3` DISABLE KEYS */;
LOCK TABLES `likecommentwall3` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall3` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall3_AINS` AFTER INSERT ON `likecommentwall3` FOR EACH ROW UPDATE commentwall3 SET countlike = countlike +1 WHERE commentwall3.id = New.commentwall3_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall3_ADEL` AFTER DELETE ON `likecommentwall3` FOR EACH ROW UPDATE commentwall3 SET countlike = countlike -1 WHERE commentwall3.id = old.commentwall3_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall30`
--

DROP TABLE IF EXISTS `likecommentwall30`;
CREATE TABLE `likecommentwall30` (
  `commentwall30_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall30_commentwall301_idx` (`commentwall30_id`),
  KEY `fk_likecommentwall30_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall30_commentwall301` FOREIGN KEY (`commentwall30_id`) REFERENCES `commentwall30` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall30_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall30`
--


/*!40000 ALTER TABLE `likecommentwall30` DISABLE KEYS */;
LOCK TABLES `likecommentwall30` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall30` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall30_AINS` AFTER INSERT ON `likecommentwall30` FOR EACH ROW UPDATE commentwall30 SET countlike = countlike +1 WHERE commentwall30.id = New.commentwall30_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall30_ADEL` AFTER DELETE ON `likecommentwall30` FOR EACH ROW UPDATE commentwall30 SET countlike = countlike -1 WHERE commentwall30.id = old.commentwall30_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall31`
--

DROP TABLE IF EXISTS `likecommentwall31`;
CREATE TABLE `likecommentwall31` (
  `commentwall31_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall31_commentwall311_idx` (`commentwall31_id`),
  KEY `fk_likecommentwall31_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall31_commentwall311` FOREIGN KEY (`commentwall31_id`) REFERENCES `commentwall31` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall31_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall31`
--


/*!40000 ALTER TABLE `likecommentwall31` DISABLE KEYS */;
LOCK TABLES `likecommentwall31` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall31` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall31_AINS` AFTER INSERT ON `likecommentwall31` FOR EACH ROW UPDATE commentwall31 SET countlike = countlike +1 WHERE commentwall31.id = New.commentwall31_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall31_ADEL` AFTER DELETE ON `likecommentwall31` FOR EACH ROW UPDATE commentwall31 SET countlike = countlike -1 WHERE commentwall31.id = old.commentwall31_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall32`
--

DROP TABLE IF EXISTS `likecommentwall32`;
CREATE TABLE `likecommentwall32` (
  `commentwall32_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall32_commentwall321_idx` (`commentwall32_id`),
  KEY `fk_likecommentwall32_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall32_commentwall321` FOREIGN KEY (`commentwall32_id`) REFERENCES `commentwall32` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall32_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall32`
--


/*!40000 ALTER TABLE `likecommentwall32` DISABLE KEYS */;
LOCK TABLES `likecommentwall32` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall32` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall32_AINS` AFTER INSERT ON `likecommentwall32` FOR EACH ROW UPDATE commentwall32 SET countlike = countlike +1 WHERE commentwall32.id = New.commentwall32_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall32_ADEL` AFTER DELETE ON `likecommentwall32` FOR EACH ROW UPDATE commentwall32 SET countlike = countlike -1 WHERE commentwall32.id = old.commentwall32_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall33`
--

DROP TABLE IF EXISTS `likecommentwall33`;
CREATE TABLE `likecommentwall33` (
  `commentwall33_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall33_commentwall331_idx` (`commentwall33_id`),
  KEY `fk_likecommentwall33_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall33_commentwall331` FOREIGN KEY (`commentwall33_id`) REFERENCES `commentwall33` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall33_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall33`
--


/*!40000 ALTER TABLE `likecommentwall33` DISABLE KEYS */;
LOCK TABLES `likecommentwall33` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall33` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall33_AINS` AFTER INSERT ON `likecommentwall33` FOR EACH ROW UPDATE commentwall33 SET countlike = countlike +1 WHERE commentwall33.id = New.commentwall33_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall33_ADEL` AFTER DELETE ON `likecommentwall33` FOR EACH ROW UPDATE commentwall33 SET countlike = countlike -1 WHERE commentwall33.id = old.commentwall33_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall34`
--

DROP TABLE IF EXISTS `likecommentwall34`;
CREATE TABLE `likecommentwall34` (
  `commentwall34_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall34_commentwall341_idx` (`commentwall34_id`),
  KEY `fk_likecommentwall34_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall34_commentwall341` FOREIGN KEY (`commentwall34_id`) REFERENCES `commentwall34` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall34_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall34`
--


/*!40000 ALTER TABLE `likecommentwall34` DISABLE KEYS */;
LOCK TABLES `likecommentwall34` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall34` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall34_AINS` AFTER INSERT ON `likecommentwall34` FOR EACH ROW UPDATE commentwall34 SET countlike = countlike +1 WHERE commentwall34.id = New.commentwall34_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall34_ADEL` AFTER DELETE ON `likecommentwall34` FOR EACH ROW UPDATE commentwall34 SET countlike = countlike -1 WHERE commentwall34.id = old.commentwall34_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall35`
--

DROP TABLE IF EXISTS `likecommentwall35`;
CREATE TABLE `likecommentwall35` (
  `commentwall35_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall35_commentwall351_idx` (`commentwall35_id`),
  KEY `fk_likecommentwall35_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall35_commentwall351` FOREIGN KEY (`commentwall35_id`) REFERENCES `commentwall35` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall35_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall35`
--


/*!40000 ALTER TABLE `likecommentwall35` DISABLE KEYS */;
LOCK TABLES `likecommentwall35` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall35` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall35_AINS` AFTER INSERT ON `likecommentwall35` FOR EACH ROW UPDATE commentwall35 SET countlike = countlike +1 WHERE commentwall35.id = New.commentwall35_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall35_ADEL` AFTER DELETE ON `likecommentwall35` FOR EACH ROW UPDATE commentwall35 SET countlike = countlike -1 WHERE commentwall35.id = old.commentwall35_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall36`
--

DROP TABLE IF EXISTS `likecommentwall36`;
CREATE TABLE `likecommentwall36` (
  `commentwall36_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall36_commentwall361_idx` (`commentwall36_id`),
  KEY `fk_likecommentwall36_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall36_commentwall361` FOREIGN KEY (`commentwall36_id`) REFERENCES `commentwall36` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall36_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall36`
--


/*!40000 ALTER TABLE `likecommentwall36` DISABLE KEYS */;
LOCK TABLES `likecommentwall36` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall36` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall36_AINS` AFTER INSERT ON `likecommentwall36` FOR EACH ROW UPDATE commentwall36 SET countlike = countlike +1 WHERE commentwall36.id = New.commentwall36_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall36_ADEL` AFTER DELETE ON `likecommentwall36` FOR EACH ROW UPDATE commentwall36 SET countlike = countlike -1 WHERE commentwall36.id = old.commentwall36_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall37`
--

DROP TABLE IF EXISTS `likecommentwall37`;
CREATE TABLE `likecommentwall37` (
  `commentwall37_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall37_commentwall371_idx` (`commentwall37_id`),
  KEY `fk_likecommentwall37_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall37_commentwall371` FOREIGN KEY (`commentwall37_id`) REFERENCES `commentwall37` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall37_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall37`
--


/*!40000 ALTER TABLE `likecommentwall37` DISABLE KEYS */;
LOCK TABLES `likecommentwall37` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall37` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall37_AINS` AFTER INSERT ON `likecommentwall37` FOR EACH ROW UPDATE commentwall37 SET countlike = countlike +1 WHERE commentwall37.id = New.commentwall37_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall37_ADEL` AFTER DELETE ON `likecommentwall37` FOR EACH ROW UPDATE commentwall37 SET countlike = countlike -1 WHERE commentwall37.id = old.commentwall37_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall38`
--

DROP TABLE IF EXISTS `likecommentwall38`;
CREATE TABLE `likecommentwall38` (
  `commentwall38_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall38_commentwall381_idx` (`commentwall38_id`),
  KEY `fk_likecommentwall38_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall38_commentwall381` FOREIGN KEY (`commentwall38_id`) REFERENCES `commentwall38` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall38_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall38`
--


/*!40000 ALTER TABLE `likecommentwall38` DISABLE KEYS */;
LOCK TABLES `likecommentwall38` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall38` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall38_AINS` AFTER INSERT ON `likecommentwall38` FOR EACH ROW UPDATE commentwall38 SET countlike = countlike +1 WHERE commentwall38.id = New.commentwall38_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall38_ADEL` AFTER DELETE ON `likecommentwall38` FOR EACH ROW UPDATE commentwall38 SET countlike = countlike -1 WHERE commentwall38.id = old.commentwall38_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall39`
--

DROP TABLE IF EXISTS `likecommentwall39`;
CREATE TABLE `likecommentwall39` (
  `commentwall39_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall39_commentwall391_idx` (`commentwall39_id`),
  KEY `fk_likecommentwall39_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall39_commentwall391` FOREIGN KEY (`commentwall39_id`) REFERENCES `commentwall39` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall39_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall39`
--


/*!40000 ALTER TABLE `likecommentwall39` DISABLE KEYS */;
LOCK TABLES `likecommentwall39` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall39` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall39_AINS` AFTER INSERT ON `likecommentwall39` FOR EACH ROW UPDATE commentwall39 SET countlike = countlike +1 WHERE commentwall39.id = New.commentwall39_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall39_ADEL` AFTER DELETE ON `likecommentwall39` FOR EACH ROW UPDATE commentwall39 SET countlike = countlike -1 WHERE commentwall39.id = old.commentwall39_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall4`
--

DROP TABLE IF EXISTS `likecommentwall4`;
CREATE TABLE `likecommentwall4` (
  `commentwall4_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall4_commentwall41_idx` (`commentwall4_id`),
  KEY `fk_likecommentwall4_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall4_commentwall41` FOREIGN KEY (`commentwall4_id`) REFERENCES `commentwall4` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall4_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall4`
--


/*!40000 ALTER TABLE `likecommentwall4` DISABLE KEYS */;
LOCK TABLES `likecommentwall4` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall4` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall4_AINS` AFTER INSERT ON `likecommentwall4` FOR EACH ROW UPDATE commentwall4 SET countlike = countlike +1 WHERE commentwall4.id = New.commentwall4_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall4_ADEL` AFTER DELETE ON `likecommentwall4` FOR EACH ROW UPDATE commentwall4 SET countlike = countlike -1 WHERE commentwall4.id = old.commentwall4_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall40`
--

DROP TABLE IF EXISTS `likecommentwall40`;
CREATE TABLE `likecommentwall40` (
  `commentwall40_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall40_commentwall401_idx` (`commentwall40_id`),
  KEY `fk_likecommentwall40_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall40_commentwall401` FOREIGN KEY (`commentwall40_id`) REFERENCES `commentwall40` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall40_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall40`
--


/*!40000 ALTER TABLE `likecommentwall40` DISABLE KEYS */;
LOCK TABLES `likecommentwall40` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall40` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall40_AINS` AFTER INSERT ON `likecommentwall40` FOR EACH ROW UPDATE commentwall40 SET countlike = countlike +1 WHERE commentwall40.id = New.commentwall40_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall40_ADEL` AFTER DELETE ON `likecommentwall40` FOR EACH ROW UPDATE commentwall40 SET countlike = countlike -1 WHERE commentwall40.id = old.commentwall40_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall5`
--

DROP TABLE IF EXISTS `likecommentwall5`;
CREATE TABLE `likecommentwall5` (
  `commentwall5_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall5_commentwall51_idx` (`commentwall5_id`),
  KEY `fk_likecommentwall5_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall5_commentwall51` FOREIGN KEY (`commentwall5_id`) REFERENCES `commentwall5` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall5_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall5`
--


/*!40000 ALTER TABLE `likecommentwall5` DISABLE KEYS */;
LOCK TABLES `likecommentwall5` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall5` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall5_AINS` AFTER INSERT ON `likecommentwall5` FOR EACH ROW UPDATE commentwall5 SET countlike = countlike +1 WHERE commentwall5.id = New.commentwall5_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall5_ADEL` AFTER DELETE ON `likecommentwall5` FOR EACH ROW UPDATE commentwall5 SET countlike = countlike -1 WHERE commentwall5.id = old.commentwall5_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall6`
--

DROP TABLE IF EXISTS `likecommentwall6`;
CREATE TABLE `likecommentwall6` (
  `commentwall6_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall6_commentwall61_idx` (`commentwall6_id`),
  KEY `fk_likecommentwall6_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall6_commentwall61` FOREIGN KEY (`commentwall6_id`) REFERENCES `commentwall6` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall6_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall6`
--


/*!40000 ALTER TABLE `likecommentwall6` DISABLE KEYS */;
LOCK TABLES `likecommentwall6` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall6` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall6_AINS` AFTER INSERT ON `likecommentwall6` FOR EACH ROW UPDATE commentwall6 SET countlike = countlike +1 WHERE commentwall6.id = New.commentwall6_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall6_ADEL` AFTER DELETE ON `likecommentwall6` FOR EACH ROW UPDATE commentwall6 SET countlike = countlike -1 WHERE commentwall6.id = old.commentwall6_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall7`
--

DROP TABLE IF EXISTS `likecommentwall7`;
CREATE TABLE `likecommentwall7` (
  `commentwall7_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall7_commentwall71_idx` (`commentwall7_id`),
  KEY `fk_likecommentwall7_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall7_commentwall71` FOREIGN KEY (`commentwall7_id`) REFERENCES `commentwall7` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall7_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall7`
--


/*!40000 ALTER TABLE `likecommentwall7` DISABLE KEYS */;
LOCK TABLES `likecommentwall7` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall7` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall7_AINS` AFTER INSERT ON `likecommentwall7` FOR EACH ROW UPDATE commentwall7 SET countlike = countlike +1 WHERE commentwall7.id = New.commentwall7_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall7_ADEL` AFTER DELETE ON `likecommentwall7` FOR EACH ROW UPDATE commentwall7 SET countlike = countlike -1 WHERE commentwall7.id = old.commentwall7_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall8`
--

DROP TABLE IF EXISTS `likecommentwall8`;
CREATE TABLE `likecommentwall8` (
  `commentwall8_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall8_commentwall81_idx` (`commentwall8_id`),
  KEY `fk_likecommentwall8_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall8_commentwall81` FOREIGN KEY (`commentwall8_id`) REFERENCES `commentwall8` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall8_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall8`
--


/*!40000 ALTER TABLE `likecommentwall8` DISABLE KEYS */;
LOCK TABLES `likecommentwall8` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall8` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall8_AINS` AFTER INSERT ON `likecommentwall8` FOR EACH ROW UPDATE commentwall8 SET countlike = countlike +1 WHERE commentwall8.id = New.commentwall8_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall8_ADEL` AFTER DELETE ON `likecommentwall8` FOR EACH ROW UPDATE commentwall8 SET countlike = countlike -1 WHERE commentwall8.id = old.commentwall8_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likecommentwall9`
--

DROP TABLE IF EXISTS `likecommentwall9`;
CREATE TABLE `likecommentwall9` (
  `commentwall9_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likecommentwall9_commentwall91_idx` (`commentwall9_id`),
  KEY `fk_likecommentwall9_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likecommentwall9_commentwall91` FOREIGN KEY (`commentwall9_id`) REFERENCES `commentwall9` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwall9_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likecommentwall9`
--


/*!40000 ALTER TABLE `likecommentwall9` DISABLE KEYS */;
LOCK TABLES `likecommentwall9` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likecommentwall9` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall9_AINS` AFTER INSERT ON `likecommentwall9` FOR EACH ROW UPDATE commentwall9 SET countlike = countlike +1 WHERE commentwall9.id = New.commentwall9_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likecommentwall9_ADEL` AFTER DELETE ON `likecommentwall9` FOR EACH ROW UPDATE commentwall9 SET countlike = countlike -1 WHERE commentwall9.id = old.commentwall9_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall1`
--

DROP TABLE IF EXISTS `likewall1`;
CREATE TABLE `likewall1` (
  `wall1_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall1_wall11_idx` (`wall1_id`),
  KEY `fk_likewall1_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall1_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall1_wall11` FOREIGN KEY (`wall1_id`) REFERENCES `wall1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall1`
--


/*!40000 ALTER TABLE `likewall1` DISABLE KEYS */;
LOCK TABLES `likewall1` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall1` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall1_AINS` AFTER INSERT ON `likewall1` FOR EACH ROW UPDATE wall1 SET countlike = countlike +1 WHERE wall1.id = new.wall1_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall1_ADEL` AFTER DELETE ON `likewall1` FOR EACH ROW UPDATE wall1 SET countlike = countlike -1 WHERE wall1.id = old.wall1_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall10`
--

DROP TABLE IF EXISTS `likewall10`;
CREATE TABLE `likewall10` (
  `wall10_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall10_wall101_idx` (`wall10_id`),
  KEY `fk_likewall10_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall10_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall10_wall101` FOREIGN KEY (`wall10_id`) REFERENCES `wall10` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall10`
--


/*!40000 ALTER TABLE `likewall10` DISABLE KEYS */;
LOCK TABLES `likewall10` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall10` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall10_AINS` AFTER INSERT ON `likewall10` FOR EACH ROW UPDATE wall10 SET countlike = countlike +1 WHERE wall10.id = new.wall10_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall10_ADEL` AFTER DELETE ON `likewall10` FOR EACH ROW UPDATE wall10 SET countlike = countlike -1 WHERE wall10.id = old.wall10_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall11`
--

DROP TABLE IF EXISTS `likewall11`;
CREATE TABLE `likewall11` (
  `wall11_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall11_wall111_idx` (`wall11_id`),
  KEY `fk_likewall11_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall11_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall11_wall111` FOREIGN KEY (`wall11_id`) REFERENCES `wall11` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall11`
--


/*!40000 ALTER TABLE `likewall11` DISABLE KEYS */;
LOCK TABLES `likewall11` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall11` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall11_AINS` AFTER INSERT ON `likewall11` FOR EACH ROW UPDATE wall11 SET countlike = countlike +1 WHERE wall11.id = new.wall11_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall11_ADEL` AFTER DELETE ON `likewall11` FOR EACH ROW UPDATE wall11 SET countlike = countlike -1 WHERE wall11.id = old.wall11_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall12`
--

DROP TABLE IF EXISTS `likewall12`;
CREATE TABLE `likewall12` (
  `wall12_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall12_wall121_idx` (`wall12_id`),
  KEY `fk_likewall12_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall12_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall12_wall121` FOREIGN KEY (`wall12_id`) REFERENCES `wall12` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall12`
--


/*!40000 ALTER TABLE `likewall12` DISABLE KEYS */;
LOCK TABLES `likewall12` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall12` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall12_AINS` AFTER INSERT ON `likewall12` FOR EACH ROW UPDATE wall12 SET countlike = countlike +1 WHERE wall12.id = new.wall12_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall12_ADEL` AFTER DELETE ON `likewall12` FOR EACH ROW UPDATE wall12 SET countlike = countlike -1 WHERE wall12.id = old.wall12_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall13`
--

DROP TABLE IF EXISTS `likewall13`;
CREATE TABLE `likewall13` (
  `wall13_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall13_wall131_idx` (`wall13_id`),
  KEY `fk_likewall13_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall13_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall13_wall131` FOREIGN KEY (`wall13_id`) REFERENCES `wall13` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall13`
--


/*!40000 ALTER TABLE `likewall13` DISABLE KEYS */;
LOCK TABLES `likewall13` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall13` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall13_AINS` AFTER INSERT ON `likewall13` FOR EACH ROW UPDATE wall13 SET countlike = countlike +1 WHERE wall13.id = new.wall13_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall13_ADEL` AFTER DELETE ON `likewall13` FOR EACH ROW UPDATE wall13 SET countlike = countlike -1 WHERE wall13.id = old.wall13_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall14`
--

DROP TABLE IF EXISTS `likewall14`;
CREATE TABLE `likewall14` (
  `wall14_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall14_wall141_idx` (`wall14_id`),
  KEY `fk_likewall14_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall14_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall14_wall141` FOREIGN KEY (`wall14_id`) REFERENCES `wall14` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall14`
--


/*!40000 ALTER TABLE `likewall14` DISABLE KEYS */;
LOCK TABLES `likewall14` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall14` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall14_AINS` AFTER INSERT ON `likewall14` FOR EACH ROW UPDATE wall14 SET countlike = countlike +1 WHERE wall14.id = new.wall14_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall14_ADEL` AFTER DELETE ON `likewall14` FOR EACH ROW UPDATE wall14 SET countlike = countlike -1 WHERE wall14.id = old.wall14_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall15`
--

DROP TABLE IF EXISTS `likewall15`;
CREATE TABLE `likewall15` (
  `wall15_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall15_wall151_idx` (`wall15_id`),
  KEY `fk_likewall15_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall15_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall15_wall151` FOREIGN KEY (`wall15_id`) REFERENCES `wall15` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall15`
--


/*!40000 ALTER TABLE `likewall15` DISABLE KEYS */;
LOCK TABLES `likewall15` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall15` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall15_AINS` AFTER INSERT ON `likewall15` FOR EACH ROW UPDATE wall15 SET countlike = countlike +1 WHERE wall15.id = new.wall15_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall15_ADEL` AFTER DELETE ON `likewall15` FOR EACH ROW UPDATE wall15 SET countlike = countlike -1 WHERE wall15.id = old.wall15_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall16`
--

DROP TABLE IF EXISTS `likewall16`;
CREATE TABLE `likewall16` (
  `wall16_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall16_wall161_idx` (`wall16_id`),
  KEY `fk_likewall16_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall16_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall16_wall161` FOREIGN KEY (`wall16_id`) REFERENCES `wall16` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall16`
--


/*!40000 ALTER TABLE `likewall16` DISABLE KEYS */;
LOCK TABLES `likewall16` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall16` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall16_AINS` AFTER INSERT ON `likewall16` FOR EACH ROW UPDATE wall16 SET countlike = countlike +1 WHERE wall16.id = new.wall16_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall16_ADEL` AFTER DELETE ON `likewall16` FOR EACH ROW UPDATE wall16 SET countlike = countlike -1 WHERE wall16.id = old.wall16_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall17`
--

DROP TABLE IF EXISTS `likewall17`;
CREATE TABLE `likewall17` (
  `wall17_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall17_wall171_idx` (`wall17_id`),
  KEY `fk_likewall17_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall17_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall17_wall171` FOREIGN KEY (`wall17_id`) REFERENCES `wall17` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall17`
--


/*!40000 ALTER TABLE `likewall17` DISABLE KEYS */;
LOCK TABLES `likewall17` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall17` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall17_AINS` AFTER INSERT ON `likewall17` FOR EACH ROW UPDATE wall17 SET countlike = countlike +1 WHERE wall17.id = new.wall17_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall17_ADEL` AFTER DELETE ON `likewall17` FOR EACH ROW UPDATE wall17 SET countlike = countlike -1 WHERE wall17.id = old.wall17_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall18`
--

DROP TABLE IF EXISTS `likewall18`;
CREATE TABLE `likewall18` (
  `wall18_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall18_wall181_idx` (`wall18_id`),
  KEY `fk_likewall18_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall18_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall18_wall181` FOREIGN KEY (`wall18_id`) REFERENCES `wall18` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall18`
--


/*!40000 ALTER TABLE `likewall18` DISABLE KEYS */;
LOCK TABLES `likewall18` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall18` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall18_AINS` AFTER INSERT ON `likewall18` FOR EACH ROW UPDATE wall18 SET countlike = countlike +1 WHERE wall18.id = new.wall18_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall18_ADEL` AFTER DELETE ON `likewall18` FOR EACH ROW UPDATE wall18 SET countlike = countlike -1 WHERE wall18.id = old.wall18_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall19`
--

DROP TABLE IF EXISTS `likewall19`;
CREATE TABLE `likewall19` (
  `wall19_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall19_wall191_idx` (`wall19_id`),
  KEY `fk_likewall19_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall19_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall19_wall191` FOREIGN KEY (`wall19_id`) REFERENCES `wall19` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall19`
--


/*!40000 ALTER TABLE `likewall19` DISABLE KEYS */;
LOCK TABLES `likewall19` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall19` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall19_AINS` AFTER INSERT ON `likewall19` FOR EACH ROW UPDATE wall19 SET countlike = countlike +1 WHERE wall19.id = new.wall19_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall19_ADEL` AFTER DELETE ON `likewall19` FOR EACH ROW UPDATE wall19 SET countlike = countlike -1 WHERE wall19.id = old.wall19_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall2`
--

DROP TABLE IF EXISTS `likewall2`;
CREATE TABLE `likewall2` (
  `wall2_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall2_wall21_idx` (`wall2_id`),
  KEY `fk_likewall2_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall2_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall2_wall21` FOREIGN KEY (`wall2_id`) REFERENCES `wall2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall2`
--


/*!40000 ALTER TABLE `likewall2` DISABLE KEYS */;
LOCK TABLES `likewall2` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall2` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall2_AINS` AFTER INSERT ON `likewall2` FOR EACH ROW UPDATE wall2 SET countlike = countlike +1 WHERE wall2.id = new.wall2_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall2_ADEL` AFTER DELETE ON `likewall2` FOR EACH ROW UPDATE wall2 SET countlike = countlike -1 WHERE wall2.id = old.wall2_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall20`
--

DROP TABLE IF EXISTS `likewall20`;
CREATE TABLE `likewall20` (
  `wall20_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall20_wall201_idx` (`wall20_id`),
  KEY `fk_likewall20_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall20_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall20_wall201` FOREIGN KEY (`wall20_id`) REFERENCES `wall20` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall20`
--


/*!40000 ALTER TABLE `likewall20` DISABLE KEYS */;
LOCK TABLES `likewall20` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall20` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall20_AINS` AFTER INSERT ON `likewall20` FOR EACH ROW UPDATE wall20 SET countlike = countlike +1 WHERE wall20.id = new.wall20_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall20_ADEL` AFTER DELETE ON `likewall20` FOR EACH ROW UPDATE wall20 SET countlike = countlike -1 WHERE wall20.id = old.wall20_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall21`
--

DROP TABLE IF EXISTS `likewall21`;
CREATE TABLE `likewall21` (
  `wall21_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall21_wall211_idx` (`wall21_id`),
  KEY `fk_likewall21_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall21_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall21_wall211` FOREIGN KEY (`wall21_id`) REFERENCES `wall21` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall21`
--


/*!40000 ALTER TABLE `likewall21` DISABLE KEYS */;
LOCK TABLES `likewall21` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall21` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall21_AINS` AFTER INSERT ON `likewall21` FOR EACH ROW UPDATE wall21 SET countlike = countlike +1 WHERE wall21.id = new.wall21_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall21_ADEL` AFTER DELETE ON `likewall21` FOR EACH ROW UPDATE wall21 SET countlike = countlike -1 WHERE wall21.id = old.wall21_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall22`
--

DROP TABLE IF EXISTS `likewall22`;
CREATE TABLE `likewall22` (
  `wall22_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall22_wall221_idx` (`wall22_id`),
  KEY `fk_likewall22_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall22_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall22_wall221` FOREIGN KEY (`wall22_id`) REFERENCES `wall22` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall22`
--


/*!40000 ALTER TABLE `likewall22` DISABLE KEYS */;
LOCK TABLES `likewall22` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall22` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall22_AINS` AFTER INSERT ON `likewall22` FOR EACH ROW UPDATE wall22 SET countlike = countlike +1 WHERE wall22.id = new.wall22_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall22_ADEL` AFTER DELETE ON `likewall22` FOR EACH ROW UPDATE wall22 SET countlike = countlike -1 WHERE wall22.id = old.wall22_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall23`
--

DROP TABLE IF EXISTS `likewall23`;
CREATE TABLE `likewall23` (
  `wall23_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall23_wall231_idx` (`wall23_id`),
  KEY `fk_likewall23_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall23_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall23_wall231` FOREIGN KEY (`wall23_id`) REFERENCES `wall23` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall23`
--


/*!40000 ALTER TABLE `likewall23` DISABLE KEYS */;
LOCK TABLES `likewall23` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall23` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall23_AINS` AFTER INSERT ON `likewall23` FOR EACH ROW UPDATE wall23 SET countlike = countlike +1 WHERE wall23.id = new.wall23_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall23_ADEL` AFTER DELETE ON `likewall23` FOR EACH ROW UPDATE wall23 SET countlike = countlike -1 WHERE wall23.id = old.wall23_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall24`
--

DROP TABLE IF EXISTS `likewall24`;
CREATE TABLE `likewall24` (
  `wall24_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall24_wall241_idx` (`wall24_id`),
  KEY `fk_likewall24_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall24_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall24_wall241` FOREIGN KEY (`wall24_id`) REFERENCES `wall24` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall24`
--


/*!40000 ALTER TABLE `likewall24` DISABLE KEYS */;
LOCK TABLES `likewall24` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall24` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall24_AINS` AFTER INSERT ON `likewall24` FOR EACH ROW UPDATE wall24 SET countlike = countlike +1 WHERE wall24.id = new.wall24_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall24_ADEL` AFTER DELETE ON `likewall24` FOR EACH ROW UPDATE wall24 SET countlike = countlike -1 WHERE wall24.id = old.wall24_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall25`
--

DROP TABLE IF EXISTS `likewall25`;
CREATE TABLE `likewall25` (
  `wall25_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall25_wall251_idx` (`wall25_id`),
  KEY `fk_likewall25_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall25_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall25_wall251` FOREIGN KEY (`wall25_id`) REFERENCES `wall25` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall25`
--


/*!40000 ALTER TABLE `likewall25` DISABLE KEYS */;
LOCK TABLES `likewall25` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall25` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall25_AINS` AFTER INSERT ON `likewall25` FOR EACH ROW UPDATE wall25 SET countlike = countlike +1 WHERE wall25.id = new.wall25_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall25_ADEL` AFTER DELETE ON `likewall25` FOR EACH ROW UPDATE wall25 SET countlike = countlike -1 WHERE wall25.id = old.wall25_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall26`
--

DROP TABLE IF EXISTS `likewall26`;
CREATE TABLE `likewall26` (
  `wall26_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall26_wall261_idx` (`wall26_id`),
  KEY `fk_likewall26_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall26_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall26_wall261` FOREIGN KEY (`wall26_id`) REFERENCES `wall26` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall26`
--


/*!40000 ALTER TABLE `likewall26` DISABLE KEYS */;
LOCK TABLES `likewall26` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall26` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall26_AINS` AFTER INSERT ON `likewall26` FOR EACH ROW UPDATE wall26 SET countlike = countlike +1 WHERE wall26.id = new.wall26_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall26_ADEL` AFTER DELETE ON `likewall26` FOR EACH ROW UPDATE wall26 SET countlike = countlike -1 WHERE wall26.id = old.wall26_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall27`
--

DROP TABLE IF EXISTS `likewall27`;
CREATE TABLE `likewall27` (
  `wall27_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall27_wall271_idx` (`wall27_id`),
  KEY `fk_likewall27_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall27_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall27_wall271` FOREIGN KEY (`wall27_id`) REFERENCES `wall27` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall27`
--


/*!40000 ALTER TABLE `likewall27` DISABLE KEYS */;
LOCK TABLES `likewall27` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall27` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall27_AINS` AFTER INSERT ON `likewall27` FOR EACH ROW UPDATE wall27 SET countlike = countlike +1 WHERE wall27.id = new.wall27_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall27_ADEL` AFTER DELETE ON `likewall27` FOR EACH ROW UPDATE wall27 SET countlike = countlike -1 WHERE wall27.id = old.wall27_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall28`
--

DROP TABLE IF EXISTS `likewall28`;
CREATE TABLE `likewall28` (
  `wall28_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall28_wall281_idx` (`wall28_id`),
  KEY `fk_likewall28_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall28_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall28_wall281` FOREIGN KEY (`wall28_id`) REFERENCES `wall28` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall28`
--


/*!40000 ALTER TABLE `likewall28` DISABLE KEYS */;
LOCK TABLES `likewall28` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall28` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall28_AINS` AFTER INSERT ON `likewall28` FOR EACH ROW UPDATE wall28 SET countlike = countlike +1 WHERE wall28.id = new.wall28_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall28_ADEL` AFTER DELETE ON `likewall28` FOR EACH ROW UPDATE wall28 SET countlike = countlike -1 WHERE wall28.id = old.wall28_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall29`
--

DROP TABLE IF EXISTS `likewall29`;
CREATE TABLE `likewall29` (
  `wall29_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall29_wall291_idx` (`wall29_id`),
  KEY `fk_likewall29_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall29_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall29_wall291` FOREIGN KEY (`wall29_id`) REFERENCES `wall29` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall29`
--


/*!40000 ALTER TABLE `likewall29` DISABLE KEYS */;
LOCK TABLES `likewall29` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall29` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall29_AINS` AFTER INSERT ON `likewall29` FOR EACH ROW UPDATE wall29 SET countlike = countlike +1 WHERE wall29.id = new.wall29_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall29_ADEL` AFTER DELETE ON `likewall29` FOR EACH ROW UPDATE wall29 SET countlike = countlike -1 WHERE wall29.id = old.wall29_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall3`
--

DROP TABLE IF EXISTS `likewall3`;
CREATE TABLE `likewall3` (
  `wall3_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall3_wall31_idx` (`wall3_id`),
  KEY `fk_likewall3_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall3_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall3_wall31` FOREIGN KEY (`wall3_id`) REFERENCES `wall3` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall3`
--


/*!40000 ALTER TABLE `likewall3` DISABLE KEYS */;
LOCK TABLES `likewall3` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall3` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall3_AINS` AFTER INSERT ON `likewall3` FOR EACH ROW UPDATE wall3 SET countlike = countlike +1 WHERE wall3.id = new.wall3_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall3_ADEL` AFTER DELETE ON `likewall3` FOR EACH ROW UPDATE wall3 SET countlike = countlike -1 WHERE wall3.id = old.wall3_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall30`
--

DROP TABLE IF EXISTS `likewall30`;
CREATE TABLE `likewall30` (
  `wall30_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall30_wall301_idx` (`wall30_id`),
  KEY `fk_likewall30_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall30_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall30_wall301` FOREIGN KEY (`wall30_id`) REFERENCES `wall30` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall30`
--


/*!40000 ALTER TABLE `likewall30` DISABLE KEYS */;
LOCK TABLES `likewall30` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall30` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall30_AINS` AFTER INSERT ON `likewall30` FOR EACH ROW UPDATE wall30 SET countlike = countlike +1 WHERE wall30.id = new.wall30_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall30_ADEL` AFTER DELETE ON `likewall30` FOR EACH ROW UPDATE wall30 SET countlike = countlike -1 WHERE wall30.id = old.wall30_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall31`
--

DROP TABLE IF EXISTS `likewall31`;
CREATE TABLE `likewall31` (
  `wall31_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall31_wall311_idx` (`wall31_id`),
  KEY `fk_likewall31_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall31_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall31_wall311` FOREIGN KEY (`wall31_id`) REFERENCES `wall31` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall31`
--


/*!40000 ALTER TABLE `likewall31` DISABLE KEYS */;
LOCK TABLES `likewall31` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall31` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall31_AINS` AFTER INSERT ON `likewall31` FOR EACH ROW UPDATE wall31 SET countlike = countlike +1 WHERE wall31.id = new.wall31_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall31_ADEL` AFTER DELETE ON `likewall31` FOR EACH ROW UPDATE wall31 SET countlike = countlike -1 WHERE wall31.id = old.wall31_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall32`
--

DROP TABLE IF EXISTS `likewall32`;
CREATE TABLE `likewall32` (
  `wall32_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall32_wall321_idx` (`wall32_id`),
  KEY `fk_likewall32_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall32_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall32_wall321` FOREIGN KEY (`wall32_id`) REFERENCES `wall32` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall32`
--


/*!40000 ALTER TABLE `likewall32` DISABLE KEYS */;
LOCK TABLES `likewall32` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall32` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall32_AINS` AFTER INSERT ON `likewall32` FOR EACH ROW UPDATE wall32 SET countlike = countlike +1 WHERE wall32.id = new.wall32_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall32_ADEL` AFTER DELETE ON `likewall32` FOR EACH ROW UPDATE wall32 SET countlike = countlike -1 WHERE wall32.id = old.wall32_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall33`
--

DROP TABLE IF EXISTS `likewall33`;
CREATE TABLE `likewall33` (
  `wall33_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall33_wall331_idx` (`wall33_id`),
  KEY `fk_likewall33_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall33_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall33_wall331` FOREIGN KEY (`wall33_id`) REFERENCES `wall33` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall33`
--


/*!40000 ALTER TABLE `likewall33` DISABLE KEYS */;
LOCK TABLES `likewall33` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall33` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall33_AINS` AFTER INSERT ON `likewall33` FOR EACH ROW UPDATE wall33 SET countlike = countlike +1 WHERE wall33.id = new.wall33_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall33_ADEL` AFTER DELETE ON `likewall33` FOR EACH ROW UPDATE wall33 SET countlike = countlike -1 WHERE wall33.id = old.wall33_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall34`
--

DROP TABLE IF EXISTS `likewall34`;
CREATE TABLE `likewall34` (
  `wall34_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall34_wall341_idx` (`wall34_id`),
  KEY `fk_likewall34_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall34_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall34_wall341` FOREIGN KEY (`wall34_id`) REFERENCES `wall34` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall34`
--


/*!40000 ALTER TABLE `likewall34` DISABLE KEYS */;
LOCK TABLES `likewall34` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall34` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall34_AINS` AFTER INSERT ON `likewall34` FOR EACH ROW UPDATE wall34 SET countlike = countlike +1 WHERE wall34.id = new.wall34_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall34_ADEL` AFTER DELETE ON `likewall34` FOR EACH ROW UPDATE wall34 SET countlike = countlike -1 WHERE wall34.id = old.wall34_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall35`
--

DROP TABLE IF EXISTS `likewall35`;
CREATE TABLE `likewall35` (
  `wall35_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall35_wall351_idx` (`wall35_id`),
  KEY `fk_likewall35_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall35_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall35_wall351` FOREIGN KEY (`wall35_id`) REFERENCES `wall35` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall35`
--


/*!40000 ALTER TABLE `likewall35` DISABLE KEYS */;
LOCK TABLES `likewall35` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall35` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall35_AINS` AFTER INSERT ON `likewall35` FOR EACH ROW UPDATE wall35 SET countlike = countlike +1 WHERE wall35.id = new.wall35_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall35_ADEL` AFTER DELETE ON `likewall35` FOR EACH ROW UPDATE wall35 SET countlike = countlike -1 WHERE wall35.id = old.wall35_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall36`
--

DROP TABLE IF EXISTS `likewall36`;
CREATE TABLE `likewall36` (
  `wall36_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall36_wall361_idx` (`wall36_id`),
  KEY `fk_likewall36_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall36_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall36_wall361` FOREIGN KEY (`wall36_id`) REFERENCES `wall36` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall36`
--


/*!40000 ALTER TABLE `likewall36` DISABLE KEYS */;
LOCK TABLES `likewall36` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall36` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall36_AINS` AFTER INSERT ON `likewall36` FOR EACH ROW UPDATE wall36 SET countlike = countlike +1 WHERE wall36.id = new.wall36_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall36_ADEL` AFTER DELETE ON `likewall36` FOR EACH ROW UPDATE wall36 SET countlike = countlike -1 WHERE wall36.id = old.wall36_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall37`
--

DROP TABLE IF EXISTS `likewall37`;
CREATE TABLE `likewall37` (
  `wall37_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall37_wall371_idx` (`wall37_id`),
  KEY `fk_likewall37_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall37_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall37_wall371` FOREIGN KEY (`wall37_id`) REFERENCES `wall37` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall37`
--


/*!40000 ALTER TABLE `likewall37` DISABLE KEYS */;
LOCK TABLES `likewall37` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall37` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall37_AINS` AFTER INSERT ON `likewall37` FOR EACH ROW UPDATE wall37 SET countlike = countlike +1 WHERE wall37.id = new.wall37_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall37_ADEL` AFTER DELETE ON `likewall37` FOR EACH ROW UPDATE wall37 SET countlike = countlike -1 WHERE wall37.id = old.wall37_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall38`
--

DROP TABLE IF EXISTS `likewall38`;
CREATE TABLE `likewall38` (
  `wall38_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall38_wall381_idx` (`wall38_id`),
  KEY `fk_likewall38_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall38_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall38_wall381` FOREIGN KEY (`wall38_id`) REFERENCES `wall38` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall38`
--


/*!40000 ALTER TABLE `likewall38` DISABLE KEYS */;
LOCK TABLES `likewall38` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall38` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall38_AINS` AFTER INSERT ON `likewall38` FOR EACH ROW UPDATE wall38 SET countlike = countlike +1 WHERE wall38.id = new.wall38_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall38_ADEL` AFTER DELETE ON `likewall38` FOR EACH ROW UPDATE wall38 SET countlike = countlike -1 WHERE wall38.id = old.wall38_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall39`
--

DROP TABLE IF EXISTS `likewall39`;
CREATE TABLE `likewall39` (
  `wall39_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall39_wall391_idx` (`wall39_id`),
  KEY `fk_likewall39_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall39_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall39_wall391` FOREIGN KEY (`wall39_id`) REFERENCES `wall39` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall39`
--


/*!40000 ALTER TABLE `likewall39` DISABLE KEYS */;
LOCK TABLES `likewall39` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall39` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall39_AINS` AFTER INSERT ON `likewall39` FOR EACH ROW UPDATE wall39 SET countlike = countlike +1 WHERE wall39.id = new.wall39_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall39_ADEL` AFTER DELETE ON `likewall39` FOR EACH ROW UPDATE wall39 SET countlike = countlike -1 WHERE wall39.id = old.wall39_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall4`
--

DROP TABLE IF EXISTS `likewall4`;
CREATE TABLE `likewall4` (
  `wall4_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall4_wall41_idx` (`wall4_id`),
  KEY `fk_likewall4_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall4_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall4_wall41` FOREIGN KEY (`wall4_id`) REFERENCES `wall4` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall4`
--


/*!40000 ALTER TABLE `likewall4` DISABLE KEYS */;
LOCK TABLES `likewall4` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall4` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall4_AINS` AFTER INSERT ON `likewall4` FOR EACH ROW UPDATE wall4 SET countlike = countlike +1 WHERE wall4.id = new.wall4_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall4_ADEL` AFTER DELETE ON `likewall4` FOR EACH ROW UPDATE wall4 SET countlike = countlike -1 WHERE wall4.id = old.wall4_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall40`
--

DROP TABLE IF EXISTS `likewall40`;
CREATE TABLE `likewall40` (
  `wall40_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall40_wall401_idx` (`wall40_id`),
  KEY `fk_likewall40_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall40_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall40_wall401` FOREIGN KEY (`wall40_id`) REFERENCES `wall40` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall40`
--


/*!40000 ALTER TABLE `likewall40` DISABLE KEYS */;
LOCK TABLES `likewall40` WRITE;
INSERT INTO `likewall40` VALUES (24,1),(24,5);
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall40` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall40_AINS` AFTER INSERT ON `likewall40` FOR EACH ROW UPDATE wall40 SET countlike = countlike +1 WHERE wall40.id = new.wall40_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall40_ADEL` AFTER DELETE ON `likewall40` FOR EACH ROW UPDATE wall40 SET countlike = countlike -1 WHERE wall40.id = old.wall40_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall5`
--

DROP TABLE IF EXISTS `likewall5`;
CREATE TABLE `likewall5` (
  `wall5_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall5_wall51_idx` (`wall5_id`),
  KEY `fk_likewall5_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall5_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall5_wall51` FOREIGN KEY (`wall5_id`) REFERENCES `wall5` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall5`
--


/*!40000 ALTER TABLE `likewall5` DISABLE KEYS */;
LOCK TABLES `likewall5` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall5` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall5_AINS` AFTER INSERT ON `likewall5` FOR EACH ROW UPDATE wall5 SET countlike = countlike +1 WHERE wall5.id = new.wall5_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall5_ADEL` AFTER DELETE ON `likewall5` FOR EACH ROW UPDATE wall5 SET countlike = countlike -1 WHERE wall5.id = old.wall5_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall6`
--

DROP TABLE IF EXISTS `likewall6`;
CREATE TABLE `likewall6` (
  `wall6_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall6_wall61_idx` (`wall6_id`),
  KEY `fk_likewall6_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall6_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall6_wall61` FOREIGN KEY (`wall6_id`) REFERENCES `wall6` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall6`
--


/*!40000 ALTER TABLE `likewall6` DISABLE KEYS */;
LOCK TABLES `likewall6` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall6` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall6_AINS` AFTER INSERT ON `likewall6` FOR EACH ROW UPDATE wall6 SET countlike = countlike +1 WHERE wall6.id = new.wall6_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall6_ADEL` AFTER DELETE ON `likewall6` FOR EACH ROW UPDATE wall6 SET countlike = countlike -1 WHERE wall6.id = old.wall6_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall7`
--

DROP TABLE IF EXISTS `likewall7`;
CREATE TABLE `likewall7` (
  `wall7_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall7_wall71_idx` (`wall7_id`),
  KEY `fk_likewall7_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall7_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall7_wall71` FOREIGN KEY (`wall7_id`) REFERENCES `wall7` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall7`
--


/*!40000 ALTER TABLE `likewall7` DISABLE KEYS */;
LOCK TABLES `likewall7` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall7` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall7_AINS` AFTER INSERT ON `likewall7` FOR EACH ROW UPDATE wall7 SET countlike = countlike +1 WHERE wall7.id = new.wall7_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall7_ADEL` AFTER DELETE ON `likewall7` FOR EACH ROW UPDATE wall7 SET countlike = countlike -1 WHERE wall7.id = old.wall7_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall8`
--

DROP TABLE IF EXISTS `likewall8`;
CREATE TABLE `likewall8` (
  `wall8_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall8_wall81_idx` (`wall8_id`),
  KEY `fk_likewall8_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall8_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall8_wall81` FOREIGN KEY (`wall8_id`) REFERENCES `wall8` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall8`
--


/*!40000 ALTER TABLE `likewall8` DISABLE KEYS */;
LOCK TABLES `likewall8` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall8` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall8_AINS` AFTER INSERT ON `likewall8` FOR EACH ROW UPDATE wall8 SET countlike = countlike +1 WHERE wall8.id = new.wall8_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall8_ADEL` AFTER DELETE ON `likewall8` FOR EACH ROW UPDATE wall8 SET countlike = countlike -1 WHERE wall8.id = old.wall8_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `likewall9`
--

DROP TABLE IF EXISTS `likewall9`;
CREATE TABLE `likewall9` (
  `wall9_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_likewall9_wall91_idx` (`wall9_id`),
  KEY `fk_likewall9_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_likewall9_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_likewall9_wall91` FOREIGN KEY (`wall9_id`) REFERENCES `wall9` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likewall9`
--


/*!40000 ALTER TABLE `likewall9` DISABLE KEYS */;
LOCK TABLES `likewall9` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `likewall9` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall9_AINS` AFTER INSERT ON `likewall9` FOR EACH ROW UPDATE wall9 SET countlike = countlike +1 WHERE wall9.id = new.wall9_id */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `likewall9_ADEL` AFTER DELETE ON `likewall9` FOR EACH ROW UPDATE wall9 SET countlike = countlike -1 WHERE wall9.id = old.wall9_id */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `messagegroup`
--

DROP TABLE IF EXISTS `messagegroup`;
CREATE TABLE `messagegroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messagegroup`
--


/*!40000 ALTER TABLE `messagegroup` DISABLE KEYS */;
LOCK TABLES `messagegroup` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `messagegroup` ENABLE KEYS */;

--
-- Table structure for table `organizer1`
--

DROP TABLE IF EXISTS `organizer1`;
CREATE TABLE `organizer1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer1`
--


/*!40000 ALTER TABLE `organizer1` DISABLE KEYS */;
LOCK TABLES `organizer1` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer1` ENABLE KEYS */;

--
-- Table structure for table `organizer10`
--

DROP TABLE IF EXISTS `organizer10`;
CREATE TABLE `organizer10` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer10`
--


/*!40000 ALTER TABLE `organizer10` DISABLE KEYS */;
LOCK TABLES `organizer10` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer10` ENABLE KEYS */;

--
-- Table structure for table `organizer11`
--

DROP TABLE IF EXISTS `organizer11`;
CREATE TABLE `organizer11` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer11`
--


/*!40000 ALTER TABLE `organizer11` DISABLE KEYS */;
LOCK TABLES `organizer11` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer11` ENABLE KEYS */;

--
-- Table structure for table `organizer12`
--

DROP TABLE IF EXISTS `organizer12`;
CREATE TABLE `organizer12` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer12`
--


/*!40000 ALTER TABLE `organizer12` DISABLE KEYS */;
LOCK TABLES `organizer12` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer12` ENABLE KEYS */;

--
-- Table structure for table `organizer13`
--

DROP TABLE IF EXISTS `organizer13`;
CREATE TABLE `organizer13` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer13`
--


/*!40000 ALTER TABLE `organizer13` DISABLE KEYS */;
LOCK TABLES `organizer13` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer13` ENABLE KEYS */;

--
-- Table structure for table `organizer14`
--

DROP TABLE IF EXISTS `organizer14`;
CREATE TABLE `organizer14` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer14`
--


/*!40000 ALTER TABLE `organizer14` DISABLE KEYS */;
LOCK TABLES `organizer14` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer14` ENABLE KEYS */;

--
-- Table structure for table `organizer15`
--

DROP TABLE IF EXISTS `organizer15`;
CREATE TABLE `organizer15` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer15`
--


/*!40000 ALTER TABLE `organizer15` DISABLE KEYS */;
LOCK TABLES `organizer15` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer15` ENABLE KEYS */;

--
-- Table structure for table `organizer16`
--

DROP TABLE IF EXISTS `organizer16`;
CREATE TABLE `organizer16` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer16`
--


/*!40000 ALTER TABLE `organizer16` DISABLE KEYS */;
LOCK TABLES `organizer16` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer16` ENABLE KEYS */;

--
-- Table structure for table `organizer17`
--

DROP TABLE IF EXISTS `organizer17`;
CREATE TABLE `organizer17` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer17`
--


/*!40000 ALTER TABLE `organizer17` DISABLE KEYS */;
LOCK TABLES `organizer17` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer17` ENABLE KEYS */;

--
-- Table structure for table `organizer18`
--

DROP TABLE IF EXISTS `organizer18`;
CREATE TABLE `organizer18` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer18`
--


/*!40000 ALTER TABLE `organizer18` DISABLE KEYS */;
LOCK TABLES `organizer18` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer18` ENABLE KEYS */;

--
-- Table structure for table `organizer19`
--

DROP TABLE IF EXISTS `organizer19`;
CREATE TABLE `organizer19` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer19`
--


/*!40000 ALTER TABLE `organizer19` DISABLE KEYS */;
LOCK TABLES `organizer19` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer19` ENABLE KEYS */;

--
-- Table structure for table `organizer2`
--

DROP TABLE IF EXISTS `organizer2`;
CREATE TABLE `organizer2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer2`
--


/*!40000 ALTER TABLE `organizer2` DISABLE KEYS */;
LOCK TABLES `organizer2` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer2` ENABLE KEYS */;

--
-- Table structure for table `organizer20`
--

DROP TABLE IF EXISTS `organizer20`;
CREATE TABLE `organizer20` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer20`
--


/*!40000 ALTER TABLE `organizer20` DISABLE KEYS */;
LOCK TABLES `organizer20` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer20` ENABLE KEYS */;

--
-- Table structure for table `organizer21`
--

DROP TABLE IF EXISTS `organizer21`;
CREATE TABLE `organizer21` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer21`
--


/*!40000 ALTER TABLE `organizer21` DISABLE KEYS */;
LOCK TABLES `organizer21` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer21` ENABLE KEYS */;

--
-- Table structure for table `organizer22`
--

DROP TABLE IF EXISTS `organizer22`;
CREATE TABLE `organizer22` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer22`
--


/*!40000 ALTER TABLE `organizer22` DISABLE KEYS */;
LOCK TABLES `organizer22` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer22` ENABLE KEYS */;

--
-- Table structure for table `organizer23`
--

DROP TABLE IF EXISTS `organizer23`;
CREATE TABLE `organizer23` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer23`
--


/*!40000 ALTER TABLE `organizer23` DISABLE KEYS */;
LOCK TABLES `organizer23` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer23` ENABLE KEYS */;

--
-- Table structure for table `organizer24`
--

DROP TABLE IF EXISTS `organizer24`;
CREATE TABLE `organizer24` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer24`
--


/*!40000 ALTER TABLE `organizer24` DISABLE KEYS */;
LOCK TABLES `organizer24` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer24` ENABLE KEYS */;

--
-- Table structure for table `organizer25`
--

DROP TABLE IF EXISTS `organizer25`;
CREATE TABLE `organizer25` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer25`
--


/*!40000 ALTER TABLE `organizer25` DISABLE KEYS */;
LOCK TABLES `organizer25` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer25` ENABLE KEYS */;

--
-- Table structure for table `organizer26`
--

DROP TABLE IF EXISTS `organizer26`;
CREATE TABLE `organizer26` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer26`
--


/*!40000 ALTER TABLE `organizer26` DISABLE KEYS */;
LOCK TABLES `organizer26` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer26` ENABLE KEYS */;

--
-- Table structure for table `organizer27`
--

DROP TABLE IF EXISTS `organizer27`;
CREATE TABLE `organizer27` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer27`
--


/*!40000 ALTER TABLE `organizer27` DISABLE KEYS */;
LOCK TABLES `organizer27` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer27` ENABLE KEYS */;

--
-- Table structure for table `organizer28`
--

DROP TABLE IF EXISTS `organizer28`;
CREATE TABLE `organizer28` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer28`
--


/*!40000 ALTER TABLE `organizer28` DISABLE KEYS */;
LOCK TABLES `organizer28` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer28` ENABLE KEYS */;

--
-- Table structure for table `organizer29`
--

DROP TABLE IF EXISTS `organizer29`;
CREATE TABLE `organizer29` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer29`
--


/*!40000 ALTER TABLE `organizer29` DISABLE KEYS */;
LOCK TABLES `organizer29` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer29` ENABLE KEYS */;

--
-- Table structure for table `organizer3`
--

DROP TABLE IF EXISTS `organizer3`;
CREATE TABLE `organizer3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer3`
--


/*!40000 ALTER TABLE `organizer3` DISABLE KEYS */;
LOCK TABLES `organizer3` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer3` ENABLE KEYS */;

--
-- Table structure for table `organizer30`
--

DROP TABLE IF EXISTS `organizer30`;
CREATE TABLE `organizer30` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer30`
--


/*!40000 ALTER TABLE `organizer30` DISABLE KEYS */;
LOCK TABLES `organizer30` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer30` ENABLE KEYS */;

--
-- Table structure for table `organizer31`
--

DROP TABLE IF EXISTS `organizer31`;
CREATE TABLE `organizer31` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer31`
--


/*!40000 ALTER TABLE `organizer31` DISABLE KEYS */;
LOCK TABLES `organizer31` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer31` ENABLE KEYS */;

--
-- Table structure for table `organizer32`
--

DROP TABLE IF EXISTS `organizer32`;
CREATE TABLE `organizer32` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer32`
--


/*!40000 ALTER TABLE `organizer32` DISABLE KEYS */;
LOCK TABLES `organizer32` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer32` ENABLE KEYS */;

--
-- Table structure for table `organizer33`
--

DROP TABLE IF EXISTS `organizer33`;
CREATE TABLE `organizer33` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer33`
--


/*!40000 ALTER TABLE `organizer33` DISABLE KEYS */;
LOCK TABLES `organizer33` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer33` ENABLE KEYS */;

--
-- Table structure for table `organizer34`
--

DROP TABLE IF EXISTS `organizer34`;
CREATE TABLE `organizer34` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer34`
--


/*!40000 ALTER TABLE `organizer34` DISABLE KEYS */;
LOCK TABLES `organizer34` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer34` ENABLE KEYS */;

--
-- Table structure for table `organizer35`
--

DROP TABLE IF EXISTS `organizer35`;
CREATE TABLE `organizer35` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer35`
--


/*!40000 ALTER TABLE `organizer35` DISABLE KEYS */;
LOCK TABLES `organizer35` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer35` ENABLE KEYS */;

--
-- Table structure for table `organizer36`
--

DROP TABLE IF EXISTS `organizer36`;
CREATE TABLE `organizer36` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer36`
--


/*!40000 ALTER TABLE `organizer36` DISABLE KEYS */;
LOCK TABLES `organizer36` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer36` ENABLE KEYS */;

--
-- Table structure for table `organizer37`
--

DROP TABLE IF EXISTS `organizer37`;
CREATE TABLE `organizer37` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer37`
--


/*!40000 ALTER TABLE `organizer37` DISABLE KEYS */;
LOCK TABLES `organizer37` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer37` ENABLE KEYS */;

--
-- Table structure for table `organizer38`
--

DROP TABLE IF EXISTS `organizer38`;
CREATE TABLE `organizer38` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer38`
--


/*!40000 ALTER TABLE `organizer38` DISABLE KEYS */;
LOCK TABLES `organizer38` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer38` ENABLE KEYS */;

--
-- Table structure for table `organizer39`
--

DROP TABLE IF EXISTS `organizer39`;
CREATE TABLE `organizer39` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer39`
--


/*!40000 ALTER TABLE `organizer39` DISABLE KEYS */;
LOCK TABLES `organizer39` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer39` ENABLE KEYS */;

--
-- Table structure for table `organizer4`
--

DROP TABLE IF EXISTS `organizer4`;
CREATE TABLE `organizer4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer4`
--


/*!40000 ALTER TABLE `organizer4` DISABLE KEYS */;
LOCK TABLES `organizer4` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer4` ENABLE KEYS */;

--
-- Table structure for table `organizer40`
--

DROP TABLE IF EXISTS `organizer40`;
CREATE TABLE `organizer40` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer40`
--


/*!40000 ALTER TABLE `organizer40` DISABLE KEYS */;
LOCK TABLES `organizer40` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer40` ENABLE KEYS */;

--
-- Table structure for table `organizer5`
--

DROP TABLE IF EXISTS `organizer5`;
CREATE TABLE `organizer5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer5`
--


/*!40000 ALTER TABLE `organizer5` DISABLE KEYS */;
LOCK TABLES `organizer5` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer5` ENABLE KEYS */;

--
-- Table structure for table `organizer6`
--

DROP TABLE IF EXISTS `organizer6`;
CREATE TABLE `organizer6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer6`
--


/*!40000 ALTER TABLE `organizer6` DISABLE KEYS */;
LOCK TABLES `organizer6` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer6` ENABLE KEYS */;

--
-- Table structure for table `organizer7`
--

DROP TABLE IF EXISTS `organizer7`;
CREATE TABLE `organizer7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer7`
--


/*!40000 ALTER TABLE `organizer7` DISABLE KEYS */;
LOCK TABLES `organizer7` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer7` ENABLE KEYS */;

--
-- Table structure for table `organizer8`
--

DROP TABLE IF EXISTS `organizer8`;
CREATE TABLE `organizer8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer8`
--


/*!40000 ALTER TABLE `organizer8` DISABLE KEYS */;
LOCK TABLES `organizer8` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer8` ENABLE KEYS */;

--
-- Table structure for table `organizer9`
--

DROP TABLE IF EXISTS `organizer9`;
CREATE TABLE `organizer9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `detatimestart` datetime NOT NULL,
  `datetimefinish` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer9`
--


/*!40000 ALTER TABLE `organizer9` DISABLE KEYS */;
LOCK TABLES `organizer9` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `organizer9` ENABLE KEYS */;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(45) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `middlename` varchar(25) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email2` varchar(45) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `countsubscribes` int(10) unsigned NOT NULL DEFAULT '0',
  `countalbum` int(10) unsigned NOT NULL DEFAULT '0',
  `pathavatar` varchar(256) DEFAULT NULL,
  `pathheadband` varchar(256) DEFAULT NULL,
  `countcontact` int(10) unsigned NOT NULL DEFAULT '0',
  `countblog` int(10) unsigned NOT NULL DEFAULT '0',
  `countwall` int(10) unsigned NOT NULL DEFAULT '0',
  `countblogmy` int(10) unsigned NOT NULL DEFAULT '0',
  `countwallmy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--


/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
LOCK TABLES `profile` WRITE;
INSERT INTO `profile` VALUES (1,'1','1','1','1','1','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,23,0,23),(2,'2','2','2','2','2','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(3,'3','3','3','3','3','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(4,'4','4','4','4','4','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(5,'5','5','5','5','5','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(6,'6','6','6','6','6','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(7,'7','7','7','7','7','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(8,'8','8','8','8','8','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(9,'9','9','9','9','9','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(10,'10','10','10','10','10','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(11,'11','11','11','11','11','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(12,'12','12','12','12','12','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(13,'13','13','13','13','13','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(14,'14','14','14','14','14','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(15,'15','15','15','15','15','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(16,'16','16','16','16','16','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(17,'17','17','17','17','17','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(18,'18','18','18','18','18','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(19,'19','19','19','19','19','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(20,'20','20','20','20','20','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(21,'21','21','21','21','21','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(22,'22','22','22','22','22','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(23,'23','23','23','23','23','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(24,'24','24','24','24','24','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(25,'25','25','25','25','25','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(26,'26','26','26','26','26','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(27,'27','27','27','27','27','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(28,'28','28','28','28','28','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(29,'29','29','29','29','29','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(30,'30','30','30','30','30','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(31,'31','31','31','31','31','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(32,'32','32','32','32','32','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(33,'33','33','33','33','33','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(34,'34','34','34','34','34','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(35,'35','35','35','35','35','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(36,'36','36','36','36','36','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(37,'37','37','37','37','37','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(38,'38','38','38','38','38','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(39,'39','39','39','39','39','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,0,0,0),(40,'40','40','40','40','40','',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'/picture/Default/Avatars/default.jpg','/picture/Default/Headband/default.jpg',0,0,26,0,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;

--
-- Table structure for table `spisokcontactgroupuser1`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser1`;
CREATE TABLE `spisokcontactgroupuser1` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup1_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser1_contactgroup11_idx` (`contactgroup1_id`),
  KEY `fk_spisokcontactgroupuser1_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser1_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser1_contactgroup11` FOREIGN KEY (`contactgroup1_id`) REFERENCES `contactgroup1` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser1`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser1` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser1` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser1` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser1_BINS` BEFORE INSERT ON `spisokcontactgroupuser1` FOR EACH ROW BEGIN if NEW.contactgroup1_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup1 SET countuser = countuser +1 WHERE contactgroup1.id =NEW.contactgroup1_id; SET @a= (Select count(*) from spisokcontactgroupuser1 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =1; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser1_AUPD` AFTER UPDATE ON `spisokcontactgroupuser1` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser1 where state = 0) as y) where id =1;	if OLD.contactgroup1_id is null and NEW.contactgroup1_id is not null then	UPDATE contactgroup1 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser1 where state = 0 and contactgroup1_id = NEW.contactgroup1_id) as y) where id =NEW.contactgroup1_id; end if;	if OLD.contactgroup1_id is not null and NEW.contactgroup1_id is null then	UPDATE contactgroup1 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser1 where state = 0 and contactgroup1_id = OLD.contactgroup1_id) as y) where id =OLD.contactgroup1_id; end if;	if OLD.contactgroup1_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup1 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser1 where state = 0 and contactgroup1_id = OLD.contactgroup1_id) as y) where id =OLD.contactgroup1_id; end if; if OLD.contactgroup1_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup1 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser1 where state = 0 and contactgroup1_id = OLD.contactgroup1_id) as y) where id =OLD.contactgroup1_id; end if; if OLD.contactgroup1_id != NEW.contactgroup1_id then UPDATE contactgroup1 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser1 where state = 0 and contactgroup1_id = OLD.contactgroup1_id) as y) where id =OLD.contactgroup1_id; UPDATE contactgroup1 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser1 where state = 0 and contactgroup1_id = NEW.contactgroup1_id) as y) where id =NEW.contactgroup1_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser1_ADEL` AFTER DELETE ON `spisokcontactgroupuser1` FOR EACH ROW BEGIN if OLD.contactgroup1_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup1 SET countuser = countuser -1 WHERE contactgroup1.id =OLD.contactgroup1_id; SET @a= (Select count(*) from spisokcontactgroupuser1 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =1; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser10`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser10`;
CREATE TABLE `spisokcontactgroupuser10` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup10_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser10_contactgroup101_idx` (`contactgroup10_id`),
  KEY `fk_spisokcontactgroupuser10_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser10_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser10_contactgroup101` FOREIGN KEY (`contactgroup10_id`) REFERENCES `contactgroup10` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser10`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser10` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser10` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser10` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser10_BINS` BEFORE INSERT ON `spisokcontactgroupuser10` FOR EACH ROW BEGIN if NEW.contactgroup10_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup10 SET countuser = countuser +1 WHERE contactgroup10.id =NEW.contactgroup10_id; SET @a= (Select count(*) from spisokcontactgroupuser10 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =10; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser10_AUPD` AFTER UPDATE ON `spisokcontactgroupuser10` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser10 where state = 0) as y) where id =10;	if OLD.contactgroup10_id is null and NEW.contactgroup10_id is not null then	UPDATE contactgroup10 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser10 where state = 0 and contactgroup10_id = NEW.contactgroup10_id) as y) where id =NEW.contactgroup10_id; end if;	if OLD.contactgroup10_id is not null and NEW.contactgroup10_id is null then	UPDATE contactgroup10 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser10 where state = 0 and contactgroup10_id = OLD.contactgroup10_id) as y) where id =OLD.contactgroup10_id; end if;	if OLD.contactgroup10_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup10 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser10 where state = 0 and contactgroup10_id = OLD.contactgroup10_id) as y) where id =OLD.contactgroup10_id; end if; if OLD.contactgroup10_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup10 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser10 where state = 0 and contactgroup10_id = OLD.contactgroup10_id) as y) where id =OLD.contactgroup10_id; end if; if OLD.contactgroup10_id != NEW.contactgroup10_id then UPDATE contactgroup10 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser10 where state = 0 and contactgroup10_id = OLD.contactgroup10_id) as y) where id =OLD.contactgroup10_id; UPDATE contactgroup10 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser10 where state = 0 and contactgroup10_id = NEW.contactgroup10_id) as y) where id =NEW.contactgroup10_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser10_ADEL` AFTER DELETE ON `spisokcontactgroupuser10` FOR EACH ROW BEGIN if OLD.contactgroup10_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup10 SET countuser = countuser -1 WHERE contactgroup10.id =OLD.contactgroup10_id; SET @a= (Select count(*) from spisokcontactgroupuser10 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =10; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser11`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser11`;
CREATE TABLE `spisokcontactgroupuser11` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup11_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser11_contactgroup111_idx` (`contactgroup11_id`),
  KEY `fk_spisokcontactgroupuser11_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser11_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser11_contactgroup111` FOREIGN KEY (`contactgroup11_id`) REFERENCES `contactgroup11` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser11`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser11` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser11` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser11` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser11_BINS` BEFORE INSERT ON `spisokcontactgroupuser11` FOR EACH ROW BEGIN if NEW.contactgroup11_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup11 SET countuser = countuser +1 WHERE contactgroup11.id =NEW.contactgroup11_id; SET @a= (Select count(*) from spisokcontactgroupuser11 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =11; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser11_AUPD` AFTER UPDATE ON `spisokcontactgroupuser11` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser11 where state = 0) as y) where id =11;	if OLD.contactgroup11_id is null and NEW.contactgroup11_id is not null then	UPDATE contactgroup11 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser11 where state = 0 and contactgroup11_id = NEW.contactgroup11_id) as y) where id =NEW.contactgroup11_id; end if;	if OLD.contactgroup11_id is not null and NEW.contactgroup11_id is null then	UPDATE contactgroup11 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser11 where state = 0 and contactgroup11_id = OLD.contactgroup11_id) as y) where id =OLD.contactgroup11_id; end if;	if OLD.contactgroup11_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup11 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser11 where state = 0 and contactgroup11_id = OLD.contactgroup11_id) as y) where id =OLD.contactgroup11_id; end if; if OLD.contactgroup11_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup11 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser11 where state = 0 and contactgroup11_id = OLD.contactgroup11_id) as y) where id =OLD.contactgroup11_id; end if; if OLD.contactgroup11_id != NEW.contactgroup11_id then UPDATE contactgroup11 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser11 where state = 0 and contactgroup11_id = OLD.contactgroup11_id) as y) where id =OLD.contactgroup11_id; UPDATE contactgroup11 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser11 where state = 0 and contactgroup11_id = NEW.contactgroup11_id) as y) where id =NEW.contactgroup11_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser11_ADEL` AFTER DELETE ON `spisokcontactgroupuser11` FOR EACH ROW BEGIN if OLD.contactgroup11_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup11 SET countuser = countuser -1 WHERE contactgroup11.id =OLD.contactgroup11_id; SET @a= (Select count(*) from spisokcontactgroupuser11 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =11; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser12`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser12`;
CREATE TABLE `spisokcontactgroupuser12` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup12_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser12_contactgroup121_idx` (`contactgroup12_id`),
  KEY `fk_spisokcontactgroupuser12_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser12_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser12_contactgroup121` FOREIGN KEY (`contactgroup12_id`) REFERENCES `contactgroup12` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser12`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser12` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser12` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser12` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser12_BINS` BEFORE INSERT ON `spisokcontactgroupuser12` FOR EACH ROW BEGIN if NEW.contactgroup12_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup12 SET countuser = countuser +1 WHERE contactgroup12.id =NEW.contactgroup12_id; SET @a= (Select count(*) from spisokcontactgroupuser12 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =12; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser12_AUPD` AFTER UPDATE ON `spisokcontactgroupuser12` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser12 where state = 0) as y) where id =12;	if OLD.contactgroup12_id is null and NEW.contactgroup12_id is not null then	UPDATE contactgroup12 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser12 where state = 0 and contactgroup12_id = NEW.contactgroup12_id) as y) where id =NEW.contactgroup12_id; end if;	if OLD.contactgroup12_id is not null and NEW.contactgroup12_id is null then	UPDATE contactgroup12 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser12 where state = 0 and contactgroup12_id = OLD.contactgroup12_id) as y) where id =OLD.contactgroup12_id; end if;	if OLD.contactgroup12_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup12 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser12 where state = 0 and contactgroup12_id = OLD.contactgroup12_id) as y) where id =OLD.contactgroup12_id; end if; if OLD.contactgroup12_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup12 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser12 where state = 0 and contactgroup12_id = OLD.contactgroup12_id) as y) where id =OLD.contactgroup12_id; end if; if OLD.contactgroup12_id != NEW.contactgroup12_id then UPDATE contactgroup12 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser12 where state = 0 and contactgroup12_id = OLD.contactgroup12_id) as y) where id =OLD.contactgroup12_id; UPDATE contactgroup12 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser12 where state = 0 and contactgroup12_id = NEW.contactgroup12_id) as y) where id =NEW.contactgroup12_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser12_ADEL` AFTER DELETE ON `spisokcontactgroupuser12` FOR EACH ROW BEGIN if OLD.contactgroup12_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup12 SET countuser = countuser -1 WHERE contactgroup12.id =OLD.contactgroup12_id; SET @a= (Select count(*) from spisokcontactgroupuser12 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =12; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser13`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser13`;
CREATE TABLE `spisokcontactgroupuser13` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup13_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser13_contactgroup131_idx` (`contactgroup13_id`),
  KEY `fk_spisokcontactgroupuser13_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser13_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser13_contactgroup131` FOREIGN KEY (`contactgroup13_id`) REFERENCES `contactgroup13` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser13`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser13` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser13` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser13` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser13_BINS` BEFORE INSERT ON `spisokcontactgroupuser13` FOR EACH ROW BEGIN if NEW.contactgroup13_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup13 SET countuser = countuser +1 WHERE contactgroup13.id =NEW.contactgroup13_id; SET @a= (Select count(*) from spisokcontactgroupuser13 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =13; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser13_AUPD` AFTER UPDATE ON `spisokcontactgroupuser13` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser13 where state = 0) as y) where id =13;	if OLD.contactgroup13_id is null and NEW.contactgroup13_id is not null then	UPDATE contactgroup13 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser13 where state = 0 and contactgroup13_id = NEW.contactgroup13_id) as y) where id =NEW.contactgroup13_id; end if;	if OLD.contactgroup13_id is not null and NEW.contactgroup13_id is null then	UPDATE contactgroup13 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser13 where state = 0 and contactgroup13_id = OLD.contactgroup13_id) as y) where id =OLD.contactgroup13_id; end if;	if OLD.contactgroup13_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup13 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser13 where state = 0 and contactgroup13_id = OLD.contactgroup13_id) as y) where id =OLD.contactgroup13_id; end if; if OLD.contactgroup13_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup13 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser13 where state = 0 and contactgroup13_id = OLD.contactgroup13_id) as y) where id =OLD.contactgroup13_id; end if; if OLD.contactgroup13_id != NEW.contactgroup13_id then UPDATE contactgroup13 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser13 where state = 0 and contactgroup13_id = OLD.contactgroup13_id) as y) where id =OLD.contactgroup13_id; UPDATE contactgroup13 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser13 where state = 0 and contactgroup13_id = NEW.contactgroup13_id) as y) where id =NEW.contactgroup13_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser13_ADEL` AFTER DELETE ON `spisokcontactgroupuser13` FOR EACH ROW BEGIN if OLD.contactgroup13_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup13 SET countuser = countuser -1 WHERE contactgroup13.id =OLD.contactgroup13_id; SET @a= (Select count(*) from spisokcontactgroupuser13 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =13; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser14`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser14`;
CREATE TABLE `spisokcontactgroupuser14` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup14_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser14_contactgroup141_idx` (`contactgroup14_id`),
  KEY `fk_spisokcontactgroupuser14_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser14_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser14_contactgroup141` FOREIGN KEY (`contactgroup14_id`) REFERENCES `contactgroup14` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser14`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser14` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser14` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser14` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser14_BINS` BEFORE INSERT ON `spisokcontactgroupuser14` FOR EACH ROW BEGIN if NEW.contactgroup14_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup14 SET countuser = countuser +1 WHERE contactgroup14.id =NEW.contactgroup14_id; SET @a= (Select count(*) from spisokcontactgroupuser14 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =14; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser14_AUPD` AFTER UPDATE ON `spisokcontactgroupuser14` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser14 where state = 0) as y) where id =14;	if OLD.contactgroup14_id is null and NEW.contactgroup14_id is not null then	UPDATE contactgroup14 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser14 where state = 0 and contactgroup14_id = NEW.contactgroup14_id) as y) where id =NEW.contactgroup14_id; end if;	if OLD.contactgroup14_id is not null and NEW.contactgroup14_id is null then	UPDATE contactgroup14 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser14 where state = 0 and contactgroup14_id = OLD.contactgroup14_id) as y) where id =OLD.contactgroup14_id; end if;	if OLD.contactgroup14_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup14 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser14 where state = 0 and contactgroup14_id = OLD.contactgroup14_id) as y) where id =OLD.contactgroup14_id; end if; if OLD.contactgroup14_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup14 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser14 where state = 0 and contactgroup14_id = OLD.contactgroup14_id) as y) where id =OLD.contactgroup14_id; end if; if OLD.contactgroup14_id != NEW.contactgroup14_id then UPDATE contactgroup14 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser14 where state = 0 and contactgroup14_id = OLD.contactgroup14_id) as y) where id =OLD.contactgroup14_id; UPDATE contactgroup14 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser14 where state = 0 and contactgroup14_id = NEW.contactgroup14_id) as y) where id =NEW.contactgroup14_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser14_ADEL` AFTER DELETE ON `spisokcontactgroupuser14` FOR EACH ROW BEGIN if OLD.contactgroup14_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup14 SET countuser = countuser -1 WHERE contactgroup14.id =OLD.contactgroup14_id; SET @a= (Select count(*) from spisokcontactgroupuser14 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =14; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser15`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser15`;
CREATE TABLE `spisokcontactgroupuser15` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup15_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser15_contactgroup151_idx` (`contactgroup15_id`),
  KEY `fk_spisokcontactgroupuser15_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser15_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser15_contactgroup151` FOREIGN KEY (`contactgroup15_id`) REFERENCES `contactgroup15` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser15`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser15` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser15` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser15` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser15_BINS` BEFORE INSERT ON `spisokcontactgroupuser15` FOR EACH ROW BEGIN if NEW.contactgroup15_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup15 SET countuser = countuser +1 WHERE contactgroup15.id =NEW.contactgroup15_id; SET @a= (Select count(*) from spisokcontactgroupuser15 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =15; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser15_AUPD` AFTER UPDATE ON `spisokcontactgroupuser15` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser15 where state = 0) as y) where id =15;	if OLD.contactgroup15_id is null and NEW.contactgroup15_id is not null then	UPDATE contactgroup15 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser15 where state = 0 and contactgroup15_id = NEW.contactgroup15_id) as y) where id =NEW.contactgroup15_id; end if;	if OLD.contactgroup15_id is not null and NEW.contactgroup15_id is null then	UPDATE contactgroup15 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser15 where state = 0 and contactgroup15_id = OLD.contactgroup15_id) as y) where id =OLD.contactgroup15_id; end if;	if OLD.contactgroup15_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup15 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser15 where state = 0 and contactgroup15_id = OLD.contactgroup15_id) as y) where id =OLD.contactgroup15_id; end if; if OLD.contactgroup15_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup15 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser15 where state = 0 and contactgroup15_id = OLD.contactgroup15_id) as y) where id =OLD.contactgroup15_id; end if; if OLD.contactgroup15_id != NEW.contactgroup15_id then UPDATE contactgroup15 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser15 where state = 0 and contactgroup15_id = OLD.contactgroup15_id) as y) where id =OLD.contactgroup15_id; UPDATE contactgroup15 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser15 where state = 0 and contactgroup15_id = NEW.contactgroup15_id) as y) where id =NEW.contactgroup15_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser15_ADEL` AFTER DELETE ON `spisokcontactgroupuser15` FOR EACH ROW BEGIN if OLD.contactgroup15_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup15 SET countuser = countuser -1 WHERE contactgroup15.id =OLD.contactgroup15_id; SET @a= (Select count(*) from spisokcontactgroupuser15 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =15; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser16`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser16`;
CREATE TABLE `spisokcontactgroupuser16` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup16_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser16_contactgroup161_idx` (`contactgroup16_id`),
  KEY `fk_spisokcontactgroupuser16_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser16_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser16_contactgroup161` FOREIGN KEY (`contactgroup16_id`) REFERENCES `contactgroup16` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser16`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser16` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser16` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser16` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser16_BINS` BEFORE INSERT ON `spisokcontactgroupuser16` FOR EACH ROW BEGIN if NEW.contactgroup16_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup16 SET countuser = countuser +1 WHERE contactgroup16.id =NEW.contactgroup16_id; SET @a= (Select count(*) from spisokcontactgroupuser16 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =16; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser16_AUPD` AFTER UPDATE ON `spisokcontactgroupuser16` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser16 where state = 0) as y) where id =16;	if OLD.contactgroup16_id is null and NEW.contactgroup16_id is not null then	UPDATE contactgroup16 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser16 where state = 0 and contactgroup16_id = NEW.contactgroup16_id) as y) where id =NEW.contactgroup16_id; end if;	if OLD.contactgroup16_id is not null and NEW.contactgroup16_id is null then	UPDATE contactgroup16 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser16 where state = 0 and contactgroup16_id = OLD.contactgroup16_id) as y) where id =OLD.contactgroup16_id; end if;	if OLD.contactgroup16_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup16 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser16 where state = 0 and contactgroup16_id = OLD.contactgroup16_id) as y) where id =OLD.contactgroup16_id; end if; if OLD.contactgroup16_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup16 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser16 where state = 0 and contactgroup16_id = OLD.contactgroup16_id) as y) where id =OLD.contactgroup16_id; end if; if OLD.contactgroup16_id != NEW.contactgroup16_id then UPDATE contactgroup16 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser16 where state = 0 and contactgroup16_id = OLD.contactgroup16_id) as y) where id =OLD.contactgroup16_id; UPDATE contactgroup16 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser16 where state = 0 and contactgroup16_id = NEW.contactgroup16_id) as y) where id =NEW.contactgroup16_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser16_ADEL` AFTER DELETE ON `spisokcontactgroupuser16` FOR EACH ROW BEGIN if OLD.contactgroup16_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup16 SET countuser = countuser -1 WHERE contactgroup16.id =OLD.contactgroup16_id; SET @a= (Select count(*) from spisokcontactgroupuser16 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =16; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser17`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser17`;
CREATE TABLE `spisokcontactgroupuser17` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup17_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser17_contactgroup171_idx` (`contactgroup17_id`),
  KEY `fk_spisokcontactgroupuser17_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser17_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser17_contactgroup171` FOREIGN KEY (`contactgroup17_id`) REFERENCES `contactgroup17` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser17`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser17` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser17` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser17` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser17_BINS` BEFORE INSERT ON `spisokcontactgroupuser17` FOR EACH ROW BEGIN if NEW.contactgroup17_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup17 SET countuser = countuser +1 WHERE contactgroup17.id =NEW.contactgroup17_id; SET @a= (Select count(*) from spisokcontactgroupuser17 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =17; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser17_AUPD` AFTER UPDATE ON `spisokcontactgroupuser17` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser17 where state = 0) as y) where id =17;	if OLD.contactgroup17_id is null and NEW.contactgroup17_id is not null then	UPDATE contactgroup17 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser17 where state = 0 and contactgroup17_id = NEW.contactgroup17_id) as y) where id =NEW.contactgroup17_id; end if;	if OLD.contactgroup17_id is not null and NEW.contactgroup17_id is null then	UPDATE contactgroup17 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser17 where state = 0 and contactgroup17_id = OLD.contactgroup17_id) as y) where id =OLD.contactgroup17_id; end if;	if OLD.contactgroup17_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup17 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser17 where state = 0 and contactgroup17_id = OLD.contactgroup17_id) as y) where id =OLD.contactgroup17_id; end if; if OLD.contactgroup17_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup17 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser17 where state = 0 and contactgroup17_id = OLD.contactgroup17_id) as y) where id =OLD.contactgroup17_id; end if; if OLD.contactgroup17_id != NEW.contactgroup17_id then UPDATE contactgroup17 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser17 where state = 0 and contactgroup17_id = OLD.contactgroup17_id) as y) where id =OLD.contactgroup17_id; UPDATE contactgroup17 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser17 where state = 0 and contactgroup17_id = NEW.contactgroup17_id) as y) where id =NEW.contactgroup17_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser17_ADEL` AFTER DELETE ON `spisokcontactgroupuser17` FOR EACH ROW BEGIN if OLD.contactgroup17_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup17 SET countuser = countuser -1 WHERE contactgroup17.id =OLD.contactgroup17_id; SET @a= (Select count(*) from spisokcontactgroupuser17 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =17; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser18`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser18`;
CREATE TABLE `spisokcontactgroupuser18` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup18_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser18_contactgroup181_idx` (`contactgroup18_id`),
  KEY `fk_spisokcontactgroupuser18_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser18_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser18_contactgroup181` FOREIGN KEY (`contactgroup18_id`) REFERENCES `contactgroup18` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser18`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser18` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser18` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser18` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser18_BINS` BEFORE INSERT ON `spisokcontactgroupuser18` FOR EACH ROW BEGIN if NEW.contactgroup18_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup18 SET countuser = countuser +1 WHERE contactgroup18.id =NEW.contactgroup18_id; SET @a= (Select count(*) from spisokcontactgroupuser18 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =18; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser18_AUPD` AFTER UPDATE ON `spisokcontactgroupuser18` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser18 where state = 0) as y) where id =18;	if OLD.contactgroup18_id is null and NEW.contactgroup18_id is not null then	UPDATE contactgroup18 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser18 where state = 0 and contactgroup18_id = NEW.contactgroup18_id) as y) where id =NEW.contactgroup18_id; end if;	if OLD.contactgroup18_id is not null and NEW.contactgroup18_id is null then	UPDATE contactgroup18 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser18 where state = 0 and contactgroup18_id = OLD.contactgroup18_id) as y) where id =OLD.contactgroup18_id; end if;	if OLD.contactgroup18_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup18 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser18 where state = 0 and contactgroup18_id = OLD.contactgroup18_id) as y) where id =OLD.contactgroup18_id; end if; if OLD.contactgroup18_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup18 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser18 where state = 0 and contactgroup18_id = OLD.contactgroup18_id) as y) where id =OLD.contactgroup18_id; end if; if OLD.contactgroup18_id != NEW.contactgroup18_id then UPDATE contactgroup18 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser18 where state = 0 and contactgroup18_id = OLD.contactgroup18_id) as y) where id =OLD.contactgroup18_id; UPDATE contactgroup18 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser18 where state = 0 and contactgroup18_id = NEW.contactgroup18_id) as y) where id =NEW.contactgroup18_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser18_ADEL` AFTER DELETE ON `spisokcontactgroupuser18` FOR EACH ROW BEGIN if OLD.contactgroup18_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup18 SET countuser = countuser -1 WHERE contactgroup18.id =OLD.contactgroup18_id; SET @a= (Select count(*) from spisokcontactgroupuser18 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =18; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser19`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser19`;
CREATE TABLE `spisokcontactgroupuser19` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup19_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser19_contactgroup191_idx` (`contactgroup19_id`),
  KEY `fk_spisokcontactgroupuser19_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser19_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser19_contactgroup191` FOREIGN KEY (`contactgroup19_id`) REFERENCES `contactgroup19` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser19`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser19` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser19` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser19` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser19_BINS` BEFORE INSERT ON `spisokcontactgroupuser19` FOR EACH ROW BEGIN if NEW.contactgroup19_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup19 SET countuser = countuser +1 WHERE contactgroup19.id =NEW.contactgroup19_id; SET @a= (Select count(*) from spisokcontactgroupuser19 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =19; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser19_AUPD` AFTER UPDATE ON `spisokcontactgroupuser19` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser19 where state = 0) as y) where id =19;	if OLD.contactgroup19_id is null and NEW.contactgroup19_id is not null then	UPDATE contactgroup19 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser19 where state = 0 and contactgroup19_id = NEW.contactgroup19_id) as y) where id =NEW.contactgroup19_id; end if;	if OLD.contactgroup19_id is not null and NEW.contactgroup19_id is null then	UPDATE contactgroup19 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser19 where state = 0 and contactgroup19_id = OLD.contactgroup19_id) as y) where id =OLD.contactgroup19_id; end if;	if OLD.contactgroup19_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup19 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser19 where state = 0 and contactgroup19_id = OLD.contactgroup19_id) as y) where id =OLD.contactgroup19_id; end if; if OLD.contactgroup19_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup19 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser19 where state = 0 and contactgroup19_id = OLD.contactgroup19_id) as y) where id =OLD.contactgroup19_id; end if; if OLD.contactgroup19_id != NEW.contactgroup19_id then UPDATE contactgroup19 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser19 where state = 0 and contactgroup19_id = OLD.contactgroup19_id) as y) where id =OLD.contactgroup19_id; UPDATE contactgroup19 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser19 where state = 0 and contactgroup19_id = NEW.contactgroup19_id) as y) where id =NEW.contactgroup19_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser19_ADEL` AFTER DELETE ON `spisokcontactgroupuser19` FOR EACH ROW BEGIN if OLD.contactgroup19_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup19 SET countuser = countuser -1 WHERE contactgroup19.id =OLD.contactgroup19_id; SET @a= (Select count(*) from spisokcontactgroupuser19 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =19; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser2`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser2`;
CREATE TABLE `spisokcontactgroupuser2` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup2_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser2_contactgroup21_idx` (`contactgroup2_id`),
  KEY `fk_spisokcontactgroupuser2_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser2_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser2_contactgroup21` FOREIGN KEY (`contactgroup2_id`) REFERENCES `contactgroup2` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser2`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser2` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser2` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser2` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser2_BINS` BEFORE INSERT ON `spisokcontactgroupuser2` FOR EACH ROW BEGIN if NEW.contactgroup2_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup2 SET countuser = countuser +1 WHERE contactgroup2.id =NEW.contactgroup2_id; SET @a= (Select count(*) from spisokcontactgroupuser2 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =2; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser2_AUPD` AFTER UPDATE ON `spisokcontactgroupuser2` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser2 where state = 0) as y) where id =2;	if OLD.contactgroup2_id is null and NEW.contactgroup2_id is not null then	UPDATE contactgroup2 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser2 where state = 0 and contactgroup2_id = NEW.contactgroup2_id) as y) where id =NEW.contactgroup2_id; end if;	if OLD.contactgroup2_id is not null and NEW.contactgroup2_id is null then	UPDATE contactgroup2 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser2 where state = 0 and contactgroup2_id = OLD.contactgroup2_id) as y) where id =OLD.contactgroup2_id; end if;	if OLD.contactgroup2_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup2 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser2 where state = 0 and contactgroup2_id = OLD.contactgroup2_id) as y) where id =OLD.contactgroup2_id; end if; if OLD.contactgroup2_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup2 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser2 where state = 0 and contactgroup2_id = OLD.contactgroup2_id) as y) where id =OLD.contactgroup2_id; end if; if OLD.contactgroup2_id != NEW.contactgroup2_id then UPDATE contactgroup2 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser2 where state = 0 and contactgroup2_id = OLD.contactgroup2_id) as y) where id =OLD.contactgroup2_id; UPDATE contactgroup2 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser2 where state = 0 and contactgroup2_id = NEW.contactgroup2_id) as y) where id =NEW.contactgroup2_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser2_ADEL` AFTER DELETE ON `spisokcontactgroupuser2` FOR EACH ROW BEGIN if OLD.contactgroup2_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup2 SET countuser = countuser -1 WHERE contactgroup2.id =OLD.contactgroup2_id; SET @a= (Select count(*) from spisokcontactgroupuser2 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =2; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser20`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser20`;
CREATE TABLE `spisokcontactgroupuser20` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup20_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser20_contactgroup201_idx` (`contactgroup20_id`),
  KEY `fk_spisokcontactgroupuser20_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser20_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser20_contactgroup201` FOREIGN KEY (`contactgroup20_id`) REFERENCES `contactgroup20` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser20`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser20` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser20` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser20` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser20_BINS` BEFORE INSERT ON `spisokcontactgroupuser20` FOR EACH ROW BEGIN if NEW.contactgroup20_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup20 SET countuser = countuser +1 WHERE contactgroup20.id =NEW.contactgroup20_id; SET @a= (Select count(*) from spisokcontactgroupuser20 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =20; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser20_AUPD` AFTER UPDATE ON `spisokcontactgroupuser20` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser20 where state = 0) as y) where id =20;	if OLD.contactgroup20_id is null and NEW.contactgroup20_id is not null then	UPDATE contactgroup20 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser20 where state = 0 and contactgroup20_id = NEW.contactgroup20_id) as y) where id =NEW.contactgroup20_id; end if;	if OLD.contactgroup20_id is not null and NEW.contactgroup20_id is null then	UPDATE contactgroup20 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser20 where state = 0 and contactgroup20_id = OLD.contactgroup20_id) as y) where id =OLD.contactgroup20_id; end if;	if OLD.contactgroup20_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup20 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser20 where state = 0 and contactgroup20_id = OLD.contactgroup20_id) as y) where id =OLD.contactgroup20_id; end if; if OLD.contactgroup20_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup20 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser20 where state = 0 and contactgroup20_id = OLD.contactgroup20_id) as y) where id =OLD.contactgroup20_id; end if; if OLD.contactgroup20_id != NEW.contactgroup20_id then UPDATE contactgroup20 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser20 where state = 0 and contactgroup20_id = OLD.contactgroup20_id) as y) where id =OLD.contactgroup20_id; UPDATE contactgroup20 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser20 where state = 0 and contactgroup20_id = NEW.contactgroup20_id) as y) where id =NEW.contactgroup20_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser20_ADEL` AFTER DELETE ON `spisokcontactgroupuser20` FOR EACH ROW BEGIN if OLD.contactgroup20_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup20 SET countuser = countuser -1 WHERE contactgroup20.id =OLD.contactgroup20_id; SET @a= (Select count(*) from spisokcontactgroupuser20 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =20; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser21`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser21`;
CREATE TABLE `spisokcontactgroupuser21` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup21_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser21_contactgroup211_idx` (`contactgroup21_id`),
  KEY `fk_spisokcontactgroupuser21_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser21_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser21_contactgroup211` FOREIGN KEY (`contactgroup21_id`) REFERENCES `contactgroup21` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser21`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser21` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser21` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser21` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser21_BINS` BEFORE INSERT ON `spisokcontactgroupuser21` FOR EACH ROW BEGIN if NEW.contactgroup21_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup21 SET countuser = countuser +1 WHERE contactgroup21.id =NEW.contactgroup21_id; SET @a= (Select count(*) from spisokcontactgroupuser21 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =21; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser21_AUPD` AFTER UPDATE ON `spisokcontactgroupuser21` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser21 where state = 0) as y) where id =21;	if OLD.contactgroup21_id is null and NEW.contactgroup21_id is not null then	UPDATE contactgroup21 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser21 where state = 0 and contactgroup21_id = NEW.contactgroup21_id) as y) where id =NEW.contactgroup21_id; end if;	if OLD.contactgroup21_id is not null and NEW.contactgroup21_id is null then	UPDATE contactgroup21 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser21 where state = 0 and contactgroup21_id = OLD.contactgroup21_id) as y) where id =OLD.contactgroup21_id; end if;	if OLD.contactgroup21_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup21 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser21 where state = 0 and contactgroup21_id = OLD.contactgroup21_id) as y) where id =OLD.contactgroup21_id; end if; if OLD.contactgroup21_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup21 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser21 where state = 0 and contactgroup21_id = OLD.contactgroup21_id) as y) where id =OLD.contactgroup21_id; end if; if OLD.contactgroup21_id != NEW.contactgroup21_id then UPDATE contactgroup21 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser21 where state = 0 and contactgroup21_id = OLD.contactgroup21_id) as y) where id =OLD.contactgroup21_id; UPDATE contactgroup21 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser21 where state = 0 and contactgroup21_id = NEW.contactgroup21_id) as y) where id =NEW.contactgroup21_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser21_ADEL` AFTER DELETE ON `spisokcontactgroupuser21` FOR EACH ROW BEGIN if OLD.contactgroup21_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup21 SET countuser = countuser -1 WHERE contactgroup21.id =OLD.contactgroup21_id; SET @a= (Select count(*) from spisokcontactgroupuser21 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =21; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser22`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser22`;
CREATE TABLE `spisokcontactgroupuser22` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup22_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser22_contactgroup221_idx` (`contactgroup22_id`),
  KEY `fk_spisokcontactgroupuser22_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser22_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser22_contactgroup221` FOREIGN KEY (`contactgroup22_id`) REFERENCES `contactgroup22` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser22`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser22` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser22` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser22` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser22_BINS` BEFORE INSERT ON `spisokcontactgroupuser22` FOR EACH ROW BEGIN if NEW.contactgroup22_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup22 SET countuser = countuser +1 WHERE contactgroup22.id =NEW.contactgroup22_id; SET @a= (Select count(*) from spisokcontactgroupuser22 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =22; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser22_AUPD` AFTER UPDATE ON `spisokcontactgroupuser22` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser22 where state = 0) as y) where id =22;	if OLD.contactgroup22_id is null and NEW.contactgroup22_id is not null then	UPDATE contactgroup22 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser22 where state = 0 and contactgroup22_id = NEW.contactgroup22_id) as y) where id =NEW.contactgroup22_id; end if;	if OLD.contactgroup22_id is not null and NEW.contactgroup22_id is null then	UPDATE contactgroup22 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser22 where state = 0 and contactgroup22_id = OLD.contactgroup22_id) as y) where id =OLD.contactgroup22_id; end if;	if OLD.contactgroup22_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup22 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser22 where state = 0 and contactgroup22_id = OLD.contactgroup22_id) as y) where id =OLD.contactgroup22_id; end if; if OLD.contactgroup22_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup22 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser22 where state = 0 and contactgroup22_id = OLD.contactgroup22_id) as y) where id =OLD.contactgroup22_id; end if; if OLD.contactgroup22_id != NEW.contactgroup22_id then UPDATE contactgroup22 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser22 where state = 0 and contactgroup22_id = OLD.contactgroup22_id) as y) where id =OLD.contactgroup22_id; UPDATE contactgroup22 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser22 where state = 0 and contactgroup22_id = NEW.contactgroup22_id) as y) where id =NEW.contactgroup22_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser22_ADEL` AFTER DELETE ON `spisokcontactgroupuser22` FOR EACH ROW BEGIN if OLD.contactgroup22_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup22 SET countuser = countuser -1 WHERE contactgroup22.id =OLD.contactgroup22_id; SET @a= (Select count(*) from spisokcontactgroupuser22 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =22; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser23`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser23`;
CREATE TABLE `spisokcontactgroupuser23` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup23_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser23_contactgroup231_idx` (`contactgroup23_id`),
  KEY `fk_spisokcontactgroupuser23_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser23_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser23_contactgroup231` FOREIGN KEY (`contactgroup23_id`) REFERENCES `contactgroup23` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser23`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser23` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser23` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser23` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser23_BINS` BEFORE INSERT ON `spisokcontactgroupuser23` FOR EACH ROW BEGIN if NEW.contactgroup23_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup23 SET countuser = countuser +1 WHERE contactgroup23.id =NEW.contactgroup23_id; SET @a= (Select count(*) from spisokcontactgroupuser23 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =23; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser23_AUPD` AFTER UPDATE ON `spisokcontactgroupuser23` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser23 where state = 0) as y) where id =23;	if OLD.contactgroup23_id is null and NEW.contactgroup23_id is not null then	UPDATE contactgroup23 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser23 where state = 0 and contactgroup23_id = NEW.contactgroup23_id) as y) where id =NEW.contactgroup23_id; end if;	if OLD.contactgroup23_id is not null and NEW.contactgroup23_id is null then	UPDATE contactgroup23 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser23 where state = 0 and contactgroup23_id = OLD.contactgroup23_id) as y) where id =OLD.contactgroup23_id; end if;	if OLD.contactgroup23_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup23 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser23 where state = 0 and contactgroup23_id = OLD.contactgroup23_id) as y) where id =OLD.contactgroup23_id; end if; if OLD.contactgroup23_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup23 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser23 where state = 0 and contactgroup23_id = OLD.contactgroup23_id) as y) where id =OLD.contactgroup23_id; end if; if OLD.contactgroup23_id != NEW.contactgroup23_id then UPDATE contactgroup23 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser23 where state = 0 and contactgroup23_id = OLD.contactgroup23_id) as y) where id =OLD.contactgroup23_id; UPDATE contactgroup23 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser23 where state = 0 and contactgroup23_id = NEW.contactgroup23_id) as y) where id =NEW.contactgroup23_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser23_ADEL` AFTER DELETE ON `spisokcontactgroupuser23` FOR EACH ROW BEGIN if OLD.contactgroup23_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup23 SET countuser = countuser -1 WHERE contactgroup23.id =OLD.contactgroup23_id; SET @a= (Select count(*) from spisokcontactgroupuser23 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =23; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser24`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser24`;
CREATE TABLE `spisokcontactgroupuser24` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup24_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser24_contactgroup241_idx` (`contactgroup24_id`),
  KEY `fk_spisokcontactgroupuser24_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser24_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser24_contactgroup241` FOREIGN KEY (`contactgroup24_id`) REFERENCES `contactgroup24` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser24`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser24` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser24` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser24` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser24_BINS` BEFORE INSERT ON `spisokcontactgroupuser24` FOR EACH ROW BEGIN if NEW.contactgroup24_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup24 SET countuser = countuser +1 WHERE contactgroup24.id =NEW.contactgroup24_id; SET @a= (Select count(*) from spisokcontactgroupuser24 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =24; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser24_AUPD` AFTER UPDATE ON `spisokcontactgroupuser24` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser24 where state = 0) as y) where id =24;	if OLD.contactgroup24_id is null and NEW.contactgroup24_id is not null then	UPDATE contactgroup24 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser24 where state = 0 and contactgroup24_id = NEW.contactgroup24_id) as y) where id =NEW.contactgroup24_id; end if;	if OLD.contactgroup24_id is not null and NEW.contactgroup24_id is null then	UPDATE contactgroup24 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser24 where state = 0 and contactgroup24_id = OLD.contactgroup24_id) as y) where id =OLD.contactgroup24_id; end if;	if OLD.contactgroup24_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup24 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser24 where state = 0 and contactgroup24_id = OLD.contactgroup24_id) as y) where id =OLD.contactgroup24_id; end if; if OLD.contactgroup24_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup24 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser24 where state = 0 and contactgroup24_id = OLD.contactgroup24_id) as y) where id =OLD.contactgroup24_id; end if; if OLD.contactgroup24_id != NEW.contactgroup24_id then UPDATE contactgroup24 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser24 where state = 0 and contactgroup24_id = OLD.contactgroup24_id) as y) where id =OLD.contactgroup24_id; UPDATE contactgroup24 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser24 where state = 0 and contactgroup24_id = NEW.contactgroup24_id) as y) where id =NEW.contactgroup24_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser24_ADEL` AFTER DELETE ON `spisokcontactgroupuser24` FOR EACH ROW BEGIN if OLD.contactgroup24_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup24 SET countuser = countuser -1 WHERE contactgroup24.id =OLD.contactgroup24_id; SET @a= (Select count(*) from spisokcontactgroupuser24 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =24; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser25`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser25`;
CREATE TABLE `spisokcontactgroupuser25` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup25_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser25_contactgroup251_idx` (`contactgroup25_id`),
  KEY `fk_spisokcontactgroupuser25_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser25_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser25_contactgroup251` FOREIGN KEY (`contactgroup25_id`) REFERENCES `contactgroup25` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser25`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser25` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser25` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser25` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser25_BINS` BEFORE INSERT ON `spisokcontactgroupuser25` FOR EACH ROW BEGIN if NEW.contactgroup25_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup25 SET countuser = countuser +1 WHERE contactgroup25.id =NEW.contactgroup25_id; SET @a= (Select count(*) from spisokcontactgroupuser25 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =25; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser25_AUPD` AFTER UPDATE ON `spisokcontactgroupuser25` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser25 where state = 0) as y) where id =25;	if OLD.contactgroup25_id is null and NEW.contactgroup25_id is not null then	UPDATE contactgroup25 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser25 where state = 0 and contactgroup25_id = NEW.contactgroup25_id) as y) where id =NEW.contactgroup25_id; end if;	if OLD.contactgroup25_id is not null and NEW.contactgroup25_id is null then	UPDATE contactgroup25 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser25 where state = 0 and contactgroup25_id = OLD.contactgroup25_id) as y) where id =OLD.contactgroup25_id; end if;	if OLD.contactgroup25_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup25 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser25 where state = 0 and contactgroup25_id = OLD.contactgroup25_id) as y) where id =OLD.contactgroup25_id; end if; if OLD.contactgroup25_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup25 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser25 where state = 0 and contactgroup25_id = OLD.contactgroup25_id) as y) where id =OLD.contactgroup25_id; end if; if OLD.contactgroup25_id != NEW.contactgroup25_id then UPDATE contactgroup25 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser25 where state = 0 and contactgroup25_id = OLD.contactgroup25_id) as y) where id =OLD.contactgroup25_id; UPDATE contactgroup25 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser25 where state = 0 and contactgroup25_id = NEW.contactgroup25_id) as y) where id =NEW.contactgroup25_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser25_ADEL` AFTER DELETE ON `spisokcontactgroupuser25` FOR EACH ROW BEGIN if OLD.contactgroup25_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup25 SET countuser = countuser -1 WHERE contactgroup25.id =OLD.contactgroup25_id; SET @a= (Select count(*) from spisokcontactgroupuser25 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =25; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser26`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser26`;
CREATE TABLE `spisokcontactgroupuser26` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup26_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser26_contactgroup261_idx` (`contactgroup26_id`),
  KEY `fk_spisokcontactgroupuser26_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser26_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser26_contactgroup261` FOREIGN KEY (`contactgroup26_id`) REFERENCES `contactgroup26` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser26`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser26` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser26` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser26` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser26_BINS` BEFORE INSERT ON `spisokcontactgroupuser26` FOR EACH ROW BEGIN if NEW.contactgroup26_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup26 SET countuser = countuser +1 WHERE contactgroup26.id =NEW.contactgroup26_id; SET @a= (Select count(*) from spisokcontactgroupuser26 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =26; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser26_AUPD` AFTER UPDATE ON `spisokcontactgroupuser26` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser26 where state = 0) as y) where id =26;	if OLD.contactgroup26_id is null and NEW.contactgroup26_id is not null then	UPDATE contactgroup26 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser26 where state = 0 and contactgroup26_id = NEW.contactgroup26_id) as y) where id =NEW.contactgroup26_id; end if;	if OLD.contactgroup26_id is not null and NEW.contactgroup26_id is null then	UPDATE contactgroup26 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser26 where state = 0 and contactgroup26_id = OLD.contactgroup26_id) as y) where id =OLD.contactgroup26_id; end if;	if OLD.contactgroup26_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup26 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser26 where state = 0 and contactgroup26_id = OLD.contactgroup26_id) as y) where id =OLD.contactgroup26_id; end if; if OLD.contactgroup26_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup26 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser26 where state = 0 and contactgroup26_id = OLD.contactgroup26_id) as y) where id =OLD.contactgroup26_id; end if; if OLD.contactgroup26_id != NEW.contactgroup26_id then UPDATE contactgroup26 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser26 where state = 0 and contactgroup26_id = OLD.contactgroup26_id) as y) where id =OLD.contactgroup26_id; UPDATE contactgroup26 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser26 where state = 0 and contactgroup26_id = NEW.contactgroup26_id) as y) where id =NEW.contactgroup26_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser26_ADEL` AFTER DELETE ON `spisokcontactgroupuser26` FOR EACH ROW BEGIN if OLD.contactgroup26_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup26 SET countuser = countuser -1 WHERE contactgroup26.id =OLD.contactgroup26_id; SET @a= (Select count(*) from spisokcontactgroupuser26 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =26; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser27`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser27`;
CREATE TABLE `spisokcontactgroupuser27` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup27_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser27_contactgroup271_idx` (`contactgroup27_id`),
  KEY `fk_spisokcontactgroupuser27_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser27_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser27_contactgroup271` FOREIGN KEY (`contactgroup27_id`) REFERENCES `contactgroup27` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser27`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser27` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser27` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser27` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser27_BINS` BEFORE INSERT ON `spisokcontactgroupuser27` FOR EACH ROW BEGIN if NEW.contactgroup27_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup27 SET countuser = countuser +1 WHERE contactgroup27.id =NEW.contactgroup27_id; SET @a= (Select count(*) from spisokcontactgroupuser27 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =27; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser27_AUPD` AFTER UPDATE ON `spisokcontactgroupuser27` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser27 where state = 0) as y) where id =27;	if OLD.contactgroup27_id is null and NEW.contactgroup27_id is not null then	UPDATE contactgroup27 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser27 where state = 0 and contactgroup27_id = NEW.contactgroup27_id) as y) where id =NEW.contactgroup27_id; end if;	if OLD.contactgroup27_id is not null and NEW.contactgroup27_id is null then	UPDATE contactgroup27 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser27 where state = 0 and contactgroup27_id = OLD.contactgroup27_id) as y) where id =OLD.contactgroup27_id; end if;	if OLD.contactgroup27_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup27 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser27 where state = 0 and contactgroup27_id = OLD.contactgroup27_id) as y) where id =OLD.contactgroup27_id; end if; if OLD.contactgroup27_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup27 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser27 where state = 0 and contactgroup27_id = OLD.contactgroup27_id) as y) where id =OLD.contactgroup27_id; end if; if OLD.contactgroup27_id != NEW.contactgroup27_id then UPDATE contactgroup27 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser27 where state = 0 and contactgroup27_id = OLD.contactgroup27_id) as y) where id =OLD.contactgroup27_id; UPDATE contactgroup27 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser27 where state = 0 and contactgroup27_id = NEW.contactgroup27_id) as y) where id =NEW.contactgroup27_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser27_ADEL` AFTER DELETE ON `spisokcontactgroupuser27` FOR EACH ROW BEGIN if OLD.contactgroup27_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup27 SET countuser = countuser -1 WHERE contactgroup27.id =OLD.contactgroup27_id; SET @a= (Select count(*) from spisokcontactgroupuser27 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =27; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser28`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser28`;
CREATE TABLE `spisokcontactgroupuser28` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup28_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser28_contactgroup281_idx` (`contactgroup28_id`),
  KEY `fk_spisokcontactgroupuser28_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser28_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser28_contactgroup281` FOREIGN KEY (`contactgroup28_id`) REFERENCES `contactgroup28` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser28`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser28` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser28` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser28` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser28_BINS` BEFORE INSERT ON `spisokcontactgroupuser28` FOR EACH ROW BEGIN if NEW.contactgroup28_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup28 SET countuser = countuser +1 WHERE contactgroup28.id =NEW.contactgroup28_id; SET @a= (Select count(*) from spisokcontactgroupuser28 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =28; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser28_AUPD` AFTER UPDATE ON `spisokcontactgroupuser28` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser28 where state = 0) as y) where id =28;	if OLD.contactgroup28_id is null and NEW.contactgroup28_id is not null then	UPDATE contactgroup28 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser28 where state = 0 and contactgroup28_id = NEW.contactgroup28_id) as y) where id =NEW.contactgroup28_id; end if;	if OLD.contactgroup28_id is not null and NEW.contactgroup28_id is null then	UPDATE contactgroup28 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser28 where state = 0 and contactgroup28_id = OLD.contactgroup28_id) as y) where id =OLD.contactgroup28_id; end if;	if OLD.contactgroup28_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup28 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser28 where state = 0 and contactgroup28_id = OLD.contactgroup28_id) as y) where id =OLD.contactgroup28_id; end if; if OLD.contactgroup28_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup28 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser28 where state = 0 and contactgroup28_id = OLD.contactgroup28_id) as y) where id =OLD.contactgroup28_id; end if; if OLD.contactgroup28_id != NEW.contactgroup28_id then UPDATE contactgroup28 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser28 where state = 0 and contactgroup28_id = OLD.contactgroup28_id) as y) where id =OLD.contactgroup28_id; UPDATE contactgroup28 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser28 where state = 0 and contactgroup28_id = NEW.contactgroup28_id) as y) where id =NEW.contactgroup28_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser28_ADEL` AFTER DELETE ON `spisokcontactgroupuser28` FOR EACH ROW BEGIN if OLD.contactgroup28_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup28 SET countuser = countuser -1 WHERE contactgroup28.id =OLD.contactgroup28_id; SET @a= (Select count(*) from spisokcontactgroupuser28 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =28; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser29`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser29`;
CREATE TABLE `spisokcontactgroupuser29` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup29_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser29_contactgroup291_idx` (`contactgroup29_id`),
  KEY `fk_spisokcontactgroupuser29_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser29_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser29_contactgroup291` FOREIGN KEY (`contactgroup29_id`) REFERENCES `contactgroup29` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser29`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser29` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser29` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser29` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser29_BINS` BEFORE INSERT ON `spisokcontactgroupuser29` FOR EACH ROW BEGIN if NEW.contactgroup29_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup29 SET countuser = countuser +1 WHERE contactgroup29.id =NEW.contactgroup29_id; SET @a= (Select count(*) from spisokcontactgroupuser29 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =29; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser29_AUPD` AFTER UPDATE ON `spisokcontactgroupuser29` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser29 where state = 0) as y) where id =29;	if OLD.contactgroup29_id is null and NEW.contactgroup29_id is not null then	UPDATE contactgroup29 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser29 where state = 0 and contactgroup29_id = NEW.contactgroup29_id) as y) where id =NEW.contactgroup29_id; end if;	if OLD.contactgroup29_id is not null and NEW.contactgroup29_id is null then	UPDATE contactgroup29 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser29 where state = 0 and contactgroup29_id = OLD.contactgroup29_id) as y) where id =OLD.contactgroup29_id; end if;	if OLD.contactgroup29_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup29 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser29 where state = 0 and contactgroup29_id = OLD.contactgroup29_id) as y) where id =OLD.contactgroup29_id; end if; if OLD.contactgroup29_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup29 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser29 where state = 0 and contactgroup29_id = OLD.contactgroup29_id) as y) where id =OLD.contactgroup29_id; end if; if OLD.contactgroup29_id != NEW.contactgroup29_id then UPDATE contactgroup29 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser29 where state = 0 and contactgroup29_id = OLD.contactgroup29_id) as y) where id =OLD.contactgroup29_id; UPDATE contactgroup29 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser29 where state = 0 and contactgroup29_id = NEW.contactgroup29_id) as y) where id =NEW.contactgroup29_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser29_ADEL` AFTER DELETE ON `spisokcontactgroupuser29` FOR EACH ROW BEGIN if OLD.contactgroup29_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup29 SET countuser = countuser -1 WHERE contactgroup29.id =OLD.contactgroup29_id; SET @a= (Select count(*) from spisokcontactgroupuser29 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =29; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser3`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser3`;
CREATE TABLE `spisokcontactgroupuser3` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup3_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser3_contactgroup31_idx` (`contactgroup3_id`),
  KEY `fk_spisokcontactgroupuser3_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser3_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser3_contactgroup31` FOREIGN KEY (`contactgroup3_id`) REFERENCES `contactgroup3` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser3`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser3` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser3` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser3` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser3_BINS` BEFORE INSERT ON `spisokcontactgroupuser3` FOR EACH ROW BEGIN if NEW.contactgroup3_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup3 SET countuser = countuser +1 WHERE contactgroup3.id =NEW.contactgroup3_id; SET @a= (Select count(*) from spisokcontactgroupuser3 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =3; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser3_AUPD` AFTER UPDATE ON `spisokcontactgroupuser3` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser3 where state = 0) as y) where id =3;	if OLD.contactgroup3_id is null and NEW.contactgroup3_id is not null then	UPDATE contactgroup3 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser3 where state = 0 and contactgroup3_id = NEW.contactgroup3_id) as y) where id =NEW.contactgroup3_id; end if;	if OLD.contactgroup3_id is not null and NEW.contactgroup3_id is null then	UPDATE contactgroup3 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser3 where state = 0 and contactgroup3_id = OLD.contactgroup3_id) as y) where id =OLD.contactgroup3_id; end if;	if OLD.contactgroup3_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup3 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser3 where state = 0 and contactgroup3_id = OLD.contactgroup3_id) as y) where id =OLD.contactgroup3_id; end if; if OLD.contactgroup3_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup3 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser3 where state = 0 and contactgroup3_id = OLD.contactgroup3_id) as y) where id =OLD.contactgroup3_id; end if; if OLD.contactgroup3_id != NEW.contactgroup3_id then UPDATE contactgroup3 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser3 where state = 0 and contactgroup3_id = OLD.contactgroup3_id) as y) where id =OLD.contactgroup3_id; UPDATE contactgroup3 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser3 where state = 0 and contactgroup3_id = NEW.contactgroup3_id) as y) where id =NEW.contactgroup3_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser3_ADEL` AFTER DELETE ON `spisokcontactgroupuser3` FOR EACH ROW BEGIN if OLD.contactgroup3_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup3 SET countuser = countuser -1 WHERE contactgroup3.id =OLD.contactgroup3_id; SET @a= (Select count(*) from spisokcontactgroupuser3 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =3; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser30`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser30`;
CREATE TABLE `spisokcontactgroupuser30` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup30_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser30_contactgroup301_idx` (`contactgroup30_id`),
  KEY `fk_spisokcontactgroupuser30_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser30_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser30_contactgroup301` FOREIGN KEY (`contactgroup30_id`) REFERENCES `contactgroup30` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser30`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser30` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser30` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser30` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser30_BINS` BEFORE INSERT ON `spisokcontactgroupuser30` FOR EACH ROW BEGIN if NEW.contactgroup30_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup30 SET countuser = countuser +1 WHERE contactgroup30.id =NEW.contactgroup30_id; SET @a= (Select count(*) from spisokcontactgroupuser30 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =30; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser30_AUPD` AFTER UPDATE ON `spisokcontactgroupuser30` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser30 where state = 0) as y) where id =30;	if OLD.contactgroup30_id is null and NEW.contactgroup30_id is not null then	UPDATE contactgroup30 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser30 where state = 0 and contactgroup30_id = NEW.contactgroup30_id) as y) where id =NEW.contactgroup30_id; end if;	if OLD.contactgroup30_id is not null and NEW.contactgroup30_id is null then	UPDATE contactgroup30 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser30 where state = 0 and contactgroup30_id = OLD.contactgroup30_id) as y) where id =OLD.contactgroup30_id; end if;	if OLD.contactgroup30_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup30 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser30 where state = 0 and contactgroup30_id = OLD.contactgroup30_id) as y) where id =OLD.contactgroup30_id; end if; if OLD.contactgroup30_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup30 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser30 where state = 0 and contactgroup30_id = OLD.contactgroup30_id) as y) where id =OLD.contactgroup30_id; end if; if OLD.contactgroup30_id != NEW.contactgroup30_id then UPDATE contactgroup30 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser30 where state = 0 and contactgroup30_id = OLD.contactgroup30_id) as y) where id =OLD.contactgroup30_id; UPDATE contactgroup30 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser30 where state = 0 and contactgroup30_id = NEW.contactgroup30_id) as y) where id =NEW.contactgroup30_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser30_ADEL` AFTER DELETE ON `spisokcontactgroupuser30` FOR EACH ROW BEGIN if OLD.contactgroup30_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup30 SET countuser = countuser -1 WHERE contactgroup30.id =OLD.contactgroup30_id; SET @a= (Select count(*) from spisokcontactgroupuser30 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =30; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser31`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser31`;
CREATE TABLE `spisokcontactgroupuser31` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup31_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser31_contactgroup311_idx` (`contactgroup31_id`),
  KEY `fk_spisokcontactgroupuser31_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser31_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser31_contactgroup311` FOREIGN KEY (`contactgroup31_id`) REFERENCES `contactgroup31` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser31`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser31` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser31` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser31` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser31_BINS` BEFORE INSERT ON `spisokcontactgroupuser31` FOR EACH ROW BEGIN if NEW.contactgroup31_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup31 SET countuser = countuser +1 WHERE contactgroup31.id =NEW.contactgroup31_id; SET @a= (Select count(*) from spisokcontactgroupuser31 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =31; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser31_AUPD` AFTER UPDATE ON `spisokcontactgroupuser31` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser31 where state = 0) as y) where id =31;	if OLD.contactgroup31_id is null and NEW.contactgroup31_id is not null then	UPDATE contactgroup31 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser31 where state = 0 and contactgroup31_id = NEW.contactgroup31_id) as y) where id =NEW.contactgroup31_id; end if;	if OLD.contactgroup31_id is not null and NEW.contactgroup31_id is null then	UPDATE contactgroup31 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser31 where state = 0 and contactgroup31_id = OLD.contactgroup31_id) as y) where id =OLD.contactgroup31_id; end if;	if OLD.contactgroup31_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup31 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser31 where state = 0 and contactgroup31_id = OLD.contactgroup31_id) as y) where id =OLD.contactgroup31_id; end if; if OLD.contactgroup31_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup31 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser31 where state = 0 and contactgroup31_id = OLD.contactgroup31_id) as y) where id =OLD.contactgroup31_id; end if; if OLD.contactgroup31_id != NEW.contactgroup31_id then UPDATE contactgroup31 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser31 where state = 0 and contactgroup31_id = OLD.contactgroup31_id) as y) where id =OLD.contactgroup31_id; UPDATE contactgroup31 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser31 where state = 0 and contactgroup31_id = NEW.contactgroup31_id) as y) where id =NEW.contactgroup31_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser31_ADEL` AFTER DELETE ON `spisokcontactgroupuser31` FOR EACH ROW BEGIN if OLD.contactgroup31_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup31 SET countuser = countuser -1 WHERE contactgroup31.id =OLD.contactgroup31_id; SET @a= (Select count(*) from spisokcontactgroupuser31 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =31; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser32`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser32`;
CREATE TABLE `spisokcontactgroupuser32` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup32_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser32_contactgroup321_idx` (`contactgroup32_id`),
  KEY `fk_spisokcontactgroupuser32_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser32_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser32_contactgroup321` FOREIGN KEY (`contactgroup32_id`) REFERENCES `contactgroup32` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser32`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser32` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser32` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser32` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser32_BINS` BEFORE INSERT ON `spisokcontactgroupuser32` FOR EACH ROW BEGIN if NEW.contactgroup32_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup32 SET countuser = countuser +1 WHERE contactgroup32.id =NEW.contactgroup32_id; SET @a= (Select count(*) from spisokcontactgroupuser32 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =32; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser32_AUPD` AFTER UPDATE ON `spisokcontactgroupuser32` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser32 where state = 0) as y) where id =32;	if OLD.contactgroup32_id is null and NEW.contactgroup32_id is not null then	UPDATE contactgroup32 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser32 where state = 0 and contactgroup32_id = NEW.contactgroup32_id) as y) where id =NEW.contactgroup32_id; end if;	if OLD.contactgroup32_id is not null and NEW.contactgroup32_id is null then	UPDATE contactgroup32 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser32 where state = 0 and contactgroup32_id = OLD.contactgroup32_id) as y) where id =OLD.contactgroup32_id; end if;	if OLD.contactgroup32_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup32 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser32 where state = 0 and contactgroup32_id = OLD.contactgroup32_id) as y) where id =OLD.contactgroup32_id; end if; if OLD.contactgroup32_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup32 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser32 where state = 0 and contactgroup32_id = OLD.contactgroup32_id) as y) where id =OLD.contactgroup32_id; end if; if OLD.contactgroup32_id != NEW.contactgroup32_id then UPDATE contactgroup32 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser32 where state = 0 and contactgroup32_id = OLD.contactgroup32_id) as y) where id =OLD.contactgroup32_id; UPDATE contactgroup32 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser32 where state = 0 and contactgroup32_id = NEW.contactgroup32_id) as y) where id =NEW.contactgroup32_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser32_ADEL` AFTER DELETE ON `spisokcontactgroupuser32` FOR EACH ROW BEGIN if OLD.contactgroup32_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup32 SET countuser = countuser -1 WHERE contactgroup32.id =OLD.contactgroup32_id; SET @a= (Select count(*) from spisokcontactgroupuser32 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =32; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser33`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser33`;
CREATE TABLE `spisokcontactgroupuser33` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup33_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser33_contactgroup331_idx` (`contactgroup33_id`),
  KEY `fk_spisokcontactgroupuser33_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser33_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser33_contactgroup331` FOREIGN KEY (`contactgroup33_id`) REFERENCES `contactgroup33` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser33`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser33` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser33` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser33` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser33_BINS` BEFORE INSERT ON `spisokcontactgroupuser33` FOR EACH ROW BEGIN if NEW.contactgroup33_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup33 SET countuser = countuser +1 WHERE contactgroup33.id =NEW.contactgroup33_id; SET @a= (Select count(*) from spisokcontactgroupuser33 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =33; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser33_AUPD` AFTER UPDATE ON `spisokcontactgroupuser33` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser33 where state = 0) as y) where id =33;	if OLD.contactgroup33_id is null and NEW.contactgroup33_id is not null then	UPDATE contactgroup33 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser33 where state = 0 and contactgroup33_id = NEW.contactgroup33_id) as y) where id =NEW.contactgroup33_id; end if;	if OLD.contactgroup33_id is not null and NEW.contactgroup33_id is null then	UPDATE contactgroup33 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser33 where state = 0 and contactgroup33_id = OLD.contactgroup33_id) as y) where id =OLD.contactgroup33_id; end if;	if OLD.contactgroup33_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup33 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser33 where state = 0 and contactgroup33_id = OLD.contactgroup33_id) as y) where id =OLD.contactgroup33_id; end if; if OLD.contactgroup33_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup33 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser33 where state = 0 and contactgroup33_id = OLD.contactgroup33_id) as y) where id =OLD.contactgroup33_id; end if; if OLD.contactgroup33_id != NEW.contactgroup33_id then UPDATE contactgroup33 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser33 where state = 0 and contactgroup33_id = OLD.contactgroup33_id) as y) where id =OLD.contactgroup33_id; UPDATE contactgroup33 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser33 where state = 0 and contactgroup33_id = NEW.contactgroup33_id) as y) where id =NEW.contactgroup33_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser33_ADEL` AFTER DELETE ON `spisokcontactgroupuser33` FOR EACH ROW BEGIN if OLD.contactgroup33_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup33 SET countuser = countuser -1 WHERE contactgroup33.id =OLD.contactgroup33_id; SET @a= (Select count(*) from spisokcontactgroupuser33 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =33; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser34`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser34`;
CREATE TABLE `spisokcontactgroupuser34` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup34_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser34_contactgroup341_idx` (`contactgroup34_id`),
  KEY `fk_spisokcontactgroupuser34_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser34_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser34_contactgroup341` FOREIGN KEY (`contactgroup34_id`) REFERENCES `contactgroup34` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser34`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser34` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser34` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser34` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser34_BINS` BEFORE INSERT ON `spisokcontactgroupuser34` FOR EACH ROW BEGIN if NEW.contactgroup34_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup34 SET countuser = countuser +1 WHERE contactgroup34.id =NEW.contactgroup34_id; SET @a= (Select count(*) from spisokcontactgroupuser34 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =34; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser34_AUPD` AFTER UPDATE ON `spisokcontactgroupuser34` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser34 where state = 0) as y) where id =34;	if OLD.contactgroup34_id is null and NEW.contactgroup34_id is not null then	UPDATE contactgroup34 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser34 where state = 0 and contactgroup34_id = NEW.contactgroup34_id) as y) where id =NEW.contactgroup34_id; end if;	if OLD.contactgroup34_id is not null and NEW.contactgroup34_id is null then	UPDATE contactgroup34 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser34 where state = 0 and contactgroup34_id = OLD.contactgroup34_id) as y) where id =OLD.contactgroup34_id; end if;	if OLD.contactgroup34_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup34 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser34 where state = 0 and contactgroup34_id = OLD.contactgroup34_id) as y) where id =OLD.contactgroup34_id; end if; if OLD.contactgroup34_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup34 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser34 where state = 0 and contactgroup34_id = OLD.contactgroup34_id) as y) where id =OLD.contactgroup34_id; end if; if OLD.contactgroup34_id != NEW.contactgroup34_id then UPDATE contactgroup34 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser34 where state = 0 and contactgroup34_id = OLD.contactgroup34_id) as y) where id =OLD.contactgroup34_id; UPDATE contactgroup34 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser34 where state = 0 and contactgroup34_id = NEW.contactgroup34_id) as y) where id =NEW.contactgroup34_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser34_ADEL` AFTER DELETE ON `spisokcontactgroupuser34` FOR EACH ROW BEGIN if OLD.contactgroup34_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup34 SET countuser = countuser -1 WHERE contactgroup34.id =OLD.contactgroup34_id; SET @a= (Select count(*) from spisokcontactgroupuser34 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =34; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser35`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser35`;
CREATE TABLE `spisokcontactgroupuser35` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup35_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser35_contactgroup351_idx` (`contactgroup35_id`),
  KEY `fk_spisokcontactgroupuser35_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser35_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser35_contactgroup351` FOREIGN KEY (`contactgroup35_id`) REFERENCES `contactgroup35` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser35`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser35` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser35` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser35` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser35_BINS` BEFORE INSERT ON `spisokcontactgroupuser35` FOR EACH ROW BEGIN if NEW.contactgroup35_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup35 SET countuser = countuser +1 WHERE contactgroup35.id =NEW.contactgroup35_id; SET @a= (Select count(*) from spisokcontactgroupuser35 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =35; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser35_AUPD` AFTER UPDATE ON `spisokcontactgroupuser35` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser35 where state = 0) as y) where id =35;	if OLD.contactgroup35_id is null and NEW.contactgroup35_id is not null then	UPDATE contactgroup35 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser35 where state = 0 and contactgroup35_id = NEW.contactgroup35_id) as y) where id =NEW.contactgroup35_id; end if;	if OLD.contactgroup35_id is not null and NEW.contactgroup35_id is null then	UPDATE contactgroup35 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser35 where state = 0 and contactgroup35_id = OLD.contactgroup35_id) as y) where id =OLD.contactgroup35_id; end if;	if OLD.contactgroup35_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup35 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser35 where state = 0 and contactgroup35_id = OLD.contactgroup35_id) as y) where id =OLD.contactgroup35_id; end if; if OLD.contactgroup35_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup35 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser35 where state = 0 and contactgroup35_id = OLD.contactgroup35_id) as y) where id =OLD.contactgroup35_id; end if; if OLD.contactgroup35_id != NEW.contactgroup35_id then UPDATE contactgroup35 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser35 where state = 0 and contactgroup35_id = OLD.contactgroup35_id) as y) where id =OLD.contactgroup35_id; UPDATE contactgroup35 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser35 where state = 0 and contactgroup35_id = NEW.contactgroup35_id) as y) where id =NEW.contactgroup35_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser35_ADEL` AFTER DELETE ON `spisokcontactgroupuser35` FOR EACH ROW BEGIN if OLD.contactgroup35_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup35 SET countuser = countuser -1 WHERE contactgroup35.id =OLD.contactgroup35_id; SET @a= (Select count(*) from spisokcontactgroupuser35 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =35; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser36`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser36`;
CREATE TABLE `spisokcontactgroupuser36` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup36_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser36_contactgroup361_idx` (`contactgroup36_id`),
  KEY `fk_spisokcontactgroupuser36_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser36_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser36_contactgroup361` FOREIGN KEY (`contactgroup36_id`) REFERENCES `contactgroup36` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser36`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser36` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser36` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser36` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser36_BINS` BEFORE INSERT ON `spisokcontactgroupuser36` FOR EACH ROW BEGIN if NEW.contactgroup36_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup36 SET countuser = countuser +1 WHERE contactgroup36.id =NEW.contactgroup36_id; SET @a= (Select count(*) from spisokcontactgroupuser36 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =36; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser36_AUPD` AFTER UPDATE ON `spisokcontactgroupuser36` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser36 where state = 0) as y) where id =36;	if OLD.contactgroup36_id is null and NEW.contactgroup36_id is not null then	UPDATE contactgroup36 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser36 where state = 0 and contactgroup36_id = NEW.contactgroup36_id) as y) where id =NEW.contactgroup36_id; end if;	if OLD.contactgroup36_id is not null and NEW.contactgroup36_id is null then	UPDATE contactgroup36 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser36 where state = 0 and contactgroup36_id = OLD.contactgroup36_id) as y) where id =OLD.contactgroup36_id; end if;	if OLD.contactgroup36_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup36 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser36 where state = 0 and contactgroup36_id = OLD.contactgroup36_id) as y) where id =OLD.contactgroup36_id; end if; if OLD.contactgroup36_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup36 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser36 where state = 0 and contactgroup36_id = OLD.contactgroup36_id) as y) where id =OLD.contactgroup36_id; end if; if OLD.contactgroup36_id != NEW.contactgroup36_id then UPDATE contactgroup36 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser36 where state = 0 and contactgroup36_id = OLD.contactgroup36_id) as y) where id =OLD.contactgroup36_id; UPDATE contactgroup36 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser36 where state = 0 and contactgroup36_id = NEW.contactgroup36_id) as y) where id =NEW.contactgroup36_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser36_ADEL` AFTER DELETE ON `spisokcontactgroupuser36` FOR EACH ROW BEGIN if OLD.contactgroup36_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup36 SET countuser = countuser -1 WHERE contactgroup36.id =OLD.contactgroup36_id; SET @a= (Select count(*) from spisokcontactgroupuser36 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =36; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser37`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser37`;
CREATE TABLE `spisokcontactgroupuser37` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup37_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser37_contactgroup371_idx` (`contactgroup37_id`),
  KEY `fk_spisokcontactgroupuser37_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser37_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser37_contactgroup371` FOREIGN KEY (`contactgroup37_id`) REFERENCES `contactgroup37` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser37`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser37` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser37` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser37` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser37_BINS` BEFORE INSERT ON `spisokcontactgroupuser37` FOR EACH ROW BEGIN if NEW.contactgroup37_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup37 SET countuser = countuser +1 WHERE contactgroup37.id =NEW.contactgroup37_id; SET @a= (Select count(*) from spisokcontactgroupuser37 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =37; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser37_AUPD` AFTER UPDATE ON `spisokcontactgroupuser37` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser37 where state = 0) as y) where id =37;	if OLD.contactgroup37_id is null and NEW.contactgroup37_id is not null then	UPDATE contactgroup37 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser37 where state = 0 and contactgroup37_id = NEW.contactgroup37_id) as y) where id =NEW.contactgroup37_id; end if;	if OLD.contactgroup37_id is not null and NEW.contactgroup37_id is null then	UPDATE contactgroup37 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser37 where state = 0 and contactgroup37_id = OLD.contactgroup37_id) as y) where id =OLD.contactgroup37_id; end if;	if OLD.contactgroup37_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup37 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser37 where state = 0 and contactgroup37_id = OLD.contactgroup37_id) as y) where id =OLD.contactgroup37_id; end if; if OLD.contactgroup37_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup37 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser37 where state = 0 and contactgroup37_id = OLD.contactgroup37_id) as y) where id =OLD.contactgroup37_id; end if; if OLD.contactgroup37_id != NEW.contactgroup37_id then UPDATE contactgroup37 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser37 where state = 0 and contactgroup37_id = OLD.contactgroup37_id) as y) where id =OLD.contactgroup37_id; UPDATE contactgroup37 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser37 where state = 0 and contactgroup37_id = NEW.contactgroup37_id) as y) where id =NEW.contactgroup37_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser37_ADEL` AFTER DELETE ON `spisokcontactgroupuser37` FOR EACH ROW BEGIN if OLD.contactgroup37_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup37 SET countuser = countuser -1 WHERE contactgroup37.id =OLD.contactgroup37_id; SET @a= (Select count(*) from spisokcontactgroupuser37 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =37; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser38`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser38`;
CREATE TABLE `spisokcontactgroupuser38` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup38_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser38_contactgroup381_idx` (`contactgroup38_id`),
  KEY `fk_spisokcontactgroupuser38_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser38_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser38_contactgroup381` FOREIGN KEY (`contactgroup38_id`) REFERENCES `contactgroup38` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser38`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser38` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser38` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser38` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser38_BINS` BEFORE INSERT ON `spisokcontactgroupuser38` FOR EACH ROW BEGIN if NEW.contactgroup38_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup38 SET countuser = countuser +1 WHERE contactgroup38.id =NEW.contactgroup38_id; SET @a= (Select count(*) from spisokcontactgroupuser38 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =38; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser38_AUPD` AFTER UPDATE ON `spisokcontactgroupuser38` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser38 where state = 0) as y) where id =38;	if OLD.contactgroup38_id is null and NEW.contactgroup38_id is not null then	UPDATE contactgroup38 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser38 where state = 0 and contactgroup38_id = NEW.contactgroup38_id) as y) where id =NEW.contactgroup38_id; end if;	if OLD.contactgroup38_id is not null and NEW.contactgroup38_id is null then	UPDATE contactgroup38 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser38 where state = 0 and contactgroup38_id = OLD.contactgroup38_id) as y) where id =OLD.contactgroup38_id; end if;	if OLD.contactgroup38_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup38 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser38 where state = 0 and contactgroup38_id = OLD.contactgroup38_id) as y) where id =OLD.contactgroup38_id; end if; if OLD.contactgroup38_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup38 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser38 where state = 0 and contactgroup38_id = OLD.contactgroup38_id) as y) where id =OLD.contactgroup38_id; end if; if OLD.contactgroup38_id != NEW.contactgroup38_id then UPDATE contactgroup38 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser38 where state = 0 and contactgroup38_id = OLD.contactgroup38_id) as y) where id =OLD.contactgroup38_id; UPDATE contactgroup38 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser38 where state = 0 and contactgroup38_id = NEW.contactgroup38_id) as y) where id =NEW.contactgroup38_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser38_ADEL` AFTER DELETE ON `spisokcontactgroupuser38` FOR EACH ROW BEGIN if OLD.contactgroup38_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup38 SET countuser = countuser -1 WHERE contactgroup38.id =OLD.contactgroup38_id; SET @a= (Select count(*) from spisokcontactgroupuser38 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =38; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser39`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser39`;
CREATE TABLE `spisokcontactgroupuser39` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup39_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser39_contactgroup391_idx` (`contactgroup39_id`),
  KEY `fk_spisokcontactgroupuser39_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser39_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser39_contactgroup391` FOREIGN KEY (`contactgroup39_id`) REFERENCES `contactgroup39` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser39`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser39` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser39` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser39` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser39_BINS` BEFORE INSERT ON `spisokcontactgroupuser39` FOR EACH ROW BEGIN if NEW.contactgroup39_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup39 SET countuser = countuser +1 WHERE contactgroup39.id =NEW.contactgroup39_id; SET @a= (Select count(*) from spisokcontactgroupuser39 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =39; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser39_AUPD` AFTER UPDATE ON `spisokcontactgroupuser39` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser39 where state = 0) as y) where id =39;	if OLD.contactgroup39_id is null and NEW.contactgroup39_id is not null then	UPDATE contactgroup39 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser39 where state = 0 and contactgroup39_id = NEW.contactgroup39_id) as y) where id =NEW.contactgroup39_id; end if;	if OLD.contactgroup39_id is not null and NEW.contactgroup39_id is null then	UPDATE contactgroup39 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser39 where state = 0 and contactgroup39_id = OLD.contactgroup39_id) as y) where id =OLD.contactgroup39_id; end if;	if OLD.contactgroup39_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup39 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser39 where state = 0 and contactgroup39_id = OLD.contactgroup39_id) as y) where id =OLD.contactgroup39_id; end if; if OLD.contactgroup39_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup39 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser39 where state = 0 and contactgroup39_id = OLD.contactgroup39_id) as y) where id =OLD.contactgroup39_id; end if; if OLD.contactgroup39_id != NEW.contactgroup39_id then UPDATE contactgroup39 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser39 where state = 0 and contactgroup39_id = OLD.contactgroup39_id) as y) where id =OLD.contactgroup39_id; UPDATE contactgroup39 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser39 where state = 0 and contactgroup39_id = NEW.contactgroup39_id) as y) where id =NEW.contactgroup39_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser39_ADEL` AFTER DELETE ON `spisokcontactgroupuser39` FOR EACH ROW BEGIN if OLD.contactgroup39_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup39 SET countuser = countuser -1 WHERE contactgroup39.id =OLD.contactgroup39_id; SET @a= (Select count(*) from spisokcontactgroupuser39 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =39; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser4`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser4`;
CREATE TABLE `spisokcontactgroupuser4` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup4_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser4_contactgroup41_idx` (`contactgroup4_id`),
  KEY `fk_spisokcontactgroupuser4_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser4_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser4_contactgroup41` FOREIGN KEY (`contactgroup4_id`) REFERENCES `contactgroup4` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser4`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser4` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser4` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser4` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser4_BINS` BEFORE INSERT ON `spisokcontactgroupuser4` FOR EACH ROW BEGIN if NEW.contactgroup4_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup4 SET countuser = countuser +1 WHERE contactgroup4.id =NEW.contactgroup4_id; SET @a= (Select count(*) from spisokcontactgroupuser4 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =4; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser4_AUPD` AFTER UPDATE ON `spisokcontactgroupuser4` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser4 where state = 0) as y) where id =4;	if OLD.contactgroup4_id is null and NEW.contactgroup4_id is not null then	UPDATE contactgroup4 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser4 where state = 0 and contactgroup4_id = NEW.contactgroup4_id) as y) where id =NEW.contactgroup4_id; end if;	if OLD.contactgroup4_id is not null and NEW.contactgroup4_id is null then	UPDATE contactgroup4 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser4 where state = 0 and contactgroup4_id = OLD.contactgroup4_id) as y) where id =OLD.contactgroup4_id; end if;	if OLD.contactgroup4_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup4 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser4 where state = 0 and contactgroup4_id = OLD.contactgroup4_id) as y) where id =OLD.contactgroup4_id; end if; if OLD.contactgroup4_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup4 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser4 where state = 0 and contactgroup4_id = OLD.contactgroup4_id) as y) where id =OLD.contactgroup4_id; end if; if OLD.contactgroup4_id != NEW.contactgroup4_id then UPDATE contactgroup4 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser4 where state = 0 and contactgroup4_id = OLD.contactgroup4_id) as y) where id =OLD.contactgroup4_id; UPDATE contactgroup4 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser4 where state = 0 and contactgroup4_id = NEW.contactgroup4_id) as y) where id =NEW.contactgroup4_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser4_ADEL` AFTER DELETE ON `spisokcontactgroupuser4` FOR EACH ROW BEGIN if OLD.contactgroup4_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup4 SET countuser = countuser -1 WHERE contactgroup4.id =OLD.contactgroup4_id; SET @a= (Select count(*) from spisokcontactgroupuser4 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =4; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser40`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser40`;
CREATE TABLE `spisokcontactgroupuser40` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup40_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser40_contactgroup401_idx` (`contactgroup40_id`),
  KEY `fk_spisokcontactgroupuser40_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser40_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser40_contactgroup401` FOREIGN KEY (`contactgroup40_id`) REFERENCES `contactgroup40` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser40`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser40` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser40` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser40` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser40_BINS` BEFORE INSERT ON `spisokcontactgroupuser40` FOR EACH ROW BEGIN if NEW.contactgroup40_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup40 SET countuser = countuser +1 WHERE contactgroup40.id =NEW.contactgroup40_id; SET @a= (Select count(*) from spisokcontactgroupuser40 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =40; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser40_AUPD` AFTER UPDATE ON `spisokcontactgroupuser40` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser40 where state = 0) as y) where id =40;	if OLD.contactgroup40_id is null and NEW.contactgroup40_id is not null then	UPDATE contactgroup40 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser40 where state = 0 and contactgroup40_id = NEW.contactgroup40_id) as y) where id =NEW.contactgroup40_id; end if;	if OLD.contactgroup40_id is not null and NEW.contactgroup40_id is null then	UPDATE contactgroup40 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser40 where state = 0 and contactgroup40_id = OLD.contactgroup40_id) as y) where id =OLD.contactgroup40_id; end if;	if OLD.contactgroup40_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup40 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser40 where state = 0 and contactgroup40_id = OLD.contactgroup40_id) as y) where id =OLD.contactgroup40_id; end if; if OLD.contactgroup40_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup40 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser40 where state = 0 and contactgroup40_id = OLD.contactgroup40_id) as y) where id =OLD.contactgroup40_id; end if; if OLD.contactgroup40_id != NEW.contactgroup40_id then UPDATE contactgroup40 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser40 where state = 0 and contactgroup40_id = OLD.contactgroup40_id) as y) where id =OLD.contactgroup40_id; UPDATE contactgroup40 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser40 where state = 0 and contactgroup40_id = NEW.contactgroup40_id) as y) where id =NEW.contactgroup40_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser40_ADEL` AFTER DELETE ON `spisokcontactgroupuser40` FOR EACH ROW BEGIN if OLD.contactgroup40_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup40 SET countuser = countuser -1 WHERE contactgroup40.id =OLD.contactgroup40_id; SET @a= (Select count(*) from spisokcontactgroupuser40 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =40; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser5`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser5`;
CREATE TABLE `spisokcontactgroupuser5` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup5_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser5_contactgroup51_idx` (`contactgroup5_id`),
  KEY `fk_spisokcontactgroupuser5_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser5_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser5_contactgroup51` FOREIGN KEY (`contactgroup5_id`) REFERENCES `contactgroup5` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser5`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser5` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser5` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser5` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser5_BINS` BEFORE INSERT ON `spisokcontactgroupuser5` FOR EACH ROW BEGIN if NEW.contactgroup5_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup5 SET countuser = countuser +1 WHERE contactgroup5.id =NEW.contactgroup5_id; SET @a= (Select count(*) from spisokcontactgroupuser5 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =5; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser5_AUPD` AFTER UPDATE ON `spisokcontactgroupuser5` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser5 where state = 0) as y) where id =5;	if OLD.contactgroup5_id is null and NEW.contactgroup5_id is not null then	UPDATE contactgroup5 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser5 where state = 0 and contactgroup5_id = NEW.contactgroup5_id) as y) where id =NEW.contactgroup5_id; end if;	if OLD.contactgroup5_id is not null and NEW.contactgroup5_id is null then	UPDATE contactgroup5 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser5 where state = 0 and contactgroup5_id = OLD.contactgroup5_id) as y) where id =OLD.contactgroup5_id; end if;	if OLD.contactgroup5_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup5 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser5 where state = 0 and contactgroup5_id = OLD.contactgroup5_id) as y) where id =OLD.contactgroup5_id; end if; if OLD.contactgroup5_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup5 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser5 where state = 0 and contactgroup5_id = OLD.contactgroup5_id) as y) where id =OLD.contactgroup5_id; end if; if OLD.contactgroup5_id != NEW.contactgroup5_id then UPDATE contactgroup5 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser5 where state = 0 and contactgroup5_id = OLD.contactgroup5_id) as y) where id =OLD.contactgroup5_id; UPDATE contactgroup5 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser5 where state = 0 and contactgroup5_id = NEW.contactgroup5_id) as y) where id =NEW.contactgroup5_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser5_ADEL` AFTER DELETE ON `spisokcontactgroupuser5` FOR EACH ROW BEGIN if OLD.contactgroup5_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup5 SET countuser = countuser -1 WHERE contactgroup5.id =OLD.contactgroup5_id; SET @a= (Select count(*) from spisokcontactgroupuser5 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =5; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser6`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser6`;
CREATE TABLE `spisokcontactgroupuser6` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup6_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser6_contactgroup61_idx` (`contactgroup6_id`),
  KEY `fk_spisokcontactgroupuser6_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser6_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser6_contactgroup61` FOREIGN KEY (`contactgroup6_id`) REFERENCES `contactgroup6` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser6`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser6` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser6` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser6` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser6_BINS` BEFORE INSERT ON `spisokcontactgroupuser6` FOR EACH ROW BEGIN if NEW.contactgroup6_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup6 SET countuser = countuser +1 WHERE contactgroup6.id =NEW.contactgroup6_id; SET @a= (Select count(*) from spisokcontactgroupuser6 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =6; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser6_AUPD` AFTER UPDATE ON `spisokcontactgroupuser6` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser6 where state = 0) as y) where id =6;	if OLD.contactgroup6_id is null and NEW.contactgroup6_id is not null then	UPDATE contactgroup6 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser6 where state = 0 and contactgroup6_id = NEW.contactgroup6_id) as y) where id =NEW.contactgroup6_id; end if;	if OLD.contactgroup6_id is not null and NEW.contactgroup6_id is null then	UPDATE contactgroup6 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser6 where state = 0 and contactgroup6_id = OLD.contactgroup6_id) as y) where id =OLD.contactgroup6_id; end if;	if OLD.contactgroup6_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup6 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser6 where state = 0 and contactgroup6_id = OLD.contactgroup6_id) as y) where id =OLD.contactgroup6_id; end if; if OLD.contactgroup6_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup6 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser6 where state = 0 and contactgroup6_id = OLD.contactgroup6_id) as y) where id =OLD.contactgroup6_id; end if; if OLD.contactgroup6_id != NEW.contactgroup6_id then UPDATE contactgroup6 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser6 where state = 0 and contactgroup6_id = OLD.contactgroup6_id) as y) where id =OLD.contactgroup6_id; UPDATE contactgroup6 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser6 where state = 0 and contactgroup6_id = NEW.contactgroup6_id) as y) where id =NEW.contactgroup6_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser6_ADEL` AFTER DELETE ON `spisokcontactgroupuser6` FOR EACH ROW BEGIN if OLD.contactgroup6_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup6 SET countuser = countuser -1 WHERE contactgroup6.id =OLD.contactgroup6_id; SET @a= (Select count(*) from spisokcontactgroupuser6 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =6; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser7`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser7`;
CREATE TABLE `spisokcontactgroupuser7` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup7_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser7_contactgroup71_idx` (`contactgroup7_id`),
  KEY `fk_spisokcontactgroupuser7_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser7_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser7_contactgroup71` FOREIGN KEY (`contactgroup7_id`) REFERENCES `contactgroup7` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser7`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser7` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser7` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser7` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser7_BINS` BEFORE INSERT ON `spisokcontactgroupuser7` FOR EACH ROW BEGIN if NEW.contactgroup7_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup7 SET countuser = countuser +1 WHERE contactgroup7.id =NEW.contactgroup7_id; SET @a= (Select count(*) from spisokcontactgroupuser7 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =7; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser7_AUPD` AFTER UPDATE ON `spisokcontactgroupuser7` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser7 where state = 0) as y) where id =7;	if OLD.contactgroup7_id is null and NEW.contactgroup7_id is not null then	UPDATE contactgroup7 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser7 where state = 0 and contactgroup7_id = NEW.contactgroup7_id) as y) where id =NEW.contactgroup7_id; end if;	if OLD.contactgroup7_id is not null and NEW.contactgroup7_id is null then	UPDATE contactgroup7 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser7 where state = 0 and contactgroup7_id = OLD.contactgroup7_id) as y) where id =OLD.contactgroup7_id; end if;	if OLD.contactgroup7_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup7 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser7 where state = 0 and contactgroup7_id = OLD.contactgroup7_id) as y) where id =OLD.contactgroup7_id; end if; if OLD.contactgroup7_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup7 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser7 where state = 0 and contactgroup7_id = OLD.contactgroup7_id) as y) where id =OLD.contactgroup7_id; end if; if OLD.contactgroup7_id != NEW.contactgroup7_id then UPDATE contactgroup7 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser7 where state = 0 and contactgroup7_id = OLD.contactgroup7_id) as y) where id =OLD.contactgroup7_id; UPDATE contactgroup7 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser7 where state = 0 and contactgroup7_id = NEW.contactgroup7_id) as y) where id =NEW.contactgroup7_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser7_ADEL` AFTER DELETE ON `spisokcontactgroupuser7` FOR EACH ROW BEGIN if OLD.contactgroup7_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup7 SET countuser = countuser -1 WHERE contactgroup7.id =OLD.contactgroup7_id; SET @a= (Select count(*) from spisokcontactgroupuser7 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =7; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser8`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser8`;
CREATE TABLE `spisokcontactgroupuser8` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup8_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser8_contactgroup81_idx` (`contactgroup8_id`),
  KEY `fk_spisokcontactgroupuser8_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser8_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser8_contactgroup81` FOREIGN KEY (`contactgroup8_id`) REFERENCES `contactgroup8` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser8`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser8` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser8` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser8` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser8_BINS` BEFORE INSERT ON `spisokcontactgroupuser8` FOR EACH ROW BEGIN if NEW.contactgroup8_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup8 SET countuser = countuser +1 WHERE contactgroup8.id =NEW.contactgroup8_id; SET @a= (Select count(*) from spisokcontactgroupuser8 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =8; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser8_AUPD` AFTER UPDATE ON `spisokcontactgroupuser8` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser8 where state = 0) as y) where id =8;	if OLD.contactgroup8_id is null and NEW.contactgroup8_id is not null then	UPDATE contactgroup8 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser8 where state = 0 and contactgroup8_id = NEW.contactgroup8_id) as y) where id =NEW.contactgroup8_id; end if;	if OLD.contactgroup8_id is not null and NEW.contactgroup8_id is null then	UPDATE contactgroup8 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser8 where state = 0 and contactgroup8_id = OLD.contactgroup8_id) as y) where id =OLD.contactgroup8_id; end if;	if OLD.contactgroup8_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup8 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser8 where state = 0 and contactgroup8_id = OLD.contactgroup8_id) as y) where id =OLD.contactgroup8_id; end if; if OLD.contactgroup8_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup8 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser8 where state = 0 and contactgroup8_id = OLD.contactgroup8_id) as y) where id =OLD.contactgroup8_id; end if; if OLD.contactgroup8_id != NEW.contactgroup8_id then UPDATE contactgroup8 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser8 where state = 0 and contactgroup8_id = OLD.contactgroup8_id) as y) where id =OLD.contactgroup8_id; UPDATE contactgroup8 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser8 where state = 0 and contactgroup8_id = NEW.contactgroup8_id) as y) where id =NEW.contactgroup8_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser8_ADEL` AFTER DELETE ON `spisokcontactgroupuser8` FOR EACH ROW BEGIN if OLD.contactgroup8_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup8 SET countuser = countuser -1 WHERE contactgroup8.id =OLD.contactgroup8_id; SET @a= (Select count(*) from spisokcontactgroupuser8 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =8; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokcontactgroupuser9`
--

DROP TABLE IF EXISTS `spisokcontactgroupuser9`;
CREATE TABLE `spisokcontactgroupuser9` (
  `iduser` int(10) unsigned NOT NULL,
  `contactgroup9_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisokkontaktgroupuser9_contactgroup91_idx` (`contactgroup9_id`),
  KEY `fk_spisokcontactgroupuser9_profile1_idx` (`iduser`),
  CONSTRAINT `fk_spisokcontactgroupuser9_profile1` FOREIGN KEY (`iduser`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokkontaktgroupuser9_contactgroup91` FOREIGN KEY (`contactgroup9_id`) REFERENCES `contactgroup9` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokcontactgroupuser9`
--


/*!40000 ALTER TABLE `spisokcontactgroupuser9` DISABLE KEYS */;
LOCK TABLES `spisokcontactgroupuser9` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokcontactgroupuser9` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser9_BINS` BEFORE INSERT ON `spisokcontactgroupuser9` FOR EACH ROW BEGIN if NEW.contactgroup9_id IS NOT NULL and NEW.state = 0 then UPDATE contactgroup9 SET countuser = countuser +1 WHERE contactgroup9.id =NEW.contactgroup9_id; SET @a= (Select count(*) from spisokcontactgroupuser9 where iduser = NEW.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact +1 WHERE profile.id =9; END IF;	END IF; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser9_AUPD` AFTER UPDATE ON `spisokcontactgroupuser9` FOR EACH ROW BEGIN UPDATE profile SET countcontact = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser9 where state = 0) as y) where id =9;	if OLD.contactgroup9_id is null and NEW.contactgroup9_id is not null then	UPDATE contactgroup9 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser9 where state = 0 and contactgroup9_id = NEW.contactgroup9_id) as y) where id =NEW.contactgroup9_id; end if;	if OLD.contactgroup9_id is not null and NEW.contactgroup9_id is null then	UPDATE contactgroup9 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser9 where state = 0 and contactgroup9_id = OLD.contactgroup9_id) as y) where id =OLD.contactgroup9_id; end if;	if OLD.contactgroup9_id is not null and OLD.state = 0 and NEW.state != 0  then	UPDATE contactgroup9 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser9 where state = 0 and contactgroup9_id = OLD.contactgroup9_id) as y) where id =OLD.contactgroup9_id; end if; if OLD.contactgroup9_id is not null and OLD.state != 0 and NEW.state = 0  then UPDATE contactgroup9 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser9 where state = 0 and contactgroup9_id = OLD.contactgroup9_id) as y) where id =OLD.contactgroup9_id; end if; if OLD.contactgroup9_id != NEW.contactgroup9_id then UPDATE contactgroup9 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser9 where state = 0 and contactgroup9_id = OLD.contactgroup9_id) as y) where id =OLD.contactgroup9_id; UPDATE contactgroup9 SET countuser = (Select count(*) from (select distinct iduser as x from spisokcontactgroupuser9 where state = 0 and contactgroup9_id = NEW.contactgroup9_id) as y) where id =NEW.contactgroup9_id; end if; END */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `spisokcontactgroupuser9_ADEL` AFTER DELETE ON `spisokcontactgroupuser9` FOR EACH ROW BEGIN if OLD.contactgroup9_id IS NOT NULL and OLD.state = 0 then UPDATE contactgroup9 SET countuser = countuser -1 WHERE contactgroup9.id =OLD.contactgroup9_id; SET @a= (Select count(*) from spisokcontactgroupuser9 where iduser = OLD.iduser); if @a<=0 then UPDATE profile SET countcontact = countcontact -1 WHERE profile.id =9; END IF; END IF; END */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `spisokmessagegroupuser`
--

DROP TABLE IF EXISTS `spisokmessagegroupuser`;
CREATE TABLE `spisokmessagegroupuser` (
  `messagegroup_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  KEY `fk_spisokmessagegroupuser_messagegroup1_idx` (`messagegroup_id`),
  KEY `fk_spisokmessagegroupuser_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisokmessagegroupuser_messagegroup1` FOREIGN KEY (`messagegroup_id`) REFERENCES `messagegroup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokmessagegroupuser_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisokmessagegroupuser`
--


/*!40000 ALTER TABLE `spisokmessagegroupuser` DISABLE KEYS */;
LOCK TABLES `spisokmessagegroupuser` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisokmessagegroupuser` ENABLE KEYS */;

--
-- Table structure for table `spisoknewssystemphoto`
--

DROP TABLE IF EXISTS `spisoknewssystemphoto`;
CREATE TABLE `spisoknewssystemphoto` (
  `systemnews_id` int(10) unsigned NOT NULL,
  `systemphoto_id` int(10) unsigned NOT NULL,
  KEY `fk_spisoknewssystemphoto_systemnews1_idx` (`systemnews_id`),
  KEY `fk_spisoknewssystemphoto_systemphoto1_idx` (`systemphoto_id`),
  CONSTRAINT `fk_spisoknewssystemphoto_systemnews1` FOREIGN KEY (`systemnews_id`) REFERENCES `systemnews` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisoknewssystemphoto_systemphoto1` FOREIGN KEY (`systemphoto_id`) REFERENCES `systemphoto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoknewssystemphoto`
--


/*!40000 ALTER TABLE `spisoknewssystemphoto` DISABLE KEYS */;
LOCK TABLES `spisoknewssystemphoto` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoknewssystemphoto` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber1`
--

DROP TABLE IF EXISTS `spisoksubscriber1`;
CREATE TABLE `spisoksubscriber1` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber1_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber1_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber1`
--


/*!40000 ALTER TABLE `spisoksubscriber1` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber1` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber1` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber10`
--

DROP TABLE IF EXISTS `spisoksubscriber10`;
CREATE TABLE `spisoksubscriber10` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber10_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber10_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber10`
--


/*!40000 ALTER TABLE `spisoksubscriber10` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber10` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber10` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber11`
--

DROP TABLE IF EXISTS `spisoksubscriber11`;
CREATE TABLE `spisoksubscriber11` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber11_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber11_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber11`
--


/*!40000 ALTER TABLE `spisoksubscriber11` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber11` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber11` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber12`
--

DROP TABLE IF EXISTS `spisoksubscriber12`;
CREATE TABLE `spisoksubscriber12` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber12_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber12_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber12`
--


/*!40000 ALTER TABLE `spisoksubscriber12` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber12` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber12` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber13`
--

DROP TABLE IF EXISTS `spisoksubscriber13`;
CREATE TABLE `spisoksubscriber13` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber13_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber13_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber13`
--


/*!40000 ALTER TABLE `spisoksubscriber13` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber13` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber13` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber14`
--

DROP TABLE IF EXISTS `spisoksubscriber14`;
CREATE TABLE `spisoksubscriber14` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber14_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber14_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber14`
--


/*!40000 ALTER TABLE `spisoksubscriber14` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber14` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber14` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber15`
--

DROP TABLE IF EXISTS `spisoksubscriber15`;
CREATE TABLE `spisoksubscriber15` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber15_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber15_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber15`
--


/*!40000 ALTER TABLE `spisoksubscriber15` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber15` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber15` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber16`
--

DROP TABLE IF EXISTS `spisoksubscriber16`;
CREATE TABLE `spisoksubscriber16` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber16_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber16_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber16`
--


/*!40000 ALTER TABLE `spisoksubscriber16` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber16` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber16` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber17`
--

DROP TABLE IF EXISTS `spisoksubscriber17`;
CREATE TABLE `spisoksubscriber17` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber17_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber17_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber17`
--


/*!40000 ALTER TABLE `spisoksubscriber17` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber17` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber17` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber18`
--

DROP TABLE IF EXISTS `spisoksubscriber18`;
CREATE TABLE `spisoksubscriber18` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber18_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber18_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber18`
--


/*!40000 ALTER TABLE `spisoksubscriber18` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber18` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber18` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber19`
--

DROP TABLE IF EXISTS `spisoksubscriber19`;
CREATE TABLE `spisoksubscriber19` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber19_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber19_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber19`
--


/*!40000 ALTER TABLE `spisoksubscriber19` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber19` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber19` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber2`
--

DROP TABLE IF EXISTS `spisoksubscriber2`;
CREATE TABLE `spisoksubscriber2` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber2_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber2_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber2`
--


/*!40000 ALTER TABLE `spisoksubscriber2` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber2` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber2` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber20`
--

DROP TABLE IF EXISTS `spisoksubscriber20`;
CREATE TABLE `spisoksubscriber20` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber20_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber20_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber20`
--


/*!40000 ALTER TABLE `spisoksubscriber20` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber20` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber20` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber21`
--

DROP TABLE IF EXISTS `spisoksubscriber21`;
CREATE TABLE `spisoksubscriber21` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber21_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber21_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber21`
--


/*!40000 ALTER TABLE `spisoksubscriber21` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber21` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber21` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber22`
--

DROP TABLE IF EXISTS `spisoksubscriber22`;
CREATE TABLE `spisoksubscriber22` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber22_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber22_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber22`
--


/*!40000 ALTER TABLE `spisoksubscriber22` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber22` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber22` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber23`
--

DROP TABLE IF EXISTS `spisoksubscriber23`;
CREATE TABLE `spisoksubscriber23` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber23_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber23_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber23`
--


/*!40000 ALTER TABLE `spisoksubscriber23` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber23` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber23` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber24`
--

DROP TABLE IF EXISTS `spisoksubscriber24`;
CREATE TABLE `spisoksubscriber24` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber24_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber24_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber24`
--


/*!40000 ALTER TABLE `spisoksubscriber24` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber24` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber24` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber25`
--

DROP TABLE IF EXISTS `spisoksubscriber25`;
CREATE TABLE `spisoksubscriber25` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber25_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber25_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber25`
--


/*!40000 ALTER TABLE `spisoksubscriber25` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber25` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber25` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber26`
--

DROP TABLE IF EXISTS `spisoksubscriber26`;
CREATE TABLE `spisoksubscriber26` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber26_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber26_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber26`
--


/*!40000 ALTER TABLE `spisoksubscriber26` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber26` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber26` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber27`
--

DROP TABLE IF EXISTS `spisoksubscriber27`;
CREATE TABLE `spisoksubscriber27` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber27_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber27_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber27`
--


/*!40000 ALTER TABLE `spisoksubscriber27` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber27` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber27` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber28`
--

DROP TABLE IF EXISTS `spisoksubscriber28`;
CREATE TABLE `spisoksubscriber28` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber28_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber28_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber28`
--


/*!40000 ALTER TABLE `spisoksubscriber28` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber28` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber28` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber29`
--

DROP TABLE IF EXISTS `spisoksubscriber29`;
CREATE TABLE `spisoksubscriber29` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber29_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber29_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber29`
--


/*!40000 ALTER TABLE `spisoksubscriber29` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber29` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber29` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber3`
--

DROP TABLE IF EXISTS `spisoksubscriber3`;
CREATE TABLE `spisoksubscriber3` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber3_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber3_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber3`
--


/*!40000 ALTER TABLE `spisoksubscriber3` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber3` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber3` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber30`
--

DROP TABLE IF EXISTS `spisoksubscriber30`;
CREATE TABLE `spisoksubscriber30` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber30_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber30_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber30`
--


/*!40000 ALTER TABLE `spisoksubscriber30` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber30` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber30` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber31`
--

DROP TABLE IF EXISTS `spisoksubscriber31`;
CREATE TABLE `spisoksubscriber31` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber31_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber31_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber31`
--


/*!40000 ALTER TABLE `spisoksubscriber31` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber31` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber31` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber32`
--

DROP TABLE IF EXISTS `spisoksubscriber32`;
CREATE TABLE `spisoksubscriber32` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber32_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber32_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber32`
--


/*!40000 ALTER TABLE `spisoksubscriber32` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber32` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber32` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber33`
--

DROP TABLE IF EXISTS `spisoksubscriber33`;
CREATE TABLE `spisoksubscriber33` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber33_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber33_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber33`
--


/*!40000 ALTER TABLE `spisoksubscriber33` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber33` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber33` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber34`
--

DROP TABLE IF EXISTS `spisoksubscriber34`;
CREATE TABLE `spisoksubscriber34` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber34_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber34_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber34`
--


/*!40000 ALTER TABLE `spisoksubscriber34` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber34` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber34` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber35`
--

DROP TABLE IF EXISTS `spisoksubscriber35`;
CREATE TABLE `spisoksubscriber35` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber35_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber35_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber35`
--


/*!40000 ALTER TABLE `spisoksubscriber35` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber35` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber35` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber36`
--

DROP TABLE IF EXISTS `spisoksubscriber36`;
CREATE TABLE `spisoksubscriber36` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber36_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber36_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber36`
--


/*!40000 ALTER TABLE `spisoksubscriber36` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber36` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber36` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber37`
--

DROP TABLE IF EXISTS `spisoksubscriber37`;
CREATE TABLE `spisoksubscriber37` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber37_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber37_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber37`
--


/*!40000 ALTER TABLE `spisoksubscriber37` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber37` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber37` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber38`
--

DROP TABLE IF EXISTS `spisoksubscriber38`;
CREATE TABLE `spisoksubscriber38` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber38_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber38_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber38`
--


/*!40000 ALTER TABLE `spisoksubscriber38` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber38` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber38` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber39`
--

DROP TABLE IF EXISTS `spisoksubscriber39`;
CREATE TABLE `spisoksubscriber39` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber39_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber39_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber39`
--


/*!40000 ALTER TABLE `spisoksubscriber39` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber39` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber39` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber4`
--

DROP TABLE IF EXISTS `spisoksubscriber4`;
CREATE TABLE `spisoksubscriber4` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber4_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber4_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber4`
--


/*!40000 ALTER TABLE `spisoksubscriber4` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber4` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber4` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber40`
--

DROP TABLE IF EXISTS `spisoksubscriber40`;
CREATE TABLE `spisoksubscriber40` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber40_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber40_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber40`
--


/*!40000 ALTER TABLE `spisoksubscriber40` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber40` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber40` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber5`
--

DROP TABLE IF EXISTS `spisoksubscriber5`;
CREATE TABLE `spisoksubscriber5` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber5_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber5_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber5`
--


/*!40000 ALTER TABLE `spisoksubscriber5` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber5` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber5` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber6`
--

DROP TABLE IF EXISTS `spisoksubscriber6`;
CREATE TABLE `spisoksubscriber6` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber6_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber6_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber6`
--


/*!40000 ALTER TABLE `spisoksubscriber6` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber6` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber6` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber7`
--

DROP TABLE IF EXISTS `spisoksubscriber7`;
CREATE TABLE `spisoksubscriber7` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber7_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber7_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber7`
--


/*!40000 ALTER TABLE `spisoksubscriber7` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber7` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber7` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber8`
--

DROP TABLE IF EXISTS `spisoksubscriber8`;
CREATE TABLE `spisoksubscriber8` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber8_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber8_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber8`
--


/*!40000 ALTER TABLE `spisoksubscriber8` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber8` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber8` ENABLE KEYS */;

--
-- Table structure for table `spisoksubscriber9`
--

DROP TABLE IF EXISTS `spisoksubscriber9`;
CREATE TABLE `spisoksubscriber9` (
  `profile_id` int(10) unsigned NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `pathavatar` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  KEY `fk_spisoksubscriber9_profile1_idx` (`profile_id`),
  CONSTRAINT `fk_spisoksubscriber9_profile1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spisoksubscriber9`
--


/*!40000 ALTER TABLE `spisoksubscriber9` DISABLE KEYS */;
LOCK TABLES `spisoksubscriber9` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spisoksubscriber9` ENABLE KEYS */;

--
-- Table structure for table `systemhandband`
--

DROP TABLE IF EXISTS `systemhandband`;
CREATE TABLE `systemhandband` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idsystemhandband_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `systemhandband`
--


/*!40000 ALTER TABLE `systemhandband` DISABLE KEYS */;
LOCK TABLES `systemhandband` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `systemhandband` ENABLE KEYS */;

--
-- Table structure for table `systemnews`
--

DROP TABLE IF EXISTS `systemnews`;
CREATE TABLE `systemnews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `text` text NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `systemnews`
--


/*!40000 ALTER TABLE `systemnews` DISABLE KEYS */;
LOCK TABLES `systemnews` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `systemnews` ENABLE KEYS */;

--
-- Table structure for table `systemphoto`
--

DROP TABLE IF EXISTS `systemphoto`;
CREATE TABLE `systemphoto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photopath` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `systemphoto`
--


/*!40000 ALTER TABLE `systemphoto` DISABLE KEYS */;
LOCK TABLES `systemphoto` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `systemphoto` ENABLE KEYS */;

--
-- Table structure for table `wall1`
--

DROP TABLE IF EXISTS `wall1`;
CREATE TABLE `wall1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall1_wall11_idx` (`extension`),
  CONSTRAINT `fk_wall1_wall11` FOREIGN KEY (`extension`) REFERENCES `wall1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall1`
--


/*!40000 ALTER TABLE `wall1` DISABLE KEYS */;
LOCK TABLES `wall1` WRITE;
INSERT INTO `wall1` VALUES (1,'wefg','2013-05-29 13:15:41',1,0,0,NULL),(2,'пфпкфуп','2013-05-29 15:32:26',1,0,2,NULL),(3,'пфпкфуп','2013-05-29 15:32:36',1,0,0,NULL),(4,'пфпкфуп','2013-05-29 15:32:38',1,0,0,NULL),(5,'пфпкфуп','2013-05-29 15:32:39',1,0,0,NULL),(6,'пфпкфуп','2013-05-29 15:32:40',1,0,0,NULL),(7,'пфпкфуп','2013-05-29 15:32:41',1,0,0,NULL),(8,'пфпкфуп','2013-05-29 15:32:43',1,0,0,NULL),(9,'пфпкфуп','2013-05-29 15:32:45',1,0,0,NULL),(10,'м','2013-05-29 15:32:46',1,0,0,NULL),(11,'пфпкфуп','2013-05-29 15:32:48',1,0,0,NULL),(12,'пфпкфуп','2013-05-29 15:32:49',1,0,0,NULL),(13,'м','2013-05-29 15:32:51',1,0,0,NULL),(14,'пфпкфуппфпкфуппфпкфуп','2013-05-29 15:32:54',1,0,0,NULL),(15,'пфпкфуп','2013-05-29 15:32:55',1,0,0,NULL),(16,'пфпкфуп','2013-05-29 15:32:56',1,0,0,NULL),(17,'пфпкфуп','2013-05-29 15:32:57',1,0,0,NULL),(18,'пфпкфуп','2013-05-29 15:32:58',1,0,0,NULL),(19,'пфпкфуп','2013-05-29 15:32:59',1,0,0,NULL),(20,'пфпкфуп','2013-05-29 15:33:00',1,0,0,NULL),(21,'пфпкфуп','2013-05-29 15:33:01',1,0,0,NULL),(22,'пфпкфуп','2013-05-29 15:33:02',1,0,0,NULL),(23,'пфпкфуп','2013-05-29 15:33:03',1,0,0,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall1` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall1_AINS` AFTER INSERT ON `wall1` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '1' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '1';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '1' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '1';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall1_ADEL` AFTER DELETE ON `wall1` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '1' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '1';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '1' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '1'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall10`
--

DROP TABLE IF EXISTS `wall10`;
CREATE TABLE `wall10` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall10_wall101_idx` (`extension`),
  CONSTRAINT `fk_wall10_wall101` FOREIGN KEY (`extension`) REFERENCES `wall10` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall10`
--


/*!40000 ALTER TABLE `wall10` DISABLE KEYS */;
LOCK TABLES `wall10` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall10` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall10_AINS` AFTER INSERT ON `wall10` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '10' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '10';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '10' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '10';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall10_ADEL` AFTER DELETE ON `wall10` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '10' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '10';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '10' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '10'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall11`
--

DROP TABLE IF EXISTS `wall11`;
CREATE TABLE `wall11` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall11_wall111_idx` (`extension`),
  CONSTRAINT `fk_wall11_wall111` FOREIGN KEY (`extension`) REFERENCES `wall11` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall11`
--


/*!40000 ALTER TABLE `wall11` DISABLE KEYS */;
LOCK TABLES `wall11` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall11` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall11_AINS` AFTER INSERT ON `wall11` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '11' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '11';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '11' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '11';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall11_ADEL` AFTER DELETE ON `wall11` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '11' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '11';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '11' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '11'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall12`
--

DROP TABLE IF EXISTS `wall12`;
CREATE TABLE `wall12` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall12_wall121_idx` (`extension`),
  CONSTRAINT `fk_wall12_wall121` FOREIGN KEY (`extension`) REFERENCES `wall12` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall12`
--


/*!40000 ALTER TABLE `wall12` DISABLE KEYS */;
LOCK TABLES `wall12` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall12` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall12_AINS` AFTER INSERT ON `wall12` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '12' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '12';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '12' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '12';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall12_ADEL` AFTER DELETE ON `wall12` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '12' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '12';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '12' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '12'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall13`
--

DROP TABLE IF EXISTS `wall13`;
CREATE TABLE `wall13` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall13_wall131_idx` (`extension`),
  CONSTRAINT `fk_wall13_wall131` FOREIGN KEY (`extension`) REFERENCES `wall13` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall13`
--


/*!40000 ALTER TABLE `wall13` DISABLE KEYS */;
LOCK TABLES `wall13` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall13` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall13_AINS` AFTER INSERT ON `wall13` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '13' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '13';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '13' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '13';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall13_ADEL` AFTER DELETE ON `wall13` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '13' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '13';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '13' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '13'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall14`
--

DROP TABLE IF EXISTS `wall14`;
CREATE TABLE `wall14` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall14_wall141_idx` (`extension`),
  CONSTRAINT `fk_wall14_wall141` FOREIGN KEY (`extension`) REFERENCES `wall14` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall14`
--


/*!40000 ALTER TABLE `wall14` DISABLE KEYS */;
LOCK TABLES `wall14` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall14` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall14_AINS` AFTER INSERT ON `wall14` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '14' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '14';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '14' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '14';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall14_ADEL` AFTER DELETE ON `wall14` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '14' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '14';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '14' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '14'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall15`
--

DROP TABLE IF EXISTS `wall15`;
CREATE TABLE `wall15` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall15_wall151_idx` (`extension`),
  CONSTRAINT `fk_wall15_wall151` FOREIGN KEY (`extension`) REFERENCES `wall15` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall15`
--


/*!40000 ALTER TABLE `wall15` DISABLE KEYS */;
LOCK TABLES `wall15` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall15` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall15_AINS` AFTER INSERT ON `wall15` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '15' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '15';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '15' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '15';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall15_ADEL` AFTER DELETE ON `wall15` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '15' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '15';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '15' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '15'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall16`
--

DROP TABLE IF EXISTS `wall16`;
CREATE TABLE `wall16` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall16_wall161_idx` (`extension`),
  CONSTRAINT `fk_wall16_wall161` FOREIGN KEY (`extension`) REFERENCES `wall16` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall16`
--


/*!40000 ALTER TABLE `wall16` DISABLE KEYS */;
LOCK TABLES `wall16` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall16` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall16_AINS` AFTER INSERT ON `wall16` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '16' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '16';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '16' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '16';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall16_ADEL` AFTER DELETE ON `wall16` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '16' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '16';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '16' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '16'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall17`
--

DROP TABLE IF EXISTS `wall17`;
CREATE TABLE `wall17` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall17_wall171_idx` (`extension`),
  CONSTRAINT `fk_wall17_wall171` FOREIGN KEY (`extension`) REFERENCES `wall17` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall17`
--


/*!40000 ALTER TABLE `wall17` DISABLE KEYS */;
LOCK TABLES `wall17` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall17` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall17_AINS` AFTER INSERT ON `wall17` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '17' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '17';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '17' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '17';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall17_ADEL` AFTER DELETE ON `wall17` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '17' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '17';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '17' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '17'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall18`
--

DROP TABLE IF EXISTS `wall18`;
CREATE TABLE `wall18` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall18_wall181_idx` (`extension`),
  CONSTRAINT `fk_wall18_wall181` FOREIGN KEY (`extension`) REFERENCES `wall18` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall18`
--


/*!40000 ALTER TABLE `wall18` DISABLE KEYS */;
LOCK TABLES `wall18` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall18` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall18_AINS` AFTER INSERT ON `wall18` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '18' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '18';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '18' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '18';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall18_ADEL` AFTER DELETE ON `wall18` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '18' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '18';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '18' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '18'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall19`
--

DROP TABLE IF EXISTS `wall19`;
CREATE TABLE `wall19` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall19_wall191_idx` (`extension`),
  CONSTRAINT `fk_wall19_wall191` FOREIGN KEY (`extension`) REFERENCES `wall19` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall19`
--


/*!40000 ALTER TABLE `wall19` DISABLE KEYS */;
LOCK TABLES `wall19` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall19` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall19_AINS` AFTER INSERT ON `wall19` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '19' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '19';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '19' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '19';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall19_ADEL` AFTER DELETE ON `wall19` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '19' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '19';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '19' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '19'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall2`
--

DROP TABLE IF EXISTS `wall2`;
CREATE TABLE `wall2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall2_wall21_idx` (`extension`),
  CONSTRAINT `fk_wall2_wall21` FOREIGN KEY (`extension`) REFERENCES `wall2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall2`
--


/*!40000 ALTER TABLE `wall2` DISABLE KEYS */;
LOCK TABLES `wall2` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall2` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall2_AINS` AFTER INSERT ON `wall2` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '2' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '2';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '2' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '2';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall2_ADEL` AFTER DELETE ON `wall2` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '2' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '2';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '2' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '2'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall20`
--

DROP TABLE IF EXISTS `wall20`;
CREATE TABLE `wall20` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall20_wall201_idx` (`extension`),
  CONSTRAINT `fk_wall20_wall201` FOREIGN KEY (`extension`) REFERENCES `wall20` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall20`
--


/*!40000 ALTER TABLE `wall20` DISABLE KEYS */;
LOCK TABLES `wall20` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall20` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall20_AINS` AFTER INSERT ON `wall20` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '20' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '20';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '20' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '20';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall20_ADEL` AFTER DELETE ON `wall20` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '20' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '20';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '20' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '20'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall21`
--

DROP TABLE IF EXISTS `wall21`;
CREATE TABLE `wall21` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall21_wall211_idx` (`extension`),
  CONSTRAINT `fk_wall21_wall211` FOREIGN KEY (`extension`) REFERENCES `wall21` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall21`
--


/*!40000 ALTER TABLE `wall21` DISABLE KEYS */;
LOCK TABLES `wall21` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall21` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall21_AINS` AFTER INSERT ON `wall21` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '21' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '21';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '21' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '21';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall21_ADEL` AFTER DELETE ON `wall21` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '21' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '21';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '21' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '21'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall22`
--

DROP TABLE IF EXISTS `wall22`;
CREATE TABLE `wall22` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall22_wall221_idx` (`extension`),
  CONSTRAINT `fk_wall22_wall221` FOREIGN KEY (`extension`) REFERENCES `wall22` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall22`
--


/*!40000 ALTER TABLE `wall22` DISABLE KEYS */;
LOCK TABLES `wall22` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall22` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall22_AINS` AFTER INSERT ON `wall22` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '22' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '22';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '22' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '22';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall22_ADEL` AFTER DELETE ON `wall22` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '22' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '22';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '22' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '22'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall23`
--

DROP TABLE IF EXISTS `wall23`;
CREATE TABLE `wall23` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall23_wall231_idx` (`extension`),
  CONSTRAINT `fk_wall23_wall231` FOREIGN KEY (`extension`) REFERENCES `wall23` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall23`
--


/*!40000 ALTER TABLE `wall23` DISABLE KEYS */;
LOCK TABLES `wall23` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall23` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall23_AINS` AFTER INSERT ON `wall23` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '23' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '23';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '23' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '23';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall23_ADEL` AFTER DELETE ON `wall23` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '23' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '23';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '23' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '23'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall24`
--

DROP TABLE IF EXISTS `wall24`;
CREATE TABLE `wall24` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall24_wall241_idx` (`extension`),
  CONSTRAINT `fk_wall24_wall241` FOREIGN KEY (`extension`) REFERENCES `wall24` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall24`
--


/*!40000 ALTER TABLE `wall24` DISABLE KEYS */;
LOCK TABLES `wall24` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall24` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall24_AINS` AFTER INSERT ON `wall24` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '24' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '24';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '24' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '24';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall24_ADEL` AFTER DELETE ON `wall24` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '24' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '24';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '24' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '24'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall25`
--

DROP TABLE IF EXISTS `wall25`;
CREATE TABLE `wall25` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall25_wall251_idx` (`extension`),
  CONSTRAINT `fk_wall25_wall251` FOREIGN KEY (`extension`) REFERENCES `wall25` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall25`
--


/*!40000 ALTER TABLE `wall25` DISABLE KEYS */;
LOCK TABLES `wall25` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall25` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall25_AINS` AFTER INSERT ON `wall25` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '25' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '25';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '25' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '25';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall25_ADEL` AFTER DELETE ON `wall25` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '25' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '25';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '25' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '25'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall26`
--

DROP TABLE IF EXISTS `wall26`;
CREATE TABLE `wall26` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall26_wall261_idx` (`extension`),
  CONSTRAINT `fk_wall26_wall261` FOREIGN KEY (`extension`) REFERENCES `wall26` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall26`
--


/*!40000 ALTER TABLE `wall26` DISABLE KEYS */;
LOCK TABLES `wall26` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall26` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall26_AINS` AFTER INSERT ON `wall26` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '26' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '26';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '26' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '26';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall26_ADEL` AFTER DELETE ON `wall26` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '26' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '26';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '26' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '26'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall27`
--

DROP TABLE IF EXISTS `wall27`;
CREATE TABLE `wall27` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall27_wall271_idx` (`extension`),
  CONSTRAINT `fk_wall27_wall271` FOREIGN KEY (`extension`) REFERENCES `wall27` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall27`
--


/*!40000 ALTER TABLE `wall27` DISABLE KEYS */;
LOCK TABLES `wall27` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall27` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall27_AINS` AFTER INSERT ON `wall27` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '27' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '27';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '27' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '27';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall27_ADEL` AFTER DELETE ON `wall27` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '27' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '27';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '27' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '27'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall28`
--

DROP TABLE IF EXISTS `wall28`;
CREATE TABLE `wall28` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall28_wall281_idx` (`extension`),
  CONSTRAINT `fk_wall28_wall281` FOREIGN KEY (`extension`) REFERENCES `wall28` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall28`
--


/*!40000 ALTER TABLE `wall28` DISABLE KEYS */;
LOCK TABLES `wall28` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall28` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall28_AINS` AFTER INSERT ON `wall28` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '28' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '28';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '28' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '28';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall28_ADEL` AFTER DELETE ON `wall28` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '28' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '28';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '28' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '28'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall29`
--

DROP TABLE IF EXISTS `wall29`;
CREATE TABLE `wall29` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall29_wall291_idx` (`extension`),
  CONSTRAINT `fk_wall29_wall291` FOREIGN KEY (`extension`) REFERENCES `wall29` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall29`
--


/*!40000 ALTER TABLE `wall29` DISABLE KEYS */;
LOCK TABLES `wall29` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall29` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall29_AINS` AFTER INSERT ON `wall29` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '29' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '29';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '29' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '29';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall29_ADEL` AFTER DELETE ON `wall29` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '29' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '29';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '29' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '29'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall3`
--

DROP TABLE IF EXISTS `wall3`;
CREATE TABLE `wall3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall3_wall31_idx` (`extension`),
  CONSTRAINT `fk_wall3_wall31` FOREIGN KEY (`extension`) REFERENCES `wall3` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall3`
--


/*!40000 ALTER TABLE `wall3` DISABLE KEYS */;
LOCK TABLES `wall3` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall3` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall3_AINS` AFTER INSERT ON `wall3` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '3' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '3';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '3' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '3';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall3_ADEL` AFTER DELETE ON `wall3` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '3' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '3';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '3' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '3'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall30`
--

DROP TABLE IF EXISTS `wall30`;
CREATE TABLE `wall30` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall30_wall301_idx` (`extension`),
  CONSTRAINT `fk_wall30_wall301` FOREIGN KEY (`extension`) REFERENCES `wall30` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall30`
--


/*!40000 ALTER TABLE `wall30` DISABLE KEYS */;
LOCK TABLES `wall30` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall30` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall30_AINS` AFTER INSERT ON `wall30` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '30' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '30';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '30' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '30';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall30_ADEL` AFTER DELETE ON `wall30` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '30' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '30';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '30' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '30'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall31`
--

DROP TABLE IF EXISTS `wall31`;
CREATE TABLE `wall31` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall31_wall311_idx` (`extension`),
  CONSTRAINT `fk_wall31_wall311` FOREIGN KEY (`extension`) REFERENCES `wall31` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall31`
--


/*!40000 ALTER TABLE `wall31` DISABLE KEYS */;
LOCK TABLES `wall31` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall31` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall31_AINS` AFTER INSERT ON `wall31` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '31' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '31';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '31' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '31';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall31_ADEL` AFTER DELETE ON `wall31` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '31' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '31';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '31' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '31'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall32`
--

DROP TABLE IF EXISTS `wall32`;
CREATE TABLE `wall32` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall32_wall321_idx` (`extension`),
  CONSTRAINT `fk_wall32_wall321` FOREIGN KEY (`extension`) REFERENCES `wall32` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall32`
--


/*!40000 ALTER TABLE `wall32` DISABLE KEYS */;
LOCK TABLES `wall32` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall32` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall32_AINS` AFTER INSERT ON `wall32` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '32' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '32';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '32' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '32';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall32_ADEL` AFTER DELETE ON `wall32` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '32' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '32';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '32' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '32'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall33`
--

DROP TABLE IF EXISTS `wall33`;
CREATE TABLE `wall33` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall33_wall331_idx` (`extension`),
  CONSTRAINT `fk_wall33_wall331` FOREIGN KEY (`extension`) REFERENCES `wall33` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall33`
--


/*!40000 ALTER TABLE `wall33` DISABLE KEYS */;
LOCK TABLES `wall33` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall33` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall33_AINS` AFTER INSERT ON `wall33` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '33' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '33';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '33' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '33';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall33_ADEL` AFTER DELETE ON `wall33` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '33' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '33';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '33' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '33'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall34`
--

DROP TABLE IF EXISTS `wall34`;
CREATE TABLE `wall34` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall34_wall341_idx` (`extension`),
  CONSTRAINT `fk_wall34_wall341` FOREIGN KEY (`extension`) REFERENCES `wall34` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall34`
--


/*!40000 ALTER TABLE `wall34` DISABLE KEYS */;
LOCK TABLES `wall34` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall34` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall34_AINS` AFTER INSERT ON `wall34` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '34' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '34';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '34' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '34';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall34_ADEL` AFTER DELETE ON `wall34` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '34' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '34';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '34' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '34'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall35`
--

DROP TABLE IF EXISTS `wall35`;
CREATE TABLE `wall35` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall35_wall351_idx` (`extension`),
  CONSTRAINT `fk_wall35_wall351` FOREIGN KEY (`extension`) REFERENCES `wall35` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall35`
--


/*!40000 ALTER TABLE `wall35` DISABLE KEYS */;
LOCK TABLES `wall35` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall35` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall35_AINS` AFTER INSERT ON `wall35` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '35' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '35';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '35' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '35';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall35_ADEL` AFTER DELETE ON `wall35` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '35' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '35';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '35' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '35'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall36`
--

DROP TABLE IF EXISTS `wall36`;
CREATE TABLE `wall36` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall36_wall361_idx` (`extension`),
  CONSTRAINT `fk_wall36_wall361` FOREIGN KEY (`extension`) REFERENCES `wall36` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall36`
--


/*!40000 ALTER TABLE `wall36` DISABLE KEYS */;
LOCK TABLES `wall36` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall36` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall36_AINS` AFTER INSERT ON `wall36` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '36' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '36';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '36' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '36';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall36_ADEL` AFTER DELETE ON `wall36` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '36' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '36';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '36' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '36'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall37`
--

DROP TABLE IF EXISTS `wall37`;
CREATE TABLE `wall37` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall37_wall371_idx` (`extension`),
  CONSTRAINT `fk_wall37_wall371` FOREIGN KEY (`extension`) REFERENCES `wall37` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall37`
--


/*!40000 ALTER TABLE `wall37` DISABLE KEYS */;
LOCK TABLES `wall37` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall37` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall37_AINS` AFTER INSERT ON `wall37` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '37' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '37';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '37' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '37';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall37_ADEL` AFTER DELETE ON `wall37` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '37' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '37';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '37' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '37'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall38`
--

DROP TABLE IF EXISTS `wall38`;
CREATE TABLE `wall38` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall38_wall381_idx` (`extension`),
  CONSTRAINT `fk_wall38_wall381` FOREIGN KEY (`extension`) REFERENCES `wall38` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall38`
--


/*!40000 ALTER TABLE `wall38` DISABLE KEYS */;
LOCK TABLES `wall38` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall38` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall38_AINS` AFTER INSERT ON `wall38` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '38' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '38';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '38' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '38';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall38_ADEL` AFTER DELETE ON `wall38` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '38' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '38';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '38' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '38'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall39`
--

DROP TABLE IF EXISTS `wall39`;
CREATE TABLE `wall39` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall39_wall391_idx` (`extension`),
  CONSTRAINT `fk_wall39_wall391` FOREIGN KEY (`extension`) REFERENCES `wall39` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall39`
--


/*!40000 ALTER TABLE `wall39` DISABLE KEYS */;
LOCK TABLES `wall39` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall39` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall39_AINS` AFTER INSERT ON `wall39` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '39' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '39';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '39' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '39';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall39_ADEL` AFTER DELETE ON `wall39` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '39' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '39';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '39' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '39'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall4`
--

DROP TABLE IF EXISTS `wall4`;
CREATE TABLE `wall4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall4_wall41_idx` (`extension`),
  CONSTRAINT `fk_wall4_wall41` FOREIGN KEY (`extension`) REFERENCES `wall4` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall4`
--


/*!40000 ALTER TABLE `wall4` DISABLE KEYS */;
LOCK TABLES `wall4` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall4` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall4_AINS` AFTER INSERT ON `wall4` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '4' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '4';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '4' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '4';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall4_ADEL` AFTER DELETE ON `wall4` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '4' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '4';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '4' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '4'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall40`
--

DROP TABLE IF EXISTS `wall40`;
CREATE TABLE `wall40` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall40_wall401_idx` (`extension`),
  CONSTRAINT `fk_wall40_wall401` FOREIGN KEY (`extension`) REFERENCES `wall40` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall40`
--


/*!40000 ALTER TABLE `wall40` DISABLE KEYS */;
LOCK TABLES `wall40` WRITE;
INSERT INTO `wall40` VALUES (1,'1','2013-05-29 15:33:10',1,0,0,NULL),(2,'2','2013-05-29 15:33:11',1,0,0,NULL),(3,'3','2013-05-29 15:33:12',1,0,0,NULL),(4,'4','2013-05-29 15:33:13',1,0,0,NULL),(5,'5','2013-05-29 15:33:14',1,0,0,NULL),(6,'6','2013-05-29 15:33:15',1,0,0,NULL),(7,'7','2013-05-29 15:33:16',1,0,0,NULL),(8,'8','2013-05-29 15:33:18',1,0,0,NULL),(9,'9','2013-05-29 15:33:20',1,0,0,NULL),(10,'10','2013-05-29 15:33:21',1,0,0,NULL),(11,'11','2013-05-29 15:33:22',1,0,0,NULL),(12,'12','2013-05-29 15:33:23',1,0,0,NULL),(13,'13','2013-05-29 15:33:24',1,0,0,NULL),(14,'14','2013-05-29 15:33:25',1,0,0,NULL),(15,'15','2013-05-29 15:33:26',1,0,0,NULL),(16,'16','2013-05-29 15:33:27',1,0,0,NULL),(17,'17','2013-05-29 15:33:29',1,0,0,NULL),(18,'18','2013-05-29 15:33:30',1,0,0,NULL),(19,'19','2013-05-29 15:33:31',1,0,0,NULL),(20,'20','2013-05-29 15:33:32',1,0,0,NULL),(21,'21','2013-05-29 15:33:33',1,0,0,NULL),(22,'22','2013-05-29 15:33:34',1,0,0,NULL),(23,'23','2013-05-29 15:33:35',1,0,0,NULL),(24,'24','2013-05-29 15:33:37',1,2,0,NULL),(25,'25','2013-05-30 07:33:04',5,0,2,NULL),(26,'26','2013-05-30 07:33:08',5,0,0,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall40` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall40_AINS` AFTER INSERT ON `wall40` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '40' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '40';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '40' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '40';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall40_ADEL` AFTER DELETE ON `wall40` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '40' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '40';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '40' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '40'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall5`
--

DROP TABLE IF EXISTS `wall5`;
CREATE TABLE `wall5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall5_wall51_idx` (`extension`),
  CONSTRAINT `fk_wall5_wall51` FOREIGN KEY (`extension`) REFERENCES `wall5` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall5`
--


/*!40000 ALTER TABLE `wall5` DISABLE KEYS */;
LOCK TABLES `wall5` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall5` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall5_AINS` AFTER INSERT ON `wall5` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '5' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '5';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '5' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '5';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall5_ADEL` AFTER DELETE ON `wall5` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '5' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '5';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '5' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '5'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall6`
--

DROP TABLE IF EXISTS `wall6`;
CREATE TABLE `wall6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall6_wall61_idx` (`extension`),
  CONSTRAINT `fk_wall6_wall61` FOREIGN KEY (`extension`) REFERENCES `wall6` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall6`
--


/*!40000 ALTER TABLE `wall6` DISABLE KEYS */;
LOCK TABLES `wall6` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall6` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall6_AINS` AFTER INSERT ON `wall6` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '6' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '6';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '6' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '6';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall6_ADEL` AFTER DELETE ON `wall6` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '6' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '6';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '6' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '6'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall7`
--

DROP TABLE IF EXISTS `wall7`;
CREATE TABLE `wall7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall7_wall71_idx` (`extension`),
  CONSTRAINT `fk_wall7_wall71` FOREIGN KEY (`extension`) REFERENCES `wall7` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall7`
--


/*!40000 ALTER TABLE `wall7` DISABLE KEYS */;
LOCK TABLES `wall7` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall7` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall7_AINS` AFTER INSERT ON `wall7` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '7' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '7';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '7' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '7';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall7_ADEL` AFTER DELETE ON `wall7` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '7' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '7';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '7' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '7'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall8`
--

DROP TABLE IF EXISTS `wall8`;
CREATE TABLE `wall8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall8_wall81_idx` (`extension`),
  CONSTRAINT `fk_wall8_wall81` FOREIGN KEY (`extension`) REFERENCES `wall8` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall8`
--


/*!40000 ALTER TABLE `wall8` DISABLE KEYS */;
LOCK TABLES `wall8` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall8` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall8_AINS` AFTER INSERT ON `wall8` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '8' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '8';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '8' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '8';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall8_ADEL` AFTER DELETE ON `wall8` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '8' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '8';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '8' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '8'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;

--
-- Table structure for table `wall9`
--

DROP TABLE IF EXISTS `wall9`;
CREATE TABLE `wall9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  `idauthor` int(10) unsigned NOT NULL,
  `countlike` int(10) unsigned NOT NULL DEFAULT '0',
  `countcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_wall9_wall91_idx` (`extension`),
  CONSTRAINT `fk_wall9_wall91` FOREIGN KEY (`extension`) REFERENCES `wall9` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall9`
--


/*!40000 ALTER TABLE `wall9` DISABLE KEYS */;
LOCK TABLES `wall9` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wall9` ENABLE KEYS */;

/*!50003 SET @OLD_SQL_MODE=@@SQL_MODE*/;
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall9_AINS` AFTER INSERT ON `wall9` FOR EACH ROW IF NEW.extension is NULL AND NEW.`idauthor` = '9' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 , 

    `mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` + 1 

	WHERE `mydb`.`profile`.`id` = '9';

ELSE IF NEW.extension is NULL AND NEW.`idauthor` <> '9' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` + 1 

	WHERE `mydb`.`profile`.`id` = '9';

END IF;

END IF */;;

/*!50003 SET SESSION SQL_MODE="" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `wall9_ADEL` AFTER DELETE ON `wall9` FOR EACH ROW IF OLD.extension is NULL AND OLD.`idauthor` = '9' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1,

	`mydb`.`profile`.`countwallmy` = `mydb`.`profile`.`countwallmy` - 1

	WHERE `mydb`.`profile`.`id` = '9';

ELSE IF OLD.extension is NULL AND OLD.`idauthor` <> '9' THEN

	UPDATE `mydb`.`profile` 

	SET `mydb`.`profile`.`countwall` = `mydb`.`profile`.`countwall` - 1 

	WHERE `mydb`.`profile`.`id` = '9'; 

END IF;

END IF */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

