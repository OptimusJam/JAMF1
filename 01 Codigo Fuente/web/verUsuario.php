<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceGenerico.class.php');

    $estado_session = session_status();
    if($estado_session == PHP_SESSION_NONE) {
        session_start();
    }
	
	$usr_op = UsuarioRegistrar;
	
	//comprobamos si hay usuario.
	$objUsuario = NULL;
	if (isset($_SESSION[UsuarioSesion])) {
	 	//Si hay, lo recuperamos y mostramos los datos para modificar	 	
		$objUsuario = $_SESSION[UsuarioSesion];
		if ($objUsuario->getUsrCod() != NULL) {
			$usr_op = UsuarioModificar;	
		} 	 
 	} else { //if (isset) 
		//header("location:../../../index.php");

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
    
    <title>JAM F1 - Registro de Usuario</title>
    <meta name="description" content="..." />
    <meta name="keywords" content="..." />
    
    <link rel="index" href="./" title="Home" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="./css/main.css" />
    <link rel="stylesheet" media="print" type="text/css" href="./css/print.css" />
    <link rel="stylesheet" media="aural" type="text/css" href="./css/aural.css" />
    
    <script language="javascript" src="./js/verUsuario.js"></script>
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

        <form action="../clases/actions/usuarios/usuariosAction.php" method="post" name="form_registro" id="form_registro">
            <input type="hidden" name="usr_ope" value="<?php echo $usr_op; ?>" />
            <input type="hidden" name="usr_cod" value="<?php if ($objUsuario != NULL) {echo $objUsuario->getUsrCod();} ?>"/>

            <!-- Article -->
            <div class="article">
                <h2><span><a href="#">Datos del Usuarios</a></span></h2>

                <p><span><label>Nombre</label></span>
			      <span id="search-input-out">
                  <input type="text" name="usr_nombre" id="search-input" size="18" value="<?php if ($objUsuario != NULL) {echo $objUsuario->getUsrNom();} ?>"/>
                  </span></p>
            	<p><label>Apellido 1</label></span>
			      <span id="search-input-out">
                  <input type="text" name="usr_ape_1" id="search-input" size="18" value="<?php if ($objUsuario != NULL) {echo $objUsuario->getUsrApe1();} ?>"/>
                  </span></p>
            	<p><label>Apellido 2</label></span>
			      <span id="search-input-out">
                  <input type="text" name="usr_ape_2" id="search-input" size="18" value="<?php if ($objUsuario != NULL) {echo $objUsuario->getUsrApe2();} ?>"/>
                  </span></p>
			    <p><label>E-mail</label></span>
			      <span id="search-input-out">
                  <input type="text" name="usr_email" id="search-input" size="18" value="<?php if ($objUsuario != NULL) {echo $objUsuario->getUsrEmail();} ?>"/>
                  </span></p>

                <!-- <p class="btn-more box noprint"><strong><a href="#">Continue</a></strong></p> -->
            </div> <!-- /article -->

            <hr class="noscreen" />

            <!-- Article -->
            <div class="article">
                <h2><span><a href="#">Datos de Acceso</a></span></h2>

                <p>
                	<span><label>Nombre de usuario</label></span>
			        <span id="search-input-out"><input type="text" name="usr_login" id="search-input" size="18"  value="<?php if ($objUsuario != NULL) {echo $objUsuario->getUsrLogin();} ?>"/></span>
                </p>
            	<p>
                	<span><label>Contraseña</label></span>
			        <span id="search-input-out"><input type="password" name="usr_pass" id="search-input" size="18" value=""/></span>
                </p>
            	<p>
                	<span><label>Confirmar Contraseña</label></span>
			        <span id="search-input-out"><input type="password" name="usr_pass_conf" id="search-input" size="18" value=""/></span>
                </p>

                <p class="btn-more box noprint"><strong><a onclick="validarUsuario(document.getElementById('form_registro'))">Enviar</a></strong></p>
            </div> <!-- /article --> 
            
            <hr class="noscreen" />          
        
        </form>
        
        </div> <!-- /content -->

        <!-- Right column -->
        <div id="col" class="noprint">
        <?php		
        	if ($usr_op == UsuarioRegistrar) {
		?>
            <div id="col-in">

                <!-- About Me -->
                <h3><span>Acceso de Usuarios</span></h3>

                <div id="about-me">
                    <p>
			<form action="../clases/actions/usuarios/usuariosAction.php" method="post" name="form_login">
			<label>Nombre de usuario:
			<span id="search-input-out"><input type="text" name="usr_login" id="search-input" size="18" /></span></label>
			<label>Contraseña
			<span id="search-input-out"><input type="text" name="usr_pass" id="search-input" size="18" /></span></label>
			<input type="submit" name="form_login_submit" value="Acceder"/>
			<input type="hidden" name="usr_ope" value="<?php echo UsuarioLogin ?>" />
			</form>
		    </p>
                </div> <!-- /about-me -->

                <hr class="noscreen" />

                <!-- Category -->
                <h3 ><span>Men?an></h3>

                <ul id="category">
					<!-- Opcion seleccionada
					<li id="category-active"><a href="#">Selected category</a></li>
					-->
                    <li id="category-active"><a href="#">Registro de usuarios</a></li>					
                    <li><a href="#">Centro estadiacute;stico</a></li>
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
            <?php
				} else {
					include('columnaDerecha.php');
				}
			?>
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