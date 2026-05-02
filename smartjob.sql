-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2026 at 07:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartjob`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `interview_date` varchar(255) NOT NULL,
  `interview_time` varchar(255) NOT NULL,
  `joining_date` varchar(255) NOT NULL,
  `applied_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `student_id`, `job_id`, `company_id`, `status`, `interview_date`, `interview_time`, `joining_date`, `applied_at`) VALUES
(289, 65, 89, 34, 'Accepted', '2026-04-29', '05:11', '2026-04-29', '2026-04-28 09:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `otp` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `email`, `phone`, `password`, `city`, `status`, `otp`) VALUES
(34, 'Tata Motors', 'reetasneha006@gmail.com', 2147483647, '$2y$10$m.nLCHSrDb/NxzRYu9kDLOJ6jIOO.9LvyolpmUUXkSCVK6DkZpcvC', 'Bihar', '1', ''),
(35, 'Maruti Suzuki', 'nm3456008@gmail.com', 2147483647, '$2y$10$xUtRFK95Gt.ZZ2lsw1yig.eQQ2WeRas9dbyEuhXVNr9iTnaDHu7xi', 'Varanasi', '0', ''),
(36, 'Hero  moter', 'nand86363@gmail.com', 2147483647, '$2y$10$dahIGXsHZswMxtoIJhl.QemUg7IhlOStrT3iHDHJfWGBBzvTsq3Bu', 'Lucknow', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(150) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `trade` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL,
  `deles` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `company_id`, `title`, `trade`, `location`, `type`, `salary`, `deles`, `created_at`, `expiry_date`) VALUES
(79, 34, 'Wireman', 'electrician', 'Kolkat', NULL, '1220', 'this job for electrician', '2026-04-28 08:35:14', '2026-04-30'),
(80, 34, 'Electrical Supervisor', 'electrician', 'varanasi', NULL, '12200', 'hello', '2026-04-28 08:36:49', '2026-04-29'),
(81, 34, 'Mechanical Technician', 'fitter', 'Delhi', NULL, '7000', 'hello student', '2026-04-28 08:38:19', '2026-04-30'),
(82, 34, 'Machine Operator', 'fitter', 'Delhi', NULL, '8000', 'hello', '2026-04-28 08:39:13', '2026-04-30'),
(85, 34, 'Computer Operator', 'copa  ', 'Kanpur', NULL, '17000', 'hello', '2026-04-28 08:43:03', '2026-04-30'),
(86, 34, 'Data Entry Opertor', 'copa', 'Delhi', NULL, '80000', 'hello', '2026-04-28 08:44:27', '2026-04-30'),
(89, 34, 'Tig Welder', 'welder', 'Mumbai', NULL, '15000', 'welder job', '2026-04-28 09:05:56', '2026-04-30'),
(90, 34, 'Steel Worker', 'welder', 'Delhi', NULL, '15000', 'steel worker job', '2026-04-28 09:07:07', '2026-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Unread',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `student_id`, `job_id`, `message`, `status`, `created_at`) VALUES
(40, 67, 79, 'New Job Opportunity: Wireman at Tata Motors', 'Unread', '2026-04-28 08:35:14'),
(41, 67, 80, 'New Job Opportunity: Electrical Supervisor at Tata Motors', 'Unread', '2026-04-28 08:36:49'),
(42, 65, 84, 'New Job Opportunity: Steel Welder at Tata Motors', 'Unread', '2026-04-28 08:41:49'),
(43, 68, 84, 'New Job Opportunity: Steel Welder at Tata Motors', 'Unread', '2026-04-28 08:41:53'),
(44, 64, 85, 'New Job Opportunity: Computer Operator at Tata Motors', 'Unread', '2026-04-28 08:43:03'),
(45, 69, 85, 'New Job Opportunity: Computer Operator at Tata Motors', 'Unread', '2026-04-28 08:43:07'),
(46, 64, 86, 'New Job Opportunity: Data Entry Opertor at Tata Motors', 'Unread', '2026-04-28 08:44:27'),
(47, 69, 86, 'New Job Opportunity: Data Entry Opertor at Tata Motors', 'Unread', '2026-04-28 08:44:30'),
(48, 65, 89, 'New Job Opportunity: Tig Welder at Tata Motors', 'Unread', '2026-04-28 09:05:56'),
(49, 68, 89, 'New Job Opportunity: Tig Welder at Tata Motors', 'Unread', '2026-04-28 09:06:00'),
(50, 65, 90, 'New Job Opportunity: Steel Worker at Tata Motors', 'Unread', '2026-04-28 09:07:07'),
(51, 68, 90, 'New Job Opportunity: Steel Worker at Tata Motors', 'Unread', '2026-04-28 09:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` varchar(200) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `city` varchar(250) NOT NULL,
  `trade` varchar(50) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `otp` varchar(100) NOT NULL,
  `otp_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `gender`, `dob`, `city`, `trade`, `resume`, `password`, `otp`, `otp_expiry`) VALUES
(64, 'sneha  kumari', 'nm3456008@gmail.com', '885839231', 'Female', '2026-04-18', 'Varanasi', 'copa', NULL, '$2y$10$sgLpAWIZo6xnJsZD2/nBguPyyXM5gekQn3RGtPzOQvWHsEbUGC/Bm', '', NULL),
(65, 'sneha', 'reetasneha006@gmail.com', '8858945674', 'Female', '2026-04-16', 'Varanasi', 'Welder', 'RESUME_1777363614_1724.pdf', '$2y$10$N9YEvEuR6LnoCf/cUM3wEeFJjfiI/79RhEsUv47tgWCRFbDPs/SMC', '', NULL),
(67, 'Antima ', 'antima25062004@gmail.com', '7418529874', 'Female', '2026-04-16', 'Mumbai', 'Electrician', 'RESUME_1777364435_5249.pdf', '$2y$10$j0K/rsJcFwd53hTCPbAev.j7U1gDZKeTvTHTy7IskSAaVXSKxFh6.', '', NULL),
(68, 'Abhishek ', 'abhishekpajapti887404@gmail.com', '4578961256', 'Male', '2026-04-15', 'Jaipur', 'Welder', 'RESUME_1777364524_4515.pdf', '$2y$10$5D6tlDdTz0eQ9qnjO4GCdeMZMJoER7QaKvIQaEdAgXvyUtKs4UE6m', '', NULL),
(69, 'Neha Maurya', 'neha731784@gmail.com', '7485321456', 'Female', '2026-04-24', 'Delhi', 'COPA', 'RESUME_1777364646_4870.pdf', '$2y$10$CBRq3aU5IPM0rmRfE7EYquKMVsp5NZsdtjhenKf0JQ3fMP63yobWS', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applications_ibfk_3` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
