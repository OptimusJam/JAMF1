<?php    
/*
 * Entidad carrera 
 * Autor: Jose Angel Martinez
 * Fecha: 2010/12/29
 * Versión: 1.0
 */

class brokerItem {
  
  //Datos del usuario.  
  private $bro_pil_cod;
  private $bro_pil_nom;  
  private $bro_pil_media;
  private $bro_pil_lim_sup;
  private $bro_pil_lim_inf;
  private $bro_pil_bonus;
  
  //constructor
  function brokerItem($pil_cod, $pil_nom, $pil_media, $pil_lim_sup, $pil_lim_inf, $pil_bonus) {
        $this->bro_pil_cod = $pil_cod;
        $this->bro_pil_nom = $pil_nom;
        $this->bro_pil_media = $pil_media;
        $this->bro_pil_lim_sup = $pil_lim_sup;
        $this->bro_pil_lim_inf = $pil_lim_inf;
        $this->bro_pil_bonus = $pil_bonus;
    
  } 
  
  //Accessors  
  function getBroPilCod() {
        return $this->bro_pil_cod;
  }
  
  function getBroPilNom() {
        return $this->bro_pil_nom;
  }
  
  function getBroPilMedia() {
        return $this->bro_pil_media;
  }

  function getBroPilLimSup() {
        return $this->bro_pil_lim_sup;
  }

  function getBroPilLimInf() {
        return $this->bro_pil_lim_inf;
  }
  
  function getBroPilBonus() {
        return $this->bro_pil_bonus;
  }
}
?>