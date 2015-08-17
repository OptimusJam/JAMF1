<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceGenerico.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');	
    
    $estado_session = session_status();
    if($estado_session == PHP_SESSION_NONE) {
        session_start();
    }
	
    //Punto de entrada
    if (isset($_SESSION[UsuarioSesion])) {
	   $objUsuario = $_SESSION[UsuarioSesion];
	   //Validar que sea un usuario válido para la aplicación	
    } else { //if (isset) 
 	  header("location:../../../index.php");
    }
?>