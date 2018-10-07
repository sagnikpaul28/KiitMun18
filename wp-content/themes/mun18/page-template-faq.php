<?php
/*Template Name: Faq Page */
get_header();


?>

<section id="contact-first">
	<div class="contact-back">
		<img src="<?php echo wp_get_attachment_url(331); ?>">
		<div class="layer">
			<h1>FAQ</h1>
		</div>
	</div>
</section>
<br>
<section>
<?php 
if (have_posts()):
	while (have_posts()): the_post();
		the_content();
	endwhile;
endif;
?>
</section>
<?php get_footer(); ?>