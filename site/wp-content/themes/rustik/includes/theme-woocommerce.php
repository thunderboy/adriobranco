<?php
/*-----------------------------------------------------------------------------------*/
/* Any WooCommerce overrides and functions can be found here
/*-----------------------------------------------------------------------------------*/

// Check WooCommerce is installed first
add_action('wp_head', 'woostore_check_environment');

function woostore_check_environment() {
	if (!class_exists('woocommerce')) wp_die(__('WooCommerce must be installed', 'woothemes')); 
}



// Adjust markup on all WooCommerce pages
remove_action( 'woocommerce_before_main_content', 'woocommerce_output_content_wrapper', 10);
remove_action( 'woocommerce_after_main_content', 'woocommerce_output_content_wrapper_end', 10);

add_action('woocommerce_before_main_content', 'woostore_before_content', 10);
add_action('woocommerce_after_main_content', 'woostore_after_content', 20);


// Fix the layout etc
function woostore_before_content() {
	?>
	<!-- #content Starts -->
	<?php woo_content_before(); ?>
    <div id="content" class="col-full products">
    
        <!-- #main Starts -->
        <?php woo_main_before(); ?>
        <div id="main" class="right_products">
    <?php
}
function woostore_after_content() {
	?>
		<?php woo_pagenav(); ?>
		</div><!-- /#main -->
        <?php woo_main_after(); ?>

        <?php get_sidebar(); ?>
    
    </div><!-- /#content -->
	<?php woo_content_after(); ?>
    <?php
}

// Remove breadcrumb (we're using the WooFramework default breadcrumb)
remove_action( 'woocommerce_before_main_content', 'woocommerce_breadcrumb', 20, 0);
add_action( 'woocommerce_before_main_content', 'woostore_breadcrumb', 20, 0);

function woostore_breadcrumb() {
	global  $woo_options;
	if ( $woo_options[ 'woo_breadcrumbs_show' ] == 'true' ) {
		woo_breadcrumbs();
	}
}

// Remove pagination (we're using the WooFramework default pagination)
remove_action( 'woocommerce_pagination', 'woocommerce_pagination', 10 );

// Adjust the star rating in the sidebar
add_filter('woocommerce_star_rating_size_sidebar', 'woostore_star_sidebar');

function woostore_star_sidebar() {
	return 12;
}

// Adjust the star rating in the recent reviews
add_filter('woocommerce_star_rating_size_recent_reviews', 'woostore_star_reviews');

function woostore_star_reviews() {
	return 12;
}

// Change columns in product loop to 2
add_filter('loop_shop_columns', 'woostore_loop_columns');

function woostore_loop_columns() {
	return 3;
}

// Move the price below the excerpt on the single product page
remove_action( 'woocommerce_template_single_summary', 'woocommerce_template_single_price', 10, 2);
add_action( 'woocommerce_template_single_summary', 'woocommerce_template_single_price', 25, 2);

// Handle cart in header fragment for ajax add to cart
add_filter('add_to_cart_fragments', 'woostore_header_add_to_cart_fragment');

function woostore_header_add_to_cart_fragment( $fragments ) {
	global $woocommerce;
	
	$fragments['#btn-cart'] = '
	<div id="btn-cart" class="fr">
    	<a href="'.$woocommerce->cart->get_cart_url().'" title="'.__('View your shopping cart', 'woothemes').'">
			<span>'.sprintf(_n('%d item &ndash; ', '%d items &ndash; ', $woocommerce->cart->cart_contents_count, 'woothemes'), $woocommerce->cart->cart_contents_count) . $woocommerce->cart->get_cart_total() . '</span>
		</a>
    </div>
	';
	
	return $fragments;
	
}
