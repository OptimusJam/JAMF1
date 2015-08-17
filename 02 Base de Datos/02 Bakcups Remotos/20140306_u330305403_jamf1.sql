
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-03-2014 a las 18:25:50
-- Versión del servidor: 5.1.67
-- Versión de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `u330305403_jamf1`
--

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `puntos_escuderias_media`
--

INSERT INTO `puntos_escuderias_media` (`pnt_esc_med_cod`, `pnt_esc_med_esc_cod`, `pnt_esc_med_car_cod`, `pnt_esc_med_pnt_car_1`, `pnt_esc_med_car_1_cod`, `pnt_esc_med_pnt_car_2`, `pnt_esc_med_car_2_cod`, `pnt_esc_med_pnt_car_3`, `pnt_esc_med_car_3_cod`, `pnt_esc_med_pnt_car_4`, `pnt_esc_med_car_4_cod`, `pnt_esc_med_bonus`) VALUES
(1, 1, 1, 18, 1350, 17, 1268, 16, 1195, 15, 838, 0),
(2, 2, 1, 18, 93, 17, 111, 16, 275, 15, 580, 0),
(3, 3, 1, 18, 88, 17, 101, 16, 91, 15, 91, 0),
(4, 4, 1, 18, 97, 17, 1310, 16, 895, 15, 940, 0),
(5, 5, 1, 18, 630, 17, 535, 16, 335, 15, 700, 0),
(6, 6, 1, 18, 107, 17, 81, 16, 87, 15, 73, 0),
(7, 7, 1, 18, 350, 17, 765, 16, 271, 15, 161, 0),
(8, 8, 1, 18, 320, 17, 125, 16, 114, 15, 210, 0),
(9, 10, 1, 18, 745, 17, 608, 16, 930, 15, 1118, 0),
(10, 11, 1, 18, 243, 17, 238, 16, 260, 15, 510, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci ROW_FORMAT=FIXED AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `puntos_motores_media`
--

INSERT INTO `puntos_motores_media` (`pnt_mot_med_cod`, `pnt_mot_med_mot_cod`, `pnt_mot_med_car_cod`, `pnt_mot_med_pnt_car_1`, `pnt_mot_med_car_1_cod`, `pnt_mot_med_pnt_car_2`, `pnt_mot_med_car_2_cod`, `pnt_mot_med_pnt_car_3`, `pnt_mot_med_car_3_cod`, `pnt_mot_med_pnt_car_4`, `pnt_mot_med_car_4_cod`, `pnt_mot_med_bonus`) VALUES
(1, 1, 1, 18, 731, 17, 1062, 16, 1007, 15, 965, 0),
(2, 2, 1, 18, 100, 17, 96, 16, 181, 15, 327, 0),
(3, 3, 1, 18, 326, 17, 353, 16, 214, 15, 334, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci ROW_FORMAT=FIXED AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `puntos_pilotos_media`
--

INSERT INTO `puntos_pilotos_media` (`pnt_pil_med_cod`, `pnt_pil_med_pil_cod`, `pnt_pil_med_car_cod`, `pnt_pil_med_pnt_car_1`, `pnt_pil_med_car_1_cod`, `pnt_pil_med_pnt_car_2`, `pnt_pil_med_car_2_cod`, `pnt_pil_med_pnt_car_3`, `pnt_pil_med_car_3_cod`, `pnt_pil_med_pnt_car_4`, `pnt_pil_med_car_4_cod`, `pnt_pil_med_bonus`) VALUES
(1, 1, 1, 18, 1500, 17, 1750, 16, 1460, 15, 1500, 0),
(2, 3, 1, 18, 320, 17, 125, 16, 114, 15, 210, 0),
(3, 7, 1, 18, 76, 17, 151, 16, 0, 15, 820, 0),
(4, 14, 1, 18, 1200, 17, 785, 16, 930, 15, 175, 0),
(5, 20, 1, 18, 110, 17, 70, 16, 550, 15, 340, 0),
(6, 8, 1, 18, 97, 17, 1310, 16, 895, 15, 940, 0),
(7, 6, 1, 18, 1035, 17, 280, 16, 1200, 15, 1350, 0),
(8, 44, 1, 18, 455, 17, 935, 16, 660, 15, 885, 0),
(9, 11, 1, 18, 630, 17, 535, 16, 335, 15, 700, 0),
(10, 27, 1, 18, 350, 17, 765, 16, 271, 15, 161, 0),
(11, 19, 1, 18, 480, 17, 106, 16, 430, 15, 935, 0),
(12, 77, 1, 18, 5, 17, 370, 16, 90, 15, 84, 0),
(13, 26, 1, 18, 320, 17, 125, 16, 114, 15, 210, 0),
(14, 9, 1, 18, 48, 17, 105, 16, 86, 15, 84, 0),
(15, 10, 1, 18, 107, 17, 81, 16, 87, 15, 73, 0),
(16, 17, 1, 18, 128, 17, 97, 16, 95, 15, 97, 0);

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

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_campeonatos_clasificacion` AS select `campeonatos_clasificacion`.`cam_cla_usu_nom` AS `vw_usu_nom`,`campeonatos_clasificacion`.`cam_cla_equ_cod` AS `vw_equ_cod`,`campeonatos_clasificacion`.`cam_cla_equ_nom` AS `vw_equ_nom`,`campeonatos_clasificacion`.`cam_cla_car_cod` AS `vw_car_cod`,`campeonatos_clasificacion`.`cam_cla_cam_cod` AS `vw_cam_cod`,`campeonatos_clasificacion`.`cam_cla_pil_1_nom` AS `vw_piloto_1_nombre`,`campeonatos_clasificacion`.`cam_cla_pil_1_pnt` AS `vw_piloto_1_puntos`,`campeonatos_clasificacion`.`cam_cla_pil_2_nom` AS `vw_piloto_2_nombre`,`campeonatos_clasificacion`.`cam_cla_pil_2_pnt` AS `vw_piloto_2_puntos`,`campeonatos_clasificacion`.`cam_cla_pil_3_nom` AS `vw_piloto_3_nombre`,`campeonatos_clasificacion`.`cam_cla_pil_3_pnt` AS `vw_piloto_3_puntos`,`campeonatos_clasificacion`.`cam_cla_pil_4_nom` AS `vw_piloto_4_nombre`,`campeonatos_clasificacion`.`cam_cla_pil_4_pnt` AS `vw_piloto_4_puntos`,`campeonatos_clasificacion`.`cam_cla_esc_1_nom` AS `vw_escuderia_1_nombre`,`campeonatos_clasificacion`.`cam_cla_esc_1_pnt` AS `vw_escuderia_1_puntos`,`campeonatos_clasificacion`.`cam_cla_esc_2_nom` AS `vw_escuderia_2_nombre`,`campeonatos_clasificacion`.`cam_cla_esc_2_pnt` AS `vw_escuderia_2_puntos`,`campeonatos_clasificacion`.`cam_cla_mot_1_nom` AS `vw_motor_1_nombre`,`campeonatos_clasificacion`.`cam_cla_mot_1_pnt` AS `vw_motor_1_puntos`,`campeonatos_clasificacion`.`cam_cla_pnt_pod` AS `vw_puntos_podio`,`campeonatos_clasificacion`.`cam_cla_pnt_alo` AS `vw_puntos_pos_alonso`,((((((((`campeonatos_clasificacion`.`cam_cla_pil_1_pnt` + `campeonatos_clasificacion`.`cam_cla_pil_2_pnt`) + `campeonatos_clasificacion`.`cam_cla_pil_3_pnt`) + `campeonatos_clasificacion`.`cam_cla_pil_4_pnt`) + `campeonatos_clasificacion`.`cam_cla_esc_1_pnt`) + `campeonatos_clasificacion`.`cam_cla_esc_2_pnt`) + `campeonatos_clasificacion`.`cam_cla_mot_1_pnt`) + `campeonatos_clasificacion`.`cam_cla_pnt_pod`) + `campeonatos_clasificacion`.`cam_cla_pnt_alo`) AS `vw_puntos_total` from `campeonatos_clasificacion`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_campeonatos_clasificacion_broker`
--
DROP TABLE IF EXISTS `vw_campeonatos_clasificacion_broker`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_campeonatos_clasificacion_broker` AS select `campeonatos_clasificacion_broker`.`cam_cla_bro_usu_nom` AS `vw_usu_nom`,`campeonatos_clasificacion_broker`.`cam_cla_bro_equ_cod` AS `vw_equ_cod`,`campeonatos_clasificacion_broker`.`cam_cla_bro_equ_nom` AS `vw_equ_nom`,`campeonatos_clasificacion_broker`.`cam_cla_bro_car_cod` AS `vw_car_cod`,`campeonatos_clasificacion_broker`.`cam_cla_bro_cam_cod` AS `vw_cam_cod`,`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_1_nom` AS `vw_piloto_1_nombre`,`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_1_val` AS `vw_piloto_1_valor`,`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_2_nom` AS `vw_piloto_2_nombre`,`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_2_val` AS `vw_piloto_2_valor`,`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_3_nom` AS `vw_piloto_3_nombre`,`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_3_val` AS `vw_piloto_3_valor`,`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_4_nom` AS `vw_piloto_4_nombre`,`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_4_val` AS `vw_piloto_4_valor`,`campeonatos_clasificacion_broker`.`cam_cla_bro_esc_1_nom` AS `vw_escuderia_1_nombre`,`campeonatos_clasificacion_broker`.`cam_cla_bro_esc_1_val` AS `vw_escuderia_1_valor`,`campeonatos_clasificacion_broker`.`cam_cla_bro_esc_2_nom` AS `vw_escuderia_2_nombre`,`campeonatos_clasificacion_broker`.`cam_cla_bro_esc_2_val` AS `vw_escuderia_2_valor`,`campeonatos_clasificacion_broker`.`cam_cla_bro_mot_1_nom` AS `vw_motor_1_nombre`,`campeonatos_clasificacion_broker`.`cam_cla_bro_mot_1_val` AS `vw_motor_1_valor`,((((((`campeonatos_clasificacion_broker`.`cam_cla_bro_pil_1_val` + `campeonatos_clasificacion_broker`.`cam_cla_bro_pil_2_val`) + `campeonatos_clasificacion_broker`.`cam_cla_bro_pil_3_val`) + `campeonatos_clasificacion_broker`.`cam_cla_bro_pil_4_val`) + `campeonatos_clasificacion_broker`.`cam_cla_bro_esc_1_val`) + `campeonatos_clasificacion_broker`.`cam_cla_bro_esc_2_val`) + `campeonatos_clasificacion_broker`.`cam_cla_bro_mot_1_val`) AS `vw_valor_total` from `campeonatos_clasificacion_broker`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_campeonatos_muro`
--
DROP TABLE IF EXISTS `vw_campeonatos_muro`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_campeonatos_muro` AS select `campeonatos_muro`.`cam_mur_cod` AS `vw_msg_cod`,concat(`usuarios`.`usr_nom`,_latin1' ',`usuarios`.`usr_ape_1`,_latin1' ',`usuarios`.`usr_ape_2`) AS `vw_usr_nom`,`usuarios`.`usr_cod` AS `vw_usr_cod`,`campeonatos_muro`.`cam_mur_cam_cod` AS `vw_cam_cod`,`campeonatos_muro`.`cam_mur_fec` AS `vw_msg_fec`,`campeonatos_muro`.`cam_mur_texto` AS `vw_msg_text` from (`usuarios` join `campeonatos_muro`) where (`usuarios`.`usr_cod` = `campeonatos_muro`.`cam_mur_usr_cod`);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_escuderias_media`
--
DROP TABLE IF EXISTS `vw_escuderias_media`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_escuderias_media` AS select `escuderias`.`esc_cod` AS `vw_esc_cod`,`escuderias`.`esc_nom` AS `vw_esc_nom`,`puntos_escuderias_media`.`pnt_esc_med_car_cod` AS `vw_car_cod`,(((((`puntos_escuderias_media`.`pnt_esc_med_pnt_car_1` + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_2`) + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_3`) + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_4`) / 4) * 1.15) AS `vw_lim_sup`,((((`puntos_escuderias_media`.`pnt_esc_med_pnt_car_1` + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_2`) + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_3`) + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_4`) / 4) AS `vw_med`,(((((`puntos_escuderias_media`.`pnt_esc_med_pnt_car_1` + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_2`) + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_3`) + `puntos_escuderias_media`.`pnt_esc_med_pnt_car_4`) / 4) * 0.85) AS `vw_lim_inf`,`puntos_escuderias_media`.`pnt_esc_med_bonus` AS `vw_esc_bonus` from (`puntos_escuderias_media` join `escuderias`) where (`puntos_escuderias_media`.`pnt_esc_med_esc_cod` = `escuderias`.`esc_cod`) order by `puntos_escuderias_media`.`pnt_esc_med_esc_cod`,`puntos_escuderias_media`.`pnt_esc_med_car_cod`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_escuderias_puntos`
--
DROP TABLE IF EXISTS `vw_escuderias_puntos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_escuderias_puntos` AS select `vw_pilotos_puntos`.`vw_esc_cod` AS `vw_esc_cod`,`escuderias`.`esc_mot_cod` AS `vw_mot_cod`,`escuderias`.`esc_nom` AS `vw_esc_nom`,`vw_pilotos_puntos`.`vw_car_cod` AS `vw_car_cod`,(sum(`vw_pilotos_puntos`.`vw_pil_pnt`) / count(`vw_pilotos_puntos`.`vw_pil_cod`)) AS `vw_esc_pnt` from (`vw_pilotos_puntos` join `escuderias`) where (`vw_pilotos_puntos`.`vw_esc_cod` = `escuderias`.`esc_cod`) group by `vw_pilotos_puntos`.`vw_esc_cod`,`vw_pilotos_puntos`.`vw_car_cod`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_escuderias_valores`
--
DROP TABLE IF EXISTS `vw_escuderias_valores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_escuderias_valores` AS select `valores_escuderias`.`val_esc_esc_cod` AS `vw_esc_cod`,`escuderias`.`esc_mot_cod` AS `vw_mot_cod`,`escuderias`.`esc_nom` AS `vw_esc_nom`,`valores_escuderias`.`val_esc_car_cod` AS `vw_car_cod`,`valores_escuderias`.`val_esc_valor` AS `vw_esc_val` from (`escuderias` join `valores_escuderias`) where (`escuderias`.`esc_cod` = `valores_escuderias`.`val_esc_esc_cod`);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_motores_media`
--
DROP TABLE IF EXISTS `vw_motores_media`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_motores_media` AS select `motores`.`mot_cod` AS `vw_mot_cod`,`motores`.`mot_nom` AS `vw_mot_nom`,`puntos_motores_media`.`pnt_mot_med_car_cod` AS `vw_car_cod`,(((((`puntos_motores_media`.`pnt_mot_med_pnt_car_1` + `puntos_motores_media`.`pnt_mot_med_pnt_car_2`) + `puntos_motores_media`.`pnt_mot_med_pnt_car_3`) + `puntos_motores_media`.`pnt_mot_med_pnt_car_4`) / 4) * 1.15) AS `vw_lim_sup`,((((`puntos_motores_media`.`pnt_mot_med_pnt_car_1` + `puntos_motores_media`.`pnt_mot_med_pnt_car_2`) + `puntos_motores_media`.`pnt_mot_med_pnt_car_3`) + `puntos_motores_media`.`pnt_mot_med_pnt_car_4`) / 4) AS `vw_med`,(((((`puntos_motores_media`.`pnt_mot_med_pnt_car_1` + `puntos_motores_media`.`pnt_mot_med_pnt_car_2`) + `puntos_motores_media`.`pnt_mot_med_pnt_car_3`) + `puntos_motores_media`.`pnt_mot_med_pnt_car_4`) / 4) * 0.85) AS `vw_lim_inf`,`puntos_motores_media`.`pnt_mot_med_bonus` AS `vw_mot_bonus` from (`puntos_motores_media` join `motores`) where (`puntos_motores_media`.`pnt_mot_med_mot_cod` = `motores`.`mot_cod`) order by `puntos_motores_media`.`pnt_mot_med_mot_cod`,`puntos_motores_media`.`pnt_mot_med_car_cod`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_motores_puntos`
--
DROP TABLE IF EXISTS `vw_motores_puntos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_motores_puntos` AS select `vw_escuderias_puntos`.`vw_mot_cod` AS `vw_mot_cod`,`motores`.`mot_nom` AS `vw_mot_nom`,`vw_escuderias_puntos`.`vw_car_cod` AS `vw_car_cod`,(sum(`vw_escuderias_puntos`.`vw_esc_pnt`) / count(`vw_escuderias_puntos`.`vw_esc_cod`)) AS `vw_mot_pnt` from (`vw_escuderias_puntos` join `motores`) where (`vw_escuderias_puntos`.`vw_mot_cod` = `motores`.`mot_cod`) group by `vw_escuderias_puntos`.`vw_mot_cod`,`vw_escuderias_puntos`.`vw_car_cod`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_motores_valores`
--
DROP TABLE IF EXISTS `vw_motores_valores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_motores_valores` AS select `valores_motores`.`val_mot_mot_cod` AS `vw_mot_cod`,`motores`.`mot_nom` AS `vw_mot_nom`,`valores_motores`.`val_mot_car_cod` AS `vw_car_cod`,`valores_motores`.`val_mot_valor` AS `vw_mot_val` from (`motores` join `valores_motores`) where (`motores`.`mot_cod` = `valores_motores`.`val_mot_mot_cod`);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_pilotos_media`
--
DROP TABLE IF EXISTS `vw_pilotos_media`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_pilotos_media` AS select `pilotos`.`pil_cod` AS `vw_pil_cod`,`pilotos`.`pil_nom` AS `vw_pil_nom`,`puntos_pilotos_media`.`pnt_pil_med_car_cod` AS `vw_car_cod`,(((((`puntos_pilotos_media`.`pnt_pil_med_pnt_car_1` + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_2`) + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_3`) + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_4`) / 4) * 1.15) AS `vw_lim_sup`,((((`puntos_pilotos_media`.`pnt_pil_med_pnt_car_1` + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_2`) + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_3`) + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_4`) / 4) AS `vw_med`,(((((`puntos_pilotos_media`.`pnt_pil_med_pnt_car_1` + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_2`) + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_3`) + `puntos_pilotos_media`.`pnt_pil_med_pnt_car_4`) / 4) * 0.85) AS `vw_lim_inf`,`puntos_pilotos_media`.`pnt_pil_med_bonus` AS `vw_pil_bonus` from (`puntos_pilotos_media` join `pilotos`) where (`puntos_pilotos_media`.`pnt_pil_med_pil_cod` = `pilotos`.`pil_cod`) order by `puntos_pilotos_media`.`pnt_pil_med_pil_cod`,`puntos_pilotos_media`.`pnt_pil_med_car_cod`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_pilotos_puntos`
--
DROP TABLE IF EXISTS `vw_pilotos_puntos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_pilotos_puntos` AS select `puntos_pilotos`.`pnt_pil_pil_cod` AS `vw_pil_cod`,`pilotos`.`pil_esc_cod` AS `vw_esc_cod`,`pilotos`.`pil_nom` AS `vw_pil_nom`,`puntos_pilotos`.`pnt_pil_car_cod` AS `vw_car_cod`,`puntos_pilotos`.`pnt_pil_pnt_clas` AS `vw_pnt_clas`,`puntos_pilotos`.`pnt_pil_pnt_pue` AS `vw_pnt_pue`,`puntos_pilotos`.`pnt_pil_pnt_ade` AS `vw_pnt_ade`,`puntos_pilotos`.`pnt_pil_pnt_vue` AS `vw_pnt_vue`,`puntos_pilotos`.`pnt_pil_pnt_rec` AS `vw_pnt_rec`,((((`puntos_pilotos`.`pnt_pil_pnt_clas` + `puntos_pilotos`.`pnt_pil_pnt_pue`) + `puntos_pilotos`.`pnt_pil_pnt_ade`) + `puntos_pilotos`.`pnt_pil_pnt_vue`) + `puntos_pilotos`.`pnt_pil_pnt_rec`) AS `vw_pil_pnt` from (`pilotos` join `puntos_pilotos`) where (`pilotos`.`pil_cod` = `puntos_pilotos`.`pnt_pil_pil_cod`);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_pilotos_valor`
--
DROP TABLE IF EXISTS `vw_pilotos_valor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_pilotos_valor` AS select `valores_pilotos`.`val_pil_pil_cod` AS `vw_pil_cod`,`pilotos`.`pil_esc_cod` AS `vw_esc_cod`,`pilotos`.`pil_nom` AS `vw_pil_nom`,`valores_pilotos`.`val_pil_car_cod` AS `vw_car_cod`,`valores_pilotos`.`val_pil_val` AS `vw_pil_val`,`valores_pilotos`.`val_pil_mod` AS `vw_pil_mod` from (`pilotos` join `valores_pilotos`) where (`pilotos`.`pil_cod` = `valores_pilotos`.`val_pil_pil_cod`);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_puntos_apuestas`
--
DROP TABLE IF EXISTS `vw_puntos_apuestas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_puntos_apuestas` AS select `vw_puntos_apuestas_temp`.`vw_equ_cod` AS `vw_equ_cod`,`vw_puntos_apuestas_temp`.`vw_car_cod` AS `vw_car_cod`,if((`vw_puntos_apuestas_temp`.`primero` and `vw_puntos_apuestas_temp`.`segundo` and `vw_puntos_apuestas_temp`.`tercero`),600,if((`vw_puntos_apuestas_temp`.`primero` and `vw_puntos_apuestas_temp`.`segundo`),400,if(`vw_puntos_apuestas_temp`.`primero`,200,0))) AS `vw_puntos_podio`,`vw_puntos_apuestas_temp`.`puntos_alonso` AS `vw_puntos_alonso`,(if((`vw_puntos_apuestas_temp`.`primero` and `vw_puntos_apuestas_temp`.`segundo` and `vw_puntos_apuestas_temp`.`tercero`),600,if((`vw_puntos_apuestas_temp`.`primero` and `vw_puntos_apuestas_temp`.`segundo`),400,if(`vw_puntos_apuestas_temp`.`primero`,200,0))) + `vw_puntos_apuestas_temp`.`puntos_alonso`) AS `vw_puntos_apuestas` from `vw_puntos_apuestas_temp`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_puntos_apuestas_temp`
--
DROP TABLE IF EXISTS `vw_puntos_apuestas_temp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_puntos_apuestas_temp` AS select `ac`.`apu_car_equ_cod` AS `vw_equ_cod`,`ac`.`apu_car_car_cod` AS `vw_car_cod`,if((`ac`.`apu_car_pod_pri_pil_cod` = `rc1`.`res_car_pil_cod`),1,0) AS `primero`,if((`ac`.`apu_car_pod_seg_pil_cod` = `rc2`.`res_car_pil_cod`),1,0) AS `segundo`,if((`ac`.`apu_car_pod_ter_pil_cod` = `rc3`.`res_car_pil_cod`),1,0) AS `tercero`,if((`ac`.`apu_car_pos_alo` = `rc4`.`res_car_pos_fin`),250,0) AS `puntos_alonso` from (((((`apuestas_carrera` `ac` join `resultados_carrera` `rc1`) join `resultados_carrera` `rc2`) join `resultados_carrera` `rc3`) join `resultados_carrera` `rc4`) join `resultados_carrera` `rc5`) where ((`ac`.`apu_car_car_cod` = `rc1`.`res_car_car_cod`) and (`ac`.`apu_car_car_cod` = `rc2`.`res_car_car_cod`) and (`ac`.`apu_car_car_cod` = `rc3`.`res_car_car_cod`) and (`ac`.`apu_car_car_cod` = `rc4`.`res_car_car_cod`) and (`ac`.`apu_car_car_cod` = `rc5`.`res_car_car_cod`) and (`rc1`.`res_car_pos_fin` = 1) and (`rc2`.`res_car_pos_fin` = 2) and (`rc3`.`res_car_pos_fin` = 3) and (`rc4`.`res_car_pil_cod` = 5) and (`rc5`.`res_car_pil_cod` = 22));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_valores_escuderias_carrera`
--
DROP TABLE IF EXISTS `vw_valores_escuderias_carrera`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_valores_escuderias_carrera` AS select `vw_escuderias_valores`.`vw_esc_cod` AS `vw_esc_cod`,`vw_escuderias_valores`.`vw_mot_cod` AS `vw_mot_cod`,`vw_escuderias_valores`.`vw_esc_nom` AS `vw_esc_nom`,`vw_escuderias_valores`.`vw_car_cod` AS `vw_car_cod`,`vw_escuderias_puntos`.`vw_esc_pnt` AS `vw_esc_pnt`,`vw_escuderias_valores`.`vw_esc_val` AS `vw_esc_val` from (`vw_escuderias_valores` left join `vw_escuderias_puntos` on(((`vw_escuderias_puntos`.`vw_esc_cod` = `vw_escuderias_valores`.`vw_esc_cod`) and (`vw_escuderias_puntos`.`vw_mot_cod` = `vw_escuderias_valores`.`vw_mot_cod`) and (`vw_escuderias_puntos`.`vw_esc_nom` = `vw_escuderias_valores`.`vw_esc_nom`) and (`vw_escuderias_puntos`.`vw_car_cod` = `vw_escuderias_valores`.`vw_car_cod`))));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_valores_motores_carrera`
--
DROP TABLE IF EXISTS `vw_valores_motores_carrera`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_valores_motores_carrera` AS select `vw_motores_valores`.`vw_mot_cod` AS `vw_mot_cod`,`vw_motores_valores`.`vw_mot_nom` AS `vw_mot_nom`,`vw_motores_valores`.`vw_car_cod` AS `vw_car_cod`,`vw_motores_puntos`.`vw_mot_pnt` AS `vw_mot_pnt`,`vw_motores_valores`.`vw_mot_val` AS `vw_mot_val` from (`vw_motores_valores` left join `vw_motores_puntos` on(((`vw_motores_puntos`.`vw_mot_cod` = `vw_motores_valores`.`vw_mot_cod`) and (`vw_motores_puntos`.`vw_mot_nom` = `vw_motores_valores`.`vw_mot_nom`) and (`vw_motores_puntos`.`vw_car_cod` = `vw_motores_valores`.`vw_car_cod`))));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_valores_pilotos_carrera`
--
DROP TABLE IF EXISTS `vw_valores_pilotos_carrera`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u330305403_jamf1`@`localhost` SQL SECURITY DEFINER VIEW `vw_valores_pilotos_carrera` AS select `vw_pilotos_valor`.`vw_pil_cod` AS `vw_pil_cod`,`vw_pilotos_valor`.`vw_esc_cod` AS `vw_esc_cod`,`vw_pilotos_valor`.`vw_pil_nom` AS `vw_pil_nom`,`vw_pilotos_valor`.`vw_car_cod` AS `vw_car_cod`,`vw_pilotos_puntos`.`vw_pnt_clas` AS `vw_pnt_clas`,`vw_pilotos_puntos`.`vw_pnt_pue` AS `vw_pnt_pue`,`vw_pilotos_puntos`.`vw_pnt_ade` AS `vw_pnt_ade`,`vw_pilotos_puntos`.`vw_pnt_vue` AS `vw_pnt_vue`,`vw_pilotos_puntos`.`vw_pnt_rec` AS `vw_pnt_rec`,`vw_pilotos_puntos`.`vw_pil_pnt` AS `vw_pil_pnt`,`vw_pilotos_valor`.`vw_pil_val` AS `vw_pil_val`,`vw_pilotos_valor`.`vw_pil_mod` AS `vw_pil_mod` from (`vw_pilotos_valor` left join `vw_pilotos_puntos` on(((`vw_pilotos_puntos`.`vw_pil_cod` = `vw_pilotos_valor`.`vw_pil_cod`) and (`vw_pilotos_puntos`.`vw_esc_cod` = `vw_pilotos_valor`.`vw_esc_cod`) and (`vw_pilotos_puntos`.`vw_pil_nom` = `vw_pilotos_valor`.`vw_pil_nom`) and (`vw_pilotos_puntos`.`vw_car_cod` = `vw_pilotos_valor`.`vw_car_cod`))));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
