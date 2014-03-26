-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2014 at 09:09 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webmarketing`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `commissions` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_ref` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `id_product`, `quantity`, `price`, `commissions`, `ip_user`, `id_ref`, `create_date`) VALUES
(1, 0, 1, 1, 12000000, '0', '0', 0, 1394024751);

-- --------------------------------------------------------

--
-- Table structure for table `cate_product`
--

CREATE TABLE IF NOT EXISTS `cate_product` (
  `id_cate` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_cate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cate_product`
--

INSERT INTO `cate_product` (`id_cate`, `name`) VALUES
(1, 'Đào tạo Marketing Online'),
(2, 'Website thông minh'),
(3, 'Tài liệu Marketing Online'),
(4, 'Triển khai Marketing Online');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('27f38389f3f1259bd267f98b1333fb0c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395821058, ''),
('36d7b0c5b78b51dec63aeff49b93afac', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395821306, ''),
('563c868ca03d14702ebb1baa6cedacd1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395821067, ''),
('80c1f09174a5db65c2e22a5d10af50c3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395821168, ''),
('9f080eb3e8f8684074a2d384dd7209f1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395821318, ''),
('a08d7ddd8f638b4ddb398c6b5bc54770', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395821082, ''),
('a78fdf320bc5905714c18d2b70130fe7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395821102, ''),
('ab831876036df7e0436b18ede2171026', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395821084, ''),
('b7ac9caac669bcbf69b4cbcdb062ff49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395821072, ''),
('b7cddee7c4eeb36edc68cbeca1305c75', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395821121, ''),
('b86ec7e2f1cc7a962eb6a3c90315d105', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395821306, ''),
('baf2109a6a373db0c43d98bf5237498b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395821073, ''),
('c46a91dd15cba0f6917ff1c92502d1c9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395821308, ''),
('e2bdec0ae3745e06458c8af8e4f54dda', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395821057, '');

-- --------------------------------------------------------

--
-- Table structure for table `clip_marketing`
--

CREATE TABLE IF NOT EXISTS `clip_marketing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_product` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `clip_marketing`
--

INSERT INTO `clip_marketing` (`id`, `code`, `id_product`, `create_date`) VALUES
(1, 'UUW1kG6Bkzs', 1, 123),
(2, 'QF9HEKZXrT4', 10, 1395722722),
(3, 'QF9HEKZXrT4', 10, 1395722722);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `reply` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `name`, `title`, `email`, `question`, `answer`, `status`, `create_date`) VALUES
(1, '1', 'test cái', '1', '1', '<p>Ch&uacute;ng t&ocirc;i đ&atilde; trả lời c&acirc;u hỏi n&agrave;y của c&aacute;c bạn</p>\n', 1, 123),
(2, 'abc abc', 'Tôi muốn hỏi', 'abc abc', '<p>abc abc abc abc</p>\r\n', '', 0, 1395481112);

-- --------------------------------------------------------

--
-- Table structure for table `info_company`
--

CREATE TABLE IF NOT EXISTS `info_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `info_company`
--

INSERT INTO `info_company` (`id`, `address`) VALUES
(1, '<p>C&Ocirc;NG TY TƯ VẤN Đ&Agrave;O TẠO TIẾP THỊ TRỰC TUYẾN VINA Lầu 1 - T&ograve;a Nh&agrave; Rosana - 60 Nguyễn Đ&igrave;nh Chiểu - Q.1 - TP.HCM</p>\n\n<p>ĐT : 08.222.16.332 - Fax : 08.222.02.201</p>\n\n<p>Hotline : 0909.140.539</p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `title`, `content`, `type`, `create_date`) VALUES
(12, 'Gửi tin nhắn', '<p>Ch&agrave;o bạn !</p>\n\n<p>Ch&uacute;ng t&ocirc;i muốn gửi một tin nhắn đến bạn ! MOng bạn đọc kỹ tin nhắn !</p>\n', 0, 1395596098);

-- --------------------------------------------------------

--
-- Table structure for table `message_detail`
--

CREATE TABLE IF NOT EXISTS `message_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_message` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `message_detail`
--

INSERT INTO `message_detail` (`id`, `id_message`, `id_user`, `status`) VALUES
(6, 12, 1, 1),
(7, 12, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `img`, `create_date`) VALUES
(1, 'test', '<p>test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;tes<span style="line-height:1.6em">&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;tes</span><span style="line-height:1.6em">t&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;</span></p>\n', '5bcb487c05177b0afc0a92197deb7b3b.jpg', 1395715507);

-- --------------------------------------------------------

--
-- Table structure for table `order_customer`
--

CREATE TABLE IF NOT EXISTS `order_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `yahoo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_ref` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `order_customer`
--

INSERT INTO `order_customer` (`id`, `full_name`, `address`, `phone`, `email`, `yahoo`, `id_ref`, `status`, `create_date`) VALUES
(6, '0', '0', '0', '0', '0', 1, 0, 1394040611),
(7, '0', '0', '0', '0', '0', 1, 1, 1394040624),
(8, '0', '0', '0', '0', '0', 1, 0, 1394040633),
(9, '0', '0', '0', '0', '0', 1, 1, 1394040639),
(10, '0', '0', '0', '0', '0', 1, 1, 1394040674),
(11, 'Nguyễn Trường Giang', 'HCM', '01667039939', 'nguyentruonggiang91@gmail.com', 'giangbeo_it', 0, 1, 1395389851),
(12, 'Giang', 'HCM', '0166', 'nguyentruonggiang91@gmail.com', '1111', 0, 1, 1395389972),
(13, 'Giang', 'HCM', '0166', 'nguyentruonggiang91@gmail.com', '1111', 1, 1, 1395390323),
(17, 'SS', 'SS', 'SS', 'SS', 'SS', 0, 0, 1395390524);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `commissions` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_ref` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status_money` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `id_user`, `id_product`, `quantity`, `price`, `commissions`, `ip_user`, `id_ref`, `order_id`, `status_money`, `create_date`) VALUES
(6, 0, 1, 1, 12000000, '2400000', '::1', 1, 8, 1, 1394040633),
(7, 0, 1, 1, 12000000, '2400000', '::1', 1, 9, 0, 1394040639),
(8, 0, 1, 3, 12000000, '0', '::1', 0, 10, 0, 1394040674),
(9, 0, 1, 1, 12000000, '0', '127.0.0.1', 0, 11, 0, 1395389851),
(10, 0, 1, 1, 12000000, '2400000', '127.0.0.1', 1, 12, 1, 1395389972),
(11, 0, 1, 1, 12000000, '2400000', '127.0.0.1', 1, 13, 0, 1395390323);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `exp_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comission` int(11) NOT NULL,
  `id_cate` int(11) NOT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `title`, `description`, `content`, `exp_date`, `comission`, `id_cate`, `cost`, `img`) VALUES
(1, 'Bài học Marketing vô giá', '1111', '111', '14/2/2014', 20, 1, '12000000', ''),
(5, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\n', '28/3/2014', 10, 2, '1.000.000', ''),
(6, 'ssss', '<p>sssssssssss</p>\n', '<p>ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;</p>\n', '28/03/2014', 10, 1, '0', '36a04a55bc216d0ff784e2964946dfc1.jpg'),
(7, 'sssssssssss', '<p>www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0</p>\n', '<p>www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0www.youtube.com/watch?v=06TQfD0T9Z0&nbsp;$clip$clip$clip$clip$clip$clip$clip$clip$clip$clip$clip$clip$clip$clip$clip$clip$clip&nbsp;$clip$clip$clip$clip</p>\n', '28/03/2014', 20, 1, '0', ''),
(8, 'ssssss', '<p>sssssssssssss ssss</p>\n', '<p>https://www.youtube.com/watch?v=QF9HEKZXrT4&nbsp;https://www.youtube.com/watch?v=QF9HEKZXrT4&nbsp;https://www.youtube.com/watch?v=QF9HEKZXrT4&nbsp;https://www.youtube.com/watch?v=QF9HEKZXrT4&nbsp;https://www.youtube.com/watch?v=QF9HEKZXrT4</p>\n', '28/03/2014', 10, 1, '0', ''),
(9, 'ssssss', '<p>sssssssssssss ssss</p>\n', '<p>https://www.youtube.com/watch?v=QF9HEKZXrT4&nbsp;https://www.youtube.com/watch?v=QF9HEKZXrT4&nbsp;https://www.youtube.com/watch?v=QF9HEKZXrT4&nbsp;https://www.youtube.com/watch?v=QF9HEKZXrT4&nbsp;https://www.youtube.com/watch?v=QF9HEKZXrT4</p>\n', '28/03/2014', 10, 1, '0', ''),
(10, 'ssssss', '<p>sssssssssssss ssss</p>\n', '<p>https://www.youtube.com/watch?v=QF9HEKZXrT4&nbsp;https://www.youtube.com/watch?v=QF9HEKZXrT4&nbsp;https://www.youtube.com/watch?v=QF9HEKZXrT4&nbsp;https://www.youtube.com/watch?v=QF9HEKZXrT4&nbsp;https://www.youtube.com/watch?v=QF9HEKZXrT4</p>\n', '28/03/2014', 10, 1, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `sale_off`
--

CREATE TABLE IF NOT EXISTS `sale_off` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `percent` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exp_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sale_off`
--

INSERT INTO `sale_off` (`id`, `id_product`, `percent`, `img`, `exp_date`) VALUES
(1, 1, 12, '', '12/3/2014');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_bin NOT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `birthday` varchar(255) COLLATE utf8_bin NOT NULL,
  `img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT '3',
  `login_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `total_like` int(11) NOT NULL,
  `account_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `full_name`, `phone`, `address`, `password`, `email`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`, `birthday`, `img`, `role`, `login_id`, `total_like`, `account_type`) VALUES
(1, 'giangbeo', 'Nguyễn Trường Giang', '01667039939', 'HCM', '$2a$08$14eB4bwnGSz2Mc0h3of1fucaiZYr3.OlyHWcC2D63wU0e3H7ZwOiG', 'nguyentruonggiang91@gmail.com', 1, 0, NULL, NULL, NULL, NULL, 'ad9147af77ea0a71cb1045eb8c144048', '127.0.0.1', '2014-03-26 05:15:00', '2014-03-21 08:25:47', '2014-03-26 04:15:00', '', '', 2, '', 0, 0),
(2, 'admin', 'Nguyễn Trường Giang', '01667039939', 'HCM', '$2a$08$14eB4bwnGSz2Mc0h3of1fucaiZYr3.OlyHWcC2D63wU0e3H7ZwOiG', 'nguyentruonggiang91@gmail.com', 1, 0, NULL, NULL, NULL, NULL, 'ad9147af77ea0a71cb1045eb8c144048', '127.0.0.1', '2014-03-26 09:04:33', '2014-03-21 08:25:47', '2014-03-26 08:04:33', '', '', 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_autologin`
--

CREATE TABLE IF NOT EXISTS `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_product`
--

CREATE TABLE IF NOT EXISTS `user_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `user_product`
--

INSERT INTO `user_product` (`id`, `id_user`, `id_product`, `create_date`) VALUES
(13, 1, 1, 1395600943);

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE IF NOT EXISTS `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `country`, `website`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `name`, `is_staff`) VALUES
(1, 'Administrator', 1),
(2, 'Staff', 1),
(3, 'Member', 0),
(4, 'Volunteer', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
