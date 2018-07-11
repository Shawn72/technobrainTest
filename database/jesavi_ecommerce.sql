-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2018 at 04:28 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jesavi_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL,
  `brand_cat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `brand_cat`) VALUES
(1, 'Obia Naturals', 'Obia Products'),
(2, 'Vitale Hair Products', 'Vitale Products'),
(3, 'Olive & Body', 'Sera Cosmetics'),
(4, 'Coconut & Hibiscus', 'Shea Moisture Products'),
(5, 'Raw Shea Butter', 'Shea Moisture Products'),
(6, 'Yucca & Plantain', 'Shea Moisture Products'),
(7, 'African Black Soap', 'Shea Moisture Products'),
(8, 'Jamaican Black Castor Oil', 'Shea Moisture Products'),
(9, 'Super Fruit Complex', 'Shea Moisture Products'),
(10, 'Manuka Honey & Mafura Oil', 'Shea Moisture Products'),
(11, 'Tahitian Noni & Monoi', 'Shea Moisture Products'),
(12, 'Bar Soap', 'Shea Moisture Products'),
(13, 'Massage Oils', 'Shea Moisture Products'),
(14, 'Kids Hair', 'Shea Moisture Products'),
(15, 'Hand Cream', 'Shea Moisture Products'),
(17, '100% Virgin Coconut Oil', 'Shea Moisture Products'),
(18, 'Body Lotion', 'Shea Moisture Products'),
(19, 'Baby Products', 'Shea Moisture Products'),
(20, 'Mens Shave', 'Shea Moisture Products'),
(21, 'Argan Care', 'Sera Cosmetics'),
(22, 'Coconut Care', 'Sera Cosmetics'),
(23, 'Hair Oil', 'Shea Moisture Products'),
(24, 'Mielle Mongongo Oil', 'Mielle Organics'),
(25, 'Mielle Brazilian Curly Cocktail Curl Cream', 'Mielle Organics'),
(26, 'Mielle Babbasu Oil', 'Mielle Organics'),
(27, 'Mielle Honey & Ginger', 'Mielle Organics'),
(28, 'Mielle Sachi Inchi Tinys & Tots', 'Mielle Organics'),
(29, 'Mielle Oils', 'Mielle Organics'),
(30, 'Mielle Moisturizing Hair Milk', 'Mielle Organics'),
(31, 'Detangling Co-Wash', 'Mielle Organics'),
(32, 'Mielle Leave In Condition', 'Mielle Orgnanics'),
(33, 'Mielle Vitamins', 'Mielle Organics'),
(34, 'Jojoba Oil & Ucuuba Butter', 'Shea Moisture Products'),
(35, 'Superfruit Multi-Vitamin', 'Shea Moisture Products');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` varchar(100) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  `u_email` varchar(100) NOT NULL,
  `locality` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`, `u_email`, `locality`) VALUES
(24, '58289', '::1', 3, 1, 'sallygitonga@yahoo.com', 'Outside Nairobi'),
(25, '58289', '41.72.195.209', 1, 1, '', ''),
(31, '58289', '154.122.115.216', -1, 1, '', ''),
(39, '81078', '105.230.124.231', -1, 1, '', ''),
(40, '10581', '105.230.124.231', -1, 1, '', ''),
(49, '58289', '154.76.105.27', -1, 1, '', ''),
(50, '98138', '197.248.37.122', -1, 1, '', ''),
(51, '10581', '197.248.37.122', -1, 1, '', ''),
(52, '8489419109', '105.231.98.24', -1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(5, 'Mielle Organics'),
(3, 'Obia Naturals'),
(1, 'Sera Cosmetics'),
(2, 'Shea Moisture Products'),
(4, 'Vitale Products');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `col_id` int(11) NOT NULL,
  `collection_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`col_id`, `collection_name`) VALUES
(1, 'Shampoos'),
(2, 'Conditioners'),
(3, 'Coditioners & Co-Wash'),
(4, 'Body Creams'),
(5, 'Body Oils'),
(6, 'Body Wash'),
(7, 'Face Creams'),
(8, 'Leave-in Conditioners'),
(9, 'Lotions'),
(10, 'Hair Oils & Sprays'),
(11, 'Soaps'),
(12, 'Scrubs & Face Masks'),
(13, 'Detanglers'),
(14, 'Smoothies,Creams & Gel Scoufles');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `loc_id` int(11) NOT NULL,
  `locality` varchar(100) NOT NULL,
  `delivery_fees` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`loc_id`, `locality`, `delivery_fees`) VALUES
(1, 'Nairobi', '200.00'),
(2, 'Outside Nairobi', '400.00');

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_apitest`
--

CREATE TABLE `mpesa_apitest` (
  `id` int(11) NOT NULL,
  `TransactionType` varchar(200) NOT NULL,
  `TransID` varchar(200) NOT NULL,
  `ResultDesc` varchar(200) NOT NULL,
  `TransTime` datetime NOT NULL,
  `TransAmount` double NOT NULL,
  `BusinessShortCode` varchar(200) NOT NULL,
  `BillRefNumber` varchar(200) NOT NULL,
  `InvoiceNumber` varchar(200) NOT NULL,
  `OrgAccountBalance` double NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `MiddleName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_transactions`
--

CREATE TABLE `mpesa_transactions` (
  `trans_id` int(11) NOT NULL,
  `trans_account` varchar(100) NOT NULL,
  `trans_code` varchar(100) NOT NULL,
  `trans_merchant_code` varchar(100) NOT NULL,
  `trans_amount` double NOT NULL,
  `trans_mobile` varchar(100) NOT NULL,
  `trans_u_email` varchar(100) NOT NULL,
  `trans_date` date NOT NULL,
  `trans_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL,
  `tranx_date` date NOT NULL,
  `u_email` varchar(100) NOT NULL,
  `u_mobile` varchar(20) NOT NULL,
  `delivery_address` varchar(100) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `delivery_process` varchar(100) NOT NULL,
  `invoiced` tinyint(1) NOT NULL,
  `delivery_date` date NOT NULL,
  `delivery_fees` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`, `tranx_date`, `u_email`, `u_mobile`, `delivery_address`, `confirmed`, `delivery_process`, `invoiced`, `delivery_date`, `delivery_fees`) VALUES
(1, 30990, 1, 86442, 1, 'Cash On Delivery', 'Completed', '2017-11-08', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 1, 'delivering', 0, '0000-00-00', 0),
(2, 30990, 1, 49626, 1, 'Cash On Delivery', 'Completed', '2017-11-08', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 1, 'delivering', 0, '0000-00-00', 0),
(3, 30990, 1, 28558, 4, 'Cash On Delivery', 'Completed', '2017-11-08', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 1, 'delivering', 0, '0000-00-00', 0),
(4, 59299, 1, 91216, 1, 'Cash On Delivery', 'Completed', '2017-11-08', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 1, 'not_delivered', 0, '0000-00-00', 0),
(5, 59299, 1, 63616, 1, 'Cash On Delivery', 'Completed', '2017-11-08', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 1, 'not_delivered', 0, '0000-00-00', 0),
(6, 59299, 1, 44398, 1, 'Cash On Delivery', 'Completed', '2017-11-08', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 1, 'not_delivered', 0, '0000-00-00', 0),
(7, 16684, 1, 98138, 1, 'Cash On Delivery', 'Completed', '2017-11-08', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 1, 'delivering', 0, '0000-00-00', 0),
(8, 19350, 1, 95473, 600, 'Cash On Delivery', 'Completed', '2017-11-09', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, 'delivering', 0, '0000-00-00', 0),
(9, 19350, 1, 96552, 5, 'Cash On Delivery', 'Completed', '2017-11-09', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 1, 'delivering', 0, '0000-00-00', 0),
(13, 16161, 1, 28558, 1, 'Cash On Delivery', 'Completed', '2017-11-11', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, 'delivering', 0, '0000-00-00', 0),
(14, 16161, 1, 86442, 1, 'Cash On Delivery', 'Completed', '2017-11-11', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, 'delivering', 0, '0000-00-00', 0),
(15, 93388, 2, 86442, 1, 'Cash On Delivery', 'Completed', '2017-11-11', 'seanmbuvi5@gmail.com', '727088016', 'Kimbo', 0, '', 0, '0000-00-00', 0),
(16, 93388, 2, 28558, 3, 'Cash On Delivery', 'Completed', '2017-11-11', 'seanmbuvi5@gmail.com', '727088016', 'Kimbo', 0, '', 0, '0000-00-00', 0),
(17, 50799, 2, 28558, 1, 'Cash On Delivery', 'Completed', '2017-11-11', 'seanmbuvi5@gmail.com', '727088016', 'Kimbo', 0, '', 0, '0000-00-00', 0),
(18, 50799, 2, 58289, 1, 'Cash On Delivery', 'Completed', '2017-11-11', 'seanmbuvi5@gmail.com', '727088016', 'Kimbo', 0, '', 0, '0000-00-00', 0),
(19, 40706, 1, 88939, 1, 'Cash On Delivery', 'Completed', '2017-11-12', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 0),
(20, 67198, 1, 88939, 1, 'Cash On Delivery', 'Completed', '2017-11-12', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 0),
(21, 22163, 3, 21238, 3, 'Cash On Delivery', 'Completed', '2017-11-12', 'sallygitonga@yahoo.com', '722493552', 'Kileleshwa', 1, 'delivering', 0, '0000-00-00', 0),
(22, 22163, 3, 85189, 1, 'Cash On Delivery', 'Completed', '2017-11-12', 'sallygitonga@yahoo.com', '722493552', 'Kileleshwa', 1, 'delivering', 0, '0000-00-00', 0),
(23, 22163, 3, 14352, 1, 'Cash On Delivery', 'Completed', '2017-11-12', 'sallygitonga@yahoo.com', '722493552', 'Kileleshwa', 1, 'delivering', 0, '0000-00-00', 0),
(24, 2147483647, 1, 10581, 2, 'Cash On Delivery', 'Completed', '2017-11-26', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 0),
(25, 348263741, 1, 53459, 1, 'Cash On Delivery', 'Completed', '2017-11-26', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 1, 'not_delivered', 0, '0000-00-00', 0),
(26, 348263741, 1, 49626, 5, 'Cash On Delivery', 'Completed', '2017-11-26', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 0),
(27, 1281565380, 1, 66598, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 0),
(28, 1281565380, 1, 28558, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 0),
(29, 1281565380, 1, 95473, 4, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 0),
(30, 2147483647, 1, 58289, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 0),
(31, 2147483647, 1, 10581, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 0),
(32, 2147483647, 1, 64575, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 0),
(33, 2147483647, 1, 66598, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 0),
(34, 1425813334, 1, 2147483647, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 0),
(35, 2147483647, 1, 66598, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 0),
(36, 2147483647, 1, 81078, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 0),
(37, 2147483647, 3, 86409, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'sallygitonga@yahoo.com', '722493552', 'Kileleshwa', 0, '', 0, '0000-00-00', 0),
(38, 2147483647, 3, 96071, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'sallygitonga@yahoo.com', '722493552', 'Kileleshwa', 0, '', 0, '0000-00-00', 0),
(39, 2147483647, 3, 45742, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'sallygitonga@yahoo.com', '722493552', 'Kileleshwa', 0, '', 0, '0000-00-00', 0),
(40, 2147483647, 1, 45742, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 200),
(41, 2147483647, 1, 58289, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 200),
(42, 2147483647, 1, 28558, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 200),
(43, 2147483647, 1, 86442, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 200),
(44, 2147483647, 1, 58289, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 200),
(45, 2147483647, 1, 97838, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 200),
(46, 1775152900, 1, 66598, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 200),
(47, 1775152900, 1, 98138, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 200),
(48, 2147483647, 1, 42303, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 200),
(49, 2147483647, 1, 57538, 1, 'Cash On Delivery', 'Completed', '2017-11-27', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 200),
(50, 1221038177, 1, 58289, 1, 'Cash On Delivery', 'Completed', '2017-12-19', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 200),
(51, 1221038177, 1, 98138, 1, 'Cash On Delivery', 'Completed', '2017-12-19', 'shawnmbuvi@gmail.com', '727088016', 'kiu', 0, '', 0, '0000-00-00', 200),
(52, 2147483647, 6, 98138, 1, 'Cash On Delivery', 'Completed', '2018-01-17', 'seanmbuvi5@gmail.com', '727088016', 'Nairobi', 0, '', 0, '0000-00-00', 0),
(54, 2012834915, 6, 58289, 1, 'PesaPal', 'Completed', '2018-02-04', 'seanmbuvi5@gmail.com', '0727088016', 'Nairobi', 0, 'delivering', 0, '0000-00-00', 0),
(55, 2147483647, 6, 45742, 1, 'PesaPal', 'Completed', '2018-02-04', 'seanmbuvi5@gmail.com', '0727088016', 'Nairobi', 0, '', 0, '0000-00-00', 0),
(56, 2147483647, 6, 52271, 1, 'Cash On Delivery', 'Completed', '2018-02-07', 'seanmbuvi5@gmail.com', '727088016', 'Nairobi', 0, '', 0, '0000-00-00', 0),
(57, 2147483647, 6, 98138, 1, 'PesaPal', 'Completed', '2018-02-07', 'seanmbuvi5@gmail.com', '0727088016', 'Nairobi', 0, '', 0, '0000-00-00', 0),
(58, 285159973, 6, 66598, 1, 'PesaPal', 'Completed', '2018-02-10', 'seanmbuvi5@gmail.com', '0727088016', 'Nairobi', 1, 'not_delivered', 0, '0000-00-00', 0),
(59, 285159973, 6, 28558, 1, 'PesaPal', 'Completed', '2018-02-10', 'seanmbuvi5@gmail.com', '0727088016', 'Nairobi', 0, '', 0, '0000-00-00', 0),
(60, 1379246515, 6, 2147483647, 1, 'PesaPal', 'Completed', '2018-02-10', 'seanmbuvi5@gmail.com', '0727088016', 'Nairobi', 0, '', 0, '0000-00-00', 0),
(61, 2147483647, 6, 80764, 1, 'PesaPal', 'Completed', '2018-02-10', 'seanmbuvi5@gmail.com', '0727088016', 'Nairobi', 0, '', 0, '0000-00-00', 0),
(62, 2147483647, 6, 12415, 1, 'PesaPal', 'Completed', '2018-02-19', 'seanmbuvi5@gmail.com', '0727088016', 'Nairobi', 0, '', 0, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_totals`
--

