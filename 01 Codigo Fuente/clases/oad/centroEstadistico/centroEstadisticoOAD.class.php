<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');	
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/carrera.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/oad/broker/brokerOAD.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/centroEstadisticoItem.class.php');
/*
 * Clase con la lógica de negocio para la parte de usuarios
 * Autor: Jose Angel Martinez
 * Fecha: 2011/02/03
 * Versión 2.0; 2011-03-25
 */
 
class centroEstadisticoOAD {
    
    /*
     * Funcion para obtener los datos de los pilotos para una carrera
     */
     function getDatosPilotosCarrera($carrera) {
        $conexion = conexionDB::getInstance();
		$objListaPilotos = array();
		
		$consultaGetDatosPilotosCarrera='select vw_pil_cod, vw_pil_nom, vw_pnt_clas, vw_pnt_pue, vw_pnt_ade, vw_pnt_vue, vw_pnt_rec, vw_pil_pnt, vw_pil_val
                                        from vw_valores_pilotos_carrera 
                                        where vw_car_cod = \'%1$s\'
                                        order by vw_pil_cod asc';
	
		$sql = sprintf($consultaGetDatosPilotosCarrera,$carrera->getCarCod());
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$objCentroEstadisticoItem = new centroEstadisticoItem();
            $objCentroEstadisticoItem = $objCentroEstadisticoItem->centroEstadisticoItemPilCar(
                                $row['vw_pil_cod'],
                                $row['vw_pil_nom'],
                                $row['vw_pil_val'],
                                $row['vw_pil_pnt'],
                                $row['vw_pnt_clas'],
                                $row['vw_pnt_pue'],
                                $row['vw_pnt_ade'],
                                $row['vw_pnt_vue'],
                                $row['vw_pnt_rec']
                                );
			array_push($objListaPilotos,$objCentroEstadisticoItem);
		}
		
		return $objListaPilotos;	
	}
    
        /*
     * Funcion para obtener los datos de las escuderias para una carrera
     */
     function getDatosEscuderiasCarrera($carrera) {
        $conexion = conexionDB::getInstance();
		$objListaEscuderias = array();
		
		$consultaGetDatosEscuderiasCarrera='select vw_esc_cod, vw_esc_nom, vw_esc_pnt, vw_esc_val 
                                        from vw_valores_escuderias_carrera
                                        where vw_car_cod = \'%1$s\'
                                        order by vw_esc_cod asc';
	
		$sql = sprintf($consultaGetDatosEscuderiasCarrera,$carrera->getCarCod());
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$objCentroEstadisticoItem = new centroEstadisticoItem();
			$objCentroEstadisticoItem = $objCentroEstadisticoItem->centroEstadisticoItemCar(
                                $row['vw_esc_cod'],
                                $row['vw_esc_nom'],
                                $row['vw_esc_val'],
                                $row['vw_esc_pnt']
                                );
			array_push($objListaEscuderias,$objCentroEstadisticoItem);
		}
		
		return $objListaEscuderias;	
	}  
    
        /*
     * Funcion para obtener los datos de los motores para una carrera
     */
     function getDatosMotoresCarrera($carrera) {
        $conexion = conexionDB::getInstance();
		$objListaMotores = array();
		
		$consultaGetDatosMotoresCarrera='select vw_mot_cod, vw_mot_nom, vw_mot_pnt, vw_mot_val 
                                        from vw_valores_motores_carrera
                                        where vw_car_cod = \'%1$s\'
                                        order by vw_mot_cod asc';
	
		$sql = sprintf($consultaGetDatosMotoresCarrera,$carrera->getCarCod());
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$objCentroEstadisticoItem = new centroEstadisticoItem();
            $objCentroEstadisticoItem = $objCentroEstadisticoItem->centroEstadisticoItemCar(
                                $row['vw_mot_cod'],
                                $row['vw_mot_nom'],
                                $row['vw_mot_val'],
                                $row['vw_mot_pnt']
                                );
			array_push($objListaMotores,$objCentroEstadisticoItem);
		}
		
		return $objListaMotores;	
	}     
}
?>