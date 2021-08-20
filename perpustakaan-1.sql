-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Agu 2021 pada 08.19
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan-1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `no_buku` varchar(20) NOT NULL,
  `nama_buku` varchar(200) NOT NULL,
  `pengarang_buku` varchar(200) NOT NULL,
  `penerbit_buku` varchar(100) NOT NULL,
  `sampul_buku` varchar(500) NOT NULL DEFAULT 'default.png',
  `kategori_buku` int(11) NOT NULL,
  `deskripsi_buku` varchar(500) NOT NULL DEFAULT '''Tidak ada deskripsi''',
  `status_buku` int(1) NOT NULL DEFAULT '0',
  `jumlah_dipinjam` int(11) NOT NULL,
  `love` int(11) NOT NULL,
  `buku-created_at` varchar(50) DEFAULT NULL,
  `buku-updated_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`no_buku`, `nama_buku`, `pengarang_buku`, `penerbit_buku`, `sampul_buku`, `kategori_buku`, `deskripsi_buku`, `status_buku`, `jumlah_dipinjam`, `love`, `buku-created_at`, `buku-updated_at`) VALUES
('1000000001', 'Bahasa Indonesia Kelas XII', 'Maman Suryaman', 'Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud', '1607094403_0288a63b019a875acbec.jpg', 1, 'Buku ini dipersiapkan untuk mendukung kebijakan Kurikulum 2013 yang tidak sekadar secara konstitusional mempertahankan bahasa Indonesia dalam daftar mata pelajaran di sekolah. Namun, Kurikulum terbaru ini mempertegaskan pentingnya keberadaan bahasa Indonesia sebagai penghela dan pembawa ilmu pengetahuan.', 0, 0, 2, 'Monday, 07-12-2020, 11:21:41', 'Wednesday, 09-12-2020, 22:36:12'),
('1000000002', 'Bahasa Inggris Kelas XII', 'Emi Emilia', 'Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud', '1607094792_248987c3e5c38fb72ded.jpg', 1, 'Buku ini dipersiapkan untuk membangun sikap, pengetahuan, dan keterampilan berkomunikasi siswa melalui pengalaman belajar yang berbentuk beragam kegiatan berkomunikasi aktif. Isi dan pengalaman yang telah dikembangkan dalam buku ini telah diupayakan agar dapat membantu siswa mencapaiempat kompetensi inti (KI) yang diamanahkan oleh Kurikulum 2013.', 1, 1, 3, 'Monday, 07-12-2020, 11:22:41', 'Thursday, 19-08-2121, 20:16:37'),
('1000000003', 'Pemrograman Dasar Kelas X', 'Andi Novianto', 'Erlangga', '1607229240_b896cdf73bdfe31cc8fa.jpg', 1, 'Buku ini diperuntukkan untuk pemebelajaran mengenai Pemrograman Dasar. Siswa akan mendapatkan teori dan implementasi penggunaan dan kegunaan dari Pemrograman. Diharapkan kedepannya siswa dapat memantapkan keahliannya untuk menuju jenjang yang lebih tinggi lagi.', 0, 5, 5, 'Monday, 07-12-2020, 11:23:41', 'Thursday, 19-08-2121, 20:05:54'),
('2000000001', 'Another Volume 1', 'Yukito Ayatsuji', 'Kadokawa Shoten', '1607187577_fffc57fd5dd888acd89b.jpeg', 2, 'Another dimulai dengan menceritakan seorang siswi berprestasi pada tahun 1972 di SMP Yomiyama Utara. Siswi yang sangat populer di kalangan guru-guru bahkan murid lainnya. Murid itu bernama Misaki dari kelas 3-3, tetapi ia meninggal secara tiba-tiba ketika pelajaran di sekolah tengah berlangsung. Hal itulah yang disayangkan oleh para murid dan guru di sana.', 0, 3, 9, 'Monday, 07-12-2020, 11:24:41', 'Wednesday, 09-12-2020, 23:04:31'),
('2000000002', 'Another Volume 2', 'Yukito Ayatsuji', 'Kadokawa Shoten', '1607187711_9a8684dff0e2ca9d064e.jpeg', 2, 'Another dimulai dengan menceritakan seorang siswi berprestasi pada tahun 1972 di SMP Yomiyama Utara. Siswi yang sangat populer di kalangan guru-guru bahkan murid lainnya. Murid itu bernama Misaki dari kelas 3-3, tetapi ia meninggal secara tiba-tiba ketika pelajaran di sekolah tengah berlangsung. Hal itulah yang disayangkan oleh para murid dan guru di sana.', 0, 1, 4, 'Monday, 07-12-2020, 11:25:41', 'Wednesday, 09-12-2020, 22:46:13'),
('2000000006', 'Sebuah Seni Untuk Bersikap Bodo Amat', 'Mark Manson', 'HarperOne', '1607188928_ca3afd3d386882e33e35.jpg', 2, 'Novel yang berjudul Sebuah Seni Untuk Bersikap Bodo Amat bercerita tentang seseorang yang bernama Charles Bukowski yang mempunyai masa lalu yang kelam, suka mabuk-mabukan, berjudi, mempermainkan wanita, kasar, tukang utang dan seorang penyair. Dia bercita-cita menjadi seorang penulis terkenal namun karya-karyanya selalu ditolak oleh hampir disetiap majalah, jurnal-jurnal, surat kabar dan penerbit lainnya.', 0, 2, 7, 'Monday, 07-12-2020, 11:29:41', 'Thursday, 19-08-2121, 20:03:28'),
('2000000007', 'Segala-Galanya Ambyar', 'Mark Manson', 'HarperOne', '1607189655_90b438667cbc40e2239b.jpg', 2, 'Novel yang berjudul Sebuah Seni Untuk Bersikap Bodo Amat bercerita tentang seseorang yang bernama Charles Bukowski yang mempunyai masa lalu yang kelam, suka mabuk-mabukan, berjudi, mempermainkan wanita, kasar, tukang utang dan seorang penyair. Dia bercita-cita menjadi seorang penulis terkenal namun karya-karyanya selalu ditolak oleh hampir disetiap majalah, jurnal-jurnal, surat kabar dan penerbit lainnya.', 0, 0, 1, 'Monday, 07-12-2020, 11:30:41', 'Wednesday, 09-12-2020, 22:42:09'),
('3000000002', 'Naruto Shippuden Volume 72', 'Masashi Kishimoto', 'Shonen Jump', '1607188805_45e71bf8c5d17792a089.jpg', 3, 'Komik ini menceritakan kisah lanjutan dari Naruto. Naruto kini telah beranjak dewasa begitu juga dengan teman – temannya. Naruto yang baru pulang dari latihannya bersama jiraiya pergi ketempat Tsunade dan bertemu dengan Sakura. Tsunade menyuruh mereka berdua untuk bertarung bersama Kakashi untuk mengukur seberapa jauh mereka berlatih dengan guru masing – masing.', 0, 1, 1, 'Monday, 07-12-2020, 11:32:41', 'Thursday, 19-08-2121, 20:01:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bukupinjam`
--

