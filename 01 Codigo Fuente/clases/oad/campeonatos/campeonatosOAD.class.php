<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/oad/conexionDB.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/campeonato.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/clasificacionItem.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceBaseDatos.class.php');
/*
 * Clase con los accesos a base de datos para la parte de campeonatos
 * Autor: Jose Angel Martinez
 * Fecha: 2011/02/07
 * Versión: 1.0
 */
 
class campeonatosOAD {
	
	/*
	 * Método para recuperar los campeonatos de un usuario
	 */
	public function getCampeonatosUsuario($codigo) {		
		$conexion = conexionDB::getInstance();
		$listaCampeonatos = array();
		
		$consultaGetCampeonatosUsuario = 'select cam_cod, cam_nom, cam_des, cam_usr_cod, cam_pass
											from campeonatos, equipos_datos
											where (cam_cod = equ_cam_cod and equ_usr_cod = \'%1$s\')
    										or '.CampeonatoUsuarioBD.' = \'%1$s\'
											group by cam_cod, cam_nom, cam_des, cam_usr_cod, cam_pass';
		$sql = sprintf($consultaGetCampeonatosUsuario,$codigo);
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		while ($row = mysql_fetch_array($result)) {
			$campeonato = new campeonato();
			array_push($listaCampeonatos,$campeonato->campeonatoBD($row[CampeonatoCodigoBD],
															$row[CampeonatoNombreBD],
															$row[CampeonatoDescripcionBD],
															$row[CampeonatoPassBD],
															$row[CampeonatoUsuarioBD]));
		}
		
		//$conexion->cerrar();
		
		return $listaCampeonatos;		
	}
	
	/*
	 * Método para recuperar los campeonatos de un usuario
	 */
	public function getCampeonatoUsuario($codigo,$usuario) {		
		$conexion = conexionDB::getInstance();
		$listaCampeonatos = array();
		
		$consultaGetCampeonatoUsuario = 'select cam_cod, cam_nom, cam_des, cam_usr_cod, cam_pass'. 
											' from campeonatos'.
											' where '.CampeonatoCodigo.' = \'%1$s\' and '.CampeonatoUsuarioBD.' = \'%2$s\'';
		$sql = sprintf($consultaGetCampeonatoUsuario,$codigo,$usuario);
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		while ($row = mysql_fetch_array($result)) {
			$campeonato = new campeonato();
			$campeonato->campeonatoBD($row[CampeonatoCodigoBD],
										$row[CampeonatoNombreBD],
										$row[CampeonatoDescripcionBD],
										$row[CampeonatoPassBD],
										$row[CampeonatoUsuarioBD]);
		}
		return $campeonato;		
	}
	
	/*
	 * Funcion para comprobar si existe un usuario con el login indicado
	 */
	public function verificarCampeonatoNombre($nombre) {
		$objActMen = new actionMensajes();
		$hayCampeonato = false;
		
		$conexion = conexionDB::getInstance();
		
		$consultaVerficarCampeonatoNombre = 'select cam_cod from campeonatos where '.CampeonatoNombreBD.' = \'%1$s\'';
		$sql = sprintf($consultaVerficarCampeonatoNombre,$nombre);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError:'.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$hayCampeonato = true;
		}
		
		if ($hayCampeonato) {
			$objActMen->setHayErrores(true);
		} else {
			$objActMen->setHayErrores(false);	
		}
		
		//$conexion->cerrar();
		
		return $objActMen;
		
	}
	
