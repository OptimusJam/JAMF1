<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/campeonato.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/oad/equipos/equiposOAD.class.php');
    //Version 2.2: 2011-04-02
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/ln/utilidades/utilidadesLN.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceGenerico.class.php');
/*
 * Clase con la lógica de negocio para la parte de equipos
 * Autor: Jose Angel Martinez
 * Fecha: 2011/02/03
 * Versión: 1.0
 */
 
class equiposLN {
	
	/*
	 * Funcion para recuperar todos los campeonatos en los que esta involucrado un usuario
	 */
	public function getEquiposUsuario($codigo) {
		$objEquiposOAD = new equiposOAD();
		$listaEquipos = NULL;
		
		$carrera = 1; 
		
		$listaEquipos = $objEquiposOAD->getEquiposUsuario($codigo, $carrera);
		
		return $listaEquipos;
	}
    
    /*
     * Funcion que recupera un equipo para editarlo.
     */
    public function getEquipoUsuario($equipo, $usuario, $carrera) {
        $objEquiposOAD = new equiposOAD();
        $objEquipo = null;
        
        //Recuperamos los datos del equipo
        $objEquipo = $objEquiposOAD->getDatosEquipo($equipo, $usuario, $carrera);
        
        if ($objEquipo != null) {
            
            //Recuperamos los elementos del equipo
            $objEquipo = $objEquiposOAD->getComponentesEquipo($objEquipo);
        
            //Recuperamos las apuestas de la carrera del equipo
            $objEquipo = $objEquiposOAD->getApuestasCarreraEquipo($objEquipo);
            
            //Recuperamos las apuestas del mundiald del equipo
            $objEquipo = $objEquiposOAD->getApuestasMundialEquipo($objEquipo);
            
            //Version 2.2; 2011-04-02
            //Recuperamos los cambios
            $objCambios = $objEquiposOAD->getCambiosEquipo($objEquipo);
            
            //Establecemos los valores de los elementos no nulos de los cambios
                $objUtilidadesLN = new utilidadesLN();
                if ($objCambios == null || $objCambios->getPiloto1Cod() == null) {
                    $objCambios->setPiloto1Cod($objEquipo->getEquPiloto1());
                }
                $valor = $objUtilidadesLN->getPrecioEntidad(EntidadPiloto,$objCambios->getPiloto1Cod(),$carrera);
                $objCambios->setPiloto1Valor($valor);
                    
                if ($objCambios == null || $objCambios->getPiloto2Cod() == null) {
                    $objCambios->setPiloto2Cod($objEquipo->getEquPiloto2());
                }
                $valor = $objUtilidadesLN->getPrecioEntidad(EntidadPiloto,$objCambios->getPiloto2Cod(),$carrera);
                $objCambios->setPiloto2Valor($valor);
                
                if ($objCambios == null || $objCambios->getPiloto3Cod() == null) {
                    $objCambios->setPiloto3Cod($objEquipo->getEquPiloto3());
                }
                $valor = $objUtilidadesLN->getPrecioEntidad(EntidadPiloto,$objCambios->getPiloto3Cod(),$carrera);
                $objCambios->setPiloto3Valor($valor);
                
                if ($objCambios == null || $objCambios->getPiloto4Cod() == null) { 
                    $objCambios->setPiloto4Cod($objEquipo->getEquPiloto4());
                }
                $valor = $objUtilidadesLN->getPrecioEntidad(EntidadPiloto,$objCambios->getPiloto4Cod(),$carrera);
                $objCambios->setPiloto4Valor($valor);
                
                if ($objCambios == null || $objCambios->getEscuderia1Cod() == null) {
                    $objCambios->setEscuderia1Cod($objEquipo->getEquEscuderia1());
                }
                $valor = $objUtilidadesLN->getPrecioEntidad(EntidadEscuderia,$objCambios->getEscuderia1Cod(),$carrera);
                $objCambios->setEscuderia1Valor($valor);
                
                if ($objCambios == null || $objCambios->getEscuderia2Cod() == null) {
                    $objCambios->setEscuderia2Cod($objEquipo->getEquEscuderia2());
                }
                $valor = $objUtilidadesLN->getPrecioEntidad(EntidadEscuderia,$objCambios->getEscuderia2Cod(),$carrera);
                $objCambios->setEscuderia2Valor($valor);                
                
                if ($objCambios == null || $objCambios->getMotor1Cod() == null) {
                    $objCambios->setMotor1Cod($objEquipo->getEquMotor1());
                }
                $valor = $objUtilidadesLN->getPrecioEntidad(EntidadMotor,$objCambios->getMotor1Cod(),$carrera);
                $objCambios->setMotor1Valor($valor);                
            
                //Almacenamos los cambios
                $objEquipo->setCambios($objCambios);
    
        }
        
        return $objEquipo;
    }
    
    /*
	 * Funcion para comprobar si hay algun equipo con el nombre seleccionado	 
	 */
    public function verificarEquipoNombre($nombre) {
		$objActMen = new actionMensajes();
		$objEquiposOAD = new equiposOAD();
		
		$objActMen = $objEquiposOAD->verificarEquipoNombre($nombre);
		
		return $objActMen;		
	}
    
