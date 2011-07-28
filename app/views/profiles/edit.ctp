<div class="profiles form">
<?php echo $this->Form->create('Profile');?>
	<fieldset>
 		<legend><?php __('Edit Profile'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('signature');
		echo $this->Form->input('user_id');
		echo $this->Form->input('real_name');
		echo $this->Form->input('email');
		echo $this->Form->input('date_of_birth');
		echo $this->Form->input('country');
		echo $this->Form->input('akas');
		echo $this->Form->input('sc2');
		echo $this->Form->input('iccup');
		echo $this->Form->input('facebook');
		echo $this->Form->input('skype');
		echo $this->Form->input('msn');
		echo $this->Form->input('Description');
		echo $this->Form->input('recruiter');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('Profile.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('Profile.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Profiles', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
	</ul>
</div>