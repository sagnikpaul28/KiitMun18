<?php
/*Template Name: Campus Ambassador Page */
get_header();
$chk = 0;
if (isset($_POST['form-name']) && isset($_POST['form-email']) && isset($_POST['form-phone']) && isset($_POST['form-college']) && isset($_POST['form-stream']) && isset($_POST['form-experience']) && isset($_POST['form-knowledge'])){
	$name = strtoupper(esc_sql(strip_tags($_POST['form-name'])));
	$email = esc_sql(strip_tags($_POST['form-email']));
	$phone = esc_sql(strip_tags($_POST['form-phone']));
	$college = esc_sql(strip_tags($_POST['form-college']));
	$stream = esc_sql(strip_tags($_POST['form-stream']));
	$experience = esc_sql(strip_tags($_POST['form-experience']));
	$knowledge = esc_sql(strip_tags($_POST['form-knowledge']));
	$subject = "Campus Ambassador Request";
	$header = "From: ".$name." <".$email.">";
$message = $name . " of " . $college . " of " . $stream . " , EXPERIENCE at other OC : " . $experience . " , KNOWLEDGE about MUN : " . $knowledge . " .His contact details are : " . $phone ." and " . $phone;
	$message = $message.' -Website Campus Ambassador';
$chk = 0;

	if (mail('prakashdas1998.pd@gmail.com', $subject, $message, $header)){
		$chk = 1;
	}
	else{
		$chk = 0;
	}
}
?>



<section id="contact-first">
	<div class="contact-back">
		<img src="<?php echo wp_get_attachment_url(278); ?>">
		<div class="layer">
			<h1>Campus Ambassador</h1>
		</div>
	</div>
</section>

<section id="contact-second">
	<div class="row">
	<?php
if($chk==0){
	?>
<div class="col-xs-10 col-sm-6 col-md-6 col-md-offset-1 col-xs-offset-1">
	<h1>Campus <b>Ambassador</b></h1>
	<hr>
	<form method="post">
		<label for="form-name">Your Name:</label>
		<input type="text" name="form-name" class="form-control" id="form-name" required="">
		<br>
		<div class="col-xs-6" style="padding: 0; padding-right: 1vmin;">
			<label for="form-email">Your Email:</label>
			<input type="email" name="form-email" class="form-control" id="form-email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="">
			<br>
		</div>
		<div class="col-xs-6" style="padding: 0; padding-left: 1vmin;">
			<label for="form-subject">Phone No.:</label>
			<input type="number" name="form-phone" class="form-control" id="form-subject" pattern="[0-9]{10}" required="">
			<br>
		</div>
		<div class="col-xs-6" style="padding: 0; padding-right: 1vmin;">
			<label for="form-college">College/School:</label>
			<input type="text" name="form-college" class="form-control" id="form-college" required="">
			<br>
		</div>
		<div class="col-xs-6" style="padding: 0; padding-left: 1vmin;">
			<label for="form-stream">Stream/Standard:</label>
			<input type="text" name="form-stream" class="form-control" id="form-stream" required="">
			<br>
		</div>
		<label for="form-experience">Past experience of working in an Organizing Committee:</label>
		<textarea rows="3" name="form-experience" class="form-control" id="form-experience" required=""></textarea>
		<br>
		<label for="form-knowledge">What do you know about MUN's?</label>
		<textarea rows="5" name="form-knowledge" class="form-control" id="form-knowledge" required=""></textarea>
		<br>
		<input type="hidden" name="contact-submit" value="yes">
		<button class="btn" type="submit">Submit</button>
		<br><br>
	</form>
</div>
<?php
}
else{
echo "<div class = \"col-xs-10 col-sm-6 col-md-6 col-md-offset-1 col-xs-offset-1\">";
echo "<h3 style=\"text-align:center; margin-top:30px;\">Thank you for applying. We will get back to you soon.</h3>";
echo "</div>";
}
?>
<div class="col-xs-12 col-sm-6 col-md-5">
<h1>Your <b>Incentives</b></h1>
<hr>
<div>
<ul>
	<li>First one</le>
	<li>First one</le>
	<li>First one</le>
</ul>
</div>
</div>
</div>
</section>
<br><br>

<section id="beta-fifth">
	<h1>FOR <b>QUERIES</b></h1>
	<hr>
	<span>If you have any doubts, feel free to contact :</span>
	<div class="row">
		<div class="col-xs-12 col-sm-6">
			<h4>Baibhav Sharan</h4>
			<h3>Secretary General</h3>
			<img src="<?php echo wp_get_attachment_url(272); ?>"><a href="tel:+919078802533"><span>+919078802533</span></a>
			<hr>
		</div>
		<div class="col-xs-12 col-sm-6">
			<h4>Achintya Tushar Jha</h4>
			<h3>Deputy Secretary General</h3>
			<img src="<?php echo wp_get_attachment_url(272); ?>"><a href="tel:+917683979698"><span>+917683979698</span></a>
			<hr>
		</div>
	</div>
	
</section>
<br>
<br>

<section>
	<div class="row">
		<div class="col-md-5 col-lg-5">
<div class="fb-page" data-href="https://www.facebook.com/kiitmun/" data-tabs="timeline"  data-width="900" data-height="600" ></div>	
</div>
<div class="col-md-7 col-lg-7">
<?php echo do_shortcode("[instagram-feed ]"); ?>
</div>
</div>
<section>
<?php get_footer(); ?>