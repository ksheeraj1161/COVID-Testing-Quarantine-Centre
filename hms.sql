-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 05:04 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'admin123', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'General Physician', 1, 6, 500, '2019-06-29', '9:15 AM', '2020-11-03 06:25:37', 1, 1, '2020-11-05 03:56:08'),
(4, 'Ayurveda', 5, 5, 2050, '2019-11-08', '1:00 PM', '2020-11-03 05:24:32', 1, 1, '2020-11-04 18:34:45'),
(5, 'pulmonary specialist', 8, 7, 600, '2019-11-30', '5:30 PM', '2020-11-03 06:28:25', 1, 0, '2020-11-04 18:44:14'),
(6, 'Ear-Nose-Throat (Ent) Specialist', 3, 2, 1200, '2020-11-05', '7:00 PM', '2020-11-04 17:24:19', 1, 1, '2020-11-04 18:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'General Physician', 'Madhav sarvanan', 'Chennai', '500', 8285703354, 'madhav@gmail.com', 'madhav123', '2020-11-03 06:25:37', '2020-11-05 03:54:11'),
(2, 'General Physician', 'Sarita krishnan', 'Orcot', '500', 2147483647, 'sarita@gmail.com', 'sarita123', '2020-11-03 06:25:37', '2020-11-04 18:31:57'),
(3, 'Ear-Nose-Throat (Ent) Specialist', 'Nitesh Kumar', 'Chennai', '1200', 8523699999, 'nitesh@gmail.com', 'nitesh123', '2020-11-03 06:25:37', '2020-11-04 18:32:01'),
(4, 'Homeopath', 'Vijay Verma', 'Trichy', '700', 25668888, 'vijay@gmail.com', 'vijay123', '2020-11-03 06:25:37', '2020-11-04 18:32:05'),
(5, 'Ayurveda', 'Sanjeev', 'Chennai', '2050', 442166644646, 'sanjeev@gmail.com', 'sanjeev123', '2020-11-03 06:25:37', '2020-11-04 18:32:09'),
(6, 'sr.pulmonary specialist', 'Amrita', 'Chennai', '800', 45497964, 'amrita@test.com', 'amrita123', '2020-11-03 06:25:37', '2020-11-04 18:44:37'),
(7, 'sr.pulmonary specialist', 'prem', 'Eroad', '800', 852888888, 'prem@demo.com', 'prem123', '2020-11-03 06:25:37', '2020-11-04 18:44:45'),
(8, 'pulmonary specialist', 'Mathews', 'Chennai', '600', 1234567890, 'mathews@test.com', 'mathews123', '2020-11-03 06:25:37', '2020-11-04 18:44:20'),
(9, 'pulmonary specialist', 'Anuj kumar', 'Chennai', '600', 1234567890, 'anujk@test.com', 'anuj123', '2020-11-03 06:25:37', '2020-11-04 18:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-07 15:35:28', '07-10-2020 09:07:15 PM', 1),
(21, 1, 'madhav@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-04 18:50:24', '05-11-2020 12:21:24 AM', 1),
(22, 1, 'madhav@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-04 18:59:01', '05-11-2020 12:29:55 AM', 1),
(23, NULL, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-05 03:01:46', NULL, 0),
(24, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-05 03:01:54', '05-11-2020 08:34:22 AM', 1),
(25, 1, 'madhav@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-05 03:04:50', '05-11-2020 08:36:01 AM', 1),
(26, 1, 'madhav@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-05 03:40:27', '05-11-2020 09:10:43 AM', 1),
(27, 1, 'madhav@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-05 03:53:08', '05-11-2020 09:23:23 AM', 1),
(28, 1, 'madhav@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-05 03:54:21', '05-11-2020 09:26:46 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(2, 'General Physician', '2020-11-01 06:37:25', '2020-11-04 18:00:56'),
(3, 'Ear-Nose-Throat (Ent) Specialist', '2020-11-01 06:37:25', '2020-11-04 18:00:51'),
(4, 'Homeopath', '2020-11-01 06:37:25', '2020-11-04 18:00:45'),
(5, 'Ayurveda', '2020-11-01 06:37:25', '2020-11-04 18:00:41'),
(6, 'pulmonary specialist', '2020-11-01 06:37:25', '2020-11-04 18:00:37'),
(7, 'sr.pulmonary specialist', '2020-11-01 06:37:25', '2020-11-01 06:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'satya', 'satya@gmail.com', 2523523522523523, 'good care of patients', '2020-10-31 02:57:35', 'Test Admin Remark', '2020-10-31 03:59:12', 1),
(2, 'keerthy', 'keerthy@yahoo.com', 1111111111111111, 'More waiting time', '2020-10-31 02:58:48', NULL, '2020-11-04 17:53:49', NULL),
(3, 'srinivas', 'srinivas@gmail.com', 3264826346, 'Hygiene', '2020-10-31 02:59:12', 'vfdsfgfd', '2020-10-31 03:59:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2020-10-31 02:57:35'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2020-10-31 02:57:35'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2020-10-31 02:57:35'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2020-10-31 02:57:35'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2020-10-31 02:57:35'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2020-10-31 02:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Manisha Jha', 4558968789, 'manisha@gmail.com', 'Female', '\"\"J&K Block J-127, Laxmi Nagar Chennai', 26, 'She is diabetic patient', '2020-10-14 21:38:06', '2020-11-05 04:00:43'),
(2, 5, 'Raghu Yadav', 9797977979, 'raghu@gmail.com', 'Male', 'ABC Apartment Mayur Vihar Ph-1 Hyderabad', 39, 'No', '2020-10-20 21:39:26', '2020-11-05 04:01:03'),
(3, 7, 'Mansi', 9878978798, 'jk@gmail.com', 'Female', '582-Balaji colony, Tirupati', 46, 'No', '2020-10-24 21:47:02', '2020-11-05 04:01:14'),
(4, 7, 'venkat prabhu', 9888988989, 'venkat@gmail.com', 'Male', 'L-56,Ashok Nagar Chennai-110096', 45, 'He is long suffered by asthma', '2020-10-30 21:48:06', '2020-11-05 04:01:22'),
(5, 9, 'John', 1234567890, 'john@test.com', 'male', 'Ney york', 25, 'He is suffered from nasal infection', '2020-11-03 21:52:39', '2020-11-05 04:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(31, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-30 16:13:48', '30-10-2020 09:44:26 PM', 1),
(32, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-04 17:21:03', '04-11-2020 10:51:46 PM', 1),
(33, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-04 17:22:08', '05-11-2020 12:09:26 AM', 1),
(34, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-04 18:39:53', '05-11-2020 12:19:54 AM', 1),
(35, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-04 18:54:35', '05-11-2020 12:28:30 AM', 1),
(36, NULL, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-05 02:45:28', NULL, 0),
(37, NULL, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-05 02:45:41', NULL, 0),
(38, NULL, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-05 02:49:05', NULL, 0),
(39, NULL, 'venkat123', 0x3a3a3100000000000000000000000000, '2020-11-05 02:49:16', NULL, 0),
(40, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-05 02:49:23', '05-11-2020 08:29:36 AM', 1),
(41, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-05 03:00:17', '05-11-2020 08:30:44 AM', 1),
(42, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-05 03:06:38', '05-11-2020 09:10:16 AM', 1),
(43, NULL, 'zaina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-05 03:48:43', NULL, 0),
(44, NULL, 'zaina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-05 03:48:57', NULL, 0),
(45, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-05 03:49:26', '05-11-2020 09:22:53 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'venkat prabhu', 'Tamil Nadu', 'Chennai', 'male', 'venkat@gmail.com', 'venkat123', '2020-10-30 05:34:38', '2020-11-04 17:35:55'),
(3, 'Amit', 'New Delhi', 'New delhi', 'male', 'amit@gmail.com', 'Amit123', '2020-10-30 06:36:53', '2020-11-04 17:34:35'),
(4, 'Anu', 'kerala', 'Trivendram', 'Female', 'anu@gmail.com', 'anu123', '2020-10-30 06:37:42', '2020-11-04 17:34:53'),
(5, 'Naga deepak', 'Andhra Pradesh', 'Vijayawada', 'male', 'deepak@gmail.com', 'deepak123', '2020-10-30 06:39:12', '2020-11-04 17:35:23'),
(6, 'Pramila', 'Tamil Nadu', 'Trichy', 'Female', 'pramila@gmail.com', 'pramila123', '2020-10-30 06:42:50', '2020-10-30 06:48:53'),
(7, 'John', 'USA', 'Newyork', 'male', 'john@test.com', 'john123', '2020-10-30 06:45:37', '2020-10-30 06:48:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
