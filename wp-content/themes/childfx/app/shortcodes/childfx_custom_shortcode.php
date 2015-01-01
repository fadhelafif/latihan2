<?php
/**
 *
 * ChildFX
 *
 * ChildFX Theme by CalibreFX Team
 *
 * @package		childfx
 * @author		CalibreFX Team
 * @copyright   Copyright (c) 2014
 * @link		http://www.calibrefx.com
 * @since		Version 2.0
 * @filesource 
 *
 */

add_shortcode('image_url', 'energy_theme_image_url');
function energy_theme_image_url(){
	return CHILD_IMAGES_URL;
}