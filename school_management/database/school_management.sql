-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2020 at 05:15 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_account`
--

CREATE TABLE `add_account` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `admin_type` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bdate` date NOT NULL,
  `religion` varchar(15) NOT NULL,
  `join_date` date NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id` int(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_account`
--

INSERT INTO `add_account` (`fname`, `lname`, `admin_type`, `gender`, `bdate`, `religion`, `join_date`, `email`, `password`, `id`, `phone`, `address`) VALUES
('Jay', 'Savlani', 'Admin', 'Male', '2000-06-20', ' Hindu', '2020-12-12', 'jaysavlani2@gmail.com', 'Jaysavlani@2', 2, '8320793369', 'Rajkot'),
('Goral', 'Gajera', 'Admin', 'Female', '2001-03-12', ' Hindu', '2020-12-12', 'goga@gmail.com', 'Goral@123', 4, '9099086308', 'Rajkot');

-- --------------------------------------------------------

--
-- Table structure for table `add_attendance`
--

CREATE TABLE `add_attendance` (
  `id` int(11) NOT NULL,
  `roll` varchar(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `date` varchar(10) NOT NULL,
  `attendance` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_attendance`
--

INSERT INTO `add_attendance` (`id`, `roll`, `fname`, `lname`, `date`, `attendance`) VALUES
(1, '1', 'Jay', 'Savlani', '12-12-2020', 'Present'),
(2, '2', 'Yash', 'Patel', '12-12-2020', 'Absent'),
(3, '3', 'Goral', 'Gajera', '12-12-2020', 'Present'),
(4, '4', 'Rutvik', 'Haripara', '12-12-2020', 'Present'),
(5, '5', 'Kinaree', 'Parsana', '12-12-2020', 'Present'),
(11, '1', 'Jay', 'Savlani', '14-12-2020', 'Absent'),
(12, '2', 'Yash', 'Patel', '14-12-2020', 'Present'),
(13, '3', 'Goral', 'Gajera', '14-12-2020', 'Present'),
(14, '4', 'Rutvik', 'Haripara', '14-12-2020', 'Present'),
(15, '5', 'Kinaree', 'Parsana', '14-12-2020', 'Absent'),
(16, '1', 'Jay', 'Savlani', '15-12-2020', 'Present'),
(17, '2', 'Yash', 'Patel', '15-12-2020', 'Absent'),
(18, '3', 'Goral', 'Gajera', '15-12-2020', 'Absent'),
(19, '4', 'Rutvik', 'Haripara', '15-12-2020', 'Absent'),
(20, '5', 'Kinaree', 'Parsana', '15-12-2020', 'Present'),
(21, '2', 'Yash', 'Patel', '16-12-2020', 'Present'),
(22, '3', 'Goral', 'Gajera', '16-12-2020', 'Present'),
(23, '4', 'Rutvik', 'Haripara', '16-12-2020', 'Present'),
(24, '5', 'Kinaree', 'Parsana', '16-12-2020', 'Present'),
(25, '1', 'Jay', 'Savlani', '16-12-2020', 'Present'),
(26, '2', 'Yash', 'Patel', '20-12-2020', 'Present'),
(27, '3', 'Goral', 'Gajera', '20-12-2020', 'Present'),
(28, '4', 'Rutvik', 'Haripara', '20-12-2020', 'Present'),
(29, '5', 'Kinaree', 'Parsana', '20-12-2020', 'Present'),
(30, '1', 'Jay', 'Savlani', '20-12-2020', 'Present'),
(31, '2', 'Yash', 'Patel', '22-12-2020', 'Present'),
(32, '3', 'Goral', 'Gajera', '22-12-2020', 'Present'),
(33, '4', 'Rutvik', 'Haripara', '22-12-2020', 'Absent'),
(34, '5', 'Kinaree', 'Parsana', '22-12-2020', 'Absent'),
(35, '1', 'Jay', 'Savlani', '22-12-2020', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `add_book`
--

CREATE TABLE `add_book` (
  `id` int(11) NOT NULL,
  `book_name` varchar(200) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `writter_name` varchar(200) NOT NULL,
  `class` varchar(25) NOT NULL,
  `pub_year` int(4) NOT NULL,
  `up_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_book`
--

INSERT INTO `add_book` (`id`, `book_name`, `subject`, `writter_name`, `class`, `pub_year`, `up_date`) VALUES
(1, 'Database Management System', 'DBMS', 'Hiren Raithatha', '12th (Science)', 2000, '2020-10-15'),
(2, 'Optimization Techniques in Operational Research', 'OT', 'Nishith Kotak', '11th (Science)', 1984, '2020-10-03'),
(4, 'Data Communications and Networking', 'CN', 'CD Parmar', '6th', 2007, '2020-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `add_classroutine`
--

CREATE TABLE `add_classroutine` (
  `id` int(11) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `class` varchar(25) NOT NULL,
  `st` varchar(10) NOT NULL,
  `et` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_classroutine`
--

INSERT INTO `add_classroutine` (`id`, `teacher_name`, `subject_name`, `class`, `st`, `et`, `date`) VALUES
(1, 'Rucha Khakhkhar', 'DBMS', '8th', '10:00', '12:00', '2020-10-16'),
(3, 'Aman Mamdani', 'OT', '1st', '13:30', '15:00', '2020-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `add_notice`
--

CREATE TABLE `add_notice` (
  `title` varchar(200) NOT NULL,
  `detail` varchar(1000) NOT NULL,
  `post_by` varchar(100) NOT NULL,
  `post_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_notice`
--

INSERT INTO `add_notice` (`title`, `detail`, `post_by`, `post_date`) VALUES
('Diwali Vacation ', 'The vaction is starting from 12th November to 25th November', 'Kapil Shukla', '2020-10-16'),
('COVID 19 Stay Safe', 'In continuation of the efforts to contain the spread of COVID-19, the following initiatives of the Government may be brought to the notice of all the teachers, students and staff members of your institution today itself by using the communication channels available with the school in the interest of health and safety of all.', 'CD Parmar', '2020-03-12');

-- --------------------------------------------------------

--
-- Table structure for table `add_student`
--

CREATE TABLE `add_student` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bdate` date NOT NULL,
  `roll` int(10) NOT NULL,
  `b_group` varchar(10) NOT NULL,
  `religion` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `class` varchar(25) NOT NULL,
  `a_id` int(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `shortbio` varchar(200) NOT NULL,
  `student_photo` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_student`
--

INSERT INTO `add_student` (`fname`, `lname`, `gender`, `bdate`, `roll`, `b_group`, `religion`, `email`, `class`, `a_id`, `phone`, `shortbio`, `student_photo`) VALUES
('Yash', 'Patel', 'Male', '2000-06-15', 2, 'O+', 'Hindu', 'yashpatel@gmail.com', '8th', 2, '6359465512', 'Hii I M Yash Patel....', 'yp.jpg'),
('Goral', 'Gajera', 'Female', '2001-01-30', 3, 'B+', 'Hindu', 'goralgajera@gmail.com', '6th', 3, '9099086308', 'HIIIIIIIIIII', 'goral.jpg'),
('Rutvik', 'Haripara', 'Male', '2020-10-21', 4, 'B+', 'Hindu', 'rkharipara@gmail.com', '11th (Commerce)', 4, '9081426854', 'HIIII I M RUTVIK', 'rutvik.jpeg'),
('Kinaree', 'Parsana', 'Female', '2020-09-23', 5, 'B+', 'Hindu', 'kp@gmail.com', '7th', 5, '1233455667', 'Hiiiiii I m Kp', 'student1.jpg'),
('Jay', 'Savlani', 'Male', '2000-06-20', 1, 'O+', 'Hindu', 'jaysavlani2@gmail.com', '6th', 1, '8320793369', 'HIIIIII i am Jay', 'IMG_20170127_110527_758.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `add_subject`
--

CREATE TABLE `add_subject` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `class` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_subject`
--

INSERT INTO `add_subject` (`id`, `subject_name`, `class`) VALUES
(2, 'OT', '12th (Commerce)'),
(3, 'IWT', '9th'),
(4, 'CN', '1st'),
(6, 'CA', '7th'),
(7, 'DBMS', '5th');

-- --------------------------------------------------------

--
-- Table structure for table `add_teacher`
--

CREATE TABLE `add_teacher` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `join_date` date NOT NULL,
  `bgroup` varchar(10) NOT NULL,
  `religion` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `class` varchar(25) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `bio` varchar(200) NOT NULL,
  `teacher_photo` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_teacher`
--

INSERT INTO `add_teacher` (`id`, `fname`, `lname`, `gender`, `join_date`, `bgroup`, `religion`, `email`, `class`, `address`, `phone`, `bio`, `teacher_photo`) VALUES
(1, 'Rucha', 'Khakkhar', 'Female', '2001-02-27', 'B+', 'Hindu', 'ruchakhakhkhar@gmail.com', '6th', 'Junagadh', '9825499164', 'Hiii  I M Rucha ....', 'user2.jpg'),
(3, 'Riddhi', 'Darji', 'Female', '2000-07-27', 'O-', 'Hindu', 'ridz_darji@gmail.com', '12th (Science)', 'Ahmedabad', '6355388248', 'Hiii I m Riddhi', 'student1.jpg'),
(4, 'Aman', 'Mamdani', 'Male', '2001-03-27', 'B+', 'Islam', 'amanmamdani@gmail.com', '6th', 'Diu', '9081426854', 'HIII I M AMAN', 'student1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_account`
--
ALTER TABLE `add_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_attendance`
--
ALTER TABLE `add_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_book`
--
ALTER TABLE `add_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_classroutine`
--
ALTER TABLE `add_classroutine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_subject`
--
ALTER TABLE `add_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_teacher`
--
ALTER TABLE `add_teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_account`
--
ALTER TABLE `add_account`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `add_attendance`
--
ALTER TABLE `add_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `add_book`
--
ALTER TABLE `add_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `add_classroutine`
--
ALTER TABLE `add_classroutine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `add_subject`
--
ALTER TABLE `add_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `add_teacher`
--
ALTER TABLE `add_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
