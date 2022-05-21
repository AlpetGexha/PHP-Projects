-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2022 at 03:28 PM
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
-- Database: `alpetgexhaag`
--
CREATE DATABASE IF NOT EXISTS `alpetgexhaag` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `alpetgexhaag`;

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

DROP TABLE IF EXISTS `todo`;
CREATE TABLE IF NOT EXISTS `todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gjerat` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `gjerat`) VALUES
(2, 'sot te te shkoj ne shtpi ne 9:00'),
(3, '12'),
(4, 'sot te te shkoj ne shtpi ne 9:00'),
(5, 'to hard'),
(6, 'das'),
(8, 'Muzikat'),
(9, 'Fotot'),
(11, 'Videot'),
(12, 'Leason'),
(13, 'Shkolla procjet'),
(14, 'AMC Procjet'),
(15, 'htdoks'),
(16, 'Fotot'),
(17, '@@@'),
(18, '@PHP  -later'),
(19, '@CODE -html -test'),
(20, '@MAIN -procjekte'),
(21, '@Code Wordpres'),
(22, '@CODE ALL --Project'),
(23, 'if done --edit --all --ICONE'),
(24, '---Clip --');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
