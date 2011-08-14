<div class="page-header">
	<h2><?= $this->data['Category']['title'] ?></h2>
	<p><?= $this->data['Category']['description'] ?></p>
</div>

<fieldset>
 	<legend>Edit Article</legend>
	<?php
		echo $this->Form->create('Article');
		echo $this->Form->input('id');
		echo $this->Form->input('title');
		echo $this->Form->input('url');
		echo $this->Form->input('description');
		echo $this->Form->input('category_id');
		echo $this->Form->end('Submit');
	?>
</fieldset>