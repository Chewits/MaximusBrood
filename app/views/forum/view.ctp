<div class="page-header">
	<h2>Forum</h2>
	<p>The forum is a place for talking away from Battle.NET. This is the port of call
	for all official clan announcements such as promotions, clan wars and any other events
	that happen to be taking place.</p>
</div>
<?php $javascript->link('bbcode.js', false); ?>
<?
//work out number of replies to display
$replyWord = ($replyCount == 1) ? ' reply' : ' replies';
$replyText = $replyCount.$replyWord;
?>

<h2>Viewing thread "<?= $thread['Post']['title']; ?>" (<?= $replyText ?>)</h2>

<table class="forum" cellpadding="0" cellspacing="0">
	<?php foreach ($posts as $post): 

	$permissionsData = array(
		'Forum Info'=>array(
			'Info'		=>		array('action'=>'info', $post['Post']['id'])),
		'Edit Forum'=>array(
			'Edit'		=>		array('action'=>'edit', $post['Post']['id'])),
		'Delete Forum'=>	array(
			'Delete'	=>		array('action'=>'delete', $post['Post']['id']))
	);
	
	$permissionsLinks = $permissions->linkList($permissionsData, $userData);
	
	?>
	<tr class="record">
		<td style="width: 15%;">
			<?= $html->link($post['User']['username'], array('controller'=>'users', 'action'=>'view', $post['User']['id']), array('title'=>$post['User']['Rank']['title'].' '.$post['User']['username'])); ?></br>
			(<?= $post['User']['post_count']; ?> posts)<br/>
			Date:<br />
			 <?= $post['Post']['timestamp']; ?><br />
			 <?= $permissionsLinks ?>
		</td>
		<td><?= $bbcode->bbcodeon($post['Post']['description']); ?><br /><br />--<br /><br /><?= $bbcode->bbcodeon_noimg($post['User']['Profile']['signature']); ?></td>
	</tr>
<?php endforeach; ?>
</table>
<?= $this->element('pager'); ?>
