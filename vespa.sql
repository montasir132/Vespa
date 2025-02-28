-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 28, 2025 at 03:11 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vespa`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2025-01-30 12:42:14', '2025-01-30 12:42:14', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:12:{i:1740757335;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1740789750;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1740793333;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1740795133;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1740796933;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1740832935;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1740832950;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1740832955;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1741265154;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1741276347;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1741351335;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost/wordpress_custom/vespa', 'on'),
(3, 'home', 'http://localhost/wordpress_custom/vespa', 'on'),
(4, 'blogname', 'Vespa', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'montasiralam132@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '0', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'vespa', 'on'),
(42, 'stylesheet', 'vespa', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '0', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1753792933', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '58975', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '1', 'off'),
(104, 'user_count', '1', 'off'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.7.1\";s:5:\"files\";a:540:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:20:\"query/editor-rtl.css\";i:389;s:24:\"query/editor-rtl.min.css\";i:390;s:16:\"query/editor.css\";i:391;s:20:\"query/editor.min.css\";i:392;s:19:\"quote/style-rtl.css\";i:393;s:23:\"quote/style-rtl.min.css\";i:394;s:15:\"quote/style.css\";i:395;s:19:\"quote/style.min.css\";i:396;s:19:\"quote/theme-rtl.css\";i:397;s:23:\"quote/theme-rtl.min.css\";i:398;s:15:\"quote/theme.css\";i:399;s:19:\"quote/theme.min.css\";i:400;s:23:\"read-more/style-rtl.css\";i:401;s:27:\"read-more/style-rtl.min.css\";i:402;s:19:\"read-more/style.css\";i:403;s:23:\"read-more/style.min.css\";i:404;s:18:\"rss/editor-rtl.css\";i:405;s:22:\"rss/editor-rtl.min.css\";i:406;s:14:\"rss/editor.css\";i:407;s:18:\"rss/editor.min.css\";i:408;s:17:\"rss/style-rtl.css\";i:409;s:21:\"rss/style-rtl.min.css\";i:410;s:13:\"rss/style.css\";i:411;s:17:\"rss/style.min.css\";i:412;s:21:\"search/editor-rtl.css\";i:413;s:25:\"search/editor-rtl.min.css\";i:414;s:17:\"search/editor.css\";i:415;s:21:\"search/editor.min.css\";i:416;s:20:\"search/style-rtl.css\";i:417;s:24:\"search/style-rtl.min.css\";i:418;s:16:\"search/style.css\";i:419;s:20:\"search/style.min.css\";i:420;s:20:\"search/theme-rtl.css\";i:421;s:24:\"search/theme-rtl.min.css\";i:422;s:16:\"search/theme.css\";i:423;s:20:\"search/theme.min.css\";i:424;s:24:\"separator/editor-rtl.css\";i:425;s:28:\"separator/editor-rtl.min.css\";i:426;s:20:\"separator/editor.css\";i:427;s:24:\"separator/editor.min.css\";i:428;s:23:\"separator/style-rtl.css\";i:429;s:27:\"separator/style-rtl.min.css\";i:430;s:19:\"separator/style.css\";i:431;s:23:\"separator/style.min.css\";i:432;s:23:\"separator/theme-rtl.css\";i:433;s:27:\"separator/theme-rtl.min.css\";i:434;s:19:\"separator/theme.css\";i:435;s:23:\"separator/theme.min.css\";i:436;s:24:\"shortcode/editor-rtl.css\";i:437;s:28:\"shortcode/editor-rtl.min.css\";i:438;s:20:\"shortcode/editor.css\";i:439;s:24:\"shortcode/editor.min.css\";i:440;s:24:\"site-logo/editor-rtl.css\";i:441;s:28:\"site-logo/editor-rtl.min.css\";i:442;s:20:\"site-logo/editor.css\";i:443;s:24:\"site-logo/editor.min.css\";i:444;s:23:\"site-logo/style-rtl.css\";i:445;s:27:\"site-logo/style-rtl.min.css\";i:446;s:19:\"site-logo/style.css\";i:447;s:23:\"site-logo/style.min.css\";i:448;s:27:\"site-tagline/editor-rtl.css\";i:449;s:31:\"site-tagline/editor-rtl.min.css\";i:450;s:23:\"site-tagline/editor.css\";i:451;s:27:\"site-tagline/editor.min.css\";i:452;s:26:\"site-tagline/style-rtl.css\";i:453;s:30:\"site-tagline/style-rtl.min.css\";i:454;s:22:\"site-tagline/style.css\";i:455;s:26:\"site-tagline/style.min.css\";i:456;s:25:\"site-title/editor-rtl.css\";i:457;s:29:\"site-title/editor-rtl.min.css\";i:458;s:21:\"site-title/editor.css\";i:459;s:25:\"site-title/editor.min.css\";i:460;s:24:\"site-title/style-rtl.css\";i:461;s:28:\"site-title/style-rtl.min.css\";i:462;s:20:\"site-title/style.css\";i:463;s:24:\"site-title/style.min.css\";i:464;s:26:\"social-link/editor-rtl.css\";i:465;s:30:\"social-link/editor-rtl.min.css\";i:466;s:22:\"social-link/editor.css\";i:467;s:26:\"social-link/editor.min.css\";i:468;s:27:\"social-links/editor-rtl.css\";i:469;s:31:\"social-links/editor-rtl.min.css\";i:470;s:23:\"social-links/editor.css\";i:471;s:27:\"social-links/editor.min.css\";i:472;s:26:\"social-links/style-rtl.css\";i:473;s:30:\"social-links/style-rtl.min.css\";i:474;s:22:\"social-links/style.css\";i:475;s:26:\"social-links/style.min.css\";i:476;s:21:\"spacer/editor-rtl.css\";i:477;s:25:\"spacer/editor-rtl.min.css\";i:478;s:17:\"spacer/editor.css\";i:479;s:21:\"spacer/editor.min.css\";i:480;s:20:\"spacer/style-rtl.css\";i:481;s:24:\"spacer/style-rtl.min.css\";i:482;s:16:\"spacer/style.css\";i:483;s:20:\"spacer/style.min.css\";i:484;s:20:\"table/editor-rtl.css\";i:485;s:24:\"table/editor-rtl.min.css\";i:486;s:16:\"table/editor.css\";i:487;s:20:\"table/editor.min.css\";i:488;s:19:\"table/style-rtl.css\";i:489;s:23:\"table/style-rtl.min.css\";i:490;s:15:\"table/style.css\";i:491;s:19:\"table/style.min.css\";i:492;s:19:\"table/theme-rtl.css\";i:493;s:23:\"table/theme-rtl.min.css\";i:494;s:15:\"table/theme.css\";i:495;s:19:\"table/theme.min.css\";i:496;s:24:\"tag-cloud/editor-rtl.css\";i:497;s:28:\"tag-cloud/editor-rtl.min.css\";i:498;s:20:\"tag-cloud/editor.css\";i:499;s:24:\"tag-cloud/editor.min.css\";i:500;s:23:\"tag-cloud/style-rtl.css\";i:501;s:27:\"tag-cloud/style-rtl.min.css\";i:502;s:19:\"tag-cloud/style.css\";i:503;s:23:\"tag-cloud/style.min.css\";i:504;s:28:\"template-part/editor-rtl.css\";i:505;s:32:\"template-part/editor-rtl.min.css\";i:506;s:24:\"template-part/editor.css\";i:507;s:28:\"template-part/editor.min.css\";i:508;s:27:\"template-part/theme-rtl.css\";i:509;s:31:\"template-part/theme-rtl.min.css\";i:510;s:23:\"template-part/theme.css\";i:511;s:27:\"template-part/theme.min.css\";i:512;s:30:\"term-description/style-rtl.css\";i:513;s:34:\"term-description/style-rtl.min.css\";i:514;s:26:\"term-description/style.css\";i:515;s:30:\"term-description/style.min.css\";i:516;s:27:\"text-columns/editor-rtl.css\";i:517;s:31:\"text-columns/editor-rtl.min.css\";i:518;s:23:\"text-columns/editor.css\";i:519;s:27:\"text-columns/editor.min.css\";i:520;s:26:\"text-columns/style-rtl.css\";i:521;s:30:\"text-columns/style-rtl.min.css\";i:522;s:22:\"text-columns/style.css\";i:523;s:26:\"text-columns/style.min.css\";i:524;s:19:\"verse/style-rtl.css\";i:525;s:23:\"verse/style-rtl.min.css\";i:526;s:15:\"verse/style.css\";i:527;s:19:\"verse/style.min.css\";i:528;s:20:\"video/editor-rtl.css\";i:529;s:24:\"video/editor-rtl.min.css\";i:530;s:16:\"video/editor.css\";i:531;s:20:\"video/editor.min.css\";i:532;s:19:\"video/style-rtl.css\";i:533;s:23:\"video/style-rtl.min.css\";i:534;s:15:\"video/style.css\";i:535;s:19:\"video/style.min.css\";i:536;s:19:\"video/theme-rtl.css\";i:537;s:23:\"video/theme-rtl.min.css\";i:538;s:15:\"video/theme.css\";i:539;s:19:\"video/theme.min.css\";}}', 'on'),
(125, 'recovery_keys', 'a:0:{}', 'off'),
(126, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1738242912;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(127, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"8c7d46a72d7d4591fc1dd9485bedb304\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(140, 'can_compress_scripts', '1', 'on'),
(153, 'finished_updating_comment_type', '1', 'auto'),
(159, 'current_theme', 'Vespa', 'auto'),
(160, 'theme_mods_vespa', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(161, 'theme_switched', '', 'auto'),
(183, 'recovery_mode_email_last_sent', '1738251381', 'auto'),
(187, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(188, 'recently_activated', 'a:0:{}', 'off'),
(193, 'acf_first_activated_version', '6.3.12', 'on'),
(194, 'acf_site_health', '{\"version\":\"6.3.12\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.7.2\",\"mysql_version\":\"8.0.30\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Vespa\",\"version\":\"3.0.3\",\"theme_uri\":\"https:\\/\\/montasiralam.xyz\\/vespa\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.3.12\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"}},\"ui_field_groups\":\"8\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"image\":4,\"textarea\":4,\"text\":12},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"11\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1738252347,\"event_first_created_field_group\":1738252865,\"last_updated\":1740751171}', 'off'),
(196, 'acf_version', '6.3.12', 'auto'),
(229, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'auto'),
(230, '_transient_health-check-site-status-result', '{\"good\":19,\"recommended\":4,\"critical\":0}', 'on'),
(271, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1740751168;s:15:\"version_checked\";s:5:\"6.7.2\";s:12:\"translations\";a:0:{}}', 'off'),
(273, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"montasiralam132@gmail.com\";s:7:\"version\";s:5:\"6.7.2\";s:9:\"timestamp\";i:1739445270;}', 'off'),
(292, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1740751170;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"6.3.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.12.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3207824\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3207824\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}}s:7:\"checked\";a:1:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"6.3.12\";}}', 'off'),
(293, '_site_transient_timeout_php_check_fe7d39417db7b9047896cfef373da8f7', '1741095903', 'off'),
(294, '_site_transient_php_check_fe7d39417db7b9047896cfef373da8f7', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(297, '_site_transient_timeout_browser_6dbb10952a38c11d19e2648023d5055b', '1741096377', 'off'),
(298, '_site_transient_browser_6dbb10952a38c11d19e2648023d5055b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"133.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(299, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1740751170;s:7:\"checked\";a:1:{s:5:\"vespa\";s:5:\"3.0.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(300, 'redux_version_upgraded_from', '3.6.18', 'auto'),
(301, 'redux_demo', 'a:70:{s:12:\"opt-checkbox\";s:1:\"1\";s:15:\"opt-multi-check\";a:3:{i:1;s:1:\"1\";i:2;s:1:\"0\";i:3;s:1:\"0\";}s:9:\"opt-radio\";s:1:\"2\";s:12:\"opt-sortable\";a:3:{s:8:\"Text One\";s:6:\"Item 1\";s:8:\"Text Two\";s:6:\"Item 2\";s:10:\"Text Three\";s:6:\"Item 3\";}s:18:\"opt-check-sortable\";a:3:{s:3:\"cb1\";b:0;s:3:\"cb2\";b:1;s:3:\"cb3\";b:0;}s:12:\"text-example\";s:12:\"Default Text\";s:17:\"text-example-hint\";s:12:\"Default Text\";s:12:\"opt-textarea\";s:12:\"Default Text\";s:10:\"opt-editor\";s:27:\"Powered by Redux Framework.\";s:15:\"opt-editor-tiny\";s:27:\"Powered by Redux Framework.\";s:18:\"opt-ace-editor-css\";s:29:\"#header{\n   margin: 0 auto;\n}\";s:17:\"opt-ace-editor-js\";s:39:\"jQuery(document).ready(function(){\n\n});\";s:18:\"opt-ace-editor-php\";s:28:\"<?php\n    echo \"PHP String\";\";s:15:\"opt-color-title\";s:7:\"#000000\";s:16:\"opt-color-footer\";s:7:\"#dd9933\";s:16:\"opt-color-header\";a:2:{s:4:\"from\";s:7:\"#1e73be\";s:2:\"to\";s:7:\"#00897e\";}s:14:\"opt-color-rgba\";a:2:{s:5:\"color\";s:7:\"#7e33dd\";s:5:\"alpha\";s:2:\".8\";}s:14:\"opt-link-color\";a:3:{s:7:\"regular\";s:4:\"#aaa\";s:5:\"hover\";s:4:\"#bbb\";s:6:\"active\";s:4:\"#ccc\";}s:17:\"opt-palette-color\";s:3:\"red\";s:17:\"opt-header-border\";a:6:{s:12:\"border-color\";s:7:\"#1e73be\";s:12:\"border-style\";s:5:\"solid\";s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";}s:26:\"opt-header-border-expanded\";a:6:{s:12:\"border-color\";s:7:\"#1e73be\";s:12:\"border-style\";s:5:\"solid\";s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";}s:14:\"opt-dimensions\";a:2:{s:5:\"width\";i:200;s:6:\"height\";i:100;}s:20:\"opt-dimensions-width\";a:2:{s:5:\"width\";i:200;s:6:\"height\";i:100;}s:11:\"opt-spacing\";a:4:{s:10:\"margin-top\";s:3:\"1px\";s:12:\"margin-right\";s:3:\"2px\";s:13:\"margin-bottom\";s:3:\"3px\";s:11:\"margin-left\";s:3:\"4px\";}s:20:\"opt-spacing-expanded\";a:4:{s:10:\"margin-top\";s:3:\"1px\";s:12:\"margin-right\";s:3:\"2px\";s:13:\"margin-bottom\";s:3:\"3px\";s:11:\"margin-left\";s:3:\"4px\";}s:9:\"opt-media\";a:1:{s:3:\"url\";s:53:\"https://s.wordpress.org/style/images/codeispoetry.png\";}s:14:\"opt-button-set\";s:1:\"2\";s:20:\"opt-button-set-multi\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:9:\"switch-on\";b:1;s:10:\"switch-off\";b:0;s:13:\"switch-parent\";i:0;s:13:\"switch-child1\";b:0;s:13:\"switch-child2\";b:0;s:10:\"opt-select\";s:1:\"2\";s:21:\"opt-select-stylesheet\";s:11:\"default.css\";s:19:\"opt-select-optgroup\";s:1:\"2\";s:16:\"opt-multi-select\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:23:\"opt-image-select-layout\";s:1:\"2\";s:12:\"opt-patterns\";i:0;s:16:\"opt-image-select\";s:1:\"2\";s:11:\"opt-presets\";i:0;s:22:\"opt-select_image-field\";s:107:\"http://localhost/wordpress_custom/vespa/wp-content/themes/vespa/lib/ReduxCore/../sample/presets/preset2.png\";s:16:\"opt-select-image\";s:111:\"http://localhost/wordpress_custom/vespa/wp-content/themes/vespa/lib/ReduxCore/../sample/patterns/triangular.png\";s:16:\"opt-slider-label\";i:250;s:15:\"opt-slider-text\";i:75;s:17:\"opt-slider-select\";a:2:{i:1;i:100;i:2;i:300;}s:16:\"opt-slider-float\";d:0.5;s:11:\"opt-spinner\";s:2:\"40\";s:19:\"opt-typography-body\";a:4:{s:5:\"color\";s:7:\"#dd9933\";s:9:\"font-size\";s:4:\"30px\";s:11:\"font-family\";s:26:\"Arial,Helvetica,sans-serif\";s:11:\"font-weight\";s:6:\"Normal\";}s:14:\"opt-typography\";a:6:{s:5:\"color\";s:4:\"#333\";s:10:\"font-style\";s:3:\"700\";s:11:\"font-family\";s:4:\"Abel\";s:6:\"google\";b:1;s:9:\"font-size\";s:4:\"33px\";s:11:\"line-height\";s:4:\"40px\";}s:19:\"opt-homepage-layout\";a:3:{s:7:\"enabled\";a:4:{s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}s:8:\"disabled\";a:0:{}s:6:\"backup\";a:0:{}}s:21:\"opt-homepage-layout-2\";a:2:{s:8:\"disabled\";a:2:{s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";}s:7:\"enabled\";a:2:{s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}}s:14:\"opt-text-email\";s:13:\"test@test.com\";s:12:\"opt-text-url\";s:25:\"http://reduxframework.com\";s:16:\"opt-text-numeric\";s:1:\"0\";s:22:\"opt-text-comma-numeric\";s:1:\"0\";s:25:\"opt-text-no-special-chars\";s:1:\"0\";s:20:\"opt-text-str_replace\";s:20:\"This is the default.\";s:21:\"opt-text-preg_replace\";s:1:\"0\";s:24:\"opt-text-custom_validate\";s:1:\"0\";s:20:\"opt-textarea-no-html\";s:27:\"No HTML is allowed in here.\";s:17:\"opt-textarea-html\";s:24:\"HTML is allowed in here.\";s:22:\"opt-textarea-some-html\";s:36:\"<p>Some HTML is allowed in here.</p>\";s:18:\"opt-required-basic\";b:0;s:19:\"opt-required-nested\";b:0;s:29:\"opt-required-nested-buttonset\";s:11:\"button-text\";s:19:\"opt-required-select\";s:10:\"no-sidebar\";s:32:\"opt-required-select-left-sidebar\";s:0:\"\";s:33:\"opt-required-select-right-sidebar\";s:0:\"\";s:19:\"opt-customizer-only\";s:1:\"2\";}', 'auto'),
(302, 'redux_demo-transients', 'a:2:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1740492670;}', 'auto'),
(312, 'vespa', 'a:144:{s:8:\"last_tab\";s:0:\"\";s:10:\"logo_image\";a:9:{s:3:\"url\";s:75:\"http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/logo.png\";s:2:\"id\";s:3:\"120\";s:6:\"height\";s:2:\"51\";s:5:\"width\";s:3:\"107\";s:9:\"thumbnail\";s:75:\"http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/logo.png\";s:5:\"title\";s:4:\"logo\";s:7:\"caption\";s:5:\"vaspa\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:5:\"vaspa\";}s:12:\"banner_title\";s:29:\"Grow your business with Vespa\";s:11:\"banner_text\";s:64:\"We are team of talanted designers making websites with Bootstrap\";s:10:\"banner_btn\";s:11:\"Get Started\";s:15:\"banner_btn_link\";s:6:\"#about\";s:12:\"banner_image\";a:9:{s:3:\"url\";s:79:\"http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/hero-img.png\";s:2:\"id\";s:3:\"109\";s:6:\"height\";s:3:\"430\";s:5:\"width\";s:3:\"578\";s:9:\"thumbnail\";s:87:\"http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/hero-img-150x150.png\";s:5:\"title\";s:8:\"hero-img\";s:7:\"caption\";s:10:\"banner img\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:10:\"banner img\";}s:11:\"about_title\";s:8:\"About Us\";s:11:\"about_text1\";s:123:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\";s:11:\"about_list1\";s:55:\"Ullamco laboris nisi ut aliquip ex ea commodo consequat\";s:11:\"about_list2\";s:57:\"Duis aute irure dolor in reprehenderit in voluptate velit\";s:11:\"about_list3\";s:55:\"Ullamco laboris nisi ut aliquip ex ea commodo consequat\";s:11:\"about_text2\";s:269:\"Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat upidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:9:\"about_btn\";s:10:\"Learn More\";s:14:\"about_btn_link\";s:1:\"#\";s:12:\"count_title1\";s:89:\"<strong>Happy Clients</strong> consequuntur voluptas nostrum aliquid ipsam architecto ut.\";s:14:\"counts_number1\";s:2:\"65\";s:12:\"counts_icon1\";s:18:\"icofont-clock-time\";s:12:\"count_title2\";s:94:\"<strong>Projects</strong> adipisci atque cum quia aspernatur totam laudantium et quia dere tan\";s:14:\"counts_number2\";s:2:\"85\";s:12:\"counts_icon2\";s:23:\"icofont-document-folder\";s:12:\"count_title3\";s:103:\"<strong>Years of experience</strong> aut commodi quaerat modi aliquam nam ducimus aut voluptate non vel\";s:14:\"counts_number3\";s:2:\"15\";s:12:\"counts_icon3\";s:20:\"icofont-simple-smile\";s:12:\"count_title4\";s:90:\"<strong>Awards</strong> rerum asperiores dolor alias quo reprehenderit eum et nemo pad der\";s:14:\"counts_number4\";s:2:\"12\";s:12:\"counts_icon4\";s:13:\"icofont-award\";s:11:\"count_image\";a:9:{s:3:\"url\";s:88:\"http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/counts-img-scaled.jpg\";s:2:\"id\";s:3:\"156\";s:6:\"height\";s:4:\"1460\";s:5:\"width\";s:4:\"2560\";s:9:\"thumbnail\";s:89:\"http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/counts-img-150x150.jpg\";s:5:\"title\";s:10:\"counts-img\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:13:\"service_title\";s:8:\"Services\";s:16:\"service_subtitle\";s:63:\"Magnam dolores commodi suscipit eius consequatur ex aliquid fug\";s:14:\"features_title\";s:8:\"Features\";s:17:\"features_subtitle\";s:58:\"Necessitatibus eius consequatur ex aliquid fuga eum quidem\";s:17:\"testimonial_title\";s:12:\"Testimonials\";s:20:\"testimonial_subtitle\";s:60:\"Magnam dolores commodi suscipit eum quidem consectetur velit\";s:15:\"portfolio_title\";s:9:\"Portfolio\";s:18:\"portfolio_subtitle\";s:58:\"Necessitatibus eius consequatur ex aliquid fuga eum quidem\";s:10:\"team_title\";s:4:\"Team\";s:13:\"team_subtitle\";s:58:\"Necessitatibus eius consequatur ex aliquid fuga eum quidem\";s:13:\"pricing_title\";s:7:\"Pricing\";s:16:\"pricing_subtitle\";s:61:\"Sit sint consectetur velit nemo qui impedit suscipit alias ea\";s:11:\"f.a.q_title\";s:26:\"Frequently Asked Questions\";s:13:\"contact_title\";s:10:\"Contact Us\";s:12:\"opt-checkbox\";s:1:\"1\";s:15:\"opt-multi-check\";a:3:{i:1;s:1:\"1\";i:2;s:0:\"\";i:3;s:0:\"\";}s:9:\"opt-radio\";s:1:\"2\";s:12:\"opt-sortable\";a:3:{s:8:\"Text One\";s:6:\"Item 1\";s:8:\"Text Two\";s:6:\"Item 2\";s:10:\"Text Three\";s:6:\"Item 3\";}s:18:\"opt-check-sortable\";a:3:{s:3:\"cb1\";s:0:\"\";s:3:\"cb2\";s:1:\"1\";s:3:\"cb3\";s:0:\"\";}s:12:\"text-example\";s:12:\"Default Text\";s:17:\"text-example-hint\";s:12:\"Default Text\";s:16:\"text-placeholder\";s:0:\"\";s:13:\"opt-multitext\";a:1:{i:0;s:0:\"\";}s:8:\"password\";a:2:{s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";}s:12:\"opt-textarea\";s:12:\"Default Text\";s:10:\"opt-editor\";s:27:\"Powered by Redux Framework.\";s:15:\"opt-editor-tiny\";s:34:\"<p>Powered by Redux Framework.</p>\";s:15:\"opt-editor-full\";s:0:\"\";s:18:\"opt-ace-editor-css\";s:31:\"#header{\r\n   margin: 0 auto;\r\n}\";s:17:\"opt-ace-editor-js\";s:41:\"jQuery(document).ready(function(){\r\n\r\n});\";s:18:\"opt-ace-editor-php\";s:29:\"<?php\r\n    echo \"PHP String\";\";s:15:\"opt-color-title\";s:7:\"#000000\";s:16:\"opt-color-footer\";s:7:\"#dd9933\";s:16:\"opt-color-header\";a:2:{s:4:\"from\";s:7:\"#1e73be\";s:2:\"to\";s:7:\"#00897e\";}s:14:\"opt-color-rgba\";a:3:{s:5:\"color\";s:7:\"#7e33dd\";s:5:\"alpha\";s:2:\".8\";s:4:\"rgba\";s:20:\"rgba(126,51,221,0.8)\";}s:14:\"opt-link-color\";a:3:{s:7:\"regular\";s:4:\"#aaa\";s:5:\"hover\";s:4:\"#bbb\";s:6:\"active\";s:4:\"#ccc\";}s:17:\"opt-palette-color\";s:3:\"red\";s:14:\"opt-background\";a:7:{s:16:\"background-color\";s:0:\"\";s:17:\"background-repeat\";s:0:\"\";s:15:\"background-size\";s:0:\"\";s:21:\"background-attachment\";s:0:\"\";s:19:\"background-position\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:5:\"media\";a:4:{s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}}s:17:\"opt-header-border\";a:6:{s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";s:12:\"border-style\";s:5:\"solid\";s:12:\"border-color\";s:7:\"#1e73be\";}s:26:\"opt-header-border-expanded\";a:6:{s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";s:12:\"border-style\";s:5:\"solid\";s:12:\"border-color\";s:7:\"#1e73be\";}s:14:\"opt-dimensions\";a:3:{s:5:\"width\";s:5:\"200px\";s:6:\"height\";s:5:\"100px\";s:5:\"units\";s:2:\"px\";}s:20:\"opt-dimensions-width\";a:2:{s:5:\"width\";s:5:\"200px\";s:5:\"units\";s:2:\"px\";}s:11:\"opt-spacing\";a:4:{s:10:\"margin-top\";s:1:\"1\";s:12:\"margin-right\";s:1:\"2\";s:13:\"margin-bottom\";s:1:\"3\";s:11:\"margin-left\";s:1:\"4\";}s:20:\"opt-spacing-expanded\";a:5:{s:10:\"margin-top\";s:3:\"1px\";s:12:\"margin-right\";s:3:\"2px\";s:13:\"margin-bottom\";s:3:\"3px\";s:11:\"margin-left\";s:3:\"4px\";s:5:\"units\";s:2:\"px\";}s:11:\"opt-gallery\";s:0:\"\";s:9:\"opt-media\";a:9:{s:3:\"url\";s:53:\"https://s.wordpress.org/style/images/codeispoetry.png\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:12:\"media-no-url\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:16:\"media-no-preview\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:17:\"opt-random-upload\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:10:\"opt-slides\";a:1:{i:0;a:9:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:3:\"url\";s:0:\"\";s:4:\"sort\";s:1:\"0\";s:13:\"attachment_id\";s:0:\"\";s:5:\"thumb\";s:0:\"\";s:5:\"image\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";}}s:12:\"section-test\";s:0:\"\";s:18:\"section-test-media\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:14:\"opt-button-set\";s:1:\"2\";s:20:\"opt-button-set-multi\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:9:\"switch-on\";s:1:\"1\";s:10:\"switch-off\";s:0:\"\";s:13:\"switch-parent\";s:1:\"0\";s:13:\"switch-child1\";s:0:\"\";s:13:\"switch-child2\";s:0:\"\";s:10:\"opt-select\";s:1:\"2\";s:21:\"opt-select-stylesheet\";s:11:\"default.css\";s:19:\"opt-select-optgroup\";s:1:\"2\";s:16:\"opt-multi-select\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:21:\"opt-select-categories\";s:0:\"\";s:16:\"opt-select-pages\";s:0:\"\";s:20:\"opt-select-post-type\";s:0:\"\";s:16:\"opt-select-posts\";s:0:\"\";s:16:\"opt-select-roles\";s:0:\"\";s:18:\"opt-select-elusive\";s:0:\"\";s:16:\"opt-select-users\";s:0:\"\";s:23:\"opt-image-select-layout\";s:1:\"2\";s:16:\"opt-image-select\";s:1:\"2\";s:22:\"opt-select_image-field\";s:107:\"http://localhost/wordpress_custom/vespa/wp-content/themes/vespa/lib/ReduxCore/../sample/presets/preset2.png\";s:16:\"opt-select-image\";s:111:\"http://localhost/wordpress_custom/vespa/wp-content/themes/vespa/lib/ReduxCore/../sample/patterns/triangular.png\";s:16:\"opt-slider-label\";s:3:\"250\";s:15:\"opt-slider-text\";s:2:\"75\";s:16:\"opt-slider-float\";s:3:\"0.5\";s:11:\"opt-spinner\";s:2:\"40\";s:19:\"opt-typography-body\";a:10:{s:11:\"font-family\";s:26:\"Arial,Helvetica,sans-serif\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:6:\"Normal\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:10:\"text-align\";s:0:\"\";s:9:\"font-size\";s:4:\"30px\";s:11:\"line-height\";s:0:\"\";s:5:\"color\";s:7:\"#dd9933\";}s:14:\"opt-typography\";a:11:{s:11:\"font-family\";s:4:\"Abel\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:3:\"700\";s:7:\"subsets\";s:0:\"\";s:10:\"text-align\";s:0:\"\";s:9:\"font-size\";s:4:\"33px\";s:11:\"line-height\";s:4:\"40px\";s:5:\"color\";s:4:\"#333\";}s:14:\"opt-datepicker\";s:0:\"\";s:19:\"opt-homepage-layout\";a:3:{s:7:\"enabled\";a:6:{s:7:\"placebo\";s:7:\"placebo\";i:0;s:5:\"Array\";s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}s:8:\"disabled\";a:2:{s:7:\"placebo\";s:7:\"placebo\";i:0;s:5:\"Array\";}s:6:\"backup\";a:2:{s:7:\"placebo\";s:7:\"placebo\";i:0;s:5:\"Array\";}}s:21:\"opt-homepage-layout-2\";a:2:{s:8:\"disabled\";a:4:{s:7:\"placebo\";s:7:\"placebo\";i:0;s:5:\"Array\";s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";}s:7:\"enabled\";a:4:{s:7:\"placebo\";s:7:\"placebo\";i:0;s:5:\"Array\";s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}}s:14:\"opt-text-email\";s:13:\"test@test.com\";s:18:\"opt-text-post-type\";a:11:{s:10:\"attachment\";s:5:\"Media\";s:6:\"client\";s:0:\"\";s:3:\"faq\";s:5:\"F.A.Q\";s:8:\"features\";s:8:\"Features\";s:12:\"moreservices\";s:13:\"More Services\";s:4:\"page\";s:5:\"Pages\";s:9:\"portfolio\";s:9:\"Portfolio\";s:4:\"post\";s:5:\"Posts\";s:8:\"services\";s:8:\"Services\";s:12:\"team-members\";s:11:\"Team-Member\";s:11:\"testimonial\";s:0:\"\";}s:14:\"opt-multi-text\";a:1:{i:0;b:0;}s:12:\"opt-text-url\";s:25:\"http://reduxframework.com\";s:16:\"opt-text-numeric\";s:1:\"0\";s:22:\"opt-text-comma-numeric\";s:1:\"0\";s:25:\"opt-text-no-special-chars\";s:1:\"0\";s:20:\"opt-text-str_replace\";s:53:\"Thisthisisaspaceisthisisaspacethethisisaspacedefault.\";s:21:\"opt-text-preg_replace\";s:10:\"no numbers\";s:24:\"opt-text-custom_validate\";s:1:\"0\";s:20:\"opt-textarea-no-html\";s:27:\"No HTML is allowed in here.\";s:17:\"opt-textarea-html\";s:24:\"HTML is allowed in here.\";s:22:\"opt-textarea-some-html\";s:29:\"Some HTML is allowed in here.\";s:15:\"opt-textarea-js\";s:0:\"\";s:18:\"opt-required-basic\";s:0:\"\";s:23:\"opt-required-basic-text\";s:0:\"\";s:19:\"opt-required-nested\";s:0:\"\";s:29:\"opt-required-nested-buttonset\";s:11:\"button-text\";s:24:\"opt-required-nested-text\";s:0:\"\";s:28:\"opt-required-nested-textarea\";s:0:\"\";s:26:\"opt-required-nested-editor\";s:0:\"\";s:23:\"opt-required-nested-ace\";s:0:\"\";s:19:\"opt-required-select\";s:10:\"no-sidebar\";s:9:\"wpml-text\";s:0:\"\";s:15:\"wpml-multicheck\";a:3:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}s:19:\"opt-customizer-only\";s:1:\"2\";s:17:\"opt-checkbox-data\";i:0;s:20:\"opt-checkbox-sidebar\";i:0;s:12:\"opt-patterns\";i:0;s:11:\"opt-presets\";i:0;s:17:\"opt-slider-select\";a:2:{i:1;i:100;i:2;i:300;}s:32:\"opt-required-select-left-sidebar\";s:0:\"\";s:33:\"opt-required-select-right-sidebar\";s:0:\"\";}', 'auto'),
(313, 'vespa-transients', 'a:3:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1740755242;s:13:\"last_compiler\";i:1740647331;}', 'auto'),
(381, '_transient_timeout_select2-css_style_cdn_is_up', '1740837623', 'off'),
(382, '_transient_select2-css_style_cdn_is_up', '1', 'off'),
(383, '_transient_timeout_select2-js_script_cdn_is_up', '1740837623', 'off'),
(384, '_transient_select2-js_script_cdn_is_up', '1', 'off'),
(385, '_transient_timeout_ace-editor-js_script_cdn_is_up', '1740837624', 'off'),
(386, '_transient_ace-editor-js_script_cdn_is_up', '1', 'off'),
(391, '_site_transient_timeout_theme_roots', '1740755554', 'off'),
(392, '_site_transient_theme_roots', 'a:1:{s:5:\"vespa\";s:7:\"/themes\";}', 'off'),
(393, '_site_transient_timeout_wp_theme_files_patterns-a47dbc8dda12f3f9212eb027b6076825', '1740756651', 'off'),
(394, '_site_transient_wp_theme_files_patterns-a47dbc8dda12f3f9212eb027b6076825', 'a:2:{s:7:\"version\";s:5:\"3.0.3\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 10, '_edit_last', '1'),
(4, 10, '_edit_lock', '1738256693:1'),
(5, 16, '_edit_last', '1'),
(6, 16, '_edit_lock', '1738252952:1'),
(7, 16, 's_icon', 'bx bxl-dribbble'),
(8, 16, '_s_icon', 'field_679ba0494240a'),
(9, 16, 's_details', 'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi'),
(10, 16, '_s_details', 'field_679ba1604240b'),
(11, 17, '_edit_last', '1'),
(12, 17, '_edit_lock', '1738252999:1'),
(13, 17, 's_icon', 'bx bx-file'),
(14, 17, '_s_icon', 'field_679ba0494240a'),
(15, 17, 's_details', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore'),
(16, 17, '_s_details', 'field_679ba1604240b'),
(17, 18, '_edit_last', '1'),
(18, 18, '_edit_lock', '1738253035:1'),
(19, 18, 's_icon', 'bx bx-tachometer'),
(20, 18, '_s_icon', 'field_679ba0494240a'),
(21, 18, 's_details', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia'),
(22, 18, '_s_details', 'field_679ba1604240b'),
(23, 19, '_edit_last', '1'),
(24, 19, '_edit_lock', '1738254273:1'),
(25, 19, 's_icon', 'bx bx-world'),
(26, 19, '_s_icon', 'field_679ba0494240a'),
(27, 19, 's_details', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis'),
(28, 19, '_s_details', 'field_679ba1604240b'),
(29, 22, '_edit_last', '1'),
(30, 22, '_edit_lock', '1738254521:1'),
(31, 22, 's_icon', 'bx bxl-dribbble'),
(32, 22, '_s_icon', 'field_679ba0494240a'),
(33, 22, 's_details', 'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi'),
(34, 22, '_s_details', 'field_679ba1604240b'),
(35, 23, '_edit_last', '1'),
(36, 23, '_edit_lock', '1738254553:1'),
(37, 23, 's_icon', 'bx bx-file'),
(38, 23, '_s_icon', 'field_679ba0494240a'),
(39, 23, 's_details', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore'),
(40, 23, '_s_details', 'field_679ba1604240b'),
(41, 24, '_edit_last', '1'),
(42, 24, '_edit_lock', '1738254585:1'),
(43, 24, 's_icon', 'bx bx-tachometer'),
(44, 24, '_s_icon', 'field_679ba0494240a'),
(45, 24, 's_details', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia'),
(46, 24, '_s_details', 'field_679ba1604240b'),
(47, 25, '_edit_last', '1'),
(48, 25, '_edit_lock', '1738254806:1'),
(49, 25, 's_icon', 'bx bx-world'),
(50, 25, '_s_icon', 'field_679ba0494240a'),
(51, 25, 's_details', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis'),
(52, 25, '_s_details', 'field_679ba1604240b'),
(53, 26, '_edit_last', '1'),
(54, 26, '_edit_lock', '1738256537:1'),
(55, 29, '_edit_last', '1'),
(56, 29, '_edit_lock', '1738255719:1'),
(57, 29, 'ms_details', 'Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor ut labore et dolore magna aliqua.'),
(58, 29, '_ms_details', 'field_679bac35eaff1'),
(59, 29, 'ms_link', '#'),
(60, 29, '_ms_link', 'field_679bad0deaff2'),
(61, 30, '_edit_last', '1'),
(62, 30, '_edit_lock', '1738255738:1'),
(63, 30, 'ms_details', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem doloremque laudantium, totam rem.'),
(64, 30, '_ms_details', 'field_679bac35eaff1'),
(65, 30, 'ms_link', '#'),
(66, 30, '_ms_link', 'field_679bad0deaff2'),
(67, 31, '_edit_last', '1'),
(68, 31, '_edit_lock', '1738255761:1'),
(69, 31, 'ms_details', 'Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit, sed quia magni dolores.'),
(70, 31, '_ms_details', 'field_679bac35eaff1'),
(71, 31, 'ms_link', '#'),
(72, 31, '_ms_link', 'field_679bad0deaff2'),
(73, 32, '_edit_last', '1'),
(74, 32, '_edit_lock', '1738258553:1'),
(75, 32, 'ms_details', 'Nostrum eum sed et autem dolorum perspiciatis. Magni porro quisquam laudantium voluptatem.'),
(76, 32, '_ms_details', 'field_679bac35eaff1'),
(77, 32, 'ms_link', '#'),
(78, 32, '_ms_link', 'field_679bad0deaff2'),
(79, 33, '_edit_last', '1'),
(80, 33, '_edit_lock', '1738257633:1'),
(81, 35, '_edit_last', '1'),
(82, 35, '_edit_lock', '1738256740:1'),
(83, 35, 'feature_icon', 'ri-store-line'),
(84, 35, '_feature_icon', 'field_679bb12d4b06e'),
(85, 37, '_edit_last', '1'),
(86, 37, 'feature_icon', 'ri-bar-chart-box-line'),
(87, 37, '_feature_icon', 'field_679bb12d4b06e'),
(88, 37, '_edit_lock', '1738256770:1'),
(89, 38, '_edit_last', '1'),
(90, 38, '_edit_lock', '1738256793:1'),
(91, 38, 'feature_icon', 'ri-calendar-todo-line'),
(92, 38, '_feature_icon', 'field_679bb12d4b06e'),
(93, 39, '_edit_last', '1'),
(94, 39, 'feature_icon', 'ri-paint-brush-line'),
(95, 39, '_feature_icon', 'field_679bb12d4b06e'),
(96, 39, '_edit_lock', '1738256814:1'),
(97, 40, '_edit_last', '1'),
(98, 40, '_edit_lock', '1738256839:1'),
(99, 40, 'feature_icon', 'ri-database-2-line'),
(100, 40, '_feature_icon', 'field_679bb12d4b06e'),
(101, 41, '_edit_last', '1'),
(102, 41, 'feature_icon', 'ri-gradienter-line'),
(103, 41, '_feature_icon', 'field_679bb12d4b06e'),
(104, 41, '_edit_lock', '1738256861:1'),
(105, 42, '_edit_last', '1'),
(106, 42, 'feature_icon', 'ri-file-list-3-line'),
(107, 42, '_feature_icon', 'field_679bb12d4b06e'),
(108, 42, '_edit_lock', '1738256877:1'),
(109, 43, '_edit_last', '1'),
(110, 43, 'feature_icon', 'ri-price-tag-2-line'),
(111, 43, '_feature_icon', 'field_679bb12d4b06e'),
(112, 43, '_edit_lock', '1738256898:1'),
(113, 44, '_edit_last', '1'),
(114, 44, 'feature_icon', 'ri-anchor-line'),
(115, 44, '_feature_icon', 'field_679bb12d4b06e'),
(116, 44, '_edit_lock', '1738256917:1'),
(117, 45, '_edit_last', '1'),
(118, 45, 'feature_icon', 'ri-disc-line'),
(119, 45, '_feature_icon', 'field_679bb12d4b06e'),
(120, 45, '_edit_lock', '1738256944:1'),
(121, 46, '_edit_last', '1'),
(122, 46, 'feature_icon', 'ri-base-station-line'),
(123, 46, '_feature_icon', 'field_679bb12d4b06e'),
(124, 46, '_edit_lock', '1738256962:1'),
(125, 47, '_edit_last', '1'),
(126, 47, 'feature_icon', 'ri-fingerprint-line'),
(127, 47, '_feature_icon', 'field_679bb12d4b06e'),
(128, 47, '_edit_lock', '1740582302:1'),
(129, 48, '_edit_last', '1'),
(130, 48, '_edit_lock', '1740627341:1'),
(131, 52, '_edit_last', '1'),
(132, 52, '_edit_lock', '1738258003:1'),
(133, 52, 'faq_ans', '\r\nFeugiat pretium nibh ipsum consequat. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non.'),
(134, 52, '_faq_ans', 'field_679bb5749e305'),
(135, 52, 'faq_icon', 'ri-question-line'),
(136, 52, '_faq_icon', 'field_679bb6179af64'),
(137, 53, '_edit_last', '1'),
(138, 53, '_edit_lock', '1738258028:1'),
(139, 53, 'faq_ans', 'Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim.'),
(140, 53, '_faq_ans', 'field_679bb5749e305'),
(141, 53, 'faq_icon', 'ri-question-line'),
(142, 53, '_faq_icon', 'field_679bb6179af64'),
(143, 54, '_edit_last', '1'),
(144, 54, '_edit_lock', '1738258051:1'),
(145, 54, 'faq_ans', 'Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna duis convallis convallis tellus.\r\n\r\n'),
(146, 54, '_faq_ans', 'field_679bb5749e305'),
(147, 54, 'faq_icon', 'ri-question-line'),
(148, 54, '_faq_icon', 'field_679bb6179af64'),
(149, 58, '_edit_last', '1'),
(150, 58, '_edit_lock', '1740626402:1'),
(151, 67, '_edit_last', '1'),
(152, 67, '_edit_lock', '1739447210:1'),
(153, 68, '_wp_attached_file', '2025/02/apple-touch-icon.png'),
(154, 68, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:180;s:6:\"height\";i:180;s:4:\"file\";s:28:\"2025/02/apple-touch-icon.png\";s:8:\"filesize\";i:1738;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"apple-touch-icon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3801;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 69, '_wp_attached_file', '2025/02/favicon.png'),
(156, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:19:\"2025/02/favicon.png\";s:8:\"filesize\";i:491;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 70, '_wp_attached_file', '2025/02/apple-touch-icon-1.png'),
(158, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:180;s:6:\"height\";i:180;s:4:\"file\";s:30:\"2025/02/apple-touch-icon-1.png\";s:8:\"filesize\";i:1738;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"apple-touch-icon-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3801;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 71, '_wp_attached_file', '2025/02/favicon-1.png'),
(160, 71, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:21:\"2025/02/favicon-1.png\";s:8:\"filesize\";i:491;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 72, '_edit_last', '1'),
(162, 72, '_edit_lock', '1739447276:1'),
(163, 74, '_wp_attached_file', '2025/02/team-1.jpg'),
(164, 74, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2025/02/team-1.jpg\";s:8:\"filesize\";i:40201;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"team-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11990;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"team-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4478;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 75, '_wp_attached_file', '2025/02/team-2.jpg'),
(166, 75, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2025/02/team-2.jpg\";s:8:\"filesize\";i:49059;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"team-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12763;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"team-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4512;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 76, '_wp_attached_file', '2025/02/team-3.jpg'),
(168, 76, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2025/02/team-3.jpg\";s:8:\"filesize\";i:36680;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"team-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11877;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"team-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4543;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(169, 77, '_wp_attached_file', '2025/02/team-4.jpg'),
(170, 77, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2025/02/team-4.jpg\";s:8:\"filesize\";i:27423;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"team-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10537;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"team-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4130;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 72, 'team-member-designations_', 'Chief Executive Officer'),
(172, 72, '_team-member-designations_', 'field_67add71d12d41'),
(173, 72, 'twitter-link_', '#'),
(174, 72, '_twitter-link_', 'field_67add7e112d42'),
(175, 72, 'facebook_link', '#'),
(176, 72, '_facebook_link', 'field_67add86612d43'),
(177, 72, 'instagram_link', '#'),
(178, 72, '_instagram_link', 'field_67add8d712d44'),
(179, 72, 'linkedin_link', '#'),
(180, 72, '_linkedin_link', 'field_67add92112d45'),
(181, 72, 't_m_image', '74'),
(182, 72, '_t_m_image', 'field_67add96212d46'),
(183, 78, '_edit_last', '1'),
(184, 78, '_edit_lock', '1739447312:1'),
(185, 78, 'team-member-designations_', 'Product Manager'),
(186, 78, '_team-member-designations_', 'field_67add71d12d41'),
(187, 78, 'twitter-link_', '#'),
(188, 78, '_twitter-link_', 'field_67add7e112d42'),
(189, 78, 'facebook_link', '#'),
(190, 78, '_facebook_link', 'field_67add86612d43'),
(191, 78, 'instagram_link', '#'),
(192, 78, '_instagram_link', 'field_67add8d712d44'),
(193, 78, 'linkedin_link', '#'),
(194, 78, '_linkedin_link', 'field_67add92112d45'),
(195, 78, 't_m_image', '75'),
(196, 78, '_t_m_image', 'field_67add96212d46'),
(197, 79, '_edit_last', '1'),
(198, 79, '_edit_lock', '1739447347:1'),
(199, 79, 'team-member-designations_', 'CTO'),
(200, 79, '_team-member-designations_', 'field_67add71d12d41'),
(201, 79, 'twitter-link_', '#'),
(202, 79, '_twitter-link_', 'field_67add7e112d42'),
(203, 79, 'facebook_link', '#'),
(204, 79, '_facebook_link', 'field_67add86612d43'),
(205, 79, 'instagram_link', '#'),
(206, 79, '_instagram_link', 'field_67add8d712d44'),
(207, 79, 'linkedin_link', '#'),
(208, 79, '_linkedin_link', 'field_67add92112d45'),
(209, 79, 't_m_image', '76'),
(210, 79, '_t_m_image', 'field_67add96212d46'),
(211, 80, '_edit_last', '1'),
(212, 80, '_edit_lock', '1740625732:1'),
(213, 80, 'team-member-designations_', 'Accountant'),
(214, 80, '_team-member-designations_', 'field_67add71d12d41'),
(215, 80, 'twitter-link_', '#'),
(216, 80, '_twitter-link_', 'field_67add7e112d42'),
(217, 80, 'facebook_link', '#'),
(218, 80, '_facebook_link', 'field_67add86612d43'),
(219, 80, 'instagram_link', '#'),
(220, 80, '_instagram_link', 'field_67add8d712d44'),
(221, 80, 'linkedin_link', '#'),
(222, 80, '_linkedin_link', 'field_67add92112d45'),
(223, 80, 't_m_image', '77'),
(224, 80, '_t_m_image', 'field_67add96212d46'),
(225, 67, '_wp_trash_meta_status', 'draft'),
(226, 67, '_wp_trash_meta_time', '1739447534'),
(227, 67, '_wp_desired_post_slug', ''),
(228, 83, '_edit_last', '1'),
(229, 83, '_edit_lock', '1740626393:1'),
(230, 89, '_wp_attached_file', '2025/02/portfolio-1.jpg'),
(231, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2025/02/portfolio-1.jpg\";s:8:\"filesize\";i:82156;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"portfolio-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16972;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"portfolio-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7812;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"portfolio-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:73363;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 90, '_wp_attached_file', '2025/02/portfolio-2.jpg'),
(233, 90, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2025/02/portfolio-2.jpg\";s:8:\"filesize\";i:100174;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"portfolio-2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10772;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"portfolio-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5737;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"portfolio-2-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51281;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(234, 91, '_wp_attached_file', '2025/02/portfolio-3.jpg'),
(235, 91, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2025/02/portfolio-3.jpg\";s:8:\"filesize\";i:12377;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"portfolio-3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4711;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"portfolio-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2644;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"portfolio-3-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17528;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 92, '_wp_attached_file', '2025/02/portfolio-4.jpg'),
(237, 92, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2025/02/portfolio-4.jpg\";s:8:\"filesize\";i:72084;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"portfolio-4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9115;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"portfolio-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4203;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"portfolio-4-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36997;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(238, 93, '_wp_attached_file', '2025/02/portfolio-5.jpg'),
(239, 93, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2025/02/portfolio-5.jpg\";s:8:\"filesize\";i:81363;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"portfolio-5-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17951;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"portfolio-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7380;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"portfolio-5-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70231;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(240, 94, '_wp_attached_file', '2025/02/portfolio-6.jpg'),
(241, 94, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2025/02/portfolio-6.jpg\";s:8:\"filesize\";i:25598;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"portfolio-6-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7254;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"portfolio-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3796;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"portfolio-6-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25586;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(242, 95, '_wp_attached_file', '2025/02/portfolio-7.jpg'),
(243, 95, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2025/02/portfolio-7.jpg\";s:8:\"filesize\";i:122008;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"portfolio-7-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17317;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"portfolio-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7318;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"portfolio-7-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71485;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(244, 96, '_wp_attached_file', '2025/02/portfolio-8.jpg'),
(245, 96, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2025/02/portfolio-8.jpg\";s:8:\"filesize\";i:15876;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"portfolio-8-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4808;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"portfolio-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2616;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"portfolio-8-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17891;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(246, 97, '_wp_attached_file', '2025/02/portfolio-9.jpg'),
(247, 97, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2025/02/portfolio-9.jpg\";s:8:\"filesize\";i:58756;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"portfolio-9-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8188;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"portfolio-9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4047;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"portfolio-9-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35274;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 98, '_wp_attached_file', '2025/02/portfolio-details-1.jpg'),
(249, 98, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1288;s:6:\"height\";i:600;s:4:\"file\";s:31:\"2025/02/portfolio-details-1.jpg\";s:8:\"filesize\";i:124864;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"portfolio-details-1-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7900;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"portfolio-details-1-1024x477.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49237;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"portfolio-details-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6558;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"portfolio-details-1-768x358.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32276;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(250, 99, '_wp_attached_file', '2025/02/portfolio-details-2.jpg'),
(251, 99, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1288;s:6:\"height\";i:600;s:4:\"file\";s:31:\"2025/02/portfolio-details-2.jpg\";s:8:\"filesize\";i:139811;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"portfolio-details-2-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9572;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"portfolio-details-2-1024x477.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63485;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"portfolio-details-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7858;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"portfolio-details-2-768x358.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40943;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(252, 100, '_wp_attached_file', '2025/02/portfolio-details-3.jpg'),
(253, 100, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1288;s:6:\"height\";i:600;s:4:\"file\";s:31:\"2025/02/portfolio-details-3.jpg\";s:8:\"filesize\";i:64737;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"portfolio-details-3-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6561;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"portfolio-details-3-1024x477.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33762;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"portfolio-details-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4104;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"portfolio-details-3-768x358.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22761;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(254, 101, '_wp_attached_file', '2025/02/client-1.png'),
(255, 101, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:173;s:4:\"file\";s:20:\"2025/02/client-1.png\";s:8:\"filesize\";i:5282;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"client-1-300x130.png\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10382;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"client-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6397;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(256, 102, '_wp_attached_file', '2025/02/client-2.png'),
(257, 102, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:140;s:4:\"file\";s:20:\"2025/02/client-2.png\";s:8:\"filesize\";i:4582;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"client-2-300x105.png\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7133;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"client-2-150x140.png\";s:5:\"width\";i:150;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2762;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(258, 103, '_wp_attached_file', '2025/02/client-3.png'),
(259, 103, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:142;s:4:\"file\";s:20:\"2025/02/client-3.png\";s:8:\"filesize\";i:4707;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"client-3-300x107.png\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8650;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"client-3-150x142.png\";s:5:\"width\";i:150;s:6:\"height\";i:142;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3781;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(260, 104, '_wp_attached_file', '2025/02/client-4.png'),
(261, 104, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:219;s:4:\"file\";s:20:\"2025/02/client-4.png\";s:8:\"filesize\";i:9010;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"client-4-300x164.png\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18843;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"client-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10265;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(262, 105, '_wp_attached_file', '2025/02/client-5.png'),
(263, 105, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:142;s:4:\"file\";s:20:\"2025/02/client-5.png\";s:8:\"filesize\";i:5123;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"client-5-300x107.png\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8371;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"client-5-150x142.png\";s:5:\"width\";i:150;s:6:\"height\";i:142;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2236;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(264, 106, '_wp_attached_file', '2025/02/client-6.png'),
(265, 106, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:125;s:4:\"file\";s:20:\"2025/02/client-6.png\";s:8:\"filesize\";i:3450;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"client-6-300x94.png\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5449;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"client-6-150x125.png\";s:5:\"width\";i:150;s:6:\"height\";i:125;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1489;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(266, 107, '_wp_attached_file', '2025/02/apple-touch-icon-2.png'),
(267, 107, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:180;s:6:\"height\";i:180;s:4:\"file\";s:30:\"2025/02/apple-touch-icon-2.png\";s:8:\"filesize\";i:1738;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"apple-touch-icon-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3801;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(268, 108, '_wp_attached_file', '2025/02/favicon-2.png'),
(269, 108, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:21:\"2025/02/favicon-2.png\";s:8:\"filesize\";i:491;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(270, 109, '_wp_attached_file', '2025/02/hero-img.png'),
(271, 109, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:578;s:6:\"height\";i:430;s:4:\"file\";s:20:\"2025/02/hero-img.png\";s:8:\"filesize\";i:41329;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"hero-img-300x223.png\";s:5:\"width\";i:300;s:6:\"height\";i:223;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:63427;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"hero-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:31126;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(272, 110, '_wp_attached_file', '2025/02/testimonials-1.jpg'),
(273, 110, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:26:\"2025/02/testimonials-1.jpg\";s:8:\"filesize\";i:39727;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"testimonials-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11586;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"testimonials-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4460;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(274, 111, '_wp_attached_file', '2025/02/testimonials-2.jpg'),
(275, 111, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:26:\"2025/02/testimonials-2.jpg\";s:8:\"filesize\";i:57584;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"testimonials-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16224;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"testimonials-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5723;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(276, 112, '_wp_attached_file', '2025/02/testimonials-3.jpg'),
(277, 112, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:26:\"2025/02/testimonials-3.jpg\";s:8:\"filesize\";i:17247;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"testimonials-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11831;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"testimonials-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4662;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(278, 113, '_wp_attached_file', '2025/02/testimonials-4.jpg'),
(279, 113, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:26:\"2025/02/testimonials-4.jpg\";s:8:\"filesize\";i:20220;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"testimonials-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15758;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"testimonials-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6243;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(280, 114, '_wp_attached_file', '2025/02/testimonials-5.jpg'),
(281, 114, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:26:\"2025/02/testimonials-5.jpg\";s:8:\"filesize\";i:22595;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"testimonials-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14536;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"testimonials-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5510;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(282, 87, '_edit_last', '1'),
(283, 87, '_edit_lock', '1739449445:1'),
(284, 87, 'portfolio_details', 'App'),
(285, 87, '_portfolio_details', 'field_67ade34f37f13'),
(286, 87, 'portfolio_link', '#'),
(287, 87, '_portfolio_link', 'field_67ade3ac37f14'),
(288, 87, 'portfolio_image_', '89'),
(289, 87, '_portfolio_image_', 'field_67ade40804bc4'),
(290, 115, '_edit_last', '1'),
(291, 115, '_edit_lock', '1739449471:1'),
(292, 115, 'portfolio_details', 'App'),
(293, 115, '_portfolio_details', 'field_67ade34f37f13'),
(294, 115, 'portfolio_link', '#'),
(295, 115, '_portfolio_link', 'field_67ade3ac37f14'),
(296, 115, 'portfolio_image_', '93'),
(297, 115, '_portfolio_image_', 'field_67ade40804bc4'),
(298, 117, '_edit_last', '1'),
(299, 117, '_edit_lock', '1740627528:1'),
(300, 117, 'portfolio_details', 'App'),
(301, 117, '_portfolio_details', 'field_67ade34f37f13'),
(302, 117, 'portfolio_link', '#'),
(303, 117, '_portfolio_link', 'field_67ade3ac37f14'),
(304, 117, 'portfolio_image_', '95'),
(305, 117, '_portfolio_image_', 'field_67ade40804bc4'),
(306, 120, '_wp_attached_file', '2025/02/logo.png'),
(307, 120, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:107;s:6:\"height\";i:51;s:4:\"file\";s:16:\"2025/02/logo.png\";s:8:\"filesize\";i:2856;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(308, 121, '_edit_last', '1'),
(309, 121, '_edit_lock', '1740627975:1'),
(327, 131, '_edit_last', '1'),
(328, 131, '_edit_lock', '1740626525:1'),
(329, 131, 'client_img', '101'),
(330, 131, '_client_img', 'field_67bfd8111bea1'),
(331, 133, '_edit_last', '1'),
(332, 133, '_edit_lock', '1740626546:1'),
(333, 133, 'client_img', '102'),
(334, 133, '_client_img', 'field_67bfd8111bea1'),
(335, 134, '_edit_last', '1'),
(336, 134, '_edit_lock', '1740626559:1'),
(337, 134, 'client_img', '103'),
(338, 134, '_client_img', 'field_67bfd8111bea1'),
(339, 135, '_edit_last', '1'),
(340, 135, '_edit_lock', '1740626577:1'),
(341, 135, 'client_img', '104'),
(342, 135, '_client_img', 'field_67bfd8111bea1'),
(343, 136, '_edit_last', '1'),
(344, 136, '_edit_lock', '1740626595:1'),
(345, 136, 'client_img', '105'),
(346, 136, '_client_img', 'field_67bfd8111bea1'),
(347, 137, '_edit_last', '1'),
(348, 137, '_edit_lock', '1740626609:1'),
(349, 137, 'client_img', '106'),
(350, 137, '_client_img', 'field_67bfd8111bea1'),
(351, 139, '_edit_last', '1'),
(352, 139, '_edit_lock', '1740647339:1'),
(353, 149, '_edit_last', '1'),
(354, 149, '_edit_lock', '1740642552:1'),
(355, 110, '_wp_attachment_image_alt', 'vespa'),
(356, 149, 'testimonial_subtitle', 'Ceo &amp; Founder'),
(357, 149, '_testimonial_subtitle', 'field_67c017cacbb6a'),
(358, 149, 'testimonial_description', 'Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.'),
(359, 149, '_testimonial_description', 'field_67c0180acbb6b'),
(360, 149, 'testimonial_image_', '110'),
(361, 149, '_testimonial_image_', 'field_67c01880cbb6c'),
(362, 150, '_edit_last', '1'),
(363, 150, '_edit_lock', '1740642625:1'),
(364, 150, 'testimonial_subtitle', 'Designer'),
(365, 150, '_testimonial_subtitle', 'field_67c017cacbb6a'),
(366, 150, 'testimonial_description', 'Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.'),
(367, 150, '_testimonial_description', 'field_67c0180acbb6b'),
(368, 150, 'testimonial_image_', '111'),
(369, 150, '_testimonial_image_', 'field_67c01880cbb6c'),
(370, 152, '_edit_last', '1'),
(371, 152, '_edit_lock', '1740642690:1'),
(372, 152, 'testimonial_subtitle', 'Store Owner'),
(373, 152, '_testimonial_subtitle', 'field_67c017cacbb6a'),
(374, 152, 'testimonial_description', 'Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.'),
(375, 152, '_testimonial_description', 'field_67c0180acbb6b'),
(376, 152, 'testimonial_image_', '112'),
(377, 152, '_testimonial_image_', 'field_67c01880cbb6c'),
(378, 153, '_edit_last', '1'),
(379, 153, '_edit_lock', '1740642750:1'),
(380, 153, 'testimonial_subtitle', 'Freelancer'),
(381, 153, '_testimonial_subtitle', 'field_67c017cacbb6a'),
(382, 153, 'testimonial_description', 'Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.'),
(383, 153, '_testimonial_description', 'field_67c0180acbb6b'),
(384, 153, 'testimonial_image_', '113'),
(385, 153, '_testimonial_image_', 'field_67c01880cbb6c'),
(386, 155, '_edit_last', '1'),
(387, 155, '_edit_lock', '1740642831:1'),
(388, 155, 'testimonial_subtitle', 'Entrepreneur'),
(389, 155, '_testimonial_subtitle', 'field_67c017cacbb6a'),
(390, 155, 'testimonial_description', 'Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.'),
(391, 155, '_testimonial_description', 'field_67c0180acbb6b'),
(392, 155, 'testimonial_image_', '114'),
(393, 155, '_testimonial_image_', 'field_67c01880cbb6c'),
(394, 156, '_wp_attached_file', '2025/02/counts-img-scaled.jpg'),
(395, 156, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1460;s:4:\"file\";s:29:\"2025/02/counts-img-scaled.jpg\";s:8:\"filesize\";i:131751;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"counts-img-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8307;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"counts-img-1024x584.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:584;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38016;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"counts-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5668;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"counts-img-768x438.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:438;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26288;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"counts-img-1536x876.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:876;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64592;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:24:\"counts-img-2048x1168.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1168;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:95806;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:14:\"counts-img.jpg\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-01-30 12:42:14', '2025-01-30 12:42:14', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2025-01-30 12:42:14', '2025-01-30 12:42:14', '', 0, 'http://localhost/wordpress_custom/vespa/?p=1', 0, 'post', '', 1),
(2, 1, '2025-01-30 12:42:14', '2025-01-30 12:42:14', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress_custom/vespa/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2025-01-30 12:42:14', '2025-01-30 12:42:14', '', 0, 'http://localhost/wordpress_custom/vespa/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-01-30 12:42:14', '2025-01-30 12:42:14', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wordpress_custom/vespa.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2025-01-30 12:42:14', '2025-01-30 12:42:14', '', 0, 'http://localhost/wordpress_custom/vespa/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-01-30 12:42:15', '2025-01-30 12:42:15', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-01-30 12:42:15', '2025-01-30 12:42:15', '', 0, 'http://localhost/wordpress_custom/vespa/2025/01/30/navigation/', 0, 'wp_navigation', '', 0),
(10, 1, '2025-01-30 16:01:05', '2025-01-30 16:01:05', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"services\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Service', 'service', 'publish', 'closed', 'closed', '', 'group_679ba048435e0', '', '', '2025-01-30 16:29:44', '2025-01-30 16:29:44', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field-group&#038;p=10', 0, 'acf-field-group', '', 0),
(14, 1, '2025-01-30 16:01:05', '2025-01-30 16:01:05', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:28:\"Enter your service icon hear\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";i:40;s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:15:\"bx bxl-dribbble\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Service icon', 's_icon', 'publish', 'closed', 'closed', '', 'field_679ba0494240a', '', '', '2025-01-30 16:01:05', '2025-01-30 16:01:05', '', 10, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&p=14', 0, 'acf-field', '', 0),
(15, 1, '2025-01-30 16:01:05', '2025-01-30 16:01:05', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:31:\"Enter your service details hear\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";i:2;s:11:\"placeholder\";s:26:\"Enter service details hear\";s:9:\"new_lines\";s:0:\"\";}', 'Service details', 's_details', 'publish', 'closed', 'closed', '', 'field_679ba1604240b', '', '', '2025-01-30 16:01:05', '2025-01-30 16:01:05', '', 10, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&p=15', 1, 'acf-field', '', 0),
(16, 1, '2025-01-30 16:04:30', '2025-01-30 16:04:30', '', 'Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum', '', '', '2025-01-30 16:04:30', '2025-01-30 16:04:30', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=wporg_product&#038;p=16', 0, 'wporg_product', '', 0),
(17, 1, '2025-01-30 16:05:42', '2025-01-30 16:05:42', '', 'Sed ut perspiciatis', '', 'publish', 'closed', 'closed', '', 'sed-ut-perspiciatis', '', '', '2025-01-30 16:05:42', '2025-01-30 16:05:42', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=wporg_product&#038;p=17', 0, 'wporg_product', '', 0),
(18, 1, '2025-01-30 16:06:18', '2025-01-30 16:06:18', '', 'Magni Dolores', '', 'publish', 'closed', 'closed', '', 'magni-dolores', '', '', '2025-01-30 16:06:18', '2025-01-30 16:06:18', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=wporg_product&#038;p=18', 0, 'wporg_product', '', 0),
(19, 1, '2025-01-30 16:06:51', '2025-01-30 16:06:51', '', 'Nemo Enim', '', 'publish', 'closed', 'closed', '', 'nemo-enim', '', '', '2025-01-30 16:06:51', '2025-01-30 16:06:51', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=wporg_product&#038;p=19', 0, 'wporg_product', '', 0),
(22, 1, '2025-01-30 16:30:54', '2025-01-30 16:30:54', '', 'Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum', '', '', '2025-01-30 16:30:54', '2025-01-30 16:30:54', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=services&#038;p=22', 0, 'services', '', 0),
(23, 1, '2025-01-30 16:31:33', '2025-01-30 16:31:33', '', 'Sed ut perspiciatis', '', 'publish', 'closed', 'closed', '', 'sed-ut-perspiciatis', '', '', '2025-01-30 16:31:33', '2025-01-30 16:31:33', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=services&#038;p=23', 0, 'services', '', 0),
(24, 1, '2025-01-30 16:32:09', '2025-01-30 16:32:09', '', 'Magni Dolores', '', 'publish', 'closed', 'closed', '', 'magni-dolores', '', '', '2025-01-30 16:32:09', '2025-01-30 16:32:09', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=services&#038;p=24', 0, 'services', '', 0),
(25, 1, '2025-01-30 16:32:37', '2025-01-30 16:32:37', '', 'Nemo Enim', '', 'publish', 'closed', 'closed', '', 'nemo-enim', '', '', '2025-01-30 16:32:37', '2025-01-30 16:32:37', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=services&#038;p=25', 0, 'services', '', 0),
(26, 1, '2025-01-30 16:49:40', '2025-01-30 16:49:40', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"moreservices\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'More Service', 'more-service', 'publish', 'closed', 'closed', '', 'group_679bac34e4dbb', '', '', '2025-01-30 16:49:40', '2025-01-30 16:49:40', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field-group&#038;p=26', 0, 'acf-field-group', '', 0),
(27, 1, '2025-01-30 16:49:40', '2025-01-30 16:49:40', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:32:\"Enter more service Details  hear\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";i:2;s:11:\"placeholder\";s:34:\"Enter more service Details  hear..\";s:9:\"new_lines\";s:0:\"\";}', 'Service Details', 'ms_details', 'publish', 'closed', 'closed', '', 'field_679bac35eaff1', '', '', '2025-01-30 16:49:40', '2025-01-30 16:49:40', '', 26, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 1, '2025-01-30 16:49:40', '2025-01-30 16:49:40', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:28:\"Enter your service link hear\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:17:\"http://lvespa.com\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Service link', 'ms_link', 'publish', 'closed', 'closed', '', 'field_679bad0deaff2', '', '', '2025-01-30 16:49:40', '2025-01-30 16:49:40', '', 26, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&p=28', 1, 'acf-field', '', 0),
(29, 1, '2025-01-30 16:51:02', '2025-01-30 16:51:02', '', 'Lobira Duno', '', 'publish', 'closed', 'closed', '', 'lobira-duno', '', '', '2025-01-30 16:51:02', '2025-01-30 16:51:02', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=moreservices&#038;p=29', 0, 'moreservices', '', 0),
(30, 1, '2025-01-30 16:51:22', '2025-01-30 16:51:22', '', 'Limere Radses', '', 'publish', 'closed', 'closed', '', 'limere-radses', '', '', '2025-01-30 16:51:22', '2025-01-30 16:51:22', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=moreservices&#038;p=30', 0, 'moreservices', '', 0),
(31, 1, '2025-01-30 16:51:45', '2025-01-30 16:51:45', '', 'Nive Lodo', '', 'publish', 'closed', 'closed', '', 'nive-lodo', '', '', '2025-01-30 16:51:45', '2025-01-30 16:51:45', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=moreservices&#038;p=31', 0, 'moreservices', '', 0),
(32, 1, '2025-01-30 16:52:02', '2025-01-30 16:52:02', '', 'Pale Treda', '', 'publish', 'closed', 'closed', '', 'pale-treda', '', '', '2025-01-30 16:52:02', '2025-01-30 16:52:02', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=moreservices&#038;p=32', 0, 'moreservices', '', 0),
(33, 1, '2025-01-30 17:07:09', '2025-01-30 17:07:09', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"features\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Features', 'features', 'publish', 'closed', 'closed', '', 'group_679bb12d7f993', '', '', '2025-01-30 17:07:09', '2025-01-30 17:07:09', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field-group&#038;p=33', 0, 'acf-field-group', '', 0),
(34, 1, '2025-01-30 17:07:09', '2025-01-30 17:07:09', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"Enter Your Feature Icon hear...\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:31:\"Enter Your Feature Icon hear...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Feature icon', 'feature_icon', 'publish', 'closed', 'closed', '', 'field_679bb12d4b06e', '', '', '2025-01-30 17:07:09', '2025-01-30 17:07:09', '', 33, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&p=34', 0, 'acf-field', '', 0),
(35, 1, '2025-01-30 17:07:59', '2025-01-30 17:07:59', '', 'Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum', '', '', '2025-01-30 17:07:59', '2025-01-30 17:07:59', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=features&#038;p=35', 0, 'features', '', 0),
(37, 1, '2025-01-30 17:08:33', '2025-01-30 17:08:33', '', 'Dolor Sitema', '', 'publish', 'closed', 'closed', '', 'dolor-sitema', '', '', '2025-01-30 17:08:33', '2025-01-30 17:08:33', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=features&#038;p=37', 0, 'features', '', 0),
(38, 1, '2025-01-30 17:08:57', '2025-01-30 17:08:57', '', 'Sed perspiciatis', '', 'publish', 'closed', 'closed', '', 'sed-perspiciatis', '', '', '2025-01-30 17:08:57', '2025-01-30 17:08:57', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=features&#038;p=38', 0, 'features', '', 0),
(39, 1, '2025-01-30 17:09:18', '2025-01-30 17:09:18', '', 'Magni Dolores', '', 'publish', 'closed', 'closed', '', 'magni-dolores', '', '', '2025-01-30 17:09:18', '2025-01-30 17:09:18', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=features&#038;p=39', 0, 'features', '', 0),
(40, 1, '2025-01-30 17:09:42', '2025-01-30 17:09:42', '', 'Nemo Enim', '', 'publish', 'closed', 'closed', '', 'nemo-enim', '', '', '2025-01-30 17:09:42', '2025-01-30 17:09:42', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=features&#038;p=40', 0, 'features', '', 0),
(41, 1, '2025-01-30 17:10:00', '2025-01-30 17:10:00', '', 'Eiusmod Tempor', '', 'publish', 'closed', 'closed', '', 'eiusmod-tempor', '', '', '2025-01-30 17:10:00', '2025-01-30 17:10:00', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=features&#038;p=41', 0, 'features', '', 0),
(42, 1, '2025-01-30 17:10:20', '2025-01-30 17:10:20', '', 'Midela Teren', '', 'publish', 'closed', 'closed', '', 'midela-teren', '', '', '2025-01-30 17:10:20', '2025-01-30 17:10:20', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=features&#038;p=42', 0, 'features', '', 0),
(43, 1, '2025-01-30 17:10:42', '2025-01-30 17:10:42', '', 'Pira Neve', '', 'publish', 'closed', 'closed', '', 'pira-neve', '', '', '2025-01-30 17:10:42', '2025-01-30 17:10:42', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=features&#038;p=43', 0, 'features', '', 0),
(44, 1, '2025-01-30 17:11:01', '2025-01-30 17:11:01', '', 'Dirada Pack', '', 'publish', 'closed', 'closed', '', 'dirada-pack', '', '', '2025-01-30 17:11:01', '2025-01-30 17:11:01', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=features&#038;p=44', 0, 'features', '', 0),
(45, 1, '2025-01-30 17:11:20', '2025-01-30 17:11:20', '', 'Moton Ideal', '', 'publish', 'closed', 'closed', '', 'moton-ideal', '', '', '2025-01-30 17:11:20', '2025-01-30 17:11:20', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=features&#038;p=45', 0, 'features', '', 0),
(46, 1, '2025-01-30 17:11:38', '2025-01-30 17:11:38', '', 'Verdo Park', '', 'publish', 'closed', 'closed', '', 'verdo-park', '', '', '2025-01-30 17:11:38', '2025-01-30 17:11:38', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=features&#038;p=46', 0, 'features', '', 0),
(47, 1, '2025-01-30 17:11:56', '2025-01-30 17:11:56', '', 'Flavor Nivelanda', '', 'publish', 'closed', 'closed', '', 'flavor-nivelanda-flavor-nivelanda', '', '', '2025-02-26 15:06:58', '2025-02-26 15:06:58', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=features&#038;p=47', 0, 'features', '', 0),
(48, 1, '2025-01-30 17:25:05', '2025-01-30 17:25:05', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"faq\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'F.A.Q', 'f-a-q', 'publish', 'closed', 'closed', '', 'group_679bb574008ad', '', '', '2025-01-30 17:28:26', '2025-01-30 17:28:26', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field-group&#038;p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2025-01-30 17:25:05', '2025-01-30 17:25:05', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:27:\"write FAQ ans for your user\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";i:2;s:11:\"placeholder\";s:19:\"Enter FAQ  ANS hear\";s:9:\"new_lines\";s:0:\"\";}', 'FAQ answers', 'faq_ans', 'publish', 'closed', 'closed', '', 'field_679bb5749e305', '', '', '2025-01-30 17:28:26', '2025-01-30 17:28:26', '', 48, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&#038;p=49', 0, 'acf-field', '', 0),
(50, 1, '2025-01-30 17:26:40', '2025-01-30 17:26:40', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:15:\"Enter Your Icon\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:15:\"Enter Your Icon\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'FAQ icon', 'faq_icon', 'publish', 'closed', 'closed', '', 'field_679bb6179af64', '', '', '2025-01-30 17:26:40', '2025-01-30 17:26:40', '', 48, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&p=50', 1, 'acf-field', '', 0),
(52, 1, '2025-01-30 17:29:06', '2025-01-30 17:29:06', '', 'Non consectetur a erat nam at lectus urna duis?', '', 'publish', 'closed', 'closed', '', 'non-consectetur-a-erat-nam-at-lectus-urna-duis', '', '', '2025-01-30 17:29:06', '2025-01-30 17:29:06', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=faq&#038;p=52', 0, 'faq', '', 0),
(53, 1, '2025-01-30 17:29:31', '2025-01-30 17:29:31', '', 'Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque?', '', 'publish', 'closed', 'closed', '', 'feugiat-scelerisque-varius-morbi-enim-nunc-faucibus-a-pellentesque', '', '', '2025-01-30 17:29:31', '2025-01-30 17:29:31', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=faq&#038;p=53', 0, 'faq', '', 0),
(54, 1, '2025-01-30 17:29:52', '2025-01-30 17:29:52', '', 'Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi?', '', 'publish', 'closed', 'closed', '', 'dolor-sit-amet-consectetur-adipiscing-elit-pellentesque-habitant-morbi', '', '', '2025-01-30 17:29:52', '2025-01-30 17:29:52', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=faq&#038;p=54', 0, 'faq', '', 0),
(58, 1, '2025-02-13 11:43:10', '2025-02-13 11:43:10', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"team-members\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Team', 'team', 'publish', 'closed', 'closed', '', 'group_67add71caafee', '', '', '2025-02-13 11:49:19', '2025-02-13 11:49:19', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field-group&#038;p=58', 0, 'acf-field-group', '', 0),
(59, 1, '2025-02-13 11:43:10', '2025-02-13 11:43:10', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:36:\"Enter Your Team-Members designations\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:12:\"Team-Members\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Team-Members designations', 'team-member-designations_', 'publish', 'closed', 'closed', '', 'field_67add71d12d41', '', '', '2025-02-13 11:43:10', '2025-02-13 11:43:10', '', 58, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&p=59', 0, 'acf-field', '', 0),
(60, 1, '2025-02-13 11:43:10', '2025-02-13 11:43:10', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:35:\"Enter your team member Twitter link\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:14:\"https://x.com/\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Twitter Link', 'twitter-link_', 'publish', 'closed', 'closed', '', 'field_67add7e112d42', '', '', '2025-02-13 11:44:17', '2025-02-13 11:44:17', '', 58, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&#038;p=60', 1, 'acf-field', '', 0),
(61, 1, '2025-02-13 11:43:10', '2025-02-13 11:43:10', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:36:\"Enter your team member Facebook link\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:25:\"https://www.facebook.com/\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Facebook Link', 'facebook_link', 'publish', 'closed', 'closed', '', 'field_67add86612d43', '', '', '2025-02-13 11:43:10', '2025-02-13 11:43:10', '', 58, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&p=61', 2, 'acf-field', '', 0),
(62, 1, '2025-02-13 11:43:10', '2025-02-13 11:43:10', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:37:\"Enter your team member Instagram link\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:26:\"https://www.instagram.com/\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Instagram Link', 'instagram_link', 'publish', 'closed', 'closed', '', 'field_67add8d712d44', '', '', '2025-02-13 11:43:10', '2025-02-13 11:43:10', '', 58, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&p=62', 3, 'acf-field', '', 0),
(63, 1, '2025-02-13 11:43:10', '2025-02-13 11:43:10', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:36:\"Enter your team member LinkedIn link\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:25:\"https://www.linkedin.com/\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'LinkedIn Link', 'linkedin_link', 'publish', 'closed', 'closed', '', 'field_67add92112d45', '', '', '2025-02-13 11:43:10', '2025-02-13 11:43:10', '', 58, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&p=63', 4, 'acf-field', '', 0),
(64, 1, '2025-02-13 11:43:10', '2025-02-13 11:43:10', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:28:\"Enter your team member image\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:17:\"png , jpeg ,  jpg\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Team Member\'s Image', 't_m_image', 'publish', 'closed', 'closed', '', 'field_67add96212d46', '', '', '2025-02-13 11:49:19', '2025-02-13 11:49:19', '', 58, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&#038;p=64', 5, 'acf-field', '', 0),
(67, 1, '2025-02-13 11:52:14', '2025-02-13 11:52:14', '', 'Walter White', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2025-02-13 11:52:14', '2025-02-13 11:52:14', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=team-members&#038;p=67', 0, 'team-members', '', 0),
(68, 1, '2025-02-13 11:47:56', '2025-02-13 11:47:56', '', 'apple-touch-icon', '', 'inherit', 'open', 'closed', '', 'apple-touch-icon', '', '', '2025-02-13 11:47:56', '2025-02-13 11:47:56', '', 67, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/apple-touch-icon.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2025-02-13 11:47:57', '2025-02-13 11:47:57', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2025-02-13 11:47:57', '2025-02-13 11:47:57', '', 67, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/favicon.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2025-02-13 11:48:09', '2025-02-13 11:48:09', '', 'apple-touch-icon', '', 'inherit', 'open', 'closed', '', 'apple-touch-icon-2', '', '', '2025-02-13 11:48:09', '2025-02-13 11:48:09', '', 67, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/apple-touch-icon-1.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2025-02-13 11:48:10', '2025-02-13 11:48:10', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon-2', '', '', '2025-02-13 11:48:10', '2025-02-13 11:48:10', '', 67, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/favicon-1.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2025-02-13 11:50:13', '2025-02-13 11:50:13', '', 'Walter White', '', 'publish', 'closed', 'closed', '', 'walter-white', '', '', '2025-02-13 11:50:13', '2025-02-13 11:50:13', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=team-members&#038;p=72', 0, 'team-members', '', 0),
(74, 1, '2025-02-13 11:49:51', '2025-02-13 11:49:51', '', 'team-1', '', 'inherit', 'open', 'closed', '', 'team-1', '', '', '2025-02-13 11:49:51', '2025-02-13 11:49:51', '', 72, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/team-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2025-02-13 11:49:51', '2025-02-13 11:49:51', '', 'team-2', '', 'inherit', 'open', 'closed', '', 'team-2', '', '', '2025-02-13 11:49:51', '2025-02-13 11:49:51', '', 72, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/team-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2025-02-13 11:49:52', '2025-02-13 11:49:52', '', 'team-3', '', 'inherit', 'open', 'closed', '', 'team-3', '', '', '2025-02-13 11:49:52', '2025-02-13 11:49:52', '', 72, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/team-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2025-02-13 11:49:52', '2025-02-13 11:49:52', '', 'team-4', '', 'inherit', 'open', 'closed', '', 'team-4', '', '', '2025-02-13 11:49:52', '2025-02-13 11:49:52', '', 72, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/team-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2025-02-13 11:50:54', '2025-02-13 11:50:54', '', 'Sarah Jhonson', '', 'publish', 'closed', 'closed', '', 'sarah-jhonson', '', '', '2025-02-13 11:50:54', '2025-02-13 11:50:54', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=team-members&#038;p=78', 0, 'team-members', '', 0),
(79, 1, '2025-02-13 11:51:27', '2025-02-13 11:51:27', '', 'William Anderson', '', 'publish', 'closed', 'closed', '', 'william-anderson', '', '', '2025-02-13 11:51:27', '2025-02-13 11:51:27', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=team-members&#038;p=79', 0, 'team-members', '', 0),
(80, 1, '2025-02-13 11:52:02', '2025-02-13 11:52:02', '', 'Amanda Jepson', '', 'publish', 'closed', 'closed', '', 'amanda-jepson', '', '', '2025-02-13 11:52:02', '2025-02-13 11:52:02', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=team-members&#038;p=80', 0, 'team-members', '', 0),
(83, 1, '2025-02-13 12:21:36', '2025-02-13 12:21:36', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"portfolio\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Portfolio', 'portfolio', 'publish', 'closed', 'closed', '', 'group_67ade34fc6576', '', '', '2025-02-13 12:24:32', '2025-02-13 12:24:32', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field-group&#038;p=83', 0, 'acf-field-group', '', 0),
(84, 1, '2025-02-13 12:21:36', '2025-02-13 12:21:36', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:28:\"enter your portfolio details\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:28:\"enter your portfolio details\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'portfolio details', 'portfolio_details', 'publish', 'closed', 'closed', '', 'field_67ade34f37f13', '', '', '2025-02-13 12:21:36', '2025-02-13 12:21:36', '', 83, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&p=84', 0, 'acf-field', '', 0),
(85, 1, '2025-02-13 12:21:36', '2025-02-13 12:21:36', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:25:\"enter your portfolio link\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:25:\"enter your portfolio link\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Portfolio Link', 'portfolio_link', 'publish', 'closed', 'closed', '', 'field_67ade3ac37f14', '', '', '2025-02-13 12:24:32', '2025-02-13 12:24:32', '', 83, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&#038;p=85', 1, 'acf-field', '', 0),
(86, 1, '2025-02-13 12:24:32', '2025-02-13 12:24:32', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:26:\"enter your portfolio image\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:16:\"png , jpg , jpeg\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Portfolio Image', 'portfolio_image_', 'publish', 'closed', 'closed', '', 'field_67ade40804bc4', '', '', '2025-02-13 12:24:32', '2025-02-13 12:24:32', '', 83, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&p=86', 2, 'acf-field', '', 0),
(87, 1, '2025-02-13 12:26:26', '2025-02-13 12:26:26', '', 'App 1', '', 'publish', 'closed', 'closed', '', 'app-1', '', '', '2025-02-13 12:26:26', '2025-02-13 12:26:26', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=portfolio&#038;p=87', 0, 'portfolio', '', 0),
(89, 1, '2025-02-13 12:24:58', '2025-02-13 12:24:58', '', 'portfolio-1', '', 'inherit', 'open', 'closed', '', 'portfolio-1', '', '', '2025-02-13 12:24:58', '2025-02-13 12:24:58', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/portfolio-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2025-02-13 12:24:58', '2025-02-13 12:24:58', '', 'portfolio-2', '', 'inherit', 'open', 'closed', '', 'portfolio-2', '', '', '2025-02-13 12:24:58', '2025-02-13 12:24:58', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/portfolio-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2025-02-13 12:24:59', '2025-02-13 12:24:59', '', 'portfolio-3', '', 'inherit', 'open', 'closed', '', 'portfolio-3', '', '', '2025-02-13 12:24:59', '2025-02-13 12:24:59', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/portfolio-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2025-02-13 12:24:59', '2025-02-13 12:24:59', '', 'portfolio-4', '', 'inherit', 'open', 'closed', '', 'portfolio-4', '', '', '2025-02-13 12:24:59', '2025-02-13 12:24:59', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/portfolio-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2025-02-13 12:24:59', '2025-02-13 12:24:59', '', 'portfolio-5', '', 'inherit', 'open', 'closed', '', 'portfolio-5', '', '', '2025-02-13 12:24:59', '2025-02-13 12:24:59', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/portfolio-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2025-02-13 12:25:00', '2025-02-13 12:25:00', '', 'portfolio-6', '', 'inherit', 'open', 'closed', '', 'portfolio-6', '', '', '2025-02-13 12:25:00', '2025-02-13 12:25:00', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/portfolio-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2025-02-13 12:25:00', '2025-02-13 12:25:00', '', 'portfolio-7', '', 'inherit', 'open', 'closed', '', 'portfolio-7', '', '', '2025-02-13 12:25:00', '2025-02-13 12:25:00', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/portfolio-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2025-02-13 12:25:00', '2025-02-13 12:25:00', '', 'portfolio-8', '', 'inherit', 'open', 'closed', '', 'portfolio-8', '', '', '2025-02-13 12:25:00', '2025-02-13 12:25:00', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/portfolio-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2025-02-13 12:25:00', '2025-02-13 12:25:00', '', 'portfolio-9', '', 'inherit', 'open', 'closed', '', 'portfolio-9', '', '', '2025-02-13 12:25:00', '2025-02-13 12:25:00', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/portfolio-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2025-02-13 12:25:01', '2025-02-13 12:25:01', '', 'portfolio-details-1', '', 'inherit', 'open', 'closed', '', 'portfolio-details-1', '', '', '2025-02-13 12:25:01', '2025-02-13 12:25:01', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/portfolio-details-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2025-02-13 12:25:01', '2025-02-13 12:25:01', '', 'portfolio-details-2', '', 'inherit', 'open', 'closed', '', 'portfolio-details-2', '', '', '2025-02-13 12:25:01', '2025-02-13 12:25:01', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/portfolio-details-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2025-02-13 12:25:01', '2025-02-13 12:25:01', '', 'portfolio-details-3', '', 'inherit', 'open', 'closed', '', 'portfolio-details-3', '', '', '2025-02-13 12:25:01', '2025-02-13 12:25:01', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/portfolio-details-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2025-02-13 12:25:27', '2025-02-13 12:25:27', '', 'client-1', '', 'inherit', 'open', 'closed', '', 'client-1', '', '', '2025-02-13 12:25:27', '2025-02-13 12:25:27', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/client-1.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2025-02-13 12:25:27', '2025-02-13 12:25:27', '', 'client-2', '', 'inherit', 'open', 'closed', '', 'client-2', '', '', '2025-02-13 12:25:27', '2025-02-13 12:25:27', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/client-2.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2025-02-13 12:25:27', '2025-02-13 12:25:27', '', 'client-3', '', 'inherit', 'open', 'closed', '', 'client-3', '', '', '2025-02-13 12:25:27', '2025-02-13 12:25:27', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/client-3.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2025-02-13 12:25:28', '2025-02-13 12:25:28', '', 'client-4', '', 'inherit', 'open', 'closed', '', 'client-4', '', '', '2025-02-13 12:25:28', '2025-02-13 12:25:28', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/client-4.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2025-02-13 12:25:28', '2025-02-13 12:25:28', '', 'client-5', '', 'inherit', 'open', 'closed', '', 'client-5', '', '', '2025-02-13 12:25:28', '2025-02-13 12:25:28', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/client-5.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2025-02-13 12:25:28', '2025-02-13 12:25:28', '', 'client-6', '', 'inherit', 'open', 'closed', '', 'client-6', '', '', '2025-02-13 12:25:28', '2025-02-13 12:25:28', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/client-6.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2025-02-13 12:25:36', '2025-02-13 12:25:36', '', 'apple-touch-icon', '', 'inherit', 'open', 'closed', '', 'apple-touch-icon-3', '', '', '2025-02-13 12:25:36', '2025-02-13 12:25:36', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/apple-touch-icon-2.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2025-02-13 12:25:36', '2025-02-13 12:25:36', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon-3', '', '', '2025-02-13 12:25:36', '2025-02-13 12:25:36', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/favicon-2.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2025-02-13 12:25:36', '2025-02-13 12:25:36', 'banner img', 'hero-img', 'banner img', 'inherit', 'open', 'closed', '', 'hero-img', '', '', '2025-02-27 02:23:30', '2025-02-27 02:23:30', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/hero-img.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2025-02-13 12:25:45', '2025-02-13 12:25:45', '', 'testimonials-1', '', 'inherit', 'open', 'closed', '', 'testimonials-1', '', '', '2025-02-27 07:51:25', '2025-02-27 07:51:25', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/testimonials-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2025-02-13 12:25:45', '2025-02-13 12:25:45', '', 'testimonials-2', '', 'inherit', 'open', 'closed', '', 'testimonials-2', '', '', '2025-02-13 12:25:45', '2025-02-13 12:25:45', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/testimonials-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2025-02-13 12:25:46', '2025-02-13 12:25:46', '', 'testimonials-3', '', 'inherit', 'open', 'closed', '', 'testimonials-3', '', '', '2025-02-13 12:25:46', '2025-02-13 12:25:46', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/testimonials-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2025-02-13 12:25:46', '2025-02-13 12:25:46', '', 'testimonials-4', '', 'inherit', 'open', 'closed', '', 'testimonials-4', '', '', '2025-02-13 12:25:46', '2025-02-13 12:25:46', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/testimonials-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2025-02-13 12:25:46', '2025-02-13 12:25:46', '', 'testimonials-5', '', 'inherit', 'open', 'closed', '', 'testimonials-5', '', '', '2025-02-13 12:25:46', '2025-02-13 12:25:46', '', 87, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/testimonials-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2025-02-13 12:26:53', '2025-02-13 12:26:53', '', 'App 2', '', 'publish', 'closed', 'closed', '', 'app-2', '', '', '2025-02-13 12:26:53', '2025-02-13 12:26:53', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=portfolio&#038;p=115', 0, 'portfolio', '', 0),
(117, 1, '2025-02-13 12:27:16', '2025-02-13 12:27:16', '', 'App 3', '', 'publish', 'closed', 'closed', '', 'app-3', '', '', '2025-02-13 12:53:48', '2025-02-13 12:53:48', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=portfolio&#038;p=117', 0, 'portfolio', '', 0),
(119, 1, '2025-02-25 13:52:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-02-25 13:52:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_custom/vespa/?p=119', 0, 'post', '', 0),
(120, 1, '2025-02-26 14:51:24', '2025-02-26 14:51:24', 'vaspa', 'logo', 'vaspa', 'inherit', 'open', 'closed', '', 'logo', '', '', '2025-02-26 14:52:05', '2025-02-26 14:52:05', '', 0, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/logo.png', 0, 'attachment', 'image/png', 0),
(121, 1, '2025-02-27 03:17:53', '2025-02-27 03:17:53', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"client\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Clients', 'clients', 'publish', 'closed', 'closed', '', 'group_67bfd811ded7a', '', '', '2025-02-27 03:23:27', '2025-02-27 03:23:27', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field-group&#038;p=121', 0, 'acf-field-group', '', 0),
(122, 1, '2025-02-27 03:17:53', '2025-02-27 03:17:53', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:24:\"Enter your Clients image\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Client img', 'client_img', 'publish', 'closed', 'closed', '', 'field_67bfd8111bea1', '', '', '2025-02-27 03:23:27', '2025-02-27 03:23:27', '', 121, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&#038;p=122', 0, 'acf-field', '', 0),
(128, 1, '2025-02-27 03:18:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-02-27 03:18:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=client&p=128', 0, 'client', '', 0),
(129, 1, '2025-02-27 03:18:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-02-27 03:18:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=client&p=129', 0, 'client', '', 0),
(131, 1, '2025-02-27 03:24:26', '2025-02-27 03:24:26', '', 'Client logo 1', '', 'publish', 'closed', 'closed', '', 'client-logo-1', '', '', '2025-02-27 03:24:26', '2025-02-27 03:24:26', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=client&#038;p=131', 0, 'client', '', 0),
(132, 1, '2025-02-27 03:24:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-02-27 03:24:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=client&p=132', 0, 'client', '', 0),
(133, 1, '2025-02-27 03:24:49', '2025-02-27 03:24:49', '', 'Client logo2', '', 'publish', 'closed', 'closed', '', 'client-logo2', '', '', '2025-02-27 03:24:49', '2025-02-27 03:24:49', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=client&#038;p=133', 0, 'client', '', 0),
(134, 1, '2025-02-27 03:25:02', '2025-02-27 03:25:02', '', 'Client logo3', '', 'publish', 'closed', 'closed', '', 'client-logo3', '', '', '2025-02-27 03:25:02', '2025-02-27 03:25:02', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=client&#038;p=134', 0, 'client', '', 0),
(135, 1, '2025-02-27 03:25:20', '2025-02-27 03:25:20', '', 'Client logo4', '', 'publish', 'closed', 'closed', '', 'client-logo4', '', '', '2025-02-27 03:25:20', '2025-02-27 03:25:20', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=client&#038;p=135', 0, 'client', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(136, 1, '2025-02-27 03:25:37', '2025-02-27 03:25:37', '', 'Client logo5', '', 'publish', 'closed', 'closed', '', 'client-logo5', '', '', '2025-02-27 03:25:37', '2025-02-27 03:25:37', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=client&#038;p=136', 0, 'client', '', 0),
(137, 1, '2025-02-27 03:25:50', '2025-02-27 03:25:50', '', 'Client logo6', '', 'publish', 'closed', 'closed', '', 'client-logo6', '', '', '2025-02-27 03:25:50', '2025-02-27 03:25:50', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=client&#038;p=137', 0, 'client', '', 0),
(138, 1, '2025-02-27 07:41:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-02-27 07:41:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=testimonial&p=138', 0, 'testimonial', '', 0),
(139, 1, '2025-02-27 07:42:45', '2025-02-27 07:42:45', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"testimonial\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Testimonial', 'testimonial', 'publish', 'closed', 'closed', '', 'group_67c01732377ca', '', '', '2025-02-27 07:49:26', '2025-02-27 07:49:26', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field-group&#038;p=139', 0, 'acf-field-group', '', 0),
(141, 1, '2025-02-27 07:48:29', '2025-02-27 07:48:29', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:32:\"entry your testimonial Sub title\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:20:\"testimonial subtitle\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'testimonial_subtitle', 'testimonial_subtitle', 'publish', 'closed', 'closed', '', 'field_67c017cacbb6a', '', '', '2025-02-27 07:49:02', '2025-02-27 07:49:02', '', 139, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&#038;p=141', 0, 'acf-field', '', 0),
(142, 1, '2025-02-27 07:48:29', '2025-02-27 07:48:29', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:34:\"Entry your testimonial description\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";i:4;s:11:\"placeholder\";s:23:\"testimonial description\";s:9:\"new_lines\";s:0:\"\";}', 'Testimonial Description', 'testimonial_description', 'publish', 'closed', 'closed', '', 'field_67c0180acbb6b', '', '', '2025-02-27 07:49:26', '2025-02-27 07:49:26', '', 139, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&#038;p=142', 1, 'acf-field', '', 0),
(143, 1, '2025-02-27 07:48:29', '2025-02-27 07:48:29', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:28:\"Entry your testimonial image\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Testimonial image', 'testimonial_image_', 'publish', 'closed', 'closed', '', 'field_67c01880cbb6c', '', '', '2025-02-27 07:49:02', '2025-02-27 07:49:02', '', 139, 'http://localhost/wordpress_custom/vespa/?post_type=acf-field&#038;p=143', 2, 'acf-field', '', 0),
(144, 1, '2025-02-27 07:48:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-02-27 07:48:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=testimonial&p=144', 0, 'testimonial', '', 0),
(145, 1, '2025-02-27 07:48:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-02-27 07:48:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=testimonial&p=145', 0, 'testimonial', '', 0),
(146, 1, '2025-02-27 07:48:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-02-27 07:48:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=testimonial&p=146', 0, 'testimonial', '', 0),
(147, 1, '2025-02-27 07:48:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-02-27 07:48:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=testimonial&p=147', 0, 'testimonial', '', 0),
(148, 1, '2025-02-27 07:49:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-02-27 07:49:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=testimonial&p=148', 0, 'testimonial', '', 0),
(149, 1, '2025-02-27 07:51:33', '2025-02-27 07:51:33', '', 'Saul Goodman', '', 'publish', 'closed', 'closed', '', 'saul-goodman', '', '', '2025-02-27 07:51:33', '2025-02-27 07:51:33', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=testimonial&#038;p=149', 0, 'testimonial', '', 0),
(150, 1, '2025-02-27 07:52:48', '2025-02-27 07:52:48', '', 'Sara Wilsson', '', 'publish', 'closed', 'closed', '', 'sara-wilsson', '', '', '2025-02-27 07:52:48', '2025-02-27 07:52:48', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=testimonial&#038;p=150', 0, 'testimonial', '', 0),
(151, 1, '2025-02-27 07:51:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-02-27 07:51:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=testimonial&p=151', 0, 'testimonial', '', 0),
(152, 1, '2025-02-27 07:53:52', '2025-02-27 07:53:52', '', 'Jena Karlis', '', 'publish', 'closed', 'closed', '', 'jena-karlis', '', '', '2025-02-27 07:53:52', '2025-02-27 07:53:52', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=testimonial&#038;p=152', 0, 'testimonial', '', 0),
(153, 1, '2025-02-27 07:54:53', '2025-02-27 07:54:53', '', 'Matt Brandon', '', 'publish', 'closed', 'closed', '', 'matt-brandon', '', '', '2025-02-27 07:54:53', '2025-02-27 07:54:53', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=testimonial&#038;p=153', 0, 'testimonial', '', 0),
(154, 1, '2025-02-27 07:53:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-02-27 07:53:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=testimonial&p=154', 0, 'testimonial', '', 0),
(155, 1, '2025-02-27 07:56:07', '2025-02-27 07:56:07', '', 'John Larson', '', 'publish', 'closed', 'closed', '', 'john-larson', '', '', '2025-02-27 07:56:07', '2025-02-27 07:56:07', '', 0, 'http://localhost/wordpress_custom/vespa/?post_type=testimonial&#038;p=155', 0, 'testimonial', '', 0),
(156, 1, '2025-02-27 09:00:25', '2025-02-27 09:00:25', '', 'counts-img', '', 'inherit', 'open', 'closed', '', 'counts-img', '', '', '2025-02-27 09:00:25', '2025-02-27 09:00:25', '', 0, 'http://localhost/wordpress_custom/vespa/wp-content/uploads/2025/02/counts-img.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Montasir'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '119'),
(18, 1, 'meta-box-order_wporg_product', 'a:3:{s:4:\"side\";s:48:\"submitdiv,postexcerpt,commentstatusdiv,authordiv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(19, 1, 'screen_layout_wporg_product', '2'),
(21, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(22, 1, 'metaboxhidden_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(23, 1, 'wp_user-settings', 'libraryContent=browse'),
(24, 1, 'wp_user-settings-time', '1739447354'),
(25, 1, 'session_tokens', 'a:3:{s:64:\"5e16c6c4f2dd45d71e0fb91861576aa1a05c7d901878108f9986c9d9d2ac0877\";a:4:{s:10:\"expiration\";i:1740752813;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\";s:5:\"login\";i:1740580013;}s:64:\"c4f7935fd732484d8090ee89ef171a74fca8d6e2f0623a07522848378eb6ec87\";a:4:{s:10:\"expiration\";i:1740814558;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\";s:5:\"login\";i:1740641758;}s:64:\"77294f1a545a039bfb33357add237a09535b1b97244ef13a69d781f653ef4a4a\";a:4:{s:10:\"expiration\";i:1740924006;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\";s:5:\"login\";i:1740751206;}}'),
(26, 1, 'wp_r_tru_u_x', 'a:2:{s:2:\"id\";s:0:\"\";s:7:\"expires\";i:86400;}'),
(27, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(28, 1, 'acf_user_settings', 'a:1:{s:20:\"taxonomies-first-run\";b:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Montasir', '$P$BRl3zX/Wvb1bFEZV1FK94yP3xpUstN0', 'montasir', 'montasiralam132@gmail.com', 'http://localhost/wordpress_custom/vespa', '2025-01-30 12:42:14', '', 0, 'Montasir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
