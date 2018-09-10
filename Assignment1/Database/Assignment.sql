-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 10, 2018 at 03:49 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Category_ID` int(5) NOT NULL,
  `Category_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Category_ID`, `Category_Name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Sports'),
(4, 'Puzzle'),
(5, 'Racing'),
(6, 'Strategy');

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `ID` int(5) NOT NULL,
  `Product_ID` varchar(5) NOT NULL,
  `Product_Name` varchar(255) NOT NULL,
  `Product_Description` varchar(255) NOT NULL,
  `Product_Price` int(11) NOT NULL,
  `Image_Name` varchar(255) NOT NULL,
  `Image_Alt` varchar(255) NOT NULL,
  `Category_ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`ID`, `Product_ID`, `Product_Name`, `Product_Description`, `Product_Price`, `Image_Name`, `Image_Alt`, `Category_ID`) VALUES
(1, 'P1', 'FortNight', 'Fortnite is an online video game created in 2017, developed by Epic Games, and released as different software packages having different game modes that otherwise share the same general gameplay and game engine. The game modes include Fortnite: Save the Wo', 50, 'fortnight.jpg', 'Fortnight Wallpaper', 1),
(2, 'P2', 'GTA', 'Very Good Game', 100, 'gta.jpg', 'GTA', 2),
(3, 'P3', 'Minecraft', 'Minecraft Game.', 150, 'minecraft.jpg', 'Mine Craft Game', 3),
(4, 'P4', 'OverWatch', 'Game', 200, 'overwatch.jpg', 'Game Game Game', 1),
(5, 'P5', 'PUBG', 'popular game', 20, 'pubg.jpg', 'PUBG game', 1),
(6, 'P6', 'War Craft', 'Warcraft Game', 160, 'warcraft.jpg', 'Warcraft', 2),
(7, 'P7', 'The Witcher', 'Action Game', 100, 'witcher.jpg', 'Witcher', 2),
(8, 'P8', 'Portal', 'Strategy Game', 50, 'portal.jpg', 'Portal', 3),
(9, 'P9', 'Half Life', 'Good Game', 80, 'half-life.jpg', 'Half Life', 3),
(10, 'P10', 'Fallout', 'Fallout game', 150, 'fallout.jpg', 'Fallout', 1),
(11, 'P11', 'Destiny', 'Game Destiny', 200, 'destiny.jpg', 'Image', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `Contact` int(11) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `ConfirmPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `Username`, `FirstName`, `LastName`, `Email`, `Gender`, `Address`, `DOB`, `Contact`, `Password`, `ConfirmPassword`) VALUES
(1, 'gtmaashish11', 'Aashish', 'Gautam', 'gtmaashish11@gmail.com', 'Male', '68A Power Street', '1999-12-01', 1312312312, 'asdf', 'asdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Category_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
