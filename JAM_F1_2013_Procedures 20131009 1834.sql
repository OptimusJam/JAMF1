-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.27-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema jam_f1_2013
--

CREATE DATABASE IF NOT EXISTS jam_f1_2013;
USE jam_f1_2013;

--
-- Definition of procedure `apuestas_carrera_insertar`
--

DROP PROCEDURE IF EXISTS `apuestas_carrera_insertar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `apuestas_carrera_insertar`(
        IN equipo INT,
        IN carrera INT,
        IN piloto_primero INT,
        IN piloto_segundo INT,
        IN piloto_tercero INT,
        IN posicion_alo INT,
        IN posicion_alg INT)
BEGIN
   insert into
   apuestas_carrera(apu_car_equ_cod, apu_car_car_cod, 
      apu_car_pod_pri_pil_cod, apu_car_pod_seg_pil_cod, apu_car_pod_ter_pil_cod,
      apu_car_pos_alo, apu_car_pos_alg)
   values
   (equipo,carrera,piloto_primero,piloto_segundo,piloto_tercero,posicion_alo,posicion_alg);   
END $$

DELIMITER ;

--
-- Definition of procedure `apuestas_carrera_modificar`
--

DROP PROCEDURE IF EXISTS `apuestas_carrera_modificar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `apuestas_carrera_modificar`(
        IN equipo INT,
        IN carrera INT,
        IN piloto_primero INT,
        IN piloto_segundo INT,
        IN piloto_tercero INT,
        IN posicion_alo INT,
        IN posicion_alg INT)
BEGIN
   update apuestas_carrera set
      apu_car_equ_cod = equipo, 
      apu_car_car_cod = carrera, 
      apu_car_pod_pri_pil_cod = piloto_primero, 
      apu_car_pod_seg_pil_cod = piloto_segundo, 
      apu_car_pod_ter_pil_cod = piloto_tercero,
      apu_car_pos_alo = posicion_alo, 
      apu_car_pos_alg = posicion_alg
   where apu_car_equ_cod = equipo and apu_car_car_cod = carrera;
END $$

DELIMITER ;

--
-- Definition of procedure `apuestas_mundial_insertar`
--

DROP PROCEDURE IF EXISTS `apuestas_mundial_insertar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `apuestas_mundial_insertar`(
        IN equipo INT,
        IN piloto_campeon  INT,
        IN escuderia_campeon INT,
        IN piloto_vuelta INT)
BEGIN
   insert into
   apuestas_mundial(apu_mun_equ_cod, apu_mun_cam_pil_cod, apu_mun_cam_esc_cod, apu_mun_vue_pil_cod)
   values
   (equipo,piloto_campeon,escuderia_campeon,piloto_vuelta);
END $$

DELIMITER ;

--
-- Definition of procedure `apuestas_mundial_modificar`
--

DROP PROCEDURE IF EXISTS `apuestas_mundial_modificar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `apuestas_mundial_modificar`(
        IN equipo INT,
        IN piloto_campeon  INT,
        IN escuderia_campeon INT,
        IN piloto_vuelta INT,
        IN codigo_apu INT)
BEGIN
   update apuestas_mundial set
    apu_mun_equ_cod = equipo, 
    apu_mun_cam_pil_cod = piloto_campeon, 
    apu_mun_cam_esc_cod = escuderia_campeon, 
    apu_mun_vue_pil_cod = piloto_vuelta
   where apu_mun_cod = codigo_apu;
END $$

DELIMITER ;

--
-- Definition of procedure `campeonatos_insertar`
--

DROP PROCEDURE IF EXISTS `campeonatos_insertar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `campeonatos_insertar`(
        IN nombre VARCHAR(50),
        IN descrip  VARCHAR(150),
        IN usuario INT,
        IN pass VARCHAR(25),
        OUT codigo_cam INT)
BEGIN
   insert into
   campeonatos(cam_nom, cam_des, cam_usr_cod, cam_pass)
   values
   (nombre,descrip,usuario,pass);
   select cam_cod into codigo_cam from campeonatos where cam_nom = mombre;
END $$

DELIMITER ;

--
-- Definition of procedure `campeonatos_modificar`
--

DROP PROCEDURE IF EXISTS `campeonatos_modificar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `campeonatos_modificar`(
        IN nombre VARCHAR(50),
        IN descrip  VARCHAR(150),
        IN usuario INT,
        IN pass VARCHAR(25),
        IN codigo_cam INT)
BEGIN
   update campeonatos set
    cam_nom = nombre,
    cam_des = descrip,
    cam_usr_cod = usuario,
    cam_pass = pass
  where
    cam_cod = codigo_cam;
END $$

DELIMITER ;

--
-- Definition of procedure `campeonato_insertar`
--

DROP PROCEDURE IF EXISTS `campeonato_insertar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `campeonato_insertar`(
        IN nombre VARCHAR(50),
        IN descrip  VARCHAR(150),
        IN usuario INT,
        IN pass VARCHAR(25),
        OUT codigo_cam INT)
BEGIN
   insert into
   campeonatos(cam_nom, cam_des, cam_usr_cod, cam_pass)
   values
   (nombre,descrip,usuario,pass);
   select cam_cod into codigo_cam from campeonatos where cam_nom = nombre;
END $$

DELIMITER ;

--
-- Definition of procedure `campeonato_modificar`
--

DROP PROCEDURE IF EXISTS `campeonato_modificar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `campeonato_modificar`(
        IN nombre VARCHAR(50),
        IN descrip  VARCHAR(150),
        IN usuario INT,
        IN pass VARCHAR(25),
        IN codigo_cam INT)
