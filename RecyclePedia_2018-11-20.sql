# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.23)
# Database: RecyclePedia
# Generation Time: 2018-12-02 15:50:54 +0000
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
  `city` varchar(255) DEFAULT NULL,
  `policy` int(11) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  PRIMARY KEY (`zipcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Area` WRITE;
/*!40000 ALTER TABLE `Area` DISABLE KEYS */;

INSERT INTO `Area` (`zipcode`, `city`, `policy`, `latitude`, `longitude`)
VALUES
	(2108,'Boston',2,42.3611,-71.0571),
	(2109,'Boston',2,42.3611,-71.0571),
	(2110,'Boston',2,42.3611,-71.0571),
	(2111,'Boston',2,42.3611,-71.0571),
	(2112,'Boston',2,42.3611,-71.0571),
	(2113,'Boston',2,42.3611,-71.0571),
	(2114,'Boston',2,42.3611,-71.0571),
	(2115,'Boston',2,42.3611,-71.0571),
	(2116,'Boston',2,42.3611,-71.0571),
	(2117,'Boston',2,42.3611,-71.0571),
	(2118,'Boston',2,42.3611,-71.0571),
	(2119,'Boston',2,42.3611,-71.0571),
	(2120,'Boston',2,42.3611,-71.0571),
	(2121,'Boston',2,42.3611,-71.0571),
	(2122,'Boston',2,42.3611,-71.0571),
	(2123,'Boston',2,42.3611,-71.0571),
	(2124,'Boston',2,42.3611,-71.0571),
	(2125,'Boston',2,42.3611,-71.0571),
	(2126,'Boston',2,42.3611,-71.0571),
	(2127,'Boston',2,42.3611,-71.0571),
	(2128,'Boston',2,42.3611,-71.0571),
	(2129,'Boston',2,42.3611,-71.0571),
	(2130,'Boston',2,42.3611,-71.0571),
	(2131,'Boston',2,42.3611,-71.0571),
	(2132,'Boston',2,42.3611,-71.0571),
	(2133,'Boston',2,42.3611,-71.0571),
	(2134,'Boston',2,42.3611,-71.0571),
	(2135,'Boston',2,42.3611,-71.0571),
	(2136,'Boston',2,42.3611,-71.0571),
	(2137,'Boston',2,42.3611,-71.0571),
	(2163,'Boston',2,42.3611,-71.0571),
	(2196,'Boston',2,42.3611,-71.0571),
	(2199,'Boston',2,42.3611,-71.0571),
	(2201,'Boston',2,42.3611,-71.0571),
	(2203,'Boston',2,42.3611,-71.0571),
	(2204,'Boston',2,42.3611,-71.0571),
	(2205,'Boston',2,42.3611,-71.0571),
	(2206,'Boston',2,42.3611,-71.0571),
	(2210,'Boston',2,42.3611,-71.0571),
	(2211,'Boston',2,42.3611,-71.0571),
	(2212,'Boston',2,42.3611,-71.0571),
	(2215,'Boston',2,42.3611,-71.0571),
	(2217,'Boston',2,42.3611,-71.0571),
	(2222,'Boston',2,42.3611,-71.0571),
	(2241,'Boston',2,42.3611,-71.0571),
	(2266,'Boston',2,42.3611,-71.0571),
	(2283,'Boston',2,42.3611,-71.0571),
	(2284,'Boston',2,42.3611,-71.0571),
	(2293,'Boston',2,42.3611,-71.0571),
	(2297,'Boston',2,42.3611,-71.0571),
	(2298,'Boston',2,42.3611,-71.0571),
	(44017,'Cleveland',3,41.5055,-81.6813),
	(44022,'Cleveland',3,41.5055,-81.6813),
	(44040,'Cleveland',3,41.5055,-81.6813),
	(44070,'Cleveland',3,41.5055,-81.6813),
	(44101,'Cleveland',3,41.5055,-81.6813),
	(44102,'Cleveland',3,41.5055,-81.6813),
	(44103,'Cleveland',3,41.5055,-81.6813),
	(44104,'Cleveland',3,41.5055,-81.6813),
	(44105,'Cleveland',3,41.5055,-81.6813),
	(44106,'Cleveland',3,41.5055,-81.6813),
	(44107,'Cleveland',3,41.5055,-81.6813),
	(44108,'Cleveland',3,41.5055,-81.6813),
	(44109,'Cleveland',3,41.5055,-81.6813),
	(44110,'Cleveland',3,41.5055,-81.6813),
	(44111,'Cleveland',3,41.5055,-81.6813),
	(44112,'Cleveland',3,41.5055,-81.6813),
	(44113,'Cleveland',3,41.5055,-81.6813),
	(44114,'Cleveland',3,41.5055,-81.6813),
	(44115,'Cleveland',3,41.5055,-81.6813),
	(44116,'Cleveland',3,41.5055,-81.6813),
	(44117,'Cleveland',3,41.5055,-81.6813),
	(44118,'Cleveland',3,41.5055,-81.6813),
	(44119,'Cleveland',3,41.5055,-81.6813),
	(44120,'Cleveland',3,41.5055,-81.6813),
	(44121,'Cleveland',3,41.5055,-81.6813),
	(44122,'Cleveland',3,41.5055,-81.6813),
	(44123,'Cleveland',3,41.5055,-81.6813),
	(44124,'Cleveland',3,41.5055,-81.6813),
	(44125,'Cleveland',3,41.5055,-81.6813),
	(44126,'Cleveland',3,41.5055,-81.6813),
	(44127,'Cleveland',3,41.5055,-81.6813),
	(44128,'Cleveland',3,41.5055,-81.6813),
	(44129,'Cleveland',3,41.5055,-81.6813),
	(44130,'Cleveland',3,41.5055,-81.6813),
	(44131,'Cleveland',3,41.5055,-81.6813),
	(44132,'Cleveland',3,41.5055,-81.6813),
	(44133,'Cleveland',3,41.5055,-81.6813),
	(44134,'Cleveland',3,41.5055,-81.6813),
	(44135,'Cleveland',3,41.5055,-81.6813),
	(44136,'Cleveland',3,41.5055,-81.6813),
	(44137,'Cleveland',3,41.5055,-81.6813),
	(44138,'Cleveland',3,41.5055,-81.6813),
	(44139,'Cleveland',3,41.5055,-81.6813),
	(44140,'Cleveland',3,41.5055,-81.6813),
	(44141,'Cleveland',3,41.5055,-81.6813),
	(44142,'Cleveland',3,41.5055,-81.6813),
	(44143,'Cleveland',3,41.5055,-81.6813),
	(44144,'Cleveland',3,41.5055,-81.6813),
	(44145,'Cleveland',3,41.5055,-81.6813),
	(44146,'Cleveland',3,41.5055,-81.6813),
	(44147,'Cleveland',3,41.5055,-81.6813),
	(44149,'Cleveland',3,41.5055,-81.6813),
	(44181,'Cleveland',3,41.5055,-81.6813),
	(44188,'Cleveland',3,41.5055,-81.6813),
	(44190,'Cleveland',3,41.5055,-81.6813),
	(44191,'Cleveland',3,41.5055,-81.6813),
	(44192,'Cleveland',3,41.5055,-81.6813),
	(44193,'Cleveland',3,41.5055,-81.6813),
	(44194,'Cleveland',3,41.5055,-81.6813),
	(44195,'Cleveland',3,41.5055,-81.6813),
	(44196,'Cleveland',3,41.5055,-81.6813),
	(44197,'Cleveland',3,41.5055,-81.6813),
	(44198,'Cleveland',3,41.5055,-81.6813),
	(44199,'Cleveland',3,41.5055,-81.6813),
	(45201,'Cincinnati',1,39.1031,-84.512),
	(45202,'Cincinnati',1,39.1031,-84.512),
	(45203,'Cincinnati',1,39.1031,-84.512),
	(45204,'Cincinnati',1,39.1031,-84.512),
	(45205,'Cincinnati',1,39.1031,-84.512),
	(45206,'Cincinnati',1,39.1031,-84.512),
	(45207,'Cincinnati',1,39.1031,-84.512),
	(45208,'Cincinnati',1,39.1031,-84.512),
	(45209,'Cincinnati',1,39.1031,-84.512),
	(45211,'Cincinnati',1,39.1031,-84.512),
	(45212,'Cincinnati',1,39.1031,-84.512),
	(45213,'Cincinnati',1,39.1031,-84.512),
	(45214,'Cincinnati',1,39.1031,-84.512),
	(45215,'Cincinnati',1,39.1031,-84.512),
	(45216,'Cincinnati',1,39.1031,-84.512),
	(45217,'Cincinnati',1,39.1031,-84.512),
	(45218,'Cincinnati',1,39.1031,-84.512),
	(45219,'Cincinnati',1,39.1031,-84.512),
	(45220,'Cincinnati',1,39.1031,-84.512),
	(45221,'Cincinnati',1,39.1031,-84.512),
	(45222,'Cincinnati',1,39.1031,-84.512),
	(45223,'Cincinnati',1,39.1031,-84.512),
	(45224,'Cincinnati',1,39.1031,-84.512),
	(45225,'Cincinnati',1,39.1031,-84.512),
	(45226,'Cincinnati',1,39.1031,-84.512),
	(45227,'Cincinnati',1,39.1031,-84.512),
	(45229,'Cincinnati',1,39.1031,-84.512),
	(45230,'Cincinnati',1,39.1031,-84.512),
	(45231,'Cincinnati',1,39.1031,-84.512),
	(45232,'Cincinnati',1,39.1031,-84.512),
	(45233,'Cincinnati',1,39.1031,-84.512),
	(45234,'Cincinnati',1,39.1031,-84.512),
	(45235,'Cincinnati',1,39.1031,-84.512),
	(45236,'Cincinnati',1,39.1031,-84.512),
	(45237,'Cincinnati',1,39.1031,-84.512),
	(45238,'Cincinnati',1,39.1031,-84.512),
	(45239,'Cincinnati',1,39.1031,-84.512),
	(45240,'Cincinnati',1,39.1031,-84.512),
	(45241,'Cincinnati',1,39.1031,-84.512),
	(45242,'Cincinnati',1,39.1031,-84.512),
	(45243,'Cincinnati',1,39.1031,-84.512),
	(45244,'Cincinnati',1,39.1031,-84.512),
	(45245,'Cincinnati',1,39.1031,-84.512),
	(45246,'Cincinnati',1,39.1031,-84.512),
	(45247,'Cincinnati',1,39.1031,-84.512),
	(45248,'Cincinnati',1,39.1031,-84.512),
	(45249,'Cincinnati',1,39.1031,-84.512),
	(45250,'Cincinnati',1,39.1031,-84.512),
	(45251,'Cincinnati',1,39.1031,-84.512),
	(45252,'Cincinnati',1,39.1031,-84.512),
	(45253,'Cincinnati',1,39.1031,-84.512),
	(45254,'Cincinnati',1,39.1031,-84.512),
	(45255,'Cincinnati',1,39.1031,-84.512),
	(45258,'Cincinnati',1,39.1031,-84.512),
	(45262,'Cincinnati',1,39.1031,-84.512),
	(45263,'Cincinnati',1,39.1031,-84.512),
	(45264,'Cincinnati',1,39.1031,-84.512),
	(45267,'Cincinnati',1,39.1031,-84.512),
	(45268,'Cincinnati',1,39.1031,-84.512),
	(45269,'Cincinnati',1,39.1031,-84.512),
	(45270,'Cincinnati',1,39.1031,-84.512),
	(45271,'Cincinnati',1,39.1031,-84.512),
	(45273,'Cincinnati',1,39.1031,-84.512),
	(45274,'Cincinnati',1,39.1031,-84.512),
	(45275,'Cincinnati',1,39.1031,-84.512),
	(45277,'Cincinnati',1,39.1031,-84.512),
	(45280,'Cincinnati',1,39.1031,-84.512),
	(45296,'Cincinnati',1,39.1031,-84.512),
	(45298,'Cincinnati',1,39.1031,-84.512),
	(45299,'Cincinnati',1,39.1031,-84.512),
	(45999,'Cincinnati',1,39.1031,-84.512);

/*!40000 ALTER TABLE `Area` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Landfill
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Landfill`;

CREATE TABLE `Landfill` (
  `landfill_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `L1_id` int(11) DEFAULT NULL,
  `L2_id` int(11) DEFAULT NULL,
  `L3_id` int(11) DEFAULT NULL,
  `L4_id` int(11) DEFAULT NULL,
  `L5_id` int(11) DEFAULT NULL,
  `L6_id` int(11) DEFAULT NULL,
  `L7_id` int(11) DEFAULT NULL,
  `L8_id` int(11) DEFAULT NULL,
  `L9_id` int(11) DEFAULT NULL,
  `L10_id` int(11) DEFAULT NULL,
  `L11_id` int(11) DEFAULT NULL,
  `L12_id` int(11) DEFAULT NULL,
  `L13_id` int(11) DEFAULT NULL,
  `L14_id` int(11) DEFAULT NULL,
  `L15_id` int(11) DEFAULT NULL,
  `L16_id` int(11) DEFAULT NULL,
  `L17_id` int(11) DEFAULT NULL,
  `L18_id` int(11) DEFAULT NULL,
  `L19_id` int(11) DEFAULT NULL,
  `L20_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`landfill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Landfill` WRITE;
/*!40000 ALTER TABLE `Landfill` DISABLE KEYS */;

INSERT INTO `Landfill` (`landfill_id`, `L1_id`, `L2_id`, `L3_id`, `L4_id`, `L5_id`, `L6_id`, `L7_id`, `L8_id`, `L9_id`, `L10_id`, `L11_id`, `L12_id`, `L13_id`, `L14_id`, `L15_id`, `L16_id`, `L17_id`, `L18_id`, `L19_id`, `L20_id`)
VALUES
	(200,424,425,426,427,428,429,430,431,432,433,434,435,436,437,NULL,NULL,NULL,NULL,NULL,NULL),
	(201,483,484,485,486,487,488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `Landfill` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Materials
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Materials`;

CREATE TABLE `Materials` (
  `material_id` varchar(255) NOT NULL DEFAULT '',
  `material_name` varchar(255) DEFAULT NULL,
  `method_to_break_down` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Materials` WRITE;
/*!40000 ALTER TABLE `Materials` DISABLE KEYS */;

INSERT INTO `Materials` (`material_id`, `material_name`, `method_to_break_down`)
VALUES
	('400','Plastic Bottles and Jugs','Rinse, crush, and replace bottle cap.'),
	('401','Glass Jars','Rinse and detach lid from bottle. Labels can be left on.'),
	('402','Aluminum Beverage Cans','Rinse. Labels can be left on.'),
	('403','Cartons','Rinse. Remove and dispose of caps and straws in the trash.'),
	('404','Aerosol Cans','Remove lids and tips.'),
	('405','Paperboard','Unfold.'),
	('406','Cardboard','Break down into 3-by-3 sections '),
	('407','Batteries','Recycling Centers'),
	('408','Plastic Bags','Recycling Centers'),
	('409','Aluminum pie plates and food containers','Recycling Centers'),
	('411','Aluminum cat food cans','Recycling Centers'),
	('412','Plastic tubs such as butter and yogurt containers, storage containers','Recycling Centers'),
	('413','Berry containers (clam shells)','Recycling Centers'),
	('414','Any plastic that is not in the shape of a bottle/jug','Recycling Centers'),
	('415','Christmas lights','Recycling Centers'),
	('416','Light bulbs','Recycling Centers'),
	('417','Yard waste or food','Recycling Centers'),
	('418','Electronics','Recycling Centers.'),
	('419','Polystyrene foam','Recycling Centers'),
	('420','Hazardous waste','Recycling Centers'),
	('421','Window glass, mirrors, drinking glasses','Recycling Centers'),
	('422','Bound books','Recycling Centers'),
	('423','Picnic ware- plastic cups and silverware, plates, napkins, etc','Recycling Centers'),
	('424','Food waste','Anaerobic Digestion,Commercial Composting, Backyard & Neighborhood Composting '),
	('425','Concrete','Landfill'),
	('426','Brick','Landfill'),
	('427','Masonry','Landfill'),
	('428','Stone','Landfill'),
	('429','Glass','Landfill'),
	('430','Asphalt','Landfill'),
	('431','Dry wall','Landfill'),
	('432','Plaster','Landfill'),
	('433','Paneling Lumber','Landfill'),
	('434','Plumbing fixtures','Landfill'),
	('435','Insulation','Landfill'),
	('436','Roofing materials','Landfill'),
	('437','Wiring','Landfill'),
	('438','Antifreeze','Recycling Center'),
	('439','Motor oil and oil filters','Recycling Center'),
	('440','Tires (never throw tires out with your regular trash)','Recycling Center'),
	('441','Tire cleaners','Recycling Center'),
	('442','Transmission fluid','Recycling Center'),
	('443','Acids and sulfuric acid, aerosol cans','Recycling Center'),
	('444','Ammonia cleaners, radiator cleaners, rug cleaners, and upholstery cleaners','Recycling Center'),
	('445','Artist supplies and hobby supplies like rubber cement','Recycling Center'),
	('446','Caulk, chemistry set chemicals, pool chemicals','Recycling Center'),
	('447','Driveway sealer, creosote, furnace cement, and roof cement','Recycling Center'),
	('448','Dry-cell batteries, fiberglass resins, and metal cleaners','Recycling Center'),
	('449','Fire starters, flammable liquids, floor-care products, and furniture polish','Recycling Center'),
	('450','Mercury bearing waste from fluorescent lamps, compact fluorescent light bulbs, thermostats, and mercury switches','Recycling Center'),
	('451','Photography chemicals, pool chemicals, propane tanks, and rust preventatives','Recycling Center'),
	('452','Sealant, solvent adhesives, solvent-based cleaners','Recycling Center'),
	('453','Wax stripper and Wood preservatives','Recycling Center'),
	('454','Brighteners','Recycling Center'),
	('455','Chlorine bleach','Recycling Center'),
	('456','Detergents','Recycling Center'),
	('457','Drain cleaners','Recycling Center'),
	('458','Lighter fluid','Recycling Center'),
	('459','Moth balls and crystals','Recycling Center'),
	('460','Oven cleaners','Recycling Center'),
	('461','Rodent killers','Recycling Center'),
	('462','Softeners','Recycling Center'),
	('463','Spray starch','Recycling Center'),
	('464','Whiteners','Recycling Center'),
	('465','Cesspool cleaners','Recycling Center'),
	('466','Fertilizers','Recycling Center'),
	('467','Flammable liquids','Recycling Center'),
	('468','Flea and tick powder','Recycling Center'),
	('469','Fungicides','Recycling Center'),
	('470','Herbicides','Recycling Center'),
	('471','Insecticides','Recycling Center'),
	('472','No-pest strips','Recycling Center'),
	('473','Pesticides','Recycling Center'),
	('474','Brake fluid','Recycling Center'),
	('475','Car batteries','Recycling Center'),
	('476','Carburetor cleaner','Recycling Center'),
	('477','Degreasers','Recycling Center'),
	('478','Engine solvents','Recycling Center'),
	('479','Gasoline and kerosene','Recycling Center'),
	('480','Scrap Metals','Recycling Center'),
	('481','Clothing','Recycling Center'),
	('482','Paper','Recycling Center'),
	('483','Styrofoam and take-out containers','Throw in trash'),
	('484','Hoses and ropes','Throw in trash'),
	('485','Durable Plastic','Throw in trash'),
	('486','Cups, lids and utensils','Throw in trash'),
	('487','Broken Ceramics','Throw in trash'),
	('488','Medication','Throw in trash');

/*!40000 ALTER TABLE `Materials` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Policy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Policy`;

CREATE TABLE `Policy` (
  `policy` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `recycle_id` varchar(255) DEFAULT NULL,
  `landfill_id` varchar(255) DEFAULT NULL,
  `waste_center_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`policy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Policy` WRITE;
/*!40000 ALTER TABLE `Policy` DISABLE KEYS */;

INSERT INTO `Policy` (`policy`, `recycle_id`, `landfill_id`, `waste_center_id`)
VALUES
	(1,'100','200','300'),
	(2,'101','201','301'),
	(3,'102','201','302');

/*!40000 ALTER TABLE `Policy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Recyclables
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Recyclables`;

CREATE TABLE `Recyclables` (
  `recycle_id` varchar(255) NOT NULL DEFAULT '',
  `R1_id` int(11) DEFAULT NULL,
  `R2_id` int(11) DEFAULT NULL,
  `R3_id` int(11) DEFAULT NULL,
  `R4_id` int(11) DEFAULT NULL,
  `R5_id` int(11) DEFAULT NULL,
  `R6_id` int(11) DEFAULT NULL,
  `R7_id` int(11) DEFAULT NULL,
  `R8_id` int(11) DEFAULT NULL,
  `R9_id` int(11) DEFAULT NULL,
  `R10_id` int(11) DEFAULT NULL,
  `R11_id` int(11) DEFAULT NULL,
  `R12_id` int(11) DEFAULT NULL,
  `R13_id` int(11) DEFAULT NULL,
  `R14_id` int(11) DEFAULT NULL,
  `R15_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`recycle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Recyclables` WRITE;
/*!40000 ALTER TABLE `Recyclables` DISABLE KEYS */;

INSERT INTO `Recyclables` (`recycle_id`, `R1_id`, `R2_id`, `R3_id`, `R4_id`, `R5_id`, `R6_id`, `R7_id`, `R8_id`, `R9_id`, `R10_id`, `R11_id`, `R12_id`, `R13_id`, `R14_id`, `R15_id`)
VALUES
	('100',400,401,402,403,404,405,406,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('101',400,401,402,405,406,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('102',400,401,402,403,405,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `Recyclables` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table test_results
# ------------------------------------------------------------

DROP TABLE IF EXISTS `test_results`;

CREATE TABLE `test_results` (
  `itemTest` varchar(255) DEFAULT NULL,
  `testName` varchar(255) DEFAULT NULL,
  `testResult` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `test_results` WRITE;
/*!40000 ALTER TABLE `test_results` DISABLE KEYS */;

INSERT INTO `test_results` (`itemTest`, `testName`, `testResult`)
VALUES
	('ZIP-01','Find number of zipcodes','pass'),
	('ZIP-02','Find policy for specific zipcode','pass'),
	('ZIP-03','Finds all zipcodes for policy 1','pass'),
	('ZIP-03','Finds all zipcodes for policy 2','pass'),
	('ZIP-03','Finds all zipcodes for policy 3','pass'),
	('REC-01','Return correct recyclables for zipcode 45203 (policy 1)','pass'),
	('REC-01','Return correct recyclables for zipcode 2112 (policy 2)','pass'),
	('REC-01','Return correct recyclables for zipcode 44145 (policy 3)','pass'),
	('LAND-01','Return correct landfill items for zipcode 45203 (policy 1)','pass'),
	('LAND-01','Return correct landfill items for zipcode 2112 (policy 2)','pass'),
	('LAND-01','Return correct landfill items for zipcode 44145 (policy 3)','pass'),
	('WC-01','Returns correct waste center items for zipcode 45203 (policy 1)','pass'),
	('WC-01','Returns correct waste center items for zipcode 2112 (policy 2)','pass'),
	('WC-01','Returns correct waste center items for zipcode 44145 (policy 3)','pass');

/*!40000 ALTER TABLE `test_results` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Waste_Center
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Waste_Center`;

CREATE TABLE `Waste_Center` (
  `waste_center_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `WC1_id` int(11) DEFAULT NULL,
  `WC2_id` int(11) DEFAULT NULL,
  `WC3_id` int(11) DEFAULT NULL,
  `WC4_id` int(11) DEFAULT NULL,
  `WC5_id` int(11) DEFAULT NULL,
  `WC6_id` int(11) DEFAULT NULL,
  `WC7_id` int(11) DEFAULT NULL,
  `WC8_id` int(11) DEFAULT NULL,
  `WC9_id` int(11) DEFAULT NULL,
  `WC10_id` int(11) DEFAULT NULL,
  `WC11_id` int(11) DEFAULT NULL,
  `WC12_id` int(11) DEFAULT NULL,
  `WC13_id` int(11) DEFAULT NULL,
  `WC14_id` int(11) DEFAULT NULL,
  `WC15_id` int(11) DEFAULT NULL,
  `WC16_id` int(11) DEFAULT NULL,
  `WC17_id` int(11) DEFAULT NULL,
  `WC18_id` int(11) DEFAULT NULL,
  `WC19_id` int(11) DEFAULT NULL,
  `WC20_id` int(11) DEFAULT NULL,
  `WC21_id` int(11) DEFAULT NULL,
  `WC22_id` int(11) DEFAULT NULL,
  `WC23_id` int(11) DEFAULT NULL,
  `WC24_id` int(11) DEFAULT NULL,
  `WC25_id` int(11) DEFAULT NULL,
  `WC26_id` int(11) DEFAULT NULL,
  `WC27_id` int(11) DEFAULT NULL,
  `WC28_id` int(11) DEFAULT NULL,
  `WC29_id` int(11) DEFAULT NULL,
  `WC30_id` int(11) DEFAULT NULL,
  `WC31_id` int(11) DEFAULT NULL,
  `WC32_id` int(11) DEFAULT NULL,
  `WC33_id` int(11) DEFAULT NULL,
  `WC34_id` int(11) DEFAULT NULL,
  `WC35_id` int(11) DEFAULT NULL,
  `WC36_id` int(11) DEFAULT NULL,
  `WC37_id` int(11) DEFAULT NULL,
  `WC38_id` int(11) DEFAULT NULL,
  `WC39_id` int(11) DEFAULT NULL,
  `WC40_id` int(11) DEFAULT NULL,
  `WC41_id` int(11) DEFAULT NULL,
  `WC42_id` int(11) DEFAULT NULL,
  `WC43_id` int(11) DEFAULT NULL,
  `WC44_id` int(11) DEFAULT NULL,
  `WC45_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`waste_center_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Waste_Center` WRITE;
/*!40000 ALTER TABLE `Waste_Center` DISABLE KEYS */;

INSERT INTO `Waste_Center` (`waste_center_id`, `WC1_id`, `WC2_id`, `WC3_id`, `WC4_id`, `WC5_id`, `WC6_id`, `WC7_id`, `WC8_id`, `WC9_id`, `WC10_id`, `WC11_id`, `WC12_id`, `WC13_id`, `WC14_id`, `WC15_id`, `WC16_id`, `WC17_id`, `WC18_id`, `WC19_id`, `WC20_id`, `WC21_id`, `WC22_id`, `WC23_id`, `WC24_id`, `WC25_id`, `WC26_id`, `WC27_id`, `WC28_id`, `WC29_id`, `WC30_id`, `WC31_id`, `WC32_id`, `WC33_id`, `WC34_id`, `WC35_id`, `WC36_id`, `WC37_id`, `WC38_id`, `WC39_id`, `WC40_id`, `WC41_id`, `WC42_id`, `WC43_id`, `WC44_id`, `WC45_id`)
VALUES
	(300,407,408,409,411,412,413,414,415,416,417,418,419,420,421,422,423,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(301,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,481,482,NULL),
	(302,408,418,481,482,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `Waste_Center` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
