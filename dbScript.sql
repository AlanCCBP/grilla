# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.5.4-MariaDB-1:10.5.4+maria~focal)
# Base de datos: grilldb
# Tiempo de Generación: 2020-07-04 22:49:17 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla grillinfo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `grillinfo`;

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
	(0,0,'color-rojo'),
	(0,1,'#000fff'),
	(0,2,'#000fff'),
	(0,3,'#000fff'),
	(1,0,'#000fff'),
	(1,1,'color-verde'),
	(1,2,'#000fff'),
	(1,3,'#000fff'),
	(2,0,'color-amarillo'),
	(2,1,'#000fff'),
	(2,2,'#000fff'),
	(2,3,'#000fff'),
	(3,0,'#000fff'),
	(3,1,'#000fff'),
	(3,2,'#000fff'),
	(3,3,'#000fff'),
	(4,2,'color-yellow');

/*!40000 ALTER TABLE `grillinfo` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
