-- Valores para los pilotos temp 2014
INSERT INTO `valores_pilotos` 
(`val_pil_cod`, `val_pil_pil_cod`, `val_pil_car_cod`, `val_pil_val`, `val_pil_mod`) 
VALUES 
('1', '1', '1', '3700', '0.0'),
('2', '3', '1', '3100', '0.0'),
('3', '7', '1', '3500', '0.0'),
('4', '14', '1', '2700', '0.0'),
('5', '20', '1', '3300', '0.0'),
('6', '22', '1', '2300', '0.0'),
('7', '8', '1', '2900', '0.0'),
('8', '13', '1', '2300', '0.0'),
('9', '6', '1', '2500', '0.0'),
('10','44', '1', '3100', '0.0'),
('11','21', '1', '2100', '0.0'),
('12','99', '1', '1800', '0.0'),
('14','11', '1', '1900', '0.0'),
('15','27', '1', '1700', '0.0'),
('16','19', '1', '1600', '0.0'),
('17','77', '1', '1200', '0.0'),
('18','25', '1', '1100', '0.0'),
('19','26', '1', '1100', '0.0'),
('20','9', '1', '1000', '0.0'),
('21','10', '1', '900', '0.0'),
('22','4', '1', '800', '0.0'),
('23','17', '1', '800', '0.0');

-- Valores para las escuderias temp 2014
INSERT INTO `valores_escuderias` 
(`val_esc_cod`, `val_esc_esc_cod`, `val_esc_car_cod`, `val_esc_valor`, `val_esc_mod`) 
VALUES
('1', '1', '1', '2500', '0.0'),
('2', '2', '1', '2300', '0.0'),
('3', '3', '1', '2100', '0.0'),
('4', '4', '1', '1900', '0.0'),
('5', '5', '1', '1700', '0.0'),
('6', '6', '1', '1500', '0.0'),
('7', '7', '1', '1400', '0.0'),
('8', '8', '1', '1300', '0.0'),
('9', '9', '1', '1200', '0.0'),
('10','10', '1', '1000', '0.0'),
('11','11', '1', '1000', '0.0');

