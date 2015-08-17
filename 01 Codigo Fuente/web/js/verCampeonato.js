/*
 * Fichero con las validaciones para los campeonatos
 * Autor: Jose Angel Martinez
 * Fecha: 2011/01/13
 * Versión: 1.0
 */

//Funcion para validar los campos del formulario de alta / modificacion de usuraios
function validarCampeonato(formulario) {
	
	//alert(formulario.usr_nombre.value.length);	
	var errores = "";
	
	//Validamos que el nombre sea no nulo
	if(formulario.cam_nombre.value == "") {
		errores = errores + '\n - El NOMBRE no puede ser vacio';
	}
	
	//Validamos que el apellido 1 sea no nulo
	if(formulario.cam_descripcion.value == "") {
		errores = errores + '\n - La DESCRIPCIÓN no puede ser vacio';
	}
	
	//Validamos que la contraseÃ±a sea no nulo
	if(formulario.cam_pass.value == "") {
		errores = errores + '\n - La CONTRASEÑA no puede ser vacio';
	}
	
	//Validamos que la confirmacion de contraseÃ±a sea no nulo
	if(formulario.cam_pass_conf.value == "") {
		errores = errores + '\n - CONFIRMAR CCONTRASEÑA no puede ser vacio';
	}
	
	//Validamos que la contraseÃ±a y la confirmacion de contraseÃ±a sean iguales
	if ((formulario.cam_pass.value != "") && (formulario.cam_pass_conf.value != ""))
		if (formulario.cam_pass.value != formulario.cam_pass_conf.value) {
			errores = errores + '\n - La CONTRASEÑA y la CONFIRMACION DE CONTRASEÑA deben ser iguales';
		} else if ( (formulario.cam_pass.value.length < 6) || (formulario.cam_pass.value.length > 16) ) {
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

/*
 * Funcion para validar el formulario de consulta de clasificaciones
 * Version 2.2
 */
function validarFormularioClasificacion(formulario) {
    
    //alert(formulario.usr_nombre.value.length);	
	var errores = "";
    
        //Obtenemos el valor seleccionado dentro de los radio.
    for(var i = 0; i < formulario.cam_clas_rad.length; i++) {
        if (formulario.cam_clas_rad[i].checked) {
            opcionRadio = formulario.cam_clas_rad[i];
            break;        
        }       
    }
	
	//Validamos que el nombre sea no nulo
    if (opcionRadio.value != 'cam_clas_rad_cmp') {
        if(formulario.car_cod.value == 0) {
            errores = errores + '\n - Debe seleccionar una carrera o la clasificacion general';
        }
    }
    
    //Resultado de la operacion
	if (errores != "") {
		errores = 'Se han encontrado los siguientes errores:' + errores;
		alert(errores);
	} else {		
		formulario.submit();
	}    
    
}

/*
 * Funcion para deshabilitar / habilitar el combo de las carreras si la opcion seleccionada no es ClasificaciÃ³n por puntos. 
 * VersiÃ³n 6.0
 */
 function modificarEstadoComboCarreras(formulario) {
    
    var opcionRadio;
    
    //Obtenemos el valor seleccionado dentro de los radio.
    for(var i = 0; i < formulario.cam_clas_rad.length; i++) {
        if (formulario.cam_clas_rad[i].checked) {
            opcionRadio = formulario.cam_clas_rad[i];
            break;        
        }       
    }
    
    //Comoprobamos si hay que habilitar o no el combo de las carrera    
    if (opcionRadio.value == 'cam_clas_rad_cmp') {
        formulario.car_cod.disabled = true;
    } else {
        formulario.car_cod.disabled = false;
    }
}
