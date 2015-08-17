<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');	
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/oad/broker/brokerOAD.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/ln/utilidades/utilidadesLN.class.php');
/*
 * Clase con la lógica de negocio para la parte de usuarios
 * Autor: Jose Angel Martinez
 * Fecha: 2011/02/03
 * Versión 2.0; 2011-03-25
 */
 
class brokerLN {
    
    /*
     * Método para recuperar la lista del broker   
     * Version 2.2; 2011-04-02
     */
    function getListaBrokerPiloto() {
        $objBrokerOAD = new brokerOAD();
        $objUtilidadesLN = new utilidadesLN();
        
        $objListaBroker = array();
        $sigCarrera = $objUtilidadesLN->getSiguienteCarrera();
        
        $objListaBroker = $objBrokerOAD->getListaBrokerPiloto($sigCarrera->getCarCod());
        
        return $objListaBroker;        
    }   
    
        /*
     * Método para recuperar la lista del broker   
     * Version 2.2; 2011-04-02
     */
    function getListaBrokerEscuderia() {
        $objBrokerOAD = new brokerOAD();
        $objUtilidadesLN = new utilidadesLN();
        
        $objListaBroker = array();
        $sigCarrera = $objUtilidadesLN->getSiguienteCarrera();
        
        $objListaBroker = $objBrokerOAD->getListaBrokerEscuderia($sigCarrera->getCarCod());
        
        return $objListaBroker;        
    }  
    
        /*
     * Método para recuperar la lista del broker   
     * Version 2.2; 2011-04-02
     */
    function getListaBrokerMotor() {
        $objBrokerOAD = new brokerOAD();
        $objUtilidadesLN = new utilidadesLN();
        
        $objListaBroker = array();
        $sigCarrera = $objUtilidadesLN->getSiguienteCarrera();
        
        $objListaBroker = $objBrokerOAD->getListaBrokerMotor($sigCarrera->getCarCod());
        
        return $objListaBroker;        
    }  
    
}
?>