-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2023 pada 23.08
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cemilan`
--

CREATE TABLE `cemilan` (
  `id_cemilan` int(11) NOT NULL,
  `kode_cemilan` char(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `cemilan`
--

INSERT INTO `cemilan` (`id_cemilan`, `kode_cemilan`, `nama`, `harga`, `gambar`) VALUES
(1, 'c01', 'crispy french fries', 12000, 'crispy-french-fries-with-ketchup-mayonnaise.jpg'),
(2, 'c02', 'deep fried spring rolls', 10000, 'deep-fried-spring-rolls.jpg'),
(3, 'c03', 'delicious sandwich', 10000, 'delicious-sandwich.jpg'),
(4, 'c04', 'egg roll fried spring rolls', 10000, 'egg-roll-fried-spring-rolls-white-plate-thai-food.jpg'),
(5, 'c05', 'fried bread', 10000, 'fried-bread-with-minced-pork-spread.jpg'),
(6, 'c06', 'mendoan', 10000, 'mendoan.PNG'),
(7, 'c07', 'ingredients cooking grilled', 10000, 'sausages-ingredients-cooking-grilled-sausage-with-addition-herbs-spices.jpg'),
(8, 'c08', 'toasted sandwich', 10000, 'toasted-sandwich-with-lettuce-cheese.jpg'),
(9, 'c09', 'pastry concept', 11000, 'top-view-delicious-pastry-concept.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `keranjangid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `total_harga` int(10) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`keranjangid`, `username`, `total_harga`, `productid`, `quantity`) VALUES
(0, '', 12000, 10, 1),
(0, '', 10000, 11, 1),
(0, '', 16000, 26, 1),
(0, '', 15000, 27, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kopi`
--

CREATE TABLE `kopi` (
  `id_kopi` int(11) NOT NULL,
  `kode_kopi` char(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kopi`
--

INSERT INTO `kopi` (`id_kopi`, `kode_kopi`, `nama`, `harga`, `gambar`) VALUES
(10, 'k01', 'affogato', 12000, 'affogato.jpg'),
(11, 'k02', 'americano', 10000, 'americano.jpg'),
(12, 'k03', 'cappucino', 10000, 'cappucino.jpg'),
(13, 'k04', 'espresso', 10000, 'espresso.jpg'),
(14, 'k05', 'hot caramel macchiato', 10000, 'hot-caramel-macchiato.jpg'),
(15, 'k06', 'latte', 11000, 'latte.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanan`
--

CREATE TABLE `makanan` (
  `id_makanan` int(11) NOT NULL,
  `kode_makanan` char(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `makanan`
--

INSERT INTO `makanan` (`id_makanan`, `kode_makanan`, `nama`, `harga`, `gambar`) VALUES
(15, 'm01', 'ayam kecap', 20000, 'ayam kecap.jpg'),
(17, 'm02', 'bakso', 19000, 'bakso.jpg'),
(18, 'm03', 'geprek', 23000, 'geprek.jpg'),
(19, 'm04', 'indomie kuah', 25000, 'indomie kuah.jpg'),
(20, 'm05', 'indomie goreng', 18000, 'indomie.jpg'),
(21, 'm06', 'kare', 23000, 'kare.jpg'),
(22, 'm07', 'nasi goreng', 21000, 'nasi goreng.jpg'),
(23, 'm08', 'nasi kuning', 20000, 'nasi kuning.jpg'),
(24, 'm09', 'rendang', 26000, 'rendang.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nonkopi`
--

CREATE TABLE `nonkopi` (
  `id_non_kopi` int(11) NOT NULL,
  `kode_non_kopi` char(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `nonkopi`
--

INSERT INTO `nonkopi` (`id_non_kopi`, `kode_non_kopi`, `nama`, `harga`, `gambar`) VALUES
(25, 'nk01', 'cookies and cream', 15000, 'cookies and cream.jpg'),
(26, 'nk02', 'hot chocolate', 16000, 'hot chocolate.jpg'),
(27, 'nk03', 'hot matcha latte', 15000, 'hot matcha latte.jpg'),
(28, 'nk04', 'hot red velvet', 15000, 'hot red velvet.jpg'),
(29, 'nk05', 'ice red velvet', 19000, 'ice red velvet.jpg'),
(30, 'nk06', 'ice matcha latte', 18000, 'ice matcha latte.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
