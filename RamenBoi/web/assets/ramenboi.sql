-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2018 at 03:49 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ramenboi`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(11) NOT NULL,
  `order_dateTime` datetime NOT NULL,
  `customer_id` int(11) NOT NULL,
  `pickup_dateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `topping`
--

CREATE TABLE `topping` (
  `topping_id` int(11) NOT NULL,
  `topping_amount` float NOT NULL,
  `topping_price` float(11,2) NOT NULL,
  `order_item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `transaction_dateTime` datetime NOT NULL,
  `Payment_Amount` float(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `contact` bigint(11) NOT NULL,
  `type` enum('customer','staff','admin','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `contact`, `type`) VALUES
(1, 'John', 'Del Mar', 'jdelmar', 'jdelmar', 995934930, 'admin'),
(2, 'Bryle', 'Baran', 'bbaran', 'bbaran', 320598, 'admin'),
(3, 'Rafael James', 'Ompad', 'rjompad', 'rjompad', 9532532, 'admin'),
(4, 'Valerie ', 'Torres', 'Vtorres', 'Vtorres', 5395235, 'customer'),
(5, 'Marsha', 'Becker', 'Mbecker', 'Mbecker', 5329085, 'customer'),
(6, 'Juana', 'Reese', 'Jreese', 'Jreese', 3525, 'customer'),
(7, 'Loretta', 'Salazar', 'Lsalazar', 'Lsalazar', 5236234, 'customer'),
(8, 'Boyd', 'Patton', 'Bpatton', 'Bpatton', 52364362, 'customer'),
(9, 'Sabrina', 'Nguyen', 'Snguyen', 'Snguyen', 35256346, 'customer'),
(10, 'Clayton', 'Hubbard', 'Chubbard', 'Chubbard', 3768769, 'staff'),
(11, 'Jamie', 'Mann', 'Jmann', 'Jmann', 353467457, 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_customer_id2` (`customer_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `fk_order_id2` (`order_id`);

--
-- Indexes for table `topping`
--
ALTER TABLE `topping`
  ADD PRIMARY KEY (`topping_id`),
  ADD KEY `fk_order_item_id` (`order_item_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `fk_order_id` (`order_id`),
  ADD KEY `fk_customer_id` (`customer_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topping`
--
ALTER TABLE `topping`
  MODIFY `topping_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `fk_customer_id2` FOREIGN KEY (`customer_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `fk_order_id2` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`order_id`);

--
-- Constraints for table `topping`
--
ALTER TABLE `topping`
  ADD CONSTRAINT `fk_order_item_id` FOREIGN KEY (`order_item_id`) REFERENCES `order_item` (`order_item_id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
