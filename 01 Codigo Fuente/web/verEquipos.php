<?php
	include_once('../clases/entidades/campeonato.class.php');
	include_once('../clases/entidades/usuario.class.php');
	include_once('../clases/entidades/equipo.class.php');    
	include_once('../clases/entidades/actionMensajes.class.php');
    
    //Version 7.0
    include_once('../clases/entidades/carrera.class.php');
    
	include_once('../clases/utilidades/seguridad.php');
	include_once('../clases/interfaces/InterfaceGenerico.class.php');
	
	$objListaEquipo = array();
    $carrera = $_SESSION[CarreraSesion];
	if (isset($_SESSION[EquipoListaSesion])){
		$objListaEquipo = $_SESSION[EquipoListaSesion];      
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
    
    <title>JAM F1 - Equipos del usuario</title>
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
                <h2><span><a href="#">Equipos</a></span></h2>
                <p>
                	<p style="width: 35%; float: left;">Nombre</p>
                    <p style="width: 30%; float: left;">Lema</p>
                    <p style="width: 20%; float: left;">Campeonato</p>
                    <p style="width: 15%; float: left;">Ver</p>
                <?php
					foreach($objListaEquipo as $objEquipo){
						
				       	echo '<p style="width: 35%; float: left;">'.$objEquipo->getEquNom().'</p>';				
				        echo '<p style="width: 30%; float: left;">'.$objEquipo->getEquLema().'</p>';
                		echo '<p style="width: 20%; float: left;">'.$objEquipo->getEquCamNom().'</p>';
						echo '<p style="width: 15%; float: left;">
                            <a href="'.
							'../clases/actions/equipos/equiposAction.php?'.EquipoOperacion.'='.EquipoVerEquipo
                            .'&equ_cod='
							.$objEquipo->getEquCod()
                            .'&equ_carrera='
                            .$carrera->getCarCod()
							.'">Ver</a></p>';						
					}
				?>
                </p>
                <p>
                    <strong>
                    <a href="../clases/actions/equipos/equiposAction.php?<?php echo EquipoOperacion;?>=<?php echo EquipoVerRegistrar?>">Registrar nuevo equipo</a>
                    </strong>
                </p>
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