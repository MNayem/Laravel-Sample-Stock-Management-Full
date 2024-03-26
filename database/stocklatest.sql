-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2022 at 05:16 AM
-- Server version: 10.3.34-MariaDB-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sadaf71_stocksample`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `order_id`, `ip_address`, `product_quantity`, `created_at`, `updated_at`) VALUES
(7, 6, 1, 3, '203.80.188.10', 2, '2022-03-07 14:20:49', '2022-03-07 14:23:16'),
(6, 5, 1, 1, '203.80.188.10', 2, '2022-03-06 16:41:51', '2022-03-06 16:43:50'),
(8, 6, 1, NULL, '203.80.188.10', 1, '2022-03-07 14:49:27', '2022-03-07 14:49:27'),
(14, 41, NULL, NULL, '103.150.6.14', 12, '2022-05-28 14:31:32', '2022-05-28 14:33:56'),
(15, 4, NULL, NULL, '103.150.6.14', 12, '2022-05-28 14:31:36', '2022-05-28 14:34:00'),
(16, 6, NULL, NULL, '103.150.6.14', 22, '2022-05-28 14:31:39', '2022-05-28 14:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `collectionstatement`
--

CREATE TABLE `collectionstatement` (
  `id` int(11) NOT NULL,
  `email` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `shopname` varchar(50) NOT NULL,
  `collectionamount` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collectionstatement`
--

