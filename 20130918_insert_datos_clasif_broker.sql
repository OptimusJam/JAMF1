/*
 * MegaInsert infernal del demonio para ver si apaño lo de las clasificaciones.
 */
 
--Crear la vista de los equipos
CREATE VIEW `vw_equipos` AS select `eqd`.`equ_cod` AS `vw_equ_cod`,`eqd`.`equ_nom` AS `vw_equ_nombre`,`eqd`.`equ_lem` AS `vw_equ_lema`,`eqc`.`equ_din` AS `vw_equ_dinero`,`eqd`.`equ_usr_cod` AS `vw_usr_cod`,`eqd`.`equ_cam_cod` AS `vw_cam_cod`,`eqc`.`equ_car_cod` AS `vw_car_cod`,`eqc`.`equ_pil_1_cod` AS `vw_pil_1_cod`,`eqc`.`equ_pil_2_cod` AS `vw_pil_2_cod`,`eqc`.`equ_pil_3_cod` AS `vw_pil_3_cod`,`eqc`.`equ_pil_4_cod` AS `vw_pil_4_cod`,`eqc`.`equ_esc_1_cod` AS `vw_esc_1_cod`,`eqc`.`equ_esc_2_cod` AS `vw_esc_2_cod`,`eqc`.`equ_mot_1_cod` AS `vw_mot_1_cod` from (`equipos_datos` `eqd` join `equipos_componentes` `eqc`) where (`eqd`.`equ_cod` = `eqc`.`equ_equ_cod`);
 
insert into campeonatos_clasificacion_broker
	(cam_cla_bro_usu_nom, cam_cla_bro_equ_cod, cam_cla_bro_equ_nom, cam_cla_bro_car_cod, cam_cla_bro_cam_cod,
	 cam_cla_bro_pil_1_nom, cam_cla_bro_pil_1_val,
	 cam_cla_bro_pil_2_nom, cam_cla_bro_pil_2_val,
	 cam_cla_bro_pil_3_nom, cam_cla_bro_pil_3_val,
	 cam_cla_bro_pil_4_nom, cam_cla_bro_pil_4_val,
	 cam_cla_bro_esc_1_nom, cam_cla_bro_esc_1_val,
	 cam_cla_bro_esc_2_nom, cam_cla_bro_esc_2_val,
	 cam_cla_bro_mot_1_nom, cam_cla_bro_mot_1_val)
select concat(usr_nom,' ',usr_ape_1,' ',usr_ape_2) as nombre,  
        vw_equ_cod, vw_equ_nombre, vw_car_cod, vw_cam_cod,
		p1.pil_nom,0,
		p2.pil_nom,0,
		p3.pil_nom,0,
		p4.pil_nom,0,
		e1.esc_nom,0,
		e2.esc_nom,0,
		m1.mot_nom,0
	from vw_equipos eq, usuarios usr,
		pilotos p1, pilotos p2, pilotos p3, pilotos p4,
		escuderias e1, escuderias e2,
		motores m1
	where eq.vw_usr_cod = usr.usr_cod
		and p1.pil_cod = eq.vw_pil_1_cod and p2.pil_cod = eq.vw_pil_2_cod and p3.pil_cod = eq.vw_pil_3_cod and p4.pil_cod = eq.vw_pil_4_cod 
		and e1.esc_cod = eq.vw_esc_1_cod and e2.esc_cod = eq.vw_esc_2_cod 
		and m1.mot_cod = eq.vw_mot_1_cod
		and vw_car_cod = 18

/*
 * Actualización de los valores de los pilotos
 */ 
update campeonatos_clasificacion_broker set
	cam_cla_bro_pil_1_val = (select vw_pil_val from vw_pilotos_valor where cam_cla_bro_pil_1_nom = vw_pil_nom and vw_car_cod = 18),
	cam_cla_bro_pil_2_val = (select vw_pil_val from vw_pilotos_valor where cam_cla_bro_pil_2_nom = vw_pil_nom and vw_car_cod = 18),
	cam_cla_bro_pil_3_val = (select vw_pil_val from vw_pilotos_valor where cam_cla_bro_pil_3_nom = vw_pil_nom and vw_car_cod = 18),
	cam_cla_bro_pil_4_val = (select vw_pil_val from vw_pilotos_valor where cam_cla_bro_pil_4_nom = vw_pil_nom and vw_car_cod = 18),
	cam_cla_bro_esc_1_val = (select vw_esc_val from vw_escuderias_valores where cam_cla_bro_esc_1_nom = vw_esc_nom and vw_car_cod = 18),
	cam_cla_bro_esc_2_val = (select vw_esc_val from vw_escuderias_valores where cam_cla_bro_esc_2_nom = vw_esc_nom and vw_car_cod = 18),
	cam_cla_bro_mot_1_val = (select vw_mot_val from vw_motores_valores where cam_cla_bro_mot_1_nom = vw_mot_nom and vw_car_cod = 18)
