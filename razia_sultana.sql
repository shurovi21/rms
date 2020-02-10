-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2020 at 12:17 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `razia_sultana`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `batch_id` int(110) NOT NULL,
  `batch_no` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batch_id`, `batch_no`) VALUES
(6, '22nd'),
(7, '23rd'),
(9, '24th');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `crs_id` int(110) NOT NULL,
  `crs_code` int(110) NOT NULL,
  `crs_title` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`crs_id`, `crs_code`, `crs_title`) VALUES
(10, 222, 'C++'),
(11, 333, 'java'),
(12, 444, 'c'),
(13, 0, 'physics'),
(14, 106, 'bangla');

-- --------------------------------------------------------

--
-- Table structure for table `evaluates`
--

CREATE TABLE `evaluates` (
  `evaluates_id` int(11) NOT NULL,
  `teacher_id` int(110) NOT NULL,
  `crs_id` int(110) NOT NULL,
  `attendence` int(110) NOT NULL,
  `assignment` int(110) NOT NULL,
  `ct` int(110) NOT NULL,
  `midterm` int(110) NOT NULL,
  `final` int(110) NOT NULL,
  `total_mark` double NOT NULL,
  `grade` varchar(110) NOT NULL,
  `grade_point` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluates`
--

INSERT INTO `evaluates` (`evaluates_id`, `teacher_id`, `crs_id`, `attendence`, `assignment`, `ct`, `midterm`, `final`, `total_mark`, `grade`, `grade_point`) VALUES
(1, 10, 10, 8, 8, 8, 22, 33, 0, '', 0),
(2, 11, 11, 7, 7, 7, 18, 35, 0, '', 0),
(3, 12, 12, 8, 8, 8, 22, 33, 0, '', 0),
(4, 13, 13, 7, 7, 7, 18, 35, 0, '', 0),
(5, 10, 10, 5, 5, 5, 22, 0, 0, '', 0),
(6, 10, 10, 5, 5, 5, 20, 0, 0, 'A', 3.6),
(7, 0, 0, 10, 10, 10, 30, 0, 0, '', 0),
(8, 11, 11, 5, 5, 5, 20, 0, 0, 'A', 3.56),
(9, 10, 10, 4, 4, 4, 12, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `offered`
--

CREATE TABLE `offered` (
  `offered_id` int(11) NOT NULL,
  `batch_id` int(110) NOT NULL,
  `crs_id` int(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offered`
--

INSERT INTO `offered` (`offered_id`, `batch_id`, `crs_id`) VALUES
(1, 5, 1),
(2, 5, 1),
(3, 7, 5),
(4, 7, 5),
(5, 9, 11),
(6, 6, 10),
(7, 6, 10),
(8, 6, 10),
(9, 6, 10),
(10, 6, 10),
(11, 6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `register_id` int(10) NOT NULL,
  `std_id` int(11) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `crs_id` int(11) NOT NULL,
  `crs_code` varchar(100) NOT NULL,
  `crs_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`register_id`, `std_id`, `std_name`, `crs_id`, `crs_code`, `crs_title`) VALUES
(1, 5, '', 2, '', ''),
(2, 3, '', 2, '', ''),
(3, 10, '', 7, '', ''),
(4, 10, '', 7, '', ''),
(5, 10, '', 7, '', ''),
(6, 10, '', 7, '', ''),
(7, 7, '', 4, '', ''),
(8, 1, '', 0, '', ''),
(9, 1, '', 1, '', ''),
(10, 1, '', 6, '', ''),
(11, 15, '', 4, '', ''),
(12, 15, '', 4, '', ''),
(13, 20, '', 12, '', ''),
(14, 20, '', 12, '', ''),
(15, 20, '', 0, '', ''),
(16, 17, '', 0, '', ''),
(17, 17, '', 0, '', ''),
(18, 19, '', 0, '', ''),
(19, 18, '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `retakes`
--

CREATE TABLE `retakes` (
  `retakes_id` int(11) NOT NULL,
  `std_id` int(110) NOT NULL,
  `crs_id` int(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `retakes`
--

INSERT INTO `retakes` (`retakes_id`, `std_id`, `crs_id`) VALUES
(1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `std_id` int(110) NOT NULL,
  `std_name` varchar(110) NOT NULL,
  `std_roll` varchar(110) NOT NULL,
  `batch_no` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`std_id`, `std_name`, `std_roll`, `batch_no`) VALUES
(17, 'shurovi', '114CSE0009', '22nd'),
(18, 'rima', '114CSEoo14', '22nd'),
(19, 'shifa', '1123CSE54', '24th'),
(20, 'jakia', '114CSE4546546', '23rd');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(110) NOT NULL,
  `teacher_name` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `teacher_name`) VALUES
(12, 'Naima Mam'),
(13, 'Noman');

-- --------------------------------------------------------

--
-- Table structure for table `teaching`
--

CREATE TABLE `teaching` (
  `teaching_id` int(110) NOT NULL,
  `teacher_id` int(110) NOT NULL,
  `crs_id` int(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teaching`
--

INSERT INTO `teaching` (`teaching_id`, `teacher_id`, `crs_id`) VALUES
(1, 10, 0),
(2, 10, 0),
(3, 10, 0),
(4, 11, 0),
(5, 11, 0),
(6, 10, 3),
(7, 10, 3),
(8, 11, 2),
(9, 10, 11),
(10, 12, 11),
(11, 10, 10),
(12, 12, 12),
(13, 12, 12),
(14, 12, 12),
(15, 10, 10),
(16, 13, 12),
(17, 11, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`crs_id`);

--
-- Indexes for table `evaluates`
--
ALTER TABLE `evaluates`
  ADD PRIMARY KEY (`evaluates_id`);

--
-- Indexes for table `offered`
--
ALTER TABLE `offered`
  ADD PRIMARY KEY (`offered_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`register_id`);

--
-- Indexes for table `retakes`
--
ALTER TABLE `retakes`
  ADD PRIMARY KEY (`retakes_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teaching`
--
ALTER TABLE `teaching`
  ADD PRIMARY KEY (`teaching_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `batch_id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `crs_id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `evaluates`
--
ALTER TABLE `evaluates`
  MODIFY `evaluates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `offered`
--
ALTER TABLE `offered`
  MODIFY `offered_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `register_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `retakes`
--
ALTER TABLE `retakes`
  MODIFY `retakes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `std_id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `teaching`
--
ALTER TABLE `teaching`
  MODIFY `teaching_id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
