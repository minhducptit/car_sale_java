-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.6-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table carsale.car
CREATE TABLE IF NOT EXISTS `car` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `des` varchar(500) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table carsale.car: ~9 rows (approximately)
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` (`car_id`, `car_name`, `category`, `des`, `price`) VALUES
	(1, 'Vios 1.5E (MT)', 'SEDAN, Toyota Vios', 'Toyota Innova Vios 1.5E Xe Đủ Màu, Giao Luôn   - Ưu đãi cực lớn cho các dòng xe Vios', 531000000),
	(2, 'Vios 1.5E (CVT)', 'SEDAN, Toyota Vios', 'Toyota Innova Vios 1.5E CVT Xe Đủ Màu, Giao Luôn   - Ưu đãi cực lớn cho các dòng xe Vios', 569000000),
	(3, 'Vios G(CVT)', 'SEDAN, Toyota Vios', '• Số chỗ ngồi : 5 chỗ  • Kiểu dáng : Sedan  • Nhiên liệu : Xăng  • Xuất xứ : Xe trong nước  • Thông tin khác:  + Số tự động vô cấp + Động cơ xăng dung tích 1.496 cm3 Hotline đặt hàng: 0973.631.248', 606000000),
	(4, 'Fortuner 2.4G 4×2 AT', 'SUV, Toyota Fortun', 'Toyota Fortuner 2.4G (4x2) Khuyến Mãi Lớn, Xe Đủ Màu, Giao Luôn   - CD, ghế nỉ, 1 cầu số tự động máy dầu, động cơ thế hệ mới', 1094000000),
	(5, 'Toyota Wigo 1.2 MT', 'HATCHBACK, Toyota Wigo', 'Toyota Wigo- Giao Cực Sớm Với Nhiều Quà Tặng Hấp Dẫn ', 345000000),
	(6, 'Toyota Wigo 1.2 AT', 'HATCHBACK, Toyota Wigo', 'Toyota Wigo- Giao Cực Sớm Với Nhiều Quà Tặng Hấp Dẫn ', 405000000),
	(7, 'Toyota Rush 2018', 'SUV, Toyota Rush', 'Toyota Rush- Giao Cực Sớm Với Nhiều Quà Tặng Hấp Dẫn ', 668000000),
	(8, 'Toyota Avanza 1.5AT', 'ĐA DỤNG, Toyota Avanza', 'Toyota Avanza- Giao Cực Sớm Với Nhiều Quà Tặng Hấp Dẫn ', 593000000),
	(9, 'Toyota Avanza 1.3MT', 'ĐA DỤNG, Toyota Avanza', 'Toyota Avanza- Giao Cực Sớm Với Nhiều Quà Tặng Hấp Dẫn ', 537000000);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;

-- Dumping structure for table carsale.city_fee
CREATE TABLE IF NOT EXISTS `city_fee` (
  `city_fee_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) NOT NULL,
  `tax` double NOT NULL,
  PRIMARY KEY (`city_fee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table carsale.city_fee: ~0 rows (approximately)
/*!40000 ALTER TABLE `city_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `city_fee` ENABLE KEYS */;

-- Dumping structure for table carsale.comment
CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `time_comment` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK_comment_user` (`user_id`),
  KEY `FK_comment_post` (`post_id`),
  CONSTRAINT `FK_comment_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  CONSTRAINT `FK_comment_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table carsale.comment: ~0 rows (approximately)
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- Dumping structure for table carsale.description
CREATE TABLE IF NOT EXISTS `description` (
  `des_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(2000) NOT NULL,
  `type_des` varchar(100) NOT NULL,
  `des_img` varchar(50) DEFAULT NULL,
  `car_id` int(11) NOT NULL,
  PRIMARY KEY (`des_id`),
  KEY `FK_description_car` (`car_id`),
  CONSTRAINT `FK_description_car` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table carsale.description: ~1 rows (approximately)
/*!40000 ALTER TABLE `description` DISABLE KEYS */;
INSERT INTO `description` (`des_id`, `content`, `type_des`, `des_img`, `car_id`) VALUES
	(1, 'Cụm đèn trước xe  được trang bị đèn halogen phản xạ đa chiều trên nền mạ kim loại sáng bóng, đảm bảo hiệu quả chiếu sáng tối ưu khi di chuyển trên đường.', 'ngoại thất', 'image/oxncrh.jpg', 1);
/*!40000 ALTER TABLE `description` ENABLE KEYS */;

-- Dumping structure for table carsale.image
CREATE TABLE IF NOT EXISTS `image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `type_image` varchar(50) NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `FK_image_car` (`car_id`),
  CONSTRAINT `FK_image_car` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- Dumping data for table carsale.image: ~54 rows (approximately)
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` (`image_id`, `url`, `type_image`, `car_id`) VALUES
	(1, 'image/FB-3a-1.jpg', 'post', 1),
	(2, 'image/jlfnod.jpg', 'post', 1),
	(3, 'image/Nhà-máy-TMV-1.jpg', 'post', 1),
	(4, 'image/PR-Articles.jpg', 'post', 1),
	(5, 'image/96feb7162136c3689a27.jpg', 'post', 2),
	(6, 'image/24h-toyotavietnam-1-1539168646-206-width1320height743-768x432.jpg', 'post', 2),
	(7, 'image/Beige-4R0.png', 'post', 2),
	(8, 'image/cấu-tạo-xe-1.jpg', 'post', NULL),
	(9, 'image/2020-toyota-corolla-2-6174-1542344527.jpg', 'post', NULL),
	(10, 'image/4.bn_.png', 'post', NULL),
	(11, 'image/dich-vu-bao-duong.jpg', 'post', NULL),
	(12, 'image/chinh-sach-bao-hanh.jpg', 'post', NULL),
	(13, 'image/3-1-400x249.png', 'avatar-car', NULL),
	(14, 'image/1-400x249.png', 'avatar-car', NULL),
	(15, 'image/Untitled-1-copy.jpgkkkkkkkkkkkkkkkkkkkkkkk.jpg', 'avatar-car', NULL),
	(16, 'image/Fortuner-2.4G-4x2-1.jpg', 'avatar-car', NULL),
	(17, 'image/Toyoa-Wigo-1.2MT.jpg', 'avatar-car', NULL),
	(18, 'image/Toyota-Wigo-1.2AT.jpg', 'avatar-car', NULL),
	(19, 'image/Toyota-Rush-2018.jpg', 'avatar-car', NULL),
	(20, 'image/Toyota-Avanza-1.5AT-1.jpg', 'avatar-car', NULL),
	(21, 'image/Toyota-Avanza-1.3MT-2.jpg', 'avatar-car', NULL),
	(22, 'image/Fortuner-2.7V-4x2-2.jpg', 'avatar-car', NULL),
	(23, 'image/Fortuner-2.8V-4x4-1.jpg', 'avatar-car', NULL),
	(24, 'image/Hilux-2.4G-4x4MT.jpg', 'avatar-car', NULL),
	(25, 'image/Hilux-2.8G-4x4-AT-MLM.jpg', 'avatar-car', NULL),
	(26, 'image/Hilux-2.4E-4x2-AT-MLM.jpg', 'avatar-car', NULL),
	(27, 'image/Yaris-G-CVT-1.jpg', 'avatar-car', NULL),
	(28, 'image/Toyota-Alphard-2.jpg', 'avatar-car', NULL),
	(29, 'image/Corolla-Altis-2.0V-1.jpg', 'avatar-car', NULL),
	(30, 'image/Corolla-Altis-1.8G-CVT-1.jpg', 'avatar-car', NULL),
	(31, 'image/Corolla-Altis-2.0V-Sport-1.jpg', 'avatar-car', NULL),
	(32, 'image/Corolla-Altis-1.8E-CVT-1.jpg', 'avatar-car', NULL),
	(33, 'image/Corolla-Altis-1.8E-MT-2.jpg', 'avatar-car', NULL),
	(34, 'image/Innova-2.0V-1.jpg', 'avatar-car', NULL),
	(35, 'image/Innova-Venturer-1.jpg', 'avatar-car', NULL),
	(36, 'image/Innova-2.0G-1.jpg', 'avatar-car', NULL),
	(37, 'image/Innova-2.0E-1.jpg', 'avatar-car', NULL),
	(38, 'image/Camry-2.5Q-1.jpg', 'avatar-car', NULL),
	(39, 'image/Camry-2.5G-2.jpg', 'avatar-car', NULL),
	(40, 'image/Camry-2.0E-1.jpg', 'avatar-car', NULL),
	(41, 'image/Vios-1.5G-CVT-3.jpg', 'avatar-car', NULL),
	(42, 'image/Hiace-Động-cơ-dầu-2.jpg', 'avatar-car', NULL),
	(43, 'image/Land-Cruiser-VX-1.jpg', 'avatar-car', NULL),
	(44, 'image/Land-Cruiser-Prado-TX-L-2.jpg', 'avatar-car', NULL),
	(45, 'image/oxncrh.jpg', 'ngoại thất', NULL),
	(46, 'image/yqbil4.png', 'ngoại thất', NULL),
	(47, 'image/ret3mu.png', 'ngoại thất', NULL),
	(48, 'image/yekky2.png', 'ngoại thất', NULL),
	(49, 'image/3rjmoj.png', 'nội thất', NULL),
	(50, 'image/ox4hma.png', 'nội thất', NULL),
	(51, 'image/m5jaoi.png', 'nội thất', NULL),
	(52, 'image/zbjxtx.png', 'nội thất', NULL),
	(53, 'image/2bsp33.png', 'vận hành', NULL),
	(54, 'image/wsdem3.png', 'vận hành', NULL);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;

-- Dumping structure for table carsale.post
CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `des` varchar(500) NOT NULL,
  `time_update` date NOT NULL,
  `post_img` varchar(50) NOT NULL,
  `type_post` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `FK_post_user` (`user_id`),
  CONSTRAINT `FK_post_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table carsale.post: ~0 rows (approximately)
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;

-- Dumping structure for table carsale.role
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table carsale.role: ~0 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table carsale.spec
CREATE TABLE IF NOT EXISTS `spec` (
  `spec_id` int(11) NOT NULL AUTO_INCREMENT,
  `spec_name` varchar(50) NOT NULL,
  `detail` varchar(2000) NOT NULL,
  `car_id` int(11) NOT NULL,
  PRIMARY KEY (`spec_id`),
  KEY `FK_spec_car` (`car_id`),
  CONSTRAINT `FK_spec_car` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table carsale.spec: ~0 rows (approximately)
/*!40000 ALTER TABLE `spec` DISABLE KEYS */;
/*!40000 ALTER TABLE `spec` ENABLE KEYS */;

-- Dumping structure for table carsale.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FK_user_role` (`role`),
  CONSTRAINT `FK_user_role` FOREIGN KEY (`role`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table carsale.user: ~0 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
