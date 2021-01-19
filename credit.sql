-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2020 at 02:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `credit`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `sender` varchar(128) NOT NULL,
  `receiver` varchar(128) NOT NULL,
  `trans_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`sender`, `receiver`, `trans_amount`) VALUES
('Soham Lanke', 'Nikhil Duttaroy', 100),
('Ruthvij Rane', 'Nikhil Duttaroy', 100),
('Nikhil Duttaroy', 'Chinmay Mhatre', 500),
('Chinmay Mhatre', 'Ritika Radhakrishnan', 250),
('Nikhil Duttaroy', 'Chinmay Mhatre', 200),
('Tanmay Hinge', 'Ritika Radhakrishnan', 200),
('Chinmay Mhatre', 'Nikhil Duttaroy', 500);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `user_credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `email`, `user_credits`) VALUES
(1, 'Nikhil Duttaroy', 'nikhil@gmail.com', 500),
(2, 'Ashwith poojary', 'Ashwith@gmail.com', 500),
(3, 'Chinmay Mhatre', 'chinmay@gmail.com', 450),
(4, 'Soham Lanke', 'Soham@gmail.com', 400),
(5, 'Ruthvij Rane', 'ruthvijgmail.com', 400),
(6, 'Tanmay Hinge', 'Tanmay@gmail.com', 300),
(7, 'Ritika Radhakrishnan', 'ritika@gmail.com', 950),
(8, 'Aastha Angre', 'aastha@gmail.com', 500),
(9, 'Rutuja Jadhav', 'rutuja@gmail.com', 500),
(10, 'Prasad Patil', 'prasad@gmail.com', 500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
