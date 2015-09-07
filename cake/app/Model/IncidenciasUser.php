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
class IncidenciasUser extends AppModel {

/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'name';
	
		var $validate = array(

		'Users' => array(
			'notempty' => array(
				'rule' => array('notempty'),
			),
		)
	);
/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
		'User' => array(
			'className' => 'User',
			'foreignKey' => 'user_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'Incidencia' => array(
			'className' => 'Incidencia',
			'foreignKey' => 'incidencia_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);

		public function add2() {
			$this->create();
			$this->save();
			$data=array('user_id'=>'6','incidencia_id'=>'70');
			$this->save($data)		
		}



}
