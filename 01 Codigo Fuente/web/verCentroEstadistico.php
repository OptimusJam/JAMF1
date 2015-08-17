<?php
	include_once('../clases/entidades/comboItem.class.php');
    include_once('../clases/entidades/centroEstadisticoItem.class.php');
	include_once('../clases/entidades/usuario.class.php');
    include_once('../clases/entidades/carrera.class.php');
	include_once('../clases/interfaces/InterfaceGenerico.class.php');
    
    include_once('../clases/interfaces/InterfacePaginas.class.php');
   	include_once('../clases/utilidades/seguridad.php');
	
    include_once('mostrarCombo.php');	
	
	//comprobamos si hay usuario.
	$listaCarreras = array();
    $listaDatosPilotos = array();
    $listaDatosEscuderias = array();
    $listaDatosMotores = array();
	$carrera = 0;
    $esClasifGen = false;
	
    if (isset($_SESSION[ListaCarrerasSesion])) {
		$listaCarreras = $_SESSION[ListaCarrerasSesion];
	} else {
		$listaCarreras = NULL;
	}
    
    if (isset($_SESSION[CentroEstadisticoCarrera])) {
       $carrera = $_SESSION[CentroEstadisticoCarrera];          
    }
    
    if (isset($_SESSION[CentroEstadisticoListaPilotos])) {        
        $listaDatosPilotos = $_SESSION[CentroEstadisticoListaPilotos];
    }
    
    if (isset($_SESSION[CentroEstadisticoListaEscuderias])) {
        $listaDatosEscuderias = $_SESSION[CentroEstadisticoListaEscuderias];
    }
    
    if (isset($_SESSION[CentroEstadisticoListaMotores])) {
        $listaDatosMotores = $_SESSION[CentroEstadisticoListaMotores];
    }
    
    if (isset($_SESSION[CentroEstadisticoCarrera])) {
        $carrera = $_SESSION[CentroEstadisticoCarrera];
        if ($carrera == CodigoClasificacionGeneral) {
            $esClasifGen = true;
        }
    }
    
    
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1" />
    <meta http-equiv="content-language" content="es" />
    <meta name="robots" content="all,follow" />

    <meta name="author" content="All: ... [Nazev webu - www.url.cz]; e-mail: info@url.cz" />
    <meta name="copyright" content="Design/Code: Vit Dlouhy [Nuvio - www.nuvio.cz]; e-mail: vit.dlouhy@nuvio.cz" />
    
    <title>JAM F1 - Centro Estadistico</title>
    <meta name="description" content="..." />
    <meta name="keywords" content="..." />
    
    <link rel="index" href="./" title="Home" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="./css/main.css" />
    <link rel="stylesheet" media="print" type="text/css" href="./css/print.css" />
    <link rel="stylesheet" media="aural" type="text/css" href="./css/aural.css" />
    
    <script language="javascript" src="./js/verCentroEstadistico.js"></script>
    <script language="javascript" src="./js/utilidades.js"></script></head>
    <script language="javascript" src="./js/utilidades2.js"></script>

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
            <a href="#" onClick="MostrarOcultarPestanas('<?php echo PestanaCentroEstadisticoPilotos;?>','<?php echo PestanaCentroEstadistico;?>')" 
                id="mostrarDatosCentroEstadistico">Datos de Pilotos</a>
            </li>
            <li>
            <a href="#" onClick="MostrarOcultarPestanas('<?php echo PestanaCentroEstadisticoEscuderias;?>','<?php echo PestanaCentroEstadistico;?>')" 
                id="mostrarDatosCentroEstadistico">Datos de Escuderias</a>
            </li>
            <li>
            <a href="#" onClick="MostrarOcultarPestanas('<?php echo PestanaCentroEstadisticoMotores;?>','<?php echo PestanaCentroEstadistico;?>')" 
                id="mostrarDatosCentroEstadistico">Datos de Motores</a>
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
            <p id="breadcrumbs">Se encuentra en: <a href="#">Centro Estadístico</a></p>
            <hr class="noscreen" />
            
        </div> <!-- /strip -->

        <!-- Content -->        
        <div id="content">

	<?php				
		include_once('../web/mostrarActionMensajes.php');
	?>

        <form action="../clases/actions/centroEstadistico/centroEstadisticoAction.php" method="post" name="form_registro" id="form_registro">
            <input type="hidden" name="<?php echo CentroEstadisticoOperacion;?>" value="<?php echo CentroEstadisticoVer; ?>" />
            
            <!-- Article -->
            <div class="article">
                <h2><span><a href="#">Seleccione una carrera</a></span></h2>