BEGIN
   update campeonatos set
    cam_nom = nombre,
    cam_des = descrip,
    cam_usr_cod = usuario,
    cam_pass = pass
  where
    cam_cod = codigo_cam;
END $$

DELIMITER ;

--
-- Definition of procedure `campeonato_muro_insertar`
--

DROP PROCEDURE IF EXISTS `campeonato_muro_insertar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `campeonato_muro_insertar`(
        IN cam_cod INT,
        IN usr_cod  INT,
        IN texto VARCHAR(250))
BEGIN
	insert into 
	campeonatos_muro (cam_mur_cam_cod, cam_mur_usr_cod,cam_mur_fec,cam_mur_texto)
	values
    (cam_cod, usr_cod, curdate(), texto);
END $$

DELIMITER ;

--
-- Definition of procedure `equipos_componentes_insertar`
--

DROP PROCEDURE IF EXISTS `equipos_componentes_insertar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `equipos_componentes_insertar`(
        IN carrera INT,
        IN piloto_1 INT,
        IN piloto_2 INT,
        IN piloto_3 INT,
        IN piloto_4 INT,
        IN escuderia_1 INT,
        IN escuderia_2 INT,
        IN motor_1 INT,
        IN dinero INT,
        IN codigo_equ INT)
BEGIN
   insert into
      equipos_componentes(equ_equ_cod,equ_car_cod,equ_pil_1_cod,equ_pil_2_cod,equ_pil_3_cod,equ_pil_4_cod,
      equ_esc_1_cod,equ_esc_2_cod,equ_mot_1_cod,equ_din)
   values
      (codigo_equ,carrera,piloto_1,piloto_2,piloto_3,piloto_4,escuderia_1,escuderia_2,motor_1,dinero);
END $$

DELIMITER ;

--
-- Definition of procedure `equipos_componentes_modificar`
--

DROP PROCEDURE IF EXISTS `equipos_componentes_modificar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `equipos_componentes_modificar`(
        IN carrera INT,
        IN piloto_1 INT,
        IN piloto_2 INT,
        IN piloto_3 INT,
        IN piloto_4 INT,
        IN escuderia_1 INT,
        IN escuderia_2 INT,
        IN motor_1 INT,
        IN dinero INT,
        IN codigo_equipo INT)
BEGIN
   update
      equipos_componentes
   set      
      equ_pil_1_cod = piloto_1,
      equ_pil_2_cod = piloto_2,
      equ_pil_3_cod = piloto_3,
      equ_pil_4_cod = piloto_4,
      equ_esc_1_cod = escuderia_1,
      equ_esc_2_cod = escuderia_2,
      equ_mot_1_cod = motor_1,
      equ_din = dinero
   where
      equ_equ_cod = codigo_equipo
	  and equ_car_cod = carrera;
END $$

DELIMITER ;

--
-- Definition of procedure `equipos_datos_insertar`
--

DROP PROCEDURE IF EXISTS `equipos_datos_insertar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `equipos_datos_insertar`(
        IN nombre VARCHAR(50),
        IN lema  VARCHAR(150),
        IN usuario INT,
        IN campeonato INT,
        OUT codigo_equ INT)
BEGIN
   insert into
      equipos_datos(equ_nom,equ_lem,equ_usr_cod,equ_cam_cod)
   values
      (nombre,lema,usuario,campeonato);
   select equ_cod into codigo_equ from equipos_datos where equ_nom = nombre and equ_usr_cod = usuario and equ_cam_cod = campeonato;
END $$

DELIMITER ;

--
-- Definition of procedure `equipos_datos_modificar`
--

DROP PROCEDURE IF EXISTS `equipos_datos_modificar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `equipos_datos_modificar`(
        IN nombre VARCHAR(50),
        IN lema  VARCHAR(150),
        IN usuario INT,
        IN campeonato INT,
        IN codigo_equ INT)
BEGIN
   update
      equipos_datos
   set
      equ_nom = nombre,
      equ_lem = lema,
      equ_usr_cod = usuario,
      equ_cam_cod = campeonato
   where
      equ_cod = codigo_equ;
END $$

DELIMITER ;

--
-- Definition of procedure `equipos_insertar`
--

DROP PROCEDURE IF EXISTS `equipos_insertar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `equipos_insertar`(
        IN nombre VARCHAR(50),
        IN lema  VARCHAR(150),
        IN dinero INT,
        IN usuario INT,
        IN campeonato INT,
        IN carrera INT,
        IN piloto_1 INT,
        IN piloto_2 INT,
        IN piloto_3 INT,
        IN piloto_4 INT,
        IN escuderia_1 INT,
        IN escuderia_2 INT,
        IN motor_1 INT,        
        OUT codigo_equ INT)
BEGIN
   insert into
      equipos(equ_nom,equ_lem,equ_din,equ_usr_cod,equ_cam_cod,equ_car_cod,equ_pil_1_cod,equ_pil_2_cod,equ_pil_3_cod,equ_pil_4_cod,
      equ_esc_1_cod,equ_esc_2_cod,equ_mot_1_cod)
   values
      (nombre,lema,dinero,usuario,campeonato,carrera,piloto_1,piloto_2,piloto_3,piloto_4,escuderia_1,escuderia_2,motor_1);
   select equ_cod into codigo_equ from equipos where equ_nom = mombre and equ_usr_cod = usuario and equ_cam_cod = campeonato;
