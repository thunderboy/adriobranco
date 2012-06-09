<?php

/*-----------------------------------------------------------------------------------

TABLE OF CONTENTS

- Hook in on activation
- Install

-----------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------------*/
/* Hook in on activation */
/*-----------------------------------------------------------------------------------*/

global $pagenow;
if ( is_admin() && isset( $_GET['activated'] ) && $pagenow == 'themes.php' ) add_action('init', 'woo_install_theme', 1);

/*-----------------------------------------------------------------------------------*/
/* Install */
/*-----------------------------------------------------------------------------------*/

function woo_install_theme() {
	
update_option( 'woocommerce_thumbnail_image_width', '260' );
update_option( 'woocommerce_thumbnail_image_height', '260' );
update_option( 'woocommerce_single_image_width', '480' ); // Single 
update_option( 'woocommerce_single_image_height', '480' ); // Single 
update_option( 'woocommerce_catalog_image_width', '260' ); // Catalog 
update_option( 'woocommerce_catalog_image_height', '260' ); // Catlog 

}