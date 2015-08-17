<?php
	include_once('../clases/entidades/campeonato.class.php');
	include_once('../clases/entidades/usuario.class.php');
	include_once('../clases/entidades/actionMensajes.class.php');
	include_once('../clases/utilidades/seguridad.php');
	include_once('../clases/interfaces/InterfaceGenerico.class.php');
	
	$objListaCampeonato = array();
	if (isset($_SESSION[CampeonatoListaSesion])){
		$objListaCampeonato = $_SESSION[CampeonatoListaSesion];
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
    
    <title>JAM F1 - Campeonatos</title>
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
            <p id="breadcrumbs">Se encuentra en: <a href="#">Ver los Campeonatos</a></p>
            <hr class="noscreen" />
            
        </div> <!-- /strip -->

        <!-- Content -->        
        <div id="content">
        
			<?php				
				include_once('../web/mostrarActionMensajes.php');
			?>

            <!-- Article -->
            <div class="article">
                <h2><span><a href="#">Campeonatos</a></span></h2>
                <p>
                	<p style="width: 25%; float: left;">Nombre</p>
                    <p style="width: 30%; float: left;">Descripción</p>
                    <p style="width: 15%; float: left;">Adm</p>
                    <p style="width: 15%; float: left;">Clas</p>
                    <p style="width: 15%; float: left;">Muro</p>
                <?php
					foreach($objListaCampeonato as $objCampeonato){
						
				       	echo '<p style="width: 25%; float: left;">'.$objCampeonato->getCamNombre().'</p>';				
				        echo '<p style="width: 30%; float: left;">'.$objCampeonato->getCamDes().'</p>';
                		echo '<p style="width: 15%; float: left;">';
						if ($objUsuario->getUsrCod() == $objCampeonato->getCamUsrCod()) {
							echo '<a href="'.
							'../clases/actions/campeonatos/campeonatosAction.php?cam_ope='.CampeonatoVerModificar.'&'.CampeonatoCodigo.'='
							.$objCampeonato->getCamCod()
							.'">Administrar</a></p>';
						} else {
						    echo '</p>';
						}
                        //Version 2.1: 2011-03-27
						echo '<p style="width: 15%; float: left;">'.
                            '<a href="'.
							'../clases/actions/campeonatos/campeonatosAction.php?cam_ope='.CampeonatoVerClasificacion.'&'.CampeonatoCodigo.'='
							.$objCampeonato->getCamCod()                            
							.'">Clasificacion</a></p>';
                        //Version 3.0: 20011-09-28:
 						echo '<p style="width: 15%; float: left;">'.
                            '<a href="'.
							'../clases/actions/campeonatos/muroMensajesAction.php?'.MuroMensajesOperacion.'='.MuroMensajesVer.'&'.CampeonatoCodigo.'='
							.$objCampeonato->getCamCod()                            
							.'">Muro</a></p>';                        
					}
				?>
                </p>
                <p><strong><a href="../clases/actions/campeonatos/campeonatosAction.php?cam_ope=<?php echo CampeonatoVerRegistrar?>">Registrar nuevo campeonato</a></strong></p>
            </div>            
            <!-- /article -->

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

</body>
</html>