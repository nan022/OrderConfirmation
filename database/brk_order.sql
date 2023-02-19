-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2023 at 04:39 PM
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
-- Database: `brk_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `reseller_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `product_desc` varchar(200) NOT NULL,
  `version` varchar(100) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `host_name` varchar(100) NOT NULL,
  `serial_number` varchar(50) NOT NULL,
  `detail` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `reseller_name`, `address`, `product_desc`, `version`, `order_id`, `quantity`, `host_name`, `serial_number`, `detail`) VALUES
(1, 'Ronanda Saputra', 'Jl. Rowosari Rumbai, Pekanbaru', 'Solusi terbaik untuk membersihkan kamar anda', '2021', '32hg3443ui32', '1', 'Joko', 'WR101', 'Kijang satu masuk'),
(2, 'Bagas Kara', 'Jalan Umban Sari', 'Motor', '2020', '23ds56uy564r', '2', 'Rahel', '4230', 'surat kuasa pemgambilan ijazah.pdf'),
(3, 'Boby', 'Jalan Sari Sari', 'Nothing', '2020', '237t56uy56bc', '1', 'Rahel', '4030', 'default.jpeg'),
(4, 'Resti Y', 'Jl. Jend. Sudirman', 'Lagi mager', '2021', '23d6opdt564r', '4', 'Rahel', '9112', 'surat kuasa pemgambilan ijazah.pdf');

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
(5, 'ronandasaputra@gmail.com', 'Ronanda', '12345', 'Ronanda Saputra', 'Laki-laki', 'Super Admin', 'Rimba Melintang', 'profil2.png'),
(6, 'indra@gmail.com', 'nanda', '12345', 'Indra Frimawan', 'Laki-laki', 'User', 'Rimba Melintang', 'profil2.png'),
(7, 'zulkarnain@gmail.com', 'Zulkarnain', '12345', 'Zulkarnain', 'Laki-laki', 'User', 'Bagan Siapi-Api', 'profil.png'),
(8, 'anwar@gmail.com', 'Anwar', '12345', 'Mhd. Anwar', 'Laki-laki', 'User', 'Bangko Pusako', 'profil2.png'),
(9, 'resti@gmail.com', 'Resti', '12345', 'Resti Yusfarima', 'Perempuan', 'Admin', 'Rohil', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
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
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
