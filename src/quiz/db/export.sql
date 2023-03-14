-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mariadb-project-p3:3306
-- Generation Time: Mar 14, 2023 at 08:07 AM
-- Server version: 10.7.6-MariaDB-1:10.7.6+maria~ubu2004
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `aantworden`
--

CREATE TABLE `aantworden` (
  `aid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `aantword` varchar(150) NOT NULL,
  `is_correct` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answer`
--

CREATE TABLE `quiz_answer` (
  `qa_id` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `option_number` int(11) NOT NULL,
  `weight` decimal(10,5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_answer`
--

INSERT INTO `quiz_answer` (`qa_id`, `qid`, `option_number`, `weight`) VALUES
(1, 1, 1, '2.00000'),
(2, 2, 1, '3.00000'),
(3, 3, 1, '1.00000'),
(4, 4, 1, '1.00000'),
(5, 5, 1, '3.00000'),
(6, 6, 1, '2.00000'),
(7, 7, 1, '2.00000'),
(8, 8, 1, '3.00000'),
(9, 9, 1, '2.00000'),
(10, 10, 1, '1.00000');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_options`
--

CREATE TABLE `quiz_options` (
  `option_id` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `option` varchar(150) NOT NULL,
  `is_enabled` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_options`
--

INSERT INTO `quiz_options` (`option_id`, `qid`, `option`, `is_enabled`) VALUES
(1, 1, 'Ja', 1),
(2, 1, 'Nee', 1),
(3, 2, 'Ja', 1),
(4, 2, 'Nee', 1),
(5, 3, 'Ja', 1),
(6, 3, 'Nee', 1),
(7, 4, 'Ja', 1),
(8, 4, 'Nee', 1),
(9, 5, 'Ja', 1),
(10, 5, 'Nee', 1),
(11, 6, 'Ja', 1),
(12, 6, 'Nee', 1),
(13, 7, 'Ja', 1),
(14, 7, 'Nee', 1),
(15, 8, 'Ja', 1),
(16, 8, 'Nee', 1),
(17, 9, 'Ja', 1),
(18, 9, 'Nee', 1),
(19, 10, 'Ja', 1),
(20, 10, 'Nee', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vraagen`
--

CREATE TABLE `vraagen` (
  `qid` int(11) NOT NULL,
  `vraag` varchar(150) NOT NULL,
  `is_enabled` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vraagen`
--

INSERT INTO `vraagen` (`qid`, `vraag`, `is_enabled`) VALUES
(1, 'Heb je moeite om je concentratie vast te houden tijdens vervelende taken?', 1),
(2, 'Ben je snel afgeleid door omgevingsgeluiden of afleidingen?', 1),
(3, 'Ben je snel afgeleid door uitstelbare activiteiten?', 1),
(4, 'Ben je snel verveeld?', 1),
(5, 'Ben je snel overactief of rusteloos?', 1),
(6, 'Heb je moeite om opdrachten te voltooien, zelfs als ze niet moeilijk zijn?', 1),
(7, 'Ben je impulsief?', 1),
(8, 'Heb je moeite met het organiseren van taken en verantwoordelijkheden?', 1),
(9, 'Ben je vergeetachtig, zelfs voor belangrijke dingen?', 1),
(10, 'Ben je snel gestrest of overstuur?', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aantworden`
--
ALTER TABLE `aantworden`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `quiz_answer`
--
ALTER TABLE `quiz_answer`
  ADD PRIMARY KEY (`qa_id`);

--
-- Indexes for table `quiz_options`
--
ALTER TABLE `quiz_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `vraagen`
--
ALTER TABLE `vraagen`
  ADD PRIMARY KEY (`qid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aantworden`
--
ALTER TABLE `aantworden`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quiz_answer`
--
ALTER TABLE `quiz_answer`
  MODIFY `qa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quiz_options`
--
ALTER TABLE `quiz_options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `vraagen`
--
ALTER TABLE `vraagen`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
