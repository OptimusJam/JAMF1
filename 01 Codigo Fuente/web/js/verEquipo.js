/*
 * Fichero con las validaciones para los equipos
 * Autor: Jose Angel Martinez
 * Fecha: 2011/01/13
 * Versión: 1.0
 */

//Funcion para validar los campos del formulario de alta / modificacion de usuraios
function validarEquipo(formulario) {
	
	//alert('Hola: #'+formulario.equ_dinero.value+'#');
	var errores = "";
	
	//Validamos el campeonato    
	if ( (!formulario.equ_cam_nombre.disabled) && (formulario.equ_cam_nombre.value != 0) && (formulario.equ_cam_pass.value == "") ) {
		errores = errores  + '\n - Al elegir un CAMPEONATO, el campo CONTRASEÑA CAMPEONATO no puede ser vacio';
	}
	
	//Validamos que el nombre del equipo sea no nulo
	if(formulario.equ_nombre.value == "") {
		errores = errores + '\n - El NOMBRE no puede ser vacio';
	}
	
	//Validamos que el lema del equipo sea no nulo
	if(formulario.equ_lema.value == "") {
		errores = errores + '\n - El LEMA no puede ser vacio';
	}
	
	//Validamos los elementos del equipo
	if (formulario.equ_piloto_1.value == 0) {
		errores = errores + '\n - El PRIMER PILOTO no puede ser vacio';
	}
	
	if (formulario.equ_piloto_2.value == 0) {
		errores = errores + '\n - El SEGUNDO PILOTO no puede ser vacio';
	} else if (formulario.equ_piloto_2.value == formulario.equ_piloto_1.value) {
		errores = errores + '\n - El SEGUNDO PILOTO no puede igual que el PRIMER PILOTO';
	}
	
	if (formulario.equ_piloto_3.value == 0) {
		errores = errores + '\n - El TERCER PILOTO no puede ser vacio';
	} else if (formulario.equ_piloto_3.value == formulario.equ_piloto_1.value) {
		errores = errores + '\n - El TERCER PILOTO no puede igual que el PRIMER PILOTO';
	} else if (formulario.equ_piloto_3.value == formulario.equ_piloto_2.value) {
		errores = errores + '\n - El TERCER PILOTO no puede igual que el SEGUNDO PILOTO';
	}
	
	if (formulario.equ_piloto_4.value == 0) {
		errores = errores + '\n - El CUARTO PILOTO no puede ser vacio';
	} else if (formulario.equ_piloto_4.value == formulario.equ_piloto_1.value) {
		errores = errores + '\n - El CUARTO PILOTO no puede igual que el PRIMER PILOTO';
	} else if (formulario.equ_piloto_4.value == formulario.equ_piloto_2.value) {
		errores = errores + '\n - El CUARTO PILOTO no puede igual que el SEGUNDO PILOTO';
	} else if (formulario.equ_piloto_4.value == formulario.equ_piloto_3.value) {
		errores = errores + '\n - El CUARTO PILOTO no puede igual que el TERCER PILOTO';
	}
	
	if (formulario.equ_escuderia_1.value == 0) {
		errores = errores + '\n - La PRIMER ESCUDERIA no puede ser vacio';
	}
	
	if (formulario.equ_escuderia_1.value == 0) {
		errores = errores + '\n - La SEGUNDA ESCUDERIA no puede ser vacio';		
	} else if (formulario.equ_escuderia_1.value == formulario.equ_escuderia_2.value) {
		errores = errores + '\n - La SEGUNDA ESCUDERIA no puede igual que La SEGUNDA PRIMERA';
	}
	
	if (formulario.equ_motor_1.value == 0) {
		errores = errores + '\n - El MOTOR no puede ser vacio';
	}
	
	if (formulario.equ_piloto_primero.value == 0) {
		errores = errores + '\n - El PRIMER CLASIFICADO no puede ser vacio';
	}
	
	if (formulario.equ_piloto_segundo.value == 0) {
		errores = errores + '\n - El SEGUNDO CLASIFICADO no puede ser vacio';
	}

	if (formulario.equ_piloto_tercero.value == 0) {
		errores = errores + '\n - El TERCER CLASIFICADO no puede ser vacio';
	}
	
	if (formulario.equ_pos_alonso.value == 0) {
		errores = errores + '\n - La POSICION ALONSO no puede ser vacio';
	}

	/*
    if (formulario.equ_pos_alguersuari.value == 0) {
		errores = errores + '\n - El POSICION ALGUERSUARI no puede ser vacio';
	}
    */	
	
	if (formulario.equ_campeon_piloto.value == 0) {
		errores = errores + '\n - El CAMPEON DE PILOTOS no puede ser vacio';
	}
	
	if (formulario.equ_campeon_escuderia.value == 0) {
		errores = errores + '\n - El CAMPEON DE CONSTRUCTORES no puede ser vacio';
	}

	if (formulario.equ_campeon_vuelta_rapida.value == 0) {
		errores = errores + '\n - El CAMPEON DE VUELTAS RAPIDAS no puede ser vacio';
	}    
    
    formulario.equ_dinero.disabled=false;
    if (parseInt(formulario.equ_dinero.value) < 0) {        
        errores = errores + '\n - El DINERO DEL EQUIPO no puede ser vacio ni NEGATIVO';
    }
    formulario.equ_dinero.disabled=true;	
	
	//Resultado de la operacion
	if (errores != "") {        
		errores = 'Se han encontrado los siguientes errores:' + errores;
		alert(errores);
	} else {
	    formulario.equ_dinero.disabled = false;
        formulario.equ_cam_nombre.disabled = false;
        formulario.equ_cam_pass.disabled = false;
		formulario.submit();
	}
}

