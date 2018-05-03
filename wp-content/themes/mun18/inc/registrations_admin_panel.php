<?php

/*
=====================================================
Registrations Admin Panel 
=====================================================
*/


//When adding a new registrations field or updating a field
if (isset($_POST['admin-registration-form-submit'])){
	
	$name = $_POST['admin-registration-form-field-name'];
	$type = $_POST['admin-registration-form-field-type'];
	$label = $_POST['admin-registration-form-field-label'];
	$required = $_POST['admin-registration-form-field-required'];
	$placeholder = " ";
	$options = " ";
	$numberofrows = " "; 

	if ($type === 'Text' || $type === 'Email' || $type === 'Number' || $type === 'Password'){
		$placeholder = $_POST['admin-registration-form-field-placeholder'];
	}else if ($type === 'Checkbox' || $type === 'Radio' || $type === 'Select'){
		$options = $_POST['admin-registration-form-field-select-options'];
	}else if ($type === 'Textarea'){
		$numberofrows = $_POST['admin-registration-form-field-number-of-rows'];
		$placeholder = $_POST['admin-registration-form-field-placeholder'];
	}

	global $wpdb;
	$wpdb->show_errors();
	if (isset($_POST['admin-registration-form-fields-id'])){
		$id = $_POST['admin-registration-form-fields-id'];
		$wpdb->query( $wpdb->prepare(
			"
				UPDATE `registration_form_single` 
				SET `name`= %s, `label`= %s, `placeholder`= %s,`required`= %s, `options`=%s, `numberofrows`=%s 
				WHERE `id`= %d
			",
			$name, $label, $placeholder, $required, $options, $numberofrows, $id
		));
	}else{
		$wpdb->query( $wpdb->prepare( 
			"
				INSERT INTO registration_form_single
				( name, type, label, placeholder, required, options, numberofrows )
				VALUES ( %s, %s, %s, %s, %s, %s, %s )
			", 
		        array(
				$name, 
				$type, 
				$label,
				$placeholder,
				$required,
				$options,
				$numberofrows
			) 
		) );	
	}
}


//Deleting a field

if (isset($_POST['admin-registration-form-delete'])){
	$id = $_POST['admin-registration-form-delete-id'];

	global $wpdb;
	$wpdb->delete('registration_form_single', array('id' => $id), array('%d'));
}

add_action('admin_menu', 'add_registrations_page');


//Add the registrations page to admin menu 
function add_registrations_page(){
	add_menu_page('Registrations Form', 'Registration Form', 'manage_options', 'registration-form-single', 'function_create_single_delegation_registrations_form_page', 'dashicons-list-view', '50');

	add_submenu_page('registration-form-single', 'Registrations Form Single Delegation', 'Single Delegation Form', 'manage_options', 'registration-form-single', 'function_create_single_delegation_registrations_form_page');
	add_submenu_page('registration-form-single', 'Add Fields Single Delegation', 'Add Single Delegation Fields', 'manage_options', 'registration-form-add-single', 'function_create_single_delegation_registrations_form_page_add');
	add_submenu_page('registration-form-single', 'Reorder Fields Single Delegation', 'Reorder Single Delegation Fields', 'manage_options', 'registration-form-reorder-single', 'function_create_single_delegation_registrations_form_page_reorder');

	add_submenu_page('registration-form-single', 'Registrations Form Double Delegation', 'Double Delegation Form', 'manage_options', 'registration-form-double', 'function_create_double_delegation_registrations_form_page');
	add_submenu_page('registration-form-single', 'Registrations Form Double Delegation', 'Add Double Delegation Fields', 'manage_options', 'registration-form-add-double', 'function_create_double_delegation_registrations_form_page_add');
	add_submenu_page('registration-form-single', 'Registrations Form Double Delegation', 'Reorder Double Delegation Form', 'manage_options', 'registration-form-reorder-double', 'function_create_double_delegation_registrations_form_page_reorder');
}


