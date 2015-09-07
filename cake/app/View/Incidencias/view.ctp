<div class="incidencias view">
<h2><?php echo __('Incidencia'); ?></h2>
	<dl>
		<dt><?php echo __('Id:'); ?></dt>
		<dd>
			<?php echo h($incidencia['Incidencia']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Nombre:'); ?></dt>
		<dd>
			<?php echo h($incidencia['Incidencia']['name']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Creado:'); ?></dt>
		<dd>
			<?php echo h($incidencia['Incidencia']['created']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Estado:'); ?></dt>
		<dd>
			<?php echo h($incidencia['Estado']['name']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Prioridad:'); ?></dt>
		<dd>
			<?php echo h($incidencia['Incidencia']['prioridad']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Usuario creador:'); ?></dt>
		<dd>
			<?php echo h($incidencia['Usuario']['username']); ?>
			&nbsp;
		</dd>
				<dt><?php echo __('Descripción:'); ?></dt>
		<dd>
			<?php echo h($incidencia['Incidencia']['descripcion']); ?>
			&nbsp;
		</dd>
				<dt><?php echo __('Observaciones:'); ?></dt>
		<dd>
			<?php echo h($incidencia['Incidencia']['observaciones']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Editar incidencia'), array('action' => 'edit', $incidencia['Incidencia']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Borrar incidencia'), array('action' => 'delete', $incidencia['Incidencia']['id']), null, __('Are you sure you want to delete # %s?', $incidencia['Incidencia']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Listar incidencias'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('Nueva Incidencia'), array('action' => 'add')); ?> </li>
	</ul>
</div>

<div class="related">
	<h3><?php echo __('Usuarios Asignados'); ?></h3>
	<?php if (!empty($incidencia['Users'])): ?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php echo __('Id'); ?></th>
		<th><?php echo __('Nombre de usuario'); ?></th>
		<th><?php echo __('Rol'); ?></th>
		
	</tr>
	<?php foreach ($incidencia['Users'] as $usuario): ?>
		<tr>
			<td><?php echo $usuario['id']; ?></td>
			<td><?php echo $usuario['username']; ?></td>
			<td><?php echo $usuario['Role']['name']; ?></td>

		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>
 