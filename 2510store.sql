-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 19, 2019 lúc 11:23 AM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `2510store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banggia`
--

CREATE TABLE `banggia` (
  `id` int(10) NOT NULL,
  `MaSP` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaBG` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DonGia` float NOT NULL,
  `Giam` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chungtu`
--

CREATE TABLE `chungtu` (
  `SoCT` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayCT` date NOT NULL,
  `Loai` tinyint(4) NOT NULL,
  `MaKH` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDung` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(5) NOT NULL,
  `Giam` float NOT NULL,
  `ThueVAT` float NOT NULL,
  `Sotien` float NOT NULL,
  `Tratruoc` int(11) NOT NULL,
  `ConNo` int(11) NOT NULL,
  `Ngaydat` date NOT NULL,
  `Trangthai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dongct`
--

CREATE TABLE `dongct` (
  `id` int(10) NOT NULL,
  `SoCT` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaSP` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaDVT` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoLuong` float NOT NULL,
  `DonGia` float NOT NULL,
  `Giam` float NOT NULL,
  `GhiChu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvitinh`
--

CREATE TABLE `donvitinh` (
  `MaDVT` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Macdinh` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachang`
--

CREATE TABLE `khachang` (
  `MaKH` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaNhom` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenKH` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  `MaThue` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaibanggia`
--

CREATE TABLE `loaibanggia` (
  `MaBG` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenBG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MacDinh` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaihang`
--

CREATE TABLE `loaihang` (
  `MaLoai` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenLoai` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaihang`
--

INSERT INTO `loaihang` (`MaLoai`, `TenLoai`) VALUES
('ao', 'áo'),
('quan', 'quần');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaikhachhang`
--

CREATE TABLE `loaikhachhang` (
  `MaNhom` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenNhom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LoaiNhom` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `idRole` int(5) NOT NULL,
  `chucvu` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`idRole`, `chucvu`) VALUES
(1, 'admin'),
(2, 'thu ngân'),
(3, 'nhân viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenSP` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `SLDK` float NOT NULL,
  `NSX` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaDVT` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaLoai` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GTDK` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` int(10) NOT NULL,
  `role` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `email`, `diachi`, `sdt`, `role`) VALUES
(1, 'admin', 'admin', 'Hoàng Hải', 'hoaghai123@gmail.com', 'Hội An', 905569438, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banggia`
--
ALTER TABLE `banggia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaBG` (`MaBG`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `chungtu`
--
ALTER TABLE `chungtu`
  ADD PRIMARY KEY (`SoCT`),
  ADD UNIQUE KEY `SoCT` (`SoCT`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Chỉ mục cho bảng `dongct`
--
ALTER TABLE `dongct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `SoCT` (`SoCT`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `donvitinh`
--
ALTER TABLE `donvitinh`
  ADD PRIMARY KEY (`MaDVT`),
  ADD UNIQUE KEY `MaDVT` (`MaDVT`);

--
-- Chỉ mục cho bảng `khachang`
--
ALTER TABLE `khachang`
  ADD PRIMARY KEY (`MaKH`),
  ADD UNIQUE KEY `MaKH` (`MaKH`),
  ADD KEY `MaNhom` (`MaNhom`);

--
-- Chỉ mục cho bảng `loaibanggia`
--
ALTER TABLE `loaibanggia`
  ADD PRIMARY KEY (`MaBG`),
  ADD UNIQUE KEY `MaBG` (`MaBG`);

--
-- Chỉ mục cho bảng `loaihang`
--
ALTER TABLE `loaihang`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `loaikhachhang`
--
ALTER TABLE `loaikhachhang`
  ADD PRIMARY KEY (`MaNhom`),
  ADD UNIQUE KEY `MaNhom` (`MaNhom`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`idRole`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD UNIQUE KEY `MaSP` (`MaSP`),
  ADD KEY `MaLoai` (`MaLoai`),
  ADD KEY `MaDVT` (`MaDVT`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `role` (`role`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banggia`
--
ALTER TABLE `banggia`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dongct`
--
ALTER TABLE `dongct`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `idRole` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `banggia`
--
ALTER TABLE `banggia`
  ADD CONSTRAINT `banggia_ibfk_1` FOREIGN KEY (`MaBG`) REFERENCES `loaibanggia` (`MaBG`),
  ADD CONSTRAINT `banggia_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `chungtu`
--
ALTER TABLE `chungtu`
  ADD CONSTRAINT `chungtu_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachang` (`MaKH`);

--
-- Các ràng buộc cho bảng `dongct`
--
ALTER TABLE `dongct`
  ADD CONSTRAINT `dongct_ibfk_1` FOREIGN KEY (`SoCT`) REFERENCES `chungtu` (`SoCT`),
  ADD CONSTRAINT `dongct_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `khachang`
--
ALTER TABLE `khachang`
  ADD CONSTRAINT `khachang_ibfk_1` FOREIGN KEY (`MaNhom`) REFERENCES `loaikhachhang` (`MaNhom`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loaihang` (`MaLoai`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaDVT`) REFERENCES `donvitinh` (`MaDVT`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`idRole`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
