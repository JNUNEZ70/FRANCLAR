-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sistema_franclar
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_bitacora_evento`
--

DROP TABLE IF EXISTS `tbl_bitacora_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bitacora_evento` (
  `id_bitacora_evento` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_evento` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_usuario` bigint(3) NOT NULL,
  `id_objeto` bigint(3) NOT NULL,
  `Accion` varchar(30) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_bitacora_evento`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_objeto` (`id_objeto`),
  CONSTRAINT `tbl_bitacora_evento_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_bitacora_evento_ibfk_2` FOREIGN KEY (`id_objeto`) REFERENCES `tbl_objetos` (`id_objeto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bitacora_evento`
--

LOCK TABLES `tbl_bitacora_evento` WRITE;
/*!40000 ALTER TABLE `tbl_bitacora_evento` DISABLE KEYS */;
INSERT INTO `tbl_bitacora_evento` VALUES (1,'2020-12-13 08:26:21',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(2,'2020-12-13 08:26:23',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(3,'2020-12-13 21:56:46',1,25,'	Acceso','INICIÓ SESIÓN'),(4,'2020-12-13 21:56:52',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(5,'2020-12-13 21:56:56',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(6,'2020-12-13 22:01:10',1,4,'Insert','SE INGRESÓ UN NUEVO PACIENTE'),(7,'2020-12-13 22:02:09',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(8,'2020-12-13 22:02:55',1,7,'Insert','SE INGRESÓ UNA NUEVA CITA'),(9,'2020-12-13 22:03:26',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(10,'2020-12-13 22:03:40',1,4,'Insert','SE EDITO UN PACIENTE'),(11,'2020-12-13 22:03:44',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(12,'2020-12-13 22:04:12',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(13,'2020-12-13 22:04:24',1,6,'Insert','SE REALIZO PRECLINICA'),(14,'2020-12-13 22:04:29',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(15,'2020-12-13 22:28:39',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(16,'2020-12-13 22:28:41',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(17,'2020-12-13 22:28:56',1,7,'Insert','SE INGRESÓ UNA NUEVA CITA'),(18,'2020-12-13 22:29:00',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(19,'2020-12-13 22:29:09',1,6,'Insert','SE REALIZO PRECLINICA'),(20,'2020-12-13 22:29:12',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(21,'2020-12-13 22:39:10',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(22,'2020-12-13 22:52:43',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(23,'2020-12-13 22:52:47',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(24,'2020-12-13 22:53:10',1,7,'Insert','SE INGRESÓ UNA NUEVA CITA'),(25,'2020-12-13 22:53:16',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(26,'2020-12-13 22:53:27',1,6,'Insert','SE REALIZO PRECLINICA'),(27,'2020-12-13 22:53:30',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(28,'2020-12-13 22:56:30',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(29,'2020-12-13 22:59:16',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(30,'2020-12-13 23:01:47',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(31,'2020-12-13 23:05:13',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(32,'2020-12-13 23:05:30',1,7,'Insert','SE INGRESÓ UNA NUEVA CITA'),(33,'2020-12-13 23:05:33',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(34,'2020-12-13 23:05:43',1,6,'Insert','SE REALIZO PRECLINICA'),(35,'2020-12-13 23:05:45',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(36,'2020-12-13 23:05:51',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(37,'2020-12-13 23:06:32',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(38,'2020-12-13 23:06:42',1,8,'Acceso','INGRESO A PANTALLA CAJA'),(39,'2020-12-13 23:07:53',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(40,'2020-12-13 23:08:24',1,8,'Acceso','INGRESO A PANTALLA CAJA'),(41,'2020-12-13 23:23:51',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(42,'2020-12-13 23:24:22',1,8,'Acceso','INGRESO A PANTALLA CAJA'),(43,'2020-12-13 23:24:29',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(44,'2020-12-13 23:24:49',1,8,'Acceso','INGRESO A PANTALLA CAJA'),(45,'2020-12-13 23:25:51',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(46,'2020-12-13 23:27:25',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(47,'2020-12-13 23:27:27',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(48,'2020-12-13 23:27:30',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(49,'2020-12-13 23:27:33',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(50,'2020-12-13 23:27:34',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(51,'2020-12-13 23:27:36',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(52,'2020-12-13 23:27:38',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(53,'2020-12-13 23:27:40',1,8,'Acceso','INGRESO A PANTALLA CAJA'),(54,'2020-12-15 21:56:54',1,25,'	Acceso','INICIÓ SESIÓN'),(55,'2020-12-15 21:57:26',1,25,'Acceso','INGRESO A ADMINISTRAR CUENTA'),(56,'2020-12-15 21:57:33',1,25,'Acceso','CERRO SESIÓN'),(57,'2020-12-16 00:03:21',1,25,'	Acceso','INICIÓ SESIÓN'),(58,'2020-12-16 00:03:55',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(59,'2020-12-16 00:04:56',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(60,'2020-12-16 00:07:59',1,21,'Acceso','INGRESO A PANTALLA RESAPALDO DB'),(61,'2020-12-16 00:22:45',1,25,'Acceso','CERRO SESIÓN'),(62,'2020-12-16 00:38:31',1,25,'	Acceso','INICIÓ SESIÓN'),(63,'2020-12-16 00:39:50',1,21,'Acceso','INGRESO A PANTALLA RESAPALDO DB');
/*!40000 ALTER TABLE `tbl_bitacora_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cargo`
--

DROP TABLE IF EXISTS `tbl_cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cargo` (
  `ID_Cargo` int(3) NOT NULL AUTO_INCREMENT,
  `nomb_cargo` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_Cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cargo`
