<?php 
/*
Template Name: Registrations Page 
*/

get_header();

if ($_SERVER['REQUEST_METHOD'] === 'POST'){
	global $wpdb;
	$id = $wpdb->get_var('SELECT regid FROM userlist ORDER BY id DESC LIMIT 1');

	$id = $id + 1;

	foreach ($_POST as $key=>$value){
		if (is_array($value)){
			foreach ($value as $value){
				$wpdb->query( $wpdb->prepare(
					"INSERT INTO userlist (regid, meta_name, meta_value) VALUES ( %d , %s , %s ) ", array( $id, esc_sql(strip_tags($key)), esc_sql(strip_tags($value)) )
				) );
			}
		}else{
			$wpdb->query( $wpdb->prepare(
				"INSERT INTO userlist (regid, meta_name, meta_value) VALUES ( %d , %s , %s ) ", array( $id, esc_sql(strip_tags($key)), esc_sql(strip_tags($value)) )
			) );
		}
		
	}
}

?>

<section id="registrations-first">
	<div class="registrations-back">
		<img src="<?php echo wp_get_attachment_url(279); ?>">
		<div class="layer">
			<h1>Registrations</h1>
		</div>
	</div>
</section>

<section id="registrations-second">
	<center>
		<button id="single-delegation">Single Delegation</button>
		<button id="double-delegation">Double Delegation</button>
		<button id="international-press">International Press</button>
	</center>
</section>

