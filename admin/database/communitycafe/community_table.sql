-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2022 at 08:48 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `communitycafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `community_table`
--

CREATE TABLE `community_table` (
  `community_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `address_Area` varchar(150) NOT NULL,
  `Community_Name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `community_table`
--

INSERT INTO `community_table` (`community_id`, `user_name`, `address_Area`, `Community_Name`) VALUES
(1, 'vishnu', 'P.N.Halli (HOSPET, 583223)', 'tib'),
(2, 'vishnu', 'P.N.Halli (HOSPET, 583223)', 'Tenzin hub');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `community_table`
--
ALTER TABLE `community_table`
  ADD PRIMARY KEY (`community_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `community_table`
--
ALTER TABLE `community_table`
  MODIFY `community_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
