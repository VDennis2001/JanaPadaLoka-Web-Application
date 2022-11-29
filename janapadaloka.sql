-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 08:47 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `janapadaloka`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_details`
--

CREATE TABLE `account_details` (
  `aadhar_no` varchar(30) NOT NULL,
  `pan_number` varchar(30) NOT NULL,
  `name_of_bank` varchar(100) NOT NULL,
  `account_number` varchar(100) NOT NULL,
  `account_holder_name` varchar(100) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `ifsc_number` varchar(100) NOT NULL,
  `micr_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_details`
--

INSERT INTO `account_details` (`aadhar_no`, `pan_number`, `name_of_bank`, `account_number`, `account_holder_name`, `branch_name`, `ifsc_number`, `micr_number`) VALUES
('..', '..', '..', '..', '..', '..', '..', '..'),
('.232837y2893798.', '.55555.', '.sdcscd.', '.4544555.', '.asxaxa.', '.sxasx.', '.58784qd.', '.qdw5555.'),
('.46541231654.', '.354343.', '.Bank of Baroda.', '.3153646531534.', '.Manisha.', '.Amravati.', '.35132.', '.21354313.');

-- --------------------------------------------------------

--
-- Table structure for table `janapadaloka`
--

CREATE TABLE `janapadaloka` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `phn_number` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `permanent_add` varchar(500) NOT NULL,
  `current_add` varchar(500) NOT NULL,
  `adhar_card` int(12) NOT NULL,
  `pan_card` int(10) NOT NULL,
  `skill_set` varchar(50) NOT NULL,
  `bank_details` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resume_table2`
--

