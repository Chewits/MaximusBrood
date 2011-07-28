<div class="page-header">
	<h2>News</h2>
	<p>Welcome to the Maximus Brood website. Please feel free to explore our site!</p>
</div>

<fieldset>
	<legend>Edit News</legend>
	<?php 
		echo $this->Form->create('Post', array('url'=>array('controller'=>'news', 'action'=>'edit')));
		echo $this->Form->input('id');
		echo $this->Form->input('title', array('between'=>': ')).'</br>';
		echo $this->Form->input('description', array('between'=>':<br />')).'</br>';
		echo $this->Form->end(__('Submit', true));
	?>
</fieldset>