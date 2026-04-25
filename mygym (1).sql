-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2025 at 06:13 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mygym`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `address` text DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`, `phone`, `email`, `address`, `dob`, `created_at`) VALUES
(104, 'vivek panchasara', 'admin@23', '9427176643', 'admin@gmail.com ', 'sita nager society, surat', '2007-09-29', '2023-09-18 00:21:33');

-- --------------------------------------------------------

--
-- Table structure for table `membership_tab`
--

CREATE TABLE `membership_tab` (
  `pay_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Contact` varchar(10) NOT NULL,
  `trainer` varchar(30) NOT NULL,
  `plan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membership_tab`
--

INSERT INTO `membership_tab` (`pay_id`, `m_id`, `name`, `Email`, `Contact`, `trainer`, `plan`) VALUES
(3, 1, 'hemali', 'hinu@12gmail.com', '	 21474836', 'vivek varma', 'Daily Pass'),
(5, 40, 'divyansh', 'divu@gmail.com', '5678765434', 'sandip Sunsaev', 'Monthly Plan'),
(6, 42, 'Neha ', 'neha@gmail.com', '4567890987', 'Kavya yadav', 'Monthly Plan'),
(7, 43, 'Namrata ', 'namrata@gmail.com', '1234554321', 'Adity shing', 'Monthly Plan'),
(9, 45, 'Jeel', 'jeel@gmail.com', '7654567890', 'Kavya yadav', 'Monthly Plan'),
(10, 46, 'happpy', 'happy@gmail.com', '5678439056', 'Adity shing', 'Daily Pass'),
(13, 44, 'kiyansh', 'kiyansh@gmail.com', '3456787654', 'Kavya yadav', 'Yearly Plan'),
(14, 47, 'Divya', 'divya@gmail.com', '6547890370', 'Neha Patel', 'Daily Pass'),
(16, 48, 'yash', 'yash@gmail.com', '6567898909', 'vivek varma', 'Daily Pass'),
(19, 51, 'Drashti', 'D@gmail.com', '1234567890', 'Kavya yadav', 'Yearly Plan'),
(20, 53, 'ram', 'ram@gamil.com', '1234554321', 'sandip Sunsaev', 'Monthly Plan'),
(21, 56, 'tulsi', 'tulsi@Gmail.com', '1234567890', 'vivek varma', 'Special Offer'),
(22, 55, 'sita', 'sita@gmail.com', '1234567890', 'sandip Sunsaev', 'Daily Pass'),
(30, 101, 'nayan', 'n@gmail.com', '4567878909', 'sandip Sunsaev', 'Daily Pass'),
(31, 59, 'radhe', 'radhe@gmail.com', '5678765434', 'Neha Patel', 'Yearly Plan');

-- --------------------------------------------------------

--
-- Table structure for table `payment_tab`
--

CREATE TABLE `payment_tab` (
  `pay_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `plan` varchar(39) NOT NULL,
  `amount` int(15) NOT NULL,
  `payment_mode` varchar(30) NOT NULL,
  `pay_date` date NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_tab`
--

INSERT INTO `payment_tab` (`pay_id`, `name`, `plan`, `amount`, `payment_mode`, `pay_date`, `status`) VALUES
(9, 'Jeel', 'Monthly Plan', 1500, 'Offline', '2025-12-04', '0'),
(10, 'happpy', 'Daily Pass', 100, 'Offline', '2025-12-09', '0'),
(11, 'divya', 'Special Offer', 750, 'Online', '2024-08-12', 'Paid'),
(13, 'kiyansh', 'Yearly Plan', 12000, 'Offline', '2025-07-06', 'Paid'),
(14, 'Divya', 'Daily Pass', 100, 'Offline', '2025-06-04', 'Paid'),
(16, 'yash', 'Daily Pass', 100, 'Online', '2025-09-24', 'Paid'),
(19, 'Drashti', 'Yearly Plan', 12000, 'Offline', '2025-12-09', 'Paid'),
(20, 'ram', 'Monthly Plan', 1500, 'Online', '2025-09-20', 'Paid'),
(21, 'tulsi', 'Special Offer', 750, 'Offline', '2025-09-20', 'Paid'),
(22, 'sita', 'Daily Pass', 100, 'Online', '2056-04-04', 'Paid'),
(30, 'nayan', 'Daily Pass', 100, 'Online', '2025-03-04', 'Paid'),
(31, 'radhe', 'Yearly Plan', 12000, 'Offline', '2025-10-05', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `ragister_tab`
--

CREATE TABLE `ragister_tab` (
  `U_id` int(8) NOT NULL,
  `u_name` varchar(40) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Contact_no` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `confirm_pass` varchar(30) NOT NULL,
  `membership` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ragister_tab`
--

INSERT INTO `ragister_tab` (`U_id`, `u_name`, `DOB`, `Gender`, `Contact_no`, `Email`, `password`, `confirm_pass`, `membership`) VALUES
(1, 'hemali', '2005-02-22', 'Female', '2147483647', 'hinu@12gmail.com', 'abc@123', 'abc@123', 'standard'),
(41, 'divyansh', '2007-04-03', 'male', '5678765434', 'divu@gmail.com', 'divu@123', 'divu@123', 'premium'),
(45, 'Jeel', '2001-02-20', 'male', '7654567890', 'jeel@gmail.com', 'jeel@90', 'jeel@90', 'standard'),
(46, 'happy', '2001-12-06', 'female', '5678439056', 'happy@gmail.com', 'happy123', 'happy123', 'standard'),
(54, 'sita', '2003-02-20', 'female', '1234567890', 'sita@gmail.com', '12345', '12345', 'basic'),
(55, 'shiv', '2000-05-10', 'male', '1234567891', 'shiv@gmail.com', 'shiv@12', 'shiv@12', 'basic'),
(56, 'tulsi', '2006-03-08', 'female', '1234567890', 'tulsi@Gmail.com', '123456', '123456', 'premium'),
(57, 'maahi', '2025-09-14', 'male', '3445', 'sdaef@gmail.com', '123', '123', 'standard'),
(59, 'radhe', '2007-06-05', 'female', '3456789876', 'radhe@gmail.com', 'radhe123', 'radhe123', 'standard');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `f_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` varchar(30) NOT NULL,
  `review_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`f_id`, `name`, `phone`, `rating`, `email`, `message`, `review_date`) VALUES
(1, 'Drashti', '1234567890', '5', '', 'your gym is very  good', '2025-09-17'),
(2, 'vishva', '8780273141', '5', '', 'very good services privide', '2025-09-17'),
(3, 'maahi', '7689876545', '4', '', 'your gym is so good', '2025-09-17'),
(4, 'kiyan shah', '0345676567', '4', 'kiyan@gmail.com', 'your gym is make a life is ver', '2025-09-18'),
(5, 'vishva', '0878027314', '5', 'vishva@gmail.com', 'the gym world is very good', '2025-09-19'),
(6, 'tulsi', '1234567890', '5', 'tulsi@Gmail.com', 'your gym  has very good servic', '2025-09-20'),
(7, 'harmisha', '6687654343', '5', 'h@gmail.com', 'dfshdjjhd', '2025-09-25'),
(8, 'numrata', '4567898780', '3', 'namrata@gmail.com', 'your gym is provide a any serv', '2025-10-02');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_tab`
--

CREATE TABLE `schedule_tab` (
  `schedule_id` int(11) NOT NULL,
  `day_name` varchar(20) NOT NULL,
  `time_slot` varchar(50) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `trainer_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule_tab`
--

INSERT INTO `schedule_tab` (`schedule_id`, `day_name`, `time_slot`, `activity`, `trainer_name`) VALUES
(1, 'Monday', '6:00AM - 7:00AM', 'Yoga & Stretching', 'Vivek Varma'),
(2, 'Monday', '7:30AM - 8:30AM', 'Cardio Blast', 'Sandip Sunsaev'),
(3, 'Monday', '9:00AM - 10:00AM', 'Zumba Dance', 'Kavya Yadav'),
(4, 'Monday', '5:00PM - 6:00PM', 'Weight Training', 'kavya yadav'),
(5, 'Monday', '6:30PM - 7:30PM', 'Boxing Fitness', 'Viren Mehata'),
(6, 'Tuesday', '6:00AM - 7:00AM', 'Yoga & Stretching', 'Vivek Varma'),
(7, 'Tuesday', '7:30AM - 8:30AM', 'Weight Training', 'Neha Mishra'),
(8, 'Tuesday', '9:00AM - 10:00AM', 'Cardio Blast', 'Sandip Sunsaev'),
(9, 'Tuesday', '5:00PM - 6:00PM', 'Zumba Dance', 'Kavya Yadav'),
(10, 'Tuesday', '6:30PM - 7:30PM', 'Boxing Fitness', 'Viren Mehata'),
(11, 'Wednesday', '6:00AM - 7:00AM', 'Zumba Dance', 'Kavya Yadav'),
(12, 'Wednesday', '7:30AM - 8:30AM', 'Weight Training', 'Neha Mishra'),
(13, 'Wednesday', '9:00AM - 10:00AM', 'Yoga & Stretching', 'Vivek Varma'),
(14, 'Wednesday', '5:00PM - 6:00PM', 'Boxing Fitness', 'Viren Mehata'),
(15, 'Wednesday', '6:30PM - 7:30PM', 'Cardio Blast', 'Sandip Sunsaev'),
(16, 'Thursday', '6:00AM - 8:00AM', 'Zumba Dance', 'Kavya Yadav'),
(17, 'Thursday', '7:30AM - 8:30AM', 'Yoga & Stretching', 'Vivek Varma'),
(18, 'Thursday', '9:00AM - 10:00AM', 'Boxing Fitness', 'Viren Mehata'),
(19, 'Thursday', '5:00PM - 6:00PM', 'Weight Training', 'Neha Mishra'),
(20, 'Thursday', '6:30PM - 7:30PM', 'Cardio Blast', 'Sandip Sunsaev'),
(21, 'Friday', '6:00AM - 7:00AM', 'Yoga & Stretching', 'Vivek Varma'),
(22, 'Friday', '7:30AM - 8:30AM', 'Zumba Dance', 'Kavya Yadav'),
(23, 'Friday', '9:00AM - 10:00AM', 'Weight Training', 'Neha Mishra'),
(24, 'Friday', '5:00PM - 6:00PM', 'Boxing Fitness', 'Viren Mehata'),
(25, 'Friday', '6:30PM - 7:30PM', 'Cardio Blast', 'Sandip Sunsaev'),
(26, 'Saturday', '6:00AM - 7:00AM', 'Zumba Dance', 'Kavya Yadav'),
(27, 'Saturday', '7:30AM - 8:30AM', 'Yoga & Stretching', 'Vivek Varma'),
(28, 'Saturday', '9:00AM - 10:00AM', 'Weight Training', 'Neha Mishra'),
(29, 'Saturday', '5:00PM - 6:00PM', 'Cardio Blast', 'Sandip Sunsaev'),
(30, 'Saturday', '6:30PM - 7:30PM', 'Boxing Fitness', 'Viren Mehata'),
(31, 'Sunday', '6:00AM - 7:00AM', 'Yoga & Stretching', 'Vivek Varma'),
(32, 'Sunday', '7:30AM - 8:30AM', 'Zumba Dance', 'Kavya Yadav'),
(33, 'Sunday', '9:00AM - 10:00AM', 'Cardio Blast', 'Sandip Sunsaev'),
(34, 'Sunday', '5:00PM - 6:00PM', 'Weight Training', 'Neha Mishra'),
(35, 'Sunday', '6:30PM - 7:30PM', 'Boxing Fitness', 'Viren Mehata');

-- --------------------------------------------------------

--
-- Table structure for table `service_tab`
--

CREATE TABLE `service_tab` (
  `s_id` int(8) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(10) NOT NULL,
  `service` varchar(30) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_tab`
--

INSERT INTO `service_tab` (`s_id`, `fullname`, `email`, `phone`, `service`, `startdate`, `enddate`) VALUES
(1, 'vivek', 'vivek@1gmail.com', 2147483647, 'gym strategies', '2025-01-05', '2025-06-05'),
(2, 'divyansh', 'divu@gmail.com', 2147483647, 'Yoga & Wellness Classes', '2025-01-10', '2025-02-10'),
(3, 'hemali', 'hinu@gmail.com', 2147483647, 'Yoga & Wellness Classes', '2024-07-18', '2024-09-11'),
(4, 'sarita', 'sarita33@gmail.com', 2147483647, 'Nutrition & Dite Plans', '2025-04-02', '2025-04-30'),
(26, 'charmi purohit', 'charmi@yahoo.c', 2147483647, 'QUALITY EQUIPMENT', '2025-09-18', '2025-10-27'),
(27, 'gopi  gediya', 'charmi@yahoo.c', 2147483647, 'HEALTH CARING', '2025-09-19', '2025-09-28'),
(53, 'radhe', 'radhe@gmail.com', 1234566543, 'NUTRITION & DIET PLANS', '2025-10-01', '2025-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `full_name` varchar(40) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `specialization` varchar(40) NOT NULL,
  `experience_years` int(20) NOT NULL,
  `join_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`full_name`, `age`, `gender`, `email`, `specialization`, `experience_years`, `join_date`) VALUES
('Aditya solanki', 25, 'Male', 'aditya@gmail.com', 'yoga expert', 2, '2025-04-05'),
('kavya yadav', 21, 'Female', 'kavya@gmail.com', 'Expert In Dite & Nutrition Guidance', 3, '2023-12-06'),
('Vivek  varma', 22, 'Male', 'vivek@gmail.com', 'Certified Fitness Trainer for Yoga & Str', 3, '2023-03-05'),
('sandip Sunsaev', 24, 'Male', 'sandip@gmail.com', 'Certified Fitness Trainer & Strength Coa', 2, '2021-06-15'),
('Neha Patel', 24, 'Female', 'neha@gmail.com', 'Expert in strength training & fat loss', 2, '2024-07-25'),
('krish Kapoor', 25, 'Male', 'krish@gmail.com', 'Fitness Trainer & Coach', 4, '2020-03-22'),
('Abhinav vora', 21, 'Male', 'abhinav@gmail.com', 'building strength,stamina,and confidence', 2, '2019-05-24'),
('shivangi solanki', 23, 'Female', 'shivangi@gmail.com', 'Certified Zumba & Dance Fitness', 4, '2024-06-18'),
('kiya yadav', 22, 'Female', 'kiya@gmail.com', 'Yoga & Stretching', 3, '2024-05-23'),
('tulsi lamba', 20, 'Female', 'tulsi@Gmail.com', 'Strong knowledge of anatomy', 3, '2025-08-20'),
('gopi  gediya', 21, 'Female', 'g@gmail.com', 'yoga & weight_loss expert', 3, '2025-09-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_tab`
--
ALTER TABLE `membership_tab`
  ADD PRIMARY KEY (`pay_id`),
  ADD UNIQUE KEY `2` (`m_id`);

--
-- Indexes for table `ragister_tab`
--
ALTER TABLE `ragister_tab`
  ADD PRIMARY KEY (`U_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `schedule_tab`
--
ALTER TABLE `schedule_tab`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `service_tab`
--
ALTER TABLE `service_tab`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `membership_tab`
--
ALTER TABLE `membership_tab`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `ragister_tab`
--
ALTER TABLE `ragister_tab`
  MODIFY `U_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `schedule_tab`
--
ALTER TABLE `schedule_tab`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `service_tab`
--
ALTER TABLE `service_tab`
  MODIFY `s_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
