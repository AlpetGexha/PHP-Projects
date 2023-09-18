-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2021 at 09:06 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `temp_commnet`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `CommnetId` int(11) NOT NULL,
  `CommnetPostId` int(11) NOT NULL,
  `ComnetUserID` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `CommnetDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`CommnetId`, `CommnetPostId`, `ComnetUserID`, `comment`, `CommnetDate`) VALUES
(1, 0, 2, 'asdfasdfasdf', '2019-07-15 15:40:10'),
(2, 0, 2, 'dfasdfasdf', '2019-07-18 08:15:38'),
(3, 0, 2, 'dfasdfasdf', '2019-07-18 08:15:51'),
(4, 0, 2, 'another one', '2019-07-18 08:25:48'),
(5, 0, 2, 'aaaaaaaaaaaaaa', '2019-07-18 08:27:35'),
(6, 0, 2, 'bbbbbbbbbbb', '2019-07-18 08:28:50'),
(7, 0, 2, 'aaaaaaaaccccvcvvv', '2019-07-18 08:28:56'),
(8, 0, 2, 'zzzzzzzzzzzz', '2019-07-18 08:36:29'),
(9, 0, 2, 'yyyyyyyyyyyyyyyyyy', '2019-07-18 08:36:35'),
(11, 0, 2, 'aaaaaaaaaaaaaaaaaa', '2019-07-18 08:39:11'),
(12, 0, 2, 'aaaaaaaaaaaaa', '2019-07-18 08:43:56'),
(20, 0, 2, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2019-07-25 11:45:59'),
(22, 0, 3, 'Test 123\n', '2021-08-31 14:37:50'),
(23, 0, 3, 'fsdjhfsd\n', '2021-08-31 14:38:44');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `PostId` int(11) UNSIGNED NOT NULL,
  `PostUserId` int(11) NOT NULL,
  `PostTitle` varchar(255) NOT NULL,
  `PostBody` text NOT NULL,
  `PostDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`PostId`, `PostUserId`, `PostTitle`, `PostBody`, `PostDate`) VALUES
