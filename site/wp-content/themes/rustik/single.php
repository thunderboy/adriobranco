<?php get_header(); ?>
<?php global $woo_options; ?>
       
    <div id="content" class="content blog">
	<div class="container"> 
            <div class="right_products">
		           
		<?php if ( $woo_options[ 'woo_breadcrumbs_show' ] == 'true' ) { ?>
			<?php woo_breadcrumbs(); ?> 
		<?php } ?>  

        <?php if (have_posts()) : $count = 0; ?>
        <?php while (have_posts()) : the_post(); $count++; ?>
        
			<div <?php post_class(); ?>>

				<?php echo woo_embed( 'width=580' ); ?>
                <?php if ( $woo_options[ 'woo_thumb_single' ] == "true" && !woo_embed( '')) woo_image( 'width='.$woo_options[ 'woo_single_w' ].'&height='.$woo_options[ 'woo_single_h' ].'&class=thumbnail '.$woo_options[ 'woo_thumb_single_align' ]); ?>
				
				
				<div class="left">
			<h5><?php the_time('d') ?></h5>
			<b><?php the_time('M, y') ?></b>
			<div class="clear"></div>
			</div>
			<div class="right last"><h2 class="title"><a href="<?php the_permalink() ?>" rel="bookmark" title="<?php the_title(); ?>"><?php the_title(); ?></a></h2>
			<?php the_content(); ?>
					<?php wp_link_pages( array( 'before' => '<div class="page-link">' . __( 'Pages:', 'woothemes' ), 'after' => '</div>' ) ); ?>	

			 <?php $comm = $woo_options[ 'woo_comments' ]; if ( ($comm == "post" || $comm == "both") ) : ?>
                <?php comments_template( '', true); ?>
            <?php endif; ?>
			
			</div>
			<div class="clear"></div>	         
             
                                
            </div><!-- .post -->

					        
            
           
                                                
		<?php endwhile; else: ?>
			<div <?php post_class(); ?>>
            	<p><?php _e( 'Sorry, no posts matched your criteria.', 'woothemes' ) ?></p>
			</div><!-- .post -->             
       	<?php endif; ?>  
        
		</div>
			      
		

        <?php get_sidebar(); ?>
		<div class="clear">&nbsp;</div>
</div><!-- /#main -->
    </div><!-- /#content -->
		
<?php get_footer(); ?>