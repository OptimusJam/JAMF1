<?php
/*
 * Entidad equipoItem
 * Autor: Jose Angel Martinez
 * Fecha: 2011/03/27
 * Version: 2.1
 */

class clasificacionItem {
	
	//Atributos
    private $usr_nombre;
    private $posicion;
    private $equ_cod;
    private $equ_nombre; 
    private $car_cod; 
    private $cam_cod; 
    private $piloto_1_nombre; 
    private $piloto_1_puntos; 
    private $piloto_2_nombre; 
    private $piloto_2_puntos; 
    private $piloto_3_nombre;
    private $piloto_3_puntos;
    private $piloto_4_nombre;
    private $piloto_4_puntos;
    private $escuderia_1_nombre;
    private $escuderia_1_puntos;
    private $escuderia_2_nombre; 
    private $escuderia_2_puntos; 
    private $motor_1_nombre; 
    private $motor_1_puntos; 
    private $puntos_podio; 
    private	$puntos_pos_alonso; 
    private $puntos_pos_alguersuari; 
    private $puntos_total;
    
    //Constructor
    function clasificacionItem() {}
    
    function clasificacionItemCar($_usr_nombre, $_pos, $_equ_cod, $_equ_nombre, $_car_cod, $_cam_cod,
                                                $_piloto_1_nombre, $_piloto_1_puntos,
                                                $_piloto_2_nombre, $_piloto_2_puntos,
                                                $_piloto_3_nombre, $_piloto_3_puntos,
                                                $_piloto_4_nombre, $_piloto_4_puntos,
                                                $_escuderia_1_nombre, $_escuderia_1_puntos,
                                                $_escuderia_2_nombre, $_escuderia_2_puntos,
                                                $_motor_1_nombre, $_motor_1_puntos,
                                            	$_puntos_podio,	$_puntos_pos_alonso, //$_puntos_pos_alguersuari,
                                            	$_puntos_total){
                                            	   
        $this->usr_nombre = $_usr_nombre;
        $this->posicion = $_pos;
        $this->equ_cod = $_equ_cod;
        $this->equ_nombre = $_equ_nombre; 
        $this->car_cod = $_car_cod; 
        $this->cam_cod = $_cam_cod; 
        $this->piloto_1_nombre = $_piloto_1_nombre; 
        $this->piloto_1_puntos = $_piloto_1_puntos; 
        $this->piloto_2_nombre = $_piloto_2_nombre; 
        $this->piloto_2_puntos = $_piloto_2_puntos; 
        $this->piloto_3_nombre = $_piloto_3_nombre;
        $this->piloto_3_puntos = $_piloto_3_puntos;
        $this->piloto_4_nombre = $_piloto_4_nombre;
        $this->piloto_4_puntos = $_piloto_4_puntos;
        $this->escuderia_1_nombre = $_escuderia_1_nombre;
        $this->escuderia_1_puntos = $_escuderia_1_puntos;
        $this->escuderia_2_nombre = $_escuderia_2_nombre; 
        $this->escuderia_2_puntos = $_escuderia_2_puntos; 
        $this->motor_1_nombre = $_motor_1_nombre; 
        $this->motor_1_puntos = $_motor_1_puntos; 
        $this->puntos_podio = $_puntos_podio; 
        $this->puntos_pos_alonso = $_puntos_pos_alonso; 
        //$this->puntos_pos_alguersuari = $_puntos_pos_alguersuari; 
        $this->puntos_total = $_puntos_total;
                
        return $this;
    }
    
    function clasificacionItemGen($_usr_nombre, $_pos, $_equ_cod, $_equ_nombre, $_cam_cod, $_puntos_total){
        
        $this->usr_nombre = $_usr_nombre;
        $this->posicion = $_pos;
        $this->equ_cod = $_equ_cod;
        $this->equ_nombre = $_equ_nombre;         
        $this->cam_cod = $_cam_cod;
        $this->puntos_total = $_puntos_total;
        
        return $this;
    }
    
    function clasificacionItemCampeones($_usr_nombre, $_equ_cod, $_equ_nombre, $_cam_cod, $_puntos_total, $_car_cod){
        
        $this->usr_nombre = $_usr_nombre;
        $this->equ_cod = $_equ_cod;
        $this->equ_nombre = $_equ_nombre;         
        $this->cam_cod = $_cam_cod;
        $this->puntos_total = $_puntos_total;
        $this->car_cod = $_car_cod;
        return $this;
    }
        
    function getEquNombre() {
        return $this->equ_nombre;
    }
    
    function getEquCod() {
        return $this->equ_cod;
    }
    
    function getPuntosTotal() {
        return $this->puntos_total;        
    }
    
    function getPosicion() {
        return $this->posicion;
    }
    
    function getUsrNombre() {
        return $this->usr_nombre;        
    }
    
    function getPiloto1Nombre() {
        return $this->piloto_1_nombre;
    }
    
    function getPiloto1Valor() {
        return $this->piloto_1_puntos;
    }
    
    function getPiloto2Nombre() {
        return $this->piloto_2_nombre;
    }
    
    function getPiloto2Valor() {
        return $this->piloto_2_puntos;
    }
    
    function getPiloto3Nombre() {
        return $this->piloto_3_nombre;
    }
    
    function getPiloto3Valor() {
        return $this->piloto_3_puntos;
    }
    
    function getPiloto4Nombre() {
        return $this->piloto_4_nombre;
    }
    
    function getPiloto4Valor() {
        return $this->piloto_4_puntos;
    }
    
    function getEscuderia1Nombre() {
        return $this->escuderia_1_nombre;
    }
    
    function getEscuderia1Valor() {
        return $this->escuderia_1_puntos;
    }
    
    function getEscuderia2Nombre() {
        return $this->escuderia_2_nombre;
    }
    
    function getEscuderia2Valor() {
        return $this->escuderia_2_puntos;
    }
    
    function getMotor1Nombre() {
        return $this->motor_1_nombre;
    }
    
    function getMotor1Valor() {
        return $this->motor_1_puntos;
    }
    
    function getPuntosPosAlonso() {
        return $this->puntos_pos_alonso;
    }
    
    function getPuntosPosalguersuari() {
        return $this->puntos_pos_alguersuari;
    }
    
    function getPuntosPodio() {
        return $this->puntos_podio;
    }
    
    function getCarreraCod() {
        return $this->car_cod;
    }
}
?>