END $$

DELIMITER ;

--
-- Definition of procedure `equipos_modificar`
--

DROP PROCEDURE IF EXISTS `equipos_modificar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `equipos_modificar`(
        IN nombre VARCHAR(50),
        IN lema  VARCHAR(150),
        IN dinero INT,
        IN usuario INT,
        IN campeonato INT,
        IN carrera INT,
        IN piloto_1 INT,
        IN piloto_2 INT,
        IN piloto_3 INT,
        IN piloto_4 INT,
        IN escuderia_1 INT,
        IN escuderia_2 INT,
        IN motor_1 INT,        
        IN codigo_equ INT)
BEGIN
   update
      equipos
   set
      equ_nom = nombre,
      equ_lem = lema,
      equ_din = dinero,
      equ_usr_cod = usuario,
      equ_cam_cod = campeonato,
      equ_car_cod = carrera,
      equ_pil_1_cod = piloto_1,
      equ_pil_2_cod = piloto_2,
      equ_pil_3_cod = piloto_3,
      equ_pil_4_cod = piloto_4,
      equ_esc_1_cod = escuderia_1,
      equ_esc_2_cod = escuderia_2,
      equ_mot_1_cod = motor_1 
   where
      equ_cod = codigo_equipo;
END $$

DELIMITER ;

--
-- Definition of procedure `PROC_CALCULAR_MEDIA_PILOTO`
--

DROP PROCEDURE IF EXISTS `PROC_CALCULAR_MEDIA_PILOTO`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `PROC_CALCULAR_MEDIA_PILOTO`(IN carrera INT, IN piloto INT, OUT media_piloto DOUBLE)
BEGIN
  
  DECLARE media, media_temp DOUBLE;  
  DECLARE valor_final INT;
  DECLARE valor_minimo INT;
  DECLARE cur_pnt_pil CURSOR FOR SELECT vw_pil_cod, vw_pil_pnt, vw_pil_val FROM vw_valores_pilotos_carrera where vw_car_cod = carrera;  

    select piloto, carrera;

	
	if (carrera = 1) then
		set media = (select sum(pnt_pil_puntos) 
                            from puntos_pilotos_old 
                            where pnt_pil_pil_cod = piloto and pnt_pil_crr_cod in (19,18,17,16));
			set media_temp = 0;
		else 
            if (carrera = 2) then
                set media = (select sum(pnt_pil_puntos) 
                                from puntos_pilotos_old 
                                where pnt_pil_pil_cod = piloto and pnt_pil_crr_cod in (19,18,17));
                set media_temp = (select sum(vw_pil_pnt) 
                                from vw_valores_pilotos_carrera 
                                where vw_pil_cod = piloto and vw_car_cod = carrera-1);
            else 
                if (carrera = 3) then
                    set media = (select sum(pnt_pil_puntos) 
                                    from puntos_pilotos_old 
                                    where pnt_pil_pil_cod = piloto and pnt_pil_crr_cod in (19,18));
                    set media_temp = (select sum(vw_pil_pnt) 
                                    from vw_valores_pilotos_carrera 
                                    where vw_pil_cod = piloto and vw_car_cod in (carrera-1,carrera-2));
                else 
                    if (carrera = 4) then
                        set media = (select sum(pnt_pil_puntos) 
                                        from puntos_pilotos_old 
										where pnt_pil_pil_cod = piloto and pnt_pil_crr_cod = 19);
                        set media_temp = (select sum(vw_pil_pnt) 
                                        from vw_valores_pilotos_carrera 
                                        where vw_pil_cod = piloto and vw_car_cod in (carrera-1,carrera-2,carrera-3));
                    else
                        set media = 0;
						set media_temp = (select sum(vw_pil_pnt) 
										from vw_valores_pilotos_carrera 
										where vw_pil_cod = piloto and vw_car_cod in (carrera-1,carrera-2,carrera-3,carrera-4));
				end if;
			end if;
		end if;
    end if;

	set media_piloto = (media + media_temp) / 4;

    select media, media_temp, media_piloto;
end $$

DELIMITER ;

--
-- Definition of procedure `PROC_CALCULAR_PUNTOS_PILOTOS`
--

DROP PROCEDURE IF EXISTS `PROC_CALCULAR_PUNTOS_PILOTOS`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `PROC_CALCULAR_PUNTOS_PILOTOS`(IN carrera INT)
BEGIN
  DECLARE done INT DEFAULT 0;  
  DECLARE pun_cla, pun_pue, pun_ade, pun_vue, pun_rec INT;
  DECLARE var_pos INT;
  DECLARE piloto, pos_sal, pos_fin, ult_vuelta INT;
  DECLARE finalizado, vuelta_rapida, record_circuito BIT;
  DECLARE cur_res_pil CURSOR FOR 		
        SELECT res_car_pil_cod, res_car_pos_ini, res_car_pos_fin, res_car_num_vue, 
                res_car_vue_rap, res_car_rec_cir, res_car_car_fin
        FROM resultados_carrera 
        where res_car_car_cod = carrera;  
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;

  OPEN cur_res_pil;
  
  REPEAT
    FETCH cur_res_pil INTO piloto, pos_sal, pos_fin, ult_vuelta, vuelta_rapida, record_circuito, finalizado;    
    IF NOT done THEN
        
        set pun_cla = 0;
        set pun_pue = 0;
        set pun_ade = 0;
        set pun_vue = 0;
        set pun_rec = 0;
        set var_pos = 0;

        
        set var_pos = pos_sal - pos_fin;
        if (var_pos > 0) then
            set pun_ade = var_pos * 10;
        else
            set pun_ade = var_pos * 5;
        end if;        

        
        if (finalizado = 1) then            
          set pun_pue = (select pnt_new_pnt from puntos_new where pnt_new_eve = 'carrera' and pnt_new_pos = pos_fin);
        else
          set pun_pue = ult_vuelta;
        end if;
        
        
        if (pos_sal < 11) then
          set pun_cla = (select pnt_new_pnt from puntos_new where pnt_new_eve = 'clas' and pnt_new_pos = pos_sal);
        end if;
        
        
        if (vuelta_rapida = 1) then
            set pun_vue = (select pnt_new_pnt from puntos_new where pnt_new_eve = 'vuelta_rapida');
        end if; 
        
        
        if (record_circuito = 1) then
            set pun_rec = (select pnt_new_pnt from puntos_new where pnt_new_eve = 'record_circuito');
        end if;

        
        INSERT INTO puntos_pilotos
        (pnt_pil_pil_cod, pnt_pil_car_cod, pnt_pil_pnt_clas, pnt_pil_pnt_pue, pnt_pil_pnt_ade, pnt_pil_pnt_vue, pnt_pil_pnt_rec)
        VALUES
        (piloto, carrera, pun_cla, pun_pue, pun_ade, pun_vue, pun_rec);        
    END IF;
  UNTIL done END REPEAT;

  CLOSE cur_res_pil;
END $$

DELIMITER ;

--
-- Definition of procedure `PROC_CALCULAR_TABLA_MEDIAS_ESCUDERIAS`
--

DROP PROCEDURE IF EXISTS `PROC_CALCULAR_TABLA_MEDIAS_ESCUDERIAS`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_CALCULAR_TABLA_MEDIAS_ESCUDERIAS`(IN carrera INT)
BEGIN
  
  DECLARE done INT DEFAULT 0;  
  DECLARE val_escuderia INT;  
  DECLARE val_pnt_car_1, val_car_1, val_pnt_car_2, val_car_2, val_pnt_car_3, val_car_3, val_pnt_car_4, val_car_4 INT;
  DECLARE media, media_lim_sup, media_lim_inf INT;
  DECLARE puntos_carrera INT;
  DECLARE eliminar_cero INT DEFAULT 0;
  DECLARE val_car_1_ant INT;
  DECLARE valor_escuderia, valor_escuderia_max, valor_escuderia_lim_sup INT;
  DECLARE tiene_bonus INT DEFAULT 0;
  DECLARE cur_med_esc CURSOR FOR SELECT pnt_esc_med_esc_cod, 
										pnt_esc_med_pnt_car_1, pnt_esc_med_car_1_cod,
										pnt_esc_med_pnt_car_2, pnt_esc_med_car_2_cod,
										pnt_esc_med_pnt_car_3, pnt_esc_med_car_3_cod, pnt_esc_med_bonus
										FROM puntos_escuderias_media 
										where pnt_esc_med_car_cod = carrera;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
  
  
  set valor_escuderia_max = (select valor 
							from (select val_esc_valor as valor, @row := @row + 1 AS row 
									from valores_escuderias , (SELECT @row := 0) r
									where val_esc_car_cod = carrera
							order by val_esc_valor desc)  al
						where row = 2);
  set valor_escuderia_lim_sup = 1.15 * valor_escuderia_max;
  
  select valor_escuderia_max, valor_escuderia_lim_sup;

  OPEN cur_med_esc;
   
  REPEAT
    FETCH cur_med_esc INTO val_escuderia, val_pnt_car_2, val_car_2, val_pnt_car_3, val_car_3, val_pnt_car_4, val_car_4, tiene_bonus;
    IF NOT done THEN	
	
		
        set media = (select (pnt_esc_med_pnt_car_1 + pnt_esc_med_pnt_car_2 + pnt_esc_med_pnt_car_3 + pnt_esc_med_pnt_car_4) / 4 
					from puntos_escuderias_media 
					where pnt_esc_med_esc_cod = val_escuderia 
						and pnt_esc_med_car_cod = carrera);
		set media_lim_sup = 1.3 * media;
		set media_lim_inf = 0.7 * media;
        
        
		set puntos_carrera = (select vw_esc_pnt from vw_escuderias_puntos where vw_esc_cod = val_escuderia and vw_car_cod = carrera);
		set val_pnt_car_1 = puntos_carrera;		
		set val_car_1 = carrera;

        
		set valor_escuderia = (select vw_esc_val from vw_escuderias_valores where vw_esc_cod = val_escuderia and vw_car_cod = carrera);
		if valor_escuderia < valor_escuderia_lim_sup then
			
			if puntos_carrera > media_lim_sup then
				set val_pnt_car_1 = 0;
				set eliminar_cero = 1;
				set tiene_bonus = 1;
			end if;
		
			
			if puntos_carrera < media_lim_inf then
				set eliminar_cero = 1;			
			end if;
		
		else
			set eliminar_cero = 1;
		end if;
		
		
		if eliminar_cero then
			
			if val_pnt_car_2 = 0 then
				set val_pnt_car_2 = (select vw_esc_pnt from vw_escuderias_puntos where vw_esc_cod = val_escuderia and vw_car_cod = val_car_2);
			end if;
			
			
			if val_pnt_car_3 = 0 then
				set val_pnt_car_3 = (select vw_esc_pnt from vw_escuderias_puntos where vw_esc_cod = val_escuderia and vw_car_cod = val_car_3);
			end if;
			
			
			if val_pnt_car_4 = 0 then
				set val_pnt_car_4 = (select vw_esc_pnt from vw_escuderias_puntos where vw_esc_cod = val_escuderia and vw_car_cod = val_car_4);
			end if;
			
		end if;
		
        select val_escuderia, val_pnt_car_1, val_pnt_car_2, val_pnt_car_3, val_pnt_car_4, tiene_bonus;
		
		
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
            
		
    END IF;
  UNTIL done 
  END REPEAT;
  
  CLOSE cur_med_esc;

