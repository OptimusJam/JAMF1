<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/oad/conexionDB.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/campeonato.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/mensaje.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceBaseDatos.class.php');
/*
 * Clase con los accesos a base de datos para el muro de mensajes de un campeonato
 * Autor: Jose Angel Martinez
 * Fecha: 2011/07/06
 * Versión: 3.0
 */
 
class muroMensajesOAD {
    
    /*
	 * Método para almacenar un mensaje en el muro
	 */
	public function almacenarMuroMensaje(mensaje $objMensaje) {
		$conexion = conexionDB::getInstance();
		
		//$consultaAlmacenaMuroMensaje = 'CALL campeonato_muro_insertar(\'%1$s\',\'%2$s\',\'%3$s\');';
        $consultaAlmacenaMuroMensaje = 'insert into campeonatos_muro (cam_mur_cam_cod, cam_mur_usr_cod,cam_mur_fec,cam_mur_texto) values
                                        (\'%1$s\', \'%2$s\', \'%3$s\', \'%4$s\');';
		$sql = sprintf($consultaAlmacenaMuroMensaje,$objMensaje->getMsgCamCod(),
										$objMensaje->getMsgUsrCod(),
                                        date("Y-m-d H:i:s"),
										$objMensaje->getMsgText());
										//$codigo);
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
				
		echo('<br/>SQL: $'.$result.'$<br/>');
		
		if ($result != 1) {
			$objMensajeRet = $objMensaje;
		} else {
			$objMensajeRet = $objMensaje;
			//Como ha ido todo bien, recuperamos el usr_cod
			$sql_codigo = 'select cam_mur_cod from campeonatos_muro where cam_mur_texto = \''. $objMensaje->getMsgText() .'\'';
			$result_codigo = mysql_query($sql_codigo,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
			while ($row = mysql_fetch_array($result_codigo)) {
				$objMensajeRet->setMsgCod($row['cam_mur_cod']);
				echo 'Codigo: '.$row[CampeonatoCodigo];
			}
		}
		
		return $objMensajeRet;		
	}
    
    /*
	 * Método para recuperar todos los mesnajes de un campeonato
	 */
	public function getMensajesCampeonato($codigo) {
		$conexion = conexionDB::getInstance();
		$listaMensajes = array();
		
		$consultaGetMensajesCampeonato = 'select vw_msg_cod, vw_usr_nom, vw_usr_cod, vw_cam_cod, vw_msg_fec, vw_msg_text
											from vw_campeonatos_muro
											where vw_cam_cod = \'%1$s\'
											order by vw_msg_fec desc, vw_msg_cod desc';
		$sql = sprintf($consultaGetMensajesCampeonato,$codigo);
		
		echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {		     
			$mensaje = new mensaje();
			array_push($listaMensajes,$mensaje->mensajeBD($row['vw_msg_cod'],
															$row['vw_usr_cod'],
															$row['vw_usr_nom'],
															$row['vw_cam_cod'],
                                                            (String)$row['vw_msg_fec'],
															$row['vw_msg_text']));
		}
		
		//$conexion->cerrar();
		
		return $listaMensajes;		
	}
    
    
    
}//Class
?>