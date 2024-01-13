-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2024 at 07:15 AM
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
-- Database: `tiket_bus`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(100) NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `route_id` varchar(255) NOT NULL,
  `customer_route` varchar(200) NOT NULL,
  `booked_amount` int(100) NOT NULL,
  `booked_seat` varchar(100) NOT NULL,
  `booking_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `booking_id`, `customer_id`, `route_id`, `customer_route`, `booked_amount`, `booked_seat`, `booking_created`) VALUES
(70, 'GPCAJ70', 'CUST-370543', 'RT-395666', 'SEMARANG &rarr; PATI', 50, '2', '2023-12-23 20:19:27'),
(71, 'STIFR71', 'CUST-6491041', 'RT-6953262', 'SEMARANG &rarr; JOGJA', 50, '1', '2023-12-23 20:21:27'),
(72, 'APD2A72', 'CUST-661242', 'RT-863863', 'SEMARANG &rarr; SURABAYA', 110, '3', '2023-12-23 20:21:47'),
(73, '7C7Y673', 'CUST-661242', 'undefined', 'SEMARANG &rarr; TULUNGAGUNG', 0, '1', '2023-12-26 18:23:46'),
(74, '00OAY74', 'CUST-661242', 'RT-1220265', 'SEMARANG &rarr; CIREBON', 75, '32', '2023-12-26 18:24:29'),
(75, 'Z9KUB75', 'CUST-6491041', 'RT-1725764', 'SEMARANG &rarr; JAKARTA', 126, '2', '2023-12-27 07:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` int(100) NOT NULL,
  `bus_no` varchar(255) NOT NULL,
  `bus_assigned` tinyint(1) NOT NULL DEFAULT 0,
  `bus_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `bus_no`, `bus_assigned`, `bus_created`) VALUES
(55, 'K-001-HR', 1, '2023-12-23 20:04:37'),
(56, 'K-002-HR', 1, '2023-12-23 20:04:47'),
(57, 'K-003-HR', 1, '2023-12-23 20:05:00'),
(58, 'K-004-HR', 1, '2023-12-23 20:05:20'),
(59, 'K-005-HR', 1, '2023-12-23 20:05:29'),
(60, 'K-008-AA', 0, '2024-01-07 20:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(100) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_phone` varchar(10) NOT NULL,
  `customer_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_id`, `customer_name`, `customer_phone`, `customer_created`) VALUES
(41, 'CUST-6491041', 'Berta Setiyono', '0895395291', '2023-12-23 20:10:46'),
(42, 'CUST-661242', 'Fajar ashari', '0700200120', '2023-12-23 20:11:21'),
(43, 'CUST-370543', 'Firmansyah Putra', '0896764342', '2023-12-23 20:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(100) NOT NULL,
  `route_id` varchar(255) NOT NULL,
  `bus_no` varchar(155) NOT NULL,
  `route_cities` varchar(255) NOT NULL,
  `route_dep_date` date NOT NULL,
  `route_dep_time` time NOT NULL,
  `route_step_cost` int(100) NOT NULL,
  `route_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `route_id`, `bus_no`, `route_cities`, `route_dep_date`, `route_dep_time`, `route_step_cost`, `route_created`) VALUES
(61, 'RT-5133361', 'K-002-HR', 'SEMARANG,TULUNGAGUNG', '2023-12-25', '16:41:00', 70, '2023-12-19 14:39:43'),
(62, 'RT-6953262', 'K-001-HR', 'SEMARANG,JOGJA', '2023-12-28', '08:00:00', 50, '2023-12-23 20:07:42'),
(63, 'RT-863863', 'K-005-HR', 'SEMARANG,SURABAYA', '2023-12-29', '19:00:00', 110, '2023-12-23 20:08:56'),
(64, 'RT-1725764', 'K-003-HR', 'SEMARANG,JAKARTA', '2023-12-29', '20:00:00', 126, '2023-12-23 20:09:36'),
(65, 'RT-1220265', 'K-004-HR', 'SEMARANG,CIREBON', '2023-12-28', '15:30:00', 75, '2023-12-23 20:10:27'),
(66, 'RT-395666', 'K-006-HR', 'SEMARANG,PATI', '2023-12-27', '16:20:00', 50, '2023-12-23 20:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `bus_no` varchar(155) NOT NULL,
  `seat_booked` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`bus_no`, `seat_booked`) VALUES
('K-001-AA', NULL),
('K-002-AA', NULL),
('K-003-HR', '2'),
('K-004-HR', '32'),
('K-005-HR', '3'),
('K-008-AA', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_created` datetime NOT NULL DEFAULT current_timestamp(),
  `role` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_fullname`, `user_name`, `user_password`, `user_created`, `role`) VALUES
(1, 'Berta Setiyono', 'admin', '$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6', '2021-06-02 13:55:21', 'admin'),
(2, 'Test Admin', 'testadmin', '$2y$10$A2eGOu1K1TSBqMwjrEJZg.lgy.FmCUPl/l5ugcYOXv4qKWkFEwcqS', '2021-10-17 21:10:07', 'admin'),
(4, 'bert sety', 'berta', '$2y$10$sSaTCukWShCEszSXwj3pWO3j6JBW/bGr4EnBGhYA7JiJXvR0drdv6', '2023-12-18 10:26:05', 'customer'),
(5, 'Fajar ashari', 'test1', '$2y$10$8WV5dzgU99Pc5egfGgB0gutKP/6v7PF/ZyzuyZxZ4zyXHRfkFqwAe', '2023-12-23 21:00:03', 'customer'),
(6, 'Fire Mane', 'fireman', '$2y$10$e5aSL7m4nf6kQrKZjaHDX.cHUEcqn7mkSsc07IxfLBj8c.t3W/nL2', '2023-12-26 19:21:16', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_id` (`booking_id`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`bus_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
