	<h2><?php __('Logs');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('title');?></th>
			<th><?php echo $this->Paginator->sort('description');?></th>
			<th><?php echo $this->Paginator->sort('timestamp');?></th>
			<th><?php echo $this->Paginator->sort('ip_address');?></th>
			<th><?php echo $this->Paginator->sort('user_agent');?></th>
			<th><?php echo $this->Paginator->sort('user_id');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($logs as $log):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $log['Log']['title']; ?>&nbsp;</td>
		<td><?php echo $log['Log']['description']; ?>&nbsp;</td>
		<td><?php echo $log['Log']['timestamp']; ?>&nbsp;</td>
		<td><?php echo $log['Log']['ip_address']; ?>&nbsp;</td>
		<td><?php echo $log['Log']['user_agent']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($log['User']['username'], array('controller' => 'users', 'action' => 'view', $log['User']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>

<?= $this->element('pager'); ?>