INSERT INTO `collectionstatement` (`id`, `email`, `date`, `shopname`, `collectionamount`, `created_at`, `updated_at`) VALUES
(1, 'mdnayem.cse21@gmail.com', '2022-02-09', 'Alvi Store', 5000, '2022-02-09 12:06:29', '2022-02-09 17:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `collectiontable`
--

CREATE TABLE `collectiontable` (
  `id` int(11) NOT NULL,
  `email` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `deliveryman` varchar(55) NOT NULL,
  `shopname` varchar(55) NOT NULL,
  `dueamount` float NOT NULL,
  `collectionamount` float NOT NULL,
  `amountleft` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collectiontable`
--

INSERT INTO `collectiontable` (`id`, `email`, `date`, `deliveryman`, `shopname`, `dueamount`, `collectionamount`, `amountleft`, `created_at`, `updated_at`) VALUES
(1, 'mdnayem.cse21@gmail.com', '2022-04-19', 'jahangir', 'Alvi Store', 4000, 2000, 2000, '2022-04-13 17:36:04', '2022-04-19 09:39:23'),
(2, 'mdnayem.cse21@gmail.com', '2022-04-19', 'yeasin', 'Kazi Enterprise', 7000, 4000, 3000, '2022-04-19 12:59:46', '2022-04-19 12:59:46'),
(3, 'mdnayem.cse21@gmail.com', '2022-05-10', 'hridoy', 'kazi store', 7000, 5000, 2000, '2022-05-10 15:23:07', '2022-05-10 15:23:07'),
(4, 'mdnayem.cse21@gmail.com', '2022-05-11', 'Myself', 'Alvi Store', 5000, 4000, 1000, '2022-05-11 10:11:33', '2022-05-11 10:11:33'),
(5, 'mdnayem.cse21@gmail.com', '2022-05-11', 'sajid', 'Kazi Enterprise', 5000, 3000, 2000, '2022-05-11 12:49:10', '2022-05-17 13:00:58'),
(6, 'mdnayem.cse21@gmail.com', '2022-05-16', 'jahangir', 'Alvi Store', 7000, 5000, 2000, '2022-05-16 09:25:02', '2022-05-16 09:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `companycarts`
--

CREATE TABLE `companycarts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companycarts`
--

INSERT INTO `companycarts` (`id`, `product_id`, `user_id`, `order_id`, `ip_address`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '127.0.0.1', 1, '2022-01-04 01:20:42', '2022-01-04 01:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `companyorders`
--

CREATE TABLE `companyorders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sr_id` int(10) UNSIGNED DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `deliveryman_id` int(11) DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Public',
  `cashpayment` float DEFAULT NULL,
  `shop` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sr` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliveryman` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `is_seen_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companyorders`
--

INSERT INTO `companyorders` (`id`, `user_id`, `sr_id`, `shop_id`, `deliveryman_id`, `payment_id`, `ip_address`, `name`, `phone_no`, `category`, `cashpayment`, `shop`, `sr`, `deliveryman`, `email`, `message`, `is_paid`, `is_completed`, `is_seen_by_admin`, `transaction_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, 1, '127.0.0.1', 'MD. NAYEM', '01999791578', 'Public', NULL, 'Shop 3', 'SR 1', 'Delivery Man 2', 'mdnayem.cse21@gmail.com', 'testing testing fine', 0, 0, 0, NULL, 'Pending', '2022-01-04 01:21:06', '2022-01-04 01:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `dailysalestable`
--

CREATE TABLE `dailysalestable` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` date DEFAULT NULL,
  `deliverymanname` varchar(55) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `packs` int(11) DEFAULT NULL,
  `pricelp` float DEFAULT NULL,
  `pricetp` float DEFAULT NULL,
  `sellingprice` float DEFAULT NULL,
  `unitprice` float NOT NULL,
  `orders` float NOT NULL,
  `unit` float DEFAULT 0,
  `cases` int(11) DEFAULT 0,
  `pieces` int(11) DEFAULT 0,
  `totalpcs` int(11) DEFAULT NULL,
  `salesv` float NOT NULL,
  `returnp` int(11) DEFAULT 0,
  `returnc` int(11) DEFAULT 0,
  `soldc` int(11) NOT NULL,
  `soldp` int(11) NOT NULL,
  `tpieces` int(11) NOT NULL,
  `valuelp` float NOT NULL,
  `valuetp` float NOT NULL,
  `due` float NOT NULL,
  `damagepcs` int(11) DEFAULT 0,
  `damageamount` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dailysalestable`
--

INSERT INTO `dailysalestable` (`id`, `email`, `date`, `deliverymanname`, `pname`, `packs`, `pricelp`, `pricetp`, `sellingprice`, `unitprice`, `orders`, `unit`, `cases`, `pieces`, `totalpcs`, `salesv`, `returnp`, `returnc`, `soldc`, `soldp`, `tpieces`, `valuelp`, `valuetp`, `due`, `damagepcs`, `damageamount`, `created_at`, `updated_at`) VALUES
(1, 'mdnayem.cse21@gmail.com', '2022-05-22', 'Jahangir', 'Pepsi 250 ml', 30, 388, 403, 403, 13.4333, 50, 0, NULL, NULL, 0, 0, 0, 2, 48, 0, 1440, 19344, 19344, 720, 0, 0, '2022-05-22 14:08:31', '2022-05-22 14:08:31'),
(2, 'mdnayem.cse21@gmail.com', '2022-05-22', 'Yeasin', 'Pepsi 250 ml', 30, 388, 403, 403, 13.4333, 2, 0, NULL, NULL, 0, 0, 0, 0, 2, 0, 60, 806, 806, 30, 0, 0, '2022-05-22 14:09:19', '2022-05-22 14:09:19'),
(3, 'mdnayem.cse21@gmail.com', '2022-05-22', 'Hridoy', 'Pepsi 250 ml', 30, 388, 403, 403, 13.4333, 8, 0, NULL, NULL, 0, 0, 0, 3, 5, 0, 150, 2015, 2015, 75, 0, 0, '2022-05-22 14:11:18', '2022-05-22 14:11:18'),
(4, 'mdnayem.cse21@gmail.com', '2022-05-22', 'Sajid', 'Pepsi 250 ml', 30, 388, 403, 403, 13.4333, 35, 0, NULL, NULL, 0, 0, 0, 5, 30, 0, 900, 12090, 12090, 450, 0, 0, '2022-05-22 14:12:05', '2022-05-22 14:12:05'),
(5, 'mdnayem.cse21@gmail.com', '2022-05-22', 'Jahangir', '7 up 250 ml', 34, 404, 430, 430, 12.6471, 55, 0, NULL, NULL, 0, 0, 0, 5, 50, 0, 1700, 21500, 21500, 1300, 0, 0, '2022-05-22 14:21:30', '2022-05-22 14:21:30'),
(6, 'mdnayem.cse21@gmail.com', '2022-05-22', 'Hridoy', 'M. Dew GRB', 24, 380, 0, 417, 17.375, 25, 0, NULL, NULL, 0, 0, 0, 5, 20, 0, 480, 8340, 0, -7600, 0, 0, '2022-05-22 14:23:06', '2022-05-22 14:23:06'),
(7, 'mdnayem.cse21@gmail.com', '2022-05-22', 'Jahangir', 'Pepsi 250 ml', 30, 388, 403, 403, 13.4333, 10, 5, NULL, NULL, 5, 67.1667, 0, 0, 10, 5, 305, 4097.17, 4097.17, 152.5, 0, 0, '2022-05-22 14:47:02', '2022-05-22 14:47:02'),
(8, 'mdnayem.cse21@gmail.com', '2022-05-23', 'Yeasin', 'Pepsi 250 ml', 30, 388, 403, 403, 13.4333, 5, 0, NULL, NULL, 0, 0, 0, 0, 5, 0, 150, 2015, 2015, 75, 0, 0, '2022-05-23 08:41:58', '2022-05-23 08:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `damageproduct`
--

CREATE TABLE `damageproduct` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `productname` varchar(50) NOT NULL,
  `deliverymanname` varchar(50) NOT NULL,
  `totalproduct` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `damageproduct`
--

INSERT INTO `damageproduct` (`id`, `email`, `date`, `productname`, `deliverymanname`, `totalproduct`, `created_at`, `updated_at`) VALUES
(1, 'mdnayem.cse21@gmail.com', '2022-01-15', 'Mountain Dew 250 ml', 'Shakib-Tamim', 400, '2022-01-15 02:49:56', '2022-01-15 02:49:56'),
(2, 'mdnayem.cse21@gmail.com', '2022-01-15', 'Pepsi 250 ml', 'Mushfiq-Mahmudullah', 700, '2022-01-15 02:50:15', '2022-01-15 02:50:15'),
(3, 'mdnayem.cse21@gmail.com', '2022-03-06', 'Soyabin Oil', 'Afsara Adiba', 1, '2022-03-06 16:36:58', '2022-03-06 16:36:58'),
(4, 'mdnayem.cse21@gmail.com', '2022-03-07', 'Mountain Dew', 'Afsara Adiba', 2, '2022-03-07 12:08:51', '2022-03-07 12:08:51'),
(5, 'mdnayem.cse21@gmail.com', '2022-03-07', 'Ponds Cream', 'Afsara Adiba', 1, '2022-03-07 14:14:38', '2022-03-07 14:14:38'),
(6, 'mdnayem.cse21@gmail.com', '2022-04-19', 'Pepsi 250 ml', 'jahangir', 180, '2022-04-19 21:48:07', '2022-04-19 21:48:07');

-- --------------------------------------------------------

--
-- Table structure for table `deliveryman`
--

CREATE TABLE `deliveryman` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliveryman`
--

INSERT INTO `deliveryman` (`id`, `email`, `name`, `phone`, `description`, `created_at`, `updated_at`) VALUES
(4, 'mdnayem.cse21@gmail.com', 'jahangir', '1111', 'aaaa', '2022-04-03 09:24:28', '2022-04-03 09:24:28'),
(5, 'mdnayem.cse21@gmail.com', 'yeasin', '2222', 'bbbb', '2022-04-03 09:24:42', '2022-04-03 09:24:42'),
(6, 'mdnayem.cse21@gmail.com', 'hridoy', '3333', 'cccc', '2022-04-03 09:24:56', '2022-04-03 09:24:56'),
(7, 'mdnayem.cse21@gmail.com', 'sajid', '4444', 'dddd', '2022-04-03 09:25:13', '2022-04-03 09:25:13'),
(8, 'mdnayem.cse21@gmail.com', 'Myself', '+8801999791578', 'Own', '2022-05-11 10:17:33', '2022-05-11 10:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `duetable`
--

CREATE TABLE `duetable` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` date DEFAULT current_timestamp(),
  `deliverymanname` varchar(50) DEFAULT 'Myself',
  `shopname` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `duetable`
--

INSERT INTO `duetable` (`id`, `email`, `date`, `deliverymanname`, `shopname`, `amount`, `created_at`, `updated_at`) VALUES
(5, 'mdnayem.cse21@gmail.com', '2022-04-19', 'jahangir', 'Alvi Store', 7000, '2022-04-17 11:30:25', '2022-04-19 09:26:36'),
(6, 'mdnayem.cse21@gmail.com', '2022-04-19', 'jahangir', 'Alvi Store', 3000, '2022-04-18 14:48:52', '2022-04-19 09:26:47'),
(7, 'mdnayem.cse21@gmail.com', '2022-04-19', 'yeasin', 'Kazi Enterprise', 2000, '2022-04-19 12:57:54', '2022-04-19 12:57:54'),
(8, 'mdnayem.cse21@gmail.com', '2022-05-10', 'hridoy', 'kazi store', 7000, '2022-05-10 15:21:27', '2022-05-17 09:27:13'),
(9, 'mdnayem.cse21@gmail.com', '2022-05-11', 'Myself', 'Alvi Store', 7000, '2022-05-11 09:25:20', '2022-05-11 09:25:38'),
(11, 'mdnayem.cse21@gmail.com', '2022-05-11', 'Myself', 'Kazi Enterprise', 8000, '2022-05-11 09:31:21', '2022-05-11 09:31:21'),
(14, 'mdnayem.cse21@gmail.com', '2022-05-11', 'jahangir', 'Alvi Store', 600, '2022-05-11 12:22:36', '2022-05-11 12:22:36'),
(15, 'mdnayem.cse21@gmail.com', '2022-05-01', 'jahangir', 'Kazi Enterprise', 800, '2022-05-11 12:23:22', '2022-05-11 12:23:22'),
(16, 'mdnayem.cse21@gmail.com', '2022-05-12', 'sajid', 'Alvi Store', 3000, '2022-05-12 08:32:01', '2022-05-12 08:32:01'),
(17, 'mdnayem.cse21@gmail.com', '2022-05-16', 'jahangir', 'kazi store', 7000, '2022-05-16 09:24:21', '2022-05-16 09:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `expname` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `deliverymanname` varchar(50) NOT NULL DEFAULT 'No Person',
  `description` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `email`, `date`, `expname`, `amount`, `deliverymanname`, `description`, `created_at`, `updated_at`) VALUES
(1, 'mdnayem.cse21@gmail.com', '2022-04-19', 'Daily Allowance(DA)', 100, 'jahangir', 'nai', '2022-04-17 11:08:52', '2022-04-19 09:27:32'),
(2, 'mdnayem.cse21@gmail.com', '2022-04-19', 'AUTO VARA', 300, 'jahangir', 'nai', '2022-04-18 15:23:37', '2022-04-19 09:27:44'),
(3, 'mdnayem.cse21@gmail.com', '2022-04-19', 'Daily Allowance(DA)', 500, 'yeasin', 'nai', '2022-04-19 12:58:25', '2022-04-19 12:58:25'),
(4, 'mdnayem.cse21@gmail.com', '2022-04-19', 'Daily Allowance(DA)', 70, 'sajid', 'nai', '2022-04-19 21:51:40', '2022-05-17 12:20:19'),
(5, 'mdnayem.cse21@gmail.com', '2022-04-19', 'AUTO VARA', 350, 'yeasin', 'nai', '2022-04-19 21:52:39', '2022-05-17 12:17:21'),
(6, 'mdnayem.cse21@gmail.com', '2022-05-10', 'AUTO VARA', 350, 'hridoy', 'nai', '2022-05-10 15:21:56', '2022-05-10 15:21:56'),
(7, 'mdnayem.cse21@gmail.com', '2022-05-10', 'Daily Allowance(DA)', 500, 'hridoy', 'nai', '2022-05-10 15:22:13', '2022-05-10 15:22:13'),
(9, 'mdnayem.cse21@gmail.com', '2022-05-11', 'SPECIAL COST', 2000, 'Myself', 'nai', '2022-05-11 09:56:35', '2022-05-11 09:56:35'),
(10, 'mdnayem.cse21@gmail.com', '2022-05-11', 'Daily Allowance(DA)', 700, 'yeasin', 'nai', '2022-05-11 12:47:11', '2022-05-11 12:47:11'),
(11, 'mdnayem.cse21@gmail.com', '2022-05-15', 'AUTO VARA', 700, 'yeasin', 'nai', '2022-05-15 13:59:46', '2022-05-15 13:59:46'),
(12, 'mdnayem.cse21@gmail.com', '2022-05-16', 'Daily Allowance(DA)', 500, 'jahangir', 'nai', '2022-05-16 09:24:40', '2022-05-16 09:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `expensename`
--

CREATE TABLE `expensename` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `exname` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expensename`
--

INSERT INTO `expensename` (`id`, `email`, `exname`, `created_at`, `updated_at`) VALUES
(1, 'mdnayem.cse21@gmail.com', 'Daily Allowance(DA)', '2022-04-11 13:33:26', '2022-04-11 13:33:26'),
(2, 'mdnayem.cse21@gmail.com', 'AUTO VARA', '2022-04-11 13:33:34', '2022-04-11 13:33:34'),
(3, 'mdnayem.cse21@gmail.com', 'SPECIAL COST', '2022-04-11 13:33:45', '2022-04-11 13:33:45');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `date` date NOT NULL,
  `description` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`id`, `email`, `productname`, `amount`, `date`, `description`, `created_at`, `updated_at`) VALUES
(1, 'mdnayem.cse21@gmail.com', 'Pepsi 250 ml', 3.5, '2022-01-15', 'Best Offer', '2022-01-15 04:18:31', '2022-01-15 04:18:31'),
(2, 'mdnayem.cse21@gmail.com', 'Mountain Dew 250 ml', 5.5, '2022-01-15', 'First in First get', '2022-01-15 04:18:57', '2022-01-15 04:18:57'),
(3, 'mdnayem.cse21@gmail.com', 'Pepsi 250 ml', 100, '2022-02-17', 'ABCD', '2022-02-18 23:11:43', '2022-02-18 23:11:43'),
(4, 'mdnayem.cse21@gmail.com', 'Soyabin Oil', 20, '2022-03-07', 'For Eid', '2022-03-07 14:20:10', '2022-03-07 14:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sr_id` int(10) UNSIGNED DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `deliveryman_id` int(11) DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Public',
  `cashpayment` float DEFAULT NULL,
  `shop` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sr` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliveryman` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `is_seen_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `sr_id`, `shop_id`, `deliveryman_id`, `payment_id`, `ip_address`, `name`, `phone_no`, `category`, `cashpayment`, `shop`, `sr`, `deliveryman`, `email`, `message`, `is_paid`, `is_completed`, `is_seen_by_admin`, `transaction_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, 3, '203.80.188.10', 'Afsara Adiba', '12345', 'Public', NULL, 'Shop 1', 'SR 1', 'Delivery Man 1', 'mdnayem.cse21@gmail.com', NULL, 0, 0, 0, '800', 'Pending', '2022-03-06 16:43:50', '2022-03-06 16:43:50'),
(2, 1, NULL, NULL, NULL, 2, '203.80.188.10', 'Afsara Adiba', '12345', 'Public', NULL, 'Shop 1', 'SR 1', 'Delivery Man 1', 'mdnayem.cse21@gmail.com', NULL, 0, 0, 0, '800', 'Pending', '2022-03-06 16:44:29', '2022-03-06 16:44:29'),
(3, 1, NULL, NULL, NULL, 3, '203.80.188.10', 'Afsara Adiba', '1235556', 'Public', NULL, 'Shop 1', 'SR 1', 'Delivery Man 1', 'mdnayem.cse21@gmail.com', NULL, 0, 0, 0, '1600', 'Pending', '2022-03-07 14:23:16', '2022-03-07 14:23:16');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` tinyint(4) NOT NULL DEFAULT 1,
  `short_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Payment No',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'agent|personal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `image`, `priority`, `short_name`, `no`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Cash In', NULL, 1, 'cash_in', NULL, NULL, '2021-11-03 03:31:05', '2021-11-03 03:31:05'),
(2, 'bKash', NULL, 2, 'baksh', NULL, NULL, '2021-11-03 03:32:05', '2021-11-03 03:32:05'),
(3, 'Rocket', NULL, 3, 'rocket', NULL, NULL, '2021-11-03 03:32:35', '2021-11-03 03:32:35');

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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` varchar(1500) DEFAULT 'Product description',
  `buyingprice` float NOT NULL,
  `sellingprice` float NOT NULL,
  `updated_price` float NOT NULL,
  `image` varchar(255) DEFAULT 'Product Image',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `email`, `title`, `description`, `buyingprice`, `sellingprice`, `updated_price`, `image`, `created_at`, `updated_at`) VALUES
(3, 'mdnayem.cse21@gmail.com', 'Pepsi 250 ml', 'Popular Drinking', 388, 403, 403, 'images/pepsi.jpg', '2022-01-23 06:20:33', '2022-05-15 14:11:23'),
(4, 'mdnayem.cse21@gmail.com', 'Mountain Dew', 'Popular Drinking', 16, 20, 20, 'images/dew.jpg', '2022-01-23 06:21:40', '2022-01-23 06:21:40'),
(6, 'mdnayem.cse21@gmail.com', 'Soyabin Oil', 'Grocery Item', 780, 800, 800, 'images/oil.jpg', '2022-03-07 11:31:25', '2022-03-07 11:31:25'),
(7, 'mdnayem.cse21@gmail.com', 'Cadvary Cocoa Powder', 'Cococa Powder', 350, 380, 380, 'images/cocoa.jpg', '2022-03-07 11:36:36', '2022-03-07 11:36:36'),
(8, 'mdnayem.cse21@gmail.com', 'Ponds Cream', 'Beauty Product', 300, 350, 350, 'images/ponds.jpg', '2022-03-07 14:10:42', '2022-03-07 14:10:42'),
(9, 'mdnayem.cse21@gmail.com', '7 up 250 ml', 'a', 404, 430, 430, 'images/7 up Pet.jpg', '2022-04-02 09:29:38', '2022-04-02 09:29:38'),
(10, 'mdnayem.cse21@gmail.com', '7 up lite', 'b', 400, 430, 0, 'images/7 up lite.jpg', '2022-04-02 09:32:33', '2022-04-02 09:32:33'),
(11, 'mdnayem.cse21@gmail.com', 'Pepsi 250 ml', 'c', 388, 403, 0, 'images/pepsi 250 ml.jpg', '2022-04-02 09:34:33', '2022-04-02 09:34:33'),
(12, 'mdnayem.cse21@gmail.com', 'M. Dew 250 ml', 'e', 388, 403, 0, 'images/M. Dew 250 ml.jpg', '2022-04-02 09:42:37', '2022-04-03 10:11:24'),
(13, 'mdnayem.cse21@gmail.com', 'MR 250 ml', 'f', 404, 430, 0, 'images/mirinda.jpg', '2022-04-02 09:46:58', '2022-04-03 10:11:53'),
(14, 'mdnayem.cse21@gmail.com', 'Pepsi Diet 250 ml', 'd', 400, 430, 0, 'images/images.jpg', '2022-04-02 09:49:35', '2022-04-03 10:12:13'),
(16, 'mdnayem.cse21@gmail.com', '7 up grb 200 ml', 'g', 380, 417, 0, 'images/7 uo GRB.jpg', '2022-04-02 09:58:46', '2022-04-02 09:58:46'),
(17, 'mdnayem.cse21@gmail.com', 'Pepsi grb 200 ml', 'h', 380, 417, 0, 'images/pepsi grb.jpg', '2022-04-02 09:59:54', '2022-04-02 09:59:54'),
(18, 'mdnayem.cse21@gmail.com', 'M. Dew GRB', 'i', 380, 417, 0, 'images/M. Dew 250 ml.jpg', '2022-04-02 10:07:25', '2022-04-02 10:07:25'),
(19, 'mdnayem.cse21@gmail.com', 'Mirinda grb 200 ml', 'j', 380, 417, 0, 'images/Mr grb 200.jpg', '2022-04-02 10:10:20', '2022-04-02 10:10:20'),
(20, 'mdnayem.cse21@gmail.com', '7 up 250 ml Can', 'k', 413, 438, 0, 'images/7 up can.jpg', '2022-04-02 10:14:24', '2022-04-02 10:14:24'),
(21, 'mdnayem.cse21@gmail.com', 'Pepsi 250 ml can', 'l', 413, 438, 0, 'images/pepsi 250 ml can.jpg', '2022-04-02 10:17:48', '2022-04-02 10:17:48'),
(22, 'mdnayem.cse21@gmail.com', 'M. Dew 250 ml can', 'm', 413, 438, 0, 'images/Mdew250dewcanjpg.jpg', '2022-04-02 10:20:32', '2022-04-02 10:20:32'),
(23, 'mdnayem.cse21@gmail.com', 'Mirinda 250 ml can', 'n', 413, 438, 0, 'images/mr250mlcan.jpg', '2022-04-02 10:22:11', '2022-04-02 10:22:11'),
(24, 'mdnayem.cse21@gmail.com', 'Pepsi bk', 'o', 413, 438, 0, 'images/pepsibk250mlcan.jpeg', '2022-04-02 10:24:39', '2022-04-02 10:24:39'),
(25, 'mdnayem.cse21@gmail.com', 'Pepsi D Can', 'p', 413, 438, 0, 'images/pepsibk250mlcan.webp', '2022-04-02 10:25:25', '2022-04-02 10:25:25'),
(26, 'mdnayem.cse21@gmail.com', 'M. Dew 400 ml', 'q', 257.5, 270, 0, 'images/M. Dew 400.jpg', '2022-04-02 10:27:35', '2022-04-02 10:27:35'),
(27, 'mdnayem.cse21@gmail.com', '7 up 600 ml', 'r', 744, 774, 0, 'images/7up600.jpg', '2022-04-02 10:36:22', '2022-04-02 10:36:22'),
(28, 'mdnayem.cse21@gmail.com', 'Pepsi 600 ml', 's', 744, 774, 0, 'images/pepsi600.jpg', '2022-04-02 11:24:17', '2022-04-02 11:24:17'),
(29, 'mdnayem.cse21@gmail.com', 'M. Dew 600 ml', 't', 744, 774, 0, 'images/M. Dew 600.jpg', '2022-04-02 11:26:52', '2022-04-02 11:26:52'),
(30, 'mdnayem.cse21@gmail.com', 'Mirinda 600 ml', 'u', 372, 387, 0, 'images/Mr600.jpg', '2022-04-02 11:28:38', '2022-04-02 11:28:38'),
(31, 'mdnayem.cse21@gmail.com', 'Pepsi Diet 600 ml', 'v', 744, 774, 0, 'images/Pepsi diet.jpg', '2022-04-02 11:30:24', '2022-04-02 11:30:24'),
(32, 'mdnayem.cse21@gmail.com', 'Pepsi 400 ml', 'w', 257.5, 270, 0, 'images/pepsi400ml.jpg', '2022-04-02 11:32:20', '2022-04-02 11:32:20'),
(33, 'mdnayem.cse21@gmail.com', '7 up 1000 ml', 'x', 631, 656, 0, 'images/pepsi1000.jpg', '2022-04-02 11:34:02', '2022-04-02 11:34:02'),
(34, 'mdnayem.cse21@gmail.com', 'M. Dew 1000ml', 'y', 531, 552, 0, 'images/M.Dew1000.jpg', '2022-04-02 11:36:05', '2022-04-02 11:36:05'),
(35, 'mdnayem.cse21@gmail.com', 'Mirinda 1000', 'z', 531, 552, 0, 'images/mr1000.jpg', '2022-04-02 11:40:33', '2022-04-02 11:40:33'),
(36, 'mdnayem.cse21@gmail.com', '7 up 2000 ml', 'ab', 586, 612, 0, 'images/7up2000mll.jpg', '2022-04-02 11:52:40', '2022-04-02 11:52:40'),
(37, 'mdnayem.cse21@gmail.com', 'Pepsi 2000 ml', 'ac', 451, 500, 0, 'images/pepsi2000.jpg', '2022-04-02 11:55:35', '2022-04-02 11:55:35'),
(38, 'mdnayem.cse21@gmail.com', '1 up', 'ad', 531, 552, 0, 'images/1up.png', '2022-04-02 11:58:22', '2022-04-02 11:58:22'),
(39, 'mdnayem.cse21@gmail.com', 'ad 500', 'ae', 220, 236, 0, 'images/ad500.jpg', '2022-04-02 12:00:02', '2022-04-02 12:00:02'),
(40, 'mdnayem.cse21@gmail.com', 'ad 1000', 'af', 185, 197, 0, 'images/ad1000.jpg', '2022-04-02 12:01:40', '2022-04-02 12:01:40'),
(41, 'mdnayem.cse21@gmail.com', 'ad 1500', 'ag', 0, 168, 0, 'images/ad1500.jpg', '2022-04-02 12:03:12', '2022-04-02 12:03:12'),
(42, 'mdnayem.cse21@gmail.com', 'slice 200 ml', 'ah', 0, 430, 0, 'images/slice200.jpg', '2022-04-02 12:04:37', '2022-04-02 12:04:37'),
(43, 'mdnayem.cse21@gmail.com', 'Md Pepsi', 'ai', 0, 327, 0, 'images/mdpepsi.jpg', '2022-04-02 12:06:52', '2022-04-02 12:06:52'),
(45, 'mdnayem.cse21@gmail.com', 'Test', 'nai', 305, 500, 500, 'images/Nayem-digitalvai.jpg', '2022-05-18 12:52:36', '2022-05-18 12:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `productaccount`
--

CREATE TABLE `productaccount` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `returncarts`
--

CREATE TABLE `returncarts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `returncarts`
--

INSERT INTO `returncarts` (`id`, `product_id`, `user_id`, `order_id`, `ip_address`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 5, 1, NULL, '203.80.188.10', 1, '2022-03-06 16:45:47', '2022-03-06 16:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `returnorders`
--

CREATE TABLE `returnorders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sr_id` int(10) UNSIGNED DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `deliveryman_id` int(11) DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Public',
  `cashpayment` float DEFAULT NULL,
  `shop` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sr` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliveryman` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `is_seen_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `address`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(1, 'test@gmail.com', '01999791578', 'Nirala, Khulna-9201', 100, '2021-11-03 01:19:52', '2021-11-03 01:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `shopname` varchar(100) DEFAULT NULL,
  `mobile` varchar(50) NOT NULL,
  `accountno` varchar(50) DEFAULT NULL,
  `bkash` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `deliverymanname` varchar(50) DEFAULT NULL,
  `description` varchar(155) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `email`, `shopname`, `mobile`, `accountno`, `bkash`, `address`, `deliverymanname`, `description`, `created_at`, `updated_at`) VALUES
(1, 'mdnayem.cse21@gmail.com', 'Alvi Store', '01999791578', 'zbc123', '01999791578', 'Hajibari, Nirala, Khulna, Bangladesh.', 'Shakib-Tamim', 'Nothing', '2022-01-15 03:15:20', '2022-01-15 03:15:20'),
(2, 'mdnayem.cse21@gmail.com', 'Kazi Enterprise', '+8801920440044', 'rwe123', '01999791578', 'Najirghat Cross Road, Hajibari, nirala, Khulna', 'Mushfiq-Mahmudullah', 'Nothing', '2022-01-15 03:16:40', '2022-01-15 03:16:40'),
(3, 'mdnayem.cse21@gmail.com', 'kazi store', '12345667', '123', '0987666', 'andarkilla', 'Shakib-Tamim', 'Abcd', '2022-03-07 14:18:09', '2022-03-07 14:18:09');

-- --------------------------------------------------------

--
-- Table structure for table `sr`
--

CREATE TABLE `sr` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sr`
--

INSERT INTO `sr` (`id`, `email`, `name`, `phone`, `company`, `created_at`, `updated_at`) VALUES
(1, 'mdnayem.cse21@gmail.com', 'MD. NAYEM', '01999791578', 'Digital vai Everyone', '2022-01-02 04:57:09', '2022-01-02 05:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `pack` int(11) NOT NULL,
  `pricelp` float NOT NULL,
  `openningstock` float NOT NULL,
  `stock` float NOT NULL,
  `remainingstock` float DEFAULT 0,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `email`, `productname`, `pack`, `pricelp`, `openningstock`, `stock`, `remainingstock`, `price`, `created_at`, `updated_at`) VALUES
(1, 'mdnayem.cse21@gmail.com', 'Pepsi 250 ml', 30, 303, 200, 100, 100, 430, '2022-05-22 14:06:56', '2022-05-23 08:41:58'),
(2, 'mdnayem.cse21@gmail.com', '7 up 250 ml', 34, 388, 150, 100, 100, 417, '2022-05-22 14:19:31', '2022-05-22 14:21:30'),
(3, 'mdnayem.cse21@gmail.com', 'M. Dew GRB', 24, 322, 100, 80, 80, 395, '2022-05-22 14:20:15', '2022-05-22 14:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `updateprice`
--

CREATE TABLE `updateprice` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `updated_price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'MD. NAYEM', 'mdnayem.cse21@gmail.com', NULL, 1, '$2y$10$aqMA5wlkeNfwhKdMt3irp.wFSRKFVGEFAwGG/ZyssbRGbYIQDwIRC', NULL, '2021-12-28 01:43:28', '2021-12-28 01:43:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `collectionstatement`
--
ALTER TABLE `collectionstatement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collectiontable`
--
ALTER TABLE `collectiontable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companycarts`
--
ALTER TABLE `companycarts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `companyorders`
--
ALTER TABLE `companyorders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order2s_user_id_foreign` (`sr_id`),
  ADD KEY `order2s_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `dailysalestable`
--
ALTER TABLE `dailysalestable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `damageproduct`
--
ALTER TABLE `damageproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveryman`
--
ALTER TABLE `deliveryman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `duetable`
--
ALTER TABLE `duetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expensename`
--
ALTER TABLE `expensename`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order2s_user_id_foreign` (`sr_id`),
  ADD KEY `order2s_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productaccount`
--
ALTER TABLE `productaccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returncarts`
--
ALTER TABLE `returncarts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `returnorders`
--
ALTER TABLE `returnorders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order2s_user_id_foreign` (`sr_id`),
  ADD KEY `order2s_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sr`
--
ALTER TABLE `sr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updateprice`
--
ALTER TABLE `updateprice`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `collectionstatement`
--
ALTER TABLE `collectionstatement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `collectiontable`
--
ALTER TABLE `collectiontable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `companycarts`
--
ALTER TABLE `companycarts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companyorders`
--
ALTER TABLE `companyorders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dailysalestable`
--
ALTER TABLE `dailysalestable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `damageproduct`
--
ALTER TABLE `damageproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `deliveryman`
--
ALTER TABLE `deliveryman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `duetable`
--
ALTER TABLE `duetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `expensename`
--
ALTER TABLE `expensename`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `productaccount`
--
ALTER TABLE `productaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `returncarts`
--
ALTER TABLE `returncarts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `returnorders`
--
ALTER TABLE `returnorders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sr`
--
ALTER TABLE `sr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `updateprice`
--
ALTER TABLE `updateprice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
