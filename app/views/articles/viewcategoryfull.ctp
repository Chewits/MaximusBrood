<div class="page-header">
	<h2><?= $article['Category']['title'] ?></h2>
	<p><?= $filter->text($article['Category']['description']); ?></p>
</div>

<? 	
	$category['Article'] = Set::sort($category['Article'], '{n}.order', 'desc');
	foreach($category['Article'] as $article): 

	$permissionsData = array(
		'Edit Article'=>array(
			'Move Up'		=>		array('action'=>'moveup',$article['id']),
			'Move Down'		=>		array('action'=>'movedown', $article['id']),
			'Edit'		=>		array('action'=>'edit', $article['id'])),
		'Delete Article'=>	array(
			'Delete'	=>		array('action'=>'delete', $article['id']))
	);
	
	$permissionsLinks = $permissions->linkList($permissionsData, $userData);
	
?>

<div class="record">
<h2><?= $article['title'] ?></h2>
<p><?= $filter->text($article['description']); ?></p>
<p class="actions"><?= $permissionsLinks ?></p> 
</div>

<? endforeach; ?>