/*
 * Fichero con las validaciones para el centro estadistico
 * Autor: Jose Angel Martinez
 * Fecha: 2011/01/13
 * Versión: 1.0
 */

/*
 * Funcion para validar el formulario de consulta de clasificaciones
 * Version 2.2
 */
function validarCentroEstadistico(formulario) {
    
    //alert(formulario.usr_nombre.value.length);	
	var errores = "";
	
	//Validamos que el nombre sea no nulo
	if(formulario.cen_est_car.value == 0) {
		errores = errores + '\n - Debe seleccionar una carrera o la clasificacion general';
    }
    
    //Resultado de la operacion
	if (errores != "") {
		errores = 'Se han encontrado los siguientes errores:' + errores;
		alert(errores);
	} else {		
		formulario.submit();
	}    
    
}