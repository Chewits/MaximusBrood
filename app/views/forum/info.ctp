<div class="page-header">
	<h2>Forum</h2>
	<p>The forum is a place for talking away from Battle.NET. This is the port of call
	for all official clan announcements such as promotions, clan wars and any other events
	that happen to be taking place.</p>
</div>

<h2>Information on <?= $post['User']['username']?>'s post</h2>


<table class="forum" cellpadding="0" cellspacing="0">
	<?php 
	
	$permissionsData = array(
		'Edit Forum'=>array(
			'Edit'		=>		array('action'=>'edit', $post['Post']['id'])),
		'Delete Forum'=>	array(
			'Delete'	=>		array('action'=>'delete', $post['Post']['id']))
	);
	
	$permissionsLinks = $permissions->linkList($permissionsData, $userData);
	$locationdata = $geolocation->find($log['Log']['ip_address']);
	
	?>
	<tr class="record">
		<td style="width: 15%;">
			<?= $html->link($post['User']['username'], array('controller'=>'users', 'action'=>'view', $post['User']['id']), array('title'=>$post['User']['Rank']['title'].' '.$post['User']['username'])); ?></br>
			(<?= $post['User']['post_count']; ?> posts)<br/>
			Date:<br />
			 <?= $post['Post']['timestamp']; ?><br />
			 <?= $permissionsLinks ?>
		</td>
		<td><?= $filter->text($post['Post']['description']); ?><br /><br />--<br /><br /><?= $post['User']['username'] ?></td>
	</tr>
</table>

<div class="record">
<h2>Author Information</h2>
	<ul>
		<li>Author: <?= $log['User']['username'] ?></li>
		<li>IP Address: <?= $log['Log']['ip_address'] ?></li>
		<li>User Agent: <?= $log['Log']['user_agent'] ?></li>
		<? if(!empty($locationdata['Country'])): ?>
		<li>Country: <?= $locationdata['Country'] ?></li>
		<li>Region: <?= $locationdata['Region'] ?></li>
		<li>City: <?= $locationdata['City'] ?></li>
		<? endif;?>
	</ul>
</div>