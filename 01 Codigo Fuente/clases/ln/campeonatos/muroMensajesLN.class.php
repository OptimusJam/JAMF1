<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/campeonato.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/oad/campeonatos/muroMensajesOAD.class.php');
/*
 * Clase con la lógica de negocio para el muro de mensajes de un campeonato.
 * Autor: Jose Angel Martinez
 * Fecha: 2011/07/06
 * Versión: 3.0
 */
 
class muroMensajesLN {
    
    /*
	 * Método para almacenar un mensaje en el muro
	 */
	public function almacenarMuroMensaje(mensaje $objMensaje) {
     	$objMuroMensajesOAD = new muroMensajesOAD();
		
		$objMensajesRet = $objMuroMensajesOAD->almacenarMuroMensaje($objMensaje);
		
		return $objMensajesRet;		
	}	   
    
    /*
	 * Método para recuperar todos los mesnajes de un campeonato
	 */
    public function getMensajesCampeonato($codigo) {
		$objMuroMensajesOAD = new muroMensajesOAD();
		$listaMensajes = NULL;
		
		$listaMensajes = $objMuroMensajesOAD->getMensajesCampeonato($codigo);
		
		return $listaMensajes;		
	}
    
    
} //Clase
?>