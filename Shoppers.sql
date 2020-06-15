-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jun 2020 pada 16.14
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_paktikum_prognet`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `name`, `profile_image`, `phone`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(1, 'ghadi_darmawan', '$2y$10$RX49vJPLp58aJ/HzRxnwk.cH8/SSRyznS2auLir4oFFg7lLK0v2yK', 'Hadi Darmawan', '1584276259.png', '088236109829', 'mPtCKORwQ4R2kg0GicTYYoIgz6XXl9sSEadXR8u6H7WfCsmZfhHoEL0xjyer', '2020-03-15 04:41:41', '2020-03-15 04:41:41', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('12288608-0096-49a9-a851-e3826c74da22', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/products/12\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'></h6><p class=\'font-weight-light small-text text-muted mb-0\'>Produk di Review</p></div></a>', '2020-05-25 21:27:32', '2020-05-25 21:26:14', '2020-05-25 21:27:32'),
('2cf11b81-6471-47e5-835e-c4ad68ed39b9', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/17\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>Wahyu</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Ada Transaksi Baru</p></div></a>', '2020-05-25 23:01:07', '2020-05-26 06:44:52', '2020-05-25 23:01:07'),
('3827c71d-4a0a-45d5-8e85-b5ef3c67cbad', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/27\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>I Gede Hadi Darmawan</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Ada Transaksi Baru</p></div></a>', NULL, '2020-06-08 13:27:20', '2020-06-08 13:27:20'),
('384b4f33-ed65-4548-8527-e60f4029ebbb', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/24\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>I Gede Hadi Darmawan</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Ada Transaksi Baru</p></div></a>', NULL, '2020-06-08 09:58:33', '2020-06-08 09:58:33'),
('3c72d0fa-470a-4e63-b884-be9c69f8de55', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/21\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>I Gede Hadi Darmawan</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Ada Transaksi Baru</p></div></a>', '2020-06-06 17:59:25', '2020-06-06 15:00:48', '2020-06-06 17:59:25'),
('3eabd9be-c5a4-4115-81ae-2641db1d8d87', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/15\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>Wahyu</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Bukti Bayar Diupload</p></div></a>', '2020-05-25 21:04:20', '2020-05-25 20:58:35', '2020-05-25 21:04:20'),
('6455b928-af99-4eef-912b-acdf25b016bf', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/19\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>I Gede Hadi Darmawan</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Bukti Bayar Diupload</p></div></a>', '2020-06-06 17:59:25', '2020-06-06 03:26:19', '2020-06-06 17:59:25'),
('6605ddcc-a820-4a7c-a5d6-93e6a8239285', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/22\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>I Gede Hadi Darmawan</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Ada Transaksi Baru</p></div></a>', '2020-06-06 17:59:25', '2020-06-06 15:11:14', '2020-06-06 17:59:25'),
('91227e3b-516a-4709-aa1f-256aad164b55', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/26\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>I Gede Hadi Darmawan</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Ada Transaksi Baru</p></div></a>', NULL, '2020-06-08 10:22:25', '2020-06-08 10:22:25'),
('91c0a3d9-f0e8-4420-b7c8-17256f9a6a05', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/products/12\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'></h6><p class=\'font-weight-light small-text text-muted mb-0\'>Product di Review</p></div></a>', '2020-05-25 21:23:50', '2020-05-25 21:11:45', '2020-05-25 21:23:50'),
('92ff9cf7-efc9-4df3-b1b8-aac13b99d07f', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/16\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>Wahyu</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Ada Transaksi Baru</p></div></a>', '2020-05-25 21:32:01', '2020-05-26 05:31:22', '2020-05-25 21:32:01'),
('93d800ba-8802-4313-b75b-8895c662405d', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/24\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>I Gede Hadi Darmawan</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Bukti Bayar Diupload</p></div></a>', NULL, '2020-06-08 04:34:19', '2020-06-08 04:34:19'),
('94501d10-334f-4e86-b4de-6bf08e4f69c3', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/15\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>Wahyu</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Ada Transaksi Baru</p></div></a>', '2020-05-25 20:54:12', '2020-05-26 04:51:24', '2020-05-25 20:54:12'),
('9ad37e96-6b25-4cd8-8102-81bde0276b4e', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/25\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>I Gede Hadi Darmawan</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Bukti Bayar Diupload</p></div></a>', NULL, '2020-06-08 04:32:42', '2020-06-08 04:32:42'),
('a042ada2-1d8e-4721-887d-346f9ee2023b', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/22\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>I Gede Hadi Darmawan</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Bukti Bayar Diupload</p></div></a>', '2020-06-06 17:59:25', '2020-06-06 17:58:57', '2020-06-06 17:59:25'),
('a3ad9509-a60a-4f6d-a78d-e3c3db08327a', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/17\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>Wahyu</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Bukti Bayar Diupload</p></div></a>', '2020-05-25 23:01:07', '2020-05-25 22:45:05', '2020-05-25 23:01:07'),
('a5c4bdb2-a674-47f2-991f-e6051ff35ab6', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/20\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>I Gede Hadi Darmawan</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Ada Transaksi Baru</p></div></a>', '2020-06-06 17:59:25', '2020-06-06 12:54:04', '2020-06-06 17:59:25'),
('c080e081-81ee-4634-b614-ba16208fdac8', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/23\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>I Gede Hadi Darmawan</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Bukti Bayar Diupload</p></div></a>', NULL, '2020-06-07 20:34:46', '2020-06-07 20:34:46'),
('de78e8d3-946a-4be2-b153-2069991934ec', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/19\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>I Gede Hadi Darmawan</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Ada Transaksi Baru</p></div></a>', '2020-06-06 17:59:25', '2020-06-06 11:25:19', '2020-06-06 17:59:25'),
('e43e31f7-314e-4b2a-947e-0e8b42538701', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/23\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>I Gede Hadi Darmawan</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Ada Transaksi Baru</p></div></a>', NULL, '2020-06-08 04:33:36', '2020-06-08 04:33:36'),
('ec3deba5-acc7-4ba6-9a66-a8f9b7440e61', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/25\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>I Gede Hadi Darmawan</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Ada Transaksi Baru</p></div></a>', NULL, '2020-06-08 10:21:46', '2020-06-08 10:21:46'),
('ed6a210f-d341-435a-9b32-0bace050267c', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/20\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>I Gede Hadi Darmawan</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Bukti Bayar Diupload</p></div></a>', '2020-06-06 17:59:25', '2020-06-06 04:55:03', '2020-06-06 17:59:25'),
('ee9e52ef-3e77-4baf-b116-3ddf13366d22', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/16\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>Wahyu</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Bukti Bayar Diupload</p></div></a>', '2020-05-25 21:32:01', '2020-05-25 21:31:49', '2020-05-25 21:32:01'),
('f2aa4a48-6ea9-40d1-9b9b-53b26bdb97a5', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/18\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>Wahyu</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Ada Transaksi Baru</p></div></a>', '2020-05-25 23:01:07', '2020-05-26 06:49:43', '2020-05-25 23:01:07'),
('fbfb8377-463e-4680-8b7e-0e776f7b08ff', 'App\\Notifications\\AdminNotification', 'App\\Admin', 1, '<a class=\'dropdown-item\' href=\'/admin/transaksi/detail/27\'><div class=\'item-content flex-grow\'><h6 class=\'ellipsis font-weight-normal\'>I Gede Hadi Darmawan</h6><p class=\'font-weight-light small-text text-muted mb-0\'>Bukti Bayar Diupload</p></div></a>', NULL, '2020-06-08 05:28:05', '2020-06-08 05:28:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('checkedout','notyet','cancelled') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `qty`, `created_at`, `updated_at`, `status`, `deleted_at`) VALUES
(62, 1, 43, 1, '2020-06-07 20:33:08', '2020-06-08 04:33:36', 'checkedout', NULL),
(63, 1, 43, 22, '2020-06-07 22:03:24', '2020-06-07 22:06:36', 'cancelled', NULL),
(64, 1, 44, 6, '2020-06-07 22:06:18', '2020-06-07 22:06:50', 'cancelled', NULL),
(65, 1, 43, 8, '2020-06-07 22:06:43', '2020-06-07 22:08:27', 'cancelled', NULL),
(66, 1, 44, 4, '2020-06-07 22:08:20', '2020-06-07 22:12:24', 'cancelled', NULL),
(67, 1, 43, 1, '2020-06-07 22:08:56', '2020-06-07 22:10:19', 'cancelled', NULL),
(68, 1, 43, 2, '2020-06-07 22:11:57', '2020-06-07 22:12:49', 'cancelled', NULL),
(69, 1, 44, 2, '2020-06-07 22:12:29', '2020-06-08 09:58:33', 'checkedout', NULL),
(70, 1, 43, 2, '2020-06-07 22:12:55', '2020-06-08 09:58:33', 'checkedout', NULL),
(71, 1, 44, 6, '2020-06-08 02:21:20', '2020-06-08 10:21:46', 'checkedout', NULL),
(72, 1, 43, 3, '2020-06-08 02:22:03', '2020-06-08 10:22:25', 'checkedout', NULL),
(73, 1, 43, 4, '2020-06-08 05:25:23', '2020-06-08 13:27:20', 'checkedout', NULL),
(74, 1, 44, 1, '2020-06-08 05:25:35', '2020-06-08 13:27:20', 'checkedout', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cities`
--

