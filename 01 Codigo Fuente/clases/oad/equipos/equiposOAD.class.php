<?php
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/oad/conexionDB.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/actionMensajes.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/usuario.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/campeonato.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/apuestaCarrera.class.php');
    include_once($_SERVER['DOCUMENT_ROOT'].'/clases/entidades/apuestaMundial.class.php');
	include_once($_SERVER['DOCUMENT_ROOT'].'/clases/interfaces/InterfaceBaseDatos.class.php');
/*
 * Clase con los accesos a base de datos para la parte de campeonatos
 * Autor: Jose Angel Martinez
 * Fecha: 2011/02/07
 * Versión: 1.0
 */
 
class equiposOAD {
	
	/*
	 * Método para recuperar los campeonatos de un usuario
	 */
	public function getEquiposUsuario($usuario, $carrera) {		
		$conexion = conexionDB::getInstance();
		$listaEquipos = array();
		
		$consultaGetEquiposUsuario = 'select equ_cod,equ_nom,equ_lem, 
                                    	cam_nom, cam_des, cam_pass, cam_cod
                                        from equipos_datos left join campeonatos on equ_cam_cod = cam_cod 
                                        where equ_usr_cod = \'%1$s\'';
		$sql = sprintf($consultaGetEquiposUsuario,$usuario,$carrera);
		
		//echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$equipo = new equipo();
			$campeonato = new campeonato();
			array_push($listaEquipos,$equipo->equipoLista($row['equ_nom'],
														$row['equ_lem'],
														$usuario,
														$row[CampeonatoNombre],														
														$carrera,
														$row['equ_cod']));
		}
		
		//$conexion->cerrar();
		
