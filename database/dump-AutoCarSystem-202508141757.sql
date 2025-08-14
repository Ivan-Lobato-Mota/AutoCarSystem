/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: AutoCarSystem
-- ------------------------------------------------------
-- Server version	11.8.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `tb_carro`
--

DROP TABLE IF EXISTS `tb_carro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_carro` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_marca` varchar(100) DEFAULT NULL,
  `car_modelo` varchar(100) DEFAULT NULL,
  `car_placa` varchar(7) DEFAULT NULL,
  `car_ano` varchar(4) DEFAULT NULL,
  `car_cor` varchar(100) DEFAULT NULL,
  `car_valor` float DEFAULT NULL,
  `car_statusid` int(11) DEFAULT NULL,
  `car_venid` int(11) DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  KEY `tb_carro_tb_vendedor_FK` (`car_venid`),
  KEY `tb_carro_tb_status_FK` (`car_statusid`),
  CONSTRAINT `tb_carro_tb_status_FK` FOREIGN KEY (`car_statusid`) REFERENCES `tb_status` (`sta_id`),
  CONSTRAINT `tb_carro_tb_vendedor_FK` FOREIGN KEY (`car_venid`) REFERENCES `tb_vendedor` (`ven_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_carro`
--

LOCK TABLES `tb_carro` WRITE;
/*!40000 ALTER TABLE `tb_carro` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `tb_carro` VALUES
(1,'Toyota','Etios','AAA1AAA','2018','PRATA',60000,1,1),
(2,'VW','Fusca','AIB1504','1970','Branco',80000,1,1),
(3,'VW','Kombi','BTL4759','1985','Azul',85000,1,1);
/*!40000 ALTER TABLE `tb_carro` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `tb_status`
--

DROP TABLE IF EXISTS `tb_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_status` (
  `sta_id` int(11) NOT NULL AUTO_INCREMENT,
  `sta_desc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_status`
--

LOCK TABLES `tb_status` WRITE;
/*!40000 ALTER TABLE `tb_status` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `tb_status` VALUES
(1,'Para Venda'),
(2,'Reservado'),
(3,'Vendido'),
(4,'Excluido'),
(5,'Roubado');
/*!40000 ALTER TABLE `tb_status` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `tb_vendedor`
--

DROP TABLE IF EXISTS `tb_vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_vendedor` (
  `ven_id` int(11) NOT NULL AUTO_INCREMENT,
  `ven_nome` varchar(100) DEFAULT NULL,
  `ven_documento` varchar(14) DEFAULT NULL,
  `ven_rua` varchar(256) DEFAULT NULL,
  `ven_numero` varchar(100) DEFAULT NULL,
  `ven_bairro` varchar(100) DEFAULT NULL,
  `ven_cidade` varchar(100) DEFAULT NULL,
  `ven_estado` varchar(100) DEFAULT NULL,
  `ven_pais` varchar(100) DEFAULT NULL,
  `ven_contato` varchar(100) DEFAULT NULL,
  `ven_contato_alt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ven_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_vendedor`
--

LOCK TABLES `tb_vendedor` WRITE;
/*!40000 ALTER TABLE `tb_vendedor` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `tb_vendedor` VALUES
(1,'José Silva','12346578901','Rua Nilo Peçanha','521','Bom Retiro','Curitiba','PR','BRASIL','(41) 9 9999-9999','(41) 3333-3333');
/*!40000 ALTER TABLE `tb_vendedor` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping routines for database 'AutoCarSystem'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-08-14 17:57:51
