<?php
	class centroEstadisticoItem{
	
		private $val_cod;
		private $val_des;
		private $val_val;
        private $val_pnt;
        
        //Atributos para el desglose de los puntos del piloto
        private $pnt_cla;
        private $pnt_pue;
        private $pnt_ade;
        private $pnt_vue;
        private $pnt_rec;         
		
        //Constructor
		function centroEstadisticoItem(){}
        
        function centroEstadisticoItemPilCar($cod, $des, $val, $pnt, $cla, $pue, $ade, $vue, $rec) {
            $this->val_cod = $cod;
            $this->val_des = $des;
            $this->val_val = $val;
            $this->val_pnt = $pnt;
            $this->pnt_cla = $cla;
            $this->pnt_pue = $pue;
            $this->pnt_ade = $ade;
            $this->pnt_vue = $vue;
            $this->pnt_rec = $rec;
            
            return $this;
        }
		
        function centroEstadisticoItemCar($cod, $des, $val, $pnt) {
            $this->val_cod = $cod;
            $this->val_des = $des;
            $this->val_val = $val;
            $this->val_pnt = $pnt;
            
            return $this;            
        }
        
        function centroEstadisticoItemGen($cod, $des, $pnt){
            $this->val_cod = $cod;
            $this->val_des = $des;            
            $this->val_pnt = $pnt;
            
            return $this;
            
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
        
        function getValPnt(){
			return $this->val_pnt;	
		}

        function getPntCla(){
			return $this->pnt_cla;	
		}
		
		function getPntPue(){
			return $this->pnt_pue;	
		}
		
		function getPntAde(){
			return $this->pnt_ade;
		}
        
        function getPntVue(){
			return $this->pnt_vue;	
		}
        
        function getPntRec(){
			return $this->pnt_rec;
       }
        
	}
?>