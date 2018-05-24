<?php
/*Template Name: About Us Page */
get_header();
?>


<section id="about-first">
	<div class="about-back">
		<img src="<?php echo wp_get_attachment_url(280); ?>">
		<div class="layer">
			<h1>About Us</h1>
		</div>
	</div>
</section>

<section id="about-second">
	
	<?php 
	$args = array('posts_per_page' => 1, 'cat' => get_cat_ID('About Previous Editions'));
	$loop = new Wp_Query($args);

	if ($loop->have_posts()):
		while ($loop->have_posts()): $loop->the_post(); ?>

		<span class="first">Previous</span>
		<span class="second">Editions</span>
		<hr>
		<span class="third"><?php echo get_the_content(); ?></span>

		<?php endwhile;
	endif;
	?>

</section>

<section id="about-third">
	<center>
		<div class="col-xs-12 col-sm-6">
			<h2>About <b>KIIT</b></h2>
			<hr>
			<img src="<?php echo wp_get_attachment_url(321); ?>">
			<?php 
			$args = array('posts_per_page' => 1, 'cat' => get_cat_ID("About KIIT"));
			$loop = new Wp_Query($args);

			if ($loop -> have_posts()):
				while ($loop->have_posts()): $loop->the_post(); ?>
					<p><?php echo get_the_content(); ?></p>
				<?php endwhile;
			endif;
			?>
			
		</div>
		<div class="col-xs-12 col-sm-6">
			<h2>About <b>KISS</b></h2>
			<hr>
			<img src="<?php echo wp_get_attachment_url(322); ?>">
			<?php 
			$args = array('posts_per_page' => 1, 'cat' => get_cat_ID("About KIIT"));
			$loop = new Wp_Query($args);

			if ($loop -> have_posts()):
				while ($loop->have_posts()): $loop->the_post(); ?>
					<p><?php echo get_the_content(); ?></p>
				<?php endwhile;
			endif;
			?>

		</div>
	</center>
</section>

<section id="about-fourth">
	<h1>About <br/><b>Incredible India</b></h1>
	<hr>
	<?php 
	$args = array('posts_per_page' => 1, 'cat' => get_cat_ID("About Incredible India"));
	$loop = new Wp_Query($args);

	if ($loop -> have_posts()):
		while ($loop->have_posts()): $loop->the_post(); ?>
			<span><?php echo get_the_content(); ?></span>
		<?php endwhile;
	endif;
	?>
</section>

<section id="about-fifth">
	<h1>About<br/>KIITMUN <b>Society</b></h1>
	<hr>
	<?php 
	$args = array('posts_per_page' => 1, 'cat' => get_cat_ID("About KIITMUN Society"));
	$loop = new Wp_Query($args);

	if ($loop -> have_posts()):
		while ($loop->have_posts()): $loop->the_post(); ?>
			<span><?php echo get_the_content(); ?></span>
		<?php endwhile;
	endif;
	?>
</section>


<?php get_footer(); ?>