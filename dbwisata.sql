-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2022 at 03:07 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbwisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_lokasi`
--

CREATE TABLE `detail_lokasi` (
  `id` int(11) NOT NULL,
  `id_objek_wisata` int(11) NOT NULL,
  `penginapan` int(11) NOT NULL,
  `biaya` int(11) NOT NULL,
  `tempat_ibadah` int(11) NOT NULL,
  `warung` int(11) NOT NULL,
  `souvenir` int(11) NOT NULL,
  `toilet` int(11) NOT NULL,
  `permainan` int(11) NOT NULL,
  `tempat_makan` int(11) NOT NULL,
  `tempat_parkir` int(11) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `last_modified` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_lokasi`
--

INSERT INTO `detail_lokasi` (`id`, `id_objek_wisata`, `penginapan`, `biaya`, `tempat_ibadah`, `warung`, `souvenir`, `toilet`, `permainan`, `tempat_makan`, `tempat_parkir`, `created_at`, `last_modified`) VALUES
(8, 84, 0, 1, 0, 1, 1, 1, 1, 0, 1, '2022-07-29', '2022-07-29'),
(9, 85, 0, 1, 0, 1, 1, 1, 1, 1, 1, '2022-07-29', '2022-07-29'),
(10, 86, 0, 0, 0, 1, 1, 0, 1, 0, 1, '2022-07-29', '2022-07-29'),
(11, 87, 0, 0, 0, 1, 1, 0, 1, 0, 1, '2022-07-29', '2022-07-29'),
(12, 88, 0, 0, 0, 1, 1, 1, 1, 1, 1, '2022-07-29', '2022-07-29'),
(13, 89, 0, 0, 0, 1, 1, 1, 1, 0, 1, '2022-07-29', '2022-07-29'),
(14, 90, 0, 0, 0, 1, 1, 0, 1, 1, 1, '2022-07-29', '2022-07-29'),
(15, 91, 0, 0, 0, 1, 1, 0, 1, 0, 1, '2022-07-29', '2022-07-29'),
(16, 92, 0, 0, 0, 0, 0, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(17, 93, 0, 0, 0, 1, 1, 1, 1, 0, 0, '2022-07-29', '2022-07-29'),
(18, 94, 0, 0, 0, 0, 1, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(19, 95, 0, 0, 0, 0, 1, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(20, 96, 0, 0, 0, 0, 0, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(21, 97, 0, 0, 0, 1, 1, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(22, 98, 0, 0, 0, 0, 0, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(23, 99, 0, 0, 0, 0, 1, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(24, 100, 0, 0, 0, 1, 1, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(25, 101, 0, 0, 0, 0, 1, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(26, 102, 0, 0, 0, 1, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(27, 103, 0, 0, 0, 1, 1, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(28, 104, 0, 0, 0, 1, 0, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(29, 105, 0, 0, 0, 0, 0, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(30, 106, 0, 0, 0, 0, 0, 1, 1, 0, 1, '2022-07-29', '2022-07-29'),
(31, 107, 0, 0, 0, 0, 1, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(32, 108, 0, 0, 0, 0, 0, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(33, 109, 0, 0, 0, 0, 0, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(34, 110, 0, 0, 0, 0, 1, 0, 1, 1, 1, '2022-07-29', '2022-07-29'),
(35, 111, 0, 0, 0, 0, 0, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(36, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(37, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(38, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(39, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(40, 116, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(41, 117, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(42, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(43, 119, 0, 0, 0, 0, 1, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(44, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(45, 121, 0, 0, 0, 1, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(46, 122, 0, 0, 0, 1, 1, 1, 1, 1, 0, '2022-07-29', '2022-07-29'),
(47, 123, 0, 0, 0, 0, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(48, 124, 0, 0, 0, 1, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(49, 125, 0, 0, 0, 0, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(50, 126, 0, 0, 0, 1, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(51, 127, 0, 0, 0, 1, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(52, 128, 0, 0, 0, 0, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(53, 129, 0, 0, 0, 0, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(54, 130, 0, 0, 0, 1, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(55, 131, 0, 0, 0, 0, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(56, 132, 0, 0, 0, 0, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(57, 133, 0, 0, 0, 0, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(58, 134, 0, 0, 0, 1, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(59, 135, 0, 0, 0, 0, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(60, 136, 0, 0, 0, 1, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(61, 137, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(62, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(63, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(64, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(65, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(66, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(67, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(68, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(69, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(70, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(71, 147, 0, 0, 0, 0, 0, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(72, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(73, 149, 0, 0, 0, 0, 1, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(74, 150, 0, 0, 0, 1, 1, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(75, 151, 0, 0, 0, 0, 0, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(76, 152, 0, 0, 0, 0, 0, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(77, 153, 0, 0, 0, 0, 0, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(78, 154, 0, 0, 0, 1, 1, 0, 1, 1, 0, '2022-07-29', '2022-07-29'),
(79, 155, 0, 0, 0, 0, 0, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(80, 156, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-29', '2022-07-29'),
(81, 157, 0, 0, 0, 1, 1, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(82, 158, 0, 0, 0, 1, 1, 1, 1, 0, 0, '2022-07-29', '2022-07-29'),
(83, 159, 0, 0, 0, 0, 0, 0, 1, 0, 0, '2022-07-29', '2022-07-29'),
(84, 160, 0, 0, 0, 1, 1, 1, 1, 1, 0, '2022-07-29', '2022-07-29'),
(85, 161, 0, 0, 0, 0, 0, 0, 1, 0, 0, '2022-07-29', '2022-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `last_modified` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `objek_wisata`
--

CREATE TABLE `objek_wisata` (
  `id` int(11) NOT NULL,
  `nama_tempat` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `koordinat` varchar(255) NOT NULL,
  `deskripsi` varchar(2000) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `last_modified` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `objek_wisata`
--

INSERT INTO `objek_wisata` (`id`, `nama_tempat`, `alamat`, `koordinat`, `deskripsi`, `id_kategori`, `created_at`, `last_modified`) VALUES
(84, 'Candi Penataran', 'Penataran, Nglegok, Blitar, Jawa Timur 66181', '-8.0164231,112.2097501', 'Candi Penataran secara administratif terletak di Desa Penataran, Kec. Nglegok, Kab.Blitar. Candi ini terletak sekitar 12 km di utara Kota Blitar, berada di kaki Gunung Kelud. Merupakan komplek candi dengan tataruang persegi, memanjang dari barat ke timur yang dibagi menjadi tiga pelataran. Dahulu antar pelataran dipisahkan oleh dinding, namun saat ini dinding yang dimaksud telah runtuh. Komplek candi ini terdiri dari pintu masuk utama, pendopo agung, teras pendopo, Candi Angka Tahun, Candi Naga, Candi Induk, tubuh candi induk, dan Petirtaan Dalam. Candi Penataran merupakan salah satu contoh luar biasa dari ciri arsitektur Jawa Timur, di mana candinya berupa struktur berundak dengan tempat paling suci terletak pada sisi belakang candi.', 17, '2022-07-29', '2022-07-29'),
(85, 'Pantai Tambakrejo di Blitar', 'Tambakrejo, Wonotirto, Blitar, Jawa Timur 66173', '-8.315604,112.1435613', 'Pantai Tambakrejo terletak di Desa Tambakrejo, Kecamatan Wonotirto, Kabupaten Blitar, atau sekitar 30 km ke arah selatan Kota Blitar. Pantai ini sangat unik karena memiliki garis pantai dengan pasir putih sekitar 10 km. Selain itu, pantai ini cenderung berbentuk teluk, sehingga ombak yang menerjang pantai Tambakrejo tidak begitu besar. Dengan kondisi yang demikian, pantai ini cukup aman untuk dijadikan lokasi bermain air, tetapi tetap memperhatikan keselamatan. Wisata ini merupakan salah satu pantai yang paling favorit di Blitar, sehingga banyak dikunjungi wisatawan lokal maupun asing.', 16, '2022-07-29', '2022-07-29'),
(86, 'Pantai Jolosutro di Blitar', 'Ringinsari, Ringenrejo, Wates, Blitar, Jawa Timur 66194', '-8.3321342,112.3298253', 'Pantai lain yang tidak kalah favorit di kabupaten Blitar adalah Pantai Jolosutro. Pantai ini memiliki pasir hitam yang halus, tetapi tetap menawarkan keindahan alam yang tidak ada duanya. Pantai eksotis ini juga cukup terkenal bagi kalangan peselancar karena memiliki ombak yang cukup besar, sehingga bagi kalian yang berniat untuk bermain air di pantai ini, diharap selalu waspada. Lokasi pantai ini terletak di Desa Ringenrejo, Kecamatan Wates, Kabupaten Blitar, atau berjarak 45 Km dari pusat Kota Blitar. Selain itu, lokasi pantai ini juga berbatasan dengan Kabupaten Malang, sehingga cocok untuk dijadikan tempat singgah melepas penat ketika sedang menempuh perjalanan ke Malang.', 16, '2022-07-29', '2022-07-29'),
(87, 'Pantai Pangi di Blitar', 'Tumpakkepuh, Bakung, Blitar, Jawa Timur 66163', '-8.3124219,112.110525', 'Pantai Pangi merupakan salah satu tempat wisata pantai di Blitar yang cukup terkenal. Pantai ini tampak seperti teluk, dengan bebatuan karang yang menutupinya. Lokasinya yang cukup tersembunyi menyebabkan keasrian alam pantai ini tetap terjaga. Selain itu, pantai ini menawarkan suasana pedesaan yang akan membuat kalian betah berlama-lama di tempat wisata ini. Apabila kalian ingin “menyatu dengan alam”, kalian dapat camping di pantai ini bersama teman-teman terdekat. Lokasi pantai ini terletak di Desa Tumpak Kepuh, Kecamatan Bakung, Kabupaten Blitar.', 16, '2022-07-29', '2022-07-29'),
(88, 'Wisata Pantai Serang di Blitar', 'Serang, Panggungrejo, Blitar, Jawa Timur 66174', '-8.3315725,112.22294', 'Salah satu tempat wisata di Blitar yang wajib dikunjungi adalah Pantai Serang. Salah satu daya tarik dari pantai ini adalah pasir putih bersih dan halus, tentu saja sangat instagramable. Pantai ini berlokasi di Desa Serang, Kecamatan Panggungrejo, Kabupaten Blitar, atau 45 km ke arah barat daya Kota Blitar. Pantai ini juga cukup aman untuk dijadikan lokasi berenang karena memiliki ombak yang tidak terlalu besar.', 16, '2022-07-29', '2022-07-29'),
(89, 'Wisata Pantai Peh Pulo di Blitar', 'Dusun Pehpulo, Sumbersih, Panggungrejo, Blitar, Jawa Timur 66174', '-8.3439332,112.2346652', 'Satu lagi lokasi pantai yang memiliki keindahan alam di bagian selatan Kabupaten Blitar adalah Pantai Peh Pulo. Lokasi pantai ini terletak di daerah Panggung Rejo atau dapat ditempuh menggunakan kendaraan pribadi selama kurang lebih Sembilan puluh menit. Wisata pantai Blitar ini cukup tersembunyi dan panorama alamnya masih cukup asri. Selain itu, pantai ini juga menjadi salah satu tempat wisata Blitar terbaru yang sangat direkomendasikan untuk kalian kunjungi.', 16, '2022-07-29', '2022-07-29'),
(90, 'Wisata Pantai Gondo Mayit di Blitar', ' Tambakrejo, Wonotirto, Blitar, Jawa Timur 66173', '-8.320544,112.148355', 'Mendengar namanya saja sudah cukup seram, bukan? Namun demikian, pesona wisata alam di Blitar ini memiliki keindahan alam yang sangat bagus. Pantai ini masih sepi, memiliki pasir putih yang panjang, dan cukup terjaga keasriannya. Objek wisata Blitar ini tergolong baru, sangat cocok untuk dijadikan sebagai lokasi camping. Untuk menuju lokasi wisata ini, sangat membutuhkan perjuangan karena kalian harus melewati bukit dan menyeberang sungai. Pantai ini sangat cocok bagi kalian yang memiliki jiwa petualang.', 16, '2022-07-29', '2022-07-29'),
(91, 'Wisata Pantai Umbul Waru di Blitar', 'Sidomulyo, Bakung, Blitar, Jawa Timur 66163', '-8.3150254,112.0899445', 'Tempat wisata di Blitar yang lagi hits adalah wisata Pantai Umbul Waru. Pantai ini terletak di Desa Sidomulyo, Kecamatan Bakung, Kabupaten Blitar. Pantai ini sangat unik karena memiliki air terjun yang mengalir dari atas bukit menuju ke Samudra Hindia. Akses menuju lokasi pantai ini cukup sulit karena kalian harus melalui jalanan terjal dan sempit. Apabila kalian akan menuju ke sana, kami rekomendasikan untuk menyiapkan perbekalan yang cukup', 16, '2022-07-29', '2022-07-29'),
(92, 'Tempat Wisata Alam Air Terjun Coban Wilis Blitar', ' Slumbung, Gandusari, Blitar, Jawa Timur 66187', '-7.9487673,112.3174814', 'Tempat wisata di Blitar ini terletak di kawasan Gunung Kelud, tepatnya di Desa Wisata Ekologis, Semen Gandusari, Kecamatan Gandusari, Kabupaten Blitar. Untuk mencapai air terjun ini, kalian harus melalui jalan setapak sekitar dua jam!. Lokasi wisata Blitar ini cocok bagi kalian yang memiliki jiwa petualangan.', 16, '2022-07-29', '2022-07-29'),
(93, 'Tempat Wisata Air Terjun Sirah Kencong Blitar', 'Ngadirenggo, Wlingi, Blitar, Jawa Timur 66184', '-7.9730441,112.4364437', 'Wisata Blitar air terjun yang satu ini terletak di Desa Ngadirenggo, Kecamatan Wlingi, Kabupaten Blitar. Sama seperti wisata air terjun sebelumnya, akses menuju lokasi ini juga cukup menantang karena harus berjalan kaki melewati hutan belantara. Lokasinya yang tersembunyi menyebabkan wisata ini masih cukup asri.', 16, '2022-07-29', '2022-07-29'),
(94, 'Wisata Alam Air Terjun Grenjeng Blitar', 'Panggungrejo, Blitar, Jawa Timur 66174', '-8.2578581,112.285778', 'Objek wisata di Blitar ini merupakan sebuah air terjun yang cukup unik, karena bukan berada di sekitar perbukitan kapur, melainkan sebuah tebing breksi yang jarang dijumpai di wilayah ini. Wisata ini menjadi salah satu tempat wisata di Blitar terbaru dan cukup hits. Lokasi wisata ini terletak di Desa Balerejo, Kecamatan Panggungrejo, Kabupaten Blitar. Di tempat ini, kalian dapat menikmati segarnya air yang cukup jernih.', 16, '2022-07-29', '2022-07-29'),
(95, 'Wisata Alam Air Terjun Jurug Bening Blitar', ' Purworejo, Wates, Blitar, Jawa Timur 66194', '-8.2724912,112.320518', 'Wisata air terjun kali ini terletak di Desa Purworejo, Kecamatan Wates, Kabupaten Blitar. Air terjun di sini cukup unik karena memiliki kontur tebing air terjun yang bergelombang, sehingga air yang jatuh dari ketinggian memecah menjadi berbagai bagian. Wisata ini sangat cocok bagi kalian yang ingin menghabiskan waktu untuk berendam di aliran air yang dingin dan segar.', 16, '2022-07-29', '2022-07-29'),
(96, 'Curug dan Kedung Badrun Blitar', 'Desa Tumpakoyot dan Desa Bululawang, Kecamatan Bakung, Kabupaten Blitar.', '-8.2724912,112.320518', 'Masih berhubungan dengan air, kali ini kita akan menuju ke Desa Balulawang, Kecamatan Bakung, Kabupaten Blitar. Wisata baru di Blitar ini tergolong masih asri dan belum banyak dikunjungi oleh wisatawan. Di sini kalian dapat mandi di sebuah kolam yang jernih dan bersih. Sementara itu, di Curug Badun kalian akan melihat curug bertingkat dengan ketinggian sekitar 8 meter.', 16, '2022-07-29', '2022-07-29'),
(97, 'Air Terjun Tirto Galuh Blitar', 'Bakung, Blitar, Jawa Timur 66163', '-8.2619087,112.0710779', 'Air Terjun Tirto Galuh Blitar adalah air terjun yang juga mulai terkenal akhir-akhir ini. Di tempat ini, kita bisa melihat air mengalir di atas bebatuan yang berlumut namun elok dipandang mata. Akses jalan untuk sampai ke Air Terjun Tirto Galuh Blitar cukup jauh. Setelah naik motor dan memarkir motor seharga Rp2.000, Anda harus berjalan sekitar 400 meter untuk sampai di lokasi. Kalau sedang tidak beruntung, perjalanan sepanjang itu harus ditambah dengan jalanan yang becek pasca hujan.', 16, '2022-07-29', '2022-07-29'),
(98, 'Air Terjun Lawean Kawisar', 'Geger, Sendang, Kabupaten Tulungagung, Jawa Timur 66254', '-7.8821341,111.7970319', 'Lokasi Air Terjun Lawean ini terletak di Dusun Parang, atau berada di kawasan perkebunan Kawisari, Blitar. Akses menuju lokasi ini cukup mudah dan sudah terawat. Air terjun ini terbagi menjadi dua bagian, dan memiliki ketinggian aliran air sekitar dua puluh lima meter.', 16, '2022-07-29', '2022-07-29'),
(99, 'Kampung Wisata Ekologis Puspa Jagad', 'Jl. Nanas Semen, Semen, Gandusari, Blitar, Jawa Timur 66187', '-7.997326,112.345049', 'Desa Wisata ini terletak di Desa Semen, atau sekitar 35 km dari pusat Kota Blitar. Desa Wisata ini terletak di kaki Gunung Kelud, sehingga menjadikan wilayah ini memiliki iklim yang sejuk. Selain itu, Desa Wisata ini menawarkan suasana pedesaan yang masih asri, jauh dari hiruk pikuk perkotaan. Wisata ini sangat cocok bagi kalian yang ingin keluar rutinitas perkotaan.', 18, '2022-07-29', '2022-07-29'),
(100, 'Tempat Wisata Alam Gua Embultuk Blitar', 'Desa Tumpakkepuh, Kecamatan Bakung, Kabupaten Blitar, arah selatan Kota Blitar dengan jarak sekitar 40 km', '-8.1742545,112.0854874', 'Wisata alam gua ini terletak di Desa Tampakkepuh, Kecamatan Bakung, Kabupaten Blitar. Di tempat wisata ini, kalian dapat menikmati keunikan stalagmit stalaktit yang menjadi ornamen terpenting yang harus kalian lihat. Gua ini cukup terkenal dan menjadi salah satu destinasi unggulan Kabupaten Blitar, Jawa Timur. Berdasarkan kesaksian warga setempat, Gua ini pernah menjadi salah satu tempat persembunyian simpatisan Partai Komunis Indonesia (PKI).', 16, '2022-07-29', '2022-07-29'),
(101, 'Wisata Alam Gunung Butak', 'Ngadirenggo/Htn, Kecamatan Wlingi, Kabupaten Blitar, Jawa Timur,', '-7.919996,112.4499662', 'Wisata alam Blitar ini cocok bagi kalian yang memiliki hobi mendaki gunung. Apabila kalian merasa cukup lelah untuk mendaki Gunung Kelud atau Semeru, pendakian ke Gunung Butak dapat kalian jadikan alternatif pendakian kalian. Wisata mini ini menawarkan pemandangan alam dari atas bukit dan lokasi camping ceria yang mengasyikkan. Kalian dapat mendaki Gunung Butak melalui basecamp Sirah Kencong yang terletak di Desa Ngadirenggo.', 16, '2022-07-29', '2022-07-29'),
(102, 'Chenoa Water Play Kedawung', 'Jl. Mastrip, Ngoran, Nglegok, Kedawung, Nglegok, Blitar, Jawa Timur 66181', '-8.0084435,112.1859536', 'Chenoa Water Play Kedawung adalah wahana bermain anak yang bertempat di Blitar. Sebagai sebuah wahana kolam renang, tempat wisata ini mempunyai perlengkapan yang cukup lengkap. Mulai dari penjaga water boom, komidi putar, panggung pementasan, pemancingan, dst. tersedia lengkap di Chenoa Water Play Kedawung. Tempat ini cocok untuk Anda yang ingin berlibur di akhir pekan bersama keluarga,', 18, '2022-07-29', '2022-07-29'),
(103, 'Telaga Rambut Monte', 'Jl. Mastrip, Ngoran, Nglegok, Kedawung, Nglegok, Blitar, Jawa Timur 66181', '-7.9619272,112.3684249', 'Telaga Rambut Monte merupakan salah satu andalan tempat wisata di Blitar. Wisata ini menawarkan pemandangan telaga yang sangat jernih. Selain itu, daya tarik lainnya dari telaga ini adalah bangunan candi dan tempat petilasan yang masih sering digunakan untuk ritual. Pemandangan di sekitar lokasi juga tak kalah indah, kalian akan melihat hamparan perkebunan teh serta ladang persawahan yang subur. Lokasi wisata ini terdapat di Desa Krisik, atau 30 Km dari pusat Kota Blitar.', 16, '2022-07-29', '2022-07-29'),
(104, 'Gunung Pegat Ponggok Srengat Blitar', 'Gn. Pegat, Dadaplangu, Ponggok, Blitar, Jawa Timur', '-8.0513889,112.08', 'Sebagai gunung, Gunung Pegat Ponggok Srengat Blitar tak setinggi semeru atau gunung-gunung yang pretensius untuk dinaiki para pendaki. Sebenarnya Gunung Ponggok sudah mulai ramai sejak tahun 2000, namun akhir-akhir ini tempat wisata ini naik kembali karena suguhan pemandangan malam yang indah dari atas gunung.', 16, '2022-07-29', '2022-07-29'),
(105, 'Wisata Sejarah Candi Gambar Wetan Blitar', 'Sumberasri, Nglegok, Blitar, Jawa Timur 66181', '-7.9681425,112.238094', 'Kompleks percandian ini terletak di lereng Gunung Kelud, tepatnya di tepi Sungai Bladak. Candi ini merupakan salah satu candi Hindu peninggalan Kerajaan Majapahit. Saat ini, bangunan candi hanya tersisa bagian bawahnya saja. Selain itu, candi ini juga masih menyisakan dua buah arca, serta monumen bangunan punden berundak.', 17, '2022-07-29', '2022-07-29'),
(106, 'Wisata Edukasi Kampung Coklat Blitar', ' Jl. Banteng - Blorok No. 18, Desa Plosorejo, RT. 01 / 06, Kademangan, Plosorejo, Kademangan, Blitar, Jawa Timur 66161', '-8.156627,112.1718042', 'Wisata Edukasi ini terletak ini di Kabupaten Blitar, yaitu di Jl. Banteng Blorok 18 Desa Plosorejo Kademangan Blitar. Di tempat ini, pengunjung dapat menikmati berbagai olahan coklat, mulai dari ice cream, mie coklat, hingga kue coklat. Tiket masuk wisata kuliner Blitar ini cukup murah, hanya Rp. 5.000,00. Destinasi Wisata Blitar Kampung Coklat ini menawarkan sensasi makan coklat yang tidak ada duanya.', 18, '2022-07-29', '2022-07-29'),
(107, 'Monumen Trisula', 'Jl. Trisula, Bakung, Blitar, Jawa Timur 66163', '-8.259527,112.074235', 'Dibangun oleh militer dengan alasan untuk mengenang pembantaian yang terjadi pada 1 Oktober 1965, monumen ini kini sering dikunjungi oleh wisatawan. Sejarah yang kelam memang menyelimuti tempat wisata ini, namun hal itu tidak mengurangi minat para wisatawan, asing maupun domestik untuk berkunjung di lokasi ini. Monumen yang diresmikan sejak Desember 1972 ini menjadi penanda bagi warga Blitar bahwa pernah ada pembantaian manusia yang dituduh makar oleh militer Indonesia.', 18, '2022-07-29', '2022-07-29'),
(108, 'Wisata Sejarah Arca Warak di Blitar', ' Modangan, Nglegok, Blitar, Jawa Timur 66181', '-8.0152207,112.2270433', 'Wisata Blitar ini merupakan situs percandian yang tidak jauh dari kawasan Candi Penataran. Lokasi wisata ini terletak di Desa Modangan, Kecamatan Nglegok, Kabupaten Blitar. Pada kawasan situs arca warak ini, juga ditemukan beberapa artefak sejarah, di antaranya Jaladwara; Kemuncak; serta Lumpang.', 17, '2022-07-29', '2022-07-29'),
(109, 'Wisata Sejarah Candi Kotes Blitar', ' Penataran, Nglegok, Blitar, Jawa Timur 66181', '-8.0164231,112.2097501', 'Objek wisata Blitar ini terletak di Desa Kotes, Kecamatan Gandusari, Kabupaten Blitar. Candi ini berdiri pada tahun 1302, dan masih memiliki keterkaitan dengan Candi Penataran. Candi ini memiliki dua kompleks bangunan, yaitu Candi I di bagian Barat, dan Candi II di bagian timur. Sama seperti candi lain di Blitar, Candi Kotes juga merupakan peninggalan kerajaan Majapahit.', 17, '2022-07-29', '2022-07-29'),
(110, 'Tempat Wisata Penangkaran Rusa Maliran Blitar', ' Jatilengger, Ponggok, Blitar, Jawa Timur 66153', '-8.0672226,112.1213229', 'Apabila kalian ingin melihat bagaimana sekawanan rusa di sekitar Kabupaten Blitar, kami sarankan Anda untuk menuju ke Maliran, Kecamatan Ponggok, Blitar. Di tempat ini, kalian dapat menikmati sensasi memberi makan rusa. dan juga out bound. dengan harga tiket masuk Rp. 10.000. dan tiket motor Rp.2000,- dan mobil Rp.5000,-', 18, '2022-07-29', '2022-07-29'),
(111, 'candi sawentar', 'Sawentar, Kanigoro, Blitar, Jawa Timur 66171', '-8.0987926,112.2353357', 'Candi sawentar terletak di Desa Sawentar, Kecamatan Kanigoro, Blitar, Jawa Timur. Bagaimana latar belakang candi ini? Wikipedia menjelaskan bahwa : Di dalam Kitab Negarakertagama, Candi Sawentar disebut juga Lwa Wentar. Bangunan candi ini dahulunya merupakan sebuah kompleks percandian, karena disekitarnya masih ditemukan sejumlah pondasi yang terbuat dari bata, dan candi ini diduga didirikan pada awal berdirinya Kerajaan Majapahit. Candi yang terbuat dari batu andesit ini berukuran panjang 9,53 m, lebar 6,86 m dan tingginya 10,65 m. Pintu masuk menuju bilik berada di sebelah barat, dengan ornamen makara pada pipi tangga, sedangkan relung-relungnya terdapat pada setiap dinding luar tubuh candi. Di dalam ruangan bilik ditemukan akas arca dengan pahatan burung garuda, yang dikenal sebagai kendaraan Dewa Wisnu. Berdasarkan hal ini dapat diketahui bahwa Candi Sawentar merupakan bangunan suci yang berlatar belakang agama Hindu. Ketika berkunjung kesana, terlihat areal candi berada agak/sebagian di dalam tanah. Hal ini terlihat dari letak candi yang berada di bawah tanah.', 17, '2022-07-29', '2022-07-29'),
(112, 'Prasasti Munggut', ' Jl. Semeru No.4, Babadan, Wlingi, Blitar, Jawa Timur 66184', '-8.0730053,112.3263266', 'Prasasti Munggut merupakan prasasti yang terdapat di kecamatan wlingi kabupaten Blitar. bagimana sejarah prassti ini? Well, wikipedia sebagai rujukannya. Sejarah prasasti ini ada kaitannya dengan babadan. Apa itu babadan? Tentunya warga wlingi sudah paham dengan hal itu. Tepatnya Babadan adalah kelurahan di kecamatan Wlingi, Blitar, Jawa Timur, Indonesia. Babadan terdiri dari 5 pedukuhan yaitu dukuh Gurit, Babadan, Darungan, Duren dan Tejo. Penduduk dari perbatasan dukuh Tejo dan Babadan kebanyakannya bekerja mencari batu di Sungai Lekso untuk menambah pendapatan. Dengan naungan dari Gunung Kelud, masyarakatnya cukup mampu untuk menghidupi dirinya sendiri dari sektor agraris.Menurut legenda, nama Babadan diambil dari kata babad utan. Mbah Cokropati sebagai utusan dari Kerajaan Majapahit diberi mandat untuk membuka areal tersebut dengan membabad (menebang namun berwawasan lingkungan) utan(hutan) tersebut, karena akan digunakan untuk suatu hal. Sebagai pengingat dan warisan bagi keturunanya, Mbah Cokropati menamainya Babadan dan membuatkan prasasti bernama Prasasti Munggut (sekarang tidak terawat, terlantar di perempatan sebelah utara pasar Wlingi).', 17, '2022-07-29', '2022-07-29'),
(113, 'Candi simping', ' Jl. Candi Simping, Sumberjati, Kademangan, Blitar, Jawa Timur 66161', '-8.1643532,112.146113', 'Candi ini terdapat di desa Sumberjati Kecamatan kademangan. Ketika berkunjung kesana, saya mendapati bahwa candi ini sudah tidak berbentuk candi atau dengan kata lain bayak bagian yang tidak berada pada tempat yang semestinya. Dikutip dari vivanews.com, candi ini merupakan perabuan raja Majapahit, yaitu Raden Wijaya. Di situs yang berdiri di areal 40 x 40 meter persegi ini tampak ratusan bahkan ribuan susunan batuan jenis andesit dan batu bata merah yang tidak tertata layaknya bangunan candi, hampir semua rata dengan tanah. Hanya beberapa bongkahan batu besar yang tersusun membentuk bangunan bagian dari candi.', 17, '2022-07-29', '2022-07-29'),
(114, 'Candi Bacem', 'Bacem, Sutojayan, Blitar, Jawa Timur 66172', '-8.1947597,112.2437927', 'Candi Bacem terletak di dusun Cungkup, desa Bacem, kecamatan Sutojayan, kabupaten Blitar, Jawa Timur. Candi yang terbuat dari batu bata ini terdiri dari dua buah candi, yaitu candi Bacem I yang mempunyai ukuran tinggi 109 cm, panjang 310 cm, lebar 300 cm, dan Candi Bacem II yang berukuran tinggi 110 cm, panjang 540 cm dan lebarnya 500 cm. Bentuk dari kedua candi ini tidak beraturan karena susunan batu batanya sudah tidak menunjukkan profil yang jelas, dan hanya tinggal susunan batu bata pada pondasinya saja, sedangkan bagian tubuh dan atap candi sudah tidak ditemukan lagi.', 17, '2022-07-29', '2022-07-29'),
(115, ' Candi Plumbangan', ' Plumbangan, Doko, Blitar, Jawa Timur 66186', '-8.074516,112.339754', 'Candi Plumbangan adalah sebuah candi yang terletak di desa Plumbangan, kecamatan Doko, kabupaten Blitar, Jawa Timur. Bentuk bangunan candi ini berupa pintu gerbang paduraksa  dengan puncak berbentuk kubus. Pintu gerbang ini terbuat dari batu andesit, dengan ukuran panjang 4.09 m, lebar 2,27 m dan tingginya 5,6 m.', 17, '2022-07-29', '2022-07-29'),
(116, 'Candi Sumbernanas', 'Candirejo, Ponggok, Blitar, Jawa Timur 66153', '-8.0113243,112.1427519', 'Candi Sumbernanas merupakan sebuah candi yang terletak di desa Candirejo, kecamatan Ponggok, kabupaten Blitar. Dalam laporan pada abad ke-19 M, candi ini disebut dengan nama Candi Genengan atau Candi Puton. Candi ini menghadap ke arah barat, sedangkan bilik candinya dalam keadaan kosong, dan di atas pintu masuk bilik candi tersebut dipahatkan angka 1271 Saka (1349 M).', 17, '2022-07-29', '2022-07-29'),
(117, ' Candi Wringin Branjang', 'Gadungan, Gandusari, Blitar, Jawa Timur 66187', '-8.0027266,112.2817346', 'Candi Wringin Branjang terletak di desa Gadungan, kecamatan Gandusari, kabupaten Blitar, Jawa Timur. Candi ini letaknya masih satu kompleks dengan situs Gadungan, jaraknya sekitar 100 m di sebelah barat situs Gadungan I. Candi yang terbuat dari batu andesit ini memiliki bentuk yang sangat sederhana.', 17, '2022-07-29', '2022-07-29'),
(118, ' Candi Tepas', 'Tepas, Kesamben, Blitar, Jawa Timur 66191', '-8.0882231,112.4007311', 'Candi Tepas terletak di Tepas, Kesamben, Blitar, Jawa Timur. Secara keseluruhan struktur bangunan candi ini telah rusak. Struktur bangunan yang tertinggal saat ini adalah bagian pondasi, kaki candi yang mempunyai ukuran panjang 11,25 m, lebar 7,75 m dan tangga naik yang menghadap ke barat.', 17, '2022-07-29', '2022-07-29'),
(119, 'Candi Rambut Monte', 'Krisik, Gandusari, Blitar, Jawa Timur 66187', '-7.9619272,112.3684249', 'Candi Rambut Monte adalah sebuah candi yang terletak di desa Krisik, kecamatan Gandusari, kabupaten Blitar, Jawa Timur. Candi ini terbuat dari batu andesit dan berdenah segi empat, dengan berukuran panjang 292 cm, lebar 296 cm dan tingginya 85 cm dengan tangga naik berada di sisi barat. Bangunan candi hanya tinggal bagian kaki dan tubuhnya saja, sedangkan bagian atap candi telah mengalami keruntuhan.', 17, '2022-07-29', '2022-07-29'),
(120, ' Candi Kalicilik', 'Candirejo, Ponggok, Blitar, Jawa Timur 66153', '-7.9980014,112.1403185', 'Candi Kalicilik adalah sebuah candi Hindu yang terletak di desa Candirejo, kecamatan Ponggok, kabupaten Blitar, Jawa Timur. Bangunan candi ini terbuat dari bata merah dan memiliki denah bujur sangkar dengan ukuran 6,8 m x 6,8 m, serta tingginya 8,3 cm. Candi ini terdiri atas tiga bagian yaitu candi, tubuh candi dan atap candi. Pintu candi menghadap ke arah barat dan di atasnya terdapat hiasan berupa kala.', 17, '2022-07-29', '2022-07-29'),
(121, 'Kolam Renang Lovina', 'Bajang, Talun, Blitar, Jawa Timur 66183', '-7.71507425,112.2795868', 'Kolam Renang Lovina', 18, '2022-07-29', '2022-07-29'),
(122, 'Kolam Renang Penataran', ' Jl. Raya Penataran, Penataran, Nglegok, Blitar, Jawa Timur 66181', '-8.013147,112.2080838', 'Kolam renang selalu menjadi favorit mengisi liburan bagi banyak orang, termasuk saya dan keluarga. Meskipun tidak setiap minggu, namun kami selalu menyempatkan waktu untuk mengajak anak-anak berenang saat tidak ada acara liburan ke luar kota. Anak-anak selalu antusias dan terlihat gembira saat berenang bersama keluarga.', 18, '2022-07-29', '2022-07-29'),
(123, 'Kolam Renang Tirto Wulung', 'Bendowulung, Sanankulon, Blitar, Jawa Timur 66151', '-8.1237256,112.1484804', 'Kolam Renang Tirto Wulung berlokasi di Desa Bendowulung, Sanankulon, Blitar. Lokasinya yang agak masuk membuat saya dan keluarga harus bertanya kepada warga sekitar untuk menemukannya. Syukurlah dengan bantuan informasi dari warga dan papan petunjuk akhirnya kami dapat menemukan lokasinya. Cukup dengan tiket masuk Rp. 4.000,- / orang kita bisa berenang sepuasnya bersama keluarga.', 18, '2022-07-29', '2022-07-29'),
(124, 'Kolam Renang Tirto Agung Tambakan', ' Jl. Gandusari - kedunglurah, Tambakan, Gandusari, Blitar, Jawa Timur 66187', '-8.049661,112.3022236', 'kolam renang tirto agung tambakan di desa gandusari', 18, '2022-07-29', '2022-07-29'),
(125, 'Kolam Renang Kendedes', ' Sragi, Talun, Blitar, Jawa Timur 66183', '-7.8814396,112.6603907', 'Tempat itu merupakan wisata Kolam Renang Kendedes, yang terletak di Desa Sragi RT 01 RW 01 Kecamatan Talun. Untuk memasuki kolam renang ini, kita membayar kontribusi sebesar Rp 3000. Namun apabila hari libur, tiket masuk wisata tersebut menjadi Rp 4000. Dilihat dari tampak luar, kolam renang ini terlihat cukup besar. Terdapat pula klub renang yang bernama Sailfish Swimming Club.', 18, '2022-07-29', '2022-07-29'),
(126, 'Kolam renang umum \"Pace Ria\"', 'Unnamed Rd,, Suru, Doko, Blitar, Jawa Timur 66186', '-8.0883575,112.3462689', 'Kolam renang umum \"Pace Ria\" terletak di Kota Blitar. Kolam renang umum \"Pace Ria\" bekerja di aktivitas Kolam renang umum.', 18, '2022-07-29', '2022-07-29'),
(127, 'Kolam Renang Dolpin', ' Kalipang, Sutojayan, Blitar, Jawa Timur 66172', '-8.1682086,112.2164235', 'Pergi ke Kolam Renang itu belum tentu harus renang. Karena pergi ke kolam renang tidak di haruskan bisa renangkan. Ouh iya sampai lupa, ini Kolam Renang yang berada di Kota Lodoyo loch. Letaknya gak jauh dari Aloon Aloon Kota Lodoyo. Tepatnya di timur Koramil. Ini dia \"Kolam Renang Dolphin\"', 18, '2022-07-29', '2022-07-29'),
(128, 'Kolam Renang Tirta Kharisma', 'Gembongan, Ponggok, Blitar, Jawa Timur 66153', '-8.0019454,112.1045633', '“TIRTA KHARISMA” Kolam renang TERBAIK Fasilitas lengkap, Standart Nasional di Kota Blitar.Dengan lokasi yang masih sangat asri sangat nyaman untuk hiburan keluarga yang hemat dan menyenangkan.\r\nAlamat: Barat Pasar Cangkring, Ds. Gembongan, Kec. Ponggok, Kab. Blitar.', 18, '2022-07-29', '2022-07-29'),
(129, 'Kolam Renang Anak2 Bu Anik', 'Maron, Srengat, Blitar, Jawa Timur 66152', '-8.0862507,112.0796717', 'Kolam Renang Anak2 BU Anik terletak di Kota Blitar. Kolam Renang Anak2 BU Anik bekerja di aktivitas Kolam renang umum.', 18, '2022-07-29', '2022-07-29'),
(130, 'Kolam Renang Popoh (popoh waterpark)', ' Popoh, Selopuro, Blitar, Jawa Timur 66184', '-8.1193848,112.3402637', 'popoh waterpark terletak di Ds.Popoh Kecamatan Selopuro. lokasi tempat ini agak masuk ke pemukiman warga sekitar desa popoh yakni jarak dari kantor desa Popoh 300 meter ke utara sampai ketemu dengan pertigaan yang menunjuk arah menuju kolam renang. selain kolam renang tempat wisata ini kedepanya juga akan di bangun tempat untuk out bound keluarga.', 18, '2022-07-29', '2022-07-29'),
(131, 'Kolam Renang Asri Jaya Brongkos', 'Siraman, Kesamben, Blitar, Jawa Timur 66191', '-8.1364777,112.3515364', 'Kolam Renang Asri Jaya Brongkos terletak di Kota Blitar. Kolam Renang Asri Jaya Brongkos bekerja di aktivitas Kolam renang umum.', 18, '2022-07-29', '2022-07-29'),
(132, 'Kranggan Kolam Renang', 'Jl. Ronggowarsito, Pojok, Garum, Blitar, Jawa Timur 66182', '-8.0778883,112.1967317', 'Kranggan Kolam Renang', 18, '2022-07-29', '2022-07-29'),
(133, 'Kolam Renang Taman Air Surga (Kranggan)', ' Pojok, Garum, Blitar, Jawa Timur 66182', '-8.078106,112.1961661', 'Kolam Renang Taman Air Surga (Kranggan)', 18, '2022-07-29', '2022-07-29'),
(134, 'Kolam Renang Telaga Tirta 2', 'Jalan Raya Tlogo - Serut No.16, Tlogo, Kanigoro, Blitar, Jawa Timur 66171', '-8.1210351,112.1945182', 'Kolam Renang Telaga Tirta 2', 18, '2022-07-29', '2022-07-29'),
(135, 'Kolam Renang Khusus Wanita Dan Anak', ' Jatinom, Kanigoro, Blitar, Jawa Timur', '-8.1277513,112.1740881', 'Kolam Renang Khusus Wanita Dan Anak', 18, '2022-07-29', '2022-07-29'),
(136, 'Laguna Thematic Park', 'Jl. Banteng Blorok No.157, Rejowinangun, Kademangan, Blitar, Jawa Timur 66161', '-8.1519356,112.157759', 'Laguna Thematic Park merupakan sebuah wahana keluarga untuk berlibur dan menikmati dinginnya air di kolam renang. Tempat ini sedang dalam masa pengemabangan dan telah terdapat dua kolam renang dan permainan anak serta satu kolam renang besar untuk yang dewasa. Kedepannya akan banyak lagi permainan dan wahana baru.', 18, '2022-07-29', '2022-07-29'),
(137, 'pantai keben', 'Ngadipuro, Wonotirto, Blitar, Jawa Timur 66173', '-8.3240264,112.1938044', 'Pantai Keben adalah salah satu pantai terindah dari sekian banyak pantai yang dimiliki desa ini. Sayang sekali keindahan Pantai Keben belum bisa secara instan untuk dinikmati. Akses yang sangat sulit merupakan momok utama bagi siapa pun yang ingin menikmati keindahannya. Untuk menuju lokasi pantai Keben. Rute yang harus tempuh adalah Lodoyo, terus ke Selatan melewati hutan jati sampai ke pasar Ngeni.', 16, '2022-07-29', '2022-07-29'),
(138, 'pantai pasur', ' Bululawang, Bakung, Blitar, Jawa Timur 66163', '-8.3173354,112.0722337', 'Terletak di pesisir selatan membuat Blitar memiliki banyak pantai yang bisa dikunjungi. Sampai saat ini, setidaknya ada empat pantai yang sudah resmi ditetapkan sebagai tempat wisata. Keempat pantai tersebut antara lain adalah pantai tambak rejo, pantai serang, pantai pangi dan pantai jolosutro. Pada kesempatan ini, mblitar.net ingin berbagi salah satu pantai yang cukup menarik dikunjungi meski belum resmi menjadi tempat wisata. Yaitu pantai pasur.', 16, '2022-07-29', '2022-07-29'),
(139, 'pantai gayasan', 'Tumpakkepuh, Bakung, Blitar, Jawa Timur 66163', '-8.3153472,112.1220794', ' Pantai Gayasan terletak di Desa Tumpak kepuh, Kecamatan Bakung, Kabupaten Blitar.  Pantai Gayasan  terletak diantara pantai Tambakrejo dan pantai Pangi. Pantai ini menawarkan pesona pasir putih dan pemandangan alamnya yang indah sehingga cocok untuk dijadikan salah satu tujuan destinasi wisatawan yang ingin menambah agenda plesir untuk mengisi hari libur bersama keluarga. Letak pantai Gayasan tepatnya dibelakang “alas” gayasan atau hutan gayasan. Itulah sebabnya mengapa pantai ini dinamakan pantai Gayasan oleh masyarakat setempat karena letaknya yang berada di belakang hutan Gayasan yang sekarang ini oleh masyarakat ditanamani tebu, jadi pantai Gayasan nyaris tidak terlihat, hanya deruan ombaknya yang sesekali terdengar sampai tiga kilometer dari bibir pantai.', 16, '2022-07-29', '2022-07-29'),
(140, 'Pantai Pudak', 'Ngadipuro, Wonotirto, Blitar, Jawa Timur 66173', '-8.3249941,112.2031234', 'Laut di Pantai Pudak masih sangat biru dan jernih, dan pantainya pun masih sepi pengunjung. Pasir berwarna pucat kecokelatan begitu lembut membenamkan kaki, ketika ombak kecil nan sejuk membasahi kulit yang kepanasan.\r\nDari kejauhan, kamu akan melihat pulau-pulau kecil yang tersebar di tengah lautan luas, serta tebing tebing karang eksotik yang menjadi pagar kekar dan membatasi bibir pantai dengan laut lepas. Semilir angin dan aroma laut yang khas membuat Pantai Pudak sempurna sebagai tempat pelarian untuk menenangkan pikiran sejenak.', 16, '2022-07-29', '2022-07-29'),
(141, 'Pantai Jebring', 'Ngadipuro, Wonotirto, Blitar, Jawa Timur 66173', '-8.3238592,112.1834621', '\r\nHOME\r\n \r\nWISATA\r\n \r\nPantai Jebring Di Ngadipuro Blitar Selatan\r\n\r\n\r\nPantai Jebring di Ngadipuro Blitar Selatan\r\n\r\n\r\n\r\n \r\nDesa Ngadipuro memang terkenal dengan pantainya yang indah, salah satunya adalah Pantai Jebring. Pantai yang terletak di Blitar selatan ini memiliki keunikan sendiri, karena pasir yang ada di kawasan ini berwarna hitam lantaran terdapat bijih besi yang beberapa waktu lalu sempat menjadi tambang biji besi namun kini sudah tidak ada. Dengan adanya tambang yang sesaat ini perlu di syukuri, karena tambang tersebut telah membuatkan jalan sehingga kendaraan roda dua bisa sampai di lokasi dengan lebih mudah.\r\nPantai Jebring yang Berpasir Hitam\r\n\r\nPantai Jebring di Blitar\r\n\r\nPantai yang cukup luas dan berpasir hitam ini, sampai saat ini belum menjadi obyek wisata di Blitar. Oleh karena itu apabila mau ke pantai jebring ini anda harus membawa bekal sendiri, karena tidak ada yang menjual apapun di pantai ini. Jarak dari pemukiman penduduk juga lumayan jauh. Selain itu pastikan kendaraan anda benar-benar dalam kondisi yang baik, jalanan yang dilewati untuk menuju pantai di Blitar selatan ini cukup sulit, karena jalan bebatuan dan sesekali jalan tanah yang akan becek setelah hujan turun akan mempersulit perjalanan anda.\r\n\r\n\r\n', 16, '2022-07-29', '2022-07-29'),
(142, 'Pantai Banteng Mati ', 'Gn. Gede, Wonotirto, Blitar, Jawa Timur 66173', '-8.3249147,112.1669917', 'Pantai Banteng Mati terletak tak jauh dari Pantai Tambakrejo Blitar. Dari pertigaan Masjid Tambakrejo belok ke kiri mengikuti arah ke Pantai Pasir Putih (Pasetran Gondo Mayit). Selanjutnya dari Pantai Pasir Putih terus saja hingga memasuki Desa Sidorejo. Ya, Pantai Banteng Mati secara administratif masuk dalam wilayah Desa Sidorejo, Kec. Wonotirto, Kab. Blitar.', 16, '2022-07-29', '2022-07-29'),
(143, 'Pantai Bukit Indah', 'dsn.panggung pucung ds.kaligambir kec.panggung rejo, Tulungrejo, Wates, Blitar, Jawa Timur', '-8.3386547,112.2739555', 'Pantai yang terletak di wilayah pesisir selatan  kabupaten Blitar tepatnya di desa Panggungpucung lebih populer dikenal dengan sebutan Pantai bukit indah karena memang pantainya yang berada di atas bukit sedangkan kata indah berasal dari panorama di sekitar pantai yang memang sangat indah. Ada juga yang menyebutnya dengan Pantai Banyu Biru. Salah satu spot yang sangat memukau adalah air terjun yang berada di sebelah pantai. Dengan air yang mengucur dari atas dan terkena sinar matahari membuat air yang turun terlihat berkilauan. ', 16, '2022-07-29', '2022-07-29'),
(144, 'Pantai Ngablak', 'pantai ngablak, Blitar, Jawa Timur', '-8.3249974,112.2003094', 'pantai ngablak merupakan pantai yang menarik minat para traveller karena pemandangan yang sangat indah', 16, '2022-07-29', '2022-07-29'),
(145, 'Pantai Sumur Gemuling', ' Tambakrejo, Wonotirto, Blitar, Jawa Timur 66173', '-8.31818,112.1364366', 'Pantai gemuling memang pilihan yang tepat meski gak sengaja berencana ke pantai ini. Sebelumnya kami merencanakan bakal trip ke banteng mati tapi penduduk sekitar berpesan bahwa jalannya sulit dilalui karena hujan. Ending cerita kami trip di pantai gemuling yang terletak di pesisir barat tambak rejo. Kalo dirunut menurut geografisnya berada di Desa Tambakrejo, Kec. Wonotirto, Blitar Selatan.\r\nKarakter pantai ini byuh bersih men sangat jernih saking bersihnya pantai gondo mayit dan tambak rejo yang berada disebelah timur lewat. Sayangnya bau pantai ini agak amis mungkin karena banyak ikan kali ya. Selain itu banyak karang dan terdapat goa gemuling didekat pantai. Disisi timur pantai pasirnya begitu halus dan dipisah oleh aliran sungai antara dermaga dan pantai gemuling.\r\n \r\n \r\n \r\n ', 16, '2022-07-29', '2022-07-29'),
(146, 'Bukit Lengkeh Gunung Pegat', 'Ds.kawedusan Kec.Ponggok', '-8.0486491,112.0882628', 'Wisata Lengkeh Gunung Pegat secara administratif masuk dalam wilayah Desa Kawedusan, Kec. Ponggok, Kab. Blitar. Obyek wisata ini dikenal pula sebagai tandem paralayang karena sering digunakan para pecinta olahraga paralayang Blitar untuk lepas landas. Pintu masuk wisata Gunung Pegat ini berada pada lembah diantara Gunung Pegat timur dan Gunung Pegat barat yang lazim disebut Lengkeh oleh warga setempat. Dahulu kawasan Lengkeh ini kental dengan mitos bahwa pasangan suami istri baru yang melintasinya akan bercerai atau dalam bahasa jawa disebut pegatan', 16, '2022-07-29', '2022-07-29'),
(147, 'Bukit Bunda', 'Ds. Dawuhan Kec. Kademangan', '-8.1648065,112.1288674', 'Bukit bunda adalah salah satu tempat baru yang potensial untuk di kunjungi oleh para wisatawan. tempat ini mempunyai pemandangan khas bukit kapur Blitar selatan, selain itu tempat ini mempunyai beberapa area yang bisa di gunakan wisatawan untuk berkegiatan outbond, bersantai bersama keluarga, dan menjelah perbukitan menggunakan mobil 4x4 yg di sediakan. ', 16, '2022-07-29', '2022-07-29'),
(148, 'Bukit Bonsai Watu Lawang', 'Ds. sumberjati Kec. Kademangan', '-8.1695015,112.1495627', 'Bukit Bonsai Watu Lawang dikenal dengan banyak nama, ada yang menyebutnya Tumpakwaru dan ada pula yang menyebutnya Bukit Suharto. Penyebutannya sebagai Bukit Suharo tak lepas dari peristiwa bersejarah, yakni peresmian Moumen KNPI oleh Presiden Suharto pada tahun 1989. Pada bukit ini pernah dibangun bangunan-bangunan megah untuk Presiden Suharto. Setelah bergulirnya waktu bukit ini sempat terbengkalai.Bukit Suharto kembali bergeliat dengan nama barunya Bukit Bonsai Watu Lawang. Bukit yang mulanya gersang, kini dikembangkan menjadi salah satu destinasi wisata. Sejumlah photo booth unik kini menghiasi sudut-sudut bukit. Mulai dari yang berbentuk perahu hingga bulan sabit, dan masih banyak bentuk-bentuk unik lainnya. Sejumlah fasilitas pendukung seperti kantin dan toilet juga tampak melengkapi kawasan ini. Bukit Watu Lawang diresmikan pada 3 Desember 2017. Bukit ini terletak di Desa Sumberjati, Kademangan, Kab. Blitar. Bukit ini terletak tak sebegitu jauh dari Candi Simping. Rute menuju Watu Lawang adalah sebagai berikut: Blitar – Kademangan – Ikuti arah Pantai Tambakrejo – Sampai pertigaan SPBU Sumberjati belok kiri – pertigaan di timur Candi Simping belok kanan – ikuti jalanan menanjak, Watu Lawang terletak di kiri jalan', 16, '2022-07-29', '2022-07-29'),
(149, 'Bukit Teletubbies (Gardu Pandang)', 'Ds. Sumberasri, Kec. Nglegok', '-7.9588812,112.2401717', 'Gardu Pandang Sumberasri terletak di atas sebuah bukit di sekitar Perkebunan Gambar, tepatnya di sisi barat Gunung Kelud. Gardu Pandang ini secara administratif berada di dalam wilayah Desa Sumberasri, Kec. Nglegok, Kab. Blitar. Berjarak sekitar 21 km dari Kota Blitar. Rute menuju Gardu Padang Sumberasri sebagai berikut: Blitar – Nglegok – Kawasan Wisata Candi Penataran – Desa Kedawung – Desa Sumberasri – Tugu Garuda di pertigaan Sumberasri belok ke kanan – Ikuti jalan sampai dengan lokasi gardu pandang. Rute ini lebih aman namun sedikit memutar dengan kondisi jalan yang ramai dengan lalu-lalang truk pasir. Ada rute yang lebih pendek namun sedikit berbahaya dan tidak direkomendasikan untuk dilalui saat cuaca buruk. Rute pendek tersebut adalah sebagai berikut: Blitar – Nglegok – Pertigaan sebelum Kawasan Wisata Candi Penataran belok ke kanan – Dam Kali Bladak – Perkebunan Gambar – Gardu Pandang. Dam Bladak adalah zona berbahaya dan tidak direkomendasikan untuk dilewati saat cuaca buruk karena rawan terdampak lahar dingin Gunung Kelud', 16, '2022-07-29', '2022-07-29'),
(150, 'Hutan Pinus Gogoniti', 'Ds.kemirigede kec.Kesamben', '-8.0695284,112.4019109', 'Wisata Hutan Pinus Lereng Gogoniti atau lazimnya disebut Wisata Gogoniti secara administratif terletak di Gunung Gogoniti, Desa Kemirigede, Kec. Kesamben, Kab. Blitar. Sesuai dengan namanya, obyek wisata ini menyajikan suasana hutan pinus yang menyejukkan.  Selain keasrian alamnya, Wisata Gogoniti juga memiliki sejumlah spot menarik seperti gapura selamat datang yang iconic, sejumlah hammock dan tempat duduk yang tersebar di antara pohon-pohon pinus, rumah pohon, dan sejumlah kedai makanan. Benar-benar tempat ngadem yang recommended', 16, '2022-07-29', '2022-07-29'),
(151, 'Kaloka', 'Ds. kaulon Kec. Sutojayan', '-8.1532263,112.2675547', 'KALOKA singkatan dari KERATON Alas Lodoyo Kaulon. Sebelum dikembangkan sebagai wana wisata, kawasan Kaulon ini memang telah dikenal oleh para travelers karena merupakan jalur alternatif menuju Pantai Jolosutro. Pemandangan di hutan ini cukup indah, pepohonannya tampak berjajar apik memayungi ruas jalan bak terowongan alam. Kini di Kaulon telah dikembangkan wisata KALOKA yang mengambil tempat di pinggiran hulu Bendungan Wlingi Raya. Rute menuju wisata KALOKA adalah sebagai berikut: Kota Blitar – Pendopo Kanigoro – Perempatan Kanigoro ke kanan (Selatan) – Pertigaan setelah Jembatan Kali Brantas ke kiri (Timur) – Ikuti jalan hingga masuk kawasan hutan Kaulon – Wisata KALOKA terletak di kiri jalan', 18, '2022-07-29', '2022-07-29'),
(152, 'Puncak Kejora', 'Ds. Ngadirenggo Kec. wlingi', '-7.983398,112.414175', 'Puncak Kejora merupakan wana wisata berupa view deck. Letaknya tak jauh dari Wisata Agro Sirah Kencong. Bahkan view deck Bintang yang merupakan spot andalan dari wana wisata ini bisa dilihat dengan jelas dari jalanan menuju Sirah Kencong. Di kawasan Puncak Kejora ini terdapa tiga view deck yang telah dan akan dikembangkan, di antaranya adalah view deck bintang, view deck Gunung Buthak, dan view deck Gunung Kelud (dalam pengembangan). Masing-masing view deck menyuguhkan pemandangan yang berbeda. View deck Buthak dan Kelud masing-masing menghadap ke Puncak Buthak dan Kelud, sedangkan view deck bintang menghadap ke arah dataran rendah. Di antara view deck yang ada, view deck Bintang memiliki landscape pemandangan yang paling luas. Dari sini para traveler sekalian dapat melihat deretan gunung-gunung di selatan Pegunungan Kawi. Berturut-turut ada Gunung Gogoniti, Gunung Bathok, Gunung Kajang (Pagergunung) hingga Gunung Kidul yang menjadi batas pulau jawa dengan mahasamudera.', 16, '2022-07-29', '2022-07-29'),
(153, 'Telaga Pacuh', 'Ds. Penataran Kec. Nglegok', '-7.9912259,112.220542', 'Wisata Alam Paco merupakan sebuah destinasi wisata berupa telaga alami yang terletak di antara rerimbunan pohon karet bolu raksasa. Kawasan ini awalnya merupakan tempat tampungan air irigasi, namun karena memiliki suasana dan panorama yang menjanjikan. Wisata Alam Paco secara administratif terletak di Desa Panataran, Kec. Nglegok, Kab. Blitar. Lokasi obyek wisata ini cukup strategis karena berada di antara Kawasan Wisata Candi Penataran dan Candi Gambar Wetan. Selain itu, lokasi obyek ini juga berada di pinggir jalur alternatif Blitar – Obyek Wisata Gunung Kelud Kediri. Secara umum rute menuju Wisata Alam Paco adalah: Blitar – Nglegok – pertigaan sebelum pintu masuk Kawasan Wisata Penataran belok ke kanan (ke arah Perkebunan Candi Sewu) –  Wisata Alam Paco terletak di kiri jalan', 16, '2022-07-29', '2022-07-29'),
(154, 'Negeri Dongeng', 'Ds.kawedusan Kec.Ponggok', '-8.0538506,112.0992952', 'negeri dongeng merupakan wahana wisata yang berisikan miniatur landmark terkenal dari berbagai negara, seperti menara eifel, patung liberty, candi borobudur dll', 18, '2022-07-29', '2022-07-29'),
(155, 'KWE Puspa Jagad', 'Ds. Semen Kec. Gandusari', '-7.9917741,112.3424759', ' Kampung yang terletak di  Semen, Gandusari, Blitar, Jawa Timur ini memang memiliki keindahan yang luar biasa. Bagi kamu yang ingin berlibur bersama keluarga namun masih bingung ingin pergi ke tempat wisata seperti apa, coba deh berkunjung ke kampung wisata yang satu ini. Dan tempat wisata ini cocok banget untuk berkumpulnya keluarga.kampung Wisata Ekologis Puspa Jagad ini memang memiliki keindahan yang sangat luar biasa dan memiliki fasilitas yang cukup lengkap, disini kamu bisa berkumpul ria bersama keluarga dan juga bisa mencoba segala wahana yang ada di dalam Kampung Wisata Ekologis Puspa Jagad ini, bagi kamu yang penasaran, langsung aja deh pergi kesana', 18, '2022-07-29', '2022-07-29'),
(156, 'kampung Melon', 'Dsn. Karanganyar Ds.Modangan Kec. Nglegok', '-8.0064899,112.2276773', 'Kampung Melon atau Kampoeng Melon merupakan salah satu desa wisata berbasis agro dengan komoditi melon sebagai daya tarik andalannya. Kawasan wisata ini secara administratif masuk dalam wilayah Dusun Karaganyar, Desa Modangan, Kec. Nglegok, Kab. Blitar. Posisinya cukup strategis karena cukup dekat dengan Kawasan Wisata Candi Penataran dan sejalur dengan Perkebunan Kopi Karanganyar. Berikut rute menuju Kampung Melon: Kota Blitar – Nglegok – Pertigaan Pasar Penataran belok kanan – Perempatan Kantor Desa Modangan belok kiri – Ikuti jalan hingga masuk kawasan Wisata Kampung Melon.', 18, '2022-07-29', '2022-07-29'),
(157, 'Air Terjun Bidadari', 'Ds. Panggungrejo Kec. Panggungrejo', '-8.2535504,112.2694836', 'Kedung Golek merupakan sebuah jurug atau air terjun yang terletak di Desa Panggungrejo, Kec. Panggungrejo Kab. Blitar. Setelah dikembangkan jurug ini diberi nama Air Terjun Bidadari.\r\nRute untuk menuju ke lokasi air terjun cukup mudah. Dari Blitar arahkan perjalanan ke Sutojayan – arah Pantai Serang – Desa Panggungrejo – Tugu Pancasila Panggungrejo lurus saja ( jika belok kiri arah ke Pantai Serang dan pehpulo) sampai ada SD 7 Panggungrejo kiri jalan – belok kanan ikuti jalan tanah dan rabat beton sampai jalan menurun agak tajam', 16, '2022-07-29', '2022-07-29'),
(158, 'Kebun Kopi karanganyar', 'Dsn. Karanganyar Ds.Modangan Kec. Nglegok', '-7.996926,112.240388', 'Perkebunan Kopi Karanganyar secara administratif terletak di Dusun Karanganyar, Desa Modangan, Nglegok, Kab. Blitar. Letak perkebunan ini cukup strategis karena berada tak jauh dari Kawasan Wisata Penataran dan sejalur dengan beberapa destinasi wisata Blitar utara lainnya. Untuk menuju Perkebunan Karanganya berikut rute yang bisa digunakan: Pertigaan Pasar Penataran ambil kanan ke arah Desa Modangan – Sesampai perempatan Kantor Desa Modangan ambil kiri searah dengan petunjuk arah menuju Arca Warak dan Kampoeng Melon – Ikuti jalan yang tersedia hingga tiba di kawasan Perkebunan Karanganyar', 18, '2022-07-29', '2022-07-29'),
(159, 'Omah jenang', 'Ds. Rejowinangun Kec. Kademangan', '-8.1474211,112.1574692', 'omah jenang merupakan wisata edukasi ngudek jenang/mengaduk jenang blitar.Selain menyediakan Jenang, Madumongso, Wajik Klethik, Wajik Ketan di outlet kami juga menyediakan berbagai macam jajanan khas lainnya,antara lain ; Geti, Sambel pecel, sagon, aneka kripik buah,kue roti,opak ladu,rengginang, carang mas, manco, kripik tempe', 18, '2022-07-29', '2022-07-29'),
(160, 'Perkebunan Sirah Kencong', 'Ds. Ngadirenggo Kec. wlingi', '-7.9730441,112.4364437', 'Obyek wisata ini dikenal memiliki keindahan alam yang tiada duanya, dikenal menyimpan peninggalan benda cagar budaya yang adiluhung, dan dikenal pula memiliki medan yang menantang. Inilah Wisata Agro Sirah Kencong. Terletak pada ketinggian 1000 m dpl, secara administratif masuk dalam wilayah Desa Ngadirenggo, Kec. Wlingi, Kab. Blitar, berada dalam pengelolaan PT. Perkebunan Nusantara XII.', 16, '2022-07-29', '2022-07-29'),
(161, 'Agro Wisata Aryo Kusumo Karangsono', 'Desa Karangsono Kecamatan Kanigoro Kabupaten Blitar', '-8.13904466,112.2095704', ' Kawasan wisata aryo kusumo adalah gabungan dari berbagai konsep wisata yang ada mulai dari kuliner, wisata kebun (Belimbing, Jambu Biji Merah dan Markisa), wisata produksi pengolahan berbagai macam makanan dan minuman organik, serta berbagai macam kerajinan tangan.Tidak hanya itu saja wisata Aryo Kusumo ini berbasis masyarakat dengan mengembangkan kearifan lokal di mana wisatawan tidak terbatas di pusat pengembangan wisata agro, namun bisa menikmati langsung di kebun milik masyarakat sekitar.', 18, '2022-07-29', '2022-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbadmin`
--

CREATE TABLE `tbadmin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbadmin`
--

INSERT INTO `tbadmin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbkategori`
--

CREATE TABLE `tbkategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `last_modified` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbkategori`
--

INSERT INTO `tbkategori` (`id`, `nama_kategori`, `created_at`, `last_modified`) VALUES
(16, 'Wisata Alam', '2022-07-29', '2022-07-29'),
(17, 'Sejarah dan Religi', '2022-07-29', '2022-07-29'),
(18, 'Wisata Taman Kreasi', '2022-07-29', '2022-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbprioritas`
--

CREATE TABLE `tbprioritas` (
  `id` int(11) NOT NULL,
  `jenis_prioritas` varchar(255) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `last_modified` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbprioritas`
--

INSERT INTO `tbprioritas` (`id`, `jenis_prioritas`, `id_jenis`, `keterangan`, `nilai`, `created_at`, `last_modified`) VALUES
(1, 'detail_lokasi', 0, 'penginapan', 3, '2022-07-29', '2022-07-29'),
(2, 'detail_lokasi', 0, 'biaya', 2, '2022-07-29', '2022-07-29'),
(3, 'detail_lokasi', 0, 'tempat_ibadah', 1, '2022-07-29', '2022-07-29'),
(4, 'detail_lokasi', 0, 'warung', 3, '2022-07-29', '2022-07-29'),
(5, 'detail_lokasi', 0, 'souvenir', 2, '2022-07-29', '2022-07-29'),
(6, 'detail_lokasi', 0, 'toilet', 2, '2022-07-29', '2022-07-29'),
(7, 'detail_lokasi', 0, 'permainan', 1, '2022-07-29', '2022-07-29'),
(8, 'detail_lokasi', 0, 'tempat_makan', 1, '2022-07-29', '2022-07-29'),
(9, 'detail_lokasi', 0, 'tempat_parkir', 3, '2022-07-29', '2022-07-29'),
(14, 'kategori', 16, 'Wisata Alam', 2, '2022-07-29', '2022-07-29'),
(15, 'kategori', 17, 'Sejarah dan Religi', 2, '2022-07-29', '2022-07-29'),
(16, 'kategori', 18, 'Wisata Taman Kreasi', 2, '2022-07-29', '2022-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `last_modified` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`id`, `nama`, `alamat`, `username`, `password`, `created_at`, `last_modified`) VALUES
(1, 'aaa', 'bbb', 'user1', 'user1', '2022-07-29', '2022-07-29'),
(2, 'hhh', 'hhhh', 'user2', 'user2', '2022-07-29', '2022-07-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_lokasi`
--
ALTER TABLE `detail_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objek_wisata`
--
ALTER TABLE `objek_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbadmin`
--
ALTER TABLE `tbadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbkategori`
--
ALTER TABLE `tbkategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbprioritas`
--
ALTER TABLE `tbprioritas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_lokasi`
--
ALTER TABLE `detail_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `objek_wisata`
--
ALTER TABLE `objek_wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `tbadmin`
--
ALTER TABLE `tbadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbkategori`
--
ALTER TABLE `tbkategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbprioritas`
--
ALTER TABLE `tbprioritas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbuser`
--
ALTER TABLE `tbuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
