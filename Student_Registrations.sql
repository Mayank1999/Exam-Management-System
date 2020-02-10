-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 03, 2019 at 07:27 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Student Registrations`
--

-- --------------------------------------------------------

--
-- Table structure for table `Block_Seating`
--

CREATE TABLE `Block_Seating` (
  `s_no` int(50) NOT NULL,
  `roll_no` varchar(50) NOT NULL,
  `block` text NOT NULL,
  `exam_hall` text NOT NULL,
  `seat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Block_Seating`
--

INSERT INTO `Block_Seating` (`s_no`, `roll_no`, `block`, `exam_hall`, `seat`) VALUES
(1, '16BEC096', 'B', '308', '4th column 6th seat');

-- --------------------------------------------------------

--
-- Table structure for table `Masking`
--

CREATE TABLE `Masking` (
  `s_no` int(11) NOT NULL,
  `Roll_No` varchar(50) NOT NULL,
  `Exam_No` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Masking`
--

INSERT INTO `Masking` (`s_no`, `Roll_No`, `Exam_No`) VALUES
(1, '16BEC096', '6C001');

-- --------------------------------------------------------

--
-- Table structure for table `Registrations`
--

CREATE TABLE `Registrations` (
  `s_no` int(50) NOT NULL,
  `f_name` text NOT NULL,
  `s_name` text NOT NULL,
  `l_name` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Roll_no` varchar(50) NOT NULL,
  `Department` text NOT NULL,
  `Semester` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Registrations`
--

INSERT INTO `Registrations` (`s_no`, `f_name`, `s_name`, `l_name`, `username`, `password`, `Roll_no`, `Department`, `Semester`) VALUES
(1, 'Dolly', 'Dharmendrabhai', 'Patel', 'p1999', 'pkti', '16BEC096', 'Electronics & Communication Engineering', 6);

-- --------------------------------------------------------

--
-- Table structure for table `Supervisor_Allocation`
--

CREATE TABLE `Supervisor_Allocation` (
  `s_no` int(50) NOT NULL,
  `e_id` varchar(50) NOT NULL,
  `department` text NOT NULL,
  `block` text NOT NULL,
  `Day1` text NOT NULL,
  `Day2` text NOT NULL,
  `Day3` text NOT NULL,
  `Day4` text NOT NULL,
  `Day5` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Supervisor_Allocation`
--

INSERT INTO `Supervisor_Allocation` (`s_no`, `e_id`, `department`, `block`, `Day1`, `Day2`, `Day3`, `Day4`, `Day5`) VALUES
(1, '1001', 'Civil Engineering', 'C', '105', '106', '107', '108', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `Supervisor_registrations`
--

CREATE TABLE `Supervisor_registrations` (
  `s_no` int(50) NOT NULL,
  `name` text NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `e_id` text NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Supervisor_registrations`
--

INSERT INTO `Supervisor_registrations` (`s_no`, `name`, `uname`, `password`, `e_id`, `department`) VALUES
(1, 'Monika P Barot', 'Mon1984', '1234', '1001', 'Civil Engineering');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Block_Seating`
--
ALTER TABLE `Block_Seating`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `Masking`
--
ALTER TABLE `Masking`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `Registrations`
--
ALTER TABLE `Registrations`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `Supervisor_Allocation`
--
ALTER TABLE `Supervisor_Allocation`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `Supervisor_registrations`
--
ALTER TABLE `Supervisor_registrations`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Block_Seating`
--
ALTER TABLE `Block_Seating`
  MODIFY `s_no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Masking`
--
ALTER TABLE `Masking`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Registrations`
--
ALTER TABLE `Registrations`
  MODIFY `s_no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Supervisor_Allocation`
--
ALTER TABLE `Supervisor_Allocation`
  MODIFY `s_no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Supervisor_registrations`
--
ALTER TABLE `Supervisor_registrations`
  MODIFY `s_no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
