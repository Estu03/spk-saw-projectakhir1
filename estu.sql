-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Nov 2022 pada 15.15
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(99) NOT NULL,
  `password` char(32) NOT NULL,
  `tentang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `kodekaryawan` int(11) NOT NULL,
  `nip` char(18) NOT NULL,
  `nama` varchar(63) NOT NULL,
  `golongan` char(9) NOT NULL,
  `jabatan` varchar(27) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`kodekaryawan`, `nip`, `nama`, `golongan`, `jabatan`, `status`) VALUES
(1, '', 'Achirah Suraini', '', 'Asisten Verifikator Berkas', '1'),
(2, '', 'Aulia Noviasry Hendarianti', '', 'Asisten Verifikator Berkas', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `kodekriteria` int(11) NOT NULL,
  `kriteria` varchar(27) NOT NULL,
  `kategori` enum('Cost','Benefit') NOT NULL,
  `bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`kodekriteria`, `kriteria`, `kategori`, `bobot`) VALUES
(1, 'Orientasi Pelayanan', 'Benefit', 20),
(2, 'Integritas', 'Benefit', 20),
(3, 'Komitmen', 'Benefit', 20),
(4, 'Disiplin', 'Benefit', 20),
(5, 'Kerjasama', 'Benefit', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `na`
--

CREATE TABLE `na` (
  `kodena` int(11) NOT NULL,
  `na` double NOT NULL,
  `periode` varchar(18) NOT NULL,
  `kodekaryawan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `kodenilai` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `periode` varchar(18) NOT NULL,
  `kodekriteria` int(11) NOT NULL,
  `kodekaryawan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`kodenilai`, `nilai`, `periode`, `kodekriteria`, `kodekaryawan`) VALUES
(11, 75, 'November 2022', 1, 1),
(12, 87, 'November 2022', 2, 1),
(13, 80, 'November 2022', 3, 1),
(14, 24, 'November 2022', 4, 1),
(15, 55, 'November 2022', 5, 1),
(16, 77, 'November 2022', 1, 2),
(17, 87, 'November 2022', 2, 2),
(18, 56, 'November 2022', 3, 2),
(19, 57, 'November 2022', 4, 2),
(20, 80, 'November 2022', 5, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `skema`
--

CREATE TABLE `skema` (
  `kodeskema` int(11) NOT NULL,
  `periode` varchar(18) NOT NULL,
  `kodekriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `skema`
--

INSERT INTO `skema` (`kodeskema`, `periode`, `kodekriteria`) VALUES
(4, 'Januari 2022', 2),
(5, 'Januari 2022', 5),
(6, 'Februari 2022', 4),
(7, 'Februari 2022', 5),
(8, 'Februari 2022', 3),
(9, 'Maret 2022', 4),
(10, 'Maret 2022', 2),
(11, 'Maret 2022', 5),
(12, 'November 2022', 4),
(13, 'November 2022', 2),
(14, 'November 2022', 5),
(15, 'November 2022', 3),
(16, 'November 2022', 1),
(17, 'Oktober 2022', 2),
(18, 'Oktober 2022', 5),
(19, 'Oktober 2022', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`kodekaryawan`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`kodekriteria`);

--
-- Indeks untuk tabel `na`
--
ALTER TABLE `na`
  ADD PRIMARY KEY (`kodena`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`kodenilai`);

--
-- Indeks untuk tabel `skema`
--
ALTER TABLE `skema`
  ADD PRIMARY KEY (`kodeskema`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `kodekaryawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `kodekriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `na`
--
ALTER TABLE `na`
  MODIFY `kodena` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `kodenilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `skema`
--
ALTER TABLE `skema`
  MODIFY `kodeskema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
