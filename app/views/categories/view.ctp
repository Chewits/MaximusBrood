<div class="page-header">
	<h2><?= $category['Category']['title'] ?></h2>
	<p><?= $filter->text($category['Category']['description']); ?></p>
</div>

<? 	
	$category['Article'] = Set::sort($category['Article'], '{n}.order', 'desc');
	foreach($category['Article'] as $article): 

	$permissionsData = array(
		'Edit Article'=>array(
			'Move Up'		=>		array('controller'=>'articles', 'action'=>'moveup',$article['id']),
			'Move Down'		=>		array('controller'=>'articles', 'action'=>'movedown', $article['id']),
			'Edit'		=>		array('controller'=>'articles', 'action'=>'edit', $article['id'])),
		'Delete Article'=>	array(
			'Delete'	=>		array('controller'=>'articles', 'action'=>'delete', $article['id']))
	);
	
	$permissionsLinks = $permissions->linkList($permissionsData, $userData);
	
?>

<div class="record">
<h2><?= $article['title'] ?></h2>
<p><?= $filter->text($article['description']); ?></p>
<p class="actions"><?= $permissionsLinks ?></p> 
</div>

<? endforeach; ?>