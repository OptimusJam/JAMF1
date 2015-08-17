<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/ln/utilidades/utilidadesLN.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/ln/centroEstadistico/centroEstadisticoLN.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceGenerico.class.php');
	
    $estado_session = session_status();
    if($estado_session == PHP_SESSION_NONE) {
        session_start();
    }
/*
 * Fichero para cargar los datos del broker
 * Autor: Jose Angel Martinez
 * Fecha: 2010/12/22
 * Versión: 1.0
 */
 
 /*
  * Método para la precarga de los datos de la carrera
  */
 function cen_est_ver() {
	 $listaCarreras = array();
	 $objUtilidadesLN = new utilidadesLN();
	 
	 $listaCarreras = $objUtilidadesLN->getCarreras();
	 
	 return $listaCarreras;	 
	 }
 
 
 //Punto de entrada
 if ( (isset($_POST[CentroEstadisticoOperacion])) or (isset($_GET[CentroEstadisticoOperacion])) )  {
	 
	 //Analizamos la operacion
	 $objActionMensajes = new actionMensajes();
 	 unset($_SESSION[MensajesErro] );
	 unset($_SESSION[MensajesInfo] );
	 if (isset($_POST[CentroEstadisticoOperacion])) {
		 $operacion = $_POST[CentroEstadisticoOperacion];
	 } else {
		 $operacion = $_GET[CentroEstadisticoOperacion];
	 }
	 
	 echo $operacion;
	 $destino = '../../../web/verCentroEstadistico.php';
	 
	 if ($operacion == CentroEstadisticoVer) {            
            $objUtilidadesLN = new utilidadesLN();
            $listaCarreras = $objUtilidadesLN->getCarreras();
            //array_push($listaCarreras, new comboItem(CodigoClasificacionGeneral,'Clasificacion General',CodigoClasificacionGeneral));
            
            if (isset($_POST[CentroEstadisticoCarrera])) {
                $codigoCarrera = $_POST[CentroEstadisticoCarrera];
                $carrera = $objUtilidadesLN->getCarrera($codigoCarrera);
            } else {                
                $carrera = $objUtilidadesLN->getAnteriorCarrera();
            }
            
            $centroEstadisticoLN = new CentroEstadisticoLN();
            
            $listaPilotos = $centroEstadisticoLN->getDatosPilotos($carrera);
            $listaEscuderias = $centroEstadisticoLN->getDatosEscuderias($carrera);
            $listaMotores = $centroEstadisticoLN->getDatosMotores($carrera);
            
            $_SESSION[ListaCarrerasSesion] = $listaCarreras;
            $_SESSION[CentroEstadisticoListaPilotos] = $listaPilotos;
            $_SESSION[CentroEstadisticoListaEscuderias] = $listaEscuderias;
            $_SESSION[CentroEstadisticoListaMotores] = $listaMotores;
            $_SESSION[CentroEstadisticoCarrera] = $carrera;            
            		 	
	 } else {
		echo 'Error';
		$resultado["Errores"] = "Operación no reconocida";
	 }
	 
	 header("location:".$destino);
	 
 } else { //if (isset) 
 	echo "ERROR Acceso no permitido";
 } 
 
 ?>