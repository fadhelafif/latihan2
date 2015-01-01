<?php 
 
/**
 * Produces the date of post publication.
 *
 * Supported shortcode attributes are:
 *   after (output after link, default is empty string),
 *   before (output before link, default is empty string),
 *   format (date format, default is value in date_format option field),
 *   label (text following 'before' output, but before date).
 *
 */
function calibrefx_post_date_shortcode( $atts ) {
    $defaults = array(
            'after'  => '',
            'before' => '',
            'format' => get_option( 'date_format' ),
            'label'  => '',
    );
    $atts = shortcode_atts( $defaults, $atts );
    
    $display = '';
    
    switch( $atts['format']) {
        case 'relative' : 
            $display = calibrefx_human_time_diff( get_the_time( 'U' ), current_time( 'timestamp' ) ) . ' ' . __( 'ago', 'calibrefx' );
            break;
        case 'time-ago' : 
            $display = calibrefx_time_ago( get_the_date( 'Y/m/d' ) );
            break;
        default:
            $display = get_the_time( $atts['format'] );
            break;
    }
    
    $output = sprintf( '<span class="date published time" title="%5$s">%1$s%3$s%4$s%2$s</span> ', $atts['before'], $atts['after'], $atts['label'], $display, get_the_time( 'c' ) );
    return apply_filters( 'calibrefx_post_date_shortcode', $output, $atts );
}
add_shortcode( 'post_date', 'calibrefx_post_date_shortcode' );

/**
 * Produces the time of post publication.
 *
 * Supported shortcode attributes are:
 *   after (output after link, default is empty string),
 *   before (output before link, default is empty string),
 *   format (date format, default is value in date_format option field),
 *   label (text following 'before' output, but before date).
 *
 */
function calibrefx_post_time_shortcode( $atts ) {
    $defaults = array(
            'after'  => '',
            'before' => '',
            'format' => get_option( 'time_format' ),
            'label'  => '',
    );
    $atts = shortcode_atts( $defaults, $atts );
    $output = sprintf( '<span class="published time" title="%5$s">%1$s%3$s%4$s%2$s</span> ', $atts['before'], $atts['after'], $atts['label'], get_the_time( $atts['format'] ), get_the_time( 'Y-m-d\TH:i:sO' ) );
    return apply_filters( 'calibrefx_post_time_shortcode', $output, $atts );
}
add_shortcode( 'post_time', 'calibrefx_post_time_shortcode' );

/**
 * Produces the author of the post (unlinked display name).
 *
 * Supported shortcode attributes are:
 *   after (output after link, default is empty string),
 *   before (output before link, default is empty string).
 *
 */
function calibrefx_post_author_shortcode( $atts ) {
    $defaults = array(
            'after'  => '',
            'before' => '',
    );
    $atts = shortcode_atts( $defaults, $atts );
    $output = sprintf( '<span class="author vcard">%2$s<span class="fn">%1$s</span>%3$s</span>', esc_html( get_the_author() ), $atts['before'], $atts['after'] );
    return apply_filters( 'calibrefx_post_author_shortcode', $output, $atts );
}
add_shortcode( 'post_author', 'calibrefx_post_author_shortcode' );

/**
 * Produces the author of the post (link to author URL).
 *
 * Supported shortcode attributes are:
 *   after (output after link, default is empty string),
 *   before (output before link, default is empty string).
 *
 */
function calibrefx_post_author_link_shortcode( $atts ) {
    $defaults = array(
            'after'    => '',
            'before'   => '',
    );
    $atts = shortcode_atts( $defaults, $atts );
    $author = get_the_author();
    $author_url = get_the_author_meta( 'url' );

    if(!$author) {
        global $post;
        $author_url = get_the_author_meta( 'url', $post->post_author );
    }
    if ( $author_url )
            $author = '<a href="' . $author_url . '" title="' . esc_attr( sprintf( __( 'Visit %s&#8217;s website', 'calibrefx' ), $author ) ) . '" rel="author external">' . $author . '</a>';
    
    $output = sprintf( '<span class="author vcard">%2$s<span class="fn">%1$s</span>%3$s</span>', $author, $atts['before'], $atts['after'] );
    return apply_filters( 'calibrefx_post_author_link_shortcode', $output, $atts );
}
add_shortcode( 'post_author_link', 'calibrefx_post_author_link_shortcode' );

/**
 * Produces the author of the post (link to author archive).
 *
 * Supported shortcode attributes are:
 *   after (output after link, default is empty string),
 *   before (output before link, default is empty string).
 *
 */
function calibrefx_post_author_posts_link_shortcode( $atts ) {
    global $post;
    
    $defaults = array(
            'after'  => '',
            'before' => '',
    );
    $atts = shortcode_atts( $defaults, $atts );

    $author = get_the_author_meta( 'ID' );
    $author_name = get_the_author();

    if(!$author) {
        global $post;
        $author =  $post->post_author;
        $author_name = get_the_author_meta( 'user_nicename', $post->post_author );
    }

    if(is_custom_post_type( $post) ) $author = sprintf( '<span class="fn n">%s</span>', $author_name );
    else $author = sprintf( '<a href="%s" class="fn n" title="%s" rel="author">%s</a>', get_author_posts_url( $author ), $author_name, $author_name );

    $output = sprintf( '<span class="author vcard">%2$s<span class="fn">%1$s</span>%3$s</span>', $author, $atts['before'], $atts['after'] );
    return apply_filters( 'calibrefx_post_author_posts_link_shortcode', $output, $atts );
}
add_shortcode( 'post_author_posts_link', 'calibrefx_post_author_posts_link_shortcode' );

