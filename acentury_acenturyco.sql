-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 14, 2021 at 04:36 PM
-- Server version: 8.0.26
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acentury_acenturyco`
--

-- --------------------------------------------------------

--
-- Table structure for table `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `ip_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 5, '99.234.190.162', '2021-10-12 20:01:38', '2021-10-12 20:01:38'),
(2, 5, '99.240.176.118', '2021-10-14 18:16:05', '2021-10-14 18:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int UNSIGNED NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vdlp-twofactorauthentication_google2fa_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `activation_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int UNSIGNED DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `vdlp-twofactorauthentication_google2fa_secret`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `deleted_at`, `is_superuser`) VALUES
(1, 'Carmen', 'Lee', 'carmen', 'carmen.lee@dreamstudio9.com', '$2y$10$inyjt7UPqBS7HpBbdz/tmOLQ9r3HaX7CRa/2HMUsCFEbklbmvM3/6', 'eyJpdiI6Ikhob1ZjRW5JNjBVK2VpclZmSHZ5cUE9PSIsInZhbHVlIjoiYWJlQlFDK0JcL0lBd3pGSTFcLzhka09uN2JHTDBCSFp4TXdiNkRJd2xQY0l2TmREWE5DSDlQOTVHV2s5VWNUWnduUWE1bHZGbmYzaUoyN3Zsc2xSZFNxVkpFRnBwVXBFb0VPMWhXajc0Wkl2Yz0iLCJtYWMiOiI4NTUyYzgzZDMxOTM1ZjBkYzM0NGNhMDliYTc5YmFiM2U3NjZjYjdmMTIxYjZmZGY4N2RiYjllZDIzZjQyN2I0In0=', NULL, '$2y$10$Y2t2LjitkrservULaN2oG.Iv60nNwYVmrJV/zwAHW6QnN3ahiRRWq', NULL, '', 1, 2, NULL, '2021-10-05 05:38:44', '2019-09-30 03:59:42', '2021-10-05 05:38:44', NULL, 1),
(2, 'David', '', 'daves', 'daves@goobdev.com', '$2y$10$4bHKPr9I/4Dqtay4dr9IiOkZUZbG0oqeumgiyNXiU09TlHQDIvcp2', 'eyJpdiI6IllpVWIrYlB4NzRZS296SEM3YXVycXc9PSIsInZhbHVlIjoiMzVpXC82SXg0aU5hMk1LVlNGMHBSMjZrNGRJditGdU56XC9iZG1yT2ZpWUhpbVVUeW53VDFGdFwvbmNHQ1V3SHM1blVUK2pydkh0VDJVbytKYU4zSG1qczZUWEFYRXNSSkZGNkhPMjhUY1c1a2M9IiwibWFjIjoiMzRlNTNlYmU1ODgxNzhmZjUxZGYyMjBhZDAyZjFlNjIxZmIwMmJkNGFkNDVmZWZhODVlMDVkZTE4YTk5NDAyYyJ9', NULL, '$2y$10$6YDgEB8V/7SEN1GjP6ZgdeDbmG2GJnGiDjRYjWKOJLI1HYclKy14y', NULL, '', 0, 2, NULL, '2021-05-11 20:48:36', '2019-09-30 05:38:06', '2021-05-11 20:48:36', NULL, 1),
(3, 'Judith', 'Wang', 'judithdrummer', 'judith.wang@acentury.ca', '$2y$10$Pa07cm0V8PBF82JxTyBDSO6ZXGacOg3cxMEPCqMGmAcgdJ3i6wTA.', 'eyJpdiI6IlYrc3hCK3l5WTFtR2pXSXR0OTZrWGc9PSIsInZhbHVlIjoiS3BBUlA2dEVCUHk1d2c5U2JBSW1vQ0kwdEJkM1N1RmhQVGRtKzFJajluY3lsVk1mblJiZXpiWW1xNTdsQmpiclM4a3JsUzVqbk9GNkhMOFwvVUFpODlIVWI4UVBXYUM1amRham5SVjNOcUYwPSIsIm1hYyI6ImM2MTVlNDViMmY4NjIxY2Q1ZmFlZjIwN2ZmNDZmZGE2MmIzOGNlZTIwNTBjNjA4ZmU0MGM1MTAxN2I1ZWJlYzUifQ==', NULL, '$2y$10$lQEyhSCoQAbnGt7g3.p0v.OIW/F6ucproXQW0hQba3IPDIcmfFWgq', NULL, '', 0, 2, NULL, '2021-09-09 14:45:40', '2020-09-01 01:19:25', '2021-09-09 14:45:40', NULL, 0),
(4, '', '', 'josh', 'joshua.lee@dreamstudio9.com', '$2y$10$Bad8TqDFDTfZMe9Ys8OdT.42FeuWDhrC0UJB9wcqZMUZWWX.mLi2y', NULL, NULL, NULL, NULL, '', 0, 2, NULL, NULL, '2021-10-06 09:15:32', '2021-10-06 09:16:42', NULL, 1),
(5, '', '', 'nathan', 'nathan.chow@dreamstudio9.com', '$2y$10$Z9rvurjCCcyWiCne9rBGauvdZ/3xEimMRd5QYQF15hzD.4/QSf8p2', NULL, NULL, '$2y$10$luDDsKmFIbCoF5A3R6mX8.l1oV2gjJj0uwfdsXfmcp2u57XSYSip6', NULL, '', 0, 2, NULL, '2021-10-14 18:16:05', '2021-10-06 09:16:21', '2021-10-14 18:16:05', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int UNSIGNED NOT NULL,
  `user_group_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1),
(2, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2019-09-30 03:59:42', '2019-09-30 03:59:42', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `namespace` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_preferences`
--

INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 1, 'backend', 'reportwidgets', 'dashboard', '{\"welcome\":{\"class\":\"Backend\\\\ReportWidgets\\\\Welcome\",\"sortOrder\":50,\"configuration\":{\"ocWidgetWidth\":7}},\"report_container_dashboard_2\":{\"class\":\"System\\\\ReportWidgets\\\\Status\",\"configuration\":{\"title\":\"System status\",\"ocWidgetWidth\":\"12\",\"ocWidgetNewRow\":null},\"sortOrder\":51}}'),
(2, 3, 'backend', 'reportwidgets', 'dashboard', '{\"welcome\":{\"class\":\"Backend\\\\ReportWidgets\\\\Welcome\",\"sortOrder\":50,\"configuration\":{\"title\":\"Welcome\",\"ocWidgetWidth\":7,\"ocWidgetNewRow\":null}},\"systemStatus\":{\"class\":\"System\\\\ReportWidgets\\\\Status\",\"sortOrder\":60,\"configuration\":{\"ocWidgetWidth\":7}},\"activeTheme\":{\"class\":\"Cms\\\\ReportWidgets\\\\ActiveTheme\",\"sortOrder\":70,\"configuration\":{\"ocWidgetWidth\":5}}}');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2019-09-30 03:59:42', '2019-09-30 03:59:42'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2019-09-30 03:59:42', '2019-09-30 03:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '174.6.130.191', 0, NULL, 0, NULL, 0, NULL),
(2, 2, '70.31.47.89', 0, NULL, 0, NULL, 0, NULL),
(3, 3, '97.108.175.172', 0, NULL, 0, NULL, 0, NULL),
(4, 2, '72.139.111.94', 0, NULL, 0, NULL, 0, NULL),
(5, 2, '74.14.95.134', 0, NULL, 0, NULL, 0, NULL),
(6, 2, '70.31.45.30', 0, NULL, 0, NULL, 0, NULL),
(7, 2, '70.31.45.112', 0, NULL, 0, NULL, 0, NULL),
(8, 3, '72.139.111.94', 0, NULL, 0, NULL, 0, NULL),
(9, 2, '70.27.107.64', 0, NULL, 0, NULL, 0, NULL),
(10, 3, '161.35.5.28', 0, NULL, 0, NULL, 0, NULL),
(11, 2, '70.27.32.110', 0, NULL, 0, NULL, 0, NULL),
(12, 1, '207.216.212.60', 0, NULL, 0, NULL, 0, NULL),
(13, 2, '70.31.45.215', 0, NULL, 0, NULL, 0, NULL),
(14, 5, '99.234.190.162', 0, NULL, 0, NULL, 0, NULL),
(15, 5, '99.240.176.118', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int UNSIGNED NOT NULL,
  `theme` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_theme_data`
--

INSERT INTO `cms_theme_data` (`id`, `theme`, `data`, `created_at`, `updated_at`) VALUES
(1, 'acentury', '{\"site_name\":\"Acentury\",\"site_logo\":\"\"}', '2019-09-30 06:02:22', '2020-11-24 19:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `old_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_templates`
--

CREATE TABLE `cms_theme_templates` (
  `id` int UNSIGNED NOT NULL,
  `source` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int UNSIGNED NOT NULL,
  `master_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pivot_data` mediumtext COLLATE utf8mb4_unicode_ci,
  `session_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deferred_bindings`
--

INSERT INTO `deferred_bindings` (`id`, `master_type`, `master_field`, `slave_type`, `slave_id`, `pivot_data`, `session_key`, `is_bind`, `created_at`, `updated_at`) VALUES
(3, 'Ittoo\\Carousel\\Models\\Slide', 'image', 'System\\Models\\File', '3', NULL, 'oAglc90rk3XfAhn67BV4CPCI0D4JpPJp1L6FGypf', 1, '2019-10-01 14:13:21', '2019-10-01 14:13:21'),
(4, 'Ittoo\\Carousel\\Models\\Logo', 'image', 'System\\Models\\File', '4', NULL, '9gdB5RLcclTjWLFDRXcDtz0tEytEkqdlNLF3GQoA', 1, '2019-10-01 15:05:54', '2019-10-01 15:05:54'),
(11, 'Ittoo\\Carousel\\Models\\Slide', 'image', 'System\\Models\\File', '41', NULL, 'HwjFIssIMOOYa8FhLDS5ARRlKNcmQlnTZ5BVppJk', 1, '2019-10-03 17:10:40', '2019-10-03 17:10:40'),
(31, 'RainLab\\Blog\\Models\\Post', 'featured_images', 'System\\Models\\File', '58', NULL, 'ZBlMdzayb8Kp7MJzLVr2PjMNrSImdRsNRUs94JQ5', 1, '2019-10-04 17:15:33', '2019-10-04 17:15:33'),
(91, 'RainLab\\Blog\\Models\\Post', 'featured_images', 'System\\Models\\File', '96', NULL, '1AiCucw5ytJFMWq8rsJPlCjxsRNqaO5P9LEniP2y', 0, '2019-10-10 20:01:42', '2019-10-10 20:01:42'),
(92, 'RainLab\\Blog\\Models\\Post', 'featured_images', 'System\\Models\\File', '99', NULL, '1AiCucw5ytJFMWq8rsJPlCjxsRNqaO5P9LEniP2y', 1, '2019-10-10 20:01:54', '2019-10-10 20:01:54'),
(93, 'RainLab\\Blog\\Models\\Post', 'featured_images', 'System\\Models\\File', '100', NULL, '1AiCucw5ytJFMWq8rsJPlCjxsRNqaO5P9LEniP2y', 1, '2019-10-10 20:01:58', '2019-10-10 20:01:58'),
(111, 'Ittoo\\Carousel\\Models\\Logo', 'image', 'System\\Models\\File', '104', NULL, 'dxZlSUYJqt1FvRSZx3rebpYS0qbx3PJnVPVSSPZk', 0, '2019-10-12 09:29:49', '2019-10-12 09:29:49'),
(126, 'Ittoo\\Carousel\\Models\\Logo', 'image', 'System\\Models\\File', '121', NULL, 'EeVECqVDD1w5cVux85UYA70nRP7vtfYhVRrdO4sU', 0, '2019-10-12 09:37:04', '2019-10-12 09:37:04'),
(127, 'Ittoo\\Carousel\\Models\\Logo', 'image', 'System\\Models\\File', '122', NULL, 'EeVECqVDD1w5cVux85UYA70nRP7vtfYhVRrdO4sU', 1, '2019-10-12 09:37:08', '2019-10-12 09:37:08'),
(221, 'Ittoo\\Carousel\\Models\\Team', 'image', 'System\\Models\\File', '178', NULL, 'R8W8t0sMR5hIYdTJ807pmD14Y6BrCehzBulQcS4u', 0, '2019-10-17 21:52:57', '2019-10-17 21:52:57'),
(224, 'Ittoo\\Carousel\\Models\\Logo', 'image', 'System\\Models\\File', '191', NULL, 'XocGoEytEBoSZtzkIDk6aqaNpvtVTcEHCDv6sdVt', 1, '2019-10-28 18:53:24', '2019-10-28 18:53:24'),
(225, 'Ittoo\\Carousel\\Models\\Logo', 'image', 'System\\Models\\File', '197', NULL, 'iFf4iJzqFsyqvNxheHmp2F92IrwPPRzs41Mbw3wG', 1, '2019-11-19 20:19:45', '2019-11-19 20:19:45'),
(229, 'Ittoo\\Carousel\\Models\\Logo', 'image', 'System\\Models\\File', '199', NULL, 'IkJ0MrozHieLvPVrrnoz7WtlxYydwR07otaNxmdu', 0, '2019-11-19 20:24:36', '2019-11-19 20:24:36'),
(230, 'Ittoo\\Carousel\\Models\\Logo', 'image', 'System\\Models\\File', '200', NULL, 'IkJ0MrozHieLvPVrrnoz7WtlxYydwR07otaNxmdu', 1, '2019-11-19 20:24:42', '2019-11-19 20:24:42'),
(237, 'Ittoo\\Carousel\\Models\\Slide', 'image', 'System\\Models\\File', '212', NULL, 'Smjs3azMxCeEzWJYj1X5detsmA5qQQOfvuChU2fu', 0, '2020-01-17 18:11:17', '2020-01-17 18:11:17'),
(238, 'Ittoo\\Carousel\\Models\\Slide', 'image', 'System\\Models\\File', '213', NULL, 'Smjs3azMxCeEzWJYj1X5detsmA5qQQOfvuChU2fu', 1, '2020-01-17 18:11:23', '2020-01-17 18:11:23'),
(239, 'RainLab\\Blog\\Models\\Post', 'featured_images', 'System\\Models\\File', '209', NULL, 'qrW8ROsmcFr1ThDmd9j8kS5f474NEChRrnkh73gp', 0, '2020-03-11 14:06:11', '2020-03-11 14:06:11'),
(240, 'RainLab\\Blog\\Models\\Post', 'featured_images', 'System\\Models\\File', '219', NULL, 'qrW8ROsmcFr1ThDmd9j8kS5f474NEChRrnkh73gp', 1, '2020-03-11 14:09:11', '2020-03-11 14:09:11'),
(241, 'Ittoo\\Carousel\\Models\\Slide', 'image', 'System\\Models\\File', '268', NULL, '2O9LTPuWOlsqovYJUFc0HPoRhhuuCAvCdrNKTStc', 1, '2020-12-21 22:16:04', '2020-12-21 22:16:04'),
(245, 'Ittoo\\Carousel\\Models\\Slide', 'image', 'System\\Models\\File', '102', NULL, 'X9PFVenEOWUzv8KLIl3CEKWe42QLYeLlVbOCtvOg', 0, '2020-12-28 17:34:45', '2020-12-28 17:34:45'),
(246, 'Ittoo\\Carousel\\Models\\Slide', 'image', 'System\\Models\\File', '271', NULL, 'X9PFVenEOWUzv8KLIl3CEKWe42QLYeLlVbOCtvOg', 1, '2020-12-28 17:34:49', '2020-12-28 17:34:49'),
(300, 'Ittoo\\Carousel\\Models\\Slide', 'image', 'System\\Models\\File', '327', NULL, 'BlzcgR8HJy7aKIKLpQhgOOUJ14qs9mN4xk7HRVqE', 0, '2021-01-04 23:10:02', '2021-01-04 23:10:02'),
(316, 'Ittoo\\Carousel\\Models\\Slide', 'image', 'System\\Models\\File', '181', NULL, 'VN29dAwbEcLRtZsFOZsob6CLI7gVz6j5oinouask', 0, '2021-01-22 22:28:21', '2021-01-22 22:28:21'),
(317, 'Ittoo\\Carousel\\Models\\Slide', 'image', 'System\\Models\\File', '181', NULL, 'vzizml8IPI92gFQEGZNP1uqMHcQBizXXtvK7knjF', 0, '2021-01-22 22:29:49', '2021-01-22 22:29:49'),
(379, 'Ittoo\\Carousel\\Models\\Slide', 'image', 'System\\Models\\File', '501', NULL, 'EcIeFxWvYPYjCZqgLK7KW7mVu35mePcMIywOynYm', 0, '2021-07-13 21:06:07', '2021-07-13 21:06:07'),
(390, 'Ittoo\\Carousel\\Models\\Slide', 'image', 'System\\Models\\File', '505', NULL, 'RSEDyLsnuybHLVTeVQ0A9glYjDaUlRsdaOLuYHNy', 0, '2021-07-15 15:03:25', '2021-07-15 15:03:25'),
(391, 'Ittoo\\Carousel\\Models\\Slide', 'image', 'System\\Models\\File', '507', NULL, 'RSEDyLsnuybHLVTeVQ0A9glYjDaUlRsdaOLuYHNy', 1, '2021-07-15 15:03:34', '2021-07-15 15:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ittoo_blog_post_tag`
--

CREATE TABLE `ittoo_blog_post_tag` (
  `tag_id` int UNSIGNED DEFAULT NULL,
  `post_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ittoo_blog_post_tag`
--

INSERT INTO `ittoo_blog_post_tag` (`tag_id`, `post_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 15),
(2, 16),
(2, 17),
(2, 20),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 15),
(3, 16),
(3, 17),
(3, 24),
(3, 25),
(3, 26),
(3, 27),
(3, 28),
(3, 29),
(3, 30),
(3, 31),
(3, 32),
(3, 33),
(3, 34),
(3, 35),
(3, 36),
(3, 37),
(3, 38),
(3, 39),
(3, 40),
(3, 41),
(3, 42),
(3, 43),
(3, 44),
(3, 45),
(3, 46),
(3, 47),
(3, 48),
(3, 49),
(3, 50),
(3, 51),
(3, 52),
(3, 53),
(3, 54);

-- --------------------------------------------------------

--
-- Table structure for table `ittoo_blog_tags`
--

CREATE TABLE `ittoo_blog_tags` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ittoo_blog_tags`
--

INSERT INTO `ittoo_blog_tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Canada', 'ca', NULL, NULL),
(2, 'U.S. and South America', 'us', NULL, NULL),
(3, 'International', '00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ittoo_carousel_carousels`
--

CREATE TABLE `ittoo_carousel_carousels` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_height` int UNSIGNED NOT NULL DEFAULT '600',
  `with_controls` tinyint(1) NOT NULL DEFAULT '0',
  `with_indicators` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ittoo_carousel_carousels`
--

INSERT INTO `ittoo_carousel_carousels` (`id`, `name`, `image_height`, `with_controls`, `with_indicators`, `created_at`, `updated_at`) VALUES
(1, 'Home Page Banner', 500, 1, 1, '2019-09-30 19:05:13', '2020-01-17 16:19:45'),
(3, 'Home Page Section', 600, 0, 0, '2019-10-03 13:14:57', '2019-10-03 13:14:57'),
(4, 'Network Components Sections', 600, 0, 0, '2019-10-03 16:48:17', '2019-10-05 23:27:20'),
(5, 'Test and Measurement Sections', 600, 0, 0, '2019-10-03 19:42:00', '2019-10-11 07:51:28'),
(6, 'Hero', 600, 0, 0, '2019-10-05 06:10:56', '2019-10-05 06:10:56'),
(7, 'Company Logos', 140, 0, 0, '2019-10-11 00:26:28', '2019-10-11 01:27:28'),
(8, 'Partner Logos', 50, 0, 0, '2019-10-12 07:42:10', '2019-10-12 07:42:47'),
(9, 'Acentury-branded Test Products', 600, 0, 0, '2020-03-20 00:06:59', '2020-03-20 00:07:18'),
(10, 'Test and Measurement EMITE Solutions', 600, 0, 0, '2020-04-29 21:31:46', '2020-04-29 21:31:46'),
(11, 'Test and Measurement Wireline', 600, 0, 0, '2020-06-20 18:49:16', '2020-06-20 18:49:16'),
(15, 'Three Column Homepage', 600, 0, 0, '2020-12-30 01:02:04', '2020-12-30 01:02:04'),
(16, 'LAMTA Alternate', 600, 0, 0, '2020-12-30 01:29:39', '2020-12-30 01:29:39'),
(17, 'LAMTA Header', 600, 0, 0, '2021-01-04 21:14:38', '2021-01-04 21:14:38'),
(18, 'Three Column LAMTA', 600, 0, 0, '2021-01-04 23:07:43', '2021-01-04 23:07:43'),
(19, 'Radio GIFs', 600, 0, 0, '2021-01-04 23:07:59', '2021-01-04 23:07:59'),
(20, 'Sign Up Page', 400, 0, 0, '2021-01-12 17:27:49', '2021-01-12 17:27:49'),
(21, 'Homepage Solutions', 600, 1, 1, '2021-02-16 14:31:30', '2021-02-16 14:33:11'),
(22, 'Full Width Divider', 300, 0, 0, '2021-02-16 17:13:58', '2021-02-16 17:13:58'),
(23, 'Acentury Solutions', 600, 0, 0, '2021-02-16 17:15:34', '2021-04-15 19:45:31'),
(24, 'Deployment Solutions', 600, 0, 0, '2021-02-16 17:31:06', '2021-02-16 17:31:06'),
(25, 'Network Components - 3-column', 200, 1, 1, '2021-03-28 02:53:12', '2021-03-28 02:53:12'),
(26, 'Fiber Cable Solutions', 600, 0, 0, '2021-03-28 21:55:45', '2021-03-28 21:55:45'),
(27, 'Fiber Cable Solutions Sections', 600, 0, 0, '2021-03-29 02:16:31', '2021-03-29 02:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `ittoo_carousel_logos`
--

CREATE TABLE `ittoo_carousel_logos` (
  `id` int UNSIGNED NOT NULL,
  `carousel_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ittoo_carousel_logos`
--

INSERT INTO `ittoo_carousel_logos` (`id`, `carousel_id`, `name`, `sort_order`, `created_at`, `updated_at`) VALUES
(49, 7, 'T-Mobile', 49, '2020-12-30 00:39:29', '2021-01-04 18:41:50'),
(50, 7, 'Bell', 50, '2020-12-30 00:39:51', '2021-01-04 18:42:08'),
(51, 7, 'Telus', 51, '2020-12-30 00:40:32', '2021-01-04 18:41:57'),
(52, 7, 'Rogers', 52, '2020-12-30 00:40:47', '2021-01-04 18:42:19'),
(53, 7, 'Videotron', 53, '2021-01-04 20:18:45', '2021-01-04 20:18:45'),
(54, 7, 'Shaw', 54, '2021-01-04 20:19:03', '2021-01-04 20:19:28'),
(55, 7, 'CCI', 55, '2021-01-04 20:19:22', '2021-01-04 20:19:22'),
(57, 7, 'Qualcomm', 57, '2021-01-04 20:20:53', '2021-01-04 20:20:53'),
(58, 7, 'Ericsson', 58, '2021-01-04 20:21:18', '2021-01-04 20:21:23'),
(59, 7, 'Microsoft', 59, '2021-01-04 20:21:40', '2021-01-04 20:21:40'),
(60, 7, 'EXFO', 60, '2021-01-04 20:27:17', '2021-01-04 20:27:17'),
(61, 7, 'Huawei', 61, '2021-01-04 20:30:06', '2021-01-04 20:30:06'),
(62, 7, 'Harris', 62, '2021-01-04 20:31:01', '2021-01-04 20:31:01'),
(63, 7, 'Kath', 63, '2021-01-04 20:31:18', '2021-01-04 20:31:18'),
(64, 7, 'Nokia', 64, '2021-01-04 20:31:34', '2021-01-04 20:31:34'),
(65, 7, 'flex', 65, '2021-01-04 20:31:45', '2021-01-04 20:31:45'),
(66, 7, 'Blackberry', 66, '2021-01-04 20:31:57', '2021-01-04 20:31:57'),
(68, 7, 'Nova Scotia', 68, '2021-01-04 20:32:34', '2021-01-04 20:32:34'),
(69, 7, 'Toronto', 69, '2021-01-04 20:32:50', '2021-01-04 20:32:50'),
(70, 7, 'Ryerson', 70, '2021-01-04 20:33:07', '2021-01-04 20:33:07'),
(71, 7, 'BC', 71, '2021-01-04 20:34:05', '2021-01-04 20:34:05'),
(72, 7, 'M', 72, '2021-01-04 20:43:07', '2021-01-04 20:43:07'),
(73, 7, 'Seneca', 73, '2021-01-04 20:43:18', '2021-01-04 20:43:18'),
(74, 7, 'UOIT', 74, '2021-01-04 20:43:59', '2021-01-04 20:43:59'),
(75, 7, 'C', 75, '2021-01-04 20:44:21', '2021-01-04 20:44:21'),
(77, 7, 'CBC', 77, '2021-01-04 20:48:59', '2021-01-04 20:48:59'),
(78, 7, 'UL', 78, '2021-01-04 20:49:16', '2021-01-04 20:49:16'),
(79, 7, 'Humber', 79, '2021-01-04 20:49:26', '2021-01-04 20:49:26'),
(80, 8, 'Microsoft', 80, '2021-01-05 17:32:51', '2021-01-05 17:32:51'),
(81, 8, 'Qualcomm', 81, '2021-01-05 17:33:27', '2021-01-05 17:33:41'),
(82, 8, 'Bell', 82, '2021-01-06 16:08:00', '2021-01-06 16:08:00'),
(83, 8, 'T-Mobile', 83, '2021-01-06 16:08:40', '2021-01-06 16:09:23'),
(84, 7, 'Rogers', 84, '2021-01-06 16:09:13', '2021-01-06 16:09:13'),
(85, 8, 'Telus', 85, '2021-01-06 16:09:40', '2021-01-06 16:12:03'),
(86, 8, 'Kathrein', 86, '2021-01-06 16:12:22', '2021-01-06 16:12:22'),
(87, 8, 'EXFO', 87, '2021-01-06 16:12:47', '2021-01-06 16:12:47'),
(88, 8, 'CCI', 88, '2021-01-06 16:13:08', '2021-01-06 16:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `ittoo_carousel_slides`
--

CREATE TABLE `ittoo_carousel_slides` (
  `id` int UNSIGNED NOT NULL,
  `carousel_id` int UNSIGNED DEFAULT NULL,
  `caption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `but_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `darken_bg` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `but_name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tagline` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bgcolor` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `image_carousel_id` int UNSIGNED DEFAULT NULL,
  `link_whole` tinyint(1) NOT NULL DEFAULT '0',
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `valign` int UNSIGNED NOT NULL DEFAULT '0',
  `vspacing` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ittoo_carousel_slides`
--

INSERT INTO `ittoo_carousel_slides` (`id`, `carousel_id`, `caption`, `but_link`, `description`, `darken_bg`, `sort_order`, `created_at`, `updated_at`, `but_name`, `tagline`, `bgcolor`, `enabled`, `image_carousel_id`, `link_whole`, `subtitle`, `valign`, `vspacing`) VALUES
(1, 1, 'Introducing ceramic waveguide technologies', 'https://acentury.co/ca/use-cases/b/why-ceramic-waveguide-filters/all', '<p>The demand for the ceramic waveguide filter is growing.</p>', 0, 5, '2019-09-30 19:05:49', '2021-03-28 22:27:00', 'Learn More', '', '#ffffff', 1, NULL, 0, '', 0, 0),
(2, 3, '', '/ca/network-components', '<h2 style=\" font-size: 35px; text-align: left;\"><img src=\"/storage/app/media/uploaded-files/Radiocomm%20Logo%20Black%20NA.png\" style=\"width: 285px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></h2>\r\n\r\n<h3 style=\" font-size: 28px; text-align: left; color: #404040;\">Extra-low PIM (-165dBc) components with wideband frequency coverage</h3>\r\n\r\n<p style=\"text-align: left;\">Ultra-wide frequency coverage for 5G Sub-6GHz / CBRS / LAA.</p>', 0, 8, '2019-10-03 13:56:35', '2021-04-12 23:16:37', 'Learn More', '', '#ffffff', 1, NULL, 0, '', 0, 0),
(3, 3, '', '/test-and-measurement-product', '<h2 style=\"max-width: 400px; text-align: left;\"><img src=\"/storage/app/media/uploaded-files/LAMTA%20Logo%20Gray%20NA.png\" style=\"width: 137px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></h2>\r\n\r\n<h2 style=\"max-width:400px; font-size:29px;\">Run a wireless lab remotely</h2>\r\n\r\n<p style=\"text-align: left;\">Set your radio connections once. Run RF test scenarios\r\n	<br>from home. Trusted by Tier 1 operators.</p>', 0, 7, '2019-10-03 13:57:38', '2021-03-28 22:27:00', 'Learn more', '', '#f8f9fa', 1, NULL, 0, '', 0, 0),
(4, 4, 'Heptaplexer Customer Use Case', '/ca/use-cases/b/customer-use-case-designing-heptaplexer-high-power-and-strict-pim-rejection-161dbc-requirements', '<p>&nbsp;There was also strict PIM rejection (-161dBc) and high-power requirements (350W).</p>', 0, 13, '2019-10-03 16:21:02', '2021-03-29 04:55:09', 'Learn More', 'A European customer required seven (7) European bands including the new Band 40 and 42 to be combined for a military application.', NULL, 1, NULL, 0, '', 0, 0),
(5, 4, 'Attenuator Customer Use Case', '/ca/use-cases/b/product-re-design-two-weeks-customer-success-story', '<p>How Radiocomm designed low PIM attentuators (-165dBc) so the lab could stack 48 attenuators in 3U shelves and operate safely without fans.</p>', 0, 9, '2019-10-03 17:09:45', '2021-03-28 22:27:00', 'Learn More', 'Tier 1 US Wireless Operator Requests Attenuators for their 5G Lab', NULL, 1, NULL, 0, '', 0, 0),
(9, 5, 'Test Systems and Chambers', '', '<p>Wireless, Cellular, WIOT MIMO and OTA Test system solutions. From large, walk-in test chambers to smaller benchtop test systems.</p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<p>Our Partners:</p>\r\n\r\n<p class=\"inline-logos\"><img src=\"https://www.acentury.co/storage/app/media/uploaded-files/Octoscope-logo-300x120.png\" class=\"fr-fic fr-dii\" style=\"width: 107px;\" data-result=\"success\"> <img src=\"https://www.acentury.co/storage/app/media/uploaded-files/Logo_EMITE.png\" class=\"fr-fic fr-dii\" data-result=\"success\" style=\"width: 120px;\"></p>', 0, 14, '2019-10-04 03:04:12', '2021-06-24 19:55:31', '', '', NULL, 1, NULL, 0, '', 0, 0),
(10, 5, 'Wireless Network Optimization Solutions', '', '<p>Drive testing. In-building testing. Benchmark and optimization testing across all the mobile technologies including 2G, 3G, 4G, LTE, LTE-A, PS-LTE, NB-IoT, eMTC.</p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<p><em>Our Partners:&nbsp; &nbsp;</em><img src=\"https://www.acentury.co/storage/app/media/uploaded-files/Accuver-logo.png\" style=\"width: 101px;\" class=\"fr-fic fr-dib fr-fil\" data-result=\"success\"></p>', 0, 16, '2019-10-04 03:05:26', '2021-06-24 19:55:50', '', '', NULL, 1, NULL, 0, '', 0, 0),
(11, 5, 'Wireline and Other Network Test Systems', 'https://acentury.co/ca/test-and-measurement-wireline', '<p>Economical test solutions for ethernet traffic generation and analysis, network emulation, and layer 1 test automation.<em>&nbsp;&nbsp;</em></p>\r\n\r\n<p class=\"inline-logos\"><img src=\"https://www.acentury.co/storage/app/media/uploaded-files/Xena-logo.png\" class=\"fr-fic fr-dii\" style=\"width: 107px;\" data-result=\"success\"> <img src=\"https://www.acentury.co/storage/app/media/uploaded-files/Lepton%20logo.png\" class=\"fr-fic fr-dii\" data-result=\"success\" style=\"width: 120px;\"></p>', 0, 17, '2019-10-04 03:05:58', '2021-06-24 19:56:31', 'Learn More', '', NULL, 1, NULL, 0, '', 0, 0),
(12, 5, 'Introducing Acentury LAMTA', 'https://acentury.co/ca/test-and-measurement-product', '<p>Test scenario management is hard. Enabling massive MIMO and carrier aggregation is harder. Introducing Acentury LAMTA, an end-to-end solution that uses a software-based platform for wireless 3G 4G 5G lab testing and lab resources management.</p>', 1, 18, '2019-10-04 03:06:37', '2021-05-18 15:45:19', 'Learn More', '', NULL, 1, NULL, 0, '', 0, 0),
(13, 6, 'Hot Off the Press', '', '', 1, 20, '2019-10-05 06:13:54', '2021-03-28 22:27:00', '', '', '', 1, NULL, 0, '', 0, 0),
(14, 6, 'Extra-Low PIM (-165dBc) Passive Network Components', '', '<p>Ultra-wide frequency coverage for 5G Sub-6GHz / CBRS / LAA.</p>\r\n\r\n<p>\r\n	<br>\r\n</p>', 1, 22, '2019-10-05 22:21:48', '2021-03-28 22:27:00', '', '', '#000000', 1, NULL, 0, '', 0, 0),
(15, 6, 'Acentury Test and Measurement Solutions', '', '<p>Experts in 5G, mmWave, and Wi-Fi 5/6 test and measurement. Backed by our experience working with global tier 1 carriers and web-scale tech companies.</p>', 1, 23, '2019-10-06 00:24:30', '2021-03-28 22:27:00', '', '', '', 1, NULL, 0, '', 0, 0),
(16, 6, 'Blog and Resources', '', '', 1, 23, '2019-10-06 00:34:38', '2021-03-30 20:21:54', '', '', NULL, 1, NULL, 0, '', 0, 0),
(17, 6, 'Contact Us', '', '', 1, 28, '2019-10-06 02:13:57', '2021-03-28 22:27:00', '', '', '', 1, NULL, 0, '', 0, 0),
(18, 6, 'Join a fast growing tech company.', '', '', 1, 30, '2019-10-06 10:10:55', '2021-03-28 22:27:00', '', '', '', 1, NULL, 0, '', 0, 0),
(19, 6, 'Meet the team', '', '<p>Backed by a team of world-class engineers with some of the finest technology talent in the RF industry.</p>', 1, 31, '2019-10-06 10:12:24', '2021-03-28 22:27:00', '', '', '', 1, NULL, 0, '', 0, 0),
(20, 6, 'Pushing wireless innovation globally.', '', '<p>Building best-in-class products and test measurement solutions for the wireless networking industry.</p>', 1, 32, '2019-10-10 07:01:13', '2021-03-28 22:27:00', '', '', '', 1, NULL, 0, '', 0, 0),
(22, 5, 'Test Systems and Chambers', '', '<p>Wireless, Cellular, WIOT MIMO and OTA Test system solutions. From large, walk-in test chambers to smaller benchtop test systems.</p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<p>Our Partners: &nbsp;<img src=\"www.https%3A//acentury.co/storage/app/media/uploaded-files/Logo_EMITE.png\" style=\"width: 121px;\" class=\"fr-fic fr-dib fr-fil\" data-result=\"success\"></p>', 0, 15, '2019-10-15 01:26:48', '2021-06-24 19:56:41', '', '', NULL, 1, NULL, 0, '', 0, 0),
(23, 6, 'Acentury LAMTA', '', '<p>Introducing an end-to-end solution that uses a software-based platform for wireless 3G 4G 5G lab testing and lab resources management.</p>\r\n\r\n<p>\r\n	<br>\r\n</p>', 1, 33, '2020-03-20 00:12:24', '2021-03-28 22:27:00', '', '', '', 1, NULL, 0, '', 0, 0),
(28, 9, 'A virtual RF managed switch between radios and test chambers', '', '<p>Radio management features include 5G / LTE / UMTS / EVDO / GSM / WiFi full range spectrum support, scalable radio connection management, customizable port labelling, resource status monitoring, multi-vendor support, and network auto-configuration.</p>\r\n\r\n<p>\r\n	<br>\r\n</p>', 0, 19, '2020-03-29 20:58:53', '2021-03-28 22:27:00', '', '', '', 1, NULL, 0, '', 0, 0),
(30, 9, 'Massive MIMO and carrier aggregation testing ready', '', '<p>Test measurement features include attenuation adjustment, handover, MIMO, tier roaming, carrier aggregation, intra-RAT / inter-RAT mobility, massive MIMO performance verification, and RESTful API support.</p>\r\n\r\n<p>\r\n	<br>\r\n</p>', 0, 37, '2020-03-30 00:55:03', '2021-03-28 22:27:00', '', '', '', 1, NULL, 0, '', 0, 0),
(31, 9, 'Resource management tools for wireless labs', '', '<p>Asset tracking and monitoring, project workflow management, and resource optimization features.</p>', 0, 38, '2020-03-30 01:08:07', '2021-03-28 22:27:00', '', '', '', 1, NULL, 0, '', 0, 0),
(33, 10, 'EMITE Test and Measurement Solutions', '', '<p>EMITE has sold RF chambers to universities, major wireless operators, major device vendors, and wireless test labs around the world.</p>\r\n\r\n<p>&nbsp;</p>', 0, 39, '2020-04-29 21:38:00', '2021-03-28 22:27:00', '', '', '', 1, NULL, 0, '', 0, 0),
(37, 6, 'Wireline and Other Network Test Solutions', '', '<p>Economical test solutions for ethernet traffic generation and analysis, network emulation, and layer 1 test automation.</p>', 1, 40, '2020-06-21 02:37:25', '2021-03-28 22:27:00', '', '', '', 1, NULL, 0, '', 0, 0),
(38, 11, 'Network Impairment Emulator', 'https://acentury.co/ca/use-cases/b/chimera-xena-networks/all', '<p>An easy-to-use and cost-effective solution for emulating impairments (e.g. packet manipulation, latency, jitter, bandwidth control and shaping) to traffic between DUTs in the lab.</p>\r\n\r\n<p><img src=\"https://acentury.co/storage/app/media/uploaded-files/Xena-logo.png\" style=\"width: 93px;\" class=\"fr-fic fr-dib fr-fil\"></p>', 0, 41, '2020-06-21 21:49:28', '2021-03-28 22:27:00', 'Learn More', '', '#ffffff', 1, NULL, 0, '', 0, 0),
(39, 11, 'Layer 1 Switch Applications', 'https://acentury.co/ca/use-cases/b/coldfusion-lepton-systems/all', '<p>Automate test scenarios with remote access and software provisioning. Simulate fiber impairment and cable pulls. Seamless copper to fiber connections. Multicast mapping. And much, much more.&nbsp;</p>\r\n\r\n<p><img src=\"https://acentury.co/storage/app/media/uploaded-files/Lepton%20logo.png\" style=\"width: 90px;\" class=\"fr-fic fr-dib fr-fil\"></p>', 0, 44, '2020-06-22 01:36:46', '2021-03-28 22:27:00', 'Learn More', '', '', 1, NULL, 0, '', 0, 0),
(40, 6, 'EMITE Solutions', '', '', 1, 45, '2020-06-26 19:30:40', '2021-03-28 22:27:00', '', '', '', 1, NULL, 0, '', 0, 0),
(42, 11, 'Stateless Traffic Generation and Analysis Platform', 'https://acentury.co/ca/use-cases/b/valkyrie-xena-networks/all', '<p>A full-featured stateless traffic generator and analysis platform used to configure and generate Layer 2-3 Ethernet traffic - at all speeds up to 400GE - and analyze how network devices and services perform in response.</p>\r\n\r\n<p><img src=\"https://acentury.co/storage/app/media/uploaded-files/Xena-logo.png\" style=\"width: 99px;\" class=\"fr-fic fr-dib fr-fil\"></p>', 0, 42, '2020-07-11 00:55:05', '2021-03-28 22:27:00', 'Learn More', '', '', 1, NULL, 0, '', 0, 0),
(43, 11, 'Stateful Ethernet Traffic Generation', 'https://acentury.co/ca/use-cases/b/vulcan-xena-networks/all', '<p>Generate stateful traffic over Ethernet and analyze how firewalls, wireline &amp; wireless networks, NICs, packet brokers, NAT routers, and bandwidth-shapers perform in a wide range of real-world scenarios.</p>\r\n\r\n<p><img src=\"https://acentury.co/storage/app/media/uploaded-files/Xena-logo.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib fr-fil\"></p>', 0, 43, '2020-07-13 14:54:57', '2021-03-28 22:27:00', 'Learn More', '', '', 1, NULL, 0, '', 0, 0),
(44, 6, 'Join Our Newsletter', '', '<p>Get the latest and greatest from our blog straight to you inbox.</p>', 1, 46, '2020-09-25 11:09:01', '2021-03-28 22:27:00', '', '', '', 1, NULL, 0, '', 0, 0),
(45, 1, 'Acentury Inc. Named One of Canada’s Top Growing Companies 2020 by The Globe and Mail', 'https://acentury.co/ca/news/b/top-growing-2020', '', 0, 2, '2020-10-13 17:17:36', '2021-03-28 22:27:00', 'Learn More', '', '#ffffff', 1, NULL, 0, '', 0, 0),
(46, 17, '', 'https://acentury.co/ca/lamta/signup', '<h2 style=\"max-width: 500px;font-size: 40px; color:white; margin:0 auto;position:relative;top:-30px;\"><img src=\"/storage/app/media/uploaded-files/LAMTA%20Logo%20White.png\" style=\"width: 200px;\" class=\"fr-fic fr-dib\" data-result=\"success\"></h2>\r\n\r\n<h2 style=\"max-width: 800px;font-size: 40px; color:white; margin:0 auto;\">Operating a wireless lab just got a lot easier</h2>\r\n\r\n<p style=\"color:white; font-size: 20px; max-width: 700px; margin:0 auto;\"><strong>Acentury LAMTA</strong> is the end-to-end solution revolutionizing wireless 3G 4G 5G lab testing and lab resources management</p>', 1, 47, '2020-11-24 15:08:10', '2021-03-28 22:27:00', 'Get Started', '', NULL, 1, NULL, 0, '', 0, 0),
(47, 1, 'Product Re-Design in Two Weeks: A Customer Success Story', 'https://acentury.co/ca/use-cases/b/product-re-design-two-weeks-customer-success-story/all', '<p>How we strove to exceed customer expectations</p>', 0, 48, '2020-12-02 19:56:13', '2021-03-28 22:27:00', 'What We Did', '', '#ffffff', 1, NULL, 0, '', 0, 0),
(48, NULL, 'Demo - Alt. Section with rotor', '/contact-us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet feugiat odio. Duis porttitor viverra viverra. Ut non suscipit nisi. Nulla sodales posuere lectus sed tempus. Aenean dapibus tellus sit amet ante tempus, sed maximus risus mattis. Sed efficitur ex enim, a blandit libero egestas et. Proin sagittis feugiat neque, id pharetra turpis. Ut ex erat, porta in posuere a, condimentum eu nunc. Curabitur pharetra posuere orci. In viverra vestibulum nisl, non lobortis augue blandit ac.</p>', 0, 50, '2020-12-22 11:09:01', '2021-03-28 22:27:00', 'CTA Button', 'This is a tagline', NULL, 1, 4, 0, '', 0, 0),
(50, 15, '', 'https://acentury.co/ca/test-and-measurement-product', '<div style=\"padding-bottom: 25px;\">\r\n\r\n	<h2 style=\"font-size: 25px; text-align: center; color: #2a57b0;\">Remote Wireless\r\n		<br>Lab Solutions</h2>\r\n</div>', 0, 51, '2020-12-30 01:02:44', '2021-04-27 03:06:51', '', '', '#ffffff', 1, NULL, 1, '', 0, 0),
(51, 15, '', '/test-and-measurement-wireline', '<h2 style=\"font-size: 25px; color: rgb(42, 87, 176); text-align: center;\">Wireline Test Measurement Solutions</h2>', 0, 52, '2020-12-30 01:10:52', '2021-03-28 22:27:00', '', '', '#ffffff', 1, NULL, 1, '', 0, 0),
(52, 15, '', '/test-and-measurement', '<h2 style=\"font-size: 25px; color: rgb(42, 87, 176); text-align: center;\">Wireless Test Measurement Solutions</h2>', 0, 53, '2020-12-30 01:11:41', '2021-03-28 22:27:00', '', '', '#ffffff', 1, NULL, 1, '', 0, 0),
(53, 16, 'Radio Management Features', '', '<p>✓ Scalable Radio Connection Management for 5G/LTE/UMTS/Wi-Fi</p>\r\n\r\n<p>✓ Flexible Switch Connections between Radios and Test Chambers</p>\r\n\r\n<p>✓ Real-time Radio Status Monitoring</p>', 0, 54, '2020-12-30 01:30:40', '2021-07-13 20:59:52', '', '', '#f9f9f9', 1, NULL, 0, 'SUPPORT', 0, 0),
(54, 16, 'MIMO Handover', '', '<p>✓ Make remote testing feasible and reliable</p>\r\n\r\n<p>✓ One-click to setup repeatable MIMO Handover test environments</p>', 0, 55, '2020-12-30 01:31:07', '2021-03-28 22:27:00', '', '', '#ffffff', 1, NULL, 0, 'BENEFITS', 0, 0),
(55, 16, 'Automation', '', '<p>✓ Faster time-to-market by automating testing processes with RESTful API</p>\r\n\r\n<p>✓ Error-free log analysis by policy-based machine learning techniques</p>', 0, 56, '2020-12-30 01:31:32', '2021-03-28 22:27:00', '', '', '#ffffff', 1, NULL, 0, 'BENEFITS', 2, 0),
(56, 16, 'Resource Management', '', '<p>✓ Resolve resource conflict by providing accurate and transparent availability of all resources</p>\r\n\r\n<p>✓ Improve team collaboration by streamlining project workflows in one central platform</p>\r\n\r\n<p>✓ Consolidate test plan, test case, test result for knowledge sharing</p>\r\n\r\n<p>✓ Facilitate project planning, tracking and budgeting with effortless time tracking, dynamic reporting</p>', 0, 58, '2020-12-30 01:32:11', '2021-03-28 22:27:00', '', '', '#ffffff', 1, NULL, 0, 'BENEFITS', 0, 0),
(58, 18, 'Radio Management', '', '<p style=\"text-align: center;\">Save lab administrators from massive cable connections between radios and test chambers</p>', 0, 60, '2021-01-04 23:08:57', '2021-03-28 22:27:00', '', '', NULL, 1, NULL, 0, '', 0, 0),
(60, 18, 'Test Measurement', '', '<p style=\"text-align: center;\">Enable engineers to test in virtual labs (WFH), empower automation</p>', 0, 61, '2021-01-04 23:09:45', '2021-03-28 22:27:00', '', '', NULL, 1, NULL, 0, '', 0, 0),
(61, 18, 'Resource Management', '', '<p style=\"text-align: center;\">Track, manage all lab resources, to increase utilization and boost productivity</p>', 0, 62, '2021-01-04 23:10:28', '2021-03-28 22:27:00', '', '', NULL, 1, NULL, 0, '', 0, 0),
(62, 20, '', '', '<p style=\"text-align: center;\"><img src=\"/storage/app/media/uploaded-files/lamta.png\" style=\"width: 524px; text-align: center; margin: auto;\" class=\"fr-fic fr-dib\" data-result=\"success\"></p>', 0, 63, '2021-01-12 17:28:33', '2021-03-28 22:27:00', '', '', NULL, 1, NULL, 0, '', 0, 0),
(63, 21, '', '/test-and-measurement', '<div style=\"color:white;\">\r\n\r\n	<h1 style=\"color:white;\">Lab Solutions</h1>\r\n\r\n	<p>Experts in 5G, mmWave, and Wi-Fi 5/6 test and measurement. Backed by our experience working with global tier 1 carriers.</p>\r\n</div>', 1, 64, '2021-02-01 18:06:19', '2021-04-15 19:55:05', 'Explore Solutions', '', NULL, 1, NULL, 0, '', 0, 0),
(64, 21, '', '/solutions', '<div style=\"color:white;\">\r\n\r\n	<h1 style=\"color:white;\">5G Mobility Deployment Solutions</h1>\r\n\r\n	<p>Automate <strong>radio access network</strong> deployment with cloud-native solutions</p>\r\n</div>', 1, 65, '2021-02-16 14:27:09', '2021-04-12 21:31:16', 'Explore Solutions', '', '#000000', 1, NULL, 0, '', 2, 1),
(65, 6, 'Acentury Solutions', '', '', 1, 66, '2021-02-16 17:06:58', '2021-03-28 22:27:00', '', '', NULL, 1, NULL, 0, '', 0, 0),
(66, 6, '', '', '<h1>Acentury Solutions</h1>', 1, 67, '2021-02-16 17:09:06', '2021-04-15 19:48:33', '', '', '#000000', 1, NULL, 0, '', 0, 0),
(67, 23, '', '', '<div style=\"padding:15px;\">\r\n\r\n	<h4 style=\"font size:20;\"><img src=\"/storage/app/media/uploaded-files/LAMTA%20Logo%20Black%20NA.png\" style=\"width: 122px;\" class=\"fr-fic fr-dib fr-fil\" data-result=\"success\"></h4>\r\n\r\n	<p>Acentury LAMTA is the end-to-end solution revolutionizing wireless 3G 4G 5G lab testing and lab resources management. Operate your virtual lab wherever you are.</p>\r\n\r\n	<p><u><a href=\"https://acentury.co/ca/test-and-measurement-product\">Learn More -&gt;</a></u></p>\r\n</div>', 0, 68, '2021-02-16 17:15:58', '2021-05-04 17:23:35', '', '', '#ffffff', 1, NULL, 0, '', 0, 0),
(68, 23, '', '', '<div style=\"padding:15px;\">\r\n\r\n	<h4 style=\"font size:20;\">Wireline Solutions</h4>\r\n\r\n	<p>Economical test solutions for ethernet traffic generation and analysis, network emulation, and layer 1 test automation. </p>\r\n\r\n	<p><u><a href=\"https://acentury.co/ca/test-and-measurement-wireline\">Learn More -&gt;</a></u></p>\r\n</div>', 0, 69, '2021-02-16 17:16:12', '2021-03-28 22:27:00', '', '', '#ffffff', 1, NULL, 0, '', 0, 0),
(69, 23, '', '', '<div style=\"padding:15px;\">\r\n\r\n	<h4 style=\"font size:20;\">Wireless Solutions</h4>\r\n\r\n	<p>Test systems and chambers, wireless network optimization solutions, and software-based lab testing platforms.</p>\r\n\r\n	<p><u><a href=\"https://acentury.co/ca/test-and-measurement\">Learn More -&gt;</a></u></p>\r\n</div>', 0, 70, '2021-02-16 17:16:47', '2021-03-28 22:27:00', '', '', '#ffffff', 1, NULL, 0, '', 0, 0),
(70, 6, '', '', '<h1>5G Mobility Deployment Solutions</h1>', 1, 71, '2021-02-16 17:30:51', '2021-03-28 22:27:00', '', '', NULL, 1, NULL, 0, '', 0, 0),
(71, 24, '', '', '<div style=\"padding:15px;\">\r\n\r\n	<h4 style=\"font size:20;\"><img src=\"/storage/app/media/uploaded-files/OMERA%20Logo%20Black%20NA.png\" style=\"width: 132px;\" class=\"fr-fic fr-dib fr-fil\" data-result=\"success\"></h4>\r\n\r\n	<p>Coming soon.</p>\r\n</div>', 0, 74, '2021-02-16 17:31:33', '2021-03-28 22:27:00', '', '', '#ffffff', 1, NULL, 0, '', 0, 0),
(74, 23, '', '', '<div style=\"padding:15px;\">\r\n\r\n	<h4 style=\"font size:20;\">Network Components</h4>\r\n\r\n	<p>Extra-low PIM (-165dBc) passive components with ultra-wide coverage for 5G Sub-6GHz / CBRS / LAA. Fast turnaround times for customized solutions.</p>\r\n\r\n	<p><u><a href=\"https://acentury.co/ca/test-and-measurement-wireline\">Learn More -&gt;</a></u></p>\r\n</div>', 0, 75, '2021-03-01 18:12:14', '2021-03-29 02:36:33', '', '', NULL, 1, NULL, 0, '', 0, 0),
(75, 25, 'Extra low-PIM (-165dBc) components', '', '<p>Industry-leading low-PIM performance for outdoor, indoor and 5G applications.</p>', 0, 76, '2021-03-28 02:54:12', '2021-03-28 22:27:00', '', '', NULL, 1, NULL, 0, '', 2, 0),
(76, 25, '5G Sub-6GHz frequency coverage', '', '<p>Ultra-wide frequency coverage. 4G to 5G Sub-6GHz / CBRS / LAA. &nbsp;</p>', 0, 77, '2021-03-28 03:09:32', '2021-03-28 22:27:00', '', '', NULL, 1, NULL, 0, '', 0, 0),
(77, 25, 'Fast customization up to 60GHz', '', '<p>Specifications &nbsp;within 3-5 business days. Samples available in 6weeks.</p>', 0, 78, '2021-03-28 03:15:09', '2021-03-28 22:27:00', '', '', NULL, 1, NULL, 0, '', 0, 0),
(78, 25, 'Not a single field return since our launch', '', '<p>Highly reliable products with zero field returns since our launch.</p>', 0, 79, '2021-03-28 03:31:43', '2021-03-28 22:27:00', '', '', NULL, 1, NULL, 0, '', 0, 0),
(79, 25, 'Supplying Tier 1 mobile network operators', '', '<p>Trusted by North American telecom operators.</p>', 0, 80, '2021-03-28 03:38:06', '2021-03-28 22:27:00', '', '', NULL, 1, NULL, 0, '', 0, 0),
(80, 25, 'We stand by our product reliability', '', '<p>1-year warranty + mfg test report for each shipped component.</p>', 0, 81, '2021-03-28 03:40:33', '2021-03-28 22:27:00', '', '', NULL, 1, NULL, 0, '', 0, 0),
(82, 6, 'Fiber Cable Solutions', '', '', 1, 82, '2021-03-28 22:38:00', '2021-03-28 22:38:00', '', '', NULL, 1, NULL, 0, '', 0, 0),
(83, 26, '', '', '<p><img src=\"/storage/app/media/uploaded-files/b.png\" style=\"width: 90px;\" class=\"fr-fic fr-dib fr-fil\" data-result=\"success\"></p>\r\n\r\n<h5><strong>Full Line of Solutions</strong></h5>\r\n\r\n<p>Specialty fibers and integrated solutions including Airblown micro-duct micro-cables.</p>', 0, 83, '2021-03-29 02:00:30', '2021-04-06 17:52:19', '', '', NULL, 1, NULL, 0, '', 0, 0),
(84, 26, '', '', '<h5><img src=\"/storage/app/media/uploaded-files/e.png\" style=\"width: 90px;\" class=\"fr-fic fr-dib fr-fil\" data-result=\"success\"></h5>\r\n\r\n<h5><strong>Fast Service and Delivery</strong></h5>\r\n\r\n<p>Fast quote turnaround times and even faster shipment delivery.</p>', 0, 84, '2021-03-29 02:03:04', '2021-04-06 17:51:47', '', '', NULL, 1, NULL, 0, '', 0, 0),
(85, 26, '', '', '<h5><img src=\"/storage/app/media/uploaded-files/d.png\" style=\"width: 90px;\" class=\"fr-fic fr-dib fr-fil\" data-result=\"success\"></h5>\r\n\r\n<h5><strong>5G Ready Solutions</strong></h5>\r\n\r\n<p>Comprehensive solutions for 5G and fixed 5G network systems.</p>', 0, 85, '2021-03-29 02:07:43', '2021-04-06 17:53:02', '', '', NULL, 1, NULL, 0, '', 0, 0),
(86, 26, '', '', '<h5><img src=\"/storage/app/media/uploaded-files/a.png\" style=\"width: 90px;\" class=\"fr-fic fr-dib fr-fil\" data-result=\"success\"></h5>\r\n\r\n<h5><strong>World-Leading Ultra-Low Loss Properties</strong></h5>\r\n\r\n<p>World-leading ultra-low loss and large effective area optical fiber.</p>', 0, 86, '2021-03-29 02:08:49', '2021-04-06 17:53:45', '', '', NULL, 1, NULL, 0, '', 0, 0),
(87, 26, '', '', '<h5><img src=\"/storage/app/media/uploaded-files/c.png\" style=\"width: 90px;\" class=\"fr-fic fr-dib fr-fil\" data-result=\"success\"></h5>\r\n\r\n<h5><strong>Factory Test Results Provided</strong></h5>\r\n\r\n<p>Continuous R&amp;D with factory test results provided with each product shipment.</p>', 0, 87, '2021-03-29 02:10:38', '2021-04-06 17:54:43', '', '', NULL, 1, NULL, 0, '', 0, 0),
(88, 26, '', '', '<h5><img src=\"/storage/app/media/uploaded-files/f.png\" style=\"width: 90px;\" class=\"fr-fic fr-dib fr-fil\" data-result=\"success\"></h5>\r\n\r\n<h5><strong>Durable, High-Quality Products</strong></h5>\r\n\r\n<p>High-quality construction with flexible options and priced competitively for your needs.</p>', 0, 88, '2021-03-29 02:11:40', '2021-04-06 17:55:34', '', '', NULL, 1, NULL, 0, '', 0, 0),
(89, 27, 'FTTH Customer Use Case', 'https://radiocomm.co/news/how-we-supplied-and-shipped-200km-fiber', '<p>How Acentury Supplied 192km of Fiber for A Major Telco in Just 3 Weeks During the COVID Holiday Season.</p>', 0, 89, '2021-03-29 02:19:07', '2021-03-29 02:23:00', 'Learn More', '', NULL, 1, NULL, 0, '', 0, 0),
(90, 23, '', '', '<div style=\"padding:15px;\">\r\n\r\n	<h4 style=\"font size:20;\">Fiber Cable Solutions</h4>\r\n\r\n	<p>A full line of fiber cable solutions including submarine cables, land trunk lines, applications for metro area networks, data centers, and FTTH.</p>\r\n\r\n	<p><u><a href=\"https://acentury.co/ca/fiber-cable-solutions\">Learn More -&gt;</a></u></p>\r\n</div>\r\n\r\n<p>\r\n	<br>\r\n</p>', 0, 90, '2021-03-29 02:27:55', '2021-03-29 02:36:58', '', '', NULL, 1, NULL, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ittoo_carousel_slide_tag`
--

CREATE TABLE `ittoo_carousel_slide_tag` (
  `tag_id` int UNSIGNED DEFAULT NULL,
  `slide_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ittoo_carousel_slide_tag`
--

INSERT INTO `ittoo_carousel_slide_tag` (`tag_id`, `slide_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 14),
(1, 23),
(1, 28),
(1, 30),
(1, 31),
(1, 37),
(1, 38),
(1, 39),
(1, 42),
(1, 43),
(1, 45),
(1, 46),
(1, 47),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 58),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 75),
(1, 76),
(1, 77),
(1, 79),
(1, 80),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 90),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 12),
(2, 14),
(2, 22),
(2, 23),
(2, 28),
(2, 30),
(2, 31),
(2, 33),
(2, 39),
(2, 45),
(2, 46),
(2, 47),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 58),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 65),
(2, 66),
(2, 67),
(2, 68),
(2, 69),
(2, 70),
(2, 71),
(2, 75),
(2, 76),
(2, 77),
(2, 79),
(2, 80),
(2, 82),
(2, 83),
(2, 84),
(2, 85),
(2, 86),
(2, 87),
(2, 88),
(2, 90),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 9),
(3, 11),
(3, 12),
(3, 14),
(3, 23),
(3, 28),
(3, 30),
(3, 31),
(3, 39),
(3, 45),
(3, 46),
(3, 47),
(3, 50),
(3, 51),
(3, 52),
(3, 53),
(3, 54),
(3, 55),
(3, 56),
(3, 58),
(3, 60),
(3, 61),
(3, 62),
(3, 63),
(3, 64),
(3, 65),
(3, 66),
(3, 67),
(3, 68),
(3, 69),
(3, 70),
(3, 71),
(3, 75),
(3, 76),
(3, 77),
(3, 79),
(3, 80),
(3, 82),
(3, 83),
(3, 84),
(3, 85),
(3, 86),
(3, 87),
(3, 88),
(3, 90);

-- --------------------------------------------------------

--
-- Table structure for table `ittoo_team`
--

CREATE TABLE `ittoo_team` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ittoo_team`
--

INSERT INTO `ittoo_team` (`id`, `name`, `title`, `sort_order`, `created_at`, `updated_at`) VALUES
(4, 'Fan Zhang', 'VP, Networking Components', 5, '2019-10-09 11:13:24', '2019-12-10 17:10:11'),
(5, 'Frank Ye', 'Chief Executive Officer', 2, '2019-10-09 11:13:34', '2019-10-18 19:07:19'),
(7, 'Leo Lin', 'VP, Technical Support and ITM', 3, '2019-10-09 08:38:58', '2019-10-18 19:07:19'),
(9, 'Mark Taub', 'Senior Account Manager, T&M', 11, '2019-10-09 08:39:30', '2019-10-18 19:07:19'),
(10, 'Mihail Pripekov', 'Support Engineer', 17, '2019-10-09 08:39:55', '2019-10-18 19:07:19'),
(12, 'Scott Cho', 'Support Engineer', 8, '2019-10-09 08:40:26', '2019-10-18 19:07:19'),
(15, 'John Bell', 'Director, Business Development', 16, '2019-10-10 09:38:21', '2019-10-18 19:07:19'),
(16, 'David Shin', 'Marketing', 19, '2019-10-17 21:44:22', '2019-10-18 19:07:19'),
(17, 'Rubianto Satrio', 'VP of Sales, U.S.A', 7, '2019-10-17 21:45:44', '2019-10-18 19:07:19'),
(19, 'Adam Xie', 'Product Manager', 12, '2019-10-17 22:30:39', '2019-10-18 19:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `ittoo_testimonials`
--

CREATE TABLE `ittoo_testimonials` (
  `id` int UNSIGNED NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `martin_forms_records`
--

CREATE TABLE `martin_forms_records` (
  `id` int UNSIGNED NOT NULL,
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '(Empty)',
  `form_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(10, '2014_10_01_000010_Db_Jobs', 1),
(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
(13, '2014_10_01_000013_Db_System_Sessions', 1),
(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
(16, '2015_10_01_000016_Db_Cache', 1),
(17, '2015_10_01_000017_Db_System_Revisions', 1),
(18, '2015_10_01_000018_Db_FailedJobs', 1),
(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(25, '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', 1),
(26, '2013_10_01_000001_Db_Backend_Users', 2),
(27, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(28, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(29, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(30, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(31, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(32, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
(33, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
(34, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
(35, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(36, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
(37, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(38, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
(39, '2017_10_01_000003_Db_Cms_Theme_Logs', 3),
(40, '2018_11_01_000001_Db_Cms_Theme_Templates', 3),
(41, '2021_10_01_000025_Db_Add_Pivot_Data_To_Deferred_Bindings', 4);

-- --------------------------------------------------------

--
-- Table structure for table `offline_gdpr_cookies`
--

CREATE TABLE `offline_gdpr_cookies` (
  `id` int UNSIGNED NOT NULL,
  `sort_order` int UNSIGNED DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `initial_status` tinyint(1) NOT NULL DEFAULT '1',
  `levels` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `default_level` int UNSIGNED NOT NULL DEFAULT '0',
  `cookie_group_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact_details_dpo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_links_dpo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_gdpr_cookies`
--

INSERT INTO `offline_gdpr_cookies` (`id`, `sort_order`, `code`, `name`, `description`, `initial_status`, `levels`, `default_level`, `cookie_group_id`, `created_at`, `updated_at`, `contact_details_dpo`, `contact_links_dpo`, `provider`, `item_details`) VALUES
(1, 1, 'acentury', 'Acentury', '<p>&lt;p&gt;We use cookies to personalize content and to analyze our traffic.&lt;/p&gt;</p>', 1, '[]', 0, 1, '2019-10-07 14:34:04', '2019-10-07 14:34:04', '<p>&lt;a href=\"/contact\"&gt;Contact Us&lt;/a&gt;</p>', '[]', 'acentury.com', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `offline_gdpr_cookie_groups`
--

CREATE TABLE `offline_gdpr_cookie_groups` (
  `id` int UNSIGNED NOT NULL,
  `sort_order` int UNSIGNED DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_gdpr_cookie_groups`
--

INSERT INTO `offline_gdpr_cookie_groups` (`id`, `sort_order`, `slug`, `name`, `description`, `required`, `created_at`, `updated_at`) VALUES
(1, 1, 'general-consent', 'General consent', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p>By accepting our cookies, you consent to the use of cookies in accordance with our <a href=\"/cookies-policy\">cookies policy</a>.</p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<p>\r\n	<br>\r\n</p>', 1, '2019-10-07 14:31:56', '2019-10-07 14:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `offline_gdpr_logs`
--

CREATE TABLE `offline_gdpr_logs` (
  `id` int UNSIGNED NOT NULL,
  `session_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `decision` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `useragent` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_categories`
--

CREATE TABLE `rainlab_blog_categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `nest_left` int DEFAULT NULL,
  `nest_right` int DEFAULT NULL,
  `nest_depth` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_blog_categories`
--

INSERT INTO `rainlab_blog_categories` (`id`, `name`, `slug`, `code`, `description`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', NULL, NULL, NULL, 1, 2, 0, '2019-10-03 13:05:44', '2019-10-03 13:05:44'),
(2, 'News', 'news', NULL, '', NULL, 3, 4, 0, '2019-10-04 04:13:00', '2019-10-04 04:13:00'),
(3, 'Products Update', 'product-update', NULL, '', NULL, 5, 6, 0, '2019-10-04 04:13:12', '2019-10-06 11:00:11'),
(4, 'Use Case', 'use-case', NULL, '', NULL, 7, 8, 0, '2019-10-04 04:13:23', '2019-10-04 04:13:23'),
(5, 'Educational', 'educational', NULL, '', NULL, 9, 10, 0, '2019-10-04 04:13:34', '2019-10-06 01:48:03'),
(6, 'Partner News', 'partner', NULL, '', NULL, 11, 12, 0, '2019-10-08 21:36:50', '2019-10-09 10:25:49'),
(7, 'Product Datasheets', 'product-datasheets', NULL, 'The following technical resources will consolidate all the product data sheets in one single repository.', NULL, 13, 14, 0, '2020-06-21 20:54:27', '2020-06-21 20:54:27'),
(8, 'Radiocomm', 'radiocomm', NULL, '', NULL, 15, 16, 0, '2021-05-20 17:50:39', '2021-05-20 17:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts`
--

CREATE TABLE `rainlab_blog_posts` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_html` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `featured` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `metadata`, `featured`) VALUES
(1, NULL, 'Custom Designing a Low PIM 18-band POI combiner', 'tier1-operator', 'One of the differentiating services Acentury Radiocomm offers is the ability to help design and customize network components with fast lead times. After digesting the customer requirements and challenges, our team designed an integrated 18:1 POI combiner.', '**Tier 1 Operator Case Study:** Custom Designing a Low PIM 18-band Point-of-Interface (POI) combiner\r\n\r\n**About the Customer**\r\n<br>\r\nThe Tier 1 Operator we worked with is one of the largest wireless network operators in North America. They provide wireless voice and data services throughout the country and is a multi-billion dollar company listed on the NASDAQ.\r\n\r\n**The Challenge**\r\n<br>\r\nOur client was looking for a solution to combine 18 bands from all operators in the country (including the CBRS bands); this design would introduce a number of challenges:\r\n\r\n* Introducing multiple components and cables increases the installation cost and complexity.\r\n* The complicated structure and extra interconnections increases insertion loss \r\n* Additional components would increase the risk of Passive Intermodulation (PIM) and VSWR performance issues\r\n* The form factor would require more space\r\n\r\n**The Solution**\r\n<br>\r\nOne of the differentiating services Acentury Radiocomm offers is the ability to help design and customize network components with fast lead times. After digesting the customer requirements and challenges, our team designed an integrated 18:1 POI combiner.\r\n\r\n\r\n**Benefits**\r\n<br>\r\nA single, custom-designed component for 18 bands offers some immediate benefits:\r\n* Improves insertion loss performance\r\n* Eliminates inter connection challenges and reduces the size footprint (70% of the original design proposal)\r\n* Simplifies installation complexities\r\n* A single, compact design significantly de-risks potential VSWR and PIM performance issues', '<p><strong>Tier 1 Operator Case Study:</strong> Custom Designing a Low PIM 18-band Point-of-Interface (POI) combiner</p>\n<p><strong>About the Customer</strong>\n<br>\nThe Tier 1 Operator we worked with is one of the largest wireless network operators in North America. They provide wireless voice and data services throughout the country and is a multi-billion dollar company listed on the NASDAQ.</p>\n<p><strong>The Challenge</strong>\n<br>\nOur client was looking for a solution to combine 18 bands from all operators in the country (including the CBRS bands); this design would introduce a number of challenges:</p>\n<ul>\n<li>Introducing multiple components and cables increases the installation cost and complexity.</li>\n<li>The complicated structure and extra interconnections increases insertion loss </li>\n<li>Additional components would increase the risk of Passive Intermodulation (PIM) and VSWR performance issues</li>\n<li>The form factor would require more space</li>\n</ul>\n<p><strong>The Solution</strong>\n<br>\nOne of the differentiating services Acentury Radiocomm offers is the ability to help design and customize network components with fast lead times. After digesting the customer requirements and challenges, our team designed an integrated 18:1 POI combiner.</p>\n<p><strong>Benefits</strong>\n<br>\nA single, custom-designed component for 18 bands offers some immediate benefits:</p>\n<ul>\n<li>Improves insertion loss performance</li>\n<li>Eliminates inter connection challenges and reduces the size footprint (70% of the original design proposal)</li>\n<li>Simplifies installation complexities</li>\n<li>A single, compact design significantly de-risks potential VSWR and PIM performance issues</li>\n</ul>', '2019-10-03 13:05:44', 1, '2019-10-03 13:05:44', '2019-11-27 21:28:59', NULL, 0),
(2, 1, 'Passive Intermodulation (PIM)', 'passive-intermodulation-pim', 'As wireless research and testing extend beyond the lab and onto the field, Passive intermodulation (PIM) issues are a growing challenge for network designers and cell operators. ...', '**An Introduction**\r\n\r\nAs wireless research and testing extend beyond the lab and onto the field, Passive intermodulation (PIM) issues are a growing challenge for network designers and cell operators. \r\n\r\nThe ability to identify, troubleshoot and resolve passive intermodulation will require wireless service providers to utilize portable PIM analyzers and RF components with acceptable low PIM performance.  Operating knowledge of the PIM sources will also play a part in resolving PIM-related issues, including proper installation and maintenance of the antenna and RF cabling system.\r\n \r\n<br>\r\n**What is Passive Intermodulation (PIM)?**\r\n\r\nPassive Intermodulation (PIM) occurs when two or more signals are present in passive (mechanical) components of a wireless system.Some examples of mechanical components include antennas, cables and connectors. \r\n\r\nThe signals can mix or multiply with each other to generate other signals that impact the original intended signal; this results in degraded cellular receiver performance, and from a user perspective, this can severely impact voice calls and data transmission quality for the end user client. \r\n\r\nPIM frequencies can be expressed by frequencies F<sub>1</sub> and F<sub>2</sub> as follows:\r\n\r\naF<sub>1</sub> – bF<sub>2</sub>  [1]<br>\r\naF<sub>2</sub> – bF<sub>1</sub>  [2]\r\n\r\n,where the constants a and b are positive integers. \r\n\r\nWhen added, the result is called the PIM product order. As an example, if a=1 and b=2, the result is a third-order product. See Figure 2 for an example of this impacting the PCS frequency band 2.\r\n\r\n![](https://wwwg.acentury.co/storage/app/media/blog/passive-intermodulation-1.jpg)\r\n<br>\r\n\r\n*Sources of PIM*\r\n\r\nMajor sources of PIM can be found from both internal and external factors. Some examples of internal factors include loose connectors, damaged cables, and improperly installed RF components. External factors include corrosion and rust on ferromagnetic materials (iron, nickel and cobalt), and dirt and contamination that forms from aging conductor surfaces. Geographical regions with extreme outdoor temperature and humidity climates can also be an external contributor that impact component material integrity.\r\n\r\nOutdoor cellular systems with higher RF power can generate a significant amount of intermodulation distortion. PIM impact is directly related to power by a 1:3 ratio; every +1dB increase (or decrease) of power corresponds to an additional +3dB PIM increase (or decrease). Unlike GSM frequencies with very narrow bands, 5G systems have wider frequency ranges; this potentially introduces more cross band PIM complications, which can only be avoided by using passive components with low PIM rejection specifications. \r\n\r\n*Introducing ‘Extra’ Low PIM design:*\r\n<br>\r\nTo meet the design challenges of PIM across multiple different RF systems, passive components engineered below the absolute lowest noise floor could meet the variability of multiple use cases:\r\n\r\n* For UMTS systems the receiver sensitivity is -119dBm, which requires at least -162dBc PIM\r\n* For LTE systems the receiver sensitivity is -126dBm, which requires at least -169dBc PIM\r\n* For higher power wireless systems greater than 46dBm such as outdoor DAS and cellular systems, <-165dBc PIM is required to avoid PIM impacts. \r\n* \r\nOne such example is <a href=\"https://www.radiocomm.ca\" target=\"_blank\">Radiocomm\'s</a> latest set of <a href=\"https://radiocomm.ca/products-list/low-pim-coupler/low-pim-hybrid-coupler\" target=\"_blank\">Low PIM Hybrid Couplers</a> launched in mid 2019 that achieves -165dBc PIM across a wideband frequency of 520MHz-6000Mhz:\r\n\r\n![](https://acentury.co/storage/app/media/blog/PassiveInter-hybrid-coupler.jpg)\r\n\r\nFigure C: Low PIM Hybrid Coupler that achieves -165dc PIM across a wideband frequency of 520MHz-6000MHz\r\n\r\n<br>\r\n**Conclusion**\r\n\r\nAs wireless service providers design and operate new and existing systems, extra care and education will be required to ensure the system design is accounting for issues related to PIM. Choosing passive components engineered for these conditions is a critical step in the journey for stable and expected network performance.\r\n\r\n<br>\r\n**References:**\r\n\r\n1. <a href=\"https://www.analog.com/en/analog-dialogue/articles/passive-intermodulation-effects-in-base-stations-understanding-the-challenges-and-solutions.html\" target=\"_blank\" rel=\"nofollow\">https://www.analog.com/en/analog-dialogue/articles/passive-intermodulation-effects-in-base-stations-understanding-the-challenges-and-solutions.html</a>\r\n\r\n2. <a href=\"https://www.anritsu.com/en-US/test-measurement/technologies/pim\" target=\"_blank\" rel=\"nofollow\">https://www.anritsu.com/en-US/test-measurement/technologies/pim</a>\r\n\r\n3. <a href=\"https://www.electronicdesign.com/wireless/passive-intermodulation-pim-what-you-need-know\" target=\"_blank\" rel=\"nofollow\">https://www.electronicdesign.com/wireless/passive-intermodulation-pim-what-you-need-know</a>', '<p><strong>An Introduction</strong></p>\n<p>As wireless research and testing extend beyond the lab and onto the field, Passive intermodulation (PIM) issues are a growing challenge for network designers and cell operators. </p>\n<p>The ability to identify, troubleshoot and resolve passive intermodulation will require wireless service providers to utilize portable PIM analyzers and RF components with acceptable low PIM performance.  Operating knowledge of the PIM sources will also play a part in resolving PIM-related issues, including proper installation and maintenance of the antenna and RF cabling system.</p>\n<p><br>\n<strong>What is Passive Intermodulation (PIM)?</strong></p>\n<p>Passive Intermodulation (PIM) occurs when two or more signals are present in passive (mechanical) components of a wireless system.Some examples of mechanical components include antennas, cables and connectors. </p>\n<p>The signals can mix or multiply with each other to generate other signals that impact the original intended signal; this results in degraded cellular receiver performance, and from a user perspective, this can severely impact voice calls and data transmission quality for the end user client. </p>\n<p>PIM frequencies can be expressed by frequencies F<sub>1</sub> and F<sub>2</sub> as follows:</p>\n<p>aF<sub>1</sub> – bF<sub>2</sub>  [1]<br>\naF<sub>2</sub> – bF<sub>1</sub>  [2]</p>\n<p>,where the constants a and b are positive integers. </p>\n<p>When added, the result is called the PIM product order. As an example, if a=1 and b=2, the result is a third-order product. See Figure 2 for an example of this impacting the PCS frequency band 2.</p>\n<p><img src=\"https://wwwg.acentury.co/storage/app/media/blog/passive-intermodulation-1.jpg\" alt=\"\" />\n<br></p>\n<p><em>Sources of PIM</em></p>\n<p>Major sources of PIM can be found from both internal and external factors. Some examples of internal factors include loose connectors, damaged cables, and improperly installed RF components. External factors include corrosion and rust on ferromagnetic materials (iron, nickel and cobalt), and dirt and contamination that forms from aging conductor surfaces. Geographical regions with extreme outdoor temperature and humidity climates can also be an external contributor that impact component material integrity.</p>\n<p>Outdoor cellular systems with higher RF power can generate a significant amount of intermodulation distortion. PIM impact is directly related to power by a 1:3 ratio; every +1dB increase (or decrease) of power corresponds to an additional +3dB PIM increase (or decrease). Unlike GSM frequencies with very narrow bands, 5G systems have wider frequency ranges; this potentially introduces more cross band PIM complications, which can only be avoided by using passive components with low PIM rejection specifications. </p>\n<p><em>Introducing ‘Extra’ Low PIM design:</em>\n<br>\nTo meet the design challenges of PIM across multiple different RF systems, passive components engineered below the absolute lowest noise floor could meet the variability of multiple use cases:</p>\n<ul>\n<li>For UMTS systems the receiver sensitivity is -119dBm, which requires at least -162dBc PIM</li>\n<li>For LTE systems the receiver sensitivity is -126dBm, which requires at least -169dBc PIM</li>\n<li>For higher power wireless systems greater than 46dBm such as outdoor DAS and cellular systems, &lt;-165dBc PIM is required to avoid PIM impacts. </li>\n<li>\n<p>One such example is <a href=\"https://www.radiocomm.ca\" target=\"_blank\">Radiocomm\'s</a> latest set of <a href=\"https://radiocomm.ca/products-list/low-pim-coupler/low-pim-hybrid-coupler\" target=\"_blank\">Low PIM Hybrid Couplers</a> launched in mid 2019 that achieves -165dBc PIM across a wideband frequency of 520MHz-6000Mhz:</p>\n</li>\n</ul>\n<p><img src=\"https://acentury.co/storage/app/media/blog/PassiveInter-hybrid-coupler.jpg\" alt=\"\" /></p>\n<p>Figure C: Low PIM Hybrid Coupler that achieves -165dc PIM across a wideband frequency of 520MHz-6000MHz</p>\n<p><br>\n<strong>Conclusion</strong></p>\n<p>As wireless service providers design and operate new and existing systems, extra care and education will be required to ensure the system design is accounting for issues related to PIM. Choosing passive components engineered for these conditions is a critical step in the journey for stable and expected network performance.</p>\n<p><br>\n<strong>References:</strong></p>\n<ol>\n<li>\n<p><a href=\"https://www.analog.com/en/analog-dialogue/articles/passive-intermodulation-effects-in-base-stations-understanding-the-challenges-and-solutions.html\" target=\"_blank\" rel=\"nofollow\"><a href=\"https://www.analog.com/en/analog-dialogue/articles/passive-intermodulation-effects-in-base-stations-understanding-the-challenges-and-solutions.html\">https://www.analog.com/en/analog-dialogue/articles/passive-intermodulation-effects-in-base-stations-understanding-the-challenges-and-solutions.html</a></a></p>\n</li>\n<li>\n<p><a href=\"https://www.anritsu.com/en-US/test-measurement/technologies/pim\" target=\"_blank\" rel=\"nofollow\"><a href=\"https://www.anritsu.com/en-US/test-measurement/technologies/pim\">https://www.anritsu.com/en-US/test-measurement/technologies/pim</a></a></p>\n</li>\n<li>\n<p><a href=\"https://www.electronicdesign.com/wireless/passive-intermodulation-pim-what-you-need-know\" target=\"_blank\" rel=\"nofollow\"><a href=\"https://www.electronicdesign.com/wireless/passive-intermodulation-pim-what-you-need-know\">https://www.electronicdesign.com/wireless/passive-intermodulation-pim-what-you-need-know</a></a></p>\n</li>\n</ol>', '2019-10-04 16:51:23', 1, '2019-10-04 11:05:46', '2021-05-05 23:01:43', NULL, 0),
(3, 1, 'Acentury Inc is Ranked No. 170 according to Globe and Mail\'s ranking of Canada\'s Top Growing Companies', 'acentury-inc-ranked-no-170', 'Canada’s Top Growing Companies ranks Canadian companies on three-year revenue growth. Acentury Inc. earned its spot with three-year growth of 208% ...', 'Acentury Inc. places No. 170 on The Globe and Mail’s brand-new ranking of Canada’s Top Growing Companies\r\n\r\nRichmond Hill, Ontario\r\n\r\nAcentury Inc. is pleased to announce it placed No. 170 on the inaugural Report on Business ranking of Canada’s Top Growing Companies.\r\n\r\nCanada’s Top Growing Companies ranks Canadian companies on three-year revenue growth. Acentury Inc. earned its spot with three-year growth of 208%.\r\n\r\nLaunched in 2019, the Canada’s Top Growing Companies ranking program aims to celebrate entrepreneurial achievement in Canada by identifying and amplifying the success of growth-minded, independent businesses in Canada. It is a voluntary program; companies had to complete an in-depth application process in order to qualify.\r\nIn total, 400 companies made the ranking this year. \r\n\r\nThe full list of 2019 winners, and accompanying editorial coverage, is published in the October issue of Report on Business magazine—out now—and online at tgam.ca/TopGrowing.\r\n\r\n“We created the Canada’s Top Growing Companies program because we believe there is much Reporton Business readers can learn from the successes of the country’s best entrepreneurs,” says DerekDeCloet, Editor of Report on Business and Executive Editor at The Globe and Mail. “We’re excited to be telling their stories.”\r\n\r\n“The 400 companies on the inaugural Report on Business ranking of Canada’s Top Growing Companies ranking demonstrate ambition, innovation and tremendous business acumen,” says Phillip Crawley, Publisher and CEO of The Globe and Mail. “Their contributions to the economy help to make Canada a better place, and warrant commendation.”\r\n\r\n<br>\r\n**About The Globe and Mail**\r\n\r\nThe Globe and Mail is Canada’s foremost news media company, leading the national discussion and causing policy change through brave and independent journalism since 1844. With our award-winning coverage of business, politics and national affairs, The Globe and Mail newspaper reaches 6.6 million readers every week in our print or digital formats, and Report on Business magazine reaches 1.8 million readers in print and digital every issue. Our investment in innovative data science means that as the\r\nworld continues to change, so does The Globe. The Globe and Mail is owned by Woodbridge, the investment arm of the Thomson family.\r\n\r\n<br>\r\n**About Acentury Inc.**\r\n\r\nAcentury Inc. provides 5G, mmWave, and WiFi 5/6 test and measurement solutions, and specializes in RAN and device performance and conformance testing.  Under the Radiocomm brand, Acentury also supplies extra-low PIM (-165dBc) passive network components with wideband frequency coverage for 5G and mmWave network systems. \r\n\r\n<br>\r\n**Media contact**\r\n\r\nDavid Shin, Acentury Inc. david.<a href=\"mailto:shin@acentury.co\">shin@acentury.co</a>, 1-905-554-3633', '<p>Acentury Inc. places No. 170 on The Globe and Mail’s brand-new ranking of Canada’s Top Growing Companies</p>\n<p>Richmond Hill, Ontario</p>\n<p>Acentury Inc. is pleased to announce it placed No. 170 on the inaugural Report on Business ranking of Canada’s Top Growing Companies.</p>\n<p>Canada’s Top Growing Companies ranks Canadian companies on three-year revenue growth. Acentury Inc. earned its spot with three-year growth of 208%.</p>\n<p>Launched in 2019, the Canada’s Top Growing Companies ranking program aims to celebrate entrepreneurial achievement in Canada by identifying and amplifying the success of growth-minded, independent businesses in Canada. It is a voluntary program; companies had to complete an in-depth application process in order to qualify.\nIn total, 400 companies made the ranking this year. </p>\n<p>The full list of 2019 winners, and accompanying editorial coverage, is published in the October issue of Report on Business magazine—out now—and online at tgam.ca/TopGrowing.</p>\n<p>“We created the Canada’s Top Growing Companies program because we believe there is much Reporton Business readers can learn from the successes of the country’s best entrepreneurs,” says DerekDeCloet, Editor of Report on Business and Executive Editor at The Globe and Mail. “We’re excited to be telling their stories.”</p>\n<p>“The 400 companies on the inaugural Report on Business ranking of Canada’s Top Growing Companies ranking demonstrate ambition, innovation and tremendous business acumen,” says Phillip Crawley, Publisher and CEO of The Globe and Mail. “Their contributions to the economy help to make Canada a better place, and warrant commendation.”</p>\n<p><br>\n<strong>About The Globe and Mail</strong></p>\n<p>The Globe and Mail is Canada’s foremost news media company, leading the national discussion and causing policy change through brave and independent journalism since 1844. With our award-winning coverage of business, politics and national affairs, The Globe and Mail newspaper reaches 6.6 million readers every week in our print or digital formats, and Report on Business magazine reaches 1.8 million readers in print and digital every issue. Our investment in innovative data science means that as the\nworld continues to change, so does The Globe. The Globe and Mail is owned by Woodbridge, the investment arm of the Thomson family.</p>\n<p><br>\n<strong>About Acentury Inc.</strong></p>\n<p>Acentury Inc. provides 5G, mmWave, and WiFi 5/6 test and measurement solutions, and specializes in RAN and device performance and conformance testing.  Under the Radiocomm brand, Acentury also supplies extra-low PIM (-165dBc) passive network components with wideband frequency coverage for 5G and mmWave network systems. </p>\n<p><br>\n<strong>Media contact</strong></p>\n<p>David Shin, Acentury Inc. david.<a href=\"mailto:shin@acentury.co\">shin@acentury.co</a>, 1-905-554-3633</p>', '2019-09-27 13:53:42', 1, '2019-10-04 13:34:17', '2019-11-27 21:29:50', NULL, 0),
(4, 1, 'Acentury Inc. Ranks No. 128 on the 2019 Growth 500', 'acentury-inc-ranks-no-128', 'Canadian Business and Maclean’s ranked Acentury Inc. No. 128 on the annual Growth 500, the definitive ranking of Canada’s Fastest-Growing Companies. ...', '** Canadian Business unveils annual list of Canada’s Fastest-Growing Companies**\r\n\r\n*Richmond Hill, Ontario (September 12, 2019)* - Canadian Business and Maclean’s ranked Acentury Inc. No. 128 on the annual Growth 500, the definitive ranking of Canada’s Fastest-Growing Companies. Produced by Canada’s premier business and current affairs media brands, the Growth 500 ranks Canadian businesses on five-year revenue growth. Growth 500 winners are profiled in a special print issue of Canadian Business published with Maclean’s magazine and online at CanadianBusiness.com and Growth500.ca.\r\n\r\nAcentury Inc. made the 2019 Growth 500 list with five-year revenue growth of 780%.\r\n“The companies on the 2019 Growth 500 are truly remarkable. Demonstrating foresight,\r\ninnovation and smart management, their stories serve as a primer for how to build a successful\r\nentrepreneurial business today,” says Beth Fraser, Growth 500 program manager. “As we\r\ncelebrate over 30 years of the Canada’s Fastest-Growing Companies program, it’s encouraging\r\nto see that entrepreneurship is healthier than ever in this country.”\r\n\r\n“Acentury Inc. is honoured to be on the Growth 500 ranking,” says Managing Director, Frank Ye.\r\n“This achievement reflects the strength of our product and the dedication of our team.”\r\n\r\n<br>\r\n**About the Growth 500**\r\n\r\nFor over 30 years, the Growth 500 has been Canada’s most respectable and influential ranking\r\nof entrepreneurial achievement. Ranking Canada’s Fastest-Growing Companies by five-year\r\nrevenue growth, the Growth 500 profiles the country’s most successful growing businesses. The\r\nGrowth 500 is produced by Canadian Business. Winners are profiled in a special Growth 500\r\nprint issue of Canadian Business (packaged with the October issue of Maclean’s magazine) and\r\nonline at Growth500.ca and CanadianBusiness.com. For more information on the ranking, visit\r\nGrowth500.ca.\r\n\r\n<br>\r\n**About Canadian Business**\r\n\r\nFounded in 1928, Canadian Business is the longest-serving and most-trusted business\r\npublication in the country. It is the country\'s premier media brand for executives and senior\r\nbusiness leaders. It fuels the success of Canada\'s business elite with a focus on the things that\r\nmatter most: leadership, innovation, business strategy and management tactics. Learn more at\r\nCanadianBusiness.com.\r\n\r\n<br>\r\n**About Acentury Inc**\r\n\r\nAcentury Inc. provides 5g, mmWave, and WiFI 5/6 test and measurement solutions, and specializes in RAN and device performance and conformance testing.  Under the Radiocomm brand, Acentury also supplies extra-low PIM (-165dBc) passive network components with wideband frequency coverage for 5g and mmWave network systems. \r\n\r\n<br>\r\n**Media contact**\r\n\r\nDavid Shin, Acentury Inc. [david.shin@acentury.co](mailto:david.shin@acentury.co), 1-905-554-3633', '<p><strong> Canadian Business unveils annual list of Canada’s Fastest-Growing Companies</strong></p>\n<p><em>Richmond Hill, Ontario (September 12, 2019)</em> - Canadian Business and Maclean’s ranked Acentury Inc. No. 128 on the annual Growth 500, the definitive ranking of Canada’s Fastest-Growing Companies. Produced by Canada’s premier business and current affairs media brands, the Growth 500 ranks Canadian businesses on five-year revenue growth. Growth 500 winners are profiled in a special print issue of Canadian Business published with Maclean’s magazine and online at CanadianBusiness.com and Growth500.ca.</p>\n<p>Acentury Inc. made the 2019 Growth 500 list with five-year revenue growth of 780%.\n“The companies on the 2019 Growth 500 are truly remarkable. Demonstrating foresight,\ninnovation and smart management, their stories serve as a primer for how to build a successful\nentrepreneurial business today,” says Beth Fraser, Growth 500 program manager. “As we\ncelebrate over 30 years of the Canada’s Fastest-Growing Companies program, it’s encouraging\nto see that entrepreneurship is healthier than ever in this country.”</p>\n<p>“Acentury Inc. is honoured to be on the Growth 500 ranking,” says Managing Director, Frank Ye.\n“This achievement reflects the strength of our product and the dedication of our team.”</p>\n<p><br>\n<strong>About the Growth 500</strong></p>\n<p>For over 30 years, the Growth 500 has been Canada’s most respectable and influential ranking\nof entrepreneurial achievement. Ranking Canada’s Fastest-Growing Companies by five-year\nrevenue growth, the Growth 500 profiles the country’s most successful growing businesses. The\nGrowth 500 is produced by Canadian Business. Winners are profiled in a special Growth 500\nprint issue of Canadian Business (packaged with the October issue of Maclean’s magazine) and\nonline at Growth500.ca and CanadianBusiness.com. For more information on the ranking, visit\nGrowth500.ca.</p>\n<p><br>\n<strong>About Canadian Business</strong></p>\n<p>Founded in 1928, Canadian Business is the longest-serving and most-trusted business\npublication in the country. It is the country\'s premier media brand for executives and senior\nbusiness leaders. It fuels the success of Canada\'s business elite with a focus on the things that\nmatter most: leadership, innovation, business strategy and management tactics. Learn more at\nCanadianBusiness.com.</p>\n<p><br>\n<strong>About Acentury Inc</strong></p>\n<p>Acentury Inc. provides 5g, mmWave, and WiFI 5/6 test and measurement solutions, and specializes in RAN and device performance and conformance testing.  Under the Radiocomm brand, Acentury also supplies extra-low PIM (-165dBc) passive network components with wideband frequency coverage for 5g and mmWave network systems. </p>\n<p><br>\n<strong>Media contact</strong></p>\n<p>David Shin, Acentury Inc. <a href=\"mailto:david.shin@acentury.co\">david.shin@acentury.co</a>, 1-905-554-3633</p>', '2019-09-12 14:06:58', 1, '2019-10-04 14:06:35', '2019-10-04 14:10:42', NULL, 0),
(5, 1, 'Acentury will be attending the upcoming Mobile World Congress (MWC) Americas conference', 'acentury-will-be-attending-upcoming-mwc', 'Currently scheduled for October 22 - 24, 2019. MWC Americas is a growing technology conference for the mobile industry and beings a collection of industry experts, innovators and educational sessions together.', 'Acentury will be attending the upcoming Mobile World Congress (MWC) Americas conference in Los Angeles. Currently scheduled for October 22 - 24, 2019. MWC Americas is a growing technology conference for the mobile industry and beings a collection of industry experts, innovators and educational sessions together.', '<p>Acentury will be attending the upcoming Mobile World Congress (MWC) Americas conference in Los Angeles. Currently scheduled for October 22 - 24, 2019. MWC Americas is a growing technology conference for the mobile industry and beings a collection of industry experts, innovators and educational sessions together.</p>', '2019-10-04 14:20:27', 1, '2019-10-04 14:12:04', '2019-10-04 14:23:09', NULL, 0),
(6, 1, 'EMITE Software and Hardware Release Notification', 'emite-software-and-harware-release', 'Emite released a software and hardware release for Software Suites GUI v3.13 and WLAN OTA Test System v2.1 and E-, F-, I-, H- and PT-Series Hardware Release 2019.7 in mid 2019....', 'Emite released a software and hardware release for Software Suites GUI v3.13 and WLAN OTA Test System v2.1 and E-, F-, I-, H- and PT-Series Hardware Release 2019.7 in mid 2019. This is a quick highlight of some of the key release notes:\r\n\r\n* General new functionalities:\r\n  * Keysight UXM E7515B (BSE) and Propsim F64 (CE) is now fully integrated into the GUI software\r\n* Active MIMO OTA Measurement Mode\r\n  * [WTS] 2.1] LTE - WLAN Coexistence testing is now possible\r\n  * [WTS 2.1] IEEE 802.1 1ax 2x2 MIMO is fully integrated into the GUI for TRP/TIS measurements (subject to Wireless Connectivity Test Set limitations)\r\n  * IEEE 802.151 Bluetooth LE (v4.0) advertiser test mode is now possible\r\n  * 5G NR Non Stand Alone Standard is now fully integrated into the GUI software. [E, F, H Series]\r\n  * \"Beam peak search TX\" measurements on 5G NR are now possible. [F, H Series]\r\n  * \"Beam peak search RX\" measurements on 5G NR are now possible. [F, H Series]\r\n  * \"Spherical Coverage/CDF of EIRPs\" measurements on 5G NR are now possible. [F, H Series]\r\n  * \"Spherical Coverage/CDF of EISs\" measurements on 5G NR are now possible. [F, H Series]\r\n  * And much more…\r\n  \r\n  For a full list of feature updates, [go here](http://www.emite-ing.com/en/?option=com_acym&ctrl=archive&task=view&id=30&userid=4114-44uAeCIZZyjglS&tmpl=component).', '<p>Emite released a software and hardware release for Software Suites GUI v3.13 and WLAN OTA Test System v2.1 and E-, F-, I-, H- and PT-Series Hardware Release 2019.7 in mid 2019. This is a quick highlight of some of the key release notes:</p>\n<ul>\n<li>General new functionalities:\n<ul>\n<li>Keysight UXM E7515B (BSE) and Propsim F64 (CE) is now fully integrated into the GUI software</li>\n</ul></li>\n<li>\n<p>Active MIMO OTA Measurement Mode</p>\n<ul>\n<li>[WTS] 2.1] LTE - WLAN Coexistence testing is now possible</li>\n<li>[WTS 2.1] IEEE 802.1 1ax 2x2 MIMO is fully integrated into the GUI for TRP/TIS measurements (subject to Wireless Connectivity Test Set limitations)</li>\n<li>IEEE 802.151 Bluetooth LE (v4.0) advertiser test mode is now possible</li>\n<li>5G NR Non Stand Alone Standard is now fully integrated into the GUI software. [E, F, H Series]</li>\n<li>&quot;Beam peak search TX&quot; measurements on 5G NR are now possible. [F, H Series]</li>\n<li>&quot;Beam peak search RX&quot; measurements on 5G NR are now possible. [F, H Series]</li>\n<li>&quot;Spherical Coverage/CDF of EIRPs&quot; measurements on 5G NR are now possible. [F, H Series]</li>\n<li>&quot;Spherical Coverage/CDF of EISs&quot; measurements on 5G NR are now possible. [F, H Series]</li>\n<li>And much more…</li>\n</ul>\n<p>For a full list of feature updates, <a href=\"http://www.emite-ing.com/en/?option=com_acym&amp;ctrl=archive&amp;task=view&amp;id=30&amp;userid=4114-44uAeCIZZyjglS&amp;tmpl=component\">go here</a>.</p>\n</li>\n</ul>', '2019-07-31 16:59:00', 1, '2019-10-04 16:52:29', '2019-10-14 20:18:40', NULL, 0),
(7, 1, 'Extra Low PIM 3:3 Hybrid Coupler', 'extra-low-pim-3_3-hybrid-coupler', 'Introducing Radiocomm’s Ultra-wideband Hybrid Coupler covering the 5G Band (520-6000MHz) with high isolation....', 'Introducing Radiocomm’s Ultra-wideband Hybrid Coupler covering the 5G Band (520-6000MHz) with high isolation. For more information, please visit our e-catalog located on our [Radiocomm website](https://radiocomm.ca/products/extra-low-pim-3-3-hybrid-coupler-wideband-4-3-10-female).', '<p>Introducing Radiocomm’s Ultra-wideband Hybrid Coupler covering the 5G Band (520-6000MHz) with high isolation. For more information, please visit our e-catalog located on our <a href=\"https://radiocomm.ca/products/extra-low-pim-3-3-hybrid-coupler-wideband-4-3-10-female\">Radiocomm website</a>.</p>', '2019-10-04 17:07:08', 1, '2019-10-04 17:06:49', '2019-10-15 03:09:28', NULL, 0),
(8, 1, 'Extra Low PIM 4:4 Hybrid Wideband Coupler', 'extra-low-pim-44-hybrid-wideband-coupler', 'Introducing Radiocomm’s Ultra-wideband Hybrid Coupler covering the 5G Band (520-6000MHz) with high isolation....', 'Introducing Radiocomm’s Ultra-wideband Hybrid Coupler covering the 5G Band (520-6000MHz) with high isolation. For more information, please visit our e-catalog located on our [Radiocomm website](https://radiocomm.ca/products/extra-low-pim-4-4-hybrid-coupler-wideband-4-3-10-female).', '<p>Introducing Radiocomm’s Ultra-wideband Hybrid Coupler covering the 5G Band (520-6000MHz) with high isolation. For more information, please visit our e-catalog located on our <a href=\"https://radiocomm.ca/products/extra-low-pim-4-4-hybrid-coupler-wideband-4-3-10-female\">Radiocomm website</a>.</p>', '2019-10-04 17:12:36', 1, '2019-10-04 17:12:11', '2019-10-15 03:09:21', NULL, 0),
(9, 1, 'Extra Low PIM 6dB Wideband Directional Coupler', 'extra-low-pim-6db-wideband-directional-coupler', 'Introducing Radiocomm’s ultra wideband Directional Coupler that covers the 5G Band (520-6000MHz). For more information, please visit our e-catalog located on our...', 'Introducing Radiocomm’s ultra wideband Directional Coupler that covers the 5G Band (520-6000MHz). For more information, please visit our e-catalog located on our [Radiocomm website](https://radiocomm.ca/products/cp0-p536).', '<p>Introducing Radiocomm’s ultra wideband Directional Coupler that covers the 5G Band (520-6000MHz). For more information, please visit our e-catalog located on our <a href=\"https://radiocomm.ca/products/cp0-p536\">Radiocomm website</a>.</p>', '2019-10-04 17:16:32', 1, '2019-10-04 17:16:19', '2019-11-27 14:45:09', NULL, 0),
(10, 1, 'EMITE Ing. has added Anritsu MT8000A to the list of compatible gNodeB emulators', 'emite-ing-has-added-anritsu-mt8000a-list-compatible-gnodeb-emulators', 'Customers now have more choices in 5G OTA testing and with this announcement, Emite Ing. continues to be in lockstep with test instrument technology advances.', 'Over-the-Air (OTA) testing requires a high quality RF chamber. Equally important is the inter-compatibility or the chamber to work with many different test instruments from many different leading vendors. This is especially true in 5G testing where products are still evolving. \r\n\r\n**EMITE Ing.** has now added **Anritsu** MT8000A to the list of gNodeB emulators integrated with its H300 Anechoic Chamber. Customers now have more choices in 5G OTA testing and with this announcement, Emite Ing. continues to be in lockstep with test instrument technology advances.\r\n\r\nFor more info, please contact Acentury Inc. at <a href=\"mailto:info@acentury.co\">info@acentury.co</a> or visit us in [#mwc19](https://www.linkedin.com/uas/login?session_redirect=https%3A%2F%2Fwww%2Elinkedin%2Ecom%2Ffeed%2Fhashtag%2Fmwc19&trk=public-post_share-update_update-text), booth 4452D – West Hall.', '<p>Over-the-Air (OTA) testing requires a high quality RF chamber. Equally important is the inter-compatibility or the chamber to work with many different test instruments from many different leading vendors. This is especially true in 5G testing where products are still evolving. </p>\n<p><strong>EMITE Ing.</strong> has now added <strong>Anritsu</strong> MT8000A to the list of gNodeB emulators integrated with its H300 Anechoic Chamber. Customers now have more choices in 5G OTA testing and with this announcement, Emite Ing. continues to be in lockstep with test instrument technology advances.</p>\n<p>For more info, please contact Acentury Inc. at <a href=\"mailto:info@acentury.co\">info@acentury.co</a> or visit us in <a href=\"https://www.linkedin.com/uas/login?session_redirect=https%3A%2F%2Fwww%2Elinkedin%2Ecom%2Ffeed%2Fhashtag%2Fmwc19&amp;trk=public-post_share-update_update-text\">#mwc19</a>, booth 4452D – West Hall.</p>', '2019-10-09 21:22:04', 1, '2019-10-09 10:29:11', '2019-10-10 20:11:35', NULL, 0),
(11, 2, 'EMITE H-Series 5G OTA Test Platform has now been selected by the largest US carrier for testing 5G devices over the air', 'emite-h-series-5g-ota-test-platform-has-now-been-selected-largest-us-carrier-testing-5g-devices-over-air', 'The EMITE H-Series 5G OTA Test Platform has now been selected by the largest US carrier, AT&T, for testing 5G devices over the air (OTA)...', 'The EMITE H-Series 5G OTA Test Platform has now been selected by the largest US carrier, AT&T, for testing 5G devices over the air (OTA). The platform features a fully automated system with GUI-controlled instrument software capable of:\r\n* Batch testing overnight\r\n* Integration of climatic-control\r\n* Use of different 3GPP-approved test methods\r\n* 0.5dB inter-lab repeatability\r\n* Operate diverse signaling boxes\r\n\r\nEMITE will open its USA branch office near New York to complement Acentury Americas local teams in Dallas and San Francisco to serve customers even more. Further details will be provided upon its scheduled launch in 2019.', '<p>The EMITE H-Series 5G OTA Test Platform has now been selected by the largest US carrier, AT&amp;T, for testing 5G devices over the air (OTA). The platform features a fully automated system with GUI-controlled instrument software capable of:</p>\n<ul>\n<li>Batch testing overnight</li>\n<li>Integration of climatic-control</li>\n<li>Use of different 3GPP-approved test methods</li>\n<li>0.5dB inter-lab repeatability</li>\n<li>Operate diverse signaling boxes</li>\n</ul>\n<p>EMITE will open its USA branch office near New York to complement Acentury Americas local teams in Dallas and San Francisco to serve customers even more. Further details will be provided upon its scheduled launch in 2019.</p>', '2019-11-21 21:36:38', 1, '2019-11-26 21:31:06', '2019-12-03 16:01:01', NULL, 1),
(12, 2, 'octoScope introduces a new testbed for automated Wi-Fi 6 feature testing', 'octoscope-introduces-new-testbed-automated-wi-fi-6-feature-testing', 'octoScope® announced a new STACK-WFA testbed for automated Wi-Fi 6 testing of access point (AP) and station (STA) devices...', 'octoScope® announced a new STACK-WFA testbed for automated Wi-Fi 6 testing of access point (AP) and station (STA) devices.\r\n\r\noctoScope ships its STACK-WFA pre-configured with built-in AP and STA devices for testing Wi-Fi 6 features. Servers needed for feature testing, such as RADIUS, are included with the testbed. \r\n\r\nFor more information, see their product announcement details on the octoScope website.\r\n\r\n**About the octoBox personal wireless testbed**<br/>\r\n\r\nStackable and configurable octoBox personal testbeds are completely isolated from external interference and can be used at an engineer’s office or lab bench.Each octoBox testbed is controlled by a dedicated web server accessible via a browser UI for manual control, or via REST API for test automation. The server provides the time base for the testbed and controls the built-in instruments, DUT configuration, traffic, and test flow.', '<p>octoScope® announced a new STACK-WFA testbed for automated Wi-Fi 6 testing of access point (AP) and station (STA) devices.</p>\n<p>octoScope ships its STACK-WFA pre-configured with built-in AP and STA devices for testing Wi-Fi 6 features. Servers needed for feature testing, such as RADIUS, are included with the testbed. </p>\n<p>For more information, see their product announcement details on the octoScope website.</p>\n<p><strong>About the octoBox personal wireless testbed</strong><br/></p>\n<p>Stackable and configurable octoBox personal testbeds are completely isolated from external interference and can be used at an engineer’s office or lab bench.Each octoBox testbed is controlled by a dedicated web server accessible via a browser UI for manual control, or via REST API for test automation. The server provides the time base for the testbed and controls the built-in instruments, DUT configuration, traffic, and test flow.</p>', '2019-11-07 16:06:00', 1, '2019-12-03 16:05:45', '2019-12-03 16:57:05', NULL, 1),
(13, 2, 'Why Ceramic Waveguide Filters?', 'why-ceramic-waveguide-filters', 'The emerging fifth generation (5G) mobile communication system threatens to demand the exponential increase of passive components. With 10Gpbs of peak data rate and the enabling technologies such as massive MIMO and carrier aggregation, some experts estimate the passive components volume to increase by at least 10x of a 4G network system...', '**Background** <br/>\r\nThe emerging fifth generation (5G) mobile communication system threatens to demand the exponential increase of passive components. With 10Gbps of peak data rate and the enabling technologies such as massive MIMO and carrier aggregation, some experts estimate the passive components volume to increase by at least 10x of a 4G network system.\r\n\r\n\r\n**Why Ceramic Waveguide Filters** <br/>\r\n5G systems are 10x as fast and 100x larger in network capacity as a 4G system. The new technology system requires smaller form factors, more advanced performance requirements, and above all, lower manufacturing costs.\r\n\r\nCeramic waveguide filters have a number of properties that are well-suited to these design requirements:\r\n* Lower loss and smaller size\r\n* Higher unloaded Q than the traditional metallic cavity filter due to the dielectric material\r\n* A wide spurious window that provides excellent wide band performance\r\n* Good temperature stability. Minimum thermal shift within the wide temperature variable range\r\n* High power handling capability due to the dielectric material fill-in  \r\n* Compactable size & lighter weight. 4-10x more compact than traditional metallic cavity filters\r\n* The arbitrary topology and interface variety (coaxial & SMD) is ideal for 5G massive MIMO antennae and small cell integration\r\n* Excellent Passive Inter-modulation(PIM) characteristics\r\n* Superior design material for large scale production and cost\r\n\r\nFor more information about ceramic filter technology and some of the ceramic filters that Acentury Radiocomm is designing, please [contact us](https://acentury.co/ca/contact).', '<p><strong>Background</strong> <br/>\nThe emerging fifth generation (5G) mobile communication system threatens to demand the exponential increase of passive components. With 10Gbps of peak data rate and the enabling technologies such as massive MIMO and carrier aggregation, some experts estimate the passive components volume to increase by at least 10x of a 4G network system.</p>\n<p><strong>Why Ceramic Waveguide Filters</strong> <br/>\n5G systems are 10x as fast and 100x larger in network capacity as a 4G system. The new technology system requires smaller form factors, more advanced performance requirements, and above all, lower manufacturing costs.</p>\n<p>Ceramic waveguide filters have a number of properties that are well-suited to these design requirements:</p>\n<ul>\n<li>Lower loss and smaller size</li>\n<li>Higher unloaded Q than the traditional metallic cavity filter due to the dielectric material</li>\n<li>A wide spurious window that provides excellent wide band performance</li>\n<li>Good temperature stability. Minimum thermal shift within the wide temperature variable range</li>\n<li>High power handling capability due to the dielectric material fill-in  </li>\n<li>Compactable size &amp; lighter weight. 4-10x more compact than traditional metallic cavity filters</li>\n<li>The arbitrary topology and interface variety (coaxial &amp; SMD) is ideal for 5G massive MIMO antennae and small cell integration</li>\n<li>Excellent Passive Inter-modulation(PIM) characteristics</li>\n<li>Superior design material for large scale production and cost</li>\n</ul>\n<p>For more information about ceramic filter technology and some of the ceramic filters that Acentury Radiocomm is designing, please <a href=\"https://acentury.co/ca/contact\">contact us</a>.</p>', '2019-12-03 01:40:29', 1, '2019-12-04 01:35:23', '2019-12-04 01:47:07', NULL, 0),
(15, 2, 'Extra Low PIM 4:2 Narrow Band Combiner', 'extra-low-pim-42-narrow-band-combiner', 'Radiocomm has released their latest product from the \"Extra Low PIM\" passive network components family.', 'Radiocomm has released their latest product from the \"Extra Low PIM\" passive network components family. An extra low PIM (-165dBc) 4:2 Narrow Band Combiner was launched into the marketplace which features a 4.3-10 Connector with 5W per input port. For more details and specifications, please visit our e-catalogue website at www.radiocomm.ca. For more information, check out the product spec page:\r\n\r\n* [CM4-P516](https://radiocomm.ca/products/cm4-p512-979873427)', '<p>Radiocomm has released their latest product from the &quot;Extra Low PIM&quot; passive network components family. An extra low PIM (-165dBc) 4:2 Narrow Band Combiner was launched into the marketplace which features a 4.3-10 Connector with 5W per input port. For more details and specifications, please visit our e-catalogue website at www.radiocomm.ca. For more information, check out the product spec page:</p>\n<ul>\n<li><a href=\"https://radiocomm.ca/products/cm4-p512-979873427\">CM4-P516</a></li>\n</ul>', '2020-02-07 18:25:02', 1, '2020-02-07 18:24:28', '2020-02-07 18:34:04', NULL, 0),
(16, 2, 'Extra Low PIM 4:2 Combiner 520-6000MHz', 'extra-low-pim-42-combiner-520-6000mhz', 'Another addition to Radiocomm\'s Extra Low PIM Combiner product line up is the 4:2 Combiner for wideband coverage (520-6000MHz)', 'Another addition to Radiocomm\'s Extra Low PIM Combiner product line up is the 4:2 Combiner for wideband coverage (520-6000MHz). Radiocomm continues to roll out part numbers for Tier 1 and Tier 2 operators. Customized requests for network components continues to be Radiocomm\'s core focus, with fast sample lead times and high quality deliveries with a zero-return track record spanning the last 5 years. \r\n\r\nFor more details about this product, check out the product spec page:\r\n* [CM4-P510](https://radiocomm.ca/products/cm4-p510-41868398)', '<p>Another addition to Radiocomm\'s Extra Low PIM Combiner product line up is the 4:2 Combiner for wideband coverage (520-6000MHz). Radiocomm continues to roll out part numbers for Tier 1 and Tier 2 operators. Customized requests for network components continues to be Radiocomm\'s core focus, with fast sample lead times and high quality deliveries with a zero-return track record spanning the last 5 years. </p>\n<p>For more details about this product, check out the product spec page:</p>\n<ul>\n<li><a href=\"https://radiocomm.ca/products/cm4-p510-41868398\">CM4-P510</a></li>\n</ul>', '2020-02-07 18:40:50', 1, '2020-02-07 18:40:53', '2020-02-07 18:40:53', NULL, 0),
(17, 2, 'COVID-19: A Message to Our Customers', 'covid-19-message-our-customers', 'Greetings all. We hope this message is received with you all safe and sound. We wanted to take this opportunity during to inform you that Acentury continues to operate in a supporting role to an essential service, telecommunications', 'Greetings all. We hope this message is received with you all safe and sound.\r\n\r\nWe wanted to take this opportunity to inform you that Acentury continues to operate in a supporting role to an essential service, telecommunications. The health and safety of our customers and employees is the number one priority during this period and we have implemented key measures internally to maintain the health and safety of the public and local community. In an additional effort to support our local community, Acentury Inc. has made a donation of masks to our local hospital, Mackenzie Health, and Southlake Regional Health Centre in Newmarket.\r\n \r\nWe will continue to monitor the situation as it evolves and we will maintain communications as things change. Best wishes to your teams, families and friends. Stay safe and be well.', '<p>Greetings all. We hope this message is received with you all safe and sound.</p>\n<p>We wanted to take this opportunity to inform you that Acentury continues to operate in a supporting role to an essential service, telecommunications. The health and safety of our customers and employees is the number one priority during this period and we have implemented key measures internally to maintain the health and safety of the public and local community. In an additional effort to support our local community, Acentury Inc. has made a donation of masks to our local hospital, Mackenzie Health, and Southlake Regional Health Centre in Newmarket.</p>\n<p>We will continue to monitor the situation as it evolves and we will maintain communications as things change. Best wishes to your teams, families and friends. Stay safe and be well.</p>', '2020-04-10 15:42:46', 1, '2020-04-10 15:47:38', '2020-04-13 20:56:48', NULL, 1);
INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `metadata`, `featured`) VALUES
(18, 2, 'Chimera - Xena Networks', 'chimera-xena-networks', 'Chimera is an easy-to-use and cost-effective solution for emulating impairments (e.g. packet manipulation, latency, jitter, bandwidth control and shaping) to traffic between DUTs in the lab. It the industry\'s only fully integrated traffic generation and impairment solution.', 'Chimera is an easy-to-use and cost-effective solution for emulating impairments (e.g. packet manipulation, latency, jitter, bandwidth control and shaping) to traffic between DUTs in the lab. It the industry\'s only fully integrated traffic generation and impairment solution.\r\n\r\n![](https://acentury.co/storage/app/media/uploaded-files/Chimera-datasheet_Page_1.png)\r\n\r\n![](https://acentury.co/storage/app/media/uploaded-files/Chimera-datasheet_Page_2.png)\r\n\r\n![](https://acentury.co/storage/app/media/uploaded-files/Chimera-datasheet_Page_3.png)', '<p>Chimera is an easy-to-use and cost-effective solution for emulating impairments (e.g. packet manipulation, latency, jitter, bandwidth control and shaping) to traffic between DUTs in the lab. It the industry\'s only fully integrated traffic generation and impairment solution.</p>\n<p><img src=\"https://acentury.co/storage/app/media/uploaded-files/Chimera-datasheet_Page_1.png\" alt=\"\" /></p>\n<p><img src=\"https://acentury.co/storage/app/media/uploaded-files/Chimera-datasheet_Page_2.png\" alt=\"\" /></p>\n<p><img src=\"https://acentury.co/storage/app/media/uploaded-files/Chimera-datasheet_Page_3.png\" alt=\"\" /></p>', '2020-06-21 20:59:26', 1, '2020-06-21 21:01:11', '2020-07-11 00:32:13', NULL, 0),
(19, 2, 'ColdFusion - Lepton Systems', 'coldfusion-lepton-systems', 'Introducing a new standard in layer 1 test automation: ColdFusion. Once the switch is wire up, test configurations and scenarios can be initiated using remote commands to fully automate tests.', 'Introducing a new standard in layer 1 test automation: ColdFusion. Once the switch is wire up, test configurations and scenarios can be initiated using remote commands to fully automate tests.\r\n\r\n![](https://acentury.co/storage/app/media/uploaded-files/ColdFusion%20Datasheet_Page_1.png)', '<p>Introducing a new standard in layer 1 test automation: ColdFusion. Once the switch is wire up, test configurations and scenarios can be initiated using remote commands to fully automate tests.</p>\n<p><img src=\"https://acentury.co/storage/app/media/uploaded-files/ColdFusion%20Datasheet_Page_1.png\" alt=\"\" /></p>', '2020-06-21 01:43:46', 1, '2020-06-22 01:43:49', '2020-07-11 00:35:26', NULL, 0),
(20, 2, 'New Partnership with Lepton Systems', 'new-partnership-lepton-systems', 'It is with great excitement that Acentury Inc. announces our latest channel North American partnership with Lepton Systems. Founded in 2016 by a group of engineers with extensive experience in optical transmission and software architecture and development, Lepton Systems develops Layer 1 switches to automate the connection of the physical layer in a variety of test environments.', 'It is with great excitement that Acentury Inc. announces our latest channel North American partnership with Lepton Systems. Founded in 2016 by a group of engineers with extensive experience in optical transmission and software architecture and development, Lepton Systems develops Layer 1 switches to automate the connection of the physical layer in a variety of test environments. Lepton\'s ColdFusion Layer 1 test automation switch enables complete automation of the test lab infrastructure and has the broadest range of data rates (10mb to 128Gb) and media support along with the highest port density per chassis (256 128G ports, 1024 128G ports using 1-4 breakout cables, and 512 32 Gb ports). Installed in a wire-once scenario, ColdFusion enables remote access and control of the test lab’s equipment for fast and reliable set-up and execution. This remote access supports a work-from-home/low contact environment as well as savings in both CapEx and OpEx. \r\n\r\nUsing Acentury’s extensive solutions expertise and experience with Tier 1 carriers, Lepton Systems is a complementary set of products that can offer customers a complete solution for lab environments. \r\n\r\nwww.leptonsys.com\r\n\r\n![](https://acentury.co/storage/app/media/uploaded-files/Lepton%20logo.png)', '<p>It is with great excitement that Acentury Inc. announces our latest channel North American partnership with Lepton Systems. Founded in 2016 by a group of engineers with extensive experience in optical transmission and software architecture and development, Lepton Systems develops Layer 1 switches to automate the connection of the physical layer in a variety of test environments. Lepton\'s ColdFusion Layer 1 test automation switch enables complete automation of the test lab infrastructure and has the broadest range of data rates (10mb to 128Gb) and media support along with the highest port density per chassis (256 128G ports, 1024 128G ports using 1-4 breakout cables, and 512 32 Gb ports). Installed in a wire-once scenario, ColdFusion enables remote access and control of the test lab’s equipment for fast and reliable set-up and execution. This remote access supports a work-from-home/low contact environment as well as savings in both CapEx and OpEx. </p>\n<p>Using Acentury’s extensive solutions expertise and experience with Tier 1 carriers, Lepton Systems is a complementary set of products that can offer customers a complete solution for lab environments. </p>\n<p>www.leptonsys.com</p>\n<p><img src=\"https://acentury.co/storage/app/media/uploaded-files/Lepton%20logo.png\" alt=\"\" /></p>', '2020-07-02 15:28:23', 1, '2020-07-02 15:28:25', '2020-08-11 17:59:27', NULL, 1),
(21, 2, 'Valkyrie - Xena Networks', 'valkyrie-xena-networks', 'Valkyrie is a full-featured Layer 2-3 stateless traffic generator and analysis platform. It is used to configure and generate Ethernet traffic up at all speeds up to 400GE, and analyze how network devices and services perform in response, making it perfect for most lab-based data-plane test scenarios.', 'Valkyrie is a full-featured Layer 2-3 stateless traffic generator and analysis platform. It is used to configure and generate Ethernet traffic up at all speeds up to 400GE, and analyze how network devices and services perform in response, making it perfect for most lab-based data-plane test scenarios.\r\n\r\nValkyrie offers a choice of two chassis that can be equipped with an extensive range of copper and optical Gigabit Ethernet test modules supporting all Ethernet speeds up to 400GE, including 2.5GE, 5GE, 25GE and 50GE.\r\n\r\nThe chassis and test modules are controlled via ValkyrieManager, a Windows GUI client provided for ad-hoc test execution, and remote management of test equipment located in multiple locations. Also included are standalone applications for automated RFC 2544, Y.1564, RFC 2889 and RFC 3918 testing.\r\n\r\nFinally, Valkyrie includes a command-line-interface (CLI) scripting API with hundreds of scriptable parameters. Any client platform can be used (e.g. Python, Tcl, Bash).\r\n\r\nValkyrie is an award-winning test platform used by hundreds of customers worldwide who value its range of features, ease-of-use, interoperability, and scalability.\r\n\r\n![](https://acentury.co/storage/app/media/uploaded-files/ValkyrieBay%20datasheet.png)', '<p>Valkyrie is a full-featured Layer 2-3 stateless traffic generator and analysis platform. It is used to configure and generate Ethernet traffic up at all speeds up to 400GE, and analyze how network devices and services perform in response, making it perfect for most lab-based data-plane test scenarios.</p>\n<p>Valkyrie offers a choice of two chassis that can be equipped with an extensive range of copper and optical Gigabit Ethernet test modules supporting all Ethernet speeds up to 400GE, including 2.5GE, 5GE, 25GE and 50GE.</p>\n<p>The chassis and test modules are controlled via ValkyrieManager, a Windows GUI client provided for ad-hoc test execution, and remote management of test equipment located in multiple locations. Also included are standalone applications for automated RFC 2544, Y.1564, RFC 2889 and RFC 3918 testing.</p>\n<p>Finally, Valkyrie includes a command-line-interface (CLI) scripting API with hundreds of scriptable parameters. Any client platform can be used (e.g. Python, Tcl, Bash).</p>\n<p>Valkyrie is an award-winning test platform used by hundreds of customers worldwide who value its range of features, ease-of-use, interoperability, and scalability.</p>\n<p><img src=\"https://acentury.co/storage/app/media/uploaded-files/ValkyrieBay%20datasheet.png\" alt=\"\" /></p>', '2020-07-10 01:01:45', 1, '2020-07-11 01:01:01', '2020-07-11 01:03:13', NULL, 0),
(22, 2, 'Vulcan - Xena Networks', 'vulcan-xena-networks', 'Vulcan makes it easy to generate stateful traffic over Ethernet and then analyze how firewalls, wireline & wireless networks, NICs, packet brokers, NAT routers, bandwidth-shapers and so on perform in a wide range of real-world scenarios.', 'Vulcan makes it easy to generate stateful traffic over Ethernet and then analyze how firewalls, wireline & wireless networks, NICs, packet brokers, NAT routers, bandwidth-shapers and so on perform in a wide range of real-world scenarios.\r\n\r\nVulcan is available in two chassis: the high-performance VulcanBay which supports testing up to 40GE with 24 million Concurrent Connections (CC) or 6 million Connections Per Second (CPS) and 7 million Transactions Per Second (TPS). Or the smaller VulcanCompact which can test up to 10GE with 14 million TCP Concurrent Connections (CC), 5 million TCP Connections Per Second (CPS) and 2.8 million Transactions Per Second (TPS) and 500,000 Concurrent TLS Sessions.\r\n\r\nVulcanManager is a free Windows-based application used for configuring, generating and analyzing stateful Ethernet traffic up to 40Gbps. VulcanManager supports TLS 1.2 performance testing e.g. handshakes per second, TLS throughput, concurrent TLS connections, etc., with different cipher suites and certificate key sizes on a DUT that decrypts traffic on one side and encrypts on the other.\r\n\r\nAlso included is VulcanAppMix, a library of application traffic and protocols in pcap format that makes it easy to set up large-scale realistic traffic from various applications, using pre-defined and customizable mix templates.\r\n\r\n![](https://acentury.co/storage/app/media/uploaded-files/VulcanCompact%20datasheet_Page_1.png)\r\n\r\n![](https://acentury.co/storage/app/media/uploaded-files/VulcanCompact%20datasheet_Page_2.png)', '<p>Vulcan makes it easy to generate stateful traffic over Ethernet and then analyze how firewalls, wireline &amp; wireless networks, NICs, packet brokers, NAT routers, bandwidth-shapers and so on perform in a wide range of real-world scenarios.</p>\n<p>Vulcan is available in two chassis: the high-performance VulcanBay which supports testing up to 40GE with 24 million Concurrent Connections (CC) or 6 million Connections Per Second (CPS) and 7 million Transactions Per Second (TPS). Or the smaller VulcanCompact which can test up to 10GE with 14 million TCP Concurrent Connections (CC), 5 million TCP Connections Per Second (CPS) and 2.8 million Transactions Per Second (TPS) and 500,000 Concurrent TLS Sessions.</p>\n<p>VulcanManager is a free Windows-based application used for configuring, generating and analyzing stateful Ethernet traffic up to 40Gbps. VulcanManager supports TLS 1.2 performance testing e.g. handshakes per second, TLS throughput, concurrent TLS connections, etc., with different cipher suites and certificate key sizes on a DUT that decrypts traffic on one side and encrypts on the other.</p>\n<p>Also included is VulcanAppMix, a library of application traffic and protocols in pcap format that makes it easy to set up large-scale realistic traffic from various applications, using pre-defined and customizable mix templates.</p>\n<p><img src=\"https://acentury.co/storage/app/media/uploaded-files/VulcanCompact%20datasheet_Page_1.png\" alt=\"\" /></p>\n<p><img src=\"https://acentury.co/storage/app/media/uploaded-files/VulcanCompact%20datasheet_Page_2.png\" alt=\"\" /></p>', '2020-07-13 14:37:39', 1, '2020-07-13 14:37:30', '2020-07-13 14:46:09', NULL, 0),
(23, 2, '5G Fronthaul Network Testing Considerations', '5g-fronthaul-network-testing-considerations', 'How will service providers offer a supreme user experience in the upcoming #5gtechnology world? #5G fronthaul networks will need a way to test how their equipment and applications cope with network impairments.', 'How will service providers offer a supreme user experience in the upcoming 5G technology world? 5G fronthaul networks will need a way to test how their equipment and applications cope with network impairments. We believe that the best way to assure this is to test rigorously in the lab. Xena Networks latest whitepaper, \'5G Fronthaul Network Testing Considerations\' explains why Ethernet impairment testing is crucial in deploying 5G fronthaul networks, and highlights the protocols that need particular attention when optimizing your equipment or application performance in 5G fronthaul networks.\r\n\r\n[Read the Xena Networks Whitepaper](https://www.xenanetworks.com/whitepaper/5g-fronthaul-network-testing-considerations/).', '<p>How will service providers offer a supreme user experience in the upcoming 5G technology world? 5G fronthaul networks will need a way to test how their equipment and applications cope with network impairments. We believe that the best way to assure this is to test rigorously in the lab. Xena Networks latest whitepaper, \'5G Fronthaul Network Testing Considerations\' explains why Ethernet impairment testing is crucial in deploying 5G fronthaul networks, and highlights the protocols that need particular attention when optimizing your equipment or application performance in 5G fronthaul networks.</p>\n<p><a href=\"https://www.xenanetworks.com/whitepaper/5g-fronthaul-network-testing-considerations/\">Read the Xena Networks Whitepaper</a>.</p>', '2020-08-24 15:29:21', 1, '2020-08-24 15:31:54', '2020-10-29 16:13:48', NULL, 1),
(24, 3, '5G Fronthaul Network Testing Considerations', '5G-fronthaul-article', '5G networks offer lower latency, greater flexibility, and increased bandwidth compared to 4G technology. To deliver these improvements, 5G fronthaul networks use different hardware and networking protocols to those found in previous generation networks.', '<img src=\"https://acentury.co/storage/app/media/5G%20White%20Paper/image--000.png\" width=\"200\">\r\n\r\n\r\nby [Xena Networks](https://xenanetworks.com/)\r\n\r\n**Overview**\r\n\r\n5G networks offer lower latency, greater flexibility, and increased bandwidth compared to 4G technology. To deliver these improvements, 5G fronthaul networks use different hardware and networking protocols to those found in previous generation networks.\r\n\r\nWhile this technology shift delivers more versatile, scalable, and cost-effective networks, moving away\r\nfrom circuit switched networks or leased lines means 5G fronthaul networks are now subject to Ethernet\r\nimpairments at the packet level.\r\n\r\nNetwork Equipment Manufacturers (NEMs), Network Infrastructure Providers (NIPs) and Service Providers\r\n(SPs) responsible for 5G fronthaul networks will need a way to test how their equipment and applications\r\ncope with these network impairments if they want to offer an optimal user experience. We believe that the\r\nbest way to assure this is to test rigorously in the lab—before the network is deployed.\r\n\r\nIn this article, we’ll look at why Ethernet impairment testing is crucial in developing, testing, and\r\ndeploying successful 5G fronthaul networks. We’ll also highlight the protocols that need particular\r\nattention and offer advice on what to consider when optimizing your equipment or application\r\nperformance in 5G fronthaul networks.\r\n\r\n**Why is impairment testing so important for 5G fronthaul networks?**\r\n\r\nWhile moving from 3G to 4G offered an evolution to mobile networks, the move to 5G networks is truly a\r\nrevolution. 5G uses infrastructure and protocols that are fundamentally different from what has come\r\nbefore.\r\n\r\nOne of the major differences is the use of eCPRI (enhanced common public radio interface) over Ethernet\r\npacket switched networks in 5G fronthaul networks instead of CPRI over circuit switched or leased line\r\nnetworks used in 4G. This offers network operators many advantages, including the ability to build and\r\nscale infrastructure on COTS hardware from multiple vendors, and make the most of virtual networking\r\nfunctions.\r\n\r\nHowever, Ethernet comes with networking impairments at the packet level, and it doesn’t natively support\r\nend-to-end timing and synchronization. 5G Ethernet fronthaul networks can use eCPRI to carry control and\r\ndata packets while relying on SyncE (synchronous Ethernet) and PTP (precision time protocol) to\r\nsynchronize timing across the network. \r\n\r\n![](https://acentury.co/storage/app/media/5G%20White%20Paper/image--009.jpg)\r\n\r\nThe changes in 5G architecture mean those responsible for fronthaul networks will be seeing Ethernet\r\nimpairments and face the challenges of synchronizing time over PTP for the first time. This means 5G\r\nNEMs, NIPs and SPs will now need to test how impairment affects their infrastructure, protocols, and\r\napplications. And because the timing requirements in fronthaul networks are strict, these tests are crucial.\r\nOnly by understanding how impairment affects the network can you ensure it delivers an optimal user\r\nexperience.\r\n\r\nThis means that NEMs must test their equipment in non-perfect environments to validate that they’re\r\ncompliant with relevant standards, and to assure that protocols are robust to imperfections like latency,\r\njitter and packet loss.\r\n\r\nThe NIPs will have to stress their network design to make sure that end to end timing is robust to\r\nimperfections like asymmetric delay, packet and link loss. This may be done as part of equipment\r\nacceptance testing or to reassure the SP that the network has sufficient margin in case of sub-optimal\r\noperating conditions.\r\n\r\nThe SPs must take the testing to the lab and understand how their applications perform at the limits of the\r\nSLA they have with their NIP.\r\n\r\nThe most efficient and cost-effective way to ensure your network meets the expectations of users is to\r\nconduct all this testing in your lab before you deploy your network or application into the real world.\r\n\r\n\r\n>\r\n**The importance of repeatable, reliable lab testing**\r\n\r\n>As there are certain networking conditions that will only occur randomly and are difficult to reproduce, there is often no way to reliably or repeatably test impairment in a live network.\r\n\r\n>The only way to truly test and understand how impairment will affect your network is to test in the lab. Doing this requires a reliable, repeatable way to emulate relevant network impairments.\r\n\r\n>By using a network emulator, you can test specific impairments separately and repeatably, and get a true picture of how each part of your network responds to impairments – both separately and when they are combined. Further, the network emulator provides the statistics you need to validate the behavior of your equipment or application\r\n\r\n><span style=\"background-color: #FFFF00\">[Learn more by subscribing to Acentury\'s monthly  newsletter.](https://acentury.co/ca/newsletter-signup-c)</span>\r\n\r\n**What protocols need to be tested?**\r\n\r\n5G networks rely on eCPRI to transfer data across the fronthaul network, and PTP and SyncE to achieve\r\nprecise end-to-end timing. PTP in particular is vulnerable to asymmetric delay and jitter, while eCPRI is\r\nsusceptible to large delays and packet loss. That means they both need thorough testing to ensure the\r\nfronthaul network performs as expected.\r\n\r\n![](https://acentury.co/storage/app/media/5G%20White%20Paper/image--013.png)\r\n\r\n**eCPRI**\r\n\r\nUnlike the proprietary protocols running on CPRI in 4G networks, 5G fronthaul networks use the more\r\nstandardized eCPRI protocol. eCPRI is responsible for transferring user data and controlling data flow\r\nbetween distribution units (DUs) and radio units (RUs). It also controls how data moves between RUs and\r\n5G antennas.\r\n\r\nAny issues with eCPRI can affect data transfer, potentially leading to a loss of user data or control\r\ninformation, lower voice quality, or complete loss of connection. This means eCPRI is vulnerable to network\r\nimpairments.\r\n\r\nAs a crucial component of the fronthaul network, it’s imperative that 5G equipment operators and\r\nmanufacturers rigorously test how eCPRI responds to impairment in their network setups. One example of\r\nthis is to test what happens during networking congestion, where low priority traffic is dropped for shorter\r\nor longer periods of time.\r\n\r\n**Timing protocols**\r\n\r\nIn 5G networks, antennas have dedicated transmission windows. Adjacent antennas must coordinate to\r\nbroadcast within these windows, avoid interference, and ensure proper handover between cell towers.\r\nThat means 5G fronthaul networks have very strict end-to-end timing requirements.\r\n\r\nTwo timing protocols help maintain timing synchronization in 5G fronthaul networks:\r\n \r\n* PTP transmits absolute time and delay data—combining the two to calculate the exact “time of\r\nday” at PTP local clocks.\r\n* SyncE forwards exact frequency information from a SyncE clock master to SyncE slave clocks across\r\nthe network.\r\n\r\nWhile these protocols will be new for fronthaul networks, they are protocols that are well established in\r\nother types of network.\r\n\r\nPTP sends messages across the network that contain timing information. For this to be useful, PTP-aware\r\nnetwork elements must be able to accurately calculate when the PTP Grandmaster clock sent the message,\r\nand how long it took to arrive. Then it can subtract this delay from the time it sees in the PTP message. \r\n\r\n![](https://acentury.co/storage/app/media/5G%20White%20Paper/image--017.png)\r\n\r\nRelying on delay calculation like this means delayed, duplicated, or dropped packets can lead to false\r\nreadings. That means PTP is particularly susceptible to jitter and asymmetric impairment. Uneven\r\nimpairment can have a big impact on how slave clocks understand timing—leading to timing drift in the PTP\r\nslave, and synchronization issues that affect network stability and availability.\r\n\r\nSyncE is also used to synchronize timing in 5G fronthaul networks, but it works differently to PTP. Instead of\r\nsending timing information through Ethernet frames, SyncE transmits information through its signal\r\nfrequency. This means it can’t be impaired by packet defects. However, any testing solution must be able to\r\nforward SyncE to accurately test how 5G fronthaul network equipment operates in different conditions,\r\nand test small frequency offsets to the SyncE clock.\r\n\r\nOnly by rigorously testing impairment in a controlled lab environment can you see exactly how it will\r\nimpact timing protocols and their ability to keep 5G fronthaul networks in sync.\r\n\r\n\r\n**What do I need as part of my test solution?**\r\n\r\nTo truly see the impact jitter, packet drops, delays, duplication, and mis-ordering have on protocols and\r\ncomponents, OEMs and network operators will need a well-defined and repeatable way to emulate\r\nnetwork traffic and impairment effects.\r\nCrucially, solutions are needed that can support easy testing of eCPRI and PTP in 5G fronthaul networks. So,\r\nwhen assessing solutions make sure they can offer:\r\n* Granular control of data flows to be impaired\r\n* The ability to inject jitter, and dropped, delayed, and duplicated packets\r\n* SyncE forwarding between DUs and RUs\r\n* High port density (8 x ports standalone or 48 x ports in a chassis solution)\r\n* Support for 10G and 25G speeds connecting to the DUs and RUs in the 5G fronthaul networks\r\n* Support for 100G for aggregated lines\r\n* Bi-directional traffic and impairment emulation\r\n* Comprehensive scripting and automation features for repeatable testing\r\n* Extensive statistics, so you can measure the impact of impairment\r\n\r\nThese features are crucial for testing how impairment affects the networking protocols and features used\r\nin 5G fronthaul networks\r\n\r\n![](https://acentury.co/storage/app/media/5G%20White%20Paper/image--023.jpg)\r\n\r\n**Want to learn more?**\r\n\r\nStay on top of the 5G and networking industry. Subscribe to Acentury\'s newsletter to receive industry and product innovations news, and insights from industry experts. Delivered monthly, straight to your inbox.\r\n\r\n<span style=\"background-color: #FFFF00\">[>> Sign up now <<](https://acentury.co/ca/newsletter-signup-c)</span>', '<img src=\"https://acentury.co/storage/app/media/5G%20White%20Paper/image--000.png\" width=\"200\">\n<p>by <a href=\"https://xenanetworks.com/\">Xena Networks</a></p>\n<p><strong>Overview</strong></p>\n<p>5G networks offer lower latency, greater flexibility, and increased bandwidth compared to 4G technology. To deliver these improvements, 5G fronthaul networks use different hardware and networking protocols to those found in previous generation networks.</p>\n<p>While this technology shift delivers more versatile, scalable, and cost-effective networks, moving away\nfrom circuit switched networks or leased lines means 5G fronthaul networks are now subject to Ethernet\nimpairments at the packet level.</p>\n<p>Network Equipment Manufacturers (NEMs), Network Infrastructure Providers (NIPs) and Service Providers\n(SPs) responsible for 5G fronthaul networks will need a way to test how their equipment and applications\ncope with these network impairments if they want to offer an optimal user experience. We believe that the\nbest way to assure this is to test rigorously in the lab—before the network is deployed.</p>\n<p>In this article, we’ll look at why Ethernet impairment testing is crucial in developing, testing, and\ndeploying successful 5G fronthaul networks. We’ll also highlight the protocols that need particular\nattention and offer advice on what to consider when optimizing your equipment or application\nperformance in 5G fronthaul networks.</p>\n<p><strong>Why is impairment testing so important for 5G fronthaul networks?</strong></p>\n<p>While moving from 3G to 4G offered an evolution to mobile networks, the move to 5G networks is truly a\nrevolution. 5G uses infrastructure and protocols that are fundamentally different from what has come\nbefore.</p>\n<p>One of the major differences is the use of eCPRI (enhanced common public radio interface) over Ethernet\npacket switched networks in 5G fronthaul networks instead of CPRI over circuit switched or leased line\nnetworks used in 4G. This offers network operators many advantages, including the ability to build and\nscale infrastructure on COTS hardware from multiple vendors, and make the most of virtual networking\nfunctions.</p>\n<p>However, Ethernet comes with networking impairments at the packet level, and it doesn’t natively support\nend-to-end timing and synchronization. 5G Ethernet fronthaul networks can use eCPRI to carry control and\ndata packets while relying on SyncE (synchronous Ethernet) and PTP (precision time protocol) to\nsynchronize timing across the network. </p>\n<p><img src=\"https://acentury.co/storage/app/media/5G%20White%20Paper/image--009.jpg\" alt=\"\" /></p>\n<p>The changes in 5G architecture mean those responsible for fronthaul networks will be seeing Ethernet\nimpairments and face the challenges of synchronizing time over PTP for the first time. This means 5G\nNEMs, NIPs and SPs will now need to test how impairment affects their infrastructure, protocols, and\napplications. And because the timing requirements in fronthaul networks are strict, these tests are crucial.\nOnly by understanding how impairment affects the network can you ensure it delivers an optimal user\nexperience.</p>\n<p>This means that NEMs must test their equipment in non-perfect environments to validate that they’re\ncompliant with relevant standards, and to assure that protocols are robust to imperfections like latency,\njitter and packet loss.</p>\n<p>The NIPs will have to stress their network design to make sure that end to end timing is robust to\nimperfections like asymmetric delay, packet and link loss. This may be done as part of equipment\nacceptance testing or to reassure the SP that the network has sufficient margin in case of sub-optimal\noperating conditions.</p>\n<p>The SPs must take the testing to the lab and understand how their applications perform at the limits of the\nSLA they have with their NIP.</p>\n<p>The most efficient and cost-effective way to ensure your network meets the expectations of users is to\nconduct all this testing in your lab before you deploy your network or application into the real world.</p>\n<blockquote>\n<p><strong>The importance of repeatable, reliable lab testing</strong></p>\n<p>As there are certain networking conditions that will only occur randomly and are difficult to reproduce, there is often no way to reliably or repeatably test impairment in a live network.</p>\n<p>The only way to truly test and understand how impairment will affect your network is to test in the lab. Doing this requires a reliable, repeatable way to emulate relevant network impairments.</p>\n<p>By using a network emulator, you can test specific impairments separately and repeatably, and get a true picture of how each part of your network responds to impairments – both separately and when they are combined. Further, the network emulator provides the statistics you need to validate the behavior of your equipment or application</p>\n<p><span style=\"background-color: #FFFF00\"><a href=\"https://acentury.co/ca/newsletter-signup-c\">Learn more by subscribing to Acentury\'s monthly  newsletter.</a></span></p>\n</blockquote>\n<p><strong>What protocols need to be tested?</strong></p>\n<p>5G networks rely on eCPRI to transfer data across the fronthaul network, and PTP and SyncE to achieve\nprecise end-to-end timing. PTP in particular is vulnerable to asymmetric delay and jitter, while eCPRI is\nsusceptible to large delays and packet loss. That means they both need thorough testing to ensure the\nfronthaul network performs as expected.</p>\n<p><img src=\"https://acentury.co/storage/app/media/5G%20White%20Paper/image--013.png\" alt=\"\" /></p>\n<p><strong>eCPRI</strong></p>\n<p>Unlike the proprietary protocols running on CPRI in 4G networks, 5G fronthaul networks use the more\nstandardized eCPRI protocol. eCPRI is responsible for transferring user data and controlling data flow\nbetween distribution units (DUs) and radio units (RUs). It also controls how data moves between RUs and\n5G antennas.</p>\n<p>Any issues with eCPRI can affect data transfer, potentially leading to a loss of user data or control\ninformation, lower voice quality, or complete loss of connection. This means eCPRI is vulnerable to network\nimpairments.</p>\n<p>As a crucial component of the fronthaul network, it’s imperative that 5G equipment operators and\nmanufacturers rigorously test how eCPRI responds to impairment in their network setups. One example of\nthis is to test what happens during networking congestion, where low priority traffic is dropped for shorter\nor longer periods of time.</p>\n<p><strong>Timing protocols</strong></p>\n<p>In 5G networks, antennas have dedicated transmission windows. Adjacent antennas must coordinate to\nbroadcast within these windows, avoid interference, and ensure proper handover between cell towers.\nThat means 5G fronthaul networks have very strict end-to-end timing requirements.</p>\n<p>Two timing protocols help maintain timing synchronization in 5G fronthaul networks:</p>\n<ul>\n<li>PTP transmits absolute time and delay data—combining the two to calculate the exact “time of\nday” at PTP local clocks.</li>\n<li>SyncE forwards exact frequency information from a SyncE clock master to SyncE slave clocks across\nthe network.</li>\n</ul>\n<p>While these protocols will be new for fronthaul networks, they are protocols that are well established in\nother types of network.</p>\n<p>PTP sends messages across the network that contain timing information. For this to be useful, PTP-aware\nnetwork elements must be able to accurately calculate when the PTP Grandmaster clock sent the message,\nand how long it took to arrive. Then it can subtract this delay from the time it sees in the PTP message. </p>\n<p><img src=\"https://acentury.co/storage/app/media/5G%20White%20Paper/image--017.png\" alt=\"\" /></p>\n<p>Relying on delay calculation like this means delayed, duplicated, or dropped packets can lead to false\nreadings. That means PTP is particularly susceptible to jitter and asymmetric impairment. Uneven\nimpairment can have a big impact on how slave clocks understand timing—leading to timing drift in the PTP\nslave, and synchronization issues that affect network stability and availability.</p>\n<p>SyncE is also used to synchronize timing in 5G fronthaul networks, but it works differently to PTP. Instead of\nsending timing information through Ethernet frames, SyncE transmits information through its signal\nfrequency. This means it can’t be impaired by packet defects. However, any testing solution must be able to\nforward SyncE to accurately test how 5G fronthaul network equipment operates in different conditions,\nand test small frequency offsets to the SyncE clock.</p>\n<p>Only by rigorously testing impairment in a controlled lab environment can you see exactly how it will\nimpact timing protocols and their ability to keep 5G fronthaul networks in sync.</p>\n<p><strong>What do I need as part of my test solution?</strong></p>\n<p>To truly see the impact jitter, packet drops, delays, duplication, and mis-ordering have on protocols and\ncomponents, OEMs and network operators will need a well-defined and repeatable way to emulate\nnetwork traffic and impairment effects.\nCrucially, solutions are needed that can support easy testing of eCPRI and PTP in 5G fronthaul networks. So,\nwhen assessing solutions make sure they can offer:</p>\n<ul>\n<li>Granular control of data flows to be impaired</li>\n<li>The ability to inject jitter, and dropped, delayed, and duplicated packets</li>\n<li>SyncE forwarding between DUs and RUs</li>\n<li>High port density (8 x ports standalone or 48 x ports in a chassis solution)</li>\n<li>Support for 10G and 25G speeds connecting to the DUs and RUs in the 5G fronthaul networks</li>\n<li>Support for 100G for aggregated lines</li>\n<li>Bi-directional traffic and impairment emulation</li>\n<li>Comprehensive scripting and automation features for repeatable testing</li>\n<li>Extensive statistics, so you can measure the impact of impairment</li>\n</ul>\n<p>These features are crucial for testing how impairment affects the networking protocols and features used\nin 5G fronthaul networks</p>\n<p><img src=\"https://acentury.co/storage/app/media/5G%20White%20Paper/image--023.jpg\" alt=\"\" /></p>\n<p><strong>Want to learn more?</strong></p>\n<p>Stay on top of the 5G and networking industry. Subscribe to Acentury\'s newsletter to receive industry and product innovations news, and insights from industry experts. Delivered monthly, straight to your inbox.</p>\n<p><span style=\"background-color: #FFFF00\"><a href=\"https://acentury.co/ca/newsletter-signup-c\">&gt;&gt; Sign up now &lt;&lt;</a></span></p>', '2020-10-06 15:46:26', 1, '2020-09-29 20:56:41', '2020-10-08 14:46:39', NULL, 0),
(25, 3, 'Acentury Inc. Named One of Canada’s Top Growing Companies 2020 by The Globe and Mail', 'top-growing-2020', 'We are pleased to announce that Acentury Inc. has been recognized once again within the Globe and Mail’s Report on Business second-annual ranking of Canada’s Top Growing Companies. With a 148% 3-year revenue growth, Acentury Inc. ranks 260th on the list.', 'Richmond Hill, Canada, October 5th, 2020 - We are pleased to announce that Acentury Inc. has been recognized once again within the Globe and Mail’s Report on Business second-annual ranking of Canada’s Top Growing Companies. With a 148% 3-year revenue growth, Acentury Inc. ranks 260th on the list.\r\n\r\nSince our founding in 2007, Acentury Inc. has been committed to delivering best-in-class solutions to the wireless and wireline industry. We continue to bring innovation to the industry through our ever developing portfolio of companies and products such as Radiocomm, SynMatrix, and LAMTA. We are proud of this recognition and thankful to our clients and partners.\r\n\r\nLaunched in 2019, the Canada’s Top Growing Companies editorial ranking aims to celebrate entrepreneurial achievement in Canada by identifying and amplifying the success of growth-minded, independent businesses in Canada. It is a voluntary program; companies had to complete an in-depth application process in order to qualify. In total, 400 companies earned a spot on this year’s ranking.  \r\n\r\nThe full list of 2020 winners, and accompanying editorial coverage, is published in the October issue of Report on Business magazine—out now—and online at [tgam.ca/TopGrowing](http://tgam.ca/TopGrowing). \r\n\r\n“The stories of Canada’s Top Growing Companies are worth telling at any time, but are especially relevant in the wake of COVID-19 pandemic,” says James Cowan, Editor of Report on Business magazine. “As businesses work to rebuild the economy, their resilience and innovation make for essential reading.”\r\n\r\n“Any business leader seeking inspiration should look no further than the 400 businesses on this year’s Report on Business ranking of Canada’s Top Growing Companies,” says Phillip Crawley, Publisher and CEO of The Globe and Mail. “Their growth helps to make Canada a better place, and we are proud to bring their stories to our readers.” \r\n\r\n###### About Acentury\r\nAcentury Inc. was founded in 2007 and began by selling test and measurement solutions across North America. Over the years we have built and cultivated strong relationships with global-leading partners; as a leading solution provider today, we take pride in our ability to deliver end-to-end services to help support our customers during and after installation. We launched [Radiocomm](https://www.radiocomm.ca/) in 2011, our products division that manufacturers and supplies passive network components. In 2019, we launched our subsidiary company division, [SynMatrix Technologies Inc.](https://www.synmatrixtech.com/), a cloud-based RF design platform to help accelerate the component design and manufacturing process. With a history of success innovating and launching products, Acentury will continue to invest, upgrade and release new products and features in the global marketplace.\r\n\r\n\r\n###### About the Globe and Mail\r\nThe Globe and Mail is Canada’s foremost news media company, leading the national discussion and causing policy change through brave and independent journalism since 1844. With award-winning coverage of business, politics and national affairs, The Globe and Mail newspaper reaches 5.9 million readers every week in print or digital formats, and Report on Business magazine reaches 2.1 million readers in print and digital every issue. The Globe and Mail’s investment in innovative data science means that as the world continues to change, so does The Globe. The Globe and Mail is owned by Woodbridge, the investment arm of the Thomson family.\r\n\r\n<br>\r\n**Media Contact**\r\n<br>Judith Wang\r\n<br>Acentury Inc.\r\n<br>Marketing Associate\r\n<br>judith.wang@acentury.co', '<p>Richmond Hill, Canada, October 5th, 2020 - We are pleased to announce that Acentury Inc. has been recognized once again within the Globe and Mail’s Report on Business second-annual ranking of Canada’s Top Growing Companies. With a 148% 3-year revenue growth, Acentury Inc. ranks 260th on the list.</p>\n<p>Since our founding in 2007, Acentury Inc. has been committed to delivering best-in-class solutions to the wireless and wireline industry. We continue to bring innovation to the industry through our ever developing portfolio of companies and products such as Radiocomm, SynMatrix, and LAMTA. We are proud of this recognition and thankful to our clients and partners.</p>\n<p>Launched in 2019, the Canada’s Top Growing Companies editorial ranking aims to celebrate entrepreneurial achievement in Canada by identifying and amplifying the success of growth-minded, independent businesses in Canada. It is a voluntary program; companies had to complete an in-depth application process in order to qualify. In total, 400 companies earned a spot on this year’s ranking.  </p>\n<p>The full list of 2020 winners, and accompanying editorial coverage, is published in the October issue of Report on Business magazine—out now—and online at <a href=\"http://tgam.ca/TopGrowing\">tgam.ca/TopGrowing</a>. </p>\n<p>“The stories of Canada’s Top Growing Companies are worth telling at any time, but are especially relevant in the wake of COVID-19 pandemic,” says James Cowan, Editor of Report on Business magazine. “As businesses work to rebuild the economy, their resilience and innovation make for essential reading.”</p>\n<p>“Any business leader seeking inspiration should look no further than the 400 businesses on this year’s Report on Business ranking of Canada’s Top Growing Companies,” says Phillip Crawley, Publisher and CEO of The Globe and Mail. “Their growth helps to make Canada a better place, and we are proud to bring their stories to our readers.” </p>\n<h6>About Acentury</h6>\n<p>Acentury Inc. was founded in 2007 and began by selling test and measurement solutions across North America. Over the years we have built and cultivated strong relationships with global-leading partners; as a leading solution provider today, we take pride in our ability to deliver end-to-end services to help support our customers during and after installation. We launched <a href=\"https://www.radiocomm.ca/\">Radiocomm</a> in 2011, our products division that manufacturers and supplies passive network components. In 2019, we launched our subsidiary company division, <a href=\"https://www.synmatrixtech.com/\">SynMatrix Technologies Inc.</a>, a cloud-based RF design platform to help accelerate the component design and manufacturing process. With a history of success innovating and launching products, Acentury will continue to invest, upgrade and release new products and features in the global marketplace.</p>\n<h6>About the Globe and Mail</h6>\n<p>The Globe and Mail is Canada’s foremost news media company, leading the national discussion and causing policy change through brave and independent journalism since 1844. With award-winning coverage of business, politics and national affairs, The Globe and Mail newspaper reaches 5.9 million readers every week in print or digital formats, and Report on Business magazine reaches 2.1 million readers in print and digital every issue. The Globe and Mail’s investment in innovative data science means that as the world continues to change, so does The Globe. The Globe and Mail is owned by Woodbridge, the investment arm of the Thomson family.</p>\n<p><br>\n<strong>Media Contact</strong>\n<br>Judith Wang\n<br>Acentury Inc.\n<br>Marketing Associate\n<br>judith.wang@acentury.co</p>', '2020-10-05 14:13:21', 1, '2020-10-05 14:03:40', '2020-10-05 14:15:02', NULL, 1),
(26, 3, 'Acentury Inc. Named One of Canada’s Fastest-Growing Companies by the 2020 Growth List', 'acentury-inc-named-one-canadas-fastest-growing-companies-2020-growth-list', 'Canadian Business today ranked Acentury Inc. No.\r\n230 on the 32nd annual Growth List, the definitive ranking of Canada’s Fastest-Growing\r\nCompanies.', 'Canadian Business today ranked Acentury Inc. No.\r\n230 on the 32nd annual Growth List, the definitive ranking of Canada’s Fastest-Growing\r\nCompanies. Produced by Canada’s premier business and current affairs media brands, the\r\nGrowth List ranks Canadian businesses on five-year revenue growth. Growth List winners\r\nare profiled in a special print issue of Canadian Business published with Maclean’s magazine and online at CanadianBusiness.com and GrowthList.ca.\r\n\r\nAcentury Inc. made the 2020 Growth List with five-year revenue growth of 320%.\r\n\r\n“The companies on the 2020 Growth List are really exceptional. Their stories are a masterclass in how to survive when the economy throws a curveball. Despite turbulence, the 2020 Growth List companies showed resilience, spirit and, most importantly, empathy and strong leadership,” says Susan Grimbly, Growth List Editor. “As we celebrate over 30 years of the Canada’s Fastest-Growing Companies program, it’s encouraging to see that the heart of Canada’s entrepreneurial community beats strong, even in tough times.”\r\n\r\n[See the list here.](https://www.canadianbusiness.com/growth-list-2020/)\r\n\r\n**About the Growth List**<br>\r\nFor over 30 years, the Growth List ranking of Canada’s Fastest-Growing Companies (formerly the Growth 500) has been Canada’s most respected and influential ranking of entrepreneurial achievement. Originally developed by PROFIT and now published in a special Growth\r\nList print issue of Canadian Business (packaged with the December issue of Maclean’s magazine) and online at GrowthList.ca and CanadianBusiness.com, the Growth List ranks\r\nCanadian companies on five-year revenue growth, and the Startup List ranks Canadian\r\nnew growth companies on two-year revenue growth. For more information on the ranking,\r\nvisit GrowthList.ca.\r\n\r\n**About Canadian Business**<br>\r\nFounded in 1928, Canadian Business is the longest-serving business publication in the\r\ncountry. It has fuelled the success of Canada’s business elite and, through the Growth List\r\nranking, celebrates leadership, innovation, business strategy and management tactics.\r\nLearn more at CanadianBusiness.com.', '<p>Canadian Business today ranked Acentury Inc. No.\n230 on the 32nd annual Growth List, the definitive ranking of Canada’s Fastest-Growing\nCompanies. Produced by Canada’s premier business and current affairs media brands, the\nGrowth List ranks Canadian businesses on five-year revenue growth. Growth List winners\nare profiled in a special print issue of Canadian Business published with Maclean’s magazine and online at CanadianBusiness.com and GrowthList.ca.</p>\n<p>Acentury Inc. made the 2020 Growth List with five-year revenue growth of 320%.</p>\n<p>“The companies on the 2020 Growth List are really exceptional. Their stories are a masterclass in how to survive when the economy throws a curveball. Despite turbulence, the 2020 Growth List companies showed resilience, spirit and, most importantly, empathy and strong leadership,” says Susan Grimbly, Growth List Editor. “As we celebrate over 30 years of the Canada’s Fastest-Growing Companies program, it’s encouraging to see that the heart of Canada’s entrepreneurial community beats strong, even in tough times.”</p>\n<p><a href=\"https://www.canadianbusiness.com/growth-list-2020/\">See the list here.</a></p>\n<p><strong>About the Growth List</strong><br>\nFor over 30 years, the Growth List ranking of Canada’s Fastest-Growing Companies (formerly the Growth 500) has been Canada’s most respected and influential ranking of entrepreneurial achievement. Originally developed by PROFIT and now published in a special Growth\nList print issue of Canadian Business (packaged with the December issue of Maclean’s magazine) and online at GrowthList.ca and CanadianBusiness.com, the Growth List ranks\nCanadian companies on five-year revenue growth, and the Startup List ranks Canadian\nnew growth companies on two-year revenue growth. For more information on the ranking,\nvisit GrowthList.ca.</p>\n<p><strong>About Canadian Business</strong><br>\nFounded in 1928, Canadian Business is the longest-serving business publication in the\ncountry. It has fuelled the success of Canada’s business elite and, through the Growth List\nranking, celebrates leadership, innovation, business strategy and management tactics.\nLearn more at CanadianBusiness.com.</p>', '2020-10-15 16:06:58', 1, '2020-10-15 16:06:54', '2020-10-28 14:10:57', NULL, 1);
INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `metadata`, `featured`) VALUES
(27, 3, 'Open RAN vs. O-RAN Communities, and their Upcoming Challenges', 'open-ran-vs-o-ran-communities', 'In today’s discussion we chat about some of the differences between the Open RAN and O-RAN communities and some of the challenges both communities face in the very near future.', '##### The Acentury Channel Episode #1: Open RAN vs. O-RAN Communities, and their Upcoming Challenges\r\n\r\nIn today’s discussion we chat about some of the differences between the Open RAN and O-RAN communities and some of the challenges both communities face in the very near future.  \r\n\r\n**Host:** David Shin, Marketing  \r\n**Guest:** Leo Lin, VP Solutions Development, Acentury Inc. \r\n\r\n##### Listen Now\r\n \r\n* [Spotify](https://open.spotify.com/episode/2KSNT1cY9unJngk4Q09gnI)\r\n* [YouTube](https://youtu.be/0g7AH1nitZA)\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0g7AH1nitZA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n##### About the Acentury Channel:\r\n\r\nThe Acentury Channel hosts open discussions with in-house industry experts about the wireless and wireline networking industry. We plan to cover a wide array of topics and provide our insight in latest trends, news, and product innovations. \r\n\r\n \r\n\r\n---\r\n\r\n\r\n[David] Greetings, and welcome to the Acentury channel. My name is David Shin, I am your host for today\'s session. In today’s topic of discussion we cover the Open RAN and O-RAN communities. We weigh in on the differences, what they are and their mandates, and provide some insight on some of the challenges the open communities face.  \r\n\r\nToday we have Leo Lin, VP of Solutions Development from Acentury Inc. We catch up Leo as he begins the conversation by explaining the differences between the Open Ran and ORAN communities. \r\n\r\n[Leo] There are two topics here, right? Open RAN and O-RAN. I know a lot of people are probably confused between these two. Open RAN is formed by a lot of small vendors plus some major players on the Internet side like for example, Facebook... not the typical telecom equipment vendors like Ericsson, Nokia, Huawei, ZTE, right? O-RAN is different. O-RAN was originally two organizations. One was led by AT&T another was led by China Mobile. Then, a few years ago, both organizations sat down together and said, “Why don’t we just standardize with one.” Then they formed O-RAN. \r\n\r\n The O-RAN members include most of the operators and major equipment operators including Ericsson, Huawei, Nokia, ZTE, and other big telecom equipment vendors. For those members in the O-RAN, they typically don’t prefer the Open RAN solution. Why Open RAN? A lot of operators are looking at Open RAN to try to push down the equipment costs. \r\n\r\n[David] Right, so it’s a capex discussion. \r\n\r\n[Leo] A capex discussion, yea. \r\n\r\n[David] So, I guess what we’re talking about here is you have your typical equipment vendors, the Nokia’s of the world, the Ericsson’s, the Huawei’s, they have proprietary technology for the RAN. And now what we’re talking about is making it a little bit more open. Removing that front-end capital cost, making it cheaper. And that’s the overall goal, right? \r\n\r\n[Leo] Mhm, yea. From the operator point of view, typically they don’t want to be controlled by those major equipment vendors like Ericsson, Huawei, ZTE, or Nokia. So (this is their purpose) with Open RAN. They want to deal with as many vendors as possible, right? If they can introduce a lot of small players, they can significantly drive down the costs. \r\n\r\nBut the problem is, small vendors, don’t have enough resources to develop carrier-grade solutions. The five 9s [availability]. \r\n\r\n[David] Right. \r\n\r\n[Leo]. So that’s the challenge for sure. If you’re talking about this network, there are multiple routes here. First you have the equipment supplier. And second you have the system integrator. Because right now major equipment vendors actually play the role as system integrator. So that becomes the problem regarding Open RAN. If those small equipment vendors supply a lot of network elements, the operator will have to ask the question, who is going to integrate all the elements together? \r\n\r\n[David] So, we have the [O-RAN] community that appears to be founded by the equipment vendors as well as the operators. So, there’s a mandate to make it more open to drive down costs. Then you have the Open RAN community which is driven by smaller players. Facebook, and I believe they also have one of the telcos as well. Similar mandate, right? We say it’s the same thing. It’ll make it more open, drive the costs down, make things more interoperable, and then obviously drive innovation. That’s the intent of open technologies anyway, to make it more open to encourage more players to be involved to accelerate innovation and everybody wins. So what you’re saying is the difference is basically the members, right? So it sounds like your traditional equipment vendors and operators appear to be aligned more so on the [O-RAN] side, and on the Open RAN side, you have other up and coming and newer players that are trying to get into the marketplace. And I think the point you are bringing up is (firstly) building carrier-grade type services and solutions, but also integrate all those individual elements together, right?  \r\n\r\n[Leo] Yes. \r\n\r\n[David] I think that if I were to look at this analogously, ten years ago, the OpenStack community was part of your infrastructure in IT. It was your open source, virtualized tool that could virtualize workloads. It sounds very similar in terms of its initiative. It was trying to drive down cost and capex. But ultimately the opex could supersede the capex to begin with. It’s a very interesting situation and I feel like this is not something that’s going to get solved overnight. Who is going to be that integrator? Who is going to support that network? I think this is the biggest challenge for both communities. \r\n\r\n[Leo] I will say, all the operators, if they really want to move to the Open RAN direction, they really need to ask themselves, are we ready yet? Then, are we able to integrate all those network elements from different equipment vendors? Are we able to do that? And another question is, once we deploy this kind of solution on the network there will be many, many different equipment vendors on the network. Are you ready to do the troubleshooting when something happens? It’s really tricky. Because right now all the operators, they only have, (for example) a couple of network suppliers. For example, they’ll just stay with Ericsson, Huawei, Nokia, or Cisco. Maybe four or five major equipment vendors. So, once they realize there is a problem, and they start troubleshooting, typically it’s easy to… \r\n\r\n[David] Point the finger. [laugh] \r\n\r\n[Leo] Point the finger, yea. [laugh] And second, they have been doing this for many, many years, right? They’ve gotten used to it already. They need to get themselves ready before they really want to move to this direction. I don’t think they’ll be able to do it right now but if they have a plan for the next five, ten years to get themselves ready for this kind of thing, then they can… For these five, ten years, for sure they need to spend a lot of money to change their own procedure internally, and second they need to provide the proper training to their engineers, (their) employees. Right now, the employees, engineers, I don’t think they’re ready yet.  \r\n\r\n[David] And I think there’s another dimension to all this. Yes, you need someone to integrate all these pieces. The change management from a management perspective is also a challenge. How to support that as you go forward, is also a challenge. But I think the other dimension to all this is the 5G network. I mean, we’re talking about X (multiple) order more network elements, right? I mean how much more X are we dealing with the 5G network? So not only do we have to deal with all the legacy issues that, let’s just say, proprietary technologies have solved, but we also have to deal with more network elements. And it would require a lot more management, automation, control, and if I were to add another dimension to all of this, security. So, with all these different elements, all these different vendors, all these different open protocols now, that same integrator needs to be cognizant of the security policies across everything. Would you agree? \r\n\r\n[Leo] Yes, and since you just mentioned the legacy network. It’s another major concern as well, right?  All those major equipment vendors, they spend years on legacy network technology. The voice, the traditional switch, and also the 3G/4G stuff, right? And for those members in the Open RAN community, they typically focus on 5G only, or a little bit on 4G, because they don’t want to deal with the very old technology. But unfortunately, all major operators, they have a huge network with legacy technology. So how to do this kind of thing. It’s really a challenge for those Open RAN members. \r\n\r\n[David] Yes, I think that this concept of legacy technology, and how you balance between that and new technology, and in this case 5G, new radio, is a major challenge. It’s almost easier if it was greenfield, but it’s not. Many operators have to deal with different problems. Like I think I read, and you can correct me if I’m wrong, some of the integration points are different. So in China for example, they’re not trying to integrate with a 4G core like they do here (in Canada). So they’ve invested a significant amount to start from scratch. But in our case, to deploy our 5G network, we are trying to integrate it to the 4G core, if I’m not mistaken.  \r\n\r\n[Leo] Yes, you’re right. \r\n\r\n[David] So there’s different challenges for different operators in different regions. I will say though, conceptually, it would be fantastic for an open community to work, whether it’s O-RAN or Open RAN.If someone can make it work, and it is possible, then that’s fantastic. I think it would be a benefit for everyone. But right now, I think it’s going to take time. And the good news is, I think it’s a great opportunity for new players, new companies to get involved and help with this problem. Help with the deployment of a network, help with the automation problem, help with the management problem. I mean there’s no time in our history, I mean, this is sort of the last frontier. We saw it with OpenStack with your classic IT workloads but now it’s starting to spill into the mobile networks. \r\n\r\n[Leo] Yup. And actually, if you look at the Open RAN situation globally, there are two, we can say, tier 1 operators: there are only two tier 1 operators that actually deployed the network. One is the Dish networks (in US), another one is Rakuten (in Japan). But if you look at both, they are both greenfield operators. So they are building the 5G network only. They don’t have the legacy. For all those traditional operators, since they have huge legacy networks, if they want to use Open RAN, the problem is that they have to do interoperability testing between the Open RAN 5G solution and the legacy 3G/4G solution. That means for those small equipment vendors, they (will) still have to deal with Ericsson, Huawei, and ZTE. (But) they don’t have any reason to help them. Because they’re ‘sharpening the knife’ for myself? I (wouldn’t) do that. [laugh] \r\n\r\n[David] [laugh] Right, right. \r\n\r\n[Leo] So somehow the operator also needs to figure out how to convince those legacy equipment vendors to work on this kind of thing, right. How to do that? I don’t know. It may be really challenging. \r\n\r\n[David] It’s funny how you say the sharpen the old knife here. [laugh] \r\n\r\n[Leo] [laugh] \r\n\r\n[David] If you were to step back- \r\n\r\n[Leo] That’s the reality right? \r\n\r\n[David] It is, for sure. The Ericsson’s, Huawei’s, Nokia’s, you step back and look: Why would they help. I mean I’m sure they have their reasons and I’m sure they have many different schemes in mind. If I were to look at again, taking the OpenStack example, you have someone like a RedHat that takes a certain distribution and makes sure that they can support it and sell it to enterprises and telcos. So there’s an example of, let’s say an integrator that figures out what to do there. And I imagine there’s going to be someone similar here. And then similarly, I think a lot of people in that same space are turning to the Googles and Amazons of the world because you just cannot develop and manage as quickly as they can. So at the end of the day I think there is certainly opportunities coming forward in the future. It’ll be an interesting time for sure.  \r\n\r\n[Leo] Mhm, yup. And another factor will be this: Because I know all operators, they have been using the OpenStack software for a long, long time, I think 10 years right? Like RedHat. So they can do it this way right, RedHat, the software itself is free. For example, for personal use, I can download RedHat Linux online and I can install it by myself, I can do it by myself and everything. Take the operator in Canada, I know a lot of them have been using this for years, but at the same time they purchase the service from RedHat, that’s also very expensive as well. Although the software itself is free, how many dollars they spend purchasing the service from RedHat, and how many resources they spend internally. Training, whatever, how many engineers they spend on this OpenStack stuff. They can compare the costs. \r\n\r\n[David] For sure, I feel like we’ve seen this movie before. You know, it first started with IT workloads and now this. And my sources tell me, I believe that really the only big players in OpenStack now are probably in telcos. I don’t think any of the major enterprises, and there may be a few, are playing in the space. They’re just going straight to the major cloud providers right now. I think they’re going to have a nice little moat for those types of things and who knows what’s going to happen now with the RAN, but we’ll see. \r\n\r\n[Leo] It’ll be a very, very similar situation. \r\n\r\n[David] I think so too. \r\n\r\n[Leo] If we use Open RAN solution, yea for sure you’ll save a lot of money on hardware or maybe the equipment itself. You save money there, but at the same time you jack up a lot of costs on the service you need, integration or maintenance or this kind of thing. Finally, you combine both numbers: capex and opex, probably it will be similar. If it’s really similar, then why should we go to Open RAN right? We’ll just stay with the existing equipment vendor that’s very comfortable. The costs will be similar, what’s the difference? There’s no point. \r\n\r\n[David] Right, and then of course there’s the security dimension that also needs to be played out but listen Leo, I wanted to thank you for taking the time today. I think it was a pretty enjoyable conversation. \r\n\r\n[Leo] And another thing you’ve probably realized right, I think a few months back, Nokia joined the Open RAN forum.  \r\n\r\n[David] Oh, interesting. \r\n\r\n[Leo] The reason I observe, I think, Nokia lost a huge opportunity in China for the RAN, right? They lost all three major operators there: China Mobile, China Telecom, and China Unicom. They got zero RAN business. That’s one reason, and second, I think last month, they lost Verizon in the US. They lost to Samsung. That is probably the major reason why Nokia joined the Open RAN. They’re kind of behind their competitors like Ericsson and Huawei, I guess that’s part of the reason, for sure. People in Nokia won’t say that – (but) that’s my observation. \r\n\r\n[David] No, well, those appear to be clear facts and thank you for bringing that up before we come to a close today. I think that’s a very interesting fact in the industry that’s come about. Ok, Leo, I wanted to again thank you for your time, thanks for chatting, and I think we’ll definitely do this again. This was a fun little discussion.  \r\n\r\n[Leo] Ok. \r\n\r\n[David] Ok, thanks so much Leo. Take care.', '<h5>The Acentury Channel Episode #1: Open RAN vs. O-RAN Communities, and their Upcoming Challenges</h5>\n<p>In today’s discussion we chat about some of the differences between the Open RAN and O-RAN communities and some of the challenges both communities face in the very near future.  </p>\n<p><strong>Host:</strong> David Shin, Marketing<br />\n<strong>Guest:</strong> Leo Lin, VP Solutions Development, Acentury Inc. </p>\n<h5>Listen Now</h5>\n<ul>\n<li><a href=\"https://open.spotify.com/episode/2KSNT1cY9unJngk4Q09gnI\">Spotify</a></li>\n<li><a href=\"https://youtu.be/0g7AH1nitZA\">YouTube</a></li>\n</ul>\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0g7AH1nitZA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\n<h5>About the Acentury Channel:</h5>\n<p>The Acentury Channel hosts open discussions with in-house industry experts about the wireless and wireline networking industry. We plan to cover a wide array of topics and provide our insight in latest trends, news, and product innovations. </p>\n<hr />\n<p>[David] Greetings, and welcome to the Acentury channel. My name is David Shin, I am your host for today\'s session. In today’s topic of discussion we cover the Open RAN and O-RAN communities. We weigh in on the differences, what they are and their mandates, and provide some insight on some of the challenges the open communities face.  </p>\n<p>Today we have Leo Lin, VP of Solutions Development from Acentury Inc. We catch up Leo as he begins the conversation by explaining the differences between the Open Ran and ORAN communities. </p>\n<p>[Leo] There are two topics here, right? Open RAN and O-RAN. I know a lot of people are probably confused between these two. Open RAN is formed by a lot of small vendors plus some major players on the Internet side like for example, Facebook... not the typical telecom equipment vendors like Ericsson, Nokia, Huawei, ZTE, right? O-RAN is different. O-RAN was originally two organizations. One was led by AT&amp;T another was led by China Mobile. Then, a few years ago, both organizations sat down together and said, “Why don’t we just standardize with one.” Then they formed O-RAN. </p>\n<p>The O-RAN members include most of the operators and major equipment operators including Ericsson, Huawei, Nokia, ZTE, and other big telecom equipment vendors. For those members in the O-RAN, they typically don’t prefer the Open RAN solution. Why Open RAN? A lot of operators are looking at Open RAN to try to push down the equipment costs. </p>\n<p>[David] Right, so it’s a capex discussion. </p>\n<p>[Leo] A capex discussion, yea. </p>\n<p>[David] So, I guess what we’re talking about here is you have your typical equipment vendors, the Nokia’s of the world, the Ericsson’s, the Huawei’s, they have proprietary technology for the RAN. And now what we’re talking about is making it a little bit more open. Removing that front-end capital cost, making it cheaper. And that’s the overall goal, right? </p>\n<p>[Leo] Mhm, yea. From the operator point of view, typically they don’t want to be controlled by those major equipment vendors like Ericsson, Huawei, ZTE, or Nokia. So (this is their purpose) with Open RAN. They want to deal with as many vendors as possible, right? If they can introduce a lot of small players, they can significantly drive down the costs. </p>\n<p>But the problem is, small vendors, don’t have enough resources to develop carrier-grade solutions. The five 9s [availability]. </p>\n<p>[David] Right. </p>\n<p>[Leo]. So that’s the challenge for sure. If you’re talking about this network, there are multiple routes here. First you have the equipment supplier. And second you have the system integrator. Because right now major equipment vendors actually play the role as system integrator. So that becomes the problem regarding Open RAN. If those small equipment vendors supply a lot of network elements, the operator will have to ask the question, who is going to integrate all the elements together? </p>\n<p>[David] So, we have the [O-RAN] community that appears to be founded by the equipment vendors as well as the operators. So, there’s a mandate to make it more open to drive down costs. Then you have the Open RAN community which is driven by smaller players. Facebook, and I believe they also have one of the telcos as well. Similar mandate, right? We say it’s the same thing. It’ll make it more open, drive the costs down, make things more interoperable, and then obviously drive innovation. That’s the intent of open technologies anyway, to make it more open to encourage more players to be involved to accelerate innovation and everybody wins. So what you’re saying is the difference is basically the members, right? So it sounds like your traditional equipment vendors and operators appear to be aligned more so on the [O-RAN] side, and on the Open RAN side, you have other up and coming and newer players that are trying to get into the marketplace. And I think the point you are bringing up is (firstly) building carrier-grade type services and solutions, but also integrate all those individual elements together, right?  </p>\n<p>[Leo] Yes. </p>\n<p>[David] I think that if I were to look at this analogously, ten years ago, the OpenStack community was part of your infrastructure in IT. It was your open source, virtualized tool that could virtualize workloads. It sounds very similar in terms of its initiative. It was trying to drive down cost and capex. But ultimately the opex could supersede the capex to begin with. It’s a very interesting situation and I feel like this is not something that’s going to get solved overnight. Who is going to be that integrator? Who is going to support that network? I think this is the biggest challenge for both communities. </p>\n<p>[Leo] I will say, all the operators, if they really want to move to the Open RAN direction, they really need to ask themselves, are we ready yet? Then, are we able to integrate all those network elements from different equipment vendors? Are we able to do that? And another question is, once we deploy this kind of solution on the network there will be many, many different equipment vendors on the network. Are you ready to do the troubleshooting when something happens? It’s really tricky. Because right now all the operators, they only have, (for example) a couple of network suppliers. For example, they’ll just stay with Ericsson, Huawei, Nokia, or Cisco. Maybe four or five major equipment vendors. So, once they realize there is a problem, and they start troubleshooting, typically it’s easy to… </p>\n<p>[David] Point the finger. [laugh] </p>\n<p>[Leo] Point the finger, yea. [laugh] And second, they have been doing this for many, many years, right? They’ve gotten used to it already. They need to get themselves ready before they really want to move to this direction. I don’t think they’ll be able to do it right now but if they have a plan for the next five, ten years to get themselves ready for this kind of thing, then they can… For these five, ten years, for sure they need to spend a lot of money to change their own procedure internally, and second they need to provide the proper training to their engineers, (their) employees. Right now, the employees, engineers, I don’t think they’re ready yet.  </p>\n<p>[David] And I think there’s another dimension to all this. Yes, you need someone to integrate all these pieces. The change management from a management perspective is also a challenge. How to support that as you go forward, is also a challenge. But I think the other dimension to all this is the 5G network. I mean, we’re talking about X (multiple) order more network elements, right? I mean how much more X are we dealing with the 5G network? So not only do we have to deal with all the legacy issues that, let’s just say, proprietary technologies have solved, but we also have to deal with more network elements. And it would require a lot more management, automation, control, and if I were to add another dimension to all of this, security. So, with all these different elements, all these different vendors, all these different open protocols now, that same integrator needs to be cognizant of the security policies across everything. Would you agree? </p>\n<p>[Leo] Yes, and since you just mentioned the legacy network. It’s another major concern as well, right?  All those major equipment vendors, they spend years on legacy network technology. The voice, the traditional switch, and also the 3G/4G stuff, right? And for those members in the Open RAN community, they typically focus on 5G only, or a little bit on 4G, because they don’t want to deal with the very old technology. But unfortunately, all major operators, they have a huge network with legacy technology. So how to do this kind of thing. It’s really a challenge for those Open RAN members. </p>\n<p>[David] Yes, I think that this concept of legacy technology, and how you balance between that and new technology, and in this case 5G, new radio, is a major challenge. It’s almost easier if it was greenfield, but it’s not. Many operators have to deal with different problems. Like I think I read, and you can correct me if I’m wrong, some of the integration points are different. So in China for example, they’re not trying to integrate with a 4G core like they do here (in Canada). So they’ve invested a significant amount to start from scratch. But in our case, to deploy our 5G network, we are trying to integrate it to the 4G core, if I’m not mistaken.  </p>\n<p>[Leo] Yes, you’re right. </p>\n<p>[David] So there’s different challenges for different operators in different regions. I will say though, conceptually, it would be fantastic for an open community to work, whether it’s O-RAN or Open RAN.If someone can make it work, and it is possible, then that’s fantastic. I think it would be a benefit for everyone. But right now, I think it’s going to take time. And the good news is, I think it’s a great opportunity for new players, new companies to get involved and help with this problem. Help with the deployment of a network, help with the automation problem, help with the management problem. I mean there’s no time in our history, I mean, this is sort of the last frontier. We saw it with OpenStack with your classic IT workloads but now it’s starting to spill into the mobile networks. </p>\n<p>[Leo] Yup. And actually, if you look at the Open RAN situation globally, there are two, we can say, tier 1 operators: there are only two tier 1 operators that actually deployed the network. One is the Dish networks (in US), another one is Rakuten (in Japan). But if you look at both, they are both greenfield operators. So they are building the 5G network only. They don’t have the legacy. For all those traditional operators, since they have huge legacy networks, if they want to use Open RAN, the problem is that they have to do interoperability testing between the Open RAN 5G solution and the legacy 3G/4G solution. That means for those small equipment vendors, they (will) still have to deal with Ericsson, Huawei, and ZTE. (But) they don’t have any reason to help them. Because they’re ‘sharpening the knife’ for myself? I (wouldn’t) do that. [laugh] </p>\n<p>[David] [laugh] Right, right. </p>\n<p>[Leo] So somehow the operator also needs to figure out how to convince those legacy equipment vendors to work on this kind of thing, right. How to do that? I don’t know. It may be really challenging. </p>\n<p>[David] It’s funny how you say the sharpen the old knife here. [laugh] </p>\n<p>[Leo] [laugh] </p>\n<p>[David] If you were to step back- </p>\n<p>[Leo] That’s the reality right? </p>\n<p>[David] It is, for sure. The Ericsson’s, Huawei’s, Nokia’s, you step back and look: Why would they help. I mean I’m sure they have their reasons and I’m sure they have many different schemes in mind. If I were to look at again, taking the OpenStack example, you have someone like a RedHat that takes a certain distribution and makes sure that they can support it and sell it to enterprises and telcos. So there’s an example of, let’s say an integrator that figures out what to do there. And I imagine there’s going to be someone similar here. And then similarly, I think a lot of people in that same space are turning to the Googles and Amazons of the world because you just cannot develop and manage as quickly as they can. So at the end of the day I think there is certainly opportunities coming forward in the future. It’ll be an interesting time for sure.  </p>\n<p>[Leo] Mhm, yup. And another factor will be this: Because I know all operators, they have been using the OpenStack software for a long, long time, I think 10 years right? Like RedHat. So they can do it this way right, RedHat, the software itself is free. For example, for personal use, I can download RedHat Linux online and I can install it by myself, I can do it by myself and everything. Take the operator in Canada, I know a lot of them have been using this for years, but at the same time they purchase the service from RedHat, that’s also very expensive as well. Although the software itself is free, how many dollars they spend purchasing the service from RedHat, and how many resources they spend internally. Training, whatever, how many engineers they spend on this OpenStack stuff. They can compare the costs. </p>\n<p>[David] For sure, I feel like we’ve seen this movie before. You know, it first started with IT workloads and now this. And my sources tell me, I believe that really the only big players in OpenStack now are probably in telcos. I don’t think any of the major enterprises, and there may be a few, are playing in the space. They’re just going straight to the major cloud providers right now. I think they’re going to have a nice little moat for those types of things and who knows what’s going to happen now with the RAN, but we’ll see. </p>\n<p>[Leo] It’ll be a very, very similar situation. </p>\n<p>[David] I think so too. </p>\n<p>[Leo] If we use Open RAN solution, yea for sure you’ll save a lot of money on hardware or maybe the equipment itself. You save money there, but at the same time you jack up a lot of costs on the service you need, integration or maintenance or this kind of thing. Finally, you combine both numbers: capex and opex, probably it will be similar. If it’s really similar, then why should we go to Open RAN right? We’ll just stay with the existing equipment vendor that’s very comfortable. The costs will be similar, what’s the difference? There’s no point. </p>\n<p>[David] Right, and then of course there’s the security dimension that also needs to be played out but listen Leo, I wanted to thank you for taking the time today. I think it was a pretty enjoyable conversation. </p>\n<p>[Leo] And another thing you’ve probably realized right, I think a few months back, Nokia joined the Open RAN forum.  </p>\n<p>[David] Oh, interesting. </p>\n<p>[Leo] The reason I observe, I think, Nokia lost a huge opportunity in China for the RAN, right? They lost all three major operators there: China Mobile, China Telecom, and China Unicom. They got zero RAN business. That’s one reason, and second, I think last month, they lost Verizon in the US. They lost to Samsung. That is probably the major reason why Nokia joined the Open RAN. They’re kind of behind their competitors like Ericsson and Huawei, I guess that’s part of the reason, for sure. People in Nokia won’t say that – (but) that’s my observation. </p>\n<p>[David] No, well, those appear to be clear facts and thank you for bringing that up before we come to a close today. I think that’s a very interesting fact in the industry that’s come about. Ok, Leo, I wanted to again thank you for your time, thanks for chatting, and I think we’ll definitely do this again. This was a fun little discussion.  </p>\n<p>[Leo] Ok. </p>\n<p>[David] Ok, thanks so much Leo. Take care.</p>', '2020-10-20 12:58:47', 1, '2020-10-20 12:58:46', '2020-11-23 15:27:50', NULL, 1),
(28, 3, '5G Basics: Non-Standalone vs Standalone (NSA vs SA)', '5g-non-standalone-vs-standalone-nsa-vs-sa', '5G is the fifth generation of mobile communication technology; revolutionary with an achievable downlink speed of 1000Mbps under ideal conditions. The deployment of 5G is consequential, but complicated with one contributing factor to the complexity being the two difference 5G network modes.', '5G is the fifth generation of mobile communication technology with a potential downlink speed of 1000Mbps. The deployment of 5G is consequential, but there are a couple of complex 5G network modes to consider: **Non-Standalone Access (NSA)** and **Standalone Access (SA)**.\r\n\r\n**NSA** allows service providers to leverage their existing 4G network facilities, anchoring the control signaling of 5G to the 4G base station. It\'s easier and faster for network operators to launch 5G this way because the infrastructure is already there. This would allow them to gain technology and market leadership. \r\n\r\nOn the other hand, **SA** involves the deployment of a complete end-to-end 5G network. The initial investment would be much greater, but the benefit is a super-fast and ultra-low latency network with lower future operational costs.\r\n\r\nWhich 5G network mode is your provider deploying?', '<p>5G is the fifth generation of mobile communication technology with a potential downlink speed of 1000Mbps. The deployment of 5G is consequential, but there are a couple of complex 5G network modes to consider: <strong>Non-Standalone Access (NSA)</strong> and <strong>Standalone Access (SA)</strong>.</p>\n<p><strong>NSA</strong> allows service providers to leverage their existing 4G network facilities, anchoring the control signaling of 5G to the 4G base station. It\'s easier and faster for network operators to launch 5G this way because the infrastructure is already there. This would allow them to gain technology and market leadership. </p>\n<p>On the other hand, <strong>SA</strong> involves the deployment of a complete end-to-end 5G network. The initial investment would be much greater, but the benefit is a super-fast and ultra-low latency network with lower future operational costs.</p>\n<p>Which 5G network mode is your provider deploying?</p>', '2020-10-28 14:14:00', 1, '2020-10-28 14:14:32', '2020-10-28 16:44:09', NULL, 0),
(29, 3, 'Setting the Bar for Layer 1 Switches: Why ColdFusion?', 'setting-bar-layer-1-switches-why-coldfusion', 'Lepton’s ColdFusion Layer 1 test automation switch enables the automation of 100% of lab infrastructure. With ColdFusion, network topology changes can be performed with the click of a button, or by integrating QA test scripts with ColdFusion APIs.', 'Lepton’s ColdFusion Layer 1 test automation switch enables the automation of 100% of lab infrastructure. With ColdFusion, network topology changes can be performed with the click of a button, or by integrating QA test scripts with ColdFusion APIs.\r\n\r\nColdFusion has the broadest media support, has the highest density, and the only Layer 1 switch that supports 10m to 128G in the same chassis.\r\n\r\n\r\n#### Cost Savings\r\n* Reduce CapEx through an increased utilization of a smaller number of tools.\r\n* Reduce OpEx as automation increases and manual labor decreases.\r\n* Reduce time to market, increasing savings and profits.\r\n* High-density architecture saves expensive rack space.\r\n\r\n#### Increase Test Lab Utilization\r\n* Run the same number of test cases using fewer test tools and DUT’s.\r\n* Allow remote test engineers to share the same lab resources from anywhere.\r\n* Gain full control and visibility over who is using lab resources, and for how long.\r\n* Schedule and reserve resources.\r\n* Reduce lab equipment idle time.\r\n\r\n#### Reduce Test Time\r\n* Reduce unnecessary troubleshooting time due to manual cabling mistakes.\r\n* Build, modify or teardown test topologies quickly and reliably using scripts.\r\n* Quickly isolate and troubleshoot test problems\r\n* Reduce test setup time.\r\n* Free up test engineers’ time to focus on their core technology challenges.\r\n\r\n\r\nLepton’s ColdFusion1 supports Ethernet, Fibre Channel, Infiniband and OTN across a wide range of data rates from 1G to 10G, 25G, 40G, 50G and 100G over Active-Optical-Cable (AOC), Direct-Attached-Cable (DAC), Multimode or Singlemode optical cables.\r\n\r\n[Contact Us for more information.](https://acentury.co/ca/contact)', '<p>Lepton’s ColdFusion Layer 1 test automation switch enables the automation of 100% of lab infrastructure. With ColdFusion, network topology changes can be performed with the click of a button, or by integrating QA test scripts with ColdFusion APIs.</p>\n<p>ColdFusion has the broadest media support, has the highest density, and the only Layer 1 switch that supports 10m to 128G in the same chassis.</p>\n<h4>Cost Savings</h4>\n<ul>\n<li>Reduce CapEx through an increased utilization of a smaller number of tools.</li>\n<li>Reduce OpEx as automation increases and manual labor decreases.</li>\n<li>Reduce time to market, increasing savings and profits.</li>\n<li>High-density architecture saves expensive rack space.</li>\n</ul>\n<h4>Increase Test Lab Utilization</h4>\n<ul>\n<li>Run the same number of test cases using fewer test tools and DUT’s.</li>\n<li>Allow remote test engineers to share the same lab resources from anywhere.</li>\n<li>Gain full control and visibility over who is using lab resources, and for how long.</li>\n<li>Schedule and reserve resources.</li>\n<li>Reduce lab equipment idle time.</li>\n</ul>\n<h4>Reduce Test Time</h4>\n<ul>\n<li>Reduce unnecessary troubleshooting time due to manual cabling mistakes.</li>\n<li>Build, modify or teardown test topologies quickly and reliably using scripts.</li>\n<li>Quickly isolate and troubleshoot test problems</li>\n<li>Reduce test setup time.</li>\n<li>Free up test engineers’ time to focus on their core technology challenges.</li>\n</ul>\n<p>Lepton’s ColdFusion1 supports Ethernet, Fibre Channel, Infiniband and OTN across a wide range of data rates from 1G to 10G, 25G, 40G, 50G and 100G over Active-Optical-Cable (AOC), Direct-Attached-Cable (DAC), Multimode or Singlemode optical cables.</p>\n<p><a href=\"https://acentury.co/ca/contact\">Contact Us for more information.</a></p>', '2020-11-09 18:08:53', 1, '2020-11-09 18:08:56', '2020-11-09 18:48:40', NULL, 0),
(30, 3, 'Product Re-Design in Two Weeks: A Customer Success Story', 'product-re-design-two-weeks-customer-success-story', 'In this article, we want to share an example of how we strive with each request to meet and exceed our customer’s expectations. This example is taken from our recent interaction with a Tier-1 US wireless operator on our Radiocomm RF component products.', 'A Tier-1 US wireless operator requested the following extra-low PIM products (≤ -165 dBc) to for their 5G RF Lab in the Pacific Northwest: \r\n\r\n* [XP2-P571 Diplexer (600-894/1695-2700 MHz)](https://radiocomm.ca/c/low-pim-combiner/low-pim-diplexer)\r\n* [ATa-Pa10R Wideband (520 - 6000 MHz) 10 dB Attenuator](https://radiocomm.ca/c/low-pim-attenuator)\r\n\r\nTwo months later we received our first feedback from the Lab Manager. The products worked well, but the size was too big for their lab space. They requested a diplexer that was as small as possible with 4.3-10 connectors, and they also wanted to be able to fit an extra attenuator into a 3U track on top of the existing three. \r\n\r\nWithin two weeks we delivered the size reduction that the customer requested. For the diplexer, the only difference in performance with the previous (larger) design is the small increase of insertion loss from 0.25 dB to 0.5 dB. For the attenuator, there is no difference in performance. To complement the new design, we also designed a new 19” 3U rackmount shelf that holds four ATA-Pa10R attenuators. \r\n\r\n![](https://acentury.co/storage/app/media/Radiocomm%20Success%20Story/Radiocomm%20changes%20chart.png)\r\n\r\n![Fig. 1a. Initial design of XP2-P571 diplexer](https://acentury.co/storage/app/media/Radiocomm%20Success%20Story/Diplexer%20Initial%20Design.png)\r\n\r\n![Fig. 1b. New design of XP2-P571 diplexer](https://acentury.co/storage/app/media/Radiocomm%20Success%20Story/New%20Diplexer.png)\r\n\r\n![Fig. 2a. Initial design of AT0-Pa10R attenuator](https://acentury.co/storage/app/media/Radiocomm%20Success%20Story/Attenuator%20Initial%20Design.png)\r\n\r\n![Fig. 2b. New design of AT0-Pa10R attenuator](https://acentury.co/storage/app/media/Radiocomm%20Success%20Story/New%20Attenuator.png)\r\n\r\n\r\nOur new designs were well received, but an additional request came: “Could you prevent the heat from all units from flowing up to the top attenuators when they are stacked on shelves?”. This was a big concern with their current manufacturer as the upper units would overheat constantly. One solution was to look at a tray fan that would blow from the bottom.​\r\n\r\nThe feedback was well received, and the units were implemented into a final design within those two weeks.​\r\n\r\nAcentury is strongly committed to deliver great customer service alongside our world-class products and continue to use our experience to design solutions tailored to our client\'s needs. \r\n\r\n<button type=\"button\" style=\"display: inline-block;\r\n    vertical-align: middle;\r\n    margin: 0;\r\n    padding: 0.75em 2em;\r\n    border: 1px solid transparent;\r\n    border-radius: 8px;\r\n    transition: background-color 0.25s ease-out,color 0.25s ease-out;\r\n    font-family: inherit;\r\n    font-size: 15px;\r\n    -webkit-appearance: none;\r\n    line-height: 1;\r\n    text-align: center;\r\n    cursor: pointer;\r\n    background-color: #2a57b0;\r\n    color: #fefefe;\" href=\"/radiocomm-customization\">Submit Customization Request</button>\r\n\r\nNeed more info? Browse the [Radiocomm E-Catalogue](https://radiocomm.ca/) or [contact Acentury](https://acentury.co/ca/contact) today. \r\n\r\n<br/>\r\n**ABOUT RADIOCOMM**\r\n\r\nAcentury, under the Radiocomm brand, provides RF components with an industry leading extra low PIM (-165 dBc) and the new 4.3-10 and NEX10 connectors. They are currently used with 4G and 5G wireless networks for both outdoor and in-building applications. Radiocomm also produces coaxial cable solutions for low PIM jumpers and high-frequency phase stable cable assemblies. Our comprehensive product portfolios include both general and PIM rated passive components and cables. Through our years of dedication, experience, and expertise in the RF industry, Radiocomm has gained the reputation for its superior performance, quality, short lead time, cost-effectiveness and customization services. We help our service provider, infrastructure equipment manufacturer, installer and system integrator customers meet their complex and dynamic requirements, improve the network performance and reliability, and reduce the equipment expenditure and labor costs.', '<p>A Tier-1 US wireless operator requested the following extra-low PIM products (≤ -165 dBc) to for their 5G RF Lab in the Pacific Northwest: </p>\n<ul>\n<li><a href=\"https://radiocomm.ca/c/low-pim-combiner/low-pim-diplexer\">XP2-P571 Diplexer (600-894/1695-2700 MHz)</a></li>\n<li><a href=\"https://radiocomm.ca/c/low-pim-attenuator\">ATa-Pa10R Wideband (520 - 6000 MHz) 10 dB Attenuator</a></li>\n</ul>\n<p>Two months later we received our first feedback from the Lab Manager. The products worked well, but the size was too big for their lab space. They requested a diplexer that was as small as possible with 4.3-10 connectors, and they also wanted to be able to fit an extra attenuator into a 3U track on top of the existing three. </p>\n<p>Within two weeks we delivered the size reduction that the customer requested. For the diplexer, the only difference in performance with the previous (larger) design is the small increase of insertion loss from 0.25 dB to 0.5 dB. For the attenuator, there is no difference in performance. To complement the new design, we also designed a new 19” 3U rackmount shelf that holds four ATA-Pa10R attenuators. </p>\n<p><img src=\"https://acentury.co/storage/app/media/Radiocomm%20Success%20Story/Radiocomm%20changes%20chart.png\" alt=\"\" /></p>\n<p><img src=\"https://acentury.co/storage/app/media/Radiocomm%20Success%20Story/Diplexer%20Initial%20Design.png\" alt=\"Fig. 1a. Initial design of XP2-P571 diplexer\" /></p>\n<p><img src=\"https://acentury.co/storage/app/media/Radiocomm%20Success%20Story/New%20Diplexer.png\" alt=\"Fig. 1b. New design of XP2-P571 diplexer\" /></p>\n<p><img src=\"https://acentury.co/storage/app/media/Radiocomm%20Success%20Story/Attenuator%20Initial%20Design.png\" alt=\"Fig. 2a. Initial design of AT0-Pa10R attenuator\" /></p>\n<p><img src=\"https://acentury.co/storage/app/media/Radiocomm%20Success%20Story/New%20Attenuator.png\" alt=\"Fig. 2b. New design of AT0-Pa10R attenuator\" /></p>\n<p>Our new designs were well received, but an additional request came: “Could you prevent the heat from all units from flowing up to the top attenuators when they are stacked on shelves?”. This was a big concern with their current manufacturer as the upper units would overheat constantly. One solution was to look at a tray fan that would blow from the bottom.​</p>\n<p>The feedback was well received, and the units were implemented into a final design within those two weeks.​</p>\n<p>Acentury is strongly committed to deliver great customer service alongside our world-class products and continue to use our experience to design solutions tailored to our client\'s needs. </p>\n<p><button type=\"button\" style=\"display: inline-block;\nvertical-align: middle;\nmargin: 0;\npadding: 0.75em 2em;\nborder: 1px solid transparent;\nborder-radius: 8px;\ntransition: background-color 0.25s ease-out,color 0.25s ease-out;\nfont-family: inherit;\nfont-size: 15px;\n-webkit-appearance: none;\nline-height: 1;\ntext-align: center;\ncursor: pointer;\nbackground-color: #2a57b0;\ncolor: #fefefe;\" href=\"/radiocomm-customization\">Submit Customization Request</button></p>\n<p>Need more info? Browse the <a href=\"https://radiocomm.ca/\">Radiocomm E-Catalogue</a> or <a href=\"https://acentury.co/ca/contact\">contact Acentury</a> today. </p>\n<p><br/>\n<strong>ABOUT RADIOCOMM</strong></p>\n<p>Acentury, under the Radiocomm brand, provides RF components with an industry leading extra low PIM (-165 dBc) and the new 4.3-10 and NEX10 connectors. They are currently used with 4G and 5G wireless networks for both outdoor and in-building applications. Radiocomm also produces coaxial cable solutions for low PIM jumpers and high-frequency phase stable cable assemblies. Our comprehensive product portfolios include both general and PIM rated passive components and cables. Through our years of dedication, experience, and expertise in the RF industry, Radiocomm has gained the reputation for its superior performance, quality, short lead time, cost-effectiveness and customization services. We help our service provider, infrastructure equipment manufacturer, installer and system integrator customers meet their complex and dynamic requirements, improve the network performance and reliability, and reduce the equipment expenditure and labor costs.</p>', '2020-12-02 17:37:42', 1, '2020-12-02 17:37:43', '2021-09-15 16:38:18', NULL, 1);
INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `metadata`, `featured`) VALUES
(31, 3, 'The Shared Lab Challenge', 'shared-lab-challenge', 'The constantly evolving communication networks require development of new Ethernet network devices, being either traditional hardware implementations or virtual, software based implementations – Virtual Network Functions (VNF). In both cases the devices need to be tested during development to troubleshoot and validate the functioning of the new devices.', 'The constantly evolving communication networks require development of new Ethernet network devices, being either traditional hardware implementations or virtual, software based implementations – Virtual Network Functions (VNF). In both cases the devices need to be tested during development to troubleshoot and validate the functioning of the new devices.\r\n\r\nAn organization can have many teams involved in the development and will have labs with test facilities for the new devices. However, to reduce CapEx the teams often need to share the test facilities. If this is not managed well, team members can waste time waiting for the test facilities to become available, increasing OpEx for the organization.\r\n\r\nWhen the test facilities in the shared labs are available for the team, they will have to reconfigure them to get the needed topology and features for their testing. This involves connecting the Ethernet network devices with Ethernet Traffic Generators. The team members can do this manually by moving cables, which however is a time consuming and error prone process.\r\n\r\nThe Xena Networks stateless test platforms ValkyrieBay and ValkyrieCompact are obvious choices as Traffic Generators for test of the Ethernet network devices. The L1 Smart Matrix switching capabilities of the NPB-I and NPB-II packet brokers from CGS Tower networks efficiently connect the Xena Traffic Generators with devices under test. When the Xena Traffic Generators and the CGS L1 Matrix are managed with CloudShell software by Quali, the teams using the shared lab get an efficient and seamless Lab-as-a-Service (LaaS) experience when sharing the resources reducing both CapEx and OpEx for the organization.\r\n\r\nTopics covered in the Shared Lab Challenge White Paper:\r\n\r\n* The Shared Lab\r\n* Lab-as-a-Service (LaaS)\r\n* Quali’s CloudShell\r\n* The Need for Cloud Sandboxing\r\n* The Quali Solution\r\n* Model, Orchestrate, Deploy\r\n* Quali TestShell Studio\r\n* CGS Tower Networks Smart L1 Matrices\r\n* NPB-II\r\n* NPB-I\r\n* Xena Networks Stateless Test Solutions\r\n* Testing up to Layer 3\r\n* Multi Port Testing\r\n* Multi Rate Testing\r\n\r\n[Read the Xena Networks Whitepaper.](http://)', '<p>The constantly evolving communication networks require development of new Ethernet network devices, being either traditional hardware implementations or virtual, software based implementations – Virtual Network Functions (VNF). In both cases the devices need to be tested during development to troubleshoot and validate the functioning of the new devices.</p>\n<p>An organization can have many teams involved in the development and will have labs with test facilities for the new devices. However, to reduce CapEx the teams often need to share the test facilities. If this is not managed well, team members can waste time waiting for the test facilities to become available, increasing OpEx for the organization.</p>\n<p>When the test facilities in the shared labs are available for the team, they will have to reconfigure them to get the needed topology and features for their testing. This involves connecting the Ethernet network devices with Ethernet Traffic Generators. The team members can do this manually by moving cables, which however is a time consuming and error prone process.</p>\n<p>The Xena Networks stateless test platforms ValkyrieBay and ValkyrieCompact are obvious choices as Traffic Generators for test of the Ethernet network devices. The L1 Smart Matrix switching capabilities of the NPB-I and NPB-II packet brokers from CGS Tower networks efficiently connect the Xena Traffic Generators with devices under test. When the Xena Traffic Generators and the CGS L1 Matrix are managed with CloudShell software by Quali, the teams using the shared lab get an efficient and seamless Lab-as-a-Service (LaaS) experience when sharing the resources reducing both CapEx and OpEx for the organization.</p>\n<p>Topics covered in the Shared Lab Challenge White Paper:</p>\n<ul>\n<li>The Shared Lab</li>\n<li>Lab-as-a-Service (LaaS)</li>\n<li>Quali’s CloudShell</li>\n<li>The Need for Cloud Sandboxing</li>\n<li>The Quali Solution</li>\n<li>Model, Orchestrate, Deploy</li>\n<li>Quali TestShell Studio</li>\n<li>CGS Tower Networks Smart L1 Matrices</li>\n<li>NPB-II</li>\n<li>NPB-I</li>\n<li>Xena Networks Stateless Test Solutions</li>\n<li>Testing up to Layer 3</li>\n<li>Multi Port Testing</li>\n<li>Multi Rate Testing</li>\n</ul>\n<p><a href=\"http://\">Read the Xena Networks Whitepaper.</a></p>', '2020-12-11 15:30:48', 1, '2020-12-10 20:40:12', '2021-02-01 15:29:23', NULL, 0),
(32, 2, 'Designing a Heptaplexer With Added Band 40 and 42 Requirements', 'customer-use-case-designing-heptaplexer-high-power-and-strict-pim-rejection-161dbc-requirements', 'A European customer required seven (7) European bands including the new Band 40 and 42 to be combined for a military application. There was also strict PIM rejection (-161dBc) and high-power requirements (350W).', '**The Customer Challenge**\r\n\r\nA European customer had a challenging design requirement that needed a solution in a short period of time: there were a total of seven (7) European bands including the new Band 40 and 42 to be combined for a military application. There was also strict PIM rejection (-161dBc) and high-power requirements (350W):\r\n\r\n* Band 20 (791-862MHz)\r\n* Band 8 (880-960MHz)\r\n* Band 3 (1710-1880Hz)\r\n* Band 1 (1920-2170MHz)\r\n* Band 40 (2300-2390MHz)\r\n* Band 7 (2500-2690MHz)\r\n* Band42/43/N78 (3300-3800MHz)\r\n\r\nA traditional design approach would require the combination of multiple components. This would add significant cost, complexity, and potentially cause large insertion losses. An alternative solution would combine all seven ports into a single component that would meet all the requirements including  high power (350W), and high-level PIM rejection specifications. This would be a significant engineering design challenge.\r\n\r\n**The Radiocomm Solution**\r\n\r\nRadiocomm was called upon to design a customized solution that would manage the high power requirement of 350W while still meeting all the specification design requirements of wideband frequency coverage, cross interference, low passive intermodulation, and low insertion loss. In one week the Radiocomm team was able to finalize a design and provide the simulation results of a proposed heptaplexer solution that that would combine the additional bands into a single component while meeting all the design requirements for high performance:\r\n\r\n\r\n![](/storage/app/media/Heptaplexer%20drawing.png)\r\n\r\n \r\nHere are the technical specifications represented in a tabular format:\r\n\r\n![](/storage/app/media/Heptaplexer%20table%20specs.png)\r\n\r\nUpon producing a prototype sample in just under 6 weeks, the customer confirmed that the customized design met all the design specifications. \r\n\r\nRadiocomm continues to offer fast customizations services with wideband frequency coverage and low PIM rejection specifications. For more information about our services or if you have a customization request, contact us today.\r\n\r\n<button type=\"button\" style=\"display: inline-block;\r\n    vertical-align: middle;\r\n    margin: 0;\r\n    padding: 0.75em 2em;\r\n    border: 1px solid transparent;\r\n    border-radius: 8px;\r\n    transition: background-color 0.25s ease-out,color 0.25s ease-out;\r\n    font-family: inherit;\r\n    font-size: 15px;\r\n    -webkit-appearance: none;\r\n    line-height: 1;\r\n    text-align: center;\r\n    cursor: pointer;\r\n    background-color: #2a57b0;\r\n    color: #fefefe;\" href=\"/radiocomm-customization\">Submit Customization Request</button>', '<p><strong>The Customer Challenge</strong></p>\n<p>A European customer had a challenging design requirement that needed a solution in a short period of time: there were a total of seven (7) European bands including the new Band 40 and 42 to be combined for a military application. There was also strict PIM rejection (-161dBc) and high-power requirements (350W):</p>\n<ul>\n<li>Band 20 (791-862MHz)</li>\n<li>Band 8 (880-960MHz)</li>\n<li>Band 3 (1710-1880Hz)</li>\n<li>Band 1 (1920-2170MHz)</li>\n<li>Band 40 (2300-2390MHz)</li>\n<li>Band 7 (2500-2690MHz)</li>\n<li>Band42/43/N78 (3300-3800MHz)</li>\n</ul>\n<p>A traditional design approach would require the combination of multiple components. This would add significant cost, complexity, and potentially cause large insertion losses. An alternative solution would combine all seven ports into a single component that would meet all the requirements including  high power (350W), and high-level PIM rejection specifications. This would be a significant engineering design challenge.</p>\n<p><strong>The Radiocomm Solution</strong></p>\n<p>Radiocomm was called upon to design a customized solution that would manage the high power requirement of 350W while still meeting all the specification design requirements of wideband frequency coverage, cross interference, low passive intermodulation, and low insertion loss. In one week the Radiocomm team was able to finalize a design and provide the simulation results of a proposed heptaplexer solution that that would combine the additional bands into a single component while meeting all the design requirements for high performance:</p>\n<p><img src=\"/storage/app/media/Heptaplexer%20drawing.png\" alt=\"\" /></p>\n<p>Here are the technical specifications represented in a tabular format:</p>\n<p><img src=\"/storage/app/media/Heptaplexer%20table%20specs.png\" alt=\"\" /></p>\n<p>Upon producing a prototype sample in just under 6 weeks, the customer confirmed that the customized design met all the design specifications. </p>\n<p>Radiocomm continues to offer fast customizations services with wideband frequency coverage and low PIM rejection specifications. For more information about our services or if you have a customization request, contact us today.</p>\n<p><button type=\"button\" style=\"display: inline-block;\nvertical-align: middle;\nmargin: 0;\npadding: 0.75em 2em;\nborder: 1px solid transparent;\nborder-radius: 8px;\ntransition: background-color 0.25s ease-out,color 0.25s ease-out;\nfont-family: inherit;\nfont-size: 15px;\n-webkit-appearance: none;\nline-height: 1;\ntext-align: center;\ncursor: pointer;\nbackground-color: #2a57b0;\ncolor: #fefefe;\" href=\"/radiocomm-customization\">Submit Customization Request</button></p>', '2021-03-29 04:44:45', 1, '2021-03-29 04:43:44', '2021-09-15 16:40:21', NULL, 1),
(33, 3, 'Frame Communications and Acentury partner to grow Radiocomm business in the UK and Ireland', 'frame-communications', 'Radiocomm, the network components division of Acentury Inc., is proud to announce a partnership with Frame Communications.  Frame will act as Radiocomm’s distributor covering the UK and Ireland markets.', 'Radiocomm, the network components division of Acentury Inc., is proud to announce a partnership with Frame Communications.  Frame will act as Radiocomm’s distributor covering the UK and Ireland markets.\r\n\r\n“We’re thrilled to have Frame Communication join as the newest member of the Radiocomm family.  We’re seeing a significant increase in demand from European-based customers.  Frame is the perfect partner to give us a local presence in the UK and Ireland,” said Frank Ye, CEO of Acentury.\r\n\r\n“Radiocomm is the perfect addition to our product portfolio.  RF fidelity is a critical requirement for 5G multi-band deployment.  We’re confident that our customers will find Radiocomm RF components and cables to be best-in-class in terms of performance, value and reliability,” said Gavin McGowan, Managing Director of Frame Communications.\r\n\r\n**ABOUT Frame Communications**<br>\r\nFrame Communications has been serving the UK telecommunications and enterprise markets for over 25 years. Frame identifies and works with carefully selected trusted partners from around the world. Frame is currently working with some of the largest names in UK and Irish telecoms over many years, building up a reputation for integrity, honesty and openness.<br>\r\nhttps://frame.co.uk\r\n\r\n**ABOUT Radiocomm**<br>\r\nRadiocomm, the network components division of Acentury Inc., was launched in 2011 and developed a reputation for its superior technical performance, reliability, and customization services. We pride ourselves in creating a unique customer experience from product development to on-time product delivery. We help service providers, infrastructure equipment manufacturers, educational institutions, government agency departments, and system integrators meet their complex and dynamic requirements.  Radiocomm components cover a wider operating frequency spectrum and higher power applications. With the deployment of outdoor systems with high power (up to 80 W) and 4x4 MIMO, the -165 dBc extra-low PIM becomes an essential requirement to solve complex interference issues.<br>\r\nhttps://radiocomm.co', '<p>Radiocomm, the network components division of Acentury Inc., is proud to announce a partnership with Frame Communications.  Frame will act as Radiocomm’s distributor covering the UK and Ireland markets.</p>\n<p>“We’re thrilled to have Frame Communication join as the newest member of the Radiocomm family.  We’re seeing a significant increase in demand from European-based customers.  Frame is the perfect partner to give us a local presence in the UK and Ireland,” said Frank Ye, CEO of Acentury.</p>\n<p>“Radiocomm is the perfect addition to our product portfolio.  RF fidelity is a critical requirement for 5G multi-band deployment.  We’re confident that our customers will find Radiocomm RF components and cables to be best-in-class in terms of performance, value and reliability,” said Gavin McGowan, Managing Director of Frame Communications.</p>\n<p><strong>ABOUT Frame Communications</strong><br>\nFrame Communications has been serving the UK telecommunications and enterprise markets for over 25 years. Frame identifies and works with carefully selected trusted partners from around the world. Frame is currently working with some of the largest names in UK and Irish telecoms over many years, building up a reputation for integrity, honesty and openness.<br>\n<a href=\"https://frame.co.uk\">https://frame.co.uk</a></p>\n<p><strong>ABOUT Radiocomm</strong><br>\nRadiocomm, the network components division of Acentury Inc., was launched in 2011 and developed a reputation for its superior technical performance, reliability, and customization services. We pride ourselves in creating a unique customer experience from product development to on-time product delivery. We help service providers, infrastructure equipment manufacturers, educational institutions, government agency departments, and system integrators meet their complex and dynamic requirements.  Radiocomm components cover a wider operating frequency spectrum and higher power applications. With the deployment of outdoor systems with high power (up to 80 W) and 4x4 MIMO, the -165 dBc extra-low PIM becomes an essential requirement to solve complex interference issues.<br>\n<a href=\"https://radiocomm.co\">https://radiocomm.co</a></p>', '2021-04-06 17:38:15', 1, '2021-04-12 17:41:51', '2021-04-28 18:42:00', NULL, 0),
(34, 3, 'Acentury Closes 2020 with Revenue, Customer, and Employee Increases as One of Canada\'s Fastest Growing Companies', 'acentury-2020-press-release', 'Company announcement from Acentury Inc.', 'Acentury, a technology solutions provider that also develops products for wireless communication networks, today announced that the company closed 2020 with **20% year-over-year (YoY) revenue growth** and a **15% increase in the number of key customers**. The company grew its overall team by 40 percent and increased the R&D staff by 50% to reflect this ongoing growth. Acentury was named one of [**Canada\'s Top Growing Companies in 2020**](https://acentury.co/ca/news/b/top-growing-2020) for the second straight year by Globe and Mail\'s Report on Business. Acentury was also named on [**Canadian Business and Maclean\'s Growth List 2020 which ranks Canada\'s Fastest-Growing Companies**](https://acentury.co/ca/news/b/acentury-inc-named-one-canadas-fastest-growing-companies-2020-growth-list) for the second year in a row.\r\n\r\nAcentury continues to invest in software and hardware product development. The company recently launched LAMTA, a software-based platform to help manage and run 3G/4G/5G lab testing from a remote location:\r\n\r\n\r\n\r\n\r\n![lamta slide.png](https://www.acentury.co/storage/app/uploads/public/605/37c/00a/60537c00af120397078605.png)\r\n\r\n\r\n\r\nBy abstracting radio cable connection management with an easy-to-use web-based GUI, lab managers no longer need to be physically in the lab to configure and run test scenarios after the initial connection setup. The company has seen a rise in market interest during the COVID period. Recent product updates include:\r\n\r\n1. Introduction of a lab resource management module\r\n\r\n2. New release of the advanced radio management interface\r\n\r\n3. Integration of three hardware vendor matrices\r\n\r\nAcentury continues to innovate new passive network components that meet dynamic customer requirements.\r\n\r\n\r\n\r\n![radiocomm slide.png](https://www.acentury.co/storage/app/uploads/public/605/37c/0d3/60537c0d3b2a5586548893.png)\r\n\r\n\r\nHere is a list of some low PIM combiners that were recently released in the market:\r\n\r\n- [Low PIM Hexaplexer (600/PCS/AWS/ 2.6GHz/CBRS/LAA), 4.3-10F: Delivered to a Tier 1 Carrier in North America](https://acentury.us17.list-manage.com/track/click?u=74a6898c1ce8105f6775e31ed&id=06ab537687&e=92ccdfa3a0)\r\n\r\n- [Extra Low PIM Wideband Hybrid Combiner. Covers all sub-6GHz bands (520MHz -- 6000MHz) for 3G/4G/5G Indoor and Outdoor systems](https://acentury.us17.list-manage.com/track/click?u=74a6898c1ce8105f6775e31ed&id=852562ff85&e=92ccdfa3a0)\r\n\r\n- [VHF Multi-channel Combiner (3 CH (3 TX+3 RX)) 138-145MHz, 125W, NF Connectors: Very compact size, low insertion loss, good VSWR performance](https://acentury.us17.list-manage.com/track/click?u=74a6898c1ce8105f6775e31ed&id=bffce0de6e&e=92ccdfa3a0)\r\n\r\n\"2020 saw strong growth in our software products division,\" said Frank Ye, President of Acentury Inc. \"We will continue to invest in RF-related software and hardware products to help accelerate innovation and support for global wireless communication networks.\"\r\n\r\nTo keep connected to educational content and more company and product updates, subscribe to our company newsletter.\r\n\r\n[**Subscribe to the Acentury Newsletter**](https://www.acentury.co/newsletter-signup-c)\r\n\r\n\r\n### About Acentury\r\n\r\nFounded in 2007, Acentury is a technology solutions company that innovates, supplies, and produces products for wireless communication networks. Since becoming a recognized leader in wireless test and measurement solutions, Acentury has successfully launched several global product brands including Radiocomm, a passive network products division with industry-leading low PIM (-165dBc) technologies, and LAMTA, a software-based platform to help run and manage 3G/4G/5G lab test scenarios and lab resources.\r\n\r\n***Press Contact***\r\n<br>Judith Wang\r\n<br>905-554-3633\r\n<br>judith.wang@acentury.co', '<p>Acentury, a technology solutions provider that also develops products for wireless communication networks, today announced that the company closed 2020 with <strong>20% year-over-year (YoY) revenue growth</strong> and a <strong>15% increase in the number of key customers</strong>. The company grew its overall team by 40 percent and increased the R&amp;D staff by 50% to reflect this ongoing growth. Acentury was named one of <a href=\"https://acentury.co/ca/news/b/top-growing-2020\"><strong>Canada\'s Top Growing Companies in 2020</strong></a> for the second straight year by Globe and Mail\'s Report on Business. Acentury was also named on <a href=\"https://acentury.co/ca/news/b/acentury-inc-named-one-canadas-fastest-growing-companies-2020-growth-list\"><strong>Canadian Business and Maclean\'s Growth List 2020 which ranks Canada\'s Fastest-Growing Companies</strong></a> for the second year in a row.</p>\n<p>Acentury continues to invest in software and hardware product development. The company recently launched LAMTA, a software-based platform to help manage and run 3G/4G/5G lab testing from a remote location:</p>\n<p><img src=\"https://www.acentury.co/storage/app/uploads/public/605/37c/00a/60537c00af120397078605.png\" alt=\"lamta slide.png\" /></p>\n<p>By abstracting radio cable connection management with an easy-to-use web-based GUI, lab managers no longer need to be physically in the lab to configure and run test scenarios after the initial connection setup. The company has seen a rise in market interest during the COVID period. Recent product updates include:</p>\n<ol>\n<li>\n<p>Introduction of a lab resource management module</p>\n</li>\n<li>\n<p>New release of the advanced radio management interface</p>\n</li>\n<li>\n<p>Integration of three hardware vendor matrices</p>\n</li>\n</ol>\n<p>Acentury continues to innovate new passive network components that meet dynamic customer requirements.</p>\n<p><img src=\"https://www.acentury.co/storage/app/uploads/public/605/37c/0d3/60537c0d3b2a5586548893.png\" alt=\"radiocomm slide.png\" /></p>\n<p>Here is a list of some low PIM combiners that were recently released in the market:</p>\n<ul>\n<li>\n<p><a href=\"https://acentury.us17.list-manage.com/track/click?u=74a6898c1ce8105f6775e31ed&amp;id=06ab537687&amp;e=92ccdfa3a0\">Low PIM Hexaplexer (600/PCS/AWS/ 2.6GHz/CBRS/LAA), 4.3-10F: Delivered to a Tier 1 Carrier in North America</a></p>\n</li>\n<li>\n<p><a href=\"https://acentury.us17.list-manage.com/track/click?u=74a6898c1ce8105f6775e31ed&amp;id=852562ff85&amp;e=92ccdfa3a0\">Extra Low PIM Wideband Hybrid Combiner. Covers all sub-6GHz bands (520MHz -- 6000MHz) for 3G/4G/5G Indoor and Outdoor systems</a></p>\n</li>\n<li>\n<p><a href=\"https://acentury.us17.list-manage.com/track/click?u=74a6898c1ce8105f6775e31ed&amp;id=bffce0de6e&amp;e=92ccdfa3a0\">VHF Multi-channel Combiner (3 CH (3 TX+3 RX)) 138-145MHz, 125W, NF Connectors: Very compact size, low insertion loss, good VSWR performance</a></p>\n</li>\n</ul>\n<p>&quot;2020 saw strong growth in our software products division,&quot; said Frank Ye, President of Acentury Inc. &quot;We will continue to invest in RF-related software and hardware products to help accelerate innovation and support for global wireless communication networks.&quot;</p>\n<p>To keep connected to educational content and more company and product updates, subscribe to our company newsletter.</p>\n<p><a href=\"https://www.acentury.co/newsletter-signup-c\"><strong>Subscribe to the Acentury Newsletter</strong></a></p>\n<h3>About Acentury</h3>\n<p>Founded in 2007, Acentury is a technology solutions company that innovates, supplies, and produces products for wireless communication networks. Since becoming a recognized leader in wireless test and measurement solutions, Acentury has successfully launched several global product brands including Radiocomm, a passive network products division with industry-leading low PIM (-165dBc) technologies, and LAMTA, a software-based platform to help run and manage 3G/4G/5G lab test scenarios and lab resources.</p>\n<p><strong><em>Press Contact</em></strong>\n<br>Judith Wang\n<br>905-554-3633\n<br>judith.wang@acentury.co</p>', '2021-03-18 17:44:03', 1, '2021-04-12 17:44:18', '2021-04-28 18:37:10', NULL, 0),
(35, 3, 'IRISS Technologies and Acentury partner to grow Radiocomm business in Turkey', 'iriss-technologies', 'Radiocomm, the network components division of Acentury Inc., is proud to announce a partnership with IRISS Technologies.  IRISS will act as Radiocomm’s distributor in Turkey.', 'Radiocomm, the network components division of Acentury Inc., is proud to announce a partnership with IRISS Technologies.  IRISS will act as Radiocomm’s distributor in Turkey.\r\n\r\n“We’re extremely excited to have IRISS join the Radiocomm team.  We are very impressed by IRISS and the success they’ve been able to achieve in Turkey.  In speaking with the IRISS team, it was clear that they would be an ideal partner for Radiocomm.  We have the highest confidence that IRISS’ customers will be very satisfied with Radiocomm products,” said Frank Ye, CEO of Acentury.\r\n\r\n“Radiocomm is a perfect addition to our product family.  IRISS has been highly successful in servicing the wireless communication industry in Turkey.  Our customers often ask about RF components for use in the lab and in the field.  With Radiocomm, we now have world class offering,” said Cem Cagatay Karalli, Strategy & Business Development Director at IRISS Technologies. \r\n\r\n\r\n**ABOUT IRISS Technologies**<br>\r\nAs IRISS, we offer you the technology of the future so that the flow of information does not slow down and is not interrupted. In this journey that we started in 2013, our biggest assurance was the experience we have gained in the informatics sector since 2003. We started to support the informatics and telecommunication companies of our country with the most up-to-date \"Test and Measurement\" technologies by increasing this accumulation day by day. As much as we suggested measures to prevent the \"bad scenario\" from ever happening, we fixed the problems that IT experts could not identify and eliminate. <br>\r\nhttp://iriss.com.tr/\r\n\r\n**ABOUT Radiocomm**<br>\r\nRadiocomm, the network components division of Acentury Inc., was launched in 2011 and developed a reputation for its superior technical performance, reliability, and customization services. We pride ourselves in creating a unique customer experience from product development to on-time product delivery. We help service providers, infrastructure equipment manufacturers, educational institutions, government agency departments, and system integrators meet their complex and dynamic requirements.  Radiocomm components cover a wider operating frequency spectrum and higher power applications. With the deployment of outdoor systems with high power (up to 80 W) and 4x4 MIMO, the -165 dBc extra-low PIM becomes an essential requirement to solve complex interference issues.<br>\r\nhttps://radiocomm.co', '<p>Radiocomm, the network components division of Acentury Inc., is proud to announce a partnership with IRISS Technologies.  IRISS will act as Radiocomm’s distributor in Turkey.</p>\n<p>“We’re extremely excited to have IRISS join the Radiocomm team.  We are very impressed by IRISS and the success they’ve been able to achieve in Turkey.  In speaking with the IRISS team, it was clear that they would be an ideal partner for Radiocomm.  We have the highest confidence that IRISS’ customers will be very satisfied with Radiocomm products,” said Frank Ye, CEO of Acentury.</p>\n<p>“Radiocomm is a perfect addition to our product family.  IRISS has been highly successful in servicing the wireless communication industry in Turkey.  Our customers often ask about RF components for use in the lab and in the field.  With Radiocomm, we now have world class offering,” said Cem Cagatay Karalli, Strategy &amp; Business Development Director at IRISS Technologies. </p>\n<p><strong>ABOUT IRISS Technologies</strong><br>\nAs IRISS, we offer you the technology of the future so that the flow of information does not slow down and is not interrupted. In this journey that we started in 2013, our biggest assurance was the experience we have gained in the informatics sector since 2003. We started to support the informatics and telecommunication companies of our country with the most up-to-date &quot;Test and Measurement&quot; technologies by increasing this accumulation day by day. As much as we suggested measures to prevent the &quot;bad scenario&quot; from ever happening, we fixed the problems that IT experts could not identify and eliminate. <br>\n<a href=\"http://iriss.com.tr/\">http://iriss.com.tr/</a></p>\n<p><strong>ABOUT Radiocomm</strong><br>\nRadiocomm, the network components division of Acentury Inc., was launched in 2011 and developed a reputation for its superior technical performance, reliability, and customization services. We pride ourselves in creating a unique customer experience from product development to on-time product delivery. We help service providers, infrastructure equipment manufacturers, educational institutions, government agency departments, and system integrators meet their complex and dynamic requirements.  Radiocomm components cover a wider operating frequency spectrum and higher power applications. With the deployment of outdoor systems with high power (up to 80 W) and 4x4 MIMO, the -165 dBc extra-low PIM becomes an essential requirement to solve complex interference issues.<br>\n<a href=\"https://radiocomm.co\">https://radiocomm.co</a></p>', '2021-04-06 20:50:47', 1, '2021-04-22 20:51:12', '2021-04-22 20:51:12', NULL, 0),
(36, 3, 'How We Manufactured and Shipped 192km of Fiber for A Major Telco in Just 3 Weeks During the COVID Holiday Season', 'how-we-supplied-and-shipped-200km-fiber', 'Acentury works hard to help our global partners and clients. Read on to see how we were able to help a major South American telecommunication service provider to expand and improve their broadband internet service by rolling out fiber to the homes (FTTH) in a large swath of the country.', 'Acentury works hard to help our global partners and clients. Read on to see how we were able to help a major South American telecommunication service provider to expand and improve their broadband internet service by rolling out fiber to the homes (FTTH) in a large swath of the country. \r\n\r\nTelecommunication service providers require supplier partners who can deliver an end-to-end customer experience. Procuring high quality products covers only one facet of their needs. Fast and reliable service with timely delivery of product samples and production volumes are just as important. Here are a few real-world examples of how we helped a major telecom provider in South America with their dynamic needs during the 2020 COVID year: \r\n\r\n-   In mid-August 2020, we were asked for a sample of Acentury Radiocomm\'s GJYXFCH Self-Supporting Bow-Type Drop Fiber Cable [linked]. We supplied and delivered a 500-meter fiber cable sample from the United States to South America in just 3 weeks. As per the customer\'s request, we shipped it in the regular-size drum so they could get a feel of how the fiber cable rolled out of the drum. \r\n\r\n-   In mid-October 2020, we provided a competitively priced quote for 600km of FTTH fiber cable with a fast lead time of 10-12 weeks, which was incredibly fast compared to quotes from other fiber providers  \r\n\r\n-   Late December 2020, while this order was being produced, the same customer sent a separate order for fiber cables to be delivered as soon as possible. Despite the COVID holiday season, we pushed for production in less than 3 weeks and shipped 200km of fiber cable via air. The FTTH fiber cables were delivered in South America on time and as promised. \r\n\r\nThe FTTH fiber cables were used in the customer\'s FTTH project, and they are very happy with the product quality. \r\n\r\nInterested in learning how Radiocomm\'s fiber cables and solutions can help your projects? [Browse our e-catalogue](https://radiocomm.co/c/fiber-cable) or [contact us directly](https://acentury.co/ca/contact) for customized, expert solutions.\r\n\r\nWant to stay updated with our products and top industry solutions? [Sign up to our bi-monthly newsletter.](https://acentury.co/newsletter-signup-c)\r\n\r\n**About Radiocomm**\r\n\r\n Acentury is a proven technology solutions provider in the wireless communications industry. For over ten years we have designed and deployed solutions, products, and services for Tier 1 carrier operators and internet-scale enterprises across the Americas. With our Radiocomm product brand, we feature industry-leading extra low PIM (-165dBc) components and cables for 5G wideband outdoor and in-building DAS applications. We have successfully deployed thousands of network components that meet the requirements and scale of several carrier-grade networks with zero field returns to date. Our fiber optic product portfolio is comprehensive and features highly durable properties for all applications and integrated solutions.   \r\n\r\nRadiocomm continues to maintain a reputation for superior performance with outstanding reliability and quality; we stand by our passive network components with a 1yr manufacturing warranty along with a test record printout for each component we ship.', '<p>Acentury works hard to help our global partners and clients. Read on to see how we were able to help a major South American telecommunication service provider to expand and improve their broadband internet service by rolling out fiber to the homes (FTTH) in a large swath of the country. </p>\n<p>Telecommunication service providers require supplier partners who can deliver an end-to-end customer experience. Procuring high quality products covers only one facet of their needs. Fast and reliable service with timely delivery of product samples and production volumes are just as important. Here are a few real-world examples of how we helped a major telecom provider in South America with their dynamic needs during the 2020 COVID year: </p>\n<ul>\n<li>\n<p>In mid-August 2020, we were asked for a sample of Acentury Radiocomm\'s GJYXFCH Self-Supporting Bow-Type Drop Fiber Cable [linked]. We supplied and delivered a 500-meter fiber cable sample from the United States to South America in just 3 weeks. As per the customer\'s request, we shipped it in the regular-size drum so they could get a feel of how the fiber cable rolled out of the drum. </p>\n</li>\n<li>\n<p>In mid-October 2020, we provided a competitively priced quote for 600km of FTTH fiber cable with a fast lead time of 10-12 weeks, which was incredibly fast compared to quotes from other fiber providers  </p>\n</li>\n<li>\n<p>Late December 2020, while this order was being produced, the same customer sent a separate order for fiber cables to be delivered as soon as possible. Despite the COVID holiday season, we pushed for production in less than 3 weeks and shipped 200km of fiber cable via air. The FTTH fiber cables were delivered in South America on time and as promised. </p>\n</li>\n</ul>\n<p>The FTTH fiber cables were used in the customer\'s FTTH project, and they are very happy with the product quality. </p>\n<p>Interested in learning how Radiocomm\'s fiber cables and solutions can help your projects? <a href=\"https://radiocomm.co/c/fiber-cable\">Browse our e-catalogue</a> or <a href=\"https://acentury.co/ca/contact\">contact us directly</a> for customized, expert solutions.</p>\n<p>Want to stay updated with our products and top industry solutions? <a href=\"https://acentury.co/newsletter-signup-c\">Sign up to our bi-monthly newsletter.</a></p>\n<p><strong>About Radiocomm</strong></p>\n<p>Acentury is a proven technology solutions provider in the wireless communications industry. For over ten years we have designed and deployed solutions, products, and services for Tier 1 carrier operators and internet-scale enterprises across the Americas. With our Radiocomm product brand, we feature industry-leading extra low PIM (-165dBc) components and cables for 5G wideband outdoor and in-building DAS applications. We have successfully deployed thousands of network components that meet the requirements and scale of several carrier-grade networks with zero field returns to date. Our fiber optic product portfolio is comprehensive and features highly durable properties for all applications and integrated solutions.   </p>\n<p>Radiocomm continues to maintain a reputation for superior performance with outstanding reliability and quality; we stand by our passive network components with a 1yr manufacturing warranty along with a test record printout for each component we ship.</p>', '2021-02-23 19:20:58', 1, '2021-04-28 18:22:18', '2021-04-28 18:22:18', NULL, 0);
INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `metadata`, `featured`) VALUES
(37, 3, '5G Applications', '5g-applications', 'In today’s discussion we discuss the various 5G applications, both for the enterprise and consumer user.', '##### The Acentury Channel Episode #2: 5G Applications \r\n\r\n  \r\n\r\nIn today’s discussion we discuss the various 5G applications, both for the enterprise and consumer user. \r\n\r\n  \r\n\r\n**Host:** David Shin, Marketing   \r\n\r\n**Guest:** Leo Lin, VP Solutions Development, Acentury Inc.  \r\n\r\n  \r\n\r\n##### Listen Now \r\n\r\n  \r\n\r\n* [Spotify](https://open.spotify.com/episode/3bUGgk5gC13l8ursjBWhK5?si=2a5888ec684e470f) \r\n\r\n* [YouTube](https://www.youtube.com/watch?v=j-rRUvuf0jA) \r\n\r\n  \r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/watch?v=j-rRUvuf0jA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe> \r\n\r\n##### About the Acentury Channel: \r\n\r\n  \r\n\r\nThe Acentury Channel hosts open discussions with in-house industry experts about the wireless and wireline networking industry. We plan to cover a wide array of topics and provide our insight in latest trends, news, and product innovations. \r\n\r\n \r\n\r\n--- \r\n\r\n \r\n\r\n[David] Greetings and welcome to the second episode of the Acentury Channel. I’m David Shin, your host and today we have a familiar guest, Leo Lin, VP of Solutions Development at Acentury Inc. Today, we talk about 5G applications. I start by posing Leo with a question. Is what we’re seeing now with 5G applications just on the cusp of being adopted, very similar to what we saw in the mid 2000s when 3G tech, and broad speed, high speed internet was very much a thing but not quite broadly adopted. I catch up with him here. \r\n\r\n \r\n\r\n[Leo] I would say it will be similar. History is always repeating. If you remember that time, people were debating even with 3G, why do we need that kind of bandwidth. We only have voice, and use very little data. Why do people need bandwidth on their mobile phone? At that time, we seriously didn\'t need it. But, after iPhone released the first unit, I think late 2000? Around 2007. Then people started realizing the bandwidth is not enough. We needed to have more for the consumer. And video would become the major application on devices. At that time, they started complaining that we don\'t have enough bandwidth, we needed more. 5G - I would say it would be the same. Right now, if we ask around, it\'s why [B2B businesses] need 5G - the consumer doesn\'t need 5G. It\'s mostly for the enterprise customer. But you never know, right? Once you have a 5G platform or network ready, then we may see the same kind of thing happen. Just like another Apple or another device company, they develop a new product or a new application, then start eating up the bandwidth. Even 5G is not enough at that time. Then we start looking for more bandwidth or less latency. We don\'t know, but the one thing we should know is that we should have the 5G network ready as soon as possible, and then the market will respond. That\'s my view.  \r\n\r\n \r\n\r\n[David] For sure, for sure. I don\'t think are not known applications in the industry. Could you just elaborate just for those that don\'t know, some of the unique 5G applications that you have seen that are particularly interesting. I think you mentioned one that was for potentially handling ambulances and first responders. Can you just comment on that a little bit? \r\n\r\n \r\n\r\n[Leo] I saw this kind of application in the Asian market, actually. The idea is to build 5G enabled ambulances. Enabling the 5G network on the ambulance so that they can move some medical equipment on the ambulance, and then for example when they pick up the patient or pick up some injured persons from an accident, the doctor can do a measurement right away, they don\'t have to wait until the patient arrives at the hospital. That means they can certainly react to this kind of thing as soon as possible. So, once they arrive at the hospital, they can do the operation, whatever operation, right away. They don\'t have to wait. By that time, they can reduce the death rate. That\'s very useful. For sure, this is for the enterprise, this kind of application, it won\'t be for the consumer. It\'s the government pushing this, the 5G ambulance. Probably the first case I saw in Asia. \r\n\r\n \r\n\r\n[David] Interesting. I think your emphasis on the enterprise application is probably... it\'d be very difficult to see a consumer use case at this point in time. I mean, outside of maybe gaming.  \r\n\r\n \r\n\r\n[Leo] Gaming or maybe for example the retail market. The tourism market. For example, before you book your travel, you would want to experience the nation you’d prefer. Cuba, or Mexico, or something. \"I don\'t know where to go\" or which one is better, but this way, the tourism company can send you VR glasses, then they have people at these destinations that can do live demos for you. They can bring you to some beach, hotel, or restaurant, some place at the destination. You can experience something first, and it would help you make a decision. Oh, maybe I like Mexico better, or I like Cuba better. But even this, I will still consider this an enterprise application because from the 5G point of view you\'re targeting the tourism company or the retail company. Consumers only use VR glasses to experience something. \r\n\r\n \r\n\r\n[David] I think that I agree with you. It\'s still considered a B2B case. I would also say that in order for that experience to happen, if it\'s going to happen in your home, then outside of the glasses you\'re going to need a 5G device, say the iPhone, and then you\'re definitely going to have to have a modem and potentially a router that\'s also 5G enabled depending on where you are in the home. So, there\'s a lot of preliminary devices that you need in order for that to work. Or, maybe that happens at the mall for example, so if you\'re at the mall or some kind of 5G enabled building then that would be a little bit more plausible, because you don\'t need to have all those devices ahead of time. Is that correct? \r\n\r\n \r\n\r\n[Leo] Yup. \r\n\r\n \r\n\r\n[David] So, I think you\'re right. I think the consumer use case is difficult to see right at this moment given that it\'s not just the use cases but it\'s also the investment requirement for the devices and the equipment ahead of time. But that\'s not to say that there could be other means to do that. I know that you and I had an interesting conversation about bands and music, or orchestras. This one probably isn\'t going to happen, but it was just interesting to sort of talk about it because one of the biggest issues for a musician is that in order to do a rehearsal of any sort, you need to do it live. You have to do it in person, there\'s too much latency today. Is it possible if you had a 5G enabled home and others, could it be possible to experience a rehearsal with no latency and I think your answer was it\'s possible but there\'s a bunch of things that need to happen? First of all, you need to receive the signal, it has to be consolidated somewhere, then it needs to send back to people doing the rehearsal, not to mention each of their homes have to be 5G enabled as well. So, there\'s a lot of challenges for that to work and I mean it\'s an interesting use case, and I guess the final part of that is that they need to be somewhat local. I mean, you can\'t rehearse with somebody and someone in Canada and then someone in Asia.  \r\n\r\n \r\n\r\n[Leo] Yea, for this kind of thing right, because there would be a lot of interactive activities, physically you have to be close, otherwise the latency is hard to handle. Maybe within a city or something you could do that. But for sure, it\'s a very interesting application. And then in market, I don\'t know if the market will be big enough or not to support this thing. \r\n\r\n \r\n\r\n[David] I agree with you Leo, it\'d probably be easier to get together, right? [laugh] \r\n\r\n \r\n\r\n[Leo] Yea, like I said right, we are the telecom guy, right. For this kind of application, we have to rely on those musicians. They really understand that kind of industry. They know it in detail. What we can do is provide them the platform on the telecom side and on top of that they can give us a summary requirement like latency, what\'s the minimum latency they need, and how much bandwidth they need, etc. We need to work together to overcome this kind of challenge, right? The good thing is that we are building our own 5G standalone end-to-end network in our office, in our lab, actually. And that will be the platform. I believe for all the enterprise customers for each vertical market, they should have this kind of thing to play around with. So what we can do is from the telecom providers, we provide this kind of platform but we kind of lack the knowledge for vertical market, so we have to involve those experts in that kind of market. Then they understand the KPI, they understand a lot of their own industry. So, we can definitely work together to build their own 5G lab so that they can develop their own 5G application for their own industry. I think that will be the benefit that Acentury can provide, right? \r\n\r\n \r\n\r\n[David] For sure. Recalling Apple\'s live cast again and you know, they built their own lab which was obviously to their best benefit. \r\n\r\n \r\n\r\n[Leo] Yea, that kind of lab is very expensive. [laugh] I don\'t think that even particularly for those SMB customers, I don\'t think they can afford that kind of thing. It\'s too expensive, right? What we\'re building is for those SMB customers, they can afford it, and it\'s simple enough that they can use it, they can maintain it by themselves. On top of that, they can build their own application, 5G application, they can verify, play around, and then when the system\'s ready and also when the carrier has their 5G network ready, they can easily migrate to the production 5G network. Then they can push to the market, right? \r\n\r\n \r\n\r\n[David] Very interesting and very exciting, Leo. I think that it would definitely be worth our time, once you guys are available, once you guys have the lab, it\'d be interesting to tour it, have a look, investigate what are some of the things you\'re doing, some of the things you\'re planning so we can certainly reserve that for a follow-on conversation.  \r\n\r\n \r\n\r\n[Leo] Yup, for sure for sure. We\'ll let you know when our platform is up and running. We probably need some time to tune the system to have the best performance. But again, best performance is kind of tricky. Sometimes with these vertical markets, the best definition for the performance is different from other vertical markets. So we need to have a couple of predefined parameters for different vertical markets. \r\n\r\n \r\n\r\n[David] That makes sense. I think that just working together in partnership and in concert I think is probably the best way to do these things so very excited to hear more about it. So, thanks again Leo for today\'s conversation. Appreciate your time. \r\n\r\n \r\n\r\n[Leo] Thanks for having me.  \r\n\r\n \r\n\r\n[David] No worries.', '<h5>The Acentury Channel Episode #2: 5G Applications</h5>\n<p>In today’s discussion we discuss the various 5G applications, both for the enterprise and consumer user. </p>\n<p><strong>Host:</strong> David Shin, Marketing   </p>\n<p><strong>Guest:</strong> Leo Lin, VP Solutions Development, Acentury Inc.  </p>\n<h5>Listen Now</h5>\n<ul>\n<li>\n<p><a href=\"https://open.spotify.com/episode/3bUGgk5gC13l8ursjBWhK5?si=2a5888ec684e470f\">Spotify</a> </p>\n</li>\n<li>\n<p><a href=\"https://www.youtube.com/watch?v=j-rRUvuf0jA\">YouTube</a> </p>\n</li>\n</ul>\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/watch?v=j-rRUvuf0jA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\n<h5>About the Acentury Channel:</h5>\n<p>The Acentury Channel hosts open discussions with in-house industry experts about the wireless and wireline networking industry. We plan to cover a wide array of topics and provide our insight in latest trends, news, and product innovations. </p>\n<hr />\n<p>[David] Greetings and welcome to the second episode of the Acentury Channel. I’m David Shin, your host and today we have a familiar guest, Leo Lin, VP of Solutions Development at Acentury Inc. Today, we talk about 5G applications. I start by posing Leo with a question. Is what we’re seeing now with 5G applications just on the cusp of being adopted, very similar to what we saw in the mid 2000s when 3G tech, and broad speed, high speed internet was very much a thing but not quite broadly adopted. I catch up with him here. </p>\n<p>[Leo] I would say it will be similar. History is always repeating. If you remember that time, people were debating even with 3G, why do we need that kind of bandwidth. We only have voice, and use very little data. Why do people need bandwidth on their mobile phone? At that time, we seriously didn\'t need it. But, after iPhone released the first unit, I think late 2000? Around 2007. Then people started realizing the bandwidth is not enough. We needed to have more for the consumer. And video would become the major application on devices. At that time, they started complaining that we don\'t have enough bandwidth, we needed more. 5G - I would say it would be the same. Right now, if we ask around, it\'s why [B2B businesses] need 5G - the consumer doesn\'t need 5G. It\'s mostly for the enterprise customer. But you never know, right? Once you have a 5G platform or network ready, then we may see the same kind of thing happen. Just like another Apple or another device company, they develop a new product or a new application, then start eating up the bandwidth. Even 5G is not enough at that time. Then we start looking for more bandwidth or less latency. We don\'t know, but the one thing we should know is that we should have the 5G network ready as soon as possible, and then the market will respond. That\'s my view.  </p>\n<p>[David] For sure, for sure. I don\'t think are not known applications in the industry. Could you just elaborate just for those that don\'t know, some of the unique 5G applications that you have seen that are particularly interesting. I think you mentioned one that was for potentially handling ambulances and first responders. Can you just comment on that a little bit? </p>\n<p>[Leo] I saw this kind of application in the Asian market, actually. The idea is to build 5G enabled ambulances. Enabling the 5G network on the ambulance so that they can move some medical equipment on the ambulance, and then for example when they pick up the patient or pick up some injured persons from an accident, the doctor can do a measurement right away, they don\'t have to wait until the patient arrives at the hospital. That means they can certainly react to this kind of thing as soon as possible. So, once they arrive at the hospital, they can do the operation, whatever operation, right away. They don\'t have to wait. By that time, they can reduce the death rate. That\'s very useful. For sure, this is for the enterprise, this kind of application, it won\'t be for the consumer. It\'s the government pushing this, the 5G ambulance. Probably the first case I saw in Asia. </p>\n<p>[David] Interesting. I think your emphasis on the enterprise application is probably... it\'d be very difficult to see a consumer use case at this point in time. I mean, outside of maybe gaming.  </p>\n<p>[Leo] Gaming or maybe for example the retail market. The tourism market. For example, before you book your travel, you would want to experience the nation you’d prefer. Cuba, or Mexico, or something. &quot;I don\'t know where to go&quot; or which one is better, but this way, the tourism company can send you VR glasses, then they have people at these destinations that can do live demos for you. They can bring you to some beach, hotel, or restaurant, some place at the destination. You can experience something first, and it would help you make a decision. Oh, maybe I like Mexico better, or I like Cuba better. But even this, I will still consider this an enterprise application because from the 5G point of view you\'re targeting the tourism company or the retail company. Consumers only use VR glasses to experience something. </p>\n<p>[David] I think that I agree with you. It\'s still considered a B2B case. I would also say that in order for that experience to happen, if it\'s going to happen in your home, then outside of the glasses you\'re going to need a 5G device, say the iPhone, and then you\'re definitely going to have to have a modem and potentially a router that\'s also 5G enabled depending on where you are in the home. So, there\'s a lot of preliminary devices that you need in order for that to work. Or, maybe that happens at the mall for example, so if you\'re at the mall or some kind of 5G enabled building then that would be a little bit more plausible, because you don\'t need to have all those devices ahead of time. Is that correct? </p>\n<p>[Leo] Yup. </p>\n<p>[David] So, I think you\'re right. I think the consumer use case is difficult to see right at this moment given that it\'s not just the use cases but it\'s also the investment requirement for the devices and the equipment ahead of time. But that\'s not to say that there could be other means to do that. I know that you and I had an interesting conversation about bands and music, or orchestras. This one probably isn\'t going to happen, but it was just interesting to sort of talk about it because one of the biggest issues for a musician is that in order to do a rehearsal of any sort, you need to do it live. You have to do it in person, there\'s too much latency today. Is it possible if you had a 5G enabled home and others, could it be possible to experience a rehearsal with no latency and I think your answer was it\'s possible but there\'s a bunch of things that need to happen? First of all, you need to receive the signal, it has to be consolidated somewhere, then it needs to send back to people doing the rehearsal, not to mention each of their homes have to be 5G enabled as well. So, there\'s a lot of challenges for that to work and I mean it\'s an interesting use case, and I guess the final part of that is that they need to be somewhat local. I mean, you can\'t rehearse with somebody and someone in Canada and then someone in Asia.  </p>\n<p>[Leo] Yea, for this kind of thing right, because there would be a lot of interactive activities, physically you have to be close, otherwise the latency is hard to handle. Maybe within a city or something you could do that. But for sure, it\'s a very interesting application. And then in market, I don\'t know if the market will be big enough or not to support this thing. </p>\n<p>[David] I agree with you Leo, it\'d probably be easier to get together, right? [laugh] </p>\n<p>[Leo] Yea, like I said right, we are the telecom guy, right. For this kind of application, we have to rely on those musicians. They really understand that kind of industry. They know it in detail. What we can do is provide them the platform on the telecom side and on top of that they can give us a summary requirement like latency, what\'s the minimum latency they need, and how much bandwidth they need, etc. We need to work together to overcome this kind of challenge, right? The good thing is that we are building our own 5G standalone end-to-end network in our office, in our lab, actually. And that will be the platform. I believe for all the enterprise customers for each vertical market, they should have this kind of thing to play around with. So what we can do is from the telecom providers, we provide this kind of platform but we kind of lack the knowledge for vertical market, so we have to involve those experts in that kind of market. Then they understand the KPI, they understand a lot of their own industry. So, we can definitely work together to build their own 5G lab so that they can develop their own 5G application for their own industry. I think that will be the benefit that Acentury can provide, right? </p>\n<p>[David] For sure. Recalling Apple\'s live cast again and you know, they built their own lab which was obviously to their best benefit. </p>\n<p>[Leo] Yea, that kind of lab is very expensive. [laugh] I don\'t think that even particularly for those SMB customers, I don\'t think they can afford that kind of thing. It\'s too expensive, right? What we\'re building is for those SMB customers, they can afford it, and it\'s simple enough that they can use it, they can maintain it by themselves. On top of that, they can build their own application, 5G application, they can verify, play around, and then when the system\'s ready and also when the carrier has their 5G network ready, they can easily migrate to the production 5G network. Then they can push to the market, right? </p>\n<p>[David] Very interesting and very exciting, Leo. I think that it would definitely be worth our time, once you guys are available, once you guys have the lab, it\'d be interesting to tour it, have a look, investigate what are some of the things you\'re doing, some of the things you\'re planning so we can certainly reserve that for a follow-on conversation.  </p>\n<p>[Leo] Yup, for sure for sure. We\'ll let you know when our platform is up and running. We probably need some time to tune the system to have the best performance. But again, best performance is kind of tricky. Sometimes with these vertical markets, the best definition for the performance is different from other vertical markets. So we need to have a couple of predefined parameters for different vertical markets. </p>\n<p>[David] That makes sense. I think that just working together in partnership and in concert I think is probably the best way to do these things so very excited to hear more about it. So, thanks again Leo for today\'s conversation. Appreciate your time. </p>\n<p>[Leo] Thanks for having me.  </p>\n<p>[David] No worries.</p>', '2020-12-21 19:25:33', 1, '2021-04-28 18:26:26', '2021-04-28 18:26:26', NULL, 0),
(38, 3, 'Guide to 5G: Distributed Antenna Systems (5G DAS)', 'guide-5g-distributed-antenna-systems-das', 'Distributed Antenna Systems (DAS) are one of the most popular in-building solutions. But what will be 5G\'s impact on DAS? Our guide to 5G DAS: Learn more about DAS, how it works, its benefits and challenges, and its role in 5G deployment.', 'The following article explores the impact of 5G on DAS systems. To begin, we will first review what DAS is, along with the benefits, the challenges and what considerations are involved when managing a 5G deployment.\r\n\r\n**What is DAS (Distributed Antenna Systems)? How does DAS work and why is it a great In-Building Coverage Solution?**\r\n\r\n**What are Distributed Antenna Systems (DAS)?** \r\n\r\nA DAS is a system that distributes the RF signal across antennas that are installed in the building primarily used to modify, improve or extend coverage of a site. A DAS consists of:\r\n\r\n1. A Signal Source\r\n\r\n2. A Distribution System\r\n\r\nThe signal source - usually a base station, small cell, or repeater - has its signal distributed by fiber optic cables to remote devices throughout the building. DAS is different from other systems like microcells or repeaters because it uses many interconnected devices within large facilities to boost performance (versus one or several united per facility).\r\n\r\nRead on to learn why DAS may be the best solution for you over other in-building solutions.\r\n\r\n**Why is an in-building solution needed?**\r\n\r\nAn in-building solution is needed because macro coverage will not penetrate all buildings. The use of reflective and dense materials prohibits RF energy from propagating within many structures. Basements and parking garages especially are surrounded in concrete rebar. For newer buildings, LEEDs and Green Building initiatives have requirements to add RF signal attenuation through the increased use of Low-E glass (metals in glass) and reflective (foil backed) insulation. Finally, shadowing can be caused by nearby structures such as buildings, hills/mountains, etc.\r\n\r\nFirst, let\'s compare some of the in-building solutions.\r\n\r\n- **Repeaters or bi-directional amplifiers (BDA)** are used in small venues to expand coverage.  DAS antennas and splitters provide coverage to various locations inside buildings from the input of the amplifier.\r\n\r\n- **Base Transceiver Stations (BTS)** are used in the macro network suitable for wide area coverage supporting a large number of users, but it is expensive and requires a dedicated backhaul.\r\n\r\n- **Small cells** are low powered (<1 Watt) radio access points to increase capacity and offload traffic in outdoor or indoor coverage.\r\n\r\n- **Femtocells** provide BTS service to 4 -- 20 users over a limited area (5K sq ft).\r\n\r\n**What are the different types of DAS?**\r\n\r\n**1. Passive DAS:** Radio frequency is distributed over coax cables to each antenna from an RF source (repeater or base station). However, coax cable transmission losses can limit effectiveness in large buildings for higher frequency transmissions.\r\n\r\n**2. Active DAS:** Fiber-optic cabling is used for distribution to overcome the transmission losses that occur with a coax cable system. Fiber optic cables connect directly to the active antennas for radiation.\r\n\r\n**3. Hybrid DAS:** Combines the best of a passive and active DAS system. Like active DAS, fiber-optic cabling is used for distribution. The digital signal is then converted to an analog RF signal via a Remote Radio unit, which is then connected to a floor antenna for radiation.\r\n\r\n**4. Hybrid DAS Small Cell solution. **Similar to Hybrid DAS, but instead of using fiber-optic cabling for distribution, a small cell deployment is used for radiation on each floor.  \r\n\r\n**What are the benefits of DAS?**\r\n\r\nThere are a number of benefits with DAS systems:\r\n\r\n- **Very scalable with excellent maintenance.** DAS is a scalable network that can meet future capacity requirements and additional carriers by adding additional nodes. This can be a significant benefit for neutral property owners who value the ease of adding additional frequency bands or operators to an existing system. Responding to market dynamics, equipment architecture changes and new technologies is far easier compared to a small cell system, which would require the capital cost of a completely new deployment if a new signal or frequency band is added.\r\n\r\n- **Good coverage, especially for highly populated buildings.** DAS architecture provides coverage in areas that cannot be effectively addressed with traditional sites. Because of its flexibility and scalability, it is especially recommended for larger facilities (100,000 sq ft to over 500,000 sq ft)\r\n\r\n- **Capacity alignment to actual need.** The capacity requirements more closely match to actual market requirements. It uses available frequency spectrum efficiently through multiple low-power transmission points.\r\n\r\n- **Interference reduction.** It reduces interference through low radiation centers and lower output power. DAS provides better data throughput given signal strength and proximity of transmission points to user equipment.\r\n\r\n- **Reducing small cell deployments. **A hybrid DAS and small cell solution can reduce the number of small cell deployments at a single location. Reducing small cell deployments is also beneficial to reducing potential interference issues.\r\n\r\n**What are the challenges of DAS?**\r\n\r\nWith higher RF power, a growing number of frequency bands, and next generation 5G systems carrying a wider range of carrier frequencies, Passive intermodulation distortion (PIM) from cross band complications can be a significant challenge for in-building DAS systems. In contrast, small cell systems operate like a WIFI AP, and complicated PIM issues are not a consideration.\r\n\r\nThe PIM challenge can be complicated further with indoor DAS systems because network components are hidden from view for aesthetic reasons. PIM issues that surface after installation can be a significant OPEX cost burden to resolve and fix.\r\n\r\n**Is there a 5G Distributed Antenna System?**\r\n\r\n5G deployments operate in the sub 6GHz bands. Operators and carriers are re-farming their existing spectrum over to 5G, allowing for increased compatibility for newer and older DAS. The 3600MHz 5G band for example, is a popular choice worldwide, and can be supported by DAS components.\r\n\r\nTo meet the design challenges of PIM and 5G frequency coverage, selecting a component supplier who can offer passive network components and cables with low PIM rejection specifications and wideband frequency coverage is a consideration. Passive components engineered below the absolute lowest noise floor could meet the variability of multiple different RF systems:\r\n\r\n- For UMTS systems the receiver sensitivity is -119dBm, which requires at least -162dBc PIM\r\n\r\n- For LTE systems the receiver sensitivity is -126dBm, which requires at least -169dBc PIM\r\n\r\n- For higher power wireless systems greater than 46dBm such as outdoor DAS and cellular systems, <-165dBc PIM is required to avoid PIM impacts.\r\n\r\nOne such example is [Radiocomm\'s](https://www.radiocomm.ca/) latest set of [Low PIM Hybrid Couplers](https://radiocomm.ca/c/low-pim-coupler/low-pim-hybrid-coupler) that achieves -165dBc PIM across a wideband frequency of 520MHz-6000Mhz.\r\n\r\nTo learn more about the 5G impact on DAS systems, subscribe to our Industry Newsletter where will we continue to publish more educational materials:\r\n\r\n[Subscribe to the newsletter](https://www.acentury.co/newsletter-signup-c)\r\n\r\n**In Summary**\r\n\r\nDistributed Antenna System (DAS) is an in-building solution that consists of a signal source, a distribution system, and a network of antennas installed throughout the building. DAS is a great option for in-building coverage, especially for larger facilities. It is reliable, extremely scalable and easily maintainable. It introduces PIM issues however, and selecting a low PIM and ultra-wideband frequency component supplier is critical to reduce OPEX; in contrast, small cells do not have PIM issues, but do require completely new deployments if a new set of frequencies or signals are added, which can increase maintenance costs.\r\n\r\n**Have questions?**\r\n\r\n**Acentury** has been manufacturing low PIM wideband solutions for several years and offers superior low PIM RF products such as cables and components required for indoor and outdoor DAS applications. [Contact us today for expert consultation and customized solutions.](https://www.acentury.co/radiocomm-customization)', '<p>The following article explores the impact of 5G on DAS systems. To begin, we will first review what DAS is, along with the benefits, the challenges and what considerations are involved when managing a 5G deployment.</p>\n<p><strong>What is DAS (Distributed Antenna Systems)? How does DAS work and why is it a great In-Building Coverage Solution?</strong></p>\n<p><strong>What are Distributed Antenna Systems (DAS)?</strong> </p>\n<p>A DAS is a system that distributes the RF signal across antennas that are installed in the building primarily used to modify, improve or extend coverage of a site. A DAS consists of:</p>\n<ol>\n<li>\n<p>A Signal Source</p>\n</li>\n<li>\n<p>A Distribution System</p>\n</li>\n</ol>\n<p>The signal source - usually a base station, small cell, or repeater - has its signal distributed by fiber optic cables to remote devices throughout the building. DAS is different from other systems like microcells or repeaters because it uses many interconnected devices within large facilities to boost performance (versus one or several united per facility).</p>\n<p>Read on to learn why DAS may be the best solution for you over other in-building solutions.</p>\n<p><strong>Why is an in-building solution needed?</strong></p>\n<p>An in-building solution is needed because macro coverage will not penetrate all buildings. The use of reflective and dense materials prohibits RF energy from propagating within many structures. Basements and parking garages especially are surrounded in concrete rebar. For newer buildings, LEEDs and Green Building initiatives have requirements to add RF signal attenuation through the increased use of Low-E glass (metals in glass) and reflective (foil backed) insulation. Finally, shadowing can be caused by nearby structures such as buildings, hills/mountains, etc.</p>\n<p>First, let\'s compare some of the in-building solutions.</p>\n<ul>\n<li>\n<p><strong>Repeaters or bi-directional amplifiers (BDA)</strong> are used in small venues to expand coverage.  DAS antennas and splitters provide coverage to various locations inside buildings from the input of the amplifier.</p>\n</li>\n<li>\n<p><strong>Base Transceiver Stations (BTS)</strong> are used in the macro network suitable for wide area coverage supporting a large number of users, but it is expensive and requires a dedicated backhaul.</p>\n</li>\n<li>\n<p><strong>Small cells</strong> are low powered (&lt;1 Watt) radio access points to increase capacity and offload traffic in outdoor or indoor coverage.</p>\n</li>\n<li>\n<p><strong>Femtocells</strong> provide BTS service to 4 -- 20 users over a limited area (5K sq ft).</p>\n</li>\n</ul>\n<p><strong>What are the different types of DAS?</strong></p>\n<p><strong>1. Passive DAS:</strong> Radio frequency is distributed over coax cables to each antenna from an RF source (repeater or base station). However, coax cable transmission losses can limit effectiveness in large buildings for higher frequency transmissions.</p>\n<p><strong>2. Active DAS:</strong> Fiber-optic cabling is used for distribution to overcome the transmission losses that occur with a coax cable system. Fiber optic cables connect directly to the active antennas for radiation.</p>\n<p><strong>3. Hybrid DAS:</strong> Combines the best of a passive and active DAS system. Like active DAS, fiber-optic cabling is used for distribution. The digital signal is then converted to an analog RF signal via a Remote Radio unit, which is then connected to a floor antenna for radiation.</p>\n<p><strong>4. Hybrid DAS Small Cell solution. </strong>Similar to Hybrid DAS, but instead of using fiber-optic cabling for distribution, a small cell deployment is used for radiation on each floor.  </p>\n<p><strong>What are the benefits of DAS?</strong></p>\n<p>There are a number of benefits with DAS systems:</p>\n<ul>\n<li>\n<p><strong>Very scalable with excellent maintenance.</strong> DAS is a scalable network that can meet future capacity requirements and additional carriers by adding additional nodes. This can be a significant benefit for neutral property owners who value the ease of adding additional frequency bands or operators to an existing system. Responding to market dynamics, equipment architecture changes and new technologies is far easier compared to a small cell system, which would require the capital cost of a completely new deployment if a new signal or frequency band is added.</p>\n</li>\n<li>\n<p><strong>Good coverage, especially for highly populated buildings.</strong> DAS architecture provides coverage in areas that cannot be effectively addressed with traditional sites. Because of its flexibility and scalability, it is especially recommended for larger facilities (100,000 sq ft to over 500,000 sq ft)</p>\n</li>\n<li>\n<p><strong>Capacity alignment to actual need.</strong> The capacity requirements more closely match to actual market requirements. It uses available frequency spectrum efficiently through multiple low-power transmission points.</p>\n</li>\n<li>\n<p><strong>Interference reduction.</strong> It reduces interference through low radiation centers and lower output power. DAS provides better data throughput given signal strength and proximity of transmission points to user equipment.</p>\n</li>\n<li>\n<p><strong>Reducing small cell deployments. </strong>A hybrid DAS and small cell solution can reduce the number of small cell deployments at a single location. Reducing small cell deployments is also beneficial to reducing potential interference issues.</p>\n</li>\n</ul>\n<p><strong>What are the challenges of DAS?</strong></p>\n<p>With higher RF power, a growing number of frequency bands, and next generation 5G systems carrying a wider range of carrier frequencies, Passive intermodulation distortion (PIM) from cross band complications can be a significant challenge for in-building DAS systems. In contrast, small cell systems operate like a WIFI AP, and complicated PIM issues are not a consideration.</p>\n<p>The PIM challenge can be complicated further with indoor DAS systems because network components are hidden from view for aesthetic reasons. PIM issues that surface after installation can be a significant OPEX cost burden to resolve and fix.</p>\n<p><strong>Is there a 5G Distributed Antenna System?</strong></p>\n<p>5G deployments operate in the sub 6GHz bands. Operators and carriers are re-farming their existing spectrum over to 5G, allowing for increased compatibility for newer and older DAS. The 3600MHz 5G band for example, is a popular choice worldwide, and can be supported by DAS components.</p>\n<p>To meet the design challenges of PIM and 5G frequency coverage, selecting a component supplier who can offer passive network components and cables with low PIM rejection specifications and wideband frequency coverage is a consideration. Passive components engineered below the absolute lowest noise floor could meet the variability of multiple different RF systems:</p>\n<ul>\n<li>\n<p>For UMTS systems the receiver sensitivity is -119dBm, which requires at least -162dBc PIM</p>\n</li>\n<li>\n<p>For LTE systems the receiver sensitivity is -126dBm, which requires at least -169dBc PIM</p>\n</li>\n<li>\n<p>For higher power wireless systems greater than 46dBm such as outdoor DAS and cellular systems, &lt;-165dBc PIM is required to avoid PIM impacts.</p>\n</li>\n</ul>\n<p>One such example is <a href=\"https://www.radiocomm.ca/\">Radiocomm\'s</a> latest set of <a href=\"https://radiocomm.ca/c/low-pim-coupler/low-pim-hybrid-coupler\">Low PIM Hybrid Couplers</a> that achieves -165dBc PIM across a wideband frequency of 520MHz-6000Mhz.</p>\n<p>To learn more about the 5G impact on DAS systems, subscribe to our Industry Newsletter where will we continue to publish more educational materials:</p>\n<p><a href=\"https://www.acentury.co/newsletter-signup-c\">Subscribe to the newsletter</a></p>\n<p><strong>In Summary</strong></p>\n<p>Distributed Antenna System (DAS) is an in-building solution that consists of a signal source, a distribution system, and a network of antennas installed throughout the building. DAS is a great option for in-building coverage, especially for larger facilities. It is reliable, extremely scalable and easily maintainable. It introduces PIM issues however, and selecting a low PIM and ultra-wideband frequency component supplier is critical to reduce OPEX; in contrast, small cells do not have PIM issues, but do require completely new deployments if a new set of frequencies or signals are added, which can increase maintenance costs.</p>\n<p><strong>Have questions?</strong></p>\n<p><strong>Acentury</strong> has been manufacturing low PIM wideband solutions for several years and offers superior low PIM RF products such as cables and components required for indoor and outdoor DAS applications. <a href=\"https://www.acentury.co/radiocomm-customization\">Contact us today for expert consultation and customized solutions.</a></p>', '2021-02-05 19:34:21', 1, '2021-04-28 18:41:11', '2021-06-03 21:11:29', NULL, 0),
(39, 3, 'Why is the lowest possible PIM essential, especially for 5G networks?', 'why-lowest-possible-pim', 'You may have noticed a constant emphasis on “extra-low PIM” when reading about network components and cables. Why is a low passive intermodulation (PIM) rating important, especially for 5G networks?', 'Why is the lowest possible PIM essential, especially for 5G networks? \r\n\r\nYou may have noticed a constant emphasis on “extra-low PIM” when reading about network components and cables. Why is a low passive intermodulation (PIM) rating important, especially for 5G networks?  \r\n\r\nFirstly, PIM occurs when two or more signals are present in passive (mechanical) components of a wireless system. Some examples of mechanical components include antennas, cables and connectors. \r\n\r\nThe signals can mix or multiply with each other to generate other signals that impact the original intended signal resulting in degraded performance. Read more about what PIM is, here: https://www.acentury.co/ca/use-cases/b/passive-intermodulation-pim \r\n\r\nIn short, PIM issues will continue to get more complex and frequent with newer generations, and the cost of troubleshooting these problems in the field will increase with it. It is much higher than the cost of installing extra-low PIM passive RF components in the first place. “The lowest possible PIM is not just desirable but essential.” (Microwave Product Digest, 2012)  \r\n\r\nWith the implementation of 5G, higher carrier aggregations and more frequency bands are used by cellular systems, which causes a higher risk for crossband PIM. The PIM risk is also increased along with colocations and the usage of multiband combiners for higher power scenarios, especially for macro systems. Finally, the use of higher-order modulation techniques, smaller channel spacing, and multiple transmissions using a single antenna in 5G all increase the risk of PIM problems as well. \r\n\r\nTo meet the design challenges of PIM across multiple different RF systems, passive components engineered below the absolute lowest noise floor could meet the variability of multiple use cases. \r\n\r\nAt Acentury Radiocomm, we innovate to provide the lowest possible PIM in our components and cables. [Explore -165dBc extra-low PIM products here.](https://radiocomm.co/)', '<p>Why is the lowest possible PIM essential, especially for 5G networks? </p>\n<p>You may have noticed a constant emphasis on “extra-low PIM” when reading about network components and cables. Why is a low passive intermodulation (PIM) rating important, especially for 5G networks?  </p>\n<p>Firstly, PIM occurs when two or more signals are present in passive (mechanical) components of a wireless system. Some examples of mechanical components include antennas, cables and connectors. </p>\n<p>The signals can mix or multiply with each other to generate other signals that impact the original intended signal resulting in degraded performance. Read more about what PIM is, here: <a href=\"https://www.acentury.co/ca/use-cases/b/passive-intermodulation-pim\">https://www.acentury.co/ca/use-cases/b/passive-intermodulation-pim</a> </p>\n<p>In short, PIM issues will continue to get more complex and frequent with newer generations, and the cost of troubleshooting these problems in the field will increase with it. It is much higher than the cost of installing extra-low PIM passive RF components in the first place. “The lowest possible PIM is not just desirable but essential.” (Microwave Product Digest, 2012)  </p>\n<p>With the implementation of 5G, higher carrier aggregations and more frequency bands are used by cellular systems, which causes a higher risk for crossband PIM. The PIM risk is also increased along with colocations and the usage of multiband combiners for higher power scenarios, especially for macro systems. Finally, the use of higher-order modulation techniques, smaller channel spacing, and multiple transmissions using a single antenna in 5G all increase the risk of PIM problems as well. </p>\n<p>To meet the design challenges of PIM across multiple different RF systems, passive components engineered below the absolute lowest noise floor could meet the variability of multiple use cases. </p>\n<p>At Acentury Radiocomm, we innovate to provide the lowest possible PIM in our components and cables. <a href=\"https://radiocomm.co/\">Explore -165dBc extra-low PIM products here.</a></p>', '2021-04-30 14:10:13', 1, '2021-04-30 14:10:14', '2021-04-30 14:10:14', NULL, 0);
INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `metadata`, `featured`) VALUES
(40, 3, 'Innovative Fiber Cable Solutions: Overcoming Brutal and Freezing Alaskan Conditions', 'overcoming-brutal-and-freezing-alaskan-conditions', '', 'Acentury is always innovating to help our global partners and clients. Read on to see how we can overcome brutal and freezing conditions to help an Alaskan telecommunication service provider expand and improve their broadband internet service in North Slope Region. \r\n\r\nThis was a unique challenge: \r\n\r\n-   To protect the environment, the State government does not allow any construction for fiber cable deployment in certain areas. All fiber cables must be directly dropped into water or placed on the surface without any protection. The cable would be exposed to many different dangers -- stretching and bending due to freeze/thaw cycles, crushing risk from rocks, ice or vehicles, and even damage from wildlife.  \r\n\r\n-   The region experiences huge swings in temperature -- as low as -60°C during the winter, but also as high as +70°C in the summer due to solar heat load.  \r\n\r\n-   This would be the first time anyone had attempted to deploy fiber cable in such extreme conditions. There was no precedent to reference. \r\n\r\nOur team of experts engineered a solution: \r\n\r\n1.  Considering the cable would be deployed both on land and in water, we customized a light submarine cable solution.  \r\n\r\n1.  To address the risk from freezing and thawing, and damage due to ice, rocks and wildlife, we customized a cable with different breaking loads (tensile strength) and crush loads (pressure and squeeze) with steel armour for added protection.  \r\n\r\n1.  We used a special solution to improve the operating temperature range from -40°C~+70°C to the required -60°C~+70°C. \r\n\r\nAlthough we were competing with another famous European based global submarine fiber cable manufacturer, the Alaskan telecom finally chose our [**UOC-LW-30kN-48G.652.D**](https://radiocomm.co/products/uoc-lw-30kn-12g652d-2008390640) (30kN cable breaking load and 5kN crush load) submarine cable solution.\r\n\r\nInterested in learning how Radiocomm\'s fiber cables and solutions can help your projects? [Browse our e-catalogue](https://radiocomm.co/c/fiber-cable) or [contact us directly](https://acentury.co/ca/contact) for customized, expert solutions.\r\n\r\nWant to stay updated with our products and top industry solutions? [Sign up to our bi-monthly newsletter.](https://acentury.co/newsletter-signup-c)\r\n\r\n**About Radiocomm**\r\n\r\n Acentury is a proven technology solutions provider in the wireless communications industry. For over ten years we have designed and deployed solutions, products, and services for Tier 1 carrier operators and internet-scale enterprises across the Americas. With our Radiocomm product brand, we feature industry-leading extra low PIM (-165dBc) components and cables for 5G wideband outdoor and in-building DAS applications. We have successfully deployed thousands of network components that meet the requirements and scale of several carrier-grade networks with zero field returns to date. Our fiber optic product portfolio is comprehensive and features highly durable properties for all applications and integrated solutions.   \r\n\r\nRadiocomm continues to maintain a reputation for superior performance with outstanding reliability and quality; we stand by our passive network components with a 1yr manufacturing warranty along with a test record printout for each component we ship.', '<p>Acentury is always innovating to help our global partners and clients. Read on to see how we can overcome brutal and freezing conditions to help an Alaskan telecommunication service provider expand and improve their broadband internet service in North Slope Region. </p>\n<p>This was a unique challenge: </p>\n<ul>\n<li>\n<p>To protect the environment, the State government does not allow any construction for fiber cable deployment in certain areas. All fiber cables must be directly dropped into water or placed on the surface without any protection. The cable would be exposed to many different dangers -- stretching and bending due to freeze/thaw cycles, crushing risk from rocks, ice or vehicles, and even damage from wildlife.  </p>\n</li>\n<li>\n<p>The region experiences huge swings in temperature -- as low as -60°C during the winter, but also as high as +70°C in the summer due to solar heat load.  </p>\n</li>\n<li>\n<p>This would be the first time anyone had attempted to deploy fiber cable in such extreme conditions. There was no precedent to reference. </p>\n</li>\n</ul>\n<p>Our team of experts engineered a solution: </p>\n<ol>\n<li>\n<p>Considering the cable would be deployed both on land and in water, we customized a light submarine cable solution.  </p>\n</li>\n<li>\n<p>To address the risk from freezing and thawing, and damage due to ice, rocks and wildlife, we customized a cable with different breaking loads (tensile strength) and crush loads (pressure and squeeze) with steel armour for added protection.  </p>\n</li>\n<li>\n<p>We used a special solution to improve the operating temperature range from -40°C~+70°C to the required -60°C~+70°C. </p>\n</li>\n</ol>\n<p>Although we were competing with another famous European based global submarine fiber cable manufacturer, the Alaskan telecom finally chose our <a href=\"https://radiocomm.co/products/uoc-lw-30kn-12g652d-2008390640\"><strong>UOC-LW-30kN-48G.652.D</strong></a> (30kN cable breaking load and 5kN crush load) submarine cable solution.</p>\n<p>Interested in learning how Radiocomm\'s fiber cables and solutions can help your projects? <a href=\"https://radiocomm.co/c/fiber-cable\">Browse our e-catalogue</a> or <a href=\"https://acentury.co/ca/contact\">contact us directly</a> for customized, expert solutions.</p>\n<p>Want to stay updated with our products and top industry solutions? <a href=\"https://acentury.co/newsletter-signup-c\">Sign up to our bi-monthly newsletter.</a></p>\n<p><strong>About Radiocomm</strong></p>\n<p>Acentury is a proven technology solutions provider in the wireless communications industry. For over ten years we have designed and deployed solutions, products, and services for Tier 1 carrier operators and internet-scale enterprises across the Americas. With our Radiocomm product brand, we feature industry-leading extra low PIM (-165dBc) components and cables for 5G wideband outdoor and in-building DAS applications. We have successfully deployed thousands of network components that meet the requirements and scale of several carrier-grade networks with zero field returns to date. Our fiber optic product portfolio is comprehensive and features highly durable properties for all applications and integrated solutions.   </p>\n<p>Radiocomm continues to maintain a reputation for superior performance with outstanding reliability and quality; we stand by our passive network components with a 1yr manufacturing warranty along with a test record printout for each component we ship.</p>', NULL, 0, '2021-04-30 14:18:36', '2021-04-30 14:18:36', NULL, 0),
(41, 3, 'ATxTel and Acentury partner to expand growth in US', 'atxtel-and-acentury-partner-expand-growth-us', 'Acentury Inc. is proud to announce a new partnership with ATxTel. ATxTel will act as the distributor of Acentury Radiocomm (low PIM RF components and cables) and Acentury LAMTA (hardware and software for wireless lab management) in the US.', 'Acentury Inc. is proud to announce a new partnership with ATxTel. ATxTel will act as the distributor of Acentury Radiocomm (low PIM RF components and cables) and Acentury LAMTA (hardware and software for wireless lab management) in the US.\r\n\r\n\"We\'re extremely excited to have ATxTel join the Radiocomm and LAMTA team. We are very impressed by ATxTel\'s expertise. In speaking with the ATxTel\'s executive team, it was clear that they would be an ideal partner for Radiocomm and LAMTA. We have the highest confidence that ATxTel\'s customers will be very satisfied with Radiocomm and LAMTA products,\" said Frank Ye, CEO of Acentury.\r\n\r\n\"We are excited to add Radiocomm and LAMTA to our product portfolio. They will significantly enhance our capabilities to carry out the most innovative and cutting-edge wireless and RF projects for our customers and address their most demanding requirements,\" said Ash Mahjoubi Amine, CEO of ATxTel.\r\n\r\n**ABOUT ATxTel**<br>\r\nATxTel, Inc. has been on the cutting edge of technology. ATxTel identifies and works with carefully selected trusted partners from around the world. We have been working with some of the largest technology companies as a trusted partner for wireless testing solutions. ATxTel is based in San Diego, CA.<br>\r\nhttp://atxtel.com\r\n\r\n**ABOUT Radiocomm**<br>\r\nRadiocomm, the network components division of Acentury Inc., was launched in 2011 and developed a reputation for its superior technical performance, reliability, and customization services. We pride ourselves in creating a unique customer experience from product development to on-time product delivery. We help service providers, infrastructure equipment manufacturers, educational institutions, government agency departments, and system integrators meet their complex and dynamic requirements. Radiocomm components cover a wider operating frequency spectrum and higher power applications. With the deployment of outdoor systems with high power (up to 80 W) and 4x4 MIMO, the -165 dBc extra-low PIM becomes an essential requirement to solve complex interference issues.<br>\r\n[https://radiocomm.co](https://radiocomm.co/)\r\n\r\n**ABOUT LAMTA**<br>\r\nAcentury LAMTA is an end-to-end solution that uses a software-based platform for wireless 3G/4G/5G lab testing and lab resources management. LAMTA is a scalable solution designed by RF engineers and used by Tier 1 operator labs. LAMTA uses software to manage a \'connect once\' setup that can simplify RF cable management and enable remote management capabilities. The solution also features the automation and execution of complicated test scenarios such as massive MIMO and carrier aggregation.<br>\r\n<https://acentury.co/ca/test-and-measurement-product>', '<p>Acentury Inc. is proud to announce a new partnership with ATxTel. ATxTel will act as the distributor of Acentury Radiocomm (low PIM RF components and cables) and Acentury LAMTA (hardware and software for wireless lab management) in the US.</p>\n<p>&quot;We\'re extremely excited to have ATxTel join the Radiocomm and LAMTA team. We are very impressed by ATxTel\'s expertise. In speaking with the ATxTel\'s executive team, it was clear that they would be an ideal partner for Radiocomm and LAMTA. We have the highest confidence that ATxTel\'s customers will be very satisfied with Radiocomm and LAMTA products,&quot; said Frank Ye, CEO of Acentury.</p>\n<p>&quot;We are excited to add Radiocomm and LAMTA to our product portfolio. They will significantly enhance our capabilities to carry out the most innovative and cutting-edge wireless and RF projects for our customers and address their most demanding requirements,&quot; said Ash Mahjoubi Amine, CEO of ATxTel.</p>\n<p><strong>ABOUT ATxTel</strong><br>\nATxTel, Inc. has been on the cutting edge of technology. ATxTel identifies and works with carefully selected trusted partners from around the world. We have been working with some of the largest technology companies as a trusted partner for wireless testing solutions. ATxTel is based in San Diego, CA.<br>\n<a href=\"http://atxtel.com\">http://atxtel.com</a></p>\n<p><strong>ABOUT Radiocomm</strong><br>\nRadiocomm, the network components division of Acentury Inc., was launched in 2011 and developed a reputation for its superior technical performance, reliability, and customization services. We pride ourselves in creating a unique customer experience from product development to on-time product delivery. We help service providers, infrastructure equipment manufacturers, educational institutions, government agency departments, and system integrators meet their complex and dynamic requirements. Radiocomm components cover a wider operating frequency spectrum and higher power applications. With the deployment of outdoor systems with high power (up to 80 W) and 4x4 MIMO, the -165 dBc extra-low PIM becomes an essential requirement to solve complex interference issues.<br>\n<a href=\"https://radiocomm.co/\">https://radiocomm.co</a></p>\n<p><strong>ABOUT LAMTA</strong><br>\nAcentury LAMTA is an end-to-end solution that uses a software-based platform for wireless 3G/4G/5G lab testing and lab resources management. LAMTA is a scalable solution designed by RF engineers and used by Tier 1 operator labs. LAMTA uses software to manage a \'connect once\' setup that can simplify RF cable management and enable remote management capabilities. The solution also features the automation and execution of complicated test scenarios such as massive MIMO and carrier aggregation.<br>\n<a href=\"https://acentury.co/ca/test-and-measurement-product\">https://acentury.co/ca/test-and-measurement-product</a></p>', '2021-05-12 12:24:01', 1, '2021-05-12 12:26:10', '2021-05-21 20:14:41', NULL, 0),
(42, 2, 'Acentury Inc. launches LAMTA\'s lab resource management module for 5G wireless labs', 'acentury-inc-launches-lamtas-lab-resource-management-module-5g-wireless-labs', 'Acentury officially launches LAMTA\'s lab resource management module for 5G wireless labs with their first customer, Telus Corporation, one of the big three Tier 1 operators in Canada.', 'Acentury officially launches LAMTA\'s lab resource management module for 5G wireless labs with Telus Corporation, one of the big three Tier 1 operators in Canada.\r\n\r\nAcentury LAMTA is an end-to-end software platform for wireless 3G 4G 5G lab testing and lab resources management. LAMTA is composed of three modules that help wireless labs manage their operations: radio management, lab resources management, and test scenario management. \r\n\r\nThe lab resources management software module offers lab admins an easy-to-use tool to manage resource and lab asset availability, improves team collaboration by streamlining project workflows, and consolidates test plans and cases for knowledge sharing and reporting.\r\n\r\nTo learn more about LAMTA and all the product modules designed for large wireless labs, please sign up to get in touch with our team:\r\n\r\n<button type=\"button\" style=\"display: inline-block;\r\n    vertical-align: middle;\r\n    margin: 0;\r\n    padding: 0.75em 2em;\r\n    border: 1px solid transparent;\r\n    border-radius: 8px;\r\n    transition: background-color 0.25s ease-out,color 0.25s ease-out;\r\n    font-family: inherit;\r\n    font-size: 15px;\r\n    -webkit-appearance: none;\r\n    line-height: 1;\r\n    text-align: center;\r\n    cursor: pointer;\r\n    background-color: #2a57b0;\r\n    color: #fefefe;\" href=\"/ca/lamta/signup\">Learn More</button>', '<p>Acentury officially launches LAMTA\'s lab resource management module for 5G wireless labs with Telus Corporation, one of the big three Tier 1 operators in Canada.</p>\n<p>Acentury LAMTA is an end-to-end software platform for wireless 3G 4G 5G lab testing and lab resources management. LAMTA is composed of three modules that help wireless labs manage their operations: radio management, lab resources management, and test scenario management. </p>\n<p>The lab resources management software module offers lab admins an easy-to-use tool to manage resource and lab asset availability, improves team collaboration by streamlining project workflows, and consolidates test plans and cases for knowledge sharing and reporting.</p>\n<p>To learn more about LAMTA and all the product modules designed for large wireless labs, please sign up to get in touch with our team:</p>\n<p><button type=\"button\" style=\"display: inline-block;\nvertical-align: middle;\nmargin: 0;\npadding: 0.75em 2em;\nborder: 1px solid transparent;\nborder-radius: 8px;\ntransition: background-color 0.25s ease-out,color 0.25s ease-out;\nfont-family: inherit;\nfont-size: 15px;\n-webkit-appearance: none;\nline-height: 1;\ntext-align: center;\ncursor: pointer;\nbackground-color: #2a57b0;\ncolor: #fefefe;\" href=\"/ca/lamta/signup\">Learn More</button></p>', NULL, 0, '2021-05-14 18:52:29', '2021-05-14 18:56:52', NULL, 0),
(43, 3, 'Innovative Fiber Cable Solutions: Overcoming Brutal and Freezing Arctic Conditions', 'innovative-fiber-cable-solutions-overcoming-brutal-and-freezing-arctic-conditions', 'Acentury is always innovating to help our global partners and clients. Read on to see how we can overcome brutal and freezing conditions to help an Alaskan telecommunication service provider expand and improve their broadband internet service in the Arctic Region. ', 'Acentury is always innovating to help our global partners and clients. Read on to see how we can overcome brutal and freezing conditions to help an Alaskan telecommunication service provider expand and improve their broadband internet service in the Arctic Region. \r\n\r\nThis was a unique challenge: \r\n\r\n-   To protect the environment, the government does not allow any construction for fiber cable deployment in certain areas. All fiber cables must be directly dropped into water or placed on the surface without any protection. The cable would be exposed to many different dangers -- stretching and bending due to freeze/thaw cycles, crushing risk from rocks, ice or vehicles, and even damage from wildlife.  \r\n\r\n-   The region experiences huge swings in temperature -- as low as -60°C during the winter, but also as high as +70°C in the summer due to solar heat load.  \r\n\r\n-   This would be the first time anyone had attempted to deploy fiber cable in such extreme conditions. There was no precedent to reference. \r\n\r\nOur team of experts engineered a solution: \r\n\r\n1.  To address the extreme cold weather challenge, we used a special solution that extends our fiber cable\'s operating temperature range from -40°C to +70°C to the required -60°C to +70°C.  \r\n\r\n1.  To address the risk from freezing and thawing, and damage due to ice, rocks and wildlife, we designed a rugged fiber cable with strong breaking loads (tensile strength) and crush loads (pressure and squeeze). Steel armor was added for protection.  \r\n\r\n1.  Considering the cable would be deployed both on land and in water, we designed the fiber cable to be water resistant. \r\n\r\nAlthough we were competing with another well-known European-based global submarine fiber cable manufacturer, the Alaskan telecom finally chose our [UOC-LW-30kN-48G.652.D (30kN Cable Breaking Load and 5kN Crush Load) Cold-Weather Inshore Fiber Cable Solution](https://radiocomm.co/products/uoc-lw-30kn-12g652d-2008390640). \r\n\r\n\r\nInterested in learning how Radiocomm\'s fiber cables and solutions can help your projects? [Browse our e-catalogue](https://radiocomm.co/c/fiber-cable) or [contact us directly for customized, expert solutions](https://radiocomm.co/contact). \r\n\r\n\r\nWant to stay updated with our products and top industry solutions? <br>\r\n[Sign up to our newsletter.](https://acentury.co/newsletter-signup-c)\r\n\r\n**About Radiocomm**\r\n\r\n Acentury is a proven technology solutions provider in the wireless communications industry. For over ten years we have designed and deployed solutions, products, and services for Tier 1 carrier operators and internet-scale enterprises across the Americas. With our Radiocomm product brand, we feature industry-leading extra low PIM (-165dBc) components and cables for 5G wideband outdoor and in-building DAS applications. We have successfully deployed thousands of network components that meet the requirements and scale of several carrier-grade networks with zero field returns to date. Our fiber optic product portfolio is comprehensive and features highly durable properties for all applications and integrated solutions.   \r\n\r\nRadiocomm continues to maintain a reputation for superior performance with outstanding reliability and quality; we stand by our passive network components with a 1yr manufacturing warranty along with a test record printout for each component we ship.', '<p>Acentury is always innovating to help our global partners and clients. Read on to see how we can overcome brutal and freezing conditions to help an Alaskan telecommunication service provider expand and improve their broadband internet service in the Arctic Region. </p>\n<p>This was a unique challenge: </p>\n<ul>\n<li>\n<p>To protect the environment, the government does not allow any construction for fiber cable deployment in certain areas. All fiber cables must be directly dropped into water or placed on the surface without any protection. The cable would be exposed to many different dangers -- stretching and bending due to freeze/thaw cycles, crushing risk from rocks, ice or vehicles, and even damage from wildlife.  </p>\n</li>\n<li>\n<p>The region experiences huge swings in temperature -- as low as -60°C during the winter, but also as high as +70°C in the summer due to solar heat load.  </p>\n</li>\n<li>\n<p>This would be the first time anyone had attempted to deploy fiber cable in such extreme conditions. There was no precedent to reference. </p>\n</li>\n</ul>\n<p>Our team of experts engineered a solution: </p>\n<ol>\n<li>\n<p>To address the extreme cold weather challenge, we used a special solution that extends our fiber cable\'s operating temperature range from -40°C to +70°C to the required -60°C to +70°C.  </p>\n</li>\n<li>\n<p>To address the risk from freezing and thawing, and damage due to ice, rocks and wildlife, we designed a rugged fiber cable with strong breaking loads (tensile strength) and crush loads (pressure and squeeze). Steel armor was added for protection.  </p>\n</li>\n<li>\n<p>Considering the cable would be deployed both on land and in water, we designed the fiber cable to be water resistant. </p>\n</li>\n</ol>\n<p>Although we were competing with another well-known European-based global submarine fiber cable manufacturer, the Alaskan telecom finally chose our <a href=\"https://radiocomm.co/products/uoc-lw-30kn-12g652d-2008390640\">UOC-LW-30kN-48G.652.D (30kN Cable Breaking Load and 5kN Crush Load) Cold-Weather Inshore Fiber Cable Solution</a>. </p>\n<p>Interested in learning how Radiocomm\'s fiber cables and solutions can help your projects? <a href=\"https://radiocomm.co/c/fiber-cable\">Browse our e-catalogue</a> or <a href=\"https://radiocomm.co/contact\">contact us directly for customized, expert solutions</a>. </p>\n<p>Want to stay updated with our products and top industry solutions? <br>\n<a href=\"https://acentury.co/newsletter-signup-c\">Sign up to our newsletter.</a></p>\n<p><strong>About Radiocomm</strong></p>\n<p> Acentury is a proven technology solutions provider in the wireless communications industry. For over ten years we have designed and deployed solutions, products, and services for Tier 1 carrier operators and internet-scale enterprises across the Americas. With our Radiocomm product brand, we feature industry-leading extra low PIM (-165dBc) components and cables for 5G wideband outdoor and in-building DAS applications. We have successfully deployed thousands of network components that meet the requirements and scale of several carrier-grade networks with zero field returns to date. Our fiber optic product portfolio is comprehensive and features highly durable properties for all applications and integrated solutions.   </p>\n<p>Radiocomm continues to maintain a reputation for superior performance with outstanding reliability and quality; we stand by our passive network components with a 1yr manufacturing warranty along with a test record printout for each component we ship.</p>', '2021-05-18 12:39:44', 1, '2021-05-18 12:39:30', '2021-05-18 12:40:12', NULL, 0),
(44, 3, 'LAMTA Lab Resource Management Launch', 'lamta-lab-resource-management-launch', 'Acentury officially launches LAMTA\'s lab resource management module for 5G wireless labs and is proud to announce the product kickoff with our first North American Tier 1 Operator.', 'Acentury officially launches LAMTA\'s lab resource management module for 5G wireless labs and is proud to announce the product kickoff with our first North American Tier 1 Operator.\r\n\r\nAcentury LAMTA is a system management and testing automation platform designed for wireless 3G/4G/5G labs. LAMTA provides integrated management for the wireless lab environment and automates complex testing scenario processes between lab admins, engineers and their lab resources.  LAMTA is comprised of three main modules:\r\n1.	Radio management. Scalable radio connection management for 5G/LTE/UMTS/Wi-Fi that uses software to help flexibly switch connections between radios and test chambers. \r\n2.	Test management. Software interface that enables test process automation including remote and repeatable MIMO handover testing, carrier aggregation testing, and log analysis.\r\n3.	Lab resources management. Manage lab assets and resources more effectively with workflow management and capacity optimization tools.\r\n\r\nThe lab resources management module offers wireless technology labs an easy-to-use tool to manage resource and lab asset availability, improves team collaboration by streamlining project workflows, and consolidates test plans and cases for knowledge sharing and reporting.\r\n\r\nTo learn more about LAMTA’s product modules designed for wireless labs, [please sign up to get in touch with our team.](https://acentury.co/ca/test-and-measurement-product)', '<p>Acentury officially launches LAMTA\'s lab resource management module for 5G wireless labs and is proud to announce the product kickoff with our first North American Tier 1 Operator.</p>\n<p>Acentury LAMTA is a system management and testing automation platform designed for wireless 3G/4G/5G labs. LAMTA provides integrated management for the wireless lab environment and automates complex testing scenario processes between lab admins, engineers and their lab resources.  LAMTA is comprised of three main modules:</p>\n<ol>\n<li>Radio management. Scalable radio connection management for 5G/LTE/UMTS/Wi-Fi that uses software to help flexibly switch connections between radios and test chambers. </li>\n<li>Test management. Software interface that enables test process automation including remote and repeatable MIMO handover testing, carrier aggregation testing, and log analysis.</li>\n<li>Lab resources management. Manage lab assets and resources more effectively with workflow management and capacity optimization tools.</li>\n</ol>\n<p>The lab resources management module offers wireless technology labs an easy-to-use tool to manage resource and lab asset availability, improves team collaboration by streamlining project workflows, and consolidates test plans and cases for knowledge sharing and reporting.</p>\n<p>To learn more about LAMTA’s product modules designed for wireless labs, <a href=\"https://acentury.co/ca/test-and-measurement-product\">please sign up to get in touch with our team.</a></p>', '2021-05-18 15:43:37', 1, '2021-05-18 15:43:14', '2021-05-18 15:48:36', NULL, 0),
(45, 3, 'dhs ELMEA tools and Acentury partner to grow Radiocomm business in Germany and Austria', 'dhs-elmea-tools-and-acentury-partner-grow-radiocomm-business-germany-and-austria', 'Radiocomm, the network components division of Acentury Inc., is proud to announce a partnership with dhs ELMEA tools GmbH.  dhs ELMEA tools will act as Radiocomm’s distributor in Germany and Austria.', 'Radiocomm, the network components division of Acentury Inc., is proud to announce a partnership with dhs ELMEA tools GmbH.  dhs ELMEA tools will act as Radiocomm’s distributor in Germany and Austria.\r\n\r\n“We’re thrilled to announce dhs as the newest member of the Radiocomm team.  We’re seeing tremendous global growth for Radiocomm.  Having dhs as our partner in Germany and Austria is an important step forward.  We look for forward to working with Michael and the dhs team to bring our high quality RF components and cables to customers in Germany and Austria,” said Frank Ye, CEO of Acentury.\r\n\r\n“We’re excited to join the Radiocomm team as the distribution partner for Germany and Austria.  The Radiocomm line offers the best combination of performance and value.  We consider Radiocomm as an excellent addition to our 5G product portfolio,” said Michael Stiedl, Managing Director at dhs ELMEA tools.\r\n\r\n**ABOUT dhs ELMEA tools GmbH** <br>\r\nSince its foundation in2003 dhs ELMEA tools GmbH provides test, measurement and development tools for Telecomms, Enterprise as well as Embedded and Industrial markets.  Together with our vendors, dhs offers the best available tools for solving test problems quickly.  dhs offers a balanced and capable consultation prior to sale, as well as appropriate training and educational services after sale. \r\nhttps://dhs-tools.de/\r\n\r\n**ABOUT Radiocomm**<br>\r\nRadiocomm, the network components division of Acentury Inc., was launched in 2011 and developed a reputation for its superior technical performance, reliability, and customization services. We pride ourselves in creating a unique customer experience from product development to on-time product delivery. We help service providers, infrastructure equipment manufacturers, educational institutions, government agency departments, and system integrators meet their complex and dynamic requirements.  Radiocomm components cover a wider operating frequency spectrum and higher power applications. With the deployment of outdoor systems with high power (up to 80 W) and 4x4 MIMO, the -165 dBc extra-low PIM becomes an essential requirement to solve complex interference issues.\r\nhttps://radiocomm.co', '<p>Radiocomm, the network components division of Acentury Inc., is proud to announce a partnership with dhs ELMEA tools GmbH.  dhs ELMEA tools will act as Radiocomm’s distributor in Germany and Austria.</p>\n<p>“We’re thrilled to announce dhs as the newest member of the Radiocomm team.  We’re seeing tremendous global growth for Radiocomm.  Having dhs as our partner in Germany and Austria is an important step forward.  We look for forward to working with Michael and the dhs team to bring our high quality RF components and cables to customers in Germany and Austria,” said Frank Ye, CEO of Acentury.</p>\n<p>“We’re excited to join the Radiocomm team as the distribution partner for Germany and Austria.  The Radiocomm line offers the best combination of performance and value.  We consider Radiocomm as an excellent addition to our 5G product portfolio,” said Michael Stiedl, Managing Director at dhs ELMEA tools.</p>\n<p><strong>ABOUT dhs ELMEA tools GmbH</strong> <br>\nSince its foundation in2003 dhs ELMEA tools GmbH provides test, measurement and development tools for Telecomms, Enterprise as well as Embedded and Industrial markets.  Together with our vendors, dhs offers the best available tools for solving test problems quickly.  dhs offers a balanced and capable consultation prior to sale, as well as appropriate training and educational services after sale.\n<a href=\"https://dhs-tools.de/\">https://dhs-tools.de/</a></p>\n<p><strong>ABOUT Radiocomm</strong><br>\nRadiocomm, the network components division of Acentury Inc., was launched in 2011 and developed a reputation for its superior technical performance, reliability, and customization services. We pride ourselves in creating a unique customer experience from product development to on-time product delivery. We help service providers, infrastructure equipment manufacturers, educational institutions, government agency departments, and system integrators meet their complex and dynamic requirements.  Radiocomm components cover a wider operating frequency spectrum and higher power applications. With the deployment of outdoor systems with high power (up to 80 W) and 4x4 MIMO, the -165 dBc extra-low PIM becomes an essential requirement to solve complex interference issues.\n<a href=\"https://radiocomm.co\">https://radiocomm.co</a></p>', '2021-05-28 17:28:51', 1, '2021-05-28 17:28:29', '2021-05-28 17:28:29', NULL, 0),
(46, 2, 'Guide to 5G DAS Systems Part 2: Small Cells and Hybrid DAS Solutions', 'guide-5g-das-system-part-2-small-cells-and-hybrid-das-solutions', 'Learn more about Small Cells and Hybrid DAS solutions for multi-story in-building solutions.', '**Small Cell Deployments**\r\n\r\nThere are several benefits to a small cell deployment. The PIM issues that plague traditional passive DAS installs are no longer present. Power and distribution systems are replaced with ethernet-over-power. Long, thick and expensive RF cables that can complicate installations are replaced with fiber or ethernet infrastructure. And with faster, simpler architecture for RF signal distribution, the upfront capital cost savings can be significant.\r\n\r\n![Passive-DAS.png](https://www.acentury.co/storage/app/uploads/public/60b/93f/317/60b93f3175b91247053679.png)\r\n\r\nA simplified deployment model will make it easier to test, and with less technical complications, field failures drop considerably, making it an obvious favourite for carrier network operators. \r\nSmall cells can save installers a considerable amount of upfront cost but the maintenance requirements for small cell upkeep – adding additional bands – comes with a major drawback. Over the course of the building life cycle, the financial implications and the associative technical complications to maintain upgradeability can become a major factor when designing an in-building solution.\r\n\r\n![Pure-Small-Cell-System.png](https://www.acentury.co/storage/app/uploads/public/60b/93f/fb5/60b93ffb52044656369884.png)\r\n\r\n\r\n**Small Cell Shortcomings: Adding more Bands...  like 5G**\r\n\r\nSmall cell deployments present maintenance challenges because they are not wideband solutions. Adding additional bands and/or carriers (and their associative bands) in the future requires additional small cell deployments for multi-carrier operated buildings, which can complicate and increase the upkeep cost of an in-building solution.\r\n\r\nConsider a Canadian example where there are four major mobile network operators (Telus, Bell, Rogers, and Freedom Mobile) with 3 – 4 current operating bands:\r\n* 4 operators (bell/telus, rogers, freedom mobile, videotron)\r\n* Each carrier has four bands to manage (PCS 850/750), 1900, AWS, and 2.6GHz)\r\n* CBRS and 700MHz are additional spectrum bands that need to be also considered in the future \r\n* Assuming just 4 bands per operator, this equates to 12 separate small cell deployments (3 bands x 4 carriers) that need to be installed for each floor of an in-building solution\r\n\r\nWith the introduction of 5G spectrum bands, neutral property owners can be faced with maintenance headaches if a pure small cell solution is deployed. On the other hand, a traditional passive DAS system can add 5G requirements by adding and combining the new bands at the source. Installers would only need to ensure that they are using extra low PIM components with wideband attributes to cover the band upgrade and manage potential PIM issues.\r\n\r\n\r\n\r\n![Ad General Learn More.png](https://www.acentury.co/storage/app/uploads/public/60b/941/6ec/60b9416ecd37a435050884.png)\r\n\r\nDeploying multiple small cell networks in dense proximity can also produce interference issues that can compromise the signal quality. The noise floor can be raised, which is caused by outband emissions. With increased density of small cell deployments, diode components in small cells, if facing each other, can produce PIM issues.\r\n\r\n\r\nDespite these limitations, there are alternative solutions. A hybrid system, which uses both small cell systems and traditional passive DAS systems, could be designed to leverage the advantages of both architectures to offer a solution.\r\n\r\n**The Hybrid DAS Solution**\r\n\r\nOne of the major benefits of a small cell deployment is the simplified distribution system. Hybrid DAS solutions use a fiber or ethernet distribution system and a mini wideband DAS solution to serve the ‘last mile’ or ‘floor’ of a multi-story building. Using a hybrid DAS solution allows installers to leverage the cost and deployment benefits of a small cell solution while also enabling operational and maintenance benefits with a mini-DAS solution for floor distribution, provided that the passive DAS system uses low PIM and wideband network components.\r\n\r\nThere are two architectures, a Hybrid Active DAS or Hybrid Small Cell DAS solution, that are used today. In both cases, fiber or ethernet infrastructure is deployed to manage RF signal distribution throughout the building.\r\n\r\n![Hybrid-Active-DAS.png](https://www.acentury.co/storage/app/uploads/public/60b/941/ef1/60b941ef12afd781692272.png)\r\n\r\n\r\n\r\n![Hybrid-Small-Cell-DAS.png](https://www.acentury.co/storage/app/uploads/public/60b/942/026/60b9420265c89603640923.png)\r\n \r\nThe major difference between these architectures is the use of one or two vendors to deploy the solution. A Hybrid Small Cell Solution utilizes only one vendor for source and distribution whereas a Hybrid Active DAS solution requires two. By using passive components with extra and ultra low-PIM and ultra wideband (5G / CBRS) characteristics, property owners and installers will have the flexibility to add additional bands and carriers to manage future upgrade requirements.\r\n\r\n**In Summary**\r\n\r\nUntil an equipment vendor can offer a wideband small cell system, neutral property owners can\'t deploy a small cell solution without major maintenance and upkeep challenges for multi-floor buildings. Although the benefits of a small cell deployment can save installers upfront capital, the benefits are netted out by maintenance and operational expenses in future years.\r\n\r\nA hybrid active DAS or hybrid small cell DAS solution are excellent alternatives for neutral property owners. By combining a fiber or ethernet distribution model with a DAS system to manage floor access, neutral property owners can leverage the advantages of both systems to meet their cost and maintenance requirements. \r\n\r\n\r\n\r\nTo learn more about Radiocomm’s low PIM and wideband network components, please visit our product web page:\r\nhttps://www.acentury.co/ca/network-components\r\n\r\nFor product catalog research, consider visiting Radiocomm’s e-catalog website:\r\n[Radiocomm e-catalog site](https://www.radiocomm.co)\r\n\r\nFor any customization requests, consider submitting a request and our engineering team will provide engineering specs within 5 business days:\r\n[Contact us today for expert consultation and customized solutions.](https://www.acentury.co/radiocomm-customization)\r\n\r\nTo get updates about articles like these in the future:\r\n[Subscribe to the Acentury newsletter](https://www.acentury.co/newsletter-signup-c)\r\n\r\n\r\n\r\nFor more information about hybrid small cell solutions, feel free to contact us for more information:\r\n[Contact Us](https://www.acentury.co/ca/contact)', '<p><strong>Small Cell Deployments</strong></p>\n<p>There are several benefits to a small cell deployment. The PIM issues that plague traditional passive DAS installs are no longer present. Power and distribution systems are replaced with ethernet-over-power. Long, thick and expensive RF cables that can complicate installations are replaced with fiber or ethernet infrastructure. And with faster, simpler architecture for RF signal distribution, the upfront capital cost savings can be significant.</p>\n<p><img src=\"https://www.acentury.co/storage/app/uploads/public/60b/93f/317/60b93f3175b91247053679.png\" alt=\"Passive-DAS.png\" /></p>\n<p>A simplified deployment model will make it easier to test, and with less technical complications, field failures drop considerably, making it an obvious favourite for carrier network operators.\nSmall cells can save installers a considerable amount of upfront cost but the maintenance requirements for small cell upkeep – adding additional bands – comes with a major drawback. Over the course of the building life cycle, the financial implications and the associative technical complications to maintain upgradeability can become a major factor when designing an in-building solution.</p>\n<p><img src=\"https://www.acentury.co/storage/app/uploads/public/60b/93f/fb5/60b93ffb52044656369884.png\" alt=\"Pure-Small-Cell-System.png\" /></p>\n<p><strong>Small Cell Shortcomings: Adding more Bands...  like 5G</strong></p>\n<p>Small cell deployments present maintenance challenges because they are not wideband solutions. Adding additional bands and/or carriers (and their associative bands) in the future requires additional small cell deployments for multi-carrier operated buildings, which can complicate and increase the upkeep cost of an in-building solution.</p>\n<p>Consider a Canadian example where there are four major mobile network operators (Telus, Bell, Rogers, and Freedom Mobile) with 3 – 4 current operating bands:</p>\n<ul>\n<li>4 operators (bell/telus, rogers, freedom mobile, videotron)</li>\n<li>Each carrier has four bands to manage (PCS 850/750), 1900, AWS, and 2.6GHz)</li>\n<li>CBRS and 700MHz are additional spectrum bands that need to be also considered in the future </li>\n<li>Assuming just 4 bands per operator, this equates to 12 separate small cell deployments (3 bands x 4 carriers) that need to be installed for each floor of an in-building solution</li>\n</ul>\n<p>With the introduction of 5G spectrum bands, neutral property owners can be faced with maintenance headaches if a pure small cell solution is deployed. On the other hand, a traditional passive DAS system can add 5G requirements by adding and combining the new bands at the source. Installers would only need to ensure that they are using extra low PIM components with wideband attributes to cover the band upgrade and manage potential PIM issues.</p>\n<p><img src=\"https://www.acentury.co/storage/app/uploads/public/60b/941/6ec/60b9416ecd37a435050884.png\" alt=\"Ad General Learn More.png\" /></p>\n<p>Deploying multiple small cell networks in dense proximity can also produce interference issues that can compromise the signal quality. The noise floor can be raised, which is caused by outband emissions. With increased density of small cell deployments, diode components in small cells, if facing each other, can produce PIM issues.</p>\n<p>Despite these limitations, there are alternative solutions. A hybrid system, which uses both small cell systems and traditional passive DAS systems, could be designed to leverage the advantages of both architectures to offer a solution.</p>\n<p><strong>The Hybrid DAS Solution</strong></p>\n<p>One of the major benefits of a small cell deployment is the simplified distribution system. Hybrid DAS solutions use a fiber or ethernet distribution system and a mini wideband DAS solution to serve the ‘last mile’ or ‘floor’ of a multi-story building. Using a hybrid DAS solution allows installers to leverage the cost and deployment benefits of a small cell solution while also enabling operational and maintenance benefits with a mini-DAS solution for floor distribution, provided that the passive DAS system uses low PIM and wideband network components.</p>\n<p>There are two architectures, a Hybrid Active DAS or Hybrid Small Cell DAS solution, that are used today. In both cases, fiber or ethernet infrastructure is deployed to manage RF signal distribution throughout the building.</p>\n<p><img src=\"https://www.acentury.co/storage/app/uploads/public/60b/941/ef1/60b941ef12afd781692272.png\" alt=\"Hybrid-Active-DAS.png\" /></p>\n<p><img src=\"https://www.acentury.co/storage/app/uploads/public/60b/942/026/60b9420265c89603640923.png\" alt=\"Hybrid-Small-Cell-DAS.png\" /></p>\n<p>The major difference between these architectures is the use of one or two vendors to deploy the solution. A Hybrid Small Cell Solution utilizes only one vendor for source and distribution whereas a Hybrid Active DAS solution requires two. By using passive components with extra and ultra low-PIM and ultra wideband (5G / CBRS) characteristics, property owners and installers will have the flexibility to add additional bands and carriers to manage future upgrade requirements.</p>\n<p><strong>In Summary</strong></p>\n<p>Until an equipment vendor can offer a wideband small cell system, neutral property owners can\'t deploy a small cell solution without major maintenance and upkeep challenges for multi-floor buildings. Although the benefits of a small cell deployment can save installers upfront capital, the benefits are netted out by maintenance and operational expenses in future years.</p>\n<p>A hybrid active DAS or hybrid small cell DAS solution are excellent alternatives for neutral property owners. By combining a fiber or ethernet distribution model with a DAS system to manage floor access, neutral property owners can leverage the advantages of both systems to meet their cost and maintenance requirements. </p>\n<p>To learn more about Radiocomm’s low PIM and wideband network components, please visit our product web page:\n<a href=\"https://www.acentury.co/ca/network-components\">https://www.acentury.co/ca/network-components</a></p>\n<p>For product catalog research, consider visiting Radiocomm’s e-catalog website:\n<a href=\"https://www.radiocomm.co\">Radiocomm e-catalog site</a></p>\n<p>For any customization requests, consider submitting a request and our engineering team will provide engineering specs within 5 business days:\n<a href=\"https://www.acentury.co/radiocomm-customization\">Contact us today for expert consultation and customized solutions.</a></p>\n<p>To get updates about articles like these in the future:\n<a href=\"https://www.acentury.co/newsletter-signup-c\">Subscribe to the Acentury newsletter</a></p>\n<p>For more information about hybrid small cell solutions, feel free to contact us for more information:\n<a href=\"https://www.acentury.co/ca/contact\">Contact Us</a></p>', '2021-06-07 21:43:29', 1, '2021-06-03 20:45:13', '2021-06-04 21:07:13', NULL, 0);
INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `metadata`, `featured`) VALUES
(47, 3, 'Precision Technologies and Acentury partner to develop Radiocomm business in Singapore', 'precision-technologies-and-acentury-partner-develop-radiocomm-business-singapore', 'Radiocomm, the network components division of Acentury Inc., is proud to announce a partnership with Precision Technologies Pte Ltd.  Precision Technologies will act as Radiocomm’s distributor in Singapore.', 'Radiocomm, the network components division of Acentury Inc., is proud to announce a partnership with Precision Technologies Pte Ltd.  Precision Technologies will act as Radiocomm’s distributor in Singapore.\r\n\r\n“Acentury is excited to announce Precision Technologies as our newest Radiocomm distribution partner covering the Singapore market.  We are fortunate to have a very strong partner representing Radiocomm products in the region.  We’re confident that the customer base in Singapore will find our Radiocomm products to deliver unmatched performance and excellent value,” said Frank Ye, CEO of Acentury.\r\n\r\n“We’re very pleased to partner with Acentury and represent Radiocomm products in our market.  Since our start in 1975, Precision has been built on the business philosophy of providing our customers with the highest quality products while delivering superior value.  As such, Radiocomm is a perfect fit for our Communications portfolio,” said Jason Foo, Senior Direct of Sales at Precision Technologies.\r\n\r\n**ABOUT Precision Technologies**<br>\r\nPrecision Technologies was established in 1975 with 2 employees. Today, we have grown into:\r\n* A medium-sized organization with \r\n* 29	Sales Directors, Managers & Engineers \r\n* 10	Technical Service Managers & Engineers\r\n* 34	Sales Administrators & Logistic Support staff\r\n\r\n\r\nProviding total support to the Military, Aerospace, Communications, Homeland Security, Scientific, Oil & Gas, Transport and Electronics industries. We strive to provide customers with products and services of superior value at competitive prices while delivering sustainable growth and prosperity to our Suppliers, Stakeholders and Employees.<br>\r\nhttp://www.pretech.com.sg/\r\n\r\n\r\n\r\n**ABOUT Radiocomm**<br>\r\nRadiocomm, the network components division of Acentury Inc., was launched in 2011 and developed a reputation for its superior technical performance, reliability, and customization services. We pride ourselves in creating a unique customer experience from product development to on-time product delivery. We help service providers, infrastructure equipment manufacturers, educational institutions, government agency departments, and system integrators meet their complex and dynamic requirements.  Radiocomm components cover a wider operating frequency spectrum and higher power applications. With the deployment of outdoor systems with high power (up to 80 W) and 4x4 MIMO, the -165 dBc extra-low PIM becomes an essential requirement to solve complex interference issues.\r\nhttps://radiocomm.co', '<p>Radiocomm, the network components division of Acentury Inc., is proud to announce a partnership with Precision Technologies Pte Ltd.  Precision Technologies will act as Radiocomm’s distributor in Singapore.</p>\n<p>“Acentury is excited to announce Precision Technologies as our newest Radiocomm distribution partner covering the Singapore market.  We are fortunate to have a very strong partner representing Radiocomm products in the region.  We’re confident that the customer base in Singapore will find our Radiocomm products to deliver unmatched performance and excellent value,” said Frank Ye, CEO of Acentury.</p>\n<p>“We’re very pleased to partner with Acentury and represent Radiocomm products in our market.  Since our start in 1975, Precision has been built on the business philosophy of providing our customers with the highest quality products while delivering superior value.  As such, Radiocomm is a perfect fit for our Communications portfolio,” said Jason Foo, Senior Direct of Sales at Precision Technologies.</p>\n<p><strong>ABOUT Precision Technologies</strong><br>\nPrecision Technologies was established in 1975 with 2 employees. Today, we have grown into:</p>\n<ul>\n<li>A medium-sized organization with </li>\n<li>29    Sales Directors, Managers &amp; Engineers </li>\n<li>10    Technical Service Managers &amp; Engineers</li>\n<li>34    Sales Administrators &amp; Logistic Support staff</li>\n</ul>\n<p>Providing total support to the Military, Aerospace, Communications, Homeland Security, Scientific, Oil &amp; Gas, Transport and Electronics industries. We strive to provide customers with products and services of superior value at competitive prices while delivering sustainable growth and prosperity to our Suppliers, Stakeholders and Employees.<br>\n<a href=\"http://www.pretech.com.sg/\">http://www.pretech.com.sg/</a></p>\n<p><strong>ABOUT Radiocomm</strong><br>\nRadiocomm, the network components division of Acentury Inc., was launched in 2011 and developed a reputation for its superior technical performance, reliability, and customization services. We pride ourselves in creating a unique customer experience from product development to on-time product delivery. We help service providers, infrastructure equipment manufacturers, educational institutions, government agency departments, and system integrators meet their complex and dynamic requirements.  Radiocomm components cover a wider operating frequency spectrum and higher power applications. With the deployment of outdoor systems with high power (up to 80 W) and 4x4 MIMO, the -165 dBc extra-low PIM becomes an essential requirement to solve complex interference issues.\n<a href=\"https://radiocomm.co\">https://radiocomm.co</a></p>', '2021-06-09 15:01:46', 1, '2021-06-09 15:02:01', '2021-06-09 15:02:01', NULL, 0),
(48, 3, 'Top 5 Use Cases: Industry Solutions for Wireless Operators', 'top-5-use-cases-industry-solutions-wireless-operators', 'In this virtual seminar, we\'ll review several use cases that demonstrate how our solutions were customized to solve specific business problems.', 'In this virtual seminar, we\'ll review several use cases that demonstrate how our solutions were customized to solve specific business problems. Covered cases include how we delivered 600km of FTTH fiber cable with a 10-12wk lead time, a VHF cavity combiner for public safety where we reduced the original design to 1/8th size to save critical site space, and a custom-designed hexplexer that combines all 3G/4G/5G sub-6 GHz bands for indoor systems.\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PZRygos3CKM\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>In this virtual seminar, we\'ll review several use cases that demonstrate how our solutions were customized to solve specific business problems. Covered cases include how we delivered 600km of FTTH fiber cable with a 10-12wk lead time, a VHF cavity combiner for public safety where we reduced the original design to 1/8th size to save critical site space, and a custom-designed hexplexer that combines all 3G/4G/5G sub-6 GHz bands for indoor systems.</p>\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PZRygos3CKM\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-06-10 18:51:14', 1, '2021-06-10 18:53:26', '2021-06-10 18:53:26', NULL, 0),
(49, 3, 'Equipements Scientifiques and Acentury partner to develop Radiocomm business in France', 'equipements-scientifiques-and-acentury-partner-develop-radiocomm-business-france', 'Radiocomm, the network components division of Acentury Inc., is proud to announce a partnership with Equipements Scientifiques (ES).  ES will act as Radiocomm’s distributor in France.', 'Radiocomm, the network components division of Acentury Inc., is proud to announce a partnership with Equipements Scientifiques (ES).  ES will act as Radiocomm’s distributor in France.\r\n\r\n“The Acentury team is very pleased to announce ES as our newest Radiocomm partner.  ES has been a well respected distributor in France for many years.  Their team has very deep knowledge and experience in wireless technology and RF components.  We are fortunate to have ES as our partner.  We’re confident that the customer base in France will find that our Radiocomm line delivers unmatched performance and value,” said Frank Ye, CEO of Acentury.\r\n\r\n“We assessed Acentury’s Radiocomm line and were very impressed with the performance.  We feel strongly that our customers will not find better RF passive components.  Wireless network deployments are becoming more complex.  We were very pleased to learn that the Radiocomm component design team has successfully and quickly delivered customized components to several global customers.  That type of customer dedication is what convinced us that Radiocomm is the right partner,” said Philippe Guez, Directeur Commercial at ES.\r\n\r\n**ABOUT Equipements Scientifiques**<br>\r\nSince its founding in 1963: Equipements Scientifiques carefully selects the different foreign manufacturers that we represent in France according to key factors: strong technology, price / quality ratio, quality certification, niche-products.\r\nEquipements Scientifiques has gone through all the major events that have occurred in the electronic components and equipment market, developments that were provoked by spectacular technological progress. From the golden age of electronics, where demand outstripped supply, to the dominance of the military market, and up to today where needs in the mass market have literally exploded, mainly due to the progress of wireless applications.  The world has changed… and so has ES.\r\nhttps://www.es-france.com/\r\n \r\n**ABOUT Radiocomm**<br>\r\nRadiocomm, the network components division of Acentury Inc., was launched in 2011 and developed a reputation for its superior technical performance, reliability, and customization services. We pride ourselves in creating a unique customer experience from product development to on-time product delivery. We help service providers, infrastructure equipment manufacturers, educational institutions, government agency departments, and system integrators meet their complex and dynamic requirements.  Radiocomm components cover a wider operating frequency spectrum and higher power applications. With the deployment of outdoor systems with high power (up to 80 W) and 4x4 MIMO, the -165 dBc extra-low PIM becomes an essential requirement to solve complex interference issues.\r\nhttps://radiocomm.co', '<p>Radiocomm, the network components division of Acentury Inc., is proud to announce a partnership with Equipements Scientifiques (ES).  ES will act as Radiocomm’s distributor in France.</p>\n<p>“The Acentury team is very pleased to announce ES as our newest Radiocomm partner.  ES has been a well respected distributor in France for many years.  Their team has very deep knowledge and experience in wireless technology and RF components.  We are fortunate to have ES as our partner.  We’re confident that the customer base in France will find that our Radiocomm line delivers unmatched performance and value,” said Frank Ye, CEO of Acentury.</p>\n<p>“We assessed Acentury’s Radiocomm line and were very impressed with the performance.  We feel strongly that our customers will not find better RF passive components.  Wireless network deployments are becoming more complex.  We were very pleased to learn that the Radiocomm component design team has successfully and quickly delivered customized components to several global customers.  That type of customer dedication is what convinced us that Radiocomm is the right partner,” said Philippe Guez, Directeur Commercial at ES.</p>\n<p><strong>ABOUT Equipements Scientifiques</strong><br>\nSince its founding in 1963: Equipements Scientifiques carefully selects the different foreign manufacturers that we represent in France according to key factors: strong technology, price / quality ratio, quality certification, niche-products.\nEquipements Scientifiques has gone through all the major events that have occurred in the electronic components and equipment market, developments that were provoked by spectacular technological progress. From the golden age of electronics, where demand outstripped supply, to the dominance of the military market, and up to today where needs in the mass market have literally exploded, mainly due to the progress of wireless applications.  The world has changed… and so has ES.\n<a href=\"https://www.es-france.com/\">https://www.es-france.com/</a></p>\n<p><strong>ABOUT Radiocomm</strong><br>\nRadiocomm, the network components division of Acentury Inc., was launched in 2011 and developed a reputation for its superior technical performance, reliability, and customization services. We pride ourselves in creating a unique customer experience from product development to on-time product delivery. We help service providers, infrastructure equipment manufacturers, educational institutions, government agency departments, and system integrators meet their complex and dynamic requirements.  Radiocomm components cover a wider operating frequency spectrum and higher power applications. With the deployment of outdoor systems with high power (up to 80 W) and 4x4 MIMO, the -165 dBc extra-low PIM becomes an essential requirement to solve complex interference issues.\n<a href=\"https://radiocomm.co\">https://radiocomm.co</a></p>', '2021-06-25 19:11:06', 1, '2021-06-25 19:11:25', '2021-06-25 19:11:33', NULL, 0),
(50, 3, 'How We Solved Network Build-Out Challenges (Top 5 Industry Use Cases)', 'how-we-solved-network-build-out-challenges-top-5-industry-use-cases', 'Network deployment challenges continue to grow more complex in the wireless networking industry. Watch to see how Acentury is able to solve them.', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Nqhculn0Vcs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n\r\nNetwork deployment challenges continue to grow more complex in the wireless networking industry. Watch to see how Acentury is able to solve them.\r\n\r\nAcentury is excited to present the first of the Top 5 Industry Use Cases: Network Deployment Challenges. David Woodcock explains three of them: Performance, Site space, and Material availability.\r\n\r\nOther top industry use cases are featured in our complete virtual seminar. These include how we delivered 600km of FTTH fiber cable with a 10-12wk lead time, a VHF cavity combiner for public safety where we reduced the original design to 1/8th size to save critical site space, and a custom-designed hexplexer that combines all 3G/4G/5G sub-6 GHz bands for indoor systems.. See the full seminar here:\r\n\r\nhttps://youtu.be/PZRygos3CKM\r\n\r\n**About Acentury**<br>\r\nAcentury Inc. was founded in 2011 specializing in test and measurement solutions for mobile network operators. In 2013, Acentury launched their first line of passive network components with the product brand Radiocomm and has since deployed thousands of components that meet the requirements and scale of several carrier-grade networks. Today, Acentury continues to launch innovative RF products and solutions for mobile network operators, cable MSOs, network equipment manufacturers, chipset manufacturers, and internet-scale tech companies.\r\n\r\nAcentury Website: https://www.acentury.co/ <br>\r\nAcentury LAMTA: https://www.acentury.co/ca/test-and-measurement-product <br>\r\nLinkedIn: https://www.linkedin.com/company/acentury-inc/', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Nqhculn0Vcs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\n<p>Network deployment challenges continue to grow more complex in the wireless networking industry. Watch to see how Acentury is able to solve them.</p>\n<p>Acentury is excited to present the first of the Top 5 Industry Use Cases: Network Deployment Challenges. David Woodcock explains three of them: Performance, Site space, and Material availability.</p>\n<p>Other top industry use cases are featured in our complete virtual seminar. These include how we delivered 600km of FTTH fiber cable with a 10-12wk lead time, a VHF cavity combiner for public safety where we reduced the original design to 1/8th size to save critical site space, and a custom-designed hexplexer that combines all 3G/4G/5G sub-6 GHz bands for indoor systems.. See the full seminar here:</p>\n<p><a href=\"https://youtu.be/PZRygos3CKM\">https://youtu.be/PZRygos3CKM</a></p>\n<p><strong>About Acentury</strong><br>\nAcentury Inc. was founded in 2011 specializing in test and measurement solutions for mobile network operators. In 2013, Acentury launched their first line of passive network components with the product brand Radiocomm and has since deployed thousands of components that meet the requirements and scale of several carrier-grade networks. Today, Acentury continues to launch innovative RF products and solutions for mobile network operators, cable MSOs, network equipment manufacturers, chipset manufacturers, and internet-scale tech companies.</p>\n<p>Acentury Website: <a href=\"https://www.acentury.co/\">https://www.acentury.co/</a> <br>\nAcentury LAMTA: <a href=\"https://www.acentury.co/ca/test-and-measurement-product\">https://www.acentury.co/ca/test-and-measurement-product</a> <br>\nLinkedIn: <a href=\"https://www.linkedin.com/company/acentury-inc/\">https://www.linkedin.com/company/acentury-inc/</a></p>', '2021-07-20 15:40:38', 1, '2021-07-20 15:40:39', '2021-09-09 18:11:14', NULL, 0),
(51, 3, 'Maser and Acentury partner to develop LAMTA business in Australia/New Zealand', 'maser-and-acentury-partner-develop-lamta-business-australianew-zealand', 'Acentury Inc. is proud to announce a partnership with Maser. Maser will act as LAMTA’s distributor in Australia and New Zealand.', 'Acentury Inc. is proud to announce a partnership with Maser. Maser will act as LAMTA’s distributor in Australia and New Zealand.\r\n\r\n“Acentury is very excited to announce Maser as one of our first Acentury LAMTA distribution partners, covering the Australian and New Zealand market. We are fortunate to partner with an industry veteran like Maser, with their over 30 years of xperience and that customers in the region will have access to LAMTA through such a strong representative,” said Frank Ye, CEO of Acentury.\r\n\r\n**ABOUT Maser**<br>\r\nWith over 30 years of industry experience, Maser Australia is a trusted provider of advanced technology solutions, sourced from our network of leading international suppliers across the telecommunications, enterprise, industrial and defence sectors. With a dedicated team of sales, service and operational people, our staff are passionate and committed to delivering market leading products and services that exceed customer expectations. Maser provides our customers with extensive market and product expertise, quality, reliability, diversity, specialised services and advance technologies, allowing us to provide our end customers with the best solution to meet their requirements, no matter how challenging. Maser – Knowledge, Trust, Quality and Reliability, our core values we bring to you.\r\nhttps://maser.com.au/\r\n\r\n\r\n\r\n**ABOUT LAMTA**<br>\r\nAcentury LAMTA is an end-to-end solution that uses a software-based platform for wireless 3G/4G/5G lab testing and lab resources management. LAMTA is a scalable solution designed by RF engineers and used by Tier 1 operator labs. LAMTA uses software to manage a ‘connect once’ setup that can simplify RF cable management and enable remote management capabilities. The solution also features the automation and execution of complicated test scenarios such as massive MIMO and carrier aggregation. https://www.acentury.co/ca/test-and-measurement-product', '<p>Acentury Inc. is proud to announce a partnership with Maser. Maser will act as LAMTA’s distributor in Australia and New Zealand.</p>\n<p>“Acentury is very excited to announce Maser as one of our first Acentury LAMTA distribution partners, covering the Australian and New Zealand market. We are fortunate to partner with an industry veteran like Maser, with their over 30 years of xperience and that customers in the region will have access to LAMTA through such a strong representative,” said Frank Ye, CEO of Acentury.</p>\n<p><strong>ABOUT Maser</strong><br>\nWith over 30 years of industry experience, Maser Australia is a trusted provider of advanced technology solutions, sourced from our network of leading international suppliers across the telecommunications, enterprise, industrial and defence sectors. With a dedicated team of sales, service and operational people, our staff are passionate and committed to delivering market leading products and services that exceed customer expectations. Maser provides our customers with extensive market and product expertise, quality, reliability, diversity, specialised services and advance technologies, allowing us to provide our end customers with the best solution to meet their requirements, no matter how challenging. Maser – Knowledge, Trust, Quality and Reliability, our core values we bring to you.\n<a href=\"https://maser.com.au/\">https://maser.com.au/</a></p>\n<p><strong>ABOUT LAMTA</strong><br>\nAcentury LAMTA is an end-to-end solution that uses a software-based platform for wireless 3G/4G/5G lab testing and lab resources management. LAMTA is a scalable solution designed by RF engineers and used by Tier 1 operator labs. LAMTA uses software to manage a ‘connect once’ setup that can simplify RF cable management and enable remote management capabilities. The solution also features the automation and execution of complicated test scenarios such as massive MIMO and carrier aggregation. <a href=\"https://www.acentury.co/ca/test-and-measurement-product\">https://www.acentury.co/ca/test-and-measurement-product</a></p>', '2021-08-19 17:20:44', 1, '2021-08-19 17:19:43', '2021-08-19 17:20:48', NULL, 0),
(52, 3, 'How We Designed Low PIM RF Diplexer and Attenuators for a 5G Lab (Top 5 Industry Use Cases)', 'how-we-designed-low-pim-rf-diplexer-and-attenuators-5g-lab-top-5-industry-use-cases', 'Our team of experts are equipped with a deep understanding of our client’s needs, allowing us the foresight to design solutions that are fast, efficient, and make our client’s work seamless. Watch to see examples of Acentury\'s work.', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/C0QskG64ZN4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n\r\nAcentury is excited to present the second of the Top 5 Industry Use Cases: Designing Custom Multi-Band Network Components.\r\n\r\nIn this video clip we review two examples where we designed multi-band components from the virtual seminar: 1) Designing low-PIM diplexers and attentuators for a 5G lab in a Tier 1 US carrier 2) Designing a custom-designed hexplexer that combines all 3G/4G/5G sub-6 GHz bands.\r\n\r\nOther top industry use cases are featured in our virtual seminar. These include how we delivered 600km of FTTH fiber cable with a 10-12wk lead time, and a VHF cavity combiner for public safety where we reduced the original design to 1/8th size. See the full seminar here:\r\n\r\nhttps://youtu.be/PZRygos3CKM\r\n\r\n**About Acentury** <br>\r\nAcentury Inc. was founded in 2011 specializing in test and measurement solutions for mobile network operators. In 2013, Acentury launched their first line of passive network components with the product brand Radiocomm and has since deployed thousands of components that meet the requirements and scale of several carrier-grade networks. Today, Acentury continues to launch innovative RF products and solutions for mobile network operators, cable MSOs, network equipment manufacturers, chipset manufacturers, and internet-scale tech companies.\r\n\r\nAcentury Website: https://www.acentury.co/ <br>\r\nAcentury LAMTA: https://www.acentury.co/ca/test-and-measurement-product <br>\r\nLinkedIn: https://www.linkedin.com/company/acentury-inc/', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/C0QskG64ZN4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\n<p>Acentury is excited to present the second of the Top 5 Industry Use Cases: Designing Custom Multi-Band Network Components.</p>\n<p>In this video clip we review two examples where we designed multi-band components from the virtual seminar: 1) Designing low-PIM diplexers and attentuators for a 5G lab in a Tier 1 US carrier 2) Designing a custom-designed hexplexer that combines all 3G/4G/5G sub-6 GHz bands.</p>\n<p>Other top industry use cases are featured in our virtual seminar. These include how we delivered 600km of FTTH fiber cable with a 10-12wk lead time, and a VHF cavity combiner for public safety where we reduced the original design to 1/8th size. See the full seminar here:</p>\n<p><a href=\"https://youtu.be/PZRygos3CKM\">https://youtu.be/PZRygos3CKM</a></p>\n<p><strong>About Acentury</strong> <br>\nAcentury Inc. was founded in 2011 specializing in test and measurement solutions for mobile network operators. In 2013, Acentury launched their first line of passive network components with the product brand Radiocomm and has since deployed thousands of components that meet the requirements and scale of several carrier-grade networks. Today, Acentury continues to launch innovative RF products and solutions for mobile network operators, cable MSOs, network equipment manufacturers, chipset manufacturers, and internet-scale tech companies.</p>\n<p>Acentury Website: <a href=\"https://www.acentury.co/\">https://www.acentury.co/</a> <br>\nAcentury LAMTA: <a href=\"https://www.acentury.co/ca/test-and-measurement-product\">https://www.acentury.co/ca/test-and-measurement-product</a> <br>\nLinkedIn: <a href=\"https://www.linkedin.com/company/acentury-inc/\">https://www.linkedin.com/company/acentury-inc/</a></p>', '2021-09-09 15:02:19', 1, '2021-09-09 15:03:19', '2021-09-09 18:10:22', NULL, 0),
(53, 3, 'Virtualizing Your 5G RF Testing Lab (Top 5 Industry Use Cases)', 'virtualizing-your-5g-rf-testing-lab-top-5-industry-use-cases', 'Acentury is excited to present the third of the Top 5 Industry Use Cases, Virtual RF Lab & Testing Automation, where we take a look how Acentury responded to RF lab challenges with LAMTA.', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8kPSxSTv2V0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n\r\nOperating an RF lab has never been easy. There are a lot of radio connections and RF jumper cables - and they can take hours to configure. The test scenarios are complex with carrier aggregation, hand-off, roaming, and more. With all these moving pieces, there is also an inefficient use of lab resources.\r\n\r\nAcentury is excited to present the third of the Top 5 Industry Use Cases, Virtual RF Lab & Testing Automation, where we take a look how Acentury responded to those challenges with LAMTA.\r\n\r\nFor more examples of use cases that demonstrate how our solutions were customized to solve specific business problems, check out our complete virtual seminar. Covered cases include how we delivered 600km of FTTH fiber cable with a 10-12wk lead time, a VHF cavity combiner for public safety where we reduced the original design to 1/8th size to save critical site space, and a custom-designed hexplexer that combines all 3G/4G/5G sub-6 GHz bands for indoor systems. See it here:\r\n\r\nhttps://youtu.be/PZRygos3CKM\r\n\r\n\r\n**About Acentury** <br>\r\nAcentury Inc. was founded in 2011 specializing in test and measurement solutions for mobile network operators. In 2013, Acentury launched their first line of passive network components with the product brand Radiocomm and has since deployed thousands of components that meet the requirements and scale of several carrier-grade networks. Today, Acentury continues to launch innovative RF products and solutions for mobile network operators, cable MSOs, network equipment manufacturers, chipset manufacturers, and internet-scale tech companies.\r\n\r\nAcentury Website: https://www.acentury.co/ <br>\r\nAcentury LAMTA: https://www.acentury.co/ca/test-and-measurement-product <br>\r\nLinkedIn: https://www.linkedin.com/company/acentury-inc/', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8kPSxSTv2V0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\n<p>Operating an RF lab has never been easy. There are a lot of radio connections and RF jumper cables - and they can take hours to configure. The test scenarios are complex with carrier aggregation, hand-off, roaming, and more. With all these moving pieces, there is also an inefficient use of lab resources.</p>\n<p>Acentury is excited to present the third of the Top 5 Industry Use Cases, Virtual RF Lab &amp; Testing Automation, where we take a look how Acentury responded to those challenges with LAMTA.</p>\n<p>For more examples of use cases that demonstrate how our solutions were customized to solve specific business problems, check out our complete virtual seminar. Covered cases include how we delivered 600km of FTTH fiber cable with a 10-12wk lead time, a VHF cavity combiner for public safety where we reduced the original design to 1/8th size to save critical site space, and a custom-designed hexplexer that combines all 3G/4G/5G sub-6 GHz bands for indoor systems. See it here:</p>\n<p><a href=\"https://youtu.be/PZRygos3CKM\">https://youtu.be/PZRygos3CKM</a></p>\n<p><strong>About Acentury</strong> <br>\nAcentury Inc. was founded in 2011 specializing in test and measurement solutions for mobile network operators. In 2013, Acentury launched their first line of passive network components with the product brand Radiocomm and has since deployed thousands of components that meet the requirements and scale of several carrier-grade networks. Today, Acentury continues to launch innovative RF products and solutions for mobile network operators, cable MSOs, network equipment manufacturers, chipset manufacturers, and internet-scale tech companies.</p>\n<p>Acentury Website: <a href=\"https://www.acentury.co/\">https://www.acentury.co/</a> <br>\nAcentury LAMTA: <a href=\"https://www.acentury.co/ca/test-and-measurement-product\">https://www.acentury.co/ca/test-and-measurement-product</a> <br>\nLinkedIn: <a href=\"https://www.linkedin.com/company/acentury-inc/\">https://www.linkedin.com/company/acentury-inc/</a></p>', '2021-09-09 15:06:07', 1, '2021-09-09 15:04:24', '2021-09-09 18:09:11', NULL, 0),
(54, 3, 'Acentury is a proud sponsor of CCA 2021', 'acentury-proud-sponsor-cca-2021', 'Check out our booth from September 20 to 22 at the Phoenix Convention Center.', 'Acentury is proud to announce that we are sponsoring the Competitive Carriers Association CCA 2021 Annual Convention in Phoenix, AZ! Check out our booth from September 20 to 22 at the Phoenix Convention Center. \r\n\r\n**What is CCA 2021?**<br>\r\nThree days, countless opportunities.\r\n\r\nCCA’s Annual Convention is the only North American event to focus exclusively on smart strategies, technology innovations, and business opportunities for carriers in this increasingly mobile world.\r\n\r\nThe educational program at CCA 2021, along with its networking opportunities and exhibit hall, will explore technology trends that are changing the way we work and live, and will provide a platform for companies to reach the lucrative competitive carrier market, which spends $15 billion annually on products and services.\r\n\r\nLearn more here: https://www.cca-convention.org/', '<p>Acentury is proud to announce that we are sponsoring the Competitive Carriers Association CCA 2021 Annual Convention in Phoenix, AZ! Check out our booth from September 20 to 22 at the Phoenix Convention Center. </p>\n<p><strong>What is CCA 2021?</strong><br>\nThree days, countless opportunities.</p>\n<p>CCA’s Annual Convention is the only North American event to focus exclusively on smart strategies, technology innovations, and business opportunities for carriers in this increasingly mobile world.</p>\n<p>The educational program at CCA 2021, along with its networking opportunities and exhibit hall, will explore technology trends that are changing the way we work and live, and will provide a platform for companies to reach the lucrative competitive carrier market, which spends $15 billion annually on products and services.</p>\n<p>Learn more here: <a href=\"https://www.cca-convention.org/\">https://www.cca-convention.org/</a></p>', '2021-09-09 16:06:10', 1, '2021-09-09 16:06:27', '2021-09-09 16:06:27', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts_categories`
--

CREATE TABLE `rainlab_blog_posts_categories` (
  `post_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_blog_posts_categories`
--

INSERT INTO `rainlab_blog_posts_categories` (`post_id`, `category_id`) VALUES
(1, 4),
(2, 5),
(3, 2),
(4, 2),
(5, 2),
(6, 6),
(7, 3),
(8, 3),
(9, 3),
(10, 6),
(11, 2),
(11, 6),
(12, 2),
(12, 6),
(13, 5),
(15, 3),
(16, 3),
(17, 2),
(18, 7),
(19, 7),
(20, 2),
(20, 6),
(21, 7),
(22, 7),
(23, 5),
(23, 6),
(24, 5),
(25, 2),
(26, 2),
(27, 5),
(28, 5),
(29, 6),
(30, 2),
(30, 4),
(30, 8),
(31, 5),
(32, 4),
(32, 8),
(33, 6),
(34, 2),
(35, 6),
(36, 4),
(36, 8),
(37, 5),
(37, 8),
(38, 5),
(38, 8),
(39, 5),
(39, 8),
(40, 4),
(41, 6),
(42, 2),
(42, 3),
(43, 4),
(43, 8),
(44, 3),
(45, 6),
(46, 5),
(46, 8),
(47, 6),
(48, 5),
(49, 6),
(50, 4),
(51, 6),
(52, 4),
(52, 8),
(53, 4),
(54, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_activity` int DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int UNSIGNED NOT NULL,
  `level` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_files`
--

CREATE TABLE `system_files` (
  `id` int UNSIGNED NOT NULL,
  `disk_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int NOT NULL,
  `content_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `field` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(2, '5d9219b6ec58c601468986.jpg', 'home-slide1.jpg', 204388, 'image/jpeg', NULL, NULL, 'image', '1', 'Ittoo\\Carousel\\Models\\Slide', 1, 2, '2019-09-30 19:05:26', '2019-09-30 19:05:49'),
(3, '5d9326c1697ae305349272.png', 'bell.png', 1728, 'image/png', NULL, NULL, NULL, NULL, NULL, 1, 3, '2019-10-01 14:13:21', '2019-10-01 14:13:21'),
(4, '5d9333124ae43361517526.png', 'bell.png', 1728, 'image/png', NULL, NULL, NULL, NULL, NULL, 1, 4, '2019-10-01 15:05:54', '2019-10-01 15:05:54'),
(8, '5d93f07cc9118737090836.svg', 'logo.svg', 4855, 'image/svg+xml', NULL, NULL, 'logo', '3', 'Backend\\Models\\BrandSetting', 1, 8, '2019-10-02 04:34:04', '2019-10-02 04:34:07'),
(36, '5d9538ab0d49c685554568.ico', 'favicon.ico', 15086, 'image/x-icon', NULL, NULL, 'favicon', '3', 'Backend\\Models\\BrandSetting', 1, 36, '2019-10-03 03:54:19', '2019-10-03 03:54:21'),
(41, '5d95f3508caf6105569011.jpg', 'network-3.jpg', 10931, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 41, '2019-10-03 17:10:40', '2019-10-03 17:10:40'),
(52, '5d971ca3b14fe645595561.jpg', 'news-attending-mwc.jpg', 30432, 'image/jpeg', NULL, NULL, 'featured_images', '5', 'RainLab\\Blog\\Models\\Post', 1, 52, '2019-10-04 14:19:15', '2019-10-04 14:19:16'),
(53, '5d971cbea2c17378514939.jpg', 'news-rank-no-170.jpg', 56114, 'image/jpeg', NULL, NULL, 'featured_images', '3', 'RainLab\\Blog\\Models\\Post', 1, 53, '2019-10-04 14:19:42', '2019-10-04 14:19:43'),
(54, '5d971cd0b3559184212386.jpg', 'news-rank-no-128.jpg', 34595, 'image/jpeg', NULL, NULL, 'featured_images', '4', 'RainLab\\Blog\\Models\\Post', 1, 54, '2019-10-04 14:20:00', '2019-10-04 14:20:03'),
(55, '5d97437f83514461811033.jpg', 'update-emit.jpg', 10846, 'image/jpeg', NULL, NULL, 'featured_images', '6', 'RainLab\\Blog\\Models\\Post', 1, 55, '2019-10-04 17:05:03', '2019-10-04 17:05:04'),
(57, '5d97457fdedd6152715810.jpg', 'extra-low-pim-44-hybrid-wideband-coupler.jpg', 33534, 'image/jpeg', NULL, NULL, 'featured_images', '8', 'RainLab\\Blog\\Models\\Post', 1, 57, '2019-10-04 17:13:35', '2019-10-04 17:13:37'),
(58, '5d9745f571c03100476273.jpg', 'extra-low-pim-3_3-hybrid-coupler.jpg', 26395, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 58, '2019-10-04 17:15:33', '2019-10-04 17:15:33'),
(83, '5d9db2ad03860475380630.jpg', 'Fan-Zhang---VP,-Network-Components-.jpg', 16379, 'image/jpeg', NULL, NULL, 'image', '4', 'Ittoo\\Carousel\\Models\\Team', 1, 83, '2019-10-09 10:13:01', '2019-10-09 10:13:01'),
(84, '5d9db2dd959e4323885052.jpg', 'Frank-Ye---CEO.jpg', 19539, 'image/jpeg', NULL, NULL, 'image', '5', 'Ittoo\\Carousel\\Models\\Team', 1, 84, '2019-10-09 10:13:49', '2019-10-09 10:13:50'),
(89, '5d9db434aeadf653837344.jpg', 'Mihail-Pripekov---Support-Engineering.jpg', 29802, 'image/jpeg', NULL, NULL, 'image', '10', 'Ittoo\\Carousel\\Models\\Team', 1, 89, '2019-10-09 10:19:33', '2019-10-09 10:19:33'),
(91, '5d9db48895a14909218548.jpg', 'Scott-Cho--Support-Engineering.jpg', 17519, 'image/jpeg', NULL, NULL, 'image', '12', 'Ittoo\\Carousel\\Models\\Team', 1, 91, '2019-10-09 10:20:56', '2019-10-09 10:20:57'),
(94, '5d9db55fe850e849323800.jpg', 'Leo-Lin---CTO.jpg', 20895, 'image/jpeg', NULL, NULL, 'image', '7', 'Ittoo\\Carousel\\Models\\Team', 1, 94, '2019-10-09 10:24:32', '2019-10-09 10:24:34'),
(96, '5d9db6e77d5ad419661721.jpg', 'update-emit.jpg', 10846, 'image/jpeg', NULL, NULL, 'featured_images', '10', 'RainLab\\Blog\\Models\\Post', 1, 96, '2019-10-09 10:31:03', '2019-10-09 10:31:05'),
(97, '5d9efc0c50b75155405280.jpg', 'John-Bell---Account-Executive.jpg', 24610, 'image/jpeg', NULL, NULL, 'image', '15', 'Ittoo\\Carousel\\Models\\Team', 1, 97, '2019-10-10 09:38:20', '2019-10-10 09:38:21'),
(98, '5d9f893d94fc7936824103.jpg', 'contact.jpg', 113774, 'image/jpeg', NULL, NULL, 'image', '17', 'Ittoo\\Carousel\\Models\\Slide', 1, 98, '2019-10-10 19:40:45', '2019-10-10 19:41:03'),
(99, '5d9f8e3208cd9573398929.jpg', 'network-1.jpg', 14766, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 99, '2019-10-10 20:01:54', '2019-10-10 20:01:54'),
(100, '5d9f8e362e734034895447.jpg', 'network-5.jpg', 12396, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 100, '2019-10-10 20:01:58', '2019-10-10 20:01:58'),
(122, '5da19ec4eed4d285453429.jpg', 'sprint.jpg', 3319, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 122, '2019-10-12 09:37:08', '2019-10-12 09:37:08'),
(132, '5da4aee3da6c9305699740.png', '19665.png', 3277311, 'image/png', NULL, NULL, 'image', '10', 'Ittoo\\Carousel\\Models\\Slide', 1, 132, '2019-10-14 17:22:43', '2019-10-14 17:22:45'),
(135, '5da4b05c5dda1769573101.png', '732.png', 2132106, 'image/png', NULL, NULL, 'image', '11', 'Ittoo\\Carousel\\Models\\Slide', 1, 135, '2019-10-14 17:29:00', '2019-10-14 17:29:01'),
(136, '5da4b09259390111193175.jpg', '713.jpg', 2010004, 'image/jpeg', NULL, NULL, 'image', '9', 'Ittoo\\Carousel\\Models\\Slide', 1, 136, '2019-10-14 17:29:54', '2019-10-14 17:29:55'),
(158, '5da50ccb66903083213393.jpg', '869.jpg', 5690504, 'image/jpeg', NULL, NULL, 'image', '20', 'Ittoo\\Carousel\\Models\\Slide', 1, 158, '2019-10-15 00:03:23', '2019-10-15 00:03:38'),
(167, '5da515855d119975613902.jpg', 'Group-axe-photo.jpg', 1287694, 'image/jpeg', NULL, NULL, 'image', '18', 'Ittoo\\Carousel\\Models\\Slide', 1, 167, '2019-10-15 00:40:37', '2019-10-15 00:40:38'),
(169, '5da52053e7ffc270009269.jpg', '713.jpg', 2010004, 'image/jpeg', NULL, NULL, 'image', '22', 'Ittoo\\Carousel\\Models\\Slide', 1, 169, '2019-10-15 01:26:43', '2019-10-15 01:26:48'),
(170, '5da5236e534d4895405388.png', 'PIM image.png', 69181, 'image/png', NULL, NULL, 'featured_images', '2', 'RainLab\\Blog\\Models\\Post', 1, 170, '2019-10-15 01:39:58', '2019-10-15 01:40:03'),
(173, '5da8e16f03810068076391.jpg', 'Rubianto-business.jpg', 1781121, 'image/jpeg', NULL, NULL, 'image', '17', 'Ittoo\\Carousel\\Models\\Team', 1, 173, '2019-10-17 21:47:27', '2019-10-17 21:47:28'),
(176, '5da8e1f414c27498067068.jpg', 'david-collarproblem.jpg', 1786549, 'image/jpeg', NULL, NULL, 'image', '16', 'Ittoo\\Carousel\\Models\\Team', 1, 176, '2019-10-17 21:49:40', '2019-10-17 21:49:42'),
(179, '5da8eb8c456c6503795292.jpg', 'Adam-Xie---RF-Engineer.jpg', 14113, 'image/jpeg', NULL, NULL, 'image', '19', 'Ittoo\\Carousel\\Models\\Team', 1, 179, '2019-10-17 22:30:36', '2019-10-17 22:30:39'),
(185, '5da9e04b3526d806554933.jpg', 'Wideband-dir-coupler.jpg', 2094795, 'image/jpeg', NULL, NULL, 'featured_images', '9', 'RainLab\\Blog\\Models\\Post', 1, 185, '2019-10-18 15:54:51', '2019-10-18 15:54:55'),
(186, '5da9e147aced5733669277.jpg', 'hybrid-coupler.jpg', 2586273, 'image/jpeg', NULL, NULL, 'featured_images', '7', 'RainLab\\Blog\\Models\\Post', 1, 186, '2019-10-18 15:59:03', '2019-10-18 15:59:05'),
(188, '5da9f5e2de2e6984549645.png', '3d-18.png', 294423, 'image/png', NULL, NULL, 'featured_images', '1', 'RainLab\\Blog\\Models\\Post', 1, 188, '2019-10-18 17:26:58', '2019-10-18 17:27:04'),
(191, '5db73924ab421987561253.png', 'Cogeco-logo.png', 6714, 'image/png', NULL, NULL, NULL, NULL, NULL, 1, 191, '2019-10-28 18:53:24', '2019-10-28 18:53:24'),
(197, '5dd44e6168073191684088.png', 'Screen Shot 2019-11-19 at 3.18.13 PM.png', 7662, 'image/png', NULL, NULL, NULL, NULL, NULL, 1, 197, '2019-11-19 20:19:45', '2019-11-19 20:19:45'),
(200, '5dd44f8a2e1d3855142810.png', 'Screen Shot 2019-11-19 at 3.22.03 PM.png', 12212, 'image/png', NULL, NULL, NULL, NULL, NULL, 1, 200, '2019-11-19 20:24:42', '2019-11-19 20:24:42'),
(204, '5dd742e4ef6f0311389477.jpg', 'MarkTaub.jpg', 2369467, 'image/jpeg', NULL, NULL, 'image', '9', 'Ittoo\\Carousel\\Models\\Team', 1, 204, '2019-11-22 02:07:32', '2019-11-22 02:07:34'),
(205, '5ddd9aee8240b940222088.png', 'Screen Shot 2019-11-26 at 4.30.36 PM.png', 794751, 'image/png', NULL, NULL, 'featured_images', '11', 'RainLab\\Blog\\Models\\Post', 1, 205, '2019-11-26 21:36:46', '2019-11-26 21:36:53'),
(208, '5de70ee534253867699073.png', 'Screen Shot 2019-12-03 at 8.41.42 PM.png', 45036, 'image/png', NULL, NULL, 'featured_images', '13', 'RainLab\\Blog\\Models\\Post', 1, 208, '2019-12-04 01:41:57', '2019-12-04 01:41:59'),
(210, '5e1fc8cb830a5632264684.jpg', 'webaroo-com-au-LR_wX_klOPM-unsplash.jpg', 2823151, 'image/jpeg', NULL, NULL, 'featured_images', '12', 'RainLab\\Blog\\Models\\Post', 1, 210, '2020-01-16 02:22:03', '2020-01-16 02:22:07'),
(213, '5e21f8cb12a06038285821.png', 'home-banner-mwc.png', 153384, 'image/png', NULL, NULL, NULL, NULL, NULL, 1, 213, '2020-01-17 18:11:23', '2020-01-17 18:11:23'),
(217, '5e3dad10c2987518936188.png', 'cm4-p516.png', 54636, 'image/png', NULL, NULL, 'featured_images', '15', 'RainLab\\Blog\\Models\\Post', 1, 217, '2020-02-07 18:31:44', '2020-02-07 18:31:48'),
(218, '5e3daf0d2b1fa718464952.png', 'Extra low PIM 4-2 Combiner.png', 56344, 'image/png', NULL, NULL, 'featured_images', '16', 'RainLab\\Blog\\Models\\Post', 1, 218, '2020-02-07 18:40:13', '2020-02-07 18:40:53'),
(219, '5e68f10737312202951533.png', 'MCS Show logo.png', 21933, 'image/png', NULL, NULL, NULL, NULL, NULL, 1, 219, '2020-03-11 14:09:11', '2020-03-11 14:09:11'),
(222, '5e7f8b0542699453851891.jpg', '13 copy.jpg', 4884145, 'image/jpeg', NULL, NULL, 'image', '23', 'Ittoo\\Carousel\\Models\\Slide', 1, 222, '2020-03-28 17:36:05', '2020-03-28 17:36:09'),
(224, '5e810be2e6927268343816.png', 'LAMTA-radio-management.png', 285963, 'image/png', NULL, NULL, 'image', '28', 'Ittoo\\Carousel\\Models\\Slide', 1, 224, '2020-03-29 20:58:10', '2020-03-29 20:58:53'),
(225, '5e81432fc8667724314633.png', 'LAMTA-screenshot.png', 184879, 'image/png', NULL, NULL, 'image', '30', 'Ittoo\\Carousel\\Models\\Slide', 1, 225, '2020-03-30 00:54:07', '2020-03-30 00:55:03'),
(227, '5e8146191cf2d800206439.png', 'LAMTA-labresource-pic.png', 268041, 'image/png', NULL, NULL, 'image', '31', 'Ittoo\\Carousel\\Models\\Slide', 1, 227, '2020-03-30 01:06:33', '2020-03-30 01:08:07'),
(230, '5e94c92008d4f705514077.jpg', 'bench-accounting-C3V88BOoRoM-unsplash.jpg', 865116, 'image/jpeg', NULL, NULL, 'featured_images', '17', 'RainLab\\Blog\\Models\\Post', 1, 230, '2020-04-13 20:18:40', '2020-04-13 20:18:42'),
(232, '5e975a2d693b7031070641.png', '964 [Converted].png', 241078, 'image/png', NULL, NULL, 'image', '12', 'Ittoo\\Carousel\\Models\\Slide', 1, 232, '2020-04-15 19:02:05', '2020-04-15 19:02:08'),
(233, '5eefca7933ab7237759393.png', 'ChimeraCompact photo copy.png', 157984, 'image/png', NULL, NULL, 'featured_images', '18', 'RainLab\\Blog\\Models\\Post', 1, 233, '2020-06-21 21:00:41', '2020-06-21 21:01:11'),
(234, '5eefd5994145f060772928.png', 'Chimera.png', 67536, 'image/png', NULL, NULL, 'image', '38', 'Ittoo\\Carousel\\Models\\Slide', 1, 234, '2020-06-21 21:48:09', '2020-06-21 21:49:28'),
(236, '5ef00b7d7104a930895986.png', 'Lepton interface.png', 62084, 'image/png', NULL, NULL, 'image', '39', 'Ittoo\\Carousel\\Models\\Slide', 1, 236, '2020-06-22 01:38:05', '2020-06-22 01:38:08'),
(238, '5ef00d23a13d8488995731.png', 'Lepton switch interface (64 port).png', 80661, 'image/png', NULL, NULL, 'featured_images', '19', 'RainLab\\Blog\\Models\\Post', 1, 238, '2020-06-22 01:45:07', '2020-06-22 01:46:10'),
(244, '5f090d3a8befd800700182.png', 'ValkyrieBay photo.png', 1273249, 'image/png', NULL, NULL, 'image', '42', 'Ittoo\\Carousel\\Models\\Slide', 1, 244, '2020-07-11 00:52:10', '2020-07-11 00:55:05'),
(246, '5f090fc5840d6053831162.png', 'ValkyrieBay photo copy.png', 229315, 'image/png', NULL, NULL, 'featured_images', '21', 'RainLab\\Blog\\Models\\Post', 1, 246, '2020-07-11 01:03:01', '2020-07-11 01:03:13'),
(247, '5f0c71041680d599136298.png', 'VulcanCompact photo.PNG', 133290, 'image/png', NULL, NULL, 'featured_images', '22', 'RainLab\\Blog\\Models\\Post', 1, 247, '2020-07-13 14:34:44', '2020-07-13 14:37:30'),
(248, '5f0c740e8bbd4051133458.jpg', 'network-3524352.jpg', 358296, 'image/jpeg', NULL, NULL, 'featured_images', '20', 'RainLab\\Blog\\Models\\Post', 1, 248, '2020-07-13 14:47:42', '2020-07-13 14:47:44'),
(249, '5f0c74f1a78ac360857014.png', 'sys-diagram.png', 138203, 'image/png', NULL, NULL, 'image', '43', 'Ittoo\\Carousel\\Models\\Slide', 1, 249, '2020-07-13 14:51:29', '2020-07-13 14:54:57'),
(251, '5f43de1f26721643534098.png', 'Screen Shot 2020-08-24 at 11.31.34 AM.png', 202392, 'image/png', NULL, NULL, 'featured_images', '23', 'RainLab\\Blog\\Models\\Post', 1, 251, '2020-08-24 15:34:55', '2020-08-24 15:34:57'),
(252, '5f73a774df284953711217.jpg', 'image--002.jpg', 164157, 'image/jpeg', NULL, NULL, 'featured_images', '24', 'RainLab\\Blog\\Models\\Post', 1, 252, '2020-09-29 21:30:28', '2020-09-29 21:31:22'),
(255, '5f7b2acd97d62161123561.jpg', '2020 CTGC winner\'s social tile.jpg', 178100, 'image/jpeg', NULL, NULL, 'featured_images', '25', 'RainLab\\Blog\\Models\\Post', 1, 255, '2020-10-05 14:16:45', '2020-10-05 14:16:46'),
(256, '5f85e15a1b642104048747.jpg', '5efe15ef15771840746375.jpg', 204388, 'image/jpeg', NULL, NULL, 'image', '45', 'Ittoo\\Carousel\\Models\\Slide', 1, 256, '2020-10-13 17:18:18', '2020-10-13 17:18:20'),
(257, '5f8873b1cf64c904734467.png', 'growth list.png', 288389, 'image/png', NULL, NULL, 'featured_images', '26', 'RainLab\\Blog\\Models\\Post', 1, 257, '2020-10-15 16:07:13', '2020-10-15 16:07:18'),
(258, '5f8ed81631bf4880045368.jpg', 'maxresdefault.jpg', 97691, 'image/jpeg', NULL, NULL, 'featured_images', '27', 'RainLab\\Blog\\Models\\Post', 1, 258, '2020-10-20 12:29:10', '2020-10-20 12:58:46'),
(261, '5f997d797a790485997421.png', 'nsa vs sa.png', 43139, 'image/png', NULL, NULL, 'featured_images', '28', 'RainLab\\Blog\\Models\\Post', 1, 261, '2020-10-28 14:17:29', '2020-10-28 14:17:30'),
(262, '5fa985a9aa9d6803288760.webp', '720764_660854.webp', 32746, 'image/webp', NULL, NULL, 'featured_images', '29', 'RainLab\\Blog\\Models\\Post', 1, 262, '2020-11-09 18:08:41', '2020-11-09 18:08:56'),
(265, '5fc7f110e1898946423257.jpg', '5e909a1270243566613985.jpg', 204388, 'image/jpeg', NULL, NULL, 'image', '47', 'Ittoo\\Carousel\\Models\\Slide', 1, 265, '2020-12-02 19:54:56', '2020-12-02 19:56:13'),
(268, '5fe11ea4d08ab810614101.jpg', 'kidzme_logo_full_color.jpg', 86483, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 268, '2020-12-21 22:16:04', '2020-12-21 22:16:04'),
(271, '5fea17391e991264578421.png', 'lamta screenshot.png', 71737, 'image/png', NULL, NULL, NULL, NULL, NULL, 1, 271, '2020-12-28 17:34:49', '2020-12-28 17:34:49'),
(274, '5febcc3be1316000520460.png', 'Picture1.png', 3256, 'image/png', NULL, NULL, 'image', '49', 'Ittoo\\Carousel\\Models\\Logo', 1, 274, '2020-12-30 00:39:23', '2020-12-30 00:39:29'),
(275, '5febcc556940b725818232.png', 'Picture2.png', 1650, 'image/png', NULL, NULL, 'image', '50', 'Ittoo\\Carousel\\Models\\Logo', 1, 275, '2020-12-30 00:39:49', '2020-12-30 00:39:51'),
(276, '5febcc7c00528123603635.png', 'Picture3.png', 3878, 'image/png', NULL, NULL, 'image', '51', 'Ittoo\\Carousel\\Models\\Logo', 1, 276, '2020-12-30 00:40:28', '2020-12-30 00:40:32'),
(277, '5febcc8ba80e7580341527.png', 'Picture4.png', 3789, 'image/png', NULL, NULL, 'image', '52', 'Ittoo\\Carousel\\Models\\Logo', 1, 277, '2020-12-30 00:40:43', '2020-12-30 00:40:47'),
(289, '5ff378127b420408150652.png', 'Picture5.png', 2718, 'image/png', NULL, NULL, 'image', '53', 'Ittoo\\Carousel\\Models\\Logo', 1, 289, '2021-01-04 20:18:26', '2021-01-04 20:18:45'),
(290, '5ff3783641263497855589.png', 'Picture6.png', 3011, 'image/png', NULL, NULL, 'image', '54', 'Ittoo\\Carousel\\Models\\Logo', 1, 290, '2021-01-04 20:19:02', '2021-01-04 20:19:03'),
(291, '5ff378497ed18897261820.png', 'Picture7.png', 6560, 'image/png', NULL, NULL, 'image', '55', 'Ittoo\\Carousel\\Models\\Logo', 1, 291, '2021-01-04 20:19:21', '2021-01-04 20:19:22'),
(293, '5ff378a206d17668249208.png', 'Picture9.png', 3130, 'image/png', NULL, NULL, 'image', '57', 'Ittoo\\Carousel\\Models\\Logo', 1, 293, '2021-01-04 20:20:50', '2021-01-04 20:20:53'),
(294, '5ff378ae33191487874155.png', 'Picture10.png', 3137, 'image/png', NULL, NULL, 'image', '58', 'Ittoo\\Carousel\\Models\\Logo', 1, 294, '2021-01-04 20:21:02', '2021-01-04 20:21:18'),
(295, '5ff378d0cdbb3031955306.png', 'Picture11.png', 3124, 'image/png', NULL, NULL, 'image', '59', 'Ittoo\\Carousel\\Models\\Logo', 1, 295, '2021-01-04 20:21:36', '2021-01-04 20:21:40'),
(296, '5ff37a2234878163158752.png', 'Picture12.png', 3814, 'image/png', NULL, NULL, 'image', '60', 'Ittoo\\Carousel\\Models\\Logo', 1, 296, '2021-01-04 20:27:14', '2021-01-04 20:27:17'),
(297, '5ff37acd57552130067073.png', 'huawei.png', 8934, 'image/png', NULL, NULL, 'image', '61', 'Ittoo\\Carousel\\Models\\Logo', 1, 297, '2021-01-04 20:30:05', '2021-01-04 20:30:06'),
(298, '5ff37b00cb24a078496853.png', 'Picture13.png', 2854, 'image/png', NULL, NULL, 'image', '62', 'Ittoo\\Carousel\\Models\\Logo', 1, 298, '2021-01-04 20:30:56', '2021-01-04 20:31:01'),
(299, '5ff37b1301b59862055203.png', 'Picture14.png', 4157, 'image/png', NULL, NULL, 'image', '63', 'Ittoo\\Carousel\\Models\\Logo', 1, 299, '2021-01-04 20:31:15', '2021-01-04 20:31:18'),
(300, '5ff37b23d7f79579865899.png', 'Picture15.png', 2925, 'image/png', NULL, NULL, 'image', '64', 'Ittoo\\Carousel\\Models\\Logo', 1, 300, '2021-01-04 20:31:31', '2021-01-04 20:31:34'),
(301, '5ff37b2ebc47b489702865.png', 'Picture16.png', 1896, 'image/png', NULL, NULL, 'image', '65', 'Ittoo\\Carousel\\Models\\Logo', 1, 301, '2021-01-04 20:31:42', '2021-01-04 20:31:45'),
(302, '5ff37b3981e31734994589.png', 'Picture17.png', 8281, 'image/png', NULL, NULL, 'image', '66', 'Ittoo\\Carousel\\Models\\Logo', 1, 302, '2021-01-04 20:31:53', '2021-01-04 20:31:57'),
(304, '5ff37b5e82e31540551869.png', 'Picture20.png', 6354, 'image/png', NULL, NULL, 'image', '68', 'Ittoo\\Carousel\\Models\\Logo', 1, 304, '2021-01-04 20:32:30', '2021-01-04 20:32:34'),
(305, '5ff37b6e71117901658859.png', 'Picture21.png', 3652, 'image/png', NULL, NULL, 'image', '69', 'Ittoo\\Carousel\\Models\\Logo', 1, 305, '2021-01-04 20:32:46', '2021-01-04 20:32:50'),
(306, '5ff37b8048e1b568750004.png', 'Picture22.png', 3774, 'image/png', NULL, NULL, 'image', '70', 'Ittoo\\Carousel\\Models\\Logo', 1, 306, '2021-01-04 20:33:04', '2021-01-04 20:33:07'),
(307, '5ff37bb9a787c911167312.png', 'Picture23.png', 4294, 'image/png', NULL, NULL, 'image', '71', 'Ittoo\\Carousel\\Models\\Logo', 1, 307, '2021-01-04 20:34:01', '2021-01-04 20:34:05'),
(308, '5ff37dd8bf0b3094335565.png', 'Picture24.png', 12708, 'image/png', NULL, NULL, 'image', '72', 'Ittoo\\Carousel\\Models\\Logo', 1, 308, '2021-01-04 20:43:04', '2021-01-04 20:43:07'),
(309, '5ff37de3ebe1c285516341.png', 'Picture25.png', 2592, 'image/png', NULL, NULL, 'image', '73', 'Ittoo\\Carousel\\Models\\Logo', 1, 309, '2021-01-04 20:43:15', '2021-01-04 20:43:18'),
(310, '5ff37e0bb48cf168689569.png', 'Picture26.png', 6072, 'image/png', NULL, NULL, 'image', '74', 'Ittoo\\Carousel\\Models\\Logo', 1, 310, '2021-01-04 20:43:55', '2021-01-04 20:43:59'),
(311, '5ff37e239f11d227056991.png', 'Picture27.png', 6130, 'image/png', NULL, NULL, 'image', '75', 'Ittoo\\Carousel\\Models\\Logo', 1, 311, '2021-01-04 20:44:19', '2021-01-04 20:44:21'),
(313, '5ff37f3a24658740061480.png', 'cbc logo.png', 44974, 'image/png', NULL, NULL, 'image', '77', 'Ittoo\\Carousel\\Models\\Logo', 1, 313, '2021-01-04 20:48:58', '2021-01-04 20:48:59'),
(314, '5ff37f49b0935715659151.png', 'UL-Logo.png', 39020, 'image/png', NULL, NULL, 'image', '78', 'Ittoo\\Carousel\\Models\\Logo', 1, 314, '2021-01-04 20:49:13', '2021-01-04 20:49:16'),
(315, '5ff37f528608e824441373.png', 'humber-logo-color.png', 15414, 'image/png', NULL, NULL, 'image', '79', 'Ittoo\\Carousel\\Models\\Logo', 1, 315, '2021-01-04 20:49:22', '2021-01-04 20:49:26'),
(317, '5ff3814e09df5949839120.png', 'Radiocomm image.png', 162967, 'image/png', NULL, NULL, 'image', '2', 'Ittoo\\Carousel\\Models\\Slide', 1, 317, '2021-01-04 20:57:50', '2021-01-04 20:59:21'),
(319, '5ff386cf89407882748663.jpg', '5fbd21a9c7fb8976692303.jpg', 279346, 'image/jpeg', NULL, NULL, 'image', '46', 'Ittoo\\Carousel\\Models\\Slide', 1, 319, '2021-01-04 21:21:19', '2021-01-04 21:21:21'),
(366, '5ff3bffec3485975169260.png', 'Picture31.png', 59406, 'image/png', NULL, NULL, 'image', '56', 'Ittoo\\Carousel\\Models\\Slide', 1, 366, '2021-01-05 01:25:18', '2021-01-05 01:25:20'),
(383, '5ff4a2bdeee68479519221.png', 'Picture11.png', 3124, 'image/png', NULL, NULL, 'image', '80', 'Ittoo\\Carousel\\Models\\Logo', 1, 383, '2021-01-05 17:32:45', '2021-01-05 17:32:51'),
(384, '5ff4a2e1cb4ac594716292.png', 'Picture9.png', 3130, 'image/png', NULL, NULL, 'image', '81', 'Ittoo\\Carousel\\Models\\Logo', 1, 384, '2021-01-05 17:33:21', '2021-01-05 17:33:27'),
(389, '5ff5e05cc151a698261493.png', 'Picture2.png', 1650, 'image/png', NULL, NULL, 'image', '82', 'Ittoo\\Carousel\\Models\\Logo', 1, 389, '2021-01-06 16:07:56', '2021-01-06 16:08:00'),
(390, '5ff5e0822dca5609643455.png', 'Picture1.png', 3256, 'image/png', NULL, NULL, 'image', '83', 'Ittoo\\Carousel\\Models\\Logo', 1, 390, '2021-01-06 16:08:34', '2021-01-06 16:08:40'),
(391, '5ff5e0a5e35e6762174634.png', 'Picture4.png', 3789, 'image/png', NULL, NULL, 'image', '84', 'Ittoo\\Carousel\\Models\\Logo', 1, 391, '2021-01-06 16:09:09', '2021-01-06 16:09:13'),
(392, '5ff5e0c2d7fa8202526784.png', 'Picture3.png', 3878, 'image/png', NULL, NULL, 'image', '85', 'Ittoo\\Carousel\\Models\\Logo', 1, 392, '2021-01-06 16:09:38', '2021-01-06 16:09:40'),
(393, '5ff5e164a6419169130150.png', 'Picture14.png', 4157, 'image/png', NULL, NULL, 'image', '86', 'Ittoo\\Carousel\\Models\\Logo', 1, 393, '2021-01-06 16:12:20', '2021-01-06 16:12:22'),
(394, '5ff5e17a3997d678195368.png', 'Picture12.png', 3814, 'image/png', NULL, NULL, 'image', '87', 'Ittoo\\Carousel\\Models\\Logo', 1, 394, '2021-01-06 16:12:42', '2021-01-06 16:12:47'),
(395, '5ff5e193b2919188107533.png', 'Picture7.png', 6560, 'image/png', NULL, NULL, 'image', '88', 'Ittoo\\Carousel\\Models\\Logo', 1, 395, '2021-01-06 16:13:07', '2021-01-06 16:13:08'),
(396, '5ffdd86dac2b2471297941.png', 'LAMTA Screenshot full.png', 71631, 'image/png', NULL, NULL, 'image', '3', 'Ittoo\\Carousel\\Models\\Slide', 1, 396, '2021-01-12 17:12:13', '2021-01-12 17:12:15'),
(402, '5ffddfc2678d4130959939.png', 'signup LAMTA.png', 147302, 'image/png', NULL, NULL, 'image', '62', 'Ittoo\\Carousel\\Models\\Slide', 1, 402, '2021-01-12 17:43:30', '2021-01-12 17:43:31'),
(419, '600b6d7f8edcf981722312.png', 'lamta column.png', 67591, 'image/png', NULL, NULL, 'image', '50', 'Ittoo\\Carousel\\Models\\Slide', 1, 419, '2021-01-23 00:27:43', '2021-01-23 00:27:45'),
(420, '600b6d894c7bd348061204.png', 'wireline.png', 157465, 'image/png', NULL, NULL, 'image', '51', 'Ittoo\\Carousel\\Models\\Slide', 1, 420, '2021-01-23 00:27:53', '2021-01-23 00:27:54'),
(421, '600b6d930e196523040969.png', 'room.png', 209436, 'image/png', NULL, NULL, 'image', '52', 'Ittoo\\Carousel\\Models\\Slide', 1, 421, '2021-01-23 00:28:03', '2021-01-23 00:28:04'),
(422, '601187e640365573509541.jpg', 'sharedlabimage.jpg', 40228, 'image/jpeg', NULL, NULL, 'featured_images', '31', 'RainLab\\Blog\\Models\\Post', 1, 422, '2021-01-27 15:33:58', '2021-01-27 15:34:08'),
(426, '602bd62fa8d97436435749.jpg', 'photo-1558638815-4ffbb29169b1.jpg', 43394, 'image/jpeg', NULL, NULL, 'image', '64', 'Ittoo\\Carousel\\Models\\Slide', 1, 426, '2021-02-16 14:26:55', '2021-02-16 14:27:09'),
(428, '602bd98c5c19f305762266.jpg', 'photo-1606765962248-7ff407b51667-_1_.jpg', 251940, 'image/jpeg', NULL, NULL, 'image', '63', 'Ittoo\\Carousel\\Models\\Slide', 1, 428, '2021-02-16 14:41:16', '2021-02-16 14:41:18'),
(435, '602c004d41f75776784958.jpg', 'photo-1606765962248-7ff407b51667-_1_bw.jpg', 271171, 'image/jpeg', NULL, NULL, 'image', '66', 'Ittoo\\Carousel\\Models\\Slide', 1, 435, '2021-02-16 17:26:37', '2021-02-16 17:26:38'),
(436, '602c01398d4fd172215398.jpg', 'photo-1558638815-4ffbb29169b1.jpg', 43394, 'image/jpeg', NULL, NULL, 'image', '70', 'Ittoo\\Carousel\\Models\\Slide', 1, 436, '2021-02-16 17:30:33', '2021-02-16 17:30:51'),
(438, '605ff307e7d72583671588.jpg', '001.jpg', 244706, 'image/jpeg', NULL, NULL, 'image', '75', 'Ittoo\\Carousel\\Models\\Slide', 1, 438, '2021-03-28 03:07:51', '2021-03-28 03:07:54'),
(439, '605ff3577f9de726346059.jpg', '003.jpg', 267468, 'image/jpeg', NULL, NULL, 'image', '76', 'Ittoo\\Carousel\\Models\\Slide', 1, 439, '2021-03-28 03:09:11', '2021-03-28 03:09:32'),
(441, '605ff4d7008af826240844.jpg', '002.jpg', 267888, 'image/jpeg', NULL, NULL, 'image', '77', 'Ittoo\\Carousel\\Models\\Slide', 1, 441, '2021-03-28 03:15:35', '2021-03-28 03:15:38'),
(442, '605ff8486cf3d250854773.jpg', '029.jpg', 303668, 'image/jpeg', NULL, NULL, 'image', '78', 'Ittoo\\Carousel\\Models\\Slide', 1, 442, '2021-03-28 03:30:16', '2021-03-28 03:31:43'),
(443, '605ff9d481b03629581115.jpg', '007.jpg', 270837, 'image/jpeg', NULL, NULL, 'image', '79', 'Ittoo\\Carousel\\Models\\Slide', 1, 443, '2021-03-28 03:36:52', '2021-03-28 03:38:06'),
(444, '605ffa4d2378d748822953.jpg', '023.jpg', 381307, 'image/jpeg', NULL, NULL, 'image', '80', 'Ittoo\\Carousel\\Models\\Slide', 1, 444, '2021-03-28 03:38:53', '2021-03-28 03:40:33'),
(445, '6060c1eab1cae586422357.jpg', '006.jpg', 295420, 'image/jpeg', NULL, NULL, 'image', '5', 'Ittoo\\Carousel\\Models\\Slide', 1, 445, '2021-03-28 17:50:34', '2021-03-28 17:50:39'),
(446, '6060c259c9e71420375975.jpg', 'heptaplexer.jpg', 34511, 'image/jpeg', NULL, NULL, 'image', '4', 'Ittoo\\Carousel\\Models\\Slide', 1, 446, '2021-03-28 17:52:25', '2021-03-28 17:52:27'),
(449, '606106c706d2a364118375.jpg', 'yingchih-cJLVf49Ri7k-unsplash-b&w.jpg', 244617, 'image/jpeg', NULL, NULL, 'image', '82', 'Ittoo\\Carousel\\Models\\Slide', 1, 449, '2021-03-28 22:44:23', '2021-03-28 22:44:27'),
(451, '606139d60b487479769659.jpg', 'yingchih-cJLVf49Ri7k-unsplash-b&w.jpg', 244617, 'image/jpeg', NULL, NULL, 'image', '89', 'Ittoo\\Carousel\\Models\\Slide', 1, 451, '2021-03-29 02:22:14', '2021-03-29 02:22:17'),
(458, '6074864f07b34829844039.png', '606c861643587742602359.png', 146280, 'image/png', NULL, NULL, 'featured_images', '33', 'RainLab\\Blog\\Models\\Post', 1, 458, '2021-04-12 17:41:35', '2021-04-12 17:41:51'),
(459, '607486edcc7da121214726.png', '606cbb2167293309734087.png', 1960497, 'image/png', NULL, NULL, 'featured_images', '34', 'RainLab\\Blog\\Models\\Post', 1, 459, '2021-04-12 17:44:13', '2021-04-12 17:44:18'),
(463, '60770e7bc45e0645442792.png', 'heptaplexer.png', 60806, 'image/png', NULL, NULL, 'featured_images', '32', 'RainLab\\Blog\\Models\\Post', 1, 463, '2021-04-14 15:47:07', '2021-04-14 15:47:09'),
(467, '6081e1b91dbe4631077655.png', 'Partners Announcement IRISS.png', 142327, 'image/png', NULL, NULL, 'featured_images', '35', 'RainLab\\Blog\\Models\\Post', 1, 467, '2021-04-22 20:51:05', '2021-04-22 20:51:12'),
(468, '6089a7b6871e7544742565.png', 'Picture1.png', 989983, 'image/png', NULL, NULL, 'featured_images', '36', 'RainLab\\Blog\\Models\\Post', 1, 468, '2021-04-28 18:21:42', '2021-04-28 18:22:18'),
(469, '6089a8b62791f487862516.jpg', 'maxresdefault.jpg', 90934, 'image/jpeg', NULL, NULL, 'featured_images', '37', 'RainLab\\Blog\\Models\\Post', 1, 469, '2021-04-28 18:25:58', '2021-04-28 18:26:26'),
(470, '6089ac4238307297187314.png', 'Picture2.png', 43807, 'image/png', NULL, NULL, 'featured_images', '38', 'RainLab\\Blog\\Models\\Post', 1, 470, '2021-04-28 18:41:06', '2021-04-28 18:41:11'),
(471, '608c0fbbd7330760925897.png', 'extra low pim.png', 80917, 'image/png', NULL, NULL, 'featured_images', '39', 'RainLab\\Blog\\Models\\Post', 1, 471, '2021-04-30 14:10:03', '2021-04-30 14:10:14'),
(472, '608c11b6d9f94569739997.png', 'Alaska.png', 1901116, 'image/png', NULL, NULL, 'featured_images', '40', 'RainLab\\Blog\\Models\\Post', 1, 472, '2021-04-30 14:18:30', '2021-04-30 14:18:36'),
(473, '609bc8efb632a901549522.png', 'atxtel (002).png', 122127, 'image/png', NULL, NULL, 'featured_images', '41', 'RainLab\\Blog\\Models\\Post', 1, 473, '2021-05-12 12:24:15', '2021-05-12 12:26:10'),
(474, '60a3b575d77f3732701889.png', 'alaska thumbnail.png', 1901499, 'image/png', NULL, NULL, 'featured_images', '43', 'RainLab\\Blog\\Models\\Post', 1, 474, '2021-05-18 12:39:17', '2021-05-18 12:39:30'),
(475, '60a3e08b7958a079539881.png', 'lamta announcement.png', 87772, 'image/png', NULL, NULL, 'featured_images', '44', 'RainLab\\Blog\\Models\\Post', 1, 475, '2021-05-18 15:43:07', '2021-05-18 15:43:14'),
(476, '60b1283369906802568040.png', 'dhs elmea.png', 117741, 'image/png', NULL, NULL, 'featured_images', '45', 'RainLab\\Blog\\Models\\Post', 1, 476, '2021-05-28 17:28:19', '2021-05-28 17:28:29'),
(477, '60b93f3175b91247053679.png', 'Passive-DAS.png', 224808, 'image/png', NULL, NULL, 'content_images', '46', 'RainLab\\Blog\\Models\\Post', 1, 477, '2021-06-03 20:44:33', '2021-06-03 20:45:13'),
(478, '60b93fdc81c3f559883291.png', 'Pure-Small-Cell-Dark.png', 184191, 'image/png', NULL, NULL, 'content_images', '46', 'RainLab\\Blog\\Models\\Post', 1, 478, '2021-06-03 20:47:24', '2021-06-03 21:00:05'),
(479, '60b93ffb52044656369884.png', 'Pure-Small-Cell-System.png', 205691, 'image/png', NULL, NULL, 'content_images', '46', 'RainLab\\Blog\\Models\\Post', 1, 479, '2021-06-03 20:47:55', '2021-06-03 21:00:05'),
(480, '60b9416ecd37a435050884.png', 'Ad General Learn More.png', 100292, 'image/png', NULL, NULL, 'content_images', '46', 'RainLab\\Blog\\Models\\Post', 1, 480, '2021-06-03 20:54:06', '2021-06-03 21:00:05'),
(481, '60b941ef12afd781692272.png', 'Hybrid-Active-DAS.png', 220332, 'image/png', NULL, NULL, 'content_images', '46', 'RainLab\\Blog\\Models\\Post', 1, 481, '2021-06-03 20:56:15', '2021-06-03 21:00:05'),
(482, '60b9420265c89603640923.png', 'Hybrid-Small-Cell-DAS.png', 216854, 'image/png', NULL, NULL, 'content_images', '46', 'RainLab\\Blog\\Models\\Post', 1, 482, '2021-06-03 20:56:34', '2021-06-03 21:00:05'),
(486, '60ba95dbe8ef4202109495.png', 'Small Cells Hybrid Banner Image.png', 320067, 'image/png', NULL, NULL, 'featured_images', '46', 'RainLab\\Blog\\Models\\Post', 1, 486, '2021-06-04 21:06:35', '2021-06-04 21:06:39'),
(487, '60c0d7de9c848399680421.png', 'precision technologies.png', 126294, 'image/png', NULL, NULL, 'featured_images', '47', 'RainLab\\Blog\\Models\\Post', 1, 487, '2021-06-09 15:01:50', '2021-06-09 15:02:01'),
(489, '60c26020e7d34777270378.png', 'blog thumbnail.png', 237695, 'image/png', NULL, NULL, 'featured_images', '48', 'RainLab\\Blog\\Models\\Post', 1, 489, '2021-06-10 18:55:28', '2021-06-10 18:55:30'),
(490, '60d62a5aa2fd4863645721.png', 'es france.png', 155393, 'image/png', NULL, NULL, 'featured_images', '49', 'RainLab\\Blog\\Models\\Post', 1, 490, '2021-06-25 19:11:22', '2021-06-25 19:11:25'),
(497, '60edee4e21a7f654613897.png', 'LAMTA_RadioMgmt_dark back.png', 30081, 'image/png', NULL, NULL, 'image', '58', 'Ittoo\\Carousel\\Models\\Slide', 1, 497, '2021-07-13 19:49:34', '2021-07-13 19:49:35'),
(498, '60edee55c1082252561340.png', 'LAMTA_TestMgmt_dark back.png', 17165, 'image/png', NULL, NULL, 'image', '60', 'Ittoo\\Carousel\\Models\\Slide', 1, 498, '2021-07-13 19:49:41', '2021-07-13 19:49:43'),
(499, '60edee5eb5c37223717612.png', 'LAMTA_ResourceMgmt_dark back.png', 22815, 'image/png', NULL, NULL, 'image', '61', 'Ittoo\\Carousel\\Models\\Slide', 1, 499, '2021-07-13 19:49:50', '2021-07-13 19:49:52'),
(504, '60ef16ce49182404688756.gif', 'LAMTA GIF 1_Radio Mgmt_grey_compressed (1).gif', 1798949, 'image/gif', NULL, NULL, 'image', '53', 'Ittoo\\Carousel\\Models\\Slide', 1, 504, '2021-07-14 16:54:38', '2021-07-14 16:54:40'),
(505, '60f04d8e11511895541247.png', 'LAMTA_GIF3_LogAuto.png', 65419, 'image/png', NULL, NULL, 'image', '55', 'Ittoo\\Carousel\\Models\\Slide', 1, 505, '2021-07-15 15:00:30', '2021-07-15 15:00:32'),
(506, '60f04d9b33368055055173.png', 'LAMTA_GIF2_Test Auto.png', 55152, 'image/png', NULL, NULL, 'image', '54', 'Ittoo\\Carousel\\Models\\Slide', 1, 506, '2021-07-15 15:00:43', '2021-07-15 15:00:45'),
(507, '60f04e46b915e609384436.png', 'LAMTA_GIF3_LogAuto.png', 65419, 'image/png', NULL, NULL, NULL, NULL, NULL, 1, 507, '2021-07-15 15:03:34', '2021-07-15 15:03:34'),
(509, '60f6ef3f90ff4545790535.png', 'thumbnail for website.png', 1219361, 'image/png', NULL, NULL, 'featured_images', '50', 'RainLab\\Blog\\Models\\Post', 1, 509, '2021-07-20 15:43:59', '2021-07-20 15:44:00'),
(510, '60f72d555f100778893248.png', 'design redo.png', 88589, 'image/png', NULL, NULL, 'featured_images', '30', 'RainLab\\Blog\\Models\\Post', 1, 510, '2021-07-20 20:08:53', '2021-07-20 20:08:55'),
(511, '611e92ea6191d641018382.png', 'maser.png', 168326, 'image/png', NULL, NULL, 'featured_images', '51', 'RainLab\\Blog\\Models\\Post', 1, 511, '2021-08-19 17:20:42', '2021-08-19 17:20:48'),
(512, '613a222ea4877304843030.png', 'multiband.png', 1190661, 'image/png', NULL, NULL, 'featured_images', '52', 'RainLab\\Blog\\Models\\Post', 1, 512, '2021-09-09 15:03:10', '2021-09-09 15:03:19'),
(513, '613a22cda3193248941012.png', 'website virtual.png', 1181780, 'image/png', NULL, NULL, 'featured_images', '53', 'RainLab\\Blog\\Models\\Post', 1, 513, '2021-09-09 15:05:49', '2021-09-09 15:06:08'),
(514, '613a2fef5e4be706158906.png', 'cca newsletter.png', 224106, 'image/png', NULL, NULL, 'featured_images', '54', 'RainLab\\Blog\\Models\\Post', 1, 514, '2021-09-09 16:01:51', '2021-09-09 16:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_css` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-09-30 03:59:42', '2019-09-30 03:59:42'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-09-30 03:59:42', '2019-09-30 03:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_mail_partials`
--

INSERT INTO `system_mail_partials` (`id`, `name`, `code`, `content_html`, `content_text`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 'Header', 'header', '<tr>\n    <td class=\"header\">\n        {% if url %}\n            <a href=\"{{ url }}\">\n                {{ body }}\n            </a>\n        {% else %}\n            <span>\n                {{ body }}\n            </span>\n        {% endif %}\n    </td>\n</tr>', '*** {{ body|trim }} <{{ url }}>', 0, '2019-09-30 05:39:53', '2019-09-30 05:39:53'),
(2, 'Footer', 'footer', '<tr>\n    <td>\n        <table class=\"footer\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n            <tr>\n                <td class=\"content-cell\" align=\"center\">\n                    {{ body|md_safe }}\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>', '-------------------\n{{ body|trim }}', 0, '2019-09-30 05:39:53', '2019-09-30 05:39:53'),
(3, 'Button', 'button', '<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td align=\"center\">\n            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                <tr>\n                    <td align=\"center\">\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                            <tr>\n                                <td>\n                                    <a href=\"{{ url }}\" class=\"button button-{{ type ?: \'primary\' }}\" target=\"_blank\">\n                                        {{ body }}\n                                    </a>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>', '{{ body|trim }} <{{ url }}>', 0, '2019-09-30 05:39:53', '2019-09-30 05:39:53'),
(4, 'Panel', 'panel', '<table class=\"panel\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td class=\"panel-content\">\n            <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                <tr>\n                    <td class=\"panel-item\">\n                        {{ body|md_safe }}\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>', '{{ body|trim }}', 0, '2019-09-30 05:39:53', '2019-09-30 05:39:53'),
(5, 'Table', 'table', '<div class=\"table\">\n    {{ body|md_safe }}\n</div>', '{{ body|trim }}', 0, '2019-09-30 05:39:53', '2019-09-30 05:39:53'),
(6, 'Subcopy', 'subcopy', '<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td>\n            {{ body|md_safe }}\n        </td>\n    </tr>\n</table>', '-----\n{{ body|trim }}', 0, '2019-09-30 05:39:53', '2019-09-30 05:39:53'),
(7, 'Promotion', 'promotion', '<table class=\"promotion\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td align=\"center\">\n            {{ body|md_safe }}\n        </td>\n    </tr>\n</table>', '{{ body|trim }}', 0, '2019-09-30 05:39:53', '2019-09-30 05:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `layout_id` int DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_mail_templates`
--

INSERT INTO `system_mail_templates` (`id`, `code`, `subject`, `description`, `content_html`, `content_text`, `layout_id`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 'backend::mail.invite', NULL, 'Invite new admin to the site', NULL, NULL, 2, 0, '2019-09-30 05:39:53', '2019-09-30 05:39:53'),
(2, 'backend::mail.restore', NULL, 'Reset an admin password', NULL, NULL, 2, 0, '2019-09-30 05:39:53', '2019-09-30 05:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int UNSIGNED NOT NULL,
  `namespace` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '5'),
(2, 'system', 'update', 'retry', '1634321767'),
(3, 'system', 'core', 'build', '\"12\"'),
(4, 'system', 'core', 'modified', 'true'),
(5, 'system', 'project', 'id', '\"0ZwZ0BQtgZwH4AGZ1YGR3BTDkAQVlLGuyLmuwLmx5LGWvAGV2AwR5BQR5MTD0\"'),
(6, 'system', 'project', 'name', '\"Acentury\"'),
(7, 'system', 'project', 'owner', '\"Carmen Lee\"'),
(8, 'system', 'project', 'key', '\"0ZwZ0BQtgZwH4AGZ1YGR3BTDkAQVlLGuyLmuwLmx5LGWvAGV2AwR5BQR5MTD0\"'),
(9, 'system', 'update', 'versions', '{\"count\":5,\"core\":\"2.1.15\",\"plugins\":{\"OFFLINE.GDPR\":\"2.2.13\",\"RainLab.Blog\":\"1.5.2\",\"RainLab.Pages\":\"1.4.9\",\"Vdlp.TwoFactorAuthentication\":\"3.1.3\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(2, 'RainLab.Pages', 'comment', '1.0.1', 'Implemented the static pages management and the Static Page component.', '2019-09-30 06:35:21'),
(3, 'RainLab.Pages', 'comment', '1.0.2', 'Fixed the page preview URL.', '2019-09-30 06:35:21'),
(4, 'RainLab.Pages', 'comment', '1.0.3', 'Implemented menus.', '2019-09-30 06:35:21'),
(5, 'RainLab.Pages', 'comment', '1.0.4', 'Implemented the content block management and placeholder support.', '2019-09-30 06:35:21'),
(6, 'RainLab.Pages', 'comment', '1.0.5', 'Added support for the Sitemap plugin.', '2019-09-30 06:35:21'),
(7, 'RainLab.Pages', 'comment', '1.0.6', 'Minor updates to the internal API.', '2019-09-30 06:35:21'),
(8, 'RainLab.Pages', 'comment', '1.0.7', 'Added the Snippets feature.', '2019-09-30 06:35:21'),
(9, 'RainLab.Pages', 'comment', '1.0.8', 'Minor improvements to the code.', '2019-09-30 06:35:21'),
(10, 'RainLab.Pages', 'comment', '1.0.9', 'Fixes issue where Snippet tab is missing from the Partials form.', '2019-09-30 06:35:21'),
(11, 'RainLab.Pages', 'comment', '1.0.10', 'Add translations for various locales.', '2019-09-30 06:35:21'),
(12, 'RainLab.Pages', 'comment', '1.0.11', 'Fixes issue where placeholders tabs were missing from Page form.', '2019-09-30 06:35:21'),
(13, 'RainLab.Pages', 'comment', '1.0.12', 'Implement Media Manager support.', '2019-09-30 06:35:21'),
(14, 'RainLab.Pages', 'script', '1.1.0', 'snippets_rename_viewbag_properties.php', '2019-09-30 06:35:22'),
(15, 'RainLab.Pages', 'comment', '1.1.0', 'Adds meta title and description to pages. Adds |staticPage filter.', '2019-09-30 06:35:22'),
(16, 'RainLab.Pages', 'comment', '1.1.1', 'Add support for Syntax Fields.', '2019-09-30 06:35:22'),
(17, 'RainLab.Pages', 'comment', '1.1.2', 'Static Breadcrumbs component now respects the hide from navigation setting.', '2019-09-30 06:35:22'),
(18, 'RainLab.Pages', 'comment', '1.1.3', 'Minor back-end styling fix.', '2019-09-30 06:35:22'),
(19, 'RainLab.Pages', 'comment', '1.1.4', 'Minor fix to the StaticPage component API.', '2019-09-30 06:35:22'),
(20, 'RainLab.Pages', 'comment', '1.1.5', 'Fixes bug when using syntax fields.', '2019-09-30 06:35:22'),
(21, 'RainLab.Pages', 'comment', '1.1.6', 'Minor styling fix to the back-end UI.', '2019-09-30 06:35:22'),
(22, 'RainLab.Pages', 'comment', '1.1.7', 'Improved menu item form to include CSS class, open in a new window and hidden flag.', '2019-09-30 06:35:22'),
(23, 'RainLab.Pages', 'comment', '1.1.8', 'Improved the output of snippet partials when saved.', '2019-09-30 06:35:22'),
(24, 'RainLab.Pages', 'comment', '1.1.9', 'Minor update to snippet inspector internal API.', '2019-09-30 06:35:22'),
(25, 'RainLab.Pages', 'comment', '1.1.10', 'Fixes a bug where selecting a layout causes permanent unsaved changes.', '2019-09-30 06:35:22'),
(26, 'RainLab.Pages', 'comment', '1.1.11', 'Add support for repeater syntax field.', '2019-09-30 06:35:22'),
(27, 'RainLab.Pages', 'comment', '1.2.0', 'Added support for translations, UI updates.', '2019-09-30 06:35:22'),
(28, 'RainLab.Pages', 'comment', '1.2.1', 'Use nice titles when listing the content files.', '2019-09-30 06:35:22'),
(29, 'RainLab.Pages', 'comment', '1.2.2', 'Minor styling update.', '2019-09-30 06:35:22'),
(30, 'RainLab.Pages', 'comment', '1.2.3', 'Snippets can now be moved by dragging them.', '2019-09-30 06:35:22'),
(31, 'RainLab.Pages', 'comment', '1.2.4', 'Fixes a bug where the cursor is misplaced when editing text files.', '2019-09-30 06:35:22'),
(32, 'RainLab.Pages', 'comment', '1.2.5', 'Fixes a bug where the parent page is lost upon changing a page layout.', '2019-09-30 06:35:22'),
(33, 'RainLab.Pages', 'comment', '1.2.6', 'Shared view variables are now passed to static pages.', '2019-09-30 06:35:22'),
(34, 'RainLab.Pages', 'comment', '1.2.7', 'Fixes issue with duplicating properties when adding multiple snippets on the same page.', '2019-09-30 06:35:22'),
(35, 'RainLab.Pages', 'comment', '1.2.8', 'Fixes a bug where creating a content block without extension doesn\'t save the contents to file.', '2019-09-30 06:35:22'),
(36, 'RainLab.Pages', 'comment', '1.2.9', 'Add conditional support for translating page URLs.', '2019-09-30 06:35:22'),
(37, 'RainLab.Pages', 'comment', '1.2.10', 'Streamline generation of URLs to use the new Cms::url helper.', '2019-09-30 06:35:22'),
(38, 'RainLab.Pages', 'comment', '1.2.11', 'Implements repeater usage with translate plugin.', '2019-09-30 06:35:22'),
(39, 'RainLab.Pages', 'comment', '1.2.12', 'Fixes minor issue when using snippets and switching the application locale.', '2019-09-30 06:35:22'),
(40, 'RainLab.Pages', 'comment', '1.2.13', 'Fixes bug when AJAX is used on a page that does not yet exist.', '2019-09-30 06:35:22'),
(41, 'RainLab.Pages', 'comment', '1.2.14', 'Add theme logging support for changes made to menus.', '2019-09-30 06:35:22'),
(42, 'RainLab.Pages', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2019-09-30 06:35:22'),
(43, 'RainLab.Pages', 'comment', '1.2.16', 'Fixes a bug when saving a template that has been modified outside of the CMS (mtime mismatch).', '2019-09-30 06:35:22'),
(44, 'RainLab.Pages', 'comment', '1.2.17', 'Changes locations of custom fields to secondary tabs instead of the primary Settings area. New menu search ability on adding menu items', '2019-09-30 06:35:22'),
(45, 'RainLab.Pages', 'comment', '1.2.18', 'Fixes cache-invalidation issues when RainLab.Translate is not installed. Added Greek & Simplified Chinese translations. Removed deprecated calls. Allowed saving HTML in snippet properties. Added support for the MediaFinder in menu items.', '2019-09-30 06:35:22'),
(46, 'RainLab.Pages', 'comment', '1.2.19', 'Catch exception with corrupted menu file.', '2019-09-30 06:35:22'),
(47, 'RainLab.Pages', 'comment', '1.2.20', 'StaticMenu component now exposes menuName property; added pages.menu.referencesGenerated event.', '2019-09-30 06:35:22'),
(48, 'RainLab.Pages', 'comment', '1.2.21', 'Fixes a bug where last Static Menu item cannot be deleted. Improved Persian, Slovak and Turkish translations.', '2019-09-30 06:35:22'),
(49, 'RainLab.Pages', 'comment', '1.3.0', 'Added support for using Database-driven Themes when enabled in the CMS configuration.', '2019-09-30 06:35:22'),
(50, 'RainLab.Pages', 'comment', '1.3.1', 'Added ChildPages Component, prevent hidden pages from being returned via menu item resolver.', '2019-09-30 06:35:22'),
(51, 'Ittoo.Carousel', 'script', '1.0.1', 'create_carousel_carousels.php', '2019-09-30 13:52:24'),
(52, 'Ittoo.Carousel', 'script', '1.0.1', 'create_carousel_slides.php', '2019-09-30 13:52:24'),
(53, 'Ittoo.Carousel', 'comment', '1.0.1', 'Initialize plugin.', '2019-09-30 13:52:24'),
(54, 'Ittoo.Carousel', 'script', '1.0.2', 'create_carousel_logos.php', '2019-10-01 14:56:20'),
(55, 'Martin.Forms', 'script', '1.0.0', 'create_records_table.php', '2019-10-03 13:05:11'),
(56, 'Martin.Forms', 'comment', '1.0.0', 'First version of Magic Forms', '2019-10-03 13:05:11'),
(57, 'Martin.Forms', 'comment', '1.0.1', 'Added CSRF protection', '2019-10-03 13:05:11'),
(58, 'Martin.Forms', 'comment', '1.1.0', 'Added reCAPTCHA', '2019-10-03 13:05:11'),
(59, 'Martin.Forms', 'comment', '1.1.1', 'Fix when using reCAPTCHA + allowed fields', '2019-10-03 13:05:11'),
(60, 'Martin.Forms', 'script', '1.1.2', 'add_group_field.php', '2019-10-03 13:05:11'),
(61, 'Martin.Forms', 'comment', '1.1.2', 'Filter forms records', '2019-10-03 13:05:11'),
(62, 'Martin.Forms', 'comment', '1.1.2', 'Search inside stored data', '2019-10-03 13:05:11'),
(63, 'Martin.Forms', 'comment', '1.1.2', 'Organize your forms on custom groups', '2019-10-03 13:05:11'),
(64, 'Martin.Forms', 'comment', '1.2.0', 'Export stored data in CSV format', '2019-10-03 13:05:11'),
(65, 'Martin.Forms', 'comment', '1.2.1', 'Auto-response email on form submit', '2019-10-03 13:05:11'),
(66, 'Martin.Forms', 'comment', '1.2.1', 'Added Turkish language', '2019-10-03 13:05:11'),
(67, 'Martin.Forms', 'comment', '1.2.2', 'Override notifications and auto-response email subjects', '2019-10-03 13:05:11'),
(68, 'Martin.Forms', 'comment', '1.2.3', 'New option to reset form after successfully submit', '2019-10-03 13:05:11'),
(69, 'Martin.Forms', 'comment', '1.2.3', 'Fixed Empty AJAX Form template', '2019-10-03 13:05:11'),
(70, 'Martin.Forms', 'comment', '1.2.3', 'Support for Translate plugin', '2019-10-03 13:05:11'),
(71, 'Martin.Forms', 'comment', '1.2.3', 'Added plugin documentation', '2019-10-03 13:05:11'),
(72, 'Martin.Forms', 'comment', '1.2.4', 'Added detailed reCAPTCHA help', '2019-10-03 13:05:11'),
(73, 'Martin.Forms', 'comment', '1.3.0', 'AJAX file uploads', '2019-10-03 13:05:11'),
(74, 'Martin.Forms', 'comment', '1.3.1', 'Added lang pt-br', '2019-10-03 13:05:11'),
(75, 'Martin.Forms', 'comment', '1.3.2', 'Fixed multiples reCAPTCHAs on same page', '2019-10-03 13:05:11'),
(76, 'Martin.Forms', 'comment', '1.3.3', 'Fixed record detail page when form data contains an array', '2019-10-03 13:05:11'),
(77, 'Martin.Forms', 'comment', '1.3.3', 'Updated documentations', '2019-10-03 13:05:11'),
(78, 'Martin.Forms', 'comment', '1.3.4', 'New \"Anonymize IP\" option', '2019-10-03 13:05:11'),
(79, 'Martin.Forms', 'comment', '1.3.5', 'New option \"Redirect on successful submit\"', '2019-10-03 13:05:11'),
(80, 'Martin.Forms', 'comment', '1.3.6', 'French translation', '2019-10-03 13:05:11'),
(81, 'Martin.Forms', 'comment', '1.3.6', 'Support Translate plugin on reCAPTCHA', '2019-10-03 13:05:11'),
(82, 'Martin.Forms', 'comment', '1.3.6', 'reCAPTCHA validation enhancements', '2019-10-03 13:05:11'),
(83, 'Martin.Forms', 'comment', '1.3.7', 'Displaying errors with fields (inline errors)', '2019-10-03 13:05:11'),
(84, 'Martin.Forms', 'comment', '1.3.7', 'Show uploads as list', '2019-10-03 13:05:11'),
(85, 'Martin.Forms', 'comment', '1.3.8', 'Fixed handling arrays (radio inputs) in notification email', '2019-10-03 13:05:11'),
(86, 'Martin.Forms', 'comment', '1.3.9', 'Use custom mail templates', '2019-10-03 13:05:11'),
(87, 'Martin.Forms', 'comment', '1.3.9', 'Execute custom JavaScript on form success or error', '2019-10-03 13:05:11'),
(88, 'Martin.Forms', 'comment', '1.4.0', 'Added Events (please, refer to docs) [thanks to therealkevinard]', '2019-10-03 13:05:11'),
(89, 'Martin.Forms', 'comment', '1.4.1', 'New option \"Reply To\"', '2019-10-03 13:05:11'),
(90, 'Martin.Forms', 'comment', '1.4.2', 'Escape HTML characters on the view records page [thanks to Andre]', '2019-10-03 13:05:11'),
(91, 'Martin.Forms', 'comment', '1.4.2', 'New option to sanitize form data (check security docs for more info)', '2019-10-03 13:05:11'),
(92, 'Martin.Forms', 'comment', '1.4.2', 'Added option to send blind carbon copy in notifications email', '2019-10-03 13:05:11'),
(93, 'Martin.Forms', 'script', '1.4.3', 'add_unread_field.php', '2019-10-03 13:05:11'),
(94, 'Martin.Forms', 'comment', '1.4.3', 'Fixes related to October Build 420', '2019-10-03 13:05:11'),
(95, 'Martin.Forms', 'comment', '1.4.3', 'Added \"Unread Records\" counter', '2019-10-03 13:05:11'),
(96, 'Martin.Forms', 'comment', '1.4.3', 'Fixed errors when only BCC addresses are supplied', '2019-10-03 13:05:11'),
(97, 'Martin.Forms', 'comment', '1.4.3', 'New setting \"hide navigation item\"', '2019-10-03 13:05:11'),
(98, 'Martin.Forms', 'comment', '1.4.4', 'Use custom partials for Success and Error messages', '2019-10-03 13:05:11'),
(99, 'Martin.Forms', 'comment', '1.4.4.1', 'Fix with notifications emails', '2019-10-03 13:05:11'),
(100, 'Martin.Forms', 'comment', '1.4.5', 'Mail class code refactoring', '2019-10-03 13:05:11'),
(101, 'Martin.Forms', 'comment', '1.4.5', 'Access submited data on auto-response email template', '2019-10-03 13:05:11'),
(102, 'Martin.Forms', 'comment', '1.4.5.1', 'Store form data without escaping unicode [thanks to panakour]', '2019-10-03 13:05:11'),
(103, 'Martin.Forms', 'comment', '1.4.6', 'New option to skip saving forms data on database.', '2019-10-03 13:05:11'),
(104, 'Martin.Forms', 'comment', '1.4.6', 'Possibility to change the text on the remove file popup [thanks to ShiroeSama]', '2019-10-03 13:05:11'),
(105, 'Martin.Forms', 'comment', '1.4.6.1', 'Changed database field from json to text to support MySQL 5.5', '2019-10-03 13:05:11'),
(106, 'Martin.Forms', 'comment', '1.4.7', 'you can use your form variables on notification mail subject [thanks to Alex360hd]', '2019-10-03 13:05:11'),
(107, 'Martin.Forms', 'comment', '1.4.7', 'fix custom subject on email template [Thanks to matteotrubini]', '2019-10-03 13:05:11'),
(108, 'Martin.Forms', 'comment', '1.4.7', 'fix email bug when not storing on db [Thanks JurekRaben]', '2019-10-03 13:05:11'),
(109, 'Martin.Forms', 'comment', '1.4.7', 'skip url redirect validation [Thanks to EleRam]', '2019-10-03 13:05:11'),
(110, 'Martin.Forms', 'comment', '1.4.8', 'added GDPR cleanup feature [thanks to Alex360hd]', '2019-10-03 13:05:11'),
(111, 'Martin.Forms', 'comment', '1.4.9', 'fix on replaceToken function when replacement is null [thanks to leonaze]', '2019-10-03 13:05:11'),
(112, 'Martin.Forms', 'comment', '1.4.9.1', 'fix a nullable type error on PHP 7.0', '2019-10-03 13:05:11'),
(113, 'Martin.Forms', 'comment', '1.4.9.2', 'bugfix when a form field array has more than 2 levels of depth', '2019-10-03 13:05:11'),
(114, 'Martin.Forms', 'comment', '1.4.10', 'improvements related to event functionality', '2019-10-03 13:05:11'),
(115, 'Martin.Forms', 'comment', '1.4.11', 'added Laravel custom attributes to form validation [thanks to geekfil]', '2019-10-03 13:05:11'),
(116, 'Martin.Forms', 'comment', '1.4.11', 'updated french translation [thanks to FelixINX]', '2019-10-03 13:05:11'),
(117, 'Martin.Forms', 'comment', '1.4.12', 'use form variables on auto-response mail subject [thanks to jiargei]', '2019-10-03 13:05:11'),
(118, 'Martin.Forms', 'comment', '1.4.13', 'pass an array with form errors to JavaScript [thanks to multiwebinc]', '2019-10-03 13:05:11'),
(119, 'Martin.Forms', 'comment', '1.4.14', 'fixed error with empty auto-response subject', '2019-10-03 13:05:11'),
(120, 'Martin.Forms', 'comment', '1.4.15', 'enhancements related to saving record and events [thanks to boxxroom]', '2019-10-03 13:05:11'),
(121, 'Martin.Forms', 'comment', '1.4.16', 'added chinese translation [thanks to everyx]', '2019-10-03 13:05:11'),
(122, 'RainLab.Blog', 'script', '1.0.1', 'create_posts_table.php', '2019-10-03 13:05:43'),
(123, 'RainLab.Blog', 'script', '1.0.1', 'create_categories_table.php', '2019-10-03 13:05:43'),
(124, 'RainLab.Blog', 'script', '1.0.1', 'seed_all_tables.php', '2019-10-03 13:05:44'),
(125, 'RainLab.Blog', 'comment', '1.0.1', 'Initialize plugin.', '2019-10-03 13:05:44'),
(126, 'RainLab.Blog', 'comment', '1.0.2', 'Added the processed HTML content column to the posts table.', '2019-10-03 13:05:44'),
(127, 'RainLab.Blog', 'comment', '1.0.3', 'Category component has been merged with Posts component.', '2019-10-03 13:05:44'),
(128, 'RainLab.Blog', 'comment', '1.0.4', 'Improvements to the Posts list management UI.', '2019-10-03 13:05:44'),
(129, 'RainLab.Blog', 'comment', '1.0.5', 'Removes the Author column from blog post list.', '2019-10-03 13:05:44'),
(130, 'RainLab.Blog', 'comment', '1.0.6', 'Featured images now appear in the Post component.', '2019-10-03 13:05:44'),
(131, 'RainLab.Blog', 'comment', '1.0.7', 'Added support for the Static Pages menus.', '2019-10-03 13:05:44'),
(132, 'RainLab.Blog', 'comment', '1.0.8', 'Added total posts to category list.', '2019-10-03 13:05:44'),
(133, 'RainLab.Blog', 'comment', '1.0.9', 'Added support for the Sitemap plugin.', '2019-10-03 13:05:44'),
(134, 'RainLab.Blog', 'comment', '1.0.10', 'Added permission to prevent users from seeing posts they did not create.', '2019-10-03 13:05:44'),
(135, 'RainLab.Blog', 'comment', '1.0.11', 'Deprecate \"idParam\" component property in favour of \"slug\" property.', '2019-10-03 13:05:44'),
(136, 'RainLab.Blog', 'comment', '1.0.12', 'Fixes issue where images cannot be uploaded caused by latest Markdown library.', '2019-10-03 13:05:44'),
(137, 'RainLab.Blog', 'comment', '1.0.13', 'Fixes problem with providing pages to Sitemap and Pages plugins.', '2019-10-03 13:05:44'),
(138, 'RainLab.Blog', 'comment', '1.0.14', 'Add support for CSRF protection feature added to core.', '2019-10-03 13:05:44'),
(139, 'RainLab.Blog', 'comment', '1.1.0', 'Replaced the Post editor with the new core Markdown editor.', '2019-10-03 13:05:44'),
(140, 'RainLab.Blog', 'comment', '1.1.1', 'Posts can now be imported and exported.', '2019-10-03 13:05:44'),
(141, 'RainLab.Blog', 'comment', '1.1.2', 'Posts are no longer visible if the published date has not passed.', '2019-10-03 13:05:44'),
(142, 'RainLab.Blog', 'comment', '1.1.3', 'Added a New Post shortcut button to the blog menu.', '2019-10-03 13:05:44'),
(143, 'RainLab.Blog', 'script', '1.2.0', 'categories_add_nested_fields.php', '2019-10-03 13:05:44'),
(144, 'RainLab.Blog', 'comment', '1.2.0', 'Categories now support nesting.', '2019-10-03 13:05:44'),
(145, 'RainLab.Blog', 'comment', '1.2.1', 'Post slugs now must be unique.', '2019-10-03 13:05:44'),
(146, 'RainLab.Blog', 'comment', '1.2.2', 'Fixes issue on new installs.', '2019-10-03 13:05:44'),
(147, 'RainLab.Blog', 'comment', '1.2.3', 'Minor user interface update.', '2019-10-03 13:05:44'),
(148, 'RainLab.Blog', 'script', '1.2.4', 'update_timestamp_nullable.php', '2019-10-03 13:05:44'),
(149, 'RainLab.Blog', 'comment', '1.2.4', 'Database maintenance. Updated all timestamp columns to be nullable.', '2019-10-03 13:05:44'),
(150, 'RainLab.Blog', 'comment', '1.2.5', 'Added translation support for blog posts.', '2019-10-03 13:05:44'),
(151, 'RainLab.Blog', 'comment', '1.2.6', 'The published field can now supply a time with the date.', '2019-10-03 13:05:44'),
(152, 'RainLab.Blog', 'comment', '1.2.7', 'Introduced a new RSS feed component.', '2019-10-03 13:05:44'),
(153, 'RainLab.Blog', 'comment', '1.2.8', 'Fixes issue with translated `content_html` attribute on blog posts.', '2019-10-03 13:05:44'),
(154, 'RainLab.Blog', 'comment', '1.2.9', 'Added translation support for blog categories.', '2019-10-03 13:05:44'),
(155, 'RainLab.Blog', 'comment', '1.2.10', 'Added translation support for post slugs.', '2019-10-03 13:05:44'),
(156, 'RainLab.Blog', 'comment', '1.2.11', 'Fixes bug where excerpt is not translated.', '2019-10-03 13:05:44'),
(157, 'RainLab.Blog', 'comment', '1.2.12', 'Description field added to category form.', '2019-10-03 13:05:44'),
(158, 'RainLab.Blog', 'comment', '1.2.13', 'Improved support for Static Pages menus, added a blog post and all blog posts.', '2019-10-03 13:05:44'),
(159, 'RainLab.Blog', 'comment', '1.2.14', 'Added post exception property to the post list component, useful for showing related posts.', '2019-10-03 13:05:44'),
(160, 'RainLab.Blog', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2019-10-03 13:05:44'),
(161, 'RainLab.Blog', 'comment', '1.2.16', 'Added `nextPost` and `previousPost` to the blog post component.', '2019-10-03 13:05:44'),
(162, 'RainLab.Blog', 'comment', '1.2.17', 'Improved the next and previous logic to sort by the published date.', '2019-10-03 13:05:44'),
(163, 'RainLab.Blog', 'comment', '1.2.18', 'Minor change to internals.', '2019-10-03 13:05:44'),
(164, 'RainLab.Blog', 'comment', '1.2.19', 'Improved support for Build 420+', '2019-10-03 13:05:44'),
(165, 'RainLab.Blog', 'script', '1.3.0', 'posts_add_metadata.php', '2019-10-03 13:05:44'),
(166, 'RainLab.Blog', 'comment', '1.3.0', 'Added metadata column for plugins to store data in', '2019-10-03 13:05:44'),
(167, 'RainLab.Blog', 'comment', '1.3.1', 'Fixed metadata column not being jsonable', '2019-10-03 13:05:45'),
(168, 'RainLab.Blog', 'comment', '1.3.2', 'Allow custom slug name for components, add 404 handling for missing blog posts, allow exporting of blog images.', '2019-10-03 13:05:45'),
(169, 'RainLab.Blog', 'comment', '1.3.3', 'Fixed \'excluded categories\' filter from being run when value is empty.', '2019-10-03 13:05:45'),
(176, 'OFFLINE.GDPR', 'comment', '1.0.1', 'Initialize plugin.', '2019-10-06 03:16:25'),
(177, 'OFFLINE.GDPR', 'comment', '1.0.2', 'Fixed translation string.', '2019-10-06 03:16:25'),
(178, 'OFFLINE.GDPR', 'comment', '1.0.3', 'Fixed loading of ConsentManager component if no settings have been defined yet', '2019-10-06 03:16:25'),
(179, 'OFFLINE.GDPR', 'comment', '1.0.4', 'Added french translations (thanks to damsfx)', '2019-10-06 03:16:25'),
(180, 'OFFLINE.GDPR', 'comment', '1.0.5', 'Fixed bug in consent manager configuration', '2019-10-06 03:16:25'),
(181, 'OFFLINE.GDPR', 'script', '1.0.6', 'create_offline_gdpr_cookie_groups.php', '2019-10-06 03:16:26'),
(182, 'OFFLINE.GDPR', 'script', '1.0.6', 'create_offline_gdpr_cookies.php', '2019-10-06 03:16:26'),
(183, 'OFFLINE.GDPR', 'comment', '1.0.6', 'Added new cookie manager component', '2019-10-06 03:16:26'),
(184, 'OFFLINE.GDPR', 'comment', '1.0.7', 'Optimized default CSS of the new cookieManager component', '2019-10-06 03:16:26'),
(185, 'OFFLINE.GDPR', 'comment', '1.0.8', 'Fixed cookie group management permission name', '2019-10-06 03:16:26'),
(186, 'OFFLINE.GDPR', 'comment', '1.0.9', 'Changed default cookie banner wording', '2019-10-06 03:16:26'),
(187, 'OFFLINE.GDPR', 'comment', '1.0.10', 'Added `ignore_behaviour` property to `cookieBanner`. You can now decide what happens if the user ignores the banner (show banner again, opt-in, opt-out).', '2019-10-06 03:16:26'),
(188, 'OFFLINE.GDPR', 'comment', '1.0.11', 'Updated french translations (thanks to damsfx)', '2019-10-06 03:16:26'),
(189, 'OFFLINE.GDPR', 'comment', '1.0.12', 'Optimized default cookieBanner styles', '2019-10-06 03:16:26'),
(190, 'OFFLINE.GDPR', 'comment', '1.0.13', 'Optimized PHP 7.2 compatibility', '2019-10-06 03:16:26'),
(191, 'OFFLINE.GDPR', 'comment', '1.0.14', 'Various bug fixes and extended support for old Laravel 5.1 installations', '2019-10-06 03:16:26'),
(192, 'OFFLINE.GDPR', 'comment', '1.0.15', 'Optimized responsive display of cookie banner on mobile devices', '2019-10-06 03:16:26'),
(193, 'OFFLINE.GDPR', 'comment', '1.0.16', 'Updated french translations (thanks to damsfx)', '2019-10-06 03:16:26'),
(194, 'OFFLINE.GDPR', 'comment', '1.0.17', 'Load the correct cookie state when visiting the cookieManager after a user has declined', '2019-10-06 03:16:26'),
(195, 'OFFLINE.GDPR', 'comment', '1.0.18', 'Fixed bug with data retention closures (thanks to Alex360hd)', '2019-10-06 03:16:26'),
(196, 'OFFLINE.GDPR', 'script', '1.1.1', 'remove_group_initial_status.php', '2019-10-06 03:16:26'),
(197, 'OFFLINE.GDPR', 'script', '1.1.1', 'add_new_cookie_fields.php', '2019-10-06 03:16:26'),
(198, 'OFFLINE.GDPR', 'comment', '1.1.1', '!!! Removed cookie groups from banner component since they arent in line with GDPR regulations. Also added new fields to optimize ePrivacy conformity. (*Very big thank you* to ayumihamsaki for giving a lot of feedback via our GitHub page!)', '2019-10-06 03:16:26'),
(199, 'OFFLINE.GDPR', 'comment', '1.2.1', 'Finished off the Cookie Backend and did a general tidy up', '2019-10-06 03:16:26'),
(200, 'OFFLINE.GDPR', 'comment', '1.3.1', 'Added the Info and Help Section', '2019-10-06 03:16:26'),
(201, 'OFFLINE.GDPR', 'script', '1.3.2', 'add_further_new_cookie_fields.php', '2019-10-06 03:16:26'),
(202, 'OFFLINE.GDPR', 'comment', '1.3.2', 'General cleanup and extension of plugin', '2019-10-06 03:16:26'),
(203, 'OFFLINE.GDPR', 'comment', '2.0.0', '!!! Big update to make this plugin more GDPR and ePrivacy compliant. Users of the 1.x version will have to manually update their Cookie Levels after the update. All your other settings remain compatible. Check out the new Help and Info section to find out more on how to make your Website GDPR and ePrivacy compliant.', '2019-10-06 03:16:26'),
(204, 'OFFLINE.GDPR', 'comment', '2.0.1', 'Minor cleanup and bugfixes', '2019-10-06 03:16:26'),
(205, 'OFFLINE.GDPR', 'comment', '2.0.2', 'Hide Levels selector if a cookie is disabled', '2019-10-06 03:16:26'),
(206, 'OFFLINE.GDPR', 'comment', '2.0.3', 'Minor wording changes in the cookieManager component', '2019-10-06 03:16:26'),
(207, 'OFFLINE.GDPR', 'comment', '2.0.4', 'Updated french translation (thanks to damsfx)', '2019-10-06 03:16:26'),
(208, 'OFFLINE.GDPR', 'comment', '2.0.5', 'Added Slovak translation (thanks to vosco88)', '2019-10-06 03:16:26'),
(209, 'OFFLINE.GDPR', 'comment', '2.0.6', 'Fixed installation via composer (thanks to angelcoding)', '2019-10-06 03:16:26'),
(210, 'OFFLINE.GDPR', 'comment', '2.0.7', 'Marked Cookie and CookieGroup fields as fillable', '2019-10-06 03:16:26'),
(211, 'OFFLINE.GDPR', 'comment', '2.0.8', 'Fixed saving of translated cookie data', '2019-10-06 03:16:26'),
(212, 'OFFLINE.GDPR', 'comment', '2.0.9', '!!! Implemented responsive design for cookieManager component. The markup of the cookieManager component changed slightly. Make sure to check for display errors if you\'ve made manual changes to this component\'s markup after this update.', '2019-10-06 03:16:26'),
(213, 'OFFLINE.GDPR', 'comment', '2.0.10', 'Fixed style bug for cookieManager component.', '2019-10-06 03:16:26'),
(214, 'OFFLINE.GDPR', 'comment', '2.0.11', 'Fixed default cookie manager markup bug', '2019-10-06 03:16:26'),
(215, 'OFFLINE.GDPR', 'comment', '2.0.12', 'Fixed minor bug in cookie manager JS', '2019-10-06 03:16:26'),
(216, 'OFFLINE.GDPR', 'comment', '2.0.13', 'Added polish translations (thanks to @Magiczne)', '2019-10-06 03:16:26'),
(217, 'Ittoo.Carousel', 'script', '1.0.3', 'add_field_to_blog_post.php', '2019-10-09 08:32:13'),
(218, 'Ittoo.Carousel', 'script', '1.0.5', 'create_blog_tags.php', '2019-10-09 12:36:16'),
(219, 'Ittoo.Carousel', 'script', '1.0.6', 'add_category_to_logos.php', '2019-10-11 01:22:07'),
(220, 'Ittoo.Carousel', 'script', '1.0.8', 'add_region_to_slide.php', '2019-10-11 07:16:33'),
(221, 'OFFLINE.GDPR', 'comment', '2.0.14', 'Added workaround to a October schedule bug for cleanup command (https://github.com/octobercms/october/issues/4771)', '2020-12-11 22:35:53'),
(222, 'OFFLINE.GDPR', 'comment', '2.0.15', 'Bugfix release', '2020-12-11 22:35:53'),
(223, 'OFFLINE.GDPR', 'comment', '2.0.16', 'Another Bugfix release', '2020-12-11 22:35:53'),
(224, 'OFFLINE.GDPR', 'comment', '2.0.17', 'Fixed compatibilty problems with October Build 460', '2020-12-11 22:35:53'),
(225, 'OFFLINE.GDPR', 'comment', '2.0.18', 'Added italian translations (thanks to @inalto)', '2020-12-11 22:35:53'),
(226, 'OFFLINE.GDPR', 'comment', '2.1.0', 'Removed support for Klaro! consent manager. Added ability to import cookies from yaml presets. Check the README for instructions on how to use this feature.', '2020-12-11 22:35:53'),
(227, 'OFFLINE.GDPR', 'comment', '2.1.1', 'Added `--path` option to new `gdpr:import` command', '2020-12-11 22:35:53'),
(228, 'OFFLINE.GDPR', 'comment', '2.2.0', 'Added cookie banner log: You can now opt-in via the backend settings to keep a log of all cookie requests and the decision the user made', '2020-12-11 22:35:53'),
(229, 'OFFLINE.GDPR', 'script', '2.2.1', 'create_offline_gdpr_logs.php', '2020-12-11 22:35:53'),
(230, 'OFFLINE.GDPR', 'comment', '2.2.1', 'Fixed cookie log migration', '2020-12-11 22:35:53'),
(231, 'OFFLINE.GDPR', 'script', '2.2.2', 'add_useragent_to_logs_table.php', '2020-12-11 22:35:53'),
(232, 'OFFLINE.GDPR', 'comment', '2.2.2', 'Added option to ignore specific user agents from cookie request log', '2020-12-11 22:35:53'),
(233, 'OFFLINE.GDPR', 'comment', '2.2.3', 'Optimized PHP 7.2 support', '2020-12-11 22:35:53'),
(234, 'OFFLINE.GDPR', 'comment', '2.2.4', 'Run cookiemanager/script.js in DOMContentLoaded event.', '2020-12-11 22:35:53'),
(235, 'OFFLINE.GDPR', 'comment', '2.2.5', 'Fixed bug in update message', '2020-12-11 22:35:53'),
(236, 'OFFLINE.GDPR', 'comment', '2.2.6', 'Fixed October 469 compatibility issue (The scripts.js partial was renamed to scripts.htm, make sure to update your code if you did override this partial)', '2020-12-11 22:35:53'),
(237, 'Martin.Forms', 'comment', '1.4.17', 'allowing sanitize to work recursively [thanks to multiwebinc]', '2020-12-11 22:35:53'),
(238, 'Martin.Forms', 'comment', '1.4.18', 'export records enhancements [thanks to Fosphatic]', '2020-12-11 22:35:53'),
(239, 'Martin.Forms', 'comment', '1.4.18', 'recaptcha locale fix [thanks to MaTToX3]', '2020-12-11 22:35:53'),
(240, 'Martin.Forms', 'comment', '1.4.19', 'added russian translation [thanks to FlusherDock1]', '2020-12-11 22:35:53'),
(241, 'Martin.Forms', 'comment', '1.4.19', 'sort records by date fix [thanks to mjauvin]', '2020-12-11 22:35:53'),
(242, 'Martin.Forms', 'comment', '1.4.20', 'added invisible reCAPTCHA [thanks to mjauvin]', '2020-12-11 22:35:53'),
(243, 'Martin.Forms', 'comment', '1.4.20', 'new option to set custom date format on emails subject', '2020-12-11 22:35:53'),
(244, 'Martin.Forms', 'comment', '1.5.0', 'fixes related to October Build 469 [thanks to mjauvin]', '2020-12-11 22:35:53'),
(245, 'Martin.Forms', 'comment', '1.5.0', 'fix when CSRF check is disabled [thanks to rechik]', '2020-12-11 22:35:53'),
(246, 'Martin.Forms', 'comment', '1.5.0', 'php linting and cleanup', '2020-12-11 22:35:53'),
(247, 'Martin.Forms', 'comment', '1.5.1', 'email templates improvemenrs [thanks to mjauvin]', '2020-12-11 22:35:53'),
(248, 'Martin.Forms', 'comment', '1.5.1', 'added german translation [thanks to Fosphatic]', '2020-12-11 22:35:53'),
(249, 'RainLab.Blog', 'comment', '1.3.4', 'Allow post author to be specified. Improved translations.', '2020-12-11 22:35:53'),
(250, 'RainLab.Blog', 'comment', '1.3.5', 'Fixed missing user info from breaking initial seeder in migrations. Fixed a PostgreSQL issue with blog exports.', '2020-12-11 22:35:53'),
(251, 'RainLab.Blog', 'comment', '1.3.6', 'Improved French translations.', '2020-12-11 22:35:53'),
(252, 'RainLab.Blog', 'comment', '1.4.0', 'Stability improvements. Rollback custom slug names for components', '2020-12-11 22:35:53'),
(253, 'RainLab.Blog', 'comment', '1.4.1', 'Fixes potential security issue with unsafe Markdown. Allow blog bylines to be translated.', '2020-12-11 22:35:53'),
(254, 'RainLab.Blog', 'comment', '1.4.2', 'Fix 404 redirects for missing blog posts. Assign current category to the listed posts when using the Posts component on a page with the category parameter available.', '2020-12-11 22:35:53'),
(255, 'RainLab.Blog', 'comment', '1.4.3', 'Fixes incompatibility with locale switching when plugin is used in conjunction with the Translate plugin. Fixes undefined category error.', '2020-12-11 22:35:53'),
(256, 'RainLab.Pages', 'comment', '1.3.2', 'Fixes error when creating a subpage whose parent has no layout set.', '2020-12-11 22:35:53'),
(257, 'RainLab.Pages', 'comment', '1.3.3', 'Improves user experience for users with only partial access through permissions', '2020-12-11 22:35:53'),
(258, 'RainLab.Pages', 'comment', '1.3.4', 'Fix error where large menus were being truncated due to the PHP \"max_input_vars\" configuration value. Improved Slovenian translation.', '2020-12-11 22:35:53'),
(259, 'RainLab.Pages', 'comment', '1.3.5', 'Minor fix to bust the browser cache for JS assets. Prevent duplicate property fields in snippet inspector.', '2020-12-11 22:35:53'),
(260, 'RainLab.Pages', 'comment', '1.3.6', 'ChildPages component now displays localized page titles from Translate plugin.', '2020-12-11 22:35:53'),
(261, 'Ittoo.Carousel', 'script', '1.0.9', 'add_tagline_to_slide.php', '2020-12-14 19:08:00'),
(262, 'Ittoo.Carousel', 'script', '1.0.10', 'add_bgcolor_to_slide.php', '2020-12-18 09:43:59'),
(263, 'Ittoo.Carousel', 'script', '1.0.11', 'add_enabled_to_slide.php', '2020-12-20 22:33:14'),
(264, 'Ittoo.Carousel', 'script', '1.0.12', 'add_image_relation_to_slide.php', '2020-12-21 23:22:16'),
(265, 'Ittoo.Carousel', 'script', '1.0.13', 'add_link_whole_to_slide.php', '2021-01-04 12:09:58'),
(266, 'Ittoo.Carousel', 'script', '1.0.14', 'add_subtitle_to_slide.php', '2021-01-04 13:34:12'),
(267, 'Ittoo.Carousel', 'script', '1.0.15', 'add_verticalAlign_to_slide.php', '2021-01-04 19:26:15'),
(268, 'Ittoo.Carousel', 'script', '1.0.16', 'add_spacing_to_slide.php', '2021-01-06 01:57:12'),
(269, 'OFFLINE.GDPR', 'comment', '2.2.7', 'Added onRenderCookieManager method to the CookieManager component to render the markup dynamically. This is useful to render the manager dynamically inside a popup via a AJAX request.', '2021-01-09 08:12:52'),
(270, 'OFFLINE.GDPR', 'comment', '2.2.8', 'The onAccept component method now returns the rendered GDPR partial', '2021-01-09 08:12:52'),
(271, 'OFFLINE.GDPR', 'comment', '2.2.9', 'Return a proper Redirect::back() after the CookieManager form was submitted. This makes sure the newly set GDPR consent cookie will be available immediately.', '2021-01-09 08:12:52'),
(272, 'Vdlp.TwoFactorAuthentication', 'script', '1.0.0', '20181005_0001_add_google2fa_secret_to_backend_users_table.php', '2021-01-09 08:12:52'),
(273, 'Vdlp.TwoFactorAuthentication', 'comment', '1.0.0', 'First version of Vdlp.TwoFactorAuthentication', '2021-01-09 08:12:52'),
(274, 'Vdlp.TwoFactorAuthentication', 'comment', '1.1.0', 'Improve security by generating the QR-code on server (instead of Google Charts API).', '2021-01-09 08:12:52'),
(275, 'Vdlp.TwoFactorAuthentication', 'comment', '1.1.1', 'Fix invalid method call.', '2021-01-09 08:12:52'),
(276, 'Vdlp.TwoFactorAuthentication', 'comment', '1.2.0', 'Add 2FA column to user list.', '2021-01-09 08:12:52'),
(277, 'Vdlp.TwoFactorAuthentication', 'comment', '1.2.1', 'Fix issue with login screen not showing up.', '2021-01-09 08:12:52'),
(278, 'Vdlp.TwoFactorAuthentication', 'comment', '1.3.0', 'Allow disabling 2FA for users as superuser (superuser must have 2FA enabled).', '2021-01-09 08:12:52'),
(279, 'Vdlp.TwoFactorAuthentication', 'comment', '1.4.0', 'Fix redirect issue when cms.backendUri is empty.', '2021-01-09 08:12:52'),
(280, 'Vdlp.TwoFactorAuthentication', 'comment', '1.5.0', 'Upgrade dependency `libaries pragmarx/google2fa` and `endroid/qr-code`.', '2021-01-09 08:12:52'),
(281, 'Vdlp.TwoFactorAuthentication', 'comment', '1.5.0', 'Improve authentication code input element attributes.', '2021-01-09 08:12:52'),
(282, 'Vdlp.TwoFactorAuthentication', 'comment', '1.5.1', 'Remove the autocomplete attribute from the OTP field. Prevents storing OTP in browser cache.', '2021-01-09 08:12:52'),
(283, 'Vdlp.TwoFactorAuthentication', 'comment', '2.0.0', 'Add support for forcing 2FA set up after authentication -- See CHANGELOG.md', '2021-01-09 08:12:52');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(2, 'RainLab.Pages', '1.3.6', '2020-12-11 22:35:53', 0, 0),
(3, 'Ittoo.Carousel', '1.0.16', '2021-01-06 01:57:12', 0, 0),
(4, 'Martin.Forms', '1.5.1', '2020-12-11 22:35:53', 0, 0),
(5, 'RainLab.Blog', '1.4.3', '2020-12-11 22:35:53', 0, 0),
(7, 'OFFLINE.GDPR', '2.2.9', '2021-01-09 08:12:52', 0, 0),
(8, 'Vdlp.TwoFactorAuthentication', '2.0.0', '2021-01-09 08:12:52', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int UNSIGNED NOT NULL,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `field` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revisionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int UNSIGNED NOT NULL,
  `item` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(1, 'system_mail_settings', '{\"send_mode\":\"mail\",\"sender_name\":\"Acentury Inc.\",\"sender_email\":\"info@acentury.co\",\"sendmail_path\":\"\\/usr\\/sbin\\/sendmail -bs\",\"smtp_address\":\"smtp.acentury.co\",\"smtp_port\":\"587\",\"smtp_user\":\"\",\"smtp_password\":\"\",\"smtp_authorization\":\"0\",\"smtp_encryption\":\"tls\",\"mailgun_domain\":\"\",\"mailgun_secret\":\"\",\"mandrill_secret\":\"\",\"ses_key\":\"\",\"ses_secret\":\"\",\"ses_region\":\"\"}'),
(2, 'system_log_settings', '{\"log_events\":\"0\",\"log_requests\":\"0\",\"log_theme\":\"0\"}'),
(3, 'backend_brand_settings', '{\"app_name\":\"Acentury\",\"app_tagline\":\"Admin Panel\",\"primary_color\":\"#34495e\",\"secondary_color\":\"#708598\",\"accent_color\":\"#3498db\",\"menu_mode\":\"inline_no_icons\",\"custom_css\":\"\"}'),
(4, 'nsrosenqvist_cookieconsent_settings', '{\"message\":\"By accepting our cookies, you consent to the use of cookies in accordance with our <a href=\\\"\\/cookies-policy\\\">cookies policy<\\/a>.\",\"dismiss\":\"Accept\",\"learnMore\":\"Learn more\",\"link\":\"\\/cookies-policy\",\"container\":\"\",\"theme\":\"light-floating\",\"popup_background\":\"000\",\"button_background\":\"f1d600\",\"path\":\"\\/\",\"expiryDays\":\"1\",\"version\":\"3.1.0\"}'),
(5, 'offline_gdpr_cookie_consent_settings', '{\"must_consent\":\"0\",\"default_application_state\":\"0\",\"lang\":\"en\",\"cookie_expires_after_days\":\"1\",\"privacy_policy\":\"\\/privacy\",\"apps\":[],\"translations\":[]}'),
(6, 'offline_gdpr_data_retention_settings', '{\"enabled\":\"0\",\"default_keep_days\":\"365\"}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Indexes for table `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Indexes for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Indexes for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Indexes for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Indexes for table `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_templates_source_index` (`source`),
  ADD KEY `cms_theme_templates_path_index` (`path`);

--
-- Indexes for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`),
  ADD KEY `deferred_bindings_session_key_index` (`session_key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ittoo_blog_post_tag`
--
ALTER TABLE `ittoo_blog_post_tag`
  ADD KEY `ittoo_blog_post_tag_tag_id_post_id_index` (`tag_id`,`post_id`),
  ADD KEY `Post reference` (`post_id`);

--
-- Indexes for table `ittoo_blog_tags`
--
ALTER TABLE `ittoo_blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ittoo_blog_tags_name_unique` (`name`),
  ADD UNIQUE KEY `ittoo_blog_tags_slug_unique` (`slug`);

--
-- Indexes for table `ittoo_carousel_carousels`
--
ALTER TABLE `ittoo_carousel_carousels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ittoo_carousel_logos`
--
ALTER TABLE `ittoo_carousel_logos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ittoo_carousel_logos_carousel_id_foreign` (`carousel_id`);

--
-- Indexes for table `ittoo_carousel_slides`
--
ALTER TABLE `ittoo_carousel_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ittoo_carousel_slides_carousel_id_foreign` (`carousel_id`);

--
-- Indexes for table `ittoo_carousel_slide_tag`
--
ALTER TABLE `ittoo_carousel_slide_tag`
  ADD KEY `ittoo_carousel_slide_tag_tag_id_slide_id_index` (`tag_id`,`slide_id`);

--
-- Indexes for table `ittoo_team`
--
ALTER TABLE `ittoo_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `martin_forms_records`
--
ALTER TABLE `martin_forms_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_gdpr_cookies`
--
ALTER TABLE `offline_gdpr_cookies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `offline_gdpr_cookies_code_unique` (`code`);

--
-- Indexes for table `offline_gdpr_cookie_groups`
--
ALTER TABLE `offline_gdpr_cookie_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `offline_gdpr_cookie_groups_slug_unique` (`slug`);

--
-- Indexes for table `offline_gdpr_logs`
--
ALTER TABLE `offline_gdpr_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_categories_slug_index` (`slug`),
  ADD KEY `rainlab_blog_categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_posts_user_id_index` (`user_id`),
  ADD KEY `rainlab_blog_posts_slug_index` (`slug`);

--
-- Indexes for table `rainlab_blog_posts_categories`
--
ALTER TABLE `rainlab_blog_posts_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Indexes for table `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Indexes for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Indexes for table `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Indexes for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Indexes for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Indexes for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ittoo_blog_tags`
--
ALTER TABLE `ittoo_blog_tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ittoo_carousel_carousels`
--
ALTER TABLE `ittoo_carousel_carousels`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `ittoo_carousel_logos`
--
ALTER TABLE `ittoo_carousel_logos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `ittoo_carousel_slides`
--
ALTER TABLE `ittoo_carousel_slides`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `ittoo_team`
--
ALTER TABLE `ittoo_team`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `martin_forms_records`
--
ALTER TABLE `martin_forms_records`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `offline_gdpr_cookies`
--
ALTER TABLE `offline_gdpr_cookies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offline_gdpr_cookie_groups`
--
ALTER TABLE `offline_gdpr_cookie_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offline_gdpr_logs`
--
ALTER TABLE `offline_gdpr_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;

--
-- AUTO_INCREMENT for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
