-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 26, 2021 at 03:28 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chained_select`
--
CREATE DATABASE IF NOT EXISTS `chained_select` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `chained_select`;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `countryName` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `countryName`) VALUES
(1, 'India'),
(2, 'Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `countryId` int(11) NOT NULL,
  `stateName` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `countryId`, `stateName`) VALUES
(1, 1, 'U.P.'),
(2, 1, 'Uttarakhand'),
(3, 2, 'Dhaka'),
(4, 2, 'Barisal');

-- --------------------------------------------------------

--
-- Table structure for table `towninfo`
--

CREATE TABLE `towninfo` (
  `id` int(11) NOT NULL,
  `townId` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `towninfo`
--

INSERT INTO `towninfo` (`id`, `townId`, `description`) VALUES
(1, 3, 'Pithoragarh is a beautiful town situated in Kumaon region of Uttarakhand. It has an average elevation of 1,514\r\nmetres (4,967 feet) above sea level.'),
(2, 4, 'Dehradun also known as Doon is the capital city of Uttarakhand. It is around 250 Kilometers from national\r\ncapital Delhi.\r\nRice and Lychee are major products of this city.'),
(3, 1, 'Lucknow is the capital city of U.P. or Uttar Pradesh.\r\nLucknow has Asia\'s first human DNA bank.\r\nIt is\r\npopularly known as The City of Nawabs, Golden City of the East and The Constantinople of India.'),
(4, 6, 'Dhaka is the capital city of Bangladesh, in southern Asia. Set beside the Buriganga River, it\'s at the center of national government, trade and culture. The 17th-century old city was the Mughal capital of Bengal, and many palaces and mosques remain. American architect Louis Khan\'s National Parliament House complex typifies the huge, fast-growing modern metropolis.'),
(5, 7, 'Faridpur is a district in south-central Bangladesh. Historically, the town was known as Fatehabad. \r\nThe town of Fatehabad was located by a stream known as the Dead Padma, which was 32 kilometres (20 mi) from the main channel of the Padma River. Sultan Jalaluddin Muhammad Shah established a mint in Fatehabad during his reign in the early 15th century. Fatehabad continued to be a mint town of the Bengal Sultanate until 1538. The Portuguese cartographer Joao de Barros mentioned it as Fatiabas. The Dutch map of Van den Brouck described it as Fathur.'),
(6, 8, 'Barisal, is a major city that lies on the banks of the Kirtankhola river in south-central Bangladesh. It is the largest city and the administrative headquarter of both Barishal District and Barisal Division. It is one of the oldest municipalities and river ports of the country'),
(7, 9, 'Patuakhali is a town and district headquarter of Patuakhali District located on the southern bank of Laukathi river in the division of Barisal in Bangladesh. It is the administrative headquarter of Patuakhali district and one of the oldest towns and municipalities in the country');

-- --------------------------------------------------------

--
-- Table structure for table `towns`
--

CREATE TABLE `towns` (
  `id` int(11) NOT NULL,
  `stateId` int(11) NOT NULL,
  `townName` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `towns`
--

INSERT INTO `towns` (`id`, `stateId`, `townName`) VALUES
(1, 1, 'Lucknow'),
(2, 1, 'Bareilly'),
(3, 2, 'Pithoragarh'),
(4, 2, 'Dehradun'),
(5, 2, 'Nainital'),
(6, 3, 'Dhaka'),
(7, 3, 'Faridpur'),
(8, 4, 'Barisal'),
(9, 4, 'Patuakhali');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `towninfo`
--
ALTER TABLE `towninfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `towninfo`
--
ALTER TABLE `towninfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `towns`
--
ALTER TABLE `towns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