		return $listaEquipos;		
	}
    
    /*
	 * Funcion para comprobar si hay algun equipo con el nombre seleccionado	 
	 */
    public function verificarEquipoNombre($nombre) {
		$objActMen = new actionMensajes();
		$hayEquipo = false;
		
		$conexion = conexionDB::getInstance();
		
		$consultaVerficarEquipoNombre = 'select equ_cod from equipos_datos where equ_nom = \'%1$s\'';
		$sql = sprintf($consultaVerficarEquipoNombre,$nombre);
		
		//echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError:'.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$hayEquipo = true;
		}
		
		if ($hayEquipo) {
			$objActMen->setHayErrores(true);
		} else {
			$objActMen->setHayErrores(false);	
		}
		
		//$conexion->cerrar();
		
		return $objActMen;		
	}
    
    /*
	 * Funcion para comprobar si hay algun equipo con el nombre seleccionado que no sea el que se va a modificar
     * 2011-04-02: Versiom 
	 */
    public function verificarEquipoNombreCodigo($nombre, $codigo) {
		$objActMen = new actionMensajes();
		$hayEquipo = false;
		
		$conexion = conexionDB::getInstance();
		
		$consultaVerficarEquipoNombre = 'select equ_cod from equipos_datos where equ_nom = \'%1$s\' and equ_cod <> \'%2$s\'';
		$sql = sprintf($consultaVerficarEquipoNombre,$nombre, $codigo);
		
		//echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError:'.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$hayEquipo = true;
		}
		
		if ($hayEquipo) {
			$objActMen->setHayErrores(true);
            $objActMen->addError("El nombre de equipo ya esta en uso. Escoja otro.");
		} else {
			$objActMen->setHayErrores(false);	
		}
		
		//$conexion->cerrar();
		
		return $objActMen;		
	}
	
    /*
     * Función para almacenar los datos de un equipo
     */
    public function almacenarEquipoDatos(equipo $objEquipo) {
        $conexion = conexionDB::getInstance();
		
		//$consultaAlmacenaEquipoDatos = 'CALL equipos_datos_insertar(\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\',@codigo);';
        $consultaAlmacenaEquipoDatos = 'insert into
                                            equipos_datos(equ_nom,equ_lem,equ_usr_cod,equ_cam_cod)
                                        values
                                            (\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\');';
		$sql = sprintf($consultaAlmacenaEquipoDatos,$objEquipo->getEquNom(),
										$objEquipo->getEquLema(),
										$objEquipo->getEquUsuario(),
                                        $objEquipo->getEquCamCod());
										//$codigo);
		
		//echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
				
		echo('<br/>SQL: $'.$result.'$<br/>');
		
		//Como ha ido todo bien, recuperamos el usr_cod
		$sql_codigo = 'select equ_cod from equipos_datos 
                        where equ_nom = \''.$objEquipo->getEquNom().'\' 
                        and equ_usr_cod = '.$objEquipo->getEquUsuario();
  
        echo('<br/>SQL: $'.$sql_codigo.'$<br/>');
                        
		$result_codigo = mysql_query($sql_codigo,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
        $objEquipoRet = $objEquipo;
        
        while ($row = mysql_fetch_array($result_codigo)) {
				$objEquipoRet->setEquCod($row['equ_cod']);
		}	
		
		return $objEquipoRet;        
    }
	
    /*
     * Función para almacenar los elementos de un equipo
     */
    public function almacenarEquipoComponentes(equipo $objEquipo) {
        $conexion = conexionDB::getInstance();
		
		//$consultaAlmacenaEquipoDatos = 'CALL equipos_componentes_insertar(\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\',\'%5$s\',\'%6$s\',\'%7$s\',\'%8$s\',\'%9$s\',\'%10$s\');';
        $consultaAlmacenaEquipoDatos = 'insert into
                                            equipos_componentes(equ_equ_cod,equ_car_cod,equ_pil_1_cod,equ_pil_2_cod,equ_pil_3_cod,equ_pil_4_cod,
                                            equ_esc_1_cod,equ_esc_2_cod,equ_mot_1_cod,equ_din)
                                        values
                                            (\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\',\'%5$s\',\'%6$s\',\'%7$s\',\'%8$s\',\'%9$s\',\'%10$s\');';
		$sql = sprintf($consultaAlmacenaEquipoDatos,$objEquipo->getEquCod(),
                                        $objEquipo->getEquCarrera(),
										$objEquipo->getEquPiloto1(),
										$objEquipo->getEquPiloto2(),
										$objEquipo->getEquPiloto3(),
                                        $objEquipo->getEquPiloto4(),
                                        $objEquipo->getEquEscuderia1(),
                                        $objEquipo->getEquEscuderia2(),
                                        $objEquipo->getEquMotor1(),
                                        $objEquipo->getEquDinero());
										//$codigo);
		
		//echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>almacenarEquipoComponentes: '.mysql_error());
				
		echo('<br/>SQL: $'.$result.'$<br/>');
		
    }
    
    /*
     * Función para almacenar las apuestas para una carrera de un equipo
     */
    public function almacenarEquipoApuestasCarrera(equipo $objEquipo) {
        $conexion = conexionDB::getInstance();
		
		//$consultaAlmacenaEquipoDatos = 'CALL apuestas_carrera_insertar(\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\',\'%5$s\',\'%6$s\',\'%7$s\');';
        //$consultaAlmacenaEquipoDatos = 'CALL apuestas_carrera_insertar(\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\',\'%5$s\',\'%6$s\');';
        
        $consultaAlmacenaEquipoDatos = 'insert into apuestas_carrera
                                            (apu_car_equ_cod, apu_car_car_cod, apu_car_pod_pri_pil_cod, apu_car_pod_seg_pil_cod, apu_car_pod_ter_pil_cod,apu_car_pos_alo)
                                        values
                                            (\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\',\'%5$s\',\'%6$s\');';
        
		$sql = sprintf($consultaAlmacenaEquipoDatos,$objEquipo->getEquCod(),
                                        $objEquipo->getEquCarrera(),										
										$objEquipo->getApuestaCarrera()->getApuPilPrimero(),
                                        $objEquipo->getApuestaCarrera()->getApuPilSegundo(),
                                        $objEquipo->getApuestaCarrera()->getApuPilTercero(),
                                        $objEquipo->getApuestaCarrera()->getApuPosAlonso()//,$objEquipo->getApuestaCarrera()->getApuPosAlguersuari()
                                        );
										//$codigo);
		
		//echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>almacenarEquipoApuestasCarrera: '.mysql_error());
				
		echo('<br/>SQL: $'.$result.'$<br/>');
		
    }
    
    /*
     * Función para almacenar las apuestas para el mundial de un equipo
     */
    public function almacenarEquipoApuestasMundial(equipo $objEquipo) {
        $conexion = conexionDB::getInstance();
		
		//$consultaAlmacenaEquipoDatos = 'CALL apuestas_mundial_insertar(\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\');';
        $consultaAlmacenaEquipoDatos = 'insert into apuestas_mundial
                                            (apu_mun_equ_cod, apu_mun_cam_pil_cod, apu_mun_cam_esc_cod, apu_mun_vue_pil_cod)
                                        values
                                            (\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\');';
		$sql = sprintf($consultaAlmacenaEquipoDatos,$objEquipo->getEquCod(),
										$objEquipo->getApuestaMundial()->getApuPilCampeon(),
										$objEquipo->getApuestaMundial()->getApuEscCampeon(),
										$objEquipo->getApuestaMundial()->getApuPilVueRap());
										//$codigo);
		
		//echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>almacenarEquipoApuestasMundial: '.mysql_error());
				
		echo('<br/>SQL: $'.$result.'$<br/>');
		
    }
    
    /*
     * Funcion para recuperar los datos de un equipo
     */
    public function getDatosEquipo($equipo_cod, $usuario, $carrera){
        $conexion = conexionDB::getInstance();
		$equipo = new equipo();
		
		$consultaGetDatosEquipos = 'select equ_cod, equ_nom, equ_lem,  
                                        equ_cam_cod                                    	
                                        from equipos_datos  
                                        where equ_usr_cod = \'%1$s\' and equ_cod = \'%2$s\'';
		
        echo('<br/>Equipo: $'.$equipo_cod.'$<br/>');
        echo('<br/>Usuario: $'.$usuario.'$<br/>');
        $sql = sprintf($consultaGetDatosEquipos,$usuario,$equipo_cod);
		
		//echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		//echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$equipo = new equipo();
			$equipo->setEquNom($row['equ_nom']);
            $equipo->setEquLema($row['equ_lem']);
            $equipo->setEquUsuario($usuario);
			//$equipo->setEquDinero($row['equ_din']);
            $equipo->setEquCamCod($row['equ_cam_cod']);
            $equipo->setEquCarrera($carrera);
			$equipo->setEquCod($row['equ_cod']);
		}
		
		//$conexion->cerrar();
		
		return $equipo;
    }
    
    /*
     * Funcion que recupera los componentes de un equipo
     */    
    public function getComponentesEquipo($objEquipo) {
        $conexion = conexionDB::getInstance();
        
		$consultaGetComponentesEquipos = 'select equ_din, equ_pil_1_cod, equ_pil_2_cod, equ_pil_3_cod, equ_pil_4_cod,
                                        equ_esc_1_cod, equ_esc_2_cod, equ_mot_1_cod            	
                                        from equipos_componentes  
                                        where equ_equ_cod = \'%1$s\' and equ_car_cod = \'%2$s\'';
		
        $sql = sprintf($consultaGetComponentesEquipos,$objEquipo->getEquCod(),$objEquipo->getEquCarrera());
		
		//echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
			$objEquipo->setEquPiloto1($row['equ_pil_1_cod']);
            $objEquipo->setEquPiloto2($row['equ_pil_2_cod']);
            $objEquipo->setEquPiloto3($row['equ_pil_3_cod']);
            $objEquipo->setEquPiloto4($row['equ_pil_4_cod']);
            $objEquipo->setEquEscuderia1($row['equ_esc_1_cod']);
            $objEquipo->setEquEscuderia2($row['equ_esc_2_cod']);
            $objEquipo->setEquMotor1($row['equ_mot_1_cod']);
            $objEquipo->setEquDinero($row['equ_din']);
		}
        
        return $objEquipo;     
    }
    
    /*
     * Funcion que recupera las apuestas para la carrera de un equipo
     */    
    public function getApuestasCarreraEquipo($objEquipo){
        $conexion = conexionDB::getInstance();        
        
        $consultaGetApuestasCarrera = 'select apu_car_pod_pri_pil_cod, apu_car_pod_seg_pil_cod, apu_car_pod_ter_pil_cod, apu_car_pos_alo '. //, apu_car_pos_alg
                                            'from apuestas_carrera 
                                            where apu_car_equ_cod = \'%1$s\'
                                            and apu_car_car_cod = \'%2$s\' ';
		
        $sql = sprintf($consultaGetApuestasCarrera,$objEquipo->getEquCod(),$objEquipo->getEquCarrera());
		
		//echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
		    $objApuestaCarrera = new apuestaCarrera();  
            $objApuestaCarrera->setApuEquCod($objEquipo->getEquCod());
            $objApuestaCarrera->setApuPilPrimero($row['apu_car_pod_pri_pil_cod']);
            $objApuestaCarrera->setApuPilSegundo($row['apu_car_pod_seg_pil_cod']);
            $objApuestaCarrera->setApuPilTercero($row['apu_car_pod_ter_pil_cod']);
            $objApuestaCarrera->setApuPosAlonso($row['apu_car_pos_alo']);
            //$objApuestaCarrera->setApuPosAlguersuari($row['apu_car_pos_alg']);
            $objEquipo->setApuestaCarrera($objApuestaCarrera);
		}
        
        return $objEquipo;
    }
    
    /*
     * Funcion que recupera las apuestas para el mundial de un equipo
     */         
    public function getApuestasMundialEquipo($objEquipo){ 
        $conexion = conexionDB::getInstance();
    
        $consultaGetApuestasMundial = 'select apu_mun_cam_pil_cod, apu_mun_cam_esc_cod, apu_mun_vue_pil_cod
                                        from apuestas_mundial
                                        where apu_mun_equ_cod =  \'%1$s\' ';
		
        $sql = sprintf($consultaGetApuestasMundial,$objEquipo->getEquCod());
		
		//echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
		    $objApuestaMundial = new apuestaMundial();  
            $objApuestaMundial->setApuEquCod($objEquipo->getEquCod());
            $objApuestaMundial->setApuPilCampeon($row['apu_mun_cam_pil_cod']);
            $objApuestaMundial->setApuEscCampeon($row['apu_mun_cam_esc_cod']);
            $objApuestaMundial->setApuPilVueltaRapìda($row['apu_mun_vue_pil_cod']);
            $objEquipo->setApuestaMundial($objApuestaMundial);
		}
        
        return $objEquipo;
    }
    
    /*
     * Funcion que recupera los cambios
     * Version 2.2: 2011-04-02
     */         
    public function getCambiosEquipo($objEquipo){ 
        $conexion = conexionDB::getInstance();
        $objCambios = new cambiosCarrera();
    
        $consultaGetCambios = 'select  if (ec2.equ_pil_1_cod != ec1.equ_pil_1_cod,ec2.equ_pil_1_cod,null) as piloto_1_original,
            if (ec2.equ_pil_2_cod != ec1.equ_pil_2_cod,ec2.equ_pil_2_cod,null) as piloto_2_original,
            if (ec2.equ_pil_3_cod != ec1.equ_pil_3_cod,ec2.equ_pil_3_cod,null) as piloto_3_original,
            if (ec2.equ_pil_4_cod != ec1.equ_pil_4_cod,ec2.equ_pil_4_cod,null) as piloto_4_original,
            if (ec2.equ_esc_1_cod != ec1.equ_esc_1_cod,ec2.equ_esc_1_cod,null) as escuderia_1_original,
            if (ec2.equ_esc_2_cod != ec1.equ_esc_2_cod,ec2.equ_esc_2_cod,null) as escuderia_2_original,
            if (ec2.equ_mot_1_cod != ec1.equ_mot_1_cod,ec2.equ_mot_1_cod,null) as motor_1_original
            from    
                equipos_componentes ec1,
                equipos_componentes ec2
            where
                ec1.equ_equ_cod = ec2.equ_equ_cod
                and ec1.equ_equ_cod = \'%1$s\'
                and ec1.equ_car_cod = \'%2$s\'
                and ec2.equ_car_cod = (\'%2$s\'-1)';
                
		
        $sql = sprintf($consultaGetCambios,$objEquipo->getEquCod(),$objEquipo->getEquCarrera());
		
		//echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
		
		echo('<br/>Result: $'.$result.'$<br/>');
		
		while ($row = mysql_fetch_array($result)) {
		    $objCambios = $objCambios->cambiosCarreraBD($row['piloto_1_original'],
                                $row['piloto_2_original'],
                                $row['piloto_3_original'],
                                $row['piloto_4_original'],
                                $row['escuderia_1_original'],
                                $row['escuderia_2_original'],
                                $row['motor_1_original'] );  
		}
        
        return $objCambios;
    }
    
        /*
     * Función para almacenar los datos de un equipo
     */
    public function actualizarEquipoDatos(equipo $objEquipo) {
        $conexion = conexionDB::getInstance();
		
		//$consultaActualizaEquipoDatos = 'CALL equipos_datos_modificar(\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\',\'%5$s\');';
        $consultaActualizaEquipoDatos = 'update
                                            equipos_datos
                                        set
                                            equ_nom = \'%1$s\',
                                            equ_lem = \'%2$s\',
                                            equ_usr_cod = \'%3$s\',
                                            equ_cam_cod = \'%4$s\'
                                        where
                                            equ_cod = \'%5$s\';';
		$sql = sprintf($consultaActualizaEquipoDatos,$objEquipo->getEquNom(),
										$objEquipo->getEquLema(),										
										$objEquipo->getEquUsuario(),
                                        $objEquipo->getEquCamCod(),
                                        $objEquipo->getEquCod());
										//$codigo);
		
		//echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
				
		echo('<br/>SQL: $'.$result.'$<br/>');
 
    }
	
    /*
     * Función para almacenar los elementos de un equipo
     */
    public function actualizarEquipoComponentes(equipo $objEquipo) {
        $conexion = conexionDB::getInstance();
		
		//$consultaActualizaEquipoDatos = 'CALL equipos_componentes_modificar(\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\',\'%5$s\',\'%6$s\',\'%7$s\',\'%8$s\',\'%9$s\',\'%10$s\');';
        $consultaActualizaEquipoDatos = 'update
                                              equipos_componentes
                                           set      
                                              equ_pil_1_cod = \'%2$s\',
                                              equ_pil_2_cod = \'%3$s\',
                                              equ_pil_3_cod = \'%4$s\',
                                              equ_pil_4_cod = \'%5$s\',
                                              equ_esc_1_cod = \'%6$s\',
                                              equ_esc_2_cod = \'%7$s\',
                                              equ_mot_1_cod = \'%8$s\',
                                              equ_din = \'%9$s\'
                                           where
                                              equ_equ_cod = \'%10$s\'
                                        	  and equ_car_cod = \'%1$s\';';
		$sql = sprintf($consultaActualizaEquipoDatos,$objEquipo->getEquCarrera(),
										$objEquipo->getEquPiloto1(),
										$objEquipo->getEquPiloto2(),
										$objEquipo->getEquPiloto3(),
                                        $objEquipo->getEquPiloto4(),
                                        $objEquipo->getEquEscuderia1(),
                                        $objEquipo->getEquEscuderia2(),
                                        $objEquipo->getEquMotor1(),
                                        $objEquipo->getEquDinero(),
                                        $objEquipo->getEquCod());
										//$codigo);
		
		//echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
				
		echo('<br/>SQL: $'.$result.'$<br/>');
		
    }
    
    /*
     * Función para almacenar las apuestas para una carrera de un equipo
     */
    public function actualizarEquipoApuestasCarrera(equipo $objEquipo) {
        $conexion = conexionDB::getInstance();
		
		//$consultaActualizaEquipoDatos = 'CALL apuestas_carrera_modificar(\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\',\'%5$s\',\'%6$s\',\'%7$s\');';
        //$consultaActualizaEquipoDatos = 'CALL apuestas_carrera_modificar(\'%1$s\',\'%2$s\',\'%3$s\',\'%4$s\',\'%5$s\',\'%6$s\');';
        $consultaActualizaEquipoDatos = 'update apuestas_carrera set
                                              apu_car_equ_cod = \'%1$s\',
                                              apu_car_car_cod = \'%2$s\',
                                              apu_car_pod_pri_pil_cod = \'%3$s\',
                                              apu_car_pod_seg_pil_cod = \'%4$s\',
                                              apu_car_pod_ter_pil_cod = \'%5$s\',
                                              apu_car_pos_alo = \'%6$s\'
                                           where apu_car_equ_cod = \'%1$s\' 
                                              and apu_car_car_cod = \'%2$s\';';
        
        $sql = sprintf($consultaActualizaEquipoDatos,$objEquipo->getEquCod(),
                                        $objEquipo->getEquCarrera(),										
										$objEquipo->getApuestaCarrera()->getApuPilPrimero(),
                                        $objEquipo->getApuestaCarrera()->getApuPilSegundo(),
                                        $objEquipo->getApuestaCarrera()->getApuPilTercero(),
                                        $objEquipo->getApuestaCarrera()->getApuPosAlonso()//,$objEquipo->getApuestaCarrera()->getApuPosAlguersuari()
                                        );
										//$codigo);
		
		//echo('<br/>SQL: $'.$sql.'$<br/>');
		
		$result = mysql_query($sql,$conexion->getLink()) or die('<br/>ResultadoError: '.mysql_error());
				
		echo('<br/>SQL: $'.$result.'$<br/>');
		
    }
    
	
}?>