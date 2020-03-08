-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: sophia
-- Generation Time: Mar 20, 2019 at 11:16 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cfma`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `itemDescription` longtext NOT NULL,
  `itemCategory` varchar(255) NOT NULL,
  `itemImage` varchar(255) NOT NULL,
  `itemPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`itemID`, `itemName`, `itemDescription`, `itemCategory`, `itemImage`, `itemPrice`) VALUES
(1, 'Computer Basis', 'A book for newbie in programming', 'Books', 'images/1.jpg', 100),
(2, 'Computer Programming with C++', 'An introduction to C++', 'Books', 'images/2.jpg', 150),
(3, 'The Clean Coder', 'A book that teaches you how to write clean codes', 'Books', 'images/3.jpg', 300),
(4, 'Design Patterns', 'Design arts of object-oriented software', 'Books', 'images/4.jpg', 200),
(5, 'Introducing Python', 'An introduction to python', 'Books', 'images/5.jpg', 160),
(6, 'Manage and Cure Neck Pain', 'A must read for coders', 'Books', 'images/6.jpg', 1000),
(7, 'Black LED Computer Monitors', 'We are an accomplished organization which has gained name and fame in providing LED', 'Monitors', 'images/7.jpg', 800),
(8, 'Dell SE2717Hr 27 IPS LED Full HD Computer Monitor', 'Experience consistent colors across virtually any viewing angle. Optimize eye comfort with a flicker-free screen', 'Monitors', 'images/8.jpg', 1000),
(9, '24 Full HD TN Monitor 24M38H LG Australia', 'LED LCD Display with Full HD (1920 x 1080); On Screen Control; 4-Screen Split for multi-tasking; Reader Mode', 'Monitors', 'images/9.jpg', 1999),
(10, 'Surveillance System Monitor - 17 inch LCD', '17 Widescreen Format; VGA video input; 1280x1024 Video Resolution; Use with Stand Alone DVRs', 'Monitors', 'images/10.jpg', 1299),
(11, 'Dell U2718Q 27 Class 4K Monitor', 'With your UltraSharp monitor you get more than a pretty picture. it is a gorgeous screen made for multitasking.', 'Monitors', 'images/11.jpg', 2888),
(12, 'Philips 273V7QDSB', 'A perfect all-round display with stunning images that stretch from edge to edge, made easy on the eyes, in a compact, slim design.', 'Monitors', 'images/12.jpg', 3456),
(13, 'HP K1500 Keyboard', 'The HP Keyboard K1500 includes all the elements you\'re looking for. Increase your productivity with indicator lights and built-in number pad. Rely on improved and updated features with spill-resistant construction and adjustable legs.', 'Keyboards', 'images/13.jpg', 45),
(14, 'AmazonBasics Wired Keyboard', 'Low-profile Keys Provide a Quiet, Comfortable Typing Experience', 'Keyboards', 'images/14.jpg', 85),
(15, 'The Glorious GMMK - Full Size', 'The full sized, RGB, modular mechanical keyboard. Comes preinstalled with Gateron brown switches & black keycaps. Ready to go - requires no setup. Perfect for someone new to mechanical keyboards.', 'Keyboards', 'images/15.jpg', 700),
(16, 'Das Keyboard 4 Professional', 'A superb typing experience and excellent new features characterize the mechanical Das Keyboard 4, but those benefits don\'t come cheap.', 'Keyboards', 'images/16.jpg', 900),
(17, 'Bluetooth Foldable Keyboard Wireless Keyboards', 'Pocket Size and smaller than an iPhone 6 plus after being folded.Extremely Portable for on-the-go devices.', 'Keyboards', 'images/17.jpg', 270),
(18, 'Maltron Keyboards -Left Handed', 'These keyboards are designed to enable people with special needs to enter computer data more easily and quickly. The special shape and letter layout have been very carefully planned, taking into account the limited number of keys that can be accessed quickly and comfortably.', 'Keyboards', 'images/18.jpg', 500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`itemID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
