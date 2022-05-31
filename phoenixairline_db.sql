-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 31, 2022 at 06:18 PM
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
  `gate` varchar(3) NOT NULL,
  `cost` float NOT NULL,
  `aircraft_flight` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id`, `takeoff_airport`, `takeoff_time`, `takeoff_date`, `landing_airport`, `landing_time`, `landing_date`, `gate`, `cost`, `aircraft_flight`) VALUES
(1, 'Melbourne', '1:23 AM', '05/06/2022', 'Colombo', '8:27 AM', '05/06/2022', '3', 56700, 'AC300'),
(2, 'Melbourne', '5:48 PM', '19/06/2022', 'South Africa', '7:16 AM', '20/06/2022', '5', 176999, 'AC350'),
(3, 'London', '1:00PM', '2022/03/21', 'Colombo', '10:00AM', '2022/03/22', 'B4', 15000, 'AC100'),
(4, 'Colombo', '10:00AM', '2022/02/23', 'England', '11:00PM', '2022/02/25', 'B2', 10000, 'AC100');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `userId` int(11) NOT NULL,
  `takeOff_airport` varchar(45) NOT NULL,
  `takeOff_date` varchar(45) NOT NULL,
  `take_off_time` varchar(45) NOT NULL,
  `landing_airport` varchar(45) NOT NULL,
  `cost` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(75, 'Thu May 26 19:13:39 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(76, 'Thu May 26 19:14:28 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(77, 'Thu May 26 19:14:58 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(78, 'Sat May 28 20:06:10 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(79, 'Sun May 29 07:10:40 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(80, 'Sun May 29 07:11:31 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(82, 'Sun May 29 17:12:11 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(83, 'Sun May 29 17:37:01 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(84, 'Sun May 29 18:48:00 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(85, 'Sun May 29 19:56:24 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(86, 'Sun May 29 21:01:55 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(87, 'Sun May 29 23:16:26 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(88, 'Sun May 29 23:16:35 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(89, 'Sun May 29 23:26:07 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(90, 'Sun May 29 23:26:23 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(91, 'Sun May 29 23:28:08 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(92, 'Sun May 29 23:28:16 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(93, 'Sun May 29 23:28:32 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(94, 'Sun May 29 23:28:43 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(95, 'Sun May 29 23:29:42 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(96, 'Sun May 29 23:29:57 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(97, 'Sun May 29 23:34:26 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(98, 'Mon May 30 10:36:00 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(99, 'Mon May 30 10:45:04 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(100, 'Mon May 30 10:47:05 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(101, 'Mon May 30 10:48:31 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(102, 'Mon May 30 10:51:02 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(103, 'Mon May 30 10:52:30 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(104, 'Mon May 30 10:53:08 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(105, 'Mon May 30 10:53:45 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(106, 'Mon May 30 10:57:13 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(107, 'Mon May 30 10:58:26 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(108, 'Mon May 30 10:58:27 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(109, 'Mon May 30 10:58:27 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(110, 'Mon May 30 11:00:49 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(111, 'Mon May 30 11:03:19 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(112, 'Mon May 30 11:03:40 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(113, 'Mon May 30 11:04:18 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(114, 'Mon May 30 11:04:43 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(115, 'Mon May 30 11:06:18 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(116, 'Mon May 30 11:06:59 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(117, 'Mon May 30 11:10:18 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(118, 'Mon May 30 11:10:35 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(119, 'Mon May 30 11:10:46 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(120, 'Mon May 30 11:11:14 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(121, 'Mon May 30 11:12:02 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(122, 'Mon May 30 11:12:24 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(123, 'Mon May 30 11:14:37 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(124, 'Mon May 30 11:14:49 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(125, 'Mon May 30 11:15:56 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(126, 'Mon May 30 11:16:39 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(127, 'Mon May 30 11:16:55 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(128, 'Mon May 30 11:17:55 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(129, 'Mon May 30 11:18:34 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(130, 'Mon May 30 11:19:36 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(131, 'Mon May 30 11:19:50 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(132, 'Mon May 30 11:19:59 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(133, 'Mon May 30 11:20:45 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(134, 'Mon May 30 11:21:16 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(135, 'Mon May 30 11:21:39 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(136, 'Mon May 30 11:22:16 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(137, 'Mon May 30 11:22:31 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(138, 'Mon May 30 11:22:49 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(139, 'Mon May 30 11:23:02 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(140, 'Mon May 30 11:23:39 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(141, 'Mon May 30 11:23:48 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(142, 'Mon May 30 11:24:29 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(143, 'Mon May 30 11:24:55 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(144, 'Mon May 30 11:25:36 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(145, 'Mon May 30 11:26:21 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(146, 'Mon May 30 11:29:59 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(147, 'Mon May 30 11:30:20 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(148, 'Mon May 30 11:30:21 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(149, 'Mon May 30 11:30:21 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(150, 'Mon May 30 11:30:21 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(151, 'Mon May 30 11:30:57 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(152, 'Mon May 30 11:33:04 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(153, 'Mon May 30 11:36:23 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(154, 'Mon May 30 11:36:40 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(155, 'Mon May 30 11:38:45 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(156, 'Mon May 30 11:39:36 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(157, 'Mon May 30 11:41:26 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(158, 'Mon May 30 11:42:04 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(159, 'Mon May 30 11:43:05 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(160, 'Mon May 30 11:44:40 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(161, 'Mon May 30 11:46:25 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(162, 'Mon May 30 11:46:30 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(163, 'Mon May 30 11:47:01 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(164, 'Mon May 30 11:47:23 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(165, 'Mon May 30 11:47:34 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(166, 'Mon May 30 11:47:49 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(167, 'Mon May 30 11:48:16 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(168, 'Mon May 30 11:48:56 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(169, 'Mon May 30 11:49:42 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(170, 'Mon May 30 11:50:11 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(171, 'Mon May 30 11:50:33 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(172, 'Mon May 30 11:50:44 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(173, 'Mon May 30 11:51:13 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(174, 'Mon May 30 11:52:49 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(175, 'Mon May 30 11:55:07 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(176, 'Mon May 30 11:56:18 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(177, 'Mon May 30 11:59:17 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(178, 'Mon May 30 11:59:59 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(179, 'Mon May 30 12:00:23 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(180, 'Mon May 30 12:15:57 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(181, 'Mon May 30 12:16:50 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(182, 'Mon May 30 12:17:04 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(183, 'Mon May 30 12:17:26 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(184, 'Mon May 30 12:17:47 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(185, 'Mon May 30 12:18:02 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(186, 'Mon May 30 12:20:03 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(187, 'Mon May 30 12:20:27 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(188, 'Mon May 30 12:20:53 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(189, 'Mon May 30 12:21:16 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(190, 'Mon May 30 15:59:25 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(191, 'Mon May 30 15:59:32 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(192, 'Mon May 30 16:01:25 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(193, 'Mon May 30 16:01:59 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(194, 'Mon May 30 16:02:52 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(195, 'Mon May 30 16:02:53 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(196, 'Mon May 30 16:04:42 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(197, 'Mon May 30 16:04:51 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(198, 'Mon May 30 16:05:04 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(199, 'Mon May 30 16:22:37 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(200, 'Mon May 30 16:23:13 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(201, 'Mon May 30 16:23:30 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(202, 'Mon May 30 16:29:43 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(203, 'Mon May 30 16:29:51 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(204, 'Mon May 30 16:31:17 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(205, 'Mon May 30 18:07:13 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(206, 'Mon May 30 18:25:11 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(207, 'Mon May 30 18:34:55 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(208, 'Mon May 30 18:35:26 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(209, 'Mon May 30 18:53:45 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(210, 'Mon May 30 18:56:23 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(211, 'Mon May 30 18:59:22 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(212, 'Mon May 30 19:04:48 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(213, 'Mon May 30 20:08:44 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(214, 'Mon May 30 20:12:21 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(215, 'Mon May 30 20:20:28 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(216, 'Mon May 30 20:22:12 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(217, 'Mon May 30 20:41:07 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(218, 'Mon May 30 20:46:54 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(219, 'Mon May 30 21:05:08 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(220, 'Mon May 30 21:07:55 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(221, 'Mon May 30 21:08:38 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(222, 'Mon May 30 21:09:44 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(223, 'Mon May 30 21:12:54 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(224, 'Mon May 30 21:20:00 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(225, 'Mon May 30 22:27:54 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(226, 'Mon May 30 22:38:58 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(227, 'Mon May 30 22:55:34 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(228, 'Mon May 30 22:56:08 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(229, 'Mon May 30 22:57:04 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(230, 'Mon May 30 22:58:13 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(231, 'Mon May 30 23:01:05 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(232, 'Mon May 30 23:01:33 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(233, 'Mon May 30 23:02:42 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(234, 'Mon May 30 23:05:08 IST 2022', '0:0:0:0:0:0:0:1', 1003),
(236, 'Mon May 30 23:06:35 IST 2022', '0:0:0:0:0:0:0:1', 1003),
(237, 'Mon May 30 23:11:28 IST 2022', '0:0:0:0:0:0:0:1', 1003),
(238, 'Mon May 30 23:12:50 IST 2022', '0:0:0:0:0:0:0:1', 1003),
(239, 'Mon May 30 23:16:12 IST 2022', '0:0:0:0:0:0:0:1', 1003),
(240, 'Mon May 30 23:17:40 IST 2022', '0:0:0:0:0:0:0:1', 1003),
(241, 'Mon May 30 23:17:42 IST 2022', '0:0:0:0:0:0:0:1', 1003),
(242, 'Mon May 30 23:17:42 IST 2022', '0:0:0:0:0:0:0:1', 1003),
(243, 'Mon May 30 23:17:42 IST 2022', '0:0:0:0:0:0:0:1', 1003),
(244, 'Mon May 30 23:17:43 IST 2022', '0:0:0:0:0:0:0:1', 1003),
(245, 'Mon May 30 23:18:06 IST 2022', '0:0:0:0:0:0:0:1', 1003),
(246, 'Mon May 30 23:18:28 IST 2022', '0:0:0:0:0:0:0:1', 1003),
(247, 'Mon May 30 23:22:01 IST 2022', '0:0:0:0:0:0:0:1', 1003),
(248, 'Mon May 30 23:22:36 IST 2022', '0:0:0:0:0:0:0:1', 1003),
(249, 'Mon May 30 23:33:44 IST 2022', '0:0:0:0:0:0:0:1', 1004),
(250, 'Mon May 30 23:34:31 IST 2022', '0:0:0:0:0:0:0:1', 1006),
(251, 'Mon May 30 23:36:18 IST 2022', '0:0:0:0:0:0:0:1', 1015),
(252, 'Mon May 30 23:39:24 IST 2022', '0:0:0:0:0:0:0:1', 1003),
(253, 'Mon May 30 23:40:48 IST 2022', '0:0:0:0:0:0:0:1', 1006),
(254, 'Mon May 30 23:42:26 IST 2022', '0:0:0:0:0:0:0:1', 1006),
(255, 'Mon May 30 23:42:52 IST 2022', '0:0:0:0:0:0:0:1', 1006),
(256, 'Mon May 30 23:44:33 IST 2022', '0:0:0:0:0:0:0:1', 1006),
(257, 'Mon May 30 23:45:01 IST 2022', '0:0:0:0:0:0:0:1', 1006),
(258, 'Mon May 30 23:45:49 IST 2022', '0:0:0:0:0:0:0:1', 1006),
(259, 'Mon May 30 23:46:11 IST 2022', '0:0:0:0:0:0:0:1', 1006),
(260, 'Mon May 30 23:46:29 IST 2022', '0:0:0:0:0:0:0:1', 1006),
(261, 'Mon May 30 23:48:28 IST 2022', '0:0:0:0:0:0:0:1', 1006),
(262, 'Mon May 30 23:49:11 IST 2022', '0:0:0:0:0:0:0:1', 1006),
(263, 'Mon May 30 23:49:33 IST 2022', '0:0:0:0:0:0:0:1', 1006),
(264, 'Mon May 30 23:50:08 IST 2022', '0:0:0:0:0:0:0:1', 1006),
(265, 'Mon May 30 23:50:26 IST 2022', '0:0:0:0:0:0:0:1', 1004),
(266, 'Mon May 30 23:50:42 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(267, 'Tue May 31 00:11:41 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(268, 'Tue May 31 00:27:27 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(269, 'Tue May 31 00:33:49 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(270, 'Tue May 31 00:35:12 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(271, 'Tue May 31 12:08:37 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(272, 'Tue May 31 12:10:10 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(274, 'Tue May 31 12:11:16 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(275, 'Tue May 31 12:18:49 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(276, 'Tue May 31 12:24:08 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(278, 'Tue May 31 12:31:47 IST 2022', '0:0:0:0:0:0:0:1', 1014),
(280, 'Tue May 31 16:52:36 IST 2022', '127.0.0.1', 1003),
(281, 'Tue May 31 17:03:47 IST 2022', '127.0.0.1', 1003),
(282, 'Tue May 31 17:08:00 IST 2022', '127.0.0.1', 1003),
(283, 'Tue May 31 17:10:20 IST 2022', '127.0.0.1', 1003),
(284, 'Tue May 31 17:14:12 IST 2022', '127.0.0.1', 1003),
(285, 'Tue May 31 17:22:37 IST 2022', '127.0.0.1', 1003),
(287, 'Tue May 31 17:23:29 IST 2022', '127.0.0.1', 1003),
(288, 'Tue May 31 17:26:33 IST 2022', '127.0.0.1', 1003),
(289, 'Tue May 31 17:30:13 IST 2022', '127.0.0.1', 1002),
(290, 'Tue May 31 17:30:21 IST 2022', '127.0.0.1', 1002),
(291, 'Tue May 31 17:30:42 IST 2022', '127.0.0.1', 1004),
(292, 'Tue May 31 17:38:09 IST 2022', '127.0.0.1', 1000),
(293, 'Tue May 31 17:54:05 IST 2022', '127.0.0.1', 1000),
(294, 'Tue May 31 17:54:47 IST 2022', '127.0.0.1', 1000),
(295, 'Tue May 31 18:00:17 IST 2022', '127.0.0.1', 1000),
(296, 'Tue May 31 18:14:08 IST 2022', '127.0.0.1', 1000),
(297, 'Tue May 31 18:14:51 IST 2022', '127.0.0.1', 1000),
(298, 'Tue May 31 18:16:28 IST 2022', '127.0.0.1', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `user_ticket` int(11) DEFAULT NULL,
  `price` float NOT NULL,
  `flight_ticket` int(11) NOT NULL,
  `seat_ticket` int(11) NOT NULL,
  `class_ticket` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `user_ticket`, `price`, `flight_ticket`, `seat_ticket`, `class_ticket`) VALUES
(2, 1001, 200, 2, 6, '102'),
(3, 1014, 95000, 4, 1, '101'),
(4, 1014, 75000, 3, 2, '103'),
(5, 1014, 15000, 4, 2, '102'),
(6, 1014, 170100, 1, 2, '103'),
(7, 1015, 113400, 1, 2, '103'),
(8, 1014, 255150, 1, 2, '102'),
(9, 1014, 884995, 2, 3, '103'),
(10, 1014, 45000, 3, 2, '102'),
(11, 1014, 255150, 1, 2, '102'),
(12, 1014, 255150, 1, 2, '102'),
(13, 1014, 510300, 1, 2, '102'),
(14, 1014, 510300, 1, 2, '102'),
(15, 1014, 510300, 1, 2, '102'),
(16, 1014, 510300, 1, 2, '102'),
(17, 1014, 510300, 1, 2, '102'),
(18, 1014, 510300, 1, 2, '102');

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
  `role` varchar(7) NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `role`, `is_active`) VALUES
(1000, 'Thisura', 'Samarakoon', 'thissamarakoon@gmail.com', 'thisuras', 'password', 'client', 1),
(1001, 'Yasas', 'Harshana', 'yasas99@hotmail.com', 'yasash', 'password', 'client', 1),
(1002, 'Heshan', 'Kalhara', 'heshan@gmail.com', 'heshank', 'password', 'staffg1', 0),
(1003, 'Mohamed', 'Mubarak', 'mam@gmail.com', 'mohamedm', 'password', 'staffg2', 1),
(1004, 'Kushani', 'Kaushalya', 'kushani@gmail.com', 'kushanik', 'password', 'staffg1', 1),
(1005, 'Bihara', 'Numanshi', 'bihara@gmail.com', 'biharan', 'password', 'staffg2', 0),
(1006, 'Hashan', 'Madhawa', 'hashan@gmail.com', 'hashanm', 'password', 'admin', 1),
(1007, 'Janith', 'Thilanka', 'janitht@gmail.com', 'janitht', 'password', 'client', 0),
(1009, 'Shaveen', 'Kahandagama', 'shaveenk@gmail.com', 'shaveenk', 'password', 'client', 0),
(1012, 'Shaveen', 'Kahandagama', 'shaveenkd@gmail.com', 'shaveenkd', 'password', 'client', 0),
(1013, 'Shaveen', 'Kahandagama', 'shaveen12@gmail.com', 'shaveen12', 'password', 'client', 0),
(1014, 'Kapila', 'Undukapuchcha', 'kapilau@gmail.com', 'kapilau', 'password', 'client', 1),
(1015, 'Dasun', 'Shanaka', 'dasuns@gmail.com', 'dasuns', 'password', 'client', 1);

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
  ADD KEY `flight_ticket` (`flight_ticket`),
  ADD KEY `seat_ticket` (`seat_ticket`),
  ADD KEY `user_ticket` (`user_ticket`),
  ADD KEY `class_ticket` (`class_ticket`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `aircraft_flight` FOREIGN KEY (`aircraft_flight`) REFERENCES `aircraft` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `class_ticket` FOREIGN KEY (`class_ticket`) REFERENCES `class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flight_ticket` FOREIGN KEY (`flight_ticket`) REFERENCES `flight` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seat_ticket` FOREIGN KEY (`seat_ticket`) REFERENCES `seat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ticket` FOREIGN KEY (`user_ticket`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
