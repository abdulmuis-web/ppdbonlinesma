-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 29, 2018 at 04:01 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdb`
--
DROP DATABASE IF EXISTS `ppdb`;
CREATE DATABASE IF NOT EXISTS `ppdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ppdb`;

-- --------------------------------------------------------

--
-- Table structure for table `Data_riwayat_kesehataan`
--

CREATE TABLE `Data_riwayat_kesehataan` (
  `email` varchar(250) NOT NULL,
  `nama_dokter_keluarga` varchar(250) DEFAULT '',
  `rumah_sakit` varchar(250) DEFAULT '',
  `memiliki_penyakit_jantung` varchar(250) DEFAULT '',
  `memiliki_penyakit_kanker` varchar(250) DEFAULT '',
  `memiliki_penyakit_kelainan_psikologis` varchar(250) DEFAULT '',
  `memiliki_penyakit_kelainan_syaraf` varchar(250) DEFAULT '',
  `memiliki_penyakit_kelainan_darah` varchar(250) DEFAULT '',
  `rawat_inap_dalam_dua_tahun_terakhir` varchar(250) DEFAULT '',
  `dalam_masa_pengobatan` varchar(250) DEFAULT '',
  `bantuan_medis` varchar(250) DEFAULT '',
  `kondisi_fisik_perhatiaan_khusus` varchar(250) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Data_riwayat_kesehataan`
--

