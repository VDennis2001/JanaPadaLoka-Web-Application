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
-- Table structure for table `user_interests`
--

CREATE TABLE `user_interests` (
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(40) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `interest_id` int(11) NOT NULL,
  `interest_title` varchar(20) NOT NULL,
  `img_href` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_interests`
--

INSERT INTO `user_interests` (`fname`, `lname`, `email`, `user_name`, `interest_id`, `interest_title`, `img_href`) VALUES
('Sree', 'vishnu', 'sreevishnu025@gmail.com', 'vishnu', 0, 'FOODIE', 'foodies.jpg'),
('Sree', 'vishnu', 'sreevishnu025@gmail.com', 'vishnu', 2, 'FITNESS', 'FITNESS.jpg'),
('Sree', 'vishnu', 'sreevishnu025@gmail.com', 'vishnu', 3, 'LITERARY', 'LITERARY.jpg'),
('Sree', 'vishnu', 'sreevishnu025@gmail.com', 'vishnu', 4, 'ARTS', 'painting.jpg'),
('Sree', 'vishnu', 'sreevishnu025@gmail.com', 'vishnu', 6, 'PETS', 'PETS.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_interests`
--
ALTER TABLE `user_interests`
  ADD PRIMARY KEY (`user_name`,`interest_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
