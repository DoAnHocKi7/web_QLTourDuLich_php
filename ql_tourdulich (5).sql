-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2018 at 05:00 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.28

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
  `Email` varchar(100) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Sex` varchar(3) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `LoaiTK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ID`, `Email`, `Password`, `Phone`, `Sex`, `Address`, `LoaiTK`) VALUES
(1, 'admin@gmail.com', '111111', '0906580274', 'M', 'Tp.HCM', 1),
(2, 'khatran@gmail.com', '111111', '', 'F', 'Tp.HCM', 1),
(3, 'quang@gmail.com', '111111', '', 'F', '', 2),
(4, 'bach@gmail.com', '111111', '', 'M', '', 2),
(5, 'phan@gmail.com', '111111', '', 'M', '', 3),
(6, 'ngoc@gmail.com', '111111', '', 'M', '', 3),
(7, 'nguyen@gmail.com', '111111', '', 'F', '', 4),
(8, 'anh@gmail.com', '111111', '', 'F', '', 4),
(9, 'luyen@gmail.com', '111111', '', 'M', '', 5),
(10, 'huyen@gmail.com', '111111', '', 'M', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ct_hopdong`
--

CREATE TABLE `ct_hopdong` (
  `MaHopDong` int(11) NOT NULL,
  `MaTour` int(11) NOT NULL,
  `TINHTRANG` tinyint(1) NOT NULL,
  `GhiChu` int(11) NOT NULL
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

--
-- Dumping data for table `diadanh`
--

INSERT INTO `diadanh` (`MaDiaDanh`, `TenDiaDanh`, `MaDiaDiem`) VALUES
(1, 'Lăng Chủ tịch Hồ Chí Minh', 1),
(2, 'Phủ Tây Hồ', 1),
(3, 'Bảo tàng lịch sử Việt Nam', 1),
(4, 'Quần thể Vịnh Hạ Long', 2),
(5, 'Hang Thiên Cảnh Sơn', 2),
(6, 'Hang Thiên Cảnh Sơn', 2),
(7, ' Đỉnh Fanxipan', 3),
(8, 'Núi Hàm Rồng', 3),
(9, 'Thung lũng mường Hoa ', 3),
(10, 'Suối Hồng', 4),
(11, 'Tháp Chàm Poshanư ', 4),
(12, 'Đồi Cát', 4),
(13, 'Vinpearl Land', 5),
(14, 'Đảo Hòn Mun', 5),
(15, 'Vịnh Vân Phong', 5),
(16, 'Đồi chè Cầu Đất', 6),
(17, 'Hồ Tuyền Lâm', 6),
(18, 'Thác Datanla', 6),
(19, 'Bà Nà Hills', 7),
(20, 'Ngũ Hành Sơn', 7),
(21, 'Hội An', 7),
(22, 'Chùa Thiên Mụ', 8),
(23, 'Chùa Huyền Không Sơn Thượng', 8),
(24, 'Đại Nội Huế', 8),
(25, 'Bãi Dài', 9),
(26, 'Bãi Dài', 9),
(27, 'Làng chài cổ Hàm Ninh', 9),
(28, 'Cánh đồng quạt gió,Bạc Liêu', 10),
(29, 'Chợ nổi Cái Răng, Cần Thơ', 10),
(30, 'Nhà tù Côn Đảo', 11),
(31, 'Rừng nguyên sinh Ông Đụng', 11),
(32, 'Vịnh Đầm Tre', 11),
(33, 'Bãi biển Hồ Tràm', 12),
(34, 'Căn Cứ Minh Đạm', 12),
(35, 'Suối nước nóng Bình Châu', 12),
(36, 'Bưu điện trung tâm Sài Gòn', 13),
(37, 'Địa đạo Củ Chi', 13),
(38, ' Chiêm bái chùa Vĩnh Nghiêm', 13),
(39, ' Chợ Bến Thành', 13);

-- --------------------------------------------------------

--
-- Table structure for table `diadiem`
--

CREATE TABLE `diadiem` (
  `MaDiaDiem` int(11) NOT NULL,
  `TenDiaDiem` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diadiem`
--

INSERT INTO `diadiem` (`MaDiaDiem`, `TenDiaDiem`) VALUES
(1, 'Hà Nội'),
(2, 'Hạ Long'),
(3, 'Sapa'),
(4, 'Phan Thiết'),
(5, 'Nha Trang'),
(6, 'Đà Lạt'),
(7, 'Đà Nẵng-Hội An'),
(8, 'Huế'),
(9, 'Phú Quốc'),
(10, 'Miền Tây'),
(11, 'Côn Đảo'),
(12, 'Bà Rịa-Vũng Tàu'),
(13, 'Tp.HCM');

-- --------------------------------------------------------

--
-- Table structure for table `hanh_trinh`
--

CREATE TABLE `hanh_trinh` (
  `Ma_HT` int(11) NOT NULL,
  `NoiDi` int(11) NOT NULL,
  `NoiDen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hanh_trinh`
--

INSERT INTO `hanh_trinh` (`Ma_HT`, `NoiDi`, `NoiDen`) VALUES
(1, 13, 7),
(2, 13, 12),
(3, 13, 6),
(4, 13, 2),
(5, 13, 4),
(6, 7, 1),
(7, 10, 9),
(8, 13, 5),
(9, 1, 3),
(10, 4, 10),
(11, 12, 11),
(12, 7, 8);

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
  `MaKS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `Ma_KH` int(11) NOT NULL,
  `TenKH` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SexKH` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `Phone` int(11) NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NgayDangKy` date NOT NULL,
  `LoaiKH` int(11) NOT NULL,
  `Cty` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`Ma_KH`, `TenKH`, `SexKH`, `DOB`, `Phone`, `Email`, `DiaChi`, `NgayDangKy`, `LoaiKH`, `Cty`) VALUES
(1, 'Nguyễn Thị Hồng', 'Female', '1987-09-06', 1263684117, 'hong@gmail.com', 'Tp.HCM', '2018-09-08', 4, 'Cty TNHH 1TV Sen Vàng'),
(2, 'Trần Văn Chung', 'Male', '1997-06-06', 908187023, 'chung@gmail.com', 'Tp.HCM', '2018-09-08', 5, ''),
(3, 'Dương Thành Phú', 'Male', '1995-12-14', 902872202, 'phu@gmail.com', 'Bến Tre', '2018-09-09', 6, ''),
(4, 'Trần Thị Huyền', 'Female', '1985-10-24', 905873123, 'huyen@gmail.com', 'An Giang', '2018-09-10', 4, 'Cty Thực Phẩm Vạn Tiến'),
(5, 'Nguyễn Trần Quang', 'Male', '1993-07-07', 1289543171, 'quang@gmail.com', 'Kiên Giang', '2018-09-10', 6, '');

-- --------------------------------------------------------

--
-- Table structure for table `khach_san`
--

CREATE TABLE `khach_san` (
  `MaKS` int(11) NOT NULL,
  `TenKS` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `GiaTien` double NOT NULL,
  `Ma_DD` int(11) NOT NULL,
  `loaiks_MaLoaiKS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khach_san`
--

INSERT INTO `khach_san` (`MaKS`, `TenKS`, `DiaChi`, `GiaTien`, `Ma_DD`, `loaiks_MaLoaiKS`) VALUES
(1, 'Star Danang', '42 Loseby, Phước Mỹ, Sơn Trà, Thành phố Đà Nẵng, Việt Nam', 1000000, 3, 3),
(2, 'Danang Center Hotel', '35 Phan Chu Trinh, Hải Châu 1, Quận Hải Châu, Thành phố Đà Nẵng, Việt Nam', 5500000, 5, 2),
(3, 'White Sand Boutique & Apartment', '89-91 Võ Văn Kiệt, Phường Phước Mỹ, Phước Mỹ, Sơn Trà, Thành phố Đà Nẵng, Việt Nam', 2000000, 6, 4),
(4, 'Danang Tomodachi Hotel', '17 Trần Bình Trọng, Phước Ninh, Quận Hải Châu, Thành phố Đà Nẵng, Việt Nam', 300000, 8, 1),
(5, 'Star Danang', '42 Loseby, Phước Mỹ, Sơn Trà, Thành phố Đà Nẵng, Việt Nam', 1000000, 1, 3),
(6, 'Danang Center Hotel', '35 Phan Chu Trinh, Hải Châu 1, Quận Hải Châu, Thành phố Đà Nẵng, Việt Nam', 5500000, 2, 2),
(7, 'White Sand Boutique & Apartment', '89-91 Võ Văn Kiệt, Phường Phước Mỹ, Phước Mỹ, Sơn Trà, Thành phố Đà Nẵng, Việt Nam', 3000000, 2, 4),
(8, 'Danang Tomodachi Hotel', '17 Trần Bình Trọng, Phước Ninh, Quận Hải Châu, Thành phố Đà Nẵng, Việt Nam', 300000, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `loaiaccount`
--

CREATE TABLE `loaiaccount` (
  `MaLoaiAccount` int(11) NOT NULL,
  `TenLoaiAccount` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NoteAcc` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaiaccount`
--

INSERT INTO `loaiaccount` (`MaLoaiAccount`, `TenLoaiAccount`, `NoteAcc`) VALUES
(1, 'admin', ''),
(2, 'tổng giám đốc', ''),
(3, 'Cửa hàng trương', ''),
(4, 'Cửa hàng phó', ''),
(5, 'Nhân viên ', '');

-- --------------------------------------------------------

--
-- Table structure for table `loaikh`
--

CREATE TABLE `loaikh` (
  `LoaiKH` int(11) NOT NULL,
  `TenLoaiKH` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GhiChu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loaikh`
--

INSERT INTO `loaikh` (`LoaiKH`, `TenLoaiKH`, `GhiChu`) VALUES
(4, 'Đoàn thể', ''),
(5, 'Cá nhân', ''),
(6, 'Vãng lai', '');

-- --------------------------------------------------------

--
-- Table structure for table `loaiks`
--

CREATE TABLE `loaiks` (
  `MaLoaiKS` int(11) NOT NULL,
  `TenLoaiKS` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaiks`
--

INSERT INTO `loaiks` (`MaLoaiKS`, `TenLoaiKS`) VALUES
(1, '1 SAO'),
(2, '2 SAO'),
(3, '3 SAO'),
(4, '4 SAO'),
(5, '5 SAO');

-- --------------------------------------------------------

--
-- Table structure for table `loai_tour`
--

CREATE TABLE `loai_tour` (
  `MaLoaiTour` int(11) NOT NULL,
  `TenLoaiTour` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loai_tour`
--

INSERT INTO `loai_tour` (`MaLoaiTour`, `TenLoaiTour`) VALUES
(1, 'Tour trong nước'),
(2, 'Tour nước ngoài');

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `account_ID` int(11) NOT NULL,
  `idquyen` int(11) NOT NULL
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
  `HinhAnh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` double NOT NULL,
  `Gia_TreEm1` double NOT NULL,
  `Gia_TreEm2` double NOT NULL,
  `LoaiTour` int(11) NOT NULL,
  `Ma_HT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`MaTour`, `TenTour`, `NgayKhoiHanh`, `NgayKetThuc`, `HinhAnh`, `MoTa`, `Gia`, `Gia_TreEm1`, `Gia_TreEm2`, `LoaiTour`, `Ma_HT`) VALUES
(1, 'Thành phố đáng sống nhất Việt Nam', '2018-09-11', '2018-09-14', 'dn1.jpg', '', 7000000, 4000000, 2500000, 1, 3),
(2, 'Thành phố hải sản', '2018-09-11', '2018-09-13', 'dn.jpg', '', 3000000, 2000000, 1000000, 1, 1),
(3, 'Thành phố ngàn hoa', '2018-09-10', '2018-09-13', 'dn4.jpg', '', 0, 0, 0, 1, 2),
(4, 'Thành phố nhộn nhiệp', '2018-09-11', '2018-09-13', 'dn3.jpg', '', 3000000, 2000000, 1000000, 1, 1),
(5, 'Thành phố du lịch', '2018-09-10', '2018-09-13', 'dn7.jpg', '', 5000000, 5000000, 5000000, 1, 2),
(8, 'Thành phố Phan Thiết', '2018-09-12', '2018-09-15', 'dn6.jpg', '', 5000000, 4000000, 2500000, 1, 7),
(9, 'Thủ đô Việt Nam', '2018-09-12', '2018-09-17', 'dn5.jpg', '', 5000000, 4000000, 2500000, 1, 10),
(10, 'Thành phố tham quan', '2018-09-11', '2018-09-14', 'dn8.jpg', '', 3000000, 2000000, 1000000, 1, 8);

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
  ADD PRIMARY KEY (`Ma_HT`),
  ADD KEY `FK_DDiem_HTDi` (`NoiDi`),
  ADD KEY `FK_DDiem_HTDen` (`NoiDen`);

--
-- Indexes for table `hop_dong`
--
ALTER TABLE `hop_dong`
  ADD PRIMARY KEY (`MaHopDong`),
  ADD KEY `FK_HD_KH` (`MaKH`),
  ADD KEY `fk_hop_dong_khach_san1_idx` (`MaKS`);

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
  ADD KEY `fk_khach_san_loaiks1_idx` (`loaiks_MaLoaiKS`);

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
  ADD PRIMARY KEY (`MaLoaiKS`);

--
-- Indexes for table `loai_tour`
--
ALTER TABLE `loai_tour`
  ADD PRIMARY KEY (`MaLoaiTour`);

--
-- Indexes for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`account_ID`,`idquyen`),
  ADD KEY `fk_account_has_quyen_quyen1_idx` (`idquyen`),
  ADD KEY `fk_account_has_quyen_account1_idx` (`account_ID`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`MaTour`),
  ADD KEY `FK_LTOUR_TOUR` (`LoaiTour`),
  ADD KEY `fk_tour_hanh_trinh1_idx` (`Ma_HT`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `diadanh`
--
ALTER TABLE `diadanh`
  MODIFY `MaDiaDanh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `diadiem`
--
ALTER TABLE `diadiem`
  MODIFY `MaDiaDiem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `hanh_trinh`
--
ALTER TABLE `hanh_trinh`
  MODIFY `Ma_HT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hop_dong`
--
ALTER TABLE `hop_dong`
  MODIFY `MaHopDong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `Ma_KH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `khach_san`
--
ALTER TABLE `khach_san`
  MODIFY `MaKS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `loaiaccount`
--
ALTER TABLE `loaiaccount`
  MODIFY `MaLoaiAccount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loaikh`
--
ALTER TABLE `loaikh`
  MODIFY `LoaiKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `loaiks`
--
ALTER TABLE `loaiks`
  MODIFY `MaLoaiKS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loai_tour`
--
ALTER TABLE `loai_tour`
  MODIFY `MaLoaiTour` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `MaTour` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  ADD CONSTRAINT `FK_DDiem_HTDen` FOREIGN KEY (`NoiDen`) REFERENCES `diadiem` (`MaDiaDiem`),
  ADD CONSTRAINT `FK_DDiem_HTDi` FOREIGN KEY (`NoiDi`) REFERENCES `diadiem` (`MaDiaDiem`);

--
-- Constraints for table `hop_dong`
--
ALTER TABLE `hop_dong`
  ADD CONSTRAINT `FK_HD_KH` FOREIGN KEY (`MaKH`) REFERENCES `khach_hang` (`Ma_KH`),
  ADD CONSTRAINT `fk_hop_dong_khach_san1` FOREIGN KEY (`MaKS`) REFERENCES `khach_san` (`MaKS`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD CONSTRAINT `FK_LKH_KH` FOREIGN KEY (`LoaiKH`) REFERENCES `loaikh` (`LoaiKH`);

--
-- Constraints for table `khach_san`
--
ALTER TABLE `khach_san`
  ADD CONSTRAINT `fk_khach_san_loaiks1` FOREIGN KEY (`loaiks_MaLoaiKS`) REFERENCES `loaiks` (`MaLoaiKS`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tour`
--
ALTER TABLE `tour`
  ADD CONSTRAINT `FK_LTOUR_TOUR` FOREIGN KEY (`LoaiTour`) REFERENCES `loai_tour` (`MaLoaiTour`),
  ADD CONSTRAINT `fk_tour_hanh_trinh1` FOREIGN KEY (`Ma_HT`) REFERENCES `hanh_trinh` (`Ma_HT`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
