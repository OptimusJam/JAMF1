<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/campeonato.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/carrera.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceGenerico.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/oad/utilidades/utilidadesOAD.class.php');
	
    $estado_session = session_status();
    if($estado_session == PHP_SESSION_NONE) {
        session_start();
    }
/*
 * Fichero con la lógica de negocio para las utilidades
 * Autor: Jose Angel Martinez
 * Fecha: 2011/01/13
 * Versión: 1.0
 */
 
 class utilidadesLN {
 
	function getPilotosCarrera($carrera) {
		$listaPilotos = array();
		$objUtilidadesOAD = new utilidadesOAD();
		
		$listaPilotos = $objUtilidadesOAD->getPilotosCarrera($carrera);
		
		return $listaPilotos;		
		}

	function getEscuderiasCarrera($carrera) {
		$listaEscuderias = array();
		$objUtilidadesOAD = new utilidadesOAD();
		
		$listaEscuderias = $objUtilidadesOAD->getEscuderiasCarrera($carrera);
		
		return $listaEscuderias;		
		}
		
	function getMotoresCarrera($carrera) {
		$listaMotores = array();
		$objUtilidadesOAD = new utilidadesOAD();
		
		$listaMotores = $objUtilidadesOAD->getMotoresCarrera($carrera);
		
		return $listaMotores;		
		}
		
	function getCarreras() {
		$listaCarreras = array();
		$objUtilidadesOAD = new utilidadesOAD();
		
		$listaCarreras = $objUtilidadesOAD->getCarreras();
		
		return $listaCarreras;		
		}
		
	function getCampeonatos() {
		$listaCampeonatos = array();
		$objUtilidadesOAD = new utilidadesOAD();
		
		$listaCampeonatos = $objUtilidadesOAD->getCampeonatos();
		
		return $listaCampeonatos;	
		}
        
  function getSiguienteCarrera() {
        //$carrera = 1;
        $objUtilidadesOAD = new utilidadesOAD();
		
		$carrera = $objUtilidadesOAD->getSiguienteCarrera();
		
		return $carrera;	
    
        }
        
  function getPrecioEntidad($entidad, $codigoItem, $carrera){
        $precio = 0;
        $objUtilidadesOAD = new utilidadesOAD();
        
        if ($entidad == EntidadPiloto) {
            $precio = $objUtilidadesOAD->getPrecioPiloto($codigoItem, $carrera); 
        } else if ($entidad == EntidadEscuderia) {
            $precio = $objUtilidadesOAD->getPrecioEscuderia($codigoItem, $carrera);            
        } else if ($entidad == EntidadMotor) {
            $precio = $objUtilidadesOAD->getPrecioMotor($codigoItem, $carrera);
        }
    
        return $precio;
    
  }
  
  /*
   * Funcion para obtener las posiciones de los pilotos
   * Version 2.0; 2011-03-24
   */
  function getPosicionesPilotos() {
		$listaPosiciones = array();
		$objUtilidadesOAD = new utilidadesOAD();
		
		$listaPosiciones = $objUtilidadesOAD->getPosicionesPilotos();
		
		return $listaPosiciones;	
  }
  
  /*
   * Funcion para obtener la ultima carrera disputada
   * Version 2.2; 2011-04-02
   */
  function getAnteriorCarrera() {
        //$carrera = 1;
        $objUtilidadesOAD = new utilidadesOAD();
		
		$carrera = $objUtilidadesOAD->getAnteriorCarrera();
		
		return $carrera;	
    
        }
   
  /*
   * Funcion para obtener la ultima carrera disputada
   * Version 7.0; 2013-03-01
   */
  function getCarrera($codigo) {
        //$carrera = 1;
        $objUtilidadesOAD = new utilidadesOAD();
		
		$carrera = $objUtilidadesOAD->getCarrera($codigo);
		
		return $carrera;	
    
        }
  /*
   * Función para obtener el estado del sistema
   * Versión 8.0: 2014-02-04
   */
  function getEstadoSistema() {
        $estadoSistema = true;        
        $objUtilidadesOAD = new utilidadesOAD();
		
		$estadoSistemaLN = $objUtilidadesOAD->getEstadoSistema();
        if ($estadoSistemaLN == 1) {
            $estadoSistema = false;
        }
		
		return $estadoSistema;
  }
 
 }//Class utilidadesLN
?>