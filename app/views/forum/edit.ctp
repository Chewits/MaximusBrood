<div class="page-header">
	<h2>Forum</h2>
	<p>The forum is a place for talking away from Battle.NET. This is the port of call
	for all official clan announcements such as promotions, clan wars and any other events
	that happen to be taking place.</p>
</div>

<?php $javascript->link('bbcode.js', false); ?>
<fieldset>
 	<legend>Edit Post</legend>
<?= $this->element('bbcodeinput'); ?>

<?php echo $this->Form->create('Post', array('id'=>'bbcodeadd', 'url'=>array('controller'=>'forum', 'action'=>'edit')));?>
	<?php
		echo $this->Form->input('title');
		echo $this->Form->input('id');
		echo $this->Form->input('description');
	?>
<?php echo $this->Form->end('Submit');?>
</fieldset>