CREATE TABLE `resume_table2` (
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
-- Dumping data for table `resume_table2`
--

INSERT INTO `resume_table2` (`name`, `mobile_no`, `alternate_mobile`, `address`, `postal_code`, `email`, `emergency_contact`, `photo`, `occupation`, `experience`, `dob`, `age`, `local`, `awards`) VALUES
('.Heenal Keshwani.', '.08329402589.', '..', '.Ekvira nagar.', 444701, '.heenalkeshwani@gmail.com.', '..', 0x2e2e, '..', 0, '0000-00-00', 0, '0000-00-00', '..'),
('.Vidhi.', '.08329402589.', '.86224554523.', '.White house, first floor near kolimane restaurant, kanmanike bus stop.', 560074, '.qwd@mail.com.', '.23232323.', '', '.heferhf.', 1, '0000-00-00', 20, '0000-00-00', '..'),
('.Manisha.', '.7840900251.', '.9403211256.', '.Mumbai.', 550021, '.mani@gmail.com.', '.832945689.', '', '.Housewife.', 2, '0000-00-00', 29, '0000-00-00', ''),
('.Denis.', '.9009051523.', '.789885401.', '.Jabalpur.', 560021, '.dennu@gmail.com.', '.08329402589.', '', '.Student.', 0, '0000-00-00', 21, '0000-00-00', ''),
('.Denis.', '.9009051523.', '.789885401.', '.Jabalpur.', 560021, '.dennu@gmail.com.', '.08329402589.', '', '.Student.', 0, '0000-00-00', 21, '0000-00-00', ''),
('.Denis.', '.9009051523.', '.789885401.', '.Jabalpur.', 560021, '.dennu@gmail.com.', '.08329402589.', '', '.Student.', 0, '0000-00-00', 21, '0000-00-00', ''),
('.Denis.', '.9009051523.', '.789885401.', '.Jabalpur.', 560021, '.dennu@gmail.com.', '.08329402589.', '', '.Student.', 0, '0000-00-00', 21, '0000-00-00', ''),
('.Denis.', '.9009051523.', '.789885401.', '.Jabalpur.', 560021, '.dennu@gmail.com.', '.08329402589.', '', '.Student.', 0, '0000-00-00', 21, '0000-00-00', ''),
('.Denis.', '.9009051523.', '.789885401.', '.Jabalpur.', 560021, '.dennu@gmail.com.', '.08329402589.', '', '.Student.', 0, '0000-00-00', 21, '0000-00-00', ''),
('.Denis.', '.9009051523.', '.789885401.', '.Jabalpur.', 560021, '.dennu@gmail.com.', '.08329402589.', '', '.Student.', 0, '0000-00-00', 21, '0000-00-00', ''),
('.Denis.', '.9009051523.', '.789885401.', '.Jabalpur.', 560021, '.dennu@gmail.com.', '.08329402589.', '', '.Student.', 0, '0000-00-00', 21, '0000-00-00', ''),
('.Sakshi.', '.9009051523.', '.789885401.', '.Jabalpur.', 560021, '.sakshi@gmail.com.', '.08329402589.', '', '.Student.', 0, '0000-00-00', 21, '0000-00-00', ''),
('..', '.9009051523.', '.789885401.', '.Jabalpur.', 560021, '.sakshi@gmail.com.', '.08329402589.', '', '.Student.', 0, '0000-00-00', 21, '0000-00-00', ''),
('.Skshi.', '.89522222.', '..', '.216513.', 452210, '.sakshi@gmail.com.', '.421251212.', '', '..', 0, '0000-00-00', 23, '0000-00-00', ''),
('.Umang.', '.2141316565.', '..', '.Banglore.', 560074, '.umang@gmail.com.', '.121354645.', '', '..', 0, '0000-00-00', 29, '0000-00-00', ''),
('.Umang.', '.2141316565.', '..', '.Banglore.', 560074, '.umang@gmail.com.', '.121354645.', '', '..', 0, '0000-00-00', 29, '0000-00-00', ''),
('.Umang.', '.2141316565.', '..', '.Banglore.', 560074, '.umang@gmail.com.', '.121354645.', '', '..', 0, '0000-00-00', 29, '0000-00-00', ''),
('.Umang.', '.2141316565.', '..', '.Banglore.', 560074, '.umang@gmail.com.', '.121354645.', '', '..', 0, '0000-00-00', 29, '0000-00-00', ''),
('.Umang.', '.2141316565.', '..', '.Banglore.', 560074, '.umang@gmail.com.', '.121354645.', '', '..', 0, '0000-00-00', 29, '0000-00-00', ''),
('.Umang.', '.2141316565.', '..', '.Banglore.', 560074, '.umang@gmail.com.', '.121354645.', '', '..', 0, '0000-00-00', 29, '0000-00-00', ''),
('.Umang.', '.2141316565.', '..', '.Banglore.', 560074, '.umang@gmail.com.', '.121354645.', '', '..', 0, '0000-00-00', 29, '0000-00-00', ''),
('.Umang.', '.2141316565.', '..', '.Banglore.', 560074, '.umang@gmail.com.', '.121354645.', '', '..', 0, '0000-00-00', 29, '0000-00-00', ''),
('.Jayesh.', '.9663380254.', '..', '.Dubai.', 456120, '.jay@gmail.com.', '..', '', '.fmncmxbjh.', 2, '0000-00-00', 25, '0000-00-00', ''),
('.Jayesh.', '.9663380254.', '..', '.Dubai.', 456120, '.jay@gmail.com.', '.1561234654.', '', '.fmncmxbjh.', 2, '0000-00-00', 25, '0000-00-00', ''),
('.Jayesh.', '.9663380254.', '..', '.Dubai.', 456120, '.jay@gmail.com.', '.1561234654.', '', '.fmncmxbjh.', 2, '0000-00-00', 25, '0000-00-00', ''),
('.Jayesh.', '.9663380254.', '..', '.Dubai.', 456120, '.jay@gmail.com.', '.1561234654.', '', '.fmncmxbjh.', 2, '0000-00-00', 25, '0000-00-00', ''),
('.Heenal Keshwani.', '.08329402589.', '..', '.Ekvira nagar.', 444701, '.heenalkeshwani@gmail.com.', '.123135.', '', '.mdnkjfhg.', 2, '0000-00-00', 12, '0000-00-00', ''),
('.Vidhi.', '.9405213550.', '.8327402546.', '.Electronic city.', 560025, '.vidhi@gmail.com.', '.545648679.', '', '.businessman.', 3, '0000-00-00', 25, '0000-00-00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `janapadaloka`
--
ALTER TABLE `janapadaloka`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `janapadaloka`
--
ALTER TABLE `janapadaloka`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_details`
--
ALTER TABLE `account_details`
  ADD CONSTRAINT `fkey1` FOREIGN KEY (`aadhar_no`) REFERENCES `resume_table2` (`aadhar_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
