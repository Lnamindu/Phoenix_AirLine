-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2022 at 03:09 PM
-- Server version: 10.5.13-MariaDB-0ubuntu0.21.04.1
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phoenixairline_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `id` varchar(5) NOT NULL,
  `manufacturer` varchar(20) NOT NULL,
  `model` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`id`, `manufacturer`, `model`) VALUES
('AC100', 'Airbus', 'A220'),
('AC150', 'Boeing', '737'),
('AC200', 'Airbus', 'A300'),
('AC250', 'Boeing', '747'),
('AC300', 'Airbus', 'A380'),
('AC350', 'Boeing', '777'),
('F110', 'Bombardier', 'Global7500'),
('N333', 'Embraer', 'E190'),
('P500', 'MAC', 'MRJ90ER'),
('P600', 'MAC', 'MRJ70STD');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` varchar(3) NOT NULL,
  `type` varchar(8) NOT NULL,
  `additional_cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `type`, `additional_cost`) VALUES
('101', 'First', 1.9),
('102', 'Business', 1.5),
('103', 'Economy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `id` int(11) NOT NULL,
  `takeoff_airport` varchar(50) NOT NULL,
  `takeoff_time` varchar(50) NOT NULL,
  `takeoff_date` varchar(50) NOT NULL,
  `landing_airport` varchar(50) NOT NULL,
  `landing_time` varchar(50) NOT NULL,
  `landing_date` varchar(50) NOT NULL,
  `gate` varchar(3) DEFAULT NULL,
  `cost` float NOT NULL,
  `aircraft_flight` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id`, `takeoff_airport`, `takeoff_time`, `takeoff_date`, `landing_airport`, `landing_time`, `landing_date`, `gate`, `cost`, `aircraft_flight`) VALUES
(7, 'Colombo', '2022-05-03', '4.00 am', 'South Africa', '11:30PM', '2022-05-04', NULL, 60000, NULL),
(8, 'Colombo', '2022-05-04', '3:00am', 'South Africa', '2:00pm', '2022-05-05', NULL, 50000, NULL),
(10, 'Colombo', '2022-05-03', '5.00pm', 'England', '12:00pm', '2022-05-04', NULL, 30000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `total_price` float NOT NULL,
  `user_reservation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `total_price`, `user_reservation`) VALUES
(2, 754, 1007),
(5, 4125, 1013),
(8, 4578, 1002);

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `id` int(11) NOT NULL,
  `seat_name` varchar(5) NOT NULL,
  `aircraft_seat` varchar(5) NOT NULL,
  `class_seat` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`id`, `seat_name`, `aircraft_seat`, `class_seat`) VALUES
