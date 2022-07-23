-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2022 at 05:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be16_cr11_tamara_animaladoption`
--
CREATE DATABASE IF NOT EXISTS `be16_cr11_tamara_animaladoption` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `be16_cr11_tamara_animaladoption`;

-- --------------------------------------------------------

--
-- Table structure for table `adoption`
--

CREATE TABLE `adoption` (
  `id` int(11) NOT NULL,
  `fk_pet_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `adopt_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adoption`
--

INSERT INTO `adoption` (`id`, `fk_pet_id`, `fk_user_id`, `adopt_date`) VALUES
(1, 2, 11, '2022-07-23');

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `breed` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  `hobbies` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `status` enum('avaliable','adopted') DEFAULT 'avaliable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`id`, `name`, `picture`, `breed`, `age`, `type`, `description`, `hobbies`, `location`, `status`) VALUES
(1, 'Athos', 'athos.jpg', 'Brittish Shorthair', 5, 'S', 'Cream', 'Loves playing with toys', 'White Street 20', 'avaliable'),
(2, 'Blacky', 'blacky.jpg', 'Maine Coon', 2, 'M', 'White', 'Hes beautiful and he knows it ', 'Black Street 18.', 'adopted'),
(3, 'Chip', 'chip.jpg', 'European Shorthair', 9, 'M', 'Orange tabby', 'Main in the hood', 'Orange Street 30.', 'avaliable'),
(4, 'Pablo', 'pablo.jpg', 'French Bulldog', 6, 'M', 'Cream', 'Loves bum-pets', 'Dog Street 22', 'avaliable'),
(5, 'Dingo', 'dingo.jpg', 'Standard Schnautzer', 9, 'L', 'Black', 'Loves snack time', 'Yellow Street 30.', 'avaliable'),
(6, 'Lucky', 'lucky.jpg', 'Pembroke Welsh Corgi', 1, 'M', 'Standard', 'Always up for cuddles', 'Red Street 11', 'avaliable'),
(7, 'Grape', 'grape.jpg', 'Hamster', 2, 'XS', 'Silver white', 'Loves eating what hes named af', 'Purple Street 20.', 'avaliable'),
(8, 'Snowball', 'snowball.jpg', 'Chincilla', 3, 'XS', 'White', 'As classy as sassy', 'Blue Street 20', 'avaliable'),
(9, 'Odis', 'odis.jpg', 'German Shepperd', 8, 'XL', 'Standars', 'Old but gold', 'Pink Street 40', 'avaliable'),
(10, 'Zeus', 'zeus.jpg', 'Great Dane', 8, 'XL', 'Black', 'Gentle giant', 'Green Street 80', 'avaliable'),
(11, 'Walkie-Talkie', 'walkie.jpg', 'Grey Parrot', 3, 'S', 'Grey', 'Walks around and talks all day', 'Beige Street 10', 'avaliable'),
(12, 'Foxy', 'foxy.jpg', 'Fox', 2, 'M', 'Standard', 'Cuddly wildling', 'Foxy Street', 'avaliable');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `address` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('user','adm') NOT NULL DEFAULT 'user',
  `date_of_birth` date DEFAULT NULL,
  `telnumber` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `picture`, `address`, `email`, `password`, `status`, `date_of_birth`, `telnumber`) VALUES
(1, 'John', 'Doe', 'john.jpg', 'Black Street 30., Vienna, 1100', 'john@gmail.com', '1234567', 'adm', '1990-01-01', 0),
(2, 'Mary', 'Doe', 'mary.jpg', 'White Street 20', 'mary@gmail.com', '123321', 'user', '1990-08-12', 0),
(3, 'Tamara', 'Zolnajic', 'avatar.png', '', 'zolnajic.tamara@gmail.com', '779c3dbb3c8019cbf34123832f1f9cb79d4887c4cb7fe0173bb471ca1772ba20', 'user', '1997-08-13', 0),
(4, 'Aleksandar', 'Jurcak', 'avatar.png', '', 'aleksandar.jurcak996@gmail.com', '3127c24e4f74360b95a050ede8609439e4fe0726512da8d2d34564b19c9733bb', 'adm', '1996-05-19', 0),
(11, 'Jim', 'Doe', 'avatar.png', 'Black Street 20', 'jim@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'user', '2001-02-01', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adoption`
--
ALTER TABLE `adoption`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pet_id` (`fk_pet_id`),
  ADD KEY `fk_user_id` (`fk_user_id`);

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adoption`
--
ALTER TABLE `adoption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
