-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2023 at 04:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginnodejs`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('your_username', 'your_password'),
('Bc220403777mah@vu.edu.pk', 'gg'),
('Momna Fatima ', 'ggg'),
('Bc220403777mah@vu.edu.pk', 'fff'),
('Bc220403777mah@vu.edu.pk', 'gg'),
('gg', 'hh'),
('f', 'ff'),
('Momna04', 'k'),
('Momna Fatima ', 'ttt'),
('Momna Fatima ', 'ttt'),
('Bc220403777mah@vu.edu.pk', '666'),
('Bc220403777mah@vu.edu.pk', 'rr'),
('Bc220403777mah@vu.edu.pk', 'rr'),
('Bc220403777mah@vu.edu.pk', 'rr'),
('Bc220403777mah@vu.edu.pk', 'hh'),
('Bc220403777mah@vu.edu.pk', 'hh'),
('Bc220403777mah@vu.edu.pk', 'hh'),
('Bc220403777mah@vu.edu.pk', 'hh'),
('Bc220403777mah@vu.edu.pk', 'hh'),
('Bc220403777mah@vu.edu.pk', 'hh'),
('Bc220403777mah@vu.edu.pk', 'hh'),
('Bc220403777mah@vu.edu.pk', 'hh'),
('Bc220403777mah@vu.edu.pk', 'hh'),
('Bc220403777mah@vu.edu.pk', 'hh'),
('Bc220403777mah@vu.edu.pk', 'hh'),
('Bc220403777mah@vu.edu.pk', 'hh'),
('Bc220403777mah@vu.edu.pk', 'hh'),
('Bc220403777mah@vu.edu.pk', 'hh'),
('Bc220403777mah@vu.edu.pk', 'hh'),
('Bc220403777mah@vu.edu.pk', 'hh'),
('Momna Fatima ', 'gg'),
('0021618m@gmail.com', 'ttt'),
('0021618m@gmail.com', 'ttt'),
('momna021', 'rrrrrrrr'),
('momna021', 'rrrrrrrr'),
('mmmm021', 'hhhl'),
('rubina', 'aaa'),
('rubina', 'aaa'),
('rubina', 'aaa'),
('rubina', 'aaa'),
('rubina', 'aaa'),
('rubina', 'aaa'),
('rubina', 'aaa'),
('rubina', 'aaa'),
('rubina', 'aaa'),
('rubina', 'aaa'),
('rubina', 'aaa'),
('rubina', 'aaa'),
('rubina', 'aaa'),
('sajid', 'ss'),
('sajid', 'ss'),
('sajid', 'hhh'),
('tahir', 'aaa'),
('ig', 'g'),
('Bc220403777mah@vu.edu.pk', 'rr'),
('tahioo', 'rr');

-- --------------------------------------------------------

--
-- Table structure for table `sample_file_1`
--

CREATE TABLE `sample_file_1` (
  `COL 1` varchar(16) DEFAULT NULL,
  `COL 2` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sample_file_1`
--

INSERT INTO `sample_file_1` (`COL 1`, `COL 2`) VALUES
('variant', 'stock'),
('2244-BLSM-L', '100'),
('2244-BLSM-M', '100'),
('2244-BLSM-S', '100'),
('2244-BLSM-XL', '100'),
('SLKDRM-CLK-03-XL', '100'),
('SLKDRM-CLK-52-L', '100'),
('SLKDRM-CLK-52-M', '100'),
('SLKDRM-CLK-52-S', '100'),
('SLKDRM-CLK-52-XL', '100'),
('2244-BLSM-L', '200'),
('2244-BLSM-M', '200'),
('2244-BLSM-S', '200'),
('2244-BLSM-XL', '200');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`) VALUES
(1, 'user1', 'user1@example.com'),
(2, 'user2', 'user2@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `address`) VALUES
(1, 1, 'Address 1'),
(2, 1, 'Address 2'),
(3, 2, 'Address 3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `idx_username` (`username`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
