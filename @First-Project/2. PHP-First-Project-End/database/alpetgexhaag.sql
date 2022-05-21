-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql208.epizy.com
-- Generation Time: Feb 04, 2022 at 11:34 AM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AlpetgexhaAG1`
--

CREATE DATABASE `AlpetgexhaAG1`;
USE `AlpetgexhaAG1`;
-- --------------------------------------------------------

--
-- Table structure for table `mesazhi`
--

CREATE TABLE `mesazhi` (
  `mesazhi` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mesazhi`
--

INSERT INTO `mesazhi` (`mesazhi`) VALUES
('SHUM I FORT JE'),
('hjhjkhjkhjk'),
('ghjghjghjghjghjghjghjghjghjghjghjghjghjghj'),
('gfd'),
('MKA RA kari nshole pom vyn ,me nxerr\r\n'),
('muuuuuuuuu'),
('dasd'),
('Hysnszge'),
('QUPAPIIII'),
('EJJJ QUPAPIII\r\n'),
('dssssssss'),
('das'),
('dsab'),
('dasbdjasd'),
('Test'),
('test 13 '),
('test');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `emri_post` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_data` datetime NOT NULL DEFAULT current_timestamp(),
  `post_time` time NOT NULL,
  `post_year` year(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `body`, `emri_post`, `image`, `user_id`, `post_data`, `post_time`, `post_year`) VALUES
(53, 'PHP is a general-purpose scripting language especially suited to web development.[5] It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1994.[6] The PHP reference implementation is now produced by The PHP Group.[7] PHP originally stood for Personal Home Page,[6] but it now stands for the recursive initialism PHP: Hypertext Preprocessor.[8]\r\n\r\nPHP code is usually processed on a web server by a PHP interpreter implemented as a module, a daemon or as a Common Gateway Interface (CGI) executable. On a web server, the result of the interpreted and executed PHP code – which may be any type of data, such as generated HTML or binary image data – would form the whole or part of an HTTP response. Various web template systems, web content management systems, and web frameworks exist which can be employed to orchestrate or facilitate the generation of that response. Additionally, PHP can be used for many programming tasks outside of the web context, such as standalone graphical applications[9] and robotic drone control.[10] Arbitrary PHP code can also be interpreted and executed via command-line interface (CLI).', 'PHP', '.6023192747a2a6.80343340.png', 2, '2021-02-26 21:36:51', '00:00:00', 0000),
(56, 'JavaScript (/ˈdʒɑːvəˌskrɪpt/),[8] often abbreviated as JS, is a programming language that conforms to the ECMAScript specification.[9] JavaScript is high-level, often just-in-time compiled, and multi-paradigm. It has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.\r\n\r\nAlongside HTML and CSS, JavaScript is one of the core technologies of the World Wide Web.[10] JavaScript enables interactive web pages and is an essential part of web applications. The vast majority of websites use it for client-side page behavior,[11] and all major web browsers have a dedicated JavaScript engine to execute it.\r\n\r\nAs a multi-paradigm language, JavaScript supports event-driven, functional, and imperative programming styles. It has application programming interfaces (APIs) for working with text, dates, regular expressions, standard data structures, and the Document Object Model (DOM).', 'JavaScript', '.602338bcd9ce12.46987055.jpg', 2, '2021-02-26 21:36:51', '00:00:00', 0000),
(57, 'Arduino (/ɑːrˈdwiːnoʊ/) is an open-source hardware and software company, project and user community that designs and manufactures single-board microcontrollers and microcontroller kits for building digital devices. Its hardware products are licensed under a CC-BY-SA license, while software is licensed under the GNU Lesser General Public License (LGPL) or the GNU General Public License (GPL),[1] permitting the manufacture of Arduino boards and software distribution by anyone. Arduino boards are available commercially from the official website or through authorized distributors.\r\n\r\nArduino board designs use a variety of microprocessors and controllers. The boards are equipped with sets of digital and analog input/output (I/O) pins that may be interfaced to various expansion boards (\'shields\') or breadboards (for prototyping) and other circuits. The boards feature serial communications interfaces, including Universal Serial Bus (USB) on some models, which are also used for loading programs. The microcontrollers can be programmed using the C and C++ programming languages, using a standard API which is also known as the \"Arduino language\".', 'Arduino', '.6023394a7b8c04.89131521.jpg', 2, '2021-02-26 21:36:51', '00:00:00', 0000),
(58, 'Cascading Style Sheets (CSS) is a style sheet language used for describing the presentation of a document written in a markup language such as HTML.[1] CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript.[2] CSS is designed to enable the separation of presentation and content, including layout, colors, and fonts.[3] This separation can improve content accessibility, provide more flexibility and control in the specification of presentation characteristics, enable multiple web pages to share formatting by specifying the relevant CSS in a separate .css file which reduces complexity and repetition in the structural content as well as enabling the .css file to be cached to improve the page load speed between the pages that share the file and its formatting. Separation of formatting and content also makes it feasible to present the same markup page in different styles for different rendering methods, such as on-screen, in print, by voice (via speech-based browser or screen reader), and on Braille-based tactile devices. CSS also has rules for alternate formatting if the content is accessed on a mobile device.[4]', 'CSS', '.602339eb86f4a7.97949760.png', 2, '2021-02-26 21:36:51', '00:00:00', 0000),
(59, 'Hypertext Markup Language (HTML) is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript. Web browsers receive HTML documents from a web server or from local storage and render the documents into multimedia web pages. HTML describes the structure of a web page semantically and originally included cues for the appearance of the document.', 'HTML', '.60233a1a8ce0b3.15437451.png', 2, '2021-02-26 21:36:51', '00:00:00', 0000),
(88, 'test', 'test', 'pc 1.JPG', 2, '2021-03-04 13:31:56', '00:00:00', 0000),
(91, 'jalla moj mihanee\r\n', 'MIHANNEEE', 'Screenshot (307).png', 8, '2021-03-04 13:39:59', '00:00:00', 0000),
(93, 'me dashttt', 'u kryy', 'download (2).jpg', 9, '2021-03-04 14:05:44', '00:00:00', 0000),
(96, 'OFF', 'OFF', 'off.JPG', 2, '2021-03-04 18:26:54', '00:00:00', 0000),
(108, 'DEKI NARCOSIIIIIIIIIII\r\n', 'CHUPAPIII', 'RUST Screenshot 2021.03.04 - 05.45.04.48.png', 17, '2021-03-06 14:23:28', '00:00:00', 0000),
(99, 'WeirdDoggi(Sorry not angery)', 'WeirdDoggi', '1i2glz.JPG', 14, '2021-03-05 05:17:16', '00:00:00', 0000),
(100, 'Ska me neve', 'Ma te madhajt', 'B6B75F3D-155A-450D-8D93-5B1052858EEA.jpg', 13, '2021-03-05 14:19:29', '00:00:00', 0000),
(102, 'MGE', 'CSGO ', 'MGE.jpg', 16, '2021-03-05 17:57:41', '00:00:00', 0000),
(103, 'GPU: GeForce GTX 1060 6GB\r\nCPU: Intel(R) Core(TM) i7-4770 CPU @ 3.40GHz\r\nMemory: 16 GB RAM (15.8 GB RAM usable)\r\nCurrent resolution: 1920 x 1200, 59Hz \r\n\r\nMouse:\r\nTrust Gaming GXT 130 \r\nWireless Gaming Mouse,\r\n800-2400 DPI, \r\n9 Buttons - Black\r\n\r\nKeyboard:\r\nKKmoon AOYEAH Mechanical \r\nGaming Keyboard Game Keypad \r\n12 LED Lighting Modes\r\n\r\nHeadphones:\r\nFANTECH ECHO MH82 GAMING HEADSET\r\n\r\nMonitor 59HZ', 'MY PC', 'IMG_20200516_042125.jpg', 16, '2021-03-05 18:01:29', '00:00:00', 0000),
(107, 'jo me hogjen sosht haram', 'hoxh a osht haram me i dal njerit nrust DOUBLE BARREL', 'maxresdefault.jpg', 8, '2021-03-06 14:08:32', '00:00:00', 0000),
(119, 'Ftojme te gjithe te interesuarit te marrin pjese:\r\n\r\nPerleshje masive, mund te quhet perleshja e shekullit!\r\n\r\nQENI ermalit VS MACA alpetit\r\n\r\nFitusit i jepet 1 gjiro me motorr ne koridor.', 'Fight Event', 'test.jpg', 18, '2021-03-18 18:23:57', '00:00:00', 0000),
(123, 'Ky djal shum bukurosh punon shum osht djalosh, osht i mir me kafsh dhe fmij osht shum i urt edhe i eger nese osht nevoja dhe shitet per 100 euro.', 'Djali i Ismetit', 'download.jpg', 14, '2021-03-24 03:11:10', '00:00:00', 0000),
(129, 'test', 'test', 'Capture.PNG', 2, '2021-03-26 16:48:04', '00:00:00', 0000);

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int(11) NOT NULL,
  `gjerat` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `gjerat`) VALUES
(2, 'sot te te shkoj ne shtpi ne 9:00'),
(3, '12'),
(4, 'sot te te shkoj ne shtpi ne 9:00'),
(5, 'to hard');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `emri` varchar(255) NOT NULL,
  `mbiemri` varchar(255) NOT NULL,
  `username` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `token` varchar(255) NOT NULL,
  `tokenExpire` varchar(255) NOT NULL,
  `mosha` varchar(3) NOT NULL,
  `gjinia` int(1) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'profiledefault.jpg',
  `joindate` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `emri`, `mbiemri`, `username`, `email`, `password`, `token`, `tokenExpire`, `mosha`, `gjinia`, `image`, `joindate`, `role`) VALUES
(2, 'Alpet', 'Gexha', 'AlpetG', 'agexha@gmail.com', '$2y$10$UxEMPIhq8A/X330cd90jhuEKVHcJYSKo1mI5rCbmlidcnmQl8s9ne', '', '2021-03-18 13:43:10', '16', 0, 'DrK1LL3R  logo.jpg', '2021-02-26 20:33:05', '1'),
(9, 'Rubin', 'Emini', 'rubinemini', 'rubinemini@gmail.com', '$2y$10$qu762FPY4gOYajkah8swE.QkkfoQsKc0PMDf5fWdtwYvF0TQzmJcG', '', '2021-03-04 14:12:40', '', 0, 'download (2).jpg', '2021-03-04 19:03:18', '0'),
(8, 'LION', 'ZEQIRAJ', 'Ruzhdi', 'lonizeq123@gmail.com', '$2y$10$avcnamdGWJc7CzUelt9xEOtogCbpD0u0/1VX6mJsurQZL5fiT6iV2', '', '2021-03-06 14:11:03', '', 0, 'fortnite-pepe-the-frog.gif', '2021-03-04 18:37:15', '0'),
(14, 'Bini', 'Salihi', 'BiniSalihi', 'binsalihii@gmail.com', '$2y$10$rTXxw1cLmZPoeaZ9cWA7B.h7y9oFjh8vX13nhWFowwc4D0bWuPZYG', '', '', '', 0, 'profiledefault.jpg', '2021-03-05 10:16:04', '0'),
(13, 'Ermal', 'Pajaziti', 'Haxhi', 'Ermalpajaziti12@gmail.com', '$2y$10$qk38.AzEjI5qDXAcYnxOuu57lx9yjv0wnv.pGRPNBq/EA7mz20crW', '', '', '', 0, 'profiledefault.jpg', '2021-03-05 07:28:29', '0'),
(15, 'SAM', 'SAm', 'SAM', 'djhasjdk@gmail.com', '$2y$10$cMR6tl.eJKJS/Lx/dQq1LOjyjKSgjDbSA8OZHItzsDzi1Z8iqnpL2', '', '', '', 0, 'profiledefault.jpg', '2021-03-05 11:48:34', '0'),
(19, 'Alpet', 'Gexha', 'Alpet_Gexha1', 'agexha10@gmail.com', '$2y$10$Bf6Plor8Nx85N0HaN5pxPurGgs9FaRDr1hC2YaAC6iRpsEH4onIKi', '', '', '', 0, 'profiledefault.jpg', '2021-03-22 22:19:20', '0'),
(17, 'ELION', 'METAJ', 'metaj69', 'elion.metaj01@gmail.com', '$2y$10$UOqvgUW/d6081wj.lUn.FuIPExGDEDmyhdwzwh0tMdYNgs4syk7Nm', '', '', '', 0, 'profiledefault.jpg', '2021-03-06 19:05:40', '0'),
(18, 'Mentor', 'Musa', 'testtesttest', 'test@gmail.com', '$2y$10$3CTlTwFLjJNvyLtIf9l4rudkeRNw2NUrrGzDGIj8IM3OOIOUwuu/m', '', '', '', 0, 'dtcc3.png', '2021-03-18 22:21:01', '0'),
(23, 'Eden', 'Dobra', 'Alpet123', 'agexha111@gmail.com', '$2y$10$hmy.yjxaPQcS5bwx.Kfiaer/iDLBWcHOUYyF8Z0EWGd11K1Z6hfnm', '', '', '', 0, 'profiledefault.jpg', '2021-04-23 21:56:30', '0'),
(25, 'test', 'etateat', 'Test123', 'teacher131@gmail.com', '$2y$10$Y2BLVhJIWnRNVFkxhH4YCOoogJFnb7wjzB1HjwcuUztS3Mecx5lbe', '', '', '', 0, 'profiledefault.jpg', '2021-05-04 21:06:06', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
