-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2024 at 07:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_react_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `portfolio_aid` int(11) NOT NULL,
  `portfolio_title` varchar(50) NOT NULL,
  `portfolio_category` varchar(50) NOT NULL,
  `portfolio_photo` varchar(50) NOT NULL,
  `portfolio_is_active` tinyint(1) NOT NULL,
  `portfolio_description` text NOT NULL,
  `portfolio_publish_date` varchar(20) NOT NULL,
  `portfolio_datetime` varchar(20) NOT NULL,
  `portfolio_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`portfolio_aid`, `portfolio_title`, `portfolio_category`, `portfolio_photo`, `portfolio_is_active`, `portfolio_description`, `portfolio_publish_date`, `portfolio_datetime`, `portfolio_created`) VALUES
(12, 'ewqe', 'wqewqewqew', 'qeqwewq', 1, 'ewqewqeqw', 'wqewqewq', '2024-05-10 13:04:18', '2024-05-10 13:04:18'),
(13, 'hnnjuyh', 'fwe', 'bt c', 1, 'refrfe', 'rcrfget', '2024-05-10 13:05:08', '2024-05-10 13:05:08'),
(14, 'ewqeqwe', 'wqewqeqw', 'eqweqwe', 1, 'qwdasfdgfer', 'ferwefwe', '2024-05-10 13:10:48', '2024-05-10 13:10:48'),
(15, 'sdfsdf', 'sdewrwerew', 'werwsdf', 1, 'dsgfsdsd', 'fsdfsdfs', '2024-05-10 13:49:06', '2024-05-10 13:49:06'),
(16, 'Viktor Magtanggol', 'Movie', 'project-1-modal-2.png', 1, 'gdfgfdkgnsdfijfnsdif', '05/20/2024', '2024-05-14 10:11:09', '2024-05-10 14:47:17'),
(17, 'WonderTour', 'Web Development', 'wqe', 1, 'Wondertour is wonderful', '13/05/2024', '2024-05-13 11:33:23', '2024-05-13 11:33:23'),
(18, 'dlsl', 'wqeqw', 'dlsl-education.png', 1, 'ewqewq', 'sadsa', '2024-05-14 09:57:26', '2024-05-14 09:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_aid` int(11) NOT NULL,
  `user_is_active` tinyint(1) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_key` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_created` varchar(20) NOT NULL,
  `user_datetime` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_aid`, `user_is_active`, `user_name`, `user_email`, `user_key`, `user_password`, `user_created`, `user_datetime`) VALUES
(3, 1, 'Gian Carlo Lajarca', 'gianlajarca14@gmail.com', '', '$2y$10$1AWy3VYh4zrfVGqJo1RDiOvzXy0hYsXjZmVr7Dv65K2IUd4G.fHl6', '2024-05-20 12:52:23', '2024-05-20 13:42:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`portfolio_aid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `portfolio_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
