<? if($users[0]['Rank']['title'] == "Guest"): ?>

<div class="page-header">
	<h2>Guest List</h2>
	<p>This is the official guest list of the clan. There <?= count($users) > 1 ? 'are' : 'is' ?> <?= $plural->ize('member', count($users)) ?>.</p>
</div>


<? elseif($users[0]['Rank']['title'] == "Legends"): ?>

<div class="page-header">
	<h2>Legends</h2>
	<p>These members served with distinction within the clan, and should be commended for their period of service. 
	Most of these members made a significant impact on the Brood, and parted on good terms - or at least left stories 
	and events well worth re-telling! This is our tribute to them.</p>
</div>


<? elseif($users[0]['Rank']['title'] == "Ex-Members"): ?>

<div class="page-header">
	<h2>Ex-Members</h2>
	<p>Having served with the clan for a period, these members decided to part ways with the clan, to fade into the mists of time.. 
	they are welcome to re-trial in the future should they wish to do so.</p>
</div>


<? elseif($users[0]['Rank']['title'] == "Wash Outs"): ?>

<div class="page-header">
	<h2>Wash-outs</h2>
	<p>These ex-members took a stroll down wash-out lane after leaving the clan in anonymity or disgrace. Don't call us wash-out, we'll call you.</p>
</div>


<? else: ?>

<div class="page-header">
	<h2>Ex-Members List</h2>
	<p>The ex-members section does pretty much what it says on the tin. 
	Bygone heros, people and villans are listed respectively in the 
	legends, ex-member and wash-outs sections.</p>
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