-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2022 at 05:31 AM
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
-- Table structure for table `calendar_posts`
--

CREATE TABLE `calendar_posts` (
  `post_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `post_title` text NOT NULL,
  `post_msg` mediumtext NOT NULL,
  `community_id` text NOT NULL,
  `category` text NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calendar_posts`
--

INSERT INTO `calendar_posts` (`post_id`, `user_name`, `post_title`, `post_msg`, `community_id`, `category`, `time_stamp`) VALUES
(1, 'vishnu', 'Vishnu birthday!!!', 'Happy birthday to you Vishnu!!!', '2', 'celebration', '2022-05-21 03:10:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendar_posts`
--
ALTER TABLE `calendar_posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendar_posts`
--
ALTER TABLE `calendar_posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
