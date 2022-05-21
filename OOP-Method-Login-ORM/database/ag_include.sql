-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2022 at 04:00 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alpetg_php_include`
--
CREATE DATABASE IF NOT EXISTS `alpetg_php_include` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `alpetg_php_include`;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roles` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `roles`) VALUES
(1, 'admin'),
(2, 'moderator\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emri` varchar(255) NOT NULL,
  `mbiemri` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `image` varchar(500) NOT NULL DEFAULT 'nologouser.jpg',
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `emri`, `mbiemri`, `username`, `password`, `email`, `role`, `image`, `time`) VALUES
(66, 'Alpet', 'Gexha', 'alpetg12', '$2y$10$PD3kZlWi2oFa5gLEyiIGBeFpcjgNDRW63RcOJgzhiqUt16rP979SW', 'agexha@gmail.com', 1, 'nologouser.jpg', '2021-10-02 23:08:28'),
(68, 'Alpet', 'Gexha', 'alpetg121', '$2y$10$kymJnHuonTJVKJDi5iLqDO12/q7TxatuMUYuRqkzMmPg6yvaGmHqC', 'agexhaa@gmail.com', 1, 'nologouser.jpg', '2021-10-02 23:14:00'),
(70, 'Alpet', 'Gexh', 'alpet1234', '$2y$10$BWJ7jdFSQYUIQHLmhzLGI.o9c7Q1ghOCdLuOJLRiJiU1jfQGYTf.C', 'shabani@gmail.com', 1, 'nologouser.jpg', '2021-10-03 23:29:09');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
