-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2022 pada 07.46
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatigniter_2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `block_user`
--

CREATE TABLE `block_user` (
  `blocked_from` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `blocked_to` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `unique_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `user_fname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user_lname` varchar(30) CHARACTER SET latin1 NOT NULL,
  `user_email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `bio` varchar(100) CHARACTER SET latin1 NOT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `dob` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `user_pass` varchar(20) CHARACTER SET latin1 NOT NULL,
  `user_avtar` varchar(200) CHARACTER SET latin1 NOT NULL,
  `user_status` varchar(10) CHARACTER SET latin1 NOT NULL,
  `last_logout` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `unique_id`, `user_fname`, `user_lname`, `user_email`, `bio`, `created_at`, `dob`, `phone`, `address`, `user_pass`, `user_avtar`, `user_status`, `last_logout`) VALUES
(1, '2bc812', 'Sample', 'Account', 'sample@gmail.com', 'Just a dummy account', '20-6-2021', '12-12-1980', '7410000000', '69 Dummy Address', 'password', '9b1a8f8c.jpg', 'active', ''),
(2, '2f0922', 'riswan', 'f', 'riswan1@gmail.com', 'u', '7-6-2022', '07-06-2022', '0812345', 'Malang', 'riswan', 'd9a1131f.jpg', 'active', ''),
(3, 'df2a51', 'M', 'Riswan', 'riswan@gmail.com', 'u', '7-6-2022', '7-6-2022', '0812345', 'Malang', 'riswan', 'bee1ae2.jpg', 'active', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_messages`
--

CREATE TABLE `user_messages` (
  `time` datetime(6) NOT NULL,
  `sender_message_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `receiver_message_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `message` varchar(500) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `user_messages`
--

INSERT INTO `user_messages` (`time`, `sender_message_id`, `receiver_message_id`, `message`) VALUES
('2022-06-07 14:25:17.000000', '2f0922', 'df2a51', 'hi'),
('2022-06-07 14:25:51.000000', 'df2a51', '2f0922', 'hi'),
('2022-06-07 17:39:20.000000', '2f0922', '2bc812', ''),
('2022-06-07 17:39:20.000000', '2f0922', '2bc812', ''),
('2022-06-07 17:39:20.000000', '2f0922', '2bc812', ''),
('2022-06-07 19:56:04.000000', '2f0922', 'df2a51', 'hi'),
('2022-06-09 14:01:48.000000', 'df2a51', '2f0922', 'hi'),
('2022-06-09 14:02:25.000000', 'df2a51', '2f0922', ''),
('2022-06-09 14:02:28.000000', 'df2a51', '2f0922', ''),
('2022-06-09 14:02:28.000000', 'df2a51', '2f0922', ''),
('2022-06-18 12:31:44.000000', '2f0922', 'df2a51', ''),
('2022-06-20 14:18:41.000000', 'df2a51', '2f0922', ''),
('2022-06-20 14:19:24.000000', 'df2a51', '2f0922', ''),
('2022-06-20 16:13:11.000000', '2f0922', 'df2a51', ''),
('2022-06-20 16:53:26.000000', 'df2a51', '2f0922', ''),
('2022-06-20 16:54:39.000000', 'df2a51', '2f0922', ''),
('2022-06-20 17:00:42.000000', 'df2a51', '2f0922', ''),
('2022-06-20 17:06:53.000000', 'df2a51', '2f0922', ''),
('2022-06-20 17:15:53.000000', 'df2a51', '2f0922', ''),
('2022-06-23 16:27:56.000000', 'df2a51', '2f0922', 'hi'),
('2022-06-23 16:36:19.000000', 'df2a51', '2f0922', ''),
('2022-06-23 16:41:05.000000', 'df2a51', '2f0922', ''),
('2022-06-23 17:01:58.000000', 'df2a51', '2bc812', 'hi'),
('2022-06-23 17:05:11.000000', 'df2a51', '2f0922', 'hi'),
('2022-06-23 17:05:14.000000', 'df2a51', '2f0922', 'hi'),
('2022-06-23 17:23:13.000000', 'df2a51', '2f0922', ''),
('2022-06-23 19:51:29.000000', 'df2a51', '2bc812', ''),
('2022-06-26 19:58:24.000000', 'df2a51', '2f0922', ''),
('2022-06-27 08:02:34.000000', '2bc812', 'df2a51', 'hi'),
('2022-06-27 08:02:40.000000', '2bc812', 'df2a51', 'hi'),
('2022-06-27 08:02:56.000000', '2bc812', 'df2a51', 'hi'),
('2022-06-27 08:02:56.000000', '2bc812', 'df2a51', ''),
('2022-06-27 08:02:56.000000', '2bc812', 'df2a51', ''),
('2022-06-27 08:02:56.000000', '2bc812', 'df2a51', ''),
('2022-06-27 08:02:58.000000', '2bc812', 'df2a51', ''),
('2022-06-27 08:02:58.000000', '2bc812', 'df2a51', ''),
('2022-06-27 08:02:58.000000', '2bc812', 'df2a51', ''),
('2022-06-27 08:02:58.000000', '2bc812', 'df2a51', ''),
('2022-06-27 08:02:58.000000', '2bc812', 'df2a51', ''),
('2022-06-27 08:02:58.000000', '2bc812', 'df2a51', ''),
('2022-06-27 08:02:58.000000', '2bc812', 'df2a51', ''),
('2022-06-27 08:03:01.000000', '2bc812', 'df2a51', ''),
('2022-06-27 08:03:01.000000', '2bc812', 'df2a51', ''),
('2022-06-27 08:03:01.000000', '2bc812', 'df2a51', ''),
('2022-06-27 08:03:01.000000', '2bc812', 'df2a51', ''),
('2022-06-27 08:03:01.000000', '2bc812', 'df2a51', ''),
('2022-06-27 08:03:01.000000', '2bc812', 'df2a51', ''),
('2022-06-27 08:03:19.000000', '2bc812', 'df2a51', 'hi'),
('2022-06-27 11:38:09.000000', '2bc812', 'df2a51', ''),
('2022-06-27 11:38:11.000000', '2bc812', 'df2a51', ''),
('2022-06-27 11:38:11.000000', '2bc812', 'df2a51', ''),
('2022-06-27 11:38:11.000000', '2bc812', 'df2a51', ''),
('2022-06-27 11:38:11.000000', '2bc812', 'df2a51', ''),
('2022-06-27 11:38:11.000000', '2bc812', 'df2a51', ''),
('2022-06-27 11:38:11.000000', '2bc812', 'df2a51', ''),
('2022-06-27 11:38:11.000000', '2bc812', 'df2a51', ''),
('2022-06-27 11:38:11.000000', '2bc812', 'df2a51', ''),
('2022-06-27 12:41:52.000000', '2bc812', 'df2a51', ''),
('2022-06-27 12:42:02.000000', '2bc812', 'df2a51', ''),
('2022-06-28 11:43:51.000000', 'df2a51', '2f0922', 'hi'),
('2022-06-28 11:43:56.000000', 'df2a51', '2f0922', ''),
('2022-07-02 08:15:52.000000', 'df2a51', '2bc812', 'hi'),
('2022-07-02 08:16:01.000000', 'df2a51', '2bc812', ''),
('2022-07-02 08:16:55.000000', 'df2a51', '2bc812', 'hi'),
('2022-07-02 08:17:06.000000', 'df2a51', '2bc812', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`unique_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
