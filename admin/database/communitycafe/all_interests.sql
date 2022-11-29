-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2022 at 08:47 PM
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

--
-- Dumping data for table `all_interests`
--

INSERT INTO `all_interests` (`interest_id`, `title`, `img_href`, `joined`) VALUES
(1, 'GROWERS', 'GROWERS.jpg', 0),
(2, 'FITNESS', 'FITNESS.jpg', 1),
(3, 'LITERARY', 'LITERARY.jpg', 1),
(4, 'ARTS', 'painting.jpg', 1),
(5, 'TRAVEL', 'TRAVEL.jpg', 1),
(6, 'PETS', 'PETS.jpg', 1),
(7, 'FASHION', 'FASHION.jpg', 0),
(9, 'FOODIE', 'foodies.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_interests`
--
ALTER TABLE `all_interests`
  ADD PRIMARY KEY (`interest_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_interests`
--
ALTER TABLE `all_interests`
  MODIFY `interest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
