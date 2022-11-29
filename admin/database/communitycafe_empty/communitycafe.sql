-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2022 at 08:46 PM
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
-- Table structure for table `all_interests`
--

CREATE TABLE `all_interests` (
  `interest_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `img_href` text NOT NULL,
  `joined` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Table structure for table `giveback`
--

CREATE TABLE `giveback` (
  `username` varchar(30) NOT NULL,
  `title` text NOT NULL,
  `community_id` int(11) NOT NULL,
  `phone_number` bigint(12) NOT NULL,
  `item_description` mediumtext NOT NULL,
  `item_photo` longblob NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `post_title` text NOT NULL,
  `post_msg` mediumtext NOT NULL,
  `post_img` longblob NOT NULL,
  `category_id` text NOT NULL,
  `category` text NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `cmt_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `time_stamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `profile_image` longblob NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `gender` text NOT NULL,
  `ph_num` bigint(12) NOT NULL,
  `email` varchar(40) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` mediumtext NOT NULL,
  `addr1` text NOT NULL,
  `addr2` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `pincode` int(11) NOT NULL,
  `country` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `all_interests`
--
ALTER TABLE `all_interests`
  ADD PRIMARY KEY (`interest_id`);

--
-- Indexes for table `community_table`
--
ALTER TABLE `community_table`
  ADD PRIMARY KEY (`community_id`);

--
-- Indexes for table `giveback`
--
ALTER TABLE `giveback`
  ADD PRIMARY KEY (`username`,`community_id`,`phone_number`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`cmt_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_community_table`
--
ALTER TABLE `user_community_table`
  ADD PRIMARY KEY (`community_id`,`user_name`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `ph_num` (`ph_num`);

--
-- Indexes for table `user_interests`
--
ALTER TABLE `user_interests`
  ADD PRIMARY KEY (`user_name`,`interest_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_interests`
--
ALTER TABLE `all_interests`
  MODIFY `interest_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `community_table`
--
ALTER TABLE `community_table`
  MODIFY `community_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
