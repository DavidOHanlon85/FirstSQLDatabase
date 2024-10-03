-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 03, 2024 at 03:00 PM
-- Server version: 8.0.35
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car`
--

-- --------------------------------------------------------

--
-- Table structure for table `car table`
--

CREATE TABLE `car table` (
  `car_id` int NOT NULL,
  `car_make` varchar(255) NOT NULL,
  `colour_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `car table`
--

INSERT INTO `car table` (`car_id`, `car_make`, `colour_id`) VALUES
(1, 'VW', 2),
(2, 'Audi', 6),
(3, 'Mitsubishi', 2),
(4, 'Ferrari', 5),
(5, 'Aston Martin', 2),
(6, 'BMW', 8);

-- --------------------------------------------------------

--
-- Table structure for table `colour table`
--

CREATE TABLE `colour table` (
  `colour_id` int NOT NULL,
  `colour_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `colour table`
--

INSERT INTO `colour table` (`colour_id`, `colour_name`) VALUES
(1, 'Red'),
(2, 'Blue'),
(3, 'Yellow'),
(4, 'Green'),
(5, 'Purple'),
(6, 'Pink'),
(7, 'Turquoise'),
(8, 'Magenta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car table`
--
ALTER TABLE `car table`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `FK_colour_colour_id` (`colour_id`);

--
-- Indexes for table `colour table`
--
ALTER TABLE `colour table`
  ADD PRIMARY KEY (`colour_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car table`
--
ALTER TABLE `car table`
  MODIFY `car_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `colour table`
--
ALTER TABLE `colour table`
  MODIFY `colour_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car table`
--
ALTER TABLE `car table`
  ADD CONSTRAINT `FK_colour_colour_id` FOREIGN KEY (`colour_id`) REFERENCES `colour table` (`colour_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
