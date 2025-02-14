-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2025 at 11:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('5c785c036466adea360111aa28563bfd556b5fba', 'i:2;', 1739529708),
('5c785c036466adea360111aa28563bfd556b5fba:timer', 'i:1739529708;', 1739529708),
('products___10_1', 'O:42:\"Illuminate\\Pagination\\LengthAwarePaginator\":11:{s:8:\"\0*\0items\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:10:{i:0;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:3;s:4:\"name\";s:14:\"Sample Product\";s:11:\"description\";s:39:\"This is a sample product description...\";s:3:\"sku\";s:6:\"SK1131\";s:5:\"price\";s:4:\"0.00\";s:11:\"category_id\";i:0;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-12 18:49:01.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 09:27:44.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:1;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:4;s:4:\"name\";s:14:\"Sample Product\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:9:\"SKU123411\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:1;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-12 19:06:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-12 19:06:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:2;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:5;s:4:\"name\";s:14:\"Sample Product\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:9:\"SKU122311\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:1;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 06:02:22.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 06:02:22.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:3;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:7;s:4:\"name\";s:14:\"Sample Product\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:11:\"SKU11212311\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:1;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 06:25:12.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 06:25:12.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:4;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:9;s:4:\"name\";s:14:\"Sample Product\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:8:\"SKU11212\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:2;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 06:54:44.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 06:54:44.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:5;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:10;s:4:\"name\";s:14:\"Sample Product\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:8:\"SKU61212\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:2;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 06:54:50.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 06:54:50.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:6;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:11;s:4:\"name\";s:14:\"Sample Product\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:9:\"SKU641212\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:2;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 07:57:42.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 07:57:42.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:7;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:12;s:4:\"name\";s:14:\"Sample Product\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:9:\"SKU631212\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:2;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 07:58:13.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 07:58:13.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:8;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:13;s:4:\"name\";s:4:\"Test\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:9:\"SKU612212\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:2;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 08:48:48.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 08:48:48.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:9;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:14;s:4:\"name\";s:4:\"Polo\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:9:\"SKU122212\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:2;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 09:17:45.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 09:17:45.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:10:\"\0*\0perPage\";i:10;s:14:\"\0*\0currentPage\";i:1;s:7:\"\0*\0path\";s:37:\"http://localhost:8000/api/v1/products\";s:8:\"\0*\0query\";a:0:{}s:11:\"\0*\0fragment\";N;s:11:\"\0*\0pageName\";s:4:\"page\";s:10:\"onEachSide\";i:3;s:10:\"\0*\0options\";a:2:{s:4:\"path\";s:37:\"http://localhost:8000/api/v1/products\";s:8:\"pageName\";s:4:\"page\";}s:8:\"\0*\0total\";i:14;s:11:\"\0*\0lastPage\";i:2;}', 1739530248),
('products_2_s_10_1', 'O:42:\"Illuminate\\Pagination\\LengthAwarePaginator\":11:{s:8:\"\0*\0items\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:10:{i:0;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:9;s:4:\"name\";s:14:\"Sample Product\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:8:\"SKU11212\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:2;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 06:54:44.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 06:54:44.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:1;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:10;s:4:\"name\";s:14:\"Sample Product\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:8:\"SKU61212\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:2;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 06:54:50.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 06:54:50.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:2;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:11;s:4:\"name\";s:14:\"Sample Product\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:9:\"SKU641212\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:2;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 07:57:42.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 07:57:42.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:3;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:12;s:4:\"name\";s:14:\"Sample Product\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:9:\"SKU631212\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:2;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 07:58:13.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 07:58:13.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:4;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:13;s:4:\"name\";s:4:\"Test\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:9:\"SKU612212\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:2;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 08:48:48.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 08:48:48.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:5;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:14;s:4:\"name\";s:4:\"Polo\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:9:\"SKU122212\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:2;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 09:17:45.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 09:17:45.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:6;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:15;s:4:\"name\";s:5:\"Hoody\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:7:\"SKU1232\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:2;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 09:21:16.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 09:21:16.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:7;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:16;s:4:\"name\";s:5:\"Hoody\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:8:\"SKU11232\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:2;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 11:43:53.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-13 11:43:53.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:8;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:17;s:4:\"name\";s:5:\"Hoody\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:9:\"SKU115552\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:2;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-14 10:39:18.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-14 10:39:18.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}i:9;O:16:\"App\\BO\\ProductBO\":8:{s:2:\"id\";i:18;s:4:\"name\";s:5:\"Hoody\";s:11:\"description\";s:37:\"This is a sample product description.\";s:3:\"sku\";s:10:\"SKU1155512\";s:5:\"price\";s:5:\"99.99\";s:11:\"category_id\";i:2;s:10:\"created_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-14 10:39:25.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:10:\"updated_at\";O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-02-14 10:39:25.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:10:\"\0*\0perPage\";i:10;s:14:\"\0*\0currentPage\";i:1;s:7:\"\0*\0path\";s:37:\"http://localhost:8000/api/v1/products\";s:8:\"\0*\0query\";a:0:{}s:11:\"\0*\0fragment\";N;s:11:\"\0*\0pageName\";s:4:\"page\";s:10:\"onEachSide\";i:3;s:10:\"\0*\0options\";a:2:{s:4:\"path\";s:37:\"http://localhost:8000/api/v1/products\";s:8:\"pageName\";s:4:\"page\";}s:8:\"\0*\0total\";i:10;s:11:\"\0*\0lastPage\";i:1;}', 1739530185),
('transcript:127.0.0.1', 'i:1;', 1739529797),
('transcript:127.0.0.1:timer', 'i:1739529797;', 1739529797);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_category_id`, `created_at`, `updated_at`) VALUES
(1, 'cloths', NULL, '2025-02-12 18:17:55', '2025-02-12 18:17:55'),
(2, 'scissors', NULL, '2025-02-12 18:17:55', '2025-02-12 18:17:55');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '2025_02_12_101341_create_categories_table', 1),
(2, '0001_01_01_000000_create_users_table', 2),
(3, '0001_01_01_000001_create_cache_table', 2),
(4, '0001_01_01_000002_create_jobs_table', 2);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `sku`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 'Sample Product', 'This is a sample product description...', 'SK1131', 0.00, 0, '2025-02-12 13:19:01', '2025-02-13 03:57:44'),
(4, 'Sample Product', 'This is a sample product description.', 'SKU123411', 99.99, 1, '2025-02-12 13:36:39', '2025-02-12 13:36:39'),
(5, 'Sample Product', 'This is a sample product description.', 'SKU122311', 99.99, 1, '2025-02-13 00:32:22', '2025-02-13 00:32:22'),
(7, 'Sample Product', 'This is a sample product description.', 'SKU11212311', 99.99, 1, '2025-02-13 00:55:12', '2025-02-13 00:55:12'),
(9, 'Sample Product', 'This is a sample product description.', 'SKU11212', 99.99, 2, '2025-02-13 01:24:44', '2025-02-13 01:24:44'),
(10, 'Sample Product', 'This is a sample product description.', 'SKU61212', 99.99, 2, '2025-02-13 01:24:50', '2025-02-13 01:24:50'),
(11, 'Sample Product', 'This is a sample product description.', 'SKU641212', 99.99, 2, '2025-02-13 02:27:42', '2025-02-13 02:27:42'),
(12, 'Sample Product', 'This is a sample product description.', 'SKU631212', 99.99, 2, '2025-02-13 02:28:13', '2025-02-13 02:28:13'),
(13, 'Test', 'This is a sample product description.', 'SKU612212', 99.99, 2, '2025-02-13 03:18:48', '2025-02-13 03:18:48'),
(14, 'Polo', 'This is a sample product description.', 'SKU122212', 99.99, 2, '2025-02-13 03:47:45', '2025-02-13 03:47:45'),
(15, 'Hoody', 'This is a sample product description.', 'SKU1232', 99.99, 2, '2025-02-13 03:51:16', '2025-02-13 03:51:16'),
(16, 'Hoody', 'This is a sample product description.', 'SKU11232', 99.99, 2, '2025-02-13 06:13:53', '2025-02-13 06:13:53'),
(17, 'Hoody', 'This is a sample product description.', 'SKU115552', 99.99, 2, '2025-02-14 05:09:18', '2025-02-14 05:09:18'),
(18, 'Hoody', 'This is a sample product description.', 'SKU1155512', 99.99, 2, '2025-02-14 05:09:25', '2025-02-14 05:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('F0jdDvW3SJPjxa2DAPgrVaCpp98p6BvzLfK5Ou3x', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTlSWVVjTHFwSXNoNmtXcWRPZFBQMFZaeHBtOWhseXV1WExkQzFvQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1739427737),
('FK8XQOtTMizhEL0sYyCHXCWn5wG4LkVwf27ZOh4i', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:135.0) Gecko/20100101 Firefox/135.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0JiSW0zTWdpVDZ3SjRYM0VqZTBTTFRaWmNTeE1yeEZFcG5FRnZEQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1739361431),
('vEmOaZvO3iTVNzzTbc2jWfqoF9vslNCZCmnOapbZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMldYYkIyWVhyQUdVUzhSSnZTWE9FR0t5WDNhVzJKbkZkWVFqOWlTQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1739361442);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_category_id_foreign` (`parent_category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_category_id_foreign` FOREIGN KEY (`parent_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
