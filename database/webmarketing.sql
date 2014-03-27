-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2014 at 10:32 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `id_product`, `quantity`, `price`, `commissions`, `ip_user`, `id_ref`, `create_date`) VALUES
(1, 0, 1, 1, 12000000, '0', '0', 0, 1394024751),
(3, 2, 1, 1, 1000000, '0', '127.0.0.1', 0, 1395907644);

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
('00626a36bb8edb46f3bd926393c6cebe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911826, ''),
('0140c076f66cf8c58deecee9c4b09f06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911828, ''),
('021875fcc8029ee22f8bbe424e8b8c3f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910761, ''),
('025821d3e56a790225f5f368f698c632', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911652, ''),
('028676b0dfa57c04a9d3d48697df4928', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907245, ''),
('05fd40e7d82f6b6bddc527937f656d42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911692, ''),
('071310652e61ffe2ab087e4a3faffff3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908206, ''),
('0c9b7b737595fedc5b6da6df8b53dc14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905561, ''),
('0ef298f12bf0a2a12bc3d118c1409240', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911214, ''),
('10df25ed55628761314021edb38e9b70', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905847, ''),
('113a8be33f58179d877927f14decf04d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905444, ''),
('14c12bf5db1aa88b2476ad68694d004b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911804, ''),
('14eb2b905532da50a3aa3b32fa60fad0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905711, ''),
('15e43844870b12ede1c3711aaa9cd0dd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906291, ''),
('163fddd20048b923fc1c09c4da0e1f16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911677, ''),
('178f8b21c933370fee8885e2a649215b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907312, ''),
('19d05fd6123341cff4d3f44bdf9d491d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911737, ''),
('1b5c89886d3d0250e4bf9bd46f04d91c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907346, ''),
('1d6bd3e9d8123aa8049b84257c9e0f6f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907886, ''),
('1f481b6a4dda68a07c60561c83c79652', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906014, ''),
('20c1d78ca31cd34ad0bd452fdd7fb6cc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907227, ''),
('2157d3ba7d6033d943a9d3e4a75deacc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910473, ''),
('23168a6c5e27f05f38ebc254c92d9389', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910730, ''),
('2321040ca7f09559bce3aea3752b0b8b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910459, ''),
('23866db07f219767d04d4078f0647fd5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905966, ''),
('23f3f7fe26338da28bbc049ea0788ea6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906458, ''),
('260ae40132e4638cf123f42c89867ddf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908196, ''),
('26113d2949c41e0aea6fc9d1f3687f30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911113, ''),
('28a2b3c1ec9364af8350f28b97c892dd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911783, ''),
('2a27da864cdd73a31049ed2daefb95f9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395904893, ''),
('2cbf92a083b4015bbf22b6f51f36ffbf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907084, ''),
('2cdc3035cbc9377c69162457e1e4124b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906048, ''),
('2e81e265b039715c91e34b78611064b6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905921, ''),
('2f6ae195b53ba29915f2ec44e21e9cbd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908036, ''),
('30e2e60e3dfb039372c3eada92678d11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905334, ''),
('37d4564067f14fcce5d4d26d96406b11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905510, ''),
('39394ff62ccfd040c9cadfb1cc51eeda', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911673, ''),
('3a060f813e363098561ed4793f4e477a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905980, ''),
('40fd69727617697dc7d038c446d5d4c8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911202, ''),
('4120ba09e9121fd50d4cb1df9cac0267', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905891, ''),
('4136e3126f0acdd025b64897daafa918', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911783, ''),
('41601383dc10e994aa2a017fa2f964ad', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905604, ''),
('41b84f1da9cd82ae7de229ed6eb7c1fa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905340, ''),
('43a37d1804a6fc92ec647744c076999a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910723, ''),
('4480cc4c0858c6c95a1e7ae47e5ec85e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905830, ''),
('450a5c76d70773bdfa98aa5d594bb981', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907186, ''),
('456acb416d7a0037acf54f6f242424c8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911455, ''),
('457bb0183c2298f2bc31013d8ff10967', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906210, ''),
('45f8a8013f60028a20b8727c41d07b78', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910480, ''),
('4982c72eb1ef096fca34bb0f63e1454e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907644, ''),
('4ade5ac354c3e0af19deb5140372f95f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907982, ''),
('4b0713b5fb1a43cb7f0e903430ac5bee', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906369, ''),
('4c0265bb26a9666c484d9f43dc48d76c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906227, ''),
('4c92e7d7629ff194861419aaad9b2b76', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908014, ''),
('4d9b53d694b95b05834c46f5263a1e8a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905340, ''),
('56556bd432b06ecf4e039a6ab60b313e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908039, ''),
('57da0ff079a565bf1270ba18f07beceb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908212, ''),
('58141660dbf7149dd18cccc03031956c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907929, ''),
('58b9cf01f8e7a4d3fb91e0b244a5339a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906049, ''),
('59a1916a17a4c0287bc5b155e7707d47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907646, ''),
('5efe9c41d519ee6ec3e2f74cbbb57492', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905477, ''),
('5f63b0dd0eff5d4bfd80e0b0cbb0d70d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906665, ''),
('611fab99d629917e035f8090cb645237', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905817, ''),
('61fe2d6e90ef77bcc8985132e9d864dd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908225, ''),
('620cec3ff16b7fa62ddabda44cdda04f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905555, ''),
('667b39c754d7f6203783ed95f9bd68ff', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911796, ''),
('6bfd7d17a87de6853a843a42e9d794a2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906497, ''),
('6ec9ab6ad2a967818ec7c9c749b080e9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907442, ''),
('6eede6fa238ca28e172cc0df9d3eb3a1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911799, ''),
('6f10e1f025af99b9dec91b4adcae96eb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907432, ''),
('70a67508a60844c898d6f41df6302a78', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911661, ''),
('70f9f468b9438f676efede74551219fb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905336, ''),
('710c73c131a2f00d6f40a1a796346d9a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911440, ''),
('71c8322c6f69e532f3e5f6bbdd522d43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905453, ''),
('71ec8f071350f51fdbc79e4418177b53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907048, ''),
('722b67007744a1a7a7ed353d1b2f7596', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911693, ''),
('75acfd3d1404c2a92909d7ed369a4336', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906439, ''),
('7626e325dfcba23217548ab9372bc904', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907400, ''),
('77cd20f57c19407816996969604cbfc5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907212, ''),
('785cd066edb4f8780fafffc058e36a2f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905293, ''),
('7951b251713108ac2e89ba05e8cf73a2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905561, ''),
('7972b03891744071465e3e00ea56f3a6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911426, ''),
('799a4b323c82caf8eb3510b7ba8e04fa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910482, ''),
('7aeb55662b22e349896ddde7d1626511', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906196, ''),
('7f58a9bcf1c552734921da2025d4442c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906023, ''),
('7ff170619db23a1e33db3fd1e704bef3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905483, ''),
('80d656bd6cb22e4f07aa3bde7f0cc46b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905710, ''),
('84df94cdba1d79512bc91104a5f609ee', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910730, ''),
('85cf1842027ce1b5a551d1c3c9035992', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906982, ''),
('872f187a4f2c499562143b68c7cb69c9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395904836, ''),
('8ce325515849496c89f46e769ffd0710', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907265, ''),
('8e0ed47120d0ab5cf39ce64009862d42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907167, ''),
('8e391547aa68e83f39767c69a7ace3cc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910472, ''),
('8e8afb4a8edf6409b72009f93c24a069', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905830, ''),
('8e8e27a9f9d5dff6ff5c742bab4e8b10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906731, ''),
('8ecfc1f7b93792647ff51936a96634be', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906529, ''),
('8ede832f9415c295a4e8e02864947a76', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911445, ''),
('8f5b71961090f34c3e0a4de022792261', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905315, ''),
('907e9160a21e42a1c798e64b02655e60', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395904947, ''),
('90bab0800f3a3ba6e5a7e183aa28ecdf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911804, ''),
('90eada49db3e7ca4c3648e795828637e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906253, ''),
('94159106d85ea551bf30a2032e464f81', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907421, ''),
('941904e3d31a046bd3c91a6e89822057', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905833, ''),
('94b255d48dfd57f110aa6fc7a22a6a6f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911809, ''),
('95a3948cd9701fe416dd61af0e10816d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910493, ''),
('9803f6bd405e4df3070103da1e88da13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907256, ''),
('997c8653683dfd97ee29d904d1c75294', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905727, ''),
('99bc46e50c03c73d37c023285fbe07f5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906916, ''),
('9a740ce38fe985f47b5354bb4873d9fc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906203, ''),
('9a9980bf2af3fe787850b7a1271526a1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908230, ''),
('9b2b18a065858186596d99c06489902c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908234, ''),
('9c33437851e35e66043532f36cbeb830', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906207, ''),
('9cb22bd28faac6ea97bacbefc105a678', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910725, ''),
('9ce67ee7f0cc47eafd52c62e61341df2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908032, ''),
('9edeca6d0f8d42b692f7a2feae221e28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905715, ''),
('9f3377864879e697d01516f8cf5a6deb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911415, ''),
('a3022ad1640f9cf3a3c40b2bfb68f630', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908114, ''),
('a5b59a9c401b5dbf751a290ea83bd856', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911692, ''),
('a6519ef3f281fd0a1187f0f0614261f0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906037, ''),
('a6fa05529255d127c2cb8662be4a8f05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906672, ''),
('a944604a35f2a337f1b5f421745dc8a8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910640, ''),
('acdb6e927c39157aee83137cf18bd82e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905727, ''),
('ad075fde3f1f5eaee67bbe095776afab', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907979, ''),
('ad8082a5fab321eb8f421b1b226036b4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908028, ''),
('aed3a3f12cdfb526ced51fb207a16103', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906070, ''),
('b445df13d4d748b3411d510b0380c424', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906449, ''),
('b55898038a3387b19da47ea1ba074334', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906381, ''),
('b588394c8b0c617d426663a1c37ee3ff', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907469, ''),
('b684f1f10fe5bfbf470d7f97e7997343', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910729, ''),
('b87a6fdab49ada5c48d88ba3d088e631', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911003, ''),
('b92a9163c34b13d1741e02b2f6f35891', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908012, ''),
('bc7757cd33dd1ee1464f3e48af848f48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908202, ''),
('bd5b35ec779db07ed787a2468b2c0d02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906022, ''),
('bf66737e5b65e004e2834b703d6cd858', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910937, ''),
('c0aa7fd380fdc37cc5cb5cc0c7c6a1ec', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905921, ''),
('c1a74269a00700cf22d21fb3e81c4186', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905556, ''),
('c23a0c12bb6a30cbfd07cf2c227dba1e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910460, ''),
('c2a45408361aab3d4c349d8b2875fea4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908233, ''),
('c5d5cf805da13222711f5ce5cba2346f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908214, ''),
('c9d572235b9c83a14d1298ce52b68697', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911826, ''),
('cc00b35e620495203414b650d1c1126f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910723, ''),
('ce3a99a93671e7fdf307bb3a1bc462e6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395904753, ''),
('cea17d4ac890b1bef1a51e44f6e9810c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908210, ''),
('d215ee19d5cff1c1490b868d117263f5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906055, ''),
('d27a05695f0f68439f89a3eda8c5fe77', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905601, ''),
('d2abc90f023f6a086cf7e9fde8ead5c0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907498, ''),
('d64ff6935e4fcf0ade4e0bf2625bb35a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911689, ''),
('dab119d1dcb6e40905abacdb8f820839', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907395, ''),
('db4129f2a643e68128fc399610b2ebef', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906489, ''),
('ddafa39fdcadf1eb1cc91615d2db82d3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907428, ''),
('defe2f28552169ce43a2f2f17f16fc2d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908209, ''),
('e7eaa7446fcece2d32e7d96899aa1805', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911673, ''),
('e8494b3f9fd0b53f02e7c73737e37dda', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395910995, ''),
('efa2e76970ac49a918a1485b8f36d4cc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911633, ''),
('f24e1fa792bf9e6bd46855bff10e1730', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395907438, ''),
('f7a3b2bf042a6a3aaccbe4e3d6aa1c32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908211, ''),
('f8104c07de73df20ee23b8b6d267b51d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395905739, ''),
('fd14ecce049792f921bd624bf00c7abf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395911822, ''),
('fd685b67aa215f7fd91929a547d22f01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908033, ''),
('fe3031ee334f2ab4cf46ea1e2bc5c161', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395906509, ''),
('ff4a8df78e2e03a3839bf56ac04039a2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395908037, '');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

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
(1, 'Test ', '<p>tesst</p>\n', '<p><img src="http://www.guide4idiots.com/images/dear.jpg" /></p>\n\n<table align="center" border="0" cellpadding="0" cellspacing="0" style="border:10px dashed rgb(255, 255, 255); font-family:georgia; width:314px">\n	<tbody>\n		<tr>\n			<td>\n			<p><span style="font-size:20pt"><input checked="checked" name="checkbox2" type="checkbox" value="checkbox" /></span>&nbsp;<strong><em>Did you just buy a new iPad?</em></strong></p>\n\n			<p><em><span style="font-size:20pt"><input checked="checked" name="checkbox2" type="checkbox" value="checkbox" /></span>&nbsp;<strong>Are you frustrated because you don&rsquo;t know how to use it, where to begin???</strong></em></p>\n\n			<p><em><span style="font-size:20pt"><input checked="checked" name="checkbox2" type="checkbox" value="checkbox" /></span>&nbsp;<strong>Tired of searching online and finding only pieces of info?</strong></em></p>\n\n			<p><em><span style="font-size:20pt"><input checked="checked" name="checkbox2" type="checkbox" value="checkbox" /></span>&nbsp;</em><strong><em>Are you too lazy to read the 150+ pages manual?</em></strong></p>\n\n			<p><em><span style="font-size:20pt"><input checked="checked" name="checkbox2" type="checkbox" value="checkbox" /></span>&nbsp;<strong>Want to learn how to use your iPad instantly with easy step-by-step tutorials?</strong></em></p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<blockquote>\n<h2>End the Frustration! iPad4idiots Tutorial Package (Ebook + 8 Part Video Series) is the best available resource currently online, and you can have it now!</h2>\n</blockquote>\n\n<h1><img src="http://www.guide4idiots.com/images/ebookall.jpg" /></h1>\n\n<table border="0" cellpadding="5" cellspacing="5" style="font-family:georgia; width:452px">\n	<tbody>\n		<tr>\n			<td>\n			<p>Today, we don&rsquo;t have time to browse online and read articles that do us little good, and don&rsquo;t teach us anything.&nbsp;<strong>We also don&rsquo;t have the time to read long manuals that provide us with too much information</strong>&nbsp;in a form that&rsquo;s hard to remember. This ebook + video package was conceived so that<strong>you can start using and enjoying your iPad instantly</strong>. All instructions are clear and easy to follow. You won&rsquo;t have to spend a whole day going through the whole manual and find out that you didn&rsquo;t learn much.&nbsp;<strong>You can simply open this ebook, take your iPad and start tapping it.</strong>&nbsp;You&rsquo;ll learn all there is to know about it before you know it!</p>\n			The iPad is a trusty companion, no matter if you want to read a ebook, listen to music, watch podcasts or keep in touch with your friends over the internet.<strong>But, as any new gadget, it has some features that aren&rsquo;t as user friendly as they should,</strong>&nbsp;and hence the need to get documented on how to use it. However, we didn&rsquo;t want to make it too complicated, nor to take too much time in teaching you the &ldquo;how-to s&rdquo; so we made it simple for you.<strong>&nbsp;It&rsquo;s never been easier to learn how to use your iPad &ndash; and have fun doing it at the same time!</strong>\n\n			<p><a href="http://3.buohcom.pay.clickbank.net/"><img src="http://www.guide4idiots.com/images/orderbutton3.gif" /></a></p>\n			</td>\n			<td>\n			<table align="center" border="10" cellpadding="15" cellspacing="0" style="border:8px dashed rgb(54, 8, 74); width:109px">\n				<tbody>\n					<tr>\n						<td>\n						<h1>Did you know?</h1>\n\n						<p><strong>-&nbsp;<span dir="ltr"><em>When you buy an iPad it doesn&rsquo;t come with a manual</em></span></strong></p>\n\n						<p><strong><em>-&nbsp;</em><span dir="ltr"><em>You can only download the manual online</em></span></strong></p>\n\n						<p><strong><em>-&nbsp;</em><span dir="ltr"><em>The manual is over 150 pages and takes about two days to go through it</em></span></strong></p>\n\n						<p><strong><em>-&nbsp;</em><span dir="ltr"><em>iPad isn&rsquo;t as user friendly as it&rsquo;s advertised to be</em></span></strong></p>\n						</td>\n					</tr>\n				</tbody>\n			</table>\n\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>So, if you want to learn how to use your iPad instantly and you don&rsquo;t want to waste any time,&nbsp;<strong>then you&rsquo;ve come to the right place!</strong></p>\n\n<p>iPad4idiots is your perfect source of information on everything you will ever need to know about iPads!&nbsp;<strong>You really don&rsquo;t want to miss on this amazing opportunity!</strong></p>\n\n<p>&nbsp;</p>\n\n<div style="font-family: Georgia; font-size: medium; line-height: normal;">\n<h2><strong>So, what will iPad4idiots package (tutorial ebook + videos) teach you?</strong></h2>\n\n<blockquote><img class="blankright" src="http://www.guide4idiots.com/images/ebookmoves.jpg" style="border:0px; float:right; margin:5px; padding:5px" /></blockquote>\n<strong>Here&rsquo;s a glimpse at iPad4idiots ebook&rsquo;s insides:</strong>\n\n<ul>\n	<li>\n	<ul>\n		<li><span dir="ltr"><em>iPad - a quick overview &amp; startup guide</em></span></li>\n		<li><strong><span dir="ltr"><em>Getting connected with the world: Safari Internet Browser</em></span></strong></li>\n		<li><span dir="ltr"><em>Emails? Don&#39;t worry, iPad has it all</em></span></li>\n		<li><span dir="ltr"><em>YouTube Addict? iPad loves YouTube!</em></span></li>\n		<li><strong><span dir="ltr"><em>If you&#39;re on the go, never get lost with iPad&#39;s Maps</em></span></strong></li>\n		<li><em><strong>Camera, HD Video recording, Photo Booth</strong></em></li>\n		<li><strong><span dir="ltr"><em>iPad Multimedia - photos, videos, music</em></span></strong></li>\n		<li><span dir="ltr"><em>Business functions: Contacts, Notes, Calendar</em></span></li>\n		<li><strong><span dir="ltr"><em>Apple Connectivity: iTunes, App Store, iBooks</em></span></strong></li>\n		<li><span dir="ltr"><em>Customizing your iPad - Your guide through Settings menu</em></span></li>\n		<li><strong><span dir="ltr"><em>Accessibility options</em></span></strong></li>\n		<li><em>iMessage &amp; Facetime</em></li>\n		<li><span dir="ltr"><em>iPad tips and tricks</em></span></li>\n		<li><span dir="ltr"><em>We now offer an additional iOS 7 guide that explains new features and settings for your device!!</em></span></li>\n		<li><span dir="ltr"><em>We also offer you our iOS 6 guide, if you have an older device it will prove useful</em></span></li>\n	</ul>\n\n	<ul>\n		<li><strong><span dir="ltr"><em>..and more</em></span></strong></li>\n	</ul>\n	</li>\n</ul>\n\n<p><strong>You can rest assured that you&rsquo;ll never find a better guide that will help you learn how to use your iPad easily.</strong>&nbsp;You won&rsquo;t find on the internet a better guide to your iPad &ndash; trust us, we&rsquo;ve been there doing the research for this ebook,&nbsp;<strong>and half of it are useless information.</strong></p>\n\n<h2>You really need&nbsp;<em>this invaluable guide</em>&nbsp;if you want&nbsp;<br />\nto learn how to use your iPad RIGHT NOW! &nbsp;</h2>\n\n<p><a href="http://3.buohcom.pay.clickbank.net/"><img src="http://www.guide4idiots.com/images/orderbutton1.gif" /></a></p>\n\n<h1><strong>~Learn How to use your new iPad or Pay Nothing!</strong>~</h1>\n\n<p><strong>Order your copy today in complete confidence!</strong>&nbsp;But just before you do, please rest assured that&nbsp;<u>you are backed by a completely risk-freeguarantee!</u></p>\n\n<table align="center" border="10" cellpadding="15" cellspacing="0" style="border:8px dashed rgb(54, 8, 74); width:263px">\n	<tbody>\n		<tr>\n			<td>\n			<h1>Money Back GUARANTEE!</h1>\n\n			<p><img class="blankright" src="http://www.guide4idiots.com/images/moneyback.jpg" style="border:0px; float:right; margin:5px; padding:5px" /><u>Here&rsquo;s how this works:</u></p>\n\n			<p>Simply follow the link to get your copy of the iPad4idiots package, learn it, apply the knowledge in it, and if it doesn&rsquo;t work, you&rsquo;ll get your money back, fast and without any hassle. The whole reason this tutorial was created is so&nbsp;<u>people can start enjoying their iPad and learning how to take advantage of all its features fast and easy</u>.</p>\n\n			<p><strong>So,&nbsp;<strong>order you copy now in full confidence!&nbsp;</strong></strong></p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p><strong>You don&rsquo;t have to wait anymore.&nbsp;</strong>You can order your copy iPad4idiots now and start using your iPad to the max in minutes! The order is processed instantly, and&nbsp;<strong>you can have the complete package in your possession literally, in a couple of minutes. Download instantly upon payment.</strong></p>\n\n<p><a name="order">&nbsp;</a><img src="http://www.guide4idiots.com/images/ebookall.jpg" /></p>\n\n<table align="center" border="10" cellpadding="15" cellspacing="0" style="border:8px dashed rgb(54, 8, 74); width:281px">\n	<tbody>\n		<tr>\n			<td>\n			<h1>Risk-Free Acceptance Form!</h1>\n\n			<p><img class="blankright" src="http://www.guide4idiots.com/images/fullg.jpg" style="border:0px; float:right; margin:5px; padding:5px" /><strong><em><input checked="checked" name="checkbox3" type="checkbox" value="checkbox" />&nbsp;<u>Yes!</u>&nbsp;I understand that I will be able to instantly download my copy of &quot;iPad4idiots&quot; right after payment .</em></strong></p>\n\n			<p><input checked="checked" name="checkbox3" type="checkbox" value="checkbox" />&nbsp;<u><strong><em>Yes!</em></strong></u><strong><em>&nbsp;I also understand that this package will help me take CONTROL of my new iPad and it will teach me how to take advantage of all its features!</em></strong></p>\n\n			<p><input checked="checked" name="checkbox3" type="checkbox" value="checkbox" />&nbsp;<u><strong><em>Yes!</em></strong></u><em><strong>&nbsp;I also understand that if I&#39;m not happy with iPad4idiots, and if I follow all the steps, it doesn&#39;t help me to use my iPad, I can simply ask for a refund even 60 days from now!</strong></em></p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<h2>Price was: $<strong>49</strong>!</h2>\n\n<h1>Now&nbsp;<strong><u>only $37</u>!</strong></h1>\n\n<p>Free updates to our new guide + video lessons forever! Currently available tutorials for iPad 1, 2, &amp; 3rd generation. We also offer guides for iOS6 and iOS7 (our classic iPad 4 idiots guide and a Tips and Tricks ebook with everything you have to know)</p>\n\n<h3><a href="http://3.buohcom.pay.clickbank.net/"><img src="http://www.guide4idiots.com/images/orderbutton1.gif" /></a><br />\n<strong>LIMITED TIME OFFER!</strong><br />\n<strong>PRICE WILL MAY GO BACK TO $49 ANYTIME!</strong></h3>\n\n<p><img src="http://www.guide4idiots.com/images/weaccept.jpg" /></p>\n\n<p>P.S:&nbsp; You really don&rsquo;t want to miss this opportunity. The quality of the information found in the iPad4idiots is well above anything you will find on the market today. Normally, you wouldn&rsquo;t be able to buy this package at this price, but I want to help you save time and learn how to use your iPad fast and easy, &nbsp;and I wanted to make this affordable for everyone.</p>\n\n<p>P.P.S: Keep in mind that if you&rsquo;re not happy with iPad4idiots and you don&rsquo;t get the result you wanted, I will fully refund you through my&nbsp;<strong><u>60 day money back guarantee.</u></strong>&nbsp;Simply send an email if you&rsquo;re not happy with the results and you will get a refund without any hassle!</p>\n\n<div>&nbsp;</div>\n</div>\n', '28/03/2014', 20, 0, '1000000', ''),
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
  `bank` varchar(255) COLLATE utf8_bin NOT NULL,
  `stk` varchar(255) COLLATE utf8_bin NOT NULL,
  `yahoo` varchar(255) COLLATE utf8_bin NOT NULL,
  `skype` varchar(255) COLLATE utf8_bin NOT NULL,
  `sex` int(11) NOT NULL,
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

INSERT INTO `users` (`id`, `username`, `full_name`, `phone`, `address`, `password`, `email`, `bank`, `stk`, `yahoo`, `skype`, `sex`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`, `birthday`, `img`, `role`, `login_id`, `total_like`, `account_type`) VALUES
(1, 'giangbeo', 'Nguyễn Trường Giang', '01667039939', 'HCM', '$2a$08$14eB4bwnGSz2Mc0h3of1fucaiZYr3.OlyHWcC2D63wU0e3H7ZwOiG', 'nguyentruonggiang91@gmail.com', '', '', '', '0', 0, 1, 0, NULL, NULL, NULL, NULL, 'ad9147af77ea0a71cb1045eb8c144048', '127.0.0.1', '2014-03-27 05:37:29', '2014-03-21 08:25:47', '2014-03-27 04:37:29', '', '', 2, '', 0, 0),
(2, 'admin', 'Nguyễn Trường Giang', '01667039939', 'HCM', '$2a$08$14eB4bwnGSz2Mc0h3of1fucaiZYr3.OlyHWcC2D63wU0e3H7ZwOiG', 'nguyentruonggiang91@gmail.com', '', '', '', '0', 0, 1, 0, NULL, NULL, NULL, NULL, 'ad9147af77ea0a71cb1045eb8c144048', '127.0.0.1', '2014-03-27 09:54:33', '2014-03-21 08:25:47', '2014-03-27 08:54:33', '', '', 1, '', 0, 0),
(5, 'beobeboi91', 'Nguyễn Trường Giang', '01667039939', 'HCM', '$2a$08$5tvFJtTPuyM1oM.r8TwX2u2OiQmktgRLTZ/JQtcXaCYQhX1UBn6aq', 'beobeboi91@gmail.com', 'Vietcombank2', '034100524519322', 's2', 's2', 0, 0, 0, NULL, NULL, NULL, NULL, '98825c04327f529da7c9139aeaab0f99', '127.0.0.1', '0000-00-00 00:00:00', '2014-03-27 07:23:46', '2014-03-27 08:58:49', '2014/03/27', '', 4, '', 0, 0),
(6, 'beobanhbao', 'Béo Bê Bối', '01667039939', 'HCM', '$2a$08$8VB6NWLbN89N1yOe5.1.5.EA21W95EsHtkTykD40FDRoHaf6aTfx2', 'giangbeoit@gmail.com', 'Vietcombank', '0341005245193', 's', 's', 0, 0, 0, NULL, NULL, NULL, NULL, '67c9b8de63c601e0c368b349cf30b9ca', '127.0.0.1', '0000-00-00 00:00:00', '2014-03-27 10:14:33', '2014-03-27 09:17:06', '2014/03/26', '', 4, '', 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `user_product`
--

INSERT INTO `user_product` (`id`, `id_user`, `id_product`, `create_date`) VALUES
(13, 1, 1, 1395600943),
(14, 2, 1, 1395908037);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `country`, `website`) VALUES
(1, 1, NULL, NULL),
(2, 3, NULL, NULL),
(3, 4, NULL, NULL);

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
