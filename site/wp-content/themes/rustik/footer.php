<?php global $woo_options; ?>
    
  </div><!--/#container-->
<div class="bottom">
	<div id="footer" class="footer">
		
		<?php if ( function_exists( 'has_nav_menu') && has_nav_menu( 'top-menu' ) ) { ?>
		<div class="bootom_nav">
				<?php wp_nav_menu( array( 'depth' => 6, 'sort_column' => 'menu_order', 'container' => 'ul', 'menu_id' => 'top-nav', 'menu_class' => 'nav fl', 'theme_location' => 'top-menu' ) ); ?>			
		</div>
		<?php } ?>
		<div id="copyright" class="copyright">
		<?php if( $woo_options[ 'woo_footer_left' ] == 'true' ) {

				echo stripslashes( $woo_options['woo_footer_left_text'] );

		} else { ?>
			<?php bloginfo(); ?> &copy; <?php echo date( 'Y' ); ?>. <?php _e( 'All Rights Reserved.', 'woothemes' ); ?>
		<?php } ?>
		</div><!--/#copyright-->
		
		<?php
		$total = $woo_options[ 'woo_footer_sidebars' ]; if (!isset($total)) $total = 4;
		if ( ( woo_active_sidebar( 'footer-1') ||
			   woo_active_sidebar( 'footer-2') ||
			   woo_active_sidebar( 'footer-3') ||
			   woo_active_sidebar( 'footer-4') ) && $total > 0 ) :

  	?>
	<div id="footer-widgets" class="col-<?php echo $total; ?> footer-widgets">

		<?php $i = 0; while ( $i < $total ) : $i++; ?>
			<?php if ( woo_active_sidebar( 'footer-'.$i) ) { ?>

		<div class="block footer-widget-<?php echo $i; ?>">
        	<?php woo_sidebar( 'footer-'.$i); ?>
		</div>

	        <?php } ?>
		<?php endwhile; ?>	
		<div class="clear">&nbsp;</div>
	</div><!-- /#footer-widgets  -->
    <?php endif; ?>		
	<div class="clear">&nbsp;</div>
	</div><!-- /#footer  -->
</div>
</div><!-- /#wrapper -->
<?php wp_footer(); ?>
<?php woo_foot(); ?>
</body>
</html>