//Funcion para actualizar el presupuesto del equipo tras cambiar un item
function calculaPresupuesto(combo){
	//alert("Datos: "+combo.name+"; "+combo.value+"; "+document.getElementById(combo.name+"_"+combo.value).value);
	//var valor = document.getElementById(combo.name+"_"+combo.value).value;
    
    //Version 2.2: 2011-04-02
    //Comprobamos si la operacion es modificar para ver si se puede hacer el cambio
    if (document.getElementById("equ_cambios_disp") != null) {
        if (document.getElementById("equ_cambios_disp").value <= 0) {
            document.getElementById('equ_piloto_1').value = cod_piloto_1_old; 
            document.getElementById('equ_piloto_2').value = cod_piloto_2_old;
            document.getElementById('equ_piloto_3').value = cod_piloto_3_old;
            document.getElementById('equ_piloto_4').value = cod_piloto_4_old;
            document.getElementById('equ_escuderia_1').value = cod_escuderia_1_old;
            document.getElementById('equ_escuderia_2').value = cod_escuderia_2_old;
            document.getElementById('equ_motor_1').value = cod_motor_1_old;
            alert ('Ya ha realizado todos los cambios disponibles');
            
            return false;
        } else {
            document.getElementById("equ_cambios_disp").value = parseInt(document.getElementById("equ_cambios_disp").value) - 1;
        }                
    }    
    
    switch (combo.name){ 
    	case "equ_piloto_1":
            valor_anterior = val_piloto_1_old;
            val_piloto_1_old = document.getElementById(combo.name+"_"+combo.value).value;            
    	break;    
    	case "equ_piloto_2":
            valor_anterior = val_piloto_2_old;
            val_piloto_2_old = document.getElementById(combo.name+"_"+combo.value).value;
    	break;    
    	case "equ_piloto_3":
            valor_anterior = val_piloto_3_old;
            val_piloto_3_old = document.getElementById(combo.name+"_"+combo.value).value;
    	break;        
        case "equ_piloto_4":
            valor_anterior = val_piloto_4_old;
            val_piloto_4_old = document.getElementById(combo.name+"_"+combo.value).value;
    	break;        
        case "equ_escuderia_1":
            valor_anterior = val_escuderia_1_old;
            val_escuderia_1_old = document.getElementById(combo.name+"_"+combo.value).value;
    	break;        
        case "equ_escuderia_2":
            valor_anterior = val_escuderia_2_old;
            val_escuderia_2_old = document.getElementById(combo.name+"_"+combo.value).value;
    	break;        
        case "equ_motor_1":
            valor_anterior = val_motor_1_old;
            val_motor_1_old = document.getElementById(combo.name+"_"+combo.value).value;
    	break;
    }
    
    document.getElementById('equ_dinero').value = 
        parseInt(document.getElementById('equ_dinero').value) 
        - parseInt(document.getElementById(combo.name+"_"+combo.value).value)
        + parseInt(valor_anterior);
        
    if (document.getElementById("equ_cambios_disp").value <= 0) {
            document.getElementById('equ_piloto_1').disabled = true; 
            document.getElementById('equ_piloto_2').disabled = true;
            document.getElementById('equ_piloto_3').disabled = true;
            document.getElementById('equ_piloto_4').disabled = true;
            document.getElementById('equ_escuderia_1').disabled = true;
            document.getElementById('equ_escuderia_2').disabled = true;
            document.getElementById('equ_motor_1').disabled = true;
        }  
    
    actualizaContadores();

}

