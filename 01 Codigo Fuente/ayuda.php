<?php
	/*
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceGenerico.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');

    $estado_session = session_status();
    if($estado_session == PHP_SESSION_NONE) {
        session_start();
    }
    
    //2014-02-04: Version 8.0
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/actions/utilidades/utilidadesAction.php');
	
	//comprobamos si hay usuario.
	$objUsuario = NULL;
	if (isset($_SESSION[UsuarioSesion])) {
	 	//Si hay, lo recuperamos y mostramos los datos para modificar	 	
		header("location:./web/inicioUsuario.php");
 	} 
    
    $sistemaCerrado = getEstadoSistema();*/
    $sistemaCerrado = false;
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1" />
    <meta http-equiv="content-language" content="es" />
    <meta name="robots" content="all,follow" />

    <meta name="author" content="All: ... [Nazev webu - www.url.cz]; e-mail: info@url.cz" />
    <meta name="copyright" content="Design/Code: Vit Dlouhy [Nuvio - www.nuvio.cz]; e-mail: vit.dlouhy@nuvio.cz" />
    
    <title>JAM F1</title>
    <meta name="description" content="..." />
    <meta name="keywords" content="..." />
    
    <link rel="index" href="./" title="Home" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="./web/css/main.css" />
    <link rel="stylesheet" media="print" type="text/css" href="./web/css/print.css" />
    <link rel="stylesheet" media="aural" type="text/css" href="./web/css/aural.css" />
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
     <!--
     <div id="tabs" class="noprint">
        <hr class="noscreen" />
     </div>
     -->
     <!-- /tabs -->

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
            <p id="breadcrumbs">Se encuentra en: <a href="#">Inicio</a></p>
            <hr class="noscreen" />
            
        </div> <!-- /strip -->

        <!-- Content -->
        <div id="content">

            <?php
		
	$objActionMensajes = new actionMensajes();
		
	if (isset($_SESSION[MensajesInfo])) {
		$objActionMensajes = $_SESSION[MensajesInfo];
	}

	if ($objActionMensajes->getHayMensajes()) {
?>

<!-- Article -->
<div class="article">
	<h2><span><a href="#">Se han producido los siguientes mensajes informativos</a></span></h2>

	<?php
		$listaMensajes = $objActionMensajes->getColMensajes();
		foreach($listaMensajes as $mensaje) {
	?>

    <p><label><?php echo $mensaje;?></label></p>
    
	<?php } //foreach ?>   

	<!-- <p class="btn-more box noprint"><strong><a href="#">Continue</a></strong></p> -->
</div> <!-- /article -->

<hr class="noscreen" />

<?php } //if 

	if (isset($_SESSION[MensajesErro])) {
		$objActionMensajes = $_SESSION[MensajesErro];
	}

	if ($objActionMensajes->getHayErrores()) {
?>

<!-- Article -->
<div class="article">
	<h2><span><a href="#">Se han producido los siguientes errores</a></span></h2>

	<?php
		foreach($objActionMensajes->getColErrores() as $error) {
	?>

    <p><label><?php echo $error;?></label></p>
    
	<?php } //foreach ?>   

	<!-- <p class="btn-more box noprint"><strong><a href="#">Continue</a></strong></p> -->
</div> <!-- /article -->

<hr class="noscreen" />

<?php } //if ?>

