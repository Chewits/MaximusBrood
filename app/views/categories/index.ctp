<div class="page-header">
	<h2>Page Categories</h2>
	<p>Here is a list of all the page categories. These categories are used to manage the additional
	pages on the site.</p>
</div>

<?  foreach($categories as $category): 	

	$permissionsData = array(
		'Edit Category'=>array(
			'Edit'		=>		array('controller'=>'categories', 'action'=>'edit', $category['Category']['id'])),
		'Delete Category'=>	array(
			'Delete'	=>		array('controller'=>'categories', 'action'=>'delete', $category['Category']['id']))
	);
	
	$permissionsLinks = $permissions->linkList($permissionsData, $userData);
	
?>

<div class="record">
	<h2><?= $html->link($category['Category']['title'], array('controller'=>'categories', 'action'=>'view', $category['Category']['id'])); ?></h2>
	<p>
		<?= $bbcode->bbcodeon($category['Category']['description']); ?>
	</p>
	<p class="actions"><?= $permissionsLinks ?></p>
</div>

<? endforeach; ?>