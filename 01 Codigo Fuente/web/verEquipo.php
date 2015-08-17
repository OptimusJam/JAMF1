<?php

    //Version 7.0
    include_once('../clases/entidades/carrera.class.php');

	include_once('../clases/entidades/equipo.class.php');
	include_once('../clases/entidades/usuario.class.php');
	include_once('../clases/entidades/comboItem.class.php');
    include_once('../clases/entidades/actionMensajes.class.php');
    include_once('../clases/entidades/apuestaCarrera.class.php');
    include_once('../clases/entidades/apuestaMundial.class.php');    
	include_once('../clases/utilidades/seguridad.php');
	include_once('../clases/interfaces/InterfaceGenerico.class.php');
	include_once('mostrarCombo.php');
    //Version 2.2: 2011-04-02
    include_once('../clases/entidades/cambiosCarrera.class.php');
    
    include_once('../clases/interfaces/InterfacePaginas.class.php');
    
    $equ_ope = EquipoRegistrar;
    $equ_carrera = NULL;
    $objApuestaCarrera = NULL;
    $objApuestaMundial = NULL;    
    $objEquipo = NULL;
    $equ_carrera = $_SESSION[CarreraSesion];
   	$equ_dinero = EquipoPresupuesto;

    //Version 2.2: 2011-04-02
    $objCambiosCarrera = NULL;
    $equ_cambios_tot = EquipoCambios;
    $equ_cambios_disp = EquipoCambios;
    
    if (isset($_SESSION[EquipoSesion])){
		$objEquipo = $_SESSION[EquipoSesion];
        $equ_dinero = $objEquipo->getEquDinero();
        $objApuestaCarrera = $objEquipo->getApuestaCarrera();        
        $objApuestaMundial = $objEquipo->getApuestaMundial();
        if ($objEquipo->getEquCod() != null) {
            $equ_ope = EquipoModificar;
        }      
        
        //Version 2.2:2011-04-02
        if ($objEquipo->getCambios() != null) {
            $objCambiosCarrera = $objEquipo->getCambios();
            $equ_cambios_disp = $equ_cambios_disp - $objCambiosCarrera->getNumCambios();
        }        
	}
	
	//Recuperamos las colecciones
	$listaPilotos = $_SESSION[ListaPilotosSesion];
	$listaEscuderias = $_SESSION[ListaEscuderiasSesion];
	$listaMotores = $_SESSION[ListaMotoresSesion];
	$listaCampeonatos = $_SESSION[ListaCampeonatosSesion];
    
    //Version 2.0; 2011-03-24
    $listaPosiciones = $_SESSION[ListaPosicionesPilotosSesion];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1" />
    <meta http-equiv="content-language" content="es" />
    <meta name="robots" content="all,follow" />

    <meta name="author" content="All: ... [Nazev webu - www.url.cz]; e-mail: info@url.cz" />
    <meta name="copyright" content="Design/Code: Vit Dlouhy [Nuvio - www.nuvio.cz]; e-mail: vit.dlouhy@nuvio.cz" />
    
    <title>JAM F1 - Equipo</title>
    <meta name="description" content="..." />
    <meta name="keywords" content="..." />
    
    <link rel="index" href="./" title="Home" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="./css/main.css" />
    <link rel="stylesheet" media="print" type="text/css" href="./css/print.css" />
    <link rel="stylesheet" media="aural" type="text/css" href="./css/aural.css" />    
    
    <script language="javascript" src="./js/utilidades2.js"></script>
    <script language="javascript" src="./js/verEquipo.js"></script>
    <script language="javascript" src="./js/utilidades.js"></script>
    
</head>

<body id="www-url-cz">

