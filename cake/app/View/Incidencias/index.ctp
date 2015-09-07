<div class="incidencias index">
	<h2><?php echo __('Incidencias'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id'); ?></th>
			<th><?php echo $this->Paginator->sort('name', 'Nombre de la incidencia'); ?></th>		
			<th><?php echo $this->Paginator->sort('created','Fecha de creación'); ?></th>
			<th><?php echo $this->Paginator->sort('estado'); ?></th>
			<th><?php echo $this->Paginator->sort('prioridad'); ?></th>
			<th><?php echo $this->Paginator->sort('usuario_creador'); ?></th>
			
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php foreach ($incidencias as $incidencia): ?>
	<tr>
		<td><?php echo h($incidencia['Incidencia']['id']); ?>&nbsp;</td>
		<td><?php echo h($incidencia['Incidencia']['name']); ?>&nbsp;</td>
		<td><?php echo h($incidencia['Incidencia']['created']); ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($incidencia['Estado']['name'], array('controller' => 'estados', 'action' => 'view', $incidencia['Estado']['id'])); ?>
		</td>
		<td><?php echo h($incidencia['Incidencia']['prioridad']); ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($incidencia['Usuario']['username'], array('controller' => 'users', 'action' => 'view', $incidencia['Incidencia']['usuario_creador'])); ?>
		</td>

		<td class="actions">
		
			<?php echo $this->Html->link(__('Ver'), array('action' => 'view', $incidencia['Incidencia']['id'])); ?>
			<?php if (($incidencia['Incidencia']['estado_id']<>'3')) {
					echo $this->Html->link(__('Editar'), array('action' => 'edit', $incidencia['Incidencia']['id']));
				}
		  ?>
		  	<?php if (($incidencia['Incidencia']['estado_id']<>'3')) {
					echo $this->Form->postLink(__('Eliminar'), array('action' => 'delete', $incidencia['Incidencia']['id']), null, __('Are you sure you want to delete # %s?', $incidencia['Incidencia']['id']));
				}
		  ?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>
	<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
	));
	?>	</p>
	<div class="paging">
	<?php
		echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Nueva incidencia'), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('Incidencias asignadas'), array('controller'=>'users','action' => 'incidenciasAsignadas', $sesion)); ?></li>
		<li><?php echo $this->Html->link(__('Mis incidencia'), array('controller'=>'users','action' => 'misIncidencias', $sesion)); ?></li>
		<li><?php echo $this->Html->link(__('Listado de partes'), array('controller' => 'partes', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('Cerrar sesión'), array('controller' => 'users', 'action' => 'logout')); ?> </li>
	</ul>
</div>
