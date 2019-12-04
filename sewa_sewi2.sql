-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Des 2019 pada 16.19
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewa_sewi2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahasa`
--

CREATE TABLE `bahasa` (
  `idbahasa` int(11) NOT NULL,
  `namabahasa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bahasa`
--

INSERT INTO `bahasa` (`idbahasa`, `namabahasa`) VALUES
(1, 'Indonesia'),
(2, 'Inggris'),
(3, 'Jerman'),
(4, 'Spanyol'),
(5, 'Mandarin'),
(6, 'Korea'),
(7, 'Italia'),
(8, 'Jepang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahasatourgate`
--

CREATE TABLE `bahasatourgate` (
  `idtg` char(5) NOT NULL,
  `idbahasa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bahasatourgate`
--

INSERT INTO `bahasatourgate` (`idtg`, `idbahasa`) VALUES
('TG001', 1),
('TG002', 1),
('TG001', 2),
('TG002', 7),
('TG002', 3),
('TG001', 2),
('TG002', 7),
('TG002', 3),
('TG003', 4),
('TG003', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailtransaksi`
--

CREATE TABLE `detailtransaksi` (
  `idnota` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `idtransaksi` char(5) NOT NULL,
  `periode_awal` date NOT NULL,
  `periode_akhir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detailtransaksi`
--

INSERT INTO `detailtransaksi` (`idnota`, `idbarang`, `idtransaksi`, `periode_awal`, `periode_akhir`) VALUES
(33, 2, 'SS003', '2019-12-04', '2019-12-12'),
(34, 2, 'SS003', '2019-12-03', '2019-12-05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailtransaksi2`
--

CREATE TABLE `detailtransaksi2` (
  `idnota` int(11) NOT NULL,
  `idbarang` char(5) NOT NULL,
  `idtransaksi` char(5) NOT NULL,
  `periode_aw` date NOT NULL,
  `periode_ak` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detailtransaksi2`
--

INSERT INTO `detailtransaksi2` (`idnota`, `idbarang`, `idtransaksi`, `periode_aw`, `periode_ak`) VALUES
(3, 'TG001', 'SS003', '2019-12-04', '2019-12-05'),
(4, 'TG002', 'SS003', '2019-12-04', '2019-12-06'),
(5, 'TG002', 'SS003', '2019-12-02', '2019-12-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id` int(11) NOT NULL,
  `Merk` varchar(100) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `JumlahSeat` int(11) NOT NULL,
  `Tahun` int(11) NOT NULL,
  `Plat` varchar(100) NOT NULL,
  `Transmisi` varchar(2) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id`, `Merk`, `Nama`, `JumlahSeat`, `Tahun`, `Plat`, `Transmisi`, `Harga`, `Foto`) VALUES
(1, 'Toyota', 'Innova', 8, 2017, 'L 1804 TR', 'MT', 600000, ''),
(2, 'Daihatsu', 'Xenia', 8, 2018, 'L 1101 WQ', 'AT', 700000, ''),
(3, 'Honda', 'HRV', 5, 2018, 'L 1201 CS', 'MT', 400000, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tourguide`
--

CREATE TABLE `tourguide` (
  `IDTG` char(5) NOT NULL,
  `NamaTG` varchar(40) DEFAULT NULL,
  `UmurTG` int(11) DEFAULT NULL,
  `JenisKelaminTG` varchar(10) DEFAULT NULL,
  `nomorhp` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `FotoTG` varchar(100) NOT NULL,
  `HargaTG` decimal(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tourguide`
--

INSERT INTO `tourguide` (`IDTG`, `NamaTG`, `UmurTG`, `JenisKelaminTG`, `nomorhp`, `email`, `FotoTG`, `HargaTG`) VALUES
('TG001', 'Natasha Meidyani', 28, 'Perempuan', '085621498825', 'natasha@sewasewi.com', '', '700000.00'),
('TG002', 'Bagas Azmi', 24, 'Laki-laki', '08532164578', 'azmi.bagas@sewasewi.com', '', '500000.00'),
('TG003', 'Atika Farahdina', 25, 'Perempuan', '089654723314', 'atika@sewasewi.com', '', '1000000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `iduser` char(5) NOT NULL,
  `Total` int(11) NOT NULL,
  `Tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `Id` char(5) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `JenisKelamin` char(1) NOT NULL,
  `Foto` varchar(100) NOT NULL,
  `NoHP` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Role` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`Id`, `Nama`, `Alamat`, `JenisKelamin`, `Foto`, `NoHP`, `Email`, `Password`, `Role`) VALUES
('SS001', 'Kevin Angga Waluyo', 'Jalan A.R. Hakim, Surabaya', 'L', '', '082387412226', 'kawkevin@gmail.com', 'oalahcuy', '2'),
('SS002', 'Ratna Ayu', 'Jalan Sumatera, Yogyakarta', 'P', '', '081342154978', 'ratnaayu21@gmail.com', 'sontoloyo', '1'),
('SS003', 'Excel Deo Coananda', 'Jalan Pelipis, Bandung', 'L', '', '082451236644', 'exceldeo@gmail.com', 'gangbuntu', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bahasa`
--
ALTER TABLE `bahasa`
  ADD PRIMARY KEY (`idbahasa`);

--
-- Indeks untuk tabel `bahasatourgate`
--
ALTER TABLE `bahasatourgate`
  ADD KEY `idtg` (`idtg`),
  ADD KEY `idbahasa` (`idbahasa`);

--
-- Indeks untuk tabel `detailtransaksi`
--
ALTER TABLE `detailtransaksi`
  ADD PRIMARY KEY (`idnota`),
  ADD KEY `idbarang` (`idbarang`),
  ADD KEY `idtransaksi` (`idtransaksi`);

--
-- Indeks untuk tabel `detailtransaksi2`
--
ALTER TABLE `detailtransaksi2`
  ADD PRIMARY KEY (`idnota`),
  ADD KEY `idtransaksi` (`idtransaksi`),
  ADD KEY `idbarang` (`idbarang`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tourguide`
--
ALTER TABLE `tourguide`
  ADD PRIMARY KEY (`IDTG`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD KEY `iduser` (`iduser`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bahasa`
--
ALTER TABLE `bahasa`
  MODIFY `idbahasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `detailtransaksi`
--
ALTER TABLE `detailtransaksi`
  MODIFY `idnota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `detailtransaksi2`
--
ALTER TABLE `detailtransaksi2`
  MODIFY `idnota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bahasatourgate`
--
ALTER TABLE `bahasatourgate`
  ADD CONSTRAINT `bahasatourgate_ibfk_1` FOREIGN KEY (`idbahasa`) REFERENCES `bahasa` (`idbahasa`),
  ADD CONSTRAINT `bahasatourgate_ibfk_2` FOREIGN KEY (`idtg`) REFERENCES `tourguide` (`IDTG`);

--
-- Ketidakleluasaan untuk tabel `detailtransaksi`
--
ALTER TABLE `detailtransaksi`
  ADD CONSTRAINT `detailtransaksi_ibfk_1` FOREIGN KEY (`idbarang`) REFERENCES `mobil` (`id`);

--
-- Ketidakleluasaan untuk tabel `detailtransaksi2`
--
ALTER TABLE `detailtransaksi2`
  ADD CONSTRAINT `detailtransaksi2_ibfk_1` FOREIGN KEY (`idbarang`) REFERENCES `tourguide` (`IDTG`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `user` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