<!-- Main -->
<div id="main" class="box">

    <!-- Header -->
    <div id="header">

        <!-- Logotyp -->
        <h1 id="logo"><a href="./" title="CrystalX [Go to homepage]">JAM F1</a></h1>
        <hr class="noscreen" />          

        <!-- Quick links -->
        <div class="noscreen noprint">
            <p><em>Quick links: <a href="#content">content</a>, <a href="#tabs">navigation</a>, <a href="#search">search</a>.</em></p>
            <hr />
        </div>



    </div> <!-- /header -->

     <!-- Main menu (tabs) -->
     <div id="tabs">
        <ul class="box">
            <li>
            <a href="#" onClick="MostrarOcultarPestanas('<?php echo PestanaEquiposDatos;?>','<?php echo PestanaEquipos;?>')" 
                id="mostrarDatosCentroEstadistico">Datos Equipo</a>
            </li>
            <li>
            <a href="#" onClick="MostrarOcultarPestanas('<?php echo PestanaEquiposPilotos;?>','<?php echo PestanaEquipos;?>')" 
                id="mostrarDatosCentroEstadistico">Pilotos</a>
            </li>
            <li>
            <a href="#" onClick="MostrarOcultarPestanas('<?php echo PestanaEquiposEscuderias;?>','<?php echo PestanaEquipos;?>')" 
                id="mostrarDatosCentroEstadistico">Escuderias</a>
            </li>
            <li>
            <a href="#" onClick="MostrarOcultarPestanas('<?php echo PestanaEquiposMotor;?>','<?php echo PestanaEquipos;?>')" 
                id="mostrarDatosCentroEstadistico">Motor</a>
            </li>
            <li>
            <a href="#" onClick="MostrarOcultarPestanas('<?php echo PestanaEquiposApuestasCarrera;?>','<?php echo PestanaEquipos;?>')" 
                id="mostrarDatosCentroEstadistico">Apuestas Carrera</a>
            </li>
            <li>
            <a href="#" onClick="MostrarOcultarPestanas('<?php echo PestanaEquiposApuestasMundial;?>','<?php echo PestanaEquipos;?>')" 
                id="mostrarDatosCentroEstadistico">Apuestas Mundial</a>
            </li>
        </ul>
     </div> <!-- /tabs -->

    <!-- Page (2 columns) -->
    <div id="page" class="box">
    <div id="page-in" class="box">

        <div id="strip" class="box noprint">

            <!-- RSS feeds -->
            <!--
			<p id="rss"><strong>RSS:</strong> <a href="#">articles</a> / <a href="#">comments</a></p>
			<hr class="noscreen" />
			-->

            <!-- Breadcrumbs -->
            <p id="breadcrumbs">Se encuentra en: <a href="#">Registro de Equipos</a></p>
            <hr class="noscreen" />
            
        </div> <!-- /strip -->

        <!-- Content -->        
        <div id="content">
        
        <?php				
			include_once('../web/mostrarActionMensajes.php');
		?>

        <form action="../clases/actions/equipos/equiposAction.php" method="post" name="form_registro" id="form_registro">
            <input type="hidden" name="<?php echo EquipoOperacion;?>" value="<?php echo $equ_ope;?>" />
            <input type="hidden" name="equ_carrera" value="<?php echo $equ_carrera->getCarCod();?>" />
            <?php
                if ($objEquipo != null) {
                    echo '<input type="hidden" name="equ_cod" value="'.$objEquipo->getEquCod().'" />';
                }            
            ?>            
            <!-- Article -->
            <div class="article" id="<?php echo PestanaEquiposDatos;?>" style="display:block;">
                <h2><span>
                	<a href="#">Datos del Equipo</a></span></h2>
				<div id="datosEquipo" style="display:block;">
                <p>
                	<span><label>Campeonato</label></span>
			      	<span id="search-input-out">
                    	<?php
                            mostrarCombo($listaCampeonatos,"equ_cam_nombre","");
						?>
                    </span>
                	<label>Contraseña</label></span>
			      	<span id="search-input-out">
                  		<input type="password" name="equ_cam_pass" id="equ_cam_pass" size="18"/>
                  	</span>
                </p>
                <p>
                	<span><label>Nombre del equipo</label></span>
			      	<span id="search-input-out">
                    	<input type="text" name="equ_nombre" id="search-input" size="18" value="<?php if ($objEquipo != NULL) { echo $objEquipo->getEquNom(); } ?>"/>
                    </span>
                </p>
                <p>
                	<span><label>Lema del equipo</label></span>
			      	<span id="search-input-out">
                    	<input type="text" name="equ_lema" id="search-input" size="18" value="<?php if ($objEquipo != NULL) { echo $objEquipo->getEquLema(); } ?>"/>
                    </span>
                </p>
                <p>

                </p>
                <p>
                	<span><label>Valor total del equipo</label></span>
			      	<span id="search-input-out">
                    	<input type="text" disabled="true" name="equ_val_tot" id="equ_val_tot" size="18" />
                    </span>
                </p>
                <p>
                	<span><label>Valor del equipo</label></span>
			      	<span id="search-input-out">
                    	<input type="text" disabled="true" name="equ_val_equ" id="equ_val_equ" size="18" />
                    </span>
                </p>
                
                </div>
            </div> <!-- /article -->            
            <hr class="noscreen" />          
            
            <!-- Article -->
            <div id="<?php echo PestanaEquiposPilotos;?>" style="display:none;"> <!-- Pilotos -->
                <div class="article" >
                <h2><span><a href="#">Pilotos</a></span></h2>

				<p>
                	<span><label>Primer Piloto</label></span>
			      			<span id="search-input-out">
			      					<?php
												mostrarCombo($listaPilotos,"equ_piloto_1","calculaPresupuesto(this)");
											?>
                    <input type="hidden" id="equ_piloto_1_ori_cod" value="<?php if ($objCambiosCarrera != NULL) { echo $objCambiosCarrera->getPiloto1Cod(); } ?>"/>
                    <input type="hidden" id="equ_piloto_1_ori_val" value="<?php if ($objCambiosCarrera != NULL && $objCambiosCarrera->getPiloto1Val() != NULL) { echo $objCambiosCarrera->getPiloto1Val(); } else {echo '0';} ?>"/>
                  </span>
                </p>
                <p>
                	<span><label>Segundo Piloto</label></span>
			      	<span id="search-input-out">
                    	<?php
												mostrarCombo($listaPilotos,"equ_piloto_2","calculaPresupuesto(this)");
											?>
                    <input type="hidden" id="equ_piloto_2_ori_cod" value="<?php if ($objCambiosCarrera != NULL) { echo $objCambiosCarrera->getPiloto2Cod(); } ?>"/>
                    <input type="hidden" id="equ_piloto_2_ori_val" value="<?php if ($objCambiosCarrera != NULL && $objCambiosCarrera->getPiloto2Val() != NULL) { echo $objCambiosCarrera->getPiloto2Val(); } else {echo '0';} ?>"/>
                    </span>
                </p>
                <p>
                	<span><label>Tercer Piloto</label></span>
			      	<span id="search-input-out">
                    	<?php
												mostrarCombo($listaPilotos,"equ_piloto_3","calculaPresupuesto(this)");
											?>
                    <input type="hidden" id="equ_piloto_3_ori_cod" value="<?php if ($objCambiosCarrera != NULL) { echo $objCambiosCarrera->getPiloto3Cod(); } ?>"/>
                    <input type="hidden" id="equ_piloto_3_ori_val" value="<?php if ($objCambiosCarrera != NULL && $objCambiosCarrera->getPiloto3Val() != NULL) { echo $objCambiosCarrera->getPiloto3Val(); } else {echo '0';}?>"/>
                    </span>
                </p>
                <p>
                	<span><label>Cuatro Piloto</label></span>
			      	<span id="search-input-out">
                    	<?php
												mostrarCombo($listaPilotos,"equ_piloto_4","calculaPresupuesto(this)");
											?>
                    <input type="hidden" id="equ_piloto_4_ori_cod" value="<?php if ($objCambiosCarrera != NULL) { echo $objCambiosCarrera->getPiloto4Cod(); } ?>"/>
                    <input type="hidden" id="equ_piloto_4_ori_val" value="<?php if ($objCambiosCarrera != NULL && $objCambiosCarrera->getPiloto4Val() != NULL) { echo $objCambiosCarrera->getPiloto4Val(); } else {echo '0';}?>"/>
                    </span>
                </p>
                </div>
                
                <div class="article" >
                <h2><span><a href="#">Precio de los Pilotos</a></span></h2> 
                <p>
                    <?php
                        mostrarPrecios($listaPilotos);
                    ?>
                </p>                
				</div> <!-- /article -->           
            
            </div> <!-- Pilotos -->            
            <hr class="noscreen" />               
            
            <!-- Article -->
            <div id="<?php echo PestanaEquiposEscuderias;?>" style="display:none;"> <!-- Escuderias -->
                <div class="article">
                <h2><span><a href="#">Escuderias</a></span></h2>				
                <p>
                	<span><label>Primera Escuderia</label></span>
			      	<span id="search-input-out">
                    	<?php
												mostrarCombo($listaEscuderias,"equ_escuderia_1","calculaPresupuesto(this)");
											?>
                    <input type="hidden" id="equ_escuderia_1_ori_cod" value="<?php if ($objCambiosCarrera != NULL) { echo $objCambiosCarrera->getEscuderia1Cod(); } ?>"/>
                    <input type="hidden" id="equ_escuderia_1_ori_val" value="<?php if ($objCambiosCarrera != NULL && $objCambiosCarrera->getEscuderia1Val() != NULL) { echo $objCambiosCarrera->getEscuderia1Val(); } else {echo '0';}?>"/>
                    </span>
                </p>
                <p>
                	<span><label>Segundo Escuderia</label></span>
			      	<span id="search-input-out">
                    	<?php
												mostrarCombo($listaEscuderias,"equ_escuderia_2","calculaPresupuesto(this)");
											?>
                    <input type="hidden" id="equ_escuderia_2_ori_cod" value="<?php if ($objCambiosCarrera != NULL) { echo $objCambiosCarrera->getEscuderia2Cod(); } ?>"/>
                    <input type="hidden" id="equ_escuderia_2_ori_val" value="<?php if ($objCambiosCarrera != NULL && $objCambiosCarrera->getEscuderia2Val() != NULL) { echo $objCambiosCarrera->getEscuderia2Val(); } else {echo '0';}?>"/>
                    </span>
                </p>                
                </div> <!-- /article -->
                
                <div class="article" >
                <h2><span><a href="#">Precio de los Escuderias</a></span></h2> 
                <p>
                    <?php
                        mostrarPrecios($listaEscuderias);
                    ?>
                </p>                
				</div> <!-- /article -->
            
            </div> <!-- Escuderias -->                         
            <hr class="noscreen" />
            
            <!-- Article -->
            <div id="<?php echo PestanaEquiposMotor;?>" style="display:none;"> <!-- Escuderias -->
                <div class="article">
                <h2><span><a href="#">Motor</a></span></h2>				
                <p>
                	<span><label>Motor</label></span>
			      	<span id="search-input-out">
                    	<?php
						mostrarCombo($listaMotores,"equ_motor_1","calculaPresupuesto(this)");
						?>
                    <input type="hidden" id="equ_motor_1_ori_cod" value="<?php if ($objCambiosCarrera != NULL) { echo $objCambiosCarrera->getMotor1Cod(); } ?>"/>
                    <input type="hidden" id="equ_motor_1_ori_val" value="<?php if ($objCambiosCarrera != NULL && $objCambiosCarrera->getMotor1Val() != NULL) { echo $objCambiosCarrera->getMotor1Val(); } else {echo '0';}?>"/>
                    </span>
                </p>
                </div> <!-- /article -->
                
                <div class="article" >
                <h2><span><a href="#">Precio de los Motores</a></span></h2> 
                <p>
                    <?php
                        mostrarPrecios($listaMotores);
                    ?>
                </p>                
				</div> <!-- /article -->
                
            </div> 
            <hr class="noscreen" />  
            
            <!-- Article -->
            <div class="article" id="<?php echo PestanaEquiposApuestasCarrera;?>" style="display:none;">
                <h2><span><a href="#">Apuestas para la Carrera</a></span></h2>
				<div id="datosApuestasCarrera" style="display:block;">
                <p>
                	<span><label>Primero Clasificado</label></span>
			      	<span id="search-input-out">
                    	<?php
												mostrarCombo($listaPilotos,"equ_piloto_primero","");
											?>
                    </span>
                </p>
                
                <p>
                	<span><label>Segundo Clasificado</label></span>
			      	<span id="search-input-out">
                    	<?php
												mostrarCombo($listaPilotos,"equ_piloto_segundo","");
											?>                    
                    </span>
                </p>
                
                <p>
                	<span><label>Tercer Clasificado</label></span>
			      	<span id="search-input-out">
                    	<?php
												mostrarCombo($listaPilotos,"equ_piloto_tercero","");
											?>
                    </span>
                </p>
                
                <p>
                	<span><label>Posición Alonso</label></span>
			      	<span id="search-input-out">
                        <?php
                              //Version 2.0; 2011-03-24  
						      mostrarCombo($listaPosiciones,"equ_pos_alonso","");
                        ?>
                    </span>
                </p>
                
                <p></p>
                <!--
                <p>
                	<span><label>Posición Pedro De La Rosa</label></span>
			      	<span id="search-input-out">
                        <?php
                              //Version 2.0; 2011-03-24 
						      mostrarCombo($listaPosiciones,"equ_pos_alguersuari","");
                        ?>
                    </span>
                </p>
                -->                                
                </div>
            </div> <!-- /article -->            
            <hr class="noscreen" />             
            
            <!-- Article -->
            <div class="article" id="<?php echo PestanaEquiposApuestasMundial;?>" style="display:none;">
                <h2><span><a href="#">Apuestas Para el Mundial</a></span></h2>
				<div id="datosApuestasMundial" style="display:block;">
                <p>
                	<span><label>Campeón de Pilotos</label></span>
			      	<span id="search-input-out">
                    	<?php
												mostrarCombo($listaPilotos,"equ_campeon_piloto","");
											?>  
                    </span>
                </p>
                
                <p>
                	<span><label>Campeón de Constructores</label></span>
			      	<span id="search-input-out">
                    	<?php
												mostrarCombo($listaEscuderias,"equ_campeon_escuderia","");
											?>                    	
                    </span>
                </p>
                
                <p>
                	<span><label>Campeón de Vueltas Rápidas</label></span>
			      	<span id="search-input-out">                    	
                    	<?php
												mostrarCombo($listaPilotos,"equ_campeon_vuelta_rapida","");
											?>                        
                    </span>
                </p>
                </div>              
            </div> <!-- /article -->            
            <hr class="noscreen" />
            
               <!-- Version 2.2: 2011-04-02 -->
                
            <div class="article">
                <p>
                    <span><label>Presupuesto disponible</label></span>
                    <span id="search-input-out">
                    	<input type="text" disabled="true" name="equ_dinero" id="equ_dinero" size="18" value="<?php echo $equ_dinero;?>"/>
                    </span>
                <?php
                    if ($objCambiosCarrera != null) {                       
                ?>
                    <p>                       
                    	<span><label>Cambios Disponibles</label></span>
    			      	<span id="search-input-out">
                        	<input type="text" disabled="true" name="equ_cambios_disp" id="equ_cambios_disp" size="18" value="<?php echo $equ_cambios_disp;?>"/>
                        </span>
                    </p>
                
                    <p class="btn-more box noprint"><strong><a onclick="anularCambios();">Anular Cambios</a></strong></p>
                    <p/> 
                
                <?php
                    } //End If
                ?>
                <!-- Version 2.2 Fin -->
                <?php 
                    
                    $fechaLimite = $equ_carrera->getCarFecCambios();
                    $today = date("Y-m-d H:i:s");
                    
                    /*
                    echo '<br/>Fecha 1: '.$fechaLimite;
                    echo '<br/>Today: <nbsp><nbsp> '.$today;
                    echo '<br/>Comparacion: '.$today < $fechaLimite;
                    */
                    
                    if ($today < $fechaLimite) {                              
                        if ($equ_ope == EquipoRegistrar) {
                            echo '<p class="btn-more box noprint"><strong><a onclick="validarEquipo(document.getElementById(\'form_registro\'))">Enviar</a></strong></p>'; 
                        }
                    
                        //Version 2.2: 2011-04-02
                        if ($equ_ope == EquipoModificar) {
                            echo '<p class="btn-more box noprint"><strong><a onclick="validarEquipoModificar(document.getElementById(\'form_registro\'))">Modificar</a></strong></p>'; 
                        }
                    }                     
                    echo '</div>';
                    
                ?>                           
        
        </form>
        
        </div> <!-- /content -->

        <!-- Right column -->
        <div id="col" class="noprint">
		<?php
			include('columnaDerecha.php');
		?>
        </div>
        <!-- Right column -->

    </div> <!-- /page-in -->
    </div> <!-- /page -->

    <!-- Footer -->
    <div id="footer">
        <div id="top" class="noprint"><p><span class="noscreen">Volver Al Principio</span> <a href="#header" title="Back on top ^">^<span></span></a></p></div>
        <hr class="noscreen" />
        <p id="createdby">created by <a href="http://www.nuvio.cz">Nuvio | Webdesign</a> <!-- DON´T REMOVE, PLEASE! --></p>
		<p id="copyright">&copy; 2007 <a href="mailto:my@mail.com">My Name</a></p>
    </div> <!-- /footer -->

