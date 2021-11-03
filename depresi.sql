-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Nov 2021 pada 14.02
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fajar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator'),
('RYU', 'f3770595e0cb4d9a988bd5da98d2187d', 'Rizky Yuni Utami'),
('januriawan', '21232f297a57a5a743894a0e4a801fc3', 'Fajar Januriawan'),
('nehe', '123', 'Nehemia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `kode_pengetahuan` int(11) NOT NULL,
  `kode_penyakit` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL,
  `mb` double(11,1) NOT NULL,
  `md` double(11,1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`kode_pengetahuan`, `kode_penyakit`, `kode_gejala`, `mb`, `md`) VALUES
(1, 1, 1, 1.0, 0.0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` int(11) NOT NULL,
  `nama_gejala` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
(1, 'Apakah kamu kelelahan saat beraktivitas di siang hari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL DEFAULT '0',
  `penyakit` text NOT NULL,
  `gejala` text NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `hasil_nilai` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `tanggal`, `penyakit`, `gejala`, `hasil_id`, `hasil_nilai`) VALUES
(201, '2018-02-20 13:25:09', 'a:10:{i:10;s:6:\"0.6480\";i:11;s:6:\"0.6000\";i:8;s:6:\"0.6000\";i:13;s:6:\"0.4800\";i:9;s:6:\"0.4720\";i:4;s:6:\"0.2960\";i:5;s:6:\"0.2400\";i:1;s:6:\"0.1200\";i:12;s:6:\"0.1200\";i:7;s:6:\"0.1200\";}', 'a:5:{i:1;s:1:\"3\";i:2;s:1:\"1\";i:3;s:1:\"5\";i:5;s:1:\"4\";i:7;s:1:\"2\";}', 10, '0.6480'),
(202, '2018-02-20 15:51:20', 'a:9:{i:3;s:6:\"1.0000\";i:2;s:6:\"0.8240\";i:5;s:6:\"0.2400\";i:10;s:6:\"0.1200\";i:12;s:6:\"0.1200\";i:9;s:6:\"0.1200\";i:7;s:6:\"0.1200\";i:1;s:6:\"0.1200\";i:4;s:6:\"0.1200\";}', 'a:4:{i:1;s:1:\"3\";i:7;s:1:\"6\";i:14;s:1:\"1\";i:15;s:1:\"2\";}', 3, '1.0000'),
(204, '2018-02-20 18:19:53', 'a:2:{i:2;s:6:\"0.6000\";i:13;s:6:\"0.4800\";}', 'a:4:{i:1;s:1:\"5\";i:3;s:1:\"2\";i:5;s:1:\"5\";i:7;s:1:\"2\";}', 2, '0.6000'),
(205, '2018-02-20 18:20:05', 'a:2:{i:9;s:6:\"0.8000\";i:7;s:6:\"0.6000\";}', 'a:2:{i:38;s:1:\"3\";i:40;s:1:\"2\";}', 9, '0.8000'),
(206, '2018-02-20 20:18:58', 'a:4:{i:10;s:6:\"1.0000\";i:9;s:6:\"0.6000\";i:7;s:6:\"0.6000\";i:11;s:6:\"0.4000\";}', 'a:4:{i:38;s:1:\"3\";i:40;s:1:\"3\";i:41;s:1:\"1\";i:42;s:1:\"4\";}', 10, '1.0000'),
(207, '2018-02-20 20:19:30', 'a:2:{i:5;s:6:\"0.8000\";i:1;s:6:\"0.4800\";}', 'a:2:{i:12;s:1:\"3\";i:16;s:1:\"1\";}', 5, '0.8000'),
(209, '2018-02-21 05:43:56', 'a:7:{i:2;s:6:\"0.6832\";i:5;s:6:\"0.2400\";i:12;s:6:\"0.1200\";i:10;s:6:\"0.1200\";i:7;s:6:\"0.1200\";i:1;s:6:\"0.1200\";i:4;s:6:\"0.1200\";}', 'a:3:{i:1;s:1:\"3\";i:3;s:1:\"2\";i:5;s:1:\"5\";}', 2, '0.6832'),
(210, '2018-02-21 09:13:13', 'a:0:{}', 'a:3:{i:1;s:1:\"8\";i:3;s:1:\"9\";i:6;s:1:\"7\";}', 0, ''),
(211, '2018-02-21 09:35:01', 'a:1:{i:12;s:6:\"0.4800\";}', 'a:1:{i:35;s:1:\"3\";}', 12, '0.4800'),
(212, '2018-02-21 10:18:30', 'a:8:{i:5;s:6:\"0.1600\";i:10;s:6:\"0.0800\";i:12;s:6:\"0.0800\";i:9;s:6:\"0.0800\";i:7;s:6:\"0.0800\";i:4;s:6:\"0.0800\";i:1;s:6:\"0.0800\";i:2;s:6:\"0.0800\";}', 'a:1:{i:1;s:1:\"4\";}', 5, '0.1600'),
(213, '2018-02-21 11:48:56', 'a:4:{i:4;s:6:\"0.2704\";i:11;s:6:\"0.2400\";i:8;s:6:\"0.2400\";i:10;s:6:\"0.2000\";}', 'a:3:{i:1;s:1:\"5\";i:2;s:1:\"4\";i:4;s:1:\"4\";}', 4, '0.2704'),
(214, '2018-02-21 11:50:21', 'a:9:{i:13;s:6:\"0.4800\";i:2;s:6:\"0.3744\";i:5;s:6:\"0.1600\";i:12;s:6:\"0.0800\";i:10;s:6:\"0.0800\";i:7;s:6:\"0.0800\";i:4;s:6:\"0.0800\";i:1;s:6:\"0.0800\";i:9;s:6:\"0.0800\";}', 'a:3:{i:1;s:1:\"4\";i:3;s:1:\"4\";i:7;s:1:\"2\";}', 13, '0.4800'),
(215, '2018-02-21 11:52:04', 'a:3:{i:7;s:6:\"0.6400\";i:5;s:6:\"0.6400\";i:2;s:6:\"0.6000\";}', 'a:4:{i:7;s:1:\"8\";i:15;s:1:\"3\";i:16;s:1:\"2\";i:39;s:1:\"2\";}', 7, '0.6400'),
(216, '2018-02-21 11:52:21', 'a:2:{i:2;s:6:\"1.0000\";i:11;s:6:\"0.8560\";}', 'a:4:{i:5;s:1:\"5\";i:15;s:1:\"1\";i:36;s:1:\"2\";i:42;s:1:\"3\";}', 2, '1.0000'),
(217, '2018-02-21 12:54:09', 'a:3:{i:9;s:6:\"0.8000\";i:1;s:6:\"0.6400\";i:5;s:6:\"0.3200\";}', 'a:3:{i:5;s:1:\"2\";i:12;s:1:\"2\";i:16;s:1:\"4\";}', 9, '0.8000'),
(218, '2018-02-21 12:54:43', 'a:3:{i:9;s:6:\"0.8000\";i:1;s:6:\"0.6400\";i:5;s:6:\"0.3200\";}', 'a:3:{i:5;s:1:\"2\";i:12;s:1:\"2\";i:16;s:1:\"4\";}', 9, '0.8000'),
(221, '2018-02-22 18:47:41', 'a:9:{i:2;s:6:\"0.8320\";i:10;s:6:\"0.4624\";i:11;s:6:\"0.3600\";i:8;s:6:\"0.3600\";i:5;s:6:\"0.3200\";i:12;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:9;s:6:\"0.1600\";i:1;s:6:\"0.1600\";}', 'a:4:{i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"1\";i:4;s:1:\"7\";}', 2, '0.8320'),
(222, '2018-02-27 14:12:19', 'a:7:{i:9;s:6:\"0.6640\";i:5;s:6:\"0.3200\";i:12;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:4;s:6:\"0.0400\";}', 'a:3:{i:1;s:1:\"2\";i:2;s:1:\"7\";i:5;s:1:\"3\";}', 9, '0.6640'),
(223, '2018-03-01 14:53:58', 'a:10:{i:2;s:6:\"0.5632\";i:10;s:6:\"0.3616\";i:5;s:6:\"0.3200\";i:11;s:6:\"0.2400\";i:8;s:6:\"0.2400\";i:4;s:6:\"0.2272\";i:12;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:9;s:6:\"0.1600\";}', 'a:3:{i:1;s:1:\"2\";i:2;s:1:\"4\";i:3;s:1:\"3\";}', 2, '0.5632'),
(225, '2018-03-07 05:26:33', 'a:0:{}', 'a:0:{}', 0, ''),
(226, '2018-03-07 05:26:53', 'a:8:{i:5;s:6:\"0.2400\";i:10;s:6:\"0.1200\";i:12;s:6:\"0.1200\";i:9;s:6:\"0.1200\";i:7;s:6:\"0.1200\";i:4;s:6:\"0.1200\";i:1;s:6:\"0.1200\";i:2;s:6:\"0.1200\";}', 'a:1:{i:1;s:1:\"3\";}', 5, '0.2400'),
(227, '2018-03-07 05:43:07', 'a:10:{i:3;s:6:\"1.0000\";i:13;s:6:\"0.3600\";i:5;s:6:\"0.3200\";i:12;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:10;s:6:\"0.1600\";i:9;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:4;s:6:\"0.1600\";}', 'a:3:{i:1;s:1:\"2\";i:7;s:1:\"3\";i:25;s:1:\"1\";}', 3, '1.0000'),
(232, '2018-03-07 06:23:47', 'a:8:{i:5;s:6:\"0.3200\";i:10;s:6:\"0.1600\";i:12;s:6:\"0.1600\";i:9;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:4;s:6:\"0.0400\";}', 'a:2:{i:1;s:1:\"2\";i:4;s:1:\"5\";}', 5, '0.3200'),
(233, '2018-03-07 06:24:13', 'a:8:{i:5;s:6:\"0.3200\";i:10;s:6:\"0.1600\";i:12;s:6:\"0.1600\";i:9;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:4;s:6:\"0.0400\";}', 'a:2:{i:1;s:1:\"2\";i:4;s:1:\"5\";}', 5, '0.3200'),
(275, '2018-03-13 12:57:51', 'a:7:{i:5;s:6:\"0.4000\";i:10;s:6:\"0.2000\";i:12;s:6:\"0.2000\";i:9;s:6:\"0.2000\";i:7;s:6:\"0.2000\";i:4;s:6:\"0.2000\";i:2;s:6:\"0.2000\";}', 'a:1:{i:1;s:1:\"1\";}', 5, '0.4000'),
(276, '2018-03-13 13:10:17', 'a:0:{}', 'a:1:{i:1;s:1:\"5\";}', 0, ''),
(277, '2018-03-13 13:10:32', 'a:7:{i:5;s:6:\"0.1600\";i:10;s:6:\"0.0800\";i:12;s:6:\"0.0800\";i:9;s:6:\"0.0800\";i:7;s:6:\"0.0800\";i:4;s:6:\"0.0800\";i:2;s:6:\"0.0800\";}', 'a:1:{i:1;s:1:\"4\";}', 5, '0.1600'),
(278, '2018-03-13 13:21:49', 'a:0:{}', 'a:1:{i:1;s:1:\"5\";}', 0, ''),
(253, '2018-03-07 06:41:06', 'a:11:{i:10;s:6:\"0.6640\";i:11;s:6:\"0.6000\";i:8;s:6:\"0.6000\";i:4;s:6:\"0.3280\";i:5;s:6:\"0.3200\";i:3;s:6:\"0.3200\";i:12;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:9;s:6:\"0.1600\";}', 'a:3:{i:1;s:1:\"2\";i:2;s:1:\"1\";i:19;s:1:\"2\";}', 10, '0.6640'),
(254, '2018-03-07 06:41:33', 'a:8:{i:2;s:6:\"0.6832\";i:5;s:6:\"0.2400\";i:10;s:6:\"0.1200\";i:12;s:6:\"0.1200\";i:9;s:6:\"0.1200\";i:7;s:6:\"0.1200\";i:1;s:6:\"0.1200\";i:4;s:6:\"0.1200\";}', 'a:2:{i:1;s:1:\"3\";i:3;s:1:\"2\";}', 2, '0.6832'),
(255, '2018-03-07 06:45:39', 'a:0:{}', 'a:0:{}', 0, ''),
(256, '2018-03-07 06:46:37', 'a:2:{i:13;s:6:\"0.5914\";i:4;s:6:\"0.2400\";}', 'a:4:{i:20;s:1:\"4\";i:27;s:1:\"3\";i:33;s:1:\"2\";i:34;s:1:\"3\";}', 13, '0.5914'),
(257, '2018-03-09 00:50:24', 'a:0:{}', 'a:0:{}', 0, ''),
(258, '2018-03-09 01:08:28', 'a:9:{i:10;s:6:\"0.5632\";i:11;s:6:\"0.4800\";i:8;s:6:\"0.4800\";i:5;s:6:\"0.3200\";i:4;s:6:\"0.2944\";i:12;s:6:\"0.1600\";i:9;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:7;s:6:\"0.1600\";}', 'a:2:{i:1;s:1:\"2\";i:2;s:1:\"2\";}', 10, '0.5632'),
(259, '2018-03-09 01:26:39', 'a:1:{i:12;s:6:\"0.4800\";}', 'a:2:{i:16;s:1:\"8\";i:17;s:1:\"2\";}', 12, '0.4800'),
(260, '2018-03-09 01:27:45', 'a:1:{i:12;s:6:\"0.4800\";}', 'a:2:{i:16;s:1:\"8\";i:17;s:1:\"2\";}', 12, '0.4800'),
(261, '2018-03-09 04:51:04', 'a:10:{i:13;s:6:\"0.8960\";i:8;s:6:\"0.8128\";i:10;s:6:\"0.5840\";i:2;s:6:\"0.5840\";i:11;s:6:\"0.4800\";i:5;s:6:\"0.4000\";i:4;s:6:\"0.2080\";i:12;s:6:\"0.2000\";i:9;s:6:\"0.2000\";i:7;s:6:\"0.2000\";}', 'a:7:{i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"5\";i:7;s:1:\"2\";i:8;s:1:\"2\";i:18;s:1:\"2\";}', 13, '0.8960'),
(262, '2018-03-10 00:04:05', 'a:3:{i:9;s:6:\"0.4800\";i:13;s:6:\"0.2400\";i:4;s:6:\"0.2400\";}', 'a:4:{i:4;s:1:\"4\";i:5;s:1:\"3\";i:7;s:1:\"4\";i:9;s:1:\"5\";}', 9, '0.4800'),
(263, '2018-03-10 03:14:39', 'a:4:{i:1;s:6:\"0.6400\";i:12;s:6:\"0.3600\";i:6;s:6:\"0.2400\";i:9;s:6:\"0.2400\";}', 'a:3:{i:9;s:1:\"4\";i:12;s:1:\"2\";i:17;s:1:\"3\";}', 1, '0.6400'),
(264, '2018-03-10 03:19:27', 'a:3:{i:11;s:6:\"1.0000\";i:10;s:6:\"0.4000\";i:9;s:6:\"0.4000\";}', 'a:3:{i:5;s:1:\"4\";i:37;s:1:\"1\";i:41;s:1:\"4\";}', 11, '1.0000'),
(265, '2018-03-10 03:21:03', 'a:4:{i:8;s:6:\"0.9293\";i:11;s:6:\"0.4800\";i:10;s:6:\"0.4800\";i:4;s:6:\"0.1600\";}', 'a:4:{i:2;s:1:\"2\";i:18;s:1:\"4\";i:29;s:1:\"2\";i:34;s:1:\"5\";}', 8, '0.9293'),
(266, '2018-03-10 03:22:27', 'a:3:{i:6;s:6:\"1.0000\";i:7;s:6:\"0.6000\";i:1;s:6:\"0.3200\";}', 'a:4:{i:12;s:1:\"4\";i:28;s:1:\"5\";i:30;s:1:\"1\";i:32;s:1:\"3\";}', 6, '1.0000'),
(267, '2018-03-10 17:35:54', 'a:4:{i:9;s:6:\"0.8000\";i:6;s:6:\"0.4800\";i:13;s:6:\"0.2400\";i:4;s:6:\"0.1600\";}', 'a:3:{i:5;s:1:\"2\";i:7;s:1:\"4\";i:10;s:1:\"2\";}', 9, '0.8000'),
(273, '2018-03-11 01:13:51', 'a:3:{i:6;s:6:\"0.8000\";i:5;s:6:\"0.6000\";i:13;s:6:\"0.0800\";}', 'a:3:{i:28;s:1:\"3\";i:30;s:1:\"2\";i:33;s:1:\"4\";}', 6, '0.8000'),
(279, '2018-03-15 05:15:44', 'a:6:{i:5;s:6:\"0.3200\";i:12;s:6:\"0.1600\";i:10;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:9;s:6:\"0.0400\";}', 'a:3:{i:1;s:1:\"2\";i:4;s:1:\"8\";i:9;s:1:\"5\";}', 5, '0.3200'),
(280, '2018-03-15 13:09:09', 'a:7:{i:5;s:6:\"0.4000\";i:10;s:6:\"0.2000\";i:12;s:6:\"0.2000\";i:9;s:6:\"0.2000\";i:7;s:6:\"0.2000\";i:4;s:6:\"0.2000\";i:2;s:6:\"0.2000\";}', 'a:1:{i:1;s:1:\"1\";}', 5, '0.4000'),
(281, '2018-03-15 13:10:02', 'a:7:{i:5;s:6:\"0.4000\";i:10;s:6:\"0.2000\";i:12;s:6:\"0.2000\";i:9;s:6:\"0.2000\";i:7;s:6:\"0.2000\";i:4;s:6:\"0.2000\";i:2;s:6:\"0.2000\";}', 'a:1:{i:1;s:1:\"1\";}', 5, '0.4000'),
(282, '2018-03-15 13:10:36', 'a:7:{i:5;s:6:\"0.4000\";i:10;s:6:\"0.2000\";i:12;s:6:\"0.2000\";i:9;s:6:\"0.2000\";i:7;s:6:\"0.2000\";i:4;s:6:\"0.2000\";i:2;s:6:\"0.2000\";}', 'a:1:{i:1;s:1:\"1\";}', 5, '0.4000'),
(283, '2018-03-15 13:12:00', 'a:8:{i:10;s:6:\"0.6800\";i:4;s:6:\"0.5840\";i:5;s:6:\"0.4000\";i:6;s:6:\"0.3200\";i:12;s:6:\"0.2000\";i:2;s:6:\"0.2000\";i:9;s:6:\"0.2000\";i:7;s:6:\"0.2000\";}', 'a:5:{i:1;s:1:\"1\";i:6;s:1:\"4\";i:11;s:1:\"3\";i:14;s:1:\"9\";i:22;s:1:\"3\";}', 10, '0.6800'),
(284, '2018-03-15 13:30:20', 'a:3:{i:11;s:6:\"0.6000\";i:12;s:6:\"0.4800\";i:13;s:6:\"0.0800\";}', 'a:5:{i:30;s:1:\"9\";i:32;s:1:\"5\";i:33;s:1:\"4\";i:35;s:1:\"3\";i:42;s:1:\"3\";}', 11, '0.6000'),
(285, '2021-09-29 13:06:14', 'a:9:{i:4;s:6:\"0.7312\";i:2;s:6:\"0.6976\";i:10;s:6:\"0.6640\";i:8;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:5;s:6:\"0.3200\";i:7;s:6:\"0.1600\";i:9;s:6:\"0.1600\";i:12;s:6:\"0.1600\";}', 'a:4:{i:1;s:1:\"2\";i:2;s:1:\"1\";i:3;s:1:\"2\";i:4;s:1:\"1\";}', 4, '0.7312'),
(286, '2021-10-13 18:26:35', 'a:0:{}', 'a:0:{}', 0, ''),
(287, '2021-10-13 18:26:49', 'a:4:{i:4;s:6:\"0.6800\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";}', 'a:2:{i:2;s:1:\"1\";i:4;s:1:\"1\";}', 4, '0.6800'),
(288, '2021-10-14 15:42:44', 'a:9:{i:10;s:6:\"0.6800\";i:8;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:5;s:6:\"0.4000\";i:4;s:6:\"0.3600\";i:2;s:6:\"0.2000\";i:7;s:6:\"0.2000\";i:9;s:6:\"0.2000\";i:12;s:6:\"0.2000\";}', 'a:2:{i:1;s:1:\"1\";i:2;s:1:\"1\";}', 10, '0.6800'),
(289, '2021-10-14 15:44:52', 'a:2:{i:1;s:6:\"1.0000\";i:5;s:6:\"0.6000\";}', 'a:3:{i:12;s:1:\"1\";i:23;s:1:\"1\";i:24;s:1:\"1\";}', 1, '1.0000'),
(290, '2021-10-14 15:47:22', 'a:5:{i:1;s:6:\"0.8000\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.2000\";}', 'a:1:{i:2;s:1:\"1\";}', 1, '0.8000'),
(291, '2021-10-14 15:50:07', 'a:5:{i:1;s:6:\"0.8000\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.2000\";}', 'a:1:{i:2;s:1:\"1\";}', 1, '0.8000'),
(292, '2021-10-14 15:50:55', 'a:5:{i:1;s:6:\"1.0000\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.2000\";}', 'a:1:{i:2;s:1:\"1\";}', 1, '1.0000'),
(293, '2021-10-14 15:51:00', 'a:5:{i:1;s:6:\"1.0000\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.2000\";}', 'a:1:{i:2;s:1:\"1\";}', 1, '1.0000'),
(294, '2021-10-14 15:51:54', 'a:0:{}', 'a:1:{i:2;s:1:\"9\";}', 0, ''),
(295, '2021-10-14 15:52:01', 'a:5:{i:1;s:6:\"0.6400\";i:8;s:6:\"0.4800\";i:10;s:6:\"0.4800\";i:11;s:6:\"0.4800\";i:4;s:6:\"0.1600\";}', 'a:1:{i:2;s:1:\"2\";}', 1, '0.6400'),
(296, '2021-10-14 15:53:06', 'a:5:{i:1;s:6:\"0.8000\";i:8;s:6:\"0.4800\";i:10;s:6:\"0.4800\";i:11;s:6:\"0.4800\";i:4;s:6:\"0.1600\";}', 'a:1:{i:2;s:1:\"2\";}', 1, '0.8000'),
(297, '2021-10-14 15:53:14', 'a:5:{i:1;s:6:\"0.6000\";i:8;s:6:\"0.3600\";i:10;s:6:\"0.3600\";i:11;s:6:\"0.3600\";i:4;s:6:\"0.1200\";}', 'a:1:{i:2;s:1:\"3\";}', 1, '0.6000'),
(298, '2021-10-14 15:53:18', 'a:0:{}', 'a:1:{i:2;s:1:\"6\";}', 0, ''),
(299, '2021-10-14 15:53:21', 'a:0:{}', 'a:1:{i:2;s:1:\"5\";}', 0, ''),
(300, '2021-10-14 15:53:25', 'a:5:{i:1;s:6:\"0.4000\";i:8;s:6:\"0.2400\";i:10;s:6:\"0.2400\";i:11;s:6:\"0.2400\";i:4;s:6:\"0.0800\";}', 'a:1:{i:2;s:1:\"4\";}', 1, '0.4000'),
(301, '2021-10-14 15:53:41', 'a:5:{i:1;s:6:\"0.8000\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.2000\";}', 'a:1:{i:2;s:1:\"1\";}', 1, '0.8000'),
(302, '2021-10-14 15:53:45', 'a:5:{i:1;s:6:\"0.6400\";i:8;s:6:\"0.4800\";i:10;s:6:\"0.4800\";i:11;s:6:\"0.4800\";i:4;s:6:\"0.1600\";}', 'a:1:{i:2;s:1:\"2\";}', 1, '0.6400'),
(303, '2021-10-14 15:53:48', 'a:5:{i:1;s:6:\"0.3200\";i:8;s:6:\"0.2400\";i:10;s:6:\"0.2400\";i:11;s:6:\"0.2400\";i:4;s:6:\"0.0800\";}', 'a:1:{i:2;s:1:\"4\";}', 1, '0.3200'),
(304, '2021-10-14 15:53:51', 'a:5:{i:1;s:6:\"0.8000\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.2000\";}', 'a:1:{i:2;s:1:\"1\";}', 1, '0.8000'),
(305, '2021-10-14 15:54:25', 'a:0:{}', 'a:1:{i:2;s:1:\"9\";}', 0, ''),
(306, '2021-10-14 15:54:29', 'a:4:{i:10;s:6:\"0.6000\";i:8;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.2000\";}', 'a:1:{i:2;s:1:\"1\";}', 10, '0.6000'),
(307, '2021-10-14 15:58:19', 'a:6:{i:1;s:6:\"0.6400\";i:6;s:6:\"0.6000\";i:4;s:6:\"0.2640\";i:8;s:6:\"0.2400\";i:10;s:6:\"0.2400\";i:11;s:6:\"0.2400\";}', 'a:2:{i:2;s:1:\"4\";i:10;s:1:\"1\";}', 1, '0.6400'),
(308, '2021-10-14 16:06:28', 'a:6:{i:1;s:6:\"1.0000\";i:6;s:6:\"0.6000\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.3600\";}', 'a:2:{i:2;s:1:\"1\";i:10;s:1:\"1\";}', 1, '1.0000'),
(309, '2021-10-14 16:07:26', 'a:6:{i:1;s:6:\"0.6400\";i:6;s:6:\"0.6000\";i:4;s:6:\"0.2640\";i:8;s:6:\"0.2400\";i:10;s:6:\"0.2400\";i:11;s:6:\"0.2400\";}', 'a:2:{i:2;s:1:\"4\";i:10;s:1:\"1\";}', 1, '0.6400'),
(310, '2021-10-14 16:07:38', 'a:6:{i:1;s:6:\"1.0000\";i:6;s:6:\"0.6000\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.3600\";}', 'a:2:{i:2;s:1:\"1\";i:10;s:1:\"1\";}', 1, '1.0000'),
(311, '2021-10-14 16:08:06', 'a:6:{i:1;s:6:\"1.0000\";i:6;s:6:\"0.6000\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.3600\";}', 'a:2:{i:2;s:1:\"1\";i:10;s:1:\"1\";}', 1, '1.0000'),
(312, '2021-10-14 16:08:13', 'a:5:{i:1;s:6:\"1.0000\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.2000\";}', 'a:1:{i:2;s:1:\"1\";}', 1, '1.0000'),
(313, '2021-10-14 16:08:46', 'a:5:{i:1;s:6:\"1.0000\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.2000\";}', 'a:1:{i:2;s:1:\"1\";}', 1, '1.0000'),
(314, '2021-10-14 16:10:07', 'a:5:{i:1;s:6:\"1.0000\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.2000\";}', 'a:1:{i:2;s:1:\"1\";}', 1, '1.0000'),
(315, '2021-10-14 16:13:18', 'a:6:{i:1;s:6:\"1.0000\";i:6;s:6:\"0.6000\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.3600\";}', 'a:2:{i:2;s:1:\"1\";i:10;s:1:\"1\";}', 1, '1.0000'),
(316, '2021-10-14 16:14:24', 'a:6:{i:1;s:6:\"1.0000\";i:6;s:6:\"0.6000\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.3600\";}', 'a:2:{i:2;s:1:\"1\";i:10;s:1:\"1\";}', 1, '1.0000'),
(317, '2021-10-14 16:15:44', 'a:6:{i:1;s:6:\"1.0000\";i:6;s:6:\"0.6000\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.3600\";}', 'a:2:{i:2;s:1:\"1\";i:10;s:1:\"1\";}', 1, '1.0000'),
(318, '2021-10-14 16:18:07', 'a:6:{i:1;s:6:\"1.0000\";i:6;s:6:\"0.6000\";i:8;s:6:\"0.6000\";i:10;s:6:\"0.6000\";i:11;s:6:\"0.6000\";i:4;s:6:\"0.3600\";}', 'a:2:{i:2;s:1:\"1\";i:10;s:1:\"1\";}', 1, '1.0000'),
(319, '2021-10-14 16:22:37', 'a:4:{i:6;s:6:\"0.8000\";i:3;s:6:\"0.4000\";i:9;s:6:\"0.2000\";i:12;s:6:\"0.2000\";}', 'a:1:{i:1;s:1:\"1\";}', 6, '0.8000'),
(320, '2021-10-14 16:23:14', 'a:3:{i:6;s:6:\"0.8000\";i:3;s:6:\"0.4000\";i:12;s:6:\"0.2000\";}', 'a:1:{i:1;s:1:\"1\";}', 6, '0.8000'),
(321, '2021-10-14 16:23:51', 'a:3:{i:12;s:6:\"0.8000\";i:6;s:6:\"0.8000\";i:3;s:6:\"0.4000\";}', 'a:1:{i:1;s:1:\"1\";}', 12, '0.8000'),
(322, '2021-10-14 16:24:29', 'a:3:{i:3;s:6:\"0.8000\";i:6;s:6:\"0.8000\";i:12;s:6:\"0.8000\";}', 'a:1:{i:1;s:1:\"1\";}', 3, '0.8000'),
(323, '2021-10-14 16:24:59', 'a:3:{i:12;s:6:\"1.0000\";i:3;s:6:\"0.8000\";i:6;s:6:\"0.8000\";}', 'a:1:{i:1;s:1:\"1\";}', 12, '1.0000'),
(324, '2021-10-14 16:25:10', 'a:7:{i:3;s:6:\"1.0000\";i:7;s:6:\"1.0000\";i:12;s:6:\"1.0000\";i:13;s:6:\"1.0000\";i:6;s:6:\"0.9200\";i:2;s:6:\"0.8000\";i:9;s:6:\"0.6000\";}', 'a:2:{i:1;s:1:\"1\";i:9;s:1:\"1\";}', 3, '1.0000'),
(325, '2021-10-14 16:26:25', 'a:7:{i:3;s:6:\"1.0000\";i:7;s:6:\"1.0000\";i:13;s:6:\"1.0000\";i:6;s:6:\"0.9200\";i:2;s:6:\"0.8000\";i:12;s:6:\"0.8000\";i:9;s:6:\"0.6000\";}', 'a:2:{i:1;s:1:\"1\";i:9;s:1:\"1\";}', 3, '1.0000'),
(326, '2021-10-14 16:27:32', 'a:7:{i:3;s:6:\"1.0000\";i:6;s:6:\"1.0000\";i:7;s:6:\"1.0000\";i:13;s:6:\"1.0000\";i:2;s:6:\"0.8000\";i:12;s:6:\"0.8000\";i:9;s:6:\"0.6000\";}', 'a:2:{i:1;s:1:\"1\";i:9;s:1:\"1\";}', 3, '1.0000'),
(327, '2021-10-14 16:34:13', 'a:7:{i:3;s:6:\"1.0000\";i:6;s:6:\"1.0000\";i:7;s:6:\"1.0000\";i:13;s:6:\"1.0000\";i:2;s:6:\"0.8000\";i:12;s:6:\"0.8000\";i:9;s:6:\"0.6000\";}', 'a:2:{i:1;s:1:\"1\";i:9;s:1:\"1\";}', 3, '1.0000'),
(328, '2021-10-14 16:47:33', 'a:4:{i:14;s:6:\"1.0000\";i:3;s:6:\"0.8000\";i:6;s:6:\"0.8000\";i:12;s:6:\"0.8000\";}', 'a:1:{i:1;s:1:\"1\";}', 14, '1.0000'),
(329, '2021-10-14 16:51:25', 'a:4:{i:14;s:6:\"1.0000\";i:3;s:6:\"0.8000\";i:6;s:6:\"0.8000\";i:12;s:6:\"0.8000\";}', 'a:1:{i:1;s:1:\"1\";}', 14, '1.0000'),
(330, '2021-10-14 16:51:30', 'a:9:{i:19;s:6:\"1.0000\";i:21;s:6:\"1.0000\";i:24;s:6:\"1.0000\";i:25;s:6:\"1.0000\";i:26;s:6:\"1.0000\";i:27;s:6:\"1.0000\";i:28;s:6:\"1.0000\";i:30;s:6:\"1.0000\";i:32;s:6:\"1.0000\";}', 'a:1:{i:8;s:1:\"1\";}', 19, '1.0000'),
(331, '2021-10-14 16:55:08', 'a:9:{i:19;s:6:\"1.0000\";i:21;s:6:\"1.0000\";i:24;s:6:\"1.0000\";i:25;s:6:\"1.0000\";i:26;s:6:\"1.0000\";i:27;s:6:\"1.0000\";i:28;s:6:\"1.0000\";i:30;s:6:\"1.0000\";i:32;s:6:\"1.0000\";}', 'a:1:{i:8;s:1:\"1\";}', 19, '1.0000'),
(332, '2021-10-14 16:55:14', 'a:4:{i:3;s:6:\"1.0000\";i:14;s:6:\"1.0000\";i:6;s:6:\"0.8000\";i:12;s:6:\"0.8000\";}', 'a:1:{i:1;s:1:\"1\";}', 3, '1.0000'),
(333, '2021-10-14 17:09:36', 'a:5:{i:1;s:6:\"1.0000\";i:3;s:6:\"1.0000\";i:14;s:6:\"1.0000\";i:6;s:6:\"0.8000\";i:12;s:6:\"0.8000\";}', 'a:2:{i:1;s:1:\"1\";i:10;s:1:\"1\";}', 1, '1.0000'),
(334, '2021-10-14 17:10:23', 'a:5:{i:1;s:6:\"1.0000\";i:2;s:6:\"1.0000\";i:4;s:6:\"1.0000\";i:15;s:6:\"1.0000\";i:5;s:6:\"0.4000\";}', 'a:2:{i:2;s:1:\"1\";i:10;s:1:\"1\";}', 1, '1.0000'),
(335, '2021-10-14 17:11:54', 'a:8:{i:3;s:6:\"1.0000\";i:6;s:6:\"1.0000\";i:7;s:6:\"1.0000\";i:13;s:6:\"1.0000\";i:14;s:6:\"1.0000\";i:12;s:6:\"0.8000\";i:9;s:6:\"0.6000\";i:2;s:6:\"0.5000\";}', 'a:2:{i:1;s:1:\"1\";i:9;s:1:\"1\";}', 3, '1.0000'),
(336, '2021-10-14 17:35:43', 'a:4:{i:3;s:6:\"1.0000\";i:14;s:6:\"1.0000\";i:6;s:6:\"0.8000\";i:12;s:6:\"0.8000\";}', 'a:1:{i:1;s:1:\"1\";}', 3, '1.0000'),
(337, '2021-10-14 17:36:11', 'a:8:{i:1;s:6:\"1.0000\";i:2;s:6:\"1.0000\";i:4;s:6:\"1.0000\";i:15;s:6:\"1.0000\";i:18;s:6:\"1.0000\";i:20;s:6:\"1.0000\";i:21;s:6:\"1.0000\";i:5;s:6:\"0.4000\";}', 'a:2:{i:2;s:1:\"1\";i:10;s:1:\"1\";}', 1, '1.0000'),
(338, '2021-10-14 17:39:47', 'a:9:{i:7;s:6:\"1.0000\";i:13;s:6:\"1.0000\";i:17;s:6:\"1.0000\";i:23;s:6:\"1.0000\";i:24;s:6:\"1.0000\";i:6;s:6:\"0.8400\";i:3;s:6:\"0.8000\";i:9;s:6:\"0.6000\";i:2;s:6:\"0.5000\";}', 'a:2:{i:1;s:1:\"5\";i:9;s:1:\"1\";}', 7, '1.0000'),
(339, '2021-10-14 17:43:22', 'a:11:{i:3;s:6:\"1.0000\";i:6;s:6:\"1.0000\";i:7;s:6:\"1.0000\";i:13;s:6:\"1.0000\";i:14;s:6:\"1.0000\";i:17;s:6:\"1.0000\";i:23;s:6:\"1.0000\";i:24;s:6:\"1.0000\";i:12;s:6:\"0.8000\";i:9;s:6:\"0.6000\";i:2;s:6:\"0.5000\";}', 'a:2:{i:1;s:1:\"1\";i:9;s:1:\"1\";}', 3, '1.0000'),
(340, '2021-10-14 17:50:59', 'a:11:{i:3;s:6:\"1.0000\";i:6;s:6:\"1.0000\";i:7;s:6:\"1.0000\";i:13;s:6:\"1.0000\";i:14;s:6:\"1.0000\";i:17;s:6:\"1.0000\";i:23;s:6:\"1.0000\";i:24;s:6:\"1.0000\";i:12;s:6:\"0.8000\";i:9;s:6:\"0.6000\";i:2;s:6:\"0.5000\";}', 'a:2:{i:1;s:1:\"1\";i:9;s:1:\"1\";}', 3, '1.0000'),
(341, '2021-10-14 23:19:23', 'a:1:{i:10;s:6:\"1.0000\";}', 'a:1:{i:14;s:1:\"1\";}', 10, '1.0000'),
(342, '2021-10-14 23:19:32', 'a:1:{i:19;s:6:\"1.0000\";}', 'a:1:{i:13;s:1:\"1\";}', 19, '1.0000'),
(343, '2021-10-14 23:19:41', 'a:6:{i:14;s:6:\"1.0000\";i:22;s:6:\"1.0000\";i:29;s:6:\"1.0000\";i:5;s:6:\"0.8000\";i:8;s:6:\"0.8000\";i:12;s:6:\"0.6000\";}', 'a:1:{i:12;s:1:\"1\";}', 14, '1.0000'),
(344, '2021-10-14 23:20:01', 'a:17:{i:30;s:6:\"1.0000\";i:14;s:6:\"1.0000\";i:29;s:6:\"1.0000\";i:27;s:6:\"1.0000\";i:24;s:6:\"1.0000\";i:23;s:6:\"1.0000\";i:22;s:6:\"1.0000\";i:17;s:6:\"1.0000\";i:13;s:6:\"1.0000\";i:3;s:6:\"1.0000\";i:7;s:6:\"1.0000\";i:6;s:6:\"1.0000\";i:12;s:6:\"0.9200\";i:8;s:6:\"0.8000\";i:5;s:6:\"0.8000\";i:9;s:6:\"0.6000\";i:2;s:6:\"0.5000\";}', 'a:3:{i:1;s:1:\"1\";i:9;s:1:\"1\";i:12;s:1:\"1\";}', 30, '1.0000'),
(345, '2021-10-14 23:20:40', 'a:13:{i:3;s:6:\"1.0000\";i:6;s:6:\"1.0000\";i:7;s:6:\"1.0000\";i:13;s:6:\"1.0000\";i:14;s:6:\"1.0000\";i:17;s:6:\"1.0000\";i:23;s:6:\"1.0000\";i:24;s:6:\"1.0000\";i:27;s:6:\"1.0000\";i:30;s:6:\"1.0000\";i:12;s:6:\"0.8000\";i:9;s:6:\"0.6000\";i:2;s:6:\"0.5000\";}', 'a:2:{i:1;s:1:\"1\";i:9;s:1:\"1\";}', 3, '1.0000'),
(346, '2021-10-14 23:25:19', 'a:3:{i:16;s:6:\"1.0000\";i:20;s:6:\"1.0000\";i:31;s:6:\"1.0000\";}', 'a:1:{i:3;s:1:\"1\";}', 16, '1.0000'),
(347, '2021-10-14 23:25:46', 'a:4:{i:8;s:6:\"1.0000\";i:16;s:6:\"1.0000\";i:20;s:6:\"1.0000\";i:31;s:6:\"1.0000\";}', 'a:1:{i:3;s:1:\"1\";}', 8, '1.0000'),
(348, '2021-10-14 23:26:24', 'a:4:{i:8;s:6:\"0.8000\";i:16;s:6:\"0.8000\";i:20;s:6:\"0.8000\";i:31;s:6:\"0.8000\";}', 'a:1:{i:3;s:1:\"2\";}', 8, '0.8000'),
(349, '2021-10-14 23:26:31', 'a:4:{i:8;s:6:\"1.0000\";i:16;s:6:\"1.0000\";i:20;s:6:\"1.0000\";i:31;s:6:\"1.0000\";}', 'a:1:{i:3;s:1:\"1\";}', 8, '1.0000'),
(350, '2021-10-14 23:27:08', 'a:5:{i:8;s:6:\"1.0000\";i:10;s:6:\"1.0000\";i:16;s:6:\"1.0000\";i:20;s:6:\"1.0000\";i:31;s:6:\"1.0000\";}', 'a:2:{i:3;s:1:\"1\";i:14;s:1:\"1\";}', 8, '1.0000'),
(351, '2021-10-14 23:27:38', 'a:9:{i:19;s:6:\"1.0000\";i:21;s:6:\"1.0000\";i:24;s:6:\"1.0000\";i:25;s:6:\"1.0000\";i:26;s:6:\"1.0000\";i:27;s:6:\"1.0000\";i:28;s:6:\"1.0000\";i:30;s:6:\"1.0000\";i:32;s:6:\"1.0000\";}', 'a:1:{i:8;s:1:\"1\";}', 19, '1.0000'),
(352, '2021-10-14 23:28:34', 'a:2:{i:9;s:6:\"1.0000\";i:13;s:6:\"1.0000\";}', 'a:1:{i:5;s:1:\"1\";}', 9, '1.0000'),
(353, '2021-10-14 23:35:09', 'a:2:{i:9;s:6:\"1.0000\";i:13;s:6:\"1.0000\";}', 'a:1:{i:5;s:1:\"1\";}', 9, '1.0000'),
(354, '2021-10-14 23:35:18', 'a:4:{i:3;s:6:\"1.0000\";i:6;s:6:\"1.0000\";i:12;s:6:\"1.0000\";i:14;s:6:\"1.0000\";}', 'a:1:{i:1;s:1:\"1\";}', 3, '1.0000'),
(355, '2021-10-14 23:35:30', 'a:9:{i:1;s:6:\"1.0000\";i:2;s:6:\"1.0000\";i:3;s:6:\"1.0000\";i:4;s:6:\"1.0000\";i:6;s:6:\"1.0000\";i:12;s:6:\"1.0000\";i:14;s:6:\"1.0000\";i:15;s:6:\"1.0000\";i:5;s:6:\"0.4000\";}', 'a:2:{i:1;s:1:\"1\";i:2;s:1:\"1\";}', 1, '1.0000'),
(356, '2021-10-14 23:35:37', 'a:5:{i:1;s:6:\"1.0000\";i:2;s:6:\"1.0000\";i:4;s:6:\"1.0000\";i:15;s:6:\"1.0000\";i:5;s:6:\"0.4000\";}', 'a:1:{i:2;s:1:\"1\";}', 1, '1.0000'),
(357, '2021-10-14 23:35:43', 'a:4:{i:8;s:6:\"1.0000\";i:16;s:6:\"1.0000\";i:20;s:6:\"1.0000\";i:31;s:6:\"1.0000\";}', 'a:1:{i:3;s:1:\"1\";}', 8, '1.0000'),
(358, '2021-10-14 23:35:49', 'a:4:{i:7;s:6:\"1.0000\";i:11;s:6:\"1.0000\";i:23;s:6:\"1.0000\";i:29;s:6:\"1.0000\";}', 'a:1:{i:4;s:1:\"1\";}', 7, '1.0000'),
(359, '2021-10-14 23:36:03', 'a:2:{i:9;s:6:\"1.0000\";i:13;s:6:\"1.0000\";}', 'a:1:{i:5;s:1:\"1\";}', 9, '1.0000'),
(360, '2021-10-14 23:36:42', 'a:2:{i:9;s:6:\"1.0000\";i:13;s:6:\"1.0000\";}', 'a:1:{i:5;s:1:\"1\";}', 9, '1.0000'),
(361, '2021-10-14 23:37:20', 'a:2:{i:9;s:6:\"1.0000\";i:13;s:6:\"1.0000\";}', 'a:1:{i:5;s:1:\"1\";}', 9, '1.0000'),
(362, '2021-10-14 23:37:26', 'a:2:{i:9;s:6:\"1.0000\";i:13;s:6:\"1.0000\";}', 'a:1:{i:5;s:1:\"1\";}', 9, '1.0000'),
(363, '2021-10-14 23:37:39', 'a:2:{i:13;s:6:\"1.0000\";i:9;s:6:\"0.8000\";}', 'a:1:{i:5;s:1:\"1\";}', 13, '1.0000'),
(364, '2021-10-15 19:00:47', 'a:15:{i:1;s:6:\"1.0000\";i:2;s:6:\"1.0000\";i:3;s:6:\"1.0000\";i:4;s:6:\"1.0000\";i:6;s:6:\"1.0000\";i:9;s:6:\"1.0000\";i:15;s:6:\"1.0000\";i:17;s:6:\"1.0000\";i:23;s:6:\"1.0000\";i:24;s:6:\"1.0000\";i:27;s:6:\"1.0000\";i:30;s:6:\"1.0000\";i:13;s:6:\"0.8000\";i:7;s:6:\"0.5000\";i:5;s:6:\"0.4000\";}', 'a:2:{i:2;s:1:\"1\";i:9;s:1:\"1\";}', 1, '1.0000'),
(365, '2021-10-15 19:01:14', 'a:12:{i:1;s:6:\"1.0000\";i:2;s:6:\"1.0000\";i:4;s:6:\"1.0000\";i:15;s:6:\"1.0000\";i:18;s:6:\"1.0000\";i:20;s:6:\"1.0000\";i:21;s:6:\"1.0000\";i:25;s:6:\"1.0000\";i:26;s:6:\"1.0000\";i:31;s:6:\"1.0000\";i:11;s:6:\"0.5000\";i:5;s:6:\"0.4000\";}', 'a:2:{i:2;s:1:\"1\";i:10;s:1:\"1\";}', 1, '1.0000'),
(366, '2021-10-15 19:03:12', 'a:12:{i:1;s:6:\"1.0000\";i:2;s:6:\"1.0000\";i:4;s:6:\"1.0000\";i:15;s:6:\"1.0000\";i:18;s:6:\"1.0000\";i:20;s:6:\"1.0000\";i:21;s:6:\"1.0000\";i:25;s:6:\"1.0000\";i:26;s:6:\"1.0000\";i:31;s:6:\"1.0000\";i:11;s:6:\"0.5000\";i:5;s:6:\"0.4000\";}', 'a:2:{i:2;s:1:\"1\";i:10;s:1:\"1\";}', 1, '1.0000'),
(367, '2021-10-15 21:32:21', 'a:4:{i:3;s:6:\"1.0000\";i:6;s:6:\"1.0000\";i:12;s:6:\"1.0000\";i:14;s:6:\"1.0000\";}', 'a:1:{i:1;s:1:\"1\";}', 3, '1.0000'),
(368, '2021-10-15 21:38:12', 'a:4:{i:3;s:6:\"1.0000\";i:6;s:6:\"1.0000\";i:12;s:6:\"1.0000\";i:14;s:6:\"1.0000\";}', 'a:1:{i:1;s:1:\"1\";}', 3, '1.0000'),
(369, '2021-10-15 21:38:57', 'a:4:{i:3;s:6:\"1.0000\";i:6;s:6:\"1.0000\";i:12;s:6:\"1.0000\";i:14;s:6:\"1.0000\";}', 'a:1:{i:1;s:1:\"1\";}', 3, '1.0000'),
(370, '2021-10-15 21:39:02', 'a:5:{i:1;s:6:\"1.0000\";i:2;s:6:\"1.0000\";i:4;s:6:\"1.0000\";i:15;s:6:\"1.0000\";i:5;s:6:\"0.8000\";}', 'a:1:{i:2;s:1:\"1\";}', 1, '1.0000'),
(371, '2021-10-15 21:39:05', 'a:5:{i:1;s:6:\"1.0000\";i:2;s:6:\"1.0000\";i:4;s:6:\"1.0000\";i:15;s:6:\"1.0000\";i:5;s:6:\"0.8000\";}', 'a:1:{i:2;s:1:\"1\";}', 1, '1.0000'),
(372, '2021-10-15 21:39:35', 'a:5:{i:1;s:6:\"1.0000\";i:2;s:6:\"1.0000\";i:4;s:6:\"1.0000\";i:15;s:6:\"1.0000\";i:5;s:6:\"0.8000\";}', 'a:1:{i:2;s:1:\"1\";}', 1, '1.0000'),
(373, '2021-10-15 21:51:57', 'a:5:{i:1;s:6:\"1.0000\";i:2;s:6:\"1.0000\";i:4;s:6:\"1.0000\";i:15;s:6:\"1.0000\";i:5;s:6:\"0.8000\";}', 'a:1:{i:2;s:1:\"1\";}', 1, '1.0000'),
(374, '2021-10-15 22:36:13', 'a:12:{i:1;s:6:\"1.0000\";i:2;s:6:\"1.0000\";i:4;s:6:\"1.0000\";i:15;s:6:\"1.0000\";i:18;s:6:\"1.0000\";i:20;s:6:\"1.0000\";i:21;s:6:\"1.0000\";i:25;s:6:\"1.0000\";i:26;s:6:\"1.0000\";i:31;s:6:\"1.0000\";i:5;s:6:\"0.8000\";i:11;s:6:\"0.5000\";}', 'a:3:{i:2;s:1:\"1\";i:10;s:1:\"1\";i:31;s:1:\"1\";}', 1, '1.0000'),
(375, '2021-11-03 17:40:27', 'a:0:{}', 'a:0:{}', 0, ''),
(376, '2021-11-03 17:41:38', 'a:0:{}', 'a:0:{}', 0, ''),
(377, '2021-11-03 17:43:53', 'a:0:{}', 'a:0:{}', 0, ''),
(378, '2021-11-03 17:44:49', 'a:0:{}', 'a:0:{}', 0, ''),
(379, '2021-11-03 17:45:38', 'a:0:{}', 'a:0:{}', 0, ''),
(380, '2021-11-03 17:46:09', 'a:0:{}', 'a:0:{}', 0, ''),
(381, '2021-11-03 17:47:29', 'a:0:{}', 'a:0:{}', 0, ''),
(382, '2021-11-03 18:55:01', 'a:12:{i:1;s:6:\"1.0000\";i:2;s:6:\"1.0000\";i:4;s:6:\"1.0000\";i:15;s:6:\"1.0000\";i:18;s:6:\"1.0000\";i:20;s:6:\"1.0000\";i:21;s:6:\"1.0000\";i:25;s:6:\"1.0000\";i:26;s:6:\"1.0000\";i:31;s:6:\"1.0000\";i:5;s:6:\"0.8000\";i:11;s:6:\"0.5000\";}', 'a:2:{i:2;s:1:\"1\";i:10;s:1:\"1\";}', 1, '1.0000'),
(383, '2021-11-03 18:57:46', 'a:12:{i:1;s:6:\"1.0000\";i:2;s:6:\"1.0000\";i:4;s:6:\"1.0000\";i:15;s:6:\"1.0000\";i:18;s:6:\"1.0000\";i:20;s:6:\"1.0000\";i:21;s:6:\"1.0000\";i:25;s:6:\"1.0000\";i:26;s:6:\"1.0000\";i:31;s:6:\"1.0000\";i:5;s:6:\"0.8000\";i:11;s:6:\"0.5000\";}', 'a:2:{i:2;s:1:\"1\";i:10;s:1:\"1\";}', 1, '1.0000'),
(384, '2021-11-03 18:58:24', 'a:12:{i:1;s:6:\"1.0000\";i:2;s:6:\"1.0000\";i:4;s:6:\"1.0000\";i:15;s:6:\"1.0000\";i:18;s:6:\"1.0000\";i:20;s:6:\"1.0000\";i:21;s:6:\"1.0000\";i:25;s:6:\"1.0000\";i:26;s:6:\"1.0000\";i:31;s:6:\"1.0000\";i:5;s:6:\"0.8000\";i:11;s:6:\"0.5000\";}', 'a:2:{i:2;s:1:\"1\";i:10;s:1:\"1\";}', 1, '1.0000'),
(385, '2021-11-03 19:00:40', 'a:12:{i:1;s:6:\"1.0000\";i:2;s:6:\"1.0000\";i:4;s:6:\"1.0000\";i:15;s:6:\"1.0000\";i:18;s:6:\"1.0000\";i:20;s:6:\"1.0000\";i:21;s:6:\"1.0000\";i:25;s:6:\"1.0000\";i:26;s:6:\"1.0000\";i:31;s:6:\"1.0000\";i:5;s:6:\"0.8000\";i:11;s:6:\"0.5000\";}', 'a:2:{i:2;s:1:\"1\";i:10;s:1:\"1\";}', 1, '1.0000'),
(386, '2021-11-03 19:06:06', 'a:1:{i:1;s:6:\"1.0000\";}', 'a:1:{i:1;s:1:\"1\";}', 1, '1.0000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `kondisi` varchar(64) NOT NULL,
  `ket` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kondisi`
--

INSERT INTO `kondisi` (`id`, `kondisi`, `ket`) VALUES
(1, 'Pasti ya', ''),
(2, 'Hampir pasti ya', ''),
(3, 'Kemungkinan besar ya', ''),
(4, 'Mungkin ya', ''),
(5, 'Tidak tahu', ''),
(6, 'Mungkin tidak', ''),
(7, 'Kemungkinan besar tidak', ''),
(8, 'Hampir pasti tidak', ''),
(9, 'Pasti tidak', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` int(11) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `det_penyakit` varchar(500) NOT NULL,
  `srn_penyakit` varchar(500) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `det_penyakit`, `srn_penyakit`, `gambar`) VALUES
(1, 'Insomnia', 'Insomnia adalah gangguan yang menyebabkan penderitanya sulit tidur atau tidak cukup tidur, meski terdapat cukup waktu untuk melakukannya. Gangguan ini bisa berdampak pada aktivitas penderita keesokan harinya. Waktu tidur dan kepuasan seseorang setelah tidur memengaruhi kualitas hidup dan kesehatan seseorang secara keseluruhan. Pada umumnya, orang membutuhkan 8 jam tidur dalam sehari untuk menjaga kondisi tubuh tetap fit. ', '<ul>\r\n  <li>Menghindari banyak makan dan minum sebelum tidur</li>\r\n  <li>Membatasi konsumsi minuman beralkohol dan berkafein</li>\r\n  <li>Berusaha aktif di siang hari agar terhindar dari tidur siang</li>\r\n</ul>', 'insomnia.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `kode_post` int(11) NOT NULL,
  `nama_post` varchar(50) NOT NULL,
  `det_post` varchar(15000) NOT NULL,
  `srn_post` varchar(15000) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`kode_post`, `nama_post`, `det_post`, `srn_post`, `gambar`) VALUES
(1, 'Insomia', '<p>Insomnia adalah gangguan yang menyebabkan penderitanya sulit tidur atau tidak cukup tidur, meski terdapat cukup waktu untuk melakukannya. Gangguan ini bisa berdampak pada aktivitas penderita keesokan harinya.\r\n\r\nWaktu tidur dan kepuasan seseorang setelah tidur memengaruhi kualitas hidup dan kesehatan seseorang secara keseluruhan. Pada umumnya, orang membutuhkan 8 jam tidur dalam sehari untuk menjaga kondisi tubuh tetap fit. Waktu tidur yang terlalu lama atau malah terlalu sedikit dapat menimbulkan gangguan, baik fisik maupun mental. Namun, waktu tidur yang cukup juga tidak menjamin kondisi tubuh yang fit jika kualitas tidurnya tidak baik.</p> \r\n<p><strong>Gejala</strong></p>\r\n\r\n<ul>\r\n  <li>Susah Tidur</li>\r\n  <li>Kelelahan saat beraktivitas</li>\r\n  <li>Sulit fokus saat beraktivitas</li>\r\n  <li>Daya ingat menurun</li>\r\n  <li>Fisik mengalami gangguan</li>\r\n</ul>', '<p><strong>Saran</strong></p>\r\n\r\n<ul>\r\n  <li>Menghindari banyak makan dan minum sebelum tidur</li>\r\n  <li>Membatasi konsumsi minuman beralkohol dan berkafein</li>\r\n  <li>Berusaha aktif di siang hari agar terhindar dari tidur siang</li>\r\n</ul>', 'insomnia.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`kode_pengetahuan`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indeks untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indeks untuk tabel `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`kode_post`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `kode_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `post`
--
ALTER TABLE `post`
  MODIFY `kode_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
