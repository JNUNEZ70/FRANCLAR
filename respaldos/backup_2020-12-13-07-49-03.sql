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
INSERT INTO `tbl_bitacora_evento` VALUES (1,'2020-12-12 04:30:48',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(2,'2020-12-12 04:30:54',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(3,'2020-12-12 04:31:05',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(4,'2020-12-12 04:31:12',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(5,'2020-12-12 04:32:00',1,7,'Insert','SE INGRESÓ UNA NUEVA CITA'),(6,'2020-12-12 04:32:10',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(7,'2020-12-12 04:32:24',1,6,'Insert','SE REALIZO PRECLINICA'),(8,'2020-12-12 04:32:29',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(9,'2020-12-12 04:32:49',1,25,'Acceso','CERRO SESIÓN'),(10,'2020-12-12 04:32:58',11,25,'	Acceso','INICIÓ SESIÓN'),(11,'2020-12-12 04:33:28',11,25,'Acceso','CERRO SESIÓN'),(12,'2020-12-12 04:33:45',1,25,'	Acceso','INICIÓ SESIÓN'),(13,'2020-12-12 04:33:50',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(14,'2020-12-12 04:36:17',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(15,'2020-12-12 04:38:37',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(16,'2020-12-12 04:38:56',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(17,'2020-12-12 04:39:05',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(18,'2020-12-12 04:39:30',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(19,'2020-12-12 04:39:42',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(20,'2020-12-12 04:40:04',1,7,'Insert','SE INGRESÓ UNA NUEVA CITA'),(21,'2020-12-12 04:40:11',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(22,'2020-12-12 04:40:14',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(23,'2020-12-12 04:40:24',1,6,'Insert','SE REALIZO PRECLINICA'),(24,'2020-12-12 04:40:29',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(25,'2020-12-12 04:41:03',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(26,'2020-12-12 04:41:08',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(27,'2020-12-12 04:45:56',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(28,'2020-12-12 04:46:29',1,7,'Insert','SE INGRESÓ UNA NUEVA CITA'),(29,'2020-12-12 04:46:33',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(30,'2020-12-12 04:46:55',1,6,'Insert','SE REALIZO PRECLINICA'),(31,'2020-12-12 04:47:01',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(32,'2020-12-12 04:47:04',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(33,'2020-12-12 04:48:20',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(34,'2020-12-12 04:54:11',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(35,'2020-12-12 04:54:41',1,7,'Insert','SE INGRESÓ UNA NUEVA CITA'),(36,'2020-12-12 04:54:47',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(37,'2020-12-12 04:55:32',1,6,'Insert','SE REALIZO PRECLINICA'),(38,'2020-12-12 04:55:37',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(39,'2020-12-12 04:57:46',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(40,'2020-12-12 04:58:02',1,7,'Insert','SE INGRESÓ UNA NUEVA CITA'),(41,'2020-12-12 04:58:07',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(42,'2020-12-12 04:58:17',1,6,'Insert','SE REALIZO PRECLINICA'),(43,'2020-12-12 04:58:23',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(44,'2020-12-12 05:02:25',1,7,'Insert','SE INGRESÓ UNA NUEVA CITA'),(45,'2020-12-12 05:05:01',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(46,'2020-12-12 05:05:17',1,6,'Insert','SE REALIZO PRECLINICA'),(47,'2020-12-12 05:05:23',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(48,'2020-12-12 05:07:36',1,7,'Insert','SE INGRESÓ UNA NUEVA CITA'),(49,'2020-12-12 05:07:41',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(50,'2020-12-12 05:07:51',1,6,'Insert','SE REALIZO PRECLINICA'),(51,'2020-12-12 05:07:55',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(52,'2020-12-12 05:12:16',1,7,'Insert','SE INGRESÓ UNA NUEVA CITA'),(53,'2020-12-12 05:12:24',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(54,'2020-12-12 05:12:37',1,6,'Insert','SE REALIZO PRECLINICA'),(55,'2020-12-12 05:12:42',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(56,'2020-12-12 05:24:07',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(57,'2020-12-12 05:24:36',1,7,'Insert','SE INGRESÓ UNA NUEVA CITA'),(58,'2020-12-12 05:24:42',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(59,'2020-12-12 05:25:06',1,6,'Insert','SE REALIZO PRECLINICA'),(60,'2020-12-12 05:25:11',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(61,'2020-12-12 05:26:00',1,24,'Acceso','INGRESO A PANTALLA EXPEDIENTE'),(62,'2020-12-12 05:27:23',1,8,'Acceso','INGRESO A PANTALLA CAJA'),(63,'2020-12-12 05:40:59',1,25,'Acceso','CERRO SESIÓN'),(64,'2020-12-12 22:51:30',1,25,'	Acceso','INICIÓ SESIÓN'),(65,'2020-12-12 22:53:42',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(66,'2020-12-12 22:53:47',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(67,'2020-12-12 22:54:52',1,7,'Insert','SE INGRESÓ UNA NUEVA CITA'),(68,'2020-12-12 22:55:00',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(69,'2020-12-12 22:55:14',1,6,'Insert','SE REALIZO PRECLINICA'),(70,'2020-12-12 22:55:18',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(71,'2020-12-13 00:36:19',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(72,'2020-12-13 00:38:33',1,2,'Acceso','INGRESO A PANTALLA USUARIOS'),(73,'2020-12-13 00:38:43',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(74,'2020-12-13 00:38:51',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(75,'2020-12-13 00:49:23',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(76,'2020-12-13 00:51:28',1,1,'Update','SE ACTUALIZÓ UN EMPLEADO'),(77,'2020-12-13 00:51:38',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(78,'2020-12-13 00:54:22',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(79,'2020-12-13 01:09:33',1,4,'Insert','SE EDITO UN PACIENTE'),(80,'2020-12-13 01:09:50',1,4,'Insert','SE EDITO UN PACIENTE'),(81,'2020-12-13 01:10:06',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(82,'2020-12-13 01:10:19',1,4,'Insert','SE EDITO UN PACIENTE'),(83,'2020-12-13 01:11:13',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(84,'2020-12-13 01:11:34',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(85,'2020-12-13 01:15:02',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(86,'2020-12-13 01:16:35',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(87,'2020-12-13 01:35:47',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(88,'2020-12-13 01:36:31',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(89,'2020-12-13 01:37:39',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(90,'2020-12-13 01:41:29',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(91,'2020-12-13 01:41:43',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(92,'2020-12-13 03:16:59',1,19,'Acceso','INGRESO A PANTALLA ROLES'),(93,'2020-12-13 03:56:08',1,19,'Acceso','INGRESO A PANTALLA ROLES'),(94,'2020-12-13 03:58:20',1,19,'Acceso','INGRESO A PANTALLA ROLES'),(95,'2020-12-13 03:59:27',1,19,'Update','SE ACTUALIZÓ UN ROL'),(96,'2020-12-13 03:59:34',1,19,'Update','SE ACTUALIZÓ UN ROL'),(97,'2020-12-13 03:59:40',1,19,'Update','SE ACTUALIZÓ UN ROL'),(98,'2020-12-13 03:59:47',1,19,'Update','SE ACTUALIZÓ UN ROL'),(99,'2020-12-13 03:59:52',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(100,'2020-12-13 04:13:09',1,19,'Acceso','INGRESO A PANTALLA ROLES'),(101,'2020-12-13 04:14:00',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(102,'2020-12-13 04:32:03',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(103,'2020-12-13 04:32:32',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(104,'2020-12-13 04:52:40',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(105,'2020-12-13 04:54:56',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(106,'2020-12-13 04:54:59',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(107,'2020-12-13 04:55:22',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(108,'2020-12-13 04:55:46',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(109,'2020-12-13 04:56:47',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(110,'2020-12-13 04:59:55',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(111,'2020-12-13 05:00:33',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(112,'2020-12-13 05:05:42',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(113,'2020-12-13 05:11:24',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(114,'2020-12-13 05:11:30',1,7,'Acceso','INGRESO A PANTALLA CITAS'),(115,'2020-12-13 05:11:45',1,6,'Acceso','INGRESO A PANTALLA PRECLINICA'),(116,'2020-12-13 05:11:49',1,5,'Acceso','INGRESO A PANTALLA CONSULTA'),(117,'2020-12-13 05:12:38',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(118,'2020-12-13 05:18:48',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(119,'2020-12-13 05:19:53',1,10,'Update','SE ACTUALIZÓ EL CARGO'),(120,'2020-12-13 05:20:01',1,10,'Update','SE ACTUALIZÓ EL CARGO'),(121,'2020-12-13 05:20:09',1,10,'Update','SE ACTUALIZÓ EL CARGO'),(122,'2020-12-13 05:20:18',1,10,'Update','SE ACTUALIZÓ EL CARGO'),(123,'2020-12-13 05:20:27',1,10,'Update','SE ACTUALIZÓ EL CARGO'),(124,'2020-12-13 05:20:35',1,10,'Update','SE ACTUALIZÓ EL CARGO'),(125,'2020-12-13 05:21:39',1,9,'Acceso','INGRESO A PANTALLA ESPECIALIDADES'),(126,'2020-12-13 05:27:39',1,9,'Update','SE ACTUALIZÓ UNA ESPECIALIDAD'),(127,'2020-12-13 05:27:47',1,9,'Update','SE ACTUALIZÓ UNA ESPECIALIDAD'),(128,'2020-12-13 05:28:00',1,9,'Update','SE ACTUALIZÓ UNA ESPECIALIDAD'),(129,'2020-12-13 05:28:09',1,9,'Update','SE ACTUALIZÓ UNA ESPECIALIDAD'),(130,'2020-12-13 05:28:17',1,9,'Update','SE ACTUALIZÓ UNA ESPECIALIDAD'),(131,'2020-12-13 05:28:25',1,9,'Update','SE ACTUALIZÓ UNA ESPECIALIDAD'),(132,'2020-12-13 05:28:34',1,9,'Update','SE ACTUALIZÓ UNA ESPECIALIDAD'),(133,'2020-12-13 05:28:47',1,12,'Acceso','INGRESO A PANTALLA ESTADO_CIVIL'),(134,'2020-12-13 05:31:31',1,12,'Update','SE ACTUALIZÓ UN ESTADO CIVIL'),(135,'2020-12-13 05:31:39',1,12,'Update','SE ACTUALIZÓ UN ESTADO CIVIL'),(136,'2020-12-13 05:31:46',1,12,'Update','SE ACTUALIZÓ UN ESTADO CIVIL'),(137,'2020-12-13 05:31:55',1,12,'Update','SE ACTUALIZÓ UN ESTADO CIVIL'),(138,'2020-12-13 05:32:02',1,12,'Update','SE ACTUALIZÓ UN ESTADO CIVIL'),(139,'2020-12-13 05:32:09',1,16,'Acceso','INGRESO A PANTALLA GÉNERO'),(140,'2020-12-13 05:36:04',1,16,'Update','SE ACTUALIZÓ UN GÉNERO'),(141,'2020-12-13 05:36:11',1,16,'Update','SE ACTUALIZÓ UN GÉNERO'),(142,'2020-12-13 05:36:25',1,13,'Acceso','INGRESO A PANTALLA RELIGIÓN'),(143,'2020-12-13 05:39:11',1,13,'Update','SE ACTUALIZÓ UNA RELIGION'),(144,'2020-12-13 05:39:18',1,13,'Update','SE ACTUALIZÓ UNA RELIGION'),(145,'2020-12-13 05:39:26',1,13,'Update','SE ACTUALIZÓ UNA RELIGION'),(146,'2020-12-13 05:39:35',1,15,'Acceso','INGRESO A PANTALLA TIPO_SANGRE'),(147,'2020-12-13 05:41:51',1,15,'Update','SE ACTUALIZÓ UN TIPO DE SANGRE'),(148,'2020-12-13 05:42:00',1,15,'Update','SE ACTUALIZÓ UN TIPO DE SANGRE'),(149,'2020-12-13 05:42:08',1,15,'Update','SE ACTUALIZÓ UN TIPO DE SANGRE'),(150,'2020-12-13 05:42:16',1,15,'Update','SE ACTUALIZÓ UN TIPO DE SANGRE'),(151,'2020-12-13 05:42:24',1,15,'Update','SE ACTUALIZÓ UN TIPO DE SANGRE'),(152,'2020-12-13 05:42:33',1,15,'Update','SE ACTUALIZÓ UN TIPO DE SANGRE'),(153,'2020-12-13 05:42:40',1,15,'Update','SE ACTUALIZÓ UN TIPO DE SANGRE'),(154,'2020-12-13 05:42:47',1,15,'Update','SE ACTUALIZÓ UN TIPO DE SANGRE'),(155,'2020-12-13 05:43:05',1,18,'Acceso','INGRESO A PANTALLA PARENTESCO'),(156,'2020-12-13 05:45:05',1,18,'Update','SE ACTUALIZÓ UN PARENTESCO'),(157,'2020-12-13 05:45:12',1,18,'Update','SE ACTUALIZÓ UN PARENTESCO'),(158,'2020-12-13 05:45:19',1,18,'Update','SE ACTUALIZÓ UN PARENTESCO'),(159,'2020-12-13 05:45:27',1,18,'Update','SE ACTUALIZÓ UN PARENTESCO'),(160,'2020-12-13 05:45:37',1,18,'Update','SE ACTUALIZÓ UN PARENTESCO'),(161,'2020-12-13 05:45:45',1,18,'Update','SE ACTUALIZÓ UN PARENTESCO'),(162,'2020-12-13 05:45:52',1,18,'Update','SE ACTUALIZÓ UN PARENTESCO'),(163,'2020-12-13 05:45:59',1,18,'Update','SE ACTUALIZÓ UN PARENTESCO'),(164,'2020-12-13 05:46:06',1,18,'Update','SE ACTUALIZÓ UN PARENTESCO'),(165,'2020-12-13 05:46:13',1,18,'Update','SE ACTUALIZÓ UN PARENTESCO'),(166,'2020-12-13 05:47:16',1,18,'Insert','SE INGRESÓ UN PARENTESCO'),(167,'2020-12-13 05:47:35',1,18,'Update','SE ACTUALIZÓ UN PARENTESCO'),(168,'2020-12-13 05:48:23',1,18,'Update','SE ACTUALIZÓ UN PARENTESCO'),(169,'2020-12-13 05:48:33',1,23,'Acceso','INGRESO A PANTALLA COBROS'),(170,'2020-12-13 05:55:15',1,23,'Update','SE ACTUALIZÓ UN COBRO'),(171,'2020-12-13 05:55:30',1,19,'Acceso','INGRESO A PANTALLA ROLES'),(172,'2020-12-13 05:55:49',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(173,'2020-12-13 05:56:05',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS DE SEGURIDAD'),(174,'2020-12-13 06:02:11',1,20,'Acceso','INGRESO A PANTALLA PARAMETROS DE SISTEMA'),(175,'2020-12-13 06:03:19',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS DE SEGURIDAD'),(176,'2020-12-13 06:03:22',1,20,'Acceso','INGRESO A PANTALLA PARAMETROS DE SISTEMA'),(177,'2020-12-13 06:03:26',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS DE SEGURIDAD'),(178,'2020-12-13 06:03:41',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS DE SEGURIDAD'),(179,'2020-12-13 06:03:44',1,20,'Acceso','INGRESO A PANTALLA PARAMETROS DE SISTEMA'),(180,'2020-12-13 06:06:06',1,17,'Acceso','INGRESO A PANTALLA PREGUNTAS SECRETAS'),(181,'2020-12-13 06:10:01',1,17,'Update','SE ACTUALIZÓ UNA PREGUNTA SECRETA'),(182,'2020-12-13 06:10:09',1,17,'Update','SE ACTUALIZÓ UNA PREGUNTA SECRETA'),(183,'2020-12-13 06:10:16',1,17,'Update','SE ACTUALIZÓ UNA PREGUNTA SECRETA'),(184,'2020-12-13 06:10:23',1,17,'Update','SE ACTUALIZÓ UNA PREGUNTA SECRETA'),(185,'2020-12-13 06:10:30',1,17,'Update','SE ACTUALIZÓ UNA PREGUNTA SECRETA'),(186,'2020-12-13 06:10:40',1,17,'Update','SE ACTUALIZÓ UNA PREGUNTA SECRETA'),(187,'2020-12-13 06:10:47',1,17,'Update','SE ACTUALIZÓ UNA PREGUNTA SECRETA'),(188,'2020-12-13 06:10:56',1,17,'Update','SE ACTUALIZÓ UNA PREGUNTA SECRETA'),(189,'2020-12-13 06:11:03',1,17,'Update','SE ACTUALIZÓ UNA PREGUNTA SECRETA'),(190,'2020-12-13 06:11:10',1,17,'Update','SE ACTUALIZÓ UNA PREGUNTA SECRETA'),(191,'2020-12-13 06:11:21',1,17,'Update','SE ACTUALIZÓ UNA PREGUNTA SECRETA'),(192,'2020-12-13 06:11:32',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(193,'2020-12-13 06:28:31',1,1,'Update','SE ACTUALIZÓ UN EMPLEADO'),(194,'2020-12-13 06:32:23',1,2,'Acceso','INGRESO A PANTALLA USUARIOS'),(195,'2020-12-13 06:36:42',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(196,'2020-12-13 06:38:05',1,2,'Acceso','INGRESO A PANTALLA USUARIOS'),(197,'2020-12-13 06:38:25',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(198,'2020-12-13 06:38:35',1,2,'Acceso','INGRESO A PANTALLA USUARIOS'),(199,'2020-12-13 06:42:59',1,4,'Acceso','INGRESO A PANTALLA PACIENTES'),(200,'2020-12-13 06:43:49',1,2,'Acceso','INGRESO A PANTALLA USUARIOS'),(201,'2020-12-13 06:43:58',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(202,'2020-12-13 06:44:09',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(203,'2020-12-13 06:45:35',1,2,'Update','SE BLOQUEÓ UN USUARIO'),(204,'2020-12-13 06:45:44',1,2,'Update','SE ACTIVÓ UN USUARIO'),(205,'2020-12-13 06:47:04',1,21,'Acceso','INGRESO A PANTALLA RESAPALDO DB');
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
INSERT INTO `tbl_empleado` VALUES (1,'JEAN CARLOS NÚÑEZ SALGADO',1,2,1,1,'1111111111111','0000-00-00','Col venezuela sector B.....',22091139,33876298,15000,NULL,NULL,NULL,NULL),(3,'CARLOS FABRICIO NUÑEZ RAMIRES',1,3,2,1,'','0000-00-00','COL. VENEZUELA SECTOR B BLOQUE 8 CASA 17 ',22278000,33876298,30000,NULL,NULL,NULL,NULL),(11,'JOSUE ALLAN GONZALES RAMIRES',1,2,3,3,'0801199714588','1987-10-08','WINFEIUFGEFVDFVDF',22222222,99999999,20000,NULL,NULL,NULL,NULL),(12,'WILDER EDUARDO RAMIRES ',1,1,5,7,'0801199714078','1982-09-05','SJDNVSDHOFIVBDVRFGBRGBRFGBGF',22222222,88888888,20000,NULL,NULL,NULL,NULL),(17,'JEAN CARLOS NUEZ',1,1,6,8,'0801199714079','1980-10-14','ASDSDJNSDSDSDSDD',22222222,99999999,0,NULL,NULL,NULL,NULL),(18,'JOSUE ROLANDO RAMIRES GONZALES',1,1,1,2,'0801199714079','1997-10-14','AASSDSSSDDSDSSSDSDSD',22222222,99999999,20000,NULL,NULL,NULL,NULL),(20,'JOSUE CACERES ACOSTA',1,1,6,8,'0801115556666','1980-10-04','SDSDCSDCSDCSD',22222222,99999999,0,NULL,NULL,NULL,NULL),(21,'JEAN CARLOS RODRIGUEZ',1,1,6,8,'0801199714089','1980-11-10','SDFDFDGBDFGBDFGB',22222222,99999999,0,NULL,NULL,NULL,NULL),(22,'JUAN JOSE RODRIGUEZ ALMENDAREZ',1,1,4,9,'0801199614079','1988-06-14','OSDIUBDINDFDFDF FDDFFDFDFDF',22222222,99999999,10000,NULL,NULL,NULL,NULL);
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
INSERT INTO `tbl_fotos_consultas` VALUES (1,1,'image/jpeg','����\0JFIF\0\0\0\0\0\0��\0�\0	\Z\Z \Z! ( \Z\' \"1!%)+...383-7(-.+\n\n\n\r-&&--+--3+-5--.2--55-.--5-/++//------.-7/---/-5--.5--��\0\0�;\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0	\0\0\0!1A\"Qa�2q�BR�#r�����Sb�$3C������Td���\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0��\01\0\0\0\0\0\0\0!1AQa\"q�����#��2Bb��\0\0\0?\0x׉eUf\n/k�m�!�{��m�q�\0�\r��U��k���@1(�eȸ���C���ѷQ��S\"�6�� (^%�C��Z�kQQ�7�qb�y�O@|C��=�I�Q@QE\0QEE��fQ�y�6U��Rk\rҶe+t��)9�v����tV�\0�������\Zc�\0�M���\0-Uz�.̴�Y�c�>*���	ITEW���;��lF�z�?A�/���\0tFM�_��w�ޒLĒI$��;���E�\"O�j�L�o��Z��-%��:\"�SN���F�{[8�*J�$Etnj����}EQ{ē���~з�J��\0R�^�nnI�l�Ð�tp�t�����7 �����A%�ȋX[��ҫ�O�c$Pa�;��\n\0+���]�/S�,����c��b��Qm/�a��\0�na�wus�dt���R����Q�8�b�G�oc�o����ޤrn>�b�0ʝ��^����A����H���k\n�ůvnwo��]�<iZ*{L��l�7��w2����#����������9�a�I5Kwe܀|;[�l�ږ\\�࡙�K����e�5W�bn>_:���	qR��X-�X\07I;w�O&��2�c�<��,���n���ߝkc��D�Pw��������/֩<	�1C��HUc���U��@��c�0�,j����Yѕ�D��*���ߕT���B�~k�gO�N��+�7h�ψ�R�E���+\r�àS����嘻���ȥ`C!���lA��S��4�~��?[W��-&�U�F^�����N�Cm!�4�7RA�lȻ6���y�4���q����%_�XbO�)o��\n��³C����ص1����[�����4�\0�\'��s�F?�p�(�Hˬ��X,l~.v#��#0Y��o�c��U�\'�YH��x���\n�ka���\0=O/:��˟�)|8����a̖Li\'ߚ�v)����US�%��;���P3Ey�:���������4��r̒tfs 0ۑ�}����c��`��O�����\Z��Zs�B��s�d��M�Z����)P�dsDI\r���m����o*�a��k�w�`k�ZK%�����͚��p�����HQZy�=��EX����[I@A��~[VL��Ƒ!b��Acs��<�iU�6*??ˆ\'\r4����FߝHQY59	�w�����a��Ԧ�o����X\'w��|@�\'�К�v��$9������W�����7֠�\n��\0W)_ ��؏�h��0�+dL� �aȃb>Dn*�v����!Iw>���O�8w\0.�k@	,<jRH����\"T�o�\0��fQqᘌ�%qvtfE��k.!_�dkO�Qp>`U���d�\"L�}A�@�L<��*��ͦ�N�,�=���I�����`��j+��w��d6\\Ti�_�?G\'�\r\'�)�ý�e��/}�H~��\r����@]诈��ADr5��)]��nZD�)�F��\'��ڦ�${FB3	��A-\n?�U�ɬ|�qO\'=��t�n\rI�L�f�Uv�̚�n�t2��\0�si��)в��|;�l��|�~���\0�\0�]�b��a�Ryn�D���{ܚS0����h&����M����:�Rg.�lV]�����Y�0\0�����t�V���\\$�Y�a��o�������?�Iu299բ�<!Ś���#��*����5�^2�5�( �T��Đy��s�H�u�������ln@r�k&�<F������e�����S�N.�L��(���y�Eu<J�\0@a���ly\Zƙ>6a�ǅ��ܩN�6��.}?�<��	p�LCB��d�a��v��7R~�i��j_���I�b�\06*nM�Y�����P����V��6��Dz[�rڀP��;�m���ÕG2�X%1ʅ$[˘�lG����8�������t��΍�\rJ,A������1��Pi\n�$��ON[��:��L��L��E&m}Z񊼀�l\n���ؖ6[�#{z���?����k�r\\h񸲢0ϣ��;�����k_ұ�ó,��P�E����uھ��2�HIS���7ڸNi6�D���E:�d�?�7��k/�\\)B#�U~����[�7�;О�O��_�������x �,@ű d]!�W�6�e�hd�)>(ث{*鬚Ib��W�wcJH#J����/�[T��/|���4͛$#����oa1�,�#3���.Oʣ3|�2(#���{7#�Cº|��Z�gN��}V��W�;0 a���gȳ|RH�u-)�Wtd`4X3oA}��������6�n���\\����z����a��) �����lEǑ�#޵D/�	ZB��=�����\0�U��j�>�ŭk�W��WVG��V�b>��krM���H���e!��A�?\"+�k�0Q�\Z��E�Tt��MlV���(���ݻ�~6)G��&�0Ԥ����UP�1���I�3u�����;|���U���m\Z���ƿ��޹�*�h=#�����j�V��w\\!���K�;��t*��*��k�\\FH���,���pC\0lw�*�cE�I����jf�\"�m�ұ���Wuu6�}���U�E�\nK��Q�%�#�����ϻ*ô>\nY�.���Z�U�l��d�)�2��/~V��g��1��נwVJ�؋��ɾ��6V�6L�<L��������q奅T|Ӳ��m����%i��)���\ZK��C��M��y��ּv��p`�)�U�K\nm�m��m*�M�FJ~C�X��\0F���ԟ����W@vM�M��\"�q��@�������#����0`��R���5o�o9�.i&�80�ͷO}j�\Z5\\0t�+;]�4S����}T�?&���Pm�N�[I�*v��6������\Z������ۑ2���L*�	a�8��8�ݜ��poz�i\\�����@�ia~^\0Y�y֤��|=�Ӧ.�@�\n�i���\n�;�à�Lba[&.�F��\"��gg�P|;./�UHF5����n��3�0G����GX����+5��*�7�޷8���b��D\r\"a� �/kY�f$\\���RyA�ag��x�y&K.9@���T\\-?x�&�d�LL�Ȏ�vN�%��H\0\0��k�S���qu�Y)�1xVILa�����C{�7\'P;֤�\"\r�2��)n��J�3\r�jUQ9�2Y��]��j�c�e[QUIke�\"��=�9`�U��_�\'+�1&�0Ҵg��ѿY��ӣ���fubJ�Ҡ�B/���{����qq֯����8e{x����(E�h�z���|N/�E-f�1��z�g����Zm?��-z�F�u$ګ�r~�ΒU�	�s�p�bLT�L�J��-���ʒ��j����5PM��&�\\�Ui���h��J�ʛ��+eؑm��K�0�Y���$�[�z��\n��d�d��TIǉ-���Jދ%�9]jQX\\^�\0N^���\Z���2�Lt�*WK7�s�j��L�m��t�p��-/l�ë��XÁ%m�Oٰ�v�C�0�q�������\'`	65q��c^�TFF��,\r���u������r�˹yxH��8UB���\n\0�\0��SI���s\n�������3�eԅOM�E>]-[�T�_�uaЄ*}�D`*�Ŝ%.1�\\_w.�7]�\rpm�ܯsV��������T��vs�\0a��؄}R����K���$�a��?�Y��Z�4�ޱ�\\-\'ڱxְ�:��Ao��ޫ����רg�~�l<��TSe��r<Fd���	\"��\'�\r;�[n�2r^��:�y\0�yQ\r���|���\ng�C��H`�e\0��h]��mD(�\0�[�:1|Gv���B��\'�k�ы�-kU�cJs��SY�$�|>݉����֑�3j��wq��2��f7��0���C�X�n]c�Ws�^��-�ckԭ[�#\n(���(�>Inˢ�6��\'�7�c���kk�\0����uR��T8<��Q� 9�C���f���X&�D���m��q��/j��aD���N/�\n�S��M6��-��Wy~|���sܾLRφ3B�|?X[�9��+h�ݽ��8�)W\"G��M�]W*^̆ď[0����zY`�Iԣyj]�o2���h���π�,f9��V�YX��OV\0���G���}���A�h��[K�`oqq~���h۲jG3`36E�6:��T�\ZsqD+�er�!��,�oƠ7^��j���0�h�l2�p�f$n6�b@��Φ�\"ğ���Fk~�����\n)�*�I�f��]:\n,0U��~uV\0�\06\Z���_*��D�HΎ�,�:�0��j��<�\\..hUX��H��뷢���Vӯ�����_�z�5]���Yb��4S��,j�-B�|��ڳ&\rb=ʨ�I?S�+;*����&�\0��B��)!� ��-{^�{T�s���2C#1>(Q9�-�\0.Ð��9���e��*��:_�r�,zM�������RG-�qZ�1�Ñ�E�c1ݍ��m�jod���L<�\"���}\n����\\NЖR^��`����i�`���B�˸Spߑ<������x�KI2ߘ�����������|Nl�wk�\0\0�:�$��\\#m�+~U_R7:�	qD�\0���:��QIaY��we�!���?;V�.Mw ����\'�$�fr�up�I�Pl��>C�	�`{����l<���j����+r@\'n��\n��&4�ߖ��һ�-4�5�cY(���S�^����U��\0�a���ƨ���sȱG4r�0A���{���I�U�!��K�ǌ�^��xTy���ysp�]}?&I0%�\\���[�\\�=��V3�G��z�ú�� W��K$_��[�����.,��tЇ�͸�eD+<Sq��\"���=ka�ț4�����\09�5�����\0����X6�i\Z#+��][�`v7����K��3w7�8�[�,2fʘd�J6����ҥ0���x�]O&SqQP(�8�&W���ʏ�ۓa=�/\r���Y�_Ep��E�}�M<y!{��,��^uⱨX��J�ně6bI��K��IEF���S�!�\n��o^C��C|�(��Er{�4W/�9Y�����$��Xѝݬ��䚬G1;t��b\\=®7M�v�T��*�K(�s��y�j���Gs|��y{EE��^8, ĩ;��o��zA#aa�\\s�5m�+{��m�����\\�1L42O)�F���?�Xnݚ%�Q�E`���h�X�2:�V�\"��z����B[H�\0n����\0J�@QE\0U\'�����d`<P�(���\0��]�/�#F���T�0E�D��+1�v�\Z����r�߭[R+���@�6?�M��s\\A+�o�\'h��|$�������cyԭ��\r$�0d�-m&��mp��҆�аK����?ߦ@9]�/�k�������8<>%�2�;\r�q�F��_/�F��G��&��auVR�����q����\'9m4r9a�J��#{_�/Z��+$�9R�]�lO��R���pH �]�PGQm���`�N&�Eeu�WHBI�[��lA��Z�^�0Z�s,z�:c�M[Tg�$p�mqk��luZ�ة�ǥ�\n�R6sɉ<}��k�n�LX���U*�w�!ۗR��R�.i1BW�Z-�$[��H�����B)��8��a��Y#�%�� ��ec~�)U7����< {��\0:��y�\'���˿�|L�B<��0A�<\n56�Qr.y*��})w���AB��&�[�{{S#b�<I�p�0e��o��.Q�ɩO��e�3��cDK�M��m���|���Oxr�Y�r|�9%˪�㲸*ѵ�\\;<���b^y��F�,I,����uL�8&�CȊI6$\\oԍ���*��9B�ѩP�k�=,�ީ=��4�8`1�i\'�,ͤ���[x�4ʉ�cũy�\r��<�G���zi��d�du�x�)����9E T�}Ti?;x����Y1��c�\"�=�_�J\\�%�\n�e]����o����Q��\'M����J��\Z츝I]y���<�n\":���=���;\\�N癯����QK1�\\�Ug˸dƢY������b��]��R��%KS�SK��/��`������j���;����ω�$P^f� �Kr��Zid}�ᵼS�f���t��b��R�m�?Z�{�w1��xt=������E�\Z.����jZ�4�sm��4��vg���$q�n��umb�Z��z���o�x�u�TLA\0�PM��p�؀o�_ǒ��r���v=BK�e^��V�m��e\n���g�w,C��o���.��9��dyL��S#�2[g=����$s��:�zy��[��$v\0u,I�̒M[ϫǶ�ӴyH`���|���&l������cV\"�v;.�u�ޛ�� �9�e�� nO�nw��2<F��Df94�\0�?\"66��&}5�N��ʦ��pC,�f����u90b��ɯ{��]��/�Fֳ�_	�N�	���%�-�i��^[�x�gR��7��)[4�5M$�[���]��̪/��@�޺Ӆ���!��P��jbnO��r@b7�>Dr���%�1¬��Y������؊��P&�QK;Q�$��5�H��b�>�꼸666=;{u��(\0\0\0`!_k����EPQ@QE\0��+�s �d��V�\n}�/!�0�yp���+�T9�A$?3m:_�M4��,ׄ�p7�A�	�դ�R	�*H�\0��Ջ:�0��l���m����dbpE��Y�qྫ�?Z��#\\F-L��w������X�ݼ/�k���j���l�]P��L�DbU:����O�����\0e�`�|$�Z���\0��m���DŔͅf��+o1�O�Ʊ�z!����\n�� ���Ha{^����kҢ�S�oW	\\r7v?d��M��a�A��ʹ�)ˣ�3\\0�NaoS��6Ԧ�r��z}�X�R�4ZK�6����%{؋�<�){l���i�$�P�v\Z��}����z߹L��Vm*�����Q�R��\Z����7;��ڕ��iYٝ�fbY�ܒM�\'̚�Y0b�cY9�)y�{�{/��w�3E3�h��r��)����,����b	�(\n����������q���uj�I-���w�y�U\rĜ7����N�	������TEA�%7�=_R�L��5�}+����e��z��+�x�s�ox���ū�}��N�~��o�2�\0;5��\\�Ez��*�؀>d�\Z�\Z,Qj]�8��T����M���\0\'\\�|��xp��X\\[r>��� ��VH�yˬ���s��V,h��% EA�E\0*�\'q��E�x���I�5&�]|7�Ń�0���~�G;_oM�H�\09~���䥈�\0��T*���\\��e��ӻnv:ut��I.,�3�$�<)F*�F��o��BU�J-pE����N����7�i/\"�&�<���ɿ@\rR��9̚�e�@��\'+ ����<������&\'5Y�8�2*9^��i/�*�����ҷ��sf�#8�+dG�+��6{d >f_+�j�짳5������#}\0�C����u�\r���P�f���6�%ۧ�jv�d�qڲ���H�b���s���A��ģ�����=���t���]���K5@9^���<�6�Vruz8jb�6�;���͙R�8S�A�&�����\r���Yx3�����h�~9�xE���7��۬a�he�&��}���7��Kf�Z;=���1\"M��̃���~%�ǘ��Uz�@vF�ƲF���2��wVjJv�O���.�f��E�֧�M�[��u�y���U�\0��(�(�\n(����<�bp�@�F��$l}�r^g�:����0�#��\\����x�/�?5��MFP�eV�;|e���	��A�;ӿ���,DY��J�e\"͹���?�K,�8�X�@a�G�V�#�9�mS��f�,tM��[���1e7�R\'q�7Ĭgq�\ra���)<Ev��{��EhA٦�r+��0��$�V����O�)���9\0܍<�Ϧ���+Ƃ]\nH$imM�Ē< �aa�U1㬎w׷�g6ImP}C܊UA\'k.��ؑ����G6e�4χ1:�ܰ�\0@6�^�\0�a�UƎ��������Ѹ��\n�@��R�d�Ў�u9.���,(��\0�ۑ\"��|Ⱦ�u��V�[]\Z��Vz����b#���|�S�.k���:��ădP��g`s��.�+��r-��v7��T�s�*[�4I���o�ԃX28������r~�v?=���o<;��I�8h.�I�@�:t[n@�yT/q�+�2�,��#2;��K~N.�yY��8\\6\"R�\"�Q�k+��6>�#Σ�(�NIr���4��O��-���X��<��G��M�S�5���#����=���iO\nʬ��)�.�܀6�:��\n�T\0�\0\0l\0\0�{�ڲ\"���`O4�V�\\�a�_B���y��\'k�<�Ŋ�@�G\"����ϐ+�\'a�|��	�=�EE��rN�Y��	��;*�a�L^)�2����-�_J�~��s�U�?��5EK�\n�28�ʄ��we�>�����*�vbT�\07\'ҭTV��$�igo�9w+��4��a\Z1��\"0=���Z��2��q2C�N�H�d\"�#�M��Vָ�u�/;R���Wz�KD2����ln7��i:+�6��ȱ0�i�p �\0��)\0�\0r�7���)-�6BaŌB������Q�CXx�?�a�\r�Fh������&�<�����y�x�+�0�)�1�����`ـ��ΰl\"��ˈ��Nm\'M�#��>����bp�u¬���[k?���c��E\0���9r��G�,W��@�\"�\0!�L� �<6\r��N%b�a}_����O/�K�ɗ�!K;�(T�\0�[�W&�`c8���句e����\"�l64� n�����Ɓ@U\0X�U�(��\0��(�(�\nRv0��?M�>%��a�Tۥ�h�qS\"��B�O ��Bl	R�v�hyl����Z�P��n\r��n֘�\0�a������\0J�7e������\0J����k(�Գ�u��p����ޣ�<;�U`�G[V�9�1\r\"c�(��F���~kaU_���?���\0ү��<��a��7�:�Po��W4�RW]��v��a�C�E���>̰�Hqp\'�D�{[翕�iV{$���\0���cn��,?���\0%m%n�ඪ5;T�F���N�����;���]��-ֲ��{A;B��l���Q{����\Z�J��d�Hf�`Y�\"�ȧ�:���[��E?x���&9���\0xϘ>^`�k��G�1�L>6]+\"��ٶ=����F�u���s�L&\\4�mk�L9�B4��Ϲ�x\'�1�r���^� ��ڪ������(�$6o]l~��W����P9;_�����EPQ@QE\0QEEPGq�\0D�[��?�j���&��,�D�E������9^�[�{W���5���>��\r��y%�X ��YA��\rX83��̱(�2�Fѯϑc�*`��b.H||�G�P���d#o�����0�p�,q��9��̟S��*����.��P�=\0�>�����(�\n(��(��\0��(�(�1�%�Ǡ&��9�02>�G��̚�qF#LZG6?����7qnW-��ۡy���\n���H��������*dP��V���=��x�1�i�x�`�0�\r�ui\0��;��\r�)]�7iI\n���7V�wX��y3�C�ogX�d�&V\Z4��ܼ[�d�1��a�������e����7\'rN����p����jAc#�U��#��L�Vv�c$\n?���O�����32�\\<b(#H�t��<�������\Z� ��\n��\r�[r	�BU��\0Oʣ�C!����\0J��2���:�˥��h����\0_��I⎳g|2�緄*F�%����_�	w��U�5Γ�َ݁���x�F(�-UR��;��0f��\Z��N��=h\r��P@,<�\"�PQ@QE\0QEEPV;K��bb��5*�m�����g���\0|����q��&��Ը�6\'{2FF�0j�ۧG�h�x���V`�\rgukr�^�ͺ�\\��E&?0�ĥY��m � ����u$��� �$�zՇ6ý�Oj�gS{�􄏱���Ga��ğA��dV<��e���xl]��DC6 ���]>��FQEEPQ@QE\0QEx�M*[���*�E6�H�_������y�ē�;��y��3�\r5ȸU\'��?�[��*��v���u?@��|3���^ʁ�K��so?�\nuR�	�c�ҸS�P16�^A���������{�c�Л���~k�7\"�5aU`,+�EPQ@Q;Yṱ���x�Ȓ|7���݈\n�坑N�;�OĨ���� u\'oAM�(\n[�NI<�N��vm\"�p|>/�U��(�(�\n(��(��\0��(�+C<ͣ�@��N��\\��\0̓@kq~F���f���?���}�\n��2���t�H\\z��)�\"�~t�������d-m����I6�~w�b�.|3)���wDj\"ײ�{n7���Ke8������\"����P��^�}�B�a��\0kA~�%M���U�\"\'��_�u�\"�c����ޠn�ĉ��ȏZj�(�\n(��(����'),(2,1,'image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0�\0\0\0װ��\0\0\0~PLTE���\0\0\0������������***������DDD������YYY��������Ղ��???666���������SSS|||������sssJJJ111fff���```\Z\Z\Z������eee$$$vvv��\0\0&IDATx��k�����L�L�RS�P�4�����<,�,��y���R/9,��I-�~:�M�;[���M�(�I)��& @�	�h4��\0M@�& @�	�h4��\0M@�& @���X���]r�3���V~����ɹ���o�Q����b_�Iy�$�T�HՏ.B���l9� ���,��c���]��2HP��v�q+:j�P�X��r9�e�<?����u\"��q�,���]8j�^`��1�xG�F}O^i(�d�C#)����t�����ti4 �}��X s.)7O�:k�No��8����f$ �f��BY��c���8@��W]*Eh����$F�y�M1ڍJd Πg����@��9�(ѐ��Z~�~PE(��>�$E��+e\"r�Kҁ��e�E֨��?T���׃�K�{m,sD2�EBLM-E\\��$��B̅��*�\\ >:\n���h���r����z\\KU�p���8#_�@r���oG�c�a�N���br�\\2�(ٙ���?:��a�yh+*c�$H�/�vRON��{S%D�U��$�}D\\�9]���z��(*kO$��/ 1j�כ:�|���!�+�@��Aݭ\rdÜ`�ڣ}aP�H�K(�@��P��ºJ���l��\\B���O�m��c�>���K~�+���rvρ(f}���:#\r����{�6\r44��ΰ@���fU\Z������@��a؊��Mi@�.ǡ��O#i܀Q�F��4 k�q�ncX������w�J��:T<�N����&���KO�Ǣ=}�+�½V�|\0@���OF��8���?�[0�U6M 7ة̻*�0��l��R����\r$;6�0ֻ���@�ɝ֬χO�, ��@f�:�ֺ�Cr�C���>�W�{ʚ��t�, ��mʘ��)���Mن�, ��ύlo�i��\r[�c@��^v_U�5����@��u7�h�.�Q����.�B�GD���a|�����F�ML��A�&G���=$���Q��b�G��,\\��20p��;i�����;�N�-��!te���>��Hv������\n>�?2wh�^I%����^������_�G\0H��ݰ���Qq��i±~,?FD\Z��iU�!�z��d�3ٚK�d�	\\�T���������Nfm#}�����̃�n����X�#&�,���D(�Pw��UR��?��ET����؂�V���9��y��NKH�D �/�#�CC��F��+�dTs���O��L�S �w/����Ip�n�FX[%��B�2hD�ي�$�fw�0�s5�d$3,�`�@:��Znsð�����\\#�˟���g*������</J�QӋ`\0��m�X�/5�{�r�ב%�!8K5F�;����j��=y�uG�F�@C�j��cr�W,��A��u����6W������=����J2���4�6��s��#��.ً�.������������0�*_��(4�2�\\ߞ��8;-�Y�G��c�\Z%}�n�vO�:���GU�ժPU��sԳ;�bw�+��{`�w�11D#l���� \"��I���( bm�[�>iC��\0+38��7lh�-wVh����wG-cQ�7��w�qy��mW����T�y�!nC�m�V�}8��Je��iM�\\�m�l���m߷\nc��BT�/t����n���@�l�C��J��do� D�m�����CǷ�#ǧ�Z�\Z�J���U�D���\0]����{��m��m��ed1�{fn�ց��p4ߋXVGt�\'c5/*q�\"��?���3�ܣέ���J��P?� w��k��F`������FrHY1����F���}^�]\n�s9��eH���O`��B�D�(v|�~S1@�`���u��^+�|��u�I���*[�& @�	�h46�~�{�	��뺷�cs:T�P��vr��VZgQx(���x�fj�Y˳���ܧ�m�۬L�fa�`\0�2M�1v�]�S�m�du~O��{��As,hޔx[��n�Gj��j\r�/�+ A��qa�\Zj\0�-�+R�`��?׼4V��Sɂ<%���n���A���M;u��D�J$\rG�` p,���v�x��d�`;��3��n0!5	����ii;���:��C�y#�@��w�rHȾc��8\'����Ďlaj��Y �d���\"t�i���m>�Յ3d������4ڪE�a�IMf��׌lEs��<:VŲ���\0Q�K.�ax���92�T����Bh[N�߬5����wΑ��_����)����s��(�dۧmsڈ`����o��*é\Z�� +r���,���|Տt�j{��sn���I��8���2UN��F�\0���7\rl�/5`���5;(�J��v�ۤ�4��T��6�^ݳ4��i�������:ǭCcY\Z$�\\��D���@P��V�\\y�\096IײH[Q7�#����<�\"\'�lj�F�g�\n�Ќ������t!6# �_�����wN����K5�7i���܅Lj&���pUu�@�j)2O�څP \ni\09���\rT�>Rۄ�-ަ=G��;p2aV�d����T(7L0w�Ӫ��Gr�u�n^\r�2q�jی���btՊ�49sBt;BE$bf����U��#�Vڸ�\"��U��!�s�>��I�,\0B�pw��W���?ѹ�\0����x���P���\Z������\\ ߜ�ĸ��\02n�F ,����O�l0�~��|���2k�\n�;�O��9p�&i����{�kgUf���@�@-�s���ʎz�R| ��b��V\0����p���*g�E�)�p���s��M$k�h3��rg��\r��yͣz�H�  �=��=���@,ܫ�ש�8eiC����}���$�@<�|Ў&��)Sg\\ ����}�}{\r����\nb&�N����*!n��U����Qep)��h�ѭ�2�ۍ��;�G�H�*�z�,��O�����e���!C�>)E\0�mF�[�\02���!��0��YL*�R%��ӝd�����~��B�Q}�5&�����w����/U^�̋B s?3?d��~~@xE���\'\0B���O*��5�1p+nrF��F/B���x�Z�?�7��[R�D��?rO�GHڿa���Ǟ:]�$�!LW�s�^9��tg���q�\r�Y���k@!�枙��¬�9/C�|@sW}b��\0�\0��G<�u��@�\r�a6ݥ��u��R��|�^�Gg,�D�` fs<C�\Z[�1�2�)����CJ6��\Zn�*�|��3w�뺘�tb�\0\'�AfX]3wٷ�Neҏ�h���*:����]{�Y J�\r;-����~TEhp�Z\0�r����ث�6�ję�>���m9lQf޶�� �B�̂�uZ_�\0���C\Za\"��8@�S}2jE��/��2���D�y�,@����W��ϋ�B&�C�w����h�6�D\0q\r��\r�O�DʊI��fo��W��w,�瀬��s5�B:�� \\�Sě��f!ј�/\\Le2��6�j �e�KU?߹^�ѷU#�?̙����q��S���a�Y e�5�\\�\"Wq��᭯o駰�n���e�2�\'��E�}��_�k\0)�U-.�꿹���˄\\�&�T���h4\0�љHf���@��r7��QT���Gm�7���@�e�� ������(��1�8��$L���\"*돓�_���S����뀴��>��I�_$o��3O\'Z�H�P��N�vh��r!����x{X6�w��s�Շv���w���5�]C \n�~�����ldRC�	��\0�{��X�F�\0\0\0\0IEND�B`�'),(3,1,'image/jpeg','����\0JFIF\0\0\0\0\0\0��\0�\0	\Z\Z \Z! ( \Z\' \"1!%)+...383-7(-.+\n\n\n\r-&&--+--3+-5--.2--55-.--5-/++//------.-7/---/-5--.5--��\0\0�;\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0	\0\0\0!1A\"Qa�2q�BR�#r�����Sb�$3C������Td���\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0��\01\0\0\0\0\0\0\0!1AQa\"q�����#��2Bb��\0\0\0?\0x׉eUf\n/k�m�!�{��m�q�\0�\r��U��k���@1(�eȸ���C���ѷQ��S\"�6�� (^%�C��Z�kQQ�7�qb�y�O@|C��=�I�Q@QE\0QEE��fQ�y�6U��Rk\rҶe+t��)9�v����tV�\0�������\Zc�\0�M���\0-Uz�.̴�Y�c�>*���	ITEW���;��lF�z�?A�/���\0tFM�_��w�ޒLĒI$��;���E�\"O�j�L�o��Z��-%��:\"�SN���F�{[8�*J�$Etnj����}EQ{ē���~з�J��\0R�^�nnI�l�Ð�tp�t�����7 �����A%�ȋX[��ҫ�O�c$Pa�;��\n\0+���]�/S�,����c��b��Qm/�a��\0�na�wus�dt���R����Q�8�b�G�oc�o����ޤrn>�b�0ʝ��^����A����H���k\n�ůvnwo��]�<iZ*{L��l�7��w2����#����������9�a�I5Kwe܀|;[�l�ږ\\�࡙�K����e�5W�bn>_:���	qR��X-�X\07I;w�O&��2�c�<��,���n���ߝkc��D�Pw��������/֩<	�1C��HUc���U��@��c�0�,j����Yѕ�D��*���ߕT���B�~k�gO�N��+�7h�ψ�R�E���+\r�àS����嘻���ȥ`C!���lA��S��4�~��?[W��-&�U�F^�����N�Cm!�4�7RA�lȻ6���y�4���q����%_�XbO�)o��\n��³C����ص1����[�����4�\0�\'��s�F?�p�(�Hˬ��X,l~.v#��#0Y��o�c��U�\'�YH��x���\n�ka���\0=O/:��˟�)|8����a̖Li\'ߚ�v)����US�%��;���P3Ey�:���������4��r̒tfs 0ۑ�}����c��`��O�����\Z��Zs�B��s�d��M�Z����)P�dsDI\r���m����o*�a��k�w�`k�ZK%�����͚��p�����HQZy�=��EX����[I@A��~[VL��Ƒ!b��Acs��<�iU�6*??ˆ\'\r4����FߝHQY59	�w�����a��Ԧ�o����X\'w��|@�\'�К�v��$9������W�����7֠�\n��\0W)_ ��؏�h��0�+dL� �aȃb>Dn*�v����!Iw>���O�8w\0.�k@	,<jRH����\"T�o�\0��fQqᘌ�%qvtfE��k.!_�dkO�Qp>`U���d�\"L�}A�@�L<��*��ͦ�N�,�=���I�����`��j+��w��d6\\Ti�_�?G\'�\r\'�)�ý�e��/}�H~��\r����@]诈��ADr5��)]��nZD�)�F��\'��ڦ�${FB3	��A-\n?�U�ɬ|�qO\'=��t�n\rI�L�f�Uv�̚�n�t2��\0�si��)в��|;�l��|�~���\0�\0�]�b��a�Ryn�D���{ܚS0����h&����M����:�Rg.�lV]�����Y�0\0�����t�V���\\$�Y�a��o�������?�Iu299բ�<!Ś���#��*����5�^2�5�( �T��Đy��s�H�u�������ln@r�k&�<F������e�����S�N.�L��(���y�Eu<J�\0@a���ly\Zƙ>6a�ǅ��ܩN�6��.}?�<��	p�LCB��d�a��v��7R~�i��j_���I�b�\06*nM�Y�����P����V��6��Dz[�rڀP��;�m���ÕG2�X%1ʅ$[˘�lG����8�������t��΍�\rJ,A������1��Pi\n�$��ON[��:��L��L��E&m}Z񊼀�l\n���ؖ6[�#{z���?����k�r\\h񸲢0ϣ��;�����k_ұ�ó,��P�E����uھ��2�HIS���7ڸNi6�D���E:�d�?�7��k/�\\)B#�U~����[�7�;О�O��_�������x �,@ű d]!�W�6�e�hd�)>(ث{*鬚Ib��W�wcJH#J����/�[T��/|���4͛$#����oa1�,�#3���.Oʣ3|�2(#���{7#�Cº|��Z�gN��}V��W�;0 a���gȳ|RH�u-)�Wtd`4X3oA}��������6�n���\\����z����a��) �����lEǑ�#޵D/�	ZB��=�����\0�U��j�>�ŭk�W��WVG��V�b>��krM���H���e!��A�?\"+�k�0Q�\Z��E�Tt��MlV���(���ݻ�~6)G��&�0Ԥ����UP�1���I�3u�����;|���U���m\Z���ƿ��޹�*�h=#�����j�V��w\\!���K�;��t*��*��k�\\FH���,���pC\0lw�*�cE�I����jf�\"�m�ұ���Wuu6�}���U�E�\nK��Q�%�#�����ϻ*ô>\nY�.���Z�U�l��d�)�2��/~V��g��1��נwVJ�؋��ɾ��6V�6L�<L��������q奅T|Ӳ��m����%i��)���\ZK��C��M��y��ּv��p`�)�U�K\nm�m��m*�M�FJ~C�X��\0F���ԟ����W@vM�M��\"�q��@�������#����0`��R���5o�o9�.i&�80�ͷO}j�\Z5\\0t�+;]�4S����}T�?&���Pm�N�[I�*v��6������\Z������ۑ2���L*�	a�8��8�ݜ��poz�i\\�����@�ia~^\0Y�y֤��|=�Ӧ.�@�\n�i���\n�;�à�Lba[&.�F��\"��gg�P|;./�UHF5����n��3�0G����GX����+5��*�7�޷8���b��D\r\"a� �/kY�f$\\���RyA�ag��x�y&K.9@���T\\-?x�&�d�LL�Ȏ�vN�%��H\0\0��k�S���qu�Y)�1xVILa�����C{�7\'P;֤�\"\r�2��)n��J�3\r�jUQ9�2Y��]��j�c�e[QUIke�\"��=�9`�U��_�\'+�1&�0Ҵg��ѿY��ӣ���fubJ�Ҡ�B/���{����qq֯����8e{x����(E�h�z���|N/�E-f�1��z�g����Zm?��-z�F�u$ګ�r~�ΒU�	�s�p�bLT�L�J��-���ʒ��j����5PM��&�\\�Ui���h��J�ʛ��+eؑm��K�0�Y���$�[�z��\n��d�d��TIǉ-���Jދ%�9]jQX\\^�\0N^���\Z���2�Lt�*WK7�s�j��L�m��t�p��-/l�ë��XÁ%m�Oٰ�v�C�0�q�������\'`	65q��c^�TFF��,\r���u������r�˹yxH��8UB���\n\0�\0��SI���s\n�������3�eԅOM�E>]-[�T�_�uaЄ*}�D`*�Ŝ%.1�\\_w.�7]�\rpm�ܯsV��������T��vs�\0a��؄}R����K���$�a��?�Y��Z�4�ޱ�\\-\'ڱxְ�:��Ao��ޫ����רg�~�l<��TSe��r<Fd���	\"��\'�\r;�[n�2r^��:�y\0�yQ\r���|���\ng�C��H`�e\0��h]��mD(�\0�[�:1|Gv���B��\'�k�ы�-kU�cJs��SY�$�|>݉����֑�3j��wq��2��f7��0���C�X�n]c�Ws�^��-�ckԭ[�#\n(���(�>Inˢ�6��\'�7�c���kk�\0����uR��T8<��Q� 9�C���f���X&�D���m��q��/j��aD���N/�\n�S��M6��-��Wy~|���sܾLRφ3B�|?X[�9��+h�ݽ��8�)W\"G��M�]W*^̆ď[0����zY`�Iԣyj]�o2���h���π�,f9��V�YX��OV\0���G���}���A�h��[K�`oqq~���h۲jG3`36E�6:��T�\ZsqD+�er�!��,�oƠ7^��j���0�h�l2�p�f$n6�b@��Φ�\"ğ���Fk~�����\n)�*�I�f��]:\n,0U��~uV\0�\06\Z���_*��D�HΎ�,�:�0��j��<�\\..hUX��H��뷢���Vӯ�����_�z�5]���Yb��4S��,j�-B�|��ڳ&\rb=ʨ�I?S�+;*����&�\0��B��)!� ��-{^�{T�s���2C#1>(Q9�-�\0.Ð��9���e��*��:_�r�,zM�������RG-�qZ�1�Ñ�E�c1ݍ��m�jod���L<�\"���}\n����\\NЖR^��`����i�`���B�˸Spߑ<������x�KI2ߘ�����������|Nl�wk�\0\0�:�$��\\#m�+~U_R7:�	qD�\0���:��QIaY��we�!���?;V�.Mw ����\'�$�fr�up�I�Pl��>C�	�`{����l<���j����+r@\'n��\n��&4�ߖ��һ�-4�5�cY(���S�^����U��\0�a���ƨ���sȱG4r�0A���{���I�U�!��K�ǌ�^��xTy���ysp�]}?&I0%�\\���[�\\�=��V3�G��z�ú�� W��K$_��[�����.,��tЇ�͸�eD+<Sq��\"���=ka�ț4�����\09�5�����\0����X6�i\Z#+��][�`v7����K��3w7�8�[�,2fʘd�J6����ҥ0���x�]O&SqQP(�8�&W���ʏ�ۓa=�/\r���Y�_Ep��E�}�M<y!{��,��^uⱨX��J�ně6bI��K��IEF���S�!�\n��o^C��C|�(��Er{�4W/�9Y�����$��Xѝݬ��䚬G1;t��b\\=®7M�v�T��*�K(�s��y�j���Gs|��y{EE��^8, ĩ;��o��zA#aa�\\s�5m�+{��m�����\\�1L42O)�F���?�Xnݚ%�Q�E`���h�X�2:�V�\"��z����B[H�\0n����\0J�@QE\0U\'�����d`<P�(���\0��]�/�#F���T�0E�D��+1�v�\Z����r�߭[R+���@�6?�M��s\\A+�o�\'h��|$�������cyԭ��\r$�0d�-m&��mp��҆�аK����?ߦ@9]�/�k�������8<>%�2�;\r�q�F��_/�F��G��&��auVR�����q����\'9m4r9a�J��#{_�/Z��+$�9R�]�lO��R���pH �]�PGQm���`�N&�Eeu�WHBI�[��lA��Z�^�0Z�s,z�:c�M[Tg�$p�mqk��luZ�ة�ǥ�\n�R6sɉ<}��k�n�LX���U*�w�!ۗR��R�.i1BW�Z-�$[��H�����B)��8��a��Y#�%�� ��ec~�)U7����< {��\0:��y�\'���˿�|L�B<��0A�<\n56�Qr.y*��})w���AB��&�[�{{S#b�<I�p�0e��o��.Q�ɩO��e�3��cDK�M��m���|���Oxr�Y�r|�9%˪�㲸*ѵ�\\;<���b^y��F�,I,����uL�8&�CȊI6$\\oԍ���*��9B�ѩP�k�=,�ީ=��4�8`1�i\'�,ͤ���[x�4ʉ�cũy�\r��<�G���zi��d�du�x�)����9E T�}Ti?;x����Y1��c�\"�=�_�J\\�%�\n�e]����o����Q��\'M����J��\Z츝I]y���<�n\":���=���;\\�N癯����QK1�\\�Ug˸dƢY������b��]��R��%KS�SK��/��`������j���;����ω�$P^f� �Kr��Zid}�ᵼS�f���t��b��R�m�?Z�{�w1��xt=������E�\Z.����jZ�4�sm��4��vg���$q�n��umb�Z��z���o�x�u�TLA\0�PM��p�؀o�_ǒ��r���v=BK�e^��V�m��e\n���g�w,C��o���.��9��dyL��S#�2[g=����$s��:�zy��[��$v\0u,I�̒M[ϫǶ�ӴyH`���|���&l������cV\"�v;.�u�ޛ�� �9�e�� nO�nw��2<F��Df94�\0�?\"66��&}5�N��ʦ��pC,�f����u90b��ɯ{��]��/�Fֳ�_	�N�	���%�-�i��^[�x�gR��7��)[4�5M$�[���]��̪/��@�޺Ӆ���!��P��jbnO��r@b7�>Dr���%�1¬��Y������؊��P&�QK;Q�$��5�H��b�>�꼸666=;{u��(\0\0\0`!_k����EPQ@QE\0��+�s �d��V�\n}�/!�0�yp���+�T9�A$?3m:_�M4��,ׄ�p7�A�	�դ�R	�*H�\0��Ջ:�0��l���m����dbpE��Y�qྫ�?Z��#\\F-L��w������X�ݼ/�k���j���l�]P��L�DbU:����O�����\0e�`�|$�Z���\0��m���DŔͅf��+o1�O�Ʊ�z!����\n�� ���Ha{^����kҢ�S�oW	\\r7v?d��M��a�A��ʹ�)ˣ�3\\0�NaoS��6Ԧ�r��z}�X�R�4ZK�6����%{؋�<�){l���i�$�P�v\Z��}����z߹L��Vm*�����Q�R��\Z����7;��ڕ��iYٝ�fbY�ܒM�\'̚�Y0b�cY9�)y�{�{/��w�3E3�h��r��)����,����b	�(\n����������q���uj�I-���w�y�U\rĜ7����N�	������TEA�%7�=_R�L��5�}+����e��z��+�x�s�ox���ū�}��N�~��o�2�\0;5��\\�Ez��*�؀>d�\Z�\Z,Qj]�8��T����M���\0\'\\�|��xp��X\\[r>��� ��VH�yˬ���s��V,h��% EA�E\0*�\'q��E�x���I�5&�]|7�Ń�0���~�G;_oM�H�\09~���䥈�\0��T*���\\��e��ӻnv:ut��I.,�3�$�<)F*�F��o��BU�J-pE����N����7�i/\"�&�<���ɿ@\rR��9̚�e�@��\'+ ����<������&\'5Y�8�2*9^��i/�*�����ҷ��sf�#8�+dG�+��6{d >f_+�j�짳5������#}\0�C����u�\r���P�f���6�%ۧ�jv�d�qڲ���H�b���s���A��ģ�����=���t���]���K5@9^���<�6�Vruz8jb�6�;���͙R�8S�A�&�����\r���Yx3�����h�~9�xE���7��۬a�he�&��}���7��Kf�Z;=���1\"M��̃���~%�ǘ��Uz�@vF�ƲF���2��wVjJv�O���.�f��E�֧�M�[��u�y���U�\0��(�(�\n(����<�bp�@�F��$l}�r^g�:����0�#��\\����x�/�?5��MFP�eV�;|e���	��A�;ӿ���,DY��J�e\"͹���?�K,�8�X�@a�G�V�#�9�mS��f�,tM��[���1e7�R\'q�7Ĭgq�\ra���)<Ev��{��EhA٦�r+��0��$�V����O�)���9\0܍<�Ϧ���+Ƃ]\nH$imM�Ē< �aa�U1㬎w׷�g6ImP}C܊UA\'k.��ؑ����G6e�4χ1:�ܰ�\0@6�^�\0�a�UƎ��������Ѹ��\n�@��R�d�Ў�u9.���,(��\0�ۑ\"��|Ⱦ�u��V�[]\Z��Vz����b#���|�S�.k���:��ădP��g`s��.�+��r-��v7��T�s�*[�4I���o�ԃX28������r~�v?=���o<;��I�8h.�I�@�:t[n@�yT/q�+�2�,��#2;��K~N.�yY��8\\6\"R�\"�Q�k+��6>�#Σ�(�NIr���4��O��-���X��<��G��M�S�5���#����=���iO\nʬ��)�.�܀6�:��\n�T\0�\0\0l\0\0�{�ڲ\"���`O4�V�\\�a�_B���y��\'k�<�Ŋ�@�G\"����ϐ+�\'a�|��	�=�EE��rN�Y��	��;*�a�L^)�2����-�_J�~��s�U�?��5EK�\n�28�ʄ��we�>�����*�vbT�\07\'ҭTV��$�igo�9w+��4��a\Z1��\"0=���Z��2��q2C�N�H�d\"�#�M��Vָ�u�/;R���Wz�KD2����ln7��i:+�6��ȱ0�i�p �\0��)\0�\0r�7���)-�6BaŌB������Q�CXx�?�a�\r�Fh������&�<�����y�x�+�0�)�1�����`ـ��ΰl\"��ˈ��Nm\'M�#��>����bp�u¬���[k?���c��E\0���9r��G�,W��@�\"�\0!�L� �<6\r��N%b�a}_����O/�K�ɗ�!K;�(T�\0�[�W&�`c8���句e����\"�l64� n�����Ɓ@U\0X�U�(��\0��(�(�\nRv0��?M�>%��a�Tۥ�h�qS\"��B�O ��Bl	R�v�hyl����Z�P��n\r��n֘�\0�a������\0J�7e������\0J����k(�Գ�u��p����ޣ�<;�U`�G[V�9�1\r\"c�(��F���~kaU_���?���\0ү��<��a��7�:�Po��W4�RW]��v��a�C�E���>̰�Hqp\'�D�{[翕�iV{$���\0���cn��,?���\0%m%n�ඪ5;T�F���N�����;���]��-ֲ��{A;B��l���Q{����\Z�J��d�Hf�`Y�\"�ȧ�:���[��E?x���&9���\0xϘ>^`�k��G�1�L>6]+\"��ٶ=����F�u���s�L&\\4�mk�L9�B4��Ϲ�x\'�1�r���^� ��ڪ������(�$6o]l~��W����P9;_�����EPQ@QE\0QEEPGq�\0D�[��?�j���&��,�D�E������9^�[�{W���5���>��\r��y%�X ��YA��\rX83��̱(�2�Fѯϑc�*`��b.H||�G�P���d#o�����0�p�,q��9��̟S��*����.��P�=\0�>�����(�\n(��(��\0��(�(�1�%�Ǡ&��9�02>�G��̚�qF#LZG6?����7qnW-��ۡy���\n���H��������*dP��V���=��x�1�i�x�`�0�\r�ui\0��;��\r�)]�7iI\n���7V�wX��y3�C�ogX�d�&V\Z4��ܼ[�d�1��a�������e����7\'rN����p����jAc#�U��#��L�Vv�c$\n?���O�����32�\\<b(#H�t��<�������\Z� ��\n��\r�[r	�BU��\0Oʣ�C!����\0J��2���:�˥��h����\0_��I⎳g|2�緄*F�%����_�	w��U�5Γ�َ݁���x�F(�-UR��;��0f��\Z��N��=h\r��P@,<�\"�PQ@QE\0QEEPV;K��bb��5*�m�����g���\0|����q��&��Ը�6\'{2FF�0j�ۧG�h�x���V`�\rgukr�^�ͺ�\\��E&?0�ĥY��m � ����u$��� �$�zՇ6ý�Oj�gS{�􄏱���Ga��ğA��dV<��e���xl]��DC6 ���]>��FQEEPQ@QE\0QEx�M*[���*�E6�H�_������y�ē�;��y��3�\r5ȸU\'��?�[��*��v���u?@��|3���^ʁ�K��so?�\nuR�	�c�ҸS�P16�^A���������{�c�Л���~k�7\"�5aU`,+�EPQ@Q;Yṱ���x�Ȓ|7���݈\n�坑N�;�OĨ���� u\'oAM�(\n[�NI<�N��vm\"�p|>/�U��(�(�\n(��(��\0��(�+C<ͣ�@��N��\\��\0̓@kq~F���f���?���}�\n��2���t�H\\z��)�\"�~t�������d-m����I6�~w�b�.|3)���wDj\"ײ�{n7���Ke8������\"����P��^�}�B�a��\0kA~�%M���U�\"\'��_�u�\"�c����ޠn�ĉ��ȏZj�(�\n(��(����'),(4,1,'image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0�\0\0\0װ��\0\0\0~PLTE���\0\0\0������������***������DDD������YYY��������Ղ��???666���������SSS|||������sssJJJ111fff���```\Z\Z\Z������eee$$$vvv��\0\0&IDATx��k�����L�L�RS�P�4�����<,�,��y���R/9,��I-�~:�M�;[���M�(�I)��& @�	�h4��\0M@�& @�	�h4��\0M@�& @���X���]r�3���V~����ɹ���o�Q����b_�Iy�$�T�HՏ.B���l9� ���,��c���]��2HP��v�q+:j�P�X��r9�e�<?����u\"��q�,���]8j�^`��1�xG�F}O^i(�d�C#)����t�����ti4 �}��X s.)7O�:k�No��8����f$ �f��BY��c���8@��W]*Eh����$F�y�M1ڍJd Πg����@��9�(ѐ��Z~�~PE(��>�$E��+e\"r�Kҁ��e�E֨��?T���׃�K�{m,sD2�EBLM-E\\��$��B̅��*�\\ >:\n���h���r����z\\KU�p���8#_�@r���oG�c�a�N���br�\\2�(ٙ���?:��a�yh+*c�$H�/�vRON��{S%D�U��$�}D\\�9]���z��(*kO$��/ 1j�כ:�|���!�+�@��Aݭ\rdÜ`�ڣ}aP�H�K(�@��P��ºJ���l��\\B���O�m��c�>���K~�+���rvρ(f}���:#\r����{�6\r44��ΰ@���fU\Z������@��a؊��Mi@�.ǡ��O#i܀Q�F��4 k�q�ncX������w�J��:T<�N����&���KO�Ǣ=}�+�½V�|\0@���OF��8���?�[0�U6M 7ة̻*�0��l��R����\r$;6�0ֻ���@�ɝ֬χO�, ��@f�:�ֺ�Cr�C���>�W�{ʚ��t�, ��mʘ��)���Mن�, ��ύlo�i��\r[�c@��^v_U�5����@��u7�h�.�Q����.�B�GD���a|�����F�ML��A�&G���=$���Q��b�G��,\\��20p��;i�����;�N�-��!te���>��Hv������\n>�?2wh�^I%����^������_�G\0H��ݰ���Qq��i±~,?FD\Z��iU�!�z��d�3ٚK�d�	\\�T���������Nfm#}�����̃�n����X�#&�,���D(�Pw��UR��?��ET����؂�V���9��y��NKH�D �/�#�CC��F��+�dTs���O��L�S �w/����Ip�n�FX[%��B�2hD�ي�$�fw�0�s5�d$3,�`�@:��Znsð�����\\#�˟���g*������</J�QӋ`\0��m�X�/5�{�r�ב%�!8K5F�;����j��=y�uG�F�@C�j��cr�W,��A��u����6W������=����J2���4�6��s��#��.ً�.������������0�*_��(4�2�\\ߞ��8;-�Y�G��c�\Z%}�n�vO�:���GU�ժPU��sԳ;�bw�+��{`�w�11D#l���� \"��I���( bm�[�>iC��\0+38��7lh�-wVh����wG-cQ�7��w�qy��mW����T�y�!nC�m�V�}8��Je��iM�\\�m�l���m߷\nc��BT�/t����n���@�l�C��J��do� D�m�����CǷ�#ǧ�Z�\Z�J���U�D���\0]����{��m��m��ed1�{fn�ց��p4ߋXVGt�\'c5/*q�\"��?���3�ܣέ���J��P?� w��k��F`������FrHY1����F���}^�]\n�s9��eH���O`��B�D�(v|�~S1@�`���u��^+�|��u�I���*[�& @�	�h46�~�{�	��뺷�cs:T�P��vr��VZgQx(���x�fj�Y˳���ܧ�m�۬L�fa�`\0�2M�1v�]�S�m�du~O��{��As,hޔx[��n�Gj��j\r�/�+ A��qa�\Zj\0�-�+R�`��?׼4V��Sɂ<%���n���A���M;u��D�J$\rG�` p,���v�x��d�`;��3��n0!5	����ii;���:��C�y#�@��w�rHȾc��8\'����Ďlaj��Y �d���\"t�i���m>�Յ3d������4ڪE�a�IMf��׌lEs��<:VŲ���\0Q�K.�ax���92�T����Bh[N�߬5����wΑ��_����)����s��(�dۧmsڈ`����o��*é\Z�� +r���,���|Տt�j{��sn���I��8���2UN��F�\0���7\rl�/5`���5;(�J��v�ۤ�4��T��6�^ݳ4��i�������:ǭCcY\Z$�\\��D���@P��V�\\y�\096IײH[Q7�#����<�\"\'�lj�F�g�\n�Ќ������t!6# �_�����wN����K5�7i���܅Lj&���pUu�@�j)2O�څP \ni\09���\rT�>Rۄ�-ަ=G��;p2aV�d����T(7L0w�Ӫ��Gr�u�n^\r�2q�jی���btՊ�49sBt;BE$bf����U��#�Vڸ�\"��U��!�s�>��I�,\0B�pw��W���?ѹ�\0����x���P���\Z������\\ ߜ�ĸ��\02n�F ,����O�l0�~��|���2k�\n�;�O��9p�&i����{�kgUf���@�@-�s���ʎz�R| ��b��V\0����p���*g�E�)�p���s��M$k�h3��rg��\r��yͣz�H�  �=��=���@,ܫ�ש�8eiC����}���$�@<�|Ў&��)Sg\\ ����}�}{\r����\nb&�N����*!n��U����Qep)��h�ѭ�2�ۍ��;�G�H�*�z�,��O�����e���!C�>)E\0�mF�[�\02���!��0��YL*�R%��ӝd�����~��B�Q}�5&�����w����/U^�̋B s?3?d��~~@xE���\'\0B���O*��5�1p+nrF��F/B���x�Z�?�7��[R�D��?rO�GHڿa���Ǟ:]�$�!LW�s�^9��tg���q�\r�Y���k@!�枙��¬�9/C�|@sW}b��\0�\0��G<�u��@�\r�a6ݥ��u��R��|�^�Gg,�D�` fs<C�\Z[�1�2�)����CJ6��\Zn�*�|��3w�뺘�tb�\0\'�AfX]3wٷ�Neҏ�h���*:����]{�Y J�\r;-����~TEhp�Z\0�r����ث�6�ję�>���m9lQf޶�� �B�̂�uZ_�\0���C\Za\"��8@�S}2jE��/��2���D�y�,@����W��ϋ�B&�C�w����h�6�D\0q\r��\r�O�DʊI��fo��W��w,�瀬��s5�B:�� \\�Sě��f!ј�/\\Le2��6�j �e�KU?߹^�ѷU#�?̙����q��S���a�Y e�5�\\�\"Wq��᭯o駰�n���e�2�\'��E�}��_�k\0)�U-.�꿹���˄\\�&�T���h4\0�љHf���@��r7��QT���Gm�7���@�e�� ������(��1�8��$L���\"*돓�_���S����뀴��>��I�_$o��3O\'Z�H�P��N�vh��r!����x{X6�w��s�Շv���w���5�]C \n�~�����ldRC�	��\0�{��X�F�\0\0\0\0IEND�B`�'),(5,2,'image/jpeg','����\0JFIF\0\0\0\0\0\0��\0�\0	\Z\Z \Z! ( \Z\' \"1!%)+...383-7(-.+\n\n\n\r-&&--+--3+-5--.2--55-.--5-/++//------.-7/---/-5--.5--��\0\0�;\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0	\0\0\0!1A\"Qa�2q�BR�#r�����Sb�$3C������Td���\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0��\01\0\0\0\0\0\0\0!1AQa\"q�����#��2Bb��\0\0\0?\0x׉eUf\n/k�m�!�{��m�q�\0�\r��U��k���@1(�eȸ���C���ѷQ��S\"�6�� (^%�C��Z�kQQ�7�qb�y�O@|C��=�I�Q@QE\0QEE��fQ�y�6U��Rk\rҶe+t��)9�v����tV�\0�������\Zc�\0�M���\0-Uz�.̴�Y�c�>*���	ITEW���;��lF�z�?A�/���\0tFM�_��w�ޒLĒI$��;���E�\"O�j�L�o��Z��-%��:\"�SN���F�{[8�*J�$Etnj����}EQ{ē���~з�J��\0R�^�nnI�l�Ð�tp�t�����7 �����A%�ȋX[��ҫ�O�c$Pa�;��\n\0+���]�/S�,����c��b��Qm/�a��\0�na�wus�dt���R����Q�8�b�G�oc�o����ޤrn>�b�0ʝ��^����A����H���k\n�ůvnwo��]�<iZ*{L��l�7��w2����#����������9�a�I5Kwe܀|;[�l�ږ\\�࡙�K����e�5W�bn>_:���	qR��X-�X\07I;w�O&��2�c�<��,���n���ߝkc��D�Pw��������/֩<	�1C��HUc���U��@��c�0�,j����Yѕ�D��*���ߕT���B�~k�gO�N��+�7h�ψ�R�E���+\r�àS����嘻���ȥ`C!���lA��S��4�~��?[W��-&�U�F^�����N�Cm!�4�7RA�lȻ6���y�4���q����%_�XbO�)o��\n��³C����ص1����[�����4�\0�\'��s�F?�p�(�Hˬ��X,l~.v#��#0Y��o�c��U�\'�YH��x���\n�ka���\0=O/:��˟�)|8����a̖Li\'ߚ�v)����US�%��;���P3Ey�:���������4��r̒tfs 0ۑ�}����c��`��O�����\Z��Zs�B��s�d��M�Z����)P�dsDI\r���m����o*�a��k�w�`k�ZK%�����͚��p�����HQZy�=��EX����[I@A��~[VL��Ƒ!b��Acs��<�iU�6*??ˆ\'\r4����FߝHQY59	�w�����a��Ԧ�o����X\'w��|@�\'�К�v��$9������W�����7֠�\n��\0W)_ ��؏�h��0�+dL� �aȃb>Dn*�v����!Iw>���O�8w\0.�k@	,<jRH����\"T�o�\0��fQqᘌ�%qvtfE��k.!_�dkO�Qp>`U���d�\"L�}A�@�L<��*��ͦ�N�,�=���I�����`��j+��w��d6\\Ti�_�?G\'�\r\'�)�ý�e��/}�H~��\r����@]诈��ADr5��)]��nZD�)�F��\'��ڦ�${FB3	��A-\n?�U�ɬ|�qO\'=��t�n\rI�L�f�Uv�̚�n�t2��\0�si��)в��|;�l��|�~���\0�\0�]�b��a�Ryn�D���{ܚS0����h&����M����:�Rg.�lV]�����Y�0\0�����t�V���\\$�Y�a��o�������?�Iu299բ�<!Ś���#��*����5�^2�5�( �T��Đy��s�H�u�������ln@r�k&�<F������e�����S�N.�L��(���y�Eu<J�\0@a���ly\Zƙ>6a�ǅ��ܩN�6��.}?�<��	p�LCB��d�a��v��7R~�i��j_���I�b�\06*nM�Y�����P����V��6��Dz[�rڀP��;�m���ÕG2�X%1ʅ$[˘�lG����8�������t��΍�\rJ,A������1��Pi\n�$��ON[��:��L��L��E&m}Z񊼀�l\n���ؖ6[�#{z���?����k�r\\h񸲢0ϣ��;�����k_ұ�ó,��P�E����uھ��2�HIS���7ڸNi6�D���E:�d�?�7��k/�\\)B#�U~����[�7�;О�O��_�������x �,@ű d]!�W�6�e�hd�)>(ث{*鬚Ib��W�wcJH#J����/�[T��/|���4͛$#����oa1�,�#3���.Oʣ3|�2(#���{7#�Cº|��Z�gN��}V��W�;0 a���gȳ|RH�u-)�Wtd`4X3oA}��������6�n���\\����z����a��) �����lEǑ�#޵D/�	ZB��=�����\0�U��j�>�ŭk�W��WVG��V�b>��krM���H���e!��A�?\"+�k�0Q�\Z��E�Tt��MlV���(���ݻ�~6)G��&�0Ԥ����UP�1���I�3u�����;|���U���m\Z���ƿ��޹�*�h=#�����j�V��w\\!���K�;��t*��*��k�\\FH���,���pC\0lw�*�cE�I����jf�\"�m�ұ���Wuu6�}���U�E�\nK��Q�%�#�����ϻ*ô>\nY�.���Z�U�l��d�)�2��/~V��g��1��נwVJ�؋��ɾ��6V�6L�<L��������q奅T|Ӳ��m����%i��)���\ZK��C��M��y��ּv��p`�)�U�K\nm�m��m*�M�FJ~C�X��\0F���ԟ����W@vM�M��\"�q��@�������#����0`��R���5o�o9�.i&�80�ͷO}j�\Z5\\0t�+;]�4S����}T�?&���Pm�N�[I�*v��6������\Z������ۑ2���L*�	a�8��8�ݜ��poz�i\\�����@�ia~^\0Y�y֤��|=�Ӧ.�@�\n�i���\n�;�à�Lba[&.�F��\"��gg�P|;./�UHF5����n��3�0G����GX����+5��*�7�޷8���b��D\r\"a� �/kY�f$\\���RyA�ag��x�y&K.9@���T\\-?x�&�d�LL�Ȏ�vN�%��H\0\0��k�S���qu�Y)�1xVILa�����C{�7\'P;֤�\"\r�2��)n��J�3\r�jUQ9�2Y��]��j�c�e[QUIke�\"��=�9`�U��_�\'+�1&�0Ҵg��ѿY��ӣ���fubJ�Ҡ�B/���{����qq֯����8e{x����(E�h�z���|N/�E-f�1��z�g����Zm?��-z�F�u$ګ�r~�ΒU�	�s�p�bLT�L�J��-���ʒ��j����5PM��&�\\�Ui���h��J�ʛ��+eؑm��K�0�Y���$�[�z��\n��d�d��TIǉ-���Jދ%�9]jQX\\^�\0N^���\Z���2�Lt�*WK7�s�j��L�m��t�p��-/l�ë��XÁ%m�Oٰ�v�C�0�q�������\'`	65q��c^�TFF��,\r���u������r�˹yxH��8UB���\n\0�\0��SI���s\n�������3�eԅOM�E>]-[�T�_�uaЄ*}�D`*�Ŝ%.1�\\_w.�7]�\rpm�ܯsV��������T��vs�\0a��؄}R����K���$�a��?�Y��Z�4�ޱ�\\-\'ڱxְ�:��Ao��ޫ����רg�~�l<��TSe��r<Fd���	\"��\'�\r;�[n�2r^��:�y\0�yQ\r���|���\ng�C��H`�e\0��h]��mD(�\0�[�:1|Gv���B��\'�k�ы�-kU�cJs��SY�$�|>݉����֑�3j��wq��2��f7��0���C�X�n]c�Ws�^��-�ckԭ[�#\n(���(�>Inˢ�6��\'�7�c���kk�\0����uR��T8<��Q� 9�C���f���X&�D���m��q��/j��aD���N/�\n�S��M6��-��Wy~|���sܾLRφ3B�|?X[�9��+h�ݽ��8�)W\"G��M�]W*^̆ď[0����zY`�Iԣyj]�o2���h���π�,f9��V�YX��OV\0���G���}���A�h��[K�`oqq~���h۲jG3`36E�6:��T�\ZsqD+�er�!��,�oƠ7^��j���0�h�l2�p�f$n6�b@��Φ�\"ğ���Fk~�����\n)�*�I�f��]:\n,0U��~uV\0�\06\Z���_*��D�HΎ�,�:�0��j��<�\\..hUX��H��뷢���Vӯ�����_�z�5]���Yb��4S��,j�-B�|��ڳ&\rb=ʨ�I?S�+;*����&�\0��B��)!� ��-{^�{T�s���2C#1>(Q9�-�\0.Ð��9���e��*��:_�r�,zM�������RG-�qZ�1�Ñ�E�c1ݍ��m�jod���L<�\"���}\n����\\NЖR^��`����i�`���B�˸Spߑ<������x�KI2ߘ�����������|Nl�wk�\0\0�:�$��\\#m�+~U_R7:�	qD�\0���:��QIaY��we�!���?;V�.Mw ����\'�$�fr�up�I�Pl��>C�	�`{����l<���j����+r@\'n��\n��&4�ߖ��һ�-4�5�cY(���S�^����U��\0�a���ƨ���sȱG4r�0A���{���I�U�!��K�ǌ�^��xTy���ysp�]}?&I0%�\\���[�\\�=��V3�G��z�ú�� W��K$_��[�����.,��tЇ�͸�eD+<Sq��\"���=ka�ț4�����\09�5�����\0����X6�i\Z#+��][�`v7����K��3w7�8�[�,2fʘd�J6����ҥ0���x�]O&SqQP(�8�&W���ʏ�ۓa=�/\r���Y�_Ep��E�}�M<y!{��,��^uⱨX��J�ně6bI��K��IEF���S�!�\n��o^C��C|�(��Er{�4W/�9Y�����$��Xѝݬ��䚬G1;t��b\\=®7M�v�T��*�K(�s��y�j���Gs|��y{EE��^8, ĩ;��o��zA#aa�\\s�5m�+{��m�����\\�1L42O)�F���?�Xnݚ%�Q�E`���h�X�2:�V�\"��z����B[H�\0n����\0J�@QE\0U\'�����d`<P�(���\0��]�/�#F���T�0E�D��+1�v�\Z����r�߭[R+���@�6?�M��s\\A+�o�\'h��|$�������cyԭ��\r$�0d�-m&��mp��҆�аK����?ߦ@9]�/�k�������8<>%�2�;\r�q�F��_/�F��G��&��auVR�����q����\'9m4r9a�J��#{_�/Z��+$�9R�]�lO��R���pH �]�PGQm���`�N&�Eeu�WHBI�[��lA��Z�^�0Z�s,z�:c�M[Tg�$p�mqk��luZ�ة�ǥ�\n�R6sɉ<}��k�n�LX���U*�w�!ۗR��R�.i1BW�Z-�$[��H�����B)��8��a��Y#�%�� ��ec~�)U7����< {��\0:��y�\'���˿�|L�B<��0A�<\n56�Qr.y*��})w���AB��&�[�{{S#b�<I�p�0e��o��.Q�ɩO��e�3��cDK�M��m���|���Oxr�Y�r|�9%˪�㲸*ѵ�\\;<���b^y��F�,I,����uL�8&�CȊI6$\\oԍ���*��9B�ѩP�k�=,�ީ=��4�8`1�i\'�,ͤ���[x�4ʉ�cũy�\r��<�G���zi��d�du�x�)����9E T�}Ti?;x����Y1��c�\"�=�_�J\\�%�\n�e]����o����Q��\'M����J��\Z츝I]y���<�n\":���=���;\\�N癯����QK1�\\�Ug˸dƢY������b��]��R��%KS�SK��/��`������j���;����ω�$P^f� �Kr��Zid}�ᵼS�f���t��b��R�m�?Z�{�w1��xt=������E�\Z.����jZ�4�sm��4��vg���$q�n��umb�Z��z���o�x�u�TLA\0�PM��p�؀o�_ǒ��r���v=BK�e^��V�m��e\n���g�w,C��o���.��9��dyL��S#�2[g=����$s��:�zy��[��$v\0u,I�̒M[ϫǶ�ӴyH`���|���&l������cV\"�v;.�u�ޛ�� �9�e�� nO�nw��2<F��Df94�\0�?\"66��&}5�N��ʦ��pC,�f����u90b��ɯ{��]��/�Fֳ�_	�N�	���%�-�i��^[�x�gR��7��)[4�5M$�[���]��̪/��@�޺Ӆ���!��P��jbnO��r@b7�>Dr���%�1¬��Y������؊��P&�QK;Q�$��5�H��b�>�꼸666=;{u��(\0\0\0`!_k����EPQ@QE\0��+�s �d��V�\n}�/!�0�yp���+�T9�A$?3m:_�M4��,ׄ�p7�A�	�դ�R	�*H�\0��Ջ:�0��l���m����dbpE��Y�qྫ�?Z��#\\F-L��w������X�ݼ/�k���j���l�]P��L�DbU:����O�����\0e�`�|$�Z���\0��m���DŔͅf��+o1�O�Ʊ�z!����\n�� ���Ha{^����kҢ�S�oW	\\r7v?d��M��a�A��ʹ�)ˣ�3\\0�NaoS��6Ԧ�r��z}�X�R�4ZK�6����%{؋�<�){l���i�$�P�v\Z��}����z߹L��Vm*�����Q�R��\Z����7;��ڕ��iYٝ�fbY�ܒM�\'̚�Y0b�cY9�)y�{�{/��w�3E3�h��r��)����,����b	�(\n����������q���uj�I-���w�y�U\rĜ7����N�	������TEA�%7�=_R�L��5�}+����e��z��+�x�s�ox���ū�}��N�~��o�2�\0;5��\\�Ez��*�؀>d�\Z�\Z,Qj]�8��T����M���\0\'\\�|��xp��X\\[r>��� ��VH�yˬ���s��V,h��% EA�E\0*�\'q��E�x���I�5&�]|7�Ń�0���~�G;_oM�H�\09~���䥈�\0��T*���\\��e��ӻnv:ut��I.,�3�$�<)F*�F��o��BU�J-pE����N����7�i/\"�&�<���ɿ@\rR��9̚�e�@��\'+ ����<������&\'5Y�8�2*9^��i/�*�����ҷ��sf�#8�+dG�+��6{d >f_+�j�짳5������#}\0�C����u�\r���P�f���6�%ۧ�jv�d�qڲ���H�b���s���A��ģ�����=���t���]���K5@9^���<�6�Vruz8jb�6�;���͙R�8S�A�&�����\r���Yx3�����h�~9�xE���7��۬a�he�&��}���7��Kf�Z;=���1\"M��̃���~%�ǘ��Uz�@vF�ƲF���2��wVjJv�O���.�f��E�֧�M�[��u�y���U�\0��(�(�\n(����<�bp�@�F��$l}�r^g�:����0�#��\\����x�/�?5��MFP�eV�;|e���	��A�;ӿ���,DY��J�e\"͹���?�K,�8�X�@a�G�V�#�9�mS��f�,tM��[���1e7�R\'q�7Ĭgq�\ra���)<Ev��{��EhA٦�r+��0��$�V����O�)���9\0܍<�Ϧ���+Ƃ]\nH$imM�Ē< �aa�U1㬎w׷�g6ImP}C܊UA\'k.��ؑ����G6e�4χ1:�ܰ�\0@6�^�\0�a�UƎ��������Ѹ��\n�@��R�d�Ў�u9.���,(��\0�ۑ\"��|Ⱦ�u��V�[]\Z��Vz����b#���|�S�.k���:��ădP��g`s��.�+��r-��v7��T�s�*[�4I���o�ԃX28������r~�v?=���o<;��I�8h.�I�@�:t[n@�yT/q�+�2�,��#2;��K~N.�yY��8\\6\"R�\"�Q�k+��6>�#Σ�(�NIr���4��O��-���X��<��G��M�S�5���#����=���iO\nʬ��)�.�܀6�:��\n�T\0�\0\0l\0\0�{�ڲ\"���`O4�V�\\�a�_B���y��\'k�<�Ŋ�@�G\"����ϐ+�\'a�|��	�=�EE��rN�Y��	��;*�a�L^)�2����-�_J�~��s�U�?��5EK�\n�28�ʄ��we�>�����*�vbT�\07\'ҭTV��$�igo�9w+��4��a\Z1��\"0=���Z��2��q2C�N�H�d\"�#�M��Vָ�u�/;R���Wz�KD2����ln7��i:+�6��ȱ0�i�p �\0��)\0�\0r�7���)-�6BaŌB������Q�CXx�?�a�\r�Fh������&�<�����y�x�+�0�)�1�����`ـ��ΰl\"��ˈ��Nm\'M�#��>����bp�u¬���[k?���c��E\0���9r��G�,W��@�\"�\0!�L� �<6\r��N%b�a}_����O/�K�ɗ�!K;�(T�\0�[�W&�`c8���句e����\"�l64� n�����Ɓ@U\0X�U�(��\0��(�(�\nRv0��?M�>%��a�Tۥ�h�qS\"��B�O ��Bl	R�v�hyl����Z�P��n\r��n֘�\0�a������\0J�7e������\0J����k(�Գ�u��p����ޣ�<;�U`�G[V�9�1\r\"c�(��F���~kaU_���?���\0ү��<��a��7�:�Po��W4�RW]��v��a�C�E���>̰�Hqp\'�D�{[翕�iV{$���\0���cn��,?���\0%m%n�ඪ5;T�F���N�����;���]��-ֲ��{A;B��l���Q{����\Z�J��d�Hf�`Y�\"�ȧ�:���[��E?x���&9���\0xϘ>^`�k��G�1�L>6]+\"��ٶ=����F�u���s�L&\\4�mk�L9�B4��Ϲ�x\'�1�r���^� ��ڪ������(�$6o]l~��W����P9;_�����EPQ@QE\0QEEPGq�\0D�[��?�j���&��,�D�E������9^�[�{W���5���>��\r��y%�X ��YA��\rX83��̱(�2�Fѯϑc�*`��b.H||�G�P���d#o�����0�p�,q��9��̟S��*����.��P�=\0�>�����(�\n(��(��\0��(�(�1�%�Ǡ&��9�02>�G��̚�qF#LZG6?����7qnW-��ۡy���\n���H��������*dP��V���=��x�1�i�x�`�0�\r�ui\0��;��\r�)]�7iI\n���7V�wX��y3�C�ogX�d�&V\Z4��ܼ[�d�1��a�������e����7\'rN����p����jAc#�U��#��L�Vv�c$\n?���O�����32�\\<b(#H�t��<�������\Z� ��\n��\r�[r	�BU��\0Oʣ�C!����\0J��2���:�˥��h����\0_��I⎳g|2�緄*F�%����_�	w��U�5Γ�َ݁���x�F(�-UR��;��0f��\Z��N��=h\r��P@,<�\"�PQ@QE\0QEEPV;K��bb��5*�m�����g���\0|����q��&��Ը�6\'{2FF�0j�ۧG�h�x���V`�\rgukr�^�ͺ�\\��E&?0�ĥY��m � ����u$��� �$�zՇ6ý�Oj�gS{�􄏱���Ga��ğA��dV<��e���xl]��DC6 ���]>��FQEEPQ@QE\0QEx�M*[���*�E6�H�_������y�ē�;��y��3�\r5ȸU\'��?�[��*��v���u?@��|3���^ʁ�K��so?�\nuR�	�c�ҸS�P16�^A���������{�c�Л���~k�7\"�5aU`,+�EPQ@Q;Yṱ���x�Ȓ|7���݈\n�坑N�;�OĨ���� u\'oAM�(\n[�NI<�N��vm\"�p|>/�U��(�(�\n(��(��\0��(�+C<ͣ�@��N��\\��\0̓@kq~F���f���?���}�\n��2���t�H\\z��)�\"�~t�������d-m����I6�~w�b�.|3)���wDj\"ײ�{n7���Ke8������\"����P��^�}�B�a��\0kA~�%M���U�\"\'��_�u�\"�c����ޠn�ĉ��ȏZj�(�\n(��(����'),(6,3,'',''),(7,4,'',''),(8,5,'',''),(9,6,'',''),(10,7,'',''),(11,8,'',''),(12,8,'','');
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

-- Dump completed on 2020-12-13  0:49:04
