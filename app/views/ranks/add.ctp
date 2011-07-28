<div class="page-header">
	<h2>Ranks</h2>
	<p>The ranking system is essential to 
	maintain order within the clan and hold it together. You can get promoted 
	through hard work, activity and having the right attitude in the eyes of 
	the Commanders. Those who can't appreciate the importance of the hierarchy won't 
	last long, so make sure you understand it!</p>
</div>

<fieldset>
 	<legend>Add Rank</legend>
	<?php
		echo $this->Form->create('Rank');
		echo $this->Form->input('title', array('between'=>': ')).'</br>';
		echo $this->Form->input('description', array('between'=>':<br />'));
		echo $this->Form->end('Submit');
	?>
</fieldset>
