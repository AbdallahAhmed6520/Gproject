-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2022 at 10:33 PM
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
(1, 'Mobiles', 'http://127.0.0.1:8000/storage/1709181919504921.png', NULL, NULL),
(2, 'Computers', 'http://127.0.0.1:8000/storage/1709181939864637.png', NULL, NULL),
(3, 'Electronics', 'http://127.0.0.1:8000/storage/1709181954206377.png', NULL, NULL),
(4, 'TVs & Appliances', 'http://127.0.0.1:8000/storage/1709181973038355.png', NULL, NULL),
(5, 'Fashion', 'http://127.0.0.1:8000/storage/1709181986579379.png', NULL, NULL),
(6, 'Baby & Kids', 'http://127.0.0.1:8000/storage/1709181859061681.png', NULL, NULL),
(7, 'Home & Furniture', 'http://127.0.0.1:8000/storage/1709179102536731.png', NULL, NULL),
(8, 'Sports,Books', 'http://127.0.0.1:8000/storage/1709182029146227.png', NULL, NULL),
(9, 'Mobile Accessories', 'http://127.0.0.1:8000/storage/1709182046010315.png', NULL, NULL),
(10, 'Others', 'http://127.0.0.1:8000/storage/1709178983834885.png', NULL, NULL);

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

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `contact_date`, `contact_time`, `created_at`, `updated_at`) VALUES
(1, 'mayar atef', 'mayar@gmail.com', 'ndjksjkfjkbsjfbwk', '27-06-2022', '01:51:06am', NULL, NULL);

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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 1, 'https://rukminim1.flixcart.com/image/416/416/l2jcccw0/mobile/c/9/j/-original-imagduwqpyuxyx8t.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l12h1u80/mobile/p/0/a/-original-imagcpehhapspeeh.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l12h1u80/mobile/g/d/i/-original-imagcpehkcndadsg.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l12h1u80/mobile/o/l/5/-original-imagcpehdh87tzgs.jpeg?q=70', 'Get the photographer in you to light with Oppo K10. Designed specifically for camera lovers this phone comes with a 50 MP triple camera setup. Thanks to its varied camera features such as Night Scape Mode, Night Flare Portraits, and Bokeh Mode helps captu', 'black', '', 'Get the photographer in you to light with Oppo K10. Designed specifically for camera lovers this phone comes with a 50 MP triple camera setup. Thanks to its varied camera features such as Night Scape Mode, Night Flare Portraits, and Bokeh Mode helps capture mesmerising images with crystal-clear imagery. The 16 MP selfie camera captures stunning selfies and helps you boost your social media presence. Powered by Qualcomm Snapdragon 680 with 6 nm architecture, this phone enhances your operational efficiency and gets you on top of your game. Featuring 6 GB of RAM and 128 GB of internal storage, you can practically store all that you want in your phone. Furthermore, this phone boasts a Dynamic RAM Expansion technology that converts unused memory into RAM, thereby, increasing the efficiency of your phone.\r\n', NULL, NULL),
(2, 1, 'https://rukminim1.flixcart.com/image/416/416/l12h1u80/mobile/o/l/5/-original-imagcpehdh87tzgs.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l12h1u80/mobile/g/d/i/-original-imagcpehkcndadsg.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l12h1u80/mobile/p/0/a/-original-imagcpehhapspeeh.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l2jcccw0/mobile/c/9/j/-original-imagduwqpyuxyx8t.jpeg?q=70', 'Get the photographer in you to light with Oppo K10. Designed specifically for camera lovers this phone comes with a 50 MP triple camera setup. Thanks to its varied camera features such as Night Scape Mode, Night Flare Portraits, and Bokeh Mode helps captu', 'black', '50 MP', 'Get the photographer in you to light with Oppo K10. Designed specifically for camera lovers this phone comes with a 50 MP triple camera setup. Thanks to its varied camera features such as Night Scape Mode, Night Flare Portraits, and Bokeh Mode helps capture mesmerising images with crystal-clear imagery. The 16 MP selfie camera captures stunning selfies and helps you boost your social media presence. Powered by Qualcomm Snapdragon 680 with 6 nm architecture, this phone enhances your operational efficiency and gets you on top of your game. Featuring 6 GB of RAM and 128 GB of internal storage, you can practically store all that you want in your phone. Furthermore, this phone boasts a Dynamic RAM Expansion technology that converts unused memory into RAM, thereby, increasing the efficiency of your phone.\r\n', NULL, NULL),
(3, 1, 'https://rukminim1.flixcart.com/image/416/416/l2jcccw0/mobile/c/9/j/-original-imagduwqpyuxyx8t.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l12h1u80/mobile/p/0/a/-original-imagcpehhapspeeh.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l12h1u80/mobile/g/d/i/-original-imagcpehkcndadsg.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l12h1u80/mobile/o/l/5/-original-imagcpehdh87tzgs.jpeg?q=70', 'Get the photographer in you to light with Oppo K10. Designed specifically for camera lovers this phone comes with a 50 MP triple camera setup.', 'black', '50 MP', 'Get the photographer in you to light with Oppo K10. Designed specifically for camera lovers this phone comes with a 50 MP triple camera setup. Thanks to its varied camera features such as Night Scape Mode, Night Flare Portraits, and Bokeh Mode helps capture mesmerising images with crystal-clear imagery. The 16 MP selfie camera captures stunning selfies and helps you boost your social media presence. Powered by Qualcomm Snapdragon 680 with 6 nm architecture, this phone enhances your operational efficiency and gets you on top of your game. Featuring 6 GB of RAM and 128 GB of internal storage, you can practically store all that you want in your phone. Furthermore, this phone boasts a Dynamic RAM Expansion technology that converts unused memory into RAM, thereby, increasing the efficiency of your phone.\r\n', NULL, NULL),
(4, 2, 'https://rukminim1.flixcart.com/image/416/416/kn4xhu80/mobile/6/q/2/f19-cph2219-oppo-original-imagfvj5p9qmugsh.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kn4xhu80/mobile/q/u/0/f19-cph2219-oppo-original-imagfvj5m2zfzzar.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kn4xhu80/mobile/4/j/w/f19-cph2219-oppo-original-imagfvj5bfg9hxbz.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kn4xhu80/mobile/u/e/k/f19-cph2219-oppo-original-imagfvj5gz4eghqb.jpeg?q=70', 'The OPPO F19 is a smartphone designed and created to match your dynamic and stylish lifestyle.', 'black', '128 GB', 'The OPPO F19 is a smartphone designed and created to match your dynamic and stylish lifestyle. This smartphone features a 5000 mAh Battery for uninterrupted use, an AMOLED FHD+ Punch-hole Display for clear visuals, and an AI Beautification Selfie Camera to capture striking selfies with every click.', NULL, NULL),
(5, 3, 'https://rukminim1.flixcart.com/image/416/416/kyg5zm80/mobile/8/z/r/-original-imagazh6psfgmjzt.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kyg5zm80/mobile/8/b/0/-original-imagazh6rtrhcbzr.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kyg5zm80/mobile/8/q/t/-original-imagazh6f8xvt9ee.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kyg5zm80/mobile/p/w/i/-original-imagazh6fs2fkr4y.jpeg?q=70', '\r\nHandset, Data Cable, Charger, Sim Cartoon Pin, Protective Cover, Quick Start Guide, Warranty Card', 'Black', '60 HZ', '\r\nHandset, Data Cable, Charger, Sim Cartoon Pin, Protective Cover, Quick Start Guide, Warranty Card.Screen-to-Body Ratio: 89.27%, Color Saturation: 71% NTSC, 60 Hz Refresh Rate, Touch Sampling Rate: 60 Hz, Contrast Ratio: 1500:1, Brightness: 480 nits, Cover Glass: Corning Glass 3', NULL, NULL),
(6, 4, 'https://rukminim1.flixcart.com/image/416/416/l0fm07k0/mobile/z/k/e/-original-imagc829xnfx6mgf.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l0fm07k0/mobile/e/b/2/-original-imagc829auwvgfth.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l0fm07k0/mobile/j/d/v/-original-imagc829zajwazfm.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l0fm07k0/mobile/y/4/1/-original-imagc829k2wscjyy.jpeg?q=70', 'Bring home the efficient Samsung Galaxy F23 5G mobile phone that comes with a myriad of impeccable features, including fast operation and flawless gaming experience.', 'black', '5G', 'Bring home the efficient Samsung Galaxy F23 5G mobile phone that comes with a myriad of impeccable features, including fast operation, versatility, and flawless gaming experience. This phone comes with a 16.25 (6.4) Full HD+ Infinity-U Display with a refresh rate of up to 120 Hz so that you can enjoy smooth multitasking and vibrant visuals. Driven by a Snapdragon 750G processor, this mobile phone turns your gaming session intense and productive. Thanks to the Auto Data Switching feature of this phone, you can switch to a secondary SIM network when the primary SIM loses its network. Moreover, the integrated Power Cool technology of this phone allows your phone to stay cool well even when used for long hours.\r\n', NULL, NULL),
(7, 5, 'https://rukminim1.flixcart.com/image/416/416/kqqykcw0/mobile/n/a/d/galaxy-f22-sm-e225flbdins-samsung-original-imag4z99jwatcqtm.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kqqykcw0/mobile/j/h/a/galaxy-f22-sm-e225flbdins-samsung-original-imag4z99mfxgn45g.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kqqykcw0/mobile/o/p/o/galaxy-f22-sm-e225flbdins-samsung-original-imag4z997tmh88xa.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kqqykcw0/mobile/v/4/4/galaxy-f22-sm-e225flbdins-samsung-original-imag4z99f54fygfy.jpeg?q=70', 'Bid goodbye to screen stuttering, poor display quality, and low-resolution photos by getting your hands on the Samsung Galaxy F22 smartphone.', 'Black', '48 MP', '\r\nBid goodbye to screen stuttering, poor display quality, and low-resolution photos by getting your hands on the Samsung Galaxy F22 smartphone. Featuring a 90 Hz refresh rate, HD+ sAMOLED display, and True 48 MP quad-rear camera, this smartphone is sure to be your ideal companion for entertainment, gaming, and communication. What\'s more, its 6000 mAh battery ensures that a full charge can last for an entire day.', NULL, NULL),
(8, 6, 'https://rukminim1.flixcart.com/image/416/416/kg8avm80/mobile/j/f/9/apple-iphone-12-dummyapplefsn-original-imafwg8dkyh2zgrh.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kg8avm80/mobile/j/f/9/apple-iphone-12-dummyapplefsn-original-imafwg8duhgegw9p.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kg8avm80/mobile/j/f/9/apple-iphone-12-dummyapplefsn-original-imafwg8dszwspt8f.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kg8avm80/mobile/j/f/9/apple-iphone-12-dummyapplefsn-original-imafwg8drz236mxd.jpeg?q=70', 'Super Retina XDR Display, 6.1 inch (Diagonal) All Screen OLED Display.', 'black', '6.1 inch ', 'Super Retina XDR Display, 6.1 inch (Diagonal) All Screen OLED Display, HDR Display, True Tone, Wide Colour (P3), Haptic Touch, 2000000:1 Contrast Ratio (Typical), 625 nits Max Brightness (Typical); 1200 nits Max Brightness (HDR), Fingerprint-resistant Oleophobic Coating, Support for Display of Multiple Languages and Characters Simultaneously\r\n', NULL, NULL),
(9, 7, 'https://rukminim1.flixcart.com/image/416/416/kgiaykw0/mobile/y/n/y/apple-iphone-11-mhda3hn-a-original-imafwqepmmrxjzzd.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/k2jbyq80pkrrdj/mobile-refurbished/x/j/s/iphone-11-128-d-mwm02hn-a-apple-0-original-imafkg242ugz8hwc.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kmp7ngw0/mobile/d/k/u/iphone-11-mhda3hn-a-apple-original-imagfj4cxvgbyxap.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/k2jbyq80pkrrdj/mobile-refurbished/d/u/h/iphone-11-128-u-mwm02hn-a-apple-0-original-imafkg24r2ragyqf.jpeg?q=70', '1400:1 Contrast Ratio (Typical), True Tone Display, Wide Colour Display (P3), Haptic Touch, 625 nits Max Brightness (Typical), Fingerprint Resistant Oleophobic Coating, Support for Display of Multiple Languages and Characters Simultaneously', '', '', '\r\nDual 12MP Ultra Wide and Wide Cameras, Ultra Wide: f/2.4 Aperture and 120Degree Field of View, Wide: f/1.8 Aperture, Portrait Mode with Advanced Bokeh and Depth Control, Portrait Lighting with Six Effects (Natural, Studio, Contour, Stage, Stage Mono, High-key Mono), Optical Image Stabilisation (Wide), Five Element Lens (Ultra Wide), Six Element Lens (Wide), Brighter True Tone Flash with Slow Sync, Panorama (Up to 64MP), 100% Focus Pixels (Wide), Night Mode, Auto Adjustments, Next-generation Smart HDR for Photos, Wide Colour Capture for Photos and Live Photos, Advanced Red Eye Correction, Auto Image Stabilisation, Burst Mode, Photo Geotagging, Image Formats Captured: HEIF and JPEG', NULL, NULL),
(10, 8, 'https://rukminim1.flixcart.com/image/416/416/kyvvtzk0/computer/z/y/p/-original-imagbyhh3rpeun4d.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kyvvtzk0/computer/z/j/q/-original-imagbyhhxhwpkhza.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kyvvtzk0/computer/q/9/g/-original-imagbyhhxph9wfkt.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kyvvtzk0/computer/l/x/m/-original-imagbyhhgff8xard.jpeg?q=70', '1 x SuperSpeed USB Type-C 10Gbps Signaling Rate (USB Power Delivery, DisplayPort 1.4, HP Sleep and Charge), 2 x SuperSpeed USB Type-A 5Gbps Signaling Rate', '', '', '1 x SuperSpeed USB Type-C 10Gbps Signaling Rate (USB Power Delivery, DisplayPort 1.4, HP Sleep and Charge), 2 x SuperSpeed USB Type-A 5Gbps Signaling Rate.Full HD IPS, Micro-edge, Anti-glare Display (Brightness: 250 nits, 157 ppi, Color Gamut: 45%NTSC)\r\n', NULL, NULL),
(11, 9, 'https://rukminim1.flixcart.com/image/416/416/kyrlifk0/computer/r/e/j/15s-eq2143au-thin-and-light-laptop-hp-original-imagaxg6xqusakm2.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kyrlifk0/computer/m/j/j/15s-eq2143au-thin-and-light-laptop-hp-original-imagaxg6gwbhrmnf.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kyrlifk0/computer/l/v/9/15s-eq2143au-thin-and-light-laptop-hp-original-imagaxg6mnamzxhu.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kyrlifk0/computer/r/a/t/15s-eq2143au-thin-and-light-laptop-hp-original-imagaxg6vb2azgut.jpeg?q=70', '1 x SuperSpeed USB Type-C 5Gbps signaling rate, 2 x SuperSpeed USB Type-A 5Gbps signaling rate\r\n', '', '', '1 x SuperSpeed USB Type-C 5Gbps signaling rate, 2 x SuperSpeed USB Type-A 5Gbps signaling rate.Full HD, micro-edge, anti-glare, Brightness: 250 nits, 141 ppi, Color Gamut: 45%NTSC.', NULL, NULL),
(12, 10, 'https://rukminim1.flixcart.com/image/416/416/l2rwzgw0/cpu/g/r/v/3-gt-gamer-i7-4220-1-zoonis-original-imagefuqemrznyhj.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l2urv680/cabinet/q/8/z/alien-zoonis-original-image4ypfdnpsy5h.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l2urv680/cabinet/n/p/5/alien-zoonis-original-image4ypgxfbryyt.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l1mh7rk0/allinone-desktop/d/g/2/gt-gamer-desktop-2gb-nv-gtx-750-ti-graphics-card-zoonis-original-imagd539rfzzzbsg.jpeg?q=70', '\r\n1x Punta LED, 1x Punta keyboard ,Mouse 1 x Tower PC, 1 x Power Cord, 1 x Warranty Card, Download on Brand website 1 x Wi-Fi Dongle', '', '', '\r\n1x Punta LED, 1x Punta keyboard ,Mouse 1 x Tower PC, 1 x Power Cord, 1 x Warranty Card, Download on Brand website 1 x Wi-Fi Dongle.1 year as Per Company Policy any issue in Product call brand customer Care 91-9968-1000-44\r\n', NULL, NULL),
(13, 11, 'https://rukminim1.flixcart.com/image/416/416/l071d3k0/allinone-desktop/r/5/0/di3-4gb-500-15-4-dzab-original-imagcf9hb8jwmsta.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l071d3k0/allinone-desktop/r/5/0/di3-4gb-500-15-4-dzab-original-imagcf9hb8jwmsta.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l071d3k0/allinone-desktop/m/3/5/di3-4gb-500-15-4-dzab-original-imagcf9hgvgz3uzd.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l071d3k0/allinone-desktop/m/3/5/di3-4gb-500-15-4-dzab-original-imagcf9hgvgz3uzd.jpeg?q=70', 'This Computer is Assemebled Computer build with as per available Cabinet, power supply, LED Monitor, Keyboard Mouse and other Accessories.', '', '', 'This Computer is Assemebled Computer build with as per available Cabinet, power supply, LED Monitor, Keyboard Mouse and other Accessories. The PC comes with Trail Window 10 and Microsoft Office. There is no DVD writer in this PC. You can use this pc for Office, Online Study, Programming or Gamming purpose (Note before buying please read warranty policy carefully)\r\n', NULL, NULL),
(14, 12, 'https://rukminim1.flixcart.com/image/416/416/kjym9ow0/television/4/l/o/42path2121-42path2121-thomson-original-imafzff3gwyg4pqj.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kjym9ow0/television/v/t/l/42path2121-42path2121-thomson-original-imafzff3facgufcy.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kjym9ow0/television/l/j/i/42path2121-42path2121-thomson-original-imafzff37gxdzmqd.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kjym9ow0/television/q/u/b/42path2121-42path2121-thomson-original-imafzff3pd5hpmdr.jpeg?q=70', 'With the Thomson 106 cm (42) Full HD LED Smart Android TV, you can enjoy working on a large display with immersive visuals.', '', '', 'With the Thomson 106 cm (42) Full HD LED Smart Android TV, you can enjoy working on a large display with immersive visuals, watch movies with your family with crystal-clear scenes, and/or make the most of game night with friends with exciting audio. This Android TV features the ARM Cortex-A53 Processor for seamless performance, Multiple Connectivity Options to connect to various devices, and 30 W Speakers for immersive audio.\r\n', NULL, NULL),
(15, 13, 'https://rukminim1.flixcart.com/image/416/416/kzfvzww0/television/4/n/0/43fd2a00-43-y1s-oneplus-original-imagbgc4rcfpenmd.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kzfvzww0/television/y/l/5/43fd2a00-43-y1s-oneplus-original-imagbgc43n4pcj4a.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kzfvzww0/television/p/g/c/43fd2a00-43-y1s-oneplus-original-imagbgc4je3cbynd.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kzfvzww0/television/o/y/r/43fd2a00-43-y1s-oneplus-original-imagbgc4zy9dqckg.jpeg?q=70', 'You can watch your favourite movies, shows, and other content on this OnePlus TV.', '', '', 'You can watch your favourite movies, shows, and other content on this OnePlus TV. Sporting a slim bezel-less design, this TV is designed to offer an enhanced viewing experience. Powered by an AI-driven Gamma Engine, this TV provides lifelike visuals with brilliant colours. Moreover, this TV is equipped with powerful speakers that produce clear and immersive sound. Besides, its Auto Low Latency Mode (ALLM) gives you an edge over the competition when you’re playing games.\r\n', NULL, NULL),
(16, 14, 'https://rukminim1.flixcart.com/image/416/416/kw9krrk0/dslr-camera/n/a/b/-original-imag8z5wcduwu3pw.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kw9krrk0/dslr-camera/2/2/5/-original-imag8z5whmbhh5hn.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kw9krrk0/dslr-camera/k/9/b/-original-imag8z5wjjnrpmgy.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kw9krrk0/dslr-camera/d/g/m/-original-imag8z5wpzezxzvy.jpeg?q=70', '1 Camera, Rechargeable Battery, 28-60 mm Lens, AC Adaptor, Shoulder Strap, Body Cap, Accessory Shoe Cap, USB-A to USB-C Cable (USB 3.2), Camera Bag, Battery Charger.', '', '', '1 Camera, Rechargeable Battery, 28-60 mm Lens, AC Adaptor, Shoulder Strap, Body Cap, Accessory Shoe Cap, USB-A to USB-C Cable (USB 3.2), Camera Bag, Battery Charger.Still Images: ISO 100-51200 (ISO Numbers up from ISO 50 to ISO 204800 Can Be Set as Expanded ISO Range), Auto (ISO 100-12800, Selectable Lower Limit and Upper Limit), Movies: ISO 100-51200 Equivalent (ISO Numbers up ISO 102400 Can Be Set as Expanded ISO Range), Auto (ISO 100-12800, Selectable Lower Limit and Upper Limit)\r\n', NULL, NULL),
(17, 15, 'https://rukminim1.flixcart.com/image/416/416/kw9krrk0/dslr-camera/x/c/q/-original-imag8z5wfj6tfnkn.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kw9krrk0/dslr-camera/2/r/m/-original-imag8z5wxpkbqc7s.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kw9krrk0/dslr-camera/x/f/3/-original-imag8z5wtadthrgy.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kw9krrk0/dslr-camera/f/s/o/-original-imag8z5wz2z4ggnc.jpeg?q=70', 'Explore your photographing skills with this Sony camera which comes with a series of advanced features.', '', '', 'Explore your photographing skills with this Sony camera which comes with a series of advanced features such as AI-powered Real-Time Eye, high-speed Real-Time tracking and 4K movie shooting in HDR. You can capture high-quality images look natural at any point in time even in the dimmest of lighting using this light-weight camera. \r\n\r\n', NULL, NULL),
(18, 16, 'https://rukminim1.flixcart.com/image/416/416/kzllrbk0/washing-machine-new/7/x/5/-original-imagbkqpwspmjre4.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kzllrbk0/washing-machine-new/r/j/p/-original-imagbkqpmjv4wzkc.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kzllrbk0/washing-machine-new/v/t/w/-original-imagbkqpyhxheqge.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kzllrbk0/washing-machine-new/i/j/j/-original-imagbkqpwuh4py95.jpeg?q=70', 'This Samsung washing machine features the Hygiene Steam feature to ensure high-quality cleaning of your laundry items during a wash.', '', '', 'This Samsung washing machine features the Hygiene Steam feature to ensure high-quality cleaning of your laundry items during a wash. It has a Diamond Drum that features a soft curl design along with smooth, diamond-shaped ridges to produce a gentle effect on your clothes. And, the Quick Wash program can be used to quickly and efficiently clean your clothes that are lightly soiled. This way, you can go about your busy day with ease.\r\n', NULL, NULL),
(19, 17, 'https://rukminim1.flixcart.com/image/416/416/kzllrbk0/washing-machine-new/l/c/0/-original-imagbkqpkqedg8nn.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kzllrbk0/washing-machine-new/k/n/3/-original-imagbkqpzbuhq2wj.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kzllrbk0/washing-machine-new/g/i/b/-original-imagbkqpzbgva9et.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kzllrbk0/washing-machine-new/l/d/u/-original-imagbkqp5tmkcvkv.jpeg?q=70', ' The diamond drum of this washing machine is gentle on clothes and even ensures delicate clothes are not damaged.', '', '', 'Are you looking for a washing machine that does not damage your clothes? If yes, bring home the Samsung washing machine that features centre jet technology that generates streams of water from the centre of the pulsator to prevent the clothes from settling on the pulsators and getting damaged. The diamond drum of this washing machine is gentle on clothes and even ensures delicate clothes are not damaged. The child lock function prevents the tampering of settings that virtues in before a wash program was initiated.\r\n', NULL, NULL),
(20, 18, 'https://rukminim1.flixcart.com/image/416/416/l0r1j0w0/air-conditioner-new/m/d/h/-original-imagchfprhcggkmn.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l0r1j0w0/air-conditioner-new/f/j/o/-original-imagchfpnqwhxfuc.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l0r1j0w0/air-conditioner-new/e/w/c/-original-imagchfp5jwyxfsh.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l0r1j0w0/air-conditioner-new/j/p/3/-original-imagcgvzdpggzksp.jpeg?q=70', 'Experience enhanced comfort and refreshment with the Whirlpool 1.5 Ton Magicool Convert Pro 3s INV Air Conditioner.', '', '', 'Experience enhanced comfort and refreshment with the Whirlpool 1.5 Ton Magicool Convert Pro 3s INV Air Conditioner. This AC comes with up to four-in-one convertible options, so that you can conveniently choose from different capacities, including 0.9 T, 1.1 T, 1.3 T, and 1.5 T, based on your cooling needs. Moreover, this air conditioner can offer you effective cooling, even when the temperature is as high as 52°C. Furthermore, thanks to the self-cleaning function, you can conveniently get rid of the dirt that gets collected inside the AC.\r\n\r\n', NULL, NULL),
(21, 19, 'https://rukminim1.flixcart.com/image/416/416/l15bxjk0/air-conditioner-new/9/e/f/-original-imagcrtghgtzggqr.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l15bxjk0/air-conditioner-new/7/s/9/-original-imagcrtghb6dypjr.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l15bxjk0/air-conditioner-new/y/x/g/-original-imagcrtghhpsdhvh.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l15bxjk0/air-conditioner-new/w/x/o/-original-imagcrthes8hsjsu.jpeg?q=70', '1 Indoor Unit, 1 Outdoor Unit, Installation Kit, User Manual, Remote\r\n', '', '', 'Standard installation of air-conditioners upto covers only: 1) Drilling of holes into a brick wall for taking out the pipes 2) Fixing a hole sleeve & Cap. 3) Fixing & Connecting indoor and outdoor units using the standard Kit provided by the manufacturer. Not covered as part of standard Installation charges are: 1) Outdoor unit stand - Rs. 750-1000. 2) Extra copper wire - Rs. 600-800 per metre (Two sized copper pipes will be used) 3) Drain pipe extension- Rs. 80- 110 per metre. 4) Wiring extension from the meter to the installation site - Rs. 90 per metre. 5) Vinyl tape roll -Rs. 80-110 6) Dismantling/shifting of the old AC\'s - Rs. 700-800 7) Closing the holes with White Cement - on Actuals 8) Stabilizer 9) Plumbing and masonry work 10) Power-point/MCB fitting and any other electrical work 11) Carpentry work. 12) Core cutting fabrication and electrical. Note: we highly recommend to use standard & authorized accessories Only. In case customer arranges accessories by his own, Brand Service Engineer might refuse &/or ask for labour charges for fixing these accessories.', NULL, NULL),
(22, 20, 'https://rukminim1.flixcart.com/image/800/960/k868how0/t-shirt/g/e/f/l-4058-fastcolors-original-imafq9fnrukga3xz.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kxjav0w0/shopsy-t-shirt/m/7/m/s-fc4058-1-fastcolors-original-imag9zfd3kjcfeur.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/l0bbonk0/t-shirt/y/k/7/s-fc4058-fastcolors-original-imagc4gpxghzh7av.jpeg?q=50https://rukminim1.flixcart.com/image/800/960/kxkqavk0/t-shirt/7/f/f/s-fc4058-fastcolors-original-imag9zrfzjpz7hzq.jpeg?q=50', '', 'black t-shirt', 'black', 'l,xl,xxl', 'black t-shirt', NULL, NULL),
(23, 21, 'https://rukminim1.flixcart.com/image/128/128/kjswia80/t-shirt/a/j/4/l-tsrt-303-reya-original-imafzaeaggzkhcsy.jpeg?q=70', 'https://rukminim1.flixcart.com/image/800/960/kzd147k0/t-shirt/y/4/g/m-tsrt-303-reya-original-imagbefyrzgqffze.jpeg?q=50', 'https://rukminim1.flixcart.com/image/128/128/kjswia80/t-shirt/a/j/4/l-tsrt-303-reya-original-imafzaeaggzkhcsy.jpeg?q=70', 'https://rukminim1.flixcart.com/image/800/960/kzd147k0/t-shirt/q/z/m/m-tsrt-303-reya-original-imagbefyffzh68wj.jpeg?q=50', 'blue t-shirt', 'blue', 'l,xl,xxl', 'blue t-shirt', NULL, NULL),
(24, 22, 'https://rukminim1.flixcart.com/image/800/960/kyuge4w0/sandal/e/p/q/4-hd-toshina-shoes-king-pink-original-imagazg5gdcfbkmf.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kyuge4w0/sandal/m/z/u/4-hd-toshina-shoes-king-pink-original-imagazg5hsdgrsyw.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kyuge4w0/sandal/e/p/q/4-hd-toshina-shoes-king-pink-original-imagazg5gdcfbkmf.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kyuge4w0/sandal/e/t/s/4-hd-toshina-shoes-king-pink-original-imagazg5gwebhqyz.jpeg?q=50', 'Women Pink Heels Sandal\r\n', 'pink', '37,38,39,40', 'Women Pink Heels Sandal\r\n', NULL, NULL),
(25, 23, 'https://rukminim1.flixcart.com/image/800/960/kflftzk0-0/sandal/t/c/t/ft-501-fashion-tails-black-original-imafwyfy9sznkdxq.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/k70spzk0/sandal/v/9/g/ft-501-7-fashion-tails-black-original-imafpczm7v3fe5hx.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/k70spzk0/sandal/v/9/g/ft-501-8-fashion-tails-black-original-imafpczmtzk8ywh2.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/k70spzk0/sandal/v/9/g/ft-501-7-fashion-tails-black-original-imafpczm7v3fe5hx.jpeg?q=50', 'Women Black Heels Sandal\r\n', 'black', '37,38,39,40', 'Women Black Heels Sandal\r\n', NULL, NULL),
(26, 24, 'https://rukminim1.flixcart.com/image/800/960/kyxb9u80/shoe/p/a/q/6-3399-whitehub-white-original-imagbfzygjff8ngp.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kyxb9u80/shoe/f/b/d/6-3399-whitehub-white-original-imagbfzyzhcmmdnh.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kyxb9u80/shoe/p/a/q/6-3399-whitehub-white-original-imagbfzygjff8ngp.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kyxb9u80/shoe/3/1/c/6-3399-whitehub-white-original-imagbfzybvmqzyht.jpeg?q=50', 'Sneakers For Men  (White)\r\n', 'white', '40,41,42,43', 'Sneakers For Men  (White)\r\n', NULL, NULL),
(27, 25, 'https://rukminim1.flixcart.com/image/800/960/kpmy8i80/shoe/9/7/7/9-ajwings-magnolia-white-original-imag3thhyc73rhzg.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kpmy8i80/shoe/f/s/a/9-ajwings-magnolia-white-original-imag3thhh5ug8ajt.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kpmy8i80/shoe/5/i/e/9-ajwings-magnolia-white-original-imag3thhwed8ancq.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kpmy8i80/shoe/d/x/o/9-ajwings-magnolia-white-original-imag3thh2yhh9ffg.jpeg?q=50', 'Canvas Shoes For Men  (White)\r\n', 'white', '40,41,42,43', 'Canvas Shoes For Men  (White)\r\n', NULL, NULL),
(28, 26, 'https://rukminim1.flixcart.com/image/800/960/l31x2fk0/kids-shoe/2/p/8/8c-kartoos-white-pucandy-original-image9eeuxjmdcax.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/l31x2fk0/kids-shoe/s/u/s/8c-kartoos-white-pucandy-original-image9ee4wrt2tkq.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/l31x2fk0/kids-shoe/7/i/i/8c-kartoos-white-pucandy-original-image9eevkcb9z6j.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/l31x2fk0/kids-shoe/7/e/i/8c-kartoos-white-pucandy-original-image9eetff5f72t.jpeg?q=50', 'Lace Sneakers For Boys & Girls  (White)\r\n', 'white', '25,26,27,28,29,30', 'Lace Sneakers For Boys & Girls  (White)\r\n', NULL, NULL),
(29, 27, 'https://rukminim1.flixcart.com/image/800/960/kobspe80/kids-shoe/e/s/s/5c-lbw-miss-chief-original-imag2t9pvh25t7wd.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kobspe80/kids-shoe/t/j/t/5c-lbw-miss-chief-original-imag2t9peakdfqde.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kobspe80/kids-shoe/o/c/j/5c-lbw-miss-chief-original-imag2t9pyb6j2wga.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kobspe80/kids-shoe/4/t/j/5c-lbw-miss-chief-original-imag2t9pzfufgtyr.jpeg?q=50', 'Velcro Sneakers For Boys & Girls  (Purple)\r\n', 'Purple', '25,26,27,28,29,30', 'Velcro Sneakers For Boys & Girls  (Purple)\r\n', NULL, NULL),
(30, 28, 'https://rukminim1.flixcart.com/image/800/960/kkimfm80/kids-t-shirt/c/q/c/3-6-months-gobs20-2514-fushia-babygo-original-imafzub6m3qf7tgr.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kkfrjww0/kids-t-shirt/y/w/g/3-6-months-gobs20-2514-fushia-babygo-original-imafzshbnzmcjnag.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kkfrjww0/kids-t-shirt/r/q/e/3-6-months-gobs20-2514-fushia-babygo-original-imafzshbjhha57bf.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kkimfm80/kids-t-shirt/l/w/v/3-6-months-gobs20-2514-fushia-babygo-original-imafzub6ejg4ag4x.jpeg?q=50', 'Baby Boys & Baby Girls Printed Pure Cotton T Shirt  (Multicolor, Pack of 3)\r\n', 'pink ', 'l,xl,xxl', 'Baby Boys & Baby Girls Printed Pure Cotton T Shirt  (Multicolor, Pack of 3)\r\n', NULL, NULL),
(31, 29, 'https://rukminim1.flixcart.com/image/416/416/kkfrjww0/bodysuit-sleepsuit/u/u/b/0-0-3-months-baby-romper-my-baby-town-3-original-imafzrhywnb6xmth.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kim1aq80-0/kids-dungaree-romper/r/r/m/0-3-months-100-hosiery-cotton-unisex-long-sleeve-rompers-onesies-original-imafycycka4wyxh9.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kkfrjww0/bodysuit-sleepsuit/e/y/q/0-0-3-months-baby-romper-my-baby-town-3-original-imafzrhyyhe4vzvx.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kkfrjww0/bodysuit-sleepsuit/l/w/e/0-0-3-months-baby-romper-my-baby-town-3-original-imafzrhywc44bg9e.jpeg?q=70', 'MY BABY TOWN Baby Boys & Baby Girls Pink Sleepsuit\r\n', 'pink', 'l,xl,xxl', 'MY BABY TOWN Baby Boys & Baby Girls Pink Sleepsuit\r\n', NULL, NULL),
(32, 30, 'https://rukminim1.flixcart.com/image/416/416/kkoc70w0/moisturizer-cream/v/g/f/natural-baby-lotion-the-moms-co-lotion-original-imafzyzdp5v4qzcj.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kkoc70w0/moisturizer-cream/v/g/f/natural-baby-lotion-the-moms-co-lotion-original-imafzyzdp5v4qzcj.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kkoc70w0/moisturizer-cream/v/g/f/natural-baby-lotion-the-moms-co-lotion-original-imafzyzdp5v4qzcj.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kkoc70w0/moisturizer-cream/v/g/f/natural-baby-lotion-the-moms-co-lotion-original-imafzyzdp5v4qzcj.jpeg?q=70', 'The Moms Co. Natural Baby Lotion with Shea, Cocoa Butter & Jojoba Oil | Deep Moisturization  (200 ml)\r\n', '', '', 'The Moms Co. Natural Baby Lotion with Shea, Cocoa Butter & Jojoba Oil | Deep Moisturization  (200 ml)\r\n', NULL, NULL),
(33, 31, 'https://rukminim1.flixcart.com/image/416/416/kkimfm80/moisturizer-cream/o/4/g/500-baby-500ml-lotion-new-pack-500-ml-made-in-italy-johnson-s-original-imafzuqmmgswx6wz.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kkimfm80/moisturizer-cream/z/d/h/500-baby-500ml-lotion-new-pack-500-ml-made-in-italy-johnson-s-original-imafzuqmhzzzq8fz.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kkimfm80/moisturizer-cream/o/4/g/500-baby-500ml-lotion-new-pack-500-ml-made-in-italy-johnson-s-original-imafzuqmmgswx6wz.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kkimfm80/moisturizer-cream/z/d/h/500-baby-500ml-lotion-new-pack-500-ml-made-in-italy-johnson-s-original-imafzuqmhzzzq8fz.jpeg?q=70', 'JOHNSON\'S BABY 500ML LOTION NEW PACK 500 ML MADE IN ITALY  (500 ml)\r\n', '', '', 'JOHNSON\'S BABY 500ML LOTION NEW PACK 500 ML MADE IN ITALY  (500 ml)\r\n', NULL, NULL),
(34, 32, 'https://rukminim1.flixcart.com/image/416/416/kkr72q80/rocking-chair/m/9/g/1-seater-rosewood-sheesham-hop-305-brown-house-of-pataudi-brown-original-imagyf9ymjg2cayr.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kkr72q80/rocking-chair/d/t/4/1-seater-rosewood-sheesham-hop-305-brown-house-of-pataudi-brown-original-imagyf9yceaghhzy.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kkr72q80/rocking-chair/e/w/w/1-seater-rosewood-sheesham-hop-305-brown-house-of-pataudi-brown-original-imagyf9y6cq3epbp.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kkr72q80/rocking-chair/c/k/t/1-seater-rosewood-sheesham-hop-305-brown-house-of-pataudi-brown-original-imagyf9ybgvqggen.jpeg?q=70', 'House of Pataudi Is A Professionally Managed Company Which Deals In All Kinds Of Wooden & Iron Furniture, Handicrafts & Gift Items, Home Furnishing Products.', '', '', 'House of Pataudi Is A Professionally Managed Company Which Deals In All Kinds Of Wooden & Iron Furniture, Handicrafts & Gift Items, Home Furnishing Products. Lifeestyle Is Consistent In The Customer Satisfaction, As Well As Enables Their Clients To Maximize Their Profit, By Providing Them With High Quality And Craftsmanship, On Time Delivery And Competitive Price.\r\n', NULL, NULL),
(35, 33, 'https://rukminim1.flixcart.com/image/416/416/klwmufk0/tv-entertainment-unit/y/n/f/particle-board-etvmawen0052p-flipkart-perfect-homes-espresso-original-imagyx8vgggxyyyp.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/k1pbpu80/tv-entertainment-unit/a/c/g/particle-board-etvmawal0052p-flipkart-perfect-homes-melamine-original-imaf4uznhg9puvq9.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/klwmufk0/tv-entertainment-unit/l/a/7/particle-board-etvmawen0052p-flipkart-perfect-homes-espresso-original-imagyx8vzy4sgghw.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/klwmufk0/tv-entertainment-unit/k/q/v/particle-board-etvmawen0052p-flipkart-perfect-homes-espresso-original-imagyx8vqwhvmcgj.jpeg?q=70', 'Flipkart Perfect Homes Sirena Engineered Wood TV Entertainment Unit  (Finish Color - Latin Walnut, Knock Down)#JustHere\r\n', '', '', 'Flipkart Perfect Homes Sirena Engineered Wood TV Entertainment Unit  (Finish Color - Latin Walnut, Knock Down)#JustHere\r\n', NULL, NULL),
(36, 34, 'https://rukminim1.flixcart.com/image/416/416/kr6oeq80/bed/d/p/j/king-na-wrought-iron-no-fk-db-4015-king-r-furniturekraft-dark-original-imag5ffja9ryu4n4.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kr6oeq80/bed/a/r/a/king-na-wrought-iron-no-fk-db-4015-king-r-furniturekraft-dark-original-imag5ffjyfryygye.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kr6oeq80/bed/q/j/l/king-na-wrought-iron-no-fk-db-4015-king-r-furniturekraft-dark-original-imag5ffjepbggxyp.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kr6oeq80/bed/b/u/j/king-na-wrought-iron-no-fk-db-4015-king-r-furniturekraft-dark-original-imag5ffjdtvjvdrq.jpeg?q=70', 'FurnitureKraft Nancy Metal King Bed  (Finish Color - Dark Black, Delivery Condition - Knock Down)\r\n', '', '', 'FurnitureKraft Nancy Metal King Bed  (Finish Color - Dark Black, Delivery Condition - Knock Down)\r\n', NULL, NULL),
(37, 35, 'https://rukminim1.flixcart.com/image/416/416/ky90scw0/bed/p/t/x/queen-224-8-na-no-particle-board-160-4-yes-114-original-imagaguk9bhnzgfa.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/ky90scw0/bed/r/t/n/queen-224-8-na-no-particle-board-160-4-yes-114-original-imagagukzjsesn7z.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/ky90scw0/bed/t/9/l/queen-224-8-na-no-particle-board-160-4-yes-114-original-imagagukabcs2ydy.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l0igvww0/bed/h/f/q/queen-224-8-na-no-particle-board-160-4-yes-114-original-imagcabgar6fgvfj.jpeg?q=70', 'Revamp your bedroom d�cor with the Marbito Queen Bed. A bed that has elegance plus storage.', '', '', 'Revamp your bedroom d�cor with the Marbito Queen Bed. A bed that has elegance plus storage. It has robust engineered wood construction that is built to last. It has a pure white colour that provides neutrality in your space. If you are worried about storage space then this bed has got you covered. It has 4 roomy compartments that store your belongings easily. Moreover, it has shelves on the headboard that let you keep your books, phones or small showpieces. It also features an accent marble ply in the middle that adds to the overall look of the bed. With its modern design, it easily suits a variety of interior decors. Just put your favourite mattress on top of this Marbito Queen Bed, and enjoy leisure time in peace.\r\n', NULL, NULL),
(38, 36, 'https://rukminim1.flixcart.com/image/416/416/kiulxu80-0/showpiece-figurine/m/g/s/kart972-greentouch-original-imafb7nzrr7bgqe4.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kiulxu80-0/showpiece-figurine/f/t/9/kart972-greentouch-original-imafyjycy8hhkk2z.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kiulxu80-0/showpiece-figurine/m/g/s/kart972-greentouch-original-imafb7nzrr7bgqe4.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kiulxu80-0/showpiece-figurine/f/t/9/kart972-greentouch-original-imafyjycy8hhkk2z.jpeg?q=70', 'Fashion Bizz ANTIQUE SHOWPIECE BRASS AND WOODEN GRAMOPHONE Decorative Showpiece - 23 cm  (Brass, Gold)\r\n', '', '', 'Fashion Bizz ANTIQUE SHOWPIECE BRASS AND WOODEN GRAMOPHONE Decorative Showpiece - 23 cm  (Brass, Gold)\r\n', NULL, NULL),
(39, 37, 'https://rukminim1.flixcart.com/image/416/416/k44hksw0/wall-clock/3/z/n/403-403white-analog-kadio-original-imafmz3hmfkjztzs.jpeg?q=70\r\n', 'https://rukminim1.flixcart.com/image/416/416/k44hksw0/wall-clock/3/z/n/403-403white-analog-kadio-original-imafn3chxbyh2b5w.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/k44hksw0/wall-clock/3/z/n/403-403white-analog-kadio-original-imafmz3hqgjuwuwg.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/k44hksw0/wall-clock/3/z/n/403-403white-analog-kadio-original-imafn3chyxnnx937.jpeg?q=70', 'Clocks make a ticking noise as their mechanism counts out the seconds. The sound is feeble enough not to create a disturbance for the users.\r\n', '', '', 'Clocks make a ticking noise as their mechanism counts out the seconds. The sound is feeble enough not to create a disturbance for the users.\r\n', NULL, NULL),
(40, 38, 'https://rukminim1.flixcart.com/image/416/416/kigbjbk0/book/4/6/6/food-matters-original-imafy8eguwyz7bgj.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kpft18w0/book/p/a/1/food-matters-the-role-your-diet-plays-in-the-fight-against-original-imag3zgz8ktundzb.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kigbjbk0/book/4/6/6/food-matters-original-imafy8eguwyz7bgj.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kpft18w0/book/p/a/1/food-matters-the-role-your-diet-plays-in-the-fight-against-original-imag3zgz8ktundzb.jpeg?q=70', 'Cancer is now the fourth leading cause of death in India.', '', '', 'Cancer is now the fourth leading cause of death in India. So the most pressing question today is-what are you doing to lower your risk? In Food Matters: The Role Your Diet Plays in the Fight Against Cancer, Dr Shubham Pant asks you to \'focus on the mundane solutions\'. Oncologist at the MD Anderson Cancer Center, he recommends eating a good diet, staying a healthy weight and other lifestyle interventions to keep cancer at bay. Citing case studies, Dr Pant also suggests how patients diagnosed with and recovering from cancer can best manage their nutritional needs. Intensively researched and featuring simple and delicious recipes, Food Matters tells you everything that you need to know about cancer and diet.\r\n', NULL, NULL),
(41, 39, 'https://rukminim1.flixcart.com/image/416/416/l4ln8nk0/regionalbooks/s/9/4/health-and-nutrition-original-imagfgzp5rqhgu8f.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l4ln8nk0/regionalbooks/s/9/4/health-and-nutrition-original-imagfgzp5rqhgu8f.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l4ln8nk0/regionalbooks/s/9/4/health-and-nutrition-original-imagfgzp5rqhgu8f.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l4ln8nk0/regionalbooks/s/9/4/health-and-nutrition-original-imagfgzp5rqhgu8f.jpeg?q=70', 'Health And Nutrition  (Paperback, Sahil Sharma)', '', '', 'Health And Nutrition  (Paperback, Sahil Sharma)', NULL, NULL),
(42, 40, 'https://rukminim1.flixcart.com/image/416/416/kqe3low0/home-gym-combo/p/8/c/0-cross-cable-free-standing-heavy-duty-target2bfit-original-imag4ew5fghbczbh.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kqe3low0/home-gym-combo/c/w/i/0-cross-cable-free-standing-heavy-duty-target2bfit-original-imag4ew5whjp3egr.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kqe3low0/home-gym-combo/p/f/j/0-cross-cable-free-standing-heavy-duty-target2bfit-original-imag4ew5pgcpy6ff.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kqe3low0/home-gym-combo/f/y/a/0-cross-cable-free-standing-heavy-duty-target2bfit-original-imag4ew5rjfhhm5y.jpeg?q=70', 'Cross Cable Machine designed for home use.', '', '', 'Cross Cable Machine designed for home use. This machine is a free system that requires no bolting to the ground or wall. Two weight carriage systems that work in tandem or seperately as required. The height of the machine is 84 inches, width of base is 39 inches while the horizontal bar is 84 inches. The machine has heavy duty swivel pulleys to accomodate every possible workout position. Designed to carry upto 60 Kgs per stack. Accessories provided are Single arm grab Handle- metal, Single Arm Grab Handle - Wire Rope,, Triceps Pull Down Attachment, LAT Bar, Short Bar and extension chains. Comes with Lifetime Replacement Warranty on Frame. (Covers manufacturing defects and/or damage in transit) Assembly video available. Call on 9739979285 for queries if any. Weight plates are not part of the offer.\r\n', NULL, NULL),
(43, 41, 'https://rukminim1.flixcart.com/image/416/416/l2p23rk0/home-gym-combo/b/f/o/50-50kg-home-gym-combo-with-straight-curl-and-dumbbell-rods-original-imagdyzhdr4xuhqg.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kmp7ngw0/home-gym-combo/x/y/z/50kg-home-gym-combo-with-straight-curl-and-dumbbell-rods-adrenex-original-imagfjqjccz7fd5f.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/jyj0how0/kit/m/g/n/20kg-pvc-combo-with-one-5-ft-plain-rod-one-3-ft-curl-rod-and-one-original-imafgpxnjhjpuses.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/jyq5oy80/kit/m/g/n/20kg-pvc-combo-with-one-5-ft-plain-rod-one-3-ft-curl-rod-and-one-original-imafgw6fxsrexkbf.jpeg?q=70', 'Adrenex by Flipkart 50 kg 50Kg Home Gym Combo with Straight, Curl and Dumbbell Rods Home Gym Combo\r\n', '', '', 'Adrenex by Flipkart 50 kg 50Kg Home Gym Combo with Straight, Curl and Dumbbell Rods Home Gym Combo\r\n', NULL, NULL),
(44, 42, 'https://rukminim1.flixcart.com/image/416/416/kpbipow0/book/b/v/5/how-to-prepare-for-quantitative-aptitude-for-cat-original-imag3h52gkwgdsuu.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kpbipow0/book/r/p/j/how-to-prepare-for-quantitative-aptitude-for-cat-original-imag3h52nmgz7tkm.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kpbipow0/book/b/v/5/how-to-prepare-for-quantitative-aptitude-for-cat-original-imag3h52gkwgdsuu.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kpbipow0/book/r/p/j/how-to-prepare-for-quantitative-aptitude-for-cat-original-imag3h52nmgz7tkm.jpeg?q=70', 'Presenting the latest edition of Quantitative Aptitude for CAT Book by Arun Sharma, With CAT Practice tests on Pull Marks.', '', '', 'Presenting the latest edition of Quantitative Aptitude for CAT Book by Arun Sharma, With CAT Practice tests on Pull Marks. Now with these CAT Practice Tests, you can practice and track your proficiency level, and improvise to master the concepts. The 9th edition of Quantitative Aptitude has been developed as per the latest trend and pattern of the CAT examination. This book is a one-stop solution for CAT and MBA examinations aspirants to excel in the Quantitative Aptitude section of all key management entrance examinations. It also contains the best advisory for each and every type of questions asked in the competitive examinations. Salient Features: 1)Comprehensive solutions (wherever relevant) to questions in all levels of difficulties (LODs) of all chapters 2)Additional block-wise tests providing practice for all probable question types 3) New chapter-end questions segregated into LODs to cater increased difficulty level of the CAT 4)New additional exercises on relevant concepts for comprehensive practice 5)Rewritten and revised theory to strengthen concept understanding 6)Training ground to teach the readers real time higher-end problem solving and how to think during the examination 7)Taste of the Exams within each block covering previous years’ CAT questions from last two decades to 2019 8) CAT Scans cover 7 question tests to be solved in 12 minutes to simulate 1.7 minutes available per question 9)Questions without options in relevant chapters keeping with the latest trends in CAT examination 10) Additional online practice tests for CAT to be available on Pull Marks from July 1, 2021 onwards 11) 5 QA Sectional Tests available on our online testing platform Pull Marks through Access Codes available with the book\r\n', NULL, NULL),
(45, 43, 'https://rukminim1.flixcart.com/image/416/416/l13whow0/book/s/n/o/public-administration-english-2nd-edition-upsc-civil-services-original-imagcqrqfmmfnfac.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l13whow0/book/j/h/j/public-administration-english-2nd-edition-upsc-civil-services-original-imagcqrqvhpw78vg.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l13whow0/book/s/n/o/public-administration-english-2nd-edition-upsc-civil-services-original-imagcqrqfmmfnfac.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l13whow0/book/j/h/j/public-administration-english-2nd-edition-upsc-civil-services-original-imagcqrqvhpw78vg.jpeg?q=70', 'Public Administration, 2e by M Laxmikanth, thoroughly revised and updated after a decade.', '', '', 'Public Administration, 2e by M Laxmikanth, thoroughly revised and updated after a decade, brings to its readers a comprehensive volume which will enable them to acquire a complete and detailed understanding of the various aspects of the subject. The book is conceptualised as first part focused on Administrative Theory and second part on Indian Administration. With a total of 16 chapters having MCQs at the end of each chapter followed by relevant Appendices and Model Test Papers, all updated to make the content of the study material relevant, to the point, up-to-date and authentic. Apart from being one of the favourites’ among the UPSC and SPSC aspirants, the book will also be useful for academicians, researchers and general readers who wish to know more about this contemporary subject. Salient Features: 1. Added two new chapters on Divisional Administration and Law and Order Administration 2. Added 11 new topics such as e-Governance, Citizens’ Charter, Administrative System of Erstwhile USSR and NITI Aayog 3. Restructured and comprehensive content with tables and diagrams for easy retention 4. Chapter-wise question bank designed to help test understanding from the examination point of view 5. Questions drafted in accordance with the latest trends in various competitive and university examinations 6. Model Tests Papers provided to help aspirants manage their time judiciously and productively\r\n', NULL, NULL);
INSERT INTO `product_details` (`id`, `product_id`, `image_one`, `image_two`, `image_three`, `image_four`, `short_description`, `color`, `size`, `long_description`, `created_at`, `updated_at`) VALUES
(46, 44, 'https://rukminim1.flixcart.com/image/416/416/l3vxbbk0/cases-covers/back-cover/z/k/b/flip-cover-for-infinix-hot-12-play-blue-webkreature-original-imagevzqhq5qvgbg.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l3vxbbk0/cases-covers/back-cover/8/a/s/flip-cover-for-infinix-hot-12-play-blue-webkreature-original-imagevzqhnpakry6.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l3xcr680/cases-covers/back-cover/8/u/e/infx-hot-12-play-blue-vint-bozti-original-imagexkhdsqdghxa.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kq6yefk0/cases-covers/back-cover/f/h/s/vintage-flip-m3pro-blu-webkreature-original-imag49n5fkwckfwn.jpeg?q=70', 'Bozti Vntage Flip Cover Series Invest in your brand new device\'s protection today through this fit to use.', '', '', 'Bozti Vntage Flip Cover Series Invest in your brand new device\'s protection today through this fit to use executive leather stand wallet case flip cover and save yourself from the heartbreak and agony of watching the scratches and damages on your device multiply periodically. This sleek executive flip cover case is designed to a perfect fit on your mobile and glossy leather surface further adds to its polished looks. This pouch comes with inner TPU back cover that does not break easily and aids in shock absorption during impacts. This wallet case comes with card slots to store receipts, cards or emergency cash. You can now video chat or watch movies hands free in landscape mode with the wallet stand. Perfect and precise cutouts allow easy access to all ports\r\n', NULL, NULL),
(47, 45, 'https://rukminim1.flixcart.com/image/416/416/knw2v0w0/cases-covers/back-cover/7/0/1/aspcamerasmoke-realme-c25-blue-lilliput-original-imag2gavzvp32tfx.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/knw2v0w0/cases-covers/back-cover/l/p/l/aspcamerasmoke-realme-c25-blue-lilliput-original-imag2gavysepycdp.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/knw2v0w0/cases-covers/back-cover/7/0/1/aspcamerasmoke-realme-c25-blue-lilliput-original-imag2gavzvp32tfx.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/knw2v0w0/cases-covers/back-cover/l/p/l/aspcamerasmoke-realme-c25-blue-lilliput-original-imag2gavysepycdp.jpeg?q=70', 'Premium Look Matte Smoke Finish Design TPU Rubberized Back Case Cover .', '', '', 'Premium Look Matte Smoke Finish Design TPU Rubberized Back Case Cover .Strong, durable material - Protects your device from bumps, scratches & fingerprints. Complete Access To All Features Of The Device Including Microphone Speaker Camera And All Buttons. Full Corner Protection Super easy to put on and best of all, the case stays on! Simply snap on the case in one smooth step and enjoy super slim protection with a Perfect look Ultra-thin and lightweight. Protection against back scratches Simple Snap-On installation Case Thickness is 1.2 MM which is Perfect To protect your mobile with normal Wear and Tear Use , Gives Double Protection To Your Camera Lens From scratches\r\n', NULL, NULL),
(48, 46, 'https://rukminim1.flixcart.com/image/416/416/l0r1j0w0/headphone/c/t/u/tws-twins-wireless-bluetooth-earphone-with-mic-headphone-original-imagch3amg56htfh.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l0r1j0w0/headphone/q/q/d/tws-twins-wireless-bluetooth-earphone-with-mic-headphone-original-imagcgzgjwzjmbxe.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l0r1j0w0/headphone/l/s/4/tws-twins-wireless-bluetooth-earphone-with-mic-headphone-original-imagcgzgdgha8h2h.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l0r1j0w0/headphone/h/g/c/tws-twins-wireless-bluetooth-earphone-with-mic-headphone-original-imagcgzgpca9pzng.jpeg?q=70', 'The Earphones Offer You 360 Degree Surround Sound With Bass And Noise Correction. ', '', '', 'The Earphones Offer You 360 Degree Surround Sound With Bass And Noise Correction. Unique Ring-Necked Design, Opening Up a New Area of Bluetooth Earphones. Compatible with Mobile Phone And Bluetooth Devices. Sound And Stable Connection: With Bluetooth 4.0 Technology, The Wireless Transmission Range Is Up To 10 Meters.The Bluetooth Headset Supporting A2Dp, It Provides You Crystal Clear Speeches And Hd Stereo Music.\r\n', NULL, NULL),
(49, 47, 'https://rukminim1.flixcart.com/image/416/416/l4n2oi80/headphone/f/7/5/-original-imagfhvrmhgy8gt8.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l4n2oi80/headphone/o/q/k/-original-imagfhvrnvdnyz28.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l4n2oi80/headphone/5/n/v/-original-imagfhvrnygdhurf.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/l4n2oi80/headphone/n/s/o/-original-imagfhvrdzye8sjd.jpeg?q=70', 'It\'s time to Do Your Groove, with Airdopes 161 TWS earbuds. ', '', '', 'It\'s time to Do Your Groove, with Airdopes 161 TWS earbuds. The 10mm drivers in the earbuds are there to deliver an immersive listening time. It comes equipped with Bluetooth v5.1 wireless technology so that you can enjoy all of your sessions lag-free. The IWP tech enabled TWS earbuds power on as soon as the case lid gets opened. Moreover, the ASAP Charge tech helps the earbuds to gather up to 180Min of playtime in only 10 minutes of charging. Airdopes 161 provides a total playback time of up to 17HRS including up to 5.5HRS of playtime per earbud. With an IPX5 marked water resistant build, the earbuds offer flexibility whether you are at the gym or traversing those far terrains. You can command playback, hands-free and activate voice assistant with ease via the instant response touch controls. Now, stay indulged in your playlists and enjoy a truly immersive auditory experience on Airdopes 161.\r\n', NULL, NULL),
(50, 48, 'https://rukminim1.flixcart.com/image/800/960/kph8h3k0/sunglass/t/h/u/l-chiwm00115-c5-royal-son-original-imag3ph3f6hkrhzc.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kph8h3k0/sunglass/o/m/c/l-chiwm00115-c5-royal-son-original-imag3ph3ebpkhzps.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/kph8h3k0/sunglass/y/y/j/l-chiwm00115-c5-royal-son-original-imag3ph3nrfjgvzh.jpeg?q=50', 'https://rukminim1.flixcart.com/image/800/960/k612pow0/sunglass/g/h/j/large-chiv0023-royal-son-original-imafhwyf2qnfj9rz.jpeg?q=50', 'UV Protection, Gradient Butterfly, Over-sized Sunglasses (61)  (For Women, Pink)\r\n', '', '', 'UV Protection, Gradient Butterfly, Over-sized Sunglasses (61)  (For Women, Pink)\r\n', NULL, NULL),
(51, 49, 'https://rukminim1.flixcart.com/image/416/416/kr58yvk0/acoustic-guitar/q/x/i/med-blk-c-medellin-original-imag4ztz8gfgjpbf.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kr58yvk0/acoustic-guitar/j/6/g/med-blk-c-medellin-original-imag4ztzckhsvrbu.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kfh5ifk0/acoustic-guitar/f/w/n/jrz38c-bk-juarez-original-imafvxahgbg9zxxv.jpeg?q=70', 'https://rukminim1.flixcart.com/image/416/416/kr58yvk0/acoustic-guitar/b/c/3/med-blk-c-medellin-original-imag4ztzhpy7cfzv.jpeg?q=70', 'Medellin MED-BLK-C Acoustic Guitar Linden Wood Rosewood Right Hand Orientation  (Black)\r\n', '', '', 'Medellin MED-BLK-C Acoustic Guitar Linden Wood Rosewood Right Hand Orientation  (Black)\r\n', NULL, NULL);

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
  `star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_lists`
