<?php
/*
 * Entidad carrera 
 * Autor: Jose Angel Martinez
 * Fecha: 2010/12/29
 * Versión: 1.0
 */

class carrera {
  
  //Datos del usuario.
  private $car_cod;
  private $car_nom;
  private $car_pai;
  private $car_cir;
  private $car_fec;
  //Version 7.0: atributo con la fecha limite para los cambios
  private $car_fec_lim_cam;
  
    function carrera() {}

	//Constructor
	function carreraBD($codigo, $nombre, $pais, $circuito, $fecha, $fecha_cambios){
		$this->car_cod = $codigo;
		$this->car_nom = $nombre;
		$this->car_pai = $pais;
		$this->car_cir = $circuito;
		$this->car_fec = $fecha;
        $this->car_fec_lim_cam = $fecha_cambios;
        return $this;
		}

	//Accesors
	function getCarCod() {
		return $this->car_cod;
		}

	function getCarNom() {
		return $this->car_nom;
		}
	
	function getCarPai() {
		return $this->car_pai;
		}
		
	function getCarCir() {
		return $this->car_cir;
		}
		
	function getCarFec() {
		return $this->car_fec;
		}
  
  	function getCarFecCambios() {
		return $this->car_fec_lim_cam;
		}
        
    //Setters
    function setCarCod($carCod) {
		$this->car_cod = $carCod;
		}

	function setCarNom($carNom) {
		$this->car_nom = $carNom;
		}
	
	function setCarPai($carPai) {
		$this->car_pai = $carPai;
	    }
		
	function setCarCir($carCir) {
		$this->car_cir = $carCir;
		}
		
	function setCarFec($carFec) {
		$this->car_fec = $carFec;
		}
  
  	function setCarFecCambios($carFecCambios) {
		$this->car_fec_lim_cam = $carFecCambios;
		}

}
?>