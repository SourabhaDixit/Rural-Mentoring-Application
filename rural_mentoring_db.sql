-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2022 at 10:45 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rural_mentoring_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `from_user` varchar(30) NOT NULL,
  `to_user` varchar(30) NOT NULL,
  `chat` varchar(100) NOT NULL,
  `datetime` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `from_user`, `to_user`, `chat`, `datetime`) VALUES
(15, '11234567890', '19876543210', 'hello kowshik', '2022-06-03 10:23:10'),
(16, '19876543210', '11234567890', 'hi admin', '2022-06-03 10:25:55'),
(17, '11234567890', '19876543210', 'bye', '2022-06-03 10:28:01'),
(18, '19876543210', '11234567890', 'kk', '2022-06-03 10:28:48'),
(19, '19876543210', '11234567890', ':)', '2022-06-03 10:29:09'),
(21, '11234567890', '19876543210', '1', '2022-06-03 10:59:28'),
(22, '11234567890', '19876543210', '2', '2022-06-03 10:59:33'),
(23, '11234567890', '19876543210', '2', '2022-06-03 10:59:38'),
(24, '11234567890', '19876543210', '2', '2022-06-03 10:59:54'),
(25, '11234567890', '19876543210', '3', '2022-06-03 11:04:15'),
(26, '11234567890', '19876543210', '4', '2022-06-03 11:04:20'),
(27, '19876543210', '11234567890', '5', '2022-06-03 11:26:34'),
(28, '11234567890', '298765432102', 'hi', '2022-06-03 11:48:38'),
(29, '11234567890', '298765432102', 'hello', '2022-06-03 11:49:23'),
(30, '11234567890', '298765432102', 'bye', '2022-06-03 11:52:53'),
(31, '19876543210', '11234567890', '6', '2022-06-03 11:55:12'),
(32, '11234567890', '19876543210', '7', '2022-06-03 12:10:41'),
(33, '19876543210', '11234567890', 'hai', '2022-06-03 12:11:38'),
(34, '11234567890', '19876543210', 'hello', '2022-06-03 12:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `mentor` int(11) NOT NULL,
  `mentee` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `mentor`, `mentee`, `message`, `rating`) VALUES
(4, 1, 1, 'vjhfjhcfbnvmhyf', 4),
(5, 2, 2, 'vjhfjhcfbnvmhyf', 5),
(6, 1, 2, 'vjhfjhcfbnvmhyf', 2),
(7, 2, 1, 'vjhfjhcfbnvmhyf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mentee`
--

CREATE TABLE `mentee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentee`
--

INSERT INTO `mentee` (`id`, `name`, `email`, `phone`, `password`, `gender`, `age`, `class`, `status`) VALUES
(1, 'Admin', 'admin@gmail.com', '1234567890', 'qwerty', 0, 19, 10, 1),
(2, 'Admin2', 'admin2@gmail.com', '12345678902', 'qwerty2', 0, 19, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mentor`
--

CREATE TABLE `mentor` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `skill` varchar(20) NOT NULL,
  `aadhar_card` varchar(200) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `certificate` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentor`
--

INSERT INTO `mentor` (`id`, `name`, `email`, `phone`, `password`, `gender`, `age`, `skill`, `aadhar_card`, `photo`, `certificate`, `status`) VALUES
(1, 'Kowshik', 'kowshik@gmail.com', '9876543210', '123456', 0, 19, 'Computer', 'TINKERING KIT APPLICATION.pdf', 'Screenshot (43).png', 'TINKERING KIT APPLICATION.pdf', 1),
(2, 'Kowshik2', 'kowshik2@gmail.com', '98765432102', '1234562', 0, 19, 'Computer', 'TINKERING KIT APPLICATION.pdf', 'Screenshot (43).png', 'TINKERING KIT APPLICATION.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `mentor` int(11) NOT NULL,
  `mentee` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `mentor`, `mentee`, `status`) VALUES
(9, 1, 1, 1),
(10, 2, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mentee`
--
ALTER TABLE `mentee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mentor`
--
ALTER TABLE `mentor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mentee`
--
ALTER TABLE `mentee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mentor`
--
ALTER TABLE `mentor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
