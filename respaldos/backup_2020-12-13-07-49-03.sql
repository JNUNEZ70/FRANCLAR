-- MariaDB dump 10.18  Distrib 10.4.16-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sistema_franclar
-- ------------------------------------------------------
-- Server version	10.4.16-MariaDB

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
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bitacora_evento`
--

LOCK TABLES `tbl_bitacora_evento` WRITE;
/*!40000 ALTER TABLE `tbl_bitacora_evento` DISABLE KEYS */;
INSERT INTO `tbl_bitacora_evento` VALUES (1,'2020-12-12 04:30:48',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(2,'2020-12-12 04:30:54',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(3,'2020-12-12 04:31:05',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(4,'2020-12-12 04:31:12',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(5,'2020-12-12 04:32:00',1,7,'Insert','SE INGRESÃ“ UNA NUEVA CITA'),(6,'2020-12-12 04:32:10',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(7,'2020-12-12 04:32:24',1,6,'Insert','SE REALIZO PRECLINICA'),(8,'2020-12-12 04:32:29',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(9,'2020-12-12 04:32:49',1,25,'Acceso','CERRO SESIÃ“N'),(10,'2020-12-12 04:32:58',11,25,'	Acceso','INICIÃ“ SESIÃ“N'),(11,'2020-12-12 04:33:28',11,25,'Acceso','CERRO SESIÃ“N'),(12,'2020-12-12 04:33:45',1,25,'	Acceso','INICIÃ“ SESIÃ“N'),(13,'2020-12-12 04:33:50',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(14,'2020-12-12 04:36:17',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(15,'2020-12-12 04:38:37',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(16,'2020-12-12 04:38:56',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(17,'2020-12-12 04:39:05',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(18,'2020-12-12 04:39:30',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(19,'2020-12-12 04:39:42',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(20,'2020-12-12 04:40:04',1,7,'Insert','SE INGRESÃ“ UNA NUEVA CITA'),(21,'2020-12-12 04:40:11',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(22,'2020-12-12 04:40:14',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(23,'2020-12-12 04:40:24',1,6,'Insert','SE REALIZO PRECLINICA'),(24,'2020-12-12 04:40:29',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(25,'2020-12-12 04:41:03',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(26,'2020-12-12 04:41:08',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(27,'2020-12-12 04:45:56',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(28,'2020-12-12 04:46:29',1,7,'Insert','SE INGRESÃ“ UNA NUEVA CITA'),(29,'2020-12-12 04:46:33',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(30,'2020-12-12 04:46:55',1,6,'Insert','SE REALIZO PRECLINICA'),(31,'2020-12-12 04:47:01',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(32,'2020-12-12 04:47:04',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(33,'2020-12-12 04:48:20',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(34,'2020-12-12 04:54:11',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(35,'2020-12-12 04:54:41',1,7,'Insert','SE INGRESÃ“ UNA NUEVA CITA'),(36,'2020-12-12 04:54:47',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(37,'2020-12-12 04:55:32',1,6,'Insert','SE REALIZO PRECLINICA'),(38,'2020-12-12 04:55:37',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(39,'2020-12-12 04:57:46',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(40,'2020-12-12 04:58:02',1,7,'Insert','SE INGRESÃ“ UNA NUEVA CITA'),(41,'2020-12-12 04:58:07',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(42,'2020-12-12 04:58:17',1,6,'Insert','SE REALIZO PRECLINICA'),(43,'2020-12-12 04:58:23',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(44,'2020-12-12 05:02:25',1,7,'Insert','SE INGRESÃ“ UNA NUEVA CITA'),(45,'2020-12-12 05:05:01',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(46,'2020-12-12 05:05:17',1,6,'Insert','SE REALIZO PRECLINICA'),(47,'2020-12-12 05:05:23',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(48,'2020-12-12 05:07:36',1,7,'Insert','SE INGRESÃ“ UNA NUEVA CITA'),(49,'2020-12-12 05:07:41',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(50,'2020-12-12 05:07:51',1,6,'Insert','SE REALIZO PRECLINICA'),(51,'2020-12-12 05:07:55',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(52,'2020-12-12 05:12:16',1,7,'Insert','SE INGRESÃ“ UNA NUEVA CITA'),(53,'2020-12-12 05:12:24',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(54,'2020-12-12 05:12:37',1,6,'Insert','SE REALIZO PRECLINICA'),(55,'2020-12-12 05:12:42',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(56,'2020-12-12 05:24:07',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(57,'2020-12-12 05:24:36',1,7,'Insert','SE INGRESÃ“ UNA NUEVA CITA'),(58,'2020-12-12 05:24:42',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(59,'2020-12-12 05:25:06',1,6,'Insert','SE REALIZO PRECLINICA'),(60,'2020-12-12 05:25:11',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(61,'2020-12-12 05:26:00',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(62,'2020-12-12 05:27:23',1,8,'Acceso','INGRESO A PANTALLA CAJA'),(63,'2020-12-12 05:40:59',1,25,'Acceso','CERRO SESIÃ“N'),(64,'2020-12-12 22:51:30',1,25,'	Acceso','INICIÃ“ SESIÃ“N'),(65,'2020-12-12 22:53:42',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(66,'2020-12-12 22:53:47',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(67,'2020-12-12 22:54:52',1,7,'Insert','SE INGRESÃ“ UNA NUEVA CITA'),(68,'2020-12-12 22:55:00',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(69,'2020-12-12 22:55:14',1,6,'Insert','SE REALIZO PRECLINICA'),(70,'2020-12-12 22:55:18',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(71,'2020-12-13 00:36:19',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(72,'2020-12-13 00:38:33',1,2,'Acceso','INGRESO A PANTALLA USUARIOS'),(73,'2020-12-13 00:38:43',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(74,'2020-12-13 00:38:51',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(75,'2020-12-13 00:49:23',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(76,'2020-12-13 00:51:28',1,1,'Update','SE ACTUALIZÃ“ UN EMPLEADO'),(77,'2020-12-13 00:51:38',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(78,'2020-12-13 00:54:22',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(79,'2020-12-13 01:09:33',1,4,'Insert','SE EDITO UN PACIENTE'),(80,'2020-12-13 01:09:50',1,4,'Insert','SE EDITO UN PACIENTE'),(81,'2020-12-13 01:10:06',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(82,'2020-12-13 01:10:19',1,4,'Insert','SE EDITO UN PACIENTE'),(83,'2020-12-13 01:11:13',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(84,'2020-12-13 01:11:34',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(85,'2020-12-13 01:15:02',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(86,'2020-12-13 01:16:35',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(87,'2020-12-13 01:35:47',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(88,'2020-12-13 01:36:31',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(89,'2020-12-13 01:37:39',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(90,'2020-12-13 01:41:29',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(91,'2020-12-13 01:41:43',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(92,'2020-12-13 03:16:59',1,19,'Acceso','INGRESO A PANTALLA ROLES'),(93,'2020-12-13 03:56:08',1,19,'Acceso','INGRESO A PANTALLA ROLES'),(94,'2020-12-13 03:58:20',1,19,'Acceso','INGRESO A PANTALLA ROLES'),(95,'2020-12-13 03:59:27',1,19,'Update','SE ACTUALIZÃ“ UN ROL'),(96,'2020-12-13 03:59:34',1,19,'Update','SE ACTUALIZÃ“ UN ROL'),(97,'2020-12-13 03:59:40',1,19,'Update','SE ACTUALIZÃ“ UN ROL'),(98,'2020-12-13 03:59:47',1,19,'Update','SE ACTUALIZÃ“ UN ROL'),(99,'2020-12-13 03:59:52',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(100,'2020-12-13 04:13:09',1,19,'Acceso','INGRESO A PANTALLA ROLES'),(101,'2020-12-13 04:14:00',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(102,'2020-12-13 04:32:03',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(103,'2020-12-13 04:32:32',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(104,'2020-12-13 04:52:40',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(105,'2020-12-13 04:54:56',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(106,'2020-12-13 04:54:59',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(107,'2020-12-13 04:55:22',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(108,'2020-12-13 04:55:46',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(109,'2020-12-13 04:56:47',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(110,'2020-12-13 04:59:55',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(111,'2020-12-13 05:00:33',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(112,'2020-12-13 05:05:42',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(113,'2020-12-13 05:11:24',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(114,'2020-12-13 05:11:30',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(115,'2020-12-13 05:11:45',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(116,'2020-12-13 05:11:49',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(117,'2020-12-13 05:12:38',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(118,'2020-12-13 05:18:48',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(119,'2020-12-13 05:19:53',1,10,'Update','SE ACTUALIZÃ“ EL CARGO'),(120,'2020-12-13 05:20:01',1,10,'Update','SE ACTUALIZÃ“ EL CARGO'),(121,'2020-12-13 05:20:09',1,10,'Update','SE ACTUALIZÃ“ EL CARGO'),(122,'2020-12-13 05:20:18',1,10,'Update','SE ACTUALIZÃ“ EL CARGO'),(123,'2020-12-13 05:20:27',1,10,'Update','SE ACTUALIZÃ“ EL CARGO'),(124,'2020-12-13 05:20:35',1,10,'Update','SE ACTUALIZÃ“ EL CARGO'),(125,'2020-12-13 05:21:39',1,9,'Acceso','INGRESO A PANTALLA ESPECIALIDADES'),(126,'2020-12-13 05:27:39',1,9,'Update','SE ACTUALIZÃ“ UNA ESPECIALIDAD'),(127,'2020-12-13 05:27:47',1,9,'Update','SE ACTUALIZÃ“ UNA ESPECIALIDAD'),(128,'2020-12-13 05:28:00',1,9,'Update','SE ACTUALIZÃ“ UNA ESPECIALIDAD'),(129,'2020-12-13 05:28:09',1,9,'Update','SE ACTUALIZÃ“ UNA ESPECIALIDAD'),(130,'2020-12-13 05:28:17',1,9,'Update','SE ACTUALIZÃ“ UNA ESPECIALIDAD'),(131,'2020-12-13 05:28:25',1,9,'Update','SE ACTUALIZÃ“ UNA ESPECIALIDAD'),(132,'2020-12-13 05:28:34',1,9,'Update','SE ACTUALIZÃ“ UNA ESPECIALIDAD'),(133,'2020-12-13 05:28:47',1,12,'Acceso','INGRESO A PANTALLA ESTADO_CIVIL'),(134,'2020-12-13 05:31:31',1,12,'Update','SE ACTUALIZÃ“ UN ESTADO CIVIL'),(135,'2020-12-13 05:31:39',1,12,'Update','SE ACTUALIZÃ“ UN ESTADO CIVIL'),(136,'2020-12-13 05:31:46',1,12,'Update','SE ACTUALIZÃ“ UN ESTADO CIVIL'),(137,'2020-12-13 05:31:55',1,12,'Update','SE ACTUALIZÃ“ UN ESTADO CIVIL'),(138,'2020-12-13 05:32:02',1,12,'Update','SE ACTUALIZÃ“ UN ESTADO CIVIL'),(139,'2020-12-13 05:32:09',1,16,'Acceso','INGRESO A PANTALLA GÃ‰NERO'),(140,'2020-12-13 05:36:04',1,16,'Update','SE ACTUALIZÃ“ UN GÃ‰NERO'),(141,'2020-12-13 05:36:11',1,16,'Update','SE ACTUALIZÃ“ UN GÃ‰NERO'),(142,'2020-12-13 05:36:25',1,13,'Acceso','INGRESO A PANTALLA RELIGIÃ“N'),(143,'2020-12-13 05:39:11',1,13,'Update','SE ACTUALIZÃ“ UNA RELIGION'),(144,'2020-12-13 05:39:18',1,13,'Update','SE ACTUALIZÃ“ UNA RELIGION'),(145,'2020-12-13 05:39:26',1,13,'Update','SE ACTUALIZÃ“ UNA RELIGION'),(146,'2020-12-13 05:39:35',1,15,'Acceso','INGRESO A PANTALLA TIPO_SANGRE'),(147,'2020-12-13 05:41:51',1,15,'Update','SE ACTUALIZÃ“ UN TIPO DE SANGRE'),(148,'2020-12-13 05:42:00',1,15,'Update','SE ACTUALIZÃ“ UN TIPO DE SANGRE'),(149,'2020-12-13 05:42:08',1,15,'Update','SE ACTUALIZÃ“ UN TIPO DE SANGRE'),(150,'2020-12-13 05:42:16',1,15,'Update','SE ACTUALIZÃ“ UN TIPO DE SANGRE'),(151,'2020-12-13 05:42:24',1,15,'Update','SE ACTUALIZÃ“ UN TIPO DE SANGRE'),(152,'2020-12-13 05:42:33',1,15,'Update','SE ACTUALIZÃ“ UN TIPO DE SANGRE'),(153,'2020-12-13 05:42:40',1,15,'Update','SE ACTUALIZÃ“ UN TIPO DE SANGRE'),(154,'2020-12-13 05:42:47',1,15,'Update','SE ACTUALIZÃ“ UN TIPO DE SANGRE'),(155,'2020-12-13 05:43:05',1,18,'Acceso','INGRESO A PANTALLA PARENTESCO'),(156,'2020-12-13 05:45:05',1,18,'Update','SE ACTUALIZÃ“ UN PARENTESCO'),(157,'2020-12-13 05:45:12',1,18,'Update','SE ACTUALIZÃ“ UN PARENTESCO'),(158,'2020-12-13 05:45:19',1,18,'Update','SE ACTUALIZÃ“ UN PARENTESCO'),(159,'2020-12-13 05:45:27',1,18,'Update','SE ACTUALIZÃ“ UN PARENTESCO'),(160,'2020-12-13 05:45:37',1,18,'Update','SE ACTUALIZÃ“ UN PARENTESCO'),(161,'2020-12-13 05:45:45',1,18,'Update','SE ACTUALIZÃ“ UN PARENTESCO'),(162,'2020-12-13 05:45:52',1,18,'Update','SE ACTUALIZÃ“ UN PARENTESCO'),(163,'2020-12-13 05:45:59',1,18,'Update','SE ACTUALIZÃ“ UN PARENTESCO'),(164,'2020-12-13 05:46:06',1,18,'Update','SE ACTUALIZÃ“ UN PARENTESCO'),(165,'2020-12-13 05:46:13',1,18,'Update','SE ACTUALIZÃ“ UN PARENTESCO'),(166,'2020-12-13 05:47:16',1,18,'Insert','SE INGRESÃ“ UN PARENTESCO'),(167,'2020-12-13 05:47:35',1,18,'Update','SE ACTUALIZÃ“ UN PARENTESCO'),(168,'2020-12-13 05:48:23',1,18,'Update','SE ACTUALIZÃ“ UN PARENTESCO'),(169,'2020-12-13 05:48:33',1,23,'Acceso','INGRESO A PANTALLA COBROS'),(170,'2020-12-13 05:55:15',1,23,'Update','SE ACTUALIZÃ“ UN COBRO'),(171,'2020-12-13 05:55:30',1,19,'Acceso','INGRESO A PANTALLA ROLES'),(172,'2020-12-13 05:55:49',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(173,'2020-12-13 05:56:05',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS DE SEGURIDAD'),(174,'2020-12-13 06:02:11',1,20,'Acceso','INGRESO A PANTALLA PARAMETROS DE SISTEMA'),(175,'2020-12-13 06:03:19',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS DE SEGURIDAD'),(176,'2020-12-13 06:03:22',1,20,'Acceso','INGRESO A PANTALLA PARAMETROS DE SISTEMA'),(177,'2020-12-13 06:03:26',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS DE SEGURIDAD'),(178,'2020-12-13 06:03:41',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS DE SEGURIDAD'),(179,'2020-12-13 06:03:44',1,20,'Acceso','INGRESO A PANTALLA PARAMETROS DE SISTEMA'),(180,'2020-12-13 06:06:06',1,17,'Acceso','INGRESO A PANTALLA PREGUNTAS SECRETAS'),(181,'2020-12-13 06:10:01',1,17,'Update','SE ACTUALIZÃ“ UNA PREGUNTA SECRETA'),(182,'2020-12-13 06:10:09',1,17,'Update','SE ACTUALIZÃ“ UNA PREGUNTA SECRETA'),(183,'2020-12-13 06:10:16',1,17,'Update','SE ACTUALIZÃ“ UNA PREGUNTA SECRETA'),(184,'2020-12-13 06:10:23',1,17,'Update','SE ACTUALIZÃ“ UNA PREGUNTA SECRETA'),(185,'2020-12-13 06:10:30',1,17,'Update','SE ACTUALIZÃ“ UNA PREGUNTA SECRETA'),(186,'2020-12-13 06:10:40',1,17,'Update','SE ACTUALIZÃ“ UNA PREGUNTA SECRETA'),(187,'2020-12-13 06:10:47',1,17,'Update','SE ACTUALIZÃ“ UNA PREGUNTA SECRETA'),(188,'2020-12-13 06:10:56',1,17,'Update','SE ACTUALIZÃ“ UNA PREGUNTA SECRETA'),(189,'2020-12-13 06:11:03',1,17,'Update','SE ACTUALIZÃ“ UNA PREGUNTA SECRETA'),(190,'2020-12-13 06:11:10',1,17,'Update','SE ACTUALIZÃ“ UNA PREGUNTA SECRETA'),(191,'2020-12-13 06:11:21',1,17,'Update','SE ACTUALIZÃ“ UNA PREGUNTA SECRETA'),(192,'2020-12-13 06:11:32',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(193,'2020-12-13 06:28:31',1,1,'Update','SE ACTUALIZÃ“ UN EMPLEADO'),(194,'2020-12-13 06:32:23',1,2,'Acceso','INGRESO A PANTALLA USUARIOS'),(195,'2020-12-13 06:36:42',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(196,'2020-12-13 06:38:05',1,2,'Acceso','INGRESO A PANTALLA USUARIOS'),(197,'2020-12-13 06:38:25',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(198,'2020-12-13 06:38:35',1,2,'Acceso','INGRESO A PANTALLA USUARIOS'),(199,'2020-12-13 06:42:59',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(200,'2020-12-13 06:43:49',1,2,'Acceso','INGRESO A PANTALLA USUARIOS'),(201,'2020-12-13 06:43:58',1,2,'Update','SE ACTUALIZÃ“ UN USUARIO'),(202,'2020-12-13 06:44:09',1,2,'Update','SE ACTUALIZÃ“ UN USUARIO'),(203,'2020-12-13 06:45:35',1,2,'Update','SE BLOQUEÃ“ UN USUARIO'),(204,'2020-12-13 06:45:44',1,2,'Update','SE ACTIVÃ“ UN USUARIO'),(205,'2020-12-13 06:47:04',1,21,'Acceso','INGRESO A PANTALLA RESAPALDO DB');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_citas`
--

