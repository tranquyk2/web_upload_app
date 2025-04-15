-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 14, 2024 lúc 08:45 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ipa-app`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `apps`
--

CREATE TABLE `apps` (
  `id` int(11) NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `version` varchar(50) NOT NULL,
  `update_date` date NOT NULL,
  `description` text DEFAULT NULL,
  `download_link` varchar(255) NOT NULL,
  `category` enum('app','game','Chứng Chỉ','jaibreak') NOT NULL,
  `app_image` varchar(255) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `modby` text NOT NULL,
  `chucnang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `apps`
--

INSERT INTO `apps` (`id`, `app_name`, `version`, `update_date`, `description`, `download_link`, `category`, `app_image`, `upload_date`, `modby`, `chucnang`) VALUES
(1, 'app show hàng', '1.0', '2024-09-12', 'show full hd', 'https://www.facebook.com/tranquy0402/', 'app', 'https://i.imgur.com/8JN20J7.jpeg', '2024-09-12 06:20:45', 'bean', 'hack'),
(2, 'fddf', '1.0', '2024-09-04', 'asas', 'https://www.facebook.com/tranquy0402/', 'Chứng Chỉ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYWgI-Qu8PxBhwz0Tc9McWWIxlxrCJZGNQdw&s', '2024-09-12 06:20:45', '', ''),
(3, 'Liên Quân', '1.0', '2024-09-12', 'Hack map', 'https://www.facebook.com/tranquy0402/', 'game', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYWgI-Qu8PxBhwz0Tc9McWWIxlxrCJZGNQdw&s', '2024-09-12 06:20:45', '', ''),
(14, 'Liên Quân', '2.0', '2024-09-12', 'hack map cam xa vãi lồn luôn ', 'https://facebook.com/tranquy0402/', 'game', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/App_Store_%28iOS%29.svg/800px-App_Store_%28iOS%29.svg.png', '2024-09-12 06:39:12', 'bean', 'hack map'),
(15, 'Liên Quân', '2.0.0', '2024-09-12', 'hhhhh', 'https://facebook.com/tranquy0402/', 'game', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/App_Store_%28iOS%29.svg/800px-App_Store_%28iOS%29.svg.png', '2024-09-12 06:43:48', 'bean', 'hack map'),
(16, 'Liên Quân', '33232', '2024-09-13', 'sdfsfdsf', 'https://facebook.com/tranquy0402/', 'jaibreak', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/App_Store_%28iOS%29.svg/800px-App_Store_%28iOS%29.svg.png', '2024-09-13 02:18:02', 'sfdf', 'dfdf'),
(17, 'Liên Quân', '2.0', '2024-09-13', 'chứng chỉ', 'https://facebook.com/tranquy0402/', 'Chứng Chỉ', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/App_Store_%28iOS%29.svg/800px-App_Store_%28iOS%29.svg.png', '2024-09-13 08:59:35', 'sfdf', 'dsdsd'),
(18, 'Liên Quân', '2.0', '2024-09-13', 'chứng chỉ', 'https://facebook.com/tranquy0402/', 'Chứng Chỉ', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/App_Store_%28iOS%29.svg/800px-App_Store_%28iOS%29.svg.png', '2024-09-13 08:59:52', 'sfdf', 'dsdsd');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `apps`
--
ALTER TABLE `apps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
