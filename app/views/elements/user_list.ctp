
<? if($users == array() || !isset($users) || empty($users)): ?>
	<?= isset($message) ? '<p>'.$message.'</p>' : null ?>
<? else: ?>
<div class="associated">
<?= isset($title) ? '<h2>'.$title.':</h2><br />' : null ?>
<table cellpadding="0" cellspacing="0">
	<tr>
		<th class="left"><?= 'Username'; ?></th>
		<th class="center">Group</th>
		<th class="right"><?= 'rank'; ?></th>
	</tr>
<?	$i = 0;
	foreach($users as $user):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		} ?>
	<tr <?= $class ?>>
		<td class="left"><?= $html->link($user['username'], array('controller'=>'members', 'action'=>'view', $user['id']))?></td>
		<td class="center"></td>
		<td class="right"><?= $html->link($user['Rank']['title'], array('controller'=>'ranks', 'action'=>'view', $user['Rank']['id'])); ?></td>
	</tr>
<? endforeach; ?>
</table>
</div>
<? endif; ?>