where cam_cla_bro_car_cod = 18

/*
 * Clasificacion por puntos
 */
insert into campeonatos_clasificacion
	(cam_cla_usu_nom, cam_cla_equ_cod, cam_cla_equ_nom, cam_cla_car_cod, cam_cla_cam_cod,
	 cam_cla_pil_1_nom, cam_cla_pil_1_pnt,
	 cam_cla_pil_2_nom, cam_cla_pil_2_pnt,
	 cam_cla_pil_3_nom, cam_cla_pil_3_pnt,
	 cam_cla_pil_4_nom, cam_cla_pil_4_pnt,
	 cam_cla_esc_1_nom, cam_cla_esc_1_pnt,
	 cam_cla_esc_2_nom, cam_cla_esc_2_pnt,
	 cam_cla_mot_1_nom, cam_cla_mot_1_pnt,
	 cam_cla_pnt_pod, cam_cla_pnt_alo)
select concat(usr_nom,' ',usr_ape_1,' ',usr_ape_2) as nombre,  
        vw_equ_cod, vw_equ_nombre, vw_car_cod, vw_cam_cod,
        p1.pil_nom, 0,
        p2.pil_nom, 0,
        p3.pil_nom, 0,
        p4.pil_nom, 0,
        e1.esc_nom, 0,
        e2.esc_nom, 0,
        m1.mot_nom, 0,
        0,
        0
	from vw_equipos eq, usuarios usr,
		pilotos p1, pilotos p2, pilotos p3, pilotos p4,
		escuderias e1, escuderias e2,
		motores m1
	where eq.vw_usr_cod = usr_cod
		and p1.pil_cod = eq.vw_pil_1_cod and p2.pil_cod = eq.vw_pil_2_cod and p3.pil_cod = eq.vw_pil_3_cod and p4.pil_cod = eq.vw_pil_4_cod 
		and e1.esc_cod = eq.vw_esc_1_cod and e2.esc_cod = eq.vw_esc_2_cod 
		and m1.mot_cod = eq.vw_mot_1_cod
		and vw_car_cod = 18
/*
 * Actualización de los puntos de los pilotos
 */		
update campeonatos_clasificacion set
	cam_cla_pil_1_pnt = (select vw_pil_pnt from vw_pilotos_puntos where cam_cla_pil_1_nom = vw_pil_nom and vw_car_cod = 18),
	cam_cla_pil_2_pnt = (select vw_pil_pnt from vw_pilotos_puntos where cam_cla_pil_2_nom = vw_pil_nom and vw_car_cod = 18),
	cam_cla_pil_3_pnt = (select vw_pil_pnt from vw_pilotos_puntos where cam_cla_pil_3_nom = vw_pil_nom and vw_car_cod = 18),
	cam_cla_pil_4_pnt = (select vw_pil_pnt from vw_pilotos_puntos where cam_cla_pil_4_nom = vw_pil_nom and vw_car_cod = 18),
	cam_cla_esc_1_pnt = (select vw_esc_pnt from vw_escuderias_puntos where cam_cla_esc_1_nom = vw_esc_nom and vw_car_cod = 18),
	cam_cla_esc_2_pnt = (select vw_esc_pnt from vw_escuderias_puntos where cam_cla_esc_2_nom = vw_esc_nom and vw_car_cod = 18),
	cam_cla_mot_1_pnt = (select vw_mot_pnt from vw_motores_puntos where cam_cla_mot_1_nom = vw_mot_nom and vw_car_cod = 18)
where cam_cla_car_cod = 18

/*
 * Actualizacion de los puntos de las apuestas 
 */
update campeonatos_clasificacion set
	cam_cla_pnt_pod = (select ifnull(vw_puntos_podio,0) from vw_puntos_apuestas where vw_equ_cod = cam_cla_equ_cod and vw_Car_Cod = 18),
	cam_cla_pnt_alo = (select ifnull(vw_puntos_alonso,0) from vw_puntos_apuestas where vw_equ_cod = cam_cla_equ_cod and vw_Car_Cod = 18)
where cam_cla_car_cod = 18

/*
 * Eliminar vista de equipos
 */
DROP VIEW `vw_equipos`