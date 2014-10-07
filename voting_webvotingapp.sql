-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 07, 2014 at 03:20 PM
-- Server version: 5.5.37-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `voting_webvotingapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('a7e060c1b1f600e1f2e3d0d3def8fad4', '66.249.67.52', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1411667851, ''),
('5fd77823ab5192274a8819a94f880d44', '66.249.67.44', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1411661015, ''),
('9c871552216d8e09a06f903a752f26f4', '66.249.67.52', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1411654069, ''),
('3afd1dc664d632ef453bfcb9ba34b33a', '66.249.67.52', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1412690267, ''),
('3e0c5fd218265c45086d43fa282e73a8', '169.234.49.25', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36', 1412712949, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"5";}'),
('21bcd90729c0724113f6b492f3c46b46', '66.249.65.16', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1412653848, ''),
('1f943f9d7b04faec497a180f8febf7fc', '180.76.6.135', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', 1412108808, ''),
('ed1daab541ab99695587cdac79428db1', '180.76.6.45', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', 1412450791, ''),
('8b5b583ac5f103476e3041cbd7c67584', '66.249.67.52', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1411674752, '');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `qid` int(4) NOT NULL AUTO_INCREMENT,
  `number` int(4) NOT NULL,
  `question` text COLLATE latin1_general_ci NOT NULL,
  `minValue` int(2) NOT NULL,
  `maxValue` int(2) NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `qid` (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `number`, `question`, `minValue`, `maxValue`) VALUES
(1, 1, 'How well does the app fit the theme?', 1, 10),
(2, 2, 'How useful and original is the app’s idea?', 1, 10),
(3, 3, 'How intuitive is the user experience?', 1, 10),
(4, 4, 'How well is the app visually designed?', 1, 10),
(5, 5, 'How app functionality and logic are implemented?', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `uid` int(4) NOT NULL,
  `tid` int(4) NOT NULL,
  `question` int(4) NOT NULL,
  `value` int(4) NOT NULL,
  KEY `uid` (`uid`,`tid`,`question`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`uid`, `tid`, `question`, `value`) VALUES
(1, 1, 1, 3),
(1, 1, 2, 7),
(1, 1, 3, 9),
(1, 1, 4, 9),
(1, 1, 5, 9),
(1, 2, 1, 8),
(1, 2, 2, 9),
(1, 2, 3, 6),
(1, 2, 4, 7),
(1, 2, 5, 7),
(1, 3, 1, 3),
(1, 3, 2, 10),
(1, 3, 3, 4),
(1, 3, 4, 8),
(1, 3, 5, 5),
(1, 4, 1, 10),
(1, 4, 2, 5),
(1, 4, 3, 5),
(1, 4, 4, 4),
(1, 4, 5, 3),
(1, 5, 1, 10),
(1, 5, 2, 9),
(1, 5, 3, 7),
(1, 5, 4, 9),
(1, 5, 5, 7),
(1, 6, 1, 9),
(1, 6, 2, 8),
(1, 6, 3, 4),
(1, 6, 4, 7),
(1, 6, 5, 9),
(2, 1, 1, 7),
(2, 1, 2, 7),
(2, 1, 3, 8),
(2, 1, 4, 9),
(2, 1, 5, 8),
(2, 2, 1, 7),
(2, 2, 2, 7),
(2, 2, 3, 7),
(2, 2, 4, 7),
(2, 2, 5, 4),
(2, 3, 1, 5),
(2, 3, 2, 6),
(2, 3, 3, 8),
(2, 3, 4, 9),
(2, 3, 5, 6),
(2, 4, 1, 9),
(2, 4, 2, 8),
(2, 4, 3, 6),
(2, 4, 4, 8),
(2, 4, 5, 9),
(2, 5, 1, 9),
(2, 5, 2, 8),
(2, 5, 3, 7),
(2, 5, 4, 8),
(2, 5, 5, 8),
(2, 6, 1, 9),
(2, 6, 2, 9),
(2, 6, 3, 7),
(2, 6, 4, 7),
(2, 6, 5, 7),
(3, 1, 1, 10),
(3, 1, 2, 8),
(3, 1, 3, 9),
(3, 1, 4, 8),
(3, 1, 5, 8),
(3, 2, 1, 9),
(3, 2, 2, 10),
(3, 2, 3, 6),
(3, 2, 4, 7),
(3, 2, 5, 8),
(3, 3, 1, 8),
(3, 3, 2, 8),
(3, 3, 3, 8),
(3, 3, 4, 8),
(3, 3, 5, 6),
(3, 4, 1, 10),
(3, 4, 2, 10),
(3, 4, 3, 8),
(3, 4, 4, 7),
(3, 4, 5, 8),
(3, 5, 1, 10),
(3, 5, 2, 8),
(3, 5, 3, 8),
(3, 5, 4, 7),
(3, 5, 5, 9),
(3, 6, 1, 10),
(3, 6, 2, 10),
(3, 6, 3, 8),
(3, 6, 4, 7),
(3, 6, 5, 7),
(5, 1, 1, 3),
(5, 1, 2, 7),
(5, 1, 3, 5),
(5, 1, 4, 7),
(5, 1, 5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `tid` int(4) NOT NULL AUTO_INCREMENT,
  `number` int(2) NOT NULL,
  `name` varchar(256) COLLATE latin1_general_ci NOT NULL,
  `location` varchar(256) COLLATE latin1_general_ci NOT NULL,
  `description` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `tid` (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`tid`, `number`, `name`, `location`, `description`) VALUES
(1, 1, 'Team 1', 'Table 1', ''),
(2, 2, 'Team 2', 'Table 2', ''),
(3, 3, 'Team 3', 'Table 3', ''),
(4, 4, 'Team 4', 'Table 4', ''),
(5, 5, 'Team 5', 'Table 5', ''),
(6, 6, 'Team 6', 'Table 6', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(4) NOT NULL AUTO_INCREMENT,
  `user` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `name` varchar(256) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `user` (`user`),
  KEY `id` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `user`, `pass`, `name`) VALUES
(1, 'judge1', 'pw1', 'Judge 1'),
(2, 'judge2', 'pw2', 'Judge 2'),
(3, 'judge3', 'pw3', 'Judge 3'),
(4, 'judge4', 'pw4', 'Judge 4'),
(5, 'judge5', 'pw5', 'Judge 5'),
(6, 'judge6', 'pw6', 'Judge 6'),
(7, 'judge7', 'pw7', 'Judge 7'),
(8, 'judge8', 'pw8', 'Judge 8'),
(9, 'judge9', 'pw9', 'Judge 9'),
(10, 'judge10', 'pw10', 'Judge 10');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
