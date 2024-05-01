-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2023 at 11:50 AM
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
-- Database: `milkmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(10, 2, 'Siddhant Kulkarni', 'kulkarni.sid0809@gmail.com', '9764829011', 'Good service');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(11) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(10, 2, 'Siddhant Kulkarni', '9764829011', 'kulkarni.sid0809@gmail.com', 'cash on delivery', 'flat no. 2, as, sd, India - 411009', ', Camel Milk (1) ', 350, '04-Sep-2023', 'completed'),
(11, 2, 'a', '9764829011', 'kulkarni.sid0809@gmail.com', 'cash on delivery', 'flat no. 43, b, pune, india - 123', ', Camel Milk (1) , Hazzelnut Milk (1) ', 750, '25-Sep-2023', 'pending'),
(12, 2, 'Siddhant Kulkarni', '9764829011', 'kulkarni.sid0809@gmail.com', 'cash on delivery', 'flat no. 401, Pushpamedh Apartments, Tulshibaugwale Colony, Sahakarnagar 2, Pune, India - 411009', ', Hazzelnut Milk 1L (1) ', 400, '27-Sep-2023', 'pending'),
(13, 2, 'Siddhant Kulkarni', '9764829011', 'kulkarni.sid0809@gmail.com', 'cash on delivery', 'flat no. 401, Pushpamedh Apartments, Tulshibaugwale Colony, Sahakarnagar 2, Pune, India - 411009', ', Camel Milk 1L (1) ', 350, '27-Sep-2023', 'pending'),
(14, 2, 'Gauri Apte', '9890250468', 'gauriapte195@gmail.com', 'cash on delivery', 'flat no. 1, Swanand Society , Sahakar Nagar 2, Pune, India - 411009', ', Pistachio Milk 1L (1) ', 350, '28-Sep-2023', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'Camel Milk 1L', 350, 'Camel Milk pack.png'),
(2, 'Hazzelnut Milk 1L', 400, 'hazzlenut_milk_package-removebg-preview.png'),
(3, 'Cow Milk 1L', 200, 'Cow_Milk_Pack-removebg-preview.png'),
(4, 'Almond Milk 1L', 275, 'Almond_Milk_package_2-removebg-preview.png'),
(5, 'Pistachio Milk 1L', 350, 'Pistachio_Milk_package_2-removebg-preview.png'),
(6, 'Rice Milk 1L', 250, 'Rice_Milk_Package-removebg-preview.png'),
(7, 'Soy Milk 1L', 330, 'Soy_Milk_package-removebg-preview.png'),
(8, 'Walnut Milk 1L', 300, 'Walnut-Milk-package-removebg-preview.png'),
(9, 'Cashew Milk 1L', 250, 'Cashew_Milk_package-removebg-preview.png'),
(10, 'Sheep Milk 1L', 325, 'Sheep_Milk_pack-removebg-preview.png'),
(11, 'Oat Milk 1L', 225, 'Oat_Milk_package_2-removebg-preview.png'),
(12, 'Goat Milk 1L', 275, 'Goat_s_Milk_package-removebg-preview.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Siddhant Kulkarni', 'kulkarni.sid0809@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(2, 'abc', 's@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(3, 'Malhar Maid', 'maidmalhar@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
