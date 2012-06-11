<?php get_header(); ?>
<?php global $woo_options; ?>

    <div id="content">
		
        <?php if ( function_exists('show_nivo_slider') ) { show_nivo_slider(); } ?><?php if (function_exists('nivoslider4wp_show')) { nivoslider4wp_show(); } ?>
		<?php if( $woo_options[ 'woo_footer_right' ] == 'true' ) {

			?><p class="floatright"><?php	echo stripslashes( $woo_options['woo_footer_right_text'] ); ?></p><?php

		} else { ?>
			
		<?php } ?>
		<?php if ( $woo_options[ 'woo_homepage_content' ] == "yes" ) { ?>
			
			<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>
			
				
				
			<?php endwhile; ?>
			
        <?php } else { ?>
        	
        <?php } ?>
		
				
				
		
						                
		



    </div><!-- /#content -->
		
<?php get_footer(); ?>