-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2020 at 05:31 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crudnative`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nm_admin` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nm_admin`, `username`, `password`, `level`) VALUES
(1, 'adityapermadi', 'admin', '12345', 'admin'),
(2, 'gusti ngurah', 'user', '12345', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `datapengunjung`
--

CREATE TABLE `datapengunjung` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `notelepon` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datapengunjung`
--

INSERT INTO `datapengunjung` (`id`, `nama`, `alamat`, `notelepon`, `email`) VALUES
(1, 'Ketut JayaArta', 'Singaraja,Jalan Bukit Lempuyang', '085687589235', 'ketutjaya2@gmail.com'),
(2, 'I Gusti Putu Aditya Permadi', 'Jinangdalem,Jalan bukit patas', '085965900427', 'adityapermadi53@gmail.com'),
(3, 'Kadek Jaya Mahendra', 'Karangasem,Jalan ahmadyani', '087765543456', 'jayamahendra1@gmail.com'),
(4, 'Putu Abimanyu', 'Seririt,Jalan Ponogoro', '08675645678', 'abimanyu42@gmail.com'),
(5, 'agungcandra', 'panji ,jalan candragupta', '087567847123', 'aditya.permadi@undiksha.ac.id'),
(8, 'dhiko pradnyana', 'panji ,jalan candragupta', '087567847123', 'permadiaditya53@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `datapengunjung`
--
ALTER TABLE `datapengunjung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `datapengunjung`
--
ALTER TABLE `datapengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
