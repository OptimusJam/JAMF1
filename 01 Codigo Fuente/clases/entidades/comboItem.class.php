<?php
	class comboItem{
	
		private $val_cod;
		private $val_des;
		private $val_val;
		
		function comboItem($codigo, $desc, $valor){
			$this->val_cod = $codigo;
			$this->val_val = $valor;
			$this->val_des = $desc;
		}
		
		function getValVal(){
			return $this->val_val;	
		}
		
		function getValDes(){
			return $this->val_des;	
		}
		
		function getValCod(){
			return $this->val_cod;	
		}	
	}
?>