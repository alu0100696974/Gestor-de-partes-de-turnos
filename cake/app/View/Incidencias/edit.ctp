<div class="incidencias form">
<?php echo $this->Form->create('Incidencia'); ?>
	<fieldset>
		<legend><?php echo __('Editar Incidencia'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('name');
		echo $this->Form->input('prioridad',
					array('options' => array(
						'Mínima' => 'Mínima',
						'Media' => 'Media',
						'Máxima' => 'Máxima',
					)));
		echo $this->Form->input('Users', array( 'type' => 'select', 'multiple' => 'checkbox', 'label'=>'Usuarios'));
		echo $this->Form->input('descripcion');
		echo $this->Form->input('observaciones');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Form->postLink(__('Marcar como finalizada'), array('action' => 'finalizar', $this->Form->value('Incidencia.id')), null, __('¿ Seguro que quieres dar la incidencia como finalizada # %s?', $this->Form->value('Incidencia.id'))); ?></li>
		<li><?php echo $this->Form->postLink(__('Eliminar'), array('action' => 'delete', $this->Form->value('Incidencia.id')), null, __('Are you sure you want to delete # %s?', $this->Form->value('Incidencia.id'))); ?></li>
		<li><?php echo $this->Html->link(__('Listar Incidencias'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('Listado de Partes'), array('controller' => 'partes', 'action' => 'index')); ?> </li>

	</ul>
</div>
