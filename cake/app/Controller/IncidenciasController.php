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
class IncidenciasController extends AppController {
var $name='Incidencias';
var $scafold;

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator', 'Session');

/**
 * index method
 *
 * @return void
 */
 
	public function index() {
		$this->Incidencia->recursive =1;
		$usuarioConectado=$this->Auth->user('id');
		$incidencias= $this->Incidencia->find('all');
		$this->set('sesion', $usuarioConectado);
		$this->set('incidencias', $incidencias);
		$this->set('incidencias', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		$this->Incidencia->recursive =2;
		if (!$this->Incidencia->exists($id)) {
			throw new NotFoundException(__('Incidencia inválida'));
		}
		$options = array('conditions' => array('Incidencia.' . $this->Incidencia->primaryKey => $id));
		$this->set('incidencia', $this->Incidencia->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
public function add() {
			$usuario=$this->Auth->User('id');
			$this->Incidencia->create();
			$this->Incidencia->save();
			$nuevaIncidencia = $this->Incidencia->id;

	  //crear todo el esqueleto para almacenar datos
	  
	  $data= array('id' => $nuevaIncidencia,'usuario_creador'=>$usuario, 'estado_id'=>'1');
	  if ($this->Incidencia->save($data)) { 
	  
	    $this->Session->setFlash(__('La incidencia ha sido creada, por favor proceda a editarla.'));
	    return $this->redirect(array('action' => 'index'));
		    
	  } else {
		    $this->Session->setFlash(__('La incidencias no ha podido ser creada, inténtelo de nuevo.'));
			return $this->redirect(array('action' => 'index'));
	  }
	$users = $this->Incidencia->User->find('list', array('field'=>'User.id'));
				$this->set('users',$users);
	}
	
/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		//Asignacion del estado "asignada" 
		$data= array('id' => $id, 'estado_id'=>'2');
		
		$users = $this->Incidencia->Users->find('list', array('recursive'=>1,'fields'=>array ('Users.id', 'Users.username', 'Role.name') ));
		$this->set('users',$users);
		
		
		if (!$this->Incidencia->exists($id)) {
			throw new NotFoundException(__('Incidencia inválida'));
		}
		$poco=$this->request->data('Users.user_id');
		
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Incidencia->save($this->request->data)) {				
					$this->Incidencia->save($data);
				$this->Session->setFlash(__('Incidencia modificada.'. $poco));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('La incidencia no se ha modificado, por favor inténtelo de nuevo.'));
			}
		} else {
			$options = array('conditions' => array('Incidencia.' . $this->Incidencia->primaryKey => $id));
			$this->request->data = $this->Incidencia->find('first', $options);
			$this->set('incidencias', $options);
				
		}


	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Incidencia->id = $id;
		if (!$this->Incidencia->exists()) {
			throw new NotFoundException(__('Incidencia inválida.'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->Incidencia->delete()) {
			$this->Session->setFlash(__('Incidencia eliminada.'));
		} else {
			$this->Session->setFlash(__('La incidencia no se ha eliminado, por favor inténtelo de nuevo.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
	
	public function finalizar($id = null) {
		$this->Incidencia->id = $id;
		$data= array('id' => $id, 'estado_id'=>'3');
		if (!$this->Incidencia->exists()) {
			throw new NotFoundException(__('Incidencia inválida.'));
		}
		$this->request->onlyAllow('post', 'finalizar');
		if ($this->Incidencia->save($data)) {
			$this->Session->setFlash(__('Incidencia finalizada.'));
		} else {
			$this->Session->setFlash(__('La incidencia no se ha dado como finalizada, por favor inténtelo de nuevo.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
	
	

	
	

		
}
	
