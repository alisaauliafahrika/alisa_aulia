-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2026 at 02:38 AM
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
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `hak_akses`) VALUES
(1, 'admin', '123', 1),
(2, 'admin1', '202cb962ac59075b964b07152d234b70', 2),
(3, 'admin', '91022ad929eaa50da47fb4d9e820b6cc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `harga_per_kilo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`harga_per_kilo`) VALUES
(50000);

-- --------------------------------------------------------

--
-- Table structure for table `pakaian`
--

CREATE TABLE `pakaian` (
  `pakaian_id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `pakaian_jenis` varchar(255) NOT NULL,
  `pakaian_jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pakaian`
--

INSERT INTO `pakaian` (`pakaian_id`, `transaksi_id`, `pakaian_jenis`, `pakaian_jumlah`) VALUES
(1, 1, 'kemeja', 5),
(2, 2, 'jeans', 2),
(3, 3, 'jaket', 2),
(4, 4, 'kaos', 8),
(5, 5, 'celana', 5),
(6, 6, 'gamis', 4),
(7, 7, 'gamis', 7),
(8, 8, 'kaos', 12),
(9, 9, 'kemeja', 4),
(10, 10, 'jilbab', 7),
(11, 11, 'jaket', 2),
(12, 12, 'daster', 6),
(13, 13, 'jeans', 3),
(14, 14, 'kemeja', 5),
(15, 15, 'gamis', 5),
(16, 1, 'kaos', 8),
(17, 2, 'seragam', 4),
(18, 3, 'jaket', 4),
(19, 4, 'kaos', 6),
(20, 5, 'kemeja', 6);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `pelanggan_nama` varchar(255) NOT NULL,
  `pelanggan_hp` varchar(20) NOT NULL,
  `pelanggan_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `pelanggan_nama`, `pelanggan_hp`, `pelanggan_alamat`) VALUES
(1, 'Dayah', '08555222447', 'Kliris'),
(2, 'Aca', '08552462487', 'Pasigitan'),
(3, 'Muna', '08569321546', 'Gonoharjo'),
(4, 'Kia', '08996655223', 'Nglimut'),
(5, 'Laura', '0855479654', 'Kliris'),
(6, 'Sifa', '0896523145', 'Gunungsari'),
(7, 'Lina', '0877425639', 'Gempol'),
(8, 'Muna', '08996325418', 'Simbang'),
(9, 'Jihan', '089965231456', 'Dukuh'),
(10, 'Nuca', '085523694125', 'Gedongan');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_tgl` date NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL,
  `transaksi_berat` int(11) NOT NULL,
  `transaksi_tgl_selesai` date NOT NULL,
  `transaksi_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_tgl`, `pelanggan_id`, `transaksi_harga`, `transaksi_berat`, `transaksi_tgl_selesai`, `transaksi_status`) VALUES
(1, '2026-06-08', 1, 100000, 2, '2026-06-10', 1),
(2, '2026-06-07', 2, 50000, 1, '2026-06-09', 0),
(3, '2026-07-05', 3, 150000, 3, '2026-07-07', 0),
(4, '2026-07-04', 4, 50000, 1, '2026-07-06', 2),
(5, '2026-07-06', 5, 100000, 2, '2026-07-08', 2),
(6, '2026-08-05', 6, 200000, 4, '2026-08-07', 1),
(7, '2026-08-20', 7, 100000, 2, '2026-08-22', 2),
(8, '2026-08-15', 8, 200000, 4, '2026-08-17', 1),
(9, '2026-08-22', 9, 200000, 4, '2026-08-24', 2),
(10, '2026-08-05', 2, 50000, 1, '2026-08-07', 0),
(11, '2026-08-30', 2, 200000, 4, '2026-09-01', 2),
(12, '2026-09-04', 4, 50000, 1, '2026-09-06', 2),
(13, '2026-09-02', 9, 100000, 2, '2026-09-04', 2),
(14, '2026-07-04', 9, 200000, 4, '2026-07-06', 0),
(15, '2026-05-09', 7, 50000, 1, '2026-05-11', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakaian`
--
ALTER TABLE `pakaian`
  ADD PRIMARY KEY (`pakaian_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pakaian`
--
ALTER TABLE `pakaian`
  MODIFY `pakaian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111250;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
