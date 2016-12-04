-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 03, 2016 at 08:08 PM
-- Server version: 10.1.9-MariaDB-log
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCode` varchar(255) DEFAULT NULL,
  `productPrice` float DEFAULT NULL,
  `productImage` text,
  `productDesc` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `productCode`, `productPrice`, `productImage`, `productDesc`) VALUES
(1, 'The -X- files', 'spooky', 15, 'images/movie2.jpg', 'The X-Files (also known as The X-Files: Fight the Future) is a 1998 American science fiction film directed by Rob Bowman. Chris Carter wrote the screenplay. The story is by Carter and Frank Spotnitz.'),
(2, 'The -X-Files (Fight the Future DVD)', 'FTF', 25, 'images/movie1.jpg', 'In a small Texas town, a mysterious black substance emanating from the remains of a prehistoric human engulfs a young boy and his rescuers.'),
(3, 'Glow in the Dark Poster', 'glow', 25, 'images/fan2.jpg', 'This is a glow in the Dark handmade poster. '),
(4, 'Poster the Truth is Out there', 'poster20', 20, 'images/fan1.jpg', 'This is an original poster drawn by Fox Moulder himself.'),
(5, 'Hoody ', 'Hoody', 35, 'images/hoody.jpg', 'Made from genuine alien flesh,Protect yourself from all weather and also has cloaking abilities So aliens Cant see you. '),
(6, 'The -X- Files Socks', 'socks', 15, 'images/socks.jpg', 'A perfect gift for your alien loving friend that has everything !!! Can never have to many socks.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(200) NOT NULL,
  `user_image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `user_image`) VALUES
(56, 'admin', '$2y$10$aC23/AkYg96beQfzk8oPE.Bf.y3mH10sc.FNeF1YuRI71bEbyFOGW', 'images/mattSmith.jpg'),
(63, 'Ken', '$2y$10$0eoVN3mQehb2lBjaupTWGOgulVDVpQfI.77d9RM8AhpdBTVOlh1Bq', 'images/ken.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
