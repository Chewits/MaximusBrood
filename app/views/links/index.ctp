	<h2><?php __('Links');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('title');?></th>
			<th><?php echo $this->Paginator->sort('description');?></th>
			<th><?php echo $this->Paginator->sort('controller');?></th>
			<th><?php echo $this->Paginator->sort('action');?></th>
			<th><?php echo $this->Paginator->sort('url');?></th>
			<th><?php echo $this->Paginator->sort('permission_id');?></th>
			<th><?php echo $this->Paginator->sort('link_id');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($links as $link):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $link['Link']['id']; ?>&nbsp;</td>
		<td><?php echo $link['Link']['title']; ?>&nbsp;</td>
		<td><?php echo $link['Link']['description']; ?>&nbsp;</td>
		<td><?php echo $link['Link']['controller']; ?>&nbsp;</td>
		<td><?php echo $link['Link']['action']; ?>&nbsp;</td>
		<td><?php echo $link['Link']['url']; ?>&nbsp;</td>
		<td><?php echo $link['Link']['permission_id']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($link['ParentLink']['title'], array('controller' => 'links', 'action' => 'view', $link['ParentLink']['id'])); ?>
		</td>
		<td class="actions">
			<?php echo $this->Html->link(__('Move up', true), array('action' => 'moveup', $link['Link']['id'])); ?>
			<?php echo $this->Html->link(__('Move down', true), array('action' => 'movedown', $link['Link']['id'])); ?>
			
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $link['Link']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $link['Link']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $link['Link']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $link['Link']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>
	
	<?= $this->element('pager'); ?>
