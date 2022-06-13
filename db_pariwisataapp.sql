-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 21, 2017 at 05:01 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pariwisataapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hotel`
--

CREATE TABLE `tb_hotel` (
  `id` int(11) NOT NULL,
  `id_kabupaten` int(11) DEFAULT NULL,
  `nama_hotel` varchar(255) DEFAULT NULL,
  `tipe_hotel` varchar(255) DEFAULT NULL,
  `tarif` int(11) DEFAULT NULL,
  `alamat` text,
  `no_telp` varchar(12) DEFAULT NULL,
  `no_wa` varchar(12) DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_hotel`
--

INSERT INTO `tb_hotel` (`id`, `id_kabupaten`, `nama_hotel`, `tipe_hotel`, `tarif`, `alamat`, `no_telp`, `no_wa`, `instagram`, `facebook`, `twitter`, `email`, `website`, `foto`, `keterangan`) VALUES
(4, 12, 'Meotel Kebumen', 'Bintang 5', 235000, 'Jl A Yani No 31, Kebumen, Jawa Tengah, Indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meotel.jpg', 'Hotel Meotel Kebumen persembahan Dafam Hotel Management adalah property yang memberikan kenyamanan fasilitas dan layanan. Hotel bintang 2 ini menyediakan biaya yang terjangkau dan berkomitmen untuk bisnis dan liburan wisatawan yang mencari standar baru akomodasi yang nyaman.'),
(5, 12, 'Mexolie Hotel', 'Bintang 5', 367000, 'Jl. Merak II No. 8, Panjer, Kebumen, Jawa Tengah, Inndonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mexolie.jpg', 'Sebuah hunian yang nyaman, bersih, dan desain yang minimalis. Mexolie Hotel menawarkan pelayanan yang istimewa dan fasilitas yang akan membuat pengalaman menginap Anda tidak terlupakan, seperti Wi-Fi gratis di semua kamar, TV, AC, restoran, kolam renang, layanan kebersihan, resepsionis yang ramah, Wi-fi di tempat umum, serta beberapa fasilitas yang lainnya.'),
(6, 20, 'Belik Kembar ', 'Bintang 3', 200000, 'Jl AW. Soemarmo, Purbalingga. Telp 0281-891948', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belik-Kembar.jpg', 'Sebuah hunian yang nyaman, bersih, dan desain yang minimalis. Menawarkan pelayanan yang istimewa dan fasilitas yang akan membuat pengalaman menginap Anda tidak terlupakan, seperti Wi-Fi gratis di semua kamar, TV, AC, restoran, kolam renang, layanan kebersihan, resepsionis yang ramah, Wi-fi di tempat umum, serta beberapa fasilitas yang lainnya.'),
(7, 20, 'Kencana Hotel', 'Bintang 3', 178000, 'Jl Pujowiyoto, Purbalingga. Telp 0281-892920', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kencana-Hotel.jpg', 'Sebuah hunian yang nyaman, bersih, dan desain yang minimalis. Mexolie Hotel menawarkan pelayanan yang istimewa dan fasilitas yang akan membuat pengalaman menginap Anda tidak terlupakan, seperti Wi-Fi gratis di semua kamar, TV, AC, restoran, kolam renang, layanan kebersihan, resepsionis yang ramah, Wi-fi di tempat umum, serta beberapa fasilitas yang lainnya.'),
(8, 1, 'Central Hotel Banjarnegara', 'Bintang 5', 180000, 'Jl. Mayjend Panjaitan No.24, Krandegan, Banjarnegara, Krandegan, Kec. Banjarnegara, Banjarnegara, Jawa Tengah 53418', '(0286) 59111', '-', '-', '-', '-', '-', 'hotelcentralbanjarnegara.blogspot.co.id', 'file_1509339465.jpg', 'Hotel di Banjar Negara'),
(9, 2, 'Hotel Wisata Niaga', 'Bintang 3', 200000, 'Purwokerto', '02347887667', '02347887667', 'Hotel Wisata Niaga', 'Hotel Wisata Niaga', 'Hotel Wisata Niaga', 'Hotel Wisata Niaga', 'Hotel Wisata Niaga', 'file_1509761541.jpg', 'Hotel Wisata Niaga'),
(10, 2, 'Tiara Hotel', 'Bintang 5', 180000, 'Purwokerto', '02347887667', 'Tiara Hotel', 'Tiara Hotel', 'Tiara Hotel', 'Tiara Hotel', 'Tiara Hotel', 'Tiara Hotel', 'file_1509761583.jpg', 'Tiara Hotel');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_wisata`
--

CREATE TABLE `tb_jenis_wisata` (
  `id` int(11) NOT NULL,
  `jenis_wisata` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jenis_wisata`
--

INSERT INTO `tb_jenis_wisata` (`id`, `jenis_wisata`) VALUES
(1, 'Wisata Alam'),
(2, 'Wisata Religi'),
(3, 'Wisata Keluarga');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kabupaten`
--

CREATE TABLE `tb_kabupaten` (
  `id` int(11) NOT NULL,
  `nama_kabupaten` varchar(255) DEFAULT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kabupaten`
--

INSERT INTO `tb_kabupaten` (`id`, `nama_kabupaten`, `foto`) VALUES
(1, 'Banjarnegara', 'banjarnegara.jpg'),
(2, 'Banyumas', 'banyumas.jpg'),
(3, 'Batang', 'batang.jpg'),
(4, 'Blora', 'blora.jpg'),
(5, 'Boyolali', 'boyolali.jpg'),
(6, 'Brebes', 'brebes.jpg'),
(7, 'Cilacap', 'cilacap.jpg'),
(8, 'Demak', 'demak.jpg'),
(9, 'Grobogan', 'file_1509336130.jpg'),
(10, 'Jepara', 'jepara.jpg'),
(11, 'Karanganyar', 'karanganyar.jpg'),
(12, 'Kebumen', 'kebumen.jpg'),
(13, 'Kendal', 'kendal.jpg'),
(14, 'Klaten', 'klaten.jpg'),
(15, 'Kudus', 'kudus.jpg'),
(16, 'Magelang', 'magelang.jpg'),
(17, 'Pati', 'pati.jpg'),
(18, 'Pekalongan', 'pekalongan.jpg'),
(19, 'Pemalang', 'pemalang.jpg'),
(20, 'Purbalingga', 'purbalingga.jpg'),
(21, 'Purworejo', 'purworejo.jpg'),
(22, 'Rembang', 'rembang.jpg'),
(23, 'Semarang', 'semarang.jpg'),
(24, 'Sragen', 'sragen.jpg'),
(25, 'Sukoharjo', 'sukoharjo.jpg'),
(26, 'Tegal', 'tegal.jpg'),
(27, 'Temanggung', 'temanggung.jpg'),
(28, 'Wonogiri', 'wonogiri.jpg'),
(29, 'Wonosobo', 'wonosobo.jpg'),
(30, 'Kota Magelang', 'magelang.jpg'),
(31, 'Kota Pekalongan', 'pekalongan.jpg'),
(32, 'Kota Salatiga', 'file_1509336179.jpg'),
(33, 'Kota Semarang', 'semarang.jpg'),
(34, 'Kota Surakarta', 'file_1509336246.jpg'),
(35, 'Kota Tegal', 'tegal.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kuliner`
--

CREATE TABLE `tb_kuliner` (
  `id` int(11) NOT NULL,
  `id_kabupaten` int(11) DEFAULT NULL,
  `nama_kuliner` varchar(255) DEFAULT NULL,
  `jenis_kuliner` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `alamat` text,
  `no_telp` varchar(12) DEFAULT NULL,
  `no_wa` varchar(12) DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kuliner`
--

INSERT INTO `tb_kuliner` (`id`, `id_kabupaten`, `nama_kuliner`, `jenis_kuliner`, `harga`, `alamat`, `no_telp`, `no_wa`, `instagram`, `facebook`, `twitter`, `email`, `website`, `foto`, `video`, `keterangan`) VALUES
(1, 2, 'Bakso Pekihs', 'Makanan Kuah', 12000, 'jalan Raya Purwokerto', '098967746464', '098967746464', 'Bakso Pekih', 'Bakso Pekih', 'Bakso Pekih', 'BaksoPekih@gmail.com', 'BaksoPekih.com', 'file_1509747740.jpg', 'BaksoPekih.com', 'Bakso Pekih'),
(2, 2, 'Angkringan Tahu Kupat', 'Makanan Kuah', 7000, 'Purwokerto', '02347887667', '09876545555', 'Angkringan Tahu Kupat', 'Angkringan Tahu Kupat', 'Angkringan Tahu Kupat', 'Angkringan Tahu Kupat', 'Angkringan Tahu Kupat', 'file_1509764296.jpg', 'Angkringan Tahu Kupat', 'Angkringan Tahu Kupat');

-- --------------------------------------------------------

--
-- Table structure for table `tb_level`
--

CREATE TABLE `tb_level` (
  `id` int(11) NOT NULL,
  `nama_level` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_level`
--

INSERT INTO `tb_level` (`id`, `nama_level`) VALUES
(1, 'Super Admin'),
(2, 'Administrator'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nama_wisata`
--

CREATE TABLE `tb_nama_wisata` (
  `id` int(11) NOT NULL,
  `id_kabupaten` int(11) DEFAULT NULL,
  `id_jenis_wisata` int(11) DEFAULT NULL,
  `nama_wisata` varchar(255) DEFAULT NULL,
  `harga_tiket` int(11) DEFAULT NULL,
  `jam_buka` time DEFAULT NULL,
  `jam_tutup` time DEFAULT NULL,
  `alamat` text,
  `no_telp` varchar(12) DEFAULT NULL,
  `no_wa` varchar(15) DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nama_wisata`
--

INSERT INTO `tb_nama_wisata` (`id`, `id_kabupaten`, `id_jenis_wisata`, `nama_wisata`, `harga_tiket`, `jam_buka`, `jam_tutup`, `alamat`, `no_telp`, `no_wa`, `instagram`, `facebook`, `twitter`, `email`, `website`, `foto`, `video`, `keterangan`) VALUES
(17, 2, 1, 'Lokawisata Baturaden', 15000, '09:00:00', '17:00:00', 'Lokawisata,, Karangmangu, Baturraden, Kabupaten Banyumas, Jawa Tengah 53151', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wana-Wisata-Baturraden.jpg', NULL, 'Baturraden is a tourist resort on the slope of Mount Slamet in Banyumas Regency, Central Java. It features panoramic views, waterfalls, a mini-train, paddleboats, a water slide, and a pool'),
(19, 2, 1, 'Curug Cipendok', 10000, '08:00:00', '16:00:00', 'Jalan cipendok', '02347887667', 'Curug Cipendok', 'Curug Cipendok', 'Curug Cipendok', 'Curug Cipendok', 'Curug Cipendok', 'Curug Cipendok', 'file_1509760313.jpg', 'Curug Cipendok', 'Curug Cipendok');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL,
  `id_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `email`, `password`, `no_telp`, `id_level`) VALUES
(1, 'Markonahe', 'makrona@gmail.com', '123', '0897575757', 3),
(2, 'Ipung Purwana', 'ipungofficial@gmail.com', '123', '095855757575', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_hotel`
--
ALTER TABLE `tb_hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kabupaten` (`id_kabupaten`);

--
-- Indexes for table `tb_jenis_wisata`
--
ALTER TABLE `tb_jenis_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kabupaten`
--
ALTER TABLE `tb_kabupaten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kuliner`
--
ALTER TABLE `tb_kuliner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kabupaten` (`id_kabupaten`);

--
-- Indexes for table `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_nama_wisata`
--
ALTER TABLE `tb_nama_wisata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jenis_wisata` (`id_jenis_wisata`),
  ADD KEY `id_kabupaten` (`id_kabupaten`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_hotel`
--
ALTER TABLE `tb_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_jenis_wisata`
--
ALTER TABLE `tb_jenis_wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_kabupaten`
--
ALTER TABLE `tb_kabupaten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tb_kuliner`
--
ALTER TABLE `tb_kuliner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_nama_wisata`
--
ALTER TABLE `tb_nama_wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_hotel`
--
ALTER TABLE `tb_hotel`
  ADD CONSTRAINT `tb_hotel_ibfk_1` FOREIGN KEY (`id_kabupaten`) REFERENCES `tb_kabupaten` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `tb_kuliner`
--
ALTER TABLE `tb_kuliner`
  ADD CONSTRAINT `tb_kuliner_ibfk_1` FOREIGN KEY (`id_kabupaten`) REFERENCES `tb_kabupaten` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `tb_nama_wisata`
--
ALTER TABLE `tb_nama_wisata`
  ADD CONSTRAINT `tb_nama_wisata_ibfk_1` FOREIGN KEY (`id_jenis_wisata`) REFERENCES `tb_jenis_wisata` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `tb_nama_wisata_ibfk_2` FOREIGN KEY (`id_kabupaten`) REFERENCES `tb_kabupaten` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tb_level` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
