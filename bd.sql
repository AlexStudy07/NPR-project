-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1:3306
-- Timp de generare: apr. 24, 2021 la 03:59 AM
-- Versiune server: 5.7.26
-- Versiune PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `bd`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `npr`
--

DROP TABLE IF EXISTS `npr`;
CREATE TABLE IF NOT EXISTS `npr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL DEFAULT '(no title)',
  `type` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `street` varchar(100) NOT NULL DEFAULT '(none)',
  `status` varchar(10) NOT NULL,
  `aff_serv` text,
  `priority` text,
  `p_cause` text,
  `r_cause` text,
  `start` datetime DEFAULT NULL,
  `etr` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `npr`
--

INSERT INTO `npr` (`id`, `name`, `type`, `city`, `street`, `status`, `aff_serv`, `priority`, `p_cause`, `r_cause`, `start`, `etr`) VALUES
(4, 'TV, Internet & VoIP fix services degradation.', 'Mobile', 'Sanatauca', 'Decebal, Traian, Drumul Viilor.', 'Solved', 'Internet & TV services & Mobile', NULL, 'Fire in the hole.', NULL, '2019-04-10 00:00:00', '2019-04-17 05:04:00'),
(3, 'Mobile service degradation on SOR_415 (Sanatauca)', 'B2B', 'Chisinau', 'Traian', 'Solved', '2G, 3G, 4G services.', NULL, 'Power supply disconnection.', NULL, NULL, NULL),
(5, 'TV service unavailable on N808.', 'Mobile', 'Balti', 'Stefan', 'Processing', 'Mobile services.', NULL, 'Weather conditions.', NULL, NULL, NULL),
(6, '2G service unavailable on CHI_210.', 'Mobile', 'Balti', 'Bam', 'Solved', 'Internet & TV services & Mobile', NULL, 'Fire in the hole.', NULL, NULL, NULL),
(7, 'Problem ID 7', 'Fix in House', 'Ialoveni', 'Stefan', 'Processing', 'Internet & TV services & Mobile', NULL, 'Power supply.', NULL, NULL, NULL),
(8, 'Problem ID 8', 'Fix in House', 'Codru', 'Traian', 'Processing', '', NULL, '', NULL, NULL, NULL),
(9, 'Problem ID 8', 'Fix and TV', 'Chipesca', 'Stefan  43243243242', 'Solved', '', NULL, '', NULL, NULL, NULL),
(10, 'Problem ID 10', 'B2B', 'Balti', 'Traian', 'Processing', '', NULL, NULL, NULL, NULL, NULL),
(11, 'Problem ID 11', 'Fix and TV', 'Ialoveni', '1 Mai', 'Processing', '', NULL, NULL, NULL, NULL, NULL),
(12, 'Problem ID 12', 'Mobile', 'Hincesti', 'Traian', 'Processing', '', NULL, NULL, NULL, NULL, NULL),
(14, 'Problem ID 14', 'Mobile', 'Hincesti', 'sadsadsadd', 'Processing', '', NULL, NULL, NULL, NULL, NULL),
(15, 'Problem ID 15', 'Fix and TV', 'Hincesti', 'sadsadsadd dad', 'Processing', '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `npr3`
--

DROP TABLE IF EXISTS `npr3`;
CREATE TABLE IF NOT EXISTS `npr3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL DEFAULT '(no title)',
  `type` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `street` varchar(100) NOT NULL DEFAULT '(none)',
  `status` varchar(10) NOT NULL,
  `aff_serv` text,
  `priority` text,
  `p_cause` text,
  `r_cause` text,
  `start` datetime DEFAULT NULL,
  `etr` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `users_id` int(11) NOT NULL AUTO_INCREMENT,
  `users_fname` varchar(60) DEFAULT NULL,
  `users_lname` varchar(60) DEFAULT NULL,
  `users_email` varchar(60) DEFAULT NULL,
  `users_pass` varchar(32) DEFAULT NULL,
  `users_role` enum('admin','user') DEFAULT NULL,
  PRIMARY KEY (`users_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`users_id`, `users_fname`, `users_lname`, `users_email`, `users_pass`, `users_role`) VALUES
(1, 'Sandu', 'Alexandru', 'as', '1111', 'admin'),
(2, 'Florean', 'Mihaela', 'mf', '1111', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