CREATE TABLE `bukupinjam` (
  `id_bukupinjam` int(11) NOT NULL,
  `nis_bukupinjam` varchar(20) DEFAULT NULL,
  `no_bukupinjam` varchar(20) NOT NULL,
  `status_bukupinjam` int(1) NOT NULL DEFAULT '0',
  `tanggal_pinjam` varchar(50) NOT NULL,
  `tanggal_kembali` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bukupinjam`
--

INSERT INTO `bukupinjam` (`id_bukupinjam`, `nis_bukupinjam`, `no_bukupinjam`, `status_bukupinjam`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
(31, '2018420086', '1000000002', 0, 'Thursday, 19-08-2121, 20:16:40', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `kategori-created_at` varchar(50) NOT NULL,
  `kategori-updated_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `kategori-created_at`, `kategori-updated_at`) VALUES
(1, 'Buku Ajar', 'Monday, 07-12-2020, 14:21:41', 'Monday, 07-12-2020, 14:21:41'),
(2, 'Novel', 'Monday, 07-12-2020, 14:31:41', 'Monday, 07-12-2020, 14:31:41'),
(3, 'Komik', 'Monday, 07-12-2020, 14:51:41', 'Monday, 07-12-2020, 14:51:41'),
(10, 'Dongeng', 'Wednesday, 09-12-2020, 22:19:30', 'Wednesday, 09-12-2020, 22:19:30'),
(11, 'Non Fiksi', 'Wednesday, 09-12-2020, 22:19:47', 'Wednesday, 09-12-2020, 22:19:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likebuku`
--

CREATE TABLE `likebuku` (
  `id_likebuku` int(11) NOT NULL,
  `nis_likebuku` varchar(20) NOT NULL,
  `no_likebuku` varchar(20) NOT NULL,
  `likebuku-created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `likebuku`
--

INSERT INTO `likebuku` (`id_likebuku`, `nis_likebuku`, `no_likebuku`, `likebuku-created_at`) VALUES
(74, '2018420086', '1000000002', 'Thursday, 19-08-2121, 20:16:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `nis` varchar(20) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `password` varchar(500) NOT NULL,
  `foto_profil` varchar(500) NOT NULL DEFAULT 'default.png',
  `deskripsi` varchar(500) NOT NULL DEFAULT 'Tidak ada deskripsi',
  `jabatan` int(11) NOT NULL DEFAULT '2',
  `user-created_at` varchar(50) DEFAULT NULL,
  `user-updated_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`nis`, `nama_user`, `tanggal_lahir`, `password`, `foto_profil`, `deskripsi`, `jabatan`, `user-created_at`, `user-updated_at`) VALUES
('1234567890', 'Admin Petugas Tertinggi', '2000-01-01', '$2y$10$F8dlTDHCIoWhFnz1KepxK.HLyNqIiMhCnM7hgjQb1VNMYnBnZYd7i', '1607010406_39d04efab1344b7c82dd.png', 'Akun ini adalah akun petugas yang paling berkuasa terhadap aplikasi ini. Akun ini bisa melakukan berbagai macam hal yang tidak bisa dilakukan oleh user, seperti menambahkan user baru, menambahkan buku baru, dll.', 1, 'Monday, 07-12-2020, 11:20:41', 'Wednesday, 09-12-2020, 23:09:18'),
('2018420086', 'Adriyan Wicaksono', '2000-03-22', '$2y$10$ckEIY1wDfPYIhddNC4Qlu.nbJSJXY32aW/Pp5tq6rDwq2eLhc0NXy', 'default.png', 'Tidak ada deskripsi', 2, 'Thursday, 19-08-2121, 20:12:34', 'Thursday, 19-08-2121, 20:12:34'),
('2018420098', 'Galih Nugroho', '2000-01-30', '$2y$10$RXF4lYUR5rmK.UMz84BQkOjJyQy5l4/xT.C64hK28dyq2wdTp0Slq', 'default.png', 'Tidak ada deskripsi', 2, 'Thursday, 19-08-2121, 20:15:10', 'Thursday, 19-08-2121, 20:15:10'),
('2018420105', 'Mohammad Ichlasul Amal Ashofa', '2000-06-03', '$2y$10$I7ghUCZ1UVqB/VrZAC5kYuLbbpq8Bico6lXMfju5.yo8.rQRagyx6', 'default.png', 'Tidak ada deskripsi', 2, 'Thursday, 19-08-2121, 20:10:12', 'Thursday, 19-08-2121, 20:10:12'),
('2018420111', 'Mohammad Zidan Al Dafa', '2000-10-08', '$2y$10$2L0nPdXCzGQjptD2qhbN2.60VCUx0pDcUuZIQ0jmPaNv9VLGVhMkG', 'default.png', 'Tidak ada deskripsi', 2, 'Thursday, 19-08-2121, 20:13:50', 'Thursday, 19-08-2121, 20:13:50');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`no_buku`),
  ADD KEY `buku+kategori=id_kategori` (`kategori_buku`);

