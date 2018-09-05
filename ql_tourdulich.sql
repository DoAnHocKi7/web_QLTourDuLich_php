-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2018 at 03:06 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ql_tourdulich`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ID` int(11) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Sex` varchar(3) NOT NULL,
  `Address` int(11) NOT NULL,
  `LoaiTK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ct_hopdong`
--

CREATE TABLE `ct_hopdong` (
  `MaHopDong` int(11) NOT NULL,
  `MaTour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `diadanh`
--

CREATE TABLE `diadanh` (
  `MaDiaDanh` int(11) NOT NULL,
  `TenDiaDanh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaDiaDiem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diadiem`
--

CREATE TABLE `diadiem` (
  `MaDiaDiem` int(11) NOT NULL,
  `TenDiaDiem` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hanh_trinh`
--

CREATE TABLE `hanh_trinh` (
  `NoiDi` int(11) NOT NULL,
  `NoiDen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hop_dong`
--

CREATE TABLE `hop_dong` (
  `MaHopDong` int(11) NOT NULL,
  `NgayDat` date NOT NULL,
  `SoNguoi` tinyint(4) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `PhuThu` double NOT NULL,
  `GhiChu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaKS_Doi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `Ma_KH` int(11) NOT NULL,
  `TenKH` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SexKH` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `Phone` int(11) NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NgayDangKy` date NOT NULL,
  `LoaiKH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khach_san`
--

CREATE TABLE `khach_san` (
  `MaKS` int(11) NOT NULL,
  `LoaiKS` int(11) NOT NULL,
  `TenKS` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `GiaTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loaiaccount`
--

CREATE TABLE `loaiaccount` (
  `MaLoaiAccount` int(11) NOT NULL,
  `TenLoaiAccount` int(11) NOT NULL,
  `NoteAcc` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loaikh`
--

CREATE TABLE `loaikh` (
  `LoaiKH` int(11) NOT NULL,
  `TenLoaiKH` varchar(100) NOT NULL,
  `GhiChu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loaiks`
--

CREATE TABLE `loaiks` (
  `MaLoaiKS` int(11) NOT NULL,
  `TenLoaiKS` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaDiaDiem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loai_tour`
--

CREATE TABLE `loai_tour` (
  `MaLoaiTour` int(11) NOT NULL,
  `TenLoaiTour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `MaTour` int(11) NOT NULL,
  `TenTour` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NgayKhoiHanh` date NOT NULL,
  `NgayKetThuc` date NOT NULL,
  `HanhTrinh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` int(11) NOT NULL,
  `MoTa` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LoaiTour` int(11) NOT NULL,
  `hanh_trinh_NoiDi` int(11) NOT NULL,
  `hanh_trinh_NoiDen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_LoaiAcc_Acc` (`LoaiTK`);

--
-- Indexes for table `ct_hopdong`
--
ALTER TABLE `ct_hopdong`
  ADD PRIMARY KEY (`MaHopDong`,`MaTour`),
  ADD KEY `FK_HD_TOUR` (`MaTour`);

--
-- Indexes for table `diadanh`
--
ALTER TABLE `diadanh`
  ADD PRIMARY KEY (`MaDiaDanh`),
  ADD KEY `FK_DDanh_DDiem` (`MaDiaDiem`);

--
-- Indexes for table `diadiem`
--
ALTER TABLE `diadiem`
  ADD PRIMARY KEY (`MaDiaDiem`);

--
-- Indexes for table `hanh_trinh`
--
ALTER TABLE `hanh_trinh`
  ADD PRIMARY KEY (`NoiDi`,`NoiDen`),
  ADD KEY `FK_DDanh_NoiDen` (`NoiDen`);

--
-- Indexes for table `hop_dong`
--
ALTER TABLE `hop_dong`
  ADD PRIMARY KEY (`MaHopDong`),
  ADD KEY `FK_HD_KH` (`MaKH`),
  ADD KEY `FK_HD_KS` (`MaKS_Doi`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`Ma_KH`),
  ADD KEY `FK_LKH_KH` (`LoaiKH`);

--
-- Indexes for table `khach_san`
--
ALTER TABLE `khach_san`
  ADD PRIMARY KEY (`MaKS`),
  ADD KEY `FK_LKS_KS` (`LoaiKS`);

--
-- Indexes for table `loaiaccount`
--
ALTER TABLE `loaiaccount`
  ADD PRIMARY KEY (`MaLoaiAccount`);

--
-- Indexes for table `loaikh`
--
ALTER TABLE `loaikh`
  ADD PRIMARY KEY (`LoaiKH`);

--
-- Indexes for table `loaiks`
--
ALTER TABLE `loaiks`
  ADD PRIMARY KEY (`MaLoaiKS`),
  ADD KEY `FK_LKS_DDiem` (`MaDiaDiem`);

--
-- Indexes for table `loai_tour`
--
ALTER TABLE `loai_tour`
  ADD PRIMARY KEY (`MaLoaiTour`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`MaTour`),
  ADD KEY `FK_LTOUR_TOUR` (`LoaiTour`),
  ADD KEY `fk_tour_hanh_trinh1_idx` (`hanh_trinh_NoiDi`,`hanh_trinh_NoiDen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diadanh`
--
ALTER TABLE `diadanh`
  MODIFY `MaDiaDanh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diadiem`
--
ALTER TABLE `diadiem`
  MODIFY `MaDiaDiem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hop_dong`
--
ALTER TABLE `hop_dong`
  MODIFY `MaHopDong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `Ma_KH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khach_san`
--
ALTER TABLE `khach_san`
  MODIFY `MaKS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaiaccount`
--
ALTER TABLE `loaiaccount`
  MODIFY `MaLoaiAccount` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaikh`
--
ALTER TABLE `loaikh`
  MODIFY `LoaiKH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaiks`
--
ALTER TABLE `loaiks`
  MODIFY `MaLoaiKS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loai_tour`
--
ALTER TABLE `loai_tour`
  MODIFY `MaLoaiTour` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `MaTour` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `FK_LoaiAcc_Acc` FOREIGN KEY (`LoaiTK`) REFERENCES `loaiaccount` (`MaLoaiAccount`);

--
-- Constraints for table `ct_hopdong`
--
ALTER TABLE `ct_hopdong`
  ADD CONSTRAINT `FK_CTHD_HD` FOREIGN KEY (`MaHopDong`) REFERENCES `hop_dong` (`MaHopDong`),
  ADD CONSTRAINT `FK_HD_TOUR` FOREIGN KEY (`MaTour`) REFERENCES `tour` (`MaTour`);

--
-- Constraints for table `diadanh`
--
ALTER TABLE `diadanh`
  ADD CONSTRAINT `FK_DDanh_DDiem` FOREIGN KEY (`MaDiaDiem`) REFERENCES `diadiem` (`MaDiaDiem`);

--
-- Constraints for table `hanh_trinh`
--
ALTER TABLE `hanh_trinh`
  ADD CONSTRAINT `FK_DDanh_NoiDen` FOREIGN KEY (`NoiDen`) REFERENCES `diadanh` (`MaDiaDanh`),
  ADD CONSTRAINT `FK_DDanh_NoiDi` FOREIGN KEY (`NoiDi`) REFERENCES `diadanh` (`MaDiaDanh`);

--
-- Constraints for table `hop_dong`
--
ALTER TABLE `hop_dong`
  ADD CONSTRAINT `FK_HD_KH` FOREIGN KEY (`MaKH`) REFERENCES `khach_hang` (`Ma_KH`),
  ADD CONSTRAINT `FK_HD_KS` FOREIGN KEY (`MaKS_Doi`) REFERENCES `khach_san` (`MaKS`);

--
-- Constraints for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD CONSTRAINT `FK_LKH_KH` FOREIGN KEY (`LoaiKH`) REFERENCES `loaikh` (`LoaiKH`);

--
-- Constraints for table `khach_san`
--
ALTER TABLE `khach_san`
  ADD CONSTRAINT `FK_LKS_KS` FOREIGN KEY (`LoaiKS`) REFERENCES `loaiks` (`MaLoaiKS`);

--
-- Constraints for table `loaiks`
--
ALTER TABLE `loaiks`
  ADD CONSTRAINT `FK_LKS_DDiem` FOREIGN KEY (`MaDiaDiem`) REFERENCES `diadiem` (`MaDiaDiem`);

--
-- Constraints for table `tour`
--
ALTER TABLE `tour`
  ADD CONSTRAINT `FK_LTOUR_TOUR` FOREIGN KEY (`LoaiTour`) REFERENCES `loai_tour` (`MaLoaiTour`),
  ADD CONSTRAINT `fk_tour_hanh_trinh1` FOREIGN KEY (`hanh_trinh_NoiDi`,`hanh_trinh_NoiDen`) REFERENCES `hanh_trinh` (`NoiDi`, `NoiDen`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