(96, 1, 'Automekanik', 'NjÃ« mekanik auto ( teknik automobilave nÃ« shumicÃ«n e AmerikÃ«n e Veriut , teknik tÃ« lehta automjeteve nÃ« British anglisht , dhe mekanik motor nÃ« Australian anglisht ) Ã«shtÃ« njÃ« mekanik me njÃ« shumÃ«llojshmÃ«ri tÃ« automobilave bÃ«n ose ose nÃ« njÃ« zonÃ« tÃ« caktuar ose nÃ« njÃ« tÃ« veÃ§antÃ« tÃ« automobilave. NÃ« riparimin e makinave, roli i tyre kryesor Ã«shtÃ« diagnostikimiproblemi nÃ« mÃ«nyrÃ« tÃ« saktÃ« dhe tÃ« shpejtÃ«. Ata shpesh duhet tÃ« japin kuotat e Ã§mimeve pÃ«r klientÃ«t e tyre para fillimit tÃ« punÃ«s ose pas Ã§montimit tÃ« pjesshÃ«m pÃ«r inspektim. Puna e tyre mund tÃ« pÃ«rfshijÃ« riparimin e njÃ« pjese tÃ« veÃ§antÃ« ose zÃ«vendÃ«simin e njÃ« ose mÃ« shumÃ« pjesÃ«ve si kuvende.\r\n\r\nMirÃ«mbajtja themelore e automjeteve Ã«shtÃ« njÃ« pjesÃ« themelore e punÃ«s sÃ« njÃ« mekaniku nÃ« vendet moderne tÃ« industrializuara, ndÃ«rsa nÃ« tÃ« tjerat ata konsultohen vetÃ«m kur njÃ« automjet tashmÃ« po tregon shenja tÃ« mosfunksionimit. MirÃ«mbajtja parandaluese Ã«shtÃ« gjithashtu njÃ« pjesÃ« themelore e punÃ«s sÃ« njÃ« mekaniku, por kjo nuk Ã«shtÃ« e mundur nÃ« rastin e automjeteve qÃ« nuk mirÃ«mbahen rregullisht nga njÃ« mekanik. NjÃ« aspekt i keqkuptuar i mirÃ«mbajtjes parandaluese Ã«shtÃ« zÃ«vendÃ«simi i planifikuar i pjesÃ«ve tÃ« ndryshme, i cili ndodh para dÃ«shtimit pÃ«r tÃ« shmangur dÃ«mtimet shumÃ« mÃ« tÃ« shtrenjta. MeqenÃ«se kjo do tÃ« thotÃ« qÃ« pjesÃ«t tÃ« zÃ«vendÃ«sohen para se tÃ« vÃ«rehet ndonjÃ« problem, shumÃ« pronarÃ« tÃ« automjeteve nuk do ta kuptojnÃ« pse shpenzimi Ã«shtÃ« i nevojshÃ«m. [1]\r\n\r\nMe pÃ«rparimin e shpejtÃ« nÃ« teknologji, puna e mekanikut ka evoluar nga thjesht mekanike, pÃ«r tÃ« pÃ«rfshirÃ« teknologjinÃ« elektronike. PÃ«r shkak se automjetet sot posedojnÃ« sisteme komplekse kompjuterike dhe elektronike, mekanikÃ«t duhet tÃ« kenÃ« njÃ« bazÃ« mÃ« tÃ« gjerÃ« njohurish sesa nÃ« tÃ« kaluarÃ«n.\r\n\r\nPÃ«r shkak tÃ« natyrÃ«s gjithnjÃ« e mÃ« labirintike tÃ« teknologjisÃ« qÃ« tani Ã«shtÃ« pÃ«rfshirÃ« nÃ« automobila, shumica e shitÃ«sve tÃ« automobilave dhe punÃ«toritÃ« e pavarura tani ofrojnÃ« kompjuterÃ« tÃ« sofistikuar diagnostikues pÃ«r Ã§do teknik, pa tÃ« cilÃ«t ata nuk do tÃ« ishin nÃ« gjendje tÃ« diagnostikonin ose riparonin njÃ« automjet.', '2021-08-09 01:04:24'),
(97, 1, 'Topologjia e rrjetit', 'NjÃ« rrjet kompjuterik Ã«shtÃ« njÃ« grup kompjuterash autonomÃ« tÃ« ndÃ«rlidhur me ndihmÃ«n e njÃ« teknologjie tÃ« caktuar. Dy kompjutera quhen tÃ« ndÃ«rlidhur nÃ«se janÃ« tÃ« aftÃ« tÃ« shkÃ«mbejnÃ« informacion midis tyre. Lidhja mund tÃ« realizohet me anÃ«n e kabllove elektrikÃ«, fibrave optike, mikrovalÃ«ve, rrezeve infra tÃ« kuqe apo me anÃ«n e satelitÃ«ve. Rrjetet kanÃ« forma dhe madhÃ«si tÃ« ndryshme.', '2021-08-09 01:05:34'),
(99, 1, 'Random-access memory', ' Random-access memory (RAM; /rÃ¦m/) is a form of computer memory that can be read and changed in any order, typically used to store working data and machine code.[1][2] A random-access memory device allows data items to be read or written in almost the same amount of time irrespective of the physical location of data inside the memory, in contrast with other direct-access data storage media (such as hard disks, CD-RWs, DVD-RWs and the older magnetic tapes and drum memory), where the time required to read and write data items varies significantly depending on their physical locations on the recording medium, due to mechanical limitations such as media rotation speeds and arm movement.\r\n\r\nRAM contains multiplexing and demultiplexing circuitry, to connect the data lines to the addressed storage for reading or writing the entry. Usually more than one bit of storage is accessed by the same address, and RAM devices often have multiple data lines and are said to be \"8-bit\" or \"16-bit\", etc. devices.[clarification needed]\r\n\r\nIn today\'s technology, random-access memory takes the form of integrated circuit (IC) chips with MOS (metal-oxide-semiconductor) memory cells. RAM is normally associated with volatile types of memory (such as dynamic random-access memory (DRAM) modules), where stored information is lost if power is removed, although non-volatile RAM has also been developed.[3] Other types of non-volatile memories exist that allow random access for read operations, but either do not allow write operations or have other kinds of limitations on them. These include most types of ROM and a type of flash memory called NOR-Flash.\r\n\r\nThe two main types of volatile random-access semiconductor memory are static random-access memory (SRAM) and dynamic random-access memory (DRAM). Commercial uses of semiconductor RAM date back to 1965, when IBM introduced the SP95 SRAM chip for their System/360 Model 95 computer, and Toshiba used DRAM memory cells for its Toscal BC-1411 electronic calculator, both based on bipolar transistors. Commercial MOS memory, based on MOS transistors, was developed in the late 1960s, and has since been the basis for all commercial semiconductor memory. The first commercial DRAM IC chip, the Intel 1103, was introduced in October 1970. Synchronous dynamic random-access memory (SDRAM) later debuted with the Samsung KM48SL2000 chip in 1992.', '2021-08-09 01:07:06'),
(111, 1, 'Automekanik', 'NjÃ« mekanik auto ( teknik automobilave nÃ« shumicÃ«n e AmerikÃ«n e Veriut , teknik tÃ« lehta automjeteve nÃ« British anglisht , dhe mekanik motor nÃ« Australian anglisht ) Ã«shtÃ« njÃ« mekanik me njÃ« shumÃ«llojshmÃ«ri tÃ« automobilave bÃ«n ose ose nÃ« njÃ« zonÃ« tÃ« caktuar ose nÃ« njÃ« tÃ« veÃ§antÃ« tÃ« automobilave. NÃ« riparimin e makinave, roli i tyre kryesor Ã«shtÃ« diagnostikimiproblemi nÃ« mÃ«nyrÃ« tÃ« saktÃ« dhe tÃ« shpejtÃ«. Ata shpesh duhet tÃ« japin kuotat e Ã§mimeve pÃ«r klientÃ«t e tyre para fillimit tÃ« punÃ«s ose pas Ã§montimit tÃ« pjesshÃ«m pÃ«r inspektim. Puna e tyre mund tÃ« pÃ«rfshijÃ« riparimin e njÃ« pjese tÃ« veÃ§antÃ« ose zÃ«vendÃ«simin e njÃ« ose mÃ« shumÃ« pjesÃ«ve si kuvende.\r\n\r\nMirÃ«mbajtja themelore e automjeteve Ã«shtÃ« njÃ« pjesÃ« themelore e punÃ«s sÃ« njÃ« mekaniku nÃ« vendet moderne tÃ« industrializuara, ndÃ«rsa nÃ« tÃ« tjerat ata konsultohen vetÃ«m kur njÃ« automjet tashmÃ« po tregon shenja tÃ« mosfunksionimit. MirÃ«mbajtja parandaluese Ã«shtÃ« gjithashtu njÃ« pjesÃ« themelore e punÃ«s sÃ« njÃ« mekaniku, por kjo nuk Ã«shtÃ« e mundur nÃ« rastin e automjeteve qÃ« nuk mirÃ«mbahen rregullisht nga njÃ« mekanik. NjÃ« aspekt i keqkuptuar i mirÃ«mbajtjes parandaluese Ã«shtÃ« zÃ«vendÃ«simi i planifikuar i pjesÃ«ve tÃ« ndryshme, i cili ndodh para dÃ«shtimit pÃ«r tÃ« shmangur dÃ«mtimet shumÃ« mÃ« tÃ« shtrenjta. MeqenÃ«se kjo do tÃ« thotÃ« qÃ« pjesÃ«t tÃ« zÃ«vendÃ«sohen para se tÃ« vÃ«rehet ndonjÃ« problem, shumÃ« pronarÃ« tÃ« automjeteve nuk do ta kuptojnÃ« pse shpenzimi Ã«shtÃ« i nevojshÃ«m. [1]\r\n\r\nMe pÃ«rparimin e shpejtÃ« nÃ« teknologji, puna e mekanikut ka evoluar nga thjesht mekanike, pÃ«r tÃ« pÃ«rfshirÃ« teknologjinÃ« elektronike. PÃ«r shkak se automjetet sot posedojnÃ« sisteme komplekse kompjuterike dhe elektronike, mekanikÃ«t duhet tÃ« kenÃ« njÃ« bazÃ« mÃ« tÃ« gjerÃ« njohurish sesa nÃ« tÃ« kaluarÃ«n.\r\n\r\nPÃ«r shkak tÃ« natyrÃ«s gjithnjÃ« e mÃ« labirintike tÃ« teknologjisÃ« qÃ« tani Ã«shtÃ« pÃ«rfshirÃ« nÃ« automobila, shumica e shitÃ«sve tÃ« automobilave dhe punÃ«toritÃ« e pavarura tani ofrojnÃ« kompjuterÃ« tÃ« sofistikuar diagnostikues pÃ«r Ã§do teknik, pa tÃ« cilÃ«t ata nuk do tÃ« ishin nÃ« gjendje tÃ« diagnostikonin ose riparonin njÃ« automjet.', '2021-08-09 01:04:24'),
(112, 1, 'Topologjia e rrjetit', 'NjÃ« rrjet kompjuterik Ã«shtÃ« njÃ« grup kompjuterash autonomÃ« tÃ« ndÃ«rlidhur me ndihmÃ«n e njÃ« teknologjie tÃ« caktuar. Dy kompjutera quhen tÃ« ndÃ«rlidhur nÃ«se janÃ« tÃ« aftÃ« tÃ« shkÃ«mbejnÃ« informacion midis tyre. Lidhja mund tÃ« realizohet me anÃ«n e kabllove elektrikÃ«, fibrave optike, mikrovalÃ«ve, rrezeve infra tÃ« kuqe apo me anÃ«n e satelitÃ«ve. Rrjetet kanÃ« forma dhe madhÃ«si tÃ« ndryshme.', '2021-08-09 01:05:34'),
(113, 1, 'Random-access memory', ' Random-access memory (RAM; /rÃ¦m/) is a form of computer memory that can be read and changed in any order, typically used to store working data and machine code.[1][2] A random-access memory device allows data items to be read or written in almost the same amount of time irrespective of the physical location of data inside the memory, in contrast with other direct-access data storage media (such as hard disks, CD-RWs, DVD-RWs and the older magnetic tapes and drum memory), where the time required to read and write data items varies significantly depending on their physical locations on the recording medium, due to mechanical limitations such as media rotation speeds and arm movement.\r\n\r\nRAM contains multiplexing and demultiplexing circuitry, to connect the data lines to the addressed storage for reading or writing the entry. Usually more than one bit of storage is accessed by the same address, and RAM devices often have multiple data lines and are said to be \"8-bit\" or \"16-bit\", etc. devices.[clarification needed]\r\n\r\nIn today\'s technology, random-access memory takes the form of integrated circuit (IC) chips with MOS (metal-oxide-semiconductor) memory cells. RAM is normally associated with volatile types of memory (such as dynamic random-access memory (DRAM) modules), where stored information is lost if power is removed, although non-volatile RAM has also been developed.[3] Other types of non-volatile memories exist that allow random access for read operations, but either do not allow write operations or have other kinds of limitations on them. These include most types of ROM and a type of flash memory called NOR-Flash.\r\n\r\nThe two main types of volatile random-access semiconductor memory are static random-access memory (SRAM) and dynamic random-access memory (DRAM). Commercial uses of semiconductor RAM date back to 1965, when IBM introduced the SP95 SRAM chip for their System/360 Model 95 computer, and Toshiba used DRAM memory cells for its Toscal BC-1411 electronic calculator, both based on bipolar transistors. Commercial MOS memory, based on MOS transistors, was developed in the late 1960s, and has since been the basis for all commercial semiconductor memory. The first commercial DRAM IC chip, the Intel 1103, was introduced in October 1970. Synchronous dynamic random-access memory (SDRAM) later debuted with the Samsung KM48SL2000 chip in 1992.', '2021-08-09 01:07:06'),
(114, 1, 'Automekanik', 'NjÃ« mekanik auto ( teknik automobilave nÃ« shumicÃ«n e AmerikÃ«n e Veriut , teknik tÃ« lehta automjeteve nÃ« British anglisht , dhe mekanik motor nÃ« Australian anglisht ) Ã«shtÃ« njÃ« mekanik me njÃ« shumÃ«llojshmÃ«ri tÃ« automobilave bÃ«n ose ose nÃ« njÃ« zonÃ« tÃ« caktuar ose nÃ« njÃ« tÃ« veÃ§antÃ« tÃ« automobilave. NÃ« riparimin e makinave, roli i tyre kryesor Ã«shtÃ« diagnostikimiproblemi nÃ« mÃ«nyrÃ« tÃ« saktÃ« dhe tÃ« shpejtÃ«. Ata shpesh duhet tÃ« japin kuotat e Ã§mimeve pÃ«r klientÃ«t e tyre para fillimit tÃ« punÃ«s ose pas Ã§montimit tÃ« pjesshÃ«m pÃ«r inspektim. Puna e tyre mund tÃ« pÃ«rfshijÃ« riparimin e njÃ« pjese tÃ« veÃ§antÃ« ose zÃ«vendÃ«simin e njÃ« ose mÃ« shumÃ« pjesÃ«ve si kuvende.\r\n\r\nMirÃ«mbajtja themelore e automjeteve Ã«shtÃ« njÃ« pjesÃ« themelore e punÃ«s sÃ« njÃ« mekaniku nÃ« vendet moderne tÃ« industrializuara, ndÃ«rsa nÃ« tÃ« tjerat ata konsultohen vetÃ«m kur njÃ« automjet tashmÃ« po tregon shenja tÃ« mosfunksionimit. MirÃ«mbajtja parandaluese Ã«shtÃ« gjithashtu njÃ« pjesÃ« themelore e punÃ«s sÃ« njÃ« mekaniku, por kjo nuk Ã«shtÃ« e mundur nÃ« rastin e automjeteve qÃ« nuk mirÃ«mbahen rregullisht nga njÃ« mekanik. NjÃ« aspekt i keqkuptuar i mirÃ«mbajtjes parandaluese Ã«shtÃ« zÃ«vendÃ«simi i planifikuar i pjesÃ«ve tÃ« ndryshme, i cili ndodh para dÃ«shtimit pÃ«r tÃ« shmangur dÃ«mtimet shumÃ« mÃ« tÃ« shtrenjta. MeqenÃ«se kjo do tÃ« thotÃ« qÃ« pjesÃ«t tÃ« zÃ«vendÃ«sohen para se tÃ« vÃ«rehet ndonjÃ« problem, shumÃ« pronarÃ« tÃ« automjeteve nuk do ta kuptojnÃ« pse shpenzimi Ã«shtÃ« i nevojshÃ«m. [1]\r\n\r\nMe pÃ«rparimin e shpejtÃ« nÃ« teknologji, puna e mekanikut ka evoluar nga thjesht mekanike, pÃ«r tÃ« pÃ«rfshirÃ« teknologjinÃ« elektronike. PÃ«r shkak se automjetet sot posedojnÃ« sisteme komplekse kompjuterike dhe elektronike, mekanikÃ«t duhet tÃ« kenÃ« njÃ« bazÃ« mÃ« tÃ« gjerÃ« njohurish sesa nÃ« tÃ« kaluarÃ«n.\r\n\r\nPÃ«r shkak tÃ« natyrÃ«s gjithnjÃ« e mÃ« labirintike tÃ« teknologjisÃ« qÃ« tani Ã«shtÃ« pÃ«rfshirÃ« nÃ« automobila, shumica e shitÃ«sve tÃ« automobilave dhe punÃ«toritÃ« e pavarura tani ofrojnÃ« kompjuterÃ« tÃ« sofistikuar diagnostikues pÃ«r Ã§do teknik, pa tÃ« cilÃ«t ata nuk do tÃ« ishin nÃ« gjendje tÃ« diagnostikonin ose riparonin njÃ« automjet.', '2021-08-09 01:04:24'),
(115, 1, 'Topologjia e rrjetit', 'NjÃ« rrjet kompjuterik Ã«shtÃ« njÃ« grup kompjuterash autonomÃ« tÃ« ndÃ«rlidhur me ndihmÃ«n e njÃ« teknologjie tÃ« caktuar. Dy kompjutera quhen tÃ« ndÃ«rlidhur nÃ«se janÃ« tÃ« aftÃ« tÃ« shkÃ«mbejnÃ« informacion midis tyre. Lidhja mund tÃ« realizohet me anÃ«n e kabllove elektrikÃ«, fibrave optike, mikrovalÃ«ve, rrezeve infra tÃ« kuqe apo me anÃ«n e satelitÃ«ve. Rrjetet kanÃ« forma dhe madhÃ«si tÃ« ndryshme.', '2021-08-09 01:05:34'),
(116, 1, 'Random-access memory', ' Random-access memory (RAM; /rÃ¦m/) is a form of computer memory that can be read and changed in any order, typically used to store working data and machine code.[1][2] A random-access memory device allows data items to be read or written in almost the same amount of time irrespective of the physical location of data inside the memory, in contrast with other direct-access data storage media (such as hard disks, CD-RWs, DVD-RWs and the older magnetic tapes and drum memory), where the time required to read and write data items varies significantly depending on their physical locations on the recording medium, due to mechanical limitations such as media rotation speeds and arm movement.\r\n\r\nRAM contains multiplexing and demultiplexing circuitry, to connect the data lines to the addressed storage for reading or writing the entry. Usually more than one bit of storage is accessed by the same address, and RAM devices often have multiple data lines and are said to be \"8-bit\" or \"16-bit\", etc. devices.[clarification needed]\r\n\r\nIn today\'s technology, random-access memory takes the form of integrated circuit (IC) chips with MOS (metal-oxide-semiconductor) memory cells. RAM is normally associated with volatile types of memory (such as dynamic random-access memory (DRAM) modules), where stored information is lost if power is removed, although non-volatile RAM has also been developed.[3] Other types of non-volatile memories exist that allow random access for read operations, but either do not allow write operations or have other kinds of limitations on them. These include most types of ROM and a type of flash memory called NOR-Flash.\r\n\r\nThe two main types of volatile random-access semiconductor memory are static random-access memory (SRAM) and dynamic random-access memory (DRAM). Commercial uses of semiconductor RAM date back to 1965, when IBM introduced the SP95 SRAM chip for their System/360 Model 95 computer, and Toshiba used DRAM memory cells for its Toscal BC-1411 electronic calculator, both based on bipolar transistors. Commercial MOS memory, based on MOS transistors, was developed in the late 1960s, and has since been the basis for all commercial semiconductor memory. The first commercial DRAM IC chip, the Intel 1103, was introduced in October 1970. Synchronous dynamic random-access memory (SDRAM) later debuted with the Samsung KM48SL2000 chip in 1992.', '2021-08-09 01:07:06'),
(117, 1, 'Automekanik', 'NjÃ« mekanik auto ( teknik automobilave nÃ« shumicÃ«n e AmerikÃ«n e Veriut , teknik tÃ« lehta automjeteve nÃ« British anglisht , dhe mekanik motor nÃ« Australian anglisht ) Ã«shtÃ« njÃ« mekanik me njÃ« shumÃ«llojshmÃ«ri tÃ« automobilave bÃ«n ose ose nÃ« njÃ« zonÃ« tÃ« caktuar ose nÃ« njÃ« tÃ« veÃ§antÃ« tÃ« automobilave. NÃ« riparimin e makinave, roli i tyre kryesor Ã«shtÃ« diagnostikimiproblemi nÃ« mÃ«nyrÃ« tÃ« saktÃ« dhe tÃ« shpejtÃ«. Ata shpesh duhet tÃ« japin kuotat e Ã§mimeve pÃ«r klientÃ«t e tyre para fillimit tÃ« punÃ«s ose pas Ã§montimit tÃ« pjesshÃ«m pÃ«r inspektim. Puna e tyre mund tÃ« pÃ«rfshijÃ« riparimin e njÃ« pjese tÃ« veÃ§antÃ« ose zÃ«vendÃ«simin e njÃ« ose mÃ« shumÃ« pjesÃ«ve si kuvende.\r\n\r\nMirÃ«mbajtja themelore e automjeteve Ã«shtÃ« njÃ« pjesÃ« themelore e punÃ«s sÃ« njÃ« mekaniku nÃ« vendet moderne tÃ« industrializuara, ndÃ«rsa nÃ« tÃ« tjerat ata konsultohen vetÃ«m kur njÃ« automjet tashmÃ« po tregon shenja tÃ« mosfunksionimit. MirÃ«mbajtja parandaluese Ã«shtÃ« gjithashtu njÃ« pjesÃ« themelore e punÃ«s sÃ« njÃ« mekaniku, por kjo nuk Ã«shtÃ« e mundur nÃ« rastin e automjeteve qÃ« nuk mirÃ«mbahen rregullisht nga njÃ« mekanik. NjÃ« aspekt i keqkuptuar i mirÃ«mbajtjes parandaluese Ã«shtÃ« zÃ«vendÃ«simi i planifikuar i pjesÃ«ve tÃ« ndryshme, i cili ndodh para dÃ«shtimit pÃ«r tÃ« shmangur dÃ«mtimet shumÃ« mÃ« tÃ« shtrenjta. MeqenÃ«se kjo do tÃ« thotÃ« qÃ« pjesÃ«t tÃ« zÃ«vendÃ«sohen para se tÃ« vÃ«rehet ndonjÃ« problem, shumÃ« pronarÃ« tÃ« automjeteve nuk do ta kuptojnÃ« pse shpenzimi Ã«shtÃ« i nevojshÃ«m. [1]\r\n\r\nMe pÃ«rparimin e shpejtÃ« nÃ« teknologji, puna e mekanikut ka evoluar nga thjesht mekanike, pÃ«r tÃ« pÃ«rfshirÃ« teknologjinÃ« elektronike. PÃ«r shkak se automjetet sot posedojnÃ« sisteme komplekse kompjuterike dhe elektronike, mekanikÃ«t duhet tÃ« kenÃ« njÃ« bazÃ« mÃ« tÃ« gjerÃ« njohurish sesa nÃ« tÃ« kaluarÃ«n.\r\n\r\nPÃ«r shkak tÃ« natyrÃ«s gjithnjÃ« e mÃ« labirintike tÃ« teknologjisÃ« qÃ« tani Ã«shtÃ« pÃ«rfshirÃ« nÃ« automobila, shumica e shitÃ«sve tÃ« automobilave dhe punÃ«toritÃ« e pavarura tani ofrojnÃ« kompjuterÃ« tÃ« sofistikuar diagnostikues pÃ«r Ã§do teknik, pa tÃ« cilÃ«t ata nuk do tÃ« ishin nÃ« gjendje tÃ« diagnostikonin ose riparonin njÃ« automjet.', '2021-08-09 01:04:24'),
(118, 1, 'Topologjia e rrjetit', 'NjÃ« rrjet kompjuterik Ã«shtÃ« njÃ« grup kompjuterash autonomÃ« tÃ« ndÃ«rlidhur me ndihmÃ«n e njÃ« teknologjie tÃ« caktuar. Dy kompjutera quhen tÃ« ndÃ«rlidhur nÃ«se janÃ« tÃ« aftÃ« tÃ« shkÃ«mbejnÃ« informacion midis tyre. Lidhja mund tÃ« realizohet me anÃ«n e kabllove elektrikÃ«, fibrave optike, mikrovalÃ«ve, rrezeve infra tÃ« kuqe apo me anÃ«n e satelitÃ«ve. Rrjetet kanÃ« forma dhe madhÃ«si tÃ« ndryshme.', '2021-08-09 01:05:34'),
(119, 1, 'Random-access memory', ' Random-access memory (RAM; /rÃ¦m/) is a form of computer memory that can be read and changed in any order, typically used to store working data and machine code.[1][2] A random-access memory device allows data items to be read or written in almost the same amount of time irrespective of the physical location of data inside the memory, in contrast with other direct-access data storage media (such as hard disks, CD-RWs, DVD-RWs and the older magnetic tapes and drum memory), where the time required to read and write data items varies significantly depending on their physical locations on the recording medium, due to mechanical limitations such as media rotation speeds and arm movement.\r\n\r\nRAM contains multiplexing and demultiplexing circuitry, to connect the data lines to the addressed storage for reading or writing the entry. Usually more than one bit of storage is accessed by the same address, and RAM devices often have multiple data lines and are said to be \"8-bit\" or \"16-bit\", etc. devices.[clarification needed]\r\n\r\nIn today\'s technology, random-access memory takes the form of integrated circuit (IC) chips with MOS (metal-oxide-semiconductor) memory cells. RAM is normally associated with volatile types of memory (such as dynamic random-access memory (DRAM) modules), where stored information is lost if power is removed, although non-volatile RAM has also been developed.[3] Other types of non-volatile memories exist that allow random access for read operations, but either do not allow write operations or have other kinds of limitations on them. These include most types of ROM and a type of flash memory called NOR-Flash.\r\n\r\nThe two main types of volatile random-access semiconductor memory are static random-access memory (SRAM) and dynamic random-access memory (DRAM). Commercial uses of semiconductor RAM date back to 1965, when IBM introduced the SP95 SRAM chip for their System/360 Model 95 computer, and Toshiba used DRAM memory cells for its Toscal BC-1411 electronic calculator, both based on bipolar transistors. Commercial MOS memory, based on MOS transistors, was developed in the late 1960s, and has since been the basis for all commercial semiconductor memory. The first commercial DRAM IC chip, the Intel 1103, was introduced in October 1970. Synchronous dynamic random-access memory (SDRAM) later debuted with the Samsung KM48SL2000 chip in 1992.', '2021-08-09 01:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `UserEmri` varchar(255) NOT NULL,
  `UserMbiemri` varchar(255) NOT NULL,
  `UserUsername` varchar(255) NOT NULL,
  `UserPassword` varchar(255) NOT NULL,
  `UserEmail` varchar(255) NOT NULL,
  `UserDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `UserEmri`, `UserMbiemri`, `UserUsername`, `UserPassword`, `UserEmail`, `UserDate`) VALUES
(1, 'Alpet', 'Gexha', 'AlpetG', '$2y$10$kymJnHuonTJVKJDi5iLqDO12/q7TxatuMUYuRqkzMmPg6yvaGmHqC', 'agexha@gmail.com', '2021-06-05 01:53:35'),
(17, 'Test', 'test', 'AlpetG2', '$2y$10$kymJnHuonTJVKJDi5iLqDO12/q7TxatuMUYuRqkzMmPg6yvaGmHqC', 'agexha10@gmail.com', '2021-06-05 01:13:22'),
(74, 'admin', 'admin', 'damin', '$2y$10$91/2mHTdkWWgFda6oWdXkO2L0igeRuE63G3DP5xYOY7c24.YyPRCG', 'admin@admin.com', '2021-07-29 02:13:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`CommnetId`),
  ADD KEY `userID` (`ComnetUserID`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`PostId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `CommnetId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `PostId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`PostUserId`) REFERENCES `users` (`UserId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
