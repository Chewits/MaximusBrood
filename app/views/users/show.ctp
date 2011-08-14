<? if($users[0]['Rank']['title'] == "Guest"): ?>
	<div class="page-header">
		<h2>Guest List</h2>
		<p>
		This is the official guest list of the clan. There <?= count($users) > 1 ? 'are' : 'is' ?> <?= $plural->ize('guest', count($users)) ?>.</p>
	</div>

<? elseif($users[0]['Rank']['title'] == "Legends"): ?>
	<div class="page-header">
		<h2><? echo $users[0]['Rank']['title'] ?></h2>
		<p><? echo $users[0]['Rank']['description'] ?></p>
	</div>

<? elseif($users[0]['Rank']['title'] == "Ex-Members"): ?>
	<div class="page-header">
		<h2><? echo $users[0]['Rank']['title'] ?></h2>
		<p><? echo $users[0]['Rank']['description'] ?></p>
	</div>


<? elseif($users[0]['Rank']['title'] == "Wash Outs"): ?>
	<div class="page-header">
		<h2><? echo $users[0]['Rank']['title'] ?></h2>
		<p><? echo $users[0]['Rank']['description'] ?></p>
	</div>


<? else: ?>

	<div class="page-header">
		<h2><? echo $users[0]['Rank']['title'] ?></h2>
		<p><? echo $users[0]['Rank']['description'] ?></p>
	</div>

<? endif; ?>

<table cellpadding="0" cellspacing="0">
	<tr>
	
		<th class="left"><?= $this->Paginator->sort('username'); ?></th>
		<th class="center"><font color=white>Games</font></th>
		<th class="right"><?= $this->Paginator->sort('rank'); ?></th>
	</tr>
	<?	$i = 0;
	foreach($users as $user):
		$class = null; 
		if ($i++ % 2 == 0) $class = ' class="altrow"'; 
	?>
	<tr <?= $class ?>>
		<td class="third left"><?= $html->image('icons/flags/'.$geolocation->countryToCode($user['Profile']['country']).'.png').' '.$html->link($user['User']['username'], array('controller'=>'members', 'action'=>'view', $user['User']['id']))?> (<?= $user['Profile']['real_name'] ?>)</td>
		<td class="third center">
			<?
				$ingroup = false;
				foreach($user['Group'] as $group) {
					if(!empty($group['image'])) {
						$ingroup = true;
						$address = '';
						if(isset($user['Profile'][substr($group['image'], 0, -4)]))
							$address = $user['Profile'][substr($group['image'], 0, -4)];
						echo $html->link($html->image('icons/groups/'.$group['image']), $address, array('escape' => false));
					}
				}
				
				if(!$ingroup)
					echo '-';

			?>
		</td>
		<td class="third right"><?= $html->link($user['Rank']['title'], array('controller'=>'ranks', 'action'=>'view', $user['Rank']['id'])); ?></td>
	</tr>
<? endforeach; ?>
</table>	
<?= $this->element('pager'); ?>