</div> <!-- /main -->
<script>
    //Para rellenar los combos si hay equipo lalala
    document.getElementById('equ_cam_nombre').value = <?php if ($objEquipo != NULL) {echo $objEquipo->getEquCamCod(); } else {echo '0';}?>;    
                      
    document.getElementById('equ_piloto_1').value = <?php if ($objEquipo != NULL) {echo $objEquipo->getEquPiloto1(); } else {echo '0';}?>;
    document.getElementById('equ_piloto_2').value = <?php if ($objEquipo != NULL) {echo $objEquipo->getEquPiloto2(); } else {echo '0';}?>;
    document.getElementById('equ_piloto_3').value = <?php if ($objEquipo != NULL) {echo $objEquipo->getEquPiloto3(); } else {echo '0';}?>;
    document.getElementById('equ_piloto_4').value = <?php if ($objEquipo != NULL) {echo $objEquipo->getEquPiloto4(); } else {echo '0';}?>;
    
    document.getElementById('equ_escuderia_1').value = <?php if ($objEquipo != NULL) {echo $objEquipo->getEquEscuderia1(); } else {echo '0';}?>;
    document.getElementById('equ_escuderia_2').value = <?php if ($objEquipo != NULL) {echo $objEquipo->getEquEscuderia2(); } else {echo '0';}?>;
    
    document.getElementById('equ_motor_1').value = <?php if ($objEquipo != NULL) {echo $objEquipo->getEquMotor1(); } else {echo '0';}?>;
        
    document.getElementById('equ_piloto_primero').value = <?php if ($objApuestaCarrera != NULL) {echo $objApuestaCarrera->getApuPilPrimero(); } else {echo '0';}?>;
    document.getElementById('equ_piloto_segundo').value = <?php if ($objApuestaCarrera != NULL) {echo $objApuestaCarrera->getApuPilSegundo(); } else {echo '0';}?>;
    document.getElementById('equ_piloto_tercero').value = <?php if ($objApuestaCarrera != NULL) {echo $objApuestaCarrera->getApuPilTercero(); } else {echo '0';}?>;
    
    //Version 2.0; 2011-03-24
    document.getElementById('equ_pos_alonso').value = <?php if ($objApuestaCarrera != NULL) {echo $objApuestaCarrera->getApuPosAlonso(); } else {echo '0';}?>;
    //document.getElementById('equ_pos_alguersuari').value = <?php if ($objApuestaCarrera != NULL) {echo $objApuestaCarrera->getApuPosAlguersuari(); } else {echo '0';}?>;
    
    document.getElementById('equ_campeon_piloto').value = <?php if ($objApuestaMundial != NULL) {echo $objApuestaMundial->getApuPilCampeon(); } else {echo '0';}?>;
    document.getElementById('equ_campeon_escuderia').value = <?php if ($objApuestaMundial != NULL) {echo $objApuestaMundial->getApuEscCampeon(); } else {echo '0';}?>;
    document.getElementById('equ_campeon_vuelta_rapida').value = <?php if ($objApuestaMundial != NULL) {echo $objApuestaMundial->getApuPilVueRap(); } else {echo '0';}?>;
    
    //Version 2.2: 2011-04-02
    document.getElementById('equ_campeon_piloto').disabled = <?php if ($objEquipo != NULL && $objEquipo->getEquCarrera() > 1 && $equ_ope != EquipoRegistrar) { echo 'true'; } else { echo '\'\''; } ?>;
    document.getElementById('equ_campeon_escuderia').disabled = <?php if ($objEquipo != NULL && $objEquipo->getEquCarrera() > 1 && $equ_ope != EquipoRegistrar) { echo 'true'; } else { echo '\'\''; } ?>;
    document.getElementById('equ_campeon_vuelta_rapida').disabled = <?php if ($objEquipo != NULL && $objEquipo->getEquCarrera() > 1 && $equ_ope != EquipoRegistrar) { echo 'true'; } else { echo '\'\''; } ?>;
    
    //Version 2.2: 2011-04-02
    document.getElementById('equ_cam_nombre').disabled = <?php if ($objEquipo != NULL && $objEquipo->getEquCamCod() != NULL) { echo 'true'; } else { echo '\'\''; } ?>;
    document.getElementById('equ_cam_pass').disabled = <?php if ($objEquipo != NULL && $objEquipo->getEquCamCod() != NULL) { echo 'true'; } else { echo '\'\''; } ?>;;
    
    //Valores anteriores
    var cambios_tot = <?php echo $equ_cambios_tot;?>;
    var valor_anterior = 0
    
    var cod_piloto_1_old = document.getElementById('equ_piloto_1').value;
    var val_piloto_1_old = document.getElementById('equ_piloto_1_' + cod_piloto_1_old).value;
    var cod_piloto_2_old = document.getElementById('equ_piloto_2').value;
    var val_piloto_2_old = document.getElementById('equ_piloto_2_' + cod_piloto_2_old).value;
    var cod_piloto_3_old = document.getElementById('equ_piloto_3').value;
    var val_piloto_3_old = document.getElementById('equ_piloto_3_' + cod_piloto_3_old).value;
    var cod_piloto_4_old = document.getElementById('equ_piloto_4').value;
    var val_piloto_4_old = document.getElementById('equ_piloto_4_' + cod_piloto_4_old).value;
    var cod_escuderia_1_old = document.getElementById('equ_escuderia_1').value;
    var val_escuderia_1_old = document.getElementById('equ_escuderia_1_' + document.getElementById('equ_escuderia_1').value).value;
    var cod_escuderia_2_old = document.getElementById('equ_escuderia_2').value;
    var val_escuderia_2_old = document.getElementById('equ_escuderia_2_' + document.getElementById('equ_escuderia_2').value).value;
    var cod_motor_1_old = document.getElementById('equ_motor_1').value;
    var val_motor_1_old = document.getElementById('equ_motor_1_' + document.getElementById('equ_motor_1').value).value;
    
    //Actualizamos los contadores
    //Funcion actualizaContadores();
        document.getElementById("equ_val_equ").value =  
            parseInt(document.getElementById('equ_piloto_1_'+document.getElementById('equ_piloto_1').value).value) +
            parseInt(document.getElementById('equ_piloto_2_'+document.getElementById('equ_piloto_2').value).value) +
            parseInt(document.getElementById('equ_piloto_3_'+document.getElementById('equ_piloto_3').value).value) +
            parseInt(document.getElementById('equ_piloto_4_'+document.getElementById('equ_piloto_4').value).value) +
            parseInt(document.getElementById('equ_escuderia_1_'+document.getElementById('equ_escuderia_1').value).value) +
            parseInt(document.getElementById('equ_escuderia_2_'+document.getElementById('equ_escuderia_2').value).value) +
            parseInt(document.getElementById('equ_motor_1_'+document.getElementById('equ_motor_1').value).value);
    
    document.getElementById("equ_val_tot").value = parseInt(document.getElementById("equ_val_equ").value) +
            parseInt(document.getElementById("equ_dinero").value);
    
</script>
</body>

</html>
