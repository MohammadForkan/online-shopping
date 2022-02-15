-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2020 at 05:57 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laravel41`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryDescription`, `publicationStatus`, `created_at`, `updated_at`) VALUES
(10, 'Male Fashion', 'Keep It Conversational. The goal of category pages is to establish an emotional connection', 1, NULL, '2020-08-07 02:20:42'),
(11, 'Women fashion', 'Keep It Conversational. The goal of category pages is to establish', 1, NULL, NULL),
(12, 'Computers', 'Keep It Conversational. The goal of category pages is to establish', 1, NULL, NULL),
(13, 'Eloctronics', 'Keep It Conversational. The goal of category pages is to establish an emotional', 1, NULL, NULL),
(14, 'Movies & TV', 'Keep It Conversational. The goal of category pages is to establish an emotional', 1, NULL, NULL),
(15, 'Software', 'Keep It Conversational. The goal of category pages is to establish', 0, NULL, '2020-08-07 02:27:27'),
(16, 'Digital Music', 'Keep It Conversational. The goal of category pages is to establish', 0, NULL, '2020-08-07 02:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districtName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstName`, `lastName`, `emailAddress`, `password`, `address`, `phoneNumber`, `districtName`, `created_at`, `updated_at`) VALUES
(3, 'Ariful', 'Islam', 'arif@gmail.com', '$2y$10$5/fBrSwFVjHi1zxSXtedMuNEtJDpyCTaIlmflnF8RlDAZwrqqWEbK', 'Banskhali Shekarkil', '01832655192', 'Barisal', '2020-08-04 16:44:54', '2020-08-04 16:44:54'),
(4, 'Tina', 'islam', 'tina@gmail.com', '$2y$10$Sd6H3Re2rOZOL0FPDXyFheEyPEkcuxZXpHMZkWXe/bddP4gRhAIYy', 'Anuwara Chittagong', '01741049878', 'Comilla', '2020-08-04 16:51:42', '2020-08-04 16:51:42'),
(5, 'Mohammad', 'Forkan', 'forkanmohammad206@gmail.com', '$2y$10$NMZv1PlrqWMnLCZrGVBfteJyTBrSihsRoVU6RKe/32VAFoxb/CstO', 'Banskhali,chambol', '01866581426', 'nar', '2020-08-05 01:38:01', '2020-08-05 01:38:01'),
(6, 'Atiye', 'Aysha', 'atiya@gmail.com', '$2y$10$wC.PU7Koc6AkfKNMArGKeeGTBqaOY27Bc3DtLyYHo5H.aU/LJbQRC', 'Patiye', '01866581426', 'Barisal', '2020-08-05 19:41:48', '2020-08-05 19:41:48'),
(9, 'Sahida', 'Yeasmin', 'sahida@gmail.com', '$2y$10$jTKgjIBE6QOJ.ToFaAymCu2MhPSC3cIXx10pAA1bLYx4mOoQJ28py', 'Banskhali Chambol Chattagram', '01866581426', 'Comilla', '2020-08-08 17:04:26', '2020-08-08 17:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturerDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `manufacturerName`, `manufacturerDescription`, `publicationStatus`, `created_at`, `updated_at`) VALUES
(8, 'Volkswagen Group', 'A Manufacturer\'s Designation is the manufacturer\'s', 1, NULL, NULL),
(9, 'Toyota Group', 'A Manufacturer\'s Designation is the manufacturer\'s', 1, NULL, NULL),
(10, 'Apple', 'A Manufacturer\'s Designation is the manufacturer\'s', 1, NULL, NULL),
(11, 'Samsung Electronics', 'A Manufacturer\'s Designation is the manufacturer\'s', 1, NULL, NULL),
(12, 'Volkswagen Group', 'A Manufacturer\'s Designation is the manufacturer\'s', 1, NULL, NULL),
(13, 'Toyota Group', 'A Manufacturer\'s Designation is the manufacturer\'s', 1, NULL, NULL),
(14, 'Apple', 'A Manufacturer\'s Designation is the manufacturer\'s', 1, NULL, NULL);

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
(3, '2020_06_10_000723_create_categories_table', 2),
(4, '2017_02_07_050406_create_categories_table', 3),
(5, '2017_02_10_090127_create_manufacturers_table', 4),
(6, '2020_07_30_134130_create_products_table', 5),
(7, '2017_02_12_034619_create_products_table', 6),
(8, '2017_02_23_071445_create_customers_table', 7),
(9, '2017_02_26_055842_create_shippings_table', 8),
(10, '2017_02_26_063811_create_orders_table', 9),
(11, '2017_02_26_063822_create_payments_table', 9),
(12, '2017_02_26_063844_create_order_details_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customerId` int(11) NOT NULL,
  `shippingId` int(11) NOT NULL,
  `orderTotal` double(10,2) NOT NULL,
  `orderStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customerId`, `shippingId`, `orderTotal`, `orderStatus`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 3456.00, 'pending', '2020-08-05 01:38:17', '2020-08-05 01:38:17'),
(2, 5, 1, 12590.00, 'pending', '2020-08-05 01:42:52', '2020-08-05 01:42:52'),
(3, 5, 1, 17280.00, 'pending', '2020-08-05 02:00:11', '2020-08-05 02:00:11'),
(4, 6, 2, 11725.00, 'pending', '2020-08-05 19:46:52', '2020-08-05 19:46:52'),
(5, 7, 3, 3454.00, 'pending', '2020-08-07 05:47:24', '2020-08-07 05:47:24'),
(6, 5, 5, 5799.00, 'pending', '2020-08-08 05:38:49', '2020-08-08 05:38:49'),
(7, 5, 5, 5799.00, 'pending', '2020-08-08 05:39:31', '2020-08-08 05:39:31'),
(8, 9, 7, 24192.00, 'pending', '2020-08-08 17:04:43', '2020-08-08 17:04:43'),
(9, 4, 8, 5801.00, 'pending', '2020-08-09 14:12:23', '2020-08-09 14:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productPrice` double(10,2) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `orderId`, `productId`, `productName`, `productPrice`, `productQuantity`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Walton', 3456.00, 1, '2020-08-05 01:38:17', '2020-08-05 01:38:17'),
(2, 2, 2, 'Samsung', 5678.00, 1, '2020-08-05 01:42:52', '2020-08-05 01:42:52'),
(3, 3, 1, 'Walton', 2345.00, 2, '2020-08-05 02:00:11', '2020-08-05 02:00:11'),
(4, 4, 1, 'Walton', 2345.00, 5, '2020-08-05 19:46:52', '2020-08-05 19:46:52'),
(5, 5, 14, 'T-shirt', 3454.00, 1, '2020-08-07 05:47:24', '2020-08-07 05:47:24'),
(6, 6, 15, 'Show', 2345.00, 1, '2020-08-08 05:38:49', '2020-08-08 05:38:49'),
(7, 7, 15, 'Show', 2345.00, 1, '2020-08-08 05:39:31', '2020-08-08 05:39:31'),
(8, 8, 13, 'T-shirt', 3456.00, 7, '2020-08-08 17:04:43', '2020-08-08 17:04:43'),
(9, 9, 13, 'T-shirt', 3456.00, 1, '2020-08-09 14:12:23', '2020-08-09 14:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderId` int(11) NOT NULL,
  `paymentType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `orderId`, `paymentType`, `paymentStatus`, `created_at`, `updated_at`) VALUES
(1, 1, 'cashOnDelivery', 'pending', '2020-08-05 01:38:17', '2020-08-05 01:38:17'),
(2, 2, 'cashOnDelivery', 'pending', '2020-08-05 01:42:52', '2020-08-05 01:42:52'),
(3, 3, 'cashOnDelivery', 'pending', '2020-08-05 02:00:11', '2020-08-05 02:00:11'),
(4, 4, 'cashOnDelivery', 'pending', '2020-08-05 19:46:52', '2020-08-05 19:46:52'),
(5, 5, 'cashOnDelivery', 'pending', '2020-08-07 05:47:24', '2020-08-07 05:47:24'),
(6, 6, 'cashOnDelivery', 'pending', '2020-08-08 05:38:49', '2020-08-08 05:38:49'),
(7, 7, 'cashOnDelivery', 'pending', '2020-08-08 05:39:31', '2020-08-08 05:39:31'),
(8, 8, 'cashOnDelivery', 'pending', '2020-08-08 17:04:43', '2020-08-08 17:04:43'),
(9, 9, 'cashOnDelivery', 'pending', '2020-08-09 14:12:23', '2020-08-09 14:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` int(11) NOT NULL,
  `manufacturerId` int(11) NOT NULL,
  `productPrice` double(10,2) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `productShortDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `productLongDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `productImage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `categoryId`, `manufacturerId`, `productPrice`, `productQuantity`, `productShortDescription`, `productLongDescription`, `productImage`, `publicationStatus`, `created_at`, `updated_at`) VALUES
(13, 'T-shirt', 10, 8, 3456.00, 123, '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'public/productImage/a1.png', 1, '2020-08-07 02:42:48', '2020-08-07 02:42:48'),
(14, 'T-shirt', 10, 8, 3454.00, 123, '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'public/productImage/mw2.png', 1, '2020-08-07 02:43:36', '2020-08-07 02:43:36'),
(15, 'Show', 10, 8, 2345.00, 123, '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'public/productImage/d1.jpg', 1, '2020-08-07 02:44:28', '2020-08-07 02:44:28'),
(16, 'Show', 10, 9, 1234.00, 123, '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'public/productImage/w1.png', 1, '2020-08-07 02:46:19', '2020-08-07 02:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districtName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `fullName`, `emailAddress`, `address`, `phoneNumber`, `districtName`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad Forkan', 'forkanmohammad206@gmail.com', 'Banskhali,chambol', '01866581426', 'nar', '2020-08-05 01:38:08', '2020-08-05 01:38:08'),
(2, 'Atiye Aysha', 'atiya@gmail.com', 'Patiye', '01866581426', 'Barisal', '2020-08-05 19:46:40', '2020-08-05 19:46:40'),
(3, 'Mohammad Forkan', 'forkanmohammad206@gmail.com', 'Banskhali,chambol', '01866581426', 'Dhaka', '2020-08-07 05:46:53', '2020-08-07 05:46:53'),
(4, 'Mohammad Forkan', 'forkanmohammad206@gmail.com', 'Banskhali,chambol', '01866581426', 'Barisal', '2020-08-07 19:56:02', '2020-08-07 19:56:02'),
(5, 'Mohammad Forkan', 'forkanmohammad206@gmail.com', 'Banskhali,chambol', '01866581426', 'nar', '2020-08-08 05:38:42', '2020-08-08 05:38:42'),
(6, 'Atiye Aysha', 'atiya@gmail.com', 'Patiye', '01866581426', 'Barisal', '2020-08-08 15:47:48', '2020-08-08 15:47:48'),
(7, 'Sahida Yeasmin', 'sahida@gmail.com', 'Banskhali Chambol Chattagram', '01866581426', 'Comilla', '2020-08-08 17:04:36', '2020-08-08 17:04:36'),
(8, 'Tina islam', 'tina@gmail.com', 'Anuwara Chittagong', '01741049878', 'Comilla', '2020-08-09 14:08:42', '2020-08-09 14:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nahid Akter', 'Sopnir Akhra', 'sonir@gmail.com', '$2y$10$qixy/dif2llyrSf7LnzNbe3f1FFP4JWtIwtiRJMQzzw/8S0zujshu', 'Iz1U8fvsd0aFyk0PKDjLVcUD9DNyrjx30w9wSzOPrQQSC9CIHFTVJMzuoSzn', '2020-05-24 02:07:58', '2020-05-24 02:07:58'),
(2, 'Nishu', 'Chambol Banskhali Chittagong', 'nishu123@gmail.com', '$2y$10$.fgipsCG.dqs.x.e3/45gupEGH23hE0zFsXDFZtZ8pFdVLkqW6PxG', 'OFp9h1MkkWMQKonRFS0TA9O2Gy87lDkyDpDUGhvf9YVMtK5H63hB4T9Aqwyx', '2020-08-03 13:59:12', '2020-08-03 13:59:12'),
(3, 'Amena', 'Banskhali Gondamera Chittagong', 'amena123@gmail.com', '$2y$10$ikJrUejkFxUvLSyP5p5rjOXNTEzy3qX/Xp23rbhdKylpE3yDLYjdK', 'e1BTRQ9qqg57Aijl5nV9ctHxuy7jf3P35DVD0p7qBwPAZDj2RHjluBcr4NTW', '2020-08-03 14:50:08', '2020-08-03 14:50:08'),
(4, 'Aysha', 'Chambol Banskhali Chittagong', 'aysha123@gmail.com', '$2y$10$RVE52mUy2csgOadVhuxRUOAJoHNIgkKZnsTASS8dv4I8ADq7MZpX2', '48hJhagTimoBrYrg71yOGoCFOTM2GZZ5p9DcEW0j3jaz0ml68Rn03mb0xQz5', '2020-08-03 14:54:12', '2020-08-03 14:54:12'),
(5, 'Arif', 'Chambol Banskhali Chittagong', 'arif123@gmail.com', '$2y$10$GFFaOCK0XCvjwGTcpfJvX.zUUaZkDSDcNgsZdiYqdkH/7bH9c1e4G', 'to01pjT4rbZ9gKA0TUZIaAX8xCmZkbfVYJNH6dnLxzr4SxyzD8fkNaanOkOE', '2020-08-03 14:56:16', '2020-08-03 14:56:16'),
(6, 'Harun', 'Chambol Banskhali Chittagong', 'harun123@gmail.com', '$2y$10$ZzxX54reTJFzqPOrftVA9OImCoqjseh259P4xhZRHBSpJ1eBcb0W6', 'Uu0HvwX3u6WDdVnKvXuElJpusNhChgJa5NAwHscgepb4RvdLZ8xgKO1nfQH5', '2020-08-03 14:59:34', '2020-08-03 14:59:34'),
(7, 'Ibnat', 'Chambol Banskhali Chittagong', 'ibnat123@gmail.com', '$2y$10$LZTOKYMXPOVey9t7TeyIWev/hzCycRyiAfqVUVJba2dFsGc.tzVam', 'c3Mkb7HUQcw9Fyo5ueiN74hB3d27EB5DCBMiPMkUxT9kbdfjrn3KffFUwZuO', '2020-08-03 15:01:36', '2020-08-03 15:01:36'),
(8, 'Hiru', 'Chambol Banskhali Chittagong', 'hiru123@gmail.com', '$2y$10$KGFnGTbt/q8bNMQyHLqtiO4qdG1SkVDYR8sueeE06By2Bsk4hqmmq', 'GG1TntdL6bnVaU9grp40i7uwZAdehXEFSgjG2Ap6odKMIMHo8QFuAopGJZ89', '2020-08-03 15:03:11', '2020-08-03 15:03:11'),
(9, 'Mamun', 'Chambol Banskhali Chittagong', 'mamun123@gmail.com', '$2y$10$yeJsvTB3PblDFPGShDNt9.OC4Q1Tu3p/FM01QgO7b8FbW6v9d8Zcu', 'K3z4Km71JVqKxBAPHAksPgVsGMhpdVtsKyuzaaXRitRAfuwLmNE6vTasEsVo', '2020-08-03 15:04:46', '2020-08-03 15:04:46'),
(10, 'Forkan', 'Chambol Banskhali Chittagong', 'forkan123@gmail.com', '$2y$10$HqynNLcESPqQDYi3ltDK2.YNZANUgOMpSFoYYZXZtQVkV5ImIu2Lm', 'neyUKxwfAw5iLpmjNYG9ui42QMxbw8cKZKoLmRtYkMTRZmu00fsb1WqKnEpT', '2020-08-03 15:08:16', '2020-08-03 15:08:16'),
(11, 'Sifat', 'Chamol Banskhali Chittagong', 'sifat123@gmail.com', '$2y$10$ODTkq/i4o44nT3KGfO3a0OdKK9azRdmSLsNYKaHzaNFNI0zFOenti', 'ixbkuWwCwmadyWCSh676X22ykKNeVG44GfAuL49U3Nb7vdlvAjRyqosJ4S9e', '2020-08-03 15:10:49', '2020-08-03 15:10:49'),
(12, 'Moni', 'Chambol Banskhali Chittagong', 'moni123@gmail.com', '$2y$10$0qHHpW//ttIP3eBruTkW/eMjh5dY24WdyiIJfzSZjyRHFMb1b5h1O', 'sB9dchCqVHgDWmF5gjdAkMk2Nes7YOagx91gGj907cTeX9w0KO5eGJzifMJf', '2020-08-03 15:12:43', '2020-08-03 15:12:43'),
(13, 'Isfat', 'Chambol Banskhali Chittagong', 'isfat123@gmail.com', '$2y$10$V6L271s7mT/ZWCrkENKL0.hfmwwfg8ZCMX/hukvEMQfzk8xk.M/ti', 'Ajd6Dcl9w0mYEyYFeRhzgrxbNnnT2yUwEfFof0G1mxGPlz1p6mWCYthZ6q2t', '2020-08-03 15:14:18', '2020-08-03 15:14:18'),
(14, 'Forkan', 'Chambol Banskhali chittagog', 'forkanmohammad206@gmail.com', '123456', NULL, NULL, '2020-08-07 04:07:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
