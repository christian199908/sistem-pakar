-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jul 2021 pada 19.16
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `malaria13`
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
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator');

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
(2, 1, 1, 0.8, 0.4),
(3, 1, 2, 0.4, 0.2),
(4, 1, 3, 0.4, 0.2),
(5, 1, 4, 0.4, 0.2),
(6, 1, 5, 0.4, 0.2),
(7, 1, 6, 0.6, 0.2),
(8, 2, 7, 0.8, 0.4),
(9, 2, 8, 0.4, 0.2),
(10, 2, 9, 0.4, 0.2),
(11, 2, 10, 0.6, 0.4),
(12, 2, 11, 0.8, 0.6),
(13, 2, 12, 0.8, 0.4),
(14, 2, 13, 0.6, 0.2),
(15, 2, 14, 0.8, 0.6),
(16, 2, 15, 0.8, 0.4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` int(11) NOT NULL,
  `nama_gejala` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
(1, 'Demam berkala 3 hari sekali dengan puncak demam setelah 48 jam'),
(2, 'Menggigil serta keringat dingin'),
(3, 'Sakit Kepala'),
(4, 'Mual serta muntah-muntah'),
(5, 'Nyeri otot'),
(6, 'Suhu demam biasanya 39áµ’C'),
(7, 'Serangan demam tidak menentu'),
(8, 'Menggigil'),
(9, 'Muntah'),
(10, 'Panas ireguler dan keringat dingin'),
(11, 'Pembesaran limpa'),
(12, 'Suhu demam biasanya 40áµ’C'),
(13, 'Sakit kepala yang hebat'),
(14, 'Penurunan fungsi tubuh serta nyeri otot'),
(15, 'Kejang');

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
(321, '2021-07-09 21:50:58', 'a:2:{i:1;s:6:\"0.2272\";i:2;s:6:\"0.1904\";}', 'a:4:{i:1;s:1:\"4\";i:2;s:1:\"4\";i:9;s:1:\"3\";i:10;s:1:\"4\";}', 1, '0.2272'),
(320, '2021-07-09 21:50:27', 'a:2:{i:1;s:6:\"0.2272\";i:2;s:6:\"0.1904\";}', 'a:4:{i:1;s:1:\"4\";i:2;s:1:\"4\";i:9;s:1:\"3\";i:10;s:1:\"4\";}', 1, '0.2272'),
(319, '2021-07-09 21:49:30', 'a:2:{i:1;s:6:\"0.2272\";i:2;s:6:\"0.1904\";}', 'a:4:{i:1;s:1:\"4\";i:2;s:1:\"4\";i:9;s:1:\"3\";i:10;s:1:\"4\";}', 1, '0.2272'),
(318, '2021-07-09 21:43:56', 'a:2:{i:1;s:6:\"0.2272\";i:2;s:6:\"0.1904\";}', 'a:4:{i:1;s:1:\"4\";i:2;s:1:\"4\";i:9;s:1:\"3\";i:10;s:1:\"4\";}', 1, '0.2272'),
(316, '2021-07-08 22:42:27', 'a:1:{i:1;s:6:\"0.3847\";}', 'a:3:{i:1;s:1:\"3\";i:2;s:1:\"4\";i:3;s:1:\"3\";}', 1, '0.3847'),
(317, '2021-07-09 21:36:58', 'a:1:{i:1;s:6:\"0.3495\";}', 'a:3:{i:1;s:1:\"4\";i:2;s:1:\"3\";i:3;s:1:\"3\";}', 1, '0.3495');

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
(1, 'Malaria Tertiana', 'Malaria vivax atau malaria tertiana merupakan jenis malaria yang disebabkan oleh parasit plasmodium vivax.', 'Pencegahan agar tidak terulangi :\r\n1. Nyamuk malaria paling banyak muncul pada pagi hari sebelum matahari terbit dan sore hari. Pakailah pakaian pelindung dan lotion anti nyamuk pada jam-jam tersebut.\r\n2. Rutin menyemprot ruangan dengan obat nyamuk.\r\n3. Melakukan 3M, yaitu menguras bak mandi, menutup genangan air, dan menabur serbuk abate untuk membasmi jentik nyamuk.\r\n4. Mengajukan fogging untuk lingkungan tempat tinggal Anda, paling tidak sebulan sekali.\r\n5. Bila Anda akan bepergian ke tempat ', 'pvivax.jpg'),
(2, 'Malaria Tropika', 'Jenis malaria paling ganas ini disebabkan oleh parasit plasmodium falciparum.', 'Pencegahan agar tidak terulangi :\r\n1. Nyamuk malaria paling banyak muncul pada pagi hari sebelum matahari terbit dan sore hari. Pakailah pakaian pelindung dan lotion anti nyamuk pada jam-jam tersebut.\r\n2. Rutin menyemprot ruangan dengan obat nyamuk.\r\n3. Melakukan 3M, yaitu menguras bak mandi, menutup genangan air, dan menabur serbuk abate untuk membasmi jentik nyamuk.\r\n4. Mengajukan fogging untuk lingkungan tempat tinggal Anda, paling tidak sebulan sekali.\r\n5. Bila Anda akan bepergian ke tempat ', 'pfalciparum.jpg');

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
(14, 'Malaria Tertiana', '<p>Malaria&nbsp;<em>vivax</em>&nbsp;atau malaria tertiana merupakan jenis malaria yang disebabkan oleh parasit&nbsp;<em>plasmodium vivax</em>. Jenis ini sering terjadi di daerah tropis atau subtropis, termasuk Indonesia. Gejala awal malaria jenis ini adalah menggigil atau demam yang hilang-timbul. Selanjutnya, pasien akan mengalami demam setiap 48 jam.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>P. vivax</em>&nbsp;memiliki sifat&nbsp;<em>hipnozoit</em>, yakni kondisi di mana parasit dapat&nbsp;&quot;<strong>tertidur</strong>&quot; selama beberapa minggu atau bulan setelah penderita terinfeksi. Maka itu, kebanyakan penderita sama sekali tidak menunjukkan gejala apa pun, sehingga penyakit menjadi lebih sulit didiagnosis.&nbsp;&nbsp;</p>\r\n', '<p><strong>Pencegahan: </strong></p>\r\n\r\n<ol>\r\n	<li>Nyamuk malaria paling banyak muncul pada pagi hari sebelum matahari terbit dan sore hari. Pakailah pakaian pelindung dan lotion anti nyamuk pada jam-jam tersebut.</li>\r\n	<li>Rutin menyemprot ruangan dengan obat nyamuk.</li>\r\n	<li>Melakukan 3M, yaitu menguras bak mandi, menutup genangan air, dan menabur serbuk abate untuk membasmi jentik nyamuk.</li>\r\n	<li>Mengajukan fogging untuk lingkungan tempat tinggal anda, paling tidak sebulan sekali.</li>\r\n	<li>Bila anda akan bepergian ke tempat yang rawan malaria, seperti Indonesia Timur, anda dapat mengunjungi dokter untuk mendapatkan antibiotik yang dapat diminum sebelum berangkat sebagai langkah pencegahan.</li>\r\n</ol>\r\n', 'pvivax.jpg'),
(15, 'Malaria Tropika', '<p>Jenis malaria ini disebabkan oleh parasit <em>plasmodium falciparum</em>.<em>&nbsp;</em>Parasit ini menyebabkan malaria ganas yang banyak menimbulkan kematian. Gejalanya timbul 7-14 hari sesudah terinfeksi, tetapi kadang-kadang baru terjadi beberapa bulan kemudian. Gejalanya adalah muntah-muntah, diare, sakit kepala, anemia, dan demam yang naik-turun.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Apabila infeksi&nbsp;<em>P. falciparum</em>&nbsp;tidak segera ditangani dengan pengobatan malaria yang baik dalam 24 jam, besar kemungkinan penderita dapat mengalami komplikasi yang lebih berat, bahkan berpotensi terjadi kerusakan pada organ-organ&nbsp;tubuh tertentu.</p>\r\n', '<p><strong>Pencegahan :</strong></p>\r\n\r\n<ol>\r\n	<li>Nyamuk malaria paling banyak muncul pada pagi hari sebelum matahari terbit dan sore hari. Pakailah pakaian pelindung dan lotion anti nyamuk pada jam-jam tersebut.</li>\r\n	<li>Rutin menyemprot ruangan dengan obat nyamuk.</li>\r\n	<li>Melakukan 3M, yaitu menguras bak mandi, menutup genangan air, dan menabur serbuk abate untuk membasmi jentik nyamuk.</li>\r\n	<li>Mengajukan fogging untuk lingkungan tempat tinggal anda, paling tidak sebulan sekali.</li>\r\n	<li>Bila anda akan bepergian ke tempat yang rawan malaria, seperti Indonesia Timur, anda dapat mengunjungi dokter untuk mendapatkan antibiotik yang dapat diminum sebelum berangkat sebagai langkah pencegahan.</li>\r\n</ol>\r\n', 'pfalciparum.jpg');

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
  MODIFY `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `kode_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `post`
--
ALTER TABLE `post`
  MODIFY `kode_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