-- Valores para los motores temp 2014
INSERT INTO `valores_motores` 
(`val_mot_cod`, `val_mot_mot_cod`, `val_mot_car_cod`, `val_mot_valor`, `val_mot_mod`) 
VALUES
('1', '1', '1', '1600', '0.0'),
('2', '2', '1', '1800', '0.0'),
('3', '3', '1', '1700', '0.0');

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
  PRIMARY KEY (`pnt_pil_med_cod`),
  KEY `pnt_pil_med_pil_fk` (`pnt_pil_med_pil_cod`),
  KEY `pnt_pil_med_car_fk` (`pnt_pil_med_car_cod`),
  KEY `pnt_pil_med_car_1_fk` (`pnt_pil_med_car_1_cod`),
  KEY `pnt_pil_med_car_2_fk` (`pnt_pil_med_car_2_cod`),
  KEY `pnt_pil_med_car_3_fk` (`pnt_pil_med_car_3_cod`),
  KEY `pnt_pil_med_car_4_fk` (`pnt_pil_med_car_4_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci ROW_FORMAT=FIXED AUTO_INCREMENT=0;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci ROW_FORMAT=FIXED AUTO_INCREMENT=0;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=0;

-- Valores iniciales para las tablas de las medias: Pilotos
insert into puntos_pilotos_media
	(pnt_pil_med_pil_cod, pnt_pil_med_car_cod,
	pnt_pil_med_pnt_car_1,pnt_pil_med_pnt_car_2,pnt_pil_med_pnt_car_3,pnt_pil_med_pnt_car_4,
	pnt_pil_med_car_1_cod,pnt_pil_med_car_2_cod,pnt_pil_med_car_3_cod,pnt_pil_med_car_4_cod,
	pnt_pil_med_bonus)
values
	(val_piloto, (carrera+1), 
	val_pnt_car_1, val_pnt_car_2, val_pnt_car_3, val_pnt_car_4,
	val_car_1, val_car_2, val_car_3, val_car_4,
	tiene_bonus);
	
select p1.vw_pil_cod, p1.vw_car_cod, p1.vw_pil_pnt, p2.vw_car_cod, p2.vw_pil_pnt, p3.vw_car_cod, p3.vw_pil_pnt, p4.vw_car_cod, p4.vw_pil_pnt
from vw_pilotos_puntos p1, vw_pilotos_puntos p2, vw_pilotos_puntos p3, vw_pilotos_puntos p4
where p1.vw_pil_cod = p2.vw_pil_cod
	and p1.vw_pil_cod = p3.vw_pil_cod
	and p1.vw_pil_cod = p4.vw_pil_cod
	and p1.vw_car_cod = 18
	and p2.vw_car_cod = 17
	and p3.vw_car_cod = 16
	and p4.vw_car_cod = 15
	and p1.vw_pil_cod = 1
	

-- Valores iniciales para las tablas de las medias: Escuderias
insert into puntos_escuderias_media
	(pnt_esc_med_esc_cod, pnt_esc_med_car_cod,
	pnt_esc_med_pnt_car_1,pnt_esc_med_pnt_car_2,pnt_esc_med_pnt_car_3,pnt_esc_med_pnt_car_4,
	pnt_esc_med_car_1_cod,pnt_esc_med_car_2_cod,pnt_esc_med_car_3_cod,pnt_esc_med_car_4_cod,
	pnt_esc_med_bonus)
values
	(val_escuderia, (carrera+1), 
	val_pnt_car_1, val_pnt_car_2, val_pnt_car_3, val_pnt_car_4,
	val_car_1, val_car_2, val_car_3, val_car_4,
	tiene_bonus);
	
select p1.vw_esc_cod, p1.vw_car_cod, p1.vw_esc_pnt, p2.vw_car_cod, p2.vw_esc_pnt, p3.vw_car_cod, p3.vw_esc_pnt, p4.vw_car_cod, p4.vw_esc_pnt
from vw_escuderias_puntos p1, vw_escuderias_puntos p2, vw_escuderias_puntos p3, vw_escuderias_puntos p4
where p1.vw_esc_cod = p2.vw_esc_cod
	and p1.vw_esc_cod = p3.vw_esc_cod
	and p1.vw_esc_cod = p4.vw_esc_cod
	and p1.vw_car_cod = 18
	and p2.vw_car_cod = 17
	and p3.vw_car_cod = 16
	and p4.vw_car_cod = 15
	and p1.vw_esc_cod = 1

-- Valores iniciales para las tablas de las medias: Motores
insert into puntos_motores_media
	(pnt_mot_med_mot_cod, pnt_mot_med_car_cod,
	pnt_mot_med_pnt_car_1,pnt_mot_med_pnt_car_2,pnt_mot_med_pnt_car_3,pnt_mot_med_pnt_car_4,
	pnt_mot_med_car_1_cod,pnt_mot_med_car_2_cod,pnt_mot_med_car_3_cod,pnt_mot_med_car_4_cod,
	pnt_mot_med_bonus)
values
	(val_motor, (carrera+1), 
	val_pnt_car_1, val_pnt_car_2, val_pnt_car_3, val_pnt_car_4,
	val_car_1, val_car_2, val_car_3, val_car_4,
	tiene_bonus);	

select p1.vw_mot_cod, p1.vw_car_cod, p1.vw_mot_pnt, p2.vw_car_cod, p2.vw_mot_pnt, p3.vw_car_cod, p3.vw_mot_pnt, p4.vw_car_cod, p4.vw_mot_pnt
from vw_motores_puntos p1, vw_motores_puntos p2, vw_motores_puntos p3, vw_motores_puntos p4
where p1.vw_mot_cod = p2.vw_mot_cod
	and p1.vw_mot_cod = p3.vw_mot_cod
	and p1.vw_mot_cod = p4.vw_mot_cod
	and p1.vw_car_cod = 18
	and p2.vw_car_cod = 17
	and p3.vw_car_cod = 16
	and p4.vw_car_cod = 15
	and p1.vw_mot_cod = 1

-- Consulta para la clasificacion de campeones. En Proceso.
select cp.vw_usu_nom, cp.vw_equ_nom, vw_puntos_total, vw_valor_total
from vw_campeonatos_clasificacion cp, vw_campeonatos_clasificacion_broker cb
where cp.vw_cam_cod = cb.vw_cam_cod
group by 

