<div class="page-header">
	<h2>Members List</h2>
	<p>This is the official
	 member list of the clan, users not on this list are not part of the 
	 clan. If you wish to join the clan you should speak to one of our
	 members on Battle.NET.</p>
</div>

<fieldset>
 	<legend>Login</legend>
	<?php echo $this->Form->create('User', array('action'=>'login'));?>
	<table>
	<?php
		echo $this->Form->input('username', array('between'=>': ')).'</br>';
		echo $this->Form->input('password', array('between'=>': '));
	?>
	</table>
	<?php echo $this->Form->end(__('Submit', true));?>
</fieldset>