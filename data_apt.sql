-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 25, 2024 at 02:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_apt`
--

-- --------------------------------------------------------

--
-- Table structure for table `Pasien`
--

CREATE TABLE `Pasien` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `nomor_telepon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Pasien`
--

INSERT INTO `Pasien` (`id`, `nama`, `tanggal_lahir`, `alamat`, `jenis_kelamin`, `nomor_telepon`) VALUES
(9, 'aqil', '2024-03-05', 'asasasassasa', 'Laki-laki', '08123123'),
(12, 'Yaumaliza Putra', '2024-02-29', 'Ie Masen', 'Laki-laki', '0823874294'),
(21, 'zaki', '2022-07-20', 'iemasssen', 'Laki-laki', '089283384827'),
(27, 'aqil', '2003-02-08', 'blower', 'Laki-laki', '08217326424');

-- --------------------------------------------------------

--
-- Table structure for table `Rekam_Medis`
--

CREATE TABLE `Rekam_Medis` (
  `id` int(11) NOT NULL,
  `id_pasien` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `riwayat_kesehatan` text DEFAULT NULL,
  `hasil_pemeriksaan` text DEFAULT NULL,
  `resep_obat` text DEFAULT NULL,
  `catatan_dokter` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_apt`
--

CREATE TABLE `table_apt` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_apt`
--

INSERT INTO `table_apt` (`id`, `username`, `password`) VALUES
(1, 'user1', 'password1'),
(2, 'user2', 'password2'),
(3, 'admin', 'admin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Pasien`
--
ALTER TABLE `Pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Rekam_Medis`
--
ALTER TABLE `Rekam_Medis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indexes for table `table_apt`
--
ALTER TABLE `table_apt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Pasien`
--
ALTER TABLE `Pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `Rekam_Medis`
--
ALTER TABLE `Rekam_Medis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_apt`
--
ALTER TABLE `table_apt`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Rekam_Medis`
--
ALTER TABLE `Rekam_Medis`
  ADD CONSTRAINT `rekam_medis_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `Pasien` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
