<div class="page-header">
	<h2>News</h2>
	<p>Welcome to the Maximus Brood website. Please feel free to explore our site!</p>
</div>

<? 	foreach($news as $article): 

	$permissionsData = array(
		'Edit News'=>array(
			'Edit'		=>		array('action'=>'edit', $article['Post']['id'])),
		'Delete News'=>	array(
			'Delete'	=>		array('action'=>'delete', $article['Post']['id']))
	);
	
	$permissionsLinks = $permissions->linkList($permissionsData, $userData);
?>


<div class="news">
<h2><?= $article['Post']['title'] ?></h2>
<p class="newstop"></p>
<?= $bbcode->bbcodeon($article['Post']['description']); ?>
<p class="newsbot"></p>
<p class="actions"><?= $permissionsLinks ?><? if(!empty($permissionsLinks)) echo " - " ?><?= $html->link($plural->ize('comment', $article['Post']['replies']), array('controller'=>'forum', 'action'=>'view', $article['Post']['id'])) ?> - Posted by <?php echo $this->Html->link($article['User']['username'], array('controller' => 'users', 'action' => 'view', $article['User']['id'])); ?></p> 
</div>


<? endforeach; ?>




