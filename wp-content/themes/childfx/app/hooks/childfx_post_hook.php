<?php

add_filter( 'post_single_image', 'childfx_post_single_image', 2);
function childfx_post_single_image($img){
	$img = calibrefx_get_image( array( 'format' => 'html', 'size' => $default_post_single_image_size, 'attr' => array( 'class' => 'alignnone post-image img-responsive' ) ) );
	return $img;
}