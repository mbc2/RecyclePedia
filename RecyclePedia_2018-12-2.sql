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

    (02108,'Boston',2,42.357758,-71.064899),
    (02109,'Boston',2,42.368802,-71.04949),
    (02110,'Boston',2,42.361984,-71.047959),
    (02111,'Boston',2,42.350518,-71.059077),
    (02113,'Boston',2,42.365331,-71.055233),
    (02114,'Boston',2,42.363174,-71.068646),
    (02115,'Boston',2,42.337105,-71.105696),
    (02116,'Boston',2,42.350579,-71.076397),
    (02118,'Boston',2,42.337582,-71.070482),
    (02119,'Boston',2,42.324029,-71.085017),
    (02120,'Boston',2,42.33209,-71.096545),
    (02121,'Boston',2,42.306267,-71.085897),
    (02122,'Boston',2,42.291413,-71.042158),
    (02124,'Boston',2,42.285805,-71.070571),
    (02125,'Boston',2,42.315682,-71.055555),
    (02126,'Boston',2,42.274227,-71.097423),
    (02127,'Boston',2,42.334992,-71.039093),
    (02128,'Boston',2,42.361203,-71.00705),
    (02129,'Boston',2,42.379657,-71.061487),
    (02130,'Boston',2,42.309174,-71.113835),
    (02131,'Boston',2,42.284333,-71.126228),
    (02132,'Boston',2,42.280455,-71.162017),
    (02134,'Boston',2,42.358016,-71.128608),
    (02135,'Boston',2,42.349688,-71.153964),
    (02136,'Boston',2,42.255083,-71.12922),
    (02138,'Boston',2,42.379637,-71.135152),
    (02139,'Boston',2,42.362986,-71.103353),
    (02140,'Boston',2,42.392157,-71.133996),
    (02141,'Boston',2,42.3703,-71.08256),
    (02142,'Boston',2,42.361994,-71.081588),
    (02143,'Boston',2,42.381407,-71.096714),
    (02144,'Boston',2,42.399655,-71.12255),
    (02145,'Boston',2,42.391577,-71.08991),
    (02148,'Boston',2,42.42938,-71.058706),
    (02149,'Boston',2,42.405938,-71.054649),
    (02150,'Boston',2,42.396824,-71.031348),
    (02151,'Boston',2,42.41829,-71.001251),
    (02152,'Boston',2,42.373055,-70.974807),
    (02155,'Boston',2,42.423844,-71.109231),
    (02163,'Boston',2,42.365915,-71.122177),
    (02169,'Boston',2,42.248386,-71.002279),
    (02170,'Boston',2,42.266415,-71.015576),
    (02171,'Boston',2,42.293327,-71.018193),
    (02176,'Boston',2,42.455723,-71.059019),
    (02180,'Boston',2,42.474208,-71.097665),
    (02184,'Boston',2,42.206188,-71.00232),
    (02186,'Boston',2,42.241559,-71.082437),
    (02188,'Boston',2,42.204662,-70.957633),
    (02189,'Boston',2,42.209781,-70.928176),
    (02190,'Boston',2,42.166731,-70.952363),
    (02191,'Boston',2,42.243453,-70.942033),
    (02199,'Boston',2,42.347476,-71.082035),
    (02203,'Boston',2,42.360588,-71.058737),
    (02210,'Boston',2,42.347472,-71.039271),
    (02215,'Boston',2,42.347635,-71.103082),
	(44017,'Cleveland',3,41.370548,-81.861757),
    (44021,'Cleveland',3,41.44326,-81.144465),
    (44022,'Cleveland',3,41.446257,-81.402972),
    (44023,'Cleveland',3,41.384807,-81.285741),
    (44024,'Cleveland',3,41.577765,-81.192433),
    (44026,'Cleveland',3,41.528147,-81.324706),
    (44028,'Cleveland',3,41.300523,-81.937418),
    (44030,'Cleveland',3,41.896637,-80.585178),
    (44032,'Cleveland',3,41.669245,-80.67011),
    (44035,'Cleveland',3,41.363588,-82.138181),
    (44039,'Cleveland',3,41.386,-82.024711),
    (44040,'Cleveland',3,41.535663,-81.410737),
    (44041,'Cleveland',3,41.7769,-80.949898),
    (44044,'Cleveland',3,41.266284,-82.04179),
    (44045,'Cleveland',3,41.748658,-81.284345),
    (44046,'Cleveland',3,41.542545,-81.068714),
    (44047,'Cleveland',3,41.727931,-80.735874),
    (44048,'Cleveland',3,41.850255,-80.639309),
    (44049,'Cleveland',3,41.266529,-82.305788),
    (44050,'Cleveland',3,41.248733,-82.1282),
    (44052,'Cleveland',3,41.459383,-82.164623),
    (44053,'Cleveland',3,41.42656,-82.225885),
    (44054,'Cleveland',3,41.4716,-82.090338),
    (44055,'Cleveland',3,41.434058,-82.134095),
    (44056,'Cleveland',3,41.314919,-81.501633),
    (44057,'Cleveland',3,41.760117,-81.060305),
    (44060,'Cleveland',3,41.67653,-81.328167),
    (44062,'Cleveland',3,41.451802,-81.03682),
    (44064,'Cleveland',3,41.598063,-81.032323),
    (44065,'Cleveland',3,41.475924,-81.221612),
    (44067,'Cleveland',3,41.316245,-81.543201),
    (44070,'Cleveland',3,41.415033,-81.918942),
    (44072,'Cleveland',3,41.471152,-81.32492),
    (44074,'Cleveland',3,41.289495,-82.231223),
    (44076,'Cleveland',3,41.530875,-80.823712),
    (44077,'Cleveland',3,41.697563,-81.20974),
    (44080,'Cleveland',3,41.359994,-81.046183),
    (44081,'Cleveland',3,41.763938,-81.143104),
    (44082,'Cleveland',3,41.761873,-80.567535),
    (44084,'Cleveland',3,41.671377,-80.899161),
    (44085,'Cleveland',3,41.603272,-80.874544),
    (44086,'Cleveland',3,41.675726,-81.058597),
    (44087,'Cleveland',3,41.313171,-81.438675),
    (44089,'Cleveland',3,41.392084,-82.377455),
    (44090,'Cleveland',3,41.167515,-82.228683),
    (44092,'Cleveland',3,41.599909,-81.468699),
    (44093,'Cleveland',3,41.530785,-80.614356),
    (44094,'Cleveland',3,41.610724,-81.379324),
    (44095,'Cleveland',3,41.652326,-81.441721),
    (44099,'Cleveland',3,41.549205,-80.983305),
    (44101,'Cleveland',3,41.489355,-81.667393),
    (44102,'Cleveland',3,41.479174,-81.740603),
    (44103,'Cleveland',3,41.519415,-81.642123),
    (44104,'Cleveland',3,41.482231,-81.626778),
    (44105,'Cleveland',3,41.449476,-81.630289),
    (44106,'Cleveland',3,41.505341,-81.605432),
    (44107,'Cleveland',3,41.483258,-81.801143),
    (44108,'Cleveland',3,41.544784,-81.607394),
    (44109,'Cleveland',3,41.447671,-81.694403),
    (44110,'Cleveland',3,41.569352,-81.564768),
    (44111,'Cleveland',3,41.458255,-81.788589),
    (44112,'Cleveland',3,41.535841,-81.574143),
    (44113,'Cleveland',3,41.483241,-81.697166),
    (44114,'Cleveland',3,41.52025,-81.678617),
    (44115,'Cleveland',3,41.493539,-81.671188),
    (44116,'Cleveland',3,41.473072,-81.853825),
    (44117,'Cleveland',3,41.570917,-81.52367),
    (44118,'Cleveland',3,41.502337,-81.556571),
    (44119,'Cleveland',3,41.58935,-81.547386),
    (44120,'Cleveland',3,41.473947,-81.579956),
    (44121,'Cleveland',3,41.526494,-81.532129),
    (44122,'Cleveland',3,41.469472,-81.512415),
    (44123,'Cleveland',3,41.604699,-81.524123),
    (44124,'Cleveland',3,41.500022,-81.465036),
    (44125,'Cleveland',3,41.405687,-81.609466),
    (44126,'Cleveland',3,41.441758,-81.852995),
    (44127,'Cleveland',3,41.472172,-81.650285),
    (44128,'Cleveland',3,41.439871,-81.538518),
    (44129,'Cleveland',3,41.390459,-81.7353),
    (44130,'Cleveland',3,41.376642,-81.787317),
    (44131,'Cleveland',3,41.382841,-81.650195),
    (44132,'Cleveland',3,41.606424,-81.497217),
    (44133,'Cleveland',3,41.313215,-81.745879),
    (44134,'Cleveland',3,41.380488,-81.700988),
    (44135,'Cleveland',3,41.426217,-81.819383),
    (44136,'Cleveland',3,41.311507,-81.811326),
    (44137,'Cleveland',3,41.409295,-81.562526),
    (44138,'Cleveland',3,41.373655,-81.923112),
    (44139,'Cleveland',3,41.383262,-81.444249),
    (44140,'Cleveland',3,41.487794,-81.931435),
    (44141,'Cleveland',3,41.299668,-81.616506),
    (44142,'Cleveland',3,41.399662,-81.834332),
    (44143,'Cleveland',3,41.553196,-81.474346),
    (44144,'Cleveland',3,41.437286,-81.739814),
    (44145,'Cleveland',3,41.449531,-81.930162),
    (44146,'Cleveland',3,41.381223,-81.529226),
    (44147,'Cleveland',3,41.318156,-81.679262),
    (44149,'Cleveland',3,41.315913,-81.856217),
    (45202,'Cincinnati',1,39.109377,-84.502571),
    (45203,'Cincinnati',1,39.105294,-84.533529),
    (45204,'Cincinnati',1,39.106537,-84.553193),
    (45205,'Cincinnati',1,39.110065,-84.575197),
    (45206,'Cincinnati',1,39.127331,-84.484374),
    (45207,'Cincinnati',1,39.142068,-84.471335),
    (45208,'Cincinnati',1,39.134746,-84.43443),
    (45209,'Cincinnati',1,39.153027,-84.426614),
    (45211,'Cincinnati',1,39.15609,-84.596637),
    (45212,'Cincinnati',1,39.164165,-84.452177),
    (45213,'Cincinnati',1,39.180791,-84.420062),
    (45214,'Cincinnati',1,39.115007,-84.534356),
    (45215,'Cincinnati',1,39.235272,-84.461959),
    (45216,'Cincinnati',1,39.200913,-84.481745),
    (45217,'Cincinnati',1,39.166056,-84.497807),
    (45218,'Cincinnati',1,39.263858,-84.518303),
    (45219,'Cincinnati',1,39.12738,-84.513065),
    (45220,'Cincinnati',1,39.148783,-84.520309),
    (45223,'Cincinnati',1,39.170996,-84.551359),
    (45224,'Cincinnati',1,39.201058,-84.531712),
    (45225,'Cincinnati',1,39.142809,-84.551212),
    (45226,'Cincinnati',1,39.111687,-84.421674),
    (45227,'Cincinnati',1,39.153237,-84.385795),
    (45229,'Cincinnati',1,39.152732,-84.486801),
    (45230,'Cincinnati',1,39.073748,-84.389281),
    (45231,'Cincinnati',1,39.247501,-84.534837),
    (45232,'Cincinnati',1,39.188263,-84.510096),
    (45233,'Cincinnati',1,39.116908,-84.672574),
    (45236,'Cincinnati',1,39.209808,-84.397283),
    (45237,'Cincinnati',1,39.193036,-84.45225),
    (45238,'Cincinnati',1,39.107658,-84.610282),
    (45239,'Cincinnati',1,39.203625,-84.580623),
    (45240,'Cincinnati',1,39.284509,-84.52933),
    (45241,'Cincinnati',1,39.276362,-84.397108),
    (45242,'Cincinnati',1,39.242803,-84.352996),
    (45243,'Cincinnati',1,39.188557,-84.336021),
    (45244,'Cincinnati',1,39.114249,-84.326468),
    (45245,'Cincinnati',1,39.061125,-84.276136),
    (45246,'Cincinnati',1,39.28985,-84.4692),
    (45247,'Cincinnati',1,39.216693,-84.661108),
    (45248,'Cincinnati',1,39.164302,-84.662538),
    (45249,'Cincinnati',1,39.275264,-84.326879),
    (45251,'Cincinnati',1,39.27464,-84.597838),
    (45252,'Cincinnati',1,39.270192,-84.628137),
    (45255,'Cincinnati',1,39.059554,-84.328333);

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
