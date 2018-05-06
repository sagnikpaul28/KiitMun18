-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2018 at 01:33 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kiitmun18`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration_double_delegation`
--

CREATE TABLE `registration_double_delegation` (
  `id` int(11) NOT NULL,
  `Name1` text NOT NULL,
  `Name2` text NOT NULL,
  `Email1` text NOT NULL,
  `Email2` text NOT NULL,
  `Number1` text NOT NULL,
  `Number2` text NOT NULL,
  `Committee1` text NOT NULL,
  `Country1` text NOT NULL,
  `Committee2` text NOT NULL,
  `Country2` text NOT NULL,
  `Committee3` text NOT NULL,
  `Country3` text NOT NULL,
  `FinalCommittee` text NOT NULL,
  `FinalCountry` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration_double_delegation`
--

INSERT INTO `registration_double_delegation` (`id`, `Name1`, `Name2`, `Email1`, `Email2`, `Number1`, `Number2`, `Committee1`, `Country1`, `Committee2`, `Country2`, `Committee3`, `Country3`, `FinalCommittee`, `FinalCountry`) VALUES
(1, 'Sagnik Paul', 'rrr', 'sagnikpaul2882@gmail.com', 'sl2882@gmail.com', '5555', '6666', 'United Nations Disarmament and International Security Committee ( DISEC )', 'Ukraine', 'United Nations Disarmament and International Security Committee ( DISEC )', 'Ukraine', 'United Nations Disarmament and International Security Committee ( DISEC )', 'Ukraine', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `registration_form`
--

CREATE TABLE `registration_form` (
  `id` int(11) NOT NULL,
  `propername` text NOT NULL,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `label` text NOT NULL,
  `placeholder` text NOT NULL,
  `required` text NOT NULL,
  `options` longtext NOT NULL,
  `numberofrows` text NOT NULL,
  `delegation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration_form`
--

INSERT INTO `registration_form` (`id`, `propername`, `name`, `type`, `label`, `placeholder`, `required`, `options`, `numberofrows`, `delegation`) VALUES
(32, 'Name', 'ip-name', 'Text', 'Name:', 'Enter Your Name..', 'yes', ' ', ' ', 'ip'),
(33, 'Email', 'ip-email', 'Email', 'Email:', 'Enter Your Email..', 'yes', ' ', ' ', 'ip'),
(34, 'Number', 'ip-number', 'Number', 'Number:', 'Enter Your Number..', 'yes', ' ', ' ', 'ip'),
(35, 'DOB', 'ip-dob', 'Text', 'Date Of Birth:', 'Enter Date Of Birth ( dd/mm/yyyy )', 'yes', ' ', ' ', 'ip'),
(36, 'University', 'ip-university', 'Text', 'University:', 'Enter Your University', 'yes', ' ', ' ', 'ip'),
(37, 'Experience', 'ip-experience', 'Text', 'Experience:', 'Enter Your Experience', 'yes', ' ', ' ', 'ip'),
(46, 'Name', 'single-delegate-name', 'Text', 'Name:', 'Enter Your Name..', 'yes', ' ', ' ', 'single'),
(51, 'Email', 'single-delegate-email', 'Email', 'Email:', 'Enter Your Email..', 'yes', ' ', ' ', 'single'),
(52, 'Gender', 'single-delegate-gender', 'Radio', 'Gender:', ' ', 'yes', 'Male,Female', ' ', 'single'),
(53, 'Address', 'single-delegate-address', 'Textarea', 'Address:', 'Enter Your Address..', 'yes', ' ', '5', 'single'),
(75, 'Name', 'double-delegate-name', 'Text', 'Name:', 'Enter Your Name..', 'yes', ' ', ' ', 'double-double'),
(79, 'Email', 'double-delegate-email', 'Email', 'Email:', 'Enter Your Email..', 'yes', ' ', ' ', 'double-double'),
(80, 'Number', 'double-delegate-number', 'Number', 'Number:', 'Enter Your Number..', 'yes', ' ', ' ', 'double-double');

-- --------------------------------------------------------

--
-- Table structure for table `registration_ip`
--

CREATE TABLE `registration_ip` (
  `id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Number` text NOT NULL,
  `DOB` text NOT NULL,
  `University` text NOT NULL,
  `Experience` text NOT NULL,
  `Committee1` text NOT NULL,
  `Country1` text NOT NULL,
  `Committee2` text NOT NULL,
  `Country2` text NOT NULL,
  `Committee3` text NOT NULL,
  `Country3` text NOT NULL,
  `FinalCommittee` text NOT NULL,
  `FinalCountry` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration_ip`
--

INSERT INTO `registration_ip` (`id`, `Name`, `Email`, `Number`, `DOB`, `University`, `Experience`, `Committee1`, `Country1`, `Committee2`, `Country2`, `Committee3`, `Country3`, `FinalCommittee`, `FinalCountry`) VALUES
(1, 'Sagnik Paul', 'sagnikpaul2882@gmail.com', '9999', '54353n', 'etet', '4363', 'The United Nations Ocean Conference ( UN Ocean )', 'Bolivarian Republic of Venezuela', 'The United Nations Ocean Conference ( UN Ocean )', 'Vietnam', 'Organisation For The Prohibition of Chemical Weapons ( OPCW )', 'Tajikistan', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `registration_single_delegation`
--

CREATE TABLE `registration_single_delegation` (
  `id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Gender` text NOT NULL,
  `Address` text NOT NULL,
  `Committee1` text NOT NULL,
  `Country1` text NOT NULL,
  `Committee2` text NOT NULL,
  `Country2` text NOT NULL,
  `Committee3` text NOT NULL,
  `Country3` text NOT NULL,
  `FinalCommittee` text NOT NULL,
  `FinalCountry` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration_single_delegation`
--

INSERT INTO `registration_single_delegation` (`id`, `Name`, `Email`, `Gender`, `Address`, `Committee1`, `Country1`, `Committee2`, `Country2`, `Committee3`, `Country3`, `FinalCommittee`, `FinalCountry`) VALUES
(2, 'Sagnik Paul', 'sagnikpaul2882@gmail.com', 'Male', '40 Sisir Bagan Road\r\nBehala', 'United nations Commission On Narcotic Drugs ( UNCND )', 'South Korea', 'United Nations Social, Humanitarian and Cultural Committee ( SOCHUM )', 'Senegal', 'United Nations Special Political and Decolonization Committee ( SPECPOL )', 'Togo', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/KiitMun18', 'yes'),
(2, 'home', 'http://localhost/KiitMun18', 'yes'),
(3, 'blogname', 'KIIT International Model United Nations 18', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sagnikpaul2882@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:135:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:12:\"committee/?$\";s:29:\"index.php?post_type=committee\";s:42:\"committee/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=committee&feed=$matches[1]\";s:37:\"committee/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=committee&feed=$matches[1]\";s:29:\"committee/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=committee&paged=$matches[1]\";s:10:\"country/?$\";s:27:\"index.php?post_type=country\";s:40:\"country/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=country&feed=$matches[1]\";s:35:\"country/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=country&feed=$matches[1]\";s:27:\"country/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=country&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"committee/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"committee/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"committee/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"committee/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"committee/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"committee/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"committee/([^/]+)/embed/?$\";s:42:\"index.php?committee=$matches[1]&embed=true\";s:30:\"committee/([^/]+)/trackback/?$\";s:36:\"index.php?committee=$matches[1]&tb=1\";s:50:\"committee/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?committee=$matches[1]&feed=$matches[2]\";s:45:\"committee/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?committee=$matches[1]&feed=$matches[2]\";s:38:\"committee/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?committee=$matches[1]&paged=$matches[2]\";s:45:\"committee/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?committee=$matches[1]&cpage=$matches[2]\";s:34:\"committee/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?committee=$matches[1]&page=$matches[2]\";s:26:\"committee/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"committee/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"committee/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"committee/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"committee/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"committee/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"country/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"country/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"country/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"country/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"country/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"country/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"country/([^/]+)/embed/?$\";s:40:\"index.php?country=$matches[1]&embed=true\";s:28:\"country/([^/]+)/trackback/?$\";s:34:\"index.php?country=$matches[1]&tb=1\";s:48:\"country/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?country=$matches[1]&feed=$matches[2]\";s:43:\"country/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?country=$matches[1]&feed=$matches[2]\";s:36:\"country/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?country=$matches[1]&paged=$matches[2]\";s:43:\"country/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?country=$matches[1]&cpage=$matches[2]\";s:32:\"country/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?country=$matches[1]&page=$matches[2]\";s:24:\"country/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"country/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"country/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"country/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"country/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"country/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mun18', 'yes'),
(41, 'stylesheet', 'mun18', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1525613992;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1525617975;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1525632416;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1524322037;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1525590212;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(116, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1525590212;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1525590213;s:7:\"checked\";a:1:{s:5:\"mun18\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(120, 'can_compress_scripts', '1', 'no'),
(138, 'current_theme', '2018', 'yes'),
(139, 'theme_mods_mun18', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:6;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(202, 'category_children', 'a:1:{i:2;a:3:{i:0;i:3;i:1;i:4;i:2;i:5;}}', 'yes'),
(215, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(238, '_site_transient_timeout_theme_roots', '1525592012', 'no'),
(239, '_site_transient_theme_roots', 'a:1:{s:5:\"mun18\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(10, 10, '_edit_last', '1'),
(11, 10, '_edit_lock', '1524336707:1'),
(12, 11, '_edit_last', '1'),
(13, 11, '_edit_lock', '1524336857:1'),
(17, 13, '_edit_last', '1'),
(18, 13, '_edit_lock', '1524336794:1'),
(19, 15, '_edit_last', '1'),
(20, 15, '_edit_lock', '1525345471:1'),
(25, 17, '_edit_last', '1'),
(26, 17, '_edit_lock', '1524338584:1'),
(27, 20, '_edit_last', '1'),
(28, 20, '_edit_lock', '1524338598:1'),
(49, 34, '_edit_last', '1'),
(52, 34, 'country-list', NULL),
(53, 34, '_edit_lock', '1524842946:1'),
(59, 34, '_wp_trash_meta_status', 'publish'),
(60, 34, '_wp_trash_meta_time', '1524843089'),
(61, 34, '_wp_desired_post_slug', 'post-1'),
(62, 38, '_edit_last', '1'),
(63, 38, 'country-list', NULL),
(64, 38, '_edit_lock', '1524868953:1'),
(65, 39, '_edit_last', '1'),
(66, 39, 'country-list', NULL),
(67, 39, '_edit_lock', '1524868962:1'),
(68, 40, '_edit_last', '1'),
(69, 40, 'country-list', NULL),
(70, 40, '_edit_lock', '1524868971:1'),
(71, 41, '_edit_last', '1'),
(72, 41, 'country-list', NULL),
(73, 41, '_edit_lock', '1524868983:1'),
(74, 42, '_edit_last', '1'),
(75, 42, 'country-list', NULL),
(76, 42, '_edit_lock', '1524868993:1'),
(77, 43, '_edit_last', '1'),
(78, 43, 'country-list', NULL),
(79, 43, '_edit_lock', '1524869002:1'),
(80, 44, '_edit_last', '1'),
(81, 44, 'country-list', NULL),
(82, 44, '_edit_lock', '1524869011:1'),
(83, 45, '_edit_last', '1'),
(84, 45, 'country-list', NULL),
(85, 45, '_edit_lock', '1524869019:1'),
(86, 46, '_edit_last', '1'),
(87, 46, 'country-list', NULL),
(88, 46, '_edit_lock', '1524869029:1'),
(89, 47, '_edit_last', '1'),
(90, 47, 'country-list', NULL),
(91, 47, '_edit_lock', '1524869037:1'),
(92, 48, '_edit_last', '1'),
(93, 48, 'country-list', NULL),
(94, 48, '_edit_lock', '1524869056:1'),
(95, 49, '_edit_last', '1'),
(96, 49, 'country-list', NULL),
(97, 49, '_edit_lock', '1524869082:1'),
(98, 50, '_edit_last', '1'),
(99, 50, 'country-list', NULL),
(100, 50, '_edit_lock', '1524869095:1'),
(101, 51, '_edit_last', '1'),
(102, 51, 'country-list', NULL),
(103, 51, '_edit_lock', '1524869104:1'),
(104, 52, '_edit_last', '1'),
(105, 52, 'country-list', NULL),
(106, 52, '_edit_lock', '1524869114:1'),
(107, 54, '_edit_last', '1'),
(108, 54, 'country-list', NULL),
(109, 54, '_edit_lock', '1524869137:1'),
(110, 55, '_edit_last', '1'),
(111, 55, 'country-list', NULL),
(112, 55, '_edit_lock', '1524869145:1'),
(113, 56, '_edit_last', '1'),
(114, 56, 'country-list', NULL),
(115, 56, '_edit_lock', '1524869157:1'),
(116, 57, '_edit_last', '1'),
(117, 57, 'country-list', NULL),
(118, 57, '_edit_lock', '1524869166:1'),
(119, 58, '_edit_last', '1'),
(120, 58, 'country-list', NULL),
(121, 58, '_edit_lock', '1524869175:1'),
(122, 59, '_edit_last', '1'),
(123, 59, 'country-list', NULL),
(124, 59, '_edit_lock', '1524869186:1'),
(125, 60, '_edit_last', '1'),
(126, 60, 'country-list', NULL),
(127, 60, '_edit_lock', '1524869198:1'),
(128, 61, '_edit_last', '1'),
(129, 61, 'country-list', NULL),
(130, 61, '_edit_lock', '1524869205:1'),
(131, 62, '_edit_last', '1'),
(132, 62, 'country-list', NULL),
(133, 62, '_edit_lock', '1524869214:1'),
(134, 63, '_edit_last', '1'),
(135, 63, 'country-list', NULL),
(136, 63, '_edit_lock', '1524869224:1'),
(137, 65, '_edit_last', '1'),
(138, 65, 'country-list', NULL),
(139, 65, '_edit_lock', '1524869255:1'),
(140, 66, '_edit_last', '1'),
(141, 66, 'country-list', NULL),
(142, 66, '_edit_lock', '1524869265:1'),
(143, 67, '_edit_last', '1'),
(144, 67, 'country-list', NULL),
(145, 67, '_edit_lock', '1524869273:1'),
(146, 68, '_edit_last', '1'),
(147, 68, 'country-list', NULL),
(148, 68, '_edit_lock', '1524869282:1'),
(149, 69, '_edit_last', '1'),
(150, 69, 'country-list', NULL),
(151, 69, '_edit_lock', '1524869291:1'),
(152, 70, '_edit_last', '1'),
(153, 70, 'country-list', NULL),
(154, 70, '_edit_lock', '1524869315:1'),
(155, 71, '_edit_last', '1'),
(156, 71, 'country-list', NULL),
(157, 71, '_edit_lock', '1524912499:1'),
(158, 72, '_edit_last', '1'),
(159, 72, 'country-list', NULL),
(160, 72, '_edit_lock', '1524912505:1'),
(161, 73, '_edit_last', '1'),
(162, 73, 'country-list', NULL),
(163, 73, '_edit_lock', '1524912513:1'),
(164, 75, '_edit_last', '1'),
(165, 75, 'country-list', NULL),
(166, 75, '_edit_lock', '1524912384:1'),
(167, 76, '_edit_last', '1'),
(168, 76, 'country-list', NULL),
(169, 76, '_edit_lock', '1524912409:1'),
(170, 77, '_edit_last', '1'),
(171, 77, 'country-list', NULL),
(172, 77, '_edit_lock', '1524912442:1'),
(173, 78, '_edit_last', '1'),
(174, 78, 'country-list', NULL),
(175, 78, '_edit_lock', '1524912455:1'),
(176, 79, '_edit_last', '1'),
(177, 79, 'country-list', NULL),
(178, 79, '_edit_lock', '1524912466:1'),
(179, 80, '_edit_last', '1'),
(180, 80, 'country-list', NULL),
(181, 80, '_edit_lock', '1524912511:1'),
(182, 81, '_edit_last', '1'),
(183, 81, 'country-list', NULL),
(184, 81, '_edit_lock', '1524912522:1'),
(185, 82, '_edit_last', '1'),
(186, 82, 'country-list', NULL),
(187, 82, '_edit_lock', '1524912700:1'),
(188, 83, '_edit_last', '1'),
(189, 83, 'country-list', NULL),
(190, 83, '_edit_lock', '1524912737:1'),
(191, 84, '_edit_last', '1'),
(192, 84, 'country-list', NULL),
(193, 84, '_edit_lock', '1524918352:1'),
(194, 85, '_edit_last', '1'),
(195, 85, 'country-list', NULL),
(196, 85, '_edit_lock', '1524912768:1'),
(197, 86, '_edit_last', '1'),
(198, 86, 'country-list', NULL),
(199, 86, '_edit_lock', '1524912783:1'),
(200, 87, '_edit_last', '1'),
(201, 87, 'country-list', NULL),
(202, 87, '_edit_lock', '1524912790:1'),
(203, 88, '_edit_last', '1'),
(204, 88, 'country-list', NULL),
(205, 88, '_edit_lock', '1524912833:1'),
(206, 89, '_edit_last', '1'),
(207, 89, 'country-list', NULL),
(208, 89, '_edit_lock', '1524912845:1'),
(209, 90, '_edit_last', '1'),
(210, 90, 'country-list', NULL),
(211, 90, '_edit_lock', '1524912860:1'),
(212, 91, '_edit_last', '1'),
(213, 91, 'country-list', NULL),
(214, 91, '_edit_lock', '1524912869:1'),
(215, 92, '_edit_last', '1'),
(216, 92, 'country-list', NULL),
(217, 92, '_edit_lock', '1524913325:1'),
(218, 93, '_edit_last', '1'),
(219, 93, 'country-list', NULL),
(220, 93, '_edit_lock', '1524913333:1'),
(221, 94, '_edit_last', '1'),
(222, 94, 'country-list', NULL),
(223, 94, '_edit_lock', '1524913530:1'),
(224, 95, '_edit_last', '1'),
(225, 95, 'country-list', NULL),
(226, 95, '_edit_lock', '1524913541:1'),
(227, 96, '_edit_last', '1'),
(228, 96, 'country-list', NULL),
(229, 96, '_edit_lock', '1524913705:1'),
(230, 97, '_edit_last', '1'),
(231, 97, 'country-list', NULL),
(232, 97, '_edit_lock', '1524913577:1'),
(233, 98, '_edit_last', '1'),
(234, 98, 'country-list', NULL),
(235, 98, '_edit_lock', '1524913595:1'),
(236, 99, '_edit_last', '1'),
(237, 99, 'country-list', NULL),
(238, 99, '_edit_lock', '1524913691:1'),
(239, 100, '_edit_last', '1'),
(240, 100, 'country-list', NULL),
(241, 100, '_edit_lock', '1524913711:1'),
(242, 101, '_edit_last', '1'),
(243, 101, 'country-list', NULL),
(244, 101, '_edit_lock', '1524913745:1'),
(245, 102, '_edit_last', '1'),
(246, 102, 'country-list', NULL),
(247, 102, '_edit_lock', '1524913754:1'),
(248, 103, '_edit_last', '1'),
(249, 103, 'country-list', NULL),
(250, 103, '_edit_lock', '1524913805:1'),
(251, 104, '_edit_last', '1'),
(252, 104, 'country-list', NULL),
(253, 104, '_edit_lock', '1524913818:1'),
(254, 105, '_edit_last', '1'),
(255, 105, 'country-list', NULL),
(256, 105, '_edit_lock', '1524913827:1'),
(257, 106, '_edit_last', '1'),
(258, 106, 'country-list', NULL),
(259, 106, '_edit_lock', '1524913837:1'),
(260, 107, '_edit_last', '1'),
(261, 107, 'country-list', NULL),
(262, 107, '_edit_lock', '1524913848:1'),
(263, 109, '_edit_last', '1'),
(264, 109, 'country-list', NULL),
(265, 109, '_edit_lock', '1524913929:1'),
(266, 110, '_edit_last', '1'),
(267, 110, 'country-list', NULL),
(268, 110, '_edit_lock', '1524913938:1'),
(269, 111, '_edit_last', '1'),
(270, 111, 'country-list', NULL),
(271, 111, '_edit_lock', '1524913953:1'),
(272, 112, '_edit_last', '1'),
(273, 112, 'country-list', NULL),
(274, 112, '_edit_lock', '1524913967:1'),
(275, 113, '_edit_last', '1'),
(276, 113, 'country-list', NULL),
(277, 113, '_edit_lock', '1524913982:1'),
(278, 114, '_edit_last', '1'),
(279, 114, 'country-list', NULL),
(280, 114, '_edit_lock', '1524913997:1'),
(281, 115, '_edit_last', '1'),
(282, 115, 'country-list', NULL),
(283, 115, '_edit_lock', '1524914070:1'),
(284, 116, '_edit_last', '1'),
(285, 116, 'country-list', NULL),
(286, 116, '_edit_lock', '1524914095:1'),
(287, 117, '_edit_last', '1'),
(288, 117, 'country-list', NULL),
(289, 117, '_edit_lock', '1524914395:1'),
(290, 118, '_edit_last', '1'),
(291, 118, 'country-list', NULL),
(292, 118, '_edit_lock', '1524914409:1'),
(293, 119, '_edit_last', '1'),
(294, 119, 'country-list', NULL),
(295, 119, '_edit_lock', '1524914416:1'),
(296, 120, '_edit_last', '1'),
(297, 120, 'country-list', NULL),
(298, 120, '_edit_lock', '1524914638:1'),
(299, 121, '_edit_last', '1'),
(300, 121, 'country-list', NULL),
(301, 121, '_edit_lock', '1524914667:1'),
(302, 122, '_edit_last', '1'),
(303, 122, 'country-list', NULL),
(304, 122, '_edit_lock', '1524914700:1'),
(305, 123, '_edit_last', '1'),
(306, 123, 'country-list', NULL),
(307, 123, '_edit_lock', '1524914711:1'),
(308, 124, '_edit_last', '1'),
(309, 124, 'country-list', NULL),
(310, 124, '_edit_lock', '1524914733:1'),
(311, 125, '_edit_last', '1'),
(312, 125, 'country-list', NULL),
(313, 125, '_edit_lock', '1524914748:1'),
(314, 127, '_edit_last', '1'),
(315, 127, 'country-list', NULL),
(316, 127, '_edit_lock', '1524915115:1'),
(317, 128, '_edit_last', '1'),
(318, 128, 'country-list', NULL),
(319, 128, '_edit_lock', '1524915147:1'),
(320, 129, '_edit_last', '1'),
(321, 129, 'country-list', NULL),
(322, 129, '_edit_lock', '1524915161:1'),
(323, 130, '_edit_last', '1'),
(324, 130, 'country-list', NULL),
(325, 130, '_edit_lock', '1524915288:1'),
(326, 131, '_edit_last', '1'),
(327, 131, 'country-list', NULL),
(328, 131, '_edit_lock', '1524915298:1'),
(329, 132, '_edit_last', '1'),
(330, 132, 'country-list', NULL),
(331, 132, '_edit_lock', '1524915311:1'),
(332, 133, '_edit_last', '1'),
(333, 133, 'country-list', NULL),
(334, 133, '_edit_lock', '1524915325:1'),
(335, 134, '_edit_last', '1'),
(336, 134, 'country-list', NULL),
(337, 134, '_edit_lock', '1524915336:1'),
(338, 135, '_edit_last', '1'),
(339, 135, 'country-list', NULL),
(340, 135, '_edit_lock', '1524915354:1'),
(341, 136, '_edit_last', '1'),
(342, 136, 'country-list', NULL),
(343, 136, '_edit_lock', '1524915362:1'),
(344, 137, '_edit_last', '1'),
(345, 137, 'country-list', NULL),
(346, 137, '_edit_lock', '1524915381:1'),
(347, 138, '_edit_last', '1'),
(348, 138, 'country-list', NULL),
(349, 138, '_edit_lock', '1524915392:1'),
(350, 139, '_edit_last', '1'),
(351, 139, 'country-list', NULL),
(352, 139, '_edit_lock', '1524915415:1'),
(353, 140, '_edit_last', '1'),
(354, 140, 'country-list', NULL),
(355, 140, '_edit_lock', '1524915441:1'),
(356, 141, '_edit_last', '1'),
(357, 141, 'country-list', NULL),
(358, 141, '_edit_lock', '1524915451:1'),
(359, 142, '_edit_last', '1'),
(360, 142, 'country-list', NULL),
(361, 142, '_edit_lock', '1524915471:1'),
(362, 143, '_edit_last', '1'),
(363, 143, 'country-list', NULL),
(364, 143, '_edit_lock', '1524915482:1'),
(365, 144, '_edit_last', '1'),
(366, 144, 'country-list', NULL),
(367, 144, '_edit_lock', '1524915494:1'),
(368, 145, '_edit_last', '1'),
(369, 145, 'country-list', NULL),
(370, 145, '_edit_lock', '1524915783:1'),
(371, 146, '_edit_last', '1'),
(372, 146, 'country-list', NULL),
(373, 146, '_edit_lock', '1524915631:1'),
(374, 147, '_edit_last', '1'),
(375, 147, 'country-list', NULL),
(376, 147, '_edit_lock', '1524915885:1'),
(377, 148, '_edit_last', '1'),
(378, 148, 'country-list', NULL),
(379, 148, '_edit_lock', '1524915894:1'),
(380, 149, '_edit_last', '1'),
(381, 149, 'country-list', NULL),
(382, 149, '_edit_lock', '1524915912:1'),
(383, 150, '_edit_last', '1'),
(384, 150, 'country-list', NULL),
(385, 150, '_edit_lock', '1524915925:1'),
(386, 151, '_edit_last', '1'),
(387, 151, 'country-list', NULL),
(388, 151, '_edit_lock', '1524915937:1'),
(389, 152, '_edit_last', '1'),
(390, 152, 'country-list', NULL),
(391, 152, '_edit_lock', '1524915947:1'),
(392, 153, '_edit_last', '1'),
(393, 153, 'country-list', NULL),
(394, 153, '_edit_lock', '1524915966:1'),
(395, 154, '_edit_last', '1'),
(396, 154, 'country-list', NULL),
(397, 154, '_edit_lock', '1524915975:1'),
(398, 155, '_edit_last', '1'),
(399, 155, 'country-list', NULL),
(400, 155, '_edit_lock', '1524915989:1'),
(401, 156, '_edit_last', '1'),
(402, 156, 'country-list', NULL),
(403, 156, '_edit_lock', '1524916001:1'),
(404, 157, '_edit_last', '1'),
(405, 157, 'country-list', NULL),
(406, 157, '_edit_lock', '1524916034:1'),
(407, 160, '_edit_last', '1'),
(408, 160, 'country-list', NULL),
(409, 160, '_edit_lock', '1524917728:1'),
(410, 161, '_edit_last', '1'),
(411, 161, 'country-list', NULL),
(412, 161, '_edit_lock', '1524917761:1'),
(413, 162, '_edit_last', '1'),
(414, 162, 'country-list', NULL),
(415, 162, '_edit_lock', '1524917773:1'),
(416, 163, '_edit_last', '1'),
(417, 163, 'country-list', NULL),
(418, 163, '_edit_lock', '1524917786:1'),
(419, 164, '_edit_last', '1'),
(420, 164, 'country-list', NULL),
(421, 164, '_edit_lock', '1524917809:1'),
(422, 165, '_edit_last', '1'),
(423, 165, 'country-list', NULL),
(424, 165, '_edit_lock', '1524917848:1'),
(425, 166, '_edit_last', '1'),
(426, 166, 'country-list', NULL),
(427, 166, '_edit_lock', '1524917895:1'),
(428, 167, '_edit_last', '1'),
(429, 167, 'country-list', NULL),
(430, 167, '_edit_lock', '1524917912:1'),
(431, 168, '_edit_last', '1'),
(432, 168, 'country-list', NULL),
(433, 168, '_edit_lock', '1524917932:1'),
(434, 169, '_edit_last', '1'),
(435, 169, 'country-list', NULL),
(436, 169, '_edit_lock', '1524917942:1'),
(437, 170, '_edit_last', '1'),
(438, 170, 'country-list', NULL),
(439, 170, '_edit_lock', '1524917958:1'),
(440, 171, '_edit_last', '1'),
(441, 171, 'country-list', NULL),
(442, 171, '_edit_lock', '1524917977:1'),
(443, 172, '_edit_last', '1'),
(444, 172, 'country-list', NULL),
(445, 172, '_edit_lock', '1524917988:1'),
(446, 173, '_edit_last', '1'),
(447, 173, 'country-list', NULL),
(448, 173, '_edit_lock', '1524918007:1'),
(449, 174, '_edit_last', '1'),
(450, 174, 'country-list', NULL),
(451, 174, '_edit_lock', '1524918033:1'),
(452, 175, '_edit_last', '1'),
(453, 175, 'country-list', NULL),
(454, 175, '_edit_lock', '1524918046:1'),
(455, 176, '_edit_last', '1'),
(456, 176, 'country-list', NULL),
(457, 176, '_edit_lock', '1524918055:1'),
(458, 177, '_edit_last', '1'),
(459, 177, 'country-list', NULL),
(460, 177, '_edit_lock', '1524918087:1'),
(461, 178, '_edit_last', '1'),
(462, 178, 'country-list', NULL),
(463, 178, '_edit_lock', '1524918096:1'),
(464, 179, '_edit_last', '1'),
(465, 179, 'country-list', NULL),
(466, 179, '_edit_lock', '1524918119:1'),
(467, 180, '_edit_last', '1'),
(468, 180, 'country-list', NULL),
(469, 180, '_edit_lock', '1524918404:1'),
(470, 181, '_edit_last', '1'),
(471, 181, 'country-list', NULL),
(472, 181, '_edit_lock', '1524918291:1'),
(473, 182, '_edit_last', '1'),
(474, 182, 'country-list', NULL),
(475, 182, '_edit_lock', '1524918309:1'),
(476, 183, '_edit_last', '1'),
(477, 183, 'country-list', NULL),
(478, 183, '_edit_lock', '1524918317:1'),
(479, 184, '_edit_last', '1'),
(480, 184, 'country-list', NULL),
(481, 184, '_edit_lock', '1524918340:1'),
(482, 186, '_edit_last', '1'),
(483, 186, 'country-list', NULL),
(484, 186, '_edit_lock', '1524918394:1'),
(485, 187, '_edit_last', '1'),
(486, 187, 'country-list', NULL),
(487, 187, '_edit_lock', '1524918444:1'),
(488, 188, '_edit_last', '1'),
(489, 188, 'country-list', NULL),
(490, 188, '_edit_lock', '1524918481:1'),
(491, 189, '_edit_last', '1'),
(492, 189, 'country-list', NULL),
(493, 189, '_edit_lock', '1524918490:1'),
(494, 190, '_edit_last', '1'),
(495, 190, 'country-list', NULL),
(496, 190, '_edit_lock', '1524918586:1'),
(497, 191, '_edit_last', '1'),
(498, 191, 'country-list', NULL),
(499, 191, '_edit_lock', '1524918613:1'),
(500, 192, '_edit_last', '1'),
(501, 192, 'country-list', NULL),
(502, 192, '_edit_lock', '1524918632:1'),
(503, 193, '_edit_last', '1'),
(504, 193, 'country-list', NULL),
(505, 193, '_edit_lock', '1524918643:1'),
(506, 194, '_edit_last', '1'),
(507, 194, 'country-list', NULL),
(508, 194, '_edit_lock', '1524918672:1'),
(509, 195, '_edit_last', '1'),
(510, 195, 'country-list', NULL),
(511, 195, '_edit_lock', '1524918681:1'),
(512, 196, '_edit_last', '1'),
(513, 196, 'country-list', NULL),
(514, 196, '_edit_lock', '1524918693:1'),
(515, 197, '_edit_last', '1'),
(516, 197, 'country-list', NULL),
(517, 197, '_edit_lock', '1524918707:1'),
(518, 198, '_edit_last', '1'),
(519, 198, 'country-list', NULL),
(520, 198, '_edit_lock', '1524918734:1'),
(521, 199, '_edit_last', '1'),
(522, 199, 'country-list', NULL),
(523, 199, '_edit_lock', '1524918747:1'),
(524, 200, '_edit_last', '1'),
(525, 200, 'country-list', NULL),
(526, 200, '_edit_lock', '1524918762:1'),
(527, 201, '_edit_last', '1'),
(528, 201, 'country-list', NULL),
(529, 201, '_edit_lock', '1524918782:1'),
(530, 202, '_edit_last', '1'),
(531, 202, 'country-list', NULL),
(532, 202, '_edit_lock', '1524918798:1'),
(533, 203, '_edit_last', '1'),
(534, 203, 'country-list', NULL),
(535, 203, '_edit_lock', '1524918807:1'),
(536, 204, '_edit_last', '1'),
(537, 204, 'country-list', NULL),
(538, 204, '_edit_lock', '1524918819:1'),
(539, 205, '_edit_last', '1'),
(540, 205, 'country-list', NULL),
(541, 205, '_edit_lock', '1524918828:1'),
(542, 206, '_edit_last', '1'),
(543, 206, 'country-list', NULL),
(544, 206, '_edit_lock', '1524918840:1'),
(545, 207, '_edit_last', '1'),
(546, 207, 'country-list', NULL),
(547, 207, '_edit_lock', '1524918862:1'),
(548, 208, '_edit_last', '1'),
(549, 208, 'country-list', NULL),
(550, 208, '_edit_lock', '1524918878:1'),
(551, 209, '_edit_last', '1'),
(552, 209, 'country-list', NULL),
(553, 209, '_edit_lock', '1524918927:1'),
(554, 211, '_edit_last', '1'),
(555, 211, 'country-list', NULL),
(556, 211, '_edit_lock', '1524918966:1'),
(557, 212, '_edit_last', '1'),
(558, 212, 'country-list', NULL),
(559, 212, '_edit_lock', '1524918974:1'),
(560, 213, '_edit_last', '1'),
(561, 213, 'country-list', NULL),
(562, 213, '_edit_lock', '1524918987:1'),
(563, 214, '_edit_last', '1'),
(564, 214, 'country-list', NULL),
(565, 214, '_edit_lock', '1524919008:1'),
(566, 215, '_edit_last', '1'),
(567, 215, 'country-list', NULL),
(568, 215, '_edit_lock', '1524919017:1'),
(569, 216, '_edit_last', '1'),
(570, 216, 'country-list', NULL),
(571, 216, '_edit_lock', '1524919027:1'),
(572, 217, '_edit_last', '1'),
(573, 217, 'country-list', NULL),
(574, 217, '_edit_lock', '1524919039:1'),
(575, 218, '_edit_last', '1'),
(576, 218, 'country-list', NULL),
(577, 218, '_edit_lock', '1524919050:1'),
(578, 219, '_edit_last', '1'),
(579, 219, 'country-list', NULL),
(580, 219, '_edit_lock', '1524919064:1'),
(581, 221, '_edit_last', '1'),
(582, 221, 'country-list', NULL),
(583, 221, '_edit_lock', '1524919108:1'),
(584, 222, '_edit_last', '1'),
(585, 222, 'country-list', NULL),
(586, 222, '_edit_lock', '1524919129:1'),
(587, 223, '_edit_last', '1'),
(588, 223, 'country-list', NULL),
(589, 223, '_edit_lock', '1524919145:1'),
(590, 224, '_edit_last', '1'),
(591, 224, 'country-list', NULL),
(592, 224, '_edit_lock', '1524919158:1'),
(593, 225, '_edit_last', '1'),
(594, 225, 'country-list', NULL),
(595, 225, '_edit_lock', '1524919166:1'),
(596, 226, '_edit_last', '1'),
(597, 226, 'country-list', NULL),
(598, 226, '_edit_lock', '1524919193:1'),
(599, 227, '_edit_last', '1'),
(600, 227, 'country-list', NULL),
(601, 227, '_edit_lock', '1524919203:1'),
(602, 228, '_edit_last', '1'),
(603, 228, 'country-list', NULL),
(604, 228, '_edit_lock', '1524919229:1'),
(605, 230, '_edit_last', '1'),
(606, 230, 'country-list', NULL),
(607, 230, '_edit_lock', '1524919335:1'),
(608, 231, '_edit_last', '1'),
(609, 231, 'country-list', NULL),
(610, 231, '_edit_lock', '1524919344:1'),
(611, 232, '_edit_last', '1'),
(612, 232, 'country-list', NULL),
(613, 232, '_edit_lock', '1524919352:1'),
(614, 233, '_edit_last', '1'),
(615, 233, 'country-list', NULL),
(616, 233, '_edit_lock', '1524919361:1'),
(617, 234, '_edit_last', '1'),
(618, 234, 'country-list', NULL),
(619, 234, '_edit_lock', '1524919417:1'),
(620, 235, '_edit_last', '1'),
(621, 235, 'country-list', NULL),
(622, 235, '_edit_lock', '1524919429:1'),
(623, 236, '_edit_last', '1'),
(624, 236, 'country-list', NULL),
(625, 236, '_edit_lock', '1524919447:1'),
(626, 237, '_edit_last', '1'),
(627, 237, 'country-list', NULL),
(628, 237, '_edit_lock', '1524919481:1'),
(629, 238, '_edit_last', '1'),
(630, 238, 'country-list', NULL),
(631, 238, '_edit_lock', '1524919494:1'),
(632, 239, '_edit_last', '1'),
(633, 239, 'country-list', NULL),
(634, 239, '_edit_lock', '1524919503:1'),
(638, 239, '_wp_old_slug', 'zimbabwe__trashed'),
(639, 242, '_edit_last', '1'),
(640, 242, '_wp_page_template', 'page-template-registrations.php'),
(641, 242, 'country-list', NULL),
(642, 242, '_edit_lock', '1525530103:1'),
(643, 244, '_wp_attached_file', '2018/05/23213384_747947142069773_5353532491711064836_o.jpg'),
(644, 244, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1356;s:4:\"file\";s:58:\"2018/05/23213384_747947142069773_5353532491711064836_o.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"23213384_747947142069773_5353532491711064836_o-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"23213384_747947142069773_5353532491711064836_o-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"23213384_747947142069773_5353532491711064836_o-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:59:\"23213384_747947142069773_5353532491711064836_o-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(645, 245, '_wp_attached_file', '2018/05/23270371_747947488736405_122483572637752744_o.jpg'),
(646, 245, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1356;s:4:\"file\";s:57:\"2018/05/23270371_747947488736405_122483572637752744_o.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"23270371_747947488736405_122483572637752744_o-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"23270371_747947488736405_122483572637752744_o-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:57:\"23270371_747947488736405_122483572637752744_o-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:58:\"23270371_747947488736405_122483572637752744_o-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(647, 246, '_wp_attached_file', '2018/05/23275377_749545275243293_1652172596510736666_o.jpg'),
(648, 246, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:58:\"2018/05/23275377_749545275243293_1652172596510736666_o.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"23275377_749545275243293_1652172596510736666_o-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"23275377_749545275243293_1652172596510736666_o-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"23275377_749545275243293_1652172596510736666_o-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:59:\"23275377_749545275243293_1652172596510736666_o-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(649, 247, '_wp_attached_file', '2018/05/23668779_754015101462977_4767170783282112252_o.jpg'),
(650, 247, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:58:\"2018/05/23668779_754015101462977_4767170783282112252_o.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"23668779_754015101462977_4767170783282112252_o-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"23668779_754015101462977_4767170783282112252_o-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"23668779_754015101462977_4767170783282112252_o-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:59:\"23668779_754015101462977_4767170783282112252_o-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(651, 248, '_edit_last', '1'),
(652, 248, 'country-list', NULL),
(653, 248, '_edit_lock', '1525196760:1'),
(654, 248, '_thumbnail_id', '245'),
(657, 250, '_edit_last', '1'),
(658, 250, 'country-list', NULL),
(659, 250, '_edit_lock', '1525196787:1'),
(660, 250, '_thumbnail_id', '246'),
(663, 252, '_edit_last', '1'),
(664, 252, 'country-list', NULL),
(665, 252, '_edit_lock', '1525196815:1'),
(666, 252, '_thumbnail_id', '247'),
(669, 254, '_edit_last', '1'),
(670, 254, 'country-list', NULL),
(671, 254, '_edit_lock', '1525196913:1'),
(672, 254, '_thumbnail_id', '244'),
(675, 256, '_edit_last', '1'),
(676, 256, 'country-list', NULL),
(677, 256, '_edit_lock', '1525197111:1'),
(678, 256, '_wp_page_template', 'page-beta.php'),
(681, 259, '_wp_attached_file', '2018/05/logo.png'),
(682, 259, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:16:\"2018/05/logo.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"logo-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(683, 260, '_edit_last', '1'),
(684, 260, '_edit_lock', '1525211770:1'),
(685, 260, 'country-list', NULL),
(690, 263, '_edit_last', '1'),
(691, 263, 'country-list', NULL),
(692, 263, '_edit_lock', '1525255952:1'),
(693, 264, '_wp_attached_file', '2018/05/Achyuta-Samanta-1.jpg'),
(694, 264, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:632;s:6:\"height\";i:632;s:4:\"file\";s:29:\"2018/05/Achyuta-Samanta-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Achyuta-Samanta-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Achyuta-Samanta-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1521191370\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(695, 263, '_thumbnail_id', '264'),
(704, 269, '_wp_attached_file', '2018/05/facebook-1.png'),
(705, 269, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:22:\"2018/05/facebook-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(706, 270, '_wp_attached_file', '2018/05/instagram-1.png'),
(707, 270, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:23:\"2018/05/instagram-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(708, 271, '_wp_attached_file', '2018/05/twitter-1.png'),
(709, 271, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:21:\"2018/05/twitter-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(710, 272, '_wp_attached_file', '2018/05/phone-receiver.png'),
(711, 272, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:26:\"2018/05/phone-receiver.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(712, 15, '_wp_trash_meta_status', 'publish'),
(713, 15, '_wp_trash_meta_time', '1525345614'),
(714, 15, '_wp_desired_post_slug', 'registrations'),
(715, 273, 'country-list', NULL),
(716, 273, '_menu_item_type', 'post_type'),
(717, 273, '_menu_item_menu_item_parent', '0'),
(718, 273, '_menu_item_object_id', '242'),
(719, 273, '_menu_item_object', 'page'),
(720, 273, '_menu_item_target', ''),
(721, 273, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(722, 273, '_menu_item_xfn', ''),
(723, 273, '_menu_item_url', ''),
(725, 274, 'country-list', NULL),
(726, 274, '_menu_item_type', 'post_type'),
(727, 274, '_menu_item_menu_item_parent', '0'),
(728, 274, '_menu_item_object_id', '20'),
(729, 274, '_menu_item_object', 'page'),
(730, 274, '_menu_item_target', ''),
(731, 274, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(732, 274, '_menu_item_xfn', ''),
(733, 274, '_menu_item_url', ''),
(735, 275, 'country-list', NULL),
(736, 275, '_menu_item_type', 'post_type'),
(737, 275, '_menu_item_menu_item_parent', '0'),
(738, 275, '_menu_item_object_id', '17'),
(739, 275, '_menu_item_object', 'page'),
(740, 275, '_menu_item_target', ''),
(741, 275, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(742, 275, '_menu_item_xfn', ''),
(743, 275, '_menu_item_url', ''),
(745, 276, 'country-list', NULL),
(746, 276, '_menu_item_type', 'post_type'),
(747, 276, '_menu_item_menu_item_parent', '0'),
(748, 276, '_menu_item_object_id', '13'),
(749, 276, '_menu_item_object', 'page'),
(750, 276, '_menu_item_target', ''),
(751, 276, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(752, 276, '_menu_item_xfn', ''),
(753, 276, '_menu_item_url', ''),
(755, 277, '_wp_attached_file', '2018/05/23333910_750281305169690_7212381728359913249_o.jpg'),
(756, 277, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1102;s:6:\"height\";i:620;s:4:\"file\";s:58:\"2018/05/23333910_750281305169690_7212381728359913249_o.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"23333910_750281305169690_7212381728359913249_o-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"23333910_750281305169690_7212381728359913249_o-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"23333910_750281305169690_7212381728359913249_o-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:59:\"23333910_750281305169690_7212381728359913249_o-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1525370906\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(757, 278, '_wp_attached_file', '2018/05/23415381_749963848534769_6175899308093996118_o.jpg'),
(758, 278, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1833;s:6:\"height\";i:1031;s:4:\"file\";s:58:\"2018/05/23415381_749963848534769_6175899308093996118_o.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"23415381_749963848534769_6175899308093996118_o-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"23415381_749963848534769_6175899308093996118_o-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"23415381_749963848534769_6175899308093996118_o-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:59:\"23415381_749963848534769_6175899308093996118_o-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1525370488\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(759, 279, '_wp_attached_file', '2018/05/23509229_750746758456478_7400223089167350741_o.jpg'),
(760, 279, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1367;s:6:\"height\";i:768;s:4:\"file\";s:58:\"2018/05/23509229_750746758456478_7400223089167350741_o.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"23509229_750746758456478_7400223089167350741_o-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"23509229_750746758456478_7400223089167350741_o-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"23509229_750746758456478_7400223089167350741_o-768x431.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:59:\"23509229_750746758456478_7400223089167350741_o-1024x575.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1525370562\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(761, 280, '_wp_attached_file', '2018/05/23509356_750391808491973_5902390836740344430_o.jpg'),
(762, 280, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1912;s:6:\"height\";i:1076;s:4:\"file\";s:58:\"2018/05/23509356_750391808491973_5902390836740344430_o.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"23509356_750391808491973_5902390836740344430_o-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"23509356_750391808491973_5902390836740344430_o-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"23509356_750391808491973_5902390836740344430_o-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:59:\"23509356_750391808491973_5902390836740344430_o-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1525370794\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(763, 279, '_edit_lock', '1525386230:1'),
(764, 281, '_edit_last', '1'),
(765, 281, '_wp_page_template', 'default'),
(766, 281, '_edit_lock', '1525530425:1'),
(767, 283, '_edit_last', '1'),
(768, 283, '_edit_lock', '1525532108:1'),
(769, 283, 'country-list', 'Zimbabwe,Zambia,Yemen,Vietnam,Bolivarian Republic of Venezuela,Vanuatu,Uzbekistan'),
(770, 285, '_edit_last', '1'),
(771, 285, '_edit_lock', '1525532098:1'),
(772, 285, 'country-list', 'Ukraine,Uganda,Tuvalu,Turkmenistan,Turkey,Tunisia,Trinidad and Tobago,Tonga,Togo,Timor-Leste,The Former Yugoslav Republic of Macedonia'),
(773, 286, '_edit_last', '1'),
(774, 286, '_edit_lock', '1525532096:1'),
(775, 286, 'country-list', 'Rwanda,Russian Federation,Romania,Republic of Moldova,South Korea,Qatar,Portugal,Poland,Oman'),
(776, 287, '_edit_last', '1'),
(777, 287, '_edit_lock', '1525532084:1'),
(778, 287, 'country-list', 'Republic of the Niger,Nicaragua,New Zealand,Netherlands,Nepal,Nauru'),
(779, 288, '_edit_last', '1'),
(780, 288, '_edit_lock', '1525532063:1'),
(781, 288, 'country-list', 'Sri Lanka,Spain,South Sudan'),
(782, 289, '_edit_last', '1'),
(783, 289, '_edit_lock', '1525532050:1'),
(784, 289, 'country-list', 'Thailand,Tajikistan,Syrian Arab Republic,Switzerland,Somalia,Mali'),
(785, 290, '_edit_last', '1'),
(786, 290, '_edit_lock', '1525532043:1'),
(787, 290, 'country-list', 'Serbia,Senegal,Saudi Arabia,São Tomé and Príncipe'),
(788, 292, '_edit_last', '1'),
(789, 292, '_edit_lock', '1525532026:1'),
(790, 292, 'country-list', 'Tonga,Togo,Timor-Leste'),
(791, 293, '_edit_last', '1'),
(792, 293, '_edit_lock', '1525532005:1'),
(793, 293, 'country-list', 'Tajikistan,Syrian Arab Republic,Switzerland');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(10, 1, '2018-04-21 18:54:05', '2018-04-21 18:54:05', '', 'Afghanistan', '', 'publish', 'closed', 'closed', '', 'afghanistan', '', '', '2018-04-21 18:54:05', '2018-04-21 18:54:05', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=10', 0, 'country', '', 0),
(11, 1, '2018-04-21 18:54:17', '2018-04-21 18:54:17', '', 'Albania', '', 'publish', 'closed', 'closed', '', 'albania', '', '', '2018-04-21 18:54:17', '2018-04-21 18:54:17', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=11', 0, 'country', '', 0),
(13, 1, '2018-04-21 18:55:30', '2018-04-21 18:55:30', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-21 18:55:30', '2018-04-21 18:55:30', '', 0, 'http://localhost/KiitMun18/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-04-21 18:55:30', '2018-04-21 18:55:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-04-21 18:55:30', '2018-04-21 18:55:30', '', 13, 'http://localhost/KiitMun18/2018/04/21/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-04-21 19:20:10', '2018-04-21 19:20:10', 'Registrations Aren\'t Live yet', 'Registrations', '', 'trash', 'closed', 'closed', '', 'registrations__trashed', '', '', '2018-05-03 11:06:54', '2018-05-03 11:06:54', '', 0, 'http://localhost/KiitMun18/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-04-21 19:20:10', '2018-04-21 19:20:10', 'Registrations Aren\'t Live yet', 'Registrations', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-04-21 19:20:10', '2018-04-21 19:20:10', '', 15, 'http://localhost/KiitMun18/2018/04/21/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-04-21 19:23:03', '2018-04-21 19:23:03', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-04-21 19:23:03', '2018-04-21 19:23:03', '', 0, 'http://localhost/KiitMun18/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-04-21 19:23:03', '2018-04-21 19:23:03', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-04-21 19:23:03', '2018-04-21 19:23:03', '', 17, 'http://localhost/KiitMun18/2018/04/21/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-04-21 19:23:17', '2018-04-21 19:23:17', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-04-21 19:23:17', '2018-04-21 19:23:17', '', 0, 'http://localhost/KiitMun18/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-04-21 19:23:17', '2018-04-21 19:23:17', '', 'About', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-04-21 19:23:17', '2018-04-21 19:23:17', '', 20, 'http://localhost/KiitMun18/2018/04/21/20-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-04-27 15:29:19', '2018-04-27 15:29:19', '', 'Post 12', '', 'trash', 'open', 'open', '', 'post-1__trashed', '', '', '2018-04-27 15:31:29', '2018-04-27 15:31:29', '', 0, 'http://localhost/KiitMun18/?p=34', 0, 'post', '', 0),
(35, 1, '2018-04-27 15:29:19', '2018-04-27 15:29:19', '', 'Post 1', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-04-27 15:29:19', '2018-04-27 15:29:19', '', 34, 'http://localhost/KiitMun18/2018/04/27/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-04-27 15:29:46', '2018-04-27 15:29:46', '', 'Post 12', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-04-27 15:29:46', '2018-04-27 15:29:46', '', 34, 'http://localhost/KiitMun18/2018/04/27/34-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-04-27 22:44:54', '2018-04-27 22:44:54', '', 'Algeria', '', 'publish', 'closed', 'closed', '', 'algeria', '', '', '2018-04-27 22:44:54', '2018-04-27 22:44:54', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=38', 0, 'country', '', 0),
(39, 1, '2018-04-27 22:45:02', '2018-04-27 22:45:02', '', 'Andorra', '', 'publish', 'closed', 'closed', '', 'andorra', '', '', '2018-04-27 22:45:02', '2018-04-27 22:45:02', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=39', 0, 'country', '', 0),
(40, 1, '2018-04-27 22:45:11', '2018-04-27 22:45:11', '', 'Angola', '', 'publish', 'closed', 'closed', '', 'angola', '', '', '2018-04-27 22:45:11', '2018-04-27 22:45:11', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=40', 0, 'country', '', 0),
(41, 1, '2018-04-27 22:45:23', '2018-04-27 22:45:23', '', 'Antigua and Barbuda', '', 'publish', 'closed', 'closed', '', 'antigua-and-barbuda', '', '', '2018-04-27 22:45:23', '2018-04-27 22:45:23', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=41', 0, 'country', '', 0),
(42, 1, '2018-04-27 22:45:34', '2018-04-27 22:45:34', '', 'Argentina', '', 'publish', 'closed', 'closed', '', 'argentina', '', '', '2018-04-27 22:45:34', '2018-04-27 22:45:34', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=42', 0, 'country', '', 0),
(43, 1, '2018-04-27 22:45:43', '2018-04-27 22:45:43', '', 'Armenia', '', 'publish', 'closed', 'closed', '', 'armenia', '', '', '2018-04-27 22:45:43', '2018-04-27 22:45:43', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=43', 0, 'country', '', 0),
(44, 1, '2018-04-27 22:45:52', '2018-04-27 22:45:52', '', 'Australia', '', 'publish', 'closed', 'closed', '', 'australia', '', '', '2018-04-27 22:45:52', '2018-04-27 22:45:52', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=44', 0, 'country', '', 0),
(45, 1, '2018-04-27 22:46:00', '2018-04-27 22:46:00', '', 'Austria', '', 'publish', 'closed', 'closed', '', 'austria', '', '', '2018-04-27 22:46:00', '2018-04-27 22:46:00', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=45', 0, 'country', '', 0),
(46, 1, '2018-04-27 22:46:10', '2018-04-27 22:46:10', '', 'Azerbaijan', '', 'publish', 'closed', 'closed', '', 'azerbaijan', '', '', '2018-04-27 22:46:10', '2018-04-27 22:46:10', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=46', 0, 'country', '', 0),
(47, 1, '2018-04-27 22:46:18', '2018-04-27 22:46:18', '', 'Bahamas', '', 'publish', 'closed', 'closed', '', 'bahamas', '', '', '2018-04-27 22:46:18', '2018-04-27 22:46:18', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=47', 0, 'country', '', 0),
(48, 1, '2018-04-27 22:46:31', '2018-04-27 22:46:31', '', 'Bahrain', '', 'publish', 'closed', 'closed', '', 'bahrain', '', '', '2018-04-27 22:46:31', '2018-04-27 22:46:31', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=48', 0, 'country', '', 0),
(49, 1, '2018-04-27 22:47:01', '2018-04-27 22:47:01', '', 'Bangladesh', '', 'publish', 'closed', 'closed', '', 'bangladesh', '', '', '2018-04-27 22:47:01', '2018-04-27 22:47:01', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=49', 0, 'country', '', 0),
(50, 1, '2018-04-27 22:47:12', '2018-04-27 22:47:12', '', 'Barbados', '', 'publish', 'closed', 'closed', '', 'barbados', '', '', '2018-04-27 22:47:12', '2018-04-27 22:47:12', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=50', 0, 'country', '', 0),
(51, 1, '2018-04-27 22:47:25', '2018-04-27 22:47:25', '', 'Belarus', '', 'publish', 'closed', 'closed', '', 'belarus', '', '', '2018-04-27 22:47:25', '2018-04-27 22:47:25', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=51', 0, 'country', '', 0),
(52, 1, '2018-04-27 22:47:35', '2018-04-27 22:47:35', '', 'Belgium', '', 'publish', 'closed', 'closed', '', 'belgium', '', '', '2018-04-27 22:47:35', '2018-04-27 22:47:35', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=52', 0, 'country', '', 0),
(54, 1, '2018-04-27 22:47:58', '2018-04-27 22:47:58', '', 'Belize', '', 'publish', 'closed', 'closed', '', 'belize', '', '', '2018-04-27 22:47:58', '2018-04-27 22:47:58', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=54', 0, 'country', '', 0),
(55, 1, '2018-04-27 22:48:06', '2018-04-27 22:48:06', '', 'Benin', '', 'publish', 'closed', 'closed', '', 'benin', '', '', '2018-04-27 22:48:06', '2018-04-27 22:48:06', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=55', 0, 'country', '', 0),
(56, 1, '2018-04-27 22:48:14', '2018-04-27 22:48:14', '', 'Bhutan', '', 'publish', 'closed', 'closed', '', 'bhutan', '', '', '2018-04-27 22:48:14', '2018-04-27 22:48:14', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=56', 0, 'country', '', 0),
(57, 1, '2018-04-27 22:48:24', '2018-04-27 22:48:24', '', 'Plurinational State of Bolivia[n', '', 'publish', 'closed', 'closed', '', 'plurinational-state-of-bolivian', '', '', '2018-04-27 22:48:24', '2018-04-27 22:48:24', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=57', 0, 'country', '', 0),
(58, 1, '2018-04-27 22:48:35', '2018-04-27 22:48:35', '', 'Bosnia and Herzegovina', '', 'publish', 'closed', 'closed', '', 'bosnia-and-herzegovina', '', '', '2018-04-27 22:48:35', '2018-04-27 22:48:35', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=58', 0, 'country', '', 0),
(59, 1, '2018-04-27 22:48:47', '2018-04-27 22:48:47', '', 'Botswana', '', 'publish', 'closed', 'closed', '', 'botswana', '', '', '2018-04-27 22:48:47', '2018-04-27 22:48:47', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=59', 0, 'country', '', 0),
(60, 1, '2018-04-27 22:48:57', '2018-04-27 22:48:57', '', 'Brazil', '', 'publish', 'closed', 'closed', '', 'brazil', '', '', '2018-04-27 22:48:57', '2018-04-27 22:48:57', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=60', 0, 'country', '', 0),
(61, 1, '2018-04-27 22:49:06', '2018-04-27 22:49:06', '', 'Brunei Darussalam', '', 'publish', 'closed', 'closed', '', 'brunei-darussalam', '', '', '2018-04-27 22:49:06', '2018-04-27 22:49:06', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=61', 0, 'country', '', 0),
(62, 1, '2018-04-27 22:49:15', '2018-04-27 22:49:15', '', 'Bulgaria', '', 'publish', 'closed', 'closed', '', 'bulgaria', '', '', '2018-04-27 22:49:15', '2018-04-27 22:49:15', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=62', 0, 'country', '', 0),
(63, 1, '2018-04-27 22:49:25', '2018-04-27 22:49:25', '', 'Burkina Faso', '', 'publish', 'closed', 'closed', '', 'burkina-faso', '', '', '2018-04-27 22:49:25', '2018-04-27 22:49:25', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=63', 0, 'country', '', 0),
(65, 1, '2018-04-27 22:49:55', '2018-04-27 22:49:55', '', 'Burundi', '', 'publish', 'closed', 'closed', '', 'burundi', '', '', '2018-04-27 22:49:55', '2018-04-27 22:49:55', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=65', 0, 'country', '', 0),
(66, 1, '2018-04-27 22:50:06', '2018-04-27 22:50:06', '', 'Cabo Verde', '', 'publish', 'closed', 'closed', '', 'cabo-verde', '', '', '2018-04-27 22:50:06', '2018-04-27 22:50:06', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=66', 0, 'country', '', 0),
(67, 1, '2018-04-27 22:50:14', '2018-04-27 22:50:14', '', 'Cambodia', '', 'publish', 'closed', 'closed', '', 'cambodia', '', '', '2018-04-27 22:50:14', '2018-04-27 22:50:14', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=67', 0, 'country', '', 0),
(68, 1, '2018-04-27 22:50:22', '2018-04-27 22:50:22', '', 'Cameroon', '', 'publish', 'closed', 'closed', '', 'cameroon', '', '', '2018-04-27 22:50:22', '2018-04-27 22:50:22', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=68', 0, 'country', '', 0),
(69, 1, '2018-04-27 22:50:30', '2018-04-27 22:50:30', '', 'Canada', '', 'publish', 'closed', 'closed', '', 'canada', '', '', '2018-04-27 22:50:30', '2018-04-27 22:50:30', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=69', 0, 'country', '', 0),
(70, 1, '2018-04-27 22:50:45', '2018-04-27 22:50:45', '', 'Central African Republic', '', 'publish', 'closed', 'closed', '', 'central-african-republic', '', '', '2018-04-27 22:50:45', '2018-04-27 22:50:45', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=70', 0, 'country', '', 0),
(71, 1, '2018-04-28 10:47:47', '2018-04-28 10:47:47', '', 'Chad', '', 'publish', 'closed', 'closed', '', 'chad', '', '', '2018-04-28 10:48:19', '2018-04-28 10:48:19', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=71', 0, 'country', '', 0),
(72, 1, '2018-04-28 10:47:58', '2018-04-28 10:47:58', '', 'Chile', '', 'publish', 'closed', 'closed', '', 'chile', '', '', '2018-04-28 10:48:25', '2018-04-28 10:48:25', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=72', 0, 'country', '', 0),
(73, 1, '2018-04-28 10:48:04', '2018-04-28 10:48:04', '', 'China', '', 'publish', 'closed', 'closed', '', 'china', '', '', '2018-04-28 10:48:33', '2018-04-28 10:48:33', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=73', 0, 'country', '', 0),
(75, 1, '2018-04-28 10:48:46', '2018-04-28 10:48:46', '', 'Colombia', '', 'publish', 'closed', 'closed', '', 'colombia', '', '', '2018-04-28 10:48:46', '2018-04-28 10:48:46', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=75', 0, 'country', '', 0),
(76, 1, '2018-04-28 10:48:54', '2018-04-28 10:48:54', '', 'Comoros', '', 'publish', 'closed', 'closed', '', 'comoros', '', '', '2018-04-28 10:48:54', '2018-04-28 10:48:54', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=76', 0, 'country', '', 0),
(77, 1, '2018-04-28 10:49:43', '2018-04-28 10:49:43', '', 'Republic of the Congo', '', 'publish', 'closed', 'closed', '', 'republic-of-the-congo', '', '', '2018-04-28 10:49:43', '2018-04-28 10:49:43', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=77', 0, 'country', '', 0),
(78, 1, '2018-04-28 10:49:52', '2018-04-28 10:49:52', '', 'Costa Rica', '', 'publish', 'closed', 'closed', '', 'costa-rica', '', '', '2018-04-28 10:49:52', '2018-04-28 10:49:52', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=78', 0, 'country', '', 0),
(79, 1, '2018-04-28 10:50:05', '2018-04-28 10:50:05', '', 'Côte d\'Ivoire', '', 'publish', 'closed', 'closed', '', 'cote-divoire', '', '', '2018-04-28 10:50:05', '2018-04-28 10:50:05', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=79', 0, 'country', '', 0),
(80, 1, '2018-04-28 10:50:24', '2018-04-28 10:50:24', '', 'Croatia', '', 'publish', 'closed', 'closed', '', 'croatia', '', '', '2018-04-28 10:50:24', '2018-04-28 10:50:24', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=80', 0, 'country', '', 0),
(81, 1, '2018-04-28 10:51:03', '2018-04-28 10:51:03', '', 'Cuba', '', 'publish', 'closed', 'closed', '', 'cuba', '', '', '2018-04-28 10:51:03', '2018-04-28 10:51:03', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=81', 0, 'country', '', 0),
(82, 1, '2018-04-28 10:51:11', '2018-04-28 10:51:11', '', 'Cyprus', '', 'publish', 'closed', 'closed', '', 'cyprus', '', '', '2018-04-28 10:51:11', '2018-04-28 10:51:11', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=82', 0, 'country', '', 0),
(83, 1, '2018-04-28 10:54:38', '2018-04-28 10:54:38', '', 'Czech Republic', '', 'publish', 'closed', 'closed', '', 'czech-republic', '', '', '2018-04-28 10:54:38', '2018-04-28 10:54:38', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=83', 0, 'country', '', 0),
(84, 1, '2018-04-28 10:54:53', '2018-04-28 10:54:53', '', 'North Korea', '', 'publish', 'closed', 'closed', '', 'democratic-peoples-republic-of-korea', '', '', '2018-04-28 12:25:52', '2018-04-28 12:25:52', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=84', 0, 'country', '', 0),
(85, 1, '2018-04-28 10:55:09', '2018-04-28 10:55:09', '', 'Democratic Republic of the Congo', '', 'publish', 'closed', 'closed', '', 'democratic-republic-of-the-congo', '', '', '2018-04-28 10:55:09', '2018-04-28 10:55:09', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=85', 0, 'country', '', 0),
(86, 1, '2018-04-28 10:55:19', '2018-04-28 10:55:19', '', 'Denmark', '', 'publish', 'closed', 'closed', '', 'denmark', '', '', '2018-04-28 10:55:19', '2018-04-28 10:55:19', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=86', 0, 'country', '', 0),
(87, 1, '2018-04-28 10:55:31', '2018-04-28 10:55:31', '', 'Djibouti', '', 'publish', 'closed', 'closed', '', 'djibouti', '', '', '2018-04-28 10:55:31', '2018-04-28 10:55:31', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=87', 0, 'country', '', 0),
(88, 1, '2018-04-28 10:55:38', '2018-04-28 10:55:38', '', 'Commonwealth of Dominica', '', 'publish', 'closed', 'closed', '', 'dominica', '', '', '2018-04-28 10:56:10', '2018-04-28 10:56:10', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=88', 0, 'country', '', 0),
(89, 1, '2018-04-28 10:56:25', '2018-04-28 10:56:25', '', 'Dominican Republic', '', 'publish', 'closed', 'closed', '', 'dominican-republic', '', '', '2018-04-28 10:56:25', '2018-04-28 10:56:25', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=89', 0, 'country', '', 0),
(90, 1, '2018-04-28 10:56:33', '2018-04-28 10:56:33', '', 'Ecuador', '', 'publish', 'closed', 'closed', '', 'ecuador', '', '', '2018-04-28 10:56:33', '2018-04-28 10:56:33', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=90', 0, 'country', '', 0),
(91, 1, '2018-04-28 10:56:48', '2018-04-28 10:56:48', '', 'Egypt', '', 'publish', 'closed', 'closed', '', 'egypt', '', '', '2018-04-28 10:56:48', '2018-04-28 10:56:48', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=91', 0, 'country', '', 0),
(92, 1, '2018-04-28 10:56:58', '2018-04-28 10:56:58', '', 'El Salvador', '', 'publish', 'closed', 'closed', '', 'el-salvador', '', '', '2018-04-28 10:56:58', '2018-04-28 10:56:58', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=92', 0, 'country', '', 0),
(93, 1, '2018-04-28 11:04:34', '2018-04-28 11:04:34', '', 'Equatorial Guinea', '', 'publish', 'closed', 'closed', '', 'equatorial-guinea', '', '', '2018-04-28 11:04:34', '2018-04-28 11:04:34', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=93', 0, 'country', '', 0),
(94, 1, '2018-04-28 11:04:42', '2018-04-28 11:04:42', '', 'Eritrea', '', 'publish', 'closed', 'closed', '', 'eritrea', '', '', '2018-04-28 11:04:42', '2018-04-28 11:04:42', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=94', 0, 'country', '', 0),
(95, 1, '2018-04-28 11:07:58', '2018-04-28 11:07:58', '', 'Estonia', '', 'publish', 'closed', 'closed', '', 'estonia', '', '', '2018-04-28 11:07:58', '2018-04-28 11:07:58', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=95', 0, 'country', '', 0),
(96, 1, '2018-04-28 11:08:11', '2018-04-28 11:08:11', '', 'Ethiopia', '', 'publish', 'closed', 'closed', '', 'ethiopia', '', '', '2018-04-28 11:08:25', '2018-04-28 11:08:25', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=96', 0, 'country', '', 0),
(97, 1, '2018-04-28 11:08:37', '2018-04-28 11:08:37', '', 'Fiji', '', 'publish', 'closed', 'closed', '', 'fiji', '', '', '2018-04-28 11:08:37', '2018-04-28 11:08:37', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=97', 0, 'country', '', 0),
(98, 1, '2018-04-28 11:08:55', '2018-04-28 11:08:55', '', 'Finland', '', 'publish', 'closed', 'closed', '', 'finland', '', '', '2018-04-28 11:08:55', '2018-04-28 11:08:55', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=98', 0, 'country', '', 0),
(99, 1, '2018-04-28 11:10:30', '2018-04-28 11:10:30', '', 'France', '', 'publish', 'closed', 'closed', '', 'france', '', '', '2018-04-28 11:10:30', '2018-04-28 11:10:30', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=99', 0, 'country', '', 0),
(100, 1, '2018-04-28 11:10:47', '2018-04-28 11:10:47', '', 'Gabon', '', 'publish', 'closed', 'closed', '', 'gabon', '', '', '2018-04-28 11:10:47', '2018-04-28 11:10:47', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=100', 0, 'country', '', 0),
(101, 1, '2018-04-28 11:11:19', '2018-04-28 11:11:19', '', 'Republic of The Gambia', '', 'publish', 'closed', 'closed', '', 'republic-of-the-gambia', '', '', '2018-04-28 11:11:19', '2018-04-28 11:11:19', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=101', 0, 'country', '', 0),
(102, 1, '2018-04-28 11:11:32', '2018-04-28 11:11:32', '', 'Georgia', '', 'publish', 'closed', 'closed', '', 'georgia', '', '', '2018-04-28 11:11:32', '2018-04-28 11:11:32', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=102', 0, 'country', '', 0),
(103, 1, '2018-04-28 11:11:41', '2018-04-28 11:11:41', '', 'Germany', '', 'publish', 'closed', 'closed', '', 'germany', '', '', '2018-04-28 11:11:41', '2018-04-28 11:11:41', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=103', 0, 'country', '', 0),
(104, 1, '2018-04-28 11:12:33', '2018-04-28 11:12:33', '', 'Ghana', '', 'publish', 'closed', 'closed', '', 'ghana', '', '', '2018-04-28 11:12:33', '2018-04-28 11:12:33', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=104', 0, 'country', '', 0),
(105, 1, '2018-04-28 11:12:46', '2018-04-28 11:12:46', '', 'Greece', '', 'publish', 'closed', 'closed', '', 'greece', '', '', '2018-04-28 11:12:46', '2018-04-28 11:12:46', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=105', 0, 'country', '', 0),
(106, 1, '2018-04-28 11:12:55', '2018-04-28 11:12:55', '', 'Grenada', '', 'publish', 'closed', 'closed', '', 'grenada', '', '', '2018-04-28 11:12:55', '2018-04-28 11:12:55', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=106', 0, 'country', '', 0),
(107, 1, '2018-04-28 11:13:04', '2018-04-28 11:13:04', '', 'Guatemala', '', 'publish', 'closed', 'closed', '', 'guatemala', '', '', '2018-04-28 11:13:04', '2018-04-28 11:13:04', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=107', 0, 'country', '', 0),
(109, 1, '2018-04-28 11:14:14', '2018-04-28 11:14:14', '', 'Republic of Guinea', '', 'publish', 'closed', 'closed', '', 'republic-of-guinea', '', '', '2018-04-28 11:14:14', '2018-04-28 11:14:14', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=109', 0, 'country', '', 0),
(110, 1, '2018-04-28 11:14:36', '2018-04-28 11:14:36', '', 'Guinea-Bissau', '', 'publish', 'closed', 'closed', '', 'guinea-bissau', '', '', '2018-04-28 11:14:36', '2018-04-28 11:14:36', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=110', 0, 'country', '', 0),
(111, 1, '2018-04-28 11:14:47', '2018-04-28 11:14:47', '', 'Guyana', '', 'publish', 'closed', 'closed', '', 'guyana', '', '', '2018-04-28 11:14:47', '2018-04-28 11:14:47', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=111', 0, 'country', '', 0),
(112, 1, '2018-04-28 11:15:04', '2018-04-28 11:15:04', '', 'Haiti', '', 'publish', 'closed', 'closed', '', 'haiti', '', '', '2018-04-28 11:15:04', '2018-04-28 11:15:04', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=112', 0, 'country', '', 0),
(113, 1, '2018-04-28 11:15:22', '2018-04-28 11:15:22', '', 'Honduras', '', 'publish', 'closed', 'closed', '', 'honduras', '', '', '2018-04-28 11:15:22', '2018-04-28 11:15:22', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=113', 0, 'country', '', 0),
(114, 1, '2018-04-28 11:15:34', '2018-04-28 11:15:34', '', 'Hungary', '', 'publish', 'closed', 'closed', '', 'hungary', '', '', '2018-04-28 11:15:34', '2018-04-28 11:15:34', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=114', 0, 'country', '', 0),
(115, 1, '2018-04-28 11:16:49', '2018-04-28 11:16:49', '', 'Iceland', '', 'publish', 'closed', 'closed', '', 'iceland', '', '', '2018-04-28 11:16:49', '2018-04-28 11:16:49', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=115', 0, 'country', '', 0),
(116, 1, '2018-04-28 11:17:12', '2018-04-28 11:17:12', '', 'India', '', 'publish', 'closed', 'closed', '', 'india', '', '', '2018-04-28 11:17:12', '2018-04-28 11:17:12', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=116', 0, 'country', '', 0),
(117, 1, '2018-04-28 11:17:31', '2018-04-28 11:17:31', '', 'Indonesia', '', 'publish', 'closed', 'closed', '', 'indonesia', '', '', '2018-04-28 11:17:31', '2018-04-28 11:17:31', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=117', 0, 'country', '', 0),
(118, 1, '2018-04-28 11:22:25', '2018-04-28 11:22:25', '', 'Islamic Republic of Iran', '', 'publish', 'closed', 'closed', '', 'islamic-republic-of-iran', '', '', '2018-04-28 11:22:25', '2018-04-28 11:22:25', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=118', 0, 'country', '', 0),
(119, 1, '2018-04-28 11:22:37', '2018-04-28 11:22:37', '', 'Iraq', '', 'publish', 'closed', 'closed', '', 'iraq', '', '', '2018-04-28 11:22:37', '2018-04-28 11:22:37', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=119', 0, 'country', '', 0),
(120, 1, '2018-04-28 11:26:16', '2018-04-28 11:26:16', '', 'Ireland', '', 'publish', 'closed', 'closed', '', 'ireland', '', '', '2018-04-28 11:26:16', '2018-04-28 11:26:16', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=120', 0, 'country', '', 0),
(121, 1, '2018-04-28 11:26:47', '2018-04-28 11:26:47', '', 'Israel', '', 'publish', 'closed', 'closed', '', 'israel', '', '', '2018-04-28 11:26:47', '2018-04-28 11:26:47', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=121', 0, 'country', '', 0),
(122, 1, '2018-04-28 11:26:59', '2018-04-28 11:26:59', '', 'Italy', '', 'publish', 'closed', 'closed', '', 'italy', '', '', '2018-04-28 11:26:59', '2018-04-28 11:26:59', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=122', 0, 'country', '', 0),
(123, 1, '2018-04-28 11:27:28', '2018-04-28 11:27:28', '', 'Jamaica', '', 'publish', 'closed', 'closed', '', 'jamaica', '', '', '2018-04-28 11:27:28', '2018-04-28 11:27:28', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=123', 0, 'country', '', 0),
(124, 1, '2018-04-28 11:27:54', '2018-04-28 11:27:54', '', 'Japan', '', 'publish', 'closed', 'closed', '', 'japan', '', '', '2018-04-28 11:27:54', '2018-04-28 11:27:54', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=124', 0, 'country', '', 0),
(125, 1, '2018-04-28 11:28:01', '2018-04-28 11:28:01', '', 'Jordan', '', 'publish', 'closed', 'closed', '', 'jordan', '', '', '2018-04-28 11:28:01', '2018-04-28 11:28:01', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=125', 0, 'country', '', 0),
(127, 1, '2018-04-28 11:34:10', '2018-04-28 11:34:10', '', 'Kazakhstan', '', 'publish', 'closed', 'closed', '', 'kazakhstan', '', '', '2018-04-28 11:34:10', '2018-04-28 11:34:10', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=127', 0, 'country', '', 0),
(128, 1, '2018-04-28 11:34:30', '2018-04-28 11:34:30', '', 'Kenya', '', 'publish', 'closed', 'closed', '', 'kenya', '', '', '2018-04-28 11:34:30', '2018-04-28 11:34:30', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=128', 0, 'country', '', 0),
(129, 1, '2018-04-28 11:35:00', '2018-04-28 11:35:00', '', 'Kiribati', '', 'publish', 'closed', 'closed', '', 'kiribati', '', '', '2018-04-28 11:35:00', '2018-04-28 11:35:00', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=129', 0, 'country', '', 0),
(130, 1, '2018-04-28 11:35:14', '2018-04-28 11:35:14', '', 'Kuwait', '', 'publish', 'closed', 'closed', '', 'kuwait', '', '', '2018-04-28 11:35:14', '2018-04-28 11:35:14', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=130', 0, 'country', '', 0),
(131, 1, '2018-04-28 11:37:15', '2018-04-28 11:37:15', '', 'Kyrgyzstan', '', 'publish', 'closed', 'closed', '', 'kyrgyzstan', '', '', '2018-04-28 11:37:15', '2018-04-28 11:37:15', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=131', 0, 'country', '', 0),
(132, 1, '2018-04-28 11:37:30', '2018-04-28 11:37:30', '', 'Lao People\'s Democratic Republic', '', 'publish', 'closed', 'closed', '', 'lao-peoples-democratic-republic', '', '', '2018-04-28 11:37:30', '2018-04-28 11:37:30', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=132', 0, 'country', '', 0),
(133, 1, '2018-04-28 11:37:43', '2018-04-28 11:37:43', '', 'Latvia', '', 'publish', 'closed', 'closed', '', 'latvia', '', '', '2018-04-28 11:37:43', '2018-04-28 11:37:43', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=133', 0, 'country', '', 0),
(134, 1, '2018-04-28 11:37:56', '2018-04-28 11:37:56', '', 'Lebanon', '', 'publish', 'closed', 'closed', '', 'lebanon', '', '', '2018-04-28 11:37:56', '2018-04-28 11:37:56', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=134', 0, 'country', '', 0),
(135, 1, '2018-04-28 11:38:08', '2018-04-28 11:38:08', '', 'Lesotho', '', 'publish', 'closed', 'closed', '', 'lesotho', '', '', '2018-04-28 11:38:08', '2018-04-28 11:38:08', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=135', 0, 'country', '', 0),
(136, 1, '2018-04-28 11:38:22', '2018-04-28 11:38:22', '', 'Liberia', '', 'publish', 'closed', 'closed', '', 'liberia', '', '', '2018-04-28 11:38:22', '2018-04-28 11:38:22', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=136', 0, 'country', '', 0),
(137, 1, '2018-04-28 11:38:40', '2018-04-28 11:38:40', '', 'Libya', '', 'publish', 'closed', 'closed', '', 'libya', '', '', '2018-04-28 11:38:40', '2018-04-28 11:38:40', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=137', 0, 'country', '', 0),
(138, 1, '2018-04-28 11:38:51', '2018-04-28 11:38:51', '', 'Liechtenstein', '', 'publish', 'closed', 'closed', '', 'liechtenstein', '', '', '2018-04-28 11:38:51', '2018-04-28 11:38:51', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=138', 0, 'country', '', 0),
(139, 1, '2018-04-28 11:39:01', '2018-04-28 11:39:01', '', 'Lithuania', '', 'publish', 'closed', 'closed', '', 'lithuania', '', '', '2018-04-28 11:39:01', '2018-04-28 11:39:01', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=139', 0, 'country', '', 0),
(140, 1, '2018-04-28 11:39:37', '2018-04-28 11:39:37', '', 'Luxembourg', '', 'publish', 'closed', 'closed', '', 'luxembourg', '', '', '2018-04-28 11:39:37', '2018-04-28 11:39:37', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=140', 0, 'country', '', 0),
(141, 1, '2018-04-28 11:39:49', '2018-04-28 11:39:49', '', 'Madagascar', '', 'publish', 'closed', 'closed', '', 'madagascar', '', '', '2018-04-28 11:39:49', '2018-04-28 11:39:49', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=141', 0, 'country', '', 0),
(142, 1, '2018-04-28 11:40:01', '2018-04-28 11:40:01', '', 'Malawi', '', 'publish', 'closed', 'closed', '', 'malawi', '', '', '2018-04-28 11:40:01', '2018-04-28 11:40:01', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=142', 0, 'country', '', 0),
(143, 1, '2018-04-28 11:40:18', '2018-04-28 11:40:18', '', 'Malaysia', '', 'publish', 'closed', 'closed', '', 'malaysia', '', '', '2018-04-28 11:40:18', '2018-04-28 11:40:18', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=143', 0, 'country', '', 0),
(144, 1, '2018-04-28 11:40:30', '2018-04-28 11:40:30', '', 'Maldives', '', 'publish', 'closed', 'closed', '', 'maldives', '', '', '2018-04-28 11:40:30', '2018-04-28 11:40:30', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=144', 0, 'country', '', 0),
(145, 1, '2018-04-28 11:40:43', '2018-04-28 11:40:43', '', 'Mali', '', 'publish', 'closed', 'closed', '', 'mali', '', '', '2018-04-28 11:43:03', '2018-04-28 11:43:03', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=145', 0, 'country', '', 0),
(146, 1, '2018-04-28 11:42:51', '2018-04-28 11:42:51', '', 'Malta', '', 'publish', 'closed', 'closed', '', 'malta', '', '', '2018-04-28 11:42:51', '2018-04-28 11:42:51', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=146', 0, 'country', '', 0),
(147, 1, '2018-04-28 11:47:02', '2018-04-28 11:47:02', '', 'Marshall Islands', '', 'publish', 'closed', 'closed', '', 'marshall-islands', '', '', '2018-04-28 11:47:02', '2018-04-28 11:47:02', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=147', 0, 'country', '', 0),
(148, 1, '2018-04-28 11:47:12', '2018-04-28 11:47:12', '', 'Mauritania', '', 'publish', 'closed', 'closed', '', 'mauritania', '', '', '2018-04-28 11:47:12', '2018-04-28 11:47:12', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=148', 0, 'country', '', 0),
(149, 1, '2018-04-28 11:47:22', '2018-04-28 11:47:22', '', 'Mauritius', '', 'publish', 'closed', 'closed', '', 'mauritius', '', '', '2018-04-28 11:47:22', '2018-04-28 11:47:22', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=149', 0, 'country', '', 0),
(150, 1, '2018-04-28 11:47:42', '2018-04-28 11:47:42', '', 'Mexico', '', 'publish', 'closed', 'closed', '', 'mexico', '', '', '2018-04-28 11:47:42', '2018-04-28 11:47:42', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=150', 0, 'country', '', 0),
(151, 1, '2018-04-28 11:47:53', '2018-04-28 11:47:53', '', 'Federated States of Micronesia', '', 'publish', 'closed', 'closed', '', 'federated-states-of-micronesia', '', '', '2018-04-28 11:47:53', '2018-04-28 11:47:53', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=151', 0, 'country', '', 0),
(152, 1, '2018-04-28 11:48:05', '2018-04-28 11:48:05', '', 'Monaco', '', 'publish', 'closed', 'closed', '', 'monaco', '', '', '2018-04-28 11:48:05', '2018-04-28 11:48:05', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=152', 0, 'country', '', 0),
(153, 1, '2018-04-28 11:48:15', '2018-04-28 11:48:15', '', 'Mongolia', '', 'publish', 'closed', 'closed', '', 'mongolia', '', '', '2018-04-28 11:48:15', '2018-04-28 11:48:15', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=153', 0, 'country', '', 0),
(154, 1, '2018-04-28 11:48:35', '2018-04-28 11:48:35', '', 'Montenegro', '', 'publish', 'closed', 'closed', '', 'montenegro', '', '', '2018-04-28 11:48:35', '2018-04-28 11:48:35', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=154', 0, 'country', '', 0),
(155, 1, '2018-04-28 11:48:47', '2018-04-28 11:48:47', '', 'Morocco', '', 'publish', 'closed', 'closed', '', 'morocco', '', '', '2018-04-28 11:48:47', '2018-04-28 11:48:47', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=155', 0, 'country', '', 0),
(156, 1, '2018-04-28 11:48:57', '2018-04-28 11:48:57', '', 'Mozambique', '', 'publish', 'closed', 'closed', '', 'mozambique', '', '', '2018-04-28 11:48:57', '2018-04-28 11:48:57', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=156', 0, 'country', '', 0),
(157, 1, '2018-04-28 11:49:09', '2018-04-28 11:49:09', '', 'Myanmar', '', 'publish', 'closed', 'closed', '', 'myanmar', '', '', '2018-04-28 11:49:09', '2018-04-28 11:49:09', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=157', 0, 'country', '', 0),
(160, 1, '2018-04-28 12:17:41', '2018-04-28 12:17:41', '', 'Namibia', '', 'publish', 'closed', 'closed', '', 'namibia', '', '', '2018-04-28 12:17:41', '2018-04-28 12:17:41', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=160', 0, 'country', '', 0),
(161, 1, '2018-04-28 12:18:02', '2018-04-28 12:18:02', '', 'Nauru', '', 'publish', 'closed', 'closed', '', 'nauru', '', '', '2018-04-28 12:18:02', '2018-04-28 12:18:02', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=161', 0, 'country', '', 0),
(162, 1, '2018-04-28 12:18:31', '2018-04-28 12:18:31', '', 'Nepal', '', 'publish', 'closed', 'closed', '', 'nepal', '', '', '2018-04-28 12:18:31', '2018-04-28 12:18:31', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=162', 0, 'country', '', 0),
(163, 1, '2018-04-28 12:18:45', '2018-04-28 12:18:45', '', 'Netherlands', '', 'publish', 'closed', 'closed', '', 'netherlands', '', '', '2018-04-28 12:18:45', '2018-04-28 12:18:45', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=163', 0, 'country', '', 0),
(164, 1, '2018-04-28 12:19:07', '2018-04-28 12:19:07', '', 'New Zealand', '', 'publish', 'closed', 'closed', '', 'new-zealand', '', '', '2018-04-28 12:19:07', '2018-04-28 12:19:07', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=164', 0, 'country', '', 0),
(165, 1, '2018-04-28 12:19:17', '2018-04-28 12:19:17', '', 'Nicaragua', '', 'publish', 'closed', 'closed', '', 'nicaragua', '', '', '2018-04-28 12:19:17', '2018-04-28 12:19:17', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=165', 0, 'country', '', 0),
(166, 1, '2018-04-28 12:20:29', '2018-04-28 12:20:29', '', 'Republic of the Niger', '', 'publish', 'closed', 'closed', '', 'republic-of-the-niger', '', '', '2018-04-28 12:20:29', '2018-04-28 12:20:29', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=166', 0, 'country', '', 0),
(167, 1, '2018-04-28 12:20:44', '2018-04-28 12:20:44', '', 'Nigeria', '', 'publish', 'closed', 'closed', '', 'nigeria', '', '', '2018-04-28 12:20:44', '2018-04-28 12:20:44', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=167', 0, 'country', '', 0),
(168, 1, '2018-04-28 12:21:12', '2018-04-28 12:21:12', '', 'Norway', '', 'publish', 'closed', 'closed', '', 'norway', '', '', '2018-04-28 12:21:12', '2018-04-28 12:21:12', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=168', 0, 'country', '', 0),
(169, 1, '2018-04-28 12:21:22', '2018-04-28 12:21:22', '', 'Oman', '', 'publish', 'closed', 'closed', '', 'oman', '', '', '2018-04-28 12:21:22', '2018-04-28 12:21:22', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=169', 0, 'country', '', 0),
(170, 1, '2018-04-28 12:21:38', '2018-04-28 12:21:38', '', 'Pakistan', '', 'publish', 'closed', 'closed', '', 'pakistan', '', '', '2018-04-28 12:21:38', '2018-04-28 12:21:38', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=170', 0, 'country', '', 0),
(171, 1, '2018-04-28 12:21:51', '2018-04-28 12:21:51', '', 'Palau', '', 'publish', 'closed', 'closed', '', 'palau', '', '', '2018-04-28 12:21:51', '2018-04-28 12:21:51', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=171', 0, 'country', '', 0),
(172, 1, '2018-04-28 12:22:08', '2018-04-28 12:22:08', '', 'Panama', '', 'publish', 'closed', 'closed', '', 'panama', '', '', '2018-04-28 12:22:08', '2018-04-28 12:22:08', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=172', 0, 'country', '', 0),
(173, 1, '2018-04-28 12:22:26', '2018-04-28 12:22:26', '', 'Papua New Guinea', '', 'publish', 'closed', 'closed', '', 'papua-new-guinea', '', '', '2018-04-28 12:22:26', '2018-04-28 12:22:26', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=173', 0, 'country', '', 0),
(174, 1, '2018-04-28 12:22:42', '2018-04-28 12:22:42', '', 'Paraguay', '', 'publish', 'closed', 'closed', '', 'paraguay', '', '', '2018-04-28 12:22:42', '2018-04-28 12:22:42', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=174', 0, 'country', '', 0),
(175, 1, '2018-04-28 12:23:01', '2018-04-28 12:23:01', '', 'Peru', '', 'publish', 'closed', 'closed', '', 'peru', '', '', '2018-04-28 12:23:01', '2018-04-28 12:23:01', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=175', 0, 'country', '', 0),
(176, 1, '2018-04-28 12:23:14', '2018-04-28 12:23:14', '', 'Philippines', '', 'publish', 'closed', 'closed', '', 'philippines', '', '', '2018-04-28 12:23:14', '2018-04-28 12:23:14', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=176', 0, 'country', '', 0),
(177, 1, '2018-04-28 12:23:39', '2018-04-28 12:23:39', '', 'Poland', '', 'publish', 'closed', 'closed', '', 'poland', '', '', '2018-04-28 12:23:39', '2018-04-28 12:23:39', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=177', 0, 'country', '', 0),
(178, 1, '2018-04-28 12:23:55', '2018-04-28 12:23:55', '', 'Portugal', '', 'publish', 'closed', 'closed', '', 'portugal', '', '', '2018-04-28 12:23:55', '2018-04-28 12:23:55', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=178', 0, 'country', '', 0),
(179, 1, '2018-04-28 12:24:18', '2018-04-28 12:24:18', '', 'Qatar', '', 'publish', 'closed', 'closed', '', 'qatar', '', '', '2018-04-28 12:24:18', '2018-04-28 12:24:18', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=179', 0, 'country', '', 0),
(180, 1, '2018-04-28 12:24:43', '2018-04-28 12:24:43', '', 'South Korea', '', 'publish', 'closed', 'closed', '', 'republic-of-korea', '', '', '2018-04-28 12:26:44', '2018-04-28 12:26:44', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=180', 0, 'country', '', 0),
(181, 1, '2018-04-28 12:27:03', '2018-04-28 12:27:03', '', 'Republic of Moldova', '', 'publish', 'closed', 'closed', '', 'republic-of-moldova', '', '', '2018-04-28 12:27:03', '2018-04-28 12:27:03', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=181', 0, 'country', '', 0),
(182, 1, '2018-04-28 12:27:23', '2018-04-28 12:27:23', '', 'Romania', '', 'publish', 'closed', 'closed', '', 'romania', '', '', '2018-04-28 12:27:23', '2018-04-28 12:27:23', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=182', 0, 'country', '', 0),
(183, 1, '2018-04-28 12:27:37', '2018-04-28 12:27:37', '', 'Russian Federation', '', 'publish', 'closed', 'closed', '', 'russian-federation', '', '', '2018-04-28 12:27:37', '2018-04-28 12:27:37', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=183', 0, 'country', '', 0),
(184, 1, '2018-04-28 12:27:52', '2018-04-28 12:27:52', '', 'Rwanda', '', 'publish', 'closed', 'closed', '', 'rwanda', '', '', '2018-04-28 12:27:52', '2018-04-28 12:27:52', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=184', 0, 'country', '', 0),
(186, 1, '2018-04-28 12:28:51', '2018-04-28 12:28:51', '', 'Saint Kitts and Nevis', '', 'publish', 'closed', 'closed', '', 'saint-kitts-and-nevis', '', '', '2018-04-28 12:28:51', '2018-04-28 12:28:51', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=186', 0, 'country', '', 0),
(187, 1, '2018-04-28 12:29:42', '2018-04-28 12:29:42', '', 'Saint Lucia', '', 'publish', 'closed', 'closed', '', 'saint-lucia', '', '', '2018-04-28 12:29:42', '2018-04-28 12:29:42', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=187', 0, 'country', '', 0),
(188, 1, '2018-04-28 12:30:00', '2018-04-28 12:30:00', '', 'Saint Vincent and the Grenadines', '', 'publish', 'closed', 'closed', '', 'saint-vincent-and-the-grenadines', '', '', '2018-04-28 12:30:00', '2018-04-28 12:30:00', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=188', 0, 'country', '', 0),
(189, 1, '2018-04-28 12:30:28', '2018-04-28 12:30:28', '', 'Samoa', '', 'publish', 'closed', 'closed', '', 'samoa', '', '', '2018-04-28 12:30:28', '2018-04-28 12:30:28', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=189', 0, 'country', '', 0),
(190, 1, '2018-04-28 12:30:45', '2018-04-28 12:30:45', '', 'San Marino', '', 'publish', 'closed', 'closed', '', 'san-marino', '', '', '2018-04-28 12:30:45', '2018-04-28 12:30:45', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=190', 0, 'country', '', 0),
(191, 1, '2018-04-28 12:32:33', '2018-04-28 12:32:33', '', 'São Tomé and Príncipe', '', 'publish', 'closed', 'closed', '', 'sao-tome-and-principe', '', '', '2018-04-28 12:32:33', '2018-04-28 12:32:33', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=191', 0, 'country', '', 0),
(192, 1, '2018-04-28 12:32:48', '2018-04-28 12:32:48', '', 'Saudi Arabia', '', 'publish', 'closed', 'closed', '', 'saudi-arabia', '', '', '2018-04-28 12:32:48', '2018-04-28 12:32:48', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=192', 0, 'country', '', 0),
(193, 1, '2018-04-28 12:33:00', '2018-04-28 12:33:00', '', 'Senegal', '', 'publish', 'closed', 'closed', '', 'senegal', '', '', '2018-04-28 12:33:00', '2018-04-28 12:33:00', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=193', 0, 'country', '', 0),
(194, 1, '2018-04-28 12:33:11', '2018-04-28 12:33:11', '', 'Serbia', '', 'publish', 'closed', 'closed', '', 'serbia', '', '', '2018-04-28 12:33:11', '2018-04-28 12:33:11', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=194', 0, 'country', '', 0),
(195, 1, '2018-04-28 12:33:40', '2018-04-28 12:33:40', '', 'Seychelles', '', 'publish', 'closed', 'closed', '', 'seychelles', '', '', '2018-04-28 12:33:40', '2018-04-28 12:33:40', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=195', 0, 'country', '', 0),
(196, 1, '2018-04-28 12:33:53', '2018-04-28 12:33:53', '', 'Sierra Leone', '', 'publish', 'closed', 'closed', '', 'sierra-leone', '', '', '2018-04-28 12:33:53', '2018-04-28 12:33:53', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=196', 0, 'country', '', 0),
(197, 1, '2018-04-28 12:34:07', '2018-04-28 12:34:07', '', 'Singapore', '', 'publish', 'closed', 'closed', '', 'singapore', '', '', '2018-04-28 12:34:07', '2018-04-28 12:34:07', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=197', 0, 'country', '', 0),
(198, 1, '2018-04-28 12:34:26', '2018-04-28 12:34:26', '', 'Slovakia', '', 'publish', 'closed', 'closed', '', 'slovakia', '', '', '2018-04-28 12:34:26', '2018-04-28 12:34:26', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=198', 0, 'country', '', 0),
(199, 1, '2018-04-28 12:34:42', '2018-04-28 12:34:42', '', 'Slovenia', '', 'publish', 'closed', 'closed', '', 'slovenia', '', '', '2018-04-28 12:34:42', '2018-04-28 12:34:42', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=199', 0, 'country', '', 0),
(200, 1, '2018-04-28 12:34:59', '2018-04-28 12:34:59', '', 'Solomon Islands', '', 'publish', 'closed', 'closed', '', 'solomon-islands', '', '', '2018-04-28 12:34:59', '2018-04-28 12:34:59', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=200', 0, 'country', '', 0),
(201, 1, '2018-04-28 12:35:11', '2018-04-28 12:35:11', '', 'Somalia', '', 'publish', 'closed', 'closed', '', 'somalia', '', '', '2018-04-28 12:35:11', '2018-04-28 12:35:11', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=201', 0, 'country', '', 0),
(202, 1, '2018-04-28 12:35:30', '2018-04-28 12:35:30', '', 'South Africa', '', 'publish', 'closed', 'closed', '', 'south-africa', '', '', '2018-04-28 12:35:30', '2018-04-28 12:35:30', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=202', 0, 'country', '', 0),
(203, 1, '2018-04-28 12:35:46', '2018-04-28 12:35:46', '', 'South Sudan', '', 'publish', 'closed', 'closed', '', 'south-sudan', '', '', '2018-04-28 12:35:46', '2018-04-28 12:35:46', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=203', 0, 'country', '', 0),
(204, 1, '2018-04-28 12:35:55', '2018-04-28 12:35:55', '', 'Spain', '', 'publish', 'closed', 'closed', '', 'spain', '', '', '2018-04-28 12:35:55', '2018-04-28 12:35:55', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=204', 0, 'country', '', 0),
(205, 1, '2018-04-28 12:36:07', '2018-04-28 12:36:07', '', 'Sri Lanka', '', 'publish', 'closed', 'closed', '', 'sri-lanka', '', '', '2018-04-28 12:36:07', '2018-04-28 12:36:07', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=205', 0, 'country', '', 0),
(206, 1, '2018-04-28 12:36:19', '2018-04-28 12:36:19', '', 'North Sudan', '', 'publish', 'closed', 'closed', '', 'north-sudan', '', '', '2018-04-28 12:36:19', '2018-04-28 12:36:19', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=206', 0, 'country', '', 0),
(207, 1, '2018-04-28 12:36:33', '2018-04-28 12:36:33', '', 'Suriname', '', 'publish', 'closed', 'closed', '', 'suriname', '', '', '2018-04-28 12:36:33', '2018-04-28 12:36:33', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=207', 0, 'country', '', 0),
(208, 1, '2018-04-28 12:36:54', '2018-04-28 12:36:54', '', 'Swaziland', '', 'publish', 'closed', 'closed', '', 'swaziland', '', '', '2018-04-28 12:36:54', '2018-04-28 12:36:54', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=208', 0, 'country', '', 0),
(209, 1, '2018-04-28 12:37:11', '2018-04-28 12:37:11', '', 'Sweden', '', 'publish', 'closed', 'closed', '', 'sweden', '', '', '2018-04-28 12:37:11', '2018-04-28 12:37:11', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=209', 0, 'country', '', 0),
(211, 1, '2018-04-28 12:38:16', '2018-04-28 12:38:16', '', 'Switzerland', '', 'publish', 'closed', 'closed', '', 'switzerland', '', '', '2018-04-28 12:38:16', '2018-04-28 12:38:16', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=211', 0, 'country', '', 0),
(212, 1, '2018-04-28 12:38:33', '2018-04-28 12:38:33', '', 'Syrian Arab Republic', '', 'publish', 'closed', 'closed', '', 'syrian-arab-republic', '', '', '2018-04-28 12:38:33', '2018-04-28 12:38:33', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=212', 0, 'country', '', 0),
(213, 1, '2018-04-28 12:38:47', '2018-04-28 12:38:47', '', 'Tajikistan', '', 'publish', 'closed', 'closed', '', 'tajikistan', '', '', '2018-04-28 12:38:47', '2018-04-28 12:38:47', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=213', 0, 'country', '', 0),
(214, 1, '2018-04-28 12:38:58', '2018-04-28 12:38:58', '', 'Thailand', '', 'publish', 'closed', 'closed', '', 'thailand', '', '', '2018-04-28 12:38:58', '2018-04-28 12:38:58', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=214', 0, 'country', '', 0),
(215, 1, '2018-04-28 12:39:17', '2018-04-28 12:39:17', '', 'The Former Yugoslav Republic of Macedonia', '', 'publish', 'closed', 'closed', '', 'the-former-yugoslav-republic-of-macedonia', '', '', '2018-04-28 12:39:17', '2018-04-28 12:39:17', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=215', 0, 'country', '', 0),
(216, 1, '2018-04-28 12:39:25', '2018-04-28 12:39:25', '', 'Timor-Leste', '', 'publish', 'closed', 'closed', '', 'timor-leste', '', '', '2018-04-28 12:39:25', '2018-04-28 12:39:25', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=216', 0, 'country', '', 0),
(217, 1, '2018-04-28 12:39:35', '2018-04-28 12:39:35', '', 'Togo', '', 'publish', 'closed', 'closed', '', 'togo', '', '', '2018-04-28 12:39:35', '2018-04-28 12:39:35', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=217', 0, 'country', '', 0),
(218, 1, '2018-04-28 12:39:47', '2018-04-28 12:39:47', '', 'Tonga', '', 'publish', 'closed', 'closed', '', 'tonga', '', '', '2018-04-28 12:39:47', '2018-04-28 12:39:47', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=218', 0, 'country', '', 0),
(219, 1, '2018-04-28 12:40:00', '2018-04-28 12:40:00', '', 'Trinidad and Tobago', '', 'publish', 'closed', 'closed', '', 'trinidad-and-tobago', '', '', '2018-04-28 12:40:00', '2018-04-28 12:40:00', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=219', 0, 'country', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(221, 1, '2018-04-28 12:40:42', '2018-04-28 12:40:42', '', 'Tunisia', '', 'publish', 'closed', 'closed', '', 'tunisia', '', '', '2018-04-28 12:40:42', '2018-04-28 12:40:42', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=221', 0, 'country', '', 0),
(222, 1, '2018-04-28 12:40:55', '2018-04-28 12:40:55', '', 'Turkey', '', 'publish', 'closed', 'closed', '', 'turkey', '', '', '2018-04-28 12:40:55', '2018-04-28 12:40:55', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=222', 0, 'country', '', 0),
(223, 1, '2018-04-28 12:41:17', '2018-04-28 12:41:17', '', 'Turkmenistan', '', 'publish', 'closed', 'closed', '', 'turkmenistan', '', '', '2018-04-28 12:41:17', '2018-04-28 12:41:17', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=223', 0, 'country', '', 0),
(224, 1, '2018-04-28 12:41:33', '2018-04-28 12:41:33', '', 'Tuvalu', '', 'publish', 'closed', 'closed', '', 'tuvalu', '', '', '2018-04-28 12:41:33', '2018-04-28 12:41:33', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=224', 0, 'country', '', 0),
(225, 1, '2018-04-28 12:41:46', '2018-04-28 12:41:46', '', 'Uganda', '', 'publish', 'closed', 'closed', '', 'uganda', '', '', '2018-04-28 12:41:46', '2018-04-28 12:41:46', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=225', 0, 'country', '', 0),
(226, 1, '2018-04-28 12:41:56', '2018-04-28 12:41:56', '', 'Ukraine', '', 'publish', 'closed', 'closed', '', 'ukraine', '', '', '2018-04-28 12:41:56', '2018-04-28 12:41:56', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=226', 0, 'country', '', 0),
(227, 1, '2018-04-28 12:42:21', '2018-04-28 12:42:21', '', 'United Arab Emirates', '', 'publish', 'closed', 'closed', '', 'united-arab-emirates', '', '', '2018-04-28 12:42:21', '2018-04-28 12:42:21', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=227', 0, 'country', '', 0),
(228, 1, '2018-04-28 12:42:36', '2018-04-28 12:42:36', '', 'United Kingdom', '', 'publish', 'closed', 'closed', '', 'united-kingdom', '', '', '2018-04-28 12:42:36', '2018-04-28 12:42:36', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=228', 0, 'country', '', 0),
(230, 1, '2018-04-28 12:44:33', '2018-04-28 12:44:33', '', 'United Republic of Tanzania', '', 'publish', 'closed', 'closed', '', 'united-republic-of-tanzania', '', '', '2018-04-28 12:44:33', '2018-04-28 12:44:33', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=230', 0, 'country', '', 0),
(231, 1, '2018-04-28 12:44:42', '2018-04-28 12:44:42', '', 'United States of America', '', 'publish', 'closed', 'closed', '', 'united-states-of-america', '', '', '2018-04-28 12:44:42', '2018-04-28 12:44:42', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=231', 0, 'country', '', 0),
(232, 1, '2018-04-28 12:44:52', '2018-04-28 12:44:52', '', 'Uruguay', '', 'publish', 'closed', 'closed', '', 'uruguay', '', '', '2018-04-28 12:44:52', '2018-04-28 12:44:52', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=232', 0, 'country', '', 0),
(233, 1, '2018-04-28 12:45:01', '2018-04-28 12:45:01', '', 'Uzbekistan', '', 'publish', 'closed', 'closed', '', 'uzbekistan', '', '', '2018-04-28 12:45:01', '2018-04-28 12:45:01', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=233', 0, 'country', '', 0),
(234, 1, '2018-04-28 12:45:08', '2018-04-28 12:45:08', '', 'Vanuatu', '', 'publish', 'closed', 'closed', '', 'vanuatu', '', '', '2018-04-28 12:45:08', '2018-04-28 12:45:08', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=234', 0, 'country', '', 0),
(235, 1, '2018-04-28 12:46:06', '2018-04-28 12:46:06', '', 'Bolivarian Republic of Venezuela', '', 'publish', 'closed', 'closed', '', 'bolivarian-republic-of-venezuela', '', '', '2018-04-28 12:46:06', '2018-04-28 12:46:06', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=235', 0, 'country', '', 0),
(236, 1, '2018-04-28 12:46:17', '2018-04-28 12:46:17', '', 'Vietnam', '', 'publish', 'closed', 'closed', '', 'vietnam', '', '', '2018-04-28 12:46:17', '2018-04-28 12:46:17', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=236', 0, 'country', '', 0),
(237, 1, '2018-04-28 12:46:37', '2018-04-28 12:46:37', '', 'Yemen', '', 'publish', 'closed', 'closed', '', 'yemen', '', '', '2018-04-28 12:46:37', '2018-04-28 12:46:37', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=237', 0, 'country', '', 0),
(238, 1, '2018-04-28 12:47:08', '2018-04-28 12:47:08', '', 'Zambia', '', 'publish', 'closed', 'closed', '', 'zambia', '', '', '2018-04-28 12:47:08', '2018-04-28 12:47:08', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=238', 0, 'country', '', 0),
(239, 1, '2018-04-28 12:47:21', '2018-04-28 12:47:21', '', 'Zimbabwe', '', 'publish', 'closed', 'closed', '', 'zimbabwe', '', '', '2018-04-29 17:27:21', '2018-04-29 17:27:21', '', 0, 'http://localhost/KiitMun18/?post_type=country&#038;p=239', 0, 'country', '', 0),
(242, 1, '2018-04-29 21:21:30', '2018-04-29 21:21:30', '', 'Registrations', '', 'publish', 'closed', 'closed', '', 'registrations', '', '', '2018-05-05 14:21:43', '2018-05-05 14:21:43', '', 0, 'http://localhost/KiitMun18/?page_id=242', 0, 'page', '', 0),
(243, 1, '2018-04-29 21:21:30', '2018-04-29 21:21:30', '', 'Registrations', '', 'inherit', 'closed', 'closed', '', '242-revision-v1', '', '', '2018-04-29 21:21:30', '2018-04-29 21:21:30', '', 242, 'http://localhost/KiitMun18/2018/04/29/242-revision-v1/', 0, 'revision', '', 0),
(244, 1, '2018-05-01 17:44:24', '2018-05-01 17:44:24', '', '23213384_747947142069773_5353532491711064836_o', '', 'inherit', 'open', 'closed', '', '23213384_747947142069773_5353532491711064836_o', '', '', '2018-05-01 17:44:24', '2018-05-01 17:44:24', '', 0, 'http://localhost/KiitMun18/wp-content/uploads/2018/05/23213384_747947142069773_5353532491711064836_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(245, 1, '2018-05-01 17:44:27', '2018-05-01 17:44:27', '', '23270371_747947488736405_122483572637752744_o', '', 'inherit', 'open', 'closed', '', '23270371_747947488736405_122483572637752744_o', '', '', '2018-05-01 17:44:27', '2018-05-01 17:44:27', '', 0, 'http://localhost/KiitMun18/wp-content/uploads/2018/05/23270371_747947488736405_122483572637752744_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(246, 1, '2018-05-01 17:44:30', '2018-05-01 17:44:30', '', '23275377_749545275243293_1652172596510736666_o', '', 'inherit', 'open', 'closed', '', '23275377_749545275243293_1652172596510736666_o', '', '', '2018-05-01 17:44:30', '2018-05-01 17:44:30', '', 0, 'http://localhost/KiitMun18/wp-content/uploads/2018/05/23275377_749545275243293_1652172596510736666_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(247, 1, '2018-05-01 17:44:32', '2018-05-01 17:44:32', '', '23668779_754015101462977_4767170783282112252_o', '', 'inherit', 'open', 'closed', '', '23668779_754015101462977_4767170783282112252_o', '', '', '2018-05-01 17:44:32', '2018-05-01 17:44:32', '', 0, 'http://localhost/KiitMun18/wp-content/uploads/2018/05/23668779_754015101462977_4767170783282112252_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(248, 1, '2018-05-01 17:48:17', '2018-05-01 17:48:17', '', 'Home Page Slider 1', '', 'publish', 'open', 'open', '', 'home-page-slider-1', '', '', '2018-05-01 17:48:17', '2018-05-01 17:48:17', '', 0, 'http://localhost/KiitMun18/?p=248', 0, 'post', '', 0),
(249, 1, '2018-05-01 17:48:17', '2018-05-01 17:48:17', '', 'Home Page Slider 1', '', 'inherit', 'closed', 'closed', '', '248-revision-v1', '', '', '2018-05-01 17:48:17', '2018-05-01 17:48:17', '', 248, 'http://localhost/KiitMun18/2018/05/01/248-revision-v1/', 0, 'revision', '', 0),
(250, 1, '2018-05-01 17:48:45', '2018-05-01 17:48:45', '', 'Home Page Slider 2', '', 'publish', 'open', 'open', '', 'home-page-slider-2', '', '', '2018-05-01 17:48:45', '2018-05-01 17:48:45', '', 0, 'http://localhost/KiitMun18/?p=250', 0, 'post', '', 0),
(251, 1, '2018-05-01 17:48:45', '2018-05-01 17:48:45', '', 'Home Page Slider 2', '', 'inherit', 'closed', 'closed', '', '250-revision-v1', '', '', '2018-05-01 17:48:45', '2018-05-01 17:48:45', '', 250, 'http://localhost/KiitMun18/2018/05/01/250-revision-v1/', 0, 'revision', '', 0),
(252, 1, '2018-05-01 17:49:13', '2018-05-01 17:49:13', '', 'Home Page Slider 3', '', 'publish', 'open', 'open', '', 'home-page-slider-3', '', '', '2018-05-01 17:49:13', '2018-05-01 17:49:13', '', 0, 'http://localhost/KiitMun18/?p=252', 0, 'post', '', 0),
(253, 1, '2018-05-01 17:49:13', '2018-05-01 17:49:13', '', 'Home Page Slider 3', '', 'inherit', 'closed', 'closed', '', '252-revision-v1', '', '', '2018-05-01 17:49:13', '2018-05-01 17:49:13', '', 252, 'http://localhost/KiitMun18/2018/05/01/252-revision-v1/', 0, 'revision', '', 0),
(254, 1, '2018-05-01 17:49:40', '2018-05-01 17:49:40', '', 'Home Page Slider 4', '', 'publish', 'open', 'open', '', 'home-page-slider-4', '', '', '2018-05-01 17:49:40', '2018-05-01 17:49:40', '', 0, 'http://localhost/KiitMun18/?p=254', 0, 'post', '', 0),
(255, 1, '2018-05-01 17:49:40', '2018-05-01 17:49:40', '', 'Home Page Slider 4', '', 'inherit', 'closed', 'closed', '', '254-revision-v1', '', '', '2018-05-01 17:49:40', '2018-05-01 17:49:40', '', 254, 'http://localhost/KiitMun18/2018/05/01/254-revision-v1/', 0, 'revision', '', 0),
(256, 1, '2018-05-01 17:51:13', '2018-05-01 17:51:13', '', 'Beta', '', 'publish', 'closed', 'closed', '', 'beta', '', '', '2018-05-01 17:51:13', '2018-05-01 17:51:13', '', 0, 'http://localhost/KiitMun18/?page_id=256', 0, 'page', '', 0),
(257, 1, '2018-05-01 17:51:13', '2018-05-01 17:51:13', '', 'Beta', '', 'inherit', 'closed', 'closed', '', '256-revision-v1', '', '', '2018-05-01 17:51:13', '2018-05-01 17:51:13', '', 256, 'http://localhost/KiitMun18/2018/05/01/256-revision-v1/', 0, 'revision', '', 0),
(259, 1, '2018-05-01 18:10:28', '2018-05-01 18:10:28', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-05-01 18:10:28', '2018-05-01 18:10:28', '', 0, 'http://localhost/KiitMun18/wp-content/uploads/2018/05/logo.png', 0, 'attachment', 'image/png', 0),
(260, 1, '2018-05-01 21:38:51', '2018-05-01 21:38:51', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean dapibus, sem ac sodales mollis, massa lorem dapibus sapien, in vehicula turpis tortor ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus viverra nisl eros, eu consequat sapien euismod nec. Phasellus non iaculis nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at lobortis dui. Etiam vel neque nec sem posuere tristique. Suspendisse potenti.\r\n\r\nSed a eleifend mi. Donec dolor lacus, cursus a diam nec, rhoncus ornare felis. Duis ante justo, malesuada et mi in, auctor venenatis mi. Praesent gravida, enim in scelerisque ullamcorper, elit erat efficitur dui, ac pretium mauris nisi sed lectus. Curabitur nisi erat, semper at gravida nec, vestibulum eget turpis. Praesent imperdiet, nisl id porttitor venenatis, augue sem accumsan elit, eget posuere sapien est et enim. Curabitur lobortis massa vel magna venenatis, ut vehicula neque blandit. Mauris aliquet odio felis, a luctus sem faucibus id. Mauris nisi ligula, ornare nec odio eu, luctus interdum augue. Ut eleifend, eros in imperdiet hendrerit, ipsum sem tristique urna, ac accumsan nulla velit eu leo. Cras porta eros at massa venenatis commodo.', 'Home Page Second Section Details', '', 'publish', 'open', 'open', '', 'home-page-second-section-details', '', '', '2018-05-01 21:58:27', '2018-05-01 21:58:27', '', 0, 'http://localhost/KiitMun18/?p=260', 0, 'post', '', 0),
(261, 1, '2018-05-01 21:38:51', '2018-05-01 21:38:51', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean dapibus, sem ac sodales mollis, massa lorem dapibus sapien, in vehicula turpis tortor ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus viverra nisl eros, eu consequat sapien euismod nec. Phasellus non iaculis nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at lobortis dui. Etiam vel neque nec sem posuere tristique. Suspendisse potenti.\r\n\r\nSed a eleifend mi. Donec dolor lacus, cursus a diam nec, rhoncus ornare felis. Duis ante justo, malesuada et mi in, auctor venenatis mi. Praesent gravida, enim in scelerisque ullamcorper, elit erat efficitur dui, ac pretium mauris nisi sed lectus. Curabitur nisi erat, semper at gravida nec, vestibulum eget turpis. Praesent imperdiet, nisl id porttitor venenatis, augue sem accumsan elit, eget posuere sapien est et enim. Curabitur lobortis massa vel magna venenatis, ut vehicula neque blandit. Mauris aliquet odio felis, a luctus sem faucibus id. Mauris nisi ligula, ornare nec odio eu, luctus interdum augue. Ut eleifend, eros in imperdiet hendrerit, ipsum sem tristique urna, ac accumsan nulla velit eu leo. Cras porta eros at massa venenatis commodo.', 'Home Page Second section Details', '', 'inherit', 'closed', 'closed', '', '260-revision-v1', '', '', '2018-05-01 21:38:51', '2018-05-01 21:38:51', '', 260, 'http://localhost/KiitMun18/2018/05/01/260-revision-v1/', 0, 'revision', '', 0),
(262, 1, '2018-05-01 21:58:27', '2018-05-01 21:58:27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean dapibus, sem ac sodales mollis, massa lorem dapibus sapien, in vehicula turpis tortor ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus viverra nisl eros, eu consequat sapien euismod nec. Phasellus non iaculis nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at lobortis dui. Etiam vel neque nec sem posuere tristique. Suspendisse potenti.\r\n\r\nSed a eleifend mi. Donec dolor lacus, cursus a diam nec, rhoncus ornare felis. Duis ante justo, malesuada et mi in, auctor venenatis mi. Praesent gravida, enim in scelerisque ullamcorper, elit erat efficitur dui, ac pretium mauris nisi sed lectus. Curabitur nisi erat, semper at gravida nec, vestibulum eget turpis. Praesent imperdiet, nisl id porttitor venenatis, augue sem accumsan elit, eget posuere sapien est et enim. Curabitur lobortis massa vel magna venenatis, ut vehicula neque blandit. Mauris aliquet odio felis, a luctus sem faucibus id. Mauris nisi ligula, ornare nec odio eu, luctus interdum augue. Ut eleifend, eros in imperdiet hendrerit, ipsum sem tristique urna, ac accumsan nulla velit eu leo. Cras porta eros at massa venenatis commodo.', 'Home Page Second Section Details', '', 'inherit', 'closed', 'closed', '', '260-revision-v1', '', '', '2018-05-01 21:58:27', '2018-05-01 21:58:27', '', 260, 'http://localhost/KiitMun18/2018/05/01/260-revision-v1/', 0, 'revision', '', 0),
(263, 1, '2018-05-01 22:25:13', '2018-05-01 22:25:13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean dapibus, sem ac sodales mollis, massa lorem dapibus sapien, in vehicula turpis tortor ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus viverra nisl eros, eu consequat sapien euismod nec. Phasellus non iaculis nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at lobortis dui. Etiam vel neque nec sem posuere tristique. Suspendisse potenti.', 'Founder\'s Message', '', 'publish', 'open', 'open', '', 'founders-message', '', '', '2018-05-01 22:25:13', '2018-05-01 22:25:13', '', 0, 'http://localhost/KiitMun18/?p=263', 0, 'post', '', 0),
(264, 1, '2018-05-01 22:25:05', '2018-05-01 22:25:05', '', 'Achyuta-Samanta-1', '', 'inherit', 'open', 'closed', '', 'achyuta-samanta-1', '', '', '2018-05-01 22:25:05', '2018-05-01 22:25:05', '', 263, 'http://localhost/KiitMun18/wp-content/uploads/2018/05/Achyuta-Samanta-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(265, 1, '2018-05-01 22:25:13', '2018-05-01 22:25:13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean dapibus, sem ac sodales mollis, massa lorem dapibus sapien, in vehicula turpis tortor ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus viverra nisl eros, eu consequat sapien euismod nec. Phasellus non iaculis nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at lobortis dui. Etiam vel neque nec sem posuere tristique. Suspendisse potenti.', 'Founder\'s Message', '', 'inherit', 'closed', 'closed', '', '263-revision-v1', '', '', '2018-05-01 22:25:13', '2018-05-01 22:25:13', '', 263, 'http://localhost/KiitMun18/2018/05/01/263-revision-v1/', 0, 'revision', '', 0),
(269, 1, '2018-05-02 10:25:20', '2018-05-02 10:25:20', '', 'facebook', '', 'inherit', 'open', 'closed', '', 'facebook-2', '', '', '2018-05-02 10:25:20', '2018-05-02 10:25:20', '', 0, 'http://localhost/KiitMun18/wp-content/uploads/2018/05/facebook-1.png', 0, 'attachment', 'image/png', 0),
(270, 1, '2018-05-02 10:25:21', '2018-05-02 10:25:21', '', 'instagram', '', 'inherit', 'open', 'closed', '', 'instagram-2', '', '', '2018-05-02 10:25:21', '2018-05-02 10:25:21', '', 0, 'http://localhost/KiitMun18/wp-content/uploads/2018/05/instagram-1.png', 0, 'attachment', 'image/png', 0),
(271, 1, '2018-05-02 10:25:22', '2018-05-02 10:25:22', '', 'twitter', '', 'inherit', 'open', 'closed', '', 'twitter-2', '', '', '2018-05-02 10:25:22', '2018-05-02 10:25:22', '', 0, 'http://localhost/KiitMun18/wp-content/uploads/2018/05/twitter-1.png', 0, 'attachment', 'image/png', 0),
(272, 1, '2018-05-02 12:06:12', '2018-05-02 12:06:12', '', 'phone-receiver', '', 'inherit', 'open', 'closed', '', 'phone-receiver', '', '', '2018-05-02 12:06:12', '2018-05-02 12:06:12', '', 0, 'http://localhost/KiitMun18/wp-content/uploads/2018/05/phone-receiver.png', 0, 'attachment', 'image/png', 0),
(273, 1, '2018-05-03 11:46:17', '2018-05-03 11:46:17', ' ', '', '', 'publish', 'closed', 'closed', '', '273', '', '', '2018-05-03 12:02:36', '2018-05-03 12:02:36', '', 0, 'http://localhost/KiitMun18/?p=273', 2, 'nav_menu_item', '', 0),
(274, 1, '2018-05-03 11:46:17', '2018-05-03 11:46:17', ' ', '', '', 'publish', 'closed', 'closed', '', '274', '', '', '2018-05-03 12:02:36', '2018-05-03 12:02:36', '', 0, 'http://localhost/KiitMun18/?p=274', 3, 'nav_menu_item', '', 0),
(275, 1, '2018-05-03 11:46:18', '2018-05-03 11:46:18', ' ', '', '', 'publish', 'closed', 'closed', '', '275', '', '', '2018-05-03 12:02:36', '2018-05-03 12:02:36', '', 0, 'http://localhost/KiitMun18/?p=275', 4, 'nav_menu_item', '', 0),
(276, 1, '2018-05-03 11:46:17', '2018-05-03 11:46:17', ' ', '', '', 'publish', 'closed', 'closed', '', '276', '', '', '2018-05-03 12:02:36', '2018-05-03 12:02:36', '', 0, 'http://localhost/KiitMun18/?p=276', 1, 'nav_menu_item', '', 0),
(277, 1, '2018-05-03 12:42:15', '2018-05-03 12:42:15', '', '23333910_750281305169690_7212381728359913249_o', '', 'inherit', 'open', 'closed', '', '23333910_750281305169690_7212381728359913249_o', '', '', '2018-05-03 12:42:15', '2018-05-03 12:42:15', '', 0, 'http://localhost/KiitMun18/wp-content/uploads/2018/05/23333910_750281305169690_7212381728359913249_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(278, 1, '2018-05-03 12:42:18', '2018-05-03 12:42:18', '', '23415381_749963848534769_6175899308093996118_o', '', 'inherit', 'open', 'closed', '', '23415381_749963848534769_6175899308093996118_o', '', '', '2018-05-03 12:42:18', '2018-05-03 12:42:18', '', 0, 'http://localhost/KiitMun18/wp-content/uploads/2018/05/23415381_749963848534769_6175899308093996118_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(279, 1, '2018-05-03 12:42:20', '2018-05-03 12:42:20', '', '23509229_750746758456478_7400223089167350741_o', '', 'inherit', 'open', 'closed', '', '23509229_750746758456478_7400223089167350741_o', '', '', '2018-05-03 12:42:20', '2018-05-03 12:42:20', '', 0, 'http://localhost/KiitMun18/wp-content/uploads/2018/05/23509229_750746758456478_7400223089167350741_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(280, 1, '2018-05-03 12:42:22', '2018-05-03 12:42:22', '', '23509356_750391808491973_5902390836740344430_o', '', 'inherit', 'open', 'closed', '', '23509356_750391808491973_5902390836740344430_o', '', '', '2018-05-03 12:42:22', '2018-05-03 12:42:22', '', 0, 'http://localhost/KiitMun18/wp-content/uploads/2018/05/23509356_750391808491973_5902390836740344430_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(281, 1, '2018-05-05 14:28:40', '2018-05-05 14:28:40', '', 'Sponsors', '', 'publish', 'closed', 'closed', '', 'sponsors', '', '', '2018-05-05 14:28:40', '2018-05-05 14:28:40', '', 0, 'http://localhost/KiitMun18/?page_id=281', 0, 'page', '', 0),
(282, 1, '2018-05-05 14:28:40', '2018-05-05 14:28:40', '', 'Sponsors', '', 'inherit', 'closed', 'closed', '', '281-revision-v1', '', '', '2018-05-05 14:28:40', '2018-05-05 14:28:40', '', 281, 'http://localhost/KiitMun18/2018/05/05/281-revision-v1/', 0, 'revision', '', 0),
(283, 1, '2018-05-05 14:45:51', '2018-05-05 14:45:51', '', 'The United Nations Ocean Conference ( UN Ocean )', '', 'publish', 'closed', 'closed', '', 'un-ocean', '', '', '2018-05-05 14:57:30', '2018-05-05 14:57:30', '', 0, 'http://localhost/KiitMun18/?post_type=committee&#038;p=283', 0, 'committee', '', 0),
(284, 1, '2018-05-05 14:45:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-05 14:45:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/KiitMun18/?post_type=committee&p=284', 0, 'committee', '', 0),
(285, 1, '2018-05-05 14:47:16', '2018-05-05 14:47:16', '', 'United Nations General Assembly Emergency Special Session ( ESS )', '', 'publish', 'closed', 'closed', '', 'united-nations-general-assembly-emergency-special-session-ess', '', '', '2018-05-05 14:57:15', '2018-05-05 14:57:15', '', 0, 'http://localhost/KiitMun18/?post_type=committee&#038;p=285', 0, 'committee', '', 0),
(286, 1, '2018-05-05 14:47:57', '2018-05-05 14:47:57', '', 'United nations Commission On Narcotic Drugs ( UNCND )', '', 'publish', 'closed', 'closed', '', 'united-nations-commission-on-narcotic-drugs-uncnd', '', '', '2018-05-05 14:57:12', '2018-05-05 14:57:12', '', 0, 'http://localhost/KiitMun18/?post_type=committee&#038;p=286', 0, 'committee', '', 0),
(287, 1, '2018-05-05 14:49:01', '2018-05-05 14:49:01', '', 'United Nations Commission On the Status Of Women ( UNCSW )', '', 'publish', 'closed', 'closed', '', 'united-nations-commission-on-the-status-of-women', '', '', '2018-05-05 14:57:05', '2018-05-05 14:57:05', '', 0, 'http://localhost/KiitMun18/?post_type=committee&#038;p=287', 0, 'committee', '', 0),
(288, 1, '2018-05-05 14:49:32', '2018-05-05 14:49:32', '', 'International Organization for Migration ( IMO )', '', 'publish', 'closed', 'closed', '', 'international-organization-for-migration', '', '', '2018-05-05 14:56:42', '2018-05-05 14:56:42', '', 0, 'http://localhost/KiitMun18/?post_type=committee&#038;p=288', 0, 'committee', '', 0),
(289, 1, '2018-05-05 14:50:19', '2018-05-05 14:50:19', '', 'Organisation For The Prohibition of Chemical Weapons ( OPCW )', '', 'publish', 'closed', 'closed', '', 'organisation-for-the-prohibition-of-chemical-weapons-opcw', '', '', '2018-05-05 14:56:31', '2018-05-05 14:56:31', '', 0, 'http://localhost/KiitMun18/?post_type=committee&#038;p=289', 0, 'committee', '', 0),
(290, 1, '2018-05-05 14:50:56', '2018-05-05 14:50:56', '', 'United Nations Social, Humanitarian and Cultural Committee ( SOCHUM )', '', 'publish', 'closed', 'closed', '', 'united-nations-general-assembly-sochum', '', '', '2018-05-05 14:56:25', '2018-05-05 14:56:25', '', 0, 'http://localhost/KiitMun18/?post_type=committee&#038;p=290', 0, 'committee', '', 0),
(291, 1, '2018-05-05 14:51:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-05 14:51:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/KiitMun18/?post_type=committee&p=291', 0, 'committee', '', 0),
(292, 1, '2018-05-05 14:52:39', '2018-05-05 14:52:39', '', 'United Nations Special Political and Decolonization Committee ( SPECPOL )', '', 'publish', 'closed', 'closed', '', 'united-nations-special-political-and-decolonization-committee-specpol', '', '', '2018-05-05 14:55:55', '2018-05-05 14:55:55', '', 0, 'http://localhost/KiitMun18/?post_type=committee&#038;p=292', 0, 'committee', '', 0),
(293, 1, '2018-05-05 14:53:28', '2018-05-05 14:53:28', '', 'United Nations Disarmament and International Security Committee ( DISEC )', '', 'publish', 'closed', 'closed', '', 'united-nations-disarmament-and-international-security-committee-disec', '', '', '2018-05-05 14:55:32', '2018-05-05 14:55:32', '', 0, 'http://localhost/KiitMun18/?post_type=committee&#038;p=293', 0, 'committee', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Home Page Contents', 'home-page-contents', 0),
(3, 'Home Page Slider', 'home-page-slider', 0),
(4, 'Home Page Second Section Details', 'home-page-second-section-details', 0),
(5, 'Home Page Founder\'s Mesage', 'home-page-founders-mesage', 0),
(6, 'Primary Menu', 'primary-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(34, 1, 0),
(248, 3, 0),
(250, 3, 0),
(252, 3, 0),
(254, 3, 0),
(260, 4, 0),
(263, 5, 0),
(273, 6, 0),
(274, 6, 0),
(275, 6, 0),
(276, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 2, 4),
(4, 4, 'category', '', 2, 1),
(5, 5, 'category', '', 2, 1),
(6, 6, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'sagnikpaul28'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"5fb5cc4c13eeecb77bd158698d87a596741b1ff06e7a9221e46e1041cb8f3ff1\";a:4:{s:10:\"expiration\";i:1525733111;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1525560311;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:23:\"add-post-type-committee\";i:1;s:21:\"add-post-type-country\";i:2;s:12:\"add-post_tag\";}'),
(21, 1, 'meta-box-order_committee', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:22:\"slugdiv,countries_meta\";s:8:\"advanced\";s:0:\"\";}'),
(22, 1, 'screen_layout_committee', '2'),
(23, 1, 'wp_user-settings', 'libraryContent=browse'),
(24, 1, 'wp_user-settings-time', '1525196895'),
(25, 1, 'closedpostboxes_post', 'a:0:{}'),
(26, 1, 'metaboxhidden_post', 'a:4:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:9:\"authordiv\";}'),
(27, 1, 'nav_menu_recently_edited', '6');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'sagnikpaul28', '$P$BPQ.2UVksfpC3B1S9SeIUgU5eyOoc51', 'sagnikpaul28', 'sagnikpaul2882@gmail.com', '', '2018-04-21 13:39:50', '', 0, 'sagnikpaul28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration_double_delegation`
--
ALTER TABLE `registration_double_delegation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration_form`
--
ALTER TABLE `registration_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration_ip`
--
ALTER TABLE `registration_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration_single_delegation`
--
ALTER TABLE `registration_single_delegation`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- AUTO_INCREMENT for table `registration_double_delegation`
--
ALTER TABLE `registration_double_delegation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `registration_form`
--
ALTER TABLE `registration_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `registration_ip`
--
ALTER TABLE `registration_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `registration_single_delegation`
--
ALTER TABLE `registration_single_delegation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=794;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
