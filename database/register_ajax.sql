-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 20, 2024 at 04:26 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register_ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int NOT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `postal` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `f_name`, `l_name`, `email`, `pwd`, `postal`, `address`, `created_at`, `updated_at`) VALUES
(1, 'sulabh', 'kapur', 'sulabh@gmail.com', '12345', '141012', 'ludhiana', '2024-04-16 08:20:37', '2024-04-16 08:20:37'),
(2, 'sulabh', 'kapur', 'sulabh@gmail.com', '12345', '141012', 'ludhiana', '2024-04-16 08:42:45', '2024-04-16 08:42:45'),
(3, 'sulabh', 'kapur', 'sulabh@gmail.com', '12345', '141012', 'ludhiana', '2024-04-16 08:43:52', '2024-04-16 08:43:52'),
(4, 'sulabh', 'kapur', 'sulabh@gmail.com', '12345', '141012', 'ludhiana', '2024-04-16 08:44:56', '2024-04-16 08:44:56'),
(5, 'sulabh', 'kapur', 'sulabh@gmail.com', '12345', '141012', 'ludghiana', '2024-04-16 09:24:49', '2024-04-16 09:24:49'),
(6, 'sulabh', 'kapur', 'sulabh@gmail.com', '12345', '14410112', 'ludhiana', '2024-04-16 09:25:25', '2024-04-16 09:25:25'),
(8, 'sulabh', 'kapur', 'sulabh@gmail.com', 'sulabh', '14102', 'kkkkkk', '2024-04-16 09:29:19', '2024-04-16 09:29:19'),
(9, 'sulabh', 'kapur', 'sulabh@gmail.com', '12345', 'ludhiana', 'ludhiana', '2024-04-16 09:30:12', '2024-04-16 09:30:12'),
(10, 'sulabh', 'kapur', 'sulabh', '12345', '141012', 'ludhiana', '2024-04-16 09:31:12', '2024-04-16 09:31:12'),
(19, 'sulabh', 'kapur', 'sulabh@gmail.com', 'sulabh@123', '141012', 'ludhiana', '2024-04-16 10:26:50', '2024-04-16 10:26:50'),
(20, 'sulabh', 'kapur', 'sulabh@gmail.com', '123', '14111', 'ludhiana', '2024-04-16 11:08:25', '2024-04-16 11:08:25'),
(21, 'sulabh', 'kapur', 'sulabh@gmail.com', '123', '141012', 'ludhiana', '2024-04-16 11:13:33', '2024-04-16 11:13:33'),
(22, 'sulabh', 'kapur', 'sulabh@gmail.com', '1234', '414141', '11111', '2024-04-16 14:31:23', '2024-04-16 14:31:23'),
(23, 'edwwd', 'dwedwdfw', 'sulabh@gmail.com', '111111', '11111', '1111', '2024-04-16 14:32:37', '2024-04-16 14:32:37'),
(24, 'SULABH', 'KAPUR', 'sulabh3@gmail.com', '1235', '141012', 'Ludhiana', '2024-04-17 09:44:02', '2024-04-17 09:44:02'),
(25, 'sulabh', 'kapur', 'sulabh55@gmail.com', '111111', '141012', 'amritsar', '2024-04-17 09:45:13', '2024-04-17 09:45:13'),
(26, 'sulabh', 'kapur', 'sulabh5@gmail.com', '111111', '141012', 'amritsar', '2024-04-17 09:45:28', '2024-04-17 09:45:28'),
(27, 'amit', 'yadav', 'amit@gmail.com', '1414', '1410052', 'ludhiana', '2024-04-17 09:46:40', '2024-04-17 09:46:40'),
(28, 'sulabh', 'kapur', 'sulabh11@gmail.com', '1111111', '141012', 'moga', '2024-04-17 09:53:52', '2024-04-17 09:53:52'),
(29, 'gunnu', 'singh', 'gunnu@gmail.com', '1414', '141222', 'model town', '2024-04-17 09:54:47', '2024-04-17 09:54:47'),
(30, 'ssdwd', 'wdwdwd', 'wdwdwdwd', 'dwdwdwddw', 'dwdww', 'dwdwdw', '2024-04-17 09:55:15', '2024-04-17 09:55:15'),
(31, 'sulabh', 'kapur', 'sulab66@gmail.com', '2222', '14145', 'ckmcbwksc', '2024-04-17 09:57:27', '2024-04-17 09:57:27'),
(32, 'sulabh', 'kapur', 'dnwndlkncl', 'cew/cmwel;m;lwe', 'eljflewl;', 'nmelflewk', '2024-04-17 09:59:59', '2024-04-17 09:59:59'),
(33, 'xaasxx', 'csacsaqcac', 'ascasac', 'csaacscac', 'csaasacssac', 'sassasa', '2024-04-17 10:00:42', '2024-04-17 10:00:42'),
(34, 'cascs', 'accc', 'cac', 'cac', 'cacacasc', 'accascca', '2024-04-17 10:01:34', '2024-04-17 10:01:34'),
(35, 'casc', 'cascc', 'cascs', 'cacdas', 'casasc', 'acscsaas', '2024-04-17 10:03:32', '2024-04-17 10:03:32'),
(36, 'dsadwad', 'adsadas', 'xsaxaxs', 'sxsasaas', 'sasaasasd', 'sadsadsasad', '2024-04-17 10:04:33', '2024-04-17 10:04:33'),
(37, 'fsdsf', 'dfdsffsd', 'fdssfds', 'fdfsfdssf', 'fddffsdf', 'fdsdsfdfs', '2024-04-17 10:08:44', '2024-04-17 10:08:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