(1, '1A', 'AC100', '101'),
(2, '1B', 'AC100', '101'),
(3, '1C', 'AC100', '101'),
(4, '2A', 'AC100', '102'),
(5, '2B', 'AC100', '102'),
(6, '2C', 'AC100', '102'),
(7, '3A', 'AC100', '103'),
(8, '3B', 'AC100', '103'),
(9, '3C', 'AC100', '103'),
(10, '12D', 'AC150', '102'),
(11, '15J', 'F110', '103'),
(12, '14D', 'AC300', '101'),
(13, '5G', 'P500', '103'),
(14, '1J', 'AC250', '103'),
(15, '1K', 'AC350', '103'),
(16, '9A', 'P600', '103'),
(17, '9B', 'AC250', '101'),
(18, '9C', 'AC200', '103'),
(19, '9D', 'AC100', '103'),
(20, '9E', 'P500', '103'),
(21, '9F', 'N333', '102'),
(22, '13F', 'AC150', '103'),
(23, '2C', 'P600', '101'),
(24, '9H', 'AC350', '101'),
(25, '6F', 'AC250', '102'),
(26, '3B', 'AC200', '102'),
(27, '7D', 'P600', '103'),
(28, '5A', 'N333', '103'),
(29, '1F', 'P600', '103'),
(30, '2A', 'AC350', '103');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `login_time` varchar(100) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `user_session` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `login_time`, `ip_address`, `user_session`) VALUES
(1, 'Mon May 23 15:31:44 IST 2022', '127.0.0.1', 1000),
(2, 'Mon May 23 19:36:09 IST 2022', '0:0:0:0:0:0:0:1', 1004),
(3, 'Mon May 23 19:47:06 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(4, 'Mon May 23 19:49:50 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(5, 'Mon May 23 19:56:08 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(6, 'Mon May 23 20:42:38 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(7, 'Mon May 23 20:44:53 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(8, 'Mon May 23 20:49:24 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(9, 'Mon May 23 20:50:38 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(10, 'Mon May 23 20:53:56 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(11, 'Mon May 23 20:57:41 IST 2022', '0:0:0:0:0:0:0:1', 1000),
(12, 'Mon May 23 22:34:20 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(13, 'Mon May 23 22:49:48 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(14, 'Tue May 24 08:39:38 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(15, 'Tue May 24 08:46:25 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(16, 'Tue May 24 08:55:28 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(17, 'Tue May 24 09:14:16 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(18, 'Tue May 24 09:34:20 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(19, 'Tue May 24 10:33:11 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(20, 'Tue May 24 10:41:20 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(21, 'Wed May 25 01:44:38 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(22, 'Wed May 25 01:50:49 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(23, 'Wed May 25 01:52:48 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(24, 'Wed May 25 01:54:52 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(25, 'Wed May 25 01:56:18 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(26, 'Wed May 25 01:57:06 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(27, 'Wed May 25 02:00:07 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(28, 'Wed May 25 02:03:15 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(29, 'Wed May 25 02:03:46 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(30, 'Wed May 25 02:04:29 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(31, 'Wed May 25 02:06:38 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(32, 'Wed May 25 02:08:23 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(33, 'Wed May 25 02:16:46 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(34, 'Wed May 25 02:18:29 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(35, 'Wed May 25 06:00:34 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(36, 'Wed May 25 06:01:15 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(37, 'Wed May 25 06:01:39 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(38, 'Wed May 25 06:18:37 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(39, 'Wed May 25 09:08:24 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(40, 'Wed May 25 09:12:04 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(41, 'Wed May 25 10:29:19 IST 2022', '0:0:0:0:0:0:0:1', 1013),
(42, 'Wed May 25 10:35:01 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(43, 'Wed May 25 10:40:17 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(44, 'Wed May 25 23:58:51 IST 2022', '0:0:0:0:0:0:0:1', 1013),
(45, 'Wed May 25 23:59:02 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(46, 'Thu May 26 00:02:38 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(47, 'Thu May 26 00:02:48 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(48, 'Thu May 26 00:03:02 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(49, 'Thu May 26 00:06:27 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(50, 'Thu May 26 00:06:47 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(51, 'Thu May 26 00:09:10 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(52, 'Thu May 26 00:09:11 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(53, 'Thu May 26 00:09:11 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(54, 'Thu May 26 00:09:12 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(55, 'Thu May 26 00:09:51 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(56, 'Thu May 26 00:09:51 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(57, 'Thu May 26 00:09:52 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(58, 'Thu May 26 00:09:52 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(60, 'Thu May 26 00:11:15 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(61, 'Thu May 26 00:13:12 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(62, 'Thu May 26 00:15:29 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(63, 'Thu May 26 00:15:30 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(64, 'Thu May 26 00:15:30 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(65, 'Thu May 26 00:15:30 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(66, 'Thu May 26 00:15:30 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(67, 'Thu May 26 00:15:30 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(68, 'Thu May 26 00:15:31 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(69, 'Thu May 26 00:15:31 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(70, 'Thu May 26 00:15:31 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(71, 'Thu May 26 00:15:31 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(72, 'Thu May 26 00:15:31 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(73, 'Thu May 26 00:15:32 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(74, 'Thu May 26 00:17:24 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(75, 'Thu May 26 19:17:17 IST 2022', '127.0.0.1', 1014),
(76, 'Thu May 26 19:19:48 IST 2022', '127.0.0.1', 1014),
(77, 'Thu May 26 19:25:29 IST 2022', '127.0.0.1', 1002),
(78, 'Thu May 26 19:25:54 IST 2022', '127.0.0.1', 1004),
(79, 'Thu May 26 19:28:04 IST 2022', '127.0.0.1', 1006),
(80, 'Thu May 26 19:32:59 IST 2022', '127.0.0.1', 1004),
(81, 'Thu May 26 19:38:44 IST 2022', '127.0.0.1', 1004),
(82, 'Thu May 26 19:39:00 IST 2022', '127.0.0.1', 1004),
(83, 'Thu May 26 20:48:54 IST 2022', '127.0.0.1', 1004),
(84, 'Thu May 26 20:52:21 IST 2022', '127.0.0.1', 1004),
(85, 'Thu May 26 21:10:57 IST 2022', '127.0.0.1', 1004),
(86, 'Thu May 26 21:14:26 IST 2022', '127.0.0.1', 1004),
(87, 'Thu May 26 21:17:53 IST 2022', '127.0.0.1', 1004),
(88, 'Thu May 26 21:28:05 IST 2022', '127.0.0.1', 1004),
(89, 'Thu May 26 21:37:21 IST 2022', '127.0.0.1', 1004),
(90, 'Thu May 26 22:03:32 IST 2022', '127.0.0.1', 1004),
(92, 'Thu May 26 22:04:05 IST 2022', '127.0.0.1', 1004),
(93, 'Thu May 26 22:04:41 IST 2022', '127.0.0.1', 1004),
(94, 'Thu May 26 22:58:44 IST 2022', '127.0.0.1', 1004),
(95, 'Thu May 26 23:02:06 IST 2022', '127.0.0.1', 1004),
(96, 'Thu May 26 23:07:37 IST 2022', '127.0.0.1', 1004),
(97, 'Thu May 26 23:07:57 IST 2022', '127.0.0.1', 1004),
(98, 'Thu May 26 23:11:42 IST 2022', '127.0.0.1', 1004),
(100, 'Thu May 26 23:17:10 IST 2022', '127.0.0.1', 1004),
(101, 'Thu May 26 23:28:58 IST 2022', '127.0.0.1', 1004),
(102, 'Thu May 26 23:30:19 IST 2022', '127.0.0.1', 1004),
(103, 'Thu May 26 23:31:46 IST 2022', '127.0.0.1', 1004),
(104, 'Thu May 26 23:32:47 IST 2022', '127.0.0.1', 1004),
(105, 'Thu May 26 23:33:35 IST 2022', '127.0.0.1', 1004),
(106, 'Thu May 26 23:38:25 IST 2022', '127.0.0.1', 1004),
(107, 'Thu May 26 23:39:17 IST 2022', '127.0.0.1', 1004),
(108, 'Thu May 26 23:41:50 IST 2022', '127.0.0.1', 1004),
(109, 'Thu May 26 23:44:06 IST 2022', '127.0.0.1', 1004),
(110, 'Thu May 26 23:53:02 IST 2022', '127.0.0.1', 1004),
(111, 'Thu May 26 23:53:49 IST 2022', '127.0.0.1', 1004),
(112, 'Thu May 26 23:55:19 IST 2022', '127.0.0.1', 1004),
(114, 'Thu May 26 23:56:55 IST 2022', '127.0.0.1', 1004),
(115, 'Fri May 27 00:25:49 IST 2022', '127.0.0.1', 1004),
(116, 'Fri May 27 00:27:05 IST 2022', '127.0.0.1', 1004),
(117, 'Fri May 27 00:27:39 IST 2022', '127.0.0.1', 1004),
(118, 'Fri May 27 00:31:09 IST 2022', '127.0.0.1', 1004),
(119, 'Fri May 27 00:33:39 IST 2022', '127.0.0.1', 1004),
(120, 'Fri May 27 00:39:27 IST 2022', '127.0.0.1', 1004),
(122, 'Fri May 27 00:41:55 IST 2022', '127.0.0.1', 1004),
(123, 'Fri May 27 00:43:25 IST 2022', '127.0.0.1', 1004),
(124, 'Fri May 27 00:45:50 IST 2022', '127.0.0.1', 1004),
(125, 'Fri May 27 00:46:29 IST 2022', '127.0.0.1', 1004),
(126, 'Fri May 27 00:49:36 IST 2022', '127.0.0.1', 1004),
(127, 'Fri May 27 00:50:02 IST 2022', '127.0.0.1', 1004),
(128, 'Fri May 27 00:51:45 IST 2022', '127.0.0.1', 1004),
(129, 'Fri May 27 00:53:04 IST 2022', '127.0.0.1', 1004),
(130, 'Fri May 27 00:58:24 IST 2022', '127.0.0.1', 1004),
(136, 'Fri May 27 15:00:56 IST 2022', '127.0.0.1', 1004),
(137, 'Fri May 27 15:25:00 IST 2022', '127.0.0.1', 1000),
(138, 'Fri May 27 15:26:27 IST 2022', '127.0.0.1', 1004),
(139, 'Fri May 27 15:29:35 IST 2022', '127.0.0.1', 1004),
(140, 'Fri May 27 15:38:15 IST 2022', '127.0.0.1', 1004),
(141, 'Fri May 27 15:40:02 IST 2022', '127.0.0.1', 1004),
(142, 'Fri May 27 15:44:50 IST 2022', '127.0.0.1', 1004),
(143, 'Fri May 27 15:51:15 IST 2022', '127.0.0.1', 1004),
(144, 'Fri May 27 16:04:51 IST 2022', '127.0.0.1', 1004),
(145, 'Fri May 27 16:06:25 IST 2022', '127.0.0.1', 1004),
(146, 'Fri May 27 17:11:19 IST 2022', '127.0.0.1', 1004),
(147, 'Fri May 27 17:11:30 IST 2022', '127.0.0.1', 1004),
(148, 'Fri May 27 17:12:17 IST 2022', '127.0.0.1', 1004),
(149, 'Fri May 27 17:12:40 IST 2022', '127.0.0.1', 1004),
(150, 'Fri May 27 17:18:20 IST 2022', '127.0.0.1', 1004),
(151, 'Fri May 27 17:22:30 IST 2022', '127.0.0.1', 1004),
(152, 'Fri May 27 17:23:50 IST 2022', '127.0.0.1', 1004),
(153, 'Fri May 27 17:23:57 IST 2022', '127.0.0.1', 1004),
(154, 'Fri May 27 17:25:24 IST 2022', '127.0.0.1', 1004),
(155, 'Fri May 27 17:26:14 IST 2022', '127.0.0.1', 1004),
(156, 'Fri May 27 17:26:45 IST 2022', '127.0.0.1', 1004),
(157, 'Fri May 27 17:36:19 IST 2022', '127.0.0.1', 1004),
(158, 'Fri May 27 17:39:31 IST 2022', '127.0.0.1', 1004),
(159, 'Fri May 27 17:41:02 IST 2022', '127.0.0.1', 1004),
(161, 'Fri May 27 17:43:27 IST 2022', '127.0.0.1', 1004),
(162, 'Fri May 27 17:43:40 IST 2022', '127.0.0.1', 1004),
(163, 'Fri May 27 17:46:51 IST 2022', '127.0.0.1', 1004),
(164, 'Fri May 27 17:48:18 IST 2022', '127.0.0.1', 1004),
(165, 'Fri May 27 17:51:17 IST 2022', '127.0.0.1', 1004),
(166, 'Fri May 27 17:54:53 IST 2022', '127.0.0.1', 1004),
(167, 'Fri May 27 17:56:18 IST 2022', '127.0.0.1', 1004),
(168, 'Fri May 27 18:06:05 IST 2022', '127.0.0.1', 1004),
(169, 'Fri May 27 19:15:52 IST 2022', '127.0.0.1', 1004),
(170, 'Fri May 27 19:33:12 IST 2022', '127.0.0.1', 1004),
(171, 'Fri May 27 19:49:24 IST 2022', '127.0.0.1', 1004),
(172, 'Fri May 27 19:50:47 IST 2022', '127.0.0.1', 1004),
(173, 'Fri May 27 19:54:19 IST 2022', '127.0.0.1', 1004),
(174, 'Fri May 27 19:58:01 IST 2022', '127.0.0.1', 1004),
(175, 'Fri May 27 19:58:46 IST 2022', '127.0.0.1', 1004),
(176, 'Fri May 27 20:00:52 IST 2022', '127.0.0.1', 1004),
(177, 'Fri May 27 20:01:38 IST 2022', '127.0.0.1', 1004),
(178, 'Fri May 27 20:23:35 IST 2022', '127.0.0.1', 1004),
(179, 'Fri May 27 21:02:58 IST 2022', '127.0.0.1', 1004),
(180, 'Fri May 27 21:08:53 IST 2022', '127.0.0.1', 1004),
(181, 'Fri May 27 22:20:21 IST 2022', '127.0.0.1', 1004),
(182, 'Fri May 27 22:30:16 IST 2022', '127.0.0.1', 1004),
(183, 'Fri May 27 22:36:33 IST 2022', '127.0.0.1', 1004),
(184, 'Fri May 27 22:42:02 IST 2022', '127.0.0.1', 1004),
(185, 'Fri May 27 22:50:13 IST 2022', '127.0.0.1', 1004),
(186, 'Fri May 27 22:51:25 IST 2022', '127.0.0.1', 1004),
(187, 'Fri May 27 22:53:25 IST 2022', '127.0.0.1', 1004),
(188, 'Fri May 27 22:53:57 IST 2022', '127.0.0.1', 1004),
(189, 'Fri May 27 22:58:02 IST 2022', '127.0.0.1', 1004),
(190, 'Fri May 27 23:02:10 IST 2022', '127.0.0.1', 1004),
(191, 'Fri May 27 23:06:34 IST 2022', '127.0.0.1', 1004),
(193, 'Fri May 27 23:07:52 IST 2022', '127.0.0.1', 1004),
(194, 'Sat May 28 00:15:37 IST 2022', '127.0.0.1', 1004),
(195, 'Sat May 28 00:17:33 IST 2022', '127.0.0.1', 1004),
(196, 'Sat May 28 00:21:10 IST 2022', '127.0.0.1', 1004),
(198, 'Sat May 28 00:24:31 IST 2022', '127.0.0.1', 1004),
(199, 'Sat May 28 00:37:57 IST 2022', '127.0.0.1', 1004),
(200, 'Sat May 28 01:02:08 IST 2022', '127.0.0.1', 1004),
(201, 'Sat May 28 01:08:50 IST 2022', '127.0.0.1', 1004),
(202, 'Sat May 28 02:13:48 IST 2022', '127.0.0.1', 1004),
(203, 'Sat May 28 02:16:05 IST 2022', '127.0.0.1', 1004),
(204, 'Sat May 28 02:18:29 IST 2022', '127.0.0.1', 1004),
(205, 'Sat May 28 02:26:22 IST 2022', '127.0.0.1', 1004),
(206, 'Sat May 28 02:29:36 IST 2022', '127.0.0.1', 1004),
(207, 'Sat May 28 03:01:35 IST 2022', '127.0.0.1', 1004),
(208, 'Sat May 28 03:04:32 IST 2022', '127.0.0.1', 1004),
(209, 'Sat May 28 03:10:26 IST 2022', '127.0.0.1', 1004),
(210, 'Sat May 28 03:14:01 IST 2022', '127.0.0.1', 1004),
(211, 'Sat May 28 06:36:57 IST 2022', '127.0.0.1', 1004),
(212, 'Sat May 28 06:44:29 IST 2022', '127.0.0.1', 1004),
(213, 'Sat May 28 06:53:16 IST 2022', '127.0.0.1', 1004),
(214, 'Sat May 28 06:54:12 IST 2022', '127.0.0.1', 1004),
(215, 'Sat May 28 07:02:36 IST 2022', '127.0.0.1', 1004),
(216, 'Sat May 28 07:12:12 IST 2022', '127.0.0.1', 1004),
(219, 'Sat May 28 07:15:28 IST 2022', '127.0.0.1', 1004),
(220, 'Sat May 28 07:32:37 IST 2022', '127.0.0.1', 1004),
(221, 'Sat May 28 07:56:11 IST 2022', '127.0.0.1', 1004),
(222, 'Sat May 28 08:04:23 IST 2022', '127.0.0.1', 1004),
(223, 'Sat May 28 09:21:33 IST 2022', '127.0.0.1', 1004),
(225, 'Sat May 28 09:29:05 IST 2022', '127.0.0.1', 1004),
(226, 'Sat May 28 09:33:02 IST 2022', '127.0.0.1', 1004),
(227, 'Sat May 28 10:17:20 IST 2022', '127.0.0.1', 1004),
(228, 'Sat May 28 10:21:16 IST 2022', '127.0.0.1', 1004),
(229, 'Sat May 28 11:50:45 IST 2022', '127.0.0.1', 1004),
(230, 'Sat May 28 12:14:41 IST 2022', '127.0.0.1', 1004),
(231, 'Sat May 28 12:15:15 IST 2022', '127.0.0.1', 1004),
(232, 'Sat May 28 12:23:30 IST 2022', '127.0.0.1', 1004),
(233, 'Sat May 28 12:37:28 IST 2022', '127.0.0.1', 1000),
(235, 'Sat May 28 12:40:25 IST 2022', '127.0.0.1', 1004),
(236, 'Sat May 28 12:42:22 IST 2022', '127.0.0.1', 1004),
(238, 'Sat May 28 12:42:32 IST 2022', '127.0.0.1', 1004),
(239, 'Sat May 28 12:43:40 IST 2022', '127.0.0.1', 1004),
(240, 'Sat May 28 12:44:12 IST 2022', '127.0.0.1', 1004),
(241, 'Sat May 28 12:44:53 IST 2022', '127.0.0.1', 1004),
(242, 'Sat May 28 12:46:40 IST 2022', '127.0.0.1', 1004),
(243, 'Sat May 28 12:49:09 IST 2022', '127.0.0.1', 1004),
(244, 'Sat May 28 12:50:08 IST 2022', '127.0.0.1', 1004),
(245, 'Sat May 28 12:53:05 IST 2022', '127.0.0.1', 1004),
(246, 'Sat May 28 12:54:29 IST 2022', '127.0.0.1', 1004),
(247, 'Sat May 28 12:55:09 IST 2022', '127.0.0.1', 1004),
(248, 'Sat May 28 13:17:00 IST 2022', '127.0.0.1', 1004),
(249, 'Sat May 28 13:17:13 IST 2022', '127.0.0.1', 1004),
(250, 'Sat May 28 13:17:16 IST 2022', '127.0.0.1', 1004),
(251, 'Sat May 28 13:17:34 IST 2022', '127.0.0.1', 1004),
(252, 'Sat May 28 13:19:21 IST 2022', '127.0.0.1', 1004),
(253, 'Sat May 28 13:20:16 IST 2022', '127.0.0.1', 1004),
(254, 'Sat May 28 13:20:36 IST 2022', '127.0.0.1', 1004),
(255, 'Sat May 28 13:22:56 IST 2022', '127.0.0.1', 1004),
(256, 'Sat May 28 13:23:33 IST 2022', '127.0.0.1', 1004),
(257, 'Sat May 28 13:23:50 IST 2022', '127.0.0.1', 1004),
(258, 'Sat May 28 13:25:44 IST 2022', '127.0.0.1', 1004),
(259, 'Sat May 28 13:28:15 IST 2022', '127.0.0.1', 1004),
(260, 'Sat May 28 13:30:54 IST 2022', '127.0.0.1', 1004),
(261, 'Sat May 28 14:02:37 IST 2022', '127.0.0.1', 1004),
(262, 'Sat May 28 14:22:52 IST 2022', '127.0.0.1', 1006),
(263, 'Sat May 28 14:23:48 IST 2022', '127.0.0.1', 1004),
(264, 'Sat May 28 14:24:22 IST 2022', '127.0.0.1', 1004),
(265, 'Sat May 28 14:24:56 IST 2022', '127.0.0.1', 1004),
(266, 'Sat May 28 15:33:53 IST 2022', '127.0.0.1', 1006),
(268, 'Sat May 28 15:35:45 IST 2022', '127.0.0.1', 1003),
(271, 'Sat May 28 15:55:09 IST 2022', '127.0.0.1', 1005),
(272, 'Sat May 28 15:56:43 IST 2022', '127.0.0.1', 1005),
(273, 'Sat May 28 15:58:09 IST 2022', '127.0.0.1', 1005),
(274, 'Sat May 28 15:59:16 IST 2022', '127.0.0.1', 1005),
(275, 'Sat May 28 16:01:08 IST 2022', '127.0.0.1', 1005),
(276, 'Sat May 28 16:02:24 IST 2022', '127.0.0.1', 1005),
(277, 'Sat May 28 16:03:23 IST 2022', '127.0.0.1', 1005),
(278, 'Sat May 28 16:10:05 IST 2022', '127.0.0.1', 1005),
(279, 'Sat May 28 16:12:29 IST 2022', '127.0.0.1', 1005),
(280, 'Sat May 28 16:12:36 IST 2022', '127.0.0.1', 1005),
(282, 'Sat May 28 16:13:40 IST 2022', '127.0.0.1', 1004),
(283, 'Sat May 28 16:14:44 IST 2022', '127.0.0.1', 1005),
(284, 'Sat May 28 16:15:15 IST 2022', '127.0.0.1', 1005),
(285, 'Sat May 28 16:20:33 IST 2022', '127.0.0.1', 1005),
(286, 'Sat May 28 16:22:30 IST 2022', '127.0.0.1', 1005),
(287, 'Sat May 28 16:23:15 IST 2022', '127.0.0.1', 1005),
(288, 'Sat May 28 16:24:40 IST 2022', '127.0.0.1', 1005),
(289, 'Sat May 28 16:26:20 IST 2022', '127.0.0.1', 1005),
(290, 'Sat May 28 16:43:53 IST 2022', '127.0.0.1', 1005),
(291, 'Sat May 28 16:44:34 IST 2022', '127.0.0.1', 1005),
(292, 'Sat May 28 16:46:59 IST 2022', '127.0.0.1', 1005),
(293, 'Sat May 28 16:48:22 IST 2022', '127.0.0.1', 1005),
(294, 'Sat May 28 16:52:21 IST 2022', '127.0.0.1', 1005),
(295, 'Sat May 28 16:53:45 IST 2022', '127.0.0.1', 1005),
(296, 'Sat May 28 17:20:47 IST 2022', '127.0.0.1', 1005),
(297, 'Sat May 28 17:22:31 IST 2022', '127.0.0.1', 1005),
(298, 'Sat May 28 17:36:32 IST 2022', '127.0.0.1', 1004),
(301, 'Sat May 28 17:48:32 IST 2022', '127.0.0.1', 1004),
(302, 'Sat May 28 17:51:08 IST 2022', '127.0.0.1', 1005),
(303, 'Sat May 28 17:55:53 IST 2022', '127.0.0.1', 1005),
(304, 'Sat May 28 18:10:03 IST 2022', '127.0.0.1', 1006),
(305, 'Sat May 28 18:11:12 IST 2022', '127.0.0.1', 1006),
(306, 'Sat May 28 18:17:55 IST 2022', '127.0.0.1', 1006),
(307, 'Sat May 28 18:18:31 IST 2022', '127.0.0.1', 1006),
(308, 'Sat May 28 18:21:18 IST 2022', '127.0.0.1', 1006),
(309, 'Sat May 28 18:21:43 IST 2022', '127.0.0.1', 1006),
(310, 'Sat May 28 18:22:42 IST 2022', '127.0.0.1', 1006),
(311, 'Sat May 28 18:23:00 IST 2022', '127.0.0.1', 1006),
(312, 'Sat May 28 18:23:11 IST 2022', '127.0.0.1', 1006),
(313, 'Sat May 28 18:24:03 IST 2022', '127.0.0.1', 1006),
(314, 'Sat May 28 18:24:19 IST 2022', '127.0.0.1', 1006),
(315, 'Sat May 28 18:24:31 IST 2022', '127.0.0.1', 1006),
(316, 'Sat May 28 18:28:43 IST 2022', '127.0.0.1', 1006),
(317, 'Sat May 28 18:30:17 IST 2022', '127.0.0.1', 1006),
(318, 'Sat May 28 18:31:05 IST 2022', '127.0.0.1', 1006),
(319, 'Sat May 28 18:32:28 IST 2022', '127.0.0.1', 1006),
(320, 'Sat May 28 18:32:54 IST 2022', '127.0.0.1', 1006),
(321, 'Sat May 28 18:35:10 IST 2022', '127.0.0.1', 1006),
(322, 'Sat May 28 18:35:27 IST 2022', '127.0.0.1', 1006),
(323, 'Sat May 28 18:35:30 IST 2022', '127.0.0.1', 1006),
(324, 'Sat May 28 18:36:47 IST 2022', '127.0.0.1', 1006),
(325, 'Sat May 28 18:36:57 IST 2022', '127.0.0.1', 1006),
(326, 'Sat May 28 18:38:26 IST 2022', '127.0.0.1', 1006),
(327, 'Sat May 28 18:39:31 IST 2022', '127.0.0.1', 1006),
(328, 'Sat May 28 18:42:40 IST 2022', '127.0.0.1', 1006),
(329, 'Sat May 28 18:43:17 IST 2022', '127.0.0.1', 1006),
(330, 'Sat May 28 18:44:36 IST 2022', '127.0.0.1', 1006),
(331, 'Sat May 28 18:45:07 IST 2022', '127.0.0.1', 1006),
(332, 'Sat May 28 18:45:21 IST 2022', '127.0.0.1', 1006),
(333, 'Sat May 28 18:45:54 IST 2022', '127.0.0.1', 1006),
(334, 'Sat May 28 18:46:38 IST 2022', '127.0.0.1', 1006),
(335, 'Sat May 28 19:15:14 IST 2022', '127.0.0.1', 1006),
(336, 'Sat May 28 19:33:41 IST 2022', '127.0.0.1', 1006),
(337, 'Sat May 28 19:49:51 IST 2022', '127.0.0.1', 1006),
(338, 'Sat May 28 20:00:48 IST 2022', '127.0.0.1', 1004),
(339, 'Sat May 28 20:01:08 IST 2022', '127.0.0.1', 1005),
(340, 'Sat May 28 20:02:12 IST 2022', '127.0.0.1', 1014),
(341, 'Sat May 28 20:08:10 IST 2022', '127.0.0.1', 1006),
(342, 'Sat May 28 20:12:39 IST 2022', '127.0.0.1', 1004),
(343, 'Sat May 28 20:18:22 IST 2022', '127.0.0.1', 1006),
(344, 'Sat May 28 20:46:48 IST 2022', '127.0.0.1', 1006),
(345, 'Sat May 28 20:59:04 IST 2022', '127.0.0.1', 1006),
(346, 'Sat May 28 20:59:25 IST 2022', '127.0.0.1', 1006),
(347, 'Sat May 28 21:00:13 IST 2022', '127.0.0.1', 1006),
(348, 'Sat May 28 21:08:16 IST 2022', '127.0.0.1', 1006),
(349, 'Sat May 28 21:09:03 IST 2022', '127.0.0.1', 1006),
(350, 'Sat May 28 21:10:24 IST 2022', '127.0.0.1', 1006),
(351, 'Sat May 28 21:12:25 IST 2022', '127.0.0.1', 1006),
(352, 'Sat May 28 21:15:17 IST 2022', '127.0.0.1', 1006),
(353, 'Sat May 28 21:16:57 IST 2022', '127.0.0.1', 1006),
(354, 'Sat May 28 21:17:23 IST 2022', '127.0.0.1', 1006),
(355, 'Sat May 28 21:19:39 IST 2022', '127.0.0.1', 1006),
(356, 'Sat May 28 21:24:23 IST 2022', '127.0.0.1', 1006),
(357, 'Sat May 28 21:27:01 IST 2022', '127.0.0.1', 1006),
(358, 'Sat May 28 21:28:46 IST 2022', '127.0.0.1', 1006),
(359, 'Sat May 28 21:32:23 IST 2022', '127.0.0.1', 1004),
(360, 'Sat May 28 21:38:22 IST 2022', '127.0.0.1', 1004),
(361, 'Sat May 28 21:38:48 IST 2022', '127.0.0.1', 1006),
(362, 'Sat May 28 21:45:40 IST 2022', '127.0.0.1', 1006),
(363, 'Sat May 28 21:48:37 IST 2022', '127.0.0.1', 1006),
(364, 'Sat May 28 22:06:37 IST 2022', '127.0.0.1', 1006),
(365, 'Sat May 28 22:22:52 IST 2022', '127.0.0.1', 1006),
(366, 'Sat May 28 22:27:48 IST 2022', '127.0.0.1', 1006),
(367, 'Sat May 28 22:37:37 IST 2022', '127.0.0.1', 1006),
(368, 'Sat May 28 22:37:46 IST 2022', '127.0.0.1', 1006),
(369, 'Sat May 28 22:38:34 IST 2022', '127.0.0.1', 1006),
(371, 'Sat May 28 22:39:21 IST 2022', '127.0.0.1', 1006),
(372, 'Sat May 28 22:41:14 IST 2022', '127.0.0.1', 1006),
(375, 'Sat May 28 22:42:04 IST 2022', '127.0.0.1', 1006),
(376, 'Sat May 28 22:57:14 IST 2022', '127.0.0.1', 1006),
(377, 'Sat May 28 23:03:50 IST 2022', '127.0.0.1', 1006),
(378, 'Sat May 28 23:14:27 IST 2022', '127.0.0.1', 1006),
(379, 'Sat May 28 23:24:12 IST 2022', '127.0.0.1', 1001),
(380, 'Sat May 28 23:29:28 IST 2022', '127.0.0.1', 1001),
(381, 'Sun May 29 05:25:55 IST 2022', '127.0.0.1', 1004),
(382, 'Sun May 29 05:29:11 IST 2022', '127.0.0.1', 1001),
(383, 'Sun May 29 06:06:29 IST 2022', '127.0.0.1', 1005),
(384, 'Sun May 29 06:06:42 IST 2022', '127.0.0.1', 1001),
(386, 'Sun May 29 06:10:53 IST 2022', '127.0.0.1', 1001),
(387, 'Sun May 29 07:20:14 IST 2022', '127.0.0.1', 1004),
(388, 'Sun May 29 07:22:42 IST 2022', '127.0.0.1', 1001),
(389, 'Sun May 29 07:23:38 IST 2022', '127.0.0.1', 1001),
(390, 'Sun May 29 07:27:46 IST 2022', '127.0.0.1', 1004),
(391, 'Sun May 29 07:38:04 IST 2022', '127.0.0.1', 1004),
(392, 'Sun May 29 07:41:26 IST 2022', '127.0.0.1', 1004),
(393, 'Sun May 29 07:49:54 IST 2022', '127.0.0.1', 1001),
(395, 'Sun May 29 07:56:52 IST 2022', '127.0.0.1', 1001),
(396, 'Sun May 29 08:23:27 IST 2022', '127.0.0.1', 1001),
(398, 'Sun May 29 08:26:59 IST 2022', '127.0.0.1', 1001),
(399, 'Sun May 29 08:30:53 IST 2022', '127.0.0.1', 1001),
(400, 'Sun May 29 08:31:48 IST 2022', '127.0.0.1', 1001),
(401, 'Sun May 29 08:40:34 IST 2022', '127.0.0.1', 1001),
(402, 'Sun May 29 08:43:18 IST 2022', '127.0.0.1', 1001),
(403, 'Sun May 29 09:07:01 IST 2022', '127.0.0.1', 1001),
(404, 'Sun May 29 09:08:28 IST 2022', '127.0.0.1', 1001),
(405, 'Sun May 29 09:08:41 IST 2022', '127.0.0.1', 1001),
(406, 'Sun May 29 09:09:16 IST 2022', '127.0.0.1', 1001),
(407, 'Sun May 29 09:16:20 IST 2022', '127.0.0.1', 1001),
(408, 'Sun May 29 09:16:35 IST 2022', '127.0.0.1', 1001),
(409, 'Sun May 29 09:17:02 IST 2022', '127.0.0.1', 1001),
(410, 'Sun May 29 09:47:26 IST 2022', '127.0.0.1', 1001),
(411, 'Sun May 29 09:48:00 IST 2022', '127.0.0.1', 1001),
(412, 'Sun May 29 09:48:19 IST 2022', '127.0.0.1', 1001),
(413, 'Sun May 29 09:48:47 IST 2022', '127.0.0.1', 1001),
(414, 'Sun May 29 09:49:50 IST 2022', '127.0.0.1', 1001),
(415, 'Sun May 29 09:50:24 IST 2022', '127.0.0.1', 1001),
(416, 'Sun May 29 09:50:47 IST 2022', '127.0.0.1', 1001),
(417, 'Sun May 29 09:51:49 IST 2022', '127.0.0.1', 1001),
(418, 'Sun May 29 09:54:16 IST 2022', '127.0.0.1', 1001),
(419, 'Sun May 29 09:54:33 IST 2022', '127.0.0.1', 1001),
(420, 'Sun May 29 09:55:52 IST 2022', '127.0.0.1', 1001),
(421, 'Sun May 29 09:56:07 IST 2022', '127.0.0.1', 1001),
(422, 'Sun May 29 09:56:21 IST 2022', '127.0.0.1', 1001),
(423, 'Sun May 29 09:56:32 IST 2022', '127.0.0.1', 1001),
(424, 'Sun May 29 09:57:36 IST 2022', '127.0.0.1', 1001),
(425, 'Sun May 29 09:57:46 IST 2022', '127.0.0.1', 1001),
(426, 'Sun May 29 09:58:01 IST 2022', '127.0.0.1', 1001),
(427, 'Sun May 29 09:59:16 IST 2022', '127.0.0.1', 1001),
(428, 'Sun May 29 09:59:41 IST 2022', '127.0.0.1', 1001),
(429, 'Sun May 29 10:00:20 IST 2022', '127.0.0.1', 1001),
(430, 'Sun May 29 10:01:45 IST 2022', '127.0.0.1', 1001),
(431, 'Sun May 29 10:02:42 IST 2022', '127.0.0.1', 1001),
(432, 'Sun May 29 10:03:35 IST 2022', '127.0.0.1', 1001),
(433, 'Sun May 29 10:04:15 IST 2022', '127.0.0.1', 1001),
(434, 'Sun May 29 10:04:30 IST 2022', '127.0.0.1', 1001),
(435, 'Sun May 29 10:06:00 IST 2022', '127.0.0.1', 1001),
(436, 'Sun May 29 10:06:19 IST 2022', '127.0.0.1', 1001),
(437, 'Sun May 29 10:07:08 IST 2022', '127.0.0.1', 1001),
(438, 'Sun May 29 10:07:31 IST 2022', '127.0.0.1', 1001),
(439, 'Sun May 29 10:07:57 IST 2022', '127.0.0.1', 1001),
(440, 'Sun May 29 10:08:00 IST 2022', '127.0.0.1', 1001),
(441, 'Sun May 29 10:08:13 IST 2022', '127.0.0.1', 1001),
(443, 'Sun May 29 10:08:47 IST 2022', '127.0.0.1', 1001),
(444, 'Sun May 29 10:09:06 IST 2022', '127.0.0.1', 1001),
(445, 'Sun May 29 10:20:29 IST 2022', '127.0.0.1', 1001),
(446, 'Sun May 29 10:21:08 IST 2022', '127.0.0.1', 1001),
(447, 'Sun May 29 10:24:19 IST 2022', '127.0.0.1', 1001),
(448, 'Sun May 29 10:33:13 IST 2022', '127.0.0.1', 1001),
(449, 'Sun May 29 10:55:02 IST 2022', '127.0.0.1', 1004),
(451, 'Sun May 29 11:05:55 IST 2022', '127.0.0.1', 1002),
(452, 'Sun May 29 11:09:46 IST 2022', '127.0.0.1', 1002),
(453, 'Sun May 29 11:26:42 IST 2022', '127.0.0.1', 1002),
(454, 'Sun May 29 11:27:24 IST 2022', '127.0.0.1', 1004),
(455, 'Sun May 29 11:29:35 IST 2022', '127.0.0.1', 1004),
(456, 'Sun May 29 11:29:54 IST 2022', '127.0.0.1', 1004),
(457, 'Sun May 29 11:35:09 IST 2022', '127.0.0.1', 1004),
(458, 'Sun May 29 11:38:27 IST 2022', '127.0.0.1', 1004),
(460, 'Sun May 29 11:43:03 IST 2022', '127.0.0.1', 1004),
(461, 'Sun May 29 11:46:53 IST 2022', '127.0.0.1', 1004),
(462, 'Sun May 29 11:50:17 IST 2022', '127.0.0.1', 1004),
(463, 'Sun May 29 11:55:10 IST 2022', '127.0.0.1', 1004),
(464, 'Sun May 29 11:56:14 IST 2022', '127.0.0.1', 1004),
(465, 'Sun May 29 12:03:03 IST 2022', '127.0.0.1', 1004),
(466, 'Sun May 29 12:07:22 IST 2022', '127.0.0.1', 1004),
(467, 'Sun May 29 12:13:53 IST 2022', '127.0.0.1', 1004),
(468, 'Sun May 29 12:17:00 IST 2022', '127.0.0.1', 1004),
(469, 'Sun May 29 12:22:27 IST 2022', '127.0.0.1', 1004),
(470, 'Sun May 29 12:22:48 IST 2022', '127.0.0.1', 1004),
(471, 'Sun May 29 12:43:58 IST 2022', '127.0.0.1', 1004),
(472, 'Sun May 29 12:46:50 IST 2022', '127.0.0.1', 1004),
(473, 'Sun May 29 12:49:35 IST 2022', '127.0.0.1', 1004),
(475, 'Sun May 29 12:53:51 IST 2022', '127.0.0.1', 1004),
(476, 'Sun May 29 13:02:03 IST 2022', '127.0.0.1', 1004),
(478, 'Sun May 29 13:41:11 IST 2022', '127.0.0.1', 1004),
(479, 'Sun May 29 13:52:37 IST 2022', '127.0.0.1', 1004),
(480, 'Sun May 29 14:16:36 IST 2022', '127.0.0.1', 1004),
(481, 'Sun May 29 14:32:44 IST 2022', '127.0.0.1', 1004),
(482, 'Sun May 29 14:51:20 IST 2022', '127.0.0.1', 1004),
(483, 'Sun May 29 14:54:25 IST 2022', '127.0.0.1', 1004),
(485, 'Sun May 29 15:02:09 IST 2022', '127.0.0.1', 1002),
(486, 'Sun May 29 15:04:53 IST 2022', '127.0.0.1', 1002),
(487, 'Sun May 29 15:05:33 IST 2022', '127.0.0.1', 1006);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `price` float NOT NULL,
  `reservation_ticket` int(11) NOT NULL,
  `flight_ticket` int(11) NOT NULL,
  `seat_ticket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(64) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` varchar(7) NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `phone`, `address`, `role`, `is_active`) VALUES
(1000, 'Ruwani', 'Samarakoone', 'ruwan@gmail.com', 'ruwee', 'password', '0094702527844', '250/40, Samanala Uyana, Koskandawala, Yakkala, Sri Lanka', 'client', 0),
(1001, 'Kamla', 'Weerasinghe', 'kamal@hotmail.com', 'kamalw', 'password', '0094762345643', 'Nugegoda', 'client', 0),
(1002, 'Kasun', 'Kalhara', 'kasun@gmail.com', 'kasunk', 'password', '0094771232412', 'Colombo', 'staffg1', 1),
(1003, 'Amara', 'Kumarasiri', 'amara@gmail.com', 'amarak', 'password', '0094716756342', 'Balapitiya', 'staffg2', 1),
(1004, 'Kushani', 'Shawindya', 'kushani@gmail.com', 'kushanisha', 'password', '0094705678987', 'Boralesgamuwa', 'staffg1', 1),
(1005, 'Bihara', 'Nwan', 'bihara@gmail.com', 'biharan', 'password', '0094713243546', 'Ganemulla', 'staffg2', 1),
(1006, 'Ruwan', 'Madhawa', 'hashan@gmail.com', 'ruwanm', 'password', '0094778765432', 'Negambo', 'admin', 1),
(1007, 'Janith', 'Thilanka', 'janitht@gmail.com', 'janitht', 'password', NULL, NULL, 'client', 1),
(1009, 'Shaveen', 'Kahandagama', 'shaveenk@gmail.com', 'shaveenk', 'password', NULL, NULL, 'client', 1),
(1012, 'Shaveen', 'Kahandagama', 'shaveenkd@gmail.com', 'shaveenkd', 'password', NULL, NULL, 'client', 1),
(1013, 'Shaveen', 'Kahandagama', 'shaveen12@gmail.com', 'shaveen12', 'password', NULL, NULL, 'client', 1),
(1014, 'Kapila', 'Undukapuchcha', 'kapilau@gmail.com', 'kapilau', 'password', '0714758269', '504/5\r\nMakullapokuna,\r\nWeerapokuna,', 'client', 0),
(1015, 'Ruwan', 'Sandaruwan', 'ruwan@gmail.com', 'ruwans', '1234', NULL, NULL, 'client', 1),
(1016, 'Vidura', 'Herath', 'vi@gmail.com', 'vidu', '1234', NULL, NULL, 'client', 1),
(1017, 'Kumarathunga', 'Munidaasa', 'kuma@gmail.com', 'kuma', '1234', NULL, NULL, 'client', 1),
(1018, 'Kamal', 'Gunarathne', 'k@gmail.com', 'kamlag', '1234', NULL, NULL, 'staffg2', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aircraft_flight` (`aircraft_flight`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_reservation` (`user_reservation`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aircraft_seat` (`aircraft_seat`),
  ADD KEY `class_seat` (`class_seat`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_session` (`user_session`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_ticket` (`reservation_ticket`),
  ADD KEY `flight_ticket` (`flight_ticket`),
  ADD KEY `seat_ticket` (`seat_ticket`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1019;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `aircraft_flight` FOREIGN KEY (`aircraft_flight`) REFERENCES `aircraft` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `user_reservation` FOREIGN KEY (`user_reservation`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `aircraft_seat` FOREIGN KEY (`aircraft_seat`) REFERENCES `aircraft` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_seat` FOREIGN KEY (`class_seat`) REFERENCES `class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `user_session` FOREIGN KEY (`user_session`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `flight_ticket` FOREIGN KEY (`flight_ticket`) REFERENCES `flight` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_ticket` FOREIGN KEY (`reservation_ticket`) REFERENCES `reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seat_ticket` FOREIGN KEY (`seat_ticket`) REFERENCES `seat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
