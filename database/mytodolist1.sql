-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2021 at 10:44 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mytodolist1`
--

-- --------------------------------------------------------

--
-- Table structure for table `mytasks`
--

CREATE TABLE `mytasks` (
  `taskid` int(10) NOT NULL,
  `task` varchar(255) NOT NULL,
  `taskdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mytasks`
--

INSERT INTO `mytasks` (`taskid`, `task`, `taskdate`) VALUES
(1, 'I am working as a mentor in Side Hustle Internship 3.0 - 2021', '2021-07-07'),
(2, 'Learning Project Management Professional Course 2021', '2021-07-07'),
(4, 'Creating a new website for Dan Arewa', '2021-07-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mytasks`
--
ALTER TABLE `mytasks`
  ADD PRIMARY KEY (`taskid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mytasks`
--
ALTER TABLE `mytasks`
  MODIFY `taskid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
