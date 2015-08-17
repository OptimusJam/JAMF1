<?php
/*
 * Objeto para el intercambio de mensajes de error
 * Autor: Jose Angel Martinez
 * Fecha: 2011/02/03
 * Versión: 1.0
 */

class actionMensajes {

	//Colecciones y variables de existencia
	private $hay_errores;
	private $col_errores;
	private $hay_mensajes;
	private $col_mensajes;
	private $destino;
	
	//Accesors
	public function getHayErrores() {
		return $this->hay_errores;
		}
	
	public function getColErrores() {
		return $this->col_errores;
		}
		
	public function getHayMensajes() {
		return $this->hay_mensajes;
		}
		
	public function getColMensajes() {
		return $this->col_mensajes;
		}
	
	public function setHayErrores($hayErrores) {
		$this->hay_errores = $hayErrores;
		}
	
	public function setColErrores($colErrores) {
		$this->col_errores = $colErrores;
		}
		
	public function setHayMensajes($hayMensajes) {
		$this->hay_mensajes = $hayMensajes;
		}
		
	public function setColMensajes($hayMensajes) {
		$this->col_mensajes = $hayMensajes;
		}
	
	public function getDestino() {
		return $this->destino;
		}
		
	public function setDestino($destino) {
		return $destino;
		}
	
	//Constructor
	public function actionMensajes() {
		$this->hay_errores = FALSE;		
		$this->hay_mensajes = FALSE;
		$this->col_errores = array();
		$this->col_mensajes = array();
		}
	
	public function addError($error) {
		array_push($this->col_errores,$error);
		}
		
	public function addMensaje($mensaje) {
		array_push($this->col_mensajes,$mensaje);
		}
}
?>