-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 22, 2025 at 09:42 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `addressbook`
--
CREATE DATABASE IF NOT EXISTS `addressbook` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `addressbook`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` varchar(15) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `color`) VALUES
('aaa', 'Category 1', '#0f4dff'),
('bbbb', 'Category 2', '#27d420'),
('e3ja8jjmh1e1pjd', 'Service Providers', '#daccd8'),
('j0vcmjemh1e1xba', 'Archived', '#27988a'),
('kmaofgwmh1e1is7', 'Volunteer', '#5c0a33'),
('uqcsvksmh1e1djx', 'Technical', '#9be204'),
('xgizprgmh1e22n8', 'Stakeholder', '#9b7129');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fullname` varchar(254) DEFAULT NULL,
  `letter` varchar(254) DEFAULT NULL,
  `mobile` varchar(254) DEFAULT NULL,
  `telephone` varchar(254) DEFAULT NULL,
  `emailaddress` varchar(254) DEFAULT NULL,
  `category` varchar(254) DEFAULT NULL,
  `gender` varchar(254) DEFAULT NULL,
  `streetaddress1` varchar(254) DEFAULT NULL,
  `streetaddress2` varchar(254) DEFAULT NULL,
  `city` varchar(254) DEFAULT NULL,
  `state` varchar(254) DEFAULT NULL,
  `province` varchar(254) DEFAULT NULL,
  `postalcode` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `fullname`, `letter`, `mobile`, `telephone`, `emailaddress`, `category`, `gender`, `streetaddress1`, `streetaddress2`, `city`, `state`, `province`, `postalcode`) VALUES
('dkejnrsmh1e4o9l', 'Castro Hester', 'C', '+272311411723', '+273582336138', 'nelson.cortez2805@icloud.com', 'aaa', 'Female', '222 Hancock Beach', '528 Lloyd Promenade', 'Brazzaville', 'GA', 'eiirlujmh1e3qby', '5541'),
('n4sh701mh1e4vye', 'Fitzpatrick Bennett', 'F', '+274218721456', '+273135152522', 'maxwell.roth441@icloud.com', 'e3ja8jjmh1e1pjd', 'Male', '980 Serrano Close', '352 Patrick Oaks', 'Beograd (Belgrade)', 'CO', 'mpypwg6mh1e2qx2', '1411'),
('nxspf9smh1iokpc', 'Mclaughlin Norman', 'M', '+273216326321', '+272112131136', 'holden.wilkinson2797@icloud.com', 'kmaofgwmh1e1is7', 'Male', '46 Horton Camp', '501 Marshall Autoroute', '﻿Kabul', 'OR', 'eqhtkwnmh1e352u', '2531'),
('xvd5tmpmh1e4aja', 'Holden Rich', 'H', '+275423432323', '+272212246125', 'murphy.robbins2211@icloud.com', 'j0vcmjemh1e1xba', 'Male', '367 Myers Loop', '764 Jacobs Burg', 'Tegucigalpa', 'OK', 'mpypwg6mh1e2qx2', '6512'),
('ye5fcdlmh1e4i26', 'Sloan Lawson', 'S', '+273517563222', '+277235163112', 'shepherd.hull1229@icloud.com', 'aaa', 'Male', '645 Lott Sentier', '696 Little Moor', 'El Djazaïr  (Algiers)', 'AZ', 'mpypwg6mh1e2qx2', '2614');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
CREATE TABLE IF NOT EXISTS `provinces` (
  `id` varchar(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
('nclvdkdmh1e2t8r', 'Alberta'),
('umfhgydmh1e3ct2', 'Batangas'),
('idihwjdmh1e3fer', 'Bulacan'),
('p5xwwocmh1e2zbn', 'Cavite'),
('twdxzgdmh1e3k5a', 'Cebu'),
('q7xaddsmh1e39oa', 'Davao del Sur'),
('eiirlujmh1e3qby', 'Flevoland'),
('mpypwg6mh1e2qx2', 'Lombardy'),
('eqhtkwnmh1e352u', 'Lombardy, Italy'),
('r2vzinumh1e32ou', 'Mpumalanga'),
('jtpvtgnmh1e3hzy', 'North West'),
('q21pviqmh1e2oku', 'Overijssel'),
('ruzay9nmh1e379i', 'Rizal'),
('cd603jomh1e2jpe', 'São Paulo, Brazil'),
('ocmdv1hmh1e2m7i', 'Texas, USA'),
('nqagfsqmh1e3nhk', 'Veneto');

-- --------------------------------------------------------

--
-- Table structure for table `xolani`
--

DROP TABLE IF EXISTS `xolani`;
CREATE TABLE IF NOT EXISTS `xolani` (
  `id` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
