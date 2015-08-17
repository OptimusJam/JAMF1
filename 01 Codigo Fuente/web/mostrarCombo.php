<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/comboItem.class.php');
	
	function mostrarCombo($listaItems, $campo, $accion) {
	
		echo '<select id="'.$campo.'" name="'.$campo.'" onchange="'.$accion.'">';
        echo '<option value="0">Seleccione un valor...</option>';
		foreach($listaItems as $objComboItem) {
			echo '<option value="'.$objComboItem->getValCod().'">'.$objComboItem->getValDes().'</option>';
			if ($objComboItem->getValVal() != '') {
				//echo '<input type="hidden" id="'.$campo.'_'.$objComboItem->getValCod().'" value="'.$objComboItem->getValVal().'" />';
			}
		}
		echo '</select>';
		
		//Valores en campos hidden
        echo '<input type="hidden" id="'.$campo.'_0" value="0" />';
		foreach($listaItems as $objComboItem) {			
			if ( $objComboItem->getValVal() != '') {
				echo '<input type="hidden" id="'.$campo.'_'.$objComboItem->getValCod().'" value="'.$objComboItem->getValVal().'" />';
			}
		}
	}
    
    //Función para mostrar los precios de los items de la lista.
   	function mostrarPrecios($listaItems) {
   	    
        $sig = true;
        
        foreach($listaItems as $objComboItem) {
            if ($sig) {
                echo '<p style="display: table-row;">';
            }
            
            echo '<span style="width: 40%; display: table-cell;">'.$objComboItem->getValDes().'</span>';
            echo '<span style="width: 5%; display: table-cell;">'.$objComboItem->getValVal().'</span>';
            
            if ($sig) {
                echo '<span style="width: 5%; display: table-cell;">&nbsp;</span>';
                $sig = false;
            } else {                            
                echo '</p>';
                $sig = true;
            }                                                      
        }           
    }
?>