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
		<?php 
		global $wpdb;
		$results = $wpdb->get_col("SELECT DISTINCT regid FROM userlist");
		$id = 1;
		foreach ($results as $r) {
			$row = $wpdb->get_row("SELECT * FROM userlist WHERE regid=$r AND meta_value='single-delegation' AND meta_name='delegation'");
			if ($row){ 
				$rows = $wpdb->get_results("SELECT * FROM userlist WHERE regid=$r");
				$name = $wpdb->get_var("SELECT meta_value FROM userlist WHERE regid=$r AND meta_name='single-delegate-name'");
				?>
				<button class="accordion"><?php echo $id++; ?>. Name: <?php echo $name; ?></button>	
				<div class="panel">
					<div class="col-xs-12 col-sm-6"> 			
						<?php
						foreach ($rows as $rows) { ?>
					 		<?php
					 		$propername = "None";
					 		$name1 = $rows->meta_name;
					 		if ($name1 === 'committee1'){
					 			$propername = 'Committee Preference 1'; ?>
					 			</div>
					 			<div class="col-xs-12 col-sm-6">
					 			<?php  
					 		}else if ($name1 === 'country1'){
					 			$propername = 'Country Preference 1';
					 		}else if ($name1 === 'committee2'){
					 			$propername = 'Committee Preference 2';
					 		}else if ($name1 === 'country2'){
					 			$propername = 'Country Preference 2';
					 		}else if ($name1 === 'committee3'){
					 			$propername = 'Committee Preference 3';
					 		}else if ($name3 === 'country3'){
					 			$propername = 'Country Preference 3';
					 		}else if ($name != 'delegation'){
					 			$propername = $wpdb->get_var("SELECT propername FROM registration_form WHERE name='$name1'");	
					 		}if ($propername!= "None"){
						 		echo $propername; ?>: <?php echo $rows->meta_value;	
						 		echo "<br/>";
					 		}
						 } ?>
					</div>
				</div> 
			<?php }
		}
		?>
	</div>
<?php }