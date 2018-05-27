<?php
/*Template Name: Committees Page */
get_header();
?>

<section id="committees-first">
	<div class="committees-back">
		<img src="<?php echo wp_get_attachment_url(340); ?>">
		<div class="layer">
			<h1>Committees</h1>
		</div>
	</div>
</section>

<section id="committees-second">
	<?php 
	$args = array('posts_per_page' => -1, 'post_type' => 'committee', 'order' => 'DESC');
	$loop = new Wp_Query($args);

	if ($loop->have_posts()):
		while($loop->have_posts()): $loop->the_post(); ?>

		<div class="row">
			<h1><?php echo get_the_title(); ?></h1>
			<hr>
			<hr>

			<p><?php the_content(); ?></p>
			<br/>
		</div>
	
		<?php 
		endwhile;
	endif;
	?>
</section>

<?php get_footer(); ?>