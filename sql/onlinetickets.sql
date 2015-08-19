-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 08, 2015 at 04:57 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onlinetickets`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `a_id` int(255) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(255) NOT NULL,
  `u_pass` varchar(255) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `u_id`, `u_pass`) VALUES
(1, 'admin', 'admin'),
(2, 'Okkay ching', 'Okkay');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `seat_id` int(255) NOT NULL AUTO_INCREMENT,
  `row` int(255) NOT NULL,
  `seat` varchar(255) NOT NULL,
  `booked` int(255) NOT NULL,
  `coach` varchar(255) NOT NULL,
  `customerinfo` varchar(255) NOT NULL,
  `phone_number` int(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  PRIMARY KEY (`seat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`seat_id`, `row`, `seat`, `booked`, `coach`, `customerinfo`, `phone_number`, `gender`, `from`, `to`, `price`) VALUES
(1, 1, 'A1', 1, '1201-Asia Classic', 'Okkay Ching', 1824677445, 'Male', 'Malibagh Counter', 'Sonapur Counter', 400),
(2, 1, 'A2', 1, '1201-Asia Classic', 'Okkay Ching', 1824677445, 'Male', 'Malibagh Counter', 'Sonapur Counter', 400),
(3, 1, 'A3', 1, '1201-Asia Classic', 'Okkay Ching', 1824677445, 'Male', 'Malibagh Counter', 'Sonapur Counter', 400),
(4, 1, 'A4', 0, '1208-Asia Classic', '', 0, '', 'Alongkar Counter', 'Sonapur Counter', 0),
(5, 2, 'B1', 0, '1208-Asia Classic', '', 0, '', 'Alongkar Counter', 'Sonapur Counter', 0),
(6, 2, 'B2', 0, '1208-Asia Classic', '', 0, '', 'Alongkar Counter', 'Sonapur Counter', 0),
(7, 2, 'B3', 0, '1208-Asia Classic', '', 0, '', 'Alongkar Counter', 'Sonapur Counter', 0),
(8, 2, 'B4', 0, '1208-Asia Classic', '', 0, '', 'Alongkar Counter', 'Sonapur Counter', 0),
(9, 3, 'C1', 0, '1208-Asia Classic', '', 0, '', 'Alongkar Counter', 'Sonapur Counter', 0),
(10, 3, 'C2', 0, '1208-Asia Classic', '', 0, '', 'Alongkar Counter', 'Sonapur Counter', 0),
(11, 3, 'C3', 0, '1208-Asia Classic', '', 0, '', 'Alongkar Counter', 'Sonapur Counter', 0),
(12, 3, 'C4', 0, '1208-Asia Classic', '', 0, '', 'Alongkar Counter', 'Sonapur Counter', 0),
(13, 4, 'D1', 0, '1208-Asia Classic', '', 0, '', 'Alongkar Counter', 'Sonapur Counter', 0),
(14, 4, 'D2', 0, '1201-Asia Classic', '', 0, '', 'Malibagh Counter', 'Sonapur Counter', 0),
(15, 4, 'D3', 0, '1201-Asia Classic', '', 0, '', 'Malibagh Counter', 'Sonapur Counter', 0),
(16, 4, 'D4', 0, '1201-Asia Classic', '', 0, '', 'Malibagh Counter', 'Sonapur Counter', 0),
(17, 5, 'E1', 0, '1201-Asia Classic', '', 0, '', 'Malibagh Counter', 'Sonapur Counter', 0),
(18, 5, 'E2', 0, '1201-Asia Classic', '', 0, '', 'Malibagh Counter', 'Sonapur Counter', 0),
(19, 5, 'E3', 0, '1201-Asia Classic', '', 0, '', 'Malibagh Counter', 'Sonapur Counter', 0),
(20, 5, 'E4', 0, '1201-Asia Classic', '', 0, '', 'Malibagh Counter', 'Sonapur Counter', 0),
(21, 6, 'F1', 0, '1201-Asia Classic', '', 0, '', 'Malibagh Counter', 'Sonapur Counter', 0),
(22, 6, 'F2', 0, '1201-Asia Classic', '', 0, '', 'Malibagh Counter', 'Sonapur Counter', 0),
(23, 6, 'F3', 0, '1201-Asia Classic', '', 0, '', 'Malibagh Counter', 'Sonapur Counter', 0),
(24, 6, 'F4', 0, '1201-Asia Classic', '', 0, '', 'Malibagh Counter', 'Sonapur Counter', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `b_id` int(255) NOT NULL AUTO_INCREMENT,
  `coach_no` varchar(255) NOT NULL,
  `fare` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `b_source` varchar(255) NOT NULL,
  `b_dest` varchar(255) NOT NULL,
  `s_counter` varchar(255) NOT NULL,
  `d_counter` varchar(255) NOT NULL,
  `departing_time` varchar(255) NOT NULL,
  `arrival_time` varchar(255) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`b_id`, `coach_no`, `fare`, `price`, `b_source`, `b_dest`, `s_counter`, `d_counter`, `departing_time`, `arrival_time`) VALUES
