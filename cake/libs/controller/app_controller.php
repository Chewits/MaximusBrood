<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
 *
 * PHP versions 4 and 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2010, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2010, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       cake
 * @subpackage    cake.cake.libs.controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */

/**
 * This is a placeholder class.
 * Create the same file in app/app_controller.php
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package       cake
 * @subpackage    cake.cake.libs.controller
 * @link http://book.cakephp.org/view/957/The-App-Controller
 */
class AppController extends Controller {

	var $components = array('Auth', 'RequestHandler', 'Session', 'Permissions', 'Menu');
	var $helpers = array('Html', 'Session', 'Form', 'Permissions', 'Plural', 'Time', 'Filter', 'Geolocation', 'Chart', 'Menu');
	var $userData;
	var $activeUsers;
	var $menuData;
	var $childMenuData;
	var $extraMenuData;
	
	function beforeFilter() {
		
		$this->Auth->allowedActions = array('*'); //allow access to everything - any security that is needed is done by permissions
		
		//get menu
		$this->Menu->getMainMenu();
		$this->Menu->getSubMenu();

		//if the user is logged in send all their relavant info to the view & model
		//this is easier and just as (or more?) secure as sessions
		if($this->Auth->User('id')) {
 			$this->loadModel('User');
			$this->userData = $this->User->find('first', array('conditions'=>array('User.id'=>$this->Auth->User('id'))));	
		}
		
		//get the clients IP and user agent
		$this->userData['User']['ip_address'] = $this->RequestHandler->getClientIP();
		$this->userData['User']['user_agent'] = env('HTTP_USER_AGENT');		
		//actually sent to view and model
		$this->set('userData', $this->userData);
		$this->{$this->modelClass}->userData = $this->userData;
		
		//if we're logged in, check the permissions to make sure that's allowed
		if($this->name  == 'users' && $this->params['action'] == 'logout') { //this is here to avoid redirect loop
			if($this->Auth->user('id') && !$this->Permissions->check('Allow Login')) {
				$this->Session->setFlash('Sorry, this account has been deactivated.', 'default', array('class'=>'error-message'));
				$this->redirect(array('controller'=>'users', 'action'=>'logout')); //perhaps change this to lock?
			}		
		}
		
		
		
		$this->loadModel('Log');
		$this->Log->recursive = 2;
		
		if(isset($this->userData['User']['id'])) {;
			$pageviewlog = array(
			'title'			=>		'View',
			'description'	=>		$this->here,
			'timestamp'		=>		DboSource::expression('NOW()'),
			'ip_address'	=>		$this->userData['User']['ip_address'],
			'user_agent'	=>		$this->userData['User']['user_agent'],
			'user_id'		=>		$this->userData['User']['id']);
		
			$this->Log->save($pageviewlog);
		}
		$this->activeUsers = $this->Log->find('all', 
			array(
				'conditions'=>array('Log.timestamp >'=>date('Y-m-d H:i:s', strtotime("-5 minutes"))), 
				'fields'=>array('DISTINCT User.id')
				));
			
		$activeUserstwo = array();
		foreach($this->activeUsers as $user) {
			$this->Log->User->unbindModel(array('hasAndBelongsToMany'=>array('Permission', 'Group')));		
			$activeUserstwo[count($activeUserstwo)] = $this->Log->find('first', array('conditions'=>array('Log.user_id'=>$user['User']['id']), 'order'=>array('Log.timestamp'=>'DESC')));
		}
		$this->activeUsers = $activeUserstwo;
		$this->set('activeUsers', $this->activeUsers);
	}
}