--

INSERT INTO `product_lists` (`id`, `title`, `price`, `special_price`, `image`, `category`, `subcategory`, `remark`, `brand`, `star`, `product_code`, `created_at`, `updated_at`) VALUES
(1, 'OPPO K10 (Black Carbon, 128 GB)  (6 GB RAM)\r\n', '5000', '4800', 'https://rukminim1.flixcart.com/image/416/416/l2jcccw0/mobile/h/x/3/-original-imagduwqakhhkrse.jpeg?q=70', 'Mobiles', 'Oppo', 'FEATURED', 'Oppo', '4', '315', NULL, NULL),
(2, 'OPPO F19 (Midnight Blue, 128 GB)  (6 GB RAM)\r\n', '7000', '6400', 'https://rukminim1.flixcart.com/image/416/416/kn4xhu80/mobile/r/5/5/f19-cph2219-oppo-original-imagfvj5usebqhh4.jpeg?q=70', 'Mobiles', 'Oppo', 'NEW', '', '', '31212', NULL, NULL),
(3, 'OPPO K10 5G (Midnight Black, 128 GB)  (8 GB RAM)\r\n', '4500', '4250', 'https://rukminim1.flixcart.com/image/416/416/kyg5zm80/mobile/p/q/u/-original-imagazh6zxhyadaf.jpeg?q=70', 'Mobiles', 'Oppo', 'COLLECTION', '', '', '154356', NULL, NULL),
(4, 'SAMSUNG Galaxy F23 5G (Aqua Blue, 128 GB)  (6 GB RAM)#JustHere\n', '7200', '7000', 'https://rukminim1.flixcart.com/image/416/416/l0sgyvk0/mobile/k/x/c/-original-imagcg22czc3ggvw.jpeg?q=70', 'Mobiles', 'Samsung', 'COLLECTION', 'Samsung', '4', '445415', NULL, NULL),
(5, 'SAMSUNG Galaxy F22 (Denim Blue, 128 GB)  (6 GB RAM)\n', '6000', '5900', 'https://rukminim1.flixcart.com/image/416/416/kqqykcw0/mobile/j/5/7/galaxy-f22-sm-e225flbdins-samsung-original-imag4z99fp4qdfby.jpeg?q=70', 'Mobiles', 'Samsung', 'NEW', '', '', '535545', NULL, NULL),
(6, 'APPLE iPhone 12 (White, 128 GB)\r\n', '12000', '11900', 'https://rukminim1.flixcart.com/image/416/416/kg8avm80/mobile/j/f/9/apple-iphone-12-dummyapplefsn-original-imafwg8dhe5aeyhk.jpeg?q=70', 'Mobiles', 'Apple', 'NEW', '', '', '325165', NULL, NULL),
(7, 'APPLE iPhone 11 (Black, 64 GB)\r\n', '10000', '9900', 'https://rukminim1.flixcart.com/image/416/416/kgiaykw0/mobile/y/n/y/apple-iphone-11-mhda3hn-a-original-imafwqepdb3fxtug.jpeg?q=70', 'Mobiles', 'Apple', 'COLLECTION', '', '', '11544', NULL, NULL),
(8, 'HP Pavilion Ryzen 5 Hexa Core 5500U - (8 GB/512 GB SSD/Windows 10 Home) 14-ec0035AU Thin and Light Laptop  (14 inch, Natural Silver, 1.41 Kg, With MS Office)\n', '14000', '12500', 'https://rukminim1.flixcart.com/image/416/416/ksru0sw0/computer/m/4/g/na-thin-and-light-laptop-hp-original-imag69rnjkctnzhy.jpeg?q=70', 'Computers', 'Laptops', 'NEW', '', '', '43545', NULL, NULL),
(9, 'HP Ryzen 3 Quad Core 5300U - (8 GB/512 GB SSD/Windows 11 Home) 15s-eq2143au Thin and Light Laptop  (15.6 inch, Natural Silver, 1.69 Kg, With MS Office)\n', '13000', '12900', 'https://rukminim1.flixcart.com/image/416/416/kyrlifk0/computer/a/q/f/15s-eq2143au-thin-and-light-laptop-hp-original-imagaxg6jbj5zhhy.jpeg?q=70', 'Computers', 'Laptops', 'FEATURED', '', '', '2212', NULL, NULL),
(10, 'ZOONIS Gaming Core i5 (8 GB DDR3/500 GB/240 GB SSD/Windows 10 Pro/4 GB/18.5 Inch Screen/Alien Gaming Core i5 3rd Generation) with MS Office  (Black)', '11000', '10000', 'https://rukminim1.flixcart.com/image/416/416/l1mh7rk0/allinone-desktop/d/g/2/gt-gamer-desktop-2gb-nv-gtx-750-ti-graphics-card-zoonis-original-imagd539rfzzzbsg.jpeg?q=70', 'Computers', 'Desktop', 'NEW', '', '', '44534', NULL, NULL),
(11, 'DZAB Assembled Core i3 (4 GB DDR3/500 GB/Windows 7 Home Basic/15.1 Inch Screen/dI3/4GB/500/15.1)  (Black)\n', '10000', '9200', 'https://rukminim1.flixcart.com/image/416/416/l071d3k0/allinone-desktop/m/3/5/di3-4gb-500-15-4-dzab-original-imagcf9hgvgz3uzd.jpeg?q=70', 'Computers', 'Desktop', 'COLLECTION', '', '', '242', NULL, NULL),
(12, 'Thomson 9A Series 106 cm (42 inch) Full HD LED Smart Android TV  (42PATH2121)\n', '4500', '4450', 'https://rukminim1.flixcart.com/image/416/416/kiyw9e80-0/television/p/0/w/32path0011-thomson-original-imafynyvsmeuwtzr.jpeg?q=70', 'Electronics', 'Smart TV', 'FEATURED', '', '', '5435545', NULL, NULL),
(13, 'OnePlus Y1S 108 cm (43 inch) Full HD LED Smart Android TV  (43FD2A00)\n', '6500', '6000', 'https://rukminim1.flixcart.com/image/416/416/kzfvzww0/television/g/4/k/43fd2a00-43-y1s-oneplus-original-imagbgc44gerfphz.jpeg?q=70', 'Electronics', 'Smart TV', 'COLLECTION', '', '', '555163', NULL, NULL),
(14, 'SONY ILCE-7CL/SQ IN5 Mirrorless Camera Mirrorless  (Silver)\n', '9000', '8800', 'https://rukminim1.flixcart.com/image/416/416/kw9krrk0/dslr-camera/s/k/y/-original-imag8z5wgnmpqfvy.jpeg?q=70', 'Electronics', 'Camera', 'NEW', '', '', '2123', NULL, NULL),
(15, 'SONY Alpha ILCE-6400M Mirrorless Camera with 18-135mm Zoom Lens  (Black)\n', '8300', '8000', 'https://rukminim1.flixcart.com/image/416/416/kw9krrk0/dslr-camera/u/0/f/-original-imag8z5wh87ggcgy.jpeg?q=70', 'Electronics', 'Camera', 'FEATURED', '', '', '1213', NULL, NULL),
(16, 'SAMSUNG 6 kg 5 Star With Hygiene Steam and Ceramic Heater Fully Automatic Front Load with In-built Heater White  (WW60R20GLMA/TL)\n', '8000', '7900', 'https://rukminim1.flixcart.com/image/416/416/k7f34i80/washing-machine-new/h/y/j/ww60r20glma-tl-samsung-original-imafpns894qh5zta.jpeg?q=70', 'TVs & Appliances', 'Washing Machine', 'FEATURED', '', '', '1355', NULL, NULL),
(17, 'SAMSUNG 6.5 kg Diamond Drum feature Fully Automatic Top Load Silver  (WA65A4002VS/TL)\n', '11500', '11000', 'https://rukminim1.flixcart.com/image/416/416/kevpwnk0/washing-machine-new/g/t/5/wa65a4002vs-tl-samsung-original-imafvgz4qzfazbsh.jpeg?q=70', 'TVs & Appliances', 'Washing Machine', 'COLLECTION', '', '', '55435', NULL, NULL),
(18, 'Whirlpool 4 in 1 Convertible Cooling 1.5 Ton 5 Star Split Inverter AC - White  (1.5T MAGICOOL CONVERT PRO 5S INV (N)-O/I, Copper Condenser)\n', '7500', '7350', 'https://rukminim1.flixcart.com/image/416/416/l0pm3680/air-conditioner-new/1/s/x/-original-imagcfvuqf8tezzr.jpeg?q=70', 'TVs & Appliances', 'Air Conditioners', 'NEW', '', '', '3121', NULL, NULL),
(19, 'Hitachi 1 Ton 3 Star Split Inverter AC - White, Gold  (RAFG312HFEOZ1/EAFG312HFEOZ1/CAFG312HFEOZ1, Copper Condenser)\n', '8000', '7900', 'https://rukminim1.flixcart.com/image/416/416/l15bxjk0/air-conditioner-new/x/1/7/-original-imagcrtgn7ufgxrg.jpeg?q=70', 'TVs & Appliances', 'Air Conditioners', 'FEATURED', '', '', '3211', NULL, NULL),
(20, 'Solid Men Round Neck White, Black T-Shirt\r\n', '500', '480', 'https://rukminim1.flixcart.com/image/800/960/kjuby4w0/t-shirt/s/x/z/m-fc4058-fastcolors-original-imafzbj546kdvbh8.jpeg?q=50', 'Fashion', 'Mens Top Were', 'FEATURED', '', '', '21454', NULL, NULL),
(21, 'Striped Men Round Neck Blue T-Shirt\r\n', '750', '700', 'https://rukminim1.flixcart.com/image/800/960/kzd147k0/t-shirt/y/4/g/m-tsrt-303-reya-original-imagbefyrzgqffze.jpeg?q=50', 'Fashion', 'Mens Top Were', 'NEW', '', '', '155', NULL, NULL),
(22, 'Women Pink Heels Sandal\r\n', '700', '600', 'https://rukminim1.flixcart.com/image/800/960/kyuge4w0/sandal/e/t/s/4-hd-toshina-shoes-king-pink-original-imagazg5gwebhqyz.jpeg?q=50', 'Fashion', 'Women Footware', 'NEW', '', '', '155645', NULL, NULL),
(23, 'Women Black Heels Sandal\r\n', '450', '430', 'https://rukminim1.flixcart.com/image/800/960/kflftzk0-0/sandal/t/c/t/ft-501-fashion-tails-black-original-imafwyfy9sznkdxq.jpeg?q=50', 'Fashion', 'Women Footware', 'COLLECTION', '', '', '21213', NULL, NULL),
(24, 'Sneakers For Men  (White)\r\n', '550', '500', 'https://rukminim1.flixcart.com/image/800/960/kyxb9u80/shoe/p/a/q/6-3399-whitehub-white-original-imagbfzygjff8ngp.jpeg?q=50', 'Fashion', 'Mens Footware', 'COLLECTION', '', '', '2112', NULL, NULL),
(25, 'Canvas Shoes For Men  (White)\r\n', '420', '400', 'https://rukminim1.flixcart.com/image/800/960/kpmy8i80/shoe/q/w/p/9-ajwings-magnolia-white-original-imag3thhuz3edrjg.jpeg?q=50', 'Fashion', 'Mens Footware', 'NEW', '', '', '55', NULL, NULL),
(26, 'Lace Sneakers For Boys & Girls  (White)\r\n', '250', '200', 'https://rukminim1.flixcart.com/image/800/960/l3j2cnk0/kids-shoe/q/l/p/7c-kartoos-white-pucandy-original-imagemqrd7g7zdk4.jpeg?q=50', 'Baby & Kids', 'kids Footware', 'COLLECTION', '', '', '12321', NULL, NULL),
(27, 'Velcro Sneakers For Boys & Girls  (Purple)\r\n', '320', '300', 'https://rukminim1.flixcart.com/image/800/960/kobspe80/kids-shoe/n/b/s/5c-lbw-miss-chief-original-imag2t9pwvdgwxpc.jpeg?q=50', 'Baby & Kids', 'kids Footware', 'FEATURED', '', '', '1544', NULL, NULL),
(28, 'Baby Boys & Baby Girls Printed Pure Cotton T Shirt  (Multicolor, Pack of 3)\n', '540', '520', 'https://rukminim1.flixcart.com/image/800/960/kkfrjww0/kids-t-shirt/n/i/t/3-6-months-gobs20-2514-fushia-babygo-original-imafzshbzfngjfbb.jpeg?q=50', 'Baby & Kids', 'kids clothing', 'FEATURED', '', '', '1545356', NULL, NULL),
(29, 'MY BABY TOWN Baby Boys & Baby Girls Pink Sleepsuit\n', '320', '310', 'https://rukminim1.flixcart.com/image/416/416/kkfrjww0/bodysuit-sleepsuit/l/w/e/0-0-3-months-baby-romper-my-baby-town-3-original-imafzrhywc44bg9e.jpeg?q=70', 'Baby & Kids', 'kids clothing', 'NEW', '', '', '1115', NULL, NULL),
(30, 'The Moms Co. Natural Baby Lotion with Shea, Cocoa Butter & Jojoba Oil | Deep Moisturization  (200 ml)\n', '220', '200', 'https://rukminim1.flixcart.com/image/416/416/kkoc70w0/moisturizer-cream/v/g/f/natural-baby-lotion-the-moms-co-lotion-original-imafzyzdp5v4qzcj.jpeg?q=70', 'Baby & Kids', 'Baby Care', 'COLLECTION', '', '', '1136515', NULL, NULL),
(31, 'JOHNSON\'S All Day Long Baby Lotion  (500 ml)\r\n', '195', '185', 'https://rukminim1.flixcart.com/image/416/416/jve4pe80/moisturizer-cream/3/a/h/500-all-day-long-baby-lotion-lotion-johnson-s-original-imaf7x8wzzcgmarj.jpeg?q=70', 'Baby & Kids', 'Baby Care', 'NEW', '', '', '2325', NULL, NULL),
(32, 'House of Pataudi Rosewood (Sheehsam) Rocking Chair with Footrest and Cushion || Wood Rocking Chair for Living Room || Home Decor || Easy Chair || Modern Style Chair Solid Wood 1 Seater Rocking Chairs  (Finish Color - Brown, Pre-assembled)\n', '5000', '4800', 'https://rukminim1.flixcart.com/image/416/416/kkr72q80/rocking-chair/m/9/g/1-seater-rosewood-sheesham-hop-305-brown-house-of-pataudi-brown-original-imagyf9ymjg2cayr.jpeg?q=70', 'Home & Furniture', 'Living Room Furniture', 'COLLECTION', '', '', '515345', NULL, NULL),
(33, 'Flipkart Perfect Homes Sirena Engineered Wood TV Entertainment Unit  (Finish Color - Latin Walnut, Knock Down)#JustHere\n', '6500', '6000', 'https://rukminim1.flixcart.com/image/416/416/krkyt8w0/tv-entertainment-unit/f/f/l/particle-board-fk7006-flipkart-perfect-homes-latin-walnut-original-imag5ceny5s9thnj.jpeg?q=70', 'Home & Furniture', 'Living Room Furniture', 'NEW', '', '', '51515', NULL, NULL),
(34, 'FurnitureKraft Nancy Metal King Bed  (Finish Color - Dark Black, Delivery Condition - Knock Down)\n', '10000', '9800', 'https://rukminim1.flixcart.com/image/416/416/kr6oeq80/bed/a/p/u/king-na-wrought-iron-no-fk-db-4015-king-r-furniturekraft-dark-original-imag5ffjfg279mqv.jpeg?q=70', 'Home & Furniture', 'Bed Room Furniture', 'FEATURED', '', '', '21123132', NULL, NULL),
(35, '@Home by nilkamal Marbito Engineered Wood Queen Box Bed  (Finish Color - White, Delivery Condition - Knock Down)\n', '12000', '10500', 'https://rukminim1.flixcart.com/image/416/416/l0igvww0/bed/g/t/2/queen-224-8-na-no-particle-board-160-4-yes-114-original-imagca48pyc3ubxr.jpeg?q=70', 'Home & Furniture', 'Bed Room Furniture', 'NEW', '', '', '4544', NULL, NULL),
(36, 'Fashion Bizz Antique Handmade Vintage Dummy Gramophone Decorative Showpiece - 23 cm  (Brass, Gold)\n', '1200', '1150', 'https://rukminim1.flixcart.com/image/416/416/j84so7k0/showpiece-figurine/f/f/j/grama01-jk-handicrafts-original-imaephznypavdbne.jpeg?q=70', 'Home & Furniture', 'Home Decor', 'FEATURED', '', '', '2221', NULL, NULL),
(37, 'Kadio Analog 20 cm X 20 cm Wall Clock  (White, With Glass, Standard)\n', '500', '350', 'https://rukminim1.flixcart.com/image/416/416/k44hksw0/wall-clock/3/z/n/403-403white-analog-kadio-original-imafn3chkfwasuqe.jpeg?q=70', 'Home & Furniture', 'Home Decor', 'NEW', '', '', '22123', NULL, NULL),
(38, 'FOOD MATTERS  (English, Paperback, Pant Dr Shubham)\n', '500', '400', 'https://rukminim1.flixcart.com/image/416/416/kigbjbk0/book/4/6/6/food-matters-original-imafy8eguwyz7bgj.jpeg?q=70', 'Sports,Books', 'Health and Nutrition', 'FEATURED', '', '', '554', NULL, NULL),
(39, 'Health And Nutrition  (Paperback, Sahil Sharma)', '300', '200', 'https://rukminim1.flixcart.com/image/416/416/l4ln8nk0/regionalbooks/s/9/4/health-and-nutrition-original-imagfgzp5rqhgu8f.jpeg?q=70', 'Sports,Books', 'Health and Nutrition', 'COLLECTION', '', '', '2111', NULL, NULL),
(40, 'Target2BFit Cross Cable Free Standing Heavy Duty Home Gym Combo\n', '5000', '4500', 'https://rukminim1.flixcart.com/image/416/416/kqe3low0/home-gym-combo/p/8/c/0-cross-cable-free-standing-heavy-duty-target2bfit-original-imag4ew5fghbczbh.jpeg?q=70', 'Sports,Books', 'Home Gyms', 'COLLECTION', '', '', '242454\r\n', NULL, NULL),
(41, 'Adrenex by Flipkart 50 kg 50Kg Home Gym Combo with Straight, Curl and Dumbbell Rods Home Gym Combo\n', '6200', '6000', 'https://rukminim1.flixcart.com/image/416/416/l2p23rk0/home-gym-combo/b/f/o/50-50kg-home-gym-combo-with-straight-curl-and-dumbbell-rods-original-imagdyzhdr4xuhqg.jpeg?q=70', 'Sports,Books', 'Home Gyms', 'NEW', '', '', '34553445154', NULL, NULL),
(42, 'How to Prepare for Quantitative Aptitude for Cat 9 Edition  (English, Paperback, Sharma Arun)\n', '750', '700', 'https://rukminim1.flixcart.com/image/416/416/kpbipow0/book/b/v/5/how-to-prepare-for-quantitative-aptitude-for-cat-original-imag3h52gkwgdsuu.jpeg?q=70', 'Sports,Books', 'Books', 'NEW', '', '', '4544', NULL, NULL),
(43, 'Public Administration ( English| 2nd Edition) | UPSC | Civil Services Exam | UCG Net | State Administrative Exams  (Paperback, Laxmikanth M)\n', '1050', '1000', 'https://rukminim1.flixcart.com/image/416/416/l13whow0/book/s/n/o/public-administration-english-2nd-edition-upsc-civil-services-original-imagcqrqfmmfnfac.jpeg?q=70', 'Sports,Books', 'Books', 'NEW', '', '', '1135135', NULL, NULL),
(44, 'BOZTI Back Cover for Infinix Hot 12 Play  (Blue, Grip Case)\n', '230', '215', 'https://rukminim1.flixcart.com/image/416/416/l3vxbbk0/cases-covers/back-cover/f/a/k/flip-cover-for-infinix-hot-12-play-blue-webkreature-original-imagevzq2nry96nw.jpeg?q=70', 'Mobile Accessories', 'Mobile Cases', 'FEATURED', '', '', '51442', NULL, NULL),
(45, 'Lilliput Back Cover for POCO F1  (Blue, Grip Case)\n', '300', '250', 'https://rukminim1.flixcart.com/image/416/416/ktn9pjk0/cases-covers/back-cover/y/n/p/aspcamerasmoke-p0c0-f1-blue-lilliput-original-imag6xfkxzq2fawy.jpeg?q=70', 'Mobile Accessories', 'Mobile Cases', 'FEATURED', '', '', '54563', NULL, NULL),
(46, 'Grostar TWS Twins Wireless Bluetooth Earphone with Mic HEADPHONE Bluetooth Headset Bluetooth Headset  (White, In the Ear)\n', '300', '290', 'https://rukminim1.flixcart.com/image/416/416/l0r1j0w0/headphone/c/t/u/tws-twins-wireless-bluetooth-earphone-with-mic-headphone-original-imagch3amg56htfh.jpeg?q=70', 'Mobile Accessories', 'HeadPhone', 'COLLECTION', '', '', '5532', NULL, NULL),
(47, 'boAt Airdopes 161 with 17 Hours Battery and Fast Charge Bluetooth Headset  (Pebble Black, True Wireless)\n', '500', '320', 'https://rukminim1.flixcart.com/image/416/416/l4n2oi80/headphone/d/y/c/-original-imagfhvrmmde882k.jpeg?q=70', 'Mobile Accessories', 'HeadPhone', 'NEW', '', '', '4545434', NULL, NULL),
(48, 'UV Protection, Gradient Butterfly, Over-sized Sunglasses (61)  (For Women, Pink)\n', '600', '550', 'https://rukminim1.flixcart.com/image/800/960/kph8h3k0/sunglass/h/p/t/l-chiwm00115-c5-royal-son-original-imag3ph36ffhak8c.jpeg?q=50', 'Others', '', 'NEW', '', '', '212', NULL, NULL),
(49, 'Medellin MED-BLK-C Acoustic Guitar Linden Wood Rosewood Right Hand Orientation  (Black)\n', '2600', '2550', 'https://rukminim1.flixcart.com/image/416/416/kr58yvk0/acoustic-guitar/q/x/i/med-blk-c-medellin-original-imag4ztz8gfgjpbf.jpeg?q=70', 'Others', '', 'FEATURED', '', '', '32456', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `product_name`, `reviewer_name`, `reviewer_photo`, `reviewer_rating`, `reviewer_comments`, `created_at`, `updated_at`) VALUES
(1, 0, 'APPLE iPhone 12 (White, 128 GB)', 'ahmed Mohamed', '', '3', 'goood', NULL, NULL),
(2, 1, 'SAMSUNG Galaxy F23 5G (Aqua Blue, 128 GB) (6 GB RAM)', 'Mohamed ahmed', '', '4', 'very good', NULL, NULL);

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
('0axIqhatEFrNJuX51KukqLALrDTVXYd5YpioqCge', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiZ1ZnR0s5RENSaEQyd09Hc2V2QnhzS0lPZ2RveDBTMlJkMkxqTVFlVSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkR3Z4Qk5kM2pQc3NsaFN5bExJRURZdXFjdFovVUJPMkRZai94TmRkdmc2cWY3Z2EwS1NvRy4iO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEd2eEJOZDNqUHNzbGhTeWxMSUVEWXVxY3RaL1VCTzJEWWoveE5kZHZnNnFmN2dhMEtTb0cuIjt9', 1656273847);

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
(3, 'Mobiles', 'Oppo', NULL, NULL),
(4, 'Mobiles', 'Samsung', NULL, NULL),
(5, 'Computers', 'Laptops', NULL, NULL),
(6, 'Computers', 'Desktop', NULL, NULL),
(7, 'Electronics', 'Smart TV', NULL, NULL),
(8, 'Electronics', 'Camera', NULL, NULL),
(9, 'TVs & Appliances', 'Washing Machine', NULL, NULL),
(10, 'TVs & Appliances', 'Air Conditioners', NULL, NULL),
(11, 'Fashion', 'Mens Top Were', NULL, NULL),
(12, 'Fashion', 'Mens Footware', NULL, NULL),
(13, 'Fashion', 'Women Footware', NULL, NULL),
(14, 'Baby & Kids', 'kids Footware', NULL, NULL),
(15, 'Baby & Kids', 'kids clothing', NULL, NULL),
(16, 'Baby & Kids', 'Baby Care', NULL, NULL),
(17, 'Home & Furniture', 'Home Decor ', NULL, NULL),
(18, 'Home & Furniture', 'Bed Room Furniture', NULL, NULL),
(19, 'Home & Furniture', 'Living Room Furniture', NULL, NULL),
(20, 'Sports,Books', 'Health and Nutrition', NULL, NULL),
(21, 'Sports,Books', 'Home Gyms', NULL, NULL),
(22, 'Sports,Books', 'Books', NULL, NULL),
(23, 'Mobile Accessories', 'Mobile Cases', NULL, NULL),
(24, 'Mobile Accessories', 'HeadPhone', NULL, NULL);

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
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$GvxBNd3jPsslhSylLIEDYuqctZ/UBO2DYj/xNddvg6qf7ga0KSoG.', NULL, NULL, NULL, NULL, NULL, '2022-06-25 11:43:49', '2022-06-25 11:43:49'),
(2, 'mayar', 'mayar.atef.5100@gmail.com', NULL, '$2y$10$iE9avFwvYBfJKpgkEbBN.e89caU/ZS5CgSPB4vLd/4UV5S3xsVape', NULL, NULL, NULL, NULL, NULL, '2022-06-26 17:34:01', '2022-06-26 17:34:01'),
(3, 'mayar atef', 'mayar@gmail.com', NULL, '$2y$10$c1/kzQ0D2ElT/va1R/ltyuqLzEiSvX7JwyzzWY7ViH/P0PL6/iXfm', NULL, NULL, NULL, NULL, NULL, '2022-06-26 17:45:08', '2022-06-26 17:45:08');

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
(47, '127.0.0.1', '01:09:47am', '27-06-2022', NULL, NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `product_lists`
--
ALTER TABLE `product_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
