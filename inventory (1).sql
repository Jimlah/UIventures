-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 14, 2018 at 11:27 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id5067893_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE IF NOT EXISTS `branch` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(50) NOT NULL,
  `branch_address` varchar(100) NOT NULL,
  `branch_contact` varchar(50) NOT NULL,
  `skin` varchar(15) NOT NULL,
  `pic` text NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_address`, `branch_contact`, `skin`, `pic`) VALUES
(1, 'UI Bread', 'Ajibode road, Ajibode gate, University of Ibadan, Ibadan', '08101847790', 'yellow', 'bread.jpeg'),
(2, 'UI Water', 'Atiba road, 2nd gate, University of Ibadan, Ibadan.', '08156591315', 'purple', 'water.jpg'),
(3, 'UI Hotels', 'Opp. Chapel of Resurrection, University of Ibadan, Ibadan', '08156591316', 'blue', 'hotels.jpg'),
(4, 'UI Fish', 'University of Ibadan, Ibadan', '08156591315', 'green', 'fish.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(30) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(12, 'bread Materials'),
(13, 'water materials'),
(14, 'hotel materials'),
(15, 'Tilapia'),
(16, 'Catfish');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_first` varchar(50) NOT NULL,
  `cust_last` varchar(30) NOT NULL,
  `cust_address` varchar(100) NOT NULL,
  `cust_contact` varchar(30) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `cust_pic` varchar(300) NOT NULL,
  `bday` date NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `house_status` varchar(30) NOT NULL,
  `years` varchar(20) NOT NULL,
  `rent` varchar(10) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_no` varchar(30) NOT NULL,
  `emp_address` varchar(100) NOT NULL,
  `emp_year` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `salary` varchar(30) NOT NULL,
  `spouse` varchar(30) NOT NULL,
  `spouse_no` varchar(30) NOT NULL,
  `spouse_emp` varchar(50) NOT NULL,
  `spouse_details` varchar(100) NOT NULL,
  `spouse_income` decimal(10,2) NOT NULL,
  `comaker` varchar(30) NOT NULL,
  `comaker_details` varchar(100) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `credit_status` varchar(10) NOT NULL,
  `ci_remarks` varchar(1000) NOT NULL,
  `ci_name` varchar(50) NOT NULL,
  `ci_date` date NOT NULL,
  `payslip` int(11) NOT NULL,
  `valid_id` int(11) NOT NULL,
  `cert` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `income` int(11) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_first`, `cust_last`, `cust_address`, `cust_contact`, `balance`, `cust_pic`, `bday`, `nickname`, `house_status`, `years`, `rent`, `emp_name`, `emp_no`, `emp_address`, `emp_year`, `occupation`, `salary`, `spouse`, `spouse_no`, `spouse_emp`, `spouse_details`, `spouse_income`, `comaker`, `comaker_details`, `branch_id`, `credit_status`, `ci_remarks`, `ci_name`, `ci_date`, `payslip`, `valid_id`, `cert`, `cedula`, `income`) VALUES
