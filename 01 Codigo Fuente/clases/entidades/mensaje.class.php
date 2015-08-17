<?php
/*
 * Entidad mensaje del muro de mensajes de un campeonato 
 * Autor: Jose Angel Martinez
 * Fecha: 2011/07/06
 * Versión: 3.0
 */

class mensaje {

    //Elementos de la clase
    private $msg_cod;
    private $msg_usr_cod;
    private $msg_usr_nom;
    private $msg_cam_cod;
    private $msg_fec;
    private $msg_text;
    
    //Constructores
    function mensaje() {}
    
    function mensajeReg($usr_cod, $usr_nom, $cam_cod, $fec, $text) {
        $this->msg_usr_cod = $usr_cod;
        $this->msg_usr_nom = $usr_nom;
        $this->msg_cam_cod = $cam_cod;
        $this->msg_fec = $fec;
        $this->msg_text = $text;
        return $this; 
    }
    
    function mensajeBD($cod, $usr_cod, $usr_nom, $cam_cod, $fec, $text) {
        $this->msg_cod = $cod;        
        $this->msg_usr_cod = $usr_cod;
        $this->msg_usr_nom = $usr_nom;
        $this->msg_cam_cod = $cam_cod;
        $this->msg_fec = $fec;
        $this->msg_text = $text;
        return $this; 
    }
    
    //Getters y Setters
    
    //msg_cod
    function getMsgCod() {
        return $this->msg_cod;
    }
  
    //msg_cod
    function setMsgCod($cod) {
        $this->msg_cod = $cod;
    }

    //msg_usr_cod
    function getMsgUsrCod() {
        return $this->msg_usr_cod;
    }
  
    //msg_usr_cod
    function setMsgUsrCod($cod) {
        $this->msg_usr_cod = $cod;
    }

    //msg_usr_nom
    function getMsgUsrNom() {
        return $this->msg_usr_nom;
    }
  
    //msg_usr_nom
    function setMsgUsrNom($cod) {
        $this->msg_usr_nom = $cod;
    }
    
    //msg_cam_cod
    function getMsgCamCod() {
        return $this->msg_cam_cod;
    }
  
    //msg_cam_cod
    function setMsgCamCod($cod) {
        $this->msg_cam_cod = $cod;
    }

    //msg_fec
    function getMsgFec() {
        return $this->msg_fec;
    }
  
    //msg_fec
    function setMsgFec($cod) {
        $this->msg_fec = $cod;
    }

    //msg_text
    function getMsgText() {
        return $this->msg_text;
    }
  
    //msg_text
    function setMsgText($cod) {
        $this->msg_text = $cod;
    }
    
} //Class