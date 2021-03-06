<div class="page-header">
	<h2>Profile</h2>
	<p>A user's profile contains everything you need to know about someone. From their age to their akas
	this is the place to be. Make sure you keep your profile up to date!</p>
</div>
<?php $javascript->link('bbcode.js', false); ?>
<?
	$permissionsData = array(
		'Edit User'=>array(
			'Promote'		=>		array('action'=>'edit', 1), 
			'Move Up'		=>		array('action'=>'moveup', 1),
			'Move Down'		=>		array('action'=>'movedown', 1)),
		'Delete Rank'=>	array(
			'Delete Rank'	=>		array('action'=>'delete', 1))
	)
?>

<div class="profile">
		
	<h2><?= $profile['Rank']['title'].' '.$profile['User']['username'] ?> </h2>
	<br />
	
		<? 
		
		if(!empty($profile['Profile']['description'])) {
			echo $bbcode->bbcodeon_noimg($profile['Profile']['description']);
		} else {
			echo 'This user does not have a bio.';
		}
		
		?>

<br /><br />
	
</div>

<div class="profile">

<table width="100%" border="0" cellspacing="0" class="profilecontain">
  <tr>
    <td width="55%" valign="top">
    <table width="100%" class="profiletable">
      <tr>
        <th colspan="2">Personal Info</th>
      </tr>
      <tr>
        <td width="30%">Nickname:</td>
        <td width="70%"><b><?= $html->link($profile['User']['username'], array('controller'=>'members', 'action'=>'view', $profile['User']['id'])) ?></b></td>
      </tr>
	  <tr>
        <td>Rank:</td>
        <td><?= $profile['Rank']['title'] ?></td>
      </tr>
      <tr>
        <td>Real Name:</td>
        <td><?= $profile['Profile']['real_name'] ?></td>
      </tr>
	   <tr>
        <td>Age:</td>
        <td><?= floor((time() - strtotime($profile['Profile']['date_of_birth'])) / 31556926); ?></td>
      </tr>
	   <tr>
        <td>Country:</td>
        <td><?= $html->image('icons/flags/'.$geolocation->countryToCode($profile['Profile']['country']).'.png').' '.$profile['Profile']['country'] ?></td>
      </tr>
	   <tr>
        <td>Joined:</td>
        <td><?= $time->niceShort($profile['User']['join_date']); ?> (<?= $time->timeAgoInWords($profile['User']['join_date']); ?>)</td>
      </tr>
	   <tr>
        <td>Recruited by:</td>
        <td><?= $html->link($profile['Profile']['recruiter'], array('controller'=>'members', 'action'=>'view', $profile['User']['id'])) ?></td>
      </tr>
	  <tr>
        <td>Email:</td>
        <td><?= $profile['Profile']['email'] ?></td>
      </tr>
	   <tr>
        <td>MSN:</td>
        <td><?= $profile['Profile']['msn'] ?></td>
      </tr>
	  <tr>
        <td>Skype:</td>
        <td><?= $profile['Profile']['skype'] ?></td>
      </tr>
	  <tr>
        <td>Facebook:</td>
        <td><?= $profile['Profile']['facebook'] ?></td>
      </tr>
	  <tr>
        <td>AKA's:</td>
        <td><?= $profile['Profile']['akas'] ?></td>
      </tr>
	   <tr>
        <td>SC2 Profile:</td>
        <td><?= $text->autoLink($profile['Profile']['sc2']) ?></td>
      </tr>
	   <tr>
        <td>SC2 Name.Code:</td>
        <td><?= $profile['Profile']['sc2name'],'.', $profile['Profile']['sc2code'] ?></td>
      </tr>
	  <tr>
        <td>ICCUP Profile:</td>
        <td><?= $text->autoLink($profile['Profile']['iccup']) ?></td>
      </tr>
	  <tr>
        <td>Posts made:</td>
        <td><?= $profile['User']['post_count'] ?></td>
      </tr>
	  <tr>
        <td>Last Active:</td>
        <td><?= $time->niceShort($profile['User']['last_active']); ?></td>
      </tr>
      <tr>
      <td class="bottom" colspan="2"></td>
      </tr>
