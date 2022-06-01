-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 01, 2022 at 08:26 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1000, 'Ruwan', 'Gunathilake', 'ru@gmail.com', 'ruwang', 'password', 'client', 1),
(1001, 'Piyumo', 'gunathilake', 'piyu@hotmail.com', 'piyu', 'password', 'client', 1),
(1002, 'kasun', 'Kalhara', 'kasun@gmail.com', 'kasunk', 'password', 'staffg1', 1),
(1003, 'Sandun', 'Sankalpa', 'mamssdsd@gmail.com', 'sanduns', 'password', 'staffg2', 1),
(1004, 'Kushani', 'Sandunika', 'kusi@gmail.com', 'kushanik', 'password', 'staffg1', 1),
(1005, 'Bihara', 'Numanshi', 'bihara@gmail.com', 'biharan', 'password', 'staffg2', 0),
(1006, 'admin', 'admin', 'admin@gmail.com', 'admin', 'password', 'admin', 1),
(1007, 'Janith', 'Thilanka', 'janitht@gmail.com', 'janitht', 'password', 'client', 1),
(1009, 'Shaveen', 'Kahandagama', 'shaveenk@gmail.com', 'shaveenk', 'password', 'client', 1),
(1012, 'Shaveen', 'Kahandagama', 'shaveenkd@gmail.com', 'shaveenkd', 'password', 'client', 1),
(1013, 'Shaveen', 'Kahandagama', 'shaveen12@gmail.com', 'shaveen12', 'password', 'client', 1),
(1014, 'Kapila', 'Undukapuchcha', 'kapilau@gmail.com', 'kapilau', 'password', 'client', 1),
(1015, 'Dasun', 'Shanaka', 'dasuns@gmail.com', 'dasuns', 'password', 'client', 0);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
