-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2022 at 07:35 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `umang`
--

-- --------------------------------------------------------

--
-- Table structure for table `resume_table2`
--

CREATE TABLE `resume_table2` (
  `aadhar_no` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `alternate_mobile` varchar(15) NOT NULL,
  `address` varchar(150) NOT NULL,
  `postal_code` int(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emergency_contact` varchar(15) NOT NULL,
  `photo` blob NOT NULL,
  `occupation` varchar(15) NOT NULL,
  `experience` int(11) NOT NULL,
  `dob` date NOT NULL,
  `age` int(10) NOT NULL,
  `local` date NOT NULL,
  `awards` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `resume_table2`
--
ALTER TABLE `resume_table2`
  ADD PRIMARY KEY (`aadhar_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
