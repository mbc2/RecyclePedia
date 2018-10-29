# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.23)
# Database: RecyclePedia
# Generation Time: 2018-10-29 22:35:34 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Area
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Area`;

CREATE TABLE `Area` (
  `zipcode` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `policy` int(11) DEFAULT NULL,
  PRIMARY KEY (`zipcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Area` WRITE;
/*!40000 ALTER TABLE `Area` DISABLE KEYS */;

INSERT INTO `Area` (`zipcode`, `policy`)
VALUES
	(45203,1);

/*!40000 ALTER TABLE `Area` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Materials
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Materials`;

CREATE TABLE `Materials` (
  `material` varchar(255) NOT NULL DEFAULT '',
  `method_to_break_down` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Materials` WRITE;
/*!40000 ALTER TABLE `Materials` DISABLE KEYS */;

INSERT INTO `Materials` (`material`, `method_to_break_down`)
VALUES
	('Batteries',NULL),
	('Bound Books',NULL),
	('Broken Ceramics',NULL),
	('Cardboard','Unfold'),
	('Cartons','Wash, crush, and screw on cap.'),
	('Cups',NULL),
	('Electronics',NULL),
	('Food',NULL),
	('Hoses',NULL),
	('Lids',NULL),
	('Light Bulbs',NULL),
	('Magazines',NULL),
	('Newspaper',NULL),
	('Paperboard','Unfold'),
	('Plastic Bags',NULL),
	('Ropes',NULL),
	('Styrofoam',NULL),
	('Utensils',NULL);

/*!40000 ALTER TABLE `Materials` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Policy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Policy`;

CREATE TABLE `Policy` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `recycle` varchar(255) DEFAULT NULL,
  `landfill` varchar(255) DEFAULT NULL,
  `waste_center` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Policy` WRITE;
/*!40000 ALTER TABLE `Policy` DISABLE KEYS */;

INSERT INTO `Policy` (`id`, `recycle`, `landfill`, `waste_center`)
VALUES
	(1,'[Cartons, Paperboard, Cardboard, Newspaper, Magazines]','[Food, Styrofoam, Hoses, Ropes, Cups, Lids, Utensils, Broken Ceramics]','[Batteries, Plastic Bags, Light Bulbs, Bound Books, Electronics]');

/*!40000 ALTER TABLE `Policy` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
