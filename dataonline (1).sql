-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 31, 2022 lúc 03:37 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dataonline`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `iddonhang` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `giasp` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`iddonhang`, `idsp`, `soluong`, `giasp`) VALUES
(25, 33, 1, '21990000'),
(25, 14, 1, '36500000'),
(26, 16, 1, '27990000'),
(27, 16, 1, '27990000'),
(28, 33, 1, '21990000'),
(29, 33, 1, '21990000'),
(29, 14, 1, '36500000'),
(30, 33, 1, '21990000'),
(31, 33, 1, '21990000'),
(31, 14, 1, '36500000'),
(33, 33, 1, '21990000'),
(2, 33, 1, '21990000'),
(3, 33, 1, '21990000'),
(4, 33, 1, '21990000'),
(5, 33, 1, '21990000'),
(6, 33, 1, '21990000'),
(7, 14, 1, '36500000'),
(8, 33, 1, '21990000'),
(9, 14, 1, '36500000'),
(10, 14, 1, '36500000'),
(11, 33, 1, '21990000'),
(12, 33, 1, '21990000'),
(13, 1, 1, '38990000'),
(14, 15, 1, '12690000'),
(15, 33, 1, '21990000'),
(18, 33, 1, '21990000'),
(19, 33, 1, '21990000'),
(20, 33, 1, '21990000'),
(21, 33, 1, '21990000'),
(22, 33, 1, '21990000'),
(22, 14, 1, '36500000'),
(23, 33, 1, '21990000'),
(24, 33, 1, '21990000'),
(25, 33, 1, '21990000'),
(26, 16, 1, '27990000'),
(27, 33, 1, '21990000'),
(28, 33, 1, '21990000'),
(29, 15, 1, '12690000'),
(30, 33, 1, '21990000'),
(31, 2, 1, '21390000'),
(32, 33, 1, '21990000'),
(33, 3, 1, '21490000'),
(34, 14, 1, '36500000'),
(35, 16, 1, '27990000'),
(36, 44, 2, '29990000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucnang`
--

