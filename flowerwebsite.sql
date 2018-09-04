-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2018 at 03:46 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flowerwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_chitiethd` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL,
  `dongia` float NOT NULL,
  `thanhtien` decimal(10,0) NOT NULL,
  `id_hoadon` int(11) NOT NULL,
  `id_hoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_chitiethd`, `soluongmua`, `dongia`, `thanhtien`, `id_hoadon`, `id_hoa`) VALUES
(38, 1, 650000, '650000', 17, 6),
(39, 1, 2000000, '2000000', 17, 47),
(40, 1, 500000, '500000', 17, 3),
(41, 1, 700000, '700000', 17, 7),
(42, 1, 400000, '400000', 18, 4),
(43, 1, 500000, '500000', 18, 5),
(44, 1, 700000, '700000', 18, 7),
(45, 1, 900000, '900000', 19, 31),
(46, 1, 1500000, '1500000', 19, 27);

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_hoas`
--

CREATE TABLE `chitiet_hoas` (
  `id_ct_hoas` int(11) NOT NULL,
  `id_hoa` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitiet_hoas`
--

INSERT INTO `chitiet_hoas` (`id_ct_hoas`, `id_hoa`, `soluong`) VALUES
(1, 1, 15),
(2, 4, 15),
(3, 6, 15),
(4, 8, 15),
(5, 8, 15),
(5, 12, 15),
(6, 1, 15),
(7, 8, 15),
(7, 19, 15),
(9, 11, 15),
(9, 16, 15),
(10, 17, 15),
(13, 2, 15),
(20, 14, 15),
(23, 3, 15),
(25, 15, 15),
(26, 11, 15),
(31, 30, 15),
(33, 10, 15),
(34, 13, 15),
(35, 4, 15),
(37, 10, 15),
(41, 1, 15),
(42, 1, 15),
(42, 18, 15),
(43, 1, 15),
(45, 11, 15),
(46, 10, 15),
(47, 9, 15);

-- --------------------------------------------------------

--
-- Table structure for table `hoa`
--

CREATE TABLE `hoa` (
  `id_hoa` int(11) NOT NULL,
  `tenhoa` varchar(100) NOT NULL,
  `gia` float NOT NULL,
  `id_nhacc` int(11) NOT NULL,
  `idmauhoa` int(11) NOT NULL,
  `id_tenhoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoa`
--

INSERT INTO `hoa` (`id_hoa`, `tenhoa`, `gia`, `id_nhacc`, `idmauhoa`, `id_tenhoa`) VALUES
(1, 'hoa hồng đỏ', 10000, 1, 1, 4),
(2, 'hoa hồng vàng', 11000, 1, 1, 4),
(3, 'hoa cúc trắng', 6000, 4, 8, 2),
(4, 'Hoa ly vàng', 0, 8, 3, 7),
(5, 'Hoa lan vũ nữ', 0, 2, 3, 6),
(6, 'Hoa hồng da', 0, 1, 6, 4),
(7, 'Hoa hồng đỏ', 0, 1, 1, 4),
(8, 'Hoa cẩm chướng hồng', 0, 5, 5, 1),
(9, 'lan hồ điệp vàng', 0, 2, 3, 6),
(10, 'lan hồ điệp trắng', 0, 2, 8, 6),
(11, 'hoa hướng dương bung nở', 0, 10, 6, 10),
(12, 'hoa hồng sen', 0, 1, 5, 4),
(13, 'Hoa ly hồng', 0, 8, 5, 7),
(14, 'Hoa đồng tiền', 0, 3, 3, 3),
(15, 'Hoa sen hồng', 0, 9, 5, 8),
(16, 'Hoa cẩm chướng đỏ', 0, 5, 1, 1),
(17, 'Hoa ly trắng', 0, 5, 8, 7),
(18, 'Hoa hồng trắng', 0, 1, 8, 4),
(19, 'Hoa hồng tím', 0, 1, 4, 4),
(30, 'Cúc ping pong', 0, 4, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `id_hoadon` int(11) NOT NULL,
  `randomize_name` varchar(25) NOT NULL,
  `thanhtien` float NOT NULL,
  `tongtien` float NOT NULL,
  `ngay_hd` date NOT NULL,
  `user_kh` char(50) NOT NULL,
  `phuong_thuc` varchar(255) NOT NULL,
  `ten_kh` varchar(255) NOT NULL,
  `dia_chi_giao` varchar(255) NOT NULL,
  `dia_chi_thu` varchar(255) NOT NULL,
  `so_dien_thoai` varchar(255) NOT NULL,
  `trang_thai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`id_hoadon`, `randomize_name`, `thanhtien`, `tongtien`, `ngay_hd`, `user_kh`, `phuong_thuc`, `ten_kh`, `dia_chi_giao`, `dia_chi_thu`, `so_dien_thoai`, `trang_thai`) VALUES
(17, '3rpaytNRMRbQPsJ9SAuq', 1540000, 3850000, '2018-06-18', 'tien123', 'Thanh toán khi nhận hoa', 'Nguyễn Văn C', '12 Đinh Tiên Hoàng, Quận 1', '12 Đinh Tiên Hoàng, Quận 1', '0986731003', 'Đang xử lý'),
(18, 'Bsd4rYwbFLqfNQ4CLino', 640000, 1600000, '2018-06-18', 'trantien', 'Chuyển khoản ngân hàng', 'Nguyễn Văn A', '1/3/4/6 Nguyễn Cửu Đàm, Tân Sơn Nhì, Tân Phú', '1/3/4/6 Nguyễn Cửu Đàm, Tân Sơn Nhì, Tân Phú', '0987654321', 'Hoàn tất'),
(19, 'xEuHMXQxkdh73dAk85ue', 960000, 2400000, '2018-06-18', 'trantien', 'Thu tiền ở địa điểm khác', 'Nguyễn Văn A', '1/3/4/6 Nguyễn Cửu Đàm, Tân Sơn Nhì, Tân Phú', '140 Lê Trọng Tấn.', '0987654321', 'Đang xử lý');

