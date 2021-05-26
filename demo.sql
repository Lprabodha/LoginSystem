-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2021 at 08:57 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `pid` int(5) NOT NULL,
  `fid` varchar(5) NOT NULL,
  `class` int(5) DEFAULT NULL,
  `paid` enum('yes','no') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`pid`, `fid`, `class`, `paid`) VALUES
(100, '3xd', 1, 'yes'),
(100, '4ff', 4, 'no'),
(200, '3xd', 2, 'yes'),
(300, '3xd', 1, 'no'),
(300, '4ff', 3, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `employess`
--

CREATE TABLE `employess` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Salary` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employess`
--

INSERT INTO `employess` (`id`, `Name`, `Address`, `Salary`) VALUES
(1, 'lahiru prabodha', 'waduwalivitiya,uannvitiya', 1000.00),
(2, 'ramisha gimhana', 'baddegama,galle', 1500.00),
(3, 'lahiru', '275/2,waduwalivitiya ,unanvitiya\r\nkanathawattha', 200.00),
(4, 'lahiru', '275/2,waduwalivitiya ,unanvitiya\r\nkanathawattha', 200.00);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `fid` varchar(5) NOT NULL,
  `start` varchar(50) DEFAULT NULL,
  `end` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`fid`, `start`, `end`) VALUES
('3xd', 'sri lanka', 'singapore'),
('4ff', 'sri lanka', 'england');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `pid` int(5) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`pid`, `name`) VALUES
(100, 'Mike'),
(200, 'Lara'),
(300, 'Linda'),
(400, 'Linda');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `first_name`, `last_name`, `email`) VALUES
(2, 'lahiru', 'prabodha', 'lprabodha98@gmail.com'),
(3, 'lahiru', 'prabodha', 'lprabodha98@gmail.com'),
(4, 'ramisha', 'gimhana', 'rmigs@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`) VALUES
(1, 'product1', 'product15.jpg', 100.00),
(2, 'product2', 'product10.jpg', 150.00),
(3, 'product3', 'product6.jpg', 200.00),
(4, 'product5', 'product7.jpg', 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` int(10) DEFAULT NULL,
  `password1` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `password1`, `address`) VALUES
(1, 'lahiru', 'prabodha', 'lprabodha98@gmail.com', 774772084, '11111111111', '275/2,waduwalivitiya ,unanvitiya\r\nkanathawattha'),
(2, 'lahiru', 'prabodha', 'lprabodha98@gmail.com', 774772084, '', '275/2,waduwalivitiya ,unanvitiya\r\nkanathawattha'),
(3, 'lahiru', 'prabodha', 'lprabodha98@gmail.com', 774772084, '111111111111', '275/2,waduwalivitiya ,unanvitiya\r\nkanathawattha'),
(4, 'lahiru', 'prabodha', 'lprabodha98@gmail.com', 774772084, '', '275/2,waduwalivitiya ,unanvitiya\r\nkanathawattha'),
(5, 'lahiru', 'prabodha', 'lprabodha98@gmail.com', 774772084, '111111111111111111111oo', '275/2,waduwalivitiya ,unanvitiya\r\nkanathawattha'),
(6, 'lahiru', 'prabodha', 'lprabodha98@gmail.com', 774772084, '339f18db4f791a1fab73ff9a1c167669', '275/2,waduwalivitiya ,unanvitiya\r\nkanathawattha');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `qualification` varchar(15) NOT NULL,
  `course` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `sname`, `address`, `dob`, `gender`, `qualification`, `course`) VALUES
(1, 'lahiru', 'galle', '2020.10.02', 'Male', 'A/L', 'ICT3'),
(2, 'ramisha', 'baddegama', '2020.10.01', 'Male', 'NVQ -4', 'ICT3'),
(3, 'LAHIRU', 'GALLE', '2020.10.06', 'Male', 'A/L', 'ICT3'),
(4, 'ramisha', 'galle', '2020.10.01', 'Male', 'NVQ-4', 'GRAPHIC'),
(5, 'ramisha', 'baddegamama', '2020.10.01', 'Male', 'A/L NVQ-4 ', 'ICT3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'lahiru', '$2y$10$qiyvImnUxg.wLejLo2gppOMcDprBL/xqv0lZMidbQMsoaJtKLfeWa', '2020-09-19 14:50:03'),
(2, 'lahiruprabodha', '$2y$10$/WKKdjZR6NeyPGzrrd/akOYHXTrD6yE4WkrEtZTfVHHToPNTYa45S', '2020-09-19 14:51:56'),
(3, 'admin', '$2y$10$s4JjlaPVzP2HEOw4RnnCRuNXjL1o.p7U/2DvlGDseFoBQLYzOqCXW', '2020-09-19 14:54:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`pid`,`fid`),
  ADD KEY `fk2` (`fid`);

--
-- Indexes for table `employess`
--
ALTER TABLE `employess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employess`
--
ALTER TABLE `employess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`pid`) REFERENCES `passenger` (`pid`),
  ADD CONSTRAINT `fk2` FOREIGN KEY (`fid`) REFERENCES `flight` (`fid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
