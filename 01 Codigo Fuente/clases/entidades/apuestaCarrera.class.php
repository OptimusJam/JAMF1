<?php
/*
 * Clase con las apuestas de un equipo para una carrera
 * Autor: Jose Angel Martinez
 * Fecha: 2011/02/03
 * Versión: 1.0
 */

class apuestaCarrera {
	
	//Atributos de la clase	
	private $apu_equ_cod;
	private $apu_car_cod;
	private $apu_pil_primero;
	private $apu_pil_segundo;
	private $apu_pil_tercero;
	private $apu_pos_alonso;
	private $apu_pos_alguersuari;
	
	//Constructor
	function apuestaCarrera(){}
	
	//function apuestaCarreraReg($carrera, $primero, $segundo, $tercero, $pos_alonso, $pos_alguersuari){
	function apuestaCarreraReg($carrera, $primero, $segundo, $tercero, $pos_alonso){
		$this->apu_car_cod = $carrera;
		$this->apu_pil_primero = $primero;
		$this->apu_pil_segundo = $segundo;
		$this->apu_pil_tercero = $tercero;
		$this->apu_pos_alonso = $pos_alonso;
		//$this->apu_pos_alguersuari = $pos_alguersuari;
        return $this;
		}

	//function apuestaCarreraBD($equipo, $carrera, $primero, $segundo, $tercero, $pos_alonso, $pos_alguersuari){
    function apuestaCarreraBD($equipo, $carrera, $primero, $segundo, $tercero, $pos_alonso){
		$this->apu_equ_cod = $equipo;
		$this->apu_car_cod = $carrera;
		$this->apu_pil_primero = $primero;
		$this->apu_pil_segundo = $segundo;
		$this->apu_pil_tercero = $tercero;
		$this->apu_pos_alonso = $pos_alonso;
		//$this->apu_pos_alguersuari = $pos_alguersuari;
		return $this;
		}
		
	//accessors
    function getApuEquCod(){
        return $this->apu_equ_cod;        
    }
    
    function setApuEquCod($equipo){
        $this->apu_equ_cod = $equipo;
    }
    
    function getApuPilPrimero() {
        return $this->apu_pil_primero;        
    }
	
    function getApuPilSegundo() {
        return $this->apu_pil_segundo;        
    }
    
    function getApuPilTercero() {
        return $this->apu_pil_tercero;        
    }
    
    function getApuPosAlonso() {
        return $this->apu_pos_alonso;
    }
    
    function getApuPosAlguersuari() {
        return $this->apu_pos_alguersuari;        
    }
    
    function setApuPilPrimero($primero) {
        $this->apu_pil_primero = $primero;        
    }
	
    function setApuPilSegundo($segundo) {
        $this->apu_pil_segundo = $segundo;        
    }
    
    function setApuPilTercero($tercero) {
        $this->apu_pil_tercero = $tercero;        
    }
    
    function setApuPosAlonso($posAlonso) {
        $this->apu_pos_alonso = $posAlonso;
    }
    
    function setApuPosAlguersuari($posAlguer) {
        $this->apu_pos_alguersuari = $posAlguer;
    }
	
}
?>