-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2018 at 10:34 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_telephone`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `types` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `value`, `types`, `created_at`, `updated_at`) VALUES
(1, 'Đỏ', 'Màu', 'COLOR', '2018-07-12 13:53:53', '2018-07-12 13:53:53'),
(2, 'Tím', 'Màu', 'COLOR', '2018-07-12 13:53:53', '2018-07-12 13:53:53'),
(3, 'Trắng', 'Màu', 'COLOR', '2018-07-12 13:54:05', '2018-07-12 13:54:05'),
(4, 'Đen', 'Màu', 'COLOR', '2018-07-12 13:54:05', '2018-07-12 13:54:05'),
(5, 'Vàng', 'Màu', 'COLOR', '2018-07-12 13:54:26', '2018-07-12 13:54:26'),
(6, 'Ánh Kim', 'Màu', 'COLOR', '2018-07-12 13:54:26', '2018-07-12 13:54:26'),
(7, '64', 'GB', 'RAM', '2018-07-12 13:55:00', '2018-07-12 13:55:00'),
(8, '128', 'GB', 'RAM', '2018-07-12 13:55:00', '2018-07-12 13:55:00'),
(9, '258', 'GB', 'RAM', '2018-07-12 13:55:20', '2018-07-12 13:55:20'),
(10, '32', 'GB', 'RAM', '2018-07-12 13:55:20', '2018-07-12 13:55:20'),
(11, '5.8', 'inch', 'Màn Hình', '2018-07-19 02:26:21', '2018-07-19 02:26:21'),
(12, '6', 'inch', 'Màn Hình', '2018-07-19 02:26:35', '2018-07-19 02:26:35'),
(13, '7.8', 'inch', 'Màn Hình', '2018-07-19 02:26:51', '2018-07-19 02:26:51'),
(14, 'adroid', NULL, 'Hệ điểu hành', '2018-07-19 02:29:56', '2018-07-19 02:29:56'),
(15, 'iOs', NULL, 'Hệ điểu hành', '2018-07-19 02:30:28', '2018-07-19 02:30:28'),
(16, 'Adroid 7.0 Mashware', NULL, 'Hệ điểu hành', '2018-07-19 02:31:12', '2018-07-19 02:35:21'),
(17, 'Adroid 4.4.2 KitKat', NULL, 'Hệ điểu hành', '2018-07-19 02:33:48', '2018-07-19 02:37:12'),
(18, '16', 'GB', 'RAM', '2018-07-21 12:05:06', '2018-07-21 12:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `adress`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SAMSUNG', 'Số 245 Nguyễn Trãi, Hà Đông, Hà Nội', '', 1, '2018-07-12 13:58:13', '2018-07-12 13:58:13'),
(2, 'WIKO', 'Số 112 Nguyễn Trãi, Hà Đông, Hà Nội', '', 1, '2018-07-12 13:58:13', '2018-07-12 13:58:13'),
(3, 'Apple', 'Số 245 Bắc Từ Liêm, Mỹ Đình, Hà Nội', '', 1, '2018-07-12 13:59:07', '2018-07-12 13:59:07'),
(4, 'ASUS', 'Số 245 Nam Từ Liêm, Mỹ Đình, Hà Nội', '', 1, '2018-07-12 13:59:07', '2018-07-12 13:59:07'),
(5, 'OPPO', 'Số 245 Bắc Từ Liêm, Mỹ Đình, Hà Nội', '', 1, '2018-07-12 14:00:10', '2018-07-12 14:00:10'),
(6, 'EOM', 'Số 245 Nam Từ Liêm, Mỹ Đình, Hà Nội', '', 1, '2018-07-12 14:00:10', '2018-07-12 14:00:10'),
(7, 'Flash', 'Số 245 Nam Từ Liêm, Mỹ Đình, Hà Nội', '', 1, '2018-07-12 14:00:10', '2018-07-12 14:00:10'),
(8, 'Zip MObile', 'Số 245 Nam Từ Liêm, Mỹ Đình, Hà Nội', '', 1, '2018-07-12 14:00:10', '2018-07-12 14:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Camera & Photo', 'Camera-Photo', 0, 1, '2018-07-11 21:00:00', '2018-07-11 21:00:00'),
(2, 'Headphones', 'head-phones', 0, 1, '2018-07-11 21:00:29', '2018-07-11 21:00:29'),
(3, 'Game Video', 'game-video', 0, 1, '2018-07-11 21:01:15', '2018-07-11 21:01:15'),
(4, 'Smart Phone', 'smart-phne', 0, 1, '2018-07-12 07:22:15', '2018-07-12 07:22:35'),
(5, 'Camera', 'camera', 1, 1, '2018-07-12 16:37:46', '2018-07-12 16:37:46'),
(6, 'Photo', 'Photo', 1, 1, '2018-07-12 16:57:16', '2018-07-12 16:57:16'),
(7, 'Tai nghe day', 'tai-nghe-day', 2, 1, '2018-07-12 17:09:56', '2018-07-12 17:09:56'),
(8, 'loa cam tay', 'loa', 2, 1, '2018-07-12 17:09:56', '2018-07-12 17:09:56'),
(9, 'Thiết bị khác', 'thiet-bi-khac', 0, 1, '2018-07-20 21:24:49', '2018-07-21 10:58:58');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'fadfs', 1, '2018-07-15 21:03:15', '2018-07-15 21:03:15'),
(2, 1, 16, 'ok', 1, '2018-07-16 20:02:08', '2018-07-16 20:02:08'),
(3, 10, 28, 'Sản phẩm dùng rất tốt, bền, pin khỏe', 1, '2018-07-23 02:40:47', '2018-07-23 02:40:47'),
(4, 5, 28, 'Sản phẩm dùng bền, mình rất thích', 1, '2018-07-23 16:09:24', '2018-07-23 16:09:24'),
(5, 1, 15, 'Sản phẩm dùng tốt', 1, '2018-07-23 22:40:23', '2018-07-23 22:40:23'),
(6, 1, 29, 'San pham dung ben', 1, '2018-07-23 23:18:32', '2018-07-23 23:18:32'),
(7, 7, 29, 'Snar p fsdfsfds', 1, '2018-07-24 01:02:57', '2018-07-24 01:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `county` text COLLATE utf8mb4_unicode_ci,
  `adress` text COLLATE utf8mb4_unicode_ci,
  `pro_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `county`, `adress`, `pro_id`) VALUES
