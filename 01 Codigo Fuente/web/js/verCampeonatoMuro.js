/*
 * Fichero con las validaciones para los campeonatos
 * Autor: Jose Angel Martinez
 * Fecha: 2011/10/13
 * Versión: 1.0
 */

//Funcion para validar los campos del formulario de alta de nuevos mensajes en el muro
function validarMensajeMuro(formulario) {
    
    var errores = "";
    
    alert('Texto: $' + formulario.msg_text.value + '$');
    
    //Validamos que el texto sea no nulo
	if(formulario.msg_text.value == "") {
		errores = errores + '\n - El TEXTO no puede ser vacio';
	}
    
    //Validamos que el texto no supere la longitud máxima
    if(formulario.msg_text.value.length > 250) {
		errores = errores + '\n - La LONGITUD DEL MENSAJE no puede superar los 250 caracteres.';
	}
    
    //Resultado de la operacion
	if (errores != "") {
		errores = 'Se han encontrado los siguientes errores:' + errores;
		alert(errores);
	} else {		
		formulario.submit();
	}
    
}