<div class="page-header">
	<h2>Forum</h2>
	<p>The forum is a place for talking away from Battle.NET. This is the port of call
	for all official clan announcements such as promotions, clan wars and any other events
	that happen to be taking place.</p>
</div>

<?php $javascript->link('bbcode.js', false); ?>
<fieldset>
	<legend>Add Reply</legend>
<?= $this->element('bbcodeinput'); ?>

	<?php 
		echo $this->Form->create('Post', array('id'=>'bbcodeadd', 'url'=>array('controller'=>'forum', 'action'=>'reply', $id)));
		echo $this->Form->input('description', array('label'=>'Content', 'between'=>':<br />')).'</br>';
		echo $this->Form->end(__('Submit', true));
	?>
</fieldset>