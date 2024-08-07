-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2024 at 06:41 AM
-- Server version: 9.0.0
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unilink_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `CourseID` varchar(40) NOT NULL,
  `CourseName` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Units` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`CourseID`, `CourseName`, `Description`, `Units`) VALUES
('BSCE', 'CS101', 'Mathematics', 3),
('BSCS', 'Bachelor of Science in Computer Science', 'Major in Game Development', 12),
('BSIE', 'Bachelor of Science in Industrial Engineering', 'Industry wow', 12),
('BSIT', 'Bachelor of Science in Information Technology', 'Coding', 13);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enrollment`
--

CREATE TABLE `tbl_enrollment` (
  `EnrollmentID` int NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `EnrollmentDate` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_enrollment`
--

INSERT INTO `tbl_enrollment` (`EnrollmentID`, `StudentID`, `CourseID`, `EnrollmentDate`) VALUES
(1, '2022-11111', 'BSCS', '2024-08-04'),
(2, '2000-10000', 'BSCS', '2024-08-04'),
(3, '2000-10000', 'BSCS', '2024-08-01'),
(4, '2022-10958', 'BSIT', '2024-08-06'),
(5, '2022-10958', 'BSIT', '2024-08-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grade`
--

CREATE TABLE `tbl_grade` (
  `GradeID` int NOT NULL,
  `EnrollmentID` int NOT NULL,
  `Grade` float NOT NULL,
  `DateRecorded` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_grade`
--

INSERT INTO `tbl_grade` (`GradeID`, `EnrollmentID`, `Grade`, `DateRecorded`) VALUES
(1, 1, 1, '2024-08-04'),
(2, 1, 2, '2024-08-04'),
(3, 3, 2, '2024-08-04'),
(4, 2, 2, '2024-08-04'),
(5, 2, 2, '2024-08-04'),
(6, 2, 3, '2024-08-04'),
(7, 3, 2, '2024-08-03'),
(8, 4, 1000000, '2024-08-06'),
(9, 4, 5, '2024-08-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `StudentID` varchar(40) NOT NULL,
  `LastName` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FirstName` varchar(40) NOT NULL,
  `Gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DateOfBirth` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Phone` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`StudentID`, `LastName`, `FirstName`, `Gender`, `DateOfBirth`, `Email`, `Phone`) VALUES
('2000-10000', 'Benitez', 'Maxinne Estella', 'Female', '2004-03-28', 'max@test.com', '09453265437'),
('2022-10371', 'Ducusin', 'Godwin', 'Male', '2002-10-03', 'godwin@gmail.com', '+63 092092313'),
('2022-10958', 'Castro', 'Aljen Fernando', 'Male', '2004-08-27', 'castroaljen886@gmail.com', '+63 09338278871'),
('2022-11111', 'Goguanco', 'Arianne Nicola', 'Female', '2003-11-08', 'ari@test.com', '09876543535');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `UserID` int NOT NULL,
  `Username` varchar(40) NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LastLogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`UserID`, `Username`, `Password`, `LastLogin`) VALUES
(5, 'test', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', '2024-08-06 01:31:25'),
(6, 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '2024-08-06 02:07:57'),
(7, 'magic', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', '2024-08-06 02:40:50'),
(8, 'test1', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', '2024-08-06 02:42:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `tbl_enrollment`
--
ALTER TABLE `tbl_enrollment`
  ADD PRIMARY KEY (`EnrollmentID`);

--
-- Indexes for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
  ADD PRIMARY KEY (`GradeID`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_enrollment`
--
ALTER TABLE `tbl_enrollment`
  MODIFY `EnrollmentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
  MODIFY `GradeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `UserID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
