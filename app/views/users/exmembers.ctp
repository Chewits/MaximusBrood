<div class="page-header">
	<h2>Members List</h2>
	<p>This is the official
	 member list of the clan, users not on this list are not part of the 
	 clan. If you wish to join the clan you should speak to one of our
	 members on Battle.NET.</p>
</div>

<? 	foreach($ranks as $rank): ?>

<div class="record">
<h2><?= $html->link($rank['Rank']['title'], array('controller'=>'users', 'action'=>'show', $rank['Rank']['title'])); ?></h2>
<p><?= $filter->text($rank['Rank']['description']); ?></p>
</div>

<? endforeach; ?>