END $$

DELIMITER ;

--
-- Definition of procedure `PROC_CALCULAR_TABLA_MEDIAS_MOTORES`
--

DROP PROCEDURE IF EXISTS `PROC_CALCULAR_TABLA_MEDIAS_MOTORES`;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_CALCULAR_TABLA_MEDIAS_MOTORES`(IN carrera INT)
BEGIN
  
  DECLARE done INT DEFAULT 0;  
  DECLARE val_motor INT;  
  DECLARE val_pnt_car_1, val_car_1, val_pnt_car_2, val_car_2, val_pnt_car_3, val_car_3, val_pnt_car_4, val_car_4 INT;
  DECLARE media, media_lim_sup, media_lim_inf INT;
  DECLARE puntos_carrera INT;
  DECLARE eliminar_cero INT DEFAULT 0;
  DECLARE val_car_1_ant INT;
  DECLARE valor_motor, valor_motor_max, valor_motor_lim_sup INT;
  DECLARE tiene_bonus INT DEFAULT 0;
  DECLARE cur_med_mot CURSOR FOR SELECT pnt_mot_med_mot_cod, 
										pnt_mot_med_pnt_car_1, pnt_mot_med_car_1_cod,
										pnt_mot_med_pnt_car_2, pnt_mot_med_car_2_cod,
										pnt_mot_med_pnt_car_3, pnt_mot_med_car_3_cod, pnt_mot_med_bonus
										FROM puntos_motores_media 
										where pnt_mot_med_car_cod = carrera;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;

  
  set valor_motor_max = (select valor 
							from (select val_mot_valor as valor, @row := @row + 1 AS row 
									from valores_motores , (SELECT @row := 0) r
									where val_mot_car_cod = carrera
							order by val_mot_valor desc)  al
						where row = 2);
  set valor_motor_lim_sup = 1.15 * valor_motor_max;
  
  select valor_motor_max, valor_motor_lim_sup;

OPEN cur_med_mot;
  
  REPEAT
    FETCH cur_med_mot INTO val_motor, val_pnt_car_2, val_car_2, val_pnt_car_3, val_car_3, val_pnt_car_4, val_car_4, tiene_bonus;
    IF NOT done THEN	
	
		
        set media = (select (pnt_mot_med_pnt_car_1 + pnt_mot_med_pnt_car_2 + pnt_mot_med_pnt_car_3 + pnt_mot_med_pnt_car_4) / 4 
					from puntos_motores_media 
					where pnt_mot_med_mot_cod = val_motor 
						and pnt_mot_med_car_cod = carrera);
		set media_lim_sup = 1.3 * media;
		set media_lim_inf = 0.7 * media;
        
        
		set puntos_carrera = (select vw_mot_pnt from vw_motores_puntos where vw_mot_cod = val_motor and vw_car_cod = carrera);
		set val_pnt_car_1 = puntos_carrera;		
		set val_car_1 = carrera;
		
		
		set valor_motor = (select vw_mot_val from vw_motores_valores where vw_mot_cod = val_motor and vw_car_cod = carrera);
		if valor_motor < valor_motor_lim_sup then
			
			if puntos_carrera > media_lim_sup then
				set val_pnt_car_1 = 0;
				set eliminar_cero = 1;
				set tiene_bonus = 1;
			end if;
		
			
			if puntos_carrera < media_lim_inf then
				set eliminar_cero = 1;			
			end if;
		
		else
			set eliminar_cero = 1;
		end if;
		
		
		if eliminar_cero then
			
			if val_pnt_car_2 = 0 then
				set val_pnt_car_2 = (select vw_mot_pnt from vw_motores_puntos where vw_mot_cod = val_motor and vw_car_cod = val_car_2);
			end if;
			
			
			if val_pnt_car_3 = 0 then
				set val_pnt_car_3 = (select vw_mot_pnt from vw_motores_puntos where vw_mot_cod = val_motor and vw_car_cod = val_car_3);
			end if;
			
			
			if val_pnt_car_4 = 0 then
				set val_pnt_car_4 = (select vw_mot_pnt from vw_motores_puntos where vw_mot_cod = val_motor and vw_car_cod = val_car_4);
			end if;
			
		end if;

        select val_motor, val_pnt_car_1, val_pnt_car_2, val_pnt_car_3, val_pnt_car_4, tiene_bonus;
		
		
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
		
    END IF;
  UNTIL done 
  END REPEAT;
  
  CLOSE cur_med_mot;
END $$

DELIMITER ;

--
-- Definition of procedure `PROC_CALCULAR_TABLA_MEDIAS_PILOTOS`
--

DROP PROCEDURE IF EXISTS `PROC_CALCULAR_TABLA_MEDIAS_PILOTOS`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `PROC_CALCULAR_TABLA_MEDIAS_PILOTOS`(IN carrera INT)
BEGIN
  
  DECLARE done INT DEFAULT 0;  
  DECLARE val_piloto INT;  
  DECLARE val_pnt_car_1, val_car_1, val_pnt_car_2, val_car_2, val_pnt_car_3, val_car_3, val_pnt_car_4, val_car_4 INT;
  DECLARE media, media_lim_sup, media_lim_inf INT;
  DECLARE puntos_carrera INT;
  DECLARE eliminar_cero INT DEFAULT 0;  
  DECLARE val_car_1_ant INT;
  DECLARE valor_piloto, valor_piloto_max, valor_piloto_lim_sup INT;
  DECLARE tiene_bonus INT DEFAULT 0;
  DECLARE cur_med_pil CURSOR FOR SELECT pnt_pil_med_pil_cod, pnt_pil_med_pnt_car_1, pnt_pil_med_car_1_cod,
										pnt_pil_med_pnt_car_2, pnt_pil_med_car_2_cod,
										pnt_pil_med_pnt_car_3, pnt_pil_med_car_3_cod, pnt_pil_med_bonus
										FROM puntos_pilotos_media 
										where pnt_pil_med_car_cod = carrera;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
  
  
  set valor_piloto_max = (select valor 
							from (select val_pil_val as valor, @row := @row + 1 AS row 
									from valores_pilotos , (SELECT @row := 0) r
									where val_pil_car_cod = carrera
							order by val_pil_val desc)  al
						where row = 2);
  set valor_piloto_lim_sup = 1.15 * valor_piloto_max;
  
  select valor_piloto_max, valor_piloto_lim_sup;

  OPEN cur_med_pil;
  
  REPEAT
    FETCH cur_med_pil INTO val_piloto, val_pnt_car_2, val_car_2, val_pnt_car_3, val_car_3, val_pnt_car_4, val_car_4, tiene_bonus;
    IF NOT done THEN	
	
		
        set media = (select (pnt_pil_med_pnt_car_1 + pnt_pil_med_pnt_car_2 + pnt_pil_med_pnt_car_3 + pnt_pil_med_pnt_car_4) / 4 from puntos_pilotos_media where pnt_pil_med_pil_cod = val_piloto and pnt_pil_med_car_cod = carrera);
		set media_lim_sup = 1.3 * media;
		set media_lim_inf = 0.7 * media;
        
        
		set puntos_carrera = (select vw_pil_pnt from vw_pilotos_puntos where vw_pil_cod = val_piloto and vw_car_cod = carrera);
		set val_pnt_car_1 = puntos_carrera;		
		set val_car_1 = carrera;
		
		
		set valor_piloto = (select vw_pil_val from vw_pilotos_valor where vw_pil_cod = val_piloto and vw_car_cod = carrera);
		if valor_piloto < valor_piloto_lim_sup then
			
			if puntos_carrera > media_lim_sup then
				set val_pnt_car_1 = 0;
				set eliminar_cero = 1;
				set tiene_bonus = 1;
			end if;
		
			
			if puntos_carrera < media_lim_inf then
				set eliminar_cero = 1;			
			end if;
		
		else
			set eliminar_cero = 1;
		end if;
		
		
		if eliminar_cero then
			
			if val_pnt_car_2 = 0 then
				set val_pnt_car_2 = (select vw_pil_pnt from vw_pilotos_puntos where vw_pil_cod = val_piloto and vw_car_cod = val_car_2);
			end if;
			
			
			if val_pnt_car_3 = 0 then
				set val_pnt_car_3 = (select vw_pil_pnt from vw_pilotos_puntos where vw_pil_cod = val_piloto and vw_car_cod = val_car_3);
			end if;
			
			
			if val_pnt_car_4 = 0 then
				set val_pnt_car_4 = (select vw_pil_pnt from vw_pilotos_puntos where vw_pil_cod = val_piloto and vw_car_cod = val_car_4);
			end if;
			
		end if;
		
        select val_piloto, val_pnt_car_1, val_pnt_car_2, val_pnt_car_3, val_pnt_car_4, tiene_bonus;
		
		
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
		
    END IF;
  UNTIL done 
  END REPEAT;
  
  CLOSE cur_med_pil;
END $$

DELIMITER ;

--
-- Definition of procedure `PROC_CALCULAR_VALOR_ESCUDERIAS`
--

DROP PROCEDURE IF EXISTS `PROC_CALCULAR_VALOR_ESCUDERIAS`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `PROC_CALCULAR_VALOR_ESCUDERIAS`(IN carrera INT)
BEGIN
  
  DECLARE done INT DEFAULT 0;  
  DECLARE modif DOUBLE;  
  DECLARE escuderia, valor DOUBLE;
  DECLARE valor_minimo INT;
  DECLARE valor_final INT;  
  DECLARE cur_pnt_esc CURSOR FOR SELECT val_esc_esc_cod, val_esc_valor FROM valores_escuderias where val_esc_car_cod = carrera;  
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;

  OPEN cur_pnt_esc;
  
  REPEAT
    FETCH cur_pnt_esc INTO escuderia, valor;    
    IF NOT done THEN       

		
        set modif = (select sum(val_pil_mod)/count(pil_cod)
							from valores_pilotos, pilotos, escuderias
							where val_pil_pil_cod = pil_cod 
								and esc_cod = pil_esc_cod
								and val_pil_car_cod = carrera
                                and esc_cod = escuderia
							group by esc_cod);
        
        
		set valor_final = valor + valor * modif;
		
		select escuderia, valor, modif, valor_final;
		
		
        set valor_minimo = (select pnt_new_pnt from puntos_new where pnt_new_eve = 'esc_valor_min');
        if (valor_final < valor_minimo) then
            set valor_final = valor_minimo;
         end if;
     
        
        insert into valores_escuderias
        (val_esc_esc_cod, val_esc_car_cod, val_esc_valor)
        values
        (escuderia, (carrera+1), valor_final);
    END IF;
  UNTIL done 
  END REPEAT;
  
  CLOSE cur_pnt_esc;
END $$

DELIMITER ;

--
-- Definition of procedure `PROC_CALCULAR_VALOR_MOTORES`
--

DROP PROCEDURE IF EXISTS `PROC_CALCULAR_VALOR_MOTORES`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `PROC_CALCULAR_VALOR_MOTORES`(IN carrera INT)
BEGIN
  
  DECLARE done INT DEFAULT 0;  
  DECLARE modif DOUBLE;  
  DECLARE motor, valor DOUBLE;
  DECLARE valor_minimo INT;
  DECLARE valor_final INT;  
  DECLARE cur_pnt_mot CURSOR FOR SELECT val_mot_mot_cod, val_mot_valor FROM valores_motores where val_mot_car_cod = carrera;  
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;

  OPEN cur_pnt_mot;
  
  REPEAT
    FETCH cur_pnt_mot INTO motor, valor;    
    IF NOT done THEN       

		
        set modif = (select sum(val_pil_mod)/count(pil_cod)
							from valores_pilotos, pilotos, escuderias, motores
							where val_pil_pil_cod = pil_cod 
								and esc_cod = pil_esc_cod
								and esc_mot_cod = mot_cod
                                and val_pil_car_cod = carrera
                                and mot_cod = motor
							group by mot_cod);
        
        
		set valor_final = valor + valor * modif;
		
    	
        set valor_minimo = (select pnt_new_pnt from puntos_new where pnt_new_eve = 'mot_valor_min');
        if (valor_final < valor_minimo) then
            set valor_final = valor_minimo;
         end if;

		select motor, valor, modif, valor_final;
     
        
        insert into valores_motores
        (val_mot_mot_cod, val_mot_car_cod, val_mot_valor)
        values
        (motor, (carrera+1), valor_final);
    END IF;
  UNTIL done 
  END REPEAT;
  
  CLOSE cur_pnt_mot;
END $$

DELIMITER ;

--
-- Definition of procedure `PROC_CALCULAR_VALOR_PILOTOS`
--

DROP PROCEDURE IF EXISTS `PROC_CALCULAR_VALOR_PILOTOS`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `PROC_CALCULAR_VALOR_PILOTOS`(IN carrera INT)
BEGIN
  
  DECLARE done INT DEFAULT 0;  
  DECLARE modif DOUBLE;
  DECLARE lim_sup, lim_inf, media, media_temp DOUBLE;  
  DECLARE piloto, puntos, valor DOUBLE;
  DECLARE valor_final INT;
  DECLARE valor_minimo INT;
  DECLARE cur_pnt_pil CURSOR FOR SELECT vw_pil_cod, vw_pil_pnt, vw_pil_val FROM vw_valores_pilotos_carrera where vw_car_cod = carrera;  
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;

  OPEN cur_pnt_pil;
  
  REPEAT
    FETCH cur_pnt_pil INTO piloto, puntos, valor;    
    IF NOT done THEN       

        
		set media = (select (pnt_pil_med_pnt_car_1 + pnt_pil_med_pnt_car_2 + pnt_pil_med_pnt_car_3 + pnt_pil_med_pnt_car_4) / 4 
					from puntos_pilotos_media 
					where pnt_pil_med_pil_cod = piloto and pnt_pil_med_car_cod = carrera);

        
        set lim_sup = media + media * 0.15;
        
        
        set lim_inf = media - media * 0.15;

        select piloto, lim_sup, lim_inf, media, puntos;
        
        
        if (puntos > lim_sup) then
          set modif = 0.15;
        else 
            if (puntos < lim_inf) then
              set modif = - 0.15;
            else 
              if (puntos = media) then
                  set modif = 0;
              else
                  set modif = (puntos / media) - 1;
              end if;
            end if;
        end if;
        
        
        set valor_final = valor + modif *  valor;

        
        set valor_minimo = (select pnt_new_pnt from puntos_new where pnt_new_eve = 'pil_valor_min');
        if (valor_final < valor_minimo) then
            set valor_final = valor_minimo;
         end if;
        
        
        insert into valores_pilotos 
        (val_pil_pil_cod, val_pil_car_cod, val_pil_val, val_pil_mod)
        values
        (piloto, (carrera+1), valor_final, 0);
        
        
        update valores_pilotos set val_pil_mod = modif where val_pil_pil_cod = piloto and val_pil_car_cod = carrera;

    END IF;
  UNTIL done 
  END REPEAT;
  
  CLOSE cur_pnt_pil;
END $$

DELIMITER ;

--
-- Definition of procedure `puntos_pilotos_insertar`
--

DROP PROCEDURE IF EXISTS `puntos_pilotos_insertar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `puntos_pilotos_insertar`(
        IN piloto INT,
        IN carrera INT,
        IN puntos_clas INT,
        IN puntos_pue INT,
        IN puntos_ade INT,
        IN puntos_vue INT,
        IN puntos_rec INT,
        OUT codigo_pnt_pil INT)
