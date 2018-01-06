/*
SQLyog - Free MySQL GUI v5.19
Host - 5.0.15-nt : Database - sentimentanalysis
*********************************************************************
Server version : 5.0.15-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `sentimentanalysis`;

USE `sentimentanalysis`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `m_expand_keywords` */

DROP TABLE IF EXISTS `m_expand_keywords`;

CREATE TABLE `m_expand_keywords` (
  `ek_no` int(20) NOT NULL auto_increment,
  `expand_keyword` varchar(100) default NULL,
  `college` varchar(100) default NULL,
  `positive` int(11) default NULL,
  `neutral` int(11) default NULL,
  `negative` int(11) default NULL,
  `status` varchar(10) default 'no',
  PRIMARY KEY  (`ek_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_expand_keywords` */

/*Table structure for table `m_noun` */

DROP TABLE IF EXISTS `m_noun`;

CREATE TABLE `m_noun` (
  `noun_no` int(11) NOT NULL auto_increment,
  `noun` varchar(100) default NULL,
  PRIMARY KEY  (`noun_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_noun` */

insert into `m_noun` (`noun_no`,`noun`) values (1,'apple');
insert into `m_noun` (`noun_no`,`noun`) values (2,'youtube');
insert into `m_noun` (`noun_no`,`noun`) values (3,'siri');
insert into `m_noun` (`noun_no`,`noun`) values (4,'youtube');
insert into `m_noun` (`noun_no`,`noun`) values (5,'switch');
insert into `m_noun` (`noun_no`,`noun`) values (6,'ios');
insert into `m_noun` (`noun_no`,`noun`) values (7,'twitter');
insert into `m_noun` (`noun_no`,`noun`) values (8,'blackberry');
insert into `m_noun` (`noun_no`,`noun`) values (9,'companies');
insert into `m_noun` (`noun_no`,`noun`) values (10,'zappos ');
insert into `m_noun` (`noun_no`,`noun`) values (11,'philliprowntree ');
insert into `m_noun` (`noun_no`,`noun`) values (12,'developer');
insert into `m_noun` (`noun_no`,`noun`) values (13,'android');
insert into `m_noun` (`noun_no`,`noun`) values (14,'iphone');
insert into `m_noun` (`noun_no`,`noun`) values (15,'ipad');
insert into `m_noun` (`noun_no`,`noun`) values (16,'video');
insert into `m_noun` (`noun_no`,`noun`) values (17,'twitter');
insert into `m_noun` (`noun_no`,`noun`) values (18,'android');
insert into `m_noun` (`noun_no`,`noun`) values (19,'time');
insert into `m_noun` (`noun_no`,`noun`) values (20,'ios');
insert into `m_noun` (`noun_no`,`noun`) values (21,'software');
insert into `m_noun` (`noun_no`,`noun`) values (22,'ipad');
insert into `m_noun` (`noun_no`,`noun`) values (23,'apple');
insert into `m_noun` (`noun_no`,`noun`) values (24,'ios');
insert into `m_noun` (`noun_no`,`noun`) values (25,'ass');
insert into `m_noun` (`noun_no`,`noun`) values (26,'photos');
insert into `m_noun` (`noun_no`,`noun`) values (27,'room');
insert into `m_noun` (`noun_no`,`noun`) values (28,'todays');
insert into `m_noun` (`noun_no`,`noun`) values (29,'albestmal');
insert into `m_noun` (`noun_no`,`noun`) values (30,'icloud');
insert into `m_noun` (`noun_no`,`noun`) values (31,'dropbox');
insert into `m_noun` (`noun_no`,`noun`) values (32,'market');
insert into `m_noun` (`noun_no`,`noun`) values (33,'app');
insert into `m_noun` (`noun_no`,`noun`) values (34,'december');
insert into `m_noun` (`noun_no`,`noun`) values (35,'countries');
insert into `m_noun` (`noun_no`,`noun`) values (36,'momygaga');
insert into `m_noun` (`noun_no`,`noun`) values (37,'pampers');
insert into `m_noun` (`noun_no`,`noun`) values (38,'baby');
insert into `m_noun` (`noun_no`,`noun`) values (39,'world');
insert into `m_noun` (`noun_no`,`noun`) values (40,'daughter');
insert into `m_noun` (`noun_no`,`noun`) values (41,'robot');
insert into `m_noun` (`noun_no`,`noun`) values (42,'assistant');
insert into `m_noun` (`noun_no`,`noun`) values (43,'month');
insert into `m_noun` (`noun_no`,`noun`) values (44,'ice');
insert into `m_noun` (`noun_no`,`noun`) values (45,'cream');
insert into `m_noun` (`noun_no`,`noun`) values (46,'sandwitch');
insert into `m_noun` (`noun_no`,`noun`) values (47,'google');
insert into `m_noun` (`noun_no`,`noun`) values (48,'nexus');
insert into `m_noun` (`noun_no`,`noun`) values (49,'avtar');
insert into `m_noun` (`noun_no`,`noun`) values (50,'bigmama');
insert into `m_noun` (`noun_no`,`noun`) values (51,'day');
insert into `m_noun` (`noun_no`,`noun`) values (52,'blaze');
insert into `m_noun` (`noun_no`,`noun`) values (53,'icecreamsandwich');
insert into `m_noun` (`noun_no`,`noun`) values (54,'job');
insert into `m_noun` (`noun_no`,`noun`) values (55,'samsung');
insert into `m_noun` (`noun_no`,`noun`) values (56,'galaxy');
insert into `m_noun` (`noun_no`,`noun`) values (57,'santorums');
insert into `m_noun` (`noun_no`,`noun`) values (58,'chucktodd');
insert into `m_noun` (`noun_no`,`noun`) values (59,'dates');
insert into `m_noun` (`noun_no`,`noun`) values (60,'battery');
insert into `m_noun` (`noun_no`,`noun`) values (61,'androidbeam');
insert into `m_noun` (`noun_no`,`noun`) values (62,'life');
insert into `m_noun` (`noun_no`,`noun`) values (63,'twitter');
insert into `m_noun` (`noun_no`,`noun`) values (64,'postgazette');
insert into `m_noun` (`noun_no`,`noun`) values (65,'pittsburgh');
insert into `m_noun` (`noun_no`,`noun`) values (66,'mommygaga');
insert into `m_noun` (`noun_no`,`noun`) values (67,'albertmal');
insert into `m_noun` (`noun_no`,`noun`) values (68,'lion');
insert into `m_noun` (`noun_no`,`noun`) values (69,'iphones');
insert into `m_noun` (`noun_no`,`noun`) values (70,'htcgalaxy');
insert into `m_noun` (`noun_no`,`noun`) values (71,'wphone');
insert into `m_noun` (`noun_no`,`noun`) values (72,'jewelz');
insert into `m_noun` (`noun_no`,`noun`) values (73,'inbox');
insert into `m_noun` (`noun_no`,`noun`) values (74,'cap');
insert into `m_noun` (`noun_no`,`noun`) values (75,'edatpost');
insert into `m_noun` (`noun_no`,`noun`) values (76,'fan');
insert into `m_noun` (`noun_no`,`noun`) values (77,'thesavoia');
insert into `m_noun` (`noun_no`,`noun`) values (78,'stevejobs');
insert into `m_noun` (`noun_no`,`noun`) values (79,'tech');
insert into `m_noun` (`noun_no`,`noun`) values (80,'dailydealchat');
insert into `m_noun` (`noun_no`,`noun`) values (81,'bar');
insert into `m_noun` (`noun_no`,`noun`) values (82,'edatpost');
insert into `m_noun` (`noun_no`,`noun`) values (83,'video');
insert into `m_noun` (`noun_no`,`noun`) values (84,'nike');
insert into `m_noun` (`noun_no`,`noun`) values (85,'motoactiv');
insert into `m_noun` (`noun_no`,`noun`) values (86,'methinks');
insert into `m_noun` (`noun_no`,`noun`) values (87,'mohamedg');
insert into `m_noun` (`noun_no`,`noun`) values (88,'day');
insert into `m_noun` (`noun_no`,`noun`) values (89,'ice');
insert into `m_noun` (`noun_no`,`noun`) values (90,'cream');
insert into `m_noun` (`noun_no`,`noun`) values (91,'sandwich');
insert into `m_noun` (`noun_no`,`noun`) values (92,'google');
insert into `m_noun` (`noun_no`,`noun`) values (93,'bigmama');
insert into `m_noun` (`noun_no`,`noun`) values (94,'nexus');
insert into `m_noun` (`noun_no`,`noun`) values (95,'avtar');
insert into `m_noun` (`noun_no`,`noun`) values (96,'titaramas');
insert into `m_noun` (`noun_no`,`noun`) values (97,'nexusprime');
insert into `m_noun` (`noun_no`,`noun`) values (98,'spacecanard');
insert into `m_noun` (`noun_no`,`noun`) values (99,'todays');
insert into `m_noun` (`noun_no`,`noun`) values (100,'image');
insert into `m_noun` (`noun_no`,`noun`) values (101,'already');
insert into `m_noun` (`noun_no`,`noun`) values (102,'hmmm');
insert into `m_noun` (`noun_no`,`noun`) values (103,'appthe');
insert into `m_noun` (`noun_no`,`noun`) values (104,'thing');
insert into `m_noun` (`noun_no`,`noun`) values (105,'didnt');
insert into `m_noun` (`noun_no`,`noun`) values (106,'dennisritchie');
insert into `m_noun` (`noun_no`,`noun`) values (107,'guys');
insert into `m_noun` (`noun_no`,`noun`) values (108,'ballmer');
insert into `m_noun` (`noun_no`,`noun`) values (109,'bing');
insert into `m_noun` (`noun_no`,`noun`) values (110,'people');
insert into `m_noun` (`noun_no`,`noun`) values (111,'googles');
insert into `m_noun` (`noun_no`,`noun`) values (112,'coach');
insert into `m_noun` (`noun_no`,`noun`) values (113,'phone');
insert into `m_noun` (`noun_no`,`noun`) values (114,'monopoly');
insert into `m_noun` (`noun_no`,`noun`) values (115,'galaxynexus');
insert into `m_noun` (`noun_no`,`noun`) values (116,'perils');
insert into `m_noun` (`noun_no`,`noun`) values (117,'gizmodo');
insert into `m_noun` (`noun_no`,`noun`) values (118,'phonevia');
insert into `m_noun` (`noun_no`,`noun`) values (119,'docs');
insert into `m_noun` (`noun_no`,`noun`) values (120,'seal');
insert into `m_noun` (`noun_no`,`noun`) values (121,'console');
insert into `m_noun` (`noun_no`,`noun`) values (122,'gplus');
insert into `m_noun` (`noun_no`,`noun`) values (123,'googleplus');
insert into `m_noun` (`noun_no`,`noun`) values (124,'teamfollowback');
insert into `m_noun` (`noun_no`,`noun`) values (125,'socialnetwork');
insert into `m_noun` (`noun_no`,`noun`) values (126,'iit');

/*Table structure for table `m_sensitive_keywords` */

DROP TABLE IF EXISTS `m_sensitive_keywords`;

CREATE TABLE `m_sensitive_keywords` (
  `sk_no` int(100) NOT NULL auto_increment,
  `type` varchar(200) default NULL,
  `keywords` varchar(300) default NULL,
  `iteration` varchar(200) default NULL,
  PRIMARY KEY  (`sk_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_sensitive_keywords` */

insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1,'positive','swype','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (2,'neutral','crack','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (4,'positive','duet','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (5,'positive','easy','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (6,'positive','reason','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (7,'negative','disappointed','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (8,'negative','far','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (9,'positive','happyplace','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (10,'positive','glad','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (11,'positive','humor','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (12,'positive','tonight','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (13,'positive','great','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (14,'positive','ceremoniously ','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (15,'negative','public','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (16,'positive','use','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (17,'positive','great','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (18,'positive','best','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (20,'negative','final','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (21,'positive','love','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (22,'neutral','think','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (23,'neutral','something','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (24,'neutral','body','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (26,'neutral','sense','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (27,'positive','regent','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (28,'positive','hope','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (54,'negative','dead','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (55,'negative','fail','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (56,'neutral','total','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (63,'positive','remember','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (64,'positive','new','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (65,'negative','fail','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (66,'negative','dead','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (67,'negative','pain','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (68,'negative','garbage','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (69,'negative','trouble','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (70,'negative','down','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (71,'negative','nohelp','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (72,'negative','lower','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (73,'negative','evil','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (74,'neutral','headlinine','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (75,'neutral','report','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (76,'neutral','quarter','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (77,'neutral','expand','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (78,'neutral','memory','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (79,'neutral','virtual','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (80,'neutral','coincidence','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (81,'neutral','rolling','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (83,'positive','exite','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (84,'positive','nice','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (85,'positive','like','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (86,'positive','look','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (87,'positive','amazing','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (88,'negative','forget','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (89,'negative','miss','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (90,'neutral','feature','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (92,'positive','amazing','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (94,'positive','electability','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (95,'negative','shit','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (96,'negative','infofail','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (97,'negative','problem','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (98,'negative','loss','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (99,'negative','argument','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (100,'negative','launchfail','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (101,'negative','fail','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (102,'negative','cant','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (103,'negative','impact','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (105,'neutral','doubledigit','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (106,'neutral','found','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (107,'neutral','add','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (108,'neutral','recruiting','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (109,'neutral','tool','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (110,'neutral','offers','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (111,'neutral','compete','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (112,'neutral','groupon','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (113,'neutral','live','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (114,'positive','security','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (115,'positive','recognition','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (116,'neutral','facial','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (117,'neutral','revamps','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (118,'neutral','unveils','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (119,'negative','actually','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (120,'positive','experience','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (121,'positive','suggest','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (122,'positive','magical','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (123,'neutral','found','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (124,'positive','appreciated','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (125,'negative','talk','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (127,'positive','good','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (128,'neutral','reason','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (129,'negative','actually ','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (134,'positive','good','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (135,'negative','little','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (136,'negative','fucked','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (137,'negative','declined','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (138,'negative','fail','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (139,'negative','airdrop','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (140,'negative','wait','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (141,'negative','exchange','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (142,'negative','hurry','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (143,'negative','release','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (144,'negative','lonely','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (145,'negative','silly','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (146,'negative','kill','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (147,'negative','expensive','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (148,'negative','apparently','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (149,'positive','immediate','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (150,'positive','geneius','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (151,'neutral','eric','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (152,'neutral','spotted','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (153,'neutral','evolution','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (154,'neutral','bidmyway','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (155,'neutral','simple','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (156,'neutral','geneius','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (157,'neutral','dedicated','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (158,'neutral','memory','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (161,'positive','good','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (162,'positive','pretty','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (163,'positive','look','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (164,'positive','nice','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (165,'positive','website','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (166,'positive','better','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (167,'positive','use','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (168,'positive','help','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (169,'positive','new','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (170,'positive','feel','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (171,'positive','decide','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (172,'positive','storage','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (173,'negative','try','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (174,'negative','tonight','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (175,'negative','fail','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (176,'negative','admire','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (177,'negative','crash','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (178,'negative','revolution','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (179,'negative','hire','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (180,'negative','unveil','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (181,'negative','whoring','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (182,'positive','supreme','initial');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (887,'neutral','iim','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (888,'neutral','risk','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (889,'neutral','project','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (890,'neutral','hyderabad','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (891,'neutral','research','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (892,'neutral','rahulroushan','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (893,'neutral','gd','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (894,'neutral','bakshi','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (895,'neutral','speech','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (896,'neutral','madras','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (897,'neutral','becomes','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (898,'neutral','hate','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (899,'neutral','proburhan','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (900,'neutral','wani','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (901,'neutral','slogans','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (902,'neutral','amnesty','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (903,'neutral','drama','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (904,'neutral','human','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (905,'neutral','right','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (906,'neutral','india','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (907,'neutral','startup','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (908,'neutral','htt','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (909,'neutral','sk','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (910,'neutral','admission','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (911,'neutral','iitnitiiits','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (912,'neutral','vacant','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (913,'neutral','seats','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (914,'neutral','through','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (915,'neutral','spot','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (916,'neutral','round','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (917,'neutral','sir','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (918,'neutral','students','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (919,'neutral','conversation','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (920,'neutral','authoramish','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (921,'neutral','yesterday','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (922,'neutral','north','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (923,'neutral','mumbai','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (924,'neutral','launch','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (925,'neutral','oceanofchurn','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (926,'neutral','iitphoto','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (927,'neutral','credit','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (928,'neutral','vdehejia','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (929,'neutral','part','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (930,'neutral','lang','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (931,'neutral','prakashjavdekar','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (932,'neutral','indian','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (933,'neutral','technology','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (934,'neutral','walkininterview','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (935,'neutral','institute','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (936,'neutral','associate','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (937,'neutral','mysarkarinaukri','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (938,'neutral','medak','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (939,'neutral','interlinking','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (940,'neutral','reanalysis','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (941,'neutral','study','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (942,'positive','officeofssbadal','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (943,'positive','punjab','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (944,'positive','govt','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (945,'positive','focus','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (946,'positive','bolster','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (947,'positive','education','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (948,'positive','sector','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (949,'positive','gets','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (950,'positive','reflected','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (951,'positive','advent','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (952,'positive','universities','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (953,'positive','ropar','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (954,'positive','ope','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (955,'neutral','ohshiit','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (956,'neutral','cute','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (957,'neutral','bhubaneswar','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (958,'neutral','mentor','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (959,'neutral','biggest','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (960,'neutral','delhi','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (961,'neutral','women','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (962,'neutral','entrepreneurship','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (963,'neutral','iitm','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (964,'neutral','student','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (965,'neutral','https','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (966,'neutral','pmoindia','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (967,'neutral','sudhirchaudhary','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (968,'neutral','make','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (969,'neutral','sanjeevsanyal','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (970,'neutral','ii','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (971,'neutral','silkboard','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (972,'neutral','traffic','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (973,'neutral','update','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (974,'neutral','three','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (975,'neutral','iitiim','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (976,'neutral','grads','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (977,'neutral','sharing','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (978,'neutral','uber','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (979,'neutral','pool','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (980,'neutral','stuck','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (981,'neutral','btm','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (982,'neutral','water','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (983,'neutral','tank','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (984,'neutral','started','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (985,'neutral','foodtech','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (986,'neutral','company','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (987,'neutral','official','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (988,'neutral','isummit','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (989,'neutral','aug','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (990,'neutral','ganeshchetan','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (991,'neutral','come','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (992,'neutral','under','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (993,'neutral','act','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (994,'neutral','policy','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (995,'neutral','nobody','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (996,'neutral','knows','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (997,'neutral','hindi','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (998,'neutral','board','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (999,'neutral','ibm','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1000,'neutral','openpower','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1001,'neutral','iitbombay','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1002,'neutral','bombay','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1003,'neutral','want','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1004,'neutral','hai','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1005,'neutral','kanpur','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1006,'neutral','main','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1007,'neutral','features','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1008,'neutral','work','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1009,'neutral','concept','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1010,'neutral','physics','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1011,'neutral','youth','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1012,'neutral','physicist','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1013,'neutral','boy','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1014,'positive','arvind','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1015,'neutral','rajivmessage','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1016,'neutral','two','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1017,'neutral','iitians','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1018,'neutral','write','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1019,'neutral','defence','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1020,'neutral','bakshis','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1021,'neutral','controversial','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1022,'neutral','hrdministry','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1023,'neutral','iitntiiits','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1024,'positive','post','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1025,'neutral','java','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1026,'neutral','programmer','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1027,'neutral','nse','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1028,'neutral','organising','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1029,'neutral','hackathon','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1030,'neutral','onthamp','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1031,'neutral','thaug','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1032,'neutral','iitbombayraunaq','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1033,'neutral','register','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1034,'neutral','sarkari','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1035,'neutral','naukri','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1036,'neutral','car','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1037,'neutral','httweets','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1038,'neutral','year','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1039,'neutral','sarkarinaukri','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1040,'neutral','govtjobs','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1041,'neutral','junior','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1042,'neutral','fellow','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1043,'neutral','jrf','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1044,'positive','liquor','expansion');
insert into `m_sensitive_keywords` (`sk_no`,`type`,`keywords`,`iteration`) values (1045,'neutral','sept','expansion');

/*Table structure for table `m_sentiment` */

DROP TABLE IF EXISTS `m_sentiment`;

CREATE TABLE `m_sentiment` (
  `s_no` int(10) NOT NULL auto_increment,
  `college` varchar(30) default NULL,
  `positive_count` int(100) default NULL,
  `negative_count` int(100) default NULL,
  `neutral_count` int(100) default NULL,
  `undecidable_count` int(100) default NULL,
  `totalcount` int(100) default NULL,
  PRIMARY KEY  (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_sentiment` */

/*Table structure for table `m_tweet_keywords` */

DROP TABLE IF EXISTS `m_tweet_keywords`;

CREATE TABLE `m_tweet_keywords` (
  `id` int(100) NOT NULL,
  `college` varchar(150) default NULL,
  `tweettext` varchar(300) default NULL,
  PRIMARY KEY  (`id`),
  CONSTRAINT `m_tweet_keywords_ibfk_1` FOREIGN KEY (`id`) REFERENCES `m_tweets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_tweet_keywords` */

/*Table structure for table `m_tweets` */

DROP TABLE IF EXISTS `m_tweets`;

CREATE TABLE `m_tweets` (
  `id` int(200) NOT NULL auto_increment,
  `college` varchar(200) default NULL,
  `tweettext` varchar(1000) default NULL,
  `detected_sentiment` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_tweets` */

/*Table structure for table `m_word` */

DROP TABLE IF EXISTS `m_word`;

CREATE TABLE `m_word` (
  `w_no` int(10) NOT NULL auto_increment,
  `w_word` char(50) NOT NULL,
  `w_words` varchar(1000) default NULL,
  PRIMARY KEY  (`w_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_word` */

insert into `m_word` (`w_no`,`w_word`,`w_words`) values (1,'use','use-useful-usefully-uses-used');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (2,'great','great-greatly-greatful');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (3,'happy','happy-happyness-happyly-happiest');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (5,'public','public-publicly');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (6,'final','final-finally');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (7,'like','liking-like-likable');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (8,'look','look-looking-looked');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (9,'live','live-lived-living');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (10,'total','total-totally');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (11,'report','reporting-reports');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (12,'expand','expanded-expands-expanding');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (13,'memory','memories-memorable');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (14,'exite','exiting-exite');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (15,'miss','missing-missed');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (16,'suggest','suggested-suggesting');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (17,'hilary','hilarious');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (18,'realize','realized');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (19,'pretty','prettiest');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (20,'help','helps-helping');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (21,'hope','hoping');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (22,'look','looking');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (23,'crash','crashed-crashing');
insert into `m_word` (`w_no`,`w_word`,`w_words`) values (24,'admire','admirably');

/*Table structure for table `t_word` */

DROP TABLE IF EXISTS `t_word`;

CREATE TABLE `t_word` (
  `f_code` int(10) NOT NULL auto_increment,
  `f_word` varchar(30) default NULL,
  PRIMARY KEY  (`f_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_word` */

insert into `t_word` (`f_code`,`f_word`) values (1,'is');
insert into `t_word` (`f_code`,`f_word`) values (2,'was');
insert into `t_word` (`f_code`,`f_word`) values (3,'that');
insert into `t_word` (`f_code`,`f_word`) values (4,'this');
insert into `t_word` (`f_code`,`f_word`) values (5,'where');
insert into `t_word` (`f_code`,`f_word`) values (6,'the');
insert into `t_word` (`f_code`,`f_word`) values (7,'am');
insert into `t_word` (`f_code`,`f_word`) values (8,'he');
insert into `t_word` (`f_code`,`f_word`) values (9,'she');
insert into `t_word` (`f_code`,`f_word`) values (10,'it');
insert into `t_word` (`f_code`,`f_word`) values (11,'they');
insert into `t_word` (`f_code`,`f_word`) values (12,'hello');
insert into `t_word` (`f_code`,`f_word`) values (13,'are');
insert into `t_word` (`f_code`,`f_word`) values (14,'how');
insert into `t_word` (`f_code`,`f_word`) values (15,'you');
insert into `t_word` (`f_code`,`f_word`) values (17,'where');
insert into `t_word` (`f_code`,`f_word`) values (18,'short');
insert into `t_word` (`f_code`,`f_word`) values (19,'tall');
insert into `t_word` (`f_code`,`f_word`) values (20,'big');
insert into `t_word` (`f_code`,`f_word`) values (21,'with');
insert into `t_word` (`f_code`,`f_word`) values (22,'all');
insert into `t_word` (`f_code`,`f_word`) values (23,'etc');
insert into `t_word` (`f_code`,`f_word`) values (24,'see');
insert into `t_word` (`f_code`,`f_word`) values (25,'saw');
insert into `t_word` (`f_code`,`f_word`) values (26,'my');
insert into `t_word` (`f_code`,`f_word`) values (27,'am');
insert into `t_word` (`f_code`,`f_word`) values (28,'i');
insert into `t_word` (`f_code`,`f_word`) values (29,'do');
insert into `t_word` (`f_code`,`f_word`) values (30,'was');
insert into `t_word` (`f_code`,`f_word`) values (31,'is');
insert into `t_word` (`f_code`,`f_word`) values (32,'not');
insert into `t_word` (`f_code`,`f_word`) values (33,'nor');
insert into `t_word` (`f_code`,`f_word`) values (34,'either');
insert into `t_word` (`f_code`,`f_word`) values (35,'neither');
insert into `t_word` (`f_code`,`f_word`) values (36,'that');
insert into `t_word` (`f_code`,`f_word`) values (37,'over');
insert into `t_word` (`f_code`,`f_word`) values (38,'out');
insert into `t_word` (`f_code`,`f_word`) values (39,'keep');
insert into `t_word` (`f_code`,`f_word`) values (40,'and');
insert into `t_word` (`f_code`,`f_word`) values (41,'from');
insert into `t_word` (`f_code`,`f_word`) values (42,'form');
insert into `t_word` (`f_code`,`f_word`) values (43,'full');
insert into `t_word` (`f_code`,`f_word`) values (44,'the');
insert into `t_word` (`f_code`,`f_word`) values (45,'off');
insert into `t_word` (`f_code`,`f_word`) values (46,'an');
insert into `t_word` (`f_code`,`f_word`) values (47,'or');
insert into `t_word` (`f_code`,`f_word`) values (48,'had');
insert into `t_word` (`f_code`,`f_word`) values (49,'as');
insert into `t_word` (`f_code`,`f_word`) values (50,'to');
insert into `t_word` (`f_code`,`f_word`) values (51,'him');
insert into `t_word` (`f_code`,`f_word`) values (52,'self');
insert into `t_word` (`f_code`,`f_word`) values (53,'data');
insert into `t_word` (`f_code`,`f_word`) values (54,'bad');
insert into `t_word` (`f_code`,`f_word`) values (55,'free');
insert into `t_word` (`f_code`,`f_word`) values (56,'could');
insert into `t_word` (`f_code`,`f_word`) values (57,'can');
insert into `t_word` (`f_code`,`f_word`) values (58,'shall');
insert into `t_word` (`f_code`,`f_word`) values (59,'should');
insert into `t_word` (`f_code`,`f_word`) values (60,'kept');
insert into `t_word` (`f_code`,`f_word`) values (61,'also');
insert into `t_word` (`f_code`,`f_word`) values (62,'on');
insert into `t_word` (`f_code`,`f_word`) values (63,'down');
insert into `t_word` (`f_code`,`f_word`) values (64,'have');
insert into `t_word` (`f_code`,`f_word`) values (65,'has');
insert into `t_word` (`f_code`,`f_word`) values (66,'one');
insert into `t_word` (`f_code`,`f_word`) values (67,'only');
insert into `t_word` (`f_code`,`f_word`) values (68,'in');
insert into `t_word` (`f_code`,`f_word`) values (69,'therefore');
insert into `t_word` (`f_code`,`f_word`) values (70,'then');
insert into `t_word` (`f_code`,`f_word`) values (71,'take');
insert into `t_word` (`f_code`,`f_word`) values (72,'took');
insert into `t_word` (`f_code`,`f_word`) values (73,'need');
insert into `t_word` (`f_code`,`f_word`) values (74,'we');
insert into `t_word` (`f_code`,`f_word`) values (75,'you');
insert into `t_word` (`f_code`,`f_word`) values (76,'yours');
insert into `t_word` (`f_code`,`f_word`) values (77,'one');
insert into `t_word` (`f_code`,`f_word`) values (78,'your');
insert into `t_word` (`f_code`,`f_word`) values (79,'a');
insert into `t_word` (`f_code`,`f_word`) values (80,'be');
insert into `t_word` (`f_code`,`f_word`) values (81,'being');
insert into `t_word` (`f_code`,`f_word`) values (82,'because');
insert into `t_word` (`f_code`,`f_word`) values (83,'cannot');
insert into `t_word` (`f_code`,`f_word`) values (84,'would');
insert into `t_word` (`f_code`,`f_word`) values (85,'not');
insert into `t_word` (`f_code`,`f_word`) values (86,'for');
insert into `t_word` (`f_code`,`f_word`) values (87,'off');
insert into `t_word` (`f_code`,`f_word`) values (88,'of');
insert into `t_word` (`f_code`,`f_word`) values (89,'soon');
insert into `t_word` (`f_code`,`f_word`) values (90,'nothing');
insert into `t_word` (`f_code`,`f_word`) values (91,'top');
insert into `t_word` (`f_code`,`f_word`) values (92,'bottom');
insert into `t_word` (`f_code`,`f_word`) values (93,'down');
insert into `t_word` (`f_code`,`f_word`) values (94,'up');
insert into `t_word` (`f_code`,`f_word`) values (95,'list');
insert into `t_word` (`f_code`,`f_word`) values (96,'start');
insert into `t_word` (`f_code`,`f_word`) values (97,'stop');
insert into `t_word` (`f_code`,`f_word`) values (98,'how');
insert into `t_word` (`f_code`,`f_word`) values (99,'see');
insert into `t_word` (`f_code`,`f_word`) values (100,'sea');
insert into `t_word` (`f_code`,`f_word`) values (101,'these');
insert into `t_word` (`f_code`,`f_word`) values (102,'this');
insert into `t_word` (`f_code`,`f_word`) values (103,'if');
insert into `t_word` (`f_code`,`f_word`) values (104,'else');
insert into `t_word` (`f_code`,`f_word`) values (105,'much');
insert into `t_word` (`f_code`,`f_word`) values (106,'more');
insert into `t_word` (`f_code`,`f_word`) values (107,'most');
insert into `t_word` (`f_code`,`f_word`) values (108,'give');
insert into `t_word` (`f_code`,`f_word`) values (109,'gave');
insert into `t_word` (`f_code`,`f_word`) values (110,'given');
insert into `t_word` (`f_code`,`f_word`) values (111,'bangalore');
insert into `t_word` (`f_code`,`f_word`) values (112,'will');
insert into `t_word` (`f_code`,`f_word`) values (113,'about');
insert into `t_word` (`f_code`,`f_word`) values (114,'above');
insert into `t_word` (`f_code`,`f_word`) values (115,'across');
insert into `t_word` (`f_code`,`f_word`) values (116,'after');
insert into `t_word` (`f_code`,`f_word`) values (117,'along');
insert into `t_word` (`f_code`,`f_word`) values (118,'also');
insert into `t_word` (`f_code`,`f_word`) values (119,'always');
insert into `t_word` (`f_code`,`f_word`) values (120,'because');
insert into `t_word` (`f_code`,`f_word`) values (121,'become');
insert into `t_word` (`f_code`,`f_word`) values (122,'been');
insert into `t_word` (`f_code`,`f_word`) values (123,'before');
insert into `t_word` (`f_code`,`f_word`) values (124,'between');
insert into `t_word` (`f_code`,`f_word`) values (125,'beyond');
insert into `t_word` (`f_code`,`f_word`) values (126,'bill');
insert into `t_word` (`f_code`,`f_word`) values (127,'both');
insert into `t_word` (`f_code`,`f_word`) values (128,'but');
insert into `t_word` (`f_code`,`f_word`) values (129,'by');
insert into `t_word` (`f_code`,`f_word`) values (130,'call');
insert into `t_word` (`f_code`,`f_word`) values (131,'can');
insert into `t_word` (`f_code`,`f_word`) values (132,'detail');
insert into `t_word` (`f_code`,`f_word`) values (133,'do');
insert into `t_word` (`f_code`,`f_word`) values (134,'done');
insert into `t_word` (`f_code`,`f_word`) values (136,'due');
insert into `t_word` (`f_code`,`f_word`) values (137,'during');
insert into `t_word` (`f_code`,`f_word`) values (138,'fill');
insert into `t_word` (`f_code`,`f_word`) values (139,'find');
insert into `t_word` (`f_code`,`f_word`) values (140,'for');
insert into `t_word` (`f_code`,`f_word`) values (141,'further');
insert into `t_word` (`f_code`,`f_word`) values (142,'get');
insert into `t_word` (`f_code`,`f_word`) values (143,'give');
insert into `t_word` (`f_code`,`f_word`) values (144,'go');
insert into `t_word` (`f_code`,`f_word`) values (145,'had');
insert into `t_word` (`f_code`,`f_word`) values (146,'has');
insert into `t_word` (`f_code`,`f_word`) values (147,'hence');
insert into `t_word` (`f_code`,`f_word`) values (148,'her');
insert into `t_word` (`f_code`,`f_word`) values (149,'ie');
insert into `t_word` (`f_code`,`f_word`) values (150,'if');
insert into `t_word` (`f_code`,`f_word`) values (151,'inc');
insert into `t_word` (`f_code`,`f_word`) values (152,'ourselves');
insert into `t_word` (`f_code`,`f_word`) values (153,'ours');
insert into `t_word` (`f_code`,`f_word`) values (154,'our');
insert into `t_word` (`f_code`,`f_word`) values (155,'now');
insert into `t_word` (`f_code`,`f_word`) values (156,'put');
insert into `t_word` (`f_code`,`f_word`) values (157,'should');
insert into `t_word` (`f_code`,`f_word`) values (158,'show');
insert into `t_word` (`f_code`,`f_word`) values (159,'side');
insert into `t_word` (`f_code`,`f_word`) values (160,'since');
insert into `t_word` (`f_code`,`f_word`) values (161,'sincere');
insert into `t_word` (`f_code`,`f_word`) values (162,'six');
insert into `t_word` (`f_code`,`f_word`) values (163,'still');
insert into `t_word` (`f_code`,`f_word`) values (164,'such');
insert into `t_word` (`f_code`,`f_word`) values (165,'system');
insert into `t_word` (`f_code`,`f_word`) values (166,'take');
insert into `t_word` (`f_code`,`f_word`) values (167,'then');
insert into `t_word` (`f_code`,`f_word`) values (168,'thereafter');
insert into `t_word` (`f_code`,`f_word`) values (169,'thereby');
insert into `t_word` (`f_code`,`f_word`) values (170,'to');
insert into `t_word` (`f_code`,`f_word`) values (171,'together');
insert into `t_word` (`f_code`,`f_word`) values (172,'too');
insert into `t_word` (`f_code`,`f_word`) values (173,'toward');
insert into `t_word` (`f_code`,`f_word`) values (174,'upon');
insert into `t_word` (`f_code`,`f_word`) values (175,'us');
insert into `t_word` (`f_code`,`f_word`) values (176,'very');
insert into `t_word` (`f_code`,`f_word`) values (177,'via');
insert into `t_word` (`f_code`,`f_word`) values (178,'was');
insert into `t_word` (`f_code`,`f_word`) values (179,'we');
insert into `t_word` (`f_code`,`f_word`) values (180,'well');
insert into `t_word` (`f_code`,`f_word`) values (181,'were');
insert into `t_word` (`f_code`,`f_word`) values (182,'what');
insert into `t_word` (`f_code`,`f_word`) values (183,'whoever');
insert into `t_word` (`f_code`,`f_word`) values (184,'whole');
insert into `t_word` (`f_code`,`f_word`) values (185,'whose');
insert into `t_word` (`f_code`,`f_word`) values (186,'why');
insert into `t_word` (`f_code`,`f_word`) values (187,'will');
insert into `t_word` (`f_code`,`f_word`) values (188,'sometimes');
insert into `t_word` (`f_code`,`f_word`) values (189,'somewhere');
insert into `t_word` (`f_code`,`f_word`) values (190,'such');
insert into `t_word` (`f_code`,`f_word`) values (191,'seemed');
insert into `t_word` (`f_code`,`f_word`) values (192,'rather');
insert into `t_word` (`f_code`,`f_word`) values (193,'please');
insert into `t_word` (`f_code`,`f_word`) values (194,'or');
insert into `t_word` (`f_code`,`f_word`) values (195,'thanks');
insert into `t_word` (`f_code`,`f_word`) values (196,'thankyou');
insert into `t_word` (`f_code`,`f_word`) values (197,'hello');
insert into `t_word` (`f_code`,`f_word`) values (198,'grounds');
insert into `t_word` (`f_code`,`f_word`) values (199,'values');
insert into `t_word` (`f_code`,`f_word`) values (200,'yet');
insert into `t_word` (`f_code`,`f_word`) values (207,'bye');
insert into `t_word` (`f_code`,`f_word`) values (208,'fell');
insert into `t_word` (`f_code`,`f_word`) values (209,'fall');
insert into `t_word` (`f_code`,`f_word`) values (210,'km');
insert into `t_word` (`f_code`,`f_word`) values (211,'miles');
insert into `t_word` (`f_code`,`f_word`) values (212,'thence');
insert into `t_word` (`f_code`,`f_word`) values (213,'those');
insert into `t_word` (`f_code`,`f_word`) values (214,'though');
insert into `t_word` (`f_code`,`f_word`) values (215,'meanwhile');
insert into `t_word` (`f_code`,`f_word`) values (216,'may');
insert into `t_word` (`f_code`,`f_word`) values (217,'empty');
insert into `t_word` (`f_code`,`f_word`) values (218,'his');
insert into `t_word` (`f_code`,`f_word`) values (219,'have');
insert into `t_word` (`f_code`,`f_word`) values (220,'anyhow');
insert into `t_word` (`f_code`,`f_word`) values (221,'both');
insert into `t_word` (`f_code`,`f_word`) values (222,'top');
insert into `t_word` (`f_code`,`f_word`) values (223,'bottom');
insert into `t_word` (`f_code`,`f_word`) values (224,'even');
insert into `t_word` (`f_code`,`f_word`) values (225,'ever');
insert into `t_word` (`f_code`,`f_word`) values (226,'hasnt');
insert into `t_word` (`f_code`,`f_word`) values (227,'might');
insert into `t_word` (`f_code`,`f_word`) values (228,'namely');
insert into `t_word` (`f_code`,`f_word`) values (229,'nor');
insert into `t_word` (`f_code`,`f_word`) values (230,'not');
insert into `t_word` (`f_code`,`f_word`) values (231,'side');
insert into `t_word` (`f_code`,`f_word`) values (232,'sincere');
insert into `t_word` (`f_code`,`f_word`) values (233,'somehow');
insert into `t_word` (`f_code`,`f_word`) values (234,'terms');
insert into `t_word` (`f_code`,`f_word`) values (235,'tried');
insert into `t_word` (`f_code`,`f_word`) values (236,'values');
insert into `t_word` (`f_code`,`f_word`) values (237,'care');
insert into `t_word` (`f_code`,`f_word`) values (238,'sure');
insert into `t_word` (`f_code`,`f_word`) values (239,'us');
insert into `t_word` (`f_code`,`f_word`) values (240,'show');
insert into `t_word` (`f_code`,`f_word`) values (241,'former');
insert into `t_word` (`f_code`,`f_word`) values (242,'a');
insert into `t_word` (`f_code`,`f_word`) values (243,'b');
insert into `t_word` (`f_code`,`f_word`) values (244,'c');
insert into `t_word` (`f_code`,`f_word`) values (245,'d');
insert into `t_word` (`f_code`,`f_word`) values (246,'e');
insert into `t_word` (`f_code`,`f_word`) values (247,'f');
insert into `t_word` (`f_code`,`f_word`) values (248,'g');
insert into `t_word` (`f_code`,`f_word`) values (249,'h');
insert into `t_word` (`f_code`,`f_word`) values (250,'i');
insert into `t_word` (`f_code`,`f_word`) values (251,'j');
insert into `t_word` (`f_code`,`f_word`) values (252,'k');
insert into `t_word` (`f_code`,`f_word`) values (253,'l');
insert into `t_word` (`f_code`,`f_word`) values (254,'m');
insert into `t_word` (`f_code`,`f_word`) values (255,'n');
insert into `t_word` (`f_code`,`f_word`) values (256,'o');
insert into `t_word` (`f_code`,`f_word`) values (257,'p');
insert into `t_word` (`f_code`,`f_word`) values (258,'q');
insert into `t_word` (`f_code`,`f_word`) values (259,'r');
insert into `t_word` (`f_code`,`f_word`) values (260,'s');
insert into `t_word` (`f_code`,`f_word`) values (261,'t');
insert into `t_word` (`f_code`,`f_word`) values (262,'u');
insert into `t_word` (`f_code`,`f_word`) values (263,'v');
insert into `t_word` (`f_code`,`f_word`) values (264,'w');
insert into `t_word` (`f_code`,`f_word`) values (265,'x');
insert into `t_word` (`f_code`,`f_word`) values (266,'y');
insert into `t_word` (`f_code`,`f_word`) values (267,'z');
insert into `t_word` (`f_code`,`f_word`) values (268,'me');
insert into `t_word` (`f_code`,`f_word`) values (269,'at');
insert into `t_word` (`f_code`,`f_word`) values (270,'lol');
insert into `t_word` (`f_code`,`f_word`) values (271,'just');
insert into `t_word` (`f_code`,`f_word`) values (272,'rt');
insert into `t_word` (`f_code`,`f_word`) values (273,'whores');
insert into `t_word` (`f_code`,`f_word`) values (274,'guy');
insert into `t_word` (`f_code`,`f_word`) values (275,'does');
insert into `t_word` (`f_code`,`f_word`) values (276,'ya');
insert into `t_word` (`f_code`,`f_word`) values (277,'got');
insert into `t_word` (`f_code`,`f_word`) values (278,'bit');
insert into `t_word` (`f_code`,`f_word`) values (279,'im');
insert into `t_word` (`f_code`,`f_word`) values (280,'so');
insert into `t_word` (`f_code`,`f_word`) values (281,'for');
insert into `t_word` (`f_code`,`f_word`) values (282,'st');
insert into `t_word` (`f_code`,`f_word`) values (283,'any');
insert into `t_word` (`f_code`,`f_word`) values (284,'heres');
insert into `t_word` (`f_code`,`f_word`) values (285,'help');
insert into `t_word` (`f_code`,`f_word`) values (286,'st');
insert into `t_word` (`f_code`,`f_word`) values (287,'gen');
insert into `t_word` (`f_code`,`f_word`) values (288,'deals');
insert into `t_word` (`f_code`,`f_word`) values (289,'wow');
insert into `t_word` (`f_code`,`f_word`) values (290,'ipads');
insert into `t_word` (`f_code`,`f_word`) values (291,'models');
insert into `t_word` (`f_code`,`f_word`) values (292,'rim');
insert into `t_word` (`f_code`,`f_word`) values (293,'ya');
insert into `t_word` (`f_code`,`f_word`) values (294,'into');
insert into `t_word` (`f_code`,`f_word`) values (295,'so');
insert into `t_word` (`f_code`,`f_word`) values (296,'far');
insert into `t_word` (`f_code`,`f_word`) values (297,'sooo');
insert into `t_word` (`f_code`,`f_word`) values (298,'jamaicanidler ');
insert into `t_word` (`f_code`,`f_word`) values (299,'haha');
insert into `t_word` (`f_code`,`f_word`) values (300,'onto');
insert into `t_word` (`f_code`,`f_word`) values (301,'aside');
insert into `t_word` (`f_code`,`f_word`) values (302,'which');
insert into `t_word` (`f_code`,`f_word`) values (303,'best');
insert into `t_word` (`f_code`,`f_word`) values (304,'lmao');
insert into `t_word` (`f_code`,`f_word`) values (305,'wow');
insert into `t_word` (`f_code`,`f_word`) values (306,'any');
insert into `t_word` (`f_code`,`f_word`) values (307,'first');
insert into `t_word` (`f_code`,`f_word`) values (308,'deals');
insert into `t_word` (`f_code`,`f_word`) values (309,'st');
insert into `t_word` (`f_code`,`f_word`) values (310,'close');
insert into `t_word` (`f_code`,`f_word`) values (311,'dying');
insert into `t_word` (`f_code`,`f_word`) values (312,'lolol');
insert into `t_word` (`f_code`,`f_word`) values (313,'hide');
insert into `t_word` (`f_code`,`f_word`) values (314,'user');
insert into `t_word` (`f_code`,`f_word`) values (315,'sums');
insert into `t_word` (`f_code`,`f_word`) values (316,'made');
insert into `t_word` (`f_code`,`f_word`) values (317,'move');
insert into `t_word` (`f_code`,`f_word`) values (318,'said');
insert into `t_word` (`f_code`,`f_word`) values (319,'event');
insert into `t_word` (`f_code`,`f_word`) values (320,'store');
insert into `t_word` (`f_code`,`f_word`) values (321,'apply');
insert into `t_word` (`f_code`,`f_word`) values (322,'stgen');
insert into `t_word` (`f_code`,`f_word`) values (323,'httptcoexbnqjy');
insert into `t_word` (`f_code`,`f_word`) values (324,'things');
insert into `t_word` (`f_code`,`f_word`) values (325,'http');
insert into `t_word` (`f_code`,`f_word`) values (330,'every');
insert into `t_word` (`f_code`,`f_word`) values (331,'goes');
insert into `t_word` (`f_code`,`f_word`) values (332,'there');
insert into `t_word` (`f_code`,`f_word`) values (333,'every');
insert into `t_word` (`f_code`,`f_word`) values (334,'andshuttingdownrunningprograms');
insert into `t_word` (`f_code`,`f_word`) values (335,'reddeersteph, ');
insert into `t_word` (`f_code`,`f_word`) values (336,'andshuttingdownru');
insert into `t_word` (`f_code`,`f_word`) values (337,'pampershelloapps');
insert into `t_word` (`f_code`,`f_word`) values (338,'time');
insert into `t_word` (`f_code`,`f_word`) values (339,'totally');
insert into `t_word` (`f_code`,`f_word`) values (340,'no');
insert into `t_word` (`f_code`,`f_word`) values (341,'apps');
insert into `t_word` (`f_code`,`f_word`) values (342,'undo');
insert into `t_word` (`f_code`,`f_word`) values (343,'joelplane');
insert into `t_word` (`f_code`,`f_word`) values (344,'ive');
insert into `t_word` (`f_code`,`f_word`) values (345,'hear');
insert into `t_word` (`f_code`,`f_word`) values (346,'than');
insert into `t_word` (`f_code`,`f_word`) values (347,'katies');
insert into `t_word` (`f_code`,`f_word`) values (348,'named');
insert into `t_word` (`f_code`,`f_word`) values (349,'than');
insert into `t_word` (`f_code`,`f_word`) values (350,'httptcorenlzgi');
insert into `t_word` (`f_code`,`f_word`) values (351,'icecreamsandwich');
insert into `t_word` (`f_code`,`f_word`) values (352,'here');
insert into `t_word` (`f_code`,`f_word`) values (353,'its');
insert into `t_word` (`f_code`,`f_word`) values (354,'ui');
insert into `t_word` (`f_code`,`f_word`) values (355,'imo');
insert into `t_word` (`f_code`,`f_word`) values (356,'did');
insert into `t_word` (`f_code`,`f_word`) values (357,'anyone');
insert into `t_word` (`f_code`,`f_word`) values (358,'when');
insert into `t_word` (`f_code`,`f_word`) values (359,'simply');
insert into `t_word` (`f_code`,`f_word`) values (360,'another');
insert into `t_word` (`f_code`,`f_word`) values (361,'ics');
insert into `t_word` (`f_code`,`f_word`) values (362,'who');
insert into `t_word` (`f_code`,`f_word`) values (363,'let');
insert into `t_word` (`f_code`,`f_word`) values (364,'know');
insert into `t_word` (`f_code`,`f_word`) values (365,'tfb');
insert into `t_word` (`f_code`,`f_word`) values (366,'taf');
insert into `t_word` (`f_code`,`f_word`) values (367,'anyone');
insert into `t_word` (`f_code`,`f_word`) values (368,'see');
insert into `t_word` (`f_code`,`f_word`) values (369,'httptcoevjihod');
insert into `t_word` (`f_code`,`f_word`) values (370,'httptcoxmrzvkav');
insert into `t_word` (`f_code`,`f_word`) values (371,'next');
insert into `t_word` (`f_code`,`f_word`) values (372,'tom');
insert into `t_word` (`f_code`,`f_word`) values (373,'ipod');
insert into `t_word` (`f_code`,`f_word`) values (374,'incl');
insert into `t_word` (`f_code`,`f_word`) values (375,'reddeersteph');
insert into `t_word` (`f_code`,`f_word`) values (376,'their');
insert into `t_word` (`f_code`,`f_word`) values (377,'fb');
insert into `t_word` (`f_code`,`f_word`) values (378,'needs');
insert into `t_word` (`f_code`,`f_word`) values (379,'without');
insert into `t_word` (`f_code`,`f_word`) values (380,'them');
insert into `t_word` (`f_code`,`f_word`) values (381,'ios');
insert into `t_word` (`f_code`,`f_word`) values (382,'went');
insert into `t_word` (`f_code`,`f_word`) values (383,'comp');
insert into `t_word` (`f_code`,`f_word`) values (384,'cjwallace');
insert into `t_word` (`f_code`,`f_word`) values (385,'mb');
insert into `t_word` (`f_code`,`f_word`) values (386,'sms');
insert into `t_word` (`f_code`,`f_word`) values (387,'tells');
insert into `t_word` (`f_code`,`f_word`) values (388,'ads');
insert into `t_word` (`f_code`,`f_word`) values (389,'app');
insert into `t_word` (`f_code`,`f_word`) values (390,'mac');
insert into `t_word` (`f_code`,`f_word`) values (391,'ipad');
insert into `t_word` (`f_code`,`f_word`) values (392,'moe');
insert into `t_word` (`f_code`,`f_word`) values (393,'plays');
insert into `t_word` (`f_code`,`f_word`) values (394,'maybe');
insert into `t_word` (`f_code`,`f_word`) values (395,'bah');
insert into `t_word` (`f_code`,`f_word`) values (396,'pj');
insert into `t_word` (`f_code`,`f_word`) values (397,'cant');
insert into `t_word` (`f_code`,`f_word`) values (398,'ok');
insert into `t_word` (`f_code`,`f_word`) values (399,'lt');

/*Table structure for table `userlogin` */

DROP TABLE IF EXISTS `userlogin`;

CREATE TABLE `userlogin` (
  `id` int(10) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `dob` varchar(50) default NULL,
  `gender` varchar(50) default NULL,
  `mobnum` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userlogin` */

insert into `userlogin` (`id`,`username`,`password`,`email`,`dob`,`gender`,`mobnum`) values (1,'shanu','shanuvnu','shanusharu@gmail.com','2016-08-17','FEMALE','9999999999');
insert into `userlogin` (`id`,`username`,`password`,`email`,`dob`,`gender`,`mobnum`) values (2,'shalini','shanu123','shanusharu@gmail.com','2016-08-10','MALE','8888888888');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
