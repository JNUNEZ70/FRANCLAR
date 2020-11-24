-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sistema_franclar
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

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
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bitacora_evento`
--

LOCK TABLES `tbl_bitacora_evento` WRITE;
/*!40000 ALTER TABLE `tbl_bitacora_evento` DISABLE KEYS */;
INSERT INTO `tbl_bitacora_evento` VALUES (1,'2020-10-21 06:00:00',1,3,'Update','SE ACTUALIZÓ UN PARAMETRO'),(2,'2020-10-21 06:00:00',1,3,'Update','SE ACTUALIZÓ UN PARÁMETRO'),(4,'2020-10-21 06:00:00',1,10,'Insert','SE INGRESÓ UN NUEVO CARGO'),(5,'2020-10-21 06:00:00',1,10,'Insert','SE INGRESÓ UN NUEVO CARGO'),(6,'2020-10-21 06:00:00',1,10,'Delete','SE ELIMINÓ UN CARGO'),(7,'2020-10-21 06:00:00',1,9,'Insert','SE INGRESÓ UNA NUEVA ESPECIALIDAD'),(8,'2020-10-21 06:00:00',1,9,'Update','SE ACTUALIZÓ UNA ESPECIALIDAD'),(9,'2020-10-21 06:00:00',1,9,'Delete','SE ELIMINÓ UNA ESPECIALIDAD'),(10,'2020-10-21 06:00:00',1,1,'Insert','SE INGRESÓ UN NUEVO EMPLEADO'),(11,'2020-10-21 06:00:00',1,1,'Update','SE ACTUALIZÓ UN EMPLEADO'),(12,'2020-10-21 06:00:00',1,1,'Delete','SE ELIMINÓ UN EMPLEADO'),(13,'2020-10-21 06:00:00',1,1,'Insert','SE INGRESÓ UN NUEVO EMPLEADO'),(14,'2020-10-21 06:00:00',1,1,'Update','SE ACTUALIZÓ UN EMPLEADO'),(15,'2020-10-21 06:00:00',1,1,'Update','SE ACTUALIZÓ UN EMPLEADO'),(16,'2020-10-21 06:00:00',1,1,'Update','SE ACTUALIZÓ UN EMPLEADO'),(17,'2020-10-21 06:00:00',1,1,'Update','SE ACTUALIZÓ UN EMPLEADO'),(18,'2020-10-21 06:00:00',1,1,'Update','SE ACTUALIZÓ UN EMPLEADO'),(19,'2020-10-21 06:00:00',1,1,'Delete','SE ELIMINÓ UN EMPLEADO'),(20,'2020-10-21 06:00:00',1,1,'Delete','SE ELIMINÓ UN EMPLEADO'),(22,'2020-10-21 06:00:00',1,2,'Update','SE BLOQUEÓ UN USUARIO'),(23,'2020-10-21 06:00:00',1,2,'Update','SE BLOQUEÓ UN USUARIO'),(24,'2020-10-21 06:00:00',1,2,'Update','SE ACTIVÓ UN USUARIO'),(25,'2020-10-21 06:00:00',1,10,'Insert','SE INGRESÓ UN NUEVO CARGO'),(26,'2020-10-21 06:00:00',1,10,'Update','SE ACTUALIZÓ EL CARGO'),(27,'2020-10-21 06:00:00',1,10,'Delete','SE ELIMINÓ UN CARGO'),(28,'2020-10-21 06:00:00',1,9,'Insert','SE INGRESÓ UNA NUEVA ESPECIALIDAD'),(29,'2020-10-21 06:00:00',1,9,'Update','SE ACTUALIZÓ UNA ESPECIALIDAD'),(30,'2020-10-21 06:00:00',1,9,'Delete','SE ELIMINÓ UNA ESPECIALIDAD'),(31,'2020-10-21 06:00:00',1,14,'Insert','SE INGRESÓ UN NUEVO SERVICIO'),(32,'2020-10-21 06:00:00',1,14,'Update','SE ACTUALIZÓ EL SERVICIO'),(33,'2020-10-21 06:00:00',1,14,'Insert','SE INGRESÓ UN NUEVO SERVICIO'),(34,'2020-10-21 06:00:00',1,14,'Update','SE ACTUALIZÓ EL SERVICIO'),(35,'2020-10-21 06:00:00',1,14,'Delete','SE ELIMINÓ UN SERVICIO'),(36,'2020-10-21 06:00:00',1,12,'Insert','SE INGRESÓ UN NUEVO ESTADO CIVIL'),(37,'2020-10-21 06:00:00',1,12,'Update','SE ACTUALIZÓ EL ESTADO CIVIL'),(38,'2020-10-21 06:00:00',1,12,'Delete','SE ELIMINÓ ESTADO CIVIL'),(39,'2020-10-21 06:00:00',1,16,'Insert','SE INGRESÓ UN NUEVO SEXO'),(40,'2020-10-21 06:00:00',1,16,'Update','SE ACTUALIZÓ SEXO'),(41,'2020-10-21 06:00:00',1,16,'Delete','SE ELIMINÓ UN SEXO'),(42,'2020-10-21 06:00:00',1,13,'Insert','SE INGRESÓ UNA RELIGION'),(43,'2020-10-21 06:00:00',1,13,'Insert','SE INGRESÓ UNA RELIGION'),(44,'2020-10-21 06:00:00',1,13,'Update','SE ACTUALIZÓ UNA RELIGION'),(45,'2020-10-21 06:00:00',1,13,'Update','SE ACTUALIZÓ UNA RELIGION'),(46,'2020-10-21 06:00:00',1,13,'Delete','SE ELIMINÓ UNA RELIGIÓN'),(47,'2020-10-21 06:00:00',1,13,'Delete','SE ELIMINÓ UNA RELIGIÓN'),(48,'2020-10-21 06:00:00',1,13,'Insert','SE INGRESÓ UNA RELIGION'),(49,'2020-10-21 06:00:00',1,13,'Update','SE ACTUALIZÓ UNA RELIGION'),(50,'2020-10-21 06:00:00',1,13,'Delete','SE ELIMINÓ UNA RELIGIÓN'),(51,'2020-10-21 06:00:00',1,15,'Insert','SE INGRESÓ UN NUEVO TIPO DE SANGRE'),(52,'2020-10-21 06:00:00',1,10,'Insert','SE INGRESÓ UN NUEVO CARGO'),(53,'2020-10-21 06:00:00',1,10,'Delete','SE ELIMINÓ UN CARGO'),(54,'2020-10-21 06:00:00',1,15,'Update','SE ACTUALIZÓ UN TIPO DE SANGRE'),(55,'2020-10-21 06:00:00',1,15,'Delete','SE ELIMINÓ UN TIPO DE SANGRE'),(56,'2020-10-21 06:00:00',1,11,'Insert','SE INGRESÓ UN NUEVO DIAGNOSTICO'),(57,'2020-10-21 06:00:00',1,11,'Update','SE ACTUALIZÓ UN DIAGNOSTICO'),(58,'2020-10-21 06:00:00',1,11,'Delete','SE ELIMINÓ UN DIAGNÓSTICO'),(59,'2020-10-21 06:00:00',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(60,'2020-10-21 06:00:00',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(61,'2020-10-21 06:00:00',1,2,'Update','SE ACTIVÓ UN USUARIO'),(62,'2020-10-21 06:00:00',1,2,'Update','SE ACTIVÓ UN USUARIO'),(63,'2020-10-21 06:00:00',1,2,'Update','SE BLOQUEÓ UN USUARIO'),(64,'2020-10-21 06:00:00',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(65,'2020-10-21 06:00:00',1,2,'Update','SE ACTIVÓ UN USUARIO'),(66,'2020-10-21 06:00:00',1,2,'Update','SE ACTIVÓ UN USUARIO'),(67,'2020-10-21 06:00:00',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(68,'2020-10-21 06:00:00',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(69,'2020-10-21 06:00:00',1,1,'Insert','SE INGRESÓ UN NUEVO EMPLEADO'),(70,'2020-10-21 06:00:00',1,2,'Insert','SE INGRESÓ UN NUEVO USUARIO'),(71,'2020-10-21 06:00:00',1,1,'Insert','SE INGRESÓ UN NUEVO EMPLEADO'),(72,'2020-10-21 06:00:00',1,2,'Insert','SE INGRESÓ UN NUEVO USUARIO'),(73,'2020-10-21 06:00:00',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(74,'2020-10-21 06:00:00',1,2,'Update','SE BLOQUEÓ UN USUARIO'),(75,'2020-10-22 06:00:00',1,2,'Update','SE ACTIVÓ UN USUARIO'),(77,'2020-10-27 05:31:34',1,1,'Consulta','SE CONSULTÓ EN TABLA EMPLEADO'),(78,'2020-10-27 05:38:20',1,1,'Consulta','SE CONSULTÓ EN TABLA EMPLEADO'),(79,'2020-10-27 05:38:23',1,1,'Consulta','SE CONSULTÓ EN TABLA EMPLEADO'),(80,'2020-10-27 05:46:33',1,1,'Ingreso','SE INGRESÓ A LA PANTALLA PERSONAL'),(81,'2020-10-27 05:46:33',1,1,'Consulta','SE CONSULTÓ EN TABLA EMPLEADO'),(82,'2020-10-27 05:47:52',1,1,'Ingreso','INGRESÓ A LA PANTALLA PERSONAL'),(83,'2020-10-27 05:47:52',1,1,'Consulta','CONSULTÓ EN TABLA EMPLEADO'),(91,'2020-10-27 05:53:07',1,1,'Ingreso','INGRESÓ A LA PANTALLA PERSONAL'),(92,'2020-10-27 05:53:07',1,1,'Consulta','CONSULTÓ EN TABLA EMPLEADO'),(96,'2020-10-27 05:58:28',1,1,'Ingreso','INGRESÓ A LA PANTALLA PERSONAL'),(97,'2020-10-27 05:58:28',1,1,'Consulta','CONSULTÓ EN TABLA EMPLEADO'),(98,'2020-10-27 05:58:51',1,1,'Ingreso','INGRESÓ A LA PANTALLA PERSONAL'),(99,'2020-10-27 05:58:51',1,1,'Consulta','CONSULTÓ EN TABLA EMPLEADO'),(103,'2020-10-27 06:02:25',1,1,'Consulta','CONSULTÓ EN TABLA EMPLEADO'),(104,'2020-10-27 06:03:06',1,1,'Consulta','CONSULTÓ EN TABLA EMPLEADO'),(105,'2020-11-10 02:59:27',1,1,'Consulta','CONSULTÓ EN TABLA EMPLEADO'),(106,'2020-11-10 03:00:56',1,2,'Update','SE ACTIVÓ UN USUARIO'),(107,'2020-11-10 03:01:29',1,1,'Consulta','CONSULTÓ EN TABLA EMPLEADO'),(108,'2020-11-10 03:03:53',1,1,'Consulta','CONSULTÓ EN TABLA EMPLEADO'),(109,'2020-11-10 04:43:41',1,2,'Update','SE BLOQUEÓ UN USUARIO'),(110,'2020-11-10 04:45:22',1,2,'Update','SE BLOQUEÓ UN USUARIO'),(111,'2020-11-10 04:46:31',1,2,'Update','SE BLOQUEÓ UN USUARIO'),(112,'2020-11-10 04:47:00',1,2,'Update','SE BLOQUEÓ UN USUARIO'),(113,'2020-11-12 05:09:08',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(114,'2020-11-12 05:09:15',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(115,'2020-11-12 05:09:20',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(116,'2020-11-12 05:09:25',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(117,'2020-11-12 05:09:30',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(118,'2020-11-12 05:09:53',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(119,'2020-11-15 02:38:13',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(120,'2020-11-15 03:05:21',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(121,'2020-11-15 03:08:58',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(122,'2020-11-17 07:18:56',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(123,'2020-11-17 07:19:45',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(124,'2020-11-17 07:31:50',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(125,'2020-11-17 08:15:33',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(126,'2020-11-17 21:33:11',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(127,'2020-11-17 22:24:48',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(128,'2020-11-18 00:29:14',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(129,'2020-11-18 00:34:59',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(130,'2020-11-18 00:45:53',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(131,'2020-11-18 00:46:29',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(132,'2020-11-18 01:09:56',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(133,'2020-11-18 01:09:58',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(134,'2020-11-18 01:10:08',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(135,'2020-11-18 01:10:12',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(136,'2020-11-23 21:04:40',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(137,'2020-11-23 21:04:45',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(138,'2020-11-23 21:05:15',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(139,'2020-11-23 21:05:40',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(140,'2020-11-23 21:06:05',1,3,'Insert','SE INGRESÓ UN NUEVO PARAMETRO'),(141,'2020-11-23 21:06:39',1,3,'Insert','SE INGRESÓ UN NUEVO PARAMETRO'),(142,'2020-11-23 21:06:58',1,3,'Insert','SE INGRESÓ UN NUEVO PARAMETRO'),(143,'2020-11-23 21:07:05',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(144,'2020-11-23 21:07:10',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(145,'2020-11-23 21:08:34',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(146,'2020-11-23 21:08:58',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(147,'2020-11-23 21:09:48',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(148,'2020-11-23 21:10:13',1,2,'Acceso','INGRESO A PANTALLA USUARIOS'),(149,'2020-11-23 21:10:17',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(150,'2020-11-23 21:10:30',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(151,'2020-11-23 21:10:34',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(152,'2020-11-23 21:10:54',1,12,'Insert','SE INGRESÓ UN NUEVO ESTADO CIVIL'),(153,'2020-11-23 21:11:01',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(154,'2020-11-23 21:11:09',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(155,'2020-11-23 21:11:17',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(156,'2020-11-23 21:11:33',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(157,'2020-11-23 21:11:52',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(158,'2020-11-23 21:12:46',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(159,'2020-11-23 21:12:52',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(160,'2020-11-23 21:13:58',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(161,'2020-11-23 21:14:02',1,2,'Acceso','INGRESO A PANTALLA USUARIOS'),(162,'2020-11-23 21:14:10',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(163,'2020-11-23 21:14:27',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(164,'2020-11-23 21:21:06',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(165,'2020-11-23 21:21:22',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(166,'2020-11-23 21:22:25',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(167,'2020-11-23 21:22:37',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(168,'2020-11-23 21:22:46',1,2,'Acceso','INGRESO A PANTALLA USUARIOS'),(169,'2020-11-23 21:22:59',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(170,'2020-11-23 21:23:06',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(171,'2020-11-23 21:23:11',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(172,'2020-11-23 21:23:16',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(173,'2020-11-23 21:23:28',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(174,'2020-11-23 21:23:50',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(175,'2020-11-23 21:23:54',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(176,'2020-11-23 21:24:10',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(177,'2020-11-23 21:24:22',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(178,'2020-11-23 21:24:56',1,16,'Acceso','INGRESO A PANTALLA GÉNERO'),(179,'2020-11-23 21:25:03',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(180,'2020-11-23 21:25:40',1,2,'Acceso','INGRESO A PANTALLA USUARIOS'),(181,'2020-11-23 21:26:28',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(182,'2020-11-23 21:27:30',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(183,'2020-11-23 21:27:36',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(184,'2020-11-23 21:27:51',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(185,'2020-11-23 21:31:29',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(186,'2020-11-23 21:31:41',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(187,'2020-11-23 21:33:38',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(188,'2020-11-23 21:41:32',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(189,'2020-11-23 21:41:36',1,2,'Acceso','INGRESO A PANTALLA USUARIOS'),(190,'2020-11-23 21:41:42',1,10,'Acceso','INGRESO A PANTALLA CARGOS'),(191,'2020-11-23 21:41:52',1,9,'Acceso','INGRESO A PANTALLA ESPECIALIDADES'),(192,'2020-11-23 21:41:57',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(193,'2020-11-23 21:42:05',1,15,'Acceso','INGRESO A PANTALLA TIPO_SANGRE'),(194,'2020-11-23 21:44:04',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(195,'2020-11-23 21:44:12',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(196,'2020-11-23 21:44:47',1,12,'Insert','SE INGRESÓ UN NUEVO ESTADO CIVIL'),(197,'2020-11-23 21:50:24',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(198,'2020-11-23 21:54:40',1,12,'Insert','SE INGRESÓ UN NUEVO ESTADO CIVIL'),(199,'2020-11-23 21:57:35',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(200,'2020-11-23 22:57:04',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(201,'2020-11-23 22:57:12',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(202,'2020-11-23 22:57:36',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(203,'2020-11-23 23:03:47',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(204,'2020-11-23 23:06:17',1,12,'Insert','SE INGRESÓ UN NUEVO ESTADO CIVIL'),(205,'2020-11-23 23:07:11',1,12,'Insert','SE INGRESÓ UN NUEVO ESTADO CIVIL'),(206,'2020-11-23 23:07:39',1,12,'Insert','SE INGRESÓ UN NUEVO ESTADO CIVIL'),(207,'2020-11-23 23:08:51',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(208,'2020-11-24 00:06:57',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(209,'2020-11-24 00:07:16',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(210,'2020-11-24 00:08:22',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(211,'2020-11-24 00:08:42',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(212,'2020-11-24 00:09:11',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(213,'2020-11-24 00:10:27',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(214,'2020-11-24 00:10:46',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(215,'2020-11-24 00:31:18',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(216,'2020-11-24 00:31:54',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(217,'2020-11-24 00:33:23',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cargo`
--

