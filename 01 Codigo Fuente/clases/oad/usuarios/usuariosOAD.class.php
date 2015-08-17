<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/oad/conexionDB.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceBaseDatos.class.php');
/*
 * Clase con los accesos a base de datos para la parte de usuarios
 * Autor: Jose Angel Martinez
 * Fecha: 2011/02/07
 * Versión: 1.0
 */
 
class usuariosOAD {
	
	/*
	 * Funcion para comprobar si existe un usuario con el login indicado
	 */
	public function verificarUsuarioLogin($login) {
		$objActMen = new actionMensajes();
		$hayUsuario = false;
		
		$conexion = conexionDB::getInstance();
		
		$consultaVerficarUsuarioLogin = 'select usr_cod from usuarios where '.ColumnaLogin.' = \'%1$s\'';
		$sql = sprintf($consultaVerficarUsuarioLogin,$login);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError:'.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$hayUsuario = true;
		}
		
		if ($hayUsuario) {
			$objActMen->setHayErrores(true);
		} else {
			$objActMen->setHayErrores(false);	
		}
		
		//$conexion->cerrar();
		
		return $objActMen;
		
	}
	
	/*
	 * Funcion para comprobar si existe un usuario con el login indicado
	 */
	public function verificarUsuarioEmail($email) {
		$objActMen = new actionMensajes();
		
		$hayUsuario = false;
		
		$conexion = conexionDB::getInstance();
		
		$consultaVerficarUsuarioEmail = 'select usr_cod from usuarios where '.ColumnaEmail.' = \'%1$s\'';
		$sql = sprintf($consultaVerficarUsuarioEmail,$email);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError:'.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$hayUsuario = true;
		}
		
		if ($hayUsuario) {
			$objActMen->setHayErrores(true);
		} else {
			$objActMen->setHayErrores(false);	
		}
		
		//$conexion->cerrar();
		
		return $objActMen;
	}
	
		/*
	 * Funcion para comprobar si existe un usuario con el login indicado
	 */
	public function verificarUsuarioLoginCodigo($login,$codigo) {
		$objActMen = new actionMensajes();
		$hayUsuario = false;
		
		$conexion = conexionDB::getInstance();
		
		$consultaVerficarUsuarioLogin = 'select usr_cod from usuarios where '.ColumnaLogin.' = \'%1$s\' and '.ColumnaCodigo.' <> \'%2$s\'';
		$sql = sprintf($consultaVerficarUsuarioLogin,$login,$codigo);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError:'.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$hayUsuario = true;
		}
		
		if ($hayUsuario) {
			$objActMen->setHayErrores(true);
		} else {
			$objActMen->setHayErrores(false);	
		}
		
		//$conexion->cerrar();
		
		return $objActMen;
		
	}
	
	/*
	 * Funcion para comprobar si existe un usuario con el login indicado
	 */
	public function verificarUsuarioEmailCodigo($email,$codigo) {
		$objActMen = new actionMensajes();
		
		$hayUsuario = false;
		
		$conexion = conexionDB::getInstance();
		
		$consultaVerficarUsuarioEmail = 'select usr_cod from usuarios where '.ColumnaEmail.' = \'%1$s\' and '.ColumnaCodigo.' <> \'%2$s\'';
		$sql = sprintf($consultaVerficarUsuarioEmail,$email,$codigo);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError:'.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$hayUsuario = true;
		}
		
		if ($hayUsuario) {
			$objActMen->setHayErrores(true);
		} else {
			$objActMen->setHayErrores(false);	
		}
		
		//$conexion->cerrar();
		
		return $objActMen;
	}
	
	/*
	 * Funcion para almacenar un usuario en la base de datos
	 */
	public function almacenarUsuario(usuario $objUsuario) {		
		$conexion = conexionDB::getInstance();
		
		//$consultaAlmacenaUsuario = 'CALL usuario_insertar(\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\',\'%5$s\',\'%6$s\',@codigo);';
        $consultaAlmacenaUsuario = 'insert into usuarios
                                        (usr_nom, usr_ape_1,usr_ape_2,usr_email,usr_login,usr_pass)
                                    values
                                        (\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\',\'%5$s\',\'%6$s\');';
   		$sql = sprintf($consultaAlmacenaUsuario,$objUsuario->getUsrNom(),
										$objUsuario->getUsrApe1(),
										$objUsuario->getUsrApe2(),
										$objUsuario->getUsrEmail(),
										$objUsuario->getUsrLogin(),
										$objUsuario->getUsrPass());
										//$codigo);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
				
		echo('<br/>SQL: $'.$result.'$<br/>');
		
		if ($result != 1) {
			$objUsuarioRet = $objUsuario;
		} else {
			$objUsuarioRet = $objUsuario;
			//Como ha ido todo bien, recuperamos el usr_cod
			$sql_codigo = 'select '.ColumnaCodigo.' from usuarios where '.ColumnaLogin.' = \''. $objUsuario->getUsrLogin().'\'';
			$result_codigo = mysql_query($sql_codigo,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
			while ($row = mysql_fetch_array($result_codigo)) {
				$objUsuarioRet->setUsrCod($row[ColumnaCodigo]);
				echo 'Codigo: '.$row[ColumnaCodigo];
			}
		}
		
		return $objUsuarioRet;		
	}
	
	/*
	 * Funcion para almacenar un usuario en la base de datos
	 */
	public function actualizarUsuario(usuario $objUsuario) {
		$conexion = conexionDB::getInstance();
		
		//$consultaAlmacenaUsuario = 'CALL usuario_modificar(\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\',\'%5$s\',\'%6$s\',\'%7$s\');';
        $consultaAlmacenaUsuario = 'update usuarios set
                                    	usr_nom	= \'%1$s\',
                                    	usr_ape_1 = \'%2$s\',
                                    	usr_ape_2 = \'%3$s\',
                                    	usr_email = \'%4$s\',
                                    	usr_login = \'%5$s\',
                                    	usr_pass = \'%6$s\'
                                       where
                                    	usr_cod = \'%7$s\'';
		$sql = sprintf($consultaAlmacenaUsuario,$objUsuario->getUsrNom(),
										$objUsuario->getUsrApe1(),
										$objUsuario->getUsrApe2(),
										$objUsuario->getUsrEmail(),
										$objUsuario->getUsrLogin(),
										$objUsuario->getUsrPass(),
										$objUsuario->getUsrCod());
										//$codigo);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
				
		echo('<br/>SQL: $'.$result.'$<br/>');
		
		if ($result != 1) {
			$objUsuarioRet = NULL;
		} 
				
		return $objUsuarioRet;	
	}
	
	/*
	 * Funcion para almacenar un usuario en la base de datos
	 */
	public function loginUsuario($objUsuario) {
		$objUsuarioRet = NULL;
		
		$conexion = conexionDB::getInstance();
		
		echo '<br/>Vamos a Hacer loginUsuario: '.$objUsuario->getUsrLogin().'<br/>Pass: '.$objUsuario->getUsrLogin().'<br/>';
		
		$consultaLoginUsuario = 'select '.ColumnaCodigo.', '.ColumnaLogin.', '.ColumnaPass.', '.ColumnaNombre.', '.ColumnaEmail.', '.ColumnaApellido1.', '.ColumnaApellido2.' from usuarios where '.ColumnaLogin.' = \'%1$s\' and '.ColumnaPass.' = \'%2$s\'';
		
		$sql = sprintf($consultaLoginUsuario,$objUsuario->getUsrLogin(),$objUsuario->getUsrPass());
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError:'.mysql_error());
		
		echo('<br/>SQL: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$objUsuarioRet = new usuario();
			$objUsuarioRet = $objUsuarioRet->usuarioBD($row[ColumnaCodigo],
				$row[ColumnaNombre],
				$row[ColumnaApellido1],
				$row[ColumnaApellido2],
				$row[ColumnaEmail],
				$row[ColumnaLogin],
				$row[ColumnaPass]);
			echo '<br/>(OAD)Vamos a Hacer loginUsuario: '.$objUsuarioRet->getUsrLogin().'<br/>Pass: '.$objUsuarioRet->getUsrPass().'<br/>';
		
		}		
		
		return $objUsuarioRet;		
	}	
	
} //Clase
?>