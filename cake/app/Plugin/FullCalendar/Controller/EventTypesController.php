<?php
/*
 * Controllers/EventTypesController.php
 * CakePHP Full Calendar Plugin
 *
 * Copyright (c) 2010 Silas Montgomery
 * http://silasmontgomery.com
 *
 * Licensed under MIT
 * http://www.opensource.org/licenses/mit-license.php
 */
 
class EventTypesController extends FullCalendarAppController {

	var $name = 'EventTypes';

        var $paginate = array(
            'limit' => 15
        );

	function index() {
		$this->EventType->recursive = 0;
		$this->set('eventTypes', $this->paginate());
	}

	function view($id = null) {
		if(!$id) {
			$this->Session->setFlash(__('Tipo de evento no válido.', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('eventType', $this->EventType->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->EventType->create();
			if ($this->EventType->save($this->data)) {
				$this->Session->setFlash(__('El tipo de evento ha sido guardado.', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('El tipo de evento no se ha guardado, por favor inténtelo de nuevo.', true));
			}
		}
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Tipo de evento no válido.', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->EventType->save($this->data)) {
				$this->Session->setFlash(__('El tipo de evento ha sido guardado.', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('El tipo de evento no se ha guardado, por favor inténtelo de nuevo.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->EventType->read(null, $id);
		}
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Id de tipo de evento no válido', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->EventType->delete($id)) {
			$this->Session->setFlash(__('Tipo de elemento eliminado.', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('El tipo de evento no ha sido eliminado.', true));
		$this->redirect(array('action' => 'index'));
	}
}
?>
