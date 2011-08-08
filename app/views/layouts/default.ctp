<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title><?= $title_for_layout; ?></title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <?= $scripts_for_layout; ?>
        <?= $html->css('reset.css'); ?>
        <?= $html->css('main.css'); ?>
    </head>

    <body>
        <div id="container">
            <div id="header">
            	<div id="usercontent"><?= $this->element('user_bar'); ?></div>
                <div id="headercontent">
                    <?= $html->image('layout/mblogo.png', array('id'=>'logo', 'alt'=>'The Maximus Brood')); ?>
                </div>	           
            </div>
            <div id="content">                
                <div id="side">
   	             	<?= $this->element('menu', array('menuData'=>$menuData)); ?>
   	             	
   	             	<div id="activeusers">
   	             		<h2>Active Users</h2>
						<br />
   	             		<? 
   	             		//TODO: clean up this layout
   	             		foreach($activeUsers as $user) {
   	             			echo '<p class="left">'.$html->image('icons/flags/'.$geolocation->countryToCode($user['User']['Profile']['country']).'.png').' '.$html->link($user['User']['username'], array('controller'=>'members', 'action'=>'view', $user['User']['id'])).'<br>'.$time->format('H:m:s', $user['Log']['timestamp']).'</p><br />';
   	             		} ?>
   	             	</div>
	            </div> 
	            <div class="index">    	            	
	                <?= $session->flash(); ?>
            		<?= $content_for_layout; ?>
            		<?= $this->element('footer'); ?>
            	</div>
            </div>	       
        </div>
    </body>
</html>