-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 07:04 AM
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
-- Database: `greenmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Id` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Price` int(20) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `ImagePath` varchar(200) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `Name`, `Price`, `Description`, `ImagePath`, `Category`, `Quantity`) VALUES
(7, 'corrot', 500, 'hiifthrdh', 'D:/Dulaksha/Business/jmir/GreenMart/image/ROG Strix 2019_1920x1080.png', 'Vegetables', 56),
(8, 'chicken', 67, 'yjmtneheyh', 'D:/Dulaksha/Business/jmir/GreenMart/image/maxresdefault.jpg', 'Fresh Meat', 89),
(9, 'manyokka', 90, 'rthgrehergr4h', 'D:/Dulaksha/Business/jmir/GreenMart/imagemaxresdefault.jpg', 'Vegetables', 66);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `Id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`Id`, `name`, `email`, `message`) VALUES
(1, 'Dulaksha', 'dkrajasekera@gmail.com', 'srgerhfhufwhfshfvbncxvccshffgsdbfsndbfvsh sywjfbsndfbsdbvshdfyhsrfgyewgfhsdsbvsn fsbfshvbskv'),
(2, 'Dulaksha', 'dkrajasekera@gmail.com', 'dffdnjfgnfhbshsdhgsdhfghgfsghf'),
(3, 'Dulaksha', 'dkrajasekera@gmail.com', 'vsdvsvs');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `fullName` varchar(20) NOT NULL,
  `phoneNumber` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `Id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`fullName`, `phoneNumber`, `email`, `userName`, `password`, `Id`) VALUES
('dawdawd', 12343432, 'dkrajasekere@gmail.com', 'wadawdas', '12345', 1),
('dawdawd', 12343432, 'admin@gmail.com', 'wadawdas', '12345', 2),
('dawdawd', 12343432, 'dkrajasekere@gmail.com', 'wadawdas', '123', 3),
('dawdawd', 12343432, 'adadasd', 'wadawdas', '123321', 4),
('dawdawd', 12343432, 'adadasd', 'wadawdas', '123321', 5),
('dawdawd', 12343432, 'adadasd', 'wadawdas', '123321', 6),
(' csdfs', 14124, 'dkrajasekere@gmail.com', 'sgsgdfg', '123', 7),
('Dulaksha Rajasekera', 718543416, 'dkrajasekere@gmail.com', 'Dula01', 'Dulaksha', 8),
('dawdawd', 12343432, 'dkrajasekere@gmail.com', 'wadawdas', '123', 9),
('dawdawd', 12343432, 'dkrajasekere@gmail.com', 'wadawdas', '123', 10),
('dawdawd', 12343432, 'dkrajasekere@gmail.com', 'wadawdas', '123', 11),
('dula', 12343432, 'dkrajasekere@gmail.com', 'wadawdas', '123', 14),
('dawdawd', 12343432, 'dkrajasekere@gmail.com', 'dula', '123', 15),
('safasf', 12343432, 'admin@gmail.com', 'acscasc', '1234', 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
