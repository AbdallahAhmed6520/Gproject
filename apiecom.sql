-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2022 at 04:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apiecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_orders`
--

CREATE TABLE `cart_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_orders`
--

INSERT INTO `cart_orders` (`id`, `invoice_no`, `product_name`, `product_code`, `size`, `color`, `quantity`, `unit_price`, `total_price`, `email`, `name`, `payment_method`, `delivery_address`, `city`, `delivery_charge`, `order_date`, `order_time`, `order_status`, `created_at`, `updated_at`) VALUES
(12, 'Easy1656859806646', 'Solid Men Round Neck White, Black T-Shirt\r\n', '21454', 'Size: xxl', 'Color: black', '03', '480', '1440', 'admin@gmail.com', 'Elomda', 'Cash On Delivery', 'Assuit', 'Dhaka', '00', '03-07-2022', '08:50:06pm', 'Pending', NULL, NULL),
(13, 'Easy1656859806646', 'Velcro Sneakers For Boys & Girls  (Purple)\r\n', '1544', 'Size: 28', 'Color: Purple', '02', '300', '600', 'admin@gmail.com', 'Elomda', 'Cash On Delivery', 'Assuit', 'Dhaka', '00', '03-07-2022', '08:50:06pm', 'Pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'Mobiles', 'http://127.0.0.1:8000/upload/category/1737090880516100.png', NULL, '2022-06-30 17:55:58'),
(2, 'Computers', 'http://127.0.0.1:8000/upload/category/1737088682226498.png', NULL, '2022-06-30 17:21:01'),
(3, 'Electronics', 'http://127.0.0.1:8000/upload/category/1737088736170292.png', NULL, '2022-06-30 17:21:53'),
(4, 'TVs', 'http://127.0.0.1:8000/upload/category/1737325695493195.png', NULL, '2022-07-03 08:08:15'),
(6, 'Baby & Kids', 'http://127.0.0.1:8000/upload/category/1737088792618469.png', NULL, '2022-06-30 17:22:46'),
(7, 'Home & Furniture', 'http://127.0.0.1:8000/upload/category/1737088806845606.png', NULL, '2022-06-30 17:23:00'),
(8, 'Sports', 'http://127.0.0.1:8000/upload/category/1737326127014631.png', NULL, '2022-07-03 08:15:06'),
(9, 'Mobile Accessories', 'http://127.0.0.1:8000/upload/category/1737088842958502.png', NULL, '2022-06-30 17:23:34'),
(13, 'Men Fation', 'http://127.0.0.1:8000/upload/category/1737326068818729.png', NULL, NULL),
(14, 'Women Fation', 'http://127.0.0.1:8000/upload/category/1737326099057430.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `product_name`, `image`, `product_code`, `email`, `created_at`, `updated_at`) VALUES
(2, 'HP Ryzen 3 Quad Core 5300U - (8 GB/512 GB SSD/Windows 11 Home) 15s-eq2143au Thin and Light Laptop  (15.6 inch, Natural Silver, 1.69 Kg, With MS Office)\n', 'https://rukminim1.flixcart.com/image/416/416/kyrlifk0/computer/a/q/f/15s-eq2143au-thin-and-light-laptop-hp-original-imagaxg6jbj5zhhy.jpeg?q=70', '2212', 'done@gmail.com', NULL, NULL),
(8, 'Lenovo Ideapad 3 15ITL6 laptop', 'http://127.0.0.1:8000/upload/product/1737331876975263.jpg', '12', 'admin@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `slider_image`, `created_at`, `updated_at`) VALUES
(2, 'http://127.0.0.1:8000/upload/slider/1737091986509541.jpg', NULL, '2022-06-30 18:13:32'),
(4, 'http://127.0.0.1:8000/upload/slider/1737092081013988.jpg', NULL, '2022-06-30 18:15:03'),
(5, 'http://127.0.0.1:8000/upload/slider/1737092189186730.jpg', NULL, NULL),
(6, 'http://127.0.0.1:8000/upload/slider/1737185790786953.webp', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2021_07_28_192511_create_sessions_table', 1),
(12, '2021_07_28_195004_create_visitors_table', 1),
(13, '2021_07_28_205153_create_contacts_table', 1),
(14, '2021_07_30_193439_create_site_infos_table', 1),
(15, '2021_08_01_200035_create_categories_table', 1),
(16, '2021_08_01_200508_create_subcategories_table', 1),
(17, '2021_08_03_194953_create_product_lists_table', 1),
(18, '2021_08_04_232020_create_home_sliders_table', 1),
(19, '2021_08_07_203807_create_product_details_table', 1),
(20, '2021_08_08_213147_create_notifications_table', 1),
(21, '2021_08_14_015111_create_product_reviews_table', 1),
(22, '2021_08_15_192740_create_product_carts_table', 1),
(23, '2021_08_16_225942_create_favourites_table', 1),
(24, '2021_08_19_192027_create_cart_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Woooohoo,you are reading this list in a moda!', 'each course has been hande-tailored to teach a specific skill.I hope you are agree! Whether you are trying to learn a new skill from scratch or want to refresh your memory on something you are learned in the past you are come to the rigth place.\r\n', '11/05/2022', '0000-00-00 00:00:00', NULL),
(2, 'text 1\r\nWoooohoo,you are reading this list in a moda!', 'each course has been hande-tailored to teach a specific skill.I hope you are agree! Whether you are trying to learn a new skill from scratch or want to refresh your memory on something you are learned in the past you are come to the rigth place.\r\n', '10/05/2022', NULL, NULL),
(3, 'text 2\r\nWoooohoo,you are reading this list in a moda!', 'each course has been hande-tailored to teach a specific skill.I hope you are agree! Whether you are trying to learn a new skill from scratch or want to refresh your memory on something you are learned in the past you are come to the rigth place.\r\n', '11/05/2022', NULL, NULL),
(4, 'text 3\r\nWoooohoo,you are reading this list in a moda!', 'each course has been hande-tailored to teach a specific skill.I hope you are agree! Whether you are trying to learn a new skill from scratch or want to refresh your memory on something you are learned in the past you are come to the rigth place.\r\n', '15/05/2022', NULL, NULL),
(5, 'text 4\r\nWoooohoo,you are reading this list in a moda!', 'each course has been hande-tailored to teach a specific skill.I hope you are agree! Whether you are trying to learn a new skill from scratch or want to refresh your memory on something you are learned in the past you are come to the rigth place.\r\n', '17/05/2022', NULL, NULL),
(6, 'text 5\r\nWoooohoo,you are reading this list in a moda!', 'each course has been hande-tailored to teach a specific skill.I hope you are agree! Whether you are trying to learn a new skill from scratch or want to refresh your memory on something you are learned in the past you are come to the rigth place.\r\n', '28/05/2022', NULL, NULL),
(7, 'text 6\r\nWoooohoo,you are reading this list in a moda!', 'each course has been hande-tailored to teach a specific skill.I hope you are agree! Whether you are trying to learn a new skill from scratch or want to refresh your memory on something you are learned in the past you are come to the rigth place.\r\n', '12/05/2022', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('02a1f31d2c0aec8a1629fe09682784b6b945af95baa1ca2133cc11c582f95b30213630b503b98312', 4, 1, 'app', '[]', 0, '2022-06-27 09:56:55', '2022-06-27 09:56:55', '2023-06-27 11:56:55'),
('2061aabd83fd6d5997195ceedbac26d46492f3fba3b252d6f18b27abed0c67ce24c970ea70611a5a', 1, 1, 'app', '[]', 0, '2022-06-27 00:22:53', '2022-06-27 00:22:53', '2023-06-27 02:22:53'),
('28718df3adb26e77d1c665ea9ac5be2a8c24c44e242ce40909b47898868c85099862f8d4629f505b', 4, 1, 'app', '[]', 0, '2022-06-27 14:49:30', '2022-06-27 14:49:30', '2023-06-27 16:49:30'),
('32f50fa8346c3e3152b143dbaf12d9531c5ad40d7f280929a6931c4ae59c8b897902f4691606451d', 1, 3, 'app', '[]', 0, '2022-07-01 17:53:04', '2022-07-01 17:53:04', '2023-07-01 19:53:04'),
('4d002c43e8828cda7dc1ad01326c62ddd042fc86ecc7ecec17d19bb44a5f81d6053a4f830c920772', 1, 3, 'app', '[]', 0, '2022-06-30 16:11:41', '2022-06-30 16:11:41', '2023-06-30 18:11:41'),
('5afed225d3f903fbd16a53e740e7f566e88d3446cac8d125c190d5a5e699771abd5f95e84412bbbb', 7, 3, 'app', '[]', 0, '2022-06-27 22:10:46', '2022-06-27 22:10:46', '2023-06-28 00:10:46'),
('60200b6ee9f1539a6794a42893609dd3c9ed6a6fa423836f526b72d11ab31855274d1b181e1d3646', 8, 3, 'app', '[]', 0, '2022-06-30 15:28:42', '2022-06-30 15:28:42', '2023-06-30 17:28:42'),
('68401743f4e0d4873f587f2913135f49106971149648b55ea2a82fa4384133fe6c8b2b8d5cab0a5f', 1, 3, 'app', '[]', 0, '2022-07-01 18:52:13', '2022-07-01 18:52:13', '2023-07-01 20:52:13'),
('79e2a220004faf795d8c805b0925f508e31e0162c2d504671a950ccefe732f86f50e6842ba678492', 1, 3, 'app', '[]', 0, '2022-06-27 20:20:25', '2022-06-27 20:20:25', '2023-06-27 22:20:25'),
('90fd46a035818468b2f9f8b095a13ca3ae83505a89ccb4830bf8861b8a674beeb58fbedc4bbcc3e6', 4, 1, 'app', '[]', 0, '2022-06-27 00:24:40', '2022-06-27 00:24:40', '2023-06-27 02:24:40'),
('9dc41360b18b1911345491845abbed3af16b675b179d2eff03e5f89025733ebd41325ead0cbacc7b', 7, 3, 'app', '[]', 0, '2022-06-28 11:19:50', '2022-06-28 11:19:50', '2023-06-28 13:19:50'),
('a53ac95ab72470eed276d124e86d8dd823c169122bededfca0ccc4bf704f053b94aef9029f389086', 7, 3, 'app', '[]', 0, '2022-06-27 22:25:12', '2022-06-27 22:25:12', '2023-06-28 00:25:12'),
('ab04b5c1a584fad936fc83b5df7c55e7ce56da6578f70f32c774b041d5320c62e688ea112f023a4b', 1, 3, 'app', '[]', 0, '2022-07-01 17:53:06', '2022-07-01 17:53:06', '2023-07-01 19:53:06'),
('b47e65fd6904eedbc1ece2774f3dc724eb95ac42cd2ed48c665e21e3b52e5874142f1bb3f3edee76', 5, 1, 'app', '[]', 0, '2022-06-27 15:11:08', '2022-06-27 15:11:08', '2023-06-27 17:11:08'),
('c67c2fdd5e8a2a00b3621d68a12972db21f75ec29230666c864afb03a491b77c542d41d4cc806b4a', 7, 3, 'app', '[]', 0, '2022-06-27 22:10:48', '2022-06-27 22:10:48', '2023-06-28 00:10:48'),
('eaaf9e0a345828fc0e5d8e5d92ca5d41d3b36c3ab45f1461d0c8fc38449ed80983d48bb48e4be033', 7, 3, 'app', '[]', 0, '2022-06-27 20:23:37', '2022-06-27 20:23:37', '2023-06-27 22:23:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'u4tPfg3dyqXo39i46JSqZ7fouRseYn4lPzgBkxSp', NULL, 'http://localhost', 1, 0, 0, '2022-06-27 00:17:38', '2022-06-27 00:17:38'),
(2, NULL, 'Laravel Password Grant Client', '11yxoglo97RRfDDrw7RAMaMJkfAsR2mx6icdS406', 'users', 'http://localhost', 0, 1, 0, '2022-06-27 00:17:38', '2022-06-27 00:17:38'),
(3, NULL, 'Laravel Personal Access Client', '560RpWJbFDQHL6ry9bzmQ0X9lMTkYi242cFYyTnS', NULL, 'http://localhost', 1, 0, 0, '2022-06-27 20:19:19', '2022-06-27 20:19:19'),
(4, NULL, 'Laravel Password Grant Client', '1SucS8Cilwghun7F8kTQK6qOGrLiR83830S0Pjab', 'users', 'http://localhost', 0, 1, 0, '2022-06-27 20:19:19', '2022-06-27 20:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-06-27 00:17:38', '2022-06-27 00:17:38'),
(2, 3, '2022-06-27 20:19:19', '2022-06-27 20:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(24, 'abdo@gmail.com', '70574', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `image`, `email`, `product_name`, `product_code`, `size`, `color`, `quantity`, `unit_price`, `total_price`, `created_at`, `updated_at`) VALUES
(15, 'http://127.0.0.1:8000/upload/product/1737331876975263.jpg', 'admin@gmail.com', 'Lenovo Ideapad 3 15ITL6 laptop', '12', 'Size: 15.6-inch', 'Color: Abyss Blue', '04', '12200', '48800', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_four` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `image_one`, `image_two`, `image_three`, `image_four`, `short_description`, `color`, `size`, `long_description`, `created_at`, `updated_at`) VALUES
(57, 56, 'http://127.0.0.1:8000/upload/productdetails/1737328067926069.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737328068017585.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737328068117591.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737328068208729.jpg', 'We designed a totally new architecture and turned the lenses 45 degrees to fit in our best dual-camera system ever — with its biggest Wide camera sensor', 'Pink,Blue,Starlight', '128GB,64GB', '<p>Hello, World!</p>', NULL, NULL),
(58, 57, 'http://127.0.0.1:8000/upload/productdetails/1737328546886448.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737328547000265.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737328547095334.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737328547188482.jpg', 'We designed a totally new architecture and turned the lenses 45 degrees to fit in our best dual-camera system ever — with its biggest Wide camera sensor', 'Pink,Blue', '164GB,64GB', 'Hello, World!', NULL, NULL),
(59, 58, 'http://127.0.0.1:8000/upload/productdetails/1737328822240481.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737328822379723.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737328822477306.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737328822571891.jpg', 'We designed a totally new architecture and turned the lenses 45 degrees to fit in our best dual-camera system ever — with its biggest Wide camera sensor.', 'Pink,Blue,Starlight', '164GB,64GB', '<p>Hello, World!</p>', NULL, NULL),
(60, 59, 'http://127.0.0.1:8000/upload/productdetails/1737329392558259.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737329392663134.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737329392812004.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737329392942951.jpg', 'Air pods Pro have been designed to deliver Active Noise Cancellation for immersive sound', 'White', 'none', '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings, and a customizable fit for all-day comfort. Just like AirPods, AirPods Pro connect magically to your iPhone or Apple Watch. And they&rsquo;re ready to use right out of the case.</span></p>', NULL, NULL),
(61, 60, 'http://127.0.0.1:8000/upload/productdetails/1737329847095734.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737329847188751.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737329847284676.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737329847396431.jpg', 'SKU: SA024MP0I9WNKNAFAMZ', 'Blue', '6.4 inches', '<p>Hello, World!</p>', NULL, NULL),
(62, 61, 'http://127.0.0.1:8000/upload/productdetails/1737330148809635.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737330148904818.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737330148998862.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737330149113438.jpg', 'Mobile back material glossy plastic', 'Light Blue', '6.7-inch', '<p>Hello, World!</p>', NULL, NULL),
(63, 62, 'http://127.0.0.1:8000/upload/productdetails/1737330479724453.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737330479822086.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737330479915736.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737330480033666.jpg', 'This Samsung wall charger with 25-Watt Super-Fast Charge capability .', 'Black', 'none', '<p>This Samsung wall charger with 25-Watt Super-Fast Charge capability uses Power Delivery (PD) to provide the most efficient charge possible. Any PD device, including Galaxy Note10, can charge at up to 25W. Other USB-C devices rates will vary.</p>', NULL, NULL),
(64, 63, 'http://127.0.0.1:8000/upload/productdetails/1737330688087855.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737330688185317.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737330688279960.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737330688384873.jpg', 'Our most immersive buds yet deliver powerful studio sound and crystal-clear call quality.', 'Black', 'none', '<div class=\"card aim -mtm\" style=\"box-sizing: border-box; border-radius: 4px; background-color: #ffffff; position: relative; box-shadow: rgba(0, 0, 0, 0.05) 0px 2px 5px 0px; margin-top: 16px;\">\r\n<div class=\"markup -mhm -pvl -oxa -sc\" style=\"box-sizing: border-box; overflow-x: auto; padding-top: 24px; padding-bottom: 24px; margin-left: 16px; margin-right: 16px;\">Our most immersive buds yet deliver powerful studio sound and crystal-clear call quality. Use Intelligent Active Noise Cancellation&sup1; to escape into your music at a moment\'s notice. Answer calls with just your voice and let in the sounds that matter most with adjustable ambient sound.&sup2; Plus, pair with the new Galaxy S21 5G to send a message, search music, control your TV, or order coffee&mdash;all hands-free using Bixby</div>\r\n</div>', NULL, NULL),
(65, 64, 'http://127.0.0.1:8000/upload/productdetails/1737331038235918.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737331038330739.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737331038438074.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737331038535263.jpg', 'With the 10.4-inch HUAWEI FullView', 'Matte Grey', '10.4-inch', '<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">With the 10.4-inch HUAWEI FullView Display of 2K resolution, HUAWEI MatePad brings stunning visual sensation to your hand. Packed with a quad-speaker sound system tuned by Harman Kardon, it also creates immersive sound whenever you\'re watching a movie or listening to your favourite tunes.</p>', NULL, NULL),
(66, 65, 'http://127.0.0.1:8000/upload/productdetails/1737331276305551.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737331276396542.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737331276488893.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737331276584088.jpg', 'HUAWEI  Data Cable USB-A to Micro USB1M - White\r\nNominal Current: 2.0A /Length:1.0m', 'White', 'none', '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">HUAWEI&nbsp; Data Cable USB-A to Micro USB1M - White</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Nominal Current: 2.0A /Length:1.0m</span></p>', NULL, NULL),
(67, 66, 'http://127.0.0.1:8000/upload/productdetails/1737331695291003.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737331695433549.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737331695549024.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737331695649432.jpg', 'This laptop\'s contemporary design gives it a premium look and feel, with a slim body that travels well when you\'re not in the office. The 15.6\" display yields vivid colors and clarity, with narrow side bezels to enhance the view.', 'Iron Grey', '15.6-inch', '<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">This laptop\'s contemporary design gives it a premium look and feel, with a slim body that travels well when you\'re not in the office. The 15.6\" display yields vivid colors and clarity, with narrow side bezels to enhance the view.</p>', NULL, NULL),
(68, 67, 'http://127.0.0.1:8000/upload/productdetails/1737331877082846.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737331877174912.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737331877269640.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737331877376142.jpg', 'Engineered for long-lasting performance, the Lenovo™ IdeaPad™ 3 is the perfect laptop for your everyday tasks with features that you can depend on.', 'Abyss Blue', '15.6-inch', '<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Engineered for long-lasting performance, the Lenovo&trade; IdeaPad&trade; 3 is the perfect laptop for your everyday tasks with features that you can depend on.</p>', NULL, NULL),
(69, 68, 'http://127.0.0.1:8000/upload/productdetails/1737332401617867.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737332401710735.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737332401801547.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737332401913246.jpg', 'Compact design, big feature-set, the FUJIFILM X-S10 is a sleek and versatile mirrorless camera well-suited to walkaround use', 'Black', '26.1MP APS-C X-Trans BSI CMOS 4 Sensor and X-Processor 4', '<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Compact design, big feature-set, the&nbsp;<strong style=\"box-sizing: border-box;\">FUJIFILM X-S10</strong>&nbsp;is a sleek and versatile mirrorless camera well-suited to walkaround use. Touting capable photo and video features, the X-S10 mixes a portable form factor with the tools needed for everyday content creation.</p>\r\n<p>&nbsp;</p>', NULL, NULL),
(70, 69, 'http://127.0.0.1:8000/upload/productdetails/1737332603342155.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737332603490366.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737332603582430.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737332603674474.jpg', 'Versatile, volant, and viable, the black FUJIFILM X100V is the fifth-generation of the X100 series', 'Black', '26.1MP APS-C X-Trans BSI CMOS 4 Sensor and X-Processor 4', '<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Versatile, volant, and viable, the black&nbsp;<strong style=\"box-sizing: border-box;\">FUJIFILM X100V</strong>&nbsp;is the fifth-generation of the X100 series, blending impressive imaging capabilities, a distinct design with an apt prime wide-angle lens, and a flexible feature-set to suit an array of shooting needs. Utilizing a proven and well-regarded APS-C-format 26.1MP X-Trans CMOS 4 sensor, the X100V is capable of high-resolution recording along with support for DCI/UHD 4K video, sensitivity from ISO 160-12800, and continuous shooting up to 11 fps with the mechanical shutter. The BSI design of the sensor affords reduced noise and greater overall clarity, and is paired with the X-Processor 4 to achieve fast performance and improved responsiveness. The sensor\'s design also enables a hybrid autofocus system that combines 425 phase-detection points with a contrast-detection system for quick and accurate AF performance.</p>\r\n<p>&nbsp;</p>', NULL, NULL),
(71, 70, 'http://127.0.0.1:8000/upload/productdetails/1737332912702247.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737332912847162.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737332912940457.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737332913050577.jpg', 'The harsh summers make it difficult for people even to survive, in such a case all you need is a high performance air cooler that will cool down your room and make the temperature bearable.', 'White', '45 Liter', '<p>The harsh summers make it difficult for people even to survive, in such a case all you need is a high performance air cooler that will cool down your room and make the temperature bearable. Jindo is a high performance desert cooler, designed for use in hot and dry areas where the average temperature is up to 40 degrees. Thanks to the large tank capacity of 45 liters</p>', NULL, NULL),
(72, 72, 'http://127.0.0.1:8000/upload/productdetails/1737333159769181.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737333159863258.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737333159954500.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737333160047842.jpg', 'Carrier has become the largest manufacturer of heating, ventilation and air conditioning systems in Africa. It is the leading company in the air conditioning', 'White', '1.5 حصان', '<p>Carrier has become the largest manufacturer of heating, ventilation and air conditioning systems in Africa. It is the leading company in the air conditioning industry in Egypt, providing first-class products and services and winning the best reviews from consumers.</p>', NULL, NULL),
(73, 73, 'http://127.0.0.1:8000/upload/productdetails/1737333559288663.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737333559397706.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737333559490442.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737333559584605.jpg', 'If your laundry room is one of those spots in your home that you dislike to enter, it is probably missing out on one of the very essential appliances, a washing machine!', 'White,Black', '10.5KG', '<p style=\"box-sizing: border-box; padding: 8px 0px; margin: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">If your laundry room is one of those spots in your home that you dislike to enter, it is probably missing out on one of the very essential appliances, a washing machine! Let not your laundry room be incomplete without one. Find the right one for your home from front-loading and top-loading ones, to automatic and semi-automatic models.</p>\r\n<p>&nbsp;</p>', NULL, NULL),
(74, 74, 'http://127.0.0.1:8000/upload/productdetails/1737333713834254.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737333713996379.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737333714098796.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737333714200995.jpg', 'Washing machine top automatic 15 kg', 'White,Black', '15Kg', '<p>Washing machine top automatic 15 kg</p>', NULL, NULL),
(75, 75, 'http://127.0.0.1:8000/upload/productdetails/1737335637217716.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737335637311009.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737335637402555.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737335637514472.jpg', 'SkyLine offers you a premium range of TVs with high-quality screens that are manufactured with the best technologies to display the best quality', 'Black', '32-inch', '<p>SkyLine offers you a premium range of TVs with high-quality screens that are manufactured with the best technologies to display the best quality</p>', NULL, NULL),
(76, 76, 'http://127.0.0.1:8000/upload/productdetails/1737335788175235.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737335788269443.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737335788363817.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737335788456942.jpg', 'Samsung UA32T5300 - 32-inch HD Smart TV With Built In Receiver', 'Black', '32-inch', '<div class=\"-df -j-bet\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; box-sizing: border-box; display: flex; justify-content: space-between; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<div class=\"-fs0 -pls -prl\" style=\"box-sizing: border-box; padding-left: 24px; padding-right: 8px; font-size: 0px;\">\r\n<h1 class=\"-fs20 -pts -pbxs\" style=\"box-sizing: border-box; padding: 8px 0px 4px; margin: 0px; font-weight: 400; font-size: 1.25rem;\">Samsung UA32T5300 - 32-inch HD Smart TV With Built In Receiver</h1>\r\n</div>\r\n<a id=\"wishlist\" class=\"btn _def _i _rnd -mas -fsh0 -me-start\" style=\"box-sizing: border-box; background-color: transparent; display: flex; text-decoration: none; color: #f68b1e; border-radius: 99px; border: 0px; outline: 0px; padding: 0px; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-weight: 500; text-transform: uppercase; text-align: center; line-height: 1rem; font-size: 0.875rem; cursor: pointer; align-items: center; position: relative; text-indent: 8px; flex-shrink: 0; align-self: flex-start; margin: 8px;\" href=\"https://www.jumia.com.eg/ar/customer/account/login/?tkWl=SA024EA0N0ECINAFAMZ-46621878&amp;return=%2Far%2Fsamsung-ua32t5300-32-inch-hd-smart-tv-with-built-in-receiver-wall-mount-mx3-air-mouse-remote-26794683.html\" data-simplesku=\"SA024EA0N0ECINAFAMZ-46621878\" data-track-onclick=\"wishlist\" data-track-onclick-bound=\"true\"></a></div>', NULL, NULL),
(77, 77, 'http://127.0.0.1:8000/upload/productdetails/1737335974327749.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737335974439909.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737335974539636.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737335974690322.jpg', 'The 32 inch ATA LED TV features a beautiful design and a small bezel that is smaller than conventional TVs. This TV from ATA', 'Black', '32-inch', '<p>The 32 inch ATA LED TV features a beautiful design and a small bezel that is smaller than conventional TVs. This TV from ATA</p>', NULL, NULL),
(78, 78, 'http://127.0.0.1:8000/upload/productdetails/1737336308592404.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737336308684755.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737336308795497.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737336308887617.jpg', 'LC Waikiki is a multicultural brand that has been continuously developing in the global market for over 17 years.', 'Red', '8-9 y,7-8 y,4-5 y,5-6 y', '<p>LC Waikiki is a multicultural brand that has been continuously developing in the global market for over 17 years.</p>', NULL, NULL),
(79, 79, 'http://127.0.0.1:8000/upload/productdetails/1737336409185272.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737336409292115.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737336409387714.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737336409478708.jpg', 'Founded in 2003, DEFACTO is today one of the most popular fashion brands in Turkey and around the world with more than 500 stores.', 'Orange', '8-9 y,7-8 y,4-5 y,5-6 y', '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Founded in 2003, DEFACTO is today one of the most popular fashion brands in Turkey and around the world with more than 500 stores. It is positioned as a pioneering brand of fashion throughout the Mediterranean world.&nbsp;</span></p>', NULL, NULL),
(80, 80, 'http://127.0.0.1:8000/upload/productdetails/1737336658527321.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737336658643655.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737336658735994.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737336658829092.jpg', 'Give your sleepwear collection a classic update with this Plaid Pajama Set from Andora.', 'Aqua & Green,Black ,Dark Grey & Green', '8-9 y,7-8 y,4-5 y,5-6 y,12 y,10 y', '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Give your sleepwear collection a classic update with this Plaid Pajama Set from Andora.&nbsp;</span></p>', NULL, NULL),
(81, 81, 'http://127.0.0.1:8000/upload/productdetails/1737337000794003.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737337000885557.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737337000978158.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737337001072606.jpg', 'D&C is one of the most professional footwear brands in Egypt, founded in 1975.. If you are looking to find comfortable and elegant shoes for anyone', 'Navy', 'EU 35-36,EU 31-32,EU 34', '<p>D&amp;C is one of the most professional footwear brands in Egypt, founded in 1975.. If you are looking to find comfortable and elegant shoes for anyone, then D&amp;C Shoes is your best choice</p>', NULL, NULL),
(82, 82, 'http://127.0.0.1:8000/upload/productdetails/1737337160414868.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737337160508148.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737337160648308.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737337160771006.jpg', 'D&C is one of the most professional footwear brands in Egypt, founded in 1975.. If you are looking to find comfortable and elegant shoes for anyone', 'White', 'EU 35-36,EU 31-32,EU 34', '<p>D&amp;C is one of the most professional footwear brands in Egypt, founded in 1975.. If you are looking to find comfortable and elegant shoes for anyone, then D&amp;C Shoes is your best choice</p>', NULL, NULL),
(83, 83, 'http://127.0.0.1:8000/upload/productdetails/1737337375772626.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737337375869073.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737337375971590.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737337376065302.jpg', 'D&C is one of the most professional footwear brands in Egypt, founded in 1975.. If you are looking to find comfortable and elegant shoes for anyone', 'Black,Cashmere,Greey', 'EU 35-36,EU 31-32,EU 34', '<p>D&amp;C is one of the most professional footwear brands in Egypt, founded in 1975.. If you are looking to find comfortable and elegant shoes for anyone, then D&amp;C Shoes is your best choice</p>', NULL, NULL),
(84, 84, 'http://127.0.0.1:8000/upload/productdetails/1737337670147684.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737337670288563.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737337670385011.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737337670496819.jpg', 'Parents all around the world trust sanosan for the gentle cleaning and care of the sensitive skin of mother and baby.', 'none', '200ml', '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Parents all around the world trust sanosan for the gentle cleaning and care of the sensitive skin of mother and baby. Natural ingredients such as organic olive oil and milk proteins with their protective, soothing properties form the basis of our formulas.</span></p>', NULL, NULL),
(85, 85, 'http://127.0.0.1:8000/upload/productdetails/1737337852812808.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737337852915215.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737337853009323.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737337853119031.jpg', 'Rich in cherry oil, cocoa butter and vitamin A and E, it maintains and rehydrates the skin of the baby’s face from the first day of the baby’s life.', 'none', '50ML', '<p>Rich in cherry oil, cocoa butter and vitamin A and E, it maintains and rehydrates the skin of the baby&rsquo;s face from the first day of the baby&rsquo;s life. Strengthens the protective barrier of the baby&rsquo;s skin. Protects the baby&rsquo;s skin from dehydration, allergies, infections and redness. Inside and out, anti-bacterial for normal, sensitive and eczema skin</p>', NULL, NULL),
(86, 86, 'http://127.0.0.1:8000/upload/productdetails/1737338265682355.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737338265845920.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737338265939262.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737338266030837.jpg', 'Wall shelves are a great place to store and show your things because they give the place a great and special look', 'Wooden Brown', '100 x 50 cm', '<p>Wall shelves are a great place to store and show your things because they give the place a great and special look</p>', NULL, NULL),
(87, 87, 'http://127.0.0.1:8000/upload/productdetails/1737338428495846.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737338428591988.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737338428688966.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737338428790144.jpg', 'Wall shelves are a great place to store and show your things because they give the place a great and special look', 'black', '20 x 20 cm for peace', '<p>Wall shelves are a great place to store and show your things because they give the place a great and special look</p>', NULL, NULL),
(88, 88, 'http://127.0.0.1:8000/upload/productdetails/1737338642489366.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737338642587407.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737338642681534.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737338642774094.jpg', 'Sleeping time has become better * An extra mattress that is placed above the main mattress to give a feeling of softness and luxury', 'White', '195 x 90 cm', '<p>Sleeping time has become better * An extra mattress that is placed above the main mattress to give a feeling of softness and luxury * It can completely improve your sleep experience for a comfortable sleep during the night * Filling of high quality fiber sheet * Home washable * Thickness 8 cm.</p>', NULL, NULL),
(89, 89, 'http://127.0.0.1:8000/upload/productdetails/1737338804556788.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737338804653699.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737338804795744.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737338804887810.jpg', 'Sleeping time has become better * An extra mattress that is placed above the main mattress to give a feeling of softness and luxury', 'White', '55 x 30 x 20', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"الترجمة\"><strong><span class=\"Y2IQFc\" lang=\"en\">Sleeping time has become better * An extra mattress that is placed above the main mattress to give a feeling of softness and luxury * It can completely improve your sleep experience for a comfortable sleep during the night * Filling of high quality fiber sheet * Home washable * Thickness 8 cm.</span></strong></pre>', NULL, NULL),
(90, 90, 'http://127.0.0.1:8000/upload/productdetails/1737339024383704.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737339024475517.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737339024567880.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737339024661724.jpg', 'Very elegant corner of the beigeEasy to use and move', 'Greey', '190 x 210 cm', '<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-nfl\" tabindex=\"0\">\r\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"الترجمة\"><span class=\"Y2IQFc\" lang=\"en\">Very elegant corner of the beigeEasy to use and move</span></pre>\r\n</div>', NULL, NULL),
(91, 91, 'http://127.0.0.1:8000/upload/productdetails/1737339406723556.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737339406815769.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737339406925636.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737339407016895.jpg', 'Step up your style with our Clothes ! Featuring great design', 'White,orang,Grey,Blue', 'M,L,XL,XXL', '<div class=\"card aim -mtm\" style=\"box-sizing: border-box; border-radius: 4px; background-color: #ffffff; position: relative; box-shadow: rgba(0, 0, 0, 0.05) 0px 2px 5px 0px; margin-top: 16px;\">\r\n<div class=\"markup -mhm -pvl -oxa -sc\" style=\"box-sizing: border-box; overflow-x: auto; padding-top: 24px; padding-bottom: 24px; margin-left: 16px; margin-right: 16px;\">Step up your style with our Clothes ! Featuring great design</div>\r\n</div>\r\n<section class=\"card aim -mtm -fs16\" style=\"box-sizing: border-box; border-radius: 4px; background-color: #ffffff; position: relative; box-shadow: rgba(0, 0, 0, 0.05) 0px 2px 5px 0px; margin-top: 16px; font-size: 1rem;\">\r\n<div id=\"specifications\" class=\"hook\" style=\"box-sizing: border-box; visibility: hidden; position: absolute; height: 306.4px; top: -88px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif;\"></div>\r\n<header class=\"-pvs -bb\" style=\"box-sizing: border-box; border-bottom: 1px solid #ededed; padding-top: 8px; padding-bottom: 8px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif;\"></header></section>', NULL, NULL),
(92, 92, 'http://127.0.0.1:8000/upload/productdetails/1737339537320030.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737339537442474.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737339537542809.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737339537649886.jpg', 'Printed T-Shirt - 100% Cotton', 'Black', 'M,L,XL,XXL', '<p>Printed T-Shirt - 100% Cotton</p>', NULL, NULL),
(93, 93, 'http://127.0.0.1:8000/upload/productdetails/1737339759706121.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737339759803362.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737339759902376.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737339760067643.jpg', 'Lace Up Fashion Sneakers With Mesh material and a green effect which adds to it\'s design \nIt feels comfy while wearing it', 'Red,White,Black', 'EU 42,EU 43,EU 44', '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Lace Up Fashion Sneakers With Mesh material and a green effect which adds to it\'s design&nbsp;</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">It feels comfy while wearing it</span></p>', NULL, NULL),
(94, 94, 'http://127.0.0.1:8000/upload/productdetails/1737340283278615.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737340283371596.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737340283484472.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737340283587357.jpg', 'Lace Up Fashion Sneakers With Mesh material and a green effect which adds to it\'s design', 'White,Black,Grey', 'EU 42,EU 43,EU 44', '<p>Lace Up Fashion Sneakers With Mesh material and a green effect which adds to it\'s design&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, NULL),
(95, 95, 'http://127.0.0.1:8000/upload/productdetails/1737340798125580.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737340798222231.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737340798333723.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737340798424036.jpg', 'UMBRO where you can find elegant sports Wear.It has variety of comfy trendy and fashionable sports wear . AL AHLY Fans edition', 'Black', 'M,L,XL,XXL', '<div class=\"card aim -mtm\" style=\"box-sizing: border-box; border-radius: 4px; background-color: #ffffff; position: relative; box-shadow: rgba(0, 0, 0, 0.05) 0px 2px 5px 0px; margin-top: 16px;\">\r\n<div class=\"markup -mhm -pvl -oxa -sc\" style=\"box-sizing: border-box; overflow-x: auto; padding-top: 24px; padding-bottom: 24px; margin-left: 16px; margin-right: 16px;\">UMBRO where you can find elegant sports Wear.It has variety of comfy trendy and fashionable sports wear . AL AHLY Fans edition&nbsp;</div>\r\n</div>', NULL, NULL),
(96, 96, 'http://127.0.0.1:8000/upload/productdetails/1737340887671955.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737340887787421.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737340887881350.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737340887984198.jpg', 'UMBRO where you can find elegant sports Wear.It has variety of comfy trendy and fashionable sports wear . AL AHLY Fans edition', 'Red', 'M,L,XL,XXL', '<div class=\"card aim -mtm\" style=\"box-sizing: border-box; border-radius: 4px; background-color: #ffffff; position: relative; box-shadow: rgba(0, 0, 0, 0.05) 0px 2px 5px 0px; margin-top: 16px;\">\r\n<div class=\"markup -mhm -pvl -oxa -sc\" style=\"box-sizing: border-box; overflow-x: auto; padding-top: 24px; padding-bottom: 24px; margin-left: 16px; margin-right: 16px;\">UMBRO where you can find elegant sports Wear.It has variety of comfy trendy and fashionable sports wear . AL AHLY Fans edition&nbsp;</div>\r\n</div>', NULL, NULL),
(97, 97, 'http://127.0.0.1:8000/upload/productdetails/1737341502368207.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737341502467390.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737341502565238.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737341502688374.jpg', 'UMBRO where you can find elegant sports Wear.It has variety of comfy trendy and fashionable sports wear . AL AHLY Fans edition', 'Red,Black', 'EU 42,EU 43,EU 44,EU 48,EU 47,EU 46', '<p>UMBRO where you can find elegant sports Wear.It has variety of comfy trendy and fashionable sports wear . AL AHLY Fans edition</p>', NULL, NULL),
(98, 98, 'http://127.0.0.1:8000/upload/productdetails/1737341640562928.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737341640679222.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737341640776182.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737341640873516.jpg', 'UMBRO where you can find elegant sports Wear.It has variety of comfy trendy and fashionable sports wear . AL AHLY Fans edition', 'Golden', 'EU 42,EU 43,EU 44,EU 48,EU 47,EU 46', '<p>UMBRO where you can find elegant sports Wear.It has variety of comfy trendy and fashionable sports wear . AL AHLY Fans edition</p>', NULL, NULL),
(99, 99, 'http://127.0.0.1:8000/upload/productdetails/1737341981986673.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737341982079125.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737341982173428.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737341982287098.jpg', 'This comfortable dress from M Sou is perfect for your wardrobe. Made of lightweight fabric, it provides breathable comfort all day long.', 'Black', 'M,L,XL,XXL,XXXL', '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">This comfortable dress from M Sou is perfect for your wardrobe. Made of lightweight fabric, it provides breathable comfort all day long. Featuring an easy-to-wear button-down closure and comes with a belt to complete your outfit. it`s even more stylish. It can be even worn over the swimsuit. This piece is convenient and stylish for a summer look.</span></p>', NULL, NULL),
(100, 100, 'http://127.0.0.1:8000/upload/productdetails/1737342189378792.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737342189476782.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737342189647283.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737342189750196.jpg', 'This comfortable dress from M Sou is perfect for your wardrobe. Made of lightweight fabric, it provides breathable comfort all day long.', 'White', 'M,L,XL,XXL', '<p>This comfortable dress from M Sou is perfect for your wardrobe. Made of lightweight fabric, it provides breathable comfort all day long.</p>', NULL, NULL),
(101, 101, 'http://127.0.0.1:8000/upload/productdetails/1737342389787785.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737342389950664.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737342390045186.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737342390148130.jpg', 'We offer you a high-quality product from our factories, with quality and pride in Egypt', 'Black,Beige,Dark coffee,cashmare', 'EU 42,EU 43,EU 44,EU 48,EU 47,EU 46', '<div class=\"card aim -mtm\" style=\"box-sizing: border-box; border-radius: 4px; background-color: #ffffff; position: relative; box-shadow: rgba(0, 0, 0, 0.05) 0px 2px 5px 0px; margin-top: 16px;\">\r\n<div class=\"markup -mhm -pvl -oxa -sc\" style=\"box-sizing: border-box; overflow-x: auto; padding-top: 24px; padding-bottom: 24px; margin-left: 16px; margin-right: 16px;\">We offer you a high-quality product from our factories, with quality and pride in Egypt</div>\r\n</div>', NULL, NULL),
(102, 102, 'http://127.0.0.1:8000/upload/productdetails/1737342578758464.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737342578859285.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737342578952631.jpg', 'http://127.0.0.1:8000/upload/productdetails/1737342579045105.jpg', 'We offer you a high-quality product from our factories, with quality and pride in Egypt', 'White', 'EU 42,EU 43,EU 44,EU 48,EU 47,EU 46', '<p>We offer you a high-quality product from our factories, with quality and pride in Egypt</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_lists`
--

CREATE TABLE `product_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_lists`
--

INSERT INTO `product_lists` (`id`, `title`, `price`, `special_price`, `image`, `category`, `subcategory`, `remark`, `brand`, `star`, `product_code`, `created_at`, `updated_at`) VALUES
(56, 'Apple iPhone 13 Single SIM with FaceTime - 128GB - Pink', '25000', '23000', 'http://127.0.0.1:8000/upload/product/1737328067821567.jpg', 'Mobiles', 'Apple', 'NEW', 'Apple', NULL, '1', NULL, NULL),
(57, 'Apple iPhone 13 Single SIM with FaceTime - 128GB - Starlight', '25000', '23500', 'http://127.0.0.1:8000/upload/product/1737328546777100.jpg', 'Mobiles', 'Apple', 'NEW', 'Apple', NULL, '2', NULL, NULL),
(58, 'Apple iPhone 13 Single SIM with FaceTime - 128GB - Starlight', '25000', '24000', 'http://127.0.0.1:8000/upload/product/1737328822122516.jpg', 'Mobiles', 'Apple', 'NEW', 'Apple', NULL, '3', NULL, NULL),
(59, 'Apple AirPods Pro With MagSafe Charging Case - MLWK3', '4000', '3200', 'http://127.0.0.1:8000/upload/product/1737329392444837.jpg', 'Mobile Accessories', 'HeadPhones', 'COLLECTION', 'Apple', NULL, '4', NULL, NULL),
(60, 'Samsung Galaxy A32 – 6.4-inch 6GB/128GB LTE Mobile Phone - Awesome Blue', '5900', '5200', 'http://127.0.0.1:8000/upload/product/1737329846988477.jpg', 'Mobiles', 'Samsung', 'COLLECTION', 'Samsung', NULL, '5', NULL, NULL),
(61, 'Samsung Galaxy M52 - 6.7-inch 128GB/8GB Dual SIM 5G Mobile Phone - Light Blue', '6700', '6100', 'http://127.0.0.1:8000/upload/product/1737330148653135.jpg', 'Mobiles', 'Samsung', 'COLLECTION', 'Samsung', NULL, '6', NULL, NULL),
(62, 'Samsung Type-C Wall Charger for Super Fast Charging (25W)', '500', '400', 'http://127.0.0.1:8000/upload/product/1737330479620739.jpg', 'Mobile Accessories', 'Mobile Cases', 'FEATURED', 'Samsung', NULL, '7', NULL, NULL),
(63, 'Samsung Galaxy Buds Pro - Phantom Black', '2900', '2700', 'http://127.0.0.1:8000/upload/product/1737330687978680.jpg', 'Mobile Accessories', 'HeadPhones', 'FEATURED', 'Samsung', NULL, '8', NULL, NULL),
(64, 'Huawei MatePad 2022 Edition – 10.4-inch 128GB/4GB Wi-Fi Tablet – Matte Grey', '5400', '5000', 'http://127.0.0.1:8000/upload/product/1737331038130183.jpg', 'Mobiles', 'Huawei', 'NEW', 'Tony', NULL, '9', NULL, NULL),
(65, 'Huawei USB-A To Micro-USB Data Cable - 1M - White', '200', '150', 'http://127.0.0.1:8000/upload/product/1737331276195704.jpg', 'Mobile Accessories', 'Mobile Cases', 'COLLECTION', 'Tony', NULL, '10', NULL, NULL),
(66, 'Lenovo V15-IGL Laptop', '5000', '4800', 'http://127.0.0.1:8000/upload/product/1737331695183385.jpg', 'Computers', 'Laptops', 'NEW', 'Tony', NULL, '11', NULL, NULL),
(67, 'Lenovo Ideapad 3 15ITL6 laptop', '12700', '12200', 'http://127.0.0.1:8000/upload/product/1737331876975263.jpg', 'Computers', 'Laptops', 'FEATURED', 'Tony', NULL, '12', NULL, NULL),
(68, 'Fujifilm FUJIFILM X-S10 Mirrorless Digital Camera (Body Only)', '19000', '18200', 'http://127.0.0.1:8000/upload/product/1737332401510740.jpg', 'Electronics', 'Camera', 'FEATURED', 'Tony', NULL, '13', NULL, NULL),
(69, 'Fujifilm FUJIFILM X100V Digital Camera (Black)', '26000', '25200', 'http://127.0.0.1:8000/upload/product/1737332603206432.jpg', 'Electronics', 'Camera', 'FEATURED', 'Tony', NULL, '14', NULL, NULL),
(70, 'Gendo Air Cooler 45 Liter White', '1700', '1600', 'http://127.0.0.1:8000/upload/product/1737332912582378.jpg', 'Electronics', 'Air Conditioners', 'FEATURED', 'Tony', NULL, '15', NULL, NULL),
(72, 'Carrier 53-QHCT12', '10000', '9300', 'http://127.0.0.1:8000/upload/product/1737333159657820.jpg', 'Electronics', 'Air Conditioners', 'FEATURED', 'Tony', NULL, '16', NULL, NULL),
(73, 'LG F4V9RCP2E Front Load Washing Machine', '18500', '18000', 'http://127.0.0.1:8000/upload/product/1737333559176763.jpg', 'Electronics', 'Washing Machine', 'FEATURED', 'Tony', NULL, '17', NULL, NULL),
(74, 'Tornado Washing Machine Top Automatic', '9000', '8500', 'http://127.0.0.1:8000/upload/product/1737333713715091.jpg', 'Electronics', 'Washing Machine', 'FEATURED', 'Tony', NULL, '18', NULL, NULL),
(75, 'Skyline 32-22A', '2300', '2100', 'http://127.0.0.1:8000/upload/product/1737335636875834.jpg', 'TVs', 'Smart TV', 'NEW', 'Tony', NULL, '19', NULL, NULL),
(76, 'Samsung UA32T5300', '4500', '4200', 'http://127.0.0.1:8000/upload/product/1737335788059183.jpg', 'TVs', 'Smart TV', 'NEW', 'Samsung', NULL, '20', NULL, NULL),
(77, 'ATA 32 A 124', '2500', '2300', 'http://127.0.0.1:8000/upload/product/1737335974208204.jpg', 'TVs', 'Smart TV', 'NEW', 'Select Brand', NULL, '21', NULL, NULL),
(78, 'LC Waikiki Crew Neck Printed Short Sleeve Boy\'S', '250', '200', 'http://127.0.0.1:8000/upload/product/1737336308483324.jpg', 'Baby & Kids', 'kids clothing', 'COLLECTION', 'Tony', NULL, '22', NULL, NULL),
(79, 'Defacto Girl Orange dress', '200', '180', 'http://127.0.0.1:8000/upload/product/1737336409080982.jpg', 'Baby & Kids', 'kids clothing', 'COLLECTION', 'Tony', NULL, '23', NULL, NULL),
(80, 'Andora Front Stitched Boys Cotton Pajama Set', '200', '170', 'http://127.0.0.1:8000/upload/product/1737336658412065.jpg', 'Baby & Kids', 'kids clothing', 'COLLECTION', 'Tony', NULL, '24', NULL, NULL),
(81, 'Desert Sneakers Basic Kids Drink', '140', '130', 'http://127.0.0.1:8000/upload/product/1737337000676822.jpg', 'Baby & Kids', 'kids Footware', 'NEW', 'Tony', NULL, '25', NULL, NULL),
(82, 'Desert Flat Lace-Up Sneakers For Kids Multicolour', '100', '90', 'http://127.0.0.1:8000/upload/product/1737337160308172.jpg', 'Baby & Kids', 'kids Footware', 'NEW', 'Tony', NULL, '26', NULL, NULL),
(83, 'Desert Sneakers Kids Drink', '90', '85', 'http://127.0.0.1:8000/upload/product/1737337375664355.jpg', 'Baby & Kids', 'kids Footware', 'NEW', 'Tony', NULL, '27', NULL, NULL),
(84, 'Sanosan Baby Care Lotion', '350', '300', 'http://127.0.0.1:8000/upload/product/1737337670041542.jpg', 'Baby & Kids', 'Baby Care', 'NEW', 'Tony', NULL, '28', NULL, NULL),
(85, 'Mister Baby', '150', '120', 'http://127.0.0.1:8000/upload/product/1737337852700657.jpg', 'Baby & Kids', 'Baby Care', 'COLLECTION', 'Tony', NULL, '29', NULL, NULL),
(86, 'Gad Woods Decorative Wall Shelves For Living Room', '400', '350', 'http://127.0.0.1:8000/upload/product/1737338265573407.jpg', 'Home & Furniture', 'Home Decor', 'COLLECTION', 'Tony', NULL, '30', NULL, NULL),
(87, 'Decorative Wall Sticker - 30Pcs', '200', '180', 'http://127.0.0.1:8000/upload/product/1737338428370469.jpg', 'Home & Furniture', 'Home Decor', 'NEW', 'Tony', NULL, '31', NULL, NULL),
(88, 'Tiba Soft Mattress', '590', '550', 'http://127.0.0.1:8000/upload/product/1737338642377494.jpg', 'Home & Furniture', 'Bed Room Furniture', 'NEW', 'Tony', NULL, '32', NULL, NULL),
(89, 'Home Decor Center', '450', '430', 'http://127.0.0.1:8000/upload/product/1737338804433006.jpg', 'Home & Furniture', 'Bed Room Furniture', 'NEW', 'Tony', NULL, '33', NULL, NULL),
(90, 'Big Classic Corner Bed from Beige', '3000', '2700', 'http://127.0.0.1:8000/upload/product/1737339024278081.jpg', 'Home & Furniture', 'Living Room Furniture', 'COLLECTION', 'Tony', NULL, '34', NULL, NULL),
(91, 'Izor Buttoned Cotton Plain T-Shirt', '150', '120', 'http://127.0.0.1:8000/upload/product/1737339406566409.jpg', 'Men Fation', 'T-shirt', 'COLLECTION', 'Tony', NULL, '35', NULL, NULL),
(92, 'GATE', '160', '130', 'http://127.0.0.1:8000/upload/product/1737339537211804.jpg', 'Men Fation', 'T-shirt', 'NEW', 'Tony', NULL, '36', NULL, NULL),
(93, 'Lace Up Fashion Sneakers', '150', '130', 'http://127.0.0.1:8000/upload/product/1737339759594100.jpg', 'Men Fation', 'shoes', 'NEW', 'Tony', NULL, '37', NULL, NULL),
(94, 'Desert', '200', '180', 'http://127.0.0.1:8000/upload/product/1737340283118888.jpg', 'Men Fation', 'shoes', 'NEW', 'Tony', NULL, '38', NULL, NULL),
(95, 'AL AHLY Fans edition Black', '200', '180', 'http://127.0.0.1:8000/upload/product/1737340797972279.jpg', 'Sports', 'T-shirt', 'NEW', 'Tony', NULL, '39', NULL, NULL),
(96, 'AL AHLY player edition Red', '800', '750', 'http://127.0.0.1:8000/upload/product/1737340887563673.jpg', 'Sports', 'T-shirt', 'COLLECTION', 'Tony', NULL, '40', NULL, NULL),
(97, 'Sports Shose', '950', '900', 'http://127.0.0.1:8000/upload/product/1737341502251529.jpg', 'Sports', 'shoes', 'FEATURED', 'Tony', NULL, '41', NULL, NULL),
(98, 'Sports Shose', '1000', '920', 'http://127.0.0.1:8000/upload/product/1737341640431850.jpg', 'Sports', 'shoes', 'NEW', 'Tony', NULL, '42', NULL, NULL),
(99, 'M Sou Black Squared Long Sided Cut Casual Dress', '500', '450', 'http://127.0.0.1:8000/upload/product/1737341981828625.jpg', 'Women Fation', 'Dresses', 'COLLECTION', 'Tony', NULL, '43', NULL, NULL),
(100, 'White Dress', '400', '350', 'http://127.0.0.1:8000/upload/product/1737342189270746.jpg', 'Women Fation', 'Dresses', 'NEW', 'Select Brand', NULL, '44', NULL, NULL),
(101, 'Ice Club Pointed Suede Elegant Ballerina', '200', '180', 'http://127.0.0.1:8000/upload/product/1737342389681679.jpg', 'Women Fation', 'shoes', 'COLLECTION', 'Tony', NULL, '45', NULL, NULL),
(102, 'ballerina Comfortable for the feet and practical', '180', '160', 'http://127.0.0.1:8000/upload/product/1737342578652163.jpg', 'Women Fation', 'shoes', 'COLLECTION', 'Tony', NULL, '46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewer_rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_code`, `product_name`, `reviewer_name`, `reviewer_photo`, `reviewer_rating`, `reviewer_comments`, `created_at`, `updated_at`) VALUES
(21, '1544', 'Velcro Sneakers For Boys & Girls  (Purple)', 'Elomda', NULL, '4', 'Thanks', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('C3U4hbQIJUBn2dkW4UUNXlblcBcsf98ebiYr496t', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoibU1NNjRSdVFkTGliUFVHMHdsZ2NLQWk3bFM5cUQ5bjA3VGswZUNqMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vcmRlci9wZW5kaW5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRHdnhCTmQzalBzc2xoU3lsTElFRFl1cWN0Wi9VQk8yRFlqL3hOZGR2ZzZxZjdnYTBLU29HLiI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkR3Z4Qk5kM2pQc3NsaFN5bExJRURZdXFjdFovVUJPMkRZai94TmRkdmc2cWY3Z2EwS1NvRy4iO30=', 1656859574);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parchase_guide` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `android_app_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ios_app_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facbook_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `about`, `refund`, `parchase_guide`, `privacy`, `address`, `android_app_link`, `ios_app_link`, `facbook_link`, `twitter_link`, `instagram_link`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, 'Easy shop, the online retail company in Egypt, was established in 2022 with a vision and objective to become a one-stop shop (one-stop-shop) for retail in Egypt with the application of best practices online. Delivery service is available all over Egypt. We initially set the average delivery time as a week, but now delivery takes 1-5 days', 'How to make an order ?\r\nClick on the product detail page to view the available colors, sizes as well as the price of the item. Choose the color and size and tap Add to Cart. For an accurate size choice, use the virtual fitting room or the measurement chart to make sure you order the right size. Tap on Proceed to checkout or choose to continue shopping and add more items. Once you are done shopping, tap on Proceed to checkout and follow the on-screen instructions. Add your contact information, shipping address, and continue to shipping. Choose the shipping method, insert your discount code, or gift card and proceed to payment. Choose either a Credit Card (Visa card or Mastercard), Premium Card, or Cash on Delivery COD Review your order information and tap “track your order” to complete your purchase. You will receive a confirmation email.\r\n\r\nDo I need creat account for buy products ?\r\nHow can I track my order ?\r\nCan I cancel/edit an order after placing it ?\r\nhow do i estimate the delivery date ?\r\nwhat happen if an item in my order couldn\'t be fulfilled ?\r\nWhat Payment Methods are Available ?', 'Terms & Conditions\r\nPlease read our “Terms & Conditios” very carefully and learn our all rules.\r\nThese rules were modified on 1 january 2022.\r\n\r\nTerms & Conditions\r\nThis page tells you information about us and the legal terms and conditions (“Terms & Conditions”) under which we sell any of the products (“Products”) listed on this website (“Website”) to you.\r\n\r\nWebsite terms and conditions\r\n\r\n\r\nThese Terms & Conditions apply to your use of the Website. By accessing, browsing, using or registering on our Website, you confirm that you have read, understood and agree to these Terms & Conditions in their entirety. Please check this page regularly to determine whether our Terms & Conditions have been updated - any new terms will automatically be effective when they are published on this Website.\r\n\r\n\r\nWe reserve the right to:\r\n\r\nAmend our Terms & Conditions; Refuse any user access to our Website; Terminate user accounts; Modify or withdraw (temporarily or permanently) this Website without notice; or Cancel customer orders at our discretion. Change Orders that Click on Free Shipping whilst the Orders are not Eligible to the offer during that period Edit your Order Shipping Fees if you have selected \"Free Shipping\" during an offer Promotion where your order does not permit it. (Free shipping for orders above 600 EGP. If you place an order for less than the amount and click Free Shipping, we will include the amount automatically that should be calculated otherwise.)', 'Terms & Conditions\r\nPlease read our “Terms & Conditios” very carefully and learn our all rules.\r\nThese rules were modified on 1 january 2022.\r\n\r\nTerms & Conditions\r\nThis page tells you information about us and the legal terms and conditions (“Terms & Conditions”) under which we sell any of the products (“Products”) listed on this website (“Website”) to you.\r\n\r\nWebsite terms and conditions\r\n\r\n\r\nThese Terms & Conditions apply to your use of the Website. By accessing, browsing, using or registering on our Website, you confirm that you have read, understood and agree to these Terms & Conditions in their entirety. Please check this page regularly to determine whether our Terms & Conditions have been updated - any new terms will automatically be effective when they are published on this Website.\r\n\r\n\r\nWe reserve the right to:\r\n\r\nAmend our Terms & Conditions; Refuse any user access to our Website; Terminate user accounts; Modify or withdraw (temporarily or permanently) this Website without notice; or Cancel customer orders at our discretion. Change Orders that Click on Free Shipping whilst the Orders are not Eligible to the offer during that period Edit your Order Shipping Fees if you have selected \"Free Shipping\" during an offer Promotion where your order does not permit it. (Free shipping for orders above 600 EGP. If you place an order for less than the amount and click Free Shipping, we will include the amount automatically that should be calculated otherwise.)', '<h4>Assuit,Assuit University <br />\r\nEmail: Support@EasyShop.com</h4>', 'http://localhost:3000/android', 'http://localhost:3000/iso', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.instagram.com/', 'Copyright © 2022 Easy shop All Right Reserved', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_name`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(2, 'Mobiles', 'Apple', NULL, NULL),
(3, 'Mobiles', 'Huawei', NULL, '2022-07-03 09:28:43'),
(4, 'Mobiles', 'Samsung', NULL, NULL),
(5, 'Computers', 'Laptops', NULL, NULL),
(7, 'TVs', 'Smart TV', NULL, '2022-07-03 08:08:38'),
(8, 'Electronics', 'Camera', NULL, NULL),
(9, 'Electronics', 'Washing Machine', NULL, '2022-07-03 08:08:54'),
(10, 'Electronics', 'Air Conditioners', NULL, '2022-07-03 08:09:06'),
(14, 'Baby & Kids', 'kids Footware', NULL, NULL),
(15, 'Baby & Kids', 'kids clothing', NULL, NULL),
(16, 'Baby & Kids', 'Baby Care', NULL, NULL),
(17, 'Home & Furniture', 'Home Decor ', NULL, NULL),
(18, 'Home & Furniture', 'Bed Room Furniture', NULL, NULL),
(19, 'Home & Furniture', 'Living Room Furniture', NULL, NULL),
(23, 'Mobile Accessories', 'Mobile Cases', NULL, NULL),
(26, 'Mobile Accessories', 'HeadPhones', NULL, NULL),
(27, 'Men Fation', 'T-shirt', NULL, NULL),
(28, 'Men Fation', 'shoes', NULL, NULL),
(29, 'Women Fation', 'Dresses', NULL, NULL),
(30, 'Women Fation', 'shoes', NULL, NULL),
(31, 'Sports', 'T-shirt', NULL, NULL),
(32, 'Sports', 'shoes', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$GvxBNd3jPsslhSylLIEDYuqctZ/UBO2DYj/xNddvg6qf7ga0KSoG.', NULL, NULL, NULL, NULL, '202206301744omda profile.jpg', '2022-06-25 11:43:49', '2022-06-30 16:02:24'),
(2, 'mayar', 'mayar.atef.5100@gmail.com', NULL, '$2y$10$iE9avFwvYBfJKpgkEbBN.e89caU/ZS5CgSPB4vLd/4UV5S3xsVape', NULL, NULL, NULL, NULL, NULL, '2022-06-26 17:34:01', '2022-06-26 17:34:01'),
(3, 'mayar atef', 'mayar@gmail.com', NULL, '$2y$10$c1/kzQ0D2ElT/va1R/ltyuqLzEiSvX7JwyzzWY7ViH/P0PL6/iXfm', NULL, NULL, NULL, NULL, NULL, '2022-06-26 17:45:08', '2022-06-26 17:45:08'),
(4, 'Abdallah', 'abdo@gmail.com', NULL, '$2y$10$W6dfOeVFJ1t3d9VV/yKeMORp3o/bDywZ.5vhVWKQSh2gf0x9nfGcO', NULL, NULL, NULL, NULL, NULL, '2022-06-26 23:14:40', '2022-06-26 23:14:40'),
(5, 'Test', 'test@gmail.com', NULL, '$2y$10$P8R4hbcBzCJeaWGKT/P/AeNpd9BpLVLfgzqoCQlji7D3LnSqXcMcK', NULL, NULL, NULL, NULL, NULL, '2022-06-27 15:11:07', '2022-06-27 15:11:07'),
(7, 'elomda', 'done@gmail.com', NULL, '$2y$10$JrZ7ibW3lhcMggjxIrvqtOULHqOIjKRbT4SR9AHRg.C.9XD48c2WS', NULL, NULL, NULL, NULL, NULL, '2022-06-27 20:23:37', '2022-06-27 20:23:37'),
(8, 'Elomda', 'omda@gmail.com', NULL, '$2y$10$9KCEUNQAVIHtYuK32Cd1.uUXD96NpGWvdT9R1UZXcisSVx7cyWKwC', NULL, NULL, NULL, NULL, NULL, '2022-06-30 15:28:41', '2022-06-30 15:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '07:45:03pm', '25-06-2022', NULL, NULL),
(2, '127.0.0.1', '06:33:52am', '26-06-2022', NULL, NULL),
(3, '127.0.0.1', '06:42:06am', '26-06-2022', NULL, NULL),
(4, '127.0.0.1', '06:47:40am', '26-06-2022', NULL, NULL),
(5, '127.0.0.1', '07:02:06am', '26-06-2022', NULL, NULL),
(6, '127.0.0.1', '07:03:29am', '26-06-2022', NULL, NULL),
(7, '127.0.0.1', '07:27:21am', '26-06-2022', NULL, NULL),
(8, '127.0.0.1', '07:27:54am', '26-06-2022', NULL, NULL),
(9, '127.0.0.1', '07:42:12am', '26-06-2022', NULL, NULL),
(10, '127.0.0.1', '07:50:15am', '26-06-2022', NULL, NULL),
(11, '127.0.0.1', '07:50:52am', '26-06-2022', NULL, NULL),
(12, '127.0.0.1', '07:52:37am', '26-06-2022', NULL, NULL),
(13, '127.0.0.1', '07:55:51am', '26-06-2022', NULL, NULL),
(14, '127.0.0.1', '07:56:01am', '26-06-2022', NULL, NULL),
(15, '127.0.0.1', '04:42:28am', '26-06-2022', NULL, NULL),
(16, '127.0.0.1', '04:42:49am', '26-06-2022', NULL, NULL),
(17, '127.0.0.1', '09:13:30am', '26-06-2022', NULL, NULL),
(18, '127.0.0.1', '09:17:55am', '26-06-2022', NULL, NULL),
(19, '127.0.0.1', '09:20:11am', '26-06-2022', NULL, NULL),
(20, '127.0.0.1', '09:20:35am', '26-06-2022', NULL, NULL),
(21, '127.0.0.1', '09:21:01am', '26-06-2022', NULL, NULL),
(22, '127.0.0.1', '09:32:21am', '26-06-2022', NULL, NULL),
(23, '127.0.0.1', '09:44:29am', '26-06-2022', NULL, NULL),
(24, '127.0.0.1', '10:00:52am', '26-06-2022', NULL, NULL),
(25, '127.0.0.1', '10:10:06am', '26-06-2022', NULL, NULL),
(26, '127.0.0.1', '10:10:51am', '26-06-2022', NULL, NULL),
(27, '127.0.0.1', '10:29:54am', '26-06-2022', NULL, NULL),
(28, '127.0.0.1', '10:39:23am', '26-06-2022', NULL, NULL),
(29, '127.0.0.1', '10:39:59am', '26-06-2022', NULL, NULL),
(30, '127.0.0.1', '10:47:37am', '26-06-2022', NULL, NULL),
(31, '127.0.0.1', '10:49:20am', '26-06-2022', NULL, NULL),
(32, '127.0.0.1', '08:39:54pm', '26-06-2022', NULL, NULL),
(33, '127.0.0.1', '09:09:45pm', '26-06-2022', NULL, NULL),
(34, '127.0.0.1', '09:19:43pm', '26-06-2022', NULL, NULL),
(35, '127.0.0.1', '09:25:42pm', '26-06-2022', NULL, NULL),
(36, '127.0.0.1', '09:41:27pm', '26-06-2022', NULL, NULL),
(37, '127.0.0.1', '11:33:08pm', '26-06-2022', NULL, NULL),
(38, '127.0.0.1', '11:41:56pm', '26-06-2022', NULL, NULL),
(39, '127.0.0.1', '12:29:47am', '27-06-2022', NULL, NULL),
(40, '127.0.0.1', '12:30:14am', '27-06-2022', NULL, NULL),
(41, '127.0.0.1', '12:30:34am', '27-06-2022', NULL, NULL),
(42, '127.0.0.1', '12:41:42am', '27-06-2022', NULL, NULL),
(43, '127.0.0.1', '12:42:12am', '27-06-2022', NULL, NULL),
(44, '127.0.0.1', '12:42:25am', '27-06-2022', NULL, NULL),
(45, '127.0.0.1', '01:06:11am', '27-06-2022', NULL, NULL),
(46, '127.0.0.1', '01:06:26am', '27-06-2022', NULL, NULL),
(47, '127.0.0.1', '01:09:47am', '27-06-2022', NULL, NULL),
(48, '127.0.0.1', '07:12:59am', '27-06-2022', NULL, NULL),
(49, '127.0.0.1', '07:17:03am', '27-06-2022', NULL, NULL),
(50, '127.0.0.1', '07:17:49am', '27-06-2022', NULL, NULL),
(51, '127.0.0.1', '07:19:28am', '27-06-2022', NULL, NULL),
(52, '127.0.0.1', '07:31:21am', '27-06-2022', NULL, NULL),
(53, '127.0.0.1', '07:37:34am', '27-06-2022', NULL, NULL),
(54, '127.0.0.1', '07:48:51am', '27-06-2022', NULL, NULL),
(55, '127.0.0.1', '07:53:55am', '27-06-2022', NULL, NULL),
(56, '127.0.0.1', '08:07:08am', '27-06-2022', NULL, NULL),
(57, '127.0.0.1', '08:07:44am', '27-06-2022', NULL, NULL),
(58, '127.0.0.1', '08:23:15am', '27-06-2022', NULL, NULL),
(59, '127.0.0.1', '08:23:19am', '27-06-2022', NULL, NULL),
(60, '127.0.0.1', '08:24:02am', '27-06-2022', NULL, NULL),
(61, '127.0.0.1', '08:24:30am', '27-06-2022', NULL, NULL),
(62, '127.0.0.1', '08:27:35am', '27-06-2022', NULL, NULL),
(63, '127.0.0.1', '11:10:40pm', '27-06-2022', NULL, NULL),
(64, '127.0.0.1', '11:10:44pm', '27-06-2022', NULL, NULL),
(65, '127.0.0.1', '11:22:57pm', '27-06-2022', NULL, NULL),
(66, '127.0.0.1', '11:28:38pm', '27-06-2022', NULL, NULL),
(67, '127.0.0.1', '01:34:45am', '28-06-2022', NULL, NULL),
(68, '127.0.0.1', '02:00:34am', '28-06-2022', NULL, NULL),
(69, '127.0.0.1', '02:29:34am', '28-06-2022', NULL, NULL),
(70, '127.0.0.1', '02:30:23am', '28-06-2022', NULL, NULL),
(71, '127.0.0.1', '02:31:00am', '28-06-2022', NULL, NULL),
(72, '127.0.0.1', '03:01:21am', '28-06-2022', NULL, NULL),
(73, '127.0.0.1', '03:01:42am', '28-06-2022', NULL, NULL),
(74, '127.0.0.1', '03:05:55am', '28-06-2022', NULL, NULL),
(75, '127.0.0.1', '03:34:47am', '28-06-2022', NULL, NULL),
(76, '127.0.0.1', '03:36:03am', '28-06-2022', NULL, NULL),
(77, '127.0.0.1', '03:58:58am', '28-06-2022', NULL, NULL),
(78, '127.0.0.1', '04:20:52am', '28-06-2022', NULL, NULL),
(79, '127.0.0.1', '04:21:08am', '28-06-2022', NULL, NULL),
(80, '127.0.0.1', '04:21:19am', '28-06-2022', NULL, NULL),
(81, '127.0.0.1', '04:27:21am', '28-06-2022', NULL, NULL),
(82, '127.0.0.1', '04:28:32am', '28-06-2022', NULL, NULL),
(83, '127.0.0.1', '05:06:58am', '28-06-2022', NULL, NULL),
(84, '127.0.0.1', '05:26:28am', '28-06-2022', NULL, NULL),
(85, '127.0.0.1', '05:26:34am', '28-06-2022', NULL, NULL),
(86, '127.0.0.1', '06:07:33am', '28-06-2022', NULL, NULL),
(87, '127.0.0.1', '06:08:28am', '28-06-2022', NULL, NULL),
(88, '127.0.0.1', '06:09:11am', '28-06-2022', NULL, NULL),
(89, '127.0.0.1', '06:10:43am', '28-06-2022', NULL, NULL),
(90, '127.0.0.1', '06:11:35am', '28-06-2022', NULL, NULL),
(91, '127.0.0.1', '06:11:55am', '28-06-2022', NULL, NULL),
(92, '127.0.0.1', '06:13:13am', '28-06-2022', NULL, NULL),
(93, '127.0.0.1', '06:13:50am', '28-06-2022', NULL, NULL),
(94, '127.0.0.1', '06:18:00am', '28-06-2022', NULL, NULL),
(95, '127.0.0.1', '06:24:24am', '28-06-2022', NULL, NULL),
(96, '127.0.0.1', '06:39:23pm', '28-06-2022', NULL, NULL),
(97, '127.0.0.1', '07:24:24pm', '28-06-2022', NULL, NULL),
(98, '127.0.0.1', '07:24:29pm', '28-06-2022', NULL, NULL),
(99, '127.0.0.1', '06:51:30pm', '30-06-2022', NULL, NULL),
(100, '127.0.0.1', '06:51:35pm', '30-06-2022', NULL, NULL),
(101, '127.0.0.1', '06:53:01pm', '30-06-2022', NULL, NULL),
(102, '127.0.0.1', '06:53:12pm', '30-06-2022', NULL, NULL),
(103, '127.0.0.1', '07:20:16pm', '30-06-2022', NULL, NULL),
(104, '127.0.0.1', '07:46:22pm', '30-06-2022', NULL, NULL),
(105, '127.0.0.1', '08:04:43pm', '30-06-2022', NULL, NULL),
(106, '127.0.0.1', '08:06:42pm', '30-06-2022', NULL, NULL),
(107, '127.0.0.1', '08:11:09pm', '30-06-2022', NULL, NULL),
(108, '127.0.0.1', '09:02:25pm', '30-06-2022', NULL, NULL),
(109, '127.0.0.1', '09:02:28pm', '30-06-2022', NULL, NULL),
(110, '127.0.0.1', '09:45:43pm', '30-06-2022', NULL, NULL),
(111, '127.0.0.1', '11:27:42pm', '30-06-2022', NULL, NULL),
(112, '127.0.0.1', '12:01:03am', '01-07-2022', NULL, NULL),
(113, '127.0.0.1', '12:11:50am', '01-07-2022', NULL, NULL),
(114, '127.0.0.1', '12:45:24am', '01-07-2022', NULL, NULL),
(115, '127.0.0.1', '12:45:27am', '01-07-2022', NULL, NULL),
(116, '127.0.0.1', '01:21:10am', '01-07-2022', NULL, NULL),
(117, '127.0.0.1', '01:21:13am', '01-07-2022', NULL, NULL),
(118, '127.0.0.1', '01:23:51am', '01-07-2022', NULL, NULL),
(119, '127.0.0.1', '01:23:54am', '01-07-2022', NULL, NULL),
(120, '127.0.0.1', '01:56:10am', '01-07-2022', NULL, NULL),
(121, '127.0.0.1', '01:56:14am', '01-07-2022', NULL, NULL),
(122, '127.0.0.1', '01:57:08am', '01-07-2022', NULL, NULL),
(123, '127.0.0.1', '01:57:11am', '01-07-2022', NULL, NULL),
(124, '127.0.0.1', '01:57:41am', '01-07-2022', NULL, NULL),
(125, '127.0.0.1', '01:57:44am', '01-07-2022', NULL, NULL),
(126, '127.0.0.1', '02:00:43am', '01-07-2022', NULL, NULL),
(127, '127.0.0.1', '02:01:31am', '01-07-2022', NULL, NULL),
(128, '127.0.0.1', '02:01:34am', '01-07-2022', NULL, NULL),
(129, '127.0.0.1', '02:01:55am', '01-07-2022', NULL, NULL),
(130, '127.0.0.1', '02:01:59am', '01-07-2022', NULL, NULL),
(131, '127.0.0.1', '02:03:12am', '01-07-2022', NULL, NULL),
(132, '127.0.0.1', '02:03:15am', '01-07-2022', NULL, NULL),
(133, '127.0.0.1', '02:08:40am', '01-07-2022', NULL, NULL),
(134, '127.0.0.1', '02:13:57am', '01-07-2022', NULL, NULL),
(135, '127.0.0.1', '02:14:01am', '01-07-2022', NULL, NULL),
(136, '127.0.0.1', '02:14:27am', '01-07-2022', NULL, NULL),
(137, '127.0.0.1', '02:14:30am', '01-07-2022', NULL, NULL),
(138, '127.0.0.1', '02:15:09am', '01-07-2022', NULL, NULL),
(139, '127.0.0.1', '02:15:12am', '01-07-2022', NULL, NULL),
(140, '127.0.0.1', '02:17:03am', '01-07-2022', NULL, NULL),
(141, '127.0.0.1', '02:17:06am', '01-07-2022', NULL, NULL),
(142, '127.0.0.1', '02:26:41am', '01-07-2022', NULL, NULL),
(143, '127.0.0.1', '02:26:42am', '01-07-2022', NULL, NULL),
(144, '127.0.0.1', '02:40:31am', '01-07-2022', NULL, NULL),
(145, '127.0.0.1', '11:41:36pm', '01-07-2022', NULL, NULL),
(146, '127.0.0.1', '11:41:42pm', '01-07-2022', NULL, NULL),
(147, '127.0.0.1', '01:18:36am', '02-07-2022', NULL, NULL),
(148, '127.0.0.1', '01:19:17am', '02-07-2022', NULL, NULL),
(149, '127.0.0.1', '01:26:35am', '02-07-2022', NULL, NULL),
(150, '127.0.0.1', '01:31:06am', '02-07-2022', NULL, NULL),
(151, '127.0.0.1', '01:31:15am', '02-07-2022', NULL, NULL),
(152, '127.0.0.1', '01:31:20am', '02-07-2022', NULL, NULL),
(153, '127.0.0.1', '01:33:33am', '02-07-2022', NULL, NULL),
(154, '127.0.0.1', '01:33:37am', '02-07-2022', NULL, NULL),
(155, '127.0.0.1', '01:35:39am', '02-07-2022', NULL, NULL),
(156, '127.0.0.1', '01:35:42am', '02-07-2022', NULL, NULL),
(157, '127.0.0.1', '01:52:33am', '02-07-2022', NULL, NULL),
(158, '127.0.0.1', '01:53:20am', '02-07-2022', NULL, NULL),
(159, '127.0.0.1', '01:58:54am', '02-07-2022', NULL, NULL),
(160, '127.0.0.1', '02:01:54am', '02-07-2022', NULL, NULL),
(161, '127.0.0.1', '02:02:25am', '02-07-2022', NULL, NULL),
(162, '127.0.0.1', '02:02:29am', '02-07-2022', NULL, NULL),
(163, '127.0.0.1', '02:02:40am', '02-07-2022', NULL, NULL),
(164, '127.0.0.1', '02:02:43am', '02-07-2022', NULL, NULL),
(165, '127.0.0.1', '02:19:11am', '02-07-2022', NULL, NULL),
(166, '127.0.0.1', '02:21:56am', '02-07-2022', NULL, NULL),
(167, '127.0.0.1', '02:22:01am', '02-07-2022', NULL, NULL),
(168, '127.0.0.1', '02:22:23am', '02-07-2022', NULL, NULL),
(169, '127.0.0.1', '02:22:28am', '02-07-2022', NULL, NULL),
(170, '127.0.0.1', '02:22:41am', '02-07-2022', NULL, NULL),
(171, '127.0.0.1', '02:23:38am', '02-07-2022', NULL, NULL),
(172, '127.0.0.1', '02:23:41am', '02-07-2022', NULL, NULL),
(173, '127.0.0.1', '02:23:44am', '02-07-2022', NULL, NULL),
(174, '127.0.0.1', '02:23:58am', '02-07-2022', NULL, NULL),
(175, '127.0.0.1', '02:24:05am', '02-07-2022', NULL, NULL),
(176, '127.0.0.1', '02:24:48am', '02-07-2022', NULL, NULL),
(177, '127.0.0.1', '02:24:52am', '02-07-2022', NULL, NULL),
(178, '127.0.0.1', '02:25:13am', '02-07-2022', NULL, NULL),
(179, '127.0.0.1', '02:25:20am', '02-07-2022', NULL, NULL),
(180, '127.0.0.1', '02:25:25am', '02-07-2022', NULL, NULL),
(181, '127.0.0.1', '02:25:43am', '02-07-2022', NULL, NULL),
(182, '127.0.0.1', '02:40:06am', '02-07-2022', NULL, NULL),
(183, '127.0.0.1', '02:50:01am', '02-07-2022', NULL, NULL),
(184, '127.0.0.1', '02:50:05am', '02-07-2022', NULL, NULL),
(185, '127.0.0.1', '02:51:25am', '02-07-2022', NULL, NULL),
(186, '127.0.0.1', '02:51:43am', '02-07-2022', NULL, NULL),
(187, '127.0.0.1', '02:54:13am', '02-07-2022', NULL, NULL),
(188, '127.0.0.1', '02:54:17am', '02-07-2022', NULL, NULL),
(189, '127.0.0.1', '02:55:04am', '02-07-2022', NULL, NULL),
(190, '127.0.0.1', '02:56:02am', '02-07-2022', NULL, NULL),
(191, '127.0.0.1', '02:56:32am', '02-07-2022', NULL, NULL),
(192, '127.0.0.1', '02:57:06am', '02-07-2022', NULL, NULL),
(193, '127.0.0.1', '02:57:54am', '02-07-2022', NULL, NULL),
(194, '127.0.0.1', '02:57:57am', '02-07-2022', NULL, NULL),
(195, '127.0.0.1', '02:58:35am', '02-07-2022', NULL, NULL),
(196, '127.0.0.1', '02:58:39am', '02-07-2022', NULL, NULL),
(197, '127.0.0.1', '02:59:55am', '02-07-2022', NULL, NULL),
(198, '127.0.0.1', '03:00:01am', '02-07-2022', NULL, NULL),
(199, '127.0.0.1', '03:02:35am', '02-07-2022', NULL, NULL),
(200, '127.0.0.1', '03:02:39am', '02-07-2022', NULL, NULL),
(201, '127.0.0.1', '03:03:02am', '02-07-2022', NULL, NULL),
(202, '127.0.0.1', '03:03:05am', '02-07-2022', NULL, NULL),
(203, '127.0.0.1', '03:03:52am', '02-07-2022', NULL, NULL),
(204, '127.0.0.1', '03:03:57am', '02-07-2022', NULL, NULL),
(205, '127.0.0.1', '04:04:32pm', '03-07-2022', NULL, NULL),
(206, '127.0.0.1', '04:04:38pm', '03-07-2022', NULL, NULL),
(207, '127.0.0.1', '04:06:18pm', '03-07-2022', NULL, NULL),
(208, '127.0.0.1', '04:10:14pm', '03-07-2022', NULL, NULL),
(209, '127.0.0.1', '04:10:17pm', '03-07-2022', NULL, NULL),
(210, '127.0.0.1', '04:11:10pm', '03-07-2022', NULL, NULL),
(211, '127.0.0.1', '04:11:22pm', '03-07-2022', NULL, NULL),
(212, '127.0.0.1', '04:16:05pm', '03-07-2022', NULL, NULL),
(213, '127.0.0.1', '04:16:08pm', '03-07-2022', NULL, NULL),
(214, '127.0.0.1', '04:16:30pm', '03-07-2022', NULL, NULL),
(215, '127.0.0.1', '04:16:48pm', '03-07-2022', NULL, NULL),
(216, '127.0.0.1', '04:17:40pm', '03-07-2022', NULL, NULL),
(217, '127.0.0.1', '04:18:01pm', '03-07-2022', NULL, NULL),
(218, '127.0.0.1', '04:21:49pm', '03-07-2022', NULL, NULL),
(219, '127.0.0.1', '04:25:22pm', '03-07-2022', NULL, NULL),
(220, '127.0.0.1', '04:25:26pm', '03-07-2022', NULL, NULL),
(221, '127.0.0.1', '04:46:15pm', '03-07-2022', NULL, NULL),
(222, '127.0.0.1', '04:46:19pm', '03-07-2022', NULL, NULL),
(223, '127.0.0.1', '04:46:34pm', '03-07-2022', NULL, NULL),
(224, '127.0.0.1', '04:46:38pm', '03-07-2022', NULL, NULL),
(225, '127.0.0.1', '04:51:15pm', '03-07-2022', NULL, NULL),
(226, '127.0.0.1', '04:53:43pm', '03-07-2022', NULL, NULL),
(227, '127.0.0.1', '04:53:46pm', '03-07-2022', NULL, NULL),
(228, '127.0.0.1', '04:54:20pm', '03-07-2022', NULL, NULL),
(229, '127.0.0.1', '04:55:12pm', '03-07-2022', NULL, NULL),
(230, '127.0.0.1', '04:58:05pm', '03-07-2022', NULL, NULL),
(231, '127.0.0.1', '04:58:08pm', '03-07-2022', NULL, NULL),
(232, '127.0.0.1', '04:58:47pm', '03-07-2022', NULL, NULL),
(233, '127.0.0.1', '05:02:20pm', '03-07-2022', NULL, NULL),
(234, '127.0.0.1', '05:07:09pm', '03-07-2022', NULL, NULL),
(235, '127.0.0.1', '05:07:13pm', '03-07-2022', NULL, NULL),
(236, '127.0.0.1', '05:14:30pm', '03-07-2022', NULL, NULL),
(237, '127.0.0.1', '05:14:52pm', '03-07-2022', NULL, NULL),
(238, '127.0.0.1', '05:19:11pm', '03-07-2022', NULL, NULL),
(239, '127.0.0.1', '05:19:14pm', '03-07-2022', NULL, NULL),
(240, '127.0.0.1', '05:19:49pm', '03-07-2022', NULL, NULL),
(241, '127.0.0.1', '05:24:25pm', '03-07-2022', NULL, NULL),
(242, '127.0.0.1', '05:24:28pm', '03-07-2022', NULL, NULL),
(243, '127.0.0.1', '05:33:19pm', '03-07-2022', NULL, NULL),
(244, '127.0.0.1', '05:38:00pm', '03-07-2022', NULL, NULL),
(245, '127.0.0.1', '05:38:20pm', '03-07-2022', NULL, NULL),
(246, '127.0.0.1', '05:38:49pm', '03-07-2022', NULL, NULL),
(247, '127.0.0.1', '05:46:41pm', '03-07-2022', NULL, NULL),
(248, '127.0.0.1', '05:46:45pm', '03-07-2022', NULL, NULL),
(249, '127.0.0.1', '05:47:47pm', '03-07-2022', NULL, NULL),
(250, '127.0.0.1', '05:58:14pm', '03-07-2022', NULL, NULL),
(251, '127.0.0.1', '05:58:18pm', '03-07-2022', NULL, NULL),
(252, '127.0.0.1', '05:58:44pm', '03-07-2022', NULL, NULL),
(253, '127.0.0.1', '06:09:23pm', '03-07-2022', NULL, NULL),
(254, '127.0.0.1', '06:09:27pm', '03-07-2022', NULL, NULL),
(255, '127.0.0.1', '06:09:53pm', '03-07-2022', NULL, NULL),
(256, '127.0.0.1', '06:09:57pm', '03-07-2022', NULL, NULL),
(257, '127.0.0.1', '06:15:55pm', '03-07-2022', NULL, NULL),
(258, '127.0.0.1', '06:15:58pm', '03-07-2022', NULL, NULL),
(259, '127.0.0.1', '06:16:19pm', '03-07-2022', NULL, NULL),
(260, '127.0.0.1', '06:16:22pm', '03-07-2022', NULL, NULL),
(261, '127.0.0.1', '06:51:44pm', '03-07-2022', NULL, NULL),
(262, '127.0.0.1', '06:51:49pm', '03-07-2022', NULL, NULL),
(263, '127.0.0.1', '07:02:42pm', '03-07-2022', NULL, NULL),
(264, '127.0.0.1', '07:02:45pm', '03-07-2022', NULL, NULL),
(265, '127.0.0.1', '07:03:23pm', '03-07-2022', NULL, NULL),
(266, '127.0.0.1', '07:21:39pm', '03-07-2022', NULL, NULL),
(267, '127.0.0.1', '07:21:43pm', '03-07-2022', NULL, NULL),
(268, '127.0.0.1', '07:22:08pm', '03-07-2022', NULL, NULL),
(269, '127.0.0.1', '07:22:18pm', '03-07-2022', NULL, NULL),
(270, '127.0.0.1', '07:22:47pm', '03-07-2022', NULL, NULL),
(271, '127.0.0.1', '07:23:24pm', '03-07-2022', NULL, NULL),
(272, '127.0.0.1', '08:17:16pm', '03-07-2022', NULL, NULL),
(273, '127.0.0.1', '08:17:19pm', '03-07-2022', NULL, NULL),
(274, '127.0.0.1', '08:21:51pm', '03-07-2022', NULL, NULL),
(275, '127.0.0.1', '08:22:24pm', '03-07-2022', NULL, NULL),
(276, '127.0.0.1', '08:22:37pm', '03-07-2022', NULL, NULL),
(277, '127.0.0.1', '08:22:51pm', '03-07-2022', NULL, NULL),
(278, '127.0.0.1', '08:23:06pm', '03-07-2022', NULL, NULL),
(279, '127.0.0.1', '08:44:19pm', '03-07-2022', NULL, NULL),
(280, '127.0.0.1', '08:44:23pm', '03-07-2022', NULL, NULL),
(281, '127.0.0.1', '08:47:40pm', '03-07-2022', NULL, NULL),
(282, '127.0.0.1', '08:47:44pm', '03-07-2022', NULL, NULL),
(283, '127.0.0.1', '08:50:52pm', '03-07-2022', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_orders`
--
ALTER TABLE `cart_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_lists`
--
ALTER TABLE `product_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_orders`
--
ALTER TABLE `cart_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `product_lists`
--
ALTER TABLE `product_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