CREATE TABLE `order_totals` (
  `od_id` int(11) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `total_cost` decimal(10,2) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_totals`
--

INSERT INTO `order_totals` (`od_id`, `order_id`, `total_cost`, `order_date`) VALUES
(1, '30990', '4050.00', '0000-00-00'),
(2, '59299', '7050.00', '0000-00-00'),
(3, '16684', '1500.00', '0000-00-00'),
(4, '19350', '13500.00', '0000-00-00'),
(5, '92471', '1500.00', '0000-00-00'),
(6, '52437', '650.00', '0000-00-00'),
(7, '16161', '1400.00', '0000-00-00'),
(8, '93388', '2700.00', '0000-00-00'),
(9, '50799', '3300.00', '0000-00-00'),
(10, '40706', '650.00', '0000-00-00'),
(11, '67198', '650.00', '0000-00-00'),
(12, '22163', '10700.00', '0000-00-00'),
(13, '6187745142', '5300.00', '0000-00-00'),
(14, '0348263741', '0.00', '0000-00-00'),
(15, '1281565380', '5900.00', '0000-00-00'),
(16, '7424825310', '2650.00', '0000-00-00'),
(17, '4987338878', '4900.00', '0000-00-00'),
(18, '2520063284', '2250.00', '0000-00-00'),
(19, '1425813334', '2100.00', '0000-00-00'),
(20, '6396486716', '4200.00', '0000-00-00'),
(21, '2962938717', '9450.00', '0000-00-00'),
(22, '7242306946', '1700.00', '0000-00-00'),
(23, '7552043171', '4250.00', '0000-00-00'),
(24, '3627184327', '3550.00', '0000-00-00'),
(25, '1775152900', '3950.00', '0000-00-00'),
(26, '8110164000', '560.00', '0000-00-00'),
(27, '1221038177', '4350.00', '0000-00-00'),
(28, '7008022504', '1500.00', '0000-00-00'),
(29, '6618583612', '1.00', '0000-00-00'),
(30, '', '2.00', '0000-00-00'),
(31, '', '1.00', '0000-00-00'),
(32, '2881544635', '1700.00', '0000-00-00'),
(33, '', '1.00', '0000-00-00'),
(34, '', '2.00', '0000-00-00'),
(35, '', '2.00', '0000-00-00'),
(36, '', '1.00', '0000-00-00'),
(37, '', '2.00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_payments`
--

CREATE TABLE `paypal_payments` (
  `id` int(6) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `payment_amount` decimal(7,2) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `itemid` varchar(25) NOT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `product_cat` varchar(50) NOT NULL,
  `product_brand` varchar(50) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `availability` varchar(50) NOT NULL,
  `edited_date` datetime NOT NULL,
  `quantity` int(100) NOT NULL,
  `description` varchar(700) DEFAULT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `on_sale` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_name`, `product_image`, `product_cat`, `product_brand`, `collection_id`, `availability`, `edited_date`, `quantity`, `description`, `product_price`, `on_sale`) VALUES
(4, '95473', 'Shampoo', '95473.jpg', '1', '3', 1, 'In-Stock', '2018-02-07 11:32:21', 0, 'A specially enriched formula with Olive Oil extracts which provides natural vitality to your hair and protects from daily damages. Contains pro vitamins B5 effectively nourishes and moisturizes your hair from roots to tips while preventing breakage leaving it soft, strong and shiny.', '750.00', 0),
(5, '86442', 'Conditioner', '86442.jpg', '1', '3', 3, 'In-Stock', '0000-00-00 00:00:00', 200, 'This conditioner nourishes the hair making it brighter and vivid. Ensures easy combing with its unique formula with natural olive oil and herbal extracts.', '750.00', 0),
(6, '28558', 'Body Wash', '28558.jpg', '1', '3', 6, 'In-Stock', '0000-00-00 00:00:00', 45, 'Enriched with olive oil formulation, this body wash firms and moisturizes the skin leaving it looking soft, supple and healthy. Its skin friendly pH value creates a natural balance.', '650.00', 0),
(7, '75103', 'Hand & Body Lotion', '75103.jpg', '1', '3', 9, 'In-Stock', '0000-00-00 00:00:00', 200, 'This hand and body lotion moisturizes the skin leaving it blooming and fresh. It contains Aloe Vera mineral which provides a natural healing effect keeps the skin soft and balance under control.', '950.00', 1),
(8, '53459', 'Hand & Body Cream', '53459.jpg', '1', '3', 4, 'In-Stock', '0000-00-00 00:00:00', 99, 'Contains olive oil which moisturizes, softens and cares for the skin giving a smooth appearance and significantly increasing the elasticity of the skin. Provides intensive protection especially to the exterior parts of the hands, elbows and knees.', '800.00', 0),
(9, '49626', 'Moisturizing Face Cream', '49626.jpg', '1', '3', 7, 'In-Stock', '0000-00-00 00:00:00', 33, 'This intensive care facial cream with its special formula enriched with Vitamin E and pure Olive Oil nourishes the skin and maintains its natural moisture all day long.', '700.00', 1),
(10, '80764', 'Body Oil', '80764.jpg', '1', '3', 5, 'In-Stock', '0000-00-00 00:00:00', 100, 'Specially enriched formula with Aegeanâ€™s superior quality olive oil, this body oil provides extra vitality to your bodyâ€™s skin softening and intensively nourishing it. It is easily absorbed and gives the skin a touch and smell of nature.', '1500.00', 0),
(11, '88939', 'Olive n Body Peeling Soap', '88939.jpg', '1', '3', 11, 'In-Stock', '0000-00-00 00:00:00', 300, 'It is a natural product that you can safely use in your body, face and hair for cleansing thanks to the richness of natural olive oil soap, vegetable oils and E, D, K, vitamin. With its abundant foam and soft texture, it makes the skin beautiful, increases the skin resistance against skin diseases. When used regularly, it strengthens the hair. Thanks to its peeling agents, it helps to get rid of dead skin.\r\nAfter using olive oil soap, the skin becomes soft, clean and more flexible. With the special perfume and soap base you will feel that your skin is cleaner and fresher. This caustic and Paraben-free formula is a friendly product for your skin and hair.\r\n', '650.00', 0),
(12, '23987', 'Shampoo', '23987.jpg', '1', '21', 1, 'In-Stock', '0000-00-00 00:00:00', 390, 'This specially enriched formula with Argan Oil cleanses the hair while protecting its natural balance with anti-oxidants. It helps prevent dry itchy scalp, provide healing to split ends and tame frizz, nourishing the hair all day long.', '850.00', 0),
(13, '89158', 'Conditioner', '89158.jpg', '1', '21', 3, 'In-Stock', '0000-00-00 00:00:00', 35, 'This ideal hair conditioner detangles and smoothens hair cuticles making the hair softer, silkier and shinier.', '850.00', 0),
(14, '30026', 'Body Wash', '30026.jpg', '1', '21', 6, 'In-Stock', '0000-00-00 00:00:00', 500, 'This body wash sooths raw, flaky and itchy skin with its vitamin E and fatty acids which are excellent for repairing damaged skin. It provides the skin with nutrients which prevent further dryness and irritation, leaving it fresh and with a delicate fragrance.', '670.00', 0),
(15, '97838', 'Hand & Body Cream', '97838.jpg', '1', '21', 4, 'In-Stock', '0000-00-00 00:00:00', 50, 'This hand and body cream with natural anti oxidants have protective and healing properties that restores damaged and irritated skin. Clears up mild acne and reduces swelling of pimples.', '700.00', 0),
(16, '74154', 'Hand & Body Lotion', '74154.jpg', '1', '21', 9, 'In-Stock', '0000-00-00 00:00:00', 450, 'With its high Vitamin E and fatty acid content, this body lotion keeps the skin hydrated and soft. It absorbs easily and is non greasy. It is suitable for all types of skin.', '850.00', 1),
(17, '20990', 'Rain Argan Care Peeling Soap', '20990.jpg', '1', '21', 11, 'In-Stock', '0000-00-00 00:00:00', 45, 'This natural organic argan oil soap helps your sensitive skin get back to its former softness and suppleness, giving your skin a sense of comfort. The composition of the product includes healing argan oil, which is the richest source of vitamin E and polyunsaturated acids. Soap perfectly cleanses the skin, helps it to fight with irritations, redness and eruptions, and activates regeneration and regenerative processes of skin cells. The moisturizing complex helps to smooth fine wrinkles, gives the skin a special smoothness, elasticity, softness and elasticity. It can also be used on the hair to reduce dandruff and irritation. Promotes growth and thickness of hair.', '650.00', 0),
(18, '42002', 'Rain Argan Care Serum', '42002.jpg', '1', '21', 0, 'In-Stock', '0000-00-00 00:00:00', 390, 'The high-calorie oil in its content and the hair serum created with E Vitamin helps the hair to soften and shine with its preventative effect on cracks that may occur in the hair. It does not contain parabens.', '1850.00', 0),
(19, '57958', 'Shampoo', '57958.jpg', '1', '22', 1, 'In-Stock', '0000-00-00 00:00:00', 1000, 'This shampoo is perfect for dry and damaged hair. With coconut extract, it acts on the hair strands intensively, nourishing the hair thoroughly and giving extra volume and shine. Moisturizers in its content give dry hair strands their former health back.', '750.00', 0),
(20, '89776', 'Conditioner', '89776.jpg', '1', '22', 3, 'In-Stock', '0000-00-00 00:00:00', 340, 'This conditioner detangles while moisturizing the hair. It protects the hair from elements keeping it strong, shiny and manageable.', '750.00', 0),
(21, '12415', 'Body Wash', '12415.jpg', '1', '22', 6, 'In-Stock', '0000-00-00 00:00:00', 670, 'This body wash gently cleanses the skin with its rich lather, hydrating and softening the skin. It contains vitamin E which effectively rejuvenates and firm up the skin with its anti-aging effects.', '600.00', 0),
(22, '83946', 'Hand & Body Cream', '83946.jpg', '1', '22', 4, 'In-Stock', '0000-00-00 00:00:00', 679, 'This cream is specially enriched with coconut oil and provides softness on the skin and has an anti-aging effect. Contains Vitamin E which effectively rejuvenates, maintains skinâ€™s moisture and help in removing wrinkles.', '780.00', 0),
(23, '21238', 'Curl & Shine Shampoo', '21238.jpg', '2', '4', 1, 'In-Stock', '2018-02-07 11:49:32', 20, 'This sulphate free shampoo gently cleanses hydrates and detangles thick curly hair. It contains a special blend of Coconut Oil which hydrates and reduces breakage, Silk Protein which smoothes hair for a soft silky feel and Neem Oil which controls frizz while adding a brilliant shine.', '2100.00', 0),
(24, '87830', 'Curl & Style Milk', '87830.jpg', '2', '4', 0, 'In-Stock', '2018-02-07 11:50:20', 340, 'Detangles, conditions and defines curls while restoring body and shine.', '2100.00', 0),
(25, '74371', 'Curl Enhancing Smoothie', '74371.jpg', '2', '4', 14, 'In-Stock', '2018-02-07 11:51:09', 350, 'With its nutrient rich vegetable butters, it conditions hair restoring moisture, body and shine. Enhances curls, minimizes frizz and provide curl control.', '2500.00', 0),
(26, '81469', 'Curl & Shine Conditioner', '81469.jpg', '2', '4', 3, 'In-Stock', '2018-02-07 11:51:50', 200, 'This lightweight daily conditioner restores moisture, detangles and smoothes dry cuticles. It prevents knots, snarls and tangles. Its Anti-frizz properties define and enhance natural curls.', '2100.00', 0),
(27, '91216', 'Co-Wash Conditioning Cleanser', '91216.jpg', '2', '4', 3, 'In-Stock', '2018-02-07 11:52:34', 139, 'This sulphate free cleanser for thick curly hair removes impurities without stripping hair of natural oils. Lightweight moisturizers control frizz and softens hair leaving vibrant bouncy curls.', '2100.00', 0),
(28, '99980', 'Hold & Shine Moisture Mist', '99980.jpg', '2', '4', 10, 'In-Stock', '2018-02-07 11:54:15', 100, 'Eliminates frizz while hydrating hair creating a brilliant shine and a soft hold.', '2100.00', 0),
(29, '28960', 'Curling Gel Souffle', '28960.jpg', '2', '4', 14, 'In-Stock', '2018-02-07 11:54:51', 200, 'This styling aid defines and promotes curls with a soft smooth finish. It does not contain silicones, polymers or PVP which may cause buildup.', '2500.00', 0),
(30, '96198', 'Moisture Retention Shampoo', '96198.jpg', '2', '5', 1, 'In-Stock', '2018-02-07 11:55:42', 45, 'Gently cleanses while deeply moisturizing and repairing dry damaged or over-processed hair.', '2100.00', 0),
(31, '51594', 'Restorative Conditioner', '51594.jpg', '2', '5', 3, 'In-Stock', '2018-02-07 11:56:20', 345, 'Conditioner detangles, moisturizes, repairs and restores lifeless dry, damaged or over-processed hair.', '2100.00', 0),
(32, '44222', 'Deep Treatment Masque', '44222.jpg', '2', '5', 0, 'In-Stock', '2018-02-07 11:56:59', 278, 'This all-natural intensive treatment masque deeply moisturizes and repairs dry, damaged or over-processed hair.', '2500.00', 0),
(33, '92064', 'Extra-Moisture Transitioning Milk', '92064.jpg', '2', '5', 0, 'In-Stock', '2018-02-07 11:57:39', 450, 'This product for damaged hair strengthens and promotes healthy growth while transitioning chemically treated hair to natural healthy hair. Smoothes and restores brilliant shine.', '2100.00', 0),
(34, '24362', 'Extra-Moisture Detangler', '24362.jpg', '2', '5', 0, 'In-Stock', '2018-02-07 11:58:39', 20, 'Conditions and smoothes dry damaged hair with natural botanicals while removing knots and tangles. Restores body, shine and manageability.', '2100.00', 0),
(35, '14502', 'Anti-Breakage Strengthening Shampoo', '14502.jpg', '2', '6', 1, 'In-Stock', '0000-00-00 00:00:00', 450, 'This shampoo smoothes hair cuticles to reduce frizz and improve the appearance of split ends. Organic Shea Butter, Plantain and Yucca combine in a strengthening formula that helps weak hair resist breakage. Baobab Oil and Cilantro Extract help refresh and boost shine', '2350.00', 0),
(36, '73903', 'Anti-Breakage Strengthening Conditioner', '73903.jpg', '2', '6', 3, 'In-Stock', '0000-00-00 00:00:00', 10, 'This fortifying conditioner detangles and smoothes hair cuticles to reduce frizz and improve the appearance of split ends. Certified organic Shea Butter, Plantain and Yucca combine in a strengthening formula that helps weak hair resist breakage. Baobab Oil and Cilantro Extract help refresh and boost shine.', '2350.00', 0),
(37, '89705', 'Anti-Breakage Strengthening Masque', '89705.jpg', '2', '6', 0, 'In-Stock', '0000-00-00 00:00:00', 670, 'This intensive treatment deeply penetrates to condition and smooth frazzled strands with a nutrient-rich fortifying formula. Transforms frizzy hair into sleek, healthy strands. Helps bind split ends and improves the overall appearance of hair', '700.00', 0),
(38, '94865', 'Anti-Breakage Strengthening Styling Milk', '94865.jpg', '2', '6', 0, 'In-Stock', '0000-00-00 00:00:00', 34, 'This lightweight cream softens as it works to boost body and strengthen hair. Improves manageability for easy styling. Can be mixed, blended and layered with other products for the ultimate smooth finish', '500.00', 0),
(39, '81127', 'Anti-Breakage Frizz-Free Shine Mist', '81127.jpg', '2', '6', 10, 'In-Stock', '0000-00-00 00:00:00', 10, 'This multi-purpose mist provides light hold with movement and a boost of shine. Spritz on dry hair to build body and keep natural styles fresh. Conditions and smoothes hair cuticles to reduce frizz and improve the appearance of split ends. Certified organic Shea Butter, Plantain and Yucca combine in a strengthening formula that helps weak hair resist breakage. Baobab Oil and Cilantro Extract help refresh and boost shine.', '2350.00', 0),
(40, '55909', 'Dandruff Control Shampoo', '55909.jpg', '2', '7', 1, 'In-Stock', '0000-00-00 00:00:00', 120, 'This shampoo gently cleanses as it removes buildup from styling products and soothes dry, itchy and flaking scalp. Helps regulate sebum production.', '2350.00', 0),
(41, '52787', 'Dandruff Control Conditioner', '52787.jpg', '2', '7', 3, 'In-Stock', '0000-00-00 00:00:00', 50, 'This conditioner moisturizes and detangles hair while it soothes dry, itchy and flaking scalp. Use as a pre-shampoo or rinse out conditioner, as needed.', '2350.00', 0),
(42, '43833', 'Dandruff Control Masque', '43833.jpg', '2', '7', 0, 'In-Stock', '0000-00-00 00:00:00', 100, 'This intensive Dandruff Control Masque temporarily soothes and helps relieve the symptoms of itching associated with dandruff without causing buildup. It contains active Ingredient Chamomile Tinc which calms skin and detoxes scalp.', '2800.00', 0),
(43, '45060', 'Dandruff & Dry Scalp Elixir', '45060.jpg', '2', '7', 0, 'In-Stock', '0000-00-00 00:00:00', 10, 'This all-natural, concentrated treatment helps reduce itching and flaking, while soothing and balancing the scalp.', '1800.00', 0),
(44, '38316', 'Strengthen Grow & Restore Shampoo', '38316.jpg', '2', '8', 1, 'In-Stock', '0000-00-00 00:00:00', 100, 'This shampoo removes buildup, while infusing hair with moisture. Formulated with Jamaican Black Castor Oil and certified organic Shea Butter to promote growth by nourishing and strengthening damaged or chemically processed hair, reducing the appearance of breakage and shedding. Apple Cider Vinegar aids in regulating and balancing pH levels on the scalp, while softening hair to promote enhanced growth. Sulphate free.', '2800.00', 0),
(45, '95636', 'Strengthen Grow & Restore Rinse Out Conditioner', '95636.jpg', '2', '8', 3, 'In-Stock', '0000-00-00 00:00:00', 10, 'This conditioner detangles and restores moisture without weighing hair down. Perfect for those who regularly color, straighten or perm their hair. Formulated with Jamaican Black Castor Oil and certified organic Shea Butter to nourish and strengthen damaged, brittle hair, reducing the appearance of breakage and shedding. Peppermint Oil helps stimulate circulation. Jamaican Black Castor Oil is loaded with reparative omegas that promote healthy hair growth.', '2350.00', 0),
(46, '31345', 'Strengthen Grow & Restore Leave-In Conditioner', '31345.jpg', '2', '8', 8, 'In-Stock', '0000-00-00 00:00:00', 120, 'This Leave In softens and detangles hair while controlling frizz. Formulated with Jamaican Black Castor Oil and certified organic Shea Butter to nourish, moisturize and support elasticity so hair resists breakage when detangling. Conditioners provide a protective layer that improves the appearance of split ends. Peppermint stimulates the scalp for an invigorating experience', '2800.00', 0),
(47, '82279', 'Strengthen Grow & Restore Treatment Masque', '82279.jpg', '2', '8', 0, 'In-Stock', '0000-00-00 00:00:00', 100, 'This treatment Masque deeply conditions while restoring strength and resilience to damaged, brittle or chemically processed hair. Formulated with nutrient-rich Jamaican Black Castor Oil and certified organic Shea Butter to replenish moisture and soften while strengthening hair. Helps promote growth by supporting hairâ€™s elasticity, reducing the appearance of breakage and shedding. Peppermint stimulates the scalp for an invigorating experience. Leaves hair soft, manageable and shiny.', '2800.00', 0),
(48, '56407', 'Strengthen Grow & Restore Hair Serum', '56407.jpg', '2', '8', 10, 'In-Stock', '0000-00-00 00:00:00', 70, 'This serum effectively penetrates to treat the scalp and each hair strand with nutrients, minerals and vitamins, bringing damaged or chemically processed hair back to life. Nutrient-rich Jamaican Black Castor Oil and certified organic Shea Butter help promote growth by strengthening and conditioning hair, increasing its resistance to breakage. Rosemary Oil stimulates circulation promoting enhanced, healthy hair growth.', '2350.00', 0),
(49, '83217', 'Strengthen Grow & Restore Styling Lotion', '83217.jpg', '2', '8', 9, 'In-Stock', '0000-00-00 00:00:00', 230, 'An oil-based lotion that protects hair while restoring moisture and shine. Ultra-moisturizing formula protects against the damaging effects of heat styling. Increases hairs resistance to breakage, so hair can grow strong and healthy.', '2350.00', 0),
(50, '51505', 'Strengthen Grow & Restore Edge Treatment', '51505.jpg', '2', '8', 14, 'In-Stock', '0000-00-00 00:00:00', 100, 'This precision styling gel helps provide a touchable hold while nourishing edges.  Effectively blocks humidity, while controlling reversion and flyaway hair around edges for sleek, frizz-free styles.  Formulated with Organic Shea Butter which helps deeply moisturize while conditioning hair and scalp and Jamaican Black Castor Oil, loaded with reparative omegas that promotes healthy hair growth. Peppermint helps stimulate the scalp for an invigorating experience.', '1700.00', 0),
(51, '50477', '100% Pure Jamaican Black Castor Oil', '50477.jpg', '2', '23', 10, 'In-Stock', '0000-00-00 00:00:00', 230, 'Shea Moisture introduces you to the wonder of exotic oils. Originating from Eastern Africa, Castor Oil has been used for centuries in a wide range of skin and hair care products. With its high ash content, 100% pure Jamaican Black Castor Oil is believed to have greater potency. This nutrient-rich oil moisturizes to help defend skins youthful appearance, and strong, healthy hair growth.', '1950.00', 0),
(52, '36883', '10-In-1 Renewal System Shampoo', '36883.jpg', '2', '9', 1, 'In-Stock', '0000-00-00 00:00:00', 123, 'This antioxidant rich shampoo helps to perfect and renew vibrancy to dull, lackluster hair. It provides Sulfate-free cleansing, anti-aging benefits, color protection, hydration, nourishment, rejuvenation, anti-stress, manageability and softness without build up. The Super fruit Complex helps nourish the scalp while Marula Oil and Biotin combine in a moisture-rich formulation to support hairs elasticity.', '2350.00', 0),
(53, '26562', '10-In-1 Renewal System Conditioner', '26562.jpg', '2', '9', 3, 'In-Stock', '0000-00-00 00:00:00', 230, 'This antioxidant rich conditioner helps to perfect and renew vibrancy to dull, lackluster hair. It detangles while providing anti-aging benefits, color protection, hydration, nourishment, rejuvenation, anti-stress, manageability and softness and shine. The Super fruit Complex helps nourish the scalp while Marula Oil and Biotin combine in a moisture-rich formulation to support hairs elasticity.', '2350.00', 0),
(54, '96071', '10-In-1 Renewal System Hair & Scalp Serum', '96071.jpg', '2', '9', 10, 'In-Stock', '0000-00-00 00:00:00', 234, 'This dual action serum nourishes the scalp with antioxidant Superfruit Complex. A special blend of ultra-moisturizing Marula Oil and Biotin add vibrancy to dull, lackluster hair. When used as a pre-wash, it revitalizes damaged hair while providing anti-aging benefits, color protection, hydration, nourishment, anti-stress, manageability, smoothness, heat protection and shine.', '2350.00', 0),
(55, '63536', '10-in-1 Renewal System Hair Masque', '63536.jpg', '2', '9', 0, 'In-Stock', '0000-00-00 00:00:00', 10, 'This intensive antioxidant-rich treatment helps perfect and renew vibrancy to brittle, lackluster hair.  When used weekly in our 10-in-1 Renewal System, it helps treat damaged hair while providing anti-aging benefits, color protection, hydration, nourishment, rejuvenation, strength, anti-stress, deep conditioning, softness and shine.  Counteract signs of aging by nourishing the scalp with our Superfruit Complex and infusing hair with ultra-moisturizing Marula Oil and Biotin. ', '2800.00', 0),
(56, '68598', 'Intensive Hydration Shampoo', '68598.jpg', '2', '10', 1, 'In-Stock', '0000-00-00 00:00:00', 10, 'This sulfate-free shampoo cleanses while infusing hair with intense moisture and shine-enhancing nutrients. Certified Organic Shea Butter, Honey, Mafura and Baobab are blended into a rich formulation of restorative oils to soften and revitalize hair. Antioxidant-rich African Rock Fig helps boost hydration while protecting distressed hair from environmental influences.', '2350.00', 0),
(57, '63519', 'Intensive Hydration Conditioner', '63519.jpg', '2', '10', 3, 'In-Stock', '0000-00-00 00:00:00', 134, 'This rinse-out conditioner instantly softens and detangles while infusing hair with intense moisture and shine-enhancing nutrients. Certified organic Shea Butter, Honey, Mafura and Baobab are blended into a rich formulation of restorative oils to nourish and condition dry, brittle hair. Helps restore manageability. Antioxidant-rich African Rock Fig helps boost hydration while protecting hair from environmental influences. Leaves hair soft, shiny and easy to style.', '2350.00', 0),
(58, '63748', 'Intensive Hydration Hair Masque', '63748.jpg', '2', '10', 0, 'In-Stock', '0000-00-00 00:00:00', 340, 'This intense conditioning deep treatment infuses hair with a powerful dose of moisture and nutrients. Certified organic Shea Butter, Honey, Mafura and Baobab Oils are blended with antioxidant-rich African Rock Fig to restore and lock in moisture. Smoothes and fortifies follicles for stronger, healthier frizz-free hair.', '2800.00', 0),
(59, '87431', 'Intensive Hydration Complex', '87431.jpg', '2', '10', 10, 'In-Stock', '0000-00-00 00:00:00', 340, 'This potent treatment absorbs quickly to encourage a healthy scalp and lustrous, beautiful hair. Leaves hair soft, manageable and resilient. Improves hairs elasticity and promotes healthy growth.', '2350.00', 0),
(63, '85189', 'African Black Soap', '85189.jpg', '2', '12', 11, 'In-Stock', '0000-00-00 00:00:00', 18, 'This soothing body bar soap is specially formulated with organic Shea Butter, Oats and Aloe to cleanse, moisturize and comfort irritated skin while absorbing excess oil. African Black Soap, an honored beauty secret, made from palm ash, tamarind extract, tar and plantain peel, helps to calm and clear blemishes and troubled skin. Leaves skin soft and refreshed. Perfect for helping relieve symptoms of eczema or psoriasis.', '1300.00', 0),
(64, '14352', 'Argan Oil & Raw Shea', '14352.jpg', '2', '13', 9, 'In-Stock', '0000-00-00 00:00:00', 33, 'This Bath, Body & Massage Oil helps moisturize, repair and soften dry, rough skin. Helps prevent early signs of aging. Creates a fragrant spa bath, relaxing mind and body. Made with natural and certified organic ingredients.', '2350.00', 0),
(65, '63616', 'Coconut & Hibiscus', '63616.jpg', '2', '13', 0, 'In-Stock', '0000-00-00 00:00:00', 1199, 'This Bath Body & Massage Oil for dull skin helps moisturize and even skin tone. Improves skins firmness and appearance. Creates a fragrant spa bath, relaxing mind and body. - Made with natural and certified organic ingredients. - Coconut Oil nourishes and moisturizes skin with Vitamins E and K, iron and fatty acids. - Hibiscus Flower is a natural emollient that treats dry, rough skin and helps improve skin tone. - Vitamin E is a powerful antioxidant highly effective in protecting skin from free radical damage.', '2350.00', 0),
(66, '44398', 'Olive & Green Tea', '44398.jpg', '2', '13', 0, 'In-Stock', '0000-00-00 00:00:00', 20, 'This Bath, Body & Massage Oil helps deeply hydrate and repair dry skin. Helps prevent signs of early aging. Creates a fragrant spa bath, relaxing mind and body.', '2350.00', 0),
(67, '36359', 'Lavender & Wild Orchid', '36359.jpg', '2', '13', 0, 'In-Stock', '0000-00-00 00:00:00', 20, 'Made from a blend of Organic Shea Butter and Lavender, this massage oil calms and soothes minor skin irritation. Wild Orchid Extract hydrates and leaves skin delicately fragranced. Creates a fragrant spa bath, relaxing mind and body.', '2350.00', 0),
(68, '85904', 'Mango & Carrot Shampoo', '85904.jpg', '2', '14', 1, 'In-Stock', '0000-00-00 00:00:00', 10, 'This shampoo gently cleanses and detangles childrens fine and delicate hair. Helps nourish and strengthen hair, while protecting against breakage. Sulfate-free.', '2150.00', 0),
(69, '27158', 'Mango & Carrot Conditioner', '27158.jpg', '2', '14', 3, 'In-Stock', '0000-00-00 00:00:00', 100, 'This conditioner softens and smoothes childrens hair, making it easy to detangle and work out knots. Helps nourish and strengthen hair while protecting against breakage.', '2150.00', 0),
(70, '23724', 'Coconut & Hibiscus Curling Cream', '23724.jpg', '2', '14', 0, 'In-Stock', '0000-00-00 00:00:00', 100, 'This Kids Curling Butter Cream keeps childrens thick tresses shapely and resilient with a soft, shiny hold. Provides definition while taming frizz and fly aways for smooth, bouncy curls.', '2150.00', 0),
(71, '16634', 'Coconut & Hibiscus Detangler', '16634.jpg', '2', '14', 0, 'In-Stock', '0000-00-00 00:00:00', 60, 'This Kids Extra-Moisturizing Detangler detangles, defines and tames childrens thick, wavy or unruly hair without greasiness. Conditions while restoring luster to dry, dull hair. It is made with natural and certified organic ingredients such as Coconut Oil which hydrates and protects while adding curl definition and slippery Elm Extract which is a smoothing and soothing emollient.', '2150.00', 0),
(72, '80954', 'Coconut & Hibiscus', '80954.jpg', '2', '15', 0, 'In-Stock', '0000-00-00 00:00:00', 230, 'This hand cream moisturizes and naturally brightens dull skin while evening skin tone. Leaves hands soft and nourished. It is made with natural and certified organic ingredients. Coconut Oil nourishes and helps firm skin with Vitamins E and K, iron and fatty acids, Hibiscus Flower is a natural emollient that treats dry, rough skin and helps improve skin tone and Songyi Mushroom naturally brightens and evens the  skin tone.', '1500.00', 0),
(73, '45860', 'Raw Shea Butter Oil', '45860.jpg', '2', '15', 0, 'In-Stock', '0000-00-00 00:00:00', 200, 'This hand cream deeply moisturizes repairs and rejuvenates dry, dull looking skin. Helps prevent early signs of aging. Leaves hands soft and youthful looking. Made with Shea Butter which deeply moisturizes and repairs skin with vitamins and essential fatty acids, Frankincense & Myrrh Extract which is an anti-inflammatory and anti-bacterial which aids in healing dry cracked skin, Argan Oil which is high in Vitamin E, keeps skin soft and smooth.', '1500.00', 0),
(74, '64149', '100% Extra Virgin Coconut Oil', '64149.jpg', '2', '17', 10, 'In-Stock', '0000-00-00 00:00:00', 340, 'Shea Moisture 100% Extra Virgin Coconut Oil Head-To-Toe Nourishing Hydration Cream Hydrates and softens even the driest skin and hair. Fatty acids, vitamins and minerals nourish and restore naturally. Benefits include moisture retention, smoothing and protecting. Fast absorbing Coconut Oil can be used on hair, face, body, hands and feet without clogging pores or leaving a greasy residue. Perfect for softening rough elbows, hands, cuticles, knees or toes. ', '3000.00', 0),
(76, '58006', 'Moisture Infusion Shampoo', '58006.jpg', '2', '16', 1, 'In-Stock', '0000-00-00 00:00:00', 1000, 'KeraVega Monoi Oil Complex combines keratin with other natural ingredients that draw in moisture to help smooth and protect hair against surface damage caused by heat styling. This Sulfate-free shampoo cleanses while softening hair and reducing frizz. Leaves hair more manageable for easier, faster styling. Certified organic Shea Butter, Peptides and Clover Flower Extract blend in a nourishing formulation to create a healthy environment for hair', '1345.00', 0),
(77, '82101', 'Gentle Curl Cleansing Co-Wash', '82101.jpg', '2', '16', 3, 'In-Stock', '0000-00-00 00:00:00', 345, 'This detergent free, low-lather conditioning cleanser removes impurities without stripping hair of natural oils. Lightweight moisturizers soften and enhance curls, controlling frizz and adding shine in one easy step. Certified organic Shea Butter, Cupuacu Butter and Black Seed Oil blend in a nourishing formula while Agave Nectar helps reduce frizz.', '1299.00', 0),
(78, '82829', 'Rehydrating Hair Masque', '82829.jpg', '2', '16', 0, 'In-Stock', '0000-00-00 00:00:00', 100, 'This rich styling aid smoothes down hair cuticles and enhances curl patterns. Locks in definition while blocking humidity for lasting curl memory and frizz-free styles. Certified organic Shea Butter, CupuaÃ§u Butter and Black Seed Oil blend in a nourishing formula while Agave Nectar helps reduce frizz.', '339.00', 0),
(79, '75394', 'Curl Memory Leave-In Conditioner', '75394.jpg', '2', '16', 8, 'In-Stock', '0000-00-00 00:00:00', 340, 'This rich styling aid smoothes down hair cuticles and enhances curl patterns. Locks in definition while blocking humidity for lasting curl memory and frizz-free styles. Certified organic Shea Butter, Cupuacu Butter and Black Seed Oil blend in a nourishing formula while Agave Nectar helps reduce frizz.', '360.00', 0),
(80, '16628', 'Raw Shea Butter', '16628.jpg', '2', '18', 0, 'In-Stock', '0000-00-00 00:00:00', 230, 'Shea Moistures Raw Shea Butter Body Lotion With Frankincense & Myrrh deeply moisturizes, repairs and rejuvenates dry, dull looking skin while preventing early signs of aging. Leaves skin feeling soft and youthful', '2350.00', 0),
(81, '28038', 'Head to Toe Wash Shampoo', '28038.jpg', '2', '19', 1, 'In-Stock', '0000-00-00 00:00:00', 10, 'This Raw Shea Chamomile & Argan Oil Baby Head-To-Toe Wash & Shampoo cleanses while calming and comforting babyâ€™s delicate skin. Gentle enough for everyday use. Made with natural and certified organic ingredients: Shea Butter deeply moisturizes and repairs skin with vitamins and essential fatty acids, Chamomile contains anti-inflammatory properties which help soothe red, irritated skin and Argan Oil is high in Vitamin E, keeps skin soft and smooth.', '2150.00', 0),
(82, '12045', 'Healing Lotion', '12045.jpg', '2', '19', 9, 'In-Stock', '0000-00-00 00:00:00', 100, 'Shea Moistures Raw Shea Chamomile & Argan Oil Baby Healing Lotion moisturizes calms and comforts babyâ€™s delicate skin. Gentle enough for everyday use.  Made with natural and certified organic ingredients: Shea Butter deeply moisturizes and repairs skin with vitamins and essential fatty acids, Chamomile contains anti-inflammatory properties which help soothe red, irritated skin and Argan Oil is high in Vitamin E, keeps skin soft and smooth.', '2150.00', 0),
(83, '61332', 'Eczema Therapy Cream', '61332.jpg', '2', '19', 0, 'In-Stock', '0000-00-00 00:00:00', 100, 'Shea Moistures Raw Shea Butter Chamomile & Argan Oil Baby Skin Therapy helps to nourish, calm and comfort babys dry, raw or irritated skin. Designed to relieve symptoms of dry skin. Gentle enough for everyday use.', '2150.00', 0),
(84, '22647', 'Oil Rub', '22647.jpg', '2', '19', 0, 'In-Stock', '0000-00-00 00:00:00', 340, 'Shea Moistures Raw Shea Butter Oil Rub moisturizes while calming and comforting babys delicate skin. Perfect for giving your baby a nourishing massage. Gentle enough for everyday use.', '2150.00', 0),
(85, '46338', 'Head to toe ointment', '46338.jpg', '2', '19', 0, 'In-Stock', '0000-00-00 00:00:00', 100, 'Shea Moisture Raw Shea, Chamomile & Argan Oil Baby Head-to-Toe Ointment With Frankincense & Myrrh is a petrolatum-free ointment made to calm and protect babys raw irritated delicate skin. Perfect for soothing symptoms of diaper rash. Use Shea Moisture Baby Head-To-Toe Ointment as needed by applying to babys lips, cheeks, hands, arms, and legs. Apply liberally to babys bottom with each diaper change, or as needed. Gentle enough for everyday use.', '1950.00', 0),
(86, '45534', 'Eczema Bar Soap', '45534.jpg', '2', '19', 11, 'In-Stock', '0000-00-00 00:00:00', 100, 'Shea Moistures Raw Shea Butter Baby Eczema Bar Soap is a nutrient-rich bar soap designed to relieve symptoms of eczema. Gentle enough for everyday use.', '1100.00', 0),
(88, '66598', 'Curl Enhancing Custard', '66598.jpg', '3', '36', 15, 'In-Stock', '0000-00-00 00:00:00', 99, 'The Curl Enhancing Custard is oil enriched, alcohol-free and lightweight. This pH-balanced formula is packed with antioxidant rich Argan Oil, Olive Oil and\r\nGrape seed Oil that will leave your hair soft, shiny and\r\ndeeply moisturized. Perfect for Wash-N-Gos, up-dos, finger coils and smoothing edges.\r\nSafe for use on color treated hair.', '2250.00', 0),
(89, '58289', 'Curl Moisture Cream', '58289.jpg', '3', '36', 8, 'In-Stock', '0000-00-00 00:00:00', 109, 'This pH balanced leave-in Conditioner is full of luxurious oils that seal in moisture and minimize frizz by smoothing and closing the cuticle.\r\nAntioxidant rich Argan Oil, Burdock Root and Grape Seed Oil strengthens and adds shine. This lightweight, moisturizing cream will not weigh down your hair. ', '2650.00', 0),
(90, '98138', 'Curl Hydration Spray', '98138.jpg', '3', '36', 15, 'In-Stock', '0000-00-00 00:00:00', 336, 'The Curl Hydration Spray moisturizes hydrates and refreshes the hair and scalp.\r\nWith natural ingredients like Argan Oil and Rose Oil, this pH balanced formula conditions, adds shine and detangles hair without leaving buildup or residue. It is light weight and easily absorbed to nourish the hair and scalp. Can be used daily on braids, locks, wigs and weaves.', '1500.00', 0),
(91, '45742', 'Babassu Deep Conditioner', '45742.jpg', '3', '36', 15, 'In-Stock', '0000-00-00 00:00:00', 100, 'This deeply penetrating, fortifying protein-free treatment repairs and reconstructs all hair textures and hair types. Strand strengthening Babassu oil will nourish, repair elasticity, soften and add shine to your hair. Its moisturizing blend of Avocado Oil, Rosemary Essential Oil and Panthenol will repair damage and hydrate your hair.', '1500.00', 0),
(92, '81078', 'Babassu Detangling Conditioner', '81078.jpg', '3', '36', 15, 'In-Stock', '0000-00-00 00:00:00', 100, 'Detangle with ease and condition your hair with\r\nmoisturizing Babassu Oil, Avocado Oil and Rosemary Essential Oil. Strand-strengthening Babassu Oil will nourish, repair elasticity, soften and add shine to your hair. Avocado Oil, Rosemary Essential Oil and Panthenol\r\nwill repair damage and moisturize your hair.\r\n', '1950.00', 0),
(93, '93082', 'Coconut Shea Shampoo Bar', '93082.jpg', '3', '36', 1, 'In-Stock', '0000-00-00 00:00:00', 12, 'This long lasting water-free undiluted and intensely moisturizing shampoo bar will leave the hair soft, conditioned, and hydrated. Shea Butter deeply moisturizes hair and scalp, while Coconut Oil protects hair from heat and chemical damage.\r\nThis sulfate-free shampoo will gently cleanse without stripping your hair and scalp of its natural oils.', '1500.00', 0),
(94, '52271', 'Neem Tea Tree Shampoo Bar', '52271.jpg', '3', '36', 15, 'In-Stock', '0000-00-00 00:00:00', 10, 'This invigorating shampoo soothes dry scalp and\r\nhelps remove unwanted buildup. Neem Oil and Tea Tree Oil are excellent astringents that will leave your scalp refreshed. This sulfate-free shampoo will gently cleanse without stripping your hair and scalp of its natural oils', '1500.00', 0),
(95, '10581', 'Twist Whip Butter', '10581.jpg', '3', '36', 1, 'In-Stock', '0000-00-00 00:00:00', 100, 'This one of a kind water-based, pH balanced hair butter is a triple treat of unrefined Shea Butter, Tucuma Butter and Mango Butter. Twist Whip Butter is formulated to intensely moisturize, seal, add shine and Protect your hair. Packed with the essential oils of Lemongrass and Lavender to keep the strengthened strands soft. Ideal for parched, dry hair.', '2650.00', 0),
(96, '64575', 'Sweet Almond Heavy Cream', '64575.jpg', '3', '36', 15, 'In-Stock', '0000-00-00 00:00:00', 10, 'This thick, hydrating formulation will leave super dry, coarse hair soft and moisturized. Sweet Almond oil is rich in nourishing vitamins to promote healthy hair. Aloe vera and essential oils form a protective barrier for the hair and scalp.', '2250.00', 0),
(97, '70727', 'Argan Rose Hair Oil', '70727.jpg', '3', '36', 10, 'In-Stock', '0000-00-00 00:00:00', 10, 'This stellar mix of Argan Oil, Rose Oil and Coconut Oil will nourish and revive your hair. Legendary Moroccan Argan Oil is rich in essential fatty acids. Anti-oxidant rich Vitamin E and Rose Oil will deeply nourish and hydrate your hair and scalp.', '2100.00', 0),
(98, '24470', 'Kokum Body Butter', '24470.jpg', '3', '37', 9, 'In-Stock', '0000-00-00 00:00:00', 134, 'This vegan, botanically rich Kokum Body Butter is pH balanced to maintain your skinâ€™s moisture balance. Hydrating Kokum Butter intensely moisturizes dry skin in this soothing, non-greasy long-lasting body butter.\r\nThis body butter will moisturize your skin without exposing it to common chemical irritants found in most products. This rich and creamy body butter is ideal for all skin types.', '1950.00', 0),
(99, '30436', 'Kokum Moisturizing Lotion', '30436.jpg', '3', '37', 9, 'In-Stock', '0000-00-00 00:00:00', 123, 'This vegan, botanically rich Kokum Moisturizing Lotion is pH balanced to maintain your skinâ€™s moisture balance. Hydrating Kokum Butter intensely moisturizes dry skin in this soothing, non-greasy long-lasting body butter.\r\nThis body butter will moisturize your skin without exposing it to common chemical irritants found in most products. This rich and creamy body butter is ideal for all skin types', '1950.00', 0),
(100, '96552', 'Obol Royal Body Oil', '96552.jpg', '3', '37', 14, 'In-Stock', '2018-01-30 12:37:57', 5, 'Obol Royal Body Oil is 100% natural, vegan and ultra-concentrated combination of Argan Oil, Shea Oil, Camelina Oil and Sweet Almond Oil. This royal blend of liquid gold oils will drench the skin with all-day moisture and keep it glowing and hydrated without leaving a greasy residue.\r\nThis lightweight moisturizer is ideal for all skin types and will moisturize your skin without exposing it to common chemical irritants found in most products.', '1950.00', 0),
(101, '35540', 'Perfect Mold Holding Spritz', '35540.jpg', '4', '2', 0, 'In-Stock', '2018-01-29 13:49:13', 199, 'Vitale Spritz provides the styling freedom required in contemporary styling of all types of hair. Excellent for heat styling with blow dryers or hot curlers. Gives long lasting hold without reversion. Designed to give more volume, shine and manageability without flakiness or buildup.', '900.00', 0),
(102, '93324', 'Olive Oil Breeze Shampoo', '93324.jpg', '4', '2', 1, 'In-Stock', '2018-01-29 13:49:31', 19, 'Uniquely designed to aid in the transition from wearing weaves to your own natural hair. It removes bonding glue and helps to repair damage to the hair and scalp caused by ponytails, hair extensions, braids and wigs. It is naturally formulated to stimulate hair growth and increase the flow of oxygen to strengthen and unclog hair follicles, leaving hair feeling and smelling clean and easy to comb.', '920.00', 0),
(103, '22469', 'Olive Oil Deep Moisturizing Shampoo', '22469.jpg', '4', '2', 1, 'In-Stock', '2018-01-29 14:08:37', 190, 'Enriched with pro vitamins and amino proteins, it provides the right combination of cleansing and conditioning. Its detangling properties smoothes and seals the cuticle allowing more elasticity and manageability. Leaves hair feeling soft and silky. Excellent for color treated hair. ', '850.00', 0),
(104, '29771', 'Olive Oil Moisturizer', '29771.jpg', '4', '2', 10, 'In-Stock', '2018-01-29 14:09:23', 120, 'Rejuvenates lifeless hair by maintaining daily moisture balance. Enhances the appearance of straight, curly, natural or braided hairstyles by protecting against dryness. Protects hair from the negative effects of blow dryers, curlers, pressing irons and relaxers. Gives your hair a healthy, natural looking sheen. ', '690.00', 0),
(105, '33893', 'Virgin Hair Oil', '33893.jpg', '4', '2', 10, 'In-Stock', '2018-01-29 14:10:18', 120, 'Vitale Virgin Hair Oil stimulates new growth. Specially designed for scalp and hair. Enriched with Silk Amino Acids, Vitamin A, Vitamin E and Olive Oil to nourish and revitalize your scalp. Restores pH balance to relieve dry scalp and repairs damaged hair caused by chemical treatments and thermal styling tools.', '920.00', 0),
(106, '22594', 'Olive Oil Anti-Breakage Leave-In-Conditioner', '22594.jpg', '4', '2', 8, 'In-Stock', '2018-01-29 14:11:17', 23, 'This Olive Oil Leave-In-Conditioner combines natural ingredients to increase the strength of hair that has been weakened by braids and extensions. Specially formulated to protect, seal in moisture and detangle hair to prevent split ends and breakage.', '920.00', 0),
(107, '46609', 'Olive Oil Hair Polisher', '46609.jpg', '4', '2', 10, 'In-Stock', '2018-01-29 14:12:19', 100, 'Vitale Olive Hair Polisher is designed with anti-oxidant property of Olive Oil and Vitamin E to repair damaged hair and prevent breakage. It protects from heat and moisturizes the hair shaft. It combats dullness and frizz, imparting a glossy look with a natural smooth sheen and eliminates dryness completely.', '920.00', 0),
(108, '82960', 'Olive Oil Fertilizing Balm', '82960.jpg', '4', '2', 0, 'In-Stock', '2018-01-29 14:15:23', 23, 'Vitale Olive Oil Fertilizing Balm is formulated with a special herbal blend. It energizes the hair and scalp by infusing into clogged hair follicles. It stops hair breakage and split end while diminishing dandruff, encouraging hair growth and restoring moisture balance. It promotes fabulous healthy, shiny growing hair. ', '1100.00', 0),
(109, '98892', '4-In-1 Growth Serum', '98892.jpg', '4', '2', 10, 'In-Stock', '2018-01-29 14:17:00', 24, 'Designed with Olive Oil, Arnica Montana and Capsicum Annum along with other botanical ingredients to revitalize the hair and scalp and encourages healthy hair growth. Excellent for weaved, braided and relaxed hair. ', '1000.00', 0),
(110, '32297', 'Olive Oil Sheen Spray', '32297.jpg', '4', '2', 10, 'In-Stock', '2018-01-29 14:18:31', 245, 'Rich in vitamin E and Omega 3, this healing oil slows down the aging process by restoring health and providing protection from damaged. When used on the hair, it enhances the appearance and condition allowing the hair to maintain its youthful beauty. It transforms dull dry hair into smoother looking hair with long lasting brilliant sheen. Formulated with olive oil and other botanical extract it conditions and protects hair from humidity and breakage. Great for all hair textures.', '690.00', 0),
(111, '64407', 'Olive Oil Hair Mayonnaise', '64407.jpg', '4', '2', 0, 'In-Stock', '2018-01-29 14:20:32', 240, 'Repairs damage caused by hair extensions and chemical over processing. Enriched with Natural Botanical extracts, Oat Protein, Vitamins, Egg Proteins and Olive Oil, it increases elasticity and rejuvenates weak fragile hair. It adds moisture and shine, allowing you to wear your own healthy hair. ', '570.00', 0),
(112, '82853', 'Olive Oil Hair Mayonnaise-2', '82853.jpg', '4', '2', 0, 'In-Stock', '2018-01-29 14:21:37', 300, 'Repairs damage caused by hair extensions and chemical over processing. Enriched with Natural Botanical extracts, Oat Protein, Vitamins, Egg Proteins and Olive Oil, it increases elasticity and rejuvenates weak fragile hair. It adds moisture and shine, allowing you to wear your own healthy hair. ', '1000.00', 0),
(113, '77730', 'Anti-Breakage Twin Pack Relaxer Kit', '77730.jpg', '4', '2', 0, 'In-Stock', '2018-01-29 14:23:01', 450, 'Vitale Olive Oil Anti-Breakage No Lye conditioning Relaxer enriched with Coconut Oil and vitamins provides double scalp protection, instantly conditions and preserves natural strength of the hair as it straightens. It significantly reduces breakage and prevents damage, leaving the hair stronger, smoother and healthier. Olive Oil is natural anti-breakage oil that is proven to penetrate inside the hair shaft enhancing the vitality of the hair and providing wellness to the scalp. The goodness of Olive Oil combined with relaxer creates the most desirable results-hair that is healthy and beautiful. Kit contains 2 complete application or 4 touch-ups.', '920.00', 0),
(114, '29416', 'Anti-Breakage No Lye Conditioning Relaxer Kit', '29416.jpg', '4', '2', 0, 'In-Stock', '2018-01-29 14:26:54', 30, 'Vitale Olive Oil Anti-Breakage No Lye conditioning Relaxer enriched with Coconut Oil and vitamins provides double scalp protection, instantly conditions and preserves natural strength of the hair as it straightens. It significantly reduces breakage and prevents damage, leaving the hair stronger, smoother and healthier. Includes a chelating neutralizing shampoo that eliminates the chalky build up associated with no-lye relaxer kits, and hair Mayonnaise which strengthens by replenishing the hair with proteins and moisture.', '920.00', 0),
(119, '47024', 'Olive Oil Foam Wrap', '47024.jpg', '4', '2', 10, 'In-Stock', '2018-01-29 14:28:40', 25, 'Vitale Olive Oil Anti Breakage Foam Wrap Lotion with Pro Vitamins moisturizes and protects the hair. No Flaking, Dries fast and has a unique herbal blend that prevents breakage. Provides moisture with a long lasting hold. This light formula is perfect for wraps, roller sets, wet looks and molds for short tapered looks. Excellent for blow drying and protects hair from breakage.', '920.00', 0),
(120, '81766', 'Princess By Nature Detangling Shampoo', '81766.jpg', '4', '2', 1, 'In-Stock', '2018-01-30 06:09:27', 340, 'A gentle shampoo enhanced with Mother Natureâ€™s finest blend of natural botanicals to cleanse and hydrate relaxed hair. It removes excess oil and residue from the hair and scalp creating a pathway for healthy growing hair.', '570.00', 0),
(122, '75493', 'Princess By Nature Miracle Hair Dress', '75493.jpg', '4', '2', 0, 'In-Stock', '2018-01-30 06:10:32', 30, 'A gentle organic formula that makes daily hair styling easier. It softens and locks in moisture for more manageability. Prevents dry scalp and protects hair from breakage.', '850.00', 0),
(128, '13563', 'Olive Oil Root Therapy', '13563.jpg', '4', '2', 0, 'In-Stock', '2018-01-30 07:41:45', 70, 'The root of Vitale Olive Oil Therapy is a treatment for roots made with olive oil. The root therapy is used to stimulate hair growth in order to reduce damage and to rehydrate the scalp. This treatment repairs hair damaged by heated appliances making the hair regain its natural shine.', '1000.00', 0),
(129, '28803', 'Lite Scalp Ointment', '28803.jpg', '4', '2', 0, 'In-Stock', '2018-01-30 07:43:37', 130, 'This scalp ointment is uniquely designed with natural ingredients to condition and restore moisture to the hair and scalp. It prevents and controls dry, flaky and itchy scalp. It also nourishes the hair and scalp while providing an environment for hair to grow stronger, longer and thicker.', '1000.00', 0),
(132, '99507', 'Corrective Conditioner', '99507.jpg', '4', '2', 3, 'In-Stock', '2018-01-30 07:44:12', 456, 'This protein fortified, moisturizing conditioner has special detangling agents to infuse moisture and nutrients into damaged, dull, dry hair. The result is improved body, silkiness, softness and sheen. Available in 16 oz and 1 litre.', '1200.00', 0),
(135, '20128', 'Elentee Twist & Lock Gel', '20128.jpg', '4', '2', 0, 'In-Stock', '2018-01-30 07:47:50', 45, 'This Twist & Lock Gel is formulated with special herbal ingredients to deeply soften the cuticle for total control when coiling your hair into twists and locks. It conditions by restoring moisture and strengthens the hair to prevent breakage. Provides a long lasting hold and dries fast.', '850.00', 0),
(136, '63821', 'Elentee Locking Bees Wax', '63821.jpg', '4', '2', 0, 'In-Stock', '2018-01-30 07:48:45', 340, 'This Bees Wax is formulated with natural ingredients that increase elasticity and manageability for creating locks. Provides long-lasting hold, moisture and sheen. Strengthens and prevents breakage.', '850.00', 0),
(140, '57538', 'Elentee Braid Marinade', '57538.jpg', '4', '2', 0, 'In-Stock', '2018-01-30 07:49:35', 50, 'Elentee Soy Organics Braid Marinade is a braid detangler that eases the process of removing braids and twists. Its light herbal formula moisturizes and softens the braid, which allows smooth removal of the hair addition without any hassle. As a result, the hair is manageable and tangle free', '1000.00', 0),
(141, '77707', 'Better Braids Spray', '77707.jpg', '4', '2', 10, 'In-Stock', '2018-01-30 07:58:07', 45, 'Contains special ingredients that help soften and remove embarrassing dandruff flakes. It has conditioning agents that soothe itching. Can be used for natural or synthetic hair. If you don''t have braids, you can still use Better Braids.', '1150.00', 0),
(165, '4722805344', 'Mongongo Oil Pomade To Oil Treatement', '4722805344.jpg', '1', '24', 0, 'In-Stock', '0000-00-00 00:00:00', 100, 'Our Pomade to Oil Treatment with Mongongo Oil is the perfect solution for soothing dry scalp, eliminating frizz, and adding an impeccable amount of shine. This shine enhancer is made from a blend of organic Mongongo oil ', '2250.00', 0),
(166, '2787799752', 'Mongongo Oil Exfoliating Shampoo', '2787799752.jpg', '5', '24', 1, 'In-Stock', '0000-00-00 00:00:00', 190, 'Our Exfoliating Shampoo with Mongongo Oil is the perfect solution for removing excessive build-up from products or dirt/excess oils. This shampoo not only cleanses but removes build up without depleting hair of its natural moisture.', '2100.00', 0);
INSERT INTO `products` (`product_id`, `product_code`, `product_name`, `product_image`, `product_cat`, `product_brand`, `collection_id`, `availability`, `edited_date`, `quantity`, `description`, `product_price`, `on_sale`) VALUES
(167, '8489419109', 'Mongongo Oil Hydrating Conditioner Protein-Free', '8489419109.jpg', '5', '24', 3, 'In-Stock', '0000-00-00 00:00:00', 100, 'Our Protein-Free Hydrating Conditioner not only moisturizes, but protects from heat damage by restoring health and shine. This protein-free conditioner is great for softening and silkening your hair from root to tip. The perfect conditioner for those who are protein sensitive.', '2400.00', 0),
(168, '3702324392', 'Mongongo Oil Thermal & Heat Protechtant Spray', '3702324392.jpg', '5', '24', 10, 'In-Stock', '0000-00-00 00:00:00', 450, 'Protect your hair with our Thermal & Heat Protectant Spray. This spray is specially formulated with Mongongo Oil to protect the hair from extreme heat temperatures. The ultimate solution for repairing split ends, eliminating frizz and adding shine.', '2250.00', 0),
(169, '1177564745', 'MONGONGO OIL STYLE SETTING SPRAY', '1177564745.jpg', '5', '24', 10, 'In-Stock', '0000-00-00 00:00:00', 120, 'Our Mongongo Setting Spray moisturizes and protects the hair from heat-styling damage. The Mongongo Oil leaves the hair soft and conditioned with luminous shine.', '2100.00', 0),
(170, '5060113040', 'MONGONGO OIL PRE-SHAMPOO TREATMENT', '5060113040.jpg', '5', '24', 1, 'In-Stock', '0000-00-00 00:00:00', 190, 'Our Mongongo Oil Pre-Shampoo treatment is the first step to shampooing your hair. Weâ€™ve combined the perfect ingredients to ensure additional moisture is added prior to shampooing. Cuticles are pre-conditioned and ready for manipulation', '2100.00', 0),
(171, '1783320924', 'MIELLE BRAZILLIAN CURLY COCKTAIL CURL CREAM', '1783320924.jpg', '5', '25', 0, 'In-Stock', '0000-00-00 00:00:00', 100, 'Our Brazilian Curly Cocktail is a curly girl''s dream to have soft, defined, frizz free curls. Our Curly Cocktail Curl Cream contains a blend of organic Brazilian oils like Babassu, BuritiBuriti, Copaiba Oil and MuruMuru. This super combo of Brazilian oils absorbs into the hair shaft locking in moisture and giving the ultimate definition and moisture.', '2250.00', 0),
(172, '6787953790', 'MIELLE BRAZILLIAN CURLY COCKTAIL CURL MOUSSE', '6787953790.jpg', '5', '25', 0, 'In-Stock', '0000-00-00 00:00:00', 100, 'Our Babassu Oil Mint Deep Conditioner infuses hair with protein and moisture to restore dry and damaged hair. Babassu Oil is derived from an Amazonian palm fruit that is high in sterols and tocopherols to improve hair and scalp health. Our product is enriched with fatty acids and natural oils that help reduce frizz and fly-aways. This deep penetrating conditioner is made with complex amino acids from wheat, soy and other natural ingredients that help restore moisture to damaged and dry hair. Safe to use on colour treated hair. Made with certified organic ingredients.', '2250.00', 0),
(173, '4314856978', 'BABASSU CONDITIONING SHAMPOO', '4314856978.jpg', '5', '26', 1, 'In-Stock', '0000-00-00 00:00:00', 123, 'Our rich Babassu Conditioning Shampoo for dry and curly hair types is a gentle cleanser that contains rich moisturizing agents to soften and strengthen hair. Our shampoo contains natural and certified organic ingredients including Babassu oil, Almond protein and Hibiscus extract. Babassu oil is derived from a lightweight Amazonian palm fruit. Almond protein provides strength and elasticity while Hibiscus extract provides shine and manageability. Made with certified organic ingredients.', '2150.00', 0),
(174, '7274004664', 'MIELLE HONEY AND GINGER STYLING GEL', '7274004664.jpg', '5', '27', 0, 'In-Stock', '0000-00-00 00:00:00', 3456, 'Maintain your healthy hair regimen with Mielle Styling Gel. This natural formulation contains more than 70% certified organic ingredientsâ€”like honey, ginger and babassuâ€”to nourish and hydrate hair while delivering manageable hold. That means curl definition, smooth edges and frizz reduction for your daily hair regimen.\r\nThe perfect styling aid for freshly cleaned hair or 2nd day curl enhancement. Get the results you need without the sticky build-up or artificial additives\r\n', '2100.00', 0),
(175, '1860630291', 'MIELLE FLEXIBLE HOLD EDGE GEL', '1860630291.jpg', '5', '27', 0, 'In-Stock', '0000-00-00 00:00:00', 190, 'Our Honey Ginger Edge Gel is the ultimate for smooth edges, ponytails, and braids. This non-flaky, non-gummy, non-greasy formula is ideal for straight or natural hair. Our formula features certified organic ingredients like lavender wax and rice bran wax for natural results that health promote healthy hair growth. Our 4oz size is 2x larger than other leading edge gel products.', '2100.00', 0),
(176, '5423437993', 'MIELLE tinys&tots  SACHA INCHI  CURL ENHANCING CRE', '5423437993.jpg', '5', '28', 0, 'In-Stock', '0000-00-00 00:00:00', 120, 'Minimize the fuss of styling your little oneâ€™s hair using the Sacha Inchi Curl Enhancing Cream. We combine multiple certified organic ingredients to deliver a unique formulation thatâ€™s simple and effective in enhancing the natural curl pattern of your little one while depositing moisture. Sacha Inchi, the South American superfood, delivers natural oils that will keep curls well maintained.', '1950.00', 0),
(177, '0461946957', 'MIELLE tiny &tots SACHA INCHI CLEANSING SHAMPOO', '0461946957.jpg', '5', '28', 1, 'In-Stock', '0000-00-00 00:00:00', 100, 'Few things are more complex than parenthood. Choosing the right hair care products for your precious little ones is now simpler. Our Cleansing Shampoo contains natural and certified organic ingredients you can trust including Sacha Inchi Oil.\r\nThis natural South American superfood derives from a nut that provides a rich vegetable source of omega-3 fatty acids, proteins, vitamins and antioxidants. No more worrying about overly complex formulas. Our gentle, effective formulation ensures that your little ones get products that are age and hair type appropriate\r\n', '1950.00', 0),
(178, '8838726780', 'MIELLE tinys&tots SACHA INCHI CLEANSING SHAMPOO', '8838726780.jpg', '5', '28', 1, 'In-Stock', '0000-00-00 00:00:00', 100, 'The Sacha Inchi Detangling Conditioner combines simple, yet effective natural ingredients, like Sacha Inchi Oil, to make detangling curls easier while leaving hair moisturized. This South American superfood is rich in natural omega-3 fatty acids that are known to help soothe and calm dry, itchy and sensitive skin experienced by little ones. It is high in protein which makes it a great addition to hair before applying heat.', '1950.00', 0),
(179, '4780907860', 'MIELLE MINT ALMOND OIL', '4780907860.jpg', '5', '29', 10, 'In-Stock', '0000-00-00 00:00:00', 129, 'Our natural lightweight Mint Almond Oil helps reduce breakage, excessive shedding and dry scalp. Almond oil is a carrier protein that binds to each strand to seal and lock in moisture. As a customer favourite, we know your hair and scalp will love the sweet refreshing results of almond oil and peppermint!', '2100.00', 0),
(180, '0733468819', 'MIELLE AVOCADO MOISTURIZING HAIR MILK', '0733468819.jpg', '5', '30', 10, 'In-Stock', '0000-00-00 00:00:00', 300, 'Our award-winning Moisturizing Avocado Hair Milk provides hydration and moisture for dry, thirsty hair. It is infused with a hydrating extract blend of botanicals and certified organic ingredients.Great for smoothing and softening the hair for moisture and manageability. Made with natural and organic ingredients', '2100.00', 0),
(181, '4752631743', 'MIELLE DETANGLING CO-WASH', '4752631743.jpg', '5', '31', 3, 'In-Stock', '0000-00-00 00:00:00', 100, 'Our Detangling Co-Wash works well for thin, thick, or curly hair. Best when used in between shampoos. It removes impurities without stripping hair of natural oils. Made with natural and certified organic ingredients, natural oils and preservatives this Co-Wash gently cleanses and conditions your hair. Our lightweight moisturizers soften and control frizz making it easier to detangle your hair. Over time, you should experience less breakage, knots and shedding while enjoying stronger hair and more length retention. This product may be used daily.', '1950.00', 0),
(182, '3806594154', 'MIELLE WHITE PEONY LEAVE-IN-CONDITIONER', '3806594154.jpg', '5', '32', 8, 'In-Stock', '0000-00-00 00:00:00', 1234, 'Our ultra-moisturizing White Peony Leave-In Conditioner is lightweight but packed with natural and organic ingredients to give your hair the moisture and protection it needs. Seal in moisture, smooth hair follicles, tame frizzes and flyaways. An excellent product when used for both daily styling and to help protect hair from heat damage', '2100.00', 0),
(183, '3170656495', 'MIELLE HEALTHY HAIR ADULT VITAMINS', '3170656495.jpg', '5', '33', 0, 'In-Stock', '0000-00-00 00:00:00', 345, 'Our best advanced healthy hair formula is a formulated supplement to support healthy hair without the skin breakouts. This vitamin is formulated to best support healthy hair, hair regrowth, skin and nails and immune system support.With our unique proprietary blend of herbs, amino acids and minerals, this formula works effectively in a natural way to support healthier, stronger, longer, thicker hair. Healthy hair and hair growth starts from within. If your diet lacks specific nutrients, including vitamins, minerals or protein, it can affect the condition and strength of your hair. Even leading to hair loss. Start your healthy hair journey with our natural formula.', '3100.00', 0),
(184, '7940753237', 'BABASSU OIL MINT DEEP CONDITIONER', '7940753237.jpg', '5', '26', 3, 'In-Stock', '0000-00-00 00:00:00', 124, 'Our Babassu Oil Mint Deep Conditioner infuses hair with protein and moisture to restore dry and damaged hair. Babassu Oil is derived from an Amazonian palm fruit that is high in sterols and tocopherols to improve hair and scalp health. Our product is enriched with fatty acids and natural oils that help reduce frizz and fly-aways. This deep penetrating conditioner is made with complex amino acids from wheat, soy and other natural ingredients that help restore moisture to damaged and dry hair. Safe to use on colour treated hair. Made with certified organic ingredients.', '2250.00', 0),
(185, '0899184530', 'DAILY HYDRATION CONDITIONER', '0899184530.jpg', '2', '17', 3, 'In-Stock', '0000-00-00 00:00:00', 20, 'Re-hydrate, soften and detangle hair with this daily rinse out conditioner. Formulated with a nourishing blend of 100% Virgin Coconut and Shea Oils, creamy Coconut Milk and Acacia Senegal that penetrates the hair shaft to re-hydrate and enhance natural softness while reducing frizz. Leaves hair wrapped in a light coastal coconut breeze', '2100.00', 0),
(186, '5028020870', 'DAILY HYDRATION SHAMPOO', '5028020870.jpg', '2', '17', 1, 'In-Stock', '0000-00-00 00:00:00', 134, 'Lift away impurities and re-hydrate hair with this gentle sulphate-free shampoo. Formulated with a nourishing blend of 100% Virgin Coconut and Shea Oils, creamy Coconut Milk and Acacia Senegal that helps provide renewed hydration, manageability and shine. Leave hair wrapped in a light coastal coconut breeze', '2100.00', 0),
(187, '4626017114', 'OIL HYDRATION  FINISHING OIL SERUM', '4626017114.jpg', '2', '17', 10, 'In-Stock', '0000-00-00 00:00:00', 67, 'A fast absorbing, silicone-free treatment that combines the lightness of milk with the potency of oil. Use as a finisher to lock in moisture, shield strands, tame unruly flyaways and add healthy looking shine. Leaves hair delicately fragranced, looking and feeling silky smooth.', '2250.00', 0),
(188, '5681979963', 'LEAVE IN TREATMENT', '5681979963.jpg', '2', '17', 8, 'In-Stock', '0000-00-00 00:00:00', 90, 'Soften hair and improve styling manageability with this lightweight, milk leave-in treatment. 100% Extra Virgin Coconut and Shea Oils, Coconut Milk and Acacia Senegal combine in this restorative formula that re-hydrates hair, detangles and acts as a barrier against heat while reducing frizz. Leaves hair wrapped in a light coastal coconut breeze', '2250.00', 0),
(189, '8444216472', 'BRAID â€“UP CONDITIONING GEL', '8444216472.jpg', '2', '34', 3, 'In-Stock', '0000-00-00 00:00:00', 130, 'Create simple or complex braided styles with effortless control using this conditioning gel. Super-hydrating Jojoba Oil, soothing Ucuuba Butter and Carrot Seed Oil blend in this non-greasy formula that softens, improves workability and adds suppleness so hair resists breakage caused by tugging and tightness. Lightweight hold helps keep flyaways and frizz under control.', '1800.00', 0),
(190, '5259052785', 'BRAID UP & TAKE DOWN DETANGLER', '5259052785.jpg', '2', '34', 13, 'In-Stock', '0000-00-00 00:00:00', 230, 'Prime hair for easy braid-up and stress free take-down with this nutrient rich detangler. Super-hydrating Jojoba oil, soothing ucuuba butter and carrot seed oil blend in Shea Moisture Jojoba Oil &Ucuuba Butter Braid Up & Take Down Hair Detangler to add elasticity and slip for easy prep, while enhancing performance of styling products', '2700.00', 0),
(191, '3854359234', 'LAYDOWN LACQUER', '3854359234.jpg', '2', '34', 3, 'In-Stock', '0000-00-00 00:00:00', 560, 'Control unruly strands with this low-residue laydown lacquer. Infused with Jojoba Oil, Ucuuba Butter and Carrot Seed Oil to keep braided styles in-tact longer while adding brilliant shine.', '1800.00', 0),
(192, '5176047661', 'NO RINSE FOAM CLEANSER', '5176047661.jpg', '2', '34', 10, 'In-Stock', '0000-00-00 00:00:00', 450, 'Remove dirt and residue with Shea Moisture Jojoba Oil & Ucuuba Butter No-Rinse Foam Cleanser with Carrot Seed Oil without using water. Super-hydrating jojoba oil, soothing ucuuba butter and carrot seed oil are infused in this environmentally friendly cleanser that requires no water, yet refreshes hair and scalp.', '2250.00', 0),
(193, '2820031232', 'ODOUR NEUTRALIZING MIST', '2820031232.jpg', '2', '34', 10, 'In-Stock', '0000-00-00 00:00:00', 1230, 'Eliminate lingering odours and itchy scalp with Shea Moisture Jojoba Oil & Ucuuba Butter Odour Neutralizing Mist with Carrot Seed Oil. Jojoba oil, ucuuba butter and carrot seed oil are infused in this lightweight formula that refreshes hair and scalp, neutralizing funky scents between washes. A great pick-me-up for braid and weave styles--just spritz away to instantly deodorize hair', '2250.00', 0),
(194, '8858072000', 'MULTI-VITAMIN FRIZZ-TAMING SMOOTHIE', '8858072000.jpg', '2', '35', 10, 'In-Stock', '0000-00-00 00:00:00', 234, 'Smooth and enhance definition for perfect waves and curls with this antioxidant-rich styling cream. Tames frizz and flyaways. Our proprietary antioxidant-rich Super fruit Complex combines with certified organic Shea Butter, Marula Oil and Biotin in a multi-vitamin formula to nourish and enrich dull, lacklustre waves and curls.', '2450.00', 0),
(195, '8127712641', 'SUPERFRUIT MULTI-VITAMIN LEAVE â€“ IN DETANGLER', '8127712641.jpg', '2', '35', 13, 'In-Stock', '0000-00-00 00:00:00', 123, 'Separate and unravel tangled strands and knots with the multi-benefit leave-in treatment. Our proprietary antioxidant-rich Super fruit Complex combines with certified organic Shea Butter, Marula Oil and Biotin in a multi-vitamin formula to nourish and enrich dull, lacklustre waves and curls.', '2300.00', 0),
(196, '0937248448', ' LOC& BRAID  BUTTER', '0937248448.jpg', '2', '8', 10, 'In-Stock', '0000-00-00 00:00:00', 1230, 'This nourishing loc care from Shea Moisture is created using a 100% vegan formula and is designed to strengthen your curls and increase resistance to breakage. Shea Moistureâ€™s Jamaican Black Castor Oil Strengthen, Grow & Restore Loc& Braid Butter is hair care that tames stray flyaways and transitions frizzy, chemically processed hair to easily manageable, tangle-free, absolutely stunning Locs& Braids.', '2100.00', 0),
(197, '0796315747', 'STRENGHEN & RESTORE SHAMPOO', '0796315747.jpg', '2', '8', 1, 'In-Stock', '0000-00-00 00:00:00', 345, 'Shea Moisture''s Jamaican Black Castor Oil Strengthen, Grow and Restore Shampoo is a clarifying, sulphate- free shampoo that removes product build-up, while infusing hair with moisture.Promotes growth by nourishing and strengthening damaged or chemically processed hair, reducing the appearance of breakage and shedding', '2100.00', 0),
(198, '1389093113', 'STRENGTH & RESTORE LEAVE-IN CONDITIONER', '1389093113.jpg', '2', '8', 8, 'In-Stock', '0000-00-00 00:00:00', 23, 'This Leave In softens and detangles hair while controlling frizz. Formulated with Jamaican Black Castor Oil and certified organic Shea Butter to nourish, moisturize and support elasticity so hair resists breakage when detangling. Conditioners provide a protective layer that improves the appearance of split ends. Peppermint stimulates the scalp for an invigorating experience', '2300.00', 0),
(199, '4100983604', 'African Black Soap Problem Skin Moisturizer', '4100983604.jpg', '2', '7', 11, 'In-Stock', '0000-00-00 00:00:00', 34, 'Shea Moisture African Black Soap Problem Skin Moisturizer with Tamarind &Tea Tree Oil. Clear and Balance Blemished, Oily Skin. This lightweight moisturizer keeps problem skin hydrated while balancing oily and blemished complexions. Promotes a smooth, shine-free finish. African Black Soap and Organic Shea Butter, time honoured natural beauty secrets, help address skin problems associated with acne. Excellent under make-up.', '2450.00', 0),
(200, '9331472412', 'African Black Soap Problem Skin Toner', '9331472412.jpg', '2', '7', 11, 'In-Stock', '0000-00-00 00:00:00', 345, 'Shea Moisture African Black Soap problem skin Toner with Tamarind and Tea Tree Oil. Helps clear and balance blemished, oily skin. A refreshing dual action toner, formulated with time honoured natural blemish-fighting secrets, African Black Soap and organic Shea Butter, helps address skin problems associated with acne. Manages oil and shine without clogging pores', '1350.00', 0),
(201, '3683969214', 'Manuka Honey & Mafura Intensive Hydration Hand Cre', '3683969214.jpg', '2', '7', 4, 'In-Stock', '0000-00-00 00:00:00', 120, 'This vitamin rich hand cream deeply moisturizes, providing immediate relief to dry, rough skin. Certified organic Shea Butter, Honey, Mafura ad Baobab are blended in a rich, restorative formula that boosts skin''s hydration. African Rock Fig helps to smooth and restore softness to hands', '1700.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `technobraintest`
--

CREATE TABLE `technobraintest` (
  `id` int(10) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `date_today` date NOT NULL,
  `time_now` time NOT NULL,
  `desposition` varchar(100) NOT NULL,
  `desposition_comments` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technobraintest`
--

INSERT INTO `technobraintest` (`id`, `client_name`, `date_today`, `time_now`, `desposition`, `desposition_comments`) VALUES
(1, 'shawn', '2018-07-10', '10:18:39', '', ''),
(2, 'rk', '2018-07-10', '10:30:02', 'No Answer', 'lacks description'),
(3, 'shawn Andre', '2018-07-10', '12:11:48', '', ''),
(4, 'mbuvi dre', '2018-07-10', '15:54:32', '', ''),
(5, 'kevs', '2018-07-10', '16:58:33', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(3) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `amount` float NOT NULL,
  `status` varchar(10) NOT NULL,
  `referenceNo` varchar(20) NOT NULL,
  `trackingId` varchar(20) NOT NULL,
  `paymentMethod` varchar(20) NOT NULL,
  `userId` varchar(3) NOT NULL,
  `customer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `currency`, `amount`, `status`, `referenceNo`, `trackingId`, `paymentMethod`, `userId`, `customer`) VALUES
(85, 'KES', 1, 'PLACED', 'bf1veHVYAQ', '', '', '6', ''),
(87, 'KES', 10, 'PLACED', 'hH8koJoz2z', '', '', '6', ''),
(89, 'KES', 2, 'PLACED', 'OYVokku5by', '', '', '6', ''),
(90, 'KES', 2, 'PLACED', 'rUyPY69jHV', '', '', '6', ''),
(91, 'KES', 2, 'PLACED', '4KakILHJEQ', '', '', '6', ''),
(92, 'KES', 2, 'PLACED', 'b4J0UwpV1W', '', '', '6', ''),
(93, 'KES', 1, 'PLACED', 'WbtyvPSgWO', '', '', '6', '');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` int(20) NOT NULL,
  `address` varchar(450) DEFAULT NULL,
  `address_two` varchar(450) NOT NULL,
  `locality` varchar(100) NOT NULL,
  `activation_code` varchar(100) NOT NULL,
  `activated` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_superadmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`user_id`, `fname`, `lname`, `email`, `password`, `mobile`, `address`, `address_two`, `locality`, `activation_code`, `activated`, `is_admin`, `is_superadmin`) VALUES
(1, 'shawn', 'mbuvi', 'shawnmbuvi@gmail.com', '5be686f6122007349940ce8cc658b600', 727088016, 'kiu', 'Kiambu', 'Nairobi', 'a1d0c6e83f027327d8461063f4ac58a6', 0, 1, 0),
(6, 'sean', 'mbuvi', 'seanmbuvi5@gmail.com', '5be686f6122007349940ce8cc658b600', 727088016, 'Nairobi', 'Nairobi', 'Nairobi', '3a835d3215755c435ef4fe9965a3f2a0', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `firstName` varchar(10) NOT NULL,
  `lastName` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phoneNo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `phoneNo`) VALUES
(17, 'Jeff', 'Ngutu', 'seanmbuvi5@gmail.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_title` (`cat_title`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`col_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`loc_id`);

--
-- Indexes for table `mpesa_apitest`
--
ALTER TABLE `mpesa_apitest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mpesa_transactions`
--
ALTER TABLE `mpesa_transactions`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_totals`
--
ALTER TABLE `order_totals`
  ADD PRIMARY KEY (`od_id`);

--
-- Indexes for table `paypal_payments`
--
ALTER TABLE `paypal_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `technobraintest`
--
ALTER TABLE `technobraintest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `col_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `loc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mpesa_apitest`
--
ALTER TABLE `mpesa_apitest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mpesa_transactions`
--
ALTER TABLE `mpesa_transactions`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `order_totals`
--
ALTER TABLE `order_totals`
  MODIFY `od_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `paypal_payments`
--
ALTER TABLE `paypal_payments`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `technobraintest`
--
ALTER TABLE `technobraintest`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
