-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 25, 2019 at 11:05 AM
-- Server version: 5.7.27
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uprj11099`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
  `id` int(11) NOT NULL,
  `type_id` int(10) NOT NULL,
  `module_id` int(10) NOT NULL,
  `updated_by` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE IF NOT EXISTS `cms` (
  `id` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `description` text,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_by` int(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `title`, `description`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Welcome', '<div style="text-align: center;">Welcome to page&nbsp;</div><div style="text-align: center;"><br></div><div style="text-align: center;"><br></div><div style="text-align: left;">1.list 1</div>', '1', 1, '2019-09-03 07:10:27', '2019-09-09 23:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

CREATE TABLE IF NOT EXISTS `company_profile` (
  `id` int(11) NOT NULL,
  `ref_id` int(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE IF NOT EXISTS `forms` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `form` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `label`, `type`, `form`, `module`, `status`, `created_at`, `updated_at`) VALUES
(1, 'name', 'text', 'team', 'team', '1', NULL, '2019-09-24 09:03:45'),
(2, 'details', 'text', 'team', 'team', '1', NULL, '2019-09-24 09:03:45'),
(3, 'designation', 'text', 'team', 'team', '1', NULL, '2019-09-24 09:03:45'),
(4, 'phone', 'text', 'team', 'team', '1', NULL, '2019-09-24 09:03:45'),
(5, 'linkedin', 'text', 'team', 'team', '1', NULL, '2019-09-24 09:03:45'),
(6, 'twitter', 'text', 'team', 'team', '1', NULL, '2019-09-24 09:03:45'),
(7, 'mail', 'text', 'team', 'team', '1', NULL, '2019-09-24 09:03:45'),
(8, 'file', 'file', 'team', 'team', '1', NULL, '2019-09-24 09:03:45'),
(9, 'name', 'text', 'testimonial', 'testimonial', '1', NULL, '2019-09-24 09:03:45'),
(10, 'details', 'text', 'testimonial', 'testimonial', '1', NULL, '2019-09-24 09:03:45'),
(11, 'designation', 'text', 'testimonial', 'testimonial', '1', NULL, '2019-09-24 09:03:45'),
(12, 'file', 'file', 'testimonial', 'testimonial', '1', NULL, '2019-09-24 09:03:45'),
(13, 'question', 'text', 'faq', 'faq', '1', NULL, '2019-09-24 09:03:45'),
(14, 'answer', 'text', 'faq', 'faq', '1', NULL, '2019-09-24 09:03:45'),
(15, 'name', 'text', 'priceguide', 'priceguide', '1', NULL, '2019-09-24 09:03:45'),
(16, 'amount', 'text', 'priceguide', 'priceguide', '1', NULL, '2019-09-24 09:03:45'),
(17, 'file', 'file', 'priceguide', 'priceguide', '1', NULL, '2019-09-24 09:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `forms_data`
--

CREATE TABLE IF NOT EXISTS `forms_data` (
  `id` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `serial` int(50) NOT NULL,
  `label` text COLLATE utf8mb4_bin NOT NULL,
  `description` text COLLATE utf8mb4_bin,
  `status` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `created_by` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `forms_data`
--

INSERT INTO `forms_data` (`id`, `locale`, `group`, `serial`, `label`, `description`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'en', 'team', 1, '1_locale', 'en', '1', 1, '2019-09-24 03:40:17', '2019-09-24 09:10:17'),
(2, 'en', 'team', 1, '1_name', 'ROBBLE WHITE', '1', 1, '2019-09-24 03:40:17', '2019-09-24 09:10:17'),
(3, 'en', 'team', 1, '1_details', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore..', '1', 1, '2019-09-24 03:40:17', '2019-09-24 09:10:17'),
(4, 'en', 'team', 1, '1_designation', 'FOUNDER', '1', 1, '2019-09-24 03:40:17', '2019-09-24 09:10:17'),
(5, 'en', 'team', 1, '1_phone', '123', '1', 1, '2019-09-24 03:40:17', '2019-09-24 09:10:17'),
(6, 'en', 'team', 1, '1_linkedin', 'abc', '1', 1, '2019-09-24 03:40:17', '2019-09-24 09:10:17'),
(7, 'en', 'team', 1, '1_twitter', 'abc', '1', 1, '2019-09-24 03:40:17', '2019-09-24 09:10:17'),
(8, 'en', 'team', 1, '1_mail', 'abc', '1', 1, '2019-09-24 03:40:17', '2019-09-24 09:10:17'),
(9, 'en', 'team', 2, '2_locale', 'en', '1', 1, '2019-09-24 04:39:19', '2019-09-24 10:09:19'),
(10, 'en', 'team', 2, '2_name', 'RILEY JONES', '1', 1, '2019-09-24 04:39:19', '2019-09-24 10:09:19'),
(11, 'en', 'team', 2, '2_details', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.', '1', 1, '2019-09-24 04:39:19', '2019-09-24 10:09:19'),
(12, 'en', 'team', 2, '2_designation', 'FOUNDER', '1', 1, '2019-09-24 04:39:19', '2019-09-24 10:09:19'),
(13, 'en', 'team', 2, '2_phone', '123456', '1', 1, '2019-09-24 04:39:19', '2019-09-24 10:09:19'),
(14, 'en', 'team', 2, '2_linkedin', 'abc', '1', 1, '2019-09-24 04:39:19', '2019-09-24 10:09:19'),
(15, 'en', 'team', 2, '2_twitter', 'abc', '1', 1, '2019-09-24 04:39:19', '2019-09-24 10:09:19'),
(16, 'en', 'team', 2, '2_mail', 'abc', '1', 1, '2019-09-24 04:39:19', '2019-09-24 10:09:19'),
(17, 'en', 'team', 3, '3_locale', 'en', '1', 1, '2019-09-24 04:40:47', '2019-09-24 10:10:47'),
(18, 'en', 'team', 3, '3_name', 'PAYTON HILLMAN', '1', 1, '2019-09-24 04:40:47', '2019-09-24 10:10:47'),
(19, 'en', 'team', 3, '3_details', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore..', '1', 1, '2019-09-24 04:40:47', '2019-09-24 10:10:47'),
(20, 'en', 'team', 3, '3_designation', 'FOUNDER', '1', 1, '2019-09-24 04:40:47', '2019-09-24 10:10:47'),
(21, 'en', 'team', 3, '3_phone', '123456', '1', 1, '2019-09-24 04:40:47', '2019-09-24 10:10:47'),
(22, 'en', 'team', 3, '3_linkedin', 'abc', '1', 1, '2019-09-24 04:40:47', '2019-09-24 10:10:47'),
(23, 'en', 'team', 3, '3_twitter', 'abc', '1', 1, '2019-09-24 04:40:47', '2019-09-24 10:10:47'),
(24, 'en', 'team', 3, '3_mail', 'abc', '1', 1, '2019-09-24 04:40:47', '2019-09-24 10:10:47'),
(25, 'en', 'testimonial', 1, '1_locale', 'en', '1', 1, '2019-09-24 04:52:59', '2019-09-24 10:22:59'),
(26, 'en', 'testimonial', 1, '1_name', 'Robble White', '1', 1, '2019-09-24 04:52:59', '2019-09-24 10:22:59'),
(27, 'en', 'testimonial', 1, '1_details', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.', '1', 1, '2019-09-24 04:52:59', '2019-09-24 10:22:59'),
(28, 'en', 'testimonial', 1, '1_designation', 'Manager', '1', 1, '2019-09-24 04:52:59', '2019-09-24 10:22:59'),
(29, 'en', 'testimonial', 2, '2_locale', 'en', '1', 1, '2019-09-24 06:04:51', '2019-09-24 11:34:51'),
(30, 'en', 'testimonial', 2, '2_name', 'RILEY JONES', '1', 1, '2019-09-24 06:04:51', '2019-09-24 11:34:51'),
(31, 'en', 'testimonial', 2, '2_details', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.', '1', 1, '2019-09-24 06:04:51', '2019-09-24 11:34:51'),
(32, 'en', 'testimonial', 2, '2_designation', 'FOUNDER', '1', 1, '2019-09-24 06:04:51', '2019-09-24 11:34:51'),
(33, 'en', 'testimonial', 3, '3_locale', 'en', '1', 1, '2019-09-24 06:06:37', '2019-09-24 11:36:37'),
(34, 'en', 'testimonial', 3, '3_name', 'PAYTON HILLMAN', '1', 1, '2019-09-24 06:06:37', '2019-09-24 11:36:37'),
(35, 'en', 'testimonial', 3, '3_details', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.', '1', 1, '2019-09-24 06:06:37', '2019-09-24 11:36:37'),
(36, 'en', 'testimonial', 3, '3_designation', 'FOUNDER', '1', 1, '2019-09-24 06:06:37', '2019-09-24 11:36:37'),
(37, 'en', 'faq', 1, '1_locale', 'en', '1', 1, '2019-09-24 23:32:55', '2019-09-25 05:02:55'),
(38, 'en', 'faq', 1, '1_question', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore?', '1', 1, '2019-09-24 23:32:55', '2019-09-25 05:02:55'),
(39, 'en', 'faq', 1, '1_answer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat?', '1', 1, '2019-09-24 23:32:55', '2019-09-25 05:02:55'),
(40, 'en', 'faq', 2, '2_locale', 'en', '1', 1, '2019-09-24 23:57:08', '2019-09-25 05:27:08'),
(41, 'en', 'faq', 2, '2_question', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat?', '1', 1, '2019-09-24 23:57:08', '2019-09-25 05:27:08'),
(42, 'en', 'faq', 2, '2_answer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '1', 1, '2019-09-24 23:57:08', '2019-09-25 05:27:08'),
(43, 'en', 'priceguide', 1, '1_locale', 'en', '1', 1, '2019-09-25 00:32:09', '2019-09-25 06:02:09'),
(44, 'en', 'priceguide', 1, '1_name', 'Greater Cairo', '1', 1, '2019-09-25 00:32:09', '2019-09-25 01:00:17'),
(45, 'en', 'priceguide', 1, '1_amount', '920', '1', 1, '2019-09-25 00:32:09', '2019-09-25 01:00:17'),
(46, 'en', 'priceguide', 2, '2_locale', 'en', '1', 1, '2019-09-25 00:35:35', '2019-09-25 06:05:35'),
(47, 'en', 'priceguide', 2, '2_name', 'New Cairo - Fifth Settleme...', '1', 1, '2019-09-25 00:35:35', '2019-09-25 06:05:35'),
(48, 'en', 'priceguide', 2, '2_amount', '946', '1', 1, '2019-09-25 00:35:35', '2019-09-25 06:05:35');

-- --------------------------------------------------------

--
-- Table structure for table `forms_serials`
--

CREATE TABLE IF NOT EXISTS `forms_serials` (
  `id` int(11) NOT NULL,
  `serial` int(50) NOT NULL,
  `form` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forms_serials`
--

INSERT INTO `forms_serials` (`id`, `serial`, `form`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'team', '1', '2019-09-24 09:10:17', '2019-09-24 03:40:17'),
(2, 2, 'team', '1', '2019-09-24 10:09:19', '2019-09-24 04:39:19'),
(3, 3, 'team', '1', '2019-09-24 10:10:47', '2019-09-24 04:40:47'),
(4, 1, 'testimonial', '1', '2019-09-24 10:22:59', '2019-09-24 04:52:59'),
(5, 2, 'testimonial', '1', '2019-09-24 11:34:51', '2019-09-24 06:04:51'),
(6, 3, 'testimonial', '1', '2019-09-24 11:36:37', '2019-09-24 06:06:37'),
(7, 1, 'faq', '1', '2019-09-25 05:02:55', '2019-09-24 23:32:55'),
(8, 2, 'faq', '1', '2019-09-25 05:27:08', '2019-09-24 23:57:08'),
(9, 1, 'priceguide', '1', '2019-09-25 06:02:09', '2019-09-25 00:32:09'),
(10, 2, 'priceguide', '1', '2019-09-25 06:05:35', '2019-09-25 00:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mailtemplate`
--

CREATE TABLE IF NOT EXISTS `mailtemplate` (
  `id` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `description` text,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_by` int(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mailtemplate`
--

INSERT INTO `mailtemplate` (`id`, `title`, `description`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Employee Registration', 'Hi,<div>&nbsp; &nbsp; &nbsp; &nbsp;{NAME} {EMAIL}</div><div><br><div>&nbsp; &nbsp; &nbsp; Thanks for the registration.<br><div><br></div></div></div><div>Thanks</div><div><br></div><div>Team Milkey</div>', '1', 1, '2019-08-30 10:58:38', '2019-09-11 01:55:31'),
(2, 'Invester Registration', 'Hi,<div>&nbsp; &nbsp; &nbsp; &nbsp;{NAME} {EMAIL}</div><div><br><div>&nbsp; &nbsp; &nbsp; Thanks for the registration.<br><div><br></div></div></div><div>Thanks</div><div><br></div><div>Team Milkey</div>', '1', 1, '2019-09-11 07:26:00', '2019-09-11 01:56:00'),
(3, 'Contact US', 'Hi ,<div>&nbsp; &nbsp; &nbsp; &nbsp; A&nbsp; Visitor on Melkey Group web portal has left a message:</div><div>&nbsp;<br><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Name&nbsp; &nbsp; &nbsp; &nbsp; : {CONTACTNAME}</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Email&nbsp; &nbsp; &nbsp; &nbsp; :&nbsp; {CONTACTMAIL}</div><div>&nbsp; &nbsp; &nbsp; &nbsp; Message&nbsp; :&nbsp; {CONTACTMESSAGE}</div><div><br></div><div>Team&nbsp;&nbsp;<br></div><div>Milkey Group</div><div>&nbsp; &nbsp;</div></div>', '1', 1, '2019-09-25 10:19:15', '2019-09-25 05:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `masters`
--

CREATE TABLE IF NOT EXISTS `masters` (
  `id` int(5) NOT NULL,
  `master_id` int(5) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `option_value` int(5) NOT NULL,
  `filled_value` varchar(50) NOT NULL,
  `short_order` int(5) DEFAULT NULL,
  `status` int(5) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masters`
--

INSERT INTO `masters` (`id`, `master_id`, `module`, `type`, `name`, `option_value`, `filled_value`, `short_order`, `status`, `created_at`) VALUES
(1, 1, 'common', 'modules', 'Roles', 1, '1', 1, 1, '2019-08-26 13:15:50'),
(2, 1, 'common', 'modules', 'Permission', 2, '2', 2, 1, '2019-08-26 13:15:50'),
(3, 1, 'common', 'modules', 'Assign Permission to role', 3, '3', 3, 1, '2019-08-26 13:15:50'),
(4, 1, 'common', 'modules', 'List Employee', 4, '4', 4, 1, '2019-08-26 13:15:50'),
(5, 1, 'common', 'modules', 'List Investor', 5, '5', 5, 1, '2019-08-26 13:15:50'),
(6, 1, 'common', 'modules', 'List Entrepreneur', 6, '6', 6, 1, '2019-08-26 13:15:50'),
(7, 1, 'common', 'modules', 'Email Template', 7, '7', 7, 1, '2019-08-26 13:15:50'),
(8, 1, 'common', 'modules', 'CMS Templates', 8, '8', 8, 1, '2019-08-26 13:15:50'),
(9, 1, 'common', 'modules', 'Manage Property ', 9, '9', 9, 1, '2019-08-26 13:15:50'),
(10, 2, 'common', 'country', 'New Cepital', 1, '1', 1, 1, '2019-08-26 13:15:50'),
(11, 2, 'common', 'country', 'New york', 2, '2', 2, 1, '2019-08-26 13:15:50'),
(12, 2, 'common', 'country', 'New zealand', 3, '3', 3, 1, '2019-08-26 13:15:50'),
(13, 3, 'Shop', 'Category', 'category ONE', 1, '1', 1, 1, '2019-08-26 13:15:50'),
(14, 4, 'Shop', 'funded_status', 'funded', 1, '1', 1, 1, '2019-08-26 13:15:50'),
(15, 3, 'Shop', 'Category', 'category Two', 2, '2', 2, 1, '2019-08-26 13:15:50'),
(16, 4, 'Shop', 'funded_status', 'funded Two', 2, '2', 2, 1, '2019-08-26 13:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_08_100000_create_telescope_entries_table', 2),
(4, '2014_04_02_193005_create_translations_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `multilinguals`
--

CREATE TABLE IF NOT EXISTS `multilinguals` (
  `id` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` text COLLATE utf8mb4_bin NOT NULL,
  `description` text COLLATE utf8mb4_bin,
  `status` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `created_by` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `multilinguals`
--

INSERT INTO `multilinguals` (`id`, `locale`, `group`, `label`, `description`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '1', NULL, '2019-09-01 20:58:27', '2019-09-06 05:39:47'),
(2, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '1', NULL, '2019-09-01 20:58:27', '2019-09-01 20:58:27'),
(3, 'en', 'auth', 'hello', 'kutte english ', '1', NULL, '2019-09-01 20:58:27', '2019-09-01 20:58:27'),
(4, 'en', 'pagination', 'previous', '&laquo; Previous', '1', NULL, '2019-09-01 20:58:27', '2019-09-01 20:58:27'),
(5, 'en', 'pagination', 'next', 'Next &amp;raquo;', '1', NULL, '2019-09-01 20:58:27', '2019-09-07 01:11:33'),
(6, 'en', 'passwords', 'password', 'Passwords must be at least eight characters and match the confirmation.', '1', NULL, '2019-09-01 20:58:27', '2019-09-01 20:58:27'),
(7, 'en', 'passwords', 'reset', 'Your password has been reset!', '1', NULL, '2019-09-01 20:58:27', '2019-09-06 23:21:48'),
(8, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '1', NULL, '2019-09-01 20:58:27', '2019-09-01 20:58:27'),
(9, 'en', 'passwords', 'token', 'This password reset token is invalid.', '1', NULL, '2019-09-01 20:58:27', '2019-09-06 05:23:27'),
(10, 'en', 'passwords', 'user', 'We can''t find a user with that e-mail address.', '1', NULL, '2019-09-01 20:58:27', '2019-09-06 05:22:58'),
(11, 'en', 'validation', 'add_new_role', 'Add new role by entering name', '1', NULL, '2019-09-01 20:58:27', '2019-09-01 20:58:27'),
(12, 'en', 'validation', 'dummy', 'This is dummy content.', '1', NULL, '2019-09-01 20:58:27', '2019-09-01 20:58:27'),
(13, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '1', NULL, '2019-09-01 20:58:27', '2019-09-01 20:58:27'),
(14, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '1', NULL, '2019-09-01 20:58:27', '2019-09-06 05:40:00'),
(15, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '1', NULL, '2019-09-01 20:58:27', '2019-09-01 20:58:27'),
(16, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '1', NULL, '2019-09-01 20:58:27', '2019-09-01 20:58:27'),
(17, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(18, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, dashes and underscores.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(19, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(20, 'en', 'validation', 'array', 'The :attribute must be an array.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(21, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(22, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(23, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(24, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(25, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(26, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(27, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(28, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(29, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(30, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(31, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(32, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(33, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(34, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(35, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(36, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(37, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(38, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(39, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(40, 'en', 'validation', 'file', 'The :attribute must be a file.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(41, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(42, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '1', NULL, '2019-09-01 20:58:28', '2019-09-01 20:58:28'),
(43, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(44, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(45, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(46, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(47, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(48, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(49, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(50, 'en', 'validation', 'image', 'The :attribute must be an image.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(51, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(52, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(53, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(54, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(55, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(56, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(57, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(58, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(59, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(60, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(61, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(62, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(63, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(64, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(65, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(66, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(67, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '1', NULL, '2019-09-01 20:58:29', '2019-09-01 20:58:29'),
(68, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(69, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(70, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(71, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(72, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(73, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(74, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(75, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(76, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(77, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(78, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(79, 'en', 'validation', 'present', 'The :attribute field must be present.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(80, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(81, 'en', 'validation', 'required', 'The :attribute field is required.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(82, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(83, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(84, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(85, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(86, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(87, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(88, 'en', 'validation', 'same', 'The :attribute and :other must match.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(89, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '1', NULL, '2019-09-01 20:58:30', '2019-09-01 20:58:30'),
(90, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(91, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(92, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(93, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(94, 'en', 'validation', 'string', 'The :attribute must be a string.', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(95, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(96, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(97, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(98, 'en', 'validation', 'url', 'The :attribute format is invalid.', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(99, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(100, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(101, 'fr', 'auth', 'failed', 'These credentials do not match our records.', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(102, 'fr', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(103, 'fr', 'auth', 'hello', 'kutte frennch ', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(104, 'fr', 'pagination', 'previous', '&laquo; Previous', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(105, 'fr', 'pagination', 'next', 'Next &raquo;', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(106, 'fr', 'passwords', 'password', 'Passwords must be at least eight characters and match the confirmation.', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(107, 'fr', 'passwords', 'reset', 'Your password has been reset!', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(108, 'fr', 'passwords', 'sent', 'We have e-mailed your password reset link!', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(109, 'fr', 'passwords', 'token', 'This password reset token is invalid.', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(110, 'fr', 'passwords', 'user', 'We can''t find a user with that e-mail address.', '1', NULL, '2019-09-01 20:58:31', '2019-09-01 20:58:31'),
(111, 'fr', 'validation', 'add_new_role', 'Ajouter un nouveau rôle en entrant le nom', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(112, 'fr', 'validation', 'dummy', 'Cest du contenu factice.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(113, 'fr', 'validation', 'accepted', 'The :attribute must be accepted.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(114, 'fr', 'validation', 'active_url', 'The :attribute is not a valid URL.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(115, 'fr', 'validation', 'after', 'The :attribute must be a date after :date.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(116, 'fr', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(117, 'fr', 'validation', 'alpha', 'The :attribute may only contain letters.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(118, 'fr', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, dashes and underscores.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(119, 'fr', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(120, 'fr', 'validation', 'array', 'The :attribute must be an array.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(121, 'fr', 'validation', 'before', 'The :attribute must be a date before :date.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(122, 'fr', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(123, 'fr', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(124, 'fr', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(125, 'fr', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(126, 'fr', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(127, 'fr', 'validation', 'boolean', 'The :attribute field must be true or false.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(128, 'fr', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(129, 'fr', 'validation', 'date', 'The :attribute is not a valid date.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(130, 'fr', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(131, 'fr', 'validation', 'date_format', 'The :attribute does not match the format :format.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(132, 'fr', 'validation', 'different', 'The :attribute and :other must be different.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(133, 'fr', 'validation', 'digits', 'The :attribute must be :digits digits.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(134, 'fr', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(135, 'fr', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(136, 'fr', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(137, 'fr', 'validation', 'email', 'The :attribute must be a valid email address.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(138, 'fr', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(139, 'fr', 'validation', 'exists', 'The selected :attribute is invalid.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(140, 'fr', 'validation', 'file', 'The :attribute must be a file.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(141, 'fr', 'validation', 'filled', 'The :attribute field must have a value.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(142, 'fr', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(143, 'fr', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(144, 'fr', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '1', NULL, '2019-09-01 20:58:32', '2019-09-01 20:58:32'),
(145, 'fr', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(146, 'fr', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(147, 'fr', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(148, 'fr', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(149, 'fr', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(150, 'fr', 'validation', 'image', 'The :attribute must be an image.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(151, 'fr', 'validation', 'in', 'The selected :attribute is invalid.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(152, 'fr', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(153, 'fr', 'validation', 'integer', 'The :attribute must be an integer.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(154, 'fr', 'validation', 'ip', 'The :attribute must be a valid IP address.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(155, 'fr', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(156, 'fr', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(157, 'fr', 'validation', 'json', 'The :attribute must be a valid JSON string.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(158, 'fr', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(159, 'fr', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(160, 'fr', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(161, 'fr', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(162, 'fr', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(163, 'fr', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(164, 'fr', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(165, 'fr', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(166, 'fr', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(167, 'fr', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(168, 'fr', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(169, 'fr', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(170, 'fr', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(171, 'fr', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(172, 'fr', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(173, 'fr', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(174, 'fr', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(175, 'fr', 'validation', 'min.array', 'The :attribute must have at least :min items.', '1', NULL, '2019-09-01 20:58:33', '2019-09-01 20:58:33'),
(176, 'fr', 'validation', 'not_in', 'The selected :attribute is invalid.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(177, 'fr', 'validation', 'not_regex', 'The :attribute format is invalid.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(178, 'fr', 'validation', 'numeric', 'The :attribute must be a number.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(179, 'fr', 'validation', 'present', 'The :attribute field must be present.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(180, 'fr', 'validation', 'regex', 'The :attribute format is invalid.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(181, 'fr', 'validation', 'required', 'The :attribute field is required.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(182, 'fr', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(183, 'fr', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(184, 'fr', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(185, 'fr', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(186, 'fr', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(187, 'fr', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(188, 'fr', 'validation', 'same', 'The :attribute and :other must match.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(189, 'fr', 'validation', 'size.numeric', 'The :attribute must be :size.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(190, 'fr', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(191, 'fr', 'validation', 'size.string', 'The :attribute must be :size characters.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(192, 'fr', 'validation', 'size.array', 'The :attribute must contain :size items.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(193, 'fr', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(194, 'fr', 'validation', 'string', 'The :attribute must be a string.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(195, 'fr', 'validation', 'timezone', 'The :attribute must be a valid zone.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(196, 'fr', 'validation', 'unique', 'The :attribute has already been taken.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(197, 'fr', 'validation', 'uploaded', 'The :attribute failed to upload.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(198, 'fr', 'validation', 'url', 'The :attribute format is invalid.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(199, 'fr', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(200, 'fr', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '1', NULL, '2019-09-01 20:58:34', '2019-09-01 20:58:34'),
(201, 'en', 'menu', 'home', 'Home', '1', NULL, '2019-09-01 20:58:27', '2019-09-01 20:58:27'),
(202, 'en', 'menu', 'shop', 'Shop', '1', NULL, '2019-09-01 20:58:27', '2019-09-23 04:54:24'),
(203, 'en', 'menu', 'secondary_market', 'Secondary Market', '1', 1, '2019-09-06 05:06:52', '2019-09-06 05:06:52'),
(204, 'en', 'menu', 'my_equity', 'My Equity', '1', 1, '2019-09-06 05:24:12', '2019-09-06 05:24:12'),
(205, 'en', 'menu', 'real_estate_education', 'Real Estate Education', '1', 1, '2019-09-06 05:24:40', '2019-09-20 02:37:29'),
(206, 'en', 'menu', 'investment', 'Investment', '1', 1, '2019-09-06 05:25:13', '2019-09-06 05:25:13'),
(207, 'en', 'menu', 'education', 'Education', '1', 1, '2019-09-06 05:25:34', '2019-09-06 05:25:34'),
(208, 'en', 'menu', 'become_a_investor', 'Become a Investor', '1', 1, '2019-09-06 05:26:22', '2019-09-06 05:26:22'),
(209, 'en', 'menu', 'login_account', 'Login Account', '1', 1, '2019-09-06 05:27:48', '2019-09-06 05:27:48'),
(210, 'en', 'menu', 'create_account', 'Create Account', '1', 1, '2019-09-06 05:28:13', '2019-09-06 05:28:13'),
(211, 'fr', 'menu', 'home', 'Home', '1', 1, '2019-09-07 00:29:49', '2019-09-07 01:11:40'),
(212, 'en', 'menu', 'meet_the_team', 'Meet the Team', '1', 1, '2019-09-09 01:22:51', '2019-09-09 01:22:51'),
(213, 'fr', 'menu', 'meet_the_team', 'Meet the Team', '1', 1, '2019-09-09 01:23:43', '2019-09-09 01:23:43'),
(214, 'en', 'menu', 'faq', 'FAQ', '1', 1, '2019-09-09 01:24:08', '2019-09-09 01:24:08'),
(215, 'fr', 'menu', 'faq', 'FAQ', '1', 1, '2019-09-09 01:24:22', '2019-09-09 01:24:22'),
(216, 'en', 'menu', 'price-guide', 'Price Guide', '1', 1, '2019-09-09 01:25:03', '2019-09-20 02:27:53'),
(217, 'fr', 'menu', 'price-guide', 'Price Guide', '1', 1, '2019-09-09 01:25:24', '2019-09-20 02:28:05'),
(218, 'en', 'menu', 'guide', 'Guide', '1', 1, '2019-09-09 01:25:53', '2019-09-09 01:25:53'),
(219, 'en', 'menu', 'benefit', 'Benefit', '1', 1, '2019-09-09 01:26:14', '2019-09-09 01:26:14'),
(220, 'fr', 'menu', 'benefit', 'Benefit', '1', 1, '2019-09-09 01:26:25', '2019-09-09 01:26:25'),
(221, 'en', 'menu', 'sign-up', 'Sign Up', '1', 1, '2019-09-09 01:27:14', '2019-09-09 01:27:14'),
(222, 'en', 'text', 'melky-group', 'Melky Group', '1', 1, '2019-09-09 01:53:08', '2019-09-24 23:45:18'),
(223, 'fr', 'text', 'melky-group', 'Melky Group', '1', 1, '2019-09-09 01:57:04', '2019-09-09 01:57:04'),
(224, 'en', 'text', 'melky-home-under-head-desc', 'Melky Group is the first investment platform to create a simple low cost way for anyone to access real estate\n								historically consistent exceptional returns', '1', 1, '2019-09-09 02:01:25', '2019-09-09 02:03:58'),
(225, 'fr', 'text', 'melky-home-under-head-desc', 'fr Melky Group is the first investment platform to create a simple low cost way for anyone to access real estate\r\n								historically consistent exceptional returns', '1', 1, '2019-09-09 02:04:09', '2019-09-09 02:04:09'),
(226, 'en', 'text', 'melky-home-purpose', 'The purpose of the Shop, Secondary', '1', 1, '2019-09-09 02:06:51', '2019-09-09 02:06:51'),
(227, 'en', 'text', 'melky-home-purpose', 'The purpose of the Shop, Secondary', '1', 1, '2019-09-09 02:10:41', '2019-09-09 02:10:41'),
(228, 'en', 'text', 'melky-home-myequity', 'Market and My Equity', '1', 1, '2019-09-09 02:11:58', '2019-09-09 02:11:58'),
(229, 'en', 'text', 'home-purpose-bullet-1', 'On the Shop Page, you have the ability to invest in new properties.', '1', 1, '2019-09-09 02:15:52', '2019-09-09 02:15:52'),
(230, 'en', 'text', 'home-purpose-bullet-2', 'On the Secondary Market, you have the ability to trade with current users who already own shares of selected\r\n								properties', '1', 1, '2019-09-09 02:16:32', '2019-09-09 02:16:32'),
(231, 'en', 'text', 'home-purpose-bullet-3', 'On the My Equity Page, you have the ability to view shares you currently own and sell those shares to new\r\n								users', '1', 1, '2019-09-09 02:17:03', '2019-09-09 02:17:03'),
(232, 'en', 'text', 'top-seller-prop', 'Top Seller Properties', '1', 1, '2019-09-09 02:18:09', '2019-09-09 02:18:09'),
(233, 'en', 'text', 't-m-info', 'More Info', '1', 1, '2019-09-09 02:19:46', '2019-09-09 02:52:48'),
(234, 'en', 'text', 'see-all-our-active-projects', 'See All Our Active Projects', '1', 1, '2019-09-09 02:21:01', '2019-09-09 02:21:01'),
(235, 'en', 'text', 'historical-returns', 'Historical Returns', '1', 1, '2019-09-09 02:22:45', '2019-09-09 02:22:45'),
(236, 'en', 'text', 'minimum-investment', 'Minimum Investment', '1', 1, '2019-09-09 02:25:50', '2019-09-09 02:25:50'),
(237, 'en', 'text', 'yearly-appreciation', 'Yearly Appreciation', '1', 1, '2019-09-09 02:26:47', '2019-09-09 02:26:47'),
(238, 'en', 'text', 'see-more', 'See More', '1', 1, '2019-09-09 02:27:42', '2019-09-09 02:27:42'),
(239, 'en', 'text', 'our-mission-head', 'Our Mission And Officers', '1', 1, '2019-09-09 02:29:19', '2019-09-09 02:29:19'),
(240, 'en', 'text', 'our-mission-under-head-tag', 'A crowding opportunity', '1', 1, '2019-09-09 02:30:13', '2019-09-09 02:30:13'),
(241, 'en', 'text', 'our-mission-under-head-detail', 'Melky Group is an opportunity for growth. You earn property ownership with help of each other In summary.\r\n						there''s no reason for Egyptians to not being able to own properly. They can utilize crowdfunding as a tool to own\r\n						a property that can help their life with unlimited opportunities such as the creating of now revenue streams.', '1', 1, '2019-09-09 02:30:53', '2019-09-09 02:30:53'),
(242, 'en', 'text', 'open-funding-through-the-public', 'Open funding through the public', '1', 1, '2019-09-09 02:32:25', '2019-09-09 02:32:25'),
(243, 'en', 'text', 'open-funding-through-the-public-desc', 'Let anyone invest in exchange for equity, through an easy to use website that displays projects to be\r\n										funded\r\n										in compliance with local regulations. Affordability and Gains Invest in property starting from 1% ownership,\r\n										and manage online through a Stock Market experience.', '1', 1, '2019-09-09 02:33:30', '2019-09-09 02:33:30'),
(244, 'en', 'text', 'affordability-and-gains', 'Affordability and Gains', '1', 1, '2019-09-09 02:34:38', '2019-09-09 02:34:38'),
(245, 'en', 'text', 'affordability-and-gains-desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n										industry''s', '1', 1, '2019-09-09 02:35:19', '2019-09-09 02:35:19'),
(246, 'en', 'text', 'simplycity-liquidity-desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n										industry''s standard dummy text ever since the 1500s,', '1', 1, '2019-09-09 02:36:42', '2019-09-09 02:36:42'),
(247, 'en', 'text', 'trust', 'Trust', '1', 1, '2019-09-09 02:37:14', '2019-09-09 02:37:14'),
(248, 'en', 'text', 'trust-desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n										industry''s standard dummy text ever since the 1500s, when an unknown printer', '1', 1, '2019-09-09 02:37:54', '2019-09-09 02:37:54'),
(249, 'en', 'text', 'simplycity-liquidity', 'Simplycity Liquidity', '1', 1, '2019-09-09 02:40:04', '2019-09-09 02:40:04'),
(250, 'en', 'text', 'slider-image-1-text', 'Trust the investment experts.', '1', 1, '2019-09-09 02:44:54', '2019-09-09 02:44:54'),
(251, 'en', 'text', 'slider-image-2-text', 'Trust the investment experts.', '1', 1, '2019-09-09 02:45:31', '2019-09-09 02:45:31'),
(252, 'fr', 'text', 'open-funding-through-the-public', 'Financement ouvert par le public', '1', 1, '2019-09-10 05:46:16', '2019-09-10 05:46:16'),
(253, 'en', 'text', 'shop-description', 'On the Shop Page, you have the ability to invest in new properties.', '1', 1, '2019-09-11 02:31:57', '2019-09-11 02:31:57'),
(254, 'fr', 'text', 'shop-description', 'Sur la page Shop, vous avez la possibilité d’investir dans de nouvelles propriétés.', '1', 1, '2019-09-11 03:16:42', '2019-09-11 03:16:42'),
(255, 'en', 'menu', 'about_us', 'About us', '1', 1, '2019-09-13 04:50:49', '2019-09-13 04:50:49'),
(256, 'en', 'menu', 'contact', 'Contact us', '1', 1, '2019-09-13 04:51:07', '2019-09-13 04:51:07'),
(257, 'en', 'menu', 'testimonial', 'Testimonial', '1', 1, '2019-09-18 01:28:44', '2019-09-18 01:28:44'),
(258, 'en', 'menu', 'blog', 'Blog', '1', 1, '2019-09-18 01:28:56', '2019-09-18 01:28:56'),
(259, 'en', 'footer', 'get-in-touch', 'Get in Touch', '1', 1, '2019-09-18 01:30:23', '2019-09-18 01:30:23'),
(260, 'en', 'text', 'get-in-touch', 'Get In Touch', '1', 1, '2019-09-18 01:32:02', '2019-09-18 01:32:02'),
(261, 'en', 'text', 'contact-address', '108 south 57th street, 25th floor, new jersey', '1', 1, '2019-09-18 01:33:16', '2019-09-18 01:33:16'),
(262, 'en', 'text', 'copyright', 'copyright@2019,Melky Group-All Rights Reserved.', '1', 1, '2019-09-18 01:34:07', '2019-09-18 01:34:07'),
(263, 'en', 'text', 'contact-pincode', 'NJ:72', '1', 1, '2019-09-18 01:34:33', '2019-09-18 01:34:33'),
(264, 'en', 'prop-amenities-form', 'floor', 'Floor', '1', 1, '2019-09-19 01:44:15', '2019-09-19 02:27:50'),
(265, 'en', 'prop-amenities-form', 'establishment-date', 'Establishment Date', '1', 1, '2019-09-19 01:46:15', '2019-09-19 02:27:57'),
(266, 'en', 'prop-amenities-form', 'finish-type', 'Finish Type', '1', 1, '2019-09-19 01:46:35', '2019-09-19 02:28:01'),
(267, 'en', 'prop-amenities-form', 'view', 'View', '1', 1, '2019-09-19 01:46:49', '2019-09-19 02:28:06'),
(268, 'en', 'prop-amenities-form', 'listing-id', 'Listing ID', '1', 1, '2019-09-19 01:47:10', '2019-09-19 02:28:11'),
(269, 'en', 'prop-amenities-form', 'price-per-meter', 'Price Per Meter', '1', 1, '2019-09-19 01:48:50', '2019-09-19 02:28:19'),
(270, 'en', 'prop-amenities-form', 'seller-role', 'Seller Role', '1', 1, '2019-09-19 01:49:07', '2019-09-19 02:28:24'),
(271, 'en', 'prop-amenities-form', 'payment-method', 'Payment Method', '1', 1, '2019-09-19 01:49:29', '2019-09-19 02:28:30'),
(272, 'en', 'text', 'real-estate-education-highlight-text', 'Melky Group is a leading Real Estate Developer in Egypt. <br> For the first time, Real Estate has become simple!', '1', 1, '2019-09-21 02:16:57', '2019-09-21 02:35:45'),
(274, 'en', 'text', 'real-estate-education-page-content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '1', 1, '2019-09-21 02:31:20', '2019-09-21 02:44:42'),
(275, 'en', 'text', 'about_us_top_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel purus suscipit, scelerisque ex et, malesuada ipsum. Praesent id augue non magna lobortis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel purus suscipit,scelerisque ex et, malesuada ipsum. Praesent id augue non magna lobortis vestibulum.', '1', 1, '2019-09-21 02:49:33', '2019-09-21 02:50:03'),
(276, 'en', 'text', 'about_us_whatwedo_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel purus suscipit, scelerisque ex et, malesuada ipsum. Praesent id augue non magna lobortis vestibulum.<br><br>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel purus suscipit,scelerisque ex et, malesuada ipsum. Praesent id augue non magna lobortis vestibulum.Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br><br>\r\n\r\nFusce vel purus suscipit, scelerisque ex et, malesuada ipsum. Praesent id augue non magna lobortis vestibulum.', '1', 1, '2019-09-21 02:50:56', '2019-09-21 02:50:56'),
(277, 'en', 'text', 'about_us_whatwedo_heading', 'What We Do', '1', 1, '2019-09-21 02:53:54', '2019-09-21 02:53:54'),
(278, 'en', 'text', 'real-estate-education-1-image', 'Pick your<br> Favorite Property', '1', 1, '2019-09-21 03:11:35', '2019-09-21 03:11:35'),
(279, 'en', 'text', 'real-estate-education-2-image', 'Select Equity', '1', 1, '2019-09-21 03:11:52', '2019-09-21 03:11:52'),
(280, 'en', 'text', 'real-estate-education-3-image', 'Agree to Terms & <br>Conditions', '1', 1, '2019-09-21 03:12:07', '2019-09-21 03:12:07'),
(281, 'en', 'text', 'real-estate-education-4-image', 'Invest', '1', 1, '2019-09-21 03:12:21', '2019-09-21 03:12:21'),
(282, 'en', 'text', 'real-estate-education-5-image', 'Monitor <br>your investment', '1', 1, '2019-09-21 03:12:37', '2019-09-21 03:12:37'),
(283, 'en', 'text', 'real-estate-education-6-image', 'Sell your shares <br>and earn profit', '1', 1, '2019-09-21 03:12:53', '2019-09-21 03:12:53'),
(284, 'en', 'text', 'benefit_main_content', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."', '1', 1, '2019-09-21 03:22:24', '2019-09-21 03:22:24'),
(285, 'en', 'text', 'benefit-1-image', 'Secured Personal Data', '1', 1, '2019-09-21 04:17:26', '2019-09-21 04:17:26'),
(286, 'en', 'text', 'benefit-2-image', 'Secured Investments', '1', 1, '2019-09-21 04:17:40', '2019-09-21 04:17:40'),
(287, 'en', 'text', 'benefit-3-image', 'Protected by Egyptian Law', '1', 1, '2019-09-21 04:18:00', '2019-09-21 04:18:00'),
(288, 'en', 'text', 'benefit-4-image', 'Protected by Youssry Saleh & Partners', '1', 1, '2019-09-21 04:18:15', '2019-09-21 04:18:15'),
(289, 'en', 'text', 'benefit_points', '<li>Funds are held until property offering is complete, If incomplete within designated period, funds are returned to Investors.</li>\r\n<li>Investors have access to Property Purchase Dow merits.</li>\r\n<li>Investors have access to Proof of Equity for each properly owned.</li>\r\n<li>Personal data are protected with highest encryption.</li>', '1', 1, '2019-09-21 04:23:20', '2019-09-21 04:23:20'),
(290, 'en', 'text', 'meet_the_team_desc', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."', '1', 1, '2019-09-23 02:25:56', '2019-09-23 02:25:56'),
(291, 'en', 'text', 'testimonial_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.', '1', 1, '2019-09-24 23:46:13', '2019-09-24 23:46:13'),
(292, 'en', 'text', 'price-guide-description', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."', '1', 1, '2019-09-25 00:47:59', '2019-09-25 00:47:59'),
(293, 'en', 'text', 'contact-description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel purus suscipit, scelerisque ex et, malesuada ipsum. Praesent id augue non magna lobortis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel purus suscipit,scelerisque ex et, malesuada ipsum. Praesent id augue non magna lobortis vestibulum.', '1', 1, '2019-09-25 01:56:52', '2019-09-25 01:56:52'),
(294, 'en', 'text', 'contact-phone', '+1-234-567-8-900', '1', 1, '2019-09-25 01:57:27', '2019-09-25 01:57:27'),
(295, 'en', 'text', 'contact-email', 'ask@xyz.com', '1', 1, '2019-09-25 01:57:54', '2019-09-25 01:57:54'),
(296, 'en', 'text', 'send-your-query', 'Send Your Query', '1', 1, '2019-09-25 02:00:03', '2019-09-25 02:00:03'),
(297, 'en', 'text', 'contact-our-office-address', 'Our Office Address', '1', 1, '2019-09-25 02:02:23', '2019-09-25 02:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `offerings`
--

CREATE TABLE IF NOT EXISTS `offerings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offerings_users`
--

CREATE TABLE IF NOT EXISTS `offerings_users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` int(10) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `value`, `status`, `created_by`, `updated_at`, `created_at`) VALUES
(2, 'View', 1, '1', NULL, '2019-08-27 02:10:05', '2019-08-24 11:46:01'),
(3, 'Edit', 3, '1', NULL, '2019-08-27 00:26:25', '2019-08-24 11:46:06'),
(4, 'Add', 2, '1', NULL, '2019-08-29 05:38:45', '2019-08-24 11:46:12'),
(5, 'Delete', 4, '1', NULL, '2019-08-27 06:41:09', '2019-08-27 06:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `personal_details`
--

CREATE TABLE IF NOT EXISTS `personal_details` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE IF NOT EXISTS `property` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `offering_type` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `base_price` varchar(255) NOT NULL,
  `about_developer` longtext,
  `about_project` longtext,
  `end_date` timestamp NULL DEFAULT NULL,
  `funded_status` varchar(10) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `name`, `offering_type`, `landmark`, `country`, `description`, `base_price`, `about_developer`, `about_project`, `end_date`, `funded_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Misr Italia', '', 'New Cepital', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at dolor sodales,', '8126', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.  Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.  Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.', '2019-09-29 18:30:00', '1', 1, '2019-09-03 18:30:00', '2019-09-03 18:30:00'),
(2, 'Italiana', '', 'New york', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at dolor sodales,', '8000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.  Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.  Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.', '2019-10-08 18:30:00', '1', 1, '2019-09-03 18:30:00', '2019-09-03 18:30:00'),
(3, 'Miar zealand', '', 'New zealand', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at dolor sodales,', '7800', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.  Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.  Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.', '2019-09-24 18:30:00', '2', 1, '2019-09-03 18:30:00', '2019-09-03 18:30:00'),
(4, 'Misr Himalayas', '', 'New york', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at dolor sodales,', '95524', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.  Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.  Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.', '2019-10-30 18:30:00', '2', 1, '2019-09-10 05:37:30', '2019-09-10 05:37:30'),
(20, 'Synapse India', '2', 'Arizona', 3, 'Test Description', '45000', '<br>', '<br>', '2019-09-29 18:30:00', '2', 1, '2019-09-19 03:15:58', '2019-09-19 03:15:58'),
(21, 'Synapse India 2', '2', 'Arizona', 3, 'Test Description', '45000', '<br>', '<br>', '2019-09-29 18:30:00', '2', 1, '2019-09-19 03:18:11', '2019-09-19 03:18:11'),
(22, 'Synapse India 3', '2', 'Arizona', 3, 'Test Description', '45000', '<br>', '<br>', '2019-09-29 18:30:00', '2', 1, '2019-09-19 03:20:01', '2019-09-19 03:20:01'),
(23, 'Synapse India 4', '2', 'Arizona', 3, 'Test Description', '45000', '<br>', '<br>', '2019-09-29 18:30:00', '2', 1, '2019-09-19 03:23:39', '2019-09-19 03:23:39'),
(24, 'Synapse India 5', '2', 'Arizona', 3, 'Test Description', '45000', '<br>', '<br>', '2019-09-29 18:30:00', '2', 1, '2019-09-19 03:25:45', '2019-09-19 03:25:45'),
(25, 'Synapse India 6', '2', 'Arizona', 3, 'Test Description', '45000', '<br>', '<br>', '2019-09-29 18:30:00', '1', 1, '2019-09-19 03:26:55', '2019-09-19 03:26:55'),
(26, 'Synapse India 7', '1', 'Arizona', 1, 'Test Description', '45000', '<br>', '<br>', '2019-09-29 18:30:00', '1', 1, '2019-09-19 03:34:49', '2019-09-19 03:34:49'),
(27, 'Misr Italia 1', '', 'New Cepital', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at dolor sodales,', '8126', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.  Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.  Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.', '2019-09-29 18:30:00', '1', 1, '2019-09-03 18:30:00', '2019-09-03 18:30:00'),
(28, 'Italiana 1', '', 'New york', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at dolor sodales,', '8000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.  Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.  Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.', '2019-10-08 18:30:00', '1', 1, '2019-09-03 18:30:00', '2019-09-03 18:30:00'),
(29, 'Miar zealand 1', '', 'New zealand', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at dolor sodales,', '7800', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.  Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.  Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.', '2019-09-24 18:30:00', '2', 1, '2019-09-03 18:30:00', '2019-09-03 18:30:00'),
(30, 'Misr Himalayas 1', '', 'New york', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at dolor sodales,', '95524', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.  Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.  Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.', '2019-10-30 18:30:00', '2', 1, '2019-09-10 05:37:30', '2019-09-10 05:37:30'),
(31, 'Test Offering', '2', 'Arizona', 2, 'Jnoub in the capital city which is characterized by its distinct location in R7, G6, close to the presidential palace.', '585600', '<p style="margin-bottom: 20px; font-size: 20px; color: rgb(34, 34, 34); line-height: 26px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.</p><p style="margin-bottom: 0px; font-size: 20px; color: rgb(34, 34, 34); line-height: 26px;">Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.</p>', '<p style="margin-bottom: 20px; font-size: 20px; color: rgb(34, 34, 34); line-height: 26px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet eget ipsum eu fringilla. Mauris suscipit massa in libero placerat sodales. Nunc sapien ligula, tempor non sapien vel, dapibus ultrices lectus.</p><p style="margin-bottom: 0px; font-size: 20px; color: rgb(34, 34, 34); line-height: 26px;">Pellentesque sit amet fringilla quam. Maecenas sollicitudin pulvinar nunc, elementum lobortis sem congue ut. Integer eget massa augue. Sed nec nulla consectetur nibh posuere bibendum. Morbi condimentum odio ut felis vehicula semper.</p>', '2019-12-24 18:30:00', NULL, 1, '2019-09-19 06:24:19', '2019-09-19 06:24:19'),
(32, 'Test Offering 2', '1', 'Arizona', 2, 'Jnoub in the capital city which is characterized by its distinct location in R7, G6, close to the presidential palace.', '157000', NULL, NULL, '2019-09-29 18:30:00', NULL, 1, '2019-09-20 00:57:11', '2019-09-20 00:57:11'),
(33, 'Test Offering 2', '1', 'Arizona', 2, 'Jnoub in the capital city which is characterized by its distinct location in R7, G6, close to the presidential palace.', '157000', NULL, NULL, '2019-09-29 18:30:00', NULL, 1, '2019-09-20 00:57:44', '2019-09-20 00:57:44'),
(34, 'Test Offering 3', '2', 'Arizona', 3, 'Jnoub in the capital city which is characterized by its distinct location in R7, G6, close to the presidential palace.', '157000', '<br>', '<br>', '2019-09-29 18:30:00', NULL, 1, '2019-09-20 06:45:50', '2019-09-20 06:45:50');

-- --------------------------------------------------------

--
-- Table structure for table `property_amenities`
--

CREATE TABLE IF NOT EXISTS `property_amenities` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `amenity` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_amenities`
--

INSERT INTO `property_amenities` (`id`, `property_id`, `amenity`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 25, 'payment-method', 'sadsad', '1', '2019-09-19 08:56:55', '2019-09-19 03:26:55'),
(2, 26, 'floor', '3', '1', '2019-09-19 09:04:49', '2019-09-19 09:04:49'),
(3, 26, 'establishment-date', '123', '1', '2019-09-19 09:04:49', '2019-09-19 09:04:49'),
(4, 26, 'finish-type', '123dsa', '1', '2019-09-19 09:04:49', '2019-09-19 09:04:49'),
(5, 26, 'view', 'csd', '1', '2019-09-19 09:04:49', '2019-09-19 09:04:49'),
(6, 26, 'listing-id', '12321esda', '1', '2019-09-19 09:04:49', '2019-09-19 09:04:49'),
(7, 26, 'price-per-meter', '2131234', '1', '2019-09-19 09:04:49', '2019-09-19 09:04:49'),
(8, 26, 'seller-role', 'sadasd', '1', '2019-09-19 09:04:49', '2019-09-19 09:04:49'),
(9, 26, 'payment-method', 'sadsad', '1', '2019-09-19 09:04:49', '2019-09-19 09:04:49'),
(10, 31, 'floor', '3', '1', '2019-09-19 11:54:19', '2019-09-19 11:54:19'),
(11, 31, 'establishment-date', '2020', '1', '2019-09-19 11:54:19', '2019-09-19 11:54:19'),
(12, 31, 'finish-type', 'Semi Finished', '1', '2019-09-19 11:54:19', '2019-09-19 11:54:19'),
(13, 31, 'view', 'Main Street', '1', '2019-09-19 11:54:19', '2019-09-19 11:54:19'),
(14, 31, 'listing-id', 'EG - 2052287', '1', '2019-09-19 11:54:19', '2019-09-19 11:54:19'),
(15, 31, 'price-per-meter', '9600', '1', '2019-09-19 11:54:19', '2019-09-19 11:54:19'),
(16, 31, 'seller-role', 'Equity Co-Owner', '1', '2019-09-19 11:54:19', '2019-09-19 11:54:19'),
(17, 31, 'payment-method', 'Credit Card, E-Wallet', '1', '2019-09-19 11:54:19', '2019-09-19 11:54:19'),
(18, 33, 'floor', '3', '1', '2019-09-20 06:27:44', '2019-09-20 06:27:44'),
(19, 33, 'establishment-date', '2020', '1', '2019-09-20 06:27:44', '2019-09-20 06:27:44'),
(20, 33, 'finish-type', 'Semi Finished', '1', '2019-09-20 06:27:44', '2019-09-20 06:27:44'),
(21, 33, 'view', 'Main Street', '1', '2019-09-20 06:27:44', '2019-09-20 06:27:44'),
(22, 33, 'listing-id', 'EG - 2052287', '1', '2019-09-20 06:27:44', '2019-09-20 06:27:44'),
(23, 33, 'price-per-meter', '9600', '1', '2019-09-20 06:27:44', '2019-09-20 06:27:44'),
(24, 33, 'seller-role', 'Equity Co-Owner', '1', '2019-09-20 06:27:44', '2019-09-20 06:27:44'),
(25, 33, 'payment-method', 'Credit Card, E-Wallet', '1', '2019-09-20 06:27:44', '2019-09-20 06:27:44'),
(26, 34, 'floor', '3', '1', '2019-09-20 12:15:50', '2019-09-20 12:15:50'),
(27, 34, 'establishment-date', '2020', '1', '2019-09-20 12:15:50', '2019-09-20 12:15:50'),
(28, 34, 'finish-type', 'Semi Finished', '1', '2019-09-20 12:15:50', '2019-09-20 12:15:50'),
(29, 34, 'view', 'Main Street', '1', '2019-09-20 12:15:50', '2019-09-20 12:15:50'),
(30, 34, 'listing-id', 'EG - 2052287', '1', '2019-09-20 12:15:50', '2019-09-20 12:15:50'),
(31, 34, 'price-per-meter', '8500', '1', '2019-09-20 12:15:50', '2019-09-20 12:15:50'),
(32, 34, 'seller-role', 'Equity Co-Owner', '1', '2019-09-20 12:15:50', '2019-09-20 12:15:50'),
(33, 34, 'payment-method', 'Credit Card, E-Wallet', '1', '2019-09-20 12:15:50', '2019-09-20 12:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `property_investment`
--

CREATE TABLE IF NOT EXISTS `property_investment` (
  `id` int(20) NOT NULL,
  `amount` varchar(10) DEFAULT NULL,
  `property_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_by` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_investment`
--

INSERT INTO `property_investment` (`id`, `amount`, `property_id`, `user_id`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '2500', 1, 1, '1', NULL, NULL, NULL),
(2, '3500', 2, 1, '1', NULL, NULL, NULL),
(3, '1500', 3, 1, '1', NULL, NULL, NULL),
(4, '1200', 3, 1, '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_answer`
--

CREATE TABLE IF NOT EXISTS `question_answer` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` int(10) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `value`, `status`, `created_by`, `updated_at`, `created_at`) VALUES
(1, 'Admin', 1, '1', NULL, '2019-09-23 04:54:00', '2019-08-23 11:40:29'),
(3, 'Employee', 2, '1', NULL, '2019-08-28 04:26:32', '2019-08-23 11:40:42'),
(4, 'Entrepreneur', 3, '1', NULL, '2019-09-06 02:13:34', '2019-08-23 11:40:50'),
(5, 'Field Exceutive', 6, '1', NULL, '2019-08-28 04:25:50', '2019-08-23 11:41:24'),
(6, 'Team Lead', 7, '1', NULL, '2019-08-27 00:26:03', '2019-08-23 11:41:44'),
(7, 'Manager', 5, '1', NULL, '2019-08-27 00:25:53', '2019-08-23 11:41:49'),
(9, 'Invester', 4, '1', NULL, '2019-08-27 00:25:49', '2019-08-26 04:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE IF NOT EXISTS `roles_permissions` (
  `id` int(11) NOT NULL,
  `role_id` varchar(255) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `updated_by` varchar(50) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role_id`, `permission_id`, `module_id`, `created_by`, `status`, `updated_by`, `updated_at`, `created_at`) VALUES
(5, '2', 1, 4, '1', '1', '1', '2019-08-27 06:42:49', '2019-08-27 06:42:49'),
(6, '3', 1, 6, '1', '1', '1', '2019-08-28 10:16:59', '2019-08-28 10:16:59'),
(7, '4', 1, 5, '1', '1', '1', '2019-08-28 10:17:35', '2019-08-28 10:17:35'),
(8, '6', 1, 4, '1', '1', '1', '2019-08-30 04:31:19', '2019-08-30 04:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE IF NOT EXISTS `uploads` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `path` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `uploadable_id` int(10) NOT NULL,
  `uploadable_type` varchar(255) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `title`, `description`, `path`, `module`, `extension`, `status`, `uploadable_id`, `uploadable_type`, `created_at`, `updated_at`, `created_by`) VALUES
(12, '1568805580-additional-items-11099.pdf', 'Melky Group and investor agreement', 'Melky Group and investor agreement', '/home/uprj11099/www/property/public/images/contracts', 'contracts', 'pdf', '0', 1, 'contracts', '2019-09-18 11:19:40', '2019-09-18 05:49:40', '1'),
(14, '1568805580-additional-items-11099.pdf', 'Proff of property ownership\n\n', 'Proff of property ownership\n\n', '/home/uprj11099/www/property/public/images/contracts', 'contracts', 'pdf', '0', 1, 'contracts', '2019-09-18 11:19:40', '2019-09-18 05:49:40', '1'),
(15, '1568882758-property.jpg', NULL, NULL, '/home/uprj11099/www/property/public/images/properties', '', 'jpg', '0', 20, 'image', '2019-09-19 08:45:58', '2019-09-19 03:15:58', '1'),
(16, '1568882891-property.jpg', NULL, NULL, '/home/uprj11099/www/property/public/images/properties', '', 'jpg', '0', 21, 'image', '2019-09-19 08:48:11', '2019-09-19 03:18:11', '1'),
(17, '1568883001-property.jpg', NULL, NULL, '/home/uprj11099/www/property/public/images/properties', '', 'jpg', '0', 22, 'image', '2019-09-19 08:50:01', '2019-09-19 03:20:01', '1'),
(18, '1568883219-property.jpg', NULL, NULL, '/home/uprj11099/www/property/public/images/properties', '', 'jpg', '0', 23, 'image', '2019-09-19 08:53:39', '2019-09-19 03:23:39', '1'),
(19, '1568883345-property.jpg', NULL, NULL, '/home/uprj11099/www/property/public/images/properties', '', 'jpg', '0', 24, 'image', '2019-09-19 08:55:45', '2019-09-19 03:25:45', '1'),
(20, '1568883415-property.jpg', NULL, NULL, '/home/uprj11099/www/property/public/images/properties', '', 'jpg', '0', 25, 'image', '2019-09-19 08:56:55', '2019-09-19 03:26:55', '1'),
(21, '1568883889-property.jpg', NULL, NULL, '/home/uprj11099/www/property/public/images/properties', '', 'jpg', '0', 26, 'image', '2019-09-19 09:04:49', '2019-09-19 03:34:49', '1'),
(22, '1568894059-property.jpg', NULL, NULL, '/home/uprj11099/www/property/public/images/properties', 'property', 'jpg', '0', 31, 'property', '2019-09-19 11:54:19', '2019-09-19 06:24:19', '1'),
(23, '1568960864-property.jpg', NULL, NULL, '/home/uprj11099/www/property/public/images/properties', 'property', 'jpg', '0', 33, 'property', '2019-09-20 06:27:44', '2019-09-20 00:57:44', '1'),
(24, '1568980640-property2.jpg', NULL, '', '/home/uprj11099/www/property/public/images/pages', 'imageUpload', 'jpg', '0', 0, 'about', '2019-09-20 08:45:33', '2019-09-20 06:27:20', '1'),
(27, '1569055406-Real_Estate_Edu_ico01.png', 'real-estate-education-1-image', '', '/home/uprj11099/www/property/public/images/pages', 'imageUpload', 'png', '0', 0, 'real-estate-education', '2019-09-20 10:56:16', '2019-09-21 03:13:26', '1'),
(28, '1569055421-Real_Estate_Edu_ico02.png', 'real-estate-education-2-image', '', '/home/uprj11099/www/property/public/images/pages', 'imageUpload', 'png', '0', 0, 'real-estate-education', '2019-09-20 11:11:46', '2019-09-21 03:13:41', '1'),
(29, '1569055437-Real_Estate_Edu_ico03.png', 'real-estate-education-3-image', '', '/home/uprj11099/www/property/public/images/pages', 'imageUpload', 'png', '0', 0, 'real-estate-education', '2019-09-20 11:13:07', '2019-09-21 03:13:57', '1'),
(30, '1569055454-Real_Estate_Edu_ico04.png', 'real-estate-education-4-image', '', '/home/uprj11099/www/property/public/images/pages', 'imageUpload', 'png', '0', 0, 'real-estate-education', '2019-09-20 11:15:33', '2019-09-21 03:14:14', '1'),
(31, '1569055472-Real_Estate_Edu_ico05.png', 'real-estate-education-5-image', '', '/home/uprj11099/www/property/public/images/pages', 'imageUpload', 'png', '0', 0, 'real-estate-education', '2019-09-20 11:57:41', '2019-09-21 03:14:32', '1'),
(32, '1569055493-Real_Estate_Edu_ico06.png', 'real-estate-education-6-image', '', '/home/uprj11099/www/property/public/images/pages', 'imageUpload', 'png', '0', 0, 'real-estate-education', '2019-09-20 11:57:57', '2019-09-21 03:14:53', '1'),
(33, '1568981750-property.jpg', '', '', '/home/uprj11099/www/property/public/images/properties', 'property', 'jpg', '0', 34, 'property', '2019-09-20 12:15:50', '2019-09-20 06:45:50', '37'),
(34, '1569059045-benefit-ico04.png', 'benefit-1-image', '', '/home/uprj11099/www/property/public/images/pages', 'imageUpload', 'png', '0', 0, 'benefit', '2019-09-21 09:43:08', '2019-09-21 04:14:05', '1'),
(35, '1569059064-benefit-ico01.png', 'benefit-2-image', '', '/home/uprj11099/www/property/public/images/pages', 'imageUpload', 'png', '0', 0, 'benefit', '2019-09-21 09:43:15', '2019-09-21 04:14:24', '1'),
(36, '1569059078-benefit-ico02.png', 'benefit-3-image', '', '/home/uprj11099/www/property/public/images/pages', 'imageUpload', 'png', '0', 0, 'benefit', '2019-09-21 09:43:22', '2019-09-21 04:14:38', '1'),
(37, '1569059090-benefit-ico03.png', 'benefit-4-image', '', '/home/uprj11099/www/property/public/images/pages', 'imageUpload', 'png', '0', 0, 'benefit', '2019-09-21 09:43:32', '2019-09-21 04:14:50', '1'),
(43, '1569316217-testimonials-img01.jpg', '', '', '/home/uprj11099/www/property/public/images/team', 'team', 'jpg', '0', 1, 'team', '2019-09-24 09:10:17', '2019-09-24 03:40:17', '1'),
(44, '1569319759-testimonials-img02.jpg', '', '', '/home/uprj11099/www/property/public/images/team', 'team', 'jpg', '0', 2, 'team', '2019-09-24 10:09:19', '2019-09-24 04:39:19', '1'),
(45, '1569319847-testimonials-img03.jpg', '', '', '/home/uprj11099/www/property/public/images/team', 'team', 'jpg', '0', 3, 'team', '2019-09-24 10:10:47', '2019-09-24 04:40:47', '1'),
(46, '1569320579-testimonials-img01.jpg', '', '', '/home/uprj11099/www/property/public/images/testimonial', 'testimonial', 'jpg', '0', 1, 'testimonial', '2019-09-24 10:22:59', '2019-09-24 04:52:59', '1'),
(47, '1569324891-testimonials-img02.jpg', '', '', '/home/uprj11099/www/property/public/images/testimonial', 'testimonial', 'jpg', '0', 2, 'testimonial', '2019-09-24 11:34:51', '2019-09-24 06:04:51', '1'),
(48, '1569324997-testimonials-img03.jpg', '', '', '/home/uprj11099/www/property/public/images/testimonial', 'testimonial', 'jpg', '0', 3, 'testimonial', '2019-09-24 11:36:37', '2019-09-24 06:06:37', '1'),
(49, '1569391329-grid2.png', '', '', '/home/uprj11099/www/property/public/images/priceguide', 'priceguide', 'png', '0', 1, 'priceguide', '2019-09-25 06:02:09', '2019-09-25 00:32:09', '1'),
(50, '1569391535-grid6.png', '', '', '/home/uprj11099/www/property/public/images/priceguide', 'priceguide', 'png', '0', 2, 'priceguide', '2019-09-25 06:05:35', '2019-09-25 00:35:35', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `role` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `profile_status`, `role`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'Master', 'rickingteamf@gmail.com', NULL, '$2y$10$dzqSBhcn8H.m523AvgGkAub6.rDcSQAigXMmOWfoMtwanw025ZoCy', 'KTbBJVztk1VWQlFILm2GKD0CgzdZDOW03L7274kdB3nmzK3EcizhbJFzwvMM', '0', '1', 'admin', '2019-08-21 01:18:37', '2019-08-28 01:42:10'),
(2, 'Invester', 'invester@abc.com', NULL, '$2y$10$UU4mG.NCFMMW/4gBGzFVVeur6CeOcC6cd.r1rezuvMMYfIrDveVn2', 'ZBYoPpFoI0eUCdRf7PVICGPdmGfHAw3KGqGrP7AsSFMGyPGzpiySmRgaWFn3', '0', '4', 'invester', '2019-08-28 00:28:04', '2019-08-28 04:58:00'),
(3, 'Entrepreneur', 'entrepreneur@abc.com', NULL, '$2y$10$5ZiJkS.6.9qAiZJju4UzIuQXBgHuXVm4/OSPkiDOUhgDs.iNtaO.C', NULL, '0', '3', 'entrepreneur', '2019-08-28 01:53:20', '2019-08-28 04:58:38'),
(4, 'Employee', 'employee@abc.com', NULL, '$2y$10$MD1nHoji4FybbGnR.dilG.MDNo/AcRuOYfxh.odw2Pab26pnWXylC', NULL, '0', '2', 'employee', '2019-08-28 01:54:15', '2019-08-28 05:53:39'),
(5, 'Employee 2 ', 'employee2@abc.com', NULL, '$2y$10$MD1nHoji4FybbGnR.dilG.MDNo/AcRuOYfxh.odw2Pab26pnWXylC', NULL, '0', NULL, '', '2019-08-28 01:54:15', '2019-08-28 01:54:15'),
(6, 'Ashish', 'kkk@gmail.com', NULL, '$2y$10$lVU0Trt1ZdgPPFcFsnaClu/FzAHLDoqoY1AANChZApyM0Cj/2blN6', NULL, '0', '6', 'employee', '2019-08-29 02:01:58', '2019-08-29 23:04:15'),
(7, 'def', 'hello@abc.com', NULL, '$2y$10$qEK1LYcPVkLUiY.berk2X.ZHicOMQpM8xi0IcwA.Grit8gFrJrmu6', NULL, '0', '7', 'employee', '2019-08-29 06:05:21', '2019-08-29 06:05:21'),
(8, 'puneet', 'puneet@abc.com', NULL, '$2y$10$U.how9ABCxaU/gyBaYs8bOUknu7ai5dVywn/R5I6OW7U1tJKKDuUy', NULL, '0', '2', 'employee', '2019-08-29 23:05:05', '2019-08-29 23:05:05'),
(27, 'rocking team', 'rockingteamf@gmail.com', NULL, '$2y$10$SeAcCJ8Jw.xL9.rABO6GSuWesyfXHY0ZvAj92tagT3EZabQUASjZm', NULL, '0', '2', 'employee', '2019-09-03 07:05:48', '2019-09-03 07:05:48'),
(28, 'Synapse India', 'rickingteamf12@gmail.com', NULL, '$2y$10$d8Yi81sXVLiM37w1S6pS2exJkmTbq059RjLRq4uKKCs7t4abTRrku', NULL, '0', NULL, NULL, '2019-09-10 06:12:11', '2019-09-10 06:12:11'),
(37, 'Abhishek', 'abhishekch@synapseindia.email', NULL, '$2y$10$BSmgCw9LOrGZrOYWm9kR8.Pfn1lFHPT13.TjARhtbrGttCtASZ.wW', 'c6v9TqwA8jFFss69TYttK5VfPu4EBQoG5WmuxqblQj6uFWOkcJV3MhgHyBEe', '0', '4', 'invester', '2019-09-11 02:18:24', '2019-09-11 02:18:24'),
(43, 'Test User', 'abhishekchauhan60@gmail.com', NULL, '$2y$10$8UlJHFTFuzYs0XjFVcoHdeOlcBUoiDe9zVP4mdC0PvQZFCo0.sxS2', NULL, '0', '4', 'invester', '2019-09-25 05:02:09', '2019-09-25 05:02:09');

-- --------------------------------------------------------

--
-- Table structure for table `users_company`
--

CREATE TABLE IF NOT EXISTS `users_company` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_refrence`
--

CREATE TABLE IF NOT EXISTS `user_refrence` (
  `id` int(11) NOT NULL,
  `to_ref` int(10) NOT NULL,
  `from_ref` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms_data`
--
ALTER TABLE `forms_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms_serials`
--
ALTER TABLE `forms_serials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mailtemplate`
--
ALTER TABLE `mailtemplate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multilinguals`
--
ALTER TABLE `multilinguals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offerings`
--
ALTER TABLE `offerings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offerings_users`
--
ALTER TABLE `offerings_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_details`
--
ALTER TABLE `personal_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_amenities`
--
ALTER TABLE `property_amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_investment`
--
ALTER TABLE `property_investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_answer`
--
ALTER TABLE `question_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_company`
--
ALTER TABLE `users_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_refrence`
--
ALTER TABLE `user_refrence`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `company_profile`
--
ALTER TABLE `company_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `forms_data`
--
ALTER TABLE `forms_data`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `forms_serials`
--
ALTER TABLE `forms_serials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mailtemplate`
--
ALTER TABLE `mailtemplate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `masters`
--
ALTER TABLE `masters`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `multilinguals`
--
ALTER TABLE `multilinguals`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=298;
--
-- AUTO_INCREMENT for table `offerings`
--
ALTER TABLE `offerings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `offerings_users`
--
ALTER TABLE `offerings_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `personal_details`
--
ALTER TABLE `personal_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `property_amenities`
--
ALTER TABLE `property_amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `property_investment`
--
ALTER TABLE `property_investment`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `question_answer`
--
ALTER TABLE `question_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `users_company`
--
ALTER TABLE `users_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_refrence`
--
ALTER TABLE `user_refrence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
