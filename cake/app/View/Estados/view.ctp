<div class="estados view">
<h2><?php echo __('Estado'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($estado['Estado']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Name'); ?></dt>
		<dd>
			<?php echo h($estado['Estado']['name']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Editar Estado'), array('action' => 'edit', $estado['Estado']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Borrar Estado'), array('action' => 'delete', $estado['Estado']['id']), null, __('Estas seguro que quieres borrar  # %s?', $estado['Estado']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Lista Estados'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('Nuevo Estado'), array('action' => 'add')); ?> </li>
	</ul>
</div>
<