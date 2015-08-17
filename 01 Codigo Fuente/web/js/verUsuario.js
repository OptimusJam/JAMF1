/*
 * Fichero con las validaciones para los usuarios
 * Autor: Jose Angel Martinez
 * Fecha: 2010/12/26
 * Versión: 1.0
 */

//Funcion para validar los campos del formulario de alta / modificacion de usuraios
function validarUsuario(formulario) {
	
	//alert(formulario.usr_nombre.value.length);	
	var errores = "";
	
	//Validamos que el nombre sea no nulo
	if(formulario.usr_nombre.value == "") {
		errores = errores + '\n - El NOMBRE no puede ser vacio';
	}
	
	//Validamos que el apellido 1 sea no nulo
	if(formulario.usr_ape_1.value == "") {
		errores = errores + '\n - El APELLIDO 1 no puede ser vacio';
	}
	
	//Validamos que el apellido 2 sea no nulo
	if(formulario.usr_ape_2.value == "") {
		errores = errores + '\n - El APELLIDO 2 no puede ser vacio';
	}
	
	//Validamos que el email sea no nulo
	if(formulario.usr_email.value == "") {
		errores = errores + '\n - El EMAIL no puede ser vacio';
	} else {
		//Validamos el formato del email	
	}
	
	//Validamos que el nombre de usuario sea no nulo
	if(formulario.usr_login.value == "") {
		errores = errores + '\n - El NOMBRE DE USUARIO no puede ser vacio';
	}
	
	//Validamos que la contraseña sea no nulo
	if(formulario.usr_pass.value == "") {
		errores = errores + '\n - La CONTRASEÑA no puede ser vacio';
	}
	
	//Validamos que la confirmacion de contraseña sea no nulo
	if(formulario.usr_pass_conf.value == "") {
		errores = errores + '\n - CONFIRMAAR CCONTRASEÑA no puede ser vacio';
	}
	
	//Validamos que la contraseña y la confirmacion de contraseña sean iguales
	if ((formulario.usr_pass.value != "") && (formulario.usr_pass_conf.value != ""))
		if (formulario.usr_pass.value != formulario.usr_pass_conf.value) {
			errores = errores + '\n - La CONTRASEÑA y la CONFIRMACION DE CONTRASEÑA deben ser iguales';
		} else if ( (formulario.usr_pass.value.length < 6) || (formulario.usr_pass.value.length > 16) ) {
			errores = errores + '\n - La CONTRASEÑA tiene que tener tamaño entre 6 y 16';			
		}
	
	//Resultado de la operacion
	if (errores != "") {
		errores = 'Se han encontrado los siguientes errores:' + errores;
		alert(errores);
	} else {		
		formulario.submit();
	}
}
