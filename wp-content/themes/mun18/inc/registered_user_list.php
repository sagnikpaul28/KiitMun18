<?php

function add_registrations_menu_page(){
	add_menu_page('User Registration', 'User Registration', 'manage_options', 'registration-users-single', 'function_view_registered_users_single', 'dashicons-id-alt', '50');
	add_submenu_page('registration-users-single', 'Single Delegation', 'Single Delegation', 'manage_options', 'registration-users-single', 'function_view_registered_users_single');
	add_submenu_page('registration-users-single', 'Double Delegation', 'Double Delegation', 'manage_options', 'registration-users-double', 'function_view_registered_users_double');
	add_submenu_page('registration-users-single', 'IP Registrations', 'IP Registrations', 'manage_options', 'registration-users-ip', 'function_view_registered_users_ip');
}

add_action('admin_menu', 'add_registrations_menu_page');

function function_view_registered_users_single(){ ?>
	<div class="wrap">
		<h1 class="wp-heading-inline">Registration List</h1>
		<br/>

	</div>
<?php }