<?php
		
/*
 * Clase con la conexion a la base de datos
 * Autor: Jose Angel Martinez
 * Fecha: 2011/02/07
 * Versión: 1.0
 */
 
class conexionDB
{ 
	//private $servidor = 'mysql.webcindario.com';
    private $servidor = 'localhost';
	//private $usuario = 'root';
	//private $password = 'ro751BX8';
    //private $password = 'root';
	private $base_datos = 'des_tem_2014';
    private $usuario = 'jamf1';
	private $password = 'qwer1234';
	//private $base_datos = 'jamf1';
	private $link;

	static $_instance;

	/*La función construct es privada para evitar que el objeto pueda ser creado mediante new*/
	private function __construct(){
		$this->setConexion();
		$this->conectar();
	}

	/*Método para establecer los parámetros de la conexión*/
	private function setConexion(){
		/*$conf = Conf::getInstance();		
		$this->servidor=$conf->getHostDB();
		$this->base_datos=$conf->getDB();
		$this->usuario=$conf->getUserDB();
		$this->password=$conf->getPassDB();
		*/
	}

	/*Evitamos el clonaje del objeto. Patrón Singleton*/
	private function __clone(){ }

	/*Función encargada de crear, si es necesario, el objeto. Esta es la función que debemos llamar desde fuera de la clase para instanciar el objeto, y así, poder utilizar sus métodos*/
	public static function getInstance(){
		if (!(self::$_instance instanceof self)){
			self::$_instance=new self();
		}
		return self::$_instance;
	}

	/*Realiza la conexión a la base de datos.*/
	private  function conectar(){
		$this->link=mysql_connect($this->servidor, $this->usuario, $this->password) or die('<br/>Conexion: '.mysql_error().'<br/>');
		mysql_select_db($this->base_datos,$this->link) or die('<br/>Set DB:'.mysql_error().'<br/>');	
	}
	
	public function cerrar() {
		mysql_close($this->link);	
	}	
		
	public function getLink() {
		return $this->link;
	}

} 
?>