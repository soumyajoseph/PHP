-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2018 at 12:11 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clean_city`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent_details`
--

CREATE TABLE `agent_details` (
  `a_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `a_fname` varchar(15) NOT NULL,
  `a_mob` bigint(20) NOT NULL,
  `a_location` varchar(15) NOT NULL,
  `a_username` varchar(15) NOT NULL,
  `a_email` varchar(20) NOT NULL,
  `a_bnk` varchar(15) NOT NULL,
  `a_acc_no` varchar(15) NOT NULL,
  `a_pan` varchar(20) NOT NULL,
  `a_aadhar` bigint(20) NOT NULL,
  `a_addr` varchar(30) NOT NULL,
  `a_licence` varchar(20) NOT NULL,
  `a_date` date NOT NULL,
  `a_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent_details`
--

INSERT INTO `agent_details` (`a_id`, `login_id`, `a_fname`, `a_mob`, `a_location`, `a_username`, `a_email`, `a_bnk`, `a_acc_no`, `a_pan`, `a_aadhar`, `a_addr`, `a_licence`, `a_date`, `a_status`) VALUES
(8, 25, 'Maria', 9456219721, '1', 'maria', 'maria@gmail.com', 'SBI', 'ANCTB0765U', 'LODFB0705U', 23456748467, 'Abc', '', '0000-00-00', 1),
(20, 111, 'Amrutha', 9834627821, '2', 'amrutha', 'amrutha12@gmail.com', 'SBI', 'AJUTB0065U', 'VBATB0765U', 45893462909, 'yxz', '', '0000-00-00', 1),
(31, 135, 'Arya', 9767567546, '8', 'arya', 'a45arya@gmail.com', 'SBI', 'ALOHT0765K', 'JUATB0766U', 8124568890, 'asd', '', '0000-00-00', 1),
(33, 139, 'Manju', 7643356556, '5', 'manju', 'manju13262@gmail.com', 'SBI', 'BKFSR6934H', 'GATY345L', 9874523678, 'Rty', '', '0000-00-00', 1),
(34, 140, 'Nidhi', 986434677, '2', 'nidhi', '', '', '0', '0', 0, '', '', '0000-00-00', 1),
(36, 145, 'Arun', 9453217854, '6', 'arun', '', '', '0', '0', 0, '', '', '0000-00-00', 1),
(45, 184, 'S R K Agency', 123456782, '10', 'srk', 'qqq', 'twefed', '7827', '0', 0, 'qqq', '2324erer', '2018-03-28', 1),
(48, 187, 'greeshma', 6547654545, '9', '---', 'greeshmav', 'sbi', '456666777', '7777777', 345634563456, 'greeshmasanthi bhavan', '45gt676', '2018-04-02', 1),
(49, 188, 'A V Agency', 7552345519, '2', '123aA', 'avagency@gmail.com', 'SBI', 'VBGH4566U', 'QWCF3775G', 234562349856, 'A V Agency,Ponkunnam', '76/3490/2017', '2018-04-03', 1),
(50, 224, 'aaaa', 9846327079, '1', 'ss', 'greeshmav20@gmail.co', 'aaa', '34444', '44445', 11111, 'anuaaaa', '11111', '2018-04-07', 1),
(51, 221, 'anu', 984666666, '1', 'qqq', 'greeshmav20@gmail.co', 'aaa', '34444', '44445', 11111, 'anuaaaa', '11111', '2018-04-07', 1),
(52, 229, 'zzz', 73352688920, '4', 'anna', 'greeshmav20@gmail.co', 'dxfxfb', '1222', '7777777', 7897889, 'zz', '47444', '2018-04-07', 1),
(53, 232, 'qqqq', 73352688920, '4', 'rrr', 'greeshmav20@gmail.co', 'dxfxfb', '1222', '7777777', 7897889, 'zz', '47444', '2018-04-07', 1),
(54, 233, 'Anu', 455, '1', 'qqq', 'minivijayakumar3297@', 'bb', '455', '44', 5555, 'qq', '3433', '2018-04-07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `agent_status`
--

CREATE TABLE `agent_status` (
  `status_id` int(11) NOT NULL,
  `agent_name` varchar(22) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `loc` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `allocated_agent`
--

CREATE TABLE `allocated_agent` (
  `allocate_id` int(11) NOT NULL,
  `agent_name` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `login_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allocated_agent`
--

INSERT INTO `allocated_agent` (`allocate_id`, `agent_name`, `user_name`, `location`, `login_id`, `job_id`) VALUES
(104, 'nidhi', 'Amala', 'Ponkunnam', 108, 126),
(105, 'nidhi', 'Geethu', 'Ponkunnam', 100, 127);

-- --------------------------------------------------------

--
-- Table structure for table `job_details`
--

CREATE TABLE `job_details` (
  `job_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `job_type` varchar(25) NOT NULL,
  `job_loc` varchar(50) NOT NULL,
  `job_date` date NOT NULL,
  `qty` int(11) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_details`
--

INSERT INTO `job_details` (`job_id`, `login_id`, `job_type`, `job_loc`, `job_date`, `qty`, `status`) VALUES
(126, 108, 'Food Waste', '2', '2018-04-06', 5, 'complete'),
(127, 100, 'Electronic Waste', '2', '2018-04-06', 9, 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `location_details`
--

CREATE TABLE `location_details` (
  `loc_id` int(11) NOT NULL,
  `locations` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_details`
--

INSERT INTO `location_details` (`loc_id`, `locations`) VALUES
(1, 'Pala'),
(2, 'Ponkunnam'),
(4, 'Kanjirapally'),
(5, 'Cherpunkal'),
(6, 'Changanaserry'),
(7, 'Ettumanoor'),
(8, 'Manarcaud'),
(9, 'Paika'),
(10, 'Kidangoor');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`, `role`) VALUES
(19, 'admin', '1234', 'admin'),
(24, 'gagan', '123', 'agent'),
(25, 'maria', '456', 'agent'),
(99, 'greeshma', 'gree', 'user'),
(100, 'geethu', 'geethu', 'user'),
(108, 'amala', 'amala', 'user'),
(111, 'amrutha', 'amrutha', 'agent'),
(135, 'arya', 'arya', 'agent'),
(136, 'sameer', 'sameer', 'user'),
(138, 'mini', 'mini', 'user'),
(139, 'manju', 'manju', 'agent'),
(140, 'nidhi', 'nidhi', 'agent'),
(141, 'sanika', '123', 'user'),
(142, 'thomas', '123', 'agent'),
(144, 'aravind', '123', 'user'),
(145, 'arun', '123', 'agent'),
(148, 'clara', 'clara', 'user'),
(149, 'q', 'q', 'user'),
(150, 'q', 'qw', 'user'),
(151, 'q', 'qwe', 'user'),
(152, 'q', 'qqq', 'user'),
(153, 'r', 'r', 'user'),
(154, 'r', 'qq', 'user'),
(155, 'r', 'a', 'user'),
(156, 'r', 'o', 'user'),
(157, 'D', 'D', 'user'),
(158, 'D', 'q', 'user'),
(159, 'D', 'l', 'user'),
(160, 'D', 'q', 'user'),
(161, 'D', 'd', 'user'),
(162, 'D', 'a', 'user'),
(163, 'leena', 'leena', 'user'),
(164, 'molu', 'molu', 'user'),
(165, 'mmm', 'mmm', 'user'),
(166, '', '', 'agent'),
(167, '', '', 'agent'),
(168, '', '', 'agent'),
(169, '', '', 'agent'),
(170, '', '', 'agent'),
(171, '', '', 'agent'),
(172, 'sona', 'sona', 'agent'),
(173, 'Atlas', 'atlas', 'agent'),
(174, 'Atlas', 'atlas', 'agent'),
(175, 'ghbfg', 'dfgdf', 'agent'),
(176, 'ff', 'ff', 'agent'),
(177, 'rajan', 'rajan', 'user'),
(178, '123', '123', 'agent'),
(179, 'zz', 'zz', 'agent'),
(180, 'www', 'www', 'agent'),
(181, '123', '123', 'agent'),
(182, 'sona', 'sona', 'agent'),
(183, 'aaa', 'aaa', 'agent'),
(184, 'srk', 'srk', 'agent'),
(185, 'bee', 'bee', 'user'),
(186, 'baa', 'baa', 'user'),
(187, '---', '---', 'agent'),
(188, '123aA', '321AV', 'agent'),
(189, 'qqq', 'qqqq', 'user'),
(190, 'www', 'www', 'user'),
(191, 'www', 'qqqqq', 'user'),
(192, 'rtt', 'gg', 'user'),
(193, 'rtt', 'ooo', 'user'),
(194, 'rtt', '1233331111', 'user'),
(195, 'rtt', '678', 'user'),
(196, 'qqq', 'qqq', 'user'),
(197, 'qqq', '111222', 'user'),
(198, 'qqq', '1233', 'user'),
(199, 'wwee', 'qwe', 'user'),
(200, 'dd', 'dd', 'agent'),
(201, 'dd', 'ss', 'agent'),
(202, 'ss', 'ssa', 'agent'),
(203, 'kkk', 'kk', 'agent'),
(204, 'kkk', 'nhf', 'agent'),
(205, 'hjggg', 'bffgt', 'agent'),
(206, '', '', 'agent'),
(207, 'hjggg', 'bffgt', 'agent'),
(208, 'kkk', 'kkk', 'agent'),
(209, 'aaaaa', 'aaaaa', 'user'),
(210, 'aaa', 'aaa', 'agent'),
(211, 'qqq', 'qqq', 'agent'),
(212, 'qqq', 'qqq', 'agent'),
(213, 'qqq', 'qqq', 'agent'),
(214, 'qqq', 'qqq', 'agent'),
(215, 'qqq', 'qqq', 'agent'),
(216, 'qqq', 'qqq', 'agent'),
(217, 'qqq', 'qqq', 'agent'),
(218, 'kkk', 'kkk', 'agent'),
(219, 'ss', 'ssaa', 'agent'),
(220, 'ss', 'ssaa', 'agent'),
(221, 'qqq', 'qqq', 'agent'),
(222, 'ss', 'ssaa', 'agent'),
(223, 'ss', 'ssaa', 'agent'),
(224, 'ss', 'ssaa', 'agent'),
(225, 'qqq', 'aaa', 'agent'),
(226, '', '', 'agent'),
(227, 'anna', 'anna', 'agent'),
(228, 'anna', 'anna', 'agent'),
(229, 'anna', 'anna', 'agent'),
(230, 'rrr', 'rrrr', 'agent'),
(231, 'rrr', 'rrrr', 'agent'),
(232, 'rrr', 'rrrr', 'agent'),
(233, 'qqq', 'qqq', 'agent'),
(234, 'ghghy', 'hghh', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `rid` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `qty_kg` int(11) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`rid`, `type`, `qty_kg`, `rate`) VALUES
(1, 'Plastic Waste', 1, 2),
(2, 'Food Waste', 1, 7),
(3, 'Paper Waste', 1, 10),
(4, 'Electronic Waste', 1, 10),
(5, 'Construction Waste', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `u_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `u_fname` varchar(15) NOT NULL,
  `u_lname` varchar(15) NOT NULL,
  `u_gender` varchar(6) NOT NULL,
  `u_mob` bigint(20) NOT NULL,
  `u_email` varchar(25) NOT NULL,
  `u_hname` varchar(20) NOT NULL,
  `u_loc` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`u_id`, `login_id`, `u_fname`, `u_lname`, `u_gender`, `u_mob`, `u_email`, `u_hname`, `u_loc`) VALUES
