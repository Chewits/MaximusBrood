<div class="page-header">
	<h2>Profile</h2>
	<p>A user's profile contains everything you need to know about someone. From their age to their akas
	this is the place to be. Make sure you keep your profile up to date!</p>
</div>

<fieldset>
	<legend>Edit <?= $user['User']['username'] ?>'s Permissions</legend>

<? echo $form->create('Permission', array('url'=>array('controller'=>'permissions', 'action'=>'edit'))); ?>

<table class="permissions">
	<tr>
		<th width=30%>Permission Type</th><th width=70%>Description</th>
	</tr>

<?= 
	$form->input('User.id', array('type'=>'hidden', 'value'=>$user['User']['id']));
	
	$i = 0;
	foreach($permissions as $permission):
		$class = null; 
		if ($i++ % 2 == 0) $class = ' class="altrow"';
		
			$checked = false;
			foreach($user['Permission'] as $allowed_permission) {
				if($allowed_permission['id'] == $permission['Permission']['id']) {
					$checked = true;
				}
		
			}
?>
	<tr <?= $class ?>>
		<td>
			<?= $form->checkbox($permission['Permission']['id'], array('checked'=>$checked)).$permission['Permission']['title'].'
		</td>
		<td width=70%> '.$permission['Permission']['description'].'
		</td>
	</tr>' ?>
		
<? endforeach;
echo '</table><br />';
		echo $this->Form->end(__('Submit', true)); ?>

<? echo $form->end(); ?>

</fieldset>