INSERT INTO `Data_riwayat_kesehataan` (`email`, `nama_dokter_keluarga`, `rumah_sakit`, `memiliki_penyakit_jantung`, `memiliki_penyakit_kanker`, `memiliki_penyakit_kelainan_psikologis`, `memiliki_penyakit_kelainan_syaraf`, `memiliki_penyakit_kelainan_darah`, `rawat_inap_dalam_dua_tahun_terakhir`, `dalam_masa_pengobatan`, `bantuan_medis`, `kondisi_fisik_perhatiaan_khusus`) VALUES
('asdasd@gmail.com', 'qwjrqj', 'jqbwjrq', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak'),
('malianzikri92@gmail.com', 'mirna', 'rs siti mirna', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak');

-- --------------------------------------------------------

--
-- Table structure for table `ci_cookies`
--

CREATE TABLE `ci_cookies` (
  `id` int(11) NOT NULL,
  `cookie_id` varchar(255) DEFAULT NULL,
  `netid` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `orig_page_requested` varchar(120) DEFAULT NULL,
  `php_session_id` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_ayah_kandung`
--

CREATE TABLE `data_ayah_kandung` (
  `email` varchar(250) NOT NULL,
  `nama_ayah_kandung` varchar(2500) DEFAULT '',
  `tanggal_lahir_ayah_kandung` varchar(2500) DEFAULT '',
  `tempat_lahir_ayah_kandung` varchar(2500) DEFAULT '',
  `nomor_ktp_ayah_kandung` varchar(2500) DEFAULT '',
  `alamat_ayah_kandung` varchar(2500) DEFAULT '',
  `nomor_telepon_ayah_kandung` varchar(2500) DEFAULT '',
  `status_ayah_kandung` varchar(2500) DEFAULT '',
  `pendidikan_terakhir_ayah_kandung` varchar(2500) DEFAULT '',
  `nama_institusi_ayah_kandung` varchar(2500) DEFAULT '',
  `status_pekerjaan_ayah_kandung` varchar(2500) DEFAULT '',
  `jenis_pekerjaan_ayah_kandung` varchar(2500) DEFAULT '',
  `nama_perusahaan_ayah_kandung` varchar(2500) DEFAULT '',
  `jabatan_ayah_kandung` varchar(2500) DEFAULT '',
  `tahun_mulai_bekerja_ayah_kandung` varchar(2500) DEFAULT '',
  `gaji_pokok_ayah_kandung` varchar(2500) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_ayah_kandung`
--

INSERT INTO `data_ayah_kandung` (`email`, `nama_ayah_kandung`, `tanggal_lahir_ayah_kandung`, `tempat_lahir_ayah_kandung`, `nomor_ktp_ayah_kandung`, `alamat_ayah_kandung`, `nomor_telepon_ayah_kandung`, `status_ayah_kandung`, `pendidikan_terakhir_ayah_kandung`, `nama_institusi_ayah_kandung`, `status_pekerjaan_ayah_kandung`, `jenis_pekerjaan_ayah_kandung`, `nama_perusahaan_ayah_kandung`, `jabatan_ayah_kandung`, `tahun_mulai_bekerja_ayah_kandung`, `gaji_pokok_ayah_kandung`) VALUES
('asdasd@gmail.com', 'jbwqkjtqtjbq', '11/31/5156', 'bjwtqjtbqj', 'wjbqjtqjb', 'jwqtjqbt', 'jwbqtjqb', 'hidup', 'sma', 'qwbtq', 'bekerja', 'wiraswasta', 'qwtbqjtbq', 'jbqjtwbqj', 'jqbwtjbq', '3000000'),
('malianzikri92@gmail.com', 'budi', '11/23/1515', 'palembang', '01281851951', 'palembang', '19251257192', 'hidup', 'd-3', 'unsri', 'bekerja', 'karyawan', 'conoco', 'manager', '2010', '1250000');

-- --------------------------------------------------------

--
-- Table structure for table `data_essai`
--

CREATE TABLE `data_essai` (
  `email` varchar(250) NOT NULL,
  `essai` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_essai`
--

INSERT INTO `data_essai` (`email`, `essai`) VALUES
('asdasd@gmail.com', '                 qbwktjbwqjtwbq             '),
('malianzikri92@gmail.com', 'jnajdnsajnwqnkjtqjkywbqmnamnbthjbqkwbrkqbtkjqbtkqjbw');

-- --------------------------------------------------------

--
-- Table structure for table `data_ibu_kandung`
--

CREATE TABLE `data_ibu_kandung` (
  `email` varchar(250) NOT NULL,
  `nama_ibu_kandung` varchar(2500) DEFAULT '',
  `tanggal_lahir_ibu_kandung` varchar(2500) DEFAULT '',
  `tempat_lahir_ibu_kandung` varchar(2500) DEFAULT '',
  `nomor_ktp_ibu_kandung` varchar(2500) DEFAULT '',
  `alamat_ibu_kandung` varchar(2500) DEFAULT '',
  `nomor_telepon_ibu_kandung` varchar(2500) DEFAULT '',
  `status_ibu_kandung` varchar(2500) DEFAULT '',
  `pendidikan_terakhir_ibu_kandung` varchar(2500) DEFAULT '',
  `nama_institusi_ibu_kandung` varchar(2500) DEFAULT '',
  `status_pekerjaan_ibu_kandung` varchar(2500) DEFAULT '',
  `jenis_pekerjaan_ibu_kandung` varchar(2500) DEFAULT '',
  `nama_perusahaan_ibu_kandung` varchar(2500) DEFAULT '',
  `jabatan_ibu_kandung` varchar(2500) DEFAULT '',
  `tahun_mulai_bekerja_ibu_kandung` varchar(2500) DEFAULT '',
  `gaji_pokok_ibu_kandung` varchar(2500) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_ibu_kandung`
--

INSERT INTO `data_ibu_kandung` (`email`, `nama_ibu_kandung`, `tanggal_lahir_ibu_kandung`, `tempat_lahir_ibu_kandung`, `nomor_ktp_ibu_kandung`, `alamat_ibu_kandung`, `nomor_telepon_ibu_kandung`, `status_ibu_kandung`, `pendidikan_terakhir_ibu_kandung`, `nama_institusi_ibu_kandung`, `status_pekerjaan_ibu_kandung`, `jenis_pekerjaan_ibu_kandung`, `nama_perusahaan_ibu_kandung`, `jabatan_ibu_kandung`, `tahun_mulai_bekerja_ibu_kandung`, `gaji_pokok_ibu_kandung`) VALUES
('asdasd@gmail.com', 'qwjbtbqj', '12/31/4511', 'qjbwjtqjbtqj', 'asnbsrjq', 'wrqjrjqb', 'sbrqjkbwr', 'hidup', 'S-2', 'qwjbtqjtwq', 'bekerja', 'wiraswasta', 'wqtbqjtqb', 'jqwjtbqjtq', 'jqwbtjqt', '2000000'),
('malianzikri92@gmail.com', 'sari', '12/31/9411', 'palembang', '01281518', 'palembang', '21958185', 'hidup', 'S-2', 'usu', 'bekerja', 'petani', 'conoco ', 'petani senior', '1993', '2000000');

-- --------------------------------------------------------

--
-- Table structure for table `data_nilai_raport`
--

CREATE TABLE `data_nilai_raport` (
  `email` varchar(250) NOT NULL,
  `nilai_mtk_semester_1` varchar(250) NOT NULL DEFAULT '',
  `nilai_bahasa_indonesia_semester_1` varchar(250) NOT NULL DEFAULT '',
  `nilai_bahasa_inggris_semester_1` varchar(250) NOT NULL DEFAULT '',
  `nilai_ipa_semester_1` varchar(250) NOT NULL DEFAULT '',
  `nilai_ips_semester_1` varchar(250) NOT NULL DEFAULT '',
  `nilai_mtk_semester_2` varchar(250) NOT NULL DEFAULT '',
  `nilai_bahasa_indonesia_semester_2` varchar(250) NOT NULL DEFAULT '',
  `nilai_bahasa_inggris_semester_2` varchar(250) NOT NULL DEFAULT '',
  `nilai_ipa_semester_2` varchar(250) NOT NULL DEFAULT '',
  `nilai_ips_semester_2` varchar(250) NOT NULL DEFAULT '',
  `nilai_mtk_semester_3` varchar(250) NOT NULL DEFAULT '',
  `nilai_bahasa_indonesia_semester_3` varchar(250) NOT NULL DEFAULT '',
  `nilai_bahasa_inggris_semester_3` varchar(250) NOT NULL DEFAULT '',
  `nilai_ipa_semester_3` varchar(250) NOT NULL DEFAULT '',
  `nilai_ips_semester_3` varchar(250) NOT NULL DEFAULT '',
  `nilai_mtk_semester_4` varchar(250) NOT NULL DEFAULT '',
  `nilai_bahasa_indonesia_semester_4` varchar(250) NOT NULL DEFAULT '',
  `nilai_bahasa_inggris_semester_4` varchar(250) NOT NULL DEFAULT '',
  `nilai_ipa_semester_4` varchar(250) NOT NULL DEFAULT '',
  `nilai_ips_semester_4` varchar(250) NOT NULL DEFAULT '',
  `nilai_mtk_semester_5` varchar(250) NOT NULL DEFAULT '',
  `nilai_bahasa_indonesia_semester_5` varchar(250) NOT NULL DEFAULT '',
  `nilai_bahasa_inggris_semester_5` varchar(250) NOT NULL DEFAULT '',
  `nilai_ipa_semester_5` varchar(250) NOT NULL DEFAULT '',
  `nilai_ips_semester_5` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_nilai_raport`
--

INSERT INTO `data_nilai_raport` (`email`, `nilai_mtk_semester_1`, `nilai_bahasa_indonesia_semester_1`, `nilai_bahasa_inggris_semester_1`, `nilai_ipa_semester_1`, `nilai_ips_semester_1`, `nilai_mtk_semester_2`, `nilai_bahasa_indonesia_semester_2`, `nilai_bahasa_inggris_semester_2`, `nilai_ipa_semester_2`, `nilai_ips_semester_2`, `nilai_mtk_semester_3`, `nilai_bahasa_indonesia_semester_3`, `nilai_bahasa_inggris_semester_3`, `nilai_ipa_semester_3`, `nilai_ips_semester_3`, `nilai_mtk_semester_4`, `nilai_bahasa_indonesia_semester_4`, `nilai_bahasa_inggris_semester_4`, `nilai_ipa_semester_4`, `nilai_ips_semester_4`, `nilai_mtk_semester_5`, `nilai_bahasa_indonesia_semester_5`, `nilai_bahasa_inggris_semester_5`, `nilai_ipa_semester_5`, `nilai_ips_semester_5`) VALUES
('asdasd@gmail.com', 'qbwtjkqj', 'bqjwqkjtb', 'jbqwjktbqkjb', 'jqwbtjkqb', 'qjwbtjwkqb', 'qjwbtqjkbtqk', 'qjwtbqjktb', 'qwjbtqkjb', 'qkwtbwjkqtb', 'qjwbtqjktbq', 'qwjtbqtjkbq', 'qwbqktjbq', 'qwbtkqjbtq', 'wqjkbtjqb', 'wjqbtqkjb', 'qwjtbqkjtbq', 'jwbqjtbqkj', 'bqwbtjkq', 'kjbwqb', 'qwtbqjktq', 'qwntbqmtq', 'qwbhtqt', 'hqwbhtq', 'qwthqt', 'wqhbj'),
('malianzikri92@gmail.com', '80', '80', '80', '80', '80', '80', '80', '80', '80', '80', '80', '80', '80', '80', '80', '80', '80', '80', '80', '80', '80', '80', '80', '80', '80');

-- --------------------------------------------------------

--
-- Table structure for table `data_organisasi_anda`
--

CREATE TABLE `data_organisasi_anda` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `nama_organisasi` varchar(250) DEFAULT '',
  `jabatan_organisasi` varchar(250) DEFAULT '',
  `periode_organisasi` varchar(250) DEFAULT '',
  `memiliki_sk` varchar(250) DEFAULT 'tidak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_organisasi_anda`
--

INSERT INTO `data_organisasi_anda` (`id`, `email`, `nama_organisasi`, `jabatan_organisasi`, `periode_organisasi`, `memiliki_sk`) VALUES
(76, 'asdasd@gmail.com', 'pramuka', 'wakil ketua', '20017-2018', 'ya'),
(77, 'asdasd@gmail.com', 'basket', 'sekretaris', '2015 - 2016', 'tidak'),
(78, 'malianzikri92@gmail.com', 'pmr', 'wakil ketua', '2016-2017', 'ya');

-- --------------------------------------------------------

--
-- Table structure for table `data_prestasi`
--

CREATE TABLE `data_prestasi` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `nama_kegiatan` varchar(250) DEFAULT '',
  `tingkat_kejuaraan` varchar(250) DEFAULT '',
  `juara` varchar(250) DEFAULT '',
  `kategori_kegiatan` varchar(250) DEFAULT '',
  `tahun_juara` varchar(250) DEFAULT '',
  `memiliki_sk_prestasi` varchar(250) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_prestasi`
--

INSERT INTO `data_prestasi` (`id`, `email`, `nama_kegiatan`, `tingkat_kejuaraan`, `juara`, `kategori_kegiatan`, `tahun_juara`, `memiliki_sk_prestasi`) VALUES
(74, 'asdasd@gmail.com', 'wqhtqwtq', 'tingkat nasional', 'Juara Tiga', 'olahraga', '2016', 'ya'),
(75, 'asdasd@gmail.com', 'qwbtq', 'tingkat internasional', 'Juara Dua', 'olahraga', '2016', 'ya'),
(76, 'malianzikri92@gmail.com', 'toki learning', 'tingkat nasional', 'Juara Satu', 'seni', '2016', 'ya');

-- --------------------------------------------------------

--
-- Table structure for table `data_pribadi`
--

CREATE TABLE `data_pribadi` (
  `email` varchar(250) NOT NULL,
  `nama_lengkap` varchar(2500) DEFAULT '',
  `nisn` varchar(2500) DEFAULT '',
  `jenis_kelamin` varchar(250) DEFAULT '',
  `tanggal_lahir` varchar(2500) DEFAULT '',
  `tempat_lahir` varchar(2500) DEFAULT '',
  `kewarganegaraan` varchar(2500) DEFAULT '',
  `agama` varchar(2500) DEFAULT '',
  `golongan_darah` varchar(2500) DEFAULT '',
  `berat_badan` varchar(2500) DEFAULT '',
  `tinggi_badan` varchar(2500) DEFAULT '',
  `alamat` varchar(2500) DEFAULT '',
  `kota` varchar(2500) DEFAULT '',
  `nomor_telpon` varchar(2500) DEFAULT '',
  `informasi_beasiswa` varchar(250) DEFAULT '',
  `nama_saudara` varchar(2500) DEFAULT '',
  `nama_hubungan` varchar(2500) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pribadi`
--

INSERT INTO `data_pribadi` (`email`, `nama_lengkap`, `nisn`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `kewarganegaraan`, `agama`, `golongan_darah`, `berat_badan`, `tinggi_badan`, `alamat`, `kota`, `nomor_telpon`, `informasi_beasiswa`, `nama_saudara`, `nama_hubungan`) VALUES
('asdasd@gmail.com', 'asjbkgqw', 'absjkqt', 'laki-laki', '12/31/4151', 'qnio51', 'qwnlrq', 'lkqwntlkq', 'qlkwnltqnqnlkwr', 'qklwntqkln', 'kqnwtklnqlk', 'kl', 'kn', '1451941', 'sekolah, situs internet, sekolah', 'wqntq', 'jqwtjkqtq'),
('malianzikri92@gmail.com', 'malian zikri', '09101002038', 'laki-laki', '11/12/1992', 'palembang', 'indonesia', 'islam', 'ab', '65', '175', 'palembang', 'palembang', '0711418109', 'sekolah, situs internet, sekolah', 'budi', 'indah');

-- --------------------------------------------------------

--
-- Table structure for table `data_sekolah`
--

CREATE TABLE `data_sekolah` (
  `email` varchar(250) NOT NULL,
  `asal_sekolah` varchar(250) NOT NULL DEFAULT '',
  `tanggal_masuk` varchar(250) NOT NULL DEFAULT '',
  `alamat_sekolah` varchar(250) NOT NULL DEFAULT '',
  `nama_kepala_sekolah` varchar(250) NOT NULL DEFAULT '',
  `nomor_telpon_sekolah` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_sekolah`
--

INSERT INTO `data_sekolah` (`email`, `asal_sekolah`, `tanggal_masuk`, `alamat_sekolah`, `nama_kepala_sekolah`, `nomor_telpon_sekolah`) VALUES
('asdasd@gmail.com', 'jqbwjktbtjq', '13/14/1511', 'jwqbrkjq', 'qwbktq', 'qjkwbtkqjbtq'),
('malianzikri92@gmail.com', 'smp 54 palembang', '11/11/2014', 'palembang', 'palembang', '07116428901');

-- --------------------------------------------------------

--
-- Table structure for table `data_tanggungan_orang_tua`
--

CREATE TABLE `data_tanggungan_orang_tua` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL DEFAULT '',
  `nama_tanggungan` varchar(250) DEFAULT '',
  `usia` varchar(250) DEFAULT '',
  `pendidikan_terakhir` varchar(250) DEFAULT '',
  `hubungan_keluarga` varchar(250) DEFAULT '',
  `sudah_bekerja` varchar(250) DEFAULT '',
  `dibiayai` varchar(250) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_tanggungan_orang_tua`
--

INSERT INTO `data_tanggungan_orang_tua` (`id`, `email`, `nama_tanggungan`, `usia`, `pendidikan_terakhir`, `hubungan_keluarga`, `sudah_bekerja`, `dibiayai`) VALUES
(52, 'asdasd@gmail.com', 'qwjrjqrbqj', 'bjqwbtjqtq', 'd-3', 'wqtbqjtq', 'ya', 'tidak'),
(53, 'malianzikri92@gmail.com', 'siti', '23', 'S-1', 'saudara', 'ya', 'ya');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL COMMENT 'Upload Date',
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Unblock, 0=Block',
  `kategori_file` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `file_name`, `email`, `created`, `modified`, `status`, `kategori_file`) VALUES
(55, '1.jpg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'rumah_tampak_depan'),
(56, '2.jpg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'rumah_tampak_belakang'),
(57, '3.jpg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'rumah_tampak_kanan'),
(58, '4.jpg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'rumah_tampak_kiri'),
(59, '5.jpg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'ruang_tengah'),
(60, '6.jpg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'kamar_tidur'),
(61, '7.jpg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'dapur'),
(62, '8.jpeg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'kamar_mandi'),
(63, '9.jpg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'ktp_ayah'),
(64, '10.jpg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'ktp_ibu'),
(65, '11.jpeg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'kartu_keluarga'),
(66, '12.jpg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'surat_keterangan_tidak_mampu'),
(67, '13.jpg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'slip_gaji_ayah'),
(68, '14.jpg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'slip_gaji_ibu'),
(69, '15.jpg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'pembayaran_listrik'),
(70, '16.jpg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'sewa_rumah'),
(71, '17.jpg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'sertifikat'),
(72, '18.jpg', 'asdasd@gmail.com', '2018-01-28 15:47:14', '2018-01-28 15:47:14', 1, 'sk_organisasi'),
(73, '1.jpg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'rumah_tampak_depan'),
(74, '2.jpg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'rumah_tampak_belakang'),
(75, '3.jpg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'rumah_tampak_kanan'),
(76, '4.jpg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'rumah_tampak_kiri'),
(77, '5.jpg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'ruang_tengah'),
(78, '7.jpg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'kamar_tidur'),
(79, '8.jpeg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'dapur'),
(80, '9.jpg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'kamar_mandi'),
(81, '10.jpg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'ktp_ayah'),
(82, '11.jpeg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'ktp_ibu'),
(83, '12.jpg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'kartu_keluarga'),
(84, '13.jpg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'surat_keterangan_tidak_mampu'),
(85, '14.jpg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'slip_gaji_ayah'),
(86, '15.jpg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'slip_gaji_ibu'),
(87, '16.jpg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'pembayaran_listrik'),
(88, '17.jpg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'sewa_rumah'),
(89, 'aerulcakra.jpg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'sertifikat'),
(90, '18.jpg', 'malianzikri92@gmail.com', '2018-01-29 05:38:37', '2018-01-29 05:38:37', 1, 'sk_organisasi');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `asal_daerah` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  `foto_pribadi` varchar(2500) NOT NULL DEFAULT '-',
  `password` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `nama`, `asal_daerah`, `email`, `role`, `status`, `foto_pribadi`, `password`) VALUES
('006042018', 'asdasd', '04', 'asdasd@gmail.com', 1, 0, '', 'a8f5f167f44f4964e6c998dee827110c'),
('007082018', 'malian zikri', '08', 'malianzikri92@gmail.com', 1, 2, 'susi.jpg', 'd0846e591a51548e9914d877f9ccc950'),
('11', 'asd', 'asd', 'asd@gmail.com', 1, 0, 'indah.jpg', 'a8f5f167f44f4964e6c998dee827110c'),
('12', 'coba', '03', 'coba@coba.com', 1, 0, '', '1621a5dc746d5d19665ed742b2ef9736'),
('3052018', 'malianzikri92@gmail.com', '05', 'malianzikri92@gmail.com', 1, 2, '', 'a8f5f167f44f4964e6c998dee827110c'),
('4162018', 'cobadeh@gmail.com', '16', 'cobadeh@gmail.com', 1, 0, 'aerulcakra.jpg', 'a8f5f167f44f4964e6c998dee827110c'),
('5042018', 'tescoy', '04', 'tescoy@gmail.com', 1, 0, 'indah.jpg', 'a8f5f167f44f4964e6c998dee827110c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Data_riwayat_kesehataan`
--
ALTER TABLE `Data_riwayat_kesehataan`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `ci_cookies`
--
ALTER TABLE `ci_cookies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `data_ayah_kandung`
--
ALTER TABLE `data_ayah_kandung`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `data_essai`
--
ALTER TABLE `data_essai`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `data_ibu_kandung`
--
ALTER TABLE `data_ibu_kandung`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `data_nilai_raport`
--
ALTER TABLE `data_nilai_raport`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `data_organisasi_anda`
--
ALTER TABLE `data_organisasi_anda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_prestasi`
--
ALTER TABLE `data_prestasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pribadi`
--
ALTER TABLE `data_pribadi`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `data_sekolah`
--
ALTER TABLE `data_sekolah`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `data_tanggungan_orang_tua`
--
ALTER TABLE `data_tanggungan_orang_tua`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_cookies`
--
ALTER TABLE `ci_cookies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_organisasi_anda`
--
ALTER TABLE `data_organisasi_anda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `data_prestasi`
--
ALTER TABLE `data_prestasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `data_tanggungan_orang_tua`
--
ALTER TABLE `data_tanggungan_orang_tua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
