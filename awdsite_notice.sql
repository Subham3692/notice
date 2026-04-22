-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2026 at 08:06 AM
-- Server version: 10.11.14-MariaDB
-- PHP Version: 8.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `awdsite_notice`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `link_url` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `image_path`, `link_url`, `created_at`) VALUES
(3, 'Our Class', 'uploads/banners/1775632111_1000084318.jpg', 'https://mangaldaicollege.org/', '2026-04-08 07:06:20'),
(4, 'My Collage', 'uploads/banners/1775632011_1000084316.jpg', 'https://student.mangaldaicollege.org/', '2026-04-08 07:06:51'),
(5, 'Our College', 'uploads/banners/1775632094_1000084315.jpg', 'https://mangaldaicollege.org/', '2026-04-08 07:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `class_notices`
--

CREATE TABLE `class_notices` (
  `id` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `notice_text` text NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `notice_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_notices`
--

INSERT INTO `class_notices` (`id`, `semester`, `department`, `title`, `notice_text`, `image_path`, `notice_date`, `created_at`, `link_url`) VALUES
(1, 3, 'BCA demo', 'demo class', 'demo classdemo class', 'uploads/class_notices/1775207317_bnar1.png', '2026-04-03', '2026-04-03 09:08:37', ''),
(2, 6, 'BCA demo', 'FYUGP 2nd Semester (Batch 2025) Paper Details Released', 'Mangaldai College (Autonomous) has released the paper details for FYUGP 2nd Semester (Batch 2025).\r\n\r\nCourses included:\r\n\r\nBA\r\nBSc\r\nBCA\r\nMDT\r\nFPT\r\nPG (Assamese)\r\n\r\nStudents are advised to check the detailed paper information from the college notice board or official source.', NULL, '2026-04-08', '2026-04-08 07:25:10', 'https://mangaldaicollege.org/pdf/paper_code.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `college_notices`
--

CREATE TABLE `college_notices` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `notice_text` text NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `notice_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college_notices`
--

INSERT INTO `college_notices` (`id`, `title`, `notice_text`, `image_path`, `notice_date`, `created_at`, `link_url`) VALUES
(1, 'demo colage', 'demo collage notice', 'uploads/college_notices/1775207238_bnar1.png', '2026-04-03', '2026-04-03 09:07:18', ''),
(2, 'Gauhati University Exam Form Fill-Up Date Extended (Arrear CBCS 2026)', 'Gauhati University has extended the exam form fill-up deadline for CBCS arrear students (BA, BSc, BCom, BVoc) of Sem II, IV & VI (Batches 2020–2022) till 10 April 2026.\r\n\r\nStudents must apply through their colleges.\r\nForm links:\r\n\r\nBatch 2022: https://onlinegu.in\r\nBatch 2020 & 2021: https://guportal.in\r\n\r\n⚠️ This is the final extension.', NULL, '2026-04-08', '2026-04-08 07:14:39', 'https://mangaldaicollege.org/pdf/Extension%20of%20form%20fillup%20CBCS%202026.pdf'),
(3, 'Mangaldai College FYUGP Sessional Exam Programme 2026', '???? Post Text:\r\n\r\nMangaldai College (Autonomous) has announced the programme for FYUGP 2nd, 4th, and 6th Semester Sessional Examination 2026.\r\n\r\n???? Exam Dates: 20 April 2026 – 28 April 2026\r\n\r\nThe examination will be conducted for:\r\n\r\nMinor Course\r\nMDC\r\nVAC\r\nAEC\r\nSEC\r\n\r\nStudents are advised to check their college for detailed routine and appear accordingly.', NULL, '2026-04-08', '2026-04-08 07:19:11', 'https://mangaldaicollege.org/pdf/Sessional%20Routine%202026.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(20) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `code`, `description`, `created_at`) VALUES
(3, 'BCA demo', 'BCA', 'bca demo', '2026-04-03 09:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `department_notices`
--

CREATE TABLE `department_notices` (
  `id` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `notice_text` text NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `notice_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_notices`
--

INSERT INTO `department_notices` (`id`, `department`, `title`, `notice_text`, `image_path`, `notice_date`, `created_at`, `link_url`) VALUES
(1, 'BCA demo', 'demo department', 'demo department demo department demo department', 'uploads/department_notices/1775207362_bnar1.png', '2026-04-03', '2026-04-03 09:09:22', ''),
(2, 'BCA demo', 'FYUGP 2nd Semester Online Course Registration 2026 (Batch 2025)', 'Mangaldai College (Autonomous) has announced the online course registration for FYUGP 2nd Semester (Regular Batch 2025).\r\n\r\n???? Registration Schedule:\r\n\r\nStart: 23 March 2026 (07:00 PM)\r\nEnd: 5 April 2026 (07:00 PM)\r\n\r\n???? Registration Portal:\r\nwww.mangaldaicollege.samarth.edu.in\r\n\r\n⚠️ Students must complete registration within the deadline to enroll in 2nd semester courses. Avoid last-hour submission due to possible server issues.\r\n\r\n???? Paper list and codes will be available on the college website, WhatsApp channel, and Samarth portal.', NULL, '2026-04-08', '2026-04-08 07:27:39', 'https://mangaldaicollege.org/pdf/course%20registration%202nd%20sem%202025.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `event_text` text NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `event_date` date NOT NULL,
  `link_url` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `event_text`, `image_path`, `event_date`, `link_url`, `created_at`) VALUES
(1, 'demo even', 'demo even demo even', 'uploads/events/1775207390_bnar1.png', '2026-04-03', 'https://mangaldaicollege.org', '2026-04-03 09:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rollno` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `semester` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `rollno`, `phone`, `semester`, `department`, `created_at`, `password`) VALUES
(3, 'admin', '123', '9101620936', 6, 'BCA demo', '2026-04-08 06:56:03', '$2y$10$jl76Ycvait13B4cImS93hOpV1Ywsfv7gb7v2qCtc4lm5ibPSl0Z.u'),
(4, 'Dipu deka', '2001', '9854862904', 1, 'BCA demo', '2026-04-08 10:36:40', '$2y$10$PFcQFxqhBWzx19PGi0upUuh6Xq6kehr3DmmcEh4pFaY1ibUBWGLRi'),
(5, 'Demo', 'Demo1', '9101620934', 6, 'BCA demo', '2026-04-08 10:47:51', '$2y$10$tezvHavU1SoO4zs2wUBMf.7UeM29AAG.TgqgdLdDqGDTvTUG0rSUu'),
(6, 'Hrishikesh Kashyap', '2309', '9395269773', 6, 'BCA demo', '2026-04-08 10:53:13', '$2y$10$Nlaxi.O.XmR4mf6cfv59leTjPAbWfDR30rXTaPkKD1OLmHhui4qhO'),
(10, 'dip', '1010', '9764312580', 6, 'BCA demo', '2026-04-11 11:08:54', '$2y$10$nensn9ap1JzjiidmyKQ2R.8n22iwyNF8bEEJ4xgk6ANoSOg8haZAe');

-- --------------------------------------------------------

--
-- Table structure for table `student_complaints`
--

CREATE TABLE `student_complaints` (
  `id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_rollno` varchar(50) NOT NULL,
  `student_phone` varchar(20) NOT NULL,
  `student_email` varchar(100) DEFAULT NULL,
  `department` varchar(50) NOT NULL,
  `semester` int(11) NOT NULL,
  `complaint_subject` varchar(200) NOT NULL,
  `complaint_message` text NOT NULL,
  `status` enum('pending','in_progress','resolved','rejected') DEFAULT 'pending',
  `admin_response` text DEFAULT NULL,
  `complaint_date` date NOT NULL,
  `resolved_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_complaints`
--

INSERT INTO `student_complaints` (`id`, `student_name`, `student_rollno`, `student_phone`, `student_email`, `department`, `semester`, `complaint_subject`, `complaint_message`, `status`, `admin_response`, `complaint_date`, `resolved_date`, `created_at`) VALUES
(1, 'ddd', '1232', '091765675', 'bpritam839@gmail.com', 'BCA demo', 6, 'good', 'vvvvvvvvvvvvv good', 'resolved', NULL, '2026-04-03', '2026-04-03', '2026-04-03 11:31:34'),
(2, 'ddd', '1232', '091765675', 'bpritam839@gmail.com', 'BCA demo', 6, 'good', 'vvvvvvvvvvvvv good', 'pending', NULL, '2026-04-03', NULL, '2026-04-03 11:32:11'),
(3, 'sss', '1234', '9101620933', 'bpritam839@gmail.com', 'BCA demo', 3, 'good sss', 'ssss student_login good', 'pending', NULL, '2026-04-03', NULL, '2026-04-03 17:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `department`, `phone`, `email`, `created_at`, `password`) VALUES
(2, 'ttt', 'BCA demo', '091016209', 'ttt123@gmail.com', '2026-04-03 09:02:10', 't11');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notices`
--

CREATE TABLE `teacher_notices` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `semester` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `notice_text` text NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `notice_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_notices`
--

INSERT INTO `teacher_notices` (`id`, `teacher_id`, `department`, `semester`, `title`, `notice_text`, `image_path`, `notice_date`, `created_at`, `link_url`) VALUES
(1, 2, 'BCA demo', 3, 'demo techer', 'demo techer class 1', 'uploads/notices/1775207196_bnar1.png', '2026-04-03', '2026-04-03 09:06:36', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', '2026-04-03 05:50:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_notices`
--
ALTER TABLE `class_notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college_notices`
--
ALTER TABLE `college_notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `department_notices`
--
ALTER TABLE `department_notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rollno` (`rollno`);

--
-- Indexes for table `student_complaints`
--
ALTER TABLE `student_complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_complaint_status` (`status`),
  ADD KEY `idx_complaint_date` (`complaint_date`),
  ADD KEY `idx_student_rollno` (`student_rollno`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `teacher_notices`
--
ALTER TABLE `teacher_notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class_notices`
--
ALTER TABLE `class_notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `college_notices`
--
ALTER TABLE `college_notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `department_notices`
--
ALTER TABLE `department_notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student_complaints`
--
ALTER TABLE `student_complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_notices`
--
ALTER TABLE `teacher_notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1892;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher_notices`
--
ALTER TABLE `teacher_notices`
  ADD CONSTRAINT `teacher_notices_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
