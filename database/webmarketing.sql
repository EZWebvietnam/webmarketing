-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2014 at 09:01 AM
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
('00d59413fe7609b463e9ea741083734b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980500, ''),
('01e51a4021010227c10b5e5d4105032a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395982305, ''),
('040b8916eed082cf4f192cfa17456aa1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395982115, ''),
('05d1fa213454dab227630be4b0b51ea6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980947, ''),
('0717acb74a37cc7b6ad80bf6eae0183e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987091, ''),
('0891ea5b3f21d57562edad5eb67e5643', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986736, ''),
('08e544ee352bdfa5ca8514130ee89cdd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395982246, ''),
('093dec24ec8fe93be300cf11d1dcc5e1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395988080, ''),
('0c70414216ab948e125aa333851e7976', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980027, ''),
('0c76431932057abe09c56f62002950fa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981634, ''),
('0ce09b79e453531be4e3bb42fb964eb7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980844, ''),
('1071490837a016d14b26786dd71f275b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987243, ''),
('114ff161bcea365c0e849e7dfa57198a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987355, ''),
('11714ec29d0384cab54eaa93652a93b8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980951, ''),
('11b3e6132e86074d26f99c7a98b9ca9d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986839, ''),
('12d6c76a24ebe66814ed632eced5b518', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395993431, ''),
('137d0ea5f189b36fd163cc4ca6e36d64', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395989466, ''),
('143daeaecf41a55fd04d633f2845214c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395982272, ''),
('15851cfc08c0e9f3a36ff966c6d3f230', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986959, ''),
('16b43172b2f2124da4a95401ecf558aa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395988132, ''),
('188a83125873ebfeadf3207a36207bf7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986506, ''),
('18b7d0319c95fbee77433e39af7dc386', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981130, ''),
('197516bff150548d19e506550c81a761', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986816, ''),
('19eb0337b3535f15e40841b338adcab4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987705, ''),
('1ad669ab605e8ea661060d462778070e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992639, ''),
('1bfa86ecf2ed6e597eb32154e6337e12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395993437, ''),
('1fe306f3f2b69cd4eccafb615628905a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992650, ''),
('1ff14a06c562ce97c99fdb1193e580c5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987328, ''),
('228d31ecbb2a8f71d7da7e20bfbe1e74', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980949, ''),
('240f495d615c9cadbcf9fa85d705198f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981134, ''),
('24197371a8e521f045dbf32106ef891f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980743, ''),
('247d1f3ea752e0d9c3364832f7a9d7d6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980100, ''),
('258fb433181666b3ba4c7024e1f36b29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987064, ''),
('25abd7146a8a211c01f91de33d8291c0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395982098, ''),
('277a72818e5c9a1244d1399d9e5f6e5e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980559, ''),
('2787ab90c925ec815795b726517702c2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395993422, ''),
('2ab399acec1ea773b6083077e3fe538e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987719, ''),
('2d2cb19b00cb270e852b2febf25f5dda', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987045, ''),
('310369eaa8e28675cf824035e1cb67ed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980838, ''),
('33aa1a505a10a133f3a17e102635a6e5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986718, ''),
('3473f877fabfc5e2bb2ed537f2d29271', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980024, ''),
('3887a48effe3445bbf7a22b4d2bf59b2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981487, ''),
('3ac4b1cba38f036dcd5db6e408dcdc93', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986644, ''),
('3cff336342f5310fab3297917c650994', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395990749, ''),
('3e1c53d39de3917522f13195e7992a07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395988045, ''),
('3fbed9ae961c98081dfbec20643e7e61', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395989461, ''),
('40022832335aef8a8275183c98ba209d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986082, ''),
('433605003379ea69c0c82d936b4dd466', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986572, ''),
('451b310eda50bef11e983a596c66c91d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395990616, ''),
('45ccbeefa5c313d53fa1ee2cefd44462', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395988269, ''),
('45d400d32b94ab58c43b15bca448fa44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395985862, ''),
('460477c9cbf21615475eb0c18e2055c7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395982112, ''),
('475e7ab109178ca44378d320f221d6e2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981789, ''),
('48069639ba8656cd17ae4c55577d49b6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986776, ''),
('4956ce8cc43df8501d57f542ef75c632', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986456, ''),
('49d244090e5bed06d1bb9ad9bd2b5485', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395982103, ''),
('4cc7402fabb350588cb9dc0cffbc9449', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980979, ''),
('4d2b224c945fb35e7bad3a6865daac7d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980007, ''),
('4d4ff8b486073d085943a3ed6bf02d03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980857, ''),
('4fa593ee9d361898718dfa057ed650b3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980035, ''),
('50514331395c2d8ef5acbb5242bed121', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992378, ''),
('519fa17d9fc498eb944709efeff44d38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986470, ''),
('527d2038d476c87e1568f4ad56193899', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987523, ''),
('568eeaffb3da805904c2735c72ca3a03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981098, ''),
('59a5ddc96ce3ad1105a3a7333bda4ebe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981042, ''),
('5af53534c60a1f6d448051a9c0c4c2c2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981899, ''),
('5aff5267ad919a3030e5fc6d08e4ed8e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987319, ''),
('5dd1e2098502439e830b920b0ec0b188', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980941, ''),
('5dec6fb664313b16b643c927fa9f8e46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992637, ''),
('5f23fe3686462125195b646e23b3672f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987210, ''),
('606045350c6a3910196aaec7ef90094d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395979982, ''),
('61e419139a5dd1436fda5a4947277dd5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395985651, ''),
('62ca92fe1ba1c4e48b8ea51896e03237', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981461, ''),
('63f6d1cec0b585bed3e3a0ec84ed71ba', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986748, ''),
('64383212a86c855548fddf04d507bed6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986705, ''),
('69ea55a7152ec47f65126d40ef2f6499', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395993615, ''),
('6b18a5d94666242a59e17801aae9904b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980759, ''),
('6c42c196e63669269427347da8a85d34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981211, ''),
('6f1baa35bdff80d0c913f121f8655bb9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395993431, ''),
('703705566044860f5b2e400934b85b95', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980045, ''),
('71c5cc75f533dae1898495be97d42372', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395993437, ''),
('73bbc2588a7d221945566145b0f4a6db', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395993417, ''),
('74ba217d437dc58dce58c509638a1704', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395982090, ''),
('751b1061602579ee86c97c8ee125495f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980957, ''),
('751daab2111a2b9963c4d0f1ade83683', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980868, ''),
('7a6a9ae3a70b0fd6c3e60d34a5ab34c9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992797, ''),
('7b33a0034ccbf36cf30357e269744c24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981015, ''),
('7b39d59295a6ea550044c2d5e21b2065', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980826, ''),
('7b51cc670679b7fbf2b835649acff432', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981656, ''),
('7de3c41b50f04382fc4613cba1a496c8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395985986, ''),
('7dec3a30f238a20f1dc5c0ff1a5e1da7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395993416, ''),
('7df9d3c2ce5c495e426b2270c83ba404', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980751, ''),
('7ed173b2d9ca68212d3c836000d4e3d0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987263, ''),
('7fe1fd2db14b02fcc1a28c81d3728bea', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395982077, ''),
('7fe4105b85307196803cc2dbe84e0bf6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992342, ''),
('829c98190c1b06a7de54edfdea420ed9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992265, ''),
('8450f6ba60475eaf3977ee2495651050', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980835, ''),
('86fb515e96709ad4cc1d466b8bcaeaec', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395990761, ''),
('89a9c203eb974a3568bb7ffc6aa43017', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987338, ''),
('89fe1b1947fb03ca86583fdbd9f0b6c7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980437, ''),
('8bb0122741e96fc7791e9f2e9091d13c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395982130, ''),
('8cbab36fe0b8b85d194a4017a61b2309', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981227, ''),
('8e1bcfa6d4ef20e9ea7a0bd5d08542cd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987839, ''),
('90afd09fb0087d7c6fb8b00fd9400aec', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987089, ''),
('939fa858503fd8580ea097ae0a4c9c88', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992172, ''),
('93e6703d95ca98617afbe2fe0dc7d006', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395988437, ''),
('97d920a3fe6a78b8ea52f4d76d44ad0a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981407, ''),
('98dbf31683fbafd8b7043cee67a17dd8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395979961, ''),
('991e3073f5e1734e607210cdb98a3d17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980104, ''),
('9dd90df56ef06a68aef368f6b2bb9430', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395985784, ''),
('9f371fe009d3ad685668c28223390432', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980352, ''),
('a0d700db183b5ebf55167d3036911b6d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395990753, ''),
('a6616ce8db3ba6afef90658b71d7fbb7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980419, ''),
('a74779258deaf9095f6f233b605883e1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981600, ''),
('a74fe5cb7f0bb349f75de1492f893876', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980841, ''),
('a82d719872234fd1b654eb4d5c7060b1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987290, ''),
('a8e1e30a34459948c21a276a765362b8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986538, ''),
('a916fd5025e06126e6e494dfdba9078d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980035, ''),
('a91b7f0bac78b98bbe12dc1c88a24367', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981383, ''),
('aa6c410f7393578f025af9c902c380a4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986672, ''),
('acb3642a06f24b6323193ea27042b7f4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395990760, ''),
('aeb4b954a55bebd19e961805a1443918', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980019, ''),
('b107be3af6df2bcc980a655c2f9038fc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395985686, ''),
('b16fea938c1f83d95435aaa23520942c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395982110, ''),
('b3ed3d793735202f4eaa7d39a20373c3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980953, ''),
('b64c4a906c85ab9dc7f18eab8e5ffa2a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981311, ''),
('b6e0c9009226abec0c601938bf5b4e3e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987691, ''),
('b81f6d221a1287877dcced8632a67a8f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980741, ''),
('b8a8c4d480e533c6d9307aba656a227b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395988445, ''),
('bc4502dda0584866f66922cb1552fd02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980044, ''),
('bd60e47635cb595db53e4017c191c115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992393, ''),
('bd72fa4ebeb8ff609e4196acf9d47b1f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992287, ''),
('bec27672f03ea2b6399df381a00b7073', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395991086, ''),
('c279de6915992bed2a9c0939384c68a3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992766, ''),
('c2835e2b24299a25ae55ed17ac9ab5f5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981163, ''),
('c34d14554c747d4768d09f897cb39e61', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980002, ''),
('c41e97b062557e9069eace68f4b6c0b0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395982244, ''),
('c4458d4f15bc4a591af52f075f2cbd96', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395985657, ''),
('c46cf038ec023207d57a6de42a9b5054', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981848, ''),
('c4c9050a03c0e529782bf18cf426c0ad', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395982106, ''),
('c5035d0dab338fef96d0ee652525c95a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980945, ''),
('c65db6a90be03a3c36bb196945248fd8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980566, ''),
('c81e3583144310c4dcf37aa3e9750c5f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981910, ''),
('ccc705ce81a297de7fb807a44b4822d8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981196, ''),
('cd2005bf49ac7bf0c123b764580b6d8e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395982302, ''),
('d077112396706ea2b24c7aee1be728d6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987085, ''),
('d162b791bb5db00ecaae5b4396c9f609', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395988303, ''),
('d1c0c089a6de28247d6ac244ea5e671a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980064, ''),
('d233d86778ba8b43b009a367a0f98411', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395988354, ''),
('d35783ae61b9f31de6c262ce1c6efc91', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986944, ''),
('d38ca2aa3885ab1947ac4a957569f8fa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395990754, ''),
('d5150e2c2b8de34278a3b6c3f3fb40f9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395985828, ''),
('d668051319f85931ad5405bfd34f3782', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980064, ''),
('d6963622b9fa57705cbb825425df3303', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980529, ''),
('d6c0cec698e1ee00f8594d514024152c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992622, ''),
('d7ecabc3f10f711e614f76fdea5923b4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980778, ''),
('da53ee03b58f6b260eb9253d9329cbe3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981452, ''),
('db047d6c2115db53c04af4feb82e95e3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980749, ''),
('db9836cdcff54b48b43fa6dda013cdcf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992213, ''),
('dc31e55f5a915bb109dad7cdc5769483', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980736, ''),
('dca31f0f1fea6839622e0d2591e9626e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980746, ''),
('de596052e614e05ff1090116f436f471', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395985764, ''),
('e07c55663114d45ed5de517746b6f62b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980380, ''),
('e3474b7b0e4215503c233071ebefc8ae', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395993390, ''),
('e5630967ca24049adfc1a0add0720adc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986621, ''),
('e570f3b9862dcb144437d85375073a53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987613, ''),
('e6a9a6ed980d9fb91677afaa5b47ea80', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992466, ''),
('e8d162b3edaa8c52b744ed715736e8ac', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981208, ''),
('eadddd6f7e12c7303ce7e81895f57840', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395991615, ''),
('eb9b888146bf7b381b73e142f2e908b3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395980068, ''),
('eee60cd746fa7953d7f8db19410f9d1d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992758, ''),
('f047b4698187936b24b1e34c097d55b6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395989468, ''),
('f5b28fc279776e62358005998dd13fb3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981952, ''),
('f67cac9f18928b5684c9764487e35cb6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981198, ''),
('f7039992ee0d94ab882b80504e1fc29a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992650, ''),
('f714f484ab8033f90709b6bb5ce550f5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395985933, ''),
('f72213cf8e7f011482c3f7c6bf914ef2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395985914, ''),
('f7c2e282a33267733bf2aca9a12b277a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987598, ''),
('f7f78c0181a70e6055e3a04004893555', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395990749, ''),
('f98eb434c646affa6279fbd23bc651db', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992676, ''),
('fa4e20cfca7d6b7df4d58075f1c575d9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981738, ''),
('fb2afd0bdb2da804fa515ba44882b8fa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395981696, ''),
('fb69230a8337a2b7941eff940052b80a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395992710, ''),
('fb79be2ed8b73d947eb7911e739a77bf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395986828, ''),
('ff141d5e08dc8392f62cd01c5c8f1c21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395987213, ''),
('ff45ff5126855aa961cb1510a1c362db', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1395990758, '');

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
(1, 'ss');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(2, '::1', 'admin', '2014-03-27 15:34:25'),
(3, '::1', 'admin', '2014-03-27 15:34:31'),
(4, '::1', 'admin', '2014-03-27 15:34:35'),
(6, '127.0.0.1', 'BeoBeBoi', '2014-03-28 04:13:23'),
(7, '127.0.0.1', 'BeoBeBoi', '2014-03-28 04:13:27'),
(8, '127.0.0.1', 'BeoBeBoi', '2014-03-28 04:13:44'),
(9, '127.0.0.1', 'BeoBeBoi', '2014-03-28 04:13:47');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `img`, `create_date`) VALUES
(24, 'test', '<p>test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;</p>\n', 'C:\\fakepath\\ninhbinhcoop.PNG', 1395679821),
(25, 'test', '<p>test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;test&nbsp;</p>\n', '5fbc69ccf02975153cad5fbe48a4e046.PNG', 1395680459);

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
  `position` int(11) NOT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=37 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `title`, `description`, `content`, `exp_date`, `comission`, `id_cate`, `position`, `cost`, `img`) VALUES
(1, 'Bài học Marketing vô giá', '<p>1111</p>\n', '<p>111</p>\n', '14/2/2014', 20, 0, 0, '12000000', ''),
(5, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(6, 'ssss', '<p>sssssssssss</p>\n', '<p>ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;ssssssssssssss&nbsp;</p>\n', '28/03/2014', 10, 1, 1, '2000000', '36a04a55bc216d0ff784e2964946dfc1.jpg'),
(7, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(8, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(9, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(10, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(11, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(12, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(13, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(14, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(15, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(16, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(17, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(18, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(19, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(20, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(21, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(22, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(23, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(24, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(25, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(26, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(27, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(28, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(29, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(30, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(31, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(32, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(33, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(34, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(35, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', ''),
(36, 'ssss ', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '<p>&nbsp;sss tets ch&uacute;ng t&ocirc;i test</p>\r\n', '29/3/2014', 10, 2, 1, '1000000', '');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE IF NOT EXISTS `province` (
  `provinceid` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`provinceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`provinceid`, `name`, `type`) VALUES
('01', 'Hà Nội', 'Thành Phố'),
('02', 'Hà Giang', 'Tỉnh'),
('04', 'Cao Bằng', 'Tỉnh'),
('06', 'Bắc Kạn', 'Tỉnh'),
('08', 'Tuyên Quang', 'Tỉnh'),
('10', 'Lào Cai', 'Tỉnh'),
('11', 'Điện Biên', 'Tỉnh'),
('12', 'Lai Châu', 'Tỉnh'),
('14', 'Sơn La', 'Tỉnh'),
('15', 'Yên Bái', 'Tỉnh'),
('17', 'Hòa Bình', 'Tỉnh'),
('19', 'Thái Nguyên', 'Tỉnh'),
('20', 'Lạng Sơn', 'Tỉnh'),
('22', 'Quảng Ninh', 'Tỉnh'),
('24', 'Bắc Giang', 'Tỉnh'),
('25', 'Phú Thọ', 'Tỉnh'),
('26', 'Vĩnh Phúc', 'Tỉnh'),
('27', 'Bắc Ninh', 'Tỉnh'),
('30', 'Hải Dương', 'Tỉnh'),
('31', 'Hải Phòng', 'Thành Phố'),
('33', 'Hưng Yên', 'Tỉnh'),
('34', 'Thái Bình', 'Tỉnh'),
('35', 'Hà Nam', 'Tỉnh'),
('36', 'Nam Định', 'Tỉnh'),
('37', 'Ninh Bình', 'Tỉnh'),
('38', 'Thanh Hóa', 'Tỉnh'),
('40', 'Nghệ An', 'Tỉnh'),
('42', 'Hà Tĩnh', 'Tỉnh'),
('44', 'Quảng Bình', 'Tỉnh'),
('45', 'Quảng Trị', 'Tỉnh'),
('46', 'Thừa Thiên Huế', 'Tỉnh'),
('48', 'Đà Nẵng', 'Thành Phố'),
('49', 'Quảng Nam', 'Tỉnh'),
('51', 'Quảng Ngãi', 'Tỉnh'),
('52', 'Bình Định', 'Tỉnh'),
('54', 'Phú Yên', 'Tỉnh'),
('56', 'Khánh Hòa', 'Tỉnh'),
('58', 'Ninh Thuận', 'Tỉnh'),
('60', 'Bình Thuận', 'Tỉnh'),
('62', 'Kon Tum', 'Tỉnh'),
('64', 'Gia Lai', 'Tỉnh'),
('66', 'Đắk Lắk', 'Tỉnh'),
('67', 'Đắk Nông', 'Tỉnh'),
('68', 'Lâm Đồng', 'Tỉnh'),
('70', 'Bình Phước', 'Tỉnh'),
('72', 'Tây Ninh', 'Tỉnh'),
('74', 'Bình Dương', 'Tỉnh'),
('75', 'Đồng Nai', 'Tỉnh'),
('77', 'Bà Rịa - Vũng Tàu', 'Tỉnh'),
('79', 'Hồ Chí Minh', 'Thành Phố'),
('80', 'Long An', 'Tỉnh'),
('82', 'Tiền Giang', 'Tỉnh'),
('83', 'Bến Tre', 'Tỉnh'),
('84', 'Trà Vinh', 'Tỉnh'),
('86', 'Vĩnh Long', 'Tỉnh'),
('87', 'Đồng Tháp', 'Tỉnh'),
('89', 'An Giang', 'Tỉnh'),
('91', 'Kiên Giang', 'Tỉnh'),
('92', 'Cần Thơ', 'Thành Phố'),
('93', 'Hậu Giang', 'Tỉnh'),
('94', 'Sóc Trăng', 'Tỉnh'),
('95', 'Bạc Liêu', 'Tỉnh'),
('96', 'Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `sale_off`
--

CREATE TABLE IF NOT EXISTS `sale_off` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `percent` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exp_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `sale_off`
--

INSERT INTO `sale_off` (`id`, `id_product`, `percent`, `img`, `exp_date`) VALUES
(1, 1, 10, '1111', '2014-03-29 00:00:00'),
(2, 5, 11, '122', '2014-03-29 00:00:00');

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
  `yahoo` varchar(255) COLLATE utf8_bin NOT NULL,
  `skype` varchar(255) COLLATE utf8_bin NOT NULL,
  `bank` varchar(255) COLLATE utf8_bin NOT NULL,
  `stk` varchar(255) COLLATE utf8_bin NOT NULL,
  `sex` int(11) NOT NULL,
  `province` int(11) NOT NULL,
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

INSERT INTO `users` (`id`, `username`, `full_name`, `phone`, `address`, `password`, `email`, `activated`, `yahoo`, `skype`, `bank`, `stk`, `sex`, `province`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`, `birthday`, `img`, `role`, `login_id`, `total_like`, `account_type`) VALUES
(1, 'giangbeo', 'Nguyễn Trường Giang', '01667039939', 'HCM', '$2a$08$av0xeUt7pYqEymtq0ENPN.65FaINVis/64LmuohuAdt8ND8exqVs2', 'nguyentruonggiang91@gmail.com', 1, '', '', '', '', 0, 79, 0, NULL, NULL, NULL, NULL, 'ad9147af77ea0a71cb1045eb8c144048', '127.0.0.1', '2014-03-28 08:57:11', '2014-03-21 08:25:47', '2014-03-28 07:57:11', '', '', 1, '', 0, 0),
(2, 'BeoBeBoi', 'Nguyên Trường Giang', '01667039939', 'HCM', '$2a$08$av0xeUt7pYqEymtq0ENPN.65FaINVis/64LmuohuAdt8ND8exqVs2', 'beobeboi91@gmail.com', 0, 's', 's', 'Vietcombank', '0341005245193', 0, 1, 0, NULL, NULL, NULL, NULL, 'ab37717509a2f5b5e6c4335e8e960710', '::1', '0000-00-00 00:00:00', '2014-03-27 16:59:43', '2014-03-28 04:13:34', '2014/03/05', '', 4, '', 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `user_product`
--

INSERT INTO `user_product` (`id`, `id_user`, `id_product`, `create_date`) VALUES
(13, 1, 1, 1395600943),
(14, 1, 6, 1395770910),
(15, 1, 5, 1395770917);

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