//Version 2.2: 2011-04-02
//Funcion para eliminar todos los cambios realizados para una carrera
function anularCambios() {
    
    document.getElementById('equ_piloto_1').disabled = false; 
    document.getElementById('equ_piloto_2').disabled = false;
    document.getElementById('equ_piloto_3').disabled = false;
    document.getElementById('equ_piloto_4').disabled = false;
    document.getElementById('equ_escuderia_1').disabled = false;
    document.getElementById('equ_escuderia_2').disabled = false;
    document.getElementById('equ_motor_1').disabled = false;
    
    document.getElementById('equ_dinero').value = parseInt(document.getElementById('equ_dinero').value) 
        - parseInt(document.getElementById('equ_piloto_1_ori_val').value)
        + parseInt(val_piloto_1_old) 
        - parseInt(document.getElementById('equ_piloto_2_ori_val').value)
        + parseInt(val_piloto_2_old)
        - parseInt(document.getElementById('equ_piloto_3_ori_val').value)
        + parseInt(val_piloto_3_old)
        - parseInt(document.getElementById('equ_piloto_4_ori_val').value)
        + parseInt(val_piloto_4_old) 
        - parseInt(document.getElementById('equ_escuderia_1_ori_val').value)
        + parseInt(val_escuderia_1_old)
        - parseInt(document.getElementById('equ_escuderia_2_ori_val').value)
        + parseInt(val_escuderia_2_old)
        - parseInt(document.getElementById('equ_motor_1_ori_val').value)
        + parseInt(val_motor_1_old);                
                
    val_piloto_1_old = parseInt(document.getElementById('equ_piloto_1_ori_val').value);
    val_piloto_2_old = parseInt(document.getElementById('equ_piloto_2_ori_val').value);
    val_piloto_3_old = parseInt(document.getElementById('equ_piloto_3_ori_val').value);
    val_piloto_4_old = parseInt(document.getElementById('equ_piloto_4_ori_val').value); 
    val_escuderia_1_old = parseInt(document.getElementById('equ_escuderia_1_ori_val').value); 
    val_escuderia_2_old = parseInt(document.getElementById('equ_escuderia_2_ori_val').value);  
    val_motor_1_old = parseInt(document.getElementById('equ_motor_1_ori_val').value);
    
     /*
     if (parseInt(document.getElementById('equ_piloto_1_ori_val').value) != 0 ) {
        document.getElementById('equ_dinero').value = parseInt(document.getElementById('equ_dinero').value) 
                - parseInt(document.getElementById('equ_piloto_1_ori_val').value)
                + parseInt(val_piloto_1_old);
                val_piloto_1_old = parseInt(document.getElementById('equ_piloto_1_ori_val').value);                
     }

     if (parseInt(document.getElementById('equ_piloto_2_ori_val').value) != 0 ) {
        document.getElementById('equ_dinero').value = parseInt(document.getElementById('equ_dinero').value) 
                - parseInt(document.getElementById('equ_piloto_2_ori_val').value)
                + parseInt(val_piloto_2_old);
                val_piloto_2_old = parseInt(document.getElementById('equ_piloto_2_ori_val').value);                
     }
     
     if (parseInt(document.getElementById('equ_piloto_3_ori_val').value) != 0 ) {
        document.getElementById('equ_dinero').value = parseInt(document.getElementById('equ_dinero').value) 
                - parseInt(document.getElementById('equ_piloto_3_ori_val').value)
                + parseInt(val_piloto_3_old);
                val_piloto_3_old = parseInt(document.getElementById('equ_piloto_3_ori_val').value);
     }

     if (parseInt(document.getElementById('equ_piloto_4_ori_val').value) != 0 ) {
        document.getElementById('equ_dinero').value = parseInt(document.getElementById('equ_dinero').value) 
                - parseInt(document.getElementById('equ_piloto_4_ori_val').value)
                + parseInt(val_piloto_4_old);
                val_piloto_4_old = parseInt(document.getElementById('equ_piloto_4_ori_val').value);  
     }

     if (parseInt(document.getElementById('equ_escuderia_1_ori_val').value) != 0 ) {
        document.getElementById('equ_dinero').value = parseInt(document.getElementById('equ_dinero').value) 
                - parseInt(document.getElementById('equ_escuderia_1_ori_val').value)
                + parseInt(val_escuderia_1_old);
                val_escuderia_1_old = parseInt(document.getElementById('equ_escuderia_1_ori_val').value);                 
     }

     if (parseInt(document.getElementById('equ_escuderia_2_ori_val').value) != 0 ) {
        document.getElementById('equ_dinero').value = parseInt(document.getElementById('equ_dinero').value) 
                - parseInt(document.getElementById('equ_escuderia_2_ori_val').value)
                + parseInt(val_escuderia_2_old);
                val_escuderia_2_old = parseInt(document.getElementById('equ_escuderia_2_ori_val').value);                
     }

     if (parseInt(document.getElementById('equ_motor_1_ori_val').value) != 0 ) {
        document.getElementById('equ_dinero').value = parseInt(document.getElementById('equ_dinero').value) 
                - parseInt(document.getElementById('equ_motor_1_ori_val').value)
                + parseInt(val_motor_1_old);
                val_motor_1_old = parseInt(document.getElementById('equ_motor_1_ori_val').value);                
     }*/
        
    document.getElementById('equ_piloto_1').value = document.getElementById('equ_piloto_1_ori_cod').value; 
    document.getElementById('equ_piloto_2').value = document.getElementById('equ_piloto_2_ori_cod').value;
    document.getElementById('equ_piloto_3').value = document.getElementById('equ_piloto_3_ori_cod').value;
    document.getElementById('equ_piloto_4').value = document.getElementById('equ_piloto_4_ori_cod').value;
    document.getElementById('equ_escuderia_1').value = document.getElementById('equ_escuderia_1_ori_cod').value;
    document.getElementById('equ_escuderia_2').value = document.getElementById('equ_escuderia_2_ori_cod').value;
    document.getElementById('equ_motor_1').value = document.getElementById('equ_motor_1_ori_cod').value;       
           
    document.getElementById('equ_cambios_disp').value = cambios_tot;
    
    actualizaContadores();  
    
}

