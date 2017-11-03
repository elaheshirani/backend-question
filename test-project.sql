-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2017 at 02:42 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test-project`
--
CREATE DATABASE IF NOT EXISTS `test-project` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test-project`;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE IF NOT EXISTS `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `parentId`, `title`, `description`, `status`) VALUES
(1, 1, 'task 1', 'task 1 is good', 2),
(3, 2, 'task 2', 'task 2 is bad', 1);

-- --------------------------------------------------------

--
-- Table structure for table `todolist`
--

DROP TABLE IF EXISTS `todolist`;
CREATE TABLE IF NOT EXISTS `todolist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `todolist`
--

INSERT INTO `todolist` (`id`, `userId`, `title`, `description`, `status`) VALUES
(1, 16, 'todo 1', 'this to do should be done soon .', 1),
(2, 16, 'todo 2', 'this todo is not very important.', 1),
(4, 16, 'todo 3', 'todo 3 is bestttttttt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  `actCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `active`, `actCode`) VALUES
(19, 'esh', 's@y.com', 'MTA1NQ==', '0', 'MC4xMzQ2MDkwMCAxNTA5NjI3OTI1'),
(18, 'test', 'test@gmail.com', 'dGVzdA==', '1', 'MC40ODU4MzIwMCAxNTA5NjI1MjI1'),
(16, 'elahe sh', 'shirani.elahe@gmail.com', 'MTA1NTYz', '1', 'MC45MzA1NjUwMCAxNTA5NjA2MTEy'),
(17, 'John Doe', 'john.doe@gmail.com', 'MTAwMDA=', '0', 'MC4zNzY1OTgwMCAxNTA5NjIzNDgx'),
(20, 'leila', 'leilaa_sh@yahoo.com', 'MTA1NTYz', '1', 'MC41MjA4ODkwMCAxNTA5NzA4MDAx');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
