<div class="boards form">
<?php echo $this->Form->create('Board');?>
	<fieldset>
 		<legend><?php __('Add Board'); ?></legend>
	<?php
		echo $this->Form->input('permission_id');
		echo $this->Form->input('title');
		echo $this->Form->input('description');
		echo $this->Form->input('style');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Boards', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Posts', true), array('controller' => 'posts', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Post', true), array('controller' => 'posts', 'action' => 'add')); ?> </li>
	</ul>
</div>