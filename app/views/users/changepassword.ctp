<div class="page-header">
	<h2>Profile</h2>
	<p>A user's profile contains everything you need to know about someone. From their age to their akas
	this is the place to be. Make sure you keep your profile up to date!</p>
</div>


<fieldset>
 	<legend>Change Password</legend>
	<?php echo $this->Form->create('User', array('action'=>'changepassword'));?>
	<table>
	<?php
		
		echo $this->Form->input('id').'</br>';
		echo $this->Form->input('username', array('type'=>'hidden')).'</br>';
		echo $this->Form->input('password', array('between'=>': ')).'</br>';
		echo $this->Form->input('passwordconfirm', array('between'=>': ', 'label'=>'Confirm Password'));
	?>
	</table>
	<?php echo $this->Form->end('Submit');?>
</fieldset>