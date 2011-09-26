<div class="page-header">
	<h2>Page Categories</h2>
	<p>Here is a list of all the page categories. These categories are used to manage the additional
	pages on the site.</p>
</div>

<? 	
	foreach($categories as $category): 	
	$category['Article'] = Set::sort($category['Article'], '{n}.order', 'desc');
?>

<div class="record">
	<h2><?= $html->link($category['Category']['title'], array('controller'=>'categories', 'action'=>'view', $category['Category']['id'])); ?></h2>
	<p>
		<?= $filter->text($category['Category']['description']); ?>
	</p>
</div>

<? endforeach; ?>