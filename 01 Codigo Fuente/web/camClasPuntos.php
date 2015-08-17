<?php
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/comboItem.class.php');
?>
<!-- Article -->
            <div class="article">
                <?php
                
                    if ($objCampeonatoListaClasificacion != null) {
                        echo '<h2><span><a href="#">Campeonatos</a></span></h2>';
                        echo '<p>';
                        echo '<p style="width: 5%; float: left;">Pos</p>';
                        echo '<p style="width: 40%; float: left;">Usuario</p>';
                	    echo '<p style="width: 40%; float: left;">Equipo</p>';
                        echo '<p style="width: 15%; float: left;">Puntos</p>';

    					foreach($objCampeonatoListaClasificacion as $objItemClasificacion){
						    echo '<p style="width: 5%; float: left;">'.$objItemClasificacion->getPosicion().'</p>';
                            if ($esClasifGen) {
                                echo '<p style="width: 40%; float: left;">'.$objItemClasificacion->getUsrNombre().'</p>';
                            } else {
                                echo '<p style="width: 40%; float: left;">'
                                .'<a href="#'.$objItemClasificacion->getEquCod().'" name="'.$objItemClasificacion->getEquCod().'" 
                        	       onClick="MostrarOcultar(\''.$objItemClasificacion->getEquCod().'\',
                                   \'mostrar_'.$objItemClasificacion->getEquCod().'\',
                                   \'ocultar_'.$objItemClasificacion->getEquCod().'\')"
                        	       style="display:block;" 
                                   id="mostrar_'.$objItemClasificacion->getEquCod().'">'                            
                                .$objItemClasificacion->getUsrNombre()
                                .'</a>'
                                .'<a href="#'.$objItemClasificacion->getEquCod().'" 
                        	       onClick="MostrarOcultar(\''.$objItemClasificacion->getEquCod().'\',
                                   \'mostrar_'.$objItemClasificacion->getEquCod().'\',
                                   \'ocultar_'.$objItemClasificacion->getEquCod().'\')"
                        	       style="display:none;" 
                                   id="ocultar_'.$objItemClasificacion->getEquCod().'">'                            
                                .$objItemClasificacion->getUsrNombre()
                                .'</a>'                                                            
                                .'</p>';
                            }
    				       	echo '<p style="width: 40%; float: left;">'.$objItemClasificacion->getEquNombre().'</p>';				
    				        echo '<p style="width: 15%; float: left;">'.$objItemClasificacion->getPuntosTotal().'</p>';
                            
                            if (!$esClasifGen) {
                                echo '<div id="'.$objItemClasificacion->getEquCod().'" style="display:none;">';
                                echo '<p style="width: 25%; display: table-cell;"><b>Puntos de pilotos:</b></p>';
                                echo '<p style="display: table-row;">';                            
                                echo '<span style="width: 25%; display: table-cell;">'.$objItemClasificacion->getPiloto1Nombre().'&nbsp;</span>';
                                echo '<span style="width: 25%; display: table-cell;">'.$objItemClasificacion->getPiloto2Nombre().'&nbsp;</span>';
                                echo '<span style="width: 25%; display: table-cell;">'.$objItemClasificacion->getPiloto3Nombre().'&nbsp;</span>';
                                echo '<span style="width: 25%; display: table-cell;">'.$objItemClasificacion->getPiloto4Nombre().'&nbsp;</span>';
                                echo '</p>';
                                echo '<p style="display: table-row;">'; 
                                echo '<span style="width: 25%; display: table-cell;">'.$objItemClasificacion->getPiloto1Valor().'&nbsp;</span>';
                                echo '<span style="width: 25%; display: table-cell;">'.$objItemClasificacion->getPiloto2Valor().'&nbsp;</span>';
                                echo '<span style="width: 25%; display: table-cell;">'.$objItemClasificacion->getPiloto3Valor().'&nbsp;</span>';
                                echo '<span style="width: 25%; display: table-cell;">'.$objItemClasificacion->getPiloto4Valor().'&nbsp;</span>';
                                echo '</p>';
                                echo '<br/>';
                                echo '<p style="width: 25%; display: table-cell;"><b>Puntos de Escuderias:</b></p>';
                                echo '<p style="display: table-row;">';                            
                                echo '<span style="width: 35%; display: table-cell;">'.$objItemClasificacion->getEscuderia1Nombre().'&nbsp;</span>';
                                echo '<span style="width: 35%; display: table-cell;">'.$objItemClasificacion->getEscuderia2Nombre().'&nbsp;</span>';
                                echo '<span style="width: 30%; display: table-cell;">&nbsp;</span>';
                                echo '</p>';
                                echo '<p style="display: table-row;">'; 
                                echo '<span style="width: 35%; display: table-cell;">'.$objItemClasificacion->getEscuderia1Valor().'&nbsp;</span>';
                                echo '<span style="width: 35%; display: table-cell;">'.$objItemClasificacion->getEscuderia2Valor().'&nbsp;</span>';
                                echo '<span style="width: 30%; display: table-cell;">&nbsp;</span>';
                                echo '</p>';
                                echo '<br/>';
                                echo '<p style="width: 25%; display: table-cell;"><b>Puntos de Motor:</b></p>';
                                echo '<p style="display: table-row;">';                            
                                echo '<span style="width: 45%; display: table-cell;">'.$objItemClasificacion->getMotor1Nombre().'&nbsp;</span>';                            
                                echo '<span style="width: 55%; display: table-cell;">&nbsp;</span>';
                                echo '</p>';
                                echo '<p style="display: table-row;">'; 
                                echo '<span style="width: 45%; display: table-cell;">'.$objItemClasificacion->getMotor1Valor().'&nbsp;</span>';                            
                                echo '<span style="width: 55%; display: table-cell;">&nbsp;</span>';
                                echo '</p>';
                                echo '<br/>';
                                echo '<p style="width: 25%; display: table-cell;"><b>Puntos de Apuestas:</b></p>';
                                echo '<p style="display: table-row;">';                            
                                echo '<span style="width: 35%; display: table-cell;">'.PuntosPosicionAlonso.'&nbsp;</span>';
                                echo '<span style="width: 40%; display: table-cell;">'.PuntosPosicionDeLaRosa.'&nbsp;</span>';
                                echo '<span style="width: 25%; display: table-cell;">'.PuntosPodio.'&nbsp;</span>';
                                echo '</p>';
                                echo '<p style="display: table-row;">'; 
                                echo '<span style="width: 35%; display: table-cell;">'.$objItemClasificacion->getPuntosPosAlonso().'&nbsp;</span>';
                                echo '<span style="width: 40%; display: table-cell;">'.$objItemClasificacion->getPuntosPosalguersuari().'&nbsp;</span>';
                                echo '<span style="width: 25%; display: table-cell;">'.$objItemClasificacion->getPuntosPodio().'&nbsp;</span>';
                                echo '</p>';
                                echo '</div>';
                            } //if (clasif gen))                                  		
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