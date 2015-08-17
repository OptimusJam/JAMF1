<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/actionMensajes.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/ln/usuarios/usuariosLN.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceGenerico.class.php');
    
    $estado_session = session_status();
    if($estado_session == PHP_SESSION_NONE) {
        session_start();
    }
/*
 * Fichero con las operaciones de los usuarios
 * Autor: Jose Angel Martinez
 * Fecha: 2010/12/22
 * Versión: 1.0
 */

/*
 * Funcion para realizar el login del usuario
 */
 function usr_login(usuario $usuario) {
  echo "Vamos a HACER LOGIN";
  $objActMen = new actionMensajes();
  //Comprobar que cumplen las restricciones 
    if ($usuario->getUsrLogin() == '') {
   	  $objActMen->addError('El LOGIN no puede ser vacio');	  
	  $objActMen->setHayErrores(TRUE);
  }
  
  if ($usuario->getUsrPass() == '') {
	  $objActMen->addError('La CONTRASEÑA no puede ser vacia');	  
	  $objActMen->setHayErrores(TRUE);
  }
  
  //Consultar a la Base de Datos
  $objUsuariosLn = new usuariosLN();
  
  if (!$objActMen->getHayErrores()) {
	  
	  //Recuperamos el usuario
	  $usuarioRet = $objUsuariosLn->loginUsuario($usuario);
	  
	  if ($usuarioRet != NULL) {
		$_SESSION[UsuarioSesion] = $usuarioRet;	
		$objActMen->setHayMensajes(TRUE);
		$objActMen->addMensaje('El usuario ha accedido a la aplicacion');
		echo '<br/>(ACTION)Vamos a Hacer loginUsuario: '.$usuarioRet->getUsrLogin().'<br/>Pass: '.$usuarioRet->getUsrPass().'<br/>';
	  } else {
		$objActMen->setHayErrores(TRUE);
		$objActMen->addError('ERROR haciendo Login');
	  }	  
  }  
  
  //Comprobar resultado desde la base de datos
  
  if ($objActMen->getHayErrores()) {
		$_SESSION[MensajesErro] = $objActMen;	 
	 }
	 
  if ($objActMen->getHayMensajes()) {
		$_SESSION[MensajesInfo] = $objActMen;	 
	 }
  
  return $objActMen;
  
 }
 
/*
 * Valida los datos del formulario tanto para modificar como para registrar
 */
 function validarFormulario(usuario $usuario) {

	$objActMen = new actionMensajes();
	 
  //Realizar las validaciones de los datos del nuevo usuario
  if ($usuario->getUsrNom() == '') {
	  $objActMen->addError('El NOMBRE no puede ser vacio');
	  $objActMen->setHayErrores(TRUE);
  }
  
  if ($usuario->getUsrApe1() == '') {
  	  $objActMen->addError('El APELLIDO 1 no puede ser vacio');
	  $objActMen->setHayErrores(TRUE);
  }
  
  if ($usuario->getUsrApe2() == '') {
	  $objActMen->assError('El APELLIDO 2 no puede ser vacio');
	  $objActMen->setHayErrores(TRUE);
  }
  
  if ($usuario->getUsrEmail() == '') {
	  $objActMen->addError('El EMAIL no puede ser vacio');
	  $objActMen->setHayErrores(TRUE);
  }
  
  if ($usuario->getUsrLogin() == '') {
	  $objActMen->addError('El LOGIN no puede ser vacio');
	  $objActMen->setHayErrores(TRUE);
  }
  
  if ($usuario->getUsrPass() == '') {
   	  $objActMen->addError('La CONTRASEÑA no puede ser vacia');
	  $objActMen->setHayErrores(TRUE);
  }
  
  if ($usuario->getUsrPassConf() == ''){
	  $objActMen->addError('CONFIRMAR CONTRASEÑA no puede ser vacio');
	  $objActMen->setHayErrores(TRUE);
  
  }
  
  if ($usuario->getUsrPass() != '' && $usuario->getUsrPassConf() != '')  {
	  if ($usuario->getUsrPass() != $usuario->getUsrPassConf()) {
		  
		}
  }
  
  return $objActMen;	 
 }
 
