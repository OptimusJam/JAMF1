<?php
	include_once('../clases/entidades/campeonato.class.php');
	include_once('../clases/entidades/usuario.class.php');
	include_once('../clases/entidades/actionMensajes.class.php');
	include_once('../clases/utilidades/seguridad.php');
	include_once('../clases/interfaces/InterfaceGenerico.class.php');
	
	$cam_ope = CampeonatoRegistrar;
	$objCampeonato = NULL;
	if (isset($_SESSION[CampeonatoSesion])){
		$objCampeonato = $_SESSION[CampeonatoSesion];
		echo $objCampeonato->getCamCod();
		if ($objCampeonato->getCamCod() != NULL) {
			echo '<br/>Dentro';			
			$cam_ope = CampeonatoModificar;
		}
	} else { //if (isset) 

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
    
    <title>JAM F1 - Campeonato</title>
    <meta name="description" content="..." />
    <meta name="keywords" content="..." />
    
    <link rel="index" href="./" title="Home" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="./css/main.css" />
    <link rel="stylesheet" media="print" type="text/css" href="./css/print.css" />
    <link rel="stylesheet" media="aural" type="text/css" href="./css/aural.css" />
    
    <script language="javascript" src="./js/verCampeonato.js"></script>
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
            <p id="breadcrumbs">Se encuentra en: <a href="#">Registro de Campeonatos</a></p>
            <hr class="noscreen" />
            
        </div> <!-- /strip -->

        <!-- Content -->        
        <div id="content">
        
        <?php				
			include_once('../web/mostrarActionMensajes.php');
		?>

        <form action="../clases/actions/campeonatos/campeonatosAction.php" method="post" name="form_registro" id="form_registro">
            <input type="hidden" name="cam_ope" value="<?php echo $cam_ope;?>" />
            <input type="hidden" name="cam_cod" value="<?php if ($objCampeonato != NULL) {echo $objCampeonato->getCamCod();} ?>"/>

            <!-- Article -->
            <div class="article">
                <h2><span><a href="#">Datos del Campeonato</a></span></h2>

	            <p><label>Nombre</span></label>
			      <span id="search-input-out">
                  <input type="text" name="cam_nombre" id="search-input" size="18" value="<?php if ($objCampeonato != NULL) {echo $objCampeonato->getCamNombre();} ?>"/>
                </p>
            	<p><label>Descripcion</span></label>
			      <span id="search-input-out">
                  <input type="text" name="cam_descripcion" id="search-input" size="18" value="<?php if ($objCampeonato != NULL) {echo $objCampeonato->getCamDes();} ?>"/>
                </p>
                <!-- <p class="btn-more box noprint"><strong><a href="#">Continue</a></strong></p> -->
            </div> <!-- /article -->

            <hr class="noscreen" />

            <!-- Article -->
            <div class="article">
                <h2><span><a href="#">Datos de Acceso</a></span></h2>

               	<p>
                	<span><label>Contraseña</label></span>
			        <span id="search-input-out"><input type="password" name="cam_pass" id="search-input" size="18" /></span>
                </p>
            	<p>
                	<span><label>Confirmar Contraseña</label></span>
			        <span id="search-input-out"><input type="password" name="cam_pass_conf" id="search-input" size="18" /></span>
                </p>

                <p class="btn-more box noprint"><strong><a onclick="validarCampeonato(document.getElementById('form_registro'))">Enviar</a></strong></p>
            </div> <!-- /article --> 
            
            <hr class="noscreen" />          
        
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

</body>
</html>