    /*
	 * Funcion para comprobar si hay algun equipo con el nombre seleccionado
     * Version 2.2: 2011-04-02	 
	 */
    public function verificarEquipoNombreCodigo($nombre, $codigo) {
		$objActMen = new actionMensajes();
		$objEquiposOAD = new equiposOAD();
		
		$objActMen = $objEquiposOAD->verificarEquipoNombreCodigo($nombre, $codigo);
		
		return $objActMen;		
	}
    
    /*
     * Función para verificar que el numero de cambios para una carrera es el correcto
     * Version 2.2: 201104-02
     */
    public function verificarEquipoCambios(equipo $equipo) {
        $objActMen = new actionMensajes();
        $objEquiposOAD = new equiposOAD();
        $objEquipoAnt = new equipo();
        $numCambios = 0;
        
        //Version 7.0
        $carreraAnt = $equipo->getEquCarrera()-1;
        
        if ($carreraAnt != 0) {
        
            //Recuperamos los componentes del equipo en la carrera anterior
            $objEquipoAnt->setEquCarrera($equipo->getEquCarrera()-1);        
            $objEquipoAnt->setEquCod($equipo->getEquCod());
            $objEquipoAnt = $objEquiposOAD->getComponentesEquipo($objEquipoAnt);
            
            //Comparmos los componentes 
            if ($objEquipoAnt->getEquPiloto1() != $equipo->getEquPiloto1() ) {
                $numCambios = $numCambios + 1; 
            }
            if ($objEquipoAnt->getEquPiloto2() != $equipo->getEquPiloto2() ) {
                $numCambios = $numCambios + 1;
            }
            if ($objEquipoAnt->getEquPiloto3() != $equipo->getEquPiloto3() ) {
                $numCambios = $numCambios + 1;
            }
            if ($objEquipoAnt->getEquPiloto4() != $equipo->getEquPiloto4() ) {
                $numCambios = $numCambios + 1;
            }
            if ($objEquipoAnt->getEquEscuderia1() != $equipo->getEquEscuderia1()) {
                $numCambios = $numCambios + 1;
            }
            if ($objEquipoAnt->getEquEscuderia2() != $equipo->getEquescuderia2()) {
                $numCambios = $numCambios + 1;
            }
            if ($objEquipoAnt->getEquMotor1() != $equipo->getEquMotor1()) {
                $numCambios = $numCambios + 1;
            }
        }
        
        echo 'Cambios: '.$numCambios;
        
        if ($numCambios > EquipoCambios) {
           $objActMen->setHayErrores(true);
           $objActMen->addError('Ha realizado más cambios que los permitidos para la carrera.'); 
        } else {
           $objActMen->setHayErrores(false);
        }
        
        return $objActMen;        
    }
    
    /*
     * Funcion para verificar el presupuesto del equipo
     * Version 2.2: 2011-04-02
     */
    public function verificarEquipoPresupuesto(equipo $equipo) {
        $objUtilidadesLN = new utilidadesLN();
        $objActMen = new actionMensajes();

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
        
        echo '<br/>Precio del equipo: '.$precioEquipo.'</br>';
        
        //Comprobamos que sea mayor que el mínimo
        if ($precioEquipo < EquipoPresupuestoMinimo) {
           $objActMen->setHayErrores(true);
           $objActMen->addError('El coste del equipo debe ser mayor que '.EquipoPresupuestoMinimo.'. Anulelos y vuelva a realizarlo'); 
        } else {
            $objActMen->setHayErrores(false);
        }
        
        return $objActMen;
    }
    
    /*
     * Funcion para almacenar los equipos
     */
    public function almacenarEquipo(equipo $equipo) {
        $objEquiposOAD = new equiposOAD();
        
        //Almacenamos los datos del equipo, si devuelve NULL, hay error
        $equipo = $objEquiposOAD->almacenarEquipoDatos($equipo);
        
        echo 'Codigo de equipo: '.$equipo->getEquCod();
        
        if ($equipo->getEquCod() != NULL) {
            //Almcenamos los elementos del equipo
            $objEquiposOAD->almacenarEquipoComponentes($equipo);
            
            //Almacenamos las apuestas para la carrera
            $objEquiposOAD->almacenarEquipoApuestasCarrera($equipo);
            
            //Almacenamos las apuestas par el mundial
            $objEquiposOAD->almacenarEquipoApuestasMundial($equipo);
        } 
        
        return $equipo;
    }
    
    /*
     * Funcion para actualizar los equipos
     * Version 2.2: 2011-04-02
     */
    public function actualizarEquipo(equipo $equipo) {
        $objEquiposOAD = new equiposOAD();
        
        //Almacenamos los datos del equipo, si devuelve NULL, hay error
        $objEquiposOAD->actualizarEquipoDatos($equipo);
        
        //Almcenamos los elementos del equipo
        $objEquiposOAD->actualizarEquipoComponentes($equipo);
            
        //Almacenamos las apuestas para la carrera
        $objEquiposOAD->actualizarEquipoApuestasCarrera($equipo);
        
        return $equipo;
    }    
}
?>