<div class="page-header">
	<h2>Forum</h2>
	<p>The forum is a place for talking away from Battle.NET. This is the port of call
	for all official clan announcements such as promotions, clan wars and any other events
	that happen to be taking place.</p>
</div>

<table cellpadding="0" cellspacing="0">
	<tr>
			<th class="forum_icon left"></th>	
			<th class="forum_title left"><?php echo $this->Paginator->sort('title');?></th>			
			<th class="forum_author center"><?php echo $this->Paginator->sort('Author', 'user_id');?></th>
			<th class="forum_lastpost right"><?php echo $this->Paginator->sort('Last Post', 'last_post');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($posts as $post):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td class="forum_icon left" style="vertical-align: middle;">
		<? 
		
		if($post['Post']['locked'])
		echo $html->image('icons/lock_thread.png');
		
		elseif($post['Post']['stuck'])
		echo $html->image('icons/sticky_thread.png');
		
		else 
		echo $html->image('icons/old_thread.png');
		
		 ?>
		
		</td>
		<td class="forum_title left">
			<?php echo $this->Html->link($post['Post']['title'], array('controller'=>'forum', 'action'=>'view', $post['Post']['id']), array('style'=>strtolower($post['Board']['style']))); ?> <?= $post['Post']['pager'] ?>
			<br />Replies: <?php echo $post['Post']['replies'];?> 
		</td>
		<td style="vertical-align: middle;" class="forum_author center">
			<?php echo $this->Html->link($post['User']['username'], array('controller' => 'users', 'action' => 'view', $post['User']['id'])); ?>
		</td>
		<td class="forum_lastpost right">
			<?php echo $time->niceShort($post['Post']['last_post']); ?>
			<br /><?php echo $this->Html->link($post['Last_User']['username'], array('controller' => 'users', 'action' => 'view', $post['Last_User']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
</table>
<?= $this->element('pager'); ?>