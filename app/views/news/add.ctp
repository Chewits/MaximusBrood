<div class="page-header">
	<h2>News</h2>
	<p>Welcome to the Maximus Brood website. Please feel free to explore our site!</p>
</div>

<?php $javascript->link('bbcode.js', false); ?>
<fieldset>
	<legend>Add News</legend>
    <?= $this->element('bbcodeinput'); ?>
	<?php 
		echo $this->Form->create('Post', array('id'=>'bbcodeadd', 'url'=>array('controller'=>'news', 'action'=>'add')));
		echo $this->Form->input('title', array('between'=>': ')).'</br>';
		echo $this->Form->input('description', array('between'=>':<br />')).'</br>';
		echo $this->Form->end(__('Submit', true));
	?>
</fieldset>