<?php if ($sistemaCerrado) {?>    
		  <!--
			<div class="article">
                <h2><span>Cerrado</span></h2>
                <p class="info noprint">
                    <span class="date">2013-05-29 @ 19:00</span><span class="noscreen">,</span>
                </p>
                <p>
                    Estamos calculando los puntos del último GP.                  
                </p>                
            </div>			
          -->
<?php } //if (sistemaCerrado) ?>

            <!-- Article -->
            <div class="article">
                <h2><span>Sistema no disponible</span></h2>
                <p class="info noprint">
                    <span class="date">2013-07-06 @ 0:00</span><span class="noscreen">,</span>
                </p>
                <p>
					El sisteme no esta disponible para la carrera del presente fin de semana (GP de Alemania, 5-6-7 de Julio) 
                    debido a un problema en el alojamiento de la aplicación.
                    <br/>Se esta tratando de poner a punto todo de cara a las siguiente carreras.
                    <br/>A efectos de la clasificación, esta carrera <b>no contará</b>. 
                </p>
            </div>
            <!-- /article -->
          
			<!-- Article -->
            <div class="article">
                <h2><span>Clasificación General no disponible</span></h2>
                <p class="info noprint">
                    <span class="date">2013-04-18 @ 0:00</span><span class="noscreen">,</span>
                </p>
                <p>
					La <b>Clasificación General</b> de cada campeonato no esta disponible. Estamos solucionando el problema.
					Estará disponible una vez finalice el siguiente Gran Premio.
                </p>
            </div>
            <!-- /article -->

            <!-- Article -->
			<!--			
            <div class="article">
                <h2><span>Cerrado</span></h2>
                <p class="info noprint">
                    <span class="date">2013-04-12 @ 0:00</span><span class="noscreen">,</span>
                </p>
                <p>
                    La migración del alojamiento de JAM F1 ha finalizado.
                    El sistema esta disponible.                   
                </p>
            </div>
			-->
            <!-- /article -->

            
            <!-- Article -->
            <!--
            <div class="article">
                <h2><span>Error en la modificación de equipos</span></h2>
                <p class="info noprint">
                    <span class="date">2012-09-01 @ 0:00</span><span class="noscreen">,</span>
                </p>
                <p>
                    Debido a un error no se han podido realizar los cambios.
                    El sistema vuelve a estar disponible y todo aquel que quiera puede realizar los cambios.
                    Se establece como <b>nueva fecha tope las 14:00 del dia 01/09/2012, hora de inicio de la clasificación</b>.                                        
                </p>
            </div>
            -->
            <!-- /article -->
            
            <!-- Article -->
            <div class="article">
                <h2><span>Información de interés</span></h2>
                <p class="info noprint">
                    <span class="date">2013-03-13 @ 19:00</span><span class="noscreen">,</span>
                </p>
                <p>
                    <b>Cambios:</b> el limite de los cambios queda fijado a la hora de inicio de la Sesión Calificatoria.
                    <hr class="noscreen" />
                    <b>Pilotos, Escuderias, Motores:</b> la distribución de pilotos, escuderias y motores se puede ver <a target="_blank" href="http://en.wikipedia.org/wiki/F1_2013#Signed_teams_and_drivers">aquí</a>.                      
                </p>
            </div>
            <!-- /article --> 
            
            <!-- Article -->
            <div class="article">
                <h2><span>Estamos en marcha con la nueva temporada</span></h2>
                <p class="info noprint">
                    <span class="date">2013-03-10 @ 9:00</span><span class="noscreen">,</span>
                </p>
                <p>
                    Comienza la nueva temporada de formula y en JAM F1 estamos listos para ello. Hemos incorporado nuevas clasificaciones para aumentar los piques.
                    Os esperamos a todos.                     
                </p>
            </div>
            <!-- /article -->        
            
            <!-- Article -->
            <div class="article">
                <h2><span>Paginación en los muros de los campeonatos</span></h2>
                <p class="info noprint">
                    <span class="date">2012-04-11 @ 9:00</span><span class="noscreen">,</span>
                </p>
                <p>
                    Hola a todos los participantes, se han paginado los muros de los menajes de los campeonatos para maayor comodidad. Además, se ha soluciona el problema de la ordenación de los mensajes.                     
                </p>
            </div>
            <!-- /article -->
            
            <!-- Article -->
            
            <div class="article">
                <h2><span>Vuelve un grande</span></h2>
                <p class="info noprint">
                    <span class="date">2011-11-29 @ 9:00</span><span class="noscreen">,</span>
                </p>
                <p>
                    Oficial: Kimi Räikkönen vuelve a la Fórmula 1 en 2012 con Lotus Renault GP                    
                </p>

                <p class="btn-more box noprint"><strong><a target="_blank" href="http://www.f1aldia.com/13532/oficial-kimi-raikkonen-vuelve-formula1-2012-lotus-renault-gp/">Continuar</a></strong></p>
            </div>
            
            <!-- /article -->
            
            <!-- Article -->
            <div class="article">
                <h2><span>Estamos en marcha</span></h2>
                <p class="info noprint">
                    <span class="date">2010-12-22 @ 15:01</span><span class="noscreen">,</span>
                </p>

                <p>Ya hemos empezado del desarrollo del JAM F1 para el campeonato de Formula 1 de 2011.
		Con más opciones y muchas novedades, esperamos que sea tan divertido como el campeonato 2010.
		Además esta vez accesible desde internet, como estamos viendo.
		</p>

                <p class="btn-more box noprint"><strong><a href="#">Continuar</a></strong></p>
            </div> <!-- /article -->

            <hr class="noscreen" />
                        
        </div> <!-- /content -->

        <!-- Right column -->
        <div id="col" class="noprint">
            <div id="col-in">

                <!-- About Me -->
                
                <h3><span>Acceso de Usuarios</span></h3>

                <div id="about-me">
                
                <?php if (!$sistemaCerrado) {?>
                <p>
                
			<form action="./clases/actions/usuarios/usuariosAction.php" method="post" name="form_login">
			<label>Nombre de usuario:
			<span id="search-input-out"><input type="text" name="usr_login" id="search-input" size="18" /></span></label>
			<label>Contraseña
			<span id="search-input-out"><input type="password" name="usr_pass" id="search-input" size="18" /></span></label>
			<input type="submit" name="form_login_submit" value="Acceder"/>
			<input type="hidden" name="usr_ope" value="usr_login" />
			</form>
                
		        </p>
                <?php } //if(sistemaCerrado) ?>
                
                </div> <!-- /about-me -->

                <hr class="noscreen" />

                <!-- Category -->
                <h3 ><span>Menú</h3>

                <ul id="category">
					<!-- Opcion seleccionada
					<li id="category-active"><a href="#">Selected category</a></li>
					-->
                    <li><a href="./web/verUsuario.php">Registro de usuarios</a></li>
                    <!-- <li>Registro de usuarios</li> -->
                    <li><a href="#">Centro estad&iacute;stico</a></li>
                    <li><a href="#">Clasificación</li>                    
                </ul>

                <hr class="noscreen" />

                <!-- Links -->
                <h3><span>Enlaces</span></h3>

                <ul id="links">
                    <li><a href="#">Enlace 1</a></li>
                    <li><a href="#">Enlace 2</a></li>
                    <li><a href="#">Enlace 3</a></li>
                    <li><a href="#">Enlace 4</a></li>
                    <li><a href="#">Enlace 5</a></li>
                </ul>

                <hr class="noscreen" />
            
            </div> <!-- /col-in -->
        </div> <!-- /col -->

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