BEGIN
   insert into
    puntos_pilotos(pnt_pil_pil_cod, pnt_pil_car_cod, pnt_pil_pnt_clas, pnt_pil_pnt_pue, pnt_pil_pnt_ade, pnt_pil_pnt_vue, pnt_pil_pnt_rec)
   values
   (piloto, carrera, puntos_clas, puntos_pue, puntos_ade, puntos_vue, puntos_rec);
   select pnt_pil_cod into codigo_pnt_pil from puntos_pilotos where pnt_pil_pil_cod = piloto and pnt_pil_car_cod = carrera;
END $$

DELIMITER ;

--
-- Definition of procedure `puntos_pilotos_modificar`
--

DROP PROCEDURE IF EXISTS `puntos_pilotos_modificar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `puntos_pilotos_modificar`(
        IN piloto INT,
        IN carrera INT,
        IN puntos_clas INT,
        IN puntos_pue INT,
        IN puntos_ade INT,
        IN puntos_vue INT,
        IN puntos_rec INT,
        IN codigo_pnt_pil INT)
BEGIN
   update 
      puntos_pilotos 
   set
      pnt_pil_pil_cod = piloto, 
      pnt_pil_car_cod = carrera, 
      pnt_pil_pnt_clas = puntos_clas, 
      pnt_pil_pnt_pue = puntos_pue, 
      pnt_pil_pnt_ade = puntos_ade, 
      pnt_pil_pnt_vue = puntos_vue, 
      pnt_pil_pnt_rec = puntos_rec
   where 
      pnt_pil_pil_cod = piloto and pnt_pil_car_cod = carrera;
END $$

DELIMITER ;

--
-- Definition of procedure `usuario_insertar`
--

DROP PROCEDURE IF EXISTS `usuario_insertar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `usuario_insertar`(
        IN nombre VARCHAR(25),
        IN ape_1 VARCHAR(30),
        IN ape_2 VARCHAR(30),
        IN email VARCHAR(120),
        IN login VARCHAR(25),
        IN pass VARCHAR(25),
        OUT codigo_usr INT)
