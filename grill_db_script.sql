# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: grill (MySQL 5.5.5-10.5.4-MariaDB-1:10.5.4+maria~focal)
# Base de datos: grilldb
# Tiempo de Generación: 2020-07-05 22:33:25 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla current_position
# ------------------------------------------------------------

CREATE TABLE `current_position` (
  `id` int(11) unsigned NOT NULL,
  `x_axis` int(11) unsigned NOT NULL,
  `y_axis` int(11) unsigned NOT NULL,
  `selected_color` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `current_position` WRITE;
/*!40000 ALTER TABLE `current_position` DISABLE KEYS */;

INSERT INTO `current_position` (`id`, `x_axis`, `y_axis`, `selected_color`)
VALUES
	(1,19,23,'color-brown');

/*!40000 ALTER TABLE `current_position` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla grillinfo
# ------------------------------------------------------------

CREATE TABLE `grillinfo` (
  `x_axis` int(11) unsigned NOT NULL,
  `y_axis` int(11) unsigned NOT NULL,
  `color_class` varchar(20) NOT NULL DEFAULT 'color-red',
  PRIMARY KEY (`x_axis`,`y_axis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `grillinfo` WRITE;
/*!40000 ALTER TABLE `grillinfo` DISABLE KEYS */;

INSERT INTO `grillinfo` (`x_axis`, `y_axis`, `color_class`)
VALUES
	(0,0,'color-white'),
	(0,1,'color-white'),
	(0,2,'color-white'),
	(0,3,'color-white'),
	(0,4,'color-white'),
	(0,5,'color-white'),
	(0,6,'color-white'),
	(0,7,'color-white'),
	(0,8,'color-white'),
	(0,9,'color-white'),
	(0,10,'color-white'),
	(0,11,'color-white'),
	(0,12,'color-white'),
	(0,13,'color-white'),
	(0,14,'color-white'),
	(0,15,'color-white'),
	(0,16,'color-white'),
	(0,17,'color-white'),
	(0,18,'color-white'),
	(0,19,'color-white'),
	(0,20,'color-white'),
	(0,21,'color-white'),
	(0,22,'color-white'),
	(0,23,'color-white'),
	(0,24,'color-white'),
	(0,25,'color-white'),
	(0,26,'color-white'),
	(0,27,'color-white'),
	(0,28,'color-white'),
	(0,29,'color-white'),
	(0,30,'color-white'),
	(0,31,'color-white'),
	(1,0,'color-white'),
	(1,1,'color-white'),
	(1,2,'color-white'),
	(1,3,'color-white'),
	(1,4,'color-white'),
	(1,5,'color-white'),
	(1,6,'color-white'),
	(1,7,'color-white'),
	(1,8,'color-white'),
	(1,9,'color-white'),
	(1,10,'color-white'),
	(1,11,'color-white'),
	(1,12,'color-white'),
	(1,13,'color-white'),
	(1,14,'color-white'),
	(1,15,'color-white'),
	(1,16,'color-white'),
	(1,17,'color-white'),
	(1,18,'color-white'),
	(1,19,'color-white'),
	(1,20,'color-white'),
	(1,21,'color-white'),
	(1,22,'color-white'),
	(1,23,'color-white'),
	(1,24,'color-white'),
	(1,25,'color-white'),
	(1,26,'color-white'),
	(1,27,'color-white'),
	(1,28,'color-white'),
	(1,29,'color-white'),
	(1,30,'color-white'),
	(1,31,'color-white'),
	(2,0,'color-white'),
	(2,1,'color-white'),
	(2,2,'color-white'),
	(2,3,'color-white'),
	(2,4,'color-white'),
	(2,5,'color-white'),
	(2,6,'color-white'),
	(2,7,'color-white'),
	(2,8,'color-white'),
	(2,9,'color-white'),
	(2,10,'color-white'),
	(2,11,'color-white'),
	(2,12,'color-white'),
	(2,13,'color-white'),
	(2,14,'color-white'),
	(2,15,'color-white'),
	(2,16,'color-white'),
	(2,17,'color-white'),
	(2,18,'color-white'),
	(2,19,'color-white'),
	(2,20,'color-white'),
	(2,21,'color-white'),
	(2,22,'color-white'),
	(2,23,'color-white'),
	(2,24,'color-white'),
	(2,25,'color-white'),
	(2,26,'color-white'),
	(2,27,'color-white'),
	(2,28,'color-white'),
	(2,29,'color-white'),
	(2,30,'color-white'),
	(2,31,'color-white'),
	(3,0,'color-white'),
	(3,1,'color-white'),
	(3,2,'color-white'),
	(3,3,'color-white'),
	(3,4,'color-white'),
	(3,5,'color-white'),
	(3,6,'color-white'),
	(3,7,'color-white'),
	(3,8,'color-white'),
	(3,9,'color-white'),
	(3,10,'color-white'),
	(3,11,'color-white'),
	(3,12,'color-white'),
	(3,13,'color-white'),
	(3,14,'color-white'),
	(3,15,'color-white'),
	(3,16,'color-white'),
	(3,17,'color-white'),
	(3,18,'color-white'),
	(3,19,'color-white'),
	(3,20,'color-white'),
	(3,21,'color-white'),
	(3,22,'color-white'),
	(3,23,'color-white'),
	(3,24,'color-white'),
	(3,25,'color-white'),
	(3,26,'color-white'),
	(3,27,'color-white'),
	(3,28,'color-white'),
	(3,29,'color-white'),
	(3,30,'color-white'),
	(3,31,'color-white'),
	(4,0,'color-white'),
	(4,1,'color-white'),
	(4,2,'color-white'),
	(4,3,'color-white'),
	(4,4,'color-white'),
	(4,5,'color-white'),
	(4,6,'color-white'),
	(4,7,'color-white'),
	(4,8,'color-white'),
	(4,9,'color-white'),
	(4,10,'color-white'),
	(4,11,'color-white'),
	(4,12,'color-white'),
	(4,13,'color-white'),
	(4,14,'color-white'),
	(4,15,'color-white'),
	(4,16,'color-white'),
	(4,17,'color-white'),
	(4,18,'color-white'),
	(4,19,'color-white'),
	(4,20,'color-white'),
	(4,21,'color-white'),
	(4,22,'color-white'),
	(4,23,'color-white'),
	(4,24,'color-white'),
	(4,25,'color-white'),
	(4,26,'color-white'),
	(4,27,'color-white'),
	(4,28,'color-white'),
	(4,29,'color-white'),
	(4,30,'color-white'),
	(4,31,'color-white'),
	(5,0,'color-white'),
	(5,1,'color-white'),
	(5,2,'color-white'),
	(5,3,'color-white'),
	(5,4,'color-white'),
	(5,5,'color-white'),
	(5,6,'color-white'),
	(5,7,'color-white'),
	(5,8,'color-white'),
	(5,9,'color-white'),
	(5,10,'color-white'),
	(5,11,'color-white'),
	(5,12,'color-white'),
	(5,13,'color-white'),
	(5,14,'color-white'),
	(5,15,'color-white'),
	(5,16,'color-white'),
	(5,17,'color-white'),
	(5,18,'color-white'),
	(5,19,'color-white'),
	(5,20,'color-white'),
	(5,21,'color-white'),
	(5,22,'color-white'),
	(5,23,'color-white'),
	(5,24,'color-white'),
	(5,25,'color-white'),
	(5,26,'color-white'),
	(5,27,'color-white'),
	(5,28,'color-white'),
	(5,29,'color-white'),
	(5,30,'color-white'),
	(5,31,'color-white'),
	(6,0,'color-white'),
	(6,1,'color-white'),
	(6,2,'color-white'),
	(6,3,'color-white'),
	(6,4,'color-white'),
	(6,5,'color-white'),
	(6,6,'color-white'),
	(6,7,'color-white'),
	(6,8,'color-white'),
	(6,9,'color-white'),
	(6,10,'color-white'),
	(6,11,'color-white'),
	(6,12,'color-white'),
	(6,13,'color-white'),
	(6,14,'color-white'),
	(6,15,'color-white'),
	(6,16,'color-white'),
	(6,17,'color-white'),
	(6,18,'color-white'),
	(6,19,'color-white'),
	(6,20,'color-white'),
	(6,21,'color-white'),
	(6,22,'color-white'),
	(6,23,'color-white'),
	(6,24,'color-white'),
	(6,25,'color-white'),
	(6,26,'color-white'),
	(6,27,'color-white'),
	(6,28,'color-white'),
	(6,29,'color-white'),
	(6,30,'color-white'),
	(6,31,'color-white'),
	(7,0,'color-white'),
	(7,1,'color-white'),
	(7,2,'color-white'),
	(7,3,'color-white'),
	(7,4,'color-white'),
	(7,5,'color-white'),
	(7,6,'color-white'),
	(7,7,'color-white'),
	(7,8,'color-white'),
	(7,9,'color-white'),
	(7,10,'color-white'),
	(7,11,'color-white'),
	(7,12,'color-white'),
	(7,13,'color-white'),
	(7,14,'color-white'),
	(7,15,'color-white'),
	(7,16,'color-white'),
	(7,17,'color-white'),
	(7,18,'color-white'),
	(7,19,'color-white'),
	(7,20,'color-white'),
	(7,21,'color-white'),
	(7,22,'color-white'),
	(7,23,'color-white'),
	(7,24,'color-white'),
	(7,25,'color-white'),
	(7,26,'color-white'),
	(7,27,'color-white'),
	(7,28,'color-white'),
	(7,29,'color-white'),
	(7,30,'color-white'),
	(7,31,'color-white'),
	(8,0,'color-white'),
	(8,1,'color-white'),
	(8,2,'color-white'),
	(8,3,'color-white'),
	(8,4,'color-white'),
	(8,5,'color-white'),
	(8,6,'color-white'),
	(8,7,'color-white'),
	(8,8,'color-white'),
	(8,9,'color-white'),
	(8,10,'color-white'),
	(8,11,'color-white'),
	(8,12,'color-white'),
	(8,13,'color-white'),
	(8,14,'color-white'),
	(8,15,'color-white'),
	(8,16,'color-white'),
	(8,17,'color-white'),
	(8,18,'color-white'),
	(8,19,'color-white'),
	(8,20,'color-white'),
	(8,21,'color-white'),
	(8,22,'color-white'),
	(8,23,'color-white'),
	(8,24,'color-white'),
	(8,25,'color-white'),
	(8,26,'color-white'),
	(8,27,'color-white'),
	(8,28,'color-white'),
	(8,29,'color-white'),
	(8,30,'color-white'),
	(8,31,'color-white'),
	(9,0,'color-white'),
	(9,1,'color-white'),
	(9,2,'color-white'),
	(9,3,'color-white'),
	(9,4,'color-white'),
	(9,5,'color-white'),
	(9,6,'color-white'),
	(9,7,'color-white'),
	(9,8,'color-white'),
	(9,9,'color-white'),
	(9,10,'color-white'),
	(9,11,'color-white'),
	(9,12,'color-white'),
	(9,13,'color-white'),
	(9,14,'color-white'),
	(9,15,'color-white'),
	(9,16,'color-white'),
	(9,17,'color-white'),
	(9,18,'color-white'),
	(9,19,'color-white'),
	(9,20,'color-white'),
	(9,21,'color-white'),
	(9,22,'color-white'),
	(9,23,'color-white'),
	(9,24,'color-white'),
	(9,25,'color-white'),
	(9,26,'color-white'),
	(9,27,'color-white'),
	(9,28,'color-white'),
	(9,29,'color-white'),
	(9,30,'color-white'),
	(9,31,'color-white'),
	(10,0,'color-white'),
	(10,1,'color-white'),
	(10,2,'color-white'),
	(10,3,'color-white'),
	(10,4,'color-white'),
	(10,5,'color-white'),
	(10,6,'color-white'),
	(10,7,'color-white'),
	(10,8,'color-white'),
	(10,9,'color-white'),
	(10,10,'color-white'),
	(10,11,'color-white'),
	(10,12,'color-white'),
	(10,13,'color-white'),
	(10,14,'color-white'),
	(10,15,'color-white'),
	(10,16,'color-white'),
	(10,17,'color-white'),
	(10,18,'color-white'),
	(10,19,'color-white'),
	(10,20,'color-white'),
	(10,21,'color-white'),
	(10,22,'color-white'),
	(10,23,'color-white'),
	(10,24,'color-white'),
	(10,25,'color-white'),
	(10,26,'color-white'),
	(10,27,'color-white'),
	(10,28,'color-white'),
	(10,29,'color-white'),
	(10,30,'color-white'),
	(10,31,'color-white'),
	(11,0,'color-white'),
	(11,1,'color-white'),
	(11,2,'color-white'),
	(11,3,'color-white'),
	(11,4,'color-white'),
	(11,5,'color-white'),
	(11,6,'color-white'),
	(11,7,'color-white'),
	(11,8,'color-white'),
	(11,9,'color-white'),
	(11,10,'color-white'),
	(11,11,'color-white'),
	(11,12,'color-white'),
	(11,13,'color-white'),
	(11,14,'color-white'),
	(11,15,'color-white'),
	(11,16,'color-white'),
	(11,17,'color-white'),
	(11,18,'color-white'),
	(11,19,'color-white'),
	(11,20,'color-white'),
	(11,21,'color-white'),
	(11,22,'color-white'),
	(11,23,'color-white'),
	(11,24,'color-white'),
	(11,25,'color-white'),
	(11,26,'color-white'),
	(11,27,'color-white'),
	(11,28,'color-white'),
	(11,29,'color-white'),
	(11,30,'color-white'),
	(11,31,'color-white'),
	(12,0,'color-white'),
	(12,1,'color-white'),
	(12,2,'color-white'),
	(12,3,'color-white'),
	(12,4,'color-white'),
	(12,5,'color-white'),
	(12,6,'color-white'),
	(12,7,'color-white'),
	(12,8,'color-white'),
	(12,9,'color-white'),
	(12,10,'color-white'),
	(12,11,'color-white'),
	(12,12,'color-white'),
	(12,13,'color-white'),
	(12,14,'color-white'),
	(12,15,'color-white'),
	(12,16,'color-white'),
	(12,17,'color-white'),
	(12,18,'color-white'),
	(12,19,'color-white'),
	(12,20,'color-white'),
	(12,21,'color-white'),
	(12,22,'color-white'),
	(12,23,'color-white'),
	(12,24,'color-white'),
	(12,25,'color-white'),
	(12,26,'color-white'),
	(12,27,'color-white'),
	(12,28,'color-white'),
	(12,29,'color-white'),
	(12,30,'color-white'),
	(12,31,'color-white'),
	(13,0,'color-white'),
	(13,1,'color-white'),
	(13,2,'color-white'),
	(13,3,'color-white'),
	(13,4,'color-white'),
	(13,5,'color-white'),
	(13,6,'color-white'),
	(13,7,'color-white'),
	(13,8,'color-white'),
	(13,9,'color-white'),
	(13,10,'color-white'),
	(13,11,'color-white'),
	(13,12,'color-white'),
	(13,13,'color-white'),
	(13,14,'color-white'),
	(13,15,'color-white'),
	(13,16,'color-white'),
	(13,17,'color-white'),
	(13,18,'color-white'),
	(13,19,'color-white'),
	(13,20,'color-white'),
	(13,21,'color-white'),
	(13,22,'color-white'),
	(13,23,'color-white'),
	(13,24,'color-white'),
	(13,25,'color-white'),
	(13,26,'color-white'),
	(13,27,'color-white'),
	(13,28,'color-white'),
	(13,29,'color-white'),
	(13,30,'color-white'),
	(13,31,'color-white'),
	(14,0,'color-white'),
	(14,1,'color-white'),
	(14,2,'color-white'),
	(14,3,'color-white'),
	(14,4,'color-white'),
	(14,5,'color-white'),
	(14,6,'color-white'),
	(14,7,'color-white'),
	(14,8,'color-white'),
	(14,9,'color-white'),
	(14,10,'color-white'),
	(14,11,'color-white'),
	(14,12,'color-white'),
	(14,13,'color-white'),
	(14,14,'color-white'),
	(14,15,'color-white'),
	(14,16,'color-white'),
	(14,17,'color-white'),
	(14,18,'color-white'),
	(14,19,'color-white'),
	(14,20,'color-white'),
	(14,21,'color-white'),
	(14,22,'color-white'),
	(14,23,'color-white'),
	(14,24,'color-white'),
	(14,25,'color-white'),
	(14,26,'color-white'),
	(14,27,'color-white'),
	(14,28,'color-white'),
	(14,29,'color-white'),
	(14,30,'color-white'),
	(14,31,'color-white'),
	(15,0,'color-white'),
	(15,1,'color-white'),
	(15,2,'color-white'),
	(15,3,'color-white'),
	(15,4,'color-white'),
	(15,5,'color-white'),
	(15,6,'color-white'),
	(15,7,'color-white'),
	(15,8,'color-white'),
	(15,9,'color-white'),
	(15,10,'color-white'),
	(15,11,'color-white'),
	(15,12,'color-white'),
	(15,13,'color-white'),
	(15,14,'color-white'),
	(15,15,'color-white'),
	(15,16,'color-white'),
	(15,17,'color-white'),
	(15,18,'color-white'),
	(15,19,'color-white'),
	(15,20,'color-white'),
	(15,21,'color-white'),
	(15,22,'color-white'),
	(15,23,'color-white'),
	(15,24,'color-white'),
	(15,25,'color-white'),
	(15,26,'color-white'),
	(15,27,'color-white'),
	(15,28,'color-white'),
	(15,29,'color-white'),
	(15,30,'color-white'),
	(15,31,'color-white'),
	(16,0,'color-white'),
	(16,1,'color-white'),
	(16,2,'color-white'),
	(16,3,'color-white'),
	(16,4,'color-white'),
	(16,5,'color-white'),
	(16,6,'color-white'),
	(16,7,'color-white'),
	(16,8,'color-white'),
	(16,9,'color-white'),
	(16,10,'color-white'),
	(16,11,'color-white'),
	(16,12,'color-white'),
	(16,13,'color-white'),
	(16,14,'color-white'),
	(16,15,'color-white'),
	(16,16,'color-white'),
	(16,17,'color-white'),
	(16,18,'color-white'),
	(16,19,'color-white'),
	(16,20,'color-white'),
	(16,21,'color-white'),
	(16,22,'color-white'),
	(16,23,'color-white'),
	(16,24,'color-white'),
	(16,25,'color-white'),
	(16,26,'color-white'),
	(16,27,'color-white'),
	(16,28,'color-white'),
	(16,29,'color-white'),
	(16,30,'color-white'),
	(16,31,'color-white'),
	(17,0,'color-white'),
	(17,1,'color-white'),
	(17,2,'color-white'),
	(17,3,'color-white'),
	(17,4,'color-white'),
	(17,5,'color-white'),
	(17,6,'color-white'),
	(17,7,'color-white'),
	(17,8,'color-white'),
	(17,9,'color-white'),
	(17,10,'color-white'),
	(17,11,'color-white'),
	(17,12,'color-white'),
	(17,13,'color-white'),
	(17,14,'color-white'),
	(17,15,'color-white'),
	(17,16,'color-white'),
	(17,17,'color-white'),
	(17,18,'color-white'),
	(17,19,'color-white'),
	(17,20,'color-white'),
	(17,21,'color-white'),
	(17,22,'color-white'),
	(17,23,'color-white'),
	(17,24,'color-white'),
	(17,25,'color-white'),
	(17,26,'color-white'),
	(17,27,'color-white'),
	(17,28,'color-white'),
	(17,29,'color-white'),
	(17,30,'color-white'),
	(17,31,'color-white'),
	(18,0,'color-white'),
	(18,1,'color-white'),
	(18,2,'color-white'),
	(18,3,'color-white'),
	(18,4,'color-white'),
	(18,5,'color-white'),
	(18,6,'color-white'),
	(18,7,'color-white'),
	(18,8,'color-white'),
	(18,9,'color-white'),
	(18,10,'color-white'),
	(18,11,'color-white'),
	(18,12,'color-white'),
	(18,13,'color-white'),
	(18,14,'color-white'),
	(18,15,'color-turquoise'),
	(18,16,'cp'),
	(18,17,'color-white'),
	(18,18,'cp'),
	(18,19,'color-white'),
	(18,20,'color-white'),
	(18,21,'color-white'),
	(18,22,'cp'),
	(18,23,'color-white'),
	(18,24,'color-white'),
	(18,25,'color-white'),
	(18,26,'color-white'),
	(18,27,'color-white'),
	(18,28,'color-white'),
	(18,29,'color-white'),
	(18,30,'color-white'),
	(18,31,'color-white'),
	(19,0,'color-white'),
	(19,1,'color-white'),
	(19,2,'color-white'),
	(19,3,'color-white'),
	(19,4,'color-white'),
	(19,5,'color-white'),
	(19,6,'color-white'),
	(19,7,'color-white'),
	(19,8,'color-white'),
	(19,9,'color-white'),
	(19,10,'color-white'),
	(19,11,'color-white'),
	(19,12,'color-white'),
	(19,13,'color-white'),
	(19,14,'color-white'),
	(19,15,'color-white'),
	(19,16,'color-white'),
	(19,17,'color-white'),
	(19,18,'color-white'),
	(19,19,'color-white'),
	(19,20,'color-white'),
	(19,21,'color-white'),
	(19,22,'color-black'),
	(19,23,'color-brown'),
	(19,24,'color-white'),
	(19,25,'color-white'),
	(19,26,'color-white'),
	(19,27,'color-white'),
	(19,28,'color-white'),
	(19,29,'color-white'),
	(19,30,'color-white'),
	(19,31,'color-white'),
	(20,0,'color-white'),
	(20,1,'color-white'),
	(20,2,'color-white'),
	(20,3,'color-white'),
	(20,4,'color-white'),
	(20,5,'color-white'),
	(20,6,'color-white'),
	(20,7,'color-white'),
	(20,8,'color-white'),
	(20,9,'color-white'),
	(20,10,'color-white'),
	(20,11,'color-white'),
	(20,12,'color-white'),
	(20,13,'color-white'),
	(20,14,'color-white'),
	(20,15,'color-white'),
	(20,16,'color-white'),
	(20,17,'color-white'),
	(20,18,'color-white'),
	(20,19,'color-white'),
	(20,20,'color-white'),
	(20,21,'color-white'),
	(20,22,'color-white'),
	(20,23,'color-white'),
	(20,24,'color-white'),
	(20,25,'color-white'),
	(20,26,'color-white'),
	(20,27,'color-white'),
	(20,28,'color-white'),
	(20,29,'color-white'),
	(20,30,'color-white'),
	(20,31,'color-white'),
	(21,0,'color-white'),
	(21,1,'color-white'),
	(21,2,'color-white'),
	(21,3,'color-white'),
	(21,4,'color-white'),
	(21,5,'color-white'),
	(21,6,'color-white'),
	(21,7,'color-white'),
	(21,8,'color-white'),
	(21,9,'color-white'),
	(21,10,'color-white'),
	(21,11,'color-white'),
	(21,12,'color-white'),
	(21,13,'color-white'),
	(21,14,'color-white'),
	(21,15,'color-white'),
	(21,16,'color-white'),
	(21,17,'color-white'),
	(21,18,'color-white'),
	(21,19,'color-white'),
	(21,20,'color-white'),
	(21,21,'color-white'),
	(21,22,'color-white'),
	(21,23,'color-white'),
	(21,24,'color-white'),
	(21,25,'color-white'),
	(21,26,'color-white'),
	(21,27,'color-white'),
	(21,28,'color-white'),
	(21,29,'color-white'),
	(21,30,'color-white'),
	(21,31,'color-white'),
	(22,0,'color-white'),
	(22,1,'color-white'),
	(22,2,'color-white'),
	(22,3,'color-white'),
	(22,4,'color-white'),
	(22,5,'color-white'),
	(22,6,'color-white'),
	(22,7,'color-white'),
	(22,8,'color-white'),
	(22,9,'color-white'),
	(22,10,'color-white'),
	(22,11,'color-white'),
	(22,12,'color-white'),
	(22,13,'color-white'),
	(22,14,'color-white'),
	(22,15,'color-white'),
	(22,16,'color-white'),
	(22,17,'color-white'),
	(22,18,'color-white'),
	(22,19,'color-white'),
	(22,20,'color-white'),
	(22,21,'color-white'),
	(22,22,'color-white'),
	(22,23,'color-white'),
	(22,24,'color-white'),
	(22,25,'color-white'),
	(22,26,'color-white'),
	(22,27,'color-white'),
	(22,28,'color-white'),
	(22,29,'color-white'),
	(22,30,'color-white'),
	(22,31,'color-white'),
	(23,0,'color-white'),
	(23,1,'color-white'),
	(23,2,'color-white'),
	(23,3,'color-white'),
	(23,4,'color-white'),
	(23,5,'color-white'),
	(23,6,'color-white'),
	(23,7,'color-white'),
	(23,8,'color-white'),
	(23,9,'color-white'),
	(23,10,'color-white'),
	(23,11,'color-white'),
	(23,12,'color-white'),
	(23,13,'color-white'),
	(23,14,'color-white'),
	(23,15,'color-white'),
	(23,16,'color-white'),
	(23,17,'color-white'),
	(23,18,'color-white'),
	(23,19,'color-white'),
	(23,20,'color-white'),
	(23,21,'color-white'),
	(23,22,'color-white'),
	(23,23,'color-white'),
	(23,24,'color-white'),
	(23,25,'color-white'),
	(23,26,'color-white'),
	(23,27,'color-white'),
	(23,28,'color-white'),
	(23,29,'color-white'),
	(23,30,'color-white'),
	(23,31,'color-white'),
	(24,0,'color-white'),
	(24,1,'color-white'),
	(24,2,'color-white'),
	(24,3,'color-white'),
	(24,4,'color-white'),
	(24,5,'color-white'),
	(24,6,'color-white'),
	(24,7,'color-white'),
	(24,8,'color-white'),
	(24,9,'color-white'),
	(24,10,'color-white'),
	(24,11,'color-white'),
	(24,12,'color-white'),
	(24,13,'color-white'),
	(24,14,'color-white'),
	(24,15,'color-white'),
	(24,16,'color-white'),
	(24,17,'color-white'),
	(24,18,'color-white'),
	(24,19,'color-white'),
	(24,20,'color-white'),
	(24,21,'color-white'),
	(24,22,'color-white'),
	(24,23,'color-white'),
	(24,24,'color-white'),
	(24,25,'color-white'),
	(24,26,'color-white'),
	(24,27,'color-white'),
	(24,28,'color-white'),
	(24,29,'color-white'),
	(24,30,'color-white'),
	(24,31,'color-white'),
	(25,0,'color-white'),
	(25,1,'color-white'),
	(25,2,'color-white'),
	(25,3,'color-white'),
	(25,4,'color-white'),
	(25,5,'color-white'),
	(25,6,'color-white'),
	(25,7,'color-white'),
	(25,8,'color-white'),
	(25,9,'color-white'),
	(25,10,'color-white'),
	(25,11,'color-white'),
	(25,12,'color-white'),
	(25,13,'color-white'),
	(25,14,'color-white'),
	(25,15,'color-white'),
	(25,16,'color-white'),
	(25,17,'color-white'),
	(25,18,'color-white'),
	(25,19,'color-white'),
	(25,20,'color-white'),
	(25,21,'color-white'),
	(25,22,'color-white'),
	(25,23,'color-white'),
	(25,24,'color-white'),
	(25,25,'color-white'),
	(25,26,'color-white'),
	(25,27,'color-white'),
	(25,28,'color-white'),
	(25,29,'color-white'),
	(25,30,'color-white'),
	(25,31,'color-white'),
	(26,0,'color-white'),
	(26,1,'color-white'),
	(26,2,'color-white'),
	(26,3,'color-white'),
	(26,4,'color-white'),
	(26,5,'color-white'),
	(26,6,'color-white'),
	(26,7,'color-white'),
	(26,8,'color-white'),
	(26,9,'color-white'),
	(26,10,'color-white'),
	(26,11,'color-white'),
	(26,12,'color-white'),
	(26,13,'color-white'),
	(26,14,'color-white'),
	(26,15,'color-white'),
	(26,16,'color-white'),
	(26,17,'color-white'),
	(26,18,'color-white'),
	(26,19,'color-white'),
	(26,20,'color-white'),
	(26,21,'color-white'),
	(26,22,'color-white'),
	(26,23,'color-white'),
	(26,24,'color-white'),
	(26,25,'color-white'),
	(26,26,'color-white'),
	(26,27,'color-white'),
	(26,28,'color-white'),
	(26,29,'color-white'),
	(26,30,'color-white'),
	(26,31,'color-white'),
	(27,0,'color-white'),
	(27,1,'color-white'),
	(27,2,'color-white'),
	(27,3,'color-white'),
	(27,4,'color-white'),
	(27,5,'color-white'),
	(27,6,'color-white'),
	(27,7,'color-white'),
	(27,8,'color-white'),
	(27,9,'color-white'),
	(27,10,'color-white'),
	(27,11,'color-white'),
	(27,12,'color-white'),
	(27,13,'color-white'),
	(27,14,'color-white'),
	(27,15,'color-white'),
	(27,16,'color-white'),
	(27,17,'color-white'),
	(27,18,'color-white'),
	(27,19,'color-white'),
	(27,20,'color-white'),
	(27,21,'color-white'),
	(27,22,'color-white'),
	(27,23,'color-white'),
	(27,24,'color-white'),
	(27,25,'color-white'),
	(27,26,'color-white'),
	(27,27,'color-white'),
	(27,28,'color-white'),
	(27,29,'color-white'),
	(27,30,'color-white'),
	(27,31,'color-white'),
	(28,0,'color-white'),
	(28,1,'color-white'),
	(28,2,'color-white'),
	(28,3,'color-white'),
	(28,4,'color-white'),
	(28,5,'color-white'),
	(28,6,'color-white'),
	(28,7,'color-white'),
	(28,8,'color-white'),
	(28,9,'color-white'),
	(28,10,'color-white'),
	(28,11,'color-white'),
	(28,12,'color-white'),
	(28,13,'color-white'),
	(28,14,'color-white'),
	(28,15,'color-white'),
	(28,16,'color-white'),
	(28,17,'color-white'),
	(28,18,'color-white'),
	(28,19,'color-white'),
	(28,20,'color-white'),
	(28,21,'color-white'),
	(28,22,'color-white'),
	(28,23,'color-white'),
	(28,24,'color-white'),
	(28,25,'color-white'),
	(28,26,'color-white'),
	(28,27,'color-white'),
	(28,28,'color-white'),
	(28,29,'color-white'),
	(28,30,'color-white'),
	(28,31,'color-white'),
	(29,0,'color-white'),
	(29,1,'color-white'),
	(29,2,'color-white'),
	(29,3,'color-white'),
	(29,4,'color-white'),
	(29,5,'color-white'),
	(29,6,'color-white'),
	(29,7,'color-white'),
	(29,8,'color-white'),
	(29,9,'color-white'),
	(29,10,'color-white'),
	(29,11,'color-white'),
	(29,12,'color-white'),
	(29,13,'color-white'),
	(29,14,'color-white'),
	(29,15,'color-white'),
	(29,16,'color-white'),
	(29,17,'color-white'),
	(29,18,'color-white'),
	(29,19,'color-white'),
	(29,20,'color-white'),
	(29,21,'color-white'),
	(29,22,'color-white'),
	(29,23,'color-white'),
	(29,24,'color-white'),
	(29,25,'color-white'),
	(29,26,'color-white'),
	(29,27,'color-white'),
	(29,28,'color-white'),
	(29,29,'color-white'),
	(29,30,'color-white'),
	(29,31,'color-white'),
	(30,0,'color-white'),
	(30,1,'color-white'),
	(30,2,'color-white'),
	(30,3,'color-white'),
	(30,4,'color-white'),
	(30,5,'color-white'),
	(30,6,'color-white'),
	(30,7,'color-white'),
	(30,8,'color-white'),
	(30,9,'color-white'),
	(30,10,'color-white'),
	(30,11,'color-white'),
	(30,12,'color-white'),
	(30,13,'color-white'),
	(30,14,'color-white'),
	(30,15,'color-white'),
	(30,16,'color-white'),
	(30,17,'color-white'),
	(30,18,'color-white'),
	(30,19,'color-white'),
	(30,20,'color-white'),
	(30,21,'color-white'),
	(30,22,'color-white'),
	(30,23,'color-white'),
	(30,24,'color-white'),
	(30,25,'color-white'),
	(30,26,'color-white'),
	(30,27,'color-white'),
	(30,28,'color-white'),
	(30,29,'color-white'),
	(30,30,'color-white'),
	(30,31,'color-white'),
	(31,0,'color-white'),
	(31,1,'color-white'),
	(31,2,'color-white'),
	(31,3,'color-white'),
	(31,4,'color-white'),
	(31,5,'color-white'),
	(31,6,'color-white'),
	(31,7,'color-white'),
	(31,8,'color-white'),
	(31,9,'color-white'),
	(31,10,'color-white'),
	(31,11,'color-white'),
	(31,12,'color-white'),
	(31,13,'color-white'),
	(31,14,'color-white'),
	(31,15,'color-white'),
	(31,16,'color-white'),
	(31,17,'color-white'),
	(31,18,'color-white'),
	(31,19,'color-white'),
	(31,20,'color-white'),
	(31,21,'color-white'),
	(31,22,'color-white'),
	(31,23,'color-white'),
	(31,24,'color-white'),
	(31,25,'color-white'),
	(31,26,'color-white'),
	(31,27,'color-white'),
	(31,28,'color-white'),
	(31,29,'color-white'),
	(31,30,'color-white'),
	(31,31,'color-white');

/*!40000 ALTER TABLE `grillinfo` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;