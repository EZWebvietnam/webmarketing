-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2014 at 08:01 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webmarketing`
--
CREATE DATABASE IF NOT EXISTS `webmarketing` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `webmarketing`;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

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
('0339608ba2f9eddb716f31fb68b7124e', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598537, ''),
('08ced129f3259c1100cea02b34fcea98', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598447, ''),
('1180dd83225de5e592bda0d02cfad1f5', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600587, ''),
('133f08dccc1269a46aacf7f0e9834002', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598443, ''),
('1495e18ccf4f0d92445363ab0148ea66', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598330, ''),
('19afc822ed0ffcb5d79f3c42efcb131b', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598441, ''),
('19c8b5fa862ae79d244aa8f9eb2a0423', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598289, ''),
('1e5aa5ce2b4eb0148153af08a84a9f19', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395601237, ''),
('26c2f4fac1c67e2c5e61ee798d5f9546', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600908, ''),
('289382b8732d35c1d0b1f9c34132b02b', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395601033, ''),
('2a0bfe623d707b8c6c03b131404a024d', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598289, ''),
('2c26ceff46371ac43805d5f8ecb0c115', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598780, ''),
('2e9d22906a0aa23a99a00c81e34eb4dd', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395599029, ''),
('2f530e8a23ded2bfe4568b547ea72f09', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598285, ''),
('30b5f70a5a35c36febc89f860c6e364e', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598269, ''),
('30c89b5ce4b54011aa75eabce1853b09', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600812, ''),
('30e781a1048736f655e917f5fad9a079', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600629, ''),
('3148d223e5027b3a298dbe032b2b8e00', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598921, ''),
('3804305f02a2e0737dddbb008ed3696c', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395599463, ''),
('41f8e16b082749b89399bff7fb376bdb', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598986, ''),
('423c855e0e90d7d45ee23817c0187d8d', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600665, ''),
('4440ef89e604f965391ff3543fa593d2', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598437, ''),
('44d8fdc9191d0eb9c35239bb8002da1b', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395599027, ''),
('4b2235ad7bef103fe0739472395fe827', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395601251, ''),
('4f8582b121250d731a61cd6b769ec562', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600742, ''),
('509af7b2fe1d880686190d6f176a3efe', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598541, ''),
('55bdf2db2c80e4e2b08b99a7eba92c94', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600662, ''),
('57d17f7dabd8d986ccda195f53f58008', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395599025, ''),
('5daf8cc199d7c4521044be7eec0dd17a', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600702, ''),
('5ef9c7579295f27e7c10004a3d6c921a', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600871, ''),
('6c6fde4ce34a3b794a67b3c9fa6606db', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395599070, ''),
('6df1cdd22911bfd421b7b3a102b4bc9c', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600850, ''),
('6eac6eba2b7c0e8011d8524dbc5d749b', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600811, ''),
('7478fed28e5b0d29e7d6cf07f833b1d6', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600908, ''),
('748a7305b091e6c8426878c55a992fef', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600943, ''),
('763e3f6878b001875b0799cc7b8da8da', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600938, ''),
('7ac64ce39b0b5e6843a4b97fcaf5cf9d', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598270, ''),
('7ee95d108ed323139b7a426c1d3c23c3', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395599548, ''),
('87798698370ae769dce8b6d6210fcbde', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395599072, ''),
('8bc65ce4532f8eb4524cf8f1a43e1a45', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395599033, ''),
('8de62d1107fa2870818bdb13d4d97b9d', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600809, ''),
('90811100048009ce262a316d8080e273', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600667, ''),
('9b0c99926a0a0024385a83fec0e87a9b', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395595762, ''),
('9c11067e42917d678751c28ec8805115', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600749, ''),
('9e5f4c9384d2f6ec21cf8e6d51d52d56', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600941, ''),
('9fec8deca63133bcee843f990f093fce', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598731, ''),
('a1ba2dac5d99b0ddf5f917e4acd8b615', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600872, ''),
('a71f08688b1855f1a4cf07539dc43523', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600867, ''),
('aca1dc602bd1862148f20a4d589c04dd', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395601106, ''),
('add17223db29e9841c5e74ac59a7cf1d', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598414, ''),
('b1167d9fea590eefed7168504033d92b', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598650, ''),
('b18c83b3a5c63306b4db053ad9c02116', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598563, ''),
('b354364d2b66826d288885f3eb98e362', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600943, ''),
('b53f87bf832932d6038b754a76848078', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395601045, ''),
('b83dbb79cff7ea8a1403f155b2b92dd0', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598546, ''),
('bead1b56ed821c42139e4fe3d3fb2017', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395601042, ''),
('befb73772ef9596ccbc9ff930781932d', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598844, ''),
('c1a93fe09d1c2af6c7cb9d45ad4e90e5', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600686, ''),
('c23188664e94c16f609009936e36165b', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600812, ''),
('c61a449bfc7bbf41102e678d8de58153', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598625, ''),
('d11ab488dce877eda752251bd918fafc', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395601254, ''),
('d2c0b396713ebe91f95bce4cfe30b070', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600751, ''),
('d51b22649e46f40cfdbcd31ca1bdfacb', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395596099, ''),
('d78fe359d880fa0498884e26943098e2', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600908, ''),
('d85513394a0eb0bb01ccb92848eb3be4', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395595694, ''),
('d927869d79f6b3cda08ca902eedf6163', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395595899, ''),
('e0c7d501aded2f91ece500dcc6a5e763', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600848, ''),
('e2f9fbcee597ba2107fa3695d50ddb93', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600905, ''),
('e685233345a984749d8e71bd6ea11061', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598906, ''),
('e784bfed3398535d8c3278952d707192', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395599020, ''),
('e8321597451f1172dc21993da3a11c72', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395595845, ''),
('e884b6fbd31ca0ab5d657c9973476745', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600890, ''),
('ec72b4ef658fdc805506ad58fd1e679c', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598669, ''),
('fa434267d47c7c1a0874571eb232aa0b', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598541, ''),
('fcea78c865921d534651fda8160e04fd', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395600845, ''),
('fd65727e86b0e5a19145b3372f767d2d', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1395598547, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `clip_marketing`
--

INSERT INTO `clip_marketing` (`id`, `code`, `id_product`, `create_date`) VALUES
(1, 'UUW1kG6Bkzs', 1, 123);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `title`, `description`, `content`, `exp_date`, `comission`, `id_cate`, `cost`, `img`) VALUES
(1, 'Bài học Marketing vô giá', '1111', '111', '14/2/2014', 20, 1, '12000000', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `full_name`, `phone`, `address`, `password`, `email`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`, `birthday`, `img`, `role`, `login_id`, `total_like`, `account_type`) VALUES
(1, 'giangbeo', 'Nguyễn Trường Giang', '01667039939', 'HCM', '$2a$08$14eB4bwnGSz2Mc0h3of1fucaiZYr3.OlyHWcC2D63wU0e3H7ZwOiG', 'nguyentruonggiang91@gmail.com', 1, 0, NULL, NULL, NULL, NULL, 'ad9147af77ea0a71cb1045eb8c144048', '::1', '2014-03-23 19:15:47', '2014-03-21 08:25:47', '2014-03-23 18:15:47', '', '', 4, '', 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `name`, `is_staff`) VALUES
(1, 'Administrator', 1),
(2, 'Staff', 1),
(3, 'Member', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