BEGIN
   insert into
   usuarios(usr_nom, usr_ape_1,usr_ape_2,usr_email,usr_login,usr_pass)
   values
   (nombre,ape_1,ape_2,email,login,pass);
   select usr_cod into codigo_usr from usuarios where usr_login = login;
END $$

DELIMITER ;

--
-- Definition of procedure `usuario_modificar`
--

DROP PROCEDURE IF EXISTS `usuario_modificar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `usuario_modificar`(
        IN nombre VARCHAR(25),
        IN ape_1 VARCHAR(30),
        IN ape_2 VARCHAR(30),
        IN email VARCHAR(120),
        IN login VARCHAR(25),
        IN pass VARCHAR(25),
        IN codigo_usr INT )
BEGIN
   update usuarios set
	usr_nom	= nombre,
	usr_ape_1 = ape_1,
	usr_ape_2 = ape_2,
	usr_email = email,
	usr_login = login,
	usr_pass = pass
   where 
	usr_cod = codigo_usr;
END $$

DELIMITER ;

--
-- Definition of procedure `valores_pilotos_insertar`
--

DROP PROCEDURE IF EXISTS `valores_pilotos_insertar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `valores_pilotos_insertar`(
        IN piloto  INT,
        IN carrera INT,
        IN valor DOUBLE,
        IN modif DOUBLE,
        OUT codigo_val INT)
BEGIN
   insert into
   valores_pilotos(val_pil_pil_cod, val_pil_car_cod, val_pil_val, val_pil_mod)
   values
   (piloto, carrera, valor, modif);
   select val_pil_cod into codigo_val from valores_pilotos where val_pil_pil_cod = piloto and val_pil_car_cod = carrera;
END $$

DELIMITER ;

--
-- Definition of procedure `valores_pilotos_modificar`
--

DROP PROCEDURE IF EXISTS `valores_pilotos_modificar`;

DELIMITER $$

CREATE DEFINER=`jamf1`@`%` PROCEDURE `valores_pilotos_modificar`(
        IN piloto  INT,
        IN carrera INT,
        IN valor DOUBLE,
        IN modif DOUBLE,
        IN codigo_val INT)
BEGIN
   update
      valores_pilotos
   set
      val_pil_pil_cod = piloto, 
      val_pil_car_cod = carrera, 
      val_pil_val = valor, 
      val_pil_mod = modif
   where
      val_pil_pil_cod = piloto and val_pil_car_cod = carrera;
END $$

DELIMITER ;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
