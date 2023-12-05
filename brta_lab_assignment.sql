-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 06:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brta_lab_assignment`
CREATE Database brta_lab_assignment;
use brta_lab_assignment;
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `email`, `password`) VALUES
('Al Jaziz Turja', 'turja@admin.com', '$2y$10$BGRPNKnSXb2lJpol7yQgy.iXLIBlZ0LSeF9QjgLXmbr1ivMVA66cC');


-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `name` varchar(255) NOT NULL,
  `nid_no` varchar(255) NOT NULL,
  `vehicle_no` varchar(255) NOT NULL,
  `vehicle_chassis_no` varchar(255) NOT NULL,
  `present_addr` varchar(255) NOT NULL,
  `permanent_addr` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `nid_softcopy` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`name`, `nid_no`, `vehicle_no`, `vehicle_chassis_no`, `present_addr`, `permanent_addr`, `profile_pic`, `nid_softcopy`, `id`, `email`) VALUES
('Ken Kaneki', '568451321', '481', '48645132', 'Dhaka', 'Dhaka', './uploads/kaneki@anime.com.jpg', './uploads/kaneki@anime.com.pdf', 5, 'kaneki@anime.com'),
('Light Yagami', '354164323', '694', '6345841', 'Kyoto', 'Kyoto', './uploads/light@anime.com.jpg', './uploads/light@anime.com.pdf', 6, 'light@anime.com'),
('Natsu Dragneel', '8596154', '856', '97456432', 'Nihon', 'Nihon', './uploads/natsu@anime.com.jpg', './uploads/natsu@anime.com.pdf', 7, 'natsu@anime.com');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`email`),
  ADD KEY `INDEX` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
