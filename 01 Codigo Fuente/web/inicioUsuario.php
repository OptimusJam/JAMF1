<?php
	include_once('../clases/entidades/usuario.class.php');
	include_once('../clases/entidades/actionMensajes.class.php');
	include_once('../clases/utilidades/seguridad.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1" />
    <meta http-equiv="content-language" content="es" />
    <meta name="robots" content="all,follow" />

    <meta name="author" content="All: ... [Nazev webu - www.url.cz]; e-mail: info@url.cz" />
    <meta name="copyright" content="Design/Code: Vit Dlouhy [Nuvio - www.nuvio.cz]; e-mail: vit.dlouhy@nuvio.cz" />
    
    <title>JAM F1 - Inicio de Usuario</title>
    <meta name="description" content="..." />
    <meta name="keywords" content="..." />
    
    <link rel="index" href="./" title="Home" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="./css/main.css" />
    <link rel="stylesheet" media="print" type="text/css" href="./css/print.css" />
    <link rel="stylesheet" media="aural" type="text/css" href="./css/aural.css" />
    
    <script language="javascript" src=""></script>
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
            <p id="breadcrumbs">Se encuentra en: <a href="#">Registro de Usuarios</a></p>
            <hr class="noscreen" />
            
        </div> <!-- /strip -->

        <!-- Content -->        
        <div id="content">
        
        <?php				
				include_once('../web/mostrarActionMensajes.php');
		?>

            <!-- Article -->
            <div class="article">
                <h2><span><a href="#">Clasificación del Gran Premio de Bélgica</a></span></h2>

                <p><label>La clasificación por puntos del GP de Bélgica no esta disponible por diversos problemas que no hemos podido solucionar. Disculpad las molestias.
                </label></p>               
            </div>
            <!-- /article -->

            <hr class="noscreen" />

            <!-- Article -->
            <!--
            <div class="article">
                <h2><span>Escuderia Ideal del GP de Italia</span></h2>
                <p class="info noprint">
                    <span class="date">2012-09-21 @ 12:00</span><span class="noscreen">,</span>
                </p>
                <p> 
                    <p style="display: table-row;">                            
                        <span style="width: 25%; display: table-cell;"><b>Pilotos</b>&nbsp;</span>
                    </p>
                    <p style="display: table-row;">                            
                        <span style="width: 25%; display: table-cell;">Lewis Hamilton&nbsp;</span>
                        <span style="width: 25%; display: table-cell;">Felipe Massa&nbsp;</span>
                        <span style="width: 25%; display: table-cell;">Sergio Pérez&nbsp;</span>
                        <span style="width: 25%; display: table-cell;">Fernando Alonso&nbsp;</span>
                    </p>
                    <p style="display: table-row;">                            
                        <span style="width: 25%; display: table-cell;">1500&nbsp;</span>
                        <span style="width: 25%; display: table-cell;">1095&nbsp;</span>
                        <span style="width: 25%; display: table-cell;">1000&nbsp;</span>
                        <span style="width: 25%; display: table-cell;">900&nbsp;</span>
                    </p>
                </p>
                <p>
                    <p style="display: table-row;">                            
                        <span style="width: 50%; display: table-cell;"><b>Escuderias</b>&nbsp;</span>
                    </p>
                    <p style="display: table-row;">                            
                        <span style="width: 50%; display: table-cell;">Scuderia Ferrari&nbsp;</span>
                        <span style="width: 50%; display: table-cell;">Vodafone McLaren Mercedes&nbsp;</span>
                    </p>
                    <p style="display: table-row;">                            
                        <span style="width: 50%; display: table-cell;">997.5&nbsp;</span>
                        <span style="width: 50%; display: table-cell;">938.5&nbsp;</span>
                    </p>
                </p>
                <p>
                    <p style="display: table-row;">                            
                        <span style="width: 100%; display: table-cell;"><b>Motor</b>&nbsp;</span>
                    </p>
                    <p style="display: table-row;">                            
                        <span style="width: 100%; display: table-cell;">Motor Mercedes FO 108Z&nbsp;</span>
                    </p>
                    <p style="display: table-row;">                            
                        <span style="width: 100%; display: table-cell;">657.6&nbsp;</span>                        
                    </p>                                 
                </p>
            </div>
            -->
            <!-- /article -->
            
            
            
            <!-- Article -->
            <!--
            <div class="article">
                <h2><span>Escuderia Ideal del GP de Bélgica</span></h2>
                <p class="info noprint">
                    <span class="date">2012-09-05 @ 12:00</span><span class="noscreen">,</span>
                </p>
                <p> 
                    <p style="display: table-row;">                            
                        <span style="width: 25%; display: table-cell;"><b>Pilotos</b>&nbsp;</span>
                    </p>
                    <p style="display: table-row;">                            
                        <span style="width: 25%; display: table-cell;">Jenson Button&nbsp;</span>
                        <span style="width: 25%; display: table-cell;">Kimi Räikkönen&nbsp;</span>
                        <span style="width: 25%; display: table-cell;">Sebastian Vettel&nbsp;</span>
                        <span style="width: 25%; display: table-cell;">Nico Hulkenberg&nbsp;</span>
                    </p>
                    <p style="display: table-row;">                            
                        <span style="width: 25%; display: table-cell;">1500&nbsp;</span>
                        <span style="width: 25%; display: table-cell;">1200&nbsp;</span>
                        <span style="width: 25%; display: table-cell;">1010&nbsp;</span>
                        <span style="width: 25%; display: table-cell;">770&nbsp;</span>
                    </p>
                </p>
                <p>
                    <p style="display: table-row;">                            
                        <span style="width: 50%; display: table-cell;"><b>Escuderias</b>&nbsp;</span>
                    </p>
                    <p style="display: table-row;">                            
                        <span style="width: 50%; display: table-cell;">Red Bull Racing&nbsp;</span>
                        <span style="width: 50%; display: table-cell;">Vodafone McLaren Mercedes&nbsp;</span>
                    </p>
                    <p style="display: table-row;">                            
                        <span style="width: 50%; display: table-cell;">785&nbsp;</span>
                        <span style="width: 50%; display: table-cell;">777.5&nbsp;</span>
                    </p>
                </p>
                <p>
                    <p style="display: table-row;">                            
                        <span style="width: 100%; display: table-cell;"><b>Motor</b>&nbsp;</span>
                    </p>
                    <p style="display: table-row;">                            
                        <span style="width: 100%; display: table-cell;">Motor Mercedes FO 108Z&nbsp;</span>
                    </p>
                    <p style="display: table-row;">                            
                        <span style="width: 100%; display: table-cell;">543.3&nbsp;</span>                        
                    </p>                                 
                </p>
            </div>
            -->
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