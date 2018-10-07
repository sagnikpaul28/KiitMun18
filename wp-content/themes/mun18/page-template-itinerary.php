<?php
/*Template Name: Itinerary Page */
get_header();
?>

<section id="gallery-first">
	<div class="gallery-back">
		<img src="<?php echo wp_get_attachment_url(354); ?>">
		<div class="layer">
			<h1>Itinerary</h1>
		</div>
	</div>
</section>
<br>
<section id="about-fourth">
	<h1>Itinerary<br>for <br><b>KIIT MUN 2018</b></h1>
	<hr>
    <br><br>
<?php 
if (have_posts()):
	while (have_posts()): the_post();
		the_content();
	endwhile;
endif;
?>
<br><br><br>
</section>
<?php get_footer(); ?>