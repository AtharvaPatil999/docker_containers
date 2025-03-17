-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 03:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `ItemID` int(5) NOT NULL,
  `BidderID` int(4) NOT NULL,
  `BidAmount` int(6) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`ItemID`, `BidderID`, `BidAmount`, `email`) VALUES
(82, 14, 80, ''),
(82, 3, 222, ''),
(78, 12, 799, ''),
(82, 3, 3333, ''),
(82, 3, 4444, ''),
(82, 3, 5555, ''),
(82, 3, 6666, ''),
(82, 3, 7777, ''),
(82, 3, 8888, ''),
(78, 14, 8999, ''),
(82, 3, 9999, ''),
(83, 17, 60500, ''),
(83, 17, 70000, ''),
(83, 17, 75000, ''),
(83, 17, 75690, ''),
(83, 17, 75900, ''),
(83, 17, 80000, ''),
(83, 18, 83200, ''),
(84, 17, 4605000, 'a@g.com'),
(84, 18, 4605001, 'a123@g.com');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(10) NOT NULL,
  `Category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `Category`) VALUES
(1, 'Electronics'),
(2, 'Watches'),
(3, 'Art'),
(4, 'Jewellery'),
(5, 'Collectables'),
(6, 'Sneaker'),
(7, 'Antique');

-- --------------------------------------------------------

--
-- Table structure for table `feedbackprofile`
--

CREATE TABLE `feedbackprofile` (
  `FeedbackID` int(6) NOT NULL,
  `InvoiceNumber` int(6) NOT NULL,
  `Positive` tinyint(1) NOT NULL,
  `Description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ItemID` int(10) NOT NULL,
  `ItemName` varchar(50) NOT NULL,
  `SellerID` int(10) DEFAULT NULL,
  `StartingPrice` int(6) NOT NULL,
  `ExpectedPrice` int(6) NOT NULL,
  `CurrentPrice` int(6) DEFAULT NULL,
  `PhotosID` varchar(120) DEFAULT NULL,
  `Description` varchar(6000) DEFAULT NULL,
  `CategoryID` int(10) NOT NULL,
  `EndTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ItemID`, `ItemName`, `SellerID`, `StartingPrice`, `ExpectedPrice`, `CurrentPrice`, `PhotosID`, `Description`, `CategoryID`, `EndTime`) VALUES
(77, 'Samsung', 6, 22, 222, 22, 'img/images.jpg', 'Samsung', 1, '2023-04-16 00:00:00'),
(78, 'SweatShirt', 12, 699, 800, 8999, 'img/Anuv_Jain_-_ALAG_AASMAAN_(a_song_on_the_ukulele)(1080p).mp4', 'Cotton 100%,Attractive Design along with texture', 5, '2023-04-19 00:00:00'),
(79, 'gilg', 13, 8888, 10000, 8888, 'img/Screenshot 2022-02-06 183158.png', 'gyt', 1, '2023-04-18 00:00:00'),
(80, 'uyri7f', 14, 900, 0, 900, 'img/664803 - Copy.jpg', 'uyfi7tytf', 5, '2023-04-18 00:00:00'),
(81, 'srg', 14, 22, 222, 22, 'img/asta black.kra', 'sgfsz sgfs', 1, '2023-04-18 00:00:00'),
(82, 'aer', 14, 22, 10000, 9999, 'img/5608111.jpg', 'e', 1, '2023-04-18 00:00:00'),
(83, 'Anima Painting', 16, 59999, 10000, 83200, 'img/asta black 1 (2).png', 'Designed By Abhi Arote', 3, '2023-04-19 00:00:00'),
(84, 'Nike Dunk High Pro SB Flom', 18, 4600000, 10000, 4605000, 'img/Nike.png', 'One of the most difficult to find Nike SBs in the world, the FLOM (for love or money), was released in 2004, though of the 24 pairs created, just 3 were released to the public, making finding a pair the holy grail of sneaker hunting. The Dunk silhouette is one of the most easily recognized in sneaker history, and this FLOM pattern encompasses different denominations of printed money.', 6, '2023-04-18 00:00:00'),
(85, 'Painting', 20, 4000, 10000, 4000, 'img/backiee-140212.jpg', 'kdlnandlkandnad', 5, '2023-04-20 00:00:00'),
(86, 'jbkj', 20, 333, 10000, 333, 'img/backiee-59092.jpg', 'nnlnl', 1, '2023-04-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `MessageID` int(6) NOT NULL,
  `SenderID` int(6) NOT NULL,
  `ReceiverID` int(6) NOT NULL,
  `Topic` varchar(500) NOT NULL,
  `Body` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `solditems`
--

CREATE TABLE `solditems` (
  `InvoiceNumber` int(6) NOT NULL,
  `ItemID` int(6) NOT NULL,
  `BuyerID` int(6) NOT NULL,
  `Date` datetime NOT NULL,
  `FinalValue` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(10) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Contact_No` varchar(11) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Password`, `Contact_No`, `Address`, `FName`, `LName`) VALUES
(14, 'abhi69@gmail.com', '5f8d15965bdb44361776a0bc360f924d', '2222222222', 'Akurdi', 'Abhi', 'Arote'),
(20, 'abhijitarote540@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '91705838504', 'SURVEY NO.1222,', 'Abhijit', 'Arote'),
(19, 'abhijitarote800@gmail.com', 'f79d0f757535b1be8b5092eb7b33fa83', '91705838504', 'SURVEY NO.1222,', 'Abhijit', 'Arote'),
(2, 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', '31544', 'India', 'Ashish', 'Dugar'),
(3, 'ashish', '7b69ad8a8999d4ca7c42b8a729fb0ffd', '9403931544', 'gafjag', 'Ashish', 'Dugar'),
(7, 'divekarpranav04@gmail.com', 'f0644eebb46223043280489446d292f1', '88888888', 'Moshi', 'shubham', 'Chavan'),
(10, 'gg@gmail.com', '807e493ae27918547e83f4e9e80a80d0', '99999999', 'www', 'Abhi', 'Arote'),
(8, 'hello1@gmail.com', '8f60c8102d29fcd525162d02eed4566b', '8805653578', 'Nigdi', 'Pranav', 'Divekar'),
(12, 'k@gmail.com', 'ce7ce9108ae218e4ee612b0b36e3ed1d', '5555555555', 'hhhhh', 'pppp', 'oooo'),
(18, 'kernel@gmail.com', 'bb0ba2752228809ab677d3c77ebe0272', '5784682780', 'Akurdi', 'omkar s', 'kad'),
(16, 'kk@gmail.com', 'a512f1621f0c592925bc7afb2801d9be', '7854857965', 'Pune', 'Omkar', 'Kad'),
(21, 'mode.kernel1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '91705838504', 'sknflsnf', 'OMkAr', 'Kad'),
(11, 'ok@gmail.com', '9e1135ff4157f14358c7c94c79aad47d', '88888888', 'pune', 'Pranav', 'Divekar'),
(6, 'onlyashish143@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9403931544', 'sdfnad.n', 'Ashish', 'Dugar'),
(15, 'p@gmail.com', '45298308dbec5c0757e6f751d0fb2a29', '11111111', 'feiufh', 'Pranav', 'hhh'),
(17, 'pcp@gmail.com', '96e79218965eb72c92a549dd5a330112', '6874589524', 'Chinchwad', 'OM', 'kad'),
(13, 'pd@gmail.com', '8246c7cc3018c5115321990ae4b7b3a4', '8805653578', 'Akurdi,Nigdi', 'Pranav', 'Divekar'),
(9, 'uuu@gmail.com', '68115705108ddd6f7ba9a458bb175363', '88888888', 'dddd', 'omkar', 'kad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Username`) USING BTREE,
  ADD UNIQUE KEY `UserID` (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ItemID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
