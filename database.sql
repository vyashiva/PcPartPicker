-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2020 at 07:33 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `login` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `last_logedin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`login`, `password`, `last_logedin`) VALUES
('admin', 'admin', '2018-07-04 15:56:12');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `username` varchar(20) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `pc_case` varchar(20) NOT NULL,
  `processor` varchar(20) NOT NULL,
  `motherboard` varchar(20) NOT NULL,
  `graphics_card` varchar(20) NOT NULL,
  `ram` varchar(20) NOT NULL,
  `power_supply` varchar(20) NOT NULL,
  `storage` varchar(20) NOT NULL,
  `cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `graphics_card`
--

CREATE TABLE `graphics_card` (
  `company` varchar(20) NOT NULL,
  `number` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `capacity` int(11) NOT NULL,
  `cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `graphics_card`
--

INSERT INTO `graphics_card` (`company`, `number`, `type`, `capacity`, `cost`) VALUES
('Zotac', 'GT 710', 'DDR3', 2, 3125),
('MSI', 'GTX 1050 Ti', 'DDR3', 4, 15599),
('Zotac', 'GTX 1050 Ti ZT-P105', 'DDR5', 4, 14700),
('Gigabyte', 'Gtx 1080 Ti', 'DDR5', 11, 72164),
('Asus', 'RX 580', 'GDDR5', 8, 28999),
('ASUS', 'STRIX-GTX1080TI-O', 'GDDR5', 11, 88199);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(5) NOT NULL,
  `title` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `title`, `image`, `description`) VALUES
(101, 'Jinal Desai', 'JEEL JINU-1.jpg', 'Hey!!! There I\'m using Instagram...'),
(102, 'Shiva Vyas', 'Bab.jpg', 'Hey!!! There I\'m using Facebook...'),
(103, 'Snehal Wadagle', 'BABY.JPG', 'Hey!!! There I\'m using WhatsApp...'),
(104, 'Sneha Joglekar', 'Blue_Baby.jpg', 'Hey!!! There I\'m using Twitter...');

-- --------------------------------------------------------

--
-- Table structure for table `ip_data`
--

CREATE TABLE `ip_data` (
  `id` int(55) NOT NULL,
  `admin_id` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `ip` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `UID` int(55) NOT NULL,
  `visited` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `city` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `region` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `region_code` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `country` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `country_name` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `continent_code` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `in_eu` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `postal` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `latitude` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `longitude` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `timezone` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `utc_offset` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `country_calling_code` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `currency` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `asn` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `org` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `languages` varchar(55) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `ip_data`
--

INSERT INTO `ip_data` (`id`, `admin_id`, `ip`, `UID`, `visited`, `city`, `region`, `region_code`, `country`, `country_name`, `continent_code`, `in_eu`, `postal`, `latitude`, `longitude`, `timezone`, `utc_offset`, `country_calling_code`, `currency`, `asn`, `org`, `languages`) VALUES
(59, '', '', 6, '2020-05-06 00:42:13', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(60, '', '', 6, '2020-05-06 00:44:03', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(61, '', '', 8, '2020-05-12 12:56:17', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(62, '', '', 9, '2020-06-02 23:28:44', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(63, '', '', 0, '2020-06-02 23:40:42', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(64, '', '', 9, '2020-06-02 23:44:04', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(65, '', '', 9, '2020-06-02 23:51:11', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(66, '', '', 9, '2020-06-03 00:08:20', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(67, '', '', 9, '2020-06-03 00:08:27', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(68, '', '', 9, '2020-06-03 01:39:32', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(69, '', '', 9, '2020-06-03 01:52:31', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(70, '', '', 9, '2020-06-03 10:05:49', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(71, '', '', 9, '2020-06-03 10:14:40', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(72, '', '', 10, '2020-06-03 10:17:21', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(73, '', '', 10, '2020-06-03 10:18:04', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(74, '', '', 10, '2020-06-03 10:18:16', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(75, '', '', 10, '2020-06-03 10:49:57', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(76, '', '', 10, '2020-06-03 11:00:21', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(77, '', '', 9, '2020-06-03 11:00:37', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(78, '', '', 9, '2020-06-03 11:00:55', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(79, '', '', 9, '2020-06-03 14:17:47', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(80, '', '', 9, '2020-06-03 14:30:50', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(81, '', '', 9, '2020-06-03 14:32:40', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(82, '', '', 9, '2020-06-03 15:03:23', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(83, '', '', 9, '2020-06-13 15:23:26', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(84, '', '', 9, '2020-06-13 15:23:40', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(85, '', '', 12, '2020-06-18 23:14:00', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(86, '', '', 9, '2020-06-19 20:52:03', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(87, '', '', 9, '2020-06-19 20:52:25', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(88, '', '', 9, '2020-06-19 21:27:40', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(89, '', '', 9, '2020-06-19 21:27:58', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(90, '', '', 9, '2020-06-19 21:28:08', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(91, '', '', 9, '2020-06-19 21:40:12', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(92, '', '', 9, '2020-06-19 21:40:53', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(93, '', '', 9, '2020-06-19 21:59:11', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(94, '', '', 9, '2020-06-19 23:59:57', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(95, '', '', 9, '2020-06-20 00:00:39', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(96, '', '', 9, '2020-06-20 00:08:29', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(97, '', '', 9, '2020-06-20 00:11:06', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(98, '', '', 9, '2020-06-20 00:11:25', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(99, '', '', 9, '2020-06-20 01:21:01', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(100, '', '', 9, '2020-06-20 01:45:31', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(101, '', '', 9, '2020-06-20 02:12:49', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(102, '', '', 9, '2020-06-20 02:12:58', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(103, '', '', 9, '2020-06-20 02:40:49', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(104, '', '', 9, '2020-06-20 02:56:17', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(105, '', '', 9, '2020-06-20 03:33:37', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(106, '', '', 9, '2020-06-20 04:18:11', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(107, '', '', 9, '2020-06-22 12:57:38', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(108, '', '', 9, '2020-06-22 13:18:51', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(109, '', '', 13, '2020-06-22 13:20:39', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(110, '', '', 13, '2020-06-22 13:39:12', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(111, '', '', 13, '2020-06-22 13:39:29', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(112, '', '', 13, '2020-06-22 14:54:42', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(113, '', '', 13, '2020-06-22 14:55:04', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(114, '', '', 13, '2020-06-22 15:28:05', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(115, '', '', 13, '2020-06-22 15:35:24', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(116, '', '', 13, '2020-06-22 17:09:03', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(117, '', '', 13, '2020-06-22 17:14:57', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(118, '', '', 9, '2020-06-23 22:41:12', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(119, '', '', 9, '2020-06-23 22:42:51', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(120, '', '', 9, '2020-06-23 22:43:13', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(121, '', '', 9, '2020-06-24 00:03:22', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(122, '', '', 9, '2020-06-24 00:26:15', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(123, '', '', 9, '2020-06-24 00:37:46', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(124, '', '', 14, '2020-06-24 00:40:50', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(125, '', '', 14, '2020-06-24 00:41:44', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(126, '', '', 9, '2020-06-24 00:42:05', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(127, '', '', 9, '2020-06-24 00:43:17', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(128, '', '', 14, '2020-06-24 00:43:37', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(129, '', '', 14, '2020-06-24 00:46:55', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(130, '', '', 9, '2020-06-24 00:47:06', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(131, '', '', 9, '2020-06-24 00:47:25', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(132, '', '', 14, '2020-06-24 00:47:57', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(133, '', '', 14, '2020-06-24 00:50:37', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(134, '', '', 13, '2020-06-24 00:50:51', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(135, '', '', 13, '2020-06-24 00:51:12', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(136, '', '', 14, '2020-06-24 00:51:27', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(137, '', '', 14, '2020-06-24 01:04:47', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(138, '', '', 14, '2020-06-24 01:05:43', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(139, '', '', 14, '2020-06-24 01:08:42', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(140, '', '', 14, '2020-06-24 01:15:06', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(141, '', '', 9, '2020-06-24 01:30:28', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(142, '', '', 9, '2020-06-24 01:32:29', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(143, '', '', 9, '2020-06-24 01:33:38', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(144, '', '', 9, '2020-06-24 01:33:56', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(145, '', '', 9, '2020-06-24 01:40:26', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(146, '', '', 9, '2020-06-24 01:41:15', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(147, '', '', 9, '2020-06-24 01:43:14', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(148, '', '', 9, '2020-06-24 01:59:23', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(149, '', '', 13, '2020-06-24 01:59:38', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(150, '', '', 13, '2020-06-24 01:59:59', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(151, '', '', 9, '2020-06-24 02:01:34', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(152, '', '', 9, '2020-06-24 02:02:08', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(153, '', '', 13, '2020-06-24 02:07:06', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(154, '', '', 9, '2020-06-25 18:46:01', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(155, '', '', 9, '2020-06-25 18:46:09', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(156, '', '', 15, '2020-06-25 18:48:37', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(157, '', '', 15, '2020-06-25 18:51:47', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(158, '', '', 9, '2020-06-25 18:52:24', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(159, '', '', 9, '2020-06-25 18:53:08', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(160, '', '', 6, '2020-06-25 22:01:09', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(161, '', '', 6, '2020-06-25 22:03:36', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(162, '', '', 6, '2020-06-25 22:08:18', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(163, '', '', 9, '2020-06-25 22:14:22', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(164, '', '', 9, '2020-06-25 22:17:46', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(165, '', '', 9, '2020-06-25 22:20:31', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(166, '', '', 9, '2020-06-25 22:21:08', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(167, '', '', 15, '2020-06-25 22:22:13', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(168, '', '', 15, '2020-06-25 22:22:44', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(169, '', '', 15, '2020-06-25 22:26:11', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(170, '', '', 15, '2020-06-25 22:27:39', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(171, '', '', 15, '2020-06-25 22:36:48', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(172, '', '', 15, '2020-06-25 22:43:59', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(173, '', '', 15, '2020-06-25 22:44:20', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(174, '', '', 15, '2020-06-25 22:48:45', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(175, '', '', 15, '2020-06-25 23:09:18', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(176, '', '', 15, '2020-06-25 23:09:36', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(177, '', '', 9, '2020-06-25 23:29:20', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(178, '', '', 9, '2020-06-25 23:29:33', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(179, '', '', 9, '2020-06-26 13:18:24', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(180, '', '', 9, '2020-06-26 13:26:11', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(181, '', '', 13, '2020-06-26 13:26:58', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(182, '', '', 13, '2020-06-26 13:37:11', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', ''),
(183, '', '', 9, '2020-06-26 22:41:06', '', '', '', '', '', '', 'False', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `motherboard`
--

CREATE TABLE `motherboard` (
  `company` varchar(20) NOT NULL,
  `number` varchar(20) NOT NULL,
  `socket` varchar(20) NOT NULL,
  `generation` varchar(20) NOT NULL,
  `graphics_type` varchar(20) NOT NULL,
  `cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motherboard`
--

INSERT INTO `motherboard` (`company`, `number`, `socket`, `generation`, `graphics_type`, `cost`) VALUES
('GIGABYTE', 'GA-B150M-D3H', '1151', '6', 'DDR', 8199),
('Gigabyte', 'GA-H110M-S2', '1151', '6', 'DDR5', 4529),
('Gigabyte', 'Ga-H61M-S', '1156', '3', 'DDR4', 4060),
('MSI', 'H110', '1151', '7', 'DDR5', 5199),
('Asus', 'H61M-K', '1155', '3', 'DDR4', 4449),
('MSI', 'X299', '2066', '6', 'DDR', 21586);

-- --------------------------------------------------------

--
-- Table structure for table `pc_case`
--

CREATE TABLE `pc_case` (
  `company` varchar(20) NOT NULL,
  `id` varchar(20) NOT NULL,
  `cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_case`
--

INSERT INTO `pc_case` (`company`, `id`, `cost`) VALUES
('CORSAIR', '570x', 14350),
('COUGAR', 'CONQUER', 18028),
('PHANTEKS', 'EVOLV', 11128),
('THERMALTAKE', 'G21', 8999),
('Cooler Master', 'H500P', 11443),
('COUGAR', 'PANZER-S', 17802);

-- --------------------------------------------------------

--
-- Table structure for table `pc_data`
--

CREATE TABLE `pc_data` (
  `id` int(100) NOT NULL,
  `admin_id` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `ip` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `UID` int(55) NOT NULL,
  `visited` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `windows_version` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `64BitOS` varchar(3) COLLATE utf8_polish_ci NOT NULL,
  `pc_name` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `cpus_number` int(5) NOT NULL,
  `logical_drivers_available` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `windows_folder` varchar(250) COLLATE utf8_polish_ci NOT NULL,
  `host_name` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `domain_name` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `browser` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `device` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `MAC` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `pc_data`
--

INSERT INTO `pc_data` (`id`, `admin_id`, `ip`, `UID`, `visited`, `windows_version`, `64BitOS`, `pc_name`, `cpus_number`, `logical_drivers_available`, `windows_folder`, `host_name`, `domain_name`, `browser`, `device`, `MAC`) VALUES
(59, '', '', 6, '2020-05-06 00:42:14', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(60, '', '', 6, '2020-05-06 00:44:04', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(61, '', '', 8, '2020-05-12 12:56:18', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(62, '', '', 9, '2020-06-02 23:28:44', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(63, '', '', 0, '2020-06-02 23:40:43', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(64, '', '', 9, '2020-06-02 23:44:05', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(65, '', '', 9, '2020-06-02 23:51:11', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(66, '', '', 9, '2020-06-03 00:08:21', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(67, '', '', 9, '2020-06-03 00:08:28', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(68, '', '', 9, '2020-06-03 01:39:33', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(69, '', '', 9, '2020-06-03 01:52:32', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(70, '', '', 9, '2020-06-03 10:05:50', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(71, '', '', 9, '2020-06-03 10:14:40', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(72, '', '', 10, '2020-06-03 10:17:22', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(73, '', '', 10, '2020-06-03 10:18:05', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(74, '', '', 10, '2020-06-03 10:18:16', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(75, '', '', 10, '2020-06-03 10:49:57', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(76, '', '', 10, '2020-06-03 11:00:22', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(77, '', '', 9, '2020-06-03 11:00:37', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(78, '', '', 9, '2020-06-03 11:00:56', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(79, '', '', 9, '2020-06-03 14:17:47', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(80, '', '', 9, '2020-06-03 14:30:50', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(81, '', '', 9, '2020-06-03 14:32:41', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(82, '', '', 9, '2020-06-03 15:03:24', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(83, '', '', 9, '2020-06-13 15:23:28', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(84, '', '', 9, '2020-06-13 15:23:41', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(85, '', '', 12, '2020-06-18 23:14:01', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(86, '', '', 9, '2020-06-19 20:52:03', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(87, '', '', 9, '2020-06-19 20:52:25', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(88, '', '', 9, '2020-06-19 21:27:41', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(89, '', '', 9, '2020-06-19 21:27:59', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(90, '', '', 9, '2020-06-19 21:28:08', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(91, '', '', 9, '2020-06-19 21:40:13', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(92, '', '', 9, '2020-06-19 21:40:53', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(93, '', '', 9, '2020-06-19 21:59:12', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(94, '', '', 9, '2020-06-19 23:59:58', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(95, '', '', 9, '2020-06-20 00:00:40', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(96, '', '', 9, '2020-06-20 00:08:29', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(97, '', '', 9, '2020-06-20 00:11:07', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(98, '', '', 9, '2020-06-20 00:11:26', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(99, '', '', 9, '2020-06-20 01:21:02', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(100, '', '', 9, '2020-06-20 01:45:32', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(101, '', '', 9, '2020-06-20 02:12:50', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(102, '', '', 9, '2020-06-20 02:12:58', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(103, '', '', 9, '2020-06-20 02:40:50', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(104, '', '', 9, '2020-06-20 02:56:18', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(105, '', '', 9, '2020-06-20 03:33:37', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(106, '', '', 9, '2020-06-20 04:18:12', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(107, '', '', 9, '2020-06-22 12:57:39', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(108, '', '', 9, '2020-06-22 13:18:51', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(109, '', '', 13, '2020-06-22 13:20:40', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(110, '', '', 13, '2020-06-22 13:39:12', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(111, '', '', 13, '2020-06-22 13:39:29', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(112, '', '', 13, '2020-06-22 14:54:43', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(113, '', '', 13, '2020-06-22 14:55:05', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(114, '', '', 13, '2020-06-22 15:28:05', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(115, '', '', 13, '2020-06-22 15:35:24', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(116, '', '', 13, '2020-06-22 17:09:03', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(117, '', '', 13, '2020-06-22 17:14:58', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(118, '', '', 9, '2020-06-23 22:41:12', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(119, '', '', 9, '2020-06-23 22:42:51', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(120, '', '', 9, '2020-06-23 22:43:13', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(121, '', '', 9, '2020-06-24 00:03:22', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(122, '', '', 9, '2020-06-24 00:26:16', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(123, '', '', 9, '2020-06-24 00:37:46', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(124, '', '', 14, '2020-06-24 00:40:51', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(125, '', '', 14, '2020-06-24 00:41:45', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(126, '', '', 9, '2020-06-24 00:42:05', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(127, '', '', 9, '2020-06-24 00:43:18', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(128, '', '', 14, '2020-06-24 00:43:37', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(129, '', '', 14, '2020-06-24 00:46:56', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(130, '', '', 9, '2020-06-24 00:47:06', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(131, '', '', 9, '2020-06-24 00:47:26', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(132, '', '', 14, '2020-06-24 00:47:58', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(133, '', '', 14, '2020-06-24 00:50:38', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(134, '', '', 13, '2020-06-24 00:50:52', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(135, '', '', 13, '2020-06-24 00:51:13', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(136, '', '', 14, '2020-06-24 00:51:28', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(137, '', '', 14, '2020-06-24 01:04:48', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(138, '', '', 14, '2020-06-24 01:05:43', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(139, '', '', 14, '2020-06-24 01:08:42', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(140, '', '', 14, '2020-06-24 01:15:07', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(141, '', '', 9, '2020-06-24 01:30:29', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(142, '', '', 9, '2020-06-24 01:32:29', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(143, '', '', 9, '2020-06-24 01:33:38', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(144, '', '', 9, '2020-06-24 01:33:57', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(145, '', '', 9, '2020-06-24 01:40:26', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(146, '', '', 9, '2020-06-24 01:41:16', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(147, '', '', 9, '2020-06-24 01:43:15', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(148, '', '', 9, '2020-06-24 01:59:23', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(149, '', '', 13, '2020-06-24 01:59:39', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(150, '', '', 13, '2020-06-24 01:59:59', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(151, '', '', 9, '2020-06-24 02:01:34', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(152, '', '', 9, '2020-06-24 02:02:09', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(153, '', '', 13, '2020-06-24 02:07:07', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(154, '', '', 9, '2020-06-25 18:46:01', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(155, '', '', 9, '2020-06-25 18:46:10', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(156, '', '', 15, '2020-06-25 18:48:38', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(157, '', '', 15, '2020-06-25 18:51:47', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(158, '', '', 9, '2020-06-25 18:52:32', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(159, '', '', 9, '2020-06-25 18:53:08', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(160, '', '', 6, '2020-06-25 22:01:09', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(161, '', '', 6, '2020-06-25 22:03:36', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(162, '', '', 6, '2020-06-25 22:08:18', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(163, '', '', 9, '2020-06-25 22:14:23', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(164, '', '', 9, '2020-06-25 22:17:46', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(165, '', '', 9, '2020-06-25 22:20:31', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(166, '', '', 9, '2020-06-25 22:21:09', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(167, '', '', 15, '2020-06-25 22:22:13', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(168, '', '', 15, '2020-06-25 22:22:45', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(169, '', '', 15, '2020-06-25 22:26:12', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(170, '', '', 15, '2020-06-25 22:27:40', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(171, '', '', 15, '2020-06-25 22:36:49', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(172, '', '', 15, '2020-06-25 22:44:00', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(173, '', '', 15, '2020-06-25 22:44:20', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(174, '', '', 15, '2020-06-25 22:48:46', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(175, '', '', 15, '2020-06-25 23:09:19', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(176, '', '', 15, '2020-06-25 23:09:36', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(177, '', '', 9, '2020-06-25 23:29:20', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(178, '', '', 9, '2020-06-25 23:29:34', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(179, '', '', 9, '2020-06-26 13:18:24', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(180, '', '', 9, '2020-06-26 13:26:12', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(181, '', '', 13, '2020-06-26 13:26:59', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(182, '', '', 13, '2020-06-26 13:37:11', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52'),
(183, '', '', 9, '2020-06-26 22:41:06', 'Windows 10', 'NO', 'LAPTOP-5CR8L38E', 0, '', '', 'LAPTOP-5CR8L38E', 'localhost', 'Chrome', 'Computer', 'E8-6A-64-99-53-52');

-- --------------------------------------------------------

--
-- Table structure for table `power_supply`
--

CREATE TABLE `power_supply` (
  `company` varchar(20) NOT NULL,
  `number` varchar(20) NOT NULL,
  `watts` int(11) NOT NULL,
  `cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `power_supply`
--

INSERT INTO `power_supply` (`company`, `number`, `watts`, `cost`) VALUES
('Corsair', 'VS550', 550, 3619),
('Corsair', 'CP-9020098-UK', 650, 4388),
('Thermaltake', 'THM650', 650, 5197),
('Artis', 'AR-VIP', 1000, 7999);

-- --------------------------------------------------------

--
-- Table structure for table `processor`
--

CREATE TABLE `processor` (
  `company` varchar(10) NOT NULL,
  `model` varchar(15) NOT NULL,
  `number` varchar(20) NOT NULL,
  `generation` varchar(10) NOT NULL,
  `frequency` float NOT NULL,
  `cores` int(11) NOT NULL,
  `socket_pin` varchar(10) NOT NULL,
  `ram_frequency` int(11) NOT NULL,
  `ram_type` varchar(10) NOT NULL,
  `power` int(11) NOT NULL,
  `cost` float NOT NULL,
  `overclockable` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `processor`
--

INSERT INTO `processor` (`company`, `model`, `number`, `generation`, `frequency`, `cores`, `socket_pin`, `ram_frequency`, `ram_type`, `power`, `cost`, `overclockable`) VALUES
('intel', 'i3', '3220', '3', 3.3, 2, '1155', 1333, 'DDR3', 55, 5890, 'No'),
('intel', 'i3', '6100', '6', 3.7, 2, '151', 2400, 'DDR4', 65, 8247, 'No'),
('intel', 'i5', '6400', '6', 2.7, 4, '1151', 2133, 'DDR4', 65, 144785, 'No'),
('intel', 'i5', '6600k', '6', 3.5, 4, '1151', 2133, 'DDR4', 91, 18989, 'Yes'),
('intel', 'i7', '6950x', '6', 3, 10, '2011', 2400, 'DDR4', 140, 139199, 'Yes'),
('intel', 'i7', '7800x', '8', 3.5, 6, '2066', 2400, 'DDR4', 140, 32990, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`) VALUES
(1, 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', 'corei7.jpg', 414.99),
(2, 'Corsair Crystal 570X RGB ATX Mid Tower Case', 'corsair570xrgb.jpg', 179.99),
(3, 'Corsair Gaming Mouse SCIMITAR PRO RGB', 'Corsair-Gaming-SCIMITAR-PRO-RGB.jpg', 79.99),
(4, 'G.SKILL TridentZ RGB Series 32GB DDR4', 'gskill-tridentz-rgb.jpg', 439.99),
(5, 'AMD RYZEN 7 1700 8-Core 3.0 GHz Socket AM4 CPU', 'ryzen7.jpg', 299.99),
(6, 'NZXT H700i Mid Tower Chassis Tempered Glass Case', 'nzxth700i.jpg', 199.99),
(7, 'Razer Blackwidow Gaming  Mechanical Keyboard', 'razer-blackwidow.jpg', 109.99),
(8, 'Samsung 850EVO BULK Solid State Drive', 'samsung-850evo.jpg', 108.45);

-- --------------------------------------------------------

--
-- Table structure for table `ram`
--

CREATE TABLE `ram` (
  `company` varchar(20) NOT NULL,
  `number` varchar(20) NOT NULL,
  `frequency` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `capacity` int(11) NOT NULL,
  `cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ram`
--

INSERT INTO `ram` (`company`, `number`, `frequency`, `type`, `capacity`, `cost`) VALUES
('Corsair', 'CMK8GX4M1A24000C16R', 2400, 'DDR4', 8, 6785),
('Corsair', 'CMU16GX4M2A2666C16R', 2666, 'DDR4', 8, 17302),
('Crucial', 'CT4G4DFS8213', 2133, 'DDR4', 4, 3425),
('HyperX', 'HX421C14FB', 2133, 'DDR4', 4, 4775),
('Kingston', 'HX426C16FW2', 2666, 'DDR4', 8, 7999),
('Htnix', 'hymd564m6646cp6', 1333, 'DDR3', 4, 1899);

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `company` varchar(20) NOT NULL,
  `number` varchar(20) NOT NULL,
  `port` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `capacity` int(11) NOT NULL,
  `cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UID` int(55) NOT NULL,
  `Fuid` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `Guid` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `fname` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `lname` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `fullname` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `fblink` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `dp` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `lastlogin` datetime NOT NULL,
  `registrationtime` datetime NOT NULL DEFAULT current_timestamp(),
  `referal` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `last_modified` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `nick` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `img` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UID`, `Fuid`, `Guid`, `fname`, `lname`, `email`, `fullname`, `fblink`, `gender`, `dp`, `lastlogin`, `registrationtime`, `referal`, `last_modified`, `password`, `nick`, `img`, `phone`) VALUES
(6, '', '', 'Shohrat', 'Ali', 'shohratali344@gmail.com', 'Shohrat Ali', '', '', '', '2020-06-25 22:08:17', '2020-05-06 00:40:16', '', '2020-06-25 22:08:17', '$2y$10$HI6cT/AqnU.Gqdtts81D.uMkGT2RskTNphvjkXMY9TNFgtPSNlvHm', 'shohratali', '', ''),
(7, '', '', 's', 'Ali', 'shohratali522@gmail.com', 's Ali', '', '', '', '2020-05-12 12:42:42', '2020-05-12 12:42:42', '', '2020-05-12 12:42:42', '$2y$10$BMcHBkFiCikL0AF21VeisO5qLQ6c.k8KIPx1k4xrdQsi7y.wanKtq', 'shohrata', '', ''),
(8, '', '', 'sid', 'Ali', 'shohrata@gmail.com', 'sid Ali', '', '', '', '2020-05-12 12:56:16', '2020-05-12 12:55:28', '', '2020-05-12 12:56:16', '$2y$10$UQge8ruStyBGFmqCmnNFKuBG8wTlvKaF0.I81zgEAjhp3obzDH4kW', 'Shrawank', '', ''),
(9, '', '', 'shrawan', 'parihar', 'parihar@gmail.com', 'shrawan parihar', '', '', '', '2020-06-26 22:41:05', '2020-06-02 23:28:17', '', '2020-06-26 22:41:05', '$2y$10$TweUJKp9kVxr6YkeLAqH7Odokn16hFPPcwNaoyCLkTqREnSVP2hGe', 'parihar1', '', ''),
(10, '', '', 'sailab', 'ali', 'sailab.21@gmail.com', 'sailab ali', '', '', '', '2020-06-03 11:00:20', '2020-06-03 10:17:01', '', '2020-06-03 11:00:20', '$2y$10$8IDmStagg/yLIE8RYxGtVemWlnG/0kuAaj7Q/NWBC92Z6ulleJ79u', 'sailabali', '', ''),
(11, '', '', 'sailab', 'Ali', 'sidd@gmail.com', 'sailab Ali', '', '', '', '2020-06-18 23:11:57', '2020-06-18 23:11:57', '', '2020-06-18 23:11:57', '$2y$10$HkYkXGyDq10wa2ZXa3p42.RGhVyX1Zxr5HAkG5ueelsz2xlW9UJqm', 'siddddedadadf', '', ''),
(12, '', '', 'imransayyed', 'ali', 'imran@gmail.com', 'imransayyed ali', '', '', '', '2020-06-18 23:14:00', '2020-06-18 23:13:39', '', '2020-06-18 23:14:00', '$2y$10$dtL7XfiGIjB5ICldKE2iPOc4MGXd55wXa9c9SoGa/XA0U5e.8Wz8u', 'Imranalia', '', ''),
(13, '', '', 'ajmat', 'ali', 'ajmatali@gmail.com', 'ajmat ali', '', '', '', '2020-06-26 13:37:10', '2020-06-22 13:20:16', '', '2020-06-26 13:37:10', '$2y$10$iO30Dd1XgNJKUBL6x5I6mu97Wa0K7t/dZstnp8B824eTpmDTEph9S', 'ajmatali', '', ''),
(14, '', '', 'sid', 'khatri', 'shohrat@gmail.com', 'sid khatri', '', '', '', '2020-06-24 01:15:06', '2020-06-24 00:40:28', '', '2020-06-24 01:15:06', '$2y$10$Wi5NiG9TrDtB8C8fLBC7e.l/j22IfsygBaYgPKuAKlObLr6UvuJZ.', 'sid', '', ''),
(15, '', '', 'sahil', 'ali', 'sahil@gmail.com', 'sahil ali', '', '', '', '2020-06-25 23:09:35', '2020-06-25 18:48:16', '', '2020-06-25 23:09:35', '$2y$10$1aeAsObn5OnkAdo.ytyx9e2.g3deLAhGkXo8Mlgyrz9LjbBY4shua', 'sahil', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE `users_session` (
  `id` int(55) NOT NULL,
  `UID` int(55) NOT NULL,
  `hash` varchar(300) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `id` int(55) NOT NULL,
  `UID` int(55) NOT NULL,
  `fname` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `lname` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `country` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `postal_code` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `place` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `house_number` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `weigth` double NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `insurance` int(1) NOT NULL,
  `status` varchar(25) COLLATE utf8_polish_ci NOT NULL,
  `position` varchar(25) COLLATE utf8_polish_ci NOT NULL,
  `option` varchar(25) COLLATE utf8_polish_ci NOT NULL,
  `ordered` datetime NOT NULL,
  `delivered` datetime NOT NULL,
  `status_checked` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `delivered_checked` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `paid_data` datetime NOT NULL,
  `product_name` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `razorpay_payment_id` varchar(200) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`id`, `UID`, `fname`, `lname`, `phone`, `country`, `postal_code`, `place`, `house_number`, `weigth`, `price`, `quantity`, `insurance`, `status`, `position`, `option`, `ordered`, `delivered`, `status_checked`, `delivered_checked`, `paid_data`, `product_name`, `razorpay_payment_id`) VALUES
(1, 1, 'Piotr', 'Murdzia', '231245436', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 299.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-05 19:10:18', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'AMD RYZEN 7 1700 8-Core 3.0 GHz Socket AM4 CPU', ''),
(2, 1, 'Piotr', 'Murdzia', '231245436', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 199.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-05 19:10:21', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'NZXT H700i Mid Tower Chassis Tempered Glass Case', ''),
(3, 1, 'Piotr', 'Murdzia', '324325345', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 199.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-05 19:23:44', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'NZXT H700i Mid Tower Chassis Tempered Glass Case', ''),
(4, 1, 'Piotr', 'Murdzia', '213234423', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 299.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-05 19:47:52', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'AMD RYZEN 7 1700 8-Core 3.0 GHz Socket AM4 CPU', ''),
(5, 3, 'efewgew', 'qergqehythrwthrwy', '324251454', 'PL', '37-310', 'Nowa Sarzyna', '443', 0, 399.98, 2, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-05 20:16:54', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'NZXT H700i Mid Tower Chassis Tempered Glass Case', ''),
(6, 2, 'Piotr', 'Murdzia', '423645254', 'PL', '37-310', 'Nowa Sarzyna', '33', 0, 799.96, 4, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-06 19:25:20', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'NZXT H700i Mid Tower Chassis Tempered Glass Case', ''),
(7, 2, 'Piotr', 'Murdzia', '423645254', 'PL', '37-310', 'Nowa Sarzyna', '33', 0, 899.95, 5, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-06 19:25:23', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(8, 2, 'Piotr', 'Murdzia', '423645254', 'PL', '37-310', 'Nowa Sarzyna', '33', 0, 1244.97, 3, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-06 19:25:25', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', ''),
(9, 2, 'Piotr', 'Murdzia', '423645254', 'PL', '37-310', 'Nowa Sarzyna', '33', 0, 159.98, 2, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-06 19:25:26', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(10, 2, 'Piotr', 'Murdzia', '423645254', 'PL', '37-310', 'Nowa Sarzyna', '33', 0, 1319.97, 3, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-06 19:25:28', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'G.SKILL TridentZ RGB Series 32GB DDR4', ''),
(11, 2, 'Piotr', 'Murdzia', '423645254', 'PL', '37-310', 'Nowa Sarzyna', '33', 0, 325.35, 3, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-06 19:25:30', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Samsung 850EVO BULK Solid State Drive', ''),
(12, 2, 'Piotr', 'Murdzia', '423645254', 'PL', '37-310', 'Nowa Sarzyna', '33', 0, 219.98, 2, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-06 19:25:32', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Razer Blackwidow Gaming  Mechanical Keyboard', ''),
(13, 4, 'Beata', 'Murdzia', '524624375', 'PL', '37-310', 'Nowa Sarzyna', '67676', 0, 1244.97, 3, 0, 'paid', 'Warehouse', '', '2018-07-06 23:09:08', '1111-11-11 11:11:11', 'RazorPay', '', '2018-07-06 23:09:08', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', 'pay_AW5RvoM5k9qH7a'),
(14, 4, 'Beata', 'Murdzia', '524624375', 'PL', '37-310', 'Nowa Sarzyna', '67676', 0, 539.97, 3, 0, 'paid', 'Warehouse', '', '2018-07-06 23:09:11', '1111-11-11 11:11:11', 'RazorPay', '', '2018-07-06 23:09:11', 'Corsair Crystal 570X RGB ATX Mid Tower Case', 'pay_AW5RvoM5k9qH7a'),
(15, 4, 'Beata', 'Murdzia', '524624375', 'PL', '37-310', 'Nowa Sarzyna', '67676', 0, 239.97, 3, 0, 'paid', 'Warehouse', '', '2018-07-06 23:09:12', '1111-11-11 11:11:11', 'RazorPay', '', '2018-07-06 23:09:12', 'Corsair Gaming Mouse SCIMITAR PRO RGB', 'pay_AW5RvoM5k9qH7a'),
(16, 4, 'Beata', 'Murdzia', '524624375', 'PL', '37-310', 'Nowa Sarzyna', '67676', 0, 899.97, 3, 0, 'paid', 'Warehouse', '', '2018-07-06 23:09:14', '1111-11-11 11:11:11', 'RazorPay', '', '2018-07-06 23:09:14', 'AMD RYZEN 7 1700 8-Core 3.0 GHz Socket AM4 CPU', 'pay_AW5RvoM5k9qH7a'),
(17, 4, 'Beata', 'Murdzia', '452574525', 'PL', '37-310', 'Nowa Sarzyna', '67676', 0, 599.97, 3, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-06 23:10:42', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'NZXT H700i Mid Tower Chassis Tempered Glass Case', ''),
(18, 4, 'Beata', 'Murdzia', '452574525', 'PL', '37-310', 'Nowa Sarzyna', '67676', 0, 329.97, 3, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-06 23:10:45', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Razer Blackwidow Gaming  Mechanical Keyboard', ''),
(19, 4, 'Beata', 'Murdzia', '452574525', 'PL', '37-310', 'Nowa Sarzyna', '67676', 0, 899.97, 3, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-06 23:10:47', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'AMD RYZEN 7 1700 8-Core 3.0 GHz Socket AM4 CPU', ''),
(20, 4, 'Beata', 'Murdzia', '452574525', 'PL', '37-310', 'Nowa Sarzyna', '67676', 0, 829.98, 2, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-06 23:10:50', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', ''),
(21, 4, 'Beata', 'Murdzia', '245535554', 'PL', '37-310', 'Nowa Sarzyna', '67676', 0, 1319.97, 3, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-06 23:11:49', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'G.SKILL TridentZ RGB Series 32GB DDR4', ''),
(22, 1, 'Piotr', 'Murdzia', '543665765', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 299.99, 1, 0, 'paid', 'Warehouse', '', '2018-07-07 19:51:43', '1111-11-11 11:11:11', 'RazorPay', '', '2018-07-07 19:51:43', 'AMD RYZEN 7 1700 8-Core 3.0 GHz Socket AM4 CPU', 'pay_AWQcSlzd9ewUma'),
(23, 1, 'Piotr', 'Murdzia', '543665765', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 399.98, 2, 0, 'paid', 'Warehouse', '', '2018-07-07 19:51:45', '1111-11-11 11:11:11', 'RazorPay', '', '2018-07-07 19:51:45', 'NZXT H700i Mid Tower Chassis Tempered Glass Case', 'pay_AWQcSlzd9ewUma'),
(24, 1, 'Piotr', 'Murdzia', '435236256', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 329.97, 3, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-07 19:52:34', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Razer Blackwidow Gaming  Mechanical Keyboard', ''),
(25, 1, 'Piotr', 'Murdzia', '435236256', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 2489.94, 6, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-07 19:52:36', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', ''),
(26, 1, 'Piotr', 'Murdzia', '435236256', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 899.95, 5, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-07 19:52:37', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(27, 1, 'Piotr', 'Murdzia', '435236256', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 399.95, 5, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-07 19:52:39', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(28, 1, 'Piotr', 'Murdzia', '435236256', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 1199.96, 4, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-07 19:52:41', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'AMD RYZEN 7 1700 8-Core 3.0 GHz Socket AM4 CPU', ''),
(29, 1, 'Piotr', 'Murdzia', '435236256', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 325.35, 3, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-07 19:52:43', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Samsung 850EVO BULK Solid State Drive', ''),
(30, 1, 'Piotr', 'Murdzia', '435236256', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 439.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-07 19:52:44', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'G.SKILL TridentZ RGB Series 32GB DDR4', ''),
(31, 1, 'Piotr', 'Murdzia', '435346545', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 829.98, 2, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-07 19:53:15', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', ''),
(32, 1, 'Piotr', 'Murdzia', '435346545', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 539.97, 3, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-07 19:53:17', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(33, 1, 'Piotr', 'Murdzia', '435346545', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 299.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-07 19:53:18', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'AMD RYZEN 7 1700 8-Core 3.0 GHz Socket AM4 CPU', ''),
(34, 2, 'Piotr', 'Murdzia', '674867496', 'PL', '37-310', 'Nowa Sarzyna', '33', 0, 359.98, 2, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-07 19:55:14', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(35, 2, 'Piotr', 'Murdzia', '674867496', 'PL', '37-310', 'Nowa Sarzyna', '33', 0, 159.98, 2, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-07 19:55:16', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(36, 5, 'gdddsÈ™vvhhyiik', 'eftyyfd', '324325334', 'PL', '37-310', 'Nowa Sarzyna', '323', 0, 599.97, 3, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-09 10:36:32', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'NZXT H700i Mid Tower Chassis Tempered Glass Case', ''),
(37, 5, 'gdddsÈ™vvhhyiik', 'eftyyfd', '324325334', 'PL', '37-310', 'Nowa Sarzyna', '323', 0, 899.97, 3, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-09 10:36:34', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'AMD RYZEN 7 1700 8-Core 3.0 GHz Socket AM4 CPU', ''),
(39, 5, 'gdddsÈ™vvhhyiik', 'eftyyfd', '462566789', 'PL', '37-310', 'Nowa Sarzyna', '323', 0, 1659.96, 4, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-09 10:46:38', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', ''),
(40, 5, 'gdddsÈ™vvhhyiik', 'eftyyfd', '235436545', 'PL', '37-310', 'Nowa Sarzyna', '323', 0, 41499, 100, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-09 10:47:37', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', ''),
(41, 5, 'gdddsÈ™vvhhyiik', 'eftyyfd', '876578677', 'PL', '37-310', 'Nowa Sarzyna', '323', 0, 79.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-09 13:16:28', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(42, 5, 'gdddsÈ™vvhhyiik', 'eftyyfd', '876578677', 'PL', '37-310', 'Nowa Sarzyna', '323', 0, 439.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-09 13:16:31', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'G.SKILL TridentZ RGB Series 32GB DDR4', ''),
(43, 5, 'gdddsÈ™vvhhyiik', 'eftyyfd', '876578677', 'PL', '37-310', 'Nowa Sarzyna', '323', 0, 179.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-09 13:19:58', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(44, 5, 'gdddsÈ™vvhhyiik', 'eftyyfd', '876578677', 'PL', '37-310', 'Nowa Sarzyna', '323', 0, 79.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-09 13:20:00', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(45, 5, 'gdddsÈ™vvhhyiik', 'eftyyfd', '876578677', 'PL', '37-310', 'Nowa Sarzyna', '323', 0, 14999.5, 50, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-09 13:20:39', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'AMD RYZEN 7 1700 8-Core 3.0 GHz Socket AM4 CPU', ''),
(46, 1, 'Piotr', 'Murdzia', '435346545', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 4399.45, 55, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-10 08:41:03', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(47, 1, 'Piotr', 'Murdzia', '435346545', 'PL', '37-310', 'Nowa Sarzyna', '22', 0, 29039.34, 66, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2018-07-10 08:42:25', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'G.SKILL TridentZ RGB Series 32GB DDR4', ''),
(48, 8, 'sid', 'Ali', '766574883', 'india', '12-342', 'JALOR', '147', 0, 414.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-05-12 13:01:38', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', ''),
(49, 9, 'shrawan', 'parihar', '779095000', 'indian', '12-342', 'JALOR', '147', 0, 179.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-03 01:51:56', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(50, 9, 'shrawan', 'parihar', '779095000', 'indian', '12-342', 'JALOR', '147', 0, 199.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-03 10:09:31', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'NZXT H700i Mid Tower Chassis Tempered Glass Case', ''),
(51, 10, 'sailab', 'ali', '779095000', 'indian', '21-123', 'JALOR', '147', 0, 414.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-03 10:19:59', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', ''),
(52, 10, 'sailab', 'ali', '779095000', 'indian', '21-123', 'JALOR', '147', 0, 179.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-03 10:20:00', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(53, 10, 'sailab', 'ali', '779095000', 'indian', '21-123', 'JALOR', '147', 0, 79.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-03 10:20:02', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(54, 10, 'sailab', 'ali', '779095000', 'indian', '21-123', 'JALOR', '147', 0, 439.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-03 10:20:03', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'G.SKILL TridentZ RGB Series 32GB DDR4', ''),
(55, 10, 'sailab', 'ali', '779095000', 'indian', '21-123', 'JALOR', '147', 0, 179.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-03 10:49:54', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-03 10:49:54', 'Corsair Crystal 570X RGB ATX Mid Tower Case', 'pay_Ey29q1UjvF9KRz'),
(56, 10, 'sailab', 'ali', '779095000', 'indian', '21-123', 'JALOR', '147', 0, 109.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-03 10:49:55', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-03 10:49:55', 'Razer Blackwidow Gaming  Mechanical Keyboard', 'pay_Ey29q1UjvF9KRz'),
(57, 10, 'sailab', 'ali', '779095000', 'indian', '21-123', 'JALOR', '147', 0, 414.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-03 10:53:23', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', ''),
(58, 10, 'sailab', 'ali', '779095000', 'indian', '21-123', 'JALOR', '147', 0, 179.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-03 10:53:25', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(59, 10, 'sailab', 'ali', '779095000', 'indian', '21-123', 'JALOR', '147', 0, 79.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-03 10:53:26', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(60, 10, 'sailab', 'ali', '779095000', 'indian', '21-123', 'JALOR', '147', 0, 439.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-03 10:53:27', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'G.SKILL TridentZ RGB Series 32GB DDR4', ''),
(61, 10, 'sailab', 'ali', '779095000', 'indian', '21-123', 'JALOR', '147', 0, 299.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-03 10:54:18', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'AMD RYZEN 7 1700 8-Core 3.0 GHz Socket AM4 CPU', ''),
(62, 10, 'sailab', 'ali', '779095000', 'indian', '21-123', 'JALOR', '147', 0, 108.45, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-03 10:54:19', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Samsung 850EVO BULK Solid State Drive', ''),
(63, 12, 'imransayyed', 'ali', '779095000', 'indian', '44-123', 'JALORE', '147', 0, 79.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-18 23:15:20', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(64, 9, 'shrawan', 'parihar', '779095000', 'indian', '12-342', 'JALOR', '147', 0, 179.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-19 22:42:14', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(65, 9, 'shrawan', 'parihar', '779095000', 'indian', '12-342', 'JALOR', '147', 0, 414.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-19 22:51:20', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', ''),
(66, 9, 'shrawan', 'parihar', '779095000', 'indian', '12-342', 'JALOR', '147', 0, 599.98, 2, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-19 23:17:20', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'AMD RYZEN 7 1700 8-Core 3.0 GHz Socket AM4 CPU', ''),
(67, 9, 'shrawan', 'parihar', '779095000', 'indian', '12-342', 'JALOR', '147', 0, 179.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-19 23:17:21', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(68, 9, 'shrawan', 'parihar', '779095000', 'indian', '12-342', 'JALOR', '147', 0, 109.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-19 23:17:22', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Razer Blackwidow Gaming  Mechanical Keyboard', ''),
(69, 13, 'ajmat', 'ali', '779095000', 'india', '34-001', 'JALORE', '147', 0, 159.98, 2, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-22 14:22:59', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(70, 13, 'ajmat', 'ali', '779095000', 'india', '34-001', 'JALORE', '147', 0, 439.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-22 16:51:10', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'G.SKILL TridentZ RGB Series 32GB DDR4', ''),
(71, 14, 'sid', 'khatri', '9414234567', 'india', '343001', 'JALORE', 'A-147', 0, 79.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-24 01:01:31', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(72, 14, 'sid', 'khatri', '9414234567', 'india', '343001', 'JALORE', 'A-147', 0, 179.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-24 01:04:45', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-24 01:04:45', 'Corsair Crystal 570X RGB ATX Mid Tower Case', 'pay_F6BPIpfRpFreTl'),
(73, 14, 'sid', 'khatri', '9414234567', 'india', '343001', 'JALORE', 'A-147', 0, 179.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-24 01:05:41', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-24 01:05:41', 'Corsair Crystal 570X RGB ATX Mid Tower Case', 'pay_F6BQH93ThOX3mJ'),
(74, 14, 'sid', 'khatri', '9414234567', 'india', '343001', 'JALORE', 'A-147', 0, 414.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-24 01:08:40', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-24 01:08:40', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', 'pay_F6BTSLp6hEYyK6'),
(75, 14, 'sid', 'khatri', '9414234567', 'india', '343001', 'JALORE', 'A-147', 0, 179.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-24 01:12:40', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(76, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 879.98, 2, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-25 22:15:15', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'G.SKILL TridentZ RGB Series 32GB DDR4', ''),
(77, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 414.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-25 22:15:17', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', ''),
(78, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 179.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-25 22:15:18', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(79, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 79.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-25 22:15:19', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(80, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 108.45, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-25 22:15:20', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Samsung 850EVO BULK Solid State Drive', ''),
(81, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 109.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-25 22:15:21', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Razer Blackwidow Gaming  Mechanical Keyboard', ''),
(82, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 199.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-25 22:15:22', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'NZXT H700i Mid Tower Chassis Tempered Glass Case', ''),
(83, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 299.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-25 22:15:23', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'AMD RYZEN 7 1700 8-Core 3.0 GHz Socket AM4 CPU', ''),
(84, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 299.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-25 22:16:38', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'AMD RYZEN 7 1700 8-Core 3.0 GHz Socket AM4 CPU', ''),
(85, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 414.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:17:37', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:17:37', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', ''),
(86, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 179.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:17:38', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:17:38', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(87, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 79.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:17:39', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:17:39', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(88, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 439.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:17:40', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:17:40', 'G.SKILL TridentZ RGB Series 32GB DDR4', ''),
(89, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 108.45, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:17:41', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:17:41', 'Samsung 850EVO BULK Solid State Drive', ''),
(90, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 109.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:17:42', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:17:42', 'Razer Blackwidow Gaming  Mechanical Keyboard', ''),
(91, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 299.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:17:43', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:17:43', 'AMD RYZEN 7 1700 8-Core 3.0 GHz Socket AM4 CPU', ''),
(92, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 199.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:17:44', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:17:44', 'NZXT H700i Mid Tower Chassis Tempered Glass Case', ''),
(93, 9, 'shrawan', 'parihar', '7790950001', 'indian', '342001', 'JALOR', '147', 0, 414.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:20:29', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:20:29', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', ''),
(94, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 179.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:22:42', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:22:42', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(95, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 79.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:22:43', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:22:43', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(96, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 414.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:26:10', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:26:10', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', ''),
(97, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 109.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:27:30', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:27:30', 'Razer Blackwidow Gaming  Mechanical Keyboard', ''),
(98, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 108.45, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:27:31', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:27:31', 'Samsung 850EVO BULK Solid State Drive', ''),
(99, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 199.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:27:32', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:27:32', 'NZXT H700i Mid Tower Chassis Tempered Glass Case', ''),
(100, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 299.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:27:34', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:27:34', 'AMD RYZEN 7 1700 8-Core 3.0 GHz Socket AM4 CPU', ''),
(101, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 414.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:27:35', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:27:35', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', ''),
(102, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 179.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:27:36', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:27:36', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(103, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 79.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:27:37', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:27:37', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(104, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 439.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:27:38', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:27:38', 'G.SKILL TridentZ RGB Series 32GB DDR4', ''),
(105, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 159.98, 2, 0, 'paid', 'Warehouse', '', '2020-06-25 22:36:47', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:36:47', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(106, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 179.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:43:58', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:43:58', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(107, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 414.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:44:15', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:44:15', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', ''),
(108, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 179.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:44:16', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:44:16', 'Corsair Crystal 570X RGB ATX Mid Tower Case', ''),
(109, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 79.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:44:17', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:44:17', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(110, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 439.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:44:19', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:44:19', 'G.SKILL TridentZ RGB Series 32GB DDR4', ''),
(111, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 79.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 22:48:43', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 22:48:43', 'Corsair Gaming Mouse SCIMITAR PRO RGB', ''),
(112, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 79.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 23:09:13', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 23:09:13', 'Corsair Gaming Mouse SCIMITAR PRO RGB', 'pay_F6wOIktF4kgQb0'),
(113, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 439.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 23:09:15', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 23:09:15', 'G.SKILL TridentZ RGB Series 32GB DDR4', 'pay_F6wOIktF4kgQb0'),
(114, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 109.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 23:09:16', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 23:09:16', 'Razer Blackwidow Gaming  Mechanical Keyboard', 'pay_F6wOIktF4kgQb0'),
(115, 15, 'sahil', 'ali', '7790950005', 'india', '343001', 'JALORE', 'A-147', 0, 414.99, 1, 0, 'paid', 'Warehouse', '', '2020-06-25 23:09:17', '1111-11-11 11:11:11', 'RazorPay', '', '2020-06-25 23:09:17', 'Intel Core i7-8700K Coffee Lake 6-Core 3.7 GHz', 'pay_F6wOIktF4kgQb0'),
(116, 13, 'ajmat', 'ali', '7790950001', 'india', '342001', 'JALORE', '147', 0, 109.99, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-26 13:27:31', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Razer Blackwidow Gaming  Mechanical Keyboard', ''),
(117, 13, 'ajmat', 'ali', '7790950001', 'india', '342001', 'JALORE', '147', 0, 108.45, 1, 0, 'waiting_for_a_transfer', 'Warehouse', '', '2020-06-26 13:27:32', '1111-11-11 11:11:11', '', '', '1111-11-11 11:11:11', 'Samsung 850EVO BULK Solid State Drive', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`login`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_data`
--
ALTER TABLE `ip_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc_data`
--
ALTER TABLE `pc_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UID`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `ip_data`
--
ALTER TABLE `ip_data`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `pc_data`
--
ALTER TABLE `pc_data`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UID` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
