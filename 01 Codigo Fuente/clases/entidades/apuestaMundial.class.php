<?php
/*
 * Clase con las apuestas de un equipo para una carrera
 * Autor: Jose Angel Martinez
 * Fecha: 2011/02/03
 * Versión: 1.0
 */

class apuestaMundial {
	
	//Atributos de la clase	
	private $apu_equ_cod;
	private $apu_pil_campeon;
	private $apu_esc_campeon;
	private $apu_pil_vuelta_rapida;
		
	//Constructor
	function apuestaMundial(){}
	
	function apuestaMundialReg($primero, $segundo, $tercero){
		$this->apu_pil_campeon = $primero;
		$this->apu_esc_campeon = $segundo;
		$this->apu_pil_vuelta_rapida = $tercero;
        return $this;	
		}
	
	function apuestaMundialBD($equipo, $primero, $segundo, $tercero){
		$this->apu_equ_cod = $equipo;
		$this->apu_pil_campeon = $primero;
		$this->apu_esc_campeon = $segundo;
        $this->apu_pil_vuelta_rapida = $tercero;
        return $this;	
		}
		
	//accessors
    function getApuEquCod(){
        return $this->apu_equ_cod;        
    }
    
    function setApuEquCod($equipo){
        $this->apu_equ_cod = $equipo;
    }
    
    function getApuPilCampeon() {
        return $this->apu_pil_campeon;        
    }
    
    function getApuEscCampeon() {
        return $this->apu_esc_campeon;        
    }
    
    function getApuPilVueRap() {
        return $this->apu_pil_vuelta_rapida;
    }
    
    function setApuPilCampeon($apuPilCampeon) {
        $this->apu_pil_campeon = $apuPilCampeon;        
    }
    
    function setApuEscCampeon($apuEscCampeon) {
        $this->apu_esc_campeon = $apuEscCampeon;        
    }
    
    function setApuPilVueltaRapìda($apuPilVueltaRapida) {
        $this->apu_pil_vuelta_rapida = $apuPilVueltaRapida;
    }	
}