INSERT INTO `cities` (`id`, `province_id`, `city_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 17, 'Badung', '2020-05-04 08:15:23', '2020-05-04 08:15:23'),
(2, 1, 32, 'Bangli', '2020-05-04 08:15:23', '2020-05-04 08:15:23'),
(3, 1, 94, 'Buleleng', '2020-05-04 08:15:23', '2020-05-04 08:15:23'),
(4, 1, 114, 'Denpasar', '2020-05-04 08:15:23', '2020-05-04 08:15:23'),
(5, 1, 128, 'Gianyar', '2020-05-04 08:15:23', '2020-05-04 08:15:23'),
(6, 1, 161, 'Jembrana', '2020-05-04 08:15:23', '2020-05-04 08:15:23'),
(7, 1, 170, 'Karangasem', '2020-05-04 08:15:23', '2020-05-04 08:15:23'),
(8, 1, 197, 'Klungkung', '2020-05-04 08:15:23', '2020-05-04 08:15:23'),
(9, 1, 447, 'Tabanan', '2020-05-04 08:15:23', '2020-05-04 08:15:23'),
(10, 2, 27, 'Bangka', '2020-05-04 08:15:25', '2020-05-04 08:15:25'),
(11, 2, 28, 'Bangka Barat', '2020-05-04 08:15:26', '2020-05-04 08:15:26'),
(12, 2, 29, 'Bangka Selatan', '2020-05-04 08:15:26', '2020-05-04 08:15:26'),
(13, 2, 30, 'Bangka Tengah', '2020-05-04 08:15:26', '2020-05-04 08:15:26'),
(14, 2, 56, 'Belitung', '2020-05-04 08:15:26', '2020-05-04 08:15:26'),
(15, 2, 57, 'Belitung Timur', '2020-05-04 08:15:26', '2020-05-04 08:15:26'),
(16, 2, 334, 'Pangkal Pinang', '2020-05-04 08:15:26', '2020-05-04 08:15:26'),
(17, 3, 106, 'Cilegon', '2020-05-04 08:15:28', '2020-05-04 08:15:28'),
(18, 3, 232, 'Lebak', '2020-05-04 08:15:28', '2020-05-04 08:15:28'),
(19, 3, 331, 'Pandeglang', '2020-05-04 08:15:28', '2020-05-04 08:15:28'),
(20, 3, 402, 'Serang', '2020-05-04 08:15:28', '2020-05-04 08:15:28'),
(21, 3, 403, 'Serang', '2020-05-04 08:15:29', '2020-05-04 08:15:29'),
(22, 3, 455, 'Tangerang', '2020-05-04 08:15:29', '2020-05-04 08:15:29'),
(23, 3, 456, 'Tangerang', '2020-05-04 08:15:29', '2020-05-04 08:15:29'),
(24, 3, 457, 'Tangerang Selatan', '2020-05-04 08:15:29', '2020-05-04 08:15:29'),
(25, 4, 62, 'Bengkulu', '2020-05-04 08:15:30', '2020-05-04 08:15:30'),
(26, 4, 63, 'Bengkulu Selatan', '2020-05-04 08:15:30', '2020-05-04 08:15:30'),
(27, 4, 64, 'Bengkulu Tengah', '2020-05-04 08:15:30', '2020-05-04 08:15:30'),
(28, 4, 65, 'Bengkulu Utara', '2020-05-04 08:15:30', '2020-05-04 08:15:30'),
(29, 4, 175, 'Kaur', '2020-05-04 08:15:30', '2020-05-04 08:15:30'),
(30, 4, 183, 'Kepahiang', '2020-05-04 08:15:30', '2020-05-04 08:15:30'),
(31, 4, 233, 'Lebong', '2020-05-04 08:15:30', '2020-05-04 08:15:30'),
(32, 4, 294, 'Muko Muko', '2020-05-04 08:15:30', '2020-05-04 08:15:30'),
(33, 4, 379, 'Rejang Lebong', '2020-05-04 08:15:30', '2020-05-04 08:15:30'),
(34, 4, 397, 'Seluma', '2020-05-04 08:15:30', '2020-05-04 08:15:30'),
(35, 5, 39, 'Bantul', '2020-05-04 08:15:32', '2020-05-04 08:15:32'),
(36, 5, 135, 'Gunung Kidul', '2020-05-04 08:15:32', '2020-05-04 08:15:32'),
(37, 5, 210, 'Kulon Progo', '2020-05-04 08:15:32', '2020-05-04 08:15:32'),
(38, 5, 419, 'Sleman', '2020-05-04 08:15:32', '2020-05-04 08:15:32'),
(39, 5, 501, 'Yogyakarta', '2020-05-04 08:15:32', '2020-05-04 08:15:32'),
(40, 6, 151, 'Jakarta Barat', '2020-05-04 08:15:36', '2020-05-04 08:15:36'),
(41, 6, 152, 'Jakarta Pusat', '2020-05-04 08:15:36', '2020-05-04 08:15:36'),
(42, 6, 153, 'Jakarta Selatan', '2020-05-04 08:15:36', '2020-05-04 08:15:36'),
(43, 6, 154, 'Jakarta Timur', '2020-05-04 08:15:36', '2020-05-04 08:15:36'),
(44, 6, 155, 'Jakarta Utara', '2020-05-04 08:15:36', '2020-05-04 08:15:36'),
(45, 6, 189, 'Kepulauan Seribu', '2020-05-04 08:15:36', '2020-05-04 08:15:36'),
(46, 7, 77, 'Boalemo', '2020-05-04 08:15:37', '2020-05-04 08:15:37'),
(47, 7, 88, 'Bone Bolango', '2020-05-04 08:15:37', '2020-05-04 08:15:37'),
(48, 7, 129, 'Gorontalo', '2020-05-04 08:15:37', '2020-05-04 08:15:37'),
(49, 7, 130, 'Gorontalo', '2020-05-04 08:15:37', '2020-05-04 08:15:37'),
(50, 7, 131, 'Gorontalo Utara', '2020-05-04 08:15:37', '2020-05-04 08:15:37'),
(51, 7, 361, 'Pohuwato', '2020-05-04 08:15:37', '2020-05-04 08:15:37'),
(52, 8, 50, 'Batang Hari', '2020-05-04 08:15:40', '2020-05-04 08:15:40'),
(53, 8, 97, 'Bungo', '2020-05-04 08:15:40', '2020-05-04 08:15:40'),
(54, 8, 156, 'Jambi', '2020-05-04 08:15:40', '2020-05-04 08:15:40'),
(55, 8, 194, 'Kerinci', '2020-05-04 08:15:40', '2020-05-04 08:15:40'),
(56, 8, 280, 'Merangin', '2020-05-04 08:15:40', '2020-05-04 08:15:40'),
(57, 8, 293, 'Muaro Jambi', '2020-05-04 08:15:40', '2020-05-04 08:15:40'),
(58, 8, 393, 'Sarolangun', '2020-05-04 08:15:40', '2020-05-04 08:15:40'),
(59, 8, 442, 'Sungaipenuh', '2020-05-04 08:15:40', '2020-05-04 08:15:40'),
(60, 8, 460, 'Tanjung Jabung Barat', '2020-05-04 08:15:40', '2020-05-04 08:15:40'),
(61, 8, 461, 'Tanjung Jabung Timur', '2020-05-04 08:15:40', '2020-05-04 08:15:40'),
(62, 8, 471, 'Tebo', '2020-05-04 08:15:40', '2020-05-04 08:15:40'),
(63, 9, 22, 'Bandung', '2020-05-04 08:15:42', '2020-05-04 08:15:42'),
(64, 9, 23, 'Bandung', '2020-05-04 08:15:42', '2020-05-04 08:15:42'),
(65, 9, 24, 'Bandung Barat', '2020-05-04 08:15:42', '2020-05-04 08:15:42'),
(66, 9, 34, 'Banjar', '2020-05-04 08:15:42', '2020-05-04 08:15:42'),
(67, 9, 54, 'Bekasi', '2020-05-04 08:15:42', '2020-05-04 08:15:42'),
(68, 9, 55, 'Bekasi', '2020-05-04 08:15:42', '2020-05-04 08:15:42'),
(69, 9, 78, 'Bogor', '2020-05-04 08:15:42', '2020-05-04 08:15:42'),
(70, 9, 79, 'Bogor', '2020-05-04 08:15:42', '2020-05-04 08:15:42'),
(71, 9, 103, 'Ciamis', '2020-05-04 08:15:42', '2020-05-04 08:15:42'),
(72, 9, 104, 'Cianjur', '2020-05-04 08:15:43', '2020-05-04 08:15:43'),
(73, 9, 107, 'Cimahi', '2020-05-04 08:15:43', '2020-05-04 08:15:43'),
(74, 9, 108, 'Cirebon', '2020-05-04 08:15:43', '2020-05-04 08:15:43'),
(75, 9, 109, 'Cirebon', '2020-05-04 08:15:43', '2020-05-04 08:15:43'),
(76, 9, 115, 'Depok', '2020-05-04 08:15:43', '2020-05-04 08:15:43'),
(77, 9, 126, 'Garut', '2020-05-04 08:15:43', '2020-05-04 08:15:43'),
(78, 9, 149, 'Indramayu', '2020-05-04 08:15:43', '2020-05-04 08:15:43'),
(79, 9, 171, 'Karawang', '2020-05-04 08:15:43', '2020-05-04 08:15:43'),
(80, 9, 211, 'Kuningan', '2020-05-04 08:15:43', '2020-05-04 08:15:43'),
(81, 9, 252, 'Majalengka', '2020-05-04 08:15:43', '2020-05-04 08:15:43'),
(82, 9, 332, 'Pangandaran', '2020-05-04 08:15:43', '2020-05-04 08:15:43'),
(83, 9, 376, 'Purwakarta', '2020-05-04 08:15:43', '2020-05-04 08:15:43'),
(84, 9, 428, 'Subang', '2020-05-04 08:15:44', '2020-05-04 08:15:44'),
(85, 9, 430, 'Sukabumi', '2020-05-04 08:15:44', '2020-05-04 08:15:44'),
(86, 9, 431, 'Sukabumi', '2020-05-04 08:15:44', '2020-05-04 08:15:44'),
(87, 9, 440, 'Sumedang', '2020-05-04 08:15:44', '2020-05-04 08:15:44'),
(88, 9, 468, 'Tasikmalaya', '2020-05-04 08:15:44', '2020-05-04 08:15:44'),
(89, 9, 469, 'Tasikmalaya', '2020-05-04 08:15:44', '2020-05-04 08:15:44'),
(90, 10, 37, 'Banjarnegara', '2020-05-04 08:15:53', '2020-05-04 08:15:53'),
(91, 10, 41, 'Banyumas', '2020-05-04 08:15:53', '2020-05-04 08:15:53'),
(92, 10, 49, 'Batang', '2020-05-04 08:15:54', '2020-05-04 08:15:54'),
(93, 10, 76, 'Blora', '2020-05-04 08:15:54', '2020-05-04 08:15:54'),
(94, 10, 91, 'Boyolali', '2020-05-04 08:15:54', '2020-05-04 08:15:54'),
(95, 10, 92, 'Brebes', '2020-05-04 08:15:54', '2020-05-04 08:15:54'),
(96, 10, 105, 'Cilacap', '2020-05-04 08:15:54', '2020-05-04 08:15:54'),
(97, 10, 113, 'Demak', '2020-05-04 08:15:54', '2020-05-04 08:15:54'),
(98, 10, 134, 'Grobogan', '2020-05-04 08:15:54', '2020-05-04 08:15:54'),
(99, 10, 163, 'Jepara', '2020-05-04 08:15:54', '2020-05-04 08:15:54'),
(100, 10, 169, 'Karanganyar', '2020-05-04 08:15:54', '2020-05-04 08:15:54'),
(101, 10, 177, 'Kebumen', '2020-05-04 08:15:54', '2020-05-04 08:15:54'),
(102, 10, 181, 'Kendal', '2020-05-04 08:15:54', '2020-05-04 08:15:54'),
(103, 10, 196, 'Klaten', '2020-05-04 08:15:55', '2020-05-04 08:15:55'),
(104, 10, 209, 'Kudus', '2020-05-04 08:15:55', '2020-05-04 08:15:55'),
(105, 10, 249, 'Magelang', '2020-05-04 08:15:55', '2020-05-04 08:15:55'),
(106, 10, 250, 'Magelang', '2020-05-04 08:15:55', '2020-05-04 08:15:55'),
(107, 10, 344, 'Pati', '2020-05-04 08:15:55', '2020-05-04 08:15:55'),
(108, 10, 348, 'Pekalongan', '2020-05-04 08:15:55', '2020-05-04 08:15:55'),
(109, 10, 349, 'Pekalongan', '2020-05-04 08:15:55', '2020-05-04 08:15:55'),
(110, 10, 352, 'Pemalang', '2020-05-04 08:15:55', '2020-05-04 08:15:55'),
(111, 10, 375, 'Purbalingga', '2020-05-04 08:15:55', '2020-05-04 08:15:55'),
(112, 10, 377, 'Purworejo', '2020-05-04 08:15:55', '2020-05-04 08:15:55'),
(113, 10, 380, 'Rembang', '2020-05-04 08:15:55', '2020-05-04 08:15:55'),
(114, 10, 386, 'Salatiga', '2020-05-04 08:15:56', '2020-05-04 08:15:56'),
(115, 10, 398, 'Semarang', '2020-05-04 08:15:56', '2020-05-04 08:15:56'),
(116, 10, 399, 'Semarang', '2020-05-04 08:15:56', '2020-05-04 08:15:56'),
(117, 10, 427, 'Sragen', '2020-05-04 08:15:56', '2020-05-04 08:15:56'),
(118, 10, 433, 'Sukoharjo', '2020-05-04 08:15:56', '2020-05-04 08:15:56'),
(119, 10, 445, 'Surakarta (Solo)', '2020-05-04 08:15:56', '2020-05-04 08:15:56'),
(120, 10, 472, 'Tegal', '2020-05-04 08:15:56', '2020-05-04 08:15:56'),
(121, 10, 473, 'Tegal', '2020-05-04 08:15:56', '2020-05-04 08:15:56'),
(122, 10, 476, 'Temanggung', '2020-05-04 08:15:56', '2020-05-04 08:15:56'),
(123, 10, 497, 'Wonogiri', '2020-05-04 08:15:56', '2020-05-04 08:15:56'),
(124, 10, 498, 'Wonosobo', '2020-05-04 08:15:56', '2020-05-04 08:15:56'),
(125, 11, 31, 'Bangkalan', '2020-05-04 08:15:58', '2020-05-04 08:15:58'),
(126, 11, 42, 'Banyuwangi', '2020-05-04 08:15:58', '2020-05-04 08:15:58'),
(127, 11, 51, 'Batu', '2020-05-04 08:15:58', '2020-05-04 08:15:58'),
(128, 11, 74, 'Blitar', '2020-05-04 08:15:58', '2020-05-04 08:15:58'),
(129, 11, 75, 'Blitar', '2020-05-04 08:15:58', '2020-05-04 08:15:58'),
(130, 11, 80, 'Bojonegoro', '2020-05-04 08:15:58', '2020-05-04 08:15:58'),
(131, 11, 86, 'Bondowoso', '2020-05-04 08:15:58', '2020-05-04 08:15:58'),
(132, 11, 133, 'Gresik', '2020-05-04 08:15:58', '2020-05-04 08:15:58'),
(133, 11, 160, 'Jember', '2020-05-04 08:15:59', '2020-05-04 08:15:59'),
(134, 11, 164, 'Jombang', '2020-05-04 08:15:59', '2020-05-04 08:15:59'),
(135, 11, 178, 'Kediri', '2020-05-04 08:15:59', '2020-05-04 08:15:59'),
(136, 11, 179, 'Kediri', '2020-05-04 08:15:59', '2020-05-04 08:15:59'),
(137, 11, 222, 'Lamongan', '2020-05-04 08:15:59', '2020-05-04 08:15:59'),
(138, 11, 243, 'Lumajang', '2020-05-04 08:15:59', '2020-05-04 08:15:59'),
(139, 11, 247, 'Madiun', '2020-05-04 08:15:59', '2020-05-04 08:15:59'),
(140, 11, 248, 'Madiun', '2020-05-04 08:15:59', '2020-05-04 08:15:59'),
(141, 11, 251, 'Magetan', '2020-05-04 08:15:59', '2020-05-04 08:15:59'),
(142, 11, 255, 'Malang', '2020-05-04 08:15:59', '2020-05-04 08:15:59'),
(143, 11, 256, 'Malang', '2020-05-04 08:15:59', '2020-05-04 08:15:59'),
(144, 11, 289, 'Mojokerto', '2020-05-04 08:15:59', '2020-05-04 08:15:59'),
(145, 11, 290, 'Mojokerto', '2020-05-04 08:15:59', '2020-05-04 08:15:59'),
(146, 11, 305, 'Nganjuk', '2020-05-04 08:16:00', '2020-05-04 08:16:00'),
(147, 11, 306, 'Ngawi', '2020-05-04 08:16:00', '2020-05-04 08:16:00'),
(148, 11, 317, 'Pacitan', '2020-05-04 08:16:00', '2020-05-04 08:16:00'),
(149, 11, 330, 'Pamekasan', '2020-05-04 08:16:00', '2020-05-04 08:16:00'),
(150, 11, 342, 'Pasuruan', '2020-05-04 08:16:00', '2020-05-04 08:16:00'),
(151, 11, 343, 'Pasuruan', '2020-05-04 08:16:00', '2020-05-04 08:16:00'),
(152, 11, 363, 'Ponorogo', '2020-05-04 08:16:00', '2020-05-04 08:16:00'),
(153, 11, 369, 'Probolinggo', '2020-05-04 08:16:00', '2020-05-04 08:16:00'),
(154, 11, 370, 'Probolinggo', '2020-05-04 08:16:00', '2020-05-04 08:16:00'),
(155, 11, 390, 'Sampang', '2020-05-04 08:16:00', '2020-05-04 08:16:00'),
(156, 11, 409, 'Sidoarjo', '2020-05-04 08:16:00', '2020-05-04 08:16:00'),
(157, 11, 418, 'Situbondo', '2020-05-04 08:16:00', '2020-05-04 08:16:00'),
(158, 11, 441, 'Sumenep', '2020-05-04 08:16:00', '2020-05-04 08:16:00'),
(159, 11, 444, 'Surabaya', '2020-05-04 08:16:00', '2020-05-04 08:16:00'),
(160, 11, 487, 'Trenggalek', '2020-05-04 08:16:00', '2020-05-04 08:16:00'),
(161, 11, 489, 'Tuban', '2020-05-04 08:16:00', '2020-05-04 08:16:00'),
(162, 11, 492, 'Tulungagung', '2020-05-04 08:16:01', '2020-05-04 08:16:01'),
(163, 12, 61, 'Bengkayang', '2020-05-04 08:16:02', '2020-05-04 08:16:02'),
(164, 12, 168, 'Kapuas Hulu', '2020-05-04 08:16:02', '2020-05-04 08:16:02'),
(165, 12, 176, 'Kayong Utara', '2020-05-04 08:16:02', '2020-05-04 08:16:02'),
(166, 12, 195, 'Ketapang', '2020-05-04 08:16:02', '2020-05-04 08:16:02'),
(167, 12, 208, 'Kubu Raya', '2020-05-04 08:16:03', '2020-05-04 08:16:03'),
(168, 12, 228, 'Landak', '2020-05-04 08:16:03', '2020-05-04 08:16:03'),
(169, 12, 279, 'Melawi', '2020-05-04 08:16:03', '2020-05-04 08:16:03'),
(170, 12, 364, 'Pontianak', '2020-05-04 08:16:03', '2020-05-04 08:16:03'),
(171, 12, 365, 'Pontianak', '2020-05-04 08:16:03', '2020-05-04 08:16:03'),
(172, 12, 388, 'Sambas', '2020-05-04 08:16:03', '2020-05-04 08:16:03'),
(173, 12, 391, 'Sanggau', '2020-05-04 08:16:03', '2020-05-04 08:16:03'),
(174, 12, 395, 'Sekadau', '2020-05-04 08:16:03', '2020-05-04 08:16:03'),
(175, 12, 415, 'Singkawang', '2020-05-04 08:16:03', '2020-05-04 08:16:03'),
(176, 12, 417, 'Sintang', '2020-05-04 08:16:03', '2020-05-04 08:16:03'),
(177, 13, 18, 'Balangan', '2020-05-04 08:16:05', '2020-05-04 08:16:05'),
(178, 13, 33, 'Banjar', '2020-05-04 08:16:05', '2020-05-04 08:16:05'),
(179, 13, 35, 'Banjarbaru', '2020-05-04 08:16:05', '2020-05-04 08:16:05'),
(180, 13, 36, 'Banjarmasin', '2020-05-04 08:16:05', '2020-05-04 08:16:05'),
(181, 13, 43, 'Barito Kuala', '2020-05-04 08:16:05', '2020-05-04 08:16:05'),
(182, 13, 143, 'Hulu Sungai Selatan', '2020-05-04 08:16:05', '2020-05-04 08:16:05'),
(183, 13, 144, 'Hulu Sungai Tengah', '2020-05-04 08:16:05', '2020-05-04 08:16:05'),
(184, 13, 145, 'Hulu Sungai Utara', '2020-05-04 08:16:05', '2020-05-04 08:16:05'),
(185, 13, 203, 'Kotabaru', '2020-05-04 08:16:05', '2020-05-04 08:16:05'),
(186, 13, 446, 'Tabalong', '2020-05-04 08:16:05', '2020-05-04 08:16:05'),
(187, 13, 452, 'Tanah Bumbu', '2020-05-04 08:16:05', '2020-05-04 08:16:05'),
(188, 13, 454, 'Tanah Laut', '2020-05-04 08:16:05', '2020-05-04 08:16:05'),
(189, 13, 466, 'Tapin', '2020-05-04 08:16:05', '2020-05-04 08:16:05'),
(190, 14, 44, 'Barito Selatan', '2020-05-04 08:16:06', '2020-05-04 08:16:06'),
(191, 14, 45, 'Barito Timur', '2020-05-04 08:16:06', '2020-05-04 08:16:06'),
(192, 14, 46, 'Barito Utara', '2020-05-04 08:16:06', '2020-05-04 08:16:06'),
(193, 14, 136, 'Gunung Mas', '2020-05-04 08:16:06', '2020-05-04 08:16:06'),
(194, 14, 167, 'Kapuas', '2020-05-04 08:16:06', '2020-05-04 08:16:06'),
(195, 14, 174, 'Katingan', '2020-05-04 08:16:06', '2020-05-04 08:16:06'),
(196, 14, 205, 'Kotawaringin Barat', '2020-05-04 08:16:06', '2020-05-04 08:16:06'),
(197, 14, 206, 'Kotawaringin Timur', '2020-05-04 08:16:06', '2020-05-04 08:16:06'),
(198, 14, 221, 'Lamandau', '2020-05-04 08:16:07', '2020-05-04 08:16:07'),
(199, 14, 296, 'Murung Raya', '2020-05-04 08:16:07', '2020-05-04 08:16:07'),
(200, 14, 326, 'Palangka Raya', '2020-05-04 08:16:07', '2020-05-04 08:16:07'),
(201, 14, 371, 'Pulang Pisau', '2020-05-04 08:16:07', '2020-05-04 08:16:07'),
(202, 14, 405, 'Seruyan', '2020-05-04 08:16:07', '2020-05-04 08:16:07'),
(203, 14, 432, 'Sukamara', '2020-05-04 08:16:07', '2020-05-04 08:16:07'),
(204, 15, 19, 'Balikpapan', '2020-05-04 08:16:09', '2020-05-04 08:16:09'),
(205, 15, 66, 'Berau', '2020-05-04 08:16:09', '2020-05-04 08:16:09'),
(206, 15, 89, 'Bontang', '2020-05-04 08:16:09', '2020-05-04 08:16:09'),
(207, 15, 214, 'Kutai Barat', '2020-05-04 08:16:09', '2020-05-04 08:16:09'),
(208, 15, 215, 'Kutai Kartanegara', '2020-05-04 08:16:09', '2020-05-04 08:16:09'),
(209, 15, 216, 'Kutai Timur', '2020-05-04 08:16:10', '2020-05-04 08:16:10'),
(210, 15, 341, 'Paser', '2020-05-04 08:16:10', '2020-05-04 08:16:10'),
(211, 15, 354, 'Penajam Paser Utara', '2020-05-04 08:16:10', '2020-05-04 08:16:10'),
(212, 15, 387, 'Samarinda', '2020-05-04 08:16:10', '2020-05-04 08:16:10'),
(213, 16, 96, 'Bulungan (Bulongan)', '2020-05-04 08:16:12', '2020-05-04 08:16:12'),
(214, 16, 257, 'Malinau', '2020-05-04 08:16:12', '2020-05-04 08:16:12'),
(215, 16, 311, 'Nunukan', '2020-05-04 08:16:12', '2020-05-04 08:16:12'),
(216, 16, 450, 'Tana Tidung', '2020-05-04 08:16:12', '2020-05-04 08:16:12'),
(217, 16, 467, 'Tarakan', '2020-05-04 08:16:12', '2020-05-04 08:16:12'),
(218, 17, 48, 'Batam', '2020-05-04 08:16:14', '2020-05-04 08:16:14'),
(219, 17, 71, 'Bintan', '2020-05-04 08:16:14', '2020-05-04 08:16:14'),
(220, 17, 172, 'Karimun', '2020-05-04 08:16:14', '2020-05-04 08:16:14'),
(221, 17, 184, 'Kepulauan Anambas', '2020-05-04 08:16:14', '2020-05-04 08:16:14'),
(222, 17, 237, 'Lingga', '2020-05-04 08:16:14', '2020-05-04 08:16:14'),
(223, 17, 302, 'Natuna', '2020-05-04 08:16:15', '2020-05-04 08:16:15'),
(224, 17, 462, 'Tanjung Pinang', '2020-05-04 08:16:15', '2020-05-04 08:16:15'),
(225, 18, 21, 'Bandar Lampung', '2020-05-04 08:16:16', '2020-05-04 08:16:16'),
(226, 18, 223, 'Lampung Barat', '2020-05-04 08:16:16', '2020-05-04 08:16:16'),
(227, 18, 224, 'Lampung Selatan', '2020-05-04 08:16:16', '2020-05-04 08:16:16'),
(228, 18, 225, 'Lampung Tengah', '2020-05-04 08:16:16', '2020-05-04 08:16:16'),
(229, 18, 226, 'Lampung Timur', '2020-05-04 08:16:16', '2020-05-04 08:16:16'),
(230, 18, 227, 'Lampung Utara', '2020-05-04 08:16:16', '2020-05-04 08:16:16'),
(231, 18, 282, 'Mesuji', '2020-05-04 08:16:16', '2020-05-04 08:16:16'),
(232, 18, 283, 'Metro', '2020-05-04 08:16:16', '2020-05-04 08:16:16'),
(233, 18, 355, 'Pesawaran', '2020-05-04 08:16:16', '2020-05-04 08:16:16'),
(234, 18, 356, 'Pesisir Barat', '2020-05-04 08:16:17', '2020-05-04 08:16:17'),
(235, 18, 368, 'Pringsewu', '2020-05-04 08:16:17', '2020-05-04 08:16:17'),
(236, 18, 458, 'Tanggamus', '2020-05-04 08:16:17', '2020-05-04 08:16:17'),
(237, 18, 490, 'Tulang Bawang', '2020-05-04 08:16:17', '2020-05-04 08:16:17'),
(238, 18, 491, 'Tulang Bawang Barat', '2020-05-04 08:16:17', '2020-05-04 08:16:17'),
(239, 18, 496, 'Way Kanan', '2020-05-04 08:16:17', '2020-05-04 08:16:17'),
(240, 19, 14, 'Ambon', '2020-05-04 08:16:18', '2020-05-04 08:16:18'),
(241, 19, 99, 'Buru', '2020-05-04 08:16:18', '2020-05-04 08:16:18'),
(242, 19, 100, 'Buru Selatan', '2020-05-04 08:16:18', '2020-05-04 08:16:18'),
(243, 19, 185, 'Kepulauan Aru', '2020-05-04 08:16:18', '2020-05-04 08:16:18'),
(244, 19, 258, 'Maluku Barat Daya', '2020-05-04 08:16:18', '2020-05-04 08:16:18'),
(245, 19, 259, 'Maluku Tengah', '2020-05-04 08:16:18', '2020-05-04 08:16:18'),
(246, 19, 260, 'Maluku Tenggara', '2020-05-04 08:16:18', '2020-05-04 08:16:18'),
(247, 19, 261, 'Maluku Tenggara Barat', '2020-05-04 08:16:19', '2020-05-04 08:16:19'),
(248, 19, 400, 'Seram Bagian Barat', '2020-05-04 08:16:19', '2020-05-04 08:16:19'),
(249, 19, 401, 'Seram Bagian Timur', '2020-05-04 08:16:19', '2020-05-04 08:16:19'),
(250, 19, 488, 'Tual', '2020-05-04 08:16:19', '2020-05-04 08:16:19'),
(251, 20, 138, 'Halmahera Barat', '2020-05-04 08:16:22', '2020-05-04 08:16:22'),
(252, 20, 139, 'Halmahera Selatan', '2020-05-04 08:16:22', '2020-05-04 08:16:22'),
(253, 20, 140, 'Halmahera Tengah', '2020-05-04 08:16:22', '2020-05-04 08:16:22'),
(254, 20, 141, 'Halmahera Timur', '2020-05-04 08:16:22', '2020-05-04 08:16:22'),
(255, 20, 142, 'Halmahera Utara', '2020-05-04 08:16:22', '2020-05-04 08:16:22'),
(256, 20, 191, 'Kepulauan Sula', '2020-05-04 08:16:22', '2020-05-04 08:16:22'),
(257, 20, 372, 'Pulau Morotai', '2020-05-04 08:16:22', '2020-05-04 08:16:22'),
(258, 20, 477, 'Ternate', '2020-05-04 08:16:22', '2020-05-04 08:16:22'),
(259, 20, 478, 'Tidore Kepulauan', '2020-05-04 08:16:22', '2020-05-04 08:16:22'),
(260, 21, 1, 'Aceh Barat', '2020-05-04 08:16:24', '2020-05-04 08:16:24'),
(261, 21, 2, 'Aceh Barat Daya', '2020-05-04 08:16:24', '2020-05-04 08:16:24'),
(262, 21, 3, 'Aceh Besar', '2020-05-04 08:16:24', '2020-05-04 08:16:24'),
(263, 21, 4, 'Aceh Jaya', '2020-05-04 08:16:24', '2020-05-04 08:16:24'),
(264, 21, 5, 'Aceh Selatan', '2020-05-04 08:16:24', '2020-05-04 08:16:24'),
(265, 21, 6, 'Aceh Singkil', '2020-05-04 08:16:24', '2020-05-04 08:16:24'),
(266, 21, 7, 'Aceh Tamiang', '2020-05-04 08:16:24', '2020-05-04 08:16:24'),
(267, 21, 8, 'Aceh Tengah', '2020-05-04 08:16:24', '2020-05-04 08:16:24'),
(268, 21, 9, 'Aceh Tenggara', '2020-05-04 08:16:24', '2020-05-04 08:16:24'),
(269, 21, 10, 'Aceh Timur', '2020-05-04 08:16:24', '2020-05-04 08:16:24'),
(270, 21, 11, 'Aceh Utara', '2020-05-04 08:16:24', '2020-05-04 08:16:24'),
(271, 21, 20, 'Banda Aceh', '2020-05-04 08:16:24', '2020-05-04 08:16:24'),
(272, 21, 59, 'Bener Meriah', '2020-05-04 08:16:25', '2020-05-04 08:16:25'),
(273, 21, 72, 'Bireuen', '2020-05-04 08:16:25', '2020-05-04 08:16:25'),
(274, 21, 127, 'Gayo Lues', '2020-05-04 08:16:25', '2020-05-04 08:16:25'),
(275, 21, 230, 'Langsa', '2020-05-04 08:16:25', '2020-05-04 08:16:25'),
(276, 21, 235, 'Lhokseumawe', '2020-05-04 08:16:25', '2020-05-04 08:16:25'),
(277, 21, 300, 'Nagan Raya', '2020-05-04 08:16:25', '2020-05-04 08:16:25'),
(278, 21, 358, 'Pidie', '2020-05-04 08:16:25', '2020-05-04 08:16:25'),
(279, 21, 359, 'Pidie Jaya', '2020-05-04 08:16:25', '2020-05-04 08:16:25'),
(280, 21, 384, 'Sabang', '2020-05-04 08:16:25', '2020-05-04 08:16:25'),
(281, 21, 414, 'Simeulue', '2020-05-04 08:16:25', '2020-05-04 08:16:25'),
(282, 21, 429, 'Subulussalam', '2020-05-04 08:16:25', '2020-05-04 08:16:25'),
(283, 22, 68, 'Bima', '2020-05-04 08:16:29', '2020-05-04 08:16:29'),
(284, 22, 69, 'Bima', '2020-05-04 08:16:29', '2020-05-04 08:16:29'),
(285, 22, 118, 'Dompu', '2020-05-04 08:16:29', '2020-05-04 08:16:29'),
(286, 22, 238, 'Lombok Barat', '2020-05-04 08:16:29', '2020-05-04 08:16:29'),
(287, 22, 239, 'Lombok Tengah', '2020-05-04 08:16:29', '2020-05-04 08:16:29'),
(288, 22, 240, 'Lombok Timur', '2020-05-04 08:16:29', '2020-05-04 08:16:29'),
(289, 22, 241, 'Lombok Utara', '2020-05-04 08:16:29', '2020-05-04 08:16:29'),
(290, 22, 276, 'Mataram', '2020-05-04 08:16:29', '2020-05-04 08:16:29'),
(291, 22, 438, 'Sumbawa', '2020-05-04 08:16:29', '2020-05-04 08:16:29'),
(292, 22, 439, 'Sumbawa Barat', '2020-05-04 08:16:29', '2020-05-04 08:16:29'),
(293, 23, 13, 'Alor', '2020-05-04 08:16:32', '2020-05-04 08:16:32'),
(294, 23, 58, 'Belu', '2020-05-04 08:16:32', '2020-05-04 08:16:32'),
(295, 23, 122, 'Ende', '2020-05-04 08:16:32', '2020-05-04 08:16:32'),
(296, 23, 125, 'Flores Timur', '2020-05-04 08:16:33', '2020-05-04 08:16:33'),
(297, 23, 212, 'Kupang', '2020-05-04 08:16:33', '2020-05-04 08:16:33'),
(298, 23, 213, 'Kupang', '2020-05-04 08:16:33', '2020-05-04 08:16:33'),
(299, 23, 234, 'Lembata', '2020-05-04 08:16:33', '2020-05-04 08:16:33'),
(300, 23, 269, 'Manggarai', '2020-05-04 08:16:33', '2020-05-04 08:16:33'),
(301, 23, 270, 'Manggarai Barat', '2020-05-04 08:16:33', '2020-05-04 08:16:33'),
(302, 23, 271, 'Manggarai Timur', '2020-05-04 08:16:33', '2020-05-04 08:16:33'),
(303, 23, 301, 'Nagekeo', '2020-05-04 08:16:33', '2020-05-04 08:16:33'),
(304, 23, 304, 'Ngada', '2020-05-04 08:16:34', '2020-05-04 08:16:34'),
(305, 23, 383, 'Rote Ndao', '2020-05-04 08:16:34', '2020-05-04 08:16:34'),
(306, 23, 385, 'Sabu Raijua', '2020-05-04 08:16:34', '2020-05-04 08:16:34'),
(307, 23, 412, 'Sikka', '2020-05-04 08:16:34', '2020-05-04 08:16:34'),
(308, 23, 434, 'Sumba Barat', '2020-05-04 08:16:34', '2020-05-04 08:16:34'),
(309, 23, 435, 'Sumba Barat Daya', '2020-05-04 08:16:34', '2020-05-04 08:16:34'),
(310, 23, 436, 'Sumba Tengah', '2020-05-04 08:16:34', '2020-05-04 08:16:34'),
(311, 23, 437, 'Sumba Timur', '2020-05-04 08:16:34', '2020-05-04 08:16:34'),
(312, 23, 479, 'Timor Tengah Selatan', '2020-05-04 08:16:34', '2020-05-04 08:16:34'),
(313, 23, 480, 'Timor Tengah Utara', '2020-05-04 08:16:34', '2020-05-04 08:16:34'),
(314, 24, 16, 'Asmat', '2020-05-04 08:16:43', '2020-05-04 08:16:43'),
(315, 24, 67, 'Biak Numfor', '2020-05-04 08:16:43', '2020-05-04 08:16:43'),
(316, 24, 90, 'Boven Digoel', '2020-05-04 08:16:43', '2020-05-04 08:16:43'),
(317, 24, 111, 'Deiyai (Deliyai)', '2020-05-04 08:16:43', '2020-05-04 08:16:43'),
(318, 24, 117, 'Dogiyai', '2020-05-04 08:16:43', '2020-05-04 08:16:43'),
(319, 24, 150, 'Intan Jaya', '2020-05-04 08:16:43', '2020-05-04 08:16:43'),
(320, 24, 157, 'Jayapura', '2020-05-04 08:16:43', '2020-05-04 08:16:43'),
(321, 24, 158, 'Jayapura', '2020-05-04 08:16:43', '2020-05-04 08:16:43'),
(322, 24, 159, 'Jayawijaya', '2020-05-04 08:16:43', '2020-05-04 08:16:43'),
(323, 24, 180, 'Keerom', '2020-05-04 08:16:43', '2020-05-04 08:16:43'),
(324, 24, 193, 'Kepulauan Yapen (Yapen Waropen)', '2020-05-04 08:16:44', '2020-05-04 08:16:44'),
(325, 24, 231, 'Lanny Jaya', '2020-05-04 08:16:44', '2020-05-04 08:16:44'),
(326, 24, 263, 'Mamberamo Raya', '2020-05-04 08:16:44', '2020-05-04 08:16:44'),
(327, 24, 264, 'Mamberamo Tengah', '2020-05-04 08:16:44', '2020-05-04 08:16:44'),
(328, 24, 274, 'Mappi', '2020-05-04 08:16:44', '2020-05-04 08:16:44'),
(329, 24, 281, 'Merauke', '2020-05-04 08:16:44', '2020-05-04 08:16:44'),
(330, 24, 284, 'Mimika', '2020-05-04 08:16:44', '2020-05-04 08:16:44'),
(331, 24, 299, 'Nabire', '2020-05-04 08:16:44', '2020-05-04 08:16:44'),
(332, 24, 303, 'Nduga', '2020-05-04 08:16:44', '2020-05-04 08:16:44'),
(333, 24, 335, 'Paniai', '2020-05-04 08:16:44', '2020-05-04 08:16:44'),
(334, 24, 347, 'Pegunungan Bintang', '2020-05-04 08:16:44', '2020-05-04 08:16:44'),
(335, 24, 373, 'Puncak', '2020-05-04 08:16:44', '2020-05-04 08:16:44'),
(336, 24, 374, 'Puncak Jaya', '2020-05-04 08:16:45', '2020-05-04 08:16:45'),
(337, 24, 392, 'Sarmi', '2020-05-04 08:16:45', '2020-05-04 08:16:45'),
(338, 24, 443, 'Supiori', '2020-05-04 08:16:45', '2020-05-04 08:16:45'),
(339, 24, 484, 'Tolikara', '2020-05-04 08:16:45', '2020-05-04 08:16:45'),
(340, 24, 495, 'Waropen', '2020-05-04 08:16:45', '2020-05-04 08:16:45'),
(341, 24, 499, 'Yahukimo', '2020-05-04 08:16:45', '2020-05-04 08:16:45'),
(342, 24, 500, 'Yalimo', '2020-05-04 08:16:45', '2020-05-04 08:16:45'),
(343, 25, 124, 'Fakfak', '2020-05-04 08:17:08', '2020-05-04 08:17:08'),
(344, 25, 165, 'Kaimana', '2020-05-04 08:17:08', '2020-05-04 08:17:08'),
(345, 25, 272, 'Manokwari', '2020-05-04 08:17:08', '2020-05-04 08:17:08'),
(346, 25, 273, 'Manokwari Selatan', '2020-05-04 08:17:08', '2020-05-04 08:17:08'),
(347, 25, 277, 'Maybrat', '2020-05-04 08:17:08', '2020-05-04 08:17:08'),
(348, 25, 346, 'Pegunungan Arfak', '2020-05-04 08:17:08', '2020-05-04 08:17:08'),
(349, 25, 378, 'Raja Ampat', '2020-05-04 08:17:08', '2020-05-04 08:17:08'),
(350, 25, 424, 'Sorong', '2020-05-04 08:17:08', '2020-05-04 08:17:08'),
(351, 25, 425, 'Sorong', '2020-05-04 08:17:08', '2020-05-04 08:17:08'),
(352, 25, 426, 'Sorong Selatan', '2020-05-04 08:17:08', '2020-05-04 08:17:08'),
(353, 25, 449, 'Tambrauw', '2020-05-04 08:17:08', '2020-05-04 08:17:08'),
(354, 25, 474, 'Teluk Bintuni', '2020-05-04 08:17:09', '2020-05-04 08:17:09'),
(355, 25, 475, 'Teluk Wondama', '2020-05-04 08:17:09', '2020-05-04 08:17:09'),
(356, 26, 60, 'Bengkalis', '2020-05-04 08:17:09', '2020-05-04 08:17:09'),
(357, 26, 120, 'Dumai', '2020-05-04 08:17:10', '2020-05-04 08:17:10'),
(358, 26, 147, 'Indragiri Hilir', '2020-05-04 08:17:10', '2020-05-04 08:17:10'),
(359, 26, 148, 'Indragiri Hulu', '2020-05-04 08:17:10', '2020-05-04 08:17:10'),
(360, 26, 166, 'Kampar', '2020-05-04 08:17:10', '2020-05-04 08:17:10'),
(361, 26, 187, 'Kepulauan Meranti', '2020-05-04 08:17:10', '2020-05-04 08:17:10'),
(362, 26, 207, 'Kuantan Singingi', '2020-05-04 08:17:10', '2020-05-04 08:17:10'),
(363, 26, 350, 'Pekanbaru', '2020-05-04 08:17:10', '2020-05-04 08:17:10'),
(364, 26, 351, 'Pelalawan', '2020-05-04 08:17:10', '2020-05-04 08:17:10'),
(365, 26, 381, 'Rokan Hilir', '2020-05-04 08:17:10', '2020-05-04 08:17:10'),
(366, 26, 382, 'Rokan Hulu', '2020-05-04 08:17:10', '2020-05-04 08:17:10'),
(367, 26, 406, 'Siak', '2020-05-04 08:17:10', '2020-05-04 08:17:10'),
(368, 27, 253, 'Majene', '2020-05-04 08:17:11', '2020-05-04 08:17:11'),
(369, 27, 262, 'Mamasa', '2020-05-04 08:17:11', '2020-05-04 08:17:11'),
(370, 27, 265, 'Mamuju', '2020-05-04 08:17:11', '2020-05-04 08:17:11'),
(371, 27, 266, 'Mamuju Utara', '2020-05-04 08:17:12', '2020-05-04 08:17:12'),
(372, 27, 362, 'Polewali Mandar', '2020-05-04 08:17:12', '2020-05-04 08:17:12'),
(373, 28, 38, 'Bantaeng', '2020-05-04 08:17:14', '2020-05-04 08:17:14'),
(374, 28, 47, 'Barru', '2020-05-04 08:17:14', '2020-05-04 08:17:14'),
(375, 28, 87, 'Bone', '2020-05-04 08:17:14', '2020-05-04 08:17:14'),
(376, 28, 95, 'Bulukumba', '2020-05-04 08:17:14', '2020-05-04 08:17:14'),
(377, 28, 123, 'Enrekang', '2020-05-04 08:17:14', '2020-05-04 08:17:14'),
(378, 28, 132, 'Gowa', '2020-05-04 08:17:14', '2020-05-04 08:17:14'),
(379, 28, 162, 'Jeneponto', '2020-05-04 08:17:15', '2020-05-04 08:17:15'),
(380, 28, 244, 'Luwu', '2020-05-04 08:17:15', '2020-05-04 08:17:15'),
(381, 28, 245, 'Luwu Timur', '2020-05-04 08:17:15', '2020-05-04 08:17:15'),
(382, 28, 246, 'Luwu Utara', '2020-05-04 08:17:15', '2020-05-04 08:17:15'),
(383, 28, 254, 'Makassar', '2020-05-04 08:17:15', '2020-05-04 08:17:15'),
(384, 28, 275, 'Maros', '2020-05-04 08:17:16', '2020-05-04 08:17:16'),
(385, 28, 328, 'Palopo', '2020-05-04 08:17:16', '2020-05-04 08:17:16'),
(386, 28, 333, 'Pangkajene Kepulauan', '2020-05-04 08:17:16', '2020-05-04 08:17:16'),
(387, 28, 336, 'Parepare', '2020-05-04 08:17:16', '2020-05-04 08:17:16'),
(388, 28, 360, 'Pinrang', '2020-05-04 08:17:16', '2020-05-04 08:17:16'),
(389, 28, 396, 'Selayar (Kepulauan Selayar)', '2020-05-04 08:17:16', '2020-05-04 08:17:16'),
(390, 28, 408, 'Sidenreng Rappang/Rapang', '2020-05-04 08:17:17', '2020-05-04 08:17:17'),
(391, 28, 416, 'Sinjai', '2020-05-04 08:17:17', '2020-05-04 08:17:17'),
(392, 28, 423, 'Soppeng', '2020-05-04 08:17:17', '2020-05-04 08:17:17'),
(393, 28, 448, 'Takalar', '2020-05-04 08:17:17', '2020-05-04 08:17:17'),
(394, 28, 451, 'Tana Toraja', '2020-05-04 08:17:17', '2020-05-04 08:17:17'),
(395, 28, 486, 'Toraja Utara', '2020-05-04 08:17:17', '2020-05-04 08:17:17'),
(396, 28, 493, 'Wajo', '2020-05-04 08:17:17', '2020-05-04 08:17:17'),
(397, 29, 25, 'Banggai', '2020-05-04 08:17:19', '2020-05-04 08:17:19'),
(398, 29, 26, 'Banggai Kepulauan', '2020-05-04 08:17:19', '2020-05-04 08:17:19'),
(399, 29, 98, 'Buol', '2020-05-04 08:17:19', '2020-05-04 08:17:19'),
(400, 29, 119, 'Donggala', '2020-05-04 08:17:19', '2020-05-04 08:17:19'),
(401, 29, 291, 'Morowali', '2020-05-04 08:17:20', '2020-05-04 08:17:20'),
(402, 29, 329, 'Palu', '2020-05-04 08:17:20', '2020-05-04 08:17:20'),
(403, 29, 338, 'Parigi Moutong', '2020-05-04 08:17:20', '2020-05-04 08:17:20'),
(404, 29, 366, 'Poso', '2020-05-04 08:17:20', '2020-05-04 08:17:20'),
(405, 29, 410, 'Sigi', '2020-05-04 08:17:20', '2020-05-04 08:17:20'),
(406, 29, 482, 'Tojo Una-Una', '2020-05-04 08:17:20', '2020-05-04 08:17:20'),
(407, 29, 483, 'Toli-Toli', '2020-05-04 08:17:20', '2020-05-04 08:17:20'),
(408, 30, 53, 'Bau-Bau', '2020-05-04 08:17:21', '2020-05-04 08:17:21'),
(409, 30, 85, 'Bombana', '2020-05-04 08:17:21', '2020-05-04 08:17:21'),
(410, 30, 101, 'Buton', '2020-05-04 08:17:22', '2020-05-04 08:17:22'),
(411, 30, 102, 'Buton Utara', '2020-05-04 08:17:22', '2020-05-04 08:17:22'),
(412, 30, 182, 'Kendari', '2020-05-04 08:17:22', '2020-05-04 08:17:22'),
(413, 30, 198, 'Kolaka', '2020-05-04 08:17:22', '2020-05-04 08:17:22'),
(414, 30, 199, 'Kolaka Utara', '2020-05-04 08:17:22', '2020-05-04 08:17:22'),
(415, 30, 200, 'Konawe', '2020-05-04 08:17:22', '2020-05-04 08:17:22'),
(416, 30, 201, 'Konawe Selatan', '2020-05-04 08:17:22', '2020-05-04 08:17:22'),
(417, 30, 202, 'Konawe Utara', '2020-05-04 08:17:23', '2020-05-04 08:17:23'),
(418, 30, 295, 'Muna', '2020-05-04 08:17:23', '2020-05-04 08:17:23'),
(419, 30, 494, 'Wakatobi', '2020-05-04 08:17:23', '2020-05-04 08:17:23'),
(420, 31, 73, 'Bitung', '2020-05-04 08:17:30', '2020-05-04 08:17:30'),
(421, 31, 81, 'Bolaang Mongondow (Bolmong)', '2020-05-04 08:17:30', '2020-05-04 08:17:30'),
(422, 31, 82, 'Bolaang Mongondow Selatan', '2020-05-04 08:17:30', '2020-05-04 08:17:30'),
(423, 31, 83, 'Bolaang Mongondow Timur', '2020-05-04 08:17:30', '2020-05-04 08:17:30'),
(424, 31, 84, 'Bolaang Mongondow Utara', '2020-05-04 08:17:30', '2020-05-04 08:17:30'),
(425, 31, 188, 'Kepulauan Sangihe', '2020-05-04 08:17:30', '2020-05-04 08:17:30'),
(426, 31, 190, 'Kepulauan Siau Tagulandang Biaro (Sitaro)', '2020-05-04 08:17:30', '2020-05-04 08:17:30'),
(427, 31, 192, 'Kepulauan Talaud', '2020-05-04 08:17:30', '2020-05-04 08:17:30'),
(428, 31, 204, 'Kotamobagu', '2020-05-04 08:17:31', '2020-05-04 08:17:31'),
(429, 31, 267, 'Manado', '2020-05-04 08:17:31', '2020-05-04 08:17:31'),
(430, 31, 285, 'Minahasa', '2020-05-04 08:17:31', '2020-05-04 08:17:31'),
(431, 31, 286, 'Minahasa Selatan', '2020-05-04 08:17:31', '2020-05-04 08:17:31'),
(432, 31, 287, 'Minahasa Tenggara', '2020-05-04 08:17:31', '2020-05-04 08:17:31'),
(433, 31, 288, 'Minahasa Utara', '2020-05-04 08:17:32', '2020-05-04 08:17:32'),
(434, 31, 485, 'Tomohon', '2020-05-04 08:17:32', '2020-05-04 08:17:32'),
(435, 32, 12, 'Agam', '2020-05-04 08:17:54', '2020-05-04 08:17:54'),
(436, 32, 93, 'Bukittinggi', '2020-05-04 08:17:55', '2020-05-04 08:17:55'),
(437, 32, 116, 'Dharmasraya', '2020-05-04 08:17:55', '2020-05-04 08:17:55'),
(438, 32, 186, 'Kepulauan Mentawai', '2020-05-04 08:17:55', '2020-05-04 08:17:55'),
(439, 32, 236, 'Lima Puluh Koto/Kota', '2020-05-04 08:17:56', '2020-05-04 08:17:56'),
(440, 32, 318, 'Padang', '2020-05-04 08:17:56', '2020-05-04 08:17:56'),
(441, 32, 321, 'Padang Panjang', '2020-05-04 08:17:56', '2020-05-04 08:17:56'),
(442, 32, 322, 'Padang Pariaman', '2020-05-04 08:17:57', '2020-05-04 08:17:57'),
(443, 32, 337, 'Pariaman', '2020-05-04 08:17:57', '2020-05-04 08:17:57'),
(444, 32, 339, 'Pasaman', '2020-05-04 08:17:57', '2020-05-04 08:17:57'),
(445, 32, 340, 'Pasaman Barat', '2020-05-04 08:17:57', '2020-05-04 08:17:57'),
(446, 32, 345, 'Payakumbuh', '2020-05-04 08:17:58', '2020-05-04 08:17:58'),
(447, 32, 357, 'Pesisir Selatan', '2020-05-04 08:17:58', '2020-05-04 08:17:58'),
(448, 32, 394, 'Sawah Lunto', '2020-05-04 08:17:58', '2020-05-04 08:17:58'),
(449, 32, 411, 'Sijunjung (Sawah Lunto Sijunjung)', '2020-05-04 08:17:58', '2020-05-04 08:17:58'),
(450, 32, 420, 'Solok', '2020-05-04 08:17:58', '2020-05-04 08:17:58'),
(451, 32, 421, 'Solok', '2020-05-04 08:17:59', '2020-05-04 08:17:59'),
(452, 32, 422, 'Solok Selatan', '2020-05-04 08:17:59', '2020-05-04 08:17:59'),
(453, 32, 453, 'Tanah Datar', '2020-05-04 08:18:00', '2020-05-04 08:18:00'),
(454, 33, 40, 'Banyuasin', '2020-05-04 08:18:01', '2020-05-04 08:18:01'),
(455, 33, 121, 'Empat Lawang', '2020-05-04 08:18:01', '2020-05-04 08:18:01'),
(456, 33, 220, 'Lahat', '2020-05-04 08:18:01', '2020-05-04 08:18:01'),
(457, 33, 242, 'Lubuk Linggau', '2020-05-04 08:18:01', '2020-05-04 08:18:01'),
(458, 33, 292, 'Muara Enim', '2020-05-04 08:18:02', '2020-05-04 08:18:02'),
(459, 33, 297, 'Musi Banyuasin', '2020-05-04 08:18:02', '2020-05-04 08:18:02'),
(460, 33, 298, 'Musi Rawas', '2020-05-04 08:18:02', '2020-05-04 08:18:02'),
(461, 33, 312, 'Ogan Ilir', '2020-05-04 08:18:02', '2020-05-04 08:18:02'),
(462, 33, 313, 'Ogan Komering Ilir', '2020-05-04 08:18:02', '2020-05-04 08:18:02'),
(463, 33, 314, 'Ogan Komering Ulu', '2020-05-04 08:18:03', '2020-05-04 08:18:03'),
(464, 33, 315, 'Ogan Komering Ulu Selatan', '2020-05-04 08:18:03', '2020-05-04 08:18:03'),
(465, 33, 316, 'Ogan Komering Ulu Timur', '2020-05-04 08:18:03', '2020-05-04 08:18:03'),
(466, 33, 324, 'Pagar Alam', '2020-05-04 08:18:03', '2020-05-04 08:18:03'),
(467, 33, 327, 'Palembang', '2020-05-04 08:18:03', '2020-05-04 08:18:03'),
(468, 33, 367, 'Prabumulih', '2020-05-04 08:18:03', '2020-05-04 08:18:03'),
(469, 34, 15, 'Asahan', '2020-05-04 08:18:05', '2020-05-04 08:18:05'),
(470, 34, 52, 'Batu Bara', '2020-05-04 08:18:05', '2020-05-04 08:18:05'),
(471, 34, 70, 'Binjai', '2020-05-04 08:18:05', '2020-05-04 08:18:05'),
(472, 34, 110, 'Dairi', '2020-05-04 08:18:05', '2020-05-04 08:18:05'),
(473, 34, 112, 'Deli Serdang', '2020-05-04 08:18:05', '2020-05-04 08:18:05'),
(474, 34, 137, 'Gunungsitoli', '2020-05-04 08:18:05', '2020-05-04 08:18:05'),
(475, 34, 146, 'Humbang Hasundutan', '2020-05-04 08:18:05', '2020-05-04 08:18:05'),
(476, 34, 173, 'Karo', '2020-05-04 08:18:06', '2020-05-04 08:18:06'),
(477, 34, 217, 'Labuhan Batu', '2020-05-04 08:18:06', '2020-05-04 08:18:06'),
(478, 34, 218, 'Labuhan Batu Selatan', '2020-05-04 08:18:06', '2020-05-04 08:18:06'),
(479, 34, 219, 'Labuhan Batu Utara', '2020-05-04 08:18:06', '2020-05-04 08:18:06'),
(480, 34, 229, 'Langkat', '2020-05-04 08:18:06', '2020-05-04 08:18:06'),
(481, 34, 268, 'Mandailing Natal', '2020-05-04 08:18:06', '2020-05-04 08:18:06'),
(482, 34, 278, 'Medan', '2020-05-04 08:18:06', '2020-05-04 08:18:06'),
(483, 34, 307, 'Nias', '2020-05-04 08:18:06', '2020-05-04 08:18:06'),
(484, 34, 308, 'Nias Barat', '2020-05-04 08:18:06', '2020-05-04 08:18:06'),
(485, 34, 309, 'Nias Selatan', '2020-05-04 08:18:06', '2020-05-04 08:18:06'),
(486, 34, 310, 'Nias Utara', '2020-05-04 08:18:06', '2020-05-04 08:18:06'),
(487, 34, 319, 'Padang Lawas', '2020-05-04 08:18:07', '2020-05-04 08:18:07'),
(488, 34, 320, 'Padang Lawas Utara', '2020-05-04 08:18:07', '2020-05-04 08:18:07'),
(489, 34, 323, 'Padang Sidempuan', '2020-05-04 08:18:07', '2020-05-04 08:18:07'),
(490, 34, 325, 'Pakpak Bharat', '2020-05-04 08:18:07', '2020-05-04 08:18:07'),
(491, 34, 353, 'Pematang Siantar', '2020-05-04 08:18:07', '2020-05-04 08:18:07'),
(492, 34, 389, 'Samosir', '2020-05-04 08:18:07', '2020-05-04 08:18:07'),
(493, 34, 404, 'Serdang Bedagai', '2020-05-04 08:18:07', '2020-05-04 08:18:07'),
(494, 34, 407, 'Sibolga', '2020-05-04 08:18:07', '2020-05-04 08:18:07'),
(495, 34, 413, 'Simalungun', '2020-05-04 08:18:07', '2020-05-04 08:18:07'),
(496, 34, 459, 'Tanjung Balai', '2020-05-04 08:18:07', '2020-05-04 08:18:07'),
(497, 34, 463, 'Tapanuli Selatan', '2020-05-04 08:18:07', '2020-05-04 08:18:07'),
(498, 34, 464, 'Tapanuli Tengah', '2020-05-04 08:18:08', '2020-05-04 08:18:08'),
(499, 34, 465, 'Tapanuli Utara', '2020-05-04 08:18:08', '2020-05-04 08:18:08'),
(500, 34, 470, 'Tebing Tinggi', '2020-05-04 08:18:08', '2020-05-04 08:18:08'),
(501, 34, 481, 'Toba Samosir', '2020-05-04 08:18:08', '2020-05-04 08:18:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `couriers`
--

CREATE TABLE `couriers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `couriers`
--

INSERT INTO `couriers` (`id`, `code`, `courier`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'jne', 'JNE', '2020-04-04 17:47:02', '2020-04-25 09:48:25', NULL),
(2, 'pos', 'POS', '2020-05-22 14:29:11', '2020-05-22 14:29:13', NULL),
(3, 'tiki', 'TIKI', '2020-05-22 14:32:39', '2020-05-22 14:32:40', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `discounts`
--

CREATE TABLE `discounts` (
  `id` int(10) NOT NULL,
  `id_product` int(10) UNSIGNED DEFAULT NULL,
  `percentage` int(3) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_15_123603_create_admins_table', 1),
(4, '2019_02_15_123744_create_sellers_table', 1),
(5, '2019_02_15_125445_create_products_table', 1),
(6, '2019_02_15_130341_create_product_images_table', 1),
(7, '2019_02_15_131114_create_transactions_table', 1),
(8, '2019_02_15_131132_create_transaction_details_table', 1),
(9, '2019_02_15_132352_create_product_categories_table', 1),
(10, '2019_02_15_132701_create_carts_table', 1),
(11, '2019_02_15_134220_create_wishlists_table', 1),
(12, '2019_02_16_044815_create_rates_table', 1),
(13, '2019_02_16_045411_create_product_reviews_table', 1),
(14, '2019_02_16_062504_create_qna_products_table', 1),
(15, '2019_02_16_063238_create_shopping_voucers_table', 1),
(16, '2019_02_16_064643_create_couriers_table', 1),
(17, '2019_02_16_102028_create_notifications_table', 1),
(18, '2019_02_16_103007_create_seller_notifications_table', 1),
(19, '2019_02_16_103024_create_user_notifications_table', 1),
(22, '2020_05_04_151256_create_provinces_table', 2),
(23, '2020_05_04_151420_create_cities_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_rate` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock` int(10) DEFAULT NULL,
  `weight` int(3) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `description`, `product_rate`, `created_at`, `updated_at`, `stock`, `weight`, `deleted_at`) VALUES
(1, 'HP Oppo', 1500000, 'Fitur Mantap, Bisa buat menumbangkan negara adidaya superpower, Fitur Mantap, Bisa buat menumbangkan negara adidaya superpower, Fitur Mantap, Bisa buat menumbangkan negara adidaya superpower, Fitur Mantap, Bisa buat menumbangkan negara adidaya superpower', 1, '2020-04-01 20:02:10', '2020-06-07 03:12:22', 0, 1, '2020-06-07 11:12:22'),
(2, 'Leptop MSI', 10000, 'Mantap, terlalu op buat push reng', 5, '2020-04-02 08:27:29', '2020-04-24 14:19:31', 1, 1, '2020-04-24 22:19:31'),
(3, 'Mouse Logitech G65', 500000, 'Asik', 5, '2020-04-03 17:45:00', '2020-06-07 05:29:07', 0, 1, '2020-06-07 13:29:07'),
(5, 'Sepatu', 10000, 'Asoy', 0, '2020-04-03 17:49:54', '2020-04-24 14:19:38', 1, 1, '2020-04-24 22:19:38'),
(6, 'Dompet', 10000, 'wow', 0, '2020-04-03 17:59:55', '2020-04-24 14:19:43', 1, 1, '2020-04-24 22:19:43'),
(7, 'Ikat Pinggang', 10000, 'Yeah', 0, '2020-04-03 18:01:13', '2020-04-24 14:19:25', 1, 1, '2020-04-24 22:19:25'),
(8, 'Kalung', 1000, 'Wow', 0, '2020-04-03 10:23:45', '2020-04-12 12:59:23', 1, 1, '2020-04-12 20:59:23'),
(9, 'Gunting Kuku', 12000, 'Wow, ini sangat berguna', 0, '2020-04-03 10:46:37', '2020-04-12 12:40:52', 12, 100, '2020-04-12 20:40:52'),
(11, 'Planga Plongo', 10000, 'ngutang teros, kapan negara ini maju', 0, '2020-04-07 05:28:10', '2020-04-24 14:19:20', 69, 700, '2020-04-24 22:19:20'),
(12, 'Samsung Galaxy S10', 12000000, 'keren ajah', 1, '2020-04-12 10:13:07', '2020-06-07 05:29:05', 75, 100, '2020-06-07 13:29:05'),
(13, 'Barang', 12000, 'wah', 0, '2020-04-12 11:01:59', '2020-04-12 12:32:42', 12, 120, '2020-04-12 20:32:42'),
(14, 'Batu', 10000, 'Keras', 0, '2020-04-12 11:45:24', '2020-04-12 12:16:22', 12, 12, '2020-04-12 20:16:22'),
(15, 'Apple Iphone 6 Plus', 9000000, 'Fitur Mantap, Bisa buat menumbangkan negara adidaya superpower berperisai', 4, '2020-04-12 12:08:10', '2020-06-07 03:12:26', 7, 200, '2020-06-07 11:12:26'),
(17, 'dummy', 12, 'dummy product', 0, '2020-04-12 12:34:14', '2020-04-12 12:34:32', 12, 12, '2020-04-12 20:34:32'),
(18, 'dummy123', 2000, 'dummy product', 0, '2020-04-12 12:40:11', '2020-04-12 12:40:20', 12, 120, '2020-04-12 20:40:20'),
(19, 'test product 123', 12000, 'test', 0, '2020-04-12 13:10:19', '2020-04-12 13:55:07', 12, 120, '2020-04-12 21:55:07'),
(20, 'testmulti123', 12000, 'wah', 0, '2020-04-13 02:21:07', '2020-04-13 02:41:09', 1, 1, '2020-04-13 10:41:09'),
(21, 'punten', 10000, 'wow', 0, '2020-04-13 02:43:29', '2020-04-13 02:44:30', 12, 120, '2020-04-13 10:44:30'),
(22, 'slur', 123000, 'wow', 0, '2020-04-13 02:44:48', '2020-04-24 14:19:15', 12, 12, '2020-04-24 22:19:15'),
(25, 'Ampas kuda', 10000, 'dummy product', 0, '2020-04-13 08:05:04', '2020-04-13 08:10:39', 123, 120, '2020-04-13 16:10:39'),
(28, '8ummy 800', 120000, 'dummy product', 0, '2020-04-13 08:27:53', '2020-04-13 08:37:50', 123, 100, '2020-04-13 16:37:50'),
(29, 'Kalung emas', 123000, 'wah', 0, '2020-04-13 08:36:57', '2020-04-27 05:41:10', 123, 100, '2020-04-27 13:41:10'),
(35, 'MSI GL 65 Leopard', 20000000, 'wow', 5, '2020-04-24 13:34:57', '2020-06-07 05:29:03', 9, 12, '2020-06-07 13:29:03'),
(36, 'MSI GF 73', 15000000, 'dummy product', 0, '2020-04-24 14:02:24', '2020-06-07 05:29:01', 0, 120, '2020-06-07 13:29:01'),
(37, 'MSI Titan 75', 20000000, 'dummy product wow mantap', 5, '2020-04-24 14:05:51', '2020-06-07 05:28:59', 7, 100, '2020-06-07 13:28:59'),
(38, 'MSI Titan 76', 200000000, 'wow mntap anjing', 0, '2020-04-24 14:33:00', '2020-06-07 05:28:57', 123, 100, '2020-06-07 13:28:57'),
(41, 'Acer Predator', 20000000, 'wow', 3, '2020-04-25 14:31:43', '2020-06-07 03:12:18', 0, 45, '2020-06-07 11:12:18'),
(42, 'Asus TUF', 15000000, 'wow keren njir', 1, '2020-04-28 22:48:50', '2020-06-07 03:12:16', 0, 200, '2020-06-07 11:12:16'),
(43, 'Buku Test', 500000, 'testing', 0, '2020-06-06 08:32:56', '2020-06-08 05:28:50', 0, 25, NULL),
(44, 'Naruto', 50000, 'Testing', 0, '2020-06-07 05:36:22', '2020-06-08 05:28:50', 49, 50, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_categories`
--

INSERT INTO `product_categories` (`id`, `category_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Science', '2020-04-04 17:52:07', '2020-06-07 05:34:57', NULL),
(2, 'Photografy', '2020-04-07 15:41:33', '2020-06-07 05:35:11', NULL),
(3, 'Ensiklopedia', '2020-04-23 22:28:03', '2020-06-07 05:35:45', NULL),
(4, 'Handphone', '2020-04-25 00:21:11', '2020-04-25 00:21:16', NULL),
(5, 'Coding', '2020-04-25 00:21:13', '2020-06-07 05:34:37', NULL),
(6, 'Horor', '2020-04-25 00:48:02', '2020-06-07 05:29:54', NULL),
(7, 'Tech', '2020-04-25 00:49:23', '2020-06-07 05:29:46', NULL),
(8, 'Comic', '2020-04-25 00:49:35', '2020-06-07 05:29:36', NULL),
(9, 'Professional', '2020-04-25 00:50:16', '2020-04-25 00:50:19', NULL),
(11, 'Penghuni Trash', '2020-04-25 08:50:42', '2020-04-25 08:51:49', '2020-04-25 08:51:49'),
(12, 'School', '2020-06-07 03:53:48', '2020-06-07 03:53:48', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_category_details`
--

CREATE TABLE `product_category_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product_category_details`
--

INSERT INTO `product_category_details` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(89, 43, 4, '2020-06-06 08:32:56', '2020-06-06 08:32:56'),
(90, 43, 5, '2020-06-06 08:32:56', '2020-06-06 08:32:56'),
(91, 44, 6, '2020-06-07 05:36:22', '2020-06-07 05:36:22'),
(92, 44, 7, '2020-06-07 05:36:22', '2020-06-07 05:36:22'),
(93, 44, 8, '2020-06-07 05:36:22', '2020-06-07 05:36:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_name`, `created_at`, `updated_at`) VALUES
(80, 43, '1591461176_Screenshot (696).png', '2020-06-06 08:32:56', '2020-06-06 08:32:56'),
(81, 44, '1591536982_Screenshot (697).png', '2020-06-07 05:36:22', '2020-06-07 05:36:22'),
(82, 44, '1591536982_Screenshot (698).png', '2020-06-07 05:36:22', '2020-06-07 05:36:22'),
(83, 44, '1591536982_Screenshot (705).png', '2020-06-07 05:36:22', '2020-06-07 05:36:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `rate` int(1) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `rate`, `content`, `created_at`, `updated_at`, `status`, `deleted_at`) VALUES
(1, 1, 1, 1, 'wow', '2020-04-04 11:26:30', '2020-05-21 17:10:15', NULL, NULL),
(3, 37, 1, 5, 'well', '2020-05-24 03:12:57', '2020-05-24 03:12:57', NULL, NULL),
(4, 3, 1, 5, 'wow', '2020-05-24 03:14:53', '2020-05-24 03:14:53', NULL, NULL),
(9, 35, 1, 5, 'keren', '2020-05-24 11:58:32', '2020-05-24 11:58:32', NULL, NULL),
(11, 42, 1, 1, 'kere', '2020-05-24 13:25:15', '2020-05-24 13:25:15', NULL, NULL),
(13, 41, 1, 3, 'ok', '2020-05-24 18:40:03', '2020-05-24 18:40:03', NULL, NULL),
(14, 15, 1, 4, 'ya ini aifong', '2020-05-24 18:47:45', '2020-05-24 18:47:45', NULL, NULL),
(28, 12, 1, 1, 'keren p', '2020-05-25 21:26:13', '2020-05-25 21:26:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `provinces`
--

INSERT INTO `provinces` (`id`, `province_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bali', '2020-05-04 08:15:22', '2020-05-04 08:15:22'),
(2, 2, 'Bangka Belitung', '2020-05-04 08:15:23', '2020-05-04 08:15:23'),
(3, 3, 'Banten', '2020-05-04 08:15:26', '2020-05-04 08:15:26'),
(4, 4, 'Bengkulu', '2020-05-04 08:15:29', '2020-05-04 08:15:29'),
(5, 5, 'DI Yogyakarta', '2020-05-04 08:15:30', '2020-05-04 08:15:30'),
(6, 6, 'DKI Jakarta', '2020-05-04 08:15:33', '2020-05-04 08:15:33'),
(7, 7, 'Gorontalo', '2020-05-04 08:15:36', '2020-05-04 08:15:36'),
(8, 8, 'Jambi', '2020-05-04 08:15:37', '2020-05-04 08:15:37'),
(9, 9, 'Jawa Barat', '2020-05-04 08:15:40', '2020-05-04 08:15:40'),
(10, 10, 'Jawa Tengah', '2020-05-04 08:15:44', '2020-05-04 08:15:44'),
(11, 11, 'Jawa Timur', '2020-05-04 08:15:57', '2020-05-04 08:15:57'),
(12, 12, 'Kalimantan Barat', '2020-05-04 08:16:01', '2020-05-04 08:16:01'),
(13, 13, 'Kalimantan Selatan', '2020-05-04 08:16:03', '2020-05-04 08:16:03'),
(14, 14, 'Kalimantan Tengah', '2020-05-04 08:16:05', '2020-05-04 08:16:05'),
(15, 15, 'Kalimantan Timur', '2020-05-04 08:16:07', '2020-05-04 08:16:07'),
(16, 16, 'Kalimantan Utara', '2020-05-04 08:16:10', '2020-05-04 08:16:10'),
(17, 17, 'Kepulauan Riau', '2020-05-04 08:16:12', '2020-05-04 08:16:12'),
(18, 18, 'Lampung', '2020-05-04 08:16:15', '2020-05-04 08:16:15'),
(19, 19, 'Maluku', '2020-05-04 08:16:17', '2020-05-04 08:16:17'),
(20, 20, 'Maluku Utara', '2020-05-04 08:16:19', '2020-05-04 08:16:19'),
(21, 21, 'Nanggroe Aceh Darussalam (NAD)', '2020-05-04 08:16:22', '2020-05-04 08:16:22'),
(22, 22, 'Nusa Tenggara Barat (NTB)', '2020-05-04 08:16:25', '2020-05-04 08:16:25'),
(23, 23, 'Nusa Tenggara Timur (NTT)', '2020-05-04 08:16:29', '2020-05-04 08:16:29'),
(24, 24, 'Papua', '2020-05-04 08:16:35', '2020-05-04 08:16:35'),
(25, 25, 'Papua Barat', '2020-05-04 08:16:45', '2020-05-04 08:16:45'),
(26, 26, 'Riau', '2020-05-04 08:17:09', '2020-05-04 08:17:09'),
(27, 27, 'Sulawesi Barat', '2020-05-04 08:17:10', '2020-05-04 08:17:10'),
(28, 28, 'Sulawesi Selatan', '2020-05-04 08:17:12', '2020-05-04 08:17:12'),
(29, 29, 'Sulawesi Tengah', '2020-05-04 08:17:17', '2020-05-04 08:17:17'),
(30, 30, 'Sulawesi Tenggara', '2020-05-04 08:17:20', '2020-05-04 08:17:20'),
(31, 31, 'Sulawesi Utara', '2020-05-04 08:17:23', '2020-05-04 08:17:23'),
(32, 32, 'Sumatera Barat', '2020-05-04 08:17:32', '2020-05-04 08:17:32'),
(33, 33, 'Sumatera Selatan', '2020-05-04 08:18:00', '2020-05-04 08:18:00'),
(34, 34, 'Sumatera Utara', '2020-05-04 08:18:03', '2020-05-04 08:18:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `response`
--

CREATE TABLE `response` (
  `id` int(10) UNSIGNED NOT NULL,
  `review_id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `timeout` datetime NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regency` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double(12,2) NOT NULL,
  `shipping_cost` double(12,2) NOT NULL,
  `sub_total` double(12,2) NOT NULL,
  `user_id` int(20) UNSIGNED NOT NULL,
  `courier_id` int(10) UNSIGNED NOT NULL,
  `proof_of_payment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('unverified','verified','delivered','success','expired','canceled') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `timeout`, `address`, `regency`, `province`, `total`, `shipping_cost`, `sub_total`, `user_id`, `courier_id`, `proof_of_payment`, `created_at`, `updated_at`, `status`, `telp`) VALUES
(19, '2020-06-07 19:25:19', 'Jl. Raya Sempidi', 'Bangka Barat', 'Bangka Belitung', 500000.00, 50000.00, 52000000.00, 1, 1, '1591442779_87552.jpg', '2020-06-06 11:25:19', '2020-06-06 03:26:36', 'verified', '0895382179880'),
(20, '2020-06-07 20:54:04', 'Jl. Raya Sempidi', 'Kendal', 'Jawa Tengah', 20007000.00, 7000.00, 20000000.00, 1, 1, '1591448103_Screenshot (689).png', '2020-06-06 12:54:04', '2020-06-06 04:56:32', 'verified', '0895382179880'),
(21, '2020-06-07 23:00:48', 'Jl. Raya Sempidi', 'Sarolangun', 'Jambi', 20007000.00, 7000.00, 20000000.00, 1, 1, NULL, '2020-06-06 15:00:48', '2020-06-06 15:00:48', 'unverified', '0895382179880'),
(22, '2020-06-07 23:11:13', 'Jl. Raya Sempidi', 'Gianyar', 'Bali', 9007000.00, 7000.00, 9000000.00, 1, 2, '1591495136_Screenshot (689).png', '2020-06-06 15:11:13', '2020-06-06 17:59:19', 'verified', '0895382179880'),
(23, '2020-06-09 12:33:36', 'Jl. Raya Lukluk', 'Badung', 'Bali', 507000.00, 7000.00, 500000.00, 1, 1, '1591590886_Screenshot (790).png', '2020-06-08 04:33:36', '2020-06-07 20:35:37', 'verified', '0895382179880'),
(24, '2020-06-09 17:58:32', 'Sempidi', 'Badung', 'Bali', 1107000.00, 7000.00, 1100000.00, 1, 1, '1591619659_Screenshot (791).png', '2020-06-08 09:58:32', '2020-06-08 04:34:19', 'unverified', '0895382179880'),
(25, '2020-06-09 18:21:46', 'Kapal', 'Denpasar', 'Bali', 57000.00, 7000.00, 50000.00, 1, 1, '1591619562_Screenshot (790).png', '2020-06-08 10:21:46', '2020-06-08 04:32:42', 'unverified', '0895382179880'),
(26, '2020-06-09 18:22:25', 'Jl. Raya Lukluk', 'Buleleng', 'Bali', 507000.00, 7000.00, 500000.00, 1, 1, NULL, '2020-06-08 10:22:25', '2020-06-08 02:22:38', 'canceled', '0895382179880'),
(27, '2020-06-09 21:27:20', 'Jl Raya Abianbase', 'Denpasar', 'Bali', 557000.00, 7000.00, 550000.00, 1, 1, '1591622885_Screenshot (792).png', '2020-06-08 13:27:20', '2020-06-08 05:29:00', 'delivered', '0895382179880');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `discount` int(3) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `product_id`, `qty`, `discount`, `selling_price`, `created_at`, `updated_at`) VALUES
(27, 23, 43, 1, 0, 500000, '2020-06-08 04:33:36', '2020-06-08 04:33:36'),
(28, 24, 44, 2, 0, 50000, '2020-06-08 09:58:33', '2020-06-08 09:58:33'),
(29, 24, 43, 2, 0, 500000, '2020-06-08 09:58:33', '2020-06-08 09:58:33'),
(30, 25, 44, 6, 0, 50000, '2020-06-08 10:21:46', '2020-06-08 10:21:46'),
(31, 26, 43, 3, 0, 500000, '2020-06-08 10:22:25', '2020-06-08 10:22:25'),
(32, 27, 43, 4, 0, 500000, '2020-06-08 13:27:20', '2020-06-08 13:27:20'),
(33, 27, 44, 1, 0, 50000, '2020-06-08 13:27:20', '2020-06-08 13:27:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `profile_image`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'I Gede Hadi Darmawan', 'ghadi.darmawan@gmail.com', '1591439927.jpg', 'Sudah Terdaftar', '2020-03-15 04:43:25', '$2y$10$RX49vJPLp58aJ/HzRxnwk.cH8/SSRyznS2auLir4oFFg7lLK0v2yK', '6T6jjp81Jw4AADNts7h8PY21Qp1rtWg9VCm0vuBHoHifsegcjIwulePfFjcL', '2020-03-15 04:41:41', '2020-06-06 02:38:48', NULL),
(8, 'Dedy', 'ghadi@gmail.com', 'def.png', 'Sudah Terdaftar', NULL, '$2y$10$VgjHGG9F8kvUezm/wXmTZuMggdWxA/EckEzRE/d2kn/sO7FHpjUf.', NULL, '2020-06-06 07:36:48', '2020-06-06 07:36:48', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(11) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('02be417d-1171-4e98-a5f8-60cc69373e8a', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/15\'>Status Transaksimu dengan id 15 telah diupdate</a>', '2020-05-25 21:03:28', '2020-05-25 21:03:24', '2020-05-25 21:03:28'),
('05fcddfc-e327-4d42-96b1-5108ab4874f2', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/15\'>Status Transaksimu dengan id 15 telah diupdate</a>', '2020-05-25 21:03:28', '2020-05-25 21:02:08', '2020-05-25 21:03:28'),
('0a3a8d0e-ebe2-4e1c-8538-62e8a123da6a', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/16\'>Status Transaksimu dengan id 16 telah diupdate</a>', '2020-05-25 21:42:48', '2020-05-25 21:32:32', '2020-05-25 21:42:48'),
('0b61237c-ff16-44e6-b90f-88d786dd1597', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/15\'>Status Transaksimu dengan id 15 telah diupdate</a>', '2020-05-25 21:03:28', '2020-05-25 20:59:03', '2020-05-25 21:03:28'),
('321ac683-ee07-4c1e-a88c-3cdbab84945b', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/27\'>Status Transaksi dengan ID 27 Telah Diupdate</a>', NULL, '2020-06-08 05:28:50', '2020-06-08 05:28:50'),
('3787aab8-7837-4825-bb7c-027bbd5c88b5', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/16\'>Status Transaksimu dengan id 16 telah diupdate</a>', '2020-05-25 21:42:48', '2020-05-25 21:32:22', '2020-05-25 21:42:48'),
('4c358483-0cd1-47f5-97d0-ab16f5fef80b', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/product/35\'>Reviewmu di produk MSI GL 65 Leopard telah direspon oleh admin</a>', '2020-05-25 19:36:55', '2020-05-25 19:32:34', '2020-05-25 19:36:55'),
('4d0d9722-b4bf-49ee-a5ec-6a05aa869aaa', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/18\'>Status Transaksimu dengan id 18 telah diupdate</a>', '2020-05-25 22:49:52', '2020-05-25 22:49:49', '2020-05-25 22:49:52'),
('5b42d6dc-63a9-498e-a87e-eaae7be5b766', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/14\'>Status Transaksimu dengan id 14 telah diupdate</a>', '2020-05-25 20:11:58', '2020-05-25 20:11:51', '2020-05-25 20:11:58'),
('5e6e9a08-3416-46e0-ad88-2ad0f8c94396', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/17\'>Status Transaksimu dengan id 17 telah diupdate</a>', '2020-05-25 22:46:48', '2020-05-25 22:45:47', '2020-05-25 22:46:48'),
('6ced86c5-f526-4158-8aae-6c70d4f8c042', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/16\'>Status Transaksimu dengan id 16 telah diupdate</a>', '2020-05-25 21:32:17', '2020-05-25 21:32:05', '2020-05-25 21:32:17'),
('7313fbfd-926b-4796-9894-1b1116ec3ee3', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/27\'>Status Transaksi dengan ID 27 Telah Diupdate</a>', NULL, '2020-06-08 05:29:00', '2020-06-08 05:29:00'),
('760c4c3e-6b53-48d3-8158-b6ebe8f53792', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/14\'>Status Transaksimu dengan id 14 telah diupdate</a>', '2020-05-25 20:11:58', '2020-05-25 20:11:37', '2020-05-25 20:11:58'),
('8269db64-0f5d-44f8-bfab-39b2c9312498', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/product/12\'>Reviewmu di produk Samsung Galaxy S10 telah direspon oleh admin</a>', '2020-05-25 21:12:27', '2020-05-25 21:12:14', '2020-05-25 21:12:27'),
('8f86f918-994b-4bff-aa92-1acc5d773a40', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/20\'>Status Transaksimu dengan id 20 telah diupdate</a>', '2020-06-06 06:43:24', '2020-06-06 04:56:32', '2020-06-06 06:43:24'),
('ac4c4374-9fad-42f8-9ba9-2aa8f8612449', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/17\'>Status Transaksimu dengan id 17 telah diupdate</a>', '2020-05-25 22:46:48', '2020-05-25 22:45:36', '2020-05-25 22:46:48'),
('c00af9b7-dfe3-434b-bcd2-cb605fd875a3', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/23\'>Status Transaksi dengan ID 23 Telah Diupdate</a>', NULL, '2020-06-07 20:35:37', '2020-06-07 20:35:37'),
('d7c67ea0-4177-4ede-8bf8-cb4d98b2cdd7', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/22\'>Status Transaksimu dengan id 22 telah diupdate</a>', NULL, '2020-06-06 17:59:19', '2020-06-06 17:59:19'),
('e9564f81-a796-4b90-b4d0-f98f248dc807', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/26\'>Status Transaksi dengan ID 26 Telah Diupdate</a>', NULL, '2020-06-08 02:22:38', '2020-06-08 02:22:38'),
('e9e4960c-10c3-4ea1-b721-cebf6e16a59f', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/19\'>Status Transaksimu dengan id 19 telah diupdate</a>', '2020-06-06 04:36:35', '2020-06-06 03:26:36', '2020-06-06 04:36:35'),
('f1289b76-9dbf-43e1-9d50-9c6be1be165c', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/14\'>Status Transaksimu dengan id 14 telah diupdate</a>', '2020-05-25 20:11:58', '2020-05-25 20:09:51', '2020-05-25 20:11:58'),
('f779d9c1-9126-4e7e-99c6-ecf2af37ad7d', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/product/12\'>Reviewmu di produk Samsung Galaxy S10 telah direspon oleh admin</a>', '2020-05-25 22:43:24', '2020-05-25 21:26:30', '2020-05-25 22:43:24'),
('fb013ecb-d080-4069-90bb-49f8cbdfb5e6', 'App\\Notifications\\UserNotification', 'App\\User', 1, '<a href =\'/transaksi/detail/17\'>Status Transaksimu dengan id 17 telah diupdate</a>', '2020-05-25 22:46:48', '2020-05-25 22:45:56', '2020-05-25 22:46:48');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sellers_email_unique` (`phone`);

--
-- Indeks untuk tabel `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seller_notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`),
  ADD KEY `notifiable_id` (`notifiable_id`);

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_category_details`
--
ALTER TABLE `product_category_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `rate_id` (`rate`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_id` (`review_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courier_id` (`courier_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_transaction` (`transaction_id`),
  ADD KEY `id_product` (`product_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`),
  ADD KEY `notifiable_id` (`notifiable_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT untuk tabel `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT untuk tabel `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `product_category_details`
--
ALTER TABLE `product_category_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT untuk tabel `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT untuk tabel `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `response`
--
ALTER TABLE `response`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD CONSTRAINT `admin_notifications_ibfk_1` FOREIGN KEY (`notifiable_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `discounts_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_category_details`
--
ALTER TABLE `product_category_details`
  ADD CONSTRAINT `product_category_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_category_details_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_reviews_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `response`
--
ALTER TABLE `response`
  ADD CONSTRAINT `response_ibfk_1` FOREIGN KEY (`review_id`) REFERENCES `product_reviews` (`id`),
  ADD CONSTRAINT `response_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`courier_id`) REFERENCES `couriers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD CONSTRAINT `user_notifications_ibfk_1` FOREIGN KEY (`notifiable_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
