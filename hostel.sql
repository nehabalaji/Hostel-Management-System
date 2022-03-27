-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 27, 2022 at 07:12 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL,
  `hostel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `email`, `password`, `reg_date`, `updation_date`, `hostel_id`) VALUES
(1, 'admin', 'admin@gmail.com', 'Test@1234', '2021-04-04 15:01:45', '2021-04-17', 6);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_code`, `course_sn`, `course_fn`) VALUES
('B10992', 'B.Tech', 'Bachelor  of Technology'),
('BC36356', 'BCA', 'Bachelor Of Computer Application'),
('BCOM1453', 'B.Com', 'Bachelor Of commerce '),
('BE765', 'BE', 'Bachelor of Engineering'),
('BSC12', 'BSC', 'Bachelor  of Science'),
('MBA75', 'MBA', 'Master of Business Administration'),
('MCA565', 'MCA', 'Master of Computer Application');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `hostel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`hostel_id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `hostel_registration`
--

CREATE TABLE `hostel_registration` (
  `id` int(11) NOT NULL,
  `hostel_id` int(11) NOT NULL DEFAULT 6,
  `roomno` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_registration`
--

INSERT INTO `hostel_registration` (`id`, `hostel_id`, `roomno`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course_code`, `regno`, `egycontactno`, `address`) VALUES
(1, 6, 100, 8000, 0, '2022-01-22', 5, 'B10992', '102103', 8285703354, 'H n0 18/1 Bihari Puram Phase-1 Melrose Bye Pass'),
(3, 6, 112, 4000, 0, '2022-01-27', 5, 'BSC12', '102355', 789632587, 'New Delhi'),
(4, 6, 201, 6000, 1, '2022-02-07', 2, 'B10992', '102102', 9090909090, '218, 3rd cross, 1st stage, Brindavan Extension'),
(5, 6, 132, 2000, 0, '2022-01-21', 5, 'B10992', '102102', 8383838383, '218, Gokulam, Mysore'),
(10, 6, 100, 8000, 1, '2022-03-19', 1, 'B10992', '108061211', 9090909090, ';olikujfhdgfszxc\';lkujytrsfdghbvnbm'),
(11, 6, 112, 4000, 1, '2022-03-31', 1, 'BC36356', '108061211', 9090909090, 'ioewhakvbdjsm');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_no` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `fees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_no`, `seater`, `fees`) VALUES
(100, 5, 8000),
(112, 3, 4000),
(132, 5, 2000),
(200, 2, 6000),
(201, 2, 6000);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'EPE'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`regNo`, `firstName`, `lastName`, `gender`, `contactNo`, `email`, `user_password`) VALUES
('102102', 'neha', 'balaji', 'female', 9191919191, 'neha@gmail.com', '123456'),
('102103', 'Neha', 'Balaji', 'female', 9999988888, 'rituj9519@gmail.com', '123456'),
('102355', 'Harry', 'projects', 'male', 6786786786, 'Harry@gmail.com', '6786786786'),
('108061211', 'test3', 'test1', 'male', 8467067344, 'test@gmail.com', 'Test@123'),
('108765', 'Neha', 'B', 'female', 9876543210, 'neha2000balaji@gmail.com', '123456'),
('586952', 'Benjamin', 'projects', 'male', 8596185625, 'Benjamin@gmail.com', '8596185625');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_log`
--

CREATE TABLE `visitor_log` (
  `visitor_id` int(11) NOT NULL,
  `visitor_name` varchar(20) NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `visiting_date` date DEFAULT NULL,
  `student_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor_log`
--

INSERT INTO `visitor_log` (`visitor_id`, `visitor_name`, `in_time`, `out_time`, `visiting_date`, `student_id`) VALUES
(1, 'Ramesh', '10:36:09', '11:36:09', '2022-02-01', '102102'),
(2, 'suresh', '11:49:09', '12:49:09', '2022-01-05', '102102'),
(3, 'Rama', '11:00:00', '12:00:00', '2022-01-01', '102103'),
(4, 'Ramakanth', '12:00:00', '13:00:00', '2022-01-01', '102103');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`hostel_id`);

--
-- Indexes for table `hostel_registration`
--
ALTER TABLE `hostel_registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_fk` (`roomno`),
  ADD KEY `course_code_fk` (`course_code`),
  ADD KEY `regno_fk` (`regno`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_no`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`regNo`);

--
-- Indexes for table `visitor_log`
--
ALTER TABLE `visitor_log`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `student_id_fk` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hostel_registration`
--
ALTER TABLE `hostel_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `visitor_log`
--
ALTER TABLE `visitor_log`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `hostel_id_fk` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`hostel_id`);

--
-- Constraints for table `hostel_registration`
--
ALTER TABLE `hostel_registration`
  ADD CONSTRAINT `course_code_fk` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`) ON DELETE CASCADE,
  ADD CONSTRAINT `regno_fk` FOREIGN KEY (`regno`) REFERENCES `student` (`regNo`) ON DELETE CASCADE,
  ADD CONSTRAINT `room_fk` FOREIGN KEY (`roomno`) REFERENCES `rooms` (`room_no`) ON DELETE CASCADE;

--
-- Constraints for table `visitor_log`
--
ALTER TABLE `visitor_log`
  ADD CONSTRAINT `student_id_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`regNo`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