-- --------------------------------------------------------

--
-- Table structure for table `hoas`
--

CREATE TABLE `hoas` (
  `id_hoas` int(11) NOT NULL,
  `ten_hoas` varchar(100) NOT NULL,
  `gia_hoas` float(11,0) NOT NULL,
  `anh_hoas` varchar(100) NOT NULL,
  `thongtin_hoas` varchar(1000) NOT NULL,
  `id_ct_hoas` int(11) NOT NULL,
  `id_loaihoa` int(11) NOT NULL,
  `idmauhoa` int(11) NOT NULL,
  `soluotmua` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoas`
--

INSERT INTO `hoas` (`id_hoas`, `ten_hoas`, `gia_hoas`, `anh_hoas`, `thongtin_hoas`, `id_ct_hoas`, `id_loaihoa`, `idmauhoa`, `soluotmua`, `soluong`) VALUES
(1, 'Real love', 450000, 'img/hoas/reallove.jpg', 'Bó hoa được thiết kế với tông màu đỏ nóng bỏng là biểu tượng cho một tình yêu mãnh liệt, tình cảm chân thành, lãng mạn, sẵn sàng bùng cháy và mang thông thông điệp: “I love you” . Hãy tạo bất ngờ cho người bạn yêu thương trong những dịp kỷ niệm nhé, chắn chắn nàng sẽ cảm nhận được tình yêu chân thành mà bạn dành cho nàng đấy.', 1, 2, 1, 0, 1),
(2, 'Ngày Vàng Tươi', 500000, 'img/hoas/Ngayvangtuoi.jpg', 'Tone màu vàng rực rỡ như tia nắng ấm áp giúp sưởi ấm thêm tình cảm giữa những người yêu thương nhau. Tia nắng xua đi sự lạnh giá làm con tim thêm nồng ấm trong cuộc sống hiện đại ngày nay', 2, 5, 3, 0, 1),
(3, 'Phút Yêu Đầu 2', 500000, 'img/hoas/phutyeudau2.jpg', 'Với tone màu hồng nhẹ nhàng, nữ tính. Bó hoa là món quà tuyệt vời dành tặng cho những bạn nữ yêu thích sự lãng mạn và tràn đầy yêu thương. Thích hợp tặng dịp sinh nhật, làm quen, kỷ niệm ...', 3, 1, 5, 3, 1),
(4, 'Điều Giản Dị', 400000, 'img/hoas/dieugiandi.jpg', 'Giỏ hoa được cắm tròn 2 mặt với thiết kế chủ đạo là hoa hồng sen màu hồng phấn nhẹ nhàng và tao nhã, cùng cẩm chướng hồng phối hợp xen kẽ nhau tạo nên một sản phẩm hoa thu hút ngay từ ánh nhìn đầu tiên. Tuy giản dị, mộc mạc nhưng chắc chắn sẽ là món quà ý nghĩa tuyệt vời dành tặng cho những người thân yêu của mình.', 4, 1, 7, 2, 1),
(5, 'Sắc Hồng Xinh', 500000, 'img/hoas/sachongxinh.jpg', 'Hộp hoa với tone màu hồng pastel chủ đạo đã làm say đắm bao cô nàng đáng yêu. Hộp hoa này chắc chắn sẽ là món quà tuyệt vời dành tặng cho các fangirl có sự yêu thích đặc biệt dành cho màu hồng.', 5, 1, 5, 2, 1),
(6, 'Baby Love', 650000, 'img/hoas/babylove.jpg', 'Có những ngày thật buồn vì bộn bề công việc không thể ngưng dành tặng cho bản thân một khoảng thời gian nhỏ nhỏ chăm sóc.Có những ngày lại trôi qua nhẹ nhàng tưa cánh hồng nhẹ làm ta chợt nhận ra \"cuộc sống dù vội vã, xin một phút ngắn ngủi ngưng đọng để biết yêu bản thân\". Bó hoa với hoa hồng babylove loại hồng giống mới nở to và đẹp cùng với tone màu hồng pastel sẽ là món quà làm say đắm nhiều cô gái.', 6, 1, 5, 4, 1),
(7, 'Hạnh Phúc Muôn Màu', 700000, 'img/hoas/hanhphucmuonmau.jpg', 'Hạnh phúc là cảm giác mà ai cũng mong muốn có được. Đôi khi thật nhẹ nhàng cũng có khi là sự nồng nhiệt đến cháy bỏng trong từng hành động quan tâm giữa những người thân yêu với nhau. Như màu sắc của bó hoa được kết hợp nhiều loại hoa tạo nên sắc màu của sự hạnh phúc', 7, 1, 4, 3, 1),
(8, 'Khúc Ca Mê Ly', 2000000, 'img/hoas/khuccamely.jpg', 'Với tone màu vàng đậm của hoa hồng vàng và sự nhẹ nhàng của hoa hồng da và hoa hồng trứng gà, điểm xuyết cùng tone lạnh của green wicky tạo ra khúc ca mê ly của các loài hoa nhằm cầu chúc cho tất cả mọi người có cuộc sống vui vẻ hạnh phúc , gặt hái nhiều thành công trong công việc. Thích hợp dành tặng cho các dịp khai trương, tân gia, thăng chức...', 8, 1, 3, 1, 1),
(9, 'Nắng Sớm Mai', 700000, 'img/hoas/nangsommai.jpg', 'Mỗi buổi sáng thức dậy sẽ là một ngày tràn đầy năng lượng cùng với niềm vui để bắt đầu ngày làm việc mới. Làm việc hăng say tiến gần hơn đến tương lai mơ ước của mỗi chúng ta. Tia nắng ấm áp vào mỗi sớm mai là ý tưởng dành cho giỏ hoa này', 9, 1, 7, 1, 1),
(10, 'Tinh Khôi', 1500000, 'img/hoas/tinhkhoi.jpg', 'Màu trắng luôn có sự cuốn hút ánh nhìn của mọi người. Màu trắng là màu sắc hội tụ của tất cả các màu, nó thể hiện một sự tinh khiết. Mặc dù màu trắng không nổi trội hay rực rở như những màu khác, nhưng nó có thể kết hợp với tất cả các màu khác hay đơn giản chỉ mỗi màu trắng cũng tạo nên sự khác biệt.', 10, 1, 8, 0, 1),
(11, 'Rose Love', 900000, 'img/hoas/roselove.jpg', 'Bó hoa gồm chủ yếu là hoa hồng màu trứng gà, màu hoa mới và đẹp được phối hợp với baby trắng tinh khôi cùng với hoa thủy tiên tạo nên sự đặc sắc riêng biệt của bó hoa. Bó hoa này thích hợp dành tặng cho các fan của hoa hồng nhưng yêu thích sự mới lạ và độc đáo', 11, 1, 6, 0, 0),
(12, 'Red Roses', 2000000, 'img/hoas/redroses.jpg', 'Bình hoa với hoa hồng đỏ là chủ đạo được bạn florist thiết kế đặc biệt dùng để tặng cho những fan cuồng hoa hồng đỏ. Loài hoa được yêu thích nhất trong các màu của hoa hồng. Bình hoa sẽ là món quà tuyệt vời dành tặng cho người thân yêu của bạn', 12, 1, 1, 0, 0),
(13, 'Tình Yêu Diệu Kỳ', 500000, 'img/hoas/tinhyeudieuki.jpg', 'Tình yêu là thứ cảm xúc đẹp đẽ và mạnh mẽ nhất. Tình yêu cho chúng ta sống giữa mộng mơ và thực tại, cho chúng ta nếm trải đầy đủ cung bậc cảm xúc: Hỉ - nộ - ái - ố. Phức tạp là vậy nhưng nào có ai trách vì mình được yêu quá nhiều bao giờ, người ta chỉ buồn vì chưa tìm ra tình yêu của đời mình mà thôi. Giỏ hoa là lời chúc, là sự tôn vinh cho sự diệu kỳ của tình yêu.', 13, 2, 3, 1, 1),
(14, 'Màu Nỗi Nhớ', 1000000, 'img/hoas/maunoinho.jpg', 'Màu tím là màu của sự nhớ nhung, của những cảm xúc khi chợt nghĩ về nhau. Bình hoa với chủ đạo là màu tím như nỗi nhớ của anh về em từng ngày trôi qua không bao giờ phai. Chỉ muốn đến bên cạnh em và nói rằng: \"Anh rất nhớ em, cô gái ơi\".', 14, 2, 7, 0, 0),
(15, 'Ấm Áp Yêu Thương', 1800000, 'img/hoas/amapyeuthuong.jpg', 'Với tông màu đỏ chủ đạo bình hoa là sự kết hợp hoàn hảo của hoa hồng đỏ và cẩm chướng như muốn người tặng truyền tải hết tâm tư tình cảm , thay lời muốn nói tới người nhận. Bình hoa là sự kết nối nhẹ nhàng và ấm áp giữa các mối quan hệ xung quanh ta thật ấm áp và tràn ngập yêu thương.', 15, 2, 1, 0, 1),
(16, 'Purple Love', 2000000, 'img/hoas/purplelove.jpg', 'Hoa hồng tím là một trong loài hoa khá đặc biệt và hiếm thấy do đó ý nghĩa của nó cũng rất đặc biệt. Là bó hoa tình yêu tuyệt vời để bạn thể hiện tình cảm của mình trong những dịp đặc biệt, sẽ là món quà độc đáo và sang trọng trong tình yêu khi bạn muốn thể hiện tình cảm đặc biệt của mình dành cho người mà bạn yêu mến. Màu tím là màu của sự quyến rũ của tình yêu say mê', 16, 2, 4, 0, 1),
(17, 'Ngày Đông', 700000, 'img/hoas/ngaydong.jpg', '\"Điều gì khiến tôi yêu em đến trọn vẹn\". Phải chăng là ánh mắt ngời ngời trong sáng của em mỗi khi nhìn tôi khiến tim tôi xao xuyến đến lạ kì. Nếu lựa chọn tôi sẽ chọn bó hoa hồng trắng để gửi tặng người con gái tôi yêu. Bởi bó hoa thay lời tôi muốn nói, rằng tình yêu tôi dành cho em trong sáng,không lẫn vật chất và vô cùng thiêng liêng. Và bó hoa này sẽ là món quà đặc biệt tôi dành tặng cho em, cô gái nhỏ của tôi.', 17, 2, 8, 0, 0),
(18, 'For You', 650000, 'img/hoas/foryou.jpg', 'Một ngàn lời ca ngọt ngào cũng không bằng một lời nói chân thành xuất phát từ tận trái tim và đôi khi chỉ cần những hành động quan tâm đúng lúc và một bó hoa vào những ngày đặc biệt hoặc gây bất ngờ vào những dịp cuối tuần cũng có thể nói lên trọn tấm chân tình của bạn. Bó hoa được thiết kế cầu kỳ với nhiều màu sắc nhẹ nhàng nhưng vẫn nổi bật sẽ là sự lựa chọn ý nghĩa dành tặng cho những người mà bạn yêu mến họ rất nhiều nhưng không thể hiện được lời nói.', 18, 2, 7, 0, 0),
(19, 'Chiều Tím Nhớ Em', 900000, 'img/hoas/chieutimnhoem.jpg', 'Với tone màu tím - màu của nỗi nhớ. Bó hoa gợi những sợi nhớ, sợi thương cứ như nối dài theo năm tháng. Có đôi lúc vui tươi nhộn nhịp như màu hồng của cẩm chướng, có lúc thăng trầm da diết như màu tím của hoa hồng. Tất cả được kết hợp lại với nhau để tạo nên bó hoa này như nói lên nỗi nhung nhớ da diết đến người yêu.', 19, 2, 4, 0, 1),
(20, 'Mùa Yêu Thương', 600000, 'img/hoas/muayeuthuong.jpg', 'Bó hoa với tone màu nhẹ nhàng, tươi sáng tựa như cô gái với vẻ đẹp thanh tao và duyên dáng làm anh vấn vương, thương thầm bao ngày. Nếu còn ngại ngùng bày tỏ thì hãy tặng bó hoa này cho cô ấy để bày tỏ nỗi lòng thầm kín đến người ấy để thành mùa của yêu thương bạn nhé.', 20, 2, 7, 0, 1),
(21, 'Một Tình Yêu', 200000, 'img/hoas/mottinhyeu.jpg', 'Bó hoa được thiết kế đơn giản với một hoa hồng đỏ rednaomi cùng các loại hoa, lá phụ mang ý nghĩa \"Em là tình yêu duy nhất của anh\". Không cần cầu kỳ với nhiều hoa hay lá phụ, \"Môt tình yêu\" vẫn đủ sức làm lay động bất cứ ai với thiết kế và vẻ đẹp giản đơn của mình', 21, 2, 1, 0, 1),
(22, 'Tình Yêu Mãi Mãi', 1200000, 'img/hoas/tinhyeumaimai.jpg', 'Hộp hoa là sự kết hợp chủ đạo hoa hồng trắng và cẩm chướng xanh cùng tông màu trắng xanh nhẹ tôn lên nét đẹp trong tình yêu,đẹp mà thanh thoát, dịu mát mà lại ngọt lịm. Màu xanh của hy vọng của tình yêu mãi mãi xanh tươi như hộp hoa này', 22, 2, 8, 0, 1),
(23, 'Tươi Xanh', 450000, 'img/hoas/tuoixanh.jpg', 'Mẫu hoa được thiết kế đặc biệt với sự pha trộn giữa tông màu xanh lá tươi mát của thiên nhiên và tông màu xanh dương mạnh mẽ, giỏ hoa mang thông điệp của sự phát triển mạnh mẽ, hoa thuận và tươi mát thích hợp dành tặng các bạn nam vào những dịp đặc biệt như sinh nhật, chúc mừng kỉ niệm và thăng chức.', 23, 3, 2, 0, 0),
(24, 'Ngại Ngùng', 700000, 'img/hoas/ngaingung.jpg', 'Khi yêu ai đó đừng nên im lặng hãy dũng cảm bày tỏ nỗi lòng của mình ra nhé. 1 chút bối rối, 1 chút ngại ngùng khi bạn tỏ tình thì hãy để bó hoa này nói thay cho bạn gửi đến người ấy. Thích hợp dành tặng người yêu, bạn bè, dịp sinh nhật.', 24, 3, 7, 0, 0),
(25, 'Sức Sống Mới', 500000, 'img/hoas/sucsongmoi.jpg', 'Hoa sen là một biểu tưởng của sự thuần khiết và sự thanh tao. Bên cạnh đó, hoa sen còn giúp con người điều hòa khí vượng và tăng cường năng lượng tốt . về mặt phong thủy, hoa sen có thể ngăn chặn những điều xấu, giúp cho gia chủ tránh ưu phiền để tĩnh tâm an hưởng hạnh phúc. Bình hoa sen sẽ là món quà ý nghĩa dành cho những người thân yêu của bạn như ông bà và cha mẹ vào những dịp đặc biệt và những người thích sự nhẹ nhàng, tao nhã.', 25, 3, 4, 0, 1),
(26, 'Ngày Nắng Lên', 1000000, 'img/hoas/ngaynanglen.jpg', 'Sau cơn mưa, những tia nắng ấm áp chiếu rọi lên mọi vật, sưởi ấm tình cảm giữa những con người. Những tháng năm ngày nào ta có nhau, nồng nàn lời nói trao nhau, dịu dàng bàn tay nắm bàn tay, khẽ đến bên bên nhau cùng nhau đắm mình trong những tia nắng ấm áp cũng như là \"trong cuộc đời này, muốn thấy cầu vồng, phải chờ hết cơn mưa, chờ ngày nắng lên\".', 26, 3, 3, 0, 1),
(27, 'Khát Vọng Mới', 1500000, 'img/hoas/khatvongmoi.jpg', 'Cuộc sống ngày càng phát triển nhanh chóng khiến cho ta phải quay cuồng với những bộn bề lo toan vậy liệu rằng khát vọng có là điều xa vời? và hẵn sẽ càng nhiều khó khăn hơn nữa để ta có thể đi đến tận cùng của khát vọng. Do đó, vào những lúc khó khăn như thế thì những món quà tinh thần từ người thân và bạn bè sẽ là liều thuốc hữu hiệu nhất để tạo cảm hứng và nuôi dưỡng khát vọng của bạn và ngược lại, những người bạn yêu thương sẽ có thê động lực để chạn đến ước mơ của họ.', 27, 3, 7, 1, 1),
(28, 'For Mom', 1000000, 'img/hoas/formom.jpg', 'Giỏ hoa này thiết kế đặc biệt để dành tặng cho những người thân thương của bạn với hy vọng tình cảm luôn phát triển tốt đẹp và bền vững. Với màu pastel nhẹ nhàng, trong trẻo luôn thu hút ánh nhìn yêu thích của nhiều người. Thích hợp tặng trong các dịp sinh nhật, kỉ niệm, họp mặt, tri ân....', 28, 3, 4, 0, 0),
(29, 'Hồng Tươi 2', 350000, 'img/hoas/hongtuoi2.jpg', 'Vẫn với tone màu hồng quyến rũ quen thuộc. Bó hoa gồm hồng cánh sen và hoa thủy tiên được đan xen vào nhau tạo nên bó hoa thật xinh xắn và hấp dẫn. Thích hợp tặng cho nữ trong dịp sinh nhật, chúc mừng, kỉ niệm ...', 29, 3, 5, 0, 1),
(30, 'Kỹ Niệm Xưa', 800000, 'img/hoas/kyniemxua.jpg', 'Thời gian trôi qua mau chỉ còn lại những kỷ niệm. Hộp hoa với tone màu vàng - màu của thời gian - chủ đạo như giúp ta nhớ đến những kỉ niệm vui vẻ và hạnh phúc trải qua trong cuộc đời. Thích hợp tặng vào dịp sinh nhật, kỷ niệm....để lưu lại kỉ niệm cùng nhau bạn nhé.', 30, 3, 3, 0, 1),
(31, 'Lời Yêu Đầu', 900000, 'img/hoas/loiyeudau.jpg', 'Khi bạn yêu mến một ai đó thì luôn mong muốn được nói những lời yêu thương với người đó từ trong cõi lòng mình. Nếu bạn vẫn chưa đủ tự tin để nói ra nỗi lòng yêu thương của mình thì hãy để hộp hoa này giúp bạn bày tỏ nhé. Hãy nói ra để cùng nhau được yêu thương trong cuộc đời', 31, 3, 7, 1, 1),
(32, 'Mama Love', 500000, 'img/hoas/mamalove.jpg', 'Mother\'s Day đây là dịp để con cái tỏ lòng biết ơn công sinh thành, nuôi dưỡng của mẹ. Sản phẩm giỏ hoa này được thiết kế cho dịp đặc biệt này dùng để dành tặng cho những người mẹ đáng kính của bạn. Hãy bày tỏ lòng yêu thương và kính yêu đến người mẹ của mình bằng giỏ hoa này bạn nhé.', 32, 3, 5, 0, 0),
(33, 'Sung Túc', 3750000, 'img/hoas/sungtuc.jpg', 'Sung túc vào nhà, phú quý vinh hoa. Chậu lan như lời cầu chúc cho cuộc sống sung túc và đầy đủ. Đây chắc chắn sẽ là món quà tuyệt vời dành tặng cho đối tác, cho người thân yêu', 33, 4, 7, 0, 0),
(34, 'Thịnh Phát', 900000, 'img/hoas/thinhphat.jpg', 'Thịnh vượng và phát đạt là lời chúc kệ hoa này muốn gửi đến. Kệ chúc mừng với tone màu hồng của hoa ly và màu trắng của hoa hồng môn sẽ mang lại sự may mắn, mọi chuyện đều thuận buồm xuông gió trong công việc kinh doanh và phát triển sự nghiệp.', 34, 4, 4, 0, 0),
(35, 'Phồn Vinh', 1500000, 'img/hoas/phonvinh.jpg', 'Kệ hoa chúc mừng \"Phồn vinh\" như chính ý nghĩa của nó giàu có, thịnh vượng,là lời chúc cho sự phát triển tốt đẹp. Tone màu hồng của hoa ly và hoa đồng tiền chắc chắn sẽ là món quà tặng đặc biệt dành cho khai trương, kỷ niệm thành lập công ty, chúc mừng đối tác...', 35, 4, 4, 0, 0),
(36, 'Rạng Ngời', 1000000, 'img/hoas/rangngoi.jpg', 'Tone màu vàng rực rỡ và rạng ngời của hoa ly và hoa hồng cam lửa. Kệ hoa thật rạng ngời như lời chúc cho tương lai trong sự nghiệp của bạn bè, người thân hay dành cho những đối tác lâu năm quan trọng.', 36, 4, 3, 0, 0),
(37, 'Lộc Xuân', 750000, 'img/hoas/locxuan.jpg', 'Lan hồ điệp với tông màu trắng tinh khôi được trồng trong chậu sứ cao cấp và được trang trí thật đẹp đẽ chắc chắn sẽ là món quà đặc biệt để trao tặng cho nhau vào những dịp đặc biệt như mừng khai trương và dịp xuân về... cùng với lời chúc mọi thứ đều sẽ được như ý mình mong muốn - năm mới sẽ thành công trong công việc và hạnh phúc trong cuộc sống', 37, 4, 8, 0, 0),
(38, 'Tình Bạn Hữu', 700000, 'img/hoas/tinhbanhuu.jpg', 'Cuộc đời của mỗi người ai cũng có những mối quan hệ, qua những mối quan hệ đó ta lại có thêm tình bạn đẹp. Tình bạn, định nghĩa đơn giản mà mỗi chúng ta đều biết, chính là sự sẻ chia, gắn bó, đồng cảm, giúp đỡ và tâm sự cùng nhau. Họ đến với nhau bởi cùng quan điểm, lý tưởng và khát vọng sống.', 38, 5, 7, 0, 1),
(39, 'Vững Vàng', 800000, 'img/hoas/vungvang.jpg', 'Với tone màu vàng và hoa hồng cam lửa như nhiệt huyết tuổi trẻ. Luôn bùng cháy và tâm huyết với tất cả những việc đang làm để xây dựng tương lai tươi sáng với niềm tin vững vàng được gửi gắm trong hộp hoa này', 39, 5, 7, 0, 0),
(40, 'Lãng Mạng', 1000000, 'img/hoas/lanmang.jpg', 'Bạn là một người bận rộn, bạn không có nhiều thời gian dành cho người mình yêu thương, bạn cần \"hâm nóng\" lại tình yêu của bạn bằng một đóa Hồng tím lãng mạn, tạo ra một không gian thật sự hạnh phúc và ấm áp.', 40, 6, 4, 2, 0),
(41, 'Đắm Say', 350000, 'img/hoas/damsay.jpg', 'Sắc đỏ nồng nàn và quyến rũ của những bông hồng sasa này chắc chắn sẽ đem đến cho người nhận cảm giác về một tình yêu đầy lãng mạn, ngọt ngào. Còn chần chờ gì nữa mà không cùng \"Đắm say\" thể hiện tình yêu của bạn. Hãy chọn \"Đắm say\" trong những dịp như sinh nhật, chúc mừng, giáng sinh, cầu hôn hay thậm chí chẳng vì một ngày đặc biệt nào cả. Chỉ đơn giản là thể hiện tình yêu mà thôi.', 41, 6, 1, 0, 0),
(42, 'Chuyện Tình Tôi', 800000, 'img/hoas/chuyentinhtoi.jpg', 'Hệt như những rung động thưở ban đầu tinh khôi và đầy mơ mộng. Rồi trải qua biết bao thăng trầm, biết bao xúc cảm của những hờn giận vu vơ, tình yêu ấy ngày càng bền chặt, ngày càng nồng nàn như sắc màu đằm thắm của những đóa hồng tươi. \"Chuyện tình tôi\" thích hợp để bạn dành tặng ai kia, như một cách ôn lại những kỉ niệm lãng mạn của mình.', 42, 6, 7, 0, 1),
(43, 'My Love', 550000, 'img/hoas/mylove.jpg', 'Trái tim bằng hoa hồng được kết trên hộp gỗ mộc mạc, nền lá xanh hi vọng tượng trưng cho tình yêu mà bạn muốn nhắn gửi đến người ấy. Đối với tình yêu, càng đơn giản càng hạnh phúc, giống như hộp hoa trái tim này vậy.', 43, 6, 1, 0, 0),
(44, 'Sự Sống', 500000, 'img/hoas/susong.jpg', 'Hộp hoa được thiết kế với tông màu tương phản đỏ - xanh rực rỡ và quyến rũ, và sẽ mang nhiều may mắn, niềm vui đến cho người nhận. Hộp hoa thích hợp tặng chúc mừng, sinh nhật, v.v…', 44, 6, 1, 0, 0),
(45, 'Cõi Lành', 1900000, 'img/hoas/coilanh.jpg', 'Cuộc đời sinh lão bệnh tử không ai biết trước, do vậy nếu chẳng may người quen, họ hàng, bạn bè qua đời thì hãy dành những lời chia buồn để làm vơi bớt nỗi đau với những người thân trong gia quyến đồng thời tỏ lòng tiếc thương, tiếc nuối và thành kính phân ưu với người đã khuất.', 45, 7, 6, 0, 0),
(46, 'Dĩ Vãng', 1500000, 'img/hoas/divang.jpg', 'Cuộc sống vô thường,khi một người thân ra đi thì nỗi trống vắng của người ở lại dường như không có gì bù đắp được. Thế nhưng, sự ra đi là một sự khởi đầu mới trong thế giới của người đã khuất. Với vòng hoa Dĩ Vãng được thiết kế với tông chủ đạo là màu trắng kêt từ hoa lan và các phụ kiện khác sẽ thay mặt bạn tiễn biệt họ về thế giới mới và chia sẽ cùng gia đình họ.', 46, 7, 8, 2, 0),
(47, 'Vệt Nắng', 2000000, 'img/hoas/vetnang.jpg', 'Chia ly là điều không ai muốn. Nhưng ai có thể chống lại quy luật \"sinh, lão, bệnh, tử\" của tạo hóa. Ai rồi cũng phải ra đi vì thế hãy cứ an lòng và mong cho người ra đi được thanh thản. Kệ hoa chia buồn với tone màu vàng sẽ giúp bạn gửi lời chia buồn sâu sắc đến người nhận.', 47, 7, 3, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id_kh` int(11) NOT NULL,
  `tenkh` varchar(50) NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `ngaysinh` date NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `email` char(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id_kh`, `tenkh`, `gioitinh`, `ngaysinh`, `diachi`, `sdt`, `email`, `username`, `pass`) VALUES
(5, 'Nguyễn Văn A', 'Nữ', '2000-02-19', '1/3/4/6 Nguyễn Cửu Đàm, Tân Sơn Nhì, Tân Phú', '0987654321', 'trinh070472@gmail.com', 'trantien', '123456'),
(6, 'Nguyễn Văn B', 'Nam', '2002-04-15', '123 Lê Trọng Tấn, Tây Thạnh, Tân Phú', '01639713979', 'dat@gmail.com', 'datnguyen', '123456'),
(7, 'Nguyễn Văn C', 'Nam', '2003-10-17', '12 Đinh Tiên Hoàng, Quận 1', '0986731003', 'tientran@gmail.com', 'tien123', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `id_km` int(11) NOT NULL,
  `ten_km` varchar(100) NOT NULL,
  `ngaybd` date NOT NULL,
  `ngaykt` date NOT NULL,
  `phantram` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`id_km`, `ten_km`, `ngaybd`, `ngaykt`, `phantram`) VALUES
(2, 'Quốc tế thiếu nhi', '2018-06-01', '2018-06-01', 10),
(4, 'Đặc biệt', '2018-06-18', '2018-06-20', 20);

-- --------------------------------------------------------

--
-- Table structure for table `loaihoa`
--

CREATE TABLE `loaihoa` (
  `id_loaihoa` int(11) NOT NULL,
  `ten_loaihoa` varchar(100) NOT NULL,
  `nhom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaihoa`
--

INSERT INTO `loaihoa` (`id_loaihoa`, `ten_loaihoa`, `nhom`) VALUES
(1, 'hoa sinh nhật', 1),
(2, 'hoa tình yêu', 1),
(3, 'hoa tặng mẹ', 1),
(4, 'hoa mừng tốt nghiệp', 1),
(5, 'hoa chúc sức khỏe', 1),
(6, 'hoa giáng sinh', 1),
(7, 'hoa chia buồn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mauhoa`
--

CREATE TABLE `mauhoa` (
  `idmauhoa` int(11) NOT NULL,
  `mamau` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mauhoa`
--

INSERT INTO `mauhoa` (`idmauhoa`, `mamau`) VALUES
(1, 'màu đỏ'),
(2, 'màu xanh'),
(3, 'màu vàng'),
(4, 'màu tím'),
(5, 'màu hồng'),
(6, 'màu cam'),
(7, 'màu kết hợp'),
(8, 'màu trắng');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id_nhacc` int(11) NOT NULL,
  `tennhacc` varchar(100) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `sdt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`id_nhacc`, `tennhacc`, `diachi`, `sdt`) VALUES
(1, 'Vườn hồng Anh Tám', 'Long An', '0987654321'),
(2, 'Vườn lan Anh Năm', 'Long An', '0987654312'),
(3, 'Vườn tulip Anh Hai', 'Cần Giờ', '0986754321'),
(4, 'Vườn cúc Anh Sáu', 'Tây Ninh', '0978654312'),
(5, 'Vườn Cẩm Chướng Chị Hai', 'Đà Lạt', '0978174501'),
(6, 'Vườn Đồng Tiền Anh Ba', 'Bến Tre', '0978174500'),
(7, 'Vườn Loa Kèn Chị Năm', 'An Giang', '01639713979'),
(8, 'Vườn Hoa Ly Chị Bảy', 'Hậu Giang', '01657204433'),
(9, 'Vườn Hoa Sen Anh Tư', 'Đồng Tháp', '01239713979'),
(10, 'Vườn Hoa Hướng Dương Anh Tư', 'Vĩnh Long', '0963256515');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `idnhanvien` int(11) NOT NULL,
  `tennhanvien` varchar(45) DEFAULT NULL,
  `thecmnd` varchar(20) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `sdt` varchar(45) DEFAULT NULL,
  `quequan` varchar(45) DEFAULT NULL,
  `chucvu` varchar(45) DEFAULT NULL,
  `thamnien` varchar(45) DEFAULT NULL,
  `email` char(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`idnhanvien`, `tennhanvien`, `thecmnd`, `ngaysinh`, `gioitinh`, `diachi`, `sdt`, `quequan`, `chucvu`, `thamnien`, `email`, `username`, `pass`) VALUES
(1, 'Trần Minh Tiến', '29116585', '1995-11-11', 'Nam', '71 Chế Lan Viên, Tây Thạnh, Hồ Chí Minh', '0986731003', 'Tây Ninh', 'Administrator', '100', 'admin@mail.com', 'admin', 'admin'),
(2, 'Trần Minh Tiến', '29116585', '1998-11-11', 'Nữ', '55 Chế Lan Viên, Tây Thạnh, Hồ Chí Minh', '0986731003', 'Tây Ninh', 'Nhân viên bán hàng', '0', 'mtlhq123@gmail.com', 'trantien123', '123456'),
(3, 'nguyễn quốc đạt', '321544461', '1996-06-02', 'Nam', '102 Nguyễn Quý Anh, Tân Phú', '01639713979', 'Bến Tre', 'Nhân viên bán hàng', '0', 'datdc@gmail.com', 'datdc', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `id_phieunhap` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` float NOT NULL,
  `ngaynhap` datetime NOT NULL,
  `idnhanvien` int(11) NOT NULL,
  `id_hoa` int(10) NOT NULL,
  `id_nhacc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tenloaihoa`
--

CREATE TABLE `tenloaihoa` (
  `id_tenhoa` int(3) NOT NULL,
  `tenhoa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tenloaihoa`
--

INSERT INTO `tenloaihoa` (`id_tenhoa`, `tenhoa`) VALUES
(1, 'cẩm chướng'),
(2, 'hoa cúc'),
(3, 'hoa đồng tiền'),
(4, 'hoa hồng'),
(5, 'hoa loa kèn'),
(6, 'lan hồ điệp'),
(7, 'hoa ly'),
(8, 'hoa sen'),
(9, 'hoa tulip'),
(10, 'hoa hướng dương');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_hoas`
-- (See below for the actual view)
--
CREATE TABLE `v_hoas` (
`id_hoas` int(11)
,`gia_hoas` float(11,0)
,`ten_hoas` varchar(100)
,`anh_hoas` varchar(100)
,`thongtin_hoas` varchar(1000)
,`id_ct_hoas` int(11)
,`id_loaihoa` int(11)
,`idmauhoa` int(11)
,`id_hoa` int(11)
,`soluong` int(11)
,`id_tenhoa` int(3)
,`tenhoa` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `v_hoas`
--
DROP TABLE IF EXISTS `v_hoas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_hoas`  AS  select `c`.`id_hoas` AS `id_hoas`,`c`.`gia_hoas` AS `gia_hoas`,`c`.`ten_hoas` AS `ten_hoas`,`c`.`anh_hoas` AS `anh_hoas`,`c`.`thongtin_hoas` AS `thongtin_hoas`,`c`.`id_ct_hoas` AS `id_ct_hoas`,`c`.`id_loaihoa` AS `id_loaihoa`,`c`.`idmauhoa` AS `idmauhoa`,`v`.`id_hoa` AS `id_hoa`,`v`.`soluong` AS `soluong`,`t`.`id_tenhoa` AS `id_tenhoa`,`t`.`tenhoa` AS `tenhoa` from (((`hoas` `c` join `chitiet_hoas` `v`) join `hoa` `h`) join `tenloaihoa` `t`) where ((`c`.`id_ct_hoas` = `v`.`id_ct_hoas`) and (`h`.`id_tenhoa` = `t`.`id_tenhoa`) and (`v`.`id_hoa` = `h`.`id_hoa`)) group by `c`.`ten_hoas`,`t`.`tenhoa` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_chitiethd`),
  ADD KEY `fk_chitiethoadon_hoadon1_idx` (`id_hoadon`),
  ADD KEY `fk_chitiethoadon_hoa1_idx` (`id_hoa`);

--
-- Indexes for table `chitiet_hoas`
--
ALTER TABLE `chitiet_hoas`
  ADD PRIMARY KEY (`id_ct_hoas`,`id_hoa`),
  ADD KEY `id_hoa` (`id_hoa`),
  ADD KEY `id_ct_hoas` (`id_ct_hoas`);

--
-- Indexes for table `hoa`
--
ALTER TABLE `hoa`
  ADD PRIMARY KEY (`id_hoa`),
  ADD KEY `fk_hoa_nhacungcap1_idx` (`id_nhacc`),
  ADD KEY `idmauhoa` (`idmauhoa`),
  ADD KEY `fk_tenhoa` (`id_tenhoa`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id_hoadon`);

--
-- Indexes for table `hoas`
--
ALTER TABLE `hoas`
  ADD PRIMARY KEY (`id_hoas`),
  ADD KEY `id_ct_hoas` (`id_ct_hoas`),
  ADD KEY `fk_mauhoa` (`idmauhoa`),
  ADD KEY `fk_loaihoa` (`id_loaihoa`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id_kh`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`id_km`);

--
-- Indexes for table `loaihoa`
--
ALTER TABLE `loaihoa`
  ADD PRIMARY KEY (`id_loaihoa`);

--
-- Indexes for table `mauhoa`
--
ALTER TABLE `mauhoa`
  ADD PRIMARY KEY (`idmauhoa`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id_nhacc`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`idnhanvien`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`id_phieunhap`),
  ADD KEY `fk_phieunhap_nhanvien1_idx` (`idnhanvien`),
  ADD KEY `fk_phieunhap_loaihoa1_idx` (`id_hoa`),
  ADD KEY `fk_phieunhap_nhacungcap1_idx` (`id_nhacc`);

--
-- Indexes for table `tenloaihoa`
--
ALTER TABLE `tenloaihoa`
  ADD PRIMARY KEY (`id_tenhoa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_chitiethd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `chitiet_hoas`
--
ALTER TABLE `chitiet_hoas`
  MODIFY `id_ct_hoas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id_hoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `hoas`
--
ALTER TABLE `hoas`
  MODIFY `id_hoas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id_kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `id_km` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loaihoa`
--
ALTER TABLE `loaihoa`
  MODIFY `id_loaihoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mauhoa`
--
ALTER TABLE `mauhoa`
  MODIFY `idmauhoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id_nhacc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `idnhanvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tenloaihoa`
--
ALTER TABLE `tenloaihoa`
  MODIFY `id_tenhoa` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `fk_id_hd` FOREIGN KEY (`id_hoadon`) REFERENCES `hoadon` (`id_hoadon`),
  ADD CONSTRAINT `fk_id_hoa` FOREIGN KEY (`id_hoa`) REFERENCES `hoas` (`id_hoas`);

--
-- Constraints for table `chitiet_hoas`
--
ALTER TABLE `chitiet_hoas`
  ADD CONSTRAINT `fk_hoa` FOREIGN KEY (`id_hoa`) REFERENCES `hoa` (`id_hoa`),
  ADD CONSTRAINT `fk_hoas` FOREIGN KEY (`id_ct_hoas`) REFERENCES `hoas` (`id_ct_hoas`);

--
-- Constraints for table `hoa`
--
ALTER TABLE `hoa`
  ADD CONSTRAINT `fk_tenhoa` FOREIGN KEY (`id_tenhoa`) REFERENCES `tenloaihoa` (`id_tenhoa`),
  ADD CONSTRAINT `hoa_ibfk_1` FOREIGN KEY (`idmauhoa`) REFERENCES `mauhoa` (`idmauhoa`),
  ADD CONSTRAINT `hoa_ibfk_2` FOREIGN KEY (`id_nhacc`) REFERENCES `nhacungcap` (`id_nhacc`);

--
-- Constraints for table `hoas`
--
ALTER TABLE `hoas`
  ADD CONSTRAINT `fk_loaihoa` FOREIGN KEY (`id_loaihoa`) REFERENCES `loaihoa` (`id_loaihoa`),
  ADD CONSTRAINT `fk_mauhoa` FOREIGN KEY (`idmauhoa`) REFERENCES `mauhoa` (`idmauhoa`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `fk_phieunhap_loaihoa1` FOREIGN KEY (`id_hoa`) REFERENCES `loaihoa` (`id_loaihoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`idnhanvien`) REFERENCES `nhanvien` (`idnhanvien`),
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`id_nhacc`) REFERENCES `nhacungcap` (`id_nhacc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
