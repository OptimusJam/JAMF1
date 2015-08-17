<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');	
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/oad/broker/brokerOAD.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/brokerItem.class.php');
/*
 * Clase con la lógica de negocio para la parte de usuarios
 * Autor: Jose Angel Martinez
 * Fecha: 2011/02/03
 * Versión 2.0; 2011-03-25
 */
 
class brokerOAD {
    
    /*
     * Funcion para obtener la media para el broker de un piloto
     */
     function getListaBrokerPiloto($carrera) {
        $conexion = conexionDB::getInstance();
		$objListaBroker = array();
		
		$consultaGetListaBroker='select vw_pil_cod, vw_pil_nom, vw_car_cod, 
                                    vw_lim_sup, vw_med, vw_lim_inf, vw_pil_bonus 
									from vw_pilotos_media
									where vw_car_cod = \'%1$s\'
                                    order by vw_pil_cod asc';
	
		$sql = sprintf($consultaGetListaBroker,$carrera);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$objBrokerItem = new brokerItem($row['vw_pil_cod'],
                                $row['vw_pil_nom'],
                                $row['vw_med'],
                                $row['vw_lim_sup'],
                                $row['vw_lim_inf'],
                                $row['vw_pil_bonus']);
			array_push($objListaBroker,$objBrokerItem);
		}
		
		return $objListaBroker;	
	}
    
    /*
     * Funcion para obtener la media para el broker de una escuderia
     */
     function getListaBrokerEscuderia($carrera) {
        $conexion = conexionDB::getInstance();
		$objListaBroker = array();
		
		$consultaGetListaBroker='select vw_esc_cod, vw_esc_nom, vw_car_cod, 
                                    vw_lim_sup, vw_med, vw_lim_inf, vw_esc_bonus 
									from vw_escuderias_media
									where vw_car_cod = \'%1$s\'
                                    order by vw_esc_cod asc';
	
		$sql = sprintf($consultaGetListaBroker,$carrera);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$objBrokerItem = new brokerItem($row['vw_esc_cod'],
                                $row['vw_esc_nom'],
                                $row['vw_med'],
                                $row['vw_lim_sup'],
                                $row['vw_lim_inf'],
                                $row['vw_esc_bonus']);
			array_push($objListaBroker,$objBrokerItem);
		}
		
		return $objListaBroker;	
    }
    
    /*
     * Funcion para obtener la media para el broker de un motor
     */
     function getListaBrokerMotor($carrera) {
        $conexion = conexionDB::getInstance();
		$objListaBroker = array();
		
		$consultaGetListaBroker='select vw_mot_cod, vw_mot_nom, vw_car_cod, 
                                    vw_lim_sup, vw_med, vw_lim_inf, vw_mot_bonus 
									from vw_motores_media
									where vw_car_cod = \'%1$s\'
                                    order by vw_mot_cod asc';
	
		$sql = sprintf($consultaGetListaBroker,$carrera);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$objBrokerItem = new brokerItem($row['vw_mot_cod'],
                                $row['vw_mot_nom'],
                                $row['vw_med'],
                                $row['vw_lim_sup'],
                                $row['vw_lim_inf'],
                                $row['vw_mot_bonus']);
			array_push($objListaBroker,$objBrokerItem);
		}
		
		return $objListaBroker;	
    }

}//Class

?>