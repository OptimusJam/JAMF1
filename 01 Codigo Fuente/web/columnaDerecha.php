<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceGenerico.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	$objUsuario = $_SESSION[UsuarioSesion];
?>

            <div id="col-in">

                <!-- About Me -->
                <h3><span>Acceso de Usuarios</span></h3>

                <div id="about-me">
                    <p>
			<form action="../clases/actions/usuarios/usuariosAction.php" method="post" name="form_login">
			<label>Registrado como:
			<span id="search-input-out">
            	<?php
                	echo $objUsuario->getUsrLogin();
				?>
            </span></label>			
			<input type="submit" name="form_login_submit" value="Salir"/>
			<input type="hidden" name="usr_ope" value="<?php echo UsuarioSalir; ?>" />
			</form>
		    </p>
                </div> <!-- /about-me -->

                <hr class="noscreen" />

                <!-- Category -->
                <h3><span>Menu</h3>

                <ul id="category">
					<!-- Opcion seleccionada
					<li id="category-active"><a href="#">Selected category</a></li>
					-->
                    <li><a href="verUsuario.php">Modificar Usuario</a></li>
                    <li><a href="../clases/actions/equipos/equiposAction.php?equ_ope=<?php echo EquipoVerEquipos;?>">Equipos</a></a></li>				
                    <li><a href="../clases/actions/campeonatos/campeonatosAction.php?cam_ope=<?php echo CampeonatoLista;?>">Campeonatos</a></li>
                    <li><a href="../clases/actions/centroEstadistico/centroEstadisticoAction.php?<?php echo CentroEstadisticoOperacion.'='.CentroEstadisticoVer;?>">Centro Estadístico</a></li>
                    <!-- Version 2.2 -->
                    <li><a href="../clases/actions/broker/brokerAction.php?<?php echo BrokerOperacion.'='.BrokerVer;?>">Broker</a></li>
                </ul>

                <hr class="noscreen" />

                <!-- Links -->
                <h3><span>Enlaces</span></h3>

                <ul id="links">
                    <li><a href="http://www.geetcha.com">GEETCHA!</a></li>
                    <li><a href="#">Enlace 2</a></li>
                    <li><a href="#">Enlace 3</a></li>
                    <li><a href="#">Enlace 4</a></li>
                    <li><a href="#">Enlace 5</a></li>
                </ul>

                <hr class="noscreen" />
            
            </div> <!-- /col-in -->