LOCK TABLES `tbl_citas` WRITE;
/*!40000 ALTER TABLE `tbl_citas` DISABLE KEYS */;
INSERT INTO `tbl_citas` VALUES (1,1,1,1,1,4,'2020-12-12 04:32:00','2020-12-17','09:00:00',200,NULL,NULL,NULL,NULL),(2,1,1,1,1,3,'2020-12-12 04:40:04','2020-12-25','09:00:00',200,NULL,NULL,NULL,NULL),(3,1,1,1,1,3,'2020-12-12 04:46:29','2020-12-15','09:00:00',200,NULL,NULL,NULL,NULL),(4,1,1,1,1,3,'2020-12-12 04:54:40','2020-12-23','09:00:00',200,NULL,NULL,NULL,NULL),(5,1,1,1,1,3,'2020-12-12 04:58:02','2020-12-23','09:00:00',200,NULL,NULL,NULL,NULL),(6,1,1,1,1,3,'2020-12-12 05:02:25','2020-12-24','09:00:00',200,NULL,NULL,NULL,NULL),(7,1,1,1,1,3,'2020-12-12 05:07:36','2020-12-30','08:00:00',200,NULL,NULL,NULL,NULL),(8,1,1,1,1,3,'2020-12-12 05:12:16','2020-12-24','09:00:00',200,NULL,NULL,NULL,NULL),(9,1,1,1,1,3,'2020-12-12 05:24:36','2020-12-24','09:00:00',200,NULL,NULL,NULL,NULL),(10,1,1,1,1,3,'2020-12-12 22:54:52','2020-12-23','09:00:00',200,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cobros_adicionales`
--

LOCK TABLES `tbl_cobros_adicionales` WRITE;
/*!40000 ALTER TABLE `tbl_cobros_adicionales` DISABLE KEYS */;
INSERT INTO `tbl_cobros_adicionales` VALUES (1,'PRUEBA',1505),(2,'PRUEBADOS',100);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_consultas`
--

LOCK TABLES `tbl_consultas` WRITE;
/*!40000 ALTER TABLE `tbl_consultas` DISABLE KEYS */;
INSERT INTO `tbl_consultas` VALUES (1,1,'EGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFG',' EGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDF','EGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDF','EGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFGHFGHFDGHDFEGDGDFGHDFGHFDG BDFG',NULL,NULL,NULL,NULL),(2,2,'GSDFGSDf','SDFGSDFg','SDFGSDF','GSDFGSDFGSDF',NULL,NULL,NULL,NULL),(3,3,'ASDFGDSFGSDFASDFGDSASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFFGSDF','ASDFGDSFGSASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDF','DSFGSDFGSDFGASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDF','ASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDFASDFGDSFGSDF',NULL,NULL,NULL,NULL),(4,4,'DSFGDSFGDSFg','GDSFGSDFGSDf','DSFGSDFGDFg','DSFGDSFGDSFGSDFG',NULL,NULL,NULL,NULL),(5,5,'DFGHDFTGHDFGh','FHDFGHDFGHd','FGHDFGHDFGH','DFGHDFGHDFGHDFGHFG',NULL,NULL,NULL,NULL),(6,6,'DFGHDF','HFGHFHFGHDFGHD','GHDFGHDFGHDFGh','GHDFGHDFGHDFGHDFGH',NULL,NULL,NULL,NULL),(7,7,'HDFGHDFg','FGHDFGHDF','GHDFGHDFGHdf','HDFGHDFGHDF',NULL,NULL,NULL,NULL),(8,8,'DSFGDSFg','DFGDSFG','SDFGDSFGSDF','SDFGSDFGSDF',NULL,NULL,NULL,NULL),(9,8,'','','','',NULL,NULL,NULL,NULL),(10,8,'SDFGdsf','SDFGSDF','SSDFGSDFG','GDSFGSDFG',NULL,NULL,NULL,NULL),(11,9,'FASDASDF','ASDFASDFASd','SDFASD','SADFASDFASD',NULL,NULL,NULL,NULL),(12,10,'FGSDFG','SDSDds','FSDFds','SDFGSDFGSDF',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle_factura`
--

LOCK TABLES `tbl_detalle_factura` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_factura` DISABLE KEYS */;
INSERT INTO `tbl_detalle_factura` VALUES (1,1,'Medicina General',200),(2,2,'Medicina General',200),(3,3,'Medicina General',200),(4,4,'Medicina General',200),(5,5,'Medicina General',200),(6,6,'Medicina General',200),(7,7,'Medicina General',200),(8,8,'Medicina General',200),(9,8,'Medicina General',200),(10,8,'Medicina General',200),(11,11,'Medicina General',200),(12,1,'PRUEBA',150),(13,1,'PRUEBADOS',100),(14,12,'Medicina General',200);
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
INSERT INTO `tbl_empleado` VALUES (1,'JEAN CARLOS NÃšÃ‘EZ SALGADO',1,2,1,1,'1111111111111','0000-00-00','Col venezuela sector B.....',22091139,33876298,15000,NULL,NULL,NULL,NULL),(3,'CARLOS FABRICIO NUÃ‘EZ RAMIRES',1,3,2,1,'','0000-00-00','COL. VENEZUELA SECTOR B BLOQUE 8 CASA 17 ',22278000,33876298,30000,NULL,NULL,NULL,NULL),(11,'JOSUE ALLAN GONZALES RAMIRES',1,2,3,3,'0801199714588','1987-10-08','WINFEIUFGEFVDFVDF',22222222,99999999,20000,NULL,NULL,NULL,NULL),(12,'WILDER EDUARDO RAMIRES ',1,1,5,7,'0801199714078','1982-09-05','SJDNVSDHOFIVBDVRFGBRGBRFGBGF',22222222,88888888,20000,NULL,NULL,NULL,NULL),(17,'JEAN CARLOS NUEZ',1,1,6,8,'0801199714079','1980-10-14','ASDSDJNSDSDSDSDD',22222222,99999999,0,NULL,NULL,NULL,NULL),(18,'JOSUE ROLANDO RAMIRES GONZALES',1,1,1,2,'0801199714079','1997-10-14','AASSDSSSDDSDSSSDSDSD',22222222,99999999,20000,NULL,NULL,NULL,NULL),(20,'JOSUE CACERES ACOSTA',1,1,6,8,'0801115556666','1980-10-04','SDSDCSDCSDCSD',22222222,99999999,0,NULL,NULL,NULL,NULL),(21,'JEAN CARLOS RODRIGUEZ',1,1,6,8,'0801199714089','1980-11-10','SDFDFDGBDFGBDFGB',22222222,99999999,0,NULL,NULL,NULL,NULL),(22,'JUAN JOSE RODRIGUEZ ALMENDAREZ',1,1,4,9,'0801199614079','1988-06-14','OSDIUBDINDFDFDF FDDFFDFDFDF',22222222,99999999,10000,NULL,NULL,NULL,NULL);
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
INSERT INTO `tbl_especialidad` VALUES (1,'MEDICINA GENERAL',200),(2,'ORTOPEDIA',800),(3,'FISIOTERAPIA',0),(4,'NUTRICIÃ“N',0),(5,'ODONTOLOGÃA',0),(6,'PSICOLOGÃA',0),(7,'PODOLOGÃA',0),(8,'Auto_Registro',0),(9,'Sin Especialidad',0);
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
INSERT INTO `tbl_estado_cita` VALUES (1,'Pendiente'),(2,'PreclÃ­nica'),(3,'Pendiente de Pago'),(4,'Pagada'),(5,'Vencida');
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
INSERT INTO `tbl_estado_civil` VALUES (1,'SOLTERO(A)'),(2,'CASADO(A)'),(3,'UNIÃ“N LIBRE'),(4,'VIUDO(A)'),(5,'DIVORCIADO(A)');
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
INSERT INTO `tbl_estado_usuario` VALUES (1,'Activo'),(2,'Bloqueado'),(3,'RecuperaciÃ³n'),(4,'Auto_Registro');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,1,1,'2020-12-12 04:35:29',NULL,'',NULL,NULL,NULL,NULL),(2,1,2,'2020-12-12 04:40:45',NULL,'',NULL,NULL,NULL,NULL),(3,1,3,'2020-12-12 04:47:45',NULL,'',NULL,NULL,NULL,NULL),(4,1,4,'2020-12-12 04:56:14',NULL,'',NULL,NULL,NULL,NULL),(5,1,5,'2020-12-12 05:00:43',NULL,'',NULL,NULL,NULL,NULL),(6,1,6,'2020-12-12 05:05:40',NULL,'',NULL,NULL,NULL,NULL),(7,1,7,'2020-12-12 05:08:11',NULL,'',NULL,NULL,NULL,NULL),(8,1,8,'2020-12-12 05:16:52',NULL,'',NULL,NULL,NULL,NULL),(9,1,8,'2020-12-12 05:17:29',NULL,'',NULL,NULL,NULL,NULL),(10,1,8,'2020-12-12 05:23:37',NULL,'',NULL,NULL,NULL,NULL),(11,1,9,'2020-12-12 05:25:39',NULL,'',NULL,NULL,NULL,NULL),(12,1,10,'2020-12-12 23:07:20',NULL,'',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_facturas`
--

LOCK TABLES `tbl_facturas` WRITE;
/*!40000 ALTER TABLE `tbl_facturas` DISABLE KEYS */;
INSERT INTO `tbl_facturas` VALUES (1,1,1,1,200,'2020-12-12 04:35:29'),(2,2,1,1,200,'2020-12-12 04:40:45'),(3,3,1,1,200,'2020-12-12 04:47:46'),(4,4,1,1,200,'2020-12-12 04:56:14'),(5,5,1,1,200,'2020-12-12 05:00:43'),(6,6,1,1,200,'2020-12-12 05:05:40'),(7,7,1,1,200,'2020-12-12 05:08:11'),(8,8,1,1,200,'2020-12-12 05:16:53'),(9,8,1,1,200,'2020-12-12 05:17:29'),(10,8,1,1,200,'2020-12-12 05:23:37'),(11,9,1,1,200,'2020-12-12 05:25:39'),(12,10,1,1,200,'2020-12-12 23:07:20');
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
  `tipo_imagen` varchar(50) NOT NULL,
  `imagen` mediumblob NOT NULL,
  PRIMARY KEY (`ID_foto`),
  KEY `ID_Cita` (`ID_Cita`),
  CONSTRAINT `tbl_fotos_consultas_ibfk_1` FOREIGN KEY (`ID_Cita`) REFERENCES `tbl_citas` (`ID_Cita`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fotos_consultas`
--

LOCK TABLES `tbl_fotos_consultas` WRITE;
/*!40000 ALTER TABLE `tbl_fotos_consultas` DISABLE KEYS */;
INSERT INTO `tbl_fotos_consultas` VALUES (1,1,'image/jpeg','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\Z\Z \Z! ( \Z\' \"1!%)+...383-7(-.+\n\n\n\r-&&--+--3+-5--.2--55-.--5-/++//------.-7/---/-5--.5--ÿÀ\0\0 ;\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0	\0\0\0!1A\"Qa2q‘BR¡#r‚’±ÁÑSb¢$3C“²ÒÓáðTdñÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\01\0\0\0\0\0\0\0!1AQa\"q‘¡Ááð±#Ñ2BbÿÚ\0\0\0?\0x×‰eUf\n/k“mÏ!½{¥ßmùq“\0²\rû™Uˆôk¡úë@1(®eÈ¸×„ÚCìäñ§Ñ·Qú¤S\"í–6²ã (^%÷CâäZ€kQQ™7áqbøyÒO@|Cæ§Ä=ÅIÐQ@QE\0QEE§›fQá¢y¥6UçÈRk\rÒ¶e+tÊ)9šv‹‹‘tVè\0ÞìÀïò£‡\Zcÿ\0ùMû©ÿ\0-UzÈ.Ì´´Y‘cã>*›˜Þ	ITEWŒ›¡;’èlFãz¶?Aö/µ®ÿ\0tFM›_àþwòÞ’LÄ’I$É;“ïçEù\"Oåj­L“oÏèZ––-%åõ:\"ÍSN›ŽªFÄ{[8¼*J…$EtnjÂàõä}EQ{Ä“ñ“ðÈ~Ð·ñJ½Å\0RÄ^ìnnI°l¢ÃµtpÏt»œìÐÙ7 µ§ÂA%¯È‹X[×ÏÒ«¼O•c$PaÌ;…°\n\0+àê]Ç/S½,¸“Ž‚c…Åb™ÀQm/áaÒö\0“na®wusdt¤¾¤Ráü·´Qæ8•bâGèªoc¥o±°ç½ùÞ¤rn>Âbä0ÊßÞ^ô®–ÒAö¸œéHˆ´ƒk\n×Å¯vnwo»é]Ú<iZ*{Lˆèl¯7‹Òw2«„²#¾úº­·‘¨ÜÓ9Âaã–I5KweÜ€|;[àlºÚ–\\Åà¡™™Kâªª“eÒ5Wýbn>_:ÔÎó	qR´ÒX-”X\07I;wªO&øè2ê”cê< Ä,‘„‡n†û¶ßkc¦œD¥Pw†ÚÀñ¶ö½®/Ö©<	Å1C‡ÈHUc­‰UÊÙ@¾ƒc¿0Ý,já›æ±ýŽYÑ•”Dî›ó*¥‡¾ß•TÔá–ÉBÚ~k©gO•N¥ô+Ù7hðÏˆ›RÒE²›í+\ržÃ SóÚõ‹å˜»³šçÈ¥`C!¾ lAó¸ëSññ®4µ~²©?[Wœñ-&£UµF^êìüüýNæCm!±4¶7RAó¨lÈ»6®ñõyê4º—‹qþÚß%_éXbOÅ)o˜È\n§‹Â³CþËëþØµ1ƒ¶†þ[Æøˆ†™4È\0°\'ŸÔs«F?‹pâ(šHË¬¢äX,l~.v#—¥#0YÁ”oñcÏÔU»\'âŒYH°øx£•ƒ\nÑkaÖàÜ\0=O/:èàËŸÙ)|8¿ÞçÑaÌ–Li\'ßšàv)¸½‡US†%Äé—;—°´P3Eyò:™¯÷‰ö¨üç²ü4ÁŒrÌ’tfs 0Û‘ï}«¸œŸc‚±`º–O’µü¯à½\ZÔÊZsúB¢És´d•·MÏZ¤ð÷æ˜)PœdsDI\rÈÛìm¤²›Ïo*¹a£Äkîw¼`kùZK%­ê§ùÖÕÍšåÇp¤šóçäHQZyœ=â÷EX¤•Ù[I@AßÏ~[VL¿°Æ‘!b¨¡Acs·™<ÍiU÷6*??Ë†\'\r4”‘²ýFßHQY59	ðw«¸€a¹°Ô¦ÅoÐóçåX\'wŒ€|@ò\'¯Ðš»v““$9œÈËà‰W¥µóÜŒ7Ö Ï\n‡ÿ\0W)_ âãØèh•º0Ý+dLð ”aÈƒb>Dn*ñvŸÃØ!Iw>ÒÖõOÌ8w\0.ñk@	,<jRH³žÕŒ\"Túoÿ\0ŸfQqá˜Œã%qvtfEÚæk.!_ÞdkOßQp>`UïŽŠd‰\"LŒ}A®@†L<Çþ*û†Í¦†N÷,‘=†èÅI·¹`Øìj+ž¸w¶Ìd6\\Ti‰_Ä?G\'Ô\r\'è)Ã½ªe¸»/}ÜH~äÞ\rüƒüë@]è¯ˆÀ€ADr5ö€)]ÚÖnZDÃ)ÙF·õ\'áÃÚ¦${FB3	¯×A-\n?•UÕÉ¬|´qO\'=ŠÕtán\rIâLÍføUvÛÌš™nÃt2Úÿ\0µsi’)Ð²¬˜|;ÈlˆÌ|”~‚˜ÿ\0ÿ\0†]ÉbæïaùRynÓD þŸ{ÜšS0òÄÖìƒh&’à–“M¼´¾¾:¿Rg.âlV]ö¥ÄÈY˜0\0’µ†ÀtëVŒµ\\$¶YÃaØõo¾¼½À®¾ž?ÓIu299Õ¢õ<!Åšö‰ˆ#‘å·*­ñÇÂ5€^2±5ƒ( €T®°ÄyÚÛs«HÝuÄáÕÍõÔÀln@rêk&©<FËð‹›Úçe½µûíåSÆN.ÑLçÛ(›Š’yŒEu<JÄ\0@aªÃÂly\ZÆ™>6aÞÇ…™ÐÜ©N 6ðþ.}?•<ðØ	p¸LCB˜‰d–aáÓv‘¼7R~êi¾új_ƒÑ×I»b¤\06*nMYž­µ°ÚP¸ßïÈVãû6ÄÝDz[ÁrÚ€PÃî•;mµïÎÃ•G2‚X%1Ê…$[Ë˜ÜlG¨¦ïç8Œ¹‘‰ïðît’ÂÎÌ\rJ,AµÅö¥ççƒ1”ÄPi\n·$®ON[òœ:†åL¡ŸLš´E&m}ZñŠ¼€€l\n‘õ¦Ø–6[#{zùüë?Ú©¿•kâr\\hñ¸²¢0Ï£¼Æ;éïò×k_Ò±ÓÃ³,¬éPEÁÔíÌuÚ¾âû2ÁHISõô7Ú¸Ni6D¦«‘E:‡dø?Ç7ïùk/²\\)B#’U~„ÃÜ[•7£;ÐžÂO¡Ã_‘ßå×ò§÷öx ’,@Å± d]!ƒW¹6¤eƒhd’)>(Ø«{*é¬šIbÂáWºwcJH#J¢÷¿/Ÿ[T±Œ/|—óö4Í›$#¶“»èoa1Ñ,¦#3òñî.OÊ£3|÷2(#Â—‰Šê{7#ñCÂº|óZÅgN£˜}V•Â…•W˜;0 aÎö½gÈ³|RHøu-)—Wtd`4X3oA}Àõª¸µûžÙ6›n¸çá\\üÍ•¯z“ã»ããa„ñ) •©¸¸älEÇ‘±#ÞµD/Þ	ZBªÆ=´ƒ¾÷ÿ\0ÎU›¬j²>·Å­kûW¹áWVG•V‘b>•ÕkrMœû§Hû€e!äA¸?\"+Ýkà0QÃ\ZÅ„EÙTtëüMlVËÔÔ(¢ŠÈÝ»å~6)GÂÆ&ù0Ô¤üŠ‘ûUPË1úðÅIÞ3u¸éÎ×÷;|©ÏÚUö¬¿m\ZÓõ“Æ¿šÛÞ¹ã*Çh=#®ßÈùÓj“VèÖw\\!‰–²K†;ÚÄt*Þï½*°¹k—\\FHðÎý,ºŠ“pC\0lw½*å’cE¬IçéüÅjf®\"žmþÒ±›²±Wuu6å}Žã©ÜU½EÎ\nKÓòQÓ%‹#‡ïà›Ï»*Ã´>\nY„.±µZÃUƒlÂþdµ)’2ÖÒ/~V§§gù™1¢—× wVJØ‹ÂÉ¾Üý6Vñ6LØ<L–ø­¢ÜôìËqå¥…T|Ó²´Ëmˆ±õ¯%i—Â)˜ˆ—\ZKÄÆC­ìM´îyéßÖ¼v³Áp`–)ðªUÙK\nm©mªäm*ÊMºFJ~CÅXÜÿ\0FÄÉüÔŸîÚëùW@vMÇM™Ã\"Îq‘«@²²µô°›ˆ#ÓÖÕÎ0`×Rú¸ö5oìo9û.i&É80·Í·O}jí\Z5\\0tå+;]À4S³¦‚}T’?&ü©§Pm•NÆ[I¸*vø€6½ÆÃÎÛÔ\ZˆîÆÉôóÛ‘2‰ãL*Ç	a›8Š8ùÝœªÛpozÝi\\¶•ÃÉ–@Çia~^\0YúyÖ¤Ø|=£Ó¦.ã@¹\nÀi‘´ó\nè;ìÃ ­Lba[&.ÆFéï\"ÃÆggÞP|;./ÌUHF5ý¾¤³nÙï3í0G®€Ÿ½GXŸ½ÓÝ+5€×*–7òÞ·8Ìí‡ÄbŸ¼D\r\"a‘ /kY¬f$\\œØíRyAÞagÈüxÇy&Kî¡¬.9@¢ã‘ÔT\\-?x­&ˆd°LL’ÈŽÁvNò%Œ«H\0\0›ïkÖSŠ—quÅY)1xVILa™ô»³ôC{±7\'P;Ö¤¸\"\r…2¸›)nó¿ÅJ3\r¤jUQ9·2Y˜›]¹j«c°e[QUIke\"ö=‡9`åU¿²_’\'+Í1&ï0Ò´gªÑ¿YÇøÓ£„ø¸fubJ¦Ò äB/¾“Ì{Ž”¡ŸqqÖ¯½–à’8e{xÙìÇÈ(E¿hŸzè¯†|N/þE-fŽ1÷Ñz½gÃ×çZm?—æ-zÉF¢u$Ú«Çr~éÎ’UÉ	ÇsÈp¤bLTüLÎJÀ-Ò×ÛÊ’ù¾j²µÖâ5PMÉó&Û\\þUií§ˆ šh’÷JÁÊ›®¦+eØ‘míéKœ0ÁYŠ °$Ÿ[zêÃ\nõdÈd›ŠTIÇ‰-²‹ŸJÞ‹%Ä9]jQX\\^ÿ\0N^ö©Î\ZÊðÒ2¢Ltó*WK7ÏsüjùŒLŠm¶Àtåµpµþ-/l°Ã«ãàXÃ%mÙOÙ°™vâC0¡q©¬ºàÔ¹\'`	65qËâ‰c^åTFF¥Ò,\r÷¾Þu£›ðÞ¤Ïr‚Ë¹yxH¸©8UB¨²¨\n\0ä\0ØéSI¦—Ÿs\nìŽÆÀš¾Öñ3‘eÔ…OM’E>]-[˜T_¼uaÐ„*}üD`*µÅœ%.1ˆ\\_w.š7]\rpmÖÜ¯sV¸ÖÀÞÀž´’T©…vsÿ\0aËæØ„}R¨°ëáKÕÛÚ$ÀaŠñ¹?ëY•ØZÊ4ÔÞ±ç\\-\'Ú±xÖ°à:‘¥Ao®ÃÞ«€£þ×¨g’~Ól<Œç”TSe¯‡r<FdÁ§Ì	\"ú£\'ô€\r;è[nÍ2r^Ãá˜:‡y\0°yQ\r€²‚|À¤Ï\ng³CŽH`’e\0‰„h]û³mD(õ\0û[­:1|GvÇòéºB †\' kÑ‹ó-kUücJs¼SYç$Ò|>Ý‰ºËûÖ‘å3jÔwq˜ô2¤“f7õ¯0ø³†CŽX×n]cÝWs¤^æä-¯ckÔ­[«#\n(¢²Š( >InË¢‡6Åà\'‰7Ôc ¼kkÿ\0ˆýšuR‹µT8<ÇQ± 9ýC¸ù”fÔƒÀX&»D­½¼mû­qôª/j¼ðaDêúÄN/á±\nÖSË×M6àÒ-¤Wy~|¾¢µsÜ¾LRÏ†3BÁ|?X[Ä9ïü+häžÝ½ˆž8¹)W\"G²¬Mæ’]W*^Ì†Ä[0ýÚßízY`IÔ£yj]×o2¤þíhä˜ø°Ï€Ä,f9ðò˜±VÙYX²’OV\0µïøG§¦}€ÃâAŠhã’Ú[K¨`oqq~ ¿­hÛ²jG3`36E°6:ƒäTÜ\ZsqD+˜erº!¼Ñ,éoÆ 7^¦Új´îÏ0øhÒl2Áp¯f$n6°b@ßËÎ¦û\"ÄŸ²¶¼Fk~£ø‡ù‹\n)¥*îIìfñï]:\n,0U˜÷~uV\0‚\06\Z†û_*ÖÅDÑHÎŽ£,ˆ:ó0ôÕjØâ<ª\\..hUXÇ§H‚¶ë·¢°¬‡VÓ¯¯„µ÷Ü_ÏzŸ5]¢ÙÕYb¸¬4S¯Ã,jß-Bä|ÁÛÚ³&\rb=Ê¨êI?S½+;*âÅÂå¯&ÿ\0 ›B¹)!¸ º©-{^À{T®sÚÆ³2C#1>(Q9°-Ì\0.Ã‚ª9Áºµe…‹*‹•:_¿rá,zM¹Žž¢¼¢ôRG-í›qZ±1¡Ã‘¤E€c1Ý¹‚måjod¹Þ‚L<«\"õ±Ý}\nÔüê–\\NÐ–R^¤»`›­¾µiÎ`‰ƒéBÎË¸Spß‘<þ•§œðÌx’KI2ß˜¿¸÷ÚÕó—Á€ŽÈ|Nl‘wkÖ\0\0ß:$á·\\#m·+~U_R7:Ã	qDþ\0ª¿:ÑÍQIaY£ÆweÁ!™˜±?;V–.Mw …ö¯\'“$²frìupÚI†Plë>CÄ	‡`{À‘±Ãl<¹äj³Žœê+r@\'n—ù\n©ñ&4±ß–ççÒ»º-4¥5ÉcY(âÓÊSç²^¿¼ÜUÿ\0çaïïßÆ¨ ñsÈ±G4rÄ0AÆç{‘åëIÛU³!ËÄK©ÇŒþ^•ÛxTy³á®ysp¸]}?&I0%‹\\•™é[˜\\¦=ûÙV3ÑGðÛz•Ãº ¹ WœÏK$_¡þ[ôò¨òãÏ.,éêtÐ‡¼Í¸øeD+<Sq¾–\"Üú¸=ka˜È›4ŠæÜ×ÿ\09Ö5ËßÛÊÿ\0ö«çäX6‚i\Z#+¡±][`v7ùž•Ký³3w7÷8ï[º,2fÊ˜dÄJ6æÛÐÛÒ¥0¨²¨x]O&SqQP(Ž8Ù&WîâÝÊŽÛ“a=ª/\rÁ£êY§_Ep§å©Eê}»M<y!{©ü,µË^uâ±¨XÐÇJŽnÄ›6bIù“KÐûIEFÃà›S°!æ\n¡Þo^CÔÑC|ª(‰ÉEr{â¾4W/ 9Y­·Òâ¨ë$“¸XÑÝ¬ª¢äš¬G1;t§Ïb\\=Â®7Måv‘T“ð*±K(ås¤’yïj»§ÓGs|²žy{EE‹³^8, Ä©;›Èo¨žzA#aaÐ\\só5m¯+{›m­¾þ·ò­\\ß1L42O)²F¥›ä?XnÝš%µQ¹E`ÀâÒhÒXØ2:†Vˆ\"àÖzÁ¢¼B[HÖ\0n ©ÿ\0J÷@QE\0U\'µü³¾Ëd`<P‘(ô³ÿ\0µ]«/²#FÂêêT0EDìû+1ê¯và\ZéáÛÅr ß­[R+·ÆÊ@ó6?²M«—s\\A+Æo®\'hÉä|$‹ßÖ×÷«×cyÔ­‰“\r$Ò0d·-m&Ì¢mpÀÛÒ†ÎÐ°K‡Çâá?ß¦@9]¾/ókü©¯ÀØøñ8<>%À2Â;\r¼qêF¹¿_/•Fñ÷GŠ’&”¸auVR±ÞÆàßqùšÉ\'9m4r9aÉJ›#{_§/ZÄÕ+$Ç9Rê]ólO†’RÀÞÏpH ê]PGQmª¿Ã`ÃN&ŽEeuÒWHBI±[ÄlA‡ÅZø^Õ0Zˆs,zº:cóM[TgÛ$pï†mqk¬ÒluZöØ©ÚÇ¥«\n¥R6sÉ‰<}»£k¹nœLX˜…ÖU*Úwñ!Û—RüµRá.i1BW‰Z-­$[«ÝHµ•Á¿B)™Æ8ÕÄa‰‡Y#¼%¶€ €Åec~)U7â¶ í¥< {ÿ\0:«šyò\'¿ôþË¿Ñ|LÅB<Ïä0A…<\n56•Qr.y*Üî})wÛ¹ÄABŸ¢&Ä[›{{S#bò¡<Iúp‰0eþ÷o¸ä.Q‡É©OÚ®e3ÆcDKìM®ÌmÓÄÄ|€ªºOxrûYär|ü9%Ëª”ã²¸*Ñµ\\;<ÎàÁb^yËî™F•,I,‡§¢žuL¥8&ÄCÈŠI6$\\oÔ‡©Ö*Žâ9BÆÑ©Pêkö=,ÇÞ©=­ñ4‚8`1éi\'Ý,Í¤§¨[xÅ4Ê‰øcÅ©yÛ\r»Ì<ŽGùš¹ziîÕdduõx£)¥ËêÏ9E TÅ}Ti?;xú•Y1¹þcý\"¿=÷_çJ\\ï%›\nÚe]Âãáo‘óôçQÕ¼\'M™¬˜ßJ¨‚\Zì¸I]y–¼ã<n\":Øõè=úš«;\\’Nç™¯°ÆÎÁQK1ä\\þUgË¸dÆ¢YÅÍìîêÃbÖé]ÇRëõ%KSâSK²ù/É“`Ž¥‘‡êæjÉÜê;·¸¬ÙÏ‰Ä$P^fÛ äKrÚßZid}áµ¼S–f…¶Òt‰õbàßRìmú?ZÞ{¶w1äÓxt=œîú¾–ýEŽ\Z.çÎÛýjZî4smÀõ4ÅÄvg’ñË$qn£ÄumbºZ÷ÓzÓÉøoìxÃu—TLA\0êPM®ãp Ø€o½_Ç’àÝr‘Ëñv=BKúe^ƒØVÎmÄe\n³¶”gºw,C¯ºo¶üÏ.¼À9³ÌdyL…çS#œ2[g=›’„¸$s½¬:Òzy¤ž[¶©$v\0u,IØÌ’M[Ï«Ç¶±Ó´yH`œ§º|ü§&lÇí³¨‘ˆîÂƒ¡cV\"Áv;.ûu¹Þ›ØÎ š9Ìe”é nO‘nw‚Ï2<Fû¬Df94‡\0ò?\"66ô§&}5ñNþªÊ¦«épC,Üf“àƒÅu90bŒ±É¯{üš]¥ñ/ØFÖ³„_	ÝNÌ	¯ô¥%ù-½iŸÛ^[¢x§gR§æ7Äý)[4—5M$º[°ÃÄ]Õ®Ìª/Êì@ôÞºÓ…ò„Àá!Ã»P¥¹jbnO»µr@b7¸>Dr®¯à¾%‹1Â¬ÑóYÀùóØŠÚÝP&ç™QK;Q¹$Ø™5êHÃ¬b¸>Õê¼¸666=;{u¬ê(\0\0\0`!_kàõ¯´EPQ@QE\0€í“+îs ‘d¬¶Vþ\n}ê/!Î0øyp¸„Œ+‰T9øA$?3m:_—M4Ìí¿,×„Žp7†AÕ	öÕ¤ûR	˜*Hÿ\0ö°Õ‹:§0™lÑò³ãmüª­ÆdbpE»¶Yåqà¾«?ZÞà#\\F-LèÒwê¾ù‹ûÖÌXáÝ¼/ëkõ¶Ûj±Ïl“]PŒâL«DbU:‡ÞÚÚO‘ü·«ÿ\0eú`–|$§ZÓ“«\0ÛÓm¼ÁªDÅ”Í…fð†+o1ÍOÒÆ±ðžz!ÆáËê\nŸ  ›€ŒHa{^ÀµÅïkÒ¢S‰oW	\\r7v?dÀ«MŠ‘aäAÚßÊ¹ë)Ë£3\\0ˆNaoS½Ö6Ô¦ãr‡åz}åX¢R³4ZKÞ6Œ±Øþ%{Ø‹±<Í){lÀ®“iý$ÃP‘v\Z’Ã}ù zß¹LÃÚVm*ÀÈÅ–ŸQÔRöý\Z°¶Ä°7;ÚûÚ•ÕîiYÙ‰fbY‰Ü’MÉ\'ÌšñY0bÕcY9Ö)yÓ{€{/‹–w’3E3±h¤Ør—ï)µúùÐ,»Ž±¤b	œ(\nŸÕ÷½÷õ¬½¢qäÁ˜ujŠI-´›ÝwäyžU\rÄœ7ˆÀÊñN¿	¶µÝÈôùTEA%7’=_RÆLùž5Š}+÷ÈéÄe¸Ìzå‰¢+¯x­s¥oxØùÅ«ä}šåN×~à€oú2ÿ\0;5­é\\ÞEzŽÄ*Ø€>dØ\ZŠ\Z,Qj]ý8¿ŠTŸÈÃÔMªüÿ\0\'\\å|€‡xpñÌX\\[r>÷­ž ÀœVH£yË¬úÚ×såÌV,h¢Ž% EA·E\0*ö\'q¾£E—xŠ«êI‘5&ù]|7”Åƒ…0ñ•Ôì~óž¬G;_oM…H¬\09~¬ª§ä¥ˆÿ\0ˆÔT*²¹\\¶Ðe²êÓ»nv:ut­íI.,í3ï$<)F*ÚF·üoµBU˜J-pEÉÉÊNÛêÇö7‘i/\" &Ö<Øô½É¿@\rRøË9ÌšñeØ@¥¼\'+ ·ª¥É<Îíû´¥ì¯&\'5Y±8¶2*9^ðêi/á*¥¾öò§Ò·©¨sf”#8ñ©+dGä+Â6{d >f_+Ëjì§³5Àµâô¶#}\0¤C•Áêäuè\r¼êñPœfþŸ‹6î%Û§Âjvºd™qÚ²¡ÛþHŸbÃÍ s½’AóßÄ£÷ª½ŽâŒ=ƒ™ˆt®çá]ˆéïK5@9^«­‡<±6×Vruz8jb£6é;àµñÇÍ™R¢8SáA¹&ÖÔÍÔú\r…úóª¥Yx3‚ñ‹þŒh…~9˜xE¾êþ7ôºÛ¬a„he’&æŽÊ}¯î7÷¨Kf½Z;=â÷Ë1\"MÚ²Ìƒ¨èÀ~%½Ç˜¸ëUzû@vF’Æ²FÁ‘Ô2°ÜwVjJvÅO©²é.Ëf’ÏEˆÖ§ÉMõ[ùŠuÐyÃŽUêŠ\0¢Š(Š( \n(¢€â<´bp³@ÚFËò$l}r^g†:…ÖÆÄ0ò#þ\\«±«xÚ/ý?5™ôMFPeVÖ;|eþ”ï	Ž×Aþ;Ó¿°ìÑ,DY»»Jïe\"Í¹ÞÀ¨?µK,÷8†Xá@aÐGÞVë¿#¼9‹mSœf¢,tMªÆ[ÂâÖ1e7ãR\'q¢7Ä¬gq\ra»Á‰)<Ev¾‘{Ü÷EhAÙ¦Ìr+Üî²0÷±$ùV¹„„¼O¤)Ôð¥Ô9\0Ü<íÏ¦ÂÕç+Æ‚]\nH$imMÎÄ’< ƒaaëU1ã¬Žw×·ï©g6ImP}CÜŠUA\'k.¯ÄØ‘çòó¥ÏG6e–4Ï‡1:ÜÜ°Ý\0@6³^ÿ\0á¦a›UÆŽ Øùó¸÷ƒªÈÑ¸ðÈ\nŸ@ÞçRÕd§ÐŽîu9.Š›â,(‹È\0±Û‘\"êÄ|È¾ÞuÐùVò[]\ZÅîVzÉòÇÅb#îÀ|‡Sì.k¬²¬:á°ñÄƒdPª¾g`sïñ.Õ+áæ–r-ªèv7×ÐT¶sÛ*[Œ4I“±ïoÔÔƒX28³®‘Úà…r~ò“v?=É÷¥o<;…ÂI…8h.ðI¯@°:t[n@îyT/qþ+‰2É,“Ç#2;«üK~N.„yYéžð¶8\\6\"RÒ\"Qèk+«é6>›#Î£Ž(ÆNIrú’Ï4çÂOˆô-Øì¸ÜX¡‰<šˆGŽãMÈS¨5ÅÀ¿#±±’ö=ƒ‡iO\nÊ¬îÈ)Ô.¬Ü€6¿:è¢\n¡T\0ª\0\0l\0\0•{­Ú²\"ŠÚÄ`O4úVþ\\Ùa”_BòÉy·¥\'kœ<óÅŠÂ@ò™G\"¢ßÄ…Ï+±\'a¥|éÑ	=ªEEªÆrNÙY¦©	ŽÌ;*Åa§L^)Ò2¡­ÛÄ-»_J‘~—¦sÆUˆ?ÂÕ5EK—\n™28Ê„òÔweò>¨…™¡*vbTØ\07\'Ò­TV‘Ó$í³igoŠ9w+ìÓ4œ‹a\Z1ø¥\"0=‰ÕþZÐÎ2¥Ëq2C‹NöHÌd\"’#•M™¼VÖ¸é½u/;RìêÀWzÑKD2²­ÚÄln7Üµi:+Ê6¨ŸÈ±0÷iöp ’\0¢À)\0•\0r±7·ø½)-Û6BaÅŒBÂÇÑÇõQþCXx´?²aÓ\rˆFh”–Ðøã¹&Ö<ÅÉúÚÕyÍx§+Ì0Æ)±1®¡÷®„`Ù€±¿Î°l\"«íªËˆáìNm\'MÉ#ü¼>ûŠÆbpéuÂ¬„õš[k?¨‹´cÖå½E\0ØþÏ9rÅÌGé,WòÔ@÷\"ÿ\0!åLž â<6\rãûN%b¨a}_Šàª½O/õKìÉ—É!K;ù(Tÿ\0‰[éW&á`c8¨µ˜ï¤†eØÚàé\"êl64ê° nàŽµö¼Æ@U\0XÐUê€(¢Š\0¢Š(Š( \nRvï•‚0ø€?Mò>%ö¸aûTÛ¥§hŒqS\"‘âBªO à†Bl	Rvähylƒ’ßÜZÜÂ™P†±n\rÆÄnÖ˜ÿ\0ûaþóûïÿ\0J¾7eØÒûïÿ\0J¶Œšèk(§Ô³çu„•p˜¥ÅÇÞ££<;†U`ŠG[Vœ9Î1\r\"c¡(®ÅF°ˆ‚~kaU_ý¢Ì?ýãÿ\0Ò¯‡²<Çña¿Þ7ý:ŠPo£¢W4ÒRW]Âñv˜¥aÏCúEþµƒ>Ì°ò„Hqp\'ÆD©{[ç¿•½iV{$Ìúÿ\0ïþcnÉó,?ûÃÿ\0%m%nÈà¶ª5;TÃF˜¸ŒNŽŒ—º•;ÞÄ¿]üê¤-Ö²æÙ{A;BåÆlÚ¥¿Q{‘ÈúÖ\ZÈJ‹—d˜HfÍ`YÀ\"ÎÈ§“:‹¨·[·ÍE?x¯ƒð¹„&9£¾äŠ\0xÏ˜>^`ìkŸ¸G‡1ÂL>6]+\"ºÝÂ’Ù¶=¸÷®ŸF¸u¡“sì¦L&\\4¿mkŽL9«B4åþÏ¹Ùx\'Â1¿rÁÓÑ^÷ àŸÚªÏö„ÂÇÁ(ç$6o]l~ùWÎÀŒÂP9;_ÙÒßÄÐEPQ@QE\0QEEPGqÿ\0DÄ[û™?áj‘¨Î&ÆÇ,¿Då½EŽÃÔò÷ 9^à[È{W µò5°¥ò>Åã\r°¸y%èX ù»YAô½\rX83„æÌ±(2ÈFÑ¯Ï‘cÐ*`ðÏb.H||áG÷P›“èd#oÙôßÉòˆ0‘pñ,qŽŠ9ú“ÌŸS½“*ËãÃÃ.˜ãPª=\0·>§Ìõ­ª( \n(¢€(¢Š\0¢Š(Š( 1â%¬Ç &—Ü9›02>öGÒßÌš¶qF#LZG6?Ãþöª7qnW-¨šÛ¡yŽµì\n‡ÈñƒHŽûÛ×Óçý*dP€¯V¯‚”=¢æxØ1Òižxâ`†0•\r‘ui\0Ûâ;úÐ\râ)]Ú7iI\n¶áç7V‘wX¼ìy3þCò¥ogX‰dî&V\Z4›ÈÜ¼[÷dœ1‹Åa°²ÉêËûíeüè¥É7\'rNäûÔ×pü˜ÙÄjAc#ôUùþ#ÈéLìVv³c$\n?»ˆ‚OÍÎÃØ32Î\\<b(#HÐtŸ©<Øúè¨°ë\Zª ²¨\n£È\r…[r	õBUðÿ\0OÊ£ÎC!ûËùÿ\0J‘Ê2ã«°:­Ë¥¯ýhßöŽÿ\0_‚ýIâŽ³g|2âç·„*F©%›òõ­_í	wÅá•Uü5Î“¤ÝÙŽÄí½ŽÕxìF(Ó-URã;¼€0f¹°\Z€øN½=h\ræP@,<\"æ²PQ@QE\0QEEPV;KË–bbˆú5*Žm ‡Óï¦Õg¢€ã\0|©õýžq€à&Œ°Ô¸–6\'{2FFß0j»Û§G‡hñ¸x‚¬ŒV`»\rgukr³^ÜÍºš\\ðÎE&?0ðÄ¥Y—¼m é± ößØÐu$ª – ¹$ØzÕ‡6Ã½´OjågS{òµŽô„±¬ÌüGaÐÊÄŸAàµþdV<¯„eÂãðxl]³DC6 €Ûê]>ž´FQEEPQ@QE\0QExšM*[Èô *ÜE6©Hè»_üô¨‚µ’yîÄ“¹;ÖœyÐÜ3†\r5È¸U\'Üì?[‚*ávõôþu?@•ã|3æàÂ^ÊþK£½so?ú\nuR»	‚cÄÒ¸S¥P16Ø^A¿©þ€·ÃÁ–†{ÈcîÐ›ÅÍ~k±7\"÷5aU`,+íEPQ@Q;Yá¹±°ÃöxõÈ’|7ÂÂÄÝˆ\n­å‘Nã;™OÄ¨¥´óå u\'oAMú(\n[ÙNI<³Nàƒvm\"ãp|>/óUþŠ(Š( \n(¢€(¢Š\0¢Š(Š+C<Í£Â@óÌN„Ø\\›\0Ì“@kq~F¸ìØfûëá?…†è}˜\nå·2“‰ŽtÚH\\z©³)ô\"ê~töÆöÉ“Üád-mµ•þºI6¥~w–bŽ.|3)™™ƒwDj\"×²{n7¶þ´Ke8Þþ¦ÐÉÞ\"¾†ø—PÇÔ^©}¨BÙa¶ÿ\0kA~¶%M¯íùUÇ\"\'ìÐ_Ÿuü\"²c²ø¦ÑÞ níÄ‰ºËÈZjŠ( \n(¢€(¢ŠÿÙ'),(2,1,'image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0¹\0\0\0×°µ\0\0\0~PLTEÿÿÿ\0\0\0ùùùÏÏÏÄÄÄ***£££æææDDD™™™ˆˆˆYYYíííôôôÕÕÕ‚‚‚???666ßßßÚÚÚêêêSSS|||ªªªÈÈÈsssJJJ111fff³³³```\Z\Z\Z»»»žžžeee$$$vvvú»\0\0&IDATxœíkƒ²¬†ÃL­LÍRSóPö4ÓÿÿƒÛ<,°,Á™y·÷·R/9,œ¡I-Í~:¿M ;[™ôM€(³I)¶& @ 	Ðh4š€\0M@€& @ 	Ðh4š€\0M@€& @ Ÿ¢X†çé]rÏ3¬ßðV~ˆ±ˆÖÉ¹éüßoÖQŒ¨Ÿb_ŽIyÓ$ŒT‡HÕ.Bæáýl9ù ¶ú¯,ÉÊcùóä]þ2HPì‘æv×q+:jèPüXÕˆr9 eî<?ÉÑÏèu\"“«q,–èÜ]8jú^`“¤1xGäF}O^i(´dæ¦C#)µÑÿt‹’…¼Üti4 Ê}«ï¥X s.)7Oî:k‡NoßÃ8¡ÓØÕf$ ŽfêÜBY¡„c®ÈÔ8@Ô½W]*Ehé‹ÍË$F×y”M1ÚJd Î gŠÏé˜É@œ9è‰(Ñ—ÄZ~Ú~PE(“•>’$EƒÍ+e\"rÒKÒ¬ÐeøEÖ¨·É?T²Ä×ƒ€KÛ{m,sD2ÏEBLM-E\\¦‡$™£BÌ…ô±*\\ >:\nº°•hãô½rœ¾ºz\\KUßpÌîë8#_©@r´âþoGæcâaþNûòÅbrõ\\2(Ù™ûÄÞ?:“¼a²yh+*cÏ$HÌ/åvRON¥ý{S%DïU²Ï$ˆ}D\\ò¡9]÷Õÿzêõ(*kO$ˆÏ/ 1j‰×›:Ñ|³Å!ä+‰@ÖüAÝ­\rdÃœ`ëÚ£}aPåHŸK(‰@øþPûÐÂºJæôì¢líŸø\\BÉ²à¿Oßmù†cá¨>ûÙðK~Ï+Èí›ërvÏ(f}ìÚ„:#\rˆ¸ÿ{Ë6\r44‚Î°@ £ôfU\Zø¼æÈÚ@ëÉaØŠÏÒMi@¢.Ç¡ÞÌO#iÜ€QõF¾–4 kÔqÀncX¿ÕÄÀâãwŽJë´ï:T<«Núˆáò&’ÄKOÇ¢=}à+óÂ½V¯|\0@ìÌœOF²€8ÏÜñ?¯[0·U6M 7Ø©Ì»*¢0ÉòlòÁRÃÓéÈ\r$;60Ö»Ûá’¤@ºÉÖ¬Ï‡Oò¼, ú§@f:ÃÖºåCrÕC²€¬>âW¶{Êš¥…tç», ÛÏmÊ˜ô¼)§¹ˆMÙ†ˆ, ÇïÏloë¦i²â\r[þc@¬¾^v_Uù5îï¹±@¬Ìu7§hÿ.¶Qõ£”.žBºGDäÒa|¾¥¿ÛíFˆMLÐïA•&Gùä=$ˆŠ€QÙëbGƒá,\\òÆ20pˆú;iý´ú³ƒ;ÿN³-È»!te½’©>’ÄHvàŸÊÝÞó\n>§?2whÆ^I%„®œ^øÅýÌþë_¥G\0Hó©²ÃÝ°ËÉÁQq½ŸiÂ±~,?FD\Z‚iU‰!‚zÌád¾3ÙšKïdä	\\èTõ©Ûçõˆ†²ƒNfm#}ùŒ¼©ÌÌƒ“næú²ÎXÔ#&ê,ù³D(ÿPwéËURÕü?¸ÂETçÉ‡Ø‚‹VîÒï9ÐÈy¸ÀNKHD §/à#®CC¢§Fü+èdTs•ÛOÄL›S è¤w/¡‰¿ÉIp–nŽFX[%ˆåB³2hD¥ÙŠÏ$¨fwÁ0Ðs5ñ™d$3,³`Ú@:ž¡ZnsÃ°š©Øõ¼\\#£ËŸúŸÉÂŽg*£¡ëòÎó</JåQÓ‹`\0’­mÆX/5´{…rø×‘%Ò!8K5FŸ;“ÄÖèj¶×=yÀuGÊFÙ@Cîjˆ‚cr‡W,îÚA’Ùu”ØÙˆ6W¶§òì´„=ÐÝääJ2˜»4Ì6æés£µ#¬û.Ù‹õ.ª’‡›å¿º°³þ™ô0ˆ*_’(4À2Š\\ßž–­8;-ÓYŸGŽÖcí\Z%}Ýn€vO:÷íîGU«ÕªPUÇçsÔ³;Úbwù+»è{`õwÒ11D#l†£Ã \"ÆòI­®€( bmÆ[ç>iC•õ\0+38à7lhœ-wVhù¡¯ËwG-cQô7®‹wçqyŒ¶mWŽ´üýTúyœ!nC£mìV–}8íôJeóñiMû\\ãmýlÑò×mß·\ncÕ÷BTò/të¬éÑnñÍÖ@¼lÓC‡¼Jšîdoê Dûm¯óËâ„ÖCÇ·Å#Ç§÷Zó\ZˆJ½ÿÏUD‰ïë­\0]õ„ÐÊ{ñâmç†Ðmøæed1Û{fnˆÖ žp4ß‹XVGtó\'c5/*q„\"Œõ?äþþ3„Ü£Î­žíJ¯ÊP?ý wå‡¡k¦ûF`†³º»ÓÂFrHY1òÕéîFÔ¬å}^š]\ns9ôíeHÐÂÇO`ùÎBÏDÇ(v|±~S1@Ì`öô½uÒÕ^+•|¥ìu…IŸØ*[Ž& @ 	Ðh46Å~ˆ{Ä	‰ëº·µcs:TœP‚üvrÝÍVZgQx(¯°ÍxfjÛYË³’°àÜ§ˆm«Û¬Lçfaž`\02Móª1vˆ]‘SçmÌdu~O¹¿{‹µAs,hÞ”x[ÿ½n‘Gjóîj\r¢/õ+ AÑÚqaÓ\Zj\0‚-Õ+RÀ`“É?×¼4V·íSÉ‚<%¼¶þnû±ÛAŸÍÔM;uîÓDÉJ$\rGö` p,“™ðvå€xÎdæ`;™Ç3Ýïn0!5	“ºáii;¦†Ä:±ùCy#Á@‚„w»rHÈ¾c³ð8\'–…ÁáÄŽlajÅìY œdÑá«\"tÄi¼ÛÃm>¿Õ…3d€œçô¨–4ÚªE®aºIMfƒÔ×ŒlEs‹ò<:VÅ²éÆæ\0QëK.ax¬÷Û92€TÍÇÚÊBh[NÇß¬5¸„àwÎ‘ïž_•ÿ¾Æ)öÃð«äsš(ÃdÛ§msÚˆ`Ø›oÜû*Ã©\Zõ¥ +ríÿ,òö|Õt®j{§Æsnªæ‘îI´÷8©ïí2UNÚáFÌ\0©‚í7\rlý/5`ÄÎ5;(ˆJ®Üv—Û¤Ø4ÖþT”6ß^Ý³4§Æi‹¢²©÷­¶:Ç­CcY\Z$â\\ÿäDþŽ¸@PºëVÚ\\yÏ\096I×²H[Q7Õ#åÍóèš<Ô\"\'ëljŠFÊgà\nÐŒÀ™«ùÊÞt!6# _€ òñ»¯wN¥ÔÞK5 7i÷“¤Ü…Lj&¾‘ôpUuƒ@Èj)2O›Ú…P \ni\09³õä\rT—>RÛ„¡-Þ¦=G¡œ;p2aV²dŸˆ®T(7L0wÓªˆ“GrÛu‹n^\rƒ2q¾jÛŒ¤æÀbtÕŠÿ49sBt;BE$bfñ¡’ûU‚È#VÚ¸Á\"†óU¯½!©sö>øˆIë,\0BžpwàûWÊÙ?Ñ¹¹\0ÉùóxÔÓãPµëÔ\Z¼ºÖ™¯á¹\\ ßœÀÄ¸ýÖ\02nâF ,ð±¯ÛÍOÔl0ò~¹‹|ð©Õî2kî©\nþ;…Oºä9pª&i½©€{ƒkgUfôž@È@-œs„û»ÊŽzöR| ¼èbÅÑV\0ÁÏÜç³pî‘–*g”E«)ôpËü·sÌÂM$kúh3Æârg€ˆ\r»´yÍ£züHÚ  ¼=‘¡=µ‰Û@,Ü«ó×©Ù8eiCý§€}Žè×$Û@<ü|ÐŽ&÷Æ)Sg\\ ÔÂ„·}—}{\räöˆ¦\nb&ËN¹ô­Ê*!n¼ùUÆÀÏ×Qep)¡Êh–Ñ­¶2ÈÛª‚;þGÕH£*¶zí™,ˆO¥«óÞéeð°Áµ!C³>)E\0ámFäŸ[‡\02¶ãÛ!ø×0ûôYL*ÏR%ƒÈÓd»¾‹ì~“‰BÜQ}¾5&ˆÆËèíw€ŸÜ/U^ªÌ‹B s?3?d«¼~~@xE·ßô\'\0B†ãÜO*ºÕ5Å1p+nrF“ÔF/B€°Ãx¨Z¾?„7ü¤[RÌD¡»?rO‘GHÚ¿a£ýÈÇž:]ˆ$ƒ!LW¹sï^9Ótg˜žè‘qð˜\r÷YàÛÔk@!Òæž™ÙïÂ¬Ï9/Cç|@sW}b§²\0Ä\0¦ˆG<u•…@È\r˜a6Ý¥‘ïuÿØRÏË|µ^Gg,áDÂ` fs<Cç›\Z[Ÿ1ó2Ô)Øþ†¸CJ6þä\ZnŸ*¬|„Ý3wßëº˜åtbì\0\'ªAfX]3wÙ·ÏNeÒýh«ª´*:½‰ñ¾Ú]{‘Y Jõ\r;-ŒïÁ¸~TEhpºZ\0rð±õËûØ«ê6ÍjÄ™ì>ÑóÒm9lQfÞ¶ŠÈ óBÌ‚ÎuZ_Š\0²¯¢C\Za\"íÎ8@ìS}2jEåÐ/¦‰2³æüDßyó,@–»×ÆWÛåÏ‹±B&ÕCÕw¹¯ÐåhÙ6†D\0q\r•¹\rèO¹DÊŠI†šfo¡ÄWÕýw,±ç€¬¹„s5ØB:óì \\ËSÄ›ÙÛf!Ñ˜ã/\\Le2Éå6ã›j ÆeÕKU?ß¹^ÆÑ·U#·?Ì™èÀÙâq¡œSÄëÐaá¿Y eŠ5í\\Ö\"Wq†Ùá­¯oé§°®nØÞÀeÀ2Õ\'ˆã±EÊ}ƒñ_êk\0)­U-.±ê¿¹áŠâ•ÌË„\\Í&ˆTµ€×h4\0îÑ™Hféúµ@°r7ÚþQT¿ˆ‚Gmò7‡ú­@ˆeûî¦ Ãõû€Ü«(ÔÍ1òŽ8³ß$L¶óù\"*ë“®_¤õÁSøñôë€´¾Ë>öžI³_$oðè3O\'Z¿HíPøæNÊvh¿ˆr!þŽ¯Õx{X6øw‰Ùs…Õ‡vˆ¯þw–÷¶5â¶]C \nÄ~º‹Êÿ‘ldRC 	Ðÿ\0º{åÄXF²\0\0\0\0IEND®B`‚'),(3,1,'image/jpeg','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\Z\Z \Z! ( \Z\' \"1!%)+...383-7(-.+\n\n\n\r-&&--+--3+-5--.2--55-.--5-/++//------.-7/---/-5--.5--ÿÀ\0\0 ;\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0	\0\0\0!1A\"Qa2q‘BR¡#r‚’±ÁÑSb¢$3C“²ÒÓáðTdñÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\01\0\0\0\0\0\0\0!1AQa\"q‘¡Ááð±#Ñ2BbÿÚ\0\0\0?\0x×‰eUf\n/k“mÏ!½{¥ßmùq“\0²\rû™Uˆôk¡úë@1(®eÈ¸×„ÚCìäñ§Ñ·Qú¤S\"í–6²ã (^%÷CâäZ€kQQ™7áqbøyÒO@|Cæ§Ä=ÅIÐQ@QE\0QEE§›fQá¢y¥6UçÈRk\rÒ¶e+tÊ)9šv‹‹‘tVè\0ÞìÀïò£‡\Zcÿ\0ùMû©ÿ\0-UzÈ.Ì´´Y‘cã>*›˜Þ	ITEWŒ›¡;’èlFãz¶?Aö/µ®ÿ\0tFM›_àþwòÞ’LÄ’I$É;“ïçEù\"Oåj­L“oÏèZ––-%åõ:\"ÍSN›ŽªFÄ{[8¼*J…$EtnjÂàõä}EQ{Ä“ñ“ðÈ~Ð·ñJ½Å\0RÄ^ìnnI°l¢ÃµtpÏt»œìÐÙ7 µ§ÂA%¯È‹X[×ÏÒ«¼O•c$PaÌ;…°\n\0+àê]Ç/S½,¸“Ž‚c…Åb™ÀQm/áaÒö\0“na®wusdt¤¾¤Ráü·´Qæ8•bâGèªoc¥o±°ç½ùÞ¤rn>Âbä0ÊßÞ^ô®–ÒAö¸œéHˆ´ƒk\n×Å¯vnwo»é]Ú<iZ*{Lˆèl¯7‹Òw2«„²#¾úº­·‘¨ÜÓ9Âaã–I5KweÜ€|;[àlºÚ–\\Åà¡™™Kâªª“eÒ5Wýbn>_:ÔÎó	qR´ÒX-”X\07I;wªO&øè2ê”cê< Ä,‘„‡n†û¶ßkc¦œD¥Pw†ÚÀñ¶ö½®/Ö©<	Å1C‡ÈHUc­‰UÊÙ@¾ƒc¿0Ý,já›æ±ýŽYÑ•”Dî›ó*¥‡¾ß•TÔá–ÉBÚ~k©gO•N¥ô+Ù7hðÏˆ›RÒE²›í+\ržÃ SóÚõ‹å˜»³šçÈ¥`C!¾ lAó¸ëSññ®4µ~²©?[Wœñ-&£UµF^êìüüýNæCm!±4¶7RAó¨lÈ»6®ñõyê4º—‹qþÚß%_éXbOÅ)o˜È\n§‹Â³CþËëþØµ1ƒ¶†þ[Æøˆ†™4È\0°\'ŸÔs«F?‹pâ(šHË¬¢äX,l~.v#—¥#0YÁ”oñcÏÔU»\'âŒYH°øx£•ƒ\nÑkaÖàÜ\0=O/:èàËŸÙ)|8¿ÞçÑaÌ–Li\'ßšàv)¸½‡US†%Äé—;—°´P3Eyò:™¯÷‰ö¨üç²ü4ÁŒrÌ’tfs 0Û‘ï}«¸œŸc‚±`º–O’µü¯à½\ZÔÊZsúB¢És´d•·MÏZ¤ð÷æ˜)PœdsDI\rÈÛìm¤²›Ïo*¹a£Äkîw¼`kùZK%­ê§ùÖÕÍšåÇp¤šóçäHQZyœ=â÷EX¤•Ù[I@AßÏ~[VL¿°Æ‘!b¨¡Acs·™<ÍiU÷6*??Ë†\'\r4”‘²ýFßHQY59	ðw«¸€a¹°Ô¦ÅoÐóçåX\'wŒ€|@ò\'¯Ðš»v““$9œÈËà‰W¥µóÜŒ7Ö Ï\n‡ÿ\0W)_ âãØèh•º0Ý+dLð ”aÈƒb>Dn*ñvŸÃØ!Iw>ÒÖõOÌ8w\0.ñk@	,<jRH³žÕŒ\"Túoÿ\0ŸfQqá˜Œã%qvtfEÚæk.!_ÞdkOßQp>`UïŽŠd‰\"LŒ}A®@†L<Çþ*û†Í¦†N÷,‘=†èÅI·¹`Øìj+ž¸w¶Ìd6\\Ti‰_Ä?G\'Ô\r\'è)Ã½ªe¸»/}ÜH~äÞ\rüƒüë@]è¯ˆÀ€ADr5ö€)]ÚÖnZDÃ)ÙF·õ\'áÃÚ¦${FB3	¯×A-\n?•UÕÉ¬|´qO\'=ŠÕtán\rIâLÍføUvÛÌš™nÃt2Úÿ\0µsi’)Ð²¬˜|;ÈlˆÌ|”~‚˜ÿ\0ÿ\0†]ÉbæïaùRynÓD þŸ{ÜšS0òÄÖìƒh&’à–“M¼´¾¾:¿Rg.âlV]ö¥ÄÈY˜0\0’µ†ÀtëVŒµ\\$¶YÃaØõo¾¼½À®¾ž?ÓIu299Õ¢õ<!Åšö‰ˆ#‘å·*­ñÇÂ5€^2±5ƒ( €T®°ÄyÚÛs«HÝuÄáÕÍõÔÀln@rêk&©<FËð‹›Úçe½µûíåSÆN.ÑLçÛ(›Š’yŒEu<JÄ\0@aªÃÂly\ZÆ™>6aÞÇ…™ÐÜ©N 6ðþ.}?•<ðØ	p¸LCB˜‰d–aáÓv‘¼7R~êi¾új_ƒÑ×I»b¤\06*nMYž­µ°ÚP¸ßïÈVãû6ÄÝDz[ÁrÚ€PÃî•;mµïÎÃ•G2‚X%1Ê…$[Ë˜ÜlG¨¦ïç8Œ¹‘‰ïðît’ÂÎÌ\rJ,AµÅö¥ççƒ1”ÄPi\n·$®ON[òœ:†åL¡ŸLš´E&m}ZñŠ¼€€l\n‘õ¦Ø–6[#{zùüë?Ú©¿•kâr\\hñ¸²¢0Ï£¼Æ;éïò×k_Ò±ÓÃ³,¬éPEÁÔíÌuÚ¾âû2ÁHISõô7Ú¸Ni6D¦«‘E:‡dø?Ç7ïùk/²\\)B#’U~„ÃÜ[•7£;ÐžÂO¡Ã_‘ßå×ò§÷öx ’,@Å± d]!ƒW¹6¤eƒhd’)>(Ø«{*é¬šIbÂáWºwcJH#J¢÷¿/Ÿ[T±Œ/|—óö4Í›$#¶“»èoa1Ñ,¦#3òñî.OÊ£3|÷2(#Â—‰Šê{7#ñCÂº|óZÅgN£˜}V•Â…•W˜;0 aÎö½gÈ³|RHøu-)—Wtd`4X3oA}Àõª¸µûžÙ6›n¸çá\\üÍ•¯z“ã»ããa„ñ) •©¸¸älEÇ‘±#ÞµD/Þ	ZBªÆ=´ƒ¾÷ÿ\0ÎU›¬j²>·Å­kûW¹áWVG•V‘b>•ÕkrMœû§Hû€e!äA¸?\"+Ýkà0QÃ\ZÅ„EÙTtëüMlVËÔÔ(¢ŠÈÝ»å~6)GÂÆ&ù0Ô¤üŠ‘ûUPË1úðÅIÞ3u¸éÎ×÷;|©ÏÚUö¬¿m\ZÓõ“Æ¿šÛÞ¹ã*Çh=#®ßÈùÓj“VèÖw\\!‰–²K†;ÚÄt*Þï½*°¹k—\\FHðÎý,ºŠ“pC\0lw½*å’cE¬IçéüÅjf®\"žmþÒ±›²±Wuu6å}Žã©ÜU½EÎ\nKÓòQÓ%‹#‡ïà›Ï»*Ã´>\nY„.±µZÃUƒlÂþdµ)’2ÖÒ/~V§§gù™1¢—× wVJØ‹ÂÉ¾Üý6Vñ6LØ<L–ø­¢ÜôìËqå¥…T|Ó²´Ëmˆ±õ¯%i—Â)˜ˆ—\ZKÄÆC­ìM´îyéßÖ¼v³Áp`–)ðªUÙK\nm©mªäm*ÊMºFJ~CÅXÜÿ\0FÄÉüÔŸîÚëùW@vMÇM™Ã\"Îq‘«@²²µô°›ˆ#ÓÖÕÎ0`×Rú¸ö5oìo9û.i&É80·Í·O}jí\Z5\\0tå+;]À4S³¦‚}T’?&ü©§Pm•NÆ[I¸*vø€6½ÆÃÎÛÔ\ZˆîÆÉôóÛ‘2‰ãL*Ç	a›8Š8ùÝœªÛpozÝi\\¶•ÃÉ–@Çia~^\0YúyÖ¤Ø|=£Ó¦.ã@¹\nÀi‘´ó\nè;ìÃ ­Lba[&.ÆFéï\"ÃÆggÞP|;./ÌUHF5ý¾¤³nÙï3í0G®€Ÿ½GXŸ½ÓÝ+5€×*–7òÞ·8Ìí‡ÄbŸ¼D\r\"a‘ /kY¬f$\\œØíRyAÞagÈüxÇy&Kî¡¬.9@¢ã‘ÔT\\-?x­&ˆd°LL’ÈŽÁvNò%Œ«H\0\0›ïkÖSŠ—quÅY)1xVILa™ô»³ôC{±7\'P;Ö¤¸\"\r…2¸›)nó¿ÅJ3\r¤jUQ9·2Y˜›]¹j«c°e[QUIke\"ö=‡9`åU¿²_’\'+Í1&ï0Ò´gªÑ¿YÇøÓ£„ø¸fubJ¦Ò äB/¾“Ì{Ž”¡ŸqqÖ¯½–à’8e{xÙìÇÈ(E¿hŸzè¯†|N/þE-fŽ1÷Ñz½gÃ×çZm?—æ-zÉF¢u$Ú«Çr~éÎ’UÉ	ÇsÈp¤bLTüLÎJÀ-Ò×ÛÊ’ù¾j²µÖâ5PMÉó&Û\\þUií§ˆ šh’÷JÁÊ›®¦+eØ‘míéKœ0ÁYŠ °$Ÿ[zêÃ\nõdÈd›ŠTIÇ‰-²‹ŸJÞ‹%Ä9]jQX\\^ÿ\0N^ö©Î\ZÊðÒ2¢Ltó*WK7ÏsüjùŒLŠm¶Àtåµpµþ-/l°Ã«ãàXÃ%mÙOÙ°™vâC0¡q©¬ºàÔ¹\'`	65qËâ‰c^åTFF¥Ò,\r÷¾Þu£›ðÞ¤Ïr‚Ë¹yxH¸©8UB¨²¨\n\0ä\0ØéSI¦—Ÿs\nìŽÆÀš¾Öñ3‘eÔ…OM’E>]-[˜T_¼uaÐ„*}üD`*µÅœ%.1ˆ\\_w.š7]\rpmÖÜ¯sV¸ÖÀÞÀž´’T©…vsÿ\0aËæØ„}R¨°ëáKÕÛÚ$ÀaŠñ¹?ëY•ØZÊ4ÔÞ±ç\\-\'Ú±xÖ°à:‘¥Ao®ÃÞ«€£þ×¨g’~Ól<Œç”TSe¯‡r<FdÁ§Ì	\"ú£\'ô€\r;è[nÍ2r^Ãá˜:‡y\0°yQ\r€²‚|À¤Ï\ng³CŽH`’e\0‰„h]û³mD(õ\0û[­:1|GvÇòéºB †\' kÑ‹ó-kUücJs¼SYç$Ò|>Ý‰ºËûÖ‘å3jÔwq˜ô2¤“f7õ¯0ø³†CŽX×n]cÝWs¤^æä-¯ckÔ­[«#\n(¢²Š( >InË¢‡6Åà\'‰7Ôc ¼kkÿ\0ˆýšuR‹µT8<ÇQ± 9ýC¸ù”fÔƒÀX&»D­½¼mû­qôª/j¼ðaDêúÄN/á±\nÖSË×M6àÒ-¤Wy~|¾¢µsÜ¾LRÏ†3BÁ|?X[Ä9ïü+häžÝ½ˆž8¹)W\"G²¬Mæ’]W*^Ì†Ä[0ýÚßízY`IÔ£yj]×o2¤þíhä˜ø°Ï€Ä,f9ðò˜±VÙYX²’OV\0µïøG§¦}€ÃâAŠhã’Ú[K¨`oqq~ ¿­hÛ²jG3`36E°6:ƒäTÜ\ZsqD+˜erº!¼Ñ,éoÆ 7^¦Új´îÏ0øhÒl2Áp¯f$n6°b@ßËÎ¦û\"ÄŸ²¶¼Fk~£ø‡ù‹\n)¥*îIìfñï]:\n,0U˜÷~uV\0‚\06\Z†û_*ÖÅDÑHÎŽ£,ˆ:ó0ôÕjØâ<ª\\..hUXÇ§H‚¶ë·¢°¬‡VÓ¯¯„µ÷Ü_ÏzŸ5]¢ÙÕYb¸¬4S¯Ã,jß-Bä|ÁÛÚ³&\rb=Ê¨êI?S½+;*âÅÂå¯&ÿ\0 ›B¹)!¸ º©-{^À{T®sÚÆ³2C#1>(Q9°-Ì\0.Ã‚ª9Áºµe…‹*‹•:_¿rá,zM¹Žž¢¼¢ôRG-í›qZ±1¡Ã‘¤E€c1Ý¹‚måjod¹Þ‚L<«\"õ±Ý}\nÔüê–\\NÐ–R^¤»`›­¾µiÎ`‰ƒéBÎË¸Spß‘<þ•§œðÌx’KI2ß˜¿¸÷ÚÕó—Á€ŽÈ|Nl‘wkÖ\0\0ß:$á·\\#m·+~U_R7:Ã	qDþ\0ª¿:ÑÍQIaY£ÆweÁ!™˜±?;V–.Mw …ö¯\'“$²frìupÚI†Plë>CÄ	‡`{À‘±Ãl<¹äj³Žœê+r@\'n—ù\n©ñ&4±ß–ççÒ»º-4¥5ÉcY(âÓÊSç²^¿¼ÜUÿ\0çaïïßÆ¨ ñsÈ±G4rÄ0AÆç{‘åëIÛU³!ËÄK©ÇŒþ^•ÛxTy³á®ysp¸]}?&I0%‹\\•™é[˜\\¦=ûÙV3ÑGðÛz•Ãº ¹ WœÏK$_¡þ[ôò¨òãÏ.,éêtÐ‡¼Í¸øeD+<Sq¾–\"Üú¸=ka˜È›4ŠæÜ×ÿ\09Ö5ËßÛÊÿ\0ö«çäX6‚i\Z#+¡±][`v7ùž•Ký³3w7÷8ï[º,2fÊ˜dÄJ6æÛÐÛÒ¥0¨²¨x]O&SqQP(Ž8Ù&WîâÝÊŽÛ“a=ª/\rÁ£êY§_Ep§å©Eê}»M<y!{©ü,µË^uâ±¨XÐÇJŽnÄ›6bIù“KÐûIEFÃà›S°!æ\n¡Þo^CÔÑC|ª(‰ÉEr{â¾4W/ 9Y­·Òâ¨ë$“¸XÑÝ¬ª¢äš¬G1;t§Ïb\\=Â®7Måv‘T“ð*±K(ås¤’yïj»§ÓGs|²žy{EE‹³^8, Ä©;›Èo¨žzA#aaÐ\\só5m¯+{›m­¾þ·ò­\\ß1L42O)²F¥›ä?XnÝš%µQ¹E`ÀâÒhÒXØ2:†Vˆ\"àÖzÁ¢¼B[HÖ\0n ©ÿ\0J÷@QE\0U\'µü³¾Ëd`<P‘(ô³ÿ\0µ]«/²#FÂêêT0EDìû+1ê¯và\ZéáÛÅr ß­[R+·ÆÊ@ó6?²M«—s\\A+Æo®\'hÉä|$‹ßÖ×÷«×cyÔ­‰“\r$Ò0d·-m&Ì¢mpÀÛÒ†ÎÐ°K‡Çâá?ß¦@9]¾/ókü©¯ÀØøñ8<>%À2Â;\r¼qêF¹¿_/•Fñ÷GŠ’&”¸auVR±ÞÆàßqùšÉ\'9m4r9aÉJ›#{_§/ZÄÕ+$Ç9Rê]ólO†’RÀÞÏpH ê]PGQmª¿Ã`ÃN&ŽEeuÒWHBI±[ÄlA‡ÅZø^Õ0Zˆs,zº:cóM[TgÛ$pï†mqk¬ÒluZöØ©ÚÇ¥«\n¥R6sÉ‰<}»£k¹nœLX˜…ÖU*Úwñ!Û—RüµRá.i1BW‰Z-­$[«ÝHµ•Á¿B)™Æ8ÕÄa‰‡Y#¼%¶€ €Åec~)U7â¶ í¥< {ÿ\0:«šyò\'¿ôþË¿Ñ|LÅB<Ïä0A…<\n56•Qr.y*Üî})wÛ¹ÄABŸ¢&Ä[›{{S#bò¡<Iúp‰0eþ÷o¸ä.Q‡É©OÚ®e3ÆcDKìM®ÌmÓÄÄ|€ªºOxrûYär|ü9%Ëª”ã²¸*Ñµ\\;<ÎàÁb^yËî™F•,I,‡§¢žuL¥8&ÄCÈŠI6$\\oÔ‡©Ö*Žâ9BÆÑ©Pêkö=,ÇÞ©=­ñ4‚8`1éi\'Ý,Í¤§¨[xÅ4Ê‰øcÅ©yÛ\r»Ì<ŽGùš¹ziîÕdduõx£)¥ËêÏ9E TÅ}Ti?;xú•Y1¹þcý\"¿=÷_çJ\\ï%›\nÚe]Âãáo‘óôçQÕ¼\'M™¬˜ßJ¨‚\Zì¸I]y–¼ã<n\":Øõè=úš«;\\’Nç™¯°ÆÎÁQK1ä\\þUgË¸dÆ¢YÅÍìîêÃbÖé]ÇRëõ%KSâSK²ù/É“`Ž¥‘‡êæjÉÜê;·¸¬ÙÏ‰Ä$P^fÛ äKrÚßZid}áµ¼S–f…¶Òt‰õbàßRìmú?ZÞ{¶w1äÓxt=œîú¾–ýEŽ\Z.çÎÛýjZî4smÀõ4ÅÄvg’ñË$qn£ÄumbºZ÷ÓzÓÉøoìxÃu—TLA\0êPM®ãp Ø€o½_Ç’àÝr‘Ëñv=BKúe^ƒØVÎmÄe\n³¶”gºw,C¯ºo¶üÏ.¼À9³ÌdyL…çS#œ2[g=›’„¸$s½¬:Òzy¤ž[¶©$v\0u,IØÌ’M[Ï«Ç¶±Ó´yH`œ§º|ü§&lÇí³¨‘ˆîÂƒ¡cV\"Áv;.ûu¹Þ›ØÎ š9Ìe”é nO‘nw‚Ï2<Fû¬Df94‡\0ò?\"66ô§&}5ñNþªÊ¦«épC,Üf“àƒÅu90bŒ±É¯{üš]¥ñ/ØFÖ³„_	ÝNÌ	¯ô¥%ù-½iŸÛ^[¢x§gR§æ7Äý)[4—5M$º[°ÃÄ]Õ®Ìª/Êì@ôÞºÓ…ò„Àá!Ã»P¥¹jbnO»µr@b7¸>Dr®¯à¾%‹1Â¬ÑóYÀùóØŠÚÝP&ç™QK;Q¹$Ø™5êHÃ¬b¸>Õê¼¸666=;{u¬ê(\0\0\0`!_kàõ¯´EPQ@QE\0€í“+îs ‘d¬¶Vþ\n}ê/!Î0øyp¸„Œ+‰T9øA$?3m:_—M4Ìí¿,×„Žp7†AÕ	öÕ¤ûR	˜*Hÿ\0ö°Õ‹:§0™lÑò³ãmüª­ÆdbpE»¶Yåqà¾«?ZÞà#\\F-LèÒwê¾ù‹ûÖÌXáÝ¼/ëkõ¶Ûj±Ïl“]PŒâL«DbU:‡ÞÚÚO‘ü·«ÿ\0eú`–|$§ZÓ“«\0ÛÓm¼ÁªDÅ”Í…fð†+o1ÍOÒÆ±ðžz!ÆáËê\nŸ  ›€ŒHa{^ÀµÅïkÒ¢S‰oW	\\r7v?dÀ«MŠ‘aäAÚßÊ¹ë)Ë£3\\0ˆNaoS½Ö6Ô¦ãr‡åz}åX¢R³4ZKÞ6Œ±Øþ%{Ø‹±<Í){lÀ®“iý$ÃP‘v\Z’Ã}ù zß¹LÃÚVm*ÀÈÅ–ŸQÔRöý\Z°¶Ä°7;ÚûÚ•ÕîiYÙ‰fbY‰Ü’MÉ\'ÌšñY0bÕcY9Ö)yÓ{€{/‹–w’3E3±h¤Ør—ï)µúùÐ,»Ž±¤b	œ(\nŸÕ÷½÷õ¬½¢qäÁ˜ujŠI-´›ÝwäyžU\rÄœ7ˆÀÊñN¿	¶µÝÈôùTEA%7’=_RÆLùž5Š}+÷ÈéÄe¸Ìzå‰¢+¯x­s¥oxØùÅ«ä}šåN×~à€oú2ÿ\0;5­é\\ÞEzŽÄ*Ø€>dØ\ZŠ\Z,Qj]ý8¿ŠTŸÈÃÔMªüÿ\0\'\\å|€‡xpñÌX\\[r>÷­ž ÀœVH£yË¬úÚ×såÌV,h¢Ž% EA·E\0*ö\'q¾£E—xŠ«êI‘5&ù]|7”Åƒ…0ñ•Ôì~óž¬G;_oM…H¬\09~¬ª§ä¥ˆÿ\0ˆÔT*²¹\\¶Ðe²êÓ»nv:ut­íI.,í3ï$<)F*ÚF·üoµBU˜J-pEÉÉÊNÛêÇö7‘i/\" &Ö<Øô½É¿@\rRøË9ÌšñeØ@¥¼\'+ ·ª¥É<Îíû´¥ì¯&\'5Y±8¶2*9^ðêi/á*¥¾öò§Ò·©¨sf”#8ñ©+dGä+Â6{d >f_+Ëjì§³5Àµâô¶#}\0¤C•Áêäuè\r¼êñPœfþŸ‹6î%Û§Âjvºd™qÚ²¡ÛþHŸbÃÍ s½’AóßÄ£÷ª½ŽâŒ=ƒ™ˆt®çá]ˆéïK5@9^«­‡<±6×Vruz8jb£6é;àµñÇÍ™R¢8SáA¹&ÖÔÍÔú\r…úóª¥Yx3‚ñ‹þŒh…~9˜xE¾êþ7ôºÛ¬a„he’&æŽÊ}¯î7÷¨Kf½Z;=â÷Ë1\"MÚ²Ìƒ¨èÀ~%½Ç˜¸ëUzû@vF’Æ²FÁ‘Ô2°ÜwVjJvÅO©²é.Ëf’ÏEˆÖ§ÉMõ[ùŠuÐyÃŽUêŠ\0¢Š(Š( \n(¢€â<´bp³@ÚFËò$l}r^g†:…ÖÆÄ0ò#þ\\«±«xÚ/ý?5™ôMFPeVÖ;|eþ”ï	Ž×Aþ;Ó¿°ìÑ,DY»»Jïe\"Í¹ÞÀ¨?µK,÷8†Xá@aÐGÞVë¿#¼9‹mSœf¢,tMªÆ[ÂâÖ1e7ãR\'q¢7Ä¬gq\ra»Á‰)<Ev¾‘{Ü÷EhAÙ¦Ìr+Üî²0÷±$ùV¹„„¼O¤)Ôð¥Ô9\0Ü<íÏ¦ÂÕç+Æ‚]\nH$imMÎÄ’< ƒaaëU1ã¬Žw×·ï©g6ImP}CÜŠUA\'k.¯ÄØ‘çòó¥ÏG6e–4Ï‡1:ÜÜ°Ý\0@6³^ÿ\0á¦a›UÆŽ Øùó¸÷ƒªÈÑ¸ðÈ\nŸ@ÞçRÕd§ÐŽîu9.Š›â,(‹È\0±Û‘\"êÄ|È¾ÞuÐùVò[]\ZÅîVzÉòÇÅb#îÀ|‡Sì.k¬²¬:á°ñÄƒdPª¾g`sïñ.Õ+áæ–r-ªèv7×ÐT¶sÛ*[Œ4I“±ïoÔÔƒX28³®‘Úà…r~ò“v?=É÷¥o<;…ÂI…8h.ðI¯@°:t[n@îyT/qþ+‰2É,“Ç#2;«üK~N.„yYéžð¶8\\6\"RÒ\"Qèk+«é6>›#Î£Ž(ÆNIrú’Ï4çÂOˆô-Øì¸ÜX¡‰<šˆGŽãMÈS¨5ÅÀ¿#±±’ö=ƒ‡iO\nÊ¬îÈ)Ô.¬Ü€6¿:è¢\n¡T\0ª\0\0l\0\0•{­Ú²\"ŠÚÄ`O4úVþ\\Ùa”_BòÉy·¥\'kœ<óÅŠÂ@ò™G\"¢ßÄ…Ï+±\'a¥|éÑ	=ªEEªÆrNÙY¦©	ŽÌ;*Åa§L^)Ò2¡­ÛÄ-»_J‘~—¦sÆUˆ?ÂÕ5EK—\n™28Ê„òÔweò>¨…™¡*vbTØ\07\'Ò­TV‘Ó$í³igoŠ9w+ìÓ4œ‹a\Z1ø¥\"0=‰ÕþZÐÎ2¥Ëq2C‹NöHÌd\"’#•M™¼VÖ¸é½u/;RìêÀWzÑKD2²­ÚÄln7Üµi:+Ê6¨ŸÈ±0÷iöp ’\0¢À)\0•\0r±7·ø½)-Û6BaÅŒBÂÇÑÇõQþCXx´?²aÓ\rˆFh”–Ðøã¹&Ö<ÅÉúÚÕyÍx§+Ì0Æ)±1®¡÷®„`Ù€±¿Î°l\"«íªËˆáìNm\'MÉ#ü¼>ûŠÆbpéuÂ¬„õš[k?¨‹´cÖå½E\0ØþÏ9rÅÌGé,WòÔ@÷\"ÿ\0!åLž â<6\rãûN%b¨a}_Šàª½O/õKìÉ—É!K;ù(Tÿ\0‰[éW&á`c8¨µ˜ï¤†eØÚàé\"êl64ê° nàŽµö¼Æ@U\0XÐUê€(¢Š\0¢Š(Š( \nRvï•‚0ø€?Mò>%ö¸aûTÛ¥§hŒqS\"‘âBªO à†Bl	Rvähylƒ’ßÜZÜÂ™P†±n\rÆÄnÖ˜ÿ\0ûaþóûïÿ\0J¾7eØÒûïÿ\0J¶Œšèk(§Ô³çu„•p˜¥ÅÇÞ££<;†U`ŠG[Vœ9Î1\r\"c¡(®ÅF°ˆ‚~kaU_ý¢Ì?ýãÿ\0Ò¯‡²<Çña¿Þ7ý:ŠPo£¢W4ÒRW]Âñv˜¥aÏCúEþµƒ>Ì°ò„Hqp\'ÆD©{[ç¿•½iV{$Ìúÿ\0ïþcnÉó,?ûÃÿ\0%m%nÈà¶ª5;TÃF˜¸ŒNŽŒ—º•;ÞÄ¿]üê¤-Ö²æÙ{A;BåÆlÚ¥¿Q{‘ÈúÖ\ZÈJ‹—d˜HfÍ`YÀ\"ÎÈ§“:‹¨·[·ÍE?x¯ƒð¹„&9£¾äŠ\0xÏ˜>^`ìkŸ¸G‡1ÂL>6]+\"ºÝÂ’Ù¶=¸÷®ŸF¸u¡“sì¦L&\\4¿mkŽL9«B4åþÏ¹Ùx\'Â1¿rÁÓÑ^÷ àŸÚªÏö„ÂÇÁ(ç$6o]l~ùWÎÀŒÂP9;_ÙÒßÄÐEPQ@QE\0QEEPGqÿ\0DÄ[û™?áj‘¨Î&ÆÇ,¿Då½EŽÃÔò÷ 9^à[È{W µò5°¥ò>Åã\r°¸y%èX ù»YAô½\rX83„æÌ±(2ÈFÑ¯Ï‘cÐ*`ðÏb.H||áG÷P›“èd#oÙôßÉòˆ0‘pñ,qŽŠ9ú“ÌŸS½“*ËãÃÃ.˜ãPª=\0·>§Ìõ­ª( \n(¢€(¢Š\0¢Š(Š( 1â%¬Ç &—Ü9›02>öGÒßÌš¶qF#LZG6?Ãþöª7qnW-¨šÛ¡yŽµì\n‡ÈñƒHŽûÛ×Óçý*dP€¯V¯‚”=¢æxØ1Òižxâ`†0•\r‘ui\0Ûâ;úÐ\râ)]Ú7iI\n¶áç7V‘wX¼ìy3þCò¥ogX‰dî&V\Z4›ÈÜ¼[÷dœ1‹Åa°²ÉêËûíeüè¥É7\'rNäûÔ×pü˜ÙÄjAc#ôUùþ#ÈéLìVv³c$\n?»ˆ‚OÍÎÃØ32Î\\<b(#HÐtŸ©<Øúè¨°ë\Zª ²¨\n£È\r…[r	õBUðÿ\0OÊ£ÎC!ûËùÿ\0J‘Ê2ã«°:­Ë¥¯ýhßöŽÿ\0_‚ýIâŽ³g|2âç·„*F©%›òõ­_í	wÅá•Uü5Î“¤ÝÙŽÄí½ŽÕxìF(Ó-URã;¼€0f¹°\Z€øN½=h\ræP@,<\"æ²PQ@QE\0QEEPV;KË–bbˆú5*Žm ‡Óï¦Õg¢€ã\0|©õýžq€à&Œ°Ô¸–6\'{2FFß0j»Û§G‡hñ¸x‚¬ŒV`»\rgukr³^ÜÍºš\\ðÎE&?0ðÄ¥Y—¼m é± ößØÐu$ª – ¹$ØzÕ‡6Ã½´OjågS{òµŽô„±¬ÌüGaÐÊÄŸAàµþdV<¯„eÂãðxl]³DC6 €Ûê]>ž´FQEEPQ@QE\0QExšM*[Èô *ÜE6©Hè»_üô¨‚µ’yîÄ“¹;ÖœyÐÜ3†\r5È¸U\'Üì?[‚*ávõôþu?@•ã|3æàÂ^ÊþK£½so?ú\nuR»	‚cÄÒ¸S¥P16Ø^A¿©þ€·ÃÁ–†{ÈcîÐ›ÅÍ~k±7\"÷5aU`,+íEPQ@Q;Yá¹±°ÃöxõÈ’|7ÂÂÄÝˆ\n­å‘Nã;™OÄ¨¥´óå u\'oAMú(\n[ÙNI<³Nàƒvm\"ãp|>/óUþŠ(Š( \n(¢€(¢Š\0¢Š(Š+C<Í£Â@óÌN„Ø\\›\0Ì“@kq~F¸ìØfûëá?…†è}˜\nå·2“‰ŽtÚH\\z©³)ô\"ê~töÆöÉ“Üád-mµ•þºI6¥~w–bŽ.|3)™™ƒwDj\"×²{n7¶þ´Ke8Þþ¦ÐÉÞ\"¾†ø—PÇÔ^©}¨BÙa¶ÿ\0kA~¶%M¯íùUÇ\"\'ìÐ_Ÿuü\"²c²ø¦ÑÞ níÄ‰ºËÈZjŠ( \n(¢€(¢ŠÿÙ'),(4,1,'image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0¹\0\0\0×°µ\0\0\0~PLTEÿÿÿ\0\0\0ùùùÏÏÏÄÄÄ***£££æææDDD™™™ˆˆˆYYYíííôôôÕÕÕ‚‚‚???666ßßßÚÚÚêêêSSS|||ªªªÈÈÈsssJJJ111fff³³³```\Z\Z\Z»»»žžžeee$$$vvvú»\0\0&IDATxœíkƒ²¬†ÃL­LÍRSóPö4ÓÿÿƒÛ<,°,Á™y·÷·R/9,œ¡I-Í~:¿M ;[™ôM€(³I)¶& @ 	Ðh4š€\0M@€& @ 	Ðh4š€\0M@€& @ Ÿ¢X†çé]rÏ3¬ßðV~ˆ±ˆÖÉ¹éüßoÖQŒ¨Ÿb_ŽIyÓ$ŒT‡HÕ.Bæáýl9ù ¶ú¯,ÉÊcùóä]þ2HPì‘æv×q+:jèPüXÕˆr9 eî<?ÉÑÏèu\"“«q,–èÜ]8jú^`“¤1xGäF}O^i(´dæ¦C#)µÑÿt‹’…¼Üti4 Ê}«ï¥X s.)7Oî:k‡NoßÃ8¡ÓØÕf$ ŽfêÜBY¡„c®ÈÔ8@Ô½W]*Ehé‹ÍË$F×y”M1ÚJd Î gŠÏé˜É@œ9è‰(Ñ—ÄZ~Ú~PE(“•>’$EƒÍ+e\"rÒKÒ¬ÐeøEÖ¨·É?T²Ä×ƒ€KÛ{m,sD2ÏEBLM-E\\¦‡$™£BÌ…ô±*\\ >:\nº°•hãô½rœ¾ºz\\KUßpÌîë8#_©@r´âþoGæcâaþNûòÅbrõ\\2(Ù™ûÄÞ?:“¼a²yh+*cÏ$HÌ/åvRON¥ý{S%DïU²Ï$ˆ}D\\ò¡9]÷Õÿzêõ(*kO$ˆÏ/ 1j‰×›:Ñ|³Å!ä+‰@ÖüAÝ­\rdÃœ`ëÚ£}aPåHŸK(‰@øþPûÐÂºJæôì¢líŸø\\BÉ²à¿Oßmù†cá¨>ûÙðK~Ï+Èí›ërvÏ(f}ìÚ„:#\rˆ¸ÿ{Ë6\r44‚Î°@ £ôfU\Zø¼æÈÚ@ëÉaØŠÏÒMi@¢.Ç¡ÞÌO#iÜ€QõF¾–4 kÔqÀncX¿ÕÄÀâãwŽJë´ï:T<«Núˆáò&’ÄKOÇ¢=}à+óÂ½V¯|\0@ìÌœOF²€8ÏÜñ?¯[0·U6M 7Ø©Ì»*¢0ÉòlòÁRÃÓéÈ\r$;60Ö»Ûá’¤@ºÉÖ¬Ï‡Oò¼, ú§@f:ÃÖºåCrÕC²€¬>âW¶{Êš¥…tç», ÛÏmÊ˜ô¼)§¹ˆMÙ†ˆ, ÇïÏloë¦i²â\r[þc@¬¾^v_Uù5îï¹±@¬Ìu7§hÿ.¶Qõ£”.žBºGDäÒa|¾¥¿ÛíFˆMLÐïA•&Gùä=$ˆŠ€QÙëbGƒá,\\òÆ20pˆú;iý´ú³ƒ;ÿN³-È»!te½’©>’ÄHvàŸÊÝÞó\n>§?2whÆ^I%„®œ^øÅýÌþë_¥G\0Hó©²ÃÝ°ËÉÁQq½ŸiÂ±~,?FD\Z‚iU‰!‚zÌád¾3ÙšKïdä	\\èTõ©Ûçõˆ†²ƒNfm#}ùŒ¼©ÌÌƒ“næú²ÎXÔ#&ê,ù³D(ÿPwéËURÕü?¸ÂETçÉ‡Ø‚‹VîÒï9ÐÈy¸ÀNKHD §/à#®CC¢§Fü+èdTs•ÛOÄL›S è¤w/¡‰¿ÉIp–nŽFX[%ˆåB³2hD¥ÙŠÏ$¨fwÁ0Ðs5ñ™d$3,³`Ú@:ž¡ZnsÃ°š©Øõ¼\\#£ËŸúŸÉÂŽg*£¡ëòÎó</JåQÓ‹`\0’­mÆX/5´{…rø×‘%Ò!8K5FŸ;“ÄÖèj¶×=yÀuGÊFÙ@Cîjˆ‚cr‡W,îÚA’Ùu”ØÙˆ6W¶§òì´„=ÐÝääJ2˜»4Ì6æés£µ#¬û.Ù‹õ.ª’‡›å¿º°³þ™ô0ˆ*_’(4À2Š\\ßž–­8;-ÓYŸGŽÖcí\Z%}Ýn€vO:÷íîGU«ÕªPUÇçsÔ³;Úbwù+»è{`õwÒ11D#l†£Ã \"ÆòI­®€( bmÆ[ç>iC•õ\0+38à7lhœ-wVhù¡¯ËwG-cQô7®‹wçqyŒ¶mWŽ´üýTúyœ!nC£mìV–}8íôJeóñiMû\\ãmýlÑò×mß·\ncÕ÷BTò/të¬éÑnñÍÖ@¼lÓC‡¼Jšîdoê Dûm¯óËâ„ÖCÇ·Å#Ç§÷Zó\ZˆJ½ÿÏUD‰ïë­\0]õ„ÐÊ{ñâmç†Ðmøæed1Û{fnˆÖ žp4ß‹XVGtó\'c5/*q„\"Œõ?äþþ3„Ü£Î­žíJ¯ÊP?ý wå‡¡k¦ûF`†³º»ÓÂFrHY1òÕéîFÔ¬å}^š]\ns9ôíeHÐÂÇO`ùÎBÏDÇ(v|±~S1@Ì`öô½uÒÕ^+•|¥ìu…IŸØ*[Ž& @ 	Ðh46Å~ˆ{Ä	‰ëº·µcs:TœP‚üvrÝÍVZgQx(¯°ÍxfjÛYË³’°àÜ§ˆm«Û¬Lçfaž`\02Móª1vˆ]‘SçmÌdu~O¹¿{‹µAs,hÞ”x[ÿ½n‘Gjóîj\r¢/õ+ AÑÚqaÓ\Zj\0‚-Õ+RÀ`“É?×¼4V·íSÉ‚<%¼¶þnû±ÛAŸÍÔM;uîÓDÉJ$\rGö` p,“™ðvå€xÎdæ`;™Ç3Ýïn0!5	“ºáii;¦†Ä:±ùCy#Á@‚„w»rHÈ¾c³ð8\'–…ÁáÄŽlajÅìY œdÑá«\"tÄi¼ÛÃm>¿Õ…3d€œçô¨–4ÚªE®aºIMfƒÔ×ŒlEs‹ò<:VÅ²éÆæ\0QëK.ax¬÷Û92€TÍÇÚÊBh[NÇß¬5¸„àwÎ‘ïž_•ÿ¾Æ)öÃð«äsš(ÃdÛ§msÚˆ`Ø›oÜû*Ã©\Zõ¥ +ríÿ,òö|Õt®j{§Æsnªæ‘îI´÷8©ïí2UNÚáFÌ\0©‚í7\rlý/5`ÄÎ5;(ˆJ®Üv—Û¤Ø4ÖþT”6ß^Ý³4§Æi‹¢²©÷­¶:Ç­CcY\Z$â\\ÿäDþŽ¸@PºëVÚ\\yÏ\096I×²H[Q7Õ#åÍóèš<Ô\"\'ëljŠFÊgà\nÐŒÀ™«ùÊÞt!6# _€ òñ»¯wN¥ÔÞK5 7i÷“¤Ü…Lj&¾‘ôpUuƒ@Èj)2O›Ú…P \ni\09³õä\rT—>RÛ„¡-Þ¦=G¡œ;p2aV²dŸˆ®T(7L0wÓªˆ“GrÛu‹n^\rƒ2q¾jÛŒ¤æÀbtÕŠÿ49sBt;BE$bfñ¡’ûU‚È#VÚ¸Á\"†óU¯½!©sö>øˆIë,\0BžpwàûWÊÙ?Ñ¹¹\0ÉùóxÔÓãPµëÔ\Z¼ºÖ™¯á¹\\ ßœÀÄ¸ýÖ\02nâF ,ð±¯ÛÍOÔl0ò~¹‹|ð©Õî2kî©\nþ;…Oºä9pª&i½©€{ƒkgUfôž@È@-œs„û»ÊŽzöR| ¼èbÅÑV\0ÁÏÜç³pî‘–*g”E«)ôpËü·sÌÂM$kúh3Æârg€ˆ\r»´yÍ£züHÚ  ¼=‘¡=µ‰Û@,Ü«ó×©Ù8eiCý§€}Žè×$Û@<ü|ÐŽ&÷Æ)Sg\\ ÔÂ„·}—}{\räöˆ¦\nb&ËN¹ô­Ê*!n¼ùUÆÀÏ×Qep)¡Êh–Ñ­¶2ÈÛª‚;þGÕH£*¶zí™,ˆO¥«óÞéeð°Áµ!C³>)E\0ámFäŸ[‡\02¶ãÛ!ø×0ûôYL*ÏR%ƒÈÓd»¾‹ì~“‰BÜQ}¾5&ˆÆËèíw€ŸÜ/U^ªÌ‹B s?3?d«¼~~@xE·ßô\'\0B†ãÜO*ºÕ5Å1p+nrF“ÔF/B€°Ãx¨Z¾?„7ü¤[RÌD¡»?rO‘GHÚ¿a£ýÈÇž:]ˆ$ƒ!LW¹sï^9Ótg˜žè‘qð˜\r÷YàÛÔk@!Òæž™ÙïÂ¬Ï9/Cç|@sW}b§²\0Ä\0¦ˆG<u•…@È\r˜a6Ý¥‘ïuÿØRÏË|µ^Gg,áDÂ` fs<Cç›\Z[Ÿ1ó2Ô)Øþ†¸CJ6þä\ZnŸ*¬|„Ý3wßëº˜åtbì\0\'ªAfX]3wÙ·ÏNeÒýh«ª´*:½‰ñ¾Ú]{‘Y Jõ\r;-ŒïÁ¸~TEhpºZ\0rð±õËûØ«ê6ÍjÄ™ì>ÑóÒm9lQfÞ¶ŠÈ óBÌ‚ÎuZ_Š\0²¯¢C\Za\"íÎ8@ìS}2jEåÐ/¦‰2³æüDßyó,@–»×ÆWÛåÏ‹±B&ÕCÕw¹¯ÐåhÙ6†D\0q\r•¹\rèO¹DÊŠI†šfo¡ÄWÕýw,±ç€¬¹„s5ØB:óì \\ËSÄ›ÙÛf!Ñ˜ã/\\Le2Éå6ã›j ÆeÕKU?ß¹^ÆÑ·U#·?Ì™èÀÙâq¡œSÄëÐaá¿Y eŠ5í\\Ö\"Wq†Ùá­¯oé§°®nØÞÀeÀ2Õ\'ˆã±EÊ}ƒñ_êk\0)­U-.±ê¿¹áŠâ•ÌË„\\Í&ˆTµ€×h4\0îÑ™Hféúµ@°r7ÚþQT¿ˆ‚Gmò7‡ú­@ˆeûî¦ Ãõû€Ü«(ÔÍ1òŽ8³ß$L¶óù\"*ë“®_¤õÁSøñôë€´¾Ë>öžI³_$oðè3O\'Z¿HíPøæNÊvh¿ˆr!þŽ¯Õx{X6øw‰Ùs…Õ‡vˆ¯þw–÷¶5â¶]C \nÄ~º‹Êÿ‘ldRC 	Ðÿ\0º{åÄXF²\0\0\0\0IEND®B`‚'),(5,2,'image/jpeg','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\Z\Z \Z! ( \Z\' \"1!%)+...383-7(-.+\n\n\n\r-&&--+--3+-5--.2--55-.--5-/++//------.-7/---/-5--.5--ÿÀ\0\0 ;\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0	\0\0\0!1A\"Qa2q‘BR¡#r‚’±ÁÑSb¢$3C“²ÒÓáðTdñÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\01\0\0\0\0\0\0\0!1AQa\"q‘¡Ááð±#Ñ2BbÿÚ\0\0\0?\0x×‰eUf\n/k“mÏ!½{¥ßmùq“\0²\rû™Uˆôk¡úë@1(®eÈ¸×„ÚCìäñ§Ñ·Qú¤S\"í–6²ã (^%÷CâäZ€kQQ™7áqbøyÒO@|Cæ§Ä=ÅIÐQ@QE\0QEE§›fQá¢y¥6UçÈRk\rÒ¶e+tÊ)9šv‹‹‘tVè\0ÞìÀïò£‡\Zcÿ\0ùMû©ÿ\0-UzÈ.Ì´´Y‘cã>*›˜Þ	ITEWŒ›¡;’èlFãz¶?Aö/µ®ÿ\0tFM›_àþwòÞ’LÄ’I$É;“ïçEù\"Oåj­L“oÏèZ––-%åõ:\"ÍSN›ŽªFÄ{[8¼*J…$EtnjÂàõä}EQ{Ä“ñ“ðÈ~Ð·ñJ½Å\0RÄ^ìnnI°l¢ÃµtpÏt»œìÐÙ7 µ§ÂA%¯È‹X[×ÏÒ«¼O•c$PaÌ;…°\n\0+àê]Ç/S½,¸“Ž‚c…Åb™ÀQm/áaÒö\0“na®wusdt¤¾¤Ráü·´Qæ8•bâGèªoc¥o±°ç½ùÞ¤rn>Âbä0ÊßÞ^ô®–ÒAö¸œéHˆ´ƒk\n×Å¯vnwo»é]Ú<iZ*{Lˆèl¯7‹Òw2«„²#¾úº­·‘¨ÜÓ9Âaã–I5KweÜ€|;[àlºÚ–\\Åà¡™™Kâªª“eÒ5Wýbn>_:ÔÎó	qR´ÒX-”X\07I;wªO&øè2ê”cê< Ä,‘„‡n†û¶ßkc¦œD¥Pw†ÚÀñ¶ö½®/Ö©<	Å1C‡ÈHUc­‰UÊÙ@¾ƒc¿0Ý,já›æ±ýŽYÑ•”Dî›ó*¥‡¾ß•TÔá–ÉBÚ~k©gO•N¥ô+Ù7hðÏˆ›RÒE²›í+\ržÃ SóÚõ‹å˜»³šçÈ¥`C!¾ lAó¸ëSññ®4µ~²©?[Wœñ-&£UµF^êìüüýNæCm!±4¶7RAó¨lÈ»6®ñõyê4º—‹qþÚß%_éXbOÅ)o˜È\n§‹Â³CþËëþØµ1ƒ¶†þ[Æøˆ†™4È\0°\'ŸÔs«F?‹pâ(šHË¬¢äX,l~.v#—¥#0YÁ”oñcÏÔU»\'âŒYH°øx£•ƒ\nÑkaÖàÜ\0=O/:èàËŸÙ)|8¿ÞçÑaÌ–Li\'ßšàv)¸½‡US†%Äé—;—°´P3Eyò:™¯÷‰ö¨üç²ü4ÁŒrÌ’tfs 0Û‘ï}«¸œŸc‚±`º–O’µü¯à½\ZÔÊZsúB¢És´d•·MÏZ¤ð÷æ˜)PœdsDI\rÈÛìm¤²›Ïo*¹a£Äkîw¼`kùZK%­ê§ùÖÕÍšåÇp¤šóçäHQZyœ=â÷EX¤•Ù[I@AßÏ~[VL¿°Æ‘!b¨¡Acs·™<ÍiU÷6*??Ë†\'\r4”‘²ýFßHQY59	ðw«¸€a¹°Ô¦ÅoÐóçåX\'wŒ€|@ò\'¯Ðš»v““$9œÈËà‰W¥µóÜŒ7Ö Ï\n‡ÿ\0W)_ âãØèh•º0Ý+dLð ”aÈƒb>Dn*ñvŸÃØ!Iw>ÒÖõOÌ8w\0.ñk@	,<jRH³žÕŒ\"Túoÿ\0ŸfQqá˜Œã%qvtfEÚæk.!_ÞdkOßQp>`UïŽŠd‰\"LŒ}A®@†L<Çþ*û†Í¦†N÷,‘=†èÅI·¹`Øìj+ž¸w¶Ìd6\\Ti‰_Ä?G\'Ô\r\'è)Ã½ªe¸»/}ÜH~äÞ\rüƒüë@]è¯ˆÀ€ADr5ö€)]ÚÖnZDÃ)ÙF·õ\'áÃÚ¦${FB3	¯×A-\n?•UÕÉ¬|´qO\'=ŠÕtán\rIâLÍføUvÛÌš™nÃt2Úÿ\0µsi’)Ð²¬˜|;ÈlˆÌ|”~‚˜ÿ\0ÿ\0†]ÉbæïaùRynÓD þŸ{ÜšS0òÄÖìƒh&’à–“M¼´¾¾:¿Rg.âlV]ö¥ÄÈY˜0\0’µ†ÀtëVŒµ\\$¶YÃaØõo¾¼½À®¾ž?ÓIu299Õ¢õ<!Åšö‰ˆ#‘å·*­ñÇÂ5€^2±5ƒ( €T®°ÄyÚÛs«HÝuÄáÕÍõÔÀln@rêk&©<FËð‹›Úçe½µûíåSÆN.ÑLçÛ(›Š’yŒEu<JÄ\0@aªÃÂly\ZÆ™>6aÞÇ…™ÐÜ©N 6ðþ.}?•<ðØ	p¸LCB˜‰d–aáÓv‘¼7R~êi¾új_ƒÑ×I»b¤\06*nMYž­µ°ÚP¸ßïÈVãû6ÄÝDz[ÁrÚ€PÃî•;mµïÎÃ•G2‚X%1Ê…$[Ë˜ÜlG¨¦ïç8Œ¹‘‰ïðît’ÂÎÌ\rJ,AµÅö¥ççƒ1”ÄPi\n·$®ON[òœ:†åL¡ŸLš´E&m}ZñŠ¼€€l\n‘õ¦Ø–6[#{zùüë?Ú©¿•kâr\\hñ¸²¢0Ï£¼Æ;éïò×k_Ò±ÓÃ³,¬éPEÁÔíÌuÚ¾âû2ÁHISõô7Ú¸Ni6D¦«‘E:‡dø?Ç7ïùk/²\\)B#’U~„ÃÜ[•7£;ÐžÂO¡Ã_‘ßå×ò§÷öx ’,@Å± d]!ƒW¹6¤eƒhd’)>(Ø«{*é¬šIbÂáWºwcJH#J¢÷¿/Ÿ[T±Œ/|—óö4Í›$#¶“»èoa1Ñ,¦#3òñî.OÊ£3|÷2(#Â—‰Šê{7#ñCÂº|óZÅgN£˜}V•Â…•W˜;0 aÎö½gÈ³|RHøu-)—Wtd`4X3oA}Àõª¸µûžÙ6›n¸çá\\üÍ•¯z“ã»ããa„ñ) •©¸¸älEÇ‘±#ÞµD/Þ	ZBªÆ=´ƒ¾÷ÿ\0ÎU›¬j²>·Å­kûW¹áWVG•V‘b>•ÕkrMœû§Hû€e!äA¸?\"+Ýkà0QÃ\ZÅ„EÙTtëüMlVËÔÔ(¢ŠÈÝ»å~6)GÂÆ&ù0Ô¤üŠ‘ûUPË1úðÅIÞ3u¸éÎ×÷;|©ÏÚUö¬¿m\ZÓõ“Æ¿šÛÞ¹ã*Çh=#®ßÈùÓj“VèÖw\\!‰–²K†;ÚÄt*Þï½*°¹k—\\FHðÎý,ºŠ“pC\0lw½*å’cE¬IçéüÅjf®\"žmþÒ±›²±Wuu6å}Žã©ÜU½EÎ\nKÓòQÓ%‹#‡ïà›Ï»*Ã´>\nY„.±µZÃUƒlÂþdµ)’2ÖÒ/~V§§gù™1¢—× wVJØ‹ÂÉ¾Üý6Vñ6LØ<L–ø­¢ÜôìËqå¥…T|Ó²´Ëmˆ±õ¯%i—Â)˜ˆ—\ZKÄÆC­ìM´îyéßÖ¼v³Áp`–)ðªUÙK\nm©mªäm*ÊMºFJ~CÅXÜÿ\0FÄÉüÔŸîÚëùW@vMÇM™Ã\"Îq‘«@²²µô°›ˆ#ÓÖÕÎ0`×Rú¸ö5oìo9û.i&É80·Í·O}jí\Z5\\0tå+;]À4S³¦‚}T’?&ü©§Pm•NÆ[I¸*vø€6½ÆÃÎÛÔ\ZˆîÆÉôóÛ‘2‰ãL*Ç	a›8Š8ùÝœªÛpozÝi\\¶•ÃÉ–@Çia~^\0YúyÖ¤Ø|=£Ó¦.ã@¹\nÀi‘´ó\nè;ìÃ ­Lba[&.ÆFéï\"ÃÆggÞP|;./ÌUHF5ý¾¤³nÙï3í0G®€Ÿ½GXŸ½ÓÝ+5€×*–7òÞ·8Ìí‡ÄbŸ¼D\r\"a‘ /kY¬f$\\œØíRyAÞagÈüxÇy&Kî¡¬.9@¢ã‘ÔT\\-?x­&ˆd°LL’ÈŽÁvNò%Œ«H\0\0›ïkÖSŠ—quÅY)1xVILa™ô»³ôC{±7\'P;Ö¤¸\"\r…2¸›)nó¿ÅJ3\r¤jUQ9·2Y˜›]¹j«c°e[QUIke\"ö=‡9`åU¿²_’\'+Í1&ï0Ò´gªÑ¿YÇøÓ£„ø¸fubJ¦Ò äB/¾“Ì{Ž”¡ŸqqÖ¯½–à’8e{xÙìÇÈ(E¿hŸzè¯†|N/þE-fŽ1÷Ñz½gÃ×çZm?—æ-zÉF¢u$Ú«Çr~éÎ’UÉ	ÇsÈp¤bLTüLÎJÀ-Ò×ÛÊ’ù¾j²µÖâ5PMÉó&Û\\þUií§ˆ šh’÷JÁÊ›®¦+eØ‘míéKœ0ÁYŠ °$Ÿ[zêÃ\nõdÈd›ŠTIÇ‰-²‹ŸJÞ‹%Ä9]jQX\\^ÿ\0N^ö©Î\ZÊðÒ2¢Ltó*WK7ÏsüjùŒLŠm¶Àtåµpµþ-/l°Ã«ãàXÃ%mÙOÙ°™vâC0¡q©¬ºàÔ¹\'`	65qËâ‰c^åTFF¥Ò,\r÷¾Þu£›ðÞ¤Ïr‚Ë¹yxH¸©8UB¨²¨\n\0ä\0ØéSI¦—Ÿs\nìŽÆÀš¾Öñ3‘eÔ…OM’E>]-[˜T_¼uaÐ„*}üD`*µÅœ%.1ˆ\\_w.š7]\rpmÖÜ¯sV¸ÖÀÞÀž´’T©…vsÿ\0aËæØ„}R¨°ëáKÕÛÚ$ÀaŠñ¹?ëY•ØZÊ4ÔÞ±ç\\-\'Ú±xÖ°à:‘¥Ao®ÃÞ«€£þ×¨g’~Ól<Œç”TSe¯‡r<FdÁ§Ì	\"ú£\'ô€\r;è[nÍ2r^Ãá˜:‡y\0°yQ\r€²‚|À¤Ï\ng³CŽH`’e\0‰„h]û³mD(õ\0û[­:1|GvÇòéºB †\' kÑ‹ó-kUücJs¼SYç$Ò|>Ý‰ºËûÖ‘å3jÔwq˜ô2¤“f7õ¯0ø³†CŽX×n]cÝWs¤^æä-¯ckÔ­[«#\n(¢²Š( >InË¢‡6Åà\'‰7Ôc ¼kkÿ\0ˆýšuR‹µT8<ÇQ± 9ýC¸ù”fÔƒÀX&»D­½¼mû­qôª/j¼ðaDêúÄN/á±\nÖSË×M6àÒ-¤Wy~|¾¢µsÜ¾LRÏ†3BÁ|?X[Ä9ïü+häžÝ½ˆž8¹)W\"G²¬Mæ’]W*^Ì†Ä[0ýÚßízY`IÔ£yj]×o2¤þíhä˜ø°Ï€Ä,f9ðò˜±VÙYX²’OV\0µïøG§¦}€ÃâAŠhã’Ú[K¨`oqq~ ¿­hÛ²jG3`36E°6:ƒäTÜ\ZsqD+˜erº!¼Ñ,éoÆ 7^¦Új´îÏ0øhÒl2Áp¯f$n6°b@ßËÎ¦û\"ÄŸ²¶¼Fk~£ø‡ù‹\n)¥*îIìfñï]:\n,0U˜÷~uV\0‚\06\Z†û_*ÖÅDÑHÎŽ£,ˆ:ó0ôÕjØâ<ª\\..hUXÇ§H‚¶ë·¢°¬‡VÓ¯¯„µ÷Ü_ÏzŸ5]¢ÙÕYb¸¬4S¯Ã,jß-Bä|ÁÛÚ³&\rb=Ê¨êI?S½+;*âÅÂå¯&ÿ\0 ›B¹)!¸ º©-{^À{T®sÚÆ³2C#1>(Q9°-Ì\0.Ã‚ª9Áºµe…‹*‹•:_¿rá,zM¹Žž¢¼¢ôRG-í›qZ±1¡Ã‘¤E€c1Ý¹‚måjod¹Þ‚L<«\"õ±Ý}\nÔüê–\\NÐ–R^¤»`›­¾µiÎ`‰ƒéBÎË¸Spß‘<þ•§œðÌx’KI2ß˜¿¸÷ÚÕó—Á€ŽÈ|Nl‘wkÖ\0\0ß:$á·\\#m·+~U_R7:Ã	qDþ\0ª¿:ÑÍQIaY£ÆweÁ!™˜±?;V–.Mw …ö¯\'“$²frìupÚI†Plë>CÄ	‡`{À‘±Ãl<¹äj³Žœê+r@\'n—ù\n©ñ&4±ß–ççÒ»º-4¥5ÉcY(âÓÊSç²^¿¼ÜUÿ\0çaïïßÆ¨ ñsÈ±G4rÄ0AÆç{‘åëIÛU³!ËÄK©ÇŒþ^•ÛxTy³á®ysp¸]}?&I0%‹\\•™é[˜\\¦=ûÙV3ÑGðÛz•Ãº ¹ WœÏK$_¡þ[ôò¨òãÏ.,éêtÐ‡¼Í¸øeD+<Sq¾–\"Üú¸=ka˜È›4ŠæÜ×ÿ\09Ö5ËßÛÊÿ\0ö«çäX6‚i\Z#+¡±][`v7ùž•Ký³3w7÷8ï[º,2fÊ˜dÄJ6æÛÐÛÒ¥0¨²¨x]O&SqQP(Ž8Ù&WîâÝÊŽÛ“a=ª/\rÁ£êY§_Ep§å©Eê}»M<y!{©ü,µË^uâ±¨XÐÇJŽnÄ›6bIù“KÐûIEFÃà›S°!æ\n¡Þo^CÔÑC|ª(‰ÉEr{â¾4W/ 9Y­·Òâ¨ë$“¸XÑÝ¬ª¢äš¬G1;t§Ïb\\=Â®7Måv‘T“ð*±K(ås¤’yïj»§ÓGs|²žy{EE‹³^8, Ä©;›Èo¨žzA#aaÐ\\só5m¯+{›m­¾þ·ò­\\ß1L42O)²F¥›ä?XnÝš%µQ¹E`ÀâÒhÒXØ2:†Vˆ\"àÖzÁ¢¼B[HÖ\0n ©ÿ\0J÷@QE\0U\'µü³¾Ëd`<P‘(ô³ÿ\0µ]«/²#FÂêêT0EDìû+1ê¯và\ZéáÛÅr ß­[R+·ÆÊ@ó6?²M«—s\\A+Æo®\'hÉä|$‹ßÖ×÷«×cyÔ­‰“\r$Ò0d·-m&Ì¢mpÀÛÒ†ÎÐ°K‡Çâá?ß¦@9]¾/ókü©¯ÀØøñ8<>%À2Â;\r¼qêF¹¿_/•Fñ÷GŠ’&”¸auVR±ÞÆàßqùšÉ\'9m4r9aÉJ›#{_§/ZÄÕ+$Ç9Rê]ólO†’RÀÞÏpH ê]PGQmª¿Ã`ÃN&ŽEeuÒWHBI±[ÄlA‡ÅZø^Õ0Zˆs,zº:cóM[TgÛ$pï†mqk¬ÒluZöØ©ÚÇ¥«\n¥R6sÉ‰<}»£k¹nœLX˜…ÖU*Úwñ!Û—RüµRá.i1BW‰Z-­$[«ÝHµ•Á¿B)™Æ8ÕÄa‰‡Y#¼%¶€ €Åec~)U7â¶ í¥< {ÿ\0:«šyò\'¿ôþË¿Ñ|LÅB<Ïä0A…<\n56•Qr.y*Üî})wÛ¹ÄABŸ¢&Ä[›{{S#bò¡<Iúp‰0eþ÷o¸ä.Q‡É©OÚ®e3ÆcDKìM®ÌmÓÄÄ|€ªºOxrûYär|ü9%Ëª”ã²¸*Ñµ\\;<ÎàÁb^yËî™F•,I,‡§¢žuL¥8&ÄCÈŠI6$\\oÔ‡©Ö*Žâ9BÆÑ©Pêkö=,ÇÞ©=­ñ4‚8`1éi\'Ý,Í¤§¨[xÅ4Ê‰øcÅ©yÛ\r»Ì<ŽGùš¹ziîÕdduõx£)¥ËêÏ9E TÅ}Ti?;xú•Y1¹þcý\"¿=÷_çJ\\ï%›\nÚe]Âãáo‘óôçQÕ¼\'M™¬˜ßJ¨‚\Zì¸I]y–¼ã<n\":Øõè=úš«;\\’Nç™¯°ÆÎÁQK1ä\\þUgË¸dÆ¢YÅÍìîêÃbÖé]ÇRëõ%KSâSK²ù/É“`Ž¥‘‡êæjÉÜê;·¸¬ÙÏ‰Ä$P^fÛ äKrÚßZid}áµ¼S–f…¶Òt‰õbàßRìmú?ZÞ{¶w1äÓxt=œîú¾–ýEŽ\Z.çÎÛýjZî4smÀõ4ÅÄvg’ñË$qn£ÄumbºZ÷ÓzÓÉøoìxÃu—TLA\0êPM®ãp Ø€o½_Ç’àÝr‘Ëñv=BKúe^ƒØVÎmÄe\n³¶”gºw,C¯ºo¶üÏ.¼À9³ÌdyL…çS#œ2[g=›’„¸$s½¬:Òzy¤ž[¶©$v\0u,IØÌ’M[Ï«Ç¶±Ó´yH`œ§º|ü§&lÇí³¨‘ˆîÂƒ¡cV\"Áv;.ûu¹Þ›ØÎ š9Ìe”é nO‘nw‚Ï2<Fû¬Df94‡\0ò?\"66ô§&}5ñNþªÊ¦«épC,Üf“àƒÅu90bŒ±É¯{üš]¥ñ/ØFÖ³„_	ÝNÌ	¯ô¥%ù-½iŸÛ^[¢x§gR§æ7Äý)[4—5M$º[°ÃÄ]Õ®Ìª/Êì@ôÞºÓ…ò„Àá!Ã»P¥¹jbnO»µr@b7¸>Dr®¯à¾%‹1Â¬ÑóYÀùóØŠÚÝP&ç™QK;Q¹$Ø™5êHÃ¬b¸>Õê¼¸666=;{u¬ê(\0\0\0`!_kàõ¯´EPQ@QE\0€í“+îs ‘d¬¶Vþ\n}ê/!Î0øyp¸„Œ+‰T9øA$?3m:_—M4Ìí¿,×„Žp7†AÕ	öÕ¤ûR	˜*Hÿ\0ö°Õ‹:§0™lÑò³ãmüª­ÆdbpE»¶Yåqà¾«?ZÞà#\\F-LèÒwê¾ù‹ûÖÌXáÝ¼/ëkõ¶Ûj±Ïl“]PŒâL«DbU:‡ÞÚÚO‘ü·«ÿ\0eú`–|$§ZÓ“«\0ÛÓm¼ÁªDÅ”Í…fð†+o1ÍOÒÆ±ðžz!ÆáËê\nŸ  ›€ŒHa{^ÀµÅïkÒ¢S‰oW	\\r7v?dÀ«MŠ‘aäAÚßÊ¹ë)Ë£3\\0ˆNaoS½Ö6Ô¦ãr‡åz}åX¢R³4ZKÞ6Œ±Øþ%{Ø‹±<Í){lÀ®“iý$ÃP‘v\Z’Ã}ù zß¹LÃÚVm*ÀÈÅ–ŸQÔRöý\Z°¶Ä°7;ÚûÚ•ÕîiYÙ‰fbY‰Ü’MÉ\'ÌšñY0bÕcY9Ö)yÓ{€{/‹–w’3E3±h¤Ør—ï)µúùÐ,»Ž±¤b	œ(\nŸÕ÷½÷õ¬½¢qäÁ˜ujŠI-´›ÝwäyžU\rÄœ7ˆÀÊñN¿	¶µÝÈôùTEA%7’=_RÆLùž5Š}+÷ÈéÄe¸Ìzå‰¢+¯x­s¥oxØùÅ«ä}šåN×~à€oú2ÿ\0;5­é\\ÞEzŽÄ*Ø€>dØ\ZŠ\Z,Qj]ý8¿ŠTŸÈÃÔMªüÿ\0\'\\å|€‡xpñÌX\\[r>÷­ž ÀœVH£yË¬úÚ×såÌV,h¢Ž% EA·E\0*ö\'q¾£E—xŠ«êI‘5&ù]|7”Åƒ…0ñ•Ôì~óž¬G;_oM…H¬\09~¬ª§ä¥ˆÿ\0ˆÔT*²¹\\¶Ðe²êÓ»nv:ut­íI.,í3ï$<)F*ÚF·üoµBU˜J-pEÉÉÊNÛêÇö7‘i/\" &Ö<Øô½É¿@\rRøË9ÌšñeØ@¥¼\'+ ·ª¥É<Îíû´¥ì¯&\'5Y±8¶2*9^ðêi/á*¥¾öò§Ò·©¨sf”#8ñ©+dGä+Â6{d >f_+Ëjì§³5Àµâô¶#}\0¤C•Áêäuè\r¼êñPœfþŸ‹6î%Û§Âjvºd™qÚ²¡ÛþHŸbÃÍ s½’AóßÄ£÷ª½ŽâŒ=ƒ™ˆt®çá]ˆéïK5@9^«­‡<±6×Vruz8jb£6é;àµñÇÍ™R¢8SáA¹&ÖÔÍÔú\r…úóª¥Yx3‚ñ‹þŒh…~9˜xE¾êþ7ôºÛ¬a„he’&æŽÊ}¯î7÷¨Kf½Z;=â÷Ë1\"MÚ²Ìƒ¨èÀ~%½Ç˜¸ëUzû@vF’Æ²FÁ‘Ô2°ÜwVjJvÅO©²é.Ëf’ÏEˆÖ§ÉMõ[ùŠuÐyÃŽUêŠ\0¢Š(Š( \n(¢€â<´bp³@ÚFËò$l}r^g†:…ÖÆÄ0ò#þ\\«±«xÚ/ý?5™ôMFPeVÖ;|eþ”ï	Ž×Aþ;Ó¿°ìÑ,DY»»Jïe\"Í¹ÞÀ¨?µK,÷8†Xá@aÐGÞVë¿#¼9‹mSœf¢,tMªÆ[ÂâÖ1e7ãR\'q¢7Ä¬gq\ra»Á‰)<Ev¾‘{Ü÷EhAÙ¦Ìr+Üî²0÷±$ùV¹„„¼O¤)Ôð¥Ô9\0Ü<íÏ¦ÂÕç+Æ‚]\nH$imMÎÄ’< ƒaaëU1ã¬Žw×·ï©g6ImP}CÜŠUA\'k.¯ÄØ‘çòó¥ÏG6e–4Ï‡1:ÜÜ°Ý\0@6³^ÿ\0á¦a›UÆŽ Øùó¸÷ƒªÈÑ¸ðÈ\nŸ@ÞçRÕd§ÐŽîu9.Š›â,(‹È\0±Û‘\"êÄ|È¾ÞuÐùVò[]\ZÅîVzÉòÇÅb#îÀ|‡Sì.k¬²¬:á°ñÄƒdPª¾g`sïñ.Õ+áæ–r-ªèv7×ÐT¶sÛ*[Œ4I“±ïoÔÔƒX28³®‘Úà…r~ò“v?=É÷¥o<;…ÂI…8h.ðI¯@°:t[n@îyT/qþ+‰2É,“Ç#2;«üK~N.„yYéžð¶8\\6\"RÒ\"Qèk+«é6>›#Î£Ž(ÆNIrú’Ï4çÂOˆô-Øì¸ÜX¡‰<šˆGŽãMÈS¨5ÅÀ¿#±±’ö=ƒ‡iO\nÊ¬îÈ)Ô.¬Ü€6¿:è¢\n¡T\0ª\0\0l\0\0•{­Ú²\"ŠÚÄ`O4úVþ\\Ùa”_BòÉy·¥\'kœ<óÅŠÂ@ò™G\"¢ßÄ…Ï+±\'a¥|éÑ	=ªEEªÆrNÙY¦©	ŽÌ;*Åa§L^)Ò2¡­ÛÄ-»_J‘~—¦sÆUˆ?ÂÕ5EK—\n™28Ê„òÔweò>¨…™¡*vbTØ\07\'Ò­TV‘Ó$í³igoŠ9w+ìÓ4œ‹a\Z1ø¥\"0=‰ÕþZÐÎ2¥Ëq2C‹NöHÌd\"’#•M™¼VÖ¸é½u/;RìêÀWzÑKD2²­ÚÄln7Üµi:+Ê6¨ŸÈ±0÷iöp ’\0¢À)\0•\0r±7·ø½)-Û6BaÅŒBÂÇÑÇõQþCXx´?²aÓ\rˆFh”–Ðøã¹&Ö<ÅÉúÚÕyÍx§+Ì0Æ)±1®¡÷®„`Ù€±¿Î°l\"«íªËˆáìNm\'MÉ#ü¼>ûŠÆbpéuÂ¬„õš[k?¨‹´cÖå½E\0ØþÏ9rÅÌGé,WòÔ@÷\"ÿ\0!åLž â<6\rãûN%b¨a}_Šàª½O/õKìÉ—É!K;ù(Tÿ\0‰[éW&á`c8¨µ˜ï¤†eØÚàé\"êl64ê° nàŽµö¼Æ@U\0XÐUê€(¢Š\0¢Š(Š( \nRvï•‚0ø€?Mò>%ö¸aûTÛ¥§hŒqS\"‘âBªO à†Bl	Rvähylƒ’ßÜZÜÂ™P†±n\rÆÄnÖ˜ÿ\0ûaþóûïÿ\0J¾7eØÒûïÿ\0J¶Œšèk(§Ô³çu„•p˜¥ÅÇÞ££<;†U`ŠG[Vœ9Î1\r\"c¡(®ÅF°ˆ‚~kaU_ý¢Ì?ýãÿ\0Ò¯‡²<Çña¿Þ7ý:ŠPo£¢W4ÒRW]Âñv˜¥aÏCúEþµƒ>Ì°ò„Hqp\'ÆD©{[ç¿•½iV{$Ìúÿ\0ïþcnÉó,?ûÃÿ\0%m%nÈà¶ª5;TÃF˜¸ŒNŽŒ—º•;ÞÄ¿]üê¤-Ö²æÙ{A;BåÆlÚ¥¿Q{‘ÈúÖ\ZÈJ‹—d˜HfÍ`YÀ\"ÎÈ§“:‹¨·[·ÍE?x¯ƒð¹„&9£¾äŠ\0xÏ˜>^`ìkŸ¸G‡1ÂL>6]+\"ºÝÂ’Ù¶=¸÷®ŸF¸u¡“sì¦L&\\4¿mkŽL9«B4åþÏ¹Ùx\'Â1¿rÁÓÑ^÷ àŸÚªÏö„ÂÇÁ(ç$6o]l~ùWÎÀŒÂP9;_ÙÒßÄÐEPQ@QE\0QEEPGqÿ\0DÄ[û™?áj‘¨Î&ÆÇ,¿Då½EŽÃÔò÷ 9^à[È{W µò5°¥ò>Åã\r°¸y%èX ù»YAô½\rX83„æÌ±(2ÈFÑ¯Ï‘cÐ*`ðÏb.H||áG÷P›“èd#oÙôßÉòˆ0‘pñ,qŽŠ9ú“ÌŸS½“*ËãÃÃ.˜ãPª=\0·>§Ìõ­ª( \n(¢€(¢Š\0¢Š(Š( 1â%¬Ç &—Ü9›02>öGÒßÌš¶qF#LZG6?Ãþöª7qnW-¨šÛ¡yŽµì\n‡ÈñƒHŽûÛ×Óçý*dP€¯V¯‚”=¢æxØ1Òižxâ`†0•\r‘ui\0Ûâ;úÐ\râ)]Ú7iI\n¶áç7V‘wX¼ìy3þCò¥ogX‰dî&V\Z4›ÈÜ¼[÷dœ1‹Åa°²ÉêËûíeüè¥É7\'rNäûÔ×pü˜ÙÄjAc#ôUùþ#ÈéLìVv³c$\n?»ˆ‚OÍÎÃØ32Î\\<b(#HÐtŸ©<Øúè¨°ë\Zª ²¨\n£È\r…[r	õBUðÿ\0OÊ£ÎC!ûËùÿ\0J‘Ê2ã«°:­Ë¥¯ýhßöŽÿ\0_‚ýIâŽ³g|2âç·„*F©%›òõ­_í	wÅá•Uü5Î“¤ÝÙŽÄí½ŽÕxìF(Ó-URã;¼€0f¹°\Z€øN½=h\ræP@,<\"æ²PQ@QE\0QEEPV;KË–bbˆú5*Žm ‡Óï¦Õg¢€ã\0|©õýžq€à&Œ°Ô¸–6\'{2FFß0j»Û§G‡hñ¸x‚¬ŒV`»\rgukr³^ÜÍºš\\ðÎE&?0ðÄ¥Y—¼m é± ößØÐu$ª – ¹$ØzÕ‡6Ã½´OjågS{òµŽô„±¬ÌüGaÐÊÄŸAàµþdV<¯„eÂãðxl]³DC6 €Ûê]>ž´FQEEPQ@QE\0QExšM*[Èô *ÜE6©Hè»_üô¨‚µ’yîÄ“¹;ÖœyÐÜ3†\r5È¸U\'Üì?[‚*ávõôþu?@•ã|3æàÂ^ÊþK£½so?ú\nuR»	‚cÄÒ¸S¥P16Ø^A¿©þ€·ÃÁ–†{ÈcîÐ›ÅÍ~k±7\"÷5aU`,+íEPQ@Q;Yá¹±°ÃöxõÈ’|7ÂÂÄÝˆ\n­å‘Nã;™OÄ¨¥´óå u\'oAMú(\n[ÙNI<³Nàƒvm\"ãp|>/óUþŠ(Š( \n(¢€(¢Š\0¢Š(Š+C<Í£Â@óÌN„Ø\\›\0Ì“@kq~F¸ìØfûëá?…†è}˜\nå·2“‰ŽtÚH\\z©³)ô\"ê~töÆöÉ“Üád-mµ•þºI6¥~w–bŽ.|3)™™ƒwDj\"×²{n7¶þ´Ke8Þþ¦ÐÉÞ\"¾†ø—PÇÔ^©}¨BÙa¶ÿ\0kA~¶%M¯íùUÇ\"\'ìÐ_Ÿuü\"²c²ø¦ÑÞ níÄ‰ºËÈZjŠ( \n(¢€(¢ŠÿÙ'),(6,3,'',''),(7,4,'',''),(8,5,'',''),(9,6,'',''),(10,7,'',''),(11,8,'',''),(12,8,'','');
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
INSERT INTO `tbl_objetos` VALUES (1,'vista_personal'),(2,'vista_usuarios'),(3,'vista_parametros_Segurida'),(4,'vista_pacientes'),(5,'vista_consultas'),(6,'vista_preclinica'),(7,'vista_citas'),(8,'vista_caja'),(9,'vista_especialidad'),(10,'vista_cargo'),(11,'vista_diagnÃ³stico'),(12,'vista_estado civil'),(13,'vista_religiones'),(14,'vista_servicios'),(15,'vista_tipo de sangre'),(16,'vista_sexo'),(17,'vista_preguntas'),(18,'vista_parentesco'),(19,'vista_Roles'),(20,'vista_parametros_Sistema'),(21,'vista_Respaldo_DB'),(22,'Vista_RestauraciÃ³n_DB'),(23,'vista_Cobros_Adicionales'),(24,'vista_Expediente'),(25,'Vista_SisiÃ³n');
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
INSERT INTO `tbl_pacientes` VALUES (1,1,'0205199500032',1,2,1,1,'PRUEBA','2012-06-06',8,'PRUEBA',55555555,55555555,'prueba@gmail.com','PRUEBA',2,55555555,55555555,'PRUEBA','PRUEBA   ','PRUEBA   ','PRUEBA','PRUEBA',NULL,NULL,NULL,NULL);
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
INSERT INTO `tbl_parametros` VALUES (1,'INTENTOS_INGRESO','3',1,'2020-10-04','2020-10-04'),(2,'PREGUNTAS_RECUPERACIÃ“N','3',NULL,NULL,NULL);
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
INSERT INTO `tbl_parentesco` VALUES (1,'MADRE'),(2,'PADRE'),(3,'HERMANO(A)'),(4,'TÃO(A)'),(5,'PRIMO(A)'),(6,'ABUELO(A)'),(7,'SUEGRO(A)'),(8,'YERNO'),(9,'NUERA'),(10,'CUÃ‘ADO(A)'),(11,'Otros'),(14,'HIJO(A)');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_preclinica`
--

LOCK TABLES `tbl_preclinica` WRITE;
/*!40000 ALTER TABLE `tbl_preclinica` DISABLE KEYS */;
INSERT INTO `tbl_preclinica` VALUES (1,1,'25','25',25,25,'25',25,25,25,NULL,NULL,NULL,NULL),(2,2,'55','55',55,555,'55',55,55,555,NULL,NULL,NULL,NULL),(3,3,'44','44',44,44,'44',44,44,44,NULL,NULL,NULL,NULL),(4,4,'2524','45',44,545,'4454',545,545,45,NULL,NULL,NULL,NULL),(5,5,'45','4545',4545,45,'4545',454,45,45,NULL,NULL,NULL,NULL),(6,6,'25','2545',454,454,'45',45,4545,4545,NULL,NULL,NULL,NULL),(7,7,'4545','445',454,54,'54',5454,545,454,NULL,NULL,NULL,NULL),(8,8,'45454','5454',545,4545,'45',45454,545,4545,NULL,NULL,NULL,NULL),(9,9,'4','45',45,4545,'454',5,45,545,NULL,NULL,NULL,NULL),(10,10,'25','25',25,2252,'252',52,52,236,NULL,NULL,NULL,NULL);
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
INSERT INTO `tbl_preguntas` VALUES (1,'Â¿CUÃL ES EL NOMBRE DE SU MAMÃ? ',NULL,NULL,NULL,NULL),(2,'Â¿CUÃL ES EL NOMBRE DE SU PRIMER MASCOTA?',NULL,NULL,NULL,NULL),(3,'Â¿CUÃL ES SU COLOR FAVORITO?',NULL,NULL,NULL,NULL),(4,'Â¿CUÃL ES SU COMIDA FAVORITA?',NULL,NULL,NULL,NULL),(5,'Â¿CUÃL ES EL NOMBRE DE SU PADRE?',NULL,NULL,NULL,NULL),(6,'Â¿CÃ“MO SE LLAMABA EL COLEGIO AL QUE ASISTISTE?',NULL,NULL,NULL,NULL),(7,'Â¿CÃ“MO SE LLAMA SU TÃO FAVORITO?',NULL,NULL,NULL,NULL),(8,'Â¿CÃ“MO SE LLAMA SU PRIMERA ESCUELA?',NULL,NULL,NULL,NULL),(9,'Â¿CÃ“MO SE LLAMA SU TÃA FAVORITA?',NULL,NULL,NULL,NULL),(10,'Â¿CUÃL ES EL NOMBRE DE SU PRIMER PAREJA?',NULL,NULL,NULL,NULL),(11,'Â¿CUÃL FUE EL PRIMER LIBRO QUE LEÃSTE?',NULL,NULL,NULL,NULL);
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
INSERT INTO `tbl_religion` VALUES (1,'CATÃ“LICO(A)'),(2,'EVANGÃ‰LICO(A)'),(3,'OTROS');
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
  `ContraseÃ±a` varchar(30) NOT NULL,
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

-- Dump completed on 2020-12-13  0:49:04