//Create the Registration page for viewing, editing or deleting the fields
function function_create_single_delegation_registrations_form_page(){ ?>
	<div class="wrap">
		<h1 class="wp-heading-inline">Registration Form</h1>
		<a href="<?php echo get_home_url(); ?>/wp-admin/admin.php?page=registration-form-add" class="page-title-action">Add New</a>
		<hr class="wp-header-end">
		<?php if (isset($_POST['admin-registration-form-submit'])){
		?>
			<div id="message" class="updated notice is-dismissible">
				<p>1 Field Updated.</p>
				<button type="button" class="notice-dismiss"><span class="screen-reader-text">Dismiss this notice.</span></button>
			</div>
		<?php }
		if (isset($_POST['admin-registration-form-delete'])){
		?>
			<div id="message" class="updated notice is-dismissible">
				<p>1 Field Deleted.</p>
				<button type="button" class="notice-dismiss"><span class="screen-reader-text">Dismiss this notice.</span></button>
			</div>
		<?php } ?>
		<br/>

		<?php 
		global $wpdb;
		$results = $wpdb->get_results( "SELECT * FROM registration_form_single" );
		
		foreach ($results as $r) { ?>
			<button class="accordion">Type - <?php echo $r->type; ?>. Name: <?php echo $r->name; ?></button>
			<div class="panel">
				<br/>
				<form action="<?php echo get_the_permalink(); ?>" method="post">
					<input type="hidden" name="admin-registration-form-submit" value="Yes">
					<input type="hidden" name="admin-registration-form-fields-id" value="<?php echo $r->id; ?>">
					<input type="hidden" name="admin-registration-form-field-type" value="<?php echo $r->type; ?>">
					<div>	
						<label for="admin-registration-form-field-name">Name:</label>
						<input type="text" name="admin-registration-form-field-name" id="admin-registration-form-field-name" required value="<?php echo $r->name; ?>">
					</div>

					<div>
						<label for="admin-registration-form-field-label">Label:</label>
						<input type="text" name="admin-registration-form-field-label" id="admin-registration-form-field-label" required value="<?php echo $r->label; ?>">
					</div>

					<?php if ($r->type === 'Text' || $r->type === 'Password' || $r->type === 'Email' || $r->type === 'Number'){ ?>
					<div>
						<label for="admin-registration-form-field-placeholder">Placeholder:</label>
						<input type="text" name="admin-registration-form-field-placeholder" id="admin-registration-form-field-placeholder" required value="<?php echo $r->placeholder; ?>">
					</div>
					<?php }else if ($r->type === 'Radio' || $r->type === 'Select' || $r->type === 'Checkbox'){ ?>
					<div>
						<label for="admin-registration-form-field-select-options">Enter the options separated by a comma:</label>
						<input type="text" name="admin-registration-form-field-select-options" id="admin-registration-form-field-select-options" value="<?php echo $r->options; ?>">
					</div>
					<?php }else if ($r->type === 'Textarea'){ ?>
					<div>
						<label for="admin-registration-form-field-placeholder">Placeholder:</label>
						<input type="text" name="admin-registration-form-field-placeholder" id="admin-registration-form-field-placeholder" value="<?php echo $r->placeholder; ?>">
					</div>
					<div>
						<label for="admin-registration-form-field-number-of-rows">Number of rows:</label>
						<input type="number" name="admin-registration-form-field-number-of-rows" id="admin-registration-form-field-number-of-rows" value="<?php echo $r->numberofrows; ?>">
					</div>
					<?php } ?>


					<div>
						<label for="admin-registration-form-field-required">Required?</label>
						<input type="radio" name="admin-registration-form-field-required" value="yes" <?php if ($r->required === 'yes'){echo "checked";} ?>>Yes
						<input type="radio" name="admin-registration-form-field-required" value="no" <?php if ($r->required === 'no'){echo "checked";} ?>>No
					</div>

					<hr style="width: 100%; border-color: transparent;">
					
					<div>
						<button type="submit" class="button button-primary">Update</button>
					</div>
				</form>
				<form action="<?php echo get_the_permalink(); ?>" method="post">
					<input type="hidden" name="admin-registration-form-delete" value="Yes">
					<input type="hidden" name="admin-registration-form-delete-id" value="<?php echo $r->id; ?>">
					<div>
						<button type="submit" class="button button-primary">Delete</button>
					</div> 
				</form>
			</div>
		<?php }
		?>

	</div>
<?php }


//Create the registrations form page to view double delegation fields
function function_create_double_delegation_registrations_form_page(){

}


