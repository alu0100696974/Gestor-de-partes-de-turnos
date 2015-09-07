<?php
/**
*	Copyright (C) 2015 Ayoze Elvira García
*
*    This program is free software: you can redistribute it and/or modify
*    it under the terms of the GNU Affero General Public License as
*    published by the Free Software Foundation, either version 3 of the
*    License, or (at your option) any later version.
*
*    This program is distributed in the hope that it will be useful,
*    but WITHOUT ANY WARRANTY; without even the implied warranty of
*    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*    GNU Affero General Public License for more details.
*
*    You should have received a copy of the GNU Affero General Public License
*   along with this program.  If not, see <http://www.gnu.org/licenses/>.
**/
 ?>
<?php
App::uses('AppModel', 'Model');
/**
 * Workflowpaso Model
 *
 * @property Entero $Entero
 * @property Float $Float
 * @property Texto $Texto
 */
class Incidencia extends AppModel {

/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'name';
	
	var $validate = array(
		'name' => array(
			'notempty' => array(
				'rule' => array('notempty'),
			),
		),
		'usuario_asignado' => array(
			'notempty' => array(
				'rule' => array('notempty'),
			),
		),

		'descripcion' => array(
			'notempty' => array(
				'rule' => array('notempty'),
			),
		),
		'prioridad' => array(
			'notempty' => array(
				'rule' => array('notempty'),
			),
		)
	);
	
	var $hasAndBelongsToMany= array(
		'Users'=> array(
		'className'=> 'User'));	
		
/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
		'Usuario' => array(
			'className' => 'User',
			'foreignKey' => 'usuario_creador',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'Estado' => array(
			'className' => 'Estado',
			'foreignKey' => 'estado_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
	
	public $hasMany = array(
		'Cosa' => array(
			'className' => 'Incidencias_user',
			'foreignKey' => 'incidencia_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		
		
		'Parte' => array(
			'className' => 'Parte',
			'foreignKey' => 'incidencia_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
	
	
	public function incidenciaDefecto($idparte = null, $idusuario= null, $idvendedor=null) {
			$usuarioAsignado=$this->Parte->usuariovendedor;
			$idasignado=$idvendedor;
			$this->create();
			$this->save();
			$nuevaIncidencia = $this->id;
			$nombreDefecto= 'Validación de partes de turno número: ' . $idparte;
			$descripcionDefecto="Se ha validado el parte de turno con id: " . $idparte. ", con modificaciones.";
			$prioridadDefecto='Mínima';
			$data3=array('id'=>$nuevaIncidencia,'incidencia_id'=>$nuevaIncidencia);
			$data2=array('incidencia_id'=>$nuevaIncidencia, 'user_id'=>$idasignado);
			$data= array('id' => $nuevaIncidencia,'usuario_creador'=>$idusuario, 'estado_id'=>'2','name'=> $nombreDefecto, 'Descripcion'=>$descripcionDefecto,'prioridad'=> $prioridadDefecto);
			//$this->save($data2);
			 $this->save($data);
			 $this->Cosa->save($data2);



	}
	
	
	
	
	
	function obtenervalor($id)
	{
	  $datos = $this->query("SELECT name FROM incidencias WHERE id=$id");
	  return $this->getQueryResult($datos);
	}
	
	
	// getQueryResult: devuelve el primer valor de la consulta realizada
	// Parámetros: hay que pasarle un array (devuelto por una consulta sql
	function getQueryResult($datos){
	  foreach($datos[0] as $dato){
	    foreach($dato as $d){
		return $d;	// devuelve el primer valor de la consulta realizada       
	    }
	  }
	  
	}

}
