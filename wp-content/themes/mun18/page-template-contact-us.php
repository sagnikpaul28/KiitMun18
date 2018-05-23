<?php
/*Template Name: Contact Us Page */
get_header();

if (isset($_POST['form-name']) && isset($_POST['form-email']) && isset($_POST['form-subject']) && isset($_POST['form-message'])){
	$name = esc_sql(strip_tags($_POST['form-name']));
	$email = esc_sql(strip_tags($_POST['form-email']));
	$subject = esc_sql(strip_tags($_POST['form-subject']));
	$message = esc_sql(strip_tags($_POST['form-message']));
	$header = "From: ".$name." <".$email.">";

	$message = $message.'-Website Contact Us';

	if (mail('prkiitmun@gmail.com', $subject, $message, $header)){
		echo "<script>";
		echo "alert('Mail sent');";
		echo "</script>";
	}
	else{
		echo "<script>";
		echo "alert('Mail not sent');";
		echo "</script>";
	}
}

?>


<section id="contact-first">
	<div class="contact-back">
		<img src="<?php echo wp_get_attachment_url(278); ?>">
		<div class="layer">
			<h1>Contact Us</h1>
		</div>
	</div>
</section>

<section id="contact-second">
	<h1>Connect To <b>Us</b></h1>
	<hr>
	<div class="col-xs-10 col-sm-6 col-xs-offset-1 col-sm-offset-3">
	<form method="post">
		<label for="form-name">Your Name:</label>
		<input type="text" name="form-name" class="form-control" id="form-name" required="">
		<br>
		<div class="col-xs-6" style="padding: 0; padding-right: 1vmin;">
			<label for="form-email">Your Email:</label>
			<input type="email" name="form-email" class="form-control" id="form-email" required="">
			<br>
		</div>
		<div class="col-xs-6" style="padding: 0; padding-left: 1vmin;">
			<label for="form-subject">Subject:</label>
			<input type="text" name="form-subject" class="form-control" id="form-subject" required="">
			<br>
		</div>
		<label for="form-message">Your Message</label>
		<textarea rows="5" name="form-message" class="form-control" id="form-message" required=""></textarea>
		<br>
		<input type="hidden" name="contact-submit" value="yes">
		<button class="btn" type="submit">Submit</button>
	</form>
</section>

<section id="contact-third">
	<h1>In Other <b>Media</b></h1>
	<hr>
	<span>We Are Gearing Up For The Much Awaited Model United Nations<br/>Just Like You Are.</span>
	<div class="row">
		<div class="col-xs-12 col-xs-offset-0 col-sm-6 col-sm-offset-3">
			<center>
				<div>
					<a href="https://www.facebook.com/kiitmun/" target="_blank"><img src = "<?php echo wp_get_attachment_url(269); ?>"></a>
				</div>
				<div>
					<a href="https://www.instagram.com/instakiitmun/" target="_blank"><img src = "<?php echo wp_get_attachment_url(270); ?>"></a>
				</div>
				<div>
					<a href="https://twitter.com/kiitmun" target="_blank"><img src = "<?php echo wp_get_attachment_url(271) ?>"></a>
				</div>
			</center>
		</div>
	</div>
</section>

<section id="contact-fourth">
	<h1>Meet Us <b>Here</b></h1>
	<hr>
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3740.690726633949!2d85.81246791429672!3d20.354391315834036!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a19091813dab8d5%3A0xa033051ccddbbcbc!2sKiit+University!5e0!3m2!1sen!2sin!4v1525261017509" frameborder="0" style="border:0" allowfullscreen></iframe>
</section>

<?php get_footer(); ?>