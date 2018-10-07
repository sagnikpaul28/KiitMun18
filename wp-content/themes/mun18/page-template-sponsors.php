<?php
/*Template Name: Sponsors Page */
get_header();
ignore_user_abort(true);
set_time_limit(0); // disable the time limit for this script
 
$path = "./"; // change the path to fit your websites document structure
 
$dl_file = preg_replace("([^\w\s\d\-_~,;:\[\]\(\).]|[\.]{2,})", '', $_GET['download_file']); // simple file name validation
$dl_file = filter_var($dl_file, FILTER_SANITIZE_URL); // Remove (more) invalid characters
$fullPath = $path.$dl_file;
 
if ($fd = fopen ($fullPath, "r")) {
    $fsize = filesize($fullPath);
    $path_parts = pathinfo($fullPath);
    $ext = strtolower($path_parts["extension"]);
    switch ($ext) {
        case "pdf":
        header("Content-type: application/pdf");
        header("Content-Disposition: attachment; filename=\"".$path_parts["basename"]."\""); // use 'attachment' to force a file download
        break;
        // add more headers for other content types here
        default;
        header("Content-type: application/octet-stream");
        header("Content-Disposition: filename=\"".$path_parts["basename"]."\"");
        break;
    }
    header("Content-length: $fsize");
    header("Cache-control: private"); //use this to open files directly
    while(!feof($fd)) {
        $buffer = fread($fd, 2048);
        echo $buffer;
    }
}
fclose ($fd);
?>
<a href="https://kiitmun.org/sponsors?download_file=members.pdf">PHP download file</a>
<section id="about-first">
	<div class="about-back">
		<img src="https://kiitmun.org/wp-content/uploads/2018/05/FB_IMG_1527261218906.jpg">
		<div class="layer">
			<h1>Partners</h1>
		</div>
	</div>
</section>
<div style="margin-left:10px; margin-right:20px; text-align: center; @media screen and (max-width: 768px){top: 0;margin-top: 25%;height: 50%;font-size: 28px;}; line-height: 200px;">
<?php 
if (have_posts()):
	while (have_posts()): the_post();
		the_content();
	endwhile;
endif;
?>
</div>
<?php get_footer(); ?>