/**
 * Produces the link to the current post comments.
 *
 * Supported shortcode attributes are:
 *   after (output after link, default is empty string),
 *   before (output before link, default is empty string),
 *   hide_if_off (hide link if comments are off, default is 'enabled' (true) ),
 *   more (text when there is more than 1 comment, use % character as placeholder
 *     for actual number, default is '% Comments' )
 *   one (text when there is exactly one comment, default is '1 Comment' ),
 *   zero (text when there are no comments, default is 'Leave a Comment' ).
 *
 */
function calibrefx_post_comments_shortcode( $atts ) {
    $defaults = array(
            'after'       => '',
            'before'      => ' &#8226; ',
            'hide_if_off' => 'enabled',
            'more'        => __( '% Comments', 'calibrefx' ),
            'one'         => __( '1 Comment', 'calibrefx' ),
            'zero'        => __( 'Leave a Comment', 'calibrefx' ),
    );

    $is_facebook_comment_enabled = calibrefx_get_option( 'facebook_comments' );
    if( $is_facebook_comment_enabled) return;

    $atts = shortcode_atts( $defaults, $atts );
    if ( ( ! calibrefx_get_option( 'comments_posts' ) || ! comments_open() ) && 'enabled' === $atts['hide_if_off'] )
            return;

    ob_start();
    comments_number( $atts['zero'], $atts['one'], $atts['more'] );
    $comments = ob_get_clean();
    $comments = sprintf( '<a href="%s">%s</a>', get_comments_link(), $comments );
    $output = sprintf( '<span class="post-comments">%2$s%1$s%3$s</span>', $comments, $atts['before'], $atts['after'] );
    return apply_filters( 'calibrefx_post_comments_shortcode', $output, $atts );
}
add_shortcode( 'post_comments', 'calibrefx_post_comments_shortcode' );

/**
 * Produces the tag links list.
 *
 * Supported shortcode attributes are:
 *   after (output after link, default is empty string),
 *   before (output before link, default is 'Tagged With: ' ),
 *   sep (separator string between tags, default is ', ' ).
 *
 */
function calibrefx_post_tags_shortcode( $atts ) {
    $defaults = array(
            'after'  => '',
            'before' => __( 'Tagged With: ', 'calibrefx' ),
            'sep'    => ', ',
    );
    $atts = shortcode_atts( $defaults, $atts );
    $tags = get_the_tag_list( $atts['before'], trim( $atts['sep'] ) . ' ', $atts['after'] );
    if ( ! $tags ) return;
    $output = sprintf( '<span class="tags">%s</span> ', $tags );
    return apply_filters( 'calibrefx_post_tags_shortcode', $output, $atts );
}
add_shortcode( 'post_tags', 'calibrefx_post_tags_shortcode' );

/**
 * Produces the category links list.
 *
 * Supported shortcode attributes are:
 *   after (output after link, default is empty string),
 *   before (output before link, default is 'Tagged With: ' ),
 *   sep (separator string between tags, default is ', ' ).
 *
 */
function calibrefx_post_categories_shortcode( $atts ) {
    $defaults = array(
            'sep'    => ', ',
            'before' => __( 'Filed Under: ', 'calibrefx' ),
            'after'  => '',
    );
    $atts = shortcode_atts( $defaults, $atts );
    $cats = get_the_category_list( trim( $atts['sep'] ) . ' ' );
    $output = sprintf( '<span class="categories">%2$s%1$s%3$s</span> ', $cats, $atts['before'], $atts['after'] );
    return apply_filters( 'calibrefx_post_categories_shortcode', $output, $atts );
}
add_shortcode( 'post_categories', 'calibrefx_post_categories_shortcode' );

/**
 * Produces the linked post taxonomy terms list.
 *
 * Supported shortcode attributes are:
 *   after (output after link, default is empty string),
 *   before (output before link, default is 'Tagged With: ' ),
 *   sep (separator string between tags, default is ', ' ),
 *    taxonomy (name of the taxonomy, default is 'category' ).
 *
 */
function calibrefx_post_terms_shortcode( $atts ) {
    global $post;
    $defaults = array(
        'after'    => '',
        'before'   => __( 'Filed Under: ', 'calibrefx' ),
        'sep'      => ', ',
        'taxonomy' => 'category',
    );
    $atts = shortcode_atts( $defaults, $atts );
    $terms = get_the_term_list( $post->ID, $atts['taxonomy'], $atts['before'], trim( $atts['sep'] ) . ' ', $atts['after'] );
    if ( is_wp_error( $terms ) ) return false;
    if ( empty( $terms ) )  return false;
    $output = '<span class="terms">' . $terms . '</span>';
    return apply_filters( 'calibrefx_post_terms_shortcode', $output, $terms, $atts );
}
add_shortcode( 'post_terms', 'calibrefx_post_terms_shortcode' );

/**
 * Produces the edit post link for logged in users.
 *
 * Supported shortcode attributes are:
 *   after (output after link, default is empty string),
 *   before (output before link, default is 'Tagged With: ' ),
 *   link (link text, default is '(Edit)' ).
 */
function calibrefx_post_edit_shortcode( $atts ) {
    if ( ! apply_filters( 'calibrefx_edit_post_link', true ) ) return;
    $defaults = array(
        'after'  => '',
        'before' => '',
        'link'   => __( '(Edit)', 'calibrefx' ),
    );
    $atts = shortcode_atts( $defaults, $atts );
    ob_start();
    edit_post_link( $atts['link'], $atts['before'], $atts['after'] );
    $edit = ob_get_clean();
    $output = $edit;
    return apply_filters( 'calibrefx_post_edit_shortcode', $output, $atts );
}
add_shortcode( 'post_edit', 'calibrefx_post_edit_shortcode' );