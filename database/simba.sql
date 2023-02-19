-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2022 at 05:14 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simba`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama_mhs` varchar(60) NOT NULL,
  `tahun_akademik` varchar(10) NOT NULL,
  `prodi` varchar(40) NOT NULL,
  `bank` varchar(40) NOT NULL,
  `no_rek` varchar(20) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `id_univ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama_mhs`, `tahun_akademik`, `prodi`, `bank`, `no_rek`, `no_hp`, `kecamatan`, `jk`, `semester`, `id_univ`) VALUES
(5, 'Sella Gurana', '2019', 'Kedokteran', 'BCA', '8112 4453 2546', '082287034230', 'Tanah Putih', 'Perempuan', '6', 5),
(6, 'Ronanda Saputra', '2020', 'Teknik Informatika', 'BRI', '8118 7364 1383', '082287034230', 'Rimba Melintang', 'Laki-laki', '4', 4),
(7, 'Zulkarnain', '2021', 'Sistem Informasi', 'BRI', '8118 6452 6782', '082276345281', 'Bangko', 'Laki-laki', '2', 4),
(9, 'Alisha Monifa', '2021', 'Teknik Informatika', 'BCA', '8118 5463 5262', '082245372178', 'Tanah Putih', 'Perempuan', '4', 4),
(11, 'Tengku Rizki', '2020', 'Perhotelan', 'Mandiri', '8118 6122 5463', '082147586932', 'Kubu Babussalam', 'Laki-laki', '4', 8),
(12, 'Sri Wahyuni', '2019', 'Teknik Elektronika Telekomunikasi', 'BCA', '8118 6452 3241', '082534253647', 'Bangko Pusako', 'Perempuan', '1', 4),
(14, 'MHD. Anwar', '2020', 'Teknik Informatika', 'Mandiri', '8118 5463 5290', '082234215678', 'Bangko Pusako', 'Laki-laki', '4', 4),
(15, 'M. Shafy', '2022', 'Teknik Informatika', 'BCA', '8118 6452 8694', '0845363727', 'Rimba Melintang', 'Laki-laki', '1', 5),
(16, 'Mardhatillah Hayati', '2019', 'Teknik Listrik', 'Mandiri', '8118 3214 4564', '082287034230', 'Tanah Putih', 'Perempuan', '1', 4),
(17, 'Marsuki. D', '2019', 'Sistem Informasi', 'BNI', '8238 6452 8881', '0844536473829', 'Sinaboi', 'Laki-laki', '1', 4),
(18, 'Mei Nanda Isnaini', '2019', 'Teknik Informatika', 'BCA', '8112 4453 2509', '082234134687', 'Bangko Pusako', 'Perempuan', '1', 4),
(19, 'Sri Wahyuni', '2019', 'Teknik Elektronika Telekomunikasi', 'BRI', '8118 6452 6000', '085234789012', 'Bangko Pusako', 'Perempuan', '1', 4),
(20, 'Tunggul Pramana', '2019', 'Teknik Mesin', 'BCA', '8118 5463 5991', '082278590386', 'Rimba Melintang', 'Laki-laki', '1', 4),
(21, 'TIKA ELLANI', '2016', 'Akuntansi', 'BRI', '8118 6452 6709', '082245768903', 'Bangko', 'Perempuan', '6', 4),
(22, 'ARDIYANTO', '2016', 'Sistem Informasi', 'BNI', '8112 4453 2500', '082276574893', 'Bangko', 'Laki-laki', '8', 4);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `val_nama` varchar(60) NOT NULL,
  `ipk` varchar(15) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `bukti` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  `id_mhs` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `val_nama`, `ipk`, `semester`, `bukti`, `status`, `id_mhs`, `id_user`) VALUES
(37, 'Ronanda Saputra', '3.88', '4', 'Screenshots_TAK.PNG', '', 6, NULL),
(41, 'Alisha Monifa', '3.88', '4', 'Screenshots_TAK1.PNG', '', 9, NULL),
(44, 'Ronanda Saputra', '3.88', '4', 'Screenshots_TAK3.PNG', '', 6, NULL),
(46, 'Alisha Monifa', '3.88', '4', '55445-presiden-jokowi.jpg', '', 9, NULL),
(50, 'Zulkarnain', '3.81', '1', '55445-presiden-jokowi.jpg', '', 7, 7),
(53, 'Zulkarnain', '3.81', '2', 'Bangalore.png', '', 7, 7),
(54, 'Zulkarnain', '2.70', '3', 'Screenshots_TAK11.PNG', '', NULL, 6),
(57, 'Zulkarnain', '2.66', '4', 'Score.png', '', 7, 7),
(58, 'MHD. Anwar', '3.88', '1', '3d-mini-house-final-house1.jpg', '', 14, 8),
(59, 'MHD. Anwar', '3.90', '2', 'Screenshots_TAK41.PNG', '', NULL, 8),
(60, 'MHD. Anwar', '2.70', '3', 'Screenshots_TAK31.PNG', '', NULL, 8),
(61, 'Mhd. Anwar', '3.77', '4', 'SIMBA.png', '', NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id_smt` int(11) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `nilai` varchar(20) NOT NULL,
  `id_nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `universitas`
--

CREATE TABLE `universitas` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `akreditasi` varchar(5) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `universitas`
--

INSERT INTO `universitas` (`id`, `nama`, `alamat`, `akreditasi`, `email`) VALUES
(4, 'Politeknik Caltex Riau', 'Rumbai', 'B', 'humas@pcr.ac.id'),
(5, 'Universitas Riau', 'Panam', 'A', 'humas@unri.ac.id'),
(8, 'Batam Tourism Polytechnic', 'Batam', 'B', 'humas@btp.ac.id'),
(9, 'Universitas Gadjah Mada', 'Yogyakarta', 'A', 'humas@ugm.ac.id'),
(10, 'Institut Pertanian Bogor', 'Bogor', 'A', 'humas@ipb.ac.id');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `role` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `nama`, `jk`, `role`, `alamat`, `gambar`) VALUES
(5, 'ronandasaputra@gmail.com', 'Ronanda', '12345', 'Ronanda Saputra', 'Laki-laki', 'Admin', 'Rimba Melintang', 'profil2.png'),
(6, 'indra@gmail.com', 'nanda', '12345', 'Indra Frimawan', 'Laki-laki', 'User', 'Rimba Melintang', 'profil2.png'),
(7, 'zulkarnain@gmail.com', 'Zulkarnain', '12345', 'Zulkarnain', 'Laki-laki', 'User', 'Bagan Siapi-Api', 'profil.png'),
(8, 'anwar@gmail.com', 'Anwar', '12345', 'Mhd. Anwar', 'Laki-laki', 'User', 'Bangko Pusako', 'profil2.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_univ` (`id_univ`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mhs` (`id_mhs`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id_smt`),
  ADD KEY `id_nilai` (`id_nilai`);

--
-- Indexes for table `universitas`
--
ALTER TABLE `universitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id_smt` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `universitas`
--
ALTER TABLE `universitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_univ`) REFERENCES `universitas` (`id`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_mhs`) REFERENCES `mahasiswa` (`id`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
