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
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bitacora_evento`
--

LOCK TABLES `tbl_bitacora_evento` WRITE;
/*!40000 ALTER TABLE `tbl_bitacora_evento` DISABLE KEYS */;
INSERT INTO `tbl_bitacora_evento` VALUES (1,'2020-10-21 06:00:00',1,3,'Update','SE ACTUALIZÓ UN PARAMETRO'),(2,'2020-10-21 06:00:00',1,3,'Update','SE ACTUALIZÓ UN PARÁMETRO'),(4,'2020-10-21 06:00:00',1,10,'Insert','SE INGRESÓ UN NUEVO CARGO'),(5,'2020-10-21 06:00:00',1,10,'Insert','SE INGRESÓ UN NUEVO CARGO'),(6,'2020-10-21 06:00:00',1,10,'Delete','SE ELIMINÓ UN CARGO'),(7,'2020-10-21 06:00:00',1,9,'Insert','SE INGRESÓ UNA NUEVA ESPECIALIDAD'),(8,'2020-10-21 06:00:00',1,9,'Update','SE ACTUALIZÓ UNA ESPECIALIDAD'),(9,'2020-10-21 06:00:00',1,9,'Delete','SE ELIMINÓ UNA ESPECIALIDAD'),(10,'2020-10-21 06:00:00',1,1,'Insert','SE INGRESÓ UN NUEVO EMPLEADO'),(11,'2020-10-21 06:00:00',1,1,'Update','SE ACTUALIZÓ UN EMPLEADO'),(12,'2020-10-21 06:00:00',1,1,'Delete','SE ELIMINÓ UN EMPLEADO'),(13,'2020-10-21 06:00:00',1,1,'Insert','SE INGRESÓ UN NUEVO EMPLEADO'),(14,'2020-10-21 06:00:00',1,1,'Update','SE ACTUALIZÓ UN EMPLEADO'),(15,'2020-10-21 06:00:00',1,1,'Update','SE ACTUALIZÓ UN EMPLEADO'),(16,'2020-10-21 06:00:00',1,1,'Update','SE ACTUALIZÓ UN EMPLEADO'),(17,'2020-10-21 06:00:00',1,1,'Update','SE ACTUALIZÓ UN EMPLEADO'),(18,'2020-10-21 06:00:00',1,1,'Update','SE ACTUALIZÓ UN EMPLEADO'),(19,'2020-10-21 06:00:00',1,1,'Delete','SE ELIMINÓ UN EMPLEADO'),(20,'2020-10-21 06:00:00',1,1,'Delete','SE ELIMINÓ UN EMPLEADO'),(22,'2020-10-21 06:00:00',1,2,'Update','SE BLOQUEÓ UN USUARIO'),(23,'2020-10-21 06:00:00',1,2,'Update','SE BLOQUEÓ UN USUARIO'),(24,'2020-10-21 06:00:00',1,2,'Update','SE ACTIVÓ UN USUARIO'),(25,'2020-10-21 06:00:00',1,10,'Insert','SE INGRESÓ UN NUEVO CARGO'),(26,'2020-10-21 06:00:00',1,10,'Update','SE ACTUALIZÓ EL CARGO'),(27,'2020-10-21 06:00:00',1,10,'Delete','SE ELIMINÓ UN CARGO'),(28,'2020-10-21 06:00:00',1,9,'Insert','SE INGRESÓ UNA NUEVA ESPECIALIDAD'),(29,'2020-10-21 06:00:00',1,9,'Update','SE ACTUALIZÓ UNA ESPECIALIDAD'),(30,'2020-10-21 06:00:00',1,9,'Delete','SE ELIMINÓ UNA ESPECIALIDAD'),(31,'2020-10-21 06:00:00',1,14,'Insert','SE INGRESÓ UN NUEVO SERVICIO'),(32,'2020-10-21 06:00:00',1,14,'Update','SE ACTUALIZÓ EL SERVICIO'),(33,'2020-10-21 06:00:00',1,14,'Insert','SE INGRESÓ UN NUEVO SERVICIO'),(34,'2020-10-21 06:00:00',1,14,'Update','SE ACTUALIZÓ EL SERVICIO'),(35,'2020-10-21 06:00:00',1,14,'Delete','SE ELIMINÓ UN SERVICIO'),(36,'2020-10-21 06:00:00',1,12,'Insert','SE INGRESÓ UN NUEVO ESTADO CIVIL'),(37,'2020-10-21 06:00:00',1,12,'Update','SE ACTUALIZÓ EL ESTADO CIVIL'),(38,'2020-10-21 06:00:00',1,12,'Delete','SE ELIMINÓ ESTADO CIVIL'),(39,'2020-10-21 06:00:00',1,16,'Insert','SE INGRESÓ UN NUEVO SEXO'),(40,'2020-10-21 06:00:00',1,16,'Update','SE ACTUALIZÓ SEXO'),(41,'2020-10-21 06:00:00',1,16,'Delete','SE ELIMINÓ UN SEXO'),(42,'2020-10-21 06:00:00',1,13,'Insert','SE INGRESÓ UNA RELIGION'),(43,'2020-10-21 06:00:00',1,13,'Insert','SE INGRESÓ UNA RELIGION'),(44,'2020-10-21 06:00:00',1,13,'Update','SE ACTUALIZÓ UNA RELIGION'),(45,'2020-10-21 06:00:00',1,13,'Update','SE ACTUALIZÓ UNA RELIGION'),(46,'2020-10-21 06:00:00',1,13,'Delete','SE ELIMINÓ UNA RELIGIÓN'),(47,'2020-10-21 06:00:00',1,13,'Delete','SE ELIMINÓ UNA RELIGIÓN'),(48,'2020-10-21 06:00:00',1,13,'Insert','SE INGRESÓ UNA RELIGION'),(49,'2020-10-21 06:00:00',1,13,'Update','SE ACTUALIZÓ UNA RELIGION'),(50,'2020-10-21 06:00:00',1,13,'Delete','SE ELIMINÓ UNA RELIGIÓN'),(51,'2020-10-21 06:00:00',1,15,'Insert','SE INGRESÓ UN NUEVO TIPO DE SANGRE'),(52,'2020-10-21 06:00:00',1,10,'Insert','SE INGRESÓ UN NUEVO CARGO'),(53,'2020-10-21 06:00:00',1,10,'Delete','SE ELIMINÓ UN CARGO'),(54,'2020-10-21 06:00:00',1,15,'Update','SE ACTUALIZÓ UN TIPO DE SANGRE'),(55,'2020-10-21 06:00:00',1,15,'Delete','SE ELIMINÓ UN TIPO DE SANGRE'),(56,'2020-10-21 06:00:00',1,11,'Insert','SE INGRESÓ UN NUEVO DIAGNOSTICO'),(57,'2020-10-21 06:00:00',1,11,'Update','SE ACTUALIZÓ UN DIAGNOSTICO'),(58,'2020-10-21 06:00:00',1,11,'Delete','SE ELIMINÓ UN DIAGNÓSTICO'),(59,'2020-10-21 06:00:00',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(60,'2020-10-21 06:00:00',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(61,'2020-10-21 06:00:00',1,2,'Update','SE ACTIVÓ UN USUARIO'),(62,'2020-10-21 06:00:00',1,2,'Update','SE ACTIVÓ UN USUARIO'),(63,'2020-10-21 06:00:00',1,2,'Update','SE BLOQUEÓ UN USUARIO'),(64,'2020-10-21 06:00:00',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(65,'2020-10-21 06:00:00',1,2,'Update','SE ACTIVÓ UN USUARIO'),(66,'2020-10-21 06:00:00',1,2,'Update','SE ACTIVÓ UN USUARIO'),(67,'2020-10-21 06:00:00',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(68,'2020-10-21 06:00:00',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(69,'2020-10-21 06:00:00',1,1,'Insert','SE INGRESÓ UN NUEVO EMPLEADO'),(70,'2020-10-21 06:00:00',1,2,'Insert','SE INGRESÓ UN NUEVO USUARIO'),(71,'2020-10-21 06:00:00',1,1,'Insert','SE INGRESÓ UN NUEVO EMPLEADO'),(72,'2020-10-21 06:00:00',1,2,'Insert','SE INGRESÓ UN NUEVO USUARIO'),(73,'2020-10-21 06:00:00',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(74,'2020-10-21 06:00:00',1,2,'Update','SE BLOQUEÓ UN USUARIO'),(75,'2020-10-22 06:00:00',1,2,'Update','SE ACTIVÓ UN USUARIO'),(77,'2020-10-27 05:31:34',1,1,'Consulta','SE CONSULTÓ EN TABLA EMPLEADO'),(78,'2020-10-27 05:38:20',1,1,'Consulta','SE CONSULTÓ EN TABLA EMPLEADO'),(79,'2020-10-27 05:38:23',1,1,'Consulta','SE CONSULTÓ EN TABLA EMPLEADO'),(80,'2020-10-27 05:46:33',1,1,'Ingreso','SE INGRESÓ A LA PANTALLA PERSONAL'),(81,'2020-10-27 05:46:33',1,1,'Consulta','SE CONSULTÓ EN TABLA EMPLEADO'),(82,'2020-10-27 05:47:52',1,1,'Ingreso','INGRESÓ A LA PANTALLA PERSONAL'),(83,'2020-10-27 05:47:52',1,1,'Consulta','CONSULTÓ EN TABLA EMPLEADO'),(91,'2020-10-27 05:53:07',1,1,'Ingreso','INGRESÓ A LA PANTALLA PERSONAL'),(92,'2020-10-27 05:53:07',1,1,'Consulta','CONSULTÓ EN TABLA EMPLEADO'),(96,'2020-10-27 05:58:28',1,1,'Ingreso','INGRESÓ A LA PANTALLA PERSONAL'),(97,'2020-10-27 05:58:28',1,1,'Consulta','CONSULTÓ EN TABLA EMPLEADO'),(98,'2020-10-27 05:58:51',1,1,'Ingreso','INGRESÓ A LA PANTALLA PERSONAL'),(99,'2020-10-27 05:58:51',1,1,'Consulta','CONSULTÓ EN TABLA EMPLEADO'),(103,'2020-10-27 06:02:25',1,1,'Consulta','CONSULTÓ EN TABLA EMPLEADO'),(104,'2020-10-27 06:03:06',1,1,'Consulta','CONSULTÓ EN TABLA EMPLEADO'),(105,'2020-11-12 18:58:54',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(106,'2020-11-12 18:59:04',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(107,'2020-11-12 19:00:14',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(108,'2020-11-12 19:00:31',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(109,'2020-11-12 19:03:35',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(110,'2020-11-12 19:04:08',1,1,'Insert','SE INGRESÓ UN NUEVO EMPLEADO'),(111,'2020-11-12 19:04:24',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(112,'2020-11-12 19:09:52',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(113,'2020-11-12 19:15:53',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(114,'2020-11-12 19:23:26',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(115,'2020-11-12 20:41:52',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(116,'2020-11-12 20:44:02',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(117,'2020-11-12 20:44:21',1,3,'Insert','SE INGRESÓ UN NUEVO PARAMETRO'),(118,'2020-11-12 20:44:47',1,3,'Insert','SE INGRESÓ UN NUEVO PARAMETRO'),(119,'2020-11-12 20:45:31',1,3,'Insert','SE INGRESÓ UN NUEVO PARAMETRO'),(120,'2020-11-12 20:46:13',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(121,'2020-11-12 20:55:52',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(122,'2020-11-12 20:56:27',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(123,'2020-11-12 20:58:44',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(124,'2020-11-12 21:28:40',1,11,'Acceso','INGRESO A PANTALLA DIAGNOSTICO'),(125,'2020-11-12 21:29:03',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(126,'2020-11-12 21:29:09',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(127,'2020-11-12 21:29:24',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(128,'2020-11-12 22:05:16',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(129,'2020-11-12 22:14:17',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(130,'2020-11-12 23:00:49',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(131,'2020-11-12 23:06:17',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(132,'2020-11-12 23:08:13',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(133,'2020-11-13 02:37:12',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(134,'2020-11-13 02:37:16',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(135,'2020-11-13 20:26:29',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(136,'2020-11-13 20:26:35',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(137,'2020-11-14 02:44:53',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(138,'2020-11-14 13:34:27',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(140,'2020-11-14 14:53:09',1,2,'Update','SE BLOQUEÓ UN USUARIO'),(141,'2020-11-14 14:53:20',1,2,'Update','SE ACTIVÓ UN USUARIO'),(142,'2020-11-14 14:53:28',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(143,'2020-11-17 13:02:22',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(144,'2020-11-17 15:48:25',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(145,'2020-11-17 16:00:09',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(146,'2020-11-17 21:10:44',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(147,'2020-11-17 22:20:37',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(148,'2020-11-18 21:35:42',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(149,'2020-11-18 21:36:19',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(150,'2020-11-18 23:56:28',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(151,'2020-11-19 00:46:21',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(152,'2020-11-19 00:50:07',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(153,'2020-11-19 01:00:11',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(154,'2020-11-19 01:03:42',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(155,'2020-11-19 01:04:12',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(156,'2020-11-19 01:04:32',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(157,'2020-11-19 01:07:43',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(158,'2020-11-19 01:07:50',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(159,'2020-11-19 01:08:02',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(160,'2020-11-19 01:11:55',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(161,'2020-11-19 01:24:13',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(162,'2020-11-19 01:24:39',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(163,'2020-11-19 01:35:40',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(164,'2020-11-19 01:36:48',1,12,'Insert','SE INGRESÓ UN NUEVO ESTADO CIVIL'),(165,'2020-11-19 01:41:26',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(166,'2020-11-19 01:43:25',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(167,'2020-11-19 14:48:58',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(168,'2020-11-19 14:50:08',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(169,'2020-11-19 14:50:23',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(170,'2020-11-19 14:50:41',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(171,'2020-11-19 14:50:59',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(172,'2020-11-19 14:51:19',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(173,'2020-11-19 14:55:55',11,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(174,'2020-11-19 14:58:10',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(175,'2020-11-19 17:57:07',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(176,'2020-11-19 18:17:43',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(177,'2020-11-19 18:19:55',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(178,'2020-11-19 18:21:45',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(179,'2020-11-19 18:22:16',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(180,'2020-11-19 18:23:00',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(181,'2020-11-19 18:32:36',11,2,'Update','SE ACTUALIZÓ UN USUARIO'),(182,'2020-11-19 18:36:31',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(183,'2020-11-20 01:49:04',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(184,'2020-11-20 01:49:37',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(185,'2020-11-20 17:16:36',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(186,'2020-11-20 17:18:12',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(187,'2020-11-20 17:26:23',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(188,'2020-11-20 20:25:04',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(189,'2020-11-20 20:25:16',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(190,'2020-11-20 20:25:43',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(191,'2020-11-20 20:26:09',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(192,'2020-11-20 20:26:25',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(193,'2020-11-20 20:26:59',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(194,'2020-11-20 20:27:15',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(195,'2020-11-20 20:28:59',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(196,'2020-11-20 20:30:46',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(197,'2020-11-20 20:34:30',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(198,'2020-11-20 20:37:48',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(199,'2020-11-20 20:40:25',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(200,'2020-11-20 20:42:25',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(201,'2020-11-20 20:45:06',1,11,'Acceso','INGRESO A PANTALLA DIAGNOSTICO'),(202,'2020-11-20 20:46:15',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(203,'2020-11-20 20:48:29',1,11,'Acceso','INGRESO A PANTALLA DIAGNOSTICO'),(204,'2020-11-20 20:49:14',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(205,'2020-11-20 20:49:57',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(206,'2020-11-20 21:04:42',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(207,'2020-11-20 21:04:49',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(208,'2020-11-20 21:57:09',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(209,'2020-11-20 22:01:31',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(210,'2020-11-20 22:02:27',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(211,'2020-11-20 22:05:11',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(212,'2020-11-20 22:05:19',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(213,'2020-11-20 22:15:41',11,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(214,'2020-11-20 22:16:25',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(215,'2020-11-20 22:18:10',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(216,'2020-11-20 22:18:19',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(217,'2020-11-20 22:18:38',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(218,'2020-11-20 22:18:47',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(219,'2020-11-20 22:21:49',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(220,'2020-11-20 22:41:59',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(221,'2020-11-20 22:42:25',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(222,'2020-11-20 22:42:45',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(223,'2020-11-20 22:45:45',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(224,'2020-11-20 22:51:32',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(225,'2020-11-20 22:56:14',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(226,'2020-11-20 22:57:50',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(227,'2020-11-20 23:03:54',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(228,'2020-11-20 23:05:19',1,2,'Update','SE ACTUALIZÓ UN USUARIO'),(229,'2020-11-20 23:05:56',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS'),(230,'2020-11-20 23:06:45',1,1,'Acceso','INGRESO A PANTALLA PERSONAL'),(231,'2020-11-20 23:07:06',1,3,'Acceso','INGRESO A PANTALLA PARAMETROS');
/*!40000 ALTER TABLE `tbl_bitacora_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bitacora_registro`
--

DROP TABLE IF EXISTS `tbl_bitacora_registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bitacora_registro` (
  `id_bitacora` int(11) NOT NULL AUTO_INCREMENT,
  `id_tabla` text NOT NULL,
  `id_registro` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `ejecutor` varchar(20) NOT NULL,
  `actividad_realizada` varchar(100) NOT NULL,
  `informacion_actual` text NOT NULL,
  `informacion_anterior` text NOT NULL,
  PRIMARY KEY (`id_bitacora`)
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bitacora_registro`
--

