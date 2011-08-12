<div class="page-header">
	<h2>Members List</h2>
	<p>This is the official
	 member list of the clan, users not on this list are not part of the 
	 clan. If you wish to join the clan you should speak to one of our
	 members on Battle.NET.</p>
</div>

<fieldset>
	<legend>Reinstate User</legend>

<?

echo $this->Form->create('User');
		echo $this->Form->input('id');
echo $this->Form->input('rank_id', array('between'=>':')).'</br>';
echo $this->Form->end('Submit');
		
		?>
		
</fieldset>