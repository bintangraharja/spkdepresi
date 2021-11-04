-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2021 at 06:05 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spkdepresi`
--

-- --------------------------------------------------------

--
-- Table structure for table `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `kode_pengetahuan` int(11) NOT NULL,
  `kode_penyakit` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL,
  `mb` double NOT NULL,
  `md` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`kode_pengetahuan`, `kode_penyakit`, `kode_gejala`, `mb`, `md`) VALUES
(1, 1, 1, 0.75, 0.25),
(2, 1, 2, 0.75, 0.25),
(3, 1, 3, 0.75, 0.25),
(4, 1, 4, 0.85, 0.15),
(5, 1, 5, 0.75, 0.25),
(6, 1, 7, 0.75, 0.25),
(7, 2, 1, 0.75, 0.25),
(8, 2, 2, 0.75, 0.25),
(9, 2, 6, 0.7, 0.3),
(10, 2, 8, 0.65, 0.35),
(11, 2, 10, 0.75, 0.25),
(12, 2, 11, 0.7, 0.3),
(13, 2, 14, 0.65, 0.35),
(14, 2, 15, 0.8, 0.2),
(15, 2, 16, 0.75, 0.25),
(16, 2, 22, 0.3, 0.7),
(17, 3, 1, 0.75, 0.25),
(18, 3, 6, 0.7, 0.3),
(19, 3, 9, 0.65, 0.35),
(20, 3, 12, 0.65, 0.35),
(21, 3, 13, 0.6, 0.4),
(22, 3, 17, 0.75, 0.25),
(23, 3, 19, 0.75, 0.25),
(24, 3, 20, 0.65, 0.35),
(25, 3, 21, 0.75, 0.25),
(26, 3, 23, 0.7, 0.3),
(27, 3, 26, 0.75, 0.25),
(28, 3, 27, 0.75, 0.25),
(29, 4, 1, 0.75, 0.25),
(30, 4, 9, 0.65, 0.35),
(31, 4, 12, 0.65, 0.35),
(32, 4, 13, 0.6, 0.4),
(33, 4, 18, 0.75, 0.25),
(34, 4, 19, 0.75, 0.25),
(35, 4, 20, 0.65, 0.35),
(36, 4, 21, 0.75, 0.25),
(37, 4, 25, 0.8, 0.2),
(38, 4, 26, 0.75, 0.25),
(39, 4, 28, 0.75, 0.25),
(40, 4, 29, 0.85, 0.15),
(41, 3, 2, 0.2, 0.8),
(42, 4, 2, 0.2, 0.8),
(43, 2, 3, 0.1, 0.9),
(44, 3, 3, 0.1, 0.9),
(45, 4, 3, 0.1, 0.9),
(46, 2, 4, 0.1, 0.9),
(47, 3, 4, 0.1, 0.9),
(48, 3, 4, 0.1, 0.9),
(49, 2, 5, 0.1, 0.9),
(50, 3, 5, 0.1, 0.9),
(51, 4, 5, 0.1, 0.9),
(52, 1, 6, 0.2, 0.8),
(53, 4, 6, 0.2, 0.8),
(54, 2, 7, 0.1, 0.9),
(55, 3, 7, 0.1, 0.9),
(56, 4, 7, 0.1, 0.9),
(57, 1, 8, 0.2, 0.8),
(58, 3, 8, 0.2, 0.8),
(59, 4, 8, 0.2, 0.8),
(60, 1, 9, 0.1, 0.9),
(61, 2, 9, 0.1, 0.9),
(62, 1, 10, 0.1, 0.9),
(63, 3, 10, 0.1, 0.9),
(64, 4, 10, 0.1, 0.9),
(65, 1, 11, 0.3, 0.7),
(66, 3, 11, 0.3, 0.7),
(67, 4, 11, 0.3, 0.7),
(68, 1, 12, 0.1, 0.9),
(69, 2, 12, 0.1, 0.9),
(70, 1, 13, 0.1, 0.9),
(71, 1, 13, 0.1, 0.9),
(72, 1, 14, 0.1, 0.9),
(73, 3, 14, 0.1, 0.9),
(74, 4, 14, 0.1, 0.9),
(75, 1, 15, 0.2, 0.8),
(76, 3, 15, 0.2, 0.8),
(77, 4, 15, 0.2, 0.8),
(78, 1, 16, 0.1, 0.9),
(79, 3, 16, 0.75, 0.25),
(80, 4, 16, 0.75, 0.25),
(81, 1, 17, 0.1, 0.9),
(82, 2, 17, 0.1, 0.9),
(83, 4, 17, 0.1, 0.9),
(84, 1, 18, 0.1, 0.9),
(85, 2, 18, 0.1, 0.9),
(86, 3, 18, 0.1, 0.9),
(87, 1, 19, 0.1, 0.9),
(88, 2, 19, 0.1, 0.9),
(89, 1, 20, 0.1, 0.9),
(90, 2, 20, 0.1, 0.9),
(91, 1, 21, 0.1, 0.9),
(92, 2, 21, 0.1, 0.9),
(93, 1, 22, 0.3, 0.7),
(94, 3, 22, 0.65, 0.35),
(95, 4, 22, 0.65, 0.35),
(96, 1, 23, 0.2, 0.8),
(97, 2, 23, 0.2, 0.8),
(98, 4, 23, 0.2, 0.8),
(99, 1, 24, 0.2, 0.8),
(100, 2, 24, 0.2, 0.8),
(101, 4, 24, 0.65, 0.35),
(102, 1, 25, 0.2, 0.8),
(103, 2, 25, 0.2, 0.8),
(104, 3, 25, 0.2, 0.8),
(105, 1, 26, 0.1, 0.9),
(106, 2, 26, 0.1, 0.9),
(107, 1, 27, 0.1, 0.9),
(108, 2, 27, 0.1, 0.9),
(109, 4, 27, 0.1, 0.9),
(110, 1, 28, 0.1, 0.9),
(111, 2, 28, 0.1, 0.9),
(112, 3, 28, 0.1, 0.9),
(113, 1, 29, 0.1, 0.9),
(114, 2, 29, 0.1, 0.9),
(115, 3, 29, 0.1, 0.9);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` int(11) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
(1, 'Apa Anda sedang merasa sedih?'),
(2, 'Anda merasa kelelahan melakukan aktivitas'),
(3, 'Anda kurang dapat berkonsentrasi'),
(4, 'Anda mudah bosan atau jenuh'),
(5, 'Anda sering melamun'),
(6, 'Anda merasa tidak bersemangat'),
(7, 'Anda sering merasa galau'),
(8, 'Anda pesimis dengan masa depan anda'),
(9, 'Anda sering menangis dengan alasan yang tidak jelas'),
(10, 'Anda mempunyai gangguan tidur'),
(11, 'Anda sering merasa cemas'),
(12, 'Anda merasa kecewa dengan diri sendiri'),
(13, 'Anda merasa terganggu dengan segala hal'),
(14, 'Anda lebih sering terlihat murung'),
(15, 'Anda kehilangan minat dalam hobi yang dulu disenangi'),
(16, 'Anda merasa kesepian'),
(17, 'Anda mempunyai perasaan bersalah'),
(18, 'Anda mempunyai perasaan dihukum'),
(19, 'Anda mempunyai perasaan benci terhadap diri sendiri'),
(20, 'Anda mudah tersinggung'),
(21, 'Anda kehilangan selera makan'),
(22, 'Anda merasa khawatir akan penampilan'),
(23, 'Anda mudah marah pada orang disekitar'),
(24, 'Anda lebih suka menyendiri'),
(25, 'Anda memiliki pikiran untuk bunuh diri'),
(26, 'Anda merasa kesulitan mengambil keputusan'),
(27, 'Anda merasa sulit melakuan kegiatan dengan baik'),
(28, 'Terdapat perubahan signifikan pada berat badan'),
(29, 'Anda merasa kurang percaya diri');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `kondisi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kondisi`
--

INSERT INTO `kondisi` (`id`, `kondisi`) VALUES
(1, 'Sangat Setuju'),
(2, 'Setuju'),
(3, 'Biasa Saja'),
(4, 'Kurang Setuju'),
(5, 'Tidak Setuju');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` int(11) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `det_penyakit` varchar(500) NOT NULL,
  `srn_penyakit` varchar(500) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `det_penyakit`, `srn_penyakit`, `gambar`) VALUES
(1, 'Gangguan Mood', '', '', ''),
(2, 'Depresi Ringan', '', '', ''),
(3, 'Depresi Sedang', '', '', ''),
(4, 'Depresi Berat', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `kode_post` int(11) NOT NULL,
  `nama_post` varchar(255) NOT NULL,
  `det_post` varchar(500) NOT NULL,
  `srn_post` varchar(500) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`kode_pengetahuan`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`kode_post`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `kode_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `kode_post` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
