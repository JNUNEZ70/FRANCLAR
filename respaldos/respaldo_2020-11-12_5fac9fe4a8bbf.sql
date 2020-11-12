SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `sistema_franclar`
--




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
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_bitacora_evento VALUES
("1","2020-10-21 00:00:00","1","3","Update","SE ACTUALIZÓ UN PARAMETRO"),
("2","2020-10-21 00:00:00","1","3","Update","SE ACTUALIZÓ UN PARÁMETRO"),
("4","2020-10-21 00:00:00","1","10","Insert","SE INGRESÓ UN NUEVO CARGO"),
("5","2020-10-21 00:00:00","1","10","Insert","SE INGRESÓ UN NUEVO CARGO"),
("6","2020-10-21 00:00:00","1","10","Delete","SE ELIMINÓ UN CARGO"),
("7","2020-10-21 00:00:00","1","9","Insert","SE INGRESÓ UNA NUEVA ESPECIALIDAD"),
("8","2020-10-21 00:00:00","1","9","Update","SE ACTUALIZÓ UNA ESPECIALIDAD"),
("9","2020-10-21 00:00:00","1","9","Delete","SE ELIMINÓ UNA ESPECIALIDAD"),
("10","2020-10-21 00:00:00","1","1","Insert","SE INGRESÓ UN NUEVO EMPLEADO"),
("11","2020-10-21 00:00:00","1","1","Update","SE ACTUALIZÓ UN EMPLEADO"),
("12","2020-10-21 00:00:00","1","1","Delete","SE ELIMINÓ UN EMPLEADO"),
("13","2020-10-21 00:00:00","1","1","Insert","SE INGRESÓ UN NUEVO EMPLEADO"),
("14","2020-10-21 00:00:00","1","1","Update","SE ACTUALIZÓ UN EMPLEADO"),
("15","2020-10-21 00:00:00","1","1","Update","SE ACTUALIZÓ UN EMPLEADO"),
("16","2020-10-21 00:00:00","1","1","Update","SE ACTUALIZÓ UN EMPLEADO"),
("17","2020-10-21 00:00:00","1","1","Update","SE ACTUALIZÓ UN EMPLEADO"),
("18","2020-10-21 00:00:00","1","1","Update","SE ACTUALIZÓ UN EMPLEADO"),
("19","2020-10-21 00:00:00","1","1","Delete","SE ELIMINÓ UN EMPLEADO"),
("20","2020-10-21 00:00:00","1","1","Delete","SE ELIMINÓ UN EMPLEADO"),
("22","2020-10-21 00:00:00","1","2","Update","SE BLOQUEÓ UN USUARIO"),
("23","2020-10-21 00:00:00","1","2","Update","SE BLOQUEÓ UN USUARIO"),
("24","2020-10-21 00:00:00","1","2","Update","SE ACTIVÓ UN USUARIO"),
("25","2020-10-21 00:00:00","1","10","Insert","SE INGRESÓ UN NUEVO CARGO"),
("26","2020-10-21 00:00:00","1","10","Update","SE ACTUALIZÓ EL CARGO"),
("27","2020-10-21 00:00:00","1","10","Delete","SE ELIMINÓ UN CARGO"),
("28","2020-10-21 00:00:00","1","9","Insert","SE INGRESÓ UNA NUEVA ESPECIALIDAD"),
("29","2020-10-21 00:00:00","1","9","Update","SE ACTUALIZÓ UNA ESPECIALIDAD"),
("30","2020-10-21 00:00:00","1","9","Delete","SE ELIMINÓ UNA ESPECIALIDAD"),
("31","2020-10-21 00:00:00","1","14","Insert","SE INGRESÓ UN NUEVO SERVICIO"),
("32","2020-10-21 00:00:00","1","14","Update","SE ACTUALIZÓ EL SERVICIO"),
("33","2020-10-21 00:00:00","1","14","Insert","SE INGRESÓ UN NUEVO SERVICIO"),
("34","2020-10-21 00:00:00","1","14","Update","SE ACTUALIZÓ EL SERVICIO"),
("35","2020-10-21 00:00:00","1","14","Delete","SE ELIMINÓ UN SERVICIO"),
("36","2020-10-21 00:00:00","1","12","Insert","SE INGRESÓ UN NUEVO ESTADO CIVIL"),
("37","2020-10-21 00:00:00","1","12","Update","SE ACTUALIZÓ EL ESTADO CIVIL"),
("38","2020-10-21 00:00:00","1","12","Delete","SE ELIMINÓ ESTADO CIVIL"),
("39","2020-10-21 00:00:00","1","16","Insert","SE INGRESÓ UN NUEVO SEXO"),
("40","2020-10-21 00:00:00","1","16","Update","SE ACTUALIZÓ SEXO"),
("41","2020-10-21 00:00:00","1","16","Delete","SE ELIMINÓ UN SEXO"),
("42","2020-10-21 00:00:00","1","13","Insert","SE INGRESÓ UNA RELIGION"),
("43","2020-10-21 00:00:00","1","13","Insert","SE INGRESÓ UNA RELIGION"),
("44","2020-10-21 00:00:00","1","13","Update","SE ACTUALIZÓ UNA RELIGION"),
("45","2020-10-21 00:00:00","1","13","Update","SE ACTUALIZÓ UNA RELIGION"),
("46","2020-10-21 00:00:00","1","13","Delete","SE ELIMINÓ UNA RELIGIÓN"),
("47","2020-10-21 00:00:00","1","13","Delete","SE ELIMINÓ UNA RELIGIÓN"),
("48","2020-10-21 00:00:00","1","13","Insert","SE INGRESÓ UNA RELIGION"),
("49","2020-10-21 00:00:00","1","13","Update","SE ACTUALIZÓ UNA RELIGION"),
("50","2020-10-21 00:00:00","1","13","Delete","SE ELIMINÓ UNA RELIGIÓN"),
("51","2020-10-21 00:00:00","1","15","Insert","SE INGRESÓ UN NUEVO TIPO DE SANGRE"),
("52","2020-10-21 00:00:00","1","10","Insert","SE INGRESÓ UN NUEVO CARGO"),
("53","2020-10-21 00:00:00","1","10","Delete","SE ELIMINÓ UN CARGO"),
("54","2020-10-21 00:00:00","1","15","Update","SE ACTUALIZÓ UN TIPO DE SANGRE"),
("55","2020-10-21 00:00:00","1","15","Delete","SE ELIMINÓ UN TIPO DE SANGRE"),
("56","2020-10-21 00:00:00","1","11","Insert","SE INGRESÓ UN NUEVO DIAGNOSTICO"),
("57","2020-10-21 00:00:00","1","11","Update","SE ACTUALIZÓ UN DIAGNOSTICO"),
("58","2020-10-21 00:00:00","1","11","Delete","SE ELIMINÓ UN DIAGNÓSTICO"),
("59","2020-10-21 00:00:00","1","2","Update","SE ACTUALIZÓ UN USUARIO"),
("60","2020-10-21 00:00:00","1","2","Update","SE ACTUALIZÓ UN USUARIO"),
("61","2020-10-21 00:00:00","1","2","Update","SE ACTIVÓ UN USUARIO"),
("62","2020-10-21 00:00:00","1","2","Update","SE ACTIVÓ UN USUARIO"),
("63","2020-10-21 00:00:00","1","2","Update","SE BLOQUEÓ UN USUARIO"),
("64","2020-10-21 00:00:00","1","2","Update","SE ACTUALIZÓ UN USUARIO"),
("65","2020-10-21 00:00:00","1","2","Update","SE ACTIVÓ UN USUARIO"),
("66","2020-10-21 00:00:00","1","2","Update","SE ACTIVÓ UN USUARIO"),
("67","2020-10-21 00:00:00","1","2","Update","SE ACTUALIZÓ UN USUARIO"),
("68","2020-10-21 00:00:00","1","2","Update","SE ACTUALIZÓ UN USUARIO"),
("69","2020-10-21 00:00:00","1","1","Insert","SE INGRESÓ UN NUEVO EMPLEADO"),
("70","2020-10-21 00:00:00","1","2","Insert","SE INGRESÓ UN NUEVO USUARIO"),
("71","2020-10-21 00:00:00","1","1","Insert","SE INGRESÓ UN NUEVO EMPLEADO"),
("72","2020-10-21 00:00:00","1","2","Insert","SE INGRESÓ UN NUEVO USUARIO"),
("73","2020-10-21 00:00:00","1","2","Update","SE ACTUALIZÓ UN USUARIO"),
("74","2020-10-21 00:00:00","1","2","Update","SE BLOQUEÓ UN USUARIO"),
("75","2020-10-22 00:00:00","1","2","Update","SE ACTIVÓ UN USUARIO"),
("77","2020-10-26 23:31:34","1","1","Consulta","SE CONSULTÓ EN TABLA EMPLEADO"),
("78","2020-10-26 23:38:20","1","1","Consulta","SE CONSULTÓ EN TABLA EMPLEADO"),
("79","2020-10-26 23:38:23","1","1","Consulta","SE CONSULTÓ EN TABLA EMPLEADO"),
("80","2020-10-26 23:46:33","1","1","Ingreso","SE INGRESÓ A LA PANTALLA PERSONAL"),
("81","2020-10-26 23:46:33","1","1","Consulta","SE CONSULTÓ EN TABLA EMPLEADO"),
("82","2020-10-26 23:47:52","1","1","Ingreso","INGRESÓ A LA PANTALLA PERSONAL"),
("83","2020-10-26 23:47:52","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("91","2020-10-26 23:53:07","1","1","Ingreso","INGRESÓ A LA PANTALLA PERSONAL"),
("92","2020-10-26 23:53:07","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("96","2020-10-26 23:58:28","1","1","Ingreso","INGRESÓ A LA PANTALLA PERSONAL"),
("97","2020-10-26 23:58:28","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("98","2020-10-26 23:58:51","1","1","Ingreso","INGRESÓ A LA PANTALLA PERSONAL"),
("99","2020-10-26 23:58:51","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("103","2020-10-27 00:02:25","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("104","2020-10-27 00:03:06","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("105","2020-11-10 14:52:30","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("106","2020-11-10 14:52:30","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("107","2020-11-10 14:52:39","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("122","2020-11-05 14:04:01","11","11","Acceso","INGRESO A PANTALLA DIAGNOSTICO"),
("123","2020-11-05 14:04:50","11","11","Acceso","INGRESO A PANTALLA DIAGNOSTICO"),
("124","2020-11-05 14:05:16","11","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("125","2020-11-05 14:05:16","11","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("126","2020-11-05 14:09:18","11","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("127","2020-11-05 14:12:43","10","11","Acceso","INGRESO A PANTALLA DIAGNOSTICO"),
("128","2020-11-05 14:13:08","10","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("129","2020-11-05 14:13:08","10","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("130","2020-11-05 15:34:55","10","1","Acceso","INGRESO A PANTALLA PERSONAL");
INSERT INTO tbl_bitacora_evento VALUES
("131","2020-11-05 15:34:55","10","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("132","2020-11-05 15:34:58","10","11","Acceso","INGRESO A PANTALLA DIAGNOSTICO"),
("133","2020-11-06 13:30:48","1","11","Acceso","INGRESO A PANTALLA DIAGNOSTICO"),
("134","2020-11-06 13:46:54","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("135","2020-11-06 13:46:55","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("136","2020-11-06 13:47:01","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("137","2020-11-06 13:47:01","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("138","2020-11-06 13:50:55","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("139","2020-11-06 13:50:58","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("140","2020-11-06 13:50:58","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("141","2020-11-06 13:51:02","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("142","2020-11-06 13:51:06","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("143","2020-11-06 13:51:06","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("144","2020-11-06 13:52:49","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("145","2020-11-06 13:52:51","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("146","2020-11-06 13:52:56","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("147","2020-11-06 13:52:56","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("148","2020-11-06 13:53:18","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("149","2020-11-06 14:27:08","1","9","Update","SE ACTUALIZÓ UNA ESPECIALIDAD"),
("150","2020-11-06 14:28:27","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("151","2020-11-06 14:28:35","1","9","Update","SE ACTUALIZÓ UNA ESPECIALIDAD"),
("152","2020-11-06 14:35:05","1","9","Insert","SE INGRESÓ UNA NUEVA ESPECIALIDAD"),
("153","2020-11-06 14:37:34","1","9","Delete","SE ELIMINÓ UNA ESPECIALIDAD"),
("154","2020-11-06 14:37:55","1","9","Insert","SE INGRESÓ UNA NUEVA ESPECIALIDAD"),
("155","2020-11-06 14:39:16","1","9","Update","SE ACTUALIZÓ UNA ESPECIALIDAD"),
("156","2020-11-06 14:39:56","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("157","2020-11-06 14:40:21","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("158","2020-11-06 15:16:48","1","11","Acceso","INGRESO A PANTALLA DIAGNOSTICO"),
("159","2020-11-06 15:16:51","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("160","2020-11-06 15:25:09","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("161","2020-11-06 15:25:45","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("162","2020-11-06 15:26:28","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("163","2020-11-06 15:26:48","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("164","2020-11-06 15:27:15","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("165","2020-11-06 15:28:21","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("166","2020-11-06 15:28:25","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("167","2020-11-06 15:28:46","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("168","2020-11-06 15:28:49","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("169","2020-11-06 15:29:22","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("170","2020-11-06 15:29:28","1","9","Delete","SE ELIMINÓ UNA ESPECIALIDAD"),
("171","2020-11-06 15:29:35","1","9","Insert","SE INGRESÓ UNA NUEVA ESPECIALIDAD"),
("172","2020-11-06 15:29:43","1","9","Update","SE ACTUALIZÓ UNA ESPECIALIDAD"),
("173","2020-11-06 15:30:14","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("174","2020-11-06 15:35:30","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("175","2020-11-06 15:36:15","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("176","2020-11-06 15:55:08","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("177","2020-11-06 15:55:18","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("178","2020-11-06 15:56:47","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("179","2020-11-06 15:56:54","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("180","2020-11-06 16:12:06","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("181","2020-11-06 16:22:16","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("182","2020-11-06 16:31:20","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("183","2020-11-06 17:25:39","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("184","2020-11-06 17:25:42","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("185","2020-11-08 04:29:19","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("186","2020-11-08 04:40:25","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("187","2020-11-08 04:44:42","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("188","2020-11-08 04:48:07","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("189","2020-11-08 05:12:23","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("190","2020-11-08 05:14:05","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("191","2020-11-08 05:14:38","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("192","2020-11-08 05:15:34","1","3","Insert","SE INGRESÓ UN NUEVO PARAMETRO"),
("193","2020-11-08 05:15:53","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("194","2020-11-08 05:18:12","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("195","2020-11-08 05:18:26","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("196","2020-11-08 05:19:54","1","3","Insert","SE INGRESÓ UN NUEVO PARAMETRO"),
("197","2020-11-08 05:20:11","1","3","Update","SE ACTUALIZÓ UN PARÁMETRO"),
("198","2020-11-08 05:20:24","1","3","Update","SE ACTUALIZÓ UN PARÁMETRO"),
("199","2020-11-08 05:20:38","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("200","2020-11-08 05:20:58","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("201","2020-11-08 05:21:05","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("202","2020-11-08 05:22:35","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("203","2020-11-08 05:23:06","1","3","Insert","SE INGRESÓ UN NUEVO PARAMETRO"),
("204","2020-11-08 05:23:17","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("205","2020-11-08 05:23:20","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("206","2020-11-08 05:23:22","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("207","2020-11-08 05:25:49","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("208","2020-11-08 05:26:58","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("209","2020-11-08 05:27:14","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("210","2020-11-08 05:27:22","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("211","2020-11-08 05:28:23","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("212","2020-11-08 05:28:26","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("213","2020-11-08 05:28:29","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("214","2020-11-08 05:29:34","1","3","Insert","SE INGRESÓ UN NUEVO PARAMETRO"),
("215","2020-11-08 05:29:52","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("216","2020-11-08 05:30:24","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("217","2020-11-08 05:30:26","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("218","2020-11-08 05:30:40","1","3","Update","SE ACTUALIZÓ UN PARÁMETRO"),
("219","2020-11-08 05:53:51","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("220","2020-11-08 07:36:14","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("221","2020-11-08 07:36:28","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("222","2020-11-08 07:36:32","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("223","2020-11-08 07:36:35","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("224","2020-11-08 07:38:02","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("225","2020-11-08 07:38:04","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("226","2020-11-08 10:48:00","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("227","2020-11-08 10:48:04","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("228","2020-11-08 10:48:07","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("229","2020-11-09 16:01:34","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("230","2020-11-09 16:02:31","1","3","Acceso","INGRESO A PANTALLA PARAMETROS");
INSERT INTO tbl_bitacora_evento VALUES
("231","2020-11-09 16:02:43","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("232","2020-11-09 16:03:22","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("233","2020-11-10 14:53:44","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("234","2020-11-10 14:53:52","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("235","2020-11-10 14:53:52","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("236","2020-11-10 14:53:57","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("237","2020-11-10 14:54:01","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("238","2020-11-10 14:54:04","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("239","2020-11-10 14:54:09","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("240","2020-11-10 15:06:33","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("241","2020-11-10 15:06:33","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("242","2020-11-10 15:07:17","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("243","2020-11-10 15:08:19","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("244","2020-11-10 15:08:19","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("245","2020-11-11 14:15:44","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("246","2020-11-11 16:10:35","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("247","2020-11-11 16:10:37","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("248","2020-11-11 16:10:57","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("249","2020-11-11 16:10:57","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("250","2020-11-11 16:12:45","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("251","2020-11-11 16:27:51","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("252","2020-11-11 16:27:51","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("253","2020-11-11 16:30:10","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("254","2020-11-11 16:30:11","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("255","2020-11-11 16:30:50","1","1","Consulta","CONSULTÓ EN TABLA EMPLEADO"),
("256","2020-11-11 16:59:34","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("257","2020-11-11 17:02:05","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("258","2020-11-11 17:05:04","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("259","2020-11-11 17:31:26","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("260","2020-11-11 17:42:58","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("261","2020-11-11 17:48:43","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("262","2020-11-11 17:49:27","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("263","2020-11-11 17:52:56","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("264","2020-11-11 18:20:10","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("265","2020-11-11 18:20:44","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("266","2020-11-11 18:54:55","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("267","2020-11-11 18:55:08","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("268","2020-11-11 18:55:13","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("269","2020-11-11 18:55:44","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("270","2020-11-11 18:56:05","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("271","2020-11-11 18:56:53","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("272","2020-11-11 18:57:33","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("273","2020-11-11 19:00:16","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("274","2020-11-11 19:00:25","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("275","2020-11-11 19:01:00","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("276","2020-11-11 19:19:46","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("277","2020-11-11 19:24:38","1","2","Update","SE ACTIVÓ UN USUARIO"),
("278","2020-11-11 19:36:13","1","2","Update","SE BLOQUEÓ UN USUARIO"),
("279","2020-11-11 19:36:26","1","2","Update","SE ACTIVÓ UN USUARIO"),
("280","2020-11-11 19:52:27","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("281","2020-11-11 20:00:39","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("282","2020-11-11 20:21:01","1","11","Acceso","INGRESO A PANTALLA DIAGNOSTICO"),
("283","2020-11-11 20:25:03","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("284","2020-11-11 20:28:00","1","1","Acceso","INGRESO A PANTALLA PERSONAL"),
("285","2020-11-11 20:31:33","1","3","Acceso","INGRESO A PANTALLA PARAMETROS"),
("286","2020-11-11 20:33:30","1","3","Acceso","INGRESO A PANTALLA PARAMETROS");




CREATE TABLE `tbl_cargo` (
  `ID_Cargo` int(3) NOT NULL AUTO_INCREMENT,
  `nomb_cargo` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_Cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_cargo VALUES
("1","Doctor(a)"),
("2","Enfermero(a)"),
("3","Cajero(a)"),
("4","Limpieza"),
("5","Seguridad"),
("6","Auto_Registro");




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






CREATE TABLE `tbl_diagnosticos` (
  `ID_Diagnostico` int(3) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_Diagnostico`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;






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


INSERT INTO tbl_empleado VALUES
("1","Jean Carlos Núñez Salgado","1","2","1","1","","0000-00-00","Col venezuela sector B.....","22091139","33876298","15000","","","",""),
("3","Carlos Fabricio Nuñez Ramires","1","3","2","6","","0000-00-00","Col. Venezuela Sector B Bloque 8 casa 17","22278000","33876298","30000","","","",""),
("8","CARLOS HUMBERTO NUÑEZ","1","1","1","1","0801196800586","1963-10-14","SDOVJNBDFUVHDBFUVDFVDFVDF","22222222","99999999","15000","","","",""),
("11","JOSUE ALLAN GONZALES RAMIRES","1","2","3","3","0801199714588","1987-10-08","WINFEIUFGEFVDFVDF","22222222","99999999","20000","","","",""),
("12","WILDER EDUARDO RAMIRES ","1","1","5","7","0801199714078","1982-09-05","SJDNVSDHOFIVBDVRFGBRGBRFGBGF","22222222","88888888","20000","","","",""),
("17","JEAN CARLOS NUEZ","1","1","6","8","0801199714079","1980-10-14","ASDSDJNSDSDSDSDD","22222222","99999999","0","","","",""),
("18","JOSUE ROLANDO RAMIRES GONZALES","1","1","1","2","0801199714079","1997-10-14","AASSDSSSDDSDSSSDSDSD","22222222","99999999","20000","","","",""),
("19","JEAN JOSUE GONZALES RAMOS","1","1","1","1","0801199999999","1987-10-12","SKKSSKSKSSSSSSS JSSSS","22222222","99999999","200000","","","",""),
("20","JOSUE CACERES ACOSTA","1","1","6","8","0801115556666","1980-10-04","SDSDCSDCSDCSD","22222222","99999999","0","","","","");




CREATE TABLE `tbl_especialidad` (
  `ID_especialidad` int(3) NOT NULL AUTO_INCREMENT,
  `Descripcion_espec` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_especialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_especialidad VALUES
("1","Medicina General"),
("2","Ortopedia"),
("3","Fisioterapia"),
("4","Nutrición"),
("5","Odontología"),
("6","Psicología"),
("7","Podología"),
("8","Auto_Registro");




CREATE TABLE `tbl_estado_cita` (
  `ID_Estado` int(3) NOT NULL,
  `Descripcion` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_Estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_estado_cita VALUES
("1","Registrada"),
("2","Preclínica"),
("3","Pendiente"),
("4","Pagada");




CREATE TABLE `tbl_estado_civil` (
  `ID_Est_Civil` int(3) NOT NULL AUTO_INCREMENT,
  `Descripcion_est_civil` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_Est_Civil`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_estado_civil VALUES
("1","Soltero(a)"),
("2","Casado(a)"),
("3","Unión Libre"),
("4","Viudo(a)"),
("5","Divorciado(a)");




CREATE TABLE `tbl_estado_usuario` (
  `ID_Estado` int(3) NOT NULL,
  `Descripcion` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_Estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_estado_usuario VALUES
("1","Activo"),
("2","Bloqueado"),
("3","Recuperación"),
("4","Auto_Registro");




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






CREATE TABLE `tbl_facturas` (
  `ID_factura` bigint(3) NOT NULL AUTO_INCREMENT,
  `Fec_emision` int(11) NOT NULL,
  `ID_cita` bigint(3) NOT NULL,
  PRIMARY KEY (`ID_factura`),
  KEY `ID_cita` (`ID_cita`),
  CONSTRAINT `tbl_facturas_ibfk_1` FOREIGN KEY (`ID_cita`) REFERENCES `tbl_citas` (`ID_Cita`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;






CREATE TABLE `tbl_hist_contra` (
  `id_hist` int(3) NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(3) NOT NULL,
  `contraseña` varchar(25) NOT NULL,
  PRIMARY KEY (`id_hist`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `tbl_hist_contra_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;






CREATE TABLE `tbl_objetos` (
  `id_objeto` bigint(3) NOT NULL,
  `objeto` varchar(25) NOT NULL,
  PRIMARY KEY (`id_objeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_objetos VALUES
("1","vista_personal"),
("2","vista_usuarios"),
("3","vista_parametros"),
("4","vista_pacientes"),
("5","vista_consultas"),
("6","vista_preclinica"),
("7","vista_citas"),
("8","vista_caja"),
("9","vista_especialidad"),
("10","vista_cargo"),
("11","vista_diagnóstico"),
("12","vista_estado civil"),
("13","vista_religiones"),
("14","vista_servicios"),
("15","vista_tipo de sangre"),
("16","vista_sexo");




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






CREATE TABLE `tbl_parametro_sistema` (
  `id_parametro` int(3) NOT NULL AUTO_INCREMENT,
  `parametro` varchar(50) NOT NULL,
  `valor` varchar(50) NOT NULL,
  `fecha_cracion` date NOT NULL,
  `fecha_modificacion` date NOT NULL,
  PRIMARY KEY (`id_parametro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_parametro_sistema VALUES
("1","USUARIO_BD","root","2020-11-08","2020-11-08"),
("2","PASSWORD_BD"," ","2020-11-08","2020-11-08"),
("3","NOMBRE_BD","sistema_franclar","2020-11-08","2020-11-08"),
("4","SERVIDOR_BD","localhost","2020-11-08","2020-11-08"),
("5","PUERT TFTP","20","0000-00-00","0000-00-00");




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


INSERT INTO tbl_parametros VALUES
("1","INTENTOS_INGRESO","2","1","2020-10-04","2020-10-04"),
("2","PREGUNTAS_RECUPERACIÓN","3","","","");




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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;






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


INSERT INTO tbl_pregunta_usuario VALUES
("48","1","18","sdsdfdsfdf","","","",""),
("49","2","18","sasdsd","","","",""),
("50","3","18","sdsd","","","",""),
("51","1","11","XXX","","","",""),
("52","2","11","XXX","","","",""),
("53","3","11","XXX","","","","");




CREATE TABLE `tbl_preguntas` (
  `ID_Pregunta` bigint(3) NOT NULL AUTO_INCREMENT,
  `Pregunta` varchar(100) NOT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL,
  PRIMARY KEY (`ID_Pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_preguntas VALUES
("1","¿Cuál es el nombre de su mamá?","","","",""),
("2","¿Cuál es el nombre de su primer mascota?","","","",""),
("3","¿Cuál es su color favorito?","","","",""),
("4","¿Cuál es su comida favorita?","","","",""),
("5","¿Cuál es el nombre de su padre?","","","",""),
("6","¿Cómo se llama su primo mayor?","","","",""),
("7","¿Cómo se llama su tío favorito?","","","",""),
("8","¿Cómo se llama su primera escuela?","","","",""),
("9","¿Cómo se llama su tía favorita?","","","",""),
("10","¿Cuál es el nombre de su primer pareja?","","","","");




CREATE TABLE `tbl_religion` (
  `ID_Religion` int(3) NOT NULL AUTO_INCREMENT,
  `Descripción` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_Religion`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_religion VALUES
("1","Católico(a)"),
("2","Evangélico(a)"),
("3","Otros");




CREATE TABLE `tbl_roles` (
  `ID_Rol` bigint(3) NOT NULL,
  `Rol` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_Rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_roles VALUES
("1","Admin"),
("2","Doctor"),
("3","Enfermero"),
("4","Cajero"),
("5","Auto_Registro");




CREATE TABLE `tbl_servicio` (
  `ID_Servicio` int(3) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) NOT NULL,
  `Precio` int(5) NOT NULL,
  PRIMARY KEY (`ID_Servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_servicio VALUES
("1","rhbfgbfgbfgb","5000");




CREATE TABLE `tbl_sexo` (
  `ID_Sexo` int(1) NOT NULL AUTO_INCREMENT,
  `Descripcion_sexo` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_Sexo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_sexo VALUES
("1","Masculino"),
("2","Femenino");




CREATE TABLE `tbl_tipo_paciente` (
  `ID_TipoPaciente` int(3) NOT NULL,
  `Descripción` varchar(200) NOT NULL,
  PRIMARY KEY (`ID_TipoPaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;






CREATE TABLE `tbl_tipo_sangre` (
  `ID_Tipo_Sangre` int(3) NOT NULL AUTO_INCREMENT,
  `Descripción` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_Tipo_Sangre`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;


INSERT INTO tbl_tipo_sangre VALUES
("1","A Positivo"),
("2","A Negativo"),
("3","B Positivo"),
("4","B Negativo"),
("5","O Positivo"),
("6","O Negativo"),
("7","AB Positivo"),
("8","AB Negativo");




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


INSERT INTO tbl_usuario VALUES
("1","1","1","ADMIN","soportefranclar@gmail.com","Franclar#2020","1","2020-10-04","0","2020-10-04","","","","","0"),
("9","11","1","JGONZALES","jsdiksndsdsd@gmail.com","OtvJY]Jf","1","","1","","","","","","0"),
("10","8","1","CNUÑEZ","dvsdfvdfvdf@gmail.com","Hf4,Qw9]","2","","0","","","","","","0"),
("11","12","1","WRAMIRES","jidndf@gmail.com","Minuto#2020","2","","0","","","","","","3"),
("15","17","1","JEANNUNEZ","jean.nunez@gmail.com","Minuto#2020","5","","0","","","","","","0"),
("16","18","1","JOSUERAMIRES","jenaas.sdsd@gmail.com","Xi0_Sa7]","1","","1","","","","","","0"),
("17","19","2","JOSUERAMOS","jejsas@gmail.com","Ep4:Ih8/","1","","1","","","","","","0"),
("18","20","2","JOSUERS","sjsdddssd@gmail.com","Minuto$2020","3","","0","","","","","","3");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;