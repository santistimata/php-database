-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 06:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_mhs`
--

CREATE TABLE `data_mhs` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `gambar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_mhs`
--

INSERT INTO `data_mhs` (`id`, `nama`, `nim`, `email`, `jurusan`, `gambar`) VALUES
(1, 'santi', '22510006', 'santi@stimata.ac.id', 'Sistem Informasi', 'bocil1.jpg'),
(2, 'lainata', '23511212', 'lainata@stimata.ac.i', 'Teknik Informasi', 'bocil2.jpg'),
(3, 'Baru', '28931237', 'baru@stimata.ac.id', 'Manajemen Informasi', 'bocil3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `katalog_film`
--

CREATE TABLE `katalog_film` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `sutradara` varchar(50) NOT NULL,
  `durasi` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `poster` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `katalog_film`
--

INSERT INTO `katalog_film` (`id`, `judul`, `sutradara`, `durasi`, `genre`, `poster`) VALUES
(2, 'The Raid', 'Ario Sagantoro', '101 Menit', 'Action', 'The-Raid.jpg'),
(3, 'Dua Garis Biru', 'Gina S. Noer', '1 jam 53 menit', 'Drama Keluarga', 'dua-garis-biru-691x1024.jpg'),
(4, 'Cek Toko Sebelah', 'Ernest Prakasa', '98 menit', 'Drama keluarga, Komedi', 'Cek_Toko_Sebelah-768x960.jpg'),
(5, 'Ayat-ayat Cinta', 'Hanung Bramantyo', '121 menit', 'Drama, romansa', 'Ayat-ayat-Cinta-694x1024.jpg'),
(6, 'Critical Eleven', 'Monty Tiwa', '135 menit', 'Drama romantis', 'Critical-Eleven-768x960.jpg'),
(7, 'Gundala', 'Joko Anwar', '123 menit', 'Action', 'Gundala-695x1024.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_mhs`
--
ALTER TABLE `data_mhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `katalog_film`
--
ALTER TABLE `katalog_film`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_mhs`
--
ALTER TABLE `data_mhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `katalog_film`
--
ALTER TABLE `katalog_film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
