-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2014 at 06:32 PM
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
('1a420c9997545ce9ab1aa79256a4021b', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393867074, ''),
('2ceecb3228e34e955a4964edb18f595d', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393865688, ''),
('2de2c9df76b152a75e2b8a65caf4a776', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393865466, ''),
('334c3b8b0c8be14c5441293c371f95a0', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393865425, ''),
('3430894e635a1128f01532c85137dc5d', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393865667, ''),
('3761c0a35748e05422f733a236ea4cb7', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393862852, ''),
('39a40e7de47dec2057b7c6e3aa9e3c70', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393867121, ''),
('3ab2513fe04cff04a4eee2776fd6718b', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393865505, ''),
('457c10d1f06302e0e4e77eb5305e1b40', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393867122, ''),
('45d20e5b954397496bafce2cc3ce3572', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393865680, ''),
('4c1e250bc9f8e7dc3936f655e60fca65', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393867194, ''),
('54bfc1dcc57cefc25717e1698c587ea3', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393865666, ''),
('5cf02eee3edb1276b08408f10cea978d', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393865178, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:8:"username";s:5:"admin";s:9:"full_name";s:24:"Nguy?n Tr??ng Giang";s:7:"created";s:19:"2014-01-20 11:40:27";s:5:"email";s:20:"giangbeoit@gmail.com";s:6:"status";s:1:"1";s:4:"role";s:1:"1";}'),
('67bdde24082e6aa1c1c29e1f0d5b094f', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393865178, ''),
('7132ee571f7eded7a6d9e4a81d79ad19', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393865675, ''),
('789e6a6bc57dd1078b9f23e3fc5a3117', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393867194, ''),
('7c4ea0dd5dfd26969bbeb508b654512b', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393862950, ''),
('8c12f115dfc6b5898bc184ad9acb32a6', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393865688, ''),
('8d589478c90b2675c12330340f0d0a76', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393865505, ''),
('b658feba1d012443ebf8717274961390', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393865169, ''),
('bbe15015aa2a1033b97d08f7fa138364', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393862958, ''),
('c0f805130ada73c319504010aceac5e2', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393862766, ''),
('c3c7e4b2261461a8dcd2623bc2e280b6', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393865657, ''),
('d006c4278b1092c5ad25b10332ab58a4', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393865124, ''),
('db1c679259b10e3e8a63abdd3405db2c', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393862958, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:8:"username";s:5:"admin";s:9:"full_name";s:24:"Nguy?n Tr??ng Giang";s:7:"created";s:19:"2014-01-20 11:40:27";s:5:"email";s:20:"giangbeoit@gmail.com";s:6:"status";s:1:"1";s:4:"role";s:1:"1";}'),
('dd58c6ada6e0a92b4a58702baf175a1d', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393865449, ''),
('e3a66b3768c9d39a536198b4ea0fb1ab', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (K', 1393867074, '');

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
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

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
  `id_cate` int(11) NOT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `title`, `description`, `content`, `exp_date`, `id_cate`, `cost`, `img`) VALUES
(1, 'Bài học Marketing vô giá', '1111', '111', '14/2/2014', 1, '12000000', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=16 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `full_name`, `phone`, `address`, `password`, `email`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`, `birthday`, `img`, `role`, `login_id`, `total_like`, `account_type`) VALUES
(1, 'admin', 'Nguyễn Trường Giang', '01667039939', 'HCM', '$2a$08$6yOFqjSwRiUDeH0DBFo2IeK.SgYng/aOBwDAiunZyicoGD2xBRh5O', 'giangbeoit@gmail.com', 1, 0, NULL, NULL, NULL, '', '', '::1', '2014-03-03 17:54:48', '2014-01-20 11:40:27', '2014-03-03 16:54:48', '9/5/1991', '2cecdbb1cf075f53b965e50c41717c51.jpg', 1, '0', 2005, 0);

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
