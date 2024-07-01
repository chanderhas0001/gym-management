-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 09:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `mobile` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `street` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `state` varchar(40) DEFAULT NULL,
  `pin` varchar(20) DEFAULT NULL,
  `aadhar` varchar(15) DEFAULT NULL,
  `profile` varchar(20) DEFAULT NULL,
  `aadharfront` varchar(40) DEFAULT NULL,
  `aadharback` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `name`, `mobile`, `email`, `street`, `city`, `state`, `pin`, `aadhar`, `profile`, `aadharfront`, `aadharback`) VALUES
(1, 'annu', '7206809424', 'aakashyadav8708103040@gmail.com', 'gali no 424', 'rewari', 'haryana', '123401', '123456789245', 'annu123401.jpg', 'aadhaarfrontannu123401.jpg', 'aadhaarbackannu123401.jpg'),
(2, 'krish', '8901164933', 'aakashyadav8708103040@gmail.com', 'gali no 450', 'rewari', 'haryana', '123401', '123456789245', 'krish123401.jpg', 'aadhaarfrontkrish123401.jpg', 'aadhaarbackkrish123401.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `feereceiveddate` date DEFAULT NULL,
  `amount` varchar(40) DEFAULT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `name`, `startdate`, `enddate`, `feereceiveddate`, `amount`, `status`) VALUES
(4, 'annu', '2024-06-01', '2024-06-06', '2024-05-30', '1000', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `mobile` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `street` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `state` varchar(40) DEFAULT NULL,
  `pin` varchar(20) DEFAULT NULL,
  `exp` varchar(40) DEFAULT NULL,
  `aadhar` varchar(15) DEFAULT NULL,
  `profile` varchar(20) DEFAULT NULL,
  `aadharfront` varchar(40) DEFAULT NULL,
  `aadharback` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`id`, `name`, `mobile`, `email`, `street`, `city`, `state`, `pin`, `exp`, `aadhar`, `profile`, `aadharfront`, `aadharback`) VALUES
(2, 'suyash', '8901164933', 'aakashyadav8708103040@gmail.com', 'gali no 450', 'gurugram', 'haryana', '123401', '2', '123456789245', 'suyash123401.jpg', 'aadhaarfrontsuyash123401.jpg', 'aadhaarbacksuyash123401.jpg'),
(3, 'suyash', '8901164933', 'aakashyadav8708103040@gmail.com', 'gali no 450', 'gurugram', 'haryana', '123401', '2', '123456789245', 'suyash123401.jpg', 'aadhaarfrontsuyash123401.jpg', 'aadhaarbacksuyash123401.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('ashu', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
