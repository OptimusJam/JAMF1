<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/campeonato.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceGenerico.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/ln/utilidades/utilidadesLN.class.php');
	
    $estado_session = session_status();
    if($estado_session == PHP_SESSION_NONE) {
        session_start();
    }
/*
 * Fichero con utilidades
 * Autor: Jose Angel Martinez
 * Fecha: 2011/01/13
 * Versión: 1.0
 */
 
	function getPilotosCarrera() {
		$listaPilotos = array();
		$utilidadesLn = new utilidadesLN();
		
		$listaPilotos = $utilidadesLn->getPilotosCarrera();
		
		return $listaPilotos;		
		}

	function getEscuderiasCarrera() {
		$listaEscuderias = array();
		$utilidadesLn = new utilidadesLN();
		
		$listaEscuderias = $utilidadesLn->getEscuderiasCarrera();
		
		return $listaEscuderias;		
		}
		
	function getMotoresCarrera() {
		$listaMotores = array();
		$utilidadesLn = new utilidadesLN();
		
		$listaMotores = $utilidadesLn->getMotoresCarrera();
		
		return $listaMotores;		
		}
		
	function getCarreras() {
		$listaCarreras = array();
		$utilidadesLn = new utilidadesLN();
		
		$listaCarreras = $utilidadesLn->getCarreras();
		
		return $listaCarreras;		
		}
 
    function getEstadoSistema() {
        $estadoSistema = true;
        $utilidadesLn = new utilidadesLN();
        
        $estadoSistema = $utilidadesLn->getEstadoSistema();
        
        return $estadoSistema;        
    }
?>