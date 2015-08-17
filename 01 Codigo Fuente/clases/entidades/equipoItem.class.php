<?php
/*
 * Entidad equipoItem
 * Autor: Jose Angel Martinez
 * Fecha: 2010/12/29
 * Versión: 1.0
 */

class equipoItem {
	
	//Atributos
	private $ite_cod;
	private $ite_nom;
	private $ite_val;
	private $ite_pnt;
	
	function equipoItem($codigo,$nombre) {
		$this->ite_cod = $codigo;
		$this->ite_nom = $nombre;
		$this->ite_val = $valor;
		$this->ite_pnt = $puntos;
		return $this;
		}
		
	function getCodigo() {
		return $this->ite_cod;
		}

	function setCodigo($codigo) {
		$this->ite_cod = $codigo;
		}
		
	function getNombre() {
		return $this->ite_nombre;
		}
		
	function setNombre($nombre) {
		$this->ite_nom = $nombre;
		}
		
	function getValor() {
		return $this->ite_val;
		}
		
	function setValor($valor) {
		$this->ite_val = $valor;
		}
		
	function getPuntos() {
		return $this->ite_pnt; 
		}
	
	function setPuntos($puntos) {
		$this->ite_pnt = $puntos;
		}

	
	
}
?>