/*
 * Fichero con utilidades de JavaScript
 * Autor: Jose Angel Martinez
 * Fecha: 2011/01/13
 * Versión: 1.0
 */

function MostrarOcultar(ContenedorInformacion, BotonMostrar, BotonOcultar)
{

	// Asignamos los parametros de la funcion a unas variables
	var menu = document.getElementById(ContenedorInformacion);
	var mostrar = document.getElementById(BotonMostrar);
	var ocultar = document.getElementById(BotonOcultar);

	// alert('En la funcion...');
	// Comprobamos los displays y los invertimos
	if (menu.style.display == 'none')
	{
		// alert('Mostrar...');
		menu.style.display = 'block';
		mostrar.style.display = 'none';
		ocultar.style.display = 'block';
	}
	else
	{
		// alert('Ocultar...');
		menu.style.display = 'none';
		mostrar.style.display = 'block';
		ocultar.style.display = 'none';
	}
}