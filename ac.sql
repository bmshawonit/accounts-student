-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2019 at 04:48 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ac`
--

-- --------------------------------------------------------

--
-- Table structure for table `students_info`
--

CREATE TABLE `students_info` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `roll` varchar(20) NOT NULL,
  `reg` varchar(20) NOT NULL,
  `board` varchar(10) NOT NULL,
  `institute` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_info`
--

INSERT INTO `students_info` (`student_id`, `name`, `roll`, `reg`, `board`, `institute`, `photo`) VALUES
(1, 'Nayeem', '03', '02', 'Dhaka', 'CT', '0aa4a6309d4b171fc43296f94d7b4726.jpg'),
(2, 'Faysal', '01', '02', 'Dhaka', 'CT', '6aacfc8e6137a6eaae816521bc9f2621.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_uname` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_pass` varchar(200) NOT NULL,
  `user_cell` varchar(20) NOT NULL,
  `user_photo` varchar(150) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_uname`, `user_email`, `user_pass`, `user_cell`, `user_photo`, `status`) VALUES
(1, 'Alom Khan', 'alom', 'alom@gmail.com', '$2y$10$OSHm2Jjf9zhdmUsWS4W/muPZrQu/oRkhP/4mYXbzmYOtWATZyQjGa', '', '', 'inactive'),
(2, 'asraf', 'haq47', 'haq@gmail.com', '$2y$10$LecyLnYnM76tIq1Koar/aO6GhKee7FkiedRxtebQnp8LH5A2gCocq', '', '', 'inactive'),
(3, 'Alom', 'aaa', 'alom@gmail.com', '$2y$10$21gN3diBiiK8kGVhyMBypO1K.bu3FLbFG.ni7881oZrPeAFZ0JOAe', '', '', 'inactive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students_info`
--
ALTER TABLE `students_info`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students_info`
--
ALTER TABLE `students_info`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
