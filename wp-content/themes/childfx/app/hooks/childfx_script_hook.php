<?php
/**
 * childfx
 *
 * childfx Theme by Calibrefx Team
 *
 * @package     childfx
 * @author      Calibrefx Team
 * @link        http://www.calibrefx.com/
 * @since       Version 1.0
 * @filesource 
 *
 * @package childfx
 */
add_action('admin_init', 'childfx_load_admin_scripts');
/**
 * This function loads the admin CSS files
 */
function childfx_load_admin_scripts() {
    wp_enqueue_style('childfx-admin', CHILD_CSS_URL . '/admin.style.css');

    wp_enqueue_script('childfx-admin', CHILD_JS_URL . '/admin.functions.js', array('jquery'));
}


add_action('init', 'childfx_register_scripts');
/**
 * This function register our style and script files
 */
function childfx_register_scripts(){   
    wp_register_script('childfx-functions', CHILD_JS_URL . '/functions.js', array('jquery'));
}

/**
 * This function load our style and script files
 */
add_action('calibrefx_meta', 'childfx_load_script');
function childfx_load_script(){   
	wp_enqueue_script('childfx-functions');
    
}
