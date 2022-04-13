-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 13, 2022 at 03:26 PM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id18355333_book_venue`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `A_ID` int(11) NOT NULL,
  `A_Name` varchar(50) NOT NULL,
  `A_PhoneNumber` varchar(10) NOT NULL,
  `A_Email` varchar(250) NOT NULL,
  `A_Password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`A_ID`, `A_Name`, `A_PhoneNumber`, `A_Email`, `A_Password`) VALUES
(1, 'Bhavik ', '9601329334', 'Prajapatibhavik1433@gmail.com', 'ad88d103df9988c38b218d8f65a32103');

-- --------------------------------------------------------

--
-- Table structure for table `cancelled_bookings`
--

CREATE TABLE `cancelled_bookings` (
  `Cancel_ID` int(11) NOT NULL,
  `Check_in_date` date NOT NULL,
  `Check_out_date` date NOT NULL,
  `Total_Amount` int(11) NOT NULL,
  `Booking_Date` date NOT NULL,
  `Venue_ID` int(11) NOT NULL,
  `C_ID` int(11) NOT NULL,
  `Cancel_Date` date NOT NULL,
  `Refund_Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cancelled_bookings`
--

INSERT INTO `cancelled_bookings` (`Cancel_ID`, `Check_in_date`, `Check_out_date`, `Total_Amount`, `Booking_Date`, `Venue_ID`, `C_ID`, `Cancel_Date`, `Refund_Amount`) VALUES
(1, '2021-10-28', '2021-10-28', 2375, '2021-10-26', 3, 1, '2021-10-27', 0),
(2, '2021-10-27', '2021-10-27', 3000, '2021-10-26', 5, 1, '2021-10-27', 0),
(3, '2021-12-02', '2021-12-07', 50000, '2021-10-27', 12, 1, '2021-10-27', 45000),
(4, '2021-12-01', '2021-12-07', 43800, '2021-10-27', 8, 1, '2021-10-27', 39420),
(5, '2021-11-30', '2021-11-30', 9500, '2021-11-26', 9, 1, '2021-11-26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `Contact_ID` int(10) NOT NULL,
  `Contact_Name` varchar(50) NOT NULL,
  `Contact_Email` varchar(230) NOT NULL,
  `Contact_subject` varchar(50) NOT NULL,
  `Contact_Message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`Contact_ID`, `Contact_Name`, `Contact_Email`, `Contact_subject`, `Contact_Message`) VALUES
(1, 'Krunal Kathiriya', 'krunalkathiriya0@gmail.com', 'Excellent hall', 'bfdhtmhgng fgbtn'),
(2, 'lodu shah', 'lodushah123@gmail.com', '', 'fuck villa');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `discount` int(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `coupon_code`, `discount`, `status`) VALUES
(1, 'PRLX9HOPZT', 10, 'Valid'),
(2, 'PRTS852BBL', 50, 'Valid'),
(3, 'PRVWVUP728', 50, 'Valid');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `C_ID` int(11) NOT NULL,
  `C_Name` varchar(50) NOT NULL,
  `C_Email` varchar(250) NOT NULL,
  `C_PhoneNumber` varchar(10) NOT NULL,
  `C_Gender` char(1) NOT NULL,
  `C_Password` varchar(120) NOT NULL,
  `C_Registration_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Feedback_ID` int(11) NOT NULL,
  `C_ID` int(11) NOT NULL,
  `Comment` varchar(400) NOT NULL,
  `Rating` float NOT NULL,
  `Feedback_DateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Feedback_ID`, `C_ID`, `Comment`, `Rating`, `Feedback_DateTime`) VALUES
(1, 1, 'test', 2, '2021-10-09 07:48:06'),
(2, 1, '', 4, '2021-10-25 06:03:34'),
(3, 1, 'ewrwerw3', 4, '2021-10-25 06:06:00'),
(4, 1, 'jkhk', 4, '2021-10-25 06:07:45'),
(5, 1, 'This is testing review', 4, '2021-10-25 06:11:49'),
(6, 1, 'Feedback testinggggg\r\n', 4, '2021-10-26 06:54:11'),
(7, 1, 'hiiiinfn', 4, '2021-11-26 04:16:51'),
(8, 1, '', 4, '2021-11-27 03:51:56'),
(9, 1, '', 3, '2021-11-27 03:53:21'),
(10, 1, 'good venue', 2, '2021-11-27 07:13:24'),
(11, 1, 'Nice Venue', 4, '2022-01-19 11:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `O_ID` int(11) NOT NULL,
  `O_Name` varchar(50) NOT NULL,
  `O_PhoneNumber` varchar(10) NOT NULL,
  `O_Email` varchar(250) NOT NULL,
  `O_Password` varchar(120) NOT NULL,
  `O_Type` varchar(10) NOT NULL,
  `O_Registration_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`O_ID`, `O_Name`, `O_PhoneNumber`, `O_Email`, `O_Password`, `O_Type`, `O_Registration_Date`) VALUES
(1, 'prajapati bhavik', '9601329334', 'bhavik@gmail.com', '1172d83b5c8618363b84356fa01c58f6', 'Venue', '2021-09-10'),
(2, 'Happy sharma', '9865365745', 'happy22@gmail.com', '1172d83b5c8618363b84356fa01c58f6', 'Vendor', '2021-09-10'),
(3, 'Jayesh Prajapati', '7856945122', 'jayesh12@gmail.com', '1172d83b5c8618363b84356fa01c58f6', 'Venue', '2021-09-10'),
(4, 'Sanket Jha', '9865326485', 'sanketjha1@gmail.com', '1172d83b5c8618363b84356fa01c58f6', 'Venue', '2021-09-10');

-- --------------------------------------------------------

--
-- Table structure for table `pastbooking`
--

CREATE TABLE `pastbooking` (
  `Booking_ID` int(11) NOT NULL,
  `Check_in_date` date NOT NULL,
  `Check_out_date` date NOT NULL,
  `Total_Amount` int(10) NOT NULL,
  `Booking_DateTime` date NOT NULL,
  `Venue_ID` int(11) NOT NULL,
  `C_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE `reminder` (
  `R_ID` int(11) NOT NULL,
  `Check_in_date` date NOT NULL,
  `Check_out_date` date NOT NULL,
  `Venue_ID` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reminder`
--

INSERT INTO `reminder` (`R_ID`, `Check_in_date`, `Check_out_date`, `Venue_ID`, `Customer_ID`) VALUES
(1, '2022-01-29', '2022-01-31', 1, 1),
(2, '2022-02-18', '2022-02-21', 5, 2),
(3, '2022-02-26', '2022-02-28', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `Venue_ID` int(11) NOT NULL,
  `Venue_Name` varchar(50) NOT NULL,
  `Venue_Description` varchar(500) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Venue_Address` varchar(70) NOT NULL,
  `Price_PerDay` varchar(10) NOT NULL,
  `VType_ID` int(11) NOT NULL,
  `O_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`Venue_ID`, `Venue_Name`, `Venue_Description`, `Capacity`, `Venue_Address`, `Price_PerDay`, `VType_ID`, `O_ID`) VALUES
(1, 'Shanti Villa', 'Shanti villa is the best place to enjoy your weekends with the family and friends it has swimming pool aside of it.', 20, 'Shanti villa, mota varaccha, surat', '7900', 4, 1),
(2, 'Om Party plot', 'Om party plot has big wide ground for any function . we have an beautiful lawn and the stage for functions', 500, 'Om party plot, adajan, surat', '12000', 2, 1),
(3, 'Sanjeev Kumar Auditorium', 'Sanjeev kumar auditorium is the best place for your corporate or personal meeting or any functions', 320, 'Sanjeev auditorium, mota varaccha, surat', '9500', 3, 1),
(4, 'Avadh Kimberley', 'Avadh kimberley is premium farm house with the swimming pool and bar inside it has an club house also', 20, 'Avadh kimberley,vesu,surat', '8500', 5, 2),
(5, 'TwoSide Farmhouse', 'twoside farm house is best place for marriage function or any ceremony programs.', 30, 'twoSide farmhouse, jakatnaka, surat', '12000', 5, 2),
(6, 'Anupan Hall', 'Anupam hall is fully decorated hall with the beautiful stage for any stage program oy any parties.', 350, 'Anupam hall, kamrej- surat road, surat', '12000', 1, 3),
(7, 'Sarojan Villa', 'Here is the testing description if the venue.', 25, 'Shanti villa,mota varaccha,surat', '6500', 4, 1),
(8, 'Ashoka Hall', 'Ashoka hall is best hall with  people andbest for events and family function...', 400, 'Mota varracha,surat , gujarat', '7300', 1, 3),
(9, 'Avipur Hall', 'avipur hall is situated in silent place and far from city polution..', 410, 'olpad, surat , gujarat', '9500', 1, 3),
(10, 'Panth party plot', 'Panth party plot is fully developed party plot with one raw house for the work', 250, 'athvalines,surat ,gujarat', '8500', 2, 2),
(11, 'Neev Party plot', 'Neev party plot is next generation party plot with all the facilities like water and house', 350, 'nanpura, surat ,  gujarat', '7900', 2, 2),
(12, 'Amen Auditorium', 'Amen Auditorium is best place for corporate meeting and functional events', 450, 'jahangir pura,surat,gujarat', '10000', 3, 9),
(13, 'Dodge Auditorium', 'Dodge auditorium is situated in jahangirpura with capacity of four hundered people.', 350, 'jahangir pura,surat,gujarat', '11000', 3, 9),
(14, 'Sanvi Villa', 'Sanvi villa is fully hight teck and with the kitchen and swimming pool.', 15, 'Randel , surat, gujarat', '8000', 4, 9),
(15, 'white Farm House', 'White farmhouse is best place for your weekend stay with family and friends', 40, 'kadodra, surat, gujarat', '9000', 5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `venuebooking`
--

CREATE TABLE `venuebooking` (
  `Booking_ID` int(11) NOT NULL,
  `Check_in_date` date NOT NULL,
  `Check_out_date` date NOT NULL,
  `Total_Amount` int(10) NOT NULL,
  `Booking_DateTime` date NOT NULL,
  `Venue_ID` int(11) NOT NULL,
  `C_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venuebooking`
--

INSERT INTO `venuebooking` (`Booking_ID`, `Check_in_date`, `Check_out_date`, `Total_Amount`, `Booking_DateTime`, `Venue_ID`, `C_ID`) VALUES
(1, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(2, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 3),
(3, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(4, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(6, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(7, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(8, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(9, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(10, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(11, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(12, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(13, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(14, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(15, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(16, '2022-03-09', '2022-03-10', 7900, '2022-01-29', 9, 7),
(17, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(18, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(19, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(20, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(21, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(22, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(23, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(24, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(25, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(26, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(27, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(28, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(29, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(30, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(31, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(32, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(33, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(34, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(35, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(36, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(37, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(38, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(39, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(40, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(41, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(42, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(43, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(44, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(45, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(46, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(47, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(48, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(49, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(50, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(51, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(52, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(53, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(54, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(55, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(56, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(57, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(58, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(59, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(60, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(61, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(62, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(63, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(64, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(65, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(66, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(67, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(68, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(69, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(70, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(71, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(72, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(73, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(74, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(75, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(76, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(77, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(78, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(79, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(80, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(81, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(82, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(83, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(84, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(85, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(86, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(87, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(88, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(89, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(90, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(91, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(92, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(93, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(94, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(95, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(96, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(97, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(98, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(99, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(100, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(101, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(102, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(103, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(104, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(105, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(106, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(107, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(108, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(109, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(110, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(111, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(112, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(113, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(114, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(115, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(116, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(117, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(118, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(119, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(120, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(121, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(122, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(123, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(124, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(125, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(126, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(127, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(128, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(129, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(130, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(131, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(132, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(133, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(134, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(135, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(136, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(137, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(138, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(139, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(140, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(141, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(142, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(143, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(144, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(145, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(146, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(147, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(148, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(149, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(150, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(151, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(152, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(153, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(154, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(155, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(156, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(157, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(158, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(159, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(160, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(161, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(162, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(163, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(164, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(165, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(166, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(167, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(168, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(169, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(170, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(171, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(172, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(173, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(174, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(175, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(176, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(177, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(178, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(179, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(180, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(181, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(182, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(183, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(184, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(185, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(186, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(187, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(188, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(189, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(190, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(191, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(192, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(193, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(194, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(195, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(196, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(197, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(198, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(199, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(200, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(201, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(202, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(203, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(204, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(205, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(206, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(207, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(208, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(209, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(210, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(211, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(212, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(213, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(214, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(215, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(216, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(217, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(218, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(219, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(220, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(221, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(222, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 1),
(223, '2022-03-10', '2022-03-16', 12000, '2022-03-05', 6, 1),
(224, '2022-03-06', '2022-03-07', 10000, '2022-03-05', 12, 2),
(225, '2022-03-06', '2022-03-07', 9000, '2022-03-05', 15, 2),
(226, '2022-01-29', '2022-01-31', 7900, '2022-01-28', 1, 1),
(227, '2022-01-17', '2022-01-27', 21000, '2022-02-11', 3, 1),
(228, '2022-02-18', '2022-02-21', 12000, '2022-02-17', 5, 1),
(229, '2022-02-19', '2022-02-21', 9500, '2022-02-17', 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `venueimage`
--

CREATE TABLE `venueimage` (
  `Venue_Image_ID` int(11) NOT NULL,
  `Venue_Image` varchar(300) NOT NULL,
  `Venue_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venueimage`
--

INSERT INTO `venueimage` (`Venue_Image_ID`, `Venue_Image`, `Venue_ID`) VALUES
(1, 'Villa1.jpg', 1),
(2, 'partyplot.jpg', 2),
(3, 'auditorium.jpg', 3),
(4, 'farmhouse.jpeg', 4),
(5, 'Ompartyplot.jpg', 5),
(6, 'Hall1.jpg', 6),
(7, 'Villa1.jpg', 7),
(8, 'Hall2.jpg', 8),
(9, 'Hall3.jpg', 9),
(10, 'partyplot2.jpg', 10),
(11, 'partyplot3.jpg', 11),
(12, 'auditorium2.jpg', 12),
(13, 'auditorium3.jpg', 13),
(14, 'villa3.jpg', 14),
(15, 'farmhouse1.jpg', 15),
(16, 'auditorium.jpg', 16),
(17, 'Hall1.jpg', 17),
(18, 'Hall1.jpg', 18),
(19, 'partyplot3.jpg', 19);

-- --------------------------------------------------------

--
-- Table structure for table `venuepayment`
--

CREATE TABLE `venuepayment` (
  `Payment_ID` int(11) NOT NULL,
  `Payment_Type` varchar(20) NOT NULL,
  `Payment_Mode` varchar(20) NOT NULL,
  `Payment_Date` int(11) NOT NULL,
  `Payment_Time` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Booking_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `venuetype`
--

CREATE TABLE `venuetype` (
  `VType_ID` int(11) NOT NULL,
  `VType_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venuetype`
--

INSERT INTO `venuetype` (`VType_ID`, `VType_Name`) VALUES
(1, 'Hall'),
(2, 'Party Plot'),
(3, 'Auditorium'),
(4, 'Villa'),
(5, 'Farm House');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `Wishlist_ID` int(11) NOT NULL,
  `Venue_ID` int(11) NOT NULL,
  `C_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`Wishlist_ID`, `Venue_ID`, `C_ID`) VALUES
(2, 4, 1),
(4, 10, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`A_ID`);

--
-- Indexes for table `cancelled_bookings`
--
ALTER TABLE `cancelled_bookings`
  ADD PRIMARY KEY (`Cancel_ID`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`Contact_ID`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Feedback_ID`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`O_ID`);

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`R_ID`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`Venue_ID`);

--
-- Indexes for table `venuebooking`
--
ALTER TABLE `venuebooking`
  ADD PRIMARY KEY (`Booking_ID`);

--
-- Indexes for table `venueimage`
--
ALTER TABLE `venueimage`
  ADD PRIMARY KEY (`Venue_Image_ID`);

--
-- Indexes for table `venuepayment`
--
ALTER TABLE `venuepayment`
  ADD PRIMARY KEY (`Payment_ID`);

--
-- Indexes for table `venuetype`
--
ALTER TABLE `venuetype`
  ADD PRIMARY KEY (`VType_ID`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`Wishlist_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `A_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cancelled_bookings`
--
ALTER TABLE `cancelled_bookings`
  MODIFY `Cancel_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `Contact_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `C_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Feedback_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `O_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reminder`
--
ALTER TABLE `reminder`
  MODIFY `R_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `Venue_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `venuebooking`
--
ALTER TABLE `venuebooking`
  MODIFY `Booking_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `venueimage`
--
ALTER TABLE `venueimage`
  MODIFY `Venue_Image_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `venuepayment`
--
ALTER TABLE `venuepayment`
  MODIFY `Payment_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venuetype`
--
ALTER TABLE `venuetype`
  MODIFY `VType_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `Wishlist_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
