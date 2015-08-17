<?php
/*
 * Entidad usuario 
 * Autor: Jose Angel Martinez
 * Fecha: 2010/12/29
 * Versión: 1.0
 */

class campeonato {
  
  //Datos del usuario.
  private $cam_cod;
  private $cam_nom;
  private $cam_des;
  private $cam_pass;
  private $cam_pass_conf;
  private $usr_cod;
  
  //Constructores del usuario.
  function campeonato(){}
  
  function campeonatoReg($nom, $descripcion, $pass, $pass_conf, $usr_cod) {
      $this->cam_nom = $nom;
      $this->cam_des = $descripcion;
      $this->cam_pass = $pass;
	  $this->cam_pass_conf = $pass_conf;
	  $this->usr_cod = $usr_cod;
	  return $this;
  }
  
  function campeonatoMod($cod, $nom, $descripcion, $pass, $pass_conf, $usr_cod) {
      $this->cam_cod = $cod;
      $this->cam_nom = $nom;
      $this->cam_des = $descripcion;
      $this->cam_pass = $pass;
	  $this->cam_pass_conf = $pass_conf;
	  $this->usr_cod = $usr_cod;
	  return $this;
  }
  
  function campeonatoBD($cod, $nom, $descripcion, $pass, $usr_cod) {
      $this->cam_cod = $cod;
      $this->cam_nom = $nom;
      $this->cam_des = $descripcion;
      $this->cam_pass = $pass;
	  $this->usr_cod = $usr_cod;
	  return $this;
  }
  
  //Accesors de la clase.
  
  //cam_cod
  function getCamCod() {
	  return $this->cam_cod;
	  }
  
  //cam_nom
  function getCamNombre() {
	  return $this->cam_nom;
	  }
  
  //cam_des
  function getCamDes() {
	  return $this->cam_des;
	  }
  
  //usr_pass
  function getCamPass() {
	return $this->cam_pass;
	}
  
  //conf_pass
  function getCamPassConf() {
	return $this->cam_pass_conf;
	}
 
  //usr_cod
  function getCamUsrCod() {
	  return $this->usr_cod;
	  }
  
  function setCamCod($codigo) {
	  $this->cam_cod = $codigo;
	  }
  	 
  }
?>