<section id="registrations-third">
	<div class="container single-delegation" style="display: none;">

		<form action="<?php echo get_the_permalink(); ?>" method="post" id="form-single-delegation">	
			<input type="hidden" name="delegation" value="single-delegation">

			<div class="col-xs-12 col-sm-6 col-sm-offset-3">

				<?php 
				global $wpdb;
				$rows = $wpdb->get_results("SELECT * FROM registration_form WHERE delegation='single'");

				foreach ($rows as $r) { ?>
					<label for="<?php echo $r->name; ?>"><?php echo $r->label; ?></label><br/>
					<?php if ($r->type === 'Text' || $r->type === 'Password' || $r->type === 'Number' || $r->type === 'Email'){ ?>
					<input type="<?php echo $r->type; ?>" name="<?php echo $r->name; ?>" placeholder="<?php echo $r->placeholder; ?>" <?php if ($r->required==='yes'){echo "required"; } ?> class="form-control" id="<?php echo $r->name; ?>">
					<?php }else if ($r->type === 'Checkbox' || $r->type === 'Radio'){
						$options = $r->options;
						$options = explode(',', $options);
						foreach ($options as $opt) { ?>
							<input type="<?php echo $r->type; ?>" name="<?php echo $r->name; ?>[]" value="<?php echo $opt; ?>" <?php if ($r->required === 'yes'){ echo 'required'; } ?> class="form-control"><?php echo $opt; ?><br/>
							<?php }
					}else if ($r->type === 'Select'){ ?>
					<select name="<?php echo $r->name; ?>" id="<?php echo $r->name; ?>" <?php if ($r->required === 'true'){echo "required"; } ?>>
						<?php 
						$options = $r->options;
						$options = explode(",", $options);
						foreach ($options as $options){ ?>
						<option value="<?php echo $options; ?>"><?php echo $options; ?></option>
						<?php }
						?>
					</select>
					<?php }else if ($r->type === 'Textarea'){ ?>
					<textarea name="<?php echo $r->name; ?>" rows="<?php echo $r->numberofrows; ?>" id="<?php echo $r->name; ?>" placeholder="<?php echo $r->placeholder; ?>" <?php if ($r->required === 'yes'){echo "required"; } ?> class="form-control"></textarea>
					<?php } 
					
				} ?>

				<button type="submit" class="btn btn-block">Submit</button>

			</div>

		</form>

	</div>

	<div class="container double-delegation">

		<form action="<?php echo get_the_permalink(); ?>" method="post" id="form-single-delegation">
			<input type="hidden" name="delegation" value="double-delegation">
			<?php 
			global $wpdb;
			$rows = $wpdb->get_results("SELECT * FROM registration_form WHERE delegation LIKE 'double%'");

			foreach ($rows as $r) {

				if ($r->delegation === 'double-double'){ ?>
					<div class="col-xs-12 col-sm-6">

						<label for="<?php echo $r->name; ?>"><?php echo $r->label; ?> (1st Delegate)</label><br/>
						<?php if ($r->type === 'Text' || $r->type === 'Password' || $r->type === 'Number' || $r->type === 'Email'){ ?>
						<input type="<?php echo $r->type; ?>" name="<?php echo $r->name; ?>-1" placeholder="<?php echo $r->placeholder; ?>" <?php if ($r->required==='yes'){echo "required"; } ?> class="form-control" id="<?php echo $r->name; ?>">
						<?php }else if ($r->type === 'Checkbox' || $r->type === 'Radio'){
							$options = $r->options;
							$options = explode(',', $options);
							foreach ($options as $opt) { ?>
								<input type="<?php echo $r->type; ?>" name="<?php echo $r->name; ?>-1[]" value="<?php echo $opt; ?>" <?php if ($r->required === 'yes'){ echo 'required'; } ?> class="form-control"><?php echo $opt; ?><br/>
								<?php }
						}else if ($r->type === 'Select'){ ?>
						<select name="<?php echo $r->name; ?>-1" id="<?php echo $r->name; ?>" <?php if ($r->required === 'true'){echo "required"; } ?>>
							<?php 
							$options = $r->options;
							$options = explode(",", $options);
							foreach ($options as $options){ ?>
							<option value="<?php echo $options; ?>"><?php echo $options; ?></option>
							<?php }
							?>
						</select>
						<?php }else if ($r->type === 'Textarea'){ ?>
						<textarea name="<?php echo $r->name; ?>-1" rows="<?php echo $r->numberofrows; ?>" id="<?php echo $r->name; ?>" placeholder="<?php echo $r->placeholder; ?>" <?php if ($r->required === 'yes'){echo "required"; } ?> class="form-control"></textarea>
						<?php } ?>

					</div>
					<div class="col-xs-12 col-sm-6">

						<label for="<?php echo $r->name; ?>"><?php echo $r->label; ?> (2nd Delegate)</label><br/>
						<?php if ($r->type === 'Text' || $r->type === 'Password' || $r->type === 'Number' || $r->type === 'Email'){ ?>
						<input type="<?php echo $r->type; ?>" name="<?php echo $r->name; ?>-2" placeholder="<?php echo $r->placeholder; ?>" <?php if ($r->required==='yes'){echo "required"; } ?> class="form-control" id="<?php echo $r->name; ?>">
						<?php }else if ($r->type === 'Checkbox' || $r->type === 'Radio'){
							$options = $r->options;
							$options = explode(',', $options);
							foreach ($options as $opt) { ?>
								<input type="<?php echo $r->type; ?>" name="<?php echo $r->name; ?>-2[]" value="<?php echo $opt; ?>" <?php if ($r->required === 'yes'){ echo 'required'; } ?> class="form-control"><?php echo $opt; ?><br/>
								<?php }
						}else if ($r->type === 'Select'){ ?>
						<select name="<?php echo $r->name; ?>-2" id="<?php echo $r->name; ?>" <?php if ($r->required === 'true'){echo "required"; } ?>>
							<?php 
							$options = $r->options;
							$options = explode(",", $options);
							foreach ($options as $options){ ?>
							<option value="<?php echo $options; ?>"><?php echo $options; ?></option>
							<?php }
							?>
						</select>
						<?php }else if ($r->type === 'Textarea'){ ?>
						<textarea name="<?php echo $r->name; ?>-2" rows="<?php echo $r->numberofrows; ?>" id="<?php echo $r->name; ?>" placeholder="<?php echo $r->placeholder; ?>" <?php if ($r->required === 'yes'){echo "required"; } ?> class="form-control"></textarea>
						<?php } ?>

					</div> 

				<?php }else{ ?>

					<div class="col-xs-12 col-sm-6 col-sm-offset-3">

						<label for="<?php echo $r->name; ?>"><?php echo $r->label; ?></label><br/>
						<?php if ($r->type === 'Text' || $r->type === 'Password' || $r->type === 'Number' || $r->type === 'Email'){ ?>
						<input type="<?php echo $r->type; ?>" name="<?php echo $r->name; ?>" placeholder="<?php echo $r->placeholder; ?>" <?php if ($r->required==='yes'){echo "required"; } ?> class="form-control" id="<?php echo $r->name; ?>">
						<?php }else if ($r->type === 'Checkbox' || $r->type === 'Radio'){
							$options = $r->options;
							$options = explode(',', $options);
							foreach ($options as $opt) { ?>
								<input type="<?php echo $r->type; ?>" name="<?php echo $r->name; ?>[]" value="<?php echo $opt; ?>" <?php if ($r->required === 'yes'){ echo 'required'; } ?> class="form-control"><?php echo $opt; ?><br/>
								<?php }
						}else if ($r->type === 'Select'){ ?>
						<select name="<?php echo $r->name; ?>" id="<?php echo $r->name; ?>" <?php if ($r->required === 'true'){echo "required"; } ?>>
							<?php 
							$options = $r->options;
							$options = explode(",", $options);
							foreach ($options as $options){ ?>
							<option value="<?php echo $options; ?>"><?php echo $options; ?></option>
							<?php }
							?>
						</select>
						<?php }else if ($r->type === 'Textarea'){ ?>
						<textarea name="<?php echo $r->name; ?>" rows="<?php echo $r->numberofrows; ?>" id="<?php echo $r->name; ?>" placeholder="<?php echo $r->placeholder; ?>" <?php if ($r->required === 'yes'){echo "required"; } ?> class="form-control"></textarea>
						<?php }  ?>

					</div>

				<?php }				
				
			} ?>

			<button type="submit" class="btn btn-block">Submit</button>

		</form>

	</div>
</section>

<?php 
get_footer();
?>