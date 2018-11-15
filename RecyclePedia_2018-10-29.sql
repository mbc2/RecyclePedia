# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.23)
# Database: RecyclePedia
# Generation Time: 2018-10-30 03:19:16 +0000
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
#This is the area table that organizes which zipcode is associated with which policy. 
#as of right now, we only have one policy so all of these zipcodes are associated with Cincinnati


INSERT INTO `Area` (`zipcode`, `policy`)
VALUES
	(45201,1),
  (45202,1),
  (45203,1),
  (45204,1),
  (45205,1),
  (45206,1),
  (45207,1),
  (45208,1),
  (45209,1),
  (45211,1),
  (45212,1),
  (45213,1),
  (45214,1),
  (45215,1),
  (45216,1),
  (45217,1),
  (45218,1),
  (45219,1),
  (45220,1),
  (45221,1),
  (45222,1),
  (45223,1),
  (45224,1),
  (45225,1),
  (45226,1),
  (45227,1),
  (45229,1), 
  (45230,1),
  (45231,1),
  (45232,1),
  (45233,1),
  (45234,1),
  (45235,1),
  (45236,1),
  (45237,1),
  (45238,1),
  (45239,1),
  (45240,1),
  (45241,1),
  (45242,1),
  (45243,1),
  (45244,1),
  (45245,1),
  (45246,1),
  (45247,1),
  (45248,1),
  (45249,1),
  (45250,1),
  (45251,1),
  (45252,1),
 (45253,1),
 (45254,1),
 (45255,1),
 (45258,1),
 (45262,1),
 (45263,1),
 (45264,1),
 (45267,1),
 (45268,1),
 (45269,1),
 (45270,1),
 (45271,1),
 (45273,1),
 (45274,1),
 (45275,1),
 (45277,1),
 (45280,1),
 (45296,1),
 (45298,1),
 (45299,1),
 (45999,1),
(02108,2),
(02109,2),
(02110,2),
(02111,2),
(02112,2),
(02113,2),
(02114,2),
(02115,2),
(02116,2),
(02117,2),
(02118,2),
(02119,2),
(02120,2),
(02121,2),
(02122,2),
(02123,2),
(02124,2),
(02125,2),
(02126,2),
(02127,2),
(02128,2),
(02129,2),
(02130,2),
(02131,2),
(02132,2),
(02133,2),
(02134,2),
(02135,2),
(02136,2),
(02137,2),
(02163,2),
(02196,2),
(02199,2),
(02201,2),
(02203,2),
(02204,2),
(02205,2),
(02206,2),
(02210,2),
(02211,2),
(02212,2),
(02215,2),
(02217,2),
(02222,2),
(02241,2),
(02266,2),
(02283,2),
(02284,2),
(02293,2),
(02297,2),
(02298,2);




/*!40000 ALTER TABLE `Area` ENABLE KEYS */;
UNLOCK TABLES;

#this tests how many policies we support
SELECT MAX(policy) AS "How many policies" FROM Area;


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
  PRIMARY KEY (`landfill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Landfill` WRITE;
/*!40000 ALTER TABLE `Landfill` DISABLE KEYS */;

INSERT INTO `Landfill` (`landfill_id`, `L1_id`, `L2_id`, `L3_id`, `L4_id`, `L5_id`)
VALUES
	(200,NULL,NULL,NULL,NULL,NULL);

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
#These are all of the materials that are recyclable

INSERT INTO `Materials` (`material_id`, `material_name`, `method_to_break_down`) 
VALUES	
  ('400','Plastic Bottles and Jugs','Rinse, crush, and replace bottle cap.'), /* boston has it too */
	('401','Glass Jars','Rinse and detach lid from bottle. Labels can be left on.'), /* boston has it too */
	('402','Aluminum Beverage Cans','Rinse. Labels can be left on.'), /* boston has it too */
	('403','Cartons','Rinse. Remove and dispose of caps and straws in the trash.'),
	('404','Aerosol Cans','Remove lids and tips.'),
	('405','Paperboard','Unfold.'), /* boston has it too */
	('406','Cardboard','Break down into 3-by-3 sections '), /* boston has it too */
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
  ('424','Food wasete', 'Anaerobic Digestion,Commercial Composting, Backyard & Neighborhood Composting '),
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
  ('437','Wiring','Landfill'), /* this is where everything below is boston */
  ​​​​​​('438','Antifreeze','Recycling Center'),
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
  ('448','Fire starters, flammable liquids, floor-care products, and furniture polish','Recycling Center'),
  ('449','Mercury bearing waste from fluorescent lamps, compact fluorescent light bulbs, thermostats, and mercury switches','Recycling Center'),
  ('450','Photography chemicals, pool chemicals, propane tanks, and rust preventatives','Recycling Center'),
  ('451','Sealant, solvent adhesives, solvent-based cleaners','Recycling Center'),
  ('452','Wax stripper and Wood preservatives','Recycling Center'),
  ('453','Brighteners','Recycling Center'),
  ('454','Chlorine bleach','Recycling Center'),
  ('455','Detergents','Recycling Center'),
  ('456','Drain cleaners','Recycling Center'),
  ('457','Lighter fluid','Recycling Center'),
  ('458', 'Moth balls and crystals','Recycling Center'),
  ('459', 'Oven cleaners','Recycling Center'),
  ('460', 'Rodent killers','Recycling Center'),
  ('461', 'Softeners','Recycling Center'),
  ('462', 'Spray starch','Recycling Center'),
  ('463', 'Whiteners','Recycling Center'),
  ('464', 'Cesspool cleaners','Recycling Center'),
  ('465', 'Fertilizers','Recycling Center'),
  ('466', 'Flammable liquids','Recycling Center'),
  ('467', 'Flea and tick powder','Recycling Center'),
  ('468' , 'Fungicides','Recycling Center'),
  ('469' , 'Herbicides','Recycling Center'),
  ('470' , 'Insecticides','Recycling Center'),
  ('471' , 'No-pest strips','Recycling Center'),
  ('472' , 'Pesticides','Recycling Center'),
  ('473' , 'Brake fluid','Recycling Center'),
  ('474' , 'Car batteries','Recycling Center'),
  ('475' , 'Carburetor cleaner','Recycling Center'),
  ('476' , 'Degreasers','Recycling Center'),
  ('477' , 'Engine solvents','Recycling Center'),
  ('478' , 'Gasoline and kerosene','Recycling Center');








/*!40000 ALTER TABLE `Materials` ENABLE KEYS */;
UNLOCK TABLES;

#Counts how many materials are accepted in our database
SELECT COUNT(*) AS "How many materials" FROM Materials;

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
	(2,'101',NULL,NULL);

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
  PRIMARY KEY (`recycle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Recyclables` WRITE;
/*!40000 ALTER TABLE `Recyclables` DISABLE KEYS */;

INSERT INTO `Recyclables` (`recycle_id`, `R1_id`, `R2_id`, `R3_id`, `R4_id`)
VALUES
	('100',400,401,402,403);


/*!40000 ALTER TABLE `Recyclables` ENABLE KEYS */;
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
  PRIMARY KEY (`waste_center_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Waste_Center` WRITE;
/*!40000 ALTER TABLE `Waste_Center` DISABLE KEYS */;

INSERT INTO `Waste_Center` (`waste_center_id`, `WC1_id`, `WC2_id`, `WC3_id`, `WC4_id`, `WC5_id`)
VALUES
	(300,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `Waste_Center` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
