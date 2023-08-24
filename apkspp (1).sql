-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2023 at 05:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apkspp`
--

-- --------------------------------------------------------

--
-- Table structure for table `bebas`
--

CREATE TABLE `bebas` (
  `bebas_id` int(11) NOT NULL,
  `student_student_id` int(11) DEFAULT NULL,
  `payment_payment_id` int(11) DEFAULT NULL,
  `bebas_bill` decimal(10,0) DEFAULT NULL,
  `bebas_total_pay` decimal(10,0) DEFAULT 0,
  `bebas_input_date` timestamp NULL DEFAULT NULL,
  `bebas_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bebas`
--

INSERT INTO `bebas` (`bebas_id`, `student_student_id`, `payment_payment_id`, `bebas_bill`, `bebas_total_pay`, `bebas_input_date`, `bebas_last_update`) VALUES
(23, 24, 16, 5, 0, '2023-08-23 15:40:20', '2023-08-23 15:40:20'),
(24, 24, 16, 5, 0, '2023-08-23 15:40:20', '2023-08-23 15:40:20'),
(25, 24, 16, 5, 0, '2023-08-23 15:40:20', '2023-08-23 15:40:20'),
(26, 24, 16, 5, 0, '2023-08-23 15:40:20', '2023-08-23 15:40:20'),
(27, 24, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(28, 24, 16, 5, 5, '2023-08-23 15:40:21', '2023-08-23 15:42:22'),
(29, 24, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(30, 24, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(31, 24, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(32, 24, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(33, 24, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(34, 24, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(36, 26, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(37, 26, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(38, 26, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(39, 26, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(40, 26, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(41, 26, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(42, 26, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(43, 26, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(44, 26, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(45, 26, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(46, 26, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(47, 25, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(48, 25, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(49, 25, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(50, 25, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(51, 25, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(52, 25, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(53, 25, 16, 5, 0, '2023-08-23 15:40:21', '2023-08-23 15:40:21'),
(54, 25, 16, 5, 0, '2023-08-23 15:40:22', '2023-08-23 15:40:22'),
(55, 25, 16, 5, 0, '2023-08-23 15:40:22', '2023-08-23 15:40:22'),
(56, 25, 16, 5, 0, '2023-08-23 15:40:22', '2023-08-23 15:40:22'),
(57, 25, 16, 5, 0, '2023-08-23 15:40:22', '2023-08-23 15:40:22'),
(58, 25, 16, 5, 0, '2023-08-23 15:40:22', '2023-08-23 15:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `bebas_pay`
--

CREATE TABLE `bebas_pay` (
  `bebas_pay_id` int(11) NOT NULL,
  `bebas_bebas_id` int(11) DEFAULT NULL,
  `bebas_pay_number` varchar(100) DEFAULT NULL,
  `bebas_pay_bill` decimal(10,0) DEFAULT NULL,
  `bebas_pay_desc` varchar(100) DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL,
  `bebas_pay_input_date` date DEFAULT NULL,
  `bebas_pay_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bebas_pay`
--

INSERT INTO `bebas_pay` (`bebas_pay_id`, `bebas_bebas_id`, `bebas_pay_number`, `bebas_pay_bill`, `bebas_pay_desc`, `user_user_id`, `bebas_pay_input_date`, `bebas_pay_last_update`) VALUES
(5, 28, '20230800011', 5, '-', 7, '2023-08-23', '2023-08-23 15:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `buktibayar`
--

CREATE TABLE `buktibayar` (
  `id` int(11) NOT NULL,
  `nilai` decimal(10,0) NOT NULL,
  `upload_image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `period_period_id` int(11) NOT NULL,
  `pos_pos_id` int(11) NOT NULL,
  `student_student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `buktibayar`
--

INSERT INTO `buktibayar` (`id`, `nilai`, `upload_image`, `description`, `status`, `period_period_id`, `pos_pos_id`, `student_student_id`) VALUES
(7, 100000, 'Admin_Master2.png', 'Admin Master Akses', 2, 5, 11, 23);

-- --------------------------------------------------------

--
-- Table structure for table `bulan`
--

CREATE TABLE `bulan` (
  `bulan_id` int(11) NOT NULL,
  `student_student_id` int(11) DEFAULT NULL,
  `payment_payment_id` int(11) DEFAULT NULL,
  `month_month_id` int(11) DEFAULT NULL,
  `bulan_bill` decimal(10,0) DEFAULT NULL,
  `bulan_status` tinyint(1) DEFAULT 0,
  `bulan_number_pay` varchar(100) DEFAULT NULL,
  `bulan_date_pay` date DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL,
  `bulan_input_date` timestamp NULL DEFAULT NULL,
  `bulan_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bulan`
--

INSERT INTO `bulan` (`bulan_id`, `student_student_id`, `payment_payment_id`, `month_month_id`, `bulan_bill`, `bulan_status`, `bulan_number_pay`, `bulan_date_pay`, `user_user_id`, `bulan_input_date`, `bulan_last_update`) VALUES
(327, 24, 17, 1, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:33', '2023-08-23 15:06:33'),
(328, 24, 17, 2, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:33', '2023-08-23 15:06:33'),
(329, 24, 17, 3, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:33', '2023-08-23 15:06:33'),
(330, 24, 17, 4, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(331, 24, 17, 5, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(332, 24, 17, 6, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(333, 24, 17, 7, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(334, 24, 17, 8, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(335, 24, 17, 9, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(336, 24, 17, 10, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(337, 24, 17, 11, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(338, 24, 17, 12, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(339, 26, 17, 1, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(340, 26, 17, 2, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(341, 26, 17, 3, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(342, 26, 17, 4, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(343, 26, 17, 5, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(344, 26, 17, 6, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(345, 26, 17, 7, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(346, 26, 17, 8, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(347, 26, 17, 9, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(348, 26, 17, 10, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:34', '2023-08-23 15:06:34'),
(349, 26, 17, 11, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:35', '2023-08-23 15:06:35'),
(350, 26, 17, 12, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:35', '2023-08-23 15:06:35'),
(351, 25, 17, 1, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:35', '2023-08-23 15:06:35'),
(352, 25, 17, 2, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:35', '2023-08-23 15:06:35'),
(353, 25, 17, 3, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:35', '2023-08-23 15:06:35'),
(354, 25, 17, 4, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:35', '2023-08-23 15:06:35'),
(355, 25, 17, 5, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:35', '2023-08-23 15:06:35'),
(356, 25, 17, 6, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:35', '2023-08-23 15:06:35'),
(357, 25, 17, 7, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:35', '2023-08-23 15:06:35'),
(358, 25, 17, 8, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:35', '2023-08-23 15:06:35'),
(359, 25, 17, 9, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:35', '2023-08-23 15:06:35'),
(360, 25, 17, 10, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:35', '2023-08-23 15:06:35'),
(361, 25, 17, 11, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:35', '2023-08-23 15:06:35'),
(362, 25, 17, 12, 10000, 0, NULL, NULL, NULL, '2023-08-23 15:06:35', '2023-08-23 15:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(4, 'X'),
(5, 'XI'),
(6, 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `debit`
--

CREATE TABLE `debit` (
  `debit_id` int(11) NOT NULL,
  `debit_date` date DEFAULT NULL,
  `debit_desc` varchar(100) DEFAULT NULL,
  `debit_value` decimal(10,0) DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL,
  `debit_input_date` timestamp NULL DEFAULT NULL,
  `debit_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `information_id` int(11) NOT NULL,
  `information_title` varchar(100) DEFAULT NULL,
  `information_desc` text DEFAULT NULL,
  `information_img` varchar(255) DEFAULT NULL,
  `information_publish` tinyint(1) DEFAULT 0,
  `user_user_id` int(11) DEFAULT NULL,
  `information_input_date` timestamp NULL DEFAULT NULL,
  `information_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kredit`
