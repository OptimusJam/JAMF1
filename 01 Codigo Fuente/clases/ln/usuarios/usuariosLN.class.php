<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/oad/usuarios/usuariosOAD.class.php');
/*
 * Clase con la lógica de negocio para la parte de usuarios
 * Autor: Jose Angel Martinez
 * Fecha: 2011/02/03
 * Versión: 1.0
 */
 
class usuariosLN {
	
	/*
	 * Funcion para comprobar si existe un usuario con el login indicado
	 */
	public function verificarUsuarioLogin($login) {
		$objActMen = new actionMensajes();
		$objUsauriosOAD = new usuariosOAD();
		
		$objActMen = $objUsauriosOAD->verificarUsuarioLogin($login);
		
		return $objActMen;
		
	}
	
	/*
	 * Funcion para comprobar si existe un usuario con el login indicado
	 */
	public function verificarUsuarioEmail($email) {
		$objActMen = new actionMensajes();
		$objUsauriosOAD = new usuariosOAD();
		
		$objActMen = $objUsauriosOAD->verificarUsuarioEmail($email);
		
		return $objActMen;
		
	}
	
	/*
	 * Funcion para almacenar un usuario en la base de datos
	 */
	public function almacenarUsuario(usuario $objUsuario) {
		$objUsauriosOAD = new usuariosOAD();
		
		$objUsuarioRet = $objUsauriosOAD->almacenarUsuario($objUsuario);
		
		return $objUsuarioRet;		
	}
	
	/*
	 * Funcion para comprobar si existe un usuario con el login indicado
	 */
	public function verificarUsuarioLoginCodigo($login,$codigo) {
		$objActMen = new actionMensajes();
		$objUsauriosOAD = new usuariosOAD();
		
		$objActMen = $objUsauriosOAD->verificarUsuarioLoginCodigo($login,$codigo);
		
		return $objActMen;
		
	}
	
	/*
	 * Funcion para comprobar si existe un usuario con el login indicado
	 */
	public function verificarUsuarioEmailCodigo($email,$codigo) {
		$objActMen = new actionMensajes();
		$objUsauriosOAD = new usuariosOAD();
		
		$objActMen = $objUsauriosOAD->verificarUsuarioEmailCodigo($email,$codigo);
		
		return $objActMen;
		
	}
	
	/*
	 * Funcion para actualizar un usuario en la base de datos
	 */
	public function actualizarUsuario(usuario $objUsuario) {
		$objUsauriosOAD = new usuariosOAD();
		
		$objUsuarioRet = $objUsauriosOAD->actualizarUsuario($objUsuario);
		
		return $objUsuarioRet;		
	}
	
	/*
	 * Funcion para hacer login
	 */
	public function loginUsuario(usuario $objUsuario) {
		$objUsuarioRet = new usuario();
		$objUsauriosOAD = new usuariosOAD();
		
		$objUsuarioRet = $objUsauriosOAD->loginUsuario($objUsuario);
		
		return $objUsuarioRet;		
	}
	
	
	
} //Clase
?>