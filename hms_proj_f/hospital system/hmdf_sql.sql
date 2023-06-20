-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 08, 2022 at 09:53 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmdf`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Bill_no` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pid` int(50) NOT NULL,
  `medical_charges` int(11) NOT NULL DEFAULT 0,
  `appointment_charges` int(11) NOT NULL DEFAULT 0,
  `Room_charges` int(11) NOT NULL DEFAULT 0,
  `Total` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Bill_no`, `email`, `pid`, `medical_charges`, `appointment_charges`, `Room_charges`, `Total`) VALUES
(1, 'ad@gmail.com', 18, 200, 200, 100, 500);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `did` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `doctorname` varchar(50) NOT NULL,
  `dept` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`did`, `email`, `doctorname`, `dept`) VALUES
(1, 'Varun@gmail.com', 'varun', 'Cardiologists'),
(2, 'sarita@gmail.com', 'Sarita Roy', 'Dermatologists'),
(3, 'aadithyaa@gmail.com', 'aadithyaa', 'Anesthesiologists'),
(4, 'anees@gmail', 'anees', 'Endocrinologists'),
(5, 'aneeqah@gmail.com', 'aneekha', 'corona'),
(6, 'doc@gmail.com', 'abcde', 'general'),
(7, 'vina@gmail.com', 'Vina shah', 'Dentist');

-- --------------------------------------------------------

--
-- Table structure for table `medhistory`
--