(1, 'Hà Đông', 'Số 137 Hà Đông Hà Nội', 1),
(2, 'Bắc Từ Liêm', 'Số 117 Bắc Từ Liêm Hà Nội', 1),
(3, 'Quận Cầu Giấy', '234 Cầu Giấy Hà Nội', 1),
(4, 'Huyện Ba Vì', '213 Huyện Bà Vì Hà Nội', 1),
(5, 'Quận 1', 'Số 121 Quận 1 Tp Hồ Chí Minh', 2),
(6, 'Quận 2', 'Số 121 Quận 2 Tp Hồ Chí Minh', 2),
(7, 'Quận 3', 'Số 121 Quận 3 Tp Hồ Chí Minh', 2),
(8, 'Quận 4', 'Số 121 Quận 4 Tp Hồ Chí Minh', 2),
(9, 'Quận 5', 'Số 121 Quận 5 Tp Hồ Chí Minh', 2),
(10, 'Quận 6', 'Số 121 Quận 6 Tp Hồ Chí Minh', 2),
(11, 'Quận 7', 'Số 121 Quận 7 Tp Hồ Chí Minh', 2),
(12, 'Quận 8', 'Số 121 Quận 8 Tp Hồ Chí Minh', 2),
(13, 'Quận 9', 'Số 121 Quận 9 Tp Hồ Chí Minh', 2),
(14, 'Hà Đông', 'số 98 Đường Trần Phú Hà Đông Hà Nội', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `action`, `object`, `created_at`, `updated_at`) VALUES
(2, 14, 'Thêm mới sản phẩm', 'san-pham', '2018-07-22 19:42:43', '2018-07-22 19:42:43'),
(3, 14, 'Thêm mới sản phẩm ', 'san-pham', '2018-07-22 19:56:08', '2018-07-22 19:56:08'),
(4, 14, 'Sửa sản phẩm 28', 'san-pham', '2018-07-22 19:58:27', '2018-07-22 19:58:27'),
(5, 14, 'Sửa sản phẩm 28', 'san-pham', '2018-07-22 20:00:37', '2018-07-22 20:00:37'),
(6, 14, 'Thêm thông số kỹ thuật của sản phẩm28', 'san-pham', '2018-07-22 20:06:08', '2018-07-22 20:06:08'),
(7, 14, 'Sửa sản phẩm id: 28', 'san-pham', '2018-07-22 20:07:44', '2018-07-22 20:07:44'),
(8, 14, 'Xóa danh mục Thiết bị nghe nhìn', 'danh-muc', '2018-07-22 20:15:09', '2018-07-22 20:15:09'),
(9, 14, 'Sửa trạng thái phương thức thanh toán: 2', 'phuong-thuc', '2018-07-22 20:28:44', '2018-07-22 20:28:44'),
(10, 14, 'Sửa trạng thái phương thức thanh toán: 2', 'phuong-thuc', '2018-07-22 20:28:47', '2018-07-22 20:28:47'),
(11, 14, 'Sửa trạng thái phương thức thanh toán: 2', 'phuong-thuc', '2018-07-22 20:28:53', '2018-07-22 20:28:53'),
(12, 14, 'Sửa trạng thái phương thức thanh toán: 1', 'phuong-thuc', '2018-07-22 20:30:54', '2018-07-22 20:30:54'),
(13, 14, 'Sửa trạng thái phương thức giao hàng: 1', 'phuong-thuc', '2018-07-22 20:32:01', '2018-07-22 20:32:01'),
(14, 14, 'Thay đổi thông tin khách hàng: 14', 'nguoi-dung', '2018-07-22 20:36:06', '2018-07-22 20:36:06'),
(15, 1, 'Sửa sản phẩm id: 22', 'san-pham', '2018-07-23 02:50:43', '2018-07-23 02:50:43'),
(16, 1, 'Duyệt đơn hàng id: 3', 'don-hang', '2018-07-23 18:05:23', '2018-07-23 18:05:23'),
(17, 1, 'Thêm mới sản phẩm ', 'san-pham', '2018-07-23 18:45:53', '2018-07-23 18:45:53'),
(18, 1, 'Thêm thông số kỹ thuật của sản phẩm 29', 'san-pham', '2018-07-23 18:46:08', '2018-07-23 18:46:08'),
(19, 14, 'Thay đổi quyền truy cập khách hàng: 14', 'nguoi-dung', '2018-07-23 22:25:50', '2018-07-23 22:25:50'),
(20, 1, 'Duyệt đơn hàng id: 1', 'don-hang', '2018-07-23 23:17:21', '2018-07-23 23:17:21'),
(21, 1, 'Duyệt đơn hàng id: 1', 'don-hang', '2018-07-23 23:17:24', '2018-07-23 23:17:24'),
(22, 1, 'Thêm thông số kỹ thuật của sản phẩm 29', 'san-pham', '2018-07-23 23:26:00', '2018-07-23 23:26:00'),
(23, 1, 'Sửa sản phẩm id: 26', 'san-pham', '2018-07-24 00:56:20', '2018-07-24 00:56:20'),
(24, 1, 'Duyệt đơn hàng id: 2', 'don-hang', '2018-07-24 01:04:48', '2018-07-24 01:04:48'),
(25, 1, 'Duyệt đơn hàng id: 11', 'don-hang', '2018-07-24 01:04:58', '2018-07-24 01:04:58'),
(26, 1, 'Thêm mới sản phẩm ', 'san-pham', '2018-07-24 01:05:59', '2018-07-24 01:05:59'),
(27, 1, 'Sửa độ hot sản phẩm id:30', 'san-pham', '2018-07-24 01:06:16', '2018-07-24 01:06:16'),
(28, 1, 'Thêm thông số kỹ thuật của sản phẩm 29', 'san-pham', '2018-07-24 01:07:45', '2018-07-24 01:07:45'),
(29, 1, 'Thêm thông số kỹ thuật của sản phẩm 30', 'san-pham', '2018-07-24 01:10:44', '2018-07-24 01:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_06_012853_create_categories_table', 1),
(4, '2018_07_06_014554_create_brands_table', 1),
(5, '2018_07_06_014810_create_attributes_table', 1),
(6, '2018_07_06_015723_create_warranty_period_table', 1),
(7, '2018_07_06_023540_create_ships_table', 1),
(8, '2018_07_06_023956_create_logs_table', 1),
(9, '2018_07_06_032156_create_products_table', 1),
(10, '2018_07_06_032452_create_rates_table', 1),
(11, '2018_07_06_032540_create_comments_table', 1),
(12, '2018_07_06_045006_create_pays_table', 1),
(13, '2018_07_06_045232_create_orders_table', 1),
(14, '2018_07_06_045341_create_order_details_table', 1),
(15, '2018_07_08_095028_create_product_att_table', 1),
(16, '2018_07_11_163331_create_slides_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `total` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `adress` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `pay_id` int(10) UNSIGNED DEFAULT NULL,
  `ship_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total`, `price`, `user_id`, `adress`, `phone`, `status`, `pay_id`, `ship_id`, `created_at`, `updated_at`) VALUES
