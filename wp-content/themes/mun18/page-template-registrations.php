<?php 
/*
Template Name: Registrations Page 
*/

get_header();
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

			<?php 
			global $wpdb;
			$rows = $wpdb->get_results('SELECT * FROM registration_form_single');

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

		</form>

	</div>

	<div class="container double-delegation">

		<form action="<?php echo get_the_permalink(); ?>" method="post" id="form-single-delegation">

			<?php 
			global $wpdb;
			$rows = $wpdb->get_results('SELECT * FROM registration_form_single');

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

		</form>

	</div>
</section>

<?php 
get_footer();
?>