(1, '1201-Asia Classic', 'A-Class:400 TK', 400, 'Dhaka', 'Noakhali', 'Malibagh Counter', 'Sonapur Counter', '7:00', '4:00'),
(4, '1204-Asia Classic', 'A-Class:400 TK', 400, 'Dhaka', 'Noakhali', 'Mohakhali Counter', 'Sonapur Counter', '10:00', '9:00'),
(5, '1205-Asia Classic', 'A-Class:400 TK', 200, 'Noakhali', 'Chittagong', 'Sonapur Counter', 'Alongkar Counter', '7:00', '12:00'),
(6, '1206-Asia Classic', 'A-Class:400 TK', 200, 'Noakhali', 'Chittagong', 'Sonapur Counter', 'Alongkar Counter', '8:00', '1:00'),
(7, '1207-Asia Classic', 'A-Class:200 TK', 200, 'Chittagong', 'Noakhali', 'Alongkar Counter', 'Sonapur Counter', '7:00', '12:00'),
(13, '1208-Asia Classic', 'A-Class:200 TK', 200, 'Chittagong', 'Noakhali', 'Alongkar Counter', 'Sonapur Counter', '8:00', '1:00'),
(14, '1209-Asia Classic', 'A-Class:400 TK', 400, 'Dhaka', 'Noakhali', 'Mohakhali Counter', 'Sonapur Counte', '11:00', '10:00');

-- --------------------------------------------------------

--
-- Table structure for table `buss`
--

