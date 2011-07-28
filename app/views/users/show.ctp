<div class="page-header">
	<h2>Members List</h2>
	<p>This is the official
	 member list of the clan, users not on this list are not part of the 
	 clan. If you wish to join the clan you should speak to one of our
	 members on Battle.NET. There <?= count($users) > 1 ? 'are' : 'is' ?> <?= $plural->ize(strtolower($users[0]['Rank']['title']) , count($users)) ?>.</p>
</div>

<table cellpadding="0" cellspacing="0">
	<tr>
		<th class="left"><?= $this->Paginator->sort('username'); ?></th>
		<th class="center">Group</th>
		<th class="right"><?= $this->Paginator->sort('rank'); ?></th>
	</tr>
	<?	$i = 0;
	foreach($users as $user):
		$class = null; 
		if ($i++ % 2 == 0) $class = ' class="altrow"'; 
	?>
	<tr <?= $class ?>>
		<td class="left"><?= $html->link($user['User']['username'], array('controller'=>'members', 'action'=>'view', $user['User']['id']))?></td>
		<td class="center"></td>
		<td class="right"><?= $html->link($user['Rank']['title'], array('controller'=>'ranks', 'action'=>'view', $user['Rank']['id'])); ?></td>
	</tr>
<? endforeach; ?>
</table>	
<?= $this->element('pager'); ?>
