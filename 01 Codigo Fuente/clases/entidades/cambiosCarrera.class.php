<?php
/*
 * Entidad equipo
 * Autor: Jose Angel Martinez
 * Fecha: 2010/12/29
 * Versión: 2.2
 */
 
	include_once('apuestaCarrera.class.php');
    include_once('apuestaMundial.class.php');
    include_once('cambiosCarrera.class.php');

class cambiosCarrera {
  
  //Datos del cambio
  private $pil_1_cod;
  private $pil_2_cod;
  private $pil_3_cod;
  private $pil_4_cod;
  private $esc_1_cod;
  private $esc_2_cod;
  private $mot_1_cod;
  private $pil_1_val;
  private $pil_2_val;
  private $pil_3_val;
  private $pil_4_val;
  private $esc_1_val;
  private $esc_2_val;  
  private $mot_1_val;
  private $num_cambios;
  
  //constructor
  function cambioCarrera() {}
  
  function cambiosCarreraBD($pil_1,$pil_2,$pil_3,$pil_4,$esc_1,$esc_2,$mot_1) {
        $num_cam = 0;        
        $this->pil_1_cod = $pil_1;                
        $this->pil_2_cod = $pil_2;
        $this->pil_3_cod = $pil_3;
        $this->pil_4_cod = $pil_4;
        $this->esc_1_cod = $esc_1;
        $this->esc_2_cod = $esc_2;
        $this->mot_1_cod = $mot_1;
        
        if ($pil_1 != null){
            $num_cam = $num_cam + 1;
        }
        if ($pil_2 != null){
            $num_cam = $num_cam + 1;
        }
        if ($pil_3 != null){
            $num_cam = $num_cam + 1;
        }
        if ($pil_4 != null){
            $num_cam = $num_cam + 1;
        }
        if ($esc_1 != null){
            $num_cam = $num_cam + 1;
        }
        if ($esc_2 != null){
            $num_cam = $num_cam + 1;
        }
        if ($mot_1 != null){
            $num_cam = $num_cam + 1;
        }
        $this->num_cambios = $num_cam;
        
        echo 'Cambios: '.$num_cam;
        
        return $this;    
  }
  
  //Getters
  function getPiloto1Cod() {
        return $this->pil_1_cod;
  }
  
  function getPiloto1Val() {
        return $this->pil_1_val;
  }
  
  function getPiloto2Cod() {
        return $this->pil_2_cod;
  }

  function getPiloto2Val() {
        return $this->pil_2_val;
  }
  
  function getPiloto3Cod() {
        return $this->pil_3_cod;
  }

  function getPiloto3Val() {
        return $this->pil_3_val;
  }
  
  function getPiloto4Cod() {
        return $this->pil_4_cod;
  }

  function getPiloto4Val() {
        return $this->pil_4_val;
  }
  
  function getEscuderia1Cod() {
        return $this->esc_1_cod;
  }
  
  function getEscuderia1Val() {
        return $this->esc_1_val;
  }
  
  function getEscuderia2Cod() {
        return $this->esc_2_cod;
  }
  
  function getEscuderia2Val() {
        return $this->esc_2_val;
  }
  
  function getMotor1Cod() {
        return $this->mot_1_cod;
  }
  
  function getMotor1Val() {
        return $this->mot_1_val;
  }
  
  function getNumCambios() {
        return $this->num_cambios;
  }
  
  //Setters
  function setPiloto1Valor($valor) {
        $this->pil_1_val = $valor;    
  }
  
  function setPiloto2Valor($valor) {
        $this->pil_2_val = $valor;    
  }
  
  function setPiloto3Valor($valor) {
        $this->pil_3_val = $valor;    
  }
  
  function setPiloto4Valor($valor) {
        $this->pil_4_val = $valor;    
  }
  
  function setEscuderia1Valor($valor) {
        $this->esc_1_val = $valor;
  }
  
  function setEscuderia2Valor($valor) {
        $this->esc_2_val = $valor;    
  }
  
  function setMotor1Valor($valor) {
        $this->mot_1_val = $valor;    
  }
  
    function setPiloto1Cod($valor) {
        $this->pil_1_cod = $valor;    
  }
  
  function setPiloto2Cod($valor) {
        $this->pil_2_cod = $valor;    
  }
  
  function setPiloto3Cod($valor) {
        $this->pil_3_cod = $valor;    
  }
  
  function setPiloto4Cod($valor) {
        $this->pil_4_cod = $valor;    
  }
  
  function setEscuderia1Cod($valor) {
        $this->esc_1_cod = $valor;
  }
  
  function setEscuderia2Cod($valor) {
        $this->esc_2_cod = $valor;    
  }
  
  function setMotor1Cod($valor) {
        $this->mot_1_cod = $valor;    
  }
  
  
}
?>