<?php
/*
 * Entidad usuario 
 * Autor: Jose Angel Martinez
 * Fecha: 2010/12/29
 * Versión: 1.0
 */

class usuario {
  
  //Datos del usuario.
  private $usr_cod;
  private $usr_nom;
  private $usr_ape_1;
  private $usr_ape_2;
  private $usr_email;
  private $usr_login;
  private $usr_pass;
  private $usr_pass_conf;
  
  //Constructores del usuario.
  function usuario(){}
  
  function usuarioLog($login, $pass){
      $this->usr_login = $login;
      $this->usr_pass = $pass; 
	  return $this;  
  }
  
  function usuarioReg($nom, $ape_1, $ape_2, $email, $login, $pass, $pass_conf) {
      $this->usr_nom = $nom;
      $this->usr_ape_1 = $ape_1;
      $this->usr_ape_2 = $ape_2;
      $this->usr_email = $email;
      $this->usr_login = $login;
      $this->usr_pass = $pass;
	  $this->usr_pass_conf = $pass_conf;
	  return $this;
  }
  
  function usuarioMod($cod, $nom, $ape_1, $ape_2, $email, $login, $pass, $pass_conf) {
      $this->usr_cod = $cod;
      $this->usr_nom = $nom;
      $this->usr_ape_1 = $ape_1;
      $this->usr_ape_2 = $ape_2;
      $this->usr_email = $email;
      $this->usr_login = $login;
      $this->usr_pass = $pass;
	  $this->usr_pass_conf = $pass_conf;
	  return $this;
  }
  
  function usuarioBD($cod, $nom, $ape_1, $ape_2, $email, $login, $pass) {
      $this->usr_cod = $cod;
      $this->usr_nom = $nom;
      $this->usr_ape_1 = $ape_1;
      $this->usr_ape_2 = $ape_2;
      $this->usr_email = $email;
      $this->usr_login = $login;
      $this->usr_pass = $pass;	  
	  return $this;
  }

  
  //Accesors de la clase.
  
  //usr_cod
  function getUsrCod() {
	  return $this->usr_cod;
	  }
  
  //usr_cod
  function setUsrCod($cod) {
	  $this->usr_cod = $cod;
  }
  
  //usr_nom
  function getUsrNom() {
	  return $this->usr_nom;
	  }
	    
  //usr_ape_1
  function getUsrApe1() {
	  return $this->usr_ape_1;
	  }
	  
  //usr_ape_2
  function getUsrApe2() {
	  return $this->usr_ape_2;
	  }
	  
  //usr_email
  function getUsrEmail() {
	  return $this->usr_email;
	  }
  
  //usr_login
  function getUsrLogin() {
	  return $this->usr_login;
	  }
  
  //usr_pass
  function getUsrPass() {
	return $this->usr_pass;
	}
  
  //conf_pass
  function getUsrPassConf() {
	return $this->usr_pass_conf;
	}
  
  }
?>
