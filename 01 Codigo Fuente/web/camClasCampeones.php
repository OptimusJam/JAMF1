<?php
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/comboItem.class.php');
?>
<!-- Article -->
            <div class="article">
                <?php
                
                    if ($objCampeonatoListaClasificacion != null) {
                        echo '<h2><span><a href="#">Campeonatos</a></span></h2>';
                        echo '<p>';
                        echo '<p style="width: 10%; float: left;">Carrera</p>';
                        echo '<p style="width: 40%; float: left;">Usuario</p>';
                	    echo '<p style="width: 40%; float: left;">Equipo</p>';
                        echo '<p style="width: 10%; float: left;">Puntos</p>';

    					foreach($objCampeonatoListaClasificacion as $objItemClasificacion){
						    echo '<p style="width: 10%; float: left;">'.$objItemClasificacion->getCarreraCod().'</p>';
                            echo '<p style="width: 40%; float: left;">'.$objItemClasificacion->getUsrNombre().'</p>';
    				       	echo '<p style="width: 40%; float: left;">'.$objItemClasificacion->getEquNombre().'</p>';				
    				        echo '<p style="width: 10%; float: left;">'.$objItemClasificacion->getPuntosTotal().'</p>';
                        }//foreach
                        echo '</p>';
                    }//if (hay datos)
                    else {
                        echo 'No hay datos';
                    }
				?>                
                <p>&nbsp;</p>             
            </div>            
            <!-- /article -->