LOCK TABLES `tbl_bitacora_registro` WRITE;
/*!40000 ALTER TABLE `tbl_bitacora_registro` DISABLE KEYS */;
INSERT INTO `tbl_bitacora_registro` VALUES (2,'tbl_usuario',1,'2020-10-03 07:43:49','root@localhost','Se insertó un nuevo usuario','Información insertada: 1 1JNUÑEZ123412020-10-0312020-10-03',''),(3,'tbl_usuario',1,'2020-10-03 07:48:50','root@localhost','Se insertó un nuevo usuario','Información insertada: 1 1 JNUÑEZ 1234 1 2020-10-03 1 2020-10-03',''),(4,'tbl_usuario',1,'2020-10-04 06:07:56','root@localhost','Se eliminó un usuario','','Información eliminada: 1 1 JNUÑEZ 1234 1 2020-10-03 1 2020-10-03'),(5,'tbl_usuario',1,'2020-10-04 06:09:24','root@localhost','Se insertó un nuevo usuario','Información insertada: 1 1 JNUÑEZ 1234 1 2020-10-04 1 2020-10-04',''),(6,'tbl_usuario',1,'2020-10-04 06:16:17','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUÑEZ 1234 1 2020-10-04 1 2020-10-04','Información anterior: 1 1 JNUÑEZ 1234 1 2020-10-04 1 2020-10-04'),(7,'tbl_empleado',2,'2020-10-04 06:52:01','root@localhost','Se insertó un nuevo empleado','Información insertada: 2 2 1 1 0801199714078 EVELYN GABRIELA TORRES RAMIREZ 1997-07-06 COL VENEZUELA SETORVSSDSDSDSIUDCVNEIFVBEDIVEFVEF  22091139 33876298 nuez.jeancarlos@gmail.com 15000',''),(8,' tbl_empleado',2,'2020-10-04 08:04:03','root@localhost','Se eliminó un empleado','','Información eliminada: 2 2 1 1 0801199714078 EVELYN GABRIELA TORRES RAMIREZ 1997-07-06 COL VENEZUELA SETORVSSDSDSDSIUDCVNEIFVBEDIVEFVEF  22091139 33876298 nuez.jeancarlos@gmail.com 15000'),(9,'tbl_empleado',1,'2020-10-04 08:07:12','root@localhost','Se actualizó un empleado','Información actualizada: 1 1 1 1 0801199714079 Jean Carlos Núñez Salgado 1997-07-06 Col venezuela sector B..... 22091139 33876298 nuez.jeancarlos@gmail.com 15000','Información anterior: 1 1 1 1 0801199714079 Jean Carlos Núñez Ramires 1997-07-06 Col venezuela sector B..... 22091139 33876298 nuez.jeancarlos@gmail.com 15000'),(10,'tbl_parametros',1,'2020-10-05 01:16:42','root@localhost','Se insertó un nuevo parámetro','Información insertada: ADMIN_INTENTOS 3 1 2020-10-04 2020-10-04',''),(11,'tbl_parametros',2,'2020-10-05 01:17:17','root@localhost','Se insertó un nuevo parámetro','Información insertada: ADMIN_PREGUNTAS 3 1 2020-10-04 2020-10-04',''),(12,'tbl_parametros',2,'2020-10-05 01:19:17','root@localhost','Se eliminó un parámetro','','Información eliminada: ADMIN_PREGUNTAS 3 1 2020-10-04 2020-10-04'),(13,'tbl_parametros',1,'2020-10-05 01:19:43','root@localhost','Se actualizó un parámetro','Información actualizada: ADMIN_INTENTOS 2 1 2020-10-04 2020-10-04','Información anterior: ADMIN_INTENTOS 3 1 2020-10-04 2020-10-04'),(14,'tbl_preguntas',1,'2020-10-05 04:36:48','root@localhost','Se insertó una nueva pregunta','Información insertada: ¿Cuál es el nombre de su mamá?',''),(15,'tbl_pregunta_usuario',1,'2020-10-05 04:38:59','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 1 Edis',''),(16,'tbl_empleado',2,'2020-10-11 02:39:25','root@localhost','Se insertó un nuevo empleado','Información insertada: 1 2 1 1 0801199714078 Carlos Fabricio Núñez Ramires 1997-07-06 fffffffffffffffffffffffffffffffff 22091139 33876298 nuez.jeancarlos@gmail.com 15000',''),(17,'tbl_usuario',1,'2020-10-14 06:18:32','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ 1234 1 2020-10-04 1 2020-10-04','Información anterior: 1 2 JNUÑEZ 1234 1 2020-10-04 1 2020-10-04'),(18,' tbl_empleado',2,'2020-10-15 03:56:04','root@localhost','Se eliminó un empleado','','Información eliminada: 1 2 1 1 0801199714078 Carlos Fabricio Núñez Ramires 1997-07-06 fffffffffffffffffffffffffffffffff 22091139 33876298 nuez.jeancarlos@gmail.com 15000'),(19,'tbl_empleado',3,'2020-10-15 04:57:48','root@localhost','Se insertó un nuevo empleado','Información insertada: 1 2 1 1 0801199714079 Carlos Fabricio Nuñez Ramires 1997-10-14 Col. Venezuela Sector B Bloque 8 casa 17 22278000 33876298  15000',''),(20,'tbl_empleado',3,'2020-10-16 05:46:45','root@localhost','Se actualizó un empleado','Información actualizada: 1 3 1 1  Carlos Fabricio Nuñez Ramires 0000-00-00 Col. Venezuela Sector B Bloque 8 casa 17 22278000 33876298  15000','Información anterior: 1 2 1 1 0801199714079 Carlos Fabricio Nuñez Ramires 1997-10-14 Col. Venezuela Sector B Bloque 8 casa 17 22278000 33876298  15000'),(21,'tbl_empleado',3,'2020-10-16 05:47:01','root@localhost','Se actualizó un empleado','Información actualizada: 1 1 1 1  Carlos Fabricio Nuñez Ramires 0000-00-00 Col. Venezuela Sector B Bloque 8 casa 17 22278000 33876298  15000','Información anterior: 1 3 1 1  Carlos Fabricio Nuñez Ramires 0000-00-00 Col. Venezuela Sector B Bloque 8 casa 17 22278000 33876298  15000'),(22,'tbl_empleado',8,'2020-10-16 06:20:42','root@localhost','Se insertó un nuevo empleado','Información insertada: 1 1 1 1 0801196800586 CARLOS HUMBERTO NUÑEZ 1963-10-14 SDOVJNBDFUVHDBFUVDFVDFVDF 22222222 99999999  15000',''),(23,'tbl_empleado',9,'2020-10-16 06:26:15','root@localhost','Se insertó un nuevo empleado','Información insertada: 1 5 1 1 0801199755555 JIMMY JAVIER RAMOS OSORTO 1990-10-22 SWDPIVJEFVFVDFVDFVDFS 22222222 99999999  20000',''),(24,'tbl_empleado',10,'2020-10-16 06:59:28','root@localhost','Se insertó un nuevo empleado','Información insertada: 3 1 2 1 0554169159651 MANUEL RAMOS 1960-10-15 VDCBGFGNFGNFG 22222222 99999999  20000',''),(25,' tbl_empleado',9,'2020-10-16 07:34:40','root@localhost','Se eliminó un empleado','','Información eliminada: 1 5 1 1 0801199755555 JIMMY JAVIER RAMOS OSORTO 1990-10-22 SWDPIVJEFVFVDFVDFVDFS 22222222 99999999 20000'),(26,'tbl_empleado',1,'2020-10-16 07:45:00','root@localhost','Se actualizó un empleado','Información actualizada: 1 2 1 1  Jean Carlos Núñez Salgado 0000-00-00 Col venezuela sector B..... 22091139 33876298 15000','Información anterior: 1 1 1 1 0801199714079 Jean Carlos Núñez Salgado 1997-07-06 Col venezuela sector B..... 22091139 33876298 15000'),(27,'tbl_empleado',10,'2020-10-17 20:36:22','root@localhost','Se actualizó un empleado','Información actualizada: 3 1 2 5  MANUEL RAMOS 0000-00-00 VDCBGFGNFGNFG 22222222 99999999 20000','Información anterior: 3 1 2 1 0554169159651 MANUEL RAMOS 1960-10-15 VDCBGFGNFGNFG 22222222 99999999 20000'),(28,'tbl_empleado',10,'2020-10-17 20:37:02','root@localhost','Se actualizó un empleado','Información actualizada: 1 1 2 5  MANUEL RAMOS 0000-00-00 VDCBGFGNFGNFG 22222222 99999999 20000','Información anterior: 3 1 2 5  MANUEL RAMOS 0000-00-00 VDCBGFGNFGNFG 22222222 99999999 20000'),(29,'tbl_empleado',10,'2020-10-17 20:37:19','root@localhost','Se actualizó un empleado','Información actualizada: 1 5 2 5  MANUEL RAMOS 0000-00-00 VDCBGFGNFGNFG 22222222 99999999 20000','Información anterior: 1 1 2 5  MANUEL RAMOS 0000-00-00 VDCBGFGNFGNFG 22222222 99999999 20000'),(30,'tbl_empleado',3,'2020-10-17 20:37:55','root@localhost','Se actualizó un empleado','Información actualizada: 1 3 2 6  Carlos Fabricio Nuñez Ramires 0000-00-00 Col. Venezuela Sector B Bloque 8 casa 17 22278000 33876298 30000','Información anterior: 1 1 1 1  Carlos Fabricio Nuñez Ramires 0000-00-00 Col. Venezuela Sector B Bloque 8 casa 17 22278000 33876298 15000'),(31,' tbl_empleado',10,'2020-10-17 20:40:33','root@localhost','Se eliminó un empleado','','Información eliminada: 1 5 2 5  MANUEL RAMOS 0000-00-00 VDCBGFGNFGNFG 22222222 99999999 20000'),(32,'tbl_empleado',11,'2020-10-17 20:42:43','root@localhost','Se insertó un nuevo empleado','Información insertada: 1 2 3 3 0801199714588 JOSUE ALLAN GONZALES RAMIRES 1987-10-08 WINFEIUFGEFVDFVDF 22222222 99999999  20000',''),(33,'tbl_usuario',1,'2020-10-17 22:01:13','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 2020-10-04 1 2020-10-04','Información anterior: 1 2 JNUNEZ 1234 1 2020-10-04 1 2020-10-04'),(34,'tbl_usuario',9,'2020-10-18 19:06:18','root@localhost','Se insertó un nuevo usuario','Información insertada: 11 1 JGONZALES OtvJY]Jf 1 1',''),(35,'tbl_usuario',1,'2020-10-18 22:36:21','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(36,'tbl_usuario',1,'2020-10-18 22:42:59','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),(37,'tbl_usuario',1,'2020-10-18 22:43:29','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(38,'tbl_usuario',9,'2020-10-18 22:43:54','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),(39,'tbl_usuario',1,'2020-10-18 22:44:48','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(40,'tbl_usuario',9,'2020-10-18 22:45:20','root@localhost','Se actualizó un usuario','Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(41,'tbl_usuario',9,'2020-10-18 22:45:26','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),(42,'tbl_usuario',9,'2020-10-18 22:45:53','root@localhost','Se actualizó un usuario','Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(43,'tbl_usuario',9,'2020-10-18 23:14:52','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),(44,'tbl_usuario',9,'2020-10-18 23:15:27','root@localhost','Se actualizó un usuario','Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(45,'tbl_usuario',9,'2020-10-18 23:15:41','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),(46,'tbl_usuario',9,'2020-10-18 23:15:46','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(47,'tbl_usuario',9,'2020-10-18 23:16:11','root@localhost','Se actualizó un usuario','Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(48,'tbl_usuario',9,'2020-10-18 23:17:22','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),(49,'tbl_usuario',9,'2020-10-18 23:20:09','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(50,'tbl_usuario',9,'2020-10-18 23:20:47','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(51,'tbl_usuario',9,'2020-10-18 23:20:58','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(52,'tbl_usuario',9,'2020-10-18 23:23:35','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(53,'tbl_usuario',9,'2020-10-18 23:23:46','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(54,'tbl_usuario',1,'2020-10-18 23:25:07','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),(55,'tbl_usuario',1,'2020-10-18 23:25:10','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(56,'tbl_usuario',1,'2020-10-18 23:25:40','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(57,'tbl_usuario',9,'2020-10-18 23:25:46','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(58,'tbl_usuario',9,'2020-10-18 23:28:01','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(59,'tbl_usuario',1,'2020-10-18 23:29:08','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(60,'tbl_usuario',9,'2020-10-18 23:30:16','root@localhost','Se actualizó un usuario','Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(61,'tbl_usuario',1,'2020-10-18 23:30:28','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(62,'tbl_usuario',1,'2020-10-18 23:31:45','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),(63,'tbl_usuario',1,'2020-10-18 23:31:45','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(64,'tbl_usuario',1,'2020-10-18 23:31:55','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),(65,'tbl_usuario',1,'2020-10-18 23:31:56','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(66,'tbl_usuario',9,'2020-10-18 23:32:02','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),(67,'tbl_usuario',9,'2020-10-18 23:32:02','root@localhost','Se actualizó un usuario','Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(68,'tbl_usuario',1,'2020-10-18 23:33:29','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),(69,'tbl_usuario',1,'2020-10-18 23:33:43','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(70,'tbl_usuario',1,'2020-10-18 23:34:30','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),(71,'tbl_usuario',1,'2020-10-18 23:34:40','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(72,'tbl_usuario',9,'2020-10-18 23:34:50','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),(73,'tbl_usuario',9,'2020-10-18 23:34:55','root@localhost','Se actualizó un usuario','Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(74,'tbl_usuario',9,'2020-10-18 23:37:23','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),(75,'tbl_usuario',1,'2020-10-18 23:37:25','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1','Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),(76,'tbl_usuario',1,'2020-10-18 23:39:34','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),(77,'tbl_usuario',1,'2020-10-18 23:39:49','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(78,'tbl_usuario',1,'2020-10-18 23:39:54','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),(79,'tbl_usuario',1,'2020-10-18 23:41:06','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(80,'tbl_usuario',1,'2020-10-18 23:41:21','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),(81,'tbl_usuario',1,'2020-10-18 23:42:57','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(82,'tbl_usuario',9,'2020-10-18 23:46:13','root@localhost','Se actualizó un usuario','Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(83,'tbl_usuario',1,'2020-10-18 23:46:26','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),(84,'tbl_usuario',1,'2020-10-18 23:46:38','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(85,'tbl_usuario',1,'2020-10-18 23:48:02','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),(86,'tbl_usuario',1,'2020-10-18 23:48:19','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(87,'tbl_usuario',1,'2020-10-19 04:44:22','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),(88,'tbl_usuario',9,'2020-10-19 04:44:36','root@localhost','Se actualizó un usuario','Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),(89,'tbl_usuario',9,'2020-10-19 04:45:57','root@localhost','Se actualizó un usuario','Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1','Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),(90,'tbl_usuario',1,'2020-10-19 06:31:55','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(91,'tbl_usuario',10,'2020-10-20 00:07:15','root@localhost','Se insertó un nuevo usuario','Información insertada: 8 1 CNUÑEZ Hf4,Qw9] 1 1',''),(92,'tbl_usuario',10,'2020-10-20 02:32:24','root@localhost','Se actualizó un usuario','Información actualizada: 8 2 CNUÑEZ Hf4,Qw9] 1 1','Información anterior: 8 1 CNUÑEZ Hf4,Qw9] 1 1'),(93,'tbl_usuario',10,'2020-10-20 02:32:31','root@localhost','Se actualizó un usuario','Información actualizada: 8 1 CNUÑEZ Hf4,Qw9] 1 1','Información anterior: 8 2 CNUÑEZ Hf4,Qw9] 1 1'),(94,'tbl_empleado',12,'2020-10-20 02:34:30','root@localhost','Se insertó un nuevo empleado','Información insertada: 1 1 5 7 0801199714078 WILDER EDUARDO RAMIRES  1982-09-05 SJDNVSDHOFIVBDVRFGBRGBRFGBGF 22222222 88888888  20000',''),(95,'tbl_usuario',11,'2020-10-20 02:35:38','root@localhost','Se insertó un nuevo usuario','Información insertada: 12 1 WRAMIRES Pv5{Qi0} 1 1',''),(96,'tbl_usuario',10,'2020-10-20 02:50:38','root@localhost','Se actualizó un usuario','Información actualizada: 8 2 CNUÑEZ Hf4,Qw9] 1 1','Información anterior: 8 1 CNUÑEZ Hf4,Qw9] 1 1'),(97,'tbl_usuario',12,'2020-10-20 04:18:37','root@localhost','Se insertó un nuevo usuario','Información insertada: 3 1 JNUNEZ Yv3%Vr8} 1 1',''),(98,'tbl_usuario',13,'2020-10-20 04:19:18','root@localhost','Se insertó un nuevo usuario','Información insertada: 3 1 JNUNEZ Ax3@Xa1& 1 1',''),(99,'tbl_empleado',14,'2020-10-20 06:37:06','root@localhost','Se insertó un nuevo empleado','Información insertada: 1 1 6 8 0801549841654 JEAN CARLOS RAMIRES 1980-10-19 SDNS8UDFCDSDSASAS 22222222 88888888  0',''),(100,'tbl_usuario',14,'2020-10-20 06:47:47','root@localhost','Se insertó un nuevo usuario','Información insertada: 14 4 JEANRAMIRESXXX Franclar#2020 5 1',''),(101,'tbl_usuario',14,'2020-10-20 06:51:36','root@localhost','Se actualizó un usuario','Información actualizada: 14 1 JEANRAMIRESXXX Franclar#2020 5 1','Información anterior: 14 4 JEANRAMIRESXXX Franclar#2020 5 1'),(102,'tbl_usuario',1,'2020-10-20 07:03:00','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),(103,'tbl_usuario',1,'2020-10-20 07:03:20','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(104,'tbl_usuario',1,'2020-10-21 16:16:29','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 0','Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),(105,'tbl_usuario',1,'2020-10-21 16:17:07','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 0','Información anterior: 1 2 JNUNEZ Franclar#2020 1 0'),(106,'tbl_parametros',1,'2020-10-21 16:18:24','root@localhost','Se actualizó un parámetro','Información actualizada: INTENTOS_INGRESO 2 1 2020-10-04 2020-10-04','Información anterior: ADMIN_INTENTOS 2 1 2020-10-04 2020-10-04'),(107,'tbl_parametros',1,'2020-10-21 16:20:22','root@localhost','Se actualizó un parámetro','Información actualizada: INTENTOS_INGRESO 2 1 2020-10-04 2020-10-04','Información anterior: INTENTOS_INGRESO 2 1 2020-10-04 2020-10-04'),(108,'tbl_parametros',1,'2020-10-21 16:44:41','root@localhost','Se actualizó un parámetro','Información actualizada: INTENTOS_INGR 2 1 2020-10-04 2020-10-04','Información anterior: INTENTOS_INGRESO 2 1 2020-10-04 2020-10-04'),(109,'tbl_parametros',1,'2020-10-21 17:26:10','root@localhost','Se actualizó un parámetro','Información actualizada: INTENTOS_INGRESO 2 1 2020-10-04 2020-10-04','Información anterior: INTENTOS_INGR 2 1 2020-10-04 2020-10-04'),(110,'tbl_parametros',1,'2020-10-21 17:35:15','root@localhost','Se actualizó un parámetro','Información actualizada: INTENTOS_INGRESO 4 1 2020-10-04 2020-10-04','Información anterior: INTENTOS_INGRESO 2 1 2020-10-04 2020-10-04'),(111,'tbl_parametros',2,'2020-10-21 17:39:35','root@localhost','Se insertó un nuevo parámetro','Información insertada: PREGUNTAS_RECUPERACIÓN 3',''),(112,'tbl_empleado',15,'2020-10-21 17:57:25','root@localhost','Se insertó un nuevo empleado','Información insertada: 1 1 1 5 8082121561551 DFDGBVGFBFGBFDGBF 1980-10-22 DFVBSDBDFGBDFGBFGFDGDFGFG 22222222 88888888  50000',''),(113,'tbl_empleado',15,'2020-10-21 17:58:05','root@localhost','Se actualizó un empleado','Información actualizada: 1 2 5 4  ASASAS 0000-00-00 ASDAS 22222222 88888888 100000','Información anterior: 1 1 1 5 8082121561551 DFDGBVGFBFGBFDGBF 1980-10-22 DFVBSDBDFGBDFGBFGFDGDFGFG 22222222 88888888 50000'),(114,' tbl_empleado',15,'2020-10-21 18:00:52','root@localhost','Se eliminó un empleado','','Información eliminada: 1 2 5 4  ASASAS 0000-00-00 ASDAS 22222222 88888888 100000'),(115,'tbl_empleado',16,'2020-10-21 18:01:18','root@localhost','Se insertó un nuevo empleado','Información insertada: 1 4 2 1 0801112124454 DFBDFGBFDGBFG 1987-10-22 GHNFGHNGHGH 22222222 88888888  20000',''),(116,'tbl_empleado',16,'2020-10-21 18:01:37','root@localhost','Se actualizó un empleado','Información actualizada: 1 4 2 1  DFBDFGBFD 0000-00-00 GHNFGHNGHGH 22222222 88888888 20000','Información anterior: 1 4 2 1 0801112124454 DFBDFGBFDGBFG 1987-10-22 GHNFGHNGHGH 22222222 88888888 20000'),(117,'tbl_empleado',16,'2020-10-21 18:02:43','root@localhost','Se actualizó un empleado','Información actualizada: 1 4 2 1  DFBDFGBFD 0000-00-00 GHNFGHNGHGH 22222222 88888888 20000','Información anterior: 1 4 2 1  DFBDFGBFD 0000-00-00 GHNFGHNGHGH 22222222 88888888 20000'),(118,'tbl_empleado',16,'2020-10-21 18:02:49','root@localhost','Se actualizó un empleado','Información actualizada: 1 4 2 1  DFBDFGBFD 0000-00-00 GHNFGHNGHGH 22222222 88888888 20000','Información anterior: 1 4 2 1  DFBDFGBFD 0000-00-00 GHNFGHNGHGH 22222222 88888888 20000'),(119,'tbl_empleado',14,'2020-10-21 18:05:58','root@localhost','Se actualizó un empleado','Información actualizada: 1 1 6 8 0801549841654 JEAN CARLOS RAMIRES 1980-10-19 SDNS8UDFCDSDSASAS 22222222 88888888 200000','Información anterior: 1 1 6 8 0801549841654 JEAN CARLOS RAMIRES 1980-10-19 SDNS8UDFCDSDSASAS 22222222 88888888 0'),(120,'tbl_empleado',14,'2020-10-21 18:06:18','root@localhost','Se actualizó un empleado','Información actualizada: 1 1 2 1 0801549841654 JEAN CARLOS RAMIRES 1980-10-19 SDNS8UDFCDSDSASAS 22222222 88888888 200000','Información anterior: 1 1 6 8 0801549841654 JEAN CARLOS RAMIRES 1980-10-19 SDNS8UDFCDSDSASAS 22222222 88888888 200000'),(121,' tbl_empleado',14,'2020-10-21 18:06:27','root@localhost','Se eliminó un empleado','','Información eliminada: 1 1 2 1 0801549841654 JEAN CARLOS RAMIRES 1980-10-19 SDNS8UDFCDSDSASAS 22222222 88888888 200000'),(122,' tbl_empleado',16,'2020-10-21 18:06:29','root@localhost','Se eliminó un empleado','','Información eliminada: 1 4 2 1  DFBDFGBFD 0000-00-00 GHNFGHNGHGH 22222222 88888888 20000'),(123,'tbl_usuario',13,'2020-10-21 18:07:49','root@localhost','Se actualizó un usuario','Información actualizada: 3 2 JNUNEZ Ax3@Xa1& 1 1','Información anterior: 3 1 JNUNEZ Ax3@Xa1& 1 1'),(124,'tbl_usuario',13,'2020-10-21 18:11:29','root@localhost','Se actualizó un usuario','Información actualizada: 3 1 JNUNEZ Ax3@Xa1& 1 1','Información anterior: 3 2 JNUNEZ Ax3@Xa1& 1 1'),(125,'tbl_usuario',13,'2020-10-21 18:12:21','root@localhost','Se actualizó un usuario','Información actualizada: 3 2 JNUNEZ Ax3@Xa1& 1 1','Información anterior: 3 1 JNUNEZ Ax3@Xa1& 1 1'),(126,'tbl_usuario',12,'2020-10-21 18:12:25','root@localhost','Se actualizó un usuario','Información actualizada: 3 2 JNUNEZ Yv3%Vr8} 1 1','Información anterior: 3 1 JNUNEZ Yv3%Vr8} 1 1'),(127,'tbl_usuario',12,'2020-10-21 18:12:29','root@localhost','Se actualizó un usuario','Información actualizada: 3 1 JNUNEZ Yv3%Vr8} 1 1','Información anterior: 3 2 JNUNEZ Yv3%Vr8} 1 1'),(128,'tbl_usuario',11,'2020-10-21 21:34:26','root@localhost','Se actualizó un usuario','Información actualizada: 12 1 WRAMIRES Pv5{Qi0} 3 1','Información anterior: 12 1 WRAMIRES Pv5{Qi0} 1 1'),(129,'tbl_usuario',11,'2020-10-21 21:34:58','root@localhost','Se actualizó un usuario','Información actualizada: 12 1 WRAMIRES Pv5{Qi0} 4 1','Información anterior: 12 1 WRAMIRES Pv5{Qi0} 3 1'),(130,'tbl_preguntas',2,'2020-10-21 22:27:30','root@localhost','Se insertó una nueva pregunta','Información insertada: ¿Cuál es el nombre de su primer mascota?',''),(131,'tbl_preguntas',1,'2020-10-21 22:27:52','root@localhost','Se actualizó una nueva pregunta','Información actualizada: ¿Cuál es el nombre de su mamá?','Información anterior: ¿Cuál es el nombre de su mamá?'),(132,'tbl_preguntas',3,'2020-10-21 22:28:33','root@localhost','Se insertó una nueva pregunta','Información insertada: ¿Cuál es su color favorito?',''),(133,'tbl_usuario',10,'2020-10-21 23:24:13','root@localhost','Se actualizó un usuario','Información actualizada: 8 1 CNUÑEZ Hf4,Qw9] 1 1','Información anterior: 8 2 CNUÑEZ Hf4,Qw9] 1 1'),(134,'tbl_usuario',13,'2020-10-21 23:24:47','root@localhost','Se actualizó un usuario','Información actualizada: 3 1 JNUNEZ Ax3@Xa1& 1 1','Información anterior: 3 2 JNUNEZ Ax3@Xa1& 1 1'),(135,'tbl_usuario',1,'2020-10-21 23:24:59','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 0','Información anterior: 1 1 JNUNEZ Franclar#2020 1 0'),(136,'tbl_usuario',12,'2020-10-21 23:26:44','root@localhost','Se eliminó un usuario','','Información eliminada: 3 1 JNUNEZ Yv3%Vr8} 1 1'),(137,'tbl_usuario',13,'2020-10-21 23:26:45','root@localhost','Se eliminó un usuario','','Información eliminada: 3 1 JNUNEZ Ax3@Xa1& 1 1'),(138,'tbl_usuario',1,'2020-10-21 23:27:35','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 JNUNEZ Franclar#2020 1 0','Información anterior: 1 2 JNUNEZ Franclar#2020 1 0'),(139,'tbl_usuario',1,'2020-10-21 23:27:46','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 0','Información anterior: 1 2 JNUNEZ Franclar#2020 1 0'),(140,'tbl_pregunta_usuario',1,'2020-10-22 00:10:25','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 1 1 Edis'),(141,'tbl_pregunta_usuario',2,'2020-10-22 00:13:50','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 1 dddgfbdgdfgfg',''),(142,'tbl_pregunta_usuario',3,'2020-10-22 00:13:50','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 2 1 dfgbfgbfbfg',''),(143,'tbl_empleado',17,'2020-10-22 01:02:45','root@localhost','Se insertó un nuevo empleado','Información insertada: 1 1 6 8 0801199714079 JEAN CARLOS NUEZ 1980-10-14 ASDSDJNSDSDSDSDD 22222222 99999999  0',''),(144,'tbl_usuario',15,'2020-10-22 01:03:52','root@localhost','Se insertó un nuevo usuario','Información insertada: 17 4 JEANNUÑEZ Minuto#2020 5 1',''),(145,'tbl_usuario',15,'2020-10-22 01:05:49','root@localhost','Se actualizó un usuario','Información actualizada: 17 4 JEANNUÑEZ Minuto#2020 5 0','Información anterior: 17 4 JEANNUÑEZ Minuto#2020 5 1'),(146,'tbl_usuario',15,'2020-10-22 01:09:41','root@localhost','Se actualizó un usuario','Información actualizada: 17 4 JEANNUNEZ Minuto#2020 5 0','Información anterior: 17 4 JEANNUÑEZ Minuto#2020 5 0'),(147,'tbl_usuario',15,'2020-10-22 01:16:34','root@localhost','Se actualizó un usuario','Información actualizada: 17 1 JEANNUNEZ Minuto#2020 5 0','Información anterior: 17 4 JEANNUNEZ Minuto#2020 5 0'),(148,'tbl_usuario',1,'2020-10-22 01:16:48','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 0','Información anterior: 1 1 JNUNEZ Franclar#2020 1 0'),(149,'tbl_usuario',1,'2020-10-22 01:17:01','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 JNUNEZ Franclar#2020 1 0','Información anterior: 1 1 JNUNEZ Franclar#2020 1 0'),(150,'tbl_empleado',18,'2020-10-22 01:19:04','root@localhost','Se insertó un nuevo empleado','Información insertada: 1 1 1 2 0801199714079 JOSUE ROLANDO RAMIRES GONZALES 1997-10-14 AASSDSSSDDSDSSSDSDSD 22222222 99999999  20000',''),(151,'tbl_usuario',16,'2020-10-22 01:21:38','root@localhost','Se insertó un nuevo usuario','Información insertada: 18 1 JOSUERAMIRES Xi0_Sa7] 1 1',''),(152,'tbl_usuario',10,'2020-10-22 01:23:13','root@localhost','Se actualizó un usuario','Información actualizada: 8 1 CNUÑEZ Hf4,Qw9] 2 0','Información anterior: 8 1 CNUÑEZ Hf4,Qw9] 1 1'),(153,'tbl_usuario',11,'2020-10-22 01:24:39','root@localhost','Se actualizó un usuario','Información actualizada: 12 1 WRAMIRES Minuto.87# 4 0','Información anterior: 12 1 WRAMIRES Pv5{Qi0} 4 1'),(154,'tbl_usuario',11,'2020-10-22 01:25:00','root@localhost','Se actualizó un usuario','Información actualizada: 12 1 WRAMIRES Minuto.87# 2 0','Información anterior: 12 1 WRAMIRES Minuto.87# 4 0'),(155,'tbl_empleado',19,'2020-10-22 01:43:11','root@localhost','Se insertó un nuevo empleado','Información insertada: 1 1 1 1 0801199999999 JEAN JOSUE GONZALES RAMOS 1987-10-12 SKKSSKSKSSSSSSS JSSSS 22222222 99999999  200000',''),(156,'tbl_usuario',17,'2020-10-22 01:46:55','root@localhost','Se insertó un nuevo usuario','Información insertada: 19 1 JOSUERAMOS Ep4:Ih8/ 1 1',''),(157,'tbl_usuario',17,'2020-10-22 01:47:52','root@localhost','Se actualizó un usuario','Información actualizada: 19 1 JOSUERAMOS Ep4:Ih8/ 1 1','Información anterior: 19 1 JOSUERAMOS Ep4:Ih8/ 1 1'),(158,'tbl_usuario',17,'2020-10-22 01:48:03','root@localhost','Se actualizó un usuario','Información actualizada: 19 2 JOSUERAMOS Ep4:Ih8/ 1 1','Información anterior: 19 1 JOSUERAMOS Ep4:Ih8/ 1 1'),(159,'tbl_empleado',20,'2020-10-22 01:55:47','root@localhost','Se insertó un nuevo empleado','Información insertada: 1 1 6 8 0801115556666 JOSUE CACERES ACOSTA 1980-10-04 SDSDCSDCSDCSD 22222222 99999999  0',''),(160,'tbl_usuario',18,'2020-10-22 01:56:25','root@localhost','Se insertó un nuevo usuario','Información insertada: 20 4 JOSUERS Minuto.85 5 1',''),(161,'tbl_usuario',18,'2020-10-22 22:00:44','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85 5 1','Información anterior: 20 4 JOSUERS Minuto.85 5 1'),(162,'tbl_usuario',1,'2020-10-23 01:56:57','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 ADMIN Franclar#2020 1 0','Información anterior: 1 1 JNUNEZ Franclar#2020 1 0'),(163,'tbl_usuario',11,'2020-10-23 03:33:17','root@localhost','Se actualizó un usuario','Información actualizada: 12 2 WRAMIRES Minuto.87# 2 0','Información anterior: 12 1 WRAMIRES Minuto.87# 2 0'),(164,'tbl_usuario',18,'2020-10-26 03:44:23','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 5 1','Información anterior: 20 1 JOSUERS Minuto.85 5 1'),(165,'tbl_pregunta_usuario',17,'2020-10-26 05:39:28','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 18 assasaasas',''),(166,'tbl_pregunta_usuario',18,'2020-10-26 05:39:57','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 18 assasaasasa',''),(167,'tbl_pregunta_usuario',19,'2020-10-26 05:40:56','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 3 18 aaaaaaaaaaaaaaa',''),(168,'tbl_pregunta_usuario',20,'2020-10-26 05:49:08','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 2 18 asasasaaa',''),(169,'tbl_usuario',18,'2020-10-26 05:49:09','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 5 1','Información anterior: 20 1 JOSUERS Minuto.85# 5 1'),(170,'tbl_pregunta_usuario',21,'2020-10-26 05:49:48','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 3 18 aaaaaassfgghng',''),(171,'tbl_usuario',18,'2020-10-26 05:49:48','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 5 1','Información anterior: 20 1 JOSUERS Minuto.85# 5 1'),(172,'tbl_pregunta_usuario',22,'2020-10-26 05:56:22','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 2 18 sdfivbdfvdsfsdfdf',''),(173,'tbl_usuario',18,'2020-10-26 05:56:22','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 5 1','Información anterior: 20 1 JOSUERS Minuto.85# 5 1'),(174,'tbl_pregunta_usuario',23,'2020-10-26 05:56:44','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 18 lolololololo',''),(175,'tbl_usuario',18,'2020-10-26 05:56:44','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 5 1','Información anterior: 20 1 JOSUERS Minuto.85# 5 1'),(176,'tbl_pregunta_usuario',24,'2020-10-26 05:57:05','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 2 18 assaeeeewewew',''),(177,'tbl_usuario',18,'2020-10-26 05:57:05','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 5 1','Información anterior: 20 1 JOSUERS Minuto.85# 5 1'),(178,'tbl_pregunta_usuario',25,'2020-10-26 06:00:25','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 18 dsdasawwwwwww',''),(179,'tbl_usuario',18,'2020-10-26 06:00:26','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 5 1','Información anterior: 20 1 JOSUERS Minuto.85# 5 1'),(180,'tbl_pregunta_usuario',26,'2020-10-26 06:02:28','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 18 ñññññññññññññoooooooooooo',''),(181,'tbl_usuario',18,'2020-10-26 06:02:28','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 5 1','Información anterior: 20 1 JOSUERS Minuto.85# 5 1'),(182,'tbl_pregunta_usuario',27,'2020-10-26 06:07:51','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 2 18 aasassddñññ',''),(183,'tbl_usuario',18,'2020-10-26 06:07:51','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 5 1','Información anterior: 20 1 JOSUERS Minuto.85# 5 1'),(184,'tbl_usuario',18,'2020-10-26 06:08:11','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 5 1','Información anterior: 20 1 JOSUERS Minuto.85# 5 1'),(185,'tbl_pregunta_usuario',28,'2020-10-26 06:08:35','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 18 ssdsdrtttyty',''),(186,'tbl_usuario',18,'2020-10-26 06:08:35','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 5 1','Información anterior: 20 1 JOSUERS Minuto.85# 5 1'),(187,'tbl_pregunta_usuario',29,'2020-10-26 06:08:43','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 2 18 aassdsdtrttss',''),(188,'tbl_usuario',18,'2020-10-26 06:08:43','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 5 1','Información anterior: 20 1 JOSUERS Minuto.85# 5 1'),(189,'tbl_pregunta_usuario',30,'2020-10-26 06:08:48','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 3 18 sdsdyyhyhyh',''),(190,'tbl_usuario',18,'2020-10-26 06:08:48','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 5 1','Información anterior: 20 1 JOSUERS Minuto.85# 5 1'),(191,'tbl_usuario',18,'2020-10-27 01:16:37','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 5 1'),(192,'tbl_pregunta_usuario',2,'2020-10-27 01:17:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 1 1 dddgfbdgdfgfg'),(193,'tbl_pregunta_usuario',3,'2020-10-27 01:17:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 2 1 dfgbfgbfbfg'),(194,'tbl_pregunta_usuario',17,'2020-10-27 01:17:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 1 18 assasaasas'),(195,'tbl_pregunta_usuario',18,'2020-10-27 01:17:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 1 18 assasaasasa'),(196,'tbl_pregunta_usuario',19,'2020-10-27 01:17:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 3 18 aaaaaaaaaaaaaaa'),(197,'tbl_pregunta_usuario',20,'2020-10-27 01:17:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 2 18 asasasaaa'),(198,'tbl_pregunta_usuario',21,'2020-10-27 01:17:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 3 18 aaaaaassfgghng'),(199,'tbl_pregunta_usuario',22,'2020-10-27 01:17:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 2 18 sdfivbdfvdsfsdfdf'),(200,'tbl_pregunta_usuario',23,'2020-10-27 01:17:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 1 18 lolololololo'),(201,'tbl_pregunta_usuario',24,'2020-10-27 01:17:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 2 18 assaeeeewewew'),(202,'tbl_pregunta_usuario',25,'2020-10-27 01:17:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 1 18 dsdasawwwwwww'),(203,'tbl_pregunta_usuario',26,'2020-10-27 01:17:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 1 18 ñññññññññññññoooooooooooo'),(204,'tbl_pregunta_usuario',27,'2020-10-27 01:17:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 2 18 aasassddñññ'),(205,'tbl_pregunta_usuario',28,'2020-10-27 01:17:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 1 18 ssdsdrtttyty'),(206,'tbl_pregunta_usuario',29,'2020-10-27 01:17:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 2 18 aassdsdtrttss'),(207,'tbl_pregunta_usuario',30,'2020-10-27 01:17:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 3 18 sdsdyyhyhyh'),(208,'tbl_preguntas',4,'2020-10-27 01:21:33','root@localhost','Se insertó una nueva pregunta','Información insertada: ¿Cuál es su comida favorita?',''),(209,'tbl_preguntas',5,'2020-10-27 01:36:56','root@localhost','Se insertó una nueva pregunta','Información insertada: ¿Cuál es el nombre de su padre?',''),(210,'tbl_preguntas',6,'2020-10-27 01:36:56','root@localhost','Se insertó una nueva pregunta','Información insertada: ¿Cómo se llama su primo mayor?',''),(211,'tbl_preguntas',7,'2020-10-27 01:36:56','root@localhost','Se insertó una nueva pregunta','Información insertada: ¿Cómo se llama su tío favorito?',''),(212,'tbl_preguntas',8,'2020-10-27 01:36:56','root@localhost','Se insertó una nueva pregunta','Información insertada: ¿Cómo se llama su primera escuela?',''),(213,'tbl_preguntas',9,'2020-10-27 01:36:56','root@localhost','Se insertó una nueva pregunta','Información insertada: ¿Cómo se llama su tía favorita?',''),(214,'tbl_preguntas',10,'2020-10-27 01:36:56','root@localhost','Se insertó una nueva pregunta','Información insertada: ¿Cuál es el nombre de su primer pareja?',''),(215,'tbl_pregunta_usuario',31,'2020-10-27 01:39:44','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 18 EDIS',''),(216,'tbl_usuario',18,'2020-10-27 01:39:44','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(217,'tbl_pregunta_usuario',32,'2020-10-27 01:39:55','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 18 EDIS',''),(218,'tbl_usuario',18,'2020-10-27 01:39:55','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(219,'tbl_pregunta_usuario',33,'2020-10-27 01:40:05','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 2 18 ROKY',''),(220,'tbl_usuario',18,'2020-10-27 01:40:05','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(221,'tbl_pregunta_usuario',31,'2020-10-27 01:47:35','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 1 18 EDIS'),(222,'tbl_pregunta_usuario',32,'2020-10-27 01:47:35','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 1 18 EDIS'),(223,'tbl_pregunta_usuario',33,'2020-10-27 01:47:42','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 2 18 ROKY'),(224,'tbl_pregunta_usuario',34,'2020-10-27 01:48:02','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 18 EDIS',''),(225,'tbl_usuario',18,'2020-10-27 01:48:02','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(226,'tbl_pregunta_usuario',34,'2020-10-27 01:48:18','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 1 18 EDIS'),(227,'tbl_usuario',18,'2020-10-27 01:48:35','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(228,'tbl_pregunta_usuario',35,'2020-10-27 01:48:47','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 18 EDIS',''),(229,'tbl_usuario',18,'2020-10-27 01:48:47','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(230,'tbl_pregunta_usuario',35,'2020-10-27 01:49:34','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 1 18 EDIS'),(231,'tbl_usuario',18,'2020-10-27 01:49:54','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(232,'tbl_pregunta_usuario',36,'2020-10-27 01:51:07','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 18 EDIS',''),(233,'tbl_usuario',18,'2020-10-27 01:51:07','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(234,'tbl_pregunta_usuario',37,'2020-10-27 01:51:20','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 2 18 ROKY',''),(235,'tbl_usuario',18,'2020-10-27 01:51:20','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(236,'tbl_pregunta_usuario',38,'2020-10-27 01:51:33','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 3 18 ROJO',''),(237,'tbl_usuario',18,'2020-10-27 01:51:33','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(238,'tbl_usuario',18,'2020-10-27 03:25:02','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(239,'tbl_pregunta_usuario',36,'2020-10-27 03:26:20','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 1 18 EDIS'),(240,'tbl_pregunta_usuario',37,'2020-10-27 03:26:21','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 2 18 ROKY'),(241,'tbl_pregunta_usuario',38,'2020-10-27 03:26:21','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 3 18 ROJO'),(242,'tbl_pregunta_usuario',39,'2020-10-27 03:27:02','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 18 PANCHA',''),(243,'tbl_usuario',18,'2020-10-27 03:27:02','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(244,'tbl_pregunta_usuario',40,'2020-10-27 03:27:40','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 2 18 ROKY',''),(245,'tbl_usuario',18,'2020-10-27 03:27:40','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(246,'tbl_pregunta_usuario',41,'2020-10-27 03:28:07','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 3 18 ROJO',''),(247,'tbl_usuario',18,'2020-10-27 03:28:07','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(248,'tbl_usuario',1,'2020-10-27 05:06:05','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 ADMIN Franclar#2020 1 0','Información anterior: 1 1 ADMIN Franclar#2020 1 0'),(249,'tbl_usuario',18,'2020-10-29 05:10:24','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(250,'tbl_usuario',18,'2020-10-29 05:11:36','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(251,'tbl_pregunta_usuario',39,'2020-10-29 05:12:25','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 1 18 PANCHA'),(252,'tbl_pregunta_usuario',40,'2020-10-29 05:12:26','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 2 18 ROKY'),(253,'tbl_pregunta_usuario',41,'2020-10-29 05:12:26','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 3 18 ROJO'),(254,'tbl_pregunta_usuario',42,'2020-10-29 05:12:33','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 18 asasasas',''),(255,'tbl_usuario',18,'2020-10-29 05:12:33','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(256,'tbl_pregunta_usuario',43,'2020-10-29 05:12:52','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 2 18 sdsdsd',''),(257,'tbl_usuario',18,'2020-10-29 05:12:52','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(258,'tbl_pregunta_usuario',44,'2020-10-29 05:12:58','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 3 18 asasas',''),(259,'tbl_usuario',18,'2020-10-29 05:12:58','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto.85# 3 1','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(260,'tbl_usuario',18,'2020-10-29 05:44:07','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto85# 3 0','Información anterior: 20 1 JOSUERS Minuto.85# 3 1'),(261,'tbl_usuario',18,'2020-10-29 05:45:19','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto85.# 3 1','Información anterior: 20 1 JOSUERS Minuto85# 3 0'),(262,'tbl_pregunta_usuario',42,'2020-10-29 05:45:49','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 1 18 asasasas'),(263,'tbl_pregunta_usuario',43,'2020-10-29 05:45:49','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 2 18 sdsdsd'),(264,'tbl_pregunta_usuario',44,'2020-10-29 05:45:49','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 3 18 asasas'),(265,'tbl_pregunta_usuario',45,'2020-10-29 05:45:56','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 18 asasas',''),(266,'tbl_usuario',18,'2020-10-29 05:45:56','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto85.# 3 1','Información anterior: 20 1 JOSUERS Minuto85.# 3 1'),(267,'tbl_pregunta_usuario',46,'2020-10-29 05:46:01','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 2 18 asasas',''),(268,'tbl_usuario',18,'2020-10-29 05:46:01','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto85.# 3 1','Información anterior: 20 1 JOSUERS Minuto85.# 3 1'),(269,'tbl_pregunta_usuario',47,'2020-10-29 05:46:08','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 3 18 aasas',''),(270,'tbl_usuario',18,'2020-10-29 05:46:08','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto85.# 3 1','Información anterior: 20 1 JOSUERS Minuto85.# 3 1'),(271,'tbl_usuario',18,'2020-10-29 05:47:06','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto#2020 3 0','Información anterior: 20 1 JOSUERS Minuto85.# 3 1'),(272,'tbl_usuario',18,'2020-10-29 05:48:04','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto#20201 3 0','Información anterior: 20 1 JOSUERS Minuto#2020 3 0'),(273,'tbl_usuario',18,'2020-11-04 23:19:49','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto#20201 3 1','Información anterior: 20 1 JOSUERS Minuto#20201 3 0'),(274,'tbl_pregunta_usuario',45,'2020-11-04 23:20:37','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 1 18 asasas'),(275,'tbl_pregunta_usuario',46,'2020-11-04 23:20:37','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 2 18 asasas'),(276,'tbl_pregunta_usuario',47,'2020-11-04 23:20:37','root@localhost','Se eliminó una respuesta de un usuario','','Información eliminada: 3 18 aasas'),(277,'tbl_pregunta_usuario',48,'2020-11-04 23:31:16','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 18 sdsdfdsfdf',''),(278,'tbl_usuario',18,'2020-11-04 23:31:16','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto#20201 3 1','Información anterior: 20 1 JOSUERS Minuto#20201 3 1'),(279,'tbl_pregunta_usuario',49,'2020-11-04 23:31:34','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 2 18 sasdsd',''),(280,'tbl_usuario',18,'2020-11-04 23:31:34','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto#20201 3 1','Información anterior: 20 1 JOSUERS Minuto#20201 3 1'),(281,'tbl_pregunta_usuario',50,'2020-11-04 23:31:40','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 3 18 sdsd',''),(282,'tbl_usuario',18,'2020-11-04 23:31:40','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto#20201 3 1','Información anterior: 20 1 JOSUERS Minuto#20201 3 1'),(283,'tbl_usuario',18,'2020-11-04 23:32:45','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto#20202 3 0','Información anterior: 20 1 JOSUERS Minuto#20201 3 1'),(284,'tbl_usuario',18,'2020-11-05 01:48:19','root@localhost','Se actualizó un usuario','Información actualizada: 20 3 JOSUERS Minuto#20202 3 0','Información anterior: 20 1 JOSUERS Minuto#20202 3 0'),(285,'tbl_usuario',18,'2020-11-05 01:49:51','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto#2020 3 0','Información anterior: 20 3 JOSUERS Minuto#20202 3 0'),(286,'tbl_usuario',18,'2020-11-05 01:51:47','root@localhost','Se actualizó un usuario','Información actualizada: 20 3 JOSUERS Minuto#2020 3 0','Información anterior: 20 1 JOSUERS Minuto#2020 3 0'),(287,'tbl_usuario',18,'2020-11-05 01:52:40','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto$2020 3 0','Información anterior: 20 3 JOSUERS Minuto#2020 3 0'),(288,'tbl_usuario',18,'2020-11-05 01:56:09','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 1 JOSUERS Minuto$2020 3 0'),(289,'tbl_usuario',18,'2020-11-05 01:57:00','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(290,'tbl_parametros',1,'2020-11-05 02:06:18','root@localhost','Se actualizó un parámetro','Información actualizada: INTENTOS_INGRESO 2','Información anterior: INTENTOS_INGRESO 4'),(291,'tbl_usuario',18,'2020-11-05 02:06:27','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(292,'tbl_usuario',18,'2020-11-05 02:06:50','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(293,'tbl_usuario',18,'2020-11-05 02:07:22','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(294,'tbl_usuario',18,'2020-11-05 02:07:48','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(295,'tbl_usuario',18,'2020-11-05 02:09:26','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(296,'tbl_usuario',18,'2020-11-05 02:13:13','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(297,'tbl_usuario',18,'2020-11-05 03:46:34','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 1','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(298,'tbl_usuario',18,'2020-11-05 03:54:28','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 1'),(299,'tbl_usuario',18,'2020-11-05 04:03:43','root@localhost','Se actualizó un usuario','Información actualizada: 20 3 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(300,'tbl_usuario',18,'2020-11-05 04:16:31','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto$2020 3 0','Información anterior: 20 3 JOSUERS Minuto$2020 3 0'),(301,'tbl_usuario',18,'2020-11-05 04:17:16','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 1 JOSUERS Minuto$2020 3 0'),(302,'tbl_usuario',18,'2020-11-05 04:17:39','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(303,'tbl_usuario',18,'2020-11-05 04:18:02','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 1 JOSUERS Minuto$2020 3 0'),(304,'tbl_usuario',18,'2020-11-05 04:18:56','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(305,'tbl_usuario',18,'2020-11-05 04:19:50','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 1 JOSUERS Minuto$2020 3 0'),(306,'tbl_usuario',18,'2020-11-05 04:20:03','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(307,'tbl_usuario',18,'2020-11-05 04:21:51','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 1 JOSUERS Minuto$2020 3 0'),(308,'tbl_usuario',18,'2020-11-05 04:22:02','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(309,'tbl_usuario',18,'2020-11-05 04:25:34','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 1 JOSUERS Minuto$2020 3 0'),(310,'tbl_usuario',18,'2020-11-05 04:25:47','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(311,'tbl_usuario',18,'2020-11-05 04:26:17','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 1 JOSUERS Minuto$2020 3 0'),(312,'tbl_usuario',18,'2020-11-05 04:26:25','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(313,'tbl_usuario',18,'2020-11-05 04:28:43','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 1 JOSUERS Minuto$2020 3 0'),(314,'tbl_usuario',18,'2020-11-05 04:28:52','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(315,'tbl_usuario',18,'2020-11-05 04:36:30','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 1 JOSUERS Minuto$2020 3 0'),(316,'tbl_usuario',18,'2020-11-05 04:36:48','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(317,'tbl_usuario',18,'2020-11-05 04:46:35','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(318,'tbl_usuario',18,'2020-11-05 04:47:33','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 1 JOSUERS Minuto$2020 3 0'),(319,'tbl_usuario',18,'2020-11-05 04:48:05','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(320,'tbl_usuario',18,'2020-11-05 04:51:31','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(321,'tbl_usuario',18,'2020-11-05 05:14:02','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(322,'tbl_usuario',18,'2020-11-05 05:14:12','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 1 JOSUERS Minuto$2020 3 0'),(323,'tbl_usuario',18,'2020-11-05 05:14:54','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(324,'tbl_usuario',18,'2020-11-05 05:25:00','root@localhost','Se actualizó un usuario','Información actualizada: 20 3 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(325,'tbl_usuario',18,'2020-11-05 05:25:38','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto$2020 3 0','Información anterior: 20 3 JOSUERS Minuto$2020 3 0'),(326,'tbl_usuario',18,'2020-11-05 05:26:14','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 1 JOSUERS Minuto$2020 3 0'),(327,'tbl_usuario',18,'2020-11-05 05:27:19','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(328,'tbl_usuario',18,'2020-11-05 05:27:38','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 1 JOSUERS Minuto$2020 3 0'),(329,'tbl_usuario',18,'2020-11-05 05:29:10','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(330,'tbl_usuario',18,'2020-11-05 05:40:32','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 1 JOSUERS Minuto$2020 3 0'),(331,'tbl_usuario',18,'2020-11-05 05:40:40','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(332,'tbl_usuario',18,'2020-11-05 05:46:25','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 1 JOSUERS Minuto$2020 3 0'),(333,'tbl_usuario',18,'2020-11-05 05:46:40','root@localhost','Se actualizó un usuario','Información actualizada: 20 1 JOSUERS Minuto$2020 3 0','Información anterior: 20 2 JOSUERS Minuto$2020 3 0'),(334,'tbl_usuario',18,'2020-11-05 06:18:41','root@localhost','Se actualizó un usuario','Información actualizada: 20 2 JOSUERS Minuto$2020 3 0','Información anterior: 20 1 JOSUERS Minuto$2020 3 0'),(335,'tbl_usuario',11,'2020-11-05 06:20:09','root@localhost','Se actualizó un usuario','Información actualizada: 12 1 WRAMIRES Minuto.87# 2 1','Información anterior: 12 2 WRAMIRES Minuto.87# 2 0'),(336,'tbl_usuario',11,'2020-11-05 06:21:01','root@localhost','Se actualizó un usuario','Información actualizada: 12 2 WRAMIRES Minuto.87# 2 1','Información anterior: 12 1 WRAMIRES Minuto.87# 2 1'),(337,'tbl_pregunta_usuario',51,'2020-11-05 06:25:20','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 1 11 XXX',''),(338,'tbl_usuario',11,'2020-11-05 06:25:20','root@localhost','Se actualizó un usuario','Información actualizada: 12 2 WRAMIRES Minuto.87# 2 1','Información anterior: 12 2 WRAMIRES Minuto.87# 2 1'),(339,'tbl_pregunta_usuario',52,'2020-11-05 06:25:26','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 2 11 XXX',''),(340,'tbl_usuario',11,'2020-11-05 06:25:26','root@localhost','Se actualizó un usuario','Información actualizada: 12 2 WRAMIRES Minuto.87# 2 1','Información anterior: 12 2 WRAMIRES Minuto.87# 2 1'),(341,'tbl_pregunta_usuario',53,'2020-11-05 06:25:33','root@localhost','Se insertó una nueva respuesta de un usuario','Información insertada: 3 11 XXX',''),(342,'tbl_usuario',11,'2020-11-05 06:25:33','root@localhost','Se actualizó un usuario','Información actualizada: 12 2 WRAMIRES Minuto.87# 2 1','Información anterior: 12 2 WRAMIRES Minuto.87# 2 1'),(343,'tbl_usuario',11,'2020-11-05 06:27:27','root@localhost','Se actualizó un usuario','Información actualizada: 12 1 WRAMIRES Minuto$2020 2 0','Información anterior: 12 2 WRAMIRES Minuto.87# 2 1'),(344,'tbl_usuario',11,'2020-11-05 06:28:33','root@localhost','Se actualizó un usuario','Información actualizada: 12 2 WRAMIRES Minuto$2020 2 0','Información anterior: 12 1 WRAMIRES Minuto$2020 2 0'),(345,'tbl_usuario',11,'2020-11-05 06:29:37','root@localhost','Se actualizó un usuario','Información actualizada: 12 3 WRAMIRES Minuto$2020 2 0','Información anterior: 12 2 WRAMIRES Minuto$2020 2 0'),(346,'tbl_usuario',11,'2020-11-05 06:31:18','root@localhost','Se actualizó un usuario','Información actualizada: 12 1 WRAMIRES Minuto#2020 2 0','Información anterior: 12 3 WRAMIRES Minuto$2020 2 0'),(347,'tbl_empleado',21,'2020-11-12 19:04:08','root@localhost','Se insertó un nuevo empleado','Información insertada: 1 1 1 1 1212 JUAN 2020-11-01 DFDD 4545 45454  4545',''),(348,'tbl_usuario',1,'2020-11-14 14:53:09','root@localhost','Se actualizó un usuario','Información actualizada: 1 2 ADMIN Franclar#2020 1 0','Información anterior: 1 1 ADMIN Franclar#2020 1 0'),(349,'tbl_usuario',1,'2020-11-14 14:53:20','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 ADMIN Franclar#2020 1 0','Información anterior: 1 2 ADMIN Franclar#2020 1 0'),(350,'tbl_usuario',1,'2020-11-19 17:57:07','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 ADMIN Franclar#2020 1 0','Información anterior: 1 1 ADMIN Franclar#2020 1 0'),(351,'tbl_usuario',1,'2020-11-19 18:17:43','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 ADMIN Laravel#2020 1 0','Información anterior: 1 1 ADMIN Franclar#2020 1 0'),(352,'tbl_usuario',1,'2020-11-19 18:19:55','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 ADMIN Franclar#2020 1 0','Información anterior: 1 1 ADMIN Laravel#2020 1 0'),(353,'tbl_usuario',1,'2020-11-19 18:21:45','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 ADMIN Laravel#2020 1 0','Información anterior: 1 1 ADMIN Franclar#2020 1 0'),(354,'tbl_usuario',11,'2020-11-19 18:32:36','root@localhost','Se actualizó un usuario','Información actualizada: 12 1 WRAMIRES Franclar#2020 2 0','Información anterior: 12 1 WRAMIRES Minuto#2020 2 0'),(355,'tbl_usuario',1,'2020-11-19 18:36:31','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 ADMIN Franclar#2020 1 0','Información anterior: 1 1 ADMIN Laravel#2020 1 0'),(356,'tbl_usuario',1,'2020-11-20 23:03:54','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 ADMIN Lravel#2020 1 0','Información anterior: 1 1 ADMIN Franclar#2020 1 0'),(357,'tbl_usuario',1,'2020-11-20 23:05:18','root@localhost','Se actualizó un usuario','Información actualizada: 1 1 ADMIN Franclar#2020 1 0','Información anterior: 1 1 ADMIN Lravel#2020 1 0');
/*!40000 ALTER TABLE `tbl_bitacora_registro` ENABLE KEYS */;
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
  `ID_Servicio` int(3) NOT NULL,
  `ID_Empleado` int(3) NOT NULL,
  `ID_Estado` int(3) NOT NULL,
  `Fec_Creacion` date NOT NULL,
  `Hora_Creacion` time NOT NULL,
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
  KEY `ID_Servicio` (`ID_Servicio`),
  KEY `ID_Empleado` (`ID_Empleado`),
  KEY `ID_Estado` (`ID_Estado`),
  CONSTRAINT `tbl_citas_ibfk_4` FOREIGN KEY (`ID_Estado`) REFERENCES `tbl_estado_cita` (`ID_Estado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_citas_ibfk_5` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbl_usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_citas_ibfk_6` FOREIGN KEY (`ID_Empleado`) REFERENCES `tbl_empleado` (`ID_Empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_citas_ibfk_7` FOREIGN KEY (`ID_Paciente`) REFERENCES `tbl_pacientes` (`ID_Paciente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_citas_ibfk_8` FOREIGN KEY (`ID_Servicio`) REFERENCES `tbl_servicio` (`ID_Servicio`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `ID_servicio` int(3) NOT NULL,
  PRIMARY KEY (`id_detalle_factura`),
  KEY `ID_factura` (`ID_factura`),
  KEY `ID_servicio` (`ID_servicio`),
  CONSTRAINT `tbl_detalle_factura_ibfk_3` FOREIGN KEY (`ID_factura`) REFERENCES `tbl_facturas` (`ID_factura`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_detalle_factura_ibfk_4` FOREIGN KEY (`ID_servicio`) REFERENCES `tbl_servicio` (`ID_Servicio`) ON DELETE CASCADE ON UPDATE CASCADE
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'Jean Carlos Núñez Salgado',1,2,1,1,'','0000-00-00','Col venezuela sector B.....',22091139,33876298,15000,NULL,NULL,NULL,NULL),(3,'Carlos Fabricio Nuñez Ramires',1,3,2,6,'','0000-00-00','Col. Venezuela Sector B Bloque 8 casa 17',22278000,33876298,30000,NULL,NULL,NULL,NULL),(8,'CARLOS HUMBERTO NUÑEZ',1,1,1,1,'0801196800586','1963-10-14','SDOVJNBDFUVHDBFUVDFVDFVDF',22222222,99999999,15000,NULL,NULL,NULL,NULL),(11,'JOSUE ALLAN GONZALES RAMIRES',1,2,3,3,'0801199714588','1987-10-08','WINFEIUFGEFVDFVDF',22222222,99999999,20000,NULL,NULL,NULL,NULL),(12,'WILDER EDUARDO RAMIRES ',1,1,5,7,'0801199714078','1982-09-05','SJDNVSDHOFIVBDVRFGBRGBRFGBGF',22222222,88888888,20000,NULL,NULL,NULL,NULL),(17,'JEAN CARLOS NUEZ',1,1,6,8,'0801199714079','1980-10-14','ASDSDJNSDSDSDSDD',22222222,99999999,0,NULL,NULL,NULL,NULL),(18,'JOSUE ROLANDO RAMIRES GONZALES',1,1,1,2,'0801199714079','1997-10-14','AASSDSSSDDSDSSSDSDSD',22222222,99999999,20000,NULL,NULL,NULL,NULL),(19,'JEAN JOSUE GONZALES RAMOS',1,1,1,1,'0801199999999','1987-10-12','SKKSSKSKSSSSSSS JSSSS',22222222,99999999,200000,NULL,NULL,NULL,NULL),(20,'JOSUE CACERES ACOSTA',1,1,6,8,'0801115556666','1980-10-04','SDSDCSDCSDCSD',22222222,99999999,0,NULL,NULL,NULL,NULL),(21,'JUAN',1,1,1,1,'1212','2020-11-01','DFDD',4545,45454,4545,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_empleado` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_empleado_insert` AFTER INSERT ON `tbl_empleado` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual)VALUES('tbl_empleado',NEW.ID_Empleado,CURRENT_USER,'Se insertó un nuevo empleado',concat('Información insertada: ',NEW.ID_Sexo,' ',NEW.ID_Est_Civil,' ',NEW.ID_Cargo,' ',NEW.ID_Especialidad,' ',NEW.Cedula,' ',NEW.Nom_Empleado,' ',NEW.Fec_Nacimiento,' ',NEW.Dir_Empleado,' ',NEW.Tel_Empleado,' ',NEW.Cel_Empleado,' ',' ',NEW.Salario));


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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_empleado_update` AFTER UPDATE ON `tbl_empleado` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual,informacion_anterior)VALUES('tbl_empleado',OLD.ID_Empleado,CURRENT_USER,'Se actualizó un empleado',concat('Información actualizada: ',NEW.ID_Sexo,' ',NEW.ID_Est_Civil,' ',NEW.ID_Cargo,' ',NEW.ID_Especialidad,' ',NEW.Cedula,' ',NEW.Nom_Empleado,' ',NEW.Fec_Nacimiento,' ',NEW.Dir_Empleado,' ',NEW.Tel_Empleado,' ',NEW.Cel_Empleado,' ',NEW.Salario),concat('Información anterior: ',OLD.ID_Sexo,' ',OLD.ID_Est_Civil,' ',OLD.ID_Cargo,' ',OLD.ID_Especialidad,' ',OLD.Cedula,' ',OLD.Nom_Empleado,' ',OLD.Fec_Nacimiento,' ',OLD.Dir_Empleado,' ',OLD.Tel_Empleado,' ',OLD.Cel_Empleado,' ',OLD.Salario));

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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_empleado_delete` AFTER DELETE ON `tbl_empleado` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_anterior)VALUES(' tbl_empleado',OLD.ID_Empleado,CURRENT_USER,'Se eliminó un empleado',concat('Información eliminada: ',OLD.ID_Sexo,' ',OLD.ID_Est_Civil,' ',OLD.ID_Cargo,' ',OLD.ID_Especialidad,' ',OLD.Cedula,' ',OLD.Nom_Empleado,' ',OLD.Fec_Nacimiento,' ',OLD.Dir_Empleado,' ',OLD.Tel_Empleado,' ',OLD.Cel_Empleado,' ',OLD.Salario));

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbl_especialidad`
--

DROP TABLE IF EXISTS `tbl_especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_especialidad` (
  `ID_especialidad` int(3) NOT NULL AUTO_INCREMENT,
  `Descripcion_espec` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_especialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_especialidad`
--

LOCK TABLES `tbl_especialidad` WRITE;
/*!40000 ALTER TABLE `tbl_especialidad` DISABLE KEYS */;
INSERT INTO `tbl_especialidad` VALUES (1,'Medicina General'),(2,'Ortopedia'),(3,'Fisioterapia'),(4,'Nutrición'),(5,'Odontología'),(6,'Psicología'),(7,'Podología'),(8,'Auto_Registro');
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
  `Descripcion` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_Estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado_cita`
--

LOCK TABLES `tbl_estado_cita` WRITE;
/*!40000 ALTER TABLE `tbl_estado_cita` DISABLE KEYS */;
INSERT INTO `tbl_estado_cita` VALUES (1,'Registrada'),(2,'Preclínica'),(3,'Pendiente'),(4,'Pagada');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pacientes`
--

LOCK TABLES `tbl_pacientes` WRITE;
/*!40000 ALTER TABLE `tbl_pacientes` DISABLE KEYS */;
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
INSERT INTO `tbl_permisos` VALUES (1,1,1,'0','1','1','1'),(2,1,2,'0','1','1','1'),(3,1,3,'0','1','1','1'),(4,1,4,'0','1','1','1'),(5,1,5,'0','1','1','1'),(6,1,6,'0','1','1','1'),(7,1,7,'0','1','1','1'),(8,1,8,'0','1','1','1'),(9,1,9,'0','1','1','1'),(10,1,10,'0','1','1','1'),(11,1,11,'0','1','1','1'),(12,1,12,'0','1','1','1'),(13,1,13,'0','1','1','1'),(14,1,14,'0','1','1','1'),(15,1,15,'0','1','1','1'),(16,1,16,'0','0','0','0'),(17,2,1,'0','0','0','0'),(18,2,2,'0','0','0','0'),(19,2,3,'0','0','0','0'),(20,2,4,'0','0','0','0'),(21,2,5,'0','0','0','0'),(22,2,6,'0','0','0','0'),(23,2,7,'0','0','0','0'),(24,2,8,'0','0','0','0'),(25,2,9,'0','0','0','0'),(26,2,10,'0','0','0','0'),(27,2,11,'1','1','1','1'),(28,2,12,'0','0','0','0'),(29,2,13,'0','0','0','0'),(30,2,14,'0','0','0','0'),(31,2,15,'0','0','0','0'),(32,2,16,'0','0','0','0');
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
  `Descripción` varchar(20) NOT NULL,
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
  `Descripcion` varchar(50) NOT NULL,
  `Precio` int(5) NOT NULL,
  PRIMARY KEY (`ID_Servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_servicio`
--

LOCK TABLES `tbl_servicio` WRITE;
/*!40000 ALTER TABLE `tbl_servicio` DISABLE KEYS */;
INSERT INTO `tbl_servicio` VALUES (1,'rhbfgbfgbfgb',5000);
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
  `Descripción` varchar(200) NOT NULL,
  PRIMARY KEY (`ID_TipoPaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_paciente`
--

LOCK TABLES `tbl_tipo_paciente` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_paciente` DISABLE KEYS */;
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
  `Descripción` varchar(15) NOT NULL,
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
INSERT INTO `tbl_usuario` VALUES (1,1,1,'ADMIN','soportefranclar@gmail.com','Franclar#2020',1,'2020-10-04',0,'2020-10-04',NULL,NULL,NULL,NULL,0),(9,11,1,'JGONZALES','jsdiksndsdsd@gmail.com','OtvJY]Jf',1,NULL,1,NULL,NULL,NULL,NULL,NULL,0),(10,8,1,'CNUÑEZ','dvsdfvdfvdf@gmail.com','Hf4,Qw9]',2,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(11,12,1,'WRAMIRES','jidndf@gmail.com','Franclar#2020',2,NULL,0,NULL,NULL,NULL,NULL,NULL,3),(15,17,1,'JEANNUNEZ','jean.nunez@gmail.com','Minuto#2020',5,NULL,0,NULL,NULL,NULL,NULL,NULL,0),(16,18,1,'JOSUERAMIRES','jenaas.sdsd@gmail.com','Xi0_Sa7]',1,NULL,1,NULL,NULL,NULL,NULL,NULL,0),(17,19,2,'JOSUERAMOS','jejsas@gmail.com','Ep4:Ih8/',1,NULL,1,NULL,NULL,NULL,NULL,NULL,0),(18,20,2,'JOSUERS','sjsdddssd@gmail.com','Minuto$2020',3,NULL,0,NULL,NULL,NULL,NULL,NULL,3);
/*!40000 ALTER TABLE `tbl_usuario` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_usuario_insert` AFTER INSERT ON `tbl_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual)VALUES('tbl_usuario',NEW.ID_Usuario,CURRENT_USER,'Se insertó un nuevo usuario',concat('Información insertada: ',NEW.ID_Empleado,' ',NEW.ID_Estado,' ',NEW.Nom_Usuario,' ',NEW.Contraseña,' ',NEW.ID_Rol,' ',NEW.Primer_Ingreso));

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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_usuario_update` AFTER UPDATE ON `tbl_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual,informacion_anterior)VALUES('tbl_usuario',OLD.ID_Usuario,CURRENT_USER,'Se actualizó un usuario',concat('Información actualizada: ',NEW.ID_Empleado,' ',NEW.ID_Estado,' ',NEW.Nom_Usuario,' ',NEW.Contraseña,' ',NEW.ID_Rol,' ',NEW.Primer_Ingreso),concat('Información anterior: ',OLD.ID_Empleado,' ',OLD.ID_Estado,' ',OLD.Nom_Usuario,' ',OLD.Contraseña,' ',OLD.ID_Rol,' ',OLD.Primer_Ingreso));

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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_usuario_delete` AFTER DELETE ON `tbl_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_anterior)VALUES('tbl_usuario',OLD.ID_Usuario,CURRENT_USER,'Se eliminó un usuario',concat('Información eliminada: ',OLD.ID_Empleado,' ',OLD.ID_Estado,' ',OLD.Nom_Usuario,' ',OLD.Contraseña,' ',OLD.ID_Rol,' ',OLD.Primer_Ingreso));


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-20 17:07:51
