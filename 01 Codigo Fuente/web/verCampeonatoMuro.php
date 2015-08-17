<?php
    /*
     * Nuevo fichero
     * Version 2.1: 2011-03-27
     */
	
    include_once('../clases/entidades/comboItem.class.php');
	include_once('../clases/entidades/usuario.class.php');
    include_once('../clases/entidades/mensaje.class.php');
	include_once('../clases/entidades/actionMensajes.class.php');
	include_once('../clases/utilidades/seguridad.php');
	include_once('../clases/interfaces/InterfaceGenerico.class.php');
    include_once('../clases/interfaces/InterfacePaginas.class.php');
    
    if (isset($_SESSION[CampeonatoCodigo])) {
        $cam_codigo = $_SESSION[CampeonatoCodigo];
    }
    echo $cam_codigo;
    
    if (isset($_SESSION[ListaMensajesCampeonato])) {
        $objListaMensajesCampeonato = $_SESSION[ListaMensajesCampeonato];
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
    
    <title>JAM F1 - Mensajes del Campeonato</title>
    <meta name="description" content="..." />
    <meta name="keywords" content="..." />
    
    <link rel="index" href="./" title="Home" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="./css/main.css" />
    <link rel="stylesheet" media="print" type="text/css" href="./css/print.css" />
    <link rel="stylesheet" media="aural" type="text/css" href="./css/aural.css" />
    
    <script language="javascript" src="./js/verCampeonatoMuro.js"></script>
    <script language="javascript" src="./js/utilidades.js"></script>
    <script language="javascript" src="./js/utilidades2.js"></script>
    <!-- TinyMCE 
    <script type="text/javascript" src="./js/tinymce/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({
            selector: "textarea"
        });
    </script>
    TinyMCE: Fin-->
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
             
            <form action="../clases/actions/campeonatos/muroMensajesAction.php" method="post" name="form_registro" id="form_registro">
                <input type="hidden" name="<?php echo MuroMensajesOperacion;?>" value="<?php echo MuroMensajesRegistrar;?>" />
                <input type="hidden" name="<?php echo CampeonatoCodigo;?>" value="<?php echo $cam_codigo;?>" />
            <!-- Article -->
            <div class="article">                
                <h2><span><a href="#">Inserta un nuevo mensaje</a></span></h2>
                <p>
                    <!-- Tamaño en BBDD: 250 -->
                    <textarea name="msg_text" id="msg_text" style="float: none;" rows="5" cols="50"></textarea>
                </p>
                <p>&nbsp;</p>
                <p class="btn-more box noprint"><strong><a onclick="validarMensajeMuro(document.getElementById('form_registro'))">Enviar</a></strong></p>
                <p>&nbsp;</p>                                            
            </form>
            </div> <!-- /article -->

            <!-- Article -->
            <div class="article">
                <h2><span><a href="#">Mensajes</a></span></h2>
                <p>
                    <!-- 
                    <p style="display: table-row;">
                        <p style="width: 15%; float: left; display: table-cell;">Fecha</p>
                        <p style="width: 20%; float: left; display: table-cell;">Autor</p>
                        <p style="width: 65%; float: right; display: table-cell;">Mensaje</p>
                    </p>
                    -->
                    
                    <?php
                        $pagina = 1;
                        $mensajes = 0;
                        $totalMensajes = 0;
                        $ponerPagina = TRUE;
                        $numMensajes = sizeOf($objListaMensajesCampeonato);
                        foreach($objListaMensajesCampeonato as $objMensaje) {
                            
                            //añadimos la pagina si hace falta
                            if ($ponerPagina) {
                                $ponerPagina = FALSE;
                                if ($pagina == 1) {
                                    echo '<div id="pagina_'.$pagina.'" style="display:block;">';
                                } else {
                                    echo '<div id="pagina_'.$pagina.'" style="display:none;">';
                                }
                            }
                            
                            //mensaje
                           echo '<p style="display: table-row;">';
					       echo '<p style="width: 15%; display: table-cell;">Fecha: '.$objMensaje->getMsgFec().'</p>';
                           echo '<p style="width: 18%; display: table-cell;">Autor: '.$objMensaje->getMsgUsrNom().'</p>';
                           echo '<p style="width: 2%; ">';
                           echo '<p style="width: 65%; display: table-cell;">'.$objMensaje->getMsgText().'</p>';
                           echo '</p>';
                           echo '<hr>';
                           //mensaje fin
                           
                           //Incrementamos los mensajes
                           $mensajes = $mensajes + 1;                           
                           $totalMensajes = $totalMensajes + 1;
                           
                           if (($mensajes == NumeroMensajesPagina) 
                                || ($totalMensajes == $numMensajes)) {
                                //Fin de la pagina
                                $mensajes = 0;
                                $pagina = $pagina + 1;
                                $ponerPagina = TRUE;                                
                                echo '</div>';
                           }            
                        }                        
                        
                        //Añadir lista de página
                        for ($i=1;$i<$pagina;$i++) {                            
                            echo '&nbsp;<a href="#" onClick="MostrarOcultarPestanas(\'pagina_'.$i.'\',\''.Paginas.'\')">Pagina '.$i.'</a>&nbsp;';                  
                        }
                    
                        //Construir lista para las páginas->esto debe generar un array para en un javascript
                    ?>
                    <script language="javascript">
                        for(i=1;i<<?php echo $pagina;?>;i++) {
                            listaPagina[i-1] = "pagina_"+i;
                        }
                        //alert(listaPagina);                        
                    </script>
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