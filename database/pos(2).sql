-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 26, 2014 at 01:21 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE IF NOT EXISTS `branches` (
  `id` int(200) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `store_name` varchar(100) NOT NULL,
  `store_city` varchar(50) NOT NULL,
  `store_state` varchar(50) NOT NULL,
  `store_zip` varchar(40) NOT NULL,
  `store_country` varchar(50) NOT NULL,
  `store_website` varchar(30) NOT NULL,
  `store_phone` varchar(15) NOT NULL,
  `store_email` varchar(100) NOT NULL,
  `store_fax` varchar(100) NOT NULL,
  `store_tax1` varchar(100) NOT NULL,
  `store_tax2` varchar(100) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `guid`, `store_name`, `store_city`, `store_state`, `store_zip`, `store_country`, `store_website`, `store_phone`, `store_email`, `store_fax`, `store_tax1`, `store_tax2`, `active_status`, `delete_status`, `deleted_by`) VALUES
(1, 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'PIZZA HUT', '', '', '', '', '', '', '', '', '', '', 1, 1, ''),
(2, 'BE4CB6FB-9D0F-457A-9D0F-D7948222EBB3', 'K F C', '', '', '', '', '', '', '', '', '', '', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `branches_x_payment_modes`
--

CREATE TABLE IF NOT EXISTS `branches_x_payment_modes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) DEFAULT NULL,
  `pay_id` varchar(100) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `guid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `added_by` int(100) NOT NULL,
  `deleted_by` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `guid`, `name`, `branch_id`, `active`, `active_status`, `delete_status`, `added_by`, `deleted_by`) VALUES
