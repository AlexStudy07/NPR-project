-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Gazdă: localhost:3306
-- Timp de generare: apr. 24, 2021 la 07:35 AM
-- Versiune server: 10.3.16-MariaDB
-- Versiune PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `id9341405_bd`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `npr`
--

CREATE TABLE `npr` (
  `id` int(11) NOT NULL,
  `name` char(100) NOT NULL DEFAULT '(no title)',
  `type` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `street` varchar(100) NOT NULL DEFAULT '(none)',
  `status` varchar(10) NOT NULL,
  `aff_serv` text DEFAULT NULL,
  `priority` text DEFAULT NULL,
  `p_cause` text DEFAULT NULL,
  `r_cause` text DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `etr` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `npr`
--

INSERT INTO `npr` (`id`, `name`, `type`, `city`, `street`, `status`, `aff_serv`, `priority`, `p_cause`, `r_cause`, `start`, `etr`) VALUES
(4, 'Problem ID 1', 'Fix and TV', 'Sanataucas', 'Decebal, Traian, Drumul Viilor.', 'Processing', 'Internet & TV services & Mobile', NULL, 'Fire in the hole.', NULL, '2019-04-10 00:00:00', '2019-04-17 05:04:00'),
(3, 'Problem ID 2', 'Mobile', 'Chisinau', 'Traian', 'Solved', '2G, 3G, 4G services.', NULL, 'Power supply disconnection.', NULL, NULL, NULL),
(5, 'Problem ID 3', 'Fix and TV', 'Balti', 'Stefan', 'Processing', 'Mobile services.', NULL, 'Weather conditions.', NULL, NULL, NULL),
(6, 'Problem ID 4', 'Mobile', 'Balti', 'Bam', 'Solved', 'Mobile', NULL, 'Fire in the hole.', NULL, NULL, NULL),
(7, 'Problem ID 7', 'Fix in House', 'Ialoveni', 'Stefan', 'Processing', 'Internet & TV services & Mobile', NULL, 'Power supply disconnection.', NULL, NULL, NULL),
(8, 'Problem ID 8', 'Fix in House', 'Codru', 'Traian', 'Processing', '', NULL, '', NULL, NULL, NULL),
(9, 'Problem ID 8', 'Fix and TV', 'Chipesca', 'Stefan  43243243242', 'Solved', '', NULL, '', NULL, NULL, NULL),
(10, 'Problem ID 13', 'B2B', 'Balti', 'Traian', 'Processing', '', NULL, '', NULL, NULL, NULL),
(11, 'Problem ID 11', 'Fix and TV', 'Ialoveni', '1 Mai', 'Processing', '', NULL, '', NULL, NULL, NULL),
(12, 'Problem ID 12', 'Fix in House', 'Hincesti', 'Traian', 'Processing', '', NULL, '', NULL, NULL, NULL),
(14, 'Problem ID 14', 'Mobile', 'Hincesti', 'sadsadsadd', 'Processing', '', NULL, NULL, NULL, NULL, NULL),
(15, 'Problem ID 152', 'Fix and TV', 'Hincesti', 'sadsadsadd dad', 'Processing', '', NULL, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `users_fname` varchar(60) DEFAULT NULL,
  `users_lname` varchar(60) DEFAULT NULL,
  `users_email` varchar(60) DEFAULT NULL,
  `users_pass` varchar(32) DEFAULT NULL,
  `users_role` enum('admin','user') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`users_id`, `users_fname`, `users_lname`, `users_email`, `users_pass`, `users_role`) VALUES
(1, 'Service Desk', 'User', 'sd', '1111', 'admin'),
(2, 'TMG', 'User', 'tmg', '1111', 'user');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `npr`
--
ALTER TABLE `npr`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `npr`
--
ALTER TABLE `npr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
