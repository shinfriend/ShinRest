-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015 年 8 朁E25 日 16:16
-- サーバのバージョン： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shinrestaurant`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `cook_master`
--

CREATE TABLE IF NOT EXISTS `cook_master` (
  `cook_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `DOB` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `monthly_salary` varchar(45) DEFAULT NULL,
  `joining_date` varchar(45) DEFAULT NULL,
  `pending_payment` int(11) DEFAULT NULL,
  `paid_amount` int(11) DEFAULT '0',
  `current_status` varchar(10) DEFAULT NULL,
  `regist_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `upd_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cook_master_id`),
  UNIQUE KEY `cook_master_id_UNIQUE` (`cook_master_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1003 ;

--
-- テーブルのデータのダンプ `cook_master`
--

INSERT INTO `cook_master` (`cook_master_id`, `first_name`, `last_name`, `DOB`, `address`, `contact_no`, `monthly_salary`, `joining_date`, `pending_payment`, `paid_amount`, `current_status`, `regist_date`, `upd_date`) VALUES
(1000, 'Roshan', 'Chimankar', '1971-12-23', 'Kawasaki,Japan', '90191010', '1201010', '2015-05-30', 20000, 10000, 'Active', '2015-08-25 05:19:00', '2015-08-25 05:19:00'),
(1001, 'Amardeep', 'Chimanakr', '1997-01-24', 'Akishima,Japan', '9012821111', '300000', '2011-10-30', 130000, 120000, 'Active', '2015-08-25 05:19:44', '2015-08-25 05:19:44'),
(1002, 'Yogesh', 'Chaudhari', '2010-09-29', 'Nagpur,India', '0902222222', '120000', '2014-08-30', 120000, 11000, 'Active', '2015-08-25 05:20:36', '2015-08-25 05:20:36');

-- --------------------------------------------------------

--
-- テーブルの構造 `daily_transaction`
--

CREATE TABLE IF NOT EXISTS `daily_transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_date` varchar(45) NOT NULL,
  `vendor_type` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `pay_pending` int(11) NOT NULL DEFAULT '0',
  `pay_done` int(11) NOT NULL DEFAULT '0',
  `pay_received` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`transaction_id`,`transaction_date`,`vendor_type`,`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `monthly_profit`
--

CREATE TABLE IF NOT EXISTS `monthly_profit` (
  `yearmonth` varchar(20) NOT NULL,
  `credit` int(11) NOT NULL DEFAULT '0',
  `debit` int(11) DEFAULT '0',
  `profit` int(11) DEFAULT '0',
  PRIMARY KEY (`yearmonth`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- テーブルの構造 `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `order_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_of_lunch` int(11) NOT NULL DEFAULT '0',
  `no_of_dinner` int(11) NOT NULL DEFAULT '0',
  `payment_received` int(11) DEFAULT NULL,
  `order_date` varchar(45) DEFAULT NULL,
  `regist_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `upd_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `parttime_worker`
--

CREATE TABLE IF NOT EXISTS `parttime_worker` (
  `parttime_worker_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `DOB` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `hourly_rate` int(11) NOT NULL DEFAULT '0',
  `joining_date` varchar(45) NOT NULL,
  `paid_amount` int(11) DEFAULT '0',
  `pending_payment` int(11) DEFAULT '0',
  `status` varchar(10) DEFAULT NULL,
  `regist_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`parttime_worker_id`),
  UNIQUE KEY `DOB_UNIQUE` (`DOB`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2002 ;

--
-- テーブルのデータのダンプ `parttime_worker`
--

INSERT INTO `parttime_worker` (`parttime_worker_id`, `first_name`, `last_name`, `DOB`, `address`, `contact_no`, `hourly_rate`, `joining_date`, `paid_amount`, `pending_payment`, `status`, `regist_date`, `upd_date`) VALUES
(2000, 'Masaki', 'Tanaka', '1971-09-28', 'Hiroshima, Japan', '0909999999', 12000, '2013-07-27', 12000, 3000, 'Active', '2015-08-25 05:21:45', '2015-08-25 05:21:45'),
(2001, 'Nishant', 'Khobragade', '1991-04-22', 'Bhandara,India', '0903333333', 12000, '2000-11-17', 20000, 12000, 'Active', '2015-08-25 05:22:43', '2015-08-25 05:22:43');

-- --------------------------------------------------------

--
-- テーブルの構造 `supplier_master`
--

CREATE TABLE IF NOT EXISTS `supplier_master` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(20) NOT NULL,
  `supply_material` varchar(20) NOT NULL,
  `delivery_date` varchar(20) DEFAULT NULL,
  `payment_pending` int(11) NOT NULL DEFAULT '0',
  `paid_amount` int(11) NOT NULL DEFAULT '0',
  `regist_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3003 ;

--
-- テーブルのデータのダンプ `supplier_master`
--

INSERT INTO `supplier_master` (`supplier_id`, `supplier_name`, `supply_material`, `delivery_date`, `payment_pending`, `paid_amount`, `regist_date`, `upd_date`) VALUES
(3000, 'AsahiBeer', 'Beer', '2015-08-01', 20000, 3000, '2015-08-25 05:23:18', '2015-08-25 05:23:18'),
(3001, 'ChickenSupplier', 'Chicken', '2015-08-24', 100010, 10292, '2015-08-25 05:24:03', '2015-08-25 05:24:03'),
(3002, 'TanabeSupplier', 'Oshibori', '2015-08-16', 3000, 2000, '2015-08-25 05:24:42', '2015-08-25 05:24:42');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(16) DEFAULT NULL,
  `user` varchar(50) NOT NULL DEFAULT '',
  `pass` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `fax` varchar(12) DEFAULT NULL,
  `alt_phone` varchar(12) DEFAULT NULL,
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_active` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_level` smallint(1) NOT NULL DEFAULT '0',
  `notes` longtext,
  `admin_notes` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `ipaddress`, `user`, `pass`, `email`, `first_name`, `last_name`, `phone`, `fax`, `alt_phone`, `reg_date`, `last_active`, `user_level`, `notes`, `admin_notes`) VALUES
(1, '192.168.2.67', 'admin', '317da97d438875c141a4b5f9f67dfdd0', 'admin@site.com', '', '', '', '', '', '2008-01-21 00:00:54', '2008-01-20 16:19:11', 9, NULL, '');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_master`
--

CREATE TABLE IF NOT EXISTS `user_master` (
  `user_id` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `user_type` char(1) DEFAULT NULL,
  `regist_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ `user_master`
--

INSERT INTO `user_master` (`user_id`, `password`, `last_name`, `first_name`, `gender`, `user_type`, `regist_date`) VALUES
('admin', 'admin', 'Chimankar', 'Roshan', 'Male', '1', '2015-07-27 12:08:32');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
