<?php
/*Template Name: Downloads Page */
get_header();
?>

<section id="gallery-first">
	<div class="gallery-back">
		<img src="<?php echo wp_get_attachment_url(354); ?>">
		<div class="layer">
			<h1>Study Guides</h1>
		</div>
	</div>
</section>
<?php 
	$args = array('posts_per_page' => 1, 'cat' => get_cat_ID('Study Guides'));
	$loop = new Wp_Query($args);

	if ($loop->have_posts()):
		while ($loop->have_posts()): $loop->the_post(); ?>
	<?php echo get_the_content(); ?>

		<?php endwhile;
	endif;
	?>



<?php get_footer(); ?>