(1, 1, '15000.00', 2, 'Ha Dong Ha Noi', 1643223422, 2, 2, 2, '2018-07-13 07:49:05', '2018-07-23 23:17:24'),
(2, 1, '999999.99', 2, 'Ha Dong Ha Noi', 1643223422, 2, 2, 1, '2018-07-13 15:21:37', '2018-07-24 01:04:48'),
(3, 2, '120000000', 2, 'Nguyễn trãi Hà Đông Hà Nội', 1643223422, 2, 2, 1, '2018-07-14 06:17:27', '2018-07-23 18:05:23'),
(4, 1, '8030000', 7, '548 Hoàn Kiếm Hà Nội', 1643223422, 2, 2, 2, '2018-07-20 04:31:34', '2018-07-22 10:16:03'),
(6, 2, '17,000,000.00', 1, 'Nguyen Trai Ha Dong', 1653351209, 1, 2, 2, '2018-07-22 02:54:51', '2018-07-22 10:16:32'),
(7, 1, '215,000.00', 10, 'số nhà 23 Trần Phú  Hà Đông Hà Nội', 153345673, 2, 2, 2, '2018-07-22 03:06:08', '2018-07-22 10:16:46'),
(8, 4, '10,450,000.00', 12, 'Nguyễn Trãi Hà Đông Hà Nội', 1653351202, 0, 2, 2, '2018-07-23 01:23:34', '2018-07-23 01:23:34'),
(9, 4, '10,450,000.00', 12, 'Nguyễn Trãi Hà Đông Hà Nội', 1653351202, 0, 2, 2, '2018-07-23 01:24:23', '2018-07-23 01:24:23'),
(10, 1, '3,500,000.00', 1, 'Nguyen Trai Ha Dong Hà Nội', 1653351209, 0, 2, 2, '2018-07-23 18:53:37', '2018-07-23 18:53:37'),
(11, 1, '3,000,000.00', 7, 'Nguyễn Trãi Hà Đông Hà Nội', 1653351209, 1, 2, 2, '2018-07-24 01:04:07', '2018-07-24 01:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `total` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `product_id`, `order_id`, `total`, `price`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, '15000.00', '2018-07-13 07:50:02', '2018-07-13 07:50:02'),
(2, 4, 2, 1, '999999.99', '2018-07-13 15:21:57', '2018-07-13 15:21:57'),
(3, 2, 3, 1, '999999.99', '2018-07-14 06:19:55', '2018-07-14 06:19:55'),
(4, 15, 3, 1, '999999.99', '2018-07-14 06:19:55', '2018-07-14 06:19:55'),
(5, 21, 4, 1, '999999.99', '2018-07-20 04:32:23', '2018-07-20 04:32:23'),
(6, 22, 7, 1, '215000.00', '2018-07-22 03:06:08', '2018-07-22 03:06:08'),
(7, 28, 9, 3, '2150000', '2018-07-23 01:24:23', '2018-07-23 01:24:23'),
(8, 26, 9, 1, '4000000', '2018-07-23 01:24:23', '2018-07-23 01:24:23'),
(9, 29, 10, 1, '3500000', '2018-07-23 18:53:37', '2018-07-23 18:53:37'),
(10, 28, 11, 1, '3000000', '2018-07-24 01:04:07', '2018-07-24 01:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE `pays` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Trả qua thẻ tín dụng', '<p>Trả tiền qua thẻ t&iacute;n dụng với ng&acirc;n h&agrave;ng&nbsp;</p>', 1, '2018-07-12 13:52:59', '2018-07-22 20:30:54'),
(2, 'Trả tiền khi nhận hàng', 'Trả tiền khi nhận hàng', 1, '2018-07-12 13:52:59', '2018-07-22 20:28:53');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_sale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `hot` char(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `avg_rate` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `warranty_period_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `status`, `price`, `price_sale`, `description`, `image`, `total`, `hot`, `view`, `avg_rate`, `category_id`, `brand_id`, `warranty_period_id`, `created_at`, `updated_at`) VALUES
(1, 'Xiaomi Mi A1 Ram', 1, '1250000', '1200000', '<p>Ch&iacute;nh h&atilde;ng Digiworld ph&acirc;n phối. Nguy&ecirc;n seal. Mới 100%.</p>', 'img02.jpg', 101, '0', 16, '0', 3, 7, 2, '2018-07-12 14:04:09', '2018-07-20 01:03:21'),
(2, 'Headphone', 1, '1000000', '0.00', '<p>H&agrave;ng Ch&iacute;nh h&atilde;ng ch&acirc;t lượng ok</p>', 'img08.jpg', 100, '1', 45, '0', 2, 1, 1, '2018-07-12 14:04:09', '2018-07-18 20:06:19'),
(3, 'Máy nghe nhạc ', 1, '1000000', '999999', 'Chính hãng Digiworld phân phối. Nguyên seal. Mới 100%.', 'img06.jpg', 100, '1', 19, '3', 3, 7, 2, '2018-07-12 14:05:12', '2018-07-24 01:00:56'),
(4, 'samrtphone', 1, '500000.00', '45999', '<p>H&agrave;ng Ch&iacute;nh h&atilde;ng ch&acirc;t lượng ok</p>', 'img14.jpg', 100, '0', 2, '0', 2, 1, 1, '2018-07-12 14:05:12', '2018-07-19 02:51:47'),
(5, 'Oppo N4 Samrtphone', 1, '5600000', '5400000', '<p>sản phẩm tốt</p>', 'img12.jpg', 100, '0', 2, '0', 4, 5, 2, '2018-07-12 18:30:17', '2018-07-19 05:19:33'),
(6, 'WIkO đời mới 9x', 1, '9000000', '8900000', '<p>m&aacute;y chay tot</p>', 'img03.jpg', 100, '0', 6, '0', 5, 3, 3, '2018-07-12 18:31:14', '2018-07-23 04:01:46'),
(7, 'Máy ảnh', 1, '1500000', '1350000', '<p>M&aacute;y tốt</p>', 'img11.jpg', 100, '0', 2, '0', 6, 7, 4, '2018-07-12 19:41:20', '2018-07-17 10:08:19'),
(9, 'tai nghe', 1, '8000000', '0.00', '<p>ok</p>', 'img04.jpg', 100, '0', 13, '4', 7, 3, 4, '2018-07-12 19:42:35', '2018-07-19 07:12:06'),
(10, 'loa', 1, '6000000', '0.00', '<p>ok</p>', 'img01.jpg', 101, '0', 5, '5', 8, 1, 3, '2018-07-12 19:43:07', '2018-07-19 05:15:05'),
(11, 'Máy nghe đài caset', 1, '4500000', '0.00', '<p>ok</p>', 'img14.jpg', 100, '0', 4, '2', 3, 5, 2, '2018-07-12 20:07:15', '2018-07-17 20:29:11'),
(12, 'Smart Phone OOP', 1, '7000000', '0.00', '<p>ok</p>', 'img15.jpg', 0, '0', 6, '2', 4, 5, 3, '2018-07-12 20:09:04', '2018-07-17 20:20:30'),
(13, 'Loa cầm tay', 1, '3500000', '2700000', '<p>Loa cầm tay tiện lợi</p>', 'img09.jpg', 100, '0', 10, '4.5', 8, 8, 4, '2018-07-13 07:48:00', '2018-07-22 18:26:42'),
(14, 'Sam sung galaxy s8 plus', 1, '7000000', '6500000', '<p>Sam sung galaxy s8 plus</p>', 'img10.jpg', 100, '0', 7, '0', 4, 1, 3, '2018-07-14 05:50:51', '2018-07-19 05:20:21'),
(15, 'SAM SUNG GALAXY S9', 1, '9000000', '8999999', '<p>SAM SUNG GALAXY S9</p>', 'img06.jpg', 0, '0', 22, '3.5', 1, 1, 1, '2018-07-14 05:50:51', '2018-07-24 00:26:11'),
(16, 'máy chụp ảnh', 1, '2500000', '2700000', '<p>m&aacute;y chụp ảnh</p>', 'img05.jpg', 100, '0', 104, '3', 6, 6, 2, '2018-07-14 00:09:51', '2018-07-19 20:30:37'),
(17, 'Thiết bịnghe len', 1, '5000000', '4500000', '<p>Thiet bi nghe len</p>', 'img14.jpg', 100, '0', 29, '0', 5, 1, 2, '2018-07-14 01:18:21', '2018-07-16 10:55:53'),
(18, 'Galaxy X9', 1, '5000000', '4500000', '<p>Redmi 6 Pro l&agrave; smartphone Redmi đầu ti&ecirc;n của Xiaomi c&oacute; thiết kế m&agrave;n h&igrave;nh tai thỏ.&nbsp;</p>', 'img12.jpg', 100, '0', 20, '4', 4, 5, 2, '2018-07-16 20:20:20', '2018-07-21 11:08:26'),
(19, 'Thiết bị khác', 1, '6250000', '0', '<p><strong>Ph&iacute;a sau m&aacute;y c&oacute; cặp camera k&eacute;p xếp dọc giống như camera k&eacute;p tr&ecirc;n iPhone X v&agrave; cảm biến v&acirc;n tay được đặt ở ch&iacute;nh giữa nửa tr&ecirc;n. </strong></p>\r\n\r\n<p><strong>Thực tế thiết kế n&agrave;y kh&ocirc;ng xấu, n&oacute; thậm ch&iacute; tr&ocirc;ng kh&aacute; ổn.</strong></p>', 'img06.jpg', 0, '0', 27, '2.5', 6, 3, 4, '2018-07-16 20:24:35', '2018-07-23 02:31:39'),
(20, 'Điện thoại Samsung Galaxy J7 Prime', 1, '6150000', '5000000', '<h1>Điện thoại Samsung Galaxy J7 Prime</h1>', 'img02.jpg', 100, '0', 75, '3.5', 4, 1, 4, '2018-07-16 20:26:08', '2018-07-22 07:30:07'),
(21, 'Máy nghe đài caset s', 1, '8150000', '8000000', '<h3>Thiết kế thanh lịch</h3>\r\n\r\n<p>Kh&ocirc;ng cần qu&aacute; cầu k&igrave; hay chau chuốt nhưng Samsung Galaxy J6 vẫn thu h&uacute;t bạn ngay từ c&aacute;i nh&igrave;n đầu ti&ecirc;n nhờ lối thiết kế đơn giản nhưng vẫn kh&aacute; phong c&aacute;ch v&agrave; hiện đại.</p>', 'img11.jpg', 100, '1', 49, '4', 2, 1, 4, '2018-07-19 02:19:55', '2018-07-23 02:31:55'),
(22, 'USB 16GB', 1, '350000', '250000', '<p>USB 16GB</p>', 'img09.jpg', 101, '0', 18, '4.5', 9, 1, 1, '0000-00-00 00:00:00', '2018-07-23 02:50:43'),
(23, 'Máy cảm ứng', 1, '9150000', '8500000', '<p>Với thiết kế đơn giản, M&aacute;y cảm ứng hoạt động tr&ecirc;n nền tảng S40 thế hệ thứ 6 l&agrave; thiết bị đầu cuối c&oacute; gi&aacute; th&agrave;nh hợp l&yacute; nhất. M&aacute;y cảm ứng sẵn s&agrave;ng đ&aacute;p ứng việc sử dụng mạng 3G tại Việt Nam.</p>', 'img07.jpg', 100, '1', 25, '3.75', 4, 6, 4, '2018-07-22 00:27:27', '2018-07-23 22:43:45'),
(24, 'Smart Phone nửa quả táo', 1, '8000000', '7999000', '<p>Sản phẩm chất lượng s&ocirc; lượng c&oacute; hạn</p>', 'img06.jpg', 100, '1', 3, '3', 1, 6, 3, '2018-07-22 18:39:31', '2018-07-22 21:14:43'),
(25, 'Đầu kỹ thuật số', 1, '5150000', '4000000', '<p>&nbsp; &nbsp; Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque fuga placeat laudantium eveniet sed debitis vitae earum velit quibusdam quas dolorum, voluptate, in provident nihil maiores vel suscipit, iusto quo.<br />\r\n&nbsp;</p>', 'img01.jpg', 100, '0', 3, '2', 1, 1, 2, '2018-07-22 19:41:58', '2018-07-22 21:14:33'),
(26, 'Đầu kỹ thuật số', 1, '5150000', '4000000', '<p>&nbsp; &nbsp; Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque fuga placeat laudantium eveniet sed debitis vitae earum velit quibusdam quas dolorum, voluptate, in provident nihil maiores vel suscipit, iusto quo.<br />\r\n&nbsp;</p>', 'img02.jpg', 99, '0', 14, '3.5', 1, 1, 2, '2018-07-22 19:42:38', '2018-07-24 00:56:20'),
(27, 'Đầu kỹ thuật số', 1, '5150000', '4000000', '<p>&nbsp; &nbsp; Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque fuga placeat laudantium eveniet sed debitis vitae earum velit quibusdam quas dolorum, voluptate, in provident nihil maiores vel suscipit, iusto quo.<br />\r\n&nbsp;</p>', 'img01.jpg', 100, '0', 10, '2', 1, 1, 2, '2018-07-22 19:42:43', '2018-07-23 03:01:29'),
(28, 'Tai nghe pro', 1, '3000000', '2500000', '<p>M&aacute;y nghe đ&agrave;i&nbsp;</p>', 'img08.jpg', 96, '1', 73, '3.75', 3, 1, 2, '2018-07-22 19:56:08', '2018-07-24 01:04:07'),
(29, 'Sản phẩm hot', 1, '4000000', '3500000', '<p>Sản phẩm chất lượng&nbsp;</p>', 'img02.jpg', 99, '1', 22, '3.5', 2, 1, 1, '2018-07-23 18:45:52', '2018-07-24 01:02:58'),
(30, 'fdfsafsdfs', 1, '2150000', '0', '<p>&agrave;dasdfdfdfsdfasd</p>', 'img02.jpg', 100, '1', 0, '0', 2, 1, 1, '2018-07-24 01:05:59', '2018-07-24 01:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `product_atts`
--

CREATE TABLE `product_atts` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_atts`
--

INSERT INTO `product_atts` (`id`, `attribute_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-07-15 01:03:14', '2018-07-15 01:03:14'),
(2, 4, 1, '2018-07-15 01:03:14', '2018-07-15 01:03:14'),
(4, 6, 1, '2018-07-15 01:03:29', '2018-07-15 01:03:29'),
(5, 2, 1, '2018-07-15 01:03:49', '2018-07-15 01:03:49'),
(6, 3, 1, '2018-07-15 01:03:49', '2018-07-15 01:03:49'),
(7, 10, 1, '2018-07-15 01:34:52', '2018-07-15 01:34:52'),
(18, 5, 1, '2018-07-15 08:22:36', '2018-07-15 08:22:36'),
(19, 8, 1, '2018-07-15 08:22:36', '2018-07-15 08:22:36'),
(20, 9, 1, '2018-07-15 08:22:36', '2018-07-15 08:22:36'),
(21, 1, 5, '2018-07-15 09:48:01', '2018-07-15 09:48:01'),
(22, 2, 5, '2018-07-15 09:48:01', '2018-07-15 09:48:01'),
(23, 3, 5, '2018-07-15 09:48:01', '2018-07-15 09:48:01'),
(24, 5, 5, '2018-07-15 09:48:01', '2018-07-15 09:48:01'),
(25, 6, 5, '2018-07-15 09:48:01', '2018-07-15 09:48:01'),
(26, 7, 5, '2018-07-15 09:48:01', '2018-07-15 09:48:01'),
(27, 9, 5, '2018-07-15 09:48:01', '2018-07-15 09:48:01'),
(28, 1, 2, '2018-07-15 18:50:43', '2018-07-15 18:50:43'),
(29, 2, 2, '2018-07-15 18:50:44', '2018-07-15 18:50:44'),
(30, 3, 2, '2018-07-15 18:50:44', '2018-07-15 18:50:44'),
(31, 4, 2, '2018-07-15 18:50:44', '2018-07-15 18:50:44'),
(32, 5, 2, '2018-07-15 18:50:44', '2018-07-15 18:50:44'),
(33, 6, 2, '2018-07-15 18:50:44', '2018-07-15 18:50:44'),
(34, 7, 2, '2018-07-15 18:50:44', '2018-07-15 18:50:44'),
(35, 8, 2, '2018-07-15 18:50:44', '2018-07-15 18:50:44'),
(36, 9, 2, '2018-07-15 18:50:44', '2018-07-15 18:50:44'),
(37, 10, 2, '2018-07-15 18:50:44', '2018-07-15 18:50:44'),
(38, 1, 3, '2018-07-19 02:23:10', '2018-07-19 02:23:10'),
(39, 2, 3, '2018-07-19 02:23:10', '2018-07-19 02:23:10'),
(40, 3, 3, '2018-07-19 02:23:10', '2018-07-19 02:23:10'),
(41, 4, 3, '2018-07-19 02:23:10', '2018-07-19 02:23:10'),
(42, 5, 3, '2018-07-19 02:23:10', '2018-07-19 02:23:10'),
(43, 6, 3, '2018-07-19 02:23:10', '2018-07-19 02:23:10'),
(44, 7, 3, '2018-07-19 02:23:10', '2018-07-19 02:23:10'),
(45, 8, 3, '2018-07-19 02:23:10', '2018-07-19 02:23:10'),
(46, 9, 3, '2018-07-19 02:23:10', '2018-07-19 02:23:10'),
(47, 10, 3, '2018-07-19 02:23:10', '2018-07-19 02:23:10'),
(48, 3, 4, '2018-07-19 02:23:27', '2018-07-19 02:23:27'),
(49, 4, 4, '2018-07-19 02:23:27', '2018-07-19 02:23:27'),
(50, 5, 4, '2018-07-19 02:23:27', '2018-07-19 02:23:27'),
(51, 7, 4, '2018-07-19 02:23:27', '2018-07-19 02:23:27'),
(52, 9, 4, '2018-07-19 02:23:27', '2018-07-19 02:23:27'),
(53, 10, 4, '2018-07-19 02:23:27', '2018-07-19 02:23:27'),
(54, 3, 21, '2018-07-19 02:24:05', '2018-07-19 02:24:05'),
(55, 4, 21, '2018-07-19 02:24:05', '2018-07-19 02:24:05'),
(56, 5, 21, '2018-07-19 02:24:05', '2018-07-19 02:24:05'),
(57, 6, 21, '2018-07-19 02:24:05', '2018-07-19 02:24:05'),
(58, 8, 21, '2018-07-19 02:24:05', '2018-07-19 02:24:05'),
(59, 9, 21, '2018-07-19 02:24:05', '2018-07-19 02:24:05'),
(60, 3, 20, '2018-07-19 02:24:15', '2018-07-19 02:24:15'),
(61, 4, 20, '2018-07-19 02:24:15', '2018-07-19 02:24:15'),
(62, 5, 20, '2018-07-19 02:24:15', '2018-07-19 02:24:15'),
(63, 6, 20, '2018-07-19 02:24:15', '2018-07-19 02:24:15'),
(64, 7, 20, '2018-07-19 02:24:15', '2018-07-19 02:24:15'),
(65, 8, 20, '2018-07-19 02:24:15', '2018-07-19 02:24:15'),
(66, 9, 20, '2018-07-19 02:24:15', '2018-07-19 02:24:15'),
(67, 10, 20, '2018-07-19 02:24:16', '2018-07-19 02:24:16'),
(68, 1, 19, '2018-07-19 02:24:25', '2018-07-19 02:24:25'),
(69, 3, 19, '2018-07-19 02:24:25', '2018-07-19 02:24:25'),
(70, 4, 19, '2018-07-19 02:24:25', '2018-07-19 02:24:25'),
(71, 5, 19, '2018-07-19 02:24:25', '2018-07-19 02:24:25'),
(72, 7, 19, '2018-07-19 02:24:25', '2018-07-19 02:24:25'),
(73, 8, 19, '2018-07-19 02:24:25', '2018-07-19 02:24:25'),
(74, 9, 19, '2018-07-19 02:24:25', '2018-07-19 02:24:25'),
(75, 1, 18, '2018-07-19 02:24:34', '2018-07-19 02:24:34'),
(76, 2, 18, '2018-07-19 02:24:34', '2018-07-19 02:24:34'),
(77, 3, 18, '2018-07-19 02:24:34', '2018-07-19 02:24:34'),
(78, 5, 18, '2018-07-19 02:24:34', '2018-07-19 02:24:34'),
(79, 8, 18, '2018-07-19 02:24:34', '2018-07-19 02:24:34'),
(80, 9, 18, '2018-07-19 02:24:34', '2018-07-19 02:24:34'),
(81, 10, 18, '2018-07-19 02:24:34', '2018-07-19 02:24:34'),
(82, 1, 17, '2018-07-19 02:24:44', '2018-07-19 02:24:44'),
(83, 2, 17, '2018-07-19 02:24:44', '2018-07-19 02:24:44'),
(84, 3, 17, '2018-07-19 02:24:44', '2018-07-19 02:24:44'),
(85, 4, 17, '2018-07-19 02:24:44', '2018-07-19 02:24:44'),
(86, 6, 17, '2018-07-19 02:24:44', '2018-07-19 02:24:44'),
(87, 8, 17, '2018-07-19 02:24:44', '2018-07-19 02:24:44'),
(88, 9, 17, '2018-07-19 02:24:45', '2018-07-19 02:24:45'),
(92, 4, 16, '2018-07-19 07:43:11', '2018-07-19 07:43:11'),
(95, 14, 16, '2018-07-19 07:43:11', '2018-07-19 07:43:11'),
(96, 15, 16, '2018-07-19 07:43:11', '2018-07-19 07:43:11'),
(98, 11, 16, '2018-07-19 07:43:11', '2018-07-19 07:43:11'),
(99, 12, 16, '2018-07-19 07:43:11', '2018-07-19 07:43:11'),
(100, 13, 16, '2018-07-19 07:43:11', '2018-07-19 07:43:11'),
(137, 1, 16, '2018-07-19 07:59:27', '2018-07-19 07:59:27'),
(138, 2, 16, '2018-07-19 07:59:28', '2018-07-19 07:59:28'),
(139, 3, 16, '2018-07-19 07:59:28', '2018-07-19 07:59:28'),
(164, 1, 22, '2018-07-21 19:00:53', '2018-07-21 19:00:53'),
(167, 4, 22, '2018-07-21 12:03:33', '2018-07-21 12:03:33'),
(168, 3, 22, '2018-07-21 12:04:25', '2018-07-21 12:04:25'),
(169, 10, 22, '2018-07-21 12:04:36', '2018-07-21 12:04:36'),
(170, 1, 23, '2018-07-22 02:25:15', '2018-07-22 02:25:15'),
(171, 2, 23, '2018-07-22 02:25:15', '2018-07-22 02:25:15'),
(172, 3, 23, '2018-07-22 02:25:15', '2018-07-22 02:25:15'),
(173, 4, 23, '2018-07-22 02:25:15', '2018-07-22 02:25:15'),
(174, 5, 23, '2018-07-22 02:25:15', '2018-07-22 02:25:15'),
(175, 6, 23, '2018-07-22 02:25:15', '2018-07-22 02:25:15'),
(176, 14, 23, '2018-07-22 02:25:34', '2018-07-22 02:25:34'),
(177, 12, 23, '2018-07-22 02:25:34', '2018-07-22 02:25:34'),
(178, 9, 23, '2018-07-22 02:25:34', '2018-07-22 02:25:34'),
(179, 1, 24, '2018-07-22 18:39:52', '2018-07-22 18:39:52'),
(180, 2, 24, '2018-07-22 18:39:52', '2018-07-22 18:39:52'),
(181, 3, 24, '2018-07-22 18:39:52', '2018-07-22 18:39:52'),
(182, 4, 24, '2018-07-22 18:39:52', '2018-07-22 18:39:52'),
(183, 5, 24, '2018-07-22 18:39:52', '2018-07-22 18:39:52'),
(184, 6, 24, '2018-07-22 18:39:52', '2018-07-22 18:39:52'),
(185, 17, 24, '2018-07-22 18:39:52', '2018-07-22 18:39:52'),
(186, 13, 24, '2018-07-22 18:39:52', '2018-07-22 18:39:52'),
(187, 8, 24, '2018-07-22 18:39:52', '2018-07-22 18:39:52'),
(188, 2, 28, '2018-07-22 20:06:07', '2018-07-22 20:06:07'),
(189, 3, 28, '2018-07-22 20:06:07', '2018-07-22 20:06:07'),
(190, 15, 28, '2018-07-22 20:06:08', '2018-07-22 20:06:08'),
(191, 12, 28, '2018-07-22 20:06:08', '2018-07-22 20:06:08'),
(192, 10, 28, '2018-07-22 20:06:08', '2018-07-22 20:06:08'),
(193, 1, 29, '2018-07-23 18:46:08', '2018-07-23 18:46:08'),
(194, 3, 29, '2018-07-23 18:46:08', '2018-07-23 18:46:08'),
(195, 5, 29, '2018-07-23 18:46:08', '2018-07-23 18:46:08'),
(196, 16, 29, '2018-07-23 18:46:08', '2018-07-23 18:46:08'),
(197, 12, 29, '2018-07-23 18:46:08', '2018-07-23 18:46:08'),
(198, 8, 29, '2018-07-23 18:46:08', '2018-07-23 18:46:08'),
(199, 6, 29, '2018-07-23 23:26:00', '2018-07-23 23:26:00'),
(200, 2, 30, '2018-07-24 01:10:44', '2018-07-24 01:10:44'),
(201, 3, 30, '2018-07-24 01:10:44', '2018-07-24 01:10:44'),
(202, 4, 30, '2018-07-24 01:10:44', '2018-07-24 01:10:44'),
(203, 15, 30, '2018-07-24 01:10:44', '2018-07-24 01:10:44'),
(204, 12, 30, '2018-07-24 01:10:44', '2018-07-24 01:10:44'),
(205, 9, 30, '2018-07-24 01:10:44', '2018-07-24 01:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `province` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `province`) VALUES
(1, 'Hà Nội'),
(2, 'TP HCM');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `rate` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `rate`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '3', 1, 2, '2018-07-15 21:17:48', '2018-07-15 21:30:48'),
(4, '2', 1, 14, '2018-07-15 21:31:55', '2018-07-15 21:31:55'),
(5, '3', 7, 15, '2018-07-15 21:32:48', '2018-07-17 19:07:35'),
(7, '3', 1, 16, '2018-07-16 20:02:51', '2018-07-19 09:30:35'),
(8, '4', 7, 18, '2018-07-17 10:22:27', '2018-07-18 02:06:47'),
(9, '2', 7, 2, '2018-07-17 19:17:04', '2018-07-17 19:17:04'),
(10, '4', 6, 2, '2018-07-18 02:17:48', '2018-07-18 02:17:48'),
(12, '3', 8, 5, '2018-07-18 02:18:37', '2018-07-18 02:18:37'),
(13, '2', 2, 17, '2018-07-18 02:18:37', '2018-07-18 02:18:37'),
(14, '5', 5, 2, '2018-07-18 02:19:23', '2018-07-18 02:19:23'),
(15, '4', 4, 2, '2018-07-18 02:19:23', '2018-07-18 02:19:23'),
(16, '3', 6, 14, '2018-07-18 02:20:13', '2018-07-18 02:20:13'),
(17, '3', 8, 6, '2018-07-18 02:20:13', '2018-07-18 02:20:13'),
(18, '2', 7, 12, '2018-07-17 20:20:12', '2018-07-17 20:20:12'),
(19, '2', 7, 11, '2018-07-17 20:23:06', '2018-07-17 20:23:06'),
(20, '5', 1, 10, '2018-07-17 21:09:27', '2018-07-17 21:09:27'),
(21, '4', 1, 9, '2018-07-17 21:10:17', '2018-07-17 21:10:17'),
(22, '4', 1, 13, '2018-07-17 21:16:08', '2018-07-17 21:16:08'),
(23, '5', 7, 13, '2018-07-17 21:16:49', '2018-07-17 21:16:49'),
(24, '3', 7, 20, '2018-07-17 21:33:53', '2018-07-18 02:03:03'),
(25, '2', 1, 19, '2018-07-17 21:40:15', '2018-07-17 21:40:15'),
(26, '4', 1, 20, '2018-07-18 19:03:08', '2018-07-18 19:13:16'),
(27, '4', 1, 21, '2018-07-19 07:25:09', '2018-07-19 18:44:44'),
(28, '3', 7, 19, '2018-07-19 09:57:07', '2018-07-19 09:57:10'),
(29, '4', 7, 21, '2018-07-19 18:35:17', '2018-07-19 18:37:01'),
(30, '3', 1, 3, '2018-07-21 13:09:42', '2018-07-21 13:31:15'),
(31, '4', 7, 22, '2018-07-21 13:32:51', '2018-07-21 13:32:51'),
(32, '5', 10, 22, '2018-07-21 13:39:47', '2018-07-21 21:57:32'),
(33, '4', 7, 23, '2018-07-22 07:29:24', '2018-07-22 07:29:24'),
(34, '2', 10, 23, '2018-07-22 07:51:24', '2018-07-22 07:53:42'),
(35, '4', 14, 28, '2018-07-22 21:13:46', '2018-07-22 21:13:46'),
(36, '2', 14, 27, '2018-07-22 21:14:10', '2018-07-22 21:14:10'),
(37, '5', 14, 26, '2018-07-22 21:14:23', '2018-07-22 21:14:23'),
(38, '2', 14, 25, '2018-07-22 21:14:33', '2018-07-22 21:14:33'),
(39, '3', 14, 24, '2018-07-22 21:14:42', '2018-07-22 21:14:42'),
(40, '4', 12, 28, '2018-07-22 23:30:36', '2018-07-23 07:53:29'),
(41, '5', 1, 23, '2018-07-23 03:03:28', '2018-07-23 03:03:40'),
(42, '2', 12, 26, '2018-07-23 01:23:19', '2018-07-23 02:50:49'),
(43, '5', 5, 28, '2018-07-23 16:09:36', '2018-07-23 16:11:23'),
(44, '4', 7, 29, '2018-07-23 21:54:49', '2018-07-24 01:02:38'),
(45, '2', 1, 28, '2018-07-23 22:37:26', '2018-07-23 22:37:26'),
(46, '4', 1, 15, '2018-07-23 22:39:20', '2018-07-23 22:39:23'),
(47, '4', 14, 23, '2018-07-23 22:43:44', '2018-07-23 22:43:44'),
(48, '3', 14, 29, '2018-07-23 23:20:59', '2018-07-23 23:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `ships`
--

CREATE TABLE `ships` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ships`
--

INSERT INTO `ships` (`id`, `name`, `description`, `price`, `adress`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Giao hàng nhanh', 'Ngày nhận hàng: ngày hôm sau của ngày đặt hàng', '50000.00', 'Nội thành Hà Nội', 0, '2018-07-12 13:51:41', '2018-07-22 20:32:00'),
(2, 'Giao hàng tiêu chuẩn', 'Ngày nhận hàng: 2-3 ngày sau khi đặt hàng', '25000.00', 'Nội thành Hà Nội', 1, '2018-07-12 13:51:41', '2018-07-14 17:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `name`, `content`, `link`, `created_at`, `updated_at`) VALUES
(1, 'product', 'Sale sản phẩm', 'cat-slider-img1.jpg', '2018-07-13 08:18:40', '2018-07-23 18:50:32'),
(2, 'product', 'Sale sản phẩm', 'cat-slider-img1.jpg', '2018-07-13 08:19:15', '2018-07-13 08:19:15'),
(3, 'home', 'One more for good measure.', 'slider-img1.jpg', '2018-07-14 03:04:14', '2018-07-14 03:04:14'),
(7, 'home', 'Big Sale', 'banner_2_product.png', '2018-07-14 02:00:05', '2018-07-17 10:14:14'),
(8, 'home', 'a', 'adv_3.png', '2018-07-14 02:01:15', '2018-07-14 02:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `adress`, `grade`, `status`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vũ Thị Thúy', '1653351209', 'Nguyen Trai Ha Dong Hà Nội', 'boss', 1, 'vuthithuy10197@gmail.com', '$2y$10$StUorlrnvTPQ/ZImPP6VfODGaIQHrANXvwXG6VHEdHx47Ax5bZ1K2', 'kVCwDtvitN929EMuiqU7x1CfGmUiRFtYKb0Z9LrjepHajwwCQUj9OiYhYDca', '2018-07-12 03:01:04', '2018-07-22 19:07:29'),
(2, 'thuyvu', '1653351202', 'Hà đông, Hà Nội', 'customer', 1, 'admin@gmail.com', '$2y$10$363Ess0zNihDhxt91BQtMOwWkS/aSshYcTu8eJ8JXs/LyJljFDxim', NULL, '2018-07-12 07:26:11', '2018-07-14 00:17:48'),
(3, 'admin', '1653351209', 'Nguyen Trai Ha Dong', 'customer', 1, 'vuthithuy@gmail.com', '$2y$10$.xYu.LjXp4jKn8KZhGL8Eepk3qLVxnBDLDyVt18HSVqz7VeWUvAIa', NULL, '2018-07-13 07:47:29', '2018-07-13 07:47:29'),
(4, 'Vũ Thị Thanh', '1653351209', 'Nguyen Trai Ha Dong', 'customer', 1, 'thanh@gmail.com', '$2y$10$RN7rgb05fhOFphVldAGKcexO9ymsP7knFDDw047ImNNZ82Bryaq9C', NULL, '2018-07-14 00:17:33', '2018-07-14 00:17:33'),
(5, 'thanh ha', '1653351202', 'Nguyễn Trãi Hà Đông Hà Nội', 'customer', 1, 'thanhha@gmail.com', '$2y$10$G8CJl8Uo6VxeBKrHuqzj0eQkZYURPbJhIDDD4m2XoOA6EspzesV/y', 'b6SrTZeWnvflt4hHKnMRNnSyBYV5onHQtUv00C4U2ZEHfIf8alRlPitfjDQH', '2018-07-14 12:33:53', '2018-07-23 15:46:35'),
(6, 'hanh', '1653351202', 'Mỹ Đình Hà Nội', 'customer', 1, 'hanh@gmail.com', '$2y$10$2ATfahJWc21YwX5sP4wxXOKj0kqc6XdhaxebD8q4e/QNqb2fKtV5a', 'lH8I60QtStcXF8ZblHAAB7DzhlCRZYOENGwJj6QLhcq4Nu1aYrdpOyVhK59h', '2018-07-14 13:02:34', '2018-07-14 13:02:34'),
(7, 'Hanana', '01653351209', 'Nguyễn Trãi Hà Đông Hà Nội', 'customer', 1, 'hanana@gmail.com', '$2y$10$EnQHmCF4ynaZ0B/Vkuo28eiRCt2Ak7lf/FVxJodl4/ZGBsHETwcZu', 'nMgfOYBjtfwsldeZtWVE8kypLNCmjesADn6beB6AgVgb52pQzODpMUzaVRC0', '2018-07-15 19:15:58', '2018-07-15 19:15:58'),
(8, 'thuyvu', '01653351203', 'Hà đông, Hà Nội', 'admin', 0, 'vuthithuy11101997@gmail.com', '$2y$10$I.BZjqo2Hm0l8bGHya/pAu78.8lLb/YafjF3IrqEo.R3U2QtmUZUG', 'I5JTxgPlDE3hD9YEl0XmdGd0dtYXv8mda7J9UL9KRtS54PozK5yMdIS10kWq', '2018-07-16 21:00:03', '2018-07-23 22:50:09'),
(9, 'hung', '01653351202', 'hung@gmail.com', 'customer', 1, 'hung@gmail.com', '$2y$10$G2lI4odWyFnqqdk9gTw1b.HW1mHDvA5ZImuTT250TC1D38oI3ba2C', NULL, '2018-07-19 18:40:25', '2018-07-19 18:40:25'),
(10, 'Phương diệu', '0153345673', 'Nguyễn Trãi Hà Đông Hà Nội', 'customer', 1, 'phuongdieu@gmail.com', '$2y$10$4O4iRF9S9T8R68g5Mg0aN.6o.pT8z8zdNIh7CcYqdAiWkGexyYRvy', 'xrnthCrmEz9znWfWDhR7viJDfwYIALn4tGn41xxg3JS0bn8YViN9eARZsoZY', '2018-07-19 18:42:55', '2018-07-21 10:42:14'),
(11, 'Hạnh Sakura', '10653351209', 'Ninh Giang Hai Duong', 'customer', 1, 'hanhsakura@gmail.com', '$2y$10$YGtU9zNrJTC7oREXPMNf5eloPXUioSypBsQQ3iZKV.mc2GRmKbnmm', NULL, '2018-07-21 10:51:40', '2018-07-21 10:51:40'),
(12, 'Dương Huy', '01653351202', 'Nguyễn Trãi Hà Đông Hà Nội', 'customer', 1, 'duonghuy@gmail.com', '$2y$10$ZOLjJejjPk/scwXwVO7KEuNuonnSQwmjcOlmUuHcF/.qWvFsHoyWS', '39tzeCMkzoDVYRJInPCEfBXuHuHaPWFkZJ4ZqN8omZ98Z3xX4tGWnpR8wZTN', '2018-07-22 18:47:02', '2018-07-22 18:48:04'),
(13, 'Dương Vui', '01653351202', 'Nguyễn Trãi Hà Đông Hà Nội', 'admin', 1, 'duongvui@gmail.com', '$2y$10$oWbJmiHd18zqg./uo/q.VungTxNRkTnrMeJl.XupAQq/Vl3zN6wbq', NULL, '2018-07-22 19:15:18', '2018-07-22 21:22:24'),
(14, 'shopMobile', '01653351209', 'Nguyễn Trãi Hà Đông Hà Nội', 'admin', 1, 'shop1@gmail.com', '$2y$10$kWjeX/0u3HaThaWwEDZb2ui3jWB09rL9tXUKjgVAln25WwyE8tf5O', '3ntbUJ1uGno9Qiw2K7JgLH8A87lL08Z08EMTyTdbgtiuaceBN67NL9V3fqFf', '2018-07-22 19:15:44', '2018-07-23 22:25:49'),
(15, 'Vũ Thị Lan', '01653351202', 'Nguyễn Trãi Hà Đông Hà Nội', 'customer', 1, 'lan@gmail.com', '$2y$10$ABh9rNWh5dSegHdnxNjUxe3oWarrSEQ/rBTOFdL4s49YJ.G1pf5fu', 'Rv76fiK1ae09v91VZNf4KSeGYAqWpCor7TtbbzDdOUDyNsq7pbqSjtXjquun', '2018-07-24 00:16:54', '2018-07-24 00:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `warranty_periods`
--

CREATE TABLE `warranty_periods` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'months',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warranty_periods`
--

INSERT INTO `warranty_periods` (`id`, `time`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 'tháng', 1, '2018-07-12 13:50:24', '2018-07-12 13:50:24'),
(2, 12, 'tháng', 1, '2018-07-12 13:50:24', '2018-07-12 13:50:24'),
(3, 18, 'tháng', 1, '2018-07-12 13:50:38', '2018-07-12 13:50:38'),
(4, 2, 'năm', 1, '2018-07-12 13:50:38', '2018-07-12 13:50:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_name_unique` (`name`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_pay_id_foreign` (`pay_id`),
  ADD KEY `orders_ship_id_foreign` (`ship_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_warranty_period_id_foreign` (`warranty_period_id`);

--
-- Indexes for table `product_atts`
--
ALTER TABLE `product_atts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_att_attribute_id_foreign` (`attribute_id`),
  ADD KEY `product_att_product_id_foreign` (`product_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rates_user_id_foreign` (`user_id`),
  ADD KEY `rates_product_id_foreign` (`product_id`);

--
-- Indexes for table `ships`
--
ALTER TABLE `ships`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ships_name_unique` (`name`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warranty_periods`
--
ALTER TABLE `warranty_periods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `product_atts`
--
ALTER TABLE `product_atts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `ships`
--
ALTER TABLE `ships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `warranty_periods`
--
ALTER TABLE `warranty_periods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `provinces` (`id`);

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_pay_id_foreign` FOREIGN KEY (`pay_id`) REFERENCES `pays` (`id`),
  ADD CONSTRAINT `orders_ship_id_foreign` FOREIGN KEY (`ship_id`) REFERENCES `ships` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_warranty_period_id_foreign` FOREIGN KEY (`warranty_period_id`) REFERENCES `warranty_periods` (`id`);

--
-- Constraints for table `product_atts`
--
ALTER TABLE `product_atts`
  ADD CONSTRAINT `product_att_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  ADD CONSTRAINT `product_att_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `rates`
--
ALTER TABLE `rates`
  ADD CONSTRAINT `rates_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `rates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