</table>
</td>
    <td width="45%" valign="top">
			<table width="100%" class="profiletable">
			<th>User Image</th>
				<tr>
				<td height=265 class="profileimage"><?= $html->image('user/default.png') ?></td>
				</tr>
		</table>
			<table width="100%" class="profiletable">
			<th colspan="2">Games Info</th>
				<tr>
				<td width="30%">Games:</td>
				<td width="70%">
				<?
				$ingroup = false;
				foreach($profile['Group'] as $group) {
					if(!empty($group['image'])) {
						$ingroup = true;
						$address = '';
							if(isset($profile['Profile'][substr($group['image'], 0, -4)]))
								$address = $profile['Profile'][substr($group['image'], 0, -4)];
						echo $html->link($html->image('icons/groups/'.$group['image']), $address, array('escape' => false));
					}
				}
				
				if(!$ingroup)
					echo '-';

				?>
				</td>
				</tr>
				<tr>
				<td width="30%">Squads:</td>
				<td width="70%">SC2 A Team</td>
				</tr>
				<tr>
      			<td class="bottom" colspan="2"></td>
      			</tr>
		</table>
</td>
</tr>
</table>
	<table class="profilecontain">
  <tr>
    <td width="100%" valign="top">
    <table width="100%" class="profiletable">
      <tr>
        <th colspan="4">Starcraft 2 Match History - Last 5 Games</th>
      </tr>
      <tr>
        <td width="30%"><b>Game Type:</b></td>
        <td width="30%"><b>Map:</b></td>
	<td width="20%"><b>Result:</b></td>
	<td width="20%"><b>Date:</b></td>
      </tr>
	<tr>
		<td width=30%>
			type
		</td>
		<td width=30%>
			map
		</td>
		<td width=20%>
			result
		</td>
		<td width=20%>
			date	
		</td>
	</tr>
			
		<? if(!empty($profile['Profile']['sc2'])): ?>
		<? // pr($battlenet->recentgames($profile['Profile']['sc2'])); ?>
			
	<tr>
		<td class="bottom" colspan="4"></td>
      	</tr>
    </table>
   </td>
  </tr>
</table>

<? endif; ?>

<? if($permissions->check('Edit User', $userData)): ?>
<table class="profilecontain">
  <tr>
    <td width="100%" valign="top">
	  <table class="profiletable" width="100%" cellspacing="0" cellpadding="2">
      <tr>
        <th>Promotion History</th>
      </tr>
      <tr>
        <td>
		<? if($promotions != array()): ?>
	<ul>
		<?php foreach ($promotions as $promotion): ?>
		<li>
			<?=$promotion['Log']['description']?> to <?= $promotion['Log']['additional'] ?> by <?= $html->link($promotion['User']['username'], array('controller'=>'members', 'action'=>'view', $promotion['User']['id'])) ?> <?=$time->timeAgoInWords($promotion['Log']['timestamp'])?>
		</li>
		<?php endforeach; ?>	
	</ul>
	<? else: ?>
	This user has never been promoted.
	<? endif ?>
		</td>
      </tr>
		<tr>
      		<td class="bottom"></td>
     	</tr>
    </table>
   </td>
  </tr>
</table>
<? if($permissions->check('Edit User', $userData)): ?>
<table class="profilecontain">
  <tr>
    <td width="100%" valign="top">
	 <table class="profiletable" width="100%" cellspacing="0" cellpadding="2">
      <tr>
        <th>Private Comments</th>
      </tr>
      <tr>
        <td>
        		<? 
		
		if(!empty($profile['Profile']['private_description'])) {
			echo $bbcode->bbcodeon_noimg($profile['Profile']['private_description']);
		} else {
			echo 'This user does not have any comments.';
		}
		
		?>
	<? endif ?>
	
	
        </td>
      </tr>
      	<tr>
      		<td class="bottom"></td>
     	</tr>
    </table>
    </td>
  </tr>
</table>
</div>

<? endif ?>
