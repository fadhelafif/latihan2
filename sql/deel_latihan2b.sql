-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2015 at 02:08 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `deel_latihan2b`
--
CREATE DATABASE IF NOT EXISTS `deel_latihan2b` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `deel_latihan2b`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-01-01 07:56:20', '2015-01-01 07:56:20', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=165 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2', 'yes'),
(2, 'home', 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2', 'yes'),
(3, 'blogname', 'latihan 2', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'calibrefx', 'yes'),
(42, 'stylesheet', 'childfx', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:11:"sidebar-alt";N;s:12:"header-right";N;s:13:"footer-widget";N;s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1420314600;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1420314989;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1420358238;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1420368396;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(98, '_transient_random_seed', 'e5751ad5ff028c120e966fb85376158b', 'yes'),
(99, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.1.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.1-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.1";s:7:"version";s:3:"4.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1420279239;s:15:"version_checked";s:3:"4.1";s:12:"translations";a:0:{}}', 'yes'),
(101, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1420279239;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"3.0.4";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.4";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.0.4.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes'),
(104, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1420279239;s:7:"checked";a:5:{s:9:"calibrefx";s:10:"2.0 Beta 1";s:7:"childfx";s:3:"2.0";s:13:"twentyfifteen";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.3";s:14:"twentythirteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(105, '_site_transient_timeout_browser_5745179b6e4dc44155ca95a5622b2ca5', '1420703822', 'yes'),
(106, '_site_transient_browser_5745179b6e4dc44155ca95a5622b2ca5', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"39.0.2171.95";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(111, 'can_compress_scripts', '1', 'yes'),
(125, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1420099104;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(126, 'current_theme', 'ChildFX Themes', 'yes'),
(127, 'theme_mods_childfx', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:2;s:9:"secondary";i:3;}}', 'yes'),
(128, 'theme_switched', '', 'yes'),
(131, 'calibrefx-settings_filters', 'a:1:{s:18:"calibrefx-settings";a:32:{s:6:"update";s:8:"one_zero";s:30:"calibrefx_layout_wrapper_fixed";s:8:"one_zero";s:12:"header_right";s:8:"one_zero";s:3:"nav";s:8:"one_zero";s:6:"subnav";s:8:"one_zero";s:15:"breadcrumb_home";s:8:"one_zero";s:17:"breadcrumb_single";s:8:"one_zero";s:15:"breadcrumb_page";s:8:"one_zero";s:18:"breadcrumb_archive";s:8:"one_zero";s:14:"breadcrumb_404";s:8:"one_zero";s:14:"comments_posts";s:8:"one_zero";s:14:"comments_pages";s:8:"one_zero";s:16:"trackbacks_posts";s:8:"one_zero";s:16:"trackbacks_pages";s:8:"one_zero";s:10:"blog_title";s:9:"safe_text";s:17:"calibrefx_version";s:9:"safe_text";s:20:"calibrefx_db_version";s:7:"integer";s:9:"posts_nav";s:9:"safe_text";s:15:"content_archive";s:9:"safe_text";s:11:"layout_type";s:9:"safe_text";s:11:"site_layout";s:9:"safe_text";s:22:"calibrefx_layout_width";s:7:"integer";s:21:"content_archive_limit";s:7:"integer";s:9:"post_date";s:7:"integer";s:11:"post_author";s:7:"integer";s:12:"post_comment";s:7:"integer";s:13:"post_category";s:7:"integer";s:9:"post_tags";s:7:"integer";s:17:"facebook_comments";s:7:"integer";s:11:"analytic_id";s:7:"no_html";s:22:"google_tagmanager_code";s:9:"no_filter";s:22:"facebook_tracking_code";s:9:"no_filter";}}', 'yes'),
(132, 'calibrefx-settings', 'a:39:{s:6:"update";i:1;s:10:"blog_title";s:4:"text";s:12:"header_right";i:0;s:11:"layout_type";s:6:"static";s:22:"calibrefx_layout_width";i:1160;s:30:"calibrefx_layout_wrapper_fixed";i:0;s:11:"site_layout";s:15:"content-sidebar";s:3:"nav";i:1;s:6:"subnav";i:0;s:15:"breadcrumb_home";i:1;s:17:"breadcrumb_single";i:1;s:15:"breadcrumb_page";i:1;s:18:"breadcrumb_archive";i:1;s:14:"breadcrumb_404";i:1;s:14:"comments_pages";i:0;s:14:"comments_posts";i:1;s:16:"trackbacks_pages";i:0;s:16:"trackbacks_posts";i:1;s:10:"custom_css";s:0:"";s:15:"content_archive";s:4:"full";s:21:"content_archive_limit";i:30;s:9:"posts_nav";s:11:"older-newer";s:14:"header_scripts";s:0:"";s:14:"footer_scripts";s:0:"";s:13:"enable_mobile";i:0;s:13:"log_threshold";i:4;s:15:"log_date_format";s:11:"Y-m-d H:i:s";s:8:"log_path";s:0:"";s:17:"calibrefx_version";s:0:"";s:20:"calibrefx_db_version";i:0;s:9:"post_date";i:1;s:11:"post_author";i:1;s:12:"post_comment";i:1;s:13:"post_category";i:1;s:9:"post_tags";i:1;s:17:"facebook_comments";i:0;s:11:"analytic_id";s:0:"";s:22:"google_tagmanager_code";s:0:"";s:22:"facebook_tracking_code";s:0:"";}', 'yes'),
(133, 'calibrefx-module', '', 'yes'),
(134, 'theme_mods_calibrefx', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1420169156;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:11:"sidebar-alt";N;s:12:"header-right";N;s:13:"footer-widget";N;}}}', 'yes'),
(145, '_transient_timeout_plugin_slugs', '1420366495', 'no'),
(146, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(147, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1420323295', 'no'),
(148, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(151, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(155, '_transient_timeout_settings_errors', '1420286729', 'no'),
(156, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:"setting";s:7:"general";s:4:"code";s:16:"settings_updated";s:7:"message";s:15:"Settings saved.";s:4:"type";s:7:"updated";}}', 'no'),
(159, 'category_children', 'a:0:{}', 'yes'),
(163, '_site_transient_timeout_theme_roots', '1420291012', 'yes'),
(164, '_site_transient_theme_roots', 'a:5:{s:9:"calibrefx";s:7:"/themes";s:7:"childfx";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2'),
(11, 5, '_menu_item_type', 'post_type'),
(12, 5, '_menu_item_menu_item_parent', '0'),
(13, 5, '_menu_item_object_id', '2'),
(14, 5, '_menu_item_object', 'page'),
(15, 5, '_menu_item_target', ''),
(16, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 5, '_menu_item_xfn', ''),
(18, 5, '_menu_item_url', ''),
(20, 4, '_menu_item_custom_icon', ''),
(21, 5, '_menu_item_custom_icon', ''),
(22, 6, '_edit_last', '1'),
(23, 6, '_edit_lock', '1420281867:1'),
(24, 6, '_wp_page_template', 'default'),
(25, 8, '_edit_last', '1'),
(26, 8, '_wp_page_template', 'default'),
(27, 8, '_edit_lock', '1420281985:1'),
(28, 10, '_menu_item_type', 'post_type'),
(29, 10, '_menu_item_menu_item_parent', '0'),
(30, 10, '_menu_item_object_id', '8'),
(31, 10, '_menu_item_object', 'page'),
(32, 10, '_menu_item_target', ''),
(33, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(34, 10, '_menu_item_xfn', ''),
(35, 10, '_menu_item_url', ''),
(37, 11, '_menu_item_type', 'post_type'),
(38, 11, '_menu_item_menu_item_parent', '0'),
(39, 11, '_menu_item_object_id', '6'),
(40, 11, '_menu_item_object', 'page'),
(41, 11, '_menu_item_target', ''),
(42, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(43, 11, '_menu_item_xfn', ''),
(44, 11, '_menu_item_url', ''),
(46, 11, '_menu_item_custom_icon', ''),
(47, 10, '_menu_item_custom_icon', ''),
(48, 13, '_wp_attached_file', '2015/01/dummy.jpg'),
(49, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:17:"2015/01/dummy.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"dummy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"dummy-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"dummy-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(50, 1, '_edit_lock', '1420286587:1'),
(51, 1, '_thumbnail_id', '13'),
(52, 1, '_edit_last', '1'),
(54, 15, '_menu_item_type', 'custom'),
(55, 15, '_menu_item_menu_item_parent', '0'),
(56, 15, '_menu_item_object_id', '15'),
(57, 15, '_menu_item_object', 'custom'),
(58, 15, '_menu_item_target', ''),
(59, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 15, '_menu_item_xfn', ''),
(61, 15, '_menu_item_url', '#'),
(63, 16, '_menu_item_type', 'custom'),
(64, 16, '_menu_item_menu_item_parent', '0'),
(65, 16, '_menu_item_object_id', '16'),
(66, 16, '_menu_item_object', 'custom'),
(67, 16, '_menu_item_target', ''),
(68, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 16, '_menu_item_xfn', ''),
(70, 16, '_menu_item_url', '#'),
(72, 17, '_menu_item_type', 'custom'),
(73, 17, '_menu_item_menu_item_parent', '0'),
(74, 17, '_menu_item_object_id', '17'),
(75, 17, '_menu_item_object', 'custom'),
(76, 17, '_menu_item_target', ''),
(77, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 17, '_menu_item_xfn', ''),
(79, 17, '_menu_item_url', '#'),
(81, 15, '_menu_item_custom_icon', ''),
(82, 16, '_menu_item_custom_icon', ''),
(83, 17, '_menu_item_custom_icon', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-01-01 07:56:20', '2015-01-01 07:56:20', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-01-03 12:03:07', '2015-01-03 12:03:07', '', 0, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/?p=1', 0, 'post', '', 1),
(2, 1, '2015-01-01 07:56:20', '2015-01-01 07:56:20', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-01-01 07:56:20', '2015-01-01 07:56:20', '', 0, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-01-01 07:57:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-01-01 07:57:03', '0000-00-00 00:00:00', '', 0, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/?p=3', 0, 'post', '', 0),
(4, 1, '2015-01-03 10:46:18', '2015-01-03 10:46:18', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-01-03 10:47:38', '2015-01-03 10:47:38', '', 0, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2015-01-03 10:46:18', '2015-01-03 10:46:18', ' ', '', '', 'publish', 'open', 'open', '', '5', '', '', '2015-01-03 10:47:38', '2015-01-03 10:47:38', '', 0, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/?p=5', 3, 'nav_menu_item', '', 0),
(6, 1, '2015-01-03 10:46:47', '2015-01-03 10:46:47', '', 'About', '', 'publish', 'open', 'open', '', 'about', '', '', '2015-01-03 10:46:47', '2015-01-03 10:46:47', '', 0, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/?page_id=6', 0, 'page', '', 0),
(7, 1, '2015-01-03 10:46:47', '2015-01-03 10:46:47', '', 'About', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2015-01-03 10:46:47', '2015-01-03 10:46:47', '', 6, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/?p=7', 0, 'revision', '', 0),
(8, 1, '2015-01-03 10:46:58', '2015-01-03 10:46:58', 'description', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2015-01-03 10:48:42', '2015-01-03 10:48:42', '', 0, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/?page_id=8', 0, 'page', '', 0),
(9, 1, '2015-01-03 10:46:58', '2015-01-03 10:46:58', '', 'Contact', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-01-03 10:46:58', '2015-01-03 10:46:58', '', 8, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/?p=9', 0, 'revision', '', 0),
(10, 1, '2015-01-03 10:47:38', '2015-01-03 10:47:38', ' ', '', '', 'publish', 'open', 'open', '', '10', '', '', '2015-01-03 10:47:38', '2015-01-03 10:47:38', '', 0, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/?p=10', 4, 'nav_menu_item', '', 0),
(11, 1, '2015-01-03 10:47:38', '2015-01-03 10:47:38', ' ', '', '', 'publish', 'open', 'open', '', '11', '', '', '2015-01-03 10:47:38', '2015-01-03 10:47:38', '', 0, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/?p=11', 2, 'nav_menu_item', '', 0),
(12, 1, '2015-01-03 10:48:42', '2015-01-03 10:48:42', 'description', 'Contact', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-01-03 10:48:42', '2015-01-03 10:48:42', '', 8, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/?p=12', 0, 'revision', '', 0),
(13, 1, '2015-01-03 10:51:25', '2015-01-03 10:51:25', '', 'dummy', '', 'inherit', 'open', 'open', '', 'dummy', '', '', '2015-01-03 10:51:25', '2015-01-03 10:51:25', '', 0, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/wp-content/uploads/2015/01/dummy.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2015-01-03 10:51:51', '2015-01-03 10:51:51', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-01-03 10:51:51', '2015-01-03 10:51:51', '', 1, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/?p=14', 0, 'revision', '', 0),
(15, 1, '2015-01-03 10:55:17', '2015-01-03 10:55:17', '', 'Site Map', '', 'publish', 'open', 'open', '', 'site-map', '', '', '2015-01-03 10:55:17', '2015-01-03 10:55:17', '', 0, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2015-01-03 10:55:17', '2015-01-03 10:55:17', '', 'Term & Conditions', '', 'publish', 'open', 'open', '', 'term-conditions', '', '', '2015-01-03 10:55:17', '2015-01-03 10:55:17', '', 0, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2015-01-03 10:55:17', '2015-01-03 10:55:17', '', 'Help', '', 'publish', 'open', 'open', '', 'help', '', '', '2015-01-03 10:55:17', '2015-01-03 10:55:17', '', 0, 'http://dhel-pc.com/dhel/lab/0cms/wordpress/home/latihan2/?p=17', 3, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Menu', 'primary-menu', 0),
(3, 'Secondary Menu', 'secondary-menu', 0),
(4, 'Cat 1', 'cat-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 4, 0),
(4, 2, 0),
(5, 2, 0),
(10, 2, 0),
(11, 2, 0),
(15, 3, 0),
(16, 3, 0),
(17, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'session_tokens', 'a:1:{s:64:"ee6c0ac0da9466b968b30f55cc9f2e252a090d9cc00a7a1f19d5763bd4721f22";a:4:{s:10:"expiration";i:1420452892;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36";s:5:"login";i:1420280092;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(18, 1, 'nav_menu_recently_edited', '3'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1420282308');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BLGRv5ycxF68yscbwn9O5rVb7U/cfH.', 'admin', 'admin@gmail.com', '', '2015-01-01 07:56:20', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
