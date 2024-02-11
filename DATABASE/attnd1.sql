-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 09:19 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attnd1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`) VALUES
(1, 'Admin', 'Liam', 'admin@mail.com', 'dc06698f0e2e75751545455899adccc3');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `Id` int(10) NOT NULL,
  `admissionNo` varchar(255) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `sessionTermId` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `dateTimeTaken` varchar(20) NOT NULL,
  `timeTaken` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `tblattendance` (`Id`, `admissionNo`, `classId`, `classArmId`, `sessionTermId`, `status`, `dateTimeTaken`, `timeTaken`) VALUES
(1, '466077150080', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(2, '466088150249', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(3, '126204100068', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(4, '129738110020', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(5, '128505120528', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(6, '129743120110', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(7, '405454150301', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(8, '131014120006', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(9, '129743120027', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(10, '129743120015', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(11, '465515150239', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(12, '127078120021', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(13, '131735120040', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(14, '129710110044', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(15, '129738120234', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(16, '127065110026', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(17, '130085110033', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(18, '129557130923', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(19, '127339130004', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(20, '466009150437', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(21, '126449080024', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(22, '129711120275', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(23, '129743120033', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(24, '129479110322', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(25, '129738110140', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(26, '466088150237', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(27, '129648110367', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(28, '129738160002', '2', '1', '1', '0', '2023-12-29', '03:57 PM'),
(29, '000000000000', '2', '1', '1', '1', '2023-12-29', '03:57 PM'),
(30, '466077150080', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(31, '466088150249', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(32, '126204100068', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(33, '129738110020', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(34, '128505120528', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(35, '129743120110', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(36, '405454150301', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(37, '131014120006', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(38, '129743120027', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(39, '129743120015', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(40, '465515150239', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(41, '127078120021', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(42, '131735120040', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(43, '129710110044', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(44, '129738120234', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(45, '127065110026', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(46, '130085110033', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(47, '129557130923', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(48, '127339130004', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(49, '466009150437', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(50, '126449080024', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(51, '129711120275', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(52, '129743120033', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(53, '129479110322', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(54, '129738110140', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(55, '466088150237', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(56, '129648110367', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(57, '129738160002', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(58, '000000000000', '2', '1', '1', '0', '2023-12-29', '04:12 PM'),
(59, '466077150080', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(60, '466088150249', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(61, '126204100068', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(62, '129738110020', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(63, '128505120528', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(64, '129743120110', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(65, '405454150301', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(66, '131014120006', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(67, '129743120027', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(68, '129743120015', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(69, '465515150239', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(70, '127078120021', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(71, '131735120040', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(72, '129710110044', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(73, '129738120234', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(74, '127065110026', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(75, '130085110033', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(76, '129557130923', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(77, '127339130004', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(78, '466009150437', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(79, '126449080024', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(80, '129711120275', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(81, '129743120033', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(82, '129479110322', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(83, '129738110140', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(84, '466088150237', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(85, '129648110367', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(86, '129738160002', '2', '1', '1', '0', '2023-12-29', '04:13 PM'),
(87, '000000000000', '2', '1', '1', '0', '2023-12-29', '04:13 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `Id` int(10) NOT NULL,
  `className` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`Id`, `className`) VALUES
(1, '11'),
(2, '12');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassarms`
--

