<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'deel_latihan2b');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'fa3]%q!>@]e7VbPSo++<Vpp{l{7c*9hEg(ZXB0*kEW[v5QfXfYf-|9Yfn=%-~BR{');
define('SECURE_AUTH_KEY',  'i%x?a@__=sEH:}2Cu1_B3u{Q_yZ.qI{yfW[*w,]s=zSw}}]mwyJI+zc#1U+kn,..');
define('LOGGED_IN_KEY',    'J@e+Vf)88j&~}TjGRcn?&W9yi</c9(wyh3,{~aG2jI{F$NyreD+>f($BUA%NWVDT');
define('NONCE_KEY',        'Lom5|>Z-9nCC$BcOX>]F=xM|qUn2M+ ja:/h%L-1@b}Gx|hz#M~y3+uLlgh19,&?');
define('AUTH_SALT',        'Vs1~F_b<6bG]Xcz:uK/L^yOorB6E.Ts{>pejO8+6{NN9@~P_Mqs<&=x{~]Xs8~ q');
define('SECURE_AUTH_SALT', 'Fz;XCCjnh*/3Ljvv2iX596j{^c<+`g+<p-oqnh bNl{YW_0cZOZ|`Q7(N:O@}7_G');
define('LOGGED_IN_SALT',   '$Ao^4x<D:ISojQxeIbud~mi~UPELiccf}3v~e#p%+)8k|4nlO}g~m-rZ=JGZ~k1p');
define('NONCE_SALT',       'f?Qn;^rv*s.w~M~}8hBJKm`&gnrgiUOUw:dgj$Hkf^>&}-QhwrgTCD|9f}pMf!WA');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
