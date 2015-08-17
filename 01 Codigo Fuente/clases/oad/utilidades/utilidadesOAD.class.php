<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/oad/conexionDB.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/comboItem.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceBaseDatos.class.php');
    
    //Version 7.0:
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/comboItem.class.php');
/*
 * Clase con los accesos a base de datos para las utilidades
 * Autor: Jose Angel Martinez
 * Fecha: 2011/02/07
 * Versión: 1.0
 */
 
class utilidadesOAD {
	
	function getPilotosCarrera($carrera) {
		$conexion = conexionDB::getInstance();
		$listaPilotos = array();
		
		$consultaGetPilotosCarrera='select vw_pil_cod, vw_pil_nom, vw_pil_val
									from vw_valores_pilotos_carrera
									where vw_car_cod = \'%1$s\'
                                    order by vw_pil_cod asc';
	
		$sql = sprintf($consultaGetPilotosCarrera,$carrera);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$objComboItem = new comboItem($row['vw_pil_cod'],$row['vw_pil_nom'],$row['vw_pil_val']);
			array_push($listaPilotos,$objComboItem);
		}
		
		return $listaPilotos;	
	}
	
	function getEscuderiasCarrera($carrera) {
		$conexion = conexionDB::getInstance();
		$listaEscuderias = array();
		
		$consultaGetEscuderiasCarrera='select vw_esc_cod, vw_esc_nom, vw_esc_val
									from vw_valores_escuderias_carrera
									where vw_car_cod = \'%1$s\'
                                    order by vw_esc_cod asc';

		$sql = sprintf($consultaGetEscuderiasCarrera,$carrera);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$objComboItem = new comboItem($row['vw_esc_cod'],$row['vw_esc_nom'],$row['vw_esc_val']);
			array_push($listaEscuderias,$objComboItem);
		}
		
		return $listaEscuderias;	
			
	}
	
	function getMotoresCarrera($carrera) {
		$conexion = conexionDB::getInstance();
		$listaMotores = array();
		
		$consultaGetmotoresCarrera='select vw_mot_cod, vw_mot_nom, vw_mot_val
									from vw_valores_motores_carrera
									where vw_car_cod = \'%1$s\'
                                    order by vw_mot_cod asc';

		$sql = sprintf($consultaGetmotoresCarrera,$carrera);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
				echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$objComboItem = new comboItem($row['vw_mot_cod'],$row['vw_mot_nom'],$row['vw_mot_val']);
			array_push($listaMotores,$objComboItem);
		}
		
		return $listaMotores;	
			
	}
	
	function getCarreras() {
		$conexion = conexionDB::getInstance();
		$listaCarreras = array();
		
		$consultaGetCarreras="select car_cod, car_nom from carreras where car_cod < 20";

		$sql = sprintf($consultaGetCarreras);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
				echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$objComboItem = new comboItem($row['car_cod'],$row['car_nom'],'');
			array_push($listaCarreras,$objComboItem);
		}
		
		return $listaCarreras;	
		
	}
	
	function getCampeonatos() {
		$conexion = conexionDB::getInstance();
		$listaCampeonatos = array();
		
		$consultaGetCarreras="select cam_cod, cam_nom from campeonatos";

		$sql = sprintf($consultaGetCarreras);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
				echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$objComboItem = new comboItem($row['cam_cod'],$row['cam_nom'],'');
			array_push($listaCampeonatos,$objComboItem);
		}
		
		return $listaCampeonatos;	
			
	}
    
    function getSiguienteCarrera() {
        $conexion = conexionDB::getInstance();
		$carrera = 1;
		
		/*$consultaGetCarreras="select min(car_cod) as carrera from carreras where car_fec > curdate()";

		$sql = sprintf($consultaGetCarreras);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
				echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
            $carrera = $row["carrera"];
		}*/
        
        $consultaGetCarreras="select car_cod, car_pai, car_cir, car_fec, car_nom, car_lim_cambios 
            from carreras 
            where car_cod = (select min(car_cod) as carrera from carreras where car_fec > curdate())";

		$sql = sprintf($consultaGetCarreras);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
				echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
            $carrera = new carrera();
            $carrera->carreraBD($row["car_cod"], 
                                   $row["car_nom"],
                                   $row["car_pai"],
                                   $row["car_cir"],
                                   $row["car_fec"],
                                   $row["car_lim_cambios"] );
        }
		
		return $carrera;
        
    }
    
    function getPrecioPiloto($codigo, $carrera) {
        $conexion = conexionDB::getInstance();
		$precio = 1;
		
		$consultaPrecioPilotoCarrera='select vw_pil_val from vw_valores_pilotos_carrera 
                                        where vw_pil_cod = \'%1$s\' and vw_car_cod = \'%2$s\'';

		$sql = sprintf($consultaPrecioPilotoCarrera,$codigo,$carrera);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
            $precio = $row["vw_pil_val"];
		}
		
		return $precio;
        
    }
    
    function getPrecioEscuderia($codigo, $carrera) {
        $conexion = conexionDB::getInstance();
		$precio = 1;
		
		$consultaPrecioPilotoCarrera='select vw_esc_val from vw_valores_escuderias_carrera 
                                        where vw_esc_cod = \'%1$s\' and vw_car_cod = \'%2$s\'';

		$sql = sprintf($consultaPrecioPilotoCarrera,$codigo,$carrera);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
            $precio = $row["vw_esc_val"];
		}
		
		return $precio;
        
    }
    
    function getPrecioMotor($codigo, $carrera) {
        $conexion = conexionDB::getInstance();
		$precio = 1;
		
		$consultaPrecioPilotoCarrera='select vw_mot_val from vw_valores_motores_carrera 
                                        where vw_mot_cod = \'%1$s\' and vw_car_cod = \'%2$s\'';

		$sql = sprintf($consultaPrecioPilotoCarrera,$codigo,$carrera);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
            $precio = $row["vw_mot_val"];
		}
		
		return $precio;
        
    }
    
    /*
     * Funcion para obtener las posiciones
     * Version 2.0; 2011-03-24
     */    
    function getPosicionesPilotos() {
        $conexion = conexionDB::getInstance();
        $listaPosiciones = array();
        $posicion = 1;
				
		$consultaPosicionesPiloto='select pil_cod from pilotos';

		$sql = sprintf($consultaPosicionesPiloto);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$objComboItem = new comboItem($posicion,$posicion,'');
			array_push($listaPosiciones,$objComboItem);
            $posicion = $posicion + 1;
		}
		
		return $listaPosiciones;
    }
    
    /*
     * Funcion para obtener la carrera anterior
     * Version 2.2; 2011-04-02
     */    
    function getAnteriorCarrera() {
        $conexion = conexionDB::getInstance();
		$carrera = 1;
		
		/*
        $consultaGetCarreras="select max(car_cod) as carrera from carreras where car_fec < curdate()";

		$sql = sprintf($consultaGetCarreras);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
				echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
            $carrera = $row["carrera"];
		}
		
		return $carrera;*/
        
        $consultaGetCarreras=" select car_cod, car_pai, car_cir, car_fec, car_nom, car_lim_cambios 
            from carreras 
            where car_cod = (select max(car_cod) as carrera from carreras where car_fec < curdate())";

		$sql = sprintf($consultaGetCarreras);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
				echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
            $carrera = new carrera();
            $carrera->carreraBD($row["car_cod"], 
                                   $row["car_nom"],
                                   $row["car_pai"],
                                   $row["car_cir"],
                                   $row["car_fec"],
                                   $row["car_lim_cambios"] );
        }
		
		return $carrera;        
    }
    
    /*
     * Función para obterner una carrera por su código
     * Versión 7.0: 2011
     */
    function getCarrera($codigo) {
        $conexion = conexionDB::getInstance();
		$carrera = 1;
		
        $consultaGetCarreras='select car_cod, car_pai, car_cir, car_fec, car_nom, car_lim_cambios 
            from carreras 
            where car_cod = \'%1$s\'';

		$sql = sprintf($consultaGetCarreras,$codigo);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
				echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
            $carrera = new carrera();
            $carrera->carreraBD($row["car_cod"], 
                                   $row["car_nom"],
                                   $row["car_pai"],
                                   $row["car_cir"],
                                   $row["car_fec"],
                                   $row["car_lim_cambios"] );
        }
		
		return $carrera;
    }
    
  /*
   * Función para obtener el estado del sistema
   * Versión 8.0: 2014-02-04
   */
  function getEstadoSistema() {
        $conexion = conexionDB::getInstance();
        $estadoSistemaBD = 1;        
        
        $consultaEstadoSistema = 'select pnt_new_pnt from puntos_new where pnt_new_eve = \'estado_sistema\'';
        
        $result = mysql_query($consultaEstadoSistema,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
        while ($row = mysql_fetch_array($result)) {
            $estadoSistemaBD = $row["pnt_new_pnt"];                       
        }
		
		return $estadoSistemaBD;
  }
}
?>