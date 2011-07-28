<fieldset>
    <?= $this->Form->create('Article') ?>
    <legend><?= 'Add Article' ?></legend>
    <?
    	echo $this->Form->input('title');
    	echo $this->Form->input('description');
    	echo $this->Form->input('link_id');
    	echo $this->Form->input('category_id');
    	echo $this->Form->input('user_id');
    	echo $this->Form->end(__('Submit', true));
    ?>
</fieldset>