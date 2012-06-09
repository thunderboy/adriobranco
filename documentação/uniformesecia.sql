-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Jun 08, 2012 as 06:51 PM
-- Versão do Servidor: 5.0.51
-- Versão do PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `uniformesecia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `comment_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `wp_commentmeta`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL auto_increment,
  `comment_post_ID` bigint(20) unsigned NOT NULL default '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL default '',
  `comment_author_url` varchar(200) NOT NULL default '',
  `comment_author_IP` varchar(100) NOT NULL default '',
  `comment_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL default '0',
  `comment_approved` varchar(20) NOT NULL default '1',
  `comment_agent` varchar(255) NOT NULL default '',
  `comment_type` varchar(20) NOT NULL default '',
  `comment_parent` bigint(20) unsigned NOT NULL default '0',
  `user_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`comment_ID`),
  KEY `comment_approved` (`comment_approved`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Sr. WordPress', '', 'http://wordpress.org/', '', '2012-06-08 15:01:41', '2012-06-08 15:01:41', 'Olá, isto é um comentário. <br />Para eliminar um comentário, basta iniciar sessão e ver os comentários ao artigo. Poderá então editar ou eliminar os comentários.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL auto_increment,
  `link_url` varchar(255) NOT NULL default '',
  `link_name` varchar(255) NOT NULL default '',
  `link_image` varchar(255) NOT NULL default '',
  `link_target` varchar(25) NOT NULL default '',
  `link_description` varchar(255) NOT NULL default '',
  `link_visible` varchar(20) NOT NULL default 'Y',
  `link_owner` bigint(20) unsigned NOT NULL default '1',
  `link_rating` int(11) NOT NULL default '0',
  `link_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL default '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `wp_links`
--

INSERT INTO `wp_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wordpress.org/', 'Documentation', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://wordpress.org/news/', 'WordPress Blog', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://wordpress.org/news/feed/'),
(3, 'http://wordpress.org/extend/ideas/', 'Suggest Ideas', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/support/', 'Support Forum', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/plugins/', 'Plugins', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, 'http://wordpress.org/extend/themes/', 'Themes', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://planet.wordpress.org/', 'WordPress Planet', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_nivoslider4wp`
--

CREATE TABLE IF NOT EXISTS `wp_nivoslider4wp` (
  `nivoslider4wp_id` int(11) NOT NULL auto_increment,
  `nivoslider4wp_type` text,
  `nivoslider4wp_order` int(11) default NULL,
  `nivoslider4wp_text_headline` text,
  `nivoslider4wp_x` int(11) default NULL,
  `nivoslider4wp_y` int(11) default NULL,
  `nivoslider4wp_x2` int(11) default NULL,
  `nivoslider4wp_y2` int(11) default NULL,
  `nivoslider4wp_w` int(11) default NULL,
  `nivoslider4wp_h` int(11) default NULL,
  `nivoslider4wp_image_link` text,
  `nivoslider4wp_image_status` char(1) default NULL,
  PRIMARY KEY  (`nivoslider4wp_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `wp_nivoslider4wp`
--

INSERT INTO `wp_nivoslider4wp` (`nivoslider4wp_id`, `nivoslider4wp_type`, `nivoslider4wp_order`, `nivoslider4wp_text_headline`, `nivoslider4wp_x`, `nivoslider4wp_y`, `nivoslider4wp_x2`, `nivoslider4wp_y2`, `nivoslider4wp_w`, `nivoslider4wp_h`, `nivoslider4wp_image_link`, `nivoslider4wp_image_status`) VALUES
(5, 'jpeg', 0, 'Uniformes Infantis', 0, 0, 980, 460, 980, 460, '#', '1'),
(4, 'jpeg', 0, 'Uniformes de Escolas Públicas', 0, 0, 980, 460, 980, 460, '#', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL auto_increment,
  `blog_id` int(11) NOT NULL default '0',
  `option_name` varchar(64) NOT NULL default '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL default 'yes',
  PRIMARY KEY  (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=312 ;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `blog_id`, `option_name`, `option_value`, `autoload`) VALUES
(310, 0, '_site_transient_timeout_theme_roots', '1339198886', 'yes'),
(311, 0, '_site_transient_theme_roots', 'a:3:{s:6:"rustik";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";}', 'yes'),
(3, 0, 'siteurl', 'http://localhost/uniformesecia', 'yes'),
(4, 0, 'blogname', 'Uniformes &amp; CIA', 'yes'),
(5, 0, 'blogdescription', 'Mais um site WordPress', 'yes'),
(6, 0, 'users_can_register', '0', 'yes'),
(7, 0, 'admin_email', 'jonas.ferreira@gmail.com', 'yes'),
(8, 0, 'start_of_week', '1', 'yes'),
(9, 0, 'use_balanceTags', '0', 'yes'),
(10, 0, 'use_smilies', '1', 'yes'),
(11, 0, 'require_name_email', '1', 'yes'),
(12, 0, 'comments_notify', '1', 'yes'),
(13, 0, 'posts_per_rss', '10', 'yes'),
(14, 0, 'rss_use_excerpt', '0', 'yes'),
(15, 0, 'mailserver_url', 'mail.example.com', 'yes'),
(16, 0, 'mailserver_login', 'login@example.com', 'yes'),
(17, 0, 'mailserver_pass', 'password', 'yes'),
(18, 0, 'mailserver_port', '110', 'yes'),
(19, 0, 'default_category', '1', 'yes'),
(20, 0, 'default_comment_status', 'open', 'yes'),
(21, 0, 'default_ping_status', 'open', 'yes'),
(22, 0, 'default_pingback_flag', '1', 'yes'),
(23, 0, 'default_post_edit_rows', '20', 'yes'),
(24, 0, 'posts_per_page', '10', 'yes'),
(25, 0, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(26, 0, 'time_format', 'G:i', 'yes'),
(27, 0, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y G:i', 'yes'),
(28, 0, 'links_recently_updated_prepend', '<em>', 'yes'),
(29, 0, 'links_recently_updated_append', '</em>', 'yes'),
(30, 0, 'links_recently_updated_time', '120', 'yes'),
(31, 0, 'comment_moderation', '0', 'yes'),
(32, 0, 'moderation_notify', '1', 'yes'),
(33, 0, 'permalink_structure', '', 'yes'),
(34, 0, 'gzipcompression', '0', 'yes'),
(35, 0, 'hack_file', '0', 'yes'),
(36, 0, 'blog_charset', 'UTF-8', 'yes'),
(37, 0, 'moderation_keys', '', 'no'),
(38, 0, 'active_plugins', 'a:2:{i:0;s:43:"nivo-slider-for-wordpress/nivoslider4wp.php";i:1;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(39, 0, 'home', 'http://localhost/uniformesecia', 'yes'),
(40, 0, 'category_base', '', 'yes'),
(41, 0, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(42, 0, 'advanced_edit', '0', 'yes'),
(43, 0, 'comment_max_links', '2', 'yes'),
(44, 0, 'gmt_offset', '0', 'yes'),
(45, 0, 'default_email_category', '1', 'yes'),
(46, 0, 'recently_edited', '', 'no'),
(47, 0, 'template', 'rustik', 'yes'),
(48, 0, 'stylesheet', 'rustik', 'yes'),
(49, 0, 'comment_whitelist', '1', 'yes'),
(50, 0, 'blacklist_keys', '', 'no'),
(51, 0, 'comment_registration', '0', 'yes'),
(52, 0, 'rss_language', 'en', 'yes'),
(53, 0, 'html_type', 'text/html', 'yes'),
(54, 0, 'use_trackback', '0', 'yes'),
(55, 0, 'default_role', 'subscriber', 'yes'),
(56, 0, 'db_version', '19470', 'yes'),
(57, 0, 'uploads_use_yearmonth_folders', '1', 'yes'),
(58, 0, 'upload_path', '', 'yes'),
(59, 0, 'blog_public', '1', 'yes'),
(60, 0, 'default_link_category', '2', 'yes'),
(61, 0, 'show_on_front', 'posts', 'yes'),
(62, 0, 'tag_base', '', 'yes'),
(63, 0, 'show_avatars', '1', 'yes'),
(64, 0, 'avatar_rating', 'G', 'yes'),
(65, 0, 'upload_url_path', '', 'yes'),
(66, 0, 'thumbnail_size_w', '150', 'yes'),
(67, 0, 'thumbnail_size_h', '150', 'yes'),
(68, 0, 'thumbnail_crop', '1', 'yes'),
(69, 0, 'medium_size_w', '300', 'yes'),
(70, 0, 'medium_size_h', '300', 'yes'),
(71, 0, 'avatar_default', 'mystery', 'yes'),
(72, 0, 'enable_app', '0', 'yes'),
(73, 0, 'enable_xmlrpc', '0', 'yes'),
(74, 0, 'large_size_w', '1024', 'yes'),
(75, 0, 'large_size_h', '1024', 'yes'),
(76, 0, 'image_default_link_type', 'file', 'yes'),
(77, 0, 'image_default_size', '', 'yes'),
(78, 0, 'image_default_align', '', 'yes'),
(79, 0, 'close_comments_for_old_posts', '0', 'yes'),
(80, 0, 'close_comments_days_old', '14', 'yes'),
(81, 0, 'thread_comments', '1', 'yes'),
(82, 0, 'thread_comments_depth', '5', 'yes'),
(83, 0, 'page_comments', '0', 'yes'),
(84, 0, 'comments_per_page', '50', 'yes'),
(85, 0, 'default_comments_page', 'newest', 'yes'),
(86, 0, 'comment_order', 'asc', 'yes'),
(87, 0, 'sticky_posts', 'a:0:{}', 'yes'),
(88, 0, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(89, 0, 'widget_text', 'a:0:{}', 'yes'),
(90, 0, 'widget_rss', 'a:0:{}', 'yes'),
(91, 0, 'timezone_string', '', 'yes'),
(92, 0, 'embed_autourls', '1', 'yes'),
(93, 0, 'embed_size_w', '', 'yes'),
(94, 0, 'embed_size_h', '600', 'yes'),
(95, 0, 'page_for_posts', '0', 'yes'),
(96, 0, 'page_on_front', '0', 'yes'),
(97, 0, 'default_post_format', '0', 'yes'),
(98, 0, 'initial_db_version', '19470', 'yes'),
(99, 0, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:29:{s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:18:"manage_woocommerce";b:1;}}}', 'yes'),
(100, 0, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 0, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 0, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 0, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 0, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 0, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";i:4;s:6:"meta-2";}s:7:"primary";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";N;s:13:"array_version";i:3;}', 'yes'),
(106, 0, 'cron', 'a:3:{i:1339210904;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1339254116;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 0, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:30:"http://localhost/uniformesecia";s:4:"link";s:106:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/uniformesecia/";s:3:"url";s:139:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/uniformesecia/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:26:"http://wordpress.org/news/";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:5:"title";s:22:"Blog oficial Wordpress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:26:"Outras notícias WordPress";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(108, 0, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"3.3.2";s:12:"last_checked";i:1339167708;}', 'yes'),
(110, 0, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1339189899;}', 'yes'),
(109, 0, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1339167855;}', 'yes'),
(128, 0, 'current_theme', 'Rustik', 'yes'),
(114, 0, 'can_compress_scripts', '1', 'yes'),
(115, 0, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1339210919', 'no'),
(116, 0, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erro de RSS</strong>: WP HTTP Error: couldn''t connect to host</p></div>', 'no'),
(117, 0, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1339210919', 'no'),
(118, 0, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erro de RSS</strong>: WP HTTP Error: couldn''t connect to host</p></div>', 'no'),
(119, 0, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1339210922', 'no'),
(120, 0, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erro de RSS</strong>: WP HTTP Error: couldn''t connect to host</p>', 'no'),
(121, 0, '_transient_timeout_plugin_slugs', '1339254252', 'no'),
(122, 0, '_transient_plugin_slugs', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:43:"nivo-slider-for-wordpress/nivoslider4wp.php";i:3;s:27:"woocommerce/woocommerce.php";}', 'no'),
(123, 0, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1339210924', 'no'),
(124, 0, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(262, 0, '_site_transient_timeout_wporg_theme_feature_list', '1339200701', 'yes'),
(263, 0, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(127, 0, 'theme_mods_twentyeleven', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1339167826;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}}}}', 'yes'),
(129, 0, 'theme_mods_rustik', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:12:"primary-menu";i:15;s:8:"top-menu";i:14;}}', 'yes'),
(130, 0, 'theme_switched', '', 'yes'),
(131, 0, 'woo_timthumb_update', '', 'yes'),
(132, 0, 'woocommerce_thumbnail_image_width', '260', 'yes'),
(133, 0, 'woocommerce_thumbnail_image_height', '260', 'yes'),
(134, 0, 'woocommerce_single_image_width', '480', 'yes'),
(135, 0, 'woocommerce_single_image_height', '480', 'yes'),
(136, 0, 'woocommerce_catalog_image_width', '260', 'yes'),
(137, 0, 'woocommerce_catalog_image_height', '260', 'yes'),
(138, 0, 'woo_framework_version', '4.6.2', 'yes'),
(139, 0, 'woo_custom_seo_template', 'a:3:{i:0;a:5:{s:4:"name";s:10:"seo_info_1";s:3:"std";s:0:"";s:5:"label";s:4:"SEO ";s:4:"type";s:4:"info";s:4:"desc";s:196:"Additional SEO custom fields available: <strong>Custom Page Titles</strong>. Go to <a href="http://localhost/uniformesecia/wp-admin/admin.php?page=woothemes_seo">SEO Settings</a> page to activate.";}i:1;a:5:{s:4:"name";s:10:"seo_follow";s:3:"std";s:5:"false";s:5:"label";s:16:"SEO - Set follow";s:4:"type";s:8:"checkbox";s:4:"desc";s:77:"Make links from this post/page <strong>followable</strong> by search engines.";}i:2;a:5:{s:4:"name";s:11:"seo_noindex";s:3:"std";s:5:"false";s:5:"label";s:13:"SEO - Noindex";s:4:"type";s:8:"checkbox";s:4:"desc";s:56:"Set the Page/Post to not be indexed by a search engines.";}}', 'yes'),
(140, 0, 'woo_options', 'a:41:{s:18:"woo_alt_stylesheet";s:11:"default.css";s:8:"woo_logo";s:67:"http://localhost/uniformesecia/wp-content/uploads/2012/06/logo2.png";s:13:"woo_texttitle";s:5:"false";s:19:"woo_font_site_title";a:5:{s:4:"size";s:2:"42";s:4:"unit";s:2:"px";s:4:"face";s:4:"Lato";s:5:"style";s:6:"normal";s:5:"color";s:7:"#121228";}s:11:"woo_tagline";s:5:"false";s:16:"woo_font_tagline";a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:4:"Lato";s:5:"style";s:6:"normal";s:5:"color";s:7:"#999999";}s:18:"woo_custom_favicon";s:0:"";s:20:"woo_google_analytics";s:0:"";s:12:"woo_feed_url";s:0:"";s:19:"woo_subscribe_email";s:0:"";s:21:"woo_contactform_email";s:0:"";s:14:"woo_custom_css";s:0:"";s:12:"woo_comments";s:4:"post";s:16:"woo_post_content";s:7:"excerpt";s:14:"woo_body_color";s:0:"";s:12:"woo_body_img";s:0:"";s:15:"woo_body_repeat";s:9:"no-repeat";s:12:"woo_body_pos";s:8:"top left";s:14:"woo_link_color";s:0:"";s:20:"woo_link_hover_color";s:0:"";s:16:"woo_button_color";s:0:"";s:14:"woo_typography";s:5:"false";s:13:"woo_font_body";a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#555555";}s:12:"woo_font_nav";a:5:{s:4:"size";s:2:"14";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#555555";}s:19:"woo_font_post_title";a:5:{s:4:"size";s:2:"24";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#222222";}s:18:"woo_font_post_meta";a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#999999";}s:19:"woo_font_post_entry";a:5:{s:4:"size";s:2:"14";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#555555";}s:22:"woo_font_widget_titles";a:5:{s:4:"size";s:2:"16";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#555555";}s:19:"woo_footer_sidebars";s:1:"4";s:15:"woo_footer_left";s:5:"false";s:20:"woo_footer_left_text";s:0:"";s:16:"woo_footer_right";s:5:"false";s:21:"woo_footer_right_text";s:0:"";s:25:"woo_connect_newsletter_id";s:0:"";s:19:"woo_connect_twitter";s:0:"";s:20:"woo_connect_facebook";s:36:"http://www.facebook.com/UniformesCia";s:19:"woo_connect_youtube";s:0:"";s:18:"woo_connect_flickr";s:0:"";s:20:"woo_connect_linkedin";s:0:"";s:21:"woo_connect_delicious";s:0:"";s:22:"woo_connect_googleplus";s:0:"";}', 'yes'),
(141, 0, 'woo_template', 'a:46:{i:0;a:3:{s:4:"name";s:16:"General Settings";s:4:"type";s:7:"heading";s:4:"icon";s:7:"general";}i:1;a:6:{s:4:"name";s:16:"Theme Stylesheet";s:4:"desc";s:44:"Select your themes alternative color scheme.";s:2:"id";s:18:"woo_alt_stylesheet";s:3:"std";s:11:"default.css";s:4:"type";s:6:"select";s:7:"options";a:2:{i:0;s:8:"dark.css";i:1;s:11:"default.css";}}i:2;a:5:{s:4:"name";s:11:"Custom Logo";s:4:"desc";s:63:"Upload a logo for your theme, or specify an image URL directly.";s:2:"id";s:8:"woo_logo";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:3;a:6:{s:4:"name";s:10:"Text Title";s:4:"desc";s:158:"Enable text-based Site Title and Tagline. Setup title & tagline in <a href=''http://localhost/uniformesecia/wp-admin/options-general.php''>General Settings</a>.";s:2:"id";s:13:"woo_texttitle";s:3:"std";s:5:"false";s:5:"class";s:9:"collapsed";s:4:"type";s:8:"checkbox";}i:4;a:6:{s:4:"name";s:10:"Site Title";s:4:"desc";s:33:"Change the site title typography.";s:2:"id";s:19:"woo_font_site_title";s:3:"std";a:5:{s:4:"size";s:2:"42";s:4:"unit";s:2:"px";s:4:"face";s:4:"Lato";s:5:"style";s:6:"normal";s:5:"color";s:7:"#121228";}s:5:"class";s:6:"hidden";s:4:"type";s:10:"typography";}i:5;a:6:{s:4:"name";s:16:"Site Description";s:4:"desc";s:53:"Enable the site description/tagline under site title.";s:2:"id";s:11:"woo_tagline";s:5:"class";s:6:"hidden";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:6;a:6:{s:4:"name";s:16:"Site Description";s:4:"desc";s:39:"Change the site description typography.";s:2:"id";s:16:"woo_font_tagline";s:3:"std";a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:4:"Lato";s:5:"style";s:0:"";s:5:"color";s:7:"#999999";}s:5:"class";s:11:"hidden last";s:4:"type";s:10:"typography";}i:7;a:5:{s:4:"name";s:14:"Custom Favicon";s:4:"desc";s:113:"Upload a 16px x 16px <a href=''http://www.faviconr.com/''>ico image</a> that will represent your website''s favicon.";s:2:"id";s:18:"woo_custom_favicon";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:8;a:5:{s:4:"name";s:13:"Tracking Code";s:4:"desc";s:117:"Paste your Google Analytics (or other) tracking code here. This will be added into the footer template of your theme.";s:2:"id";s:20:"woo_google_analytics";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:9;a:5:{s:4:"name";s:7:"RSS URL";s:4:"desc";s:51:"Enter your preferred RSS URL. (Feedburner or other)";s:2:"id";s:12:"woo_feed_url";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:10;a:5:{s:4:"name";s:23:"E-Mail Subscription URL";s:4:"desc";s:67:"Enter your preferred E-mail subscription URL. (Feedburner or other)";s:2:"id";s:19:"woo_subscribe_email";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:11;a:5:{s:4:"name";s:19:"Contact Form E-Mail";s:4:"desc";s:156:"Enter your E-mail address to use on the Contact Form Page Template. Add the contact form by adding a new page and selecting ''Contact Form'' as page template.";s:2:"id";s:21:"woo_contactform_email";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:12;a:5:{s:4:"name";s:10:"Custom CSS";s:4:"desc";s:62:"Quickly add some CSS to your theme by adding it to this block.";s:2:"id";s:14:"woo_custom_css";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:13;a:5:{s:4:"name";s:18:"Post/Page Comments";s:4:"desc";s:69:"Select if you want to enable/disable comments on posts and/or pages. ";s:2:"id";s:12:"woo_comments";s:4:"type";s:7:"select2";s:7:"options";a:4:{s:4:"post";s:10:"Posts Only";s:4:"page";s:10:"Pages Only";s:4:"both";s:13:"Pages / Posts";s:4:"none";s:4:"None";}}i:14;a:5:{s:4:"name";s:12:"Post Content";s:4:"desc";s:69:"Select if you want to show the full content or the excerpt on posts. ";s:2:"id";s:16:"woo_post_content";s:4:"type";s:7:"select2";s:7:"options";a:2:{s:7:"excerpt";s:11:"The Excerpt";s:7:"content";s:12:"Full Content";}}i:15;a:3:{s:4:"name";s:15:"Styling Options";s:4:"type";s:7:"heading";s:4:"icon";s:7:"styling";}i:16;a:5:{s:4:"name";s:16:"Background Color";s:4:"desc";s:66:"Pick a custom color for background color of the theme e.g. #697e09";s:2:"id";s:14:"woo_body_color";s:3:"std";s:0:"";s:4:"type";s:5:"color";}i:17;a:5:{s:4:"name";s:16:"Background Image";s:4:"desc";s:42:"Upload an image for the theme''s background";s:2:"id";s:12:"woo_body_img";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:18;a:6:{s:4:"name";s:23:"Background Image Repeat";s:4:"desc";s:56:"Select how you would like to repeat the background-image";s:2:"id";s:15:"woo_body_repeat";s:3:"std";s:9:"no-repeat";s:4:"type";s:6:"select";s:7:"options";a:4:{i:0;s:9:"no-repeat";i:1;s:8:"repeat-x";i:2;s:8:"repeat-y";i:3;s:6:"repeat";}}i:19;a:6:{s:4:"name";s:25:"Background Image Position";s:4:"desc";s:52:"Select how you would like to position the background";s:2:"id";s:12:"woo_body_pos";s:3:"std";s:3:"top";s:4:"type";s:6:"select";s:7:"options";a:9:{i:0;s:8:"top left";i:1;s:10:"top center";i:2;s:9:"top right";i:3;s:11:"center left";i:4;s:13:"center center";i:5;s:12:"center right";i:6;s:11:"bottom left";i:7;s:13:"bottom center";i:8;s:12:"bottom right";}}i:20;a:5:{s:4:"name";s:10:"Link Color";s:4:"desc";s:66:"Pick a custom color for links or add a hex color code e.g. #697e09";s:2:"id";s:14:"woo_link_color";s:3:"std";s:0:"";s:4:"type";s:5:"color";}i:21;a:5:{s:4:"name";s:16:"Link Hover Color";s:4:"desc";s:72:"Pick a custom color for links hover or add a hex color code e.g. #697e09";s:2:"id";s:20:"woo_link_hover_color";s:3:"std";s:0:"";s:4:"type";s:5:"color";}i:22;a:5:{s:4:"name";s:12:"Button Color";s:4:"desc";s:68:"Pick a custom color for buttons or add a hex color code e.g. #697e09";s:2:"id";s:16:"woo_button_color";s:3:"std";s:0:"";s:4:"type";s:5:"color";}i:23;a:3:{s:4:"name";s:10:"Typography";s:4:"type";s:7:"heading";s:4:"icon";s:10:"typography";}i:24;a:5:{s:4:"name";s:24:"Enable Custom Typography";s:4:"desc";s:100:"Enable the use of custom typography for your site. Custom styling will be output in your sites HEAD.";s:2:"id";s:14:"woo_typography";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:25;a:5:{s:4:"name";s:18:"General Typography";s:4:"desc";s:24:"Change the general font.";s:2:"id";s:13:"woo_font_body";s:3:"std";a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:0:"";s:5:"color";s:7:"#555555";}s:4:"type";s:10:"typography";}i:26;a:5:{s:4:"name";s:10:"Navigation";s:4:"desc";s:27:"Change the navigation font.";s:2:"id";s:12:"woo_font_nav";s:3:"std";a:5:{s:4:"size";s:2:"14";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:0:"";s:5:"color";s:7:"#555555";}s:4:"type";s:10:"typography";}i:27;a:5:{s:4:"name";s:10:"Post Title";s:4:"desc";s:22:"Change the post title.";s:2:"id";s:19:"woo_font_post_title";s:3:"std";a:5:{s:4:"size";s:2:"24";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:4:"bold";s:5:"color";s:7:"#222222";}s:4:"type";s:10:"typography";}i:28;a:5:{s:4:"name";s:9:"Post Meta";s:4:"desc";s:21:"Change the post meta.";s:2:"id";s:18:"woo_font_post_meta";s:3:"std";a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:0:"";s:5:"color";s:7:"#999999";}s:4:"type";s:10:"typography";}i:29;a:5:{s:4:"name";s:10:"Post Entry";s:4:"desc";s:22:"Change the post entry.";s:2:"id";s:19:"woo_font_post_entry";s:3:"std";a:5:{s:4:"size";s:2:"14";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:0:"";s:5:"color";s:7:"#555555";}s:4:"type";s:10:"typography";}i:30;a:5:{s:4:"name";s:13:"Widget Titles";s:4:"desc";s:25:"Change the widget titles.";s:2:"id";s:22:"woo_font_widget_titles";s:3:"std";a:5:{s:4:"size";s:2:"16";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:4:"bold";s:5:"color";s:7:"#555555";}s:4:"type";s:10:"typography";}i:31;a:3:{s:4:"name";s:20:"Footer Customization";s:4:"type";s:7:"heading";s:4:"icon";s:6:"footer";}i:32;a:6:{s:4:"name";s:19:"Footer Widget Areas";s:4:"desc";s:56:"Select how many footer widget areas you want to display.";s:2:"id";s:19:"woo_footer_sidebars";s:3:"std";s:1:"4";s:4:"type";s:6:"images";s:7:"options";a:5:{i:0;s:87:"http://localhost/uniformesecia/wp-content/themes/rustik/functions/images/layout-off.png";i:1;s:93:"http://localhost/uniformesecia/wp-content/themes/rustik/functions/images/footer-widgets-1.png";i:2;s:93:"http://localhost/uniformesecia/wp-content/themes/rustik/functions/images/footer-widgets-2.png";i:3;s:93:"http://localhost/uniformesecia/wp-content/themes/rustik/functions/images/footer-widgets-3.png";i:4;s:93:"http://localhost/uniformesecia/wp-content/themes/rustik/functions/images/footer-widgets-4.png";}}i:33;a:5:{s:4:"name";s:27:"Enable Custom Footer (Left)";s:4:"desc";s:58:"Activate to add the custom text below to the theme footer.";s:2:"id";s:15:"woo_footer_left";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:34;a:5:{s:4:"name";s:18:"Custom Text (Left)";s:4:"desc";s:66:"Custom HTML and Text that will appear in the footer of your theme.";s:2:"id";s:20:"woo_footer_left_text";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:35;a:5:{s:4:"name";s:54:"Enable HomePage Custom Footer (Bootom Right of Banner)";s:4:"desc";s:61:"Activate to add the custom text below to the homepage banner.";s:2:"id";s:16:"woo_footer_right";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:36;a:5:{s:4:"name";s:36:"Custom Text (Bootom Right of Banner)";s:4:"desc";s:71:"Custom HTML and Text that will appear in the bottom of homepage banner.";s:2:"id";s:21:"woo_footer_right_text";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:37;a:3:{s:4:"name";s:19:"Subscribe & Connect";s:4:"type";s:7:"heading";s:4:"icon";s:7:"connect";}i:38;a:5:{s:4:"name";s:35:"Subscribe By E-mail ID (Feedburner)";s:4:"desc";s:146:"Enter your <a href=''http://www.google.com/support/feedburner/bin/answer.py?hl=en&answer=78982''>Feedburner ID</a> for the e-mail subscription form.";s:2:"id";s:25:"woo_connect_newsletter_id";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:39;a:5:{s:4:"name";s:11:"Twitter URL";s:4:"desc";s:99:"Enter your  <a href=''http://www.twitter.com/''>Twitter</a> URL e.g. http://www.twitter.com/woothemes";s:2:"id";s:19:"woo_connect_twitter";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:40;a:5:{s:4:"name";s:12:"Facebook URL";s:4:"desc";s:102:"Enter your  <a href=''http://www.facebook.com/''>Facebook</a> URL e.g. http://www.facebook.com/woothemes";s:2:"id";s:20:"woo_connect_facebook";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:41;a:5:{s:4:"name";s:11:"YouTube URL";s:4:"desc";s:99:"Enter your  <a href=''http://www.youtube.com/''>YouTube</a> URL e.g. http://www.youtube.com/woothemes";s:2:"id";s:19:"woo_connect_youtube";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:42;a:5:{s:4:"name";s:10:"Flickr URL";s:4:"desc";s:96:"Enter your  <a href=''http://www.flickr.com/''>Flickr</a> URL e.g. http://www.flickr.com/woothemes";s:2:"id";s:18:"woo_connect_flickr";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:43;a:5:{s:4:"name";s:12:"LinkedIn URL";s:4:"desc";s:113:"Enter your  <a href=''http://www.www.linkedin.com.com/''>LinkedIn</a> URL e.g. http://www.linkedin.com/in/woothemes";s:2:"id";s:20:"woo_connect_linkedin";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:44;a:5:{s:4:"name";s:13:"Delicious URL";s:4:"desc";s:104:"Enter your <a href=''http://www.delicious.com/''>Delicious</a> URL e.g. http://www.delicious.com/woothemes";s:2:"id";s:21:"woo_connect_delicious";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:45;a:5:{s:4:"name";s:11:"Google+ URL";s:4:"desc";s:112:"Enter your <a href=''http://plus.google.com/''>Google+</a> URL e.g. https://plus.google.com/104560124403688998123/";s:2:"id";s:22:"woo_connect_googleplus";s:3:"std";s:0:"";s:4:"type";s:4:"text";}}', 'yes'),
(142, 0, 'woo_themename', 'Rustik', 'yes'),
(143, 0, 'woo_shortname', 'woo', 'yes'),
(144, 0, 'woo_manual', 'http://www.woothemes.com/support/theme-documentation/woostore/', 'yes'),
(145, 0, 'woo_custom_template', 'a:1:{i:0;a:6:{s:4:"name";s:7:"_layout";s:3:"std";s:6:"normal";s:5:"label";s:6:"Layout";s:4:"type";s:6:"images";s:4:"desc";s:54:"Select the layout you want on this specific post/page.";s:7:"options";a:4:{s:14:"layout-default";s:87:"http://localhost/uniformesecia/wp-content/themes/rustik/functions/images/layout-off.png";s:11:"layout-full";s:79:"http://localhost/uniformesecia/wp-content/themes/rustik/functions/images/1c.png";s:19:"layout-left-content";s:80:"http://localhost/uniformesecia/wp-content/themes/rustik/functions/images/2cl.png";s:20:"layout-right-content";s:80:"http://localhost/uniformesecia/wp-content/themes/rustik/functions/images/2cr.png";}}}', 'yes'),
(257, 0, 'woo_custom_upload_tracking', 'a:0:{}', 'yes'),
(146, 0, 'recently_activated', 'a:0:{}', 'yes'),
(147, 0, 'nivoslider4wp_width', '980', 'yes'),
(148, 0, 'nivoslider4wp_height', '460', 'yes'),
(149, 0, 'nivoslider4wp_colsBox', '4', 'yes'),
(150, 0, 'nivoslider4wp_rowsBox', '2', 'yes'),
(151, 0, 'nivoslider4wp_animSpeed', '500', 'yes'),
(152, 0, 'nivoslider4wp_effect', 'random', 'yes'),
(153, 0, 'nivoslider4wp_pauseTime', '3000', 'yes'),
(154, 0, 'nivoslider4wp_directionNav', 'false', 'yes'),
(155, 0, 'nivoslider4wp_directionNavHide', 'true', 'yes'),
(156, 0, 'nivoslider4wp_controlNav', 'false', 'yes'),
(157, 0, 'nivoslider4wp_keyboardNav', 'true', 'yes'),
(158, 0, 'nivoslider4wp_pauseOnHover', 'true', 'yes'),
(159, 0, 'nivoslider4wp_manualAdvance', 'false', 'yes'),
(160, 0, 'nivoslider4wp_backgroundCaption', 'ffffff', 'yes'),
(161, 0, 'nivoslider4wp_colorCaption', 'a6a8ac', 'yes'),
(162, 0, 'nivoslider4wp_captionOpacity', '10', 'yes'),
(163, 0, 'nivoslider4wp_nivoslider4wp_js', 'footer', 'yes'),
(164, 0, 'nivoslider4wp_imageQuality', '80', 'yes'),
(165, 0, 'woocommerce_default_country', 'BR:AC', 'yes'),
(166, 0, 'woocommerce_currency', 'BRL', 'yes'),
(167, 0, 'woocommerce_allowed_countries', 'specific', 'yes'),
(168, 0, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:"BR";}', 'yes'),
(169, 0, 'woocommerce_enable_guest_checkout', 'yes', 'yes'),
(170, 0, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'yes'),
(171, 0, 'woocommerce_ship_to_same_address', 'yes', 'yes'),
(172, 0, 'woocommerce_enable_order_comments', 'yes', 'yes'),
(173, 0, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(174, 0, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(175, 0, 'woocommerce_enable_myaccount_registration', 'no', 'yes'),
(176, 0, 'woocommerce_clear_cart_on_logout', 'no', 'yes'),
(177, 0, 'woocommerce_lock_down_admin', 'no', 'yes'),
(178, 0, 'woocommerce_frontend_css', 'yes', 'yes'),
(179, 0, 'woocommerce_demo_store', 'no', 'yes'),
(180, 0, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(181, 0, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(182, 0, 'woocommerce_enable_jquery_ui', 'yes', 'yes'),
(183, 0, 'woocommerce_scripts_position', 'yes', 'yes'),
(184, 0, 'woocommerce_file_download_method', 'force', 'yes'),
(185, 0, 'woocommerce_informal_localisation_type', 'no', 'yes'),
(186, 0, 'woocommerce_sharethis', '', 'yes'),
(187, 0, 'woocommerce_shop_page_id', '7', 'yes'),
(188, 0, 'woocommerce_shop_page_title', 'All Products', 'yes'),
(189, 0, 'woocommerce_terms_page_id', '', 'yes'),
(190, 0, 'woocommerce_menu_logout_link', 'yes', 'yes'),
(191, 0, 'woocommerce_prepend_shop_page_to_urls', 'no', 'yes'),
(192, 0, 'woocommerce_product_category_slug', '', 'yes'),
(193, 0, 'woocommerce_product_tag_slug', '', 'yes'),
(194, 0, 'woocommerce_prepend_shop_page_to_products', 'yes', 'yes'),
(195, 0, 'woocommerce_prepend_category_to_products', 'no', 'yes'),
(196, 0, 'woocommerce_cart_page_id', '8', 'yes'),
(197, 0, 'woocommerce_checkout_page_id', '9', 'yes'),
(198, 0, 'woocommerce_pay_page_id', '15', 'yes'),
(199, 0, 'woocommerce_thanks_page_id', '16', 'yes'),
(200, 0, 'woocommerce_myaccount_page_id', '11', 'yes'),
(201, 0, 'woocommerce_edit_address_page_id', '12', 'yes'),
(202, 0, 'woocommerce_view_order_page_id', '13', 'yes'),
(203, 0, 'woocommerce_change_password_page_id', '14', 'yes'),
(204, 0, 'woocommerce_show_subcategories', 'no', 'yes'),
(205, 0, 'woocommerce_shop_show_subcategories', 'no', 'yes'),
(206, 0, 'woocommerce_hide_products_when_showing_subcategories', 'no', 'yes'),
(207, 0, 'woocommerce_enable_sku', 'yes', 'yes'),
(208, 0, 'woocommerce_enable_weight', 'yes', 'yes'),
(209, 0, 'woocommerce_enable_dimensions', 'yes', 'yes'),
(210, 0, 'woocommerce_enable_dimension_product_attributes', 'yes', 'yes'),
(211, 0, 'woocommerce_weight_unit', 'GBP', 'yes'),
(212, 0, 'woocommerce_dimension_unit', 'cm', 'yes'),
(213, 0, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(214, 0, 'woocommerce_currency_pos', 'left', 'yes'),
(215, 0, 'woocommerce_price_thousand_sep', ',', 'yes'),
(216, 0, 'woocommerce_price_decimal_sep', '.', 'yes'),
(217, 0, 'woocommerce_price_num_decimals', '2', 'yes'),
(218, 0, 'woocommerce_price_trim_zeros', 'yes', 'yes'),
(219, 0, 'woocommerce_manage_stock', 'yes', 'yes'),
(220, 0, 'woocommerce_notify_low_stock', 'yes', 'yes'),
(221, 0, 'woocommerce_notify_no_stock', 'yes', 'yes'),
(222, 0, 'woocommerce_notify_low_stock_amount', '2', 'yes'),
(223, 0, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(224, 0, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(225, 0, 'woocommerce_calc_shipping', 'yes', 'yes'),
(226, 0, 'woocommerce_enable_shipping_calc', 'yes', 'yes'),
(227, 0, 'woocommerce_ship_to_billing_address_only', 'no', 'yes'),
(228, 0, 'woocommerce_calc_taxes', 'yes', 'yes'),
(229, 0, 'woocommerce_prices_include_tax', 'no', 'yes'),
(230, 0, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(231, 0, 'woocommerce_display_cart_prices_excluding_tax', 'yes', 'yes'),
(232, 0, 'woocommerce_display_totals_excluding_tax', 'yes', 'yes'),
(233, 0, 'woocommerce_tax_classes', 'Reduced Rate\nZero Rate', 'yes'),
(234, 0, 'woocommerce_tax_rates', '', 'yes'),
(235, 0, 'woocommerce_new_order_email_recipient', 'jonas.ferreira@gmail.com', 'yes'),
(236, 0, 'woocommerce_stock_email_recipient', 'jonas.ferreira@gmail.com', 'yes'),
(237, 0, 'woocommerce_email_from_name', 'Uniformes &amp; CIA', 'yes'),
(238, 0, 'woocommerce_email_from_address', 'jonas.ferreira@gmail.com', 'yes'),
(239, 0, 'woocommerce_email_header_image', '', 'yes'),
(240, 0, 'woocommerce_email_footer_text', 'Uniformes &amp; CIA - Powered by WooCommerce', 'yes'),
(241, 0, 'woocommerce_email_base_color', '#557da1', 'yes'),
(242, 0, 'woocommerce_email_background_color', '#eeeeee', 'yes'),
(243, 0, 'woocommerce_email_body_background_color', '#fdfdfd', 'yes'),
(244, 0, 'woocommerce_email_text_color', '#505050', 'yes'),
(245, 0, 'woocommerce_shop_slug', 'shop', 'yes'),
(246, 0, 'woocommerce_db_version', '1.3.2.1', 'yes'),
(247, 0, 'woocommerce_installed', '0', 'yes'),
(248, 0, 'skip_install_woocommerce_pages', '1', 'yes'),
(249, 0, 'nivoslider4wp_js', 'head', 'yes'),
(250, 0, '_transient_woocommerce_product_type_2', 'simple', 'yes'),
(251, 0, 'woocommerce_order_tracking_page_id', '10', 'yes'),
(252, 0, 'woocommerce_ga_id', '', 'yes'),
(253, 0, 'woocommerce_ga_standard_tracking_enabled', 'no', 'yes'),
(254, 0, 'woocommerce_ga_ecommerce_tracking_enabled', 'no', 'yes'),
(258, 0, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(259, 0, '_transient_woocommerce_unfiltered_product_ids_post_typeproduct', 'a:0:{}', 'yes'),
(261, 0, 'category_children', 'a:0:{}', 'yes'),
(264, 0, 'woocommerce_flat_rate_settings', 'a:8:{s:7:"enabled";s:3:"yes";s:5:"title";s:9:"Flat Rate";s:12:"availability";s:8:"specific";s:9:"countries";a:1:{i:0;s:2:"BR";}s:4:"type";s:5:"order";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:0:"";s:3:"fee";s:0:"";}', 'yes'),
(265, 0, 'woocommerce_flat_rates', 'a:0:{}', 'yes'),
(266, 0, 'woocommerce_free_shipping_settings', 'a:6:{s:7:"enabled";s:3:"yes";s:5:"title";s:13:"Free Shipping";s:10:"min_amount";s:0:"";s:15:"requires_coupon";s:2:"no";s:12:"availability";s:3:"all";s:9:"countries";s:0:"";}', 'yes'),
(267, 0, 'woo_alt_stylesheet', 'default.css', 'yes'),
(268, 0, 'woo_logo', 'http://localhost/uniformesecia/wp-content/uploads/2012/06/logo2.png', 'yes'),
(269, 0, 'woo_texttitle', 'false', 'yes'),
(270, 0, 'woo_font_site_title', 'a:5:{s:4:"size";s:2:"42";s:4:"unit";s:2:"px";s:4:"face";s:4:"Lato";s:5:"style";s:6:"normal";s:5:"color";s:7:"#121228";}', 'yes'),
(271, 0, 'woo_tagline', 'false', 'yes'),
(272, 0, 'woo_font_tagline', 'a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:4:"Lato";s:5:"style";s:6:"normal";s:5:"color";s:7:"#999999";}', 'yes'),
(273, 0, 'woo_custom_favicon', '', 'yes'),
(274, 0, 'woo_google_analytics', '', 'yes'),
(275, 0, 'woo_feed_url', '', 'yes'),
(276, 0, 'woo_subscribe_email', '', 'yes'),
(277, 0, 'woo_contactform_email', '', 'yes'),
(278, 0, 'woo_custom_css', '', 'yes'),
(279, 0, 'woo_comments', 'post', 'yes'),
(280, 0, 'woo_post_content', 'excerpt', 'yes'),
(281, 0, 'woo_body_color', '', 'yes'),
(282, 0, 'woo_body_img', '', 'yes'),
(283, 0, 'woo_body_repeat', 'no-repeat', 'yes'),
(284, 0, 'woo_body_pos', 'top left', 'yes'),
(285, 0, 'woo_link_color', '', 'yes'),
(286, 0, 'woo_link_hover_color', '', 'yes'),
(287, 0, 'woo_button_color', '', 'yes'),
(288, 0, 'woo_typography', 'false', 'yes'),
(289, 0, 'woo_font_body', 'a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#555555";}', 'yes'),
(290, 0, 'woo_font_nav', 'a:5:{s:4:"size";s:2:"14";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#555555";}', 'yes'),
(291, 0, 'woo_font_post_title', 'a:5:{s:4:"size";s:2:"24";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#222222";}', 'yes'),
(292, 0, 'woo_font_post_meta', 'a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#999999";}', 'yes'),
(293, 0, 'woo_font_post_entry', 'a:5:{s:4:"size";s:2:"14";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#555555";}', 'yes'),
(294, 0, 'woo_font_widget_titles', 'a:5:{s:4:"size";s:2:"16";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#555555";}', 'yes'),
(295, 0, 'woo_footer_sidebars', '4', 'yes'),
(296, 0, 'woo_footer_left', 'false', 'yes'),
(297, 0, 'woo_footer_left_text', '', 'yes'),
(298, 0, 'woo_footer_right', 'false', 'yes'),
(299, 0, 'woo_footer_right_text', '', 'yes'),
(300, 0, 'woo_connect_newsletter_id', '', 'yes'),
(301, 0, 'woo_connect_twitter', '', 'yes'),
(302, 0, 'woo_connect_facebook', 'http://www.facebook.com/UniformesCia', 'yes'),
(303, 0, 'woo_connect_youtube', '', 'yes'),
(304, 0, 'woo_connect_flickr', '', 'yes'),
(305, 0, 'woo_connect_linkedin', '', 'yes'),
(306, 0, 'woo_connect_delicious', '', 'yes'),
(307, 0, 'woo_connect_googleplus', '', 'yes'),
(308, 0, 'sbm_woo_sbm_options', 'a:2:{s:8:"sidebars";a:0:{}s:8:"settings";a:1:{s:7:"infobox";s:4:"show";}}', 'yes'),
(309, 0, 'shop_order_status_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `post_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=139 ;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 8, '_edit_lock', '1339183371:1'),
(3, 8, '_edit_last', '1'),
(4, 8, '_wp_page_template', 'template-fullwidth.php'),
(5, 8, 'seo_follow', 'false'),
(6, 8, 'seo_noindex', 'false'),
(7, 9, '_edit_lock', '1339183381:1'),
(8, 9, '_edit_last', '1'),
(9, 9, '_wp_page_template', 'template-fullwidth.php'),
(10, 9, 'seo_follow', 'false'),
(11, 9, 'seo_noindex', 'false'),
(12, 11, '_edit_lock', '1339183401:1'),
(13, 11, '_edit_last', '1'),
(14, 11, '_wp_page_template', 'template-fullwidth.php'),
(15, 11, 'seo_follow', 'false'),
(16, 11, 'seo_noindex', 'false'),
(17, 10, '_edit_lock', '1339183430:1'),
(18, 10, '_edit_last', '1'),
(19, 10, '_wp_page_template', 'template-fullwidth.php'),
(20, 10, 'seo_follow', 'false'),
(21, 10, 'seo_noindex', 'false'),
(22, 21, '_menu_item_type', 'post_type'),
(23, 21, '_menu_item_menu_item_parent', '0'),
(24, 21, '_menu_item_object_id', '9'),
(25, 21, '_menu_item_object', 'page'),
(26, 21, '_menu_item_target', ''),
(27, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(28, 21, '_menu_item_xfn', ''),
(29, 21, '_menu_item_url', ''),
(51, 24, '_menu_item_object_id', '24'),
(31, 22, '_menu_item_type', 'post_type'),
(32, 22, '_menu_item_menu_item_parent', '0'),
(33, 22, '_menu_item_object_id', '7'),
(34, 22, '_menu_item_object', 'page'),
(35, 22, '_menu_item_target', ''),
(36, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(37, 22, '_menu_item_xfn', ''),
(38, 22, '_menu_item_url', ''),
(50, 24, '_menu_item_menu_item_parent', '0'),
(40, 23, '_menu_item_type', 'post_type'),
(41, 23, '_menu_item_menu_item_parent', '0'),
(42, 23, '_menu_item_object_id', '2'),
(43, 23, '_menu_item_object', 'page'),
(44, 23, '_menu_item_target', ''),
(45, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(46, 23, '_menu_item_xfn', ''),
(47, 23, '_menu_item_url', ''),
(49, 24, '_menu_item_type', 'custom'),
(52, 24, '_menu_item_object', 'custom'),
(53, 24, '_menu_item_target', ''),
(54, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(55, 24, '_menu_item_xfn', ''),
(56, 24, '_menu_item_url', 'index.php'),
(116, 31, '_menu_item_target', ''),
(115, 31, '_menu_item_object', 'category'),
(114, 31, '_menu_item_object_id', '16'),
(113, 31, '_menu_item_menu_item_parent', '0'),
(112, 31, '_menu_item_type', 'taxonomy'),
(67, 26, '_menu_item_type', 'post_type'),
(68, 26, '_menu_item_menu_item_parent', '0'),
(69, 26, '_menu_item_object_id', '10'),
(70, 26, '_menu_item_object', 'page'),
(71, 26, '_menu_item_target', ''),
(72, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(73, 26, '_menu_item_xfn', ''),
(74, 26, '_menu_item_url', ''),
(110, 30, '_menu_item_url', ''),
(76, 27, '_menu_item_type', 'post_type'),
(77, 27, '_menu_item_menu_item_parent', '0'),
(78, 27, '_menu_item_object_id', '9'),
(79, 27, '_menu_item_object', 'page'),
(80, 27, '_menu_item_target', ''),
(81, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(82, 27, '_menu_item_xfn', ''),
(83, 27, '_menu_item_url', ''),
(109, 30, '_menu_item_xfn', ''),
(85, 28, '_menu_item_type', 'post_type'),
(86, 28, '_menu_item_menu_item_parent', '0'),
(87, 28, '_menu_item_object_id', '8'),
(88, 28, '_menu_item_object', 'page'),
(89, 28, '_menu_item_target', ''),
(90, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(91, 28, '_menu_item_xfn', ''),
(92, 28, '_menu_item_url', ''),
(108, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(107, 30, '_menu_item_target', ''),
(106, 30, '_menu_item_object', 'page'),
(105, 30, '_menu_item_object_id', '7'),
(104, 30, '_menu_item_menu_item_parent', '0'),
(103, 30, '_menu_item_type', 'post_type'),
(117, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(118, 31, '_menu_item_xfn', ''),
(119, 31, '_menu_item_url', ''),
(120, 31, '_menu_item_orphaned', '1339189554'),
(121, 32, '_menu_item_type', 'taxonomy'),
(122, 32, '_menu_item_menu_item_parent', '0'),
(123, 32, '_menu_item_object_id', '16'),
(124, 32, '_menu_item_object', 'category'),
(125, 32, '_menu_item_target', ''),
(126, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(127, 32, '_menu_item_xfn', ''),
(128, 32, '_menu_item_url', ''),
(130, 33, '_wp_attached_file', '2012/06/logo.jpg'),
(131, 33, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"604";s:6:"height";s:3:"521";s:14:"hwstring_small";s:23:"height=''96'' width=''111''";s:4:"file";s:16:"2012/06/logo.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:16:"logo-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:16:"logo-300x258.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"258";}s:14:"shop_thumbnail";a:3:{s:4:"file";s:16:"logo-260x224.jpg";s:5:"width";s:3:"260";s:6:"height";s:3:"224";}s:12:"shop_catalog";a:3:{s:4:"file";s:16:"logo-260x224.jpg";s:5:"width";s:3:"260";s:6:"height";s:3:"224";}s:11:"shop_single";a:3:{s:4:"file";s:16:"logo-480x414.jpg";s:5:"width";s:3:"480";s:6:"height";s:3:"414";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(134, 33, '_woocommerce_exclude_image', '0'),
(135, 34, '_wp_attached_file', '2012/06/logo2.png'),
(136, 34, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"276";s:6:"height";s:3:"108";s:14:"hwstring_small";s:23:"height=''50'' width=''128''";s:4:"file";s:17:"2012/06/logo2.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:3:{s:4:"file";s:17:"logo2-150x108.png";s:5:"width";s:3:"150";s:6:"height";s:3:"108";}s:14:"shop_thumbnail";a:3:{s:4:"file";s:17:"logo2-260x101.png";s:5:"width";s:3:"260";s:6:"height";s:3:"101";}s:12:"shop_catalog";a:3:{s:4:"file";s:17:"logo2-260x101.png";s:5:"width";s:3:"260";s:6:"height";s:3:"101";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(137, 34, '_woocommerce_exclude_image', '0'),
(138, 7, '_edit_lock', '1339191586:1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `post_author` bigint(20) unsigned NOT NULL default '0',
  `post_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL default 'publish',
  `comment_status` varchar(20) NOT NULL default 'open',
  `ping_status` varchar(20) NOT NULL default 'open',
  `post_password` varchar(20) NOT NULL default '',
  `post_name` varchar(200) NOT NULL default '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content_filtered` text NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL default '0',
  `guid` varchar(255) NOT NULL default '',
  `menu_order` int(11) NOT NULL default '0',
  `post_type` varchar(20) NOT NULL default 'post',
  `post_mime_type` varchar(100) NOT NULL default '',
  `comment_count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2012-06-08 15:01:41', '2012-06-08 15:01:41', 'Bem-vindo ao WordPress. Este é o seu primeiro artigo. Edite-o ou elimine-o e dê vida ao seu site!', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2012-06-08 15:01:41', '2012-06-08 15:01:41', '', 0, 'http://localhost/uniformesecia/?p=1', 0, 'post', '', 1),
(2, 1, '2012-06-08 15:01:41', '2012-06-08 15:01:41', 'Isto é um exemplo de página. É diferente de um artigo porque fica no mesmo sítio e aparece na navegação do seu site (na maior parte dos temas). O normal é começar com uma página "Acerca de", que apresenta o site aos visitantes. Poderia ser qualquer coisa deste tipo:\n\n<blockquote>Olá! Faço entregas durante o dia, mas estudo para ser actor à noite. Este é o meu site. Vivo em Lisboa, tenho um cão chamado Belarmino e gosto de caipirinhas (e de ver a relva a crescer).</blockquote>\n\n...ou deste:\n\n<blockquote>A Gambuzinos XPTO foi fundada em 1971 e tem, desde então, fornecido gambuzinos da mais alta qualidade aos seus clientes. Localizada em Gotham, a Gambuzinos XPTO emprega mais de 2,000 colaboradores e é um dos pilares da comunidade de Gotham.</blockquote>\n\nVisite <a href="http://localhost/uniformesecia/wp-admin/">o seu painel</a> para apagar esta página ou para criar mais páginas para o seu conteúdo. Divirta-se!', 'Exemplo de página', '', 'publish', 'open', 'open', '', 'pagina-exemplo', '', '', '2012-06-08 15:01:41', '2012-06-08 15:01:41', '', 0, 'http://localhost/uniformesecia/?page_id=2', 0, 'page', '', 0),
(3, 1, '2012-06-08 15:01:56', '0000-00-00 00:00:00', '', 'Rascunho Automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-06-08 15:01:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/uniformesecia/?p=3', 0, 'post', '', 0),
(4, 1, '2012-06-08 15:03:49', '0000-00-00 00:00:00', '', 'Woo Logo', '', 'draft', 'closed', 'closed', '', 'woo-wf-woo_logo', '', '', '2012-06-08 15:03:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/uniformesecia/?post_type=wooframework&p=4', 0, 'wooframework', '', 0),
(5, 1, '2012-06-08 15:03:49', '0000-00-00 00:00:00', '', 'Woo Custom Favicon', '', 'draft', 'closed', 'closed', '', 'woo-wf-woo_custom_favicon', '', '', '2012-06-08 15:03:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/uniformesecia/?post_type=wooframework&p=5', 0, 'wooframework', '', 0),
(6, 1, '2012-06-08 15:03:49', '0000-00-00 00:00:00', '', 'Woo Body Img', '', 'draft', 'closed', 'closed', '', 'woo-wf-woo_body_img', '', '', '2012-06-08 15:03:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/uniformesecia/?post_type=wooframework&p=6', 0, 'wooframework', '', 0),
(7, 1, '2012-06-08 19:22:11', '2012-06-08 19:22:11', '', 'Shop', '', 'publish', 'closed', 'open', '', 'shop', '', '', '2012-06-08 19:22:11', '2012-06-08 19:22:11', '', 0, 'http://localhost/uniformesecia/?page_id=7', 0, 'page', '', 0),
(8, 1, '2012-06-08 19:22:11', '2012-06-08 19:22:11', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'open', '', 'cart', '', '', '2012-06-08 19:23:44', '2012-06-08 19:23:44', '', 0, 'http://localhost/uniformesecia/?page_id=8', 0, 'page', '', 0),
(9, 1, '2012-06-08 19:22:11', '2012-06-08 19:22:11', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'open', '', 'checkout', '', '', '2012-06-08 19:24:52', '2012-06-08 19:24:52', '', 0, 'http://localhost/uniformesecia/?page_id=9', 0, 'page', '', 0),
(10, 1, '2012-06-08 19:22:11', '2012-06-08 19:22:11', '[woocommerce_order_tracking]', 'Track your order', '', 'publish', 'closed', 'open', '', 'order-tracking', '', '', '2012-06-08 19:25:24', '2012-06-08 19:25:24', '', 0, 'http://localhost/uniformesecia/?page_id=10', 0, 'page', '', 0),
(11, 1, '2012-06-08 19:22:11', '2012-06-08 19:22:11', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'open', '', 'my-account', '', '', '2012-06-08 19:25:03', '2012-06-08 19:25:03', '', 0, 'http://localhost/uniformesecia/?page_id=11', 0, 'page', '', 0),
(12, 1, '2012-06-08 19:22:11', '2012-06-08 19:22:11', '[woocommerce_edit_address]', 'Edit My Address', '', 'publish', 'closed', 'open', '', 'edit-address', '', '', '2012-06-08 19:22:11', '2012-06-08 19:22:11', '', 11, 'http://localhost/uniformesecia/?page_id=12', 0, 'page', '', 0),
(13, 1, '2012-06-08 19:22:11', '2012-06-08 19:22:11', '[woocommerce_view_order]', 'View Order', '', 'publish', 'closed', 'open', '', 'view-order', '', '', '2012-06-08 19:22:11', '2012-06-08 19:22:11', '', 11, 'http://localhost/uniformesecia/?page_id=13', 0, 'page', '', 0),
(14, 1, '2012-06-08 19:22:11', '2012-06-08 19:22:11', '[woocommerce_change_password]', 'Change Password', '', 'publish', 'closed', 'open', '', 'change-password', '', '', '2012-06-08 19:22:11', '2012-06-08 19:22:11', '', 11, 'http://localhost/uniformesecia/?page_id=14', 0, 'page', '', 0),
(15, 1, '2012-06-08 19:22:11', '2012-06-08 19:22:11', '[woocommerce_pay]', 'Checkout &rarr; Pay', '', 'publish', 'closed', 'open', '', 'pay', '', '', '2012-06-08 19:22:11', '2012-06-08 19:22:11', '', 9, 'http://localhost/uniformesecia/?page_id=15', 0, 'page', '', 0),
(16, 1, '2012-06-08 19:22:11', '2012-06-08 19:22:11', '[woocommerce_thankyou]', 'Order Received', '', 'publish', 'closed', 'open', '', 'order-received', '', '', '2012-06-08 19:22:11', '2012-06-08 19:22:11', '', 9, 'http://localhost/uniformesecia/?page_id=16', 0, 'page', '', 0),
(17, 1, '2012-06-08 19:22:11', '2012-06-08 19:22:11', '[woocommerce_cart]', 'Cart', '', 'inherit', 'open', 'open', '', '8-revision', '', '', '2012-06-08 19:22:11', '2012-06-08 19:22:11', '', 8, 'http://localhost/uniformesecia/?p=17', 0, 'revision', '', 0),
(18, 1, '2012-06-08 19:22:11', '2012-06-08 19:22:11', '[woocommerce_checkout]', 'Checkout', '', 'inherit', 'open', 'open', '', '9-revision', '', '', '2012-06-08 19:22:11', '2012-06-08 19:22:11', '', 9, 'http://localhost/uniformesecia/?p=18', 0, 'revision', '', 0),
(19, 1, '2012-06-08 19:22:11', '2012-06-08 19:22:11', '[woocommerce_my_account]', 'My Account', '', 'inherit', 'open', 'open', '', '11-revision', '', '', '2012-06-08 19:22:11', '2012-06-08 19:22:11', '', 11, 'http://localhost/uniformesecia/?p=19', 0, 'revision', '', 0),
(20, 1, '2012-06-08 19:22:11', '2012-06-08 19:22:11', '[woocommerce_order_tracking]', 'Track your order', '', 'inherit', 'open', 'open', '', '10-revision', '', '', '2012-06-08 19:22:11', '2012-06-08 19:22:11', '', 10, 'http://localhost/uniformesecia/?p=20', 0, 'revision', '', 0),
(21, 1, '2012-06-08 20:53:57', '2012-06-08 20:53:57', ' ', '', '', 'publish', 'open', 'open', '', '21', '', '', '2012-06-08 21:06:38', '2012-06-08 21:06:38', '', 0, 'http://localhost/uniformesecia/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2012-06-08 20:53:57', '2012-06-08 20:53:57', ' ', '', '', 'publish', 'open', 'open', '', '22', '', '', '2012-06-08 21:06:38', '2012-06-08 21:06:38', '', 0, 'http://localhost/uniformesecia/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2012-06-08 20:53:57', '2012-06-08 20:53:57', ' ', '', '', 'publish', 'open', 'open', '', '23', '', '', '2012-06-08 21:06:38', '2012-06-08 21:06:38', '', 0, 'http://localhost/uniformesecia/?p=23', 4, 'nav_menu_item', '', 0),
(24, 1, '2012-06-08 20:56:30', '2012-06-08 20:56:30', '', 'Página Inicial', '', 'publish', 'open', 'open', '', 'google', '', '', '2012-06-08 21:06:38', '2012-06-08 21:06:38', '', 0, 'http://localhost/uniformesecia/?p=24', 1, 'nav_menu_item', '', 0),
(26, 1, '2012-06-08 20:58:33', '2012-06-08 20:58:33', ' ', '', '', 'publish', 'open', 'open', '', '26', '', '', '2012-06-08 21:04:30', '2012-06-08 21:04:30', '', 0, 'http://localhost/uniformesecia/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2012-06-08 20:58:33', '2012-06-08 20:58:33', ' ', '', '', 'publish', 'open', 'open', '', '27', '', '', '2012-06-08 21:04:30', '2012-06-08 21:04:30', '', 0, 'http://localhost/uniformesecia/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2012-06-08 20:58:33', '2012-06-08 20:58:33', ' ', '', '', 'publish', 'open', 'open', '', '28', '', '', '2012-06-08 21:04:30', '2012-06-08 21:04:30', '', 0, 'http://localhost/uniformesecia/?p=28', 3, 'nav_menu_item', '', 0),
(31, 1, '2012-06-08 21:05:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2012-06-08 21:05:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/uniformesecia/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2012-06-08 21:06:38', '2012-06-08 21:06:38', ' ', '', '', 'publish', 'open', 'open', '', '32', '', '', '2012-06-08 21:06:38', '2012-06-08 21:06:38', '', 0, 'http://localhost/uniformesecia/?p=32', 5, 'nav_menu_item', '', 0),
(30, 1, '2012-06-08 21:00:48', '2012-06-08 21:00:48', ' ', '', '', 'publish', 'open', 'open', '', '30', '', '', '2012-06-08 21:04:30', '2012-06-08 21:04:30', '', 0, 'http://localhost/uniformesecia/?p=30', 4, 'nav_menu_item', '', 0),
(33, 1, '2012-06-08 21:14:46', '2012-06-08 21:14:46', '', 'logo', '', 'inherit', 'open', 'open', '', 'logo', '', '', '2012-06-08 21:14:46', '2012-06-08 21:14:46', '', 6, 'http://localhost/uniformesecia/wp-content/uploads/2012/06/logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2012-06-08 21:22:34', '2012-06-08 21:22:34', '', 'logo2', '', 'inherit', 'open', 'open', '', 'logo2', '', '', '2012-06-08 21:22:34', '2012-06-08 21:22:34', '', 4, 'http://localhost/uniformesecia/wp-content/uploads/2012/06/logo2.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2012-06-08 21:41:40', '0000-00-00 00:00:00', '', 'Rascunho Automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-06-08 21:41:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/uniformesecia/?page_id=35', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `slug` varchar(200) NOT NULL default '',
  `term_group` bigint(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Blogroll', 'blogroll', 0),
(3, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0),
(7, 'pending', 'pending', 0),
(8, 'failed', 'failed', 0),
(9, 'on-hold', 'on-hold', 0),
(10, 'processing', 'processing', 0),
(11, 'completed', 'completed', 0),
(12, 'refunded', 'refunded', 0),
(13, 'cancelled', 'cancelled', 0),
(14, 'Footer Menu', 'footer-menu', 0),
(15, 'Main Menu', 'main-menu', 0),
(16, 'Blog', 'blog', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL default '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL default '0',
  `term_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(1, 1, 0),
(21, 15, 0),
(22, 15, 0),
(23, 15, 0),
(24, 15, 0),
(32, 15, 0),
(26, 14, 0),
(27, 14, 0),
(28, 14, 0),
(30, 14, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL auto_increment,
  `term_id` bigint(20) unsigned NOT NULL default '0',
  `taxonomy` varchar(32) NOT NULL default '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL default '0',
  `count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'link_category', '', 0, 7),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'shop_order_status', '', 0, 0),
(8, 8, 'shop_order_status', '', 0, 0),
(9, 9, 'shop_order_status', '', 0, 0),
(10, 10, 'shop_order_status', '', 0, 0),
(11, 11, 'shop_order_status', '', 0, 0),
(12, 12, 'shop_order_status', '', 0, 0),
(13, 13, 'shop_order_status', '', 0, 0),
(14, 14, 'nav_menu', '', 0, 4),
(15, 15, 'nav_menu', '', 0, 5),
(16, 16, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL auto_increment,
  `user_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(15, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_cat";i:3;s:15:"add-product_tag";}'),
(17, 1, 'nav_menu_recently_edited', '15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `user_login` varchar(60) NOT NULL default '',
  `user_pass` varchar(64) NOT NULL default '',
  `user_nicename` varchar(50) NOT NULL default '',
  `user_email` varchar(100) NOT NULL default '',
  `user_url` varchar(100) NOT NULL default '',
  `user_registered` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL default '',
  `user_status` int(11) NOT NULL default '0',
  `display_name` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BhN03JSJQmr2qFpIbPdO8ku6smYJJn/', 'admin', 'jonas.ferreira@gmail.com', '', '2012-06-08 15:01:41', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` mediumint(9) NOT NULL auto_increment,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` longtext,
  `attribute_type` varchar(200) NOT NULL,
  PRIMARY KEY  (`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `wp_woocommerce_attribute_taxonomies`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `product_id` mediumint(9) NOT NULL,
  `order_id` mediumint(9) NOT NULL default '0',
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` mediumint(9) default NULL,
  `downloads_remaining` varchar(9) default NULL,
  PRIMARY KEY  (`product_id`,`order_id`,`order_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wp_woocommerce_downloadable_product_permissions`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL auto_increment,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `wp_woocommerce_termmeta`
--

INSERT INTO `wp_woocommerce_termmeta` (`meta_id`, `woocommerce_term_id`, `meta_key`, `meta_value`) VALUES
(1, 14, 'order', '2'),
(2, 15, 'order', '1'),
(3, 16, 'order', '1'),
(4, 1, 'order', '2');