--

LOCK TABLES `tbl_cargo` WRITE;
/*!40000 ALTER TABLE `tbl_cargo` DISABLE KEYS */;
INSERT INTO `tbl_cargo` VALUES (1,'DOCTOR(A'),(2,'ENFERMERO(A)'),(3,'CAJERO(A)'),(4,'LIMPIEZA'),(5,'SEGURIDAD'),(6,'AUTO_REGISTRO');
/*!40000 ALTER TABLE `tbl_cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_citas`
--

DROP TABLE IF EXISTS `tbl_citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_citas` (
  `ID_Cita` bigint(3) NOT NULL AUTO_INCREMENT,
  `ID_Paciente` int(3) NOT NULL,
  `ID_Usuario` bigint(3) NOT NULL,
  `ID_Empleado` int(3) NOT NULL,
  `ID_Especialidad` int(3) NOT NULL,
  `ID_Estado` int(3) NOT NULL,
  `Fec_Creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `Fec_Atencion` date NOT NULL,
  `Hora_Atencion` time NOT NULL,
  `Precio` int(5) NOT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL,
  PRIMARY KEY (`ID_Cita`),
  KEY `ID_Paciente` (`ID_Paciente`),
  KEY `ID_Usuario` (`ID_Usuario`),
  KEY `ID_Servicio` (`ID_Especialidad`),
  KEY `ID_Estado` (`ID_Estado`),
  KEY `ID_Empleado` (`ID_Empleado`),
  CONSTRAINT `tbl_citas_ibfk_4` FOREIGN KEY (`ID_Estado`) REFERENCES `tbl_estado_cita` (`ID_Estado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_citas_ibfk_5` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbl_usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_citas_ibfk_7` FOREIGN KEY (`ID_Paciente`) REFERENCES `tbl_pacientes` (`ID_Paciente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_citas_ibfk_8` FOREIGN KEY (`ID_Especialidad`) REFERENCES `tbl_especialidad` (`ID_especialidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_citas_ibfk_9` FOREIGN KEY (`ID_Empleado`) REFERENCES `tbl_empleado` (`ID_Empleado`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_citas`
--

LOCK TABLES `tbl_citas` WRITE;
/*!40000 ALTER TABLE `tbl_citas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cobros_adicionales`
--

DROP TABLE IF EXISTS `tbl_cobros_adicionales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cobros_adicionales` (
  `ID_cobro_adicional` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion_cobro` varchar(100) NOT NULL,
  `Precio_cobro` int(11) NOT NULL,
  PRIMARY KEY (`ID_cobro_adicional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cobros_adicionales`
--

LOCK TABLES `tbl_cobros_adicionales` WRITE;
/*!40000 ALTER TABLE `tbl_cobros_adicionales` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cobros_adicionales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_consultas`
--

DROP TABLE IF EXISTS `tbl_consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_consultas` (
  `ID_Consulta` bigint(3) NOT NULL AUTO_INCREMENT,
  `ID_Cita` bigint(3) NOT NULL,
  `Diagnostico` varchar(200) NOT NULL,
  `Anamnesis` varchar(500) NOT NULL,
  `Exam_Fisico` varchar(500) NOT NULL,
  `Tratamiento` varchar(200) NOT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL,
  PRIMARY KEY (`ID_Consulta`),
  KEY `ID_Atencion` (`ID_Cita`),
  KEY `ID_Cita` (`ID_Cita`),
  CONSTRAINT `tbl_consultas_ibfk_5` FOREIGN KEY (`ID_Cita`) REFERENCES `tbl_citas` (`ID_Cita`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_consultas`
--

LOCK TABLES `tbl_consultas` WRITE;
/*!40000 ALTER TABLE `tbl_consultas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detalle_factura`
--

DROP TABLE IF EXISTS `tbl_detalle_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detalle_factura` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Factura` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `cobro` int(11) NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `ID_factura` (`ID_Factura`),
  CONSTRAINT `tbl_detalle_factura_ibfk_1` FOREIGN KEY (`ID_Factura`) REFERENCES `tbl_facturas` (`ID_factura`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle_factura`
--

LOCK TABLES `tbl_detalle_factura` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_empleado`
--

DROP TABLE IF EXISTS `tbl_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_empleado` (
  `ID_Empleado` int(3) NOT NULL AUTO_INCREMENT,
  `Nom_Empleado` varchar(50) NOT NULL,
  `ID_Sexo` int(1) NOT NULL,
  `ID_Est_Civil` int(3) NOT NULL,
  `ID_Cargo` int(3) NOT NULL,
  `ID_Especialidad` int(3) NOT NULL,
  `Cedula` varchar(13) NOT NULL,
  `Fec_Nacimiento` date NOT NULL,
  `Dir_Empleado` varchar(255) NOT NULL,
  `Tel_Empleado` int(8) NOT NULL,
  `Cel_Empleado` int(8) NOT NULL,
  `Salario` int(6) NOT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL,
  PRIMARY KEY (`ID_Empleado`),
  KEY `ID_Sexo` (`ID_Sexo`),
  KEY `ID_Est_Civil` (`ID_Est_Civil`),
  KEY `ID_Cargo` (`ID_Cargo`),
  KEY `ID_Especialidad` (`ID_Especialidad`),
  KEY `id_cargo_2` (`ID_Cargo`),
  KEY `id_cargo_3` (`ID_Cargo`),
  CONSTRAINT `tbl_empleado_ibfk_6` FOREIGN KEY (`ID_Cargo`) REFERENCES `tbl_cargo` (`ID_Cargo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_empleado_ibfk_7` FOREIGN KEY (`ID_Especialidad`) REFERENCES `tbl_especialidad` (`ID_especialidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_empleado_ibfk_8` FOREIGN KEY (`ID_Est_Civil`) REFERENCES `tbl_estado_civil` (`ID_Est_Civil`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_empleado_ibfk_9` FOREIGN KEY (`ID_Sexo`) REFERENCES `tbl_sexo` (`ID_Sexo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'JEAN CARLOS NÚÑEZ SALGADO',1,2,1,1,'1111111111111','0000-00-00','Col venezuela sector B.....',22091139,33876298,15000,NULL,NULL,NULL,NULL),(3,'CARLOS FABRICIO NUÑEZ RAMIRES',1,3,2,1,'','0000-00-00','COL. VENEZUELA SECTOR B BLOQUE 8 CASA 17 ',22278000,33876298,30000,NULL,NULL,NULL,NULL),(11,'JOSUE ALLAN GONZALES RAMIRES',1,2,3,3,'0801199714588','1987-10-08','WINFEIUFGEFVDFVDF',22222222,99999999,20000,NULL,NULL,NULL,NULL),(12,'WILDER EDUARDO RAMIRES ',1,1,5,1,'0801199714078','1982-09-05','SJDNVSDHOFIVBDVRFGBRGBRFGBGF',22222222,88888888,20000,NULL,NULL,NULL,NULL),(17,'JEAN CARLOS NUEZ',1,1,6,8,'0801199714079','1980-10-14','ASDSDJNSDSDSDSDD',22222222,99999999,0,NULL,NULL,NULL,NULL),(18,'JOSUE ROLANDO RAMIRES GONZALES',1,1,1,2,'0801199714079','1997-10-14','AASSDSSSDDSDSSSDSDSD',22222222,99999999,20000,NULL,NULL,NULL,NULL),(20,'JOSUE CACERES ACOSTA',1,1,6,8,'0801115556666','1980-10-04','SDSDCSDCSDCSD',22222222,99999999,0,NULL,NULL,NULL,NULL),(21,'JEAN CARLOS RODRIGUEZ',1,1,6,8,'0801199714089','1980-11-10','SDFDFDGBDFGBDFGB',22222222,99999999,0,NULL,NULL,NULL,NULL),(22,'JUAN JOSE RODRIGUEZ ALMENDAREZ',1,1,4,9,'0801199614079','1988-06-14','OSDIUBDINDFDFDF FDDFFDFDFDF',22222222,99999999,10000,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_especialidad`
--

DROP TABLE IF EXISTS `tbl_especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_especialidad` (
  `ID_especialidad` int(3) NOT NULL AUTO_INCREMENT,
  `Descripcion_espec` varchar(30) NOT NULL,
  `Precio` int(5) NOT NULL,
  PRIMARY KEY (`ID_especialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_especialidad`
--

LOCK TABLES `tbl_especialidad` WRITE;
/*!40000 ALTER TABLE `tbl_especialidad` DISABLE KEYS */;
INSERT INTO `tbl_especialidad` VALUES (1,'MEDICINA GENERAL',200),(2,'ORTOPEDIA',800),(3,'FISIOTERAPIA',0),(4,'NUTRICIÓN',0),(5,'ODONTOLOGÍA',0),(6,'PSICOLOGÍA',0),(7,'PODOLOGÍA',0),(8,'Auto_Registro',0),(9,'Sin Especialidad',0);
/*!40000 ALTER TABLE `tbl_especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estado_cita`
--

DROP TABLE IF EXISTS `tbl_estado_cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estado_cita` (
  `ID_Estado` int(3) NOT NULL,
  `Descripcion_est_cita` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_Estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado_cita`
--

LOCK TABLES `tbl_estado_cita` WRITE;
/*!40000 ALTER TABLE `tbl_estado_cita` DISABLE KEYS */;
INSERT INTO `tbl_estado_cita` VALUES (1,'Pendiente'),(2,'Preclínica'),(3,'Pendiente de Pago'),(4,'Pagada'),(5,'Vencida');
/*!40000 ALTER TABLE `tbl_estado_cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estado_civil`
--

DROP TABLE IF EXISTS `tbl_estado_civil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estado_civil` (
  `ID_Est_Civil` int(3) NOT NULL AUTO_INCREMENT,
  `Descripcion_est_civil` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_Est_Civil`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado_civil`
--

LOCK TABLES `tbl_estado_civil` WRITE;
/*!40000 ALTER TABLE `tbl_estado_civil` DISABLE KEYS */;
INSERT INTO `tbl_estado_civil` VALUES (1,'SOLTERO(A)'),(2,'CASADO(A)'),(3,'UNIÓN LIBRE'),(4,'VIUDO(A)'),(5,'DIVORCIADO(A)');
/*!40000 ALTER TABLE `tbl_estado_civil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estado_usuario`
--

DROP TABLE IF EXISTS `tbl_estado_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estado_usuario` (
  `ID_Estado` int(3) NOT NULL,
  `Descripcion` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_Estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado_usuario`
--

LOCK TABLES `tbl_estado_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_estado_usuario` DISABLE KEYS */;
INSERT INTO `tbl_estado_usuario` VALUES (1,'Activo'),(2,'Bloqueado'),(3,'Recuperación'),(4,'Auto_Registro');
/*!40000 ALTER TABLE `tbl_estado_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_expediente`
--

DROP TABLE IF EXISTS `tbl_expediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_expediente` (
  `ID_expediente` bigint(3) NOT NULL AUTO_INCREMENT,
  `ID_paciente` int(3) NOT NULL,
  `ID_Cita` bigint(3) NOT NULL,
  `Fec_atencion` timestamp NOT NULL DEFAULT current_timestamp(),
  `imagen` mediumblob DEFAULT NULL,
  `tipo_imagen` varchar(50) NOT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL,
  PRIMARY KEY (`ID_expediente`),
  KEY `ID_paciente` (`ID_paciente`),
  KEY `ID_consulta` (`ID_Cita`),
  CONSTRAINT `tbl_expediente_ibfk_2` FOREIGN KEY (`ID_paciente`) REFERENCES `tbl_pacientes` (`ID_Paciente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_expediente_ibfk_3` FOREIGN KEY (`ID_Cita`) REFERENCES `tbl_citas` (`ID_Cita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_expediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_facturas`
--

DROP TABLE IF EXISTS `tbl_facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_facturas` (
  `ID_factura` int(11) NOT NULL AUTO_INCREMENT,
  `ID_cita` bigint(3) NOT NULL,
  `ID_Paciente` int(3) NOT NULL,
  `ID_Especialidad` int(3) NOT NULL,
  `Pago` int(11) NOT NULL,
  `Fec_emision` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID_factura`),
  KEY `ID_cita` (`ID_cita`),
  KEY `ID_Paciente` (`ID_Paciente`),
  KEY `ID_Especialidad` (`ID_Especialidad`),
  CONSTRAINT `tbl_facturas_ibfk_1` FOREIGN KEY (`ID_cita`) REFERENCES `tbl_citas` (`ID_Cita`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_facturas_ibfk_2` FOREIGN KEY (`ID_Paciente`) REFERENCES `tbl_pacientes` (`ID_Paciente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_facturas_ibfk_3` FOREIGN KEY (`ID_Especialidad`) REFERENCES `tbl_especialidad` (`ID_especialidad`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_facturas`
--

LOCK TABLES `tbl_facturas` WRITE;
/*!40000 ALTER TABLE `tbl_facturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_fotos_consultas`
--

DROP TABLE IF EXISTS `tbl_fotos_consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_fotos_consultas` (
  `ID_foto` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Cita` bigint(3) NOT NULL,
  `URL_Foto` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_foto`),
  KEY `ID_Cita` (`ID_Cita`),
  CONSTRAINT `tbl_fotos_consultas_ibfk_1` FOREIGN KEY (`ID_Cita`) REFERENCES `tbl_citas` (`ID_Cita`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fotos_consultas`
--

LOCK TABLES `tbl_fotos_consultas` WRITE;
/*!40000 ALTER TABLE `tbl_fotos_consultas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_fotos_consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_objetos`
--

DROP TABLE IF EXISTS `tbl_objetos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_objetos` (
  `id_objeto` bigint(3) NOT NULL,
  `objeto` varchar(25) NOT NULL,
  PRIMARY KEY (`id_objeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_objetos`
--

LOCK TABLES `tbl_objetos` WRITE;
/*!40000 ALTER TABLE `tbl_objetos` DISABLE KEYS */;
INSERT INTO `tbl_objetos` VALUES (1,'vista_personal'),(2,'vista_usuarios'),(3,'vista_parametros_Segurida'),(4,'vista_pacientes'),(5,'vista_consultas'),(6,'vista_preclinica'),(7,'vista_citas'),(8,'vista_caja'),(9,'vista_especialidad'),(10,'vista_cargo'),(11,'vista_diagnóstico'),(12,'vista_estado civil'),(13,'vista_religiones'),(14,'vista_servicios'),(15,'vista_tipo de sangre'),(16,'vista_sexo'),(17,'vista_preguntas'),(18,'vista_parentesco'),(19,'vista_Roles'),(20,'vista_parametros_Sistema'),(21,'vista_Respaldo_DB'),(22,'Vista_Restauración_DB'),(23,'vista_Cobros_Adicionales'),(24,'vista_Expediente'),(25,'Vista_Sisión');
/*!40000 ALTER TABLE `tbl_objetos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pacientes`
--

DROP TABLE IF EXISTS `tbl_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pacientes` (
  `ID_Paciente` int(3) NOT NULL AUTO_INCREMENT,
  `ID_tipo_documento` int(11) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `ID_Sexo` int(1) NOT NULL,
  `ID_Est_Civil` int(3) NOT NULL,
  `ID_Tipo_Sangre` int(3) NOT NULL,
  `ID_Religion` int(3) NOT NULL,
  `Nom_Paciente` varchar(255) NOT NULL,
  `Fec_Nacimiento` date NOT NULL,
  `Edad` int(3) NOT NULL,
  `Dir_Paciente` varchar(255) NOT NULL,
  `Tel_Paciente` int(8) NOT NULL,
  `Cel_Paciente` int(8) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contacto_Emergencia` varchar(40) NOT NULL,
  `ID_Parentesco` int(3) NOT NULL,
  `Tel_Emergencia` int(8) NOT NULL,
  `Cel_Emergencia` int(8) NOT NULL,
  `Antecedentes_Personales` varchar(500) DEFAULT NULL,
  `Antecedentes_Hospitalarios` varchar(500) DEFAULT NULL,
  `Antecedentes_Alergicos` varchar(500) DEFAULT NULL,
  `Antecedentes_Familiares` varchar(500) DEFAULT NULL,
  `Habitos` varchar(500) DEFAULT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL,
  PRIMARY KEY (`ID_Paciente`),
  KEY `ID_Sexo` (`ID_Sexo`),
  KEY `ID_Est_Civil` (`ID_Est_Civil`),
  KEY `ID_Tipo_Sangre` (`ID_Tipo_Sangre`),
  KEY `ID_Religion` (`ID_Religion`),
  KEY `ID_Parentesco` (`ID_Parentesco`),
  KEY `ID_tipo_documento` (`ID_tipo_documento`),
  CONSTRAINT `tbl_pacientes_ibfk_10` FOREIGN KEY (`ID_Tipo_Sangre`) REFERENCES `tbl_tipo_sangre` (`ID_Tipo_Sangre`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_pacientes_ibfk_11` FOREIGN KEY (`ID_Parentesco`) REFERENCES `tbl_parentesco` (`ID_Parentesco`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_pacientes_ibfk_12` FOREIGN KEY (`ID_tipo_documento`) REFERENCES `tbl_tipo_documento` (`ID_tipo_documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_pacientes_ibfk_7` FOREIGN KEY (`ID_Est_Civil`) REFERENCES `tbl_estado_civil` (`ID_Est_Civil`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_pacientes_ibfk_8` FOREIGN KEY (`ID_Sexo`) REFERENCES `tbl_sexo` (`ID_Sexo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_pacientes_ibfk_9` FOREIGN KEY (`ID_Religion`) REFERENCES `tbl_religion` (`ID_Religion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pacientes`
--

LOCK TABLES `tbl_pacientes` WRITE;
/*!40000 ALTER TABLE `tbl_pacientes` DISABLE KEYS */;
INSERT INTO `tbl_pacientes` VALUES (1,1,'0801199714079',1,1,5,2,'PRUEBA','1997-07-06',23,'COL CSDSDFSD SAECTORT NSNDFSDF SDFGSNDFGSDFG DSFGDF D GDFGSDF DSFGSDFSDF DF GDFGDSF',22222222,99999999,'nuez.jeancarlos@gmail.com','SADFSAD SDFGDF SDFSADF SDFSDFSD',1,22222222,99999999,'SDFASDFSADFSADF SDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADF','SDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADF ','SDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADF ','SDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADF','SDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADF',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_parametro_sistema`
--

DROP TABLE IF EXISTS `tbl_parametro_sistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_parametro_sistema` (
  `id_parametro` int(11) NOT NULL AUTO_INCREMENT,
  `parametro` varchar(25) NOT NULL,
  `valor` varchar(25) NOT NULL,
  `fecha_cra` date NOT NULL,
  `fecha_modif` date NOT NULL,
  PRIMARY KEY (`id_parametro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_parametro_sistema`
--

LOCK TABLES `tbl_parametro_sistema` WRITE;
/*!40000 ALTER TABLE `tbl_parametro_sistema` DISABLE KEYS */;
INSERT INTO `tbl_parametro_sistema` VALUES (1,'USUARIODB','root','0000-00-00','0000-00-00'),(2,'SERVIDORDB','localhost','0000-00-00','0000-00-00'),(3,'NOMBREDB','sistema_franclar','0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `tbl_parametro_sistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_parametros`
--

DROP TABLE IF EXISTS `tbl_parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_parametros` (
  `id_parametro` int(3) NOT NULL AUTO_INCREMENT,
  `parametro` varchar(25) NOT NULL,
  `valor` varchar(3) NOT NULL,
  `id_usuario` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL,
  PRIMARY KEY (`id_parametro`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_parametros`
--

LOCK TABLES `tbl_parametros` WRITE;
/*!40000 ALTER TABLE `tbl_parametros` DISABLE KEYS */;
INSERT INTO `tbl_parametros` VALUES (1,'INTENTOS_INGRESO','3',1,'2020-10-04','2020-10-04'),(2,'PREGUNTAS_RECUPERACIÓN','3',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_parentesco`
--

DROP TABLE IF EXISTS `tbl_parentesco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_parentesco` (
  `ID_Parentesco` int(3) NOT NULL AUTO_INCREMENT,
  `Parentesco` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_Parentesco`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_parentesco`
--

LOCK TABLES `tbl_parentesco` WRITE;
/*!40000 ALTER TABLE `tbl_parentesco` DISABLE KEYS */;
INSERT INTO `tbl_parentesco` VALUES (1,'MADRE'),(2,'PADRE'),(3,'HERMANO(A)'),(4,'TÍO(A)'),(5,'PRIMO(A)'),(6,'ABUELO(A)'),(7,'SUEGRO(A)'),(8,'YERNO'),(9,'NUERA'),(10,'CUÑADO(A)'),(11,'Otros'),(14,'HIJO(A)');
/*!40000 ALTER TABLE `tbl_parentesco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permisos`
--

DROP TABLE IF EXISTS `tbl_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_permisos` (
  `id_permiso` bigint(3) NOT NULL AUTO_INCREMENT,
  `id_rol` bigint(3) NOT NULL,
  `id_objeto` bigint(3) NOT NULL,
  `permiso_insertar` varchar(1) NOT NULL,
  `permiso_eliminar` varchar(1) NOT NULL,
  `permiso_actualizar` varchar(1) NOT NULL,
  `permiso_consultar` varchar(1) NOT NULL,
  PRIMARY KEY (`id_permiso`),
  KEY `id_rol` (`id_rol`),
  KEY `id_objeto` (`id_objeto`),
  CONSTRAINT `tbl_permisos_ibfk_1` FOREIGN KEY (`id_objeto`) REFERENCES `tbl_objetos` (`id_objeto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_permisos_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `tbl_roles` (`ID_Rol`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisos`
--

LOCK TABLES `tbl_permisos` WRITE;
/*!40000 ALTER TABLE `tbl_permisos` DISABLE KEYS */;
INSERT INTO `tbl_permisos` VALUES (1,1,1,'1','1','1','1'),(2,1,2,'1','1','1','1'),(3,1,3,'1','1','1','1'),(4,1,4,'1','1','1','1'),(5,1,5,'1','1','1','1'),(6,1,6,'1','1','1','1'),(7,1,7,'1','1','1','1'),(8,1,8,'1','1','1','1'),(9,1,9,'1','1','1','1'),(10,1,10,'1','1','1','1'),(11,1,11,'1','1','1','1'),(12,1,12,'1','1','1','1'),(13,1,13,'1','1','1','1'),(14,1,14,'1','1','1','1'),(15,1,15,'1','1','1','1'),(16,1,16,'1','1','1','1'),(17,1,17,'1','1','1','1'),(18,1,18,'1','1','1','1'),(19,1,19,'1','1','1','1'),(20,1,20,'1','1','1','1'),(21,1,21,'1','1','1','1'),(22,1,22,'1','1','1','1'),(23,1,23,'1','1','1','1'),(24,1,24,'1','1','1','1'),(25,1,25,'1','1','1','1'),(26,2,1,'0','0','0','0'),(27,2,2,'0','0','0','0'),(28,2,3,'0','0','0','0'),(29,2,4,'1','1','1','1'),(30,2,5,'1','1','1','1'),(31,2,6,'0','0','0','0'),(32,2,7,'1','1','1','1'),(33,2,8,'0','0','0','0'),(34,2,9,'0','0','0','0'),(35,2,10,'0','0','0','0'),(36,2,11,'0','0','0','0'),(37,2,12,'0','0','0','0'),(38,2,13,'0','0','0','0'),(39,2,14,'0','0','0','0'),(40,2,15,'0','0','0','0'),(41,2,16,'0','0','0','0'),(42,2,17,'0','0','0','0'),(43,2,18,'0','0','0','0'),(44,2,19,'0','0','0','0'),(45,2,20,'0','0','0','0'),(46,2,21,'0','0','0','0'),(47,2,22,'0','0','0','0'),(48,2,23,'0','0','0','0'),(49,2,24,'0','0','0','0'),(50,2,25,'0','0','0','0'),(51,3,1,'0','0','0','0'),(52,3,2,'0','0','0','0'),(53,3,3,'0','0','0','0'),(54,3,4,'1','1','1','1'),(55,3,5,'0','0','0','0'),(56,3,6,'1','1','1','1'),(57,3,7,'1','1','1','1'),(58,3,8,'0','0','0','0'),(59,3,9,'0','0','0','0'),(60,3,10,'0','0','0','0'),(61,3,11,'0','0','0','0'),(62,3,12,'0','0','0','0'),(63,3,13,'0','0','0','0'),(64,3,14,'0','0','0','0'),(65,3,15,'0','0','0','0'),(66,3,16,'0','0','0','0'),(67,3,17,'0','0','0','0'),(68,3,18,'0','0','0','0'),(69,3,19,'0','0','0','0'),(70,3,20,'0','0','0','0'),(71,3,21,'0','0','0','0'),(72,3,22,'0','0','0','0'),(73,3,23,'0','0','0','0'),(74,3,24,'0','0','0','0'),(75,3,25,'0','0','0','0'),(76,4,1,'0','0','0','0'),(77,4,2,'0','0','0','0'),(78,4,3,'0','0','0','0'),(79,4,4,'0','0','0','0'),(80,4,5,'0','0','0','0'),(81,4,6,'0','0','0','0'),(82,4,7,'0','0','0','0'),(83,4,8,'1','1','1','1'),(84,4,9,'0','0','0','0'),(85,4,10,'0','0','0','0'),(86,4,11,'0','0','0','0'),(87,4,12,'0','0','0','0'),(88,4,13,'0','0','0','0'),(89,4,14,'0','0','0','0'),(90,4,15,'0','0','0','0'),(91,4,16,'0','0','0','0'),(92,4,17,'0','0','0','0'),(93,4,18,'0','0','0','0'),(94,4,19,'0','0','0','0'),(95,4,20,'0','0','0','0'),(96,4,21,'0','0','0','0'),(97,4,22,'0','0','0','0'),(98,4,23,'1','1','1','1'),(99,4,24,'0','0','0','0'),(100,4,25,'0','0','0','0'),(101,5,1,'0','0','0','0'),(102,5,2,'0','0','0','0'),(103,5,3,'0','0','0','0'),(104,5,4,'0','0','0','0'),(105,5,5,'0','0','0','0'),(106,5,6,'0','0','0','0'),(107,5,7,'0','0','0','0'),(108,5,8,'0','0','0','0'),(109,5,9,'0','0','0','0'),(110,5,10,'0','0','0','0'),(111,5,11,'0','0','0','0'),(112,5,12,'0','0','0','0'),(113,5,13,'0','0','0','0'),(114,5,14,'0','0','0','0'),(115,5,15,'0','0','0','0'),(116,5,16,'0','0','0','0'),(117,5,17,'0','0','0','0'),(118,5,18,'0','0','0','0'),(119,5,19,'0','0','0','0'),(120,5,20,'0','0','0','0'),(121,5,21,'0','0','0','0'),(122,5,22,'0','0','0','0'),(123,5,23,'0','0','0','0'),(124,5,24,'0','0','0','0'),(125,5,25,'1','1','1','1');
/*!40000 ALTER TABLE `tbl_permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_preclinica`
--

DROP TABLE IF EXISTS `tbl_preclinica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_preclinica` (
  `ID_Preclinica` bigint(3) NOT NULL AUTO_INCREMENT,
  `ID_Cita` bigint(3) NOT NULL,
  `PA` varchar(10) NOT NULL,
  `FC` varchar(10) NOT NULL,
  `FR` int(3) NOT NULL,
  `Temp` int(3) NOT NULL,
  `PAM` varchar(10) NOT NULL,
  `Glucometria` int(4) NOT NULL,
  `Peso` int(10) NOT NULL,
  `Talla` int(6) NOT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL,
  PRIMARY KEY (`ID_Preclinica`),
  KEY `ID_Cita` (`ID_Cita`),
  CONSTRAINT `tbl_preclinica_ibfk_1` FOREIGN KEY (`ID_Cita`) REFERENCES `tbl_citas` (`ID_Cita`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_preclinica`
--

LOCK TABLES `tbl_preclinica` WRITE;
/*!40000 ALTER TABLE `tbl_preclinica` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_preclinica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pregunta_usuario`
--

DROP TABLE IF EXISTS `tbl_pregunta_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pregunta_usuario` (
  `id_pregunta_usuario` bigint(3) NOT NULL AUTO_INCREMENT,
  `ID_Pregunta` bigint(3) NOT NULL,
  `ID_Usuario` bigint(3) NOT NULL,
  `Respuesta` varchar(100) NOT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL,
  PRIMARY KEY (`id_pregunta_usuario`),
  KEY `ID_Pregunta` (`ID_Pregunta`),
  KEY `ID_Usuario` (`ID_Usuario`),
  CONSTRAINT `tbl_pregunta_usuario_ibfk_2` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbl_usuario` (`ID_Usuario`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_pregunta_usuario_ibfk_3` FOREIGN KEY (`ID_Pregunta`) REFERENCES `tbl_preguntas` (`ID_Pregunta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pregunta_usuario`
--

LOCK TABLES `tbl_pregunta_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_pregunta_usuario` DISABLE KEYS */;
INSERT INTO `tbl_pregunta_usuario` VALUES (48,1,18,'sdsdfdsfdf',NULL,NULL,NULL,NULL),(49,2,18,'sasdsd',NULL,NULL,NULL,NULL),(50,3,18,'sdsd',NULL,NULL,NULL,NULL),(51,1,11,'XXX',NULL,NULL,NULL,NULL),(52,2,11,'XXX',NULL,NULL,NULL,NULL),(53,3,11,'XXX',NULL,NULL,NULL,NULL),(55,1,15,'XXX',NULL,NULL,NULL,NULL),(56,2,15,'XXX',NULL,NULL,NULL,NULL),(57,3,15,'XXX',NULL,NULL,NULL,NULL),(58,1,19,'XXX',NULL,NULL,NULL,NULL),(59,2,19,'XXX',NULL,NULL,NULL,NULL),(60,3,19,'XXX',NULL,NULL,NULL,NULL),(64,1,9,'AAA',NULL,NULL,NULL,NULL),(65,2,9,'AAA',NULL,NULL,NULL,NULL),(66,3,9,'AAA',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_pregunta_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_preguntas`
--

DROP TABLE IF EXISTS `tbl_preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_preguntas` (
  `ID_Pregunta` bigint(3) NOT NULL AUTO_INCREMENT,
  `Pregunta` varchar(100) NOT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL,
  PRIMARY KEY (`ID_Pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_preguntas`
--

LOCK TABLES `tbl_preguntas` WRITE;
/*!40000 ALTER TABLE `tbl_preguntas` DISABLE KEYS */;
INSERT INTO `tbl_preguntas` VALUES (1,'¿CUÁL ES EL NOMBRE DE SU MAMÁ? ',NULL,NULL,NULL,NULL),(2,'¿CUÁL ES EL NOMBRE DE SU PRIMER MASCOTA?',NULL,NULL,NULL,NULL),(3,'¿CUÁL ES SU COLOR FAVORITO?',NULL,NULL,NULL,NULL),(4,'¿CUÁL ES SU COMIDA FAVORITA?',NULL,NULL,NULL,NULL),(5,'¿CUÁL ES EL NOMBRE DE SU PADRE?',NULL,NULL,NULL,NULL),(6,'¿CÓMO SE LLAMABA EL COLEGIO AL QUE ASISTISTE?',NULL,NULL,NULL,NULL),(7,'¿CÓMO SE LLAMA SU TÍO FAVORITO?',NULL,NULL,NULL,NULL),(8,'¿CÓMO SE LLAMA SU PRIMERA ESCUELA?',NULL,NULL,NULL,NULL),(9,'¿CÓMO SE LLAMA SU TÍA FAVORITA?',NULL,NULL,NULL,NULL),(10,'¿CUÁL ES EL NOMBRE DE SU PRIMER PAREJA?',NULL,NULL,NULL,NULL),(11,'¿CUÁL FUE EL PRIMER LIBRO QUE LEÍSTE?',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_religion`
--

DROP TABLE IF EXISTS `tbl_religion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_religion` (
  `ID_Religion` int(3) NOT NULL AUTO_INCREMENT,
  `Descripcion_Religion` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_Religion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_religion`
--

LOCK TABLES `tbl_religion` WRITE;
/*!40000 ALTER TABLE `tbl_religion` DISABLE KEYS */;
INSERT INTO `tbl_religion` VALUES (1,'CATÓLICO(A)'),(2,'EVANGÉLICO(A)'),(3,'OTROS');
/*!40000 ALTER TABLE `tbl_religion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_roles` (
  `ID_Rol` bigint(3) NOT NULL AUTO_INCREMENT,
  `Rol` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles`
--

LOCK TABLES `tbl_roles` WRITE;
/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
INSERT INTO `tbl_roles` VALUES (1,'ADMIN'),(2,'DOCTOR'),(3,'ENFERMERO'),(4,'CAJERO'),(5,'Auto_Registro');
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sexo`
--

DROP TABLE IF EXISTS `tbl_sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sexo` (
  `ID_Sexo` int(1) NOT NULL AUTO_INCREMENT,
  `Descripcion_sexo` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_Sexo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sexo`
--

LOCK TABLES `tbl_sexo` WRITE;
/*!40000 ALTER TABLE `tbl_sexo` DISABLE KEYS */;
INSERT INTO `tbl_sexo` VALUES (1,'MASCULINO'),(2,'FEMENINO');
/*!40000 ALTER TABLE `tbl_sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_documento`
--

DROP TABLE IF EXISTS `tbl_tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipo_documento` (
  `ID_tipo_documento` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion_tipo_documento` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_tipo_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_documento`
--

LOCK TABLES `tbl_tipo_documento` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_documento` DISABLE KEYS */;
INSERT INTO `tbl_tipo_documento` VALUES (1,'Identidad'),(2,'Pasaporte');
/*!40000 ALTER TABLE `tbl_tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_sangre`
--

DROP TABLE IF EXISTS `tbl_tipo_sangre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipo_sangre` (
  `ID_Tipo_Sangre` int(3) NOT NULL AUTO_INCREMENT,
  `Descripcion_Sangre` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_Tipo_Sangre`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_sangre`
--

LOCK TABLES `tbl_tipo_sangre` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_sangre` DISABLE KEYS */;
INSERT INTO `tbl_tipo_sangre` VALUES (1,'A POSITIVO'),(2,'A NEGATIVO'),(3,'B POSITIVO'),(4,'B NEGATIVO'),(5,'O POSITIVO'),(6,'O NEGATIVO'),(7,'AB POSITIVO'),(8,'AB NEGATIVO');
/*!40000 ALTER TABLE `tbl_tipo_sangre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuario` (
  `ID_Usuario` bigint(3) NOT NULL AUTO_INCREMENT,
  `ID_Empleado` int(3) NOT NULL,
  `ID_Estado` int(3) NOT NULL,
  `Nom_Usuario` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `Contraseña` varchar(30) NOT NULL,
  `ID_Rol` bigint(3) NOT NULL,
  `Ult_Conexion` date DEFAULT NULL,
  `Primer_Ingreso` int(1) NOT NULL,
  `token` varchar(50) DEFAULT NULL,
  `token_password` varchar(100) DEFAULT NULL,
  `password_request` int(11) DEFAULT NULL,
  `Fec_venc` date DEFAULT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL,
  `preguntas_contestadas` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Usuario`),
  KEY `ID_Empleado` (`ID_Empleado`),
  KEY `ID_Estado` (`ID_Estado`),
  KEY `ID_Rol` (`ID_Rol`),
  CONSTRAINT `tbl_usuario_ibfk_3` FOREIGN KEY (`ID_Estado`) REFERENCES `tbl_estado_usuario` (`ID_Estado`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_usuario_ibfk_6` FOREIGN KEY (`ID_Empleado`) REFERENCES `tbl_empleado` (`ID_Empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_usuario_ibfk_7` FOREIGN KEY (`ID_Rol`) REFERENCES `tbl_roles` (`ID_Rol`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
INSERT INTO `tbl_usuario` VALUES (1,1,1,'ADMIN','soportefranclar@gmail.com','Franclar#2020',1,'2020-10-04',0,NULL,NULL,NULL,'2020-10-04',NULL,NULL,NULL,NULL,0),(9,11,1,'JGONZALES','jsdiksndsdsd@gmail.com','Minuto#2020',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),(11,12,1,'WRAMIRES','jidndf@gmail.com','Minuto#2020',2,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),(15,17,1,'JEANNUNEZ','jean.nunez@gmail.com','Minuto#2020',3,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),(16,18,1,'JOSUERAMIRES','jenaas.sdsd@gmail.com','Minuto#2020',4,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(18,20,1,'JOSUERS','nuez.jeancarlos@gmail.com','Minuto#2020',5,NULL,0,NULL,'6a6ffc86c1f97e37bcfc7562e0511971',1,NULL,NULL,NULL,NULL,NULL,3),(19,21,1,'JEANRODRIGUEZ','nuez.jcarlos@gmail.com','Minuto#2020',4,NULL,0,NULL,'cc8dec1a4e6ee94b3beea5582352d257',1,NULL,NULL,NULL,NULL,NULL,3);
/*!40000 ALTER TABLE `tbl_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 18:40:23
