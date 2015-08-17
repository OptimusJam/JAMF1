-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-03-2014 a las 11:06:50
-- Versión del servidor: 5.5.25a
-- Versión de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `des_tem_2014`
--
CREATE DATABASE IF NOT EXISTS `des_tem_2014` DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci;
USE `des_tem_2014`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apuestas_carrera`
--

DROP TABLE IF EXISTS `apuestas_carrera`;
CREATE TABLE IF NOT EXISTS `apuestas_carrera` (
  `apu_car_cod` int(11) NOT NULL AUTO_INCREMENT,
  `apu_car_equ_cod` int(11) NOT NULL,
  `apu_car_car_cod` int(11) NOT NULL,
  `apu_car_pod_pri_pil_cod` int(11) NOT NULL,
  `apu_car_pod_seg_pil_cod` int(11) NOT NULL,
  `apu_car_pod_ter_pil_cod` int(11) NOT NULL,
  `apu_car_pos_alo` int(11) NOT NULL,
  PRIMARY KEY (`apu_car_cod`),
  KEY `apu_car_equ_fk` (`apu_car_equ_cod`),
  KEY `apu_car_car_fk` (`apu_car_car_cod`),
  KEY `apu_car_pod_pri_pil_fk` (`apu_car_pod_pri_pil_cod`),
  KEY `apu_car_pod_seg_pil_fk` (`apu_car_pod_seg_pil_cod`),
  KEY `apu_car_pod_ter_pil_fk` (`apu_car_pod_ter_pil_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1300 ;

--
-- Volcado de datos para la tabla `apuestas_carrera`
--

INSERT INTO `apuestas_carrera` (`apu_car_cod`, `apu_car_equ_cod`, `apu_car_car_cod`, `apu_car_pod_pri_pil_cod`, `apu_car_pod_seg_pil_cod`, `apu_car_pod_ter_pil_cod`, `apu_car_pos_alo`) VALUES
(995, 62, 1, 1, 2, 3, 4),
(996, 66, 1, 1, 1, 1, 3),
(997, 67, 1, 1, 2, 4, 3),
(999, 69, 1, 3, 1, 6, 3),
(1000, 70, 1, 1, 2, 3, 2),
(1001, 71, 1, 1, 3, 5, 2),
(1002, 72, 1, 1, 2, 10, 4),
(1003, 73, 1, 10, 1, 3, 3),
(1004, 74, 1, 3, 6, 1, 1),
(1005, 75, 1, 1, 7, 2, 5),
(1006, 76, 1, 1, 2, 5, 4),
(1007, 77, 1, 1, 2, 3, 4),
(1008, 78, 1, 1, 2, 7, 3),
(1009, 62, 2, 1, 2, 3, 4),
(1010, 66, 2, 1, 1, 1, 3),
(1011, 67, 2, 1, 2, 4, 3),
(1012, 69, 2, 3, 1, 6, 3),
(1013, 70, 2, 1, 2, 3, 2),
(1014, 71, 2, 1, 3, 5, 2),
(1015, 72, 2, 1, 3, 7, 3),
(1016, 73, 2, 3, 7, 10, 1),
(1017, 74, 2, 3, 1, 4, 1),
(1018, 75, 2, 1, 7, 2, 4),
(1019, 76, 2, 7, 1, 3, 4),
(1020, 77, 2, 3, 7, 1, 2),
(1021, 78, 2, 7, 3, 1, 1),
(1022, 62, 3, 1, 2, 3, 4),
(1106, 66, 6, 1, 1, 1, 3),
(1024, 67, 3, 1, 2, 4, 3),
(1025, 69, 3, 3, 7, 1, 2),
(1109, 76, 6, 3, 1, 10, 2),
(1110, 77, 6, 3, 10, 7, 2),
(1111, 78, 6, 3, 1, 7, 2),
(1112, 69, 6, 3, 2, 1, 2),
(1113, 71, 6, 3, 1, 10, 1),
(1114, 72, 6, 1, 10, 7, 4),
(1032, 76, 3, 3, 2, 10, 3),
(1033, 77, 3, 3, 1, 9, 2),
(1034, 78, 3, 3, 7, 10, 2),
(1105, 62, 6, 1, 2, 3, 4),
(1036, 66, 3, 1, 1, 1, 3),
(1107, 67, 6, 1, 2, 4, 3),
(1108, 70, 6, 10, 3, 7, 1),
(1039, 70, 3, 1, 2, 3, 3),
(1040, 71, 3, 1, 3, 5, 2),
(1041, 72, 3, 3, 10, 1, 2),
(1042, 73, 3, 3, 7, 10, 1),
(1043, 74, 3, 3, 1, 4, 1),
(1044, 75, 3, 1, 7, 3, 4),
(1115, 73, 6, 3, 9, 1, 1),
(1116, 74, 6, 3, 7, 8, 1),
(1117, 75, 6, 1, 3, 7, 1),
(1048, 79, 3, 1, 3, 7, 4),
(1049, 62, 4, 1, 2, 3, 4),
(1050, 66, 4, 1, 1, 1, 3),
(1051, 67, 4, 1, 2, 4, 3),
(1121, 76, 7, 9, 7, 3, 4),
(1053, 70, 4, 1, 2, 3, 3),
(1123, 78, 7, 3, 1, 7, 2),
(1124, 69, 7, 3, 2, 1, 2),
(1125, 71, 7, 3, 1, 10, 1),
(1126, 72, 7, 1, 10, 7, 4),
(1127, 62, 7, 1, 2, 3, 4),
(1059, 76, 4, 3, 1, 10, 2),
(1060, 77, 4, 3, 1, 7, 1),
(1061, 78, 4, 1, 3, 7, 1),
(1118, 79, 6, 1, 3, 7, 4),
(1119, 80, 6, 1, 3, 7, 3),
(1120, 66, 7, 1, 1, 1, 3),
(1065, 69, 4, 3, 2, 1, 2),
(1122, 77, 7, 3, 1, 7, 1),
(1067, 71, 4, 3, 1, 10, 1),
(1068, 72, 4, 3, 1, 7, 2),
(1069, 73, 4, 3, 7, 1, 1),
(1070, 74, 4, 3, 1, 7, 1),
(1071, 75, 4, 1, 3, 7, 1),
(1128, 67, 7, 1, 2, 4, 3),
(1129, 70, 7, 10, 3, 7, 1),
(1130, 73, 7, 3, 10, 1, 1),
(1075, 79, 4, 1, 3, 7, 4),
(1076, 80, 4, 1, 3, 7, 3),
(1077, 62, 5, 1, 2, 3, 4),
(1078, 66, 5, 1, 1, 1, 3),
(1079, 67, 5, 1, 2, 4, 3),
(1134, 80, 7, 1, 3, 7, 3),
(1081, 70, 5, 1, 3, 7, 1),
(1087, 76, 5, 3, 1, 10, 2),
(1088, 77, 5, 3, 1, 7, 1),
(1089, 78, 5, 3, 1, 7, 2),
(1131, 74, 7, 3, 7, 8, 1),
(1132, 75, 7, 1, 3, 7, 1),
(1133, 79, 7, 1, 3, 7, 4),
(1093, 69, 5, 3, 2, 1, 2),
(1095, 71, 5, 3, 1, 10, 1),
(1096, 72, 5, 3, 1, 7, 2),
(1097, 73, 5, 3, 7, 1, 1),
(1098, 74, 5, 3, 7, 8, 1),
(1099, 75, 5, 1, 3, 7, 1),
(1103, 79, 5, 1, 3, 7, 4),
(1104, 80, 5, 1, 3, 7, 3),
(1135, 76, 8, 9, 7, 3, 4),
(1136, 78, 8, 3, 1, 7, 2),
(1137, 69, 8, 3, 2, 1, 2),
(1138, 71, 8, 3, 1, 10, 1),
(1139, 72, 8, 1, 10, 7, 4),
(1140, 62, 8, 1, 2, 3, 4),
(1141, 66, 8, 1, 1, 1, 3),
(1142, 77, 8, 3, 1, 7, 1),
(1143, 67, 8, 1, 2, 4, 3),
(1144, 70, 8, 10, 3, 7, 1),
(1145, 73, 8, 3, 10, 1, 1),
(1146, 80, 8, 1, 3, 7, 3),
(1147, 74, 8, 3, 7, 8, 1),
(1148, 75, 8, 1, 3, 7, 1),
(1149, 79, 8, 1, 3, 7, 4),
(1150, 76, 9, 9, 7, 3, 4),
(1151, 78, 9, 3, 1, 7, 2),
(1152, 69, 9, 3, 2, 1, 2),
(1153, 71, 9, 3, 1, 10, 1),
(1154, 72, 9, 3, 7, 1, 3),
(1155, 62, 9, 1, 2, 3, 4),
(1156, 66, 9, 1, 1, 1, 3),
(1157, 77, 9, 3, 1, 7, 1),
(1158, 67, 9, 1, 2, 4, 3),
(1159, 70, 9, 10, 3, 7, 1),
(1160, 73, 9, 3, 10, 1, 1),
(1161, 80, 9, 1, 3, 7, 3),
(1162, 74, 9, 3, 7, 8, 1),
(1163, 75, 9, 1, 9, 3, 4),
(1164, 79, 9, 1, 3, 7, 4),
(1165, 76, 10, 9, 7, 3, 4),
(1166, 78, 10, 3, 1, 7, 2),
(1167, 69, 10, 3, 2, 1, 2),
(1168, 71, 10, 3, 1, 10, 1),
(1169, 72, 10, 3, 7, 1, 3),
(1170, 62, 10, 1, 2, 3, 4),
(1171, 66, 10, 1, 1, 1, 3),
(1172, 77, 10, 3, 1, 7, 1),
(1173, 67, 10, 1, 2, 4, 3),
(1174, 70, 10, 10, 3, 7, 1),
(1175, 73, 10, 3, 10, 1, 1),
(1176, 80, 10, 1, 3, 7, 3),
(1177, 74, 10, 3, 7, 8, 1),
(1178, 75, 10, 1, 7, 3, 4),
(1179, 79, 10, 1, 3, 7, 4),
(1180, 76, 11, 9, 7, 3, 4),
(1181, 78, 11, 3, 1, 7, 2),
(1182, 69, 11, 3, 2, 1, 2),
(1183, 71, 11, 3, 1, 10, 1),
(1184, 72, 11, 1, 3, 7, 3),
(1185, 62, 11, 1, 2, 3, 4),
(1186, 66, 11, 1, 1, 1, 3),
(1187, 77, 11, 3, 1, 7, 1),
(1188, 67, 11, 1, 2, 4, 3),
(1189, 70, 11, 10, 3, 7, 1),
(1190, 73, 11, 3, 1, 2, 2),
(1191, 80, 11, 1, 3, 7, 3),
(1192, 74, 11, 3, 7, 8, 1),
(1193, 75, 11, 1, 7, 3, 4),
(1194, 79, 11, 1, 3, 7, 4),
(1195, 76, 12, 9, 7, 3, 4),
(1196, 78, 12, 3, 1, 7, 2),
(1197, 69, 12, 3, 2, 1, 2),
(1198, 71, 12, 3, 1, 10, 1),
(1199, 72, 12, 1, 3, 7, 3),
(1200, 62, 12, 1, 2, 3, 4),
(1201, 66, 12, 1, 1, 1, 3),
(1202, 77, 12, 3, 1, 7, 1),
(1203, 67, 12, 1, 2, 4, 3),
(1204, 70, 12, 10, 3, 7, 1),
(1205, 73, 12, 3, 1, 2, 2),
(1206, 80, 12, 1, 3, 7, 3),
(1207, 74, 12, 3, 7, 8, 1),
(1208, 75, 12, 1, 7, 3, 4),
(1209, 79, 12, 1, 3, 7, 4),
(1210, 76, 13, 9, 7, 3, 4),
(1211, 78, 13, 3, 1, 7, 2),
(1212, 69, 13, 3, 2, 1, 2),
(1213, 71, 13, 3, 1, 10, 1),
(1214, 72, 13, 1, 3, 7, 3),
(1215, 62, 13, 1, 2, 3, 4),
(1216, 66, 13, 1, 1, 1, 3),
(1217, 77, 13, 3, 1, 7, 1),
(1218, 67, 13, 1, 2, 4, 3),
(1219, 70, 13, 10, 3, 7, 1),
(1220, 73, 13, 3, 1, 2, 2),
(1221, 80, 13, 1, 3, 7, 3),
(1222, 74, 13, 3, 7, 8, 1),
(1223, 75, 13, 1, 7, 3, 4),
(1224, 79, 13, 1, 3, 7, 4),
(1225, 76, 14, 9, 7, 3, 4),
(1226, 78, 14, 3, 1, 7, 2),
(1227, 69, 14, 3, 2, 1, 2),
(1228, 71, 14, 3, 1, 10, 1),
(1229, 72, 14, 1, 3, 7, 3),
(1230, 62, 14, 1, 2, 3, 4),
(1231, 66, 14, 1, 1, 1, 3),
(1232, 77, 14, 3, 1, 7, 1),
(1233, 67, 14, 1, 2, 4, 3),
(1234, 70, 14, 10, 3, 7, 1),
(1235, 73, 14, 3, 1, 2, 2),
(1236, 80, 14, 1, 3, 7, 3),
(1237, 74, 14, 3, 7, 8, 1),
(1238, 75, 14, 1, 7, 3, 4),
(1239, 79, 14, 1, 3, 7, 4),
(1240, 76, 15, 9, 7, 3, 4),
(1241, 78, 15, 3, 1, 7, 2),
(1242, 69, 15, 3, 2, 1, 2),
(1243, 71, 15, 3, 1, 10, 1),
(1244, 72, 15, 1, 3, 7, 3),
(1245, 62, 15, 1, 2, 3, 4),
(1246, 66, 15, 1, 1, 1, 3),
(1247, 77, 15, 3, 1, 7, 1),
(1248, 67, 15, 1, 2, 4, 3),
(1249, 70, 15, 10, 3, 7, 1),
(1250, 73, 15, 3, 1, 2, 2),
(1251, 80, 15, 1, 3, 7, 3),
(1252, 74, 15, 3, 7, 8, 1),
(1253, 75, 15, 1, 7, 3, 4),
(1254, 79, 15, 1, 3, 7, 4),
(1255, 76, 16, 2, 7, 3, 4),
(1256, 78, 16, 3, 1, 7, 2),
(1257, 69, 16, 3, 2, 1, 2),
(1258, 71, 16, 3, 1, 10, 1),
(1259, 72, 16, 1, 3, 7, 3),
(1260, 62, 16, 1, 2, 3, 4),
(1261, 66, 16, 1, 1, 1, 3),
(1262, 77, 16, 3, 1, 7, 1),
(1263, 67, 16, 1, 2, 4, 3),
(1264, 70, 16, 10, 3, 7, 1),
(1265, 73, 16, 3, 1, 2, 2),
(1266, 80, 16, 1, 3, 7, 3),
(1267, 74, 16, 3, 7, 8, 1),
(1268, 75, 16, 1, 2, 8, 4),
(1269, 79, 16, 1, 3, 7, 4),
(1270, 76, 17, 2, 7, 3, 4),
(1271, 78, 17, 3, 1, 7, 2),
(1272, 69, 17, 3, 2, 1, 2),
(1273, 71, 17, 3, 1, 10, 1),
(1274, 72, 17, 1, 3, 7, 3),
(1275, 62, 17, 1, 2, 3, 4),
(1276, 66, 17, 1, 1, 1, 3),
(1277, 77, 17, 3, 1, 7, 1),
(1278, 67, 17, 1, 2, 4, 3),
(1279, 70, 17, 10, 3, 7, 1),
(1280, 73, 17, 3, 1, 2, 2),
(1281, 80, 17, 1, 3, 7, 3),
(1282, 74, 17, 3, 7, 8, 1),
(1283, 75, 17, 1, 2, 8, 4),
(1284, 79, 17, 1, 3, 7, 4),
(1285, 76, 18, 2, 7, 3, 4),
(1286, 78, 18, 3, 1, 7, 2),
(1287, 69, 18, 3, 2, 1, 2),
(1288, 71, 18, 3, 1, 10, 1),
(1289, 72, 18, 1, 3, 7, 3),
(1290, 62, 18, 1, 2, 3, 4),
(1291, 66, 18, 1, 1, 1, 3),
(1292, 77, 18, 3, 1, 7, 1),
(1293, 67, 18, 1, 2, 4, 3),
(1294, 70, 18, 10, 3, 7, 1),
(1295, 73, 18, 3, 1, 2, 2),
(1296, 80, 18, 1, 3, 7, 3),
(1297, 74, 18, 3, 7, 8, 1),
(1298, 75, 18, 1, 2, 8, 4),
(1299, 79, 18, 1, 3, 7, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apuestas_mundial`
--

DROP TABLE IF EXISTS `apuestas_mundial`;
CREATE TABLE IF NOT EXISTS `apuestas_mundial` (
  `apu_mun_cod` int(11) NOT NULL AUTO_INCREMENT,
  `apu_mun_equ_cod` int(11) NOT NULL,
  `apu_mun_cam_pil_cod` int(11) NOT NULL,
  `apu_mun_cam_esc_cod` int(11) NOT NULL,
  `apu_mun_vue_pil_cod` int(11) NOT NULL,
  PRIMARY KEY (`apu_mun_cod`),
  KEY `apu_mun_equ_fk` (`apu_mun_equ_cod`),
  KEY `apu_mun_cam_pil_fk` (`apu_mun_cam_pil_cod`),
  KEY `apu_mun_cam_esc_fk` (`apu_mun_cam_esc_cod`),
  KEY `apu_mun_vue_pil_fk` (`apu_mun_vue_pil_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=65 ;

--
-- Volcado de datos para la tabla `apuestas_mundial`
--

INSERT INTO `apuestas_mundial` (`apu_mun_cod`, `apu_mun_equ_cod`, `apu_mun_cam_pil_cod`, `apu_mun_cam_esc_cod`, `apu_mun_vue_pil_cod`) VALUES
(49, 62, 1, 1, 2),
(50, 66, 1, 1, 3),
(51, 67, 1, 1, 1),
(53, 69, 3, 1, 3),
(54, 70, 3, 1, 3),
(55, 71, 3, 1, 1),
(56, 72, 3, 1, 1),
(57, 73, 3, 5, 1),
(58, 74, 3, 2, 10),
(59, 75, 1, 1, 10),
(60, 76, 1, 1, 2),
(61, 77, 3, 1, 1),
(62, 78, 3, 1, 1),
(63, 79, 1, 1, 1),
(64, 80, 3, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campeonatos`
--

DROP TABLE IF EXISTS `campeonatos`;
CREATE TABLE IF NOT EXISTS `campeonatos` (
  `cam_cod` int(11) NOT NULL AUTO_INCREMENT,
  `cam_nom` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cam_des` varchar(150) CHARACTER SET latin1 NOT NULL,
  `cam_usr_cod` int(11) NOT NULL,
  `cam_pass` varchar(25) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`cam_cod`),
  KEY `cam_usr_fk` (`cam_usr_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `campeonatos`
--

INSERT INTO `campeonatos` (`cam_cod`, `cam_nom`, `cam_des`, `cam_usr_cod`, `cam_pass`) VALUES
(8, 'campeonato_1', 'pruebas_1', 47, '55215521'),
(9, 'Salgorditos2013', 'conga, conga, conga', 28, 'sal2013'),
(10, 'Kass_F1_2013', 'el señor burns es la monda', 28, 'kass2013');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campeonatos_clasificacion`
--

DROP TABLE IF EXISTS `campeonatos_clasificacion`;
CREATE TABLE IF NOT EXISTS `campeonatos_clasificacion` (
  `cam_cla_cod` int(11) NOT NULL AUTO_INCREMENT,
  `cam_cla_usu_nom` varchar(75) COLLATE latin1_spanish_ci NOT NULL,
  `cam_cla_equ_cod` int(11) NOT NULL,
  `cam_cla_equ_nom` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `cam_cla_car_cod` int(11) NOT NULL,
  `cam_cla_cam_cod` int(10) unsigned zerofill NOT NULL,
  `cam_cla_pil_1_nom` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `cam_cla_pil_1_pnt` int(11) NOT NULL,
  `cam_cla_pil_2_nom` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `cam_cla_pil_2_pnt` int(11) NOT NULL,
  `cam_cla_pil_3_nom` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `cam_cla_pil_3_pnt` int(11) NOT NULL,
  `cam_cla_pil_4_nom` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `cam_cla_pil_4_pnt` int(11) NOT NULL,
  `cam_cla_esc_1_nom` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `cam_cla_esc_1_pnt` int(11) NOT NULL,
  `cam_cla_esc_2_nom` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `cam_cla_esc_2_pnt` int(11) NOT NULL,
  `cam_cla_mot_1_nom` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `cam_cla_mot_1_pnt` int(11) NOT NULL,
  `cam_cla_pnt_pod` int(11) DEFAULT NULL,
  `cam_cla_pnt_alo` int(11) DEFAULT NULL,
  PRIMARY KEY (`cam_cla_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=59288 ;

--
-- Volcado de datos para la tabla `campeonatos_clasificacion`
--

INSERT INTO `campeonatos_clasificacion` (`cam_cla_cod`, `cam_cla_usu_nom`, `cam_cla_equ_cod`, `cam_cla_equ_nom`, `cam_cla_car_cod`, `cam_cla_cam_cod`, `cam_cla_pil_1_nom`, `cam_cla_pil_1_pnt`, `cam_cla_pil_2_nom`, `cam_cla_pil_2_pnt`, `cam_cla_pil_3_nom`, `cam_cla_pil_3_pnt`, `cam_cla_pil_4_nom`, `cam_cla_pil_4_pnt`, `cam_cla_esc_1_nom`, `cam_cla_esc_1_pnt`, `cam_cla_esc_2_nom`, `cam_cla_esc_2_pnt`, `cam_cla_mot_1_nom`, `cam_cla_mot_1_pnt`, `cam_cla_pnt_pod`, `cam_cla_pnt_alo`) VALUES
(58820, 'ja ja ja', 67, 'equipo 6', 1, 0000000008, 'Valtteri Bottas', 111, 'Jean-Eric Vergne', 106, 'Daniel Ricciardo', 14, 'Charles Pic', 149, 'Infiniti Red Bull Racing', 1110, 'Scuderia Ferrari', 1065, 'Cosworth CA2013', 124, 0, 0),
(58821, 'Esther  R M', 77, 'Silvia McQueen', 1, 0000000009, 'Romain Grosjean', 280, 'Sergio P', 140, 'Luiz Razia', 130, 'Max Chilton', 118, 'Infiniti Red Bull Racing', 1110, 'Mercedes AMG Petronas F1 Team', 561, 'Renault RS27-2013', 541, 0, 0),
(58822, 'Marta de Francisco Marcos', 78, 'Norwich F1', 1, 0000000009, 'Mark Webber', 930, 'Jean-Eric Vergne', 106, 'Luiz Razia', 130, 'Max Chilton', 118, 'Infiniti Red Bull Racing', 1110, 'Mercedes AMG Petronas F1 Team', 561, 'Renault RS27-2013', 541, 0, 0),
(58823, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 1, 0000000009, 'Nico Rosberg', 131, 'Adrian Sutil', 450, 'Daniel Ricciardo', 14, 'Max Chilton', 118, 'Infiniti Red Bull Racing', 1110, 'Mercedes AMG Petronas F1 Team', 561, 'Mercedes FO 108Z', 130, 0, 0),
(58824, 'Optimus JAM --', 76, 'Equipo JJ', 1, 0000000010, 'Nico Rosberg', 131, 'Sergio P', 140, 'Luiz Razia', 130, 'Max Chilton', 118, 'Infiniti Red Bull Racing', 1110, 'Mercedes AMG Petronas F1 Team', 561, 'Cosworth CA2013', 124, 0, 0),
(58825, 'J M V', 69, 'Lalangosta Racing Team', 1, 0000000009, 'Felipe Massa', 975, 'Sergio P', 140, 'Charles Pic', 149, 'Max Chilton', 118, 'Scuderia Ferrari', 1065, 'Williams F1 Team', 58, 'Renault RS27-2013', 541, 0, 0),
(58826, 'David Ordax de las Heras', 74, 'L', 1, 0000000010, 'Fernando Alonso', 1155, 'Adrian Sutil', 450, 'Valtteri Bottas', 111, 'Max Chilton', 118, 'Scuderia Ferrari', 1065, 'Scuderia Toro Rosso', 60, 'Cosworth CA2013', 124, 0, 0),
(58827, 'ja ja ja', 62, 'Equipo 1', 1, 0000000008, 'Sergio P', 140, 'Nico Rosberg', 131, 'Max Chilton', 118, 'Luiz Razia', 130, 'Vodafone McLaren Mercedes', 215, 'Caterham F1 Team', 133, 'Renault RS27-2013', 541, 0, 0),
(58828, 'ja ja ja', 66, 'equipo 5', 1, 0000000008, 'Romain Grosjean', 280, 'Sergio P', 140, 'Max Chilton', 118, 'Luiz Razia', 130, 'Mercedes AMG Petronas F1 Team', 561, 'Vodafone McLaren Mercedes', 215, 'Cosworth CA2013', 124, 0, 0),
(58829, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 1, 0000000009, 'Nico Rosberg', 131, 'Sergio P', 140, 'Daniel Ricciardo', 14, 'Jean-Eric Vergne', 106, 'Mercedes AMG Petronas F1 Team', 561, 'Sauber F1 Team', 44, 'Renault RS27-2013', 541, 0, 0),
(58830, 'Raul Ordax ..', 73, 'troncomovil', 1, 0000000010, 'Nico Rosberg', 131, 'Sergio P', 140, 'Valtteri Bottas', 111, 'Jean-Eric Vergne', 106, 'Mercedes AMG Petronas F1 Team', 561, 'Williams F1 Team', 58, 'Renault RS27-2013', 541, 0, 0),
(58831, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 1, 0000000010, 'Sergio P', 140, 'Adrian Sutil', 450, 'Esteban Guti', 143, 'Daniel Ricciardo', 14, 'Sahara Force India F1 Team', 410, 'Mercedes AMG Petronas F1 Team', 561, 'Renault RS27-2013', 541, 0, 0),
(58832, 'Javier Vega Carbajal', 71, 'Dos Caballos', 1, 0000000009, 'Fernando Alonso', 1155, 'Sergio P', 140, 'Jean-Eric Vergne', 106, 'Daniel Ricciardo', 14, 'Sahara Force India F1 Team', 410, 'Caterham F1 Team', 133, 'Renault RS27-2013', 541, 0, 0),
(58839, 'ja ja ja', 62, 'Equipo 1', 2, 0000000008, 'Sergio P', 560, 'Nico Rosberg', 895, 'Max Chilton', 139, 'Luiz Razia', 153, 'Vodafone McLaren Mercedes', 367, 'Caterham F1 Team', 156, 'Renault RS27-2013', 522, 400, 0),
(58842, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 2, 0000000009, 'Nico Rosberg', 895, 'Sergio P', 560, 'Daniel Ricciardo', 62, 'Jean-Eric Vergne', 270, 'Mercedes AMG Petronas F1 Team', 990, 'Sauber F1 Team', 228, 'Renault RS27-2013', 522, 200, 0),
(58843, 'Raul Ordax ..', 73, 'troncomovil', 2, 0000000010, 'Lewis Hamilton', 1085, 'Adrian Sutil', 57, 'Valtteri Bottas', 170, 'Jean-Eric Vergne', 270, 'Mercedes AMG Petronas F1 Team', 990, 'Scuderia Toro Rosso', 166, 'Renault RS27-2013', 522, 0, 0),
(58847, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 2, 0000000009, 'Nico Rosberg', 895, 'Adrian Sutil', 57, 'Daniel Ricciardo', 62, 'Max Chilton', 139, 'Infiniti Red Bull Racing', 1328, 'Mercedes AMG Petronas F1 Team', 990, 'Mercedes FO 108Z', 297, 400, 0),
(58848, 'Optimus JAM --', 76, 'Equipo JJ', 2, 0000000010, 'Kimi R', 460, 'Sergio P', 560, 'Giedo van der Garde', 160, 'Max Chilton', 139, 'Infiniti Red Bull Racing', 1328, 'Sahara Force India F1 Team', 25, 'Cosworth CA2013', 146, 0, 0),
(58850, 'J M V', 69, 'Lalangosta Racing Team', 2, 0000000009, 'Felipe Massa', 1035, 'Sergio P', 560, 'Charles Pic', 151, 'Max Chilton', 139, 'Scuderia Ferrari', 671, 'Williams F1 Team', 100, 'Renault RS27-2013', 522, 0, 0),
(58859, 'ja ja ja', 67, 'equipo 6', 2, 0000000008, 'Valtteri Bottas', 170, 'Jean-Eric Vergne', 270, 'Daniel Ricciardo', 62, 'Charles Pic', 151, 'Infiniti Red Bull Racing', 1328, 'Scuderia Ferrari', 671, 'Cosworth CA2013', 146, 400, 0),
(58888, 'Marta de Francisco Marcos', 78, 'Norwich F1', 2, 0000000009, 'Kimi R', 460, 'Jean-Eric Vergne', 270, 'Luiz Razia', 153, 'Max Chilton', 139, 'Scuderia Ferrari', 671, 'Lotus F1 Team', 505, 'Renault RS27-2013', 522, 0, 0),
(58893, 'ja ja ja', 66, 'equipo 5', 2, 0000000008, 'Romain Grosjean', 550, 'Sergio P', 560, 'Max Chilton', 139, 'Luiz Razia', 153, 'Mercedes AMG Petronas F1 Team', 990, 'Vodafone McLaren Mercedes', 367, 'Cosworth CA2013', 146, 200, 0),
(58918, 'Esther  R M', 77, 'Silvia McQueen', 2, 0000000009, 'Romain Grosjean', 550, 'Felipe Massa', 1035, 'Giedo van der Garde', 160, 'Max Chilton', 139, 'Lotus F1 Team', 505, 'Mercedes AMG Petronas F1 Team', 990, 'Renault RS27-2013', 522, 0, 0),
(58922, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 2, 0000000010, 'Kimi R', 460, 'Adrian Sutil', 57, 'Esteban Guti', 116, 'Jean-Eric Vergne', 270, 'Sahara Force India F1 Team', 25, 'Scuderia Toro Rosso', 166, 'Renault RS27-2013', 522, 200, 0),
(58929, 'David Ordax de las Heras', 74, 'L', 2, 0000000010, 'Fernando Alonso', 306, 'Adrian Sutil', 57, 'Valtteri Bottas', 170, 'Max Chilton', 139, 'Scuderia Ferrari', 671, 'Scuderia Toro Rosso', 166, 'Cosworth CA2013', 146, 0, 0),
(58936, 'Javier Vega Carbajal', 71, 'Dos Caballos', 2, 0000000009, 'Fernando Alonso', 306, 'Sergio P', 560, 'Jean-Eric Vergne', 270, 'Daniel Ricciardo', 62, 'Sahara Force India F1 Team', 25, 'Caterham F1 Team', 156, 'Renault RS27-2013', 522, 200, 0),
(58938, 'ja ja ja', 62, 'Equipo 1', 3, 0000000008, 'Sergio P', 110, 'Nico Rosberg', 221, 'Max Chilton', 108, 'Luiz Razia', 120, 'Vodafone McLaren Mercedes', 415, 'Caterham F1 Team', 123, 'Renault RS27-2013', 414, 0, 0),
(58940, 'ja ja ja', 66, 'equipo 5', 3, 0000000008, 'Romain Grosjean', 410, 'Sergio P', 110, 'Max Chilton', 108, 'Luiz Razia', 120, 'Mercedes AMG Petronas F1 Team', 756, 'Vodafone McLaren Mercedes', 415, 'Cosworth CA2013', 114, 0, 0),
(58942, 'ja ja ja', 67, 'equipo 6', 3, 0000000008, 'Valtteri Bottas', 123, 'Jean-Eric Vergne', 126, 'Daniel Ricciardo', 535, 'Charles Pic', 129, 'Infiniti Red Bull Racing', 548, 'Scuderia Ferrari', 1070, 'Cosworth CA2013', 114, 0, 0),
(58946, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 3, 0000000009, 'Nico Rosberg', 221, 'Adrian Sutil', -35, 'Daniel Ricciardo', 535, 'Max Chilton', 108, 'Infiniti Red Bull Racing', 548, 'Mercedes AMG Petronas F1 Team', 756, 'Mercedes FO 108Z', 260, 0, 0),
(58948, 'Javier Vega Carbajal', 71, 'Dos Caballos', 3, 0000000009, 'Fernando Alonso', 1420, 'Sergio P', 110, 'Jean-Eric Vergne', 126, 'Daniel Ricciardo', 535, 'Sahara Force India F1 Team', 148, 'Caterham F1 Team', 123, 'Renault RS27-2013', 414, 0, 0),
(58950, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 3, 0000000010, 'Fernando Alonso', 1420, 'Adrian Sutil', -35, 'Esteban Guti', -21, 'Daniel Ricciardo', 535, 'Sahara Force India F1 Team', 148, 'Scuderia Toro Rosso', 331, 'Renault RS27-2013', 414, 200, 0),
(58952, 'Raul Ordax ..', 73, 'troncomovil', 3, 0000000010, 'Fernando Alonso', 1420, 'Romain Grosjean', 410, 'Valtteri Bottas', 123, 'Jean-Eric Vergne', 126, 'Mercedes AMG Petronas F1 Team', 756, 'Scuderia Toro Rosso', 331, 'Mercedes FO 108Z', 260, 600, 0),
(58954, 'David Ordax de las Heras', 74, 'L', 3, 0000000010, 'Fernando Alonso', 1420, 'Adrian Sutil', -35, 'Valtteri Bottas', 123, 'Max Chilton', 108, 'Scuderia Ferrari', 1070, 'Scuderia Toro Rosso', 331, 'Cosworth CA2013', 114, 200, 0),
(58958, 'Optimus JAM --', 76, 'Equipo JJ', 3, 0000000010, 'Kimi R', 1350, 'Sergio P', 110, 'Giedo van der Garde', 117, 'Luiz Razia', 120, 'Infiniti Red Bull Racing', 548, 'Sahara Force India F1 Team', 148, 'Renault RS27-2013', 414, 200, 0),
(58960, 'Esther  R M', 77, 'Silvia McQueen', 3, 0000000009, 'Fernando Alonso', 1420, 'Nico Rosberg', 221, 'Daniel Ricciardo', 535, 'Max Chilton', 108, 'Lotus F1 Team', 880, 'Mercedes AMG Petronas F1 Team', 756, 'Renault RS27-2013', 414, 200, 0),
(58970, 'J M V', 69, 'Lalangosta Racing Team', 3, 0000000009, 'Fernando Alonso', 1420, 'Kimi R', 1350, 'Adrian Sutil', -35, 'Max Chilton', 108, 'Scuderia Ferrari', 1070, 'Williams F1 Team', 107, 'Renault RS27-2013', 414, 400, 0),
(58982, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 3, 0000000009, 'Nico Rosberg', 221, 'Sergio P', 110, 'Daniel Ricciardo', 535, 'Jean-Eric Vergne', 126, 'Williams F1 Team', 107, 'Sauber F1 Team', 105, 'Renault RS27-2013', 414, 0, 0),
(58987, 'Marta de Francisco Marcos', 78, 'Norwich F1', 3, 0000000009, 'Kimi R', 1350, 'Jean-Eric Vergne', 126, 'Pastor Maldonado', 91, 'Max Chilton', 108, 'Scuderia Ferrari', 1070, 'Mercedes AMG Petronas F1 Team', 756, 'Ferrari Type 056', 576, 600, 0),
(58989, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 3, 0000000009, 'Jean-Eric Vergne', 126, 'Adrian Sutil', -35, 'Daniel Ricciardo', 535, 'Fernando Alonso', 1420, 'Scuderia Ferrari', 1070, 'Scuderia Toro Rosso', 331, 'Renault RS27-2013', 414, 0, 0),
(59029, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 5, 0000000009, 'Jean-Eric Vergne', 12, 'Adrian Sutil', 93, 'Daniel Ricciardo', 210, 'Fernando Alonso', 1265, 'Scuderia Ferrari', 1093, 'Scuderia Toro Rosso', 111, 'Renault RS27-2013', 438, 0, 0),
(58991, 'Marta de Francisco Marcos', 78, 'Norwich F1', 4, 0000000009, 'Kimi R', 1050, 'Daniel Ricciardo', 74, 'Pastor Maldonado', 160, 'Max Chilton', 95, 'Scuderia Ferrari', 493, 'Infiniti Red Bull Racing', 1123, 'Renault RS27-2013', 577, 200, 0),
(59020, 'Esther  R M', 77, 'Silvia McQueen', 5, 0000000009, 'Fernando Alonso', 1265, 'Sebastian Vettel', 1095, 'Daniel Ricciardo', 210, 'Pastor Maldonado', 121, 'Lotus F1 Team', 649, 'Scuderia Ferrari', 1093, 'Mercedes FO 108Z', 304, 200, 0),
(58993, 'ja ja ja', 67, 'equipo 6', 4, 0000000008, 'Valtteri Bottas', 101, 'Jean-Eric Vergne', -14, 'Daniel Ricciardo', 74, 'Charles Pic', 98, 'Infiniti Red Bull Racing', 1123, 'Scuderia Ferrari', 493, 'Cosworth CA2013', 91, 200, 0),
(58994, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 4, 0000000009, 'Sebastian Vettel', 1710, 'Sergio P', 560, 'Daniel Ricciardo', 74, 'Jean-Eric Vergne', -14, 'Williams F1 Team', 131, 'Scuderia Ferrari', 493, 'Renault RS27-2013', 577, 200, 0),
(59026, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 5, 0000000009, 'Fernando Alonso', 1265, 'Pastor Maldonado', 121, 'Daniel Ricciardo', 210, 'Giedo van der Garde', 6, 'Infiniti Red Bull Racing', 925, 'Williams F1 Team', 105, 'Renault RS27-2013', 438, 0, 0),
(59019, 'ja ja ja', 67, 'equipo 6', 5, 0000000008, 'Valtteri Bottas', 89, 'Jean-Eric Vergne', 12, 'Daniel Ricciardo', 210, 'Charles Pic', 138, 'Infiniti Red Bull Racing', 925, 'Scuderia Ferrari', 1093, 'Cosworth CA2013', 107, 0, 0),
(58997, 'ja ja ja', 66, 'equipo 5', 4, 0000000008, 'Romain Grosjean', 880, 'Sergio P', 560, 'Max Chilton', 95, 'Luiz Razia', 86, 'Mercedes AMG Petronas F1 Team', 705, 'Vodafone McLaren Mercedes', 395, 'Cosworth CA2013', 91, 200, 0),
(58998, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 4, 0000000009, 'Kimi R', 1050, 'Paul di Resta', 935, 'Daniel Ricciardo', 74, 'Giedo van der Garde', 79, 'Infiniti Red Bull Racing', 1123, 'Mercedes AMG Petronas F1 Team', 705, 'Mercedes FO 108Z', 258, 200, 0),
(59022, 'ja ja ja', 66, 'equipo 5', 5, 0000000008, 'Romain Grosjean', 103, 'Sergio P', 335, 'Max Chilton', 106, 'Luiz Razia', 107, 'Mercedes AMG Petronas F1 Team', 736, 'Vodafone McLaren Mercedes', 348, 'Cosworth CA2013', 107, 0, 0),
(59000, 'Esther  R M', 77, 'Silvia McQueen', 4, 0000000009, 'Fernando Alonso', 675, 'Nico Rosberg', 710, 'Daniel Ricciardo', 74, 'Pastor Maldonado', 160, 'Lotus F1 Team', 965, 'Mercedes AMG Petronas F1 Team', 705, 'Renault RS27-2013', 577, 0, 0),
(59028, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 5, 0000000010, 'Fernando Alonso', 1265, 'Adrian Sutil', 93, 'Esteban Guti', 430, 'Pastor Maldonado', 121, 'Sahara Force India F1 Team', 277, 'Williams F1 Team', 105, 'Renault RS27-2013', 438, 200, 0),
(59024, 'Raul Ordax ..', 73, 'troncomovil', 5, 0000000010, 'Fernando Alonso', 1265, 'Kimi R', 1195, 'Adrian Sutil', 93, 'Jean-Eric Vergne', 12, 'Lotus F1 Team', 649, 'Sahara Force India F1 Team', 277, 'Mercedes FO 108Z', 304, 400, 0),
(59003, 'Raul Ordax ..', 73, 'troncomovil', 4, 0000000010, 'Fernando Alonso', 675, 'Kimi R', 1050, 'Valtteri Bottas', 101, 'Jean-Eric Vergne', -14, 'Lotus F1 Team', 965, 'Sahara Force India F1 Team', 584, 'Mercedes FO 108Z', 258, 0, 0),
(59004, 'Optimus JAM --', 76, 'Equipo JJ', 4, 0000000010, 'Kimi R', 1050, 'Nico Rosberg', 710, 'Giedo van der Garde', 79, 'Daniel Ricciardo', 74, 'Infiniti Red Bull Racing', 1123, 'Williams F1 Team', 131, 'Renault RS27-2013', 577, 0, 0),
(59027, 'J M V', 69, 'Lalangosta Racing Team', 5, 0000000009, 'Fernando Alonso', 1265, 'Kimi R', 1195, 'Adrian Sutil', 93, 'Max Chilton', 106, 'Scuderia Ferrari', 1093, 'Williams F1 Team', 105, 'Renault RS27-2013', 438, 200, 0),
(59006, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 4, 0000000009, 'Fernando Alonso', 675, 'Pastor Maldonado', 160, 'Daniel Ricciardo', 74, 'Giedo van der Garde', 79, 'Infiniti Red Bull Racing', 1123, 'Williams F1 Team', 131, 'Renault RS27-2013', 577, 200, 0),
(59007, 'J M V', 69, 'Lalangosta Racing Team', 4, 0000000009, 'Fernando Alonso', 675, 'Kimi R', 1050, 'Adrian Sutil', 233, 'Max Chilton', 95, 'Scuderia Ferrari', 493, 'Williams F1 Team', 131, 'Renault RS27-2013', 577, 0, 0),
(59021, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 5, 0000000009, 'Sebastian Vettel', 1095, 'Sergio P', 335, 'Daniel Ricciardo', 210, 'Jean-Eric Vergne', 12, 'Williams F1 Team', 105, 'Scuderia Ferrari', 1093, 'Renault RS27-2013', 438, 0, 0),
(59009, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 4, 0000000010, 'Fernando Alonso', 675, 'Paul di Resta', 935, 'Giedo van der Garde', 79, 'Daniel Ricciardo', 74, 'Sahara Force India F1 Team', 584, 'Williams F1 Team', 131, 'Renault RS27-2013', 577, 0, 0),
(59011, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 4, 0000000009, 'Jean-Eric Vergne', -14, 'Adrian Sutil', 233, 'Daniel Ricciardo', 74, 'Fernando Alonso', 675, 'Scuderia Ferrari', 493, 'Scuderia Toro Rosso', 30, 'Renault RS27-2013', 577, 200, 0),
(59012, 'Javier Vega Carbajal', 71, 'Dos Caballos', 4, 0000000009, 'Fernando Alonso', 675, 'Valtteri Bottas', 101, 'Jean-Eric Vergne', -14, 'Daniel Ricciardo', 74, 'Sahara Force India F1 Team', 584, 'Scuderia Toro Rosso', 30, 'Ferrari Type 056', 453, 0, 0),
(59023, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 5, 0000000009, 'Kimi R', 1195, 'Paul di Resta', 460, 'Adrian Sutil', 93, 'Giedo van der Garde', 6, 'Infiniti Red Bull Racing', 925, 'Mercedes AMG Petronas F1 Team', 736, 'Mercedes FO 108Z', 304, 0, 0),
(59014, 'David Ordax de las Heras', 74, 'L', 4, 0000000010, 'Fernando Alonso', 675, 'Adrian Sutil', 233, 'Pastor Maldonado', 160, 'Esteban Guti', 127, 'Scuderia Ferrari', 493, 'Caterham F1 Team', 89, 'Cosworth CA2013', 91, 0, 0),
(59025, 'Optimus JAM --', 76, 'Equipo JJ', 5, 0000000010, 'Kimi R', 1195, 'Nico Rosberg', 975, 'Giedo van der Garde', 6, 'Daniel Ricciardo', 210, 'Infiniti Red Bull Racing', 925, 'Williams F1 Team', 105, 'Renault RS27-2013', 438, 200, 0),
(59018, 'Marta de Francisco Marcos', 78, 'Norwich F1', 5, 0000000009, 'Fernando Alonso', 1265, 'Adrian Sutil', 93, 'Pastor Maldonado', 121, 'Max Chilton', 106, 'Scuderia Ferrari', 1093, 'Infiniti Red Bull Racing', 925, 'Renault RS27-2013', 438, 200, 0),
(59017, 'ja ja ja', 62, 'Equipo 1', 4, 0000000008, 'Sergio P', 560, 'Nico Rosberg', 710, 'Max Chilton', 95, 'Luiz Razia', 86, 'Vodafone McLaren Mercedes', 395, 'Caterham F1 Team', 89, 'Renault RS27-2013', 577, 200, 0),
(59030, 'Javier Vega Carbajal', 71, 'Dos Caballos', 5, 0000000009, 'Fernando Alonso', 1265, 'Valtteri Bottas', 89, 'Jean-Eric Vergne', 12, 'Daniel Ricciardo', 210, 'Sahara Force India F1 Team', 277, 'Scuderia Toro Rosso', 111, 'Ferrari Type 056', 554, 200, 0),
(59031, 'David Ordax de las Heras', 74, 'L', 5, 0000000010, 'Fernando Alonso', 1265, 'Adrian Sutil', 93, 'Valtteri Bottas', 89, 'Esteban Guti', 430, 'Scuderia Ferrari', 1093, 'Caterham F1 Team', 72, 'Mercedes FO 108Z', 304, 400, 0),
(59032, 'ja ja ja', 62, 'Equipo 1', 5, 0000000008, 'Sergio P', 335, 'Nico Rosberg', 975, 'Max Chilton', 106, 'Luiz Razia', 107, 'Vodafone McLaren Mercedes', 348, 'Caterham F1 Team', 72, 'Renault RS27-2013', 438, 0, 0),
(59033, 'ja ja ja', 67, 'equipo 6', 6, 0000000008, 'Valtteri Bottas', 116, 'Jean-Eric Vergne', 350, 'Daniel Ricciardo', 31, 'Charles Pic', -13, 'Infiniti Red Bull Racing', 1323, 'Scuderia Ferrari', 299, 'Cosworth CA2013', 120, 0, 0),
(59034, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 6, 0000000009, 'Fernando Alonso', 570, 'Paul di Resta', 330, 'Max Chilton', 171, 'Giedo van der Garde', 90, 'Infiniti Red Bull Racing', 1323, 'Mercedes AMG Petronas F1 Team', 1320, 'Mercedes FO 108Z', 256, 0, 0),
(59035, 'Optimus JAM --', 76, 'Equipo JJ', 6, 0000000010, 'Kimi R', 400, 'Nico Rosberg', 1500, 'Giedo van der Garde', 90, 'Daniel Ricciardo', 31, 'Infiniti Red Bull Racing', 1323, 'Williams F1 Team', 70, 'Renault RS27-2013', 413, 0, 0),
(59036, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 6, 0000000009, 'Fernando Alonso', 570, 'Pastor Maldonado', 24, 'Daniel Ricciardo', 31, 'Giedo van der Garde', 90, 'Infiniti Red Bull Racing', 1323, 'Williams F1 Team', 70, 'Renault RS27-2013', 413, 0, 0),
(59037, 'Marta de Francisco Marcos', 78, 'Norwich F1', 6, 0000000009, 'Fernando Alonso', 570, 'Adrian Sutil', 720, 'Pastor Maldonado', 24, 'Max Chilton', 171, 'Scuderia Ferrari', 299, 'Infiniti Red Bull Racing', 1323, 'Renault RS27-2013', 413, 0, 0),
(59038, 'J M V', 69, 'Lalangosta Racing Team', 6, 0000000009, 'Fernando Alonso', 570, 'Kimi R', 400, 'Adrian Sutil', 720, 'Max Chilton', 171, 'Scuderia Ferrari', 299, 'Williams F1 Team', 70, 'Renault RS27-2013', 413, 0, 0),
(59039, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 6, 0000000009, 'Jean-Eric Vergne', 350, 'Adrian Sutil', 720, 'Daniel Ricciardo', 31, 'Fernando Alonso', 570, 'Scuderia Ferrari', 299, 'Scuderia Toro Rosso', 191, 'Renault RS27-2013', 413, 0, 0),
(59040, 'David Ordax de las Heras', 74, 'L', 6, 0000000010, 'Fernando Alonso', 570, 'Adrian Sutil', 720, 'Valtteri Bottas', 116, 'Esteban Guti', 153, 'Scuderia Ferrari', 299, 'Caterham F1 Team', 39, 'Mercedes FO 108Z', 256, 0, 0),
(59041, 'ja ja ja', 62, 'Equipo 1', 6, 0000000008, 'Sergio P', 179, 'Nico Rosberg', 1500, 'Max Chilton', 171, 'Luiz Razia', 68, 'Vodafone McLaren Mercedes', 385, 'Caterham F1 Team', 39, 'Renault RS27-2013', 413, 0, 0),
(59042, 'Raul Ordax ..', 73, 'troncomovil', 6, 0000000010, 'Fernando Alonso', 570, 'Kimi R', 400, 'Adrian Sutil', 720, 'Jean-Eric Vergne', 350, 'Lotus F1 Team', 222, 'Sahara Force India F1 Team', 525, 'Mercedes FO 108Z', 256, 0, 0),
(59043, 'Esther  R M', 77, 'Silvia McQueen', 6, 0000000009, 'Fernando Alonso', 570, 'Sebastian Vettel', 1560, 'Lewis Hamilton', 1140, 'Adrian Sutil', 720, 'Mercedes AMG Petronas F1 Team', 1320, 'Scuderia Ferrari', 299, 'Mercedes FO 108Z', 256, 0, 0),
(59044, 'ja ja ja', 66, 'equipo 5', 6, 0000000008, 'Romain Grosjean', 43, 'Sergio P', 179, 'Max Chilton', 171, 'Luiz Razia', 68, 'Mercedes AMG Petronas F1 Team', 1320, 'Vodafone McLaren Mercedes', 385, 'Cosworth CA2013', 120, 0, 0),
(59045, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 6, 0000000010, 'Lewis Hamilton', 1140, 'Adrian Sutil', 720, 'Esteban Guti', 153, 'Pastor Maldonado', 24, 'Sahara Force India F1 Team', 525, 'Mercedes AMG Petronas F1 Team', 1320, 'Mercedes FO 108Z', 256, 0, 0),
(59046, 'Javier Vega Carbajal', 71, 'Dos Caballos', 6, 0000000009, 'Fernando Alonso', 570, 'Valtteri Bottas', 116, 'Jean-Eric Vergne', 350, 'Daniel Ricciardo', 31, 'Sahara Force India F1 Team', 525, 'Scuderia Toro Rosso', 191, 'Ferrari Type 056', 584, 0, 0),
(59047, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 6, 0000000009, 'Sebastian Vettel', 1560, 'Sergio P', 179, 'Daniel Ricciardo', 31, 'Jean-Eric Vergne', 350, 'Williams F1 Team', 70, 'Scuderia Ferrari', 299, 'Renault RS27-2013', 413, 0, 0),
(59048, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 7, 0000000009, 'Sebastian Vettel', 1500, 'Fernando Alonso', 1115, 'Daniel Ricciardo', 70, 'Jean-Eric Vergne', 645, 'Williams F1 Team', 255, 'Mercedes AMG Petronas F1 Team', 1058, 'Mercedes FO 108Z', 83, 400, 0),
(59049, 'Marta de Francisco Marcos', 78, 'Norwich F1', 7, 0000000009, 'Fernando Alonso', 1115, 'Adrian Sutil', 280, 'Pastor Maldonado', 74, 'Jean-Eric Vergne', 645, 'Scuderia Ferrari', 748, 'Infiniti Red Bull Racing', 1343, 'Renault RS27-2013', 474, 0, 0),
(59050, 'Esther  R M', 77, 'Silvia McQueen', 7, 0000000009, 'Fernando Alonso', 1115, 'Sebastian Vettel', 1500, 'Mark Webber', 1185, 'Adrian Sutil', 280, 'Lotus F1 Team', 237, 'Scuderia Ferrari', 748, 'Renault RS27-2013', 474, 0, 0),
(59051, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 7, 0000000009, 'Fernando Alonso', 1115, 'Paul di Resta', 500, 'Max Chilton', 96, 'Giedo van der Garde', 38, 'Infiniti Red Bull Racing', 1343, 'Mercedes AMG Petronas F1 Team', 1058, 'Mercedes FO 108Z', 83, 0, 0),
(59052, 'Raul Ordax ..', 73, 'troncomovil', 7, 0000000010, 'Fernando Alonso', 1115, 'Romain Grosjean', 183, 'Adrian Sutil', 280, 'Jean-Eric Vergne', 645, 'Mercedes AMG Petronas F1 Team', 1058, 'Sahara Force India F1 Team', 390, 'Renault RS27-2013', 474, 0, 0),
(59053, 'J M V', 69, 'Lalangosta Racing Team', 7, 0000000009, 'Fernando Alonso', 1115, 'Kimi R', 290, 'Adrian Sutil', 280, 'Max Chilton', 96, 'Scuderia Ferrari', 748, 'Williams F1 Team', 255, 'Renault RS27-2013', 474, 0, 0),
(59054, 'Javier Vega Carbajal', 71, 'Dos Caballos', 7, 0000000009, 'Fernando Alonso', 1115, 'Valtteri Bottas', 436, 'Jean-Eric Vergne', 645, 'Daniel Ricciardo', 70, 'Sahara Force India F1 Team', 390, 'Scuderia Toro Rosso', 358, 'Ferrari Type 056', 638, 0, 0),
(59055, 'David Ordax de las Heras', 74, 'L', 7, 0000000010, 'Fernando Alonso', 1115, 'Adrian Sutil', 280, 'Valtteri Bottas', 436, 'Esteban Guti', 60, 'Scuderia Ferrari', 748, 'Caterham F1 Team', 63, 'Mercedes FO 108Z', 83, 0, 0),
(59056, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 7, 0000000010, 'Lewis Hamilton', 1245, 'Adrian Sutil', 280, 'Esteban Guti', 60, 'Pastor Maldonado', 74, 'Sahara Force India F1 Team', 390, 'Mercedes AMG Petronas F1 Team', 1058, 'Mercedes FO 108Z', 83, 200, 0),
(59057, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 7, 0000000009, 'Jean-Eric Vergne', 645, 'Adrian Sutil', 280, 'Daniel Ricciardo', 70, 'Fernando Alonso', 1115, 'Scuderia Ferrari', 748, 'Scuderia Toro Rosso', 358, 'Renault RS27-2013', 474, 400, 0),
(59058, 'Optimus JAM --', 76, 'Equipo JJ', 7, 0000000010, 'Kimi R', 290, 'Nico Rosberg', 870, 'Giedo van der Garde', 38, 'Daniel Ricciardo', 70, 'Infiniti Red Bull Racing', 1343, 'Williams F1 Team', 255, 'Renault RS27-2013', 474, 0, 0),
(59059, 'ja ja ja', 62, 'Equipo 1', 7, 0000000008, 'Sergio P', 110, 'Nico Rosberg', 870, 'Max Chilton', 96, 'Luiz Razia', 108, 'Vodafone McLaren Mercedes', 113, 'Caterham F1 Team', 63, 'Renault RS27-2013', 474, 200, 0),
(59060, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 7, 0000000009, 'Jenson Button', 116, 'Kimi R', 290, 'Daniel Ricciardo', 70, 'Giedo van der Garde', 38, 'Lotus F1 Team', 237, 'Williams F1 Team', 255, 'Renault RS27-2013', 474, 400, 0),
(59061, 'ja ja ja', 66, 'equipo 5', 7, 0000000008, 'Romain Grosjean', 183, 'Sergio P', 110, 'Max Chilton', 96, 'Luiz Razia', 108, 'Mercedes AMG Petronas F1 Team', 1058, 'Vodafone McLaren Mercedes', 113, 'Cosworth CA2013', 102, 200, 0),
(59062, 'ja ja ja', 67, 'equipo 6', 7, 0000000008, 'Valtteri Bottas', 436, 'Jean-Eric Vergne', 645, 'Daniel Ricciardo', 70, 'Charles Pic', 87, 'Infiniti Red Bull Racing', 1343, 'Scuderia Ferrari', 748, 'Cosworth CA2013', 102, 200, 0),
(59063, 'Marta de Francisco Marcos', 78, 'Norwich F1', 8, 0000000009, 'Fernando Alonso', 920, 'Adrian Sutil', 570, 'Pastor Maldonado', 140, 'Jean-Eric Vergne', -15, 'Scuderia Ferrari', 735, 'Infiniti Red Bull Racing', 898, 'Renault RS27-2013', 400, 0, 0),
(59064, 'ja ja ja', 67, 'equipo 6', 8, 0000000008, 'Valtteri Bottas', 136, 'Jean-Eric Vergne', -15, 'Daniel Ricciardo', 510, 'Charles Pic', 120, 'Infiniti Red Bull Racing', 898, 'Scuderia Ferrari', 735, 'Cosworth CA2013', 119, 0, 0),
(59065, 'Esther  R M', 77, 'Silvia McQueen', 8, 0000000009, 'Fernando Alonso', 920, 'Sebastian Vettel', 351, 'Mark Webber', 1445, 'Adrian Sutil', 570, 'Lotus F1 Team', 441, 'Scuderia Ferrari', 735, 'Renault RS27-2013', 400, 0, 0),
(59066, 'ja ja ja', 66, 'equipo 5', 8, 0000000008, 'Romain Grosjean', 161, 'Sergio P', 50, 'Max Chilton', 118, 'Luiz Razia', 119, 'Mercedes AMG Petronas F1 Team', 1323, 'Vodafone McLaren Mercedes', 79, 'Cosworth CA2013', 119, 0, 0),
(59067, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 8, 0000000009, 'Fernando Alonso', 920, 'Paul di Resta', 370, 'Max Chilton', 118, 'Giedo van der Garde', 127, 'Infiniti Red Bull Racing', 898, 'Mercedes AMG Petronas F1 Team', 1323, 'Mercedes FO 108Z', 130, 0, 0),
(59068, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 8, 0000000010, 'Lewis Hamilton', 1185, 'Adrian Sutil', 570, 'Esteban Guti', 121, 'Pastor Maldonado', 140, 'Sahara Force India F1 Team', 470, 'Mercedes AMG Petronas F1 Team', 1323, 'Mercedes FO 108Z', 130, 0, 0),
(59069, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 8, 0000000009, 'Sebastian Vettel', 351, 'Fernando Alonso', 920, 'Daniel Ricciardo', 510, 'Jean-Eric Vergne', -15, 'Williams F1 Team', 138, 'Mercedes AMG Petronas F1 Team', 1323, 'Mercedes FO 108Z', 130, 0, 0),
(59070, 'Raul Ordax ..', 73, 'troncomovil', 8, 0000000010, 'Fernando Alonso', 920, 'Romain Grosjean', 161, 'Adrian Sutil', 570, 'Jean-Eric Vergne', -15, 'Mercedes AMG Petronas F1 Team', 1323, 'Sahara Force India F1 Team', 470, 'Renault RS27-2013', 400, 0, 0),
(59071, 'Optimus JAM --', 76, 'Equipo JJ', 8, 0000000010, 'Kimi R', 720, 'Nico Rosberg', 1460, 'Giedo van der Garde', 127, 'Daniel Ricciardo', 510, 'Infiniti Red Bull Racing', 898, 'Williams F1 Team', 138, 'Renault RS27-2013', 400, 200, 0),
(59072, 'J M V', 69, 'Lalangosta Racing Team', 8, 0000000009, 'Fernando Alonso', 920, 'Kimi R', 720, 'Adrian Sutil', 570, 'Max Chilton', 118, 'Scuderia Ferrari', 735, 'Williams F1 Team', 138, 'Renault RS27-2013', 400, 0, 0),
(59073, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 8, 0000000009, 'Jenson Button', 108, 'Kimi R', 720, 'Daniel Ricciardo', 510, 'Giedo van der Garde', 127, 'Lotus F1 Team', 441, 'Williams F1 Team', 138, 'Renault RS27-2013', 400, 0, 0),
(59074, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 8, 0000000009, 'Jean-Eric Vergne', -15, 'Adrian Sutil', 570, 'Daniel Ricciardo', 510, 'Fernando Alonso', 920, 'Scuderia Ferrari', 735, 'Scuderia Toro Rosso', 248, 'Renault RS27-2013', 400, 0, 0),
(59075, 'Javier Vega Carbajal', 71, 'Dos Caballos', 8, 0000000009, 'Fernando Alonso', 920, 'Valtteri Bottas', 136, 'Jean-Eric Vergne', -15, 'Daniel Ricciardo', 510, 'Sahara Force India F1 Team', 470, 'Scuderia Toro Rosso', 248, 'Ferrari Type 056', 694, 0, 0),
(59076, 'David Ordax de las Heras', 74, 'L', 8, 0000000010, 'Fernando Alonso', 920, 'Adrian Sutil', 570, 'Valtteri Bottas', 136, 'Esteban Guti', 121, 'Scuderia Ferrari', 735, 'Caterham F1 Team', 124, 'Mercedes FO 108Z', 130, 0, 0),
(59077, 'ja ja ja', 62, 'Equipo 1', 8, 0000000008, 'Sergio P', 50, 'Nico Rosberg', 1460, 'Max Chilton', 118, 'Luiz Razia', 119, 'Vodafone McLaren Mercedes', 79, 'Caterham F1 Team', 124, 'Renault RS27-2013', 400, 0, 0),
(59078, 'Marta de Francisco Marcos', 78, 'Norwich F1', 9, 0000000009, 'Fernando Alonso', 825, 'Adrian Sutil', -36, 'Pastor Maldonado', 250, 'Jean-Eric Vergne', 116, 'Scuderia Ferrari', 628, 'Infiniti Red Bull Racing', 1143, 'Renault RS27-2013', 605, 0, 0),
(59079, 'Optimus JAM --', 76, 'Equipo JJ', 9, 0000000010, 'Kimi R', 1115, 'Sebastian Vettel', 1245, 'Giedo van der Garde', 151, 'Paul di Resta', 87, 'Infiniti Red Bull Racing', 1143, 'Scuderia Ferrari', 628, 'Renault RS27-2013', 605, 0, 0),
(59080, 'ja ja ja', 67, 'equipo 6', 9, 0000000008, 'Valtteri Bottas', 22, 'Jean-Eric Vergne', 116, 'Daniel Ricciardo', 158, 'Charles Pic', 130, 'Infiniti Red Bull Racing', 1143, 'Scuderia Ferrari', 628, 'Cosworth CA2013', 139, 0, 0),
(59081, 'Esther  R M', 77, 'Silvia McQueen', 9, 0000000009, 'Fernando Alonso', 825, 'Sebastian Vettel', 1245, 'Mark Webber', 1040, 'Adrian Sutil', -36, 'Lotus F1 Team', 1000, 'Scuderia Ferrari', 628, 'Renault RS27-2013', 605, 0, 0),
(59082, 'ja ja ja', 66, 'equipo 5', 9, 0000000008, 'Romain Grosjean', 885, 'Sergio P', 310, 'Max Chilton', 138, 'Luiz Razia', 139, 'Mercedes AMG Petronas F1 Team', 893, 'Vodafone McLaren Mercedes', 385, 'Cosworth CA2013', 139, 0, 0),
(59083, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 9, 0000000009, 'Fernando Alonso', 825, 'Paul di Resta', 87, 'Max Chilton', 138, 'Giedo van der Garde', 151, 'Infiniti Red Bull Racing', 1143, 'Mercedes AMG Petronas F1 Team', 893, 'Mercedes FO 108Z', 222, 200, 0),
(59084, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 9, 0000000010, 'Romain Grosjean', 885, 'Adrian Sutil', -36, 'Kimi R', 1115, 'Paul di Resta', 87, 'Sahara Force India F1 Team', 26, 'Mercedes AMG Petronas F1 Team', 893, 'Mercedes FO 108Z', 222, 0, 0),
(59085, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 9, 0000000009, 'Sebastian Vettel', 1245, 'Fernando Alonso', 825, 'Daniel Ricciardo', 158, 'Jean-Eric Vergne', 116, 'Williams F1 Team', 136, 'Mercedes AMG Petronas F1 Team', 893, 'Mercedes FO 108Z', 222, 0, 0),
(59086, 'Raul Ordax ..', 73, 'troncomovil', 9, 0000000010, 'Fernando Alonso', 825, 'Romain Grosjean', 885, 'Adrian Sutil', -36, 'Jean-Eric Vergne', 116, 'Mercedes AMG Petronas F1 Team', 893, 'Sahara Force India F1 Team', 26, 'Renault RS27-2013', 605, 0, 0),
(59087, 'J M V', 69, 'Lalangosta Racing Team', 9, 0000000009, 'Fernando Alonso', 825, 'Kimi R', 1115, 'Adrian Sutil', -36, 'Max Chilton', 138, 'Scuderia Ferrari', 628, 'Williams F1 Team', 136, 'Renault RS27-2013', 605, 0, 0),
(59088, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 9, 0000000009, 'Jenson Button', 460, 'Kimi R', 1115, 'Daniel Ricciardo', 158, 'Giedo van der Garde', 151, 'Lotus F1 Team', 1000, 'Williams F1 Team', 136, 'Renault RS27-2013', 605, 0, 0),
(59089, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 9, 0000000009, 'Jean-Eric Vergne', 116, 'Adrian Sutil', -36, 'Daniel Ricciardo', 158, 'Fernando Alonso', 825, 'Scuderia Ferrari', 628, 'Scuderia Toro Rosso', 137, 'Renault RS27-2013', 605, 0, 0),
(59090, 'Javier Vega Carbajal', 71, 'Dos Caballos', 9, 0000000009, 'Fernando Alonso', 825, 'Valtteri Bottas', 22, 'Jean-Eric Vergne', 116, 'Daniel Ricciardo', 158, 'Sahara Force India F1 Team', 26, 'Scuderia Toro Rosso', 137, 'Ferrari Type 056', 421, 0, 0),
(59091, 'David Ordax de las Heras', 74, 'L', 9, 0000000010, 'Fernando Alonso', 825, 'Adrian Sutil', -36, 'Valtteri Bottas', 22, 'Esteban Guti', 8, 'Scuderia Ferrari', 628, 'Caterham F1 Team', 141, 'Mercedes FO 108Z', 222, 0, 0),
(59092, 'ja ja ja', 62, 'Equipo 1', 9, 0000000008, 'Sergio P', 310, 'Nico Rosberg', 286, 'Max Chilton', 138, 'Luiz Razia', 139, 'Vodafone McLaren Mercedes', 385, 'Caterham F1 Team', 141, 'Renault RS27-2013', 605, 0, 0),
(59093, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 11, 0000000010, 'Sebastian Vettel', 1500, 'Adrian Sutil', 99, 'Kimi R', 100, 'Jean-Eric Vergne', -11, 'Sahara Force India F1 Team', 32, 'Lotus F1 Team', 225, 'Mercedes FO 108Z', 384, 400, 0),
(59094, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 11, 0000000009, 'Sebastian Vettel', 1500, 'Fernando Alonso', 1155, 'Daniel Ricciardo', 535, 'Jean-Eric Vergne', -11, 'Williams F1 Team', 106, 'Mercedes AMG Petronas F1 Team', 603, 'Mercedes FO 108Z', 384, 200, 0),
(59095, 'Marta de Francisco Marcos', 78, 'Norwich F1', 11, 0000000009, 'Fernando Alonso', 1155, 'Adrian Sutil', 99, 'Pastor Maldonado', 91, 'Jean-Eric Vergne', -11, 'Scuderia Ferrari', 1065, 'Infiniti Red Bull Racing', 1373, 'Renault RS27-2013', 453, 0, 0),
(59096, 'Esther  R M', 77, 'Silvia McQueen', 11, 0000000009, 'Fernando Alonso', 1155, 'Sebastian Vettel', 1500, 'Mark Webber', 1245, 'Adrian Sutil', 99, 'Lotus F1 Team', 225, 'Scuderia Ferrari', 1065, 'Renault RS27-2013', 453, 0, 0),
(59097, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 11, 0000000009, 'Fernando Alonso', 1155, 'Paul di Resta', -35, 'Max Chilton', 105, 'Giedo van der Garde', 97, 'Infiniti Red Bull Racing', 1373, 'Mercedes AMG Petronas F1 Team', 603, 'Mercedes FO 108Z', 384, 0, 0),
(59098, 'Raul Ordax ..', 73, 'troncomovil', 11, 0000000010, 'Fernando Alonso', 1155, 'Kimi R', 100, 'Adrian Sutil', 99, 'Esteban Guti', 123, 'Scuderia Ferrari', 1065, 'Sahara Force India F1 Team', 32, 'Renault RS27-2013', 453, 0, 0),
(59099, 'J M V', 69, 'Lalangosta Racing Team', 11, 0000000009, 'Fernando Alonso', 1155, 'Kimi R', 100, 'Adrian Sutil', 99, 'Max Chilton', 105, 'Scuderia Ferrari', 1065, 'Williams F1 Team', 106, 'Renault RS27-2013', 453, 0, 0),
(59100, 'Javier Vega Carbajal', 71, 'Dos Caballos', 11, 0000000009, 'Fernando Alonso', 1155, 'Valtteri Bottas', 120, 'Jean-Eric Vergne', -11, 'Daniel Ricciardo', 535, 'Sahara Force India F1 Team', 32, 'Scuderia Toro Rosso', 262, 'Ferrari Type 056', 490, 0, 0),
(59101, 'David Ordax de las Heras', 74, 'L', 11, 0000000010, 'Fernando Alonso', 1155, 'Adrian Sutil', 99, 'Kimi R', 100, 'Daniel Ricciardo', 535, 'Scuderia Toro Rosso', 262, 'Caterham F1 Team', 108, 'Mercedes FO 108Z', 384, 0, 0),
(59102, 'ja ja ja', 66, 'equipo 5', 11, 0000000008, 'Romain Grosjean', 350, 'Sergio P', 166, 'Max Chilton', 105, 'Luiz Razia', 106, 'Mercedes AMG Petronas F1 Team', 603, 'Vodafone McLaren Mercedes', 211, 'Cosworth CA2013', 106, 200, 0),
(59103, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 11, 0000000009, 'Jenson Button', 255, 'Kimi R', 100, 'Daniel Ricciardo', 535, 'Giedo van der Garde', 97, 'Lotus F1 Team', 225, 'Williams F1 Team', 106, 'Renault RS27-2013', 453, 400, 0),
(59104, 'Optimus JAM --', 76, 'Equipo JJ', 11, 0000000010, 'Kimi R', 100, 'Sebastian Vettel', 1500, 'Giedo van der Garde', 97, 'Paul di Resta', -35, 'Infiniti Red Bull Racing', 1373, 'Scuderia Ferrari', 1065, 'Renault RS27-2013', 453, 0, 0),
(59105, 'ja ja ja', 62, 'Equipo 1', 11, 0000000008, 'Sergio P', 166, 'Nico Rosberg', 675, 'Max Chilton', 105, 'Luiz Razia', 106, 'Vodafone McLaren Mercedes', 211, 'Caterham F1 Team', 108, 'Renault RS27-2013', 453, 200, 0),
(59106, 'ja ja ja', 67, 'equipo 6', 11, 0000000008, 'Valtteri Bottas', 120, 'Jean-Eric Vergne', -11, 'Daniel Ricciardo', 535, 'Charles Pic', 118, 'Infiniti Red Bull Racing', 1373, 'Scuderia Ferrari', 1065, 'Cosworth CA2013', 106, 200, 0),
(59107, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 11, 0000000009, 'Jean-Eric Vergne', -11, 'Adrian Sutil', 99, 'Daniel Ricciardo', 535, 'Fernando Alonso', 1155, 'Scuderia Ferrari', 1065, 'Scuderia Toro Rosso', 262, 'Renault RS27-2013', 453, 400, 0),
(59108, 'ja ja ja', 62, 'Equipo 1', 10, 0000000008, 'Sergio P', 120, 'Nico Rosberg', 975, 'Max Chilton', 71, 'Luiz Razia', 72, 'Vodafone McLaren Mercedes', 398, 'Caterham F1 Team', 44, 'Renault RS27-2013', 437, 200, 0),
(59109, 'ja ja ja', 63, 'Equipo 2', 10, 0000000008, 'Sebastian Vettel', 1710, 'Jean-Eric Vergne', 156, 'Daniel Ricciardo', 290, 'Charles Pic', 8, 'Infiniti Red Bull Racing', 1350, 'Caterham F1 Team', 44, 'Renault RS27-2013', 437, NULL, NULL),
(59110, 'Esther  R M', 77, 'Silvia McQueen', 10, 0000000009, 'Fernando Alonso', 1030, 'Sebastian Vettel', 1710, 'Mark Webber', 990, 'Adrian Sutil', 280, 'Lotus F1 Team', 240, 'Scuderia Ferrari', 745, 'Renault RS27-2013', 437, 0, 0),
(59111, 'Raul Ordax ..', 73, 'troncomovil', 10, 0000000010, 'Fernando Alonso', 1030, 'Romain Grosjean', 430, 'Adrian Sutil', 280, 'Jean-Eric Vergne', 156, 'Mercedes AMG Petronas F1 Team', 1133, 'Sahara Force India F1 Team', 228, 'Renault RS27-2013', 437, 0, 0),
(59112, 'Optimus JAM --', 76, 'Equipo JJ', 10, 0000000010, 'Kimi R', 50, 'Sebastian Vettel', 1710, 'Giedo van der Garde', 79, 'Paul di Resta', 176, 'Infiniti Red Bull Racing', 1350, 'Scuderia Ferrari', 745, 'Renault RS27-2013', 437, 0, 0),
(59113, 'J M V', 69, 'Lalangosta Racing Team', 10, 0000000009, 'Fernando Alonso', 1030, 'Kimi R', 50, 'Adrian Sutil', 280, 'Max Chilton', 71, 'Scuderia Ferrari', 745, 'Williams F1 Team', 114, 'Renault RS27-2013', 437, 0, 0),
(59114, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 10, 0000000009, 'Jean-Eric Vergne', 156, 'Adrian Sutil', 280, 'Daniel Ricciardo', 290, 'Fernando Alonso', 1030, 'Scuderia Ferrari', 745, 'Scuderia Toro Rosso', 223, 'Renault RS27-2013', 437, 400, 0),
(59115, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 10, 0000000009, 'Jenson Button', 675, 'Kimi R', 50, 'Daniel Ricciardo', 290, 'Giedo van der Garde', 79, 'Lotus F1 Team', 240, 'Williams F1 Team', 114, 'Renault RS27-2013', 437, 400, 0),
(59116, 'Marta de Francisco Marcos', 78, 'Norwich F1', 10, 0000000009, 'Fernando Alonso', 1030, 'Adrian Sutil', 280, 'Pastor Maldonado', 88, 'Jean-Eric Vergne', 156, 'Scuderia Ferrari', 745, 'Infiniti Red Bull Racing', 1350, 'Renault RS27-2013', 437, 0, 0),
(59117, 'Javier Vega Carbajal', 71, 'Dos Caballos', 10, 0000000009, 'Fernando Alonso', 1030, 'Valtteri Bottas', 140, 'Jean-Eric Vergne', 156, 'Daniel Ricciardo', 290, 'Sahara Force India F1 Team', 228, 'Scuderia Toro Rosso', 223, 'Ferrari Type 056', 582, 0, 0),
(59118, 'David Ordax de las Heras', 74, 'L', 10, 0000000010, 'Fernando Alonso', 1030, 'Adrian Sutil', 280, 'Valtteri Bottas', 140, 'Esteban Guti', 161, 'Scuderia Ferrari', 745, 'Caterham F1 Team', 44, 'Mercedes FO 108Z', 260, 0, 0),
(59119, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 10, 0000000009, 'Sebastian Vettel', 1710, 'Fernando Alonso', 1030, 'Daniel Ricciardo', 290, 'Jean-Eric Vergne', 156, 'Williams F1 Team', 114, 'Mercedes AMG Petronas F1 Team', 1133, 'Mercedes FO 108Z', 260, 200, 0),
(59120, 'ja ja ja', 65, 'Equipo 4', 10, 0000000008, 'Sebastian Vettel', 1710, 'Jean-Eric Vergne', 156, 'Luiz Razia', 72, 'Max Chilton', 71, 'Infiniti Red Bull Racing', 1350, 'Caterham F1 Team', 44, 'Mercedes FO 108Z', 260, NULL, NULL),
(59121, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 10, 0000000009, 'Fernando Alonso', 1030, 'Paul di Resta', 176, 'Max Chilton', 71, 'Giedo van der Garde', 79, 'Infiniti Red Bull Racing', 1350, 'Mercedes AMG Petronas F1 Team', 1133, 'Mercedes FO 108Z', 260, 0, 0),
(59122, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 10, 0000000010, 'Romain Grosjean', 430, 'Adrian Sutil', 280, 'Kimi R', 50, 'Paul di Resta', 176, 'Sahara Force India F1 Team', 228, 'Mercedes AMG Petronas F1 Team', 1133, 'Mercedes FO 108Z', 260, 0, 0),
(59123, 'ja ja ja', 67, 'equipo 6', 10, 0000000008, 'Valtteri Bottas', 140, 'Jean-Eric Vergne', 156, 'Daniel Ricciardo', 290, 'Charles Pic', 8, 'Infiniti Red Bull Racing', 1350, 'Scuderia Ferrari', 745, 'Cosworth CA2013', 72, 200, 0),
(59124, 'ja ja ja', 66, 'equipo 5', 10, 0000000008, 'Romain Grosjean', 430, 'Sergio P', 120, 'Max Chilton', 71, 'Luiz Razia', 72, 'Mercedes AMG Petronas F1 Team', 1133, 'Vodafone McLaren Mercedes', 398, 'Cosworth CA2013', 72, 200, 0),
(59125, 'ja ja ja', 64, 'Equipo 3', 10, 0000000008, 'Sebastian Vettel', 1710, 'Luiz Razia', 72, 'Charles Pic', 8, 'Adrian Sutil', 280, 'Infiniti Red Bull Racing', 1350, 'Marussia F1 Team', 72, 'Cosworth CA2013', 72, NULL, NULL),
(59157, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 12, 0000000009, 'Fernando Alonso', 1085, 'Paul di Resta', 70, 'Max Chilton', 138, 'Giedo van der Garde', 129, 'Infiniti Red Bull Racing', 1030, 'Mercedes AMG Petronas F1 Team', 983, 'Mercedes FO 108Z', 312, 0, 0),
(59152, 'Marta de Francisco Marcos', 78, 'Norwich F1', 12, 0000000009, 'Fernando Alonso', 1085, 'Adrian Sutil', 250, 'Pastor Maldonado', 170, 'Jean-Eric Vergne', 81, 'Scuderia Ferrari', 880, 'Infiniti Red Bull Racing', 1030, 'Renault RS27-2013', 477, 0, 0),
(59150, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 12, 0000000009, 'Jean-Eric Vergne', 81, 'Adrian Sutil', 250, 'Daniel Ricciardo', 18, 'Fernando Alonso', 1085, 'Scuderia Ferrari', 880, 'Scuderia Toro Rosso', 50, 'Renault RS27-2013', 477, 600, 0),
(59159, 'ja ja ja', 67, 'equipo 6', 12, 0000000008, 'Valtteri Bottas', 123, 'Jean-Eric Vergne', 81, 'Daniel Ricciardo', 18, 'Charles Pic', 86, 'Infiniti Red Bull Racing', 1030, 'Scuderia Ferrari', 880, 'Cosworth CA2013', 128, 200, 0),
(59153, 'Javier Vega Carbajal', 71, 'Dos Caballos', 12, 0000000009, 'Fernando Alonso', 1085, 'Valtteri Bottas', 123, 'Jean-Eric Vergne', 81, 'Daniel Ricciardo', 18, 'Sahara Force India F1 Team', 160, 'Scuderia Toro Rosso', 50, 'Ferrari Type 056', 518, 0, 0),
(59144, 'ja ja ja', 62, 'Equipo 1', 12, 0000000008, 'Sergio P', 360, 'Nico Rosberg', 1140, 'Max Chilton', 138, 'Luiz Razia', 117, 'Vodafone McLaren Mercedes', 430, 'Caterham F1 Team', 108, 'Renault RS27-2013', 477, 200, 0),
(59156, 'ja ja ja', 65, 'Equipo 4', 12, 0000000008, 'Sebastian Vettel', 1750, 'Jean-Eric Vergne', 81, 'Luiz Razia', 117, 'Max Chilton', 138, 'Infiniti Red Bull Racing', 1030, 'Caterham F1 Team', 108, 'Mercedes FO 108Z', 312, NULL, NULL),
(59163, 'ja ja ja', 63, 'Equipo 2', 12, 0000000008, 'Sebastian Vettel', 1750, 'Jean-Eric Vergne', 81, 'Daniel Ricciardo', 18, 'Charles Pic', 86, 'Infiniti Red Bull Racing', 1030, 'Caterham F1 Team', 108, 'Renault RS27-2013', 477, NULL, NULL),
(59164, 'Esther  R M', 77, 'Silvia McQueen', 12, 0000000009, 'Fernando Alonso', 1085, 'Sebastian Vettel', 1750, 'Mark Webber', 310, 'Adrian Sutil', 250, 'Lotus F1 Team', 624, 'Scuderia Ferrari', 880, 'Renault RS27-2013', 477, 0, 0),
(59165, 'Raul Ordax ..', 73, 'troncomovil', 12, 0000000010, 'Fernando Alonso', 1085, 'Kimi R', 900, 'Adrian Sutil', 250, 'Esteban Guti', 116, 'Scuderia Ferrari', 880, 'Sahara Force India F1 Team', 160, 'Renault RS27-2013', 477, 0, 0),
(59166, 'Optimus JAM --', 76, 'Equipo JJ', 12, 0000000010, 'Kimi R', 900, 'Sebastian Vettel', 1750, 'Giedo van der Garde', 129, 'Paul di Resta', 70, 'Infiniti Red Bull Racing', 1030, 'Scuderia Ferrari', 880, 'Renault RS27-2013', 477, 0, 0),
(59167, 'J M V', 69, 'Lalangosta Racing Team', 12, 0000000009, 'Fernando Alonso', 1085, 'Kimi R', 900, 'Adrian Sutil', 250, 'Max Chilton', 138, 'Scuderia Ferrari', 880, 'Williams F1 Team', 147, 'Renault RS27-2013', 477, 0, 0),
(59169, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 12, 0000000009, 'Jenson Button', 500, 'Kimi R', 900, 'Daniel Ricciardo', 18, 'Giedo van der Garde', 129, 'Lotus F1 Team', 624, 'Williams F1 Team', 147, 'Renault RS27-2013', 477, 600, 0),
(59172, 'David Ordax de las Heras', 74, 'L', 12, 0000000010, 'Fernando Alonso', 1085, 'Adrian Sutil', 250, 'Kimi R', 900, 'Daniel Ricciardo', 18, 'Scuderia Toro Rosso', 50, 'Caterham F1 Team', 108, 'Mercedes FO 108Z', 312, 0, 0),
(59173, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 12, 0000000009, 'Sebastian Vettel', 1750, 'Fernando Alonso', 1085, 'Daniel Ricciardo', 18, 'Jean-Eric Vergne', 81, 'Williams F1 Team', 147, 'Mercedes AMG Petronas F1 Team', 983, 'Mercedes FO 108Z', 312, 200, 0),
(59176, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 12, 0000000010, 'Sebastian Vettel', 1750, 'Adrian Sutil', 250, 'Kimi R', 900, 'Jean-Eric Vergne', 81, 'Sahara Force India F1 Team', 160, 'Lotus F1 Team', 624, 'Mercedes FO 108Z', 312, 600, 0),
(59178, 'ja ja ja', 66, 'equipo 5', 12, 0000000008, 'Romain Grosjean', 347, 'Sergio P', 360, 'Max Chilton', 138, 'Luiz Razia', 117, 'Mercedes AMG Petronas F1 Team', 983, 'Vodafone McLaren Mercedes', 430, 'Cosworth CA2013', 128, 200, 0),
(59179, 'ja ja ja', 64, 'Equipo 3', 12, 0000000008, 'Sebastian Vettel', 1750, 'Luiz Razia', 117, 'Charles Pic', 86, 'Adrian Sutil', 250, 'Infiniti Red Bull Racing', 1030, 'Marussia F1 Team', 128, 'Cosworth CA2013', 128, NULL, NULL),
(59180, 'ja ja ja', 62, 'Equipo 1', 13, 0000000008, 'Sergio P', 230, 'Nico Rosberg', 660, 'Max Chilton', 128, 'Luiz Razia', 149, 'Vodafone McLaren Mercedes', 280, 'Caterham F1 Team', 141, 'Renault RS27-2013', 568, 200, 0),
(59181, 'ja ja ja', 63, 'Equipo 2', 13, 0000000008, 'Sebastian Vettel', 1750, 'Jean-Eric Vergne', 77, 'Daniel Ricciardo', 51, 'Charles Pic', 141, 'Infiniti Red Bull Racing', 873, 'Caterham F1 Team', 141, 'Renault RS27-2013', 568, NULL, NULL),
(59182, 'Esther  R M', 77, 'Silvia McQueen', 13, 0000000009, 'Fernando Alonso', 720, 'Sebastian Vettel', 1750, 'Mark Webber', -4, 'Adrian Sutil', 55, 'Lotus F1 Team', 1115, 'Scuderia Ferrari', 565, 'Renault RS27-2013', 568, 0, 0),
(59183, 'Raul Ordax ..', 73, 'troncomovil', 13, 0000000010, 'Fernando Alonso', 720, 'Kimi R', 1030, 'Adrian Sutil', 55, 'Esteban Guti', 175, 'Scuderia Ferrari', 565, 'Sahara Force India F1 Team', 22, 'Renault RS27-2013', 568, 0, 0),
(59184, 'Optimus JAM --', 76, 'Equipo JJ', 13, 0000000010, 'Kimi R', 1030, 'Sebastian Vettel', 1750, 'Giedo van der Garde', 140, 'Paul di Resta', -11, 'Infiniti Red Bull Racing', 873, 'Scuderia Ferrari', 565, 'Renault RS27-2013', 568, 0, 0),
(59185, 'J M V', 69, 'Lalangosta Racing Team', 13, 0000000009, 'Fernando Alonso', 720, 'Kimi R', 1030, 'Adrian Sutil', 55, 'Max Chilton', 128, 'Scuderia Ferrari', 565, 'Williams F1 Team', 145, 'Renault RS27-2013', 568, 0, 0),
(59186, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 13, 0000000009, 'Jean-Eric Vergne', 77, 'Adrian Sutil', 55, 'Daniel Ricciardo', 51, 'Fernando Alonso', 720, 'Scuderia Ferrari', 565, 'Scuderia Toro Rosso', 64, 'Renault RS27-2013', 568, 200, 0),
(59187, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 13, 0000000009, 'Jenson Button', 330, 'Kimi R', 1030, 'Daniel Ricciardo', 51, 'Giedo van der Garde', 140, 'Lotus F1 Team', 1115, 'Williams F1 Team', 145, 'Renault RS27-2013', 568, 200, 0),
(59188, 'Marta de Francisco Marcos', 78, 'Norwich F1', 13, 0000000009, 'Fernando Alonso', 720, 'Adrian Sutil', 55, 'Pastor Maldonado', 143, 'Jean-Eric Vergne', 77, 'Scuderia Ferrari', 565, 'Infiniti Red Bull Racing', 873, 'Renault RS27-2013', 568, 0, 0),
(59189, 'Javier Vega Carbajal', 71, 'Dos Caballos', 13, 0000000009, 'Fernando Alonso', 720, 'Valtteri Bottas', 146, 'Jean-Eric Vergne', 77, 'Daniel Ricciardo', 51, 'Sahara Force India F1 Team', 22, 'Scuderia Toro Rosso', 64, 'Ferrari Type 056', 375, 0, 0),
(59190, 'David Ordax de las Heras', 74, 'L', 13, 0000000010, 'Fernando Alonso', 720, 'Adrian Sutil', 55, 'Kimi R', 1030, 'Daniel Ricciardo', 51, 'Scuderia Toro Rosso', 64, 'Caterham F1 Team', 141, 'Mercedes FO 108Z', 400, 0, 0),
(59191, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 13, 0000000009, 'Sebastian Vettel', 1750, 'Fernando Alonso', 720, 'Daniel Ricciardo', 51, 'Jean-Eric Vergne', 77, 'Williams F1 Team', 145, 'Mercedes AMG Petronas F1 Team', 848, 'Mercedes FO 108Z', 400, 400, 0),
(59192, 'ja ja ja', 65, 'Equipo 4', 13, 0000000008, 'Sebastian Vettel', 1750, 'Jean-Eric Vergne', 77, 'Luiz Razia', 149, 'Max Chilton', 128, 'Infiniti Red Bull Racing', 873, 'Caterham F1 Team', 141, 'Mercedes FO 108Z', 400, NULL, NULL),
(59193, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 13, 0000000009, 'Fernando Alonso', 720, 'Paul di Resta', -11, 'Max Chilton', 128, 'Giedo van der Garde', 140, 'Infiniti Red Bull Racing', 873, 'Mercedes AMG Petronas F1 Team', 848, 'Mercedes FO 108Z', 400, 0, 0),
(59194, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 13, 0000000010, 'Sebastian Vettel', 1750, 'Adrian Sutil', 55, 'Kimi R', 1030, 'Jean-Eric Vergne', 77, 'Sahara Force India F1 Team', 22, 'Lotus F1 Team', 1115, 'Mercedes FO 108Z', 400, 200, 0),
(59195, 'ja ja ja', 67, 'equipo 6', 13, 0000000008, 'Valtteri Bottas', 146, 'Jean-Eric Vergne', 77, 'Daniel Ricciardo', 51, 'Charles Pic', 141, 'Infiniti Red Bull Racing', 873, 'Scuderia Ferrari', 565, 'Cosworth CA2013', 139, 200, 0),
(59196, 'ja ja ja', 66, 'equipo 5', 13, 0000000008, 'Romain Grosjean', 1200, 'Sergio P', 230, 'Max Chilton', 128, 'Luiz Razia', 149, 'Mercedes AMG Petronas F1 Team', 848, 'Vodafone McLaren Mercedes', 280, 'Cosworth CA2013', 139, 200, 0),
(59197, 'ja ja ja', 64, 'Equipo 3', 13, 0000000008, 'Sebastian Vettel', 1750, 'Luiz Razia', 149, 'Charles Pic', 141, 'Adrian Sutil', 55, 'Infiniti Red Bull Racing', 873, 'Marussia F1 Team', 139, 'Cosworth CA2013', 139, NULL, NULL),
(59198, 'ja ja ja', 62, 'Equipo 1', 14, 0000000008, 'Sergio P', 70, 'Nico Rosberg', 465, 'Max Chilton', 81, 'Luiz Razia', -5, 'Vodafone McLaren Mercedes', 180, 'Caterham F1 Team', 49, 'Renault RS27-2013', 642, 400, 0),
(59199, 'ja ja ja', 63, 'Equipo 2', 14, 0000000008, 'Sebastian Vettel', 1460, 'Jean-Eric Vergne', 146, 'Daniel Ricciardo', 123, 'Charles Pic', 107, 'Infiniti Red Bull Racing', 1553, 'Caterham F1 Team', 49, 'Renault RS27-2013', 642, NULL, NULL),
(59200, 'Esther  R M', 77, 'Silvia McQueen', 14, 0000000009, 'Fernando Alonso', 830, 'Sebastian Vettel', 1460, 'Mark Webber', 1645, 'Adrian Sutil', 171, 'Lotus F1 Team', 893, 'Scuderia Ferrari', 615, 'Renault RS27-2013', 642, 0, 0),
(59201, 'Raul Ordax ..', 73, 'troncomovil', 14, 0000000010, 'Fernando Alonso', 830, 'Kimi R', 700, 'Adrian Sutil', 171, 'Esteban Guti', 470, 'Scuderia Ferrari', 615, 'Sahara Force India F1 Team', 141, 'Renault RS27-2013', 642, 0, 0),
(59202, 'Optimus JAM --', 76, 'Equipo JJ', 14, 0000000010, 'Kimi R', 700, 'Sebastian Vettel', 1460, 'Giedo van der Garde', -10, 'Paul di Resta', 110, 'Infiniti Red Bull Racing', 1553, 'Scuderia Ferrari', 615, 'Renault RS27-2013', 642, 0, 0);
INSERT INTO `campeonatos_clasificacion` (`cam_cla_cod`, `cam_cla_usu_nom`, `cam_cla_equ_cod`, `cam_cla_equ_nom`, `cam_cla_car_cod`, `cam_cla_cam_cod`, `cam_cla_pil_1_nom`, `cam_cla_pil_1_pnt`, `cam_cla_pil_2_nom`, `cam_cla_pil_2_pnt`, `cam_cla_pil_3_nom`, `cam_cla_pil_3_pnt`, `cam_cla_pil_4_nom`, `cam_cla_pil_4_pnt`, `cam_cla_esc_1_nom`, `cam_cla_esc_1_pnt`, `cam_cla_esc_2_nom`, `cam_cla_esc_2_pnt`, `cam_cla_mot_1_nom`, `cam_cla_mot_1_pnt`, `cam_cla_pnt_pod`, `cam_cla_pnt_alo`) VALUES
(59203, 'J M V', 69, 'Lalangosta Racing Team', 14, 0000000009, 'Fernando Alonso', 830, 'Kimi R', 700, 'Adrian Sutil', 171, 'Max Chilton', 81, 'Scuderia Ferrari', 615, 'Williams F1 Team', 76, 'Renault RS27-2013', 642, 0, 0),
(59204, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 14, 0000000009, 'Jean-Eric Vergne', 146, 'Adrian Sutil', 171, 'Daniel Ricciardo', 123, 'Fernando Alonso', 830, 'Scuderia Ferrari', 615, 'Scuderia Toro Rosso', 135, 'Renault RS27-2013', 642, 200, 0),
(59205, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 14, 0000000009, 'Jenson Button', 290, 'Kimi R', 700, 'Daniel Ricciardo', 123, 'Giedo van der Garde', -10, 'Lotus F1 Team', 893, 'Williams F1 Team', 76, 'Renault RS27-2013', 642, 200, 0),
(59206, 'Marta de Francisco Marcos', 78, 'Norwich F1', 14, 0000000009, 'Fernando Alonso', 830, 'Adrian Sutil', 171, 'Pastor Maldonado', 84, 'Jean-Eric Vergne', 146, 'Scuderia Ferrari', 615, 'Infiniti Red Bull Racing', 1553, 'Renault RS27-2013', 642, 0, 0),
(59207, 'Javier Vega Carbajal', 71, 'Dos Caballos', 14, 0000000009, 'Fernando Alonso', 830, 'Valtteri Bottas', 68, 'Jean-Eric Vergne', 146, 'Daniel Ricciardo', 123, 'Sahara Force India F1 Team', 141, 'Scuderia Toro Rosso', 135, 'Ferrari Type 056', 321, 0, 0),
(59208, 'David Ordax de las Heras', 74, 'L', 14, 0000000010, 'Fernando Alonso', 830, 'Adrian Sutil', 171, 'Kimi R', 700, 'Daniel Ricciardo', 123, 'Scuderia Toro Rosso', 135, 'Caterham F1 Team', 49, 'Mercedes FO 108Z', 369, 0, 0),
(59209, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 14, 0000000009, 'Sebastian Vettel', 1460, 'Fernando Alonso', 830, 'Daniel Ricciardo', 123, 'Jean-Eric Vergne', 146, 'Williams F1 Team', 76, 'Mercedes AMG Petronas F1 Team', 394, 'Mercedes FO 108Z', 369, 200, 0),
(59210, 'ja ja ja', 65, 'Equipo 4', 14, 0000000008, 'Sebastian Vettel', 1460, 'Jean-Eric Vergne', 146, 'Luiz Razia', -5, 'Max Chilton', 81, 'Infiniti Red Bull Racing', 1553, 'Caterham F1 Team', 49, 'Mercedes FO 108Z', 369, NULL, NULL),
(59211, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 14, 0000000009, 'Fernando Alonso', 830, 'Paul di Resta', 110, 'Max Chilton', 81, 'Giedo van der Garde', -10, 'Infiniti Red Bull Racing', 1553, 'Mercedes AMG Petronas F1 Team', 394, 'Mercedes FO 108Z', 369, 0, 0),
(59212, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 14, 0000000010, 'Sebastian Vettel', 1460, 'Adrian Sutil', 171, 'Kimi R', 700, 'Jean-Eric Vergne', 146, 'Sahara Force India F1 Team', 141, 'Lotus F1 Team', 893, 'Mercedes FO 108Z', 369, 200, 0),
(59213, 'ja ja ja', 67, 'equipo 6', 14, 0000000008, 'Valtteri Bottas', 68, 'Jean-Eric Vergne', 146, 'Daniel Ricciardo', 123, 'Charles Pic', 107, 'Infiniti Red Bull Racing', 1553, 'Scuderia Ferrari', 615, 'Cosworth CA2013', 38, 400, 0),
(59214, 'ja ja ja', 66, 'equipo 5', 14, 0000000008, 'Romain Grosjean', 1085, 'Sergio P', 70, 'Max Chilton', 81, 'Luiz Razia', -5, 'Mercedes AMG Petronas F1 Team', 394, 'Vodafone McLaren Mercedes', 180, 'Cosworth CA2013', 38, 200, 0),
(59215, 'ja ja ja', 64, 'Equipo 3', 14, 0000000008, 'Sebastian Vettel', 1460, 'Luiz Razia', -5, 'Charles Pic', 107, 'Adrian Sutil', 171, 'Infiniti Red Bull Racing', 1553, 'Marussia F1 Team', 38, 'Cosworth CA2013', 38, NULL, NULL),
(59216, 'ja ja ja', 62, 'Equipo 1', 15, 0000000008, 'Sergio P', 700, 'Nico Rosberg', 1350, 'Max Chilton', 138, 'Luiz Razia', 97, 'Vodafone McLaren Mercedes', 401, 'Caterham F1 Team', 79, 'Renault RS27-2013', 492, 200, 0),
(59217, 'ja ja ja', 63, 'Equipo 2', 15, 0000000008, 'Sebastian Vettel', 1500, 'Jean-Eric Vergne', 103, 'Daniel Ricciardo', 210, 'Charles Pic', 84, 'Infiniti Red Bull Racing', 890, 'Caterham F1 Team', 79, 'Renault RS27-2013', 492, NULL, NULL),
(59218, 'Esther  R M', 77, 'Silvia McQueen', 15, 0000000009, 'Fernando Alonso', 175, 'Sebastian Vettel', 1500, 'Mark Webber', 280, 'Adrian Sutil', 290, 'Lotus F1 Team', 880, 'Scuderia Ferrari', 555, 'Renault RS27-2013', 492, 0, 0),
(59219, 'Raul Ordax ..', 73, 'troncomovil', 15, 0000000010, 'Fernando Alonso', 175, 'Kimi R', 820, 'Adrian Sutil', 290, 'Esteban Guti', 100, 'Scuderia Ferrari', 555, 'Sahara Force India F1 Team', 315, 'Renault RS27-2013', 492, 0, 0),
(59220, 'Optimus JAM --', 76, 'Equipo JJ', 15, 0000000010, 'Kimi R', 820, 'Sebastian Vettel', 1500, 'Giedo van der Garde', 73, 'Paul di Resta', 340, 'Infiniti Red Bull Racing', 890, 'Scuderia Ferrari', 555, 'Renault RS27-2013', 492, 0, 0),
(59221, 'J M V', 69, 'Lalangosta Racing Team', 15, 0000000009, 'Fernando Alonso', 175, 'Kimi R', 820, 'Adrian Sutil', 290, 'Max Chilton', 138, 'Scuderia Ferrari', 555, 'Williams F1 Team', 120, 'Renault RS27-2013', 492, 0, 0),
(59222, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 15, 0000000009, 'Jean-Eric Vergne', 103, 'Adrian Sutil', 290, 'Daniel Ricciardo', 210, 'Fernando Alonso', 175, 'Scuderia Ferrari', 555, 'Scuderia Toro Rosso', 157, 'Renault RS27-2013', 492, 200, 0),
(59223, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 15, 0000000009, 'Jenson Button', 101, 'Kimi R', 820, 'Daniel Ricciardo', 210, 'Giedo van der Garde', 73, 'Lotus F1 Team', 880, 'Williams F1 Team', 120, 'Renault RS27-2013', 492, 200, 0),
(59224, 'Marta de Francisco Marcos', 78, 'Norwich F1', 15, 0000000009, 'Fernando Alonso', 175, 'Adrian Sutil', 290, 'Pastor Maldonado', 156, 'Jean-Eric Vergne', 103, 'Scuderia Ferrari', 555, 'Infiniti Red Bull Racing', 890, 'Renault RS27-2013', 492, 0, 0),
(59225, 'Javier Vega Carbajal', 71, 'Dos Caballos', 15, 0000000009, 'Fernando Alonso', 175, 'Valtteri Bottas', 84, 'Jean-Eric Vergne', 103, 'Daniel Ricciardo', 210, 'Sahara Force India F1 Team', 315, 'Scuderia Toro Rosso', 157, 'Ferrari Type 056', 536, 0, 0),
(59226, 'David Ordax de las Heras', 74, 'L', 15, 0000000010, 'Fernando Alonso', 175, 'Adrian Sutil', 290, 'Kimi R', 820, 'Daniel Ricciardo', 210, 'Scuderia Toro Rosso', 157, 'Caterham F1 Team', 79, 'Mercedes FO 108Z', 266, 0, 0),
(59227, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 15, 0000000009, 'Sebastian Vettel', 1500, 'Fernando Alonso', 175, 'Daniel Ricciardo', 210, 'Jean-Eric Vergne', 103, 'Williams F1 Team', 120, 'Mercedes AMG Petronas F1 Team', 1118, 'Mercedes FO 108Z', 266, 200, 0),
(59228, 'ja ja ja', 65, 'Equipo 4', 15, 0000000008, 'Sebastian Vettel', 1500, 'Jean-Eric Vergne', 103, 'Luiz Razia', 97, 'Max Chilton', 138, 'Infiniti Red Bull Racing', 890, 'Caterham F1 Team', 79, 'Mercedes FO 108Z', 266, NULL, NULL),
(59229, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 15, 0000000009, 'Fernando Alonso', 175, 'Paul di Resta', 340, 'Max Chilton', 138, 'Giedo van der Garde', 73, 'Infiniti Red Bull Racing', 890, 'Mercedes AMG Petronas F1 Team', 1118, 'Mercedes FO 108Z', 266, 0, 0),
(59230, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 15, 0000000010, 'Sebastian Vettel', 1500, 'Adrian Sutil', 290, 'Kimi R', 820, 'Jean-Eric Vergne', 103, 'Sahara Force India F1 Team', 315, 'Lotus F1 Team', 880, 'Mercedes FO 108Z', 266, 200, 0),
(59231, 'ja ja ja', 67, 'equipo 6', 15, 0000000008, 'Valtteri Bottas', 84, 'Jean-Eric Vergne', 103, 'Daniel Ricciardo', 210, 'Charles Pic', 84, 'Infiniti Red Bull Racing', 890, 'Scuderia Ferrari', 555, 'Cosworth CA2013', 118, 200, 0),
(59232, 'ja ja ja', 66, 'equipo 5', 15, 0000000008, 'Romain Grosjean', 940, 'Sergio P', 700, 'Max Chilton', 138, 'Luiz Razia', 97, 'Mercedes AMG Petronas F1 Team', 1118, 'Vodafone McLaren Mercedes', 401, 'Cosworth CA2013', 118, 200, 0),
(59233, 'ja ja ja', 64, 'Equipo 3', 15, 0000000008, 'Sebastian Vettel', 1500, 'Luiz Razia', 97, 'Charles Pic', 84, 'Adrian Sutil', 290, 'Infiniti Red Bull Racing', 890, 'Marussia F1 Team', 118, 'Cosworth CA2013', 118, NULL, NULL),
(59234, 'ja ja ja', 62, 'Equipo 1', 16, 0000000008, 'Sergio P', 335, 'Nico Rosberg', 1200, 'Max Chilton', 79, 'Luiz Razia', 95, 'Vodafone McLaren Mercedes', 216, 'Caterham F1 Team', 87, 'Renault RS27-2013', 518, 400, 0),
(59235, 'ja ja ja', 63, 'Equipo 2', 16, 0000000008, 'Sebastian Vettel', 1460, 'Jean-Eric Vergne', 68, 'Daniel Ricciardo', 114, 'Charles Pic', 86, 'Infiniti Red Bull Racing', 1428, 'Caterham F1 Team', 87, 'Renault RS27-2013', 518, NULL, NULL),
(59236, 'Esther  R M', 77, 'Silvia McQueen', 16, 0000000009, 'Fernando Alonso', 930, 'Sebastian Vettel', 1460, 'Mark Webber', 1395, 'Adrian Sutil', 270, 'Lotus F1 Team', 448, 'Scuderia Ferrari', 680, 'Renault RS27-2013', 518, 0, 0),
(59237, 'Raul Ordax ..', 73, 'troncomovil', 16, 0000000010, 'Fernando Alonso', 930, 'Kimi R', 0, 'Adrian Sutil', 270, 'Esteban Guti', 123, 'Scuderia Ferrari', 680, 'Sahara Force India F1 Team', 410, 'Renault RS27-2013', 518, 0, 0),
(59238, 'Optimus JAM --', 76, 'Equipo JJ', 16, 0000000010, 'Kimi R', 0, 'Sebastian Vettel', 1460, 'Giedo van der Garde', 87, 'Daniel Ricciardo', 114, 'Infiniti Red Bull Racing', 1428, 'Scuderia Ferrari', 680, 'Renault RS27-2013', 518, 0, 0),
(59239, 'J M V', 69, 'Lalangosta Racing Team', 16, 0000000009, 'Fernando Alonso', 930, 'Kimi R', 0, 'Adrian Sutil', 270, 'Max Chilton', 79, 'Scuderia Ferrari', 680, 'Williams F1 Team', 110, 'Renault RS27-2013', 518, 0, 0),
(59240, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 16, 0000000009, 'Jean-Eric Vergne', 68, 'Adrian Sutil', 270, 'Daniel Ricciardo', 114, 'Fernando Alonso', 930, 'Scuderia Ferrari', 680, 'Scuderia Toro Rosso', 91, 'Renault RS27-2013', 518, 200, 0),
(59241, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 16, 0000000009, 'Jenson Button', 96, 'Kimi R', 0, 'Daniel Ricciardo', 114, 'Giedo van der Garde', 87, 'Lotus F1 Team', 448, 'Williams F1 Team', 110, 'Renault RS27-2013', 518, 200, 0),
(59242, 'Marta de Francisco Marcos', 78, 'Norwich F1', 16, 0000000009, 'Fernando Alonso', 930, 'Adrian Sutil', 270, 'Pastor Maldonado', 130, 'Jean-Eric Vergne', 68, 'Scuderia Ferrari', 680, 'Infiniti Red Bull Racing', 1428, 'Renault RS27-2013', 518, 0, 0),
(59243, 'Javier Vega Carbajal', 71, 'Dos Caballos', 16, 0000000009, 'Fernando Alonso', 930, 'Valtteri Bottas', 90, 'Jean-Eric Vergne', 68, 'Daniel Ricciardo', 114, 'Sahara Force India F1 Team', 410, 'Scuderia Toro Rosso', 91, 'Ferrari Type 056', 528, 0, 0),
(59244, 'David Ordax de las Heras', 74, 'L', 16, 0000000010, 'Fernando Alonso', 930, 'Adrian Sutil', 270, 'Kimi R', 0, 'Daniel Ricciardo', 114, 'Scuderia Toro Rosso', 91, 'Caterham F1 Team', 87, 'Mercedes FO 108Z', 206, 0, 0),
(59245, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 16, 0000000009, 'Romain Grosjean', 895, 'Fernando Alonso', 930, 'Daniel Ricciardo', 114, 'Jean-Eric Vergne', 68, 'Infiniti Red Bull Racing', 1428, 'Lotus F1 Team', 448, 'Mercedes FO 108Z', 206, 400, 0),
(59246, 'ja ja ja', 65, 'Equipo 4', 16, 0000000008, 'Sebastian Vettel', 1460, 'Jean-Eric Vergne', 68, 'Luiz Razia', 95, 'Max Chilton', 79, 'Infiniti Red Bull Racing', 1428, 'Caterham F1 Team', 87, 'Mercedes FO 108Z', 206, NULL, NULL),
(59247, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 16, 0000000009, 'Fernando Alonso', 930, 'Paul di Resta', 550, 'Max Chilton', 79, 'Giedo van der Garde', 87, 'Infiniti Red Bull Racing', 1428, 'Mercedes AMG Petronas F1 Team', 930, 'Mercedes FO 108Z', 206, 0, 0),
(59248, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 16, 0000000010, 'Sebastian Vettel', 1460, 'Adrian Sutil', 270, 'Kimi R', 0, 'Jean-Eric Vergne', 68, 'Sahara Force India F1 Team', 410, 'Lotus F1 Team', 448, 'Mercedes FO 108Z', 206, 200, 0),
(59249, 'ja ja ja', 67, 'equipo 6', 16, 0000000008, 'Valtteri Bottas', 90, 'Jean-Eric Vergne', 68, 'Daniel Ricciardo', 114, 'Charles Pic', 86, 'Infiniti Red Bull Racing', 1428, 'Scuderia Ferrari', 680, 'Cosworth CA2013', 87, 400, 0),
(59250, 'ja ja ja', 66, 'equipo 5', 16, 0000000008, 'Romain Grosjean', 895, 'Sergio P', 335, 'Max Chilton', 79, 'Luiz Razia', 95, 'Mercedes AMG Petronas F1 Team', 930, 'Vodafone McLaren Mercedes', 216, 'Cosworth CA2013', 87, 200, 0),
(59251, 'ja ja ja', 64, 'Equipo 3', 16, 0000000008, 'Sebastian Vettel', 1460, 'Luiz Razia', 95, 'Charles Pic', 86, 'Adrian Sutil', 270, 'Infiniti Red Bull Racing', 1428, 'Marussia F1 Team', 87, 'Cosworth CA2013', 87, NULL, NULL),
(59252, 'ja ja ja', 62, 'Equipo 1', 17, 0000000008, 'Sergio P', 535, 'Nico Rosberg', 280, 'Max Chilton', 84, 'Luiz Razia', 97, 'Vodafone McLaren Mercedes', 393, 'Caterham F1 Team', 93, 'Renault RS27-2013', 638, 200, 0),
(59253, 'ja ja ja', 63, 'Equipo 2', 17, 0000000008, 'Sebastian Vettel', 1750, 'Jean-Eric Vergne', 79, 'Daniel Ricciardo', 125, 'Charles Pic', 105, 'Infiniti Red Bull Racing', 1498, 'Caterham F1 Team', 93, 'Renault RS27-2013', 638, NULL, NULL),
(59254, 'Esther  R M', 77, 'Silvia McQueen', 17, 0000000009, 'Fernando Alonso', 785, 'Sebastian Vettel', 1750, 'Mark Webber', 1245, 'Adrian Sutil', -30, 'Lotus F1 Team', 731, 'Scuderia Ferrari', 446, 'Renault RS27-2013', 638, 0, 0),
(59255, 'Raul Ordax ..', 73, 'troncomovil', 17, 0000000010, 'Fernando Alonso', 785, 'Kimi R', 151, 'Adrian Sutil', -30, 'Esteban Guti', 163, 'Scuderia Ferrari', 446, 'Sahara Force India F1 Team', 20, 'Renault RS27-2013', 638, 0, 0),
(59256, 'Optimus JAM --', 76, 'Equipo JJ', 17, 0000000010, 'Kimi R', 151, 'Sebastian Vettel', 1750, 'Giedo van der Garde', 81, 'Daniel Ricciardo', 125, 'Infiniti Red Bull Racing', 1498, 'Scuderia Ferrari', 446, 'Renault RS27-2013', 638, 0, 0),
(59257, 'J M V', 69, 'Lalangosta Racing Team', 17, 0000000009, 'Fernando Alonso', 785, 'Kimi R', 151, 'Adrian Sutil', -30, 'Max Chilton', 84, 'Scuderia Ferrari', 446, 'Williams F1 Team', 229, 'Renault RS27-2013', 638, 0, 0),
(59258, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 17, 0000000009, 'Jean-Eric Vergne', 79, 'Adrian Sutil', -30, 'Daniel Ricciardo', 125, 'Fernando Alonso', 785, 'Scuderia Ferrari', 446, 'Scuderia Toro Rosso', 102, 'Renault RS27-2013', 638, 200, 0),
(59259, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 17, 0000000009, 'Jenson Button', 250, 'Kimi R', 151, 'Daniel Ricciardo', 125, 'Giedo van der Garde', 81, 'Lotus F1 Team', 731, 'Williams F1 Team', 229, 'Renault RS27-2013', 638, 200, 0),
(59260, 'Marta de Francisco Marcos', 78, 'Norwich F1', 17, 0000000009, 'Fernando Alonso', 785, 'Adrian Sutil', -30, 'Pastor Maldonado', 88, 'Jean-Eric Vergne', 79, 'Scuderia Ferrari', 446, 'Infiniti Red Bull Racing', 1498, 'Renault RS27-2013', 638, 0, 0),
(59261, 'Javier Vega Carbajal', 71, 'Dos Caballos', 17, 0000000009, 'Fernando Alonso', 785, 'Valtteri Bottas', 370, 'Jean-Eric Vergne', 79, 'Daniel Ricciardo', 125, 'Sahara Force India F1 Team', 20, 'Scuderia Toro Rosso', 102, 'Ferrari Type 056', 294, 0, 0),
(59262, 'David Ordax de las Heras', 74, 'L', 17, 0000000010, 'Fernando Alonso', 785, 'Adrian Sutil', -30, 'Kimi R', 151, 'Daniel Ricciardo', 125, 'Scuderia Toro Rosso', 102, 'Caterham F1 Team', 93, 'Mercedes FO 108Z', 428, 0, 0),
(59263, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 17, 0000000009, 'Romain Grosjean', 1310, 'Fernando Alonso', 785, 'Daniel Ricciardo', 125, 'Jean-Eric Vergne', 79, 'Infiniti Red Bull Racing', 1498, 'Lotus F1 Team', 731, 'Mercedes FO 108Z', 428, 200, 0),
(59264, 'ja ja ja', 65, 'Equipo 4', 17, 0000000008, 'Sebastian Vettel', 1750, 'Jean-Eric Vergne', 79, 'Luiz Razia', 97, 'Max Chilton', 84, 'Infiniti Red Bull Racing', 1498, 'Caterham F1 Team', 93, 'Mercedes FO 108Z', 428, NULL, NULL),
(59265, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 17, 0000000009, 'Fernando Alonso', 785, 'Paul di Resta', 70, 'Max Chilton', 84, 'Giedo van der Garde', 81, 'Infiniti Red Bull Racing', 1498, 'Mercedes AMG Petronas F1 Team', 608, 'Mercedes FO 108Z', 428, 0, 0),
(59266, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 17, 0000000010, 'Sebastian Vettel', 1750, 'Adrian Sutil', -30, 'Kimi R', 151, 'Jean-Eric Vergne', 79, 'Sahara Force India F1 Team', 20, 'Lotus F1 Team', 731, 'Mercedes FO 108Z', 428, 200, 0),
(59267, 'ja ja ja', 67, 'equipo 6', 17, 0000000008, 'Valtteri Bottas', 370, 'Jean-Eric Vergne', 79, 'Daniel Ricciardo', 125, 'Charles Pic', 105, 'Infiniti Red Bull Racing', 1498, 'Scuderia Ferrari', 446, 'Cosworth CA2013', 91, 200, 0),
(59268, 'ja ja ja', 66, 'equipo 5', 17, 0000000008, 'Romain Grosjean', 1310, 'Sergio P', 535, 'Max Chilton', 84, 'Luiz Razia', 97, 'Mercedes AMG Petronas F1 Team', 608, 'Vodafone McLaren Mercedes', 393, 'Cosworth CA2013', 91, 200, 0),
(59269, 'ja ja ja', 64, 'Equipo 3', 17, 0000000008, 'Sebastian Vettel', 1750, 'Luiz Razia', 97, 'Charles Pic', 105, 'Adrian Sutil', -30, 'Infiniti Red Bull Racing', 1498, 'Marussia F1 Team', 91, 'Cosworth CA2013', 91, NULL, NULL),
(59270, 'ja ja ja', 62, 'Equipo 1', 18, 0000000008, 'Sergio P', 630, 'Nico Rosberg', 1035, 'Max Chilton', 116, 'Luiz Razia', 128, 'Vodafone McLaren Mercedes', 715, 'Caterham F1 Team', 78, 'Renault RS27-2013', 421, 600, 250),
(59271, 'ja ja ja', 63, 'Equipo 2', 18, 0000000008, 'Sebastian Vettel', 1500, 'Jean-Eric Vergne', 145, 'Daniel Ricciardo', 320, 'Charles Pic', 48, 'Infiniti Red Bull Racing', 1473, 'Caterham F1 Team', 78, 'Renault RS27-2013', 421, NULL, NULL),
(59272, 'Esther  R M', 77, 'Silvia McQueen', 18, 0000000009, 'Fernando Alonso', 1200, 'Sebastian Vettel', 1500, 'Mark Webber', 1445, 'Adrian Sutil', 113, 'Lotus F1 Team', 87, 'Scuderia Ferrari', 840, 'Renault RS27-2013', 421, 0, 0),
(59273, 'Raul Ordax ..', 73, 'troncomovil', 18, 0000000010, 'Fernando Alonso', 1200, 'Kimi R', 76, 'Adrian Sutil', 113, 'Esteban Guti', 146, 'Scuderia Ferrari', 840, 'Sahara Force India F1 Team', 112, 'Renault RS27-2013', 421, 0, 0),
(59274, 'Optimus JAM --', 76, 'Equipo JJ', 18, 0000000010, 'Kimi R', 76, 'Sebastian Vettel', 1500, 'Giedo van der Garde', 107, 'Daniel Ricciardo', 320, 'Infiniti Red Bull Racing', 1473, 'Scuderia Ferrari', 840, 'Renault RS27-2013', 421, 0, 250),
(59275, 'J M V', 69, 'Lalangosta Racing Team', 18, 0000000009, 'Fernando Alonso', 1200, 'Kimi R', 76, 'Adrian Sutil', 113, 'Max Chilton', 116, 'Scuderia Ferrari', 840, 'Williams F1 Team', 47, 'Renault RS27-2013', 421, 0, 0),
(59276, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 18, 0000000009, 'Jean-Eric Vergne', 145, 'Adrian Sutil', 113, 'Daniel Ricciardo', 320, 'Fernando Alonso', 1200, 'Scuderia Ferrari', 840, 'Scuderia Toro Rosso', 233, 'Renault RS27-2013', 421, 200, 250),
(59277, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 18, 0000000009, 'Jenson Button', 800, 'Kimi R', 76, 'Daniel Ricciardo', 320, 'Giedo van der Garde', 107, 'Lotus F1 Team', 87, 'Williams F1 Team', 47, 'Renault RS27-2013', 421, 200, 0),
(59278, 'Marta de Francisco Marcos', 78, 'Norwich F1', 18, 0000000009, 'Fernando Alonso', 1200, 'Adrian Sutil', 113, 'Pastor Maldonado', 89, 'Jean-Eric Vergne', 145, 'Scuderia Ferrari', 840, 'Infiniti Red Bull Racing', 1473, 'Renault RS27-2013', 421, 0, 0),
(59279, 'Javier Vega Carbajal', 71, 'Dos Caballos', 18, 0000000009, 'Fernando Alonso', 1200, 'Valtteri Bottas', 5, 'Jean-Eric Vergne', 145, 'Daniel Ricciardo', 320, 'Sahara Force India F1 Team', 112, 'Scuderia Toro Rosso', 233, 'Ferrari Type 056', 482, 0, 0),
(59280, 'David Ordax de las Heras', 74, 'L', 18, 0000000010, 'Fernando Alonso', 1200, 'Adrian Sutil', 113, 'Kimi R', 76, 'Daniel Ricciardo', 320, 'Scuderia Toro Rosso', 233, 'Caterham F1 Team', 78, 'Mercedes FO 108Z', 482, 0, 0),
(59281, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 18, 0000000009, 'Romain Grosjean', 97, 'Fernando Alonso', 1200, 'Daniel Ricciardo', 320, 'Jean-Eric Vergne', 145, 'Infiniti Red Bull Racing', 1473, 'Lotus F1 Team', 87, 'Mercedes FO 108Z', 482, 400, 250),
(59282, 'ja ja ja', 65, 'Equipo 4', 18, 0000000008, 'Sebastian Vettel', 1500, 'Jean-Eric Vergne', 145, 'Luiz Razia', 128, 'Max Chilton', 116, 'Infiniti Red Bull Racing', 1473, 'Caterham F1 Team', 78, 'Mercedes FO 108Z', 482, NULL, NULL),
(59283, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 18, 0000000009, 'Fernando Alonso', 1200, 'Paul di Resta', 110, 'Max Chilton', 116, 'Giedo van der Garde', 107, 'Infiniti Red Bull Racing', 1473, 'Mercedes AMG Petronas F1 Team', 745, 'Mercedes FO 108Z', 482, 0, 0),
(59284, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 18, 0000000010, 'Sebastian Vettel', 1500, 'Adrian Sutil', 113, 'Kimi R', 76, 'Jean-Eric Vergne', 145, 'Sahara Force India F1 Team', 112, 'Lotus F1 Team', 87, 'Mercedes FO 108Z', 482, 200, 0),
(59285, 'ja ja ja', 67, 'equipo 6', 18, 0000000008, 'Valtteri Bottas', 5, 'Jean-Eric Vergne', 145, 'Daniel Ricciardo', 320, 'Charles Pic', 48, 'Infiniti Red Bull Racing', 1473, 'Scuderia Ferrari', 840, 'Cosworth CA2013', 122, 400, 0),
(59286, 'ja ja ja', 66, 'equipo 5', 18, 0000000008, 'Romain Grosjean', 97, 'Sergio P', 630, 'Max Chilton', 116, 'Luiz Razia', 128, 'Mercedes AMG Petronas F1 Team', 745, 'Vodafone McLaren Mercedes', 715, 'Cosworth CA2013', 122, 200, 0),
(59287, 'ja ja ja', 64, 'Equipo 3', 18, 0000000008, 'Sebastian Vettel', 1500, 'Luiz Razia', 128, 'Charles Pic', 48, 'Adrian Sutil', 113, 'Infiniti Red Bull Racing', 1473, 'Marussia F1 Team', 122, 'Cosworth CA2013', 122, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campeonatos_clasificacion_broker`
--

DROP TABLE IF EXISTS `campeonatos_clasificacion_broker`;
CREATE TABLE IF NOT EXISTS `campeonatos_clasificacion_broker` (
  `cam_cla_bro_cod` int(11) NOT NULL AUTO_INCREMENT,
  `cam_cla_bro_usu_nom` varchar(75) CHARACTER SET latin1 NOT NULL,
  `cam_cla_bro_equ_cod` int(11) NOT NULL,
  `cam_cla_bro_equ_nom` varchar(45) CHARACTER SET latin1 NOT NULL,
  `cam_cla_bro_car_cod` int(11) NOT NULL,
  `cam_cla_bro_cam_cod` int(11) NOT NULL,
  `cam_cla_bro_pil_1_nom` varchar(45) CHARACTER SET latin1 NOT NULL,
  `cam_cla_bro_pil_1_val` int(11) NOT NULL,
  `cam_cla_bro_pil_2_nom` varchar(45) CHARACTER SET latin1 NOT NULL,
  `cam_cla_bro_pil_2_val` int(11) NOT NULL,
  `cam_cla_bro_pil_3_nom` varchar(45) CHARACTER SET latin1 NOT NULL,
  `cam_cla_bro_pil_3_val` int(11) NOT NULL,
  `cam_cla_bro_pil_4_nom` varchar(45) CHARACTER SET latin1 NOT NULL,
  `cam_cla_bro_pil_4_val` int(11) NOT NULL,
  `cam_cla_bro_esc_1_nom` varchar(45) CHARACTER SET latin1 NOT NULL,
  `cam_cla_bro_esc_1_val` int(11) NOT NULL,
  `cam_cla_bro_esc_2_nom` varchar(45) CHARACTER SET latin1 NOT NULL,
  `cam_cla_bro_esc_2_val` int(11) NOT NULL,
  `cam_cla_bro_mot_1_nom` varchar(45) CHARACTER SET latin1 NOT NULL,
  `cam_cla_bro_mot_1_val` int(11) NOT NULL,
  PRIMARY KEY (`cam_cla_bro_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=59175 ;

--
-- Volcado de datos para la tabla `campeonatos_clasificacion_broker`
--

INSERT INTO `campeonatos_clasificacion_broker` (`cam_cla_bro_cod`, `cam_cla_bro_usu_nom`, `cam_cla_bro_equ_cod`, `cam_cla_bro_equ_nom`, `cam_cla_bro_car_cod`, `cam_cla_bro_cam_cod`, `cam_cla_bro_pil_1_nom`, `cam_cla_bro_pil_1_val`, `cam_cla_bro_pil_2_nom`, `cam_cla_bro_pil_2_val`, `cam_cla_bro_pil_3_nom`, `cam_cla_bro_pil_3_val`, `cam_cla_bro_pil_4_nom`, `cam_cla_bro_pil_4_val`, `cam_cla_bro_esc_1_nom`, `cam_cla_bro_esc_1_val`, `cam_cla_bro_esc_2_nom`, `cam_cla_bro_esc_2_val`, `cam_cla_bro_mot_1_nom`, `cam_cla_bro_mot_1_val`) VALUES
(58820, 'ja ja ja', 64, 'Equipo 3', 2, 8, 'Sebastian Vettel', 3367, 'Luiz Razia', 920, 'Charles Pic', 1129, 'Adrian Sutil', 1955, 'Infiniti Red Bull Racing', 2575, 'Marussia F1 Team', 1150, 'Cosworth CA2013', 1495),
(58821, 'ja ja ja', 66, 'equipo 5', 2, 8, 'Romain Grosjean', 2645, 'Sergio P', 2645, 'Max Chilton', 920, 'Luiz Razia', 920, 'Mercedes AMG Petronas F1 Team', 1891, 'Vodafone McLaren Mercedes', 2100, 'Cosworth CA2013', 1495),
(58822, 'ja ja ja', 67, 'equipo 6', 2, 8, 'Valtteri Bottas', 1020, 'Jean-Eric Vergne', 935, 'Daniel Ricciardo', 935, 'Charles Pic', 1129, 'Infiniti Red Bull Racing', 2575, 'Scuderia Ferrari', 2550, 'Cosworth CA2013', 1495),
(58823, 'David Ordax de las Heras', 74, 'L', 2, 10, 'Fernando Alonso', 3734, 'Adrian Sutil', 1955, 'Valtteri Bottas', 1020, 'Max Chilton', 920, 'Scuderia Ferrari', 2550, 'Scuderia Toro Rosso', 1020, 'Cosworth CA2013', 1495),
(58824, 'Optimus JAM --', 76, 'Equipo JJ', 2, 10, 'Kimi R', 3335, 'Sergio P', 2645, 'Giedo van der Garde', 773, 'Max Chilton', 920, 'Infiniti Red Bull Racing', 2575, 'Sahara Force India F1 Team', 1610, 'Cosworth CA2013', 1495),
(58825, 'ja ja ja', 65, 'Equipo 4', 2, 8, 'Sebastian Vettel', 3367, 'Jean-Eric Vergne', 935, 'Luiz Razia', 920, 'Max Chilton', 920, 'Infiniti Red Bull Racing', 2575, 'Caterham F1 Team', 1000, 'Mercedes FO 108Z', 1572),
(58826, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 2, 9, 'Nico Rosberg', 2875, 'Adrian Sutil', 1955, 'Daniel Ricciardo', 935, 'Max Chilton', 920, 'Infiniti Red Bull Racing', 2575, 'Mercedes AMG Petronas F1 Team', 1891, 'Mercedes FO 108Z', 1572),
(58827, 'ja ja ja', 62, 'Equipo 1', 2, 8, 'Sergio P', 2645, 'Nico Rosberg', 2875, 'Max Chilton', 920, 'Luiz Razia', 920, 'Vodafone McLaren Mercedes', 2100, 'Caterham F1 Team', 1000, 'Renault RS27-2013', 1610),
(58828, 'ja ja ja', 63, 'Equipo 2', 2, 8, 'Sebastian Vettel', 3367, 'Jean-Eric Vergne', 935, 'Daniel Ricciardo', 935, 'Charles Pic', 1129, 'Infiniti Red Bull Racing', 2575, 'Caterham F1 Team', 1000, 'Renault RS27-2013', 1610),
(58829, 'J M V', 69, 'Lalangosta Racing Team', 2, 9, 'Felipe Massa', 3105, 'Sergio P', 2645, 'Charles Pic', 1129, 'Max Chilton', 920, 'Scuderia Ferrari', 2550, 'Williams F1 Team', 1105, 'Renault RS27-2013', 1610),
(58830, 'Javier Vega Carbajal', 71, 'Dos Caballos', 2, 9, 'Fernando Alonso', 3734, 'Sergio P', 2645, 'Jean-Eric Vergne', 935, 'Daniel Ricciardo', 935, 'Sahara Force India F1 Team', 1610, 'Caterham F1 Team', 1000, 'Renault RS27-2013', 1610),
(58831, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 2, 10, 'Kimi R', 3335, 'Adrian Sutil', 1955, 'Esteban Guti', 1530, 'Jean-Eric Vergne', 935, 'Sahara Force India F1 Team', 1610, 'Scuderia Toro Rosso', 1020, 'Renault RS27-2013', 1610),
(58832, 'Raul Ordax ..', 73, 'troncomovil', 2, 10, 'Lewis Hamilton', 3333, 'Adrian Sutil', 1955, 'Valtteri Bottas', 1020, 'Jean-Eric Vergne', 935, 'Mercedes AMG Petronas F1 Team', 1891, 'Scuderia Toro Rosso', 1020, 'Renault RS27-2013', 1610),
(58833, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 2, 9, 'Nico Rosberg', 2875, 'Sergio P', 2645, 'Daniel Ricciardo', 935, 'Jean-Eric Vergne', 935, 'Mercedes AMG Petronas F1 Team', 1891, 'Sauber F1 Team', 1275, 'Renault RS27-2013', 1610),
(58834, 'Esther  R M', 77, 'Silvia McQueen', 2, 9, 'Romain Grosjean', 2645, 'Felipe Massa', 3105, 'Giedo van der Garde', 773, 'Max Chilton', 920, 'Lotus F1 Team', 2185, 'Mercedes AMG Petronas F1 Team', 1891, 'Renault RS27-2013', 1610),
(58835, 'Marta de Francisco Marcos', 78, 'Norwich F1', 2, 9, 'Kimi R', 3335, 'Jean-Eric Vergne', 935, 'Luiz Razia', 920, 'Max Chilton', 920, 'Scuderia Ferrari', 2550, 'Lotus F1 Team', 2185, 'Renault RS27-2013', 1610),
(58836, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 3, 9, 'Jean-Eric Vergne', 1075, 'Adrian Sutil', 1662, 'Daniel Ricciardo', 795, 'Fernando Alonso', 3174, 'Scuderia Ferrari', 2550, 'Scuderia Toro Rosso', 1020, 'Renault RS27-2013', 1684),
(58837, 'ja ja ja', 67, 'equipo 6', 3, 8, 'Valtteri Bottas', 1082, 'Jean-Eric Vergne', 1075, 'Daniel Ricciardo', 795, 'Charles Pic', 1196, 'Infiniti Red Bull Racing', 2895, 'Scuderia Ferrari', 2550, 'Cosworth CA2013', 1719),
(58839, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 3, 9, 'Nico Rosberg', 3306, 'Sergio P', 3042, 'Daniel Ricciardo', 795, 'Jean-Eric Vergne', 1075, 'Williams F1 Team', 1056, 'Sauber F1 Team', 1275, 'Renault RS27-2013', 1684),
(58841, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 3, 9, 'Nico Rosberg', 3306, 'Adrian Sutil', 1662, 'Daniel Ricciardo', 795, 'Max Chilton', 1058, 'Infiniti Red Bull Racing', 2895, 'Mercedes AMG Petronas F1 Team', 2175, 'Mercedes FO 108Z', 1572),
(58843, 'ja ja ja', 66, 'equipo 5', 3, 8, 'Romain Grosjean', 3042, 'Sergio P', 3042, 'Max Chilton', 1058, 'Luiz Razia', 1058, 'Mercedes AMG Petronas F1 Team', 2175, 'Vodafone McLaren Mercedes', 2100, 'Cosworth CA2013', 1719),
(58846, 'Optimus JAM --', 76, 'Equipo JJ', 3, 10, 'Kimi R', 2835, 'Sergio P', 3042, 'Giedo van der Garde', 889, 'Luiz Razia', 1058, 'Infiniti Red Bull Racing', 2895, 'Sahara Force India F1 Team', 1368, 'Renault RS27-2013', 1684),
(58847, 'Marta de Francisco Marcos', 78, 'Norwich F1', 3, 9, 'Kimi R', 2835, 'Jean-Eric Vergne', 1075, 'Pastor Maldonado', 1156, 'Max Chilton', 1058, 'Scuderia Ferrari', 2550, 'Mercedes AMG Petronas F1 Team', 2175, 'Ferrari Type 056', 1899),
(58849, 'ja ja ja', 62, 'Equipo 1', 3, 8, 'Sergio P', 3042, 'Nico Rosberg', 3306, 'Max Chilton', 1058, 'Luiz Razia', 1058, 'Vodafone McLaren Mercedes', 2100, 'Caterham F1 Team', 1105, 'Renault RS27-2013', 1684),
(58851, 'Javier Vega Carbajal', 71, 'Dos Caballos', 3, 9, 'Fernando Alonso', 3174, 'Sergio P', 3042, 'Jean-Eric Vergne', 1075, 'Daniel Ricciardo', 795, 'Sahara Force India F1 Team', 1368, 'Caterham F1 Team', 1105, 'Renault RS27-2013', 1684),
(58853, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 3, 10, 'Fernando Alonso', 3174, 'Adrian Sutil', 1662, 'Esteban Guti', 1300, 'Daniel Ricciardo', 795, 'Sahara Force India F1 Team', 1368, 'Scuderia Toro Rosso', 1020, 'Renault RS27-2013', 1684),
(58855, 'Raul Ordax ..', 73, 'troncomovil', 3, 10, 'Fernando Alonso', 3174, 'Romain Grosjean', 3042, 'Valtteri Bottas', 1082, 'Jean-Eric Vergne', 1075, 'Mercedes AMG Petronas F1 Team', 2175, 'Scuderia Toro Rosso', 1020, 'Mercedes FO 108Z', 1572),
(58858, 'David Ordax de las Heras', 74, 'L', 3, 10, 'Fernando Alonso', 3174, 'Adrian Sutil', 1662, 'Valtteri Bottas', 1082, 'Max Chilton', 1058, 'Scuderia Ferrari', 2550, 'Scuderia Toro Rosso', 1020, 'Cosworth CA2013', 1719),
(58859, 'J M V', 69, 'Lalangosta Racing Team', 3, 9, 'Fernando Alonso', 3174, 'Kimi R', 2835, 'Adrian Sutil', 1662, 'Max Chilton', 1058, 'Scuderia Ferrari', 2550, 'Williams F1 Team', 1056, 'Renault RS27-2013', 1684),
(58862, 'Esther  R M', 77, 'Silvia McQueen', 3, 9, 'Fernando Alonso', 3174, 'Nico Rosberg', 3306, 'Daniel Ricciardo', 795, 'Max Chilton', 1058, 'Lotus F1 Team', 2185, 'Mercedes AMG Petronas F1 Team', 2175, 'Renault RS27-2013', 1684),
(58863, 'ja ja ja', 64, 'Equipo 3', 3, 8, 'Sebastian Vettel', 3700, 'Luiz Razia', 1058, 'Charles Pic', 1196, 'Adrian Sutil', 1662, 'Infiniti Red Bull Racing', 2895, 'Marussia F1 Team', 1322, 'Cosworth CA2013', 1719),
(58866, 'ja ja ja', 65, 'Equipo 4', 3, 8, 'Sebastian Vettel', 3700, 'Jean-Eric Vergne', 1075, 'Luiz Razia', 1058, 'Max Chilton', 1058, 'Infiniti Red Bull Racing', 2895, 'Caterham F1 Team', 1105, 'Mercedes FO 108Z', 1572),
(58868, 'ja ja ja', 63, 'Equipo 2', 3, 8, 'Sebastian Vettel', 3700, 'Jean-Eric Vergne', 1075, 'Daniel Ricciardo', 795, 'Charles Pic', 1196, 'Infiniti Red Bull Racing', 2895, 'Caterham F1 Team', 1105, 'Renault RS27-2013', 1684),
(58869, 'ja ja ja', 63, 'Equipo 2', 4, 8, 'Sebastian Vettel', 3145, 'Jean-Eric Vergne', 1178, 'Daniel Ricciardo', 914, 'Charles Pic', 1068, 'Infiniti Red Bull Racing', 2461, 'Caterham F1 Team', 1000, 'Renault RS27-2013', 1681),
(58870, 'ja ja ja', 64, 'Equipo 3', 4, 8, 'Sebastian Vettel', 3145, 'Luiz Razia', 932, 'Charles Pic', 1068, 'Adrian Sutil', 1413, 'Infiniti Red Bull Racing', 2461, 'Marussia F1 Team', 1342, 'Cosworth CA2013', 1745),
(58871, 'ja ja ja', 65, 'Equipo 4', 4, 8, 'Sebastian Vettel', 3145, 'Jean-Eric Vergne', 1178, 'Luiz Razia', 932, 'Max Chilton', 1217, 'Infiniti Red Bull Racing', 2461, 'Caterham F1 Team', 1000, 'Mercedes FO 108Z', 1557),
(58872, 'ja ja ja', 67, 'equipo 6', 4, 8, 'Valtteri Bottas', 1180, 'Jean-Eric Vergne', 1178, 'Daniel Ricciardo', 914, 'Charles Pic', 1068, 'Infiniti Red Bull Racing', 2461, 'Scuderia Ferrari', 2782, 'Cosworth CA2013', 1745),
(58873, 'J M V', 69, 'Lalangosta Racing Team', 4, 9, 'Fernando Alonso', 3650, 'Kimi R', 3260, 'Adrian Sutil', 1413, 'Max Chilton', 1217, 'Scuderia Ferrari', 2782, 'Williams F1 Team', 1183, 'Renault RS27-2013', 1681),
(58874, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 4, 9, 'Kimi R', 3260, 'Paul di Resta', 2136, 'Daniel Ricciardo', 914, 'Giedo van der Garde', 756, 'Infiniti Red Bull Racing', 2461, 'Mercedes AMG Petronas F1 Team', 2501, 'Mercedes FO 108Z', 1557),
(58875, 'Esther  R M', 77, 'Silvia McQueen', 4, 9, 'Fernando Alonso', 3650, 'Nico Rosberg', 3802, 'Daniel Ricciardo', 914, 'Pastor Maldonado', 1329, 'Lotus F1 Team', 2513, 'Mercedes AMG Petronas F1 Team', 2501, 'Renault RS27-2013', 1681),
(58876, 'ja ja ja', 62, 'Equipo 1', 4, 8, 'Sergio P', 3498, 'Nico Rosberg', 3802, 'Max Chilton', 1217, 'Luiz Razia', 932, 'Vodafone McLaren Mercedes', 2374, 'Caterham F1 Team', 1000, 'Renault RS27-2013', 1681),
(58877, 'ja ja ja', 66, 'equipo 5', 4, 8, 'Romain Grosjean', 3498, 'Sergio P', 3498, 'Max Chilton', 1217, 'Luiz Razia', 932, 'Mercedes AMG Petronas F1 Team', 2501, 'Vodafone McLaren Mercedes', 2374, 'Cosworth CA2013', 1745),
(58878, 'Javier Vega Carbajal', 71, 'Dos Caballos', 4, 9, 'Fernando Alonso', 3650, 'Valtteri Bottas', 1180, 'Jean-Eric Vergne', 1178, 'Daniel Ricciardo', 914, 'Sahara Force India F1 Team', 1368, 'Scuderia Toro Rosso', 1145, 'Ferrari Type 056', 2072),
(58879, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 4, 10, 'Fernando Alonso', 3650, 'Paul di Resta', 2136, 'Giedo van der Garde', 756, 'Daniel Ricciardo', 914, 'Sahara Force India F1 Team', 1368, 'Williams F1 Team', 1183, 'Renault RS27-2013', 1681),
(58880, 'Raul Ordax ..', 73, 'troncomovil', 4, 10, 'Fernando Alonso', 3650, 'Kimi R', 3260, 'Valtteri Bottas', 1180, 'Jean-Eric Vergne', 1178, 'Lotus F1 Team', 2513, 'Sahara Force India F1 Team', 1368, 'Mercedes FO 108Z', 1557),
(58881, 'David Ordax de las Heras', 74, 'L', 4, 10, 'Fernando Alonso', 3650, 'Adrian Sutil', 1413, 'Pastor Maldonado', 1329, 'Esteban Guti', 1105, 'Scuderia Ferrari', 2782, 'Caterham F1 Team', 1000, 'Cosworth CA2013', 1745),
(58882, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 4, 9, 'Sebastian Vettel', 3145, 'Sergio P', 3498, 'Daniel Ricciardo', 914, 'Jean-Eric Vergne', 1178, 'Williams F1 Team', 1183, 'Scuderia Ferrari', 2782, 'Renault RS27-2013', 1681),
(58883, 'Optimus JAM --', 76, 'Equipo JJ', 4, 10, 'Kimi R', 3260, 'Nico Rosberg', 3802, 'Giedo van der Garde', 756, 'Daniel Ricciardo', 914, 'Infiniti Red Bull Racing', 2461, 'Williams F1 Team', 1183, 'Renault RS27-2013', 1681),
(58884, 'Marta de Francisco Marcos', 78, 'Norwich F1', 4, 9, 'Kimi R', 3260, 'Daniel Ricciardo', 914, 'Pastor Maldonado', 1329, 'Max Chilton', 1217, 'Scuderia Ferrari', 2782, 'Infiniti Red Bull Racing', 2461, 'Renault RS27-2013', 1681),
(58885, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 4, 9, 'Jean-Eric Vergne', 1178, 'Adrian Sutil', 1413, 'Daniel Ricciardo', 914, 'Fernando Alonso', 3650, 'Scuderia Ferrari', 2782, 'Scuderia Toro Rosso', 1145, 'Renault RS27-2013', 1681),
(58886, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 4, 9, 'Fernando Alonso', 3650, 'Pastor Maldonado', 1329, 'Daniel Ricciardo', 914, 'Giedo van der Garde', 756, 'Infiniti Red Bull Racing', 2461, 'Williams F1 Team', 1183, 'Renault RS27-2013', 1681),
(58887, 'ja ja ja', 63, 'Equipo 2', 5, 8, 'Sebastian Vettel', 3617, 'Jean-Eric Vergne', 1001, 'Daniel Ricciardo', 1051, 'Charles Pic', 908, 'Infiniti Red Bull Racing', 2461, 'Caterham F1 Team', 1000, 'Renault RS27-2013', 1744),
(58888, 'ja ja ja', 67, 'equipo 6', 5, 8, 'Valtteri Bottas', 1357, 'Jean-Eric Vergne', 1001, 'Daniel Ricciardo', 1051, 'Charles Pic', 908, 'Infiniti Red Bull Racing', 2461, 'Scuderia Ferrari', 2657, 'Cosworth CA2013', 1483),
(58889, 'Javier Vega Carbajal', 71, 'Dos Caballos', 5, 9, 'Fernando Alonso', 3871, 'Valtteri Bottas', 1357, 'Jean-Eric Vergne', 1001, 'Daniel Ricciardo', 1051, 'Sahara Force India F1 Team', 1368, 'Scuderia Toro Rosso', 1145, 'Ferrari Type 056', 2049),
(58890, 'David Ordax de las Heras', 74, 'L', 5, 10, 'Fernando Alonso', 3871, 'Adrian Sutil', 1201, 'Valtteri Bottas', 1357, 'Esteban Guti', 1043, 'Scuderia Ferrari', 2657, 'Caterham F1 Team', 1000, 'Mercedes FO 108Z', 1477),
(58891, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 5, 9, 'Sebastian Vettel', 3617, 'Sergio P', 4023, 'Daniel Ricciardo', 1051, 'Jean-Eric Vergne', 1001, 'Williams F1 Team', 1360, 'Scuderia Ferrari', 2657, 'Renault RS27-2013', 1744),
(58892, 'Esther  R M', 77, 'Silvia McQueen', 5, 9, 'Fernando Alonso', 3871, 'Sebastian Vettel', 3617, 'Daniel Ricciardo', 1051, 'Pastor Maldonado', 1528, 'Lotus F1 Team', 2890, 'Scuderia Ferrari', 2657, 'Mercedes FO 108Z', 1477),
(58893, 'ja ja ja', 62, 'Equipo 1', 5, 8, 'Sergio P', 4023, 'Nico Rosberg', 4372, 'Max Chilton', 1034, 'Luiz Razia', 792, 'Vodafone McLaren Mercedes', 2374, 'Caterham F1 Team', 1000, 'Renault RS27-2013', 1744),
(58894, 'ja ja ja', 64, 'Equipo 3', 5, 8, 'Sebastian Vettel', 3617, 'Luiz Razia', 792, 'Charles Pic', 908, 'Adrian Sutil', 1201, 'Infiniti Red Bull Racing', 2461, 'Marussia F1 Team', 1141, 'Cosworth CA2013', 1483),
(58895, 'ja ja ja', 65, 'Equipo 4', 5, 8, 'Sebastian Vettel', 3617, 'Jean-Eric Vergne', 1001, 'Luiz Razia', 792, 'Max Chilton', 1034, 'Infiniti Red Bull Racing', 2461, 'Caterham F1 Team', 1000, 'Mercedes FO 108Z', 1477),
(58896, 'ja ja ja', 66, 'equipo 5', 5, 8, 'Romain Grosjean', 4023, 'Sergio P', 4023, 'Max Chilton', 1034, 'Luiz Razia', 792, 'Mercedes AMG Petronas F1 Team', 2501, 'Vodafone McLaren Mercedes', 2374, 'Cosworth CA2013', 1483),
(58897, 'J M V', 69, 'Lalangosta Racing Team', 5, 9, 'Fernando Alonso', 3871, 'Kimi R', 3749, 'Adrian Sutil', 1201, 'Max Chilton', 1034, 'Scuderia Ferrari', 2657, 'Williams F1 Team', 1360, 'Renault RS27-2013', 1744),
(58898, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 5, 9, 'Kimi R', 3749, 'Paul di Resta', 2456, 'Adrian Sutil', 1201, 'Giedo van der Garde', 700, 'Infiniti Red Bull Racing', 2461, 'Mercedes AMG Petronas F1 Team', 2501, 'Mercedes FO 108Z', 1477),
(58899, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 5, 10, 'Fernando Alonso', 3871, 'Adrian Sutil', 1201, 'Esteban Guti', 1043, 'Pastor Maldonado', 1528, 'Sahara Force India F1 Team', 1368, 'Williams F1 Team', 1360, 'Renault RS27-2013', 1744),
(58900, 'Raul Ordax ..', 73, 'troncomovil', 5, 10, 'Fernando Alonso', 3871, 'Kimi R', 3749, 'Adrian Sutil', 1201, 'Jean-Eric Vergne', 1001, 'Lotus F1 Team', 2890, 'Sahara Force India F1 Team', 1368, 'Mercedes FO 108Z', 1477),
(58901, 'Optimus JAM --', 76, 'Equipo JJ', 5, 10, 'Kimi R', 3749, 'Nico Rosberg', 4372, 'Giedo van der Garde', 700, 'Daniel Ricciardo', 1051, 'Infiniti Red Bull Racing', 2461, 'Williams F1 Team', 1360, 'Renault RS27-2013', 1744),
(58902, 'Marta de Francisco Marcos', 78, 'Norwich F1', 5, 9, 'Fernando Alonso', 3871, 'Adrian Sutil', 1201, 'Pastor Maldonado', 1528, 'Max Chilton', 1034, 'Scuderia Ferrari', 2657, 'Infiniti Red Bull Racing', 2461, 'Renault RS27-2013', 1744),
(58903, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 5, 9, 'Jean-Eric Vergne', 1001, 'Adrian Sutil', 1201, 'Daniel Ricciardo', 1051, 'Fernando Alonso', 3871, 'Scuderia Ferrari', 2657, 'Scuderia Toro Rosso', 1145, 'Renault RS27-2013', 1744),
(58904, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 5, 9, 'Fernando Alonso', 3871, 'Pastor Maldonado', 1528, 'Daniel Ricciardo', 1051, 'Giedo van der Garde', 700, 'Infiniti Red Bull Racing', 2461, 'Williams F1 Team', 1360, 'Renault RS27-2013', 1744),
(58905, 'Javier Vega Carbajal', 71, 'Dos Caballos', 6, 9, 'Fernando Alonso', 4452, 'Valtteri Bottas', 1153, 'Jean-Eric Vergne', 851, 'Daniel Ricciardo', 1209, 'Sahara Force India F1 Team', 1368, 'Scuderia Toro Rosso', 1145, 'Ferrari Type 056', 2126),
(58906, 'Esther  R M', 77, 'Silvia McQueen', 6, 9, 'Fernando Alonso', 4452, 'Sebastian Vettel', 4115, 'Lewis Hamilton', 3185, 'Adrian Sutil', 1021, 'Mercedes AMG Petronas F1 Team', 2501, 'Scuderia Ferrari', 3056, 'Mercedes FO 108Z', 1539),
(58907, 'ja ja ja', 62, 'Equipo 1', 6, 8, 'Sergio P', 4626, 'Nico Rosberg', 5028, 'Max Chilton', 953, 'Luiz Razia', 700, 'Vodafone McLaren Mercedes', 2575, 'Caterham F1 Team', 1000, 'Renault RS27-2013', 1782),
(58908, 'ja ja ja', 64, 'Equipo 3', 6, 8, 'Sebastian Vettel', 4115, 'Luiz Razia', 700, 'Charles Pic', 951, 'Adrian Sutil', 1021, 'Infiniti Red Bull Racing', 2800, 'Marussia F1 Team', 1025, 'Cosworth CA2013', 1332),
(58909, 'Raul Ordax ..', 73, 'troncomovil', 6, 10, 'Fernando Alonso', 4452, 'Kimi R', 4311, 'Adrian Sutil', 1021, 'Jean-Eric Vergne', 851, 'Lotus F1 Team', 2890, 'Sahara Force India F1 Team', 1368, 'Mercedes FO 108Z', 1539),
(58910, 'Optimus JAM --', 76, 'Equipo JJ', 6, 10, 'Kimi R', 4311, 'Nico Rosberg', 5028, 'Giedo van der Garde', 700, 'Daniel Ricciardo', 1209, 'Infiniti Red Bull Racing', 2800, 'Williams F1 Team', 1360, 'Renault RS27-2013', 1782),
(58911, 'ja ja ja', 63, 'Equipo 2', 6, 8, 'Sebastian Vettel', 4115, 'Jean-Eric Vergne', 851, 'Daniel Ricciardo', 1209, 'Charles Pic', 951, 'Infiniti Red Bull Racing', 2800, 'Caterham F1 Team', 1000, 'Renault RS27-2013', 1782),
(58912, 'ja ja ja', 67, 'equipo 6', 6, 8, 'Valtteri Bottas', 1153, 'Jean-Eric Vergne', 851, 'Daniel Ricciardo', 1209, 'Charles Pic', 951, 'Infiniti Red Bull Racing', 2800, 'Scuderia Ferrari', 3056, 'Cosworth CA2013', 1332),
(58913, 'David Ordax de las Heras', 74, 'L', 6, 10, 'Fernando Alonso', 4452, 'Adrian Sutil', 1021, 'Valtteri Bottas', 1153, 'Esteban Guti', 1199, 'Scuderia Ferrari', 3056, 'Caterham F1 Team', 1000, 'Mercedes FO 108Z', 1539),
(58914, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 6, 9, 'Sebastian Vettel', 4115, 'Sergio P', 4626, 'Daniel Ricciardo', 1209, 'Jean-Eric Vergne', 851, 'Williams F1 Team', 1360, 'Scuderia Ferrari', 3056, 'Renault RS27-2013', 1782),
(58915, 'ja ja ja', 65, 'Equipo 4', 6, 8, 'Sebastian Vettel', 4115, 'Jean-Eric Vergne', 851, 'Luiz Razia', 700, 'Max Chilton', 953, 'Infiniti Red Bull Racing', 2800, 'Caterham F1 Team', 1000, 'Mercedes FO 108Z', 1539),
(58916, 'ja ja ja', 66, 'equipo 5', 6, 8, 'Romain Grosjean', 3420, 'Sergio P', 4626, 'Max Chilton', 953, 'Luiz Razia', 700, 'Mercedes AMG Petronas F1 Team', 2501, 'Vodafone McLaren Mercedes', 2575, 'Cosworth CA2013', 1332),
(58917, 'J M V', 69, 'Lalangosta Racing Team', 6, 9, 'Fernando Alonso', 4452, 'Kimi R', 4311, 'Adrian Sutil', 1021, 'Max Chilton', 953, 'Scuderia Ferrari', 3056, 'Williams F1 Team', 1360, 'Renault RS27-2013', 1782),
(58918, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 6, 9, 'Fernando Alonso', 4452, 'Paul di Resta', 2824, 'Max Chilton', 953, 'Giedo van der Garde', 700, 'Infiniti Red Bull Racing', 2800, 'Mercedes AMG Petronas F1 Team', 2501, 'Mercedes FO 108Z', 1539),
(58919, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 6, 10, 'Lewis Hamilton', 3185, 'Adrian Sutil', 1021, 'Esteban Guti', 1199, 'Pastor Maldonado', 1757, 'Sahara Force India F1 Team', 1368, 'Mercedes AMG Petronas F1 Team', 2501, 'Mercedes FO 108Z', 1539),
(58920, 'Marta de Francisco Marcos', 78, 'Norwich F1', 6, 9, 'Fernando Alonso', 4452, 'Adrian Sutil', 1021, 'Pastor Maldonado', 1757, 'Max Chilton', 953, 'Scuderia Ferrari', 3056, 'Infiniti Red Bull Racing', 2800, 'Renault RS27-2013', 1782),
(58921, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 6, 9, 'Jean-Eric Vergne', 851, 'Adrian Sutil', 1021, 'Daniel Ricciardo', 1209, 'Fernando Alonso', 4452, 'Scuderia Ferrari', 3056, 'Scuderia Toro Rosso', 1145, 'Renault RS27-2013', 1782),
(58922, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 6, 9, 'Fernando Alonso', 4452, 'Pastor Maldonado', 1757, 'Daniel Ricciardo', 1209, 'Giedo van der Garde', 700, 'Infiniti Red Bull Racing', 2800, 'Williams F1 Team', 1360, 'Renault RS27-2013', 1782),
(58923, 'ja ja ja', 62, 'Equipo 1', 7, 8, 'Sergio P', 3932, 'Nico Rosberg', 5782, 'Max Chilton', 1096, 'Luiz Razia', 700, 'Vodafone McLaren Mercedes', 2575, 'Caterham F1 Team', 1000, 'Renault RS27-2013', 1705),
(58924, 'ja ja ja', 63, 'Equipo 2', 7, 8, 'Sebastian Vettel', 4732, 'Jean-Eric Vergne', 979, 'Daniel Ricciardo', 1028, 'Charles Pic', 808, 'Infiniti Red Bull Racing', 3220, 'Caterham F1 Team', 1000, 'Renault RS27-2013', 1705),
(58925, 'ja ja ja', 67, 'equipo 6', 7, 8, 'Valtteri Bottas', 1108, 'Jean-Eric Vergne', 979, 'Daniel Ricciardo', 1028, 'Charles Pic', 808, 'Infiniti Red Bull Racing', 3220, 'Scuderia Ferrari', 2750, 'Cosworth CA2013', 1332),
(58926, 'David Ordax de las Heras', 74, 'L', 7, 10, 'Fernando Alonso', 4228, 'Adrian Sutil', 1174, 'Valtteri Bottas', 1108, 'Esteban Guti', 1379, 'Scuderia Ferrari', 2750, 'Caterham F1 Team', 1000, 'Mercedes FO 108Z', 1539),
(58927, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 7, 9, 'Sebastian Vettel', 4732, 'Fernando Alonso', 4228, 'Daniel Ricciardo', 1028, 'Jean-Eric Vergne', 979, 'Williams F1 Team', 1231, 'Mercedes AMG Petronas F1 Team', 2876, 'Mercedes FO 108Z', 1539),
(58928, 'ja ja ja', 65, 'Equipo 4', 7, 8, 'Sebastian Vettel', 4732, 'Jean-Eric Vergne', 979, 'Luiz Razia', 700, 'Max Chilton', 1096, 'Infiniti Red Bull Racing', 3220, 'Caterham F1 Team', 1000, 'Mercedes FO 108Z', 1539),
(58929, 'ja ja ja', 66, 'equipo 5', 7, 8, 'Romain Grosjean', 2907, 'Sergio P', 3932, 'Max Chilton', 1096, 'Luiz Razia', 700, 'Mercedes AMG Petronas F1 Team', 2876, 'Vodafone McLaren Mercedes', 2575, 'Cosworth CA2013', 1332),
(58930, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 7, 9, 'Fernando Alonso', 4228, 'Paul di Resta', 2966, 'Max Chilton', 1096, 'Giedo van der Garde', 700, 'Infiniti Red Bull Racing', 3220, 'Mercedes AMG Petronas F1 Team', 2876, 'Mercedes FO 108Z', 1539),
(58931, 'Javier Vega Carbajal', 71, 'Dos Caballos', 7, 9, 'Fernando Alonso', 4228, 'Valtteri Bottas', 1108, 'Jean-Eric Vergne', 979, 'Daniel Ricciardo', 1028, 'Sahara Force India F1 Team', 1505, 'Scuderia Toro Rosso', 1145, 'Ferrari Type 056', 2206),
(58932, 'Esther  R M', 77, 'Silvia McQueen', 7, 9, 'Fernando Alonso', 4228, 'Sebastian Vettel', 4732, 'Mark Webber', 3874, 'Adrian Sutil', 1174, 'Lotus F1 Team', 2456, 'Scuderia Ferrari', 2750, 'Renault RS27-2013', 1705),
(58933, 'ja ja ja', 64, 'Equipo 3', 7, 8, 'Sebastian Vettel', 4732, 'Luiz Razia', 700, 'Charles Pic', 808, 'Adrian Sutil', 1174, 'Infiniti Red Bull Racing', 3220, 'Marussia F1 Team', 1025, 'Cosworth CA2013', 1332),
(58934, 'Raul Ordax ..', 73, 'troncomovil', 7, 10, 'Fernando Alonso', 4228, 'Romain Grosjean', 2907, 'Adrian Sutil', 1174, 'Jean-Eric Vergne', 979, 'Mercedes AMG Petronas F1 Team', 2876, 'Sahara Force India F1 Team', 1505, 'Renault RS27-2013', 1705),
(58935, 'Optimus JAM --', 76, 'Equipo JJ', 7, 10, 'Kimi R', 3664, 'Nico Rosberg', 5782, 'Giedo van der Garde', 700, 'Daniel Ricciardo', 1028, 'Infiniti Red Bull Racing', 3220, 'Williams F1 Team', 1231, 'Renault RS27-2013', 1705),
(58936, 'J M V', 69, 'Lalangosta Racing Team', 7, 9, 'Fernando Alonso', 4228, 'Kimi R', 3664, 'Adrian Sutil', 1174, 'Max Chilton', 1096, 'Scuderia Ferrari', 2750, 'Williams F1 Team', 1231, 'Renault RS27-2013', 1705),
(58937, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 7, 10, 'Lewis Hamilton', 3663, 'Adrian Sutil', 1174, 'Esteban Guti', 1379, 'Pastor Maldonado', 1493, 'Sahara Force India F1 Team', 1505, 'Mercedes AMG Petronas F1 Team', 2876, 'Mercedes FO 108Z', 1539),
(58938, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 7, 9, 'Jean-Eric Vergne', 979, 'Adrian Sutil', 1174, 'Daniel Ricciardo', 1028, 'Fernando Alonso', 4228, 'Scuderia Ferrari', 2750, 'Scuderia Toro Rosso', 1145, 'Renault RS27-2013', 1705),
(58939, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 7, 9, 'Jenson Button', 2638, 'Kimi R', 3664, 'Daniel Ricciardo', 1028, 'Giedo van der Garde', 700, 'Lotus F1 Team', 2456, 'Williams F1 Team', 1231, 'Renault RS27-2013', 1705),
(58940, 'Marta de Francisco Marcos', 78, 'Norwich F1', 7, 9, 'Fernando Alonso', 4228, 'Adrian Sutil', 1174, 'Pastor Maldonado', 1493, 'Jean-Eric Vergne', 979, 'Scuderia Ferrari', 2750, 'Infiniti Red Bull Racing', 3220, 'Renault RS27-2013', 1705),
(58941, 'ja ja ja', 64, 'Equipo 3', 8, 8, 'Sebastian Vettel', 5442, 'Luiz Razia', 794, 'Charles Pic', 799, 'Adrian Sutil', 1350, 'Infiniti Red Bull Racing', 3703, 'Marussia F1 Team', 1170, 'Cosworth CA2013', 1521),
(58942, 'ja ja ja', 66, 'equipo 5', 8, 8, 'Romain Grosjean', 2471, 'Sergio P', 3342, 'Max Chilton', 1260, 'Luiz Razia', 794, 'Mercedes AMG Petronas F1 Team', 3307, 'Vodafone McLaren Mercedes', 2189, 'Cosworth CA2013', 1521),
(58943, 'ja ja ja', 67, 'equipo 6', 8, 8, 'Valtteri Bottas', 1274, 'Jean-Eric Vergne', 1126, 'Daniel Ricciardo', 874, 'Charles Pic', 799, 'Infiniti Red Bull Racing', 3703, 'Scuderia Ferrari', 2729, 'Cosworth CA2013', 1521),
(58944, 'David Ordax de las Heras', 74, 'L', 8, 10, 'Fernando Alonso', 4798, 'Adrian Sutil', 1350, 'Valtteri Bottas', 1274, 'Esteban Guti', 1172, 'Scuderia Ferrari', 2729, 'Caterham F1 Team', 1000, 'Mercedes FO 108Z', 1308),
(58945, 'ja ja ja', 65, 'Equipo 4', 8, 8, 'Sebastian Vettel', 5442, 'Jean-Eric Vergne', 1126, 'Luiz Razia', 794, 'Max Chilton', 1260, 'Infiniti Red Bull Racing', 3703, 'Caterham F1 Team', 1000, 'Mercedes FO 108Z', 1308),
(58946, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 8, 9, 'Sebastian Vettel', 5442, 'Fernando Alonso', 4798, 'Daniel Ricciardo', 874, 'Jean-Eric Vergne', 1126, 'Williams F1 Team', 1231, 'Mercedes AMG Petronas F1 Team', 3307, 'Mercedes FO 108Z', 1308),
(58947, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 8, 9, 'Fernando Alonso', 4798, 'Paul di Resta', 2887, 'Max Chilton', 1260, 'Giedo van der Garde', 700, 'Infiniti Red Bull Racing', 3703, 'Mercedes AMG Petronas F1 Team', 3307, 'Mercedes FO 108Z', 1308),
(58948, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 8, 10, 'Lewis Hamilton', 4212, 'Adrian Sutil', 1350, 'Esteban Guti', 1172, 'Pastor Maldonado', 1269, 'Sahara Force India F1 Team', 1598, 'Mercedes AMG Petronas F1 Team', 3307, 'Mercedes FO 108Z', 1308),
(58949, 'Javier Vega Carbajal', 71, 'Dos Caballos', 8, 9, 'Fernando Alonso', 4798, 'Valtteri Bottas', 1274, 'Jean-Eric Vergne', 1126, 'Daniel Ricciardo', 874, 'Sahara Force India F1 Team', 1598, 'Scuderia Toro Rosso', 1145, 'Ferrari Type 056', 2319),
(58950, 'ja ja ja', 62, 'Equipo 1', 8, 8, 'Sergio P', 3342, 'Nico Rosberg', 6649, 'Max Chilton', 1260, 'Luiz Razia', 794, 'Vodafone McLaren Mercedes', 2189, 'Caterham F1 Team', 1000, 'Renault RS27-2013', 1671),
(58951, 'ja ja ja', 63, 'Equipo 2', 8, 8, 'Sebastian Vettel', 5442, 'Jean-Eric Vergne', 1126, 'Daniel Ricciardo', 874, 'Charles Pic', 799, 'Infiniti Red Bull Racing', 3703, 'Caterham F1 Team', 1000, 'Renault RS27-2013', 1671),
(58952, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 8, 9, 'Jean-Eric Vergne', 1126, 'Adrian Sutil', 1350, 'Daniel Ricciardo', 874, 'Fernando Alonso', 4798, 'Scuderia Ferrari', 2729, 'Scuderia Toro Rosso', 1145, 'Renault RS27-2013', 1671),
(58953, 'Optimus JAM --', 76, 'Equipo JJ', 8, 10, 'Kimi R', 3114, 'Nico Rosberg', 6649, 'Giedo van der Garde', 700, 'Daniel Ricciardo', 874, 'Infiniti Red Bull Racing', 3703, 'Williams F1 Team', 1231, 'Renault RS27-2013', 1671),
(58954, 'J M V', 69, 'Lalangosta Racing Team', 8, 9, 'Fernando Alonso', 4798, 'Kimi R', 3114, 'Adrian Sutil', 1350, 'Max Chilton', 1260, 'Scuderia Ferrari', 2729, 'Williams F1 Team', 1231, 'Renault RS27-2013', 1671),
(58955, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 8, 9, 'Jenson Button', 2242, 'Kimi R', 3114, 'Daniel Ricciardo', 874, 'Giedo van der Garde', 700, 'Lotus F1 Team', 2088, 'Williams F1 Team', 1231, 'Renault RS27-2013', 1671),
(58956, 'Raul Ordax ..', 73, 'troncomovil', 8, 10, 'Fernando Alonso', 4798, 'Romain Grosjean', 2471, 'Adrian Sutil', 1350, 'Jean-Eric Vergne', 1126, 'Mercedes AMG Petronas F1 Team', 3307, 'Sahara Force India F1 Team', 1598, 'Renault RS27-2013', 1671),
(58957, 'Esther  R M', 77, 'Silvia McQueen', 8, 9, 'Fernando Alonso', 4798, 'Sebastian Vettel', 5442, 'Mark Webber', 4455, 'Adrian Sutil', 1350, 'Lotus F1 Team', 2088, 'Scuderia Ferrari', 2729, 'Renault RS27-2013', 1671),
(58958, 'Marta de Francisco Marcos', 78, 'Norwich F1', 8, 9, 'Fernando Alonso', 4798, 'Adrian Sutil', 1350, 'Pastor Maldonado', 1269, 'Jean-Eric Vergne', 1126, 'Scuderia Ferrari', 2729, 'Infiniti Red Bull Racing', 3703, 'Renault RS27-2013', 1671),
(58959, 'ja ja ja', 66, 'equipo 5', 9, 8, 'Romain Grosjean', 2100, 'Sergio P', 2841, 'Max Chilton', 1271, 'Luiz Razia', 913, 'Mercedes AMG Petronas F1 Team', 3803, 'Vodafone McLaren Mercedes', 1861, 'Cosworth CA2013', 1642),
(58960, 'ja ja ja', 64, 'Equipo 3', 9, 8, 'Sebastian Vettel', 4626, 'Luiz Razia', 913, 'Charles Pic', 919, 'Adrian Sutil', 1552, 'Infiniti Red Bull Racing', 3703, 'Marussia F1 Team', 1263, 'Cosworth CA2013', 1642),
(58961, 'ja ja ja', 67, 'equipo 6', 9, 8, 'Valtteri Bottas', 1465, 'Jean-Eric Vergne', 957, 'Daniel Ricciardo', 1005, 'Charles Pic', 919, 'Infiniti Red Bull Racing', 3703, 'Scuderia Ferrari', 2954, 'Cosworth CA2013', 1642),
(58962, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 9, 9, 'Sebastian Vettel', 4626, 'Fernando Alonso', 4871, 'Daniel Ricciardo', 1005, 'Jean-Eric Vergne', 957, 'Williams F1 Team', 1416, 'Mercedes AMG Petronas F1 Team', 3803, 'Mercedes FO 108Z', 1210),
(58963, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 9, 10, 'Romain Grosjean', 2100, 'Adrian Sutil', 1552, 'Kimi R', 3056, 'Paul di Resta', 2454, 'Sahara Force India F1 Team', 1598, 'Mercedes AMG Petronas F1 Team', 3803, 'Mercedes FO 108Z', 1210),
(58964, 'David Ordax de las Heras', 74, 'L', 9, 10, 'Fernando Alonso', 4871, 'Adrian Sutil', 1552, 'Valtteri Bottas', 1465, 'Esteban Guti', 996, 'Scuderia Ferrari', 2954, 'Caterham F1 Team', 1150, 'Mercedes FO 108Z', 1210),
(58965, 'ja ja ja', 65, 'Equipo 4', 9, 8, 'Sebastian Vettel', 4626, 'Jean-Eric Vergne', 957, 'Luiz Razia', 913, 'Max Chilton', 1271, 'Infiniti Red Bull Racing', 3703, 'Caterham F1 Team', 1150, 'Mercedes FO 108Z', 1210),
(58966, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 9, 9, 'Fernando Alonso', 4871, 'Paul di Resta', 2454, 'Max Chilton', 1271, 'Giedo van der Garde', 805, 'Infiniti Red Bull Racing', 3703, 'Mercedes AMG Petronas F1 Team', 3803, 'Mercedes FO 108Z', 1210),
(58967, 'Javier Vega Carbajal', 71, 'Dos Caballos', 9, 9, 'Fernando Alonso', 4871, 'Valtteri Bottas', 1465, 'Jean-Eric Vergne', 957, 'Daniel Ricciardo', 1005, 'Sahara Force India F1 Team', 1598, 'Scuderia Toro Rosso', 1145, 'Ferrari Type 056', 2454),
(58968, 'Raul Ordax ..', 73, 'troncomovil', 9, 10, 'Fernando Alonso', 4871, 'Romain Grosjean', 2100, 'Adrian Sutil', 1552, 'Jean-Eric Vergne', 957, 'Mercedes AMG Petronas F1 Team', 3803, 'Sahara Force India F1 Team', 1598, 'Renault RS27-2013', 1761),
(58969, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 9, 9, 'Jenson Button', 1906, 'Kimi R', 3056, 'Daniel Ricciardo', 1005, 'Giedo van der Garde', 805, 'Lotus F1 Team', 1912, 'Williams F1 Team', 1416, 'Renault RS27-2013', 1761),
(58970, 'Esther  R M', 77, 'Silvia McQueen', 9, 9, 'Fernando Alonso', 4871, 'Sebastian Vettel', 4626, 'Mark Webber', 5123, 'Adrian Sutil', 1552, 'Lotus F1 Team', 1912, 'Scuderia Ferrari', 2954, 'Renault RS27-2013', 1761),
(58971, 'ja ja ja', 62, 'Equipo 1', 9, 8, 'Sergio P', 2841, 'Nico Rosberg', 7646, 'Max Chilton', 1271, 'Luiz Razia', 913, 'Vodafone McLaren Mercedes', 1861, 'Caterham F1 Team', 1150, 'Renault RS27-2013', 1761),
(58972, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 9, 9, 'Jean-Eric Vergne', 957, 'Adrian Sutil', 1552, 'Daniel Ricciardo', 1005, 'Fernando Alonso', 4871, 'Scuderia Ferrari', 2954, 'Scuderia Toro Rosso', 1145, 'Renault RS27-2013', 1761),
(58973, 'J M V', 69, 'Lalangosta Racing Team', 9, 9, 'Fernando Alonso', 4871, 'Kimi R', 3056, 'Adrian Sutil', 1552, 'Max Chilton', 1271, 'Scuderia Ferrari', 2954, 'Williams F1 Team', 1416, 'Renault RS27-2013', 1761),
(58974, 'Marta de Francisco Marcos', 78, 'Norwich F1', 9, 9, 'Fernando Alonso', 4871, 'Adrian Sutil', 1552, 'Pastor Maldonado', 1459, 'Jean-Eric Vergne', 957, 'Scuderia Ferrari', 2954, 'Infiniti Red Bull Racing', 3703, 'Renault RS27-2013', 1761),
(58975, 'ja ja ja', 63, 'Equipo 2', 9, 8, 'Sebastian Vettel', 4626, 'Jean-Eric Vergne', 957, 'Daniel Ricciardo', 1005, 'Charles Pic', 919, 'Infiniti Red Bull Racing', 3703, 'Caterham F1 Team', 1150, 'Renault RS27-2013', 1761),
(58976, 'Optimus JAM --', 76, 'Equipo JJ', 9, 10, 'Kimi R', 3056, 'Sebastian Vettel', 4626, 'Giedo van der Garde', 805, 'Paul di Resta', 2454, 'Infiniti Red Bull Racing', 3703, 'Scuderia Ferrari', 2954, 'Renault RS27-2013', 1761),
(58977, 'ja ja ja', 64, 'Equipo 3', 10, 8, 'Sebastian Vettel', 5113, 'Luiz Razia', 1050, 'Charles Pic', 1057, 'Adrian Sutil', 1319, 'Infiniti Red Bull Racing', 4175, 'Marussia F1 Team', 1436, 'Cosworth CA2013', 1867),
(58978, 'ja ja ja', 62, 'Equipo 1', 10, 8, 'Sergio P', 3267, 'Nico Rosberg', 6499, 'Max Chilton', 1429, 'Luiz Razia', 1050, 'Vodafone McLaren Mercedes', 2140, 'Caterham F1 Team', 1322, 'Renault RS27-2013', 1949),
(58979, 'David Ordax de las Heras', 74, 'L', 10, 10, 'Fernando Alonso', 4154, 'Adrian Sutil', 1319, 'Valtteri Bottas', 1245, 'Esteban Guti', 847, 'Scuderia Ferrari', 2958, 'Caterham F1 Team', 1322, 'Mercedes FO 108Z', 1301),
(58980, 'ja ja ja', 65, 'Equipo 4', 10, 8, 'Sebastian Vettel', 5113, 'Jean-Eric Vergne', 813, 'Luiz Razia', 1050, 'Max Chilton', 1429, 'Infiniti Red Bull Racing', 4175, 'Caterham F1 Team', 1322, 'Mercedes FO 108Z', 1301),
(58981, 'ja ja ja', 63, 'Equipo 2', 10, 8, 'Sebastian Vettel', 5113, 'Jean-Eric Vergne', 813, 'Daniel Ricciardo', 1156, 'Charles Pic', 1057, 'Infiniti Red Bull Racing', 4175, 'Caterham F1 Team', 1322, 'Renault RS27-2013', 1949),
(58982, 'Javier Vega Carbajal', 71, 'Dos Caballos', 10, 9, 'Fernando Alonso', 4154, 'Valtteri Bottas', 1245, 'Jean-Eric Vergne', 813, 'Daniel Ricciardo', 1156, 'Sahara Force India F1 Team', 1358, 'Scuderia Toro Rosso', 1145, 'Ferrari Type 056', 2363),
(58983, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 10, 9, 'Jean-Eric Vergne', 813, 'Adrian Sutil', 1319, 'Daniel Ricciardo', 1156, 'Fernando Alonso', 4154, 'Scuderia Ferrari', 2958, 'Scuderia Toro Rosso', 1145, 'Renault RS27-2013', 1949),
(58984, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 10, 9, 'Jenson Button', 2192, 'Kimi R', 3514, 'Daniel Ricciardo', 1156, 'Giedo van der Garde', 926, 'Lotus F1 Team', 2199, 'Williams F1 Team', 1416, 'Renault RS27-2013', 1949),
(58985, 'J M V', 69, 'Lalangosta Racing Team', 10, 9, 'Fernando Alonso', 4154, 'Kimi R', 3514, 'Adrian Sutil', 1319, 'Max Chilton', 1429, 'Scuderia Ferrari', 2958, 'Williams F1 Team', 1416, 'Renault RS27-2013', 1949),
(58986, 'Raul Ordax ..', 73, 'troncomovil', 10, 10, 'Fernando Alonso', 4154, 'Romain Grosjean', 2415, 'Adrian Sutil', 1319, 'Jean-Eric Vergne', 813, 'Mercedes AMG Petronas F1 Team', 3803, 'Sahara Force India F1 Team', 1358, 'Renault RS27-2013', 1949),
(58987, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 10, 9, 'Sebastian Vettel', 5113, 'Fernando Alonso', 4154, 'Daniel Ricciardo', 1156, 'Jean-Eric Vergne', 813, 'Williams F1 Team', 1416, 'Mercedes AMG Petronas F1 Team', 3803, 'Mercedes FO 108Z', 1301),
(58988, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 10, 10, 'Romain Grosjean', 2415, 'Adrian Sutil', 1319, 'Kimi R', 3514, 'Paul di Resta', 2086, 'Sahara Force India F1 Team', 1358, 'Mercedes AMG Petronas F1 Team', 3803, 'Mercedes FO 108Z', 1301),
(58989, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 10, 9, 'Fernando Alonso', 4154, 'Paul di Resta', 2086, 'Max Chilton', 1429, 'Giedo van der Garde', 926, 'Infiniti Red Bull Racing', 4175, 'Mercedes AMG Petronas F1 Team', 3803, 'Mercedes FO 108Z', 1301),
(58990, 'ja ja ja', 66, 'equipo 5', 10, 8, 'Romain Grosjean', 2415, 'Sergio P', 3267, 'Max Chilton', 1429, 'Luiz Razia', 1050, 'Mercedes AMG Petronas F1 Team', 3803, 'Vodafone McLaren Mercedes', 2140, 'Cosworth CA2013', 1867),
(58991, 'Esther  R M', 77, 'Silvia McQueen', 10, 9, 'Fernando Alonso', 4154, 'Sebastian Vettel', 5113, 'Mark Webber', 5891, 'Adrian Sutil', 1319, 'Lotus F1 Team', 2199, 'Scuderia Ferrari', 2958, 'Renault RS27-2013', 1949),
(58992, 'ja ja ja', 67, 'equipo 6', 10, 8, 'Valtteri Bottas', 1245, 'Jean-Eric Vergne', 813, 'Daniel Ricciardo', 1156, 'Charles Pic', 1057, 'Infiniti Red Bull Racing', 4175, 'Scuderia Ferrari', 2958, 'Cosworth CA2013', 1867),
(58993, 'Optimus JAM --', 76, 'Equipo JJ', 10, 10, 'Kimi R', 3514, 'Sebastian Vettel', 5113, 'Giedo van der Garde', 926, 'Paul di Resta', 2086, 'Infiniti Red Bull Racing', 4175, 'Scuderia Ferrari', 2958, 'Renault RS27-2013', 1949),
(58994, 'Marta de Francisco Marcos', 78, 'Norwich F1', 10, 9, 'Fernando Alonso', 4154, 'Adrian Sutil', 1319, 'Pastor Maldonado', 1678, 'Jean-Eric Vergne', 813, 'Scuderia Ferrari', 2958, 'Infiniti Red Bull Racing', 4175, 'Renault RS27-2013', 1949),
(58995, 'ja ja ja', 62, 'Equipo 1', 11, 8, 'Sergio P', 3757, 'Nico Rosberg', 6158, 'Max Chilton', 1215, 'Luiz Razia', 1025, 'Vodafone McLaren Mercedes', 2461, 'Caterham F1 Team', 1322, 'Renault RS27-2013', 2002),
(58996, 'ja ja ja', 63, 'Equipo 2', 11, 8, 'Sebastian Vettel', 5880, 'Jean-Eric Vergne', 700, 'Daniel Ricciardo', 1329, 'Charles Pic', 898, 'Infiniti Red Bull Racing', 4626, 'Caterham F1 Team', 1322, 'Renault RS27-2013', 2002),
(58997, 'Esther  R M', 77, 'Silvia McQueen', 11, 9, 'Fernando Alonso', 4777, 'Sebastian Vettel', 5880, 'Mark Webber', 6280, 'Adrian Sutil', 1121, 'Lotus F1 Team', 2199, 'Scuderia Ferrari', 3402, 'Renault RS27-2013', 2002),
(58998, 'Raul Ordax ..', 73, 'troncomovil', 11, 10, 'Fernando Alonso', 4777, 'Kimi R', 2987, 'Adrian Sutil', 1121, 'Esteban Guti', 974, 'Scuderia Ferrari', 3402, 'Sahara Force India F1 Team', 1154, 'Renault RS27-2013', 2002),
(58999, 'Optimus JAM --', 76, 'Equipo JJ', 11, 10, 'Kimi R', 2987, 'Sebastian Vettel', 5880, 'Giedo van der Garde', 1065, 'Paul di Resta', 1773, 'Infiniti Red Bull Racing', 4626, 'Scuderia Ferrari', 3402, 'Renault RS27-2013', 2002),
(59000, 'J M V', 69, 'Lalangosta Racing Team', 11, 9, 'Fernando Alonso', 4777, 'Kimi R', 2987, 'Adrian Sutil', 1121, 'Max Chilton', 1215, 'Scuderia Ferrari', 3402, 'Williams F1 Team', 1416, 'Renault RS27-2013', 2002),
(59001, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 11, 9, 'Jean-Eric Vergne', 700, 'Adrian Sutil', 1121, 'Daniel Ricciardo', 1329, 'Fernando Alonso', 4777, 'Scuderia Ferrari', 3402, 'Scuderia Toro Rosso', 1145, 'Renault RS27-2013', 2002),
(59002, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 11, 9, 'Jenson Button', 2521, 'Kimi R', 2987, 'Daniel Ricciardo', 1329, 'Giedo van der Garde', 1065, 'Lotus F1 Team', 2199, 'Williams F1 Team', 1416, 'Renault RS27-2013', 2002),
(59003, 'Marta de Francisco Marcos', 78, 'Norwich F1', 11, 9, 'Fernando Alonso', 4777, 'Adrian Sutil', 1121, 'Pastor Maldonado', 1930, 'Jean-Eric Vergne', 700, 'Scuderia Ferrari', 3402, 'Infiniti Red Bull Racing', 4626, 'Renault RS27-2013', 2002),
(59004, 'Javier Vega Carbajal', 71, 'Dos Caballos', 11, 9, 'Fernando Alonso', 4777, 'Valtteri Bottas', 1058, 'Jean-Eric Vergne', 700, 'Daniel Ricciardo', 1329, 'Sahara Force India F1 Team', 1154, 'Scuderia Toro Rosso', 1145, 'Ferrari Type 056', 2392),
(59005, 'David Ordax de las Heras', 74, 'L', 11, 10, 'Fernando Alonso', 4777, 'Adrian Sutil', 1121, 'Kimi R', 2987, 'Daniel Ricciardo', 1329, 'Scuderia Toro Rosso', 1145, 'Caterham F1 Team', 1322, 'Mercedes FO 108Z', 1403),
(59006, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 11, 9, 'Sebastian Vettel', 5880, 'Fernando Alonso', 4777, 'Daniel Ricciardo', 1329, 'Jean-Eric Vergne', 700, 'Williams F1 Team', 1416, 'Mercedes AMG Petronas F1 Team', 3988, 'Mercedes FO 108Z', 1403),
(59007, 'ja ja ja', 65, 'Equipo 4', 11, 8, 'Sebastian Vettel', 5880, 'Jean-Eric Vergne', 700, 'Luiz Razia', 1025, 'Max Chilton', 1215, 'Infiniti Red Bull Racing', 4626, 'Caterham F1 Team', 1322, 'Mercedes FO 108Z', 1403),
(59008, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 11, 9, 'Fernando Alonso', 4777, 'Paul di Resta', 1773, 'Max Chilton', 1215, 'Giedo van der Garde', 1065, 'Infiniti Red Bull Racing', 4626, 'Mercedes AMG Petronas F1 Team', 3988, 'Mercedes FO 108Z', 1403),
(59009, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 11, 10, 'Sebastian Vettel', 5880, 'Adrian Sutil', 1121, 'Kimi R', 2987, 'Jean-Eric Vergne', 700, 'Sahara Force India F1 Team', 1154, 'Lotus F1 Team', 2199, 'Mercedes FO 108Z', 1403),
(59010, 'ja ja ja', 67, 'equipo 6', 11, 8, 'Valtteri Bottas', 1058, 'Jean-Eric Vergne', 700, 'Daniel Ricciardo', 1329, 'Charles Pic', 898, 'Infiniti Red Bull Racing', 4626, 'Scuderia Ferrari', 3402, 'Cosworth CA2013', 1705),
(59011, 'ja ja ja', 66, 'equipo 5', 11, 8, 'Romain Grosjean', 2777, 'Sergio P', 3757, 'Max Chilton', 1215, 'Luiz Razia', 1025, 'Mercedes AMG Petronas F1 Team', 3988, 'Vodafone McLaren Mercedes', 2461, 'Cosworth CA2013', 1705),
(59012, 'ja ja ja', 64, 'Equipo 3', 11, 8, 'Sebastian Vettel', 5880, 'Luiz Razia', 1025, 'Charles Pic', 898, 'Adrian Sutil', 1121, 'Infiniti Red Bull Racing', 4626, 'Marussia F1 Team', 1311, 'Cosworth CA2013', 1705),
(59014, 'ja ja ja', 63, 'Equipo 2', 12, 8, 'Sebastian Vettel', 6762, 'Jean-Eric Vergne', 700, 'Daniel Ricciardo', 1528, 'Charles Pic', 1033, 'Infiniti Red Bull Racing', 5132, 'Caterham F1 Team', 1409, 'Renault RS27-2013', 2012),
(59018, 'J M V', 69, 'Lalangosta Racing Team', 12, 9, 'Fernando Alonso', 5494, 'Kimi R', 2539, 'Adrian Sutil', 953, 'Max Chilton', 1206, 'Scuderia Ferrari', 3912, 'Williams F1 Team', 1204, 'Renault RS27-2013', 2012),
(59020, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 12, 9, 'Jenson Button', 2899, 'Kimi R', 2539, 'Daniel Ricciardo', 1528, 'Giedo van der Garde', 1046, 'Lotus F1 Team', 2187, 'Williams F1 Team', 1204, 'Renault RS27-2013', 2012),
(59021, 'Marta de Francisco Marcos', 78, 'Norwich F1', 12, 9, 'Fernando Alonso', 5494, 'Adrian Sutil', 953, 'Pastor Maldonado', 1640, 'Jean-Eric Vergne', 700, 'Scuderia Ferrari', 3912, 'Infiniti Red Bull Racing', 5132, 'Renault RS27-2013', 2012),
(59022, 'Javier Vega Carbajal', 71, 'Dos Caballos', 12, 9, 'Fernando Alonso', 5494, 'Valtteri Bottas', 899, 'Jean-Eric Vergne', 700, 'Daniel Ricciardo', 1528, 'Sahara Force India F1 Team', 1000, 'Scuderia Toro Rosso', 1145, 'Ferrari Type 056', 2302),
(59023, 'David Ordax de las Heras', 74, 'L', 12, 10, 'Fernando Alonso', 5494, 'Adrian Sutil', 953, 'Kimi R', 2539, 'Daniel Ricciardo', 1528, 'Scuderia Toro Rosso', 1145, 'Caterham F1 Team', 1409, 'Mercedes FO 108Z', 1613),
(59025, 'ja ja ja', 65, 'Equipo 4', 12, 8, 'Sebastian Vettel', 6762, 'Jean-Eric Vergne', 700, 'Luiz Razia', 992, 'Max Chilton', 1206, 'Infiniti Red Bull Racing', 5132, 'Caterham F1 Team', 1409, 'Mercedes FO 108Z', 1613),
(59027, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 12, 10, 'Sebastian Vettel', 6762, 'Adrian Sutil', 953, 'Kimi R', 2539, 'Jean-Eric Vergne', 700, 'Sahara Force India F1 Team', 1000, 'Lotus F1 Team', 2187, 'Mercedes FO 108Z', 1613),
(59030, 'ja ja ja', 64, 'Equipo 3', 12, 8, 'Sebastian Vettel', 6762, 'Luiz Razia', 992, 'Charles Pic', 1033, 'Adrian Sutil', 953, 'Infiniti Red Bull Racing', 5132, 'Marussia F1 Team', 1285, 'Cosworth CA2013', 1672),
(59035, 'Optimus JAM --', 76, 'Equipo JJ', 12, 10, 'Kimi R', 2539, 'Sebastian Vettel', 6762, 'Giedo van der Garde', 1046, 'Paul di Resta', 1507, 'Infiniti Red Bull Racing', 5132, 'Scuderia Ferrari', 3912, 'Renault RS27-2013', 2012),
(59042, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 12, 9, 'Sebastian Vettel', 6762, 'Fernando Alonso', 5494, 'Daniel Ricciardo', 1528, 'Jean-Eric Vergne', 700, 'Williams F1 Team', 1204, 'Mercedes AMG Petronas F1 Team', 3390, 'Mercedes FO 108Z', 1613),
(59047, 'ja ja ja', 66, 'equipo 5', 12, 8, 'Romain Grosjean', 3163, 'Sergio P', 4321, 'Max Chilton', 1206, 'Luiz Razia', 992, 'Mercedes AMG Petronas F1 Team', 3390, 'Vodafone McLaren Mercedes', 2830, 'Cosworth CA2013', 1672),
(59049, 'ja ja ja', 62, 'Equipo 1', 12, 8, 'Sergio P', 4321, 'Nico Rosberg', 5234, 'Max Chilton', 1206, 'Luiz Razia', 992, 'Vodafone McLaren Mercedes', 2830, 'Caterham F1 Team', 1409, 'Renault RS27-2013', 2012),
(59051, 'Esther  R M', 77, 'Silvia McQueen', 12, 9, 'Fernando Alonso', 5494, 'Sebastian Vettel', 6762, 'Mark Webber', 6711, 'Adrian Sutil', 953, 'Lotus F1 Team', 2187, 'Scuderia Ferrari', 3912, 'Renault RS27-2013', 2012),
(59052, 'Raul Ordax ..', 73, 'troncomovil', 12, 10, 'Fernando Alonso', 5494, 'Kimi R', 2539, 'Adrian Sutil', 953, 'Esteban Guti', 1120, 'Scuderia Ferrari', 3912, 'Sahara Force India F1 Team', 1000, 'Renault RS27-2013', 2012),
(59055, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 12, 9, 'Jean-Eric Vergne', 700, 'Adrian Sutil', 953, 'Daniel Ricciardo', 1528, 'Fernando Alonso', 5494, 'Scuderia Ferrari', 3912, 'Scuderia Toro Rosso', 1145, 'Renault RS27-2013', 2012),
(59062, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 12, 9, 'Fernando Alonso', 5494, 'Paul di Resta', 1507, 'Max Chilton', 1206, 'Giedo van der Garde', 1046, 'Infiniti Red Bull Racing', 5132, 'Mercedes AMG Petronas F1 Team', 3390, 'Mercedes FO 108Z', 1613),
(59064, 'ja ja ja', 67, 'equipo 6', 12, 8, 'Valtteri Bottas', 899, 'Jean-Eric Vergne', 700, 'Daniel Ricciardo', 1528, 'Charles Pic', 1033, 'Infiniti Red Bull Racing', 5132, 'Scuderia Ferrari', 3912, 'Cosworth CA2013', 1672),
(59067, 'ja ja ja', 62, 'Equipo 1', 13, 8, 'Sergio P', 4969, 'Nico Rosberg', 6019, 'Max Chilton', 1387, 'Luiz Razia', 1065, 'Vodafone McLaren Mercedes', 3254, 'Caterham F1 Team', 1611, 'Renault RS27-2013', 2160),
(59068, 'ja ja ja', 63, 'Equipo 2', 13, 8, 'Sebastian Vettel', 7776, 'Jean-Eric Vergne', 805, 'Daniel Ricciardo', 1299, 'Charles Pic', 1188, 'Infiniti Red Bull Racing', 5132, 'Caterham F1 Team', 1611, 'Renault RS27-2013', 2160),
(59069, 'Esther  R M', 77, 'Silvia McQueen', 13, 9, 'Fernando Alonso', 6067, 'Sebastian Vettel', 7776, 'Mark Webber', 5704, 'Adrian Sutil', 1044, 'Lotus F1 Team', 2187, 'Scuderia Ferrari', 4409, 'Renault RS27-2013', 2160),
(59070, 'Raul Ordax ..', 73, 'troncomovil', 13, 10, 'Fernando Alonso', 6067, 'Kimi R', 2920, 'Adrian Sutil', 1044, 'Esteban Guti', 1288, 'Scuderia Ferrari', 4409, 'Sahara Force India F1 Team', 1000, 'Renault RS27-2013', 2160),
(59071, 'Optimus JAM --', 76, 'Equipo JJ', 13, 10, 'Kimi R', 2920, 'Sebastian Vettel', 7776, 'Giedo van der Garde', 1189, 'Paul di Resta', 1281, 'Infiniti Red Bull Racing', 5132, 'Scuderia Ferrari', 4409, 'Renault RS27-2013', 2160),
(59072, 'J M V', 69, 'Lalangosta Racing Team', 13, 9, 'Fernando Alonso', 6067, 'Kimi R', 2920, 'Adrian Sutil', 1044, 'Max Chilton', 1387, 'Scuderia Ferrari', 4409, 'Williams F1 Team', 1385, 'Renault RS27-2013', 2160),
(59073, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 13, 9, 'Jean-Eric Vergne', 805, 'Adrian Sutil', 1044, 'Daniel Ricciardo', 1299, 'Fernando Alonso', 6067, 'Scuderia Ferrari', 4409, 'Scuderia Toro Rosso', 1145, 'Renault RS27-2013', 2160),
(59074, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 13, 9, 'Jenson Button', 3334, 'Kimi R', 2920, 'Daniel Ricciardo', 1299, 'Giedo van der Garde', 1189, 'Lotus F1 Team', 2187, 'Williams F1 Team', 1385, 'Renault RS27-2013', 2160),
(59075, 'Marta de Francisco Marcos', 78, 'Norwich F1', 13, 9, 'Fernando Alonso', 6067, 'Adrian Sutil', 1044, 'Pastor Maldonado', 1886, 'Jean-Eric Vergne', 805, 'Scuderia Ferrari', 4409, 'Infiniti Red Bull Racing', 5132, 'Renault RS27-2013', 2160),
(59076, 'Javier Vega Carbajal', 71, 'Dos Caballos', 13, 9, 'Fernando Alonso', 6067, 'Valtteri Bottas', 1034, 'Jean-Eric Vergne', 805, 'Daniel Ricciardo', 1299, 'Sahara Force India F1 Team', 1000, 'Scuderia Toro Rosso', 1145, 'Ferrari Type 056', 2359),
(59077, 'David Ordax de las Heras', 74, 'L', 13, 10, 'Fernando Alonso', 6067, 'Adrian Sutil', 1044, 'Kimi R', 2920, 'Daniel Ricciardo', 1299, 'Scuderia Toro Rosso', 1145, 'Caterham F1 Team', 1611, 'Mercedes FO 108Z', 1855),
(59078, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 13, 9, 'Sebastian Vettel', 7776, 'Fernando Alonso', 6067, 'Daniel Ricciardo', 1299, 'Jean-Eric Vergne', 805, 'Williams F1 Team', 1385, 'Mercedes AMG Petronas F1 Team', 3390, 'Mercedes FO 108Z', 1855),
(59079, 'ja ja ja', 65, 'Equipo 4', 13, 8, 'Sebastian Vettel', 7776, 'Jean-Eric Vergne', 805, 'Luiz Razia', 1065, 'Max Chilton', 1387, 'Infiniti Red Bull Racing', 5132, 'Caterham F1 Team', 1611, 'Mercedes FO 108Z', 1855),
(59080, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 13, 9, 'Fernando Alonso', 6067, 'Paul di Resta', 1281, 'Max Chilton', 1387, 'Giedo van der Garde', 1189, 'Infiniti Red Bull Racing', 5132, 'Mercedes AMG Petronas F1 Team', 3390, 'Mercedes FO 108Z', 1855),
(59081, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 13, 10, 'Sebastian Vettel', 7776, 'Adrian Sutil', 1044, 'Kimi R', 2920, 'Jean-Eric Vergne', 805, 'Sahara Force India F1 Team', 1000, 'Lotus F1 Team', 2187, 'Mercedes FO 108Z', 1855),
(59082, 'ja ja ja', 67, 'equipo 6', 13, 8, 'Valtteri Bottas', 1034, 'Jean-Eric Vergne', 805, 'Daniel Ricciardo', 1299, 'Charles Pic', 1188, 'Infiniti Red Bull Racing', 5132, 'Scuderia Ferrari', 4409, 'Cosworth CA2013', 1859),
(59083, 'ja ja ja', 66, 'equipo 5', 13, 8, 'Romain Grosjean', 2689, 'Sergio P', 4969, 'Max Chilton', 1387, 'Luiz Razia', 1065, 'Mercedes AMG Petronas F1 Team', 3390, 'Vodafone McLaren Mercedes', 3254, 'Cosworth CA2013', 1859),
(59084, 'ja ja ja', 64, 'Equipo 3', 13, 8, 'Sebastian Vettel', 7776, 'Luiz Razia', 1065, 'Charles Pic', 1188, 'Adrian Sutil', 1044, 'Infiniti Red Bull Racing', 5132, 'Marussia F1 Team', 1429, 'Cosworth CA2013', 1859);
INSERT INTO `campeonatos_clasificacion_broker` (`cam_cla_bro_cod`, `cam_cla_bro_usu_nom`, `cam_cla_bro_equ_cod`, `cam_cla_bro_equ_nom`, `cam_cla_bro_car_cod`, `cam_cla_bro_cam_cod`, `cam_cla_bro_pil_1_nom`, `cam_cla_bro_pil_1_val`, `cam_cla_bro_pil_2_nom`, `cam_cla_bro_pil_2_val`, `cam_cla_bro_pil_3_nom`, `cam_cla_bro_pil_3_val`, `cam_cla_bro_pil_4_nom`, `cam_cla_bro_pil_4_val`, `cam_cla_bro_esc_1_nom`, `cam_cla_bro_esc_1_val`, `cam_cla_bro_esc_2_nom`, `cam_cla_bro_esc_2_val`, `cam_cla_bro_mot_1_nom`, `cam_cla_bro_mot_1_val`) VALUES
(59085, 'ja ja ja', 62, 'Equipo 1', 14, 8, 'Sergio P', 5714, 'Nico Rosberg', 6922, 'Max Chilton', 1571, 'Luiz Razia', 1225, 'Vodafone McLaren Mercedes', 3416, 'Caterham F1 Team', 1853, 'Renault RS27-2013', 2350),
(59086, 'ja ja ja', 63, 'Equipo 2', 14, 8, 'Sebastian Vettel', 8942, 'Jean-Eric Vergne', 725, 'Daniel Ricciardo', 1104, 'Charles Pic', 1366, 'Infiniti Red Bull Racing', 5132, 'Caterham F1 Team', 1853, 'Renault RS27-2013', 2350),
(59087, 'Esther  R M', 77, 'Silvia McQueen', 14, 9, 'Fernando Alonso', 5157, 'Sebastian Vettel', 8942, 'Mark Webber', 4848, 'Adrian Sutil', 887, 'Lotus F1 Team', 2515, 'Scuderia Ferrari', 3812, 'Renault RS27-2013', 2350),
(59088, 'Raul Ordax ..', 73, 'troncomovil', 14, 10, 'Fernando Alonso', 5157, 'Kimi R', 3358, 'Adrian Sutil', 887, 'Esteban Guti', 1481, 'Scuderia Ferrari', 3812, 'Sahara Force India F1 Team', 1000, 'Renault RS27-2013', 2350),
(59089, 'Optimus JAM --', 76, 'Equipo JJ', 14, 10, 'Kimi R', 3358, 'Sebastian Vettel', 8942, 'Giedo van der Garde', 1367, 'Paul di Resta', 1089, 'Infiniti Red Bull Racing', 5132, 'Scuderia Ferrari', 3812, 'Renault RS27-2013', 2350),
(59090, 'J M V', 69, 'Lalangosta Racing Team', 14, 9, 'Fernando Alonso', 5157, 'Kimi R', 3358, 'Adrian Sutil', 887, 'Max Chilton', 1571, 'Scuderia Ferrari', 3812, 'Williams F1 Team', 1458, 'Renault RS27-2013', 2350),
(59091, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 14, 9, 'Jean-Eric Vergne', 725, 'Adrian Sutil', 887, 'Daniel Ricciardo', 1104, 'Fernando Alonso', 5157, 'Scuderia Ferrari', 3812, 'Scuderia Toro Rosso', 1002, 'Renault RS27-2013', 2350),
(59092, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 14, 9, 'Jenson Button', 3166, 'Kimi R', 3358, 'Daniel Ricciardo', 1104, 'Giedo van der Garde', 1367, 'Lotus F1 Team', 2515, 'Williams F1 Team', 1458, 'Renault RS27-2013', 2350),
(59093, 'Marta de Francisco Marcos', 78, 'Norwich F1', 14, 9, 'Fernando Alonso', 5157, 'Adrian Sutil', 887, 'Pastor Maldonado', 1801, 'Jean-Eric Vergne', 725, 'Scuderia Ferrari', 3812, 'Infiniti Red Bull Racing', 5132, 'Renault RS27-2013', 2350),
(59094, 'Javier Vega Carbajal', 71, 'Dos Caballos', 14, 9, 'Fernando Alonso', 5157, 'Valtteri Bottas', 1189, 'Jean-Eric Vergne', 725, 'Daniel Ricciardo', 1104, 'Sahara Force India F1 Team', 1000, 'Scuderia Toro Rosso', 1002, 'Ferrari Type 056', 2161),
(59095, 'David Ordax de las Heras', 74, 'L', 14, 10, 'Fernando Alonso', 5157, 'Adrian Sutil', 887, 'Kimi R', 3358, 'Daniel Ricciardo', 1104, 'Scuderia Toro Rosso', 1002, 'Caterham F1 Team', 1853, 'Mercedes FO 108Z', 2040),
(59096, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 14, 9, 'Sebastian Vettel', 8942, 'Fernando Alonso', 5157, 'Daniel Ricciardo', 1104, 'Jean-Eric Vergne', 725, 'Williams F1 Team', 1458, 'Mercedes AMG Petronas F1 Team', 3642, 'Mercedes FO 108Z', 2040),
(59097, 'ja ja ja', 65, 'Equipo 4', 14, 8, 'Sebastian Vettel', 8942, 'Jean-Eric Vergne', 725, 'Luiz Razia', 1225, 'Max Chilton', 1571, 'Infiniti Red Bull Racing', 5132, 'Caterham F1 Team', 1853, 'Mercedes FO 108Z', 2040),
(59098, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 14, 9, 'Fernando Alonso', 5157, 'Paul di Resta', 1089, 'Max Chilton', 1571, 'Giedo van der Garde', 1367, 'Infiniti Red Bull Racing', 5132, 'Mercedes AMG Petronas F1 Team', 3642, 'Mercedes FO 108Z', 2040),
(59099, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 14, 10, 'Sebastian Vettel', 8942, 'Adrian Sutil', 887, 'Kimi R', 3358, 'Jean-Eric Vergne', 725, 'Sahara Force India F1 Team', 1000, 'Lotus F1 Team', 2515, 'Mercedes FO 108Z', 2040),
(59100, 'ja ja ja', 67, 'equipo 6', 14, 8, 'Valtteri Bottas', 1189, 'Jean-Eric Vergne', 725, 'Daniel Ricciardo', 1104, 'Charles Pic', 1366, 'Infiniti Red Bull Racing', 5132, 'Scuderia Ferrari', 3812, 'Cosworth CA2013', 2122),
(59101, 'ja ja ja', 66, 'equipo 5', 14, 8, 'Romain Grosjean', 3092, 'Sergio P', 5714, 'Max Chilton', 1571, 'Luiz Razia', 1225, 'Mercedes AMG Petronas F1 Team', 3642, 'Vodafone McLaren Mercedes', 3416, 'Cosworth CA2013', 2122),
(59102, 'ja ja ja', 64, 'Equipo 3', 14, 8, 'Sebastian Vettel', 8942, 'Luiz Razia', 1225, 'Charles Pic', 1366, 'Adrian Sutil', 887, 'Infiniti Red Bull Racing', 5132, 'Marussia F1 Team', 1631, 'Cosworth CA2013', 2122),
(59103, 'ja ja ja', 62, 'Equipo 1', 15, 8, 'Sergio P', 4857, 'Nico Rosberg', 5884, 'Max Chilton', 1335, 'Luiz Razia', 1041, 'Vodafone McLaren Mercedes', 2904, 'Caterham F1 Team', 1853, 'Renault RS27-2013', 2356),
(59104, 'ja ja ja', 63, 'Equipo 2', 15, 8, 'Sebastian Vettel', 7783, 'Jean-Eric Vergne', 834, 'Daniel Ricciardo', 938, 'Charles Pic', 1571, 'Infiniti Red Bull Racing', 5184, 'Caterham F1 Team', 1853, 'Renault RS27-2013', 2356),
(59105, 'Esther  R M', 77, 'Silvia McQueen', 15, 9, 'Fernando Alonso', 4383, 'Sebastian Vettel', 7783, 'Mark Webber', 5575, 'Adrian Sutil', 887, 'Lotus F1 Team', 2892, 'Scuderia Ferrari', 3240, 'Renault RS27-2013', 2356),
(59106, 'Raul Ordax ..', 73, 'troncomovil', 15, 10, 'Fernando Alonso', 4383, 'Kimi R', 3862, 'Adrian Sutil', 887, 'Esteban Guti', 1703, 'Scuderia Ferrari', 3240, 'Sahara Force India F1 Team', 1075, 'Renault RS27-2013', 2356),
(59107, 'Optimus JAM --', 76, 'Equipo JJ', 15, 10, 'Kimi R', 3862, 'Sebastian Vettel', 7783, 'Giedo van der Garde', 1162, 'Paul di Resta', 1252, 'Infiniti Red Bull Racing', 5184, 'Scuderia Ferrari', 3240, 'Renault RS27-2013', 2356),
(59108, 'J M V', 69, 'Lalangosta Racing Team', 15, 9, 'Fernando Alonso', 4383, 'Kimi R', 3862, 'Adrian Sutil', 887, 'Max Chilton', 1335, 'Scuderia Ferrari', 3240, 'Williams F1 Team', 1239, 'Renault RS27-2013', 2356),
(59109, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 15, 9, 'Jean-Eric Vergne', 834, 'Adrian Sutil', 887, 'Daniel Ricciardo', 938, 'Fernando Alonso', 4383, 'Scuderia Ferrari', 3240, 'Scuderia Toro Rosso', 1002, 'Renault RS27-2013', 2356),
(59110, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 15, 9, 'Jenson Button', 2691, 'Kimi R', 3862, 'Daniel Ricciardo', 938, 'Giedo van der Garde', 1162, 'Lotus F1 Team', 2892, 'Williams F1 Team', 1239, 'Renault RS27-2013', 2356),
(59111, 'Marta de Francisco Marcos', 78, 'Norwich F1', 15, 9, 'Fernando Alonso', 4383, 'Adrian Sutil', 887, 'Pastor Maldonado', 1531, 'Jean-Eric Vergne', 834, 'Scuderia Ferrari', 3240, 'Infiniti Red Bull Racing', 5184, 'Renault RS27-2013', 2356),
(59112, 'Javier Vega Carbajal', 71, 'Dos Caballos', 15, 9, 'Fernando Alonso', 4383, 'Valtteri Bottas', 1011, 'Jean-Eric Vergne', 834, 'Daniel Ricciardo', 938, 'Sahara Force India F1 Team', 1075, 'Scuderia Toro Rosso', 1002, 'Ferrari Type 056', 2039),
(59113, 'David Ordax de las Heras', 74, 'L', 15, 10, 'Fernando Alonso', 4383, 'Adrian Sutil', 887, 'Kimi R', 3862, 'Daniel Ricciardo', 938, 'Scuderia Toro Rosso', 1002, 'Caterham F1 Team', 1853, 'Mercedes FO 108Z', 2040),
(59114, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 15, 9, 'Sebastian Vettel', 7783, 'Fernando Alonso', 4383, 'Daniel Ricciardo', 938, 'Jean-Eric Vergne', 834, 'Williams F1 Team', 1239, 'Mercedes AMG Petronas F1 Team', 3096, 'Mercedes FO 108Z', 2040),
(59115, 'ja ja ja', 65, 'Equipo 4', 15, 8, 'Sebastian Vettel', 7783, 'Jean-Eric Vergne', 834, 'Luiz Razia', 1041, 'Max Chilton', 1335, 'Infiniti Red Bull Racing', 5184, 'Caterham F1 Team', 1853, 'Mercedes FO 108Z', 2040),
(59116, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 15, 9, 'Fernando Alonso', 4383, 'Paul di Resta', 1252, 'Max Chilton', 1335, 'Giedo van der Garde', 1162, 'Infiniti Red Bull Racing', 5184, 'Mercedes AMG Petronas F1 Team', 3096, 'Mercedes FO 108Z', 2040),
(59117, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 15, 10, 'Sebastian Vettel', 7783, 'Adrian Sutil', 887, 'Kimi R', 3862, 'Jean-Eric Vergne', 834, 'Sahara Force India F1 Team', 1075, 'Lotus F1 Team', 2892, 'Mercedes FO 108Z', 2040),
(59118, 'ja ja ja', 67, 'equipo 6', 15, 8, 'Valtteri Bottas', 1011, 'Jean-Eric Vergne', 834, 'Daniel Ricciardo', 938, 'Charles Pic', 1571, 'Infiniti Red Bull Racing', 5184, 'Scuderia Ferrari', 3240, 'Cosworth CA2013', 1804),
(59119, 'ja ja ja', 66, 'equipo 5', 15, 8, 'Romain Grosjean', 3556, 'Sergio P', 4857, 'Max Chilton', 1335, 'Luiz Razia', 1041, 'Mercedes AMG Petronas F1 Team', 3096, 'Vodafone McLaren Mercedes', 2904, 'Cosworth CA2013', 1804),
(59120, 'ja ja ja', 64, 'Equipo 3', 15, 8, 'Sebastian Vettel', 7783, 'Luiz Razia', 1041, 'Charles Pic', 1571, 'Adrian Sutil', 887, 'Infiniti Red Bull Racing', 5184, 'Marussia F1 Team', 1386, 'Cosworth CA2013', 1804),
(59121, 'ja ja ja', 62, 'Equipo 1', 16, 8, 'Sergio P', 5586, 'Nico Rosberg', 6767, 'Max Chilton', 1535, 'Luiz Razia', 1101, 'Vodafone McLaren Mercedes', 2904, 'Caterham F1 Team', 1690, 'Renault RS27-2013', 2327),
(59122, 'ja ja ja', 63, 'Equipo 2', 16, 8, 'Sebastian Vettel', 7229, 'Jean-Eric Vergne', 959, 'Daniel Ricciardo', 1079, 'Charles Pic', 1530, 'Infiniti Red Bull Racing', 4611, 'Caterham F1 Team', 1690, 'Renault RS27-2013', 2327),
(59123, 'Esther  R M', 77, 'Silvia McQueen', 16, 9, 'Fernando Alonso', 3726, 'Sebastian Vettel', 7229, 'Mark Webber', 4739, 'Adrian Sutil', 1020, 'Lotus F1 Team', 3326, 'Scuderia Ferrari', 3240, 'Renault RS27-2013', 2327),
(59124, 'Raul Ordax ..', 73, 'troncomovil', 16, 10, 'Fernando Alonso', 3726, 'Kimi R', 4441, 'Adrian Sutil', 1020, 'Esteban Guti', 1645, 'Scuderia Ferrari', 3240, 'Sahara Force India F1 Team', 1236, 'Renault RS27-2013', 2327),
(59125, 'Optimus JAM --', 76, 'Equipo JJ', 16, 10, 'Kimi R', 4441, 'Sebastian Vettel', 7229, 'Giedo van der Garde', 988, 'Daniel Ricciardo', 1079, 'Infiniti Red Bull Racing', 4611, 'Scuderia Ferrari', 3240, 'Renault RS27-2013', 2327),
(59126, 'J M V', 69, 'Lalangosta Racing Team', 16, 9, 'Fernando Alonso', 3726, 'Kimi R', 4441, 'Adrian Sutil', 1020, 'Max Chilton', 1535, 'Scuderia Ferrari', 3240, 'Williams F1 Team', 1239, 'Renault RS27-2013', 2327),
(59127, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 16, 9, 'Jean-Eric Vergne', 959, 'Adrian Sutil', 1020, 'Daniel Ricciardo', 1079, 'Fernando Alonso', 3726, 'Scuderia Ferrari', 3240, 'Scuderia Toro Rosso', 1152, 'Renault RS27-2013', 2327),
(59128, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 16, 9, 'Jenson Button', 2287, 'Kimi R', 4441, 'Daniel Ricciardo', 1079, 'Giedo van der Garde', 988, 'Lotus F1 Team', 3326, 'Williams F1 Team', 1239, 'Renault RS27-2013', 2327),
(59129, 'Marta de Francisco Marcos', 78, 'Norwich F1', 16, 9, 'Fernando Alonso', 3726, 'Adrian Sutil', 1020, 'Pastor Maldonado', 1761, 'Jean-Eric Vergne', 959, 'Scuderia Ferrari', 3240, 'Infiniti Red Bull Racing', 4611, 'Renault RS27-2013', 2327),
(59130, 'Javier Vega Carbajal', 71, 'Dos Caballos', 16, 9, 'Fernando Alonso', 3726, 'Valtteri Bottas', 859, 'Jean-Eric Vergne', 959, 'Daniel Ricciardo', 1079, 'Sahara Force India F1 Team', 1236, 'Scuderia Toro Rosso', 1152, 'Ferrari Type 056', 2268),
(59131, 'David Ordax de las Heras', 74, 'L', 16, 10, 'Fernando Alonso', 3726, 'Adrian Sutil', 1020, 'Kimi R', 4441, 'Daniel Ricciardo', 1079, 'Scuderia Toro Rosso', 1152, 'Caterham F1 Team', 1690, 'Mercedes FO 108Z', 1946),
(59132, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 16, 9, 'Romain Grosjean', 4089, 'Fernando Alonso', 3726, 'Daniel Ricciardo', 1079, 'Jean-Eric Vergne', 959, 'Infiniti Red Bull Racing', 4611, 'Lotus F1 Team', 3326, 'Mercedes FO 108Z', 1946),
(59133, 'ja ja ja', 65, 'Equipo 4', 16, 8, 'Sebastian Vettel', 7229, 'Jean-Eric Vergne', 959, 'Luiz Razia', 1101, 'Max Chilton', 1535, 'Infiniti Red Bull Racing', 4611, 'Caterham F1 Team', 1690, 'Mercedes FO 108Z', 1946),
(59134, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 16, 9, 'Fernando Alonso', 3726, 'Paul di Resta', 1440, 'Max Chilton', 1535, 'Giedo van der Garde', 988, 'Infiniti Red Bull Racing', 4611, 'Mercedes AMG Petronas F1 Team', 3560, 'Mercedes FO 108Z', 1946),
(59135, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 16, 10, 'Sebastian Vettel', 7229, 'Adrian Sutil', 1020, 'Kimi R', 4441, 'Jean-Eric Vergne', 959, 'Sahara Force India F1 Team', 1236, 'Lotus F1 Team', 3326, 'Mercedes FO 108Z', 1946),
(59136, 'ja ja ja', 67, 'equipo 6', 16, 8, 'Valtteri Bottas', 859, 'Jean-Eric Vergne', 959, 'Daniel Ricciardo', 1079, 'Charles Pic', 1530, 'Infiniti Red Bull Racing', 4611, 'Scuderia Ferrari', 3240, 'Cosworth CA2013', 1991),
(59137, 'ja ja ja', 66, 'equipo 5', 16, 8, 'Romain Grosjean', 4089, 'Sergio P', 5586, 'Max Chilton', 1535, 'Luiz Razia', 1101, 'Mercedes AMG Petronas F1 Team', 3560, 'Vodafone McLaren Mercedes', 2904, 'Cosworth CA2013', 1991),
(59138, 'ja ja ja', 64, 'Equipo 3', 16, 8, 'Sebastian Vettel', 7229, 'Luiz Razia', 1101, 'Charles Pic', 1530, 'Adrian Sutil', 1020, 'Infiniti Red Bull Racing', 4611, 'Marussia F1 Team', 1530, 'Cosworth CA2013', 1991),
(59139, 'ja ja ja', 62, 'Equipo 1', 17, 8, 'Sergio P', 6424, 'Nico Rosberg', 7782, 'Max Chilton', 1305, 'Luiz Razia', 1169, 'Vodafone McLaren Mercedes', 2904, 'Caterham F1 Team', 1604, 'Renault RS27-2013', 2254),
(59140, 'ja ja ja', 63, 'Equipo 2', 17, 8, 'Sebastian Vettel', 6535, 'Jean-Eric Vergne', 858, 'Daniel Ricciardo', 1224, 'Charles Pic', 1300, 'Infiniti Red Bull Racing', 4736, 'Caterham F1 Team', 1604, 'Renault RS27-2013', 2254),
(59141, 'Esther  R M', 77, 'Silvia McQueen', 17, 9, 'Fernando Alonso', 4285, 'Sebastian Vettel', 6535, 'Mark Webber', 5450, 'Adrian Sutil', 1173, 'Lotus F1 Team', 3326, 'Scuderia Ferrari', 3726, 'Renault RS27-2013', 2254),
(59142, 'Raul Ordax ..', 73, 'troncomovil', 17, 10, 'Fernando Alonso', 4285, 'Kimi R', 3775, 'Adrian Sutil', 1173, 'Esteban Guti', 1398, 'Scuderia Ferrari', 3726, 'Sahara Force India F1 Team', 1421, 'Renault RS27-2013', 2254),
(59143, 'Optimus JAM --', 76, 'Equipo JJ', 17, 10, 'Kimi R', 3775, 'Sebastian Vettel', 6535, 'Giedo van der Garde', 1036, 'Daniel Ricciardo', 1224, 'Infiniti Red Bull Racing', 4736, 'Scuderia Ferrari', 3726, 'Renault RS27-2013', 2254),
(59144, 'J M V', 69, 'Lalangosta Racing Team', 17, 9, 'Fernando Alonso', 4285, 'Kimi R', 3775, 'Adrian Sutil', 1173, 'Max Chilton', 1305, 'Scuderia Ferrari', 3726, 'Williams F1 Team', 1112, 'Renault RS27-2013', 2254),
(59145, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 17, 9, 'Jean-Eric Vergne', 858, 'Adrian Sutil', 1173, 'Daniel Ricciardo', 1224, 'Fernando Alonso', 4285, 'Scuderia Ferrari', 3726, 'Scuderia Toro Rosso', 1169, 'Renault RS27-2013', 2254),
(59146, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 17, 9, 'Jenson Button', 1944, 'Kimi R', 3775, 'Daniel Ricciardo', 1224, 'Giedo van der Garde', 1036, 'Lotus F1 Team', 3326, 'Williams F1 Team', 1112, 'Renault RS27-2013', 2254),
(59147, 'Marta de Francisco Marcos', 78, 'Norwich F1', 17, 9, 'Fernando Alonso', 4285, 'Adrian Sutil', 1173, 'Pastor Maldonado', 1656, 'Jean-Eric Vergne', 858, 'Scuderia Ferrari', 3726, 'Infiniti Red Bull Racing', 4736, 'Renault RS27-2013', 2254),
(59148, 'Javier Vega Carbajal', 71, 'Dos Caballos', 17, 9, 'Fernando Alonso', 4285, 'Valtteri Bottas', 735, 'Jean-Eric Vergne', 858, 'Daniel Ricciardo', 1224, 'Sahara Force India F1 Team', 1421, 'Scuderia Toro Rosso', 1169, 'Ferrari Type 056', 2531),
(59149, 'David Ordax de las Heras', 74, 'L', 17, 10, 'Fernando Alonso', 4285, 'Adrian Sutil', 1173, 'Kimi R', 3775, 'Daniel Ricciardo', 1224, 'Scuderia Toro Rosso', 1169, 'Caterham F1 Team', 1604, 'Mercedes FO 108Z', 1800),
(59150, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 17, 9, 'Romain Grosjean', 4702, 'Fernando Alonso', 4285, 'Daniel Ricciardo', 1224, 'Jean-Eric Vergne', 858, 'Infiniti Red Bull Racing', 4736, 'Lotus F1 Team', 3326, 'Mercedes FO 108Z', 1800),
(59151, 'ja ja ja', 65, 'Equipo 4', 17, 8, 'Sebastian Vettel', 6535, 'Jean-Eric Vergne', 858, 'Luiz Razia', 1169, 'Max Chilton', 1305, 'Infiniti Red Bull Racing', 4736, 'Caterham F1 Team', 1604, 'Mercedes FO 108Z', 1800),
(59152, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 17, 9, 'Fernando Alonso', 4285, 'Paul di Resta', 1656, 'Max Chilton', 1305, 'Giedo van der Garde', 1036, 'Infiniti Red Bull Racing', 4736, 'Mercedes AMG Petronas F1 Team', 4094, 'Mercedes FO 108Z', 1800),
(59153, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 17, 10, 'Sebastian Vettel', 6535, 'Adrian Sutil', 1173, 'Kimi R', 3775, 'Jean-Eric Vergne', 858, 'Sahara Force India F1 Team', 1421, 'Lotus F1 Team', 3326, 'Mercedes FO 108Z', 1800),
(59154, 'ja ja ja', 67, 'equipo 6', 17, 8, 'Valtteri Bottas', 735, 'Jean-Eric Vergne', 858, 'Daniel Ricciardo', 1224, 'Charles Pic', 1300, 'Infiniti Red Bull Racing', 4736, 'Scuderia Ferrari', 3726, 'Cosworth CA2013', 1903),
(59155, 'ja ja ja', 66, 'equipo 5', 17, 8, 'Romain Grosjean', 4702, 'Sergio P', 6424, 'Max Chilton', 1305, 'Luiz Razia', 1169, 'Mercedes AMG Petronas F1 Team', 4094, 'Vodafone McLaren Mercedes', 2904, 'Cosworth CA2013', 1903),
(59156, 'ja ja ja', 64, 'Equipo 3', 17, 8, 'Sebastian Vettel', 6535, 'Luiz Razia', 1169, 'Charles Pic', 1300, 'Adrian Sutil', 1173, 'Infiniti Red Bull Racing', 4736, 'Marussia F1 Team', 1462, 'Cosworth CA2013', 1903),
(59157, 'ja ja ja', 62, 'Equipo 1', 18, 8, 'Sergio P', 7388, 'Nico Rosberg', 6615, 'Max Chilton', 1109, 'Luiz Razia', 1344, 'Vodafone McLaren Mercedes', 3340, 'Caterham F1 Team', 1702, 'Renault RS27-2013', 2369),
(59158, 'ja ja ja', 63, 'Equipo 2', 18, 8, 'Sebastian Vettel', 7414, 'Jean-Eric Vergne', 729, 'Daniel Ricciardo', 1229, 'Charles Pic', 1306, 'Infiniti Red Bull Racing', 5410, 'Caterham F1 Team', 1702, 'Renault RS27-2013', 2369),
(59159, 'Esther  R M', 77, 'Silvia McQueen', 18, 9, 'Fernando Alonso', 4928, 'Sebastian Vettel', 7414, 'Mark Webber', 6268, 'Adrian Sutil', 997, 'Lotus F1 Team', 3326, 'Scuderia Ferrari', 3726, 'Renault RS27-2013', 2369),
(59160, 'Raul Ordax ..', 73, 'troncomovil', 18, 10, 'Fernando Alonso', 4928, 'Kimi R', 3209, 'Adrian Sutil', 997, 'Esteban Guti', 1188, 'Scuderia Ferrari', 3726, 'Sahara Force India F1 Team', 1208, 'Renault RS27-2013', 2369),
(59161, 'Optimus JAM --', 76, 'Equipo JJ', 18, 10, 'Kimi R', 3209, 'Sebastian Vettel', 7414, 'Giedo van der Garde', 1157, 'Daniel Ricciardo', 1229, 'Infiniti Red Bull Racing', 5410, 'Scuderia Ferrari', 3726, 'Renault RS27-2013', 2369),
(59162, 'J M V', 69, 'Lalangosta Racing Team', 18, 9, 'Fernando Alonso', 4928, 'Kimi R', 3209, 'Adrian Sutil', 997, 'Max Chilton', 1109, 'Scuderia Ferrari', 3726, 'Williams F1 Team', 1112, 'Renault RS27-2013', 2369),
(59163, 'José Carlos del Barrio Quevedo', 79, '_=:El cobete:=_', 18, 9, 'Jean-Eric Vergne', 729, 'Adrian Sutil', 997, 'Daniel Ricciardo', 1229, 'Fernando Alonso', 4928, 'Scuderia Ferrari', 3726, 'Scuderia Toro Rosso', 1084, 'Renault RS27-2013', 2369),
(59164, 'Eva GarcÃ­a Renuncio', 80, 'Correcaminos', 18, 9, 'Jenson Button', 2236, 'Kimi R', 3209, 'Daniel Ricciardo', 1229, 'Giedo van der Garde', 1157, 'Lotus F1 Team', 3326, 'Williams F1 Team', 1112, 'Renault RS27-2013', 2369),
(59165, 'Marta de Francisco Marcos', 78, 'Norwich F1', 18, 9, 'Fernando Alonso', 4928, 'Adrian Sutil', 997, 'Pastor Maldonado', 1408, 'Jean-Eric Vergne', 729, 'Scuderia Ferrari', 3726, 'Infiniti Red Bull Racing', 5410, 'Renault RS27-2013', 2369),
(59166, 'Javier Vega Carbajal', 71, 'Dos Caballos', 18, 9, 'Fernando Alonso', 4928, 'Valtteri Bottas', 845, 'Jean-Eric Vergne', 729, 'Daniel Ricciardo', 1229, 'Sahara Force India F1 Team', 1208, 'Scuderia Toro Rosso', 1084, 'Ferrari Type 056', 2390),
(59167, 'David Ordax de las Heras', 74, 'L', 18, 10, 'Fernando Alonso', 4928, 'Adrian Sutil', 997, 'Kimi R', 3209, 'Daniel Ricciardo', 1229, 'Scuderia Toro Rosso', 1084, 'Caterham F1 Team', 1702, 'Mercedes FO 108Z', 1935),
(59168, 'Optimus JAM --', 75, 'JAM F1 AUTOBOTS TEAM', 18, 9, 'Romain Grosjean', 5407, 'Fernando Alonso', 4928, 'Daniel Ricciardo', 1229, 'Jean-Eric Vergne', 729, 'Infiniti Red Bull Racing', 5410, 'Lotus F1 Team', 3326, 'Mercedes FO 108Z', 1935),
(59169, 'ja ja ja', 65, 'Equipo 4', 18, 8, 'Sebastian Vettel', 7414, 'Jean-Eric Vergne', 729, 'Luiz Razia', 1344, 'Max Chilton', 1109, 'Infiniti Red Bull Racing', 5410, 'Caterham F1 Team', 1702, 'Mercedes FO 108Z', 1935),
(59170, 'Ãlvaro GutiÃ©rrez --', 70, 'Hamphry Team', 18, 9, 'Fernando Alonso', 4928, 'Paul di Resta', 1408, 'Max Chilton', 1109, 'Giedo van der Garde', 1157, 'Infiniti Red Bull Racing', 5410, 'Mercedes AMG Petronas F1 Team', 4094, 'Mercedes FO 108Z', 1935),
(59171, 'Alberto Ordax de las Heras', 72, 'GiovanniF1', 18, 10, 'Sebastian Vettel', 7414, 'Adrian Sutil', 997, 'Kimi R', 3209, 'Jean-Eric Vergne', 729, 'Sahara Force India F1 Team', 1208, 'Lotus F1 Team', 3326, 'Mercedes FO 108Z', 1935),
(59172, 'ja ja ja', 67, 'equipo 6', 18, 8, 'Valtteri Bottas', 845, 'Jean-Eric Vergne', 729, 'Daniel Ricciardo', 1229, 'Charles Pic', 1306, 'Infiniti Red Bull Racing', 5410, 'Scuderia Ferrari', 3726, 'Cosworth CA2013', 1903),
(59173, 'ja ja ja', 66, 'equipo 5', 18, 8, 'Romain Grosjean', 5407, 'Sergio P', 7388, 'Max Chilton', 1109, 'Luiz Razia', 1344, 'Mercedes AMG Petronas F1 Team', 4094, 'Vodafone McLaren Mercedes', 3340, 'Cosworth CA2013', 1903),
(59174, 'ja ja ja', 64, 'Equipo 3', 18, 8, 'Sebastian Vettel', 7414, 'Luiz Razia', 1344, 'Charles Pic', 1306, 'Adrian Sutil', 997, 'Infiniti Red Bull Racing', 5410, 'Marussia F1 Team', 1462, 'Cosworth CA2013', 1903);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campeonatos_muro`
--

DROP TABLE IF EXISTS `campeonatos_muro`;
CREATE TABLE IF NOT EXISTS `campeonatos_muro` (
  `cam_mur_cod` int(11) NOT NULL AUTO_INCREMENT,
  `cam_mur_cam_cod` int(11) NOT NULL,
  `cam_mur_usr_cod` int(11) NOT NULL,
  `cam_mur_fec` date NOT NULL,
  `cam_mur_texto` varchar(250) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`cam_mur_cod`),
  KEY `cam_mur_cam_fk` (`cam_mur_cam_cod`),
  KEY `cam_mur_usr_fk` (`cam_mur_usr_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=44 ;

--
-- Volcado de datos para la tabla `campeonatos_muro`
--

INSERT INTO `campeonatos_muro` (`cam_mur_cod`, `cam_mur_cam_cod`, `cam_mur_usr_cod`, `cam_mur_fec`, `cam_mur_texto`) VALUES
(43, 9, 49, '2013-03-13', 'Tiene narices que tenga que andar haciendo estas cosas en casa...');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

DROP TABLE IF EXISTS `carreras`;
CREATE TABLE IF NOT EXISTS `carreras` (
  `car_cod` int(11) NOT NULL DEFAULT '0',
  `car_pai` varchar(25) CHARACTER SET utf8 NOT NULL,
  `car_cir` varchar(100) CHARACTER SET utf8 NOT NULL,
  `car_fec` date NOT NULL,
  `car_nom` varchar(100) CHARACTER SET utf8 NOT NULL,
  `car_lim_cambios` datetime NOT NULL,
  PRIMARY KEY (`car_cod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`car_cod`, `car_pai`, `car_cir`, `car_fec`, `car_nom`, `car_lim_cambios`) VALUES
(1, 'Australia', 'Albert Park', '2014-03-16', 'Australian Grand Prix', '2014-03-15 07:00:00'),
(2, 'Malasya', 'Sepang International Circuit', '2014-03-30', 'Malaysia Grand Prix', '2013-03-23 09:00:00'),
(4, 'China', 'Shanghai International Circuit', '2014-04-20', 'Chinese Grand Prix', '2013-04-13 08:00:00'),
(3, 'Bahrain ', 'Barhain International Circuit', '2014-04-06', 'Bahrain Grand Prix', '2013-04-20 13:00:00'),
(5, 'Espa', 'Circuit de Catalunya', '2014-05-11', 'Spanish Grand Prix', '2013-05-11 14:00:00'),
(6, 'Monaco', 'Circuit de Monaco', '2014-05-25', 'Monaco Grand Prix', '2013-05-25 14:00:00'),
(7, 'Canada', 'Circuit Gilles Villeneuve', '2014-06-08', 'Canada Grand Prix', '2013-06-08 19:00:00'),
(9, 'Gran Breta', 'Silverstone Circuit', '2014-07-06', 'British Grand Prix', '2013-06-29 14:00:00'),
(11, 'Hungr', 'Hungaroring', '2014-07-27', 'Hungrian Grand Prix', '2013-07-27 14:00:00'),
(12, 'Belgica', 'Circuit de Spa-Francorchamps', '2014-08-24', 'Belgian Grand Prix', '2013-08-24 14:00:00'),
(13, 'Italia', ' Autodromo Nazionale Monza', '2014-09-07', 'Italian Grand Prix', '2013-09-07 14:00:00'),
(14, 'Singapore', 'Marina Bay Street Circuit', '2014-09-21', 'Singapore Grand Prix', '2013-09-21 15:00:00'),
(15, 'Japón', ' Suzuka Circuit', '2014-10-05', 'Japanese Grand Prix', '2013-10-12 07:00:00'),
(16, 'Rusia', 'Sochi International Street Circuit', '2014-10-12', 'Russian Grand Prix', '2014-10-10 14:00:00'),
(19, 'Abu Dhabi', 'Yas Marina Circuit', '2014-11-23', 'Etihad Airways Abu Dhabi Grand Prix', '2013-11-02 14:00:00'),
(17, 'Estados Unidos', 'Circuit of the Americas', '2014-11-02', 'Unites States Grand Prix', '2013-11-15 19:00:00'),
(18, 'Brasil', 'Aut', '2014-11-09', 'Grande Pr', '2013-11-23 17:00:00'),
(8, 'Austria', 'Red Bull Ring', '2014-06-22', 'Austrian Grand Prix', '2014-06-21 14:00:00'),
(10, 'Alemania', 'Hockenheimring', '2014-07-20', 'German Rand Prix', '2014-07-19 14:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras_pilotos`
--

DROP TABLE IF EXISTS `carreras_pilotos`;
CREATE TABLE IF NOT EXISTS `carreras_pilotos` (
  `car_pil_cod` int(11) NOT NULL AUTO_INCREMENT,
  `car_pil_car_cod` int(11) NOT NULL,
  `car_pil_pil_cod` int(11) NOT NULL,
  PRIMARY KEY (`car_pil_cod`),
  KEY `car_pil_car_fk` (`car_pil_car_cod`),
  KEY `car_pil_pil_fk` (`car_pil_pil_cod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos_componentes`
--

DROP TABLE IF EXISTS `equipos_componentes`;
CREATE TABLE IF NOT EXISTS `equipos_componentes` (
  `equ_com_cod` int(11) NOT NULL AUTO_INCREMENT,
  `equ_equ_cod` int(11) NOT NULL,
  `equ_car_cod` int(11) NOT NULL,
  `equ_pil_1_cod` int(11) NOT NULL,
  `equ_pil_2_cod` int(11) NOT NULL,
  `equ_pil_3_cod` int(11) NOT NULL,
  `equ_pil_4_cod` int(11) NOT NULL,
  `equ_esc_1_cod` int(11) NOT NULL,
  `equ_esc_2_cod` int(11) NOT NULL,
  `equ_mot_1_cod` int(11) NOT NULL,
  `equ_din` int(11) NOT NULL,
  PRIMARY KEY (`equ_com_cod`),
  KEY `equ_com_equ_com_fk` (`equ_equ_cod`),
  KEY `equ_com_car_com_fk` (`equ_car_cod`),
  KEY `equ_com_pil_1_fk` (`equ_pil_1_cod`),
  KEY `equ_com_pil_2_fk` (`equ_pil_2_cod`),
  KEY `equ_com_pil_3_fk` (`equ_pil_3_cod`),
  KEY `equ_com_pil_4_fk` (`equ_pil_4_cod`),
  KEY `equ_com_esc_1_fk` (`equ_esc_1_cod`),
  KEY `equ_com_esc_2_fk` (`equ_esc_2_cod`),
  KEY `equ_com_mot_1_fk` (`equ_mot_1_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1407 ;

--
-- Volcado de datos para la tabla `equipos_componentes`
--

INSERT INTO `equipos_componentes` (`equ_com_cod`, `equ_equ_cod`, `equ_car_cod`, `equ_pil_1_cod`, `equ_pil_2_cod`, `equ_pil_3_cod`, `equ_pil_4_cod`, `equ_esc_1_cod`, `equ_esc_2_cod`, `equ_mot_1_cod`, `equ_din`) VALUES
(1039, 62, 1, 6, 9, 23, 22, 3, 10, 1, 900),
(1040, 63, 1, 1, 18, 19, 20, 1, 10, 1, 0),
(1041, 64, 1, 1, 22, 20, 15, 1, 11, 4, 0),
(1042, 65, 1, 1, 18, 22, 23, 1, 10, 3, 400),
(1043, 66, 1, 8, 6, 23, 22, 5, 3, 4, 700),
(1044, 67, 1, 17, 18, 19, 20, 1, 2, 4, 1500),
(1046, 69, 1, 4, 6, 20, 23, 2, 8, 1, 0),
(1047, 70, 1, 9, 15, 19, 23, 1, 5, 3, 0),
(1048, 71, 1, 3, 6, 18, 19, 7, 10, 1, 0),
(1049, 72, 1, 6, 15, 12, 19, 7, 5, 1, 400),
(1050, 73, 1, 9, 6, 17, 18, 5, 8, 1, 300),
(1051, 74, 1, 3, 15, 17, 23, 2, 9, 4, 0),
(1052, 75, 1, 9, 6, 19, 18, 5, 6, 1, 200),
(1053, 76, 1, 9, 6, 22, 23, 1, 5, 4, 100),
(1054, 77, 1, 8, 6, 22, 23, 1, 5, 1, 0),
(1055, 78, 1, 2, 18, 22, 23, 1, 5, 1, 400),
(1056, 62, 2, 6, 9, 23, 22, 3, 10, 1, 900),
(1057, 63, 2, 1, 18, 19, 20, 1, 10, 1, 0),
(1058, 64, 2, 1, 22, 20, 15, 1, 11, 4, 0),
(1059, 65, 2, 1, 18, 22, 23, 1, 10, 3, 400),
(1060, 66, 2, 8, 6, 23, 22, 5, 3, 4, 700),
(1061, 67, 2, 17, 18, 19, 20, 1, 2, 4, 1500),
(1062, 69, 2, 4, 6, 20, 23, 2, 8, 1, 0),
(1063, 70, 2, 9, 15, 19, 23, 1, 5, 3, 0),
(1064, 71, 2, 3, 6, 18, 19, 7, 10, 1, 0),
(1065, 72, 2, 7, 15, 12, 18, 7, 9, 1, 581),
(1066, 73, 2, 10, 15, 17, 18, 5, 9, 1, 617),
(1067, 74, 2, 3, 15, 17, 23, 2, 9, 4, 0),
(1068, 75, 2, 9, 6, 19, 18, 5, 6, 1, 200),
(1069, 76, 2, 7, 6, 21, 23, 1, 7, 4, 68),
(1070, 77, 2, 8, 4, 21, 23, 4, 5, 1, 77),
(1071, 78, 2, 7, 18, 22, 23, 2, 4, 1, 361),
(1072, 62, 3, 6, 9, 23, 22, 3, 10, 1, 900),
(1073, 63, 3, 1, 18, 19, 20, 1, 10, 1, 0),
(1175, 71, 6, 3, 17, 18, 19, 7, 9, 2, 1782),
(1075, 65, 3, 1, 18, 22, 23, 1, 10, 3, 400),
(1076, 66, 3, 8, 6, 23, 22, 5, 3, 4, 700),
(1178, 77, 6, 3, 1, 10, 15, 5, 2, 3, 207),
(1179, 62, 6, 6, 9, 23, 22, 3, 10, 1, 900),
(1180, 64, 6, 1, 22, 20, 15, 1, 11, 4, 0),
(1080, 71, 3, 3, 6, 18, 19, 7, 10, 1, 0),
(1081, 72, 3, 3, 15, 12, 19, 7, 9, 1, 522),
(1082, 73, 3, 3, 8, 17, 18, 5, 9, 3, 8),
(1083, 74, 3, 3, 15, 17, 23, 2, 9, 4, 0),
(1084, 75, 3, 9, 6, 19, 18, 8, 6, 1, 1319),
(1186, 73, 6, 3, 7, 15, 18, 4, 7, 3, 167),
(1187, 76, 6, 7, 9, 21, 19, 1, 8, 1, 2),
(1087, 78, 3, 7, 18, 16, 23, 2, 5, 2, 58),
(1173, 63, 6, 1, 18, 19, 20, 1, 10, 1, 0),
(1174, 67, 6, 17, 18, 19, 20, 1, 2, 4, 1500),
(1090, 64, 3, 1, 22, 20, 15, 1, 11, 4, 0),
(1176, 74, 6, 3, 15, 17, 12, 2, 10, 3, 285),
(1177, 75, 6, 1, 6, 19, 18, 8, 2, 1, 278),
(1093, 67, 3, 17, 18, 19, 20, 1, 2, 4, 1500),
(1094, 69, 3, 3, 7, 15, 23, 2, 8, 1, 138),
(1095, 70, 3, 9, 15, 19, 23, 1, 5, 3, 0),
(1181, 65, 6, 1, 18, 22, 23, 1, 10, 3, 400),
(1182, 66, 6, 8, 6, 23, 22, 5, 3, 4, 700),
(1183, 69, 6, 3, 7, 15, 23, 2, 8, 1, 138),
(1184, 70, 6, 3, 14, 23, 21, 1, 5, 3, 57),
(1185, 72, 6, 10, 15, 12, 16, 7, 5, 3, 914),
(1101, 76, 3, 7, 6, 21, 22, 1, 7, 1, 103),
(1102, 77, 3, 3, 9, 19, 23, 4, 5, 1, 304),
(1188, 78, 6, 3, 15, 16, 23, 2, 1, 1, 481),
(1104, 79, 3, 18, 15, 19, 3, 2, 9, 1, 40),
(1189, 79, 6, 18, 15, 19, 3, 2, 9, 1, 40),
(1106, 63, 4, 1, 18, 19, 20, 1, 10, 1, 0),
(1107, 64, 4, 1, 22, 20, 15, 1, 11, 4, 0),
(1108, 65, 4, 1, 18, 22, 23, 1, 10, 3, 400),
(1193, 62, 7, 6, 9, 23, 22, 3, 10, 1, 900),
(1110, 67, 4, 17, 18, 19, 20, 1, 2, 4, 1500),
(1111, 69, 4, 3, 7, 15, 23, 2, 8, 1, 138),
(1112, 70, 4, 7, 14, 19, 21, 1, 5, 3, 280),
(1197, 63, 7, 1, 18, 19, 20, 1, 10, 1, 0),
(1198, 67, 7, 17, 18, 19, 20, 1, 2, 4, 1500),
(1199, 74, 7, 3, 15, 17, 12, 2, 10, 3, 285),
(1200, 75, 7, 1, 3, 19, 18, 8, 5, 3, 22),
(1201, 65, 7, 1, 18, 22, 23, 1, 10, 3, 400),
(1202, 66, 7, 8, 6, 23, 22, 5, 3, 4, 700),
(1119, 77, 4, 3, 9, 19, 16, 4, 5, 1, 192),
(1204, 70, 7, 3, 14, 23, 21, 1, 5, 3, 57),
(1121, 62, 4, 6, 9, 23, 22, 3, 10, 1, 900),
(1190, 80, 6, 3, 16, 19, 21, 1, 8, 1, 26),
(1191, 71, 7, 3, 17, 18, 19, 7, 9, 2, 1782),
(1192, 77, 7, 3, 1, 2, 15, 4, 2, 1, 250),
(1125, 66, 4, 8, 6, 23, 22, 5, 3, 4, 700),
(1194, 64, 7, 1, 22, 20, 15, 1, 11, 4, 0),
(1195, 73, 7, 3, 8, 15, 18, 5, 7, 1, 338),
(1196, 76, 7, 7, 9, 21, 19, 1, 8, 1, 2),
(1129, 71, 4, 3, 17, 18, 19, 7, 9, 2, 1782),
(1130, 72, 4, 3, 14, 21, 19, 7, 8, 1, 110),
(1131, 73, 4, 3, 7, 17, 18, 4, 7, 3, 11),
(1132, 74, 4, 3, 15, 16, 12, 2, 10, 4, 108),
(1133, 75, 4, 1, 6, 19, 18, 8, 2, 1, 278),
(1134, 76, 4, 7, 9, 21, 19, 1, 8, 1, 2),
(1203, 69, 7, 3, 7, 15, 23, 2, 8, 1, 138),
(1136, 78, 4, 7, 19, 16, 23, 2, 1, 1, 753),
(1137, 79, 4, 18, 15, 19, 3, 2, 9, 1, 40),
(1138, 80, 4, 3, 16, 19, 21, 1, 8, 1, 26),
(1205, 72, 7, 10, 15, 12, 16, 7, 5, 3, 914),
(1140, 63, 5, 1, 18, 19, 20, 1, 10, 1, 0),
(1207, 79, 7, 18, 15, 19, 3, 2, 9, 1, 40),
(1208, 80, 7, 5, 7, 19, 21, 4, 8, 1, 209),
(1144, 67, 5, 17, 18, 19, 20, 1, 2, 4, 1500),
(1147, 71, 5, 3, 17, 18, 19, 7, 9, 2, 1782),
(1150, 74, 5, 3, 15, 17, 12, 2, 10, 3, 285),
(1151, 75, 5, 1, 6, 19, 18, 8, 2, 1, 278),
(1153, 77, 5, 3, 1, 19, 16, 4, 2, 3, 1058),
(1155, 62, 5, 6, 9, 23, 22, 3, 10, 1, 900),
(1206, 78, 7, 3, 15, 16, 18, 2, 1, 1, 598),
(1157, 64, 5, 1, 22, 20, 15, 1, 11, 4, 0),
(1158, 65, 5, 1, 18, 22, 23, 1, 10, 3, 400),
(1159, 66, 5, 8, 6, 23, 22, 5, 3, 4, 700),
(1161, 69, 5, 3, 7, 15, 23, 2, 8, 1, 138),
(1162, 70, 5, 7, 14, 15, 21, 1, 5, 3, 130),
(1164, 72, 5, 3, 15, 12, 16, 7, 8, 1, 545),
(1165, 73, 5, 3, 7, 15, 18, 4, 7, 3, 167),
(1168, 76, 5, 7, 9, 21, 19, 1, 8, 1, 2),
(1170, 78, 5, 3, 15, 16, 23, 2, 1, 1, 481),
(1171, 79, 5, 18, 15, 19, 3, 2, 9, 1, 40),
(1172, 80, 5, 3, 16, 19, 21, 1, 8, 1, 26),
(1209, 62, 8, 6, 9, 23, 22, 3, 10, 1, 900),
(1210, 63, 8, 1, 18, 19, 20, 1, 10, 1, 0),
(1211, 67, 8, 17, 18, 19, 20, 1, 2, 4, 1500),
(1212, 74, 8, 3, 15, 17, 12, 2, 10, 3, 285),
(1213, 75, 8, 1, 3, 19, 18, 8, 5, 3, 22),
(1214, 65, 8, 1, 18, 22, 23, 1, 10, 3, 400),
(1215, 66, 8, 8, 6, 23, 22, 5, 3, 4, 700),
(1216, 70, 8, 3, 14, 23, 21, 1, 5, 3, 57),
(1217, 71, 8, 3, 17, 18, 19, 7, 9, 2, 1782),
(1218, 77, 8, 3, 1, 2, 15, 4, 2, 1, 250),
(1219, 64, 8, 1, 22, 20, 15, 1, 11, 4, 0),
(1220, 73, 8, 3, 8, 15, 18, 5, 7, 1, 338),
(1221, 76, 8, 7, 9, 21, 19, 1, 8, 1, 2),
(1222, 69, 8, 3, 7, 15, 23, 2, 8, 1, 138),
(1223, 72, 8, 10, 15, 12, 16, 7, 5, 3, 914),
(1224, 79, 8, 18, 15, 19, 3, 2, 9, 1, 40),
(1225, 80, 8, 5, 7, 19, 21, 4, 8, 1, 209),
(1226, 78, 8, 3, 15, 16, 18, 2, 1, 1, 598),
(1227, 62, 9, 6, 9, 23, 22, 3, 10, 1, 900),
(1228, 63, 9, 1, 18, 19, 20, 1, 10, 1, 0),
(1229, 67, 9, 17, 18, 19, 20, 1, 2, 4, 1500),
(1230, 74, 9, 3, 15, 17, 12, 2, 10, 3, 285),
(1231, 75, 9, 1, 3, 19, 18, 8, 5, 3, 22),
(1232, 65, 9, 1, 18, 22, 23, 1, 10, 3, 400),
(1233, 66, 9, 8, 6, 23, 22, 5, 3, 4, 700),
(1234, 70, 9, 3, 14, 23, 21, 1, 5, 3, 57),
(1235, 71, 9, 3, 17, 18, 19, 7, 9, 2, 1782),
(1236, 77, 9, 3, 1, 2, 15, 4, 2, 1, 250),
(1237, 64, 9, 1, 22, 20, 15, 1, 11, 4, 0),
(1238, 73, 9, 3, 8, 15, 18, 5, 7, 1, 338),
(1239, 76, 9, 7, 1, 21, 14, 1, 2, 1, 35),
(1240, 69, 9, 3, 7, 15, 23, 2, 8, 1, 138),
(1241, 72, 9, 8, 15, 7, 14, 7, 5, 3, 603),
(1242, 79, 9, 18, 15, 19, 3, 2, 9, 1, 40),
(1243, 80, 9, 5, 7, 19, 21, 4, 8, 1, 209),
(1244, 78, 9, 3, 15, 16, 18, 2, 1, 1, 598),
(1245, 62, 10, 6, 9, 23, 22, 3, 10, 1, 900),
(1246, 63, 10, 1, 18, 19, 20, 1, 10, 1, 0),
(1247, 67, 10, 17, 18, 19, 20, 1, 2, 4, 1500),
(1248, 74, 10, 3, 15, 17, 12, 2, 10, 3, 285),
(1249, 75, 10, 1, 3, 19, 18, 8, 5, 3, 22),
(1250, 65, 10, 1, 18, 22, 23, 1, 10, 3, 400),
(1251, 66, 10, 8, 6, 23, 22, 5, 3, 4, 700),
(1252, 70, 10, 3, 14, 23, 21, 1, 5, 3, 57),
(1253, 71, 10, 3, 17, 18, 19, 7, 9, 2, 1782),
(1254, 77, 10, 3, 1, 2, 15, 4, 2, 1, 250),
(1255, 64, 10, 1, 22, 20, 15, 1, 11, 4, 0),
(1256, 73, 10, 3, 8, 15, 18, 5, 7, 1, 338),
(1257, 76, 10, 7, 1, 21, 14, 1, 2, 1, 35),
(1258, 69, 10, 3, 7, 15, 23, 2, 8, 1, 138),
(1259, 72, 10, 8, 15, 7, 14, 7, 5, 3, 603),
(1260, 79, 10, 18, 15, 19, 3, 2, 9, 1, 40),
(1261, 80, 10, 5, 7, 19, 21, 4, 8, 1, 209),
(1262, 78, 10, 3, 15, 16, 18, 2, 1, 1, 598),
(1263, 62, 11, 6, 9, 23, 22, 3, 10, 1, 900),
(1264, 63, 11, 1, 18, 19, 20, 1, 10, 1, 0),
(1265, 67, 11, 17, 18, 19, 20, 1, 2, 4, 1500),
(1266, 74, 11, 3, 15, 7, 19, 9, 10, 3, 258),
(1267, 75, 11, 1, 3, 19, 18, 8, 5, 3, 22),
(1268, 65, 11, 1, 18, 22, 23, 1, 10, 3, 400),
(1269, 66, 11, 8, 6, 23, 22, 5, 3, 4, 700),
(1270, 70, 11, 3, 14, 23, 21, 1, 5, 3, 57),
(1271, 71, 11, 3, 17, 18, 19, 7, 9, 2, 1782),
(1272, 77, 11, 3, 1, 2, 15, 4, 2, 1, 250),
(1273, 64, 11, 1, 22, 20, 15, 1, 11, 4, 0),
(1274, 73, 11, 3, 7, 15, 12, 2, 7, 1, 440),
(1275, 76, 11, 7, 1, 21, 14, 1, 2, 1, 35),
(1276, 69, 11, 3, 7, 15, 23, 2, 8, 1, 138),
(1277, 72, 11, 1, 15, 7, 18, 7, 4, 3, 362),
(1278, 79, 11, 18, 15, 19, 3, 2, 9, 1, 40),
(1279, 80, 11, 5, 7, 19, 21, 4, 8, 1, 209),
(1280, 78, 11, 3, 15, 16, 18, 2, 1, 1, 598),
(1281, 62, 12, 6, 9, 23, 22, 3, 10, 1, 900),
(1282, 63, 12, 1, 18, 19, 20, 1, 10, 1, 0),
(1283, 67, 12, 17, 18, 19, 20, 1, 2, 4, 1500),
(1284, 74, 12, 3, 15, 7, 19, 9, 10, 3, 258),
(1285, 75, 12, 1, 3, 19, 18, 8, 5, 3, 22),
(1286, 65, 12, 1, 18, 22, 23, 1, 10, 3, 400),
(1287, 66, 12, 8, 6, 23, 22, 5, 3, 4, 700),
(1288, 70, 12, 3, 14, 23, 21, 1, 5, 3, 57),
(1289, 71, 12, 3, 17, 18, 19, 7, 9, 2, 1782),
(1290, 77, 12, 3, 1, 2, 15, 4, 2, 1, 250),
(1291, 64, 12, 1, 22, 20, 15, 1, 11, 4, 0),
(1292, 73, 12, 3, 7, 15, 12, 2, 7, 1, 440),
(1293, 76, 12, 7, 1, 21, 14, 1, 2, 1, 35),
(1294, 69, 12, 3, 7, 15, 23, 2, 8, 1, 138),
(1295, 72, 12, 1, 15, 7, 18, 7, 4, 3, 362),
(1296, 79, 12, 18, 15, 19, 3, 2, 9, 1, 40),
(1297, 80, 12, 5, 7, 19, 21, 4, 8, 1, 209),
(1298, 78, 12, 3, 15, 16, 18, 2, 1, 1, 598),
(1299, 62, 13, 6, 9, 23, 22, 3, 10, 1, 900),
(1300, 63, 13, 1, 18, 19, 20, 1, 10, 1, 0),
(1301, 67, 13, 17, 18, 19, 20, 1, 2, 4, 1500),
(1302, 74, 13, 3, 15, 7, 19, 9, 10, 3, 258),
(1303, 75, 13, 1, 3, 19, 18, 8, 5, 3, 22),
(1304, 65, 13, 1, 18, 22, 23, 1, 10, 3, 400),
(1305, 66, 13, 8, 6, 23, 22, 5, 3, 4, 700),
(1306, 70, 13, 3, 14, 23, 21, 1, 5, 3, 57),
(1307, 71, 13, 3, 17, 18, 19, 7, 9, 2, 1782),
(1308, 77, 13, 3, 1, 2, 15, 4, 2, 1, 250),
(1309, 64, 13, 1, 22, 20, 15, 1, 11, 4, 0),
(1310, 73, 13, 3, 7, 15, 12, 2, 7, 1, 440),
(1311, 76, 13, 7, 1, 21, 14, 1, 2, 1, 35),
(1312, 69, 13, 3, 7, 15, 23, 2, 8, 1, 138),
(1313, 72, 13, 1, 15, 7, 18, 7, 4, 3, 362),
(1314, 79, 13, 18, 15, 19, 3, 2, 9, 1, 40),
(1315, 80, 13, 5, 7, 19, 21, 4, 8, 1, 209),
(1316, 78, 13, 3, 15, 16, 18, 2, 1, 1, 598),
(1317, 62, 14, 6, 9, 23, 22, 3, 10, 1, 900),
(1318, 63, 14, 1, 18, 19, 20, 1, 10, 1, 0),
(1319, 67, 14, 17, 18, 19, 20, 1, 2, 4, 1500),
(1320, 74, 14, 3, 15, 7, 19, 9, 10, 3, 258),
(1321, 75, 14, 1, 3, 19, 18, 8, 5, 3, 22),
(1322, 65, 14, 1, 18, 22, 23, 1, 10, 3, 400),
(1323, 66, 14, 8, 6, 23, 22, 5, 3, 4, 700),
(1324, 70, 14, 3, 14, 23, 21, 1, 5, 3, 57),
(1325, 71, 14, 3, 17, 18, 19, 7, 9, 2, 1782),
(1326, 77, 14, 3, 1, 2, 15, 4, 2, 1, 250),
(1327, 64, 14, 1, 22, 20, 15, 1, 11, 4, 0),
(1328, 73, 14, 3, 7, 15, 12, 2, 7, 1, 440),
(1329, 76, 14, 7, 1, 21, 14, 1, 2, 1, 35),
(1330, 69, 14, 3, 7, 15, 23, 2, 8, 1, 138),
(1331, 72, 14, 1, 15, 7, 18, 7, 4, 3, 362),
(1332, 79, 14, 18, 15, 19, 3, 2, 9, 1, 40),
(1333, 80, 14, 5, 7, 19, 21, 4, 8, 1, 209),
(1334, 78, 14, 3, 15, 16, 18, 2, 1, 1, 598),
(1335, 62, 15, 6, 9, 23, 22, 3, 10, 1, 900),
(1336, 63, 15, 1, 18, 19, 20, 1, 10, 1, 0),
(1337, 67, 15, 17, 18, 19, 20, 1, 2, 4, 1500),
(1338, 74, 15, 3, 15, 7, 19, 9, 10, 3, 258),
(1339, 75, 15, 1, 3, 19, 18, 8, 5, 3, 22),
(1340, 65, 15, 1, 18, 22, 23, 1, 10, 3, 400),
(1341, 66, 15, 8, 6, 23, 22, 5, 3, 4, 700),
(1342, 70, 15, 3, 14, 23, 21, 1, 5, 3, 57),
(1343, 71, 15, 3, 17, 18, 19, 7, 9, 2, 1782),
(1344, 77, 15, 3, 1, 2, 15, 4, 2, 1, 250),
(1345, 64, 15, 1, 22, 20, 15, 1, 11, 4, 0),
(1346, 73, 15, 3, 7, 15, 12, 2, 7, 1, 440),
(1347, 76, 15, 7, 1, 21, 14, 1, 2, 1, 35),
(1348, 69, 15, 3, 7, 15, 23, 2, 8, 1, 138),
(1349, 72, 15, 1, 15, 7, 18, 7, 4, 3, 362),
(1350, 79, 15, 18, 15, 19, 3, 2, 9, 1, 40),
(1351, 80, 15, 5, 7, 19, 21, 4, 8, 1, 209),
(1352, 78, 15, 3, 15, 16, 18, 2, 1, 1, 598),
(1353, 62, 16, 6, 9, 23, 22, 3, 10, 1, 900),
(1354, 63, 16, 1, 18, 19, 20, 1, 10, 1, 0),
(1355, 67, 16, 17, 18, 19, 20, 1, 2, 4, 1500),
(1356, 74, 16, 3, 15, 7, 19, 9, 10, 3, 258),
(1357, 75, 16, 8, 3, 19, 18, 1, 4, 3, 24),
(1358, 65, 16, 1, 18, 22, 23, 1, 10, 3, 400),
(1359, 66, 16, 8, 6, 23, 22, 5, 3, 4, 700),
(1360, 70, 16, 3, 14, 23, 21, 1, 5, 3, 57),
(1361, 71, 16, 3, 17, 18, 19, 7, 9, 2, 1782),
(1362, 77, 16, 3, 1, 2, 15, 4, 2, 1, 250),
(1363, 64, 16, 1, 22, 20, 15, 1, 11, 4, 0),
(1364, 73, 16, 3, 7, 15, 12, 2, 7, 1, 440),
(1365, 76, 16, 7, 1, 21, 19, 1, 2, 1, 396),
(1366, 69, 16, 3, 7, 15, 23, 2, 8, 1, 138),
(1367, 72, 16, 1, 15, 7, 18, 7, 4, 3, 362),
(1368, 79, 16, 18, 15, 19, 3, 2, 9, 1, 40),
(1369, 80, 16, 5, 7, 19, 21, 4, 8, 1, 209),
(1370, 78, 16, 3, 15, 16, 18, 2, 1, 1, 598),
(1371, 62, 17, 6, 9, 23, 22, 3, 10, 1, 900),
(1372, 63, 17, 1, 18, 19, 20, 1, 10, 1, 0),
(1373, 67, 17, 17, 18, 19, 20, 1, 2, 4, 1500),
(1374, 74, 17, 3, 15, 7, 19, 9, 10, 3, 258),
(1375, 75, 17, 8, 3, 19, 18, 1, 4, 3, 24),
(1376, 65, 17, 1, 18, 22, 23, 1, 10, 3, 400),
(1377, 66, 17, 8, 6, 23, 22, 5, 3, 4, 700),
(1378, 70, 17, 3, 14, 23, 21, 1, 5, 3, 57),
(1379, 71, 17, 3, 17, 18, 19, 7, 9, 2, 1782),
(1380, 77, 17, 3, 1, 2, 15, 4, 2, 1, 250),
(1381, 64, 17, 1, 22, 20, 15, 1, 11, 4, 0),
(1382, 73, 17, 3, 7, 15, 12, 2, 7, 1, 440),
(1383, 76, 17, 7, 1, 21, 19, 1, 2, 1, 396),
(1384, 69, 17, 3, 7, 15, 23, 2, 8, 1, 138),
(1385, 72, 17, 1, 15, 7, 18, 7, 4, 3, 362),
(1386, 79, 17, 18, 15, 19, 3, 2, 9, 1, 40),
(1387, 80, 17, 5, 7, 19, 21, 4, 8, 1, 209),
(1388, 78, 17, 3, 15, 16, 18, 2, 1, 1, 598),
(1389, 62, 18, 6, 9, 23, 22, 3, 10, 1, 900),
(1390, 63, 18, 1, 18, 19, 20, 1, 10, 1, 0),
(1391, 67, 18, 17, 18, 19, 20, 1, 2, 4, 1500),
(1392, 74, 18, 3, 15, 7, 19, 9, 10, 3, 258),
(1393, 75, 18, 8, 3, 19, 18, 1, 4, 3, 24),
(1394, 65, 18, 1, 18, 22, 23, 1, 10, 3, 400),
(1395, 66, 18, 8, 6, 23, 22, 5, 3, 4, 700),
(1396, 70, 18, 3, 14, 23, 21, 1, 5, 3, 57),
(1397, 71, 18, 3, 17, 18, 19, 7, 9, 2, 1782),
(1398, 77, 18, 3, 1, 2, 15, 4, 2, 1, 250),
(1399, 64, 18, 1, 22, 20, 15, 1, 11, 4, 0),
(1400, 73, 18, 3, 7, 15, 12, 2, 7, 1, 440),
(1401, 76, 18, 7, 1, 21, 19, 1, 2, 1, 396),
(1402, 69, 18, 3, 7, 15, 23, 2, 8, 1, 138),
(1403, 72, 18, 1, 15, 7, 18, 7, 4, 3, 362),
(1404, 79, 18, 18, 15, 19, 3, 2, 9, 1, 40),
(1405, 80, 18, 5, 7, 19, 21, 4, 8, 1, 209),
(1406, 78, 18, 3, 15, 16, 18, 2, 1, 1, 598);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos_datos`
--

DROP TABLE IF EXISTS `equipos_datos`;
CREATE TABLE IF NOT EXISTS `equipos_datos` (
  `equ_cod` int(11) NOT NULL AUTO_INCREMENT,
  `equ_nom` varchar(45) CHARACTER SET latin1 NOT NULL,
  `equ_lem` varchar(150) CHARACTER SET latin1 NOT NULL,
  `equ_usr_cod` int(11) NOT NULL,
  `equ_cam_cod` int(11) NOT NULL,
  PRIMARY KEY (`equ_cod`),
  KEY `equ_dat_usr_fk` (`equ_usr_cod`),
  KEY `equ_dat_cam_fk` (`equ_cam_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=81 ;

--
-- Volcado de datos para la tabla `equipos_datos`
--

INSERT INTO `equipos_datos` (`equ_cod`, `equ_nom`, `equ_lem`, `equ_usr_cod`, `equ_cam_cod`) VALUES
(62, 'Equipo 1', 'semper fi', 47, 8),
(63, 'Equipo 2', 'curahe', 47, 8),
(64, 'Equipo 3', 'geronimo', 47, 8),
(65, 'Equipo 4', 'otro lema', 47, 8),
(66, 'equipo 5', 'equipo 5 lema', 47, 8),
(67, 'equipo 6', 'otro equipo mas', 47, 8),
(69, 'Lalangosta Racing Team', 'Reventar antes de que sobre', 49, 9),
(70, 'Hamphry Team', 'Cena Free! ', 25, 9),
(71, 'Dos Caballos', 'Lentos pero seguros', 50, 9),
(72, 'GiovanniF1', 'jj_no_hagas_trampas', 34, 10),
(73, 'troncomovil', 'con un par!!', 51, 10),
(74, 'L', 'Llegar a meta', 52, 10),
(75, 'JAM F1 AUTOBOTS TEAM', 'Optimus rules mod', 28, 9),
(76, 'Equipo JJ', 'Equipo JJ', 28, 10),
(77, 'Silvia McQueen', 'Te pongo la peli, pero cena!', 19, 9),
(78, 'Norwich F1', 'Eat my dust!!!', 27, 9),
(79, '_=:El cobete:=_', 'Este a?o si', 33, 9),
(80, 'Correcaminos', 'Tarde pero llega', 24, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuderias`
--

DROP TABLE IF EXISTS `escuderias`;
CREATE TABLE IF NOT EXISTS `escuderias` (
  `esc_cod` int(11) NOT NULL,
  `esc_nom` varchar(35) CHARACTER SET utf8 NOT NULL,
  `esc_mot_cod` int(11) NOT NULL,
  PRIMARY KEY (`esc_cod`),
  KEY `esc_mot_fk` (`esc_mot_cod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `escuderias`
--

INSERT INTO `escuderias` (`esc_cod`, `esc_nom`, `esc_mot_cod`) VALUES
(1, 'Infiniti Red Bull Racing', 1),
(2, 'Scuderia Ferrari', 2),
(3, 'McLaren Mercedes', 3),
(4, 'Lotus F1 Team', 1),
(5, 'Mercedes AMG Petronas F1 Team', 3),
(6, 'Sauber F1 Team', 2),
(7, 'Sahara Force India F1 Team', 3),
(8, 'Williams F1 Team', 3),
(9, 'Scuderia Toro Rosso', 1),
(10, 'Caterham F1 Team', 1),
(11, 'Marussia F1 Team', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motores`
--

DROP TABLE IF EXISTS `motores`;
CREATE TABLE IF NOT EXISTS `motores` (
  `mot_cod` int(11) NOT NULL DEFAULT '0',
  `mot_nom` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`mot_cod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `motores`
--

INSERT INTO `motores` (`mot_cod`, `mot_nom`) VALUES
(1, 'Renault Energy F1-2014'),
(2, 'Ferrari 059/3'),
(3, 'Mercedes PU106A Hybrid[20][32]\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pilotos`
--

DROP TABLE IF EXISTS `pilotos`;
CREATE TABLE IF NOT EXISTS `pilotos` (
  `pil_cod` int(11) NOT NULL,
  `pil_nom` varchar(25) CHARACTER SET utf8 NOT NULL,
  `pil_esc_cod` int(11) NOT NULL,
  PRIMARY KEY (`pil_cod`),
  KEY `pil_esc_fk` (`pil_esc_cod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `pilotos`
--

INSERT INTO `pilotos` (`pil_cod`, `pil_nom`, `pil_esc_cod`) VALUES
(1, 'Sebastian Vettel', 1),
(3, 'Daniel Ricciardo', 1),
(14, 'Fernando Alonso', 2),
(7, 'Kimi Raikkonen', 2),
(22, 'Jenson Button', 3),
(20, 'Kevin Magnussen', 3),
(13, 'Pastor Maldonado', 4),
(8, 'Romain Grosjean', 4),
(6, 'Nico Rosberg', 5),
(44, 'Lewis Hamilton', 5),
(99, 'Adrian Sutil', 6),
(21, 'Esteban Gutiérrez', 6),
(27, 'Nico Hulkenberg', 7),
(11, 'Sergio Perez', 7),
(19, 'Felipe Massa', 8),
(77, 'Valtteri Bottas', 8),
(25, 'Jean-Eric Vergne', 9),
(26, 'Daniil Kvyat', 9),
(9, 'Marcus Ericsson', 10),
(10, 'Kamui Kobayashi', 10),
(17, 'Jules Bianchi', 11),
(4, 'Max Chilton', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos_apuestas_carrera`
--

DROP TABLE IF EXISTS `puntos_apuestas_carrera`;
CREATE TABLE IF NOT EXISTS `puntos_apuestas_carrera` (
  `pun_apu_cod` int(11) NOT NULL AUTO_INCREMENT,
  `pun_apu_equ_cod` int(11) NOT NULL,
  `pun_apu_car_cod` int(11) NOT NULL,
  `pun_apu_pun_pod` int(11) NOT NULL,
  `pun_apu_pun_pos_alo` int(11) NOT NULL,
  `pun_apu_pun_pos_tot` int(11) NOT NULL,
  PRIMARY KEY (`pun_apu_cod`),
  KEY `pun_apu_equ_fk` (`pun_apu_equ_cod`),
  KEY `pun_apu_car_fk` (`pun_apu_car_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1822 ;

--
-- Volcado de datos para la tabla `puntos_apuestas_carrera`
--

INSERT INTO `puntos_apuestas_carrera` (`pun_apu_cod`, `pun_apu_equ_cod`, `pun_apu_car_cod`, `pun_apu_pun_pod`, `pun_apu_pun_pos_alo`, `pun_apu_pun_pos_tot`) VALUES
(1561, 62, 1, 0, 0, 0),
(1562, 66, 1, 0, 0, 0),
(1563, 67, 1, 0, 0, 0),
(1564, 69, 1, 0, 0, 0),
(1565, 70, 1, 0, 0, 0),
(1566, 71, 1, 0, 0, 0),
(1567, 72, 1, 0, 0, 0),
(1568, 73, 1, 0, 0, 0),
(1569, 74, 1, 0, 0, 0),
(1570, 75, 1, 0, 0, 0),
(1571, 76, 1, 0, 0, 0),
(1572, 77, 1, 0, 0, 0),
(1573, 78, 1, 0, 0, 0),
(1574, 62, 2, 400, 0, 400),
(1575, 66, 2, 200, 0, 200),
(1576, 67, 2, 400, 0, 400),
(1577, 69, 2, 0, 0, 0),
(1578, 70, 2, 400, 0, 400),
(1579, 71, 2, 200, 0, 200),
(1580, 72, 2, 200, 0, 200),
(1581, 73, 2, 0, 0, 0),
(1582, 74, 2, 0, 0, 0),
(1583, 75, 2, 200, 0, 200),
(1584, 76, 2, 0, 0, 0),
(1585, 77, 2, 0, 0, 0),
(1586, 78, 2, 0, 0, 0),
(1587, 62, 3, 0, 0, 0),
(1588, 66, 3, 0, 0, 0),
(1589, 67, 3, 0, 0, 0),
(1590, 69, 3, 400, 0, 400),
(1591, 70, 3, 0, 0, 0),
(1592, 71, 3, 0, 0, 0),
(1593, 72, 3, 200, 0, 200),
(1594, 73, 3, 600, 0, 600),
(1595, 74, 3, 200, 0, 200),
(1596, 75, 3, 0, 0, 0),
(1597, 76, 3, 200, 0, 200),
(1598, 77, 3, 200, 0, 200),
(1599, 78, 3, 600, 0, 600),
(1600, 62, 3, 0, 0, 0),
(1601, 66, 3, 0, 0, 0),
(1602, 67, 3, 0, 0, 0),
(1603, 69, 3, 400, 0, 400),
(1604, 70, 3, 0, 0, 0),
(1605, 71, 3, 0, 0, 0),
(1606, 72, 3, 200, 0, 200),
(1607, 73, 3, 600, 0, 600),
(1608, 74, 3, 200, 0, 200),
(1609, 75, 3, 0, 0, 0),
(1610, 76, 3, 200, 0, 200),
(1611, 77, 3, 200, 0, 200),
(1612, 78, 3, 600, 0, 600),
(1613, 79, 3, 0, 0, 0),
(1614, 62, 4, 200, 0, 200),
(1615, 66, 4, 200, 0, 200),
(1616, 67, 4, 200, 0, 200),
(1617, 69, 4, 0, 0, 0),
(1618, 70, 4, 200, 0, 200),
(1619, 71, 4, 0, 0, 0),
(1620, 72, 4, 0, 0, 0),
(1621, 73, 4, 0, 0, 0),
(1622, 74, 4, 0, 0, 0),
(1623, 75, 4, 200, 0, 200),
(1624, 76, 4, 0, 0, 0),
(1625, 77, 4, 0, 0, 0),
(1626, 78, 4, 200, 0, 200),
(1627, 62, 4, 200, 0, 200),
(1628, 66, 4, 200, 0, 200),
(1629, 67, 4, 200, 0, 200),
(1630, 69, 4, 0, 0, 0),
(1631, 70, 4, 200, 0, 200),
(1632, 71, 4, 0, 0, 0),
(1633, 72, 4, 0, 0, 0),
(1634, 73, 4, 0, 0, 0),
(1635, 74, 4, 0, 0, 0),
(1636, 75, 4, 200, 0, 200),
(1637, 76, 4, 0, 0, 0),
(1638, 77, 4, 0, 0, 0),
(1639, 78, 4, 200, 0, 200),
(1640, 79, 4, 200, 0, 200),
(1641, 80, 4, 200, 0, 200),
(1642, 62, 5, 0, 0, 0),
(1643, 66, 5, 0, 0, 0),
(1644, 67, 5, 0, 0, 0),
(1645, 70, 5, 0, 0, 0),
(1646, 76, 5, 200, 0, 200),
(1647, 77, 5, 200, 0, 200),
(1648, 78, 5, 200, 0, 200),
(1649, 69, 5, 200, 0, 200),
(1650, 71, 5, 200, 0, 200),
(1651, 72, 5, 200, 0, 200),
(1652, 73, 5, 400, 0, 400),
(1653, 74, 5, 400, 0, 400),
(1654, 75, 5, 0, 0, 0),
(1655, 79, 5, 0, 0, 0),
(1656, 80, 5, 0, 0, 0),
(1657, 66, 6, 0, 0, 0),
(1658, 76, 6, 0, 0, 0),
(1659, 77, 6, 0, 0, 0),
(1660, 78, 6, 0, 0, 0),
(1661, 69, 6, 0, 0, 0),
(1662, 71, 6, 0, 0, 0),
(1663, 72, 6, 0, 0, 0),
(1664, 62, 6, 0, 0, 0),
(1665, 67, 6, 0, 0, 0),
(1666, 70, 6, 0, 0, 0),
(1667, 73, 6, 0, 0, 0),
(1668, 74, 6, 0, 0, 0),
(1669, 75, 6, 0, 0, 0),
(1670, 79, 6, 0, 0, 0),
(1671, 80, 6, 0, 0, 0),
(1672, 76, 7, 0, 0, 0),
(1673, 78, 7, 0, 0, 0),
(1674, 69, 7, 0, 0, 0),
(1675, 71, 7, 0, 0, 0),
(1676, 72, 7, 200, 0, 200),
(1677, 62, 7, 200, 0, 200),
(1678, 66, 7, 200, 0, 200),
(1679, 77, 7, 0, 0, 0),
(1680, 67, 7, 200, 0, 200),
(1681, 70, 7, 0, 0, 0),
(1682, 73, 7, 0, 0, 0),
(1683, 80, 7, 400, 0, 400),
(1684, 74, 7, 0, 0, 0),
(1685, 75, 7, 400, 0, 400),
(1686, 79, 7, 400, 0, 400),
(1687, 76, 8, 200, 0, 200),
(1688, 78, 8, 0, 0, 0),
(1689, 69, 8, 0, 0, 0),
(1690, 71, 8, 0, 0, 0),
(1691, 72, 8, 0, 0, 0),
(1692, 62, 8, 0, 0, 0),
(1693, 66, 8, 0, 0, 0),
(1694, 77, 8, 0, 0, 0),
(1695, 67, 8, 0, 0, 0),
(1696, 70, 8, 0, 0, 0),
(1697, 73, 8, 0, 0, 0),
(1698, 80, 8, 0, 0, 0),
(1699, 74, 8, 0, 0, 0),
(1700, 75, 8, 0, 0, 0),
(1701, 79, 8, 0, 0, 0),
(1702, 76, 9, 0, 0, 0),
(1703, 78, 9, 0, 0, 0),
(1704, 69, 9, 0, 0, 0),
(1705, 71, 9, 0, 0, 0),
(1706, 72, 9, 0, 0, 0),
(1707, 62, 9, 0, 0, 0),
(1708, 66, 9, 0, 0, 0),
(1709, 77, 9, 0, 0, 0),
(1710, 67, 9, 0, 0, 0),
(1711, 70, 9, 200, 0, 200),
(1712, 73, 9, 0, 0, 0),
(1713, 80, 9, 0, 0, 0),
(1714, 74, 9, 0, 0, 0),
(1715, 75, 9, 0, 0, 0),
(1716, 79, 9, 0, 0, 0),
(1717, 76, 11, 0, 0, 0),
(1718, 78, 11, 0, 0, 0),
(1719, 69, 11, 0, 0, 0),
(1720, 71, 11, 0, 0, 0),
(1721, 72, 11, 400, 0, 400),
(1722, 62, 11, 200, 0, 200),
(1723, 66, 11, 200, 0, 200),
(1724, 77, 11, 0, 0, 0),
(1725, 67, 11, 200, 0, 200),
(1726, 70, 11, 0, 0, 0),
(1727, 73, 11, 0, 0, 0),
(1728, 80, 11, 400, 0, 400),
(1729, 74, 11, 0, 0, 0),
(1730, 75, 11, 200, 0, 200),
(1731, 79, 11, 400, 0, 400),
(1732, 76, 12, 0, 0, 0),
(1733, 78, 12, 0, 0, 0),
(1734, 69, 12, 0, 0, 0),
(1735, 71, 12, 0, 0, 0),
(1736, 72, 12, 600, 0, 600),
(1737, 62, 12, 200, 0, 200),
(1738, 66, 12, 200, 0, 200),
(1739, 77, 12, 0, 0, 0),
(1740, 67, 12, 200, 0, 200),
(1741, 70, 12, 0, 0, 0),
(1742, 73, 12, 0, 0, 0),
(1743, 80, 12, 600, 0, 600),
(1744, 74, 12, 0, 0, 0),
(1745, 75, 12, 200, 0, 200),
(1746, 79, 12, 600, 0, 600),
(1747, 76, 13, 0, 0, 0),
(1748, 78, 13, 0, 0, 0),
(1749, 69, 13, 0, 0, 0),
(1750, 71, 13, 0, 0, 0),
(1751, 72, 13, 200, 0, 200),
(1752, 62, 13, 200, 0, 200),
(1753, 66, 13, 200, 0, 200),
(1754, 77, 13, 0, 0, 0),
(1755, 67, 13, 200, 0, 200),
(1756, 70, 13, 0, 0, 0),
(1757, 73, 13, 0, 0, 0),
(1758, 80, 13, 200, 0, 200),
(1759, 74, 13, 0, 0, 0),
(1760, 75, 13, 400, 0, 400),
(1761, 79, 13, 200, 0, 200),
(1762, 76, 14, 0, 0, 0),
(1763, 78, 14, 0, 0, 0),
(1764, 69, 14, 0, 0, 0),
(1765, 71, 14, 0, 0, 0),
(1766, 72, 14, 200, 0, 200),
(1767, 62, 14, 400, 0, 400),
(1768, 66, 14, 200, 0, 200),
(1769, 77, 14, 0, 0, 0),
(1770, 67, 14, 400, 0, 400),
(1771, 70, 14, 0, 0, 0),
(1772, 73, 14, 0, 0, 0),
(1773, 80, 14, 200, 0, 200),
(1774, 74, 14, 0, 0, 0),
(1775, 75, 14, 200, 0, 200),
(1776, 79, 14, 200, 0, 200),
(1777, 76, 15, 0, 0, 0),
(1778, 78, 15, 0, 0, 0),
(1779, 69, 15, 0, 0, 0),
(1780, 71, 15, 0, 0, 0),
(1781, 72, 15, 200, 0, 200),
(1782, 62, 15, 200, 0, 200),
(1783, 66, 15, 200, 0, 200),
(1784, 77, 15, 0, 0, 0),
(1785, 67, 15, 200, 0, 200),
(1786, 70, 15, 0, 0, 0),
(1787, 73, 15, 0, 0, 0),
(1788, 80, 15, 200, 0, 200),
(1789, 74, 15, 0, 0, 0),
(1790, 75, 15, 200, 0, 200),
(1791, 79, 15, 200, 0, 200),
(1792, 76, 17, 0, 0, 0),
(1793, 78, 17, 0, 0, 0),
(1794, 69, 17, 0, 0, 0),
(1795, 71, 17, 0, 0, 0),
(1796, 72, 17, 200, 0, 200),
(1797, 62, 17, 200, 0, 200),
(1798, 66, 17, 200, 0, 200),
(1799, 77, 17, 0, 0, 0),
(1800, 67, 17, 200, 0, 200),
(1801, 70, 17, 0, 0, 0),
(1802, 73, 17, 0, 0, 0),
(1803, 80, 17, 200, 0, 200),
(1804, 74, 17, 0, 0, 0),
(1805, 75, 17, 200, 0, 200),
(1806, 79, 17, 200, 0, 200),
(1807, 76, 18, 0, 250, 250),
(1808, 78, 18, 0, 0, 0),
(1809, 69, 18, 0, 0, 0),
(1810, 71, 18, 0, 0, 0),
(1811, 72, 18, 200, 0, 200),
(1812, 62, 18, 600, 250, 850),
(1813, 66, 18, 200, 0, 200),
(1814, 77, 18, 0, 0, 0),
(1815, 67, 18, 400, 0, 400),
(1816, 70, 18, 0, 0, 0),
(1817, 73, 18, 0, 0, 0),
(1818, 80, 18, 200, 0, 200),
(1819, 74, 18, 0, 0, 0),
(1820, 75, 18, 400, 250, 650),
(1821, 79, 18, 200, 250, 450);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos_escuderias_media`
--

DROP TABLE IF EXISTS `puntos_escuderias_media`;
CREATE TABLE IF NOT EXISTS `puntos_escuderias_media` (
  `pnt_esc_med_cod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pnt_esc_med_esc_cod` int(11) NOT NULL,
  `pnt_esc_med_car_cod` int(11) NOT NULL,
  `pnt_esc_med_pnt_car_1` int(11) NOT NULL,
  `pnt_esc_med_car_1_cod` int(11) NOT NULL,
  `pnt_esc_med_pnt_car_2` int(11) NOT NULL,
  `pnt_esc_med_car_2_cod` int(11) NOT NULL,
  `pnt_esc_med_pnt_car_3` int(11) NOT NULL,
  `pnt_esc_med_car_3_cod` int(11) NOT NULL,
  `pnt_esc_med_pnt_car_4` int(11) NOT NULL,
  `pnt_esc_med_car_4_cod` int(11) NOT NULL,
  `pnt_esc_med_bonus` tinyint(1) NOT NULL,
  PRIMARY KEY (`pnt_esc_med_cod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos_escuderias_media_2013`
--

DROP TABLE IF EXISTS `puntos_escuderias_media_2013`;
CREATE TABLE IF NOT EXISTS `puntos_escuderias_media_2013` (
  `pnt_esc_med_cod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pnt_esc_med_esc_cod` int(11) NOT NULL,
  `pnt_esc_med_car_cod` int(11) NOT NULL,
  `pnt_esc_med_pnt_car_1` int(11) NOT NULL,
  `pnt_esc_med_car_1_cod` int(11) NOT NULL,
  `pnt_esc_med_pnt_car_2` int(11) NOT NULL,
  `pnt_esc_med_car_2_cod` int(11) NOT NULL,
  `pnt_esc_med_pnt_car_3` int(11) NOT NULL,
  `pnt_esc_med_car_3_cod` int(11) NOT NULL,
  `pnt_esc_med_pnt_car_4` int(11) NOT NULL,
  `pnt_esc_med_car_4_cod` int(11) NOT NULL,
  `pnt_esc_med_bonus` tinyint(1) NOT NULL,
  PRIMARY KEY (`pnt_esc_med_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=546 ;

--
-- Volcado de datos para la tabla `puntos_escuderias_media_2013`
--

INSERT INTO `puntos_escuderias_media_2013` (`pnt_esc_med_cod`, `pnt_esc_med_esc_cod`, `pnt_esc_med_car_cod`, `pnt_esc_med_pnt_car_1`, `pnt_esc_med_car_1_cod`, `pnt_esc_med_pnt_car_2`, `pnt_esc_med_car_2_cod`, `pnt_esc_med_pnt_car_3`, `pnt_esc_med_car_3_cod`, `pnt_esc_med_pnt_car_4`, `pnt_esc_med_car_4_cod`, `pnt_esc_med_bonus`) VALUES
(281, 1, 1, 930, 20, 1231, 19, 829, 18, 1373, 17, 0),
(282, 3, 1, 1085, 20, 1065, 19, 677, 18, 1108, 17, 0),
(283, 2, 1, 1065, 20, 873, 19, 808, 18, 915, 17, 0),
(284, 5, 1, 290, 20, 196, 19, 91, 18, 84, 17, 0),
(285, 4, 1, 135, 20, 633, 19, 676, 18, 403, 17, 0),
(286, 7, 1, 428, 20, 273, 19, 120, 18, 238, 17, 0),
(287, 6, 1, 120, 20, 126, 19, 330, 18, 76, 17, 0),
(288, 9, 1, 252, 20, 60, 19, 203, 18, 117, 17, 0),
(289, 8, 1, -45, 20, 270, 19, 675, 18, 172, 17, 0),
(290, 10, 1, 166, 20, 128, 19, 136, 18, 108, 17, 0),
(291, 11, 1, 148, 20, 104, 19, 78, 18, 71, 17, 0),
(293, 1, 2, 1110, 1, 930, 20, 1231, 19, 829, 18, 0),
(294, 3, 2, 215, 1, 1085, 20, 1065, 19, 677, 18, 0),
(295, 2, 2, 1065, 1, 1065, 20, 873, 19, 808, 18, 0),
(296, 5, 2, 0, 1, 290, 20, 196, 19, 91, 18, 1),
(297, 4, 2, 0, 1, 135, 20, 633, 19, 676, 18, 1),
(298, 7, 2, 0, 1, 428, 20, 273, 19, 120, 18, 1),
(299, 6, 2, 44, 1, 120, 20, 126, 19, 330, 18, 0),
(300, 9, 2, 60, 1, 252, 20, 60, 19, 203, 18, 0),
(301, 8, 2, 58, 1, -45, 20, 270, 19, 675, 18, 0),
(302, 10, 2, 133, 1, 166, 20, 128, 19, 136, 18, 0),
(303, 11, 2, 124, 1, 148, 20, 104, 19, 78, 18, 0),
(304, 1, 3, 1328, 2, 1110, 1, 930, 20, 1231, 19, 0),
(305, 3, 3, 367, 2, 215, 1, 1085, 20, 1065, 19, 0),
(306, 2, 3, 671, 2, 1065, 1, 1065, 20, 873, 19, 0),
(307, 5, 3, 0, 2, 561, 1, 290, 20, 196, 19, 1),
(308, 4, 3, 0, 2, 863, 1, 135, 20, 633, 19, 1),
(309, 7, 3, 25, 2, 410, 1, 428, 20, 273, 19, 1),
(310, 6, 3, 0, 2, 44, 1, 120, 20, 126, 19, 1),
(311, 9, 3, 166, 2, 60, 1, 252, 20, 60, 19, 0),
(312, 8, 3, 100, 2, 58, 1, -45, 20, 270, 19, 0),
(313, 10, 3, 156, 2, 133, 1, 166, 20, 128, 19, 0),
(314, 11, 3, 146, 2, 124, 1, 148, 20, 104, 19, 0),
(315, 1, 4, 548, 3, 1328, 2, 1110, 1, 930, 20, 0),
(316, 3, 4, 415, 3, 367, 2, 215, 1, 1085, 20, 0),
(317, 2, 4, 1070, 3, 671, 2, 1065, 1, 1065, 20, 0),
(318, 5, 4, 0, 3, 990, 2, 561, 1, 290, 20, 1),
(319, 4, 4, 0, 3, 505, 2, 863, 1, 135, 20, 1),
(320, 7, 4, 148, 3, 25, 2, 410, 1, 428, 20, 1),
(321, 6, 4, 0, 3, 228, 2, 44, 1, 120, 20, 1),
(322, 9, 4, 0, 3, 166, 2, 60, 1, 252, 20, 1),
(323, 8, 4, 107, 3, 100, 2, 58, 1, -45, 20, 0),
(324, 10, 4, 123, 3, 156, 2, 133, 1, 166, 20, 0),
(325, 11, 4, 114, 3, 146, 2, 124, 1, 148, 20, 0),
(326, 1, 5, 1123, 4, 548, 3, 1328, 2, 1110, 1, 0),
(327, 3, 5, 395, 4, 415, 3, 367, 2, 215, 1, 0),
(328, 2, 5, 493, 4, 1070, 3, 671, 2, 1065, 1, 0),
(329, 5, 5, 0, 4, 756, 3, 990, 2, 561, 1, 1),
(330, 4, 5, 0, 4, 880, 3, 505, 2, 863, 1, 1),
(331, 7, 5, 0, 4, 148, 3, 25, 2, 410, 1, 1),
(332, 6, 5, 122, 4, 105, 3, 228, 2, 44, 1, 1),
(333, 9, 5, 30, 4, 331, 3, 166, 2, 60, 1, 1),
(334, 8, 5, 0, 4, 107, 3, 100, 2, 58, 1, 1),
(335, 10, 5, 89, 4, 123, 3, 156, 2, 133, 1, 0),
(336, 11, 5, 91, 4, 114, 3, 146, 2, 124, 1, 0),
(337, 1, 6, 925, 5, 1123, 4, 548, 3, 1328, 2, 0),
(338, 3, 6, 348, 5, 395, 4, 415, 3, 367, 2, 0),
(339, 2, 6, 0, 5, 493, 4, 1070, 3, 671, 2, 1),
(340, 5, 6, 736, 5, 705, 4, 756, 3, 990, 2, 1),
(341, 4, 6, 649, 5, 965, 4, 880, 3, 505, 2, 1),
(342, 7, 6, 0, 5, 584, 4, 148, 3, 25, 2, 1),
(343, 6, 6, 0, 5, 122, 4, 105, 3, 228, 2, 1),
(344, 9, 6, 111, 5, 30, 4, 331, 3, 166, 2, 1),
(345, 8, 6, 0, 5, 131, 4, 107, 3, 100, 2, 1),
(346, 10, 6, 72, 5, 89, 4, 123, 3, 156, 2, 0),
(347, 11, 6, 107, 5, 91, 4, 114, 3, 146, 2, 0),
(348, 1, 7, 0, 6, 925, 5, 1123, 4, 548, 3, 1),
(349, 3, 7, 385, 6, 348, 5, 395, 4, 415, 3, 0),
(350, 2, 7, 299, 6, 1093, 5, 493, 4, 1070, 3, 1),
(351, 5, 7, 0, 6, 736, 5, 705, 4, 756, 3, 1),
(352, 4, 7, 222, 6, 649, 5, 965, 4, 880, 3, 1),
(353, 7, 7, 0, 6, 277, 5, 584, 4, 148, 3, 1),
(354, 6, 7, 127, 6, 260, 5, 122, 4, 105, 3, 1),
(355, 9, 7, 191, 6, 111, 5, 30, 4, 331, 3, 1),
(356, 8, 7, 70, 6, 105, 5, 131, 4, 107, 3, 1),
(357, 10, 7, 39, 6, 72, 5, 89, 4, 123, 3, 0),
(358, 11, 7, 120, 6, 107, 5, 91, 4, 114, 3, 0),
(359, 1, 8, 0, 7, 1323, 6, 925, 5, 1123, 4, 1),
(360, 3, 8, 113, 7, 385, 6, 348, 5, 395, 4, 0),
(361, 2, 8, 748, 7, 299, 6, 1093, 5, 493, 4, 1),
(362, 5, 8, 0, 7, 1320, 6, 736, 5, 705, 4, 1),
(363, 4, 8, 237, 7, 222, 6, 649, 5, 965, 4, 1),
(364, 7, 8, 0, 7, 525, 6, 277, 5, 584, 4, 1),
(365, 6, 8, 53, 7, 127, 6, 260, 5, 122, 4, 1),
(366, 9, 8, 0, 7, 191, 6, 111, 5, 30, 4, 1),
(367, 8, 8, 0, 7, 70, 6, 105, 5, 131, 4, 1),
(368, 10, 8, 63, 7, 39, 6, 72, 5, 89, 4, 0),
(369, 11, 8, 102, 7, 120, 6, 107, 5, 91, 4, 0),
(370, 1, 9, 898, 8, 0, 7, 1323, 6, 925, 5, 1),
(371, 3, 9, 79, 8, 113, 7, 385, 6, 348, 5, 0),
(372, 2, 9, 735, 8, 748, 7, 299, 6, 1093, 5, 1),
(373, 5, 9, 0, 8, 1058, 7, 1320, 6, 736, 5, 1),
(374, 4, 9, 441, 8, 237, 7, 222, 6, 649, 5, 1),
(375, 7, 9, 0, 8, 390, 7, 525, 6, 277, 5, 1),
(376, 6, 9, 181, 8, 53, 7, 127, 6, 260, 5, 1),
(377, 9, 9, 0, 8, 358, 7, 191, 6, 111, 5, 1),
(378, 8, 9, 0, 8, 255, 7, 70, 6, 105, 5, 1),
(379, 10, 9, 0, 8, 63, 7, 39, 6, 72, 5, 1),
(380, 11, 9, 119, 8, 102, 7, 120, 6, 107, 5, 0),
(381, 1, 10, 0, 9, 898, 8, 1343, 7, 1323, 6, 1),
(382, 3, 10, 0, 9, 79, 8, 113, 7, 385, 6, 1),
(383, 2, 10, 628, 9, 735, 8, 748, 7, 299, 6, 1),
(384, 5, 10, 893, 9, 1323, 8, 1058, 7, 1320, 6, 1),
(385, 4, 10, 0, 9, 441, 8, 237, 7, 222, 6, 1),
(386, 7, 10, 26, 9, 470, 8, 390, 7, 525, 6, 1),
(387, 6, 10, 59, 9, 181, 8, 53, 7, 127, 6, 1),
(388, 9, 10, 137, 9, 248, 8, 358, 7, 191, 6, 1),
(389, 8, 10, 136, 9, 138, 8, 255, 7, 70, 6, 1),
(390, 10, 10, 0, 9, 124, 8, 63, 7, 39, 6, 1),
(391, 11, 10, 139, 9, 119, 8, 102, 7, 120, 6, 0),
(392, 1, 11, 0, 10, 1143, 9, 898, 8, 1343, 7, 1),
(393, 3, 11, 0, 10, 385, 9, 79, 8, 113, 7, 1),
(394, 2, 11, 745, 10, 628, 9, 735, 8, 748, 7, 1),
(395, 5, 11, 1133, 10, 893, 9, 1323, 8, 1058, 7, 1),
(396, 4, 11, 240, 10, 1000, 9, 441, 8, 237, 7, 1),
(397, 7, 11, 228, 10, 26, 9, 470, 8, 390, 7, 1),
(398, 6, 11, 122, 10, 59, 9, 181, 8, 53, 7, 1),
(399, 9, 11, 223, 10, 137, 9, 248, 8, 358, 7, 1),
(400, 8, 11, 114, 10, 136, 9, 138, 8, 255, 7, 1),
(401, 10, 11, 44, 10, 141, 9, 124, 8, 63, 7, 1),
(402, 11, 11, 72, 10, 139, 9, 119, 8, 102, 7, 0),
(403, 1, 12, 1373, 11, 1350, 10, 1143, 9, 898, 8, 1),
(404, 3, 12, 0, 11, 398, 10, 385, 9, 79, 8, 1),
(405, 2, 12, 0, 11, 745, 10, 628, 9, 735, 8, 1),
(406, 5, 12, 603, 11, 1133, 10, 893, 9, 1323, 8, 1),
(407, 4, 12, 225, 11, 240, 10, 1000, 9, 441, 8, 1),
(408, 7, 12, 32, 11, 228, 10, 26, 9, 470, 8, 1),
(409, 6, 12, 0, 11, 122, 10, 59, 9, 181, 8, 1),
(410, 9, 12, 262, 11, 223, 10, 137, 9, 248, 8, 1),
(411, 8, 12, 106, 11, 114, 10, 136, 9, 138, 8, 1),
(412, 10, 12, 108, 11, 44, 10, 141, 9, 124, 8, 1),
(413, 11, 12, 106, 11, 72, 10, 139, 9, 119, 8, 0),
(414, 1, 13, 1030, 12, 1373, 11, 1350, 10, 1143, 9, 1),
(415, 3, 13, 0, 12, 211, 11, 398, 10, 385, 9, 1),
(416, 2, 13, 0, 12, 1065, 11, 745, 10, 628, 9, 1),
(417, 5, 13, 983, 12, 603, 11, 1133, 10, 893, 9, 1),
(418, 4, 13, 0, 12, 225, 11, 240, 10, 1000, 9, 1),
(419, 7, 13, 160, 12, 32, 11, 228, 10, 26, 9, 1),
(420, 6, 13, 0, 12, 557, 11, 122, 10, 59, 9, 1),
(421, 9, 13, 50, 12, 262, 11, 223, 10, 137, 9, 1),
(422, 8, 13, 147, 12, 106, 11, 114, 10, 136, 9, 1),
(423, 10, 13, 108, 12, 108, 11, 44, 10, 141, 9, 1),
(424, 11, 13, 128, 12, 106, 11, 72, 10, 139, 9, 0),
(447, 1, 14, 873, 13, 1030, 12, 1373, 11, 1350, 10, 1),
(448, 3, 14, 280, 13, 430, 12, 211, 11, 398, 10, 1),
(449, 2, 14, 565, 13, 880, 12, 1065, 11, 745, 10, 1),
(450, 5, 14, 848, 13, 983, 12, 603, 11, 1133, 10, 1),
(451, 4, 14, 0, 13, 624, 12, 225, 11, 240, 10, 1),
(452, 7, 14, 22, 13, 160, 12, 32, 11, 228, 10, 1),
(453, 6, 14, 0, 13, 193, 12, 557, 11, 122, 10, 1),
(454, 9, 14, 64, 13, 50, 12, 262, 11, 223, 10, 1),
(455, 8, 14, 145, 13, 147, 12, 106, 11, 114, 10, 1),
(456, 10, 14, 0, 13, 108, 12, 108, 11, 44, 10, 1),
(457, 11, 14, 139, 13, 128, 12, 106, 11, 72, 10, 0),
(469, 1, 15, 1553, 14, 873, 13, 1030, 12, 1373, 11, 1),
(470, 3, 15, 180, 14, 280, 13, 430, 12, 211, 11, 1),
(471, 2, 15, 615, 14, 565, 13, 880, 12, 1065, 11, 1),
(472, 5, 15, 394, 14, 848, 13, 983, 12, 603, 11, 1),
(473, 4, 15, 0, 14, 1115, 13, 624, 12, 225, 11, 1),
(474, 7, 15, 141, 14, 22, 13, 160, 12, 32, 11, 1),
(475, 6, 15, 0, 14, 520, 13, 193, 12, 557, 11, 1),
(476, 9, 15, 135, 14, 64, 13, 50, 12, 262, 11, 1),
(477, 8, 15, 76, 14, 145, 13, 147, 12, 106, 11, 1),
(478, 10, 15, 49, 14, 141, 13, 108, 12, 108, 11, 1),
(479, 11, 15, 38, 14, 139, 13, 128, 12, 106, 11, 0),
(491, 1, 16, 890, 15, 1553, 14, 873, 13, 1030, 12, 1),
(492, 3, 16, 0, 15, 180, 14, 280, 13, 430, 12, 1),
(493, 2, 16, 555, 15, 615, 14, 565, 13, 880, 12, 1),
(494, 5, 16, 0, 15, 394, 14, 848, 13, 983, 12, 1),
(495, 4, 16, 0, 15, 893, 14, 1115, 13, 624, 12, 1),
(496, 7, 16, 0, 15, 141, 14, 22, 13, 160, 12, 1),
(497, 6, 16, 131, 15, 558, 14, 520, 13, 193, 12, 1),
(498, 9, 16, 157, 15, 135, 14, 64, 13, 50, 12, 1),
(499, 8, 16, 120, 15, 76, 14, 145, 13, 147, 12, 1),
(500, 10, 16, 79, 15, 49, 14, 141, 13, 108, 12, 1),
(501, 11, 16, 118, 15, 38, 14, 139, 13, 128, 12, 0),
(513, 1, 17, 1428, 16, 890, 15, 1553, 14, 873, 13, 1),
(514, 3, 17, 216, 16, 401, 15, 180, 14, 280, 13, 1),
(515, 2, 17, 680, 16, 555, 15, 615, 14, 565, 13, 1),
(516, 5, 17, 0, 16, 1118, 15, 394, 14, 848, 13, 1),
(517, 4, 17, 448, 16, 880, 15, 893, 14, 1115, 13, 1),
(518, 7, 17, 0, 16, 315, 15, 141, 14, 22, 13, 1),
(519, 6, 17, 197, 16, 131, 15, 558, 14, 520, 13, 1),
(520, 9, 17, 91, 16, 157, 15, 135, 14, 64, 13, 1),
(521, 8, 17, 110, 16, 120, 15, 76, 14, 145, 13, 1),
(522, 10, 17, 87, 16, 79, 15, 49, 14, 141, 13, 1),
(523, 11, 17, 87, 16, 118, 15, 38, 14, 139, 13, 0),
(535, 1, 18, 1498, 17, 1428, 16, 890, 15, 1553, 14, 1),
(536, 3, 18, 0, 17, 216, 16, 401, 15, 180, 14, 1),
(537, 2, 18, 446, 17, 680, 16, 555, 15, 615, 14, 1),
(538, 5, 18, 608, 17, 930, 16, 1118, 15, 394, 14, 1),
(539, 4, 18, 731, 17, 448, 16, 880, 15, 893, 14, 1),
(540, 7, 18, 20, 17, 410, 16, 315, 15, 141, 14, 1),
(541, 6, 18, 0, 17, 197, 16, 131, 15, 558, 14, 1),
(542, 9, 18, 102, 17, 91, 16, 157, 15, 135, 14, 1),
(543, 8, 18, 0, 17, 110, 16, 120, 15, 76, 14, 1),
(544, 10, 18, 93, 17, 87, 16, 79, 15, 49, 14, 1),
(545, 11, 18, 91, 17, 87, 16, 118, 15, 38, 14, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos_motores_media`
--

DROP TABLE IF EXISTS `puntos_motores_media`;
CREATE TABLE IF NOT EXISTS `puntos_motores_media` (
  `pnt_mot_med_cod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pnt_mot_med_mot_cod` int(11) NOT NULL,
  `pnt_mot_med_car_cod` int(11) NOT NULL,
  `pnt_mot_med_pnt_car_1` int(11) NOT NULL,
  `pnt_mot_med_car_1_cod` int(11) NOT NULL,
  `pnt_mot_med_pnt_car_2` int(11) NOT NULL,
  `pnt_mot_med_car_2_cod` int(11) NOT NULL,
  `pnt_mot_med_pnt_car_3` int(11) NOT NULL,
  `pnt_mot_med_car_3_cod` int(11) NOT NULL,
  `pnt_mot_med_pnt_car_4` int(11) NOT NULL,
  `pnt_mot_med_car_4_cod` int(11) NOT NULL,
  `pnt_mot_med_bonus` tinyint(1) NOT NULL,
  PRIMARY KEY (`pnt_mot_med_cod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci ROW_FORMAT=FIXED AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos_motores_media_2013`
--

DROP TABLE IF EXISTS `puntos_motores_media_2013`;
CREATE TABLE IF NOT EXISTS `puntos_motores_media_2013` (
  `pnt_mot_med_cod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pnt_mot_med_mot_cod` int(11) NOT NULL,
  `pnt_mot_med_car_cod` int(11) NOT NULL,
  `pnt_mot_med_pnt_car_1` int(11) NOT NULL,
  `pnt_mot_med_car_1_cod` int(11) NOT NULL,
  `pnt_mot_med_pnt_car_2` int(11) NOT NULL,
  `pnt_mot_med_car_2_cod` int(11) NOT NULL,
  `pnt_mot_med_pnt_car_3` int(11) NOT NULL,
  `pnt_mot_med_car_3_cod` int(11) NOT NULL,
  `pnt_mot_med_pnt_car_4` int(11) NOT NULL,
  `pnt_mot_med_car_4_cod` int(11) NOT NULL,
  `pnt_mot_med_bonus` tinyint(1) NOT NULL,
  PRIMARY KEY (`pnt_mot_med_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci ROW_FORMAT=FIXED AUTO_INCREMENT=193 ;

--
-- Volcado de datos para la tabla `puntos_motores_media_2013`
--

INSERT INTO `puntos_motores_media_2013` (`pnt_mot_med_cod`, `pnt_mot_med_mot_cod`, `pnt_mot_med_car_cod`, `pnt_mot_med_pnt_car_1`, `pnt_mot_med_car_1_cod`, `pnt_mot_med_pnt_car_2`, `pnt_mot_med_car_2_cod`, `pnt_mot_med_pnt_car_3`, `pnt_mot_med_car_3_cod`, `pnt_mot_med_pnt_car_4`, `pnt_mot_med_car_4_cod`, `pnt_mot_med_bonus`) VALUES
(97, 1, 1, 297, 20, 565, 19, 579, 18, 514, 17, 0),
(98, 3, 1, 601, 20, 511, 19, 296, 18, 477, 17, 0),
(99, 2, 1, 479, 20, 353, 19, 447, 18, 369, 17, 0),
(100, 4, 1, 158, 20, 95, 19, 92, 18, 93, 17, 0),
(101, 1, 2, 541, 1, 297, 20, 565, 19, 579, 18, 0),
(102, 3, 2, 130, 1, 601, 20, 511, 19, 296, 18, 0),
(103, 2, 2, 524, 1, 479, 20, 353, 19, 447, 18, 0),
(104, 4, 2, 124, 1, 158, 20, 95, 19, 92, 18, 0),
(105, 1, 3, 522, 2, 541, 1, 297, 20, 565, 19, 0),
(106, 3, 3, 297, 2, 130, 1, 601, 20, 511, 19, 0),
(107, 2, 3, 463, 2, 524, 1, 479, 20, 353, 19, 0),
(108, 4, 3, 146, 2, 124, 1, 158, 20, 95, 19, 0),
(109, 1, 4, 414, 3, 522, 2, 541, 1, 297, 20, 0),
(110, 3, 4, 260, 3, 297, 2, 130, 1, 601, 20, 0),
(111, 2, 4, 576, 3, 463, 2, 524, 1, 479, 20, 0),
(112, 4, 4, 114, 3, 146, 2, 124, 1, 158, 20, 0),
(113, 1, 5, 577, 4, 414, 3, 522, 2, 541, 1, 0),
(114, 3, 5, 258, 4, 260, 3, 297, 2, 130, 1, 0),
(115, 2, 5, 453, 4, 576, 3, 463, 2, 524, 1, 0),
(116, 4, 5, 91, 4, 114, 3, 146, 2, 124, 1, 0),
(117, 1, 6, 438, 5, 577, 4, 414, 3, 522, 2, 0),
(118, 3, 6, 304, 5, 258, 4, 260, 3, 297, 2, 0),
(119, 2, 6, 554, 5, 453, 4, 576, 3, 463, 2, 0),
(120, 4, 6, 107, 5, 91, 4, 114, 3, 146, 2, 0),
(121, 1, 7, 413, 6, 438, 5, 577, 4, 414, 3, 0),
(122, 3, 7, 256, 6, 304, 5, 258, 4, 260, 3, 0),
(123, 2, 7, 584, 6, 554, 5, 453, 4, 576, 3, 0),
(124, 4, 7, 120, 6, 107, 5, 91, 4, 114, 3, 0),
(125, 1, 8, 474, 7, 413, 6, 438, 5, 577, 4, 0),
(126, 3, 8, 83, 7, 256, 6, 304, 5, 258, 4, 0),
(127, 2, 8, 638, 7, 584, 6, 554, 5, 453, 4, 0),
(128, 4, 8, 102, 7, 120, 6, 107, 5, 91, 4, 0),
(129, 1, 9, 400, 8, 474, 7, 413, 6, 438, 5, 0),
(130, 3, 9, 130, 8, 83, 7, 256, 6, 304, 5, 0),
(131, 2, 9, 694, 8, 638, 7, 584, 6, 554, 5, 0),
(132, 4, 9, 119, 8, 102, 7, 120, 6, 107, 5, 0),
(133, 1, 10, 0, 9, 400, 8, 474, 7, 413, 6, 1),
(134, 3, 10, 222, 9, 130, 8, 83, 7, 256, 6, 0),
(135, 2, 10, 421, 9, 694, 8, 638, 7, 584, 6, 0),
(136, 4, 10, 139, 9, 119, 8, 102, 7, 120, 6, 0),
(137, 1, 11, 0, 10, 605, 9, 400, 8, 474, 7, 1),
(138, 3, 11, 0, 10, 222, 9, 130, 8, 83, 7, 1),
(139, 2, 11, 582, 10, 421, 9, 694, 8, 638, 7, 0),
(140, 4, 11, 72, 10, 139, 9, 119, 8, 102, 7, 0),
(141, 1, 12, 453, 11, 0, 10, 605, 9, 400, 8, 1),
(142, 3, 12, 0, 11, 260, 10, 222, 9, 130, 8, 1),
(143, 2, 12, 490, 11, 582, 10, 421, 9, 694, 8, 0),
(144, 4, 12, 106, 11, 72, 10, 139, 9, 119, 8, 0),
(145, 1, 13, 0, 12, 453, 11, 437, 10, 605, 9, 1),
(146, 3, 13, 0, 12, 384, 11, 260, 10, 222, 9, 1),
(147, 2, 13, 518, 12, 490, 11, 582, 10, 421, 9, 0),
(148, 4, 13, 128, 12, 106, 11, 72, 10, 139, 9, 0),
(157, 1, 14, 0, 13, 477, 12, 453, 11, 437, 10, 1),
(158, 3, 14, 0, 13, 312, 12, 384, 11, 260, 10, 1),
(159, 2, 14, 375, 13, 518, 12, 490, 11, 582, 10, 0),
(160, 4, 14, 139, 13, 128, 12, 106, 11, 72, 10, 0),
(165, 1, 15, 0, 14, 568, 13, 477, 12, 453, 11, 1),
(166, 3, 15, 0, 14, 400, 13, 312, 12, 384, 11, 1),
(167, 2, 15, 321, 14, 375, 13, 518, 12, 490, 11, 0),
(168, 4, 15, 38, 14, 139, 13, 128, 12, 106, 11, 0),
(173, 1, 16, 492, 15, 642, 14, 568, 13, 477, 12, 1),
(174, 3, 16, 266, 15, 369, 14, 400, 13, 312, 12, 1),
(175, 2, 16, 536, 15, 321, 14, 375, 13, 518, 12, 0),
(176, 4, 16, 118, 15, 38, 14, 139, 13, 128, 12, 0),
(181, 1, 17, 518, 16, 492, 15, 642, 14, 568, 13, 1),
(182, 3, 17, 206, 16, 266, 15, 369, 14, 400, 13, 1),
(183, 2, 17, 528, 16, 536, 15, 321, 14, 375, 13, 0),
(184, 4, 17, 87, 16, 118, 15, 38, 14, 139, 13, 0),
(189, 1, 18, 638, 17, 518, 16, 492, 15, 642, 14, 1),
(190, 3, 18, 0, 17, 206, 16, 266, 15, 369, 14, 1),
(191, 2, 18, 294, 17, 528, 16, 536, 15, 321, 14, 0),
(192, 4, 18, 91, 17, 87, 16, 118, 15, 38, 14, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos_new`
--

DROP TABLE IF EXISTS `puntos_new`;
CREATE TABLE IF NOT EXISTS `puntos_new` (
  `pnt_new_cod` int(11) NOT NULL AUTO_INCREMENT,
  `pnt_new_pos` int(11) NOT NULL,
  `pnt_new_pnt` int(11) NOT NULL,
  `pnt_new_eve` varchar(16) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`pnt_new_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=41 ;

--
-- Volcado de datos para la tabla `puntos_new`
--

INSERT INTO `puntos_new` (`pnt_new_cod`, `pnt_new_pos`, `pnt_new_pnt`, `pnt_new_eve`) VALUES
(1, 1, 1000, 'carrera'),
(2, 2, 900, 'carrera'),
(3, 3, 800, 'carrera'),
(4, 4, 700, 'carrera'),
(5, 5, 600, 'carrera'),
(6, 6, 500, 'carrera'),
(7, 7, 400, 'carrera'),
(8, 8, 300, 'carrera'),
(9, 9, 250, 'carrera'),
(10, 11, 100, 'carrera'),
(11, 12, 96, 'carrera'),
(12, 13, 93, 'carrera'),
(13, 14, 91, 'carrera'),
(14, 15, 90, 'carrera'),
(15, 16, 89, 'carrera'),
(16, 17, 88, 'carrera'),
(17, 18, 87, 'carrera'),
(18, 19, 86, 'carrera'),
(19, 20, 85, 'carrera'),
(20, 21, 84, 'carrera'),
(21, 22, 83, 'carrera'),
(22, 23, 82, 'carrera'),
(23, 24, 81, 'carrera'),
(24, 1, 500, 'clas'),
(25, 2, 450, 'clas'),
(26, 3, 400, 'clas'),
(27, 4, 275, 'clas'),
(28, 5, 225, 'clas'),
(29, 6, 175, 'clas'),
(30, 7, 135, 'clas'),
(31, 8, 90, 'clas'),
(32, 9, 60, 'clas'),
(33, 10, 30, 'clas'),
(34, 10, 200, 'carrera'),
(35, 1, 250, 'vuelta_rapida'),
(36, 1, 500, 'record_circuito'),
(37, 1, 700, 'pil_valor_min'),
(38, 2, 1000, 'esc_valor_min'),
(39, 3, 1200, 'mot_valor_min'),
(40, 0, 1, 'estado_sistema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos_pilotos`
--

DROP TABLE IF EXISTS `puntos_pilotos`;
CREATE TABLE IF NOT EXISTS `puntos_pilotos` (
  `pnt_pil_cod` int(11) NOT NULL AUTO_INCREMENT,
  `pnt_pil_pil_cod` int(11) NOT NULL,
  `pnt_pil_car_cod` int(11) NOT NULL,
  `pnt_pil_pnt_clas` int(11) NOT NULL,
  `pnt_pil_pnt_pue` int(11) NOT NULL,
  `pnt_pil_pnt_ade` int(11) NOT NULL,
  `pnt_pil_pnt_vue` int(11) NOT NULL,
  `pnt_pil_pnt_rec` int(11) NOT NULL,
  PRIMARY KEY (`pnt_pil_cod`),
  KEY `pnt_pil_pil_fk` (`pnt_pil_pil_cod`),
  KEY `pnt_pil_car_fk` (`pnt_pil_car_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=2437 ;

--
-- Volcado de datos para la tabla `puntos_pilotos`
--

INSERT INTO `puntos_pilotos` (`pnt_pil_cod`, `pnt_pil_pil_cod`, `pnt_pil_car_cod`, `pnt_pil_pnt_clas`, `pnt_pil_pnt_pue`, `pnt_pil_pnt_ade`, `pnt_pil_pnt_vue`, `pnt_pil_pnt_rec`) VALUES
(2041, 7, 1, 135, 1000, 60, 250, 0),
(2042, 3, 1, 225, 900, 30, 0, 0),
(2043, 1, 1, 500, 800, -10, 0, 0),
(2044, 4, 1, 275, 700, 0, 0, 0),
(2045, 10, 1, 400, 600, -10, 0, 0),
(2046, 2, 1, 450, 500, -20, 0, 0),
(2047, 15, 1, 0, 400, 50, 0, 0),
(2048, 14, 1, 60, 300, 10, 0, 0),
(2049, 5, 1, 30, 250, 10, 0, 0),
(2050, 8, 1, 90, 200, -10, 0, 0),
(2051, 6, 1, 0, 100, 40, 0, 0),
(2052, 18, 1, 0, 96, 10, 0, 0),
(2053, 12, 1, 0, 93, 50, 0, 0),
(2054, 17, 1, 0, 91, 20, 0, 0),
(2055, 22, 1, 0, 90, 40, 0, 0),
(2056, 20, 1, 0, 89, 60, 0, 0),
(2057, 23, 1, 0, 88, 30, 0, 0),
(2058, 21, 1, 0, 87, 30, 0, 0),
(2059, 19, 1, 0, 39, -25, 0, 0),
(2060, 9, 1, 175, 26, -70, 0, 0),
(2061, 16, 1, 0, 24, -20, 0, 0),
(2062, 11, 1, 0, 0, -55, 0, 0),
(2063, 1, 2, 500, 1000, 0, 0, 0),
(2064, 2, 2, 225, 900, 30, 0, 0),
(2065, 10, 2, 275, 800, 10, 0, 0),
(2066, 9, 2, 175, 700, 20, 0, 0),
(2067, 4, 2, 450, 600, -15, 0, 0),
(2068, 8, 2, 0, 500, 50, 0, 0),
(2069, 7, 2, 30, 400, 30, 0, 0),
(2070, 11, 2, 0, 300, 40, 0, 0),
(2071, 6, 2, 60, 250, 0, 250, 0),
(2072, 18, 2, 0, 200, 70, 0, 0),
(2073, 17, 2, 0, 100, 70, 0, 0),
(2074, 12, 2, 0, 96, 20, 0, 0),
(2075, 22, 2, 0, 93, 60, 0, 0),
(2076, 20, 2, 0, 91, 60, 0, 0),
(2077, 21, 2, 0, 90, 70, 0, 0),
(2078, 23, 2, 0, 89, 50, 0, 0),
(2079, 5, 2, 135, 88, -50, 0, 0),
(2080, 19, 2, 0, 87, -25, 0, 0),
(2081, 16, 2, 0, 45, -15, 0, 0),
(2082, 15, 2, 90, 27, -60, 0, 0),
(2083, 14, 2, 0, 22, -30, 0, 0),
(2084, 3, 2, 400, 1, -95, 0, 0),
(2085, 3, 3, 400, 1000, 20, 0, 0),
(2086, 7, 3, 450, 900, 0, 0, 0),
(2087, 10, 3, 500, 800, -10, 0, 0),
(2088, 1, 3, 60, 700, 50, 250, 0),
(2089, 5, 3, 90, 600, 30, 0, 0),
(2090, 4, 3, 225, 500, -5, 0, 0),
(2091, 19, 3, 135, 400, 0, 0, 0),
(2092, 14, 3, 0, 300, 30, 0, 0),
(2093, 8, 3, 175, 250, -15, 0, 0),
(2094, 11, 3, 30, 200, 0, 0, 0),
(2095, 6, 3, 0, 100, 10, 0, 0),
(2096, 18, 3, 0, 96, 30, 0, 0),
(2097, 17, 3, 0, 93, 30, 0, 0),
(2098, 16, 3, 0, 91, 0, 0, 0),
(2099, 22, 3, 0, 90, 30, 0, 0),
(2100, 20, 3, 0, 89, 40, 0, 0),
(2101, 23, 3, 0, 88, 20, 0, 0),
(2102, 21, 3, 0, 87, 30, 0, 0),
(2103, 9, 3, 275, 21, -75, 0, 0),
(2104, 2, 3, 0, 15, 20, 0, 0),
(2105, 15, 3, 0, 5, -40, 0, 0),
(2106, 12, 3, 0, 4, -25, 0, 0),
(2107, 1, 4, 450, 1000, 10, 250, 0),
(2108, 7, 4, 90, 900, 60, 0, 0),
(2109, 8, 4, 0, 800, 80, 0, 0),
(2110, 14, 4, 225, 700, 10, 0, 0),
(2111, 10, 4, 60, 600, 40, 0, 0),
(2112, 6, 4, 0, 500, 60, 0, 0),
(2113, 2, 4, 135, 400, 0, 0, 0),
(2114, 3, 4, 400, 300, -25, 0, 0),
(2115, 9, 4, 500, 250, -40, 0, 0),
(2116, 5, 4, 30, 200, 0, 0, 0),
(2117, 16, 4, 0, 100, 60, 0, 0),
(2118, 11, 4, 0, 96, 20, 0, 0),
(2119, 15, 4, 175, 93, -35, 0, 0),
(2120, 17, 4, 0, 91, 10, 0, 0),
(2121, 4, 4, 275, 90, -55, 0, 0),
(2122, 19, 4, 0, 89, -15, 0, 0),
(2123, 20, 4, 0, 88, 10, 0, 0),
(2124, 12, 4, 0, 87, 40, 0, 0),
(2125, 22, 4, 0, 86, 0, 0, 0),
(2126, 23, 4, 0, 85, 10, 0, 0),
(2127, 21, 4, 0, 84, -5, 0, 0),
(2128, 18, 4, 0, 16, -30, 0, 0),
(2129, 3, 5, 225, 1000, 40, 0, 0),
(2130, 7, 5, 275, 900, 20, 0, 0),
(2131, 4, 5, 60, 800, 60, 0, 0),
(2132, 1, 5, 400, 700, -5, 0, 0),
(2133, 2, 5, 135, 600, 20, 0, 0),
(2134, 9, 5, 500, 500, -25, 0, 0),
(2135, 14, 5, 30, 400, 30, 0, 0),
(2136, 5, 5, 0, 300, 60, 0, 0),
(2137, 6, 5, 90, 250, -5, 0, 0),
(2138, 19, 5, 0, 200, 10, 0, 0),
(2139, 12, 5, 0, 100, 80, 250, 0),
(2140, 10, 5, 450, 96, -50, 0, 0),
(2141, 15, 5, 0, 93, 0, 0, 0),
(2142, 16, 5, 0, 91, 30, 0, 0),
(2143, 11, 5, 0, 90, 0, 0, 0),
(2144, 17, 5, 0, 89, 0, 0, 0),
(2145, 20, 5, 0, 88, 50, 0, 0),
(2146, 22, 5, 0, 87, 20, 0, 0),
(2147, 23, 5, 0, 86, 20, 0, 0),
(2148, 18, 5, 0, 52, -40, 0, 0),
(2149, 21, 5, 0, 21, -15, 0, 0),
(2150, 8, 5, 175, 8, -80, 0, 0),
(2151, 9, 6, 500, 1000, 0, 0, 0),
(2152, 1, 6, 400, 900, 10, 250, 0),
(2153, 2, 6, 275, 800, 10, 0, 0),
(2154, 10, 6, 450, 700, -10, 0, 0),
(2155, 15, 6, 90, 600, 30, 0, 0),
(2156, 5, 6, 60, 500, 30, 0, 0),
(2157, 3, 6, 175, 400, -5, 0, 0),
(2158, 18, 6, 30, 300, 20, 0, 0),
(2159, 14, 6, 0, 250, 80, 0, 0),
(2160, 7, 6, 225, 200, -25, 0, 0),
(2161, 11, 6, 0, 100, 0, 0, 0),
(2162, 17, 6, 0, 96, 20, 0, 0),
(2163, 12, 6, 0, 93, 60, 0, 0),
(2164, 23, 6, 0, 91, 80, 0, 0),
(2165, 21, 6, 0, 90, 0, 0, 0),
(2166, 6, 6, 135, 89, -45, 0, 0),
(2167, 8, 6, 0, 63, -20, 0, 0),
(2168, 19, 6, 0, 61, -30, 0, 0),
(2169, 22, 6, 0, 58, 10, 0, 0),
(2170, 16, 6, 0, 44, -20, 0, 0),
(2171, 4, 6, 0, 28, 0, 0, 0),
(2172, 20, 6, 0, 7, -20, 0, 0),
(2173, 1, 7, 500, 1000, 0, 0, 0),
(2174, 3, 7, 175, 900, 40, 0, 0),
(2175, 10, 7, 450, 800, -5, 0, 0),
(2176, 2, 7, 225, 700, 10, 250, 0),
(2177, 9, 7, 275, 600, -5, 0, 0),
(2178, 18, 7, 135, 500, 10, 0, 0),
(2179, 14, 7, 0, 400, 100, 0, 0),
(2180, 4, 7, 0, 300, 80, 0, 0),
(2181, 7, 7, 30, 250, 10, 0, 0),
(2182, 15, 7, 90, 200, -10, 0, 0),
(2183, 6, 7, 0, 100, 10, 0, 0),
(2184, 5, 7, 0, 96, 20, 0, 0),
(2185, 8, 7, 0, 93, 90, 0, 0),
(2186, 17, 7, 400, 91, -55, 0, 0),
(2187, 19, 7, 0, 90, -20, 0, 0),
(2188, 16, 7, 0, 89, -15, 0, 0),
(2189, 22, 7, 0, 88, 20, 0, 0),
(2190, 20, 7, 0, 87, 0, 0, 0),
(2191, 23, 7, 0, 86, 10, 0, 0),
(2192, 12, 7, 0, 85, -25, 0, 0),
(2193, 11, 7, 60, 45, -60, 0, 0),
(2194, 21, 7, 0, 43, -5, 0, 0),
(2195, 9, 8, 450, 1000, 10, 0, 0),
(2196, 2, 8, 275, 900, 20, 250, 0),
(2197, 3, 8, 60, 800, 60, 0, 0),
(2198, 10, 8, 500, 700, -15, 0, 0),
(2199, 7, 8, 90, 600, 30, 0, 0),
(2200, 4, 8, 0, 500, 50, 0, 0),
(2201, 15, 8, 175, 400, -5, 0, 0),
(2202, 19, 8, 225, 300, -15, 0, 0),
(2203, 14, 8, 0, 250, 120, 0, 0),
(2204, 11, 8, 0, 200, 40, 0, 0),
(2205, 16, 8, 0, 100, 40, 0, 0),
(2206, 17, 8, 0, 96, 40, 0, 0),
(2207, 5, 8, 30, 93, -15, 0, 0),
(2208, 12, 8, 0, 91, 30, 0, 0),
(2209, 20, 8, 0, 90, 30, 0, 0),
(2210, 22, 8, 0, 89, 30, 0, 0),
(2211, 23, 8, 0, 88, 30, 0, 0),
(2212, 21, 8, 0, 87, 40, 0, 0),
(2213, 8, 8, 135, 86, -60, 0, 0),
(2214, 6, 8, 0, 85, -35, 0, 0),
(2215, 1, 8, 400, 41, -90, 0, 0),
(2216, 18, 8, 0, 35, -50, 0, 0),
(2217, 10, 9, 500, 1000, 0, 0, 0),
(2218, 7, 9, 175, 900, 40, 0, 0),
(2219, 1, 9, 450, 800, -5, 0, 0),
(2220, 2, 9, 30, 700, 60, 250, 0),
(2221, 3, 9, 225, 600, 0, 0, 0),
(2222, 8, 9, 400, 500, -15, 0, 0),
(2223, 5, 9, 0, 400, 60, 0, 0),
(2224, 4, 9, 135, 300, -5, 0, 0),
(2225, 6, 9, 60, 250, 0, 0, 0),
(2226, 16, 9, 0, 200, 50, 0, 0),
(2227, 11, 9, 0, 100, 10, 0, 0),
(2228, 18, 9, 0, 96, 20, 0, 0),
(2229, 19, 9, 90, 93, -25, 0, 0),
(2230, 21, 9, 0, 91, 60, 0, 0),
(2231, 20, 9, 0, 90, 40, 0, 0),
(2232, 22, 9, 0, 89, 50, 0, 0),
(2233, 23, 9, 0, 88, 50, 0, 0),
(2234, 14, 9, 0, 87, 0, 0, 0),
(2235, 9, 9, 275, 86, -75, 0, 0),
(2236, 17, 9, 0, 42, -20, 0, 0),
(2237, 12, 9, 0, 28, -20, 0, 0),
(2238, 15, 9, 0, 19, -55, 0, 0),
(2239, 1, 10, 450, 1000, 10, 250, 0),
(2240, 3, 10, 60, 900, 70, 0, 0),
(2241, 10, 10, 500, 800, -10, 0, 0),
(2242, 9, 10, 275, 700, 0, 0, 0),
(2243, 2, 10, 400, 600, -10, 0, 0),
(2244, 5, 10, 175, 500, 0, 0, 0),
(2245, 4, 10, 30, 400, 30, 0, 0),
(2246, 8, 10, 135, 300, -5, 0, 0),
(2247, 15, 10, 0, 250, 30, 0, 0),
(2248, 19, 10, 0, 200, 90, 0, 0),
(2249, 6, 10, 0, 100, 20, 0, 0),
(2250, 18, 10, 0, 96, 60, 0, 0),
(2251, 11, 10, 0, 93, -10, 0, 0),
(2252, 12, 10, 0, 91, 70, 0, 0),
(2253, 17, 10, 0, 90, 50, 0, 0),
(2254, 21, 10, 0, 89, -10, 0, 0),
(2255, 16, 10, 0, 88, 0, 0, 0),
(2256, 22, 10, 0, 87, -15, 0, 0),
(2257, 23, 10, 0, 86, -15, 0, 0),
(2258, 14, 10, 225, 26, -75, 0, 0),
(2259, 7, 10, 90, 25, -65, 0, 0),
(2260, 20, 10, 0, 8, 0, 0, 0),
(2261, 1, 11, 500, 1000, 0, 0, 0),
(2262, 3, 11, 225, 900, 30, 0, 0),
(2263, 2, 11, 450, 800, -5, 0, 0),
(2264, 4, 11, 275, 700, 0, 0, 0),
(2265, 11, 11, 400, 600, -10, 0, 0),
(2266, 9, 11, 175, 500, 0, 0, 0),
(2267, 19, 11, 135, 400, 0, 0, 0),
(2268, 8, 11, 0, 300, 50, 0, 0),
(2269, 10, 11, 0, 250, 30, 250, 0),
(2270, 5, 11, 60, 200, -5, 0, 0),
(2271, 7, 11, 0, 100, 0, 0, 0),
(2272, 6, 11, 90, 96, -20, 0, 0),
(2273, 12, 11, 0, 93, 30, 0, 0),
(2274, 16, 11, 0, 91, 0, 0, 0),
(2275, 17, 11, 0, 90, 30, 0, 0),
(2276, 15, 11, 0, 89, 10, 0, 0),
(2277, 20, 11, 0, 88, 30, 0, 0),
(2278, 21, 11, 0, 87, 10, 0, 0),
(2279, 22, 11, 0, 86, 20, 0, 0),
(2280, 23, 11, 0, 85, 20, 0, 0),
(2281, 18, 11, 30, 14, -55, 0, 0),
(2282, 14, 11, 0, 0, -35, 0, 0),
(2283, 1, 12, 500, 1000, 0, 250, 0),
(2284, 3, 12, 135, 900, 50, 0, 0),
(2285, 7, 12, 0, 800, 100, 0, 0),
(2286, 9, 12, 450, 700, -10, 0, 0),
(2287, 10, 12, 225, 600, 0, 0, 0),
(2288, 4, 12, 175, 500, 0, 0, 0),
(2289, 5, 12, 90, 400, 10, 0, 0),
(2290, 6, 12, 0, 300, 60, 0, 0),
(2291, 11, 12, 0, 250, 20, 0, 0),
(2292, 15, 12, 0, 200, 50, 0, 0),
(2293, 16, 12, 0, 100, 70, 0, 0),
(2294, 12, 12, 30, 96, -10, 0, 0),
(2295, 17, 12, 0, 93, 30, 0, 0),
(2296, 18, 12, 0, 91, -10, 0, 0),
(2297, 2, 12, 275, 90, -55, 0, 0),
(2298, 21, 12, 0, 89, 40, 0, 0),
(2299, 23, 12, 0, 88, 50, 0, 0),
(2300, 22, 12, 0, 87, 30, 0, 0),
(2301, 20, 12, 0, 86, 0, 0, 0),
(2302, 14, 12, 0, 85, -15, 0, 0),
(2303, 8, 12, 400, 37, -90, 0, 0),
(2304, 19, 12, 60, 23, -65, 0, 0),
(2305, 1, 13, 500, 1000, 0, 250, 0),
(2306, 7, 13, 60, 900, 70, 0, 0),
(2307, 8, 13, 400, 800, 0, 0, 0),
(2308, 11, 13, 135, 700, 30, 0, 0),
(2309, 10, 13, 450, 600, -15, 0, 0),
(2310, 3, 13, 225, 500, -5, 0, 0),
(2311, 9, 13, 275, 400, -15, 0, 0),
(2312, 5, 13, 0, 300, 30, 0, 0),
(2313, 4, 13, 175, 250, -15, 0, 0),
(2314, 6, 13, 30, 200, 0, 0, 0),
(2315, 12, 13, 90, 100, -15, 0, 0),
(2316, 17, 13, 0, 96, 50, 0, 0),
(2317, 16, 13, 0, 93, 50, 0, 0),
(2318, 20, 13, 0, 91, 50, 0, 0),
(2319, 21, 13, 0, 90, 50, 0, 0),
(2320, 22, 13, 0, 89, 60, 0, 0),
(2321, 23, 13, 0, 88, 40, 0, 0),
(2322, 18, 13, 0, 87, -10, 0, 0),
(2323, 19, 13, 0, 86, -35, 0, 0),
(2324, 15, 13, 0, 85, -30, 0, 0),
(2325, 2, 13, 0, 36, -40, 0, 0),
(2326, 14, 13, 0, 24, -35, 0, 0),
(2327, 1, 14, 450, 1000, 10, 0, 0),
(2328, 2, 14, 500, 900, -5, 250, 0),
(2329, 8, 14, 275, 800, 10, 0, 0),
(2330, 3, 14, 90, 700, 40, 0, 0),
(2331, 7, 14, 60, 600, 40, 0, 0),
(2332, 11, 14, 135, 500, 10, 0, 0),
(2333, 12, 14, 0, 400, 70, 0, 0),
(2334, 9, 14, 175, 300, -10, 0, 0),
(2335, 5, 14, 30, 250, 10, 0, 0),
(2336, 4, 14, 225, 200, -25, 0, 0),
(2337, 14, 14, 0, 100, 10, 0, 0),
(2338, 18, 14, 0, 96, 50, 0, 0),
(2339, 19, 14, 0, 93, 30, 0, 0),
(2340, 15, 14, 0, 91, 80, 0, 0),
(2341, 6, 14, 0, 90, -20, 0, 0),
(2342, 16, 14, 0, 89, -5, 0, 0),
(2343, 17, 14, 0, 88, -20, 0, 0),
(2344, 20, 14, 0, 87, 20, 0, 0),
(2345, 23, 14, 0, 86, -5, 0, 0),
(2346, 10, 14, 400, 7, -85, 0, 0),
(2347, 21, 14, 0, 0, -10, 0, 0),
(2348, 22, 14, 0, 0, -5, 0, 0),
(2349, 1, 15, 500, 1000, 0, 0, 0),
(2350, 9, 15, 450, 900, 0, 0, 0),
(2351, 8, 15, 0, 800, 140, 0, 0),
(2352, 4, 15, 225, 700, 10, 0, 0),
(2353, 6, 15, 60, 600, 40, 0, 0),
(2354, 10, 15, 400, 500, -15, 0, 0),
(2355, 7, 15, 175, 400, -5, 250, 0),
(2356, 14, 15, 0, 300, 40, 0, 0),
(2357, 15, 15, 0, 250, 40, 0, 0),
(2358, 19, 15, 0, 200, 10, 0, 0),
(2359, 3, 15, 90, 100, -15, 0, 0),
(2360, 16, 15, 0, 96, 60, 0, 0),
(2361, 18, 15, 0, 93, 10, 0, 0),
(2362, 5, 15, 30, 91, -20, 0, 0),
(2363, 12, 15, 0, 90, 10, 0, 0),
(2364, 17, 15, 0, 89, -5, 0, 0),
(2365, 23, 15, 0, 88, 50, 0, 0),
(2366, 22, 15, 0, 87, 10, 0, 0),
(2367, 11, 15, 135, 86, -60, 0, 0),
(2368, 2, 15, 275, 85, -80, 0, 0),
(2369, 20, 15, 0, 84, 0, 0, 0),
(2370, 21, 15, 0, 83, -10, 0, 0),
(2371, 1, 16, 450, 1000, 10, 0, 0),
(2372, 2, 16, 500, 900, -5, 0, 0),
(2373, 9, 16, 400, 800, 0, 0, 0),
(2374, 8, 16, 175, 700, 20, 0, 0),
(2375, 3, 16, 30, 600, 50, 250, 0),
(2376, 14, 16, 0, 500, 50, 0, 0),
(2377, 10, 16, 275, 400, -15, 0, 0),
(2378, 4, 16, 135, 300, -5, 0, 0),
(2379, 6, 16, 90, 250, -5, 0, 0),
(2380, 15, 16, 0, 200, 70, 0, 0),
(2381, 16, 16, 0, 100, 30, 0, 0),
(2382, 5, 16, 0, 96, 0, 0, 0),
(2383, 12, 16, 0, 93, 30, 0, 0),
(2384, 11, 16, 225, 91, -45, 0, 0),
(2385, 17, 16, 0, 90, 0, 0, 0),
(2386, 19, 16, 60, 89, -35, 0, 0),
(2387, 18, 16, 0, 88, -20, 0, 0),
(2388, 21, 16, 0, 87, 0, 0, 0),
(2389, 20, 16, 0, 86, 0, 0, 0),
(2390, 22, 16, 0, 85, 10, 0, 0),
(2391, 23, 16, 0, 84, -5, 0, 0),
(2392, 7, 16, 0, 0, 0, 0, 0),
(2393, 1, 17, 500, 1000, 0, 250, 0),
(2394, 8, 17, 400, 900, 10, 0, 0),
(2395, 2, 17, 450, 800, -5, 0, 0),
(2396, 10, 17, 225, 700, 10, 0, 0),
(2397, 3, 17, 175, 600, 10, 0, 0),
(2398, 11, 17, 275, 500, -10, 0, 0),
(2399, 6, 17, 135, 400, 0, 0, 0),
(2400, 17, 17, 60, 300, 10, 0, 0),
(2401, 9, 17, 0, 250, 30, 0, 0),
(2402, 5, 17, 0, 200, 50, 0, 0),
(2403, 19, 17, 30, 100, -5, 0, 0),
(2404, 4, 17, 0, 96, 10, 0, 0),
(2405, 12, 17, 0, 93, 70, 0, 0),
(2406, 7, 17, 90, 91, -30, 0, 0),
(2407, 14, 17, 0, 90, -20, 0, 0),
(2408, 18, 17, 0, 89, -10, 0, 0),
(2409, 16, 17, 0, 88, 0, 0, 0),
(2410, 22, 17, 0, 87, 10, 0, 0),
(2411, 21, 17, 0, 86, -5, 0, 0),
(2412, 20, 17, 0, 85, 20, 0, 0),
(2413, 23, 17, 0, 84, 0, 0, 0),
(2414, 15, 17, 0, 0, -30, 0, 0),
(2415, 1, 18, 500, 1000, 0, 0, 0),
(2416, 2, 18, 275, 900, 20, 250, 0),
(2417, 3, 18, 400, 800, 0, 0, 0),
(2418, 5, 18, 0, 700, 100, 0, 0),
(2419, 9, 18, 450, 600, -15, 0, 0),
(2420, 6, 18, 0, 500, 130, 0, 0),
(2421, 4, 18, 60, 400, 20, 0, 0),
(2422, 11, 18, 30, 300, 20, 0, 0),
(2423, 10, 18, 225, 250, -20, 0, 0),
(2424, 19, 18, 135, 200, -15, 0, 0),
(2425, 14, 18, 0, 100, 10, 0, 0),
(2426, 12, 18, 0, 96, 50, 0, 0),
(2427, 15, 18, 0, 93, 20, 0, 0),
(2428, 7, 18, 0, 91, -15, 0, 0),
(2429, 18, 18, 90, 90, -35, 0, 0),
(2430, 16, 18, 0, 89, 0, 0, 0),
(2431, 22, 18, 0, 88, 40, 0, 0),
(2432, 21, 18, 0, 87, 20, 0, 0),
(2433, 23, 18, 0, 86, 30, 0, 0),
(2434, 20, 18, 0, 58, -10, 0, 0),
(2435, 17, 18, 0, 45, -40, 0, 0),
(2436, 8, 18, 175, 2, -80, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos_pilotos_media`
--

DROP TABLE IF EXISTS `puntos_pilotos_media`;
CREATE TABLE IF NOT EXISTS `puntos_pilotos_media` (
  `pnt_pil_med_cod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pnt_pil_med_pil_cod` int(11) NOT NULL,
  `pnt_pil_med_car_cod` int(11) NOT NULL,
  `pnt_pil_med_pnt_car_1` int(11) NOT NULL,
  `pnt_pil_med_car_1_cod` int(11) NOT NULL,
  `pnt_pil_med_pnt_car_2` int(11) NOT NULL,
  `pnt_pil_med_car_2_cod` int(11) NOT NULL,
  `pnt_pil_med_pnt_car_3` int(11) NOT NULL,
  `pnt_pil_med_car_3_cod` int(11) NOT NULL,
  `pnt_pil_med_pnt_car_4` int(11) NOT NULL,
  `pnt_pil_med_car_4_cod` int(11) NOT NULL,
  `pnt_pil_med_bonus` tinyint(1) NOT NULL,
  PRIMARY KEY (`pnt_pil_med_cod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci ROW_FORMAT=FIXED AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos_pilotos_media_2013`
--

DROP TABLE IF EXISTS `puntos_pilotos_media_2013`;
CREATE TABLE IF NOT EXISTS `puntos_pilotos_media_2013` (
  `pnt_pil_med_cod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pnt_pil_med_pil_cod` int(11) NOT NULL,
  `pnt_pil_med_car_cod` int(11) NOT NULL,
  `pnt_pil_med_pnt_car_1` int(11) NOT NULL,
  `pnt_pil_med_car_1_cod` int(11) NOT NULL,
  `pnt_pil_med_pnt_car_2` int(11) NOT NULL,
  `pnt_pil_med_car_2_cod` int(11) NOT NULL,
  `pnt_pil_med_pnt_car_3` int(11) NOT NULL,
  `pnt_pil_med_car_3_cod` int(11) NOT NULL,
  `pnt_pil_med_pnt_car_4` int(11) NOT NULL,
  `pnt_pil_med_car_4_cod` int(11) NOT NULL,
  `pnt_pil_med_bonus` tinyint(1) NOT NULL,
  PRIMARY KEY (`pnt_pil_med_cod`),
  KEY `pnt_pil_med_pil_fk` (`pnt_pil_med_pil_cod`),
  KEY `pnt_pil_med_car_fk` (`pnt_pil_med_car_cod`),
  KEY `pnt_pil_med_car_1_fk` (`pnt_pil_med_car_1_cod`),
  KEY `pnt_pil_med_car_2_fk` (`pnt_pil_med_car_2_cod`),
  KEY `pnt_pil_med_car_3_fk` (`pnt_pil_med_car_3_cod`),
  KEY `pnt_pil_med_car_4_fk` (`pnt_pil_med_car_4_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci ROW_FORMAT=FIXED AUTO_INCREMENT=2665 ;

--
-- Volcado de datos para la tabla `puntos_pilotos_media_2013`
--

INSERT INTO `puntos_pilotos_media_2013` (`pnt_pil_med_cod`, `pnt_pil_med_pil_cod`, `pnt_pil_med_car_cod`, `pnt_pil_med_pnt_car_1`, `pnt_pil_med_car_1_cod`, `pnt_pil_med_pnt_car_2`, `pnt_pil_med_car_2_cod`, `pnt_pil_med_pnt_car_3`, `pnt_pil_med_car_3_cod`, `pnt_pil_med_pnt_car_4`, `pnt_pil_med_car_4_cod`, `pnt_pil_med_bonus`) VALUES
(2137, 1, 1, 765, 20, 2145, 19, 1260, 18, 1500, 17, 0),
(2138, 2, 1, 1095, 20, 316, 19, 397, 18, 1245, 17, 0),
(2139, 3, 1, 1085, 20, 975, 19, 1115, 18, 1155, 17, 0),
(2140, 4, 1, 1045, 20, 770, 19, 500, 18, 675, 17, 0),
(2141, 5, 1, 1460, 20, 670, 19, 935, 18, 1120, 17, 0),
(2142, 6, 1, -60, 20, 140, 19, 70, 18, 30, 17, 0),
(2143, 7, 1, 280, 20, 765, 19, 1305, 18, 535, 17, 0),
(2144, 8, 1, -10, 20, 500, 19, 47, 18, 270, 17, 0),
(2145, 9, 1, 120, 20, 133, 19, 62, 18, 125, 17, 0),
(2146, 10, 1, 709, 20, 1460, 19, 419, 18, 1095, 17, 0),
(2147, 11, 1, 785, 20, 465, 19, -40, 18, 340, 17, 0),
(2148, 12, 1, 300, 20, 111, 19, 590, 18, 121, 17, 0),
(2149, 14, 1, 71, 20, 80, 19, 280, 18, 136, 17, 0),
(2150, 15, 1, 785, 20, 465, 19, -40, 18, 340, 17, 0),
(2151, 16, 1, -29, 20, 310, 19, 990, 18, 114, 17, 0),
(2152, 17, 1, -60, 20, 230, 19, 360, 18, 230, 17, 0),
(2153, 18, 1, 390, 20, -36, 19, 146, 18, 120, 17, 0),
(2154, 19, 1, 113, 20, 156, 19, 260, 18, 113, 17, 0),
(2155, 20, 1, 151, 20, 127, 19, 143, 18, 107, 17, 0),
(2156, 21, 1, 180, 20, 128, 19, 129, 18, 108, 17, 0),
(2157, 22, 1, 158, 20, 104, 19, 138, 18, 37, 17, 0),
(2158, 23, 1, 137, 20, 103, 19, 17, 18, 104, 17, 0),
(2159, 1, 2, 1290, 1, 765, 20, 2145, 19, 1260, 18, 0),
(2160, 2, 2, 930, 1, 1095, 20, 316, 19, 397, 18, 0),
(2161, 3, 2, 1155, 1, 1085, 20, 975, 19, 1115, 18, 0),
(2162, 4, 2, 0, 1, 1045, 20, 770, 19, 500, 18, 1),
(2163, 5, 2, 290, 1, 1460, 20, 670, 19, 935, 18, 0),
(2164, 6, 2, 0, 1, -60, 20, 140, 19, 70, 18, 1),
(2165, 7, 2, 0, 1, 280, 20, 765, 19, 1305, 18, 1),
(2166, 8, 2, 0, 1, -10, 20, 500, 19, 47, 18, 1),
(2167, 9, 2, 131, 1, 120, 20, 133, 19, 62, 18, 0),
(2168, 10, 2, 990, 1, 709, 20, 1460, 19, 419, 18, 0),
(2169, 11, 2, -55, 1, 785, 20, 465, 19, -40, 18, 0),
(2170, 12, 2, 143, 1, 300, 20, 111, 19, 590, 18, 0),
(2171, 14, 2, 0, 1, 71, 20, 80, 19, 280, 18, 1),
(2172, 15, 2, 450, 1, 785, 20, 465, 19, -40, 18, 0),
(2173, 16, 2, 4, 1, -29, 20, 310, 19, 990, 18, 0),
(2174, 17, 2, 111, 1, -60, 20, 230, 19, 360, 18, 0),
(2175, 18, 2, 106, 1, 390, 20, -36, 19, 146, 18, 0),
(2176, 19, 2, 14, 1, 113, 20, 156, 19, 260, 18, 0),
(2177, 20, 2, 149, 1, 151, 20, 127, 19, 143, 18, 0),
(2178, 21, 2, 117, 1, 180, 20, 128, 19, 129, 18, 0),
(2179, 22, 2, 130, 1, 158, 20, 104, 19, 138, 18, 0),
(2180, 23, 2, 0, 1, 137, 20, 103, 19, 17, 18, 1),
(2181, 1, 3, 1500, 2, 1290, 1, 765, 20, 2145, 19, 0),
(2182, 2, 3, 0, 2, 930, 1, 1095, 20, 316, 19, 1),
(2183, 3, 3, 306, 2, 1155, 1, 1085, 20, 975, 19, 0),
(2184, 4, 3, 0, 2, 975, 1, 1045, 20, 770, 19, 1),
(2185, 5, 3, 173, 2, 290, 1, 1460, 20, 670, 19, 0),
(2186, 6, 3, 0, 2, 140, 1, -60, 20, 140, 19, 1),
(2187, 7, 3, 460, 2, 1445, 1, 280, 20, 765, 19, 1),
(2188, 8, 3, 0, 2, 280, 1, -10, 20, 500, 19, 1),
(2189, 9, 3, 0, 2, 131, 1, 120, 20, 133, 19, 1),
(2190, 10, 3, 1085, 2, 990, 1, 709, 20, 1460, 19, 0),
(2191, 11, 3, 340, 2, -55, 1, 785, 20, 465, 19, 0),
(2192, 12, 3, 116, 2, 143, 1, 300, 20, 111, 19, 0),
(2193, 14, 3, -8, 2, 370, 1, 71, 20, 80, 19, 1),
(2194, 15, 3, 57, 2, 450, 1, 785, 20, 465, 19, 0),
(2195, 16, 3, 30, 2, 4, 1, -29, 20, 310, 19, 0),
(2196, 17, 3, 170, 2, 111, 1, -60, 20, 230, 19, 0),
(2197, 18, 3, 0, 2, 106, 1, 390, 20, -36, 19, 1),
(2198, 19, 3, 62, 2, 14, 1, 113, 20, 156, 19, 0),
(2199, 20, 3, 151, 2, 149, 1, 151, 20, 127, 19, 0),
(2200, 21, 3, 160, 2, 117, 1, 180, 20, 128, 19, 0),
(2201, 22, 3, 153, 2, 130, 1, 158, 20, 104, 19, 0),
(2202, 23, 3, 0, 2, 118, 1, 137, 20, 103, 19, 1),
(2203, 1, 4, 1060, 3, 1500, 2, 1290, 1, 765, 20, 0),
(2204, 2, 4, 35, 3, 1155, 2, 930, 1, 1095, 20, 1),
(2205, 3, 4, 0, 3, 306, 2, 1155, 1, 1085, 20, 1),
(2206, 4, 4, 720, 3, 1035, 2, 975, 1, 1045, 20, 1),
(2207, 5, 4, 720, 3, 173, 2, 290, 1, 1460, 20, 0),
(2208, 6, 4, 0, 3, 560, 2, 140, 1, -60, 20, 1),
(2209, 7, 4, 0, 3, 460, 2, 1445, 1, 280, 20, 1),
(2210, 8, 4, 0, 3, 550, 2, 280, 1, -10, 20, 1),
(2211, 9, 4, 0, 3, 895, 2, 131, 1, 120, 20, 1),
(2212, 10, 4, 1290, 3, 1085, 2, 990, 1, 709, 20, 0),
(2213, 11, 4, 230, 3, 340, 2, -55, 1, 785, 20, 0),
(2214, 12, 4, -21, 3, 116, 2, 143, 1, 300, 20, 0),
(2215, 14, 4, 0, 3, -8, 2, 370, 1, 71, 20, 1),
(2216, 15, 4, -35, 3, 57, 2, 450, 1, 785, 20, 0),
(2217, 16, 4, 91, 3, 30, 2, 4, 1, -29, 20, 0),
(2218, 17, 4, 123, 3, 170, 2, 111, 1, -60, 20, 0),
(2219, 18, 4, 126, 3, 270, 2, 106, 1, 390, 20, 1),
(2220, 19, 4, 0, 3, 62, 2, 14, 1, 113, 20, 1),
(2221, 20, 4, 129, 3, 151, 2, 149, 1, 151, 20, 0),
(2222, 21, 4, 117, 3, 160, 2, 117, 1, 180, 20, 0),
(2223, 22, 4, 120, 3, 153, 2, 130, 1, 158, 20, 0),
(2224, 23, 4, 108, 3, 139, 2, 118, 1, 137, 20, 1),
(2225, 1, 5, 0, 4, 1060, 3, 1500, 2, 1290, 1, 1),
(2226, 2, 5, 535, 4, 35, 3, 1155, 2, 930, 1, 1),
(2227, 3, 5, 675, 4, 1420, 3, 306, 2, 1155, 1, 1),
(2228, 4, 5, 310, 4, 720, 3, 1035, 2, 975, 1, 1),
(2229, 5, 5, 230, 4, 720, 3, 173, 2, 290, 1, 0),
(2230, 6, 5, 0, 4, 110, 3, 560, 2, 140, 1, 1),
(2231, 7, 5, 0, 4, 1350, 3, 460, 2, 1445, 1, 1),
(2232, 8, 5, 0, 4, 410, 3, 550, 2, 280, 1, 1),
(2233, 9, 5, 0, 4, 221, 3, 895, 2, 131, 1, 1),
(2234, 10, 5, 700, 4, 1290, 3, 1085, 2, 990, 1, 0),
(2235, 11, 5, 116, 4, 230, 3, 340, 2, -55, 1, 0),
(2236, 12, 5, 127, 4, -21, 3, 116, 2, 143, 1, 0),
(2237, 14, 5, 0, 4, 330, 3, -8, 2, 370, 1, 1),
(2238, 15, 5, 233, 4, -35, 3, 57, 2, 450, 1, 0),
(2239, 16, 5, 0, 4, 91, 3, 30, 2, 4, 1, 1),
(2240, 17, 5, 101, 4, 123, 3, 170, 2, 111, 1, 0),
(2241, 18, 5, -14, 4, 126, 3, 270, 2, 106, 1, 1),
(2242, 19, 5, 0, 4, 535, 3, 62, 2, 14, 1, 1),
(2243, 20, 5, 98, 4, 129, 3, 151, 2, 149, 1, 0),
(2244, 21, 5, 79, 4, 117, 3, 160, 2, 117, 1, 0),
(2245, 22, 5, 86, 4, 120, 3, 153, 2, 130, 1, 0),
(2246, 23, 5, 95, 4, 108, 3, 139, 2, 118, 1, 1),
(2247, 1, 6, 1095, 5, 0, 4, 1060, 3, 1500, 2, 1),
(2248, 2, 6, 755, 5, 535, 4, 35, 3, 1155, 2, 1),
(2249, 3, 6, 0, 5, 675, 4, 1420, 3, 306, 2, 1),
(2250, 4, 6, 920, 5, 310, 4, 720, 3, 1035, 2, 1),
(2251, 5, 6, 360, 5, 230, 4, 720, 3, 173, 2, 0),
(2252, 6, 6, 0, 5, 560, 4, 110, 3, 560, 2, 1),
(2253, 7, 6, 0, 5, 1050, 4, 1350, 3, 460, 2, 1),
(2254, 8, 6, 103, 5, 880, 4, 410, 3, 550, 2, 1),
(2255, 9, 6, 0, 5, 710, 4, 221, 3, 895, 2, 1),
(2256, 10, 6, 496, 5, 700, 4, 1290, 3, 1085, 2, 0),
(2257, 11, 6, 90, 5, 116, 4, 230, 3, 340, 2, 0),
(2258, 12, 6, 0, 5, 127, 4, -21, 3, 116, 2, 1),
(2259, 14, 6, 0, 5, 935, 4, 330, 3, -8, 2, 1),
(2260, 15, 6, 93, 5, 233, 4, -35, 3, 57, 2, 0),
(2261, 16, 6, 0, 5, 160, 4, 91, 3, 30, 2, 1),
(2262, 17, 6, 89, 5, 101, 4, 123, 3, 170, 2, 0),
(2263, 18, 6, 12, 5, -14, 4, 126, 3, 270, 2, 1),
(2264, 19, 6, 0, 5, 74, 4, 535, 3, 62, 2, 1),
(2265, 20, 6, 138, 5, 98, 4, 129, 3, 151, 2, 0),
(2266, 21, 6, 6, 5, 79, 4, 117, 3, 160, 2, 0),
(2267, 22, 6, 107, 5, 86, 4, 120, 3, 153, 2, 0),
(2268, 23, 6, 106, 5, 95, 4, 108, 3, 139, 2, 1),
(2269, 1, 7, 0, 6, 1095, 5, 1710, 4, 1060, 3, 1),
(2270, 2, 7, 0, 6, 755, 5, 535, 4, 35, 3, 1),
(2271, 3, 7, 570, 6, 1265, 5, 675, 4, 1420, 3, 1),
(2272, 4, 7, 28, 6, 920, 5, 310, 4, 720, 3, 1),
(2273, 5, 7, 0, 6, 360, 5, 230, 4, 720, 3, 1),
(2274, 6, 7, 179, 6, 335, 5, 560, 4, 110, 3, 1),
(2275, 7, 7, 400, 6, 1195, 5, 1050, 4, 1350, 3, 1),
(2276, 8, 7, 43, 6, 103, 5, 880, 4, 410, 3, 1),
(2277, 9, 7, 0, 6, 975, 5, 710, 4, 221, 3, 1),
(2278, 10, 7, 1140, 6, 496, 5, 700, 4, 1290, 3, 0),
(2279, 11, 7, 100, 6, 90, 5, 116, 4, 230, 3, 0),
(2280, 12, 7, 0, 6, 430, 5, 127, 4, -21, 3, 1),
(2281, 14, 7, 330, 6, 460, 5, 935, 4, 330, 3, 1),
(2282, 15, 7, 0, 6, 93, 5, 233, 4, -35, 3, 1),
(2283, 16, 7, 24, 6, 121, 5, 160, 4, 91, 3, 1),
(2284, 17, 7, 116, 6, 89, 5, 101, 4, 123, 3, 0),
(2285, 18, 7, 0, 6, 12, 5, -14, 4, 126, 3, 1),
(2286, 19, 7, 31, 6, 210, 5, 74, 4, 535, 3, 1),
(2287, 20, 7, -13, 6, 138, 5, 98, 4, 129, 3, 0),
(2288, 21, 7, 90, 6, 6, 5, 79, 4, 117, 3, 0),
(2289, 22, 7, 68, 6, 107, 5, 86, 4, 120, 3, 0),
(2290, 23, 7, 0, 6, 106, 5, 95, 4, 108, 3, 1),
(2291, 1, 8, 0, 7, 1560, 6, 1095, 5, 1710, 4, 1),
(2292, 2, 8, 0, 7, 1085, 6, 755, 5, 535, 4, 1),
(2293, 3, 8, 1115, 7, 570, 6, 1265, 5, 675, 4, 1),
(2294, 4, 8, 380, 7, 28, 6, 920, 5, 310, 4, 1),
(2295, 5, 8, 116, 7, 590, 6, 360, 5, 230, 4, 1),
(2296, 6, 8, 110, 7, 179, 6, 335, 5, 560, 4, 1),
(2297, 7, 8, 290, 7, 400, 6, 1195, 5, 1050, 4, 1),
(2298, 8, 8, 183, 7, 43, 6, 103, 5, 880, 4, 1),
(2299, 9, 8, 870, 7, 1500, 6, 975, 5, 710, 4, 1),
(2300, 10, 8, 0, 7, 1140, 6, 496, 5, 700, 4, 1),
(2301, 11, 8, 45, 7, 100, 6, 90, 5, 116, 4, 0),
(2302, 12, 8, 60, 7, 153, 6, 430, 5, 127, 4, 1),
(2303, 14, 8, 500, 7, 330, 6, 460, 5, 935, 4, 1),
(2304, 15, 8, 0, 7, 720, 6, 93, 5, 233, 4, 1),
(2305, 16, 8, 74, 7, 24, 6, 121, 5, 160, 4, 1),
(2306, 17, 8, 0, 7, 116, 6, 89, 5, 101, 4, 1),
(2307, 18, 8, 0, 7, 350, 6, 12, 5, -14, 4, 1),
(2308, 19, 8, 70, 7, 31, 6, 210, 5, 74, 4, 1),
(2309, 20, 8, 87, 7, -13, 6, 138, 5, 98, 4, 0),
(2310, 21, 8, 38, 7, 90, 6, 6, 5, 79, 4, 0),
(2311, 22, 8, 108, 7, 68, 6, 107, 5, 86, 4, 0),
(2312, 23, 8, 96, 7, 171, 6, 106, 5, 95, 4, 1),
(2313, 1, 9, 351, 8, 1500, 7, 1560, 6, 1095, 5, 1),
(2314, 2, 9, 0, 8, 1185, 7, 1085, 6, 755, 5, 1),
(2315, 3, 9, 920, 8, 1115, 7, 570, 6, 1265, 5, 1),
(2316, 4, 9, 0, 8, 380, 7, 28, 6, 920, 5, 1),
(2317, 5, 9, 108, 8, 116, 7, 590, 6, 360, 5, 1),
(2318, 6, 9, 50, 8, 110, 7, 179, 6, 335, 5, 1),
(2319, 7, 9, 720, 8, 290, 7, 400, 6, 1195, 5, 1),
(2320, 8, 9, 161, 8, 183, 7, 43, 6, 103, 5, 1),
(2321, 9, 9, 1460, 8, 870, 7, 1500, 6, 975, 5, 1),
(2322, 10, 9, 0, 8, 1245, 7, 1140, 6, 496, 5, 1),
(2323, 11, 9, 0, 8, 45, 7, 100, 6, 90, 5, 1),
(2324, 12, 9, 121, 8, 60, 7, 153, 6, 430, 5, 1),
(2325, 14, 9, 370, 8, 500, 7, 330, 6, 460, 5, 1),
(2326, 15, 9, 0, 8, 280, 7, 720, 6, 93, 5, 1),
(2327, 16, 9, 0, 8, 74, 7, 24, 6, 121, 5, 1),
(2328, 17, 9, 0, 8, 436, 7, 116, 6, 89, 5, 1),
(2329, 18, 9, -15, 8, 645, 7, 350, 6, 12, 5, 1),
(2330, 19, 9, 0, 8, 70, 7, 31, 6, 210, 5, 1),
(2331, 20, 9, 0, 8, 87, 7, -13, 6, 138, 5, 1),
(2332, 21, 9, 0, 8, 38, 7, 90, 6, 6, 5, 1),
(2333, 22, 9, 119, 8, 108, 7, 68, 6, 107, 5, 0),
(2334, 23, 9, 118, 8, 96, 7, 171, 6, 106, 5, 1),
(2335, 1, 10, 1245, 9, 351, 8, 1500, 7, 1560, 6, 1),
(2336, 2, 10, 0, 9, 1445, 8, 1185, 7, 1085, 6, 1),
(2337, 3, 10, 825, 9, 920, 8, 1115, 7, 570, 6, 1),
(2338, 4, 10, 430, 9, 550, 8, 380, 7, 28, 6, 1),
(2339, 5, 10, 0, 9, 108, 8, 116, 7, 590, 6, 1),
(2340, 6, 10, 0, 9, 50, 8, 110, 7, 179, 6, 1),
(2341, 7, 10, 0, 9, 720, 8, 290, 7, 400, 6, 1),
(2342, 8, 10, 0, 9, 161, 8, 183, 7, 43, 6, 1),
(2343, 9, 10, 286, 9, 1460, 8, 870, 7, 1500, 6, 1),
(2344, 10, 10, 0, 9, 1185, 8, 1245, 7, 1140, 6, 1),
(2345, 11, 10, 0, 9, 240, 8, 45, 7, 100, 6, 1),
(2346, 12, 10, 8, 9, 121, 8, 60, 7, 153, 6, 1),
(2347, 14, 10, 87, 9, 370, 8, 500, 7, 330, 6, 1),
(2348, 15, 10, -36, 9, 570, 8, 280, 7, 720, 6, 1),
(2349, 16, 10, 0, 9, 140, 8, 74, 7, 24, 6, 1),
(2350, 17, 10, 22, 9, 136, 8, 436, 7, 116, 6, 1),
(2351, 18, 10, 116, 9, -15, 8, 645, 7, 350, 6, 1),
(2352, 19, 10, 0, 9, 510, 8, 70, 7, 31, 6, 1),
(2353, 20, 10, 0, 9, 120, 8, 87, 7, -13, 6, 1),
(2354, 21, 10, 0, 9, 127, 8, 38, 7, 90, 6, 1),
(2355, 22, 10, 0, 9, 119, 8, 108, 7, 68, 6, 1),
(2356, 23, 10, 138, 9, 118, 8, 96, 7, 171, 6, 1),
(2357, 1, 11, 0, 10, 1245, 9, 351, 8, 1500, 7, 1),
(2358, 2, 11, 990, 10, 1040, 9, 1445, 8, 1185, 7, 1),
(2359, 3, 11, 1030, 10, 825, 9, 920, 8, 1115, 7, 1),
(2360, 4, 11, 0, 10, 430, 9, 550, 8, 380, 7, 1),
(2361, 5, 11, 0, 10, 460, 9, 108, 8, 116, 7, 1),
(2362, 6, 11, 0, 10, 310, 9, 50, 8, 110, 7, 1),
(2363, 7, 11, 50, 10, 1115, 9, 720, 8, 290, 7, 1),
(2364, 8, 11, 0, 10, 885, 9, 161, 8, 183, 7, 1),
(2365, 9, 11, 975, 10, 286, 9, 1460, 8, 870, 7, 1),
(2366, 10, 11, 0, 10, 1500, 9, 1185, 8, 1245, 7, 1),
(2367, 11, 11, 83, 10, 110, 9, 240, 8, 45, 7, 1),
(2368, 12, 11, 0, 10, 8, 9, 121, 8, 60, 7, 1),
(2369, 14, 11, 176, 10, 87, 9, 370, 8, 500, 7, 1),
(2370, 15, 11, 280, 10, -36, 9, 570, 8, 280, 7, 1),
(2371, 16, 11, 0, 10, 250, 9, 140, 8, 74, 7, 1),
(2372, 17, 11, 140, 10, 22, 9, 136, 8, 436, 7, 1),
(2373, 18, 11, 156, 10, 116, 9, -15, 8, 645, 7, 1),
(2374, 19, 11, 0, 10, 158, 9, 510, 8, 70, 7, 1),
(2375, 20, 11, 8, 10, 130, 9, 120, 8, 87, 7, 1),
(2376, 21, 11, 79, 10, 151, 9, 127, 8, 38, 7, 1),
(2377, 22, 11, 72, 10, 139, 9, 119, 8, 108, 7, 1),
(2378, 23, 11, 71, 10, 138, 9, 118, 8, 96, 7, 1),
(2379, 1, 12, 0, 11, 1710, 10, 1245, 9, 351, 8, 1),
(2380, 2, 12, 1245, 11, 990, 10, 1040, 9, 1445, 8, 1),
(2381, 3, 12, 1155, 11, 1030, 10, 825, 9, 920, 8, 1),
(2382, 4, 12, 0, 11, 460, 10, 430, 9, 550, 8, 1),
(2383, 5, 12, 0, 11, 675, 10, 460, 9, 108, 8, 1),
(2384, 6, 12, 0, 11, 120, 10, 310, 9, 50, 8, 1),
(2385, 7, 12, 100, 11, 50, 10, 1115, 9, 720, 8, 1),
(2386, 8, 12, 350, 11, 430, 10, 885, 9, 161, 8, 1),
(2387, 9, 12, 675, 11, 975, 10, 286, 9, 1460, 8, 1),
(2388, 10, 12, 530, 11, 1290, 10, 1500, 9, 1185, 8, 1),
(2389, 11, 12, 0, 11, 83, 10, 110, 9, 240, 8, 1),
(2390, 12, 12, 0, 11, 161, 10, 8, 9, 121, 8, 1),
(2391, 14, 12, -35, 11, 176, 10, 87, 9, 370, 8, 1),
(2392, 15, 12, 99, 11, 280, 10, -36, 9, 570, 8, 1),
(2393, 16, 12, 91, 11, 88, 10, 250, 9, 140, 8, 1),
(2394, 17, 12, 120, 11, 140, 10, 22, 9, 136, 8, 1),
(2395, 18, 12, -11, 11, 156, 10, 116, 9, -15, 8, 1),
(2396, 19, 12, 0, 11, 290, 10, 158, 9, 510, 8, 1),
(2397, 20, 12, 0, 11, 8, 10, 130, 9, 120, 8, 1),
(2398, 21, 12, 97, 11, 79, 10, 151, 9, 127, 8, 1),
(2399, 22, 12, 106, 11, 72, 10, 139, 9, 119, 8, 1),
(2400, 23, 12, 105, 11, 71, 10, 138, 9, 118, 8, 1),
(2401, 1, 13, 0, 12, 1500, 11, 1710, 10, 1245, 9, 1),
(2402, 2, 13, 310, 12, 1245, 11, 990, 10, 1040, 9, 1),
(2403, 3, 13, 1085, 12, 1155, 11, 1030, 10, 825, 9, 1),
(2404, 4, 13, 0, 12, 975, 11, 460, 10, 430, 9, 1),
(2405, 5, 13, 0, 12, 255, 11, 675, 10, 460, 9, 1),
(2406, 6, 13, 0, 12, 166, 11, 120, 10, 310, 9, 1),
(2407, 7, 13, 0, 12, 100, 11, 50, 10, 1115, 9, 1),
(2408, 8, 13, 347, 12, 350, 11, 430, 10, 885, 9, 1),
(2409, 9, 13, 0, 12, 675, 11, 975, 10, 286, 9, 1),
(2410, 10, 13, 825, 12, 530, 11, 1290, 10, 1500, 9, 1),
(2411, 11, 13, 0, 12, 990, 11, 83, 10, 110, 9, 1),
(2412, 12, 13, 0, 12, 123, 11, 161, 10, 8, 9, 1),
(2413, 14, 13, 70, 12, -35, 11, 176, 10, 87, 9, 1),
(2414, 15, 13, 250, 12, 99, 11, 280, 10, -36, 9, 1),
(2415, 16, 13, 170, 12, 91, 11, 88, 10, 250, 9, 1),
(2416, 17, 13, 123, 12, 120, 11, 140, 10, 22, 9, 1),
(2417, 18, 13, 81, 12, -11, 11, 156, 10, 116, 9, 1),
(2418, 19, 13, 18, 12, 535, 11, 290, 10, 158, 9, 1),
(2419, 20, 13, 0, 12, 118, 11, 8, 10, 130, 9, 1),
(2420, 21, 13, 129, 12, 97, 11, 79, 10, 151, 9, 1),
(2421, 22, 13, 117, 12, 106, 11, 72, 10, 139, 9, 1),
(2422, 23, 13, 138, 12, 105, 11, 71, 10, 138, 9, 1),
(2467, 1, 14, 1750, 13, 1750, 12, 1500, 11, 1710, 10, 1),
(2468, 2, 14, -4, 13, 310, 12, 1245, 11, 990, 10, 1),
(2469, 3, 14, 720, 13, 1085, 12, 1155, 11, 1030, 10, 1),
(2470, 4, 14, 410, 13, 675, 12, 975, 11, 460, 10, 1),
(2471, 5, 14, 330, 13, 500, 12, 255, 11, 675, 10, 1),
(2472, 6, 14, 0, 13, 360, 12, 166, 11, 120, 10, 1),
(2473, 7, 14, 0, 13, 900, 12, 100, 11, 50, 10, 1),
(2474, 8, 14, 0, 13, 347, 12, 350, 11, 430, 10, 1),
(2475, 9, 14, 0, 13, 1140, 12, 675, 11, 975, 10, 1),
(2476, 10, 14, 1035, 13, 825, 12, 530, 11, 1290, 10, 1),
(2477, 11, 14, 0, 13, 270, 12, 990, 11, 83, 10, 1),
(2478, 12, 14, 0, 13, 116, 12, 123, 11, 161, 10, 1),
(2479, 14, 14, -11, 13, 70, 12, -35, 11, 176, 10, 1),
(2480, 15, 14, 55, 13, 250, 12, 99, 11, 280, 10, 1),
(2481, 16, 14, 143, 13, 170, 12, 91, 11, 88, 10, 1),
(2482, 17, 14, 0, 13, 123, 12, 120, 11, 140, 10, 1),
(2483, 18, 14, 77, 13, 81, 12, -11, 11, 156, 10, 1),
(2484, 19, 14, 51, 13, 18, 12, 535, 11, 290, 10, 1),
(2485, 20, 14, 0, 13, 86, 12, 118, 11, 8, 10, 1),
(2486, 21, 14, 140, 13, 129, 12, 97, 11, 79, 10, 1),
(2487, 22, 14, 0, 13, 117, 12, 106, 11, 72, 10, 1),
(2488, 23, 14, 128, 13, 138, 12, 105, 11, 71, 10, 1),
(2511, 1, 15, 1460, 14, 1750, 13, 1750, 12, 1500, 11, 1),
(2512, 2, 15, 0, 14, -4, 13, 310, 12, 1245, 11, 1),
(2513, 3, 15, 830, 14, 720, 13, 1085, 12, 1155, 11, 1),
(2514, 4, 15, 400, 14, 410, 13, 675, 12, 975, 11, 1),
(2515, 5, 15, 290, 14, 330, 13, 500, 12, 255, 11, 1),
(2516, 6, 15, 70, 14, 230, 13, 360, 12, 166, 11, 1),
(2517, 7, 15, 0, 14, 1030, 13, 900, 12, 100, 11, 1),
(2518, 8, 15, 0, 14, 1200, 13, 347, 12, 350, 11, 1),
(2519, 9, 15, 465, 14, 660, 13, 1140, 12, 675, 11, 1),
(2520, 10, 15, 322, 14, 1035, 13, 825, 12, 530, 11, 1),
(2521, 11, 15, 0, 14, 865, 13, 270, 12, 990, 11, 1),
(2522, 12, 15, 0, 14, 175, 13, 116, 12, 123, 11, 1),
(2523, 14, 15, 0, 14, -11, 13, 70, 12, -35, 11, 1),
(2524, 15, 15, 171, 14, 55, 13, 250, 12, 99, 11, 1),
(2525, 16, 15, 84, 14, 143, 13, 170, 12, 91, 11, 1),
(2526, 17, 15, 68, 14, 146, 13, 123, 12, 120, 11, 1),
(2527, 18, 15, 0, 14, 77, 13, 81, 12, -11, 11, 1),
(2528, 19, 15, 123, 14, 51, 13, 18, 12, 535, 11, 1),
(2529, 20, 15, 0, 14, 141, 13, 86, 12, 118, 11, 1),
(2530, 21, 15, -10, 14, 140, 13, 129, 12, 97, 11, 1),
(2531, 22, 15, -5, 14, 149, 13, 117, 12, 106, 11, 1),
(2532, 23, 15, 81, 14, 128, 13, 138, 12, 105, 11, 1),
(2555, 1, 16, 1500, 15, 1460, 14, 1750, 13, 1750, 12, 1),
(2556, 2, 16, 280, 15, 1645, 14, -4, 13, 310, 12, 1),
(2557, 3, 16, 175, 15, 830, 14, 720, 13, 1085, 12, 1),
(2558, 4, 16, 0, 15, 400, 14, 410, 13, 675, 12, 1),
(2559, 5, 16, 101, 15, 290, 14, 330, 13, 500, 12, 1),
(2560, 6, 16, 0, 15, 70, 14, 230, 13, 360, 12, 1),
(2561, 7, 16, 0, 15, 700, 14, 1030, 13, 900, 12, 1),
(2562, 8, 16, 0, 15, 1085, 14, 1200, 13, 347, 12, 1),
(2563, 9, 16, 0, 15, 465, 14, 660, 13, 1140, 12, 1),
(2564, 10, 16, 0, 15, 322, 14, 1035, 13, 825, 12, 1),
(2565, 11, 16, 161, 15, 645, 14, 865, 13, 270, 12, 1),
(2566, 12, 16, 100, 15, 470, 14, 175, 13, 116, 12, 1),
(2567, 14, 16, 0, 15, 110, 14, -11, 13, 70, 12, 1),
(2568, 15, 16, 0, 15, 171, 14, 55, 13, 250, 12, 1),
(2569, 16, 16, 156, 15, 84, 14, 143, 13, 170, 12, 1),
(2570, 17, 16, 84, 15, 68, 14, 146, 13, 123, 12, 1),
(2571, 18, 16, 0, 15, 146, 14, 77, 13, 81, 12, 1),
(2572, 19, 16, 210, 15, 123, 14, 51, 13, 18, 12, 1),
(2573, 20, 16, 84, 15, 107, 14, 141, 13, 86, 12, 1),
(2574, 21, 16, 73, 15, -10, 14, 140, 13, 129, 12, 1),
(2575, 22, 16, 97, 15, -5, 14, 149, 13, 117, 12, 1),
(2576, 23, 16, 138, 15, 81, 14, 128, 13, 138, 12, 1),
(2599, 1, 17, 1460, 16, 1500, 15, 1460, 14, 1750, 13, 1),
(2600, 2, 17, 0, 16, 280, 15, 1645, 14, -4, 13, 1),
(2601, 3, 17, 0, 16, 175, 15, 830, 14, 720, 13, 1),
(2602, 4, 17, 430, 16, 935, 15, 400, 14, 410, 13, 1),
(2603, 5, 17, 96, 16, 101, 15, 290, 14, 330, 13, 1),
(2604, 6, 17, 0, 16, 700, 15, 70, 14, 230, 13, 1),
(2605, 7, 17, 0, 16, 820, 15, 700, 14, 1030, 13, 1),
(2606, 8, 17, 0, 16, 940, 15, 1085, 14, 1200, 13, 1),
(2607, 9, 17, 0, 16, 1350, 15, 465, 14, 660, 13, 1),
(2608, 10, 17, 660, 16, 885, 15, 322, 14, 1035, 13, 1),
(2609, 11, 17, 271, 16, 161, 15, 645, 14, 865, 13, 1),
(2610, 12, 17, 123, 16, 100, 15, 470, 14, 175, 13, 1),
(2611, 14, 17, 0, 16, 340, 15, 110, 14, -11, 13, 1),
(2612, 15, 17, 0, 16, 290, 15, 171, 14, 55, 13, 1),
(2613, 16, 17, 130, 16, 156, 15, 84, 14, 143, 13, 1),
(2614, 17, 17, 90, 16, 84, 15, 68, 14, 146, 13, 1),
(2615, 18, 17, 68, 16, 103, 15, 146, 14, 77, 13, 1),
(2616, 19, 17, 114, 16, 210, 15, 123, 14, 51, 13, 1),
(2617, 20, 17, 86, 16, 84, 15, 107, 14, 141, 13, 1),
(2618, 21, 17, 87, 16, 73, 15, -10, 14, 140, 13, 1),
(2619, 22, 17, 95, 16, 97, 15, -5, 14, 149, 13, 1),
(2620, 23, 17, 79, 16, 138, 15, 81, 14, 128, 13, 1),
(2621, 1, 18, 1750, 17, 1460, 16, 1500, 15, 1460, 14, 1),
(2622, 2, 18, 0, 17, 1395, 16, 280, 15, 1645, 14, 1),
(2623, 3, 18, 0, 17, 930, 16, 175, 15, 830, 14, 1),
(2643, 1, 18, 1750, 17, 1460, 16, 1500, 15, 1460, 14, 1),
(2644, 2, 18, 0, 17, 1395, 16, 280, 15, 1645, 14, 1),
(2645, 3, 18, 0, 17, 930, 16, 175, 15, 830, 14, 1),
(2646, 4, 18, 106, 17, 430, 16, 935, 15, 400, 14, 1),
(2647, 5, 18, 250, 17, 96, 16, 101, 15, 290, 14, 1),
(2648, 6, 18, 0, 17, 335, 16, 700, 15, 70, 14, 1),
(2649, 7, 18, 151, 17, 0, 16, 820, 15, 700, 14, 1),
(2650, 8, 18, 0, 17, 895, 16, 940, 15, 1085, 14, 1),
(2651, 9, 18, 280, 17, 1200, 16, 1350, 15, 465, 14, 1),
(2652, 10, 18, 935, 17, 660, 16, 885, 15, 322, 14, 1),
(2653, 11, 18, 0, 17, 271, 16, 161, 15, 645, 14, 1),
(2654, 12, 18, 163, 17, 123, 16, 100, 15, 470, 14, 1),
(2655, 14, 18, 70, 17, 550, 16, 340, 15, 110, 14, 1),
(2656, 15, 18, -30, 17, 270, 16, 290, 15, 171, 14, 1),
(2657, 16, 18, 88, 17, 130, 16, 156, 15, 84, 14, 1),
(2658, 17, 18, 0, 17, 90, 16, 84, 15, 68, 14, 1),
(2659, 18, 18, 79, 17, 68, 16, 103, 15, 146, 14, 1),
(2660, 19, 18, 125, 17, 114, 16, 210, 15, 123, 14, 1),
(2661, 20, 18, 105, 17, 86, 16, 84, 15, 107, 14, 1),
(2662, 21, 18, 81, 17, 87, 16, 73, 15, -10, 14, 1),
(2663, 22, 18, 97, 17, 95, 16, 97, 15, -5, 14, 1),
(2664, 23, 18, 84, 17, 79, 16, 138, 15, 81, 14, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados_carrera`
--

DROP TABLE IF EXISTS `resultados_carrera`;
CREATE TABLE IF NOT EXISTS `resultados_carrera` (
  `res_car` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `res_car_car_cod` int(11) NOT NULL,
  `res_car_pil_cod` int(11) NOT NULL,
  `res_car_pos_ini` int(11) NOT NULL,
  `res_car_pos_fin` int(11) NOT NULL,
  `res_car_num_vue` int(11) NOT NULL,
  `res_car_car_fin` tinyint(1) NOT NULL,
  `res_car_vue_rap` tinyint(1) NOT NULL,
  `res_car_rec_cir` tinyint(1) NOT NULL,
  PRIMARY KEY (`res_car`),
  KEY `res_car_car_fk` (`res_car_car_cod`),
  KEY `res_car_pil_fk` (`res_car_pil_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1477 ;

--
-- Volcado de datos para la tabla `resultados_carrera`
--

INSERT INTO `resultados_carrera` (`res_car`, `res_car_car_cod`, `res_car_pil_cod`, `res_car_pos_ini`, `res_car_pos_fin`, `res_car_num_vue`, `res_car_car_fin`, `res_car_vue_rap`, `res_car_rec_cir`) VALUES
(1081, 1, 7, 7, 1, 58, 1, 1, 0),
(1082, 1, 3, 5, 2, 58, 1, 0, 0),
(1083, 1, 1, 1, 3, 58, 1, 0, 0),
(1084, 1, 4, 4, 4, 58, 1, 0, 0),
(1085, 1, 10, 3, 5, 58, 1, 0, 0),
(1086, 1, 2, 2, 6, 58, 1, 0, 0),
(1087, 1, 15, 12, 7, 58, 1, 0, 0),
(1088, 1, 14, 9, 8, 58, 1, 0, 0),
(1089, 1, 5, 10, 9, 58, 1, 0, 0),
(1090, 1, 8, 8, 10, 58, 1, 0, 0),
(1091, 1, 6, 15, 11, 58, 1, 0, 0),
(1092, 1, 18, 13, 12, 58, 1, 0, 0),
(1093, 1, 12, 18, 13, 57, 1, 0, 0),
(1094, 1, 17, 16, 14, 57, 1, 0, 0),
(1095, 1, 22, 19, 15, 57, 1, 0, 0),
(1096, 1, 20, 22, 16, 56, 1, 0, 0),
(1097, 1, 23, 20, 17, 56, 1, 0, 0),
(1098, 1, 21, 21, 18, 56, 1, 0, 0),
(1099, 1, 19, 14, 19, 39, 0, 0, 0),
(1100, 1, 9, 6, 20, 26, 0, 0, 0),
(1101, 1, 16, 17, 21, 24, 0, 0, 0),
(1102, 1, 11, 11, 22, 0, 0, 0, 0),
(1103, 2, 1, 1, 1, 56, 1, 0, 0),
(1104, 2, 2, 5, 2, 56, 1, 0, 0),
(1105, 2, 10, 4, 3, 56, 1, 0, 0),
(1106, 2, 9, 6, 4, 56, 1, 0, 0),
(1107, 2, 4, 2, 5, 56, 1, 0, 0),
(1108, 2, 8, 11, 6, 56, 1, 0, 0),
(1109, 2, 7, 10, 7, 56, 1, 0, 0),
(1110, 2, 11, 12, 8, 56, 1, 0, 0),
(1111, 2, 6, 9, 9, 56, 1, 1, 0),
(1112, 2, 18, 17, 10, 56, 1, 0, 0),
(1113, 2, 17, 18, 11, 56, 1, 0, 0),
(1114, 2, 12, 14, 12, 55, 1, 0, 0),
(1115, 2, 22, 19, 13, 55, 1, 0, 0),
(1116, 2, 20, 20, 14, 55, 1, 0, 0),
(1117, 2, 21, 22, 15, 55, 1, 0, 0),
(1118, 2, 23, 21, 16, 54, 1, 0, 0),
(1119, 2, 5, 7, 17, 53, 1, 0, 0),
(1120, 2, 19, 13, 18, 51, 1, 0, 0),
(1121, 2, 16, 16, 19, 45, 0, 0, 0),
(1122, 2, 15, 8, 20, 27, 0, 0, 0),
(1123, 2, 14, 15, 21, 22, 0, 0, 0),
(1124, 2, 3, 3, 22, 1, 0, 0, 0),
(1125, 3, 3, 3, 1, 56, 1, 0, 0),
(1126, 3, 7, 2, 2, 56, 1, 0, 0),
(1127, 3, 10, 1, 3, 56, 1, 0, 0),
(1128, 3, 1, 9, 4, 56, 1, 1, 0),
(1129, 3, 5, 8, 5, 56, 1, 0, 0),
(1130, 3, 4, 5, 6, 56, 1, 0, 0),
(1131, 3, 19, 7, 7, 56, 1, 0, 0),
(1132, 3, 14, 11, 8, 56, 1, 0, 0),
(1133, 3, 8, 6, 9, 56, 1, 0, 0),
(1134, 3, 11, 10, 10, 56, 1, 0, 0),
(1135, 3, 6, 12, 11, 56, 1, 0, 0),
(1136, 3, 18, 15, 12, 56, 1, 0, 0),
(1137, 3, 17, 16, 13, 56, 1, 0, 0),
(1138, 3, 16, 14, 14, 56, 1, 0, 0),
(1139, 3, 22, 18, 15, 55, 1, 0, 0),
(1140, 3, 20, 20, 16, 55, 1, 0, 0),
(1141, 3, 23, 19, 17, 55, 1, 0, 0),
(1142, 3, 21, 21, 18, 55, 1, 0, 0),
(1143, 3, 9, 4, 19, 21, 0, 0, 0),
(1144, 3, 2, 22, 20, 15, 0, 0, 0),
(1145, 3, 15, 13, 21, 5, 0, 0, 0),
(1146, 3, 12, 17, 22, 4, 0, 0, 0),
(1147, 4, 1, 2, 1, 57, 1, 1, 0),
(1148, 4, 7, 8, 2, 57, 1, 0, 0),
(1149, 4, 8, 11, 3, 57, 1, 0, 0),
(1150, 4, 14, 5, 4, 57, 1, 0, 0),
(1151, 4, 10, 9, 5, 57, 1, 0, 0),
(1152, 4, 6, 12, 6, 57, 1, 0, 0),
(1153, 4, 2, 7, 7, 57, 1, 0, 0),
(1154, 4, 3, 3, 8, 57, 1, 0, 0),
(1155, 4, 9, 1, 9, 57, 1, 0, 0),
(1156, 4, 5, 10, 10, 57, 1, 0, 0),
(1157, 4, 16, 17, 11, 57, 1, 0, 0),
(1158, 4, 11, 14, 12, 57, 1, 0, 0),
(1159, 4, 15, 6, 13, 57, 1, 0, 0),
(1160, 4, 17, 15, 14, 57, 1, 0, 0),
(1161, 4, 4, 4, 15, 57, 1, 0, 0),
(1162, 4, 19, 13, 16, 56, 1, 0, 0),
(1163, 4, 20, 18, 17, 56, 1, 0, 0),
(1164, 4, 12, 22, 18, 56, 1, 0, 0),
(1165, 4, 22, 19, 19, 56, 1, 0, 0),
(1166, 4, 23, 21, 20, 56, 1, 0, 0),
(1167, 4, 21, 20, 21, 55, 1, 0, 0),
(1168, 4, 18, 16, 22, 16, 0, 0, 0),
(1169, 5, 3, 5, 1, 66, 1, 0, 0),
(1170, 5, 7, 4, 2, 66, 1, 0, 0),
(1171, 5, 4, 9, 3, 66, 1, 0, 0),
(1172, 5, 1, 3, 4, 66, 1, 0, 0),
(1173, 5, 2, 7, 5, 66, 1, 0, 0),
(1174, 5, 9, 1, 6, 66, 1, 0, 0),
(1175, 5, 14, 10, 7, 66, 1, 0, 0),
(1176, 5, 5, 14, 8, 66, 1, 0, 0),
(1177, 5, 6, 8, 9, 66, 1, 0, 0),
(1178, 5, 19, 11, 10, 65, 1, 0, 0),
(1179, 5, 12, 19, 11, 65, 1, 1, 0),
(1180, 5, 10, 2, 12, 65, 1, 0, 0),
(1181, 5, 15, 13, 13, 65, 1, 0, 0),
(1182, 5, 16, 17, 14, 65, 1, 0, 0),
(1183, 5, 11, 15, 15, 65, 1, 0, 0),
(1184, 5, 17, 16, 16, 65, 1, 0, 0),
(1185, 5, 20, 22, 17, 65, 1, 0, 0),
(1186, 5, 22, 20, 18, 64, 1, 0, 0),
(1187, 5, 23, 21, 19, 64, 1, 0, 0),
(1188, 5, 18, 12, 20, 52, 0, 0, 0),
(1189, 5, 21, 18, 21, 21, 0, 0, 0),
(1190, 5, 8, 6, 22, 8, 0, 0, 0),
(1191, 6, 9, 1, 1, 78, 1, 0, 0),
(1192, 6, 1, 3, 2, 78, 1, 1, 0),
(1193, 6, 2, 4, 3, 78, 1, 0, 0),
(1194, 6, 10, 2, 4, 78, 1, 0, 0),
(1195, 6, 15, 8, 5, 78, 1, 0, 0),
(1196, 6, 5, 9, 6, 78, 1, 0, 0),
(1197, 6, 3, 6, 7, 78, 1, 0, 0),
(1198, 6, 18, 10, 8, 78, 1, 0, 0),
(1199, 6, 14, 17, 9, 78, 1, 0, 0),
(1200, 6, 7, 5, 10, 78, 1, 0, 0),
(1201, 6, 11, 11, 11, 78, 1, 0, 0),
(1202, 6, 17, 14, 12, 78, 1, 0, 0),
(1203, 6, 12, 19, 13, 78, 1, 0, 0),
(1204, 6, 23, 22, 14, 78, 1, 0, 0),
(1205, 6, 21, 15, 15, 78, 1, 0, 0),
(1206, 6, 6, 7, 16, 72, 1, 0, 0),
(1207, 6, 8, 13, 17, 63, 0, 0, 0),
(1208, 6, 19, 12, 18, 61, 0, 0, 0),
(1209, 6, 22, 20, 19, 58, 0, 0, 0),
(1210, 6, 16, 16, 20, 44, 0, 0, 0),
(1211, 6, 4, 21, 21, 28, 0, 0, 0),
(1212, 6, 20, 18, 22, 7, 0, 0, 0),
(1213, 7, 1, 1, 1, 70, 1, 0, 0),
(1214, 7, 3, 6, 2, 70, 1, 0, 0),
(1215, 7, 10, 2, 3, 70, 1, 0, 0),
(1216, 7, 2, 5, 4, 70, 1, 1, 0),
(1217, 7, 9, 4, 5, 70, 1, 0, 0),
(1218, 7, 18, 7, 6, 69, 1, 0, 0),
(1219, 7, 14, 17, 7, 69, 1, 0, 0),
(1220, 7, 4, 16, 8, 69, 1, 0, 0),
(1221, 7, 7, 10, 9, 69, 1, 0, 0),
(1222, 7, 15, 8, 10, 69, 1, 0, 0),
(1223, 7, 6, 12, 11, 69, 1, 0, 0),
(1224, 7, 5, 14, 12, 69, 1, 0, 0),
(1225, 7, 8, 22, 13, 69, 1, 0, 0),
(1226, 7, 17, 3, 14, 69, 1, 0, 0),
(1227, 7, 19, 11, 15, 68, 1, 0, 0),
(1228, 7, 16, 13, 16, 68, 1, 0, 0),
(1229, 7, 22, 19, 17, 68, 1, 0, 0),
(1230, 7, 20, 18, 18, 67, 1, 0, 0),
(1231, 7, 23, 20, 19, 67, 1, 0, 0),
(1232, 7, 12, 15, 20, 63, 1, 0, 0),
(1233, 7, 11, 9, 21, 45, 0, 0, 0),
(1234, 7, 21, 21, 22, 43, 0, 0, 0),
(1235, 8, 9, 2, 1, 52, 1, 0, 0),
(1236, 8, 2, 4, 2, 52, 1, 1, 0),
(1237, 8, 3, 9, 3, 52, 1, 0, 0),
(1238, 8, 10, 1, 4, 52, 1, 0, 0),
(1239, 8, 7, 8, 5, 52, 1, 0, 0),
(1240, 8, 4, 11, 6, 52, 1, 0, 0),
(1241, 8, 15, 6, 7, 52, 1, 0, 0),
(1242, 8, 19, 5, 8, 52, 1, 0, 0),
(1243, 8, 14, 21, 9, 52, 1, 0, 0),
(1244, 8, 11, 14, 10, 52, 1, 0, 0),
(1245, 8, 16, 15, 11, 52, 1, 0, 0),
(1246, 8, 17, 16, 12, 52, 1, 0, 0),
(1247, 8, 5, 10, 13, 52, 1, 0, 0),
(1248, 8, 12, 17, 14, 52, 1, 0, 0),
(1249, 8, 20, 18, 15, 52, 1, 0, 0),
(1250, 8, 22, 19, 16, 52, 1, 0, 0),
(1251, 8, 23, 20, 17, 52, 1, 0, 0),
(1252, 8, 21, 22, 18, 52, 1, 0, 0),
(1253, 8, 8, 7, 19, 51, 1, 0, 0),
(1254, 8, 6, 13, 20, 46, 1, 0, 0),
(1255, 8, 1, 3, 21, 41, 0, 0, 0),
(1256, 8, 18, 12, 22, 35, 0, 0, 0),
(1257, 9, 10, 1, 1, 70, 1, 0, 0),
(1258, 9, 7, 6, 2, 70, 1, 0, 0),
(1259, 9, 1, 2, 3, 70, 1, 0, 0),
(1260, 9, 2, 10, 4, 70, 1, 1, 0),
(1261, 9, 3, 5, 5, 70, 1, 0, 0),
(1262, 9, 8, 3, 6, 70, 1, 0, 0),
(1263, 9, 5, 13, 7, 70, 1, 0, 0),
(1264, 9, 4, 7, 8, 70, 1, 0, 0),
(1265, 9, 6, 9, 9, 69, 1, 0, 0),
(1266, 9, 16, 15, 10, 69, 1, 0, 0),
(1267, 9, 11, 12, 11, 69, 1, 0, 0),
(1268, 9, 18, 14, 12, 69, 1, 0, 0),
(1269, 9, 19, 8, 13, 69, 1, 0, 0),
(1270, 9, 21, 20, 14, 68, 1, 0, 0),
(1271, 9, 20, 19, 15, 68, 1, 0, 0),
(1272, 9, 22, 21, 16, 67, 1, 0, 0),
(1273, 9, 23, 22, 17, 67, 1, 0, 0),
(1274, 9, 14, 18, 18, 66, 1, 0, 0),
(1275, 9, 9, 4, 19, 64, 1, 0, 0),
(1276, 9, 17, 16, 20, 42, 0, 0, 0),
(1277, 9, 12, 17, 21, 28, 0, 0, 0),
(1278, 9, 15, 11, 22, 19, 0, 0, 0),
(1279, 10, 1, 2, 1, 44, 1, 1, 0),
(1280, 10, 3, 9, 2, 44, 1, 0, 0),
(1281, 10, 10, 1, 3, 44, 1, 0, 0),
(1282, 10, 9, 4, 4, 44, 1, 0, 0),
(1283, 10, 2, 3, 5, 44, 1, 0, 0),
(1284, 10, 5, 6, 6, 44, 1, 0, 0),
(1285, 10, 4, 10, 7, 44, 1, 0, 0),
(1286, 10, 8, 7, 8, 44, 1, 0, 0),
(1287, 10, 15, 12, 9, 44, 1, 0, 0),
(1288, 10, 19, 19, 10, 44, 1, 0, 0),
(1289, 10, 6, 13, 11, 44, 1, 0, 0),
(1290, 10, 18, 18, 12, 44, 1, 0, 0),
(1291, 10, 11, 11, 13, 44, 1, 0, 0),
(1292, 10, 12, 21, 14, 44, 1, 0, 0),
(1293, 10, 17, 20, 15, 44, 1, 0, 0),
(1294, 10, 21, 14, 16, 43, 1, 0, 0),
(1295, 10, 16, 17, 17, 43, 1, 0, 0),
(1296, 10, 22, 15, 18, 43, 1, 0, 0),
(1297, 10, 23, 16, 19, 42, 1, 0, 0),
(1298, 10, 14, 5, 20, 26, 0, 0, 0),
(1299, 10, 7, 8, 21, 25, 0, 0, 0),
(1300, 10, 20, 22, 22, 8, 0, 0, 0),
(1301, 11, 1, 1, 1, 53, 1, 0, 0),
(1302, 11, 3, 5, 2, 53, 1, 0, 0),
(1303, 11, 2, 2, 3, 53, 1, 0, 0),
(1304, 11, 4, 4, 4, 53, 1, 0, 0),
(1305, 11, 11, 3, 5, 53, 1, 0, 0),
(1306, 11, 9, 6, 6, 53, 1, 0, 0),
(1307, 11, 19, 7, 7, 53, 1, 0, 0),
(1308, 11, 8, 13, 8, 53, 1, 0, 0),
(1309, 11, 10, 12, 9, 53, 1, 1, 0),
(1310, 11, 5, 9, 10, 53, 1, 0, 0),
(1311, 11, 7, 11, 11, 53, 1, 0, 0),
(1312, 11, 6, 8, 12, 53, 1, 0, 0),
(1313, 11, 12, 16, 13, 53, 1, 0, 0),
(1314, 11, 16, 14, 14, 53, 1, 0, 0),
(1315, 11, 17, 18, 15, 53, 1, 0, 0),
(1316, 11, 15, 17, 16, 52, 1, 0, 0),
(1317, 11, 20, 20, 17, 52, 1, 0, 0),
(1318, 11, 21, 19, 18, 52, 1, 0, 0),
(1319, 11, 22, 21, 19, 52, 1, 0, 0),
(1320, 11, 23, 22, 20, 52, 1, 0, 0),
(1321, 11, 18, 10, 21, 14, 0, 0, 0),
(1322, 11, 14, 15, 22, 0, 0, 0, 0),
(1323, 12, 1, 1, 1, 61, 1, 1, 0),
(1324, 12, 3, 7, 2, 61, 1, 0, 0),
(1325, 12, 7, 13, 3, 61, 1, 0, 0),
(1326, 12, 9, 2, 4, 61, 1, 0, 0),
(1327, 12, 10, 5, 5, 61, 1, 0, 0),
(1328, 12, 4, 6, 6, 61, 1, 0, 0),
(1329, 12, 5, 8, 7, 61, 1, 0, 0),
(1330, 12, 6, 14, 8, 61, 1, 0, 0),
(1331, 12, 11, 11, 9, 61, 1, 0, 0),
(1332, 12, 15, 15, 10, 61, 1, 0, 0),
(1333, 12, 16, 18, 11, 61, 1, 0, 0),
(1334, 12, 12, 10, 12, 61, 1, 0, 0),
(1335, 12, 17, 16, 13, 61, 1, 0, 0),
(1336, 12, 18, 12, 14, 61, 1, 0, 0),
(1337, 12, 2, 4, 15, 60, 1, 0, 0),
(1338, 12, 21, 20, 16, 60, 1, 0, 0),
(1339, 12, 23, 22, 17, 60, 1, 0, 0),
(1340, 12, 22, 21, 18, 60, 1, 0, 0),
(1341, 12, 20, 19, 19, 60, 1, 0, 0),
(1342, 12, 14, 17, 20, 54, 1, 0, 0),
(1343, 12, 8, 3, 21, 37, 0, 0, 0),
(1344, 12, 19, 9, 22, 23, 0, 0, 0),
(1345, 13, 1, 1, 1, 55, 1, 1, 0),
(1346, 13, 7, 9, 2, 55, 1, 0, 0),
(1347, 13, 8, 3, 3, 55, 1, 0, 0),
(1348, 13, 11, 7, 4, 55, 1, 0, 0),
(1349, 13, 10, 2, 5, 55, 1, 0, 0),
(1350, 13, 3, 5, 6, 55, 1, 0, 0),
(1351, 13, 9, 4, 7, 55, 1, 0, 0),
(1352, 13, 5, 11, 8, 55, 1, 0, 0),
(1353, 13, 4, 6, 9, 55, 1, 0, 0),
(1354, 13, 6, 10, 10, 55, 1, 0, 0),
(1355, 13, 12, 8, 11, 55, 1, 0, 0),
(1356, 13, 17, 17, 12, 55, 1, 0, 0),
(1357, 13, 16, 18, 13, 55, 1, 0, 0),
(1358, 13, 20, 19, 14, 55, 1, 0, 0),
(1359, 13, 21, 20, 15, 55, 1, 0, 0),
(1360, 13, 22, 22, 16, 55, 1, 0, 0),
(1361, 13, 23, 21, 17, 55, 1, 0, 0),
(1362, 13, 18, 16, 18, 53, 1, 0, 0),
(1363, 13, 19, 12, 19, 52, 1, 0, 0),
(1364, 13, 15, 14, 20, 50, 1, 0, 0),
(1365, 13, 2, 13, 21, 36, 0, 0, 0),
(1366, 13, 14, 15, 22, 24, 0, 0, 0),
(1367, 14, 1, 2, 1, 53, 1, 0, 0),
(1368, 14, 2, 1, 2, 53, 1, 1, 0),
(1369, 14, 8, 4, 3, 53, 1, 0, 0),
(1370, 14, 3, 8, 4, 53, 1, 0, 0),
(1371, 14, 7, 9, 5, 53, 1, 0, 0),
(1372, 14, 11, 7, 6, 53, 1, 0, 0),
(1373, 14, 12, 14, 7, 53, 1, 0, 0),
(1374, 14, 9, 6, 8, 53, 1, 0, 0),
(1375, 14, 5, 10, 9, 53, 1, 0, 0),
(1376, 14, 4, 5, 10, 53, 1, 0, 0),
(1377, 14, 14, 12, 11, 53, 1, 0, 0),
(1378, 14, 18, 17, 12, 52, 1, 0, 0),
(1379, 14, 19, 16, 13, 52, 1, 0, 0),
(1380, 14, 15, 22, 14, 52, 1, 0, 0),
(1381, 14, 6, 11, 15, 52, 1, 0, 0),
(1382, 14, 16, 15, 16, 52, 1, 0, 0),
(1383, 14, 17, 13, 17, 52, 1, 0, 0),
(1384, 14, 20, 20, 18, 52, 1, 0, 0),
(1385, 14, 23, 18, 19, 52, 1, 0, 0),
(1386, 14, 10, 3, 20, 7, 0, 0, 0),
(1387, 14, 21, 19, 21, 0, 0, 0, 0),
(1388, 14, 22, 21, 22, 0, 0, 0, 0),
(1389, 15, 1, 1, 1, 60, 1, 0, 0),
(1390, 15, 9, 2, 2, 60, 1, 0, 0),
(1391, 15, 8, 17, 3, 60, 1, 0, 0),
(1392, 15, 4, 5, 4, 60, 1, 0, 0),
(1393, 15, 6, 9, 5, 60, 1, 0, 0),
(1394, 15, 10, 3, 6, 60, 1, 0, 0),
(1395, 15, 7, 6, 7, 60, 1, 1, 0),
(1396, 15, 14, 12, 8, 60, 1, 0, 0),
(1397, 15, 15, 13, 9, 60, 1, 0, 0),
(1398, 15, 19, 11, 10, 60, 1, 0, 0),
(1399, 15, 3, 8, 11, 60, 1, 0, 0),
(1400, 15, 16, 18, 12, 60, 1, 0, 0),
(1401, 15, 18, 14, 13, 59, 1, 0, 0),
(1402, 15, 5, 10, 14, 59, 1, 0, 0),
(1403, 15, 12, 16, 15, 59, 1, 0, 0),
(1404, 15, 17, 15, 16, 59, 1, 0, 0),
(1405, 15, 23, 22, 17, 58, 1, 0, 0),
(1406, 15, 22, 19, 18, 58, 1, 0, 0),
(1407, 15, 11, 7, 19, 54, 1, 0, 0),
(1408, 15, 2, 4, 20, 39, 1, 0, 0),
(1409, 15, 20, 21, 21, 35, 1, 0, 0),
(1410, 15, 21, 20, 22, 1, 1, 0, 0),
(1411, 16, 1, 2, 1, 55, 1, 0, 0),
(1412, 16, 2, 1, 2, 55, 1, 0, 0),
(1413, 16, 9, 3, 3, 55, 1, 0, 0),
(1414, 16, 8, 6, 4, 55, 1, 0, 0),
(1415, 16, 3, 10, 5, 55, 1, 1, 0),
(1416, 16, 14, 11, 6, 55, 1, 0, 0),
(1417, 16, 10, 4, 7, 55, 1, 0, 0),
(1418, 16, 4, 7, 8, 55, 1, 0, 0),
(1419, 16, 6, 8, 9, 55, 1, 0, 0),
(1420, 16, 15, 17, 10, 55, 1, 0, 0),
(1421, 16, 16, 14, 11, 55, 1, 0, 0),
(1422, 16, 5, 12, 12, 55, 1, 0, 0),
(1423, 16, 12, 16, 13, 55, 1, 0, 0),
(1424, 16, 11, 5, 14, 54, 1, 0, 0),
(1425, 16, 17, 15, 15, 54, 1, 0, 0),
(1426, 16, 19, 9, 16, 54, 1, 0, 0),
(1427, 16, 18, 13, 17, 54, 1, 0, 0),
(1428, 16, 21, 18, 18, 54, 1, 0, 0),
(1429, 16, 20, 19, 19, 54, 1, 0, 0),
(1430, 16, 22, 21, 20, 53, 1, 0, 0),
(1431, 16, 23, 20, 21, 53, 1, 0, 0),
(1432, 16, 7, 22, 22, 0, 0, 0, 0),
(1433, 17, 1, 1, 1, 56, 1, 1, 0),
(1434, 17, 8, 3, 2, 56, 1, 0, 0),
(1435, 17, 2, 2, 3, 56, 1, 0, 0),
(1436, 17, 10, 5, 4, 56, 1, 0, 0),
(1437, 17, 3, 6, 5, 56, 1, 0, 0),
(1438, 17, 11, 4, 6, 56, 1, 0, 0),
(1439, 17, 6, 7, 7, 56, 1, 0, 0),
(1440, 17, 17, 9, 8, 56, 1, 0, 0),
(1441, 17, 9, 12, 9, 56, 1, 0, 0),
(1442, 17, 5, 15, 10, 56, 1, 0, 0),
(1443, 17, 19, 10, 11, 56, 1, 0, 0),
(1444, 17, 4, 13, 12, 56, 1, 0, 0),
(1445, 17, 12, 20, 13, 56, 1, 0, 0),
(1446, 17, 7, 8, 14, 56, 1, 0, 0),
(1447, 17, 14, 11, 15, 56, 1, 0, 0),
(1448, 17, 18, 14, 16, 56, 1, 0, 0),
(1449, 17, 16, 17, 17, 55, 1, 0, 0),
(1450, 17, 22, 19, 18, 55, 1, 0, 0),
(1451, 17, 21, 18, 19, 55, 1, 0, 0),
(1452, 17, 20, 22, 20, 55, 1, 0, 0),
(1453, 17, 23, 21, 21, 54, 1, 0, 0),
(1454, 17, 15, 16, 22, 0, 0, 0, 0),
(1455, 18, 1, 1, 1, 71, 1, 0, 0),
(1456, 18, 2, 4, 2, 71, 1, 1, 0),
(1457, 18, 3, 3, 3, 71, 1, 0, 0),
(1458, 18, 5, 14, 4, 71, 1, 0, 0),
(1459, 18, 9, 2, 5, 71, 1, 0, 0),
(1460, 18, 6, 19, 6, 71, 1, 0, 0),
(1461, 18, 4, 9, 7, 71, 1, 0, 0),
(1462, 18, 11, 10, 8, 71, 1, 0, 0),
(1463, 18, 10, 5, 9, 71, 1, 0, 0),
(1464, 18, 19, 7, 10, 70, 1, 0, 0),
(1465, 18, 14, 12, 11, 70, 1, 0, 0),
(1466, 18, 12, 17, 12, 70, 1, 0, 0),
(1467, 18, 15, 15, 13, 70, 1, 0, 0),
(1468, 18, 7, 11, 14, 70, 1, 0, 0),
(1469, 18, 18, 8, 15, 70, 1, 0, 0),
(1470, 18, 16, 16, 16, 70, 1, 0, 0),
(1471, 18, 22, 21, 17, 69, 1, 0, 0),
(1472, 18, 21, 20, 18, 69, 1, 0, 0),
(1473, 18, 23, 22, 19, 69, 1, 0, 0),
(1474, 18, 20, 18, 20, 58, 0, 0, 0),
(1475, 18, 17, 13, 21, 45, 0, 0, 0),
(1476, 18, 8, 6, 22, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `usr_cod` int(11) NOT NULL AUTO_INCREMENT,
  `usr_nom` varchar(25) CHARACTER SET latin1 NOT NULL,
  `usr_ape_1` varchar(30) CHARACTER SET latin1 NOT NULL,
  `usr_ape_2` varchar(30) CHARACTER SET latin1 NOT NULL,
  `usr_email` varchar(120) CHARACTER SET latin1 NOT NULL,
  `usr_login` varchar(25) CHARACTER SET latin1 NOT NULL,
  `usr_pass` varchar(25) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`usr_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=53 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usr_cod`, `usr_nom`, `usr_ape_1`, `usr_ape_2`, `usr_email`, `usr_login`, `usr_pass`) VALUES
(47, 'ja', 'ja', 'ja', 'joseangel.martinezvera@gmail.com', 'pruebas_1', '55215521'),
(11, 'jose 2', 'angel', 'martinez', 'aaa@hotmail.com', 'jose', 'qwer1234'),
(12, 'fonso', 'diez', 'heras', 'aaa@gmail.com', 'fonso', '888888'),
(13, 'user2', 'qwer', 'qwer', 'aaaaa@hotmail.com', 'user4', 'qwerty'),
(14, 'user5', 'user5', 'user5', 'aaaaaa@gmail.com', 'user5', 'qwerty'),
(15, 'usuario 6', 'user6', 'user6', 'bbbb@hotmail.com', 'user6', 'qwerty'),
(16, 'Fonso', 'D.', 'H', 'macaman2000@gmail.com', 'macaman', '888888'),
(17, 'David', 'Lorenzo', 'GarcÃ­a', 'david@davidlorenzo.net', 'david_lg', '123456'),
(18, 'Joserra', 'Perez', 'Hernandez', 'joseramon.perez@tic.alten.es', 'vhysor', 'torreon55'),
(19, 'Esther ', 'R', 'M', 'esther.rodriguez@tic.alten.es', 'mesrod', '09silvia'),
(20, 'BÃ¡rbara', 'L', 'G', 'barbaralg83@yahoo.es', 'villablino', 'f6ad4323'),
(21, 'Daniel', 'CartÃ³n', 'UreÃ±a', 'Neclord_2001@hotmail.com', 'Carton', '9638527410'),
(22, 'David', 'Fraile', 'Vacio', 'davidfcnn@gmail.com', 'Fraile', '600387074'),
(23, 'Rbk', 'Fer', 'Nis', 'rebeca@fernandeznisa.net', 'Rbk', 'JamRbkJam'),
(24, 'Eva', 'GarcÃ­a', 'Renuncio', 'evagarc2005@yahoo.es', 'Eva', 'eladoscuro'),
(25, 'Ãlvaro', 'GutiÃ©rrez', '--', 'chainsu@gmail.com', 'chainsu', 'whitehash'),
(26, 'Ariadna', 'Perdiguero', 'Conde', 'apercon@gmail.com', 'apercon', 'luisitoyari'),
(27, 'Marta', 'de Francisco', 'Marcos', 'martfra@hotmail.com', 'martfra', 'martfra'),
(28, 'Optimus', 'JAM', '--', 'joseangel.martinezvera@gmail.com', 'pepegoku', '55215521'),
(29, 'Roberto', 'ArÃ©valo', 'Ãlvarez', 'arealvro@gmail.com', 'Roberto', 'roberto71'),
(30, 'Mario', 'Garcia', 'Lazaro', 'thenend@hotmail.com', 'Thenend', 'the1one'),
(31, 'Diego', 'Escribano', 'Angulo', 'diego_escribano@hotmail.com', '80diego', '1980ies'),
(32, 'Roberto', 'Solana', 'Buruaga', 'solanaburuaga@hotmail.com', 'maitia', 'maitia2010'),
(33, 'José Carlos', 'del Barrio', 'Quevedo', 'barquejo@gmail.com', 'barquejo', 'conmigo'),
(34, 'Alberto', 'Ordax', 'de las Heras', 'alberto442000@hotmail.com', 'GiovanniF1', '72884920'),
(35, 'Pancra', 'Guti', 'Raba', 'pancrapepe@gmail.com', 'Pancra', 'VamosJAM!'),
(36, 'Rigel', 'ChuliÃ¡', 'Ortega', 'rigelchulia@hotmail.com', 'Gelilo', 'lorena'),
(37, 'Conchi', 'Fernandez', 'Diez', 'conchi.fernandez@tic.alten.es', 'Conchi', '123456'),
(38, 'Raul', 'Big', 'Gun', 'arrapage@gmail.com', 'arrapage', 'basket79'),
(39, 'Javier', 'Gurrea', 'FernÃ¡ndez', 'javigf_141@hotmail.com', 'javigf', '1412001'),
(40, 'Patricia', 'A', 'A', 'patri@gamil.com', 'patri', '123456'),
(41, 'user 2', '2', '2', '2@hotmail.com', 'user2', 'qwer1234'),
(42, 'Enrique', 'Sánchez', 'Alfonso', 'josee.sanchez@tic.alten.es', 'jesa', 'kilimanjaro'),
(43, 'Pedro', 'Mª', '*', 'pedko_@hotmail.com', 'pedrucho79', 'coronel'),
(44, 'Miguel', 'Sánchez', 'García', 'miguel.sanchezg@tic.alten.es', 'Mac Fly III', 'vivadoc'),
(45, 'Pedro', 'Picapiedra', 'Picapiedra', 'carlosdelacal@hotmail.com', 'pedropica', 'pedrito'),
(46, 'ismael', 'rodriguez', 'rodriguez', 'binbi9799@gmail.com', 'isma2012', 'ismapi99'),
(48, 'La', 'Lo', 'Lu', 'lalolu9999000@gmail.com', 'Salgorditos2013', 'Sal2013'),
(49, 'J', 'M', 'V', 'lalangosta@hotmail.com', 'lalangosta', 'palencia'),
(50, 'Javier', 'Vega', 'Carbajal', 'jabiervc@hotmail.com', 'jabiervc', 'xabiervc'),
(51, 'Raul', 'Ordax', '..', 'raul19788@hotmail.com', 'r88', 'DESING'),
(52, 'David', 'Ordax', 'de las Heras', 'hamlet333@gmail.com', 'hamlet333', 'sorian0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valores_escuderias`
--

DROP TABLE IF EXISTS `valores_escuderias`;
CREATE TABLE IF NOT EXISTS `valores_escuderias` (
  `val_esc_cod` int(11) NOT NULL AUTO_INCREMENT,
  `val_esc_esc_cod` int(11) NOT NULL,
  `val_esc_car_cod` int(11) NOT NULL,
  `val_esc_valor` double NOT NULL,
  `val_esc_mod` double NOT NULL,
  PRIMARY KEY (`val_esc_cod`),
  KEY `val_esc_esc_fk` (`val_esc_esc_cod`),
  KEY `val_esc_car_fk` (`val_esc_car_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=974 ;

--
-- Volcado de datos para la tabla `valores_escuderias`
--

INSERT INTO `valores_escuderias` (`val_esc_cod`, `val_esc_esc_cod`, `val_esc_car_cod`, `val_esc_valor`, `val_esc_mod`) VALUES
(11, 11, 1, 1000, 0),
(10, 10, 1, 1000, 0),
(9, 9, 1, 1200, 0),
(8, 8, 1, 1300, 0),
(7, 7, 1, 1400, 0),
(6, 6, 1, 1500, 0),
(5, 5, 1, 2100, 0),
(4, 4, 1, 1900, 0),
(3, 3, 1, 1900, 0),
(2, 2, 1, 2500, 0),
(1, 1, 1, 2100, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valores_motores`
--

DROP TABLE IF EXISTS `valores_motores`;
CREATE TABLE IF NOT EXISTS `valores_motores` (
  `val_mot_cod` int(11) NOT NULL AUTO_INCREMENT,
  `val_mot_mot_cod` int(11) NOT NULL,
  `val_mot_car_cod` int(11) NOT NULL,
  `val_mot_valor` double NOT NULL,
  `val_mot_mod` double NOT NULL,
  PRIMARY KEY (`val_mot_cod`),
  KEY `val_mot_mot_fk` (`val_mot_mot_cod`),
  KEY `val_mot_car_fk` (`val_mot_car_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=341 ;

--
-- Volcado de datos para la tabla `valores_motores`
--

INSERT INTO `valores_motores` (`val_mot_cod`, `val_mot_mot_cod`, `val_mot_car_cod`, `val_mot_valor`, `val_mot_mod`) VALUES
(3, 3, 1, 1600, 0),
(2, 2, 1, 1700, 0),
(1, 1, 1, 1800, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valores_pilotos`
--

DROP TABLE IF EXISTS `valores_pilotos`;
CREATE TABLE IF NOT EXISTS `valores_pilotos` (
  `val_pil_cod` int(11) NOT NULL AUTO_INCREMENT,
  `val_pil_pil_cod` int(11) NOT NULL,
  `val_pil_car_cod` int(11) NOT NULL,
  `val_pil_val` double NOT NULL,
  `val_pil_mod` double NOT NULL,
  PRIMARY KEY (`val_pil_cod`),
  KEY `val_pil_pil_fk` (`val_pil_pil_cod`),
  KEY `val_pil_car_fk` (`val_pil_car_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=2739 ;

--
-- Volcado de datos para la tabla `valores_pilotos`
--

INSERT INTO `valores_pilotos` (`val_pil_cod`, `val_pil_pil_cod`, `val_pil_car_cod`, `val_pil_val`, `val_pil_mod`) VALUES
(23, 23, 1, 800, 0),
(22, 22, 1, 2700, 0),
(21, 21, 1, 1900, 0),
(20, 99, 1, 1800, 0),
(19, 19, 1, 2100, 0),
(18, 27, 1, 1800, 0),
(17, 17, 1, 800, 0),
(16, 26, 1, 1300, 0),
(15, 77, 1, 1600, 0),
(14, 14, 1, 3500, 0),
(12, 25, 1, 1500, 0),
(11, 11, 1, 2000, 0),
(10, 10, 1, 1100, 0),
(9, 9, 1, 1100, 0),
(8, 8, 1, 2900, 0),
(7, 7, 1, 3100, 0),
(6, 6, 1, 2700, 0),
(5, 44, 1, 3100, 0),
(4, 4, 1, 800, 0),
(3, 3, 1, 2100, 0),
(2, 13, 1, 2300, 0),
(1, 1, 1, 3700, 0);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_campeonatos_clasificacion`
--
DROP VIEW IF EXISTS `vw_campeonatos_clasificacion`;
CREATE TABLE IF NOT EXISTS `vw_campeonatos_clasificacion` (
`vw_usu_nom` varchar(75)
,`vw_equ_cod` int(11)
,`vw_equ_nom` varchar(45)
,`vw_car_cod` int(11)
,`vw_cam_cod` int(10) unsigned zerofill
,`vw_piloto_1_nombre` varchar(45)
,`vw_piloto_1_puntos` int(11)
,`vw_piloto_2_nombre` varchar(45)
,`vw_piloto_2_puntos` int(11)
,`vw_piloto_3_nombre` varchar(45)
,`vw_piloto_3_puntos` int(11)
,`vw_piloto_4_nombre` varchar(45)
,`vw_piloto_4_puntos` int(11)
,`vw_escuderia_1_nombre` varchar(45)
,`vw_escuderia_1_puntos` int(11)
,`vw_escuderia_2_nombre` varchar(45)
,`vw_escuderia_2_puntos` int(11)
,`vw_motor_1_nombre` varchar(45)
,`vw_motor_1_puntos` int(11)
,`vw_puntos_podio` int(11)
,`vw_puntos_pos_alonso` int(11)
,`vw_puntos_total` bigint(19)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_campeonatos_clasificacion_broker`
--
DROP VIEW IF EXISTS `vw_campeonatos_clasificacion_broker`;
CREATE TABLE IF NOT EXISTS `vw_campeonatos_clasificacion_broker` (
`vw_usu_nom` varchar(75)
,`vw_equ_cod` int(11)
,`vw_equ_nom` varchar(45)
,`vw_car_cod` int(11)
,`vw_cam_cod` int(11)
,`vw_piloto_1_nombre` varchar(45)
,`vw_piloto_1_valor` int(11)
,`vw_piloto_2_nombre` varchar(45)
,`vw_piloto_2_valor` int(11)
,`vw_piloto_3_nombre` varchar(45)
,`vw_piloto_3_valor` int(11)
,`vw_piloto_4_nombre` varchar(45)
,`vw_piloto_4_valor` int(11)
,`vw_escuderia_1_nombre` varchar(45)
,`vw_escuderia_1_valor` int(11)
,`vw_escuderia_2_nombre` varchar(45)
,`vw_escuderia_2_valor` int(11)
,`vw_motor_1_nombre` varchar(45)
,`vw_motor_1_valor` int(11)
,`vw_valor_total` bigint(17)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_campeonatos_muro`
--
DROP VIEW IF EXISTS `vw_campeonatos_muro`;
CREATE TABLE IF NOT EXISTS `vw_campeonatos_muro` (
`vw_msg_cod` int(11)
,`vw_usr_nom` varchar(87)
,`vw_usr_cod` int(11)
,`vw_cam_cod` int(11)
,`vw_msg_fec` date
,`vw_msg_text` varchar(250)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_escuderias_media`
--
DROP VIEW IF EXISTS `vw_escuderias_media`;
CREATE TABLE IF NOT EXISTS `vw_escuderias_media` (
`vw_esc_cod` int(11)
,`vw_esc_nom` varchar(35)
,`vw_car_cod` int(11)
,`vw_lim_sup` decimal(20,6)
,`vw_med` decimal(17,4)
,`vw_lim_inf` decimal(20,6)
,`vw_esc_bonus` tinyint(1)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_escuderias_puntos`
--
DROP VIEW IF EXISTS `vw_escuderias_puntos`;
CREATE TABLE IF NOT EXISTS `vw_escuderias_puntos` (
`vw_esc_cod` int(11)
,`vw_mot_cod` int(11)
,`vw_esc_nom` varchar(35)
,`vw_car_cod` int(11)
,`vw_esc_pnt` decimal(45,4)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_escuderias_valores`
--
DROP VIEW IF EXISTS `vw_escuderias_valores`;
CREATE TABLE IF NOT EXISTS `vw_escuderias_valores` (
`vw_esc_cod` int(11)
,`vw_mot_cod` int(11)
,`vw_esc_nom` varchar(35)
,`vw_car_cod` int(11)
,`vw_esc_val` double
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_motores_media`
--
DROP VIEW IF EXISTS `vw_motores_media`;
CREATE TABLE IF NOT EXISTS `vw_motores_media` (
`vw_mot_cod` int(11)
,`vw_mot_nom` varchar(45)
,`vw_car_cod` int(11)
,`vw_lim_sup` decimal(20,6)
,`vw_med` decimal(17,4)
,`vw_lim_inf` decimal(20,6)
,`vw_mot_bonus` tinyint(1)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_motores_puntos`
--
DROP VIEW IF EXISTS `vw_motores_puntos`;
CREATE TABLE IF NOT EXISTS `vw_motores_puntos` (
`vw_mot_cod` int(11)
,`vw_mot_nom` varchar(45)
,`vw_car_cod` int(11)
,`vw_mot_pnt` decimal(65,8)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_motores_valores`
--
DROP VIEW IF EXISTS `vw_motores_valores`;
CREATE TABLE IF NOT EXISTS `vw_motores_valores` (
`vw_mot_cod` int(11)
,`vw_mot_nom` varchar(45)
,`vw_car_cod` int(11)
,`vw_mot_val` double
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_pilotos_media`
--
DROP VIEW IF EXISTS `vw_pilotos_media`;
CREATE TABLE IF NOT EXISTS `vw_pilotos_media` (
`vw_pil_cod` int(11)
,`vw_pil_nom` varchar(25)
,`vw_car_cod` int(11)
,`vw_lim_sup` decimal(20,6)
,`vw_med` decimal(17,4)
,`vw_lim_inf` decimal(20,6)
,`vw_pil_bonus` tinyint(1)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_pilotos_puntos`
--
DROP VIEW IF EXISTS `vw_pilotos_puntos`;
CREATE TABLE IF NOT EXISTS `vw_pilotos_puntos` (
`vw_pil_cod` int(11)
,`vw_esc_cod` int(11)
,`vw_pil_nom` varchar(25)
,`vw_car_cod` int(11)
,`vw_pnt_clas` int(11)
,`vw_pnt_pue` int(11)
,`vw_pnt_ade` int(11)
,`vw_pnt_vue` int(11)
,`vw_pnt_rec` int(11)
,`vw_pil_pnt` bigint(15)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_pilotos_valor`
--
DROP VIEW IF EXISTS `vw_pilotos_valor`;
CREATE TABLE IF NOT EXISTS `vw_pilotos_valor` (
`vw_pil_cod` int(11)
,`vw_esc_cod` int(11)
,`vw_pil_nom` varchar(25)
,`vw_car_cod` int(11)
,`vw_pil_val` double
,`vw_pil_mod` double
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_puntos_apuestas`
--
DROP VIEW IF EXISTS `vw_puntos_apuestas`;
CREATE TABLE IF NOT EXISTS `vw_puntos_apuestas` (
`vw_equ_cod` int(11)
,`vw_car_cod` int(11)
,`vw_puntos_podio` int(3)
,`vw_puntos_alonso` int(3)
,`vw_puntos_apuestas` bigint(12)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_puntos_apuestas_temp`
--
DROP VIEW IF EXISTS `vw_puntos_apuestas_temp`;
CREATE TABLE IF NOT EXISTS `vw_puntos_apuestas_temp` (
`vw_equ_cod` int(11)
,`vw_car_cod` int(11)
,`primero` int(1)
,`segundo` int(1)
,`tercero` int(1)
,`puntos_alonso` int(3)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_valores_escuderias_carrera`
--
DROP VIEW IF EXISTS `vw_valores_escuderias_carrera`;
CREATE TABLE IF NOT EXISTS `vw_valores_escuderias_carrera` (
`vw_esc_cod` int(11)
,`vw_mot_cod` int(11)
,`vw_esc_nom` varchar(35)
,`vw_car_cod` int(11)
,`vw_esc_pnt` decimal(45,4)
,`vw_esc_val` double
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_valores_motores_carrera`
--
DROP VIEW IF EXISTS `vw_valores_motores_carrera`;
CREATE TABLE IF NOT EXISTS `vw_valores_motores_carrera` (
`vw_mot_cod` int(11)
,`vw_mot_nom` varchar(45)
,`vw_car_cod` int(11)
,`vw_mot_pnt` decimal(65,8)
,`vw_mot_val` double
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_valores_pilotos_carrera`
--
DROP VIEW IF EXISTS `vw_valores_pilotos_carrera`;
CREATE TABLE IF NOT EXISTS `vw_valores_pilotos_carrera` (
`vw_pil_cod` int(11)
,`vw_esc_cod` int(11)
,`vw_pil_nom` varchar(25)
,`vw_car_cod` int(11)
,`vw_pnt_clas` int(11)
,`vw_pnt_pue` int(11)
,`vw_pnt_ade` int(11)
,`vw_pnt_vue` int(11)
,`vw_pnt_rec` int(11)
,`vw_pil_pnt` bigint(15)
,`vw_pil_val` double
,`vw_pil_mod` double
);
-- --------------------------------------------------------

--
-- Estructura para la vista `vw_campeonatos_clasificacion`
--
DROP TABLE IF EXISTS `vw_campeonatos_clasificacion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_campeonatos_clasificacion` AS select `campeonatos_clasificacion`.`cam_cla_usu_nom` AS `vw_usu_nom`,`campeonatos_clasificacion`.`cam_cla_equ_cod` AS `vw_equ_cod`,`campeonatos_clasificacion`.`cam_cla_equ_nom` AS `vw_equ_nom`,`campeonatos_clasificacion`.`cam_cla_car_cod` AS `vw_car_cod`,`campeonatos_clasificacion`.`cam_cla_cam_cod` AS `vw_cam_cod`,`campeonatos_clasificacion`.`cam_cla_pil_1_nom` AS `vw_piloto_1_nombre`,`campeonatos_clasificacion`.`cam_cla_pil_1_pnt` AS `vw_piloto_1_puntos`,`campeonatos_clasificacion`.`cam_cla_pil_2_nom` AS `vw_piloto_2_nombre`,`campeonatos_clasificacion`.`cam_cla_pil_2_pnt` AS `vw_piloto_2_puntos`,`campeonatos_clasificacion`.`cam_cla_pil_3_nom` AS `vw_piloto_3_nombre`,`campeonatos_clasificacion`.`cam_cla_pil_3_pnt` AS `vw_piloto_3_puntos`,`campeonatos_clasificacion`.`cam_cla_pil_4_nom` AS `vw_piloto_4_nombre`,`campeonatos_clasificacion`.`cam_cla_pil_4_pnt` AS `vw_piloto_4_puntos`,`campeonatos_clasificacion`.`cam_cla_esc_1_nom` AS `vw_escuderia_1_nombre`,`campeonatos_clasificacion`.`cam_cla_esc_1_pnt` AS `vw_escuderia_1_puntos`,`campeonatos_clasificacion`.`cam_cla_esc_2_nom` AS `vw_escuderia_2_nombre`,`campeonatos_clasificacion`.`cam_cla_esc_2_pnt` AS `vw_escuderia_2_puntos`,`campeonatos_clasificacion`.`cam_cla_mot_1_nom` AS `vw_motor_1_nombre`,`campeonatos_clasificacion`.`cam_cla_mot_1_pnt` AS `vw_motor_1_puntos`,`campeonatos_clasificacion`.`cam_cla_pnt_pod` AS `vw_puntos_podio`,`campeonatos_clasificacion`.`cam_cla_pnt_alo` AS `vw_puntos_pos_alonso`,((((((((`campeonatos_clasificacion`.`cam_cla_pil_1_pnt` + `campeonatos_clasificacion`.`cam_cla_pil_2_pnt`) + `campeonatos_clasificacion`.`cam_cla_pil_3_pnt`) + `campeonatos_clasificacion`.`cam_cla_pil_4_pnt`) + `campeonatos_clasificacion`.`cam_cla_esc_1_pnt`) + `campeonatos_clasificacion`.`cam_cla_esc_2_pnt`) + `campeonatos_clasificacion`.`cam_cla_mot_1_pnt`) + `campeonatos_clasificacion`.`cam_cla_pnt_pod`) + `campeonatos_clasificacion`.`cam_cla_pnt_alo`) AS `vw_puntos_total` from `campeonatos_clasificacion`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_campeonatos_clasificacion_broker`
--
DROP TABLE IF EXISTS `vw_campeonatos_clasificacion_broker`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_campeonatos_clasificacion_broker` AS select `campeonatos_clasificacion_broker`.`cam_cla_bro_usu_nom` AS `vw_usu_nom`,`campeonatos_clasificacion_broker`.`cam_cla_bro_equ_cod` AS `vw_equ_cod`,`campeonatos_clasificacion_broker`.`cam_cla_bro_equ_nom` AS `vw_equ_nom`,`campeonatos_clasificacion_broker`.`cam_cla_bro_car_cod` AS `vw_car_cod`,`campeonatos_clasificacion_broker`.`cam_cla_bro_cam_cod` AS `vw_cam_cod`,`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_1_nom` AS `vw_piloto_1_nombre`,`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_1_val` AS `vw_piloto_1_valor`,`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_2_nom` AS `vw_piloto_2_nombre`,`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_2_val` AS `vw_piloto_2_valor`,`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_3_nom` AS `vw_piloto_3_nombre`,`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_3_val` AS `vw_piloto_3_valor`,`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_4_nom` AS `vw_piloto_4_nombre`,`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_4_val` AS `vw_piloto_4_valor`,`campeonatos_clasificacion_broker`.`cam_cla_bro_esc_1_nom` AS `vw_escuderia_1_nombre`,`campeonatos_clasificacion_broker`.`cam_cla_bro_esc_1_val` AS `vw_escuderia_1_valor`,`campeonatos_clasificacion_broker`.`cam_cla_bro_esc_2_nom` AS `vw_escuderia_2_nombre`,`campeonatos_clasificacion_broker`.`cam_cla_bro_esc_2_val` AS `vw_escuderia_2_valor`,`campeonatos_clasificacion_broker`.`cam_cla_bro_mot_1_nom` AS `vw_motor_1_nombre`,`campeonatos_clasificacion_broker`.`cam_cla_bro_mot_1_val` AS `vw_motor_1_valor`,((((((`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_1_val` + `campeonatos_clasificacion_broker`.`cam_cla_bro_pil_2_val`) + `campeonatos_clasificacion_broker`.`cam_cla_bro_pil_3_val`) + `campeonatos_clasificacion_broker`.`cam_cla_bro_pil_4_val`) + `campeonatos_clasificacion_broker`.`cam_cla_bro_esc_1_val`) + `campeonatos_clasificacion_broker`.`cam_cla_bro_esc_2_val`) + `campeonatos_clasificacion_broker`.`cam_cla_bro_mot_1_val`) AS `vw_valor_total` from `campeonatos_clasificacion_broker`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_campeonatos_muro`
--
DROP TABLE IF EXISTS `vw_campeonatos_muro`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_campeonatos_muro` AS select `campeonatos_muro`.`cam_mur_cod` AS `vw_msg_cod`,concat(`usuarios`.`usr_nom`,_latin1' ',`usuarios`.`usr_ape_1`,_latin1' ',`usuarios`.`usr_ape_2`) AS `vw_usr_nom`,`usuarios`.`usr_cod` AS `vw_usr_cod`,`campeonatos_muro`.`cam_mur_cam_cod` AS `vw_cam_cod`,`campeonatos_muro`.`cam_mur_fec` AS `vw_msg_fec`,`campeonatos_muro`.`cam_mur_texto` AS `vw_msg_text` from (`usuarios` join `campeonatos_muro`) where (`usuarios`.`usr_cod` = `campeonatos_muro`.`cam_mur_usr_cod`);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_escuderias_media`
--
DROP TABLE IF EXISTS `vw_escuderias_media`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_escuderias_media` AS select `escuderias`.`esc_cod` AS `vw_esc_cod`,`escuderias`.`esc_nom` AS `vw_esc_nom`,`puntos_escuderias_media`.`pnt_esc_med_car_cod` AS `vw_car_cod`,(((((`puntos_escuderias_media`.`pnt_esc_med_pnt_car_1` + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_2`) + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_3`) + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_4`) / 4) * 1.15) AS `vw_lim_sup`,((((`puntos_escuderias_media`.`pnt_esc_med_pnt_car_1` + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_2`) + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_3`) + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_4`) / 4) AS `vw_med`,(((((`puntos_escuderias_media`.`pnt_esc_med_pnt_car_1` + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_2`) + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_3`) + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_4`) / 4) * 0.85) AS `vw_lim_inf`,`puntos_escuderias_media`.`pnt_esc_med_bonus` AS `vw_esc_bonus` from (`puntos_escuderias_media` join `escuderias`) where (`puntos_escuderias_media`.`pnt_esc_med_esc_cod` = `escuderias`.`esc_cod`) order by `puntos_escuderias_media`.`pnt_esc_med_esc_cod`,`puntos_escuderias_media`.`pnt_esc_med_car_cod`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_escuderias_puntos`
--
DROP TABLE IF EXISTS `vw_escuderias_puntos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_escuderias_puntos` AS select `vw_pilotos_puntos`.`vw_esc_cod` AS `vw_esc_cod`,`escuderias`.`esc_mot_cod` AS `vw_mot_cod`,`escuderias`.`esc_nom` AS `vw_esc_nom`,`vw_pilotos_puntos`.`vw_car_cod` AS `vw_car_cod`,(sum(`vw_pilotos_puntos`.`vw_pil_pnt`) / count(`vw_pilotos_puntos`.`vw_pil_cod`)) AS `vw_esc_pnt` from (`vw_pilotos_puntos` join `escuderias`) where (`vw_pilotos_puntos`.`vw_esc_cod` = `escuderias`.`esc_cod`) group by `vw_pilotos_puntos`.`vw_esc_cod`,`vw_pilotos_puntos`.`vw_car_cod`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_escuderias_valores`
--
DROP TABLE IF EXISTS `vw_escuderias_valores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_escuderias_valores` AS select `valores_escuderias`.`val_esc_esc_cod` AS `vw_esc_cod`,`escuderias`.`esc_mot_cod` AS `vw_mot_cod`,`escuderias`.`esc_nom` AS `vw_esc_nom`,`valores_escuderias`.`val_esc_car_cod` AS `vw_car_cod`,`valores_escuderias`.`val_esc_valor` AS `vw_esc_val` from (`escuderias` join `valores_escuderias`) where (`escuderias`.`esc_cod` = `valores_escuderias`.`val_esc_esc_cod`);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_motores_media`
--
DROP TABLE IF EXISTS `vw_motores_media`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_motores_media` AS select `motores`.`mot_cod` AS `vw_mot_cod`,`motores`.`mot_nom` AS `vw_mot_nom`,`puntos_motores_media`.`pnt_mot_med_car_cod` AS `vw_car_cod`,(((((`puntos_motores_media`.`pnt_mot_med_pnt_car_1` + `puntos_motores_media`.`pnt_mot_med_pnt_car_2`) + `puntos_motores_media`.`pnt_mot_med_pnt_car_3`) + `puntos_motores_media`.`pnt_mot_med_pnt_car_4`) / 4) * 1.15) AS `vw_lim_sup`,((((`puntos_motores_media`.`pnt_mot_med_pnt_car_1` + `puntos_motores_media`.`pnt_mot_med_pnt_car_2`) + `puntos_motores_media`.`pnt_mot_med_pnt_car_3`) + `puntos_motores_media`.`pnt_mot_med_pnt_car_4`) / 4) AS `vw_med`,(((((`puntos_motores_media`.`pnt_mot_med_pnt_car_1` + `puntos_motores_media`.`pnt_mot_med_pnt_car_2`) + `puntos_motores_media`.`pnt_mot_med_pnt_car_3`) + `puntos_motores_media`.`pnt_mot_med_pnt_car_4`) / 4) * 0.85) AS `vw_lim_inf`,`puntos_motores_media`.`pnt_mot_med_bonus` AS `vw_mot_bonus` from (`puntos_motores_media` join `motores`) where (`puntos_motores_media`.`pnt_mot_med_mot_cod` = `motores`.`mot_cod`) order by `puntos_motores_media`.`pnt_mot_med_mot_cod`,`puntos_motores_media`.`pnt_mot_med_car_cod`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_motores_puntos`
--
DROP TABLE IF EXISTS `vw_motores_puntos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_motores_puntos` AS select `vw_escuderias_puntos`.`vw_mot_cod` AS `vw_mot_cod`,`motores`.`mot_nom` AS `vw_mot_nom`,`vw_escuderias_puntos`.`vw_car_cod` AS `vw_car_cod`,(sum(`vw_escuderias_puntos`.`vw_esc_pnt`) / count(`vw_escuderias_puntos`.`vw_esc_cod`)) AS `vw_mot_pnt` from (`vw_escuderias_puntos` join `motores`) where (`vw_escuderias_puntos`.`vw_mot_cod` = `motores`.`mot_cod`) group by `vw_escuderias_puntos`.`vw_mot_cod`,`vw_escuderias_puntos`.`vw_car_cod`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_motores_valores`
--
DROP TABLE IF EXISTS `vw_motores_valores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_motores_valores` AS select `valores_motores`.`val_mot_mot_cod` AS `vw_mot_cod`,`motores`.`mot_nom` AS `vw_mot_nom`,`valores_motores`.`val_mot_car_cod` AS `vw_car_cod`,`valores_motores`.`val_mot_valor` AS `vw_mot_val` from (`motores` join `valores_motores`) where (`motores`.`mot_cod` = `valores_motores`.`val_mot_mot_cod`);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_pilotos_media`
--
DROP TABLE IF EXISTS `vw_pilotos_media`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_pilotos_media` AS select `pilotos`.`pil_cod` AS `vw_pil_cod`,`pilotos`.`pil_nom` AS `vw_pil_nom`,`puntos_pilotos_media`.`pnt_pil_med_car_cod` AS `vw_car_cod`,(((((`puntos_pilotos_media`.`pnt_pil_med_pnt_car_1` + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_2`) + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_3`) + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_4`) / 4) * 1.15) AS `vw_lim_sup`,((((`puntos_pilotos_media`.`pnt_pil_med_pnt_car_1` + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_2`) + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_3`) + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_4`) / 4) AS `vw_med`,(((((`puntos_pilotos_media`.`pnt_pil_med_pnt_car_1` + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_2`) + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_3`) + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_4`) / 4) * 0.85) AS `vw_lim_inf`,`puntos_pilotos_media`.`pnt_pil_med_bonus` AS `vw_pil_bonus` from (`puntos_pilotos_media` join `pilotos`) where (`puntos_pilotos_media`.`pnt_pil_med_pil_cod` = `pilotos`.`pil_cod`) order by `puntos_pilotos_media`.`pnt_pil_med_pil_cod`,`puntos_pilotos_media`.`pnt_pil_med_car_cod`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_pilotos_puntos`
--
DROP TABLE IF EXISTS `vw_pilotos_puntos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_pilotos_puntos` AS select `puntos_pilotos`.`pnt_pil_pil_cod` AS `vw_pil_cod`,`pilotos`.`pil_esc_cod` AS `vw_esc_cod`,`pilotos`.`pil_nom` AS `vw_pil_nom`,`puntos_pilotos`.`pnt_pil_car_cod` AS `vw_car_cod`,`puntos_pilotos`.`pnt_pil_pnt_clas` AS `vw_pnt_clas`,`puntos_pilotos`.`pnt_pil_pnt_pue` AS `vw_pnt_pue`,`puntos_pilotos`.`pnt_pil_pnt_ade` AS `vw_pnt_ade`,`puntos_pilotos`.`pnt_pil_pnt_vue` AS `vw_pnt_vue`,`puntos_pilotos`.`pnt_pil_pnt_rec` AS `vw_pnt_rec`,((((`puntos_pilotos`.`pnt_pil_pnt_clas` + `puntos_pilotos`.`pnt_pil_pnt_pue`) + `puntos_pilotos`.`pnt_pil_pnt_ade`) + `puntos_pilotos`.`pnt_pil_pnt_vue`) + `puntos_pilotos`.`pnt_pil_pnt_rec`) AS `vw_pil_pnt` from (`pilotos` join `puntos_pilotos`) where (`pilotos`.`pil_cod` = `puntos_pilotos`.`pnt_pil_pil_cod`);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_pilotos_valor`
--
DROP TABLE IF EXISTS `vw_pilotos_valor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_pilotos_valor` AS select `valores_pilotos`.`val_pil_pil_cod` AS `vw_pil_cod`,`pilotos`.`pil_esc_cod` AS `vw_esc_cod`,`pilotos`.`pil_nom` AS `vw_pil_nom`,`valores_pilotos`.`val_pil_car_cod` AS `vw_car_cod`,`valores_pilotos`.`val_pil_val` AS `vw_pil_val`,`valores_pilotos`.`val_pil_mod` AS `vw_pil_mod` from (`pilotos` join `valores_pilotos`) where (`pilotos`.`pil_cod` = `valores_pilotos`.`val_pil_pil_cod`);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_puntos_apuestas`
--
DROP TABLE IF EXISTS `vw_puntos_apuestas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_puntos_apuestas` AS select `vw_puntos_apuestas_temp`.`vw_equ_cod` AS `vw_equ_cod`,`vw_puntos_apuestas_temp`.`vw_car_cod` AS `vw_car_cod`,if((`vw_puntos_apuestas_temp`.`primero` and `vw_puntos_apuestas_temp`.`segundo` and `vw_puntos_apuestas_temp`.`tercero`),600,if((`vw_puntos_apuestas_temp`.`primero` and `vw_puntos_apuestas_temp`.`segundo`),400,if(`vw_puntos_apuestas_temp`.`primero`,200,0))) AS `vw_puntos_podio`,`vw_puntos_apuestas_temp`.`puntos_alonso` AS `vw_puntos_alonso`,(if((`vw_puntos_apuestas_temp`.`primero` and `vw_puntos_apuestas_temp`.`segundo` and `vw_puntos_apuestas_temp`.`tercero`),600,if((`vw_puntos_apuestas_temp`.`primero` and `vw_puntos_apuestas_temp`.`segundo`),400,if(`vw_puntos_apuestas_temp`.`primero`,200,0))) + `vw_puntos_apuestas_temp`.`puntos_alonso`) AS `vw_puntos_apuestas` from `vw_puntos_apuestas_temp`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_puntos_apuestas_temp`
--
DROP TABLE IF EXISTS `vw_puntos_apuestas_temp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_puntos_apuestas_temp` AS select `ac`.`apu_car_equ_cod` AS `vw_equ_cod`,`ac`.`apu_car_car_cod` AS `vw_car_cod`,if((`ac`.`apu_car_pod_pri_pil_cod` = `rc1`.`res_car_pil_cod`),1,0) AS `primero`,if((`ac`.`apu_car_pod_seg_pil_cod` = `rc2`.`res_car_pil_cod`),1,0) AS `segundo`,if((`ac`.`apu_car_pod_ter_pil_cod` = `rc3`.`res_car_pil_cod`),1,0) AS `tercero`,if((`ac`.`apu_car_pos_alo` = `rc4`.`res_car_pos_fin`),250,0) AS `puntos_alonso` from (((((`apuestas_carrera` `ac` join `resultados_carrera` `rc1`) join `resultados_carrera` `rc2`) join `resultados_carrera` `rc3`) join `resultados_carrera` `rc4`) join `resultados_carrera` `rc5`) where ((`ac`.`apu_car_car_cod` = `rc1`.`res_car_car_cod`) and (`ac`.`apu_car_car_cod` = `rc2`.`res_car_car_cod`) and (`ac`.`apu_car_car_cod` = `rc3`.`res_car_car_cod`) and (`ac`.`apu_car_car_cod` = `rc4`.`res_car_car_cod`) and (`ac`.`apu_car_car_cod` = `rc5`.`res_car_car_cod`) and (`rc1`.`res_car_pos_fin` = 1) and (`rc2`.`res_car_pos_fin` = 2) and (`rc3`.`res_car_pos_fin` = 3) and (`rc4`.`res_car_pil_cod` = 5) and (`rc5`.`res_car_pil_cod` = 22));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_valores_escuderias_carrera`
--
DROP TABLE IF EXISTS `vw_valores_escuderias_carrera`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_valores_escuderias_carrera` AS select `vw_escuderias_valores`.`vw_esc_cod` AS `vw_esc_cod`,`vw_escuderias_valores`.`vw_mot_cod` AS `vw_mot_cod`,`vw_escuderias_valores`.`vw_esc_nom` AS `vw_esc_nom`,`vw_escuderias_valores`.`vw_car_cod` AS `vw_car_cod`,`vw_escuderias_puntos`.`vw_esc_pnt` AS `vw_esc_pnt`,`vw_escuderias_valores`.`vw_esc_val` AS `vw_esc_val` from (`vw_escuderias_valores` left join `vw_escuderias_puntos` on(((`vw_escuderias_puntos`.`vw_esc_cod` = `vw_escuderias_valores`.`vw_esc_cod`) and (`vw_escuderias_puntos`.`vw_mot_cod` = `vw_escuderias_valores`.`vw_mot_cod`) and (`vw_escuderias_puntos`.`vw_esc_nom` = `vw_escuderias_valores`.`vw_esc_nom`) and (`vw_escuderias_puntos`.`vw_car_cod` = `vw_escuderias_valores`.`vw_car_cod`))));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_valores_motores_carrera`
--
DROP TABLE IF EXISTS `vw_valores_motores_carrera`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_valores_motores_carrera` AS select `vw_motores_valores`.`vw_mot_cod` AS `vw_mot_cod`,`vw_motores_valores`.`vw_mot_nom` AS `vw_mot_nom`,`vw_motores_valores`.`vw_car_cod` AS `vw_car_cod`,`vw_motores_puntos`.`vw_mot_pnt` AS `vw_mot_pnt`,`vw_motores_valores`.`vw_mot_val` AS `vw_mot_val` from (`vw_motores_valores` left join `vw_motores_puntos` on(((`vw_motores_puntos`.`vw_mot_cod` = `vw_motores_valores`.`vw_mot_cod`) and (`vw_motores_puntos`.`vw_mot_nom` = `vw_motores_valores`.`vw_mot_nom`) and (`vw_motores_puntos`.`vw_car_cod` = `vw_motores_valores`.`vw_car_cod`))));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_valores_pilotos_carrera`
--
DROP TABLE IF EXISTS `vw_valores_pilotos_carrera`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_valores_pilotos_carrera` AS select `vw_pilotos_valor`.`vw_pil_cod` AS `vw_pil_cod`,`vw_pilotos_valor`.`vw_esc_cod` AS `vw_esc_cod`,`vw_pilotos_valor`.`vw_pil_nom` AS `vw_pil_nom`,`vw_pilotos_valor`.`vw_car_cod` AS `vw_car_cod`,`vw_pilotos_puntos`.`vw_pnt_clas` AS `vw_pnt_clas`,`vw_pilotos_puntos`.`vw_pnt_pue` AS `vw_pnt_pue`,`vw_pilotos_puntos`.`vw_pnt_ade` AS `vw_pnt_ade`,`vw_pilotos_puntos`.`vw_pnt_vue` AS `vw_pnt_vue`,`vw_pilotos_puntos`.`vw_pnt_rec` AS `vw_pnt_rec`,`vw_pilotos_puntos`.`vw_pil_pnt` AS `vw_pil_pnt`,`vw_pilotos_valor`.`vw_pil_val` AS `vw_pil_val`,`vw_pilotos_valor`.`vw_pil_mod` AS `vw_pil_mod` from (`vw_pilotos_valor` left join `vw_pilotos_puntos` on(((`vw_pilotos_puntos`.`vw_pil_cod` = `vw_pilotos_valor`.`vw_pil_cod`) and (`vw_pilotos_puntos`.`vw_esc_cod` = `vw_pilotos_valor`.`vw_esc_cod`) and (`vw_pilotos_puntos`.`vw_pil_nom` = `vw_pilotos_valor`.`vw_pil_nom`) and (`vw_pilotos_puntos`.`vw_car_cod` = `vw_pilotos_valor`.`vw_car_cod`))));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
