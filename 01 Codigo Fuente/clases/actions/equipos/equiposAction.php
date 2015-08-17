<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/equipo.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/equipoItem.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/apuestaCarrera.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/apuestaMundial.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceGenerico.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/ln/equipos/equiposLN.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/ln/campeonatos/campeonatosLN.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/ln/utilidades/utilidadesLN.class.php');
    
    //Version 7.0
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/carrera.class.php'); 

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
  * Función para validar el equipo
  */
 function validarFormulario(equipo $equipo) {
    
    $objActMen = new actionMensajes();
    
    //Realizar las validaciones de los datos del nuevo usuario
    if ($equipo->getEquCamCod() != 0 && $equipo->getEquCamPas() == '') {
        $objActMen->addError('Al elegir un CAMPEONATO, el campo CONTRASEÑA CAMPEONATO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
    }

    //Validamos que el nombre del equipo sea no nulo
	if($equipo->getEquNom() == '') {
        $objActMen->addError('El NOMBRE no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
	
	//Validamos que el lema del equipo sea no nulo
	if($equipo->getEquLema() == '') {
        $objActMen->addError('El LEMA no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
    
    if($equipo->getEquDinero() < 0) {
        $objActMen->addError('El DINERO no puede ser negativo');
        $objActMen->setHayErrores(TRUE);
	}    
    
    //Validamos los elementos del equipo
	if ($equipo->getEquPiloto1() == 0) {		
        $objActMen->addError('El PRIMER PILOTO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($equipo->getEquPiloto2() == 0) {
        $objActMen->addError('El SEGUNDO PILOTO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	} else if ($equipo->getEquPiloto2()  == $equipo->getEquPiloto1()) {
        $objActMen->addError('El SEGUNDO PILOTO no puede igual que el PRIMER PILOTO');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($equipo->getEquPiloto3() == 0) {
        $objActMen->addError('El SEGUNDO PILOTO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	} else if ($equipo->getEquPiloto3()  == $equipo->getEquPiloto1()) {
		$objActMen->addError('El SEGUNDO PILOTO no puede igual que el PRIMER PILOTO');
        $objActMen->setHayErrores(TRUE);
	} else if ($equipo->getEquPiloto3()  == $equipo->getEquPiloto2()) {
		$objActMen->addError('El TERCER PILOTO no puede igual que el SEGUNDO PILOTO');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($equipo->getEquPiloto4() == 0) {
		$objActMen->addError('El SEGUNDO PILOTO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	} else if ($equipo->getEquPiloto4()  == $equipo->getEquPiloto1()) {
		$objActMen->addError('El SEGUNDO PILOTO no puede igual que el PRIMER PILOTO');
        $objActMen->setHayErrores(TRUE);
	} else if ($equipo->getEquPiloto4()  == $equipo->getEquPiloto2()) {
		$objActMen->addError('El TERCER PILOTO no puede igual que el SEGUNDO PILOTO');
        $objActMen->setHayErrores(TRUE);
	} else if ($equipo->getEquPiloto4()  == $equipo->getEquPiloto3()) {
		$objActMen->addError('El CUARTO PILOTO no puede igual que el TERCER PILOTO');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($equipo->getEquEscuderia1() == 0) {
		$objActMen->addError('La PRIMER ESCUDERIA no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($equipo->getEquEscuderia2() == 0) {
		$objActMen->addError('La SEGUNDA ESCUDERIA no puede ser vacio');
        $objActMen->setHayErrores(TRUE);		
	} else if ($equipo->getEquEscuderia2() == $equipo->getEquEscuderia1()) {
		$objActMen->addError('La SEGUNDA ESCUDERIA no puede igual que La PRIMERA ESCUDERIA');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($equipo->getEquMotor1() == 0) {
		$objActMen->addError('El MOTOR no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}

	$apuestaCarrera = $equipo->getApuestaCarrera(); 
	if ($apuestaCarrera->getApuPilPrimero() == 0) {
		$objActMen->addError('El PRIMER CLASIFICADO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($apuestaCarrera->getApuPilSegundo() == 0) {
		$objActMen->addError('El SEGUNDO CLASIFICADO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}

	if ($apuestaCarrera->getApuPilTercero() == 0) {
		$objActMen->addError('El TERCER CLASIFICADO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($apuestaCarrera->getApuPosAlonso() == 0) {
		$objActMen->addError('La POSICION ALONSO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}

    /*
	if ($apuestaCarrera->getApuPosAlguersuari() == 0) {
		$objActMen->addError('La POSICION ALGUERSUARI no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
    */
	
    $apuestaMundial = $equipo->getApuestaMundial();
	if ($apuestaMundial->getApuPilCampeon() == 0) {
		$objActMen->addError('El CAMPEON DE PILOTOS no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($apuestaMundial->getApuEscCampeon() == 0) {
		$objActMen->addError('El CAMPEON DE CONSTRUCTORES no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}

	if ($apuestaMundial->getApuPilVueRap() == 0) {
		$objActMen->addError('El CAMPEON DE VUELTAS RAPIDAS no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
 
  return $objActMen;
    
 }
 
  /*
  * Función para validar el equipo al modificar
  */
 function validarFormularioModificar(equipo $equipo) {
    
    $objActMen = new actionMensajes();
    
    //Validamos que el nombre del equipo sea no nulo
	if($equipo->getEquNom() == '') {
        $objActMen->addError('El NOMBRE no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
	
	//Validamos que el lema del equipo sea no nulo
	if($equipo->getEquLema() == '') {
        $objActMen->addError('El LEMA no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
    
    if($equipo->getEquDinero() < 0) {
        $objActMen->addError('El DINERO no puede ser negativo');
        $objActMen->setHayErrores(TRUE);
	}    
    
    //Validamos los elementos del equipo
	if ($equipo->getEquPiloto1() == 0) {		
        $objActMen->addError('El PRIMER PILOTO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($equipo->getEquPiloto2() == 0) {
        $objActMen->addError('El SEGUNDO PILOTO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	} else if ($equipo->getEquPiloto2()  == $equipo->getEquPiloto1()) {
        $objActMen->addError('El SEGUNDO PILOTO no puede igual que el PRIMER PILOTO');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($equipo->getEquPiloto3() == 0) {
        $objActMen->addError('El SEGUNDO PILOTO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	} else if ($equipo->getEquPiloto3()  == $equipo->getEquPiloto1()) {
		$objActMen->addError('El SEGUNDO PILOTO no puede igual que el PRIMER PILOTO');
        $objActMen->setHayErrores(TRUE);
	} else if ($equipo->getEquPiloto3()  == $equipo->getEquPiloto2()) {
		$objActMen->addError('El TERCER PILOTO no puede igual que el SEGUNDO PILOTO');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($equipo->getEquPiloto4() == 0) {
		$objActMen->addError('El SEGUNDO PILOTO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	} else if ($equipo->getEquPiloto4()  == $equipo->getEquPiloto1()) {
		$objActMen->addError('El SEGUNDO PILOTO no puede igual que el PRIMER PILOTO');
        $objActMen->setHayErrores(TRUE);
	} else if ($equipo->getEquPiloto4()  == $equipo->getEquPiloto2()) {
		$objActMen->addError('El TERCER PILOTO no puede igual que el SEGUNDO PILOTO');
        $objActMen->setHayErrores(TRUE);
	} else if ($equipo->getEquPiloto4()  == $equipo->getEquPiloto3()) {
		$objActMen->addError('El CUARTO PILOTO no puede igual que el TERCER PILOTO');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($equipo->getEquEscuderia1() == 0) {
		$objActMen->addError('La PRIMER ESCUDERIA no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($equipo->getEquEscuderia2() == 0) {
		$objActMen->addError('La SEGUNDA ESCUDERIA no puede ser vacio');
        $objActMen->setHayErrores(TRUE);		
	} else if ($equipo->getEquEscuderia2() == $equipo->getEquEscuderia1()) {
		$objActMen->addError('La SEGUNDA ESCUDERIA no puede igual que La PRIMERA ESCUDERIA');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($equipo->getEquMotor1() == 0) {
		$objActMen->addError('El MOTOR no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}

	$apuestaCarrera = $equipo->getApuestaCarrera(); 
	if ($apuestaCarrera->getApuPilPrimero() == 0) {
		$objActMen->addError('El PRIMER CLASIFICADO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($apuestaCarrera->getApuPilSegundo() == 0) {
		$objActMen->addError('El SEGUNDO CLASIFICADO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}

	if ($apuestaCarrera->getApuPilTercero() == 0) {
		$objActMen->addError('El TERCER CLASIFICADO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
	
	if ($apuestaCarrera->getApuPosAlonso() == 0) {
		$objActMen->addError('La POSICION ALONSO no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
    
    /*    
	if ($apuestaCarrera->getApuPosAlguersuari() == 0) {
		$objActMen->addError('El POSICION ALGUERSUARI no puede ser vacio');
        $objActMen->setHayErrores(TRUE);
	}
    */    
	
  return $objActMen;
    
 }
 
/*
 * Funcion para realizar el registro del campeonato
 */
 function equ_registrar(equipo $equipo) {
	echo "Vamos a REGISTRAR el equipo";
	//Realizar las validaciones de los datos del nuevo equipo
	$objActMen = new actionMensajes();
	  
	$objActMen = validarFormulario($equipo);
    
    echo 'ERRORES: '.$objActMen->getHayErrores();
	  
	//Realizar las validaciones de los datos contra la informacion de la base de datos
    //Validar que la contraseña del campeonato, si la hay es correcta
    $objCampeonatoLN = new campeonatosLN();    
	if ($objActMen->getHayErrores()) {
        $objEquipoRet = $equipo;
	} else {
        echo 'Validamos el nombre y la pass del campeonato<br/>';	       
        if ($equipo->getEquCamCod() != 0 && $equipo->getEquCamPas() != '') {
            $objCampeonato = $objCampeonatoLN->loginCampeonato($equipo->getEquCamCod(),$equipo->getEquCamPas());
            if ($objCampeonato == NULL) {
                $objActMen->addError('ERROR: La contraseña del campeonato no es correcta');
                $objActMen->setHayErrores(TRUE);            
            }
        }
	}
    
    
    //Validar que no haya otro equipo con ese nombre
    $objEquiposLN = new equiposLN();
    if ($objActMen->getHayErrores()) {
        $objEquipoRet = $equipo;
	} else {
        echo 'Todo Correcto, vamos a validar el nombre<br/>';
        $objActMen = $objEquiposLN->verificarEquipoNombre($equipo->getEquNom());
	}
	  
	//Comprobar resultados de validaciones
    $objUtilidadesLN = new utilidadesLN();
	if ($objActMen->getHayErrores()) {
        $objEquipoRet = $equipo;
	} else {
        echo 'Todo Correcto, vamos a validar el precio<br/>';        
        //Validar que el dinero se ha calculado correctamente
        $precioPil1 = $objUtilidadesLN->getPrecioEntidad(EntidadPiloto,$equipo->getEquPiloto1(),$equipo->getEquCarrera());
        $precioPil2 = $objUtilidadesLN->getPrecioEntidad(EntidadPiloto,$equipo->getEquPiloto2(),$equipo->getEquCarrera());
        $precioPil3 = $objUtilidadesLN->getPrecioEntidad(EntidadPiloto,$equipo->getEquPiloto3(),$equipo->getEquCarrera());
        $precioPil4 = $objUtilidadesLN->getPrecioEntidad(EntidadPiloto,$equipo->getEquPiloto4(),$equipo->getEquCarrera());
        $precioEsc1 = $objUtilidadesLN->getPrecioEntidad(EntidadEscuderia,$equipo->getEquEscuderia1(),$equipo->getEquCarrera());
        $precioEsc2 = $objUtilidadesLN->getPrecioEntidad(EntidadEscuderia,$equipo->getEquescuderia2(),$equipo->getEquCarrera());
        $precioMot1 = $objUtilidadesLN->getPrecioEntidad(EntidadMotor,$equipo->getEquMotor1(),$equipo->getEquCarrera());
        
        //Comparamos los precios
        $precioEquipo = $precioPil1 + $precioPil2 + $precioPil3 + $precioPil4 +
                        $precioEsc1 + $precioEsc2 +
                        $precioMot1 ;
        
        echo 'Precio: '.$precioEquipo.'<br/>';
        $precioEquipo = EquipoPresupuesto - $precioEquipo;
        
        if ($precioEquipo != $equipo->getEquDinero()) {
            $objActMen->addError('ERROR validando el precio del equipo');
            $objActMen->setHayErrores(TRUE); 
        }    
	}
    
    //Si no hay errores, almacenamos el equipo
    $objEquiposLN = new equiposLN();
	if ($objActMen->getHayErrores()) {
        $objEquipoRet = $equipo;
	} else {
        echo 'Todo Correcto, vamos a validar el equipo<br/>';	       
        $equipo = $objEquiposLN->almacenarEquipo($equipo);
    }
	
    if ($equipo->getEquCod() != null) {
        $objActMen->addMensaje('Equipo Registrado con Exito');
        $objActMen->setHayMensajes(TRUE);
        $objEquipoRet = $equipo;
    }
      
	if ($objActMen->getHayErrores()) {
		$_SESSION[MensajesErro] = $objActMen;	 
	}
	 
  	if ($objActMen->getHayMensajes()) {
		$_SESSION[MensajesInfo] = $objActMen;	 
	}  
  
	return $objEquipoRet;
  
 }
 
 /*
 * Funcion para realizar la modificacion del campeonato
 * Version 2.2: 2011-04-02
 */
 function equ_modificar(equipo $equipo) {
    echo "Vamos a MODIFICAR el equipo";
    //Realizar las validaciones de los datos modificados del usuario
    $objActMen = new actionMensajes();
  
    $objActMen = validarFormularioModificar($equipo);
  
    //Validar que no haya otro equipo con ese nombre
    $objEquiposLN = new equiposLN();
    if ($objActMen->getHayErrores()) {
        $objEquipoRet = null;
    } else {
        echo 'Todo Correcto, vamos a validar el nombre<br/>';
        $objActMen = $objEquiposLN->verificarEquipoNombreCodigo($equipo->getEquNom(), $equipo->getEquCod());
	}
  
    //Validar numero de cambios correcto    
    if ($objActMen->getHayErrores()) {
        $objEquipoRet = null;
    } else {
        echo 'Todo Correcto, vamos a validar el numero de cambios<br/>';
        $objActMen = $objEquiposLN->verificarEquipoCambios($equipo);
	}
    
    
    //Validar presupuesto Válido
    if ($objActMen->getHayErrores()) {
        $objEquipoRet = null;
    } else {
        echo 'Todo Correcto, vamos a validar el Presupuesto<br/>';
        $objActMen = $objEquiposLN->verificarEquipoPresupuesto($equipo);
	}
    
    //Si no hay errores, almacenamos el equipo
    $objEquiposLN = new equiposLN();
	if ($objActMen->getHayErrores()) {        
        $objEquipoRet = null;
	} else {
        echo 'Todo Correcto, vamos a validar el equipo<br/>';	       
        $objEquipoRet = $objEquiposLN->actualizarEquipo($equipo);
        $objActMen->setHayMensajes(true);
        $objActMen->addMensaje('Equipo actualizado correctamente.<br/><b>SUERTE</b> en la próxima carrera');        
    }
    
    if ($objActMen->getHayErrores()) {
        $_SESSION[MensajesErro] = $objActMen;	 
    }
	 
 	if ($objActMen->getHayMensajes()) {
        $_SESSION[MensajesInfo] = $objActMen;	 
    }
    
    return $objEquipoRet;    
 }
 
 /*
  * Función para obtener la lista de campeonatos del usuario
  */
 function equ_ver_equipos($usuario) {
	 echo "Recuperamos la lista de equipo en los que participa el usuario";
	 $listaEquipos = array();
	 $objEquiposLN = new equiposLN();
	 
	 $listaEquipos = $objEquiposLN->getEquiposUsuario($usuario);
	 
	 return $listaEquipos;	 
}
 
 /*
  * Funcion para recuperar un equipo y mostrarlo en modo edición
  */
  function equ_ver_equipo($equipo, $usuario, $carrera) {
    echo "Recuperamos el equipo para verlo en modo edicion";
    $objActMen = new actionMensajes();    
    $objEquiposLN = new equiposLN();
	 
    $equipo = $objEquiposLN->getEquipoUsuario($equipo, $usuario, $carrera);
     
    if ($equipo == null) {                  
        $objActMen->addMensaje('No puede ver el equipo seleccionado');
        $objActMen->setHayMensajes(TRUE);         
    }
      
    if ($objActMen->getHayErrores()) {
        $_SESSION[MensajesErro] = $objActMen;	 
    }
	 
 	if ($objActMen->getHayMensajes()) {
        $_SESSION[MensajesInfo] = $objActMen;	 
    }                

    return $equipo;	 

 }
 
//Punto de entrada
if ( (isset($_POST[EquipoOperacion])) or (isset($_GET[EquipoOperacion])) )  {
	 
	 //Analizamos la operacion
	 $objActionMensajes = new actionMensajes();
     
 	 if ($_SESSION[EquipoSesion] != null) {
       unset($_SESSION[MensajesErro]);
	   unset($_SESSION[MensajesInfo]);
     }       
     
     unset($_SESSION[EquipoListaSesion]);
     unset($_SESSION[EquipoSesion]);
	 
     if (isset($_POST[EquipoOperacion])) {
		 $operacion = $_POST[EquipoOperacion];
	 } else {
		 $operacion = $_GET[EquipoOperacion];
	 }
	 
     if ($operacion == EquipoVerEquipos) {
		$destino = '../../../web/verEquipos.php';
		$objUsuario = $_SESSION[UsuarioSesion];
        
        $objUtilidadesLN = new utilidadesLN();
		$carrera = $objUtilidadesLN->getSiguienteCarrera(); //Obtener siguiente carrera
        $_SESSION[CarreraSesion] = $carrera;
		
        $listaEquipos = array();
		 
		$listaEquipos = equ_ver_equipos($objUsuario->getUsrCod());
		 
		if ($listaEquipos != NULL){
			 $_SESSION[EquipoListaSesion] = $listaEquipos;
		}
	 } else if ($operacion == EquipoVerEquipo) {
        $objUtilidadesLN = new utilidadesLN();
		$destino = '../../../web/verEquipo.php';
		$objUsuario = $_SESSION[UsuarioSesion];
		$equipo = $_GET['equ_cod'];
        $codigoCarrera = $_GET['equ_carrera'];
    
        $carrera = $objUtilidadesLN->getCarrera($codigoCarrera);      
        $objEquipo = equ_ver_equipo($equipo,$objUsuario->getUsrCod(),$carrera->getCarCod());
		 
		if ($objEquipo != NULL){
            $_SESSION[EquipoSesion] = $objEquipo;       		
    		$carrera = $objUtilidadesLN->getSiguienteCarrera(); //Obtener siguiente carrera
            $_SESSION[CarreraSesion] = $carrera;
    		$listaPilotos = $objUtilidadesLN->getPilotosCarrera($carrera->getCarCod());
    		$_SESSION[ListaPilotosSesion] = $listaPilotos;
    		$listaEscuderias = $objUtilidadesLN->getEscuderiasCarrera($carrera->getCarCod());
    		$_SESSION[ListaEscuderiasSesion] = $listaEscuderias;
    		$listaMotores = $objUtilidadesLN->getMotoresCarrera($carrera->getCarCod());
    		$_SESSION[ListaMotoresSesion] = $listaMotores;
    		$listaCampeonatos = $objUtilidadesLN->getCampeonatos($carrera->getCarCod());
    		$_SESSION[ListaCampeonatosSesion] = $listaCampeonatos;
            
            //Version 2.0; 2011-03-24
            $listaPosiciones= $objUtilidadesLN->getPosicionesPilotos();
		    $_SESSION[ListaPosicionesPilotosSesion] = $listaPosiciones;
		} else {
            $destino = '../../../web/verEquipos.php';		  
		}
	 } else if ($operacion == EquipoRegistrar) {
	    echo 'Dinero: '.$_POST["equ_dinero"];   
		$destino = '../../../web/verEquipos.php';        
        $objUsuario = $_SESSION[UsuarioSesion];
		$objEquipo = new equipo();
        $objApuestaCarrera = new apuestaCarrera();
        $objApuestaMundial = new apuestaMundial();
		$objEquipo = $objEquipo->equipoReg($_POST["equ_nombre"],$_POST["equ_lema"],$_POST["equ_dinero"],
                                            $objUsuario->getUsrCod(),$_POST["equ_cam_nombre"],$_POST["equ_cam_pass"],
                                            $_POST["equ_carrera"],
                                            $_POST["equ_piloto_1"],
                                            $_POST["equ_piloto_2"],
                                            $_POST["equ_piloto_3"],
                                            $_POST["equ_piloto_4"],
                                            $_POST["equ_escuderia_1"],
                                            $_POST["equ_escuderia_2"],
                                            $_POST["equ_motor_1"],
                                            $objApuestaCarrera->apuestaCarreraReg($_POST["equ_carrera"],
                                                                    $_POST["equ_piloto_primero"],
                                                                    $_POST["equ_piloto_segundo"],
                                                                    $_POST["equ_piloto_tercero"],
                                                                    $_POST["equ_pos_alonso"]),
                                                                    //$_POST["equ_pos_alguersuari"]),
                                            $objApuestaMundial->apuestaMundialReg($_POST["equ_campeon_piloto"],
                                                                    $_POST["equ_campeon_escuderia"],
                                                                    $_POST["equ_campeon_vuelta_rapida"]))
                                            ;
		
		$objEquipoRet = equ_registrar($objEquipo);
		
		if($objEquipoRet->getEquCod() != NULL) {
			$destino = '../../../clases/actions/equipos/equiposAction.php?equ_ope=equ_ver_equipos';
            $_SESSION[EquipoSesion] = $objEquipoRet;            
		} else {
            $destino = '../../../web/verEquipo.php';
			$_SESSION[EquipoSesion] = $objEquipo;
		}		

	 } else if ($operacion == EquipoModificar) {
        //Version 2.2: 2011-04-02
        $objUsuario = $_SESSION[UsuarioSesion];
		$objEquipo = new equipo();
        $objApuestaCarrera = new apuestaCarrera();
        $objApuestaMundial = new apuestaMundial();        
		$objEquipo = $objEquipo->equipoMod($_POST["equ_nombre"],$_POST["equ_lema"],$_POST["equ_dinero"],
                                            $objUsuario->getUsrCod(),
                                            $_POST["equ_cam_nombre"],$_POST["equ_cam_pass"],                                            
                                            $_POST["equ_carrera"],
                                            $_POST["equ_piloto_1"],
                                            $_POST["equ_piloto_2"],
                                            $_POST["equ_piloto_3"],
                                            $_POST["equ_piloto_4"],
                                            $_POST["equ_escuderia_1"],
                                            $_POST["equ_escuderia_2"],
                                            $_POST["equ_motor_1"],
                                            $objApuestaCarrera->apuestaCarreraReg($_POST["equ_carrera"],
                                                                    $_POST["equ_piloto_primero"],
                                                                    $_POST["equ_piloto_segundo"],
                                                                    $_POST["equ_piloto_tercero"],
                                                                    $_POST["equ_pos_alonso"]),
                                                                    //$_POST["equ_pos_alguersuari"]),
                                            //$objApuestaMundial->apuestaMundialReg($_POST["equ_campeon_piloto"],
                                            //                        $_POST["equ_campeon_escuderia"],
                                            //                        $_POST["equ_campeon_vuelta_rapida"]),
                                            $_POST["equ_cod"])
                                            ;
		
		$objEquipoRet = equ_modificar($objEquipo);        
        if($objEquipoRet != null) {
            $destino = '../../../clases/actions/equipos/equiposAction.php?equ_ope=equ_ver_equipos';
			$_SESSION[EquipoSesion] = $objEquipoRet;
		} else {		    
            $destino = '../../../clases/actions/equipos/equiposAction.php?'
                .EquipoOperacion.'='.EquipoVerEquipo.'&'
                .'equ_cod='.$objEquipo->getEquCod().'&'
                .'equ_carrera='.$objEquipo->getEquCarrera();                
			$_SESSION[EquipoSesion] = $objEquipo;
		}
	 
	 } else if ($operacion == EquipoVerRegistrar) {
		$destino = '../../../web/verEquipo.php';
        unset($_SESSION[EquipoSesion]);
		$objUtilidadesLN = new utilidadesLN();
		$carrera = $objUtilidadesLN->getSiguienteCarrera(); //Obtener siguiente carrera
        $_SESSION[CarreraSesion] = $carrera;
		$listaPilotos = $objUtilidadesLN->getPilotosCarrera($carrera->getCarCod());
		$_SESSION[ListaPilotosSesion] = $listaPilotos;
		$listaEscuderias = $objUtilidadesLN->getEscuderiasCarrera($carrera->getCarCod());
		$_SESSION[ListaEscuderiasSesion] = $listaEscuderias;
		$listaMotores = $objUtilidadesLN->getMotoresCarrera($carrera->getCarCod());
		$_SESSION[ListaMotoresSesion] = $listaMotores;
		$listaCampeonatos = $objUtilidadesLN->getCampeonatos($carrera->getCarCod());
		$_SESSION[ListaCampeonatosSesion] = $listaCampeonatos;
        
        //Version 2.0; 2011-03-24
        $listaPosiciones= $objUtilidadesLN->getPosicionesPilotos();
		$_SESSION[ListaPosicionesPilotosSesion] = $listaPosiciones;
        	 
	 } else {
			$resultado["Errores"] = "Operación no reconocida";
	 }
	 
	 //Analizamos el destino
     header("location:".$destino);
	 
 } else { //if (isset) 
 	echo "ERROR Acceso no permitido";
 }
?>