-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 05, 2024 at 06:59 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventoryweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `failed_jobs`
--

TRUNCATE TABLE `failed_jobs`;
-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `migrations`
--

TRUNCATE TABLE `migrations`;
--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_10_31_061811_create_menu_table', 1),
(4, '2022_11_01_041110_create_table_role', 1),
(5, '2022_11_01_083314_create_table_user', 1),
(6, '2022_11_03_023905_create_table_submenu', 1),
(7, '2022_11_03_064417_create_tbl_akses', 1),
(8, '2022_11_08_024215_create_tbl_web', 1),
(9, '2022_11_15_131148_create_tbl_jenisbarang', 2),
(10, '2022_11_15_173700_create_tbl_satuan', 3),
(11, '2022_11_15_180434_create_tbl_merk', 4),
(12, '2022_11_16_120018_create_tbl_appreance', 5),
(13, '2022_11_25_141731_create_tbl_barang', 6),
(14, '2022_11_26_011349_create_tbl_customer', 7),
(16, '2022_11_28_151108_create_tbl_barangmasuk', 8),
(17, '2022_11_30_115904_create_tbl_barangkeluar', 9);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `personal_access_tokens`
--

TRUNCATE TABLE `personal_access_tokens`;
-- --------------------------------------------------------

--
-- Table structure for table `tbl_akses`
--