	/*
	 * Método para almacenar un campeonato
	 */
	public function almacenarCampeonato(campeonato $objCampeonato) {
		$conexion = conexionDB::getInstance();
		
		//$consultaAlmacenaCampeonato = 'CALL campeonato_insertar(\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\',@codigo);';
        $consultaAlmacenaCampeonato = 'insert into
                                        campeonatos(cam_nom, cam_des, cam_usr_cod, cam_pass)
                                        values
                                        (\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\');';
		$sql = sprintf($consultaAlmacenaCampeonato,$objCampeonato->getCamNombre(),
										$objCampeonato->getCamDes(),
										$objCampeonato->getCamUsrCod(),
										$objCampeonato->getCamPass());
										//$codigo);
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		if ($result != 1) {
			$objCampeonatoRet = $objCampeonato;
		} else {
			$objCampeonatoRet = $objCampeonato;
			//Como ha ido todo bien, recuperamos el usr_cod
			$sql_codigo = 'select '.CampeonatoCodigoBD.' from campeonatos where '.CampeonatoNombreBD.' = \''. $objCampeonato->getCamNombre().'\'';
			$result_codigo = mysql_query($sql_codigo,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
			while ($row = mysql_fetch_array($result_codigo)) {
				$objCampeonatoRet->setCamCod($row[CampeonatoCodigoBD]);
				echo 'Codigo: '.$row[CampeonatoCodigo];
			}
		}
		
		return $objCampeonatoRet;		
	}	 
	
	/*
	 * Método para actualizar el campeonato
	 */
	public function actualizarCampeonato(campeonato $objCampeonato) {
		$conexion = conexionDB::getInstance();
		
		//$consultaActualizaCampeonato = 'CALL campeonato_modificar(\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\',\'%5$s\');';
        $consultaActualizaCampeonato = 'update campeonatos set
                                            cam_nom = \'%1$s\',
                                            cam_des = \'%2$s\',
                                            cam_usr_cod = \'%3$s\',
                                            cam_pass = \'%4$s\'
                                          where
                                            cam_cod = \'%5$s\';';
		$sql = sprintf($consultaActualizaCampeonato,$objCampeonato->getCamNombre(),
										$objCampeonato->getCamDes(),
										$objCampeonato->getCamUsrCod(),
										$objCampeonato->getCamPass(),
										$objCampeonato->getCamCod());
										//$codigo);
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		if ($result != 1) {
			$objCampeonatoRet = NULL;
		} 
				
		return $objCampeonatoRet;	
	}
    
    	/*
	 * Método para recuperar los campeonatos de un usuario
	 */
	public function loginCampeonato($codigo,$pass) {		
		$conexion = conexionDB::getInstance();
		$campeonato = NULL;
		
		$consultaGetCampeonatoCodigoPass = 'select cam_cod, cam_nom, cam_des, cam_usr_cod, cam_pass'. 
											' from campeonatos'.
											' where '.CampeonatoCodigo.' = \'%1$s\' and '.CampeonatoPass.' = \'%2$s\'';
		$sql = sprintf($consultaGetCampeonatoCodigoPass,$codigo,$pass);
        $result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
        while ($row = mysql_fetch_array($result)) {
			$campeonato = new campeonato();
			$campeonato->campeonatoBD($row[CampeonatoCodigoBD],
										$row[CampeonatoNombreBD],
										$row[CampeonatoDescripcionBD],
										$row[CampeonatoPassBD],
										$row[CampeonatoUsuarioBD]);
		}
		return $campeonato;      
	}
    
    /*
     * Método que devuelve la clasificacion de un campeonato
     * Version 2.1; 2011-03-27  
     */
    public function getCampeonatoClasificacion($campeonato, $carreraCodigo){
        $conexion = conexionDB::getInstance();
        $listaClasificacion = array();
        $posicion = 1;
        
        /*$consultaClasificacionCampeonato = 'select concat(usr_nom,\' \',usr_ape_1,\' \',usr_ape_2) as nombre,  
                                                vw_equ_cod, vw_equ_nombre, vw_car_cod, vw_cam_cod,
                                                vw_piloto_1_nombre, vw_piloto_1_puntos,
                                                vw_piloto_2_nombre, vw_piloto_2_puntos,
                                                vw_piloto_3_nombre, vw_piloto_3_puntos,
                                                vw_piloto_4_nombre, vw_piloto_4_puntos,
                                                vw_escuderia_1_nombre, vw_escuderia_1_puntos,
                                                vw_escuderia_2_nombre, vw_escuderia_2_puntos,
                                                vw_motor_1_nombre, vw_motor_1_puntos,
                                            	vw_puntos_podio,
                                            	vw_puntos_pos_alonso,
                                            	vw_puntos_pos_alguersuari,
                                            	vw_puntos_total'. 
											' from vw_puntos_equipo_componentes, usuarios'.
											' where vw_usr_cod = usr_cod'.
                                            ' and vw_cam_cod = \'%1$s\''.
                                            ' and vw_car_cod = \'%2$s\' '.
                                            ' order by vw_puntos_total desc';
        */
        $consultaClasificacionCampeonato = 'select vw_usu_nom, vw_equ_cod, vw_equ_nom, vw_car_cod, vw_cam_cod,
                                                vw_piloto_1_nombre, vw_piloto_1_puntos,
                                                vw_piloto_2_nombre, vw_piloto_2_puntos,
                                                vw_piloto_3_nombre, vw_piloto_3_puntos,
                                                vw_piloto_4_nombre, vw_piloto_4_puntos,
                                                vw_escuderia_1_nombre, vw_escuderia_1_puntos,
                                                vw_escuderia_2_nombre, vw_escuderia_2_puntos,
                                                vw_motor_1_nombre, vw_motor_1_puntos,
                                            	vw_puntos_podio,
                                            	vw_puntos_pos_alonso, '.
                                            //	vw_puntos_pos_alguersuari,
                                            '	vw_puntos_total'. 
											' from vw_campeonatos_clasificacion'.
											' where vw_cam_cod = \'%1$s\''.
                                            ' and vw_car_cod = \'%2$s\' '.
                                            ' order by vw_puntos_total desc';
        
        $sql = sprintf($consultaClasificacionCampeonato,$campeonato,$carreraCodigo);
        $result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
        while ($row = mysql_fetch_array($result)) {
            $objClasificacionItem = new clasificacionItem();
			$objClasificacionItem = $objClasificacionItem->clasificacionItemCar (
                                        $row['vw_usu_nom'],
                                        $posicion,
                                        $row['vw_equ_cod'],
                                        $row['vw_equ_nom'], 
                                        $row['vw_car_cod'], 
                                        $row['vw_cam_cod'],
                                        $row['vw_piloto_1_nombre'], 
                                        $row['vw_piloto_1_puntos'],
                                        $row['vw_piloto_2_nombre'], 
                                        $row['vw_piloto_2_puntos'],
                                        $row['vw_piloto_3_nombre'], 
                                        $row['vw_piloto_3_puntos'],
                                        $row['vw_piloto_4_nombre'], 
                                        $row['vw_piloto_4_puntos'],
                                        $row['vw_escuderia_1_nombre'], 
                                        $row['vw_escuderia_1_puntos'],
                                        $row['vw_escuderia_2_nombre'], 
                                        $row['vw_escuderia_2_puntos'],
                                        $row['vw_motor_1_nombre'], 
                                        $row['vw_motor_1_puntos'],
                                        $row['vw_puntos_podio'],
                                        $row['vw_puntos_pos_alonso'],
                                        //$row['vw_puntos_pos_alguersuari'],
                                        $row['vw_puntos_total']);
			array_push($listaClasificacion,$objClasificacionItem);
            $posicion = $posicion + 1;
		}
                
        return $listaClasificacion;
    }
    
    /*
     * Método que devuelve la clasificacion de un campeonato
     * Version 2.1; 2011-03-27  
     */
    public function getCampeonatoClasificacionGeneral($campeonato){
        $conexion = conexionDB::getInstance();
        $listaClasificacion = array();
        $posicion = 1;
        
        $consultaClasificacionCampeonato = /*'select concat(usr_nom,\' \',usr_ape_1,\' \',usr_ape_2) as nombre,  
                                                vw_equ_cod, vw_equ_nombre, vw_car_cod, vw_cam_cod,
                                                vw_piloto_1_nombre, vw_piloto_1_puntos,
                                                vw_piloto_2_nombre, vw_piloto_2_puntos,
                                                vw_piloto_3_nombre, vw_piloto_3_puntos,
                                                vw_piloto_4_nombre, vw_piloto_4_puntos,
                                                vw_escuderia_1_nombre, vw_escuderia_1_puntos,
                                                vw_escuderia_2_nombre, vw_escuderia_2_puntos,
                                                vw_motor_1_nombre, vw_motor_1_puntos,
                                            	vw_puntos_podio,
                                            	vw_puntos_pos_alonso,
                                            	vw_puntos_pos_alguersuari,
                                            	vw_puntos_total'. 
											' from vw_puntos_equipo_componentes, usuarios'.
											' where vw_usr_cod = usr_cod'.
                                            ' and vw_cam_cod = \'%1$s\''.
                                            ' order by vw_puntos_total desc';*/
                                            
                                            
                                            //quey correcta:
                                            /*'select concat(usr_nom,\' \',usr_ape_1,\' \',usr_ape_2) as nombre,  
                                                vw_equ_cod, vw_equ_nombre, vw_cam_cod,
                                                sum(vw_puntos_total) as vw_puntos_total
											 from vw_puntos_equipo_componentes, usuarios
											 where vw_usr_cod = usr_cod
                                                and vw_cam_cod = \'%1$s\'                                                
                                             group by vw_equ_cod, vw_equ_nombre, vw_cam_cod
                                             order by sum(vw_puntos_total) desc';*/
                                            
                                            //Query correcta
                                            'select vw_usu_nom,vw_equ_cod, vw_equ_nom, vw_cam_cod,
                                                sum(vw_puntos_total) as vw_puntos_total
											 from vw_campeonatos_clasificacion'.
											' where vw_cam_cod = \'%1$s\'                                                                                              
                                             group by vw_equ_cod, vw_cam_cod
                                             order by sum(vw_puntos_total) desc';

        $sql = sprintf($consultaClasificacionCampeonato,$campeonato);
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
        while ($row = mysql_fetch_array($result)) {
            $objClasificacionItem = new clasificacionItem();
			$objClasificacionItem = $objClasificacionItem->clasificacionItemGen(
                                        $row['vw_usu_nom'],
                                        $posicion,
                                        $row['vw_equ_cod'],
                                        $row['vw_equ_nom'],                                         
                                        $row['vw_cam_cod'],                                        
                                        $row['vw_puntos_total']);
			array_push($listaClasificacion,$objClasificacionItem);
            $posicion = $posicion + 1;
		}
                
        return $listaClasificacion;
    }
    
    
    /*
     * Version 2.1; 2011-03-27: Fin
     */
     
    /*
     * Método que devuelve la clasificacion de un campeonato
     * Version 2.1; 2011-03-27  
     */
    public function getCampeonatoClasificacionBroker($campeonato, $carreraCodigo){
        $conexion = conexionDB::getInstance();
        $listaClasificacion = array();
        $posicion = 1;
        
        $consultaClasificacionCampeonato = 'select vw_usu_nom, vw_equ_cod, vw_equ_nom, vw_car_cod, vw_cam_cod,
                                                vw_piloto_1_nombre, vw_piloto_1_valor,
                                                vw_piloto_2_nombre, vw_piloto_2_valor,
                                                vw_piloto_3_nombre, vw_piloto_3_valor,
                                                vw_piloto_4_nombre, vw_piloto_4_valor,
                                                vw_escuderia_1_nombre, vw_escuderia_1_valor,
                                                vw_escuderia_2_nombre, vw_escuderia_2_valor,
                                                vw_motor_1_nombre, vw_motor_1_valor,
                                            	vw_valor_total'. 
											' from vw_campeonatos_clasificacion_broker'.
											' where vw_cam_cod = \'%1$s\''.
                                            ' and vw_car_cod = \'%2$s\' '.
                                            ' order by vw_valor_total desc';
            
        $sql = sprintf($consultaClasificacionCampeonato,$campeonato,$carreraCodigo);
    	$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
        while ($row = mysql_fetch_array($result)) {
            $objClasificacionItem = new clasificacionItem();
			$objClasificacionItem = $objClasificacionItem->clasificacionItemCar (
                                        $row['vw_usu_nom'],
                                        $posicion,
                                        $row['vw_equ_cod'],
                                        $row['vw_equ_nom'], 
                                        $row['vw_car_cod'], 
                                        $row['vw_cam_cod'],
                                        $row['vw_piloto_1_nombre'], 
                                        $row['vw_piloto_1_valor'],
                                        $row['vw_piloto_2_nombre'], 
                                        $row['vw_piloto_2_valor'],
                                        $row['vw_piloto_3_nombre'], 
                                        $row['vw_piloto_3_valor'],
                                        $row['vw_piloto_4_nombre'], 
                                        $row['vw_piloto_4_valor'],
                                        $row['vw_escuderia_1_nombre'], 
                                        $row['vw_escuderia_1_valor'],
                                        $row['vw_escuderia_2_nombre'], 
                                        $row['vw_escuderia_2_valor'],
                                        $row['vw_motor_1_nombre'], 
                                        $row['vw_motor_1_valor'],
                                        0,
                                        0,                                        
                                        $row['vw_valor_total']);
			array_push($listaClasificacion,$objClasificacionItem);
            $posicion = $posicion + 1;
		}
                
        return $listaClasificacion;
    }
    
        /*
     * Método que devuelve la clasificacion de un campeonato
     * Version 2.1; 2011-03-27  
     */
    public function getCampeonatoClasificacionGeneralBroker($campeonato){
        $conexion = conexionDB::getInstance();
        $listaClasificacion = array();
        $posicion = 1;
        
        $consultaClasificacionCampeonato =  //Query correcta
                                            'select vw_usu_nom,vw_equ_cod, vw_equ_nom, vw_cam_cod,
                                                sum(vw_valor_total) as vw_valor_total
											 from vw_campeonatos_clasificacion_broker'.
											' where vw_cam_cod = \'%1$s\'                                                                                              
                                             group by vw_equ_cod, vw_cam_cod
                                             order by sum(vw_valor_total) desc';

        $sql = sprintf($consultaClasificacionCampeonato,$campeonato);		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());		        
        while ($row = mysql_fetch_array($result)) {
            $objClasificacionItem = new clasificacionItem();
			$objClasificacionItem = $objClasificacionItem->clasificacionItemGen(
                $row['vw_usu_nom'],
                $posicion,
                $row['vw_equ_cod'],
                $row['vw_equ_nom'],                                         
                $row['vw_cam_cod'],                                        
                $row['vw_valor_total']);
			array_push($listaClasificacion,$objClasificacionItem);
            $posicion = $posicion + 1;
		}
                
        return $listaClasificacion;        
    }
    
    /*
     * Métod que devuelve la clasificacion de campeones de cada carrera para un campeonato
     * Fecha: 2014-02-21
     */
     public function getCampeonatoClasificacionCampeones($campeonato) {
        $conexion = conexionDB::getInstance();
        $listaClasificacion = array();
        
        $consulta = 'select vw_usu_nom, vw_equ_cod, vw_equ_nom, vw_cam_cod, vw_car_cod , max(vw_puntos_total) as vw_puntos_total
                        from vw_campeonatos_clasificacion
                        where vw_cam_cod = \'%1$s\' 
                        group by vw_cam_cod, vw_car_cod
                        order by vw_car_cod asc';
        $sql = sprintf($consulta,$campeonato);
        $result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
        while ($row = mysql_fetch_array($result)) {
            $objClasificacionItem = new clasificacionItem();
            $objClasificacionItem = $objClasificacionItem->clasificacionItemCampeones(
                $row['vw_usu_nom'],
                $row['vw_equ_cod'],
                $row['vw_equ_nom'],                                         
                $row['vw_cam_cod'],                                        
                $row['vw_puntos_total'],
                $row['vw_car_cod']);                
			array_push($listaClasificacion,$objClasificacionItem);
		}
        
        return $listaClasificacion;        
     }
}