--

CREATE TABLE `kredit` (
  `kredit_id` int(11) NOT NULL,
  `kredit_date` date DEFAULT NULL,
  `kredit_desc` varchar(100) DEFAULT NULL,
  `kredit_value` decimal(10,0) DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL,
  `kredit_input_date` timestamp NULL DEFAULT NULL,
  `kredit_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `letter`
--

CREATE TABLE `letter` (
  `letter_id` int(11) NOT NULL,
  `letter_number` varchar(100) DEFAULT NULL,
  `letter_month` int(11) DEFAULT NULL,
  `letter_year` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `letter`
--

INSERT INTO `letter` (`letter_id`, `letter_number`, `letter_month`, `letter_year`) VALUES
(29, '00026', 8, '2021'),
(30, '00027', 8, '2021'),
(31, '00028', 8, '2021'),
(32, '00029', 8, '2021'),
(33, '00030', 8, '2021'),
(34, '00031', 8, '2021'),
(35, '00032', 8, '2021'),
(36, '00033', 8, '2021'),
(37, '00034', 8, '2021'),
(38, '00035', 8, '2021'),
(39, '00036', 8, '2021'),
(40, '00037', 8, '2021'),
(41, '00001', 6, '2023'),
(42, '00002', 6, '2023'),
(43, '00003', 6, '2023'),
(44, '00004', 6, '2023'),
(45, '00005', 6, '2023'),
(46, '00006', 7, '2023'),
(47, '00007', 7, '2023'),
(48, '00008', 8, '2023'),
(49, '00009', 8, '2023'),
(50, '00010', 8, '2023'),
(51, '00011', 8, '2023');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `log_date` timestamp NULL DEFAULT NULL,
  `log_action` varchar(45) DEFAULT NULL,
  `log_module` varchar(45) DEFAULT NULL,
  `log_info` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `log_date`, `log_action`, `log_module`, `log_info`, `user_id`) VALUES
(61, '2021-08-30 15:46:11', 'Tambah', 'Tahun Ajaran', 'ID:null;Title:2021/2022', NULL),
(62, '2021-08-30 15:47:29', 'Tambah', 'Student', 'ID:23;Name:DENI KURNIAWAN', NULL),
(63, '2021-08-30 15:48:19', 'Tambah', 'Jenis Pembayaran', 'ID:null;Title:', NULL),
(64, '2023-06-23 17:16:41', 'Sunting', 'user', 'ID:3;Name:TATA USAHA', NULL),
(65, '2023-06-23 17:16:52', 'Hapus', 'user', 'ID:3;Title:TATA USAHA', NULL),
(66, '2023-06-23 17:16:55', 'Hapus', 'user', 'ID:2;Title:User', NULL),
(67, '2023-06-23 17:18:34', 'Tambah', 'user', 'ID:4;Name:TATA USAHA', NULL),
(68, '2023-06-23 17:19:16', 'Tambah', 'user', 'ID:5;Name:Admin', NULL),
(69, '2023-06-23 17:20:07', 'Tambah', 'user', 'ID:6;Name:OrangTuaSIswa', NULL),
(70, '2023-06-23 17:21:07', 'Hapus', 'user', 'ID:6;Title:OrangTuaSIswa', NULL),
(71, '2023-06-23 17:21:09', 'Hapus', 'user', 'ID:5;Title:Admin', NULL),
(72, '2023-06-23 17:21:12', 'Hapus', 'user', 'ID:4;Title:TATA USAHA', NULL),
(73, '2023-06-23 17:22:02', 'Tambah', 'user', 'ID:7;Name:Admin Master', NULL),
(74, '2023-06-23 17:22:56', 'Tambah', 'user', 'ID:8;Name:OrangTuaSIswa', NULL),
(75, '2023-06-23 17:23:32', 'Tambah', 'user', 'ID:9;Name:Petugas TU', NULL),
(76, '2023-06-23 17:23:51', 'Hapus', 'user', 'ID:1;Title:Petugas', 7),
(77, '2023-06-23 18:46:59', 'Tambah', 'Jenis Pembayaran', 'ID:null;Title:', NULL),
(78, '2023-06-23 18:47:50', 'Tambah', 'Tahun Ajaran', 'ID:null;Title:2022/2023', NULL),
(79, '2023-06-23 18:48:00', 'Tambah', 'Tahun Ajaran', 'ID:null;Title:2023/2024', NULL),
(80, '2023-06-23 23:35:15', 'Sunting', 'user', 'ID:9;Name:Petugas TU', 7),
(81, '2023-06-23 23:35:41', 'Sunting', 'user', 'ID:8;Name:OrangTuaSIswa', 7),
(82, '2023-06-23 23:36:05', 'Sunting', 'user', 'ID:7;Name:Admin Master', 7),
(83, '2023-06-24 00:07:16', 'Sunting', 'user', 'ID:7;Name:Admin Master', 7),
(84, '2023-07-03 12:26:25', 'Hapus', 'user', 'ID:9;Title:Petugas TU', 7),
(85, '2023-07-03 12:27:32', 'Hapus', 'user', 'ID:8;Title:OrangTuaSIswa', 7),
(86, '2023-07-04 14:02:14', 'Sunting', 'user', 'ID:10;Name:Petugas@tu.com', 7),
(87, '2023-07-10 10:07:13', 'Tambah', 'user', 'ID:12;Name:Kepala Yayasan', 7),
(88, '2023-07-15 14:05:11', 'Sunting', 'user', 'ID:12;Name:Kepala Yayasan', 7),
(89, '2023-08-06 14:12:50', 'Tambah', 'Student', 'ID:24;Name:Jono', 7),
(90, '2023-08-06 14:14:27', 'Reset Password', 'Pengguna', 'ID:null;Title:', 7),
(91, '2023-08-06 14:45:53', 'Edit', 'Profile', 'ID:13;Name:Jono', 13),
(92, '2023-08-06 14:47:50', 'Edit', 'Profile', 'ID:13;Name:Jono', 13),
(93, '2023-08-06 14:47:54', 'Edit', 'Profile', 'ID:13;Name:Jono', 13),
(94, '2023-08-06 14:48:11', 'Edit', 'Profile', 'ID:13;Name:Jono', 13),
(95, '2023-08-06 14:49:56', 'Edit', 'Profile', 'ID:13;Name:Jono', 13),
(96, '2023-08-06 14:50:13', 'Edit', 'Profile', 'ID:13;Name:Jono', 13),
(97, '2023-08-06 14:51:51', 'Edit', 'Profile', 'ID:13;Name:Jono', 13),
(98, '2023-08-22 16:21:47', 'Tambah', 'Jenis Pembayaran', 'ID:null;Title:', NULL),
(99, '2023-08-22 16:24:27', 'Tambah', 'Jenis Pembayaran', 'ID:null;Title:', NULL),
(100, '2023-08-23 14:23:00', 'Sunting', 'Pos Bayar', 'ID:null;Title:SPP', NULL),
(101, '2023-08-23 14:23:18', 'Hapus', 'Pos Bayar', 'ID:7;Title:SPP', 7),
(102, '2023-08-23 14:24:30', 'Hapus', 'Pos Bayar', 'ID:8;Title:SPP', 7),
(103, '2023-08-23 14:31:57', 'Tambah', 'Jenis Pembayaran', 'ID:null;Title:', NULL),
(104, '2023-08-23 14:32:12', 'Tambah', 'Jenis Pembayaran', 'ID:null;Title:', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log_trx`
--

CREATE TABLE `log_trx` (
  `log_trx_id` int(11) NOT NULL,
  `student_student_id` int(11) DEFAULT NULL,
  `bulan_bulan_id` int(11) DEFAULT NULL,
  `bebas_pay_bebas_pay_id` int(11) DEFAULT NULL,
  `log_trx_input_date` timestamp NULL DEFAULT NULL,
  `log_trx_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `log_trx`
--

INSERT INTO `log_trx` (`log_trx_id`, `student_student_id`, `bulan_bulan_id`, `bebas_pay_bebas_pay_id`, `log_trx_input_date`, `log_trx_last_update`) VALUES
(12, 23, NULL, NULL, '2021-08-30 15:49:17', '2021-08-30 15:49:17'),
(15, 23, NULL, NULL, '2021-08-30 16:23:38', '2021-08-30 16:23:38'),
(16, 23, NULL, NULL, '2021-08-30 16:23:42', '2021-08-30 16:23:42'),
(17, 23, NULL, NULL, '2023-06-23 18:48:39', '2023-06-23 18:48:39'),
(18, 23, NULL, NULL, '2023-06-23 18:48:43', '2023-06-23 18:48:43'),
(20, 23, NULL, NULL, '2023-06-23 18:55:59', '2023-06-23 18:55:59'),
(21, 23, NULL, NULL, '2023-07-03 13:15:27', '2023-07-03 13:15:27'),
(22, 23, NULL, NULL, '2023-07-11 15:19:44', '2023-07-11 15:19:44'),
(24, 24, NULL, NULL, '2023-08-22 16:27:37', '2023-08-22 16:27:37'),
(25, 24, NULL, NULL, '2023-08-23 14:06:38', '2023-08-23 14:06:38'),
(26, 24, NULL, 5, '2023-08-23 15:42:22', '2023-08-23 15:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `majors_id` int(11) NOT NULL,
  `majors_name` varchar(100) DEFAULT NULL,
  `majors_short_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`majors_id`, `majors_name`, `majors_short_name`) VALUES
(1, 'IPA 1', 'IPA_1'),
(2, 'IPA 2', 'IPA_2'),
(3, 'IPA 3', 'IPA_3'),
(4, 'IPA 4', 'IPA_4'),
(5, 'IPS 1', 'IPS_1'),
(6, 'IPS 2', 'IPS_2'),
(7, 'IPS 3', 'IPS_3'),
(8, 'IPS 4', 'IPS_4');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `month_id` int(11) NOT NULL,
  `month_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`month_id`, `month_name`) VALUES
(1, 'Juli'),
(2, 'Agustus'),
(3, 'September'),
(4, 'Oktober'),
(5, 'November'),
(6, 'Desember'),
(7, 'Januari'),
(8, 'Februari'),
(9, 'Maret'),
(10, 'April'),
(11, 'Mei'),
(12, 'Juni');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` enum('BEBAS','BULAN') DEFAULT NULL,
  `period_period_id` int(11) DEFAULT NULL,
  `pos_pos_id` int(11) DEFAULT NULL,
  `payment_input_date` timestamp NULL DEFAULT NULL,
  `payment_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_type`, `period_period_id`, `pos_pos_id`, `payment_input_date`, `payment_last_update`) VALUES
