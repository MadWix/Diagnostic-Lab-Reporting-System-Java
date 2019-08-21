-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 19, 2019 at 08:45 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diagonosticlabreportmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `a_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `name`, `email`, `phone`, `password`) VALUES
(110001, 'Admin', 'Admin@gmail.com', '01788538712', '12');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `app_no` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(40) NOT NULL,
  `time` varchar(40) NOT NULL,
  `t_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`app_no`),
  KEY `t_id` (`t_id`),
  KEY `p_id` (`p_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5001 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`app_no`, `date`, `time`, `t_id`, `p_id`) VALUES
(5000, 'Aug 8, 2019', '8:30am - 9:00am', 1000, 3001);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3002 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`p_id`, `name`, `email`, `phone`, `Address`, `password`) VALUES
(3000, 'Shuvra Das', 'shuvradas59@gmail.com', '0178877665457', 'Dhaka', '12345678'),
(3001, 'Shuvra', 'shuvra@gmail.com', '01874563455', 'Dhaka', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `patient_test_details`
--

DROP TABLE IF EXISTS `patient_test_details`;
CREATE TABLE IF NOT EXISTS `patient_test_details` (
  `ptd_id` int(11) NOT NULL AUTO_INCREMENT,
  `Test_value` int(11) NOT NULL DEFAULT '0',
  `app_no` int(11) NOT NULL,
  `td_id` int(11) NOT NULL,
  PRIMARY KEY (`ptd_id`),
  KEY `app_no` (`app_no`),
  KEY `td_id` (`td_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_test_details`
--

INSERT INTO `patient_test_details` (`ptd_id`, `Test_value`, `app_no`, `td_id`) VALUES
(1, 10, 5000, 1),
(2, 20, 5000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_card_no` varchar(40) NOT NULL,
  `cvv` varchar(30) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `p_id` (`p_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `credit_card_no`, `cvv`, `p_id`) VALUES
(1, '123456', '123', 3001);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(40) NOT NULL,
  `cost` int(11) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`t_id`, `type`, `cost`) VALUES
(1000, 'Haemoglobin', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `test_details`
--

DROP TABLE IF EXISTS `test_details`;
CREATE TABLE IF NOT EXISTS `test_details` (
  `td_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `minimum` int(11) NOT NULL,
  `maximum` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  PRIMARY KEY (`td_id`),
  KEY `t_id` (`t_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_details`
--

INSERT INTO `test_details` (`td_id`, `name`, `minimum`, `maximum`, `t_id`) VALUES
(1, 'Infants', 11, 18, 1000),
(2, 'Young Children', 12, 17, 1000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