CREATE TABLE `tblclassarms` (
  `Id` int(10) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmName` varchar(255) NOT NULL,
  `isAssigned` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclassarms`
--

INSERT INTO `tblclassarms` (`Id`, `classId`, `classArmName`, `isAssigned`) VALUES
(1, '2', 'APITONG', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassteacher`
--

CREATE TABLE `tblclassteacher` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNo` varchar(50) NOT NULL,
  `subId` varchar(10) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclassteacher`
--

INSERT INTO `tblclassteacher` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`, `phoneNo`, `subId`, `classId`, `classArmId`, `dateCreated`) VALUES
(1, 'Jane', 'Dela Cruz', 'test@mail.com', '32250170a0dca92d53ec9624f336ca24', '091234567890', '1', '2', '1', '2023-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `tblparent`
--

CREATE TABLE `tblparent` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `stdlrn` int(11) NOT NULL,
  `stdfname` varchar(50) NOT NULL,
  `stdsname` varchar(50) NOT NULL,
  `emailadd` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `conpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblparent`
--

INSERT INTO `tblparent` (`id`, `fname`, `sname`, `stdlrn`, `stdfname`, `stdsname`, `emailadd`, `password`, `conpassword`) VALUES
(1, 'TEST ', 'PARENT', 0, 'SAMPLE', 'STUDENT', 'test1@mail.com', '5a105e8b9d40e1329780d62ea2265d8a', '5a105e8b9d40e1329780d62ea2265d8a');

-- --------------------------------------------------------

--
-- Table structure for table `tblsessionterm`
--

CREATE TABLE `tblsessionterm` (
  `Id` int(10) NOT NULL,
  `sessionName` varchar(50) NOT NULL,
  `termId` varchar(50) NOT NULL,
  `isActive` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsessionterm`
--

INSERT INTO `tblsessionterm` (`Id`, `sessionName`, `termId`, `isActive`, `dateCreated`) VALUES
(1, 'STEM', '1', '1', '2023-11-13'),
(2, 'HUMSS', '1', '0', '2023-11-13');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `admissionNumber` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`Id`, `firstName`, `lastName`, `otherName`, `sex`, `admissionNumber`, `password`, `classId`, `classArmId`, `dateCreated`) VALUES
(1, 'ZANDREI VHAN 						', 'ABONALES,', 'MABALE', 'M', '466077150080', '12345', '2', '1', '2023-12-29'),
(2, 'LUKE EMMANUEL 							', 'ADLAON', 'SALINAS', 'M', '466088150249', '12345', '2', '1', '2023-12-29'),
(3, 'JOHN REY JUNNIEL ', 'ARQUIZA', 'GONZALES', 'M', '126204100068', '12345', '2', '1', '2023-12-29'),
(4, 'NIKKO ', 'ARRO', 'AGLAS', 'M', '129738110020', '12345', '2', '1', '2023-12-29'),
(5, 'JACIEN FRYLL ', 'BACANAYA', 'DIAZ', 'M', '128505120528', '12345', '2', '1', '2023-12-29'),
(6, 'FRENCE JOEL 						', 'BARUA', 'TRASONA', 'M', '129743120110', '12345', '2', '1', '2023-12-29'),
(7, 'MIKAEL ANGELO ', 'BLAYA', 'LAGURA', 'M', '405454150301', '12345', '2', '1', '2023-12-29'),
(8, 'DOMINIQUE ANTONI ', 'CAMBEL', 'GIMENEZ', 'M', '131014120006', '12345', '2', '1', '2023-12-29'),
(9, 'FRANCIS NIÑO ', 'COSEP', 'MANAMBID', 'M', '129743120027', '12345', '2', '1', '2023-12-29'),
(10, 'SEAN RAFAEL ', 'DISTRAJO', 'MONDERO', 'M', '129743120015', '12345', '2', '1', '2023-12-29'),
(11, 'REY JHON PAUL						', 'DONGUINES', 'O.', 'M', '465515150239', '12345', '2', '1', '2023-12-29'),
(12, 'EARL ZYNIEL ', 'ESPINA', 'ANONAS	', 'M', '127078120021', '12345', '2', '1', '2023-12-29'),
(13, 'MARK DAVE ', 'GOLORAN', 'TABABA', 'M', '131735120040', '12345', '2', '1', '2023-12-29'),
(14, 'MARK DANIEL 							', 'GOMEZ', 'REGALADO', 'M', '129710110044', '12345', '2', '1', '2023-12-29'),
(15, 'AMABLE MIKKAEL ', 'JARDINICO', 'RECLA', 'M', '129738120234', '12345', '2', '1', '2023-12-29'),
(16, 'CHUCKARRY							', 'LAZAGA', '', 'M', '127065110026', '12345', '2', '1', '2023-12-29'),
(17, 'REYVIN JOHN', 'LEDESMA', 'DINGCONG', 'M', '130085110033', '12345', '2', '1', '2023-12-29'),
(18, 'LEO JOHN JR						', 'LOBATON', 'MORALES', 'M', '129557130923', '12345', '2', '1', '2023-12-29'),
(19, 'EZECHAIA JONES 							', 'MAGTORTOR', 'TANTALO', 'M', '127339130004', '12345', '2', '1', '2023-12-29'),
(20, 'JOHN PAUL HENRY 							', 'MARCELO', 'LIGANAD', 'M', '466009150437', '12345', '2', '1', '2023-12-29'),
(21, 'ULYSSES 						', 'MATAQUEL', 'TAN', 'M', '126449080024', '12345', '2', '1', '2023-12-29'),
(22, 'ARJON					', 'NONATO', '', 'M', '129711120275', '12345', '2', '1', '2023-12-29'),
(23, 'ANGELO JAY 						', 'PAREJA', 'ALISEN', 'M', '129743120033', '12345', '2', '1', '2023-12-29'),
(24, 'MARK JADE 						', 'RONQUILLO', 'MANDIGAL	', 'M', '129479110322', '12345', '2', '1', '2023-12-29'),
(25, 'AMOR LORENZ						', 'SALES', 'CABILLO', 'M', '129738110140', '12345', '2', '1', '2023-12-29'),
(26, 'NUDGE LIAM 						', 'SILVERON', 'QUIJADA	', 'M', '466088150237', '12345', '2', '1', '2023-12-29'),
(27, 'BRAYL 						', 'TARICAG', 'ALVAR', 'M', '129648110367', '12345', '2', '1', '2023-12-29'),
(28, 'SEBASTIAN ILYICH 						', 'TRIA', 'SIHAGAN', 'M', '129738160002', '12345', '2', '1', '2023-12-29'),
(29, 'SAMPLE', 'STUDENT', '', 'M', '000000000000', '12345', '2', '1', '2023-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubject`
--

CREATE TABLE `tblsubject` (
  `Id` int(11) NOT NULL,
  `subcode` varchar(100) NOT NULL,
  `subname` varchar(225) NOT NULL,
  `timestr` varchar(20) NOT NULL,
  `timend` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsubject`
--

INSERT INTO `tblsubject` (`Id`, `subcode`, `subname`, `timestr`, `timend`) VALUES
(1, 'EXSUBJECT1', 'Sample Subject 1', '07:30 AM', '08:30 AM');

-- --------------------------------------------------------

--
-- Table structure for table `tblterm`
--

CREATE TABLE `tblterm` (
  `Id` int(10) NOT NULL,
  `termName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblterm`
--

INSERT INTO `tblterm` (`Id`, `termName`) VALUES
(1, 'FirstSem'),
(2, 'SecondSem');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclassarms`
--
ALTER TABLE `tblclassarms`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclassteacher`
--
ALTER TABLE `tblclassteacher`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblparent`
--
ALTER TABLE `tblparent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsessionterm`
--
ALTER TABLE `tblsessionterm`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblsubject`
--
ALTER TABLE `tblsubject`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblterm`
--
ALTER TABLE `tblterm`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblattendance`
--
ALTER TABLE `tblattendance`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblclassarms`
--
ALTER TABLE `tblclassarms`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclassteacher`
--
ALTER TABLE `tblclassteacher`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblparent`
--
ALTER TABLE `tblparent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblsessionterm`
--
ALTER TABLE `tblsessionterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblsubject`
--
ALTER TABLE `tblsubject`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblterm`
--
ALTER TABLE `tblterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
