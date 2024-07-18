-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql106.infinityfree.com
-- Tempo de geração: 18/07/2024 às 10:10
-- Versão do servidor: 10.4.17-MariaDB
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `if0_36007209_restaurante`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Accounts`
--

CREATE TABLE `Accounts` (
  `account_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Accounts`
--

INSERT INTO `Accounts` (`account_id`, `email`, `register_date`, `phone_number`, `password`) VALUES
(1, 'marcio@gmail.com', '2023-08-31', '+1234567890', '051080'),
(2, 'susan@gmail.com', '2023-08-30', '+1987654321', 'susanpassword'),
(3, 'james@gmail.com', '2023-08-29', '+18887776666', 'jamespass'),
(4, 'alice@gmail.com', '2023-08-28', '+15555555555', 'alicepassword'),
(5, 'mike@gmail.com', '2023-08-27', '+14444444444', 'mikepass'),
(6, 'lisa@gmail.com', '2023-08-26', '+13333333333', 'lisapassword'),
(7, 'robert@gmail.com', '2023-08-25', '+12222222222', 'robertpass'),
(8, 'emily@gmail.com', '2023-08-24', '+16666666666', 'emilypassword'),
(9, 'david@gmail.com', '2023-08-23', '+1993219999', 'davidp321ass'),
(10, 'ddwd@gmail.com', '2023-08-23', '+1999999329999', 'davidpa2ss'),
(11, 'dadsvawvid@gmail.com', '2023-08-23', '+12234132199', 'david4pass'),
(12, 'davdavid@gmail.com', '2023-08-23', '+123239999', 'davidp13ass'),
(13, 'davvdasid@gmail.com', '2023-08-23', '+1995324319999', 'david2pass'),
(14, '321david@gmail.com', '2023-08-23', '+1942199999', 'davidpa52ss'),
(15, '32avid@gmail.com', '2023-08-23', '+1942193429999', 'da2332ss'),
(16, '321da543vid@gmail.com', '2023-08-23', '+1942132199999', 'dav43a52ss'),
(17, '3211234avid@gmail.com', '2023-08-23', '+194213599999', '32533pa52ss'),
(18, '321543avid@gmail.com', '2023-08-23', '+1942154399999', '754dpa52ss'),
(19, 'rbsjsd@gmail.com', '2023-08-23', '+131351241239', '41f2s'),
(20, 'ol435143ivia@gmail.com', '2023-08-22', '+18888888888', 'oliviapass4215word'),
(21, 'robber@gmail.com', '2023-09-01', '+1234567890', 'password123'),
(22, 'jean@gmail.com', '2023-09-02', '+2345678901', 'password456'),
(23, 'emily@gmail.com', '2023-09-03', '+3456789012', 'password789'),
(24, 'robert@gmail.com', '2023-09-04', '+4567890123', 'passwordabc'),
(25, 'zoe@gmail.com', '2023-09-05', '+5678901234', 'passworddef'),
(26, 'lisa@gmail.com', '2023-09-06', '+6789012345', 'passwordghi'),
(27, 'taylor@gmail.com', '2023-09-07', '+7890123456', 'passwordjkl'),
(28, 'stephan@gmail.com', '2023-09-08', '+8901234567', 'passwordmno'),
(29, 'bruce@gmail.com', '2023-09-09', '+9012345678', 'passwordpqr'),
(30, 'jackie@gmail.com', '2023-09-10', '+0123456789', 'passwordstu'),
(31, 'ivonete@gmail.com', '2024-04-03', '51993786915', '051080'),
(32, 'professormarciodutra@gmail.com', '2024-04-03', '51993786915', '051080'),
(33, 'professormarciodutra@gmail.com', '2024-04-03', '51993786915', '051080'),
(34, 'professormarciodutra@gmail.com', '2024-04-04', '51993786915', '051080'),
(35, 'marcio@gmail.com', '2024-04-06', '+5551994690210', '051080'),
(36, 'professormarciodutra@gmail.com', '2024-04-14', '51994690210', '051080');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Bills`
--