CREATE TABLE `medhistory` (
  `mid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `testname` varchar(100) NOT NULL,
  `medications` varchar(100) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `surgeries` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medhistory`
--

INSERT INTO `medhistory` (`mid`, `pid`, `testname`, `medications`, `disease`, `surgeries`) VALUES
(1, 2, 'blood', 'tab j', 'alergy', 'abc'),
(2, 5, 'malaria', 'tab4', 'malaria', 'bcd'),
(3, 7, 'tb', 'tab c', 'tb', 'no'),
(4, 8, 'blood', 'tab es', 'infection', 'no'),
(5, 9, 'urine', 'tab a', 'corona', 'sd'),
(22, 18, 'tb', 'tab', 'cough', 'yes'),
(23, 6, 'tb', 'tab', 'jaja', 'agrsd'),
(24, 10, 'typhoid', 'tabnise', 'viral', 'no'),
(25, 15, 'typhoid', 'grillinctus', 'fever', 'no'),
(27, 18, 'typhoid', 'tabnise', 'viral', 'no'),
(28, 20, 'no', 'alergytabs', 'alergic infection', 'no'),
(29, 22, 'no', 'grillinctus', 'cough', 'no'),
(30, 23, 'skin', 'sktab', 'skinproblem', 'yes'),
(31, 23, 'skin', 'sktab', 'skinproblem', 'yes'),
(32, 24, 'no', 'tab', 'cough', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `email` varchar(50) NOT NULL,
  `ID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Room_no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`email`, `ID`, `Name`, `Room_no`) VALUES
('doc@gmail.com', 1, 'sdd', 12),
('doc@gmail.com', 3, 'nera', 2),
('doc@gmail.com', 4, 'Maya ', 11);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `pid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `slot` varchar(50) NOT NULL,
  `disease` varchar(50) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `dept` varchar(50) NOT NULL,
  `number` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`pid`, `email`, `name`, `gender`, `slot`, `disease`, `time`, `date`, `dept`, `number`) VALUES
(18, 'ad@gmail.com', 'Diona', 'Female', 'evening', 'fever', '18:26:00', '2022-11-07', 'Endocrinologists', '98879878888'),
(19, 'doc@gmail.com', 'avni', 'Female', 'evening', 'fever', '16:39:00', '2022-11-08', 'Endocrinologists', '8768768676'),
(20, 'sara@gmail.com', 'sara', 'Female', 'evening', 'stomachache', '17:20:00', '2022-11-09', 'general', '9383923129'),
(21, 'divi@gmail.com', 'divi', 'Male', 'morning', 'dental decay', '10:30:00', '2022-11-10', 'Dentist', '10937889209'),
(22, 'divi@gmail.com', 'Avani ', 'Female', 'evening', 'cough', '18:30:00', '2022-11-09', 'general', '863845684'),
(23, 'mina@gmail.com', 'Dio', 'Male', 'morning', 'skinproblem', '08:35:00', '2022-11-09', 'Dermatologists', '2353252553'),
(24, 'rina@gmail.com', 'rina', 'Female', 'evening', 'cough', '17:48:00', '2022-11-09', 'general', '34545325263'),
(25, 'mina@gmail.com', 'minu', 'Female', 'evening', 'fatigue', '10:02:00', '2022-11-10', 'Endocrinologists', '765764574');

--
-- Triggers `patients`
--
DELIMITER $$
CREATE TRIGGER `PatientDelete` BEFORE DELETE ON `patients` FOR EACH ROW INSERT INTO trigr VALUES(null,OLD.pid,OLD.email,OLD.name,'PATIENT DELETED',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `PatientUpdate` AFTER UPDATE ON `patients` FOR EACH ROW INSERT INTO trigr VALUES(null,NEW.pid,NEW.email,NEW.name,'PATIENT UPDATED',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `patientinsertion` AFTER INSERT ON `patients` FOR EACH ROW INSERT INTO trigr VALUES(null,NEW.pid,NEW.email,NEW.name,'PATIENT INSERTED',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pat_assign_room`
--

CREATE TABLE `pat_assign_room` (
  `pid` int(10) NOT NULL,
  `room no.` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pat_assign_room`
--

INSERT INTO `pat_assign_room` (`pid`, `room no.`) VALUES
(18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `email` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `medications` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`email`, `pid`, `name`, `medications`) VALUES
('ad@gmail.com', 18, 'Diona', 'tab'),
('ad@gmail.com', 18, 'Diona', 'tabnise'),
('sara@gmail.com', 20, 'sara', 'alergytabs'),
('divi@gmail.com', 22, 'Avani ', 'grillinctus'),
('mina@gmail.com', 23, 'Dio', 'sktab');

INSERT INTO `prescription`(`email`,`pid`,`name`,`medications`)
SELECT patients.email,patients.pid, patients.name,medhistory.medications
FROM patients
INNER JOIN medhistory
ON patients.pid = medhistory.pid



-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `Roomno` int(10) NOT NULL,
  `Roomtype` varchar(20) NOT NULL,
  `Roomcost` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`Roomno`, `Roomtype`, `Roomcost`) VALUES
(1, 'general', 500),
(11, 'ICU', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `email`) VALUES
(1, 'ANEES', 'ARK@GMAIL.COM'),
(2, 'test', 'test@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `trigr`
--

CREATE TABLE `trigr` (
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trigr`
--

INSERT INTO `trigr` (`tid`, `pid`, `email`, `name`, `action`, `timestamp`) VALUES
(20, 18, 'ad@gmail.com', 'Diona', 'PATIENT INSERTED', '2022-11-06 10:20:43'),
(21, 19, 'ad@gmail.com', 'avni', 'PATIENT INSERTED', '2022-11-06 10:34:07'),
(22, 8, 'patient@gmail.com', 'anees', 'PATIENT DELETED', '2022-11-08 18:04:34'),
(27, 5, 'patient@gmail.com', 'patien', 'PATIENT DELETED', '2022-11-08 18:05:09'),
(29, 15, 'khushi@gmail.com', 'khushi', 'PATIENT DELETED', '2022-11-08 18:05:17'),
(31, 20, 'sara@gmail.com', 'sara m', 'PATIENT INSERTED', '2022-11-08 18:18:24'),
(32, 20, 'sara@gmail.com', 'sara', 'PATIENT UPDATED', '2022-11-08 18:19:54'),
(33, 21, 'divi@gmail.com', 'divi', 'PATIENT INSERTED', '2022-11-08 18:30:25'),
(34, 22, 'divi@gmail.com', 'Avani ', 'PATIENT INSERTED', '2022-11-08 18:31:17'),
(35, 23, 'mina@gmail.com', 'Dio', 'PATIENT INSERTED', '2022-11-08 20:32:01'),
(36, 24, 'rina@gmail.com', 'rina', 'PATIENT INSERTED', '2022-11-08 20:48:20'),
(37, 25, 'mina@gmail.com', 'minu', 'PATIENT INSERTED', '2022-11-08 23:59:56'),
(38, 26, 'mina@gmail.com', 'mani', 'PATIENT INSERTED', '2022-11-09 00:01:55'),
(39, 26, 'mina@gmail.com', 'mani', 'PATIENT DELETED', '2022-11-09 00:02:07'),
(40, 25, 'mina@gmail.com', 'minu', 'PATIENT UPDATED', '2022-11-09 00:02:37'),
(41, 19, 'doc@gmail.com', 'avni', 'PATIENT UPDATED', '2022-11-09 01:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `usertype`, `email`, `password`) VALUES
(15, 'khushi', 'Patient', 'khushi@gmail.com', 'pbkdf2:sha256:150000$BeSHeRKV$a8b27379ce9b2499d4caef21d9d387260b3e4ba9f7311168b6e180a00db91f22'),
(16, 'ad', 'Patient', 'ad@gmail.com', 'pbkdf2:sha256:260000$qqR1f0ifavynhsZD$ad59b9edb7c988ce0f5d8d98a078d0ccd5c2efeae2e3fc63d26649467fea6803'),
(17, 'adoc', 'Doctor', 'doc@gmail.com', 'pbkdf2:sha256:260000$hqujW0oAJAoblQbh$54457a45183b4a462376f20932a2ff4e845c2c90ae4492f91dbccc35c87ada51'),
(18, 'sara', 'Patient', 'sara@gmail.com', 'pbkdf2:sha256:260000$McXmqOpWG95UZXBP$2ac5b393af2e9a4db6ebecfa2505dd22a393b6ccad5eea580a3d685396dd9ff9'),
(19, 'vina', 'Doctor', 'vina@gmail.com', 'pbkdf2:sha256:260000$KnLoLIFhDS9L6VOL$3e74176c412288cddaeb3b51a1abc1d6cf1d89a55d88e202b5a3c29d373d9d39'),
(20, 'divi', 'Patient', 'divi@gmail.com', 'pbkdf2:sha256:260000$LBODyIO5ZGKrV1ah$6990ef1d198143fe7217322e80decbe9ea62d58f8c2c6c77e4ad87c8eeab4d4e'),
(21, 'mina', 'Patient', 'mina@gmail.com', 'pbkdf2:sha256:260000$ES5LL8i2tmVaCGkh$c411041a557b9b7df2e35841b934e6953cdf0dce8f85f0b765cc536b39627977'),
(22, 'rina@gmail.com', 'Patient', 'rina@gmail.com', 'pbkdf2:sha256:260000$mVM4gBWAL17deMZd$9c721b3bb81481841995502b87ef40b5b12e081c122ad611ca8a6b8e2ddb7c5d'),
(23, 'ravi', 'Patient', 'ravi@gmail.com', 'pbkdf2:sha256:260000$CMSjzlP5W4JihDeS$e4f4aaba63ad5ccacb0dcc8fd85efd881d6674990c54fffcc5dfadb0334d7fd4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Bill_no`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `medhistory`
--
ALTER TABLE `medhistory`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trigr`
--
ALTER TABLE `trigr`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medhistory`
--
ALTER TABLE `medhistory`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `trigr`
--
ALTER TABLE `trigr`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