LOCK TABLES `tbl_cargo` WRITE;
/*!40000 ALTER TABLE `tbl_cargo` DISABLE KEYS */;
INSERT INTO `tbl_cargo` VALUES (1,'Doctor(a)'),(2,'Enfermero(a)'),(3,'Cajero(a)'),(4,'Limpieza'),(5,'Seguridad'),(6,'Auto_Registro');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_citas`
--

LOCK TABLES `tbl_citas` WRITE;
/*!40000 ALTER TABLE `tbl_citas` DISABLE KEYS */;
INSERT INTO `tbl_citas` VALUES (13,1,1,1,1,1,'2020-11-18 00:18:36','2020-11-26','23:18:00',5000,NULL,NULL,NULL,NULL),(14,1,1,1,1,1,'2020-11-18 00:19:36','2020-11-30','09:00:00',300,NULL,NULL,NULL,NULL),(15,1,1,18,2,1,'2020-11-18 00:40:59','2020-11-30','10:40:00',500,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_citas` ENABLE KEYS */;
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
  `ID_Diagnostico` int(3) NOT NULL,
  `Anamnesis` varchar(500) NOT NULL,
  `Exam_Fisico` varchar(500) NOT NULL,
  `Tratamiento` int(100) NOT NULL,
  `Prox_Cita` int(50) NOT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL,
  PRIMARY KEY (`ID_Consulta`),
  KEY `ID_Atencion` (`ID_Cita`),
  KEY `ID_Diagnostico` (`ID_Diagnostico`),
  KEY `ID_Cita` (`ID_Cita`),
  CONSTRAINT `tbl_consultas_ibfk_3` FOREIGN KEY (`ID_Cita`) REFERENCES `tbl_citas` (`ID_Cita`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_consultas_ibfk_4` FOREIGN KEY (`ID_Diagnostico`) REFERENCES `tbl_diagnosticos` (`ID_Diagnostico`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `id_detalle_factura` bigint(3) NOT NULL AUTO_INCREMENT,
  `ID_factura` bigint(3) NOT NULL,
  `ID_Especialidad` int(3) NOT NULL,
  PRIMARY KEY (`id_detalle_factura`),
  KEY `ID_factura` (`ID_factura`),
  KEY `ID_servicio` (`ID_Especialidad`),
  CONSTRAINT `tbl_detalle_factura_ibfk_3` FOREIGN KEY (`ID_factura`) REFERENCES `tbl_facturas` (`ID_factura`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_detalle_factura_ibfk_4` FOREIGN KEY (`ID_Especialidad`) REFERENCES `tbl_especialidad` (`ID_especialidad`) ON DELETE CASCADE ON UPDATE CASCADE
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
-- Table structure for table `tbl_diagnosticos`
--

DROP TABLE IF EXISTS `tbl_diagnosticos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_diagnosticos` (
  `ID_Diagnostico` int(3) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_Diagnostico`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_diagnosticos`
--

LOCK TABLES `tbl_diagnosticos` WRITE;
/*!40000 ALTER TABLE `tbl_diagnosticos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_diagnosticos` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'Jean Carlos Núñez Salgado',1,2,1,1,'','0000-00-00','Col venezuela sector B.....',22091139,33876298,15000,NULL,NULL,NULL,NULL),(3,'Carlos Fabricio Nuñez Ramires',1,3,2,6,'','0000-00-00','Col. Venezuela Sector B Bloque 8 casa 17',22278000,33876298,30000,NULL,NULL,NULL,NULL),(11,'JOSUE ALLAN GONZALES RAMIRES',1,2,3,3,'0801199714588','1987-10-08','WINFEIUFGEFVDFVDF',22222222,99999999,20000,NULL,NULL,NULL,NULL),(12,'WILDER EDUARDO RAMIRES ',1,1,5,7,'0801199714078','1982-09-05','SJDNVSDHOFIVBDVRFGBRGBRFGBGF',22222222,88888888,20000,NULL,NULL,NULL,NULL),(17,'JEAN CARLOS NUEZ',1,1,6,8,'0801199714079','1980-10-14','ASDSDJNSDSDSDSDD',22222222,99999999,0,NULL,NULL,NULL,NULL),(18,'JOSUE ROLANDO RAMIRES GONZALES',1,1,1,2,'0801199714079','1997-10-14','AASSDSSSDDSDSSSDSDSD',22222222,99999999,20000,NULL,NULL,NULL,NULL),(20,'JOSUE CACERES ACOSTA',1,1,6,8,'0801115556666','1980-10-04','SDSDCSDCSDCSD',22222222,99999999,0,NULL,NULL,NULL,NULL);
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
  `Precio` int(11) NOT NULL,
  PRIMARY KEY (`ID_especialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_especialidad`
--

LOCK TABLES `tbl_especialidad` WRITE;
/*!40000 ALTER TABLE `tbl_especialidad` DISABLE KEYS */;
INSERT INTO `tbl_especialidad` VALUES (1,'Medicina General',0),(2,'Ortopedia',0),(3,'Fisioterapia',0),(4,'Nutrición',0),(5,'Odontología',0),(6,'Psicología',0),(7,'Podología',0),(8,'Auto_Registro',0);
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
  `Descripcion_est_cita` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_Estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado_cita`
--

LOCK TABLES `tbl_estado_cita` WRITE;
/*!40000 ALTER TABLE `tbl_estado_cita` DISABLE KEYS */;
INSERT INTO `tbl_estado_cita` VALUES (1,'Registrada'),(2,'Preclinica'),(3,'Consulta'),(4,'Pagada');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado_civil`
--

LOCK TABLES `tbl_estado_civil` WRITE;
/*!40000 ALTER TABLE `tbl_estado_civil` DISABLE KEYS */;
INSERT INTO `tbl_estado_civil` VALUES (1,'Soltero(a)'),(2,'Casado(a)'),(3,'Unión Libre'),(4,'Viudo(a)'),(5,'Divorciado(a)');
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
  `ID_consulta` bigint(3) NOT NULL,
  `Usuario_crea` bigint(3) NOT NULL,
  `Fec_crea` date NOT NULL,
  `Usuario_modif` bigint(3) NOT NULL,
  `Fec_modif` date NOT NULL,
  PRIMARY KEY (`ID_expediente`),
  KEY `ID_paciente` (`ID_paciente`),
  KEY `ID_consulta` (`ID_consulta`),
  CONSTRAINT `tbl_expediente_ibfk_1` FOREIGN KEY (`ID_consulta`) REFERENCES `tbl_consultas` (`ID_Consulta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_expediente_ibfk_2` FOREIGN KEY (`ID_paciente`) REFERENCES `tbl_pacientes` (`ID_Paciente`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `ID_factura` bigint(3) NOT NULL AUTO_INCREMENT,
  `Fec_emision` int(11) NOT NULL,
  `ID_cita` bigint(3) NOT NULL,
  PRIMARY KEY (`ID_factura`),
  KEY `ID_cita` (`ID_cita`),
  CONSTRAINT `tbl_facturas_ibfk_1` FOREIGN KEY (`ID_cita`) REFERENCES `tbl_citas` (`ID_Cita`) ON DELETE CASCADE ON UPDATE CASCADE
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
-- Table structure for table `tbl_hist_contra`
--

DROP TABLE IF EXISTS `tbl_hist_contra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_hist_contra` (
  `id_hist` int(3) NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(3) NOT NULL,
  `contraseña` varchar(25) NOT NULL,
  PRIMARY KEY (`id_hist`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `tbl_hist_contra_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_hist_contra`
--

LOCK TABLES `tbl_hist_contra` WRITE;
/*!40000 ALTER TABLE `tbl_hist_contra` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_hist_contra` ENABLE KEYS */;
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
INSERT INTO `tbl_objetos` VALUES (1,'vista_personal'),(2,'vista_usuarios'),(3,'vista_parametros'),(4,'vista_pacientes'),(5,'vista_consultas'),(6,'vista_preclinica'),(7,'vista_citas'),(8,'vista_caja'),(9,'vista_especialidad'),(10,'vista_cargo'),(11,'vista_diagnóstico'),(12,'vista_estado civil'),(13,'vista_religiones'),(14,'vista_servicios'),(15,'vista_tipo de sangre'),(16,'vista_sexo');
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
  `cedula` varchar(13) NOT NULL,
  `ID_Sexo` int(1) NOT NULL,
  `ID_Est_Civil` int(3) NOT NULL,
  `ID_Tipo_Sangre` int(3) NOT NULL,
  `ID_Religion` int(3) NOT NULL,
  `ID_TipoPaciente` int(3) NOT NULL,
  `Nom_Paciente` varchar(255) NOT NULL,
  `Fec_Nacimiento` date NOT NULL,
  `Edad` int(3) NOT NULL,
  `Dir_Paciente` varchar(255) NOT NULL,
  `Tel_Paciente` int(8) NOT NULL,
  `Cel_Paciente` int(8) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contacto_Emergencia` varchar(40) NOT NULL,
  `Parentesco` varchar(20) NOT NULL,
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
  KEY `ID_TipoPaciente` (`ID_TipoPaciente`),
  CONSTRAINT `tbl_pacientes_ibfk_1` FOREIGN KEY (`ID_TipoPaciente`) REFERENCES `tbl_tipo_paciente` (`ID_TipoPaciente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_pacientes_ibfk_10` FOREIGN KEY (`ID_Tipo_Sangre`) REFERENCES `tbl_tipo_sangre` (`ID_Tipo_Sangre`) ON DELETE CASCADE ON UPDATE CASCADE,
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
INSERT INTO `tbl_pacientes` VALUES (1,'0801199714079',1,1,7,2,2,'JEAN CARLOS NUÑEZ RAMIRES','1997-07-06',24,'SADSDMFVIDFVBDFHVBDSFVSDFVDFVSDFDFVDSF',22222222,99999999,'nuez.jeancarlos@gmail.com','Juanita Salgado','Madre',22222222,99999999,'aaaaaaaaaaaaaaaaaaasddcsd','aaaaaaaaaaaaaaaaaaasdssd','asssssssssssssssssssssssssxsd','asdddddddddddddddddddddddddd','assssssssssssssssssssssssssssssssssssssss',NULL,NULL,NULL,NULL);
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
  `parametro` varchar(50) NOT NULL,
  `valor` varchar(50) NOT NULL,
  `fecha_cracion` date NOT NULL,
  `fecha_modificacion` date NOT NULL,
  PRIMARY KEY (`id_parametro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_parametro_sistema`
--

LOCK TABLES `tbl_parametro_sistema` WRITE;
/*!40000 ALTER TABLE `tbl_parametro_sistema` DISABLE KEYS */;
INSERT INTO `tbl_parametro_sistema` VALUES (1,'USUARIOBD','root','0000-00-00','0000-00-00'),(2,'NOMBREDB','sistema_franclar','0000-00-00','0000-00-00'),(3,'SERVIDOR','localhost','0000-00-00','0000-00-00');
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
  `valor` varchar(25) NOT NULL,
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
INSERT INTO `tbl_parametros` VALUES (1,'INTENTOS_INGRESO','2',1,'2020-10-04','2020-10-04'),(2,'PREGUNTAS_RECUPERACIÓN','3',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_parametros` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_parametro_insert` AFTER INSERT ON `tbl_parametros` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual)VALUES('tbl_parametros',NEW.id_parametro,CURRENT_USER,'Se insertó un nuevo parámetro',concat('Información insertada: ',NEW.parametro,' ',NEW.valor));

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_parametro_update` AFTER UPDATE ON `tbl_parametros` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual,informacion_anterior)VALUES('tbl_parametros',OLD.id_parametro,CURRENT_USER,'Se actualizó un parámetro',concat('Información actualizada: ',NEW.parametro,' ',NEW.valor),concat('Información anterior: ',OLD.parametro,' ',OLD.valor));

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_parametro_delete` AFTER DELETE ON `tbl_parametros` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_anterior)VALUES('tbl_parametros',OLD.id_parametro,CURRENT_USER,'Se eliminó un parámetro',concat('Información eliminada: ',OLD.parametro,' ',OLD.valor));

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisos`
--

LOCK TABLES `tbl_permisos` WRITE;
/*!40000 ALTER TABLE `tbl_permisos` DISABLE KEYS */;
INSERT INTO `tbl_permisos` VALUES (1,1,1,'1','1','1','1'),(2,1,2,'1','1','1','1'),(3,1,3,'1','1','1','1'),(4,1,4,'1','1','1','1'),(5,1,5,'1','1','1','1'),(6,1,6,'1','1','1','1'),(7,1,7,'1','1','1','1'),(8,1,8,'1','1','1','1'),(9,1,9,'1','1','1','1'),(10,1,10,'1','1','1','1'),(11,1,11,'1','1','1','1'),(12,1,12,'1','1','1','1'),(13,1,13,'1','1','1','1'),(14,1,14,'1','1','1','1'),(15,1,15,'1','1','1','1'),(16,1,16,'1','1','1','1'),(17,2,1,'0','0','0','0'),(18,2,2,'0','0','0','0'),(19,2,3,'0','0','0','0'),(20,2,4,'1','1','1','1'),(21,2,5,'1','1','1','1'),(22,2,6,'0','0','0','0'),(23,2,7,'0','0','0','0'),(24,2,8,'0','0','0','0'),(25,2,9,'0','0','0','0'),(26,2,10,'0','0','0','0'),(27,2,11,'0','0','0','0'),(28,2,12,'0','0','0','0'),(29,2,13,'0','0','0','0'),(30,2,14,'0','0','0','0'),(31,2,15,'0','0','0','0'),(32,2,16,'0','0','0','0');
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
  `P/A` varchar(10) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pregunta_usuario`
--

LOCK TABLES `tbl_pregunta_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_pregunta_usuario` DISABLE KEYS */;
INSERT INTO `tbl_pregunta_usuario` VALUES (48,1,18,'sdsdfdsfdf',NULL,NULL,NULL,NULL),(49,2,18,'sasdsd',NULL,NULL,NULL,NULL),(50,3,18,'sdsd',NULL,NULL,NULL,NULL),(51,1,11,'XXX',NULL,NULL,NULL,NULL),(52,2,11,'XXX',NULL,NULL,NULL,NULL),(53,3,11,'XXX',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_pregunta_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_preguntas_usuario_insert` AFTER INSERT ON `tbl_pregunta_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual)VALUES('tbl_pregunta_usuario',NEW.id_pregunta_usuario,CURRENT_USER,'Se insertó una nueva respuesta de un usuario',concat('Información insertada: ',NEW.ID_Pregunta,' ',NEW.ID_Usuario,' ',NEW.Respuesta));

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_preguntas_usuario_update` AFTER UPDATE ON `tbl_pregunta_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual,informacion_anterior)VALUES('tbl_pregunta_usuario',NEW.id_pregunta_usuario,CURRENT_USER,'Se actualizó una respuesta de un usuario',concat('Información actualizada: ',NEW.ID_Pregunta,' ',NEW.ID_Usuario,' ',NEW.Respuesta),concat('Información anterior: ',OLD.ID_Pregunta,' ',OLD.ID_Usuario,' ',OLD.Respuesta));

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_preguntas_usuario_delete` AFTER DELETE ON `tbl_pregunta_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_anterior)VALUES('tbl_pregunta_usuario',OLD.id_pregunta_usuario,CURRENT_USER,'Se eliminó una respuesta de un usuario',concat('Información eliminada: ',OLD.ID_Pregunta,' ',OLD.ID_Usuario,' ',OLD.Respuesta));

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_preguntas`
--

LOCK TABLES `tbl_preguntas` WRITE;
/*!40000 ALTER TABLE `tbl_preguntas` DISABLE KEYS */;
INSERT INTO `tbl_preguntas` VALUES (1,'¿Cuál es el nombre de su mamá?',NULL,NULL,NULL,NULL),(2,'¿Cuál es el nombre de su primer mascota?',NULL,NULL,NULL,NULL),(3,'¿Cuál es su color favorito?',NULL,NULL,NULL,NULL),(4,'¿Cuál es su comida favorita?',NULL,NULL,NULL,NULL),(5,'¿Cuál es el nombre de su padre?',NULL,NULL,NULL,NULL),(6,'¿Cómo se llama su primo mayor?',NULL,NULL,NULL,NULL),(7,'¿Cómo se llama su tío favorito?',NULL,NULL,NULL,NULL),(8,'¿Cómo se llama su primera escuela?',NULL,NULL,NULL,NULL),(9,'¿Cómo se llama su tía favorita?',NULL,NULL,NULL,NULL),(10,'¿Cuál es el nombre de su primer pareja?',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_preguntas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_preguntas_insert` AFTER INSERT ON `tbl_preguntas` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual)VALUES('tbl_preguntas',NEW.ID_Pregunta,CURRENT_USER,'Se insertó una nueva pregunta',concat('Información insertada: ',NEW.Pregunta));

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_preguntas_update` AFTER UPDATE ON `tbl_preguntas` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual,informacion_anterior)VALUES('tbl_preguntas',OLD.ID_Pregunta,CURRENT_USER,'Se actualizó una nueva pregunta',concat('Información actualizada: ',NEW.Pregunta),concat('Información anterior: ',OLD.Pregunta));


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_preguntas_delete` AFTER DELETE ON `tbl_preguntas` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_anterior)VALUES('tbl_preguntas',OLD.ID_Pregunta,CURRENT_USER,'Se eliminó una pregunta',concat('Información eliminada: ',OLD.Pregunta));

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_religion`
--

LOCK TABLES `tbl_religion` WRITE;
/*!40000 ALTER TABLE `tbl_religion` DISABLE KEYS */;
INSERT INTO `tbl_religion` VALUES (1,'Católico(a)'),(2,'Evangélico(a)'),(3,'Otros');
/*!40000 ALTER TABLE `tbl_religion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_roles` (
  `ID_Rol` bigint(3) NOT NULL,
  `Rol` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_Rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles`
--

LOCK TABLES `tbl_roles` WRITE;
/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
INSERT INTO `tbl_roles` VALUES (1,'Admin'),(2,'Doctor'),(3,'Enfermero'),(4,'Cajero'),(5,'Auto_Registro');
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_servicio`
--

DROP TABLE IF EXISTS `tbl_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_servicio` (
  `ID_Servicio` int(3) NOT NULL AUTO_INCREMENT,
  `Descripcion_servicio` varchar(50) NOT NULL,
  `Precio` int(5) NOT NULL,
  PRIMARY KEY (`ID_Servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_servicio`
--

LOCK TABLES `tbl_servicio` WRITE;
/*!40000 ALTER TABLE `tbl_servicio` DISABLE KEYS */;
INSERT INTO `tbl_servicio` VALUES (1,'Medicina General',200),(2,'Psicología',300),(3,'Pediatría',400);
/*!40000 ALTER TABLE `tbl_servicio` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sexo`
--

LOCK TABLES `tbl_sexo` WRITE;
/*!40000 ALTER TABLE `tbl_sexo` DISABLE KEYS */;
INSERT INTO `tbl_sexo` VALUES (1,'Masculino'),(2,'Femenino');
/*!40000 ALTER TABLE `tbl_sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_paciente`
--

DROP TABLE IF EXISTS `tbl_tipo_paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipo_paciente` (
  `ID_TipoPaciente` int(3) NOT NULL,
  `Descripcion_Tipo` varchar(200) NOT NULL,
  PRIMARY KEY (`ID_TipoPaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_paciente`
--

LOCK TABLES `tbl_tipo_paciente` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_paciente` DISABLE KEYS */;
INSERT INTO `tbl_tipo_paciente` VALUES (1,'Pediatría'),(2,'Normal'),(3,'diabético');
/*!40000 ALTER TABLE `tbl_tipo_paciente` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_sangre`
--

LOCK TABLES `tbl_tipo_sangre` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_sangre` DISABLE KEYS */;
INSERT INTO `tbl_tipo_sangre` VALUES (1,'A Positivo'),(2,'A Negativo'),(3,'B Positivo'),(4,'B Negativo'),(5,'O Positivo'),(6,'O Negativo'),(7,'AB Positivo'),(8,'AB Negativo');
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
  CONSTRAINT `tbl_usuario_ibfk_5` FOREIGN KEY (`ID_Rol`) REFERENCES `tbl_roles` (`ID_Rol`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_usuario_ibfk_6` FOREIGN KEY (`ID_Empleado`) REFERENCES `tbl_empleado` (`ID_Empleado`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
INSERT INTO `tbl_usuario` VALUES (1,1,1,'ADMIN','soportefranclar@gmail.com','Franclar#2020',1,'2020-10-04',0,'2020-10-04',NULL,NULL,NULL,NULL,0),(9,11,1,'JGONZALES','jsdiksndsdsd@gmail.com','OtvJY]Jf',1,NULL,1,NULL,NULL,NULL,NULL,NULL,0),(11,12,2,'WRAMIRES','jidndf@gmail.com','Minuto#2020',2,NULL,0,NULL,NULL,NULL,NULL,NULL,3),(15,17,2,'JEANNUNEZ','jean.nunez@gmail.com','Minuto#2020',5,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(16,18,2,'JOSUERAMIRES','jenaas.sdsd@gmail.com','Xi0_Sa7]',1,NULL,1,NULL,NULL,NULL,NULL,NULL,0),(18,20,2,'JOSUERS','sjsdddssd@gmail.com','Minuto$2020',3,NULL,0,NULL,NULL,NULL,NULL,NULL,3);
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

-- Dump completed on 2020-11-23 18:34:46