/*
 * Funcion para realizar el registro del usuario
 *
 */
 function usr_registrar(usuario $usuario) {
  echo 'Vamos a REGISTRAR el usuario<br/>';
  $objActMen = new actionMensajes();
  
  $objActMen = validarFormulario($usuario);
  
  //Realizar las validaciones de los datos contra la informacion de la base de datos
  $objUsuariosLn = new usuariosLN();
  if (!$objActMen->getHayErrores()) {
	  //Validar que no hay otro usuario con ese login
	  $objActMen = $objUsuariosLn->verificarUsuarioLogin($usuario->getUsrLogin());	  
  } else {
       echo 'Vamos a ERRORES en el formulario<br/>';
	   $objUsuarioRet = $usuario;			  
  }
  
  if (!$objActMen->getHayErrores()) {	  
	  //Validar que no hay otro usausario con ese email
  	  $objActMen = $objUsuariosLn->verificarUsuarioEmail($usuario->getUsrEmail());		  
   } else {
       echo 'Vamos a ERRORES en el LOGIN<br/>'; 
	   $objUsuarioRet = $usuario;			  
  }  
  
  //Comprobar resultados de validaciones
  if (!$objActMen->getHayErrores()) {
	  //Almacenar el usuario
	  $objUsuarioRet = $objUsuariosLn->almacenarUsuario($usuario);
	  $objActMen->setHayMensajes(TRUE);
	  $objActMen->addMensaje('El usuario ha sido registrado con éxito en la aplicación');
  } else {
        echo 'Vamos a ERRORES en el EMAIL<br/>';
	   $objUsuarioRet = $usuario;			  
  }
  
  if ($objActMen->getHayErrores()) {        
		$_SESSION[MensajesErro] = $objActMen;	 
	 }
	 
  if ($objActMen->getHayMensajes()) {
		$_SESSION[MensajesInfo] = $objActMen;	 
	 }
  
  return $objUsuarioRet;  
  
 }
 
 /*
 * Funcion para realizar la modificacion del usuario
 *
 */
 function usr_modificar(usuario $usuario) {
  echo "Vamos a MODIFICAR el usuario";
  $objActMen = new actionMensajes();
  
  $objActMen = validarFormulario($usuario);
  
  //Realizar las validaciones de los datos contra la informacion de la base de datos
  $objUsuariosLn = new usuariosLN();
  if (!$objActMen->getHayErrores()) {
	  //Validar que no hay otro usuario con ese login
	  $objActMen = $objUsuariosLn->verificarUsuarioLoginCodigo($usuario->getUsrLogin(),$usuario->getUsrCod());	  
  } else {
	   $objUsuarioRet = NULL;			  
  }
  
  if (!$objActMen->getHayErrores()) {	  
	  //Validar que no hay otro usausario con ese email
  	  $objActMen = $objUsuariosLn->verificarUsuarioEmailCodigo($usuario->getUsrEmail(),$usuario->getUsrCod());
   } else {
	   $objUsuarioRet = NULL;			  
  }  
  
  //Comprobar resultados de validaciones
  if (!$objActMen->getHayErrores()) {
	  //Almacenar el usuario
	  $objUsuarioRet = $objUsuariosLn->actualizarUsuario($usuario);
	  $objActMen->setHayMensajes(TRUE);
	  $objActMen->addMensaje('El usuario ha sido modificado con éxito en la aplicación');
  } else {
	   $objUsuarioRet = NULL;			  
  }
  
  if ($objActMen->getHayErrores()) {
		$_SESSION[MensajesErro] = $objActMen;        	 
	 }
	 
  if ($objActMen->getHayMensajes()) {
		$_SESSION[MensajesInfo] = $objActMen;	 
	 }
  
  return $objUsuarioRet;
  
 }
 
 //Punto de entrada
 if (isset($_POST["usr_ope"])) {
	 
	 //Analizamos la operacion
	 $operacion = $_POST["usr_ope"];
	 $resultado = new actionMensajes();
	 unset($_SESSION[MensajesErro] );
	 unset($_SESSION[MensajesInfo] );
	 
	 
	 if ($operacion == UsuarioRegistrar) {	    	
			$objUsuario = new usuario();
			$objUsuario = $objUsuario->usuarioReg($_POST["usr_nombre"],
									$_POST["usr_ape_1"],
									$_POST["usr_ape_2"],
									$_POST["usr_email"],
									$_POST["usr_login"],
									$_POST["usr_pass"],
									$_POST["usr_pass_conf"]);
		 	$usuarioRet = usr_registrar($objUsuario);
			if ($usuarioRet->getUsrCod() != NULL) {
			     echo 'Usuario registrado';
				$destino = '../../../web/inicioUsuario.php';
				$_SESSION[UsuarioSesion] = $usuarioRet;	
			} else {
			     echo 'errores en el registro de usuario';
				$destino = '../../../web/verUsuario.php';
				$_SESSION[UsuarioSesion] = $objUsuario;
			}
	 } else if ($operacion == UsuarioModificar) {
		 	$objUsuario = new usuario();	    	
			$objUsuario = $objUsuario->usuarioMod($_POST["usr_cod"],
									$_POST["usr_nombre"],
									$_POST["usr_ape_1"],
									$_POST["usr_ape_2"],
									$_POST["usr_email"],
									$_POST["usr_login"],
									$_POST["usr_pass"],
									$_POST["usr_pass_conf"]);	
			$usuarioRet = usr_modificar($objUsuario);
			$destino = '../../../web/verUsuario.php';
			if ($usuarioRet != NULL) {
				$_SESSION[UsuarioSesion] = $usuarioRet;	
			} else {
				$_SESSION[UsuarioSesion] = $objUsuario;					
			}
	 } else if ($operacion == UsuarioLogin) {
		 	$destino = '../../../web/inicioUsuario.php';
			$objUsuario = new usuario();
			$objUsuario = $objUsuario->usuarioLog($_POST["usr_login"],
									$_POST["usr_pass"]); 	
			$resultado = usr_login($objUsuario);
	 } else if ($operacion == UsuarioSalir) {
		 	$destino = '../../../index.php';			
			unset($_SESSION[UsuarioSesion] );
	 } else {
			$destino = '../../../web/inicioUsuario.php';			
	 }
	 	 
   header("location:".$destino);
	 
 } else { //if (isset) 
 	echo "ERROR Acceso no permitido";
 }
?>