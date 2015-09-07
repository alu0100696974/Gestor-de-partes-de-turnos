<?php
/*
 * View/FullCalendar/index.ctp
 * CakePHP Full Calendar Plugin
 *
 * Copyright (c) 2010 Silas Montgomery
 * http://silasmontgomery.com
 *
 * Licensed under MIT
 * http://www.opensource.org/licenses/mit-license.php
 */
?>
<script type="text/javascript">
plgFcRoot = '<?php echo $this->Html->url('/'); ?>' + "full_calendar";
</script>
<?php
echo $this->Html->script(array('/full_calendar/js/jquery-1.5.min', '/full_calendar/js/jquery-ui-1.8.9.custom.min', '/full_calendar/js/fullcalendar.min', '/full_calendar/js/jquery.qtip-1.0.0-rc3.min', '/full_calendar/js/ready'), array('inline' => 'false'));
echo $this->Html->css('/full_calendar/css/fullcalendar', null, array('inline' => false));
?>


<div class="Calendar index">
	<div id="calendar"></div>
</div>
<div class="actions">
	<ul>
	    <li><?php echo $this->Html->link(__('Nuevo Evento', true), array('plugin' => 'full_calendar', 'controller' => 'events', 'action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('Administrar Eventos', true), array('plugin' => 'full_calendar', 'controller' => 'events')); ?></li>
		<li><?php echo $this->Html->link(__('Administrar Tipos Eventos', true), array('plugin' => 'full_calendar', 'controller' => 'event_types')); ?></li>
		<li><li><?php echo $this->Html->link(__('Administrar Partes', true), array( 'plugin'=> 'partes', 'controller' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('Cerrar sesion'), array('plugin' => 'users','controller' => 'logout')); ?> </li>
	</ul>
</div>
