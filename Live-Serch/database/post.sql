-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2022 at 04:41 AM
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
-- Database: `ag_php_livesearch`
--
CREATE DATABASE IF NOT EXISTS `ag_php_livesearch`;
USE `ag_php_livesearch`;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `postID` int(11) NOT NULL AUTO_INCREMENT,
  `postTitle` varchar(255) NOT NULL,
  `postTime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`postID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`postID`, `postTitle`, `postTime`) VALUES
(4, 'PHP', '2021-09-13 00:11:02'),
(5, 'HTML', '2021-09-13 00:11:38'),
(6, 'CSS', '2021-09-13 00:11:47'),
(7, 'Arduino', '2021-09-13 00:11:59'),
(8, 'JavaScript', '2021-09-13 00:12:10'),
(9, 'Laravel', '2021-09-13 00:12:41'),
(10, 'React', '2021-09-13 00:12:56'),
(11, 'Java', '2021-09-13 00:14:03'),
(12, 'Python', '2021-09-13 00:14:18'),
(13, 'C++', '2021-09-13 00:14:46'),
(14, 'c#', '2021-09-13 00:15:05'),
(15, 'GO', '2021-09-13 00:16:38');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
