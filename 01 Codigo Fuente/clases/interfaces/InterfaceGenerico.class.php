<?php
/*
 * Fichero las constantes para el proyecto
 * Autor: Jose Angel Martinez
 * Fecha: 2011/01/24
 * Versión: 1.0
 */

//Constantes para el formulario de login


//Constantes para el formulario de registro/edicion de usuarios


//Constantes para las operaciones sobre usuarios
define('UsuarioRegistrar','usr_registrar');
define('UsuarioModificar','usr_modificar');
define('UsuarioLogin','usr_login');
define('UsuarioSalir','usr_salir');

//Constantes para el formulario de registro/edicion de campeonatos


//Constantes para las operaciones sobre campeonatos
define('CampeonatoLista','cam_lista');
define('CampeonatoRegistrar','cam_registrar');
define('CampeonatoModificar','cam_modificar');
define('CampeonatoVerModificar','cam_ver_modificar');
define('CampeonatoVerRegistrar','cam_ver_registrar');


//Constantes para el formulario de regitro/edicion de equipos  


//Constantes para las operaciones sobre equipos
define('EquipoOperacion','equ_ope');
define('EquipoVerEquipos','equ_ver_equipos');
define('EquipoVerEquipo','equ_ver_equipo');
define('EquipoRegistrar','equ_registrar');
define('EquipoModificar','equ_modificar');
define('EquipoVerRegistrar','equ_ver_registrar'); 

//Constatnes para la seguridad y la sesion
define('UsuarioSesion','UsuarioSesion');
define('CampeonatoSesion','CampeonatoSesion');
define('CampeonatoListaSesion','CampeonatoListaSesion');
define('EquipoSesion','EquipoSesion');
define('EquipoListaSesion','EquipoListaSesion');
define('CarreraSesion','CarreraSesion');
define('MensajesErro','MensajesErro');
define('MensajesInfo','MesnajesInfo');

//Constantes para el centro estadistico
define('CentroEstadisticoOperacion','cen_est_ope');
define('CentroEstadisticoVer','cen_est_ver');
define('CentroEstadisticoConsulta','cen_est_con');
define('CentroEstadisticoCarrera','cen_est_car');

//Lista para la sesion
define('ListaCarrerasSesion','ListaCarrerasSesion');
define('ListaPilotosSesion','ListaPilotosSesion');
define('ListaEscuderiasSesion','ListaEscuderiasSesion');
define('ListaMotoresSesion','ListaMotoresSesion');
define('ListaCampeonatosSesion','ListaCampeonatosSesion');

//Entidades
define('EntidadPiloto','EntidadPiloto');
define('EntidadEscuderia','EntidadEscuderia');
define('EntidadMotor','EntidadMotor');

//Presupuesto inicial del equipo
define('EquipoPresupuesto','12000');

//Version 2.0; 2011-03-24
define('ListaPosicionesPilotosSesion','ListaPosicionesPilotosSesion');

//Version 2.1: 2011-03-27
define('CampeonatoVerClasificacion','CampeonatoVerClasificacion');
define('CampeonatoListaClasificacion','CampeonatoListaClasificacion');

//Version 2.2: 2011-04-02
define('BrokerOperacion','bro_ope');
define('BrokerVer','bro_ver');

define('EquipoCambios','3');
define('EquipoPresupuestoMinimo','9000');

define('AnteriorCarrera','AnteriorCarrera');
define('CarreraCodigo','car_cod');
define('CampeonatoOperacion','cam_ope');
define('CampeonatoCodigo','cam_cod');
define('CodigoClasificacionGeneral','99');
define('PuntosPosicionAlonso','Puntos Posicion Alonso');
define('PuntosPosicionAlguersuari','Puntos Posicion Alguersuari');
define('PuntosPosicionDeLaRosa','Puntos Posicion De La Rosa');
define('PuntosPodio','Puntos Podio');

define('CentroEstadisticoListaPilotos','CentroEstadisticoListaPilotos');
define('CentroEstadisticoListaEscuderias','CentroEstadisticoListaEscuderias');
define('CentroEstadisticoListaMotores','CentroEstadisticoListaMotores');

//Version 3.0: 2011-07-06
define('MuroMensajesOperacion','mur_msg_ope');
define('MuroMensajesRegistrar','mur_msg_reg');
define('MuroMensajesVer','mur_msg_ver');
define('ListaMensajesCampeonato','ListaMensajesCampeonato');

//Version 4.0: 2012-02-15
define('ListaBrokerPilotos','ListaBrokerPilotos');
define('ListaBrokerEscuderias','ListaBrokerEscuderias');
define('ListaBrokerMotores','ListaBrokerMotores');

//Version 5.0: 2012-04-10 
//Numero de mensajes por página
define('NumeroMensajesPagina','6');

//Version 6.0: 2012-04-29
define('CampClasRadio','cam_clas_rad');
define('CampClasRadioPuntos','cam_clas_rad_pnt');
define('CampClasRadioBroker','cam_clas_rad_bro');
define('CampClasRadioCampeones','cam_clas_rad_cmp');

?>