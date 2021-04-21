-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Apr 2021 pada 11.18
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instaapp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_postingan` int(11) NOT NULL,
  `komentar` text NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_user`, `id_postingan`, `komentar`, `likes`) VALUES
(1, 3, 18, 'Nice Flower', 0),
(10, 3, 19, 'Yes !!!', 0),
(11, 3, 24, 'Let\'s Go !!!', 0),
(12, 8, 24, 'Go !!!', 0),
(13, 8, 25, 'Tempat Favorit', 0),
(14, 8, 25, 'Banyak kenangan disana', 0),
(15, 4, 25, 'Menyenangkan !!!!', 0),
(16, 4, 23, 'No, Ferrari la Ferrari is the best', 0),
(17, 9, 25, 'Memang menyenangkan !!!', 0),
(18, 10, 18, 'Yes !!!', 0),
(19, 10, 27, 'Let\'s Go !!!', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `likes`
--

CREATE TABLE `likes` (
  `id_like` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_postingan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `likes`
--

INSERT INTO `likes` (`id_like`, `id_user`, `id_postingan`) VALUES
(1, 3, 17),
(2, 3, 18),
(3, 6, 18),
(6, 3, 16),
(7, 3, 15),
(12, 3, 22),
(13, 3, 24),
(17, 8, 23),
(21, 3, 25),
(22, 8, 25),
(23, 8, 17),
(25, 4, 23),
(27, 9, 25),
(28, 9, 26),
(29, 10, 23),
(30, 10, 27);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_user` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `nomor_handphone` varchar(13) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `TTL` date NOT NULL,
  `foto` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_user`, `username`, `email`, `nomor_handphone`, `jenis_kelamin`, `TTL`, `foto`, `password`) VALUES
(3, 'Asfani Rahmatullah', 'asfanirahmat456@gmail.com', '085954827333', 'Laki-laki', '2000-02-25', 'asfsae', '64af94d38821f79dea6b9a0e14ade533ebe2ad3fe4195c1bb3fd983bbce43a39'),
(4, 'Fred', 'asfanirahmat123@gmail.com', '085954827333', 'Laki-laki', '2000-02-25', '', '42af38850243a942950ee35fec9333962fc380edc21fe1112d177e1132db6b97'),
(6, 'Angeline', 'asfanirahmat1@gmail.com', '085954827333', 'Laki-laki', '0000-00-00', '', '42af38850243a942950ee35fec9333962fc380edc21fe1112d177e1132db6b97'),
(7, 'Alfred', 'asfanirahmat@gmail.com', '085954827333', 'Laki-laki', '0000-00-00', '', '42af38850243a942950ee35fec9333962fc380edc21fe1112d177e1132db6b97'),
(8, 'Roseline', 'asfanirahma@gmail.com', '085954827333', 'Perempuan', '2000-07-06', '', '42af38850243a942950ee35fec9333962fc380edc21fe1112d177e1132db6b97'),
(9, 'Asfani R', 'asfani5@gmail.com', '085954827333', 'Laki-laki', '2010-03-11', '', '42af38850243a942950ee35fec9333962fc380edc21fe1112d177e1132db6b97'),
(10, 'Rahmat', 'asfani51@gmail.om', '085954827333', 'Laki-laki', '2021-04-01', '', '42af38850243a942950ee35fec9333962fc380edc21fe1112d177e1132db6b97');

-- --------------------------------------------------------

--
-- Struktur dari tabel `postingan`
--

CREATE TABLE `postingan` (
  `id_postingan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `postingan` text DEFAULT NULL,
  `jml_like` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `postingan`
--

INSERT INTO `postingan` (`id_postingan`, `id_user`, `gambar`, `postingan`, `jml_like`) VALUES
(15, 3, 'images_post/Blog_Jenis-Ikan-Mas-Koki-Lucu-Cantik-Paling-Populer.jpg', 'Ikan mas koki', 0),
(16, 3, 'images_post/Merdeka_Square_Monas_02.jpg', 'Monas Jakarta', 0),
(17, 4, 'images_post/karapansapijpg.jpg', 'Karapan Sapi, Madura', 0),
(18, 4, 'images_post/aglaonema-super-white.jpg', 'Aglonema super white', 0),
(19, 8, 'images_post/2g4b5hstbd051.jpg', 'My favorite operator in Arknight', 0),
(20, 6, 'images_post/f5dc4963-5422-498c-b59a-02d7925d8b09-mobile.jpg', 'My new collection', 0),
(22, 6, 'images_post/5e3a4a47da8bd.jpg', 'My new room !!! ^_^', 0),
(23, 8, 'images_post/B-Bianco-Phanes.jpg', 'Dream car\r\n(Lamborghini Aventador SVJ)', 0),
(24, 7, 'images_post/Dota2-Banner-1024x538.jpg', 'Go !!! Secret Dota 2', 0),
(25, 8, 'images_post/foto.jpg', 'Candi Borobudur', 0),
(26, 9, 'images_post/IMG_20200829_162221_1.jpg', 'Pantai Telangoh !!!!', 0),
(27, 10, 'images_post/foto.jpg', 'Liburan !!!!', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_postingan` (`id_postingan`);

--
-- Indeks untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id_like`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_postingan` (`id_postingan`),
  ADD KEY `id_user_2` (`id_user`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `postingan`
--
ALTER TABLE `postingan`
  ADD PRIMARY KEY (`id_postingan`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `likes`
--
ALTER TABLE `likes`
  MODIFY `id_like` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `postingan`
--
ALTER TABLE `postingan`
  MODIFY `id_postingan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_postingan`) REFERENCES `postingan` (`id_postingan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentar_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `pengguna` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`id_postingan`) REFERENCES `postingan` (`id_postingan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `pengguna` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `postingan`
--
ALTER TABLE `postingan`
  ADD CONSTRAINT `postingan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `pengguna` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
