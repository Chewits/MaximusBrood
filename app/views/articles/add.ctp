<?= $this->Form->create('Article') ?>
<fieldset>
    
    <legend><?= 'Add Article' ?></legend>
    <?
    	echo $this->Form->input('title');
		echo $this->Form->input('url');
    	echo $this->Form->input('description');
    	echo $this->Form->input('category_id');
    	echo $this->Form->end('Submit');
    ?>
</fieldset>