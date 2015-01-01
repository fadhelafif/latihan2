<?php
/**
 * childfx
 *
 * childfx Theme
 *
 * @package		  childfx
 * @author		  Your Name
 * @link		  http://yourlink.com
 * @since		  Version 1.0.0
 * @filesource 
 *
 */

/**
 * Include CalibreFx init file, this is our engine
 */
require_once(TEMPLATEPATH . '/system/Bootloader.php');
global $calibrefx;

define('CHILD_THEME_NAME', 'childfx');
define('CHILD_THEME_URL', 'http://www.calibreworks.com');
define('CHILD_THEME_VERSION', '1.0.0');
define('CHILD_THEME_DB_VERSION', '1');

//We start our engine
$calibrefx->load->add_child_path(CHILD_URI . '/app');

//Load the autoload
$calibrefx->load->do_autoload(CHILD_URI . '/app/config/autoload.php');

