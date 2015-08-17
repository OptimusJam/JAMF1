<?php
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/comboItem.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/campeonato.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
    
    //Version 7.0
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/carrera.class.php');
    
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceGenerico.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/ln/campeonatos/campeonatosLN.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/ln/utilidades/utilidadesLN.class.php');
	
    $estado_session = session_status();
    if($estado_session == PHP_SESSION_NONE) {
        session_start();
    }
/*
 * Fichero con las operaciones de los campeonatos
 * Autor: Jose Angel Martinez
 * Fecha: 2011/01/13
 * Versión: 1.0
 */
 
/*
 * Funcion para realizar el registro del campeonato
 *
 */
 function cam_registrar(campeonato $campeonato) {
	echo 'Vamos a REGISTRAR el campeonato';
  	//Realizar las validaciones de los datos del nuevo campeonato
	$objActMen = new actionMensajes();
  
	$objActMen = validarFormulario($campeonato);
  
  	//Realizar las validaciones de los datos contra la informacion de la base de datos
	$objCampeonatoLN = new campeonatosLN();
  	if (!$objActMen->getHayErrores()) {
		$objActMen = $objCampeonatoLN->verificarCampeonatoNombre($campeonato->getCamNombre());		
	} else {
		$campeonatoRet = $campeonato;
	}
  
  	//Comprobar resultados de validaciones  
  	if (!$objActMen->getHayErrores()) {
		$campeonatoRet = $objCampeonatoLN->almacenarCampeonato($campeonato);
		$objActMen->setHayMensajes(TRUE);
		$objActMen->addMensaje('El campeonato ha sido registrado con éxito en la aplicación');	
	} else {
		$campeonatoRet = $campeonato;
	}


	if ($objActMen->getHayErrores()) {
		$_SESSION[MensajesErro] = $objActMen;	 
	 }
	 
  	if ($objActMen->getHayMensajes()) {
		$_SESSION[MensajesInfo] = $objActMen;	 
	 }

	return $campeonatoRet;  
 }
 
 /*
  * Funcion para realizar la modificacion del campeonato
  */
 function cam_modificar(campeonato $campeonato) {
	echo 'VAmos a MODIFICAR el campeonato';
  	//Realizar las validaciones de los datos del nuevo campeonato
	$objActMen = new actionMensajes();
  
	$objActMen = validarFormulario($campeonato);
  
  	//Realizar las validaciones de los datos contra la informacion de la base de datos
	$objCampeonatoLN = new campeonatosLN();
  	if (!$objActMen->getHayErrores()) {
		$objActMen = $objCampeonatoLN->verificarCampeonatoNombre($campeonato->getCamNombre());		
	} else {
		$campeonatoRet = NULL;
	}
  
  	//Comprobar resultados de validaciones  
  	if (!$objActMen->getHayErrores()) {
		$campeonatoRet = $objCampeonatoLN->actualizarCampeonato($campeonato);
		$objActMen->setHayMensajes(TRUE);
		$objActMen->addMensaje('El campeonato ha sido modificado con éxito en la aplicación');	
	} else {
		$campeonatoRet = NULL;
	}


	if ($objActMen->getHayErrores()) {
		$_SESSION[MensajesErro] = $objActMen;	 
	 }
	 
  	if ($objActMen->getHayMensajes()) {
		$_SESSION[MensajesInfo] = $objActMen;	 
	 }

	return $campeonatoRet;  
 }
 
 /*
 * Valida los datos del formulario tanto para modificar como para registrar
 */
 function validarFormulario(campeonato $campeonato) {

	$objActMen = new actionMensajes();
	 
  //Realizar las validaciones de los datos del nuevo usuario
  if ($campeonato->getCamNombre() == '') {
	  $objActMen->addError('El NOMBRE no puede ser vacio');
	  $objActMen->setHayErrores(TRUE);
  }
  
  if ($campeonato->getCamDes() == '') {
  	  $objActMen->addError('La DESCRIPCION no puede ser vacio');
	  $objActMen->setHayErrores(TRUE);
  }
  
  if ($campeonato->getCamPass() == '') {
   	  $objActMen->addError('La CONTRASEÑA no puede ser vacia');
	  $objActMen->setHayErrores(TRUE);
  }
  
  if ($campeonato->getCamPassConf() == ''){
	  $objActMen->addError('CONFIRMAR CONTRASEÑA no puede ser vacio');
	  $objActMen->setHayErrores(TRUE);  
  }
  
  if ($campeonato->getCamPass() != '' && $campeonato->getCamPassConf() != '')  {
	  if ($campeonato->getCamPass() != $campeonato->getCamPassConf()) {
		  $objActMen->addError('CONTRASEÑA y CONFIRMAR CONTRASEÑA deben ser iguales');
		  $objActMen->setHayErrores(TRUE);		  
		}
  }
  
  return $objActMen;	 
 }
 
 /*
 * Funcion para ver el campeonato a modificar
 *
 */
 function cam_ver_modificar($cam_cod,$usr_cod) {
	echo "Vamos a VER_MODIFICAR el campeonato";
   	$objCampeonatosLN = new campeonatosLN();
	 
	$objCampeonato = $objCampeonatosLN->getCampeonatoUsuario($cam_cod,$usr_cod);
	 
	return $objCampeonato;
 }
 
 /*
  * Función para obtener la lista de campeonatos del usuario
  */
 function cam_lista(usuario $objUsuario) {
	 echo "Recuperamos la lista de campeonatos en los que participa el usuario";
	 $objCampeonatosLN = new campeonatosLN();
	 
	 $listaCampeonatos = $objCampeonatosLN->getCampeonatosUsuario($objUsuario->getUsrCod());
	 
	 return $listaCampeonatos;	 
 }
 
 /*
  * Funcion para ver la clasificacion de un campeonato
  * Version 2.1: 2011-03-27
  * Version 6.0: 2012-12-30: Devuelve el tipo de clasificacion que se le indica en el tercer parámetro.
  */
 function cam_clasificacion($campeonato, $carrera, $tipoClasificacion) {
     echo "Recuperamos la clasificacion del campeonato";
	 $objCampeonatosLN = new campeonatosLN();
	 
	 $listaClasificacion = $objCampeonatosLN->getCampeonatoClasificacion($campeonato, $carrera, $tipoClasificacion);
	 
	 return $listaClasificacion;
    
 }
 /*
  * Version 2.1: 2011-03-27: Fin 
  */ 
  
 //Punto de entrada
 if ( (isset($_POST["cam_ope"])) or (isset($_GET["cam_ope"])) )  {
	 
	 //Analizamos la operacion
	 $objActionMensajes = new actionMensajes();
 	 unset($_SESSION[MensajesErro] );
	 unset($_SESSION[MensajesInfo] );
     unset($_SESSION[CampeonatoListaSesion]);
	 if (isset($_POST["cam_ope"])) {
		 $operacion = $_POST["cam_ope"];
	 } else {
		 $operacion = $_GET["cam_ope"];
	 }
	 
	 echo $operacion;
	 
	 if ($operacion == CampeonatoRegistrar) {
		 	$destino = '../../../web/verCampeonato.php';
		 	$usr_cod = $_SESSION[UsuarioSesion]->getUsrCod();
			$objCampeonato = new campeonato();			
			$objCampeonato = $objCampeonato->campeonatoReg($_POST['cam_nombre'],
							$_POST['cam_descripcion'],
							$_POST['cam_pass'],
							$_POST['cam_pass_conf'],
							$usr_cod); 	
		 	$objCampeonatoRet = cam_registrar($objCampeonato); 
			if ($objCampeonatoRet->getCamCod() != NULL) {
				$_SESSION[CampeonatoSesion] = $objCampeonatoRet;	
			} else {
				$destino = '../../../clases/actions/campeonatos/campeonatosAction.php?cam_ope=cam_lista';
				$_SESSION[CampeonatoSesion] = $objCampeonato;
			}
	 } else if ($operacion == CampeonatoModificar) {
		 	$destino = '../../../web/verCampeonato.php';
		 	$usr_cod = $_SESSION[UsuarioSesion]->getUsrCod();
			$objCampeonato = new campeonato();			
			$objCampeonato = $objCampeonato->campeonatoMod($_POST['cam_cod'],
							$_POST['cam_nombre'],
							$_POST['cam_descripcion'],
							$_POST['cam_pass'],
							$_POST['cam_pass_conf'],
							$usr_cod); 	
		 	$objCampeonatoRet = cam_modificar($objCampeonato); 
			if ($objCampeonatoRet != NULL) {
				$_SESSION[CampeonatoSesion] = $objCampeonatoRet;	
			} else {
				$destino = '../../../clases/actions/campeonatos/campeonatosAction.php?cam_ope=cam_lista';
				$_SESSION[CampeonatoSesion] = $objCampeonato;
			}		 	
	 } else if ($operacion == CampeonatoVerModificar) {
		 	unset($_SESSION[CampeonatoSesion]);
			$destino = '../../../web/verCampeonatos.php';
			$cam_cod = $_GET["cam_cod"];
			$usr_cod = $_SESSION[UsuarioSesion]->getUsrCod();
		 	$objCampeonato = new campeonato();
			$objCampeonatoRet = cam_ver_modificar($cam_cod,$usr_cod);
			if ($objCampeonatoRet == NULL) {				
				$objActionMensajes->setHayErrores(TRUE);
				$objActionMensajes->addError('No tiene permisos de administracion sobre el campeonato');
				$_SESSION[MensajesErro] = $objActionMensajes;
			} else {
				$destino = '../../../web/verCampeonato.php';
				$_SESSION[CampeonatoSesion] = $objCampeonatoRet;
			}
	 } else if ($operacion == CampeonatoLista) {
		 	$destino = '../../../web/verCampeonatos.php';	
		 	$objUsuario = $_SESSION[UsuarioSesion];			
			$campeonatosLista = cam_lista($objUsuario);
			if ($campeonatosLista == NULL) {
				$objActionMensajes->setHayErrores(TRUE);
				$objActionMensajes->addError('No se han recuperado campeonatos');
			} else {
				$_SESSION[CampeonatoListaSesion] = $campeonatosLista;
			}
	 } else if ($operacion == CampeonatoVerRegistrar){
		 	unset($_SESSION[CampeonatoSesion]);
			$destino = '../../../web/verCampeonato.php';
	 //Version 2.1: 2011-03-27
     } else if ($operacion == CampeonatoVerClasificacion){
        
            //2012-12-30: Añadimos el tipo de clasificación a recuperar:
            
            if (isset($_GET[CampClasRadio])) {
                $tipoClasificacion = $_GET[CampClasRadio];
            } else if (isset($_POST[CampClasRadio])) {
                $tipoClasificacion = $_POST[CampClasRadio];
            } else {
                $tipoClasificacion = CampClasRadioPuntos;
            }
            
            $destino = '../../../web/verCampeonatoClasificacion.php';
            $objUtilidadesLN = new utilidadesLN();
            $listaCarreras = $objUtilidadesLN->getCarreras();
            array_push($listaCarreras, new comboItem(CodigoClasificacionGeneral,'Clasificacion General',0));
            
            if (isset($_GET[CampeonatoCodigo])) {
                $campeonato = $_GET[CampeonatoCodigo];
            } else {
                $campeonato = $_POST[CampeonatoCodigo];
            }
                        
            if (isset($_POST[CarreraCodigo])) {
                $codigoCarrera = $_POST[CarreraCodigo];
                if ($codigoCarrera != CodigoClasificacionGeneral) {
                    $carrera = $objUtilidadesLN->getCarrera($codigoCarrera);
                } else {
                    $carrera = new Carrera();
                    $carrera->setCarCod(CodigoClasificacionGeneral);
                }
            } else {                
                $carrera = $objUtilidadesLN->getAnteriorCarrera();
            }
            
            // Version 6.0: 2012-12-30: Devuelve el tipo de clasificacion que se le indica en el tercer parámetro.
            $listaClasificacion = cam_clasificacion($campeonato,$carrera,$tipoClasificacion);
            
            $_SESSION[ListaCarrerasSesion] = $listaCarreras;
            $_SESSION[CarreraCodigo] = $carrera;
            $_SESSION[CampeonatoListaClasificacion] = $listaClasificacion;
            $_SESSION[CampeonatoCodigo] = $campeonato;
            $_SESSION[CampClasRadio] = $tipoClasificacion;
     //Version 2.1: 2011-03-27: Fin
     } else {
		echo 'Error';
		$resultado["Errores"] = "Operación no reconocida";
	 }
	 
	 header("location:".$destino);
	 
 } else { //if (isset) 
 	echo "ERROR Acceso no permitido";
 }
?>