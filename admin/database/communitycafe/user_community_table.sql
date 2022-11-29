-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2022 at 08:58 PM
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
-- Table structure for table `user_community_table`
--

CREATE TABLE `user_community_table` (
  `community_id` varchar(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `request_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `request_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_community_table`
--

INSERT INTO `user_community_table` (`community_id`, `user_name`, `request_time`, `request_status`) VALUES
('1', 'ssv', '2022-04-07 00:17:15', 'pending'),
('2', 'vishnu', '2022-05-03 08:23:42', 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_community_table`
--
ALTER TABLE `user_community_table`
  ADD PRIMARY KEY (`community_id`,`user_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