<?php
	if ($listaCarreras != NULL) {
?>

                <p><span><label>
				<?php
					mostrarCombo($listaCarreras,CentroEstadisticoCarrera,"");
				?>
				</label></span>
			    <p class="btn-more box noprint"><strong><a onclick="validarCentroEstadistico(document.getElementById('form_registro'))">Enviar</a></strong></p>                
<?php 
	} else {
?>
		<p><span><label>No hay carreras disponibles</label></span></p>
<?php 
	}
?>  
            </div> <!-- /article -->

        </form>

            <hr class="noscreen" />

            <!-- Article -->
            <div class="article" id="<?php echo PestanaCentroEstadisticoPilotos;?>" style="display:block;">
                <h2><span><a href="#">Datos de los Pilotos</a></span></h2>
                <p>
                    <p style="display: table-row;">
                    <span style="width: 5%; display: table-cell;">Pos&nbsp;</span>
                    <span style="width: 40%; display: table-cell;">Piloto&nbsp;</span>
                	<span style="width: 25%; display: table-cell;">Puntos&nbsp;</span>
                    <span style="width: 25%; display: table-cell;">Valor&nbsp;</span>
                    <span style="width: 5%; display: table-cell;">&nbsp;</span>                    
                    </p>
                    <br/>
                
                <?php
                    foreach($listaDatosPilotos as $objItemCentroEstadistico){
                        echo '<p style="display: table-row;">';                            
                        echo '<span style="width: 5%; display: table-cell;">'.$objItemCentroEstadistico->getValCod().'&nbsp;</span>';
                        echo '<span style="width: 40%; display: table-cell;">'.$objItemCentroEstadistico->getValDes().'&nbsp;</span>';
                        echo '<span style="width: 25%; display: table-cell;">'.$objItemCentroEstadistico->getValPnt().'&nbsp;</span>';
                        echo '<span style="width: 25%; display: table-cell;">'.$objItemCentroEstadistico->getValVal().'&nbsp;</span>';
                        if (!$esClasifGen) {
                            echo '<a href="#" name="'.$objItemCentroEstadistico->getValCod().'" 
                    	       onClick="MostrarOcultar(\''.$objItemCentroEstadistico->getValCod().'\',
                               \'mostrar_'.$objItemCentroEstadistico->getValCod().'\',
                               \'ocultar_'.$objItemCentroEstadistico->getValCod().'\')"
                    	       style="display:block;" 
                               id="mostrar_'.$objItemCentroEstadistico->getValCod().'">Ver</a>'
                            .'<a href="#" 
                    	       onClick="MostrarOcultar(\''.$objItemCentroEstadistico->getValCod().'\',
                               \'mostrar_'.$objItemCentroEstadistico->getValCod().'\',
                               \'ocultar_'.$objItemCentroEstadistico->getValCod().'\')"
                    	       style="display:none;" 
                               id="ocultar_'.$objItemCentroEstadistico->getValCod().'">Ocultar</a>';
                        } else {
                            echo '<span style="width: 5%; display: table-cell;">&nbsp;</span>';
                        }
                        echo '</p><br/>';

                        //Mostrar desglose de puntos
                        if (!$esClasifGen) {
                            echo '<div id="'.$objItemCentroEstadistico->getValCod().'" style="display:none;">';
                            echo '<p style="display: table-row;">';
                            echo '<span style="width: 30%; display: table-cell;">Puntos Clasif&nbsp;</span>';
                            echo '<span style="width: 30%; display: table-cell;">Puntos Puesto&nbsp;</span>';
                            echo '<span style="width: 40%; display: table-cell;">Puntos Adelantar&nbsp;</span>';                            
                            echo '</p>';
                            echo '<p style="display: table-row;">';
                            echo '<span style="width: 30%; display: table-cell;">'.$objItemCentroEstadistico->getPntCla().'&nbsp;</span>';
                            echo '<span style="width: 30%; display: table-cell;">'.$objItemCentroEstadistico->getPntPue().'&nbsp;</span>';
                            echo '<span style="width: 40%; display: table-cell;">'.$objItemCentroEstadistico->getPntAde().'&nbsp;</span>'; 
                            echo '</p><br/>';
                            echo '<p style="display: table-row;">';
                            echo '<span style="width: 40%; display: table-cell;">Puntos Vuelta Rápida&nbsp;</span>';
                            echo '<span style="width: 40%; display: table-cell;">Puntos Record Circuito&nbsp;</span>';
                            echo '<span style="width: 20%; display: table-cell;">&nbsp;</span>';                            
                            echo '</p>';
                            echo '<p style="display: table-row;">';
                            echo '<span style="width: 40%; display: table-cell;">'.$objItemCentroEstadistico->getPntVue().'&nbsp;</span>';
                            echo '<span style="width: 40%; display: table-cell;">'.$objItemCentroEstadistico->getPntRec().'&nbsp;</span>';
                            echo '<span style="width: 20%; display: table-cell;">&nbsp;</span>'; 
                            echo '</p><br/>';
                            echo '</div>';
                        }
                        //Fin Mostrar desglose puntos
                    }                
                ?>
                </p>
                <p>&nbsp;</p>
            </div> <!-- /article --> 
            
            <hr class="noscreen" />
	    
	                <!-- Article -->
            <div class="article" id="<?php echo PestanaCentroEstadisticoEscuderias;?>" style="display:none;">
                <h2><span><a href="#">Datos de las Escuderias</a></span></h2>
                <p>
                    <p style="width: 5%; float: left;">Pos</p>
                    <p style="width: 40%; float: left;">Escuderia</p>
                	<p style="width: 25%; float: left;">Puntos</p>
                    <p style="width: 30%; float: left;">Valor</p>
                
                
                <?php
                    foreach($listaDatosEscuderias as $objItemCentroEstadistico){
                        echo '<p style="width: 5%; float: left;">'.$objItemCentroEstadistico->getValCod().'</p>';
                        echo '<p style="width: 40%; float: left;">'.$objItemCentroEstadistico->getValDes().'</p>';
                        echo '<p style="width: 25%; float: left;">'.$objItemCentroEstadistico->getValPnt().'</p>';
                        echo '<p style="width: 30%; float: left;">'.$objItemCentroEstadistico->getValVal().'</p>';
                    }                
                ?>
                </p>
                <p>&nbsp;</p>
            </div> <!-- /article --> 
            
            <hr class="noscreen" />  
	    
	                <!-- Article -->
            <div class="article" id="<?php echo PestanaCentroEstadisticoMotores;?>" style="display:none;">
                <h2><span><a href="#">Datos de los Motores</a></span></h2>
                <p>
                    <p style="width: 5%; float: left;">Pos</p>
                    <p style="width: 40%; float: left;">Motor</p>
                	<p style="width: 25%; float: left;">Puntos</p>
                    <p style="width: 30%; float: left;">Valor</p>
                
                
                <?php
                    foreach($listaDatosMotores as $objItemCentroEstadistico){
                        echo '<p style="width: 5%; float: left;">'.$objItemCentroEstadistico->getValCod().'</p>';
                        echo '<p style="width: 40%; float: left;">'.$objItemCentroEstadistico->getValDes().'</p>';
                        echo '<p style="width: 25%; float: left;">'.$objItemCentroEstadistico->getValPnt().'</p>';
                        echo '<p style="width: 30%; float: left;">'.$objItemCentroEstadistico->getValVal().'</p>';
                    }                
                ?>
                </p>
                <p>&nbsp;</p>
            </div> <!-- /article --> 
            
            <hr class="noscreen" />       
        
        
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
    <?php
        if (!$esClasifGen) {
            echo 'document.getElementById(\''.CentroEstadisticoCarrera.'\').value =\''.$carrera->getCarCod().'\'';
        } else {
            echo 'document.getElementById(\''.CentroEstadisticoCarrera.'\').value =\''.CodigoClasificacionGeneral.'\'';
        }
    ?>
</script>
</body>
</html>
