<?php
/*
 * Entidad equipo
 * Autor: Jose Angel Martinez
 * Fecha: 2010/12/29
 * Versión: 1.0
 */
 
	include_once('apuestaCarrera.class.php');
    include_once('apuestaMundial.class.php');
    include_once('cambiosCarrera.class.php');

class equipo {
  
  //Datos del equipo
  private $equ_cod;
  private $equ_nom;
  private $equ_lema;
  private $equ_dinero;
  private $equ_usr_cod;
  private $equ_cam_cod;
  private $equ_cam_pas;
  private $equ_cam_nom;
  private $equ_carrera;
  
  //Elementos del equipo
  private $equ_pil_1;
  private $equ_pil_2;
  private $equ_pil_3;
  private $equ_pil_4;
  private $equ_esc_1; 
  private $equ_esc_2;
  private $equ_mot_1;
  
  //Apuestas para la carrera
  private $equ_apuestas_carrera;
  
  //Apuestas para el mundial
  private $equ_apuestas_mundial;
  
  //Version 2.2; 2011-04-02
  //Cambios
  private $equ_cambios;

  //Constructores del usuario.
  function equipo(){}
  
  function equipoReg($nombre, $lema, $dinero, $usuario, $cam_cod, $cam_pas, $carrera, $piloto1, $piloto2, $piloto3, $piloto4, $escuderia1, $escuderia2, $motor1, $apuestaCarrera, $apuestaMundial) {
		$this->equ_nom = $nombre;
		$this->equ_lema = $lema;
		$this->equ_dinero = $dinero;
		$this->equ_usr_cod = $usuario;
		$this->equ_cam_cod = $cam_cod;
        $this->equ_cam_pas = $cam_pas;        
		$this->equ_carrera = $carrera;
		$this->equ_pil_1 = $piloto1;
		$this->equ_pil_2 = $piloto2;
		$this->equ_pil_3 = $piloto3;
		$this->equ_pil_4 = $piloto4;
		$this->equ_esc_1 = $escuderia1; 
		$this->equ_esc_2 = $escuderia2;
		$this->equ_mot_1 = $motor1;
        $this->equ_apuestas_carrera = $apuestaCarrera;
        $this->equ_apuestas_mundial = $apuestaMundial;
		return $this;
  }
  
  function equipoMod($nombre, $lema, $dinero, $usuario, $cam_cod, $cam_pas, $carrera, $piloto1, $piloto2, $piloto3, $piloto4, $escuderia1, $escuderia2, $motor1, $apuestaCarrera, $codigo) {
	  	$this->equ_cod = $codigo;
		$this->equ_nom = $nombre;
		$this->equ_lema = $lema;
		$this->equ_dinero = $dinero;
		$this->equ_usr_cod = $usuario;
		$this->equ_cam_cod = $cam_cod;
        //$this->equ_cam_pas = $cam_pas; 
		$this->equ_carrera = $carrera;
		$this->equ_pil_1 = $piloto1;
		$this->equ_pil_2 = $piloto2;
		$this->equ_pil_3 = $piloto3;
		$this->equ_pil_4 = $piloto4;
		$this->equ_esc_1 = $escuderia1; 
		$this->equ_esc_2 = $escuderia2;
		$this->equ_mot_1 = $motor1;
        $this->equ_apuestas_carrera = $apuestaCarrera;
        //$this->equ_apuestas_mundial = $apuestaMundial;
		return $this;
  }
  
  function equipoLista($nombre, $lema, $usuario, $campeonato, $carrera, $codigo) {
	  $this->equ_cod = $codigo;
	  $this->equ_nom = $nombre;
	  $this->equ_lema = $lema;
	  $this->equ_usr_cod = $usuario;
	  $this->equ_cam_nom = $campeonato;
	  $this->equ_carrera = $carrera;
	  return $this;
	  }
  
  //Accesors de la clase.
  
