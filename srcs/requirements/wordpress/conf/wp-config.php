<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', getenv("__WP_DB_NAME") );

/** Database username */
define( 'DB_USER', getenv("__SQL_ADMIN_NAME") );

/** Database password */
define( 'DB_PASSWORD', getenv("__SQL_ADMIN_PASSWD") );

/** Database hostname */
define( 'DB_HOST', getenv("__DB_HOSTNAME").":".getenv("__DB_HOST_PORT") );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'NEpVtQi_QtTgB0< 8_?Rzt]]]kk2+xwD[wQch_$G,Sv56-6.JU`V+rMMyf&.`Wvb' );
define( 'SECURE_AUTH_KEY',  'j0~#d@+){YM#B{X~D_z1_VoOPAR?ZdZv6<Aa`3s-pYYl|v,MB*U&mD[H`FDV$]&_' );
define( 'LOGGED_IN_KEY',    '`8<!`M:p^~4$-q5H$||>Uf2V8AFYTq9:<6T<]rhr=H-^+-f--+x0+Z$L%h0d|XQX' );
define( 'NONCE_KEY',        'Gys3FQ%L^;dN+5FfmppXF?Ha:Bl5A]|}eilK`D4grT.E%F#+G;.D3-SyR;+XX[11' );
define( 'AUTH_SALT',        'i[T#RQHj{)J!as}_2Z?iv{jQKA?F,(5N_E6j?D^P/j,+@NX 3pFsh5pL_;;,,4P&' );
define( 'SECURE_AUTH_SALT', '-r&`K$0_z:[;*I6|nHUO}>,-cz]WYVttF^!N1<X2(Y|2`v9:A}@PCfCH(tG?M7:i' );
define( 'LOGGED_IN_SALT',   '3,YdslrtZIp?NK~g9mmNo!x1}I,#|cgGM{ASL!s)2i RC[j=qAsuFzMat+|>Ep]f' );
define( 'NONCE_SALT',       'PDK{$],hyqrg;c/HF5av-tv>H{8xBxYmx$7_rl?]ZMH0=2cr0.0IAkaGL Df+?th' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', getenv("__DEBUG_WP") );
define( 'WP_DEBUG_LOG', getenv("__DEBUG_WP") );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