(1, 'cfd8b485f99e561408192c594f8c2e92', 'LG', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 1, 61, 61),
(2, '1642d900f6768119e3dd75bbf8ed0fc2', 'Nokia', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, 1, 61),
(3, '11d08dc2db3920364304c6ed1192b5ba', 'THOSHIBA', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, 1, 0),
(4, '0a1db6b7e58b53971b12790f10e27d60', 'Samsung', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, 1, 61),
(5, '90642ff56db4789380d00acae0f053fd', 'AXE', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, 61, 0),
(6, 'd270d314cf6ccee8c618495e9feba4ff', 'Mentos', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, 61, 0),
(7, 'a85e2c85b10bd213c8b876acfa8aa7a5', 'Silverex', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, 61, 0),
(8, '6a3fba30105e2894ff21a1bef6443300', 'LG', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, 61, 0),
(9, 'db336d9ef0d8a4b64a17cef1a0b91c6e', 'Notng', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 1, 61, 61),
(10, '99cb6ba01684b50fa56b573351b11b84', 'sasi', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 0, 61, 61),
(11, 'f2e56b486bcd555842563ec7b58c62c3', 'Onida1', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 0, 61, 61),
(12, '8974ee8c5efa331e1a241d5134d8a1d6', 'monish', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, 61, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `title` varchar(10) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `bday` int(20) NOT NULL,
  `mday` int(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `credit_limit` int(100) NOT NULL,
  `cdays` int(100) NOT NULL,
  `month_credit_bal` varchar(100) NOT NULL,
  `category_id` varchar(100) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `bank_location` varchar(50) NOT NULL,
  `website` varchar(100) NOT NULL,
  `cst` varchar(50) NOT NULL,
  `gst` varchar(50) NOT NULL,
  `tax_no` varchar(50) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `added_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `guid`, `branch_id`, `first_name`, `title`, `last_name`, `address`, `address2`, `bday`, `mday`, `city`, `state`, `zip`, `country`, `payment`, `credit_limit`, `cdays`, `month_credit_bal`, `category_id`, `comments`, `company_name`, `email`, `phone`, `account_number`, `bank_name`, `bank_location`, `website`, `cst`, `gst`, `tax_no`, `active`, `created_by`, `active_status`, `delete_status`, `added_by`, `deleted_by`) VALUES
(1, 'ut7utuy', '', '', '', '', '', '', 1, 1, '', '', '', '', '', 1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 1, 1, '', ''),
(2, 'rb6tser6nb5er6n5b5', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'jibi', 'Mr', 'gopi', '', '', 1, 1, '', '', '', '', '2', 1, 1, '0', '1', '', '', 'jibi344443@yahoo.com', '45747457', '', '', '', '', '', '', '', 1, 1, 1, 0, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(3, '0f7c80352b128f9a45d25e42d1ebd19e', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'jibi', 'Mr', 'gopi', '', '', 1, 1, '', '', '', '', '2', 1, 1, '0', '1', '', '', 'jibi344443@yahoo.com', '457457', '', '', '', '', '', '', '', 1, 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(4, '28e0bbea4b74ebc7dd397327ef8acd0c', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'jibi', 'Mr', 'gopi', '', '', 1, 1, '', '', '', '', '2', 1, 1, '0', '1', '', '', 'jibi344443@yahoo.com', '5474567', '', '', '', '', '', '', '', 1, 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(5, '315e6ee6f50a8fdfa949fdcf8918afb1', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'jibi', 'Mr', 'gopi', '', '', 1, 1, 'yuiyui', 'oiuoi', '', '', '2', 1, 1, '0', '2', '', '', 'jibi344443@yahoo.com', '547457457', '', '', '', '', '', '', '', 1, 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(6, '99ab67ac5a5630ab0aad7f95dd00d9dd', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'gopi', '1', 'papu', '78979', '', 1368316800, 1368403200, 'HSR Layout', '79879', '686509', 'india', 'caf6d38b8e02db86b3d41fd23a6439bb', 1200, 7987, '7987', '7879977979777987', '0', 'posnic', 'jibi@yahoo.com', '7795398584', 'ACT446546', '78979', '78979', 'www.posnic.com', '97987', '7987', '9878979', 1, 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(7, '63aba6eb627ce1811191c2d22399191d', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'Sridhar', '1', 'bala', '789789', '', 1390435200, 1390435200, '798', '798', '98798', '789', '', 89, 89, '89', '', '0', 'posnic', 'sridharkalaibala@gmail.com', '798798', '78789khkjhk', 'Fedaral', 'bangalore', 'www.posnic.com', 'Tuy66876', '687687', '687687', 1, 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(8, '5315c17449a7324783c45ae3632f7487', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'Sridhar', '1', 'bala', 'bangalore', '', 508204800, 1436918400, 'BDA', 'karnataka', '87979', 'india', 'cb22f3b1c17a6b1df9d2090e945f0364', 78978, 78, '7879', 'b07822de514011f2e7ffc12692033acb', '0', 'posnic', 'sridharkalaibala@gmail.com', '789879879', 'ACT789798', 'IDBI', 'HSR Layout', 'www.posnic.com', '7987987', '789798', '797897', 1, 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers_payment_type`
--

CREATE TABLE IF NOT EXISTS `customers_payment_type` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `added_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `customers_payment_type`
--

INSERT INTO `customers_payment_type` (`id`, `guid`, `type`, `branch_id`, `active`, `active_status`, `delete_status`, `added_by`, `deleted_by`) VALUES
(1, 'C56A2A7E-E8DE-43FD-BF05-1970CE5EC269', 'credit', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '', ''),
(2, '2639721dea1f5cd1c5557f41b4e65d46', 'Credit Only', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(3, '493fc9015775b69fb7b0c549a03cfc8a', 'cheques', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(4, '22b29efa97369324e345614ab68b773f', 'sdfgsd', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(5, '62913143b64724f3f2e19b611c0c52a1', 'dfgdf', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(6, 'caf6d38b8e02db86b3d41fd23a6439bb', 'Credit Only', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(7, 'cb22f3b1c17a6b1df9d2090e945f0364', 'Cash Only', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers_x_branches`
--

CREATE TABLE IF NOT EXISTS `customers_x_branches` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `branch_name` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `customer_active` int(11) NOT NULL,
  `customer_delete` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_category`
--

CREATE TABLE IF NOT EXISTS `customer_category` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `category_name` varchar(100) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `added_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `customer_category`
--

INSERT INTO `customer_category` (`id`, `guid`, `branch_id`, `category_name`, `active`, `active_status`, `delete_status`, `added_by`, `deleted_by`) VALUES
(1, '7879977979777987', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'C-123', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(2, 'b07822de514011f2e7ffc12692033acb', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'C-1233', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(3, 'b0913b800960821c61b9e7426cc3f1b8', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'Web sales1', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(4, 'bbb619417f5a8add548cdd6af3b7c71a', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'dsgsdgs', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(5, '50dd8794a73be791efc0f38b018a14ef', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'fgfgh', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '');

-- --------------------------------------------------------

--
-- Table structure for table `direct_grn`
--

CREATE TABLE IF NOT EXISTS `direct_grn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(200) NOT NULL,
  `supplier_id` varchar(200) NOT NULL,
  `exp_date` int(20) NOT NULL,
  `po_no` varchar(200) NOT NULL,
  `po_date` int(20) NOT NULL,
  `discount` varchar(200) NOT NULL,
  `discount_amt` varchar(200) NOT NULL,
  `freight` varchar(200) NOT NULL,
  `round_amt` varchar(200) NOT NULL,
  `total_items` varchar(200) NOT NULL,
  `total_amt` varchar(200) NOT NULL,
  `total_item_amt` varchar(200) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `order_cancel` int(11) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `order_status` int(11) NOT NULL,
  `received_status` int(11) NOT NULL,
  `expire_status` int(11) NOT NULL,
  `branch_id` varchar(200) NOT NULL,
  `added_by` varchar(200) NOT NULL,
  `deleted_by` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `direct_grn`
--

INSERT INTO `direct_grn` (`id`, `guid`, `supplier_id`, `exp_date`, `po_no`, `po_date`, `discount`, `discount_amt`, `freight`, `round_amt`, `total_items`, `total_amt`, `total_item_amt`, `remark`, `note`, `active`, `order_cancel`, `active_status`, `delete_status`, `order_status`, `received_status`, `expire_status`, `branch_id`, `added_by`, `deleted_by`) VALUES
(4, 'ebf4ed40b902b2c340d63ab72f67e690', 'e91054c7db987e18f232ffa506f49394', 1427155200, 'POSNIC-107', 1395619200, '', '0', '101', '102', '3', '78127.500', '77924.5', 'safasf', 'sadas', 1, 1, 1, 1, 1, 1, 1, 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(5, '44079c190e0e5b662592f13ad36abfaa', 'e91054c7db987e18f232ffa506f49394', 1395705600, 'POSNIC-1020', 1395705600, '1.2', '143.808', '100', '100', '2', '12040.192', '11984', 'test', 'test', 1, 1, 1, 1, 1, 1, 1, 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(6, '0ab4a8c8a6058f794aeb9019651d61f7', 'e91054c7db987e18f232ffa506f49394', 1395705600, 'POSNIC-D-GRN-1022', 1395705600, '', '0', '', '', '2', '4376.250', '4376.25', 'test', 'test', 1, 1, 1, 1, 1, 1, 1, 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '');

-- --------------------------------------------------------

--
-- Table structure for table `direct_grn_items`
--

CREATE TABLE IF NOT EXISTS `direct_grn_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(200) DEFAULT NULL,
  `order_id` varchar(200) NOT NULL,
  `branch_id` varchar(200) NOT NULL,
  `item` varchar(200) NOT NULL,
  `quty` varchar(100) NOT NULL,
  `received_quty` decimal(55,0) NOT NULL,
  `received_free` decimal(10,0) NOT NULL,
  `free` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `sell` varchar(100) NOT NULL,
  `mrp` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `discount_per` decimal(55,0) NOT NULL,
  `discount_amount` decimal(55,0) NOT NULL,
  `tax` decimal(55,0) NOT NULL,
  `date` int(39) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `deleted_by` varchar(200) NOT NULL,
  `added_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=128 ;

--
-- Dumping data for table `direct_grn_items`
--

INSERT INTO `direct_grn_items` (`id`, `guid`, `order_id`, `branch_id`, `item`, `quty`, `received_quty`, `received_free`, `free`, `cost`, `sell`, `mrp`, `amount`, `discount_per`, `discount_amount`, `tax`, `date`, `active`, `active_status`, `delete_status`, `deleted_by`, `added_by`) VALUES
(121, 'c094e3b44ebbac897371c6be86619f0c', 'ebf4ed40b902b2c340d63ab72f67e690', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '9d8439c7f35923f2397af1b7edadc670', '1000', '863', '54', '100', '45', '676', '967', '69750.000', '1', '450', '25200', 1395619201, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(122, '7ed8656f37feba8df3d7e2b58f8fb72e', 'ebf4ed40b902b2c340d63ab72f67e690', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'c3216f7d74d4adcf50901b8559d9a3bc', '90', '90', '100', '100', '45', '60', '70', '4050', '0', '0', '203', 1395619201, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(123, '1023a92ba308cee8a4d3aafb854b7839', 'ebf4ed40b902b2c340d63ab72f67e690', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'abc049b9d095c27843b114f02ac5f640', '89', '89', '100', '100', '56', '75', '78', '4934.160', '1', '50', '249', 1395619201, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(124, 'ea5893c049433e808c41ab6b09685d40', '44079c190e0e5b662592f13ad36abfaa', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '9d8439c7f35923f2397af1b7edadc670', '100', '0', '0', '10', '45', '676', '967', '7010.000', '0', '10', '2520', 1395705601, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(125, 'f9f3dca7697e747eece3e57923dbb9b5', '44079c190e0e5b662592f13ad36abfaa', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'abc049b9d095c27843b114f02ac5f640', '89', '0', '0', '1909', '56', '75', '78', '4984', '0', '10', '249', 1395705601, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(126, 'dd19b69eaa4bf19e0bedb6414c355372', '0ab4a8c8a6058f794aeb9019651d61f7', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '9d8439c7f35923f2397af1b7edadc670', '34', '0', '0', '34', '45', '676', '967', '2371.700', '1', '15', '857', 1395705601, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(127, '2cf43d843e38a415e18bfb175aee567a', '0ab4a8c8a6058f794aeb9019651d61f7', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'c3216f7d74d4adcf50901b8559d9a3bc', '45', '0', '0', '45', '45', '60', '70', '2025', '1', '20', '101', 1395705601, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4');

-- --------------------------------------------------------

--
-- Table structure for table `grn`
--

CREATE TABLE IF NOT EXISTS `grn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) NOT NULL,
  `po` varchar(255) NOT NULL,
  `grn_no` varchar(255) NOT NULL,
  `date` int(20) NOT NULL,
  `note` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `grn_status` int(11) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `added_by` varchar(255) NOT NULL,
  `deleted_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `grn`
--

INSERT INTO `grn` (`id`, `guid`, `branch_id`, `po`, `grn_no`, `date`, `note`, `remark`, `grn_status`, `active_status`, `delete_status`, `added_by`, `deleted_by`) VALUES
(29, '90d484b860e2ee7dd9ef0fced0703a4a', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '248c1912d1a9f30e645c2e00d2e0793f', 'POSNIC-GRN-1026', 1395792000, 'test', 'tes', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(30, '1557de3247cde673d04d0ded8bf12e02', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '83f87bcfc53cfb0d22c39ddb00d466c4', 'POSNIC-GRN-1028', 1395792000, 'test', 'test', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(31, '2ea941783895f29217db5b650a74271a', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '5c069f63b6e887d25e1b0eb32c6597e6', 'POSNIC-GRN-1030', 1395878400, 'test Note', 'Test Remark', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '');

-- --------------------------------------------------------

--
-- Table structure for table `grn_x_items`
--

CREATE TABLE IF NOT EXISTS `grn_x_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) NOT NULL,
  `grn` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `quty` decimal(55,0) NOT NULL,
  `free` decimal(55,0) NOT NULL,
  `active` int(255) NOT NULL,
  `active_status` int(255) NOT NULL,
  `delete_status` int(255) NOT NULL,
  `added_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `grn_x_items`
--

INSERT INTO `grn_x_items` (`id`, `guid`, `branch_id`, `grn`, `item`, `quty`, `free`, `active`, `active_status`, `delete_status`, `added_by`) VALUES
(54, '026fd1a12bfeff4a40697308b25c9449', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '90d484b860e2ee7dd9ef0fced0703a4a', '9d8439c7f35923f2397af1b7edadc670', '10000', '10', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(55, 'c14c63e3269ab0b32f198a89692937ab', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1557de3247cde673d04d0ded8bf12e02', '9d8439c7f35923f2397af1b7edadc670', '1005', '11', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(56, '4b2f73975d2fda5d9cd0e172604b2512', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1557de3247cde673d04d0ded8bf12e02', 'abc049b9d095c27843b114f02ac5f640', '5', '10', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(57, '7f313f4a4c9b7c484ffa7dc983b6110f', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '2ea941783895f29217db5b650a74271a', '9d8439c7f35923f2397af1b7edadc670', '1000', '10', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(58, '35c681e0d4a9489fca4dc276816799c5', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '2ea941783895f29217db5b650a74271a', 'c3216f7d74d4adcf50901b8559d9a3bc', '90', '10', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(59, '799c9c01ef1fb7293a7665867df9573c', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '2ea941783895f29217db5b650a74271a', 'abc049b9d095c27843b114f02ac5f640', '89', '10', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(200) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `ean_upc_code` varchar(255) NOT NULL,
  `barcode` varchar(100) NOT NULL,
  `category_id` varchar(100) NOT NULL,
  `depart_id` varchar(255) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `cost_price` decimal(65,0) NOT NULL,
  `mrp` decimal(65,0) NOT NULL,
  `tax_Inclusive` int(11) NOT NULL,
  `brand_id` varchar(100) NOT NULL,
  `item_type_id` varchar(100) NOT NULL,
  `selling_price` decimal(65,0) NOT NULL,
  `discount_amount` decimal(65,0) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tax_id` varchar(100) NOT NULL,
  `tax_area_id` varchar(100) NOT NULL,
  `upc_ean_code` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `added_by` varchar(255) DEFAULT NULL,
  `code_status` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `guid`, `code`, `ean_upc_code`, `barcode`, `category_id`, `depart_id`, `branch_id`, `supplier_id`, `name`, `description`, `cost_price`, `mrp`, `tax_Inclusive`, `brand_id`, `item_type_id`, `selling_price`, `discount_amount`, `start_date`, `end_date`, `tax_id`, `tax_area_id`, `upc_ean_code`, `location`, `deleted_by`, `active`, `active_status`, `delete_status`, `added_by`, `code_status`, `image`) VALUES
(8, 'c3216f7d74d4adcf50901b8559d9a3bc', 'IC-123', '', 'Bar-1990', '0f1208f8b8d972183bb16bb0443ddb5e', '', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'ceab8c7d14f12aaeec1dc19b3d81212a', 'Item 1', 'hjkhkhk', '45', '70', 0, 'cfd8b485f99e561408192c594f8c2e92', '', '60', '0', '2014-03-25 21:38:09', '0000-00-00 00:00:00', '2ba78d7500ac92e84953cbe019741703', '2d81a2d79b828aa9e3d109184961925a', 'BJRFE2322', '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 0, 'c3216f7d74d4adcf50901b8559d9a3bc1.jpg'),
(9, 'abc049b9d095c27843b114f02ac5f640', 'IC-122', '', 'Bar-1991', '0f1208f8b8d972183bb16bb0443ddb5e', '', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'ceab8c7d14f12aaeec1dc19b3d81212a', 'Item 2', 'dshdjhsf', '56', '78', 0, '0a1db6b7e58b53971b12790f10e27d60', '', '75', '0', '2014-03-25 21:38:10', '0000-00-00 00:00:00', '2ba78d7500ac92e84953cbe019741703', '2d81a2d79b828aa9e3d109184961925a', 'IBVGGF879879879', '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 0, 'abc049b9d095c27843b114f02ac5f640.jpg'),
(10, 'abyyc049b9d095c27843b114f02ac5f640', 'IC-124', '', 'Bar-1991', '0f1208f8b8d972183bb16bb0443ddb5e', '', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'ceab8c7d14f12aaeec1dc19b3d81212a', 'Item 2', 'dshdjhsf', '56', '78', 0, '1642d900f6768119e3dd75bbf8ed0fc2', '', '75', '0', '2014-03-25 21:38:10', '0000-00-00 00:00:00', '2ba78d7500ac92e84953cbe019741703', '2d81a2d79b828aa9e3d109184961925a', 'IBVGGF879879879', '', '', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 0, 'abyyc049b9d095c27843b114f02ac5f640.jpg'),
(11, 'ef92a1dc9701ac89a655927183a78d87', 'IC-126', '', '', '0f1208f8b8d972183bb16bb0443ddb5e', '', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '7988d76f85fb01646eb9d9b01530c460', 'Item 4', '87987', '12', '16', 0, '11d08dc2db3920364304c6ed1192b5ba', '', '15', '0', '2014-03-25 21:38:10', '0000-00-00 00:00:00', '2ba78d7500ac92e84953cbe019741703', '2d81a2d79b828aa9e3d109184961925a', 'BJRFE2322444', '', '', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 0, 'ef92a1dc9701ac89a655927183a78d87.jpg'),
(12, '23b6fb71c13f7a53235835584c0a600f', 'IC-  127', '', '', '0f1208f8b8d972183bb16bb0443ddb5e', '', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '2a4e7a8de41c967c9097b2e4a1a0e662', 'Item 5', 'dsafdgs', '45', '49', 0, '1642d900f6768119e3dd75bbf8ed0fc2', '', '48', '0', '2014-03-25 21:38:10', '0000-00-00 00:00:00', '2ba78d7500ac92e84953cbe019741703', '2d81a2d79b828aa9e3d109184961925a', 'BJRFE2322444', '', '', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 0, '23b6fb71c13f7a53235835584c0a600f.jpg'),
(13, 'bbd6c9542b588e703bf706c30e204777', 'IC-128', '', '', '0f1208f8b8d972183bb16bb0443ddb5e', '', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'ceab8c7d14f12aaeec1dc19b3d81212a', 'Item 9', '', '56', '59', 0, 'cfd8b485f99e561408192c594f8c2e92', '', '58', '0', '2014-03-25 21:38:10', '0000-00-00 00:00:00', '2ba78d7500ac92e84953cbe019741703', '2d81a2d79b828aa9e3d109184961925a', '', '', '', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 0, ''),
(14, 'c709663a0324fb6175b807eb730de052', 'IC-129', '', '', '0f1208f8b8d972183bb16bb0443ddb5e', '', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '2a4e7a8de41c967c9097b2e4a1a0e662', 'Item 12', '', '12', '34', 1, 'cfd8b485f99e561408192c594f8c2e92', '', '30', '0', '2014-03-25 21:38:10', '0000-00-00 00:00:00', '2ba78d7500ac92e84953cbe019741703', '2d81a2d79b828aa9e3d109184961925a', 'BJRFE2322444', '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 0, ''),
(15, '1844a38365bda6feea716ed97859fd31', 'zfdsgsdg', '', 'sdgsdgsg', '37bc41880fa0ca0de0fa2e9f37480ba0', '37bc41880fa0ca0de0fa2e9f37480ba0', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'ceab8c7d14f12aaeec1dc19b3d81212a', 'sdgsgsdg', '56', '32', '56', 1, 'a85e2c85b10bd213c8b876acfa8aa7a5', '', '56', '56', '2014-02-27 19:04:44', '0000-00-00 00:00:00', '2ba78d7500ac92e84953cbe019741703', '2d81a2d79b828aa9e3d109184961925a', '', 'asfaf', '', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 0, '1844a38365bda6feea716ed97859fd31.jpg'),
(16, '73f2dab62a83cece967625cad014230d', 'zfdsgsdgertw', '', 'sdgsdgsg', '37bc41880fa0ca0de0fa2e9f37480ba0', '37bc41880fa0ca0de0fa2e9f37480ba0', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'ceab8c7d14f12aaeec1dc19b3d81212a', 'sdgsgsdg', '56', '32', '56', 1, 'a85e2c85b10bd213c8b876acfa8aa7a5', '', '56', '56', '2014-01-21 18:13:45', '0000-00-00 00:00:00', '2ba78d7500ac92e84953cbe019741703', '2d81a2d79b828aa9e3d109184961925a', '', 'asfaf', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 0, ''),
(17, '9d8439c7f35923f2397af1b7edadc670', 'IC-12777', '', '8908098098', '44490e4607304eaaf6f9acaf170ff290', '44490e4607304eaaf6f9acaf170ff290', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '6148f274388f64b43123c3598c3fcf81', 'Apple', '877979', '45', '67', 1, 'a85e2c85b10bd213c8b876acfa8aa7a5', '', '676', '868', '2014-02-27 19:26:50', '2002-02-20 04:30:00', '4d24f165c31f73d0244244fefc770ff8', '2d81a2d79b828aa9e3d109184961925a', '', 'sdgsd', '', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 0, '9d8439c7f35923f2397af1b7edadc6701.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `items_category`
--

CREATE TABLE IF NOT EXISTS `items_category` (
  `id` int(200) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `category_name` varchar(100) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `added_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `items_category`
--

INSERT INTO `items_category` (`id`, `guid`, `category_name`, `branch_id`, `active`, `active_status`, `delete_status`, `added_by`, `deleted_by`) VALUES
(1, '0f1208f8b8d972183bb16bb0443ddb5e', 'balls', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(2, '4a70944370a2a575487e2ad0a5adae9d', 'pen', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(3, '44490e4607304eaaf6f9acaf170ff290', 'book', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(4, '37bc41880fa0ca0de0fa2e9f37480ba0', 'Goodnight', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(5, '7d964715c57d2df50df0a9d380c9da22', 'vicks', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(6, '5c3437e9dedbcacead642b41b4a1f214', 'weakily', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(7, '544f4c88a4008a5e58fc3fe5104afea9', 'Box', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(8, 'f1cbc6905e17586f09094db931bcf75e', 'soap', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(9, '981cbacdb1bd664698bf1803878909b6', 'CD', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(10, '402581a70ab59a35c0393cf2310b6f88', 'DVD', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(11, '24f1b9183166e5a887c2f882a00dd529', 'sasi12', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(12, 'a571815faaa09a1e6d575c9a5cf92548', 'sasi', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(13, '7fa9f5c245fc8ffccbeb3c0437155078', 'mobile phone', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '');

-- --------------------------------------------------------

--
-- Table structure for table `items_department`
--

CREATE TABLE IF NOT EXISTS `items_department` (
  `id` int(200) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `department_name` varchar(100) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `added_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `items_department`
--

INSERT INTO `items_department` (`id`, `guid`, `department_name`, `branch_id`, `active`, `active_status`, `delete_status`, `added_by`, `deleted_by`) VALUES
(1, '0f1208f8b8d972183bb16bb0443ddb5e', 'Non Veg', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(2, '4a70944370a2a575487e2ad0a5adae9d', 'Vegitable', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(3, '44490e4607304eaaf6f9acaf170ff290', 'Fruits', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(4, '37bc41880fa0ca0de0fa2e9f37480ba0', 'Medicine', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(5, '7d964715c57d2df50df0a9d380c9da22', 'vicks', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(6, '5c3437e9dedbcacead642b41b4a1f214', 'weakily', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(7, '544f4c88a4008a5e58fc3fe5104afea9', 'Box', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(8, 'f1cbc6905e17586f09094db931bcf75e', 'soap', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(9, '981cbacdb1bd664698bf1803878909b6', 'CD', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(10, '402581a70ab59a35c0393cf2310b6f88', 'DVD', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(11, '24f1b9183166e5a887c2f882a00dd529', 'sasi12', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(12, 'a571815faaa09a1e6d575c9a5cf92548', 'sasi', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(13, '7fa9f5c245fc8ffccbeb3c0437155078', 'mobile phone', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '');

-- --------------------------------------------------------

--
-- Table structure for table `items_setting`
--

CREATE TABLE IF NOT EXISTS `items_setting` (
  `id` int(200) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `item_id` varchar(100) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `min_q` varchar(50) NOT NULL,
  `max_q` varchar(50) NOT NULL,
  `sales` int(11) NOT NULL,
  `purchase` int(11) NOT NULL,
  `salses_return` int(11) NOT NULL,
  `purchase_return` int(11) NOT NULL,
  `allow_negative` int(11) NOT NULL,
  `tax_inclusive` int(11) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `set` int(11) NOT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `items_setting`
--

INSERT INTO `items_setting` (`id`, `guid`, `item_id`, `branch_id`, `min_q`, `max_q`, `sales`, `purchase`, `salses_return`, `purchase_return`, `allow_negative`, `tax_inclusive`, `updated_by`, `set`, `added_by`, `active`, `delete_status`, `active_status`) VALUES
(8, '8fd2f0b26e43692112039645d71f1577', 'c3216f7d74d4adcf50901b8559d9a3bc', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '0', '1000', 1, 1, 1, 1, 1, 0, '', 1, '', 0, 1, 1),
(9, '44d9cc0a561f2bd92a2a21e64d5c3c87', 'abc049b9d095c27843b114f02ac5f640', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '10', '10000', 1, 1, 1, 1, 1, 0, '', 1, '', 0, 1, 1),
(10, '467eba091599ff4e3b669dfd7c36f15e', 'ef92a1dc9701ac89a655927183a78d87', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '', '', 1, 1, 1, 1, 1, 1, '', 1, '', 1, 1, 0),
(11, '854e42db7afcc7526ae3356c86f6b571', '23b6fb71c13f7a53235835584c0a600f', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '', '', 1, 1, 1, 1, 1, 1, '', 1, '', 1, 1, 0),
(12, '467eba091599ff4e3b6699fd7c36f15e', 'abyyc049b9d095c27843b114f02ac5f640', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '', '', 1, 1, 1, 1, 1, 1, '', 1, '', 1, 1, 0),
(13, '86b3c04f58ec4a778f284a3e13e28a2b', 'bbd6c9542b588e703bf706c30e204777', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '', '', 1, 1, 1, 1, 1, 1, '', 1, '', 1, 1, 0),
(14, '8f28441d473f1b088b4688ed4ceb4f69', 'c709663a0324fb6175b807eb730de052', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '0', '0', 1, 0, 1, 1, 1, 1, '', 1, '', 0, 1, 1),
(15, 'd64ae1825d95015b3c71146a6d45d026', '1844a38365bda6feea716ed97859fd31', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '', '', 1, 1, 1, 1, 1, 1, '', 1, '', 1, 1, 0),
(16, '1bac78b33d524480614fed9f2997b0ab', '73f2dab62a83cece967625cad014230d', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '212', '12', 0, 1, 1, 1, 1, 1, '', 1, '', 0, 1, 1),
(17, '6f087cf2822b3aacef87b43d01713f61', '9d8439c7f35923f2397af1b7edadc670', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '', '', 1, 1, 1, 1, 1, 0, '', 1, '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_upc_ean_code`
--

CREATE TABLE IF NOT EXISTS `item_upc_ean_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `item_id` varchar(100) NOT NULL,
  `code` varchar(200) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `master_data`
--

CREATE TABLE IF NOT EXISTS `master_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `key` varchar(255) NOT NULL,
  `prefix` varchar(255) NOT NULL,
  `value2` varchar(200) NOT NULL,
  `max` varchar(250) NOT NULL,
  `branch_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `master_data`
--

INSERT INTO `master_data` (`id`, `guid`, `key`, `prefix`, `value2`, `max`, `branch_id`) VALUES
(1, 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'purchase_order', 'POSNIC-10', '1', '32', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3'),
(2, 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'grn', 'POSNIC-GRN-10', '1', '32', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3'),
(3, '276C-457A-BE4CB6FB-D7948222EBB3', 'direct_grn', 'POSNIC-D-GRN-10', '1', '23', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3'),
(4, '276C-457A-BE4CB6FBIJIBI-D7948222EBB3', 'purchase_invoice', 'INV-101', '1', '23', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `module_name` varchar(200) NOT NULL,
  `cate_id` varchar(200) NOT NULL,
  `added_date` int(20) NOT NULL,
  `deleted_date` int(11) NOT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `guid`, `module_name`, `cate_id`, `added_date`, `deleted_date`, `added_by`, `deleted_by`, `active_status`, `delete_status`) VALUES
(1, '80B0F0FD-B148-4C02-AFC7-7463D856714A', 'items', '80B0F0FD-B148-4C02-AF787C7-7463D856714', 1, 1, '102', '0', 1, 1),
(2, '892367F9-98AC-47B2-B6B7-C9268EBFFE87', 'users', '80B0F0FD-B148-4C02-AFC7-7463D85671412', 1, 1, '102', '0', 1, 1),
(3, 'FF2CD316-E154-4A6E-8A7E-6514365242EE', 'brands', '80B0F0FD-B148-4C02-AF787C7-7463D856714', 1, 1, '102', '0', 1, 1),
(4, '92ECECEE-9484-4941-BA0F-28EC165E4FF8', 'items_setting', '80B0F0FD-B148-4C02-AF787C7-7463D856714', 102, 0, '0', '0', 1, 1),
(5, '60715722-A689-412B-A13F-ECA29FF19523', 'item_code', '80B0F0FD-B148-4C02-AF787C7-7463D856714', 102, 0, '0', '0', 1, 1),
(6, 'FAECB8C6-1AFE-44E8-A654-087A43A93FFB', 'taxes', '80B0F0FD-B178748-4C02-AFC7-7463D856714A', 102, 0, '0', '0', 1, 1),
(7, 'C0920814-A3DE-48A1-8825-928D32BE0B1E', 'tax_commodity', '80B0F0FD-B178748-4C02-AFC7-7463D856714A', 102, 0, '0', '0', 1, 1),
(8, 'CAB43E25-264E-47B7-84D8-1E41583CA69E', 'items_category', '80B0F0FD-B148-4C02-AF787C7-7463D856714', 102, 0, '0', '0', 1, 1),
(9, 'D6BC7342-1CF1-4EC6-816C-6D53F9A5191B', 'tax_types', '80B0F0FD-B178748-4C02-AFC7-7463D856714A', 102, 0, '0', '0', 1, 1),
(10, 'B3A03076-14E9-4C0A-9B13-4F8DF9D6145D', 'taxes_area', '80B0F0FD-B178748-4C02-AFC7-7463D856714A', 102, 0, '0', '1', 1, 1),
(11, 'D33AF5EF-570D-403D-B967-A5B658675B06', 'suppliers', '80B0F0FD-B148-4C02-AFC7-7463D8567j8huy7', 102, 0, '0', '0', 1, 1),
(12, '9252FCEE-011A-425A-BB41-E9D5A5E7792A', 'suppliers_x_items', '80B0F0FD-B148-4C02-AFC7-7463D8567j8huy7', 102, 0, '0', '0', 1, 1),
(13, '5464B2EF-92D2-4430-B366-983D7590FFC4', 'customers', '9090B0F0FD-B148-4C02-AFC7-7463Dd8989856714A', 102, 0, '0', '0', 1, 1),
(14, '23B67A1A-0675-4DE9-98E3-7ACFA6637F25', 'customer_category', '9090B0F0FD-B148-4C02-AFC7-7463Dd8989856714A', 102, 0, '0', '0', 1, 1),
(15, 'DA79AE6E-7D46-4BB4-AD47-CD37F5BBB615', 'user_groupsci', '80B0F0FD-B148-4C02-AFC7-7463D85671412', 102, 0, '1', '1', 1, 1),
(16, '3AAFF903-73E6-4987-BFE1-8F24E268BDC9', 'branchCI', 'Iu878h0FD-B148-4C02-AFC7-7463D856714A', 102, 0, '0', '0', 1, 1),
(17, '6D825F4C-44E0-4CF4-8FD2-A5FEA57E8FC1', 'purchase_order', '80B900F0FD-B148-4C02-AFC7-7463D856714A', 102, 0, '0', '0', 1, 1),
(18, 'B299A7BB-7709-4B0B-966E-023F1CA77058', 'customers_payment_type', '9090B0F0FD-B148-4C02-AFC7-7463Dd8989856714A', 102, 0, '0', '0', 1, 1),
(19, 'B499A7BB-8709-4B0B-966E-023F1CA77058', 'purchase_order', '80B900F0FD-B148-4C02-AFC7-7463D856714A', 102, 0, '0', '0', 1, 1),
(21, 'CAB43E25-264TYE-47B7-84D8-1E41583CA69E', 'items_department', '80B0F0FD-B148-4C02-AF787C7-7463D856714', 102, 0, '0', '0', 1, 1),
(22, 'D33AF9080F-570D-403D-B967-A5B658675B0645', 'suppliers_category', '80B0F0FD-B148-4C02-AFC7-7463D8567j8huy7', 102, 0, '0', '0', 1, 1),
(23, '4C020FD-B148-4C02-AFC7-7463D856714A', 'sales_types', '4C020FD-B148-4C02-AFC7-7463D856714A', 102, 0, '0', '0', 1, 1),
(24, 'B499A7TWV889-7H8FSG-8709-023F-4B0B-966E-023F1CA77058-023', 'goods_receiving_note', '80B900F0FD-B148-4C02-AFC7-7463D856714A', 102, 0, '0', '0', 1, 1),
(25, 'B499A7BB-8709-023F-4B0B-966E-023F1CA77058-023', 'direct_grn', '80B900F0FD-B148-4C02-AFC7-7463D856714A', 102, 0, '0', '0', 1, 1),
(26, 'B499A7BB-7709-4B0B-966E-023F1CA77057', 'purchase_invoice', '80B900F0FD-B148-4C02-AFC7-7463D856714A', 102, 0, '0', '0', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules_category`
--

CREATE TABLE IF NOT EXISTS `modules_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(200) NOT NULL,
  `Category_name` varchar(100) NOT NULL,
  `no` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `modules_category`
--

INSERT INTO `modules_category` (`id`, `guid`, `Category_name`, `no`) VALUES
(3, '80B0F0FD-B148-4C02-AFC7-7463D85671412', 'users', 0),
(4, '80B0F0FD-B148-4C02-AF787C7-7463D856714', 'items', 0),
(5, '80B0F0FD-B178748-4C02-AFC7-7463D856714A', 'tax', 0),
(6, '9090B0F0FD-B148-4C02-AFC7-7463Dd8989856714A', 'customers', 0),
(7, '80B0F0FD-B148-4C02-AFC7-7463D8567j8huy7', 'suppliers', 0),
(8, '80B900F0FD-B148-4C02-AFC7-7463D856714A', 'purchase', 0),
(9, '4C020FD-B148-4C02-AFC7-7463D856714A', 'sales', 0),
(10, 'Iu878h0FD-B148-4C02-AFC7-7463D856714A', 'branches', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules_x_branches`
--

CREATE TABLE IF NOT EXISTS `modules_x_branches` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `module_id` varchar(100) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `added_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `modules_x_branches`
--

INSERT INTO `modules_x_branches` (`id`, `guid`, `branch_id`, `module_id`, `active_status`, `delete_status`, `added_by`, `deleted_by`) VALUES
(1, '892367F9-98AC-47B2-B6B7-C9268EBFFE87', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '892367F9-98AC-47B2-B6B7-C9268EBFFE87', 1, 1, '0', '0'),
(2, 'FF2CD316-E154-4A6E-8A7E-6514365242EE', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'FF2CD316-E154-4A6E-8A7E-6514365242EE', 1, 1, '0', '0'),
(3, '92ECECEE-9484-4941-BA0F-28EC165E4FF8', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '92ECECEE-9484-4941-BA0F-28EC165E4FF8', 1, 1, '0', '0'),
(4, '60715722-A689-412B-A13F-ECA29FF19523', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '60715722-A689-412B-A13F-ECA29FF19523', 1, 1, '0', '0'),
(5, 'FAECB8C6-1AFE-44E8-A654-087A43A93FFB', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'FAECB8C6-1AFE-44E8-A654-087A43A93FFB', 1, 1, '0', '0'),
(6, 'B3A03076-14E9-4C0A-9B13-4F8DF9D6145D', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'B3A03076-14E9-4C0A-9B13-4F8DF9D6145D', 1, 1, '0', '0'),
(7, 'CAB43E25-264E-47B7-84D8-1E41583CA69E', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'CAB43E25-264E-47B7-84D8-1E41583CA69E', 1, 1, '0', '0'),
(8, 'C0920814-A3DE-48A1-8825-928D32BE0B1E', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'C0920814-A3DE-48A1-8825-928D32BE0B1E', 1, 1, '0', '0'),
(9, 'D6BC7342-1CF1-4EC6-816C-6D53F9A5191B', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'D6BC7342-1CF1-4EC6-816C-6D53F9A5191B', 1, 1, '0', '0'),
(10, '80B0F0FD-B148-4C02-AFC7-7463D856714A', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '80B0F0FD-B148-4C02-AFC7-7463D856714A', 1, 1, '0', '0'),
(11, '80B0F0FD-B148-4C02-AFC7-7463D856714A', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '80B0F0FD-B148-4C02-AFC7-7463D856714Ass', 1, 1, '0', '0'),
(12, 'D33AF5EF-570D-403D-B967-A5B658675B06', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'D33AF5EF-570D-403D-B967-A5B658675B06', 1, 1, '0', '0'),
(13, '9252FCEE-011A-425A-BB41-E9D5A5E7792A', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '9252FCEE-011A-425A-BB41-E9D5A5E7792A', 1, 1, '0', '0'),
(14, '5464B2EF-92D2-4430-B366-983D7590FFC4', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '5464B2EF-92D2-4430-B366-983D7590FFC4', 1, 1, '0', '0'),
(15, '23B67A1A-0675-4DE9-98E3-7ACFA6637F25', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '23B67A1A-0675-4DE9-98E3-7ACFA6637F25', 1, 1, '0', '0'),
(16, 'DA79AE6E-7D46-4BB4-AD47-CD37F5BBB615', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'DA79AE6E-7D46-4BB4-AD47-CD37F5BBB615', 1, 1, '0', '0'),
(17, '3AAFF903-73E6-4987-BFE1-8F24E268BDC9', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '3AAFF903-73E6-4987-BFE1-8F24E268BDC9', 1, 1, '0', '0'),
(18, 'B299A7BB-7709-4B0B-966E-023F1CA77058', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'B299A7BB-7709-4B0B-966E-023F1CA77058', 1, 1, '0', '0'),
(19, 'B499A7BB-8709-4B0B-966E-023F1CA77058', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'B499A7BB-8709-4B0B-966E-023F1CA77058', 1, 1, '0', '0'),
(20, 'B499A7BB-7709-4B0B-966E-023F1CA77057', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'B499A7BB-7709-4B0B-966E-023F1CA77057', 1, 1, '0', '0'),
(21, 'B499A7BB-77DFSS09-4B0B-966E-023F1CA77057', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'CAB43E25-264TYE-47B7-84D8-1E41583CA69E', 1, 1, '0', '0'),
(22, 'B499A7BB-77DFSS09-4B0B-966E-023F1CA77057', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'D33AF9080F-570D-403D-B967-A5B658675B0645', 1, 1, '0', '0'),
(23, '4C020FD-B148-4C02-AFC7-7463D856714A057', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4C020FD-B148-4C02-AFC7-7463D856714A', 1, 1, '0', '0'),
(24, 'B499A7BB-8709-023F-4B0B-966E-023F1CA77058-023', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'B499A7BB-8709-023F-4B0B-966E-023F1CA77058-023', 1, 1, '0', '0'),
(25, 'B499A7BB-8709-023F-4B0B-966E-023F1CA77058-023', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'B499A7TWV889-7H8FSG-8709-023F-4B0B-966E-023F1CA77058-023', 1, 1, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `modules_x_permissions`
--

CREATE TABLE IF NOT EXISTS `modules_x_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(200) NOT NULL,
  `branch_id` varchar(200) NOT NULL,
  `user_group_id` varchar(200) NOT NULL,
  `module_id` varchar(200) NOT NULL,
  `permission` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=116 ;

--
-- Dumping data for table `modules_x_permissions`
--

INSERT INTO `modules_x_permissions` (`id`, `guid`, `branch_id`, `user_group_id`, `module_id`, `permission`) VALUES
(1, '4e732ced3463d06de0ca9a15b6153671', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', '892367F9-98AC-47B2-B6B7-C9268EBFFE87', 1111),
(2, '4e732ced3463d06de0ca9a15b6153672', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', 'FF2CD316-E154-4A6E-8A7E-6514365242EE', 1111),
(3, '4e732ced3463d06de0ca9a15b6153673', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', '92ECECEE-9484-4941-BA0F-28EC165E4FF8', 1111),
(4, '4e732ced3463d06de0ca9a15b6153674', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', '60715722-A689-412B-A13F-ECA29FF19523', 1111),
(5, '4e732ced3463d06de0ca9a15b6153675', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', 'FAECB8C6-1AFE-44E8-A654-087A43A93FFB', 1111),
(6, '4e732ced3463d06de0ca9a15b6153676', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', 'B3A03076-14E9-4C0A-9B13-4F8DF9D6145D', 1111),
(7, '4e732ced3463d06de0ca9a15b6153677', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', 'CAB43E25-264E-47B7-84D8-1E41583CA69E', 1111),
(8, '4e732ced3463d06de0ca9a15b6153678', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', 'C0920814-A3DE-48A1-8825-928D32BE0B1E', 1111),
(9, '4e732ced3463d06de0ca9a15b6153679', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', 'D6BC7342-1CF1-4EC6-816C-6D53F9A5191B', 1111),
(10, '4e732ced3463d06de0ca9a15b6153680', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', '80B0F0FD-B148-4C02-AFC7-7463D856714A', 1111),
(11, '4e732ced3463d06de0ca9a15b6153681', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', '80B0F0FD-B148-4C02-AFC7-7463D856714Ass', 1111),
(12, '4e732ced3463d06de0ca9a15b6153682', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', 'D33AF5EF-570D-403D-B967-A5B658675B06', 1111),
(13, '4e732ced3463d06de0ca9a15b6153683', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', '9252FCEE-011A-425A-BB41-E9D5A5E7792A', 1111),
(14, '4e732ced3463d06de0ca9a15b6153684', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', '5464B2EF-92D2-4430-B366-983D7590FFC4', 1111),
(15, '4e732ced3463d06de0ca9a15b6153685', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', '23B67A1A-0675-4DE9-98E3-7ACFA6637F25', 1111),
(16, '4e732ced3463d06de0ca9a15b6153686', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', 'DA79AE6E-7D46-4BB4-AD47-CD37F5BBB615', 1111),
(17, '4e732ced3463d06de0ca9a15b6153687', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', '3AAFF903-73E6-4987-BFE1-8F24E268BDC9', 1111),
(18, '4e732ced3463d06de0ca9a15b6153688', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', 'B299A7BB-7709-4B0B-966E-023F1CA77058', 1111),
(19, '4e732ced3463d06de0ca9a15b6153689', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', 'B499A7BB-8709-4B0B-966E-023F1CA77058', 1111),
(20, '4e732ced3463d06de0ca9a15b61536890', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677', 'B499A7BB-7709-4B0B-966E-023F1CA77057', 1111),
(21, '4e732ced3463d06de0ca9a15b61536891', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', '892367F9-98AC-47B2-B6B7-C9268EBFFE87', 1111),
(22, '4e732ced3463d06de0ca9a15b61536892', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', 'FF2CD316-E154-4A6E-8A7E-6514365242EE', 1111),
(23, '4e732ced3463d06de0ca9a15b61536893', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', '92ECECEE-9484-4941-BA0F-28EC165E4FF8', 1111),
(24, '4e732ced3463d06de0ca9a15b61536894', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', '60715722-A689-412B-A13F-ECA29FF19523', 1111),
(25, '4e732ced3463d06de0ca9a15b61536895', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', 'FAECB8C6-1AFE-44E8-A654-087A43A93FFB', 1111),
(26, '4e732ced3463d06de0ca9a15b61536896', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', 'B3A03076-14E9-4C0A-9B13-4F8DF9D6145D', 1111),
(27, '4e732ced3463d06de0ca9a15b61536897', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', 'CAB43E25-264E-47B7-84D8-1E41583CA69E', 1111),
(28, '4e732ced3463d06de0ca9a15b61536898', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', 'C0920814-A3DE-48A1-8825-928D32BE0B1E', 1111),
(29, '4e732ced3463d06de0ca9a15b61536899', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', 'D6BC7342-1CF1-4EC6-816C-6D53F9A5191B', 1111),
(30, '4e732ced3463d06de0ca9a15b615368100', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', '80B0F0FD-B148-4C02-AFC7-7463D856714A', 1111),
(31, '4e732ced3463d06de0ca9a15b615368101', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', '80B0F0FD-B148-4C02-AFC7-7463D856714Ass', 1111),
(32, '4e732ced3463d06de0ca9a15b615368102', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', 'D33AF5EF-570D-403D-B967-A5B658675B06', 1111),
(33, '4e732ced3463d06de0ca9a15b615368103', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', '9252FCEE-011A-425A-BB41-E9D5A5E7792A', 1111),
(34, '4e732ced3463d06de0ca9a15b615368104', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', '5464B2EF-92D2-4430-B366-983D7590FFC4', 1111),
(35, '4e732ced3463d06de0ca9a15b615368105', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', '23B67A1A-0675-4DE9-98E3-7ACFA6637F25', 1111),
(36, '4e732ced3463d06de0ca9a15b615368106', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', 'DA79AE6E-7D46-4BB4-AD47-CD37F5BBB615', 1111),
(37, '4e732ced3463d06de0ca9a15b615368107', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', '3AAFF903-73E6-4987-BFE1-8F24E268BDC9', 1111),
(38, '4e732ced3463d06de0ca9a15b615368108', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', 'B299A7BB-7709-4B0B-966E-023F1CA77058', 1111),
(39, '4e732ced3463d06de0ca9a15b615368109', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', 'B499A7BB-8709-4B0B-966E-023F1CA77058', 1111),
(40, '4e732ced3463d06de0ca9a15b6153681010', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', 'B499A7BB-7709-4B0B-966E-023F1CA77057', 1111),
(41, '4e732ced3463d06de0ca9a15b6153681011', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', '892367F9-98AC-47B2-B6B7-C9268EBFFE87', 1111),
(42, '4e732ced3463d06de0ca9a15b6153681012', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', 'FF2CD316-E154-4A6E-8A7E-6514365242EE', 1111),
(43, '4e732ced3463d06de0ca9a15b6153681013', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', '92ECECEE-9484-4941-BA0F-28EC165E4FF8', 1111),
(44, '4e732ced3463d06de0ca9a15b6153681014', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', '60715722-A689-412B-A13F-ECA29FF19523', 1111),
(45, '4e732ced3463d06de0ca9a15b6153681015', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', 'FAECB8C6-1AFE-44E8-A654-087A43A93FFB', 1111),
(46, '4e732ced3463d06de0ca9a15b6153681016', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', 'B3A03076-14E9-4C0A-9B13-4F8DF9D6145D', 1111),
(47, '4e732ced3463d06de0ca9a15b6153681017', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', 'CAB43E25-264E-47B7-84D8-1E41583CA69E', 1111),
(48, '4e732ced3463d06de0ca9a15b6153681018', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', 'C0920814-A3DE-48A1-8825-928D32BE0B1E', 1111),
(49, '4e732ced3463d06de0ca9a15b6153681019', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', 'D6BC7342-1CF1-4EC6-816C-6D53F9A5191B', 1111),
(50, '4e732ced3463d06de0ca9a15b6153681020', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', '80B0F0FD-B148-4C02-AFC7-7463D856714A', 1111),
(51, '4e732ced3463d06de0ca9a15b6153681021', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', '80B0F0FD-B148-4C02-AFC7-7463D856714Ass', 1111),
(52, '4e732ced3463d06de0ca9a15b6153681022', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', 'D33AF5EF-570D-403D-B967-A5B658675B06', 1111),
(53, '4e732ced3463d06de0ca9a15b6153681023', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', '9252FCEE-011A-425A-BB41-E9D5A5E7792A', 1111),
(54, '4e732ced3463d06de0ca9a15b6153681024', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', '5464B2EF-92D2-4430-B366-983D7590FFC4', 1111),
(55, '4e732ced3463d06de0ca9a15b6153681025', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', '23B67A1A-0675-4DE9-98E3-7ACFA6637F25', 1111),
(56, '4e732ced3463d06de0ca9a15b6153681026', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', 'DA79AE6E-7D46-4BB4-AD47-CD37F5BBB615', 1111),
(57, '4e732ced3463d06de0ca9a15b6153681027', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', '3AAFF903-73E6-4987-BFE1-8F24E268BDC9', 1111),
(58, '4e732ced3463d06de0ca9a15b6153681028', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', 'B299A7BB-7709-4B0B-966E-023F1CA77058', 1111),
(59, '4e732ced3463d06de0ca9a15b6153681029', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', 'B499A7BB-8709-4B0B-966E-023F1CA77058', 1111),
(60, '4e732ced3463d06de0ca9a15b6153681030', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', 'B499A7BB-7709-4B0B-966E-023F1CA77057', 1111),
(61, '4e732ced3463d06de0ca9a15b6153681031', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', '892367F9-98AC-47B2-B6B7-C9268EBFFE87', 1111),
(62, '4e732ced3463d06de0ca9a15b6153681032', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', 'FF2CD316-E154-4A6E-8A7E-6514365242EE', 1111),
(63, '4e732ced3463d06de0ca9a15b6153681033', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', '92ECECEE-9484-4941-BA0F-28EC165E4FF8', 1111),
(64, '4e732ced3463d06de0ca9a15b6153681034', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', '60715722-A689-412B-A13F-ECA29FF19523', 1111),
(65, '4e732ced3463d06de0ca9a15b6153681035', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', 'FAECB8C6-1AFE-44E8-A654-087A43A93FFB', 1111),
(66, '4e732ced3463d06de0ca9a15b6153681036', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', 'B3A03076-14E9-4C0A-9B13-4F8DF9D6145D', 1111),
(67, '4e732ced3463d06de0ca9a15b6153681037', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', 'CAB43E25-264E-47B7-84D8-1E41583CA69E', 1111),
(68, '4e732ced3463d06de0ca9a15b6153681038', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', 'C0920814-A3DE-48A1-8825-928D32BE0B1E', 1111),
(69, '4e732ced3463d06de0ca9a15b6153681039', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', 'D6BC7342-1CF1-4EC6-816C-6D53F9A5191B', 1111),
(70, '404e732ced3463d06de0ca9a15b61536810', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', '80B0F0FD-B148-4C02-AFC7-7463D856714A', 1111),
(71, '4e732ced3463d06de0ca9a15b6153681040', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', '80B0F0FD-B148-4C02-AFC7-7463D856714Ass', 1111),
(72, '4e732ced3463d06de0ca9a15b6153681041', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', 'D33AF5EF-570D-403D-B967-A5B658675B06', 1111),
(73, '4e732ced3463d06de0ca9a15b6153681042', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', '9252FCEE-011A-425A-BB41-E9D5A5E7792A', 1111),
(74, '4e732ced3463d06de0ca9a15b6153681043', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', '5464B2EF-92D2-4430-B366-983D7590FFC4', 1111),
(75, '4e732ced3463d06de0ca9a15b6153681044', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', '23B67A1A-0675-4DE9-98E3-7ACFA6637F25', 1111),
(76, '4e732ced3463d06de0ca9a15b6153681045', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', 'DA79AE6E-7D46-4BB4-AD47-CD37F5BBB615', 1111),
(77, '4e732ced3463d06de0ca9a15b6153681046', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', '3AAFF903-73E6-4987-BFE1-8F24E268BDC9', 1111),
(78, '4e732ced3463d06de0ca9a15b6153681047', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', 'B299A7BB-7709-4B0B-966E-023F1CA77058', 1111),
(79, '4e732ced3463d06de0ca9a15b6153681048', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', 'B499A7BB-8709-4B0B-966E-023F1CA77058', 1111),
(80, '4e732ced3463d06de0ca9a15b6153681049', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', 'B499A7BB-7709-4B0B-966E-023F1CA77057', 1111),
(81, '4e732ced3463d06de0ca9a15b6153681050', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', '892367F9-98AC-47B2-B6B7-C9268EBFFE87', 1111),
(82, '4e732ced3463d06de0ca9a15b6153681051', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'FF2CD316-E154-4A6E-8A7E-6514365242EE', 1111),
(83, '4e732ced3463d06de0ca9a15b6153681052', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', '92ECECEE-9484-4941-BA0F-28EC165E4FF8', 1111),
(84, '4e732ced3463d06de0ca9a15b6153681053', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', '60715722-A689-412B-A13F-ECA29FF19523', 1111),
(85, '4e732ced3463d06de0ca9a15b6153681054', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'FAECB8C6-1AFE-44E8-A654-087A43A93FFB', 1111),
(86, '4e732ced3463d06de0ca9a15b6153681055', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'B3A03076-14E9-4C0A-9B13-4F8DF9D6145D', 1111),
(87, '4e732ced3463d06de0ca9a15b6153681056', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'CAB43E25-264E-47B7-84D8-1E41583CA69E', 1111),
(88, '4e732ced3463d06de0ca9a15b6153681057', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'C0920814-A3DE-48A1-8825-928D32BE0B1E', 1111),
(89, '4e732ced3463d06de0ca9a15b6153681058', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'D6BC7342-1CF1-4EC6-816C-6D53F9A5191B', 1111),
(90, '4e732ced3463d06de0ca9a15b6153681059', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', '80B0F0FD-B148-4C02-AFC7-7463D856714A', 1111),
(91, '4e732ced3463d06de0ca9a15b6153681060', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', '80B0F0FD-B148-4C02-AFC7-7463D856714Ass', 1111),
(92, '4e732ced3463d06de0ca9a15b6153681061', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'D33AF5EF-570D-403D-B967-A5B658675B06', 1111),
(93, '4e732ced3463d06de0ca9a15b6153681062', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', '9252FCEE-011A-425A-BB41-E9D5A5E7792A', 1111),
(94, '4e732ced3463d06de0ca9a15b6153681063', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', '5464B2EF-92D2-4430-B366-983D7590FFC4', 1111),
(95, '4e732ced3463d06de0ca9a15b6153681064', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', '23B67A1A-0675-4DE9-98E3-7ACFA6637F25', 1111),
(96, '4e732ced3463d06de0ca9a15b6153681065', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'DA79AE6E-7D46-4BB4-AD47-CD37F5BBB615', 1111),
(97, '4e732ced3463d06de0ca9a15b6153681066', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', '3AAFF903-73E6-4987-BFE1-8F24E268BDC9', 1111),
(98, '4e732ced3463d06de0ca9a15b6153681067', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'B299A7BB-7709-4B0B-966E-023F1CA77058', 1111),
(99, '4e732ced3463d06de0ca9a15b6153681068', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'B499A7BB-8709-4B0B-966E-023F1CA77058', 1111),
(100, '4e732ced3463d06de0ca9a15b6153681069', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'B499A7BB-7709-4B0B-966E-023F1CA77057', 1111),
(101, '4e732ced3463d06de0ca9a15b615368100', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', 'CAB43E25-264TYE-47B7-84D8-1E41583CA69E', 1111),
(102, '4e732ced3463d06de0ca9a15b6153681001', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', 'CAB43E25-264TYE-47B7-84D8-1E41583CA69E', 1111),
(103, '4e732ced3463d06de0ca9a15b615368100', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', 'CAB43E25-264TYE-47B7-84D8-1E41583CA69E', 1111),
(104, '410989e732ced3463d06de0ca9a15b615368100', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', 'D33AF9080F-570D-403D-B967-A5B658675B0645', 1111),
(105, '478732ced3463d06de0ca9a15b6153681001', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', 'D33AF9080F-570D-403D-B967-A5B658675B0645', 1111),
(106, '412732ced3463d06de0ca9a15b615368100', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', 'D33AF9080F-570D-403D-B967-A5B658675B0645', 1111),
(107, '410989e732ced3463d06de0ca9a15b615368100', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', '4C020FD-B148-4C02-AFC7-7463D856714A', 1111),
(108, '478732ced3463d06de0ca9a15b6153681001', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', '4C020FD-B148-4C02-AFC7-7463D856714A', 1111),
(109, '412732ced3463d06de0ca9a15b615368100', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', '4C020FD-B148-4C02-AFC7-7463D856714A', 1111),
(110, '410989e732ced3463d06de0ca9a15b615368100', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', 'B499A7BB-8709-023F-4B0B-966E-023F1CA77058-023', 111),
(111, '456678732ced3463d06de0ca9a15b6153681001', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', 'B499A7BB-8709-023F-4B0B-966E-023F1CA77058-023', 111),
(112, '412732HYU-8983463d06de0ca9a15b615368100', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', 'B499A7BB-8709-023F-4B0B-966E-023F1CA77058-023', 111),
(113, '410989e732YHYUced3463d06de0ca9a15b615368100', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec', 'B499A7TWV889-7H8FSG-8709-023F-4B0B-966E-023F1CA77058-023', 111),
(114, '456678732ced76876HFHgfh463d06de0ca9a15b6153681001', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f', 'B499A7TWV889-7H8FSG-8709-023F-4B0B-966E-023F1CA77058-023', 111),
(115, '412732HYU-8983463d06de0ca9a15b615368100-68768ghgjh', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd', 'B499A7TWV889-7H8FSG-8709-023F-4B0B-966E-023F1CA77058-023', 111);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_invoice`
--

CREATE TABLE IF NOT EXISTS `purchase_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(200) NOT NULL,
  `po` varchar(200) NOT NULL,
  `invoice` varchar(200) NOT NULL,
  `date` int(20) NOT NULL,
  `grn` varchar(255) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `order_status` int(11) NOT NULL,
  `branch_id` varchar(200) NOT NULL,
  `added_by` varchar(200) NOT NULL,
  `deleted_by` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_invoice_items`
--

CREATE TABLE IF NOT EXISTS `purchase_invoice_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(200) NOT NULL,
  `invoice_id` varchar(200) NOT NULL,
  `branch_id` varchar(200) NOT NULL,
  `item` varchar(200) NOT NULL,
  `quty` varchar(100) NOT NULL,
  `free` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `sell` varchar(100) NOT NULL,
  `mrp` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `date` int(39) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `deleted_by` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE IF NOT EXISTS `purchase_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(200) NOT NULL,
  `supplier_id` varchar(200) NOT NULL,
  `exp_date` int(20) NOT NULL,
  `po_no` varchar(200) NOT NULL,
  `po_date` int(20) NOT NULL,
  `discount` varchar(200) NOT NULL,
  `discount_amt` varchar(200) NOT NULL,
  `freight` varchar(200) NOT NULL,
  `round_amt` varchar(200) NOT NULL,
  `total_items` varchar(200) NOT NULL,
  `total_amt` varchar(200) NOT NULL,
  `total_item_amt` varchar(200) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `order_cancel` int(11) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `order_status` int(11) NOT NULL,
  `grn_status` int(11) NOT NULL,
  `received_status` int(11) NOT NULL,
  `expire_status` int(11) NOT NULL,
  `branch_id` varchar(200) NOT NULL,
  `added_by` varchar(200) NOT NULL,
  `deleted_by` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`id`, `guid`, `supplier_id`, `exp_date`, `po_no`, `po_date`, `discount`, `discount_amt`, `freight`, `round_amt`, `total_items`, `total_amt`, `total_item_amt`, `remark`, `note`, `active`, `order_cancel`, `active_status`, `delete_status`, `order_status`, `grn_status`, `received_status`, `expire_status`, `branch_id`, `added_by`, `deleted_by`) VALUES
(7, '248c1912d1a9f30e645c2e00d2e0793f', 'e91054c7db987e18f232ffa506f49394', 1395792000, 'POSNIC-1025', 1395792000, '', '', '100', '100', '1', '701700.000', '701500', 'test', 'test', 1, 1, 1, 1, 1, 1, 1, 0, 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(8, '83f87bcfc53cfb0d22c39ddb00d466c4', 'e91054c7db987e18f232ffa506f49394', 1395792000, 'POSNIC-1027', 1395792000, '1', '707.044', '89', '89', '2', '70175.356', '70704.4', 'test', 'test', 1, 1, 1, 1, 1, 1, 1, 1, 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(9, '5c069f63b6e887d25e1b0eb32c6597e6', 'e91054c7db987e18f232ffa506f49394', 1395878400, 'POSNIC-1029', 1395878400, '1', '787.335', '100', '100', '3', '78146.165', '78733.5', 'test remark', 'test note', 1, 1, 1, 1, 1, 1, 1, 1, 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(10, '767e183765b804c275b1521befd1efdc', 'e91054c7db987e18f232ffa506f49394', 1395878400, 'POSNIC-1031', 1395878400, '78', '3848.6448', '', '', '1', '1085.515', '4934.16', '', '', 1, 0, 1, 1, 1, 1, 1, 0, '0', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE IF NOT EXISTS `purchase_order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(200) DEFAULT NULL,
  `order_id` varchar(200) NOT NULL,
  `branch_id` varchar(200) NOT NULL,
  `item` varchar(200) NOT NULL,
  `quty` varchar(100) NOT NULL,
  `received_quty` decimal(55,0) NOT NULL,
  `received_free` decimal(10,0) NOT NULL,
  `free` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `sell` varchar(100) NOT NULL,
  `mrp` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `discount_per` decimal(55,0) NOT NULL,
  `discount_amount` decimal(55,0) NOT NULL,
  `tax` decimal(55,0) NOT NULL,
  `date` int(39) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `deleted_by` varchar(200) NOT NULL,
  `added_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=136 ;

--
-- Dumping data for table `purchase_order_items`
--

INSERT INTO `purchase_order_items` (`id`, `guid`, `order_id`, `branch_id`, `item`, `quty`, `received_quty`, `received_free`, `free`, `cost`, `sell`, `mrp`, `amount`, `discount_per`, `discount_amount`, `tax`, `date`, `active`, `active_status`, `delete_status`, `deleted_by`, `added_by`) VALUES
(121, 'c094e3b44ebbac897371c6be86619f0c', 'ebf4ed40b902b2c340d63ab72f67e690', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '9d8439c7f35923f2397af1b7edadc670', '1000', '863', '54', '100', '45', '676', '967', '69750.000', '1', '450', '25200', 1395619201, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(122, '7ed8656f37feba8df3d7e2b58f8fb72e', 'ebf4ed40b902b2c340d63ab72f67e690', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'c3216f7d74d4adcf50901b8559d9a3bc', '90', '90', '100', '100', '45', '60', '70', '4050', '0', '0', '203', 1395619201, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(123, '1023a92ba308cee8a4d3aafb854b7839', 'ebf4ed40b902b2c340d63ab72f67e690', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'abc049b9d095c27843b114f02ac5f640', '89', '89', '100', '100', '56', '75', '78', '4934.160', '1', '50', '249', 1395619201, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(124, 'ea5893c049433e808c41ab6b09685d40', '44079c190e0e5b662592f13ad36abfaa', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '9d8439c7f35923f2397af1b7edadc670', '100', '2', '2', '10', '45', '676', '967', '7010.000', '0', '10', '2520', 1395705601, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(125, 'f9f3dca7697e747eece3e57923dbb9b5', '44079c190e0e5b662592f13ad36abfaa', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'abc049b9d095c27843b114f02ac5f640', '89', '2', '2', '1909', '56', '75', '78', '4984', '0', '10', '249', 1395705601, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(126, '6b48431997446ef564b492047f0b001a', '2a0d170bcee0e21eceb75c6370a0e739', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'c3216f7d74d4adcf50901b8559d9a3bc', '10', '0', '0', '10', '45', '60', '70', '450', '0', '10', '23', 1395705601, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(127, '5607e9c063eb1bb4b18f1b6bf8a46dd5', '2a0d170bcee0e21eceb75c6370a0e739', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '9d8439c7f35923f2397af1b7edadc670', '100', '0', '0', '10', '451', '676', '967', '45100', '1', '451', '25256', 1395705601, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(128, '2fc8a8f0517500bd5800d2c4adf2f400', '2a0d170bcee0e21eceb75c6370a0e739', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'abc049b9d095c27843b114f02ac5f640', '10', '0', '0', '10', '56', '75', '78', '560', '1', '6', '28', 1395705601, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(129, '0c4757a7ce5be5b976bc231a2c684c63', '248c1912d1a9f30e645c2e00d2e0793f', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '9d8439c7f35923f2397af1b7edadc670', '10000', '-10000', '-10', '10', '45', '676', '967', '450000', '0', '500', '252000', 1395792001, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(130, '1f3daa2d531c0ef7763244d01207cc67', '83f87bcfc53cfb0d22c39ddb00d466c4', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '9d8439c7f35923f2397af1b7edadc670', '1000', '-5', '0', '11', '45', '676', '967', '45000', '0', '50', '25200', 1395792001, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(131, '0772d93e836e31d29273a1058c10a177', '83f87bcfc53cfb0d22c39ddb00d466c4', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'abc049b9d095c27843b114f02ac5f640', '10', '5', '0', '10', '56', '75', '78', '560', '1', '6', '28', 1395792001, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(132, 'fb7f59c455cdbb4a91340d1c65ba82ab', '5c069f63b6e887d25e1b0eb32c6597e6', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '9d8439c7f35923f2397af1b7edadc670', '1000', '1000', '10', '10', '45', '676', '967', '45000', '1', '450', '25200', 1395878401, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(133, '8706fa89824f4e6524357d0c57bf80bf', '5c069f63b6e887d25e1b0eb32c6597e6', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'c3216f7d74d4adcf50901b8559d9a3bc', '90', '90', '10', '10', '45', '60', '70', '4050', '1', '41', '203', 1395878401, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(134, 'bf9b16cbba82ca1e8cdf6f6fc7855d11', '5c069f63b6e887d25e1b0eb32c6597e6', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'abc049b9d095c27843b114f02ac5f640', '89', '89', '10', '10', '56', '75', '78', '4984', '0', '10', '249', 1395878401, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(135, '067d0d5e231560bc64cf82a40c828281', '767e183765b804c275b1521befd1efdc', '0', 'abc049b9d095c27843b114f02ac5f640', '89', '0', '0', '89', '56', '75', '78', '4984', '1', '50', '249', 1395878400, 1, 1, 1, '', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4');

-- --------------------------------------------------------

--
-- Table structure for table `sales_types`
--

CREATE TABLE IF NOT EXISTS `sales_types` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `added_by` int(100) NOT NULL,
  `deleted_by` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `sales_types`
--

INSERT INTO `sales_types` (`id`, `guid`, `name`, `branch_id`, `active`, `active_status`, `delete_status`, `added_by`, `deleted_by`) VALUES
(1, 'cfd8b485f99e561408192c594f8c2e92', 'LG', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 1, 61, 61),
(2, '1642d900f6768119e3dd75bbf8ed0fc2', 'Nokia', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, 1, 61),
(3, '11d08dc2db3920364304c6ed1192b5ba', 'THOSHIBA', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, 1, 0),
(4, '0a1db6b7e58b53971b12790f10e27d60', 'Samsung', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, 1, 61),
(5, '90642ff56db4789380d00acae0f053fd', 'AXE', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, 61, 0),
(6, 'd270d314cf6ccee8c618495e9feba4ff', 'Mentos', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, 61, 0),
(7, 'a85e2c85b10bd213c8b876acfa8aa7a5', 'Silverex', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, 61, 0),
(8, '6a3fba30105e2894ff21a1bef6443300', 'LG', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, 61, 0),
(9, 'db336d9ef0d8a4b64a17cef1a0b91c6e', 'Notng', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 1, 61, 61),
(10, '99cb6ba01684b50fa56b573351b11b84', 'sasi', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 0, 61, 61),
(11, 'f2e56b486bcd555842563ec7b58c62c3', 'Onida1', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 0, 61, 61);

-- --------------------------------------------------------

--
-- Table structure for table `sales_x_page_x_permission`
--

CREATE TABLE IF NOT EXISTS `sales_x_page_x_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `permission` int(11) NOT NULL,
  `user_group_id` varchar(100) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department` int(11) NOT NULL,
  `branch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `department`, `branch`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `quty` decimal(55,0) NOT NULL,
  `price` decimal(55,0) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `added_by` varchar(255) NOT NULL,
  `deleted_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `guid`, `branch_id`, `item`, `quty`, `price`, `active`, `active_status`, `delete_status`, `added_by`, `deleted_by`) VALUES
(4, 'de7d724347f17e5349764a49f869b307', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '9d8439c7f35923f2397af1b7edadc670', '4952', '676', 1, 1, 0, '', ''),
(5, '92452936fa7217cd784feba1a6ad2d10', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'c3216f7d74d4adcf50901b8559d9a3bc', '550', '60', 1, 1, 0, '', ''),
(6, '0e3ab27ee4da7aae96f7b0a3a7ac12f4', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'abc049b9d095c27843b114f02ac5f640', '500', '75', 1, 1, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE IF NOT EXISTS `stocks` (
  `id` int(200) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `branch_name` varchar(100) NOT NULL,
  `item_id` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `stock` varchar(100) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `item_active` int(11) NOT NULL,
  `item_delete` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `guid`, `branch_id`, `branch_name`, `item_id`, `price`, `stock`, `active_status`, `delete_status`, `item_active`, `item_delete`) VALUES
(14, '', '3', 'Mcdonalds', '21', '12', '91', 1, 1, 1, 1),
(15, '', '3', 'Mcdonalds', '22', '20', '200', 1, 1, 1, 1),
(16, '', '3', 'Mcdonalds', '23', '14', '20', 1, 1, 1, 1),
(17, '', '3', 'Mcdonalds', '24', '25', '30', 1, 1, 1, 1),
(18, '', '3', 'Mcdonalds', '25', '20', '100', 1, 1, 1, 1),
(19, '', '3', 'Mcdonalds', '26', '28', '1000', 1, 1, 1, 1),
(20, '', '3', 'Mcdonalds', '27', '10', '2', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stocks_history`
--

CREATE TABLE IF NOT EXISTS `stocks_history` (
  `id` int(200) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `branch_name` varchar(100) NOT NULL,
  `item_id` varchar(100) NOT NULL,
  `category_id` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `cost` varchar(100) NOT NULL,
  `stock` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `Quantity` varchar(100) NOT NULL,
  `date` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `stocks_history`
--

INSERT INTO `stocks_history` (`id`, `guid`, `branch_id`, `branch_name`, `item_id`, `category_id`, `supplier_id`, `added_by`, `cost`, `stock`, `price`, `Quantity`, `date`) VALUES
(5, '', '3', 'Mcdonalds', '21', '3', '8', '102', '10', '1000', '12', '12', '1369612800'),
(6, '', '3', 'Mcdonalds', '22', '3', '8', '102', '15', '2000', '20', '1', '1369612800'),
(7, '', '3', 'Mcdonalds', '23', '3', '8', '102', '11', '20', '14', '1', '1369612800'),
(8, '', '3', 'Mcdonalds', '24', '3', '8', '102', '21', '30', '25', '1', '1369612800'),
(9, '', '3', 'Mcdonalds', '25', '3', '8', '102', '18', '100', '20', '1', '1369612800'),
(10, '', '3', 'Mcdonalds', '26', '3', '8', '102', '26', '1000', '28', '2', '1369612800'),
(11, '', '3', 'Mcdonalds', '27', '3', '8', '102', '6', '2', '10', '1', '1369612800');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `company_name` varchar(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `credit_days` decimal(65,0) NOT NULL,
  `credit_limit` decimal(65,0) NOT NULL,
  `monthly_credit_bal` decimal(65,0) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `bank_location` varchar(200) NOT NULL,
  `cst_no` varchar(200) NOT NULL,
  `gst_no` varchar(200) NOT NULL,
  `tex_reg_no` varchar(200) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `deleted_by` varchar(255) DEFAULT NULL,
  `website` varchar(100) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `guid`, `company_name`, `first_name`, `last_name`, `category`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `comments`, `account_number`, `credit_days`, `credit_limit`, `monthly_credit_bal`, `bank_name`, `bank_location`, `cst_no`, `gst_no`, `tex_reg_no`, `active`, `active_status`, `delete_status`, `deleted_by`, `website`, `branch_id`, `added_by`) VALUES
(1, 'ceab8c7d14f12aaeec1dc19b3d81212a', 'JK', 'Jayesh1', 'gopi', '', 'julibeth34@yahoo.in', '7795390584', 'ewrter', 'wertwe', 'ewrtwe', 'reter', 'rterter', 'rtertre', 'sdfsdfsd', 'ew43643', '0', '0', '0', '', '', '', '', '', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 'sfgedtrere', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(2, '7988d76f85fb01646eb9d9b01530c460', 'iouoi', 'Manu', 'km', '', 'jibi@pluskb.com', '7795398584', 'hjhk', 'uyiuyi', 'iuyiuyi', 'iyiuyi', 'iyiuy', 'iiuyiuy', 'uouu', 'uoiuo', '0', '0', '0', '', '', '', '', '', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 'oiuoiu', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', ''),
(3, 'c76d55c21f9d4f577b26fba515a8066f', 'uytuy', 'Nijan', 'xjhk', '', 'jhkjhj@kjhkj.com', '7878797989', 'yiuy', 'iyiuy', 'iuyiuy', 'iuyiuy', 'iyiuy', 'iuyi', 'tutuyt', 'uytuy', '0', '0', '0', '', '', '', '', '', 1, 1, 0, '', 'tuytuy', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', ''),
(4, '6148f274388f64b43123c3598c3fcf81', 'yutu', 'Kiran', 'yutuy', '', 'ytghgu@jkjkl.com', '878687687', 'tuyt', 'uytuyt', 'uytuytuy', 'tuytu', 'yuytuytu', 'uytuyt', 'uytuy', 'uytuyt', '0', '0', '0', '', '', '', '', '', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 'uytu', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', ''),
(5, '2a4e7a8de41c967c9097b2e4a1a0e662', 'Champ', 'kumar', 'sasi', '', 'jibi007@gmail.com', '7795398500', '', '', '', '', '', '', '', '', '0', '0', '0', '', '', '', '', '', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(6, 'ab4b9cd0dc050345b7ab8365bd10b934', 'zdafas', 'asga', '0', '', '', '', '', '', '', '', '', '', 'asga', '26', '4326', '236', '26', '263', '26', '26', '26', '263', 1, 1, 0, '', 'asga', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(7, '223eecbb705cc68d67fdfa9a10509784', '', 'dfghd', 'dsgsdg', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '', '', '', '', '', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(8, '4d6d2651564e45b6b1ef0d1fe570e034', 'oiuoi', 'uoiu', 'oiuoi', '', 'jibi@yahoo.com', '98098098', 'uoiuoi', '', 'uoiu', 'oiuoi', 'uou', 'oiuoi', 'uoiuoi', '809', '908', '98', '980', '098', '09809', '8098', '098', '00', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 'uoiuoiuoi', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(9, '95749f66abfe71f2ee99482280456d9e', '', 'sdgsd', '', '', 'jibi@yahoo.com', '346346346', '', '', '', '', '', '', '', '', '0', '0', '0', '', '', '', '', '', 1, 1, 0, '', '', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(10, 'e91054c7db987e18f232ffa506f49394', 'uoiu', 'monish', 'km', 'b0913b800960821c61b9e7426cc3f1b8', 'monis@yahoo.com', '8798798', '43636436', '', 'uoiu', 'oiu', 'oiuoi', 'uoi', 'oiuiouoi', '987', '7897', '98798', '798', '7987', '897', '98798', '798', '7987', 1, 1, 0, '', 'uiuoi', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(11, '2852a4761247d450ccb765bd550c52e9', 'assfa', 'asfasfa', 'asfa', 'bbb619417f5a8add548cdd6af3b7c71a', 'jibi@yahoo.com', '34634634', 'asfas', '', '', '', '', '', '', '', '0', '0', '0', '', '', '', '', '', 1, 1, 1, '', 'fasfasf', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers_category`
--

CREATE TABLE IF NOT EXISTS `suppliers_category` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `category_name` varchar(100) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `added_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `suppliers_category`
--

INSERT INTO `suppliers_category` (`id`, `guid`, `branch_id`, `category_name`, `active`, `active_status`, `delete_status`, `added_by`, `deleted_by`) VALUES
(1, '7879977979777987', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'C-123', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(2, 'b07822de514011f2e7ffc12692033acb', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'C-1233', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(3, 'b0913b800960821c61b9e7426cc3f1b8', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'Web sales1', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(4, 'bbb619417f5a8add548cdd6af3b7c71a', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'dsgsdgs', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(5, '50dd8794a73be791efc0f38b018a14ef', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'fgfgh', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(6, 'd6ca613468ccc418994b923933d9de4f', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'dsfsdgsdgs', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers_x_branches`
--

CREATE TABLE IF NOT EXISTS `suppliers_x_branches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `branch_name` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `supplier_active` int(11) NOT NULL,
  `supplier_delete` int(11) NOT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `item_status` int(11) NOT NULL,
  `item_delete` int(11) NOT NULL,
  `item_deleted_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers_x_items`
--

CREATE TABLE IF NOT EXISTS `suppliers_x_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `item_id` varchar(100) NOT NULL,
  `cost` varchar(50) NOT NULL,
  `quty` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `mrp` varchar(100) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `item_active` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `deactive_item` int(11) NOT NULL,
  `item_delete` int(11) NOT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=115 ;

--
-- Dumping data for table `suppliers_x_items`
--

INSERT INTO `suppliers_x_items` (`id`, `guid`, `branch_id`, `supplier_id`, `item_id`, `cost`, `quty`, `price`, `mrp`, `discount`, `active_status`, `delete_status`, `item_active`, `active`, `deactive_item`, `item_delete`, `added_by`, `deleted_by`) VALUES
(90, '564058293ccfe916218495ddeeca91af', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '95749f66abfe71f2ee99482280456d9e', 'c3216f7d74d4adcf50901b8559d9a3bc', '45', '898', '60', '70', '', 1, 1, 1, 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(91, '460dd0914dcdb5ef542f58cb159fa2f8', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '95749f66abfe71f2ee99482280456d9e', 'abc049b9d095c27843b114f02ac5f640', '56', '1000', '75', '78', '', 1, 1, 1, 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(92, '3fef83c32216828aa38bde866d920e1b', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'ab4b9cd0dc050345b7ab8365bd10b934', 'c3216f7d74d4adcf50901b8559d9a3bc', '45', '78', '60', '70', '', 1, 1, 1, 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(93, '2c8bb0198196de48da522aafd6b8ffec', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'ab4b9cd0dc050345b7ab8365bd10b934', 'abc049b9d095c27843b114f02ac5f640', '56', '89', '75', '78', '', 1, 1, 1, 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(94, '52e147dbb43181e2912044c572d3bd8d', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'ab4b9cd0dc050345b7ab8365bd10b934', 'abyyc049b9d095c27843b114f02ac5f640', '56', '89', '75', '78', '', 1, 1, 1, 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(95, '43ed5f2e7ca513a3f8828424f16cc5d2', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'ab4b9cd0dc050345b7ab8365bd10b934', '23b6fb71c13f7a53235835584c0a600f', '45', '89', '48', '49', '', 1, 1, 1, 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(96, 'cad7cbb88465aaaf841a0823c6f087bd', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'ab4b9cd0dc050345b7ab8365bd10b934', 'ef92a1dc9701ac89a655927183a78d87', '12', '89', '15', '16', '', 1, 1, 1, 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(97, '65ea4c7c04c00e05cd8fb93ba0515595', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'ab4b9cd0dc050345b7ab8365bd10b934', '9d8439c7f35923f2397af1b7edadc670', '45', '89', '676', '967', '', 1, 1, 1, 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(98, '289b3c286932a1e99558dd06c8c3fb2d', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '7988d76f85fb01646eb9d9b01530c460', 'c3216f7d74d4adcf50901b8559d9a3bc', '45', '89', '60', '70', '', 1, 1, 1, 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(99, 'da66d87794f815c637fa5f5f9d057650', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'ab4b9cd0dc050345b7ab8365bd10b934', 'c3216f7d74d4adcf50901b8559d9a3bc', '45', '88', '60', '70', '', 1, 1, 1, 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(100, 'f0755ca636f0cc7ce14979c3cf1ce751', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'ab4b9cd0dc050345b7ab8365bd10b934', 'c3216f7d74d4adcf50901b8559d9a3bc', '45', '78', '60', '70', '', 1, 1, 1, 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(101, 'd227b20f47f52a1e155d5585ed3231ee', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'ab4b9cd0dc050345b7ab8365bd10b934', 'c3216f7d74d4adcf50901b8559d9a3bc', '45', '89', '60', '70', '', 1, 1, 1, 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(102, '7c81723818d9a4cf7378f4d206ab3268', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'ab4b9cd0dc050345b7ab8365bd10b934', 'abc049b9d095c27843b114f02ac5f640', '56', '89', '75', '78', '', 1, 1, 1, 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(103, 'd5c59c54d4e70b1c3498c3ae901e0d68', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '6148f274388f64b43123c3598c3fcf81', 'c3216f7d74d4adcf50901b8559d9a3bc', '45', '78', '60', '70', '', 1, 1, 1, 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(104, '60848e911ea8133d90e08201f041c41f', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'c76d55c21f9d4f577b26fba515a8066f', 'c3216f7d74d4adcf50901b8559d9a3bc', '45', '90', '60', '70', '', 1, 1, 1, 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(112, 'cb719fa8212effa9598a41c80812a55e', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'e91054c7db987e18f232ffa506f49394', 'c3216f7d74d4adcf50901b8559d9a3bc', '45', '90', '60', '70', '', 1, 1, 1, 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(113, '3d1d696943278577e8db87f2768e5251', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'e91054c7db987e18f232ffa506f49394', 'abc049b9d095c27843b114f02ac5f640', '56', '89', '75', '78', '', 1, 1, 1, 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(114, 'e867134cac9363ab141b88634b5a4cd5', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'e91054c7db987e18f232ffa506f49394', '9d8439c7f35923f2397af1b7edadc670', '45', '0', '676', '967', '', 1, 1, 1, 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers_x_page_x_permissions`
--

CREATE TABLE IF NOT EXISTS `suppliers_x_page_x_permissions` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `permission` int(11) NOT NULL,
  `user_group_id` varchar(100) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `suppliers_x_page_x_permissions`
--

INSERT INTO `suppliers_x_page_x_permissions` (`id`, `permission`, `user_group_id`, `branch_id`, `guid`) VALUES
(5, 0, 'b6d767d2f8ed5d21a44b0e5886680cb9', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', ''),
(6, 0, '37693cfc748049e45d87b8c7d8b9aacd', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', ''),
(7, 0, '1ff1de774005f8da13f42943881c655f', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', ''),
(8, 0, '8e296a067a37563370ded05f5a3bf3ec', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', ''),
(9, 111, '4e732ced3463d06de0ca9a15b6153677', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_contacts`
--

CREATE TABLE IF NOT EXISTS `supplier_contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `supplier` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `supplier_contacts`
--

INSERT INTO `supplier_contacts` (`id`, `guid`, `supplier`, `address`, `city`, `state`, `country`, `zip`, `email`, `phone`) VALUES
(1, '', 'ab4b9cd0dc050345b7ab8365bd10b934', 'dsgsd', 'ewtwe', 'wet', 'we', 'wet', 'jibi@yahoo.com', '773252'),
(2, '', 'ab4b9cd0dc050345b7ab8365bd10b934', 'fssdf', 'sfs', 'gsdds', 'gsgs', 'sdgsd', 'jibi@yahoo.com', '436346'),
(3, '', '223eecbb705cc68d67fdfa9a10509784', '', '', '', '', '', 'jibi@yahoo.com', '4563636'),
(4, '', '4d6d2651564e45b6b1ef0d1fe570e034', 'uoiuoi', 'uoiu', 'oiuoi', 'oiuoi', 'uou', 'jibi@yahoo.com', '98098098'),
(5, 'cea0bfb749c5d43e80f40bb65aac4861', '95749f66abfe71f2ee99482280456d9e', '', '', '', '', '', 'jibi@yahoo.com', '346346346'),
(35, '3b9ebf46a8ee2d8f53b903e449451176', 'e91054c7db987e18f232ffa506f49394', '43636436', 'uoiu', 'oiu', 'uoi', 'oiuoi', 'monis@yahoo.com', '8798798'),
(36, 'b990cf0458de84ff483f5d15982fb074', 'e91054c7db987e18f232ffa506f49394', 'asfasr32', '2353', '235', '231523', '2352', 'monis@yahoo.com', '342532512'),
(37, 'da4ebc4d9456e0c8e9dcf2c894f3c722', 'e91054c7db987e18f232ffa506f49394', '532534', '23463246', '6', '3463', '3246234', 'monish23@yahoo.com', '2535345'),
(38, 'd83ea3c708bbf1eff615903b01591ee0', 'e91054c7db987e18f232ffa506f49394', 'wreqtwqe', 'dsgfsd', 'ewtwe', '87687687', '9879879', 'monish@yahoo.com', '868768768'),
(40, 'f4812a96f7d9c42d87e66752e42b7756', '2852a4761247d450ccb765bd550c52e9', 'asfas', '', '', '', '', 'jibi@yahoo.com', '34634634');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE IF NOT EXISTS `taxes` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `value` varchar(100) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `added_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `guid`, `value`, `branch_id`, `type`, `active`, `active_status`, `delete_status`, `added_by`, `deleted_by`) VALUES
(1, '2ba78d7500ac92e84953cbe019741703', '5', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '9583a13924a8e28cc35fec0650a891af', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(2, '81757ff8617e8582c3647d14a4291233', '10', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '58f48b85eaa9afb4fb023de77e2c60c4', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(3, '4d24f165c31f73d0244244fefc770ff8', '56', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '9583a13924a8e28cc35fec0650a891af', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(4, '681401b2984eac4f8fb8e26ca609cb3f', '45', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '9583a13924a8e28cc35fec0650a891af', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(5, '2e32d79a754f2d48abcffe09ba276ed1', '23', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '58f48b85eaa9afb4fb023de77e2c60c4', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(6, '6a1975bfa7b8d6fc9ed428cd2b4d6a6e', '56', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '58f48b85eaa9afb4fb023de77e2c60c4', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(7, '8ecdb55b2931da3d861bfe66f9e1afa4', '8798', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4f9a30691955022263017ccddcae1f9d', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '');

-- --------------------------------------------------------

--
-- Table structure for table `taxes_area`
--

CREATE TABLE IF NOT EXISTS `taxes_area` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `added_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `taxes_area`
--

INSERT INTO `taxes_area` (`id`, `guid`, `name`, `branch_id`, `active`, `active_status`, `delete_status`, `added_by`, `deleted_by`) VALUES
(2, '2d81a2d79b828aa9e3d109184961925a', 'Kerala', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(3, 'eceb529a54922e9bd0ba3d305f9520ef', 'Karanada', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(4, '60800ab1992c2df5952c54bbf19f5601', 'Poona', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(5, '9248a89e16bcf4ad98a5c50c68ca1870', 'Tamil Nad', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(6, 'e0c7c85f03312c7855f7052f5d5cef62', 'Gova', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(7, '1c1e20bd4d0cab963f5580b76eba6abe', 'A P', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(8, '22bd7f0bf66b60cfc7bda6374d873fcf', 'Rajandhan', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(9, '810cae8bb4bfd17574f57308d3bf0062', 'Colombo', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(10, '85127b2d6897986a9175a142f154cd1a', 'kerala121', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(11, '7973b1abfb2466b4478c9d87476951cf', 'kerala121t', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(12, '28aa802577d2ca603ca011f9a3147881', 'sdafsd dsgfds', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4');

-- --------------------------------------------------------

--
-- Table structure for table `taxes_x_page_x_permissions`
--

CREATE TABLE IF NOT EXISTS `taxes_x_page_x_permissions` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `permission` int(11) NOT NULL,
  `user_group_id` varchar(100) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `taxes_x_page_x_permissions`
--

INSERT INTO `taxes_x_page_x_permissions` (`id`, `guid`, `permission`, `user_group_id`, `branch_id`) VALUES
(7, '', 0, 'b6d767d2f8ed5d21a44b0e5886680cb9', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3'),
(8, '', 0, '37693cfc748049e45d87b8c7d8b9aacd', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3'),
(9, '', 0, '1ff1de774005f8da13f42943881c655f', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3'),
(10, '', 0, '8e296a067a37563370ded05f5a3bf3ec', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3'),
(11, '', 1111, '4e732ced3463d06de0ca9a15b6153677', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3');

-- --------------------------------------------------------

--
-- Table structure for table `tax_commodity`
--

CREATE TABLE IF NOT EXISTS `tax_commodity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `schedule` varchar(100) NOT NULL,
  `tax_area` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `part` varchar(100) NOT NULL,
  `code` varchar(200) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `added_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tax_commodity`
--

INSERT INTO `tax_commodity` (`id`, `guid`, `branch_id`, `schedule`, `tax_area`, `description`, `part`, `code`, `tax`, `active`, `active_status`, `delete_status`, `added_by`, `deleted_by`) VALUES
(4, '4f160e2434fe0e0b01da625b4e31461c', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'simple', '2', 'south', 'Pasd', 'TND-123', '81757ff8617e8582c3647d14a4291233', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(5, 'd7226f693d76b072f1fdf50f3089339a', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'simple', '60800ab1992c2df5952c54bbf19f5601', 'North', 'Pasd', 'TND-124', '81757ff8617e8582c3647d14a4291233', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(6, 'd6e06e9618dc0c161df0150adb2743ea', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'Uttyty', '11', 'North', 'uiyi', 'TND-127', '4d24f165c31f73d0244244fefc770ff8', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '');

-- --------------------------------------------------------

--
-- Table structure for table `tax_types`
--

CREATE TABLE IF NOT EXISTS `tax_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `added_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tax_types`
--

INSERT INTO `tax_types` (`id`, `guid`, `type`, `branch_id`, `active`, `active_status`, `delete_status`, `added_by`, `deleted_by`) VALUES
(1, '9583a13924a8e28cc35fec0650a891af', 'Vat', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(2, '58f48b85eaa9afb4fb023de77e2c60c4', 'Normal', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(3, '65cfd0dbcc7053600d5da1f688b78c06', 'sasi', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(4, 'db4dd71b403ab32d0d732bbd9974433a', 'test1', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(5, 'ed1318118fb9ca6592cb0117d1d5a529', 'asfas', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4'),
(6, '4f9a30691955022263017ccddcae1f9d', 'Vat', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(7, '3acdb4df97f5635b08d72b343a438c80', 'Sales Tax', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', ''),
(8, 'd2567c03492d4abc80011e6829067a16', 'Income Tax', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `blood` varchar(10) NOT NULL,
  `age` int(2) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `image` varchar(50) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `active_status` int(10) NOT NULL DEFAULT '1',
  `created_by` varchar(100) NOT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `delete_status` int(10) NOT NULL,
  `user_type` int(11) NOT NULL,
  `default_branch` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `guid`, `username`, `password`, `first_name`, `last_name`, `address`, `sex`, `blood`, `age`, `city`, `state`, `zip`, `country`, `email`, `phone`, `image`, `dob`, `active_status`, `created_by`, `deleted_by`, `delete_status`, `user_type`, `default_branch`) VALUES
(3, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', 'slvpg', 'Male', '', 23, 'bangalore', 'karnada', '676809', 'india', 'jibi344443@yahoo.com', '7795398584', '10', '654739200', 0, '99', '0', 0, 2, '2'),
(7, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B2', 'usd111', '21232f297a57a5a743894a0e4a801fc3', 'jibi', 'gopi', 'slvpg', 'Male', '', 23, 'bangalore', 'karnada', '898989', 'india', 'jibigopi007@gmail.com', '7795398584', '10', '1380585600', 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 1, 1, ''),
(9, '5b3ca21b41dc20c46d4ff79651d2fe7b', 'usd113', '', 'leo', 'lara', 'HSR Layout', 'Male', '', 45, 'bangalore', 'karnataka', '89898', 'india', 'sridharkalaibala@gmail.com', '89798798', 'usd113', '0', 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 1, 1, ''),
(13, '61c3a401206bf9d1df1bd0ff01882503', 'usd116', '21232f297a57a5a743894a0e4a801fc3', 'anjali', 'kumar', 'iouoi', 'Male', '', 78, 'bangalore', 'karnataka', '879879', 'india', 'anjali@yahoo.com', '7879879', '10', '1384732800', 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 1, 1, ''),
(17, '33381e1d5e3a72b7f3153575657607c0', 'usd120', '', 'gopan', 'G K', '9879', 'Male', '', 98, '7987', '987987', '8798', '7987', 'guyguy@yuiy.cuoiu', '987987', 'usd120.png', '0', 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 1, 1, ''),
(18, '96d537948d967e7f7434d34b3ba69a2d', 'usd121', '21232f297a57a5a743894a0e4a801fc3', 'kumar', 'km', '8908', 'Male', '', 98, '0980', '8098', '0988098', '80980', 'ji@u8u79.iuo', '908098', 'usd150.png', '0', 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 1, 1, ''),
(20, '63105a63644dc6472718a009f0b48f83', 'usd123', '21232f297a57a5a743894a0e4a801fc3', 'pluskb', 'innovation', 'yuiyiu', 'Male', '', 34, 'iuyiu', 'uiy', 'uiyiuy', 'iuyiu', 'ji@u8u79.iuokjj', '8098098', 'usd150.png', '1384819200', 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 1, 1, ''),
(21, '18cae5b56a66bc25dd084643c5933a24', 'usd117', '', 'athira', 's nairuu', 'bangalore', 'Female', '', 20, 'bangalore', 'karanata', '77', 'india', 'athira@yahoo.com', '9947123735', 'usd117', '0', 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 1, 1, ''),
(22, 'd5598909146844d313a806e2cec6b38d', 'usd133', '', 'libin', 'kurain', 'manimala', 'Male', '0', 24, 'kanjirappally', 'kerala', '686509', 'india', 'libin@yahoo.com', '9947123745', '', '1436832000', 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 1, 1, ''),
(23, 'ea324fd6a349b9bb44d0eda2841b2956', 'usd134', '', 'libink', 'kurain', 'manimala', 'Male', 'o', 23, 'kanjirappally', 'kerala', '686509', 'india', 'libink@yahoo.com', '9947123746', 'usd134', '1412553600', 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 1, 1, ''),
(24, '33adb0793581fd1a815e8c4173322d20', 'usd135', '', 'shyama', 's m', 'kirsha vilasam', 'Female', 'o', 20, 'mundakkayam', 'kerala', '6867', 'india', 'shyma@yahoo.com', '9947123755', '', '0', 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 1, 1, ''),
(25, 'da90c927cc2b4f72c1b78701cdf1e5cd', 'usd146', '', 'akhil', 'kuamar', 'bangalore', 'Male', 'o', 34, 'bangalore', 'karnataka', '8980', 'india', 'akhil@yahoo.com', '7897979988', '', '1412553600', 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 1, 1, ''),
(26, '32aa9e4af8a534df538c19d51702cb9b', 'usd147', '', 'geethu', 'jibi', 'hsr layout', 'Female', 'ab', 20, 'bangalore', 'karnataka', '8998099', 'india9', 'geethunagamani7@gmail.com', '78897987', '', '741744000', 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 1, 1, ''),
(27, '3c371ab7186add43c0882d5b9cebdc42', 'usd155', '9e423cca0e2efab9aa09a13c778a8ced', 'ajith', 'nagamani', 'yiuyi', 'Male', 'o', 17, 'yuiyiu', 'uiyui', 'yuiyiu', 'iuyiu', 'ajith@yahoo.comn', '80980', 'usd155', '1367798400', 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 1, 1, ''),
(28, 'dd400aa6fb6b61475e48136d77b54cc3', 'usd159', '', 'thangam', 'khd', 'uiou', 'Male', '', 34, 'oiuoi', 'uoi', 'uio', 'uoi', 'thgamma@yahoo.com', '980890809', 'usd159', '1409961600', 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 1, 1, ''),
(29, 'b2236e21c8f49296cfff5ea08257e052', 'adyuu', '827ccb0eea8a706c4c34a16891f84e7b', 'ewtey', 'wery', '2353', 'Male', '', 43, '3256', '236', '236', '26', 'wet@twer.tyert', '43634', 'adyuu', '1368316800', 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', '', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `users_x_branches`
--

CREATE TABLE IF NOT EXISTS `users_x_branches` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `branch_name` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `user_delete` int(11) NOT NULL,
  `user_active` int(11) NOT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `admin` int(101) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `users_x_branches`
--

INSERT INTO `users_x_branches` (`id`, `guid`, `branch_id`, `branch_name`, `user_id`, `user_delete`, `user_active`, `deleted_by`, `admin`) VALUES
(1, '200C6130-78DB-44B5-890A-66E63D96411C', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'PIZZA HUT', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 1, 1, '0', 101),
(5, '200C6130-78DB-44B5-890A-66E63D96411C', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'PIZZA HUT', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B2', 0, 0, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 0),
(15, '76232052cd1b1f13c5a8b96ea3cc6d0e', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'PIZZA HUT', '61c3a401206bf9d1df1bd0ff01882503', 1, 1, '', 0),
(21, '6299383e1b5238f482bee73f7288bd8c', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'PIZZA HUT', '96d537948d967e7f7434d34b3ba69a2d', 0, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 0),
(23, 'd6bb633fda5ccc7fa215cc43ef4ce3ba', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'PIZZA HUT', '63105a63644dc6472718a009f0b48f83', 0, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 0),
(28, 'b2ca6402dc11e2c31f0a5b68da86f19d', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'PIZZA HUT', '5b3ca21b41dc20c46d4ff79651d2fe7b', 1, 1, '', 0),
(29, '69caca3b419b27498176fba5d270612e', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'PIZZA HUT', '33381e1d5e3a72b7f3153575657607c0', 0, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 0),
(33, '9c33e6cfaa9f96a91dd1c939da2b899d', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'PIZZA HUT', '33adb0793581fd1a815e8c4173322d20', 1, 1, '', 0),
(34, 'de76898e90bd037fd86044c5386086ad', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'PIZZA HUT', 'da90c927cc2b4f72c1b78701cdf1e5cd', 1, 1, '', 0),
(36, '4f4524e8c1fa1fca916649cde8af0a8f', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'PIZZA HUT', '3c371ab7186add43c0882d5b9cebdc42', 1, 1, '', 0),
(41, 'ee267cf2913b9d72d0f9136350be183c', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'PIZZA HUT', 'b2236e21c8f49296cfff5ea08257e052', 0, 1, '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B4', 0),
(43, 'ef1fc0c16d96d77617264b575d96bde1', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'PIZZA HUT', '32aa9e4af8a534df538c19d51702cb9b', 1, 1, '', 0),
(44, 'd6dd0f0c042a187196d5cd8860048fc4', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'PIZZA HUT', 'd5598909146844d313a806e2cec6b38d', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_x_user_groups`
--

CREATE TABLE IF NOT EXISTS `users_x_user_groups` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `user_group_id` varchar(100) NOT NULL,
  `depart_name` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `users_x_user_groups`
--

INSERT INTO `users_x_user_groups` (`id`, `guid`, `user_group_id`, `depart_name`, `user_id`, `branch_id`, `active_status`, `delete_status`) VALUES
(1, '', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'Art', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B2', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(2, '', '1ff1de774005f8da13f42943881c655f', 'stock', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B2', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(3, '', '8e296a067a37563370ded05f5a3bf3ec', 'Manager', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B2', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(32, 'c6b3418b75bb914c4dab576273de9593', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'Art', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B2', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(33, 'c257af59e96525511bbcf8638257894b', '1ff1de774005f8da13f42943881c655f', 'stock', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B2', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(34, 'd979f611356dbe2bf6fc950e1abee596', '8e296a067a37563370ded05f5a3bf3ec', 'Manager', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B2', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(35, '89cda09aa013cb62ace94dbfbd94344a', '4e732ced3463d06de0ca9a15b6153677', 'Account', '61F8FC7E-CB3F-4CC5-9EF2-4ED38DC992B2', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(39, '4899b511d189ef00735ac0acf3750b63', '4e732ced3463d06de0ca9a15b6153677', 'Account', '61c3a401206bf9d1df1bd0ff01882503', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(45, '580632b15e9cb692a958c68fc5171996', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'Art', '50957a0b409d55dea0123a25fee9ea24', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(59, '0c309a65cb456b35c6ab023aa74a796b', '37693cfc748049e45d87b8c7d8b9aacd', 'sales', '6d4d0e27e903ac395e95950166fb3268', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(60, '67a9be5914fd33c9eb86c52afd133f8c', '8e296a067a37563370ded05f5a3bf3ec', 'Manager', '6d4d0e27e903ac395e95950166fb3268', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(61, '0447245991b2d270145099fe257ac377', '8e296a067a37563370ded05f5a3bf3ec', 'Manager', '0', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(62, '381229e1616c95e746be9b5406a5da62', '37693cfc748049e45d87b8c7d8b9aacd', 'sales', '0', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(63, '3237e65979a9c9d81431f1484fa2486a', '1ff1de774005f8da13f42943881c655f', 'stock', '0', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(74, '666564538c3eb77ead203a297576ec3c', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'Art', '63105a63644dc6472718a009f0b48f83', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(82, '4b0c65ae4a6f1c94f0ce72777b812584', '8e296a067a37563370ded05f5a3bf3ec', 'Manager', '5b3ca21b41dc20c46d4ff79651d2fe7b', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(83, '05f2f52bc299436de3aa54aa6af05561', '8e296a067a37563370ded05f5a3bf3ec', 'Manager', '33381e1d5e3a72b7f3153575657607c0', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(84, 'e6ea59e61fe0895b880413a21ac242e8', '4e732ced3463d06de0ca9a15b6153677', 'Account', '33381e1d5e3a72b7f3153575657607c0', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(91, '417598b315fbb88e82d3bde026e04495', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'Art', '33adb0793581fd1a815e8c4173322d20', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(92, '17a6c0e9b4a7a61de9dd16c1405868dc', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'Art', 'da90c927cc2b4f72c1b78701cdf1e5cd', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(93, '7434769aa1f0abfa1870c9af66362218', '8e296a067a37563370ded05f5a3bf3ec', 'Manager', 'da90c927cc2b4f72c1b78701cdf1e5cd', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(95, '5334820de7d16b6ea2e0fb014e8abf28', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'Art', '3c371ab7186add43c0882d5b9cebdc42', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(101, '8efab7afc2c2841060d8b2d3483e4c03', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'Art', 'b2236e21c8f49296cfff5ea08257e052', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(102, '5f31f6fe4769981ecdcf9ae14adbd9a2', '8e296a067a37563370ded05f5a3bf3ec', 'Manager', 'b2236e21c8f49296cfff5ea08257e052', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(105, 'd2bf44a49abc46a9109406cf6f2065dd', '37693cfc748049e45d87b8c7d8b9aacd', 'sales', '32aa9e4af8a534df538c19d51702cb9b', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(106, '5639556e8541a1a079ac564243266671', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'Art', '32aa9e4af8a534df538c19d51702cb9b', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(107, 'e9f2b482e8c63e45a62168954125d0b3', '37693cfc748049e45d87b8c7d8b9aacd', 'sales', 'd5598909146844d313a806e2cec6b38d', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(108, '48b345c6f52345d9634f7fef3ce2cdbe', '1ff1de774005f8da13f42943881c655f', 'stock', 'd5598909146844d313a806e2cec6b38d', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `dep_name` varchar(100) NOT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `guid`, `dep_name`, `branch_id`, `active_status`, `delete_status`) VALUES
(22, 'b6d767d2f8ed5d21a44b0e5886680cb9', 'Art', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(23, '37693cfc748049e45d87b8c7d8b9aacd', 'sales', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 1, 1),
(24, '1ff1de774005f8da13f42943881c655f', 'stock', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1),
(25, '8e296a067a37563370ded05f5a3bf3ec', 'Manager', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1),
(26, '4e732ced3463d06de0ca9a15b6153677', 'Account', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups_x_branches`
--

CREATE TABLE IF NOT EXISTS `user_groups_x_branches` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `user_group_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `user_groups_x_branches`
--

INSERT INTO `user_groups_x_branches` (`id`, `guid`, `branch_id`, `user_group_id`) VALUES
(17, '', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', 'b6d767d2f8ed5d21a44b0e5886680cb9'),
(18, '', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '37693cfc748049e45d87b8c7d8b9aacd'),
(19, '', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '1ff1de774005f8da13f42943881c655f'),
(20, '', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '8e296a067a37563370ded05f5a3bf3ec'),
(21, '', 'BE4CB6FB-276C-457A-9D0F-D7948222EBB3', '4e732ced3463d06de0ca9a15b6153677');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;