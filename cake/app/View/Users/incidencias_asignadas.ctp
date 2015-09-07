<div class="users view">
<h2><?php echo __('Usuario'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($usuario['User']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Usuario'); ?></dt>
		<dd>
			<?php echo h($usuario['User']['username']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Creado'); ?></dt>
		<dd>
			<?php echo h($usuario['User']['created']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Rol'); ?></dt>
		<dd>
			<?php echo $this->Html->link($usuario['Role']['name'], array('controller' => 'roles', 'action' => 'view', $usuario['Role']['id'])); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Form->postLink(__('Listar incidencias'), array('controller'=>'incidencias','action' => 'index')); ?> </li>
		<li><?php echo $this->Form->postLink(__('Listar partes'), array('controller'=>'partes','action' => 'index')); ?> </li>
	</ul>
</div>

<div class="related">
	<h3><?php echo __('Usuarios Asignados'); ?></h3>
	<?php if (!empty($usuario['Inci'])): ?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php echo __('Id'); ?></th>
		<th><?php echo __('Nombre de incidencia'); ?></th>
		<th><?php echo __('Prioridad'); ?></th>
		<th><?php echo __('Estado'); ?></th>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php foreach ($usuario['Inci'] as $usuario): ?>
		<tr>
			<td><?php echo $usuario['id']; ?></td>
			<td><?php echo $usuario['name']; ?></td>
			<td><?php echo $usuario['prioridad']; ?></td>
			<td><?php echo $usuario['Estado']['name']; ?></td>
			<td class="actions">
		
			<?php echo $this->Html->link(__('Ver'), array('controller'=>'incidencias','action' => 'view', $usuario['id'])); ?>
			<?php if (($usuario['estado_id']<>'3')) {
					echo $this->Html->link(__('Editar'), array('controller'=>'incidencias','action' => 'edit', $usuario['id']));
				}
		  ?>
		  	<?php if (($usuario['estado_id']<>'3')) {
					echo $this->Form->postLink(__('Eliminar'), array('controller'=>'incidencias','action' => 'delete', $usuario['id']), null, __('Are you sure you want to delete # %s?', $usuario['id']));
				}
		  ?>
		</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>
