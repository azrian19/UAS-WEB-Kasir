-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2024 at 08:17 AM
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
-- Database: `db_kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_trans`
--

CREATE TABLE `detail_trans` (
  `id` int(11) NOT NULL,
  `id_trans` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_trans`
--

INSERT INTO `detail_trans` (`id`, `id_trans`, `id_menu`) VALUES
(1, 8, 5),
(2, 9, 6);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `username` varchar(20) NOT NULL,
  `kejadian` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `tgl`, `username`, `kejadian`) VALUES
(1, '0000-00-00', 'kasir', 'Tambah transaksi Leo '),
(2, '0000-00-00', 'kasir', 'Tambah transaksi AZ '),
(3, '2024-01-25', 'kasir', 'Tambah transaksi z '),
(4, '2024-01-25', 'kasir', 'Tambah transaksi Azr '),
(5, '2024-01-25', 'kasir', 'Tambah transaksi Riri '),
(6, '2024-01-25', 'kasir', 'Tambah transaksi Rere '),
(7, '2024-01-25', 'kasir', 'Tambah transaksi Roro '),
(8, '2024-01-25', 'kasir', 'Tambah transaksi Rere '),
(9, '2024-01-26', 'kahfi', 'Edit menu Es Teh'),
(10, '2024-01-26', 'kahfi', 'Edit menu Nasi Uduk'),
(11, '2024-01-26', 'admin1', 'Edit menu Nasi Gurih');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL,
  `jenis` enum('Makanan','Minuman') NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama`, `harga`, `jenis`, `username`) VALUES
(1, 'Nasi Goreng Spesial', 40000, 'Makanan', 'admin'),
(2, 'Es Teh', 6000, 'Minuman', 'kahfi'),
(4, 'Mie Goreng', 15000, 'Makanan', 'kahfi'),
(8, 'Es Jeruk', 8000, 'Minuman', 'kahfi'),
(9, 'Nasi Uduk', 25000, 'Makanan', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `nik` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `status` enum('Kasir','Manajer','Admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`nik`, `nama`, `username`, `password`, `no_hp`, `status`) VALUES
('02', 'Khairul', 'kasir', '202cb962ac59075b964b07152d234b70', '08232133312', 'Kasir'),
('1221442142', 'Manaj', 'kahfi', '202cb962ac59075b964b07152d234b70', '0823312313', 'Manajer'),
('1234567890', 'Azrian', 'admin', '202cb962ac59075b964b07152d234b70', '08212332322', 'Admin'),
('210011231', 'Manajer', 'admin1', '202cb962ac59075b964b07152d234b70', '08231123312', 'Manajer');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trans` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `pelanggan` varchar(25) NOT NULL,
  `total` int(11) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_trans`, `tgl`, `pelanggan`, `total`, `username`) VALUES
(1, '2024-01-24', 'Rio', 0, 'kasir'),
(4, '2024-01-25', 'z', 0, 'kasir'),
(8, '2024-01-25', 'Roro', 45000, 'kasir'),
(9, '2024-01-25', 'Rere', 45000, 'kasir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_trans`
--
ALTER TABLE `detail_trans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_trans` (`id_trans`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`nik`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trans`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_trans`
--
ALTER TABLE `detail_trans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_trans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_trans`
--
ALTER TABLE `detail_trans`
  ADD CONSTRAINT `detail_trans_ibfk_1` FOREIGN KEY (`id_trans`) REFERENCES `transaksi` (`id_trans`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`username`) REFERENCES `pengguna` (`username`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`username`) REFERENCES `pengguna` (`username`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`username`) REFERENCES `pengguna` (`username`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