--
-- Indeks untuk tabel `bukupinjam`
--
ALTER TABLE `bukupinjam`
  ADD PRIMARY KEY (`id_bukupinjam`),
  ADD KEY `bukupinjam+buku=no_buku` (`no_bukupinjam`),
  ADD KEY `bukupinjam+user=nis` (`nis_bukupinjam`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `likebuku`
--
ALTER TABLE `likebuku`
  ADD PRIMARY KEY (`id_likebuku`),
  ADD KEY `likebuku+buku=no_buku` (`no_likebuku`),
  ADD KEY `likebuku+user=nis` (`nis_likebuku`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bukupinjam`
--
ALTER TABLE `bukupinjam`
  MODIFY `id_bukupinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `likebuku`
--
ALTER TABLE `likebuku`
  MODIFY `id_likebuku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku+kategori=id_kategori` FOREIGN KEY (`kategori_buku`) REFERENCES `kategori` (`id_kategori`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `bukupinjam`
--
ALTER TABLE `bukupinjam`
  ADD CONSTRAINT `bukupinjam+buku=no_buku` FOREIGN KEY (`no_bukupinjam`) REFERENCES `buku` (`no_buku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bukupinjam+user=nis` FOREIGN KEY (`nis_bukupinjam`) REFERENCES `user` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `likebuku`
--
ALTER TABLE `likebuku`
  ADD CONSTRAINT `likebuku+buku=no_buku` FOREIGN KEY (`no_likebuku`) REFERENCES `buku` (`no_buku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likebuku+user=nis` FOREIGN KEY (`nis_likebuku`) REFERENCES `user` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