  //equ_cod
  function getEquCod() {
	  return $this->equ_cod;
	  }

  function getEquNom() {
	  return $this->equ_nom;
	  }
  
  function getEquLema() {
	  return $this->equ_lema;
	  }
  
  function getEquDinero() {
	  return $this->equ_dinero;
	  }
	  
  function getEquUsuario() {
	  return $this->equ_usr_cod;
	  }
  
  function getEquCamCod() {	  
	  return $this->equ_cam_cod;
	  }
   
  function getEquCamPas() {	  
	  return $this->equ_cam_pas;
	  } 

  function getEquCamNom() {	  
	  return $this->equ_cam_nom;
	  } 
	  
  function getEquCarrera() {	  
	  return $this->equ_carrera;
	  }
  
  function getEquPiloto1() {
	  return $this->equ_pil_1;
	  }
  
  function getEquPiloto2() {
	  return $this->equ_pil_2;
	  }
	  
  function getEquPiloto3() {
	  return $this->equ_pil_3;
	  }
	  
  function getEquPiloto4() {
	  return $this->equ_pil_4;
	  }	 
	  
  function getEquEscuderia1() {
	  return $this->equ_esc_1;
	  }
  
  function getEquEscuderia2() {
	  return $this->equ_esc_2;
	  }
  
  function getEquMotor1() {
	  return $this->equ_mot_1;
	  }
      
  function getApuestaCarrera() {
        return $this->equ_apuestas_carrera; 
      }
  
  function getApuestaMundial() {
        return $this->equ_apuestas_mundial; 
      }
  
  //Version 2.2; 2011-04-02
  function getCambios() {
        return $this->equ_cambios; 
      }
      
  function setEquCod($codigo) {
        $this->equ_cod = $codigo;
    }
  
  function setEquNom($nombre) {
	  $this->equ_nom = $nombre;
	  }
  
  function setEquLema($lema) {
	  $this->equ_lema = $lema;
	  }
  
  function setEquDinero($dinero) {
	  $this->equ_dinero = $dinero;
	  }
	  
  function setEquUsuario($usuario) {
	  $this->equ_usr_cod = $usuario;
	  }
  
  function setEquCamCod($campeonato) {	  
	  $this->equ_cam_cod = $campeonato;
	  }
   
  function setEquCamPas($campeonato_pass) {
	  $this->equ_cam_pas = $campeonato_pass;
	  } 

  function setEquCamNom($campeonato_nombre) {	  
	  $this->equ_cam_nom = $campeonato_nombre;
	  } 
	  
  function setEquCarrera($carrera) {
	  $this->equ_carrera = $carrera;
	  }
  
  function setEquPiloto1($piloto1) {
	  $this->equ_pil_1 = $piloto1;
	  }
  
  function setEquPiloto2($piloto2) {
	  $this->equ_pil_2 = $piloto2;
	  }
	  
  function setEquPiloto3($piloto3) {
	  $this->equ_pil_3 = $piloto3;
	  }
	  
  function setEquPiloto4($piloto4) {
	  $this->equ_pil_4 = $piloto4;
	  }	 
	  
  function setEquEscuderia1($escuderia1) {
	  $this->equ_esc_1 = $escuderia1;
	  }
  
  function setEquEscuderia2($escuderia2) {
	  $this->equ_esc_2 = $escuderia2;
	  }
  
  function setEquMotor1($motor1) {
	  $this->equ_mot_1 = $motor1;
	  }
      
  function setApuestaCarrera(apuestaCarrera $apuestaCarrera) {
      $this->equ_apuestas_carrera = $apuestaCarrera;  
      }
  
  function setApuestaMundial(apuestaMundial $apuestaMundial) {
      $this->equ_apuestas_mundial = $apuestaMundial; 
      }
  
  //Version 2.2; 2011-04-02
  function setCambios(cambiosCarrera $cambios) {
      $this->equ_cambios = $cambios; 
      }
  
  }
?>
