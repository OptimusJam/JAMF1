    //Lista con las pesta�as de los campeonatos:
    var listaPestanaCampeonato = ["pes_cam_cla","pes_cam_mur"];
    var listaPestanaEquipo = ["pes_equ_dat","pes_equ_pil","pes_equ_esc","pes_equ_mot","pes_equ_apu_car","pes_equ_apu_mun"];
    var listaPestanaCentroEstadistico = ["pes_cen_est_pil","pes_cen_est_esc","pes_cen_est_mot"];
    var listaPestanaBroker = ["pes_bro_pil","pes_bro_esc","pes_bro_mot"];
    var listaPagina = [];

function MostrarOcultarPestanas(PestanaMostrar, Conjunto) {
    
    var listaPestanas;
    
    //Obtenemos la lista de pesta�as
    if (Conjunto == "pes_cam") {
        listaPestanas = listaPestanaCampeonato;
    } else if (Conjunto == "pes_equ") {
        listaPestanas = listaPestanaEquipo;
    } else if (Conjunto == "pes_cen_est") {
        listaPestanas = listaPestanaCentroEstadistico;
    } else if (Conjunto == "pes_bro") {
        listaPestanas = listaPestanaBroker;
    } else if (Conjunto == "pag") {
        listaPestanas = listaPagina;
    }
    
    //Ocultamos las pesta�as de la lista.
    var salir = false;
    var i = 0;
    
    while (!salir) {
        var nombreElementoOcultar = listaPestanas[i];        
        var elementoOcultar = document.getElementById(nombreElementoOcultar);
        elementoOcultar.style.display = 'none';
        i=i+1;
        if (i == listaPestanas.length) {
            salir = true;
        }
    }   
    
    //Mostramos la pesta�a indicada.
    var elementoMostrar = document.getElementById(PestanaMostrar);
    elementoMostrar.style.display = 'block';	     
}