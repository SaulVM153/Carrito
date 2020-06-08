CREATE DATABASE  IF NOT EXISTS `cc_decoraciones` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cc_decoraciones`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: cc_decoraciones
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `idCategoria` int(11) NOT NULL,
  `idAdmin` int(11) NOT NULL,
  `NombreProducto` varchar(45) NOT NULL,
  `Stock` int(100) NOT NULL,
  `PrecioProducto` decimal(10,2) NOT NULL,
  `ImagenProducto` varchar(20) NOT NULL,
  `DescripcionProducto` varchar(100) DEFAULT NULL,
  `Estado` bit(1) NOT NULL,
  PRIMARY KEY (`idProducto`),
  UNIQUE KEY `idProducto_UNIQUE` (`idProducto`),
  KEY `idCategoria_idx` (`idCategoria`),
  KEY `idAdmin_idx` (`idAdmin`),
  CONSTRAINT `idAdmin` FOREIGN KEY (`idAdmin`) REFERENCES `administrador` (`idAdmin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idCategoria` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (101,1,1,'Cortina para Baño',100,201.99,'bano_cotina.jpg','Cortina divisora para baño',''),(102,1,1,'Esquinero',54,534.33,'b','Esquinero para soporte de jabones y otros',''),(103,1,1,'Estante',84,609.00,'b','Soporte para productos',''),(104,1,1,'Juego de Baño',84,265.66,'b','Juego de baño para adornar',''),(105,1,1,'Toallero',54,534.59,'b','Soporte para toallas de baño',''),(201,2,1,'Espejo',65,1307.66,'s','Espejos circulares',''),(202,2,1,'Portavelas',73,370.42,'s','Portavelas de forma esferica para centro de mesa',''),(203,2,1,'Reloj',26,577.66,'s','Reloj Sol',''),(204,2,1,'Sillon',9,1560.33,'s','Sillon color azul marino',''),(205,2,1,'Tapete',46,1098.73,'s','Tapete cafe con adornos',''),(301,3,1,'Alacena',54,3296.40,'c','Mueble para trastes y otros recipientes de cocina',''),(302,3,1,'Antecomedor',12,4765.66,'c','Antecomedor para 4 personas',''),(303,3,1,'Base de pastel',54,377.66,'c','Base redonda para pasteles grandes',''),(304,3,1,'Frutero',85,525.85,'c','Recipiente para frutas',''),(305,3,1,'Grifo para lavatrastes',15,314.44,'c','Grifo para lavatrastes ahorrador de agua',''),(401,4,1,'Cajonera',62,2332.33,'h','Cajonera con laterales y cajones de centro',''),(402,4,1,'Comoda',54,2599.00,'h','Mueble para cajones de ropa',''),(403,4,1,'Divan',84,3662.09,'h','Mueble color cafe gris',''),(404,4,1,'Lampara',51,922.33,'h','Lampara para tocador o buro',''),(405,4,1,'Repisa',26,457.66,'h','Soporte para objetos de habitacion',''),(501,5,1,'Fuente',54,2130.74,'j','Fuente pequeña de decoracion',''),(502,5,1,'Luces',45,211.33,'j','Luces decorativas para colgar',''),(503,5,1,'Maceta jardinera',15,154.66,'j','Maceta de adorno para jardin',''),(504,5,1,'Mesa de piedra',95,3399.00,'j','Mesa de piedra para 8 a 10 personas',''),(505,5,1,'Soporte de flores',42,2273.40,'j','Soporte para 5 macetas medianas','');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-31 23:58:27
