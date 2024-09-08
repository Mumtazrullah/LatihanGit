-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2024 at 03:19 AM
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
-- Database: `bukuperpus`
--
CREATE DATABASE IF NOT EXISTS `bukuperpus` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bukuperpus`;

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_books`
--

CREATE TABLE `borrowed_books` (
  `id` int(11) NOT NULL,
  `bookTitle` varchar(255) NOT NULL,
  `borrowerName` varchar(255) NOT NULL,
  `borrowDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `created_at`) VALUES
(1, 'Budi', 'budi@gmail.com', '2024-09-07 12:54:48'),
(2, 'Hafizh', 'hafizh@gmail.com', '2024-09-07 12:56:57'),
(3, 'Januardi', 'h@gmail.com', '2024-09-07 12:57:12'),
(4, 'Budi', 'budi@gmail.com', '2024-09-07 12:58:04'),
(5, 'Budi', 'sapra@gmail.com', '2024-09-07 12:59:43'),
(6, 'Budi', 'pasien@pasien.com', '2024-09-07 12:59:58'),
(7, 'Januardi', 'sapra@gmail.com', '2024-09-07 13:05:14'),
(8, 'Januardi', 'sapra@gmail.com', '2024-09-07 13:06:56'),
(9, 'Januardi', 'pasien@pasien.com', '2024-09-07 13:10:24'),
(10, 'Januardi', 'h@gmail.com', '2024-09-07 13:12:05'),
(11, 'Budi', 'budi@gmail.com', '2024-09-07 13:14:27'),
(12, 'Januardi', 'januardi@gmail.com', '2024-09-07 13:16:54'),
(13, 'Kurniawan', 'kurniawan@yahoo.com', '2024-09-07 13:18:12'),
(14, 'dady', 'dady@gmail.com', '2024-09-07 13:20:07'),
(15, 'Januardi', 'Januardiakbar@gmail.com', '2024-09-07 13:22:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