(1, 'Kehinde', 'abbey', 'Bello hall', '09098014785', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(3, 'ojo', 'sade ', 'Tedder hall, UI', '0814523698', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(4, 'ade', 'feyi ', 'mellanby hall', '09089890909', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(5, 'Seun', 'Dayo', 'Tedder hall', '08012345678', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(6, 'Ife', 'Tayo', 'Abadina', '08078685678', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(7, 'Wuraola', 'Waliu', 'Ajibode', '0814785236', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(8, 'Seun', 'ade', 'sango, ibadan', '0814523698', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 4, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(9, 'Deji', 'Taiwo', 'Ojoo\r\n', '08025896347', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 4, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(10, 'Olu', 'Seyi', 'Agbowo', '08012345678', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 4, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(12, 'Abdulazeez', 'Tijani', 'Ibadan', '08169530912', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(13, 'Funmi', 'Feyi', 'lagos\r\n', '08025896312', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 2, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(14, 'Temi', 'Ola', 'Ojoo', '08147852369', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 2, '', '', '', '0000-00-00', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

DROP TABLE IF EXISTS `history_log`;
CREATE TABLE IF NOT EXISTS `history_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 1, 'added 5 of LG 43\" UHD TV UH6100', '2017-02-04 01:10:41'),
(2, 1, 'added 100 of Lotion', '2017-02-04 01:10:49'),
(3, 1, 'added 10 of Rice Cooker', '2017-02-04 01:10:55'),
(4, 1, 'added 5 of Samsung', '2017-02-04 01:11:07'),
(5, 1, 'has logged in the system at ', '2017-02-04 08:22:52'),
(6, 1, 'has logged in the system at ', '2017-02-04 08:51:11'),
(7, 1, 'has logged in the system at ', '2017-02-04 13:13:53'),
(8, 1, 'has logged in the system at ', '2017-02-21 18:56:56'),
(9, 1, 'added a payment of -76.6 for , ', '2017-02-21 00:00:00'),
(10, 1, 'has logged in the system at ', '2018-02-05 04:58:56'),
(11, 1, 'has logged in the system at ', '2018-02-05 04:59:40'),
(12, 6, 'has logged out the system at ', '2018-02-05 05:57:36'),
(13, 8, 'has logged in the system at ', '2018-02-05 11:47:17'),
(14, 1, 'has logged in the system at ', '2018-02-06 00:06:29'),
(15, 1, 'has logged in the system at ', '2018-02-06 00:06:29'),
(16, 6, 'has logged out the system at ', '2018-02-06 00:40:18'),
(17, 1, 'has logged in the system at ', '2018-02-06 00:40:28'),
(18, 1, 'has logged in the system at ', '2018-02-06 14:51:00'),
(19, 1, 'has logged in the system at ', '2018-02-06 14:51:39'),
(20, 1, 'added 3 of butter', '2018-02-06 15:22:22'),
(21, 1, 'added 2 of Sugar', '2018-02-06 15:22:40'),
(22, 1, 'added 3 of flour', '2018-02-06 15:24:35'),
(23, 1, 'has logged out the system at ', '2018-02-06 15:52:37'),
(24, 8, 'has logged in the system at ', '2018-02-06 15:52:46'),
(25, 1, 'has logged in the system at ', '2018-02-07 19:59:02'),
(26, 9, 'has logged in the system at ', '2018-02-13 00:37:49'),
(27, 7, 'has logged in the system at ', '2018-02-13 00:38:04'),
(28, 7, 'has logged out the system at ', '2018-02-13 01:11:17'),
(29, 1, 'has logged in the system at ', '2018-02-13 01:12:39'),
(30, 1, 'has logged in the system at ', '2018-02-13 07:54:35'),
(31, 1, 'has logged in the system at ', '2018-02-15 09:04:29'),
(32, 1, 'has logged out the system at ', '2018-02-15 17:00:07'),
(33, 1, 'has logged in the system at ', '2018-02-15 17:06:24'),
(34, 1, 'added 80 of Family size bread', '2018-02-15 17:37:28'),
(35, 7, 'has logged in the system at ', '2018-02-16 15:26:35'),
(36, 7, 'added 100 of Bottle water', '2018-02-16 15:37:05'),
(37, 7, 'added 500 of Sachet water ', '2018-02-16 15:37:14'),
(38, 1, 'has logged in the system at ', '2018-02-20 23:20:17'),
(39, 1, 'has logged out the system at ', '2018-02-20 23:25:29'),
(40, 1, 'has logged in the system at ', '2018-02-28 00:04:41'),
(41, 1, 'has logged in the system at ', '2018-03-09 18:33:03'),
(42, 1, 'has logged in the system at ', '2018-03-13 23:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `payment_for` date NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `interest` decimal(10,2) NOT NULL,
  `remaining` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `rebate` decimal(10,2) NOT NULL,
  `or_no` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3184 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `cust_id`, `sales_id`, `payment`, `payment_date`, `user_id`, `branch_id`, `payment_for`, `due`, `interest`, `remaining`, `status`, `rebate`, `or_no`) VALUES
(3156, 1, 6, '550.00', '2017-02-21 19:57:12', 1, 1, '2017-02-21', '550.00', '0.00', '0.00', 'paid', '0.00', 1901),
(3157, 2, 7, '550.00', '2017-02-21 19:57:29', 1, 1, '2017-02-21', '550.00', '0.00', '0.00', 'paid', '0.00', 1902),
(3163, 2, 9, '113.30', '2017-02-21 21:31:20', 1, 1, '2017-03-21', '113.30', '0.00', '0.00', 'paid', '0.00', 0),
(3164, 2, 9, '36.70', '2017-02-21 21:31:20', 1, 1, '2017-04-21', '113.30', '9.10', '140.30', 'partially paid', '0.00', 0),
(3165, 2, 9, '0.00', '0000-00-00 00:00:00', 1, 1, '2017-05-21', '113.30', '9.10', '177.00', '', '0.00', 0),
(3166, 2, 9, '0.00', '0000-00-00 00:00:00', 1, 1, '2017-06-21', '113.30', '9.10', '177.00', '', '0.00', 0),
(3167, 2, 9, '113.30', '2017-02-21 00:00:00', 1, 1, '2017-02-21', '113.30', '0.00', '0.00', 'paid', '0.00', 3151),
(3168, 3, 10, '4840.00', '2018-02-06 15:35:58', 1, 1, '2018-02-06', '4840.00', '0.00', '0.00', 'paid', '0.00', 1903),
(3169, 4, 11, '1920.00', '2018-02-06 15:37:13', 1, 1, '2018-02-06', '1920.00', '0.00', '0.00', 'paid', '0.00', 1904),
(3170, 5, 12, '1420.00', '2018-02-06 15:38:18', 1, 1, '2018-02-06', '1420.00', '0.00', '0.00', 'paid', '0.00', 1905),
(3171, 6, 13, '5800.00', '2018-02-06 15:39:31', 1, 1, '2018-02-06', '5800.00', '0.00', '0.00', 'paid', '0.00', 1906),
(3172, 7, 14, '6000.00', '2018-02-06 15:41:13', 1, 1, '2018-02-06', '6000.00', '0.00', '0.00', 'paid', '0.00', 1907),
(3173, 8, 15, '10250.00', '2018-02-06 16:01:32', 8, 4, '2018-02-06', '10250.00', '0.00', '0.00', 'paid', '0.00', 1908),
(3174, 9, 16, '10100.00', '2018-02-06 16:02:52', 8, 4, '2018-02-06', '10100.00', '0.00', '0.00', 'paid', '0.00', 1909),
(3175, 10, 17, '11250.00', '2018-02-06 16:04:26', 8, 4, '2018-02-06', '11250.00', '0.00', '0.00', 'paid', '0.00', 1910),
(3176, 1, 18, '100.00', '2018-02-13 01:12:52', 1, 1, '2018-02-13', '100.00', '0.00', '0.00', 'paid', '0.00', 1911),
(3177, 5, 19, '3300.00', '2018-02-13 07:55:31', 1, 1, '2018-02-13', '3300.00', '0.00', '0.00', 'paid', '0.00', 1912),
(3178, 6, 20, '3580.00', '2018-02-13 08:01:43', 1, 1, '2018-02-13', '3580.00', '0.00', '0.00', 'paid', '0.00', 1913),
(3179, 1, 21, '0.00', '2018-02-15 12:49:17', 1, 1, '2018-02-15', '0.00', '0.00', '0.00', 'paid', '0.00', 1914),
(3180, 12, 22, '2400.00', '2018-02-15 17:26:00', 1, 1, '2018-02-15', '2400.00', '0.00', '0.00', 'paid', '0.00', 1915),
(3181, 13, 23, '9000.00', '2018-02-16 15:38:07', 7, 2, '2018-02-16', '9000.00', '0.00', '0.00', 'paid', '0.00', 1916),
(3182, 14, 24, '21000.00', '2018-02-16 15:39:01', 7, 2, '2018-02-16', '21000.00', '0.00', '0.00', 'paid', '0.00', 1917),
(3183, 4, 25, '2360.00', '2018-02-28 00:06:23', 1, 1, '2018-02-28', '2360.00', '0.00', '0.00', 'paid', '0.00', 1918);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(100) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_pic` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `reorder` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `serial` varchar(50) NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `prod_desc`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `reorder`, `supplier_id`, `serial`) VALUES
(17, 'Bread(#80)', '', '80.00', 'default.gif', 12, 9, 1, 100, 10, '5324'),
(18, 'Bread(#100)', '', '100.00', 'default.gif', 12, 52, 1, 80, 9, '1248'),
(19, 'Bread(#120)', '', '120.00', 'default.gif', 12, 81, 1, 100, 8, '2586'),
(20, 'Slice Bread', '', '300.00', 'default.gif', 12, 51, 1, 50, 8, '1238'),
(21, 'Family size bread', '', '500.00', 'default.gif', 12, 83, 1, 10, 8, '2596'),
(22, 'Catfish (250)', 'fish', '250.00', 'default.gif', 16, 113, 4, 50, 8, '2145'),
(23, 'Cat fish (#500)', 'fish', '500.00', 'Default.gif', 16, 45, 4, 50, 8, '2454'),
(24, 'Tilapia (#150)', 'fish', '150.00', 'Default.gif', 15, 15, 4, 50, 8, '2145'),
(25, 'Cat fish (#750)', 'fish', '750.00', 'Default.gif', 16, 16, 4, 10, 8, '2254'),
(26, 'Tilapia (#350)', 'fish', '350.00', 'Default.gif', 15, 24, 4, 20, 8, '2445'),
(27, 'Sachet water ', '', '120.00', 'default.gif', 13, 350, 2, 200, 8, 'y777'),
(28, 'Bottle water', 'water', '300.00', 'default.gif', 13, 60, 2, 70, 8, 'y778');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_request`
--

DROP TABLE IF EXISTS `purchase_request`;
CREATE TABLE IF NOT EXISTS `purchase_request` (
  `pr_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `request_date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `purchase_status` varchar(10) NOT NULL,
  PRIMARY KEY (`pr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `sales_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_tendered` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `cash_change` decimal(10,2) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `modeofpayment` varchar(15) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`sales_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `cust_id`, `user_id`, `cash_tendered`, `discount`, `amount_due`, `cash_change`, `date_added`, `modeofpayment`, `branch_id`, `total`) VALUES
(1, 1, 1, '500.00', '50.00', '500.00', '0.00', '2017-02-04 01:33:28', 'cash', 1, '450.00'),
(2, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 18:57:26', 'cash', 1, '550.00'),
(3, 1, 1, '0.00', '550.00', '0.00', '0.00', '2017-02-21 19:49:41', 'cash', 1, '-550.00'),
(4, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:55:57', 'cash', 1, '550.00'),
(5, 2, 1, '110.00', '0.00', '110.00', '0.00', '2017-02-21 19:56:17', 'cash', 1, '110.00'),
(6, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:57:12', 'cash', 1, '550.00'),
(7, 2, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:57:29', 'cash', 1, '550.00'),
(9, 2, 1, NULL, NULL, '0.00', NULL, '2017-02-21 21:16:52', 'credit', 1, '550.00'),
(10, 3, 1, '0.00', '0.00', '4840.00', '0.00', '2018-02-06 15:35:58', 'cash', 1, '4840.00'),
(11, 4, 1, '0.00', '0.00', '1920.00', '0.00', '2018-02-06 15:37:13', 'cash', 1, '1920.00'),
(12, 5, 1, '0.00', '0.00', '1420.00', '0.00', '2018-02-06 15:38:18', 'cash', 1, '1420.00'),
(13, 6, 1, '0.00', '0.00', '5800.00', '0.00', '2018-02-06 15:39:31', 'cash', 1, '5800.00'),
(14, 7, 1, '0.00', '0.00', '6000.00', '0.00', '2018-02-06 15:41:13', 'cash', 1, '6000.00'),
(15, 8, 8, '0.00', '0.00', '10250.00', '0.00', '2018-02-06 16:01:32', 'cash', 4, '10250.00'),
(16, 9, 8, '0.00', '0.00', '10100.00', '0.00', '2018-02-06 16:02:52', 'cash', 4, '10100.00'),
(17, 10, 8, '0.00', '0.00', '11250.00', '0.00', '2018-02-06 16:04:26', 'cash', 4, '11250.00'),
(18, 1, 1, '0.00', '0.00', '100.00', '0.00', '2018-02-13 01:12:52', 'cash', 1, '100.00'),
(19, 5, 1, '0.00', '0.00', '3300.00', '0.00', '2018-02-13 07:55:31', 'cash', 1, '3300.00'),
(20, 6, 1, '0.00', '0.00', '3580.00', '0.00', '2018-02-13 08:01:43', 'cash', 1, '3580.00'),
(21, 1, 1, '0.00', '0.00', '0.00', '0.00', '2018-02-15 12:49:17', 'cash', 1, '0.00'),
(22, 12, 1, '0.00', '0.00', '2400.00', '0.00', '2018-02-15 17:26:00', 'cash', 1, '2400.00'),
(23, 13, 7, '0.00', '0.00', '9000.00', '0.00', '2018-02-16 15:38:07', 'cash', 2, '9000.00'),
(24, 14, 7, '0.00', '0.00', '21000.00', '0.00', '2018-02-16 15:39:01', 'cash', 2, '21000.00'),
(25, 4, 1, '0.00', '0.00', '2360.00', '0.00', '2018-02-28 00:06:23', 'cash', 1, '2360.00');

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

DROP TABLE IF EXISTS `sales_details`;
CREATE TABLE IF NOT EXISTS `sales_details` (
  `sales_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`sales_details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`sales_details_id`, `sales_id`, `prod_id`, `price`, `qty`) VALUES
(1, 1, 13, '550.00', 1),
(2, 2, 13, '550.00', 1),
(3, 3, 13, '550.00', 1),
(4, 4, 13, '550.00', 1),
(5, 5, 16, '110.00', 1),
(6, 6, 13, '550.00', 1),
(7, 7, 13, '550.00', 1),
(8, 8, 13, '550.00', 1),
(9, 9, 13, '550.00', 1),
(10, 10, 18, '100.00', 10),
(11, 10, 19, '120.00', 8),
(12, 10, 17, '80.00', 11),
(13, 10, 21, '500.00', 1),
(14, 10, 20, '300.00', 5),
(15, 11, 18, '100.00', 2),
(16, 11, 19, '120.00', 7),
(17, 11, 17, '80.00', 1),
(18, 11, 21, '500.00', 1),
(19, 11, 20, '300.00', 1),
(20, 12, 17, '80.00', 10),
(21, 12, 19, '120.00', 1),
(22, 12, 18, '100.00', 5),
(23, 13, 18, '100.00', 10),
(24, 13, 17, '80.00', 15),
(25, 13, 20, '300.00', 12),
(26, 14, 18, '100.00', 30),
(27, 14, 20, '300.00', 10),
(28, 15, 23, '500.00', 10),
(29, 15, 22, '250.00', 7),
(30, 15, 26, '350.00', 10),
(31, 16, 23, '500.00', 15),
(32, 16, 26, '350.00', 1),
(33, 16, 25, '750.00', 3),
(34, 17, 24, '150.00', 20),
(35, 17, 22, '250.00', 30),
(36, 17, 25, '750.00', 1),
(37, 18, 18, '100.00', 1),
(38, 19, 19, '120.00', 12),
(39, 19, 18, '100.00', 2),
(40, 19, 20, '300.00', 5),
(41, 19, 17, '80.00', 2),
(42, 20, 18, '100.00', 7),
(43, 20, 19, '120.00', 12),
(44, 20, 17, '80.00', 3),
(45, 20, 20, '300.00', 4),
(46, 22, 19, '120.00', 10),
(47, 22, 20, '300.00', 2),
(48, 22, 18, '100.00', 1),
(49, 22, 21, '500.00', 1),
(50, 23, 28, '300.00', 10),
(51, 23, 27, '120.00', 50),
(52, 24, 28, '300.00', 30),
(53, 24, 27, '120.00', 100),
(54, 25, 19, '120.00', 19),
(55, 25, 17, '80.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stockin`
--

DROP TABLE IF EXISTS `stockin`;
CREATE TABLE IF NOT EXISTS `stockin` (
  `stockin_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) NOT NULL,
  `qty` int(6) NOT NULL,
  `date` datetime NOT NULL,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`stockin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockin`
--

INSERT INTO `stockin` (`stockin_id`, `prod_id`, `qty`, `date`, `branch_id`) VALUES
(1, 5, 5, '2017-02-04 01:10:41', 1),
(2, 15, 100, '2017-02-04 01:10:49', 1),
(3, 13, 10, '2017-02-04 01:10:55', 1),
(4, 14, 5, '2017-02-04 01:11:07', 1),
(5, 21, 3, '2018-02-06 15:22:22', 1),
(6, 17, 2, '2018-02-06 15:22:40', 1),
(7, 18, 3, '2018-02-06 15:24:35', 1),
(8, 21, 80, '2018-02-15 17:37:28', 1),
(9, 28, 100, '2018-02-16 15:37:05', 2),
(10, 27, 500, '2018-02-16 15:37:14', 2);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(100) NOT NULL,
  `supplier_address` varchar(300) NOT NULL,
  `supplier_contact` varchar(50) NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_contact`) VALUES
(8, 'UI Ventures ltd', 'UI,Ibadan', '08114785236'),
(9, 'Eagles Flours mill', 'Toll-gate, Ibadan', '08125836914'),
(10, 'Dangote Sugar ltd', 'Ewekoro,Ogun state', '08114785236'),
(11, 'Ade Enterprise', 'Ojoo, Ibadan', '08125836914');

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

DROP TABLE IF EXISTS `temp_trans`;
CREATE TABLE IF NOT EXISTS `temp_trans` (
  `temp_trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`temp_trans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

DROP TABLE IF EXISTS `term`;
CREATE TABLE IF NOT EXISTS `term` (
  `term_id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) DEFAULT NULL,
  `payable_for` varchar(10) NOT NULL,
  `term` varchar(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `payment_start` date NOT NULL,
  `down` decimal(10,2) NOT NULL,
  `due_date` date NOT NULL,
  `interest` decimal(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`term_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`term_id`, `sales_id`, `payable_for`, `term`, `due`, `payment_start`, `down`, `due_date`, `interest`, `status`) VALUES
(1, 8, '4', 'monthly', '113.30', '2017-02-21', '113.30', '2017-06-21', '16.50', ''),
(2, 9, '4', 'monthly', '113.30', '2017-02-21', '113.30', '2017-06-21', '16.50', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `branch_id`) VALUES
(1, 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Wale Ade', 'active', 1),
(6, 'administrator', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Tijani Abdulazeez', 'active', 0),
(7, 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Shola Remi', 'active', 2),
(8, 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Dauda Saheed', 'active', 4),
(9, 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Sunday Tayo', 'active', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
