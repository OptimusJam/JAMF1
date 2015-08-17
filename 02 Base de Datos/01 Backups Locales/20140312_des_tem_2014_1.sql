-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 12-03-2014 a las 13:11:09
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
(3, 'Mercedes PU106A Hybrid');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=32 ;

--
-- Volcado de datos para la tabla `puntos_escuderias_media`
--

INSERT INTO `puntos_escuderias_media` (`pnt_esc_med_cod`, `pnt_esc_med_esc_cod`, `pnt_esc_med_car_cod`, `pnt_esc_med_pnt_car_1`, `pnt_esc_med_car_1_cod`, `pnt_esc_med_pnt_car_2`, `pnt_esc_med_car_2_cod`, `pnt_esc_med_pnt_car_3`, `pnt_esc_med_car_3_cod`, `pnt_esc_med_pnt_car_4`, `pnt_esc_med_car_4_cod`, `pnt_esc_med_bonus`) VALUES
(30, 10, 1, 78, 18, 93, 17, 87, 16, 79, 15, 0),
(29, 9, 1, 145, 18, 79, 17, 68, 16, 103, 15, 0),
(28, 8, 1, 243, 18, 238, 17, 260, 16, 510, 15, 0),
(27, 7, 1, 490, 18, 650, 17, 303, 16, 431, 15, 0),
(26, 6, 1, 130, 18, 67, 17, 197, 16, 195, 15, 0),
(25, 5, 1, 745, 18, 608, 17, 930, 16, 1118, 15, 0),
(24, 4, 1, 93, 18, 699, 17, 513, 16, 548, 15, 0),
(23, 3, 1, 455, 18, 160, 17, 323, 16, 221, 15, 0),
(22, 2, 1, 638, 18, 468, 17, 465, 16, 498, 15, 0),
(21, 1, 1, 910, 18, 938, 17, 787, 16, 855, 15, 0),
(11, 1, 1, 1350, 18, 1268, 17, 1195, 16, 838, 15, 0),
(12, 2, 1, 93, 18, 111, 17, 275, 16, 580, 15, 0),
(13, 3, 1, 88, 18, 101, 17, 91, 16, 91, 15, 0),
(14, 4, 1, 97, 18, 1310, 17, 895, 16, 940, 15, 0),
(15, 5, 1, 630, 18, 535, 17, 335, 16, 700, 15, 0),
(16, 6, 1, 107, 18, 81, 17, 87, 16, 73, 15, 0),
(17, 7, 1, 350, 18, 765, 17, 271, 16, 161, 15, 0),
(18, 8, 1, 320, 18, 125, 17, 114, 16, 210, 15, 0),
(19, 10, 1, 745, 18, 608, 17, 930, 16, 1118, 15, 0),
(20, 11, 1, 243, 18, 238, 17, 260, 16, 510, 15, 0),
(31, 11, 1, 122, 18, 91, 17, 87, 16, 118, 15, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci ROW_FORMAT=FIXED AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `puntos_motores_media`
--

INSERT INTO `puntos_motores_media` (`pnt_mot_med_cod`, `pnt_mot_med_mot_cod`, `pnt_mot_med_car_cod`, `pnt_mot_med_pnt_car_1`, `pnt_mot_med_car_1_cod`, `pnt_mot_med_pnt_car_2`, `pnt_mot_med_car_2_cod`, `pnt_mot_med_pnt_car_3`, `pnt_mot_med_car_3_cod`, `pnt_mot_med_pnt_car_4`, `pnt_mot_med_car_4_cod`, `pnt_mot_med_bonus`) VALUES
(4, 1, 1, 731, 18, 1062, 17, 1007, 16, 965, 15, 0),
(5, 2, 1, 100, 18, 96, 17, 181, 16, 327, 15, 0),
(6, 3, 1, 326, 18, 353, 17, 214, 16, 334, 15, 0),
(7, 1, 1, 306, 18, 452, 17, 364, 16, 396, 15, 0),
(8, 2, 1, 384, 18, 267, 17, 331, 16, 346, 15, 0),
(9, 3, 1, 411, 18, 349, 17, 381, 16, 479, 15, 0);

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
(2349, 1, 15, 500, 1000, 0, 0, 0),
(2350, 6, 15, 450, 900, 0, 0, 0),
(2351, 8, 15, 0, 800, 140, 0, 0),
(2352, 19, 15, 225, 700, 10, 0, 0),
(2353, 11, 15, 60, 600, 40, 0, 0),
(2354, 44, 15, 400, 500, -15, 0, 0),
(2355, 7, 15, 175, 400, -5, 250, 0),
(2356, 20, 15, 0, 300, 40, 0, 0),
(2357, 99, 15, 0, 250, 40, 0, 0),
(2358, 3, 15, 0, 200, 10, 0, 0),
(2359, 14, 15, 90, 100, -15, 0, 0),
(2360, 13, 15, 0, 96, 60, 0, 0),
(2361, 25, 15, 0, 93, 10, 0, 0),
(2362, 22, 15, 30, 91, -20, 0, 0),
(2363, 21, 15, 0, 90, 10, 0, 0),
(2364, 77, 15, 0, 89, -5, 0, 0),
(2365, 4, 15, 0, 88, 50, 0, 0),
(2366, 17, 15, 0, 87, 10, 0, 0),
(2367, 27, 15, 135, 86, -60, 0, 0),
(2368, 2, 15, 275, 85, -80, 0, 0),
(2369, 9, 15, 0, 84, 0, 0, 0),
(2370, 10, 15, 0, 83, -10, 0, 0),
(2371, 1, 16, 450, 1000, 10, 0, 0),
(2372, 2, 16, 500, 900, -5, 0, 0),
(2373, 6, 16, 400, 800, 0, 0, 0),
(2374, 8, 16, 175, 700, 20, 0, 0),
(2375, 14, 16, 30, 600, 50, 250, 0),
(2376, 20, 16, 0, 500, 50, 0, 0),
(2377, 44, 16, 275, 400, -15, 0, 0),
(2378, 19, 16, 135, 300, -5, 0, 0),
(2379, 11, 16, 90, 250, -5, 0, 0),
(2380, 99, 16, 0, 200, 70, 0, 0),
(2381, 13, 16, 0, 100, 30, 0, 0),
(2382, 22, 16, 0, 96, 0, 0, 0),
(2383, 21, 16, 0, 93, 30, 0, 0),
(2384, 27, 16, 225, 91, -45, 0, 0),
(2385, 77, 16, 0, 90, 0, 0, 0),
(2386, 3, 16, 60, 89, -35, 0, 0),
(2387, 25, 16, 0, 88, -20, 0, 0),
(2388, 10, 16, 0, 87, 0, 0, 0),
(2389, 9, 16, 0, 86, 0, 0, 0),
(2390, 17, 16, 0, 85, 10, 0, 0),
(2391, 4, 16, 0, 84, -5, 0, 0),
(2392, 7, 16, 0, 0, 0, 0, 0),
(2393, 1, 17, 500, 1000, 0, 250, 0),
(2394, 8, 17, 400, 900, 10, 0, 0),
(2395, 2, 17, 450, 800, -5, 0, 0),
(2396, 44, 17, 225, 700, 10, 0, 0),
(2397, 14, 17, 175, 600, 10, 0, 0),
(2398, 27, 17, 275, 500, -10, 0, 0),
(2399, 11, 17, 135, 400, 0, 0, 0),
(2400, 77, 17, 60, 300, 10, 0, 0),
(2401, 6, 17, 0, 250, 30, 0, 0),
(2402, 22, 17, 0, 200, 50, 0, 0),
(2403, 3, 17, 30, 100, -5, 0, 0),
(2404, 19, 17, 0, 96, 10, 0, 0),
(2405, 21, 17, 0, 93, 70, 0, 0),
(2406, 7, 17, 90, 91, -30, 0, 0),
(2407, 20, 17, 0, 90, -20, 0, 0),
(2408, 25, 17, 0, 89, -10, 0, 0),
(2409, 13, 17, 0, 88, 0, 0, 0),
(2410, 17, 17, 0, 87, 10, 0, 0),
(2411, 10, 17, 0, 86, -5, 0, 0),
(2412, 9, 17, 0, 85, 20, 0, 0),
(2413, 4, 17, 0, 84, 0, 0, 0),
(2414, 99, 17, 0, 0, -30, 0, 0),
(2415, 1, 18, 500, 1000, 0, 0, 0),
(2416, 2, 18, 275, 900, 20, 250, 0),
(2417, 14, 18, 400, 800, 0, 0, 0),
(2418, 22, 18, 0, 700, 100, 0, 0),
(2419, 6, 18, 450, 600, -15, 0, 0),
(2420, 11, 18, 0, 500, 130, 0, 0),
(2421, 19, 18, 60, 400, 20, 0, 0),
(2422, 27, 18, 30, 300, 20, 0, 0),
(2423, 44, 18, 225, 250, -20, 0, 0),
(2424, 3, 18, 135, 200, -15, 0, 0),
(2425, 20, 18, 0, 100, 10, 0, 0),
(2426, 21, 18, 0, 96, 50, 0, 0),
(2427, 99, 18, 0, 93, 20, 0, 0),
(2428, 7, 18, 0, 91, -15, 0, 0),
(2429, 25, 18, 90, 90, -35, 0, 0),
(2430, 13, 18, 0, 89, 0, 0, 0),
(2431, 17, 18, 0, 88, 40, 0, 0),
(2432, 10, 18, 0, 87, 20, 0, 0),
(2433, 4, 18, 0, 86, 30, 0, 0),
(2434, 9, 18, 0, 58, -10, 0, 0),
(2435, 77, 18, 0, 45, -40, 0, 0),
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci ROW_FORMAT=FIXED AUTO_INCREMENT=52 ;

--
-- Volcado de datos para la tabla `puntos_pilotos_media`
--

INSERT INTO `puntos_pilotos_media` (`pnt_pil_med_cod`, `pnt_pil_med_pil_cod`, `pnt_pil_med_car_cod`, `pnt_pil_med_pnt_car_1`, `pnt_pil_med_car_1_cod`, `pnt_pil_med_pnt_car_2`, `pnt_pil_med_car_2_cod`, `pnt_pil_med_pnt_car_3`, `pnt_pil_med_car_3_cod`, `pnt_pil_med_pnt_car_4`, `pnt_pil_med_car_4_cod`, `pnt_pil_med_bonus`) VALUES
(36, 1, 1, 1500, 18, 1750, 17, 1460, 16, 1500, 15, 0),
(37, 3, 1, 480, 18, 106, 17, 430, 16, 935, 15, 0),
(38, 7, 1, 76, 18, 151, 17, 0, 16, 820, 15, 0),
(39, 14, 1, 320, 18, 125, 17, 114, 16, 210, 15, 0),
(40, 20, 1, 1200, 18, 785, 17, 930, 16, 175, 15, 0),
(41, 8, 1, 97, 18, 1310, 17, 895, 16, 940, 15, 0),
(42, 6, 1, 48, 18, 105, 17, 86, 16, 84, 15, 0),
(43, 44, 1, 107, 18, 81, 17, 87, 16, 73, 15, 0),
(44, 11, 1, 1035, 18, 280, 17, 1200, 16, 1350, 15, 0),
(45, 27, 1, 630, 18, 535, 17, 335, 16, 700, 15, 0),
(46, 19, 1, 116, 18, 84, 17, 79, 16, 138, 15, 0),
(47, 77, 1, 128, 18, 97, 17, 95, 16, 97, 15, 0),
(48, 26, 1, 480, 18, 106, 17, 430, 16, 935, 15, 0),
(49, 9, 1, 110, 18, 70, 17, 550, 16, 340, 15, 0),
(50, 10, 1, 146, 18, 163, 17, 123, 16, 100, 15, 0),
(51, 17, 1, 800, 18, 250, 17, 96, 16, 101, 15, 0);

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