CREATE TABLE `chucnang` (
  `id` int(11) NOT NULL,
  `tenchucnang` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chucnang`
--

INSERT INTO `chucnang` (`id`, `tenchucnang`, `hinhanh`) VALUES
(1, 'Home', 'https://cdn3.vectorstock.com/i/1000x1000/60/47/home-icon-white-silhouette-on-blue-round-vector-20326047.jpg'),
(2, 'Điện Thoại', 'http://banbuonlinhphukiendienthoai.com/wp-content/uploads/2018/03/cropped-iPhone-icon.png'),
(3, 'LapTop', 'https://thumbs.dreamstime.com/b/laptop-icon-laptop-icon-white-background-133509399.jpg'),
(4, 'Lịch Sử Mua Hàng', 'https://banner2.cleanpng.com/20200910/gvb/transparent-delivery-icon-shopping-bag-icon-sent-icon-5f5ac0b6d38930.9216002315997830948665.jpg'),
(5, 'Quản Lí Sản Phẩm', 'https://cdn-icons-png.flaticon.com/512/1802/1802979.png'),
(6, 'Liên Hệ', 'https://voip24h.vn/wp-content/uploads/2019/03/phone-png-mb-phone-icon-256.png'),
(7, 'Thông Tin', 'https://www.maxpixel.net/static/photo/1x/Information-Blue-Icon-Circle-160885.png'),
(8, 'Đăng Xuất', 'https://w7.pngwing.com/pngs/49/357/png-transparent-logging-out-log-off-logout-thumbnail.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `iduser`, `email`, `diachi`, `soluong`, `tongtien`, `sodienthoai`) VALUES
(1, 2, 'nguyenphuongnam@gmail.com', 'bacgiang', 5, '3500000', '0969875163'),
(2, 2, 'nguyenphuongnam@gmail.com', 'bacgiang', 5, '3500000', '0969875163'),
(3, 9, 'nguyenphuongnam.contacts@gmail.com', 'ha noi', 1, '21990000', '096969696'),
(4, 9, 'nguyenphuongnam.contacts@gmail.com', 'hanoi', 1, '21990000', '096969696'),
(5, 9, 'nguyenphuongnam.contacts@gmail.com', 'hanoi', 1, '21990000', '096969696'),
(6, 9, 'nguyenphuongnam.contacts@gmail.com', 'hanoi', 1, '21990000', '096969696'),
(7, 9, 'nguyenphuongnam.contacts@gmail.com', 'bac kan', 1, '36500000', '096969696'),
(8, 2, 'nguyenphuongnam@gmail.com', 'bacgiang', 5, '3500000', '0969875163'),
(9, 9, 'nguyenphuongnam.contacts@gmail.com', 'bac giang', 1, '36500000', '096969696'),
(10, 9, 'nguyenphuongnam.contacts@gmail.com', 'bac giang', 1, '36500000', '096969696'),
(11, 2, 'nguyenphuongnam@gmail.com', 'bacgiang', 5, '3500000', '0969875163'),
(12, 2, 'nguyenphuongnam@gmail.com', 'bacgiang', 5, '3500000', '0969875163'),
(13, 9, 'nguyenphuongnam.contacts@gmail.com', 'hanoi', 1, '38990000', '096969696'),
(14, 9, 'nguyenphuongnam.contacts@gmail.com', 'hanoi', 1, '12690000', '096969696'),
(15, 9, 'nguyenphuongnam.contacts@gmail.com', 'nam', 1, '21990000', '096969696'),
(16, 2, 'nguyenphuongnam@gmail.com', 'bacgiang', 5, '3500000', '0969875163'),
(17, 9, 'nguyenphuongnam.contacts@gmail.com', 'sadasd', 2, '25380000', '096969696'),
(18, 2, 'nguyenphuongnam@gmail.com', 'bacgiang', 5, '3500000', '0969875163'),
(19, 2, 'nguyenphuongnamtest@gmail.com', 'bacgiang', 5, '3500000', '0969875163'),
(20, 2, 'nguyenphuongnamtest@gmail.com', 'bacgiang', 5, '3500000', '0969875163'),
(21, 9, 'nguyenphuongnam.contacts@gmail.com', 'test', 1, '21990000', '096969696'),
(22, 9, 'nguyenphuongnam.contacts@gmail.com', 'test2', 2, '58490000', '096969696'),
(23, 2, 'nguyenphuongnamtest@gmail.com', 'bacgiang', 5, '3500000', '0969875163'),
(24, 9, 'nguyenphuongnam.contacts@gmail.com', 'koko', 1, '21990000', '096969696'),
(25, 9, 'nguyenphuongnam.contacts@gmail.com', 'hanoi', 1, '21990000', '096969696'),
(26, 9, 'nguyenphuongnam.contacts@gmail.com', 'thai nguyen', 1, '27990000', '096969696'),
(27, 9, 'nguyenphuongnam.contacts@gmail.com', 'hiep hoa', 1, '21990000', '096969696'),
(28, 9, 'nguyenphuongnam.contacts@gmail.com', 'hello', 1, '21990000', '096969696'),
(29, 9, 'nguyenphuongnam.contacts@gmail.com', 'bac giang', 1, '12690000', '096969696'),
(30, 9, 'nguyenphuongnam.contacts@gmail.com', 'tan thinh', 1, '21990000', '096969696'),
(31, 9, 'nguyenphuongnam.contacts@gmail.com', 'bac ninh', 1, '21390000', '096969696'),
(32, 9, 'nguyenphuongnam.contacts@gmail.com', 'quang ngai', 1, '21990000', '096969696'),
(33, 9, 'nguyenphuongnam.contacts@gmail.com', 'hanoig', 1, '21490000', '096969696'),
(34, 9, 'nguyenphuongnam.contacts@gmail.com', 'ha long', 1, '36500000', '096969696'),
(35, 9, 'nguyenphuongnam.contacts@gmail.com', 'ha noi', 1, '27990000', '096969696'),
(36, 9, 'nguyenphuongnam.contacts@gmail.com', 'ha long', 2, '59980000', '096969696');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `hinhanh`) VALUES
(1, 'Home', 'https://cdn3.vectorstock.com/i/1000x1000/60/47/home-icon-white-silhouette-on-blue-round-vector-20326047.jpg'),
(2, 'Điện Thoại', 'http://banbuonlinhphukiendienthoai.com/wp-content/uploads/2018/03/cropped-iPhone-icon.png'),
(3, 'LapTop', 'https://thumbs.dreamstime.com/b/laptop-icon-laptop-icon-white-background-133509399.jpg'),
(4, 'Lịch Sử Mua Hàng', 'https://banner2.cleanpng.com/20200910/gvb/transparent-delivery-icon-shopping-bag-icon-sent-icon-5f5ac0b6d38930.9216002315997830948665.jpg'),
(5, 'Liên Hệ', 'https://voip24h.vn/wp-content/uploads/2019/03/phone-png-mb-phone-icon-256.png'),
(6, 'Thông Tin', 'https://www.maxpixel.net/static/photo/1x/Information-Blue-Icon-Circle-160885.png'),
(7, 'Đăng Xuất', 'https://w7.pngwing.com/pngs/49/357/png-transparent-logging-out-log-off-logout-thumbnail.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphammoi`
--

CREATE TABLE `sanphammoi` (
  `id` int(11) NOT NULL,
  `tensp` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `giasp` text COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `loaiSP` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphammoi`
--

INSERT INTO `sanphammoi` (`id`, `tensp`, `hinhanh`, `giasp`, `mota`, `loaiSP`) VALUES
(1, 'Samsung Galaxy Z Fold3 5G', 'https://image.cellphones.com.vn/358x/media/catalog/product/g/a/galaxy-z-fold3-kv_5g__1p_cmyk.jpg', '38990000', 'Thông số kỹ thuật\r\nKích thước màn hình: 7.6 inches\r\nCông nghệ màn hình: Dynamic AMOLED\r\nCamera sau: Camera góc rộng: 12 MP, f/1.8, 26mm, Dual Pixel PDAF, OIS\r\nCamera tele: 12 MP, f/2.4, 52mm, PDAF, OIS, 2x Zoom quang học\r\nCamera góc siêu rộng: 12 MP, f/2.2\r\nCamera màn hình phụ: 10MP, f/2.2\r\nCamera trước: Camera ẩn dưới màn hình: 4MP, f/1.8\r\nChipset: Snapdragon 888 5G (5 nm)\r\nDung lượng RAM: 12 GB\r\nBộ nhớ trong: 256 GB\r\nPin: Li-Po 4400 mAh\r\nThẻ SIM	2 SIM (nano‑SIM và eSIM)\r\nHệ điều hành: Android 11\r\nLoại CPU: 1 nhân 2.84 GHz, 3 nhân 2.42 GHz & 4 nhân 1.8 GHz\r\nKích thước: Khi gập:158.2 x 67.1 x 16mm\r\nKhi mở: 158.2 x 128.1 x 6.4mm\r\nTrọng lượng: 271g\r\nBluetooth: v 5.0', 1),
(2, 'iPhone 13 128GB | Chính hãng VN/A', 'https://image.cellphones.com.vn/358x/media/catalog/product/i/p/ip13-pro_2.jpg', '21390000', 'Thông số kỹ thuật\r\nKích thước màn hình: 6.1 inches\r\nCông nghệ màn hình: OLED\r\nCamera sau: Camera góc rộng: 12MP, f/1.6\r\nCamera góc siêu rộng: 12MP, ƒ/2.4\r\nCamera trước: 12MP, f/2.2\r\nChipset: Apple A15\r\nDung lượng RAM: 4 GB\r\nBộ nhớ trong: 128 GB\r\nPin: Khoảng 3.200mAh\r\nHệ điều hành: iOS 15\r\nĐộ phân giải màn hình: 2532 x 1170 pixels\r\nKích thước: 146,7 x 71,5 x 7,65mm\r\nTrọng lượng: 174g\r\nBluetooth: v5.0', 1),
(3, 'Laptop Gaming Acer Nitro 5 AN515 45 R6EV', 'https://image.cellphones.com.vn/358x/media/catalog/product/1/_/1_69_23.jpg', '21490000', 'Thông số kỹ thuật\r\nLoại CPU: AMD Ryzen 5 5600H, 6 lõi, 12 luồng, 3.30 GHz (tối đa 4.20 GHz)\r\nLoại card đồ họa: GeForce GTX 1650 4GB\r\nDung lượng RAM: 8GB\r\nỔ cứng: 512 GB SSD M2. PCIe\r\nKích thước màn hình: 15.6 inches\r\nĐộ phân giải màn hình: 1920 x 1080 pixels (FullHD)\r\nCổng giao tiếp: 1x Type-C\r\n3x USB 3.0\r\n1x HDMI\r\n1x DC-in jack\r\n1x Jack 3.5 mm\r\n1x LAN\r\nHệ điều hành: Windows 11 Home 64 bit\r\nPin: 4 Cell, 57.5 W\r\nKích thước: 363.4 x 255 x 23.9 mm (WxDxH)\r\nTrọng lượng: 2.2 kg\r\nCông nghệ màn hình: IPS LCD LED Backlit, True Tone\r\nBluetooth: v5.0', 2),
(4, 'Macbook Pro 16 inch 2021 Chính hãng', 'https://image.cellphones.com.vn/358x/media/catalog/product/m/a/macbook-pro-2021-007.jpg', '64500000', 'Thông số kỹ thuật\r\nLoại CPU: Apple M1 Pro\r\nDung lượng RAM: 16GB\r\nỔ cứng: 512GB SSD\r\nKích thước màn hình: 16.2 inches\r\nĐộ phân giải màn hình: 3456 x 2234 pixels\r\nCổng giao tiếp: 1x Headphone jack\r\n1x MagSafe port\r\n1x HDMI\r\n1x Thunderbolt 4\r\n1x SDXC\r\nHệ điều hành: MacOS\r\nKích thước: 1.68 x 35.57 x 24.81 cm\r\nTrọng lượng: 2.1kg\r\nCông nghệ màn hình: 120Hz, Liquid Retina, Mini LED, XDR\r\nBluetooth	v5.0', 2),
(5, 'ASUS ROG Phone 5S 512GB', 'https://image.cellphones.com.vn/358x/media/catalog/product/h/7/h732_1.png', '21990000', 'Thông số kỹ thuật\r\nKích thước màn hình: 6.78 inches\r\nCông nghệ màn hình: MOLED\r\nCamera sau: Camera góc rộng: 64 MP\r\nCamera góc siêu rộng: 13 MP,\r\nCamera macro: 5 MP\r\nCamera trước: 24 MP\r\nChipset: Snapdragon 888 Plus 8 nhân\r\nDung lượng RAM: 16 GB\r\nBộ nhớ trong: 512 GB\r\nPin: 6000 mAh\r\nThẻ SIM: 2 SIM (Nano-SIM)\r\nHệ điều hành: Android 11, ROG UI\r\nĐộ phân giải màn hình: 1080 x 2448 pixels (FullHD+)\r\nLoại CPU: 1 nhân 2.99 GHz, 3 nhân 2.42 GHz & 4 nhân 1.8 GHz\r\nKích thước: 172.8 x 77.3 x 9.9 mm\r\nTrọng lượng: 238 g\r\nBluetooth: 5.2, A2DP, LE, aptX HD, aptX Adaptive', 1),
(6, 'Apple MacBook Air M1 16GB 512GB 2020', 'https://image.cellphones.com.vn/358x/media/catalog/product/m/a/macbook-air-silver-select-201810_2_1.jpg', '36500000', 'Thông số kỹ thuật\nLoại CPU: 8 nhân với 4 nhân hiệu năng cao và 4 nhân tiết kiệm điện\nLoại card đồ họa: GPU 8 nhân, 16 nhân Neural Engine\nDung lượng RAM: 16GB\nỔ cứng:	512GB SSD\nKích thước màn hình: 13.3 inches\nĐộ phân giải màn hình: 2560 x 1600 pixels (2K)\nCổng giao tiếp: 2 cổng Thunderbolt / USB 4\nHệ điều hành: macOS Big Sur\nPin: 49.9-watt-hour lithium-polymer, củ sạc công suất 30W\nKích thước: 1.61 cm x 30.41 cm x 21.24 cm\nTrọng lượng: 1.29 kg\nCông nghệ màn hình: Độ sáng 400 nits\nHỗ trợ dải màu P3 True-Tone\nBluetooth: Bluetooth 5.0', 2),
(7, 'Xiaomi 11T Pro', 'https://image.cellphones.com.vn/358x/media/catalog/product/x/i/xiaomi-mi-11t-pro-price-in-usa-500x500.jpg', '12690000', 'Thông số kỹ thuật\r\nKích thước màn hình: 6.67 inches\r\nCông nghệ màn hình: AMOLED\r\nCamera sau: Camera góc rộng: 108 MP, f/1.75\r\nCamera góc siêu rộng: 8 MP, 2.2\r\nCamera cận cảnh: 5 MP, f/2.4 AF (3cm-7cm)\r\nCamera trước: 16 MP, f/2.45\r\nChipset: Qualcomm Snapdragon 888 5nm\r\nDung lượng RAM:	12 GB\r\nBộ nhớ trong: 256 GB\r\nPin: 5000mAh\r\nThẻ SIM:2 SIM (Nano-SIM)\r\nHệ điều hành: Android 11, MIUI 12.5\r\nĐộ phân giải màn hình: 1080 x 2400 pixels (FullHD+)\r\nLoại CPU: Kryo 680 CPU, up to 2.84GHz\r\nKích thước: 164.3 x 74.6 x 8.8 mm\r\nTrọng lượng: 204g\r\nBluetooth: 5.2', 1),
(8, 'Laptop Asus Tuf Gaming FA707RC HX130X', 'https://image.cellphones.com.vn/358x/media/catalog/product/a/s/asus-tuf-gaming-a17-fa707rc-hx130w-r7-6800h_1.jpg', '27990000', 'Thông số kỹ thuật\r\nLoại CPU: AMD Ryzen 7 6800H 3.2GHz up to 4.7GHz 16MB\r\nLoại card đồ họa: NVIDIA GeForce RTX 3050 4GB GDDR6\r\nDung lượng RAM: 8GB\r\nSố khe ram: 2 Khe\r\nỔ cứng: 512GB SSD\r\nKích thước màn hình: 17.3 inches\r\nĐộ phân giải màn hình: 1920 x 1080 pixels (FullHD)\r\nCổng giao tiếp	1x USB 3.2 Gen 1 Type-C\r\n1x USB 3.2 Gen 1 Type-C\r\n2x USB 3.2 Gen 1 Type-A\r\n1x RJ45 LAN port\r\n1x 3.5mm Combo Audio Jack\r\n1x HDMI 2.0b\r\nHệ điều hành: Windows 11 Home\r\nPin: 4 Cell 56WHr\r\nKích thước: 39.4 x 26.4 x 2.29 ~ 2.54 cm\r\nTrọng lượng: 2.6 kg\r\nCông nghệ màn hình: anti-glare 144Hz\r\nBluetooth: v5.2', 2),
(9, 'Samsung Galaxy Z Fold3 5G', 'https://image.cellphones.com.vn/358x/media/catalog/product/g/a/galaxy-z-fold3-kv_5g__1p_cmyk.jpg', '38990000', 'Thông số kỹ thuật\r\nKích thước màn hình: 7.6 inches\r\nCông nghệ màn hình: Dynamic AMOLED\r\nCamera sau: Camera góc rộng: 12 MP, f/1.8, 26mm, Dual Pixel PDAF, OIS\r\nCamera tele: 12 MP, f/2.4, 52mm, PDAF, OIS, 2x Zoom quang học\r\nCamera góc siêu rộng: 12 MP, f/2.2\r\nCamera màn hình phụ: 10MP, f/2.2\r\nCamera trước: Camera ẩn dưới màn hình: 4MP, f/1.8\r\nChipset: Snapdragon 888 5G (5 nm)\r\nDung lượng RAM: 12 GB\r\nBộ nhớ trong: 256 GB\r\nPin: Li-Po 4400 mAh\r\nThẻ SIM	2 SIM (nano‑SIM và eSIM)\r\nHệ điều hành: Android 11\r\nLoại CPU: 1 nhân 2.84 GHz, 3 nhân 2.42 GHz & 4 nhân 1.8 GHz\r\nKích thước: Khi gập:158.2 x 67.1 x 16mm\r\nKhi mở: 158.2 x 128.1 x 6.4mm\r\nTrọng lượng: 271g\r\nBluetooth: v 5.0', 1),
(10, 'iPhone 13 128GB | Chính hãng VN/A', 'https://image.cellphones.com.vn/358x/media/catalog/product/i/p/ip13-pro_2.jpg', '21390000', 'Thông số kỹ thuật\r\nKích thước màn hình: 6.1 inches\r\nCông nghệ màn hình: OLED\r\nCamera sau: Camera góc rộng: 12MP, f/1.6\r\nCamera góc siêu rộng: 12MP, ƒ/2.4\r\nCamera trước: 12MP, f/2.2\r\nChipset: Apple A15\r\nDung lượng RAM: 4 GB\r\nBộ nhớ trong: 128 GB\r\nPin: Khoảng 3.200mAh\r\nHệ điều hành: iOS 15\r\nĐộ phân giải màn hình: 2532 x 1170 pixels\r\nKích thước: 146,7 x 71,5 x 7,65mm\r\nTrọng lượng: 174g\r\nBluetooth: v5.0', 1),
(12, 'Macbook Pro 16 inch 2021 Chính hãng', 'https://image.cellphones.com.vn/358x/media/catalog/product/m/a/macbook-pro-2021-007.jpg', '64500000', 'Thông số kỹ thuật\r\nLoại CPU: Apple M1 Pro\r\nDung lượng RAM: 16GB\r\nỔ cứng: 512GB SSD\r\nKích thước màn hình: 16.2 inches\r\nĐộ phân giải màn hình: 3456 x 2234 pixels\r\nCổng giao tiếp: 1x Headphone jack\r\n1x MagSafe port\r\n1x HDMI\r\n1x Thunderbolt 4\r\n1x SDXC\r\nHệ điều hành: MacOS\r\nKích thước: 1.68 x 35.57 x 24.81 cm\r\nTrọng lượng: 2.1kg\r\nCông nghệ màn hình: 120Hz, Liquid Retina, Mini LED, XDR\r\nBluetooth	v5.0', 2),
(13, 'ASUS ROG Phone 5S 512GB', 'https://image.cellphones.com.vn/358x/media/catalog/product/h/7/h732_1.png', '21990000', 'Thông số kỹ thuật\r\nKích thước màn hình: 6.78 inches\r\nCông nghệ màn hình: MOLED\r\nCamera sau: Camera góc rộng: 64 MP\r\nCamera góc siêu rộng: 13 MP,\r\nCamera macro: 5 MP\r\nCamera trước: 24 MP\r\nChipset: Snapdragon 888 Plus 8 nhân\r\nDung lượng RAM: 16 GB\r\nBộ nhớ trong: 512 GB\r\nPin: 6000 mAh\r\nThẻ SIM: 2 SIM (Nano-SIM)\r\nHệ điều hành: Android 11, ROG UI\r\nĐộ phân giải màn hình: 1080 x 2448 pixels (FullHD+)\r\nLoại CPU: 1 nhân 2.99 GHz, 3 nhân 2.42 GHz & 4 nhân 1.8 GHz\r\nKích thước: 172.8 x 77.3 x 9.9 mm\r\nTrọng lượng: 238 g\r\nBluetooth: 5.2, A2DP, LE, aptX HD, aptX Adaptive', 1),
(14, 'Samsung Galaxy S22 Ultra (8GB - 128GB)', 'https://image.cellphones.com.vn/358x/media/catalog/product/s/m/sm-s908_galaxys22ultra_front_burgundy_211119_3.jpg', '28990000', 'Kích thước màn hình: 6.8 inches \r\nCông nghệ màn hình: Dynamic AMOLED 2X Camera sau: 108 MP, f/1.8 góc rộng 10 MP, f/4.9 10 MP, f/2.4 12 MP, f/2.2 góc siêu rộng \r\nCamera trước: 40 MP, f/2.2 \r\nChipset: Qualcomm Snapdragon 8 Gen 1 (4 nm) \r\nDung lượng RAM: 8 GB Bộ nhớ trong	128 GB \r\nPin: Li-Ion 5000 mAh \r\nThẻ SIM: 2 Nano SIM hoặc 1 Nano 1 eSIM\r\nHệ điều hành: Android 12, One UI 4.1 Độ phân giải màn hình: 1440 x 3088 pixels (QHD ) \r\nLoại CPU: Octa-core (1x3.00 GHz Cortex-X2 ', 1),
(15, 'Xiaomi 11T Pro', 'https://image.cellphones.com.vn/358x/media/catalog/product/x/i/xiaomi-mi-11t-pro-price-in-usa-500x500.jpg', '12690000', 'Thông số kỹ thuật\r\nKích thước màn hình: 6.67 inches\r\nCông nghệ màn hình: AMOLED\r\nCamera sau: Camera góc rộng: 108 MP, f/1.75\r\nCamera góc siêu rộng: 8 MP, 2.2\r\nCamera cận cảnh: 5 MP, f/2.4 AF (3cm-7cm)\r\nCamera trước: 16 MP, f/2.45\r\nChipset: Qualcomm Snapdragon 888 5nm\r\nDung lượng RAM:	12 GB\r\nBộ nhớ trong: 256 GB\r\nPin: 5000mAh\r\nThẻ SIM:2 SIM (Nano-SIM)\r\nHệ điều hành: Android 11, MIUI 12.5\r\nĐộ phân giải màn hình: 1080 x 2400 pixels (FullHD+)\r\nLoại CPU: Kryo 680 CPU, up to 2.84GHz\r\nKích thước: 164.3 x 74.6 x 8.8 mm\r\nTrọng lượng: 204g\r\nBluetooth: 5.2', 1),
(16, 'Laptop Asus Tuf Gaming FA707RC HX130X', 'https://image.cellphones.com.vn/358x/media/catalog/product/l/a/laptop-asus-gaming-tuf-fx506hcb-hn144w1-1_1.jpg', '22390000', 'Loại CPU: Intel® Core™ i5-11400H Loại card đồ họa	NVIDIA® GeForce RTX™ 3050 Dung lượng RAM	8GB Số khe ram	2 khe tối đa 32GB Ổ cứng	512GB M.2 NVMe™ PCIe® 3.0 SSD Kích thước màn hình	15.6 inches Độ phân giải màn hình	1920 x 1080 pixels (FullHD) Cổng giao tiếp	1x RJ45 LAN port 3x USB 3.2 Gen 1 Type-A 1x USB 3.2 Gen 2 Type-C support DisplayPort 1x 3.5mm Combo Audio Jack 1x HDMI 2.0b Hệ điều hành	Windows 11 Home SL Pin	48WHrs, 3S1P, 3-cell Li-ion Kích thước	35.9 x 25.6 x 2.28 ~ 2.45 cm Trọng lượng	2.30 Kg Công nghệ màn hình	Màn hình chống loá, tần số quét 144Hz, Adaptive-Sync Bluetooth	v5.2', 2),
(17, 'Samsung Galaxy S22 Ultra (8GB - 128GB)', 'https://image.cellphones.com.vn/358x/media/catalog/product/s/m/sm-s908_galaxys22ultra_front_burgundy_211119_3.jpg', '28990000', 'Kích thước màn hình: 6.8 inches \nCông nghệ màn hình: Dynamic AMOLED 2X Camera sau: 108 MP, f/1.8 góc rộng 10 MP, f/4.9 10 MP, f/2.4 12 MP, f/2.2 góc siêu rộng \nCamera trước: 40 MP, f/2.2 \nChipset: Qualcomm Snapdragon 8 Gen 1 (4 nm) \nDung lượng RAM: 8 GB Bộ nhớ trong	128 GB \nPin: Li-Ion 5000 mAh \nThẻ SIM: 2 Nano SIM hoặc 1 Nano 1 eSIM\nHệ điều hành: Android 12, One UI 4.1 Độ phân giải màn hình: 1440 x 3088 pixels (QHD ) \nLoại CPU: Octa-core (1x3.00 GHz Cortex-X2 ', 1),
(33, 'ASUS ROG Phone 5S 512GB', 'https://image.cellphones.com.vn/358x/media/catalog/product/h/7/h732_1.png', '21990000', 'Thông số kỹ thuật\r\nKích thước màn hình: 6.78 inches\r\nCông nghệ màn hình: MOLED\r\nCamera sau: Camera góc rộng: 64 MP\r\nCamera góc siêu rộng: 13 MP,\r\nCamera macro: 5 MP\r\nCamera trước: 24 MP\r\nChipset: Snapdragon 888 Plus 8 nhân\r\nDung lượng RAM: 16 GB\r\nBộ nhớ trong: 512 GB\r\nPin: 6000 mAh\r\nThẻ SIM: 2 SIM (Nano-SIM)\r\nHệ điều hành: Android 11, ROG UI\r\nĐộ phân giải màn hình: 1080 x 2448 pixels (FullHD+)\r\nLoại CPU: 1 nhân 2.99 GHz, 3 nhân 2.42 GHz & 4 nhân 1.8 GHz\r\nKích thước: 172.8 x 77.3 x 9.9 mm\r\nTrọng lượng: 238 g\r\nBluetooth: 5.2, A2DP, LE, aptX HD, aptX Adaptive', 1),
(44, 'Samsung Galaxy S22 Ultra (8GB - 128GB)', 'https://image.cellphones.com.vn/358x/media/catalog/product/s/m/sm-s908_galaxys22ultra_front_burgundy_211119_3.jpg', '29990000', 'Kích thước màn hình: 6.8 inches  Công nghệ màn hình: Dynamic AMOLED 2X Camera sau: 108 MP, f/1.8 góc rộng 10 MP, f/4.9 10 MP, f/2.4 12 MP, f/2.2 góc siêu rộng  Camera trước: 40 MP, f/2.2  Chipset: Qualcomm Snapdragon 8 Gen 1 (4 nm)  Dung lượng RAM: 8 GB Bộ nhớ trong	128 GB  Pin: Li-Ion 5000 mAh  Thẻ SIM: 2 Nano SIM hoặc 1 Nano 1 eSIM Hệ điều hành: Android 12, One UI 4.1 Độ phân giải màn hình: 1440 x 3088 pixels (QHD )  Loại CPU: Octa-core (1x3.00 GHz Cortex-X2', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `pass`, `username`, `phone`) VALUES
(4, 'nguyenphuongnam.contact@gmail.com', 'phuongnam201', 'stepbystep', '0969875163'),
(8, 'nguyenphuongnamictu201@gmail.com', '123456', 'nampee', '069669696'),
(9, 'nguyenphuongnam.contacts@gmail.com', '123456', 'hello', '096969696'),
(10, 'nguyenphuongnam.contacst@gmail.com', '123456', '123456_nam', '099999999');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chucnang`
--
ALTER TABLE `chucnang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanphammoi`
--
ALTER TABLE `sanphammoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chucnang`
--
ALTER TABLE `chucnang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sanphammoi`
--
ALTER TABLE `sanphammoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
