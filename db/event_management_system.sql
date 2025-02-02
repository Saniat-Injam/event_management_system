-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2025 at 09:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendees_information`
--

CREATE TABLE `attendees_information` (
  `id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `attendees_information`
--

INSERT INTO `attendees_information` (`id`, `first_name`, `last_name`, `student_id`, `student_email`, `mobile_number`, `department`, `semester`, `created_at`, `updated_at`) VALUES
(1, 'Saniat ', 'Injam', '2017-3-60-093', 'saniat.cse.ewu@gmail.com', '01716556509', 'CSE', 'Fall-17', '2025-02-02 10:29:16.735521', '2025-02-02 10:29:16.735521'),
(2, 'Tamid', 'Shahriar', '2017-3-60-45', 'tahmid@gmail.com', '01716556509', 'CSE', 'Fall-17', '2025-02-02 10:44:42.319800', '2025-02-02 10:44:42.319800'),
(3, 'Sumit Kumar', 'Kundu', '2017-3-60-091', 'sumit@gmail.com', '01916556509', 'CSE', 'Fall-17', '2025-02-02 10:44:42.341884', '2025-02-02 10:44:42.341884'),
(4, 'Mehedi Hasan', 'ratul', '2017-3-60-78', 'ratul@gmail.com', '01723556509', 'CSE', 'Fall-17', '2025-02-02 10:44:42.356581', '2025-02-02 10:44:42.356581'),
(5, 'Monjurul Arif', 'arif', '2017-3-60-47', 'arif@gmail.com', '01816556509', 'CSE', 'Fall-17', '2025-02-02 10:44:42.371007', '2025-02-02 10:44:42.371007'),
(6, 'Shahriar Imon', 'Imon', '2017-3-60-25', 'imon@gmail.com', '01712556509', 'CSE', 'Fall-17', '2025-02-02 10:44:42.386266', '2025-02-02 10:44:42.386266'),
(7, 'Sirajum Maria', 'Muna', '2017-3-60-14', 'muna@gmail.com', '01716526509', 'CSE', 'Fall-17', '2025-02-02 10:44:42.400579', '2025-02-02 10:44:42.400579'),
(8, 'Abdul Aziz', 'aziz', '2017-3-60-65', 'aziz@gmail.com', '01901556509', 'CSE', 'Fall-17', '2025-02-02 10:44:42.417638', '2025-02-02 10:44:42.417638'),
(9, 'Shahriar Niloy', 'niloy', '2017-3-60-78', 'niloy@gmail.com', '01716525509', 'CSE', 'Fall-17', '2025-02-02 10:44:42.434055', '2025-02-02 10:44:42.434055'),
(10, 'Maruf Hasan', 'Sujon', '2017-3-60-45', 'maruf@gmail.com', '01716556509', 'CSE', 'Fall-17', '2025-02-02 10:44:42.450600', '2025-02-02 10:44:42.450600'),
(11, 'Sakib Khan', 'sakib', '2017-3-60-45', 'sakib@gmail.com', '01716556509', 'CSE', 'Fall-17', '2025-02-02 10:44:42.467335', '2025-02-02 10:44:42.467335'),
(12, 'Mahin Khan', 'mahin', '2017-3-60-45', 'mahin@gmail.com', '01716556509', 'CSE', 'Fall-17', '2025-02-02 10:44:42.484054', '2025-02-02 10:44:42.484054'),
(13, 'Tonoy Saha', 'saha', '2017-3-60-45', 'saha@gmail.com', '01716556509', 'CSE', 'Fall-17', '2025-02-02 10:44:42.499675', '2025-02-02 10:44:42.499675'),
(14, 'Amit Roy', 'amit', '2017-3-60-45', 'amit@gmail.com', '01716556509', 'CSE', 'Fall-17', '2025-02-02 10:44:42.517500', '2025-02-02 10:44:42.517500'),
(15, 'Arif Hossen', 'arif', '2017-3-60-45', 'arif@gmail.com', '01716556509', 'CSE', 'Fall-17', '2025-02-02 10:44:42.535211', '2025-02-02 10:44:42.535211');