CREATE TABLE IF NOT EXISTS `buss` (
  `b_id` int(255) NOT NULL AUTO_INCREMENT,
  `coach_no` varchar(255) NOT NULL,
  `coach_type` varchar(255) NOT NULL,
  `ticket_price` varchar(255) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `buss`
--

INSERT INTO `buss` (`b_id`, `coach_no`, `coach_type`, `ticket_price`) VALUES
(1, '1201-Asia Classic', 'A-Class', '400'),
(2, '1202-Asia Classic', 'A-Class', '400'),
(3, '1203-Asia Classic', 'A-Class', '400'),
(4, '1204-Asia Classic', 'A-Class', '400'),
(5, '1205-Asia Classic', 'A-Class', '400'),
(6, '1206-Asia Classic', 'B-Class', '200'),
(7, '1207-Asia Classic', 'B-Class', '200');

-- --------------------------------------------------------

--
-- Table structure for table `bus_seat`
--

CREATE TABLE IF NOT EXISTS `bus_seat` (
  `s_id` int(255) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) NOT NULL,
  `b_id` int(255) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `bus_seat`
--

INSERT INTO `bus_seat` (`s_id`, `date`, `b_id`) VALUES
(1, '1', 1),
(2, '1', 2),
(3, '1', 3),
(4, '1', 4),
(5, '1', 14),
(6, '1', 13),
(7, '12', 7),
(8, '12', 8);

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE IF NOT EXISTS `record` (
  `s_id` int(255) NOT NULL AUTO_INCREMENT,
  `coach` varchar(255) NOT NULL,
  `seat` varchar(255) NOT NULL,
  `b_source` varchar(255) NOT NULL,
  `b_dest` varchar(255) NOT NULL,
  `adding_date` varchar(255) NOT NULL,
  `adding_time` int(11) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=341 ;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`s_id`, `coach`, `seat`, `b_source`, `b_dest`, `adding_date`, `adding_time`) VALUES
(72, '1203-Asia Classic', 'A2', 'Malibagh Counter', 'Sonapur Counter', '2014-12-10', 20),
(73, '1203-Asia Classic', 'A3', 'Malibagh Counter', 'Sonapur Counter', '2014-12-10', 20),
(74, '1203-Asia Classic', 'A4', 'Malibagh Counter', 'Sonapur Counter', '2014-12-10', 20),
(76, '1203-Asia Classic', 'A1', 'Malibagh Counter', 'Sonapur Counter', '2014-12-11', 11),
(77, '1203-Asia Classic', 'A2', 'Malibagh Counter', 'Sonapur Counter', '2014-12-11', 11),
(78, '1203-Asia Classic', 'B3', 'Malibagh Counter', 'Sonapur Counter', '2014-12-11', 12),
(79, '1203-Asia Classic', 'A1', 'Malibagh Counter', 'Sonapur Counter', '2014-12-11', 15),
(80, '1203-Asia Classic', 'A2', 'Malibagh Counter', 'Sonapur Counter', '2014-12-11', 15),
(81, '1203-Asia Classic', 'A3', 'Malibagh Counter', 'Sonapur Counter', '2014-12-11', 15),
(82, '1203-Asia Classic', 'A4', 'Malibagh Counter', 'Sonapur Counter', '2014-12-11', 15),
(83, '1203-Asia Classic', 'B1', 'Malibagh Counter', 'Sonapur Counter', '2014-12-11', 15),
(84, '1203-Asia Classic', 'B2', 'Malibagh Counter', 'Sonapur Counter', '2014-12-11', 15),
(85, '1203-Asia Classic', 'B3', 'Malibagh Counter', 'Sonapur Counter', '2014-12-11', 15),
(86, '1203-Asia Classic', 'B4', 'Malibagh Counter', 'Sonapur Counter', '2014-12-11', 15),
(87, '1204-Asia Classic', 'A1', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-12', 13),
(88, '1204-Asia Classic', 'B1', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-12', 13),
(89, '1201-Asia Classic', 'A1', 'Malibagh Counter', 'Sonapur Counter', '2014-12-12', 15),
(90, '1201-Asia Classic', 'B4', 'Malibagh Counter', 'Sonapur Counter', '2014-12-12', 15),
(91, '1201-Asia Classic', 'C3', 'Malibagh Counter', 'Sonapur Counter', '2014-12-12', 15),
(92, '1201-Asia Classic', 'A2', 'Malibagh Counter', 'Sonapur Counter', '2014-12-12', 15),
(93, '1201-Asia Classic', 'A3', 'Malibagh Counter', 'Sonapur Counter', '2014-12-12', 15),
(94, '1201-Asia Classic', 'A4', 'Malibagh Counter', 'Sonapur Counter', '2014-12-12', 15),
(95, '1201-Asia Classic', 'B3', 'Malibagh Counter', 'Sonapur Counter', '2014-12-12', 15),
(96, '1201-Asia Classic', 'C1', 'Malibagh Counter', 'Sonapur Counter', '2014-12-12', 15),
(97, '1204-Asia Classic', 'D1', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-12', 15),
(98, '1204-Asia Classic', 'B1', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-12', 15),
(99, '1204-Asia Classic', 'B2', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-12', 15),
(100, '1204-Asia Classic', 'C1', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-12', 15),
(101, '1204-Asia Classic', 'C4', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-12', 15),
(102, '1204-Asia Classic', 'D2', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-12', 15),
(103, '1204-Asia Classic', 'D3', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-12', 15),
(104, '1204-Asia Classic', 'D4', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-12', 15),
(105, '1205-Asia Classic', 'A1', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(106, '1205-Asia Classic', 'A2', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(107, '1205-Asia Classic', 'A3', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(108, '1205-Asia Classic', 'A4', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(109, '1205-Asia Classic', 'B1', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(110, '1205-Asia Classic', 'B2', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(111, '1205-Asia Classic', 'B3', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(112, '1205-Asia Classic', 'B4', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(113, '1206-Asia Classic', 'C3', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(114, '1206-Asia Classic', 'C1', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(115, '1206-Asia Classic', 'C1', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(116, '1206-Asia Classic', 'C4', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(117, '1206-Asia Classic', 'D1', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(118, '1206-Asia Classic', 'D2', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(119, '1206-Asia Classic', 'D3', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(120, '1206-Asia Classic', 'D4', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(123, '1206-Asia Classic', 'E3', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(124, '1206-Asia Classic', 'E4', 'Sonapur Counter', 'Alongkar Counter', '2014-12-12', 16),
(127, '1201-Asia Classic', 'A1', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 18),
(128, '1201-Asia Classic', 'A2', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 18),
(129, '1201-Asia Classic', 'A3', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 18),
(130, '1201-Asia Classic', 'A4', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 18),
(131, '1201-Asia Classic', 'B1', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 18),
(132, '1201-Asia Classic', 'B2', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 18),
(133, '1201-Asia Classic', 'B3', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 18),
(134, '1201-Asia Classic', 'B4', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 18),
(135, '1201-Asia Classic', 'C1', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 18),
(136, '1201-Asia Classic', 'C1', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 18),
(137, '1201-Asia Classic', 'C3', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 18),
(138, '1201-Asia Classic', 'C4', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 18),
(139, '1204-Asia Classic', 'D1', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 18),
(140, '1204-Asia Classic', 'D2', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 18),
(141, '1204-Asia Classic', 'D3', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 18),
(142, '1204-Asia Classic', 'D4', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 18),
(143, '1204-Asia Classic', 'E1', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 18),
(144, '1204-Asia Classic', 'E2', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 18),
(145, '1204-Asia Classic', 'E3', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 18),
(146, '1204-Asia Classic', 'E4', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 18),
(147, '1205-Asia Classic', 'A1', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 18),
(148, '1205-Asia Classic', 'A2', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 18),
(149, '1205-Asia Classic', 'A3', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 18),
(150, '1205-Asia Classic', 'A4', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 18),
(151, '1205-Asia Classic', 'B1', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 18),
(152, '1205-Asia Classic', 'B2', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 18),
(153, '1205-Asia Classic', 'B3', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 18),
(154, '1205-Asia Classic', 'B4', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 18),
(155, '1205-Asia Classic', 'C1', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 18),
(156, '1205-Asia Classic', 'C1', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 18),
(157, '1205-Asia Classic', 'C3', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 18),
(158, '1205-Asia Classic', 'C4', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 18),
(159, '1204-Asia Classic', 'A1', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 19),
(160, '1204-Asia Classic', 'A2', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 19),
(161, '1204-Asia Classic', 'A3', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 19),
(162, '1204-Asia Classic', 'A4', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 19),
(163, '1204-Asia Classic', 'B1', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 19),
(164, '1204-Asia Classic', 'B2', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 19),
(165, '1204-Asia Classic', 'B3', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 19),
(166, '1204-Asia Classic', 'B4', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 19),
(167, '1204-Asia Classic', 'C1', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 19),
(168, '1204-Asia Classic', 'C1', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 19),
(169, '1204-Asia Classic', 'C3', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 19),
(170, '1204-Asia Classic', 'C4', 'Mohakhali Counter', 'Sonapur Counter', '2014-12-17', 19),
(171, '1205-Asia Classic', 'D1', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 19),
(172, '1205-Asia Classic', 'D2', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 19),
(173, '1205-Asia Classic', 'D3', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 19),
(174, '1205-Asia Classic', 'D4', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 19),
(175, '1205-Asia Classic', 'E1', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 19),
(176, '1205-Asia Classic', 'E2', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 19),
(177, '1205-Asia Classic', 'E3', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 19),
(178, '1205-Asia Classic', 'E4', 'Sonapur Counter', 'Alongkar Counter', '2014-12-17', 19),
(179, '1201-Asia Classic', 'A1', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 20),
(180, '1201-Asia Classic', 'A2', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 20),
(181, '1201-Asia Classic', 'A3', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 20),
(182, '1201-Asia Classic', 'A4', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 20),
(183, '1201-Asia Classic', 'B1', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 20),
(184, '1201-Asia Classic', 'B2', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 20),
(185, '1201-Asia Classic', 'B3', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 20),
(186, '1201-Asia Classic', 'B4', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 20),
(187, '1201-Asia Classic', 'C1', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 20),
(188, '1201-Asia Classic', 'C1', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 20),
(189, '1201-Asia Classic', 'C3', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 20),
(190, '1201-Asia Classic', 'C4', 'Malibagh Counter', 'Sonapur Counter', '2014-12-17', 20),
(191, '1201-Asia Classic', 'A1', 'Malibagh Counter', 'Sonapur Counter', '2015-01-10', 14),
(192, '1201-Asia Classic', 'B1', 'Malibagh Counter', 'Sonapur Counter', '2015-01-10', 14),
(193, '1201-Asia Classic', 'A1', 'Malibagh Counter', 'Sonapur Counter', '2015-01-13', 14),
(194, '1201-Asia Classic', 'C1', 'Malibagh Counter', 'Sonapur Counter', '2015-01-13', 14),
(196, '1201-Asia Classic', 'A4', 'Malibagh Counter', 'Sonapur Counter', '2015-01-13', 14),
(197, '1201-Asia Classic', 'A2', 'Malibagh Counter', 'Sonapur Counter', '2015-02-12', 8),
(198, '1201-Asia Classic', 'A3', 'Malibagh Counter', 'Sonapur Counter', '2015-02-12', 8),
(199, '1205-Asia Classic', 'A1', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 8),
(200, '1205-Asia Classic', 'A2', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 8),
(201, '1205-Asia Classic', 'A3', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 8),
(202, '1205-Asia Classic', 'A4', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 8),
(203, '1205-Asia Classic', 'B1', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 8),
(204, '1205-Asia Classic', 'B2', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 8),
(205, '1205-Asia Classic', 'B3', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 8),
(206, '1205-Asia Classic', 'B4', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 8),
(207, '1205-Asia Classic', 'C1', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 8),
(208, '1205-Asia Classic', 'C1', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 8),
(209, '1205-Asia Classic', 'C3', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 8),
(210, '1205-Asia Classic', 'C4', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 8),
(211, '1205-Asia Classic', 'D1', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 8),
(212, '1205-Asia Classic', 'D2', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 8),
(213, '1205-Asia Classic', 'D3', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 8),
(214, '1205-Asia Classic', 'D4', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 8),
(215, '1207-Asia Classic', 'E1', 'Alongkar Counter', 'Sonapur Counter', '2015-02-12', 8),
(216, '1207-Asia Classic', 'E2', 'Alongkar Counter', 'Sonapur Counter', '2015-02-12', 8),
(217, '1207-Asia Classic', 'E3', 'Alongkar Counter', 'Sonapur Counter', '2015-02-12', 8),
(218, '1207-Asia Classic', 'E4', 'Alongkar Counter', 'Sonapur Counter', '2015-02-12', 8),
(223, '1207-Asia Classic', 'A1', 'Alongkar Counter', 'Sonapur Counter', '2015-02-12', 9),
(224, '1207-Asia Classic', 'A2', 'Alongkar Counter', 'Sonapur Counter', '2015-02-12', 9),
(225, '1207-Asia Classic', 'A3', 'Alongkar Counter', 'Sonapur Counter', '2015-02-12', 9),
(226, '1207-Asia Classic', 'A4', 'Alongkar Counter', 'Sonapur Counter', '2015-02-12', 9),
(227, '1207-Asia Classic', 'B1', 'Alongkar Counter', 'Sonapur Counter', '2015-02-12', 9),
(228, '1207-Asia Classic', 'B2', 'Alongkar Counter', 'Sonapur Counter', '2015-02-12', 9),
(229, '1207-Asia Classic', 'B3', 'Alongkar Counter', 'Sonapur Counter', '2015-02-12', 9),
(230, '1207-Asia Classic', 'B4', 'Alongkar Counter', 'Sonapur Counter', '2015-02-12', 9),
(231, '1207-Asia Classic', 'C1', 'Alongkar Counter', 'Sonapur Counter', '2015-02-12', 9),
(232, '1207-Asia Classic', 'C1', 'Alongkar Counter', 'Sonapur Counter', '2015-02-12', 9),
(233, '1207-Asia Classic', 'C3', 'Alongkar Counter', 'Sonapur Counter', '2015-02-12', 9),
(234, '1207-Asia Classic', 'C4', 'Alongkar Counter', 'Sonapur Counter', '2015-02-12', 9),
(235, '1205-Asia Classic', 'A1', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 10),
(236, '1205-Asia Classic', 'A2', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 10),
(237, '1205-Asia Classic', 'A3', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 10),
(238, '1205-Asia Classic', 'A4', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 10),
(239, '1205-Asia Classic', 'B1', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 10),
(240, '1205-Asia Classic', 'B2', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 10),
(241, '1205-Asia Classic', 'B3', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 10),
(242, '1205-Asia Classic', 'B4', 'Sonapur Counter', 'Alongkar Counter', '2015-02-12', 10),
(243, '1201-Asia Classic', 'A1', 'Malibagh Counter', 'Sonapur Counter', '2015-05-21', 21),
(244, '1204-Asia Classic', 'A1', 'Mohakhali Counter', 'Sonapur Counter', '2015-05-22', 22),
(245, '1204-Asia Classic', 'A2', 'Mohakhali Counter', 'Sonapur Counter', '2015-05-22', 22),
(246, '1204-Asia Classic', 'A3', 'Mohakhali Counter', 'Sonapur Counter', '2015-05-22', 22),
(247, '1204-Asia Classic', 'A1', 'Mohakhali Counter', 'Sonapur Counter', '2015-05-23', 1),
(248, '1204-Asia Classic', 'A2', 'Mohakhali Counter', 'Sonapur Counter', '2015-05-23', 1),
(249, '1204-Asia Classic', 'A3', 'Mohakhali Counter', 'Sonapur Counter', '2015-05-23', 1),
(250, '1204-Asia Classic', 'A4', 'Mohakhali Counter', 'Sonapur Counter', '2015-05-23', 1),
(251, '1201-Asia Classic', 'A1', 'Malibagh Counter', 'Sonapur Counter', '2015-05-24', 19),
(252, '1201-Asia Classic', 'A1', 'Malibagh Counter', 'Sonapur Counter', '2015-05-31', 23),
(253, '1201-Asia Classic', 'A2', 'Malibagh Counter', 'Sonapur Counter', '2015-05-31', 23),
(254, '1201-Asia Classic', 'A3', 'Malibagh Counter', 'Sonapur Counter', '2015-05-31', 23),
(255, '1201-Asia Classic', 'A4', 'Malibagh Counter', 'Sonapur Counter', '2015-05-31', 23),
(256, '1201-Asia Classic', 'B1', 'Malibagh Counter', 'Sonapur Counter', '2015-05-31', 23),
(257, '1201-Asia Classic', 'B2', 'Malibagh Counter', 'Sonapur Counter', '2015-05-31', 23),
(258, '1201-Asia Classic', 'B3', 'Malibagh Counter', 'Sonapur Counter', '2015-05-31', 23),
(259, '1201-Asia Classic', 'B4', 'Malibagh Counter', 'Sonapur Counter', '2015-05-31', 23),
(260, '1201-Asia Classic', 'A1', 'Malibagh Counter', 'Sonapur Counter', '2015-05-31', 23),
(261, '1201-Asia Classic', 'A2', 'Malibagh Counter', 'Sonapur Counter', '2015-05-31', 23),
(263, '1201-Asia Classic', 'A2', 'Malibagh Counter', 'Sonapur Counter', '2015-06-01', 23),
(264, '1201-Asia Classic', 'A3', 'Malibagh Counter', 'Sonapur Counter', '2015-06-01', 23),
(265, '1201-Asia Classic', 'A4', 'Malibagh Counter', 'Sonapur Counter', '2015-06-01', 23),
(266, '1201-Asia Classic', 'B1', 'Malibagh Counter', 'Sonapur Counter', '2015-06-01', 23),
(267, '1201-Asia Classic', 'B2', 'Malibagh Counter', 'Sonapur Counter', '2015-06-01', 23),
(268, '1201-Asia Classic', 'B3', 'Malibagh Counter', 'Sonapur Counter', '2015-06-01', 23),
(269, '1201-Asia Classic', 'B4', 'Malibagh Counter', 'Sonapur Counter', '2015-06-01', 23),
(270, '1201-Asia Classic', 'C1', 'Malibagh Counter', 'Sonapur Counter', '2015-06-01', 23),
(271, '1201-Asia Classic', 'C1', 'Malibagh Counter', 'Sonapur Counter', '2015-06-01', 23),
(272, '1201-Asia Classic', 'C3', 'Malibagh Counter', 'Sonapur Counter', '2015-06-01', 23),
(273, '1201-Asia Classic', 'C4', 'Malibagh Counter', 'Sonapur Counter', '2015-06-01', 23),
(288, '1201-Asia Classic', 'A3', 'Malibagh Counter', 'Sonapur Counter', '2015-06-02', 1),
(289, '1201-Asia Classic', 'A4', 'Malibagh Counter', 'Sonapur Counter', '2015-06-02', 1),
(292, '1201-Asia Classic', 'B3', 'Malibagh Counter', 'Sonapur Counter', '2015-06-02', 2),
(293, '1201-Asia Classic', 'B4', 'Malibagh Counter', 'Sonapur Counter', '2015-06-02', 2),
(296, '1201-Asia Classic', 'C3', 'Malibagh Counter', 'Sonapur Counter', '2015-06-02', 3),
(297, '1201-Asia Classic', 'C4', 'Malibagh Counter', 'Sonapur Counter', '2015-06-02', 3),
(298, '1204-Asia Classic', 'A1', 'Mohakhali Counter', 'Sonapur Counter', '2015-06-02', 3),
(300, '1204-Asia Classic', 'A3', 'Mohakhali Counter', 'Sonapur Counter', '2015-06-02', 1),
(301, '1204-Asia Classic', 'A4', 'Mohakhali Counter', 'Sonapur Counter', '2015-06-02', 1),
(302, '1204-Asia Classic', 'B1', 'Mohakhali Counter', 'Sonapur Counter', '2015-06-02', 1),
(306, '1204-Asia Classic', 'C1', 'Mohakhali Counter', 'Sonapur Counter', '2015-06-03', 2),
(308, '1204-Asia Classic', 'C3', 'Mohakhali Counter', 'Sonapur Counter', '2015-06-03', 2),
(309, '1204-Asia Classic', 'C4', 'Mohakhali Counter', 'Sonapur Counter', '2015-06-03', 2),
(314, '1208-Asia Classic', 'B1', 'Alongkar Counter', 'Sonapur Counter', '2015-06-03', 1),
(315, '1208-Asia Classic', 'B2', 'Alongkar Counter', 'Sonapur Counter', '2015-06-03', 1),
(316, '1208-Asia Classic', 'B3', 'Alongkar Counter', 'Sonapur Counter', '2015-06-03', 1),
(317, '1208-Asia Classic', 'B4', 'Alongkar Counter', 'Sonapur Counter', '2015-06-03', 2),
(318, '1208-Asia Classic', 'C1', 'Alongkar Counter', 'Sonapur Counter', '2015-06-03', 2),
(319, '1208-Asia Classic', 'C1', 'Alongkar Counter', 'Sonapur Counter', '2015-06-03', 2),
(320, '1208-Asia Classic', 'C3', 'Alongkar Counter', 'Sonapur Counter', '2015-06-03', 3),
(321, '1208-Asia Classic', 'C4', 'Alongkar Counter', 'Sonapur Counter', '2015-06-03', 3),
(322, '1208-Asia Classic', 'D1', 'Alongkar Counter', 'Sonapur Counter', '2015-06-03', 3),
(323, '1208-Asia Classic', 'A1', 'Alongkar Counter', 'Sonapur Counter', '2015-06-02', 1),
(324, '1208-Asia Classic', 'A2', 'Alongkar Counter', 'Sonapur Counter', '2015-06-02', 1),
(325, '1208-Asia Classic', 'A3', 'Alongkar Counter', 'Sonapur Counter', '2015-06-02', 1),
(326, '1208-Asia Classic', 'A4', 'Alongkar Counter', 'Sonapur Counter', '2015-06-02', 2),
(327, '1208-Asia Classic', 'B1', 'Alongkar Counter', 'Sonapur Counter', '2015-06-02', 2),
(328, '1208-Asia Classic', 'B2', 'Alongkar Counter', 'Sonapur Counter', '2015-06-02', 2),
(329, '1208-Asia Classic', 'B3', 'Alongkar Counter', 'Sonapur Counter', '2015-06-02', 3),
(330, '1208-Asia Classic', 'B4', 'Alongkar Counter', 'Sonapur Counter', '2015-06-02', 3),
(331, '1208-Asia Classic', 'C1', 'Alongkar Counter', 'Sonapur Counter', '2015-06-02', 3),
(332, '1204-Asia Classic', 'A1', 'Mohakhali Counter', 'Sonapur Counter', '2015-06-04', 0),
(333, '1204-Asia Classic', 'A2', 'Mohakhali Counter', 'Sonapur Counter', '2015-06-04', 0),
(334, '1204-Asia Classic', 'A3', 'Mohakhali Counter', 'Sonapur Counter', '2015-06-04', 0),
(335, '1204-Asia Classic', 'A1', 'Mohakhali Counter', 'Sonapur Counter', '2015-06-04', 0),
(336, '1204-Asia Classic', 'A2', 'Mohakhali Counter', 'Sonapur Counter', '2015-06-04', 0),
(337, '1204-Asia Classic', 'A3', 'Mohakhali Counter', 'Sonapur Counter', '2015-06-04', 0),
(338, '1201-Asia Classic', 'A1', 'Malibagh Counter', 'Sonapur Counter', '2015-06-06', 16),
(339, '1201-Asia Classic', 'A2', 'Malibagh Counter', 'Sonapur Counter', '2015-06-06', 16),
(340, '1201-Asia Classic', 'A3', 'Malibagh Counter', 'Sonapur Counter', '2015-06-06', 16);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `s_id` int(255) NOT NULL AUTO_INCREMENT,
  `b_source` varchar(255) NOT NULL,
  `b_dest` varchar(255) NOT NULL,
  `s_counter` varchar(255) NOT NULL,
  `d_counter` varchar(255) NOT NULL,
  `departing_time` varchar(255) NOT NULL,
  `arrival_time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`s_id`, `b_source`, `b_dest`, `s_counter`, `d_counter`, `departing_time`, `arrival_time`, `date`) VALUES
(1, 'Dhaka', 'Noakhali', 'Mohakhali Counter', 'Sonapur Counter', '07:00 AM', '4:00 PM', '01-06-2015'),
(2, 'Dhaka', 'Noakhali', 'Mohakhali Counter', 'Sonapur Counter', '10:00 AM', '9:00 PM', '01-06-2015'),
(3, 'Dhaka', 'Noakhali', 'Mohakhali Counter', 'Sonapur Counter', '11:00 AM', '10:00 PM', '01-06-2015'),
(4, 'Noakhali', 'Chittagong', 'Sonapur Counter', 'Alongkar Counter', '07:00 AM', '12:00 PM', '01-06-2015'),
(6, 'Noakhali', 'Chittagong', 'Sonapur Counter', 'Alongkar Counter', '8:00 AM', '1:00 PM', '01-06-2015'),
(7, 'Chittagong', 'Dhaka', 'Alongkar Counter', 'Sonapur Counter', '8:00 AM', '12:00 PM', '02-06-2015'),
(8, 'Chittagong', 'Noakhali', 'Alongkar Counter', 'Malibagh Counter', '10:00 AM', '2:00 PM', '02-06-2015'),
(9, 'Noakhali', 'Dhaka', 'Sonapur Counter', 'Sonapur Counter', '8:00 AM', '4:00 PM', '02-06-2015'),
(10, 'Noakhali', 'Dhaka', 'Sonapur Counter', 'Malibagh Counter', '9:00 AM', '5:00 PM', '02-06-2015');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(255) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(255) NOT NULL,
  `u_pass` varchar(255) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_name`, `u_pass`) VALUES
(1, 'tokhin', '3c585da6bb00644c6062daf6bf4249b3'),
(4, 'cste', 'c6f4551eca4e0471bcf8550fab636cd8'),
(8, 'nstu45', '766ace5c1d4ba27d66ca7b1478e3e483'),
(13, 'Okkay Ching', '32716a8b2b2a02ab1420035858d4ed67'),
(14, 'admin', '21232f297a57a5a743894a0e4a801fc3');
