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

/**
 * This function loads the admin CSS files
 */
function childfx_load_admin_styles() {
    wp_enqueue_style( 'childfx-admin', CHILD_CSS_URL . '/admin.css', array(), FRAMEWORK_VERSION );
}
$calibrefx->hooks->add( 'admin_init', 'childfx_load_admin_styles' );

/**
 * This function loads the admin JS files
 */
function childfx_load_admin_scripts() {
    wp_enqueue_script( 'childfx-admin', CHILD_JS_URL . '/admin.js', array('jquery'), FRAMEWORK_VERSION );
}
$calibrefx->hooks->add( 'admin_init', 'childfx_load_admin_scripts' );

/**
 * This function register our style and script files
 */
function childfx_register_scripts(){   
    wp_register_script( 'childfx-functions', CHILD_JS_URL . '/functions.js', array('jquery'), FRAMEWORK_VERSION );
}
$calibrefx->hooks->add( 'init', 'childfx_register_scripts' );

/**
 * This function load our style and script files
 */
function childfx_load_script(){   
	wp_enqueue_script( 'childfx-functions' );
}
$calibrefx->hooks->add( 'calibrefx_meta', 'childfx_load_script' );