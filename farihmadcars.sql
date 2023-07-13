-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2023 at 06:51 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farihmadcars`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Id` int(22) NOT NULL,
  `Name` varchar(55) NOT NULL,
  `Email` varchar(55) NOT NULL,
  `Number` int(22) NOT NULL,
  `Car` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dregister`
--

CREATE TABLE `dregister` (
  `Id` int(22) NOT NULL,
  `Name` varchar(55) NOT NULL,
  `Brand` varchar(55) NOT NULL,
  `Email` varchar(55) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Id` int(22) NOT NULL,
  `Email` varchar(55) NOT NULL,
  `Password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Id` int(22) NOT NULL,
  `Name` varchar(55) NOT NULL,
  `DoB` date NOT NULL,
  `Email` varchar(55) NOT NULL,
  `Number` int(22) NOT NULL,
  `Password` varchar(55) NOT NULL,
  `RPassword` varchar(55) NOT NULL,
  `State` varchar(55) NOT NULL,
  `Address` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `selling`
--

CREATE TABLE `selling` (
  `Id` int(22) NOT NULL,
  `Brand` varchar(55) NOT NULL,
  `Model` varchar(55) NOT NULL,
  `Year` int(22) NOT NULL,
  `Category` varchar(55) NOT NULL,
  `Color` varchar(55) NOT NULL,
  `Discription` varchar(100) NOT NULL,
  `Kilometer` int(22) NOT NULL,
  `Engine` varchar(55) NOT NULL,
  `State` varchar(55) NOT NULL,
  `Address` varchar(55) NOT NULL,
  `Name` varchar(55) NOT NULL,
  `Price` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `dregister`
--
ALTER TABLE `dregister`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `selling`
--
ALTER TABLE `selling`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Id` int(22) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dregister`
--
ALTER TABLE `dregister`
  MODIFY `Id` int(22) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `Id` int(22) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `Id` int(22) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `selling`
--
ALTER TABLE `selling`
  MODIFY `Id` int(22) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
