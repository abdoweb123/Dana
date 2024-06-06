-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 07, 2024 at 11:16 AM
-- Server version: 10.6.17-MariaDB
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aldanaemcangroup_malhofy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$orVUsSLQG4Er7Wb8mqpqFu45dEMx8Nc2qWCmW7.9hCBDMewxoXjmW', '2023-10-24 10:21:58', '2023-10-24 10:21:58'),
(3, 'mohamed', 'admin2@admin.com', '$2y$10$0AM7JwMNNmNgCErhSLlJ3evs3SoK0hwS8X2P3VU21WqN.ZtVyyQPq', '2024-01-02 09:43:22', '2024-01-02 09:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permission`
--

CREATE TABLE `admin_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permission`
--

INSERT INTO `admin_permission` (`id`, `admin_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(379, 1, 44, NULL, NULL),
(380, 1, 45, NULL, NULL),
(381, 1, 46, NULL, NULL),
(382, 1, 47, NULL, NULL),
(383, 1, 48, NULL, NULL),
(384, 1, 49, NULL, NULL),
(385, 1, 50, NULL, NULL),
(386, 1, 51, NULL, NULL),
(387, 1, 52, NULL, NULL),
(388, 1, 53, NULL, NULL),
(389, 1, 54, NULL, NULL),
(390, 1, 55, NULL, NULL),
(391, 1, 56, NULL, NULL),
(392, 1, 57, NULL, NULL),
(393, 1, 58, NULL, NULL),
(394, 1, 59, NULL, NULL),
(395, 1, 60, NULL, NULL),
(396, 1, 61, NULL, NULL),
(397, 1, 62, NULL, NULL),
(398, 1, 63, NULL, NULL),
(399, 1, 64, NULL, NULL),
(400, 1, 65, NULL, NULL),
(401, 1, 66, NULL, NULL),
(402, 1, 67, NULL, NULL),
(403, 1, 68, NULL, NULL),
(404, 1, 69, NULL, NULL),
(405, 1, 70, NULL, NULL),
(406, 1, 71, NULL, NULL),
(407, 1, 72, NULL, NULL),
(408, 1, 73, NULL, NULL),
(409, 1, 74, NULL, NULL),
(410, 1, 75, NULL, NULL),
(411, 1, 76, NULL, NULL),
(412, 1, 77, NULL, NULL),
(413, 1, 78, NULL, NULL),
(414, 1, 79, NULL, NULL),
(415, 1, 80, NULL, NULL),
(416, 1, 81, NULL, NULL),
(417, 1, 82, NULL, NULL),
(418, 1, 83, NULL, NULL),
(419, 1, 84, NULL, NULL),
(420, 1, 85, NULL, NULL),
(421, 1, 86, NULL, NULL),
(422, 1, 87, NULL, NULL),
(423, 1, 88, NULL, NULL),
(424, 1, 89, NULL, NULL),
(425, 1, 90, NULL, NULL),
(426, 1, 91, NULL, NULL),
(427, 1, 92, NULL, NULL),
(428, 1, 93, NULL, NULL),
(429, 1, 94, NULL, NULL),
(430, 1, 95, NULL, NULL),
(431, 1, 96, NULL, NULL),
(432, 1, 97, NULL, NULL),
(433, 1, 98, NULL, NULL),
(434, 1, 99, NULL, NULL),
(435, 1, 100, NULL, NULL),
(436, 1, 101, NULL, NULL),
(437, 1, 102, NULL, NULL),
(438, 1, 103, NULL, NULL),
(439, 1, 104, NULL, NULL),
(440, 1, 105, NULL, NULL),
(441, 1, 106, NULL, NULL),
(442, 1, 107, NULL, NULL),
(443, 1, 108, NULL, NULL),
(444, 1, 109, NULL, NULL),
(445, 1, 110, NULL, NULL),
(446, 1, 111, NULL, NULL),
(447, 1, 112, NULL, NULL),
(448, 1, 113, NULL, NULL),
(449, 1, 114, NULL, NULL),
(450, 1, 115, NULL, NULL),
(451, 1, 116, NULL, NULL),
(452, 1, 117, NULL, NULL),
(453, 1, 118, NULL, NULL),
(454, 1, 119, NULL, NULL),
(455, 1, 120, NULL, NULL),
(456, 1, 121, NULL, NULL),
(457, 1, 122, NULL, NULL),
(458, 1, 123, NULL, NULL),
(459, 1, 124, NULL, NULL),
(460, 1, 125, NULL, NULL),
(461, 1, 126, NULL, NULL),
(462, 1, 127, NULL, NULL),
(463, 1, 128, NULL, NULL),
(464, 1, 129, NULL, NULL),
(465, 1, 130, NULL, NULL),
(466, 1, 131, NULL, NULL),
(467, 1, 132, NULL, NULL),
(468, 1, 133, NULL, NULL),
(469, 1, 134, NULL, NULL),
(470, 1, 135, NULL, NULL),
(471, 1, 136, NULL, NULL),
(472, 1, 137, NULL, NULL),
(473, 1, 138, NULL, NULL),
(474, 3, 44, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float UNSIGNED NOT NULL,
  `discount` float UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `category_id`, `title_ar`, `title_en`, `image`, `price`, `discount`, `created_at`, `updated_at`) VALUES
(4, 2, 'بيض مخفوق مع شرائح مشروم', 'Scrambled eggs with mushroom slices', '/storage/cards/1714466745_9713.webp', 40.25, 3, '2023-10-26 09:45:05', '2024-04-30 05:52:17'),
(89, 2, 'أومليت ايطالي', 'Italian omelet', '/storage/cards/1714466739_2161.webp', 52, 2, '2023-11-21 11:48:25', '2024-04-30 05:52:05'),
(90, 2, 'بيض طماط خاص', 'Special tomato eggs', '/storage/cards/1714466732_2126.webp', 60, 2, '2023-11-21 11:49:16', '2024-04-30 05:51:53'),
(91, 2, 'شكشوكة', 'Shakshuka', '/storage/cards/1714466726_3860.webp', 60, 3, '2023-11-21 11:50:01', '2024-04-30 05:51:43'),
(92, 11, 'تست كارد', 'test card', '/storage/cards/1714466756_2357.webp', 25, 5, '2023-11-27 13:39:25', '2024-04-30 05:45:57'),
(93, 14, 'new card تست', 'new card ', '/storage/cards/1701176535_1100.webp', 543, 15, '2023-11-28 11:02:15', '2023-11-29 11:03:29'),
(94, 2, 'بيض بالسوسيس و الخضار', 'eggs with sausage and vegetables', '/storage/cards/1714560282_2473.webp', 10, 0, '2024-05-01 07:44:42', '2024-05-01 07:45:04');

-- --------------------------------------------------------

--
-- Table structure for table `card_group`
--

CREATE TABLE `card_group` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `card_group`
--

INSERT INTO `card_group` (`id`, `card_id`, `group_id`, `created_at`, `updated_at`) VALUES
(96, 92, 1, NULL, NULL),
(97, 91, 1, NULL, NULL),
(98, 91, 2, NULL, NULL),
(99, 91, 3, NULL, NULL),
(100, 91, 4, NULL, NULL),
(101, 91, 5, NULL, NULL),
(102, 90, 1, NULL, NULL),
(103, 90, 2, NULL, NULL),
(104, 90, 3, NULL, NULL),
(105, 90, 4, NULL, NULL),
(106, 90, 5, NULL, NULL),
(107, 89, 1, NULL, NULL),
(108, 89, 2, NULL, NULL),
(109, 89, 3, NULL, NULL),
(110, 89, 4, NULL, NULL),
(111, 89, 5, NULL, NULL),
(112, 4, 1, NULL, NULL),
(113, 4, 2, NULL, NULL),
(114, 4, 4, NULL, NULL),
(115, 4, 5, NULL, NULL),
(117, 94, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `card_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `card_id`, `quantity`, `created_at`, `updated_at`) VALUES
(117, 69, 91, 50, '2023-12-28 13:49:33', '2023-12-28 13:49:33'),
(118, 69, 90, 50, '2023-12-28 13:49:36', '2023-12-28 13:49:36'),
(133, 76, 89, 50, '2024-01-04 14:40:01', '2024-01-04 14:40:01'),
(134, 57, 89, 50, '2024-01-09 06:41:58', '2024-01-09 06:41:58'),
(139, 78, 89, 50, '2024-01-28 06:41:01', '2024-01-28 06:41:01'),
(146, 81, 91, 1, '2024-04-27 05:34:38', '2024-04-27 05:34:38'),
(151, 35, 94, 1, '2024-05-01 12:07:26', '2024-05-01 12:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title_ar`, `title_en`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, 'بلايستيشن', 'Playstation', '/storage/categories/1714467923_4041.webp', '2023-10-25 09:23:56', '2024-04-30 06:05:24'),
(2, 1, 'الإفطار', 'Breakfast', '/storage/categories/1714466701_3038.webp', '2023-10-25 10:11:36', '2024-04-30 05:51:12'),
(4, NULL, 'ايتيونز', 'Itunes', '/storage/categories/1714467930_7201.webp', '2023-10-26 10:36:14', '2024-04-30 06:05:31'),
(5, NULL, 'جوجل ماركت', 'Google Play', '/storage/categories/1714467939_3122.webp', '2023-10-26 10:36:14', '2024-04-30 06:05:39'),
(6, NULL, 'ستيم', 'Steam', '/storage/categories/1714467947_5807.webp', '2023-10-26 10:36:14', '2024-04-30 06:05:48'),
(7, NULL, 'خدمات الموبايل والانترنت', 'Mobile and Internet', NULL, '2023-10-26 10:36:14', '2023-10-26 10:36:14'),
(11, 4, 'المقبلات', 'Appetizers', '/storage/categories/1714466707_7025.webp', '2023-11-21 11:46:18', '2024-04-30 05:51:25'),
(12, NULL, 'تست', 'test22', '/storage/categories/1714467956_9148.webp', '2023-11-28 10:45:52', '2024-04-30 06:05:56'),
(14, 12, 'تست33', 'test3', '/storage/categories/1714466715_9782.webp', '2023-11-28 10:54:28', '2024-04-30 05:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `delivery_cost` decimal(9,3) NOT NULL DEFAULT 0.000,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_emails`
--

CREATE TABLE `company_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_type_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `response` enum('answerd','solved') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `body`, `created_at`, `updated_at`, `response`) VALUES
(1, 'Holaa', 'test@test.com', '+201559944997', '+bla', '+bla bla', '2023-11-09 11:16:47', '2024-01-01 07:05:08', 'solved'),
(2, 'Holaa', 'test@test.com', '+201559944997', '+bla', '+bla bla', '2023-11-23 10:49:48', '2024-01-01 08:59:31', 'solved'),
(3, 'name1', 'test1@gmail.com', '+9741234567890', 'subject1', 'Message1', '2023-11-23 13:55:13', '2024-01-01 08:59:28', 'solved'),
(4, 'amira', 'amira@gmail.com', '+201270563716', 'التاخير', 'testing', '2023-11-26 05:31:54', '2024-01-01 07:05:33', 'solved'),
(5, 'test 2', 'test@gmail.com', '+966123456788', 'I', 'Content', '2023-11-27 13:53:46', '2024-01-01 08:59:30', 'answerd'),
(6, 'kjhkjhjk', 'jhghj@gmail.com', '+97312345678', 'lol', 'Khlkh', '2023-11-28 07:21:23', '2024-01-01 07:05:35', 'answerd'),
(7, 'him', 'jkjhk@gmail.com', '+97312345678', 'keg', 'Jug', '2023-11-28 07:24:30', '2024-01-01 07:05:39', 'answerd'),
(8, 'Amira', 'amira@gmail.com', '+201270563716', 'الاوردر', 'تاخير الاوردر', '2023-11-29 05:23:16', '2024-01-01 07:05:37', 'answerd');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `currancy_code` varchar(255) DEFAULT NULL,
  `currancy_value` decimal(5,3) NOT NULL DEFAULT 0.000,
  `phone_code` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `length` int(11) NOT NULL DEFAULT 10,
  `decimals` int(11) NOT NULL DEFAULT 3,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `accept_orders` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `title_ar`, `title_en`, `currancy_code`, `currancy_value`, `phone_code`, `country_code`, `length`, `decimals`, `lat`, `long`, `image`, `status`, `accept_orders`, `created_at`, `updated_at`) VALUES
(1, 'البحرين', 'Bahrain', 'BHD', 1.000, '+973', 'BH', 8, 3, '25.93041400', '50.63777200', '/countries/Bahrain.png', 1, 1, '2022-10-09 06:52:15', '2022-10-09 06:52:15'),
(2, 'المملكة العربية السعودية', 'Saudi Arabia', 'SAR', 10.000, '+966', 'SA', 9, 3, '23.88594200', '45.07916200', '/countries/SaudiArabia.png', 1, 1, '2022-10-09 06:52:15', '2022-10-09 06:52:15'),
(3, 'سلطنة عمان', 'Oman', 'OR', 9.740, '+968', 'OM', 10, 3, '21.51258300', '55.92325500', '/countries/Oman.png', 1, 1, '2022-10-09 06:52:15', '2022-10-09 06:52:15'),
(4, 'الإمارات العربية المتحدة', 'United Arab Emirates', 'AED', 0.810, '+971', 'AE', 9, 3, '23.42407600', '53.84781800', '/countries/UnitedArabEmirates.png', 1, 1, '2022-10-09 06:52:15', '2022-10-09 06:52:15'),
(5, 'قطر', 'Qatar', 'QR', 1.020, '+974', 'QA', 10, 3, '25.35482600', '51.18388400', '/countries/Qatar.png', 1, 1, '2022-10-09 06:52:15', '2022-10-09 06:52:15'),
(6, 'الكويت', 'Kuwait', 'KWD', 2.650, '+965', 'KW', 10, 3, '29.31166000', '47.48176600', '/countries/Kuwait.png', 1, 1, '2022-10-09 06:52:15', '2022-10-09 06:52:15'),
(7, 'مصر', 'Egypt', 'EGP', 61.410, '+20', 'EG', 10, 3, '26.82055300', '30.80249800', '/countries/Egypt.png', 0, 1, '2022-10-09 06:52:15', '2022-10-09 06:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `email_types`
--

CREATE TABLE `email_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `title_ar`, `title_en`, `created_at`, `updated_at`) VALUES
(1, 'عروض اليوم', 'Today\'s Offers', '2023-10-25 10:28:05', '2023-10-25 10:28:05'),
(2, 'مجموعات التوفير', 'Savings Sets', '2023-10-25 10:28:05', '2023-10-25 10:28:05'),
(3, 'الاكثر مبيعا', 'Best Sellers', '2023-10-25 10:28:05', '2023-10-25 10:28:05'),
(4, 'البطاقات الجديدة', 'New Cards', '2023-10-25 10:28:05', '2023-10-25 10:28:05'),
(5, 'الهدايا والعروض', 'Gifts and Offers', '2023-10-25 10:28:05', '2023-10-25 10:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_12_080041_create_settings_table', 1),
(6, '2023_10_12_080048_create_admins_table', 1),
(7, '2023_10_12_133534_create_notifications_table', 1),
(8, '2023_10_18_131631_create_sidepages_table', 1),
(9, '2023_11_01_151434_create_slides_table', 1),
(10, '2023_10_20_083132_create_images_table', 1),
(11, '2023_10_20_111030_create_product_types_table', 1),
(12, '2023_10_20_111032_create_products_table', 1),
(13, '2023_10_20_111035_create_contactuses_table', 1),
(14, '2023_10_20_143331_create_email_types_table', 1),
(15, '2023_10_20_143341_create_company_emails_table', 1),
(16, '2023_10_22_114319_create_countries_table', 1),
(17, '2023_10_22_114334_create_regions_table', 1),
(18, '2023_10_22_114341_create_cities_table', 1),
(19, '2023_10_22_143831_create_user_otps_table', 1),
(20, '2023_10_31_161332_create_orders_table', 1),
(21, '2023_10_31_161333_create_order_details_table', 1),
(23, '2023_10_24_142038_create_categories_table', 2),
(25, '2023_10_25_125442_create_groups_table', 3),
(26, '2023_10_25_120955_create_cards_table', 4),
(27, '2023_10_26_122846_create_card_group_table', 5),
(28, '2023_10_29_115126_create_serials_table', 6),
(33, '2023_10_30_133147_create_promo_codes_table', 7),
(34, '2023_10_30_133224_create_promo_code_user', 7),
(35, '2023_10_31_161334_create_carts_table', 8),
(36, '2023_11_01_151432_create_payment_methods_table', 9),
(37, '2023_10_24_081800_create_transactions_table', 10),
(38, '2023_11_09_130341_create_contacts_table', 11),
(39, '2023_11_12_113154_create_tokens_table', 12),
(40, '2023_12_31_090323_add_country_id_to_users_table', 13),
(41, '2024_01_02_090922_create_pages_table', 14),
(42, '2024_01_02_105246_create_permissions_table', 14),
(44, '2024_01_02_111950_create_admin_permission_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `from` varchar(255) DEFAULT NULL,
  `body_en` varchar(255) NOT NULL,
  `body_ar` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `reading_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title_ar`, `title_en`, `from`, `body_en`, `body_ar`, `link`, `reading_at`, `created_at`, `updated_at`) VALUES
(1, 'تواصل معنا', 'Contact us', 'Holaa', 'There is a new message coming from our contact page', 'هناك رسالة جديدة قادمة من صفحة تواصل معنا', 'http://127.0.0.1:8000/contact-messages', '2024-01-01 08:59:57', '2023-11-09 11:16:47', '2024-01-01 08:59:57'),
(2, 'تواصل معنا', 'Contact us', 'Holaa', 'There is a new message coming from our contact page', 'هناك رسالة جديدة قادمة من صفحة تواصل معنا', 'https://aldana.emcan-group.com/contact-messages', '2024-01-01 08:59:57', '2023-11-23 10:49:48', '2024-01-01 08:59:57'),
(3, 'تواصل معنا', 'Contact us', 'name1', 'There is a new message coming from our contact page', 'هناك رسالة جديدة قادمة من صفحة تواصل معنا', 'http://aldana.emcan-group.com/contact-messages', '2024-01-01 08:59:57', '2023-11-23 13:55:13', '2024-01-01 08:59:57'),
(4, 'تواصل معنا', 'Contact us', 'amira', 'There is a new message coming from our contact page', 'هناك رسالة جديدة قادمة من صفحة تواصل معنا', 'https://www.aldana.emcan-group.com/contact-messages', '2024-01-01 08:59:57', '2023-11-26 05:31:54', '2024-01-01 08:59:57'),
(5, 'تواصل معنا', 'Contact us', 'test 2', 'There is a new message coming from our contact page', 'هناك رسالة جديدة قادمة من صفحة تواصل معنا', 'http://aldana.emcan-group.com/contact-messages', '2024-01-01 08:59:57', '2023-11-27 13:53:46', '2024-01-01 08:59:57'),
(6, 'تواصل معنا', 'Contact us', 'kjhkjhjk', 'There is a new message coming from our contact page', 'هناك رسالة جديدة قادمة من صفحة تواصل معنا', 'http://aldana.emcan-group.com/contact-messages', '2024-01-01 08:59:57', '2023-11-28 07:21:23', '2024-01-01 08:59:57'),
(7, 'تواصل معنا', 'Contact us', 'him', 'There is a new message coming from our contact page', 'هناك رسالة جديدة قادمة من صفحة تواصل معنا', 'http://aldana.emcan-group.com/contact-messages', '2024-01-01 08:59:57', '2023-11-28 07:24:30', '2024-01-01 08:59:57'),
(8, 'تواصل معنا', 'Contact us', 'Amira', 'There is a new message coming from our contact page', 'هناك رسالة جديدة قادمة من صفحة تواصل معنا', 'https://www.aldana.emcan-group.com/contact-messages', '2024-01-01 08:59:57', '2023-11-29 05:23:16', '2024-01-01 08:59:57'),
(9, 'طلب جديد', 'New Order', NULL, 'There is a new request with a value of 125.4 ', '125.4 هناك طلب جديد بقيمة', 'http://127.0.0.1:8000/dashboard/orders', '2024-01-01 11:58:11', '2024-01-01 11:52:14', '2024-01-01 11:58:11'),
(10, 'طلب جديد', 'New Order', NULL, 'There is a new request with a value of 62.7 ', '62.7 هناك طلب جديد بقيمة', 'http://127.0.0.1:8000/dashboard/orders', '2024-01-01 11:58:11', '2024-01-01 11:56:59', '2024-01-01 11:58:11'),
(11, 'طلب جديد', 'New Order', NULL, 'There is a new request with a value of 62.7 ', '62.7 هناك طلب جديد بقيمة', 'http://127.0.0.1:8000/dashboard/orders', '2024-01-01 11:58:11', '2024-01-01 11:57:38', '2024-01-01 11:58:11'),
(12, 'طلب جديد', 'New Order', NULL, 'There is a new request with a value of 62.7 ', '62.7 هناك طلب جديد بقيمة', 'http://127.0.0.1:8000/dashboard/orders', '2024-01-01 12:05:00', '2024-01-01 12:04:41', '2024-01-01 12:05:00'),
(13, 'طلب جديد', 'New Order', NULL, 'There is a new request with a value of 62.700', ' هناك طلب جديد بقيمة62.700', 'http://127.0.0.1:8000/dashboard/orders', '2024-01-01 12:06:54', '2024-01-01 12:06:47', '2024-01-01 12:06:54'),
(14, 'طلب جديد', 'New Order', NULL, 'There is a new request with a value of 62.700', ' هناك طلب جديد بقيمة 62.700', 'http://127.0.0.1:8000/dashboard/orders', '2024-05-07 04:41:45', '2024-01-01 12:07:48', '2024-05-07 04:41:45'),
(15, 'طلب جديد', 'New Order', 'Donia', 'There is a new request with a value of 63.800BHD', ' هناك طلب جديد بقيمة 63.800BHD', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-01-03 07:24:48', '2024-05-07 04:41:45'),
(16, 'طلب جديد', 'New Order', 'Donia', 'There is a new request with a value of 63.800BHD', ' هناك طلب جديد بقيمة 63.800BHD', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-01-03 07:24:55', '2024-05-07 04:41:45'),
(17, 'طلب جديد', 'New Order', 'Donia', 'There is a new request with a value of BHD 81.950', ' هناك طلب جديد بقيمة BHD 81.950', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-01-03 09:27:04', '2024-05-07 04:41:45'),
(18, 'طلب جديد', 'New Order', 'Donia', 'There is a new request with a value of BHD 81.950', ' هناك طلب جديد بقيمة BHD 81.950', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-01-03 11:26:26', '2024-05-07 04:41:45'),
(19, 'طلب جديد', 'New Order', 'Basma', 'There is a new request with a value of BHD 1161.600', ' هناك طلب جديد بقيمة BHD 1161.600', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-01-04 14:39:50', '2024-05-07 04:41:45'),
(20, 'طلب جديد', 'New Order', 'ahmed', 'There is a new request with a value of BHD 55.000', ' هناك طلب جديد بقيمة BHD 55.000', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-03-09 12:11:31', '2024-05-07 04:41:45'),
(21, 'طلب جديد', 'New Order', 'ahmed', 'There is a new request with a value of BHD 40.975', ' هناك طلب جديد بقيمة BHD 40.975', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-04-25 07:14:05', '2024-05-07 04:41:45'),
(22, 'طلب جديد', 'New Order', 'ahmed', 'There is a new request with a value of BHD 188.100', ' هناك طلب جديد بقيمة BHD 188.100', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-04-25 07:16:56', '2024-05-07 04:41:45'),
(23, 'طلب جديد', 'New Order', 'ahmed', 'There is a new request with a value of BHD 136.950', ' هناك طلب جديد بقيمة BHD 136.950', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-04-25 08:18:00', '2024-05-07 04:41:45'),
(24, 'طلب جديد', 'New Order', 'ahmed', 'There is a new request with a value of BHD 63.800', ' هناك طلب جديد بقيمة BHD 63.800', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-04-25 08:19:23', '2024-05-07 04:41:45'),
(25, 'طلب جديد', 'New Order', 'ahmed', 'There is a new request with a value of BHD 62.700', ' هناك طلب جديد بقيمة BHD 62.700', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-04-27 05:34:53', '2024-05-07 04:41:45'),
(26, 'طلب جديد', 'New Order', 'ahmed', 'There is a new request with a value of BHD 62.700', ' هناك طلب جديد بقيمة BHD 62.700', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-04-27 05:36:24', '2024-05-07 04:41:45'),
(27, 'طلب جديد', 'New Order', 'Donia', 'There is a new request with a value of BHD 2812.700', ' هناك طلب جديد بقيمة BHD 2812.700', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-04-30 11:27:36', '2024-05-07 04:41:45'),
(28, 'طلب جديد', 'New Order', 'Donia', 'There is a new request with a value of BHD 2875.400', ' هناك طلب جديد بقيمة BHD 2875.400', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-05-01 05:31:10', '2024-05-07 04:41:45'),
(29, 'طلب جديد', 'New Order', 'Donia', 'There is a new request with a value of BHD 2939.200', ' هناك طلب جديد بقيمة BHD 2939.200', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-05-01 08:33:41', '2024-05-07 04:41:45'),
(30, 'طلب جديد', 'New Order', 'Donia', 'There is a new request with a value of BHD 2980.175', ' هناك طلب جديد بقيمة BHD 2980.175', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-05-01 11:38:23', '2024-05-07 04:41:45'),
(31, 'طلب جديد', 'New Order', 'test Emcan', 'There is a new request with a value of BHD 11.000', ' هناك طلب جديد بقيمة BHD 11.000', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-05-01 12:14:27', '2024-05-07 04:41:45'),
(32, 'طلب جديد', 'New Order', 'test Emcan', 'There is a new request with a value of BHD 63.800', ' هناك طلب جديد بقيمة BHD 63.800', 'https://aldana.emcan-group.com/dashboard/orders', '2024-05-07 04:41:45', '2024-05-05 05:55:00', '2024-05-07 04:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_total` double(8,2) DEFAULT NULL,
  `vat_cost` double(8,2) DEFAULT NULL,
  `net_total` double(8,2) DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `promo_code_discount` double(8,2) DEFAULT 0.00,
  `currancy_code` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `phone`, `transaction_id`, `sub_total`, `vat_cost`, `net_total`, `is_paid`, `created_at`, `updated_at`, `promo_code_discount`, `currancy_code`, `source`, `payment_method_id`, `is_sent`) VALUES
(131, 15, 'Holaa', '+201559944997', NULL, 164.00, 16.40, 180.40, 0, '2024-01-01 10:35:55', '2024-01-01 10:35:55', 0.00, 'BHD', NULL, 5, 1),
(132, 15, 'Holaa', '+201559944997', NULL, 114.00, 11.40, 125.40, 0, '2024-01-01 11:52:14', '2024-01-01 11:52:14', 0.00, 'BHD', NULL, 5, 0),
(133, 15, 'Holaa', '+201559944997', NULL, 57.00, 5.70, 62.70, 0, '2024-01-01 11:56:59', '2024-01-01 11:56:59', 0.00, 'BHD', NULL, 5, 0),
(134, 15, 'Holaa', '+201559944997', NULL, 57.00, 5.70, 62.70, 0, '2024-01-01 11:57:38', '2024-01-01 11:57:55', 0.00, 'BHD', NULL, 5, 1),
(135, 15, 'Holaa', '+201559944997', NULL, 57.00, 5.70, 62.70, 0, '2024-01-01 12:04:41', '2024-01-01 12:04:42', 0.00, 'BHD', NULL, 5, 1),
(136, 15, 'Holaa', '+201559944997', NULL, 57.00, 5.70, 62.70, 0, '2024-01-01 12:06:47', '2024-01-01 12:06:48', 0.00, 'BHD', NULL, 5, 1),
(137, 15, 'Holaa', '+201559944997', NULL, 57.00, 5.70, 62.70, 0, '2024-01-01 12:07:48', '2024-01-01 12:08:02', 0.00, 'BHD', NULL, 5, 1),
(138, 17, 'Donia', '+201019434345', NULL, 58.00, 5.80, 63.80, 0, '2024-01-03 07:24:48', '2024-01-03 07:24:48', 0.00, 'BHD', 'src_bh.benefit', 1, 0),
(139, 17, 'Donia', '+201019434345', NULL, 58.00, 5.80, 63.80, 0, '2024-01-03 07:24:55', '2024-01-03 07:24:55', 0.00, 'BHD', NULL, 5, 0),
(140, 17, 'Donia', '+201019434345', NULL, 74.50, 7.45, 81.95, 0, '2024-01-03 09:27:04', '2024-01-03 09:27:04', 0.00, 'BHD', 'src_apple_pay', 4, 0),
(141, 17, 'Donia', '+201019434345', NULL, 74.50, 7.45, 81.95, 0, '2024-01-03 11:26:26', '2024-03-09 08:52:33', 0.00, 'BHD', NULL, 5, 1),
(142, 76, 'Basma', '+201090414929', NULL, 1056.00, 105.60, 1161.60, 0, '2024-01-04 14:39:50', '2024-03-04 13:20:31', 0.00, 'BHD', NULL, 5, 1),
(143, 81, 'ahmed', '+97333222024', NULL, 50.00, 5.00, 55.00, 0, '2024-03-09 12:11:31', '2024-03-09 12:11:31', 0.00, 'BHD', NULL, 5, 0),
(144, 81, 'ahmed', '+97333222024', NULL, 37.25, 3.73, 40.98, 0, '2024-04-25 07:14:05', '2024-04-25 07:14:05', 0.00, 'BHD', NULL, 5, 1),
(145, 81, 'ahmed', '+97333222024', NULL, 171.00, 17.10, 188.10, 0, '2024-04-25 07:16:56', '2024-04-25 07:16:59', 0.00, 'BHD', NULL, 5, 1),
(146, 81, 'ahmed', '+97333222024', NULL, 124.50, 12.45, 136.95, 0, '2024-04-25 08:18:00', '2024-04-25 08:18:02', 0.00, 'BHD', NULL, 5, 1),
(147, 81, 'ahmed', '+97333222024', NULL, 58.00, 5.80, 63.80, 0, '2024-04-25 08:19:23', '2024-04-25 08:19:23', 0.00, 'BHD', NULL, 5, 1),
(148, 81, 'ahmed', '+97333222024', NULL, 57.00, 5.70, 62.70, 0, '2024-04-27 05:34:53', '2024-04-27 05:34:53', 0.00, 'BHD', 'src_apple_pay', 4, 0),
(149, 81, 'ahmed', '+97333222024', NULL, 57.00, 5.70, 62.70, 0, '2024-04-27 05:36:24', '2024-04-27 05:36:24', 0.00, 'BHD', 'src_card', 2, 0),
(150, 17, 'Donia', '+201019434345', NULL, 2557.00, 255.70, 2812.70, 0, '2024-04-30 11:27:36', '2024-04-30 11:27:36', 0.00, 'BHD', 'src_apple_pay', 4, 0),
(151, 17, 'Donia', '+201019434345', NULL, 2614.00, 261.40, 2875.40, 0, '2024-05-01 05:31:10', '2024-05-01 05:31:10', 0.00, 'BHD', 'src_apple_pay', 4, 0),
(152, 17, 'Donia', '+201019434345', NULL, 2672.00, 267.20, 2939.20, 0, '2024-05-01 08:33:41', '2024-05-01 08:33:41', 0.00, 'BHD', 'src_apple_pay', 4, 0),
(153, 17, 'Donia', '+201019434345', NULL, 2709.25, 270.93, 2980.18, 0, '2024-05-01 11:38:23', '2024-05-01 11:38:25', 0.00, 'BHD', NULL, 5, 1),
(154, 88, 'test Emcan', '+201206721680', NULL, NULL, NULL, NULL, 0, '2024-05-01 12:13:29', '2024-05-01 12:13:29', 0.00, NULL, NULL, 5, 0),
(155, 88, 'test Emcan', '+201206721680', NULL, 10.00, 1.00, 11.00, 0, '2024-05-01 12:14:27', '2024-05-01 12:14:28', 0.00, 'BHD', NULL, 5, 1),
(156, 88, 'test Emcan', '+201206721680', NULL, 58.00, 5.80, 63.80, 0, '2024-05-05 05:55:00', '2024-05-05 05:55:01', 0.00, 'BHD', NULL, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `card_id` bigint(20) UNSIGNED DEFAULT NULL,
  `card_title_ar` varchar(255) NOT NULL,
  `card_title_en` varchar(255) NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `discount` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `serials` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `card_id`, `card_title_ar`, `card_title_en`, `price`, `discount`, `quantity`, `created_at`, `updated_at`, `serials`) VALUES
(156, 131, 89, 'بطاقة شحن ايتيونز 6000+ Free 2100 UC	', 'iTunes Recharge Card 6000+ Free 2100 UC', 52, 2, 1, '2024-01-01 10:35:55', '2024-01-01 10:35:55', '[]'),
(157, 131, 91, 'بطاقة شحن جوجل بلاي 6000+ 2100 UC مجانية', 'Free Google Play Recharge Card 6000+ 2100 UC', 60, 3, 2, '2024-01-01 10:35:55', '2024-01-01 10:35:59', '[\"11111111\", \"222222\"]'),
(158, 132, 91, 'بطاقة شحن جوجل بلاي 6000+ 2100 UC مجانية', 'Free Google Play Recharge Card 6000+ 2100 UC', 60, 3, 2, '2024-01-01 11:52:14', '2024-01-01 11:52:23', '[\"11111111\", \"222222\"]'),
(159, 133, 91, 'بطاقة شحن جوجل بلاي 6000+ 2100 UC مجانية', 'Free Google Play Recharge Card 6000+ 2100 UC', 60, 3, 1, '2024-01-01 11:56:59', '2024-01-01 11:56:59', NULL),
(160, 134, 91, 'بطاقة شحن جوجل بلاي 6000+ 2100 UC مجانية', 'Free Google Play Recharge Card 6000+ 2100 UC', 60, 3, 1, '2024-01-01 11:57:38', '2024-01-01 11:57:55', '[\"11111111\"]'),
(161, 135, 91, 'بطاقة شحن جوجل بلاي 6000+ 2100 UC مجانية', 'Free Google Play Recharge Card 6000+ 2100 UC', 60, 3, 1, '2024-01-01 12:04:41', '2024-01-01 12:04:42', '[\"222222\"]'),
(162, 136, 91, 'بطاقة شحن جوجل بلاي 6000+ 2100 UC مجانية', 'Free Google Play Recharge Card 6000+ 2100 UC', 60, 3, 1, '2024-01-01 12:06:47', '2024-01-01 12:06:48', '[\"11111111\"]'),
(163, 137, 91, 'بطاقة شحن جوجل بلاي 6000+ 2100 UC مجانية', 'Free Google Play Recharge Card 6000+ 2100 UC', 60, 3, 1, '2024-01-01 12:07:48', '2024-01-01 12:07:48', '[\"222222\"]'),
(164, 138, 90, 'بطاقة شحن بلاي ستيشن 6000+ 2100 UC مجانية', 'playstation Recharge Card 6000+ Free 2100 UCF', 60, 2, 1, '2024-01-03 07:24:48', '2024-01-03 07:24:48', NULL),
(165, 139, 90, 'بطاقة شحن بلاي ستيشن 6000+ 2100 UC مجانية', 'playstation Recharge Card 6000+ Free 2100 UCF', 60, 2, 1, '2024-01-03 07:24:55', '2024-01-03 07:24:55', '[\"444444\"]'),
(166, 140, 4, 'بطاقة شحن شدات جاتا 6000+ Free 2100 UC ', 'gta Power Recharge Card 6000+ Free 2100 UC', 40, 3, 2, '2024-01-03 09:27:04', '2024-01-03 09:27:04', NULL),
(167, 141, 4, 'بطاقة شحن شدات جاتا 6000+ Free 2100 UC ', 'gta Power Recharge Card 6000+ Free 2100 UC', 40, 3, 2, '2024-01-03 11:26:26', '2024-01-03 11:26:26', '[\"66666\",\"7777777\"]'),
(168, 142, 93, 'new card تست', 'new card ', 543, 15, 2, '2024-01-04 14:39:50', '2024-01-04 14:39:50', '[\"45788963\",\"8754316+\"]'),
(169, 143, 89, 'بطاقة شحن ايتيونز 6000+ Free 2100 UC	', 'iTunes Recharge Card 6000+ Free 2100 UC', 52, 2, 1, '2024-03-09 12:11:31', '2024-03-09 12:11:31', '[\"5555555\"]'),
(170, 144, 4, 'بطاقة شحن شدات جاتا 6000+ Free 2100 UC ', 'gta Power Recharge Card 6000+ Free 2100 UC', 40, 3, 1, '2024-04-25 07:14:05', '2024-04-25 07:14:05', '[\"4354\"]'),
(171, 145, 91, 'بطاقة شحن جوجل بلاي 6000+ 2100 UC مجانية', 'Free Google Play Recharge Card 6000+ 2100 UC', 60, 3, 3, '2024-04-25 07:16:56', '2024-04-25 07:16:59', '[\"435435345\",\"435345435\",\"43543543\"]'),
(172, 146, 4, 'بطاقة شحن شدات جاتا 6000+ Free 2100 UC ', 'gta Power Recharge Card 6000+ Free 2100 UC', 40, 3, 2, '2024-04-25 08:18:00', '2024-04-25 08:18:02', '[\"543543\",\"345435\"]'),
(173, 146, 89, 'بطاقة شحن ايتيونز 6000+ Free 2100 UC	', 'iTunes Recharge Card 6000+ Free 2100 UC', 52, 2, 1, '2024-04-25 08:18:00', '2024-04-25 08:18:03', '[\"5435435\"]'),
(174, 147, 90, 'بطاقة شحن بلاي ستيشن 6000+ 2100 UC مجانية', 'playstation Recharge Card 6000+ Free 2100 UCF', 60, 2, 1, '2024-04-25 08:19:23', '2024-04-25 08:19:23', '[\"4353543\"]'),
(175, 148, 91, 'بطاقة شحن جوجل بلاي 6000+ 2100 UC مجانية', 'Free Google Play Recharge Card 6000+ 2100 UC', 60, 3, 1, '2024-04-27 05:34:53', '2024-04-27 05:34:53', NULL),
(176, 149, 91, 'بطاقة شحن جوجل بلاي 6000+ 2100 UC مجانية', 'Free Google Play Recharge Card 6000+ 2100 UC', 60, 3, 1, '2024-04-27 05:36:24', '2024-04-27 05:36:24', NULL),
(177, 150, 89, 'أومليت ايطالي', 'Italian omelet', 52, 2, 50, '2024-04-30 11:27:36', '2024-04-30 11:27:36', NULL),
(178, 150, 91, 'شكشوكة', 'Shakshuka', 60, 3, 1, '2024-04-30 11:27:36', '2024-04-30 11:27:36', NULL),
(179, 151, 89, 'أومليت ايطالي', 'Italian omelet', 52, 2, 50, '2024-05-01 05:31:10', '2024-05-01 05:31:10', NULL),
(180, 151, 91, 'شكشوكة', 'Shakshuka', 60, 3, 2, '2024-05-01 05:31:10', '2024-05-01 05:31:10', NULL),
(181, 152, 89, 'أومليت ايطالي', 'Italian omelet', 52, 2, 50, '2024-05-01 08:33:41', '2024-05-01 08:33:41', NULL),
(182, 152, 91, 'شكشوكة', 'Shakshuka', 60, 3, 2, '2024-05-01 08:33:41', '2024-05-01 08:33:41', NULL),
(183, 152, 90, 'بيض طماط خاص', 'Special tomato eggs', 60, 2, 1, '2024-05-01 08:33:41', '2024-05-01 08:33:41', NULL),
(184, 153, 89, 'أومليت ايطالي', 'Italian omelet', 52, 2, 50, '2024-05-01 11:38:23', '2024-05-01 11:38:25', '[\"872\",\"78\"]'),
(185, 153, 91, 'شكشوكة', 'Shakshuka', 60, 3, 2, '2024-05-01 11:38:23', '2024-05-01 11:38:25', '[\"457447887555\"]'),
(186, 153, 90, 'بيض طماط خاص', 'Special tomato eggs', 60, 2, 1, '2024-05-01 11:38:23', '2024-05-01 11:38:26', '[\"7786\"]'),
(187, 153, 4, 'بيض مخفوق مع شرائح مشروم', 'Scrambled eggs with mushroom slices', 40, 3, 1, '2024-05-01 11:38:23', '2024-05-01 11:38:27', '[\"17828\"]'),
(188, 154, 94, 'بيض بالسوسيس و الخضار', 'eggs with sausage and vegetables', 10, 0, 2, '2024-05-01 12:13:29', '2024-05-01 12:13:29', NULL),
(189, 155, 94, 'بيض بالسوسيس و الخضار', 'eggs with sausage and vegetables', 10, 0, 1, '2024-05-01 12:14:27', '2024-05-01 12:14:28', '[\"7487\"]'),
(190, 156, 90, 'بيض طماط خاص', 'Special tomato eggs', 60, 2, 1, '2024-05-05 05:55:00', '2024-05-05 05:55:01', '[\"786\\/\"]');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tap_src` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `display` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `tap_src`, `name_ar`, `name_en`, `image`, `display`, `created_at`, `updated_at`) VALUES
(1, 'src_bh.benefit', 'بطاقة الصراف الآلي', 'Debit Card', 'https://btchocolateapp.com/uploads/payment_methods/1693910509.png', 0, '2021-06-02 00:48:55', '2024-05-01 10:26:12'),
(2, 'src_card', 'بطاقة الإئتمان', 'Credit Card', 'https://btchocolateapp.com/public/uploads/payment_methods/1693910651.png', 0, '2021-06-02 00:48:55', '2024-05-01 10:26:08'),
(3, 'src_bh.benefit', 'بنفت باي', 'Benefit Pay', 'https://btchocolateapp.com/public/uploads/payment_methods/1693402771.png', 0, '2021-06-02 00:48:55', '2024-05-01 10:26:09'),
(4, 'src_apple_pay', 'أبل باي', 'Apple Pay', 'https://btchocolateapp.com/public/uploads/payment_methods/1693402472.png', 0, '2021-06-02 00:48:55', '2024-05-01 10:26:10'),
(5, NULL, 'كاش', 'Cash', 'https://btchocolateapp.com/uploads/payment_methods/1622645372.png', 1, NULL, '2023-12-10 12:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title_ar`, `title_en`, `created_at`, `updated_at`) VALUES
(44, 'مشاهدة المجموعات', 'show groups', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(45, 'اضافة المجموعات', 'add groups', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(46, 'تعديل المجموعات', 'edit groups', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(47, 'حذف المجموعات', 'delete groups', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(48, 'مشاهدة الأقسام', 'show categories', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(49, 'اضافة الأقسام', 'add categories', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(50, 'تعديل الأقسام', 'edit categories', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(51, 'حذف الأقسام', 'delete categories', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(52, 'مشاهدة البطاقات', 'show cards', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(53, 'اضافة البطاقات', 'add cards', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(54, 'تعديل البطاقات', 'edit cards', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(55, 'حذف البطاقات', 'delete cards', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(56, 'مشاهدة السيريالات', 'show serials', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(57, 'اضافة السيريالات', 'add serials', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(58, 'تعديل السيريالات', 'edit serials', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(59, 'حذف السيريالات', 'delete serials', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(60, 'مشاهدة المستخدمين', 'show users', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(61, 'اضافة المستخدمين', 'add users', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(62, 'تعديل المستخدمين', 'edit users', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(63, 'حذف المستخدمين', 'delete users', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(64, 'حظر المستخدمين', 'block users', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(65, 'تنبيه المستخدمين', 'notify users', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(66, 'مشاهدة المسئولين', 'show admins', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(67, 'اضافة المسئولين', 'add admins', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(68, 'تعديل المسئولين', 'edit admins', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(69, 'حذف المسئولين', 'delete admins', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(70, 'صلاحيات المسئولين', 'admins permissions', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(71, 'مشاهدة رسائل التواصل', 'show contact messages', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(72, 'الرد على رسائل التواصل', 'response on contact messages', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(73, 'حذف رسائل التواصل', 'delete contact messages', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(74, 'مشاهدة صور السلايد', 'show slides', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(75, 'اضافة صور السلايد', 'add slides', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(76, 'تعديل صور السلايد', 'edit slides', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(77, 'حذف صور السلايد', 'delete slides', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(78, 'مشاهدة الاعدادات', 'show settings', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(79, 'تعديل الاعدادات', 'edit settings', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(80, 'مشاهدة وسائل الدفع', 'show payment methods', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(81, 'تعديل وسائل الدفع', 'edit payment methods', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(82, 'مشاهدة من نحن', 'show about us', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(83, 'تعديل من نحن', 'edit about us', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(84, 'مشاهدة الشروط والأحكام', 'show terms and condations', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(85, 'اضافة الشروط والأحكام', 'add terms and condations', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(86, 'مشاهدة سياسة الخصوصية', 'show privacy policy', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(87, 'اضافة سياسة الخصوصية', 'add privacy policy', '2024-01-02 09:24:45', '2024-01-02 09:24:45'),
(88, 'مشاهدة المجموعات', 'show groups', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(89, 'اضافة المجموعات', 'add groups', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(90, 'تعديل المجموعات', 'edit groups', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(91, 'حذف المجموعات', 'delete groups', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(92, 'مشاهدة كوبونات الخصم', 'show promo codes', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(93, 'اضافة كوبونات الخصم', 'add promo codes', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(94, 'تعديل كوبونات الخصم', 'edit promo codes', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(95, 'حذف كوبونات الخصم', 'delete promo codes', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(96, 'مشاهدة الطلبات', 'show orders', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(97, 'تعديل اعدادات الطلبات', 'edit orders setting', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(98, 'تعديل الطلبات', 'edit orders', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(99, 'مشاهدة الأقسام', 'show categories', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(100, 'اضافة الأقسام', 'add categories', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(101, 'تعديل الأقسام', 'edit categories', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(102, 'حذف الأقسام', 'delete categories', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(103, 'مشاهدة البطاقات', 'show cards', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(104, 'اضافة البطاقات', 'add cards', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(105, 'تعديل البطاقات', 'edit cards', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(106, 'حذف البطاقات', 'delete cards', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(107, 'مشاهدة السيريالات', 'show serials', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(108, 'اضافة السيريالات', 'add serials', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(109, 'تعديل السيريالات', 'edit serials', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(110, 'حذف السيريالات', 'delete serials', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(111, 'مشاهدة المستخدمين', 'show users', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(112, 'اضافة المستخدمين', 'add users', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(113, 'تعديل المستخدمين', 'edit users', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(114, 'حذف المستخدمين', 'delete users', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(115, 'حظر المستخدمين', 'block users', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(116, 'تنبيه المستخدمين', 'notify users', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(117, 'مشاهدة المسئولين', 'show admins', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(118, 'اضافة المسئولين', 'add admins', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(119, 'تعديل المسئولين', 'edit admins', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(120, 'حذف المسئولين', 'delete admins', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(121, 'صلاحيات المسئولين', 'admins permissions', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(122, 'مشاهدة رسائل التواصل', 'show contact messages', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(123, 'الرد على رسائل التواصل', 'response on contact messages', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(124, 'حذف رسائل التواصل', 'delete contact messages', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(125, 'مشاهدة صور السلايد', 'show slides', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(126, 'اضافة صور السلايد', 'add slides', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(127, 'تعديل صور السلايد', 'edit slides', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(128, 'حذف صور السلايد', 'delete slides', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(129, 'مشاهدة الاعدادات', 'show settings', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(130, 'تعديل الاعدادات', 'edit settings', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(131, 'مشاهدة وسائل الدفع', 'show payment methods', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(132, 'تعديل وسائل الدفع', 'edit payment methods', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(133, 'مشاهدة من نحن', 'show about us', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(134, 'تعديل من نحن', 'edit about us', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(135, 'مشاهدة الشروط والأحكام', 'show terms and condations', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(136, 'تعديل الشروط والأحكام', 'edit terms and condations', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(137, 'مشاهدة صور سياسة الخصوصية', 'show privacy policy', '2024-01-02 11:23:42', '2024-01-02 11:23:42'),
(138, 'تعديل صور سياسة الخصوصية', 'edit privacy policy', '2024-01-02 11:23:42', '2024-01-02 11:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', 'f3539eb1f2f2f9065ac4caa03b855622b707bc3397a9ec62e9ecfe9cc5b0a281', '[\"*\"]', NULL, NULL, '2023-10-30 07:52:06', '2023-10-30 07:52:06'),
(2, 'App\\Models\\User', 2, 'API TOKEN', '5b7b7467ad64505ac3cf71b7610ee84f24ad859bb16e3ed311ed312f106e0239', '[\"*\"]', NULL, NULL, '2023-10-30 07:56:29', '2023-10-30 07:56:29'),
(3, 'App\\Models\\User', 2, 'API TOKEN', '4a2a8809c4fd2fd9de974a4e4cb5d494da4538a6aea723bb3507ac059ddfa7f1', '[\"*\"]', NULL, NULL, '2023-10-30 07:57:31', '2023-10-30 07:57:31'),
(4, 'App\\Models\\User', 3, 'API TOKEN', '12091c13524b83c20712ed98a4e4c79a017f0e3b13c371c0df3593f195ce5fe0', '[\"*\"]', NULL, NULL, '2023-10-30 07:58:25', '2023-10-30 07:58:25'),
(5, 'App\\Models\\User', 4, 'API TOKEN', 'e88ac92ec3363dc95a69f1ecaed488b0e8b14022a3f594a7f7e00d5f964966b4', '[\"*\"]', NULL, NULL, '2023-10-30 07:59:38', '2023-10-30 07:59:38'),
(6, 'App\\Models\\User', 4, 'API TOKEN', '71b3ba4ede0f0360d91d31f8cb42d06f82f3601faf69a4651a92e66456da71ee', '[\"*\"]', NULL, NULL, '2023-10-30 07:59:57', '2023-10-30 07:59:57'),
(7, 'App\\Models\\User', 4, 'API TOKEN', 'ece20a8cf87529c32a4603c7ebd19876f0af0f47373dbf5725abc08087f90546', '[\"*\"]', NULL, NULL, '2023-10-30 08:01:34', '2023-10-30 08:01:34'),
(8, 'App\\Models\\User', 5, 'API TOKEN', '85194f756e6c24a312694d5b03803207a516b9bfbc2858a29405f3e9441ab115', '[\"*\"]', NULL, NULL, '2023-10-31 10:31:43', '2023-10-31 10:31:43'),
(9, 'App\\Models\\User', 6, 'API TOKEN', 'bb972664fdda0edac3797390a52916155ffb2cd1d019646d8369a8925d04b377', '[\"*\"]', '2023-11-05 07:27:40', NULL, '2023-10-31 10:34:48', '2023-11-05 07:27:40'),
(10, 'App\\Models\\User', 6, 'API TOKEN', '66a59669a8ef9e9d8118f0dc718ad7a5bbe8de3178186fb2485e9b82696321ab', '[\"*\"]', NULL, NULL, '2023-10-31 10:46:38', '2023-10-31 10:46:38'),
(11, 'App\\Models\\User', 6, 'API TOKEN', 'db74f7802a6a8b57034e28de5a40a8e571a01769b226375111e89d4c4b2b0eb9', '[\"*\"]', NULL, NULL, '2023-10-31 10:53:18', '2023-10-31 10:53:18'),
(12, 'App\\Models\\User', 6, 'API TOKEN', '81f48c8d5978fb8f38ac0f4e673c3a897513aa1600c3f548c9d9bd307361ae3a', '[\"*\"]', NULL, NULL, '2023-10-31 10:55:24', '2023-10-31 10:55:24'),
(13, 'App\\Models\\User', 6, 'API TOKEN', '4b6fbffc2e1370cac6385870f3b941015d402047a9264601e7b378b8cb813e8b', '[\"*\"]', '2023-11-02 11:56:20', NULL, '2023-11-01 07:40:03', '2023-11-02 11:56:20'),
(14, 'App\\Models\\User', 10, 'API TOKEN', '815a3753a92a8ec2cb1865cad6588dcdc3fa36a76c6a2e733cfb8db092d4c79e', '[\"*\"]', NULL, NULL, '2023-11-02 11:13:32', '2023-11-02 11:13:32'),
(15, 'App\\Models\\User', 11, 'API TOKEN', 'e92cd7543065f6da6785133e305ae6cb5968ffe5371343420df2ee33c1d50c80', '[\"*\"]', NULL, NULL, '2023-11-02 11:58:32', '2023-11-02 11:58:32'),
(16, 'App\\Models\\User', 11, 'API TOKEN', '8a7ce61fe9d0070ccb9bee621e74c66053b59347d63df81c58770b5cd2716d42', '[\"*\"]', '2023-11-02 13:58:50', NULL, '2023-11-02 11:58:40', '2023-11-02 13:58:50'),
(17, 'App\\Models\\User', 11, 'API TOKEN', 'c7725306247169100cc1f217404dd7cbf68ce3c7e98fdf481fc530f0f707bab2', '[\"*\"]', '2023-11-05 06:56:09', NULL, '2023-11-02 13:59:41', '2023-11-05 06:56:09'),
(18, 'App\\Models\\User', 12, 'API TOKEN', 'ca837b4ca7269e8407cbcaa719e62844dd3957d22cf17e43d9a146d5dcc1c015', '[\"*\"]', NULL, NULL, '2023-11-05 06:36:11', '2023-11-05 06:36:11'),
(19, 'App\\Models\\User', 13, 'API TOKEN', '744d37420167e675f1d92825a82de3fb0d480f06453bac10a3fc4a496309e368', '[\"*\"]', NULL, NULL, '2023-11-05 06:39:25', '2023-11-05 06:39:25'),
(20, 'App\\Models\\User', 14, 'API TOKEN', '7a2cf747c3b252243a41f95898e5147431fcbea324f8aa65b72f53c9ccba9f04', '[\"*\"]', NULL, NULL, '2023-11-05 06:41:42', '2023-11-05 06:41:42'),
(21, 'App\\Models\\User', 11, 'API TOKEN', '13181e5e5dcc4de9a6a1a2a15eea4d64833ee9762951bccf4caa2438f67896a1', '[\"*\"]', NULL, NULL, '2023-11-05 06:41:50', '2023-11-05 06:41:50'),
(33, 'App\\Models\\User', 16, 'API TOKEN', '2a3896241c6e506f4b1535f6e4b3919e95d33cb09ecc634a7e73637ee0fe429f', '[\"*\"]', '2023-11-09 10:51:53', NULL, '2023-11-09 06:23:45', '2023-11-09 10:51:53'),
(51, 'App\\Models\\User', 18, 'API TOKEN', 'bdc2646fe67579de6b83aa10b92c205c5cf020d76d2d31e71a88df593c002003', '[\"*\"]', '2023-11-22 08:58:41', NULL, '2023-11-22 08:57:46', '2023-11-22 08:58:41'),
(52, 'App\\Models\\User', 18, 'API TOKEN', '780dc196ebb680695aba7e2200deb863ebf2574c8f7baf36ccc53c7cce1f27c1', '[\"*\"]', '2023-11-22 08:58:53', NULL, '2023-11-22 08:58:41', '2023-11-22 08:58:53'),
(53, 'App\\Models\\User', 18, 'API TOKEN', 'b549f82cb049e886abde522bfdd2fe109295e86e7d7b7144673887331237ff2e', '[\"*\"]', '2023-11-22 08:58:58', NULL, '2023-11-22 08:58:53', '2023-11-22 08:58:58'),
(54, 'App\\Models\\User', 18, 'API TOKEN', '2a18e62cc33fb17b6c15fc39826b2d069ac4af8464886521e8854eeea0a08bef', '[\"*\"]', '2023-11-22 08:59:00', NULL, '2023-11-22 08:58:58', '2023-11-22 08:59:00'),
(55, 'App\\Models\\User', 20, 'API TOKEN', 'eeda8c610ddf6d8308e0c7d62a809ec6396e3a97255d20703c5277516a2bf3b5', '[\"*\"]', '2023-11-22 09:11:03', NULL, '2023-11-22 09:03:48', '2023-11-22 09:11:03'),
(56, 'App\\Models\\User', 20, 'API TOKEN', 'c70c3eb9befa32b2ca3dd265cbdba0017b9c4b55b922b0ef50d3aec5979d7165', '[\"*\"]', NULL, NULL, '2023-11-22 09:04:35', '2023-11-22 09:04:35'),
(57, 'App\\Models\\User', 20, 'API TOKEN', '205a5a8568f1db30cba8becb0acd56feb8aaebf4be06287dc4825b3eec9d5898', '[\"*\"]', '2023-11-22 09:11:13', NULL, '2023-11-22 09:11:03', '2023-11-22 09:11:13'),
(59, 'App\\Models\\User', 20, 'API TOKEN', '28725253e866dd9be92dc6b296dfcf81f756b4aed79800f26f2061f7f1ec404c', '[\"*\"]', '2023-11-22 13:06:33', NULL, '2023-11-22 13:03:13', '2023-11-22 13:06:33'),
(60, 'App\\Models\\User', 20, 'API TOKEN', '6475d70b9ed9555113cd57e675aceb9ac5a5b4e9ca79c7cc96e047d54b67184c', '[\"*\"]', '2023-11-23 09:31:52', NULL, '2023-11-22 13:06:33', '2023-11-23 09:31:52'),
(61, 'App\\Models\\User', 21, 'API TOKEN', '3953faf5757bf2c4ea9d3d849f92b56319e97a080c4b9fdec2f4b0710538053a', '[\"*\"]', '2023-11-23 11:19:29', NULL, '2023-11-23 11:18:08', '2023-11-23 11:19:29'),
(62, 'App\\Models\\User', 21, 'API TOKEN', '34933438a38678d978fc4c1c410ce6fe5e8d975ecd969fbd69ce45f1e9e2cd5b', '[\"*\"]', NULL, NULL, '2023-11-23 11:18:39', '2023-11-23 11:18:39'),
(63, 'App\\Models\\User', 21, 'API TOKEN', 'c965dd450fe198653b8840739a9e4e0cb4c4f8e8c77219d78f57a862a76fd9c6', '[\"*\"]', '2023-11-23 11:19:31', NULL, '2023-11-23 11:19:29', '2023-11-23 11:19:31'),
(65, 'App\\Models\\User', 22, 'API TOKEN', '778d11f06f2061755e0ab77540f7be229f76f18a61f2acce6b0364748a9bf6c8', '[\"*\"]', NULL, NULL, '2023-11-23 11:23:09', '2023-11-23 11:23:09'),
(66, 'App\\Models\\User', 22, 'API TOKEN', '2257bf58bc010def19b41a3bfd9c1b1a2c12aaec4f8cfad7e9ab553061dbf5b4', '[\"*\"]', '2023-11-23 11:53:11', NULL, '2023-11-23 11:51:55', '2023-11-23 11:53:11'),
(67, 'App\\Models\\User', 22, 'API TOKEN', 'c7610217413b8303c66fe38efc8227f0c62a0d00f5fde2695d54bcb8f9cc58cc', '[\"*\"]', NULL, NULL, '2023-11-23 11:53:11', '2023-11-23 11:53:11'),
(70, 'App\\Models\\User', 22, 'API TOKEN', '1ff64968e5507288945c15906ca204396d01ba139c9252179e3583e6c5155194', '[\"*\"]', '2023-11-23 12:44:23', NULL, '2023-11-23 12:44:15', '2023-11-23 12:44:23'),
(71, 'App\\Models\\User', 22, 'API TOKEN', '4ded5963c4a1813257bbb5c7bf7052b7bba6a7bcc779bf50175f2c988132bf0d', '[\"*\"]', '2023-11-23 12:44:24', NULL, '2023-11-23 12:44:23', '2023-11-23 12:44:24'),
(73, 'App\\Models\\User', 23, 'API TOKEN', 'a9a33287f8e0b9d82122f4829343942ae6eb5070044b10da6c12bcc9d3c2315b', '[\"*\"]', NULL, NULL, '2023-11-23 12:46:46', '2023-11-23 12:46:46'),
(74, 'App\\Models\\User', 23, 'API TOKEN', 'b1266007d0e4ce076a5d725a6ad8bdc6716d747ead1769d0f2478bbaa785108e', '[\"*\"]', NULL, NULL, '2023-11-23 12:47:43', '2023-11-23 12:47:43'),
(76, 'App\\Models\\User', 20, 'API TOKEN', 'ae6020995d3b5f19f964ab2ec6c0fbe04ca8468c50dcbccfc0b8140e0d241499', '[\"*\"]', '2023-11-25 17:39:37', NULL, '2023-11-25 16:16:14', '2023-11-25 17:39:37'),
(77, 'App\\Models\\User', 20, 'API TOKEN', '29f6665d099a49a47eaa5fd05a3a0027f8e1c1846bb9665b24c3e650dd080c0d', '[\"*\"]', '2023-11-25 17:39:53', NULL, '2023-11-25 17:39:37', '2023-11-25 17:39:53'),
(78, 'App\\Models\\User', 20, 'API TOKEN', '5731e0148b044554733201b882d81e8767da74a9f375bca6fa6a7b90ad9b7d31', '[\"*\"]', '2023-11-25 17:40:56', NULL, '2023-11-25 17:39:53', '2023-11-25 17:40:56'),
(79, 'App\\Models\\User', 24, 'API TOKEN', '39d6c3c1a497f6850b0fd28f693746ad11837f905dbb17efcbff8452c7c3c806', '[\"*\"]', '2023-11-25 17:45:51', NULL, '2023-11-25 17:45:06', '2023-11-25 17:45:51'),
(80, 'App\\Models\\User', 24, 'API TOKEN', 'd48913dce32a65126d0c108880e673a28ed9424e0d5a6c974f472a42870ec00f', '[\"*\"]', '2023-11-25 17:46:08', NULL, '2023-11-25 17:45:51', '2023-11-25 17:46:08'),
(81, 'App\\Models\\User', 24, 'API TOKEN', 'fbf9347c7e089d88e6cc5e14737cd409c08732ed15cfdd5005dd1165538c5a60', '[\"*\"]', '2023-11-25 17:46:10', NULL, '2023-11-25 17:46:08', '2023-11-25 17:46:10'),
(82, 'App\\Models\\User', 25, 'API TOKEN', '8687619abbdd46b17e66747b4f79d6e141ad3ffeb84db1b487de29ad64677355', '[\"*\"]', '2023-11-25 17:50:34', NULL, '2023-11-25 17:49:45', '2023-11-25 17:50:34'),
(83, 'App\\Models\\User', 25, 'API TOKEN', '815562efd62da30bfaf5769b7a962c1d73a288bfa9c75bae5ecc31d258543917', '[\"*\"]', '2023-11-25 17:56:35', NULL, '2023-11-25 17:50:34', '2023-11-25 17:56:35'),
(84, 'App\\Models\\User', 25, 'API TOKEN', 'fb50ca64e69f3e00546798ef6acae4cf8c89358a456a796d2bd944345719707b', '[\"*\"]', NULL, NULL, '2023-11-25 17:52:45', '2023-11-25 17:52:45'),
(85, 'App\\Models\\User', 25, 'API TOKEN', 'a0656db7aeab779b4a31b823832ee5953aca4ad8038fb44ca0f6ccd4d562dc47', '[\"*\"]', '2023-11-25 18:19:39', NULL, '2023-11-25 17:56:35', '2023-11-25 18:19:39'),
(86, 'App\\Models\\User', 25, 'API TOKEN', 'e44d37aed8f98acca1b9b1f7ccc67308d87c86f38865b06aa8ae29fb9cd186dd', '[\"*\"]', '2023-11-26 04:15:03', NULL, '2023-11-25 18:23:08', '2023-11-26 04:15:03'),
(87, 'App\\Models\\User', 25, 'API TOKEN', 'fce511ebcf17927256f839ab5557dbeb85549c7a33a8538da58f137759eb4475', '[\"*\"]', '2023-11-26 05:17:24', NULL, '2023-11-26 05:16:06', '2023-11-26 05:17:24'),
(88, 'App\\Models\\User', 25, 'API TOKEN', '4e2449b4cf321ade2b3be36cd6dd1b39d4445b39c421e1c53e87ead176adff04', '[\"*\"]', '2023-11-26 05:17:54', NULL, '2023-11-26 05:17:24', '2023-11-26 05:17:54'),
(89, 'App\\Models\\User', 25, 'API TOKEN', '44ead8708e2ed5a036cc6dabea4b93c023406a97c0c46166c01f411f72cbb2a5', '[\"*\"]', '2023-11-26 05:21:37', NULL, '2023-11-26 05:17:54', '2023-11-26 05:21:37'),
(90, 'App\\Models\\User', 25, 'API TOKEN', '6ad6be2eb72cecbdf7485787a66fdc23499f6ac88efab444dcab39f632d8af08', '[\"*\"]', '2023-11-26 05:24:48', NULL, '2023-11-26 05:21:37', '2023-11-26 05:24:48'),
(91, 'App\\Models\\User', 25, 'API TOKEN', '2ba79c7a6b2c9bacad1f16f63951a3fe27a22399422bb7e88b6a10a16816730b', '[\"*\"]', '2023-11-26 05:54:38', NULL, '2023-11-26 05:39:15', '2023-11-26 05:54:38'),
(92, 'App\\Models\\User', 25, 'API TOKEN', 'e0f6ed6695d5a012696b44ca114badd8f6e82728a99a715c6095c5f1392ed4fa', '[\"*\"]', '2023-11-26 05:56:07', NULL, '2023-11-26 05:56:04', '2023-11-26 05:56:07'),
(94, 'App\\Models\\User', 25, 'API TOKEN', '95abfc5d46af0d58559323bc5c1906783a07c8996585250ae9c43852770373bd', '[\"*\"]', '2023-11-26 06:27:34', NULL, '2023-11-26 06:24:59', '2023-11-26 06:27:34'),
(95, 'App\\Models\\User', 25, 'API TOKEN', '41097e3237d92726cc465aa0a9ec04e2011847a0141c084bfa0d4149621d21ae', '[\"*\"]', '2023-11-26 08:02:37', NULL, '2023-11-26 06:27:34', '2023-11-26 08:02:37'),
(96, 'App\\Models\\User', 25, 'API TOKEN', 'cc0a3dd429de0fbda4fd491baadda434ff7d6604972947031d4c9cb3166e0474', '[\"*\"]', '2023-11-26 09:40:25', NULL, '2023-11-26 08:02:37', '2023-11-26 09:40:25'),
(97, 'App\\Models\\User', 25, 'API TOKEN', '7751f64b0ed52622ab3383ec9e82228ef654f37c20070ed75fdb50b21fea4c8c', '[\"*\"]', '2023-11-26 09:46:18', NULL, '2023-11-26 09:40:25', '2023-11-26 09:46:18'),
(98, 'App\\Models\\User', 25, 'API TOKEN', '57c282d95f6ec06a88de2e591206d0a8710a51ef0f8e8ebeebf14a0987182c90', '[\"*\"]', '2023-11-26 13:33:06', NULL, '2023-11-26 09:49:30', '2023-11-26 13:33:06'),
(99, 'App\\Models\\User', 25, 'API TOKEN', '30bfc8c3ce69aeadb8738f239b2d0656c9ae0bf3fc82f0aaa39dab217d241ad7', '[\"*\"]', '2023-11-27 06:05:53', NULL, '2023-11-26 13:33:06', '2023-11-27 06:05:53'),
(100, 'App\\Models\\User', 25, 'API TOKEN', 'ae2ebbff841ba4c523e7d572a2a485b1bc7657a252ac54cabcaf6ad126ece008', '[\"*\"]', '2023-11-27 06:08:55', NULL, '2023-11-27 06:05:53', '2023-11-27 06:08:55'),
(101, 'App\\Models\\User', 25, 'API TOKEN', '7d8b4b8fac7217c174855f23cc60552fd5b9119793e16f8ecef613d672b83cbb', '[\"*\"]', '2023-11-27 06:09:04', NULL, '2023-11-27 06:08:55', '2023-11-27 06:09:04'),
(102, 'App\\Models\\User', 25, 'API TOKEN', '8cc1a0c3a8141f49578ebe0890d0318869636c83ffcf7c2c91a9549a77dbeb1c', '[\"*\"]', '2023-11-27 06:09:10', NULL, '2023-11-27 06:09:04', '2023-11-27 06:09:10'),
(103, 'App\\Models\\User', 25, 'API TOKEN', 'e0e658a925521b53799a69c40f56abfdc975a53751ebe21fcf6b1c2bfe5af7b1', '[\"*\"]', '2023-11-27 06:11:29', NULL, '2023-11-27 06:09:10', '2023-11-27 06:11:29'),
(104, 'App\\Models\\User', 25, 'API TOKEN', 'a80918f551aa02211a7f573c67aea8c99ac68dfcd9012a7c7c0821ef023f9c76', '[\"*\"]', '2023-11-27 06:11:47', NULL, '2023-11-27 06:11:29', '2023-11-27 06:11:47'),
(105, 'App\\Models\\User', 25, 'API TOKEN', 'abc2e770f133495f7a8b7642dd99cde5b043504cf453aa9dc2c36d6e38130c96', '[\"*\"]', '2023-11-27 06:15:18', NULL, '2023-11-27 06:11:47', '2023-11-27 06:15:18'),
(106, 'App\\Models\\User', 25, 'API TOKEN', 'da9bb7de7b136ce55d277d47c878879ee9aa2c5e027b8d17ee09eb63c786f6a5', '[\"*\"]', '2023-11-27 07:37:50', NULL, '2023-11-27 07:36:55', '2023-11-27 07:37:50'),
(107, 'App\\Models\\User', 25, 'API TOKEN', '9c8aa7d9d31775dd28f12aa2bd8eeb1a971b39e890b637192d3376693b3c58cb', '[\"*\"]', '2023-11-27 07:39:15', NULL, '2023-11-27 07:37:50', '2023-11-27 07:39:15'),
(108, 'App\\Models\\User', 25, 'API TOKEN', 'da253bd361074fb98099b1ecfeff89883b18d3b085f7f066e4a8d3179bacfd8e', '[\"*\"]', NULL, NULL, '2023-11-27 07:39:15', '2023-11-27 07:39:15'),
(109, 'App\\Models\\User', 25, 'API TOKEN', '22b5b6a22226c01537b04e9a4c643fda0f49b3b6386eac129650641298889b9b', '[\"*\"]', '2023-11-27 07:40:40', NULL, '2023-11-27 07:39:15', '2023-11-27 07:40:40'),
(111, 'App\\Models\\User', 25, 'API TOKEN', 'c1cbc41c75a0c5412cc84fe776f11241fad36de292d50911c5c47779295c57d0', '[\"*\"]', '2023-11-27 12:35:11', NULL, '2023-11-27 07:47:41', '2023-11-27 12:35:11'),
(112, 'App\\Models\\User', 23, 'API TOKEN', '7400b1c89c6f95ad58da111876c66f93af1c49d5a9236cfc69fd5915e617abe9', '[\"*\"]', '2023-11-27 11:09:05', NULL, '2023-11-27 11:08:54', '2023-11-27 11:09:05'),
(117, 'App\\Models\\User', 28, 'API TOKEN', '831bb351881247ccf54227a90b7b0d305237a12714e6038a16552dfb0add2514', '[\"*\"]', '2023-11-27 12:07:41', NULL, '2023-11-27 12:07:22', '2023-11-27 12:07:41'),
(118, 'App\\Models\\User', 28, 'API TOKEN', '23e6359ab2f01109533de5da2c62909f2910310faf555a3609e32e818947c6ef', '[\"*\"]', '2023-11-27 12:28:13', NULL, '2023-11-27 12:07:41', '2023-11-27 12:28:13'),
(119, 'App\\Models\\User', 28, 'API TOKEN', '2f0900bf6fbf3712c588a9953d746ebb903cb70db10cbbb258d0e60e4ac2bef8', '[\"*\"]', '2023-11-27 12:43:37', NULL, '2023-11-27 12:28:13', '2023-11-27 12:43:37'),
(120, 'App\\Models\\User', 28, 'API TOKEN', '32e103080327f782e02df2b14db445ae8e08e04a0656026f91bee17421259e81', '[\"*\"]', '2023-11-27 12:44:43', NULL, '2023-11-27 12:43:37', '2023-11-27 12:44:43'),
(121, 'App\\Models\\User', 28, 'API TOKEN', 'f8945da832334630b1d45f6597f93b1b26e3f8422d029b09c3361ba93838166f', '[\"*\"]', '2023-11-27 12:46:55', NULL, '2023-11-27 12:44:43', '2023-11-27 12:46:55'),
(122, 'App\\Models\\User', 25, 'API TOKEN', 'd6c3b17c6b1d72cd305e234c91b89d04dc6b4b12222238f78deda087c73ceeff', '[\"*\"]', '2023-11-27 13:12:39', NULL, '2023-11-27 12:47:57', '2023-11-27 13:12:39'),
(123, 'App\\Models\\User', 28, 'API TOKEN', '1685d7639f2b6f2a0141b311d965ef1917d81b4c517845b282329de1ef212c7b', '[\"*\"]', '2023-11-27 13:52:06', NULL, '2023-11-27 13:24:24', '2023-11-27 13:52:06'),
(125, 'App\\Models\\User', 25, 'API TOKEN', '2a29ff2ab68f3f70ac23f6527237ee0f18217aae940ef82bd2218552fba13645', '[\"*\"]', '2023-11-27 13:50:32', NULL, '2023-11-27 13:50:08', '2023-11-27 13:50:32'),
(126, 'App\\Models\\User', 25, 'API TOKEN', 'e876da3136a3856052034dabf0d8735abddae07abfc80dd227a266281dae82ec', '[\"*\"]', '2023-11-27 13:50:47', NULL, '2023-11-27 13:50:32', '2023-11-27 13:50:47'),
(127, 'App\\Models\\User', 25, 'API TOKEN', '72233ddf79671f70fa360b1cb1388e0bb27025f30a3b57150d3dc3ceb1e812fd', '[\"*\"]', '2023-11-27 13:51:31', NULL, '2023-11-27 13:50:47', '2023-11-27 13:51:31'),
(128, 'App\\Models\\User', 25, 'API TOKEN', '008665ee5a6cd99d4dc7a1aa2faa04a3c55f016ee3cf8c33bd7b9384039223e5', '[\"*\"]', '2023-11-27 13:51:50', NULL, '2023-11-27 13:51:31', '2023-11-27 13:51:50'),
(129, 'App\\Models\\User', 25, 'API TOKEN', '752518cfb17978beed8548e24f407aa63879b550e5c7f8eed96246066189f24d', '[\"*\"]', '2023-11-27 13:52:09', NULL, '2023-11-27 13:51:50', '2023-11-27 13:52:09'),
(130, 'App\\Models\\User', 28, 'API TOKEN', '9c2b84aa92dc0a9d1fe3be78184e1adc814ed02d27451d4aec167bf680272a58', '[\"*\"]', '2023-11-27 14:08:00', NULL, '2023-11-27 13:52:06', '2023-11-27 14:08:00'),
(131, 'App\\Models\\User', 25, 'API TOKEN', '8aab0a192d6f2e1f0402f49aabb642af835c9082c3c43aa4cafdcdc620ba60e5', '[\"*\"]', '2023-11-27 13:53:00', NULL, '2023-11-27 13:52:09', '2023-11-27 13:53:00'),
(132, 'App\\Models\\User', 25, 'API TOKEN', '1fbbbd4f8f1cf7cbf6eb178eea851266ac20c8081032a20fd68d50d98d9e3123', '[\"*\"]', '2023-11-27 13:53:05', NULL, '2023-11-27 13:53:00', '2023-11-27 13:53:05'),
(133, 'App\\Models\\User', 29, 'API TOKEN', '7a35ff062d2e8a87c49bcd10730eb8d77effb9d26288d0ec93c85492c676c844', '[\"*\"]', NULL, NULL, '2023-11-27 13:56:15', '2023-11-27 13:56:15'),
(134, 'App\\Models\\User', 29, 'API TOKEN', 'b675254a2e6744b4799daf8ed9e1cd43adb4f2e7001509b05c143b80a820e3aa', '[\"*\"]', '2023-11-27 14:00:02', NULL, '2023-11-27 13:57:14', '2023-11-27 14:00:02'),
(135, 'App\\Models\\User', 29, 'API TOKEN', 'c0feb3bd7329c5598c3fc9b851bf954d17dd4bf339f6f45916922931030680d3', '[\"*\"]', NULL, NULL, '2023-11-27 13:59:39', '2023-11-27 13:59:39'),
(136, 'App\\Models\\User', 29, 'API TOKEN', '48b2c7bad155e9dbe98a4a9a21484e13235ac0d581bac87d2487350208605c6a', '[\"*\"]', '2023-11-27 14:04:34', NULL, '2023-11-27 14:00:02', '2023-11-27 14:04:34'),
(137, 'App\\Models\\User', 30, 'API TOKEN', '3ac199bd322c0035e2d637ad8322b5c79d921d5a02785814cc175c8864eeb7f5', '[\"*\"]', NULL, NULL, '2023-11-27 14:09:44', '2023-11-27 14:09:44'),
(138, 'App\\Models\\User', 30, 'API TOKEN', '95e9e4537f621a028f61061bf202e1131ec4ead62e3504cde3f4043e506b04e8', '[\"*\"]', NULL, NULL, '2023-11-27 14:10:06', '2023-11-27 14:10:06'),
(139, 'App\\Models\\User', 30, 'API TOKEN', '272081dc166f642225a987e278edf978bcf21e3cde8074dad34a355fa77e87d3', '[\"*\"]', NULL, NULL, '2023-11-27 14:10:12', '2023-11-27 14:10:12'),
(140, 'App\\Models\\User', 29, 'API TOKEN', 'eb1fa3cb05a3e0fb4964ac5bf6c20eac0f36a32d30d822911e8df47c4776ce30', '[\"*\"]', '2023-11-27 14:10:56', NULL, '2023-11-27 14:10:39', '2023-11-27 14:10:56'),
(141, 'App\\Models\\User', 29, 'API TOKEN', '40dcb6028e47e23c0e3f2a1efe34dd603574db3284a0a06283278a8f3a365c9d', '[\"*\"]', '2023-11-27 14:11:07', NULL, '2023-11-27 14:10:56', '2023-11-27 14:11:07'),
(142, 'App\\Models\\User', 29, 'API TOKEN', 'c7863ed512941c9f266da78e73c0e215c0107daba189b1d31081e91372507c1f', '[\"*\"]', '2023-11-27 14:11:16', NULL, '2023-11-27 14:11:07', '2023-11-27 14:11:16'),
(143, 'App\\Models\\User', 29, 'API TOKEN', 'e422a40c7291e927e17f3812882c2fb5b6da7b2c52a43dec7281ec29524b7596', '[\"*\"]', '2023-11-27 14:11:36', NULL, '2023-11-27 14:11:16', '2023-11-27 14:11:36'),
(144, 'App\\Models\\User', 29, 'API TOKEN', '1e397dc67fb8b797865a7e55244244995bd62830831af49de3e804558f8c92e5', '[\"*\"]', '2023-11-27 14:20:48', NULL, '2023-11-27 14:11:36', '2023-11-27 14:20:48'),
(145, 'App\\Models\\User', 29, 'API TOKEN', '4bd497a2456b2f468e49a1c67b63345a53253e44d08181f08e4b7e6b516cc50d', '[\"*\"]', '2023-11-27 14:20:53', NULL, '2023-11-27 14:20:48', '2023-11-27 14:20:53'),
(146, 'App\\Models\\User', 31, 'API TOKEN', '6ff98f6e544af1948bbed6b74a3e80e7ad7685e7aa6c703ca10e4b6cf935d818', '[\"*\"]', '2023-11-27 14:35:25', NULL, '2023-11-27 14:33:49', '2023-11-27 14:35:25'),
(147, 'App\\Models\\User', 31, 'API TOKEN', '3f51c77834087b6e7fa32968f98d5a394fe91ab9b8ab22b13ef116a9d4475cbd', '[\"*\"]', NULL, NULL, '2023-11-27 14:35:10', '2023-11-27 14:35:10'),
(148, 'App\\Models\\User', 31, 'API TOKEN', '3d4ef6d28bc4a5b6eb0898279a81c21c30fa07d28052d880f7504bf0eeaedec4', '[\"*\"]', '2023-11-27 14:35:30', NULL, '2023-11-27 14:35:25', '2023-11-27 14:35:30'),
(149, 'App\\Models\\User', 31, 'API TOKEN', '81386964999b30b5e972d981a1b4b4fdb8582da976765285fd117c0adcaa2329', '[\"*\"]', '2023-11-27 14:38:47', NULL, '2023-11-27 14:35:30', '2023-11-27 14:38:47'),
(150, 'App\\Models\\User', 31, 'API TOKEN', 'dd002f1214daeae378b7108dd83a6b4b7aa0859ba32f46361e067a0e691a507e', '[\"*\"]', '2023-11-28 07:56:23', NULL, '2023-11-27 14:38:47', '2023-11-28 07:56:23'),
(152, 'App\\Models\\User', 32, 'API TOKEN', '2e4556bfcf80c740f5112e55af24efcd0655c71d665e80a302d057019b59636f', '[\"*\"]', NULL, NULL, '2023-11-28 07:33:25', '2023-11-28 07:33:25'),
(155, 'App\\Models\\User', 33, 'API TOKEN', '9fb9ee879762151c1ed2b757a9fb06cc9ba384611b127e30d53db827b7064acf', '[\"*\"]', NULL, NULL, '2023-11-28 07:41:32', '2023-11-28 07:41:32'),
(156, 'App\\Models\\User', 33, 'API TOKEN', 'e47bc965d0e34aa0eefe05a177557331b60d3506c20357074371ecd80cfe7aa1', '[\"*\"]', '2023-11-28 07:42:29', NULL, '2023-11-28 07:41:58', '2023-11-28 07:42:29'),
(157, 'App\\Models\\User', 33, 'API TOKEN', '2f024d1dbe6b493912595504814724cd6d74c1b6b152bc47b1bb2f629cd9b70b', '[\"*\"]', '2023-11-28 07:42:47', NULL, '2023-11-28 07:42:29', '2023-11-28 07:42:47'),
(158, 'App\\Models\\User', 34, 'API TOKEN', '2c3d2ca43d6d9821a3c6462eec1f4aae1eee430b08e04db2831f149c09c0838b', '[\"*\"]', '2023-11-28 07:45:50', NULL, '2023-11-28 07:44:52', '2023-11-28 07:45:50'),
(169, 'App\\Models\\User', 30, 'API TOKEN', 'bab882c45da96e5954bceb4df32e3a29441969fd735c14a67b729438e4ef37ed', '[\"*\"]', NULL, NULL, '2023-11-28 12:35:43', '2023-11-28 12:35:43'),
(170, 'App\\Models\\User', 30, 'API TOKEN', 'bdbd80d55fc22a50e9924a0d1be1e2d82bbd0614016f8ae0017c1502fdc6be4e', '[\"*\"]', '2023-11-28 13:05:07', NULL, '2023-11-28 12:37:33', '2023-11-28 13:05:07'),
(171, 'App\\Models\\User', 30, 'API TOKEN', 'bc7e99d64110560b3523e8d1e8af792a878a0e0e165d54ba2db56ffc2e9b3a39', '[\"*\"]', NULL, NULL, '2023-11-28 12:41:15', '2023-11-28 12:41:15'),
(172, 'App\\Models\\User', 31, 'API TOKEN', '5d5c11feca681915164c46db98ebfb12eb193b23e8abb2649aaf7ce6a1ca8c49', '[\"*\"]', '2023-11-28 12:54:15', NULL, '2023-11-28 12:44:45', '2023-11-28 12:54:15'),
(173, 'App\\Models\\User', 30, 'API TOKEN', '3d84d4a4000b24d85304b909ae37c3be33aa86d61fed3e4056b2704e8459ebe1', '[\"*\"]', '2023-11-28 13:08:08', NULL, '2023-11-28 12:45:12', '2023-11-28 13:08:08'),
(174, 'App\\Models\\User', 31, 'API TOKEN', 'eecc7f675b0bc9826dfef3afbd1ac5bc93654f7ad74f32abe77825edeb9cde27', '[\"*\"]', '2023-11-28 12:54:27', NULL, '2023-11-28 12:54:15', '2023-11-28 12:54:27'),
(175, 'App\\Models\\User', 31, 'API TOKEN', '808c9d5bc6295859631383975679e9dd197ac247aa1b24a577c3a0b107470a7c', '[\"*\"]', '2023-11-28 12:54:41', NULL, '2023-11-28 12:54:27', '2023-11-28 12:54:41'),
(177, 'App\\Models\\User', 26, 'API TOKEN', '1a31f11d1a3e9d32682bc001822013c1ef2e897e9ab2899722143b47583f8cae', '[\"*\"]', '2023-11-28 13:24:31', NULL, '2023-11-28 13:11:00', '2023-11-28 13:24:31'),
(182, 'App\\Models\\User', 37, 'API TOKEN', '3f1bdaba5c7fce847079f3f16cd982a85649fbc6c68e841fac3f7b9a64036dd0', '[\"*\"]', NULL, NULL, '2023-11-28 13:42:59', '2023-11-28 13:42:59'),
(183, 'App\\Models\\User', 31, 'API TOKEN', 'e1714b13f2607ad0cc79536e700a18796036f1cdf5b265f6ea4701a4a2d5c758', '[\"*\"]', '2023-11-28 14:31:12', NULL, '2023-11-28 13:44:59', '2023-11-28 14:31:12'),
(184, 'App\\Models\\User', 35, 'API TOKEN', 'c3fdcb3f80fef180a45c97b09ea9f4249d4f800b80c5bc1ec982d41885676899', '[\"*\"]', NULL, NULL, '2023-11-28 13:47:28', '2023-11-28 13:47:28'),
(185, 'App\\Models\\User', 35, 'API TOKEN', '312822e2314d406e13c77b78b33d53d156f5c7f9e11f30e07dc84e9766d0ac0a', '[\"*\"]', '2023-11-28 14:30:41', NULL, '2023-11-28 13:48:26', '2023-11-28 14:30:41'),
(187, 'App\\Models\\User', 35, 'API TOKEN', 'd69153aaf5df76d15130764dd3cab4c5cb5c83113da356213578ab77b6bf6c0d', '[\"*\"]', '2023-11-28 14:31:05', NULL, '2023-11-28 14:30:41', '2023-11-28 14:31:05'),
(188, 'App\\Models\\User', 35, 'API TOKEN', '45d31a657be2ecb04a0c8fb2b292e6ce4c351a2c9412f73b3c79a090c6d8f4aa', '[\"*\"]', '2023-11-28 14:31:13', NULL, '2023-11-28 14:31:05', '2023-11-28 14:31:13'),
(189, 'App\\Models\\User', 31, 'API TOKEN', '4aed0ce16242c7d15602b02c14be8bd96047b47ef2bd529e0117d40a69b02ed9', '[\"*\"]', '2023-11-28 14:36:50', NULL, '2023-11-28 14:31:12', '2023-11-28 14:36:50'),
(190, 'App\\Models\\User', 35, 'API TOKEN', '47d593c7e863bf51ddf77e4a85fd1040c7dd9a73e29e2d8548ee74d91fd7290e', '[\"*\"]', '2023-11-28 14:31:26', NULL, '2023-11-28 14:31:13', '2023-11-28 14:31:26'),
(192, 'App\\Models\\User', 31, 'API TOKEN', '54268e7e302318d66c7d7a171e2b0b2b46391c25a6696f644832e8d05f435709', '[\"*\"]', '2023-11-28 15:11:40', NULL, '2023-11-28 14:36:50', '2023-11-28 15:11:40'),
(193, 'App\\Models\\User', 31, 'API TOKEN', '142a023bcef41b1539ae4fef2cbdd7f76a8547e307fbde90dd1935a283ac98f7', '[\"*\"]', '2023-11-29 04:49:40', NULL, '2023-11-28 15:11:40', '2023-11-29 04:49:40'),
(195, 'App\\Models\\User', 31, 'API TOKEN', '3716d71158626dade07025a53e67dac41ee08f84dee04760ffe2505af3ef1c59', '[\"*\"]', '2023-11-29 04:55:10', NULL, '2023-11-29 04:54:50', '2023-11-29 04:55:10'),
(196, 'App\\Models\\User', 31, 'API TOKEN', '4f7dfec67f920477d6c7c011fae49424e5d784f42f7267aa1e25df5f83dcbe1b', '[\"*\"]', '2023-11-29 05:21:11', NULL, '2023-11-29 04:55:10', '2023-11-29 05:21:11'),
(197, 'App\\Models\\User', 31, 'API TOKEN', '9282a243b597a18657244e9cbfd0f460077d1543ef7654d2472ce6fb8e53ea1c', '[\"*\"]', '2023-11-29 05:21:48', NULL, '2023-11-29 05:21:11', '2023-11-29 05:21:48'),
(198, 'App\\Models\\User', 31, 'API TOKEN', 'c96357ff00461e2d884dd954a1e8db560bca80bedec330707e3a1c8a63b8ddda', '[\"*\"]', '2023-11-29 05:22:40', NULL, '2023-11-29 05:21:48', '2023-11-29 05:22:40'),
(200, 'App\\Models\\User', 31, 'API TOKEN', 'abe279f109f831a7cb3e70b5227ef001b6ca5fba4b20c6ecd5f56ab6e4460f14', '[\"*\"]', '2023-11-29 06:27:32', NULL, '2023-11-29 06:27:23', '2023-11-29 06:27:32'),
(201, 'App\\Models\\User', 31, 'API TOKEN', 'a1bf8c8680dd4b7709827dc306ce138daaaf34156c167ac6cb5a6c8b800e41e5', '[\"*\"]', '2023-11-29 06:28:23', NULL, '2023-11-29 06:27:32', '2023-11-29 06:28:23'),
(202, 'App\\Models\\User', 31, 'API TOKEN', '55cd2acceb9fdf140c918972071bc9257031cd2701f6a9a6654cf5247df6079a', '[\"*\"]', '2023-11-29 06:28:24', NULL, '2023-11-29 06:28:23', '2023-11-29 06:28:24'),
(204, 'App\\Models\\User', 31, 'API TOKEN', '0237ed4e3fead58a270c0e69c3414e0959d6bca64de89ea1a4ecbb02f0a37a4b', '[\"*\"]', '2023-11-29 08:48:33', NULL, '2023-11-29 06:48:24', '2023-11-29 08:48:33'),
(205, 'App\\Models\\User', 38, 'API TOKEN', 'fea921694e9db3bfaec1e8970ff3fd884d08c70f468da795c015855a0169ac4f', '[\"*\"]', NULL, NULL, '2023-11-29 10:18:15', '2023-11-29 10:18:15'),
(206, 'App\\Models\\User', 39, 'API TOKEN', '3f9ebbe7050c2f318041554240a2f731e821b2a53ef7f4beb8d97fadd8ab835e', '[\"*\"]', NULL, NULL, '2023-11-29 10:19:46', '2023-11-29 10:19:46'),
(208, 'App\\Models\\User', 35, 'API TOKEN', '1ed8d38a609af8ae26576fc707e87fc638e2db185966db612e4edc57ac2dee78', '[\"*\"]', '2023-11-29 10:47:21', NULL, '2023-11-29 10:41:13', '2023-11-29 10:47:21'),
(215, 'App\\Models\\User', 26, 'API TOKEN', 'd8d0784b503dda8e0dad80a35f9474b2537d45c64bbbbf7d4dcc57803fa9ba68', '[\"*\"]', '2023-11-29 11:18:15', NULL, '2023-11-29 11:17:56', '2023-11-29 11:18:15'),
(216, 'App\\Models\\User', 40, 'API TOKEN', '24807ea483621ee663e591d35919470cd740f2fa3599bf6a95d8a72e3773c2fe', '[\"*\"]', '2023-11-29 11:35:13', NULL, '2023-11-29 11:18:59', '2023-11-29 11:35:13'),
(217, 'App\\Models\\User', 40, 'API TOKEN', 'a350349ab2880d6d5137912b0d3d0f0390f1f6d740195db9f8191167a4c8493e', '[\"*\"]', NULL, NULL, '2023-11-29 11:19:24', '2023-11-29 11:19:24'),
(218, 'App\\Models\\User', 35, 'API TOKEN', '9a0a8801d5989944c8b77d18e1b589a2efe89d8a1b87d769dfee7b1d896d86d9', '[\"*\"]', '2024-05-01 12:08:30', NULL, '2023-11-29 11:23:30', '2024-05-01 12:08:30'),
(219, 'App\\Models\\User', 40, 'API TOKEN', '5c836e5c21cf77baa0080b8084cdbfd288dab9b926598d013c977244f4b79fa1', '[\"*\"]', NULL, NULL, '2023-11-29 11:35:13', '2023-11-29 11:35:13'),
(221, 'App\\Models\\User', 41, 'API TOKEN', '49a581d4400dbafcef5ca5811aa95298e1d68633d8587c0cba82258ab18da517', '[\"*\"]', NULL, NULL, '2023-11-29 11:37:36', '2023-11-29 11:37:36'),
(222, 'App\\Models\\User', 40, 'API TOKEN', '6a32d56773c4ea5347aed6ea842c85555c23518a00a9dc4afbd8508b0c5f57af', '[\"*\"]', NULL, NULL, '2023-11-29 11:39:00', '2023-11-29 11:39:00'),
(223, 'App\\Models\\User', 41, 'API TOKEN', 'edaf039e23282654f4d00b782539f41ccfe6c686909bc43cfab410894c6eeff7', '[\"*\"]', NULL, NULL, '2023-11-29 11:39:42', '2023-11-29 11:39:42'),
(224, 'App\\Models\\User', 40, 'API TOKEN', 'f1f898c173062767e02223d69c446fbd38f218c0dd8934242abad982de3a317a', '[\"*\"]', '2023-11-29 11:50:36', NULL, '2023-11-29 11:49:04', '2023-11-29 11:50:36'),
(225, 'App\\Models\\User', 40, 'API TOKEN', 'cf65eb63521a7197df4065c11d9315a39237936834f560de6a55fedbd40caa2f', '[\"*\"]', '2023-11-30 05:13:22', NULL, '2023-11-29 11:50:51', '2023-11-30 05:13:22'),
(226, 'App\\Models\\User', 42, 'API TOKEN', '0b4e07f2a2f63c84d7f50147350e40cda182e3537f6f44a6605569510cd07158', '[\"*\"]', NULL, NULL, '2023-11-29 12:03:25', '2023-11-29 12:03:25'),
(227, 'App\\Models\\User', 42, 'API TOKEN', '50078ba5bd3fb069a8fc42293e557f9729c84934590a59de169da412db4795ee', '[\"*\"]', NULL, NULL, '2023-11-29 12:03:47', '2023-11-29 12:03:47'),
(228, 'App\\Models\\User', 42, 'API TOKEN', '10916404e6197dcd5f6f7e383cf62b1c73a04fb6331616da969801bd1e60812b', '[\"*\"]', NULL, NULL, '2023-11-29 12:05:05', '2023-11-29 12:05:05'),
(229, 'App\\Models\\User', 35, 'API TOKEN', '71b39a3554b937b2ec5a8291bcc8fc36aefa129416a68b4249bf3156e800e08f', '[\"*\"]', '2023-11-29 12:24:15', NULL, '2023-11-29 12:23:57', '2023-11-29 12:24:15'),
(230, 'App\\Models\\User', 35, 'API TOKEN', '07de7a313400c8e52a20b3386a9eb2c79d8e3f68092ee61ad095d086ad37435a', '[\"*\"]', '2023-11-29 12:24:34', NULL, '2023-11-29 12:24:16', '2023-11-29 12:24:34'),
(232, 'App\\Models\\User', 43, 'API TOKEN', '81b4ddcf399e078efc8e76ee73cff14219e6f17479d6fb1bd1c2de7b1b786f25', '[\"*\"]', NULL, NULL, '2023-11-29 13:07:20', '2023-11-29 13:07:20'),
(233, 'App\\Models\\User', 44, 'API TOKEN', 'e6f89eaff3a4cda8db3b0465b970a1588a9e5bdb2c9af337a23095bef20a852c', '[\"*\"]', NULL, NULL, '2023-11-29 13:22:49', '2023-11-29 13:22:49'),
(234, 'App\\Models\\User', 45, 'API TOKEN', 'be14bd8f8caa67efdb16605e3f586051f07597882ac7ad2d8d068ac9aae1ae78', '[\"*\"]', '2023-11-29 13:50:45', NULL, '2023-11-29 13:49:36', '2023-11-29 13:50:45'),
(235, 'App\\Models\\User', 45, 'API TOKEN', '1e313797bb7ccc0b5f5b934c1372a09c36c082566276c9416309c50186f3db61', '[\"*\"]', '2023-11-29 15:21:06', NULL, '2023-11-29 13:50:45', '2023-11-29 15:21:06'),
(236, 'App\\Models\\User', 40, 'API TOKEN', 'b17f0e3020f8b777dbcebd6ff2a749a5dbe1cd8e31a7e2e7b93d9a77d9d52de2', '[\"*\"]', '2023-11-30 05:13:32', NULL, '2023-11-30 05:13:22', '2023-11-30 05:13:32'),
(237, 'App\\Models\\User', 40, 'API TOKEN', '37d6c3d62a2bc138dacd19d425171487515b09d887a19f2644f21dc5c3083290', '[\"*\"]', '2023-11-30 08:16:47', NULL, '2023-11-30 05:13:32', '2023-11-30 08:16:47'),
(238, 'App\\Models\\User', 40, 'API TOKEN', 'd6198e2cec0910b87ce9cc06695094bb3a40d4b274bee14d30aded33cefc5874', '[\"*\"]', '2023-12-03 14:12:12', NULL, '2023-11-30 08:16:47', '2023-12-03 14:12:12'),
(240, 'App\\Models\\User', 31, 'API TOKEN', '804b526dac90033b1c25b6b0022b3fa0e04e4a5de3cb8697a84966b390f6481e', '[\"*\"]', '2023-11-30 14:08:16', NULL, '2023-11-30 14:07:45', '2023-11-30 14:08:16'),
(241, 'App\\Models\\User', 31, 'API TOKEN', '22c1a139560ee26225e98bbbfe441bd9285b7b822f60f81d8d94c84693c6e720', '[\"*\"]', '2023-11-30 14:11:13', NULL, '2023-11-30 14:08:16', '2023-11-30 14:11:13'),
(242, 'App\\Models\\User', 31, 'API TOKEN', '240bd04313bed7bbd6fb53348e3429d9ea4be2d3e9bb01e0d4bedaa74f716bea', '[\"*\"]', '2023-11-30 14:12:11', NULL, '2023-11-30 14:11:13', '2023-11-30 14:12:11'),
(246, 'App\\Models\\User', 31, 'API TOKEN', 'e1b06a318133ae41e77eab1f3fbf31731ba0ed3853001ddd65fdc29914d0601f', '[\"*\"]', '2023-12-03 07:01:41', NULL, '2023-12-03 06:59:13', '2023-12-03 07:01:41'),
(247, 'App\\Models\\User', 31, 'API TOKEN', '0d642166f40fefac1f345fac44f8f3fd419bdfc981884b79b0ba106caf686594', '[\"*\"]', '2023-12-03 07:02:11', NULL, '2023-12-03 07:01:41', '2023-12-03 07:02:11'),
(248, 'App\\Models\\User', 31, 'API TOKEN', '7131180b50b2d23ec5af56b47f9afdd2eae6429f9d972ee838bd9b58acb64adf', '[\"*\"]', '2023-12-03 07:03:56', NULL, '2023-12-03 07:02:11', '2023-12-03 07:03:56'),
(249, 'App\\Models\\User', 31, 'API TOKEN', '6193eff91120198a15c334a2d6bd1e947df976a2dfe08caf2f2c049c4ccf2258', '[\"*\"]', '2023-12-03 07:04:47', NULL, '2023-12-03 07:03:56', '2023-12-03 07:04:47'),
(250, 'App\\Models\\User', 31, 'API TOKEN', '8390e737d0084179056a150691a7103f661319fe90e835b2167d9bcc9365f6b5', '[\"*\"]', '2023-12-03 07:04:54', NULL, '2023-12-03 07:04:47', '2023-12-03 07:04:54'),
(251, 'App\\Models\\User', 31, 'API TOKEN', '645a2d28f53d5d1d574f3b8e0dbc19ce5e5c68b3b73b90e97087564369977334', '[\"*\"]', '2023-12-03 07:05:14', NULL, '2023-12-03 07:04:54', '2023-12-03 07:05:14'),
(252, 'App\\Models\\User', 31, 'API TOKEN', '45310ee246f3607079b7fee9ed95cf21b7f067ae12800994c6efab82ada31cbb', '[\"*\"]', '2023-12-03 07:21:12', NULL, '2023-12-03 07:05:14', '2023-12-03 07:21:12'),
(253, 'App\\Models\\User', 31, 'API TOKEN', 'a9b80ba908fb1cf8a850600e37a87a94ec08c78292907b3112f00e14cbdc014b', '[\"*\"]', '2023-12-03 07:21:21', NULL, '2023-12-03 07:21:12', '2023-12-03 07:21:21'),
(254, 'App\\Models\\User', 46, 'API TOKEN', 'a37fd7487a00a8301e8b7d635b7a63d607b670b5994a9d8a187f55be54585892', '[\"*\"]', '2023-12-03 07:33:36', NULL, '2023-12-03 07:25:59', '2023-12-03 07:33:36'),
(255, 'App\\Models\\User', 46, 'API TOKEN', '5648aab87ba3b2736de17c97da1652db2ecdb360cecf31ab7657241de01a0339', '[\"*\"]', NULL, NULL, '2023-12-03 07:29:05', '2023-12-03 07:29:05'),
(257, 'App\\Models\\User', 46, 'API TOKEN', '5f6ada6fe07610e0767e303fcc2a0ea46fd2a899f6fb6993c58fcb92b791e581', '[\"*\"]', '2023-12-03 10:38:53', NULL, '2023-12-03 10:37:44', '2023-12-03 10:38:53'),
(258, 'App\\Models\\User', 46, 'API TOKEN', '8182fa5a029770d7a436a791befd8f5caee13459debad4e89f9dce94d094b5a5', '[\"*\"]', '2023-12-03 10:39:11', NULL, '2023-12-03 10:38:53', '2023-12-03 10:39:11'),
(259, 'App\\Models\\User', 46, 'API TOKEN', 'bfdebf603d1f027341cf14269c5c3ae472551f28e21cbc6a739e1e5debb34445', '[\"*\"]', NULL, NULL, '2023-12-03 10:39:11', '2023-12-03 10:39:11'),
(260, 'App\\Models\\User', 46, 'API TOKEN', 'ea972119596d3a9419532924e4405454b277cdbc6b1857d1889047655694b937', '[\"*\"]', '2023-12-03 10:43:13', NULL, '2023-12-03 10:39:11', '2023-12-03 10:43:13'),
(261, 'App\\Models\\User', 46, 'API TOKEN', 'a4a76425b573c3e63235eea3a126d085bfb497123595023cc1a907003bbe8fd2', '[\"*\"]', '2023-12-03 10:47:16', NULL, '2023-12-03 10:43:13', '2023-12-03 10:47:16'),
(262, 'App\\Models\\User', 46, 'API TOKEN', '5069f8d9bc88be8b892b59233d3d6f60893aeab2f0403487b1a3b31ba22c861e', '[\"*\"]', '2023-12-03 10:49:15', NULL, '2023-12-03 10:47:16', '2023-12-03 10:49:15'),
(263, 'App\\Models\\User', 46, 'API TOKEN', '4f43f97b5b9b4f06285caa267f53ba3f0292a10a5533c00883fa5c8271ea5172', '[\"*\"]', '2023-12-03 11:57:38', NULL, '2023-12-03 11:57:30', '2023-12-03 11:57:38'),
(264, 'App\\Models\\User', 46, 'API TOKEN', 'cf433f4255832eb7d6aa3fce981db0cf4bf2268201218cda073897eb51d770bc', '[\"*\"]', '2023-12-03 11:57:41', NULL, '2023-12-03 11:57:38', '2023-12-03 11:57:41'),
(265, 'App\\Models\\User', 40, 'API TOKEN', 'f891ce6cc56b0ec324de8c8f80112a22c0098bcb7a5ab8af298020c6c66465ca', '[\"*\"]', '2023-12-03 12:41:10', NULL, '2023-12-03 12:40:55', '2023-12-03 12:41:10'),
(266, 'App\\Models\\User', 40, 'API TOKEN', '7b6b753683dafbcfa012005e65170a9ff37a4c3a2f39de7d60e79bcf376d20d8', '[\"*\"]', '2023-12-03 14:12:16', NULL, '2023-12-03 14:12:12', '2023-12-03 14:12:16'),
(267, 'App\\Models\\User', 47, 'API TOKEN', '84f758372f2d11c312d9bb4205272daa0d19141b95eebd8fa4ab6375bb3539b0', '[\"*\"]', '2023-12-04 12:15:29', NULL, '2023-12-03 14:12:49', '2023-12-04 12:15:29'),
(268, 'App\\Models\\User', 47, 'API TOKEN', '8b57c6eeec95721a3abac26ab25af91c778616a69accd4cfd8ee4c1147c3f342', '[\"*\"]', NULL, NULL, '2023-12-03 14:13:31', '2023-12-03 14:13:31'),
(269, 'App\\Models\\User', 48, 'API TOKEN', '5d48b3a46068829efd8322091d489d1989807f36a8c0555ab7f24754a6c3766f', '[\"*\"]', '2023-12-04 05:53:10', NULL, '2023-12-04 05:52:11', '2023-12-04 05:53:10'),
(270, 'App\\Models\\User', 48, 'API TOKEN', 'e53213a414fe768c21ebfbfc5ce3de22459463755c337ac7696292c22d508382', '[\"*\"]', NULL, NULL, '2023-12-04 05:52:32', '2023-12-04 05:52:32'),
(271, 'App\\Models\\User', 48, 'API TOKEN', 'bcf17071dd81f81778f96a7b8b9a627003955ceebcb64310a8a6dd662c6c856f', '[\"*\"]', '2023-12-04 05:53:13', NULL, '2023-12-04 05:53:10', '2023-12-04 05:53:13'),
(272, 'App\\Models\\User', 49, 'API TOKEN', 'fb3867baab74331fd59078f5f037aeebc418e0d6020271c9b6c6b245909778e3', '[\"*\"]', '2023-12-04 18:09:56', NULL, '2023-12-04 05:54:06', '2023-12-04 18:09:56'),
(273, 'App\\Models\\User', 49, 'API TOKEN', 'b168e4bfefa4f50cf30b9a120641db69f97d6b1041a1cc9f3283c1a6a6272363', '[\"*\"]', NULL, NULL, '2023-12-04 05:54:20', '2023-12-04 05:54:20'),
(274, 'App\\Models\\User', 47, 'API TOKEN', '2bbcd580e167b8dc223286a6e117f80eda540a136f080188e164043eb7e94403', '[\"*\"]', '2023-12-04 12:25:30', NULL, '2023-12-04 12:15:29', '2023-12-04 12:25:30'),
(276, 'App\\Models\\User', 47, 'API TOKEN', '366de7c6c200b7d7b4011c15787de3615dc7504ba332f05c2e032518a43561e0', '[\"*\"]', '2023-12-04 12:25:57', NULL, '2023-12-04 12:25:30', '2023-12-04 12:25:57'),
(277, 'App\\Models\\User', 47, 'API TOKEN', '17241525f581ca5c56346b36b7564c6f156aef718265719062d68a33ce1b14fe', '[\"*\"]', NULL, NULL, '2023-12-04 12:25:56', '2023-12-04 12:25:56'),
(278, 'App\\Models\\User', 47, 'API TOKEN', '4bbf040693200a7b94d4cc956c6b5cb59ff13d187e1a977b0d1f3d817a43d6d1', '[\"*\"]', '2023-12-04 12:26:17', NULL, '2023-12-04 12:25:57', '2023-12-04 12:26:17'),
(279, 'App\\Models\\User', 50, 'API TOKEN', 'f51d56c5488302a6e5486766e09ef8f834371555e903c71abc1d7195492f7d8e', '[\"*\"]', '2023-12-04 12:32:15', NULL, '2023-12-04 12:27:33', '2023-12-04 12:32:15'),
(280, 'App\\Models\\User', 51, 'API TOKEN', 'df2fbcf2913f149752361b8d554955e996769d670981368331617239c04e10fb', '[\"*\"]', '2023-12-04 12:46:40', NULL, '2023-12-04 12:39:33', '2023-12-04 12:46:40'),
(281, 'App\\Models\\User', 51, 'API TOKEN', '38bfd76cfbbb2f7285817ad677e840c3933f3f7b73b6ff35bd8c91975f49bdca', '[\"*\"]', '2023-12-04 12:46:43', NULL, '2023-12-04 12:46:40', '2023-12-04 12:46:43'),
(282, 'App\\Models\\User', 52, 'API TOKEN', '0bff0b3b3d9789bb49a26673979fb5c871a96fbded87c66236e6e385e655d956', '[\"*\"]', '2023-12-04 12:51:28', NULL, '2023-12-04 12:47:40', '2023-12-04 12:51:28'),
(283, 'App\\Models\\User', 52, 'API TOKEN', 'c3891314f997ec6c44209d8aa118c61c06561ae93de4fb6f6aa6736af33a4a7a', '[\"*\"]', NULL, NULL, '2023-12-04 12:48:25', '2023-12-04 12:48:25'),
(284, 'App\\Models\\User', 52, 'API TOKEN', '5a66cdd8c7958babe93fece3828493320dcc32d5a64b7d5ecc940623567e1aa3', '[\"*\"]', '2023-12-04 12:51:33', NULL, '2023-12-04 12:51:28', '2023-12-04 12:51:33'),
(285, 'App\\Models\\User', 53, 'API TOKEN', '13fbc87c083350f14f1cbe1ea9fa66d46643e69c365d9e86baab9b386ff52022', '[\"*\"]', '2023-12-04 12:55:53', NULL, '2023-12-04 12:51:58', '2023-12-04 12:55:53'),
(286, 'App\\Models\\User', 53, 'API TOKEN', 'c91ec34b8a2f1370810f904b434b37d7f9cabe401f0430b1fb71114bea3193e5', '[\"*\"]', '2023-12-04 12:55:55', NULL, '2023-12-04 12:55:53', '2023-12-04 12:55:55'),
(287, 'App\\Models\\User', 54, 'API TOKEN', 'a24bde213742435bd69b8531987326ea5880f280f6d88c67ebb19be4b162ce45', '[\"*\"]', '2023-12-04 13:05:13', NULL, '2023-12-04 12:56:58', '2023-12-04 13:05:13'),
(288, 'App\\Models\\User', 54, 'API TOKEN', '9a53f745b09345615460408ffa046130772be6bacd4231fec9a6ef3fef4952d2', '[\"*\"]', NULL, NULL, '2023-12-04 12:57:25', '2023-12-04 12:57:25'),
(289, 'App\\Models\\User', 54, 'API TOKEN', 'c37ac7fa249a96aaa7086d4b471ebf8e3423293d83289c392b12da533f8557ba', '[\"*\"]', '2023-12-04 13:05:19', NULL, '2023-12-04 13:05:13', '2023-12-04 13:05:19'),
(290, 'App\\Models\\User', 55, 'API TOKEN', '2a5195663343837bf2b70d04990ce93022ac8093859413379c870db339576a90', '[\"*\"]', '2023-12-05 13:41:32', NULL, '2023-12-04 13:05:55', '2023-12-05 13:41:32'),
(291, 'App\\Models\\User', 55, 'API TOKEN', 'a024a302b4cb99397a12631a8cbd3be2899e13a017abe4515970ba7429e42395', '[\"*\"]', NULL, NULL, '2023-12-04 13:06:21', '2023-12-04 13:06:21'),
(292, 'App\\Models\\User', 49, 'API TOKEN', '3f7d817d91f0091e0773f7cd315d6732d3f1113c91e4d42cac78c99ba890cf81', '[\"*\"]', '2023-12-04 18:10:05', NULL, '2023-12-04 18:09:56', '2023-12-04 18:10:05'),
(293, 'App\\Models\\User', 49, 'API TOKEN', 'bb0813796a989ccb50da4d3b397ce4b0ce68c654d0f0a89a37f4892d5735d09e', '[\"*\"]', '2023-12-04 18:10:11', NULL, '2023-12-04 18:10:05', '2023-12-04 18:10:11'),
(294, 'App\\Models\\User', 49, 'API TOKEN', 'b513368a904feef325c3e27d857e711b51df1a0f83c42b3f8b216fc4e14031e5', '[\"*\"]', '2023-12-04 18:13:11', NULL, '2023-12-04 18:10:11', '2023-12-04 18:13:11'),
(296, 'App\\Models\\User', 56, 'API TOKEN', 'cfd26247335dcb0c30be2c6a486474d7523073fab016d0ce3af7d4ecc870c1cd', '[\"*\"]', NULL, NULL, '2023-12-04 18:23:05', '2023-12-04 18:23:05'),
(298, 'App\\Models\\User', 56, 'API TOKEN', '79698f11004d7593b916c9a0a8f5c3f1d3a26d6770394698566bb4d11046584c', '[\"*\"]', '2023-12-05 06:11:44', NULL, '2023-12-05 06:11:01', '2023-12-05 06:11:44'),
(299, 'App\\Models\\User', 56, 'API TOKEN', 'cbda4b81cf0794d54ef863f13c13575b778d7a0c0d8fe612c3941f4b03e45c68', '[\"*\"]', '2023-12-05 06:27:26', NULL, '2023-12-05 06:11:44', '2023-12-05 06:27:26'),
(300, 'App\\Models\\User', 56, 'API TOKEN', '401096b81ee3b5c4fb3a6a542a3a1857632c767db7b56450470f967dbb8f0094', '[\"*\"]', '2023-12-05 06:27:44', NULL, '2023-12-05 06:27:26', '2023-12-05 06:27:44'),
(301, 'App\\Models\\User', 56, 'API TOKEN', '922da58fb0a066b6de48a3915b33ecd8758862e63bb1005ba4af6ba921b432f9', '[\"*\"]', '2023-12-05 06:27:52', NULL, '2023-12-05 06:27:44', '2023-12-05 06:27:52'),
(302, 'App\\Models\\User', 56, 'API TOKEN', '3b1882db3fca39ca549d5e94c5ec2bd33b05b31c1e723f57bb9614e7281754ea', '[\"*\"]', '2023-12-05 06:27:53', NULL, '2023-12-05 06:27:52', '2023-12-05 06:27:53'),
(303, 'App\\Models\\User', 56, 'API TOKEN', '8aab390702f8e03f86a6472b0653edb5c6db946b05ab1f2bc1df5d8fef6e19a7', '[\"*\"]', '2023-12-05 06:28:08', NULL, '2023-12-05 06:27:53', '2023-12-05 06:28:08'),
(304, 'App\\Models\\User', 56, 'API TOKEN', '405637ce1a3c2ed5295b771a72782dd20f93aeb15d4e6aa88a694b8d092e3a55', '[\"*\"]', NULL, NULL, '2023-12-05 06:28:08', '2023-12-05 06:28:08'),
(305, 'App\\Models\\User', 56, 'API TOKEN', '1c406c2d424762e84ba072f35337e77b21dd8e59fe1af631e8749262cc2edaed', '[\"*\"]', '2023-12-05 06:29:13', NULL, '2023-12-05 06:28:08', '2023-12-05 06:29:13'),
(307, 'App\\Models\\User', 56, 'API TOKEN', '977a73abbdc1817af34ff12156b94561d659d2dfea67f1c2825644de046b36e4', '[\"*\"]', '2023-12-05 07:00:15', NULL, '2023-12-05 06:42:13', '2023-12-05 07:00:15'),
(308, 'App\\Models\\User', 56, 'API TOKEN', '7be62797bf90fccdee4c60a353f2bb0823c49fef731e2f1d7144d92180d3989f', '[\"*\"]', '2023-12-05 07:00:44', NULL, '2023-12-05 07:00:15', '2023-12-05 07:00:44'),
(309, 'App\\Models\\User', 56, 'API TOKEN', '3edd15b56a15881a05a8cdf9329f1d1729d01259d6df25a35975b3a91d3aa7e2', '[\"*\"]', '2023-12-05 10:53:59', NULL, '2023-12-05 07:00:44', '2023-12-05 10:53:59'),
(311, 'App\\Models\\User', 56, 'API TOKEN', 'b6a2e093a040102ae46c9ae85df3fac079ea0736fa84930384ce66544cf929a4', '[\"*\"]', '2023-12-05 13:10:00', NULL, '2023-12-05 10:53:59', '2023-12-05 13:10:00'),
(312, 'App\\Models\\User', 56, 'API TOKEN', 'ebfc498962156c4012457b0ce2ef5f493edc47542746a204e87aeab8eab896b1', '[\"*\"]', '2023-12-05 13:10:06', NULL, '2023-12-05 13:10:00', '2023-12-05 13:10:06'),
(313, 'App\\Models\\User', 57, 'API TOKEN', '12e5ce4e0088c5a4b76e98a7b5712e33398c45c5a6ff1ecb3c4b1e73acde1248', '[\"*\"]', '2023-12-05 13:30:56', NULL, '2023-12-05 13:11:36', '2023-12-05 13:30:56'),
(314, 'App\\Models\\User', 57, 'API TOKEN', 'e01a89a309f9feda9d7f422ec496bb56aeeaa404eb53497ebe3680a30695e7d2', '[\"*\"]', NULL, NULL, '2023-12-05 13:15:55', '2023-12-05 13:15:55'),
(315, 'App\\Models\\User', 57, 'API TOKEN', 'cbce9352c4f06dd45255f97bd67542a91be4bfd29bbdf2b117f4dacedc53d08c', '[\"*\"]', '2023-12-05 13:31:24', NULL, '2023-12-05 13:30:56', '2023-12-05 13:31:24'),
(316, 'App\\Models\\User', 57, 'API TOKEN', '157b31d5c87e049aceaa8292cc240f84fa81d23f2d18d77bd17dd6dd9ce60f1a', '[\"*\"]', '2023-12-05 13:32:50', NULL, '2023-12-05 13:31:24', '2023-12-05 13:32:50'),
(317, 'App\\Models\\User', 57, 'API TOKEN', '3cf1f5fffe4f9607b5c88ee539269511e0fcd43c024c07e0bf65c6ec254a574a', '[\"*\"]', NULL, NULL, '2023-12-05 13:32:49', '2023-12-05 13:32:49'),
(318, 'App\\Models\\User', 57, 'API TOKEN', '0dcf0d57fc8233452a19384aae5571137440f0667650d5da867da041c14c4dea', '[\"*\"]', '2023-12-05 13:38:44', NULL, '2023-12-05 13:32:50', '2023-12-05 13:38:44'),
(319, 'App\\Models\\User', 57, 'API TOKEN', '9bbc08d4d81b5aa0683388077857febcf5572388d4b80527bbbff57404e8f0c1', '[\"*\"]', NULL, NULL, '2023-12-05 13:37:38', '2023-12-05 13:37:38'),
(320, 'App\\Models\\User', 57, 'API TOKEN', '0499b06e0be14c9c39678a6795cd7fe0bbd42785cf102aee56303954d692e714', '[\"*\"]', NULL, NULL, '2023-12-05 13:38:43', '2023-12-05 13:38:43'),
(321, 'App\\Models\\User', 57, 'API TOKEN', '84f2babec94ea4e64f142ef8650ae2f9a4350e510001fd4f8b4efea6c7d234fd', '[\"*\"]', '2023-12-05 13:38:46', NULL, '2023-12-05 13:38:44', '2023-12-05 13:38:46'),
(322, 'App\\Models\\User', 57, 'API TOKEN', '45357938cfe5d2c7f01932d3b0bcdd15009086f5644fe4b187b882815b05d442', '[\"*\"]', '2023-12-05 13:38:47', NULL, '2023-12-05 13:38:46', '2023-12-05 13:38:47'),
(323, 'App\\Models\\User', 57, 'API TOKEN', '81e413f57a060907d6e4c0ebd78cc9a75da2bd8e76e2fa5743580fa5b635fd21', '[\"*\"]', '2023-12-05 13:38:54', NULL, '2023-12-05 13:38:47', '2023-12-05 13:38:54'),
(324, 'App\\Models\\User', 57, 'API TOKEN', '1f4836dc456e77dc13d616cc07c720a99aea727d1f5c70d2cac298815a472507', '[\"*\"]', '2023-12-05 13:39:38', NULL, '2023-12-05 13:38:54', '2023-12-05 13:39:38'),
(325, 'App\\Models\\User', 57, 'API TOKEN', 'b284b6036773c5c5f81709657915f2f229ffa12da5d124939216cb27d6ed1435', '[\"*\"]', '2023-12-05 13:40:04', NULL, '2023-12-05 13:39:20', '2023-12-05 13:40:04'),
(326, 'App\\Models\\User', 57, 'API TOKEN', '976d61670a400d857c2b5e2f4ae7cd186cf374244fbaf221e825f56b8c8b4ea8', '[\"*\"]', '2023-12-05 13:39:46', NULL, '2023-12-05 13:39:38', '2023-12-05 13:39:46'),
(327, 'App\\Models\\User', 57, 'API TOKEN', 'd783ed756e3685112ea2ef9cd37ab3c0465704765986f9ca45e4e1f7654f0bf8', '[\"*\"]', '2023-12-05 13:43:47', NULL, '2023-12-05 13:39:46', '2023-12-05 13:43:47'),
(328, 'App\\Models\\User', 57, 'API TOKEN', '67cc31eea5cbc1b602dd6417810588e986bc12a755a62374c4f8f5cfea183152', '[\"*\"]', NULL, NULL, '2023-12-05 13:40:04', '2023-12-05 13:40:04'),
(329, 'App\\Models\\User', 57, 'API TOKEN', 'd8569d825b618549f1a11161c95a1a69414033dcb0310f1e4b521ad97e352a61', '[\"*\"]', NULL, NULL, '2023-12-05 13:40:36', '2023-12-05 13:40:36'),
(330, 'App\\Models\\User', 55, 'API TOKEN', 'a6fd9f79342807eec69f7eb365215ab8603d83cf344101534bb11ab542019168', '[\"*\"]', '2023-12-05 13:43:42', NULL, '2023-12-05 13:41:32', '2023-12-05 13:43:42'),
(331, 'App\\Models\\User', 55, 'API TOKEN', '5c79f50abf4c062806eec78f5dc7c5cf4da1390ce6e8cd2b2edb10ab42342129', '[\"*\"]', NULL, NULL, '2023-12-05 13:42:13', '2023-12-05 13:42:13'),
(332, 'App\\Models\\User', 55, 'API TOKEN', '3647de750c5ff36e31e1d8ab644faf0cf0522397ac618e32dfe5010fec9b135b', '[\"*\"]', '2023-12-07 06:27:29', NULL, '2023-12-05 13:42:13', '2023-12-07 06:27:29'),
(333, 'App\\Models\\User', 57, 'API TOKEN', '62405916a473deb57f944b9852c9116775f9c7de2569c5d7a9ff3295f910fa50', '[\"*\"]', '2023-12-05 13:53:44', NULL, '2023-12-05 13:43:47', '2023-12-05 13:53:44'),
(334, 'App\\Models\\User', 57, 'API TOKEN', '1bfc713a798159f47c0e287a308c1c6c364190aa8093f6e72cbf59151e38edb9', '[\"*\"]', '2023-12-05 13:53:49', NULL, '2023-12-05 13:53:44', '2023-12-05 13:53:49'),
(335, 'App\\Models\\User', 57, 'API TOKEN', 'f7f9cfbc17e64050fd2ae571126af47be3e49c6086fdc8e72ac43178b8bb7bf1', '[\"*\"]', '2023-12-05 13:54:49', NULL, '2023-12-05 13:53:49', '2023-12-05 13:54:49'),
(337, 'App\\Models\\User', 58, 'API TOKEN', 'e999fabad57b94b14ee876e6441d6405c375c91fc97a998c97a8dc011495c296', '[\"*\"]', '2023-12-05 14:16:20', NULL, '2023-12-05 14:16:07', '2023-12-05 14:16:20'),
(339, 'App\\Models\\User', 58, 'API TOKEN', '9c0b67453c3535904cd76197a694b9cfb22abb5071e5698aefa6177a012fcf94', '[\"*\"]', '2023-12-05 14:18:11', NULL, '2023-12-05 14:18:03', '2023-12-05 14:18:11'),
(340, 'App\\Models\\User', 58, 'API TOKEN', '99708be661c1956e62a5a1294d071fe2ae668ec93bfeed98c6d47e53b097dd87', '[\"*\"]', '2023-12-05 14:29:45', NULL, '2023-12-05 14:18:11', '2023-12-05 14:29:45'),
(341, 'App\\Models\\User', 58, 'API TOKEN', 'ee99e3b63a920c9cc5f66403ce43ed0c0ec10a2d247f8101cf18ee85c5cb43cb', '[\"*\"]', '2023-12-05 14:30:39', NULL, '2023-12-05 14:29:45', '2023-12-05 14:30:39'),
(342, 'App\\Models\\User', 58, 'API TOKEN', '82605fc6bc51f45ae38a26af55c3b5bdb074d31aae299597cefe3533c8999267', '[\"*\"]', '2023-12-06 06:52:03', NULL, '2023-12-05 14:30:39', '2023-12-06 06:52:03'),
(344, 'App\\Models\\User', 59, 'API TOKEN', '45d86caa9f0fbeba95b1f4b97437af8166959ffdef86d2fdef3d718140aae1cf', '[\"*\"]', '2023-12-10 13:16:24', NULL, '2023-12-06 11:32:15', '2023-12-10 13:16:24'),
(345, 'App\\Models\\User', 59, 'API TOKEN', 'fdcd260c33388f1ae63d9ccacd8d66723d361dbe8899a12e5cf146bcc3f6727b', '[\"*\"]', NULL, NULL, '2023-12-06 11:32:40', '2023-12-06 11:32:40');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(347, 'App\\Models\\User', 55, 'API TOKEN', 'f3f4a4838d7f705bafd67615fa335594d6b1ac52e019ffeb3fa09ca9d39f179d', '[\"*\"]', '2023-12-07 06:32:13', NULL, '2023-12-07 06:27:29', '2023-12-07 06:32:13'),
(351, 'App\\Models\\User', 61, 'API TOKEN', '05ba7ab9accf17f6a20990e453507c394248e20cd7985323c60ad1606eae7979', '[\"*\"]', NULL, NULL, '2023-12-07 13:32:29', '2023-12-07 13:32:29'),
(352, 'App\\Models\\User', 62, 'API TOKEN', 'a1dcbb9ad68434cde10a15c6745a621d61ce4a5f20637bc75afe96c8256094c9', '[\"*\"]', '2023-12-07 13:36:09', NULL, '2023-12-07 13:34:40', '2023-12-07 13:36:09'),
(353, 'App\\Models\\User', 62, 'API TOKEN', '75d574b761b8e6b07ce45e6a8c7a86418bb244f8dfafd1464349841d110b7edc', '[\"*\"]', '2023-12-07 13:36:21', NULL, '2023-12-07 13:36:09', '2023-12-07 13:36:21'),
(354, 'App\\Models\\User', 62, 'API TOKEN', '13fe6306612731abb70472f841f61fe483d4ec5d63fd5b1d645d8c8d0db2335a', '[\"*\"]', '2024-04-19 09:11:01', NULL, '2023-12-07 13:36:21', '2024-04-19 09:11:01'),
(356, 'App\\Models\\User', 59, 'API TOKEN', 'ecb0ef9caaad6b30d80a20d9d44f3f99bd93763119fbd62636f85e4ec89d6ba2', '[\"*\"]', '2023-12-10 13:16:35', NULL, '2023-12-10 13:16:24', '2023-12-10 13:16:35'),
(357, 'App\\Models\\User', 55, 'API TOKEN', '9b9e60631a0572413ff616d2b293a3f602bff9996329d9f677da706448e10043', '[\"*\"]', NULL, NULL, '2023-12-11 05:25:28', '2023-12-11 05:25:28'),
(358, 'App\\Models\\User', 55, 'API TOKEN', 'e65477febeccef95c5dbed3a464ef6f7c1c5429dc84a7b3c2eaeb4fe8c9a8df1', '[\"*\"]', '2023-12-11 05:27:21', NULL, '2023-12-11 05:27:07', '2023-12-11 05:27:21'),
(359, 'App\\Models\\User', 55, 'API TOKEN', '3c9bc86f7ad3256cd135b5d277ccf8fe280d25ca8716a0653d6e854951d6b02a', '[\"*\"]', '2023-12-11 05:27:29', NULL, '2023-12-11 05:27:21', '2023-12-11 05:27:29'),
(360, 'App\\Models\\User', 64, 'API TOKEN', '2d055d954d58fb6b35d95b21d6b122efccc68447cc6b52d49ea3b3d1436ad904', '[\"*\"]', '2023-12-11 05:31:04', NULL, '2023-12-11 05:30:01', '2023-12-11 05:31:04'),
(361, 'App\\Models\\User', 64, 'API TOKEN', '26b47ae2771556628a1b0fe1149ebeb1b423ccb637a41608915173b0b3fa56ba', '[\"*\"]', NULL, NULL, '2023-12-11 05:30:22', '2023-12-11 05:30:22'),
(362, 'App\\Models\\User', 64, 'API TOKEN', '8ce0468a7fe7e1b44411be61b72d027cc2da041a2dd4c1d9c1cee9fa9a0f2114', '[\"*\"]', '2023-12-11 05:31:07', NULL, '2023-12-11 05:31:04', '2023-12-11 05:31:07'),
(363, 'App\\Models\\User', 65, 'API TOKEN', '978c4373d3c288327fc89681e05911331d30ca04f1d832f360bf47d1e5fbab2b', '[\"*\"]', '2023-12-11 06:18:11', NULL, '2023-12-11 05:32:46', '2023-12-11 06:18:11'),
(364, 'App\\Models\\User', 65, 'API TOKEN', '6d9544c49c40a17b69ff3a06c4639f6cef8e8652132b5724f566cec844147c5d', '[\"*\"]', NULL, NULL, '2023-12-11 05:33:34', '2023-12-11 05:33:34'),
(365, 'App\\Models\\User', 65, 'API TOKEN', 'd81b068fd782d725ce0ec412d868790c3604764bdcf96e2aca74e02a5dbc3487', '[\"*\"]', '2023-12-11 06:18:15', NULL, '2023-12-11 06:18:11', '2023-12-11 06:18:15'),
(366, 'App\\Models\\User', 66, 'API TOKEN', '159a05b68d072c7abcc50e64d5d7b8b6a9ad482634457fb3e57ed7cc74fd90e4', '[\"*\"]', NULL, NULL, '2023-12-11 06:18:41', '2023-12-11 06:18:41'),
(367, 'App\\Models\\User', 66, 'API TOKEN', 'cebfad5724c7a2b4cb4b3bbe77c930acd69397a971fc3a97e8790552a0e1aedb', '[\"*\"]', '2023-12-11 06:21:12', NULL, '2023-12-11 06:20:57', '2023-12-11 06:21:12'),
(368, 'App\\Models\\User', 67, 'API TOKEN', 'bd05f3935ca56b4740ffd212d4903ef42b8d26e9be4b54b584bbf7e3c562cf7d', '[\"*\"]', '2023-12-11 06:21:56', NULL, '2023-12-11 06:21:20', '2023-12-11 06:21:56'),
(369, 'App\\Models\\User', 67, 'API TOKEN', '1757a5b2d8a2092d2250110da15451f321be5cb507761df8bebbed6ee16c07b0', '[\"*\"]', NULL, NULL, '2023-12-11 06:21:49', '2023-12-11 06:21:49'),
(370, 'App\\Models\\User', 67, 'API TOKEN', 'bd75c8ab01d5a9f88344c4eb2779a7d21c8b5d7eaf8f43212c067cce5fa25851', '[\"*\"]', '2023-12-11 06:21:59', NULL, '2023-12-11 06:21:56', '2023-12-11 06:21:59'),
(371, 'App\\Models\\User', 68, 'API TOKEN', '94f911130ede0a441f3b1856d6fae772cdc62ac264363a437343435432e31092', '[\"*\"]', '2023-12-11 06:40:40', NULL, '2023-12-11 06:22:26', '2023-12-11 06:40:40'),
(372, 'App\\Models\\User', 68, 'API TOKEN', '13d0dd435ca4618dba2897446301f22dfac01b4d9fbaceed4c3b87fd51d030ee', '[\"*\"]', NULL, NULL, '2023-12-11 06:23:02', '2023-12-11 06:23:02'),
(373, 'App\\Models\\User', 68, 'API TOKEN', 'baaafb33ed409c585951db8d634c7d3569dab719a5cb28d6a555c036d793d775', '[\"*\"]', '2023-12-11 06:40:42', NULL, '2023-12-11 06:40:40', '2023-12-11 06:40:42'),
(374, 'App\\Models\\User', 57, 'API TOKEN', '4eb36113e68295b136abf6ea30edc98a4c653823aa425b78026e27b4efad48b0', '[\"*\"]', '2023-12-11 13:16:07', NULL, '2023-12-11 13:15:58', '2023-12-11 13:16:07'),
(376, 'App\\Models\\User', 57, 'API TOKEN', '3a9ec148a324ee573a1c9164418462f1735b9b59a417a24e8ce10a1a490cb159', '[\"*\"]', '2023-12-11 13:17:53', NULL, '2023-12-11 13:17:49', '2023-12-11 13:17:53'),
(379, 'App\\Models\\User', 17, 'API TOKEN', '1149458fff21c36578bac224286ff3ac6ca23c33304d71e8e3f905bf1af27baa', '[\"*\"]', '2024-01-03 07:16:51', NULL, '2024-01-03 07:15:26', '2024-01-03 07:16:51'),
(380, 'App\\Models\\User', 17, 'API TOKEN', '1083fe2b4d3eed3e2b0e1bae04f78f5c8fb3db5d391275d4e640c0ab7075c56d', '[\"*\"]', '2024-01-03 07:25:45', NULL, '2024-01-03 07:20:35', '2024-01-03 07:25:45'),
(383, 'App\\Models\\User', 70, 'API TOKEN', '8b8e3d3ef1122cb83b43db72620910dbc6c91fdafb847041c24927aaefce72af', '[\"*\"]', NULL, NULL, '2024-01-03 08:12:29', '2024-01-03 08:12:29'),
(384, 'App\\Models\\User', 71, 'API TOKEN', '180e0be0f0baefc9c3f4f7beed123644f967120151ec8f0a11b218e30a10017e', '[\"*\"]', NULL, NULL, '2024-01-03 08:15:06', '2024-01-03 08:15:06'),
(385, 'App\\Models\\User', 72, 'API TOKEN', '9c9ce70b9101a2b5815724d6e7ccdce014b4cae2f7f1647058f57f4b7cb38193', '[\"*\"]', NULL, NULL, '2024-01-03 08:15:32', '2024-01-03 08:15:32'),
(386, 'App\\Models\\User', 73, 'API TOKEN', '7fe8db8c6a533f8c71f7e443018173456b4b29f566e159c5203c599dc5ba68c0', '[\"*\"]', '2024-01-03 08:17:27', NULL, '2024-01-03 08:17:07', '2024-01-03 08:17:27'),
(387, 'App\\Models\\User', 74, 'API TOKEN', 'cbea7d88ad5efb2cfca85af05d3946e92951bb03b6180c5d5a376ee3a0d138ce', '[\"*\"]', '2024-01-03 08:21:23', NULL, '2024-01-03 08:21:03', '2024-01-03 08:21:23'),
(389, 'App\\Models\\User', 17, 'API TOKEN', '3141e8c597bb2fa0184d814de41829dd4f131ae49475610b53ac6f8dbbcb5657', '[\"*\"]', '2024-01-03 09:29:43', NULL, '2024-01-03 08:22:26', '2024-01-03 09:29:43'),
(390, 'App\\Models\\User', 17, 'API TOKEN', 'da95b3d6bbdf698a023698d256cb4c37ab8f3ee4348fb5a301d89af463274c02', '[\"*\"]', '2024-01-03 09:28:33', NULL, '2024-01-03 09:26:49', '2024-01-03 09:28:33'),
(392, 'App\\Models\\User', 75, 'API TOKEN', 'd4f0930bfd2f9395726db06798d576f2bbbce53d122cacd48c2155d44a6b8de1', '[\"*\"]', '2024-01-03 13:35:44', NULL, '2024-01-03 10:31:51', '2024-01-03 13:35:44'),
(393, 'App\\Models\\User', 75, 'API TOKEN', '14f2afb17357a20062b8b9db229bf283d85847079496d8ba3bb57d98850ca005', '[\"*\"]', NULL, NULL, '2024-01-03 10:32:14', '2024-01-03 10:32:14'),
(394, 'App\\Models\\User', 17, 'API TOKEN', '80e38c5aee40e21b625fba693a90bff05a9e6fabff03c583438cd4cbc0ee2552', '[\"*\"]', '2024-01-03 11:26:40', NULL, '2024-01-03 11:26:00', '2024-01-03 11:26:40'),
(395, 'App\\Models\\User', 75, 'API TOKEN', '19710327b57f1d424e1ed19ddb4aafe84d5cf4db58c12392f574a7563431bb51', '[\"*\"]', '2024-01-11 10:32:06', NULL, '2024-01-03 13:35:44', '2024-01-11 10:32:06'),
(396, 'App\\Models\\User', 17, 'API TOKEN', 'd455c5fb64bfc702309382e349e2bf948e851ec4597db92aa78fccf6e8b826e4', '[\"*\"]', '2024-01-03 13:47:34', NULL, '2024-01-03 13:46:21', '2024-01-03 13:47:34'),
(397, 'App\\Models\\User', 76, 'API TOKEN', '3b2d04a331c0495dbed7401b85ea81b0020271d5e39a62eff8e6c096ec1b278c', '[\"*\"]', '2024-01-04 14:19:31', NULL, '2024-01-04 14:17:45', '2024-01-04 14:19:31'),
(399, 'App\\Models\\User', 57, 'API TOKEN', 'ba719d179ccbc48c5c955ef9471a8ec7792b7f16221e0a3e90b119d5fb0c428f', '[\"*\"]', '2024-01-10 09:13:03', NULL, '2024-01-09 06:41:51', '2024-01-10 09:13:03'),
(400, 'App\\Models\\User', 57, 'API TOKEN', 'ff3d59e6a28dd15fd61af23d8d5466e6e95e22cdfdc494267f9fcc811a3ed521', '[\"*\"]', '2024-01-11 08:01:32', NULL, '2024-01-11 07:58:01', '2024-01-11 08:01:32'),
(401, 'App\\Models\\User', 75, 'API TOKEN', '8e1bec095058edf97a8dcd8ef1d39a2029900be047d336aec59cdb96c18f33fe', '[\"*\"]', '2024-01-21 09:52:14', NULL, '2024-01-11 10:32:06', '2024-01-21 09:52:14'),
(403, 'App\\Models\\User', 77, 'API TOKEN', 'cf82666cf895c582bfebc1cd4411b5005f0a1f69c1a7e44e0d101ba6950ed121', '[\"*\"]', NULL, NULL, '2024-01-17 12:07:28', '2024-01-17 12:07:28'),
(404, 'App\\Models\\User', 80, 'API TOKEN', 'ff40f4fbf7712b93d5468392f87dd999814ec4811c2ea024f89e99e683ccea52', '[\"*\"]', '2024-01-26 22:39:38', NULL, '2024-01-26 21:37:30', '2024-01-26 22:39:38'),
(405, 'App\\Models\\User', 80, 'API TOKEN', 'bf4e45359482b8de8676c64be1f7ba7c8066b81eb7b032cb8951747229c92f5a', '[\"*\"]', '2024-01-26 22:39:58', NULL, '2024-01-26 22:39:38', '2024-01-26 22:39:58'),
(406, 'App\\Models\\User', 80, 'API TOKEN', 'cfb6db0aebb3e2c11425a32b588f18c01c8d9c140c06de3f7d76142fe9bac397', '[\"*\"]', '2024-01-26 22:40:01', NULL, '2024-01-26 22:39:58', '2024-01-26 22:40:01'),
(408, 'App\\Models\\User', 81, 'API TOKEN', '18c3ec17f140d44c6499959c95cddd4a488a8d35dcb88132f236df0d9da860de', '[\"*\"]', '2024-03-09 12:11:13', NULL, '2024-03-09 12:10:54', '2024-03-09 12:11:13'),
(411, 'App\\Models\\User', 82, 'API TOKEN', '63f7fa949795fcc0a7b42ebf99a826ad9b95e6fe834ea7637dc02be72751f773', '[\"*\"]', '2024-03-12 19:34:10', NULL, '2024-03-12 19:29:43', '2024-03-12 19:34:10'),
(412, 'App\\Models\\User', 82, 'API TOKEN', '9fe99937c0d709c7b605003312087b0ab0201709cdd836f7cd62ea4ed1f9f544', '[\"*\"]', '2024-03-12 19:34:41', NULL, '2024-03-12 19:34:10', '2024-03-12 19:34:41'),
(413, 'App\\Models\\User', 82, 'API TOKEN', 'd3fe04cd7d90d380aafa19e933d43e7854e843556c304948dd4216de699ed5ad', '[\"*\"]', '2024-03-13 16:35:46', NULL, '2024-03-12 19:34:41', '2024-03-13 16:35:46'),
(414, 'App\\Models\\User', 82, 'API TOKEN', '1cffab416da99a99cd0cdf1113e1725dc6dfbe189fc14fc9e21169e99cbbece1', '[\"*\"]', '2024-03-13 16:35:55', NULL, '2024-03-13 16:35:46', '2024-03-13 16:35:55'),
(415, 'App\\Models\\User', 82, 'API TOKEN', '72a76956fdb251b36e6cbbfcbb3a00428e6847fa2ffcd1376faf74735b1c6823', '[\"*\"]', NULL, NULL, '2024-03-13 16:35:55', '2024-03-13 16:35:55'),
(417, 'App\\Models\\User', 75, 'API TOKEN', 'c58de96baa66037271af1e4be4c3201cd58d997672a24ceb5040dba8970b67fc', '[\"*\"]', '2024-04-29 04:11:26', NULL, '2024-04-29 04:10:15', '2024-04-29 04:11:26'),
(418, 'App\\Models\\User', 83, 'API TOKEN', '0c205e1381b324f29b31d07790fe77b281505f0b05ab702b0914f80cf576ece1', '[\"*\"]', NULL, NULL, '2024-04-29 04:15:38', '2024-04-29 04:15:38'),
(419, 'App\\Models\\User', 83, 'API TOKEN', 'cb40c77723e2c3b96586ca3e7d64d52e5600072598edd438663ed37f297300db', '[\"*\"]', '2024-04-29 04:22:23', NULL, '2024-04-29 04:22:08', '2024-04-29 04:22:23'),
(421, 'App\\Models\\User', 84, 'API TOKEN', 'eeb3cfdd1e7bf73b4e0ec9790ec3eeb46886ff58ca6fe850b6d96de2d8e1f692', '[\"*\"]', NULL, NULL, '2024-04-29 04:33:12', '2024-04-29 04:33:12'),
(422, 'App\\Models\\User', 84, 'API TOKEN', '923f506c3ef73bf9da63b504a64a425c3dc8fca38ca163133fea34ede0bed63d', '[\"*\"]', NULL, NULL, '2024-04-29 06:09:58', '2024-04-29 06:09:58'),
(423, 'App\\Models\\User', 15, 'API TOKEN', 'a5cddfb796fd2070b0085505dadefe5e8b14d43dfb60fe54228bb8e3c56ed9fe', '[\"*\"]', NULL, NULL, '2024-04-29 09:30:24', '2024-04-29 09:30:24'),
(424, 'App\\Models\\User', 84, 'API TOKEN', '96e19df17f48b9dc7a64370ca41407fc40dbf655980987448c66ec306f92a1d4', '[\"*\"]', NULL, NULL, '2024-04-29 11:30:15', '2024-04-29 11:30:15'),
(426, 'App\\Models\\User', 85, 'API TOKEN', 'b37b61df42b9a2ffca0c164088f827fbc2e5847e16a3a3dd286006ba623385a8', '[\"*\"]', NULL, NULL, '2024-04-30 04:06:08', '2024-04-30 04:06:08'),
(427, 'App\\Models\\User', 43, 'API TOKEN', 'd683457841f4f115c1926deade8a9c3e387870350fc6bf28d6337299390902c4', '[\"*\"]', NULL, NULL, '2024-04-30 04:09:50', '2024-04-30 04:09:50'),
(428, 'App\\Models\\User', 84, 'API TOKEN', '35af0be16e41cf7284e0f292bfaed687a63f3bc0d0b8e983a5bc729e58b43ab3', '[\"*\"]', NULL, NULL, '2024-04-30 04:20:52', '2024-04-30 04:20:52'),
(429, 'App\\Models\\User', 84, 'API TOKEN', 'd21e28f51db1eb3aea6c192f5ca2a2bdd089907bd35b10ec0a127f25e96a69d2', '[\"*\"]', NULL, NULL, '2024-04-30 04:21:12', '2024-04-30 04:21:12'),
(430, 'App\\Models\\User', 84, 'API TOKEN', '233a5de107c624baa7f909a4fe731d90cf95d7daf9e1fc49913ff9bd0354711a', '[\"*\"]', NULL, NULL, '2024-04-30 04:21:31', '2024-04-30 04:21:31'),
(431, 'App\\Models\\User', 15, 'API TOKEN', '9f6cd9d2adda794bf908e9c0179b89d24aa8d6e85354c7bbe65f54293f325391', '[\"*\"]', NULL, NULL, '2024-04-30 04:39:04', '2024-04-30 04:39:04'),
(432, 'App\\Models\\User', 86, 'API TOKEN', 'f4588bb4a7fe5cb96f815982fbaa46d446e58415c50c295edc25b5b66eddda91', '[\"*\"]', '2024-04-30 04:42:03', NULL, '2024-04-30 04:41:30', '2024-04-30 04:42:03'),
(435, 'App\\Models\\User', 84, 'API TOKEN', 'a1ab67f3986168f5574242c8fe9019340be8e007fcf7b7211213a802fadfc4cc', '[\"*\"]', NULL, NULL, '2024-04-30 05:03:36', '2024-04-30 05:03:36'),
(437, 'App\\Models\\User', 84, 'API TOKEN', '1e955fe241c62cff9a4aa3732f3156e4c0a1a1b27e628d47375a3615164a8519', '[\"*\"]', '2024-04-30 11:24:31', NULL, '2024-04-30 05:46:13', '2024-04-30 11:24:31'),
(439, 'App\\Models\\User', 84, 'API TOKEN', '8104cc19e0837cde976d41b95c4bbf48cdff666626adc64666a1ee4cfa9b9c33', '[\"*\"]', NULL, NULL, '2024-04-30 06:01:47', '2024-04-30 06:01:47'),
(440, 'App\\Models\\User', 17, 'API TOKEN', '4a7b9602679451f52cb3d6a907abb2a633b272a5b4a29aa727c419183c6e0c7b', '[\"*\"]', '2024-04-30 19:53:23', NULL, '2024-04-30 10:20:27', '2024-04-30 19:53:23'),
(441, 'App\\Models\\User', 84, 'API TOKEN', 'ffd8247e2ec447b419970f53da8022d221f235c3c624fc3448808e26677a9915', '[\"*\"]', '2024-04-30 11:24:36', NULL, '2024-04-30 11:24:31', '2024-04-30 11:24:36'),
(442, 'App\\Models\\User', 84, 'API TOKEN', '46bee9f8dea5c1488147fd1a0b02fdfd65616ed936106e728217f9511c4b93fc', '[\"*\"]', '2024-04-30 11:24:54', NULL, '2024-04-30 11:24:36', '2024-04-30 11:24:54'),
(443, 'App\\Models\\User', 84, 'API TOKEN', '2169af8406faad96f9164001dda9b2c994e027c363b2871b052540cdb606f561', '[\"*\"]', '2024-04-30 11:25:00', NULL, '2024-04-30 11:24:54', '2024-04-30 11:25:00'),
(444, 'App\\Models\\User', 84, 'API TOKEN', 'a90998ecdb1f7e1976164c4bb0a2cc8ec12e4b117c693f9b98b84c68e475c2ee', '[\"*\"]', '2024-04-30 11:25:03', NULL, '2024-04-30 11:25:00', '2024-04-30 11:25:03'),
(445, 'App\\Models\\User', 84, 'API TOKEN', '225b2dafc89c023798e46e8c36ff08277970b26a80a6e3213f1c070e5166d139', '[\"*\"]', '2024-04-30 11:27:51', NULL, '2024-04-30 11:25:03', '2024-04-30 11:27:51'),
(446, 'App\\Models\\User', 17, 'API TOKEN', 'da03373936e603acc87890782e8acf90d8c3af9c9c5c04517cf48f4c95d2d04e', '[\"*\"]', '2024-04-30 11:29:07', NULL, '2024-04-30 11:27:03', '2024-04-30 11:29:07'),
(447, 'App\\Models\\User', 84, 'API TOKEN', '109df4df7de2eacec65b6d8cf7bd8d2ea58ddebc66763a166fc7b2b632c3460b', '[\"*\"]', '2024-04-30 11:31:14', NULL, '2024-04-30 11:27:51', '2024-04-30 11:31:14'),
(448, 'App\\Models\\User', 84, 'API TOKEN', '9570220366adebf7ac0c80a64c011ec411d252c4aa6455a579e208bb6a64e368', '[\"*\"]', '2024-04-30 11:31:18', NULL, '2024-04-30 11:31:14', '2024-04-30 11:31:18'),
(449, 'App\\Models\\User', 84, 'API TOKEN', '8dd7a69ef9051c625f85043fc8b16a2b47408b3847cdc2f416d7b5a2b2dc04a5', '[\"*\"]', '2024-04-30 11:43:52', NULL, '2024-04-30 11:31:18', '2024-04-30 11:43:52'),
(451, 'App\\Models\\User', 17, 'API TOKEN', '39c25f8596dfc5cd04d93b2bff7aca89d5af69e991fcc1691f3adcfd37505332', '[\"*\"]', '2024-05-05 17:43:46', NULL, '2024-05-01 03:49:00', '2024-05-05 17:43:46'),
(452, 'App\\Models\\User', 87, 'API TOKEN', '76bd17c6d3d1fad812a67b7ebb1d2009de31c87d7d16bd20b2044c0dfcb46635', '[\"*\"]', NULL, NULL, '2024-05-01 04:03:45', '2024-05-01 04:03:45'),
(453, 'App\\Models\\User', 88, 'API TOKEN', '931a60ba1fc2a6d9098082eeb28b1497c22f716386082c1cd6516fadbcdbbdb7', '[\"*\"]', '2024-05-01 04:35:47', NULL, '2024-05-01 04:07:33', '2024-05-01 04:35:47'),
(455, 'App\\Models\\User', 17, 'API TOKEN', '52b1e357f1be6b3a03a14ca75afc00426595f709ce165399485b61b28880151c', '[\"*\"]', '2024-05-01 05:34:43', NULL, '2024-05-01 05:30:43', '2024-05-01 05:34:43'),
(456, 'App\\Models\\User', 17, 'API TOKEN', '2ca27386fe69a64fbd4a9d4e02178fee458e3e4716b77ce807b5b8ed66ea0b4c', '[\"*\"]', '2024-05-01 08:33:41', NULL, '2024-05-01 08:30:59', '2024-05-01 08:33:41'),
(457, 'App\\Models\\User', 17, 'API TOKEN', 'b610a1cd9ec9658eff94b9445e9b19695670cf8b641350ec5ad43177de562df3', '[\"*\"]', '2024-05-01 11:38:23', NULL, '2024-05-01 11:37:55', '2024-05-01 11:38:23'),
(459, 'App\\Models\\User', 88, 'API TOKEN', '59abc647342d18043e0235f409ab9b8ede72cb71e9fa6918f16bba3db6cfa263', '[\"*\"]', '2024-05-01 12:13:45', NULL, '2024-05-01 12:10:34', '2024-05-01 12:13:45'),
(460, 'App\\Models\\User', 88, 'API TOKEN', '0b80c213415717eb6b088c65ae3c5477897a66cd3248b1c72a588d064ccfe27b', '[\"*\"]', NULL, NULL, '2024-05-05 05:51:11', '2024-05-05 05:51:11'),
(461, 'App\\Models\\User', 88, 'API TOKEN', '61b7f3e121f03c1aa3fff55d1624cfd8db0aa2ca9046b991a445bc13aa74bf79', '[\"*\"]', '2024-05-05 05:55:02', NULL, '2024-05-05 05:52:48', '2024-05-05 05:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `desc_ar` text NOT NULL,
  `desc_en` text NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `discount` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount` double UNSIGNED NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `code`, `discount`, `from`, `to`, `created_at`, `updated_at`) VALUES
(1, '32323', 10, '2023-11-05', '2024-12-30', '2023-10-29 22:00:00', '2023-11-05 07:57:35'),
(2, '1212', 50, '2023-11-29', '2023-12-09', '2023-11-29 11:19:19', '2023-11-29 11:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `promo_code_user`
--

CREATE TABLE `promo_code_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `promo_code_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `delivery_cost` decimal(9,3) NOT NULL DEFAULT 0.000,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `uuid` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serials`
--

CREATE TABLE `serials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `key` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serials`
--

INSERT INTO `serials` (`id`, `card_id`, `user_id`, `key`, `created_at`, `updated_at`) VALUES
(29, 93, 76, '45788963', '2023-11-28 11:03:01', '2024-01-04 14:39:50'),
(30, 93, 76, '8754316+', '2023-11-29 11:02:49', '2024-01-04 14:39:50'),
(31, 91, 15, '11111111', '2023-12-05 09:07:55', '2024-01-01 12:06:48'),
(32, 91, 15, '222222', '2023-12-05 09:08:00', '2024-01-01 12:07:48'),
(34, 90, 17, '444444', '2023-12-05 09:08:10', '2024-01-03 07:24:55'),
(36, 89, 81, '5555555', '2023-12-05 09:08:24', '2024-03-09 12:11:31'),
(37, 4, 17, '66666', '2023-12-05 09:08:31', '2024-01-03 11:26:26'),
(38, 4, 17, '7777777', '2023-12-05 09:08:35', '2024-01-03 11:26:26'),
(39, 91, 81, '435435345', '2024-03-18 08:21:17', '2024-04-25 07:16:57'),
(40, 91, 81, '435345435', '2024-03-18 08:21:20', '2024-04-25 07:16:58'),
(41, 91, 81, '43543543', '2024-03-18 08:21:23', '2024-04-25 07:16:59'),
(42, 90, 81, '4353543', '2024-03-18 08:21:34', '2024-04-25 08:19:23'),
(43, 89, 81, '5435435', '2024-03-18 08:21:39', '2024-04-25 08:18:03'),
(44, 4, 81, '4354', '2024-03-18 08:21:46', '2024-04-25 07:14:05'),
(45, 4, 81, '543543', '2024-03-18 08:21:49', '2024-04-25 08:18:02'),
(46, 4, 81, '345435', '2024-03-18 08:21:51', '2024-04-25 08:18:02'),
(48, 91, 17, '457447887555', '2024-04-27 05:34:13', '2024-05-01 11:38:25'),
(49, 90, 17, '7786', '2024-05-01 07:39:28', '2024-05-01 11:38:26'),
(50, 90, 88, '786/', '2024-05-01 07:39:33', '2024-05-05 05:55:01'),
(51, 89, 17, '872', '2024-05-01 07:40:02', '2024-05-01 11:38:24'),
(52, 89, 17, '78', '2024-05-01 07:40:06', '2024-05-01 11:38:25'),
(53, 4, 17, '17828', '2024-05-01 07:40:15', '2024-05-01 11:38:27'),
(54, 94, 88, '7487', '2024-05-01 07:45:15', '2024-05-01 12:14:28');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'title', 'Al Dana Cards', '2023-10-29 13:52:16', '2023-11-02 06:39:29'),
(2, 'logo', '/storage/setting/1698594736_3928.webp', '2023-10-29 13:52:16', '2023-10-29 13:52:16'),
(3, 'tiktok', 'https://www.bing.com/news/search?q=instagram+food&qs=n&form=QBNT&sp=-1&lq=0&pq=instagram+food&sc=10-14&sk=&cvid=42BC83432A144AC696932534D74BF9B9&ghsh=0&ghacc=0&ghpl=', '2023-10-29 13:52:16', '2023-11-29 08:13:07'),
(4, 'snapchat', 'https://www.bing.com/news/search?q=Facebook&qpvt=facebook&FORM=EWRE', '2023-10-29 13:52:16', '2023-11-29 08:13:07'),
(5, 'instagram', 'https://www.bing.com/news/search?q=instagram+food&qs=n&form=QBNT&sp=-1&lq=0&pq=instagram+food&sc=10-14&sk=&cvid=42BC83432A144AC696932534D74BF9B9&ghsh=0&ghacc=0&ghpl=', '2023-10-29 13:52:16', '2023-11-29 08:13:07'),
(6, 'twitter', 'https://www.bing.com/news/search?q=Facebook&qpvt=facebook&FORM=EWRE', '2023-10-29 13:52:16', '2023-11-29 08:13:07'),
(7, 'facebook', 'https://www.bing.com/news/search?q=Facebook&qpvt=facebook&FORM=EWRE', '2023-10-29 13:52:16', '2023-11-29 08:03:04'),
(8, 'contact_us_title_ar', 'سوف نكون سعداء بخدمتك', '2023-10-29 13:52:16', '2023-10-29 13:52:16'),
(9, 'contact_us_title_en', 'We will be happy to serve you', '2023-10-29 13:52:16', '2023-10-29 13:52:16'),
(10, 'contact_us_header', '/storage/setting/1698594736_7735.webp', '2023-10-29 13:52:17', '2023-10-29 13:52:17'),
(11, 'newsletter_title_1_ar', 'حان الوقت لبعض النشرات الإخبارية', '2023-10-29 13:52:17', '2023-10-29 13:52:17'),
(12, 'newsletter_title_1_en', 'It\'s time for some newsletters', '2023-10-29 13:52:17', '2023-10-29 13:52:17'),
(13, 'newsletter_title_2_ar', 'اشترك في رسالتنا الإخبارية وكن أول من يعرف عروضنا الخاصة.', '2023-10-29 13:52:17', '2023-10-29 13:52:17'),
(14, 'newsletter_title_2_en', 'Subscribe to our newsletter and be the first to know about our special offers.', '2023-10-29 13:52:17', '2023-10-29 13:52:17'),
(15, 'newsletter_image', '/storage/setting/1698594737_7759.webp', '2023-10-29 13:52:17', '2023-10-29 13:52:17'),
(16, 'footer_logo', '/storage/setting/1698594737_7466.webp', '2023-10-29 13:52:17', '2023-10-29 13:52:17'),
(21, 'about_paragraph_ar', '<div class=\"w-full text-token-text-primary\" data-testid=\"conversation-turn-3\">\n<div class=\"px-4 py-2 justify-center text-base md:gap-6 m-auto\">\n<div class=\"flex flex-1 text-base mx-auto gap-3 md:px-5 lg:px-1 xl:px-5 md:max-w-3xl lg:max-w-[40rem] xl:max-w-[48rem] group final-completion\">\n<div class=\"relative flex w-full flex-col lg:w-[calc(100%-115px)] agent-turn\">\n<div class=\"flex-col gap-1 md:gap-3\">\n<div class=\"flex flex-grow flex-col max-w-full\">\n<div class=\"min-h-[20px] text-message flex flex-col items-start gap-3 whitespace-pre-wrap break-words [.text-message+&amp;]:mt-5 overflow-x-auto\" data-message-author-role=\"assistant\" data-message-id=\"01ba3a3e-631e-4ae2-81fd-4e86b69a59f2\">\n<div class=\"markdown prose w-full break-words dark:prose-invert light\">\n<p>مرحبًا بك في Dana - متجر الطعام عبر الإنترنت الرائد في عالم الطهي والتسوق الغذائي! نحن نفتخر بتقديم تجربة تسوق فريدة ومثيرة لعملائنا، حيث يمكنك العثور على مجموعة واسعة من المنتجات الغذائية الفاخرة والمستدامة.</p>\n<p>في Dana، نتفهم أهمية جودة الطعام وتأثيرها على حياتك اليومية. لذا، نسعى جاهدين لتوفير منتجات عالية الجودة ومتنوعة تلبي احتياجات جميع العائلات. سواء كنت تبحث عن المكونات الطازجة لوجبة منزلية شهية أو المنتجات العضوية والصحية، فإننا نقدم كل ما تحتاجه.</p>\n<p>تتميز خدمتنا بالسهولة والراحة. اطلب منتجاتك المفضلة بسرعة وسهولة من خلال موقعنا الإلكتروني السهل التصفح أو تطبيقنا المتاح على الهواتف الذكية. كما نوفر خدمة التوصيل السريعة لجميع مناطق المملكة، لضمان وصول طلباتك إليك في أسرع وقت ممكن.</p>\n<p>نحن نحرص على التواصل المستمر مع عملائنا، فإذا كانت لديك أي استفسارات أو اقتراحات، يمكنك التواصل مع فريق خدمة العملاء لدينا الذي يسعد بخدمتك في أي وقت.</p>\n<p>شكرًا لاختياركم Dana كمكان لتلبية احتياجاتكم الغذائية. نحن نتطلع إلى خدمتكم وتقديم تجربة تسوق فريدة وراضية دائمًا.</p>\n</div>\n</div>\n</div>\n<div class=\"mt-1 flex justify-start gap-3 empty:hidden\">\n<div class=\"text-gray-400 flex self-end lg:self-center justify-center lg:justify-start mt-0 gap-1 visible\"><button class=\"flex items-center gap-1.5 rounded-md p-1 pl-0 text-xs hover:text-gray-950 dark:text-gray-400 dark:hover:text-gray-200 disabled:dark:hover:text-gray-400 md:invisible md:group-hover:visible md:group-[.final-completion]:visible\"></button>\n<div class=\"flex gap-1\">&nbsp;</div>\n<div class=\"flex items-center gap-1.5 text-xs\">&nbsp;</div>\n</div>\n</div>\n</div>\n<div class=\"absolute\">\n<div class=\"flex w-full gap-2 items-center justify-center\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"mx-auto\">\n<div data-projection-id=\"73\">\n<div class=\"mx-auto mt-2 inline-flex rounded-xl border border-gray-100 dark:border-gray-700\">&nbsp;</div>\n</div>\n</div>', '2023-10-29 13:59:47', '2024-01-03 13:33:18'),
(22, 'about_paragraph_en', '<div class=\"flex-1 overflow-hidden\">\n<div class=\"react-scroll-to-bottom--css-aapyf-79elbk h-full\">\n<div class=\"react-scroll-to-bottom--css-aapyf-1n7m0yu\">\n<div class=\"flex flex-col pb-9 text-sm\">\n<div class=\"w-full text-token-text-primary\" data-testid=\"conversation-turn-5\">\n<div class=\"px-4 py-2 justify-center text-base md:gap-6 m-auto\">\n<div class=\"flex flex-1 text-base mx-auto gap-3 md:px-5 lg:px-1 xl:px-5 md:max-w-3xl lg:max-w-[40rem] xl:max-w-[48rem] group final-completion\">\n<div class=\"relative flex w-full flex-col lg:w-[calc(100%-115px)] agent-turn\">\n<div class=\"flex-col gap-1 md:gap-3\">\n<div class=\"flex flex-grow flex-col max-w-full\">\n<div class=\"min-h-[20px] text-message flex flex-col items-start gap-3 whitespace-pre-wrap break-words [.text-message+&amp;]:mt-5 overflow-x-auto\" data-message-author-role=\"assistant\" data-message-id=\"9b411718-72bc-4704-b199-18799b2f3e7a\">\n<div class=\"markdown prose w-full break-words dark:prose-invert light\">\n<p>Welcome to Dana - the leading online food store in the world of cooking and grocery shopping! We take pride in providing a unique and exciting shopping experience for our customers, where you can find a wide range of premium and sustainable food products.</p>\n<p>At Dana, we understand the importance of food quality and its impact on your daily life. Therefore, we strive to offer high-quality and diverse products that meet the needs of all families. Whether you\'re looking for fresh ingredients for a delicious home-cooked meal or organic and healthy products, we have everything you need.</p>\n<p>Our service is characterized by ease and convenience. Order your favorite products quickly and easily through our user-friendly website or our smartphone app. We also provide fast delivery service to all regions of the kingdom to ensure that your orders reach you as quickly as possible.</p>\n<p>We value continuous communication with our customers. If you have any inquiries or suggestions, you can contact our customer service team, who is happy to assist you at any time.</p>\n<p>Thank you for choosing Dana as your destination to meet your food needs. We look forward to serving you and providing a unique and satisfying shopping experience always.</p>\n</div>\n</div>\n</div>\n<div class=\"mt-1 flex justify-start gap-3 empty:hidden\">\n<div class=\"text-gray-400 flex self-end lg:self-center justify-center lg:justify-start mt-0 gap-1 visible\"><button class=\"flex items-center gap-1.5 rounded-md p-1 pl-0 text-xs hover:text-gray-950 dark:text-gray-400 dark:hover:text-gray-200 disabled:dark:hover:text-gray-400 md:invisible md:group-hover:visible md:group-[.final-completion]:visible\"></button>\n<div class=\"flex gap-1\">&nbsp;</div>\n<div class=\"flex items-center gap-1.5 text-xs\">&nbsp;</div>\n</div>\n</div>\n</div>\n<div class=\"absolute\">\n<div class=\"flex w-full gap-2 items-center justify-center\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"w-full pt-2 md:pt-0 dark:border-white/20 md:border-transparent md:dark:border-transparent md:w-[calc(100%-.5rem)]\"><form class=\"stretch mx-2 flex flex-row gap-3 last:mb-2 md:mx-4 md:last:mb-6 lg:mx-auto lg:max-w-2xl xl:max-w-3xl\">\n<div class=\"relative flex h-full flex-1 items-stretch md:flex-col\">\n<div class=\"flex w-full items-center\">&nbsp;</div>\n</div>\n</form></div>', '2023-10-29 13:59:47', '2024-01-03 13:33:18'),
(23, 'tax', '10', '2023-11-02 06:39:29', '2023-11-02 07:04:17'),
(24, 'google_link', 'https://play.google.com/store/apps/details?id=com.emcan.dana', '2023-11-02 06:39:29', '2024-01-03 11:10:15'),
(25, 'apple_link', 'https://apps.apple.com/app/aldana-app/id6472265993', '2023-11-02 06:39:29', '2024-01-03 11:10:15'),
(30, 'TAP_SECRET', 'sk_test_Hr7FQPlYf0eESgBV3hwG5T2x', NULL, NULL),
(31, 'ios_version', '1.7', NULL, '2024-05-01 12:00:29'),
(32, 'android_version', '1.9', NULL, '2024-05-01 12:00:29'),
(33, 'app_lock', '0', NULL, '2024-05-01 12:00:29'),
(34, 'order_auto', 'true', NULL, '2024-03-18 08:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `sidepages`
--

CREATE TABLE `sidepages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `value_ar` longtext DEFAULT NULL,
  `value_en` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sidepages`
--

INSERT INTO `sidepages` (`id`, `key`, `image`, `value_ar`, `value_en`, `created_at`, `updated_at`) VALUES
(1, 'terms', NULL, '<div class=\"flex-1 overflow-hidden\">\n<div class=\"react-scroll-to-bottom--css-aapyf-79elbk h-full\">\n<div class=\"react-scroll-to-bottom--css-aapyf-1n7m0yu\">\n<div class=\"flex flex-col pb-9 text-sm\">\n<div class=\"w-full text-token-text-primary\" data-testid=\"conversation-turn-9\">\n<div class=\"px-4 py-2 justify-center text-base md:gap-6 m-auto\">\n<div class=\"flex flex-1 text-base mx-auto gap-3 md:px-5 lg:px-1 xl:px-5 md:max-w-3xl lg:max-w-[40rem] xl:max-w-[48rem] group final-completion\">\n<div class=\"relative flex w-full flex-col lg:w-[calc(100%-115px)] agent-turn\">\n<div class=\"flex-col gap-1 md:gap-3\">\n<div class=\"flex flex-grow flex-col max-w-full\">\n<div class=\"min-h-[20px] text-message flex flex-col items-start gap-3 whitespace-pre-wrap break-words [.text-message+&amp;]:mt-5 overflow-x-auto\" data-message-author-role=\"assistant\" data-message-id=\"525970dd-8944-43df-ab36-68e750dda898\">\n<div class=\"markdown prose w-full break-words dark:prose-invert light\">\n<p>مرحبًا بك في Dana! تحدد هذه الشروط والأحكام قواعد ولوائح استخدام موقعنا وخدماتنا.</p>\n<p><strong>1. قبول الشروط</strong></p>\n<p>من خلال الوصول أو استخدام موقعنا الإلكتروني، فإنك توافق على الامتثال لهذه الشروط والأحكام. إذا كنت لا توافق على أي جزء من هذه الشروط، يرجى عدم استخدام موقعنا.</p>\n<p><strong>2. استخدام الموقع</strong></p>\n<p>2.1. يجب أن تكون على الأقل 18 عامًا أو تحظى بموافقة الوالدين لاستخدام موقعنا.</p>\n<p>2.2. أنت مسؤول عن التأكد من دقة وحدث المعلومات التي تقدمها.</p>\n<p>2.3. يمكن أن يؤدي الاستخدام غير المصرح به لهذا الموقع إلى دعوى تعويض و/أو يعد جريمة.</p>\n<p><strong>3. المنتجات والطلبات</strong></p>\n<p>3.1. جميع المنتجات المعروضة على موقعنا تخضع للتوفر.</p>\n<p>3.2. الأسعار قابلة للتغيير دون إشعار مسبق.</p>\n<p>3.3. تؤكد الطلبات عند الدفع، ونحن نحتفظ بالحق في إلغاء أي طلب حسب تقديرنا.</p>\n<p><strong>4. التوصيل</strong></p>\n<p>4.1. يتم تقدير أوقات التوصيل وقد تختلف.</p>\n<p>4.2. أنت مسؤول عن تقديم معلومات التوصيل الدقيقة.</p>\n<p>4.3. يتم نقل مخاطر فقدان أو تلف المنتجات إليك عند التوصيل.</p>\n<p><strong>5. حساب المستخدم</strong></p>\n<p>5.1. أنت مسؤول عن الحفاظ على سرية حسابك وكلمة المرور.</p>\n<p>5.2. نحتفظ بالحق في رفض الخدمة أو إنهاء الحسابات أو إزالة أو تحرير المحتوى بمفردنا.</p>\n<p><strong>6. الملكية الفكرية</strong></p>\n<p>6.1. كل المحتوى على هذا الموقع هو ملكية Dana ومحمي بحقوق الطبع والنشر والعلامة التجارية وقوانين الملكية الفكرية الأخرى.</p>\n<p>6.2. قد لا تقوم بإعادة إنتاج أو توزيع أو عرض أو إنشاء أعمال مشتقة من أي محتوى دون إذننا الكتابي.</p>\n<p><strong>7. سياسة الخصوصية</strong></p>\n<p>يرجى مراجعة سياسة الخصوصية لدينا لفهم كيفية جمعنا واستخدامنا وكشفنا للمعلومات.</p>\n<p><strong>8. القانون الساري</strong></p>\n<p>تخضع هذه الشروط والأحكام لقوانين وتفسيرات [اسم القانون في بلدك]، وتوافق على التقديم إلى الاختصاص الحصري للمحاكم في تلك المنطقة.</p>\n<p>من خلال استخدام موقعنا، فإنك توافق على هذه الشروط والأحكام. إذا كان لديك أي أسئلة أو مخاوف، يرجى الاتصال بنا على [البريد الإلكتروني أو رقم الهاتف للتواصل].</p>\n<p>تم تحديث هذه الشروط والأحكام في آخر مرة في [التاريخ].</p>\n</div>\n</div>\n</div>\n<div class=\"mt-1 flex justify-start gap-3 empty:hidden\">\n<div class=\"text-gray-400 flex self-end lg:self-center justify-center lg:justify-start mt-0 gap-1 visible\">&nbsp;</div>\n</div>\n</div>\n<div class=\"absolute\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"w-full pt-2 md:pt-0 dark:border-white/20 md:border-transparent md:dark:border-transparent md:w-[calc(100%-.5rem)]\"><form class=\"stretch mx-2 flex flex-row gap-3 last:mb-2 md:mx-4 md:last:mb-6 lg:mx-auto lg:max-w-2xl xl:max-w-3xl\">\n<div class=\"relative flex h-full flex-1 items-stretch md:flex-col\">\n<div class=\"flex w-full items-center\">&nbsp;</div>\n</div>\n</form></div>', '<div class=\"w-full text-token-text-primary\" data-testid=\"conversation-turn-7\">\n<div class=\"px-4 py-2 justify-center text-base md:gap-6 m-auto\">\n<div class=\"flex flex-1 text-base mx-auto gap-3 md:px-5 lg:px-1 xl:px-5 md:max-w-3xl lg:max-w-[40rem] xl:max-w-[48rem] group\">\n<div class=\"relative flex w-full flex-col lg:w-[calc(100%-115px)] agent-turn\">\n<div class=\"flex-col gap-1 md:gap-3\">\n<div class=\"flex flex-grow flex-col max-w-full\">\n<div class=\"min-h-[20px] text-message flex flex-col items-start gap-3 whitespace-pre-wrap break-words [.text-message+&amp;]:mt-5 overflow-x-auto\" data-message-author-role=\"assistant\" data-message-id=\"6818d61c-046a-4c2d-93cc-1d6790a857e7\">\n<div class=\"markdown prose w-full break-words dark:prose-invert light\">\n<p>Welcome to Dana! These Terms and Conditions outline the rules and regulations for the use of our website and services.</p>\n<p><strong>1. Acceptance of Terms</strong></p>\n<p>By accessing or using our website, you agree to comply with these Terms and Conditions. If you do not agree with any part of these terms, please do not use our website.</p>\n<p><strong>2. Use of the Website</strong></p>\n<p>2.1. You must be at least 18 years old or have parental consent to use our website.</p>\n<p>2.2. You are responsible for ensuring that the information you provide is accurate and up-to-date.</p>\n<p>2.3. Unauthorized use of this website may give rise to a claim for damages and/or be a criminal offense.</p>\n<p><strong>3. Products and Orders</strong></p>\n<p>3.1. All products displayed on our website are subject to availability.</p>\n<p>3.2. Prices are subject to change without notice.</p>\n<p>3.3. Orders are confirmed upon payment, and we reserve the right to cancel any order at our discretion.</p>\n<p><strong>4. Delivery</strong></p>\n<p>4.1. Delivery times are estimated and may vary.</p>\n<p>4.2. You are responsible for providing accurate delivery information.</p>\n<p>4.3. Risk of loss or damage to products passes to you upon delivery.</p>\n<p><strong>5. User Account</strong></p>\n<p>5.1. You are responsible for maintaining the confidentiality of your account and password.</p>\n<p>5.2. We reserve the right to refuse service, terminate accounts, or remove or edit content in our sole discretion.</p>\n<p><strong>6. Intellectual Property</strong></p>\n<p>6.1. All content on this website is the property of Dana and is protected by copyright, trademark, and other intellectual property laws.</p>\n<p>6.2. You may not reproduce, distribute, display, or create derivative works of any content without our written permission.</p>\n<p><strong>7. Privacy Policy</strong></p>\n<p>Please review our Privacy Policy to understand how we collect, use, and disclose information.</p>\n<p><strong>8. Governing Law</strong></p>\n<p>These Terms and Conditions are governed by and construed in accordance with the laws of [your jurisdiction], and you agree to submit to the exclusive jurisdiction of the courts in that location.</p>\n<p>By using our website, you agree to these Terms and Conditions. If you have any questions or concerns, please contact us at [contact email or phone number].</p>\n<p>These Terms and Conditions were last updated on [date].</p>\n</div>\n</div>\n</div>\n<div class=\"mt-1 flex justify-start gap-3 empty:hidden\">\n<div class=\"text-gray-400 flex self-end lg:self-center justify-center lg:justify-start mt-0 gap-1 visible\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>', '2023-10-29 13:59:59', '2024-01-03 13:34:40'),
(2, 'privacy', NULL, '<div class=\"flex-1 overflow-hidden\">\n<div class=\"react-scroll-to-bottom--css-aapyf-79elbk h-full\">\n<div class=\"react-scroll-to-bottom--css-aapyf-1n7m0yu\">\n<div class=\"flex flex-col pb-9 text-sm\">\n<div class=\"w-full text-token-text-primary\" data-testid=\"conversation-turn-13\">\n<div class=\"px-4 py-2 justify-center text-base md:gap-6 m-auto\">\n<div class=\"flex flex-1 text-base mx-auto gap-3 md:px-5 lg:px-1 xl:px-5 md:max-w-3xl lg:max-w-[40rem] xl:max-w-[48rem] group final-completion\">\n<div class=\"relative flex w-full flex-col lg:w-[calc(100%-115px)] agent-turn\">\n<div class=\"flex-col gap-1 md:gap-3\">\n<div class=\"flex flex-grow flex-col max-w-full\">\n<div class=\"min-h-[20px] text-message flex flex-col items-start gap-3 whitespace-pre-wrap break-words [.text-message+&amp;]:mt-5 overflow-x-auto\" data-message-author-role=\"assistant\" data-message-id=\"a0f68131-b475-49e4-a19d-cc78ce20beb4\">\n<div class=\"markdown prose w-full break-words dark:prose-invert light\">\n<p><strong>سياسة الخصوصية</strong></p>\n<p>مرحبًا بك في Dana! تحدد هذه سياسة الخصوصية كيفية جمعنا واستخدامنا وكشفنا وحماية معلوماتك الشخصية عند استخدامك لموقعنا.</p>\n<p><strong>1. المعلومات التي نقوم بجمعها</strong></p>\n<p>1.1. <strong>المعلومات الشخصية:</strong> قد نقوم بجمع المعلومات الشخصية مثل اسمك وعنوان بريدك الإلكتروني ورقم هاتفك عند إنشاء حساب أو تقديم طلب.</p>\n<p>1.2. <strong>معلومات الدفع:</strong> نقوم بجمع معلومات الدفع عند إجراء عملية شراء على موقعنا، بما في ذلك تفاصيل بطاقة الائتمان.</p>\n<p>1.3. <strong>معلومات الجهاز:</strong> قد نجمع معلومات حول الجهاز الذي تستخدمه للوصول إلى موقعنا، بما في ذلك عنوان IP ونوع المتصفح ونظام التشغيل.</p>\n<p><strong>2. كيفية استخدامنا لمعلوماتك</strong></p>\n<p>2.1. نستخدم المعلومات المجمعة لمعالجة وتنفيذ طلباتك، والتواصل معك، وتحسين خدماتنا.</p>\n<p>2.2. تتم معالجة معلومات الدفع الخاصة بك بشكل آمن ولا تُخزن على خوادمنا.</p>\n<p>2.3. قد نستخدم معلومات الجهاز لأغراض تحليل البيانات وتعزيز أمان موقعنا.</p>\n<p><strong>3. مشاركة المعلومات</strong></p>\n<p>3.1. لا نبيع أو نتاجر أو ننقل معلوماتك الشخصية لأطراف ثالثة بدون موافقتك.</p>\n<p>3.2. قد نشارك معلوماتك مع مقدمي الخدمات الذين يساعدوننا في تشغيل موقعنا وإدارة أعمالنا.</p>\n<p><strong>4. الكوكيز وتقنيات التتبع</strong></p>\n<p>4.1. نستخدم الكوكيز وتقنيات التتبع المماثلة لتعزيز تجربتك على موقعنا.</p>\n<p>4.2. يمكنك ضبط إعدادات متصفحك لتعطيل الكوكيز، ولكن ذلك قد يؤثر على قدرتك على استخدام بعض الميزات على موقعنا.</p>\n<p><strong>5. الأمان</strong></p>\n<p>5.1. نقوم بتنفيذ تدابير أمان لحماية معلوماتك الشخصية. ومع ذلك، لا يوجد أي أسلوب للنقل عبر الإنترنت أو التخزين الإلكتروني يكون آمنًا بشكل كامل.</p>\n<p><strong>6. خياراتك</strong></p>\n<p>6.1. يمكنك مراجعة وتحديث معلومات حسابك من خلال إعدادات ملف التعريف الخاص بك.</p>\n<p>6.2. لديك الحق في الاختيار بخصوص تلقي الاتصالات الترويجية منا.</p>\n<p><strong>7. خصوصية الأطفال</strong></p>\n<p>7.1. موقعنا غير موجه للأفراد الذين تقل أعمارهم عن 18 عامًا، ونحن لا نقوم عن عمد بجمع معلومات شخصية من الأطفال.</p>\n<p><strong>8. تغييرات في سياسة الخصوصية</strong></p>\n<p>8.1. نحتفظ بالحق في تحديث وتغيير سياسة الخصوصية هذه. ستكون أي تغييرات فعالة عند نشرها على موقعنا.</p>\n<p><strong>9. اتصل بنا</strong></p>\n<p>إذا كانت لديك أي أسئلة أو مخاوف بشأن سياسة الخصوصية لدينا، يرجى الاتصال بنا على [البريد الإلكتروني أو رقم الهاتف للتواصل].</p>\n<p>تم تحديث سياسة الخصوصية هذه في آخر مرة في [التاريخ].</p>\n</div>\n</div>\n</div>\n<div class=\"mt-1 flex justify-start gap-3 empty:hidden\">\n<div class=\"text-gray-400 flex self-end lg:self-center justify-center lg:justify-start mt-0 gap-1 visible\"><button class=\"flex items-center gap-1.5 rounded-md p-1 pl-0 text-xs hover:text-gray-950 dark:text-gray-400 dark:hover:text-gray-200 disabled:dark:hover:text-gray-400 md:invisible md:group-hover:visible md:group-[.final-completion]:visible\"></button>\n<div class=\"flex gap-1\">&nbsp;</div>\n<div class=\"flex items-center gap-1.5 text-xs\">&nbsp;</div>\n</div>\n</div>\n</div>\n<div class=\"absolute\">\n<div class=\"flex w-full gap-2 items-center justify-center\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"w-full pt-2 md:pt-0 dark:border-white/20 md:border-transparent md:dark:border-transparent md:w-[calc(100%-.5rem)]\"><form class=\"stretch mx-2 flex flex-row gap-3 last:mb-2 md:mx-4 md:last:mb-6 lg:mx-auto lg:max-w-2xl xl:max-w-3xl\">\n<div class=\"relative flex h-full flex-1 items-stretch md:flex-col\">\n<div class=\"flex w-full items-center\">&nbsp;</div>\n</div>\n</form></div>', '<div class=\"flex-1 overflow-hidden\">\n<div class=\"react-scroll-to-bottom--css-aapyf-79elbk h-full\">\n<div class=\"react-scroll-to-bottom--css-aapyf-1n7m0yu\">\n<div class=\"flex flex-col pb-9 text-sm\">\n<div class=\"w-full text-token-text-primary\" data-testid=\"conversation-turn-11\">\n<div class=\"px-4 py-2 justify-center text-base md:gap-6 m-auto\">\n<div class=\"flex flex-1 text-base mx-auto gap-3 md:px-5 lg:px-1 xl:px-5 md:max-w-3xl lg:max-w-[40rem] xl:max-w-[48rem] group final-completion\">\n<div class=\"relative flex w-full flex-col lg:w-[calc(100%-115px)] agent-turn\">\n<div class=\"flex-col gap-1 md:gap-3\">\n<div class=\"flex flex-grow flex-col max-w-full\">\n<div class=\"min-h-[20px] text-message flex flex-col items-start gap-3 whitespace-pre-wrap break-words [.text-message+&amp;]:mt-5 overflow-x-auto\" data-message-author-role=\"assistant\" data-message-id=\"a09b1a9c-f222-4924-a280-fc31015e6af5\">\n<div class=\"markdown prose w-full break-words dark:prose-invert light\">\n<p>Welcome to Dana! This Privacy Policy outlines how we collect, use, disclose, and safeguard your personal information when you use our website.</p>\n<p><strong>1. Information We Collect</strong></p>\n<p>1.1. <strong>Personal Information:</strong> We may collect personal information such as your name, email address, and phone number when you create an account or place an order.</p>\n<p>1.2. <strong>Payment Information:</strong> We collect payment information when you make a purchase on our website, including credit card details.</p>\n<p>1.3. <strong>Device Information:</strong> We may collect information about the device you use to access our website, including IP address, browser type, and operating system.</p>\n<p><strong>2. How We Use Your Information</strong></p>\n<p>2.1. We use the collected information to process and fulfill your orders, communicate with you, and improve our services.</p>\n<p>2.2. Your payment information is securely processed and not stored on our servers.</p>\n<p>2.3. We may use device information for analytics and to enhance the security of our website.</p>\n<p><strong>3. Information Sharing</strong></p>\n<p>3.1. We do not sell, trade, or otherwise transfer your personal information to third parties without your consent.</p>\n<p>3.2. We may share your information with trusted third-party service providers who assist us in operating our website and conducting our business.</p>\n<p><strong>4. Cookies and Tracking Technologies</strong></p>\n<p>4.1. We use cookies and similar tracking technologies to enhance your experience on our website.</p>\n<p>4.2. You can adjust your browser settings to disable cookies, but this may affect your ability to use certain features on our website.</p>\n<p><strong>5. Security</strong></p>\n<p>5.1. We implement security measures to protect your personal information. However, no method of transmission over the internet or electronic storage is completely secure.</p>\n<p><strong>6. Your Choices</strong></p>\n<p>6.1. You can review and update your account information through your profile settings.</p>\n<p>6.2. You have the right to opt-out of receiving promotional communications from us.</p>\n<p><strong>7. Children\'s Privacy</strong></p>\n<p>7.1. Our website is not directed to individuals under the age of 18. We do not knowingly collect personal information from children.</p>\n<p><strong>8. Changes to the Privacy Policy</strong></p>\n<p>8.1. We reserve the right to update and change this Privacy Policy. Any changes will be effective when posted on our website.</p>\n<p><strong>9. Contact Us</strong></p>\n<p>If you have any questions or concerns about our Privacy Policy, please contact us at [contact email or phone number].</p>\n<p>This Privacy Policy was last updated on [date].</p>\n</div>\n</div>\n</div>\n<div class=\"mt-1 flex justify-start gap-3 empty:hidden\">\n<div class=\"text-gray-400 flex self-end lg:self-center justify-center lg:justify-start mt-0 gap-1 visible\">&nbsp;</div>\n</div>\n</div>\n<div class=\"absolute\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"w-full pt-2 md:pt-0 dark:border-white/20 md:border-transparent md:dark:border-transparent md:w-[calc(100%-.5rem)]\"><form class=\"stretch mx-2 flex flex-row gap-3 last:mb-2 md:mx-4 md:last:mb-6 lg:mx-auto lg:max-w-2xl xl:max-w-3xl\">\n<div class=\"relative flex h-full flex-1 items-stretch md:flex-col\">\n<div class=\"flex w-full items-center\">&nbsp;</div>\n</div>\n</form></div>', '2023-10-29 14:00:22', '2024-01-03 13:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `paragraph_ar` varchar(255) NOT NULL,
  `paragraph_en` varchar(255) NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `image`, `paragraph_ar`, `paragraph_en`, `group_id`, `created_at`, `updated_at`) VALUES
(6, '/storage/slides/1714467253_7311.webp', 'Sit provident sint', 'Nulla sed accusamus ', 1, '2024-04-30 05:54:13', '2024-04-30 05:54:13');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `device_type` varchar(255) NOT NULL,
  `device_token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `device_version` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `user_id`, `device_type`, `device_token`, `created_at`, `updated_at`, `device_version`) VALUES
(1, 15, 'ios', '123456789', '2023-11-12 10:17:40', '2023-11-12 10:17:40', NULL),
(32, 15, 'ios', '124', '2023-11-27 13:21:37', '2024-01-31 13:53:13', '0'),
(70, 35, 'android', 'fautr9x8Spa6g9vmdh1voe:APA91bFpxUdaYci_8bFNw5_WFSlSP2QvBArOVTqqc1POOxAhi8v929k2SMn3SpDHVJxbI8BqsvLo-hXSE7vF2aQgkUdrTWLyKvbr14TTVX3UkuX6yiFiOGF-L_vRB_MQaOa3geTSJVHv', '2023-11-29 11:23:30', '2023-11-29 11:23:30', NULL),
(73, 42, 'ios', 'c29pbaIU9kyqhv4rcssREg:APA91bFM1jj3ExZ22CjodO4U006GoMHfrdBE9eK5VmifepkZPAXIOFm6LEiVtbcuQNOx2T8I4DpvEVOTVZJ08NpbCys5_nVqeadXJu08bre8Itxy-ySCz3niy4p_b2kdeDtTjs9KodxQ', '2023-11-29 12:03:25', '2023-11-29 12:03:25', NULL),
(74, 35, 'ios', 'ez3zLIhR9U-ljE11efBnzV:APA91bGBlp7mu-mcMVLwWHmiviyjUYhtXQ8J1usH42mfc3fmIzjGYwz6PFsgeK2KsvcM6I8m3V-5_oFGH_WpG_9du3IQENiYL6Ud_wFIaayJ5I2CNcPEuntZg_Y37gcaQ8UyJdvjQzSX', '2023-11-29 12:23:57', '2023-11-29 12:23:57', NULL),
(76, 44, 'ios', 'fJCmVRrOc08xvUsmY_9iMA:APA91bGvP_laX367QWW5TuEdlQIVrcm2jqgaxkjVc0xc7lQDxoEa7WpPR_QqYkhB-c1YdU4co5cuk3zBZXFT3JHXjxD5C2ibkRwgzg7gY2FBkVooI0Zjvjitn5lM483k53Lzjs00B04X', '2023-11-29 13:22:49', '2023-11-29 13:22:49', NULL),
(98, 57, 'android', 'cRgTFHuVToqp0mWBN4zIEy:APA91bG1oHBOlK_hvXn7Fy0b3PoUldNnemU3wZr1j23LH1w7oNptKj44EnposHT-4H_DGMdb1RWk1ZeBQFVRZC27RpQgIUfGMcC8ZzEZXgczTTAaWGmS9che0g46g8wNdTwglAqK9IcQ', '2023-12-05 13:11:36', '2024-01-11 07:58:01', NULL),
(99, 17, 'ios', 'cZK24fyA9kjWnJ1Tx6bnZO:APA91bGSGRcXT6QvlpvQJHAOv0-cTQXxqD9KYsr_eVWfuR-1KoSRECnWsygVwUMrwSjsyzKVthydqw37k3KjhkCLt-sWxtExmneEIc2jeBURv2xi8oLFg7uZurvuBtG49vGy1fURa2gO', '2023-12-05 14:07:14', '2024-05-01 11:37:55', NULL),
(104, 61, 'android', 'eNjcRPj_RN2rKTYShSWyvF:APA91bFmJZQ0D_w3FYwsu8YX3GdEfmmMG7fAWT6k93CI7ByPGdPKDMNrAEGahIxO3ImFdKakbNOterlk5iLDxBel4Pi07JHfQ7y7GVxbIdSsdcecRsIEytQBiKgLptyEAtgVjJV1zNKE', '2023-12-07 13:32:29', '2023-12-07 13:32:29', NULL),
(105, 62, 'android', 'eNjcRPj_RN2rKTYShSWyvF:APA91bFmJZQ0D_w3FYwsu8YX3GdEfmmMG7fAWT6k93CI7ByPGdPKDMNrAEGahIxO3ImFdKakbNOterlk5iLDxBel4Pi07JHfQ7y7GVxbIdSsdcecRsIEytQBiKgLptyEAtgVjJV1zNKE', '2023-12-07 13:34:40', '2023-12-07 13:34:40', NULL),
(113, 57, 'android', 'eU-ZyvjATc6L2veoDxgoIp:APA91bGDm-drxYrK-6xHo5xT9fU_p9qPPBGc3RHg8MJHOM6R3jPX7GQ2PGTF4k6SqI8f6mjDdbb4ZwA4K4LwD_Z0ySR9WS_9ceFJqqVUdC3yFmONafSd3JZJHXNdGMfv9AHVjYORVpIN', '2023-12-11 13:17:49', '2023-12-11 13:17:49', NULL),
(114, 70, 'ios', '123456789', '2024-01-03 08:12:29', '2024-01-03 08:12:29', NULL),
(116, 72, 'ios', '123456789', '2024-01-03 08:15:32', '2024-01-03 08:15:32', NULL),
(117, 73, 'ios', 'cY0gv6ZZZ0w0raK4bGtzTj:APA91bHoCKsvBV5N1rCQXAHHYJ6t826W3TeJRY8JaCYZqOZxup8W3bGXlwxWCpmjSBpgiCeP2VSIzX_1-LlumjrNDfZW3wUlE2CBDY8YAHwW7O4IvZtEYa8CQzJwPoJ1o9Q1aeGG6y0Z', '2024-01-03 08:17:07', '2024-01-03 08:17:07', NULL),
(118, 74, 'ios', 'cY0gv6ZZZ0w0raK4bGtzTj:APA91bHoCKsvBV5N1rCQXAHHYJ6t826W3TeJRY8JaCYZqOZxup8W3bGXlwxWCpmjSBpgiCeP2VSIzX_1-LlumjrNDfZW3wUlE2CBDY8YAHwW7O4IvZtEYa8CQzJwPoJ1o9Q1aeGG6y0Z', '2024-01-03 08:21:03', '2024-01-03 08:21:03', NULL),
(121, 77, 'android', 'epQCkBHdQn-0tdOsu_WMvE:APA91bH3D5BH0tctgR9qFLPlGQlTktEAGNXUhO-OWSn3INuLOj150mUeg929fv5kBoO1Gd1zv8ETnQgCTWz9xGTDD-kmDhB_sydmVSN52DnLnBG8gVRQllwUZIAmgNTB2cIbeQHisShq', '2024-01-17 12:07:28', '2024-01-17 12:07:28', NULL),
(126, 82, 'android', 'd6wk5D6sSsyT-TLAhFJkXQ:APA91bHiPjqf6xRI4MEvb0c4Nl0I_IoS9U68iq4wcwDGjwzKBs3F7Bg4naV0XJJ9X7VPb_G2905robo0GISXc4feAItsyOHSlPNaBFHe27lN08ZurBp91G6CdcQBPfFB2Rbtt48C1fEO', '2024-03-12 19:29:43', '2024-03-12 19:29:43', NULL),
(132, 84, 'ios', '123456789', '2024-04-29 06:09:58', '2024-04-29 06:09:58', NULL),
(134, 85, 'ios', 'eUoWhzYEWU_xuco1FqHjsV:APA91bFlr7c-SmwYdJdVOTddmeLgEcfTDJuR8xAdj8c4m1OHlG72zk-yDdNstde8H0NruwdRyQQgJhmKewGM-s4U-c4cF2xO5HYR2mfXdNQt4tmLVSSK9rqvgQoWnL9FfdDAS1N33LsR', '2024-04-30 04:06:08', '2024-04-30 04:06:08', NULL),
(135, 86, 'ios', 'eUoWhzYEWU_xuco1FqHjsV:APA91bFlr7c-SmwYdJdVOTddmeLgEcfTDJuR8xAdj8c4m1OHlG72zk-yDdNstde8H0NruwdRyQQgJhmKewGM-s4U-c4cF2xO5HYR2mfXdNQt4tmLVSSK9rqvgQoWnL9FfdDAS1N33LsR', '2024-04-30 04:41:30', '2024-04-30 04:41:30', NULL),
(139, 88, 'android', 'crU0uxRbTkWhDe0i_9PFdV:APA91bHTTs7pQRGxEgdnbiWnoFq2120JRqVwwgVyT9DYFdXzpTRrmtAJspu2jJ43ZFLsqW0YIijV-B0Uk1-q48tj2L1ueSn6qQRVL8mDD8bUsPi2pGb_5Gt8DqPJHkZmevesU1fSPJiT', '2024-05-01 12:10:34', '2024-05-01 12:10:34', NULL),
(140, 88, 'ios', 'fiTk2P3ZTUt0npicm0RNuS:APA91bFwSiur07e9H4llQuFY5vPLxrAB6vHOgfhOgFyeXllh732NlbFU1b0H7t1cCXoFRo0AJFdzFyiykwymkm228Wyv_NsYnETvNcF0GC1Av0kZMRZg8QkiLL5yo-t612JSEW3FoYTR', '2024-05-05 05:52:48', '2024-05-05 05:52:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_number` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_blocked` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `is_verified`, `password`, `remember_token`, `created_at`, `updated_at`, `country_id`, `is_blocked`) VALUES
(15, 'Holaa', 'test@test.com', '+201559944997', NULL, 1, '$2y$10$JEM8D3BuiZr0Cksb/7opp.FGHT81ocy51sdCaQZYry8dYWzSQZ2V6', NULL, '2023-11-05 07:48:14', '2024-04-29 09:30:24', 7, 0),
(16, 'Hola', 'testt@test.com', '+201539944997', NULL, 0, '$2y$10$e0ZGhLIZ2P/EiwacgGMBh.GauMtDvEAk.GOx5Y/oJHRJtfothg2jO', NULL, '2023-11-09 06:23:45', '2023-11-09 06:23:45', NULL, 0),
(17, 'Donia', 'donia@gmail.com', '+201019434345', NULL, 1, '$2y$10$6xvpqdAW94KvHAcHlwp/mulWWquqKKOe0XBItTn.C9j13p3k3hdda', NULL, '2023-11-21 11:59:12', '2024-01-01 12:10:57', NULL, 0),
(19, 'Amira', 'amiraahmed@gmail.com', '+201272068360', NULL, 0, '$2y$10$lKvLQo.oUTGRpABmtFX2ZOpeDu2x/6R5qT7qX4wDf9h9TZWDIIGDe', NULL, '2023-11-22 08:28:47', '2024-01-01 12:10:56', NULL, 0),
(32, 'non', 'bm@gmail.com', '+97312345678', NULL, 0, '$2y$10$X3zOzXPvw2LHVlOWwBhOT.LtANRnB6Y58DVvKhylt6jj7NR6rWGve', NULL, '2023-11-28 07:33:25', '2024-01-01 06:31:59', NULL, 0),
(34, 'DONIA', 'testing@gmail.com', '+97323456789', NULL, 1, '$2y$10$GFXi/abAsLM33l3ojGTAn.jseTRAKAhGn2hEuhipikdS34FGN3LuO', NULL, '2023-11-28 07:44:52', '2024-01-01 06:32:06', NULL, 0),
(35, 'test', 'test@ggmail.com', '+966557223386', NULL, 1, '$2y$10$ggIxl5nt3XdOkC3DsrmLQOC/D1GRQ3HbCLUw5AVhIvEY5YA4Gsyeq', NULL, '2023-11-28 13:40:23', '2024-01-01 06:32:07', NULL, 0),
(36, 'test', 'testtt@gmail.com', '+966548527618', NULL, 0, '$2y$10$Ty09bt7AWoolYfrV94CTeO2I00TErt8ezo.QE5dpXmG/Vxwjn8Vs6', NULL, '2023-11-28 13:42:33', '2024-03-09 08:51:36', NULL, 0),
(37, 'test', 'testtttt@gmail.com', '+966123456789', NULL, 0, '$2y$10$CtSQbM0IeBJhjF.bQksqGuCSLl78uGrMSRsDFWN8gyLSDAp6wzVZC', NULL, '2023-11-28 13:42:59', '2023-11-28 13:42:59', NULL, 0),
(38, 'basmaa', 'test@gmail.com', '+97325874163', NULL, 0, '$2y$10$LkjLY/jyjxb8gXFSNSiGN.//plQumF0o7.CuWPUx43tQh6sC6UD6a', NULL, '2023-11-29 10:18:15', '2023-11-29 10:18:15', NULL, 0),
(39, 'test', 'Basma@gmail.com', '+97314855663', NULL, 0, '$2y$10$gARAzFMlnQUpJicHpHW88OlW2Ff6GgjRq5wKA6w7XlrUafDZC1xoC', NULL, '2023-11-29 10:19:46', '2023-11-29 10:19:46', NULL, 0),
(41, 'test', 'testrr@gmail.com', '+97323456777', NULL, 0, '$2y$10$zknzyUFLwh9M/vFxLWl/5Oai7JYNW.7In7a0HwPu9cHVkzF4683MO', NULL, '2023-11-29 11:37:36', '2023-11-29 11:37:36', NULL, 0),
(42, 'job', 'try@gmail.com', '+97355555555', NULL, 0, '$2y$10$wkcgMwDT1cfP7WNXdfGNvOzS3I.RcrTMv3NPMnOk7kUrTfhlUwLs6', NULL, '2023-11-29 12:03:25', '2023-11-29 12:03:25', NULL, 0),
(43, 'hvhv', 'testf@gmail.com', '+201014041773', NULL, 0, '$2y$10$KpHjbRO04fFuEDOzmzOMOOm3JASqKMvEobeuyTMfEyseDx.oSPWx6', NULL, '2023-11-29 13:07:20', '2023-11-29 13:07:20', NULL, 0),
(44, 'bbvv', 'hbvg@gmail.com', '+97368458484', NULL, 0, '$2y$10$LqcAf3OwVHYP8oeR3J2yS.Mp66QsLtDeKbSm8yHBTbgVOarU.RsDW', NULL, '2023-11-29 13:22:49', '2023-11-29 13:22:49', NULL, 0),
(57, 'Amira Ahmed', 'amiran@gmail.com', '+201270563716', NULL, 1, '$2y$10$2Jwxe/IdaCusqkQSFOd38u8iAQHQRnMO.XLctHUlkzUcOEIFeEREe', NULL, '2023-12-05 13:11:36', '2023-12-11 13:15:58', NULL, 0),
(58, 'Amira', 'amira33@gmail.com', '+201270033661', NULL, 0, '$2y$10$0CeXZdITnDNOo9/9Lcg1HubGr4GF8sNmYy/JN/TmarZKz4HPcRLaW', NULL, '2023-12-05 14:16:07', '2023-12-05 14:16:07', NULL, 0),
(60, 'Henry Carrillo', 'lade@mailinator.com', '+1 (121) 987-5619', NULL, 1, '$2y$10$aliSCfLbRY27qrTKIDYGNurskwQrG9cVDAKDghsyRXDri/ImeEn96', NULL, '2023-12-06 13:34:33', '2023-12-06 13:34:33', NULL, 0),
(61, 'stc', 'cccc21888@gmail.com', '+9659698671100', NULL, 0, '$2y$10$nMNemj7eXOEqWSNsPVQKbekouMZygf66AuFncRIIEeh4aVtzxcfYK', NULL, '2023-12-07 13:32:29', '2023-12-07 13:32:29', NULL, 0),
(62, 'stc', 'aslam03427774040@gmail.com', '+97333373040', NULL, 0, '$2y$10$GycDXTr/Gq6lcGer65Iz3./7bReWB5fLuSZjyQZVcjIWH4C5EHKtq', NULL, '2023-12-07 13:34:40', '2023-12-07 13:34:40', NULL, 0),
(63, 'absma2', 'basma.mohamed@gmail', '12345677', NULL, 1, '$2y$10$.N7kstumUWePJ6VMvcNmE.LAS0Qc6zStCGD3R.FKBipKY8tnlEdme', NULL, '2023-12-10 12:33:32', '2024-05-01 03:48:33', NULL, 0),
(69, 'Mohamed Alhofy', 'test1@test.com', '201559944997', NULL, 1, '$2y$10$hfEG7uBzWMBAHxtAVatqbeTQWsQsRyfpmlbSrnPfo7rkW2jqGJbCq', NULL, '2023-12-28 10:32:19', '2023-12-28 10:33:00', NULL, 0),
(70, 'Hola', 'test4a@test.com', '+201554944997', NULL, 0, '$2y$10$wGTOxgdq4Wer0Kuq3/c.5.LFRKE8T/xIvrQGOz9kcOr5oDachNzyy', NULL, '2024-01-03 08:12:29', '2024-01-03 08:12:29', 7, 0),
(71, 'kjkj', 'jkh@gmail.com', '+9656876868768', NULL, 0, '$2y$10$RULSliEnauCtE15Xz4g7H.b6XnJmHS0OttyHm9wwOJwSVTcEk/R6y', NULL, '2024-01-03 08:15:06', '2024-01-03 08:15:06', 6, 0),
(72, 'Hola', 'testa@test.com', '+201003132899', NULL, 0, '$2y$10$WNl0MdeaZsCMihC1./sj7eUzACp52fS8ntJuGgTqKe13r9WHlcxYW', NULL, '2024-01-03 08:15:32', '2024-01-03 08:15:32', 7, 0),
(73, 'Kiki', 'fff@gmail.com', '+201019434346', NULL, 0, '$2y$10$ne3cgMDrFxg0K2YHR1.MWuLK7nMDtcmuBHIOGAr9z01bZ3Fian7he', NULL, '2024-01-03 08:17:07', '2024-01-03 08:17:07', 7, 0),
(74, 'kohl', 'jhgjhgjh@gmail.com', '+971234322222', NULL, 1, '$2y$10$Pn0Jgt6kyU8UxRgawFZFSePIW5loD94RcLXUl/pVAM0OYHjTUUh/u', NULL, '2024-01-03 08:21:03', '2024-01-03 08:21:23', 4, 0),
(76, 'Basma', 'testing@emcan.com', '+201090414929', NULL, 1, '$2y$10$nIO6/BghFyMkDwBknI2Ky.zO22cDUZudkrbeb1046M80g.FrtkPkq', NULL, '2024-01-04 14:17:45', '2024-01-04 14:19:31', 7, 0),
(77, 'hmwdzamdnanjabrhmwd', 'hmwdzamdnanjabrhmwd@gmail.com', '+200776749935', NULL, 0, '$2y$10$ln8kgQLOZayKi3CG9k46MOVCbvBagDCV6nAl8Hor5J8ePQN9rYnHu', NULL, '2024-01-17 12:07:28', '2024-01-17 12:07:28', 7, 0),
(78, 'Mostafa Mohamed', 'mostafazarea69@gmail.com', '+97333467117', NULL, 1, '$2y$10$B4FHqwniSF59jzDNEItPK./Y5TlZ2iuX/oWECYP3Wo3kfv3kDVac.', NULL, '2024-01-21 06:06:55', '2024-01-21 06:07:07', NULL, 0),
(81, 'ahmed', 'alkse2@gmail.com', '+97333222024', NULL, 1, '$2y$10$R3HWrZHVh4EqND684bZsSuUbfHGpMRkQb79C3WzyBXIKmFLLaozAm', NULL, '2024-03-09 12:10:54', '2024-03-09 12:11:13', 1, 0),
(82, 'ali', 'uae5588829@gmail.com', '+97333328947', NULL, 0, '$2y$10$nn9OqKwQ.4plkhg/9CGgqOhN5b/8zuPGESBUaqp58nmlicPU4WkgG', NULL, '2024-03-12 19:29:43', '2024-03-12 19:29:43', 1, 0),
(84, 'mena fawzy', 'mf502308@gmail.com', '+201098614784', NULL, 1, '$2y$10$iy32CnI9A.ylrR/DeJIp0e5EL3auGRA8nruaKBXQR/NW2yKbNZSIW', NULL, '2024-04-29 04:32:32', '2024-04-29 11:30:15', 7, 0),
(85, 'Donia', 'doniaelshenawy@gmail.com', '+201014041799', NULL, 0, '$2y$10$nZJ/Yxu6cQV8lb0Ow56YtOfcWMVX4wDvFjUQ6OHbhDwWFJWUNMOfy', NULL, '2024-04-30 04:06:08', '2024-04-30 04:06:08', 7, 0),
(86, 'testtt', 'sohilaahmed668@gmail.com', '+201127546506', NULL, 1, '$2y$10$/wbbJsfPutEu5/nYIMN3RuOZ.cM4dbcC4No2LgM/6t/DqMf0KMtoe', NULL, '2024-04-30 04:41:30', '2024-04-30 04:42:03', 7, 0),
(88, 'test Emcan', 'basmamohamed31003@gmail.com', '+201206721680', NULL, 1, '$2y$10$HqTDXXHH.o2e4pC0NCCe/eh6CL9pILetO7LdRLcgyoSgdk6tCSJBa', NULL, '2024-05-01 04:07:33', '2024-05-05 05:51:11', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_otps`
--

CREATE TABLE `user_otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `otp` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_otps`
--

INSERT INTO `user_otps` (`id`, `user_id`, `otp`, `created_at`, `updated_at`) VALUES
(11, 15, '412267', '2023-11-05 10:31:10', '2023-11-05 10:31:10'),
(13, 19, '742151', '2023-11-22 08:28:55', '2023-11-22 08:28:55'),
(14, 19, '824303', '2023-11-22 08:31:44', '2023-11-22 08:31:44'),
(15, 19, '291391', '2023-11-22 08:34:28', '2023-11-22 08:34:28'),
(16, 19, '874363', '2023-11-22 08:34:40', '2023-11-22 08:34:40'),
(17, 19, '550729', '2023-11-22 08:36:57', '2023-11-22 08:36:57'),
(18, 19, '193394', '2023-11-22 08:38:19', '2023-11-22 08:38:19'),
(19, 18, '776921', '2023-11-22 08:56:24', '2023-11-22 08:56:24'),
(23, 22, '503381', '2023-11-23 11:50:19', '2023-11-23 11:50:19'),
(25, 22, '508035', '2023-11-23 12:27:45', '2023-11-23 12:27:45'),
(26, 22, '959394', '2023-11-23 12:43:14', '2023-11-23 12:43:14'),
(28, 25, '666966', '2023-11-25 17:49:54', '2023-11-25 17:49:54'),
(30, 25, '384799', '2023-11-25 18:21:52', '2023-11-25 18:21:52'),
(31, 25, '437540', '2023-11-25 18:22:21', '2023-11-25 18:22:21'),
(32, 25, '931954', '2023-11-26 06:24:13', '2023-11-26 06:24:13'),
(33, 25, '484725', '2023-11-26 06:24:19', '2023-11-26 06:24:19'),
(34, 26, '761223', '2023-11-27 11:16:20', '2023-11-27 11:16:20'),
(35, 26, '358340', '2023-11-27 11:16:30', '2023-11-27 11:16:30'),
(36, 26, '350538', '2023-11-27 11:18:53', '2023-11-27 11:18:53'),
(37, 26, '258985', '2023-11-27 11:21:29', '2023-11-27 11:21:29'),
(38, 26, '199753', '2023-11-27 11:21:34', '2023-11-27 11:21:34'),
(39, 27, '469087', '2023-11-27 11:54:36', '2023-11-27 11:54:36'),
(41, 15, '752265', '2023-11-27 12:53:31', '2023-11-27 12:53:31'),
(42, 29, '313975', '2023-11-27 13:56:26', '2023-11-27 13:56:26'),
(43, 29, '852991', '2023-11-27 13:58:08', '2023-11-27 13:58:08'),
(44, 29, '953458', '2023-11-27 13:58:45', '2023-11-27 13:58:45'),
(45, 29, '945663', '2023-11-27 13:59:00', '2023-11-27 13:59:00'),
(46, 29, '716036', '2023-11-27 13:59:02', '2023-11-27 13:59:02'),
(47, 29, '173739', '2023-11-27 13:59:10', '2023-11-27 13:59:10'),
(49, 31, '303613', '2023-11-27 14:33:58', '2023-11-27 14:33:58'),
(51, 15, '165773', '2023-11-28 06:39:11', '2023-11-28 06:39:11'),
(52, 30, '638429', '2023-11-28 06:39:31', '2023-11-28 06:39:31'),
(56, 35, '783208', '2023-11-28 13:40:32', '2023-11-28 13:40:32'),
(57, 35, '974087', '2023-11-28 13:40:48', '2023-11-28 13:40:48'),
(58, 31, '646772', '2023-11-28 13:40:49', '2023-11-28 13:40:49'),
(59, 31, '292772', '2023-11-28 13:42:30', '2023-11-28 13:42:30'),
(60, 31, '280519', '2023-11-28 13:42:31', '2023-11-28 13:42:31'),
(61, 31, '949653', '2023-11-28 13:42:38', '2023-11-28 13:42:38'),
(62, 31, '492083', '2023-11-28 13:43:01', '2023-11-28 13:43:01'),
(63, 37, '333588', '2023-11-28 13:43:03', '2023-11-28 13:43:03'),
(65, 31, '131680', '2023-11-28 13:44:23', '2023-11-28 13:44:23'),
(66, 31, '255562', '2023-11-28 13:44:33', '2023-11-28 13:44:33'),
(68, 41, '634926', '2023-11-29 11:37:46', '2023-11-29 11:37:46'),
(69, 41, '547182', '2023-11-29 11:39:47', '2023-11-29 11:39:47'),
(70, 42, '553074', '2023-11-29 12:03:29', '2023-11-29 12:03:29'),
(71, 42, '407921', '2023-11-29 12:04:23', '2023-11-29 12:04:23'),
(72, 43, '571232', '2023-11-29 13:07:37', '2023-11-29 13:07:37'),
(74, 31, '200052', '2023-12-03 06:58:41', '2023-12-03 06:58:41'),
(76, 51, '462244', '2023-12-04 12:39:37', '2023-12-04 12:39:37'),
(78, 56, '887448', '2023-12-05 06:32:24', '2023-12-05 06:32:24'),
(79, 56, '822353', '2023-12-05 06:36:27', '2023-12-05 06:36:27'),
(80, 56, '722179', '2023-12-05 06:41:46', '2023-12-05 06:41:46'),
(81, 57, '264430', '2023-12-05 13:14:34', '2023-12-05 13:14:34'),
(82, 57, '548669', '2023-12-05 13:14:44', '2023-12-05 13:14:44'),
(83, 57, '564687', '2023-12-05 13:14:52', '2023-12-05 13:14:52'),
(84, 57, '146173', '2023-12-05 13:15:20', '2023-12-05 13:15:20'),
(86, 27, '778711', '2023-12-06 06:59:55', '2023-12-06 06:59:55'),
(87, 27, '477260', '2023-12-06 07:02:09', '2023-12-06 07:02:09'),
(89, 27, '740005', '2023-12-07 11:40:51', '2023-12-07 11:40:51'),
(90, 61, '178961', '2023-12-07 13:32:42', '2023-12-07 13:32:42'),
(92, 65, '686509', '2023-12-11 05:32:50', '2023-12-11 05:32:50'),
(93, 66, '910533', '2023-12-11 06:18:46', '2023-12-11 06:18:46'),
(95, 57, '163206', '2023-12-11 13:15:13', '2023-12-11 13:15:13'),
(96, 69, '768024', '2023-12-28 10:32:20', '2023-12-28 10:32:20'),
(97, 73, '270993', '2024-01-03 08:17:13', '2024-01-03 08:17:13'),
(98, 73, '669823', '2024-01-03 08:18:20', '2024-01-03 08:18:20'),
(101, 78, '326236', '2024-01-21 06:06:56', '2024-01-21 06:06:56'),
(102, 17, '271550', '2024-01-21 12:36:51', '2024-01-21 12:36:51'),
(103, 79, '502568', '2024-01-24 06:58:59', '2024-01-24 06:58:59'),
(104, 79, '788337', '2024-01-24 07:00:59', '2024-01-24 07:00:59'),
(105, 82, '306872', '2024-03-12 19:31:17', '2024-03-12 19:31:17'),
(106, 62, '506464', '2024-04-19 09:10:47', '2024-04-19 09:10:47'),
(107, 75, '219358', '2024-04-29 03:16:14', '2024-04-29 03:16:14'),
(109, 84, '149673', '2024-04-29 07:21:13', '2024-04-29 07:21:13'),
(110, 84, '549850', '2024-04-29 07:21:49', '2024-04-29 07:21:49'),
(111, 84, '612659', '2024-04-29 07:23:28', '2024-04-29 07:23:28'),
(112, 78, '125567', '2024-04-29 07:33:42', '2024-04-29 07:33:42'),
(113, 78, '992380', '2024-04-29 07:33:54', '2024-04-29 07:33:54'),
(114, 84, '607391', '2024-04-29 09:27:41', '2024-04-29 09:27:41'),
(115, 84, '128765', '2024-04-29 10:41:05', '2024-04-29 10:41:05'),
(116, 84, '780214', '2024-04-29 10:43:22', '2024-04-29 10:43:22'),
(117, 78, '403388', '2024-04-29 10:51:17', '2024-04-29 10:51:17'),
(118, 78, '650367', '2024-04-29 11:02:02', '2024-04-29 11:02:02'),
(119, 84, '618313', '2024-04-29 11:29:45', '2024-04-29 11:29:45'),
(120, 84, '117695', '2024-04-29 11:31:12', '2024-04-29 11:31:12'),
(121, 84, '894550', '2024-04-29 11:32:39', '2024-04-29 11:32:39'),
(122, 84, '248587', '2024-04-30 03:18:51', '2024-04-30 03:18:51'),
(123, 17, '780482', '2024-04-30 03:18:55', '2024-04-30 03:18:55'),
(124, 84, '902489', '2024-04-30 03:19:22', '2024-04-30 03:19:22'),
(125, 17, '940172', '2024-04-30 04:34:49', '2024-04-30 04:34:49'),
(126, 84, '800007', '2024-04-30 04:37:18', '2024-04-30 04:37:18'),
(128, 86, '908687', '2024-04-30 04:43:16', '2024-04-30 04:43:16'),
(129, 17, '372854', '2024-04-30 05:04:36', '2024-04-30 05:04:36'),
(130, 17, '806819', '2024-04-30 05:04:45', '2024-04-30 05:04:45'),
(131, 17, '182011', '2024-04-30 05:04:59', '2024-04-30 05:04:59'),
(133, 88, '636665', '2024-05-05 05:33:59', '2024-05-05 05:33:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_permission`
--
ALTER TABLE `admin_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permission_admin_id_foreign` (`admin_id`),
  ADD KEY `admin_permission_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cards_category_id_foreign` (`category_id`);

--
-- Indexes for table `card_group`
--
ALTER TABLE `card_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_group_card_id_foreign` (`card_id`),
  ADD KEY `card_group_group_id_foreign` (`group_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_card_id_foreign` (`card_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_region_id_foreign` (`region_id`);

--
-- Indexes for table `company_emails`
--
ALTER TABLE `company_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_types`
--
ALTER TABLE `email_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `payment_method_id` (`payment_method_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `card_id` (`card_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_type_id_foreign` (`product_type_id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_code_user`
--
ALTER TABLE `promo_code_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promo_code_user_user_id_foreign` (`user_id`),
  ADD KEY `promo_code_user_promo_code_id_foreign` (`promo_code_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regions_country_id_foreign` (`country_id`);

--
-- Indexes for table `serials`
--
ALTER TABLE `serials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serials_card_id_foreign` (`card_id`),
  ADD KEY `serials_user_id_foreign` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidepages`
--
ALTER TABLE `sidepages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_group_id_foreign` (`group_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_country_id_foreign` (`country_id`);

--
-- Indexes for table `user_otps`
--
ALTER TABLE `user_otps`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_permission`
--
ALTER TABLE `admin_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `card_group`
--
ALTER TABLE `card_group`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_emails`
--
ALTER TABLE `company_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_types`
--
ALTER TABLE `email_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promo_code_user`
--
ALTER TABLE `promo_code_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serials`
--
ALTER TABLE `serials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sidepages`
--
ALTER TABLE `sidepages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `user_otps`
--
ALTER TABLE `user_otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_permission`
--
ALTER TABLE `admin_permission`
  ADD CONSTRAINT `admin_permission_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permission_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `card_group`
--
ALTER TABLE `card_group`
  ADD CONSTRAINT `card_group_card_id_foreign` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `card_group_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_card_id_foreign` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`),
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_product_type_id_foreign` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `promo_code_user`
--
ALTER TABLE `promo_code_user`
  ADD CONSTRAINT `promo_code_user_promo_code_id_foreign` FOREIGN KEY (`promo_code_id`) REFERENCES `promo_codes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promo_code_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `serials`
--
ALTER TABLE `serials`
  ADD CONSTRAINT `serials_card_id_foreign` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `serials_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
