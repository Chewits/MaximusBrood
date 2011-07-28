<div class="page-header">
	<h2>Forum</h2>
	<p>The forum is a place for talking away from Battle.NET. This is the port of call
	for all official clan announcements such as promotions, clan wars and any other events
	that happen to be taking place.</p>
</div>

<fieldset>
	<legend>Add Thread</legend>
	<?php 
		echo $this->Form->create('Post', array('url'=>array('controller'=>'forum', 'action'=>'add')));
		echo $this->Form->input('title', array('between'=>': ')).'</br>';
		echo $this->Form->input('description', array('between'=>':<br />')).'</br>';
		echo $this->Form->input('board_id', array('between'=>': ')).'</br>';
		echo $this->Form->end(__('Submit', true));
	?>
</fieldset>