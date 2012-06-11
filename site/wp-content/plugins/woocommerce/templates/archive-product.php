<?php get_header('shop'); ?>
<?php do_action('woocommerce_sidebar'); ?>
<?php do_action('woocommerce_before_main_content'); // <div id="container"><div id="content" role="main"> ?>

	<?php 
		$shop_page_id = get_option('woocommerce_shop_page_id');
		$shop_page = get_post($shop_page_id);
		$shop_page_title = (get_option('woocommerce_shop_page_title')) ? get_option('woocommerce_shop_page_title') : $shop_page->post_title;
	?>
	<div id="blurb" class="product_top">
		<?php woo_pagenav(); ?>
		<?php if ( !function_exists('dynamic_sidebar')
        || !dynamic_sidebar('Attribute filtering') ) : ?>
		
		<?php endif; ?>
		<div class="clear">&nbsp;</div>
	</div>	
	<?php if (is_search()) : ?>		
		<h1 class="page-title"><?php _e('Search Results:', 'woothemes'); ?> &ldquo;<?php the_search_query(); ?>&rdquo; <?php if (get_query_var('paged')) echo ' &mdash; Page '.get_query_var('paged'); ?></h1>
	<?php else : ?>
		
	<?php endif; ?>
	
	<?php echo apply_filters('the_content', $shop_page->post_content); ?>

	<?php woocommerce_get_template_part( 'loop', 'shop' ); ?>
	
	
	
	<div class="clear">&nbsp;</div>
<?php do_action('woocommerce_after_main_content'); // </div></div> ?>



<?php get_footer('shop'); ?>