(51, 99, 'Greeshma', 'Vijayakumar', 'female', 9846327970, 'greeshma@gmail.com', 'SanthiBhavan', '1'),
(52, 100, 'Geethu', 'Vijayakumar', 'female', 9846352790, 'geethu@gmail.com', 'House', '3'),
(60, 108, 'Amala', 'Maria', 'female', 9534871001, 'amalamaria@gmail.com', 'House', '2'),
(74, 136, 'Sameer', 'Manuel', 'male', 8635674532, 'ssameer123@gmail.com', 'Abc House', '8'),
(81, 164, 'Molu', 'M', 'female', 8926351515, 'molu@123', 'Abc House', '1'),
(92, 199, '123', 'qqq', 'female', 123344444, 'e@gmail.com', 'kkkkk', '1'),
(93, 209, 'AMMU', 'DFFDFD', 'female', 5566, 'greeshmav20@gmail.com', 'dffgg', '2'),
(94, 234, '12333', 'wwwe', 'male', 556, 'njjj', 'hhjjh', '10');

-- --------------------------------------------------------

--
-- Table structure for table `work_complete`
--

CREATE TABLE `work_complete` (
  `w_id` int(11) NOT NULL,
  `j_id` int(11) NOT NULL,
  `agency_lid` int(11) NOT NULL,
  `j_type` varchar(25) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_complete`
--

INSERT INTO `work_complete` (`w_id`, `j_id`, `agency_lid`, `j_type`, `qty`) VALUES
(34, 126, 140, 'Food Waste', 3),
(35, 126, 140, 'Paper Waste', 4),
(36, 127, 140, 'Food Waste', 2),
(37, 127, 140, 'Plastic Waste', 5),
(38, 127, 140, 'Paper Waste', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent_details`
--
ALTER TABLE `agent_details`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `agent_status`
--
ALTER TABLE `agent_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `allocated_agent`
--
ALTER TABLE `allocated_agent`
  ADD PRIMARY KEY (`allocate_id`);

--
-- Indexes for table `job_details`
--
ALTER TABLE `job_details`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `location_details`
--
ALTER TABLE `location_details`
  ADD PRIMARY KEY (`loc_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `work_complete`
--
ALTER TABLE `work_complete`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent_details`
--
ALTER TABLE `agent_details`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `agent_status`
--
ALTER TABLE `agent_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `allocated_agent`
--
ALTER TABLE `allocated_agent`
  MODIFY `allocate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `job_details`
--
ALTER TABLE `job_details`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT for table `location_details`
--
ALTER TABLE `location_details`
  MODIFY `loc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;
--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `work_complete`
--
ALTER TABLE `work_complete`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
