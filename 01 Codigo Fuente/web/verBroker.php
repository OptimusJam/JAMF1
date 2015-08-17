<?php
	include_once('../clases/entidades/brokerItem.class.php');
	include_once('../clases/entidades/usuario.class.php');
	include_once('../clases/entidades/actionMensajes.class.php');
	include_once('../clases/utilidades/seguridad.php');
	include_once('../clases/interfaces/InterfaceGenerico.class.php');
    
    include_once('../clases/interfaces/InterfacePaginas.class.php');
    
	$objListaBrokerPilotos = array();
	if (isset($_SESSION[ListaBrokerPilotos])){
		$objListaBrokerPilotos = $_SESSION[ListaBrokerPilotos];
	}
    
    $objListaBrokerEscuderias = array();
	if (isset($_SESSION[ListaBrokerEscuderias])){
		$objListaBrokerEscuderias = $_SESSION[ListaBrokerEscuderias];
	}
    
    $objListaBrokerMotores = array();
	if (isset($_SESSION[ListaBrokerMotores])){
		$objListaBrokerMotores = $_SESSION[ListaBrokerMotores];
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
    
    <title>JAM F1 - Broker</title>
    <meta name="description" content="..." />
    <meta name="keywords" content="..." />
    
    <link rel="index" href="./" title="Home" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="./css/main.css" />
    <link rel="stylesheet" media="print" type="text/css" href="./css/print.css" />
    <link rel="stylesheet" media="aural" type="text/css" href="./css/aural.css" />    
    
    <script language="javascript" src="./js/verCampeonato.js"></script>
    <script language="javascript" src="./js/utilidades2.js"></script>
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
            <a href="#" onClick="MostrarOcultarPestanas('<?php echo PestanaBrokerPilotos;?>','<?php echo PestanaBroker;?>')" 
                id="mostrarDatosBroker">Broker de Pilotos</a>
            </li>
            <li>
            <a href="#" onClick="MostrarOcultarPestanas('<?php echo PestanaBrokerEscuderias;?>','<?php echo PestanaBroker;?>')" 
                id="mostrarDatosBroker">Broker de Escuderias</a>
            </li>
            <li>
            <a href="#" onClick="MostrarOcultarPestanas('<?php echo PestanaBrokerMotores;?>','<?php echo PestanaBroker;?>')" 
                id="mostrarDatosBroker">Broker de Motores</a>
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
            <p id="breadcrumbs">Se encuentra en: <a href="#">Ver los Campeonatos</a></p>
            <hr class="noscreen" />
            
        </div> <!-- /strip -->

        <!-- Content -->                
        <div id="content">
        
			<?php				
				include_once('../web/mostrarActionMensajes.php');
			?>

            <!-- Article -->
            <div class="article" id="<?php echo PestanaBrokerPilotos;?>" style="display:block;">
                <h2><span><a href="#">Broker Pilotos</a></span></h2>
                <p>
                	<p style="width: 5%; float: left;">N</p>
                    <p style="width: 5%; float: left;">B</p>
                    <p style="width: 30%; float: left;">Piloto</p>
                    <p style="width: 20%; float: left;">Sube 15% si</p>
                    <p style="width: 20%; float: left;">Media</p>
                    <p style="width: 20%; float: left;">Baja 15% si</p>
                <?php
					foreach($objListaBrokerPilotos as $objBroker){
						
				       	echo '<p style="width: 5%; float: left;">'.$objBroker->getBroPilCod().'</p>';
                        if ($objBroker->getBroPilBonus() == 1) {
                            echo '<p style="width: 5%; float: left;">S</p>';
                        } else {
                            echo '<p style="width: 5%; float: left;">N</p>';
                        }				
                        echo '<p style="width: 30%; float: left;">'.$objBroker->getBroPilNom().'</p>';
                        echo '<p style="width: 20%; float: left;">'.$objBroker->getBroPilLimSup().'</p>';
                        echo '<p style="width: 20%; float: left;">'.$objBroker->getBroPilMedia().'</p>';
                        echo '<p style="width: 20%; float: left;">'.$objBroker->getBroPilLimInf().'</p>';
					}
				?>
                </p>
                <p>&nbsp;</p>
            </div>            
            <!-- /article -->

            <hr class="noscreen" />
            
            <!-- Article -->
            <div class="article" id="<?php echo PestanaBrokerEscuderias;?>" style="display:none;">
                <h2><span><a href="#">Broker Escuderias</a></span></h2>
                <p>
                	<p style="width: 5%; float: left;">N</p>
                    <p style="width: 5%; float: left;">B</p>
                    <p style="width: 39%; float: left;">Escuderia</p>
                    <p style="width: 17%; float: left;">Sube 15% si</p>
                    <p style="width: 17%; float: left;">Media</p>
                    <p style="width: 17%; float: left;">Baja 15% si</p>
                <?php
					foreach($objListaBrokerEscuderias as $objBroker){
						
				       	echo '<p style="width: 5%; float: left;">'.$objBroker->getBroPilCod().'</p>';				
                        if ($objBroker->getBroPilBonus() == 1) {
                            echo '<p style="width: 5%; float: left;">S</p>';
                        } else {
                            echo '<p style="width: 5%; float: left;">N</p>';
                        }
                        echo '<p style="width: 39%; float: left;">'.$objBroker->getBroPilNom().'</p>';
                        echo '<p style="width: 17%; float: left;">'.$objBroker->getBroPilLimSup().'</p>';
                        echo '<p style="width: 17%; float: left;">'.$objBroker->getBroPilMedia().'</p>';
                        echo '<p style="width: 17%; float: left;">'.$objBroker->getBroPilLimInf().'</p>';
					}
				?>
                </p>
                <p>&nbsp;</p>
            </div>            
            <!-- /article -->

            <hr class="noscreen" />
            
            <!-- Article -->
            <div class="article" id="<?php echo PestanaBrokerMotores;?>" style="display:none;">
                <h2><span><a href="#">Broker Motores</a></span></h2>
                <p>
                	<p style="width: 5%; float: left;">N</p>
                    <p style="width: 5%; float: left;">B</p>
                    <p style="width: 30%; float: left;">Motor</p>
                    <p style="width: 20%; float: left;">Sube 15% si</p>
                    <p style="width: 20%; float: left;">Media</p>
                    <p style="width: 20%; float: left;">Baja 15% si</p>
                <?php
					foreach($objListaBrokerMotores as $objBroker){
						
				       	echo '<p style="width: 5%; float: left;">'.$objBroker->getBroPilCod().'</p>';				
                        if ($objBroker->getBroPilBonus() == 1) {
                            echo '<p style="width: 5%; float: left;">S</p>';
                        } else {
                            echo '<p style="width: 5%; float: left;">N</p>';
                        }
                        echo '<p style="width: 30%; float: left;">'.$objBroker->getBroPilNom().'</p>';
                        echo '<p style="width: 20%; float: left;">'.$objBroker->getBroPilLimSup().'</p>';
                        echo '<p style="width: 20%; float: left;">'.$objBroker->getBroPilMedia().'</p>';
                        echo '<p style="width: 20%; float: left;">'.$objBroker->getBroPilLimInf().'</p>';
					}
				?>
                </p>
                <p>&nbsp;</p>
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