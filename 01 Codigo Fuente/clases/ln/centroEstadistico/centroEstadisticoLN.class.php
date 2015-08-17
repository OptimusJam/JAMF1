<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/campeonato.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/oad/centroEstadistico/centroEstadisticoOAD.class.php');
/*
 * Clase con la lógica de negocio para el centro estadistico
 * Autor: Jose Angel Martinez
 * Fecha: 2011/02/03
 * Versión: 1.0
 */
 
class centroEstadisticoLN {  
    
    /*
     * Función que recupera los datos de los pilotos
     */ 
    function getDatosPilotos($carrera) {
        $objCentroEstadisticoOAD = new centroEstadisticoOAD();
        $listaDatosPilotos = array();
        
        if ($carrera != 99) {
            $listaDatosPilotos = $objCentroEstadisticoOAD->getDatosPilotosCarrera($carrera);
        } else {
            
        }
                
        return $listaDatosPilotos;
    }
    
    /*
     * Función que recupera los datos de las escuderias
     */ 
    function getDatosEscuderias($carrera) {
        $objCentroEstadisticoOAD = new centroEstadisticoOAD();
        $listaDatosEscuderias = array();
        
        if ($carrera != 99) {
            $listaDatosEscuderias = $objCentroEstadisticoOAD->getDatosEscuderiasCarrera($carrera);
        } else {
            
        }        
        
        return $listaDatosEscuderias;        
    }
    
    /*
     * Función que recupera los datos de los motores
     */ 
    function getDatosMotores($carrera) {
        $objCentroEstadisticoOAD = new centroEstadisticoOAD();
        $listaDatosMotores = array();
        
        if ($carrera != 99) {
            $listaDatosMotores = $objCentroEstadisticoOAD->getDatosMotoresCarrera($carrera);   
        } else {
            
        }
        
        return $listaDatosMotores;
    }    
    
}
?>