<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/campeonato.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceGenerico.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/ln/broker/brokerLN.class.php');
	
    $estado_session = session_status();
    if($estado_session == PHP_SESSION_NONE) {
        session_start();
    }
/*
 * Fichero con las operaciones del broker
 * Autor: Jose Angel Martinez
 * Fecha: 2011/01/13
 * Versión: 2.2
 */
 
 /*
  * Método que obtiene la lista de pilotos y resto de datos para el broker.
  */ 
 function bro_getListaBrokerPiloto() {
    $objBrokerLn = new BrokerLn();
    $listaBroker = array();
    
    $listaBroker = $objBrokerLn->getListaBrokerPiloto();
    
    return $listaBroker;    
 }
 
  /*
  * Método que obtiene la lista de pilotos y resto de datos para el broker.
  */ 
 function bro_getListaBrokerEscuderia() {
    $objBrokerLn = new BrokerLn();
    $listaBroker = array();
    
    $listaBroker = $objBrokerLn->getListaBrokerEscuderia();
    
    return $listaBroker;    
 }
 
  /*
  * Método que obtiene la lista de pilotos y resto de datos para el broker.
  */ 
 function bro_getListaBrokerMotor() {
    $objBrokerLn = new BrokerLn();
    $listaBroker = array();
    
    $listaBroker = $objBrokerLn->getListaBrokerMotor();
    
    return $listaBroker;    
 }
 
 
 //Punto de entrada
 if ( (isset($_POST[BrokerOperacion])) or (isset($_GET[BrokerOperacion])) )  {
	 
	 //Analizamos la operacion
	 $objActionMensajes = new actionMensajes();
 	 unset($_SESSION[MensajesErro] );
	 unset($_SESSION[MensajesInfo] );
     
	 if (isset($_POST[BrokerOperacion])) {
		 $operacion = $_POST[BrokerOperacion];
	 } else {
		 $operacion = $_GET[BrokerOperacion];
	 }
	 
	 echo $operacion;
	 
	 if ($operacion == BrokerVer) {
		 	$destino = '../../../web/verBroker.php';
		 	$listaBrokerPiloto = bro_getListaBrokerPiloto(); 
			if ($listaBrokerPiloto != NULL) {
				$_SESSION[ListaBrokerPilotos] = $listaBrokerPiloto;	
			}
            
            $listaBrokerEscuderia = bro_getListaBrokerEscuderia(); 
			if ($listaBrokerEscuderia != NULL) {
				$_SESSION[ListaBrokerEscuderias] = $listaBrokerEscuderia;	
			} 
            
            $listaBrokerMotor = bro_getListaBrokerMotor(); 
			if ($listaBrokerMotor != NULL) {
				$_SESSION[ListaBrokerMotores] = $listaBrokerMotor;	
			}  
	 } 
	 
	 header("location:".$destino);
	 
 } else { //if (isset) 
 	echo "ERROR Acceso no permitido";
 }