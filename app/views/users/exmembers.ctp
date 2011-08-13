<div class="page-header">
	<h2>Ex-Members List</h2>
	<p>The Ex-members section does pretty much what it says on the tin. Bygone heros, people and villans are listed respectively in the legends, ex-member and wash-outs sections.</p>
</div>

<? 	foreach($ranks as $rank): ?>

<div class="record">
<h2><?= $html->link($rank['Rank']['title'], array('controller'=>'users', 'action'=>'show', $rank['Rank']['title'])); ?></h2>
<p><?= $filter->text($rank['Rank']['description']); ?></p>
</div>

<? endforeach; ?>