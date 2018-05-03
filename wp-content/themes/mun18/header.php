<!DOCTYPE html>
<html <?php language_attributes(); ?> >
    <head>
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
        <meta charset="<?php bloginfo('charset');  ?>">
        <title>  <?php bloginfo('name') ?> <?php wp_title('  |  '); ?> </title>
        <meta name='description' content="<?php bloginfo('description'); ?>">
        <?php wp_head(); ?>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Poppins:500,700,900" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar">
                <a class="navbar-brand navbar-left" href="<?php echo get_home_url(); ?>">
                    <img src="<?php echo wp_get_attachment_url( 1 ); ?>" class="img-responsive">
                </a>
                <div class="navbar-header">
                    <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div id="navbar" class="collapse navbar-collapse navbar-right" style="padding: 15px;">
                    
                    <?php wp_nav_menu(array('theme_location' => 'primary', 'container' => 'false', 'menu_class' => 'nav navbar-nav navbar-right', 'walker' => new Walker_Nav_Primary)); ?>
                    
                </div>
                
                

        </nav>