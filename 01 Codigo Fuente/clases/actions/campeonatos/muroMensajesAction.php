<?php
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/mensaje.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceGenerico.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/ln/campeonatos/muroMensajesLN.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/ln/utilidades/utilidadesLN.class.php');
	
    $estado_session = session_status();
    if($estado_session == PHP_SESSION_NONE) {
        session_start();
    }
/*
 * Clase con las acciones para el muro de mensajes de un campeonato.
 * Autor: Jose Angel Martinez
 * Fecha: 2011/07/06
 * Versión: 3.0
 */
 
 //Método encargado de recuperar los mensajes de un campeonato.
 function cam_mur_ver($cam_cod) {
    $listaMensajes = array();
    $objMuroMensajesLN = new muroMensajesLN();
    
    $listaMensajes = $objMuroMensajesLN->getMensajesCampeonato($cam_cod);
    
    return $listaMensajes;
 }
 
 //Método para validar almacenar el mensaje
 function cam_mur_almacenar_mensaje(mensaje $objMensaje) {
    
    echo 'Vamos a almacenar el mensaje</br>';
    $objMuroMensajesLN = new muroMensajesLN();
    
    $objMensaje = $objMuroMensajesLN->almacenarMuroMensaje($objMensaje);
    
    //Validar que se almacena correctamente
    
    
 }
 
  //Punto de entrada
 if ( (isset($_POST[MuroMensajesOperacion])) or (isset($_GET[MuroMensajesOperacion])) )  {
	 
     //Analizamos la operacion
	 $objActionMensajes = new actionMensajes();
 	 
     unset($_SESSION[MensajesErro] );
	 unset($_SESSION[MensajesInfo] );
     
	 if (isset($_POST[MuroMensajesOperacion])) {
		 $operacion = $_POST[MuroMensajesOperacion];
         $cam_cod = $_POST[CampeonatoCodigo];
	 } else {
		 $operacion = $_GET[MuroMensajesOperacion];
         $cam_cod = $_GET[CampeonatoCodigo];
	 }
	 
	 echo $operacion;
     $destino = "../../../web/verCampeonatoMuro.php";     
	 
	 if ($operacion == MuroMensajesRegistrar) {
	       $usr_cod = $_SESSION[UsuarioSesion]->getUsrCod();           
	       $objMensaje = new mensaje();
           $objMensaje = $objMensaje->mensajeReg($usr_cod,
                                                    '', //usr_nom
                                                    $cam_cod,
                                                    '', //Fec
                                                    $_POST['msg_text']);
           cam_mur_almacenar_mensaje($objMensaje);
           $listaMensajes = array();
           $listaMensajes = cam_mur_ver($cam_cod);
           $_SESSION[ListaMensajesCampeonato] = $listaMensajes;
           $_SESSION[CampeonatoCodigo] = $cam_cod;
	 } else if ($operacion == MuroMensajesVer) {          
           $listaMensajes = array();
           $listaMensajes = cam_mur_ver($cam_cod);
           $_SESSION[ListaMensajesCampeonato] = $listaMensajes;
           $_SESSION[CampeonatoCodigo] = $cam_cod;
	 } else {
		echo 'Error';
		$resultado["Errores"] = "Operación no reconocida";
	 }
	 
	 header("location:".$destino);
	 
 } else { //if (isset) 
 	echo "ERROR Acceso no permitido";
 }
?>
 
 