<?php
	include_once('../clases/entidades/actionMensajes.class.php');
	//include_once('../clases/interfaces/interfaceGenerico.class.php');

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

	if ($objActionMensajes->getHayErrores() ) {
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

<?php } //if 
    
    //Borramos las colecciones de mensajes
    unset($_SESSION[MensajesErro]);
    unset($_SESSION[MensajesInfo]);

?>