<?php echo $this->Form->create('Link');?>
	<fieldset>
 		<legend><?php __('Add Link'); ?></legend>
	<?php
		echo $this->Form->input('title');
		echo $this->Form->input('description');
		echo $this->Form->input('controller');
		echo $this->Form->input('action');
		echo $this->Form->input('url');
		echo $this->Form->input('permission_id');
		echo $this->Form->input('link_id');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>