DROP TABLE IF EXISTS `tbl_akses`;
CREATE TABLE IF NOT EXISTS `tbl_akses` (
  `akses_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submenu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `othermenu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`akses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=568 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `tbl_akses`
--

TRUNCATE TABLE `tbl_akses`;
--
-- Dumping data for table `tbl_akses`
--

INSERT INTO `tbl_akses` (`akses_id`, `menu_id`, `submenu_id`, `othermenu_id`, `role_id`, `akses_type`, `created_at`, `updated_at`) VALUES
(224, '1667444041', NULL, NULL, '1', 'view', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(225, '1667444041', NULL, NULL, '1', 'create', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(226, '1667444041', NULL, NULL, '1', 'update', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(227, '1667444041', NULL, NULL, '1', 'delete', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(228, '1668509889', NULL, NULL, '1', 'view', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(229, '1668509889', NULL, NULL, '1', 'create', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(230, '1668509889', NULL, NULL, '1', 'update', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(231, '1668509889', NULL, NULL, '1', 'delete', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(232, '1668510437', NULL, NULL, '1', 'view', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(233, '1668510437', NULL, NULL, '1', 'create', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(234, '1668510437', NULL, NULL, '1', 'update', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(235, '1668510437', NULL, NULL, '1', 'delete', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(236, '1668510568', NULL, NULL, '1', 'view', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(237, '1668510568', NULL, NULL, '1', 'create', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(238, '1668510568', NULL, NULL, '1', 'update', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(239, '1668510568', NULL, NULL, '1', 'delete', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(240, NULL, '9', NULL, '1', 'view', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(241, NULL, '9', NULL, '1', 'create', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(242, NULL, '9', NULL, '1', 'update', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(243, NULL, '9', NULL, '1', 'delete', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(248, NULL, '17', NULL, '1', 'view', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(249, NULL, '17', NULL, '1', 'create', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(250, NULL, '17', NULL, '1', 'update', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(251, NULL, '17', NULL, '1', 'delete', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(252, NULL, '10', NULL, '1', 'view', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(253, NULL, '10', NULL, '1', 'create', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(254, NULL, '10', NULL, '1', 'update', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(255, NULL, '10', NULL, '1', 'delete', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(260, NULL, '18', NULL, '1', 'view', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(261, NULL, '18', NULL, '1', 'create', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(262, NULL, '18', NULL, '1', 'update', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(263, NULL, '18', NULL, '1', 'delete', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(264, NULL, '19', NULL, '1', 'view', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(265, NULL, '19', NULL, '1', 'create', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(266, NULL, '19', NULL, '1', 'update', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(267, NULL, '19', NULL, '1', 'delete', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(268, NULL, '20', NULL, '1', 'view', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(269, NULL, '20', NULL, '1', 'create', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(270, NULL, '20', NULL, '1', 'update', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(271, NULL, '20', NULL, '1', 'delete', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(272, NULL, NULL, '1', '1', 'view', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(273, NULL, NULL, '2', '1', 'view', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(274, NULL, NULL, '3', '1', 'view', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(275, NULL, NULL, '4', '1', 'view', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(276, NULL, NULL, '5', '1', 'view', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(277, NULL, NULL, '6', '1', 'view', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(278, NULL, NULL, '1', '1', 'create', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(279, NULL, NULL, '2', '1', 'create', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(280, NULL, NULL, '3', '1', 'create', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(281, NULL, NULL, '4', '1', 'create', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(282, NULL, NULL, '5', '1', 'create', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(283, NULL, NULL, '6', '1', 'create', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(284, NULL, NULL, '1', '1', 'update', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(285, NULL, NULL, '2', '1', 'update', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(286, NULL, NULL, '3', '1', 'update', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(287, NULL, NULL, '4', '1', 'update', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(288, NULL, NULL, '5', '1', 'update', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(289, NULL, NULL, '6', '1', 'update', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(290, NULL, NULL, '1', '1', 'delete', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(291, NULL, NULL, '2', '1', 'delete', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(292, NULL, NULL, '3', '1', 'delete', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(293, NULL, NULL, '4', '1', 'delete', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(294, NULL, NULL, '5', '1', 'delete', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(295, NULL, NULL, '6', '1', 'delete', '2022-11-24 05:07:30', '2022-11-24 05:07:30'),
(296, '1667444041', NULL, NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(297, '1667444041', NULL, NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(298, '1667444041', NULL, NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(299, '1667444041', NULL, NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(300, '1668509889', NULL, NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(301, '1668509889', NULL, NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(302, '1668509889', NULL, NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(303, '1668509889', NULL, NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(304, '1668510437', NULL, NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(305, '1668510437', NULL, NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(306, '1668510437', NULL, NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(307, '1668510437', NULL, NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(308, '1668510568', NULL, NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(309, '1668510568', NULL, NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(310, '1668510568', NULL, NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(311, '1668510568', NULL, NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(312, NULL, '9', NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(313, NULL, '9', NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(314, NULL, '9', NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(315, NULL, '9', NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(320, NULL, '17', NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(321, NULL, '17', NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(322, NULL, '17', NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(323, NULL, '17', NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(324, NULL, '10', NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(325, NULL, '10', NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(326, NULL, '10', NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(327, NULL, '10', NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(332, NULL, '18', NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(333, NULL, '18', NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(334, NULL, '18', NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(335, NULL, '18', NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(336, NULL, '19', NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(337, NULL, '19', NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(338, NULL, '19', NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(339, NULL, '19', NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(340, NULL, '20', NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(341, NULL, '20', NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(342, NULL, '20', NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(343, NULL, '20', NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(344, NULL, NULL, '1', '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(345, NULL, NULL, '2', '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(346, NULL, NULL, '3', '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(347, NULL, NULL, '4', '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(349, NULL, NULL, '6', '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(350, NULL, NULL, '1', '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(351, NULL, NULL, '2', '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(352, NULL, NULL, '3', '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(353, NULL, NULL, '4', '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(354, NULL, NULL, '5', '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(355, NULL, NULL, '6', '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(356, NULL, NULL, '1', '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(357, NULL, NULL, '2', '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(358, NULL, NULL, '3', '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(359, NULL, NULL, '4', '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(360, NULL, NULL, '5', '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(361, NULL, NULL, '6', '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(362, NULL, NULL, '1', '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(363, NULL, NULL, '2', '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(364, NULL, NULL, '3', '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(365, NULL, NULL, '4', '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(366, NULL, NULL, '5', '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(367, NULL, NULL, '6', '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(368, '1667444041', NULL, NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(369, '1667444041', NULL, NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(370, '1667444041', NULL, NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(371, '1667444041', NULL, NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(372, '1668509889', NULL, NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(373, '1668509889', NULL, NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(374, '1668509889', NULL, NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(375, '1668509889', NULL, NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(376, '1668510437', NULL, NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(377, '1668510437', NULL, NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(378, '1668510437', NULL, NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(379, '1668510437', NULL, NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(381, '1668510568', NULL, NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(382, '1668510568', NULL, NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(383, '1668510568', NULL, NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(384, NULL, '9', NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(385, NULL, '9', NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(386, NULL, '9', NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(387, NULL, '9', NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(392, NULL, '17', NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(393, NULL, '17', NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(394, NULL, '17', NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(395, NULL, '17', NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(396, NULL, '10', NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(397, NULL, '10', NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(398, NULL, '10', NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(399, NULL, '10', NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(404, NULL, '18', NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(405, NULL, '18', NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(406, NULL, '18', NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(407, NULL, '18', NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(408, NULL, '19', NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(409, NULL, '19', NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(410, NULL, '19', NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(411, NULL, '19', NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(412, NULL, '20', NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(413, NULL, '20', NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(414, NULL, '20', NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(415, NULL, '20', NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(417, NULL, NULL, '2', '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(418, NULL, NULL, '3', '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(419, NULL, NULL, '4', '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(420, NULL, NULL, '5', '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(421, NULL, NULL, '6', '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(422, NULL, NULL, '1', '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(423, NULL, NULL, '2', '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(424, NULL, NULL, '3', '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(425, NULL, NULL, '4', '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(426, NULL, NULL, '5', '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(427, NULL, NULL, '6', '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(428, NULL, NULL, '1', '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(429, NULL, NULL, '2', '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(430, NULL, NULL, '3', '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(431, NULL, NULL, '4', '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(432, NULL, NULL, '5', '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(433, NULL, NULL, '6', '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(434, NULL, NULL, '1', '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(435, NULL, NULL, '2', '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(436, NULL, NULL, '3', '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(437, NULL, NULL, '4', '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(438, NULL, NULL, '5', '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(439, NULL, NULL, '6', '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(440, '1669390641', NULL, NULL, '1', 'view', '2022-11-25 08:37:59', '2022-11-25 08:37:59'),
(441, '1669390641', NULL, NULL, '1', 'create', '2022-11-25 08:38:06', '2022-11-25 08:38:06'),
(442, '1669390641', NULL, NULL, '1', 'update', '2022-11-25 08:38:07', '2022-11-25 08:38:07'),
(443, '1669390641', NULL, NULL, '1', 'delete', '2022-11-25 08:38:08', '2022-11-25 08:38:08'),
(444, '1669390641', NULL, NULL, '2', 'view', '2022-11-25 08:38:23', '2022-11-25 08:38:23'),
(445, '1669390641', NULL, NULL, '2', 'create', '2022-11-25 08:38:31', '2022-11-25 08:38:31'),
(446, '1669390641', NULL, NULL, '2', 'update', '2022-11-25 08:38:31', '2022-11-25 08:38:31'),
(447, '1669390641', NULL, NULL, '2', 'delete', '2022-11-25 08:38:32', '2022-11-25 08:38:32'),
(448, '1669390641', NULL, NULL, '3', 'view', '2022-11-25 08:38:49', '2022-11-25 08:38:49'),
(449, '1669390641', NULL, NULL, '3', 'create', '2022-11-25 08:38:55', '2022-11-25 08:38:55'),
(450, '1669390641', NULL, NULL, '3', 'update', '2022-11-25 08:38:55', '2022-11-25 08:38:55'),
(451, '1669390641', NULL, NULL, '3', 'delete', '2022-11-25 08:38:57', '2022-11-25 08:38:57'),
(452, NULL, '21', NULL, '1', 'view', '2022-11-30 05:57:38', '2022-11-30 05:57:38'),
(453, NULL, '22', NULL, '1', 'view', '2022-11-30 05:57:39', '2022-11-30 05:57:39'),
(454, NULL, '23', NULL, '1', 'view', '2022-11-30 05:57:40', '2022-11-30 05:57:40'),
(455, NULL, '21', NULL, '1', 'create', '2022-11-30 05:57:53', '2022-11-30 05:57:53'),
(456, NULL, '22', NULL, '1', 'create', '2022-11-30 05:57:54', '2022-11-30 05:57:54'),
(457, NULL, '23', NULL, '1', 'create', '2022-11-30 05:57:55', '2022-11-30 05:57:55'),
(458, NULL, '23', NULL, '1', 'update', '2022-11-30 05:57:56', '2022-11-30 05:57:56'),
(459, NULL, '22', NULL, '1', 'update', '2022-11-30 05:57:56', '2022-11-30 05:57:56'),
(460, NULL, '21', NULL, '1', 'update', '2022-11-30 05:57:57', '2022-11-30 05:57:57'),
(461, NULL, '21', NULL, '1', 'delete', '2022-11-30 05:57:57', '2022-11-30 05:57:57'),
(462, NULL, '22', NULL, '1', 'delete', '2022-11-30 05:57:58', '2022-11-30 05:57:58'),
(463, NULL, '23', NULL, '1', 'delete', '2022-11-30 05:57:58', '2022-11-30 05:57:58'),
(464, NULL, '21', NULL, '2', 'view', '2022-11-30 05:58:28', '2022-11-30 05:58:28'),
(465, NULL, '22', NULL, '2', 'view', '2022-11-30 05:58:29', '2022-11-30 05:58:29'),
(466, NULL, '23', NULL, '2', 'view', '2022-11-30 05:58:31', '2022-11-30 05:58:31'),
(467, NULL, '21', NULL, '2', 'create', '2022-11-30 05:59:04', '2022-11-30 05:59:04'),
(468, NULL, '21', NULL, '2', 'update', '2022-11-30 05:59:05', '2022-11-30 05:59:05'),
(469, NULL, '21', NULL, '2', 'delete', '2022-11-30 05:59:06', '2022-11-30 05:59:06'),
(470, NULL, '22', NULL, '2', 'delete', '2022-11-30 05:59:07', '2022-11-30 05:59:07'),
(471, NULL, '22', NULL, '2', 'update', '2022-11-30 05:59:08', '2022-11-30 05:59:08'),
(472, NULL, '22', NULL, '2', 'create', '2022-11-30 05:59:09', '2022-11-30 05:59:09'),
(473, NULL, '23', NULL, '2', 'create', '2022-11-30 05:59:10', '2022-11-30 05:59:10'),
(474, NULL, '23', NULL, '2', 'update', '2022-11-30 05:59:11', '2022-11-30 05:59:11'),
(475, NULL, '23', NULL, '2', 'delete', '2022-11-30 05:59:12', '2022-11-30 05:59:12'),
(476, NULL, '21', NULL, '3', 'view', '2022-11-30 05:59:47', '2022-11-30 05:59:47'),
(477, NULL, '22', NULL, '3', 'view', '2022-11-30 05:59:48', '2022-11-30 05:59:48'),
(478, NULL, '23', NULL, '3', 'view', '2022-11-30 05:59:48', '2022-11-30 05:59:48'),
(479, NULL, '21', NULL, '3', 'create', '2022-11-30 06:00:24', '2022-11-30 06:00:24'),
(480, NULL, '21', NULL, '3', 'update', '2022-11-30 06:00:25', '2022-11-30 06:00:25'),
(481, NULL, '21', NULL, '3', 'delete', '2022-11-30 06:00:26', '2022-11-30 06:00:26'),
(482, NULL, '22', NULL, '3', 'delete', '2022-11-30 06:00:27', '2022-11-30 06:00:27'),
(483, NULL, '22', NULL, '3', 'update', '2022-11-30 06:00:28', '2022-11-30 06:00:28'),
(484, NULL, '22', NULL, '3', 'create', '2022-11-30 06:00:29', '2022-11-30 06:00:29'),
(485, NULL, '23', NULL, '3', 'create', '2022-11-30 06:00:30', '2022-11-30 06:00:30'),
(486, NULL, '23', NULL, '3', 'update', '2022-11-30 06:00:30', '2022-11-30 06:00:30'),
(487, NULL, '23', NULL, '3', 'delete', '2022-11-30 06:00:31', '2022-11-30 06:00:31'),
(488, '1667444041', NULL, NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(489, '1667444041', NULL, NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(490, '1667444041', NULL, NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(491, '1667444041', NULL, NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(493, '1668509889', NULL, NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(494, '1668509889', NULL, NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(495, '1668509889', NULL, NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(497, '1669390641', NULL, NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(498, '1669390641', NULL, NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(499, '1669390641', NULL, NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(501, '1668510437', NULL, NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(502, '1668510437', NULL, NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(503, '1668510437', NULL, NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(504, '1668510568', NULL, NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(505, '1668510568', NULL, NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(506, '1668510568', NULL, NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(507, '1668510568', NULL, NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(508, NULL, '9', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(509, NULL, '9', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(510, NULL, '9', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(511, NULL, '9', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(512, NULL, '17', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(513, NULL, '17', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(514, NULL, '17', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(515, NULL, '17', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(516, NULL, '21', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(517, NULL, '21', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(518, NULL, '21', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(519, NULL, '21', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(520, NULL, '10', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(521, NULL, '10', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(522, NULL, '10', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(523, NULL, '10', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(524, NULL, '18', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(525, NULL, '18', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(526, NULL, '18', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(527, NULL, '18', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(528, NULL, '22', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(529, NULL, '22', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(530, NULL, '22', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(531, NULL, '22', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(532, NULL, '19', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(533, NULL, '19', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(534, NULL, '19', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(535, NULL, '19', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(536, NULL, '23', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(537, NULL, '23', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(538, NULL, '23', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(539, NULL, '23', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(540, NULL, '20', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(541, NULL, '20', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(542, NULL, '20', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(543, NULL, '20', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(545, NULL, NULL, '2', '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(546, NULL, NULL, '3', '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(547, NULL, NULL, '4', '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(548, NULL, NULL, '5', '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(549, NULL, NULL, '6', '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(550, NULL, NULL, '1', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(551, NULL, NULL, '2', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(552, NULL, NULL, '3', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(553, NULL, NULL, '4', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(554, NULL, NULL, '5', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(555, NULL, NULL, '6', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(556, NULL, NULL, '1', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(557, NULL, NULL, '2', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(558, NULL, NULL, '3', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(559, NULL, NULL, '4', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(560, NULL, NULL, '5', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(561, NULL, NULL, '6', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(562, NULL, NULL, '1', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(563, NULL, NULL, '2', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(564, NULL, NULL, '3', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(565, NULL, NULL, '4', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(566, NULL, NULL, '5', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(567, NULL, NULL, '6', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appreance`
--

DROP TABLE IF EXISTS `tbl_appreance`;
CREATE TABLE IF NOT EXISTS `tbl_appreance` (
  `appreance_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appreance_layout` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_sidestyle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`appreance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `tbl_appreance`
--

TRUNCATE TABLE `tbl_appreance`;
--
-- Dumping data for table `tbl_appreance`
--

INSERT INTO `tbl_appreance` (`appreance_id`, `user_id`, `appreance_layout`, `appreance_theme`, `appreance_menu`, `appreance_header`, `appreance_sidestyle`, `created_at`, `updated_at`) VALUES
(2, '1', 'horizontal', 'dark-mode', 'dark-menu', 'dark-header', 'default-menu', '2022-11-22 02:45:47', '2024-07-29 06:26:48'),
(3, '2', 'sidebar-mini', 'light-mode', 'light-menu', 'header-light', 'default-menu', '2024-07-26 08:21:17', '2024-07-26 08:21:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

DROP TABLE IF EXISTS `tbl_barang`;
CREATE TABLE IF NOT EXISTS `tbl_barang` (
  `barang_id` int NOT NULL AUTO_INCREMENT,
  `jenisbarang_id` varchar(255) DEFAULT NULL,
  `satuan_id` varchar(255) DEFAULT NULL,
  `merk_id` varchar(255) DEFAULT NULL,
  `barang_kode` varchar(255) NOT NULL,
  `barang_nama` varchar(255) NOT NULL,
  `barang_slug` varchar(255) DEFAULT NULL,
  `barang_harga` varchar(255) NOT NULL,
  `barang_stok` varchar(255) NOT NULL,
  `barang_gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`barang_id`,`barang_kode`,`barang_nama`,`barang_harga`,`barang_stok`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tbl_barang`
--

TRUNCATE TABLE `tbl_barang`;
--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_id`, `jenisbarang_id`, `satuan_id`, `merk_id`, `barang_kode`, `barang_nama`, `barang_slug`, `barang_harga`, `barang_stok`, `barang_gambar`, `created_at`, `updated_at`) VALUES
(5, '11', '5', '2', 'BRG-1669390175622', 'LE MINERAL', 'le-mineral', '25000', '250', '3lUJ1VmXfTooWVohOkeSZDdvTAO0J4Py5Zjflbej.jpg', '2022-11-25 08:30:12', '2024-08-04 02:47:15'),
(6, '11', '5', '7', 'BRG-1669390220236', 'AQUA', 'aqua', '20000', '0', 'BJI8mbRJJYhJ1syirHOvF7oQGUKZ3QRf1ETnlUKk.jpg', '2022-11-25 08:30:50', '2024-08-04 02:44:29'),
(7, '11', '5', '8', 'BRG-1721840613163', 'AMIDIS', 'amidis', '23000', '100', 'nZWENRJQJwqV8yANVbaILKPloWUSQqYooYYeuJsE.jpg', '2024-07-24 10:04:02', '2024-08-04 02:44:15'),
(8, '11', '5', '9', 'BRG-1721840662312', 'VIT', 'vit', '21000', '200', 'S1Juret91ophDP4tTgDXACqxGdEiRxRwSd7qRWUA.jpg', '2024-07-24 10:04:53', '2024-08-04 02:43:48'),
(9, '11', '5', '1', 'BRG-1721840696370', 'CLEO', 'cleo', '24000', '200', 'dfCqIBBYa3oH7NhZWUTZfJKU56Eg8oedbW2ZUDPh.jpg', '2024-07-24 10:05:17', '2024-08-04 02:00:53'),
(10, '11', '5', '13', 'BRG-1721840723104', 'SIERRA', 'sierra', '22000', '100', 'tqD2t5uDyqGLtnQVg1tGSS0JjThAkQR1gHBW1qYJ.jpg', '2024-07-24 10:06:09', '2024-08-04 02:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barangkeluar`
--

DROP TABLE IF EXISTS `tbl_barangkeluar`;
CREATE TABLE IF NOT EXISTS `tbl_barangkeluar` (
  `bk_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `bk_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bk_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bk_tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bk_jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`bk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `tbl_barangkeluar`
--

TRUNCATE TABLE `tbl_barangkeluar`;
--
-- Dumping data for table `tbl_barangkeluar`
--

INSERT INTO `tbl_barangkeluar` (`bk_id`, `bk_kode`, `barang_kode`, `bk_tanggal`, `bk_tujuan`, `bk_jumlah`, `created_at`, `updated_at`) VALUES
(2, 'BK-1669811950758', 'BRG-1669390220236', '2024-07-24', 'GUDANG TASIKMALAYA', '20', '2022-11-30 05:39:22', '2024-07-27 01:23:49'),
(3, 'BK-1669812439198', 'BRG-1669390175622', '2024-07-25', 'Gudang Prindapan', '5', '2022-11-30 05:47:39', '2024-07-27 01:22:33'),
(4, 'BK-1722063687154', 'BRG-1669390220236', '2024-07-27', 'GUDANG BEKASI', '50', '2024-07-27 00:02:21', '2024-07-27 01:24:33'),
(5, 'BK-1722067839601', 'BRG-1721840723104', '2024-07-27', 'GUDANG TANGERANG', '10', '2024-07-27 01:11:12', '2024-07-27 01:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barangmasuk`
--

DROP TABLE IF EXISTS `tbl_barangmasuk`;
CREATE TABLE IF NOT EXISTS `tbl_barangmasuk` (
  `bm_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `bm_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`bm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `tbl_barangmasuk`
--

TRUNCATE TABLE `tbl_barangmasuk`;
--
-- Dumping data for table `tbl_barangmasuk`
--

INSERT INTO `tbl_barangmasuk` (`bm_id`, `bm_kode`, `barang_kode`, `customer_id`, `bm_tanggal`, `bm_jumlah`, `created_at`, `updated_at`) VALUES
(1, 'BM-1669730554623', 'BRG-1669390220236', '2', '2024-07-14', '50', '2022-11-29 07:02:43', '2024-07-29 05:37:53'),
(2, 'BM-1669731639801', 'BRG-1669390175622', '2', '2024-07-20', '10', '2022-11-29 07:20:55', '2024-07-29 05:37:23'),
(3, 'BM-1722063534540', 'BRG-1669390220236', '5', '2024-07-27', '50', '2024-07-27 00:00:05', '2024-07-27 00:00:05'),
(4, 'BM-1722068124640', 'BRG-1721840723104', '5', '2024-07-23', '5', '2024-07-27 01:15:55', '2024-07-27 01:15:55'),
(5, 'BM-1722074425048', 'BRG-1721840696370', '7', '2024-07-27', '50', '2024-07-27 03:01:00', '2024-07-27 03:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `customer_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_alamat` text COLLATE utf8mb4_unicode_ci,
  `customer_notelp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `tbl_customer`
--

TRUNCATE TABLE `tbl_customer`;
--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_nama`, `customer_slug`, `customer_alamat`, `customer_notelp`, `created_at`, `updated_at`) VALUES
(2, 'GUDANG INDOMARET BOGOR', 'gudang-indomaret-bogor', 'BOGOR', '0823 4567 8901', '2022-11-25 18:36:34', '2024-07-26 23:56:48'),
(4, 'GUDANG ALFAMART JAKARTA', 'gudang-alfamart-jakarta', 'JAKARTAA', '0812 3456 7890', '2024-07-22 08:16:24', '2024-07-26 23:56:05'),
(5, 'Gudang Family Depok', 'gudang-family-depok', 'Depok', '083 45678 9012', '2024-07-26 23:58:37', '2024-07-26 23:58:37'),
(6, 'GUDANG  TANGERANG', 'gudang-tangerang', 'TANGERANG', '08123456789', '2024-07-27 01:10:23', '2024-07-27 01:25:15'),
(7, 'GUDANG BANDUNG', 'gudang-bandung', 'BANDUNG', '0834567890', '2024-07-27 01:30:55', '2024-07-27 01:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenisbarang`
--

DROP TABLE IF EXISTS `tbl_jenisbarang`;
CREATE TABLE IF NOT EXISTS `tbl_jenisbarang` (
  `jenisbarang_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `jenisbarang_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisbarang_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisbarang_ket` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`jenisbarang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `tbl_jenisbarang`
--

TRUNCATE TABLE `tbl_jenisbarang`;
--
-- Dumping data for table `tbl_jenisbarang`
--

INSERT INTO `tbl_jenisbarang` (`jenisbarang_id`, `jenisbarang_nama`, `jenisbarang_slug`, `jenisbarang_ket`, `created_at`, `updated_at`) VALUES
(11, 'AIR MINERAL', 'air-mineral', NULL, '2022-11-25 08:24:18', '2024-07-24 10:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE IF NOT EXISTS `tbl_menu` (
  `menu_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_redirect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_sort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1669390642 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `tbl_menu`
--

TRUNCATE TABLE `tbl_menu`;
--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`menu_id`, `menu_judul`, `menu_slug`, `menu_icon`, `menu_redirect`, `menu_sort`, `menu_type`, `created_at`, `updated_at`) VALUES
(1667444041, 'Dashboard', 'dashboard', 'home', '/dashboard', '1', '1', '2022-11-15 03:51:04', '2022-11-15 03:51:04'),
(1668509889, 'Master Barang', 'master-barang', 'package', '-', '2', '2', '2022-11-15 03:58:09', '2022-11-15 04:03:15'),
(1668510437, 'Transaksi', 'transaksi', 'repeat', '-', '3', '2', '2022-11-15 04:07:17', '2024-07-29 05:27:30'),
(1668510568, 'Laporan', 'laporan', 'printer', '-', '5', '2', '2022-11-15 04:09:28', '2022-11-25 08:37:28'),
(1669390641, 'Customer', 'customer', 'user', '/customer', '4', '1', '2022-11-25 08:37:21', '2024-07-29 05:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merk`
--

DROP TABLE IF EXISTS `tbl_merk`;
CREATE TABLE IF NOT EXISTS `tbl_merk` (
  `merk_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `merk_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`merk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `tbl_merk`
--

TRUNCATE TABLE `tbl_merk`;
--
-- Dumping data for table `tbl_merk`
--

INSERT INTO `tbl_merk` (`merk_id`, `merk_nama`, `merk_slug`, `merk_keterangan`, `created_at`, `updated_at`) VALUES
(1, 'CLEO', 'cleo', 'galon', '2022-11-15 11:14:09', '2024-07-24 05:14:35'),
(2, 'LE MINERAL', 'le-mineral', 'galon', '2022-11-15 11:14:33', '2024-07-24 05:14:24'),
(7, 'AQUA', 'aqua', 'galon', '2022-11-25 08:29:27', '2024-07-24 05:14:10'),
(8, 'AMIDIS', 'amidis', 'galon', '2024-07-24 09:54:05', '2024-07-24 09:54:05'),
(9, 'VIT', 'vit', 'galon', '2024-07-24 09:54:29', '2024-07-24 09:54:29'),
(10, 'OASIS', 'oasis', 'galon', '2024-07-24 09:54:40', '2024-07-24 09:54:40'),
(11, 'CLEO', 'cleo', 'galon', '2024-07-24 09:55:00', '2024-07-24 09:55:00'),
(12, 'SULI', 'suli', 'galon', '2024-07-24 09:55:09', '2024-07-24 09:55:09'),
(13, 'SIERRA', 'sierra', 'galon', '2024-07-24 09:55:23', '2024-07-24 09:55:23'),
(14, 'J3', 'j3', 'galon', '2024-07-24 09:55:37', '2024-07-24 09:55:37'),
(15, 'ades', 'ades', 'galon', '2024-07-27 02:59:48', '2024-07-27 02:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE IF NOT EXISTS `tbl_role` (
  `role_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_desc` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `tbl_role`
--

TRUNCATE TABLE `tbl_role`;
--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`role_id`, `role_title`, `role_slug`, `role_desc`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super-admin', '-', '2022-11-15 03:51:04', '2022-11-15 03:51:04'),
(2, 'Admin', 'admin', '-', '2022-11-15 03:51:04', '2022-11-15 03:51:04'),
(3, 'operator', 'operator', '-', '2022-11-15 03:51:04', '2024-07-22 08:52:54'),
(4, 'Manajer', 'manajer', NULL, '2022-12-06 02:33:27', '2022-12-06 02:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan`
--

DROP TABLE IF EXISTS `tbl_satuan`;
CREATE TABLE IF NOT EXISTS `tbl_satuan` (
  `satuan_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `satuan_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`satuan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `tbl_satuan`
--

TRUNCATE TABLE `tbl_satuan`;
--
-- Dumping data for table `tbl_satuan`
--

INSERT INTO `tbl_satuan` (`satuan_id`, `satuan_nama`, `satuan_slug`, `satuan_keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Kg', 'kg', NULL, '2022-11-15 10:50:38', '2022-11-24 05:39:04'),
(5, 'Pcs', 'pcs', NULL, '2022-11-24 05:39:15', '2022-11-24 05:39:21'),
(7, 'Qty', 'qty', NULL, '2022-11-24 05:39:59', '2022-11-24 05:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_submenu`
--

DROP TABLE IF EXISTS `tbl_submenu`;
CREATE TABLE IF NOT EXISTS `tbl_submenu` (
  `submenu_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_redirect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_sort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `tbl_submenu`
--

TRUNCATE TABLE `tbl_submenu`;
--
-- Dumping data for table `tbl_submenu`
--

INSERT INTO `tbl_submenu` (`submenu_id`, `menu_id`, `submenu_judul`, `submenu_slug`, `submenu_redirect`, `submenu_sort`, `created_at`, `updated_at`) VALUES
(9, '1668510437', 'Barang Masuk', 'barang-masuk', '/barang-masuk', '1', '2022-11-15 04:08:19', '2022-11-15 04:08:19'),
(10, '1668510437', 'Barang Keluar', 'barang-keluar', '/barang-keluar', '2', '2022-11-15 04:08:19', '2022-11-15 04:08:19'),
(17, '1668509889', 'Jenis', 'jenis', '/jenisbarang', '1', '2022-11-24 05:06:48', '2022-11-24 05:06:48'),
(18, '1668509889', 'Satuan', 'satuan', '/satuan', '2', '2022-11-24 05:06:48', '2022-11-24 05:06:48'),
(19, '1668509889', 'Merk', 'merk', '/merk', '3', '2022-11-24 05:06:48', '2022-11-24 05:06:48'),
(20, '1668509889', 'Barang', 'barang', '/barang', '4', '2022-11-24 05:06:48', '2022-11-24 05:06:48'),
(21, '1668510568', 'Lap Barang Masuk', 'lap-barang-masuk', '/lap-barang-masuk', '1', '2022-11-30 05:56:24', '2022-11-30 05:56:24'),
(22, '1668510568', 'Lap Barang Keluar', 'lap-barang-keluar', '/lap-barang-keluar', '2', '2022-11-30 05:56:24', '2022-11-30 05:56:24'),
(23, '1668510568', 'Lap Stok Barang', 'lap-stok-barang', '/lap-stok-barang', '3', '2022-11-30 05:56:24', '2022-11-30 05:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nmlengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `tbl_user`
--

TRUNCATE TABLE `tbl_user`;
--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `role_id`, `user_nmlengkap`, `user_nama`, `user_email`, `user_foto`, `user_password`, `created_at`, `updated_at`) VALUES
(1, '1', 'Super Administrator', 'superadmin', 'superadmin@gmail.com', 'undraw_profile.svg', 'e10adc3949ba59abbe56e057f20f883e', '2022-11-15 03:51:04', '2022-11-15 03:51:04'),
(2, '2', 'Administrator', 'admin', 'admin@gmail.com', 'undraw_profile.svg', 'e10adc3949ba59abbe56e057f20f883e', '2022-11-15 03:51:04', '2022-11-15 03:51:04'),
(3, '3', 'operator', 'operator', 'operator@gmail.com', 'undraw_profile.svg', 'e10adc3949ba59abbe56e057f20f883e', '2022-11-15 03:51:04', '2022-11-15 03:51:04'),
(4, '4', 'Manajer', 'manajer', 'manajer@gmail.com', 'undraw_profile.svg', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-06 02:33:54', '2022-12-06 02:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web`
--

DROP TABLE IF EXISTS `tbl_web`;
CREATE TABLE IF NOT EXISTS `tbl_web` (
  `web_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `web_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`web_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `tbl_web`
--

TRUNCATE TABLE `tbl_web`;
--
-- Dumping data for table `tbl_web`
--

INSERT INTO `tbl_web` (`web_id`, `web_nama`, `web_logo`, `web_deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Inventory Gudang PT. Gamiral', 'warehouse1.png', 'Mengelola Data Barang Masuk  & Barang Keluar Masuk Galon Air Mineral.', '2022-11-15 03:51:04', '2024-08-03 19:47:30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