CREATE TABLE `Bills` (
  `bill_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `bill_time` datetime DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Bills`
--

INSERT INTO `Bills` (`bill_id`, `staff_id`, `member_id`, `reservation_id`, `table_id`, `card_id`, `payment_method`, `bill_time`, `payment_time`) VALUES
(43, 1, 1, 1120241, 2, NULL, 'cash', '2024-04-04 05:36:55', '2024-04-04 05:38:12'),
(2, 1, 5, NULL, 5, NULL, 'Cash', '2023-09-28 19:00:00', '2023-09-28 19:05:00'),
(55, 35, 1, 1220245, 5, NULL, 'cash', '2024-04-19 07:56:28', '2024-04-19 07:58:23'),
(54, NULL, NULL, NULL, 13, NULL, NULL, '2024-04-18 07:31:40', NULL),
(6, 2, 8, NULL, 6, NULL, 'Cash', '2023-09-30 20:15:00', '2023-09-30 20:20:00'),
(51, 35, 1, 14202414, 5, NULL, 'cash', '2024-04-12 08:00:06', '2024-04-14 21:02:59'),
(8, 3, 6, NULL, 7, NULL, 'Cash', '2023-10-01 19:00:00', '2023-10-01 19:05:00'),
(9, 3, 18, NULL, 2, NULL, 'Cash', '2023-10-01 18:30:00', '2023-10-01 18:35:00'),
(10, 4, 7, NULL, 9, NULL, 'Cash', '2023-10-02 19:30:00', '2023-10-02 19:35:00'),
(11, 4, 17, NULL, 8, NULL, 'Cash', '2023-10-02 20:00:00', '2023-10-02 20:05:00'),
(12, 4, 8, NULL, 10, 4, 'Card', '2023-10-02 19:00:00', '2023-10-02 19:05:00'),
(50, 35, 1, 1920241, 1, NULL, 'cash', '2024-04-09 19:29:24', '2024-04-10 22:02:45'),
(14, 5, 16, NULL, 9, NULL, 'Cash', '2023-10-03 19:45:00', '2023-10-03 19:50:00'),
(15, 5, 10, NULL, 5, NULL, 'Cash', '2023-10-03 20:00:00', '2023-10-03 20:05:00'),
(16, 6, 11, NULL, 4, 6, 'Card', '2023-10-03 20:15:00', '2023-10-03 20:20:00'),
(17, 6, 8, NULL, 10, NULL, 'Cash', '2023-10-03 20:30:00', '2023-10-03 20:35:00'),
(18, 6, 12, NULL, 3, 7, 'Card', '2023-10-04 19:30:00', '2023-10-04 19:35:00'),
(19, 7, 13, NULL, 2, NULL, 'Cash', '2023-10-04 19:15:00', '2023-10-04 19:20:00'),
(49, 35, 1, 1920241, 1, NULL, 'cash', '2024-04-06 19:00:16', '2024-04-08 06:12:44'),
(21, 7, 1, NULL, 6, NULL, 'Cash', '2023-10-05 14:00:00', '2023-10-05 14:05:00'),
(22, 8, 15, NULL, 8, 8, 'Card', '2023-10-05 20:45:00', '2023-10-05 20:50:00'),
(23, 8, 16, NULL, 7, NULL, 'Cash', '2023-10-05 20:00:00', '2023-10-05 20:05:00'),
(24, 8, 2, NULL, 9, NULL, 'Cash', '2023-10-05 19:30:00', '2023-10-05 19:35:00'),
(25, 8, 9, NULL, 4, NULL, 'Cash', '2023-10-05 20:15:00', '2023-10-05 20:20:00'),
(26, 9, 17, NULL, 9, 9, 'Card', '2023-10-05 12:00:00', '2023-10-05 12:05:00'),
(27, 9, 18, NULL, 10, 10, 'Card', '2023-10-06 13:15:00', '2023-10-06 13:20:00'),
(42, 1, 1, 1720241, 1, NULL, 'cash', '2024-04-04 05:32:13', '2024-04-04 18:08:05'),
(29, 10, 7, NULL, 10, NULL, 'Cash', '2023-10-06 10:45:00', '2023-10-06 10:50:00'),
(30, 10, 20, NULL, 6, NULL, 'Cash', '2023-10-06 14:45:00', '2023-10-06 14:50:00'),
(58, NULL, NULL, NULL, 5, NULL, NULL, '2024-05-02 19:45:27', NULL),
(40, 35, 1, 1920248, 4, NULL, 'cash', '2024-04-04 05:30:03', '2024-04-11 22:00:30'),
(62, 35, 1, 18202414, 14, NULL, 'cash', '2024-07-14 17:11:46', '2024-07-14 17:12:46'),
(38, 35, 1, 1820247, 7, NULL, 'cash', '2024-04-03 21:32:11', '2024-04-17 07:58:08'),
(37, NULL, NULL, NULL, 7, NULL, NULL, '2024-04-03 21:32:04', NULL),
(36, NULL, NULL, NULL, 9, NULL, NULL, '2024-04-03 21:12:57', NULL),
(44, NULL, NULL, NULL, 11, NULL, NULL, '2024-04-04 08:07:14', NULL),
(61, 35, 1, 1920242, 2, NULL, 'cash', '2024-05-17 19:44:21', '2024-06-01 12:16:55'),
(46, NULL, NULL, NULL, 11, NULL, NULL, '2024-04-04 18:07:19', NULL),
(48, 35, 1, 18202412, 12, NULL, 'cash', '2024-04-05 17:36:30', '2024-04-07 01:29:25'),
(56, 35, 1, 1820241, 1, NULL, 'cash', '2024-04-29 05:07:00', '2024-04-30 02:34:36'),
(57, 35, 1, 1020244, 4, NULL, 'cash', '2024-04-29 05:07:19', '2024-05-01 19:28:36'),
(60, 35, 1, 1020243, 3, NULL, 'cash', '2024-05-03 07:42:13', '2024-05-17 19:43:46');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Bill_Items`
--

CREATE TABLE `Bill_Items` (
  `bill_item_id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `item_id` varchar(6) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Bill_Items`
--

INSERT INTO `Bill_Items` (`bill_item_id`, `bill_id`, `item_id`, `quantity`) VALUES
(223, 36, 'C2', 3),
(222, 62, 'HD2', 1),
(182, 43, 'C1', 1),
(181, 0, 'C1', 2),
(5, 2, 'MD2', 1),
(6, 2, 'MD5', 2),
(7, 2, 'MD16', 1),
(8, 2, 'S5', 2),
(9, 2, 'L2', 1),
(10, 2, 'HC2', 2),
(211, 57, 'C7', 1),
(210, 57, 'C4', 1),
(209, 56, 'C4', 2),
(208, 55, 'CP1', 1),
(27, 6, 'MD23', 1),
(28, 6, 'MD21', 1),
(29, 6, 'C1', 1),
(30, 6, 'C2', 2),
(206, 1, 'C6', 1),
(205, 54, 'HC1', 1),
(204, 54, 'C4', 1),
(221, 62, 'C4', 1),
(36, 8, 'MD23', 1),
(37, 8, 'L2', 1),
(38, 8, 'C3', 1),
(39, 8, 'L5', 1),
(40, 8, 'C4', 2),
(41, 8, 'M1', 1),
(42, 8, 'M2', 2),
(43, 9, 'MD23', 1),
(44, 9, 'M1', 1),
(45, 9, 'M4', 1),
(46, 9, 'M2', 1),
(47, 9, 'M5', 2),
(48, 9, 'M6', 1),
(49, 9, 'HD1', 2),
(50, 10, 'SK3', 1),
(51, 10, 'SK6', 1),
(52, 10, 'CP1', 1),
(53, 10, 'CP2', 1),
(54, 10, 'CP3', 2),
(55, 10, 'CP4', 1),
(56, 10, 'CP5', 2),
(57, 11, 'MD1', 2),
(58, 11, 'MD15', 1),
(59, 11, 'S3', 2),
(60, 11, 'L1', 1),
(61, 12, 'MD2', 1),
(62, 12, 'MD5', 2),
(63, 12, 'MD16', 1),
(64, 12, 'S5', 2),
(65, 12, 'L2', 1),
(66, 12, 'HC2', 2),
(220, 62, 'C1', 1),
(219, 61, 'MD37', 1),
(218, 61, 'L3', 1),
(199, 46, 'C1', 1),
(198, 51, 'C5', 1),
(197, 51, 'C3', 1),
(73, 14, 'MD23', 1),
(74, 14, 'MD9', 1),
(75, 14, 'L2', 2),
(76, 14, 'C3', 1),
(77, 14, 'HC4', 2),
(78, 15, 'MD23', 1),
(79, 15, 'S1', 1),
(80, 15, 'S8', 2),
(81, 15, 'L5', 1),
(82, 15, 'HC5', 2),
(83, 16, 'MD23', 1),
(84, 16, 'MD21', 1),
(85, 16, 'C1', 1),
(86, 16, 'C2', 2),
(87, 17, 'MD23', 1),
(88, 17, 'MD41', 1),
(89, 17, 'S4', 1),
(90, 17, 'C3', 1),
(91, 17, 'C4', 2),
(92, 18, 'MD23', 1),
(93, 18, 'MD32', 1),
(94, 18, 'MD33', 1),
(95, 18, 'L5', 1),
(96, 18, 'C4', 2),
(97, 18, 'M1', 1),
(98, 18, 'M2', 2),
(99, 19, 'MD23', 1),
(100, 19, 'M1', 1),
(101, 19, 'M4', 1),
(102, 19, 'MD29', 1),
(103, 19, 'M5', 2),
(104, 19, 'M6', 1),
(105, 19, 'HD1', 2),
(196, 36, 'C3', 1),
(195, 36, 'C1', 1),
(194, 38, 'C3', 1),
(193, 38, 'C1', 2),
(192, 50, 'C3', 1),
(191, 50, 'C1', 1),
(190, 49, 'C1', 1),
(113, 21, 'MD1', 2),
(114, 21, 'MD15', 1),
(115, 21, 'S3', 2),
(116, 21, 'S1', 1),
(117, 22, 'MD2', 1),
(118, 22, 'MD5', 2),
(119, 22, 'MD16', 1),
(120, 22, 'S5', 2),
(121, 22, 'SK2', 1),
(122, 22, 'HC2', 2),
(123, 23, 'MD9', 1),
(124, 23, 'MD21', 1),
(125, 23, 'M6', 1),
(126, 23, 'SK6', 2),
(127, 23, 'L9', 1),
(128, 23, 'HC5', 2),
(129, 24, 'MD23', 1),
(130, 24, 'HD2', 1),
(131, 24, 'MD2', 2),
(132, 24, 'M3', 1),
(133, 24, 'HC1', 2),
(134, 25, 'MD2', 1),
(135, 25, 'MD21', 1),
(136, 25, 'MD8', 2),
(137, 25, 'L5', 1),
(138, 25, 'HC5', 2),
(139, 26, 'MD23', 1),
(140, 26, 'MD21', 1),
(141, 26, 'C1', 1),
(142, 26, 'C2', 2),
(143, 27, 'MD23', 1),
(144, 27, 'MD11', 1),
(145, 27, 'MD4', 1),
(146, 27, 'C3', 1),
(147, 27, 'C4', 2),
(189, 48, 'C2', 4),
(188, 48, 'C1', 1),
(155, 29, 'MD23', 1),
(156, 29, 'M1', 1),
(157, 29, 'M4', 1),
(158, 29, 'MD2', 1),
(159, 29, 'M5', 2),
(160, 29, 'CP1', 1),
(161, 29, 'HD1', 2),
(162, 30, 'MD3', 1),
(163, 30, 'MD6', 1),
(164, 30, 'MD11', 1),
(165, 30, 'MD22', 1),
(166, 30, 'CP3', 2),
(167, 30, 'CP4', 1),
(168, 30, 'CP5', 2),
(217, 60, 'C5', 1),
(216, 60, 'SK8', 1),
(180, 42, 'C3', 2),
(179, 42, 'C1', 1),
(207, 55, 'CP5', 1),
(177, 40, 'C4', 1),
(176, 40, 'C1', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `card_payments`
--

CREATE TABLE `card_payments` (
  `card_id` int(11) NOT NULL,
  `account_holder_name` varchar(255) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `expiry_date` varchar(7) NOT NULL,
  `security_code` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `card_payments`
--

INSERT INTO `card_payments` (`card_id`, `account_holder_name`, `card_number`, `expiry_date`, `security_code`) VALUES
(1, 'John Smith', '1234567890123456', '10/15', '123'),
(2, 'Susan Johnson', '2345678901234567', '10/24', '456'),
(3, 'James Brown', '3456789012345678', '09/30', '789'),
(4, 'Alice Davis', '4567890123456789', '09/28', '321'),
(5, 'Mike Wilson', '5678901234567890', '09/29', '654'),
(6, 'Robert Miller', '7890123456789012', '10/19', '123'),
(7, 'Abbel TuTuTu', '1234123412341234', '10/25', '654'),
(8, 'Abignail Downey', '2345234523452345', '10/24', '987'),
(9, 'Jamie Mustafa', '3456345634563456', '09/23', '123'),
(10, 'Luke Gun Slinger', '4567456745674567', '09/22', '456'),
(11, 'MÃ¡cio Dutra', '1311165655661644', '05/2025', '258'),
(12, 'juninho', '1234567890123456', '06/2027', '258'),
(13, 'Paulo Ricardo', '154875412658745', '05/2027', '258'),
(14, 'Paulo Ricardo', '154875412658745', '05/2027', '258'),
(15, 'Joao Azevedo', '1547887499815687', '03/2027', '258'),
(16, 'Andreia', '254125896325478', '05/2025', '258');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Kitchen`
--

CREATE TABLE `Kitchen` (
  `kitchen_id` int(11) NOT NULL,
  `table_id` int(11) DEFAULT NULL,
  `item_id` varchar(6) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `time_submitted` datetime DEFAULT NULL,
  `time_ended` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Kitchen`
--

INSERT INTO `Kitchen` (`kitchen_id`, `table_id`, `item_id`, `quantity`, `time_submitted`, `time_ended`) VALUES
(1, 6, 'SK3', 4, '2023-10-03 18:45:00', '2023-10-03 18:46:00'),
(2, 6, 'CP2', 3, '2023-10-03 18:45:00', '2023-10-03 18:46:00'),
(3, 5, 'S3', 5, '2023-10-03 20:00:00', '2023-10-03 20:46:00'),
(4, 5, 'MD15', 2, '2023-10-03 14:45:00', '2023-10-03 14:46:00'),
(5, 1, 'MD1', 1, '2023-09-28 22:45:00', '2023-09-28 23:00:00'),
(6, 1, 'MD15', 2, '2023-09-28 22:45:00', '2023-09-28 23:00:00'),
(7, 1, 'S3', 1, '2023-09-28 22:45:00', '2023-09-28 23:00:00'),
(8, 1, 'L1', 1, '2023-09-28 22:45:00', '2023-09-28 23:00:00'),
(9, 5, 'MD2', 1, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(10, 5, 'MD5', 1, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(11, 5, 'MD16', 1, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(12, 5, 'S5', 1, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(13, 5, 'L2', 2, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(14, 5, 'HC2', 1, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(15, 2, 'MD19', 2, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(16, 2, 'MD2', 1, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(17, 2, 'MD4', 2, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(18, 2, 'S6', 2, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(19, 2, 'L3', 1, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(20, 2, 'HC3', 1, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(21, 10, 'MD23', 1, '2023-10-06 10:45:00', '2024-04-03 23:26:38'),
(22, 10, 'MD2', 1, '2023-10-06 10:45:00', '2024-04-13 21:13:56'),
(23, 6, 'MD22', 1, '2023-10-06 14:45:00', '2024-04-13 21:14:01'),
(24, 6, 'CP5', 2, '2023-10-06 14:45:00', '2024-04-13 21:14:05'),
(25, 1, 'C1', 1, '2024-04-03 06:55:25', '2024-04-13 21:14:06'),
(26, 1, 'C1', 1, '2024-04-03 07:24:48', '2024-04-13 21:14:07'),
(27, 1, 'C3', 2, '2024-04-03 07:24:54', '2024-04-17 08:00:48'),
(28, 7, 'C1', 2, '2024-04-03 07:25:35', '2024-04-17 08:00:51'),
(29, 7, 'C2', 3, '2024-04-03 07:25:39', '2024-04-17 08:00:52'),
(30, 1, 'C1', 1, '2024-04-03 17:28:38', NULL),
(31, 2, 'C1', 1, '2024-04-03 17:46:56', NULL),
(32, 4, 'C1', 3, '2024-04-04 18:06:12', NULL),
(33, 4, 'C4', 1, '2024-04-04 05:30:20', NULL),
(34, 4, 'C1', 3, '2024-04-04 18:06:12', NULL),
(35, 1, 'C1', 1, '2024-04-04 05:32:18', NULL),
(36, 1, 'C3', 2, '2024-04-04 05:32:20', NULL),
(37, 11, 'C1', 1, '2024-04-04 05:34:58', NULL),
(38, 2, 'C1', 1, '2024-04-04 05:37:02', NULL),
(39, 3, 'C1', 1, '2024-04-04 08:04:15', NULL),
(40, 11, 'C1', 1, '2024-04-04 08:07:30', NULL),
(41, 6, 'C1', 2, '2024-04-04 18:19:23', NULL),
(42, 6, 'C3', 2, '2024-04-04 18:19:26', NULL),
(43, 6, 'C5', 4, '2024-04-04 18:19:31', NULL),
(44, 12, 'C1', 1, '2024-04-05 17:36:42', NULL),
(45, 12, 'C2', 4, '2024-04-05 17:36:47', NULL),
(46, 1, 'C1', 1, '2024-04-06 19:00:24', NULL),
(47, 1, 'C1', 1, '2024-04-09 19:29:33', NULL),
(48, 1, 'C3', 1, '2024-04-09 19:29:38', NULL),
(49, 7, 'C1', 2, '2024-04-10 21:58:53', NULL),
(50, 7, 'C3', 1, '2024-04-10 21:58:58', NULL),
(51, 9, 'C1', 1, '2024-04-11 21:55:44', NULL),
(52, 9, 'C3', 1, '2024-04-11 21:55:49', NULL),
(53, 5, 'C3', 1, '2024-04-12 08:00:14', NULL),
(54, 5, 'C5', 1, '2024-04-12 08:00:21', '2024-04-17 08:00:43'),
(55, 11, 'C1', 1, '2024-04-13 21:12:44', '2024-04-17 08:00:39'),
(56, 6, 'CP6', 1, '2024-04-18 07:30:49', NULL),
(57, 6, 'CP3', 1, '2024-04-18 07:30:56', NULL),
(58, 3, 'CP1', 1, '2024-04-18 07:31:20', NULL),
(59, 3, 'C5', 1, '2024-04-18 07:31:23', NULL),
(60, 13, 'C4', 1, '2024-04-18 07:31:56', NULL),
(61, 13, 'HC1', 1, '2024-04-18 07:31:59', NULL),
(62, 15, 'C6', 1, '2024-04-18 07:32:34', NULL),
(63, 5, 'CP5', 1, '2024-04-19 07:56:35', NULL),
(64, 5, 'CP1', 1, '2024-04-19 07:56:51', NULL),
(65, 1, 'C4', 2, '2024-04-29 05:09:20', NULL),
(66, 4, 'C4', 1, '2024-04-29 05:07:23', NULL),
(67, 4, 'C7', 1, '2024-04-29 05:07:26', NULL),
(68, 3, 'C1', 1, '2024-05-02 19:45:50', NULL),
(69, 3, 'CP4', 2, '2024-05-02 19:45:54', NULL),
(70, 3, 'HC5', 1, '2024-05-02 19:45:59', NULL),
(71, 3, 'MD23', 1, '2024-05-02 19:46:05', NULL),
(72, 3, 'SK8', 1, '2024-05-03 07:42:23', NULL),
(73, 3, 'C5', 1, '2024-05-03 07:42:26', NULL),
(74, 2, 'L3', 1, '2024-05-17 19:44:29', NULL),
(75, 2, 'MD37', 1, '2024-05-17 19:44:36', NULL),
(76, 14, 'C1', 1, '2024-07-14 17:11:59', NULL),
(77, 14, 'C4', 1, '2024-07-14 17:12:04', NULL),
(78, 14, 'HD2', 1, '2024-07-14 17:12:10', NULL),
(79, 9, 'C2', 3, '2024-07-18 09:49:08', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Memberships`
--

CREATE TABLE `Memberships` (
  `member_id` int(11) NOT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Memberships`
--

INSERT INTO `Memberships` (`member_id`, `member_name`, `points`, `account_id`) VALUES
(1, 'Abbel TuTuTu', 2325, 11),
(2, 'Abignail Downey ', 200, 12),
(3, 'Jamie Mustafa', 300, 13),
(4, 'Luke Gun Slinger', 400, 14),
(5, 'Johny Rings', 500, 15),
(6, 'Wee Tuu Low', 600, 16),
(7, 'Sum Ting Wong', 700, 17),
(8, 'Ho Lee Fuk', 800, 18),
(9, 'Bang Ding Ow', 900, 19),
(10, 'Rocky Rocket', 1000, 20),
(11, 'Robber Hellington', 250, 21),
(12, 'Jean Ng', 300, 22),
(13, 'Emily Davis', 400, 23),
(14, 'Robert Wilson', 550, 24),
(15, 'Zoe Chong', 650, 25),
(16, 'Lisa Chia', 750, 26),
(17, 'Taylor Swift', 900, 27),
(18, 'Stephan Curry', 1050, 28),
(19, 'Bruce Lee', 1200, 29),
(20, 'Jackie Chan', 1350, 30),
(21, 'Ivonete', 0, 31),
(22, 'Marcio de oliveira dutra', 0, 32),
(23, 'Marcio de oliveira dutra', 0, 34),
(24, 'Marcio de oliveira dutra', 0, 36);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Menu`
--

CREATE TABLE `Menu` (
  `item_id` varchar(6) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `item_category` varchar(255) DEFAULT NULL,
  `item_price` decimal(10,2) DEFAULT NULL,
  `item_description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Menu`
--

INSERT INTO `Menu` (`item_id`, `item_name`, `item_type`, `item_category`, `item_price`, `item_description`) VALUES
('MD1', 'Prime Rib Steak', 'Steak & Ribs', 'Main Dishes', '96.00', '300g'),
('MD2', 'Sirloin Steak', 'Steak & Ribs', 'Main Dishes', '79.00', '230g'),
('MD3', 'Ribeye Steak', 'Steak & Ribs', 'Main Dishes', '96.00', '230g'),
('MD4', 'BBQ Ribs', 'Steak & Ribs', 'Main Dishes', '59.00', '400g'),
('MD5', 'Grilled Chicken ½ Bird', 'Chicken', 'Main Dishes', '33.00', '½ Bird'),
('MD6', 'Southern Fried Chicken ½ Bird', 'Chicken', 'Main Dishes', '33.00', '½ Bird'),
('MD7', 'Pan Seared Chicken', 'Chicken', 'Main Dishes', '28.00', '300g'),
('MD8', 'Chicken Chop', 'Chicken', 'Main Dishes', '28.00', '300g'),
('MD9', 'Grilled Lamb Chops', 'Lamb', 'Main Dishes', '48.00', 'delicious grilled lamb chop'),
('MD10', 'Braised Lamb Shank', 'Lamb', 'Main Dishes', '52.00', 'delicious braised lamb shank'),
('MD11', 'Catch of the day', 'Seafood', 'Main Dishes', '46.00', 'fresh seafood'),
('MD12', 'Grilled Salmon', 'Seafood', 'Main Dishes', '48.00', 'fresh salmon'),
('MD13', 'Jambalaya', 'Seafood', 'Main Dishes', '28.00', 'delicious jambalaya'),
('MD14', 'Fish & Chips', 'Seafood', 'Main Dishes', '35.00', 'delicious fish & chips'),
('MD15', 'Classic Cheese Burger', 'Burgers & Sandwiches', 'Main Dishes', '30.00', 'delicious burger'),
('MD16', 'Hickory Burger', 'Burgers & Sandwiches', 'Main Dishes', '30.00', 'delicious burger'),
('MD17', 'Fried Chicken Burger', 'Burgers & Sandwiches', 'Main Dishes', '24.00', 'delicious burger'),
('MD18', 'Grilled Chicken Burger', 'Burgers & Sandwiches', 'Main Dishes', '24.00', 'delicious burger'),
('MD19', 'Chili Dog', 'Burgers & Sandwiches', 'Main Dishes', '25.00', 'delicious sandwich'),
('MD20', 'Meatballs Sandwich', 'Burgers & Sandwiches', 'Main Dishes', '25.00', 'delicious sandwich'),
('MD21', 'Street Car', 'Burgers & Sandwiches', 'Main Dishes', '24.00', 'delicious sandwich'),
('MD22', 'Shrimp Po Boy', 'Burgers & Sandwiches', 'Main Dishes', '32.00', 'delicious sandwich'),
('MD23', 'Chicken Po Boy', 'Burgers & Sandwiches', 'Main Dishes', '28.00', 'delicious sandwich'),
('MD24', 'Chicken Tortilla', 'Burgers & Sandwiches', 'Main Dishes', '22.00', 'delicious sandwich'),
('MD25', 'Bolognese', 'Pasta', 'Main Dishes', '26.00', 'Spaghetti'),
('MD26', 'Meat Balls', 'Pasta', 'Main Dishes', '28.00', 'Spaghetti'),
('MD27', 'Carbonara', 'Pasta', 'Main Dishes', '28.00', 'Penne'),
('MD28', 'Chicken & Mushroom Aglio Olio', 'Pasta', 'Main Dishes', '28.00', 'Penne'),
('MD29', 'Chicken Arabiatta', 'Pasta', 'Main Dishes', '28.00', 'Spaghetti'),
('MD30', 'Seafood Aglio Olio', 'Pasta', 'Main Dishes', '32.00', 'Spaghetti'),
('MD31', 'Shrimp', 'Pasta', 'Main Dishes', '32.00', 'Penne'),
('MD32', 'Italian Chicken', 'Pasta', 'Main Dishes', '30.00', 'Chef\'s Signature Pasta'),
('MD33', 'Braised Lamb Cutlet', 'Pasta', 'Main Dishes', '33.00', 'Chef\'s Signature Pasta'),
('MD34', 'Fries', 'Side Dishes', 'Side Snacks', '9.00', 'delicious'),
('MD35', 'Potato Wedges', 'Side Dishes', 'Side Snacks', '9.00', 'delicious'),
('MD36', 'Garden Salad', 'Side Dishes', 'Side Snacks', '9.00', 'delicious'),
('MD37', 'V.O.D', 'Side Dishes', 'Side Snacks', '9.00', 'delicious vegetables'),
('MD38', 'Wan Tan', 'Side Dishes', 'Side Snacks', '9.00', 'delicious'),
('MD39', 'Buttered Corn', 'Side Dishes', 'Side Snacks', '9.00', 'delicious'),
('MD40', 'Coleslaw', 'Side Dishes', 'Side Snacks', '9.00', 'delicious'),
('MD41', 'Garlic Bread', 'Side Dishes', 'Side Snacks', '9.00', 'delicious'),
('MD42', 'Dirty Rice', 'Side Dishes', 'Side Snacks', '9.00', 'delicious'),
('S1', 'Buffalo Wings', 'Bar Bites', 'Side Snacks', '24.00', 'delicious buffalo wings'),
('S2', 'Fried Calamari', 'Bar Bites', 'Side Snacks', '29.00', 'delicious fried calamari'),
('S3', 'Cheesy Baked Mussels ½ Dozen', 'Bar Bites', 'Side Snacks', '23.00', '½ Dozen'),
('S4', 'Cheesy Baked Mussels 1 Dozen', 'Bar Bites', 'Side Snacks', '38.00', '1 Dozen'),
('S5', 'Chopped Lamb Chops', 'Bar Bites', 'Side Snacks', '39.00', 'Delicious lamb chop'),
('S6', 'Nachos', 'Bar Bites', 'Side Snacks', '28.00', 'delicious nachos'),
('S7', 'Cheesy Fries', 'Bar Bites', 'Side Snacks', '14.00', 'delicious cheesy fries'),
('S8', 'Cheesy Meat Fries', 'Bar Bites', 'Side Snacks', '22.00', 'delicious cheesy meat fries'),
('S9', 'Grilled Chicken Caesar Salad', 'Salad', 'Side Snacks', '24.00', 'delicious salad'),
('S10', 'Shoney Salad', 'Salad', 'Side Snacks', '20.00', 'delicious salad'),
('L1', 'Blended Scotch (Black Label)', 'Liquor', 'Drinks', '310.00', 'Johnny Walker Black Label Sherry 700ml'),
('L2', 'Blended Scotch (Gold Label)', 'Liquor', 'Drinks', '390.00', 'Johnny Walker Gold Label 750ml'),
('L3', 'American Whisky (Jack Daniel)', 'Liquor', 'Drinks', '290.00', '700ml'),
('L4', 'American Whisky (Jim Beam)', 'Liquor', 'Drinks', '270.00', '750ml'),
('L5', 'Single Malt', 'Liquor', 'Drinks', '360.00', 'Singleton Signature 700ml'),
('L6', 'Cognac', 'Liquor', 'Drinks', '390.00', 'Hennessy VSOP 700ml'),
('L7', 'Vodka', 'Liquor', 'Drinks', '195.00', 'Smirnoff Red 700ml'),
('L8', 'Tequila', 'Liquor', 'Drinks', '165.00', 'Jose Cuervo 750ml'),
('L9', 'Gin', 'Liquor', 'Drinks', '210.00', 'Gordon 700ml'),
('C1', 'Kamikaze', 'Classic Cocktails', 'Drinks', '30.00', ' cocktails '),
('C2', 'Singapore Sling', 'Classic Cocktails', 'Drinks', '29.00', 'cocktails'),
('C3', 'Long Island Iced Tea', 'Classic Cocktails', 'Drinks', '29.00', 'cocktails'),
('C4', 'Lady on the Beach', 'Classic Cocktails', 'Drinks', '29.00', 'cocktails'),
('C5', 'Margarita', 'Classic Cocktails', 'Drinks', '29.00', 'cocktails'),
('C6', 'Pina Colada', 'Classic Cocktails', 'Drinks', '26.00', 'cocktails'),
('C7', 'Mojito', 'Classic Cocktails', 'Drinks', '29.00', 'cocktails'),
('HC1', 'Shoney Iced Tea', 'House Cocktails', 'Drinks', '32.00', 'Gin, Rum'),
('HC2', 'Blue Lady', 'House Cocktails', 'Drinks', '30.00', 'Vodka'),
('HC3', 'Black Mambaa', 'House Cocktails', 'Drinks', '30.00', 'Vodka'),
('HC4', 'Lycheetini', 'House Cocktails', 'Drinks', '25.00', 'Vodka'),
('HC5', 'Chichi', 'House Cocktails', 'Drinks', '25.00', 'Vodka'),
('HD1', 'Brownies', 'House Dessert', 'Side Snacks', '15.00', 'delicious brownies'),
('HD2', 'American Cheese Cake', 'House Dessert', 'Side Snacks', '15.00', 'delicious cheese cake'),
('HD3', 'Pie of the Day', 'House Dessert', 'Side Snacks', '13.00', 'delicious served with vanilla ice cream'),
('HD4', 'Coated Ice Cream', 'House Dessert', 'Side Snacks', '12.00', 'delicious ice cream'),
('HD5', 'Messy Sundae', 'House Dessert', 'Side Snacks', '14.00', 'delicious brownies'),
('SK1', 'Chicken Tenders', 'Shoney Kid', 'Side Snacks', '12.00', 'delicious chicken tenders'),
('SK2', 'Chicken Wings', 'Shoney Kid', 'Side Snacks', '12.00', 'delicious chicken wings'),
('SK3', 'Fish Fingers', 'Shoney Kid', 'Side Snacks', '15.00', 'served with fries & corn'),
('SK4', 'Cheesy Pasta', 'Shoney Kid', 'Side Snacks', '12.00', 'delicious cheesy pasta'),
('SK5', 'Meat Sauce Pasta', 'Shoney Kid', 'Side Snacks', '12.00', 'delicious pasta'),
('SK6', 'Milo', 'Shoney Kid', 'Side Snacks', '2.50', '200ml pack'),
('SK7', 'Ribena', 'Shoney Kid', 'Side Snacks', '3.50', '330ml pack'),
('SK8', 'Fruity Yogurt Smoothies', 'Shoney Kid', 'Side Snacks', '5.00', 'watermelon or pineapple'),
('SK9', 'Ice Cream MilkShakes', 'Shoney Kid', 'Side Snacks', '5.00', 'vanilla or chocolate'),
('CP1', 'Green Apple', 'Cold Pressed Juice', 'Drinks', '15.00', 'fresh pressed juice'),
('CP2', 'Orange', 'Cold Pressed Juice', 'Drinks', '15.00', 'fresh pressed juice'),
('CP3', 'Carrot', 'Cold Pressed Juice', 'Drinks', '15.00', 'fresh pressed juice'),
('CP4', 'Watermelon', 'Cold Pressed Juice', 'Drinks', '13.00', 'fresh pressed juice'),
('CP5', 'Pineapple', 'Cold Pressed Juice', 'Drinks', '13.00', 'fresh pressed juice'),
('CP6', 'Lime', 'Cold Pressed Juice', 'Drinks', '10.00', 'fresh pressed juice'),
('M1', 'Cool & Refreshing', 'Mocktails', 'Drinks', '16.00', 'Cucumber,peppermint,lemon'),
('M2', 'Virgin Apple Mojito', 'Mocktails', 'Drinks', '16.00', 'Green apple, mint leaf'),
('M3', 'Shirley Temple', 'Mocktails', 'Drinks', '16.00', 'Lemonade, grenadine'),
('M4', 'Purple Rain', 'Mocktails', 'Drinks', '16.00', 'Blackcurrant, strawberry'),
('M5', 'Silly Rose', 'Mocktails', 'Drinks', '16.00', 'Green Tea, lychee, rose'),
('M6', 'Incredible Green', 'Mocktails', 'Drinks', '16.00', 'Green apple, lemon, lime, soda');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Reservations`
--

CREATE TABLE `Reservations` (
  `reservation_id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `reservation_time` time DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `head_count` int(11) DEFAULT NULL,
  `special_request` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Reservations`
--

INSERT INTO `Reservations` (`reservation_id`, `customer_name`, `table_id`, `reservation_time`, `reservation_date`, `head_count`, `special_request`) VALUES
(1220243, 'Joaquim', 3, '12:00:00', '2024-05-20', 4, ' '),
(1920244, 'Anita Garibalde', 4, '19:00:00', '2024-04-24', 6, ' Comida vegana'),
(1220245, 'Geraldo', 5, '12:00:00', '2024-04-26', 6, ' '),
(18202411, 'Ana Maria', 11, '18:00:00', '2024-04-14', 4, ' '),
(1520245, 'ZÃ© Pequeno', 5, '15:00:00', '2024-04-24', 6, ' '),
(1820247, 'Joaquim Silveira', 7, '18:00:00', '2024-04-30', 6, ' '),
(20202415, 'Carlos Duarte', 15, '20:00:00', '2024-04-25', 2, ' '),
(1920241, 'MÃ¡rcio', 1, '19:00:00', '2024-04-18', 4, ' '),
(1920242, 'Ivonete', 2, '19:00:00', '2024-04-25', 4, ' '),
(1820241, 'Joao', 1, '18:00:00', '2024-04-05', 4, ' '),
(1720241, 'Joaquim', 1, '17:00:00', '2024-04-29', 4, ' '),
(19202414, 'Andre', 14, '19:00:00', '2024-05-13', 6, ' '),
(1120241, 'Paulo', 1, '11:00:00', '2024-04-22', 4, ' '),
(1920248, 'Carla', 8, '19:00:00', '2024-05-15', 8, ' '),
(18202412, 'Andre', 12, '18:00:00', '2024-04-24', 4, ' '),
(16202413, 'Pedro', 13, '16:00:00', '2024-04-23', 8, ' Sem gluten'),
(14202414, 'Joana', 14, '14:00:00', '2024-04-30', 6, ' Lugar para cadeirante'),
(14202415, 'Marilu', 15, '14:00:00', '2024-04-17', 2, ' '),
(1020244, 'MÃ¡rcio', 4, '10:00:00', '2024-04-29', 6, ' '),
(1020243, 'Zelia', 3, '10:00:00', '2024-05-21', 4, ' '),
(2020249, 'Pedro', 9, '20:00:00', '2024-05-23', 8, ' '),
(19202412, 'Maicon', 12, '19:00:00', '2024-05-29', 4, ' '),
(18202414, 'Shirinfolimpola', 14, '18:00:00', '2024-07-16', 6, ' ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Restaurant_Tables`
--

CREATE TABLE `Restaurant_Tables` (
  `table_id` int(11) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Restaurant_Tables`
--

INSERT INTO `Restaurant_Tables` (`table_id`, `capacity`, `is_available`) VALUES
(1, 4, 1),
(2, 4, 1),
(3, 4, 1),
(4, 6, 1),
(5, 6, 1),
(6, 6, 1),
(7, 6, 1),
(8, 8, 1),
(9, 8, 1),
(10, 8, 1),
(11, 4, 1),
(12, 4, 1),
(13, 8, 1),
(14, 6, 1),
(15, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Staffs`
--

CREATE TABLE `Staffs` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Staffs`
--

INSERT INTO `Staffs` (`staff_id`, `staff_name`, `role`, `account_id`) VALUES
(1, 'John Smith', 'Waiter', 1),
(2, 'Susan Johnson', 'Waiter', 2),
(3, 'James Brown', 'Waiter', 3),
(4, 'Alice Davis', 'Waiter', 4),
(5, 'Mike Wilson', 'Waiter', 5),
(6, 'Lisa Martinez', 'Chef', 6),
(7, 'Robert Miller', 'Manager', 7),
(8, 'Emily Moore', 'Manager', 8),
(9, 'David Taylor', 'Chef', 9),
(10, 'Olivia Anderson', 'Chef', 10),
(33, 'Marcio de oliveira dutra', 'Gerente', 33),
(35, 'MÃ¡rcio Dutra', 'Gerente', 35);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Table_Availability`
--

CREATE TABLE `Table_Availability` (
  `availability_id` int(11) NOT NULL,
  `table_id` int(11) DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `reservation_time` time DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Table_Availability`
--

INSERT INTO `Table_Availability` (`availability_id`, `table_id`, `reservation_date`, `reservation_time`, `status`) VALUES
(1920241, 1, '2024-04-18', '19:00:00', 'no'),
(2020242, 2, '2024-04-18', '20:00:00', 'no'),
(1820241, 1, '2024-04-05', '18:00:00', 'no'),
(1720243, 3, '2024-04-24', '17:00:00', 'no'),
(1920242, 2, '2024-04-25', '19:00:00', 'no'),
(1720241, 1, '2024-04-29', '17:00:00', 'no'),
(1320243, 3, '2024-05-01', '13:00:00', 'no'),
(1120241, 1, '2024-04-22', '11:00:00', 'no'),
(11202410, 10, '2024-05-15', '11:00:00', 'no'),
(2020246, 6, '2024-05-22', '20:00:00', 'no'),
(1920248, 8, '2024-05-15', '19:00:00', 'no'),
(18202412, 12, '2024-04-24', '18:00:00', 'no'),
(16202413, 13, '2024-04-23', '16:00:00', 'no'),
(14202414, 14, '2024-04-30', '14:00:00', 'no'),
(14202415, 15, '2024-04-17', '14:00:00', 'no'),
(20202415, 15, '2024-04-25', '20:00:00', 'no'),
(1820247, 7, '2024-04-30', '18:00:00', 'no'),
(1520245, 5, '2024-04-24', '15:00:00', 'no'),
(18202411, 11, '2024-04-14', '18:00:00', 'no'),
(1220245, 5, '2024-04-26', '12:00:00', 'no'),
(1920244, 4, '2024-04-24', '19:00:00', 'no'),
(1020244, 4, '2024-04-29', '10:00:00', 'no'),
(19202414, 14, '2024-05-13', '19:00:00', 'no'),
(1220243, 3, '2024-05-20', '12:00:00', 'no'),
(1020243, 3, '2024-05-21', '10:00:00', 'no'),
(2020249, 9, '2024-05-23', '20:00:00', 'no'),
(19202412, 12, '2024-05-29', '19:00:00', 'no'),
(18202414, 14, '2024-07-16', '18:00:00', 'no');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `Accounts`
--
ALTER TABLE `Accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Índices de tabela `Bills`
--
ALTER TABLE `Bills`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `reservation_id` (`reservation_id`),
  ADD KEY `table_id` (`table_id`),
  ADD KEY `card_id` (`card_id`);

--
-- Índices de tabela `Bill_Items`
--
ALTER TABLE `Bill_Items`
  ADD PRIMARY KEY (`bill_item_id`),
  ADD KEY `bill_id` (`bill_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Índices de tabela `card_payments`
--
ALTER TABLE `card_payments`
  ADD PRIMARY KEY (`card_id`);

--
-- Índices de tabela `Kitchen`
--
ALTER TABLE `Kitchen`
  ADD PRIMARY KEY (`kitchen_id`),
  ADD KEY `table_id` (`table_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Índices de tabela `Memberships`
--
ALTER TABLE `Memberships`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Índices de tabela `Menu`
--
ALTER TABLE `Menu`
  ADD PRIMARY KEY (`item_id`);

--
-- Índices de tabela `Reservations`
--
ALTER TABLE `Reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `table_id` (`table_id`);

--
-- Índices de tabela `Restaurant_Tables`
--
ALTER TABLE `Restaurant_Tables`
  ADD PRIMARY KEY (`table_id`);

--
-- Índices de tabela `Staffs`
--
ALTER TABLE `Staffs`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Índices de tabela `Table_Availability`
--
ALTER TABLE `Table_Availability`
  ADD PRIMARY KEY (`availability_id`),
  ADD KEY `table_id` (`table_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `Accounts`
--
ALTER TABLE `Accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `Bills`
--
ALTER TABLE `Bills`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de tabela `Bill_Items`
--
ALTER TABLE `Bill_Items`
  MODIFY `bill_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT de tabela `card_payments`
--
ALTER TABLE `card_payments`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `Kitchen`
--
ALTER TABLE `Kitchen`
  MODIFY `kitchen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de tabela `Memberships`
--
ALTER TABLE `Memberships`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `Reservations`
--
ALTER TABLE `Reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20202416;

--
-- AUTO_INCREMENT de tabela `Restaurant_Tables`
--
ALTER TABLE `Restaurant_Tables`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `Staffs`
--
ALTER TABLE `Staffs`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `Table_Availability`
--
ALTER TABLE `Table_Availability`
  MODIFY `availability_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20202416;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
