-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2025 at 05:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aomine`
--

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `mahang` varchar(4) NOT NULL,
  `tenhang` varchar(20) NOT NULL,
  `mansx` varchar(2) NOT NULL,
  `namsx` year(4) NOT NULL,
  `gia` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bảng Hàng Hóa';

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`mahang`, `tenhang`, `mansx`, `namsx`, `gia`) VALUES
('AS01', 'Asus TUF', 'AS', '2017', 520),
('AS02', 'Asus Vivobook', 'AS', '2017', 580),
('DE01', 'Dell Voltro', 'DE', '2015', 650),
('DE02', 'Dell Inspriron', 'DE', '2015', 550),
('LE01', 'Lenovo Thinkpaad', 'LE', '2019', 750),
('LE02', 'Lenovo Legion', 'LE', '2020', 540),
('LE03', 'Lenovo Yoga', 'LE', '2020', 600),
('TO01', 'Toshiba Satellite', 'TO', '2014', 630);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` varchar(3) NOT NULL,
  `makh` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mahang` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `makh`, `mahang`, `soluong`, `thanhtien`) VALUES
('001', 'K001', 'DE01', 2, 0),
('001', 'K001', 'DE02', 1, 0),
('002', 'K002', 'LE01', 5, 0),
('002', 'K002', 'LE02', 3, 0),
('003', 'K002', 'TO01', 1, 0),
('004', 'K003', 'DE01', 2, 0),
('005', 'K004', 'AS01', 4, 0),
('005', 'K004', 'LE01', 6, 0),
('005', 'K004', 'LE02', 8, 0),
('006', 'K005', 'AS01', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` varchar(4) NOT NULL,
  `tenkh` varchar(50) NOT NULL,
  `namsinh` year(4) NOT NULL,
  `Dienthoai` char(10) NOT NULL,
  `diachi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`makh`, `tenkh`, `namsinh`, `Dienthoai`, `diachi`) VALUES
('K001', 'Nguyễn Thị Lan', '1980', '0913123456', 'Bạc Liêu'),
('K002', 'Ngô Thanh Minh', '1985', '0913024357', 'Vĩnh Lợi'),
('K003', 'Lâm Văn Thanh', '1979', '0913123457', 'Giá Rai'),
('K004', 'Dương Thu Thủy', '1995', '0913024358', 'Hồng Dân'),
('K005', 'Nguyễn Thị Xuân', '1987', '0903223344', 'Phước Long'),
('K006', 'Huỳnh Mẫn Đạt', '1975', '0989122112', 'Bạc Liêu'),
('K007', 'Lâm Hoài Bảo', '1990', '0912131415', 'Bạc Liêu'),
('K008', 'Hồ Trung Tín', '2000', '0944119999', 'Phước Long'),
('K009', 'Trương Xuân Thi', '2001', '0909000111', 'Vĩnh Lợi');

-- --------------------------------------------------------

--
-- Table structure for table `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `makh` char(2) NOT NULL,
  `tensx` varchar(10) NOT NULL,
  `quocgia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`makh`, `tensx`, `quocgia`) VALUES
('AS', 'ASUS', 'Đài Loan'),
('DE', 'DELL', 'Hoa Kỳ'),
('LE', 'LENOVO', 'Trung Quốc'),
('TO', 'TOSHIBA', 'Nhật Bản');

-- --------------------------------------------------------

--
-- Table structure for table `tonkho`
--

CREATE TABLE `tonkho` (
  `mahang` varchar(4) NOT NULL,
  `tenhang` varchar(40) DEFAULT NULL,
  `mansx` varchar(2) DEFAULT NULL,
  `namsx` int(11) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tonkho`
--

INSERT INTO `tonkho` (`mahang`, `tenhang`, `mansx`, `namsx`, `gia`, `soluong`) VALUES
('DE01', 'Dell Vostro', 'DE', 2015, 650, 20),
('DE02', 'Dell Inspiron', 'DE', 2015, 550, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`mahang`),
  ADD UNIQUE KEY `gia` (`gia`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`,`mahang`),
  ADD KEY `makh` (`makh`),
  ADD KEY `mahang` (`mahang`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Indexes for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`makh`);

--
-- Indexes for table `tonkho`
--
ALTER TABLE `tonkho`
  ADD PRIMARY KEY (`mahang`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`mahang`) REFERENCES `hanghoa` (`mahang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
