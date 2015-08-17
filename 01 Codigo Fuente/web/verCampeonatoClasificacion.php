<?php
    /*
     * Nuevo fichero
     * Version 2.1: 2011-03-27
     */
	
    //Version 7.0
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/carrera.class.php');

    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/comboItem.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/clasificacionItem.class.php');    
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/utilidades/seguridad.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceGenerico.class.php');    
    include_once('mostrarCombo.php');
    
	$objCampeonatoListaClasificacion = null;
	$listaCarreras = null;    
    $esClasifGen = false;
        
	if (isset($_SESSION[CampeonatoListaClasificacion])){
       $objCampeonatoListaClasificacion = $_SESSION[CampeonatoListaClasificacion];
	}    

	if (isset($_SESSION[ListaCarrerasSesion])) {
		$listaCarreras = $_SESSION[ListaCarrerasSesion];
	}
    
    if (isset($_SESSION[CampeonatoCodigo])) {
        $cam_codigo = $_SESSION[CampeonatoCodigo];
    }
    
    if (isset($_SESSION[CarreraCodigo])) {
        $carrera = $_SESSION[CarreraCodigo];
        if (is_object($carrera) && $carrera->getCarCod() == CodigoClasificacionGeneral) {
            $esClasifGen = true;
        }
    }
    
    //Version 7.0: 
    //Obtener la el tipo de clasificacion a utilizar
    $campClasRadio = null;
    if (isset($_SESSION[CampClasRadio])) {
        $campClasRadio = $_SESSION[CampClasRadio];
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
    
    <title>JAM F1 - Clasificacion del campeonato</title>
    <meta name="description" content="..." />
    <meta name="keywords" content="..." />
    
    <link rel="index" href="./" title="Home" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="./css/main.css" />
    <link rel="stylesheet" media="print" type="text/css" href="./css/print.css" />
    <link rel="stylesheet" media="aural" type="text/css" href="./css/aural.css" />
    
    <script language="javascript" src="./js/verCampeonato.js"></script>
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
     <div id="tabs" class="noprint">
        <hr class="noscreen" />
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
            <p id="breadcrumbs">Se encuentra en: <a href="#">Ver los Campeonatos</a></p>
            <hr class="noscreen" />
            
        </div> <!-- /strip -->

        <!-- Content -->        
        <div id="content">
        
			<?php				
				include_once('../web/mostrarActionMensajes.php');
			?>
             
            <form action="../clases/actions/campeonatos/campeonatosAction.php" method="post" name="form_registro" id="form_registro">
                <input type="hidden" name="<?php echo CampeonatoOperacion;?>" value="<?php echo CampeonatoVerClasificacion;?>" />
                <input type="hidden" name="<?php echo CampeonatoCodigo;?>" value="<?php echo $cam_codigo;?>" />
            <!-- Article -->
            <div class="article">
                <h2><span><a href="#">Seleccione una carrera</a></span></h2>
            
            <?php
            	if ($listaCarreras != null) {
            ?>
            
            <p><span><label>
            <?php
                mostrarCombo($listaCarreras,CarreraCodigo,"");
            ?>
            <script language="javascript">
                //Si es la clasificación de campeones, se desactiva el combo de carreras
                if (<?php if ($campClasRadio == CampClasRadioCampeones) {echo 'true';}?>){
                    var formulario = document.getElementById('form_registro');
                    formulario.car_cod.disabled = true;
                }
            </script>
            </label></span>
            <!-- Se añaden las nuevas clasificaciones -->            
            <p>
            <span><label><input type="radio" name="<?php echo CampClasRadio; ?>" id="<?php echo CampClasRadio; ?>" value="<?php echo CampClasRadioPuntos; ?>" onclick="modificarEstadoComboCarreras(document.getElementById('form_registro'));" <?php if ($campClasRadio == CampClasRadioPuntos) {echo 'checked';}?> >Clasif. Puntos</span></label>
            <span><label><input type="radio" name="<?php echo CampClasRadio; ?>" id="<?php echo CampClasRadio; ?>" value="<?php echo CampClasRadioBroker; ?>" onclick="modificarEstadoComboCarreras(document.getElementById('form_registro'));" <?php if ($campClasRadio == CampClasRadioBroker) {echo 'checked';}?> >Clasif. Broker</span></label>            
            <span><label><input type="radio" name="<?php echo CampClasRadio; ?>" id="<?php echo CampClasRadio; ?>" value="<?php echo CampClasRadioCampeones; ?>" onclick="modificarEstadoComboCarreras(document.getElementById('form_registro'));" <?php if ($campClasRadio == CampClasRadioCampeones) {echo 'checked';}?> >Clasif. Campeones</span></label>
            </p>            
            <!-- Fin nuevas clasificaciones-->
            <p class="btn-more box noprint"><strong><a onclick="validarFormularioClasificacion(document.getElementById('form_registro'));">Enviar</a></strong></p>
            <?php 
            	} else {
            ?>
            		<p><span><label>No hay carreras disponibles</label></span></p>
            <?php 
            	}
            ?>
            </form>
            </div> <!-- /article -->

            <?php
                if ($campClasRadio == CampClasRadioPuntos) {
                    //echo 'Clasificacion por Puntos';
                    include('camClasPuntos.php');
                }
                if ($campClasRadio == CampClasRadioBroker) {
                    //echo 'Clasificacion por Broker';
                    include('camClasBroker.php');
                }
                if ($campClasRadio == CampClasRadioCampeones) {
                    //echo 'Clasificacion por Campeones';
                    include('camClasCampeones.php');
                }                
            ?>

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
    document.getElementById('<?php echo CarreraCodigo;?>').value = <?php echo $carrera->getCarCod(); ?>;
    modificarEstadoComboCarreras(document.getElementById('form_registro'));
</script>
</body>
</html>