
<?php echo $this->Form->create('Category');?>
	<fieldset>
 		<legend><?php __('Add Category'); ?></legend>
	<?php
		echo $this->Form->input('title');
		echo $this->Form->input('description');
	?>
	<?php echo $this->Form->end(__('Submit', true));?>
	</fieldset>

