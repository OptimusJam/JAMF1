<?php
	include_once('../../../clases/entidades/actionMensajes.class.php');
	include_once('../../../clases/entidades/campeonato.class.php');
	include_once('../../../clases/entidades/usuario.class.php');
    include_once('../../../clases/entidades/carrera.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/oad/campeonatos/campeonatosOAD.class.php');
/*
 * Clase con la lógica de negocio para la parte de usuarios
 * Autor: Jose Angel Martinez
 * Fecha: 2011/02/03
 * Versión: 1.0
 */
 
class campeonatosLN {
	
	/*
	 * Funcion para comprobar si hay algun campeonato con el nombre seleccionado	 
	 */
    public function verificarCampeonatoNombre($nombre) {
		$objActMen = new actionMensajes();
		$objCampeonatosOAD = new campeonatosOAD();
		
		$objActMen = $objCampeonatosOAD->verificarCampeonatoNombre($nombre);
		
		return $objActMen;		
	}
	
	/*
	 * Funcion para almacenar un usuario en la base de datos
	 */
	public function almacenarCampeonato(campeonato $objCampeonato) {
		$objCampeonatosOAD = new campeonatosOAD();
		
		$objCampeonatoRet = $objCampeonatosOAD->almacenarCampeonato($objCampeonato);
		
		return $objCampeonatoRet;		
	}
	
	/*
	 * Funcion para almacenar un usuario en la base de datos
	 */
	public function actualizarCampeonato(campeonato $objCampeonato) {
		$objCampeonatosOAD = new campeonatosOAD();
		
		$objCampeonatoRet = $objCampeonatosOAD->actualizarCampeonato($objCampeonato);
		
		return $objCampeonatoRet;		
	}
	
	/*
	 * Funcion para recuperar todos los campeonatos en los que esta involucrado un usuario
	 */
	public function getCampeonatosUsuario($codigo) {
		$objCampeonatosOAD = new campeonatosOAD();
		$listaCampeonatos = NULL;
		
		$listaCampeonatos = $objCampeonatosOAD->getCampeonatosUsuario($codigo);
		
		return $listaCampeonatos;		
	}
	
	/*
	 * Funcion que recupera un campeonato para editarlo
	 */
	public function getCampeonatoUsuario($codigo,$usuario) {
		$objCampeonatosOAD = new campeonatosOAD();
		$objCampeonato = NULL;
		
		$objCampeonato = $objCampeonatosOAD->getCampeonatoUsuario($codigo,$usuario);
		
		return $objCampeonato;
	}
    
    /*
     * Función que recupera un campeonato a partir del código y la contraseña
     */
    public function loginCampeonato($codigo,$pass) {
        $objCampeonatosOAD = new campeonatosOAD();
		$objCampeonato = NULL;
		
		$objCampeonato = $objCampeonatosOAD->loginCampeonato($codigo,$pass);
		
		return $objCampeonato;
        
    }
    
    /*
     * Método que devuelve la clasificacion de un campeonato
     * Version 2.1; 2011-03-27  
     * Version 6.0: 2012-12-30: Devuelve el tipo de clasificacion que se le indica en el tercer parámetro.
     */
    function getCampeonatoClasificacion($campeonato, $carrera, $tipoClasificacion){
        $objCampeonatosOAD = new campeonatosOAD();
		$listaClasificacion = NULL;
        
        $carreraCodigo = 0;
        if (is_object($carrera)) {
            $carreraCodigo = $carrera->getCarCod();
        }
        echo('Codigo de la carrera: '.$carreraCodigo.'</br>Codigo del campeonato: '.$campeonato.'</br>');
		
        if ($tipoClasificacion == CampClasRadioPuntos) {
            if ($carreraCodigo != 99) {
                $listaClasificacion = $objCampeonatosOAD->getCampeonatoClasificacion($campeonato, $carreraCodigo);
            } else {
                $listaClasificacion = $objCampeonatosOAD->getCampeonatoClasificacionGeneral($campeonato);
            }
        }
        
        if ($tipoClasificacion == CampClasRadioBroker) {
            if ($carreraCodigo != 99) {
                $listaClasificacion = $objCampeonatosOAD->getCampeonatoClasificacionBroker($campeonato, $carreraCodigo);
            } else {
                $listaClasificacion = $objCampeonatosOAD->getCampeonatoClasificacionGeneralBroker($campeonato);
            }
        }        
        
        if ($tipoClasificacion == CampClasRadioCampeones) {
            $listaClasificacion = $objCampeonatosOAD->getCampeonatoClasificacionCampeones($campeonato);
        }
		
		return $listaClasificacion;        
    }
    /*
     * Version 2.1; 2011-03-27: Fin
     */
	
	
	
		
} //Clase
?>