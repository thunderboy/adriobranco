<?php get_header('shop'); ?>
<?php do_action('woocommerce_sidebar'); ?>
<?php do_action('woocommerce_before_main_content'); // <div id="container"><div id="content" role="main"> ?>
		
	<?php $term = get_term_by( 'slug', get_query_var($wp_query->query_vars['taxonomy']), $wp_query->query_vars['taxonomy']); ?>
	<div id="blurb" class="product_top">
		<?php woo_pagenav(); ?>
		<?php if ( !function_exists('dynamic_sidebar')
        || !dynamic_sidebar('Attribute filtering') ) : ?>
		
		<?php endif; ?>
		<div class="clear">&nbsp;</div>
	</div>	
	<!--<h1 class="page-title"><?php echo wptexturize($term->name); ?></h1>-->
		
	<?php echo wpautop(wptexturize($term->description)); ?>
	
	<?php woocommerce_get_template_part( 'loop', 'shop' ); ?>
	
	<!--<?php do_action('woocommerce_pagination'); ?>-->
	
	<div class="clear">&nbsp;</div>

<?php do_action('woocommerce_after_main_content'); // </div></div> ?>



<?php get_footer('shop'); ?>