/*
 * Metodo para validar el formulario en la modificacion
 * Version 2.2: 2011-04-02
 */
 //Funcion para validar los campos del formulario de alta / modificacion de usuraios
function validarEquipoModificar(formulario) {
	
	//alert('Hola: #'+formulario.equ_dinero.value+'#');
	var errores = "";
	
	//Validamos que el nombre del equipo sea no nulo
	if(formulario.equ_nombre.value == "") {
		errores = errores + '\n - El NOMBRE no puede ser vacio';
	}
	
	//Validamos que el lema del equipo sea no nulo
	if(formulario.equ_lema.value == "") {
		errores = errores + '\n - El LEMA no puede ser vacio';
	}
	
	//Validamos los elementos del equipo
	if (formulario.equ_piloto_1.value == 0) {
		errores = errores + '\n - El PRIMER PILOTO no puede ser vacio';
	}
	
	if (formulario.equ_piloto_2.value == 0) {
		errores = errores + '\n - El SEGUNDO PILOTO no puede ser vacio';
	} else if (formulario.equ_piloto_2.value == formulario.equ_piloto_1.value) {
		errores = errores + '\n - El SEGUNDO PILOTO no puede igual que el PRIMER PILOTO';
	}
	
	if (formulario.equ_piloto_3.value == 0) {
		errores = errores + '\n - El TERCER PILOTO no puede ser vacio';
	} else if (formulario.equ_piloto_3.value == formulario.equ_piloto_1.value) {
		errores = errores + '\n - El TERCER PILOTO no puede igual que el PRIMER PILOTO';
	} else if (formulario.equ_piloto_3.value == formulario.equ_piloto_2.value) {
		errores = errores + '\n - El TERCER PILOTO no puede igual que el SEGUNDO PILOTO';
	}
	
	if (formulario.equ_piloto_4.value == 0) {
		errores = errores + '\n - El CUARTO PILOTO no puede ser vacio';
	} else if (formulario.equ_piloto_4.value == formulario.equ_piloto_1.value) {
		errores = errores + '\n - El CUARTO PILOTO no puede igual que el PRIMER PILOTO';
	} else if (formulario.equ_piloto_4.value == formulario.equ_piloto_2.value) {
		errores = errores + '\n - El CUARTO PILOTO no puede igual que el SEGUNDO PILOTO';
	} else if (formulario.equ_piloto_4.value == formulario.equ_piloto_3.value) {
		errores = errores + '\n - El CUARTO PILOTO no puede igual que el TERCER PILOTO';
	}
	
	if (formulario.equ_escuderia_1.value == 0) {
		errores = errores + '\n - La PRIMER ESCUDERIA no puede ser vacio';
	}
	
	if (formulario.equ_escuderia_1.value == 0) {
		errores = errores + '\n - La SEGUNDA ESCUDERIA no puede ser vacio';		
	} else if (formulario.equ_escuderia_1.value == formulario.equ_escuderia_2.value) {
		errores = errores + '\n - La SEGUNDA ESCUDERIA no puede igual que La SEGUNDA PRIMERA';
	}
	
	if (formulario.equ_motor_1.value == 0) {
		errores = errores + '\n - El MOTOR no puede ser vacio';
	}
	
	if (formulario.equ_piloto_primero.value == 0) {
		errores = errores + '\n - El PRIMER CLASIFICADO no puede ser vacio';
	}
	
	if (formulario.equ_piloto_segundo.value == 0) {
		errores = errores + '\n - El SEGUNDO CLASIFICADO no puede ser vacio';
	}

	if (formulario.equ_piloto_tercero.value == 0) {
		errores = errores + '\n - El TERCER CLASIFICADO no puede ser vacio';
	}
	
	if (formulario.equ_pos_alonso.value == 0) {
		errores = errores + '\n - La POSICION ALONSO no puede ser vacio';
	}

	/*
    if (formulario.equ_pos_alguersuari.value == 0) {
		errores = errores + '\n - El POSICION ALGUERSUARI no puede ser vacio';
	}
    */
	
    formulario.equ_dinero.disabled=false;
    if (parseInt(formulario.equ_dinero.value) < 0) {        
        errores = errores + '\n - El DINERO DEL EQUIPO no puede ser vacio ni NEGATIVO';
    }
    formulario.equ_dinero.disabled=true;	
	
    if (document.getElementById("equ_cambios_disp") != null) {
        elemento = document.getElementById("equ_cambios_disp");
        if (parseInt(elemento.value) < 0) {        
            errores = errores + '\n - Los CAMBIOS no puede ser NEGATIVOS';
        }    
    }
    
	//Resultado de la operacion
	if (errores != "") {        
		errores = 'Se han encontrado los siguientes errores:' + errores;
		alert(errores);
	} else {
	    
        formulario.equ_piloto_1.disabled = false; 
        formulario.equ_piloto_2.disabled = false;
        formulario.equ_piloto_3.disabled = false;
        formulario.equ_piloto_4.disabled = false;
        formulario.equ_escuderia_1.disabled = false; 
        formulario.equ_escuderia_2.disabled = false;
        formulario.equ_motor_1.disabled = false;
       
	    formulario.equ_dinero.disabled=false;
        formulario.equ_cam_nombre.disabled = false;
        formulario.equ_cam_pass.disabled = false;
		formulario.submit();
	}
}
    
//Funcion que actualiza contadores
function actualizaContadores() {
    //Actualizamos los nuevos contadores.
    document.getElementById("equ_val_equ").value =  
            parseInt(document.getElementById('equ_piloto_1_'+document.getElementById('equ_piloto_1').value).value) +
            parseInt(document.getElementById('equ_piloto_2_'+document.getElementById('equ_piloto_2').value).value) +
            parseInt(document.getElementById('equ_piloto_3_'+document.getElementById('equ_piloto_3').value).value) +
            parseInt(document.getElementById('equ_piloto_4_'+document.getElementById('equ_piloto_4').value).value) +
            parseInt(document.getElementById('equ_escuderia_1_'+document.getElementById('equ_escuderia_1').value).value) +
            parseInt(document.getElementById('equ_escuderia_2_'+document.getElementById('equ_escuderia_2').value).value) +
            parseInt(document.getElementById('equ_motor_1_'+document.getElementById('equ_motor_1').value).value);
    
    document.getElementById("equ_val_tot").value = document.getElementById("equ_val_equ").value +
            document.getElementById("equ_dinero").value;
    
    } 
