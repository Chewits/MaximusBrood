<div class="page-header">
	<h2>Ranks</h2>
	<p>The ranking system is essential to 
	maintain order within the clan and hold it together. You can get promoted 
	through hard work, activity and having the right attitude in the eyes of 
	the Commanders. Those who can't appreciate the importance of the hierarchy won't 
	last long, so make sure you understand it!</p>
</div>
<?php $javascript->link('bbcode.js', false); ?>

<? 	foreach($ranks as $rank): 

	$permissionsData = array(
		'Edit Rank'=>array(
			'Move Up'		=>		array('action'=>'moveup', $rank['Rank']['id']),
			'Move Down'		=>		array('action'=>'movedown', $rank['Rank']['id']),
			'Edit'			=>		array('action'=>'edit', $rank['Rank']['id'])), 

		'Delete Rank'=>	array(
			'Delete'	=>		array('action'=>'delete', $rank['Rank']['id']))
	)
?>

<div class="record">
<h2><?= $html->link($rank['Rank']['title'], array('controller'=>'ranks', 'action'=>'view', $rank['Rank']['id'])); ?></h2>
<p>
<?= $bbcode->bbcodeon($rank['Rank']['description']); ?></p>
<p class="actions"><?= $permissions->linkList($permissionsData, $userData); ?></p>
</div>

<? endforeach; ?>