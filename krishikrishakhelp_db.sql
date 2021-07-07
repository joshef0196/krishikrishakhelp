-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2021 at 11:55 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krishikrishakhelp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add Company Info', 7, 'add_companyinfo'),
(20, 'Can change Company Info', 7, 'change_companyinfo'),
(21, 'Can delete Company Info', 7, 'delete_companyinfo'),
(22, 'Can add Contact Us', 8, 'add_contact'),
(23, 'Can change Contact Us', 8, 'change_contact'),
(24, 'Can delete Contact Us', 8, 'delete_contact'),
(25, 'Can add News Letter', 9, 'add_subscribernewslatter'),
(26, 'Can change News Letter', 9, 'change_subscribernewslatter'),
(27, 'Can delete News Letter', 9, 'delete_subscribernewslatter'),
(28, 'Can add Blog Category', 10, 'add_blogcategory'),
(29, 'Can change Blog Category', 10, 'change_blogcategory'),
(30, 'Can delete Blog Category', 10, 'delete_blogcategory'),
(31, 'Can add Blog Comment', 11, 'add_blogcomment'),
(32, 'Can change Blog Comment', 11, 'change_blogcomment'),
(33, 'Can delete Blog Comment', 11, 'delete_blogcomment'),
(34, 'Can add Blog', 12, 'add_blogs'),
(35, 'Can change Blog', 12, 'change_blogs'),
(36, 'Can delete Blog', 12, 'delete_blogs'),
(37, 'Can add Review', 13, 'add_reviews'),
(38, 'Can change Review', 13, 'change_reviews'),
(39, 'Can delete Review', 13, 'delete_reviews'),
(40, 'Can add Our Team Member', 14, 'add_ourteammember'),
(41, 'Can change Our Team Member', 14, 'change_ourteammember'),
(42, 'Can delete Our Team Member', 14, 'delete_ourteammember'),
(43, 'Can add FAQ', 15, 'add_faqs'),
(44, 'Can change FAQ', 15, 'change_faqs'),
(45, 'Can delete FAQ', 15, 'delete_faqs'),
(46, 'Can add Slider Image', 16, 'add_sliderinfo'),
(47, 'Can change Slider Image', 16, 'change_sliderinfo'),
(48, 'Can delete Slider Image', 16, 'delete_sliderinfo'),
(49, 'Can add Customer Problem', 17, 'add_customerproblem'),
(50, 'Can change Customer Problem', 17, 'change_customerproblem'),
(51, 'Can delete Customer Problem', 17, 'delete_customerproblem'),
(52, 'Can add Category', 18, 'add_category'),
(53, 'Can change Category', 18, 'change_category'),
(54, 'Can delete Category', 18, 'delete_category'),
(55, 'Can add Service', 19, 'add_ourservice'),
(56, 'Can change Service', 19, 'change_ourservice'),
(57, 'Can delete Service', 19, 'delete_ourservice'),
(58, 'Can add Category', 20, 'add_subcategory'),
(59, 'Can change Category', 20, 'change_subcategory'),
(60, 'Can delete Category', 20, 'delete_subcategory'),
(61, 'Can add Agricultural Advice', 21, 'add_agriculturaladvice'),
(62, 'Can change Agricultural Advice', 21, 'change_agriculturaladvice'),
(63, 'Can delete Agricultural Advice', 21, 'delete_agriculturaladvice'),
(64, 'Can add Quick Solve', 22, 'add_quicksolve'),
(65, 'Can change Quick Solve', 22, 'change_quicksolve'),
(66, 'Can delete Quick Solve', 22, 'delete_quicksolve'),
(67, 'Can add Farmer Account', 23, 'add_farmeraccount'),
(68, 'Can change Farmer Account', 23, 'change_farmeraccount'),
(69, 'Can delete Farmer Account', 23, 'delete_farmeraccount'),
(70, 'Can add Add To Cart', 24, 'add_addtocart'),
(71, 'Can change Add To Cart', 24, 'change_addtocart'),
(72, 'Can delete Add To Cart', 24, 'delete_addtocart'),
(73, 'Can add Product', 25, 'add_product'),
(74, 'Can change Product', 25, 'change_product'),
(75, 'Can delete Product', 25, 'delete_product'),
(76, 'Can add Order List', 26, 'add_customarorderlist'),
(77, 'Can change Order List', 26, 'change_customarorderlist'),
(78, 'Can delete Order List', 26, 'delete_customarorderlist'),
(79, 'Can add Customar Account', 27, 'add_customaraccount'),
(80, 'Can change Customar Account', 27, 'change_customaraccount'),
(81, 'Can delete Customar Account', 27, 'delete_customaraccount'),
(82, 'Can add district', 28, 'add_districtcat'),
(83, 'Can change district', 28, 'change_districtcat'),
(84, 'Can delete district', 28, 'delete_districtcat'),
(85, 'Can add Important Link', 29, 'add_importantlink'),
(86, 'Can change Important Link', 29, 'change_importantlink'),
(87, 'Can delete Important Link', 29, 'delete_importantlink'),
(88, 'Can add Problem Category', 30, 'add_problemcategory'),
(89, 'Can change Problem Category', 30, 'change_problemcategory'),
(90, 'Can delete Problem Category', 30, 'delete_problemcategory'),
(91, 'Can add Tree Name', 31, 'add_treename'),
(92, 'Can change Tree Name', 31, 'change_treename'),
(93, 'Can delete Tree Name', 31, 'delete_treename'),
(94, 'Can add Tree Age', 32, 'add_treeage'),
(95, 'Can change Tree Age', 32, 'change_treeage'),
(96, 'Can delete Tree Age', 32, 'delete_treeage'),
(97, 'Can add Search Pesticides', 33, 'add_searchpesticides'),
(98, 'Can change Search Pesticides', 33, 'change_searchpesticides'),
(99, 'Can delete Search Pesticides', 33, 'delete_searchpesticides');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$u8SwQfPXopRA$m1igWTXz+ca00e6TTJGiVgDI2dj/nNGtJ0OD6TKgc6M=', '2021-04-27 10:04:03.151926', 1, 'admin', '', '', '', 1, 1, '2020-04-27 03:40:05.299174');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-05-01 15:39:18.340457', '1', 'চাষাবাদ', 1, '[{"added": {}}]', 10, 1),
(2, '2020-05-01 15:39:33.209179', '2', 'পোকামাকড়', 1, '[{"added": {}}]', 10, 1),
(3, '2020-05-01 15:39:45.092840', '3', 'ফসলের পুষ্টি', 1, '[{"added": {}}]', 10, 1),
(4, '2020-05-01 15:40:08.427489', '4', 'কৃষি উপকরন', 1, '[{"added": {}}]', 10, 1),
(5, '2020-05-01 15:43:17.464679', '1', 'Rising cattle supplies see beef export lifted', 1, '[{"added": {}}]', 12, 1),
(6, '2020-05-01 15:47:46.410620', '2', 'Why innovation is key to maintaining our export market share', 1, '[{"added": {}}]', 12, 1),
(7, '2020-05-01 15:58:40.035696', '2', 'Why innovation is key to maintaining our export market share', 2, '[{"changed": {"fields": ["thumbnail_image"]}}]', 12, 1),
(8, '2020-05-01 15:59:11.203389', '1', 'Rising cattle supplies see beef export lifted', 2, '[{"changed": {"fields": ["thumbnail_image"]}}]', 12, 1),
(9, '2020-05-11 14:23:55.046530', '1', 'Krishi Krishak Help', 1, '[{"added": {}}]', 7, 1),
(10, '2020-05-11 14:36:00.604546', '1', 'Krishi Krishak Help', 2, '[{"changed": {"fields": ["mobile1", "mobile2"]}}]', 7, 1),
(11, '2020-05-11 14:52:53.879122', '1', 'Krishi Krishak Help', 2, '[{"changed": {"fields": ["facebook", "twitter", "pinterest"]}}]', 7, 1),
(12, '2020-05-11 14:53:34.758093', '1', 'Krishi Krishak Help', 2, '[{"changed": {"fields": ["youtube"]}}]', 7, 1),
(13, '2020-05-11 14:54:12.715836', '1', 'Krishi Krishak Help', 2, '[]', 7, 1),
(14, '2020-05-11 15:29:53.138524', '1', 'Rakib Khan', 1, '[{"added": {}}]', 14, 1),
(15, '2020-05-11 15:31:44.553517', '2', 'Ritu Moni', 1, '[{"added": {}}]', 14, 1),
(16, '2020-05-11 15:55:19.943101', '1', 'Rakib Khan', 2, '[{"changed": {"fields": ["member_designation"]}}]', 14, 1),
(17, '2020-05-11 15:55:39.984108', '2', 'Ritu Moni', 2, '[{"changed": {"fields": ["member_designation"]}}]', 14, 1),
(18, '2020-05-17 14:25:37.008808', '1', 'Rakib khan', 1, '[{"added": {}}]', 13, 1),
(19, '2020-05-17 14:26:28.811794', '2', 'Ritu Moni', 1, '[{"added": {}}]', 13, 1),
(20, '2020-05-17 15:13:08.881845', '1', 'Krishi Krishak Help', 2, '[{"changed": {"fields": ["glg_map"]}}]', 7, 1),
(21, '2020-05-17 15:15:02.702743', '1', 'Krishi Krishak Help', 2, '[{"changed": {"fields": ["glg_map"]}}]', 7, 1),
(22, '2020-05-22 14:51:39.473266', '1', 'Are organic products of the same quality as other food and drink ?', 1, '[{"added": {}}]', 15, 1),
(23, '2020-05-22 14:52:23.085479', '2', 'Do organic products taste different from other food and drink ?', 1, '[{"added": {}}]', 15, 1),
(24, '2020-05-22 14:52:52.829585', '3', 'Are all of your poultry, meat and fish products raised humanely ?', 1, '[{"added": {}}]', 15, 1),
(25, '2020-05-22 14:53:25.375794', '4', 'Why to choose this site?', 1, '[{"added": {}}]', 15, 1),
(26, '2020-08-20 13:33:36.562578', '1', 'The hearth of the farm is the true center of our universe.', 1, '[{"added": {}}]', 16, 1),
(27, '2020-08-20 13:35:02.737614', '2', 'The hearth of the farm is the true center of our universe.', 1, '[{"added": {}}]', 16, 1),
(28, '2020-08-20 13:35:28.253612', '3', 'The hearth of the', 1, '[{"added": {}}]', 16, 1),
(29, '2020-08-23 10:35:33.405899', '3', 'কলা', 2, '[{"changed": {"fields": ["slider_name", "title", "slider_images"]}}]', 16, 1),
(30, '2020-08-23 10:46:08.132221', '3', 'কলা', 2, '[{"changed": {"fields": ["title", "description"]}}]', 16, 1),
(31, '2020-08-23 10:46:55.373472', '2', 'আনারস', 2, '[{"changed": {"fields": ["title", "description", "slider_images"]}}]', 16, 1),
(32, '2020-08-23 10:47:40.084661', '1', 'পেঁয়ারা', 2, '[{"changed": {"fields": ["title", "description", "slider_images"]}}]', 16, 1),
(33, '2020-08-23 10:50:59.793971', '3', 'কলা', 2, '[{"changed": {"fields": ["slider_name", "title"]}}]', 16, 1),
(34, '2020-08-23 10:52:39.020157', '2', 'আনারস', 2, '[{"changed": {"fields": ["slider_name", "title"]}}]', 16, 1),
(35, '2020-08-23 10:52:56.282895', '1', 'পেঁয়ারা', 2, '[{"changed": {"fields": ["slider_name", "title"]}}]', 16, 1),
(36, '2020-08-23 10:53:53.302168', '3', 'কলা', 2, '[{"changed": {"fields": ["slider_images"]}}]', 16, 1),
(37, '2020-08-23 10:54:16.122396', '3', 'কলা', 2, '[{"changed": {"fields": ["slider_images"]}}]', 16, 1),
(38, '2020-08-23 10:54:39.231806', '2', 'আনারস', 2, '[{"changed": {"fields": ["slider_images"]}}]', 16, 1),
(39, '2020-08-23 10:54:54.511853', '1', 'পেঁয়ারা', 2, '[{"changed": {"fields": ["slider_images"]}}]', 16, 1),
(40, '2020-08-23 10:55:28.614447', '1', 'গম', 2, '[{"changed": {"fields": ["slider_name"]}}]', 16, 1),
(41, '2020-08-23 10:55:49.206820', '3', 'কপি', 2, '[{"changed": {"fields": ["slider_name"]}}]', 16, 1),
(42, '2020-08-23 10:57:35.834422', '2', 'আঙ্গুর', 2, '[{"changed": {"fields": ["slider_name"]}}]', 16, 1),
(43, '2020-08-23 11:51:16.882969', '3', 'ফুলকপি', 2, '[{"changed": {"fields": ["slider_name"]}}]', 16, 1),
(44, '2020-08-23 12:21:07.238941', '2', 'আঙ্গুর', 2, '[{"changed": {"fields": ["description"]}}]', 16, 1),
(45, '2020-08-23 12:21:24.646846', '2', 'আঙ্গুর', 2, '[{"changed": {"fields": ["description"]}}]', 16, 1),
(46, '2020-08-24 05:22:21.035963', '1', 'বাংলাদেশ কৃষি তথ্য', 1, '[{"added": {}}]', 18, 1),
(47, '2020-08-24 05:22:31.905715', '2', 'ফসল সমূহ', 1, '[{"added": {}}]', 18, 1),
(48, '2020-08-24 05:22:42.885633', '3', 'চাষাবাদ', 1, '[{"added": {}}]', 18, 1),
(49, '2020-08-24 05:22:52.833768', '4', 'পোকামাকড়', 1, '[{"added": {}}]', 18, 1),
(50, '2020-08-24 05:23:03.614659', '5', 'কৃষি উপকরন', 1, '[{"added": {}}]', 18, 1),
(51, '2020-08-24 05:23:13.555570', '6', 'ফসলের পুষ্টি', 1, '[{"added": {}}]', 18, 1),
(52, '2020-08-24 05:23:25.562547', '7', 'কৃষি খবর', 1, '[{"added": {}}]', 18, 1),
(53, '2020-08-24 05:23:44.514708', '7', 'কৃষি খবর', 3, '', 18, 1),
(54, '2020-08-24 05:24:15.304588', '1', 'বাংলাদেশের কৃষি', 1, '[{"added": {}}]', 20, 1),
(55, '2020-08-24 05:24:24.135279', '2', 'মাটি', 1, '[{"added": {}}]', 20, 1),
(56, '2020-08-24 05:24:33.960806', '3', 'অঞ্চল', 1, '[{"added": {}}]', 20, 1),
(57, '2020-08-24 05:24:43.407644', '4', 'বাংলাদেশের চাষকৃত ফসল সমূহ', 1, '[{"added": {}}]', 20, 1),
(58, '2020-08-24 05:24:54.749592', '5', 'ফসলের জাত', 1, '[{"added": {}}]', 20, 1),
(59, '2020-08-24 05:25:04.982337', '6', 'ফসলের ফলন', 1, '[{"added": {}}]', 20, 1),
(60, '2020-08-24 05:25:18.642106', '7', 'ফসল চাষাবাদের সময়', 1, '[{"added": {}}]', 20, 1),
(61, '2020-08-24 05:25:27.663229', '8', 'চাষ করার প্রক্রিয়া', 1, '[{"added": {}}]', 20, 1),
(62, '2020-08-24 05:25:36.846552', '9', 'চাষাবাদের সময় করনীয় বিষয়বলী', 1, '[{"added": {}}]', 20, 1),
(63, '2020-08-24 05:25:46.298314', '10', 'উপকারী পোকা ও অপকারী পোকা সমূহ', 1, '[{"added": {}}]', 20, 1),
(64, '2020-08-24 05:25:55.195411', '11', 'পোকার জিবন চক্র', 1, '[{"added": {}}]', 20, 1),
(65, '2020-08-24 05:26:04.400538', '12', 'কৃষি উপকরন সমূহ', 1, '[{"added": {}}]', 20, 1),
(66, '2020-08-24 05:26:14.144386', '13', 'উপকরনের মান ও ব্যবহার', 1, '[{"added": {}}]', 20, 1),
(67, '2020-08-24 05:26:25.698817', '14', 'ফসলের পুষ্টি সমূহ', 1, '[{"added": {}}]', 20, 1),
(68, '2020-08-24 05:26:35.906357', '15', 'অভাব জনিত লক্ষন', 1, '[{"added": {}}]', 20, 1),
(69, '2020-08-24 05:26:45.897325', '16', 'ব্যবহার', 1, '[{"added": {}}]', 20, 1),
(70, '2020-08-24 05:32:27.489257', '1', 'কৃষিতে বাংলাদেশের সাফল্য', 1, '[{"added": {}}]', 19, 1),
(71, '2020-08-24 06:34:54.946260', '1', 'বাংলাদেশ কৃষি তথ্য', 2, '[]', 18, 1),
(72, '2020-08-24 06:36:05.554712', '2', 'কৃষিতে বাংলাদেশের সাফল্য', 1, '[{"added": {}}]', 19, 1),
(73, '2020-08-24 06:36:17.614337', '3', 'joy', 1, '[{"added": {}}]', 19, 1),
(74, '2020-08-24 06:36:29.237798', '4', 'sdfsdfsdfafwerere', 1, '[{"added": {}}]', 19, 1),
(75, '2020-08-24 06:36:46.898854', '5', 'fsdfsdfdsfdsfdsf', 1, '[{"added": {}}]', 19, 1),
(76, '2020-08-24 06:38:26.848463', '6', 'ফসলের পুষ্টি', 2, '[{"changed": {"fields": ["ordering"]}}]', 18, 1),
(77, '2020-08-24 06:38:49.110416', '6', 'ফসলের পুষ্টি', 2, '[{"changed": {"fields": ["ordering"]}}]', 18, 1),
(78, '2020-08-24 06:38:57.922118', '4', 'পোকামাকড়', 2, '[{"changed": {"fields": ["ordering"]}}]', 18, 1),
(79, '2020-08-24 06:40:25.422442', '6', 'dsfd', 1, '[{"added": {}}]', 19, 1),
(80, '2020-08-24 06:42:16.959103', '3', 'ফুলকপির চাষ পদ্ধতি ও জাতসমুহ। পোকামাকড় ও রোগ বালাই দমন ব্যবস্থাপনা', 2, '[{"changed": {"fields": ["slider_name"]}}]', 16, 1),
(81, '2020-08-24 06:42:39.161361', '3', 'ফুলকপির চাষ পদ্ধতি ও জাতসমুহ।', 2, '[{"changed": {"fields": ["slider_name"]}}]', 16, 1),
(82, '2020-08-24 06:43:15.824010', '2', 'আঙ্গুর চাষ পদ্ধতি ও জাতসমুহ।', 2, '[{"changed": {"fields": ["slider_name"]}}]', 16, 1),
(83, '2020-08-24 06:43:22.637291', '1', 'গম চাষ পদ্ধতি ও জাতসমুহ।', 2, '[{"changed": {"fields": ["slider_name"]}}]', 16, 1),
(84, '2020-08-24 07:00:49.110739', '3', 'ফুলকপির চাষ পদ্ধতি ও জাতসমুহ।', 2, '[{"changed": {"fields": ["description"]}}]', 16, 1),
(85, '2020-08-24 07:02:24.590595', '1', 'কৃষিতে বাংলাদেশের সাফল্য', 2, '[{"changed": {"fields": ["service_detail"]}}]', 19, 1),
(86, '2020-08-24 07:03:26.519551', '1', 'কৃষিতে বাংলাদেশের সাফল্য', 2, '[]', 19, 1),
(87, '2020-08-24 07:04:05.333900', '1', 'কৃষিতে বাংলাদেশের সাফল্য', 2, '[{"changed": {"fields": ["service_detail"]}}]', 19, 1),
(88, '2020-08-24 07:04:28.927430', '1', 'কৃষিতে বাংলাদেশের সাফল্য', 2, '[{"changed": {"fields": ["service_detail"]}}]', 19, 1),
(89, '2020-08-24 07:06:18.798413', '1', 'কৃষিতে বাংলাদেশের সাফল্য', 2, '[{"changed": {"fields": ["service_detail"]}}]', 19, 1),
(90, '2020-08-24 07:48:58.368646', '3', 'ফুলকপির চাষ পদ্ধতি ও জাতসমুহ', 2, '[{"changed": {"fields": ["slider_name"]}}]', 16, 1),
(91, '2020-08-24 07:49:04.199733', '2', 'আঙ্গুর চাষ পদ্ধতি ও জাতসমুহ', 2, '[{"changed": {"fields": ["slider_name"]}}]', 16, 1),
(92, '2020-08-24 07:49:09.247057', '1', 'গম চাষ পদ্ধতি ও জাতসমুহ', 2, '[{"changed": {"fields": ["slider_name"]}}]', 16, 1),
(93, '2020-08-24 10:06:46.302319', '1', 'গম ফসলের ক্ষতিকর ব্লাস্ট রোগের আক্রমন ও দমন', 1, '[{"added": {}}]', 21, 1),
(94, '2020-08-24 10:10:39.613147', '2', 'পেয়ারা গাছে অসময়ে ফলধারণের পদ্ধতিগুলো', 1, '[{"added": {}}]', 21, 1),
(95, '2020-08-24 10:13:06.246179', '3', 'গরু মোটাতাজাকরণ পদ্ধতি', 1, '[{"added": {}}]', 21, 1),
(96, '2020-08-24 10:15:51.718001', '4', 'টমেটো চাষ করার পদ্ধতি', 1, '[{"added": {}}]', 21, 1),
(97, '2020-08-24 10:24:39.656535', '5', 'আঙ্গুরের  চাষ পদ্ধতি এবং গাছের পরিচর্যা', 1, '[{"added": {}}]', 21, 1),
(98, '2020-08-24 10:42:14.372563', '5', 'আঙ্গুরের  চাষ পদ্ধতি এবং গাছের পরিচর্যা', 2, '[{"changed": {"fields": ["image"]}}]', 21, 1),
(99, '2020-08-24 10:44:49.459977', '5', 'আঙ্গুরের  চাষ পদ্ধতি এবং গাছের পরিচর্যা', 2, '[{"changed": {"fields": ["detail"]}}]', 21, 1),
(100, '2020-08-24 10:45:14.419848', '4', 'টমেটো চাষ করার পদ্ধতি এবং গাছের পরিচর্যা', 2, '[{"changed": {"fields": ["title"]}}]', 21, 1),
(101, '2020-08-24 10:52:03.058541', '6', 'ভুট্টা উৎপাদন কৌশল', 1, '[{"added": {}}]', 21, 1),
(102, '2020-08-24 14:54:33.502063', '9', 'fg', 3, '', 17, 1),
(103, '2020-08-24 14:54:33.590007', '8', 'g', 3, '', 17, 1),
(104, '2020-08-24 14:54:33.811881', '7', 'g', 3, '', 17, 1),
(105, '2020-08-24 15:12:26.079091', '6', 'MOHAMMAD AL EMRAN', 2, '[{"changed": {"fields": ["title", "problem", "solve"]}}]', 17, 1),
(106, '2020-08-24 15:21:28.927443', '5', 'Joshef Hossain Pappy', 2, '[{"changed": {"fields": ["title", "problem", "solve"]}}]', 17, 1),
(107, '2020-08-24 15:29:23.590863', '6', 'MOHAMMAD AL EMRAN', 2, '[]', 17, 1),
(108, '2020-08-24 15:30:33.672307', '5', 'Joshef Hossain Pappy', 2, '[]', 17, 1),
(109, '2020-08-24 15:32:54.455272', '4', 'Joshef Hossain Pappy', 2, '[{"changed": {"fields": ["problem", "solve"]}}]', 17, 1),
(110, '2020-08-24 15:33:24.409659', '5', 'Joshef Hossain Pappy', 3, '', 17, 1),
(111, '2020-08-24 15:34:43.629099', '3', 'Joshef ', 3, '', 17, 1),
(112, '2020-08-24 15:34:43.707052', '2', 'Joshef ', 3, '', 17, 1),
(113, '2020-08-24 15:34:43.764020', '1', 'Joshef Hossain', 3, '', 17, 1),
(114, '2020-08-24 15:42:56.621135', '10', 'A Kader', 1, '[{"added": {}}]', 17, 1),
(115, '2020-08-24 15:43:18.259562', '10', 'A Kader', 3, '', 17, 1),
(116, '2020-08-24 15:44:42.585653', '11', 'A Kader', 2, '[{"changed": {"fields": ["problem", "solve_message", "slove"]}}]', 17, 1),
(117, '2020-08-24 16:07:11.949254', '4', 'Joshef Hossain Pappy', 2, '[{"changed": {"fields": ["address", "title", "problem", "solve_message"]}}]', 17, 1),
(118, '2020-08-24 16:31:31.907352', '4', 'Joshef Hossain Pappy', 2, '[{"changed": {"fields": ["solve_message"]}}]', 17, 1),
(119, '2020-08-24 16:32:10.109392', '4', 'Joshef Hossain Pappy', 2, '[]', 17, 1),
(120, '2020-08-24 16:33:59.210429', '4', 'Joshef Hossain Pappy', 2, '[]', 17, 1),
(121, '2020-08-24 16:35:33.068674', '4', 'Joshef Hossain Pappy', 3, '', 17, 1),
(122, '2020-10-06 11:35:43.034316', '5', 'Joshef Hossain', 3, '', 23, 1),
(123, '2020-10-06 11:35:43.149835', '4', 'Gavin Blackburn', 3, '', 23, 1),
(124, '2020-10-06 11:35:43.180990', '3', 'MacKenzie Decker', 3, '', 23, 1),
(125, '2020-10-06 11:35:43.195981', '2', 'Elmo Townsend', 3, '', 23, 1),
(126, '2020-10-06 11:35:43.217965', '1', 'Gavin Butler', 3, '', 23, 1),
(127, '2020-10-06 13:41:51.620827', '7', 'Gareth Compton', 2, '[{"changed": {"fields": ["product_image", "description"]}}]', 25, 1),
(128, '2020-10-06 13:44:51.206293', '9', 'Wynter Barton', 3, '', 25, 1),
(129, '2020-10-06 13:44:51.262254', '8', 'Wynter Barton', 3, '', 25, 1),
(130, '2020-10-06 13:44:51.278247', '7', 'Gareth Compton', 3, '', 25, 1),
(131, '2020-10-06 13:44:51.300234', '6', 'Jordan Burke', 3, '', 25, 1),
(132, '2020-10-06 13:44:51.323221', '5', 'Jordan Burke', 3, '', 25, 1),
(133, '2020-10-06 13:44:51.345208', '4', 'Jordan Burke', 3, '', 25, 1),
(134, '2020-10-06 13:44:51.390182', '3', 'Jordan Burke', 3, '', 25, 1),
(135, '2020-10-06 13:44:51.422164', '2', 'Jordan Burke', 3, '', 25, 1),
(136, '2020-10-06 13:44:51.451148', '1', 'Anastasia Flores', 3, '', 25, 1),
(137, '2020-10-06 13:46:12.607381', '11', 'Ramona Fulton', 3, '', 25, 1),
(138, '2020-10-06 13:46:12.692331', '10', 'Amethyst Hyde', 3, '', 25, 1),
(139, '2020-10-06 13:51:07.498864', '13', 'Blossom Trujillo', 3, '', 25, 1),
(140, '2020-10-06 13:51:07.592760', '12', 'Blossom Trujillo', 3, '', 25, 1),
(141, '2020-10-06 13:51:14.433308', '14', ' মধু ', 3, '', 25, 1),
(142, '2020-10-06 13:53:21.236692', '16', ' মধু ', 3, '', 25, 1),
(143, '2020-10-06 14:17:25.911305', '30', 'আপেল ', 3, '', 25, 1),
(144, '2020-10-06 14:28:20.686018', '29', 'আপেল', 2, '[{"changed": {"fields": ["product_name", "description", "status"]}}]', 25, 1),
(145, '2020-10-06 14:34:53.795599', '28', 'স্টবেরি', 2, '[{"changed": {"fields": ["product_name", "description", "status"]}}]', 25, 1),
(146, '2020-10-06 16:00:12.508834', '27', 'স্টবেরি', 2, '[{"changed": {"fields": ["product_name", "description", "status"]}}]', 25, 1),
(147, '2020-10-06 16:53:23.735344', '27', 'স্টবেরি', 2, '[{"changed": {"fields": ["new"]}}]', 25, 1),
(148, '2020-10-07 06:59:22.499311', '29', 'আপেল', 2, '[{"changed": {"fields": ["total_sale"]}}]', 25, 1),
(149, '2020-10-07 06:59:32.235493', '28', 'স্টবেরি', 2, '[{"changed": {"fields": ["total_sale"]}}]', 25, 1),
(150, '2020-10-07 07:15:09.494534', '8', 'Virginia Carson', 3, '', 26, 1),
(151, '2020-10-07 07:15:09.594476', '7', 'Violet Doyle', 3, '', 26, 1),
(152, '2020-10-07 07:15:09.617464', '6', 'Callie Fuller', 3, '', 26, 1),
(153, '2020-10-07 07:15:09.639452', '5', 'Callie Fuller', 3, '', 26, 1),
(154, '2020-10-07 07:15:09.662441', '4', 'Callie Fuller', 3, '', 26, 1),
(155, '2020-10-07 08:10:12.675746', '11', 'Barclay Thornton', 2, '[{"changed": {"fields": ["farmer"]}}]', 26, 1),
(156, '2020-10-07 08:10:25.057711', '10', 'Alana Harvey', 2, '[{"changed": {"fields": ["farmer"]}}]', 26, 1),
(157, '2020-10-07 08:10:35.483523', '9', 'Alana Harvey', 2, '[{"changed": {"fields": ["farmer"]}}]', 26, 1),
(158, '2020-10-07 08:22:06.826292', '7', 'Bappy', 2, '[{"changed": {"fields": ["name"]}}]', 23, 1),
(159, '2020-10-07 08:24:14.102653', '11', 'Barclay Thornton', 2, '[{"changed": {"fields": ["farmer"]}}]', 26, 1),
(160, '2020-10-07 09:48:51.737145', '11', 'Barclay Thornton', 2, '[{"changed": {"fields": ["delivery_date"]}}]', 26, 1),
(161, '2020-10-07 09:48:58.166675', '10', 'Alana Harvey', 2, '[{"changed": {"fields": ["delivery_date"]}}]', 26, 1),
(162, '2020-10-07 09:49:04.687953', '9', 'Alana Harvey', 2, '[{"changed": {"fields": ["delivery_date"]}}]', 26, 1),
(163, '2020-10-07 15:33:34.218358', '17', 'Joshef', 1, '[{"added": {}}]', 20, 1),
(164, '2020-10-07 15:33:50.720428', '7', 'Enim duis vel ipsa soluta est aut qui', 1, '[{"added": {}}]', 19, 1),
(165, '2020-10-07 15:33:58.215210', '7', 'Enim duis vel ipsa soluta est aut qui', 2, '[{"changed": {"fields": ["status"]}}]', 19, 1),
(166, '2020-10-16 08:42:50.036060', '18', 'Joshef', 1, '[{"added": {}}]', 20, 1),
(167, '2020-10-16 08:43:06.796556', '18', 'Hossain', 2, '[{"changed": {"fields": ["sub_category_name"]}}]', 20, 1),
(168, '2020-10-16 08:43:22.864641', '8', 'Qui ut sunt ratione in nulla mollitia in nulla rerum eu dicta tempore', 1, '[{"added": {}}]', 19, 1),
(169, '2020-10-16 08:44:03.988397', '19', 'Hossain', 1, '[{"added": {}}]', 20, 1),
(170, '2020-10-16 08:44:14.246358', '9', 'dsfsdfsdfdsfdsf', 1, '[{"added": {}}]', 19, 1),
(171, '2020-10-16 09:03:13.907240', '20', 'fgfdgfdgdfgfdg', 1, '[{"added": {}}]', 20, 1),
(172, '2020-10-16 09:03:25.318853', '10', 'Suscipit praesentium repellendus Qui culpa voluptate error et odit magnam', 1, '[{"added": {}}]', 19, 1),
(173, '2020-10-16 09:04:16.152100', '20', 'fgfdgfdgdfgfdg', 2, '[]', 20, 1),
(174, '2020-10-16 09:04:37.615912', '20', 'fgfdgfdgdfgfdg', 2, '[]', 20, 1),
(175, '2020-10-16 09:04:41.670205', '10', 'Suscipit praesentium repellendus Qui culpa voluptate error et odit magnam', 2, '[{"changed": {"fields": ["status"]}}]', 19, 1),
(176, '2020-10-16 09:05:18.692993', '1', 'বাংলাদেশ কৃষি তথ্য', 2, '[]', 18, 1),
(177, '2020-10-16 09:05:33.576414', '20', 'fgfdgfdgdfgfdg', 2, '[{"changed": {"fields": ["category"]}}]', 20, 1),
(178, '2020-10-16 09:05:35.700266', '10', 'Suscipit praesentium repellendus Qui culpa voluptate error et odit magnam', 2, '[]', 19, 1),
(179, '2020-10-16 10:07:49.977181', '1', 'What is your name', 1, '[{"added": {}}]', 22, 1),
(180, '2020-10-16 10:08:40.500704', '2', 'what is your gf name?', 1, '[{"added": {}}]', 22, 1),
(181, '2020-10-16 11:34:24.785512', '10', 'Suscipit praesentium repellendus Qui culpa voluptate error et odit magnam', 2, '[{"changed": {"fields": ["service_detail"]}}]', 19, 1),
(182, '2020-10-16 12:38:16.913679', '4', 'পোকামাকড়', 2, '[{"changed": {"fields": ["ordering"]}}]', 18, 1),
(183, '2020-10-16 12:38:27.985835', '4', 'পোকামাকড়', 2, '[{"changed": {"fields": ["ordering"]}}]', 18, 1),
(184, '2020-10-16 12:38:33.291089', '5', 'কৃষি উপকরন', 2, '[{"changed": {"fields": ["ordering"]}}]', 18, 1),
(185, '2020-10-16 12:38:37.819142', '6', 'ফসলের পুষ্টি', 2, '[{"changed": {"fields": ["ordering"]}}]', 18, 1),
(186, '2020-10-16 12:40:40.214164', '5', 'কৃষি উপকরন', 2, '[{"changed": {"fields": ["ordering"]}}]', 18, 1),
(187, '2020-10-16 12:43:37.184570', '1', 'বাংলাদেশ কৃষি তথ্য', 2, '[{"changed": {"fields": ["ordering"]}}]', 18, 1),
(188, '2020-10-16 12:44:49.829262', '4', 'পোকামাকড়', 2, '[{"changed": {"fields": ["ordering"]}}]', 18, 1),
(189, '2020-10-19 11:03:40.735315', '1', 'Krishi Krishak Help', 2, '[{"changed": {"fields": ["news"]}}]', 7, 1),
(190, '2020-10-19 11:32:58.262007', '2', 'কৃষিতে বাংলাদেশের সাফল্য', 2, '[{"changed": {"fields": ["service_detail"]}}]', 19, 1),
(191, '2020-10-19 12:46:05.427913', '2', 'কামরাঙ্গার বিছা পােকা দমন পদ্ধতি', 2, '[{"changed": {"fields": ["question", "answer"]}}]', 22, 1),
(192, '2020-10-19 12:46:54.049918', '1', 'ফুলকপির কার্ড পচা রােগ ?', 2, '[{"changed": {"fields": ["question", "answer", "ordering"]}}]', 22, 1),
(193, '2020-10-19 12:47:32.558690', '2', 'কামরাঙ্গার বিছা পােকা দমন পদ্ধতি', 2, '[{"changed": {"fields": ["ordering"]}}]', 22, 1),
(194, '2020-10-19 12:51:32.361902', '3', 'মাছ চাষে বিভিন্ন সমস্যা ?', 1, '[{"added": {}}]', 22, 1),
(195, '2020-10-19 12:52:46.531878', '4', 'পুকুরে হাঁস পালন পদ্ধতি বিস্তারিত ??', 1, '[{"added": {}}]', 22, 1),
(196, '2020-10-19 12:53:22.367682', '5', 'পাঙ্গাস মাছের চাষ পদ্ধতি ?', 1, '[{"added": {}}]', 22, 1),
(197, '2020-10-19 17:33:46.698304', '5', 'পাঙ্গাস মাছের চাষ পদ্ধতি', 2, '[{"changed": {"fields": ["question"]}}]', 22, 1),
(198, '2020-10-19 18:37:59.377765', '1', 'ফুলকপির কার্ড পচা রােগ ?', 2, '[]', 22, 1),
(199, '2020-10-19 20:15:23.016800', '29', 'আপেল', 2, '[{"changed": {"fields": ["product_image"]}}]', 25, 1),
(200, '2020-10-19 20:42:03.144308', '29', 'আপেল', 2, '[{"changed": {"fields": ["thumb_image", "product_image2", "product_image3", "quantity"]}}]', 25, 1),
(201, '2020-10-19 20:42:22.998565', '28', 'স্টবেরি', 3, '', 25, 1),
(202, '2020-10-19 20:42:23.087843', '27', 'স্টবেরি', 3, '', 25, 1),
(203, '2020-10-19 20:42:23.132356', '26', ' স্টবেরি ', 3, '', 25, 1),
(204, '2020-10-19 20:51:19.357357', '29', 'আপেল', 2, '[]', 25, 1),
(205, '2020-10-19 20:54:02.391200', '7', 'Bappy khan', 2, '[{"changed": {"fields": ["name"]}}]', 23, 1),
(206, '2020-10-19 20:54:05.059268', '29', 'আপেল', 2, '[]', 25, 1),
(207, '2020-10-20 10:16:15.839011', '30', 'Nam voluptatem sit rerum iste maxime reprehenderit ut sapiente', 1, '[{"added": {}}]', 25, 1),
(208, '2020-10-20 10:35:15.839201', '25', 'স্টবেরি', 2, '[{"changed": {"fields": ["title", "thumb_image", "description"]}}]', 25, 1),
(209, '2020-10-20 10:47:30.897360', '30', 'Nam voluptatem sit rerum iste', 2, '[{"changed": {"fields": ["title"]}}]', 25, 1),
(210, '2020-10-20 10:49:45.509515', '25', 'স্টবেরি', 2, '[{"changed": {"fields": ["quantity"]}}]', 25, 1),
(211, '2020-10-20 15:41:23.717834', '25', 'স্টবেরি', 2, '[{"changed": {"fields": ["product_image2", "product_image3"]}}]', 25, 1),
(212, '2020-10-20 16:23:03.292960', '25', 'স্টবেরি', 2, '[{"changed": {"fields": ["product_image1", "product_image2"]}}]', 25, 1),
(213, '2020-10-20 16:23:45.268676', '29', 'আপেল', 2, '[{"changed": {"fields": ["product_image1", "product_image2", "product_image3"]}}]', 25, 1),
(214, '2020-10-20 16:24:01.937540', '30', 'Nam voluptatem sit rerum iste', 2, '[{"changed": {"fields": ["product_image1", "product_image2", "product_image3"]}}]', 25, 1),
(215, '2020-10-21 11:21:27.164771', '25', 'স্টবেরি', 2, '[{"changed": {"fields": ["new"]}}]', 25, 1),
(216, '2020-10-21 13:10:23.094424', '4', 'পুকুরে হাঁস পালন পদ্ধতি বিস্তারিত', 2, '[{"changed": {"fields": ["question"]}}]', 22, 1),
(217, '2020-10-21 13:10:47.967076', '3', 'মাছ চাষে বিভিন্ন সমস্যা', 2, '[{"changed": {"fields": ["question"]}}]', 22, 1),
(218, '2020-10-21 13:11:21.624964', '1', 'ফুলকপির কার্ড পচা রােগ', 2, '[{"changed": {"fields": ["question"]}}]', 22, 1),
(219, '2020-10-22 11:17:44.038903', '8', 'Lance Poole', 2, '[{"changed": {"fields": ["subject", "message"]}}]', 8, 1),
(220, '2020-10-22 11:18:43.489021', '6', 'Lance Poole', 3, '', 8, 1),
(221, '2020-10-22 11:18:43.662860', '5', 'Lance Poole', 3, '', 8, 1),
(222, '2020-10-22 11:18:43.688119', '4', 'Lance Poole', 3, '', 8, 1),
(223, '2020-10-22 11:19:31.940510', '7', 'Lance Poole', 3, '', 8, 1),
(224, '2020-10-22 11:19:32.022469', '3', 'Lance Poole', 3, '', 8, 1),
(225, '2020-10-22 11:19:32.044449', '2', 'Deborah Berger', 3, '', 8, 1),
(226, '2020-10-22 11:19:32.056444', '1', 'Autumn Hester', 3, '', 8, 1),
(227, '2020-10-22 11:21:02.668883', '8', 'Lance Poole', 3, '', 8, 1),
(228, '2020-10-22 12:19:09.768469', '3', 'Chittagong', 1, '[{"added": {}}]', 28, 1),
(229, '2020-10-22 12:19:15.232004', '4', 'Dinajpur', 1, '[{"added": {}}]', 28, 1),
(230, '2020-10-22 12:19:19.373461', '5', 'Mymensingh', 1, '[{"added": {}}]', 28, 1),
(231, '2020-10-22 12:19:23.641674', '6', 'Barisal', 1, '[{"added": {}}]', 28, 1),
(232, '2020-10-22 12:19:27.795085', '7', 'Faridpur', 1, '[{"added": {}}]', 28, 1),
(233, '2020-10-22 12:19:32.467742', '8', 'Noakhali', 1, '[{"added": {}}]', 28, 1),
(234, '2020-10-22 12:23:21.465012', '1', 'কৃষি মন্ত্রণালয়', 1, '[{"added": {}}]', 29, 1),
(235, '2020-10-22 12:23:35.276845', '2', 'কৃষি মন্ত্রণালয়ে', 1, '[{"added": {}}]', 29, 1),
(236, '2020-10-22 12:24:12.310995', '3', 'কৃষি মন্ত্রণালয়', 1, '[{"added": {}}]', 29, 1),
(237, '2020-10-22 12:24:21.689610', '4', 'কৃষি মন্ত্রণালয়ে', 1, '[{"added": {}}]', 29, 1),
(238, '2020-10-22 15:50:09.644963', '29', 'আপেল', 2, '[{"changed": {"fields": ["quantity_for"]}}]', 25, 1),
(239, '2020-10-22 16:09:28.197884', '17', 'Brett Valentine', 2, '[{"changed": {"fields": ["farmer"]}}]', 26, 1),
(240, '2020-10-23 11:11:18.347111', '1', 'Krishi Krishak Help', 2, '[{"changed": {"fields": ["company_logo"]}}]', 7, 1),
(241, '2020-10-23 16:20:07.918003', '6', 'ফসলের পুষ্টি', 2, '[{"changed": {"fields": ["ordering"]}}]', 18, 1),
(242, '2020-10-23 16:22:49.721209', '15', 'অভাব জনিত লক্ষন', 2, '[{"changed": {"fields": ["ordering"]}}]', 20, 1),
(243, '2020-10-23 16:22:59.609843', '14', 'ফসলের পুষ্টি সমূহ', 2, '[{"changed": {"fields": ["ordering"]}}]', 20, 1),
(244, '2020-10-23 16:27:05.295544', '15', 'অভাব জনিত লক্ষন', 2, '[{"changed": {"fields": ["ordering"]}}]', 20, 1),
(245, '2020-10-23 17:35:19.152303', '14', 'ফসলের পুষ্টি সমূহ', 2, '[{"changed": {"fields": ["ordering"]}}]', 20, 1),
(246, '2020-10-23 17:45:51.096088', '14', 'ফসলের পুষ্টি সমূহ', 2, '[{"changed": {"fields": ["ordering"]}}]', 20, 1),
(247, '2020-10-23 17:46:15.705521', '14', 'ফসলের পুষ্টি সমূহ', 2, '[{"changed": {"fields": ["ordering"]}}]', 20, 1),
(248, '2020-11-03 19:23:44.084551', '3', 'Est id et cumque fuga Anim dicta et at commodi', 1, '[{"added": {}}]', 12, 1),
(249, '2020-11-06 17:43:19.336074', '12', 'Otto Rose', 2, '[{"changed": {"fields": ["problem", "solve_message", "slove"]}}]', 17, 1),
(250, '2021-02-18 09:19:10.156580', '1', 'Krishi Krishak Help', 2, '[{"changed": {"fields": ["staring_year", "email1", "email2", "mobile1", "mobile2", "address", "skype"]}}]', 7, 1),
(251, '2021-03-04 09:46:56.397121', '1', 'Krishi Krishak Help', 2, '[{"changed": {"fields": ["email1", "email2", "mobile2"]}}]', 7, 1),
(252, '2021-03-04 10:21:11.599168', '14', 'Joshef Hossain', 2, '[{"changed": {"fields": ["problem", "solve_message", "slove"]}}]', 17, 1),
(253, '2021-03-05 09:45:04.381449', '2', 'Mehedi Hasan Nabil', 2, '[{"changed": {"fields": ["member_name", "member_designation", "images"]}}]', 14, 1),
(254, '2021-03-05 09:45:30.555648', '1', 'Rakib Khan', 3, '', 14, 1),
(255, '2021-03-13 06:32:54.110405', '1', 'Mobile', 1, '[{"added": {}}]', 30, 1),
(256, '2021-03-13 06:33:25.583972', '15', 'Serina Stone', 1, '[{"added": {}}]', 17, 1),
(257, '2021-03-13 07:10:32.774168', '2', 'Education Software', 1, '[{"added": {}}]', 30, 1),
(258, '2021-03-13 07:10:37.387208', '3', 'ERP Software', 1, '[{"added": {}}]', 30, 1),
(259, '2021-03-13 07:10:40.898708', '4', 'Ecommerce Software', 1, '[{"added": {}}]', 30, 1),
(260, '2021-03-13 08:42:40.532741', '18', 'Byron Dunlap', 3, '', 17, 1),
(261, '2021-03-13 08:42:40.681520', '17', 'Byron Dunlap', 3, '', 17, 1),
(262, '2021-03-13 08:42:40.715480', '16', 'Byron Dunlap', 3, '', 17, 1),
(263, '2021-03-13 10:25:53.233989', '20', 'fgfdgfdgdfgfdg', 3, '', 20, 1),
(264, '2021-03-13 10:25:53.287571', '19', 'Hossain', 3, '', 20, 1),
(265, '2021-03-13 10:25:53.320939', '18', 'Hossain', 3, '', 20, 1),
(266, '2021-03-13 10:25:53.343233', '17', 'Joshef', 3, '', 20, 1),
(267, '2021-03-13 10:29:53.110620', '16', 'Joshef Hossain', 3, '', 8, 1),
(268, '2021-03-13 10:29:53.165118', '15', 'Joshef Hossain', 3, '', 8, 1),
(269, '2021-03-13 10:29:53.209528', '14', 'Xena Wilder', 3, '', 8, 1),
(270, '2021-03-13 11:55:20.422745', '22', 'Jessica Christensen', 3, '', 17, 1),
(271, '2021-03-13 11:56:17.714979', '21', 'Lev Nunez', 3, '', 17, 1),
(272, '2021-03-13 15:39:32.731476', '37', 'gf', 3, '', 17, 1),
(273, '2021-03-13 15:39:32.817427', '36', 'gf', 3, '', 17, 1),
(274, '2021-03-13 15:39:32.872396', '35', 'gf', 3, '', 17, 1),
(275, '2021-03-13 15:39:32.939357', '34', 'gf', 3, '', 17, 1),
(276, '2021-03-13 15:39:32.959346', '33', 'gf', 3, '', 17, 1),
(277, '2021-03-13 15:39:33.016311', '32', 'gf', 3, '', 17, 1),
(278, '2021-03-13 15:39:33.083563', '31', 'gf', 3, '', 17, 1),
(279, '2021-03-13 15:39:33.228028', '30', 'gf', 3, '', 17, 1),
(280, '2021-03-13 15:39:33.293975', '29', 'ghfgh', 3, '', 17, 1),
(281, '2021-03-13 15:39:33.338080', '28', 'ghfgh', 3, '', 17, 1),
(282, '2021-03-13 17:57:35.160477', '29', 'আপেল', 2, '[{"changed": {"fields": ["status", "new"]}}]', 25, 1),
(283, '2021-03-13 18:05:38.122132', '52', 'Larissa Bishop', 2, '[{"changed": {"fields": ["problem", "solve_message"]}}]', 17, 1),
(284, '2021-03-13 18:25:59.136398', '52', 'Larissa Bishop', 2, '[{"changed": {"fields": ["slove"]}}]', 17, 1),
(285, '2021-03-13 18:26:05.983188', '51', 'Larissa Bishop', 2, '[{"changed": {"fields": ["problem", "slove"]}}]', 17, 1),
(286, '2021-03-13 18:35:56.401064', '49', 'Larissa Bishop', 2, '[{"changed": {"fields": ["problem", "slove"]}}]', 17, 1),
(287, '2021-03-13 18:37:35.678537', '53', 'Joshef Hossain', 2, '[{"changed": {"fields": ["problem", "slove"]}}]', 17, 1),
(288, '2021-03-13 21:14:41.016822', '1', 'Mobile', 1, '[{"added": {}}]', 30, 1),
(289, '2021-03-13 21:14:43.712478', '2', 'Education Software', 1, '[{"added": {}}]', 30, 1),
(290, '2021-03-13 21:14:46.474123', '3', 'ERP Software', 1, '[{"added": {}}]', 30, 1),
(291, '2021-03-13 21:14:48.941450', '4', 'Ecommerce Software', 1, '[{"added": {}}]', 30, 1),
(292, '2021-03-21 14:53:24.820542', '2', 'Nazmul Hasan', 2, '[{"changed": {"fields": ["title", "problem", "solve_message"]}}]', 17, 1),
(293, '2021-03-21 15:01:58.564278', '3', 'Shohel Khan', 2, '[{"changed": {"fields": ["problem", "solve_message"]}}]', 17, 1),
(294, '2021-03-21 15:11:49.715741', '2', 'Nazmul Hassan', 2, '[{"changed": {"fields": ["member_name", "member_mobile", "member_email", "member_address"]}}]', 14, 1),
(295, '2021-03-21 15:13:19.299943', '3', 'Srijal Chakrabortty.', 1, '[{"added": {}}]', 14, 1),
(296, '2021-03-21 15:13:19.524070', '4', 'Srijal Chakrabortty.', 1, '[{"added": {}}]', 14, 1),
(297, '2021-03-21 15:16:59.048182', '4', 'Srijal Chakrabortty.', 3, '', 14, 1),
(298, '2021-03-21 15:17:09.171795', '2', 'Nazmul Hassan', 2, '[{"changed": {"fields": ["images"]}}]', 14, 1),
(299, '2021-03-21 15:17:20.569664', '3', 'Srijal Chakrabortty.', 2, '[{"changed": {"fields": ["images"]}}]', 14, 1),
(300, '2021-03-21 15:23:23.053921', '2', 'Srijal Chakrabortty.', 2, '[{"changed": {"fields": ["person_name", "person_img", "review_detail"]}}]', 13, 1),
(301, '2021-03-21 15:27:30.528166', '1', 'Nazmul Hassan', 2, '[{"changed": {"fields": ["person_name", "person_img", "review_detail"]}}]', 13, 1),
(302, '2021-03-21 15:36:54.148612', '1', 'Krishi Krishak Help', 2, '[{"changed": {"fields": ["com_story"]}}]', 7, 1),
(303, '2021-03-21 15:44:10.064706', '1', 'Krishi Krishak Help', 2, '[{"changed": {"fields": ["mobile1"]}}]', 7, 1),
(304, '2021-04-27 10:07:53.703529', '1', '2 Year', 1, '[{"added": {}}]', 32, 1),
(305, '2021-04-27 10:07:58.028076', '2', '3 Year', 1, '[{"added": {}}]', 32, 1),
(306, '2021-04-27 10:08:02.206228', '3', '4 Year', 1, '[{"added": {}}]', 32, 1),
(307, '2021-04-27 10:08:07.151080', '4', '5 Year', 1, '[{"added": {}}]', 32, 1),
(308, '2021-04-27 10:08:16.674496', '5', '6 Year', 1, '[{"added": {}}]', 32, 1),
(309, '2021-04-27 10:08:30.531239', '1', 'Mango', 1, '[{"added": {}}]', 31, 1),
(310, '2021-04-27 10:08:42.709270', '2', 'Apple', 1, '[{"added": {}}]', 31, 1),
(311, '2021-04-27 10:08:48.965767', '3', 'Orange', 1, '[{"added": {}}]', 31, 1),
(312, '2021-04-27 10:09:16.477578', '4', 'Banana', 1, '[{"added": {}}]', 31, 1),
(313, '2021-04-27 10:13:04.422944', '3', 'Apple', 1, '[{"added": {}}]', 33, 1),
(314, '2021-04-27 10:13:14.772329', '4', 'Mango', 1, '[{"added": {}}]', 33, 1),
(315, '2021-04-27 10:13:22.746759', '5', 'Apple', 1, '[{"added": {}}]', 33, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(24, 'service', 'addtocart'),
(21, 'service', 'agriculturaladvice'),
(10, 'service', 'blogcategory'),
(11, 'service', 'blogcomment'),
(12, 'service', 'blogs'),
(18, 'service', 'category'),
(7, 'service', 'companyinfo'),
(8, 'service', 'contact'),
(27, 'service', 'customaraccount'),
(26, 'service', 'customarorderlist'),
(17, 'service', 'customerproblem'),
(28, 'service', 'districtcat'),
(15, 'service', 'faqs'),
(23, 'service', 'farmeraccount'),
(29, 'service', 'importantlink'),
(19, 'service', 'ourservice'),
(14, 'service', 'ourteammember'),
(30, 'service', 'problemcategory'),
(25, 'service', 'product'),
(22, 'service', 'quicksolve'),
(13, 'service', 'reviews'),
(33, 'service', 'searchpesticides'),
(16, 'service', 'sliderinfo'),
(20, 'service', 'subcategory'),
(9, 'service', 'subscribernewslatter'),
(32, 'service', 'treeage'),
(31, 'service', 'treename'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-04-27 03:38:20.206366'),
(2, 'auth', '0001_initial', '2020-04-27 03:38:33.600458'),
(3, 'admin', '0001_initial', '2020-04-27 03:38:37.310892'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-04-27 03:38:37.528287'),
(5, 'contenttypes', '0002_remove_content_type_name', '2020-04-27 03:38:40.319959'),
(6, 'auth', '0002_alter_permission_name_max_length', '2020-04-27 03:38:41.298423'),
(7, 'auth', '0003_alter_user_email_max_length', '2020-04-27 03:38:42.343686'),
(8, 'auth', '0004_alter_user_username_opts', '2020-04-27 03:38:42.386756'),
(9, 'auth', '0005_alter_user_last_login_null', '2020-04-27 03:38:43.090364'),
(10, 'auth', '0006_require_contenttypes_0002', '2020-04-27 03:38:43.132306'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2020-04-27 03:38:43.199521'),
(12, 'auth', '0008_alter_user_username_max_length', '2020-04-27 03:38:44.377176'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2020-04-27 03:38:44.490256'),
(14, 'sessions', '0001_initial', '2020-04-27 03:38:45.509488'),
(15, 'service', '0001_initial', '2020-04-28 05:05:00.716023'),
(16, 'service', '0002_contact_message_date', '2020-04-28 05:11:47.608559'),
(17, 'service', '0003_reviews', '2020-04-29 15:11:18.826816'),
(18, 'service', '0004_remove_blogs_blog_alt_tag', '2020-05-01 15:35:27.806889'),
(19, 'service', '0005_auto_20200511_2112', '2020-05-11 15:12:23.821162'),
(20, 'service', '0006_auto_20200511_2126', '2020-05-11 15:26:45.162090'),
(21, 'service', '0007_ourteammember_member_designation', '2020-05-11 15:51:10.353862'),
(22, 'service', '0008_faqs', '2020-05-22 14:47:08.858900'),
(23, 'service', '0009_sliderinfo', '2020-08-20 13:26:24.587646'),
(24, 'service', '0010_remove_sliderinfo_details', '2020-08-20 13:31:13.211933'),
(25, 'service', '0011_auto_20200820_1932', '2020-08-20 13:32:22.844516'),
(26, 'service', '0012_auto_20200823_1641', '2020-08-23 10:41:51.107616'),
(27, 'service', '0013_remove_sliderinfo_slider_name', '2020-08-23 10:44:51.006394'),
(28, 'service', '0014_auto_20200823_1649', '2020-08-23 10:49:52.054413'),
(29, 'service', '0015_auto_20200824_0033', '2020-08-23 18:33:33.386772'),
(30, 'service', '0016_customerproblem_solve', '2020-08-23 18:45:14.303262'),
(31, 'service', '0017_auto_20200824_0106', '2020-08-23 19:06:21.812791'),
(32, 'service', '0018_auto_20200824_0110', '2020-08-23 19:10:46.125605'),
(33, 'service', '0019_auto_20200824_1133', '2020-08-24 05:33:11.645468'),
(34, 'service', '0020_auto_20200824_1210', '2020-08-24 06:10:50.754656'),
(35, 'service', '0021_agriculturaladvice', '2020-08-24 08:15:50.242001'),
(36, 'service', '0022_customerproblem_post_date', '2020-08-24 11:57:43.395086'),
(37, 'service', '0023_auto_20200824_2134', '2020-08-24 15:34:23.144337'),
(38, 'service', '0024_auto_20200824_2139', '2020-08-24 15:39:08.141076'),
(39, 'service', '0025_quicksolve', '2020-08-26 06:27:54.778746'),
(40, 'service', '0026_auto_20201006_1224', '2020-10-06 06:25:14.608679'),
(41, 'service', '0027_auto_20201006_1546', '2020-10-06 09:46:29.650617'),
(42, 'service', '0028_auto_20201006_1858', '2020-10-06 12:59:08.048957'),
(43, 'service', '0029_auto_20201006_1914', '2020-10-06 13:15:02.190533'),
(44, 'service', '0030_auto_20201006_1934', '2020-10-06 13:34:48.728123'),
(45, 'service', '0031_product_new', '2020-10-06 16:09:56.531129'),
(46, 'service', '0032_auto_20201007_1255', '2020-10-07 06:55:14.287072'),
(47, 'service', '0033_auto_20201007_1314', '2020-10-07 07:14:57.117976'),
(48, 'service', '0034_customarorderlist_delivery_date', '2020-10-07 09:48:21.142503'),
(49, 'service', '0035_auto_20201007_1548', '2020-10-07 09:48:21.889609'),
(50, 'service', '0036_companyinfo_news', '2020-10-19 11:00:53.538415'),
(51, 'service', '0037_auto_20201020_0234', '2020-10-19 20:34:15.521989'),
(52, 'service', '0038_auto_20201020_0246', '2020-10-19 20:46:14.077483'),
(53, 'service', '0039_auto_20201020_2222', '2020-10-20 16:22:36.149393'),
(54, 'service', '0040_auto_20201022_1601', '2020-10-22 10:01:19.419813'),
(55, 'service', '0041_auto_20201022_1817', '2020-10-22 12:17:26.938398'),
(56, 'service', '0042_auto_20201022_1941', '2020-10-22 13:41:30.828932'),
(57, 'service', '0043_auto_20210312_2037', '2021-03-12 14:37:32.653945'),
(58, 'service', '0044_problemcategory', '2021-03-12 14:51:21.173181'),
(59, 'service', '0002_problemcategory', '2021-03-13 21:13:10.709484'),
(60, 'service', '0003_customerproblem', '2021-03-13 21:13:27.863498'),
(61, 'service', '0004_auto_20210427_0251', '2021-04-27 09:51:52.809944'),
(62, 'service', '0005_auto_20210427_0312', '2021-04-27 10:12:07.683679'),
(63, 'service', '0006_auto_20210427_0316', '2021-04-27 10:16:04.914656');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('11ulk5jl6i8efepsiobcsg0qxi2aohf7', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2021-03-23 17:50:01.195352'),
('1flabcx6lpvpw4l1vgbsmjldlozon49v', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2020-11-26 09:42:04.212013'),
('1ozeaabfkbl4c01h5kgan0zjjnfvit78', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2020-09-07 06:19:57.719680'),
('4p3o4qnuqz4x7msp6dts0nnepcaucai3', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2020-11-06 11:08:55.514196'),
('8hlv7b5s1zzuidef1m50k6ktyt14ap82', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2020-05-25 14:52:43.925347'),
('ahbuzx8uohglnhnvkws3odfcvz8kzbjm', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2020-10-12 13:53:04.536793'),
('cb7elijtmx4at8nczxisx1di0dnohw1r', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2021-03-18 09:45:13.863965'),
('dil5wjdvi74p454hfhpjqfc9y3kj24z7', 'Yzk0ZTcxZDRlNzIwYzFhY2FmOGIwNTNiZWYwODM2ZDFhNjM3NmMzNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIiwibmFtZV9fXyI6IkdhdmluIEJ1dGxlciIsIm5hbWUiOiJKb3NoZWYgSG9zc2FpbiAiLCJtb2JpbGUiOiIwMTk2NTU1MDYyOSIsInVzZXJpZCI6N30=', '2020-10-20 12:18:47.165987'),
('has170gnz4z6lm0rb4phnq8q04c0etez', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2021-05-11 10:04:03.208436'),
('hr5q7zfozss5in0e04m9t9kzkhpvf6rk', 'ZjdmMjk3NDk1NGM0MDExNjkyYjdiM2VkM2M5N2M4MjBmNzg3MTVlMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIiwibmFtZSI6IklzaG1hZWwgTWFzb24iLCJtb2JpbGUiOiIwMTk2NTA3MDA4OSIsInVzZXJpZCI6OH0=', '2020-11-05 13:26:18.926869'),
('hv371tijn9520fpi3k0f1si9dzrfcros', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2021-03-04 09:05:17.969761'),
('jys17xdjwejf9prud83ia95h3hmpzknj', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2020-11-17 19:19:27.537726'),
('nga1i3rwtvk3h1eqnrspbpsbi4ls610l', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2020-09-03 13:28:52.223818'),
('npbvbr72rpxg2dpgtpi3xo12tf9mk9py', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2020-11-19 17:33:58.198318'),
('o613lskqpnpbklu1ysywxifw1mqo0elx', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2020-11-02 10:54:43.603148'),
('rrlx55ah8ddhq2sg70tcgoudbjl5hylx', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2021-04-04 14:44:39.353420'),
('t0m3dc1lq4a84byj799fb0i8kgrdtrom', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2020-11-02 18:11:22.883603'),
('t5zpn6w4p25n5vasn8l2za0l5mezrrrl', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2021-03-26 18:05:43.056960'),
('td0zi9ez2ki5v10bx3ldzmwdx8mmddvl', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2020-11-16 12:32:50.418992'),
('v401xfh5j4kwaqsum6ic807azhowh0sq', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2020-06-16 14:36:46.790933'),
('vz3tm1051e512urd3oyh3v6fqn63iwrh', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2020-05-11 03:40:15.055332'),
('z4f7s0mfyapww2td7sk3j8oppcgpxbx9', 'NzA0YTNjZmFkOTBkYzRlY2MyMDQ1Mjk2NDlkMjc0OWZkMGMwZWNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYTQ2M2FmMWY2ZjMyZDcwOTU3MTM1Y2Q0NGVjYzNiZGMwZTNlM2JkIn0=', '2020-05-25 14:19:46.598385');

-- --------------------------------------------------------

--
-- Table structure for table `service_addtocart`
--

CREATE TABLE `service_addtocart` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `qt_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `product_name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_addtocart`
--

INSERT INTO `service_addtocart` (`id`, `ip_address`, `qt_price`, `quantity`, `total_price`, `add_date`, `status`, `product_name_id`) VALUES
(3, '127.0.0.1', 117, 1, 117, '2020-11-12 11:09:11.979853', 1, 29),
(4, '127.0.0.1', 500, 1, 500, '2021-03-04 18:49:43.093983', 1, 31);

-- --------------------------------------------------------

--
-- Table structure for table `service_agriculturaladvice`
--

CREATE TABLE `service_agriculturaladvice` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `detail` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `icon_img` varchar(100) NOT NULL,
  `ordering` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_agriculturaladvice`
--

INSERT INTO `service_agriculturaladvice` (`id`, `title`, `detail`, `image`, `icon_img`, `ordering`, `status`) VALUES
(1, 'গম ফসলের ক্ষতিকর ব্লাস্ট রোগের আক্রমন ও দমন', '<p>এটি পাইরিকুলারিয়া অরাইজি প্যাথোটাইপ ট্রিটিকাম নামক ছত্রাক দ্বারা বিস্তার লাভ করে (গম গবেষণা কেন্দ্র,বারি)।গমের শীষ বের হওয়া থেকে ফুল ফুল ফোটার সময়ে উচ্চ তাপমাত্রা ও আদ্র আবহাওয়া থাকলে এ রোগের আক্রমণ ঘটে।এটি পাইরিকুলারিয়া অরাইজি প্যাথোটাইপ ট্রিটিকাম নামক ছত্রাক দ্বারা বিস্তার লাভ করে (গম গবেষণা কেন্দ্র,বারি)।গমের শীষ বের হওয়া থেকে ফুল ফুল ফোটার সময়ে উচ্চ তাপমাত্রা ও আদ্র আবহাওয়া থাকলে এ রোগের আক্রমণ ঘটে।এটি পাইরিকুলারিয়া অরাইজি প্যাথোটাইপ ট্রিটিকাম নামক ছত্রাক দ্বারা বিস্তার লাভ করে (গম গবেষণা কেন্দ্র,বারি)।গমের শীষ বের হওয়া থেকে ফুল ফুল ফোটার সময়ে উচ্চ তাপমাত্রা ও আদ্র আবহাওয়া থাকলে এ রোগের আক্রমণ ঘটে।এটি পাইরিকুলারিয়া অরাইজি প্যাথোটাইপ ট্রিটিকাম নামক ছত্রাক দ্বারা বিস্তার লাভ করে (গম গবেষণা কেন্দ্র,বারি)।গমের শীষ বের হওয়া থেকে ফুল ফুল ফোটার সময়ে উচ্চ তাপমাত্রা ও আদ্র আবহাওয়া থাকলে এ রোগের আক্রমণ ঘটে।এটি পাইরিকুলারিয়া অরাইজি প্যাথোটাইপ ট্রিটিকাম নামক ছত্রাক দ্বারা বিস্তার লাভ করে (গম গবেষণা কেন্দ্র,বারি)।গমের শীষ বের হওয়া থেকে ফুল ফুল ফোটার সময়ে উচ্চ তাপমাত্রা ও আদ্র আবহাওয়া থাকলে এ রোগের আক্রমণ ঘটে।এটি পাইরিকুলারিয়া অরাইজি প্যাথোটাইপ ট্রিটিকাম নামক ছত্রাক দ্বারা বিস্তার লাভ করে (গম গবেষণা কেন্দ্র,বারি)।গমের শীষ বের হওয়া থেকে ফুল ফুল ফোটার সময়ে উচ্চ তাপমাত্রা ও আদ্র আবহাওয়া থাকলে এ রোগের আক্রমণ ঘটে।এটি পাইরিকুলারিয়া অরাইজি প্যাথোটাইপ ট্রিটিকাম নামক ছত্রাক দ্বারা বিস্তার লাভ করে (গম গবেষণা কেন্দ্র,বারি)।গমের শীষ বের হওয়া থেকে ফুল ফুল ফোটার সময়ে উচ্চ তাপমাত্রা ও আদ্র আবহাওয়া থাকলে এ রোগের আক্রমণ ঘটে।</p>', 'image/12.jpg', 'icon_img/cereal.png', 0, 1),
(2, 'পেয়ারা গাছে অসময়ে ফলধারণের পদ্ধতিগুলো', '<p>বর্তমানে পেয়ারা গাছে বছরব্যাপী ফল উৎপাদনের জন্য কৃষি বিজ্ঞানীরা বেশ কয়েকটি পদ্ধতি আবিষ্কার করেছেন। সেগুলো হলো শিকড় উন্মুক্তকরণ পদ্ধতি, হরমোন জাতীয় পদার্থ প্রয়োগ পদ্ধতি ও শাখা-প্রশাখা বাঁকানো পদ্ধতি।<br />\r\n<strong>ক. শিকড় উন্মুক্তকরণ পদ্ধতি</strong><br />\r\nপেয়ারা গাছের গোড়ার মাটি তুলে বা আলগা করে দিতে হবে। মাটি তুলে গাছের শিকড়গুলো বের করে নাড়াচাড়া দিতে হবে। গাছের গোড়া থেকে ০১ থেকে ১.৫ মিটার (পেয়ারা গাছের ক্যানপি) পর্যন্ত মাটি কোদাল, শাবল বা নিড়ানি দ্বারা খুব ভালোভাবে সাবধানতার সাথে মাটি উন্মুক্ত করে দিতে হবে। মাটি তুলে দেয়ার সময় খেয়াল রাখতে হবে, গাছের শিকড়গুলো কেটে না যায়। বিশেষ করে গাছের আসল মূল (টেপ রুট) কাটা ও উৎপাটন করা যাবে না। গাছ নাড়ানো যাবে না। সাধারণত যে কোনো বয়সের পেয়ারা গাছে এ প্রযুক্তি ব্যবহার করা যায়। গোড়ার মাটি উন্মুক্ত করার কমপক্ষে ১০ থেকে ১৫ দিন পর পরিচর্যা করতে হবে। পরিচর্যাকালে পরিমাণমতো সার ও সেচ ব্যবস্থা নিশ্চিত করতে হবে। এ পদ্ধতিতে গাছের পাতা লাল হয়ে ঝড়ে যেতে পারে। আমাদের দেশে এপ্রিল-মে মাসে পেয়ারা গাছে শিকড় উন্মুক্ত করতে হয়। এ প্রযুক্তি ব্যবহার করলে পেয়ারা গাছে ডিসেম্বর-জানুয়ারি মাসে ফলধারণ করে।<br />\r\n<strong>খ. হরমোন জাতীয় পদার্থ প্রয়োগ পদ্ধতি</strong><br />\r\nসাধারণত ২ থেকে ৫ বছর বিশিষ্ট পেয়ারা গাছে হরমোন প্রয়োগ করতে হয়। এপ্রিল-মে মাসে হরমোন প্রয়োগ করার উৎকৃষ্ট সময়। এ সময়ে হরমোন জাতীয় পদার্থ হিসেবে ২,৪-ডি; ন্যাপথালিন এসিটিক এসিড (এনএএ), ১০% ইউরিয়ার দ্রবণ এসব রাসায়নিক পদার্থ ব্যবহার করা হয়। স্প্রে মেশিন বা ফুটপাম্প দিয়ে খুব ভালো করে পেয়ারা গাছের পাতা ভিজিয়ে দিতে হবে। কয়েক দিনের মধ্যেই গাছের পাতা লালচে হয়ে ঝড়ে যেতে পারে। পরবর্তীতে গাছে সঠিক পরিচর্যা নিলে নতুন পাতা জন্মাবে এবং অসময়ে ফলধারণ হবে।<br />\r\n<strong>গ. শাখা-প্রশাখা বাঁকানো পদ্ধতি</strong><br />\r\nশাখা-প্রশাখা বাঁকানো পদ্ধতি সম্পূর্ণ নতুন প্রযুক্তি। পেঁয়ারার ডাল বাঁকালেই প্রায় দশগুণ বেশি ফলন হয়। তাছাড়া একই প্রযুক্তিতে বছরের বার মাসই ফল ধরানো সম্ভব হয়। ফলের মৌসুমে গাছের ফুল ছিঁড়ে দিয়ে এ প্রক্রিয়াকে আরও প্রভাবিত করা যায়, যার ফলে সারা বছরই ফলের মৌসুমের তুলনায় কমপক্ষে আট থেকে দশগুণ ফল ধরবে গাছে। এ লক্ষ্যে ২০০৬ সালের সেপ্টেম্বর থেকে গবেষণার মাধ্যমে &lsquo;গাছের ডাল বাঁকানো&rsquo; পদ্ধতি উদ্ভাবন করা হয়েছে। বছরে দুইবার অর্থাৎ গ্রীষ্মকালে এবং হেমন্তকালে শাখা-প্রশাখার নিয়ন্ত্রিত বিন্যাসের মাধ্যমে সারা বছর পেয়ারার ফুল ও ফলধারণ নিয়ন্ত্রণ করা সম্ভব। গাছের বয়স দেড় থেকে দুইবছর হলেই এ পদ্ধতি শুরু করা যাবে এবং পাঁচ থেকে ছয় বছর পর্যন্ত এ পদ্ধতিতে ফলন বাড়ানো সম্ভব। ডাল বাঁকানোর ১০ থেকে ১৫ দিন আগে গাছের গোড়ায় সার ও পানি দিতে হয়। ডাল বাঁকানোর সময় প্রতিটি শাখার অগ্রভাগের প্রায় এক থেকে দেড়ফুট অঞ্চলের পাতা ও ফুল-ফল রেখে বাকি অংশ ছেটে দিতে হয়। এরপর ডালগুলোকে সুতা দিয়ে বেঁধে তা বাঁকিয়ে মাটির কাছাকাছি করে সাথে অথবা খুঁটির মাধ্যমে মাটিতে বেঁধে দিতে হয় । গ্রীষ্মকালে মাত্র ১০ থেকে ১২ দিন পরেই নতুন ডাল গজানো শুরু হয়। নতুন ডাল ১ সেমি. লম্বা হলে বাঁধন খুলে দেয়া হয়। আর&nbsp; হেমন্তকালে নতুন ডাল গজাতে ২০ থেকে ২৫ দিন সময় লাগে। ডাল বাঁকানোর ৪৫ থেকে ৬০ দিন পরে ফুল ধরা শুরু হয়। এভাবে গজানো প্রায় প্রতি পাতার কোলেই ফুল আসে। এ পদ্ধতিতে সারা বছরই ফলন পাওয়া যায়।<br />\r\n<strong>বিশেষ ব্যবস্থাপনাগুলো</strong><br />\r\nপেয়ারা গাছের আকার আকৃতি, কাঠামো ও গুণগত মানের ফলধারণের জন্য গাছে বিশেষ কতগুলো ব্যবস্থাপনা করা যায়। এ ব্যবস্থাপনাগুলোর মধ্যে অঙ্গ ছাঁটাই, ডাল নুয়ে দেয়া, ফুল ছিঁড়ে দেয়া, ফল পাতলাকরণ, ফল ঢেকে দেয়া এসব পদ্ধতি।<br />\r\n<strong>অঙ্গ ছাঁটাই&nbsp;</strong>: গাছের মরা, শুকনা, চিকন, লিকলিকে, রোগাক্রান্ত ও প্রয়োজনহীন ডালপালা ছাঁটাই করাকে অঙ্গ ছাঁটাই বলা হয়। রোপণকৃত চারা বা কলমের আকার, আকৃতি ও কাঠামো সুন্দর করার উদ্দেশ্যে মাটি থেকে ১.০ থেকে ১.৫ মিটার ওপরে বিভিন্ন দিকে ছড়ানো ৪ থেকে ৫টি ডাল রেখে গোড়ার দিকের সব ডাল ছাঁটাই করে দিতে হবে। বয়স্ক গাছের ফল সংগ্রহের পর সেপ্টেম্বর-অক্টোবর মাসে অঙ্গ ছাঁটাই করা হয়। এতে গাছে নতুর ডালপালা গজায়, প্রচুর ফুল হয় এবং গুণমানের উৎকৃষ্ট ফলধারণ করে।<br />\r\n<strong>ডাল নুয়ে দেয়া&nbsp;</strong>: পেয়ারা গাছের খাঁড়া ডালে সাধারণত ফুল ও ফল খুবই কম ধরে। তাই খাঁড়া ডালগুলোকে যদি ওজন বা টানার সাহায্যে নুয়ে দিলে প্রচুর পরিমাণ নতুন শাখা গজায়। নতুন ডালপালায় গুণগতমানের ফলধারণ ও ফলন বৃদ্ধি পায়।<br />\r\n<strong>ফুল ও ফল পাতলাকরণ</strong>&nbsp;: কাজী পেয়ারা ও বারি পেয়ারা-২ এর গাছে প্রতি বছর প্রচুরসংখ্যক ফুল ও ফল আসে। ফল আকারে বড় হওয়ার গাছের পক্ষে সব ফল ধারণ করা সম্ভব হয়ে ওঠে না। ফলের ভারে ডালপালা ভেঙে যায় এবং ফল আকারে ছোট ও নি&curren;&oelig;মানের হয়। এ অবস্থায়, গাছকে দীর্ঘদিন ফলবান রাখতে ও মানসম্পন্ন ফল পেতে হলে প্রথমেই কিছু ফুল এবং পরে ফল ছোট থাকা অবস্থায় (মার্বেল অবস্থা) ৫০ থেকে ৬০% ফল পাতলা করে দেয়া দরকার। কলমের গাছের ক্ষেত্রে কোনো অবস্থাতেই প্রথম বছর ফল নেয়া উচিত হবে না। তাই ফুল আসার সাথে সাথে ছিঁড়ে ফেলে দেয়া প্রয়োজন। দ্বিতীয় বছর অল্প পরিমাণ ফল নেয়া ভালো। এভাবে গাছের বয়স ও অবস্থা বুঝে ফল রাখতে হবে। পরিকল্পিত উপায়ে ফুল বা ফল পাতলা করে প্রায় সারা বছর কাজী পেয়ারা ও বারি পেয়ারা-২ জাতের গাছে ফল পাওয়া যাবে।<br />\r\n<strong>ফ্রুট ব্যাগিং বা ফল ঢেকে দেয়া :</strong>&nbsp;পেয়ারা ছোট অবস্থাতেই ব্যাগিং করলে রোগ, পোকামাকড়, পাখি, বাদুড়, কাঠবিড়ালি এসব থেকে সহজেই রক্ষা করা যায়। ব্যাগিং করা ফল অপেক্ষাকৃত বড় আকারের এবং আকর্ষণীয় রঙের হয়। ব্যাগিং বাদামি কাগজ বা ছোট ছিদ্রযুক্ত পলিথিন দিয়ে করা যেতে পারে। ব্যাগিং করলে সূর্যের আলট্রাভায়োলেট রশ্মি থেকে প্রতিহত হয় বিধায় কোষ বিভাজন বেশি হয় এবং ফল আকারে&nbsp; বড় হয়। ব্যাগিং করার আগে অবশ্যই প্রতি লিটার পানির সঙ্গে ০.৫ মিলি হারে টিল্ট ২৫০ ইসি মিশিয়ে সব ফল ভালোভাবে ভিজিয়ে স্প্রে করতে হবে।<br />\r\nবর্তমানে বাংলাদেশে পেয়ারার উৎপাদন মাত্র ১ লাখ ৬১ হাজার টন। বাংলাদেশের আবহাওয়া, জলবায়ু, মাটি এসব পেয়ারা চাষের জন্য খুবই উপযোগী। তাছাড়া অসময়ে ফলধারণের মতো অতি গুরুত্বপূর্ণ প্রযুক্তিগুলো গবেষকরা উদ্ভাবন করেছেন। বিশেষ ব্যবস্থাপনাসমূহের মাধ্যমে সহজেই পেয়ারা চাষে আর্থিক লাভবান করা সম্ভব। তাই পরিকল্পিত উপায়ে প্রযুক্তিভিত্তিক পেয়ারা চাষের প্রতি কৃষক ভাইদের উদ্বুদ্ধ ও বাস্তবায়ন করার জন্য গবেষক, বিজ্ঞানী, সম্প্রসারণবিদ, কৃষিকর্মী সর্বোপরি সরকারের বিশেষ উদ্যোগ গ্রহণ করা দরকার।</p>', 'image/13.jpg', 'icon_img/sprout.png', 1, 1),
(3, 'গরু মোটাতাজাকরণ পদ্ধতি', '<p>প্রতিটি পরিবার কিংবা ব্যক্তির একক বা একমুখী রোজগারে সংসার চালানো অনেক কঠিন হয়ে দাঁড়িয়েছে। তাই অনেকেই বাড়তি একটা কিছু করতে চায়, কিন্তু সুযোগ হয় না কিংবা হলেও কি করবে, তা খুঁজে পায় না।<br />\r\n<br />\r\n<strong>মোটাজাতকরণের জন্য গরু কিনতে গিয়ে কয়েকটি দিক খেয়াল রাখতে হবে, যেমন:</strong><br />\r\n১) ১ বছর বয়সের ঊর্ধ্বে গরু কিনতে হবে (১২-১৫ মাস বয়সের গরু মোটাজাতকরনের জন্য ভালো)<br />\r\n<br />\r\n২) গায়ের চামড়া ঠিলা-পাতলা, পাঁচরের হাড় চেপ্টা, পায়ের মোট এবং শুধু মাত্র খাবারের অভাবে যে সব গরু শুকিয়ে গেছে এমন গরু কম মূল্যে কিনতে হবে।<br />\r\n<br />\r\n৩) মনে রাখতে হবে গর্ভবতী গাভীকে ইউরিয়া মিশ্রিত খড় খাওয়ানো যাবে না। নির্বাচিত গরুকে প্রকল্প মতে প্রক্রিয়াজাত ইউরিয়া মিশ্রিত খড় খাওয়ানোর পূর্বে কিছু চিকিৎসা দিয়ে উপকুক্ত করে নিতে হবে।<br />\r\n<br />\r\nক. গরুর শরীরে কোনো ক্ষত থাকলে সে স্থানে ডেটল বা স্যাভলন দিয়ে ধুয়ে পরিস্কার করে নেগোভোন মলম লাগিয়ে প্রয়োজনে ব্যাণ্ডেজ করে রাখতে হবে, যাতে ক্ষত স্থানে মশা-মাছি কিংবা ময়লা জমতে না পারে।<br />\r\nখ. ক্ষত গভীর হলে তা না শুকানো পর্যন্ত আবার পরিস্কার করে মাঝে মধ্যেই মলম ব্যবহার করতে হবে।<br />\r\nগ. ক্ষত সেরে যাওয়ার পর গরুর গায়ের সেসব পরজীবী যেমন-উকুন, আঠালি, সিঁদুর পোকা ইত্যাদি মুক্ত করতে হবে।<br />\r\n<br />\r\n<strong>নিয়মাবলীঃ</strong><br />\r\nএকটি গরুর জন্য নিউসিডল বা এনোসটোল পাউডার ১০ কেজি পানিতে ২.৫ চা চামচ মিশাতে হবে। তারপর বাসতি থেকে কিছুটা দূরে ফাঁকা জায়গায় নিয়ে প্রথমে ভালোভাবে নাক-মুখ বেঁধে কান, চোখ, মুখ ছাড়া শরীরের সর্বত্র ওষুধ মিশ্রিত পানিতে ভিজিয়ে কানের ভেতর, চোখের চতুপারর্শ্বে, নাক, মুখ লেজের গোড়া, শরীরের সঙ্গে পায়ের সংযোগস্থলসহ সকল সংকীর্ণ জায়গায় লাগাতে হবে। ওধুষ লাগিয়ে ২০-২৫ মিনিট অপেক্ষা করার পরে পরিস্কার পানি দ্বারা শরীরের সর্বত্র ভালোভাবে ধুয়ে ওষুধমুক্ত করতে হবে। ওষুধ লাগানোর ২/১ দিন পর যদি দেখা যায় ভালোভাবে বাহিত্যক পরজীবী মুক্ত হয়নি তবে ১৫ দিন পরে আবার একই নিয়মে ওষুধ লাগাতে হবে।<br />\r\n<br />\r\n<strong>সর্তকতা</strong><br />\r\n১. যে ব্যক্তি ঔষুধ লাগাবেন, তিনি গরুর শরীরের ক্ষতস্থান সম্পর্কে সচেতন থাকবেন, কারণ এই ঔষুধ বিষ জাতীয়।<br />\r\n২. গরুর শরীরে ক্ষতস্থানকে (যদি ভালোভাবে না শুকিয়ে তাকে) এড়িয়ে ঔষদ প্রয়োগ করতে হবে।<br />\r\n৩. গরুকে ঔষুধ প্রয়োগের পর ভালোভাবে গোসল করিয়ে উক্ত স্থান থেকে কিছুটা দূরে নিয়ে মুখের বাঁধন খুলতে হবে কারণ গরু স্বভাবত ঔষুধ লাগা ঘাস বা পানি খেয়ে বিষক্রিয়া ঘটাতে পারে।<br />\r\n<br />\r\n<strong>অভ্যন্তরীণ পরজীবী মুক্ত করণ</strong><br />\r\n১. গোল কৃমি<br />\r\n২. কলিজা বা পাতা কৃমি।<br />\r\n<br />\r\n<strong>গোল কৃমি</strong><br />\r\nগোল কৃমি মুক্ত করতে নিচের যে কোন একটি ঔষুধ ব্যবহার করা যায়<br />\r\nমেনাফেঙ্ পাউডার = ১ প্যাকেট ১টি গরুর জন্য<br />\r\nঅথবা নেমাফেক্স বড়ি = ৩টি বড়ি একটি পূর্ণ বয়স্ক গরুর জন্য = ২টি বড়ি মাঝারি ও ছোট বাছুরের জন্য<br />\r\nঅথবা কোপেন পাউডার = ১টি প্যাকেট একটি গরুর জন্য<br />\r\nঅথবা রিনটাল পাউডার = ৭.৫ মি গ্রাম প্রতি কেজি দৈহিক ওজনের জন্য<br />\r\nবিঃদ্রঃ রিনটাল পাউডার ব্যবহার করা সবচেয়ে ভাল কারণ এই ঔষুধে ছোট বড় মাঝারি সব ধরনের কৃমি মারা যায়। গোল কৃমির ঔষুধ খাওয়ানোর পরে সবল গরু ৩ দিন এবং অন্যান্য গরুর ক্ষেত্রে ৭দিন অপেক্ষা করে তবে পাতা কৃমির ঔষুধ প্রয়োগ করতে হবে।<br />\r\n<br />\r\n<br />\r\n<strong>২. কলিজা বা পাতা কৃমি মুক্তকরণের নিয়মাবলী</strong><br />\r\nচামড়ার নিচে টোডাক্স ইনজেকশন করতে হবে। মাত্রা সাধারণভাবে ২/৩ সিসি প্রাপ্তবয়স্ক গরুর জন্য। মোটাতাজা করতে হলে ঙ্গ সিসি পরিমান ইনজেকশন করতে হয়। এই ঔষুধ প্রয়োগের ৩ দন অপেক্ষা করার পরে ইউরিয়া মিশ্রিত খাবার খাওয়ানো আরম্ভ করতে হবে। টোডাঙ্ ইনজেকশন ৭ দিন পর পর ২ বার দিতে হবে এবং তখন খাবার বন্ধ করার কোনো প্রয়োজন নাই। গরুকে প্রদানের জন্য দানাদার খাদ্যের মিশ্রণ তৈরির নিয়মঃ<br />\r\n<br />\r\n<strong>১. নং মিশ্রণ</strong><br />\r\nক. তিলের খৈল = ৪ কেজি<br />\r\nখ. চালের কুঁড়া = ৪ কেজি<br />\r\nগ. গমের ভূষি = ৪ কেজি<br />\r\nঘ. যে কোন ডালের ভূষি = ৪ কেজি<br />\r\n<br />\r\n<strong>২নং মিশ্রণ</strong><br />\r\nক. গম ভাঙ্গা =৪কেজি<br />\r\nখ. তিলের খৈল = ৪ কেজি<br />\r\nগ. চালের কুঁড়া = ৪ কেজি<br />\r\nঘ. ডাল ভাঙ্গা, খেসারি = ৪ কেজি<br />\r\nকৃমি দূর করার পরে গরুকে ইউরিয়া মিশ্রিত উন্নত খাবার দিতে হবে।<br />\r\n<br />\r\n<strong>গরুকে সাধারণত তিনটি পদ্ধতিতে মিশ্রিত উন্নত খাবার দিতে হবে।</strong><br />\r\n১। আঁশ জাতীয় খড় খাদ্যের সাথে মিশিয়ে প্রক্রিয়াজাত করে<br />\r\n২। দানাদার জাতীয় খাদ্যের সাথে সরাসরিভাবে এবং<br />\r\n৩। ইউরিয়া মোলাসেস বুকের মাধ্যমে<br />\r\n<br />\r\n<strong>খড়ের সাথে মিশিয়ে ইউরিয়া খাওয়ানোর নিয়ম</strong><br />\r\nখড় প্রক্রিয়াজাতকরণ ১০ কেজি খড় ১০ কেজি পানি এবং ৫০০ গ্রাম ইউরিয়া বায়ুরোধী বড় বাঁশের ডোল (পাত্রবিশেষ) বা ইটের তৈরি হাউজে ৭-১০ দিন আবদ্ধ বায়ুরোধী অবস্থায় রেখে দিতে হবে।<br />\r\nতারপর ঐ খড় বের করে রৌদ্রে শুকিয়ে নিতে হবে যেন ইউরিয়া তীব্র গন্ধ কিছুটা কমে আসে। এই খড় গরু প্রথমে না খেলে কিছুটা চিড়াগুড় মিশিয়ে দেয়া যেতে পারে (২০০-৫০০ গ্রাম) গরুকে প্রথমে দৈনিক ৫ গ্রাম থেকে শুরু করে সবের্াচ্চ ৫০-৬০ গ্রাম ইউরিয়া খাওয়ানো যায়। ছোট গরুর ক্ষেত্রে ৩০-৪০ গ্রামের বেশী দৈনিক খাওয়ানো উচিত নয়।<br />\r\nদানাদার খাদ্যে ইউরিয়া ব্যবহার করে বিভিন্ন ওজনের গবাদি পশুর দৈনিক খাদ্যের তালিকা।<br />\r\n<br />\r\n<strong>১০০ কেজি দৈহিক ওজনের গবাদিপশুর খাদ্য তালিকা।</strong><br />\r\nধানের খড় = ২ কেজি<br />\r\nসবুজ ঘাস = ২ কেজি (ঘাস না থাকলে খড় ব্যবহার করতে হবে<br />\r\nদানদার খাদ্যে মিশ্রন = ১.২-২.৫ কেজি<br />\r\nইউরিয়া = ৩৫ গ্রাম (নিয়মানুযায়ী)<br />\r\nচিটাগুড়া = ২০০-৪০০ গ্রাম<br />\r\nলবণ = ২৫ গ্রাম<br />\r\nদানাদার খাদ্যের সাথে লবন, ইউরিয়া, চিটাগুড় এক সাথে মিশিয়ে দিনে ২ বার দিতে হবে। ধানের খড় এবং কাঁচা ঘাস ছোট ছোট করে কেটে এক সঙ্গে মিশিয়ে খাওয়ালে ভালো ফল পাওয়া যায়।<br />\r\n<br />\r\n<strong>১৫০ কেজি ওজনের গবাদিপশুর খাদ্য তালিকা</strong><br />\r\nখড় = ৩ কেজি<br />\r\nকাঁচা ঘাস = ৫-৬ কেজি<br />\r\nদানাদার খাদ্যের মিশ্রন = ১.৫-২ কেজি<br />\r\nচিটাগুড় = ৫০০ গ্রাম<br />\r\nইউরিয়া = ৪৫ গ্রাম (নিয়মানুয়ায়ী)<br />\r\nলবন = ৩৫ গ্রাম<br />\r\n<br />\r\n<strong>১৫০-২০০ কেজি ওজনের পশুর খাদ্য তালিকা</strong><br />\r\nধানের খড় = ৪ কেজি<br />\r\nকাঁচা ঘাস = ৫-৬ কেজি<br />\r\nদানাদার খাদ্যের মিশ্রন = ১.৫-২ কেজি<br />\r\nচিটাগুড় = ৫০০ গ্রাম<br />\r\nইউরিয়া = ৪৫ গ্রাম (নিয়মানুযায়ী)<br />\r\nলবন = ৩৫ গ্রাম<br />\r\n<br />\r\nমোটাতাজা করনের গরুকে সর্বক্ষণের জন্য পর্যাপ্ত পরিমাণ আঁশ জাতীয় খাবার (খড়, কাঁচা ঘাস) এবং বিশুদ্ধ পানি সরবরাহ করতে হবে। গবাদীপশুকে ইউরিয়া প্রক্রিয়াজাত খাবার প্রদানে কিছু কিছু সর্তকতা অবলম্বন করা উচিত।<br />\r\n<br />\r\n১। এক বছরের নিচে গরুকে ইউরিয়া খাওয়ানো যাবে না।<br />\r\n২। কখনও মাত্রাতিরিক্ত ইউরিয়া খাওয়ানো যাবে না<br />\r\n৩। গর্ভাবস্থায় ইউরিয়া খাওয়ানো যাবে না।<br />\r\n৪। অসুস্থ গরুকে ইউরিয়া খাওয়ানো যাবে না, তবে দূর্বল গরুকে পরিমাণের চেয়ে কম খাওয়ানো যেতে পারে।<br />\r\n৫। ইউরিয়া খাওয়ানোর প্রাথমিক অবস্থা (৭ দিন পর্যন্ত পশুকে ঠান্ডা ছায়াযুক্ত স্থানে বেঁধে রাখতে হবে এবং ঠান্ডা পানি দিয়ে নিয়মিত গোসল করাতে হবে। প্রকল্প মেয়াদ তিন মাস, শুরু হবে ইউরিয়া মিশ্রিত খাবার প্রদানের দিন থেকে।<br />\r\n<br />\r\nএই খবার খাওয়ানো শুরুর ১০-১৫ দিন পর হেমাটোপিন বিএস (১০এমএল) ইনজেকশন মাংসপেশীতে প্রয়োগ করলে মোটাতাজা করণ প্রক্রিয়া ত্বরান্বিত হয়।<br />\r\n<br />\r\nউল্লেখিত তিনটি পদ্ধতির মধ্যে খড়ের প্রক্রিয়াজাত করে ইউরিয়া খাওয়ানো সহজ, ব্যয় কম এবং ফল ভালো আসে। এই প্রকল্পগুলো বিভিন্ন বয়সী হতে পারে। যেমন ৩ বা ৪ মাস মেয়াদি। নির্ভর করছে খামারি কেনা গরুটি কি রকম মোটা করে কি দামে বিক্রি করবেন। দাম বেশি চাইলে প্রকল্প মেয়াদ দীর্ঘ হবে এবং কম চাইরে প্রকল্প মেয়াদ স্বল্প হবে। তবে অনেকেই ঈদের বাজারকে চিন্তা করে তার ৪/৫ মাস আগে থেকে প্রকল্প শুরু করেন।<br />\r\nতথ্য সূত্র: শাইখ সিরাজ রচিত &lsquo;মাটি ও মানুষের চাষবাস&rsquo; গ্রন্থ থেকে সংগ্রহীত</p>\r\n\r\n<h1>গরু মোটাতাজাকরণের প্রয়োজনীয় তথ্য</h1>\r\n\r\n<p>বাংলাদেশে কোরবানির মূল উপাদান হচ্ছে গরু। আর সেটা যদি হয় মোটাতাজা, নাদুস-নুদুস তবে আনন্দের সীমা থাকে না। এ উপলক্ষকে সামনে রেখে যারা গরু মোটাতাজাকরণে আগ্রহী তাদের আগে থেকেই প্রস্তুতি নেয়া দরকার। এজন্য দরকার গরু মোটাতাজাকরণে সঠিক ব্যবস্থাপনা। এটি কখন ও কিভাবে করলে বেশি লাভবান হওয়া যায় তার বৈজ্ঞানিক ও আধুনিক পদ্ধতি নিম্নে দেয়া হলো-<br />\r\n<br />\r\nঅধিক মাংস উৎপাদনের জন্য ২-৩ বছর বয়সের শীর্ণকায় গরুকে একটি নির্দিষ্ট সময়ের মধ্যে বিশেষ ব্যবস্থাপনায় খাদ্য সরবরাহ করে হৃষ্টপুষ্ট গরুতে রূপান্তরিত করাকে গরু মোটাতাজাকরণ বলে আখ্যায়িত করা হয়। এটির গুরুত্ব হচ্ছে- দরিদ্রতা হ্রাসকরণ, অল্প সময়ে কম পুঁজিতে অধিক মুনাফা অর্জন, অল্প সময়ের মধ্যে লাভসহ মূলধন ফেরত পাওয়া, প্রাণিজ আমিষের ঘাটতি পূরণ, স্বল্পমেয়াদি প্রযুক্তি হওয়ার কারণে পশু মৃত্যুর হার কম, কৃষিকার্য থেকে উৎপাদিত উপজাত পশুখাদ্য হিসেবে ব্যবহার করে সহজেই মাংস উৎপাদন করা, বেকার যুবকদের কর্মসংস্থানের সুযোগ সৃষ্টি করে আয় বৃদ্ধি করা।<br />\r\n<br />\r\nগরু মোটাতাজাকরণের আধুনিক ও বৈজ্ঞানিক পদ্ধতি সম্পর্কে বাংলাদেশ কৃষি বিশ্ববিদ্যালয়ের পশু পালন অনুষদের পশু বিজ্ঞান বিভাগের বিজ্ঞানী ও অধ্যাপক ড. মোহাম্মদ মুজাফফর হোসেন জানান-<br />\r\nপ্রয়োজনীয় উপাদান, পদ্ধতি ও মোটাতাজাকরণের সঠিক সময় : বয়সের ওপর ভিত্তি করে সাধারণত ৩ মাসের মধ্যে গরু মোটাতাজাকরণ করা যায়। অনেক সময় ৪-৬ মাসও লাগতে পারে। গরু মোটাতাজাকরণের জন্য সুবিধাজনক সময় হচ্ছে বর্ষা এবং শরৎকাল যখন প্রচুর পরিমাণ কাঁচা ঘাস পাওয়া যায়। চাহিদার ওপর ভিত্তি করে কোরবানি ঈদের কিছুদিন আগ থেকে গরুকে উন্নত খাদ্য ও ব্যবস্থাপনা দিয়ে মোটাতাজাকরণ লাভজনক।<br />\r\n<br />\r\n<strong>স্থান নির্বাচন :</strong>&nbsp;খামার স্থাপনের জন্য স্থান নির্বাচনে নিম্ন লিখিত বিষয়গুলো বিশেষ গুরুত্বপূর্ণ শুষ্ক ও উঁচু জায়গা হতে হবে, যাতে খামার প্রাঙ্গণে পানি না জমে থাকে। হ খোলামেলা ও প্রচুর আলো-বাতাসের সুযোগ থাকতে হবে। খামারে কাঁচামাল সরবরাহ ও উৎপাদিত দ্রব্যাদি বাজারজাতকরণের জন্য যোগাযোগ সুবিধা থাকতে হবে। পানি ও বিদ্যুৎ সরবরাহের সুষ্ঠু ব্যবস্থা থাকতে হবে। সুষ্ঠু নিষ্কাশন ব্যবস্থা থাকতে হবে, যেমন- পানি, মলমূত্র, আবর্জনা ইত্যাদি। ভবিষ্যতে প্রয়োজন হলে সম্প্রসারণের সুযোগ থাকতে হবে।<br />\r\n<br />\r\n<strong>গরু নির্বাচন :</strong>&nbsp;উন্নত দেশের মাংসের গরুর বিশেষ জাত রয়েছে। বিদেশি গরুর জন্য উন্নত খাদ্য ও ব্যবস্থাপনা প্রয়োজন। তাই দেশীয় গরু মোটাতাজাকরণ অধিক লাভজনক। ২-২.৫ বছরের গরুর শারীরিক বৃদ্ধি ও গঠন মোটাতাজাকরণের জন্য বেশি ভালো। এঁড়ে বাছুরের দৈহিক বৃদ্ধির হার বকনা বাছুরের চেয়ে বেশি হয়ে থাকে। তবে বাছুরের বুক চওড়া ও ভরাট, পেট চ্যাপ্টা ও বুকের সঙ্গে সমান্তরাল, মাথা ছোট ও কপাল প্রশস্ত, চোখ উজ্জ্বল ও ভিজা ভিজা, পা খাটো প্রকৃতির ও হাড়ের জোড়াগুলো স্ফীত, পাঁজর প্রশস্ত ও বিস্তৃত, শিরদাঁড়া সোজা হতে হবে।<br />\r\n<br />\r\n<strong>বাসস্থানের গঠন :</strong>&nbsp;গরুর বাসস্থান তৈরির জন্য খোলামেলা উঁচু জায়গায় গরুর ঘর তৈরি, একটি গরুর জন্য মাপ হতে হবে কমপক্ষে ১০-১২ বর্গফুট। ভিটায় ১ ফুট মাটি উঁচু করে এর ওপর ১ ফুট বালু দিয়ে ইট বিছিয়ে মেঝে মসৃণ করার জন্য সিমেন্ট, বালু ও ইটের গুঁড়া দিতে হবে। গরুর সামনের দিকে চাড়ি এবং পেছনের দিকে বর্জ্য নিষ্কাশনের জন্য নালা তৈরি করতে হবে। বাঁশের খুঁটি দিয়ে বেঁধে ওপরে ধারি অথবা খড় ও পলিথিন দিয়ে চালা দিতে হবে, ঘরের পাশে নিরাপদ পানির ব্যবস্থা করা দরকার। পাশাপাশি দাঁড়ানো গরুকে বাঁশ দিয়ে আলাদা করতে হবে যাতে একে অন্যকে গুঁতা মারতে না পারে। ঘরের চারপাশ চটের পর্দার ব্যবস্থা রাখতে হবে, যাতে অতি বৃষ্টি ও অতি ঠান্ডার সময় ব্যবহার করা যায়।<br />\r\n<br />\r\n<strong>খাদ্য :</strong>&nbsp;খাদ্যে মোট খরচের প্রায় ৬০-৭০ ভাগ ব্যয় হয়। তাই স্থানীয়ভাবে খরচ কমানো সম্ভব। এজন্য গরু মোটাতাজাকরণের একটি সুষম খাদ্য তালিকা নিচে দেয়া হলো-<br />\r\n<br />\r\n<strong>শুকনা খড় :</strong>&nbsp;২ বছরের গরুর জন্য দৈহিক ওজনের শতকরা ৩ ভাগ এবং এর অধিক বয়সের গরুর জন্য শতকরা ২ ভাগ শুকনা খড় ২-৩ ইঞ্চি করে কেটে এক রাত লালীগুড়-চিটাগুড় মিশ্রিত পানিতে ভিজিয়ে প্রতিদিন সরবরাহ করতে হবে। পানিঃচিটাগুড়=২০:১।<br />\r\n<br />\r\n<strong>কাঁচা ঘাস :</strong>&nbsp;প্রতিদিন ৬-৮ কেজি তাজা ঘাস বা শস্য জাতীয় তাজা উদ্ভিদের উপজাত দ্রব্য যেমন- নেপিয়ার, পারা, জার্মান, দেশজ মাটি কলাই, খেসারি, দুর্বা ইত্যাদি সরবরাহ করতে হবে।<br />\r\n<br />\r\n<strong>দানাদার খাদ্য :</strong>&nbsp;প্রতিদিন কমপক্ষে ১-২ কেজি দানাদার খাদ্য সরবরাহ করতে হবে। নিচে ১০০ কেজি দানাদার খাদ্যের তালিকা দেয়া হলো-<br />\r\nগম ভাঙা-গমের ভুসি ৪০ কেজি চালের কুঁড়া ২৩.৫ কেজি খেসারি বা যে কোনো ডালের ভুসি ১৫ কেজি তিলের খৈল-সরিষার খৈল ২০ কেজি লবণ ১.৫ কেজি।<br />\r\nউল্লিখিত তালিকা ছাড়াও বাজারে প্রাপ্ত ভিটামিন মিনারেল মিশ্রণ ১% হারে খাওয়াতে হবে। তাছাড়া বিভিন্ন রকমের ইউরিয়া মোলাসেস বক ব্যবহার করা যেতে পারে। এটি হচ্ছে ৩৯ ভাগ চিটাগুড়, ২০ ভাগ গমের ভুসি, ২০ ভাগ ধানের কুঁড়া, ১০ ভাগ ইউরিয়া, ৬ ভাগ চুন ও ৫ ভাগ লবণের মিশ্রণ।<br />\r\n<br />\r\n<strong>রোগ প্রতিরোধ ও চিকিৎসা :</strong>&nbsp;প্র্রতিদিন নিয়মিতভাবে পশুর গা ধোয়াতে হবে। গোশালা ও পার্শ&brvbar;বর্তী স্থান সর্বদা পরিষ্কার রাখতে হবে। নিয়মিতভাবে গরুকে কৃমিনাশক ট্যাবলেট খাওয়াতে হবে। বাসস্থান সর্বদা পরিষ্কার রাখতে হবে। স্বাস্থ্যসম্মত উপায়ে পরিমিত পরিমাণে পানি ও সুষম খাদ্য প্রদান করতে হবে। রোগাক্রান্ত পশুকে অবশ্যই পৃথক করে রাখতে হবে। খাবার পাত্র পরিষ্কার-পরিচ্ছন্ন রাখতে হবে। খামারের সার্বিক জৈব নিরাপত্তা রক্ষা করতে হবে। পশু জটিল রোগে আক্রান্ত হলে পশু চিকিৎসকের পরামর্শ নিতে হবে।<br />\r\n<br />\r\n<strong>বাজারজাতকরণ :</strong>&nbsp;মোটাতাজাকরণ গরু লাভজনকভাবে সঠিক সময়ে ভালো মূল্যে বাজারজাতকরণের ব্যবস্থা গ্রহণ হচ্ছে আরেকটি উল্লেখ্যযোগ্য বিষয়। বাংলাদেশে মাংসের জন্য বিক্রয়যোগ্য গবাদিপশুর বাজার মূল্যেও মৌসুমভিত্তিক হ্রাস-বৃদ্ধি ঘটে। কাজেই একজন প্রতিপালককে গরু মোটাতাজাকরণের জন্য অবশ্যই গরুর ক্রয় মূল্য যখন কম থাকে তখন গরু ক্রয় করে বিক্রয় মূল্যের ঊর্ধ্বগতির সময়ে বিক্রয়ের ব্যবস্থা নিতে হবে। সাধারণত কোরবানির ঈদের সময় গরুর মূল্য অত্যধিক থাকে এবং এর পরের মাসেই বাজার দর হ্রাস পায়। তাই এখন গরু মোটাতাজাকরণের উপযুক্ত সময়। স্বল্প সময়ে অধিক লাভবান হওয়ার সহজ এবং সুবিধাজনক উপায়ের মধ্যে গরু মোটাতাজাকরণ একটি অত্যন্ত যুগোপযোগী পদ্ধতি।<br />\r\n<br />\r\nকিন্তু প্রচলিত এবং অবৈজ্ঞানিক পদ্ধতিতে গরু মোটাতাজাকরণের তুলনায় আধুনিক ও বৈজ্ঞানিক পদ্ধতিতে গরু মোটাতাজাকরণ অধিক লাভজনক। সুতরাং কোরবানির ঈদকে সামনে রেখে আমাদের দেশের কৃষকরা যদি ওই পদ্ধতিতে গরু মোটাতাজাকরণ করতে পারে তাহলে প্রতি বছর কোরবানি ঈদের সময় গরু আমদানি কমানো সম্ভব হবে এবং এর ফলে দেশ আর্থিকভাবে বিরাট সফলতা লাভ করতে সক্ষম হবে।<br />\r\nলেখক: মো. শাহীন আলম</p>\r\n\r\n<h1>গ্রোথ হরমোনের ব্যবহার ছাড়া গরু মোটাতাজাকরণ</h1>\r\n\r\n<p>কোনোভাবেই ইনজেকশন বা কোনো গ্রোথ হরমোন ব্যবহার করে গবাদিপশু মোটাতাজাকরণের উদ্যোগ নেওয়া যাবে না। এন্টিবায়োটিকের ব্যবহার ছাড়াও স্বাভাবিক ও জৈব পদ্ধতিতেই গরু মোটাতাজাকরণ সম্ভব। এজন্য দরকার শুধু কিছু নিয়ম-কানুন মেনে চলা।<br />\r\nকোনো গ্রোথ হরমোন ব্যবহার ছাড়াই যেভাবে গবাদিপশুর বেশি মাংস নিশ্চিত করা যায়, সে সম্পর্কে কিছু পদ্ধতি স্বল্প পরিসরে আলোকপাত করা হল: অধিক মাংস উৎপাদনের জন্য ২ থেকে ৩ বছর বয়সের শীর্ণকায় গরুকে একটি নির্দিষ্ট সময়ের মধ্যে বিশেষ ব্যবস্থাপনায় খাদ্য সরবরাহ করে হৃষ্টপুষ্ট গরুতে রূপান্তরিত করাকে গরু মোটাতাজাকরণ বলে। এটির গুরুত্ব হচ্ছে- দারিদ্রতা হ্রাসকরণ, অল্প সময়ে কম পুঁজিতে অধিক মুনাফা অর্জন, অল্প সময়ের মধ্যে লাভসহ মূলধন ফেরত পাওয়া, প্রাণীজ আমিষের ঘাটতি পূরণ, স্বল্পমেয়াদি প্রযুক্তি হওয়ার কারণে পশু মৃত্যুর হার কম, কৃষিকার্য হতে উৎপাদিত উপজাত পশুখাদ্য হিসেবে ব্যবহার করে সহজেই মাংস উৎপাদন করা, বেকার যুবকদের কর্মসংস্থানের সুযোগ সৃষ্টি করে আয় বৃদ্ধি করা প্রভৃতি।<br />\r\n<br />\r\n<strong>মোটাতাজাকরণের জন্য প্রয়োজনীয় উপাদান পদ্ধতি:&nbsp;</strong>মোটাতাজাকরণের সঠিক সময়: বয়সের উপর ভিত্তি করে সাধারণত ৩ থেকে ৪ মাসের মধ্যে গরু মোটাতাজাকরণ করা যায়। অনেক সময় ৫ থেকে ৬ মাসও সময় লাগতে পারে। গরু মোটাতাজাকরণের জন্য সুবিধাজনক সময় হচ্ছে বর্ষা এবং শরৎকাল যখন প্রচুর পরিমাণ কাঁচাঘাস পাওয়া যায়। চাহিদার উপর ভিত্তি করে কোরবানী ঈদের ৫ থেকে ৬ মাস পূর্ব থেকে গরুকে উন্নত খাদ্য ও ব্যবস্থাপনা দিয়ে মোটাতাজাকরণ লাভজনক।<br />\r\n<br />\r\n<strong>স্থান নির্বাচন: গরু রাখার স্থান নির্বাচনে নিম্নলিখিত বিষয়গুলোর দিকে বিশেষ গুরুত্ব দিতে হবে:&nbsp;</strong>১. শুষ্ক ও উঁচু জায়গা হতে হবে, যাতে খামার প্রাঙ্গণে পানি না জমে থাকে<br />\r\n২. খোলামেলা ও প্রচুর আলো বাতাসের সুযোগ থাকতে হবে।<br />\r\n৩.খামারে কাঁচামাল সরবরাহ ও উৎপাদিত দ্রব্যাদি বাজারজাতকরণের জন্য যোগাযোগ সুবিধা থাকতে হবে<br />\r\n৪. পানি ও বিদ্যুৎ সরবরাহের সুষ্ঠু ব্যবস্থা থাকতে হবে;<br />\r\n৫. সুষ্ঠু পয়ঃনিষ্কাশন ব্যবস্থা থাকতে হবে। গরু নির্বাচন: উন্নত দেশের মাংসের গরুর বিশেষ জাত রয়েছে। বিদেশি গরুর জন্য উন্নত খাদ্য ও ব্যবস্থাপনা প্রয়োজন। তাই দেশীয় গরু মোটাতাজাকরণ অলাভজনক। ২ থেকে ২.৫ বছরের গরুর শারীরিক বৃদ্ধি ও গঠন মোটাতাজাকরণের জন্য বেশি ভাল। এঁড়ে বাছুরের দৈহিক বৃদ্ধির হার বকনা বাছুরের চেয়ে বেশি হয়ে থাকে। তবে বাছুরের বুক চওড়া ও ভরাট, পেট চ্যাপ্টা ও বুকের সাথে সমান্তরাল, মাথা ছোট ও কপাল প্রশস্ত, চোখ উজ্জ্বল ও ভেজা ভেজা, পা খাটো প্রকৃতির ও হাড়ের জোড়াগুলো স্ফীত, পাজর প্রশস্ত ও বিস্তৃত, শিরদাড়া সোজা হতে হবে। গরুর খাদ্যের ধরণ: খাদ্যে মোট খরচের প্রায় ৬০ থেকে ৭০ ভাগ ব্যয় হয়। তাই স্থানীয়ভাবে প্রাপ্ত খাদ্য দ্বারা খরচ কমানো সম্ভব।<br />\r\n<br />\r\n<strong>এজন্য গরু মোটাতাজাকরণের একটি সুষম খাদ্য তালিকা নিচে দেওয়া হল:&nbsp;</strong>ক) শুকনো খড়: দুই বছরের গরুর জন্য দৈহিক ওজনের শতকরা ৩ ভাগ এবং এর অধিক বয়সের গরুর জন্য শতকরা ২ ভাগ শুকনো খড় ২ থেকে ৩ ইঞ্চি করে কেটে একরাত লালীগুড়/চিটাগুড় মিশ্রিত পানিতে ভিজিয়ে প্রতিদিন সরবরাহ করতে হবে। পানি: চিটাগুড় = ২০ : ১।<br />\r\nখ) কাঁচাঘাস: প্রতিদিন ৬ থেকে ৮ কেজি তাজা ঘাস বা শস্যজাতীয় তাজা উদ্ভিদের উপজাত দ্রব্য যেমন- নেপিয়ার, পারা, জার্মান, দেশজ মাটি কালাই, খেসারি, দুর্বা ইত্যাদি সরবরাহ করতে হবে।<br />\r\nগ) দানাদার খাদ্য: প্রতিদিন কমপক্ষে ১ থেকে ২ কেজি দানাদার খাদ্য সরবরাহ করতে হবে।<br />\r\n<br />\r\n<strong>নিচে ১০০ কেজি দানাদার খাদ্যে তালিকা দেওয়া হল:&nbsp;</strong>১. গম ভাঙা/গমের ভূসি-৪০ কেজি;<br />\r\n২. চালের কুঁড়া-২৩.৫ কেজি;<br />\r\n৩. খেসারি বা যেকোনো ডালের ভূসি-১৫ কেজি:<br />\r\n৪. তিলের খৈল/সরিষার খৈল-২০ কেজি; লবণ-১.৫ কেজি।<br />\r\nতাছাড়াও বিভিন্ন রকমের ইউরিয়া মোলাসেস ব্লক ব্যবহার করা যেতে পারে। এটি হচ্ছে ৩৯ ভাগ চিটাগুড়, ২০ ভাগ গমের ভূসি, ২০ ভাগ ধানের কুঁড়া, ১০ ভাগ ইউরিয়া, ৬ ভাগ চুন ও ৫ ভাগ লবণের মিশ্রণ।<br />\r\n<br />\r\n<strong>রোগ প্রতিরোধ ও চিকিৎসা:&nbsp;</strong>ক. প্রতিদিন নিয়মিতভাবে পশুর গা ধোয়াতে হবে;<br />\r\nখ. গো-শালা ও পার্শ্ববর্তী স্থান সর্বদা পরিস্কার রাখতে হবে:<br />\r\nগ. নিয়মিতভাবে গরুকে কৃমিনাশক ট্যাবলেট খাওয়াতে হবে;<br />\r\nঘ. বাসস্থান সর্বদা পরিস্কার রাখতে হবে।<br />\r\nঙ. স্বাস্থ্যসম্মত উপায়ে পরিমিত পরিমাণে পানি ও সুষম খাদ্য প্রদান করতে হবে।<br />\r\nচ. রোগাক্রান্ত পশুকে অবশ্যই পৃথক করে রাখতে হবে।<br />\r\nছ. খাবার পাত্র পরিস্কার-পরিচ্ছন্ন রাখতে হবে।<br />\r\nজ. খামারের সার্বিক জৈব নিরাপত্তা রক্ষা করতে হবে।<br />\r\nঝ. পশু জটিল রোগে আক্রান্ত হলে পশুচিকিৎসকের পরামর্শ নিতে হবে।</p>', 'image/11.jpg', 'icon_img/cow.png', 3, 1),
(4, 'টমেটো চাষ করার পদ্ধতি এবং গাছের পরিচর্যা', '<p>টমেটো ভিটামিনসমৃদ্ধ বেগুন পরিবারের একটি প্রধান শীতকালীন সবজি। বাংলাদেশে যেসব সবজি চাষ করা হয় তার মধ্যে টমেটো অন্যতম। টমেটোতে ফলের সব গুণাগুণই রয়েছে। টমেটো একটি অত্যন্ত পুষ্টিকর সবজি। টমেটো দেহের রোগ প্রতিরোধ ক্ষমতা বাড়ায়। আসুন জেনে নেই টমেটো চাষ করার পদ্ধতি।</p>\r\n\r\n<h2>টমেটো চাষে প্রয়োজনীয় জলবায়ু ও মাটি</h2>\r\n\r\n<p>টমেট চাষের জন্য মাঝারি উষ্ণ ও শুষ্ক পরিবেশ দরকার। সব ধরনের মাটিতে টমেটোর চাষ করা যায়। আলো-বাতাসযুক্ত উর্বর দোঁআশ মাটি টমেটো চাষের জন্য সবচেয়ে ভাল। তবে উপযুক্ত পরিচর্যায় বেলে দোঁআশ থেকে এটেল দোঁআশ সব মাটিতেই টমেটো ভাল জন্মে। টমেটোর ফল ধরার জন্য দিনের তাপমাত্রা ২৫ থেকে ৩০ ডিগ্রি সেন্টিগ্রেড এবং রাত্রিকালীন তাপমাত্রা ১৫ থেকে ২০ ডিগ্রি সেন্টিগ্রেড থাকা প্রয়োজন। তাই বাংলাদেশে শীতকালে টমেটো চাষের জন্য উপযুক্ত সময়। বন্যার সময় পলি জমে এমন জমিতে এর ফলন সরচেয়ে ভাল হয়। মাটির অ্&zwnj;ম্লতা বেশী হলে জমিতে চুন প্রয়োগ করা উচিত। আর্দ্র &nbsp;পরিবেশে টমেটো বিভিন্ন রোগে আক্রান্ত হয় বলে সেচের সুবিধা আছে এমন উঁচু এলাকায় টমেটোর ফলন ও গুণাগুণ অপেক্ষাকৃত ভালো।&nbsp;</p>\r\n\r\n<h2>টমেটো এর উল্লেখযোগ্য জাত</h2>\r\n\r\n<p>আমাদের দেশে চাষ করার মত টমেটোর অনেক জাত রয়েছে। তবে মৌসুম অনুসারে টমেটোর জাতকে বিভিন্ন ভাগে ভাগ করা হয়ছে। এরমধ্যে আগাম জনপ্রিয় জাতসমূহ হলোঃ বারি টমেটো ৪, বারি টমেটো ৫ ইত্যাদি। টমেটোর নাবি মৌসুমি জাতসমূহ হলোঃ বাহার, রোমা ভিএফ, সুরক্ষা, রাজা ইত্যাদি। মাঝ মৌসুমি জাতসমূহ হল মানিক, মহুয়া, রতন, বারি টমেটো-৩, বারি টমেটো-৬, , বারি টমেটো-৭, , বারি টমেটো-৯ ইত্যাদি। এছাড়াও গ্রীষ্মকালীন কিছু টমেটোর জাত রয়েছে। তাঁর মধ্যে রয়েছে শ্রাবণী, বারি টমেটো-৪, বারি টমেটো-১০ ইত্যাদি। এছাড়াও অন্যান্য জাতের মধ্যে রয়েছে হীরা, মারগ্লোব, রূপালি, সাথী, সবল, মিন্টু, লাভলী, ডেলট ইত্যাদি।&nbsp;</p>\r\n\r\n<h2>কিভাবে টমেটোর চারা তৈরি করবেন</h2>\r\n\r\n<p>সবল চারা উৎপাদনের জন্য প্রথমে ৫০ গ্রাম সুস্থ বীজ ঘন করে প্রতিটি বীজতলায় (১ মিটার x ৩ মিটার) বুনতে হবে। শুকনা মাটিতে বীজ বপন করে সেচ দেয়া উচিত নয়, এতে মাটির চটা বেঁধে চারা গজাতে ও বাতাস চলাচলে অসুবিধা সৃষ্টি করতে পারে। তাই সেচ দেয়া মাটির জো অবস্থা এলে বীজ বপন করতে হয়। টমেটোর আগাম জাতের বীজ বপনের উপযুক্ত সময় হল জুলাই মাস থেকে সেপ্টেম্বর মাস। মাঝ মৌসুমি জাত সেপ্টেম্বর থেকে অক্টোবর মাস। এবং নাবী জাতের ক্ষেত্রে সময় হল জানুয়ারী মাস। তবে টমেটো বীজ লাগানোর পূর্বে টমেটর বীজকে শোধন করে নিতে হবে। একটি গ্লাসে আধা গ্লাস ঠাণ্ডা পানি নিয়ে আধা গ্লাস সদ্য ফুটন্ত পানি মিশিয়ে নিয়ে সেই পানির তাপমাত্রা মোটামুটি ৫০ ডিগ্রি সেন্টিগ্রেড হবে। সেই গরম পানিতে টমেটোর বীজ ৩০ মিনিট ভিজিয়ে রাখলে রোগজীবাণু মরে যায়।&nbsp;</p>\r\n\r\n<p>অথবা টমেটোর বীজ বীজতলায় বপনের আগে প্রতি কেজি বীজে ২.৫ গ্রাম প্রোভেক্স বা ক্যাপটান বা ব্যাভিষ্টিন(Bavistin) ব্যবহার করে বীজ শোধন করা যায়। বীজ বপনের ৪ ঘণ্টা আগে প্রয়োজনমতো পানিতে বীজ ভিজিয়ে রাখা এবং নির্দিষ্ট পরিমাণ ছত্রাকনাশক পানিতে মিশিয়ে দেয়া হয়। বীজ বপনের ২ ঘণ্টা আগে বীজের পানি সেঁকে বীজকে ঝরঝরা করে তারপর বীজতলায় বপন করা হয়। বীজ শোধনের ফলে চারার বিভিন্ন ধরনের রোগ থেকে রক্ষা করা সম্ভব। রোদযুক্ত উঁচু জায়গা পরিষ্কার করে ভালভাবে মাটি চাষ দিয়ে বীজতলা তৈরি করতে হবে। অতিরিক্ত বৃষ্টি ও রোদের হাত থেকে রক্ষা করতে প্রয়োজন পলিথিন ও চাটাই এর আচ্ছাদন ব্যবহার করতে হবে। প্রতিশতক জমিতে চারা রোপণের জন্য মাত্র ১ গ্রাম বীজ বুনতে হবে।&nbsp;</p>\r\n\r\n<h2>টমেটো চাষের উপযুক্ত জমি তৈরি ও চারা রোপন</h2>\r\n\r\n<p>টমেটো ক্ষেতে ভালো ফলন অনেকটাই নির্ভর করে জমি তৈরি করার উপর। জমি ৪ থেকে ৫ বার চাষ এবং মই দিয়ে মাটি ঝুরঝুরে করে তৈরি করে নিতে হবে। জমি তৈরি করার পর সেচ দেওয়ার সুবিধার জন্য দু&acute;টি বেডের মাঝে ৩০ সে.মি. নালা রাখতে হবে। চারার বয়স ৩০-৩৫ দিন অথবা ৪-৬ পাতা বিশিষ্ট হলে জমিতে রোপণ করতে হবে। বীজতলা থেকে চারা অত্যন্ত যত্নসহকারে তুলতে হবে যেন চারার শিকড় ক্ষতিগ্রস্ত না হয় এবং কিছু মাটিসহ চারা ওঠাতে হবে। প্রতিটি বেডে দুই সারি করে চারা রোপণ করতে হবে। এক সারি থেকে অন্য সারির দূরত্ব ৬০ সে.মি. রাখতে হবে। এ জন্য চারা তোলার আগে বীজতলার মাটি ভিজিয়ে নিতে হবে। নভেম্বর থেকে জানুয়ারি মাস পর্যন্ত চারা রোপণ করা যায়। বিকালের পড়ন্ত রোদে চারা রোপণ করাই উত্তম এবং লাগানোর পর গোড়ায় হালকা সেচ প্রদান করতে হবে। চারা লাগানোর কয়েক দিন পর পর্যন্ত গাছে নিয়মিত পানি সেচ দিতে হবে।&nbsp;</p>\r\n\r\n<h2>টমেটো চাষে সার প্রয়োগ/ব্যবস্থাপনা</h2>\r\n\r\n<p>গুণগত মানসম্পন্ন ভালো ফলন পেতে হলে টমেটো চাষের জমিতে যতটুকু সম্ভব জৈব সার প্রয়োগ করতে হবে। সম্পূর্ণ গোবর, টিএসপি, এমপি, মাত্রার বা ভেদের অর্ধেক ইউরিয়া সার শেষ চাষের সময় জমিতে ছিটিয়ে দিতে হবে। বাকি অর্ধেক ইউরিয়া সার সমান দুই কিস্তিতে চারা লাগানোর ১৫ ও ৩০ দিন পর প্রয়োগ করতে হবে। শেষ চাষের সময় প্রতিশতক জমির জন্য ২০ কেজি গোবর সার, ৩০০ থেকে ৪০০ গ্রাম এমওপি সার ও ৫০০ গ্রাম থেকে ১ কেজি টিএসপি সার জমিতে ছিটিয়ে দিতে হবে। টমেটো ক্ষেতে তিন কিস্তিতে ইউরিয়া সার প্রয়োগ করেতে হবে।&nbsp;</p>\r\n\r\n<p>চারা রোপনের ২৫ দিন পর দ্বিতীয় কিস্তিতে সার প্রয়োগ করতে হবে। এরপরও যদি সারের ঘাটতি থাকে তাহলে জিপসাম, জিংক সালফেট, বোরিক এসিড পাউডার ও ম্যাগনেশিয়াম সালফেট সারও ব্যবহার করতে হবে। গুণগত মানসম্পন্ন ভালো ফলন পেতে হলে টমেটো চাষের জমিতে যতটুকু সম্ভব জৈব সার প্রয়োগ করতে হবে।</p>\r\n\r\n<h2>টমেটো ক্ষেতে সেচ ও পানি নিষ্কাশন</h2>\r\n\r\n<p>শুষ্ক মৌসুমে চাষ করলে টমেটোতে পানি সেচ দেয়া প্রয়োজন। ফসল ও মাটির অবস্থা বিবেচনা করে তিনবার সেচ দেয়া যেতে পারে। বৃষ্টির পানি নিকাশের ব্যবস্থা করতে হবে। টমেটোর চারা লাগানোর পর প্রথম সপ্তাহে প্রায় প্রতিদিন বিকাল বেলা সেচ দিতে হবে। এরপর প্রয়োজনে প্রতি &nbsp;সপ্তাহে বা ১৫ দিন পর পর একবার সেচ দিতে হবে। বর্ষা মৌসুমে তেমন একটা সেচের প্রয়োজন হয় না। টমেটো গাছ জলাবদ্ধতা সহ্য করতে পারে না।</p>\r\n\r\n<h2>টমেটো ক্ষেতে আগাছা ও নিড়ানি</h2>\r\n\r\n<p>টমেটোর জমি নিয়মিত পরিষ্কার করতে হবে। প্রথম ও দ্বিতীয় কিস্তির সার প্রয়োগের আগে পার্শ্বকুশিসহ মরাপাতা ছাটাই করে দিতে হবে। হরমোন প্রয়োগ সুবিধা এবং বাতাসে যেন হেলে না পড়ে সেজন্য বাঁশের কঞ্চি দ্বারা ঠেকনা দিতে হবে। প্রতিটি সেচের পরে মাটির উপরি ভাগের চটা বা চাকামাটি ভেঙে দিতে হবে যাতে মাটিতে পর্যাপ্ত বাতাস চলাচল করতে পারে।</p>\r\n\r\n<h2>পোকামাকড় ও রোগদমন</h2>\r\n\r\n<p>টমেটো ক্ষেতে বিভিন্ন ধরণের পোকার আক্রমণ হয়ে থাকে। এর মধ্যে কিছু পোকা আছে অত্যন্ত ক্ষতিকর। যেমন ফল ছিদ্রকারী পোকা, কাটুই পোকা, পাতা সুড়ঙ্গকারী পোকা, বিছা পোকা, এফিড বা জাব পোকা, শ্যামা পোকা, ছাতরা পোকা এবং থ্রিপস পোকা। ভাইরাস রোগ হলে নির্দিষ্ট পোকা শনাক্ত করতে হবে এবং সেই অনুযায়ী ব্যবস্থা নিতে হবে। আর যদি গাছ বেশি আক্রান্ত হয় তাহলে গাছ তুলে ফেলে দিতে হবে।&nbsp;</p>\r\n\r\n<p>টমেটোর চারা লাগানোর ২ থেকে ৩ মাসের মধ্যে টমেটো পাকতে শুরু করে। টমেটো পাকা অথবা কাঁচা উভয়ভাবে সংগ্রহ করা যায়। পুষ্ট ও রোগবালাই মুক্ত টমেটো সংগ্রহ করতে হবে। ফলের নিচে ফুল ঝরে যাওয়ার পর যে দাগ থাকে ঐ স্থান থেকে লালচে ভাব শুরু হলেই বাজারজাতকরণের জন্য ফল সংগ্রহ করতে হবে। এতে ফল অনেকদিন পর্যন্ত সংরক্ষণ করা যায়।</p>\r\n\r\n<h2>ফলন</h2>\r\n\r\n<p>সময়মত সুষ্টু পরিচর্যার মাধ্যমে একর প্রতি ১০ থেকে ১৫ মেট্রিক টন টমেটোর ফলন পাওয়া যায়।</p>', 'image/14.jpg', 'icon_img/vegetable.png', 3, 1),
(5, 'আঙ্গুরের  চাষ পদ্ধতি এবং গাছের পরিচর্যা', '<p>আঙ্গুর প্রায় সবারই পছন্দের একটি&nbsp;ফল। অন্যান্য ফলের চেয়ে আঙ্গুরের দামও বেশি। সুস্বাদু এই আঙ্গুর ফল দিয়ে ওয়াইন, রস, এবং জেলি-জ্যাম ইত্যাদি তৈরি করা ছাড়াও বাইরের বিভিন্ন দেশের নানারকম মুখরোচক রান্নায় এর ব্যবহার হয়। এছাড়াও আঙ্গুর শুকিয়ে কিশমিশ তৈরি হয়।</p>\r\n\r\n<p><strong>আঙ্গুরের পুষ্টি উপাদানঃ&nbsp;</strong>আঙ্গুরে রয়েছে প্রচুর পরিমাণে ভিটামিন। এগুলোর মধ্যে রয়েছে বি ১, সি, কে ভিটামিন অন্যতম। এছাড়াও আছে পর্যাপ্ত পরিমাণে পটাশিয়াম ও খনিজ পদার্থ ম্যাঙ্গানিস। আঙ্গুর শুকিয়ে সাধারণত তৈরি হয় কিশমিশ এবং কিশমিশে রয়েছে ৬০ শতাংশ ফ্রুকটোজ।</p>\r\n\r\n<p><strong>জাতঃ&nbsp;</strong>আমাদের দেশে এ যাবত ৩ টি উৎপাদনশীল আঙ্গুর গাছের জাত নির্বাচন করা হয়েছে। (১) জাককাউ (২) ব্ল্যাক রুবী ও (৩) ব্ল্যাক পার্ল। তিনটি জাতই গ্রীষ্মকালীন এবং পরে তিনটি রঙের রূপান্তরিত হয়ে যথাক্রমে হালকা বাদামি, কালো ও করমচা রং ধারণ করে। ফলন আসতে সময় লাগে প্রায় দু&rsquo;বছর।</p>\r\n\r\n<p><strong>জমি নির্বাচনঃ&nbsp;</strong>আঙ্গুর চাষের জন্য দো-আঁশযুক্ত লালমাটি, জৈবিক সার সমৃদ্ধ কাঁকর জাতীয় মাটি এবং পাহাড়ের পাললিক মাটিতে আঙ্গুর চাষ ভাল হয়। জমি অবশ্যই উঁচু হ&rsquo;তে হবে যেখানে পানি দাঁড়িয়ে থাকবে না এবং প্রচুর সূর্যের আলো পড়বে এমন জায়গা আঙ্গুর চাষের জন্য নির্বাচন করতে হবে।</p>\r\n\r\n<p><strong>জমি তৈরি ও রোপণ পদ্ধতিঃ</strong>&nbsp;ভালোভাবে চাষ দিয়ে মাটি ঝুরঝুর করতে হবে। তারপর ৭০ X ৭০ X ৭০ সে. মি. মাপের গর্ত করে তাতে ৪০ কেজি গোবর, ৪০০ গ্রাম পটাশ, ৫০০ গ্রাম ফসফেট এবং ১০০ গ্রাম ইউরিয়া গর্তের মাটির সাথে মিশিয়ে ১০/১৫ দিন রেখে দিতে হবে। যেন সারগুলো ভালোভাবে মাটির সাথে মিশে যায়। তারপর সংগৃহীত চারা গোড়ার মাটির বলসহ গর্তে রোপণ করে একটি কাঠি গেড়ে সোজা হয়ে ওঠার সুযোগ করে দিতে হবে এবং হালকা পানি সেচ দিতে হবে। শাখা-কলমের বেলায় প্রায় ১ ফুট দীর্ঘ শাখা-খন্ডের ১/৩ অংশ মাটির নিচে কাত করে পুঁতলে ভালো হয়। আঙ্গুর চারা লাগানোর উপযুক্ত সময় মার্চ-এপ্রিল মাস।</p>\r\n\r\n<p><strong>সার প্রয়োগ</strong><strong>:&nbsp;</strong>রোপণের ১ মাসের মধ্যে বাড়বাড়তি না হ&rsquo;লে গোড়ার মাটি আলগা করে তাতে ৫ গ্রাম ইউরিয়া সার উপরি প্রয়োগ করা দরকার। ১-৩ বছরের প্রতিটি গাছে বছরে ১০ কেজি গোবর, ৪০০ গ্রাম পটাশ, ৫০০ গ্রাম ফসফেট এবং ১০০ গ্রাম ইউরিয়া প্রয়োগ করতে হবে। পটাশ সার ব্যবহারে আঙ্গুর মিষ্টি হয় এবং রোগ বালাইয়ের উপদ্রব কম হয়। বয়স্ক গাছের জন্য প্রতি বছর এপ্রিল মাসে দুই কেজি তেলের খৈল, এক কেজি হাড় চূর্ণ এবং এক পোয়া সালফেট অব পটাশ ব্যবহার করা যায়।</p>\r\n\r\n<p><strong>আঙ্গুর গাছের পরিচর্যা</strong><strong>:</strong></p>\r\n\r\n<p><strong>গাছের কান্ড ছাঁটাই</strong><strong>:&nbsp;</strong>রোপণের পরবর্তী বছরের ফেব্রুয়ারি মাসে মাচায় ছড়িয়ে থাকা আঙ্গুর গাছের কান্ড ছেঁটে দিতে হবে। কান্ড ছাঁটাইয়ের মাধ্যমে আঙ্গুর গাছের ফলন বৃদ্ধি হয় এবং ফুল ঝরে পড়া কমে যায়। ছাঁটাইয়ের ৭ দিন আগে এবং পরে গোড়ায় হালকা সেচ দিতে হয়। গাছ রোপণের পর মাচায় ওঠা পর্যন্ত প্রধান কাণ্ড ছাড়া অন্য সকল পার্শ্বের শাখা ভেঙ্গে ফেলতে হবে।</p>\r\n\r\n<p><strong>প্রথম ছাঁটাইঃ&nbsp;</strong>মাচায় কান্ড ওঠার ৩৫/৪৫ সে.মি. পর প্রধান কান্ডের শীর্ষদেশ কেটে দিতে হবে, যাতে ঐ কান্ডের দুই দিক থেকে দু&rsquo;টি করে চারটি শাখা গজায়।</p>\r\n\r\n<p><strong>দ্বিতীয় ছাঁটাইঃ&nbsp;</strong>গজানো চারটি শাখা বড় হয়ে ১৫-২০ দিনের মাথায় ৪৫/৬০ সে.মি. লম্বা হবে, তখন ৪ টি শীর্ষদেশ কেটে দিতে হবে, যেখান থেকে আরও পূর্বের ন্যায় দু&rsquo;টি করে ১৬টি প্রশাখা গজাবে।</p>\r\n\r\n<p><strong>তৃতীয় ছাঁটাইঃ&nbsp;</strong>এই ১৬টি প্রশাখা ১৫/২০ দিনের মাথায় ৪৫/৬০ সে.মি. লম্বা হবে, তখন আবার এদের শীর্ষদেশ কেটে দিতে হবে যাতে প্রতিটি প্রশাখার দু&rsquo;দিকে দু&rsquo;টি করে ৪ টি নতুন শাখা এবং এমনিভাবে ১৬ টি শাখা থেকে সর্বমোট ৬৪টি শাখা গজাবে। অবশ্য সর্বক্ষেত্রেই যে ৬৪ টি শাখা গজাবে এমন কোন কথা নেই। এই শাখার গিরার মধ্যেই প্রথমে ফুল এবং পরে এই ফুল মটর দানার মত আকার ধারণ করে আঙ্গুর ফলে রূপান্তরিত হবে। প্রথম বছর ফল পাবার পর শাখাগুলোকে ১৫/২০ সে.মি. লম্বা রেখে ফেব্রুয়ারী মাসে ছেঁটে দিতে হবে। ফলে বসন্তের প্রাক্কালে নতুন নতুন শাখা গজাবে এবং ফুল ধরবে। এই পদ্ধতি ৩/৪ বছর পর্যন্ত চলবে এবং ফলের স্থিতি লাভ করবে।</p>\r\n\r\n<p>আঙ্গুর গাছের বিভিন্ন পরিচর্যার মধ্যে একটি হলো ডাল ছাঁটাই। প্রতিবার ফুল ধরার পর ডাল বা শাখাটি পুরনো হয়ে যায় এবং ঐ ডাল বা শাখায় আর ফুল-ফল ধরে না। এসব পুরনো ডাল বা শাখা গাছে থাকলে নতুন শাখা-প্রশাখা গজায় না। বাংলাদেশের প্রেক্ষিতে প্রতি একরে ৪৩৬টি আঙ্গুর গাছে লাগানো যায়।</p>\r\n\r\n<p>আঙ্গুর ফল পুষ্ট হওয়ার পর পাকা অবস্থায় গাছ থেকে পাড়তে হয়। আগে পেড়ে ফেললে পরে আর পাকে না। অক্টোবর-নভেম্বর মাসে আঙ্গুর গাছ ছাঁটাই করলে মার্চ-এপ্রিলে ফল পাওয়া যায়। তবে দেরিতে ফল সংগ্রহ করলে আকাশ একটানা মেঘলা থাকা বা বৃষ্টির কারণে ফল টক হওয়ার সম্ভাবনা থাকে। কারণ গরমে আঙ্গুর ফলে চিনিজাতীয় পদার্থ বেড়ে যায়। ফল ঠিকমতো বড় ও মিষ্টি না হলে, ফল ধরার পর প্রতি লিটার পানিতে ৫০ মিলিলিটার ইথরেল ও ১০০ মিলিগ্রাম জিবারেলিক অ্যাসিড পাউডার (জিবগ্রো ৫জি বা বারান্টো-৮০%) একত্রে মিশিয়ে ১৫ দিন পরপর দুই থেকে তিনবার স্প্রে করলে উপকার পাওয়া যেতে পারে।</p>\r\n\r\n<p>বছরে দুবার ফুল আসে। মার্চ ও জুলাই মাসে তা আঙ্গুরে রূপান্তরিত হয়। আঙ্গুর পাকার সময় বৃষ্টি হবার সম্ভাবনা থাকায় মাচার উপরে পলিথিন সীট দিয়ে আবৃত করে দিতে হবে যাতে গাছে বৃষ্টির পানি না লাগে। লাগলে পাকা আঙ্গুর ফেটে যাবার সম্ভাবনা থাকে।</p>\r\n\r\n<p><strong>প্রতি বছর একটা নির্দিষ্ট সময়ে তিনটি পরিচর্যা নিয়মিতভাবে করতে হবে</strong><strong>:</strong></p>\r\n\r\n<p><strong>(ক)</strong>&nbsp;প্রতি বছর জানুয়ারী মাসের দ্বিতীয় সপ্তাহের মধ্যে গাছের গোড়ায় মাটি হালকাভাবে কুপিয়ে আলগা করে তাতে অনুমোদিত সার প্রয়োগ করে শুধুমাত্র একবার বেশি করে পানি দিতে হবে।</p>\r\n\r\n<p><strong>(খ)</strong>&nbsp;জানুয়ারী মাসের ৪র্থ সপ্তাহে ঘুমন্ত গাছের শাখা-প্রশাখা ছাঁটাই করে দিতে হবে। ছাঁটাইকৃত ডালগুলো কেটে পরে মাটিতে পুতে পানি দিলে পুনরায় নতুন গাছ হবে।</p>\r\n\r\n<p><strong>(গ)</strong>&nbsp;ফেব্রুয়ারী মাসের ১ম সপ্তাহে সামান্য গরম আরম্ভ হবার সাথে সাথে গাছের গোড়ায় পানি সেচ দিতে হবে, যে পর্যন্ত না বৃষ্টি হয়। পানি দেবার ১০ দিনের মধ্যে গাছে নতুন শাখা-প্রশাখা গজাবে এবং তাতে ফুল দেখা দিবে। যা পরবর্তীতে আঙ্গুরে রূপান্তরিত হবে।</p>', 'image/333812951120201.webp', 'icon_img/s1.png', 4, 1),
(6, 'ভুট্টা উৎপাদন কৌশল', '<p>আমাদের দেশে ভুট্টা বা কর্ন অত্যন্ত পরিচিত ও জনপ্রিয় একটি খাবার। ভুট্টার মোচা পুড়িয়ে খাবার প্রচলন চলে আসছে বহুকাল ধরেই। আধুনিক জীবনেও ভুট্টা তার নিজ গুণে ঠাঁই করে নিয়েছে নানা রূপে নানা স্বাদে। ভুট্টার খই বা পপকর্ন কখনও খায়নি অথবা খেয়ে পছন্দ করেনি এমন মানুষ আজকাল আর খুঁজে পাওয়া দুষ্কর। ক্লান্তিকর দীর্ঘ পথচলা কিংবা ট্রাফিক জ্যামে আটকে থাকার একঘেয়ে সময়গুলোকে কিছুটা বৈচিত্র্যময় করতে পপকর্ন ভালো সঙ্গী। বাচ্চাদের কাছে তো এটা&nbsp; সবসময়ই প্রিয়। আর সকালের নাশতায় কর্নফ্লেক্স সব ঋতুতে সব জায়গায় সব বয়সীদের জন্য&nbsp; উপযোগী। এছাড়াও ভুট্টা থেকে তৈরি হতে পারে নানা রকম রুটি, খিচুরি, ফিরনি, নাড়&ndash;সহ সুস্বাদু ও পুষ্টিকর বিভিন্ন খাবার। মজাদার চাইনিজ খাবার তৈরিতে অপিহার্য কর্নফ্লাওয়ার ভুট্টারই অবদান। ভুট্টা যেমন সুস্বাদু তেমনি স্বাস্থ্যকর। এতে রয়েছে ভিটামিন এ দৃষ্টিশক্তি বাড়াতে যার&nbsp; জুড়ি নেই। রক্তস্বল্পতা দূর করতে প্রয়োজনীয় আয়রন ও ভিটামিন বি ১২ এর ভালো উৎস ভুট্টা। ভুট্টার&nbsp; ভিটামিন এ সি ও লাইকোপিন ত্বকের স্বাস্থ্য ভালো রাখে। কোষ্ঠকাঠিন্য প্রতিরোধী ফাইবার এতে রয়েছে প্রচুর পরিমাণে, রয়েছে কার্বোহাইড্রেট যা শরীরে শক্তি জোগায়। ভুট্টা ডায়াবেটিস ও রক্তের&nbsp; উচ্চচাপ নিয়ন্ত্রণে সাহায্য করে, ক্যান্সারের ঝুঁকি কমায়, আমাদের হৃৎপি- ও কিডনির সুরক্ষা করে।&nbsp; চমৎকার স্বাদ আর পুষ্টিগুণে সমৃদ্ধ এ খাবারটি বাংলাদেশের আবহাওয়ায় সারা বছর ধরেই জন্মানো সম্ভব। এর ফলনও হয় অনেক বেশি। মানুষের খাবার শুধু নয় ভুট্টা গবাদিপশু, হাঁস-মুরগি কিংবা মাছের খাবার হিসেবেও উৎকৃষ্ট বলে&nbsp; এরই মধ্যে প্রমাণিত। হাঁস-মুরগি, মাছ ও গবাদিপশুর স্বাস্থ্য ভালো রাখতে ভুট্টার ভাঙা দানা ও গাছ&nbsp; অতুলনীয়। জ্বালানি হিসেবেও ভুট্টা গাছ ব্যবহার করা যায়। ভুট্টার চাহিদা তাই সময়ের সঙ্গে সঙ্গে বাড়ছে- বাড়ছে জমিতে ভুট্টা উৎপাদনে কৃষকের আগ্রহ। সঙ্গত কারণেই বাংলাদেশের কৃষি জমিতে&nbsp; খাদ্য শস্য হিসেবে ধান ও গমের পরের জায়গাটি এখন ভুট্টার দখলে। বিগত কয়েক বছরের পরিসংখ্যান লক্ষ্য করলে দেখা যায়, ধান ও গমের তুলনায় ভুট্টার উৎপাদন উত্তরোত্তর বৃদ্ধি পাচ্ছে।<br />\r\nঅল্প জমি থেকে অধিক ফলন এখন সময়ের দাবি। এ দাবি পূরণে সময় এসেছে ভুট্টা চাষে বাড়তি&nbsp; নজর দেয়ার।<br />\r\n<strong>জাত</strong><br />\r\nবাংলাদেশ কৃষি গবেষণা ইন্সটিটিউট এ পর্যন্ত ভুট্টার বেশ কিছু উন্নত জাত ও হাইব্রিড ভুট্টার জাত উদ্ভাবন করেছে। এগুলো হলো শুভ্রা, বর্ণালী, মোহর,&nbsp; খই ভুট্টা, বারি ভুট্টা-৫, বারি ভুট্টা-৬, বারি&nbsp; ভুট্টা-৭, বারি মিষ্টি ভুট্টা-১, বারি হাইব্রিড ভুট্টা-১,&nbsp; বারি হাইব্রিড ভুট্টা-২,&nbsp; বারি হাইব্রিড ভুট্টা-৩, বারি&nbsp; টপ ক্রস হাইব্রিড ভুট্টা-১, বারি হাইব্রিড ভুট্টা-৫, বারি হাইব্রিড ভুট্টা-৬, বারি হাইব্রিড ভুট্টা-৭, বারি&nbsp; হাইব্রিড ভুট্টা-৮, বারি হাইব্রিড ভুট্টা-৯, বারি হাইব্রিড ভুট্টা-১০, বারি হাইব্রিড ভুট্টা-১১, বারি বেবি&nbsp; কর্ন-১, বারি হাইব্রিড ভুট্টা-১২, বারি হাইব্রিড ভুট্টা-১৩।</p>\r\n\r\n<table border="" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan="2">\r\n			<p>ফসলের নাম</p>\r\n			</td>\r\n			<td colspan="6">\r\n			<p>উৎপাদনের পরিমাণ(লাখ মেট্রিক টন)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>২০১০-১১</p>\r\n\r\n			<p>অথবছর</p>\r\n			</td>\r\n			<td>\r\n			<p>২০১১-১২</p>\r\n\r\n			<p>অথবছর</p>\r\n			</td>\r\n			<td>\r\n			<p>২০১২-১৩</p>\r\n\r\n			<p>অথবছর</p>\r\n			</td>\r\n			<td>\r\n			<p>২০১৩-১৪</p>\r\n\r\n			<p>অথবছর</p>\r\n			</td>\r\n			<td>\r\n			<p>২০১৪-১৫</p>\r\n\r\n			<p>অথবছর</p>\r\n			</td>\r\n			<td>\r\n			<p>২০১৫-১৬</p>\r\n\r\n			<p>অথবছর</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>ধান(চাল)</p>\r\n			</td>\r\n			<td>\r\n			<p>৩৩৫.৪১</p>\r\n			</td>\r\n			<td>\r\n			<p>৩৩৮.৯</p>\r\n			</td>\r\n			<td>\r\n			<p>৩৩৮.৩৩</p>\r\n			</td>\r\n			<td>\r\n			<p>৩৪৩.৫৬</p>\r\n			</td>\r\n			<td>\r\n			<p>৩৪৭.১০</p>\r\n			</td>\r\n			<td>\r\n			<p>৩৪৯.৯৬</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>গম</p>\r\n			</td>\r\n			<td>\r\n			<p>৯.৭২</p>\r\n			</td>\r\n			<td>\r\n			<p>৯.৯৫</p>\r\n			</td>\r\n			<td>\r\n			<p>১২.৫৫</p>\r\n			</td>\r\n			<td>\r\n			<p>১৩.০২</p>\r\n			</td>\r\n			<td>\r\n			<p>১৩.৪৮</p>\r\n			</td>\r\n			<td>\r\n			<p>১৩.৪৮</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>ভুট্টা</p>\r\n			</td>\r\n			<td>\r\n			<p>১৫.৫২</p>\r\n			</td>\r\n			<td>\r\n			<p>১৯.৫৪</p>\r\n			</td>\r\n			<td>\r\n			<p>২১.৭৮</p>\r\n			</td>\r\n			<td>\r\n			<p>২৫.১৬</p>\r\n			</td>\r\n			<td>\r\n			<p>২৩.৬১</p>\r\n			</td>\r\n			<td>\r\n			<p>২৭.৫৯</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>পছন্দমতো জাত বেছে নিয়ে তা ভুট্টা চাষের উপযোগী জমিতে লাগাতে হবে। বেলে দো-অাঁশ ও দো-অাঁশ মাটি ভুট্টা চাষের জন্য ভালো। জমি এমন হতে হবে যেন পানি জমে না থাকে। বাংলাদেশের প্রেক্ষাপটে&nbsp; ভুট্টা বীজ বপনের উপযুক্ত সময় হলো রবি মৌসুমে মধ্য-আশ্বিন থেকে মধ্য অগ্রহায়ণ (অক্টোবর-নভেম্বর) এবং খরিফ মৌসুমে ফাল্গুন থেকে মধ্য-চৈত্র (মধ্য ফেব্রুয়ারি-মার্চ) পর্যন্ত।&nbsp; &nbsp;<br />\r\n<strong>বীজ বপনের হার ও দূরত্ব</strong><br />\r\nশুভ্রা, বর্ণালী ও মোহর জাতের ভুট্টার জন্য হেক্টরপ্রতি ২৫ থেকে ৩০ কেজি এবং খইভুট্টা জাতের জন্য&nbsp; ১৫ থেকে ২০ কেজি হারে বীজ প্রয়োজন হবে। ভুট্টার&nbsp; বীজ সারিতে বুনতে হয়। এক্ষেত্রে সারি থেকে সারির&nbsp; দূরত্ব ৭৫ সেন্টিমিটার এবং সারিতে ২৫ সেন্টিমিটার দূরত্বে ১টি অথবা ৫০ সেন্টিমিটার দূরত্বে দুইটি গাছ রাখতে হবে।<br />\r\n<strong>সার ব্যবস্থাপনা</strong><br />\r\nফসলের ভালো ফলনের জন্য সার ব্যবস্থাপনা গুরুত্বপূর্ণ। ভুট্টার ক&curren;েপাজিট জাতের জন্য প্রতি হেক্টরে রবি মৌসুমে ১৭২ থেকে ৩১২ কেজি এবং খরিফ মৌসুমে ২১৬ থেকে ২৬৪ কেজি ইউরিয়া সার প্রয়োজন হয়। হাইব্রিড জাতের জন্য রবি মৌসুমে এ চাহিদা ৫০০ থেকে ৫৫০ কেজি। ক&curren;েপাজিট জাতের জন্য প্রতি হেক্টরে&nbsp; টিএসপি, এমওপি, জিপসাম, জিংক সালফেট, বোরিক এসিড&nbsp; ও গোবর সার প্রয়োজন রবি মৌসুমে যথাক্রমে ১৬৮ থেকে ২১৬ কেজি, ৯৬ থেকে ১৪৪ কেজি, ১৪৪ থেকে ১৬৮ কেজি, ১০ থেকে ১৫ কেজি, ৫ থেকে ৭ কেজি ও ৪ থেকে ৬ টন এবং খরিফ মৌসুমে যথাক্রমে ১৩২ থেকে ২১৬ কেজি, ৭২ থেকে ১২০ কেজি, ৯৬ থেকে ১৪৪ কেজি, ৭ থেকে ১২ কেজি, ৫ থেকে ৭ কেজি ও ৪ থেকে ৬ টন। হাইব্রিড জাতের জন্য রবি মৌসুমে প্রয়োজন ২৪০ থেকে ২৬০ কেজি টিএসপি, ১৮০ থেকে ২২০ কেজি এমওপি, ২৪০ থেকে ২৬০ কেজি জিপসাম, ১০ থেকে ১৫ কেজি জিংক সালফেট, ৫ থেকে ৭ কেজি বোরিক এসিড এবং ৪ থেকে ৬ টন গোবর সার। জমি তৈরির শেষ পর্যায়ে মোট ইউরিয়ার এক তৃতীয়াংশ এবং অন্যান্য সারের সবটুকু ছিটিয়ে জমি চাষ দিতে হবে। বাকি&nbsp; ইউরিয়া সমান ২ ভাগ করে প্রথম কিস্তি বীজ গজানোর ২৫ থেকে ৩০ দিন পর এবং দ্বিতীয় কিস্তি বীজ গজানোর ৪০ থেকে ৫০ দিন পর উপরিপ্রয়োগ করতে হবে।<br />\r\n&nbsp;<strong>সেচ</strong><br />\r\nরবি মৌসুমে সেচ প্রয়োগ করলে ভুট্টার আশানুরূপ ফলন পাওয়া যাবে। বীজ বপনের ১৫ থেকে ২০ দিনের&nbsp; মধ্যে প্রথম সেচ, ৩০ থেকে ৩৫ দিনের মধ্যে দ্বিতীয় সেচ, ৬০ থেকে ৭০ দিনের মধ্যে তৃতীয় সেচ এবং ৮৫ থেকে ৮৯ দিনের মধ্যে চতুর্থ সেচ দেয়া যেতে পারে। ফুল ফোটা ও দানা বাঁধার সময়&nbsp; জমিতে পানি জমে থাকা ক্ষতিকর। চারা গজানোর ৩০ দিনের মধ্যে জমি থেকে অতিরিক্ত চারা তুলে ফেলতে হবে। জমিতে আগাছা দেখা দিলে দমনের ব্যবস্থা করতে হবে।<br />\r\n<strong>বালাই ব্যবস্থাপনা</strong><br />\r\nভুট্টায় সাধারণত যেসব রোগবালাইয়ের আক্রমণ দেখা যায় তার মধ্যে উল্লেখযোগ্য হলো বীজ পচা ও চারা গাছের রোগ। নানা রকম বীজ ও মাটিবাহিত ছত্রাকের কারণে এ রোগ হতে পারে। এ রোগ হলে&nbsp; ক্ষেতে ভুট্টা গাছের সংখ্যা কমে যায়। বর্ণালী ও মোহর জাত এ রোগ প্রতিরোধী। জমিতে পরিমিত&nbsp; রস&nbsp; ও তাপমাত্রায় (১৩ সেলসিয়াসের বেশি) বজায় রেখে এ রোগের প্রকোপ কমানো যায়। এছাড়াও সুস্থ সবল বীজ ব্যবহার এবং বীজ শোধন করে আক্রমণ প্রতিরোধ করা যায়। বীজ শোধনের জন্য থিরাম বা ভিটাভেক্স (০.২৫%) ২.৫ থেকে ৩.০ গ্রাম/কেজি হারে মিশিয়ে নিতে হবে।<br />\r\nপাতা ঝলসানো রোগ ভুট্টার আরেকটি ছত্রাকজনিত রোগ। আক্রান্ত গাছের নিচের দিকের পাতায় প্রথমে লম্বাটে ধূসর বর্ণের দাগ দেখা যায়। পরে গাছের উপরের অংশে তা বিস্তার লাভ করে। রোগের প্রকোপ বেশি হলে পাতা সময়ের আগেই&nbsp; শুকিয়ে যায়, শেষ পর্যন্ত গাছ মরে যায়। মোহর জাতটি এ রোগ প্রতিরোধী। এ রোগের জীবাণু অনেক দিন বেঁচে থাকে এবং বাতাসের সাহায্যে তা ছড়ায় বলে ফসল সংগ্রহের পর জমি থেকে আক্রান্ত গাছ সরিয়ে ফেলতে হবে। পুড়িয়ে ফেলতে পারলে ভালো হয়। রোগের আক্রমণ দেখা গেলে অনুমোদিত ছত্রাকনাশক ১৫ দিন পর পর ২ থেকে ৩ বার স্প্রে করতে হবে।<br />\r\nআরেকটি উল্লেখযোগ্য ছত্রাকজনিত রোগ মোচা ও দানা পচা রোগ যা ভুট্টার ফলন কমায় সেই সাথে কমায় বীজের গুণাগুণ ও খাদ্যমান। মোচার খোসা ও দানা বিবর্ণ হয়ে যায়। দানা অপুষ্ট থাকে ও বিকৃত হয়ে যায় এবং সেখানে ছত্রাকের উপস্থিতি অনেক সময় খালি চোখেই দেখা যায়। গাছে মোচা আসা থেকে পাকা পর্যন্ত সময়টায় যদি বৃষ্টিপাতের পরিমাণ বেশি থাকে তা হলে আক্রমণ বাড়ে। একই জমিতে বার বার ভুট্টা চাষ বর্জন করতে হবে কারণ&nbsp; জীবাণু বীজ অথবা আক্রান্ত গাছের পরিত্যক্ত অংশে বেঁচে থাকে। গাছ মাটিতে পড়ে গেলে এ রোগ বেড়ে যায় বলে এদিকে সতর্ক দৃষ্টি&nbsp; দিতে হবে। পরিপক্ব ভুট্টা দ্রুত সংগ্রহ করে পরিত্যক্ত অংশ পুড়িয়ে ফেলতে হবে। ভুট্টার কা- পচা রোগও বিভিন্ন প্রজাতির ছত্রাক ঘটিয়ে থাকে। এতে কা- পচে গিয়ে গাছ ভেঙে পড়ে। ছত্রাকনাশক দিয়ে বীজ শোধন করে লাগিয়ে এবং নাইট্রোজেন ও পটাশ পরিমিত মাত্রায় প্রয়োগ করে রোগের প্রাদুর্ভাব কমানো যায়। এছাড়াও ফসল সংগ্রহের পর পরিত্যক্ত অংশ পুড়িয়ে ফেলতে হবে। আক্রান্ত জমিতে অনুমোদিত ছত্রাকনাশক ২ থেকে ৩ বার স্প্রে করতে হবে।<br />\r\nপোকামাকড়ের আক্রমণ থেকে রক্ষা পেতেও সতর্ক হওয়া জরুরি। চারা অবস্থায় যদি কাটুই পোকার আক্রমণ দেখা দেয় তা হলে কীড়াগুলো মেরে ফেলতে হবে। ভোর বেলা কাটা গাছের গোড়া খুঁড়ে এদের মারা যায়। আরেকটা উপায় হচ্ছে সেচ দেয়া। তাহলে মাটির নিচে লুকিয়ে থাকা কীড়া মাটির ওপর আসে তখন পাখির সাহায্যে বা হাত দিয়ে মেরে এদের দমন করা যায়। কাটুই পোকার জন্য বালাইনাশক হিসেবে প্রতি লিটার পানির সঙ্গে ৫ মিলিলিটার ডারসবান/পাইরস ২০ ইসি মিশিয়ে চারা গাছের গোড়ায় স্প্রের করে মাটি ভিজিয়ে দিতে হবে। শক্ত কাণ্ডে মাজরা পোকার আক্রমণ দেখা দিলে&nbsp; মার্শাল ২০ ইসি বা ডায়াজিনন ৬০ ইসি প্রতি লিটার পানির সাথে ২ মিলিলিটার হারে মিশিয়ে পাতা ও কাণ্ড ভিজিয়ে স্প্রে করতে হবে।<br />\r\nভুট্টা পুষ্ট ও পরিপক্ব হলে সংগ্রহ করতে হবে। মোচা ৭৫ থেকে ৮০ শতাংশ পরিপক্ব হলে ভুট্টা সংগ্রহ করা যায়। ভুট্টার গড় ফলন হেক্টরপ্রতি কম্পোজিট জাতে গড়ে ৪ থেকে ৫.৫ মেট্রিক টন, হাইব্রিড জাতে ৮ থেকে ১১ মেট্রিক টন এবং খই ভুট্টার ফলন হেক্টরপ্রতি গড়ে ৩ থেকে ৪ মেট্রিক টন। বীজ হিসেবে ব্যবহার করার জন্য মোচার মাঝামাঝি অংশ থেকে বড় ও পুষ্ট দানা বেছে নিতে হবে। যত্নে উৎপাদন করা এ ভুট্টাকে আমাদের প্রতিদিনের খাদ্য তালিকাতেও অন্তর্ভুক্ত করতে হবে খুব যত্ন করে। খাদ্য ও পুষ্টি নিরাপত্তা অর্জন করে সমৃদ্ধি আনতে আমাদের হয়তো আর খুব বেশি দিন&nbsp; অপেক্ষা করতে হবে না।</p>', 'image/images.jpg', 'icon_img/s4.png', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_blogcategory`
--

CREATE TABLE `service_blogcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `ordering` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_blogcategory`
--

INSERT INTO `service_blogcategory` (`id`, `name`, `ordering`, `status`) VALUES
(1, 'চাষাবাদ', 0, 1),
(2, 'পোকামাকড়', 1, 1),
(3, 'ফসলের পুষ্টি', 0, 1),
(4, 'কৃষি উপকরন', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_blogcomment`
--

CREATE TABLE `service_blogcomment` (
  `id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `comment_date` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `blog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_blogs`
--

CREATE TABLE `service_blogs` (
  `id` int(11) NOT NULL,
  `blog_title` varchar(200) NOT NULL,
  `thumbnail_image` varchar(100) NOT NULL,
  `blog_image` varchar(100) NOT NULL,
  `blog_details` longtext NOT NULL,
  `posted_By` varchar(200) NOT NULL,
  `ordering` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `post_date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `blog_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_blogs`
--

INSERT INTO `service_blogs` (`id`, `blog_title`, `thumbnail_image`, `blog_image`, `blog_details`, `posted_By`, `ordering`, `views`, `post_date`, `status`, `blog_category_id`) VALUES
(1, 'Rising cattle supplies see beef export lifted', 'thumbnailimage/29.jpg', 'blog/4.jpg', '<p>Nunc aliquet, justo non commodo conguet, velici semi paluvinar denim, action bibendum purus selecao samuel eget libero. Maecenas ac viverra , sheta laoreet lacus. Etiam nisi diam, sagittis quam at mattis quam lorem, euismod dictum ante ornare eget. Nulla viverra suscipit sem deet suscipit. Suspendisse suscipit vulputate quis lacus non consectetur. Vestibulum odio nunc, lobortis vitae elit sed, sodales mollis urna. Curabitur trununc et nunc cursus, ustava vehicula ipsum molestie. Donec mattis mi et arcu ullamcorper blandit. Ut quis sagittis, interdum libero ut, elementum nunc. Integer placerat sapien sedoni ligula placerat laoreet. Aliquam sit amet varius arcu. Vivamus condimentum metus quis est finibus feugiat.</p>\r\n\r\n<p>Proin accumsan laoreet donald, a pretiumas dolor congue facilisis. Morbi eget convallis nisi. Sedoni blandit neque eu leo fringilla semper. Donec sed arcu ut arcu sagittis ornare acdat ipsum. Fusces ut phareto augue, in placerat arcu. Utat erat sit mauris et turpis non dictum eleifend elit.</p>\r\n\r\n<p>Etiam faucibus vestibulum orci at euismod. Sedo sollicitudin justo esteran nibh egestas maximus. Nullam rutrum dolor velit, act accumsan denim commodo non.</p>\r\n\r\n<p><img alt="" src="img/bg-img/37.jpg" /></p>\r\n\r\n<p>Morbi eget convallis nisi. Sed blandit neque eu leo fringilla semper. Donec sedan arcu utarcu sagittis ornare ac at ipsum. Fusce ut pharetra auguet, int placerat arcu. Ut at erat sit amet ligulan pharetra scelerisque nec et justo. Mauris etsa turpis nonta Maecenas imperdiet pulvinar magna, vel feugiat</p>\r\n\r\n<blockquote>\r\n<p><img alt="" src="img/core-img/quote.png" /></p>\r\n\r\n<h5>&quot;Browsing our local farmer&#39;s market is one of my family&#39;s favorite weekend activities. Make it a relaxing, healthful habit for your family, and you&#39;ll reap the nutritional rewards.&quot;</h5>\r\nSUZANNE SOMERS</blockquote>\r\n\r\n<p>Morbi ante diam, molestie at ligula at, placerat vehicula nulla. Etiam id laoreet eros. Proin rhoncus luctus vehicula. Donec et magna in urna faucibus porttitor et at nibh. Donec lobortis odio odio, eu mattis risus suscipit vitae. Sed quis justo action dui tristique vulputate. Sed accumsan leo tincidunt, volutpat massa sed, pharetra est. Praesent aliquet ut massa vestibulum maximus. Aenean orci eros, commodo volutpat ipsum in, laoreet lobortis lacus. Nulla tristique vestibul tortor id venenatis. Suspendisse varius molestie ligula in pulvinar. Nunc imperdiet nisl eu efficitur tincidunt.</p>\r\n\r\n<p>Nunc feugiat ultrices metus. Duis dapibus lacus vulputate, sodales justo molestie, luctus est. Suspendisse ultricies, tellus at consectetur imperdiet, ipsum felis pulvinar quam, id pharetra elit lectus eleifend tortor. Etiam tellus arcu, malesuda sit amet ipsum sed, pretium eleifend lacus. Curabitur ultrice leo purus, nec bibendum est ultrices vel nullam posuere diam ornare.</p>', 'Admin', 0, 14, '2020-05-01', 1, 4),
(2, 'Why innovation is key to maintaining our export market share', 'thumbnailimage/27.jpg', 'blog/11.jpg', '<p>Nunc aliquet, justo non commodo conguet, velici semi paluvinar denim, action bibendum purus selecao samuel eget libero. Maecenas ac viverra , sheta laoreet lacus. Etiam nisi diam, sagittis quam at mattis quam lorem, euismod dictum ante ornare eget. Nulla viverra suscipit sem deet suscipit. Suspendisse suscipit vulputate quis lacus non consectetur. Vestibulum odio nunc, lobortis vitae elit sed, sodales mollis urna. Curabitur trununc et nunc cursus, ustava vehicula ipsum molestie. Donec mattis mi et arcu ullamcorper blandit. Ut quis sagittis, interdum libero ut, elementum nunc. Integer placerat sapien sedoni ligula placerat laoreet. Aliquam sit amet varius arcu. Vivamus condimentum metus quis est finibus feugiat.</p>\r\n\r\n<p>Proin accumsan laoreet donald, a pretiumas dolor congue facilisis. Morbi eget convallis nisi. Sedoni blandit neque eu leo fringilla semper. Donec sed arcu ut arcu sagittis ornare acdat ipsum. Fusces ut phareto augue, in placerat arcu. Utat erat sit mauris et turpis non dictum eleifend elit.</p>\r\n\r\n<p>Etiam faucibus vestibulum orci at euismod. Sedo sollicitudin justo esteran nibh egestas maximus. Nullam rutrum dolor velit, act accumsan denim commodo non.</p>\r\n\r\n<p><img alt="" src="C:\\Users\\M.J.H Bappy\\Desktop\\krishikrishakhelp\\service\\static\\service\\img\\bg-img" /></p>\r\n\r\n<p>Morbi eget convallis nisi. Sed blandit neque eu leo fringilla semper. Donec sedan arcu utarcu sagittis ornare ac at ipsum. Fusce ut pharetra auguet, int placerat arcu. Ut at erat sit amet ligulan pharetra scelerisque nec et justo. Mauris etsa turpis nonta Maecenas imperdiet pulvinar magna, vel feugiat</p>\r\n\r\n<blockquote>\r\n<p><img alt="" src="img/core-img/quote.png" /></p>\r\n\r\n<h5>&quot;Browsing our local farmer&#39;s market is one of my family&#39;s favorite weekend activities. Make it a relaxing, healthful habit for your family, and you&#39;ll reap the nutritional rewards.&quot;</h5>\r\nSUZANNE SOMERS</blockquote>\r\n\r\n<p>Morbi ante diam, molestie at ligula at, placerat vehicula nulla. Etiam id laoreet eros. Proin rhoncus luctus vehicula. Donec et magna in urna faucibus porttitor et at nibh. Donec lobortis odio odio, eu mattis risus suscipit vitae. Sed quis justo action dui tristique vulputate. Sed accumsan leo tincidunt, volutpat massa sed, pharetra est. Praesent aliquet ut massa vestibulum maximus. Aenean orci eros, commodo volutpat ipsum in, laoreet lobortis lacus. Nulla tristique vestibul tortor id venenatis. Suspendisse varius molestie ligula in pulvinar. Nunc imperdiet nisl eu efficitur tincidunt.</p>\r\n\r\n<p>Nunc feugiat ultrices metus. Duis dapibus lacus vulputate, sodales justo molestie, luctus est. Suspendisse ultricies, tellus at consectetur imperdiet, ipsum felis pulvinar quam, id pharetra elit lectus eleifend tortor. Etiam tellus arcu, malesuda sit amet ipsum sed, pretium eleifend lacus. Curabitur ultrice leo purus, nec bibendum est ultrices vel nullam posuere diam ornare.</p>', 'Admin', 0, 1, '2020-05-01', 1, 2),
(3, 'Est id et cumque fuga Anim dicta et at commodi', 'thumbnailimage/6.jpg', 'blog/5.jpg', '<p>There are many reasons to start a blog for personal use and only a handful of strong ones for business blogging. Blogging for business, projects, or anything else that might bring you money has a very straightforward purpose &ndash; to rank your website higher in Google SERPs, a.k.a. increase your visibility.</p>\r\n\r\n<p>As a business, you rely on consumers to keep buying your products and services. As a new business, you rely on blogging to help you get to potential consumers and grab their attention. Without blogging, your website would remain invisible, whereas running a blog makes you searchable and competitive.</p>\r\n\r\n<p>So, the main purpose of a blog is to connect you to the relevant audience. Another one is to boost your traffic and send quality leads to your website.</p>\r\n\r\n<p>The more frequent and better your blog posts are, the higher the chances for your website to get discovered and visited by your target audience. This means that a blog is an effective lead generation tool. Add a great call to action (CTA) to your content, and it will convert your website traffic into high-quality leads. A blog also allows you to showcase your niche authority and build a brand.</p>\r\n\r\n<p>When you use your niche knowledge for creating informative and engaging posts, it builds trust with your audience. Great blogging makes your business look more credible, which is especially important if your brand is still young and fairly unknown. It ensures presence online and niche authority at the same time</p>', 'Quibusdam tenetur esse rerum in corrupti deserunt non tempor obcaecati delectus dolor voluptatibus rem qui ut eum', 1, 3, '2020-11-04', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `service_category`
--

CREATE TABLE `service_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(70) NOT NULL,
  `ordering` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_category`
--

INSERT INTO `service_category` (`id`, `category_name`, `ordering`, `status`) VALUES
(1, 'বাংলাদেশ কৃষি তথ্য', 7, 1),
(2, 'ফসল সমূহ', 1, 1),
(3, 'চাষাবাদ', 2, 1),
(4, 'পোকামাকড়', 0, 1),
(5, 'কৃষি উপকরন', 3, 1),
(6, 'ফসলের পুষ্টি', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_companyinfo`
--

CREATE TABLE `service_companyinfo` (
  `id` int(11) NOT NULL,
  `com_name` varchar(100) NOT NULL,
  `company_logo` varchar(100) NOT NULL,
  `staring_year` int(11) NOT NULL,
  `email1` varchar(100) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `website` varchar(200) NOT NULL,
  `mobile1` varchar(15) NOT NULL,
  `mobile2` varchar(15) NOT NULL,
  `address` longtext NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `pinterest` varchar(200) NOT NULL,
  `skype` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `Short Description` longtext NOT NULL,
  `com_story` longtext NOT NULL,
  `glg_map` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `story_video_link` longtext NOT NULL,
  `news` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_companyinfo`
--

INSERT INTO `service_companyinfo` (`id`, `com_name`, `company_logo`, `staring_year`, `email1`, `email2`, `website`, `mobile1`, `mobile2`, `address`, `facebook`, `twitter`, `pinterest`, `skype`, `youtube`, `Short Description`, `com_story`, `glg_map`, `status`, `story_video_link`, `news`) VALUES
(1, 'Krishi Krishak Help', 'company_logo/Farmer_help_update.jpg', 2021, 'test@gmail.com', '', '', '+880 1612345678', '', '120 Raymond Rd, Dhaka, Bangladesh', 'http://facebook.com/', 'http://facebook.com/', 'http://facebook.com/', 'krishi.krishak', 'http://facebook.com/', '<p>Lorem ipsum dolor sit amet, consecte stare adipiscing elit. In act honcus risus atiner Pellentesque risus.</p>', '<p><strong>কৃষি কৃষক হেল্পে আপনাকে স্বাগতম</strong></p>\r\n\r\n<p>&acute;<strong>কৃষি কৃষক হেল্পে</strong>&acute; এ আপনাকে স্বাগতম। কৃষি সম্প্রসারণ অধিদপ্তরের প্রযুক্তিগত সহযোগিতায় এ ওয়েব সাইটটি তৈরী করা হয়েছে। দেশের কৃষি উন্নয়নের লক্ষ্যে তথ্য যোগাযোগ প্রযুক্তি (ICT) ব্যবহারের মাধ্যমে আধুনিক কৃষি প্রযুক্তির দ্রুত সম্প্রসারণ ও কৃষি সংশ্লিষ্ট সকলের কাছে কৃষিতথ্য সহজলভ্যকরণের লক্ষ্যে ইনিশিয়েটিভ ফর টোট্যাল রিফর্ম (আইটিআর) গত ২০০৮ সালে বেসরকারী খাতে বাংলা ভাষায় এ বৃহত্তম কৃষি বিষয়ক ওয়েব সাইটটি চালু করে। গ্রিন সেভার্স দেশে পরিবেশ ও নগর কৃষি উন্নয়নে জনহিতকর বিভিন্ন কার্যক্রম পরিচালনা করে আসছে। নতুন বছরের শুরুতে &lsquo;কৃষিবাংলা ডট কম&rsquo; বৃহত্তর কলেবরে কৃষি ও পরিবেশ বিষয়ক তথ্য, প্রযুক্তি ও সেবা প্রদানকারী একটি টেকসই ওয়েব সাইট হিসেবে আত্নপ্রকাশ করেছে। ইনিশিয়েটিভ ফর টোট্যাল রিফর্ম (আইটিআর) ও গ্রিন সেভার্স যৌথভাবে &lsquo;কৃষিবাংলা ডট কম&rsquo; পরিচালনা করছে।</p>', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28313.28917392649!2d-88.2740948914384!3d41.76219337461615!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x880efa1199df6109%3A0x8a1293b2ae8e0497!2sE+New+York+St%2C+Aurora%2C+IL%2C+USA!5e0!3m2!1sen!2sbd!4v1542893000723', 1, '', 'আমাদের দেশে সাধারণত ঋতু বা মৌসুম ছটি। আর কৃষির মৌসুম তিনটি- খরিফ-১, খরিফ-২ ও রবি। উৎপাদনের ওপর ভিত্তি করে যদিও কৃষি মৌসুমকে তিনভাগে ভাগ করা হয়েছে, কিন্তু ভৌগোলিক অবস্থান, আবহাওয়া, জলবায়ু এবং আমাদের প্রয়োজনের তাগিদে প্রতি মাসের প্রতিটি দিনই কিছু না কিছু কৃষি কাজ করতে হয়।');

-- --------------------------------------------------------

--
-- Table structure for table `service_contact`
--

CREATE TABLE `service_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `message_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_contact`
--

INSERT INTO `service_contact` (`id`, `name`, `email`, `subject`, `message`, `status`, `message_date`) VALUES
(9, 'Joshef Hossain Bappy', 'test@gmail.com', 'গম ফসলের ক্ষতিকর ব্লাস্ট রোগের আক্রমন ও দমন।', 'এটি পাইরিকুলারিয়া অরাইজি প্যাথোটাইপ ট্রিটিকাম নামক ছত্রাক দ্বারা বিস্তার লাভ করে (গম গবেষণা কেন্দ্র,বারি)।গমের শীষ বের হওয়া থেকে  ফুল ফুল ফোটার সময়ে উচ্চ তাপমাত্রা ও আদ্র আবহাওয়া থাকলে এ রোগের আক্রমণ ঘটে।', 1, '2020-10-22 11:19:10.553437'),
(10, 'Joshef Hossain Bappy', 'test@gmail.com', 'গম ফসলের ক্ষতিকর ব্লাস্ট রোগের আক্রমন ও দমন।', 'এটি পাইরিকুলারিয়া অরাইজি প্যাথোটাইপ ট্রিটিকাম নামক ছত্রাক দ্বারা বিস্তার লাভ করে (গম গবেষণা কেন্দ্র,বারি)।গমের শীষ বের হওয়া থেকে  ফুল ফুল ফোটার সময়ে উচ্চ তাপমাত্রা ও আদ্র আবহাওয়া থাকলে এ রোগের আক্রমণ ঘটে।', 1, '2020-10-22 11:19:13.536921'),
(11, 'Joshef Hossain Bappy', 'test@gmail.com', 'গম ফসলের ক্ষতিকর ব্লাস্ট রোগের আক্রমন ও দমন।', 'এটি পাইরিকুলারিয়া অরাইজি প্যাথোটাইপ ট্রিটিকাম নামক ছত্রাক দ্বারা বিস্তার লাভ করে (গম গবেষণা কেন্দ্র,বারি)।গমের শীষ বের হওয়া থেকে  ফুল ফুল ফোটার সময়ে উচ্চ তাপমাত্রা ও আদ্র আবহাওয়া থাকলে এ রোগের আক্রমণ ঘটে।', 1, '2020-10-22 11:19:15.399489'),
(12, 'Joshef Hossain Bappy', 'test@gmail.com', 'গম ফসলের ক্ষতিকর ব্লাস্ট রোগের আক্রমন ও দমন।', 'এটি পাইরিকুলারিয়া অরাইজি প্যাথোটাইপ ট্রিটিকাম নামক ছত্রাক দ্বারা বিস্তার লাভ করে (গম গবেষণা কেন্দ্র,বারি)।গমের শীষ বের হওয়া থেকে  ফুল ফুল ফোটার সময়ে উচ্চ তাপমাত্রা ও আদ্র আবহাওয়া থাকলে এ রোগের আক্রমণ ঘটে।', 1, '2020-10-22 11:19:17.041812'),
(13, 'Joshef Hossain Bappy', 'bytecode@gmail.com', 'গম ফসলের ক্ষতিকর ব্লাস্ট রোগের আক্রমন ও দমন।', 'এটি পাইরিকুলারিয়া অরাইজি প্যাথোটাইপ ট্রিটিকাম নামক ছত্রাক দ্বারা বিস্তার লাভ করে (গম গবেষণা কেন্দ্র,বারি)।গমের শীষ বের হওয়া থেকে  ফুল ফুল ফোটার সময়ে উচ্চ তাপমাত্রা ও আদ্র আবহাওয়া থাকলে এ রোগের আক্রমণ ঘটে।', 1, '2020-10-22 11:21:45.340135'),
(14, 'Joshef Hossain', 'hossainjoshef@gmail.com', 'Courier Software Demo', 'hjjkhgghh', 0, '2021-03-29 17:04:48.175334'),
(15, 'Joshef Hossain', 'hossainjoshef@gmail.com', 'Courier Software Demo', 'hkjhjktjhjh', 0, '2021-03-29 17:08:40.017500');

-- --------------------------------------------------------

--
-- Table structure for table `service_customaraccount`
--

CREATE TABLE `service_customaraccount` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(170) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `reg_date` datetime(6) NOT NULL,
  `address` longtext NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service_customarorderlist`
--

CREATE TABLE `service_customarorderlist` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `address` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `payment_type` varchar(1) NOT NULL,
  `payment_number` varchar(150) NOT NULL,
  `payment_txt_id` varchar(150) NOT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `product_name_id` int(11) NOT NULL,
  `farmer_id` int(11) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_customarorderlist`
--

INSERT INTO `service_customarorderlist` (`id`, `customer_name`, `address`, `price`, `quantity`, `order_date`, `payment_type`, `payment_number`, `payment_txt_id`, `ip_address`, `status`, `product_name_id`, `farmer_id`, `delivery_date`) VALUES
(11, 'Barclay Thornton', 'Irure minima similiq', 400, 1, '2020-10-07', 'b', '812', 'Deleniti assumenda o', '127.0.0.1', 0, 25, 7, NULL),
(12, 'Edan King', 'Lorem consectetur e', 585, 5, '2020-10-20', 'b', '820', 'Quo omnis atque cupi', '127.0.0.1', 0, 29, 7, NULL),
(13, 'Piper Kirk', 'Magnam ab tempore q', 234, 2, '2020-10-20', 'd', '498', 'Cupidatat quos deser', '127.0.0.1', 0, 29, 7, NULL),
(14, 'Piper Kirk', 'Magnam ab tempore q', 400, 1, '2020-10-20', 'd', '498', 'Cupidatat quos deser', '127.0.0.1', 0, 25, 7, NULL),
(15, 'Piper Kirk', 'Magnam ab tempore q', 131, 1, '2020-10-20', 'd', '498', 'Cupidatat quos deser', '127.0.0.1', 0, 30, 7, NULL),
(16, 'Quinn Blankenship', 'Nisi numquam assumen', 131, 1, '2020-10-22', 'b', '585', 'Magni aspernatur rem', '127.0.0.1', 0, 30, 6, NULL),
(17, 'Brett Valentine', 'Voluptas irure amet', 131, 1, '2020-10-22', 'd', '373', 'Et sunt modi consequ', '127.0.0.1', 0, 30, 8, NULL),
(18, 'Fay Garrett', 'Et quidem quam solut', 117, 1, '2020-10-23', 'b', '160', 'Cillum quae ducimus', '127.0.0.1', 0, 29, 7, NULL),
(19, 'Fay Garrett', 'Et quidem quam solut', 131, 1, '2020-10-23', 'b', '160', 'Cillum quae ducimus', '127.0.0.1', 0, 30, 7, NULL),
(20, 'Hayfa Mcgee', 'Sequi obcaecati nemo', 234, 2, '2020-11-02', 'b', '47', 'Aute est debitis a s', '127.0.0.1', 0, 29, 7, NULL),
(21, 'Hayfa Mcgee', 'Sequi obcaecati nemo', 131, 1, '2020-11-02', 'b', '47', 'Aute est debitis a s', '127.0.0.1', 0, 30, 7, NULL),
(22, 'Noelle Bray', 'Eius ullamco sit se', 262, 2, '2020-11-12', 'b', '640', 'Assumenda nemo modi ', '127.0.0.1', 0, 30, 6, NULL),
(23, 'fdfd', 'fdgdfgfdgfdg', 393, 3, '2020-11-12', 'd', '585add ', 'Et sunt modi consequ', '127.0.0.1', 0, 30, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_customerproblem`
--

CREATE TABLE `service_customerproblem` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` longtext NOT NULL,
  `title` longtext NOT NULL,
  `problem` longtext NOT NULL,
  `problem_file` varchar(100) NOT NULL,
  `ordering` int(11) NOT NULL,
  `post_date` datetime(6) NOT NULL,
  `solve_message` longtext NOT NULL,
  `slove` tinyint(1) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_customerproblem`
--

INSERT INTO `service_customerproblem` (`id`, `name`, `email`, `phone`, `address`, `title`, `problem`, `problem_file`, `ordering`, `post_date`, `solve_message`, `slove`, `category_id`) VALUES
(1, 'Vernon Hoover', 'joshefhossainbappy019@gmail.com', '364', 'Veniam et corporis ', 'Aut dicta eos quia e', '', '', 0, '2021-03-13 21:15:04.136398', '', 1, 3),
(2, 'Nazmul Hasan', 'nazmulbest533@gmail.com', '0147852369', 'test', 'লাউ গাচের পাতার নিচে হলুদ রংগের গুরি গুরি পোকা। ডালিম গাচের ফল কালো হয়ে জরে পড়ছে এখন কি করবো।', '<p><a href="https://www.krishibangla.com/problem/262">সাদা মাছি</a></p>\r\n\r\n<p>পেয়ারা , মরিচ ও লেবু&nbsp; গাছের পাতায় সাদা মাছি দ্বারা আক্রান্ত হয়েছে। কি উপায়ে এগুলা দূর করা যাবে। জানালে কৃতজ্ঞ থাকবো।....</p>\r\n\r\n<p><a href="https://www.krishibangla.com/problem/259">Dalim fol boro hosce na.</a></p>\r\n\r\n<p>Drame lagano dalim gase dalim fol onek aslew temon boro hosce na ebong foler akriti nosto hosce. Er protikar ki....</p>\r\n\r\n<p><a href="https://www.krishibangla.com/problem/256">Leaf of lemon tree getting dry</a></p>\r\n\r\n<p>Leaves of my lemon tree are getting dry with yellow spot, white spot under the leaf.</p>', '', 0, '2021-03-21 14:51:59.880384', '<p>what should i....</p>\r\n\r\n<p><a href="https://www.krishibangla.com/problem/255">ড্রাগন গাছ&zwnj;ের ফুল ঝরা প্রত&zwnj;ি র&zwnj;োধে করনীয় প্রসঙ্গ&zwnj;ে ।</a></p>\r\n\r\n<p>আমার&nbsp; বাসার ছাদ&zwnj;ে&nbsp; একট&zwnj;ি ড্রাগন&nbsp; ফল&zwnj;ের গাছ লাগ&zwnj;িয়&zwnj;েছ&zwnj;ি ,&nbsp; যার আনুমান&zwnj;িক&nbsp; বয়স ৩ বছর ,কিন্তু&nbsp; ২&nbsp; বছর থেক&zwnj;ে ফুল&nbsp; আসল&zwnj;েও ফুটার&nbsp; পর&nbsp; লাল&nbsp; হয়&zwnj;ে&nbsp; ঝর&zwnj;ে&nbsp; যায়। এর&nbsp; প্রত&zwnj;িকার&nbsp; ক&zwnj;ি?&nbsp;....</p>\r\n\r\n<p><a href="https://www.krishibangla.com/problem/253">আমার গাছের কাঠাল পচে যাই কেন?</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>আমি আমার বাড়ীর পাশে কিছু সংখ্যক কাঠালের চারা রুপন করি গত ৩-৪ বছর আগে।</p>\r\n\r\n<p>বিগত কয়েক বছর ধরে প্রায় সব গাছেই কাঠাল আসছে। কিন্তু আমার একটি গাছের কাঠাল পচে ঝরে যায়।</p>\r\n\r\n<p>পচার....</p>\r\n\r\n<p><a href="https://www.krishibangla.com/problem/250">আতাগাছে ফুল এসেছে কি করলে ফুল টিকবে ও ফল আসবে</a></p>\r\n\r\n<p>আতাগাছের ফুল কি ভাবে....</p>\r\n\r\n<p><a href="https://www.krishibangla.com/problem/249">ফল আসে না</a></p>\r\n\r\n<p>আমি একটি করে বার মাসি আম,কমলা,জামরুলের কলমের চারা বপন করেছি ।কিন্তু সব গাছে প্রচুর ফুল আসে ফল হয় না ।যদি ও ছোট ফলের&nbsp; কড়ি দেখা গেলেও তা ঝড়ে পরে যায়।এই....</p>', 1, 2),
(3, 'Shohel Khan', 'test@gmail.com', '0125487963', 'test', 'ফল আসে না', '<p>আমি একটি করে বার মাসি আম,কমলা,জামরুলের কলমের চারা বপন করেছি ।কিন্তু সব গাছে প্রচুর ফুল আসে ফল হয় না ।যদি ও ছোট ফলের&nbsp; কড়ি দেখা গেলেও তা ঝড়ে পরে যায়।এই অবস্হায় কি করতে পারি?&nbsp;</p>', '', 0, '2021-03-21 14:57:53.428346', '<p><strong>সমাধান:&nbsp;</strong>প্রতিবছর বর্ষার আগে ও পরে টবের আকার অনুযায়ী জৈব+রাসায়নিক সার প্রয়োগ করুন। গাছে ফুল আসার আগে ও গুটি হওয়ার পরে কীটনাশক ও ছত্রাকনাশক স্প্রে করুন। মুকুল বের হলে দশ লিটার পানিতে আধামুঠ হারে ইউরিয়া এবং আধা চা চামচ হারে বোরণ সার মিশিয়ে তিন দিনের ব্যবধানে দুবার স্প্রে করুন। গাছের গোড়ায় পানি বেশি বা কম যেন না হয় সেদিকে খেয়াল রাখুন।<br />\r\nউত্তর দিয়েছেন-<br />\r\nকৃষিবিদ মুহাম্মদ শাহাদৎ হোসাইন সিদ্দিকী<br />\r\nসিনিয়র সহকারি পরিচালক,<br />\r\nNATA, গাজীপুর।</p>', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `service_districtcat`
--

CREATE TABLE `service_districtcat` (
  `id` int(11) NOT NULL,
  `district` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_districtcat`
--

INSERT INTO `service_districtcat` (`id`, `district`, `status`) VALUES
(3, 'Chittagong', 1),
(4, 'Dinajpur', 1),
(5, 'Mymensingh', 1),
(6, 'Barisal', 1),
(7, 'Faridpur', 1),
(8, 'Noakhali', 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_faqs`
--

CREATE TABLE `service_faqs` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `details` longtext NOT NULL,
  `ordering` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_faqs`
--

INSERT INTO `service_faqs` (`id`, `title`, `details`, `ordering`, `status`) VALUES
(1, 'Are organic products of the same quality as other food and drink ?', '<p>Organic production methods differ from conventional ones &ndash; but the aim is nonetheless to produce top-quality food and drink. Organic produce has to meet the same safety standards as other foods and complies with EU General Food</p>\r\n\r\n<p>law. The difference is that instead of using chemical compounds to combat pests or weeds, organic farmers use multi-annual crop rotations and resistant varieties to prevent such problems from occurring in the first place.</p>', 0, 1),
(2, 'Do organic products taste different from other food and drink ?', '<p>Organic production methods differ from conventional ones &ndash; but the aim is nonetheless to produce top-quality food and drink. Organic produce has to meet the same safety standards as other foods and complies with EU General Food</p>\r\n\r\n<p>law. The difference is that instead of using chemical compounds to combat pests or weeds, organic farmers use multi-annual crop rotations and resistant varieties to prevent such problems from occurring in the first place.</p>', 1, 1),
(3, 'Are all of your poultry, meat and fish products raised humanely ?', '<p>Organic production methods differ from conventional ones &ndash; but the aim is nonetheless to produce top-quality food and drink. Organic produce has to meet the same safety standards as other foods and complies with EU General Food</p>\r\n\r\n<p>law. The difference is that instead of using chemical compounds to combat pests or weeds, organic farmers use multi-annual crop rotations and resistant varieties to prevent such problems from occurring in the first place.</p>', 2, 1),
(4, 'Why to choose this site?', '<p>Organic production methods differ from conventional ones &ndash; but the aim is nonetheless to produce top-quality food and drink. Organic produce has to meet the same safety standards as other foods and complies with EU General Food</p>\r\n\r\n<p>law. The difference is that instead of using chemical compounds to combat pests or weeds, organic farmers use multi-annual crop rotations and resistant varieties to prevent such problems from occurring in the first place.</p>', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_farmeraccount`
--

CREATE TABLE `service_farmeraccount` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(170) NOT NULL,
  `password` varchar(100) NOT NULL,
  `reg_date` datetime(6) NOT NULL,
  `address` longtext NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_farmeraccount`
--

INSERT INTO `service_farmeraccount` (`id`, `name`, `mobile`, `email`, `password`, `reg_date`, `address`, `status`) VALUES
(6, 'Joshef Hossain', '01628159432', 'test@gmail.com', '694c261c2474eef61efd4024d3934f3a', '2020-10-06 11:36:04.881450', 'Kishoranj', 1),
(7, 'Bappy khan', '01965550629', 'shahinkhan019677@gmail.com', '123', '2020-10-06 11:36:42.917964', 'dsfdsfdsfsdf', 1),
(8, 'Ishmael Mason', '01965070089', 'gatygoh@mailinator.com', '202cb962ac59075b964b07152d234b70', '2020-10-22 13:26:07.391099', 'Quaerat possimus qu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_importantlink`
--

CREATE TABLE `service_importantlink` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `urls` longtext NOT NULL,
  `ordering` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_importantlink`
--

INSERT INTO `service_importantlink` (`id`, `title`, `urls`, `ordering`, `status`, `district_id`) VALUES
(1, 'কৃষি মন্ত্রণালয়', 'https://moa.gov.bd/', 0, 1, 3),
(2, 'কৃষি মন্ত্রণালয়ে', 'http://www.dae.gov.bd/', 0, 1, 4),
(3, 'কৃষি মন্ত্রণালয়', 'http://www.dae.gov.bd/', 0, 1, 5),
(4, 'কৃষি মন্ত্রণালয়ে', 'http://www.dae.gov.bd/', 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `service_ourservice`
--

CREATE TABLE `service_ourservice` (
  `id` int(11) NOT NULL,
  `service_title` varchar(200) NOT NULL,
  `service_detail` longtext NOT NULL,
  `service_image` varchar(100) NOT NULL,
  `ordering` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_ourservice`
--

INSERT INTO `service_ourservice` (`id`, `service_title`, `service_detail`, `service_image`, `ordering`, `status`, `category_id`) VALUES
(1, 'কৃষিতে বাংলাদেশের সাফল্য', '<p><strong><u>কৃষিতে বর্তমান সরকারের সাফল্য</u></strong></p>\r\n\r\n<ol>\r\n	<li>খাদ্যে স্বয়ংসম্পূর্ণতা অর্জন। ২০১৬-১৭ অর্থ বছরে দানাদার খাদ্য শস্য উৎপাদন ৩ কোটি ৮৬ লাখ ৯২ হাজার মে.টন।</li>\r\n	<li>ধান উৎপাদনে বিশে^ বাংলাদেশ চতুর্থ, বিদেশে চাল রপ্তানি।</li>\r\n	<li>সবজি উৎপাদনে বিশে^ বাংলাদেশ তৃতীয়। ২০১৬-১৭ বছরে মোট সবজি উৎপাদন ১ কোটি ৬০ লাখ ৪২ হাজার&nbsp; মে.টন।</li>\r\n	<li>২০১৬-১৭ বছরে আলু উৎপাদন ১ কোটি ২ লাখ ১৬ হাজার মে.টন ও মিষ্টি আলু উৎপাদন ৮ লাখ ২০ জাহার মে.টন।</li>\r\n	<li>খাটো জাতের নারিকেলের প্রবর্তন।</li>\r\n	<li>দেশী ও তোষা পাটের জীবনরহস্য আবিস্কার এবং পাটসহ পঁচ শতাধিক ফসলের &yuml;তিকর ছত্রাকের জীবনরহস্য উন্মোচন।</li>\r\n	<li>ফসলের প্রতিকূলতা সহিষ্ণু ও উচ্চফলনশীল নতুন জাত উদ্ভাবন ১৭৯ টি ।</li>\r\n	<li>সেচ সুবিধা সম্প্রসারণ&nbsp; ৯ লাখ ৮১ হাজার ১৯৮ হেক্টর।</li>\r\n	<li>৯ বছরে কৃষিতে ভর্তূকি প্রদান ৬০ হাজার ৮৬৫ কোটি টাকা।</li>\r\n	<li>খামার যান্ত্রিকীকরণে ভর্তূকি প্রদান ১৬৩ কোটি ৪১ লাখ টাকা।</li>\r\n	<li>কৃষি উপকরণ সহায়তা কার্ড প্রদান ২ কোটি ৫ লাখ ৪৪ হাজার ২০৮ জন।</li>\r\n	<li>খুচরা সার বিক্রেতা নিয়োগ ৩৮ হাজার ৫৮৯ জন।</li>\r\n	<li>১০ টাকায় কৃষকের ব্যাংক একাউন্ট খোলা ৯১ লাখ ৯০ হাজার ৬৪ টি।</li>\r\n	<li>৪ দফা নন-ইউরিয়া সারের মূল্যহ্রাস করে (কেজিপ্রতি) টিএপি ২২ টাকা, এমওপি ১৫ টাকা, ডিএপি ২৫ টাকা মূল্য নির্ধারন।</li>\r\n	<li>নিয়েঅগ/কর্মসংস্থান ৭ হাজার ৭১৬ জন।</li>\r\n	<li>মাটি ও জলবায়ূ ভিত্তিতে ফসলের ক্রপ জোনিং ম্যাপ প্রণয়ন ১৭ টি।</li>\r\n	<li>ডিজিটাল কৃষি তথা ই-কৃষির প্রবর্তন (৪৯৯ টি এআইসিসি, কৃষি কল সেন্টার, কৃষি কমিউনিটি রেডিও, সকল সংস্থার তথ্য সমৃদ্ধ ওয়েবসাইট, মোবাইল অ্যাপস, ওয়েব অ্যাপিস্নকেশন ও সফটওয়্যা, ই-বুক, ইন্টারনেট সংযোগ ইত্যাদি)</li>\r\n	<li>জাতীয় কৃষি নীতি ২০১৩, জাতীয় জৈব কৃষি নীতি ২০১৬, সমন্বিত &yuml;ুদ্রসেচ</li>\r\n</ol>\r\n\r\n<p>নীতিমালা ২০১৭ সহ বিভিন্ন কৃষি উন্নয়ন নীতিমালা প্রণয়ন।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>অন্যান্য কর্মকান্ডের সাফল্য</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li><strong>উন্নয়ন মেলায় ২০১৭ ও ২০১৮ সনে পর পর দুইবার প্রথম স্থান অর্জন।</strong></li>\r\n	<li><strong>ডিজিটাল উদ্ভাবনী মেলায় ২০১৭ সনে শ্রেষ্ঠ স্টল হিসেবে নির্বাচিত হয়।</strong></li>\r\n	<li><strong>ডিজিটাল উদ্ভাবনী মেলায় ২০১৮ সনে ই-সেবায় শ্রেষ্ঠ স্টল হিসেবে নির্বাচিত এবং জেলা ওয়েব পোর্টালে প্রথম স্থান অর্জন।</strong></li>\r\n	<li><strong>সবজী উৎপাদনে জাতীয় ভাবে ২০১৬-১৭ সনে দ্বিতীয় স্থান অর্জন।</strong></li>\r\n	<li><strong>জেলা ব্রান্ডিং হিসেবে লতিরাজ কচু নির্বাচিত।</strong></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>জয়পুরহাট জেলার ফসল উৎপাদনে সাফল্য</strong></p>\r\n\r\n<table border="" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>ক্রমিক নং</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>ফসলের নাম</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>উৎপাদনের বছর</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>মোট উৎপাদন</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>মমত্মব্য</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="2">\r\n			<p style="text-align:center"><strong>১</strong></p>\r\n			</td>\r\n			<td rowspan="2">\r\n			<p><strong>খাদ্যশস্য</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>২০০০-২০০১</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>৩,৯৭,৭২৮ মেঃ টন।</strong></p>\r\n			</td>\r\n			<td rowspan="2">\r\n			<p><strong>উৎপাদন বৃদ্ধি&nbsp; ১৯৯৫৬৭মেঃ টন (৫০%)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>২০১৬-২০১৭</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>৬,০৮,২৫৩ মেঃ টন।</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="2">\r\n			<p style="text-align:center"><strong>২</strong></p>\r\n			</td>\r\n			<td rowspan="2">\r\n			<p><strong>আলু</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>২০০০-২০০১</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>৩,১৭,৬৫৯ মেঃ টন</strong></p>\r\n			</td>\r\n			<td rowspan="2">\r\n			<p><strong>উৎপাদন বৃদ্ধি ৬০২১০৬মেঃ টন (১৯০%)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>২০১৬-২০১৭</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>৯,৬৯,৪৮৮ মেঃ টন।</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="2">\r\n			<p style="text-align:center"><strong>৩</strong></p>\r\n			</td>\r\n			<td rowspan="2">\r\n			<p><strong>লতিরাজ কচু</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>২০০০-২০০১</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>৯৬৩৭ মেঃ টন</strong></p>\r\n			</td>\r\n			<td rowspan="2">\r\n			<p><strong>উৎপাদন বৃদ্ধি ৩৬৮২৫মেঃ টন&nbsp; (৩৮২%)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>২০১৬-২০১৭</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>৩৭৫০০ মেঃ টন।</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="2">\r\n			<p style="text-align:center"><strong>৪</strong></p>\r\n			</td>\r\n			<td rowspan="2">\r\n			<p><strong>শাক সব্জী</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>২০০০-২০০১</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>৭৩,৫৫৬ মেঃ টন</strong></p>\r\n			</td>\r\n			<td rowspan="2">\r\n			<p><strong>উৎপাদন বৃদ্ধি ১৮১৭৭৯মেঃ টন (২৪৭%)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>২০১৬-২০১৭</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>২,৭৪,১৭৪ মেঃ টন</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="2">\r\n			<p style="text-align:center"><strong>৫</strong></p>\r\n			</td>\r\n			<td rowspan="2">\r\n			<p><strong>ফল</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>২০০০-২০০১</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>&nbsp;৪০,৬৫০ মেঃ টন</strong></p>\r\n			</td>\r\n			<td rowspan="2">\r\n			<p><strong>উৎপাদন বৃদ্ধি ১০৬১০মেঃ টন (২৬%)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>২০১৬-২০১৭</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>৫১,৬৭৮ মেঃ টন</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ই-কৃষি সেবা প্রদান সংক্রামত্ম</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border="" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>ক্রমিক নং</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>জেলার নাম</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>ই-কৃষি সেবা সমূহ</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>সেবা গ্রহণকারী কৃষকের সংখ্যা</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>সেবা প্রদানের মাধ্যম</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>মমত্মব্য</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">১</p>\r\n			</td>\r\n			<td rowspan="8">\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>জয়পুরহাট</p>\r\n			</td>\r\n			<td>\r\n			<p>কৃষকের জানালা</p>\r\n			</td>\r\n			<td>\r\n			<p>১১৭৭৫</p>\r\n			</td>\r\n			<td>\r\n			<p>মোবাইল এ্যাপস</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">২</p>\r\n			</td>\r\n			<td>\r\n			<p>ককৃষকের ডিজিটাল ঠিকানা</p>\r\n			</td>\r\n			<td>\r\n			<p>১০৬৬০</p>\r\n			</td>\r\n			<td>\r\n			<p>মোবাইল এ্যাপস</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">৩</p>\r\n			</td>\r\n			<td>\r\n			<p>ই-কালাইনাশক&nbsp; পরামর্শ</p>\r\n			</td>\r\n			<td>\r\n			<p>১০০৪০</p>\r\n			</td>\r\n			<td>\r\n			<p>মোবাইল এ্যাপস</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">৪</p>\r\n			</td>\r\n			<td>\r\n			<p>কৃষি কল সেন্টার (১৬১২৩)</p>\r\n			</td>\r\n			<td>\r\n			<p>১১৮৯৫</p>\r\n			</td>\r\n			<td>\r\n			<p>মোবাইল</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">৫&amp;</p>\r\n			</td>\r\n			<td>\r\n			<p>অনলাইন সার সুপারিশ</p>\r\n			</td>\r\n			<td>\r\n			<p>১১১৩৫</p>\r\n			</td>\r\n			<td>\r\n			<p>মোবাইল</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">৬</p>\r\n			</td>\r\n			<td>\r\n			<p>রাইস নলেজ ব্যাংক</p>\r\n			</td>\r\n			<td>\r\n			<p>৯৭৩০</p>\r\n			</td>\r\n			<td>\r\n			<p>মোবাইল</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">৭</p>\r\n			</td>\r\n			<td>\r\n			<p>এআ্ইএস</p>\r\n			</td>\r\n			<td>\r\n			<p>১৯৩১</p>\r\n			</td>\r\n			<td>\r\n			<p>কৃষিকথা ম্যাগাজিনের গ্রাহক সংখ্যার মাধ্যমে</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">৮</p>\r\n			</td>\r\n			<td>\r\n			<p>অন্যান্য</p>\r\n			</td>\r\n			<td>\r\n			<p>২৯৩০</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>কৃষি যন্ত্র সেবা গ্রূপের মাধ্যমে&nbsp;<strong>সেবা প্রদান</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border="" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>ক্রমিক নং</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>জেলার নাম</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>যন্ত্র সেবা গ্রম্নপ</p>\r\n\r\n			<p>সংখ্যা</p>\r\n			</td>\r\n			<td>\r\n			<p>গ্রূপের কৃষি যন্ত্র সমূহ</p>\r\n			</td>\r\n			<td>\r\n			<p>সেবা গ্রহনকারী কৃষকের সংখ্যা</p>\r\n			</td>\r\n			<td>\r\n			<p>কি কি সেবা প্রদান করা হয়েছে</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>মমত্মব্য</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p style="text-align:center">১</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>জয়পুরহাট</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>৫টি</p>\r\n			</td>\r\n			<td>\r\n			<p>কম্বাইন হারভেস্টার,রাইস ট্রান্সপস্নান্টার ,পাওয়ার টিলার&nbsp; চালিত সিডার ,থ্রেসার , রিপার ,রাইস ট্রান্সপস্নানন্টার ট্রে</p>\r\n			</td>\r\n			<td>\r\n			<p>২৬৮১</p>\r\n			</td>\r\n			<td>\r\n			<p>ধান কর্তন, চারা রোপন, বেডে গম বপন, ধান মাড়াই,</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>কৃষক সংগঠনের মাধ্যমে&nbsp; সেবা প্রদান</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border="" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>ক্রমিক নং</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>উপজেলার নাম</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>কৃষক সংগঠনের নাম</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>সংগঠনের সংখ্যা</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>সেবা গ্রহনকারী কৃষকের সংখ্যা</p>\r\n			</td>\r\n			<td>\r\n			<p>কি কি সেবা প্রদান করা হয়েছে</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>মমত্মব্য</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center"><strong>১</strong></p>\r\n			</td>\r\n			<td rowspan="4">\r\n			<p>জয়পুরহাট</p>\r\n			</td>\r\n			<td>\r\n			<p>আইিপিএম ক্লাব</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>৬৮</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>৭৩৫০</strong></p>\r\n			</td>\r\n			<td rowspan="4">\r\n			<p>১। বিষমুক্ত নিরাপদ ফসল &nbsp;&nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp; উৎপাদন বিষয়ে প্রশি&yuml;ণ।</p>\r\n\r\n			<p>২। চলতি বালাই ব্যবস্থাপনা বিষয়ে &nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp; প্রশি&yuml;ণ।</p>\r\n			</td>\r\n			<td rowspan="4">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center"><strong>২</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>আইিসিএম ক্লাব</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>১১৯</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>৯১৮০</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center"><strong>৩</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>আইএফএমসি&nbsp;</strong>ক্লাব</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>৩৮</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>৭৮৯০</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center"><strong>৪</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>সিআইজি গ্রম্নপ</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>১৩০</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>২৯০০</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', 'service/download.jpg', 0, 1, 1),
(2, 'কৃষিতে বাংলাদেশের সাফল্য', '<p><strong>টবে বেলী চাষ পদ্ধতি</strong></p>\r\n\r\n<p>শহরের বাড়িতে বাড়িতে ছাদ&nbsp;<a href="https://www.ajkerkrishi.com/%e0%a6%9b%e0%a6%be%e0%a6%a6-%e0%a6%95%e0%a7%83%e0%a6%b7%e0%a6%bf/%e0%a6%9b%e0%a6%be%e0%a6%a6%e0%a7%87-%e0%a6%9f%e0%a6%ac%e0%a7%87-%e0%a6%ac%e0%a6%be%e0%a6%a4%e0%a6%be%e0%a6%ac%e0%a6%bf%e0%a6%b2%e0%a7%87%e0%a6%ac%e0%a7%81-%e0%a6%9a%e0%a6%be%e0%a6%b7/">কৃষির</a>&nbsp;জয়জয়কার ।প্রিয় পাঠক,এর পরিপ্রেক্ষিতে আজ আমরা আলোচনা করবো টবে বেলী ফুল চাষ পদ্ধতি নিয়ে।সবাই মনোযোগ দিয়ে পড়ুন এবং শেয়ার করে দিন অন্য ছাদ বাগান&nbsp;<a href="https://uddoktalab.com/">প্রেমী</a>&nbsp;বন্ধুদের কাছে।</p>\r\n\r\n<p>বর্ষাকালীন ফুল হিসেবে বেলী ফুলের খ্যাতি সর্ব জন বিদিত।বেলী একটি গুল্ম জাতীয় গাছ। গ্রাম বাংলার অধিকাংশ বাড়িতে এই গাছ দেখতে পাওয়া যায়। গুল্ম জাতীয় এই গাছটি খুব তাড়াতাড়ি বেড়ে ওঠে এবং ফুল দেয়। সাধারণত গরম ও বর্ষার সময় বেলী গাছে ফুল ফোটে। শীতকালে এই গাছে সেভাবে ফুল ফোটে না।&nbsp; তাই আজ আমরা এ ফুলের চাষ পদ্ধতি আলোচনা করব।</p>\r\n\r\n<p><strong>টবঃ</strong><br />\r\nবেলী ফুল চাষের জন্য মাঝারি ও বড় যে কোনো আকারের টব প্রয়োজন।</p>\r\n\r\n<p><strong>মাটিঃ</strong><br />\r\nদোঁআঁশ মাটিতে বেলীফুল গাছের ভাল চাষ হয়।</p>\r\n\r\n<p><strong>সার প্রয়োগঃ</strong><br />\r\n৫-৬ কেজি বাগান মাটি নিন। এরপর গোবর সার ৩ কেজি ও স্টেরামিল ৩০০ গ্রাম মাটির সাথে মিশিয়ে টবে ফেলুন। অবশ্য টবের সাইজ অনুযায়ী গোবর সার মেশানো মাটি ফেলুন। এটাই সারমাটি হিসেবে বিবেচিত হবে। জানুয়ারী মাসের শেষে&nbsp; ছাঁটাই এর সময় চাপান সার দিতে হবে। শুরুতে টবে একটা লাঠি পুতুন। যাতে বেল গাছটি একটা অবলম্বন পায়। এরপর বড় হলে অবলম্বন হিসেবে দেওয়া লাঠিটা সরিয়ে ফেলুন।</p>\r\n\r\n<p><strong>পরিচর্যাঃ</strong><br />\r\nগাছে পর্যাপ্ত পরিমানে পানি প্রয়োজন। প্রয়োজন অনুসারে এতে পানি দিতে হয়।শীতের শেষে ডাল ছাটাই দরকার। এমনভাবে ছাঁটাই করতে হবে, যাতে গাছে একটিও পাতা না থাকে।</p>\r\n\r\n<p><strong>কীটনাশক</strong>:<br />\r\nনতুন শাখা গজালে, ১৫ দিন ছাড়া ২/৩ বার মনোসিল দিন।</p>', '', 0, 1, 4),
(3, 'joy', '<p>sdfsdfsdf</p>', '', 0, 1, 8),
(4, 'sdfsdfsdfafwerere', '<p>erererer</p>', '', 0, 1, 11),
(5, 'fsdfsdfdsfdsfdsf', '<p>sdfdsfdsf</p>', '', 0, 1, 2),
(6, 'dsfd', '<p>fsdfdsfsdf</p>', '', 0, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `service_ourteammember`
--

CREATE TABLE `service_ourteammember` (
  `id` int(11) NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `images` varchar(100) NOT NULL,
  `member_mobile` varchar(15) NOT NULL,
  `member_email` varchar(60) NOT NULL,
  `facebook` varchar(150) NOT NULL,
  `twitter` varchar(150) NOT NULL,
  `linkedin` varchar(150) NOT NULL,
  `join_date` date NOT NULL,
  `member_address` longtext NOT NULL,
  `ordering` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `member_designation` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_ourteammember`
--

INSERT INTO `service_ourteammember` (`id`, `member_name`, `images`, `member_mobile`, `member_email`, `facebook`, `twitter`, `linkedin`, `join_date`, `member_address`, `ordering`, `status`, `member_designation`) VALUES
(2, 'Nazmul Hassan', 'team_member/man-300x300.png', '+8801835928937', 'naznulhasan@gmail.com', 'http://facebook.com/', 'http://facebook.com/', 'http://facebook.com/', '2020-05-11', 'Chattogram', 1, 1, 'Developer'),
(3, 'Srijal Chakrabortty.', 'team_member/images.png', '+88019123456789', 'srijialchakrabortty@gmail.com', 'http://facebook.com/', 'http://facebook.com/', 'Ex molestiae porro s', '2021-03-21', 'Chattogram', 1, 1, 'Designer');

-- --------------------------------------------------------

--
-- Table structure for table `service_problemcategory`
--

CREATE TABLE `service_problemcategory` (
  `id` int(11) NOT NULL,
  `category_name` varchar(70) NOT NULL,
  `ordering` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_problemcategory`
--

INSERT INTO `service_problemcategory` (`id`, `category_name`, `ordering`, `status`) VALUES
(1, 'Mobile', 0, 1),
(2, 'Education Software', 0, 1),
(3, 'ERP Software', 0, 1),
(4, 'Ecommerce Software', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_product`
--

CREATE TABLE `service_product` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `product_image1` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `new` tinyint(1) NOT NULL,
  `total_sale` int(11) NOT NULL,
  `approve_date` datetime(6) DEFAULT NULL,
  `product_image2` varchar(100) NOT NULL,
  `product_image3` varchar(100) NOT NULL,
  `thumb_image` varchar(100) NOT NULL,
  `quantity_for` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_product`
--

INSERT INTO `service_product` (`id`, `title`, `product_image1`, `product_price`, `date`, `description`, `status`, `farmer_id`, `quantity`, `new`, `total_sale`, `approve_date`, `product_image2`, `product_image3`, `thumb_image`, `quantity_for`) VALUES
(25, 'স্টবেরি', 'product_image1/36.jpg', 400, '2020-10-06', '<p>স্ট্রবেরি Fragaria ananasa) Rosaceae পরিবারভুক্ত একটি গুল্ম জাতীয় উদ্ভিদ। আকর্ষণীয় বর্ণ, গন্ধ, স্বাদ ও উচ্চ পুষ্টিমানের জন্য স্ট্রবেরি অত্যন্ত সমাদৃত। স্ট্রবেরি একটি ভিটামিন সি সমৃদ্ধ ফল হলেও এতে পর্যাপ্ত পরিমাণে অন্যান্য ভিটামিন, খনিজ পদার্থ ও এন্টি-অক্সিডেন্ট বিদ্যমান। ফল হিসেবে সরাসরি খাওয়া ছাড়াও বিভিন্ন খাদ্যের সৌন্দর্য ও সুগন্ধ বৃদ্ধিতেও ব্যাপকভাবে ব্যবহৃত হয়। স্ট্রবেরি মৃদ শীতপ্রধান দেশের ফল হলেও উষ্ণম-লীয় অঞ্চলে চাষোপযোগী স্ট্রবেরির জাত উদ্ভাবন করায় দক্ষিণ, পূর্ব ও দক্ষিণ-পূর্ব এশিয়ার বিভিন্ন দেশে বাণিজ্যিকভাবে এর চাষ হচ্ছে। শীত মৌসুমে আমাদের দেশে তেমন কোনো ফল উৎপন্ন না হলেও সাফল্যজনকভাবে স্ট্রবেরি চাষ সম্ভব অপরদিকে বাজারে এটি বেশ উচ্চমূল্যে বিক্রয় হয় বিধায় এর চাষ খুবই লাভজনক। বর্তমানে বাংলাদেশের প্রায় ২৫টি জেলায় সাফল্যের সাথে স্ট্রবেরি চাষ হচ্ছে। বিএআরআই দীর্ঘদিন ধরে স্ট্রবেরি চাষের বিভিন্ন বিষয় নিয়ে গবেষণা পরিচালনা করে আসছে এবং অদ্যাবধি বাছাই প্রক্রিয়ার মাধ্যমে বাংলাদেশের সর্বত্র চাষ উপযোগী স্ট্রবেরির তিনটি উচ্চফলনশীল জাত উদ্ভাবন করেছে।</p>', 1, 7, 0, 1, 2, '2020-10-06 18:00:00.000000', 'product_image2/11_NocTeUU.jpg', 'product_image/36.jpg', 'thumb_image/9.jpg', '1'),
(29, 'আপেল', 'product_image1/344.jpg', 117, '2020-10-06', '<p>Temporibus aute beat</p>', 1, 7, 6, 1, 5, '2021-03-12 18:00:00.000000', 'product_image2/pexels-photo-251225.jpeg', 'product_image3/macbook-apple-imac-computer-39284.jpeg', 'thumb_image/8.jpg', '2'),
(30, 'Nam voluptatem sit rerum iste', 'product_image1/ab_pic.jpg', 131, '2020-10-20', '<p>ভারী দোঁয়াশ মাটি হলে ভাল হয়।পরিমান মতো&nbsp; দো-আঁশ&nbsp; বা বেলে মাটি, এর সাথে পরিমান মতো ব্যালিমিন, কম্পোস্ট, একমুঠো হাঁড়ের গুঁড়ো, দু&rsquo;মুঠো ছাই মিশিয়ে নিন।এর সঙ্গে কিছুটা পরিমান পাতা পচা সার, গোবর, খৈল মিশিয়ে মাটি তৈরি করলে ভাল হয়।</p>', 1, 6, 1, 0, 8, '2020-10-19 18:00:00.000000', 'product_image2/36.jpg', 'product_image3/macbook-apple-imac-computer-39284_NDukeUX.jpeg', 'thumb_image/4.jpg', '1'),
(31, 'Cupiditate consectet', '', 500, '2020-10-22', 'Ad non eos nostrud s', 1, 8, 50, 0, 0, '2020-10-21 18:00:00.000000', '', '', 'thumb_image/7doc-vincent-a - Copy.jpg', '1'),
(32, 'Autem porro ad dolor', 'product_image3/Zenith-Watch_1920x1080_1984.jpg', 300, '2020-10-22', 'Veritatis aliquid vo', 1, 8, 46, 0, 0, '2020-10-21 18:00:00.000000', '', '', 'thumb_image/Omega-De-Ville_1920x1080_4034.jpg', '1'),
(33, 'Voluptate quibusdam ', 'product_image1/black-white-guitar_1920x1080_1726.jpg', 400, '2020-10-22', 'Possimus ipsa earu', 1, 8, 46, 0, 0, '2020-10-21 18:00:00.000000', 'product_image2/Colored-Fire-Lighter_1920x1080_2843.jpg', 'product_image3/wallpaper-firefox-hd-4 - Copy.jpg', 'thumb_image/ARC GAMER EDITION (8).jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `service_quicksolve`
--

CREATE TABLE `service_quicksolve` (
  `id` int(11) NOT NULL,
  `question` varchar(100) NOT NULL,
  `answer` longtext NOT NULL,
  `ordering` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_quicksolve`
--

INSERT INTO `service_quicksolve` (`id`, `question`, `answer`, `ordering`, `status`) VALUES
(1, 'ফুলকপির কার্ড পচা রােগ', '<p>সাধারণত ছত্রাক আক্রান্ত ফুলকপির কার্ডে প্রথমে বাদামী রংয়ের গােলাকার দাগ দেখা যায়। পরে একাধিক দাগ মিলে বড় দাগ হয় এবং কার্ড পচে যায়। ব্যাকটেরিয়ার আক্রমণ হলে কার্ড দ্রুত পচে যায়।</p>\r\n\r\n<p><strong>ক্ষতির ধরণ :&nbsp;</strong></p>\r\n\r\n<p>চারার গোড়া বা শিকড় পচে ঢলে পড়ার মাধ্যমে এ রোগের লক্ষণ প্রকাশ পায়। আক্রান্ত চারার গোড়ার চারদিকে বাদামি বর্ণের পানিভেজা দাগ দেখা যায়। আক্রমণের দুই দিনের মধ্যে চারা গাছটি ঢলে পড়ে ও আক্রান্ত অংশে তুলার মতো সাদা মাইসেলিয়াম দেখা যায় ও অনেক সময় সরিষার মত ছত্রাকের অনুবীজ পাওয়া যায়। চারা টান দিলে সহজে মাটি থেকে উঠে আসে।</p>\r\n\r\n<p><strong>এই রোগের প্রতিকার:</strong></p>\r\n\r\n<p>১. কার্বেন্ডাজিম গ্রুপের ছত্রাক নাশক ১ গ্রাম/ লি. হরে পানিতে মিশিয়ে স্প্রে করা (স্প্রে করার পর এক সপ্তাহ। পর্যন্ত কপি তােলা যাবেনা)।</p>\r\n\r\n<p><strong>পরবর্তীতে যা যা করবেন না:</strong></p>\r\n\r\n<p>১. একই জমিতে বার বার&nbsp;<a href="https://www.ajkerkrishi.com/%e0%a6%9a%e0%a6%be%e0%a6%b7%e0%a6%be%e0%a6%ac%e0%a6%be%e0%a6%a6-%e0%a6%aa%e0%a6%a6%e0%a7%8d%e0%a6%a7%e0%a6%a4%e0%a6%bf/%e0%a6%b6%e0%a7%80%e0%a6%a4%e0%a6%95%e0%a6%be%e0%a6%b2%e0%a7%80%e0%a6%a8-%e0%a6%86%e0%a6%97%e0%a6%be%e0%a6%ae-%e0%a6%ab%e0%a7%81%e0%a6%b2%e0%a6%95%e0%a6%aa%e0%a6%bf-%e0%a6%9a%e0%a6%be%e0%a6%b7/">কপি</a>&nbsp;জাতীয় ফসল চাষ করবেন না।<br />\r\n২. আক্রান্ত ক্ষেতে থেকে বীজ সংগ্রহ করবেন না</p>\r\n\r\n<p><strong>পরবর্তীতে যা যা করা উচিত:</strong></p>\r\n\r\n<p>১. বপনের আগে প্রতি কেজি বীজে ২-৩ গ্রাম প্রােভ্যাক্স বা কার্বেন্ডাজিম মিশিয়ে বীজ শােধন করে নিন।</p>\r\n\r\n<p>২. লাল মাটি বা অম্লীয় মাটির ক্ষেত্রে শতাংশ প্রতি চার কেজি হারে ডলােচুন প্রয়ােগ করুন (প্রতি তিন বছরে একবার)</p>\r\n\r\n<p>আর্টিকেলটি পড়ে ভালো লাগলে বন্ধুদের সাথে শেয়ার করে দিন।</p>', 1, 1),
(2, 'কামরাঙ্গার বিছা পােকা দমন পদ্ধতি', '<p>আমাদের পেইজে অনেকেই ইনবক্সে বিভিন্ন ফলের সমস্যা নিয়ে জানতে চান তাই আজকে আলোচনা করবো কামরাঙ্গার বিছা পােকা দমন পদ্ধতি নিয়ে।সবাই মনোযোগ দিয়ে পড়ুন আর&nbsp;<a href="https://uddoktalab.com/">শেয়ার</a>&nbsp;করে দিন অন্য কৃষি উদ্যোক্তাদের সাথে।</p>\r\n\r\n<p>কামরাঙ্গা চাষে প্রধান অন্তরায়গুলোর একটি হচ্ছে বিছা পোকা। একে দমন না করলে কামরাঙ্গার সফল চাষাবাদ সম্ভব না। কামরাঙ্গার বিছা পোকা দমন পদ্ধতি নিয়ে তাই আজ আমরা আলোচনা করব।</p>\r\n\r\n<p>আমাদের পেইজে অনেকেই ইনবক্সে বিভিন্ন ফলের সমস্যা নিয়ে জানতে চান তাই আজকে আলোচনা করবো কামরাঙ্গার বিছা পােকা দমন পদ্ধতি নিয়ে।সবাই মনোযোগ দিয়ে পড়ুন আর&nbsp;<a href="https://uddoktalab.com/">শেয়ার</a>&nbsp;করে দিন অন্য কৃষি উদ্যোক্তাদের সাথে।</p>\r\n\r\n<p>কামরাঙ্গা চাষে প্রধান অন্তরায়গুলোর একটি হচ্ছে বিছা পোকা। একে দমন না করলে কামরাঙ্গার সফল চাষাবাদ সম্ভব না। কামরাঙ্গার বিছা পোকা দমন পদ্ধতি নিয়ে তাই আজ আমরা আলোচনা করব।</p>\r\n\r\n<p><strong>প্রভাবঃ</strong><br />\r\nবিছা পোকা কামরাঙ্গা গাছের নতুন পাতা খেয়ে ক্ষতি সাধন করে। কখনও কখনও এরা ফলেও আক্রমণ করে। নষ্ট হয়ে যাওয়া ফল বিক্রয়ের অযোগ্য হয়ে পড়ে।</p>\r\n\r\n<p><strong>প্রতিকারের উপায়ঃ</strong></p>\r\n\r\n<p><strong>১</strong>. পাতায় ডিমের গাদা দেখলে তা তুলে ধ্বংস করতে হবে।<br />\r\n<strong>২</strong>. ডিম আথবা আক্রমণের প্রথম অবস্থায় কীড়াগুলাে যখন পাতায় দলবদ্ধ অবস্থায় থাকে তখন পােকা সমেত পাতাটি তুলে পায়ে মাড়িয়ে বা গর্তে চাপা দিয়ে মারতে হবে।<br />\r\n<strong>৩</strong>. ডায়াজিনন বা সাইপারমেথ্রিন গ্রুপের কীটনাশক যেমন রাইসন ৬০ ইসি বা রিপকর্ড ১০ ইসি বা সিমবুশ ১০ ইসি প্রতি লিটার পানির সাথে ০.৫ মিঃ লিঃ বা প্রতি ১২ লিটার পানির সাথে ৬ মিঃ লিঃ ঔষধ মিশিয়ে ব্যবহার করতে হবে।</p>\r\n\r\n<p><strong>পরবর্তীতে যা যা করবেন না:</strong><br />\r\n১. বাগান কখনো অপরিচ্ছন্ন রাখবেন না</p>\r\n\r\n<p><strong>পরবর্তীতে যা যা করবেন:</strong><br />\r\n১.ফল সংগ্রহ শেষ হলে গাছের মরা ডালপালা, ফলের বােটা, রােগ বা পােকা আক্রান্ত ডাল পালা ও অতিঘন&nbsp;<a href="https://www.ajkerkrishi.com/%e0%a6%95%e0%a7%83%e0%a6%b7%e0%a6%bf%e0%a6%b0-%e0%a6%a4%e0%a6%a5%e0%a7%8d%e0%a6%af/%e0%a6%a1%e0%a6%be%e0%a6%b2%e0%a6%bf%e0%a6%ae%e0%a7%87%e0%a6%b0-%e0%a6%97%e0%a7%8d%e0%a6%b0%e0%a7%87-%e0%a6%ae%e0%a6%be%e0%a7%87%e0%a6%b2%e0%a7%8d%e0%a6%a1-%e0%a6%b0%e0%a6%be%e0%a7%87%e0%a6%97/">ডাল</a>&nbsp;পালা ছাটাই করে পরিস্কার করে দিন।<br />\r\n২. পরিস্কার করার পর একটি ছত্রাক নাশক ও একটি কীটনাশক দ্বারা পুরাে গাছ ভালভাবে স্প্রে করুন।<br />\r\n৩. নিয়মিত বাগান পরিদর্শন করুন।</p>\r\n\r\n<p>কামরাঙ্গার বিছা পোকা দমনে উপরোক্ত পদ্ধতিগুলো মেনে চললেই গাছকে পোকামুক্ত রাখা সম্ভব।</p>\r\n\r\n<p>আর্টিকেলটি পড়ে ভালো লাগলে বন্ধুদের সাথে শেয়ার করে দিন।</p>', 2, 1),
(3, 'মাছ চাষে বিভিন্ন সমস্যা', '<p><strong>মাছ চাষে বিভিন্ন সমস্যা ও প্রতিকার</strong></p>\r\n\r\n<p>মাছ চাষে অনেক সমস্যায় ভুগে থাকেন মৎস্য চাষীরা তাই আজকে আলোচনা করবো মাছ চাষে বিভিন্ন সমস্যা ও প্রতিকার গুলো নিয়ে। সবাই মনোযোগ দিয়ে পড়ুন এবং শেয়ার করে দিন&nbsp;<a href="https://uddoktalab.com/">কৃষি</a>&nbsp;উদ্যোক্তাদের কাছে।</p>\r\n\r\n<p>মাছ চাষে অনেক সমস্যাই দেয়া যায় এর মধ্যে শীতকালে একটু বেশি সমস্যা দেয়া যায়।শীতকালে মাছের বিশেষ যত্ন নিতে হয়। কারণ এ সময়ে পুকুরে পানি কমে, পানি দূষিত হয়, পানি গরম হয়, অক্সিজেন কমে যায়, গ্যাস সৃষ্টি হয়, রোগবালাইসহ বিভিন্ন সমস্যা সৃষ্টি হয়। এসব সমস্যার জন্য মাছের মড়ক দেখা দিতে পারে। এতে মাছ চাষি ক্ষতিগ্রস্ত হয়। সমস্যার আগেই প্রতিরোধমূলক ব্যবস্থা নিলে ও সমস্যা হওয়ার পরেও সমাধান করে মাছের উৎপাদন স্বাভাবিক রাখা যায়।</p>', 3, 1),
(4, 'পুকুরে হাঁস পালন পদ্ধতি বিস্তারিত', '<p><strong>পুকুরে হাঁস পালন পদ্ধতি বিস্তারিত</strong></p>\r\n\r\n<p>আজকের কৃষিতে হাঁস পালন নিয়ে আর্টিকেল রয়েছে অনেকেই আমাদের ইনবক্সে বলতেছেন পুকুরে হাঁস পালন পদ্ধতি বিস্তারিত নিয়ে আলোচনা করার জন্য তাই আমরা আজকে আর্টিকেল টি সেই সকল কৃষি&nbsp;<a href="https://uddoktalab.com/">উদ্যোক্তাদের</a>&nbsp;জন্য প্রকাশ করলা। ভালো লাগলে বন্ধুদের মাঝে শেয়ার করে দিন।</p>\r\n\r\n<p>প্রথম দিকে ছোট আকারের খামার করা ভালো। পরবর্তীতে বাণিজ্যিক আকারে খামার করা যেতে পারে। ডিম পাড়ার জন্য লেয়ার হাঁস পালন করতে হয়। এগুলোর মধ্যে খাকি ক্যাম্বল, ইন্ডিয়ান রানার, দেশি পাতি হাঁস উল্লেখযোগ্য। মাংসের জন্য অন্যান্য প্রজাতির হাঁস পালন করতে হয়। বাচ্চা সংগ্রহের পর যতদ্রুত সম্ভব ঘরে ছাড়তে হবে। হাঁসের বাচ্চার ধকল প্রতিরোধে স্যালাইন পানি বা ইলেকট্রোলাইট (পশু-পাখির স্যালাইন) খাওয়ানো যেতে পারে। হাঁস সাধারণত পানিতে থাকতে ও সাঁতার কাটতে পছন্দ করে।</p>', 5, 1),
(5, 'পাঙ্গাস মাছের চাষ পদ্ধতি', '<p><strong>পাঙ্গাস মাছের চাষ পদ্ধতি</strong></p>\r\n\r\n<p>মাছ চাষ বাংলাদেশে এখন দিনকে দিন বৃদ্ধি পাচ্ছে , পাশাপাশি বিশ্বে মাছ উৎপাদনের একটি সম্মানসূচক অবস্থান নিয়েছে। আজকে আমরা আলোচনা করবো পাঙ্গাস মাছের চাষ পদ্ধতি নিয়ে।</p>\r\n\r\n<p>আবহমানকাল থেকে পাঙ্গাস মাছ এদেশের মানুষের জন্য রসনার উৎস হিসেবে পরিচিত। এই মাছটি প্রাকৃতিক মুক্ত জলাশয়ে বিশেষ করে দেশের দক্ষিণাঞ্চলের নদীসহ উপকূলীয় অঞ্চলে পাওয়া যায়। এক সময়ে পাঙ্গাস মাছ আভিজাত্যের প্রতীক হিসেবে উচ্চবিত্তের মাছ হিসেবে বিবেচিত ছিল। বর্তমানে পরিবেশগত পরিবর্তনের ফলে নদীর নাব্যতা দিন দিন হ্রাস পাচ্ছে। সাথে সাথে এর প্রাকৃতিক প্রজনন ক্ষেত্রসমূহ ক্ষতিগ্রস্থ হওয়ার ফলে পাঙ্গাস মাছের উৎপাদনও ক্রমশঃ কমে যাচ্ছে। তবে পুকুরে পাঙ্গাস চাষের ব্যাপক সম্ভাবনা থাকায় আশির দশক থেকেই এর ওপর কার্যক্রম অব্যহত রয়েছে।</p>', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_reviews`
--

CREATE TABLE `service_reviews` (
  `id` int(11) NOT NULL,
  `person_name` varchar(100) NOT NULL,
  `person_designation` varchar(100) NOT NULL,
  `person_img` varchar(100) NOT NULL,
  `review_detail` longtext NOT NULL,
  `ordering` int(11) NOT NULL,
  `review_date` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_reviews`
--

INSERT INTO `service_reviews` (`id`, `person_name`, `person_designation`, `person_img`, `review_detail`, `ordering`, `review_date`, `status`) VALUES
(1, 'Nazmul Hassan', 'Developer', 'reviews_img/man-300x300.png', '<p>This is the best website for farmer.Thanks you <u><strong><span style="color:#2980b9">K</span><a href="http://127.0.0.1:8000/admin/"><span style="color:#2980b9">rishi Krishak</span></a><span style="color:#2980b9">&nbsp;Help</span></strong></u></p>', 0, '2020-05-17', 1),
(2, 'Srijal Chakrabortty.', 'Designer', 'reviews_img/images.png', '<p>মানসম্পন্ন বৈজ্ঞানিক কৃষি বিষয়ক ওয়েব সাইট</p>', 0, '2020-05-17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_searchpesticides`
--

CREATE TABLE `service_searchpesticides` (
  `id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `search_count` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `tree_age_id` int(11) NOT NULL,
  `tree_name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_searchpesticides`
--

INSERT INTO `service_searchpesticides` (`id`, `description`, `search_count`, `status`, `tree_age_id`, `tree_name_id`) VALUES
(3, '<p>&nbsp;</p>\r\n\r\n<h3>আমের ভালো ফলন নিশ্চিত করতে করণীয়</h3>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p><img alt="Magh-1422 krishikotha" src="http://www.ais.gov.bd/sites/default/files/files/ais.portal.gov.bd/krishi_kotha/5f76e871_7be4_44b5_9532_6ea2beaa34f0/Magh-1422%20krishikotha.jpg" style="width:200px" /></p>\r\n\r\n<p>বাংলাদেশে আম হলো ফলের রাজা এবং গাছ হলো জাতীয় আমগাছ। আম সাধারণত উষ্ণ ও অবউষ্ণম-লীয় অঞ্চলের জন্মে। ইন্দো-বার্মা অঞ্চলে আমের উৎপত্তিস্থল বলে ধারণা করা হয় তবে বাংলাদেশসহ ভারতীয় উপমহাদেশে আম সবচেয়ে জনপ্রিয় ফল কারণ এ ফল বৈচিত্র্যপূর্ণ ব্যবহার, পুষ্টিমান ও স্বাদে-গন্ধে অতুলনীয়। বাংলাদেশে প্রায় সব অঞ্চলে আম জন্মে কিন্তু দেশের উরাঞ্চলে এর বাণিজ্যিকভাবে ব্যাপক চাষ হয়ে থাকে। আম চাষিরা প্রতি বছর অনেক ক্ষতির শিকার হয়ে থাকেন সাধারণত দুই প্রকারের সমস্যার কারণে যথা- ১. প্রাকৃতিক কারণ (যেমন- ঝড়, শিলাবৃষ্টি, খরা প্রভৃতি) এবং (আ) রোগ ও পোকামাকড় দ্বারা আক্রান্ত হয়ে। সঠিক পরিচর্যা ও রোগ-পোকামাকড় দমন করে প্রথম ক্ষতি আংশিক এবং দ্বিতীয় ক্ষতি প্রায় সম্পূর্ণ রূপে সমাধান করা সম্ভব। নিচে তা পর্যায়ক্রমে আলোচনা করা হলো-<br />\r\n<strong>ফলন্ত আম গাছের পরিচর্চা</strong>&nbsp;: আম গাছের ফলধারণ ক্ষমতা বৃদ্ধি এবং ফলন বাড়ানোর জন্য নিম্নলিখিত পরিচর্চাগুলো করা একান্ত প্রয়োজন।<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>পরগাছা দমন&nbsp;</strong>: আমগাছে একাধিক জাতের আগাছা জন্মাতে দেখা যায়, যা গাছের স্বাভাবিক বৃদ্ধি ও স্বাস্থ্যের প্রতি ক্ষতিকর। পরগাছাসমূহে শিকড়ের মতো এক প্রকার হস্টোরিয়া হয়, যা গাছের মধ্যে প্রবেশ করে রস শোষণ করে এবং দুর্বল করে। পরগাছার পাদুর্ভাব বেশি হলে গাছের পাতার আকার ছোট হয় ও ফ্যাকাসে হয় এবং অনেক সময় গাছ মারা যায়। এর ফলে গাছের ফলন মারাত্মকভাবে কমে যায়। তাই ভালো ফলন পেতে হলে অবশ্যই পরগাছা অপসারণ করতে হবে।<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>সার প্রয়োগ&nbsp;</strong>: গাছের বৃদ্ধি ও ফল উৎপাদনের জন্য সারের ব্যবহার একান্ত প্রয়োজন। ফলন্ত গাছের আকার, বয়স ও মাটির উর্বরতার ওপর সারের পরিমাণ নির্ভর করে। দুপুর বেলা যতটুকু স্থানে ছায়া পড়ে সেটুকু স্থানে মাটি কুপিয়ে সার মাটির সঙ্গে মিশিয়ে দিতে হবে।</p>\r\n\r\n<p><br />\r\n<strong>সেচ প্রয়োগ&nbsp;</strong>: সাধারণত জমির ওপর স্তরে প্রয়োজনীয় খাদ্য উপাদান থাকে বা সার হিসেবে মাটিতে মিশিয়ে দেয়া হয় তাই আম বাগানের ওপরের ২-৩ মিটার অংশকে জমির পানি সংরক্ষণ স্তর হিসেবে ধরা হয়। তাই শুষ্ক মৌসুমে আম বাগানে পানি সেচ দেয়া দরকার। আমের গুটি মটর দানারমতো হওয়ার পর থেকে ১৫-২০ দিন পর পর ২-৩ বার সেচ দিলে আমের গুটি ঝরা বন্ধ হয়।</p>\r\n\r\n<p><br />\r\n<strong>বয়স্ক টক আমগাছকে মিষ্টি আমগাছে রূপান্তরকরণ&nbsp;</strong>: বাগানের কোনো গাছের আমের গুণাগুণ খারাপ হলে সে গাছকে নষ্ট না করে ভিনিয়ার কলমের মাধ্যমে উন্নতি সাধন করা য়ায়। বয়স্ক গাছের ২-৩টি ডাল কেটে দিলে সেখান থেকে নতুন শাখা বের হলে তার পর নতুন শাখাতে ভিনিয়ার কলম করে নিতে হবে। এভাবে ৩-৪ বারে কাজ সম্পন্ন করতে হবে।</p>\r\n\r\n<p><br />\r\n<strong>পুরনো বাগান নবায়ন</strong>&nbsp;: আম বাগানের বয়স বেশি হলে ফল ধারণ কমে যায়, তাই এ ক্ষেত্রে গাছ কেটে না ফেলে পুরনো গাছের ভারি শাখা কেটে দিলে সেখানে নতুন শাখা বের হবে এবং গাছ নবায়ন হয়ে যাবে। এভাবে ২-৩ বছরে বাগান নবায়ন করা যায়।</p>\r\n\r\n<p><br />\r\n<strong>ফসল সংগ্রহ :</strong>&nbsp;ফল ধরার ৩-৫ মাসের মধ্যেই জাতভেদে ফল পাকা শুরু করে। বাণিজ্যিকভাবে কখনো সম্পন্ন পাকা অবস্থায় আম গাছ থেকে পাড়া ঠিক নয়। গাছের ফল দুই চারটি পাকা শুরু করলে বাঁশের কোটার মাথায় থলে সদৃশ্য জালতি লাগিয়ে আম পাড়তে হবে যেন আঘাত না লাগে। গাছের নিচে সাময়িক ভাবে রাখতে হলে খড় বিছিয়ে তার ওপর রাখতে হবে। নিম্নোক্ত লক্ষণ দেখে ফল সংগ্রহ করতে হবে : ১. আমের বোঁটার নিচে হলুদ বর্ণ ধারণ করলে। ২. পানিতে দিলে ডুবে যাবে। ৩. কষ বের হলে দ্রুত শুকে যাবে। ৪. দুই একটি পাকা আম গাছ থেকে ঝরে পড়বে।</p>\r\n\r\n<p><br />\r\n<strong>ফল সংরক্ষণ</strong>&nbsp;: আম পচনশীল ফল। বেশি পাকা অবস্থায় সংগ্রহ করলে সংরক্ষণকাল কম হয়। অধিকাংশ জাতের আম ১৩-১৭ ডিগ্রি সে. তাপমাএায় ও ৮৫-৯০% আপেক্ষিক আর্দ্রতায় বাঁশের ঝুড়ি, বাস্কেট, খড় বিছানো স্থানে ৪-৭ সপ্তাহ সংরক্ষণ করা যায়।<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>২. রোগ দমন<br />\r\nঅ্যানথ্রাকনোজ</strong><br />\r\nএ রোগ আমের পাতা ও ফলে হয়ে থাকে। এটি কোলিটোট্রিকাম গোলেসপোরিওডিস&nbsp;(Colletotrichum gloeosporioides)&nbsp;নামক এক প্রকার ছত্রাক দ্বারা হয়ে থাকে। এ রোগের কারণে আমের ফলন শূন্যের কাছাকাছি আসতে পারে।</p>\r\n\r\n<p><br />\r\n<strong>লক্ষণগুলো&nbsp;</strong>: ১. এ রোগ নতুন পাতা, পুষ্পমঞ্জরি ও ফলে দেখা যায়। ২. পাতায় ধূসর-বাদামি ছোট কৌষিক দাগ পড়ে এবং পরে সব পাতায় ছড়িয়ে পড়ে ও এক পর্যায় পাতা ঝরে পড়ে। ৩. ফলের ওপর প্রথমে গাঢ় বাদামি দাগ পড়ে। ৪. দাগগুলো পরে বড় হয়ে কাল বর্ণ ধারণ করে। ৫. আক্রমণ মারাত্মক হলে পরবর্তীতে সম্পূর্ণ আম পচে যায়।</p>\r\n\r\n<p><br />\r\n<strong>অনুকূল অবস্থা :</strong>&nbsp;১. তাপমাএা ২৫-২৮ ডিগ্রি সে.। ২. আপেক্ষিক আর্দ্রতা ৭০-৮০%। ৩. অধিক বৃষ্টিপাত। ৪. ঘন কুয়াশা ও আকাশ মেঘাচ্ছন এ রোগের প্রকোপ বাড়ায়।</p>\r\n\r\n<p><br />\r\n<strong>দমন ব্যবস্থা</strong>&nbsp;: ১. ফল সংগ্রহের পর বাগানের অবশিষ্টাংশ ধ্বংস করতে হবে। ২. স্বাস্থ্যবান চারা রোপণ করতে হবে। ৩. বোর্দো মিক্সচার ০.৩% হারে ৩-৪ বার স্প্রে করতে হবে (ফুল ধরার পূর্বে ও পরে এবং ফল সংগ্রহের পূর্বে)। ৪. ব্যাভিসটিন ডবলিউ/পি ০.২ % হারে অথবা ডাইথেন-এম ০.৩ % হারে দুই বার (ফুল ধরার আগে ও পরে ) স্প্রে করতে হবে।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>আমের বোঁটা ও ফল পচা</strong><br />\r\n<strong>রোগের কারণ&nbsp;</strong>: এ রোগ বোট্রিওডিপ্লডিয়া থিয়োব্রোমি&nbsp;(Botryodiplodia theobromae)&nbsp;নামক এক প্রকার ছত্রাক দ্বারা এ রোগ হয়ে থাকে। এ রোগ আমের বোঁটা ও ফলে হয়ে থাকে।</p>\r\n\r\n<p><br />\r\n<strong>রোগের লক্ষণগুলো :</strong>&nbsp;১. প্রথমে বোঁটার চারদিকে কিছু জায়গা জুড়ে কাল দাগ পড়ে। ২. পরবর্তীতে আমের অধিকাংশ ও সর্বশেষ অংশ পচে কাল রঙ ধারণ। ৩. আক্রান্ত স্থানে চাপ দিলে ভেতর থেকে পচা কাল গন্ধযুক্ত আমের রস বের হয়ে আসে।</p>\r\n\r\n<p><br />\r\n<strong>রোগ দমন :&nbsp;</strong>ক. যে কোনো একটি পদ্ধতিতে রোগ দমন করবেন : ১. ডাইথেন-এম-৪৫, ০.৩ % হারে ২-৩ বার স্প্রে করতে হবে। ২. রিডোমিল ০.১ % হারে ২-৩ বার স্প্রে করতে হবে। ৩. রোভরাল ০.১ % হারে ২-৩ বার স্প্রে করতে হবে। খ. আম হারভেস্ট করার পর ৪৩ ডিগ্রি সে. তাপমাত্রায় ৫ মিনিট ৬% বোরাক্স দ্রবণে চুবাতে হবে। গ. ফল সংগ্রহ করার পর ডালপালা, অবশিষ্টাংশ ধ্বংস করতে হবে।</p>\r\n\r\n<p><br />\r\n<strong>আমের পাউডারি মিলডিউ</strong><br />\r\n<strong>রোগের কারণ</strong>&nbsp;: এ রোগ ওডিয়াম মেংগিফেরা&nbsp;(Oidium mangiferae)&nbsp;নামক ছত্রাক দ্বারা এ রোগ হয়ে থাকে।</p>\r\n\r\n<p><br />\r\n<strong>রোগের লক্ষণগুলো</strong>&nbsp;: ১. পুষ্পমঞ্জরি ও উহার সংলগ্ন কচিপাতা এবং ছোট ফলের ওপর সাদা-ধূসর পাউডার দেখা যায়। ২. সাধারণত সংক্রামণে পুষ্পমঞ্জরির অগ্রভাগ ক্ষত শুরু করে নিচের দিকে ধাবিত হয় এবং কুঁচকে যেয়ে ডাই-বেক লক্ষণ প্রকাশ পায়। ৩. ফল অপরিপক্ব অবস্থায় ঝরে পড়ে এবং বিকৃত ও বিবর্ণ হয়।</p>\r\n\r\n<p><br />\r\n<strong>দমন ব্যবস্থা&nbsp;</strong>: ১. আমের বাগান পরিষ্কার পরিচ্ছিন্ন রাখতে হবে। ২. ছত্রাকের গঠন ধ্বংস করতে মাঝে মাঝে গাছে পানি স্প্রে করতে হবে। ৩. থিয়োভিট ০.৩ % হারে ফুল ফোটার পূর্বে এক বার ও পরে দুই বার স্প্রে করতে হবে। ৪. ম্যালাথিয়ন ০.২ % হারে ফুল ফোটার পর একবার ও গুটি আসার পর ১৫ দিন পর পর দুই বার স্প্রে করতে হবে।<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>৩. পোকামাকড় দমন<br />\r\nআমের শোষক পোকা/ আমের হপার</strong><br />\r\nএই পোকার তিনটি প্রজাতি ক্ষতি করে থাকে। নিম্নে ক্ষতির প্রকৃতি ও দমনব্যবস্থা দেয়া হলো।<br />\r\nক্ষতির প্রকৃতি : আমের অনিষ্টকারী পোকার মধ্যে এ পোকা সবচেয়ে বেশি ক্ষতিসাধন করে থাকে। আমের পাতা ও বোঁটায় এরা ডিম পাড়ে। এজন্য আক্রান্ত পাতা ও ফুল শুকিয়ে যায় এবং গুটি আসার আগেই ফুল ঝরে য়ায়। এতে ফলন মারাত্মকভাবে কমে যায়। এ পোকার আক্রমণের অন্যতম লক্ষণ হলো, আক্রান্ত গাছের নিচে দিয়ে হাঁটলে পোকা লাফিয়ে গায়ে পড়ে।</p>\r\n\r\n<p><br />\r\n<strong>দমন ব্যবস্থা&nbsp;</strong>: এ পোকা দমন করতে হলে মুকুল আসার আগে অথবা মুকুল আসার মুহূর্ত থেকে নিম্নলিখিত কীটনাশক স্প্রে করতে হবে : ডায়াজিনন ৬০ ইসি বা লেবাসিড ৫০ ইসি চা চামচের ৪ চামচ ৮.৫ লিটার পানিতে মিশিয়ে ১৫ দিন পর পর দুই বার স্প্রে করতে হবে। অথবা ম্যালাথিয়ন বা এমএসটি ৫৭ ইসি উপরোক্ত মাত্রায় স্প্রে করতে হবে।</p>\r\n\r\n<p><br />\r\n<strong>ফলের মাছি বা আমের মাছি পোকা</strong><br />\r\n<strong>ক্ষতির প্রকৃতি :&nbsp;</strong>এ পোকার কীড়া পাকা আমের মধ্যে প্রবেশ করে শাঁস খেয়ে ফেলে। এতে ফল পচে যায় ও ঝরে পড়ে। আক্রান্ত আম কাটলে অসংখ্য পোকা দেখা য়ায়। পোকার আক্রমণ বেশি হলে গাছের সব আম খাওয়ার অনুপযোগী হয়ে যায়।</p>\r\n\r\n<p><br />\r\n<strong>দমন ব্যবস্থা :</strong>&nbsp;আম পাকার আগে যখন পূর্ণ বৃদ্ধিপ্রাপ্ত হয় ডিপটেরেক্স চা চামুচের ৪ চামচ ৮.৫ লিটার পানিতে মিশিয়ে ৭ দিন পর পর দুই বার স্প্রে করতে হবে। অথবা ডায়াজিনন ৫০ ইসি ২মিলি/লিটার পানিতে মিশিয়ে ফলে স্প্রে করতে হবে (ওই সময়ে ফল খাওয়া যাবে না)।</p>\r\n\r\n<p><br />\r\n<strong>আমের বিছা পোকা</strong><br />\r\n<strong>ক্ষতির প্রকৃতি :</strong>&nbsp;এ পোকার কীড়া আমগাছের পাতা খেয়ে ফেলে। আক্রমণের মাত্রা বেশি হলে গাছ পত্রশূন্য হয়ে যায় এবং ফুল-ফল হয় না বা হলেও ঝরে পড়ে। তবে কোনো গাছ একবার আক্রান্ত হলে বার বার আক্রান্ত হওয়ার সম্ভাবনা থাকে।</p>\r\n\r\n<p><br />\r\n<strong>দমন ব্যবস্থা&nbsp;</strong>: আক্রান্ত গাছে ডাইমেক্রন ১০০ ইসি ৩০০ মিলি বা ডায়াজিনন ৫০ ইসি ৪০০ মিলি বা সুমিথিয়ন ৫০ ইসি ৪৫৪ মিলি ২২৫ লিটার পানিতে মিশিয়ে স্প্রে করতে হবে।</p>', 0, 1, 1, 2),
(4, '<p>Text size&nbsp;A&nbsp;A&nbsp;A</p>\r\n\r\n<p>Color&nbsp;C&nbsp;C&nbsp;C&nbsp;C</p>\r\n\r\n<p><img alt="print_btn" src="http://www.ais.gov.bd/themes/responsive_npf/images/print_btn.png" style="width:24px" title="প্রিন্ট" /></p>\r\n\r\n<h3>আমের ভালো ফলন নিশ্চিত করতে করণীয়</h3>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p><img alt="Magh-1422 krishikotha" src="http://www.ais.gov.bd/sites/default/files/files/ais.portal.gov.bd/krishi_kotha/5f76e871_7be4_44b5_9532_6ea2beaa34f0/Magh-1422%20krishikotha.jpg" style="width:200px" /></p>\r\n\r\n<p>বাংলাদেশে আম হলো ফলের রাজা এবং গাছ হলো জাতীয় আমগাছ। আম সাধারণত উষ্ণ ও অবউষ্ণম-লীয় অঞ্চলের জন্মে। ইন্দো-বার্মা অঞ্চলে আমের উৎপত্তিস্থল বলে ধারণা করা হয় তবে বাংলাদেশসহ ভারতীয় উপমহাদেশে আম সবচেয়ে জনপ্রিয় ফল কারণ এ ফল বৈচিত্র্যপূর্ণ ব্যবহার, পুষ্টিমান ও স্বাদে-গন্ধে অতুলনীয়। বাংলাদেশে প্রায় সব অঞ্চলে আম জন্মে কিন্তু দেশের উরাঞ্চলে এর বাণিজ্যিকভাবে ব্যাপক চাষ হয়ে থাকে। আম চাষিরা প্রতি বছর অনেক ক্ষতির শিকার হয়ে থাকেন সাধারণত দুই প্রকারের সমস্যার কারণে যথা- ১. প্রাকৃতিক কারণ (যেমন- ঝড়, শিলাবৃষ্টি, খরা প্রভৃতি) এবং (আ) রোগ ও পোকামাকড় দ্বারা আক্রান্ত হয়ে। সঠিক পরিচর্যা ও রোগ-পোকামাকড় দমন করে প্রথম ক্ষতি আংশিক এবং দ্বিতীয় ক্ষতি প্রায় সম্পূর্ণ রূপে সমাধান করা সম্ভব। নিচে তা পর্যায়ক্রমে আলোচনা করা হলো-<br />\r\n<strong>ফলন্ত আম গাছের পরিচর্চা</strong>&nbsp;: আম গাছের ফলধারণ ক্ষমতা বৃদ্ধি এবং ফলন বাড়ানোর জন্য নিম্নলিখিত পরিচর্চাগুলো করা একান্ত প্রয়োজন।<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>পরগাছা দমন&nbsp;</strong>: আমগাছে একাধিক জাতের আগাছা জন্মাতে দেখা যায়, যা গাছের স্বাভাবিক বৃদ্ধি ও স্বাস্থ্যের প্রতি ক্ষতিকর। পরগাছাসমূহে শিকড়ের মতো এক প্রকার হস্টোরিয়া হয়, যা গাছের মধ্যে প্রবেশ করে রস শোষণ করে এবং দুর্বল করে। পরগাছার পাদুর্ভাব বেশি হলে গাছের পাতার আকার ছোট হয় ও ফ্যাকাসে হয় এবং অনেক সময় গাছ মারা যায়। এর ফলে গাছের ফলন মারাত্মকভাবে কমে যায়। তাই ভালো ফলন পেতে হলে অবশ্যই পরগাছা অপসারণ করতে হবে।<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>সার প্রয়োগ&nbsp;</strong>: গাছের বৃদ্ধি ও ফল উৎপাদনের জন্য সারের ব্যবহার একান্ত প্রয়োজন। ফলন্ত গাছের আকার, বয়স ও মাটির উর্বরতার ওপর সারের পরিমাণ নির্ভর করে। দুপুর বেলা যতটুকু স্থানে ছায়া পড়ে সেটুকু স্থানে মাটি কুপিয়ে সার মাটির সঙ্গে মিশিয়ে দিতে হবে।</p>\r\n\r\n<p><br />\r\n<strong>সেচ প্রয়োগ&nbsp;</strong>: সাধারণত জমির ওপর স্তরে প্রয়োজনীয় খাদ্য উপাদান থাকে বা সার হিসেবে মাটিতে মিশিয়ে দেয়া হয় তাই আম বাগানের ওপরের ২-৩ মিটার অংশকে জমির পানি সংরক্ষণ স্তর হিসেবে ধরা হয়। তাই শুষ্ক মৌসুমে আম বাগানে পানি সেচ দেয়া দরকার। আমের গুটি মটর দানারমতো হওয়ার পর থেকে ১৫-২০ দিন পর পর ২-৩ বার সেচ দিলে আমের গুটি ঝরা বন্ধ হয়।</p>\r\n\r\n<p><br />\r\n<strong>বয়স্ক টক আমগাছকে মিষ্টি আমগাছে রূপান্তরকরণ&nbsp;</strong>: বাগানের কোনো গাছের আমের গুণাগুণ খারাপ হলে সে গাছকে নষ্ট না করে ভিনিয়ার কলমের মাধ্যমে উন্নতি সাধন করা য়ায়। বয়স্ক গাছের ২-৩টি ডাল কেটে দিলে সেখান থেকে নতুন শাখা বের হলে তার পর নতুন শাখাতে ভিনিয়ার কলম করে নিতে হবে। এভাবে ৩-৪ বারে কাজ সম্পন্ন করতে হবে।</p>\r\n\r\n<p><br />\r\n<strong>পুরনো বাগান নবায়ন</strong>&nbsp;: আম বাগানের বয়স বেশি হলে ফল ধারণ কমে যায়, তাই এ ক্ষেত্রে গাছ কেটে না ফেলে পুরনো গাছের ভারি শাখা কেটে দিলে সেখানে নতুন শাখা বের হবে এবং গাছ নবায়ন হয়ে যাবে। এভাবে ২-৩ বছরে বাগান নবায়ন করা যায়।</p>\r\n\r\n<p><br />\r\n<strong>ফসল সংগ্রহ :</strong>&nbsp;ফল ধরার ৩-৫ মাসের মধ্যেই জাতভেদে ফল পাকা শুরু করে। বাণিজ্যিকভাবে কখনো সম্পন্ন পাকা অবস্থায় আম গাছ থেকে পাড়া ঠিক নয়। গাছের ফল দুই চারটি পাকা শুরু করলে বাঁশের কোটার মাথায় থলে সদৃশ্য জালতি লাগিয়ে আম পাড়তে হবে যেন আঘাত না লাগে। গাছের নিচে সাময়িক ভাবে রাখতে হলে খড় বিছিয়ে তার ওপর রাখতে হবে। নিম্নোক্ত লক্ষণ দেখে ফল সংগ্রহ করতে হবে : ১. আমের বোঁটার নিচে হলুদ বর্ণ ধারণ করলে। ২. পানিতে দিলে ডুবে যাবে। ৩. কষ বের হলে দ্রুত শুকে যাবে। ৪. দুই একটি পাকা আম গাছ থেকে ঝরে পড়বে।</p>\r\n\r\n<p><br />\r\n<strong>ফল সংরক্ষণ</strong>&nbsp;: আম পচনশীল ফল। বেশি পাকা অবস্থায় সংগ্রহ করলে সংরক্ষণকাল কম হয়। অধিকাংশ জাতের আম ১৩-১৭ ডিগ্রি সে. তাপমাএায় ও ৮৫-৯০% আপেক্ষিক আর্দ্রতায় বাঁশের ঝুড়ি, বাস্কেট, খড় বিছানো স্থানে ৪-৭ সপ্তাহ সংরক্ষণ করা যায়।<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>২. রোগ দমন<br />\r\nঅ্যানথ্রাকনোজ</strong><br />\r\nএ রোগ আমের পাতা ও ফলে হয়ে থাকে। এটি কোলিটোট্রিকাম গোলেসপোরিওডিস&nbsp;(Colletotrichum gloeosporioides)&nbsp;নামক এক প্রকার ছত্রাক দ্বারা হয়ে থাকে। এ রোগের কারণে আমের ফলন শূন্যের কাছাকাছি আসতে পারে।</p>\r\n\r\n<p><br />\r\n<strong>লক্ষণগুলো&nbsp;</strong>: ১. এ রোগ নতুন পাতা, পুষ্পমঞ্জরি ও ফলে দেখা যায়। ২. পাতায় ধূসর-বাদামি ছোট কৌষিক দাগ পড়ে এবং পরে সব পাতায় ছড়িয়ে পড়ে ও এক পর্যায় পাতা ঝরে পড়ে। ৩. ফলের ওপর প্রথমে গাঢ় বাদামি দাগ পড়ে। ৪. দাগগুলো পরে বড় হয়ে কাল বর্ণ ধারণ করে। ৫. আক্রমণ মারাত্মক হলে পরবর্তীতে সম্পূর্ণ আম পচে যায়।</p>\r\n\r\n<p><br />\r\n<strong>অনুকূল অবস্থা :</strong>&nbsp;১. তাপমাএা ২৫-২৮ ডিগ্রি সে.। ২. আপেক্ষিক আর্দ্রতা ৭০-৮০%। ৩. অধিক বৃষ্টিপাত। ৪. ঘন কুয়াশা ও আকাশ মেঘাচ্ছন এ রোগের প্রকোপ বাড়ায়।</p>\r\n\r\n<p><br />\r\n<strong>দমন ব্যবস্থা</strong>&nbsp;: ১. ফল সংগ্রহের পর বাগানের অবশিষ্টাংশ ধ্বংস করতে হবে। ২. স্বাস্থ্যবান চারা রোপণ করতে হবে। ৩. বোর্দো মিক্সচার ০.৩% হারে ৩-৪ বার স্প্রে করতে হবে (ফুল ধরার পূর্বে ও পরে এবং ফল সংগ্রহের পূর্বে)। ৪. ব্যাভিসটিন ডবলিউ/পি ০.২ % হারে অথবা ডাইথেন-এম ০.৩ % হারে দুই বার (ফুল ধরার আগে ও পরে ) স্প্রে করতে হবে।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>আমের বোঁটা ও ফল পচা</strong><br />\r\n<strong>রোগের কারণ&nbsp;</strong>: এ রোগ বোট্রিওডিপ্লডিয়া থিয়োব্রোমি&nbsp;(Botryodiplodia theobromae)&nbsp;নামক এক প্রকার ছত্রাক দ্বারা এ রোগ হয়ে থাকে। এ রোগ আমের বোঁটা ও ফলে হয়ে থাকে।</p>\r\n\r\n<p><br />\r\n<strong>রোগের লক্ষণগুলো :</strong>&nbsp;১. প্রথমে বোঁটার চারদিকে কিছু জায়গা জুড়ে কাল দাগ পড়ে। ২. পরবর্তীতে আমের অধিকাংশ ও সর্বশেষ অংশ পচে কাল রঙ ধারণ। ৩. আক্রান্ত স্থানে চাপ দিলে ভেতর থেকে পচা কাল গন্ধযুক্ত আমের রস বের হয়ে আসে।</p>\r\n\r\n<p><br />\r\n<strong>রোগ দমন :&nbsp;</strong>ক. যে কোনো একটি পদ্ধতিতে রোগ দমন করবেন : ১. ডাইথেন-এম-৪৫, ০.৩ % হারে ২-৩ বার স্প্রে করতে হবে। ২. রিডোমিল ০.১ % হারে ২-৩ বার স্প্রে করতে হবে। ৩. রোভরাল ০.১ % হারে ২-৩ বার স্প্রে করতে হবে। খ. আম হারভেস্ট করার পর ৪৩ ডিগ্রি সে. তাপমাত্রায় ৫ মিনিট ৬% বোরাক্স দ্রবণে চুবাতে হবে। গ. ফল সংগ্রহ করার পর ডালপালা, অবশিষ্টাংশ ধ্বংস করতে হবে।</p>\r\n\r\n<p><br />\r\n<strong>আমের পাউডারি মিলডিউ</strong><br />\r\n<strong>রোগের কারণ</strong>&nbsp;: এ রোগ ওডিয়াম মেংগিফেরা&nbsp;(Oidium mangiferae)&nbsp;নামক ছত্রাক দ্বারা এ রোগ হয়ে থাকে।</p>\r\n\r\n<p><br />\r\n<strong>রোগের লক্ষণগুলো</strong>&nbsp;: ১. পুষ্পমঞ্জরি ও উহার সংলগ্ন কচিপাতা এবং ছোট ফলের ওপর সাদা-ধূসর পাউডার দেখা যায়। ২. সাধারণত সংক্রামণে পুষ্পমঞ্জরির অগ্রভাগ ক্ষত শুরু করে নিচের দিকে ধাবিত হয় এবং কুঁচকে যেয়ে ডাই-বেক লক্ষণ প্রকাশ পায়। ৩. ফল অপরিপক্ব অবস্থায় ঝরে পড়ে এবং বিকৃত ও বিবর্ণ হয়।</p>\r\n\r\n<p><br />\r\n<strong>দমন ব্যবস্থা&nbsp;</strong>: ১. আমের বাগান পরিষ্কার পরিচ্ছিন্ন রাখতে হবে। ২. ছত্রাকের গঠন ধ্বংস করতে মাঝে মাঝে গাছে পানি স্প্রে করতে হবে। ৩. থিয়োভিট ০.৩ % হারে ফুল ফোটার পূর্বে এক বার ও পরে দুই বার স্প্রে করতে হবে। ৪. ম্যালাথিয়ন ০.২ % হারে ফুল ফোটার পর একবার ও গুটি আসার পর ১৫ দিন পর পর দুই বার স্প্রে করতে হবে।<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>৩. পোকামাকড় দমন<br />\r\nআমের শোষক পোকা/ আমের হপার</strong><br />\r\nএই পোকার তিনটি প্রজাতি ক্ষতি করে থাকে। নিম্নে ক্ষতির প্রকৃতি ও দমনব্যবস্থা দেয়া হলো।<br />\r\nক্ষতির প্রকৃতি : আমের অনিষ্টকারী পোকার মধ্যে এ পোকা সবচেয়ে বেশি ক্ষতিসাধন করে থাকে। আমের পাতা ও বোঁটায় এরা ডিম পাড়ে। এজন্য আক্রান্ত পাতা ও ফুল শুকিয়ে যায় এবং গুটি আসার আগেই ফুল ঝরে য়ায়। এতে ফলন মারাত্মকভাবে কমে যায়। এ পোকার আক্রমণের অন্যতম লক্ষণ হলো, আক্রান্ত গাছের নিচে দিয়ে হাঁটলে পোকা লাফিয়ে গায়ে পড়ে।</p>\r\n\r\n<p><br />\r\n<strong>দমন ব্যবস্থা&nbsp;</strong>: এ পোকা দমন করতে হলে মুকুল আসার আগে অথবা মুকুল আসার মুহূর্ত থেকে নিম্নলিখিত কীটনাশক স্প্রে করতে হবে : ডায়াজিনন ৬০ ইসি বা লেবাসিড ৫০ ইসি চা চামচের ৪ চামচ ৮.৫ লিটার পানিতে মিশিয়ে ১৫ দিন পর পর দুই বার স্প্রে করতে হবে। অথবা ম্যালাথিয়ন বা এমএসটি ৫৭ ইসি উপরোক্ত মাত্রায় স্প্রে করতে হবে।</p>\r\n\r\n<p><br />\r\n<strong>ফলের মাছি বা আমের মাছি পোকা</strong><br />\r\n<strong>ক্ষতির প্রকৃতি :&nbsp;</strong>এ পোকার কীড়া পাকা আমের মধ্যে প্রবেশ করে শাঁস খেয়ে ফেলে। এতে ফল পচে যায় ও ঝরে পড়ে। আক্রান্ত আম কাটলে অসংখ্য পোকা দেখা য়ায়। পোকার আক্রমণ বেশি হলে গাছের সব আম খাওয়ার অনুপযোগী হয়ে যায়।</p>\r\n\r\n<p><br />\r\n<strong>দমন ব্যবস্থা :</strong>&nbsp;আম পাকার আগে যখন পূর্ণ বৃদ্ধিপ্রাপ্ত হয় ডিপটেরেক্স চা চামুচের ৪ চামচ ৮.৫ লিটার পানিতে মিশিয়ে ৭ দিন পর পর দুই বার স্প্রে করতে হবে। অথবা ডায়াজিনন ৫০ ইসি ২মিলি/লিটার পানিতে মিশিয়ে ফলে স্প্রে করতে হবে (ওই সময়ে ফল খাওয়া যাবে না)।</p>\r\n\r\n<p><br />\r\n<strong>আমের বিছা পোকা</strong><br />\r\n<strong>ক্ষতির প্রকৃতি :</strong>&nbsp;এ পোকার কীড়া আমগাছের পাতা খেয়ে ফেলে। আক্রমণের মাত্রা বেশি হলে গাছ পত্রশূন্য হয়ে যায় এবং ফুল-ফল হয় না বা হলেও ঝরে পড়ে। তবে কোনো গাছ একবার আক্রান্ত হলে বার বার আক্রান্ত হওয়ার সম্ভাবনা থাকে।</p>\r\n\r\n<p><br />\r\n<strong>দমন ব্যবস্থা&nbsp;</strong>: আক্রান্ত গাছে ডাইমেক্রন ১০০ ইসি ৩০০ মিলি বা ডায়াজিনন ৫০ ইসি ৪০০ মিলি বা সুমিথিয়ন ৫০ ইসি ৪৫৪ মিলি ২২৫ লিটার পানিতে মিশিয়ে স্প্রে করতে হবে।</p>', 0, 1, 2, 1),
(5, '<p>Text size&nbsp;A&nbsp;A&nbsp;A</p>\r\n\r\n<p>Color&nbsp;C&nbsp;C&nbsp;C&nbsp;C</p>\r\n\r\n<p><img alt="print_btn" src="http://www.ais.gov.bd/themes/responsive_npf/images/print_btn.png" style="width:24px" title="প্রিন্ট" /></p>\r\n\r\n<h3>আমের ভালো ফলন নিশ্চিত করতে করণীয়</h3>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p><img alt="Magh-1422 krishikotha" src="http://www.ais.gov.bd/sites/default/files/files/ais.portal.gov.bd/krishi_kotha/5f76e871_7be4_44b5_9532_6ea2beaa34f0/Magh-1422%20krishikotha.jpg" style="width:200px" /></p>\r\n\r\n<p>বাংলাদেশে আম হলো ফলের রাজা এবং গাছ হলো জাতীয় আমগাছ। আম সাধারণত উষ্ণ ও অবউষ্ণম-লীয় অঞ্চলের জন্মে। ইন্দো-বার্মা অঞ্চলে আমের উৎপত্তিস্থল বলে ধারণা করা হয় তবে বাংলাদেশসহ ভারতীয় উপমহাদেশে আম সবচেয়ে জনপ্রিয় ফল কারণ এ ফল বৈচিত্র্যপূর্ণ ব্যবহার, পুষ্টিমান ও স্বাদে-গন্ধে অতুলনীয়। বাংলাদেশে প্রায় সব অঞ্চলে আম জন্মে কিন্তু দেশের উরাঞ্চলে এর বাণিজ্যিকভাবে ব্যাপক চাষ হয়ে থাকে। আম চাষিরা প্রতি বছর অনেক ক্ষতির শিকার হয়ে থাকেন সাধারণত দুই প্রকারের সমস্যার কারণে যথা- ১. প্রাকৃতিক কারণ (যেমন- ঝড়, শিলাবৃষ্টি, খরা প্রভৃতি) এবং (আ) রোগ ও পোকামাকড় দ্বারা আক্রান্ত হয়ে। সঠিক পরিচর্যা ও রোগ-পোকামাকড় দমন করে প্রথম ক্ষতি আংশিক এবং দ্বিতীয় ক্ষতি প্রায় সম্পূর্ণ রূপে সমাধান করা সম্ভব। নিচে তা পর্যায়ক্রমে আলোচনা করা হলো-<br />\r\n<strong>ফলন্ত আম গাছের পরিচর্চা</strong>&nbsp;: আম গাছের ফলধারণ ক্ষমতা বৃদ্ধি এবং ফলন বাড়ানোর জন্য নিম্নলিখিত পরিচর্চাগুলো করা একান্ত প্রয়োজন।<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>পরগাছা দমন&nbsp;</strong>: আমগাছে একাধিক জাতের আগাছা জন্মাতে দেখা যায়, যা গাছের স্বাভাবিক বৃদ্ধি ও স্বাস্থ্যের প্রতি ক্ষতিকর। পরগাছাসমূহে শিকড়ের মতো এক প্রকার হস্টোরিয়া হয়, যা গাছের মধ্যে প্রবেশ করে রস শোষণ করে এবং দুর্বল করে। পরগাছার পাদুর্ভাব বেশি হলে গাছের পাতার আকার ছোট হয় ও ফ্যাকাসে হয় এবং অনেক সময় গাছ মারা যায়। এর ফলে গাছের ফলন মারাত্মকভাবে কমে যায়। তাই ভালো ফলন পেতে হলে অবশ্যই পরগাছা অপসারণ করতে হবে।<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>সার প্রয়োগ&nbsp;</strong>: গাছের বৃদ্ধি ও ফল উৎপাদনের জন্য সারের ব্যবহার একান্ত প্রয়োজন। ফলন্ত গাছের আকার, বয়স ও মাটির উর্বরতার ওপর সারের পরিমাণ নির্ভর করে। দুপুর বেলা যতটুকু স্থানে ছায়া পড়ে সেটুকু স্থানে মাটি কুপিয়ে সার মাটির সঙ্গে মিশিয়ে দিতে হবে।</p>\r\n\r\n<p><br />\r\n<strong>সেচ প্রয়োগ&nbsp;</strong>: সাধারণত জমির ওপর স্তরে প্রয়োজনীয় খাদ্য উপাদান থাকে বা সার হিসেবে মাটিতে মিশিয়ে দেয়া হয় তাই আম বাগানের ওপরের ২-৩ মিটার অংশকে জমির পানি সংরক্ষণ স্তর হিসেবে ধরা হয়। তাই শুষ্ক মৌসুমে আম বাগানে পানি সেচ দেয়া দরকার। আমের গুটি মটর দানারমতো হওয়ার পর থেকে ১৫-২০ দিন পর পর ২-৩ বার সেচ দিলে আমের গুটি ঝরা বন্ধ হয়।</p>\r\n\r\n<p><br />\r\n<strong>বয়স্ক টক আমগাছকে মিষ্টি আমগাছে রূপান্তরকরণ&nbsp;</strong>: বাগানের কোনো গাছের আমের গুণাগুণ খারাপ হলে সে গাছকে নষ্ট না করে ভিনিয়ার কলমের মাধ্যমে উন্নতি সাধন করা য়ায়। বয়স্ক গাছের ২-৩টি ডাল কেটে দিলে সেখান থেকে নতুন শাখা বের হলে তার পর নতুন শাখাতে ভিনিয়ার কলম করে নিতে হবে। এভাবে ৩-৪ বারে কাজ সম্পন্ন করতে হবে।</p>\r\n\r\n<p><br />\r\n<strong>পুরনো বাগান নবায়ন</strong>&nbsp;: আম বাগানের বয়স বেশি হলে ফল ধারণ কমে যায়, তাই এ ক্ষেত্রে গাছ কেটে না ফেলে পুরনো গাছের ভারি শাখা কেটে দিলে সেখানে নতুন শাখা বের হবে এবং গাছ নবায়ন হয়ে যাবে। এভাবে ২-৩ বছরে বাগান নবায়ন করা যায়।</p>\r\n\r\n<p><br />\r\n<strong>ফসল সংগ্রহ :</strong>&nbsp;ফল ধরার ৩-৫ মাসের মধ্যেই জাতভেদে ফল পাকা শুরু করে। বাণিজ্যিকভাবে কখনো সম্পন্ন পাকা অবস্থায় আম গাছ থেকে পাড়া ঠিক নয়। গাছের ফল দুই চারটি পাকা শুরু করলে বাঁশের কোটার মাথায় থলে সদৃশ্য জালতি লাগিয়ে আম পাড়তে হবে যেন আঘাত না লাগে। গাছের নিচে সাময়িক ভাবে রাখতে হলে খড় বিছিয়ে তার ওপর রাখতে হবে। নিম্নোক্ত লক্ষণ দেখে ফল সংগ্রহ করতে হবে : ১. আমের বোঁটার নিচে হলুদ বর্ণ ধারণ করলে। ২. পানিতে দিলে ডুবে যাবে। ৩. কষ বের হলে দ্রুত শুকে যাবে। ৪. দুই একটি পাকা আম গাছ থেকে ঝরে পড়বে।</p>\r\n\r\n<p><br />\r\n<strong>ফল সংরক্ষণ</strong>&nbsp;: আম পচনশীল ফল। বেশি পাকা অবস্থায় সংগ্রহ করলে সংরক্ষণকাল কম হয়। অধিকাংশ জাতের আম ১৩-১৭ ডিগ্রি সে. তাপমাএায় ও ৮৫-৯০% আপেক্ষিক আর্দ্রতায় বাঁশের ঝুড়ি, বাস্কেট, খড় বিছানো স্থানে ৪-৭ সপ্তাহ সংরক্ষণ করা যায়।<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>২. রোগ দমন<br />\r\nঅ্যানথ্রাকনোজ</strong><br />\r\nএ রোগ আমের পাতা ও ফলে হয়ে থাকে। এটি কোলিটোট্রিকাম গোলেসপোরিওডিস&nbsp;(Colletotrichum gloeosporioides)&nbsp;নামক এক প্রকার ছত্রাক দ্বারা হয়ে থাকে। এ রোগের কারণে আমের ফলন শূন্যের কাছাকাছি আসতে পারে।</p>\r\n\r\n<p><br />\r\n<strong>লক্ষণগুলো&nbsp;</strong>: ১. এ রোগ নতুন পাতা, পুষ্পমঞ্জরি ও ফলে দেখা যায়। ২. পাতায় ধূসর-বাদামি ছোট কৌষিক দাগ পড়ে এবং পরে সব পাতায় ছড়িয়ে পড়ে ও এক পর্যায় পাতা ঝরে পড়ে। ৩. ফলের ওপর প্রথমে গাঢ় বাদামি দাগ পড়ে। ৪. দাগগুলো পরে বড় হয়ে কাল বর্ণ ধারণ করে। ৫. আক্রমণ মারাত্মক হলে পরবর্তীতে সম্পূর্ণ আম পচে যায়।</p>\r\n\r\n<p><br />\r\n<strong>অনুকূল অবস্থা :</strong>&nbsp;১. তাপমাএা ২৫-২৮ ডিগ্রি সে.। ২. আপেক্ষিক আর্দ্রতা ৭০-৮০%। ৩. অধিক বৃষ্টিপাত। ৪. ঘন কুয়াশা ও আকাশ মেঘাচ্ছন এ রোগের প্রকোপ বাড়ায়।</p>\r\n\r\n<p><br />\r\n<strong>দমন ব্যবস্থা</strong>&nbsp;: ১. ফল সংগ্রহের পর বাগানের অবশিষ্টাংশ ধ্বংস করতে হবে। ২. স্বাস্থ্যবান চারা রোপণ করতে হবে। ৩. বোর্দো মিক্সচার ০.৩% হারে ৩-৪ বার স্প্রে করতে হবে (ফুল ধরার পূর্বে ও পরে এবং ফল সংগ্রহের পূর্বে)। ৪. ব্যাভিসটিন ডবলিউ/পি ০.২ % হারে অথবা ডাইথেন-এম ০.৩ % হারে দুই বার (ফুল ধরার আগে ও পরে ) স্প্রে করতে হবে।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>আমের বোঁটা ও ফল পচা</strong><br />\r\n<strong>রোগের কারণ&nbsp;</strong>: এ রোগ বোট্রিওডিপ্লডিয়া থিয়োব্রোমি&nbsp;(Botryodiplodia theobromae)&nbsp;নামক এক প্রকার ছত্রাক দ্বারা এ রোগ হয়ে থাকে। এ রোগ আমের বোঁটা ও ফলে হয়ে থাকে।</p>\r\n\r\n<p><br />\r\n<strong>রোগের লক্ষণগুলো :</strong>&nbsp;১. প্রথমে বোঁটার চারদিকে কিছু জায়গা জুড়ে কাল দাগ পড়ে। ২. পরবর্তীতে আমের অধিকাংশ ও সর্বশেষ অংশ পচে কাল রঙ ধারণ। ৩. আক্রান্ত স্থানে চাপ দিলে ভেতর থেকে পচা কাল গন্ধযুক্ত আমের রস বের হয়ে আসে।</p>\r\n\r\n<p><br />\r\n<strong>রোগ দমন :&nbsp;</strong>ক. যে কোনো একটি পদ্ধতিতে রোগ দমন করবেন : ১. ডাইথেন-এম-৪৫, ০.৩ % হারে ২-৩ বার স্প্রে করতে হবে। ২. রিডোমিল ০.১ % হারে ২-৩ বার স্প্রে করতে হবে। ৩. রোভরাল ০.১ % হারে ২-৩ বার স্প্রে করতে হবে। খ. আম হারভেস্ট করার পর ৪৩ ডিগ্রি সে. তাপমাত্রায় ৫ মিনিট ৬% বোরাক্স দ্রবণে চুবাতে হবে। গ. ফল সংগ্রহ করার পর ডালপালা, অবশিষ্টাংশ ধ্বংস করতে হবে।</p>\r\n\r\n<p><br />\r\n<strong>আমের পাউডারি মিলডিউ</strong><br />\r\n<strong>রোগের কারণ</strong>&nbsp;: এ রোগ ওডিয়াম মেংগিফেরা&nbsp;(Oidium mangiferae)&nbsp;নামক ছত্রাক দ্বারা এ রোগ হয়ে থাকে।</p>\r\n\r\n<p><br />\r\n<strong>রোগের লক্ষণগুলো</strong>&nbsp;: ১. পুষ্পমঞ্জরি ও উহার সংলগ্ন কচিপাতা এবং ছোট ফলের ওপর সাদা-ধূসর পাউডার দেখা যায়। ২. সাধারণত সংক্রামণে পুষ্পমঞ্জরির অগ্রভাগ ক্ষত শুরু করে নিচের দিকে ধাবিত হয় এবং কুঁচকে যেয়ে ডাই-বেক লক্ষণ প্রকাশ পায়। ৩. ফল অপরিপক্ব অবস্থায় ঝরে পড়ে এবং বিকৃত ও বিবর্ণ হয়।</p>\r\n\r\n<p><br />\r\n<strong>দমন ব্যবস্থা&nbsp;</strong>: ১. আমের বাগান পরিষ্কার পরিচ্ছিন্ন রাখতে হবে। ২. ছত্রাকের গঠন ধ্বংস করতে মাঝে মাঝে গাছে পানি স্প্রে করতে হবে। ৩. থিয়োভিট ০.৩ % হারে ফুল ফোটার পূর্বে এক বার ও পরে দুই বার স্প্রে করতে হবে। ৪. ম্যালাথিয়ন ০.২ % হারে ফুল ফোটার পর একবার ও গুটি আসার পর ১৫ দিন পর পর দুই বার স্প্রে করতে হবে।<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>৩. পোকামাকড় দমন<br />\r\nআমের শোষক পোকা/ আমের হপার</strong><br />\r\nএই পোকার তিনটি প্রজাতি ক্ষতি করে থাকে। নিম্নে ক্ষতির প্রকৃতি ও দমনব্যবস্থা দেয়া হলো।<br />\r\nক্ষতির প্রকৃতি : আমের অনিষ্টকারী পোকার মধ্যে এ পোকা সবচেয়ে বেশি ক্ষতিসাধন করে থাকে। আমের পাতা ও বোঁটায় এরা ডিম পাড়ে। এজন্য আক্রান্ত পাতা ও ফুল শুকিয়ে যায় এবং গুটি আসার আগেই ফুল ঝরে য়ায়। এতে ফলন মারাত্মকভাবে কমে যায়। এ পোকার আক্রমণের অন্যতম লক্ষণ হলো, আক্রান্ত গাছের নিচে দিয়ে হাঁটলে পোকা লাফিয়ে গায়ে পড়ে।</p>\r\n\r\n<p><br />\r\n<strong>দমন ব্যবস্থা&nbsp;</strong>: এ পোকা দমন করতে হলে মুকুল আসার আগে অথবা মুকুল আসার মুহূর্ত থেকে নিম্নলিখিত কীটনাশক স্প্রে করতে হবে : ডায়াজিনন ৬০ ইসি বা লেবাসিড ৫০ ইসি চা চামচের ৪ চামচ ৮.৫ লিটার পানিতে মিশিয়ে ১৫ দিন পর পর দুই বার স্প্রে করতে হবে। অথবা ম্যালাথিয়ন বা এমএসটি ৫৭ ইসি উপরোক্ত মাত্রায় স্প্রে করতে হবে।</p>\r\n\r\n<p><br />\r\n<strong>ফলের মাছি বা আমের মাছি পোকা</strong><br />\r\n<strong>ক্ষতির প্রকৃতি :&nbsp;</strong>এ পোকার কীড়া পাকা আমের মধ্যে প্রবেশ করে শাঁস খেয়ে ফেলে। এতে ফল পচে যায় ও ঝরে পড়ে। আক্রান্ত আম কাটলে অসংখ্য পোকা দেখা য়ায়। পোকার আক্রমণ বেশি হলে গাছের সব আম খাওয়ার অনুপযোগী হয়ে যায়।</p>\r\n\r\n<p><br />\r\n<strong>দমন ব্যবস্থা :</strong>&nbsp;আম পাকার আগে যখন পূর্ণ বৃদ্ধিপ্রাপ্ত হয় ডিপটেরেক্স চা চামুচের ৪ চামচ ৮.৫ লিটার পানিতে মিশিয়ে ৭ দিন পর পর দুই বার স্প্রে করতে হবে। অথবা ডায়াজিনন ৫০ ইসি ২মিলি/লিটার পানিতে মিশিয়ে ফলে স্প্রে করতে হবে (ওই সময়ে ফল খাওয়া যাবে না)।</p>\r\n\r\n<p><br />\r\n<strong>আমের বিছা পোকা</strong><br />\r\n<strong>ক্ষতির প্রকৃতি :</strong>&nbsp;এ পোকার কীড়া আমগাছের পাতা খেয়ে ফেলে। আক্রমণের মাত্রা বেশি হলে গাছ পত্রশূন্য হয়ে যায় এবং ফুল-ফল হয় না বা হলেও ঝরে পড়ে। তবে কোনো গাছ একবার আক্রান্ত হলে বার বার আক্রান্ত হওয়ার সম্ভাবনা থাকে।</p>\r\n\r\n<p><br />\r\n<strong>দমন ব্যবস্থা&nbsp;</strong>: আক্রান্ত গাছে ডাইমেক্রন ১০০ ইসি ৩০০ মিলি বা ডায়াজিনন ৫০ ইসি ৪০০ মিলি বা সুমিথিয়ন ৫০ ইসি ৪৫৪ মিলি ২২৫ লিটার পানিতে মিশিয়ে স্প্রে করতে হবে।</p>', 0, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `service_sliderinfo`
--

CREATE TABLE `service_sliderinfo` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slider_images` varchar(100) NOT NULL,
  `upload_date` datetime(6) NOT NULL,
  `slider_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `description` longtext NOT NULL,
  `slider_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_sliderinfo`
--

INSERT INTO `service_sliderinfo` (`id`, `title`, `slider_images`, `upload_date`, `slider_order`, `status`, `description`, `slider_name`) VALUES
(1, 'ফল আকারে বেশ বড়। ওজন ৪০০-৫০০ গ্রাম। পরিপক্ক ফল হলুদাভ সবুজ এবং ভিতরের শাঁস সাদা। এ ফল ৭-১০ দিন ঘরে সাধারণ তাপমাত্রায় সংরক্ষন করা যায়। কাজী পেঁয়ারা খেতে সামান্য টক।', 'images/slider/12.jpg', '2020-08-20 13:33:36.473626', 1, 1, '<h2><img alt="peyara (1)" src="http://www.ais.gov.bd/sites/default/files/files/ais.portal.gov.bd/ekrishi/d1591511_396c_4abf_9d68_2aa0fa95824c/peyara%20(1).jpg" title="guava" /></h2>\r\n\r\n<p><strong>ভূমিকা:</strong>&nbsp;পেঁয়ারা গাছের পাতা, কান্ড, শাখা-প্রশাখা ও ফল এ রোগে আক্রান্ত হয়ে থাকে। এক ধরণের ছত্রাকের আক্রমনে এমনটি হয়ে থাকে।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>পুষ্টি মূল্য:</strong>&nbsp;পেঁয়ারা ভিটামিন সি সমৃদ্ধ একটি ফল।</p>\r\n\r\n<p><strong>ভেষজ গুণ:&nbsp;</strong>শিকড়, গাছের বাকল, পাতা এবং অপরিপক্ক ফল কলেরা, আমাশয় ও অন্যান্য পেটের পীড়া নিরাময়ে কাজ&nbsp; করে।<br />\r\n<strong>উপযুক্ত জমি ও মাটি:&nbsp;</strong>সুনিষ্কাসিত উঁচু জমি ও মাঝারি উঁচু জমি পেয়ারা চাষের জন্য উপযোগি।<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>জাত পরিচি</strong>তি:স্থানীয় জাতের মধ্যে-স্বরুপকাঠি, কাঞ্চননগর, মুকুন্দপুরী এবং উন্নত জাতের মধ্যে কাজী পেঁয়ারা, বারি পেঁয়ারা -২ অন্যতম।</p>\r\n\r\n<p><strong>কাজী পেঁয়ারা:&nbsp;</strong>ফল আকারে বেশ বড়। ওজন ৪০০-৫০০ গ্রাম। পরিপক্ক ফল হলুদাভ সবুজ এবং ভিতরের&nbsp;শাঁস সাদা। এ ফল ৭-১০ দিন ঘরে সাধারণ তাপমাত্রায় সংরক্ষন করা যায়। কাজী পেঁয়ারা খেতে সামান্য টক।<br />\r\n<br />\r\n<strong>বারি পেঁয়ারা-২:</strong>&nbsp;গাছ ছাতাকৃতি ও কাজী পেঁয়ারার চেয়ে খাটো হয়। পাতার অগ্রভাগ সুচালো। এ জাতটি বর্ষাকাল ও শীতকাল ২ বার ফল দেয়। পেঁয়ারা খেতে সুস্বাদু ও মিষ্টি।<br />\r\n<br />\r\n<strong>চারা তৈরি:</strong></p>\r\n\r\n<p><strong>গুটি কলমের মাধ্যমে চারা তৈরি করা হয়।</strong></p>\r\n\r\n<p>চারা রোপণ: সমতল ভূমিতে বর্গাকার ও ষড়ভূজী এবং পাহাড়ি ভূমিতে কন্টুর পদ্ধতিতে করা হয়। পেঁয়ারার চারা মধ্য জ্যৈষ্ঠ থেকে মধ্য আশ্বিন মাসে রোপণ করা হয়। রোপণের আগে গর্ত তৈরি করে নিতে হয়। প্রতি চারা থেকে চারার দূরত্ব ৪ মিটার রাখতে হয়।<br />\r\n<br />\r\n<strong>সার ব্যবস্থাপনা:</strong><br />\r\nপ্রতি গর্তে গোবর ২০ কেজি, পচা খৈল ২ কেজি, টিএসপি সার ২০০ গ্রাম, এমওপি সার ২০০ গ্রাম প্রযোগ করতে হয়। তবে বয়সবৃদ্ধির সাথে সাখে সারের পরিমানও বৃদ্ধি করতে হয়।<br />\r\n<br />\r\n<strong>অন্তবর্তীকালীন পরিচর্যা:</strong></p>\r\n\r\n<p>পেঁয়ারা সংগ্রহের পর ভাঙ্গা, রোগাক্রান্ত ও মরা শাখা-প্রশাখা ছাঁটাই করে ফেলতে হয়। তাতে গাছে আবার নতুন নতুন কুঁড়ি জন্মায়। পেঁয়ারা গাছে প্রতি বছর প্রচুর সংখ্যক ফল দিয়ে থাকে। তাই মার্বেল আকৃতি হলেই কিছু ফল ফেলে দেয়া দরকার।</p>\r\n\r\n<p><br />\r\n<strong>সেচ ও আগাছা ব্যবস্থাপনা:</strong><br />\r\nখরার সময় ২-৩ বার পানি সেচ দিতে হয়। তাছাড়া গাছের গোড়া থেকে আগাছা পরিষ্কার করতে হয়।<br />\r\n<br />\r\n<strong>রোগব্যবস্থাপনা<br />\r\nরোগের নাম:</strong></p>\r\n\r\n<p>পেঁয়ারার এ্যানথ্রাকনোজ রোগ দমন<br />\r\n<br />\r\n<strong>ক্ষতির নমুনা:</strong></p>\r\n\r\n<p>প্রথমে পেঁয়ারার গায়ে ছোট ছোট বাদামী রঙের দাগ দেখা যায়। দাগগুলো ক্রমান্বয়ে বড় হয়ে পেঁয়ারার গায়ে ক্ষত সৃষ্টি করে। আক্রান্ত ফল অনেক সময় ফেটে যায়। তাছাড়া এ রোগে আক্রান্ত ফলের শাঁস শক্ত হয়ে যায়।<br />\r\n<br />\r\n<strong>অনুকূল পরিবেশ:</strong></p>\r\n\r\n<p>বাতাস ও বৃষ্টির মাধ্যমে রোগের জীবাণু ছড়িয়ে পড়ে।<br />\r\n<br />\r\n<strong>বিস্তার:</strong><br />\r\nগাছের পরিত্যক্ত শাখা প্রশাখা, ফল এবং পাতায় এ রোগের জীবাণু বেঁচে থাকে এবং পরে বিস-ার লাভ করে।</p>\r\n\r\n<p><br />\r\n<strong>প্রতিকার:</strong><br />\r\nগাছের নিচে ঝরে পড়া পাতা ও ফল সংগ্রহ করে পুড়ে ফেলতে হয়। গাছে ফুল ধরার পর টপসিন-এম প্রতি লিটার পানিতে ২ গ্রাম অথবা টিল্ট ২৫০ ইসি প্রতি লিটার পানিতে ০.৫ মি.লি হারে মিশিয়ে ১৫ দিন পর পর ৩-৪ বার ভালভাবে সেপ্র করে এ রোগ দমন করা যায়।<br />\r\n<br />\r\n<strong>ফসল তোলা:&nbsp;</strong>সবুজ থেকে হলদে সবুজ রঙ ধারণ করলে ফল সংগ্রহ করতে হয়।</p>', 'গম চাষ পদ্ধতি ও জাতসমুহ'),
(2, 'পাকা ফল বলকারক, কফপিত্ত বর্ধক, পাচক ও ঘর্মকারক। কাঁচা ফল গর্ভপাতকারী। পাকা ফলের সদ্য রসে ব্রোমিলিন নামক এক জাতীয় জারক রস থাকে বলে এটি পরিপাক ক্রিয়ার সহায়ক এবং রস পান্ডুরোগে হিতকর।', 'images/slider/15.jpg', '2020-08-20 13:35:02.694245', 0, 1, '<h2><img alt="Pineapple" src="http://www.ais.gov.bd/sites/default/files/files/ais.portal.gov.bd/ekrishi/aff5a262_4554_4b54_b7df_e9312f1062f6/Pineapple.jpg" title="Pineapple" /></h2>\r\n\r\n<p><strong>পুষ্টি মূল্য:</strong>&nbsp;আনারস ভিটামিন এ, বি ও সি এর একটি উত্তম উৎস।</p>\r\n\r\n<p><br />\r\n<strong>ভেষজ গুণ :</strong>পাকা ফল বলকারক, কফপিত্ত বর্ধক, পাচক ও ঘর্মকারক। কাঁচা ফল গর্ভপাতকারী। পাকা ফলের সদ্য রসে ব্রোমিলিন নামক এক জাতীয় জারক রস থাকে বলে এটি পরিপাক ক্রিয়ার সহায়ক এবং রস পান্ডুরোগে হিতকর। কচি ফলের শাঁস ও পাতার রস মধুর সাথে মিশিয়ে সেবন করলে ক্রিমির হাত থেকে রক্ষা পাওয়া যায়।<br />\r\n<br />\r\n<strong>ব্যবহার:</strong>&nbsp;জ্যাম ও জেলি।<br />\r\n<br />\r\n<strong>জাত পরিচিতি:</strong><br />\r\n<strong>হানিকুইন:</strong></p>\r\n\r\n<p>হানিকুইন সবচেয়ে মিষ্টি আনারস। পাকা আনারসের শাঁস হলুদ রঙের। চোখ সুঁচালু ও উন্নত। গড় ওজন ১ কেজি।<br />\r\n<br />\r\n<strong>জায়েন্টকিউ:</strong></p>\r\n\r\n<p>গাছের পাতা সবুজ প্রায় কাটা বিহীন। পাকা আনারস সবুজাভ ও শাঁস হালকা হলুদ। গড় ওজন ২ কেজি। চোখ প্রশস্ত ও চেপ্টা।<br />\r\n<br />\r\n<strong>ঘোড়াশাল:</strong></p>\r\n\r\n<p>পাকা আনারস লালচে এবং ঘিয়ে সাদা হয়। চোখ প্রশস্ত। গড় ওজন ১.২৫ কেজি। পাতা কাটা বিশিষ্ট, চওড়া ও ঢেউ খেলানো।<br />\r\n<br />\r\n<strong>উপযুক্ত জমি ও মাটি:</strong>&nbsp;উঁচু জমি ও পানি দাঁড়ায় না। মাটি হতে হবে দোআঁশ ও বেলে দোআঁশ। জমি থেকে ১৫ সে.মি উঁচু এবং ১ মিটার প্রশস- বেড তেরি করতে হবে। এক বেড থেকে অন্য বেডের মধ্যে ৫০-১০০ সে.মি ফাঁক রাখতে হবে।<br />\r\n<br />\r\n<strong>চারা রোপণ:</strong></p>\r\n\r\n<p>মধ্য আশ্বিন থেকে মধ্যঅগ্রাহায়ণ পর্যন্ত আনারসের চারা লাগানোর ভালো সময়। সেচ সুবিধা থাকলে মধ্য মাঘ থেকে মধ্য ফাল্গুন পর্যন্ত আনারসের চারা লাগানো যায়। লাইন থেকে লাইনের দূরত্ব ৫০ সেন্টিমিটার এবং চারা থেকে চারার দূরত্ব ৪০ সেন্টিমিটার হতে হয়।<br />\r\n<br />\r\n<strong>মুড়ি ফসল:</strong><br />\r\nআনারস চাষে অন্যান্য লাভের সাথে আরেকটি লাভ মুড়ি ফসল। মুড়িগাছ একাধিক বছর পর্যন্ত বেঁচে থাকে এবং ফল ধরে। সাধারণত: মুড়ি ফসল থেকে ৫ থেকে ৬ বছর সফলভাবে ফল সংগ্রহ করা যায়। ঘোড়াশাল জাতের বেলায় কাপাসিয়া এলাকায় ৪০ থেকে ৬০ বছরেরও বেশি সময় ধরে মুড়ি ফসল থেকে ফল পাওয়া যাচ্ছে। তবে এ ক্ষেত্রে আগাছা পরিষ্কার, শূন্যস্থান পূরণ, সার প্রয়োগ, বালাই ব্যবস্থাপনা ইত্যাদির প্রতি বিশেষ নজর দিতে হবে।<br />\r\n<br />\r\n<strong>আনারসের সাথে সাথী ফসল চাষ:</strong><br />\r\nআনারসের সাথে অনায়াসে আদা, সয়াবিন, সরিষা, কলাই, কচু ইত্যাদি সাথী ফসল হিসেবে চাষ করা যায়।<br />\r\n<br />\r\n<strong>সার ব্যবস্থাপনা:</strong></p>\r\n\r\n<p>গাছ প্রতি সার প্রয়োগের পরিমান যথাক্রমে পচা গোবর ৩১০ গ্রাম, ইউরিয়া সার ৩৬ গ্রাম, টিএসপি সার ১৫ গ্রাম, এমওপি সার ৩৫ গ্রাম, জিপসাম সার ১৫ গ্রাম প্রয়োগ করতে হয়।&nbsp; ইউরিয়া ও পটাশ সরি চারা রোপণের ৪-৫ মাস পর থেকে শুরু করে ৫ কিসি-তে প্রয়োগ করতে<br />\r\nহবে। অন্যান্য সার বেড তৈরির সময় মাটির সাথে মিশিয়ে দিতে হবে।<br />\r\n<br />\r\n<strong>সেচ ও আগাছা ব্যবস্থাপনা:</strong></p>\r\n\r\n<p>শুকনো মৌসুমে আনারস ক্ষেতে সেচ দেওয়া দরকার। তাছাড়া বর্ষাকালে যাতে অতিরিক্ত পানি না জমে সে ব্যবস্থা করতে হবে।&nbsp; চারা বেশি লম্বা হলে ৩০ সে.মি পরিমান রেখে আগার পাতা সমান করে কেটে দিতে হবে। আগাছা আনারসের খুবই ক্ষতি করে। বছরে অন-তঃ দু&rsquo;বার আগাছা পরিষ্কার করতে হবে; একবার আগষ্ট-সেপ্টেম্বর মাসে ফল সংগ্রহ করার পর ও দ্বিতীয় বার অক্টোবর-নভেম্বর মাসে। জমিতে সেচ প্রদান এবং সার প্রয়োগের পর মালচিং করে নিলে জমি আগাছা মুক্ত থাকে। আগাছা দিয়ে মালচিং করার পর একসময় পচে জৈব সার হিসেবে মাটিতে যুক্ত হয় এবং এতে করে মাটির উর্বরতা শক্তি বৃদ্ধি পায়।<br />\r\n<br />\r\n<strong>ফসল তোলা:</strong></p>\r\n\r\n<p>চারা রোপণের ১৫-১৬ মাস পর জ্যৈষ্ঠ থেকে মধ্য ভাদ্র মাসে সংগ্রহ করতে হয়।<br />\r\n<br />\r\n<strong>পাহাড়ী এলাকায় আনারস চাষ:</strong></p>\r\n\r\n<p>পাহাড়ী এলাকায় সাধারণত: ট্যারেসিং বা কন্টুর পদ্ধতিতে (৬০ সেমি গভীর ও ৩০ সেমি প্রস&#39;) চাষ করা ভালো। পাহাড়ী এলাকায় জমি তৈরিতে সতর্কতা অবলম্বন করতে হবে । কেনো না বেশি নাড়াচাড়া করলে ভূমি ক্ষয় হয়ে যাবে।</p>', 'আঙ্গুর চাষ পদ্ধতি ও জাতসমুহ'),
(3, 'জমি ভালভাবে গভীর করে চাষ দিতে হয়। দুই মিটার দূরে দূরে ২ ফুট গভীর করে গর্ত তৈরি করে নিতে হয়। কলার চার বছরে তিন মৌসুমে রোপণ করা যায়-আশ্বিন-কার্তিক, মাঘ-ফাল্গুন এবং চৈত্র-বৈশাখ।', 'images/slider/8_AZFvld3.jpg', '2020-08-20 13:35:28.215227', 2, 1, '<p>ফুলকপি বাংলাদেশে একটি অত্যন্ত জনপ্রিয় শীতকালীন পুষ্টিকর সবজি। ফুলকপি পুষ্টিগুণে সমৃদ্ধ স্বাস্থ্যকর সবজিগুলোর একটি। ফুলকপিতে পানি থাকে ৮৫% , অল্প পরিমাণে কার্বোহাইড্রেট, ফ্যাট ও প্রোটিন থাকে। কম ক্যালোরির এই সবজিতে ভিটামিন &lsquo;এ&rsquo;, &lsquo;সি&rsquo; ও ক্যালসিয়াম, মিনারেল, অ্যান্টিঅক্সিডেন্ট এবং অন্য ফাইটোকেমিক্যালও থাকে। এই বহুমুখী গুণ সম্পন্ন সবজিটি কাঁচা, সেদ্ধ বা রান্না করেও খাওয়া যায়। চলুন জেনে নিই শীতের সবজি ফুলকপির আরও পুষ্টিগুণ ও চমৎকার কিছু স্বাস্থ্য উপকারিতার বিষয়ে।</p>\r\n\r\n<p><strong>ক্যান্সার প্রতিরোধ</strong><br />\r\nফুলকপিতে সালফারের যৌগ সালফোরাফেন থাকে যা ব্লাড প্রেশারের উন্নতিতে সাহায্য করে। ফুলকপিতে থাকা সালফোরাফেন ক্যান্সার সৃষ্টিকারী কোষ ধ্বংস করতে পারে এবং টিউমারের বৃদ্ধিকে বাঁধা দেয়। ফুলকপির সাথে হলুদ যোগ করে গ্রহণ করলে প্রোস্টেট ক্যান্সার নিরাময়ে ও প্রতিরোধে অত্যন্ত কার্যকরী ভূমিকা রাখে। এছাড়া পাকস্হলী, প্রোষ্টেট, স্তন ও ডিম্বাশয় ক্যান্সার প্রতিরোধেও সাহায্য করে ফুলকপি।</p>\r\n\r\n<p><strong>মস্তিষ্কের উন্নতি ঘটায়</strong><br />\r\nফুলকপি মস্তিষ্ক ভালো রাখে, ফুলকপিতে ভিটামিন বি রয়েছে যা মস্তিষ্কের উন্নয়নে ভূমিকা রাখে। গর্ভাবস্থায় এ সবজি একটি ভালো খাদ্য হিসেবে বিবেচিত হয়। ফুলকপি নবজাতকের মস্তিষ্কের উন্নতি সাধন করতে কাজ করে।</p>\r\n\r\n<p><strong>ফুসফুসকে রক্ষা করে</strong><br />\r\nফুলকপি ফুসফুস রক্ষায় সহায়তা করে। নতুন এক গবেষণায় জানা গেছে, ভয়াবহ ফুসফুস রোগের জন্য যেসব কারণ দায়ী তা প্রতিরোধে ফুলকপি সহায়ক ভূমিকা পালন করতে পারে। ডায়াবেটিসের কারণে রক্তনালীর যে ক্ষতি হয় সবজিটি তা প্রতিরোধেও সহায়তা করে। এছাড়া ফুলকপি হার্ট অ্যাটাক ও স্ট্রোকের ঝুঁকি কমিয়ে দেয়।</p>\r\n\r\n<p><strong>শরীরকে বিষমুক্ত হতে সাহায্য করে</strong><br />\r\nফুলকপির অ্যান্টিঅক্সিডেন্ট এবং অন্যান্য পুষ্টি উপাদান শরীর পরিষ্কার হতে সাহায্য করে। এছাড়াও এতে গ্লুকোসাইনোলেটস থাকে যা এনজাইমকে সক্রিয় করে এবং ডিটক্স হতে সাহায্য করে।</p>\r\n\r\n<p><strong>প্রদাহ কমায়</strong><br />\r\nফুলকপিতে ইন্ডোল ৩ কার্বিনোল বা I3C থাকে যা একটি অ্যান্টিইনফ্লামেটরি উপাদান। এটি শক্তিশালী ইনফ্লামেটরি রিঅ্যাকশন প্রতিরোধ করে।</p>\r\n\r\n<p><strong>রক্তচাপ নিয়ন্ত্রণে</strong><br />\r\nশীতের সুস্বাদু সবজি ফুলকপির আরও একটি অন্যতম গুণের একটি হল রক্তচাপ নিয়ন্ত্রণে রাখা। যারা ডায়াবেটিস ও উচ্চরক্তচাপজনিত সমস্যায় ভুগে থাকেন, তারা ফুলকপি খাবারের তালিকায় রাখতে দ্বিধা করবেন না।</p>\r\n\r\n<p><strong>চোখকে ভালো রাখে</strong><br />\r\nফুলকপিতে ভিটামিন এ-এর পরিমাণ বেশি থাকায় চোখকে সুস্থ রাখতে সহায়তা করে। এমনকি দেহের কোথাও কেটে গেলে ফুলকপির কচি পাতার রস লাগালে ভালো ফল পাওয়া যায়।</p>\r\n\r\n<p><strong>হজমের উন্নতি ঘটায়</strong><br />\r\nফুলকপি হজমে সাহায্য করে, ফাইবারের একটি গুরুত্বপূর্ণ উৎস হওয়ায় ফুলকপি হজমে সাহায্য করে। সবজিতে বিদ্যমান ব্যাকটেরিয়ার বিরুদ্ধে যুদ্ধ করে সুস্থ থাকতেও ভূমিকা রাখে।</p>\r\n\r\n<p><strong>বাড়তি ওজন কমাতে</strong><br />\r\nফুলকপি শরীরের বাড়তি মেদ কমিয়ে শরীরকে একটি সুন্দর গঠনে আনতে সাহায্য করে। যারা তাদের শরীরের বাড়তি ওজন নিয়ে চিন্তিত ও&nbsp;<a href="http://charpashe.com/tag/%E0%A6%A1%E0%A6%BE%E0%A7%9F%E0%A7%87%E0%A6%9F" target="_blank">ডায়েট</a>&nbsp;করার কথা ভাবছেন তারা নির্দ্বিধায় ডায়েট লিস্টে ফুলকপির নাম অন্তর্ভুক্ত করতে পারেন।</p>\r\n\r\n<p><strong>ফাইটোনিউট্রিয়েন্ট এবং অ্যান্টিঅক্সিডেন্টে সমৃদ্ধ</strong><br />\r\nফুলকপিতে ভিটামিন সি, বিটাক্যারোটিন, কায়েম্ফেরোল, কোয়ারসেটিন, রুটিন, সিনামিক এসিড সহ আরো অনেক উপাদান থাকে। এই অ্যান্টিঅক্সিডেন্টগুলো ফ্রি র&zwj;্যাডিকেলের ক্ষতির হাত থেকে শরীরকে সুরক্ষা দেয়। এগুলো বয়স বৃদ্ধির প্রক্রিয়াকে ধীর গতির করে এবং টিস্যু ও অঙ্গের ক্ষতি হওয়া প্রতিহত করে।</p>\r\n\r\n<p><strong>চুলকানি প্রতিরোধ করে</strong><br />\r\nফুলকপি চুলকানি প্রতিরোধ করে, শীতকালে ঠাণ্ডায় ত্বকে লালচে হয়ে ফুলে যাওয়া এবং চুলকানি হতে পারে। সেক্ষেত্রে ফুলকপির কচি পাতা বেটে লাগালে চুলকানি ভালো হয়।</p>\r\n\r\n<p>তথ্যসূত্রঃ প্রথম আলো, প্রিয় ও ইন্টারনেট</p>\r\n\r\n<p>&nbsp;</p>', 'ফুলকপির চাষ পদ্ধতি ও জাতসমুহ');

-- --------------------------------------------------------

--
-- Table structure for table `service_subcategory`
--

CREATE TABLE `service_subcategory` (
  `id` int(11) NOT NULL,
  `sub_category_name` varchar(70) NOT NULL,
  `ordering` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_subcategory`
--

INSERT INTO `service_subcategory` (`id`, `sub_category_name`, `ordering`, `category_id`, `status`) VALUES
(1, 'বাংলাদেশের কৃষি', 0, 1, 1),
(2, 'মাটি', 1, 1, 1),
(3, 'অঞ্চল', 2, 1, 1),
(4, 'বাংলাদেশের চাষকৃত ফসল সমূহ', 0, 2, 1),
(5, 'ফসলের জাত', 1, 2, 1),
(6, 'ফসলের ফলন', 2, 2, 1),
(7, 'ফসল চাষাবাদের সময়', 0, 3, 1),
(8, 'চাষ করার প্রক্রিয়া', 1, 3, 1),
(9, 'চাষাবাদের সময় করনীয় বিষয়বলী', 2, 3, 1),
(10, 'উপকারী পোকা ও অপকারী পোকা সমূহ', 0, 4, 1),
(11, 'পোকার জিবন চক্র', 1, 4, 1),
(12, 'কৃষি উপকরন সমূহ', 0, 5, 1),
(13, 'উপকরনের মান ও ব্যবহার', 1, 5, 1),
(14, 'ফসলের পুষ্টি সমূহ', 4, 6, 1),
(15, 'অভাব জনিত লক্ষন', 3, 6, 1),
(16, 'ব্যবহার', 2, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_subscribernewslatter`
--

CREATE TABLE `service_subscribernewslatter` (
  `id` int(11) NOT NULL,
  `subscriber_email` varchar(254) NOT NULL,
  `subscirbe_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_subscribernewslatter`
--

INSERT INTO `service_subscribernewslatter` (`id`, `subscriber_email`, `subscirbe_date`) VALUES
(1, 'bytecode@gmail.com', '2020-06-02 14:36:15.348001'),
(2, 'shohel@gmail.com', '2020-08-25 14:22:06.833569'),
(3, 'shohel1@gmail.com', '2020-10-22 10:24:03.886415'),
(4, 'shahinkhan019677@gmail.com', '2020-10-22 10:24:37.695780'),
(5, 'pojimi@mailinator.com', '2020-10-22 10:47:11.052891'),
(6, 'tarebag@mailinator.com', '2020-10-22 10:56:23.041613'),
(7, 'shohel11@gmail.com', '2020-10-23 11:19:12.547097'),
(8, 'shohe111l1@gmail.com', '2020-10-23 11:19:35.464474'),
(9, 'hossainjoshef@gmail.com', '2021-03-04 10:23:40.937023'),
(10, 'joshefhossain@gmail.com', '2021-03-13 10:43:32.353902'),
(11, 'joshefhossainbappy019@gmail.com', '2021-03-29 17:03:16.056494'),
(12, 'joshef@mailinator.com', '2021-03-29 17:03:33.375227');

-- --------------------------------------------------------

--
-- Table structure for table `service_treeage`
--

CREATE TABLE `service_treeage` (
  `id` int(11) NOT NULL,
  `age` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_treeage`
--

INSERT INTO `service_treeage` (`id`, `age`, `status`, `ordering`) VALUES
(1, '2 Year', 1, 0),
(2, '3 Year', 1, 0),
(3, '4 Year', 1, 0),
(4, '5 Year', 1, 0),
(5, '6 Year', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `service_treename`
--

CREATE TABLE `service_treename` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_treename`
--

INSERT INTO `service_treename` (`id`, `name`, `status`, `ordering`) VALUES
(1, 'Mango', 1, 0),
(2, 'Apple', 1, 0),
(3, 'Orange', 1, 0),
(4, 'Banana', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `service_addtocart`
--
ALTER TABLE `service_addtocart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_addtocart_product_name_id_98e37a0a_fk_service_product_id` (`product_name_id`);

--
-- Indexes for table `service_agriculturaladvice`
--
ALTER TABLE `service_agriculturaladvice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_blogcategory`
--
ALTER TABLE `service_blogcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_blogcomment`
--
ALTER TABLE `service_blogcomment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_blogcomment_blog_id_50ef085e_fk_service_blogs_id` (`blog_id`);

--
-- Indexes for table `service_blogs`
--
ALTER TABLE `service_blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_blogs_blog_category_id_fac23ca7_fk_service_b` (`blog_category_id`);

--
-- Indexes for table `service_category`
--
ALTER TABLE `service_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_companyinfo`
--
ALTER TABLE `service_companyinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_contact`
--
ALTER TABLE `service_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_customaraccount`
--
ALTER TABLE `service_customaraccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `service_customarorderlist`
--
ALTER TABLE `service_customarorderlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_customarorde_product_name_id_37b9cc17_fk_service_p` (`product_name_id`),
  ADD KEY `service_customarorde_farmer_id_19c5020f_fk_service_f` (`farmer_id`);

--
-- Indexes for table `service_customerproblem`
--
ALTER TABLE `service_customerproblem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_customerprob_category_id_17ea1936_fk_service_p` (`category_id`);

--
-- Indexes for table `service_districtcat`
--
ALTER TABLE `service_districtcat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_faqs`
--
ALTER TABLE `service_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_farmeraccount`
--
ALTER TABLE `service_farmeraccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `service_farmeraccount_mobile_72bc35c5_uniq` (`mobile`);

--
-- Indexes for table `service_importantlink`
--
ALTER TABLE `service_importantlink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_importantlin_district_id_b181b12b_fk_service_d` (`district_id`);

--
-- Indexes for table `service_ourservice`
--
ALTER TABLE `service_ourservice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_ourservice_category_id_57c1769b_fk_service_s` (`category_id`);

--
-- Indexes for table `service_ourteammember`
--
ALTER TABLE `service_ourteammember`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_problemcategory`
--
ALTER TABLE `service_problemcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_product`
--
ALTER TABLE `service_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_product_farmer_id_e06c69b2_fk_service_farmeraccount_id` (`farmer_id`);

--
-- Indexes for table `service_quicksolve`
--
ALTER TABLE `service_quicksolve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_reviews`
--
ALTER TABLE `service_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_searchpesticides`
--
ALTER TABLE `service_searchpesticides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_searchpestic_tree_age_id_379e4a74_fk_service_t` (`tree_age_id`),
  ADD KEY `service_searchpestic_tree_name_id_5ca61402_fk_service_t` (`tree_name_id`);

--
-- Indexes for table `service_sliderinfo`
--
ALTER TABLE `service_sliderinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_subcategory`
--
ALTER TABLE `service_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_subcategory_category_id_933ada07_fk_service_category_id` (`category_id`);

--
-- Indexes for table `service_subscribernewslatter`
--
ALTER TABLE `service_subscribernewslatter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_treeage`
--
ALTER TABLE `service_treeage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_treename`
--
ALTER TABLE `service_treename`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `service_addtocart`
--
ALTER TABLE `service_addtocart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `service_agriculturaladvice`
--
ALTER TABLE `service_agriculturaladvice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `service_blogcategory`
--
ALTER TABLE `service_blogcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `service_blogcomment`
--
ALTER TABLE `service_blogcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service_blogs`
--
ALTER TABLE `service_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `service_category`
--
ALTER TABLE `service_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `service_companyinfo`
--
ALTER TABLE `service_companyinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `service_contact`
--
ALTER TABLE `service_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `service_customaraccount`
--
ALTER TABLE `service_customaraccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service_customarorderlist`
--
ALTER TABLE `service_customarorderlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `service_customerproblem`
--
ALTER TABLE `service_customerproblem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `service_districtcat`
--
ALTER TABLE `service_districtcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `service_faqs`
--
ALTER TABLE `service_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `service_farmeraccount`
--
ALTER TABLE `service_farmeraccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `service_importantlink`
--
ALTER TABLE `service_importantlink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `service_ourservice`
--
ALTER TABLE `service_ourservice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `service_ourteammember`
--
ALTER TABLE `service_ourteammember`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `service_problemcategory`
--
ALTER TABLE `service_problemcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `service_product`
--
ALTER TABLE `service_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `service_quicksolve`
--
ALTER TABLE `service_quicksolve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `service_reviews`
--
ALTER TABLE `service_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `service_searchpesticides`
--
ALTER TABLE `service_searchpesticides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `service_sliderinfo`
--
ALTER TABLE `service_sliderinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `service_subcategory`
--
ALTER TABLE `service_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `service_subscribernewslatter`
--
ALTER TABLE `service_subscribernewslatter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `service_treeage`
--
ALTER TABLE `service_treeage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `service_treename`
--
ALTER TABLE `service_treename`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `service_addtocart`
--
ALTER TABLE `service_addtocart`
  ADD CONSTRAINT `service_addtocart_product_name_id_98e37a0a_fk_service_product_id` FOREIGN KEY (`product_name_id`) REFERENCES `service_product` (`id`);

--
-- Constraints for table `service_blogcomment`
--
ALTER TABLE `service_blogcomment`
  ADD CONSTRAINT `service_blogcomment_blog_id_50ef085e_fk_service_blogs_id` FOREIGN KEY (`blog_id`) REFERENCES `service_blogs` (`id`);

--
-- Constraints for table `service_blogs`
--
ALTER TABLE `service_blogs`
  ADD CONSTRAINT `service_blogs_blog_category_id_fac23ca7_fk_service_b` FOREIGN KEY (`blog_category_id`) REFERENCES `service_blogcategory` (`id`);

--
-- Constraints for table `service_customarorderlist`
--
ALTER TABLE `service_customarorderlist`
  ADD CONSTRAINT `service_customarorde_farmer_id_19c5020f_fk_service_f` FOREIGN KEY (`farmer_id`) REFERENCES `service_farmeraccount` (`id`),
  ADD CONSTRAINT `service_customarorde_product_name_id_37b9cc17_fk_service_p` FOREIGN KEY (`product_name_id`) REFERENCES `service_product` (`id`);

--
-- Constraints for table `service_customerproblem`
--
ALTER TABLE `service_customerproblem`
  ADD CONSTRAINT `service_customerprob_category_id_17ea1936_fk_service_p` FOREIGN KEY (`category_id`) REFERENCES `service_problemcategory` (`id`);

--
-- Constraints for table `service_importantlink`
--
ALTER TABLE `service_importantlink`
  ADD CONSTRAINT `service_importantlin_district_id_b181b12b_fk_service_d` FOREIGN KEY (`district_id`) REFERENCES `service_districtcat` (`id`);

--
-- Constraints for table `service_ourservice`
--
ALTER TABLE `service_ourservice`
  ADD CONSTRAINT `service_ourservice_category_id_57c1769b_fk_service_s` FOREIGN KEY (`category_id`) REFERENCES `service_subcategory` (`id`);

--
-- Constraints for table `service_product`
--
ALTER TABLE `service_product`
  ADD CONSTRAINT `service_product_farmer_id_e06c69b2_fk_service_farmeraccount_id` FOREIGN KEY (`farmer_id`) REFERENCES `service_farmeraccount` (`id`);

--
-- Constraints for table `service_searchpesticides`
--
ALTER TABLE `service_searchpesticides`
  ADD CONSTRAINT `service_searchpestic_tree_age_id_379e4a74_fk_service_t` FOREIGN KEY (`tree_age_id`) REFERENCES `service_treeage` (`id`),
  ADD CONSTRAINT `service_searchpestic_tree_name_id_5ca61402_fk_service_t` FOREIGN KEY (`tree_name_id`) REFERENCES `service_treename` (`id`);

--
-- Constraints for table `service_subcategory`
--
ALTER TABLE `service_subcategory`
  ADD CONSTRAINT `service_subcategory_category_id_933ada07_fk_service_category_id` FOREIGN KEY (`category_id`) REFERENCES `service_category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
