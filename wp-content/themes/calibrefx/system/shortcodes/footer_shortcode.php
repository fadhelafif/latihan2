<?php 
/**
 * This file defines return functions to be used as shortcodes
 * in the site footer.
 * 
 * @package Calibrefx
 * 
 * @example <code>[footer_something]</code>
 * @example <code>[footer_something before="<em>" after="</em>" foo="bar"]</code>
 */

/**
 * This function produces the "Return to Top" link
 * 
 * @param array $atts Shortcode attributes
 * @return string 
 */
function calibrefx_footer_scrolltop_shortcode( $atts ) {

    $defaults = array(
        'text' => __( 'Return To Top', 'calibrefx' ),
        'href' => '#wrapper',
        'nofollow' => true,
        'before' => '',
        'after' => ''
    );
    $atts = shortcode_atts( $defaults, $atts );

    $nofollow = $atts['nofollow'] ? 'rel="nofollow"' : '';

    $output = sprintf( '%s<a href="%s" %s><i class="fa fa-chevron-circle-up"></i> %s</a>%s', $atts['before'], esc_url( $atts['href']), $nofollow, $atts['text'], $atts['after']);

    return apply_filters( 'calibrefx_footer_scrolltop_shortcode', $output, $atts );
}
add_shortcode( 'footer_scrolltop', 'calibrefx_footer_scrolltop_shortcode' );


/**
 * Show Footer Copyright Text
 *
 * @param array $atts Shortcode attributes
 * @return string
 */
function calibrefx_footer_copyright_shortcode( $atts ) {
    $defaults = array(
        'copyright' => '&copy;',
        'first' => '',
        'before' => '',
        'after' => ''
    );
    $atts = shortcode_atts( $defaults, $atts );

    $output = $atts['before'] . $atts['copyright'];
    if ( '' != $atts['first'] && date( 'Y' ) != $atts['first'])
        $output .= $atts['first'] . g_ent( '&ndash;' );
    $output .= ' ' . date( 'Y' ) . $atts['after'];

    return apply_filters( 'calibrefx_footer_copyright_shortcode', $output, $atts );
}
add_shortcode( 'footer_copyright', 'calibrefx_footer_copyright_shortcode' );


/**
 * Show Footer Theme Name and Link
 *
 * @param array $atts Shortcode attributes
 * @return string
 */
function calibrefx_footer_theme_link_shortcode( $atts ) {

    $defaults = array(
        'before' => '&middot; ',
        'after' => ''
    );
    $atts = shortcode_atts( $defaults, $atts );

    if (!is_child_theme() || !defined( 'CHILD_THEME_NAME' ) || !defined( 'CHILD_THEME_URL' ) )
        return;

    $output = sprintf( '%s<a href="%s" title="%s">%s</a>%s', $atts['before'], esc_url(CHILD_THEME_URL), esc_attr(CHILD_THEME_NAME), esc_html(CHILD_THEME_NAME), $atts['after']);

    return apply_filters( 'calibrefx_footer_theme_link_shortcode', $output, $atts );
}
add_shortcode( 'footer_theme_link', 'calibrefx_footer_theme_link_shortcode' );


/**
 * Show Footer CalibreFx Links
 *
 * @param array $atts Shortcode attributes
 * @return string
 */
function calibrefx_footer_calibrefx_link_shortcode( $atts ) {

    $defaults = array(
        'before' => '',
        'after' => ' &middot;'
    );
    $atts = shortcode_atts( $defaults, $atts );

    $output = sprintf( '%s<a href="%s" title="%s">%s</a>%s', $atts['before'], esc_url(FRAMEWORK_URL), esc_attr(FRAMEWORK_NAME), esc_html(FRAMEWORK_NAME), $atts['after']);

    return apply_filters( 'calibrefx_footer_calibrefx_link_shortcode', $output, $atts );
}
add_shortcode( 'footer_calibrefx_link', 'calibrefx_footer_calibrefx_link_shortcode' );


/**
 * Show Footer WordPress links
 *
 * @param array $atts Shortcode attributes
 * @return string
 */
function calibrefx_footer_wordpress_link_shortcode( $atts ) {

    $defaults = array(
        'before' => '',
        'after' => ' &middot;'
    );
    $atts = shortcode_atts( $defaults, $atts );

    $output = sprintf( '%s<a href="%s" title="%s">%s</a>%s', $atts['before'], esc_url( 'http://wordpress.org/' ), esc_attr( 'WordPress' ), esc_html( 'WordPress' ), $atts['after']);

    return apply_filters( 'calibrefx_footer_wordpress_link_shortcode', $output, $atts );
}
add_shortcode( 'footer_wordpress_link', 'calibrefx_footer_wordpress_link_shortcode' );


/**
 * Show Footer Home Name and Link
 *
 * @param array $atts Shortcode attributes
 * @return string
 */
function calibrefx_footer_home_link_shortcode( $atts ) {

    $defaults = array(
        'before' => '&middot; ',
        'after' => ''
    );
    $atts = shortcode_atts( $defaults, $atts );

    $output = sprintf( '%s<a href="%s" title="%s">%s</a>%s', $atts['before'], esc_url(home_url() ), esc_attr(get_bloginfo() ), esc_html(get_bloginfo() ), $atts['after']);

    return apply_filters( 'calibrefx_footer_home_link_shortcode', $output, $atts );
}
add_shortcode( 'footer_home_link', 'calibrefx_footer_home_link_shortcode' );