-- --------------------------------------------------------

--
-- Table structure for table `events_information`
--

CREATE TABLE `events_information` (
  `id` int(10) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_venue` varchar(100) NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time(2) NOT NULL,
  `chief_guest` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `events_information`
--

INSERT INTO `events_information` (`id`, `event_name`, `event_venue`, `event_type`, `date`, `time`, `chief_guest`, `created_at`, `updated_at`) VALUES
(3, 'EWU CSE Fall-17 Reunion', 'Ground Floor', 'On Campus', '2025-03-02', '10:10:00.00', 'Dr Wasif Reza', '2025-02-02 10:03:40.241705', '2025-02-02 10:03:40.241705'),
(4, 'CSE Fest 2025', 'Auditorium', 'On Campus', '2025-03-03', '12:10:00.00', 'Dr Farash Uddin', '2025-02-02 10:05:35.354119', '2025-02-02 10:05:35.354119'),
(5, 'EWU Job Fair 2025', 'Ground Floor', 'On Campus', '2025-03-05', '10:10:00.00', 'Dr. Azad Khan', '2025-02-02 10:06:51.717180', '2025-02-02 10:06:51.717180'),
(6, 'CSE Departmental Annual Picnic 2025', 'Gazipur Dhanshiri Resort', 'Off Campus', '2025-04-02', '08:00:00.00', 'Dr. Maheen Islam', '2025-02-02 10:08:43.234695', '2025-02-02 10:08:43.234695'),
(7, 'CSE Project Showcasing and 3 Days Long Gaming Competition', 'CCC Lobby', 'On Campus', '2025-04-23', '10:10:00.00', 'Dr. Salah Uddin', '2025-02-02 10:11:40.297568', '2025-02-02 10:11:40.297568'),
(8, 'CSE Alumni Iftar 2025', 'Cafeteria', 'On Campus', '2025-03-22', '10:10:00.00', 'Saddam Hossain Khan ', '2025-02-02 10:13:03.446333', '2025-02-02 10:13:03.446333'),
(9, 'CSE Dept Final Year Study Tour', 'Saint Martin', 'Off Campus', '2025-05-07', '08:30:00.00', 'Dr Anisur Rahman', '2025-02-02 10:14:48.937960', '2025-02-02 10:14:48.937960'),
(10, 'EWU Hackathon 2025', 'Software Lab', 'On Campus', '2025-05-08', '10:10:00.00', 'Dr Taskeed Javed', '2025-02-02 10:17:01.135185', '2025-02-02 10:17:01.135185'),
(11, 'CSE Winter Concert', 'Ground Zero', 'On Campus', '2025-11-13', '18:30:00.00', 'Dr Ripin Khan', '2025-02-02 10:18:38.131827', '2025-02-02 10:18:38.131827'),
(12, 'Robo Fest', 'Gaming Lab', 'On Campus', '2025-06-06', '12:10:00.00', 'Dr Rezwanul Haque', '2025-02-02 10:19:42.047492', '2025-02-02 10:19:42.047492'),
(13, 'EWU Convocation 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:24:40.424498', '2025-02-02 10:24:40.424498'),
(14, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.819248', '2025-02-02 10:26:59.819248'),
(15, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.826695', '2025-02-02 10:26:59.826695'),
(16, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.829659', '2025-02-02 10:26:59.829659'),
(17, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.832391', '2025-02-02 10:26:59.832391'),
(18, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.835131', '2025-02-02 10:26:59.835131'),
(19, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.837875', '2025-02-02 10:26:59.837875'),
(20, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.840822', '2025-02-02 10:26:59.840822'),
(21, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.843682', '2025-02-02 10:26:59.843682'),
(22, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.847006', '2025-02-02 10:26:59.847006'),
(23, 'ECPA Concert 2025', 'Ground', 'On Campus', '2025-12-05', '17:10:00.00', 'N/A', '2025-02-02 10:26:59.849826', '2025-02-02 10:26:59.849826'),
(24, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.852641', '2025-02-02 10:26:59.852641'),
(25, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.855929', '2025-02-02 10:26:59.855929'),
(26, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.859039', '2025-02-02 10:26:59.859039'),
(27, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.861901', '2025-02-02 10:26:59.861901'),
(28, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.865679', '2025-02-02 10:26:59.865679'),
(29, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.869927', '2025-02-02 10:26:59.869927'),
(30, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.872780', '2025-02-02 10:26:59.872780'),
(31, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.875935', '2025-02-02 10:26:59.875935'),
(33, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.882823', '2025-02-02 10:26:59.882823'),
(34, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.885482', '2025-02-02 10:26:59.885482'),
(35, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.888207', '2025-02-02 10:26:59.888207'),
(36, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.891921', '2025-02-02 10:26:59.891921'),
(37, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.895363', '2025-02-02 10:26:59.895363'),
(38, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.898212', '2025-02-02 10:26:59.898212'),
(39, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.900941', '2025-02-02 10:26:59.900941'),
(40, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.903634', '2025-02-02 10:26:59.903634'),
(41, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.906310', '2025-02-02 10:26:59.906310'),
(42, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.909102', '2025-02-02 10:26:59.909102'),
(43, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.913285', '2025-02-02 10:26:59.913285'),
(44, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.916435', '2025-02-02 10:26:59.916435'),
(45, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.919983', '2025-02-02 10:26:59.919983'),
(46, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.922666', '2025-02-02 10:26:59.922666'),
(47, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.926308', '2025-02-02 10:26:59.926308'),
(48, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.929813', '2025-02-02 10:26:59.929813'),
(49, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.933721', '2025-02-02 10:26:59.933721'),
(50, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.937655', '2025-02-02 10:26:59.937655'),
(51, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.941611', '2025-02-02 10:26:59.941611'),
(52, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.945206', '2025-02-02 10:26:59.945206'),
(53, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.948292', '2025-02-02 10:26:59.948292'),
(54, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.951267', '2025-02-02 10:26:59.951267'),
(55, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.954894', '2025-02-02 10:26:59.954894'),
(56, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.958447', '2025-02-02 10:26:59.958447'),
(57, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.962028', '2025-02-02 10:26:59.962028'),
(58, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.965087', '2025-02-02 10:26:59.965087'),
(59, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.968341', '2025-02-02 10:26:59.968341'),
(60, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.971480', '2025-02-02 10:26:59.971480'),
(61, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.975132', '2025-02-02 10:26:59.975132'),
(62, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.979735', '2025-02-02 10:26:59.979735'),
(63, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.983439', '2025-02-02 10:26:59.983439'),
(64, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.987200', '2025-02-02 10:26:59.987200'),
(65, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.990514', '2025-02-02 10:26:59.990514'),
(66, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.995486', '2025-02-02 10:26:59.995486'),
(67, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:26:59.999030', '2025-02-02 10:26:59.999030'),
(68, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.002712', '2025-02-02 10:27:00.002712'),
(69, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.007013', '2025-02-02 10:27:00.007013'),
(70, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.011497', '2025-02-02 10:27:00.011497'),
(71, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.014961', '2025-02-02 10:27:00.014961'),
(72, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.017968', '2025-02-02 10:27:00.017968'),
(73, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.021156', '2025-02-02 10:27:00.021156'),
(74, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.024969', '2025-02-02 10:27:00.024969'),
(75, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.028214', '2025-02-02 10:27:00.028214'),
(76, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.031382', '2025-02-02 10:27:00.031382'),
(77, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.034705', '2025-02-02 10:27:00.034705'),
(78, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.037615', '2025-02-02 10:27:00.037615'),
(79, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.040905', '2025-02-02 10:27:00.040905'),
(80, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.043907', '2025-02-02 10:27:00.043907'),
(81, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.047400', '2025-02-02 10:27:00.047400'),
(82, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.050605', '2025-02-02 10:27:00.050605'),
(83, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.053653', '2025-02-02 10:27:00.053653'),
(84, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.056902', '2025-02-02 10:27:00.056902'),
(85, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.060153', '2025-02-02 10:27:00.060153'),
(86, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.063070', '2025-02-02 10:27:00.063070'),
(87, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.066606', '2025-02-02 10:27:00.066606'),
(88, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.069594', '2025-02-02 10:27:00.069594'),
(89, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.072866', '2025-02-02 10:27:00.072866'),
(90, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.076329', '2025-02-02 10:27:00.076329'),
(91, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.080108', '2025-02-02 10:27:00.080108'),
(92, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.083414', '2025-02-02 10:27:00.083414'),
(93, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.086388', '2025-02-02 10:27:00.086388'),
(94, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.089733', '2025-02-02 10:27:00.089733'),
(95, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.093404', '2025-02-02 10:27:00.093404'),
(96, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.096468', '2025-02-02 10:27:00.096468'),
(97, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.100176', '2025-02-02 10:27:00.100176'),
(98, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.104223', '2025-02-02 10:27:00.104223'),
(99, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.108811', '2025-02-02 10:27:00.108811'),
(100, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.113236', '2025-02-02 10:27:00.113236'),
(101, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.116704', '2025-02-02 10:27:00.116704'),
(102, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.119604', '2025-02-02 10:27:00.119604'),
(103, 'EWU CONVOCATION 2025', 'Auditorium', 'On Campus', '2025-05-05', '10:10:00.00', 'Dr Younus', '2025-02-02 10:27:00.122970', '2025-02-02 10:27:00.122970'),
(104, 'EWU Badminton Tournament', 'Under Ground', 'On Campus', '2025-06-02', '16:16:00.00', 'To be Announced', '2025-02-02 12:32:38.718185', '2025-02-02 12:32:38.718185');

-- --------------------------------------------------------

--
-- Table structure for table `users_information`
--

CREATE TABLE `users_information` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirm_password` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users_information`
--

INSERT INTO `users_information` (`id`, `name`, `user_name`, `email`, `mobile_number`, `password`, `confirm_password`, `created_at`, `updated_at`) VALUES
(1, 'SANIAT INJAM', 'saniat_fall17', 'saniat.cse.ewu@gmail.com', '01716556509', '$2y$10$.pgs0nf12446XXinpaaBnOCE2OmM.m/P8NLJB5w0sh5kO5c3l39xu', '$2y$10$oOaBzVn8dnj9x.NxuIavceJUc/s4enkszIumXDrk2NinKzIgyM11a', '2025-02-02 09:48:17.051920', '2025-02-02 09:48:17.051920'),
(2, 'Tahmid Shahriar', 'tahmid_fall17', 'tahmid@gmail.com', '01716556509', '$2y$10$fQnpXBFN1ZDXJfkbBLFqpeEz0CyLC7JkIIc6Fe./rMzvtowZ3ZFGm', '$2y$10$WuQux.XTyKoRCyQgcPVw8eVdFZz73QqG8GWRZIqWta9m33O5sZAg.', '2025-02-02 10:46:56.221950', '2025-02-02 10:46:56.221950'),
(3, 'Sadia Yasmin', 'simla_fall17', 'simla@gmail.com', '01515670017', '$2y$10$/urcv.OIBLXp4T.Z4PnbXu/PGpEedcAoiNJPXJ8BIH/gUcJMnTCPW', '$2y$10$QNDnDdwTfKRfTLnXaV9qquqI0xS6Tqm4yoMIfhnBWiL0Vg1ek4Pvi', '2025-02-02 12:24:38.256236', '2025-02-02 12:24:38.256236');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendees_information`
--
ALTER TABLE `attendees_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events_information`
--
ALTER TABLE `events_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_information`
--
ALTER TABLE `users_information`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendees_information`
--
ALTER TABLE `attendees_information`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `events_information`
--
ALTER TABLE `events_information`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `users_information`
--
ALTER TABLE `users_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