//Create the Registrations form page to add a new field
function function_create_single_delegation_registrations_form_page_add(){ ?>
	<div class="wrap">
		<h1 class="wp-heading-inline">Add Fields</h1>
		<?php 
		if (isset($_POST['admin-registration-form-submit'])){
		?>
			<div id="message" class="updated notice is-dismissible">
				<p>1 Field Added.</p>
				<button type="button" class="notice-dismiss"><span class="screen-reader-text">Dismiss this notice.</span></button>
			</div>
		<?php } ?>
		<hr class="wp-header-end">
		<br/>

		<form action="<?php echo get_the_permalink(); ?>" method="post" class="admin-registration-form">

			<input type="hidden" name="admin-registration-form-submit" value="Yes">

			<div class="admin-registration-form-select-type">
				<label for="admin-registration-form-field-type">Type:</label><br/>
				<select id="admin-registration-form-field-type" name="admin-registration-form-field-type">
					<option>Checkbox</option>
					<option>Email</option>
					<option>Number</option>
					<option>Password</option>
					<option>Radio</option>
					<option>Select</option>
					<option>Text</option>
					<option>Textarea</option>
				</select>
				<br/><br/>

				<div class="admin-registration-form-select-other-details-checkbox-radio-select">
					<label for="admin-registration-form-field-select-options">Enter the options separated by a comma:</label><br/>
					<input type="text" name="admin-registration-form-field-select-options" id="admin-registration-form-field-select-options"><br/><br/>
				</div>

				<div class="admin-registration-form-select-other-details-text" style="display: none">
					<label for="admin-registration-form-field-placeholder">Placeholder:</label><br/>
					<input type="text" name="admin-registration-form-field-placeholder" id="admin-registration-form-field-placeholder"><br/><br/>
				</div>

				<div class="admin-registration-form-select-other-details-textarea" style="display: none">
					<label for="admin-registration-form-field-number-of-rows">Number of rows:</label><br/>
					<input type="number" name="admin-registration-form-field-number-of-rows" id="admin-registration-form-field-number-of-rows" ><br/><br/>
				</div>
			</div>

			<div class="admin-registration-form-select-other-details-default">
				<label for="admin-registration-form-field-name">Name:</label><br/>
				<input type="text" name="admin-registration-form-field-name" id="admin-registration-form-field-name" required><br/><br/>
				<label for="admin-registration-form-field-label">Label:</label><br/>
				<input type="text" name="admin-registration-form-field-label" id="admin-registration-form-field-label" required><br/><br/>
				<label for="admin-registration-form-field-required">Required Field?</label><br/>
				<input type="radio" name="admin-registration-form-field-required" value="yes" checked="checked"/>Yes<br/>
				<input type="radio" name="admin-registration-form-field-required" value="no"/>No<br/><br/>
			</div>

			<button class="button button-primary admin-registration-form-submit" type="submit">Submit</button>
		</form>
	</div>
<?php }



//Create the registrations form page to add new double delegation fields
function function_create_double_delegation_registrations_form_page_add(){
	
}


//Create the registrations form page to reorder double delegation fields
function function_create_single_delegation_registrations_form_page_reorder(){
	global $wpdb;

	$results = $wpdb->get_results( "SELECT * FROM registration_form_single" ); ?>

	<div id="registrations-form-sort" class="sort">
		<div id="icon-job-admin" class="icon32"><br/></div>
		<h2>Reorder The Fields
		<img src = "<?php echo esc_url(admin_url() .'/images/loading.gif'); ?>"  alt="loading.gif" id="loading-animation" ></h2>

		<ul id="custom-type-list">
			<?php 
			foreach($results as $r){
			?>
			<li id="<?php echo $r->id; ?>">
				<?php echo $r->name; ?>
			</li>
		<?php } ?>
		</ul>
		
	</div>

<?php
}


//Create the registrations page to reorder the double delegations fields
function function_create_double_delegation_registrations_form_page_reorder(){
	
}




function dwwp_save_reorder(){

	$order = $_POST['order'];
	global $wpdb;
	$count = $wpdb->get_var("SELECT id FROM registration_form_single ORDER BY id DESC LIMIT 1");
	
	foreach( $order as $item_id ){
		
		$wpdb->update(
			'registration_form_single',
			array(
				'id' => $count
			),
			array(
				'id' => $item_id
			),
			array(
				'%d'
			),
			array(
				'%d'
			)
		);

		$count++;
	}
	wp_send_json_success('Post Saved.');

}
add_action('wp_ajax_save_post', 'dwwp_save_reorder');