(16, 'BEBAS', 5, 12, '2023-08-23 14:31:57', '2023-08-23 14:31:57'),
(17, 'BULAN', 5, 11, '2023-08-23 14:32:12', '2023-08-23 14:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `ket` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `tglexpired` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `subject`, `ket`, `status`, `tglexpired`) VALUES
(1, 'Pemberitahuan Pembayaran 123', '123 Masa pembayaran SPP dilaksanakan pada tanggal 23 – 27 Agustus 2021', 1, '2023-08-23 08:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `period`
--

CREATE TABLE `period` (
  `period_id` int(11) NOT NULL,
  `period_start` year(4) DEFAULT NULL,
  `period_end` year(4) DEFAULT NULL,
  `period_status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `period`
--

INSERT INTO `period` (`period_id`, `period_start`, `period_end`, `period_status`) VALUES
(5, '2021', '2022', 0),
(6, '2022', '2023', 1),
(7, '2023', '2024', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pos`
--

CREATE TABLE `pos` (
  `pos_id` int(11) NOT NULL,
  `pos_name` varchar(100) DEFAULT NULL,
  `pos_description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pos`
--

INSERT INTO `pos` (`pos_id`, `pos_name`, `pos_description`) VALUES
(11, 'SPP', '-'),
(12, 'Uang Gedung', '-');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `setting_name` varchar(255) DEFAULT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`, `setting_last_update`) VALUES
(1, 'setting_school', 'Madrasah Aliyah (MA) Negeri 2 Andalusia', '2020-06-23 05:07:07'),
(2, 'setting_address', 'Jl. Dipongoro No 100 - Wuling Kec. Wates - Andalusia', '2020-06-23 05:07:07'),
(3, 'setting_phone', '0331 (8887) 90018', '2020-06-23 05:07:07'),
(4, 'setting_district', 'Wates', '2020-06-23 05:07:07'),
(5, 'setting_city', 'Andalusia', '2020-06-23 05:07:07'),
(6, 'setting_logo', 'Madrasah_Aliyah_(MA)_Negeri_2_Andalusia1.png', '2020-06-23 05:07:07'),
(7, 'setting_level', 'senior', '2020-06-23 05:07:07'),
(8, 'setting_user_sms', '-', '2020-06-23 05:07:07'),
(9, 'setting_pass_sms', 'password', '2020-06-23 05:07:07'),
(10, 'setting_sms', 'N', '2020-06-23 05:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_nis` varchar(45) DEFAULT NULL,
  `student_nisn` varchar(45) DEFAULT NULL,
  `student_password` varchar(100) DEFAULT NULL,
  `student_full_name` varchar(255) DEFAULT NULL,
  `student_gender` enum('L','P') DEFAULT NULL,
  `student_born_place` varchar(45) DEFAULT NULL,
  `student_born_date` date DEFAULT NULL,
  `student_img` varchar(255) DEFAULT NULL,
  `student_phone` varchar(45) DEFAULT NULL,
  `student_hobby` varchar(100) DEFAULT NULL,
  `student_address` text DEFAULT NULL,
  `student_name_of_mother` varchar(255) DEFAULT NULL,
  `student_name_of_father` varchar(255) DEFAULT NULL,
  `student_parent_phone` varchar(45) DEFAULT NULL,
  `class_class_id` int(11) DEFAULT NULL,
  `majors_majors_id` int(11) DEFAULT NULL,
  `student_status` tinyint(1) DEFAULT 1,
  `student_input_date` timestamp NULL DEFAULT NULL,
  `student_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_nis`, `student_nisn`, `student_password`, `student_full_name`, `student_gender`, `student_born_place`, `student_born_date`, `student_img`, `student_phone`, `student_hobby`, `student_address`, `student_name_of_mother`, `student_name_of_father`, `student_parent_phone`, `class_class_id`, `majors_majors_id`, `student_status`, `student_input_date`, `student_last_update`) VALUES
(23, '123456789', '123456789', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'DENI KURNIAWAN', 'L', 'WATES', '2021-08-30', NULL, '-', '-', '-', '-', '-', '-', 5, 1, 1, '2021-08-30 15:47:29', '2023-06-23 18:50:43'),
(24, '11223344', '11223344', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Jono', 'L', 'Jkt', '0000-00-00', NULL, '123467890', '', '', '', '', '', 4, 2, 1, '2023-08-06 14:12:50', '2023-08-06 14:12:50'),
(25, '555555', '555555', '381b6aa8fcd85996fdf9a3e55ccbd2eea10e284b', 'OJEN', 'P', '-', '2000-12-10', NULL, '-', '-', '-', '-', '-', '-', 4, 1, 1, '2023-08-06 15:17:05', '2023-08-06 15:17:05'),
(26, '666666', '666666', '381b6aa8fcd85996fdf9a3e55ccbd2eea10e284b', 'ODANG', 'L', '-', '2000-12-10', NULL, '-', '-', '-', '-', '-', '-', 4, 1, 1, '2023-08-06 15:17:05', '2023-08-06 15:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  `user_password` varchar(45) DEFAULT NULL,
  `user_full_name` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_description` text DEFAULT NULL,
  `user_role_role_id` int(11) DEFAULT NULL,
  `user_is_deleted` tinyint(1) DEFAULT 0,
  `user_input_date` timestamp NULL DEFAULT NULL,
  `user_last_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_password`, `user_full_name`, `user_image`, `user_description`, `user_role_role_id`, `user_is_deleted`, `user_input_date`, `user_last_update`) VALUES
(7, 'Admin@master.com', 'd5cea670c927a04ca0b4d5ea5ddf9d3e1a7f0ba4', 'Admin Master', 'Admin_Master2.png', 'Admin Master Akses', 1, 0, '2023-06-23 17:22:02', '2023-06-24 00:07:16'),
(10, 'Petugas@tu.com', 'b47fc85c8854d3f99318a65e35cfb5e858c9f636', 'Petugas@tu.com', NULL, '', 2, 0, '2023-07-03 12:27:22', '2023-07-04 14:02:42'),
(11, 'Orangtua@siswa.com', 'f94c0957350fd4be620dd343037090a6e39a3791', 'Orangtua@siswa.com', NULL, '', 3, 0, '2023-07-03 12:27:52', '2023-07-03 12:27:52'),
(12, 'Admin@yayasan.com', 'ab5ceba0b58fd5d85e61b274269745adf4b9c374', 'Kepala Yayasan', 'Kepala_Yayasan.png', '', 4, 0, '2023-07-10 10:07:13', '2023-07-15 14:05:11'),
(13, '11223344', 'b986415c93241513d33d01fcf532a6c47ac4f3ee', 'Jono', NULL, 'Siswa', 3, 0, '2023-08-06 14:12:50', '2023-08-06 14:51:51'),
(14, '555555', 'b7c40b9c66bc88d38a59e554c639d743e77f1b65', 'OJEN', NULL, 'Siswa', 3, 0, '2023-08-06 15:17:05', '2023-08-06 15:17:05'),
(15, '666666', '1411678a0b9e25ee2f7c8b2f7ac92b6a74b3f9c5', 'ODANG', NULL, 'Siswa', 3, 0, '2023-08-06 15:17:05', '2023-08-06 15:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`role_id`, `role_name`) VALUES
(1, 'SUPERUSER'),
(2, 'BENDAHARA'),
(3, 'USER'),
(4, 'YAYASAN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bebas`
--
ALTER TABLE `bebas`
  ADD PRIMARY KEY (`bebas_id`),
  ADD KEY `fk_bebas_payment1_idx` (`payment_payment_id`),
  ADD KEY `fk_bebas_student1_idx` (`student_student_id`);

--
-- Indexes for table `bebas_pay`
--
ALTER TABLE `bebas_pay`
  ADD PRIMARY KEY (`bebas_pay_id`),
  ADD KEY `fk_bebas_pay_bebas1_idx` (`bebas_bebas_id`),
  ADD KEY `fk_bebas_pay_users1_idx` (`user_user_id`);

--
-- Indexes for table `buktibayar`
--
ALTER TABLE `buktibayar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulan`
--
ALTER TABLE `bulan`
  ADD PRIMARY KEY (`bulan_id`),
  ADD KEY `fk_bulan_payment1_idx` (`payment_payment_id`),
  ADD KEY `fk_bulan_month1_idx` (`month_month_id`),
  ADD KEY `fk_bulan_student1_idx` (`student_student_id`),
  ADD KEY `fk_bulan_users1_idx` (`user_user_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `debit`
--
ALTER TABLE `debit`
  ADD PRIMARY KEY (`debit_id`),
  ADD KEY `fk_jurnal_debit_users1_idx` (`user_user_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`information_id`),
  ADD KEY `fk_information_users1_idx` (`user_user_id`);

--
-- Indexes for table `kredit`
--
ALTER TABLE `kredit`
  ADD PRIMARY KEY (`kredit_id`),
  ADD KEY `fk_jurnal_kredit_users1_idx` (`user_user_id`);

--
-- Indexes for table `letter`
--
ALTER TABLE `letter`
  ADD PRIMARY KEY (`letter_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `fk_g_activity_log_g_user1_idx` (`user_id`);

--
-- Indexes for table `log_trx`
--
ALTER TABLE `log_trx`
  ADD PRIMARY KEY (`log_trx_id`),
  ADD KEY `fk_log_trx_bebas_pay1_idx` (`bebas_pay_bebas_pay_id`),
  ADD KEY `fk_log_trx_bulan1_idx` (`bulan_bulan_id`),
  ADD KEY `fk_log_trx_student1_idx` (`student_student_id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`majors_id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `fk_payment_pos1_idx` (`pos_pos_id`),
  ADD KEY `fk_payment_period1_idx` (`period_period_id`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `period`
--
ALTER TABLE `period`
  ADD PRIMARY KEY (`period_id`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `fk_student_class1_idx` (`class_class_id`),
  ADD KEY `fk_student_majors1_idx` (`majors_majors_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_user_user_role1_idx` (`user_role_role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bebas`
--
ALTER TABLE `bebas`
  MODIFY `bebas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `bebas_pay`
--
ALTER TABLE `bebas_pay`
  MODIFY `bebas_pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `buktibayar`
--
ALTER TABLE `buktibayar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bulan`
--
ALTER TABLE `bulan`
  MODIFY `bulan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `debit`
--
ALTER TABLE `debit`
  MODIFY `debit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kredit`
--
ALTER TABLE `kredit`
  MODIFY `kredit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `letter`
--
ALTER TABLE `letter`
  MODIFY `letter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `log_trx`
--
ALTER TABLE `log_trx`
  MODIFY `log_trx_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `majors_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `period`
--
ALTER TABLE `period`
  MODIFY `period_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bebas`
--
ALTER TABLE `bebas`
  ADD CONSTRAINT `fk_bebas_payment1` FOREIGN KEY (`payment_payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_bebas_student1` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `bebas_pay`
--
ALTER TABLE `bebas_pay`
  ADD CONSTRAINT `fk_bebas_pay_bebas1` FOREIGN KEY (`bebas_bebas_id`) REFERENCES `bebas` (`bebas_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_bebas_pay_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `bulan`
--
ALTER TABLE `bulan`
  ADD CONSTRAINT `fk_bulan_month1` FOREIGN KEY (`month_month_id`) REFERENCES `month` (`month_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bulan_payment1` FOREIGN KEY (`payment_payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_bulan_student1` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_bulan_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `debit`
--
ALTER TABLE `debit`
  ADD CONSTRAINT `fk_jurnal_debit_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `information`
--
ALTER TABLE `information`
  ADD CONSTRAINT `fk_information_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `kredit`
--
ALTER TABLE `kredit`
  ADD CONSTRAINT `fk_jurnal_kredit_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `fk_g_activity_log_g_user1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `log_trx`
--
ALTER TABLE `log_trx`
  ADD CONSTRAINT `fk_log_trx_bebas_pay1` FOREIGN KEY (`bebas_pay_bebas_pay_id`) REFERENCES `bebas_pay` (`bebas_pay_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_log_trx_bulan1` FOREIGN KEY (`bulan_bulan_id`) REFERENCES `bulan` (`bulan_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_log_trx_student1` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payment_period1` FOREIGN KEY (`period_period_id`) REFERENCES `period` (`period_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_payment_pos1` FOREIGN KEY (`pos_pos_id`) REFERENCES `pos` (`pos_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_class1` FOREIGN KEY (`class_class_id`) REFERENCES `class` (`class_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_student_majors1` FOREIGN KEY (`majors_majors_id`) REFERENCES `majors` (`majors_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_user_user_role1` FOREIGN KEY (`user_role_role_id`) REFERENCES `user_roles` (`role_id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
