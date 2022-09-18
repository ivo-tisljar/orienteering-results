-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 03, 2021 at 05:21 AM
-- Server version: 5.7.33-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orientee_hos`
--
CREATE DATABASE IF NOT EXISTS `orientee_hos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
USE `orientee_hos`;

-- --------------------------------------------------------

--
-- Table structure for table `aktivnost`
--

CREATE TABLE `aktivnost` (
  `id` tinyint(4) NOT NULL,
  `objekt` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `akcija` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `opis` varchar(120) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `aktivnost`
--

INSERT INTO `aktivnost` (`id`, `objekt`, `akcija`, `opis`) VALUES
(1, 'n/a', 'sa-import', 'import podataka u bazu od strane superadmin-a'),
(2, 'korisnik', 'dodavanje', 'upis novog korisnika'),
(3, 'korisnik', 'promjena', 'promjena podataka o korisniku'),
(4, 'korisnik', 'brisanje', 'brisanje korisnika'),
(5, 'korisnik', 'aktivacija', 'aktiviranje korisnika'),
(6, 'korisnik', 'deaktivacija', 'deaktiviranje korisnika'),
(7, 'lozinka', 'promjena', 'promjena lozinke korisnika'),
(11, 'klub', 'dodavanje', 'upis novog kluba'),
(12, 'klub', 'promjena', 'promjena podataka o klubu'),
(13, 'klub', 'brisanje', 'brisanje kluba'),
(14, 'klub', 'registracija', 'registriranje kluba za godinu'),
(21, 'natjecatelj', 'dodavanje', 'upis novog natjecatelja'),
(22, 'natjecatelj', 'promjena', 'promjena podataka o natjecatelju'),
(23, 'natjecatelj', 'brisanje', 'brisanje natjecatelja'),
(24, 'natjecatelj', 'registracija', 'registriranje natjecatelja za godinu');

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `id` smallint(6) NOT NULL,
  `pitanje` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `odgovor` varchar(1) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`id`, `pitanje`, `odgovor`) VALUES
(1, 'Rijeka Ce_ina', 't'),
(2, 'Planina Med_ednica', 'v'),
(3, 'Otok Bra_', 'č'),
(4, 'Rijeka _ikola', 'Č'),
(5, 'Planina Ri_njak', 's'),
(6, 'Otok Du_i otok', 'g'),
(7, 'Rijeka Dr_va', 'a'),
(8, 'Planina Snje_nik', 'ž'),
(9, 'Otok C_es', 'r'),
(10, 'Rijeka Sa_a', 'v'),
(11, 'Planina Pa_uk', 'p'),
(12, 'Otok K_k', 'r'),
(13, 'Rijeka Kra_ina', 'p'),
(14, 'Planina Bilo_ora', 'g'),
(15, 'Otok H_ar', 'v'),
(16, 'Rijeka Ku_a', 'p'),
(17, 'Planina Ve_ebit', 'l'),
(18, 'Otok Pa_', 'g'),
(19, 'Rijeka K_upa', 'r'),
(20, 'Planina Bio_ovo', 'k'),
(21, 'Otok Kor_ula', 'č'),
(22, 'Rijeka Rje_ina', 'č'),
(23, 'Planina Di_ara', 'n'),
(24, 'Otok M_jet', 'l'),
(25, 'Rijeka Lo_ja', 'n'),
(26, 'Planina Ivan_čica', 'š'),
(27, 'Otok V_s', 'i'),
(28, 'Rijeka Su_la', 't'),
(29, 'Planina Kam_šnica', 'e'),
(30, 'Otok R_b', 'a'),
(31, 'Rijeka K_ka', 'r'),
(32, 'Planina Ka_nik', 'l'),
(33, 'Otok L_šinj', 'o'),
(34, 'Rijeka Ko_ana', 'r'),
(35, 'Planina K_ek', 'l'),
(36, 'Otok Pa_man', 'š'),
(37, 'Rijeka Zr_anja', 'm'),
(38, 'Planina Mo_or', 's'),
(39, 'Otok Šo_ta', 'l'),
(40, 'Rijeka Vu_a', 'k'),
(41, 'Planina U_ka', 'č'),
(42, 'Otok Uglj_n', 'a'),
(43, 'Rijeka O_ljava', 'r'),
(44, 'Planina Ći_arija', 'ć'),
(45, 'Otok Las_ovo', 't'),
(46, 'Rijeka D_nav', 'u'),
(47, 'Planina Ra_na gora', 'v'),
(48, 'Otok M_rter', 'u'),
(49, 'Rijeka Od_a', 'r'),
(50, 'Planina Tuho_ić', 'b'),
(51, 'Otok Biš_vo', 'e'),
(52, 'Rijeka Li_a', 'k'),
(53, 'Planina Stra_inščica', 'h'),
(54, 'Otok Kolo_ep', 'č'),
(55, 'Rijeka Mu_a', 'r'),
(56, 'Planina Bi_oraj', 't'),
(57, 'Otok G_li', 'o'),
(58, 'Rijeka Mi_na', 'r'),
(59, 'Planina Velika Ka_ela', 'p'),
(60, 'Otok Lo_ud', 'p'),
(61, 'Karta Mak_imir', 's'),
(62, 'Karta Du_ravica', 'b'),
(63, 'Karta Del_ice', 'n'),
(64, 'Karta Poni_ve', 'k'),
(65, 'Karta Ma_ja Vas', 'n'),
(66, 'Karta Star_a', 'č'),
(67, 'Karta Bu_dek', 'n'),
(68, 'Karta Klju_ić brdo', 'č'),
(69, 'Karta Cr_i Lug', 'n'),
(70, 'Karta Golu_injak', 'b'),
(71, 'Karta Ma_uševec', 'r'),
(72, 'Karta D_lje', 'o'),
(73, 'Karta K_aljev Vrh', 'r'),
(74, 'Karta Tra_ošćan', 'k'),
(75, 'Karta Pre_rada', 'g'),
(76, 'Karta Vara_dinske Toplice', 'ž'),
(77, 'Karta Lu_ec', 'ž'),
(78, 'Karta Gra_erje', 'b'),
(79, 'Karta Peri_oj Zrinskih', 'v'),
(80, 'Karta Gornji Mi_aljevec', 'h'),
(81, 'Karta Se_nica', 'l'),
(82, 'Karta Sveti Ma_tin', 'r'),
(83, 'Karta Pra_orčan', 'p'),
(84, 'Karta Bu_ovec', 'k'),
(85, 'Karta Frka_ovec', 'n'),
(86, 'Karta Ka_enitovac', 'm'),
(87, 'Karta Oma_ovac', 'n'),
(88, 'Karta Jan_ovac', 'k'),
(89, 'Karta Na_ice', 'š'),
(90, 'Karta Naši_ka planina', 'č'),
(91, 'Karta Beli Ma_astir', 'n'),
(92, 'Karta Zla_no brdo', 't'),
(93, 'Karta Osi_ek', 'j'),
(94, 'Karta Cu_ek', 'r'),
(95, 'Karta Du_i breg', 'g'),
(96, 'Karta Karlovac Ar_oretum', 'b'),
(97, 'Karta Ro_anac', 'g'),
(98, 'Karta Bra_je vrh', 'n'),
(99, 'Karta Po_ravnice', 'd'),
(100, 'Karta Š_rpet', 't'),
(101, 'Karta Samo_or', 'b'),
(102, 'Karta Park Er_ödy', 'd'),
(103, 'Karta Lu_avac', 'k'),
(104, 'Karta Ja_ovlje', 'k'),
(105, 'Karta Le_njaki', 'š'),
(106, 'Karta So_arske šume', 'l'),
(107, 'Karta Svetvin_enat', 'č'),
(108, 'Karta Oso_lje', 'v'),
(109, 'Karta Ja_etić', 'p'),
(110, 'Karta Mo_rica', 'k'),
(111, 'Karta Pla_ak', 't'),
(112, 'Karta Li_idraga', 'v'),
(113, 'Karta Tra_untana', 'm'),
(114, 'Karta Plitvič_a jezera', 'k'),
(115, 'Karta Mu_inje', 'k'),
(116, 'Karta Po_tira', 's'),
(117, 'Karta Orlo_ice', 'v'),
(118, 'Karta Jar_n', 'u'),
(119, 'Karta Tu_kanac', 'š'),
(120, 'Karta S_ubičke Toplice', 't'),
(121, 'Park prirode Telaš_ica', 'ć'),
(122, 'Park prirode Pa_uk', 'p'),
(123, 'Park prirode La_tovsko otočje', 's'),
(124, 'Park prirode Uč_a', 'k'),
(125, 'Nacionalni park Kor_ati', 'n'),
(126, 'Park prirode Vele_it', 'b'),
(127, 'Nacionalni park Sje_erni Velebit', 'v'),
(128, 'Nacionalni park _ljet', 'M'),
(129, 'Nacionalni park Pli_vička jezera', 't'),
(130, 'Nacionalni park _isnjak', 'R'),
(131, 'Park prirode Vrans_o jezero', 'k'),
(132, 'Park prirode B_okovo', 'i'),
(133, 'Park prirode Lonj_ko polje', 's'),
(134, 'Nacionalni park Kr_a', 'k'),
(135, 'Park prirode Žu_berak', 'm'),
(136, 'Park prirode Samo_orsko gorje', 'b'),
(137, 'Nacionalni park Bri_uni', 'j'),
(138, 'Nacionalni park Pak_enica', 'l'),
(139, 'Park prirode Med_ednica', 'v'),
(140, 'Park prirode Ko_aćki rit', 'p');

-- --------------------------------------------------------

--
-- Table structure for table `dnevnik`
--

CREATE TABLE `dnevnik` (
  `id` int(11) NOT NULL,
  `trenutak` datetime NOT NULL,
  `korisnik_id` int(11) NOT NULL,
  `aktivnost_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dnevnik`
--

INSERT INTO `dnevnik` (`id`, `trenutak`, `korisnik_id`, `aktivnost_id`) VALUES
(1, '2021-02-26 00:00:00', 625292874, 1),
(2, '2021-04-02 20:15:08', 625292874, 7),
(3, '2021-04-02 20:16:38', 625292874, 2),
(4, '2021-04-02 20:29:23', 625292874, 2),
(5, '2021-04-02 20:29:44', 625292874, 3),
(6, '2021-04-02 20:43:15', 470642355, 7),
(7, '2021-04-02 21:59:42', 470642355, 24),
(8, '2021-04-02 22:07:50', 625292874, 2),
(9, '2021-04-02 22:12:14', 625292874, 2),
(10, '2021-04-02 22:20:44', 625292874, 2),
(11, '2021-04-02 22:26:04', 625292874, 2),
(12, '2021-04-02 22:29:21', 625292874, 2),
(13, '2021-04-02 22:34:18', 625292874, 2),
(14, '2021-04-02 22:36:21', 625292874, 2),
(15, '2021-04-02 22:39:18', 625292874, 2),
(16, '2021-04-02 22:41:32', 625292874, 2),
(17, '2021-04-02 22:41:41', 470642355, 24),
(18, '2021-04-02 22:42:32', 470642355, 24),
(19, '2021-04-02 22:44:54', 470642355, 24),
(20, '2021-04-02 22:45:44', 470642355, 24),
(21, '2021-04-02 22:52:37', 470642355, 24),
(22, '2021-04-02 22:53:06', 470642355, 24),
(23, '2021-04-02 23:08:31', 625292874, 2),
(24, '2021-04-02 23:09:56', 625292874, 2),
(25, '2021-04-02 23:12:37', 625292874, 2),
(26, '2021-04-02 23:14:00', 625292874, 2),
(27, '2021-04-02 23:15:25', 625292874, 2),
(28, '2021-04-02 23:16:57', 625292874, 2),
(29, '2021-04-02 23:19:01', 625292874, 2),
(30, '2021-04-02 23:21:39', 625292874, 22),
(31, '2021-04-02 23:27:35', 625292874, 2),
(32, '2021-04-02 23:30:17', 625292874, 2),
(33, '2021-04-02 23:34:13', 625292874, 2),
(34, '2021-04-02 23:35:49', 310908224, 7),
(35, '2021-04-02 23:35:49', 630218833, 7),
(36, '2021-04-02 23:37:38', 310908224, 22),
(37, '2021-04-02 23:37:57', 630218833, 22),
(38, '2021-04-02 23:38:32', 630218833, 22),
(39, '2021-04-02 23:38:51', 630218833, 22),
(40, '2021-04-02 23:39:14', 630218833, 22),
(41, '2021-04-02 23:39:29', 630218833, 22),
(42, '2021-04-02 23:39:45', 630218833, 22),
(43, '2021-04-02 23:40:00', 630218833, 22),
(44, '2021-04-02 23:40:16', 630218833, 22),
(45, '2021-04-02 23:40:41', 630218833, 22),
(46, '2021-04-02 23:40:51', 310908224, 22),
(47, '2021-04-02 23:41:04', 630218833, 22),
(48, '2021-04-02 23:41:18', 310908224, 22),
(49, '2021-04-02 23:41:44', 630218833, 22),
(50, '2021-04-02 23:41:46', 310908224, 22),
(51, '2021-04-02 23:42:03', 630218833, 22),
(52, '2021-04-02 23:42:32', 310908224, 22),
(53, '2021-04-02 23:42:54', 310908224, 22),
(54, '2021-04-02 23:45:56', 310908224, 22),
(55, '2021-04-02 23:46:33', 630218833, 24),
(56, '2021-04-02 23:46:59', 630218833, 24),
(57, '2021-04-02 23:48:21', 630218833, 24),
(58, '2021-04-02 23:49:30', 630218833, 24),
(59, '2021-04-02 23:49:46', 630218833, 24),
(60, '2021-04-02 23:50:08', 630218833, 24),
(61, '2021-04-02 23:50:34', 630218833, 24),
(62, '2021-04-02 23:50:47', 630218833, 24),
(63, '2021-04-02 23:51:05', 310908224, 22),
(64, '2021-04-02 23:51:19', 630218833, 24),
(65, '2021-04-02 23:51:28', 310908224, 22),
(66, '2021-04-02 23:51:54', 310908224, 22),
(67, '2021-04-02 23:52:24', 310908224, 22),
(68, '2021-04-02 23:52:53', 310908224, 22),
(69, '2021-04-02 23:53:11', 630218833, 24),
(70, '2021-04-02 23:53:36', 630218833, 24),
(71, '2021-04-02 23:54:05', 630218833, 24),
(72, '2021-04-02 23:54:25', 630218833, 24),
(73, '2021-04-02 23:54:40', 630218833, 24),
(74, '2021-04-02 23:54:56', 630218833, 24),
(75, '2021-04-02 23:55:16', 310908224, 22),
(76, '2021-04-02 23:55:44', 630218833, 24),
(77, '2021-04-02 23:56:46', 310908224, 22),
(78, '2021-04-02 23:56:54', 630218833, 24),
(79, '2021-04-02 23:57:05', 630218833, 24),
(80, '2021-04-02 23:57:29', 630218833, 24),
(81, '2021-04-02 23:57:47', 630218833, 24),
(82, '2021-04-02 23:58:03', 630218833, 24),
(83, '2021-04-02 23:58:23', 630218833, 24),
(84, '2021-04-02 23:58:37', 630218833, 24),
(85, '2021-04-02 23:58:56', 630218833, 24),
(86, '2021-04-02 23:59:20', 630218833, 24),
(87, '2021-04-02 23:59:32', 630218833, 24),
(88, '2021-04-02 23:59:44', 630218833, 24),
(89, '2021-04-03 00:00:05', 630218833, 24),
(90, '2021-04-03 00:00:16', 630218833, 24),
(91, '2021-04-03 00:00:29', 630218833, 24),
(92, '2021-04-03 00:01:29', 630218833, 24),
(93, '2021-04-03 00:01:39', 630218833, 24),
(94, '2021-04-03 00:02:16', 310908224, 22),
(95, '2021-04-03 00:02:43', 310908224, 22),
(96, '2021-04-03 00:03:04', 310908224, 22),
(97, '2021-04-03 00:03:27', 310908224, 22),
(98, '2021-04-03 00:03:47', 310908224, 22),
(99, '2021-04-03 00:04:12', 310908224, 22),
(100, '2021-04-03 00:04:33', 310908224, 22),
(101, '2021-04-03 00:04:56', 310908224, 22),
(102, '2021-04-03 00:05:02', 630218833, 21),
(103, '2021-04-03 00:05:24', 310908224, 22),
(104, '2021-04-03 00:05:49', 310908224, 22),
(105, '2021-04-03 00:06:10', 310908224, 22),
(106, '2021-04-03 00:06:31', 310908224, 22),
(107, '2021-04-03 00:09:26', 310908224, 22),
(108, '2021-04-03 00:09:48', 310908224, 22),
(109, '2021-04-03 00:10:04', 630218833, 21),
(110, '2021-04-03 00:10:39', 630218833, 21),
(111, '2021-04-03 00:11:10', 630218833, 21),
(112, '2021-04-03 00:11:38', 630218833, 21),
(113, '2021-04-03 00:12:05', 630218833, 21),
(114, '2021-04-03 00:12:35', 630218833, 21),
(115, '2021-04-03 00:13:02', 630218833, 21),
(116, '2021-04-03 00:13:08', 310908224, 21),
(117, '2021-04-03 00:13:37', 630218833, 21),
(118, '2021-04-03 00:15:20', 630218833, 21),
(119, '2021-04-03 00:15:24', 310908224, 21),
(120, '2021-04-03 00:15:52', 630218833, 21),
(121, '2021-04-03 00:16:21', 630218833, 21),
(122, '2021-04-03 00:16:51', 630218833, 21),
(123, '2021-04-03 00:17:30', 630218833, 21),
(124, '2021-04-03 00:17:37', 310908224, 21),
(125, '2021-04-03 00:18:57', 630218833, 21),
(126, '2021-04-03 00:19:21', 630218833, 21),
(127, '2021-04-03 00:19:52', 630218833, 21),
(128, '2021-04-03 00:20:07', 310908224, 21),
(129, '2021-04-03 00:20:18', 630218833, 21),
(130, '2021-04-03 00:20:46', 630218833, 21),
(131, '2021-04-03 00:21:16', 630218833, 21),
(132, '2021-04-03 00:22:47', 310908224, 21),
(133, '2021-04-03 00:23:24', 630218833, 24),
(134, '2021-04-03 00:23:34', 630218833, 24),
(135, '2021-04-03 00:23:44', 630218833, 24),
(136, '2021-04-03 00:23:59', 630218833, 24),
(137, '2021-04-03 00:24:07', 630218833, 24),
(138, '2021-04-03 00:24:21', 630218833, 24),
(139, '2021-04-03 00:24:37', 630218833, 24),
(140, '2021-04-03 00:24:46', 630218833, 24),
(141, '2021-04-03 00:24:51', 310908224, 22),
(142, '2021-04-03 00:25:01', 630218833, 24),
(143, '2021-04-03 00:25:15', 630218833, 24),
(144, '2021-04-03 00:25:26', 630218833, 24),
(145, '2021-04-03 00:25:40', 630218833, 24),
(146, '2021-04-03 00:25:48', 630218833, 24),
(147, '2021-04-03 00:26:00', 630218833, 24),
(148, '2021-04-03 00:26:19', 630218833, 24),
(149, '2021-04-03 00:26:30', 630218833, 24),
(150, '2021-04-03 00:26:53', 630218833, 24),
(151, '2021-04-03 00:27:03', 630218833, 24),
(152, '2021-04-03 00:27:15', 630218833, 24),
(153, '2021-04-03 00:27:25', 630218833, 24),
(154, '2021-04-03 00:33:34', 310908224, 21),
(155, '2021-04-03 00:34:30', 630218833, 24),
(156, '2021-04-03 00:34:52', 630218833, 24),
(157, '2021-04-03 00:41:09', 310908224, 21),
(158, '2021-04-03 01:01:23', 310908224, 21),
(159, '2021-04-03 01:04:24', 310908224, 21),
(160, '2021-04-03 01:07:02', 310908224, 21),
(161, '2021-04-03 01:11:49', 310908224, 21),
(162, '2021-04-03 01:12:06', 741617154, 7);

-- --------------------------------------------------------

--
-- Table structure for table `dob`
--

CREATE TABLE `dob` (
  `id` tinyint(4) NOT NULL,
  `naziv` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `granica` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `oznaka` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `min_dob` tinyint(4) NOT NULL,
  `max_dob` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dob`
--

INSERT INTO `dob` (`id`, `naziv`, `granica`, `oznaka`, `min_dob`, `max_dob`) VALUES
(1, 'seniori/ke', 'slobodno', '-', 21, 34),
(2, 'juniori/ke', 'gornja', 'max', 1, 20),
(3, 'veterani/ke', 'donja', 'min', 35, 120);

-- --------------------------------------------------------

--
-- Table structure for table `drzava`
--

CREATE TABLE `drzava` (
  `id` tinyint(4) NOT NULL,
  `naziv` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `oznaka` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `drzava`
--

INSERT INTO `drzava` (`id`, `naziv`, `oznaka`) VALUES
(1, 'Hrvatska', 'Cro'),
(2, 'Slovenija', 'Slo'),
(3, 'Mađarska', 'Hun'),
(4, 'Austrija', 'Aut');

-- --------------------------------------------------------

--
-- Table structure for table `grana`
--

CREATE TABLE `grana` (
  `id` tinyint(4) NOT NULL,
  `oznaka` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `naziv` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ikona` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `grana`
--

INSERT INTO `grana` (`id`, `oznaka`, `naziv`, `ikona`) VALUES
(1, 'OT', 'Orijentacijsko trčanje', 'TrkO.png'),
(2, 'PreO', 'Precizna orijentacija', 'PreO.png'),
(3, 'MtbO', 'Orijentacija brdskim biciklima', 'MtbO.png');

-- --------------------------------------------------------

--
-- Table structure for table `identitet`
--

CREATE TABLE `identitet` (
  `id` tinyint(4) NOT NULL,
  `oznaka` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `naziv` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `identitet`
--

INSERT INTO `identitet` (`id`, `oznaka`, `naziv`) VALUES
(1, 'dom', 'Preslika domovnice'),
(2, 'oi', 'Preslika osobne iskaznice'),
(3, 'e-dom', 'PDF e-domovnice');

-- --------------------------------------------------------

--
-- Table structure for table `imeprezime`
--

CREATE TABLE `imeprezime` (
  `id` int(11) NOT NULL,
  `osoba_id` int(11) DEFAULT NULL,
  `rbr` tinyint(4) NOT NULL,
  `ime` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `prezime` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `klub_id` smallint(6) DEFAULT NULL,
  `identitet_id` tinyint(4) DEFAULT NULL,
  `sintaksa_id` tinyint(4) NOT NULL,
  `info` varchar(120) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `aktivno` bit(1) NOT NULL,
  `dnevnik_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `imeprezime`
--

INSERT INTO `imeprezime` (`id`, `osoba_id`, `rbr`, `ime`, `prezime`, `klub_id`, `identitet_id`, `sintaksa_id`, `info`, `aktivno`, `dnevnik_id`) VALUES
(1001, 1001, 1, 'Alberto', 'Selandari', 12, NULL, 1, NULL, b'1', 1),
(1002, 1002, 1, 'Aleks', 'Ivanov', 12, NULL, 1, NULL, b'1', 1),
(1003, 1003, 1, 'Aleksandar', 'Brborović', 12, NULL, 1, NULL, b'1', 1),
(1004, 1004, 1, 'Aleksandra', 'Žagar', 12, NULL, 1, NULL, b'1', 1),
(1005, 1005, 1, 'Alma', 'Cacan', 12, NULL, 1, NULL, b'1', 1),
(1006, 1006, 1, 'Anamarija', 'Artić', 12, NULL, 1, NULL, b'1', 1),
(1007, 1007, 1, 'Andrea', 'Jambrosić Sakoman', 12, NULL, 1, NULL, b'1', 1),
(1008, 1008, 1, 'Anđelka', 'Stih', 12, NULL, 1, NULL, b'1', 1),
(1009, 1009, 1, 'Anita', 'Bilandžić', 12, NULL, 1, NULL, b'1', 1),
(1010, 1010, 1, 'Anita', 'Kristian', 12, NULL, 1, NULL, b'1', 1),
(1011, 1011, 1, 'Damir', 'Žagar', 12, NULL, 1, NULL, b'1', 1),
(1012, 1012, 1, 'Dejan', 'Šimičević', 12, NULL, 1, NULL, b'1', 1),
(1013, 1013, 1, 'Domagoj', 'Levanić', 12, NULL, 1, NULL, b'1', 1),
(1014, 1014, 1, 'Gerrit', 'Riet, van de', 6, NULL, 1, 'NL-093482747', b'1', 1),
(1015, 1015, 1, 'Goran', 'Ferić', 12, NULL, 1, NULL, b'1', 1),
(1016, 1016, 1, 'Goran', 'Marović', 12, NULL, 1, NULL, b'1', 1),
(1017, 1017, 1, 'Goran', 'Novak', 12, NULL, 1, NULL, b'1', 1),
(1018, 1018, 1, 'Jelena', 'Manzin Ištvanović', 12, NULL, 1, NULL, b'1', 1),
(1019, 1019, 1, 'Jelena', 'Perić', 5, NULL, 1, NULL, b'1', 1),
(1020, 1020, 1, 'Jorge', 'Salgado', 12, NULL, 1, '2321742 - os.isk', b'1', 1),
(1021, 1021, 1, 'Maja', 'Flajsig', 12, NULL, 1, NULL, b'1', 1),
(1022, 1022, 1, 'Max', 'Omerzu', 12, NULL, 1, NULL, b'1', 1),
(1023, 1023, 1, 'Mirjana', 'Čavlina', 12, NULL, 1, NULL, b'1', 1),
(1024, 1024, 1, 'Nika', 'Hajak', 12, NULL, 1, NULL, b'1', 1),
(1025, 1025, 1, 'Nika', 'Jurić', 12, NULL, 1, NULL, b'1', 1),
(1026, 1026, 1, 'Nina', 'Kale', 12, NULL, 1, NULL, b'1', 1),
(1027, 1027, 1, 'Nives', 'Špoljar', 12, NULL, 1, NULL, b'1', 1),
(1028, 1028, 1, 'Oliver', 'Skočić', 12, NULL, 1, NULL, b'1', 1),
(1029, 1029, 1, 'Petra', 'Laškarin', 12, NULL, 1, NULL, b'1', 1),
(1030, 1030, 1, 'Silvija', 'Perak', 12, NULL, 1, NULL, b'1', 1),
(1031, 1031, 1, 'Stjepan', 'Sučić', 12, NULL, 1, NULL, b'1', 1),
(1032, 1032, 1, 'Suzana', 'Stanić', 5, NULL, 1, NULL, b'1', 1),
(1033, 1033, 1, 'Tina', 'Sojat', 12, NULL, 1, NULL, b'1', 1),
(1034, 1034, 1, 'Tomislav', 'Lopandić', 12, NULL, 1, NULL, b'1', 1),
(1035, 1035, 1, 'Tony', 'Udris', 11, NULL, 1, 'Broj putovnice: 531685850', b'1', 1),
(1036, 1036, 1, 'Valentino', 'Stipčević', 12, NULL, 1, NULL, b'1', 1),
(1037, 1037, 1, 'Vesna', 'Žarak', 12, NULL, 1, NULL, b'1', 1),
(1038, 1038, 1, 'Zoran', 'Pajnić', 12, NULL, 1, NULL, b'1', 1),
(1039, 1039, 1, 'Mirja', 'Pavić', 3, NULL, 1, NULL, b'1', 1),
(1040, 1040, 1, 'Borna', 'Miljković', 12, NULL, 1, NULL, b'1', 1),
(1041, 1041, 1, 'Marta', 'Nikolić', 12, NULL, 1, NULL, b'1', 1),
(1042, 1042, 1, 'Ema', 'Tutić', 12, NULL, 1, NULL, b'1', 1),
(1043, 1043, 1, 'Senija', 'Zadravec-Kermek', 2, NULL, 1, NULL, b'1', 1),
(1044, 1044, 1, 'Zlatko', 'Pap', 11, NULL, 1, NULL, b'1', 1),
(1045, 1045, 1, 'Mirjana', 'Gojmerac', 2, NULL, 1, NULL, b'1', 1),
(1046, 1046, 1, 'Ana', 'Smuđ', 11, NULL, 1, NULL, b'1', 1),
(1047, 1047, 1, 'Paola', 'Rako', 12, NULL, 1, NULL, b'1', 1),
(1048, 1048, 1, 'Kristina', 'Beljan', 12, NULL, 1, NULL, b'1', 1),
(1049, 1049, 1, 'Jelena', 'Slijepčević', 12, NULL, 1, NULL, b'1', 1),
(1050, 1050, 1, 'Adam', 'Anadolac', 11, NULL, 1, NULL, b'1', 1),
(1051, 1051, 1, 'Antonela', 'Vidović', 11, NULL, 1, NULL, b'1', 1),
(1052, 1052, 1, 'Tihomir', 'Dugi', 5, NULL, 1, NULL, b'1', 1),
(1053, 1053, 1, 'Srebrenka', 'Vuk', 5, NULL, 1, NULL, b'1', 1),
(1054, 1054, 1, 'Matko', 'Nikolić', 12, NULL, 1, NULL, b'1', 1),
(1055, 1055, 1, 'Luna', 'Bajrektarević', 12, NULL, 1, NULL, b'1', 1),
(1056, 1056, 1, 'Vedran', 'Berković', 5, NULL, 1, NULL, b'1', 1),
(1057, 1057, 1, 'Mikula', 'Mazić', 12, NULL, 1, '2007.', b'1', 1),
(1058, 1058, 1, 'Zlatko', 'Sirovec', 12, NULL, 1, NULL, b'1', 1),
(1059, 1059, 1, 'Višnja', 'Dukić', 5, NULL, 1, NULL, b'1', 1),
(1060, 1060, 1, 'Radovan', 'Čepelak', 6, NULL, 1, NULL, b'1', 1),
(1061, 1061, 1, 'Vladimir', 'Ževrnja', 5, NULL, 1, NULL, b'1', 1),
(1062, 1062, 1, 'Fabiana', 'Cini', 6, NULL, 1, NULL, b'1', 1),
(1063, 1063, 1, 'Lovorka', 'Čaja', 12, NULL, 1, NULL, b'1', 1),
(1064, 1064, 1, 'Predrag', 'Markulinčić', 7, NULL, 1, NULL, b'1', 1),
(1065, 1065, 1, 'Željka', 'Miljković', 12, NULL, 1, NULL, b'1', 1),
(1066, 1066, 1, 'Ante', 'Radoš', 12, NULL, 1, NULL, b'1', 1),
(1067, 1067, 1, 'Davorka', 'Srebačić', 11, NULL, 1, NULL, b'1', 1),
(1068, 1068, 1, 'Marin', 'Rogulj', 12, NULL, 1, NULL, b'1', 1),
(1069, 1069, 1, 'Boris', 'Kukec', 12, NULL, 1, NULL, b'1', 1),
(1070, 1070, 1, 'Nataša', 'Kolarek', 12, NULL, 1, NULL, b'1', 1),
(1071, 1071, 1, 'Oleg', 'Celić', 12, NULL, 1, NULL, b'1', 1),
(1072, 1072, 1, 'Vlatko', 'Tounec', 5, NULL, 1, NULL, b'1', 1),
(1073, 1073, 1, 'Nino', 'Piskač', 11, NULL, 1, NULL, b'1', 1),
(1074, 1074, 1, 'Anita', 'Radoš', 12, NULL, 1, NULL, b'1', 1),
(1075, 1075, 1, 'Mladen', 'Vukmanović', 5, NULL, 1, NULL, b'1', 1),
(1076, 1076, 1, 'Nevena', 'Letica', 12, NULL, 1, NULL, b'1', 1),
(1077, 1077, 1, 'Slobodan', 'Sokolović', 1, NULL, 1, NULL, b'1', 1),
(1078, 1078, 1, 'Željko', 'Antolić', 7, NULL, 1, NULL, b'1', 1),
(1079, 1079, 1, 'Ivan', 'Pasquino', 11, NULL, 1, NULL, b'1', 1),
(1080, 1080, 1, 'Darinka', 'Lovrec', 12, NULL, 1, NULL, b'1', 1),
(1081, 1081, 1, 'Vedran', 'Kaldi', 5, NULL, 1, NULL, b'1', 1),
(1082, 1082, 1, 'Miran', 'Košćica', 4, NULL, 1, NULL, b'1', 1),
(1083, 1083, 1, 'Fabijan', 'Vidaković', 5, NULL, 1, NULL, b'1', 1),
(1084, 1084, 1, 'Eva', 'Ocvirk', 3, NULL, 1, NULL, b'1', 1),
(1085, 1085, 1, 'Teo', 'Friščić', 11, NULL, 1, NULL, b'1', 1),
(1086, 1086, 1, 'Matea', 'Sršen', 12, NULL, 1, NULL, b'1', 1),
(1087, 1087, 1, 'Nada', 'Baturina', 5, NULL, 1, NULL, b'1', 1),
(1088, 1088, 1, 'Fran', 'Juriša', 3, NULL, 1, NULL, b'1', 1),
(1089, 1089, 1, 'Dario', 'Vodopija', 5, NULL, 1, NULL, b'1', 1),
(1090, 1090, 1, 'Vladimir', 'Tkalec', 7, NULL, 1, NULL, b'1', 1),
(1091, 1091, 1, 'Roko', 'Vukić', 6, NULL, 1, NULL, b'1', 1),
(1092, 1092, 1, 'Lucija', 'Milas', 5, NULL, 1, NULL, b'1', 1),
(1093, 1093, 1, 'Elena', 'Košćak', 11, NULL, 1, NULL, b'1', 1),
(1094, 1094, 1, 'Vinka', 'Vukmanović', 5, NULL, 1, NULL, b'1', 1),
(1095, 1095, 1, 'Teo', 'Mahović', 3, NULL, 1, NULL, b'1', 1),
(1096, 1096, 1, 'Miro', 'Borček', 11, NULL, 1, NULL, b'1', 1),
(1097, 1097, 1, 'Sanja', 'Ostroški', 11, NULL, 1, NULL, b'1', 1),
(1098, 1098, 1, 'Jure', 'Rako', 12, NULL, 1, NULL, b'1', 1),
(1099, 1099, 1, 'Krunoslav', 'Canjuga', 11, NULL, 1, NULL, b'1', 1),
(1100, 1100, 1, 'Martina', 'Triplat Horvat', 12, NULL, 1, NULL, b'1', 1),
(1101, 1101, 1, 'Petra', 'Vučinić', 4, NULL, 1, NULL, b'1', 1),
(1102, 1102, 1, 'Ivan', 'Salgado Vinter', 12, NULL, 1, '2005.', b'1', 1),
(1103, 1103, 1, 'Mario', 'Salgado Vinter', 12, NULL, 1, '2011.', b'1', 1),
(1104, 1104, 1, 'Tomo', 'Smital', 12, NULL, 1, NULL, b'1', 1),
(1105, 1105, 1, 'Jura', 'Kukec', 12, NULL, 1, NULL, b'1', 1),
(1106, 1106, 1, 'Filip', 'Anadolac', 11, NULL, 1, NULL, b'1', 1),
(1107, 1107, 1, 'Goran', 'Žalac', 4, NULL, 1, NULL, b'1', 1),
(1108, 1108, 1, 'Martin', 'Meštrović', 5, NULL, 1, NULL, b'1', 1),
(1109, 1109, 1, 'Saša', 'Horvat', 6, NULL, 1, NULL, b'1', 1),
(1110, 1110, 1, 'Luka', 'Oslaković', 4, NULL, 1, NULL, b'1', 1),
(1111, 1111, 1, 'Ivan', 'Šeperić-Grdiša', 4, NULL, 1, NULL, b'1', 1),
(1112, 1112, 1, 'Alex', 'Gulta', 12, NULL, 1, NULL, b'1', 1),
(1113, 1113, 1, 'Barbara', 'Arbanas', 12, NULL, 1, NULL, b'1', 1),
(1114, 1114, 1, 'Karlo', 'Težak', 12, NULL, 1, NULL, b'1', 1),
(1115, 1115, 1, 'Zdravko', 'Novosel', 4, NULL, 1, NULL, b'1', 1),
(1116, 1116, 1, 'Ozren', 'Pevec', 11, NULL, 1, NULL, b'1', 1),
(1117, 1117, 1, 'Marija', 'Štambuk', 2, NULL, 1, NULL, b'1', 1),
(1118, 1118, 1, 'Viktor', 'Pavić', 12, NULL, 1, NULL, b'1', 1),
(1119, 1119, 1, 'Marko', 'Tanković', 4, NULL, 1, NULL, b'1', 1),
(1120, 1120, 1, 'Igor', 'Vukmirović', 4, NULL, 1, NULL, b'1', 1),
(1121, 1121, 1, 'Morana', 'Ćuzela', 5, NULL, 1, NULL, b'1', 1),
(1122, 1122, 1, 'Ranko', 'Orehovec', 7, NULL, 1, NULL, b'1', 1),
(1123, 1123, 1, 'Magdalena', 'Čečura', 12, NULL, 1, NULL, b'1', 1),
(1124, 1124, 1, 'Tin', 'Kodba', 12, NULL, 1, NULL, b'1', 1),
(1125, 1125, 1, 'Ivan', 'Bublić', 5, NULL, 1, NULL, b'1', 1),
(1126, 1126, 1, 'Vladimir', 'Trivunović', 5, NULL, 1, NULL, b'1', 1),
(1127, 1127, 1, 'Dražen', 'Henc', 7, NULL, 1, NULL, b'1', 1),
(1128, 1128, 1, 'Marija', 'Jazvić Mioković', 5, NULL, 1, NULL, b'1', 1),
(1129, 1129, 1, 'Dora', 'Miljković', 4, NULL, 1, NULL, b'1', 1),
(1130, 1130, 1, 'Lobel', 'Horvat', 6, NULL, 1, NULL, b'1', 1),
(1131, 1131, 1, 'Tadej', 'Lešnjak', 11, NULL, 1, NULL, b'1', 1),
(1132, 1132, 1, 'Borna', 'Košćak', 11, NULL, 1, NULL, b'1', 1),
(1133, 1133, 1, 'Miroslav', 'Besten', 4, NULL, 1, NULL, b'1', 1),
(1134, 1134, 1, 'Andrej', 'Smerke', 6, NULL, 1, NULL, b'1', 1),
(1135, 1135, 1, 'Slađana', 'Lučić', 5, NULL, 1, NULL, b'1', 1),
(1136, 1136, 1, 'Maša', 'Mesić', 12, NULL, 1, NULL, b'1', 1),
(1137, 1137, 1, 'Dunja', 'Riet, van de', 6, NULL, 1, NULL, b'1', 1),
(1138, 1138, 1, 'Tomislav', 'Kaniški', 6, NULL, 1, NULL, b'1', 1),
(1139, 1139, 1, 'Frane', 'Marković', 3, NULL, 1, NULL, b'1', 1),
(1140, 1140, 1, 'Petra', 'Plevnik', 1, NULL, 1, NULL, b'1', 1),
(1141, 1141, 1, 'Melita', 'Sučić', 12, NULL, 1, NULL, b'1', 1),
(1142, 1142, 1, 'Željko', 'Vinšćak', 4, NULL, 1, NULL, b'1', 1),
(1143, 1143, 1, 'Andro Vladimir', 'Štambuk', 6, NULL, 1, NULL, b'1', 1),
(1144, 1144, 1, 'Ivan', 'Bilić', 2, NULL, 1, NULL, b'1', 1),
(1145, 1145, 1, 'Tomislav', 'Pavić', 12, NULL, 1, NULL, b'1', 1),
(1146, 1146, 1, 'Antonija', 'Hodak', 12, NULL, 1, NULL, b'1', 1),
(1147, 1147, 1, 'Emanuel', 'Rožić', 11, NULL, 1, NULL, b'1', 1),
(1148, 1148, 1, 'Iva', 'Tatić', 12, NULL, 1, NULL, b'1', 1),
(1149, 1149, 1, 'Ivan', 'Šantek', 11, NULL, 1, NULL, b'1', 1),
(1150, 1150, 1, 'Dragan', 'Kovačević', 5, NULL, 1, NULL, b'1', 1),
(1151, 1151, 1, 'Miroslav', 'Hainž', 11, NULL, 1, NULL, b'1', 1),
(1152, 1152, 1, 'Jasna', 'Mandac', 12, NULL, 1, NULL, b'1', 1),
(1153, 1153, 1, 'Filip', 'Gašparević', 12, NULL, 1, NULL, b'1', 1),
(1154, 1154, 1, 'Martina', 'Tutić', 12, NULL, 1, NULL, b'1', 1),
(1155, 1155, 1, 'Mirko', 'Tišljar', 8, NULL, 1, NULL, b'1', 1),
(1156, 1156, 1, 'Tonka', 'Rogulj', 12, NULL, 1, NULL, b'1', 1),
(1157, 1157, 1, 'Karlo', 'Filek', 12, NULL, 1, NULL, b'1', 1),
(1158, 1158, 1, 'Iva', 'Štambuk', 6, NULL, 1, NULL, b'1', 1),
(1159, 1159, 1, 'Grga', 'Fernežir', 3, NULL, 1, NULL, b'1', 1),
(1160, 1160, 1, 'Hana', 'Škugor', 3, NULL, 1, NULL, b'1', 1),
(1161, 1161, 1, 'Marko', 'Leljak', 7, NULL, 1, NULL, b'1', 1),
(1162, 1162, 1, 'Marin', 'Tanković', 4, NULL, 1, NULL, b'1', 1),
(1163, 1163, 1, 'Igor', 'Dorotić', 12, NULL, 1, NULL, b'1', 1),
(1164, 1164, 1, 'Dalibor', 'Stankovski', 4, NULL, 1, NULL, b'1', 1),
(1165, 1165, 1, 'Vibor', 'Strmečki', 6, NULL, 1, NULL, b'1', 1),
(1166, 1166, 1, 'Mladenka', 'Čuljak Gross', 5, NULL, 1, NULL, b'1', 1),
(1167, 1167, 1, 'Matija', 'Mesić', 12, NULL, 1, NULL, b'1', 1),
(1168, 1168, 1, 'Ines', 'Ostajmer', 12, NULL, 1, NULL, b'1', 1),
(1169, 1169, 1, 'Patrick', 'Milković', 3, NULL, 1, NULL, b'1', 1),
(1170, 1170, 1, 'Juraj', 'Vukelić', 6, NULL, 1, NULL, b'1', 1),
(1171, 1171, 1, 'Gregor', 'Janžek', 7, NULL, 1, NULL, b'1', 1),
(1172, 1172, 1, 'Karlo', 'Požgaj', 12, NULL, 1, NULL, b'1', 1),
(1173, 1173, 1, 'Noa', 'Kelc', 4, NULL, 1, NULL, b'1', 1),
(1174, 1174, 1, 'Mario', 'Lah', 11, NULL, 1, NULL, b'1', 1),
(1175, 1175, 1, 'Sandra', 'Bergant Vidaković', 5, NULL, 1, NULL, b'1', 1),
(1176, 1176, 1, 'Dominik', 'Klasić', 6, NULL, 1, NULL, b'1', 1),
(1177, 1177, 1, 'Tamara', 'Radulić Butorac', 12, NULL, 1, NULL, b'1', 1),
(1178, 1178, 1, 'Melissa', 'Drobić', 5, NULL, 1, NULL, b'1', 1),
(1179, 1179, 1, 'Emil', 'Anadolac', 11, NULL, 1, NULL, b'1', 1),
(1180, 1180, 1, 'Jan', 'Turković', 11, NULL, 1, NULL, b'1', 1),
(1181, 1181, 1, 'Nevija', 'Frajzman', 4, NULL, 1, NULL, b'1', 1),
(1182, 1182, 1, 'Ana', 'Krajnović', 12, NULL, 1, NULL, b'1', 1),
(1183, 1183, 1, 'Siniša', 'Mareković', 12, NULL, 1, NULL, b'1', 1),
(1184, 1184, 1, 'Irena', 'Kasaš Spasić', 5, NULL, 1, NULL, b'1', 1),
(1185, 1185, 1, 'Leonard', 'Požgaj', 12, NULL, 1, NULL, b'1', 1),
(1186, 1186, 1, 'Ema', 'Juričan', 11, NULL, 1, NULL, b'1', 1),
(1187, 1187, 1, 'Kira', 'Sršen Delgado', 12, NULL, 1, NULL, b'1', 1),
(1188, 1188, 1, 'Mladen', 'Jelić', 5, NULL, 1, NULL, b'1', 1),
(1189, 1189, 1, 'Ana-Marija', 'Pavić', 12, NULL, 1, NULL, b'1', 1),
(1190, 1190, 1, 'Ana', 'Markulin', 12, NULL, 1, NULL, b'1', 1),
(1191, 1191, 1, 'Noa', 'Kolarek', 12, NULL, 1, NULL, b'1', 1),
(1192, 1192, 1, 'Luka', 'Bahun', 7, NULL, 1, NULL, b'1', 1),
(1193, 1193, 1, 'Željka', 'Fištrek', 5, NULL, 1, NULL, b'1', 1),
(1194, 1194, 1, 'Lidija', 'Detić', 11, NULL, 1, NULL, b'1', 1),
(1195, 1195, 1, 'Luka', 'Filetin', 5, NULL, 1, NULL, b'1', 1),
(1196, 1196, 1, 'Robert', 'Belović', 7, NULL, 1, NULL, b'1', 1),
(1197, 1197, 1, 'Ivana', 'Zagrajski', 11, NULL, 1, NULL, b'1', 1),
(1198, 1198, 1, 'Iva', 'Jakopec', 3, NULL, 1, NULL, b'1', 1),
(1199, 1199, 1, 'Aleksandra', 'Brezovečki Biđin', 12, NULL, 1, NULL, b'1', 1),
(1200, 1200, 1, 'Mirjana', 'Mandić', 3, NULL, 1, NULL, b'1', 1),
(1201, 1201, 1, 'Vedran', 'Papa', 4, NULL, 1, NULL, b'1', 1),
(1202, 1202, 1, 'Margaux Marthe Marie', 'Grioche', 6, NULL, 1, NULL, b'1', 1),
(1203, 1203, 1, 'Lea Katarina', 'Gobec', 12, NULL, 1, NULL, b'1', 1),
(1204, 1204, 1, 'Wanda', 'Kovač', 5, NULL, 1, NULL, b'1', 1),
(1205, 1205, 1, 'Ivan', 'Gverić', 5, NULL, 1, NULL, b'1', 1),
(1206, 1206, 1, 'Branimir', 'Pongrac', 3, NULL, 1, NULL, b'1', 1),
(1207, 1207, 1, 'Teo', 'Mance', 12, NULL, 1, NULL, b'1', 1),
(1208, 1208, 1, 'Željko', 'Belaj', 1, NULL, 1, NULL, b'1', 1),
(1209, 1209, 1, 'Damir', 'Gobec', 12, NULL, 1, NULL, b'1', 1),
(1210, 1210, 1, 'Bruno', 'Vodopija', 11, NULL, 1, NULL, b'1', 1),
(1211, 1211, 1, 'Ivan Ivo', 'Penić', 5, NULL, 1, NULL, b'1', 1),
(1212, 1212, 1, 'Olga', 'Pajnić', 5, NULL, 1, NULL, b'1', 1),
(1213, 1213, 1, 'Luka', 'Požgaj', 12, NULL, 1, NULL, b'1', 1),
(1214, 1214, 1, 'Monika Martina', 'Sipina Halper', 4, NULL, 1, NULL, b'1', 1),
(1215, 1215, 1, 'Marta', 'Gojmerac', 2, NULL, 1, NULL, b'1', 1),
(1216, 1216, 1, 'Sanja', 'Krš', 12, NULL, 1, NULL, b'1', 1),
(1217, 1217, 1, 'Gabrijela', 'Baburek', 3, NULL, 1, NULL, b'1', 1),
(1218, 1218, 1, 'Ana', 'Rumiha', 12, NULL, 1, NULL, b'1', 1),
(1219, 1219, 1, 'Branko', 'Bernardić', 5, NULL, 1, NULL, b'1', 1),
(1220, 1220, 1, 'Tanja', 'Potrebica', 11, NULL, 1, NULL, b'1', 1),
(1221, 1221, 1, 'Vjeko', 'Mazić', 12, NULL, 1, '2009.', b'1', 1),
(1222, 1222, 1, 'Antea', 'Popović', 5, NULL, 1, NULL, b'1', 1),
(1223, 1223, 1, 'Vjeran', 'Horvat', 6, NULL, 1, NULL, b'1', 1),
(1224, 1224, 1, 'Marijan', 'Mirković', 12, NULL, 1, NULL, b'1', 1),
(1225, 1225, 1, 'Evelyn', 'Kraintz', 6, NULL, 1, NULL, b'1', 1),
(1226, 1226, 1, 'Rea', 'Boban', 2, NULL, 1, NULL, b'1', 1),
(1227, 1227, 1, 'Emilija', 'Ebenspanger', 5, NULL, 1, NULL, b'1', 1),
(1228, 1228, 1, 'Višnja', 'Kabalin Borenić', 6, NULL, 1, NULL, b'1', 1),
(1229, 1229, 1, 'Leire', 'Sršen Delgado', 12, NULL, 1, NULL, b'1', 1),
(1230, 1230, 1, 'Tea', 'Đurek', 12, NULL, 1, NULL, b'1', 1),
(1231, 1231, 1, 'Branka', 'Fabek', 3, NULL, 1, NULL, b'1', 1),
(1232, 1232, 1, 'Tamara', 'Kefeček', 5, NULL, 1, NULL, b'1', 1),
(1233, 1233, 1, 'Luka', 'Kosić', 3, NULL, 1, NULL, b'1', 1),
(1234, 1234, 1, 'Tomislav', 'Marjanović', 12, NULL, 1, NULL, b'1', 1),
(1235, 1235, 1, 'Julijana', 'Dolenc', 11, NULL, 1, NULL, b'1', 1),
(1236, 1236, 1, 'Lucija', 'Gojmerac', 2, NULL, 1, NULL, b'1', 1),
(1237, 1237, 1, 'Domagoj', 'Pavlin', 12, NULL, 1, NULL, b'1', 1),
(1238, 1238, 1, 'Dražen', 'Gadžić', 5, NULL, 1, NULL, b'1', 1),
(1239, 1239, 1, 'Hrvoje', 'Mirković', 12, NULL, 1, NULL, b'1', 1),
(1240, 1240, 1, 'Jasminka', 'Vlahović', 12, NULL, 1, NULL, b'1', 1),
(1241, 1241, 1, 'Petra', 'Martak', 11, NULL, 1, NULL, b'1', 1),
(1242, 1242, 1, 'Luka', 'Relić', 12, NULL, 1, NULL, b'1', 1),
(1243, 1243, 1, 'Nina', 'Mioković', 5, NULL, 1, NULL, b'1', 1),
(1244, 1244, 1, 'Viktoria', 'Šantić', 1, NULL, 1, NULL, b'1', 1),
(1245, 1245, 1, 'Rea', 'Vodopija', 11, NULL, 1, NULL, b'1', 1),
(1246, 1246, 1, 'Emerik', 'Večerić', 7, NULL, 1, NULL, b'1', 1),
(1247, 1247, 1, 'Filip', 'Cvetković', 3, NULL, 1, NULL, b'1', 1),
(1248, 1248, 1, 'Jelka', 'Penić', 12, NULL, 1, NULL, b'1', 1),
(1249, 1249, 1, 'Ivo', 'Tišljar', 8, NULL, 1, NULL, b'1', 1),
(1250, 1250, 1, 'Antun Zoran', 'Krivokapić', 6, NULL, 1, NULL, b'1', 1),
(1251, 1251, 1, 'Lovre', 'Mazić', 12, NULL, 1, '2011.', b'1', 1),
(1252, 1252, 1, 'Viktor Ignjat', 'Ivezić', 12, NULL, 1, NULL, b'1', 1),
(1253, 1253, 1, 'Zdravko', 'Crnković', 12, NULL, 1, NULL, b'1', 1),
(1254, 1254, 1, 'Daniel', 'Fabijanić', 4, NULL, 1, NULL, b'1', 1),
(1255, 1255, 1, 'Petra', 'Abramović', 12, NULL, 1, NULL, b'1', 1),
(1256, 1256, 1, 'Gabriel', 'Šiljevinac', 4, NULL, 1, NULL, b'1', 1),
(1257, 1257, 1, 'Petar', 'Strmečki', 6, NULL, 1, NULL, b'1', 1),
(1258, 1258, 1, 'Anja Vita', 'Ogorelec', 5, NULL, 1, NULL, b'1', 1),
(1259, 1259, 1, 'Majda', 'Vidaković', 5, NULL, 1, NULL, b'1', 1),
(1260, 1260, 1, 'Marta', 'Kiš', 12, NULL, 1, NULL, b'1', 1),
(1261, 1261, 1, 'Lana', 'Gerjević', 5, NULL, 1, NULL, b'1', 1),
(1262, 1262, 1, 'Vlatka', 'Stupalo', 12, NULL, 1, NULL, b'1', 1),
(1263, 1263, 1, 'Vid', 'Kodba', 12, NULL, 1, NULL, b'1', 1),
(1264, 1264, 1, 'Marko', 'Košturić', 4, NULL, 1, NULL, b'1', 1),
(1265, 1265, 1, 'Dorotea', 'Kutleša', 5, NULL, 1, NULL, b'1', 1),
(1266, 1266, 1, 'Domagoj', 'Šantić', 1, NULL, 1, NULL, b'1', 1),
(1267, 1267, 1, 'Jasminka', 'Cindrić Perković', 7, NULL, 1, NULL, b'1', 1),
(1268, 1268, 1, 'Marija', 'Gradečak Galović', 5, NULL, 1, NULL, b'1', 1),
(1269, 1269, 1, 'Antonija', 'Orlić', 1, NULL, 1, NULL, b'1', 1),
(1270, 1270, 1, 'Marija', 'Schubert', 11, NULL, 1, NULL, b'1', 1),
(1271, 1271, 1, 'Josip', 'Matijašić', 12, NULL, 1, NULL, b'1', 1),
(1272, 1272, 1, 'Nera', 'Krečak', 11, NULL, 1, NULL, b'1', 1),
(1273, 1273, 1, 'Anita', 'Sem', 12, NULL, 1, NULL, b'1', 1),
(1274, 1274, 1, 'Predrag', 'Labaš', 11, NULL, 1, NULL, b'1', 1),
(1275, 1275, 1, 'Marijana', 'Žgela Putniković', 5, NULL, 1, NULL, b'1', 1),
(1276, 1276, 1, 'Ana', 'Tišljar', 6, NULL, 1, NULL, b'1', 1),
(1277, 1277, 1, 'Jerko', 'Penić', 12, NULL, 1, NULL, b'1', 1),
(1278, 1278, 1, 'Lana', 'Žnidarić', 7, NULL, 1, NULL, b'1', 1),
(1279, 1279, 1, 'Vera', 'Franc', 5, NULL, 1, NULL, b'1', 1),
(1280, 1280, 1, 'Robert', 'Težak', 12, NULL, 1, NULL, b'1', 1),
(1281, 1281, 1, 'Vida', 'Rak', 11, NULL, 1, NULL, b'1', 1),
(1282, 1282, 1, 'Vladimir', 'Spasić', 5, NULL, 1, NULL, b'1', 1),
(1283, 1283, 1, 'Petar', 'Jurač', 12, NULL, 1, NULL, b'1', 1),
(1284, 1284, 1, 'Bože', 'Đipalo', 1, NULL, 1, NULL, b'1', 1),
(1285, 1285, 1, 'Luka', 'Gojmerac', 2, NULL, 1, NULL, b'1', 1),
(1286, 1286, 1, 'Tajana', 'Holjevac-Gagulić', 6, NULL, 1, NULL, b'1', 1),
(1287, 1287, 1, 'Ivana', 'Šestan Krajnović', 12, NULL, 1, NULL, b'1', 1),
(1288, 1288, 1, 'Dražen', 'Dervišević', 12, NULL, 1, NULL, b'1', 1),
(1289, 1289, 1, 'Tomislav', 'Varnica', 12, NULL, 1, NULL, b'1', 1),
(1290, 1290, 1, 'Jana', 'Markulinčić', 7, NULL, 1, NULL, b'1', 1),
(1291, 1291, 1, 'Dora', 'Težak', 12, NULL, 1, NULL, b'1', 1),
(1292, 1292, 1, 'Nola', 'Jandrečić', 3, NULL, 1, NULL, b'1', 1),
(1293, 1293, 1, 'Domagoj', 'Novosel', 4, NULL, 1, NULL, b'1', 1),
(1294, 1294, 1, 'Krunoslav', 'Peh', 5, NULL, 1, NULL, b'1', 1),
(1295, 1295, 1, 'Ivo', 'Krajnović', 12, NULL, 1, NULL, b'1', 1),
(1296, 1296, 1, 'Maja', 'Cvitković', 12, NULL, 1, NULL, b'1', 1),
(1297, 1297, 1, 'Timo Vilim', 'Gobec', 12, NULL, 1, NULL, b'1', 1),
(1298, 1298, 1, 'Tara', 'Sirovec', 12, NULL, 1, NULL, b'1', 1),
(1299, 1299, 1, 'Zvonko', 'Vodopija', 11, NULL, 1, NULL, b'1', 1),
(1300, 1300, 1, 'Domagoj', 'Delimar', 5, NULL, 1, NULL, b'1', 1),
(1301, 1301, 1, 'Kimi Maria', 'Gobec', 12, NULL, 1, NULL, b'1', 1),
(1302, 1302, 1, 'Domagoj', 'Malović', 5, NULL, 1, NULL, b'1', 1),
(1303, 1303, 1, 'Petar', 'Gojmerac', 2, NULL, 1, NULL, b'1', 1),
(1304, 1304, 1, 'Luka', 'Sučić', 12, NULL, 1, NULL, b'1', 1),
(1305, 1305, 1, 'Ana', 'Budi', 3, NULL, 1, NULL, b'1', 1),
(1306, 1306, 1, 'Vladimir', 'Vinko', 7, NULL, 1, NULL, b'1', 1),
(1307, 1307, 1, 'Sanjin', 'Drobić', 5, NULL, 1, NULL, b'1', 1),
(1308, 1308, 1, 'Noa', 'Turk', 7, NULL, 1, NULL, b'1', 1),
(1309, 1309, 1, 'Ivana', 'Gobec', 12, NULL, 1, NULL, b'1', 1),
(1310, 1310, 1, 'Siniša', 'Lah', 11, NULL, 1, NULL, b'1', 1),
(1311, 1311, 1, 'Antonio', 'Cindrić', 4, NULL, 1, NULL, b'1', 1),
(1312, 1312, 1, 'Franko', 'Bajlo', 5, NULL, 1, NULL, b'1', 1),
(1313, 1313, 1, 'Bojan', 'Vukelić', 6, NULL, 1, NULL, b'1', 1),
(1314, 1314, 1, 'Damir', 'Miljković', 4, NULL, 1, NULL, b'1', 1),
(1315, 1315, 1, 'Lovro', 'Pinjušić', 3, NULL, 1, NULL, b'1', 1),
(1316, 1316, 1, 'Daniela', 'Popović Budi', 3, NULL, 1, NULL, b'1', 1),
(1317, 1317, 1, 'Niko', 'Savović', 12, NULL, 1, NULL, b'1', 1),
(1318, 1318, 1, 'Dražen', 'Janžek', 7, NULL, 1, NULL, b'1', 1),
(1319, 1319, 1, 'Ivana', 'Ulrich Cvenić', 5, NULL, 1, NULL, b'1', 1),
(1320, 1320, 1, 'Neda', 'Punek Gobec', 12, NULL, 1, NULL, b'1', 1),
(1321, 1321, 1, 'Petar', 'Kaniški', 6, NULL, 1, NULL, b'1', 1),
(1322, 1322, 1, 'Sabina', 'Rako', 12, NULL, 1, NULL, b'1', 1),
(1323, 1323, 1, 'Zvonimir', 'Fernežir', 3, NULL, 1, NULL, b'1', 1),
(1324, 1324, 1, 'Biserka', 'Horvat-Nikšić', 12, NULL, 1, NULL, b'1', 1),
(1325, 1325, 1, 'Tomislav', 'Gojmerac', 2, NULL, 1, NULL, b'1', 1),
(1326, 1326, 1, 'Bernardica', 'Stipić', 12, NULL, 1, NULL, b'1', 1),
(1327, 1327, 1, 'Nikola', 'Petković', 7, NULL, 1, NULL, b'1', 1),
(1328, 1328, 1, 'Gordan', 'Mlinarić', 12, NULL, 1, NULL, b'1', 1),
(1329, 1329, 1, 'Magdalena', 'Težak', 12, NULL, 1, NULL, b'1', 1),
(1330, 1330, 1, 'Violeta', 'Čalić', 12, NULL, 1, NULL, b'1', 1),
(1331, 1331, 1, 'Aida', 'Krkić Drobić', 5, NULL, 1, NULL, b'1', 1),
(1332, 1332, 1, 'Žana', 'Rajić', 12, NULL, 1, NULL, b'1', 1),
(1333, 1333, 1, 'Ivica', 'Bertol', 12, NULL, 1, NULL, b'1', 1),
(1334, 1334, 1, 'Dalibor', 'Perković', 7, NULL, 1, NULL, b'1', 1),
(1335, 1335, 1, 'Stjepan', 'Canjuga', 11, NULL, 1, NULL, b'1', 1),
(1336, 1336, 1, 'Marijan', 'Turkalj', 12, NULL, 1, NULL, b'1', 1),
(1337, 1337, 1, 'Kyra', 'Krahenbuhl', 6, NULL, 1, NULL, b'1', 1),
(1338, 1338, 1, 'Dora', 'Delić', 4, NULL, 1, NULL, b'1', 1),
(1339, 1339, 1, 'Filip', 'Cesar', 12, NULL, 1, NULL, b'1', 1),
(1340, 1340, 1, 'Sanja', 'Penc', 12, NULL, 1, NULL, b'1', 1),
(1341, 1341, 1, 'Tomislav', 'Milašinčić', 4, NULL, 1, NULL, b'1', 1),
(1342, 1342, 1, 'Jakov', 'Boban', 2, NULL, 1, NULL, b'1', 1),
(1343, 1343, 1, 'Francisco', 'Delgado', 12, NULL, 1, NULL, b'1', 1),
(1344, 1344, 1, 'Helena', 'Dukić', 12, NULL, 1, NULL, b'1', 1),
(1345, 1345, 1, 'Tena', 'Sakar Vukić', 6, NULL, 1, NULL, b'1', 1),
(1346, 1346, 1, 'Ivana', 'Dolenac', 12, NULL, 1, NULL, b'1', 1),
(1347, 1347, 1, 'Nela', 'Gross', 5, NULL, 1, NULL, b'1', 1),
(1348, 1348, 1, 'Bruno', 'Stanković', 5, NULL, 1, NULL, b'1', 1),
(1349, 1349, 1, 'Mario', 'Štambuk', 6, NULL, 1, NULL, b'1', 1),
(1350, 1350, 1, 'Branimir', 'Putniković', 5, NULL, 1, NULL, b'1', 1),
(1351, 1351, 1, 'Lorena', 'Orešković', 6, NULL, 1, NULL, b'1', 1),
(1352, 1352, 1, 'Bruno', 'Blažinč', 12, NULL, 1, NULL, b'1', 1),
(1353, 1353, 1, 'Ines', 'Mance', 12, NULL, 1, NULL, b'1', 1),
(1354, 1354, 1, 'Mladen', 'Debić', 6, NULL, 1, NULL, b'1', 1),
(1355, 1355, 1, 'Damir', 'Tubin', 4, NULL, 1, NULL, b'1', 1),
(1356, 1356, 1, 'Luka', 'Novak', 7, NULL, 1, NULL, b'1', 1),
(1357, 1357, 1, 'Saša', 'Glagolić', 5, NULL, 1, NULL, b'1', 1),
(1358, 1358, 1, 'Krešo', 'Špoljar', 5, NULL, 1, NULL, b'1', 1),
(1359, 1359, 1, 'Danko', 'Pleše', 12, NULL, 1, NULL, b'1', 1),
(1360, 1360, 1, 'Iva', 'Lovrec', 12, NULL, 1, NULL, b'1', 1),
(1361, 1361, 1, 'Mihaela Marija', 'Perković', 12, NULL, 1, NULL, b'1', 1),
(1362, 1362, 1, 'Dorijan', 'Habek', 11, NULL, 1, NULL, b'1', 1),
(1363, 1363, 1, 'Darko', 'Raškaj', 5, NULL, 1, NULL, b'1', 1),
(1364, 1364, 1, 'Veronika', 'Šantić', 1, NULL, 1, NULL, b'1', 1),
(1365, 1365, 1, 'Željko', 'Koščak', 7, NULL, 1, NULL, b'1', 1),
(1366, 1366, 1, 'Valter', 'Sučić', 12, NULL, 1, NULL, b'1', 1),
(1367, 1367, 1, 'Tomislav', 'Meštrović', 5, NULL, 1, NULL, b'1', 1),
(1368, 1368, 1, 'Sanda', 'Berženji', 5, NULL, 1, NULL, b'1', 1),
(1369, 1369, 1, 'Doroteja', 'Držaić', 6, NULL, 1, NULL, b'1', 1),
(1370, 1370, 1, 'Lino', 'Legac', 3, NULL, 1, NULL, b'1', 1),
(1371, 1371, 1, 'Mirta', 'Hodak', 12, NULL, 1, NULL, b'1', 1),
(1372, 1372, 1, 'Mirka', 'Jakšić', 6, NULL, 1, NULL, b'1', 1),
(1373, 1373, 1, 'Maks', 'Bjelajac', 12, NULL, 1, NULL, b'1', 1),
(1374, 1374, 1, 'Duje', 'Rako', 12, NULL, 1, NULL, b'1', 1),
(1375, 1375, 1, 'Maja', 'Kušt', 12, NULL, 1, NULL, b'1', 1),
(1376, 1376, 1, 'Jelena', 'Brezak', 5, NULL, 1, NULL, b'1', 1),
(1377, 1377, 1, 'Ante', 'Jović', 7, NULL, 1, NULL, b'1', 1),
(1378, 1378, 1, 'Mare', 'Gršković', 5, NULL, 1, NULL, b'1', 1),
(1379, 1379, 1, 'Petar', 'Barulek', 11, NULL, 1, NULL, b'1', 1),
(1380, 1380, 1, 'Ana', 'Batinović', 12, NULL, 1, NULL, b'1', 1),
(1381, 1381, 1, 'Sabina', 'Seražin Korper', 4, NULL, 1, NULL, b'1', 1),
(1382, 1382, 1, 'Bepo', 'Željem', 5, NULL, 1, NULL, b'1', 1),
(1383, 1383, 1, 'Nika', 'Sakar', 6, NULL, 1, NULL, b'1', 1),
(1384, 1384, 1, 'Smiljana', 'Janžek', 7, NULL, 1, NULL, b'1', 1),
(1385, 1385, 1, 'Franjo', 'Budi', 3, NULL, 1, NULL, b'1', 1),
(1386, 1386, 1, 'Edo', 'Krš', 12, NULL, 1, NULL, b'1', 1),
(1387, 1387, 1, 'Vladimir', 'Grgesina', 12, NULL, 1, NULL, b'1', 1),
(1388, 1388, 1, 'Robert', 'Vuk', 5, NULL, 1, NULL, b'1', 1),
(1389, 1389, 1, 'Irena', 'Požgaj', 12, NULL, 1, NULL, b'1', 1),
(1390, 1390, 1, 'Lorena', 'Malec', 12, NULL, 1, NULL, b'1', 1),
(1391, 1391, 1, 'Daliborka', 'Pavlin', 12, NULL, 1, NULL, b'1', 1),
(1392, 1392, 1, 'Dora', 'Kermek', 2, NULL, 1, NULL, b'1', 1),
(1393, 1393, 1, 'Željko', 'Gobec', 12, NULL, 1, NULL, b'1', 1),
(1394, 1394, 1, 'Dragan', 'Janković', 12, NULL, 1, NULL, b'1', 1),
(1395, 1395, 1, 'Zvonimir', 'Mirković', 12, NULL, 1, NULL, b'1', 1),
(1396, 1396, 1, 'Marko', 'Omazić', 2, NULL, 1, NULL, b'1', 1),
(1397, 1397, 1, 'Karolina', 'Kukec', 12, NULL, 1, NULL, b'1', 1),
(1398, 1398, 1, 'Zvonko', 'Vidaković', 5, NULL, 1, NULL, b'1', 1),
(1399, 1399, 1, 'Saša', 'Horvat', 7, NULL, 1, NULL, b'1', 1),
(1400, 1400, 1, 'Tomislav', 'Kelemen', 7, NULL, 1, NULL, b'1', 1),
(1401, 1401, 1, 'Nika', 'Juričan', 11, NULL, 1, NULL, b'1', 1),
(1402, 1402, 1, 'Eva', 'Šantek', 11, NULL, 1, NULL, b'1', 1),
(1403, 1403, 1, 'Karmen', 'Holenda', 11, NULL, 1, NULL, b'1', 1),
(1404, 1404, 1, 'Greta', 'Kaniški', 6, NULL, 1, NULL, b'1', 1),
(1405, 1405, 1, 'Ana', 'Kovačić', 12, NULL, 1, NULL, b'1', 1),
(1406, 1406, 1, 'Ivana', 'Zeljko', 7, NULL, 1, NULL, b'1', 1),
(1407, 1407, 1, 'Milivoj', 'Uroić', 6, NULL, 1, NULL, b'1', 1),
(1408, 1408, 1, 'Filip', 'Marendić', 12, NULL, 1, NULL, b'1', 1),
(1409, 1409, 1, 'Goran', 'Habjanec', 12, NULL, 1, NULL, b'1', 1),
(1410, 1410, 1, 'Ira', 'Mareković', 12, NULL, 1, NULL, b'1', 1),
(1411, 1411, 1, 'Bruno', 'Mance', 12, NULL, 1, NULL, b'1', 1),
(1412, 1412, 1, 'Iva', 'Žulić', 12, NULL, 1, NULL, b'1', 1),
(1413, 1413, 1, 'Ana', 'Srebačić', 2, NULL, 1, NULL, b'0', 1),
(1414, 1414, 1, 'Mirta', 'Boban', 2, NULL, 1, NULL, b'1', 1),
(1415, 1415, 1, 'Nikica', 'Jokić', 12, NULL, 1, NULL, b'1', 1),
(1416, 1416, 1, 'Dragutin', 'Mulig', 4, NULL, 1, NULL, b'1', 1),
(1417, 1417, 1, 'Marina', 'Šojat', 5, NULL, 1, NULL, b'1', 1),
(1418, 1418, 1, 'Petar', 'Delić', 6, NULL, 1, NULL, b'1', 1),
(1419, 1419, 1, 'Luka', 'Kocijan', 11, NULL, 1, NULL, b'1', 1),
(1420, 1420, 1, 'Zdravko', 'Tonković', 5, NULL, 1, NULL, b'1', 1),
(1421, 1421, 1, 'Marijeta', 'Radman', 12, NULL, 1, NULL, b'1', 1),
(1422, 1422, 1, 'Tomislav', 'Mikić', 12, NULL, 1, NULL, b'1', 1),
(1423, 1423, 1, 'Eduard', 'Kožul', 12, NULL, 1, NULL, b'1', 1),
(1424, 1424, 1, 'Zdenka Petra', 'Štambuk', 2, NULL, 1, NULL, b'1', 1),
(1425, 1425, 1, 'Lucija', 'Detić', 11, NULL, 1, NULL, b'1', 1),
(1426, 1426, 1, 'Luka', 'Karavidović', 12, NULL, 1, NULL, b'1', 1),
(1427, 1427, 1, 'Mile', 'Boban', 2, NULL, 1, NULL, b'1', 1),
(1428, 1428, 1, 'Boris', 'Mazić', 12, NULL, 1, '1971.', b'1', 1),
(1429, 1429, 1, 'Alida', 'Sokolović', 1, NULL, 1, NULL, b'1', 1),
(1430, 1430, 1, 'Mile', 'Mioković', 5, NULL, 1, NULL, b'1', 1),
(1431, 1431, 1, 'Paula', 'Pavlin', 12, NULL, 1, NULL, b'1', 1),
(1432, 1432, 1, 'Marin', 'Mihinjač', 11, NULL, 1, NULL, b'1', 1),
(1433, 1433, 1, 'Alan', 'Požgaj', 12, NULL, 1, NULL, b'1', 1),
(1434, 1434, 1, 'Jakov', 'Lesjak', 3, NULL, 1, NULL, b'1', 1),
(1435, 1435, 1, 'Jelena', 'Gojmerac', 2, NULL, 1, NULL, b'1', 1),
(1436, 1436, 1, 'Ivana', 'Težak', 12, NULL, 1, NULL, b'1', 1),
(1437, 1437, 1, 'Pia', 'Hercigonja', 5, NULL, 1, NULL, b'1', 1),
(1438, 1438, 1, 'Petra', 'Dasović', 5, NULL, 1, NULL, b'1', 1),
(1439, 1439, 1, 'Laura', 'Kaniški', 6, NULL, 1, NULL, b'1', 1),
(1440, 1440, 1, 'Ema', 'Jurač', 12, NULL, 1, NULL, b'1', 1),
(1441, 1441, 1, 'Ema', 'Potrebica', 11, NULL, 1, NULL, b'1', 1),
(1442, 1442, 1, 'Dora', 'Vukelić', 6, NULL, 1, NULL, b'1', 1),
(1443, 1443, 1, 'Vladimir', 'Miovec', 4, NULL, 1, NULL, b'1', 1),
(1444, 1444, 1, 'Patrick', 'Burton', 12, NULL, 1, NULL, b'1', 1),
(1445, 1445, 1, 'Bojana', 'Nikolić', 12, NULL, 1, NULL, b'1', 1),
(1446, 1446, 1, 'Boško', 'Opalić', 12, NULL, 1, NULL, b'1', 1),
(1447, 1447, 1, 'Dražen', 'Tutić', 12, NULL, 1, NULL, b'1', 1),
(1448, 1448, 1, 'Tomislav', 'Vuk', 12, NULL, 1, NULL, b'1', 1),
(1449, 1449, 1, 'Roko', 'Željem', 5, NULL, 1, NULL, b'1', 1),
(1450, 1450, 1, 'Hrvoje', 'Dasović', 5, NULL, 1, NULL, b'1', 1),
(1451, 1451, 1, 'Borna', 'Kuzmanić', 3, NULL, 1, NULL, b'1', 1),
(1452, 1452, 1, 'Ivana', 'Tkalec', 7, NULL, 1, NULL, b'1', 1),
(1453, 1453, 1, 'Robert', 'Orehoci', 1, NULL, 1, NULL, b'1', 1),
(1454, 1454, 1, 'Kristina', 'Zubin', 12, NULL, 1, NULL, b'1', 1),
(1455, 1455, 1, 'Teo', 'Tutić', 12, NULL, 1, NULL, b'1', 1),
(1456, 1456, 1, 'Beatrice', 'Velimirović', 6, NULL, 1, NULL, b'1', 1),
(1457, 1457, 1, 'Marija', 'Sirovec', 12, NULL, 1, NULL, b'1', 1),
(1458, 1458, 1, 'Iva', 'Detić', 11, NULL, 1, NULL, b'1', 1),
(1459, 1459, 1, 'Matija', 'Razum', 3, NULL, 1, NULL, b'1', 1),
(1460, 1460, 1, 'Aleksandra', 'Miličević', 12, NULL, 1, NULL, b'1', 1),
(1461, 1461, 1, 'Gabrijel', 'Solenički', 4, NULL, 1, NULL, b'1', 1),
(1462, 1462, 1, 'Helena', 'Ćubela', 4, NULL, 1, NULL, b'1', 1),
(1463, 1463, 1, 'Melanija', 'Majer', 11, NULL, 1, NULL, b'1', 1),
(1464, 1464, 1, 'Luka', 'Hofman', 11, NULL, 1, NULL, b'1', 1),
(1465, 1465, 1, 'Olga', 'Jerković Perić', 5, NULL, 1, NULL, b'1', 1),
(1466, 1466, 1, 'Nikolina', 'Šantić', 1, NULL, 1, NULL, b'1', 1),
(1467, 1467, 1, 'Lucija', 'Hercigonja', 5, NULL, 1, NULL, b'1', 1),
(1468, 1468, 1, 'Ivor', 'Novosel', 12, NULL, 1, NULL, b'1', 1),
(1469, 1469, 1, 'Jelena', 'Lesjak', 3, NULL, 1, NULL, b'1', 1),
(1470, 1470, 1, 'Zvjezdana', 'Govedarica', 3, NULL, 1, NULL, b'1', 1),
(1471, 1471, 1, 'Davor', 'Čapeta', 5, NULL, 1, NULL, b'1', 1),
(1472, 1472, 1, 'Ana', 'Beblek', 4, NULL, 1, NULL, b'1', 1),
(1473, 1473, 1, 'Martina', 'Bedeković Tanković', 4, NULL, 1, NULL, b'1', 1),
(1474, 1474, 1, 'Karlo', 'Borisavljević', 12, NULL, 1, NULL, b'1', 1),
(1475, 1475, 1, 'Robert', 'Kaniški', 6, NULL, 1, NULL, b'1', 1),
(1476, 1476, 1, 'Sandra', 'Latinger', 5, NULL, 1, NULL, b'1', 1),
(1477, 1477, 1, 'Nika', 'Kolarek', 12, NULL, 1, NULL, b'1', 1),
(1478, 1478, 1, 'Ivana', 'Kuzmanić', 3, NULL, 1, NULL, b'1', 1),
(1479, 1479, 1, 'Dario', 'Sekušak', 5, NULL, 1, NULL, b'1', 1),
(1480, 1480, 1, 'Zdenko', 'Horjan', 12, NULL, 1, NULL, b'1', 1),
(1481, 1481, 1, 'Ivano', 'Črep', 3, NULL, 1, NULL, b'1', 1),
(1482, 1482, 1, 'Nenad', 'Lovrec', 12, NULL, 1, NULL, b'1', 1),
(1483, 1483, 1, 'Ines', 'Kos', 5, NULL, 1, NULL, b'1', 1),
(1484, 1484, 1, 'Ivan', 'Pongrac', 3, NULL, 1, NULL, b'1', 1),
(1485, 1485, 1, 'Vittoria', 'Velimirović', 6, NULL, 1, NULL, b'1', 1),
(1486, 1486, 1, 'Krešimir', 'Tušek', 12, NULL, 1, NULL, b'1', 1),
(1487, 1487, 1, 'Darko', 'Surjan', 5, NULL, 1, NULL, b'1', 1),
(1488, 1488, 1, 'Ana', 'Mandić', 5, NULL, 1, NULL, b'1', 1),
(1489, 1489, 1, 'Matija', 'Kučinac', 12, NULL, 1, NULL, b'1', 1),
(1490, 1490, 1, 'Milan', 'Radočaj', 1, NULL, 1, NULL, b'1', 1),
(1491, 1491, 1, 'Iva', 'Derdić', 4, NULL, 1, NULL, b'1', 1),
(1492, 1492, 1, 'Kristijan', 'Šivak', 12, NULL, 1, NULL, b'1', 1),
(1493, 1493, 1, 'Lucija Marijela', 'Štambuk', 2, NULL, 1, NULL, b'1', 1),
(1494, 1494, 1, 'Karlo', 'Gobec', 12, NULL, 1, NULL, b'1', 1),
(1495, 1495, 1, 'Miroslav', 'Kralj', 12, NULL, 1, NULL, b'1', 1),
(1496, 1496, 1, 'Ivan', 'Habuš', 12, NULL, 1, NULL, b'1', 1),
(1497, 1497, 1, 'Luka', 'Krajnović', 12, NULL, 1, NULL, b'1', 1),
(1498, 1498, 1, 'Goran', 'Vodopija', 5, NULL, 1, NULL, b'1', 1),
(1499, 1499, 1, 'Vanja', 'Suhina', 5, NULL, 1, NULL, b'1', 1),
(1500, 1500, 1, 'Ivan', 'Posinjak', 5, NULL, 1, NULL, b'1', 1),
(1501, 1501, 1, 'Marija', 'Gobec', 12, NULL, 1, NULL, b'1', 1),
(1502, 1502, 1, 'Vedrana', 'Radić', 12, NULL, 1, NULL, b'1', 1),
(1503, 1503, 1, 'Mika', 'Smital', 12, NULL, 1, NULL, b'1', 1),
(1504, 1504, 1, 'Željka', 'Gajdek', 4, NULL, 1, NULL, b'1', 1),
(1505, 1505, 1, 'Zdravko', 'Šaflin', 4, NULL, 1, NULL, b'1', 1),
(1506, 1506, 1, 'Edi', 'Ocvirk', 3, NULL, 1, NULL, b'1', 1),
(1507, 1507, 1, 'Lovro', 'Janžek', 7, NULL, 1, NULL, b'1', 1),
(1508, 1508, 1, 'Paula', 'Prpić', 12, NULL, 1, NULL, b'1', 1),
(1509, 1509, 1, 'Borna', 'Miljković', 4, NULL, 1, NULL, b'1', 1),
(1510, 1510, 1, 'Tina', 'Katić', 12, NULL, 1, NULL, b'1', 1),
(1511, 1511, 1, 'Jakov', 'Grabar', 11, NULL, 1, NULL, b'1', 1),
(1512, 1512, 1, 'Marta', 'Kukec', 12, NULL, 1, NULL, b'1', 1),
(1513, 1513, 1, 'Una Beata', 'Pevec', 11, NULL, 1, NULL, b'1', 1),
(1514, 1514, 1, 'Ivor', 'Jelić', 5, NULL, 1, NULL, b'1', 1),
(1515, 1515, 1, 'Mirjana', 'Horvat', 6, NULL, 1, NULL, b'1', 1),
(1516, 1516, 1, 'Mario', 'Nimac', 5, NULL, 1, NULL, b'1', 1),
(1517, 1517, 1, 'Marijan', 'Mulig', 4, NULL, 1, NULL, b'1', 1),
(1518, 1518, 1, 'Marinka', 'Mak', 11, NULL, 1, NULL, b'1', 1),
(1519, 1519, 1, 'Josip', 'Odžić', 4, NULL, 1, NULL, b'1', 1),
(1520, 1520, 1, 'Radenko', 'Romanović', 6, NULL, 1, NULL, b'1', 1),
(1521, 1521, 1, 'Marko', 'Jurač', 12, NULL, 1, NULL, b'1', 1),
(1522, 1522, 1, 'Jan', 'Gobec', 12, NULL, 1, NULL, b'1', 1),
(1523, 1523, 1, 'Ivana', 'Horbec', 12, NULL, 1, NULL, b'1', 1),
(1524, 1524, 1, 'Petar', 'Korlaet', 12, NULL, 1, NULL, b'1', 1),
(1525, 1525, 1, 'Ivana', 'Mahečić', 5, NULL, 1, NULL, b'1', 1),
(1526, 1526, 1, 'Nikolina', 'Miovec', 4, NULL, 1, NULL, b'1', 1),
(1527, 1527, 1, 'Petra', 'Turk', 7, NULL, 1, NULL, b'1', 1),
(1528, 1528, 1, 'Sara', 'Delić', 4, NULL, 1, NULL, b'1', 1),
(1529, 1529, 1, 'Ivana', 'Varga Horjan', 12, NULL, 1, NULL, b'1', 1),
(1530, 1530, 1, 'Monika', 'Pavić', 12, NULL, 1, NULL, b'1', 1),
(1531, 1531, 1, 'Srećko', 'Radulović', 11, NULL, 1, NULL, b'1', 1),
(1532, 1532, 1, 'Mia', 'Lovrec', 12, NULL, 1, NULL, b'1', 1),
(1533, 1533, 1, 'Nenad', 'Mihaljević', 12, NULL, 1, NULL, b'1', 1),
(1534, 1534, 1, 'Marko', 'Gamberger', 12, NULL, 1, NULL, b'1', 1),
(1535, 1535, 1, 'Dominik', 'Kirin', 6, NULL, 1, NULL, b'1', 1),
(1536, 1536, 1, 'Nino', 'Stančić Vidrač', 12, NULL, 1, NULL, b'1', 1),
(1537, 1537, 1, 'Vedran', 'Bijelić', 1, NULL, 1, NULL, b'1', 1),
(1538, 1538, 1, 'Nika', 'Kuzmanić', 11, NULL, 1, NULL, b'1', 1),
(1539, 1539, 1, 'Fran', 'Zagrajski', 11, NULL, 1, NULL, b'1', 1),
(1540, 1540, 1, 'Nikola', 'Tot', 3, NULL, 1, NULL, b'1', 1),
(1541, 1541, 1, 'Monika', 'Kovaljesko', 5, NULL, 1, NULL, b'1', 1),
(1542, 1542, 1, 'Gloria', 'Šantić', 1, NULL, 1, NULL, b'1', 1),
(1543, 1543, 1, 'Sonja', 'Lesjak', 3, NULL, 1, NULL, b'1', 1),
(1544, 1544, 1, 'Teodora', 'Kučinac', 12, NULL, 1, NULL, b'1', 1),
(1545, 1545, 1, 'Miodrag', 'Truhlaž', 1, NULL, 1, NULL, b'1', 1),
(1546, 1546, 1, 'Goran', 'Rihter', 5, NULL, 1, NULL, b'1', 1),
(1547, 1547, 1, 'Ivana', 'Radoš', 12, NULL, 1, NULL, b'1', 1),
(1548, 1548, 1, 'Ivica', 'Mesić', 12, NULL, 1, NULL, b'1', 1),
(1549, 1549, 1, 'Ana', 'Delić', 4, NULL, 1, NULL, b'1', 1),
(1550, 1550, 1, 'Ines', 'Jurač', 12, NULL, 1, NULL, b'1', 1),
(1551, 1551, 1, 'Biserka', 'Vodopija', 11, NULL, 1, NULL, b'1', 1),
(1552, 1552, 1, 'Paula', 'Vrdoljak', 12, NULL, 1, NULL, b'1', 1),
(1553, 1553, 1, 'Karlo', 'Lesjak', 3, NULL, 1, NULL, b'1', 1),
(1554, 1554, 1, 'Damir', 'Hercigonja', 5, NULL, 1, NULL, b'1', 1),
(1555, 1555, 1, 'Branko', 'Crljenica', 7, NULL, 1, NULL, b'1', 1),
(1556, 1556, 1, 'Željko', 'Ulip', 6, NULL, 1, NULL, b'1', 1),
(1557, 1557, 1, 'Janko', 'Hodak', 12, NULL, 1, NULL, b'1', 1),
(1558, 1558, 1, 'Darko', 'Duhović', 7, NULL, 1, NULL, b'1', 1),
(1559, 1559, 1, 'Marijan', 'Bogović', 4, NULL, 1, NULL, b'1', 1),
(1560, 1560, 1, 'Maja', 'Pirija', 5, NULL, 1, NULL, b'1', 1),
(1561, 1561, 1, 'Irena', 'Čorko Meštrović', 5, NULL, 1, NULL, b'1', 1),
(1562, 1562, 1, 'Darko', 'Merunka', 6, NULL, 1, NULL, b'1', 1),
(1563, 1563, 1, 'Dario', 'Štambuk', 2, NULL, 1, NULL, b'1', 1),
(1564, 1564, 1, 'Mihaela', 'Kočila Petković', 7, NULL, 1, NULL, b'1', 1),
(1565, 1565, 1, 'Ivana', 'Sertić', 5, NULL, 1, NULL, b'1', 1),
(1566, 1566, 1, 'Kristijan', 'Verović', 3, NULL, 1, NULL, b'1', 1),
(1567, 1567, 1, 'Tomislav', 'Jurač', 12, NULL, 1, NULL, b'1', 1),
(1568, 1568, 1, 'Milan', 'Turkalj', 11, NULL, 1, NULL, b'1', 1),
(1569, 1569, 1, 'Elizabeta', 'Bilić', 2, NULL, 1, NULL, b'1', 1),
(1570, 1570, 1, 'Nebojša', 'Čubra', 10, NULL, 1, NULL, b'1', 1),
(1571, 1571, 1, 'Sven', 'Divjak', 11, NULL, 1, NULL, b'1', 1),
(1572, 1572, 1, 'Filip', 'Zadrović', 10, NULL, 1, NULL, b'1', 1),
(1573, 1573, 1, 'Karlo', 'Kadović', 11, NULL, 1, NULL, b'1', 1),
(1574, 1574, 1, 'Dario', 'Kostrić', 10, NULL, 1, NULL, b'1', 1),
(1575, 1575, 1, 'Roko', 'Puharić', 3, NULL, 1, NULL, b'1', 1),
(1576, 1576, 1, 'Hrvoje', 'Jelinić', 3, NULL, 1, NULL, b'1', 1),
(1577, 1577, 1, 'Damir', 'Klobučarić', 1, NULL, 1, NULL, b'1', 1),
(1578, 1578, 1, 'Lara', 'Možanić', 11, NULL, 1, NULL, b'1', 1),
(1579, 1579, 1, 'Željko', 'Plentaj', 10, NULL, 1, NULL, b'1', 1),
(1580, 1580, 1, 'Matej', 'Štambuk', 2, NULL, 1, NULL, b'1', 1),
(1581, 1581, 1, 'Nikola', 'Škorić', 5, NULL, 1, NULL, b'1', 1),
(1582, 1582, 1, 'Šime', 'Šarić', 10, NULL, 1, NULL, b'1', 1),
(1583, 1583, 1, 'Despot', 'Matijević', 10, NULL, 1, NULL, b'1', 1),
(1584, 1584, 1, 'Vid', 'Hovorka', 3, NULL, 1, NULL, b'1', 1),
(1585, 1585, 1, 'Ivan', 'Maršić', 10, NULL, 1, NULL, b'1', 1),
(1586, 1586, 1, 'Predrag', 'Mađarić', 2, NULL, 1, NULL, b'1', 1),
(1587, 1587, 1, 'Marina', 'Kopjar', 2, NULL, 1, NULL, b'1', 1),
(1588, 1588, 1, 'Ivan', 'Čurić', 10, NULL, 1, NULL, b'1', 1),
(1589, 1589, 1, 'Nastasia', 'Melmajer', 10, NULL, 1, NULL, b'1', 1),
(1590, 1590, 1, 'Dalibor', 'Sovilj', 10, NULL, 1, NULL, b'1', 1),
(1591, 1591, 1, 'Hana', 'Uranić', 11, NULL, 1, NULL, b'1', 1),
(1592, 1592, 1, 'Franjo', 'Magušić', 10, NULL, 1, NULL, b'1', 1),
(1593, 1593, 1, 'Matej', 'Čović', 6, NULL, 1, NULL, b'1', 1),
(1594, 1594, 1, 'Andrej', 'Biro', 10, NULL, 1, NULL, b'1', 1),
(1595, 1595, 1, 'Pia', 'Ocvirk', 3, NULL, 1, NULL, b'1', 1),
(1596, 1596, 1, 'Nenad', 'Zdjelar', 4, NULL, 1, NULL, b'1', 1),
(1597, 1597, 1, 'Janik', 'Martinčević', 11, NULL, 1, NULL, b'1', 1),
(1598, 1598, 1, 'Marko', 'Vrabec', 10, NULL, 1, NULL, b'1', 1),
(1599, 1599, 1, 'Antonio', 'Martinović', 10, NULL, 1, NULL, b'1', 1),
(1600, 1600, 1, 'Sara', 'Peter', 10, NULL, 1, NULL, b'1', 1),
(1601, 1601, 1, 'Filip', 'Juraga', 11, NULL, 1, NULL, b'1', 1),
(1602, 1602, 1, 'Karlo', 'Kobijak', 10, NULL, 1, NULL, b'1', 1),
(1603, 1603, 1, 'Mario', 'Gotal', 10, NULL, 1, NULL, b'1', 1),
(1604, 1604, 1, 'Mario', 'Gabrić', 10, NULL, 1, NULL, b'1', 1),
(1605, 1605, 1, 'Davor', 'Šćuric', 4, NULL, 1, NULL, b'1', 1),
(1606, 1606, 1, 'Lana', 'Pajčin', 10, NULL, 1, NULL, b'1', 1),
(1607, 1607, 1, 'Draženka', 'Birkić', 4, NULL, 1, NULL, b'1', 1),
(1608, 1608, 1, 'Alan', 'Omerčić', 6, NULL, 1, NULL, b'1', 1),
(1609, 1609, 1, 'Miroslav', 'Smuđ', 11, NULL, 1, NULL, b'1', 1),
(1610, 1610, 1, 'Ivan', 'Draušnik', 1, NULL, 1, NULL, b'1', 1),
(1611, 1611, 1, 'Josip', 'Župarić', 10, NULL, 1, NULL, b'1', 1),
(1612, 1612, 1, 'Eni', 'Nikolić', 10, NULL, 1, NULL, b'1', 1),
(1613, 1613, 1, 'Ana', 'Kovačević', 10, NULL, 1, NULL, b'1', 1),
(1614, 1614, 1, 'Sandra', 'Stinčić Clarke', 4, NULL, 1, NULL, b'1', 1),
(1615, 1615, 1, 'Dan', 'Kobasić', 4, NULL, 1, NULL, b'1', 1),
(1616, 1616, 1, 'Ivan', 'Jukić', 10, NULL, 1, NULL, b'1', 1),
(1617, 1617, 1, 'Helena', 'Omerčić', 6, NULL, 1, NULL, b'1', 1),
(1618, 1618, 1, 'Hanna', 'Fejzić', 6, NULL, 1, NULL, b'1', 1),
(1619, 1619, 1, 'Sara', 'Vugrek', 11, NULL, 1, NULL, b'1', 1),
(1620, 1620, 1, 'Jakov', 'Kamenicki', 10, NULL, 1, NULL, b'1', 1),
(1621, 1621, 1, 'Vita', 'Putarek', 11, NULL, 1, NULL, b'1', 1),
(1622, 1622, 1, 'Dolores', 'Pajčin', 10, NULL, 1, NULL, b'1', 1),
(1623, 1623, 1, 'Tea', 'Tot', 3, NULL, 1, NULL, b'1', 1),
(1624, 1624, 1, 'Martin', 'Grivić', 11, NULL, 1, NULL, b'1', 1),
(1625, 1625, 1, 'Roman', 'Petak', 11, NULL, 1, NULL, b'1', 1),
(1626, 1626, 1, 'Samuel', 'Spretnjak', 4, NULL, 1, NULL, b'1', 1),
(1627, 1627, 1, 'Eduard', 'Perković', 1, NULL, 1, NULL, b'1', 1),
(1628, 1628, 1, 'Predrag', 'Martinčević', 11, NULL, 1, NULL, b'1', 1),
(1629, 1629, 1, 'Matjaž', 'Štanfel', 10, NULL, 1, NULL, b'1', 1),
(1630, 1630, 1, 'Kristijan', 'Grivić', 11, NULL, 1, NULL, b'1', 1),
(1631, 1631, 1, 'Sara', 'Ivković', 10, NULL, 1, NULL, b'1', 1),
(1632, 1632, 1, 'Iva', 'Balaban', 10, NULL, 1, NULL, b'1', 1),
(1633, 1633, 1, 'Karlo', 'Bartolić', 11, NULL, 1, NULL, b'1', 1),
(1634, 1634, 1, 'Ana', 'Balaban', 10, NULL, 1, NULL, b'1', 1),
(1635, 1635, 1, 'Luka', 'Ivković', 10, NULL, 1, NULL, b'1', 1),
(1636, 1636, 1, 'Mateo', 'Bojo', 10, NULL, 1, NULL, b'1', 1),
(1637, 1637, 1, 'Jakov', 'Pravica', 11, NULL, 1, NULL, b'1', 1),
(1638, 1638, 1, 'Armin', 'Mehinović', 10, NULL, 1, NULL, b'1', 1),
(1639, 1639, 1, 'Hrvoje', 'Grginov', 10, NULL, 1, NULL, b'1', 1),
(1640, 1640, 1, 'Tamara', 'Filipović', 10, NULL, 1, NULL, b'1', 1),
(1641, 1641, 1, 'Miroslav', 'Priher', 2, NULL, 1, NULL, b'1', 1),
(1642, 1642, 1, 'Nikola', 'Pajčin', 10, NULL, 1, NULL, b'1', 1),
(1643, 1643, 1, 'Josip', 'Leovac', 3, NULL, 1, NULL, b'1', 1),
(1644, 1644, 1, 'Mislav', 'Putarek', 11, NULL, 1, NULL, b'1', 1),
(1645, 1645, 1, 'Maja', 'Pongrac', 3, NULL, 1, NULL, b'1', 1),
(1646, 1646, 1, 'Anja', 'Martinez', 11, NULL, 1, NULL, b'1', 1),
(1647, 1647, 1, 'Krunoslav', 'Kokoš', 10, NULL, 1, NULL, b'1', 1),
(1648, 1648, 1, 'Marijana', 'Čerkezović', 10, NULL, 1, NULL, b'1', 1),
(1649, 1649, 1, 'Jana', 'Kovačić', 11, NULL, 1, NULL, b'1', 1),
(1650, 1650, 1, 'Miodrag', 'Truhlaž', 10, NULL, 1, NULL, b'1', 1),
(1651, 1651, 1, 'Diana', 'Buzov', 10, NULL, 1, NULL, b'1', 1),
(1652, 1652, 1, 'Dora', 'Rodeš', 11, NULL, 1, NULL, b'1', 1),
(1653, 1653, 1, 'Stela', 'Peter', 10, NULL, 1, NULL, b'1', 1),
(1654, 1654, 1, 'Tihomir', 'Topalović', 10, NULL, 1, NULL, b'1', 1),
(1655, 1655, 1, 'Mirjana', 'Marchiotti', 6, NULL, 1, NULL, b'1', 1),
(1656, 1656, 1, 'Sanja', 'Benaković', 6, NULL, 1, NULL, b'1', 1),
(1657, 1657, 1, 'Hiba', 'Amaneh', 11, NULL, 1, NULL, b'1', 1),
(1658, 1658, 1, 'Lucija', 'Jertec', 11, NULL, 1, NULL, b'1', 1),
(1659, 1659, 1, 'Marija', 'Kirić', 11, NULL, 1, NULL, b'1', 1),
(1660, 1660, 1, 'Sven Ivor', 'Lebinac', 11, NULL, 1, NULL, b'1', 1),
(1661, 1661, 1, 'Vesna', 'Pascuttini-Juraga', 11, NULL, 1, NULL, b'1', 1),
(1662, 1662, 1, 'Neven', 'Vodopija', 11, NULL, 1, NULL, b'1', 1),
(1663, 1663, 1, 'Maja', 'Srebačić', 2, NULL, 1, NULL, b'1', 1),
(1664, 1664, 1, 'Damir', 'Popović', 2, NULL, 1, NULL, b'1', 1),
(1665, 1665, 1, 'Mark', 'Jelinić', 3, NULL, 1, NULL, b'1', 1),
(1666, 1666, 1, 'Una', 'Jelinić', 3, NULL, 1, NULL, b'1', 1),
(1667, 1667, 1, 'Eva', 'Magdić Govedarica', 3, NULL, 1, NULL, b'1', 1),
(1668, 1668, 1, 'Zvonimir', 'Guliš', 3, NULL, 1, NULL, b'1', 1),
(1669, 1669, 1, 'David', 'Skopljak', 3, NULL, 1, NULL, b'1', 1),
(1670, 1670, 1, 'Slađana', 'Ovčarić', 5, NULL, 1, NULL, b'1', 1),
(1671, 1671, 1, 'Igor', 'Acketa', 4, NULL, 1, NULL, b'1', 1),
(1672, 1672, 1, 'Ivan', 'Đanić', 4, NULL, 1, NULL, b'1', 1),
(1673, 1673, 1, 'Marko', 'Mlinac', 4, NULL, 1, NULL, b'1', 1),
(1674, 1674, 1, 'Mijat', 'Perić', 4, NULL, 1, NULL, b'1', 1),
(1675, 1675, 1, 'Drago', 'Rusan', 4, NULL, 1, NULL, b'1', 1),
(1676, 1676, 1, 'Hana', 'Sokolović', 1, NULL, 1, NULL, b'1', 1),
(1677, 1677, 1, 'Mladen', 'Perica', 1, NULL, 1, NULL, b'1', 1),
(1678, 1678, 1, 'Petar', 'Perica', 1, NULL, 1, NULL, b'1', 1),
(1679, 1679, 1, 'Siniša', 'Muhtić', 1, NULL, 1, NULL, b'1', 1),
(1680, 1680, 1, 'Nikolina', 'Renić', 8, NULL, 1, NULL, b'1', 1),
(1681, 1681, 1, 'Marija', 'Tišljar', 8, NULL, 1, NULL, b'1', 1),
(1682, 1682, 1, 'Antun', 'Tišljar', 8, NULL, 1, NULL, b'1', 1),
(1683, 1683, 1, 'Iva', 'Renić', 8, NULL, 1, NULL, b'1', 1),
(1684, 1684, 1, 'Lucia Gianna', 'Bašić', 8, NULL, 1, NULL, b'1', 1),
(1685, 1685, 1, 'Marko', 'Renić', 8, NULL, 1, NULL, b'1', 1),
(1686, 1686, 1, 'Antonio', 'Kralj', 8, NULL, 1, NULL, b'1', 1),
(1687, 1687, 1, 'Borna', 'Bašić', 8, NULL, 1, NULL, b'1', 1),
(1688, 1688, 1, 'Niko', 'Renić', 8, NULL, 1, NULL, b'1', 1),
(1689, 1689, 1, 'Petar', 'Renić', 8, NULL, 1, NULL, b'1', 1),
(1690, 1690, 1, 'Kristina', 'Babić', 12, NULL, 1, NULL, b'1', 1),
(1691, 1691, 1, 'Goran', 'Babić', 12, NULL, 1, NULL, b'1', 1),
(1692, 1692, 1, 'Stjepan', 'Babić', 12, NULL, 1, NULL, b'1', 1),
(1693, 1693, 1, 'Frane', 'Baće', 12, NULL, 1, NULL, b'1', 1),
(1694, 1694, 1, 'Luna', 'Đokić', 12, NULL, 1, NULL, b'1', 1),
(1695, 1695, 1, 'Siniša', 'Đukić', 12, NULL, 1, NULL, b'1', 1),
(1696, 1696, 1, 'Josip', 'Gojević', 12, NULL, 1, NULL, b'1', 1),
(1697, 1697, 1, 'Tomislav', 'Grguric', 12, NULL, 1, NULL, b'1', 1),
(1698, 1698, 1, 'Bernard', 'Ivezic', 12, NULL, 1, NULL, b'1', 1),
(1699, 1699, 1, 'Mirela', 'Josipović', 12, NULL, 1, NULL, b'1', 1),
(1700, 1700, 1, 'Darko', 'Josipović', 12, NULL, 1, NULL, b'1', 1),
(1701, 1701, 1, 'Eugen', 'Jurković', 12, NULL, 1, NULL, b'1', 1),
(1702, 1702, 1, 'Mia', 'Kamenjarin', 12, NULL, 1, NULL, b'1', 1),
(1703, 1703, 1, 'Fran', 'Karlović', 12, NULL, 1, NULL, b'1', 1),
(1704, 1704, 1, 'Bartol', 'Kekić', 12, NULL, 1, NULL, b'1', 1),
(1705, 1705, 1, 'Karla', 'Kiš Kamenjarin', 12, NULL, 1, NULL, b'1', 1),
(1706, 1706, 1, 'Roko', 'Kolar', 12, NULL, 1, NULL, b'1', 1),
(1707, 1707, 1, 'Antonio', 'Kolar', 12, NULL, 1, NULL, b'1', 1),
(1708, 1708, 1, 'Matea', 'Kulušić', 12, NULL, 1, NULL, b'1', 1),
(1709, 1709, 1, 'Ana', 'Medved', 12, NULL, 1, NULL, b'1', 1),
(1710, 1710, 1, 'Bojan', 'Mihaljević', 12, NULL, 1, NULL, b'1', 1),
(1711, 1711, 1, 'Nataša', 'Odak', 12, NULL, 1, NULL, b'1', 1),
(1712, 1712, 1, 'Jakov', 'Odak', 12, NULL, 1, NULL, b'1', 1),
(1713, 1713, 1, 'Toni', 'Odak', 12, NULL, 1, NULL, b'1', 1),
(1714, 1714, 1, 'Danijel', 'Odak', 12, NULL, 1, NULL, b'1', 1),
(1715, 1715, 1, 'Leonard', 'Pajk', 12, NULL, 1, NULL, b'1', 1),
(1716, 1716, 1, 'Barbara', 'Pajk', 12, NULL, 1, NULL, b'1', 1),
(1717, 1717, 1, 'Ana', 'Pavin', 12, NULL, 1, NULL, b'1', 1),
(1718, 1718, 1, 'Leon', 'Pavliša', 12, NULL, 1, NULL, b'1', 1),
(1719, 1719, 1, 'Martina', 'Ružić', 12, NULL, 1, NULL, b'1', 1),
(1720, 1720, 1, 'Zoran', 'Ružić', 12, NULL, 1, NULL, b'1', 1),
(1721, 1721, 1, 'Tonka', 'Ružić', 12, NULL, 1, NULL, b'1', 1),
(1722, 1722, 1, 'Rok', 'Ružić', 12, NULL, 1, NULL, b'1', 1),
(1723, 1723, 1, 'Paul', 'Skobe', 12, NULL, 1, NULL, b'1', 1),
(1724, 1724, 1, 'Roberta', 'Valai', 12, NULL, 1, NULL, b'1', 1),
(1725, 1725, 1, 'Romana', 'Večerić', 12, NULL, 1, NULL, b'1', 1),
(1726, 1726, 1, 'Marko', 'Žabčić', 12, NULL, 1, NULL, b'1', 1),
(1727, 1727, 1, 'Doris', 'Vunić', 10, NULL, 1, NULL, b'1', 1),
(1728, 1728, 1, 'Kristina', 'Martinčević', 10, NULL, 1, NULL, b'1', 1),
(1729, 1729, 1, 'Branimir', 'Kelava', 10, NULL, 1, NULL, b'1', 1),
(1730, 1730, 1, 'Ante', 'Tipurić', 10, NULL, 1, NULL, b'1', 1),
(1731, 1731, 1, 'Silvija', 'Balent', 10, NULL, 1, NULL, b'1', 1),
(1732, 1732, 1, 'Antonija', 'Damjanović', 10, NULL, 1, NULL, b'1', 1),
(1733, 1733, 1, 'Marko', 'Mirković', 10, NULL, 1, NULL, b'1', 1),
(1734, 1734, 1, 'Ivan', 'Pavlović', 10, NULL, 1, NULL, b'1', 1),
(1735, 1735, 1, 'Tomislav', 'Čulina', 10, NULL, 1, NULL, b'1', 1),
(1736, 1736, 1, 'Sven', 'Brkanić', 10, NULL, 1, NULL, b'1', 1),
(1737, 1737, 1, 'Ante', 'Perić', 10, NULL, 1, NULL, b'1', 1),
(1738, 1738, 1, 'Nikola', 'Bićanić', 10, NULL, 1, NULL, b'1', 1),
(1739, 1739, 1, 'Antonela', 'Žderić', 10, NULL, 1, NULL, b'1', 1),
(1740, 1740, 1, 'Manuela', 'Crnković', 10, NULL, 1, NULL, b'1', 1),
(1741, 1741, 1, 'Stipan', 'Marinčić', 10, NULL, 1, NULL, b'1', 1),
(1742, 1742, 1, 'Marko', 'Luketić', 10, NULL, 1, NULL, b'1', 1),
(1743, 1743, 1, 'Iva', 'Baržić', 10, NULL, 1, NULL, b'1', 1),
(1744, 1744, 1, 'Ema', 'Mihaljević', 10, NULL, 1, NULL, b'1', 1),
(1745, 1745, 1, 'Franjo', 'Radošević', 12, NULL, 1, NULL, b'1', 1),
(1746, 1746, 1, 'Maja', 'Duvnjak', 12, NULL, 1, NULL, b'1', 1),
(1747, 1747, 1, 'Iva', 'Drganc', 12, NULL, 1, NULL, b'1', 1),
(1748, 1748, 1, 'Filipa', 'Beroš', 12, NULL, 1, NULL, b'1', 1),
(1749, 1749, 1, 'Martina', 'Knezović', 12, NULL, 1, NULL, b'1', 1),
(1750, 1750, 1, 'Barbara', 'Fumić', 12, NULL, 1, NULL, b'1', 1),
(1751, 1751, 1, 'Marija', 'Herceg', 12, NULL, 1, NULL, b'1', 1),
(1752, 1752, 1, 'Zvonimir', 'Džapo', 5, NULL, 1, NULL, b'1', 1),
(1753, 1753, 1, 'Paola', 'Fumić', 5, NULL, 1, NULL, b'1', 1),
(1754, 1754, 1, 'Ira', 'Miličević', 5, NULL, 1, NULL, b'1', 1),
(1755, 1755, 1, 'Asmir', 'Mašić', 6, NULL, 1, NULL, b'1', 1),
(1756, 1756, 1, 'Noa', 'Stančić', 11, NULL, 1, NULL, b'1', 1),
(1757, 1757, 1, 'Emanuel', 'Vukovac', 11, NULL, 1, NULL, b'1', 1),
(1758, 1758, 1, 'Andrej', 'Martinez', 11, NULL, 1, NULL, b'1', 1),
(1759, 1759, 1, 'Nina', 'Veseljak', 11, NULL, 1, NULL, b'1', 1),
(1760, 1760, 1, 'Irena', 'Detić', 2, NULL, 1, NULL, b'1', 1),
(1761, 1761, 1, 'Filip', 'Jurak', 2, NULL, 1, NULL, b'1', 1),
(1762, 1762, 1, 'Iva', 'Mađarić', 2, NULL, 1, NULL, b'1', 1),
(1763, 1763, 1, 'Marta', 'Petak', 2, NULL, 1, NULL, b'1', 1),
(1764, 1764, 1, 'Šimun', 'Ilčić', 2, NULL, 1, NULL, b'1', 1),
(1765, 1765, 1, 'Vanja', 'Radovanović', 2, NULL, 1, NULL, b'1', 1),
(1766, 1766, 1, 'Mislav', 'Radovanović', 2, NULL, 1, NULL, b'1', 1),
(1767, 1767, 1, 'Ema', 'Kovačić', 2, NULL, 1, NULL, b'1', 1),
(1768, 1768, 1, 'Mia', 'Kovačić', 2, NULL, 1, NULL, b'1', 1),
(1769, 1769, 1, 'David', 'Lazar', 2, NULL, 1, NULL, b'1', 1),
(1770, 1770, 1, 'Bruno', 'Marić', 2, NULL, 1, NULL, b'1', 1),
(1771, 1771, 1, 'Tomislav', 'Hlad', 2, NULL, 1, NULL, b'1', 1),
(1772, 1772, 1, 'Leon', 'Hlad', 2, NULL, 1, NULL, b'1', 1),
(1773, 1773, 1, 'Matija', 'Hlad', 2, NULL, 1, NULL, b'1', 1),
(1774, 1774, 1, 'Igor', 'Milinković', 2, NULL, 1, NULL, b'1', 1),
(1775, 1775, 1, 'Žarko', 'Radovanović', 2, NULL, 1, NULL, b'1', 1),
(1776, 1776, 1, 'Damir', 'Suban', 3, NULL, 1, NULL, b'1', 1),
(1777, 1777, 1, 'Ivana', 'Tkalčić Suban', 3, NULL, 1, NULL, b'1', 1),
(1778, 1778, 1, 'Robert', 'Cvetković', 3, NULL, 1, NULL, b'1', 1),
(1779, 1779, 1, 'Eli', 'Tadić', 3, NULL, 1, NULL, b'1', 1),
(1780, 1780, 1, 'Dominik', 'Mihaljević', 3, NULL, 1, NULL, b'1', 1),
(1781, 1781, 1, 'Dražen', 'Perković', 3, NULL, 1, NULL, b'1', 1),
(1782, 1782, 1, 'Nada', 'Bilobrk', 5, NULL, 1, NULL, b'1', 1),
(1783, 1783, 1, 'Hrvoje', 'Bolešić', 5, NULL, 1, NULL, b'1', 1),
(1784, 1784, 1, 'Liliana', 'Božić', 5, NULL, 1, NULL, b'1', 1),
(1785, 1785, 1, 'Asja', 'Dubravčić', 5, NULL, 1, NULL, b'1', 1),
(1786, 1786, 1, 'Ivana', 'Mikulinjak', 5, NULL, 1, NULL, b'1', 1),
(1787, 1787, 1, 'Silvije', 'Nosić', 5, NULL, 1, NULL, b'1', 1),
(1788, 1788, 1, 'Dario', 'Rocco', 5, NULL, 1, NULL, b'1', 1),
(1789, 1789, 1, 'Dominik', 'Sabljak', 5, NULL, 1, NULL, b'1', 1);
INSERT INTO `imeprezime` (`id`, `osoba_id`, `rbr`, `ime`, `prezime`, `klub_id`, `identitet_id`, `sintaksa_id`, `info`, `aktivno`, `dnevnik_id`) VALUES
(1790, 1790, 1, 'Vedran', 'Sabljić', 5, NULL, 1, NULL, b'1', 1),
(1791, 1791, 1, 'Ana', 'Simon', 5, NULL, 1, NULL, b'1', 1),
(1792, 1792, 1, 'Ružica', 'Jakopec', 5, NULL, 1, NULL, b'1', 1),
(1793, 1793, 1, 'Tihomir', 'Despetović', 1, NULL, 1, NULL, b'1', 1),
(1794, 1794, 1, 'Željka', 'Krupka', 1, NULL, 1, NULL, b'1', 1),
(1795, 1795, 1, 'Julia', 'Artyushenko', 12, NULL, 1, NULL, b'1', 1),
(1796, 1796, 1, 'Anna', 'Artyushenko', 12, NULL, 1, NULL, b'1', 1),
(1797, 1797, 1, 'Irina', 'Artyushenko', 12, NULL, 1, NULL, b'1', 1),
(1798, 1798, 1, 'Ivana', 'Gojević', 12, NULL, 1, NULL, b'1', 1),
(1799, 1799, 1, 'Timea', 'Gojević', 12, NULL, 1, NULL, b'1', 1),
(1800, 1800, 1, 'Adrian', 'Gojević', 12, NULL, 1, NULL, b'1', 1),
(1801, 1801, 1, 'Petra', 'Gojević', 12, NULL, 1, NULL, b'1', 1),
(1802, 1802, 1, 'Mihej', 'Ivančan', 12, NULL, 1, NULL, b'1', 1),
(1803, 1803, 1, 'Šimun', 'Matešić', 12, NULL, 1, NULL, b'1', 1),
(1804, 1804, 1, 'Lucas', 'Nežić', 12, NULL, 1, NULL, b'1', 1),
(1805, 1805, 1, 'Ivan', 'Papak', 12, NULL, 1, NULL, b'1', 1),
(1806, 1806, 1, 'Valentina', 'Skobe', 12, NULL, 1, NULL, b'1', 1),
(1807, 1807, 1, 'Tymothy', 'Skobe', 12, NULL, 1, NULL, b'1', 1),
(1808, 1808, 1, 'Ivan', 'Žufić', 12, NULL, 1, NULL, b'1', 1),
(1809, 1809, 1, 'Smiljana', 'Čuka Husnjak', 12, NULL, 1, NULL, b'1', 1),
(1810, 1810, 1, 'Fran', 'Fran Husnjak', 12, NULL, 1, NULL, b'1', 1),
(1811, 1811, 1, 'Antonija', 'Banovic', 12, NULL, 1, NULL, b'1', 1),
(1812, 1812, 1, 'Mirna', 'Grgurić', 12, NULL, 1, NULL, b'1', 1),
(1813, 1813, 1, 'Margareta', 'Pavić', 12, NULL, 1, NULL, b'1', 1),
(1814, 1814, 1, 'Vesna', 'Ciglar Kovač', 12, NULL, 1, NULL, b'1', 1),
(1815, 1815, 1, 'Nediljko', 'Kovač', 12, NULL, 1, NULL, b'1', 1),
(1816, 1816, 1, 'Alena', 'Detan Karlović', 12, NULL, 1, NULL, b'1', 1),
(1817, 1817, 1, 'Branko', 'Polanec', 7, NULL, 1, NULL, b'1', 1),
(1818, 1818, 1, 'Darko', 'Klarić', 7, NULL, 1, NULL, b'1', 1),
(1819, 1819, 1, 'Marko', 'Klarić', 7, NULL, 1, NULL, b'1', 1),
(1820, 1820, 1, 'Nikola', 'Tkalec', 7, NULL, 1, NULL, b'1', 1),
(1821, 1821, 1, 'Robert', 'Tkalec', 7, NULL, 1, NULL, b'1', 1),
(1822, 1822, 1, 'Vedran', 'Tkalec', 7, NULL, 1, NULL, b'1', 1),
(1823, 1823, 1, 'Branimir', 'Vinko', 7, NULL, 1, NULL, b'1', 1),
(1824, 1824, 1, 'Matej', 'Drmanović', 1, NULL, 1, NULL, b'1', 1),
(1825, 1825, 1, 'Mihael', 'Grgić', 1, NULL, 1, NULL, b'1', 1),
(1826, 1826, 1, 'Marija', 'Kaučić Perković', 1, NULL, 1, NULL, b'1', 1),
(1827, 1827, 1, 'Goran', 'Grbac', 9, NULL, 1, NULL, b'1', 1),
(1828, 1828, 1, 'Ivana', 'Herceg', 4, NULL, 1, NULL, b'1', 1),
(1829, 1829, 1, 'Marija', 'Vida', 10, NULL, 1, NULL, b'1', 1),
(1830, 1830, 1, 'Toni', 'Nikola', 9, NULL, 1, NULL, b'1', 1),
(1831, 1831, 1, 'Patricija', 'Urbanc', 9, NULL, 1, NULL, b'1', 1),
(1832, 1832, 1, 'Tihon', 'Salopek', 9, NULL, 1, NULL, b'1', 1),
(1833, 1833, 1, 'Andrej', 'Šubat', 9, NULL, 1, NULL, b'1', 1),
(1834, 1834, 1, 'Filip', 'Mlinarić', 7, NULL, 1, NULL, b'1', 1),
(1835, 1835, 1, 'Tihomir', 'Salopek', 9, NULL, 1, NULL, b'1', 1),
(1836, 1836, 1, 'Vladimir', 'Jurić', 4, NULL, 1, NULL, b'1', 1),
(1837, 1837, 1, 'Franjo', 'Benjak', 2, NULL, 1, NULL, b'1', 1),
(1838, 1838, 1, 'Ana', 'Grbac', 9, NULL, 1, NULL, b'1', 1),
(1839, 1839, 1, 'Mario', 'Bilandžija', 10, NULL, 1, NULL, b'1', 1),
(1840, 1413, 2, 'Ana', 'Srebačić', 11, NULL, 1, '', b'1', 30),
(1841, 1840, 1, 'Lea', 'Bošnjak', 3, NULL, 1, '', b'1', 102),
(1842, 1841, 1, 'Katja', 'Fatzek', 3, NULL, 1, '', b'1', 109),
(1843, 1842, 1, 'Anja', 'Fatzek', 3, NULL, 1, '', b'1', 110),
(1844, 1843, 1, 'Dunja', 'Mogut', 3, NULL, 1, '', b'1', 111),
(1845, 1844, 1, 'Tonka', 'Mogut', 3, NULL, 1, '', b'1', 112),
(1846, 1845, 1, 'Erik', 'Tot', 3, NULL, 1, '', b'1', 113),
(1847, 1846, 1, 'Karla', 'Paulić', 3, NULL, 1, '', b'1', 114),
(1848, 1847, 1, 'Franka', 'Paulić', 3, NULL, 1, '', b'1', 115),
(1849, 1848, 1, 'Marko', 'Bunčić', 5, NULL, 1, '', b'1', 116),
(1850, 1849, 1, 'Tena', 'Bartaković', 3, NULL, 1, '', b'1', 117),
(1851, 1850, 1, 'Hana', 'Markić', 3, NULL, 1, '', b'1', 118),
(1852, 1851, 1, 'Fausto', 'Ferreira', 5, NULL, 1, '', b'1', 119),
(1853, 1852, 1, 'Lucija', 'Markić', 3, NULL, 1, '', b'1', 120),
(1854, 1853, 1, 'Lidija', 'Vrdoljak', 3, NULL, 1, '', b'1', 121),
(1855, 1854, 1, 'Ivan', 'Petravić', 3, NULL, 1, '', b'1', 122),
(1856, 1855, 1, 'Lovro', 'Berečki', 3, NULL, 1, '', b'1', 123),
(1857, 1856, 1, 'Hana', 'Glušica', 5, NULL, 1, '', b'1', 124),
(1858, 1857, 1, 'Filip', 'Vujanić', 3, NULL, 1, '', b'1', 125),
(1859, 1858, 1, 'Josip', 'Vujanić', 3, NULL, 1, '', b'1', 126),
(1860, 1859, 1, 'Sandra', 'Perica Cvjetko', 3, NULL, 1, '', b'1', 127),
(1861, 1860, 1, 'Andraž', 'Hribar', 5, NULL, 1, '', b'1', 128),
(1862, 1861, 1, 'Lara', 'Cvjetko', 3, NULL, 1, '', b'1', 129),
(1863, 1862, 1, 'Nina', 'Cvjetko', 3, NULL, 1, '', b'1', 130),
(1864, 1863, 1, 'Jana', 'Cvjetko', 3, NULL, 1, '', b'1', 131),
(1865, 1864, 1, 'Željka', 'Ilijašev', 5, NULL, 1, '', b'1', 132),
(1866, 1865, 1, 'Martina', 'Martin', 5, NULL, 1, '', b'1', 154),
(1867, 1866, 1, 'Beata Adrianna', 'Glinska', 5, NULL, 1, '', b'1', 157),
(1868, 1867, 1, 'Damir', 'Ćurić', 5, NULL, 1, '', b'1', 158),
(1869, 1868, 1, 'Nataša', 'Preis-Bedenik', 5, NULL, 1, '', b'1', 159),
(1870, 1869, 1, 'Karmela', 'Crvenković', 5, NULL, 1, '', b'1', 160),
(1871, 1870, 1, 'Vjekoslav', 'Klarić', 5, NULL, 1, '', b'1', 161);

-- --------------------------------------------------------

--
-- Table structure for table `kategorija`
--

CREATE TABLE `kategorija` (
  `id` smallint(6) NOT NULL,
  `oznaka` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `naziv` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `spol` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `min_dob` tinyint(4) NOT NULL,
  `max_dob` tinyint(4) NOT NULL,
  `dob_id` tinyint(4) NOT NULL,
  `grana_id` tinyint(4) NOT NULL,
  `vrstakat_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kategorija`
--

INSERT INTO `kategorija` (`id`, `oznaka`, `naziv`, `spol`, `min_dob`, `max_dob`, `dob_id`, `grana_id`, `vrstakat_id`) VALUES
(101, 'M21A', 'seniori', 'M', 21, 34, 1, 1, 11),
(102, 'Ž21A', 'seniorke', 'Ž', 21, 34, 1, 1, 11),
(103, 'M70', 'veterani V', 'M', 70, 99, 3, 1, 11),
(104, 'M65', 'veterani IV', 'M', 65, 69, 3, 1, 11),
(105, 'M55', 'veterani III', 'M', 55, 64, 3, 1, 11),
(106, 'M45', 'veterani II', 'M', 45, 54, 3, 1, 11),
(107, 'M35', 'veterani I', 'M', 35, 44, 3, 1, 11),
(108, 'M21B', 'seniori B', 'M', 21, 34, 1, 1, 11),
(109, 'M20', 'juniori', 'M', 17, 20, 2, 1, 11),
(110, 'M16', 'kadeti', 'M', 15, 16, 2, 1, 11),
(111, 'M14', 'ml. kadeti', 'M', 13, 14, 2, 1, 11),
(112, 'M12', 'dječaci', 'M', 7, 12, 2, 1, 11),
(113, 'Ž70', 'veteranke V', 'Ž', 70, 99, 3, 1, 11),
(114, 'Ž65', 'veteranke IV', 'Ž', 65, 69, 3, 1, 11),
(115, 'Ž55', 'veteranke III', 'Ž', 55, 64, 3, 1, 11),
(116, 'Ž45', 'veteranke II', 'Ž', 45, 54, 3, 1, 11),
(117, 'Ž35', 'veteranke I', 'Ž', 35, 44, 3, 1, 11),
(118, 'Ž21B', 'seniorke B', 'Ž', 21, 34, 1, 1, 11),
(119, 'Ž20', 'juniorke', 'Ž', 17, 20, 2, 1, 11),
(120, 'Ž16', 'kadetkinje', 'Ž', 15, 16, 2, 1, 11),
(121, 'Ž14', 'ml. kadetkinje', 'Ž', 13, 14, 2, 1, 11),
(122, 'Ž12', 'djevojčice', 'Ž', 7, 12, 2, 1, 11),
(201, 'M21', 'seniori', 'M', 21, 34, 1, 1, 12),
(202, 'Ž21', 'seniorke', 'Ž', 21, 34, 1, 1, 12),
(203, 'M65', 'veterani IV', 'M', 65, 99, 3, 1, 12),
(204, 'M55', 'veterani III', 'M', 55, 64, 3, 1, 12),
(205, 'M45', 'veterani II', 'M', 45, 54, 3, 1, 12),
(206, 'M35', 'veterani I', 'M', 35, 44, 3, 1, 12),
(207, 'M20', 'juniori', 'M', 17, 20, 2, 1, 12),
(208, 'M16', 'kadeti', 'M', 13, 16, 2, 1, 12),
(209, 'M12', 'dječaci', 'M', 7, 12, 2, 1, 12),
(210, 'Ž65', 'veteranke IV', 'Ž', 65, 99, 3, 1, 12),
(211, 'Ž55', 'veteranke III', 'Ž', 55, 64, 3, 1, 12),
(212, 'Ž45', 'veteranke II', 'Ž', 45, 54, 3, 1, 12),
(213, 'Ž35', 'veteranke I', 'Ž', 35, 44, 3, 1, 12),
(214, 'Ž20', 'juniorke', 'Ž', 17, 20, 2, 1, 12),
(215, 'Ž16', 'kadetkinje', 'Ž', 13, 16, 2, 1, 12),
(216, 'Ž12', 'djevojčice', 'Ž', 7, 12, 2, 1, 12),
(301, 'Open E', NULL, '-', 21, 99, 1, 2, 21),
(302, 'Open A', NULL, '-', 21, 99, 1, 2, 21),
(303, 'Paralimpic E', NULL, '-', 7, 99, 1, 2, 21),
(304, 'Junior E', NULL, '-', 7, 20, 2, 2, 21),
(401, 'ME', NULL, 'M', 19, 44, 1, 3, 31),
(402, 'ŽE', NULL, 'Ž', 19, 44, 1, 3, 31),
(403, 'M45', NULL, 'M', 45, 99, 3, 3, 31),
(404, 'M kratka', NULL, 'M', 19, 44, 1, 3, 31),
(405, 'M15-18', NULL, 'M', 15, 18, 2, 3, 31),
(406, 'M14', NULL, 'M', 7, 14, 2, 3, 31),
(407, 'Ž45', NULL, 'Ž', 45, 99, 3, 3, 31),
(408, 'Ž kratka', NULL, 'Ž', 19, 44, 1, 3, 31),
(409, 'Ž15-18', NULL, 'Ž', 15, 18, 2, 3, 31),
(410, 'Ž14', NULL, 'Ž', 7, 14, 2, 3, 31);

-- --------------------------------------------------------

--
-- Table structure for table `kategorija_liga`
--

CREATE TABLE `kategorija_liga` (
  `id` int(11) NOT NULL,
  `kategorija_id` smallint(6) NOT NULL,
  `liga_id` smallint(6) NOT NULL,
  `najjaca` bit(1) NOT NULL,
  `naj_dobna` bit(1) NOT NULL,
  `naj_juniori` bit(1) NOT NULL,
  `rbr` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kategorija_liga`
--

INSERT INTO `kategorija_liga` (`id`, `kategorija_id`, `liga_id`, `najjaca`, `naj_dobna`, `naj_juniori`, `rbr`) VALUES
(1001, 101, 101, b'1', b'1', b'0', 1),
(1002, 102, 101, b'1', b'1', b'0', 2),
(1003, 103, 101, b'0', b'1', b'0', 3),
(1004, 104, 101, b'0', b'1', b'0', 4),
(1005, 105, 101, b'0', b'1', b'0', 5),
(1006, 106, 101, b'0', b'1', b'0', 6),
(1007, 107, 101, b'0', b'1', b'0', 7),
(1008, 108, 101, b'0', b'0', b'0', 8),
(1009, 109, 101, b'0', b'1', b'1', 9),
(1010, 110, 101, b'0', b'1', b'0', 10),
(1011, 111, 101, b'0', b'1', b'0', 11),
(1012, 112, 101, b'0', b'1', b'0', 12),
(1013, 113, 101, b'0', b'1', b'0', 13),
(1014, 114, 101, b'0', b'1', b'0', 14),
(1015, 115, 101, b'0', b'1', b'0', 15),
(1016, 116, 101, b'0', b'1', b'0', 16),
(1017, 117, 101, b'0', b'1', b'0', 17),
(1018, 118, 101, b'0', b'0', b'0', 18),
(1019, 119, 101, b'0', b'1', b'1', 19),
(1020, 120, 101, b'0', b'1', b'0', 20),
(1021, 121, 101, b'0', b'1', b'0', 21),
(1022, 122, 101, b'0', b'1', b'0', 22),
(1031, 201, 102, b'1', b'1', b'0', 31),
(1032, 202, 102, b'1', b'1', b'0', 32),
(1033, 203, 102, b'0', b'1', b'0', 33),
(1034, 204, 102, b'0', b'1', b'0', 34),
(1035, 205, 102, b'0', b'1', b'0', 35),
(1036, 206, 102, b'0', b'1', b'0', 36),
(1037, 207, 102, b'0', b'1', b'1', 37),
(1038, 208, 102, b'0', b'1', b'0', 38),
(1039, 209, 102, b'0', b'1', b'0', 39),
(1040, 210, 102, b'0', b'1', b'0', 40),
(1041, 211, 102, b'0', b'1', b'0', 41),
(1042, 212, 102, b'0', b'1', b'0', 42),
(1043, 213, 102, b'0', b'1', b'0', 43),
(1044, 214, 102, b'0', b'1', b'1', 44),
(1045, 215, 102, b'0', b'1', b'0', 45),
(1046, 216, 102, b'0', b'1', b'0', 46),
(1051, 301, 103, b'1', b'1', b'0', 51),
(1052, 302, 103, b'0', b'0', b'0', 52),
(1053, 303, 103, b'0', b'0', b'0', 53),
(1054, 304, 103, b'0', b'1', b'1', 54),
(1061, 401, 104, b'1', b'1', b'0', 61),
(1062, 402, 104, b'1', b'1', b'0', 62),
(1063, 403, 104, b'0', b'1', b'0', 63),
(1064, 407, 104, b'0', b'1', b'0', 64),
(1065, 404, 104, b'0', b'0', b'0', 65),
(1066, 405, 104, b'0', b'1', b'1', 66),
(1067, 406, 104, b'0', b'1', b'0', 67),
(1068, 408, 104, b'0', b'0', b'0', 68),
(1069, 409, 104, b'0', b'1', b'1', 69),
(1070, 410, 104, b'0', b'1', b'0', 70);

-- --------------------------------------------------------

--
-- Table structure for table `klub`
--

CREATE TABLE `klub` (
  `id` smallint(6) NOT NULL,
  `naziv` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `oib` char(11) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `drzava_id` tinyint(4) NOT NULL,
  `eposta` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `web` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `aktivan` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `klub`
--

INSERT INTO `klub` (`id`, `naziv`, `oib`, `drzava_id`, `eposta`, `web`, `aktivan`) VALUES
(1, 'OK Bjelovar', NULL, 1, 'okb@okb.hr', NULL, 1),
(2, 'OK Ivan Merz', NULL, 1, 'info@ok-merz.hr', NULL, 1),
(3, 'OK Japetić', NULL, 1, 'okjapetic@okjapetic.hr', NULL, 1),
(4, 'OK Jelen', NULL, 1, 'info@okjelen.hr', NULL, 1),
(5, 'OK Kapela', NULL, 1, 'info@ok-kapela.hr', NULL, 1),
(6, 'OK Maksimir', NULL, 1, 'ok.maksimir@gmail.com', NULL, 1),
(7, 'OK Međimurje', NULL, 1, 'okmedjimurje@gmail.com', NULL, 1),
(8, 'OK Orion', NULL, 1, 'info@ok-orion.hr', NULL, 1),
(9, 'OK Ris', NULL, 1, NULL, NULL, 0),
(10, 'OK Sova', NULL, 1, NULL, NULL, 1),
(11, 'OK Varaždin', NULL, 1, 'okvarazdin2015@gmail.com', NULL, 1),
(12, 'OK Vihor', NULL, 1, 'vihor@vihor.hr', NULL, 1),
(13, 'OK Brežice', NULL, 2, NULL, NULL, 0),
(14, 'OK Azinut', NULL, 2, NULL, NULL, 1),
(15, 'Pécsi Vasutas SK', NULL, 3, NULL, NULL, 1),
(16, 'OLC Graz', NULL, 4, NULL, NULL, 1),
(17, 'OK Lokve', NULL, 1, NULL, NULL, 0),
(18, 'OK Torpedo', NULL, 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `prezime` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `iprezime` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `kor_ime` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lozinka` varchar(80) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `eposta` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vrstakor_id` int(11) NOT NULL,
  `klub_id` smallint(6) DEFAULT NULL,
  `aktivan` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `iprezime`, `kor_ime`, `lozinka`, `eposta`, `vrstakor_id`, `klub_id`, `aktivan`) VALUES
(140796323, 'Fabiana', 'Cini', 'F. Cini', 'fabiana', 'n/a', 'fabcini@yahoo.com', 846025583, 6, 1),
(142228715, 'Vedran Bijelić', 'Bijelić', 'V. Bijelić', 'vedran', 'n/a', 'vedran.bijelic@gmail.com', 846025583, 1, 1),
(190316148, 'Dario', 'Štambuk', 'D. Štambuk', 'dario', 'n/a', 'dr.stambuk@gmail.com', 846025583, 2, 1),
(203108644, 'Željko', 'Belaj', 'Ž. Belaj', 'željko', 'n/a', 'zeljko.belaj@bj.t-com.hr', 846025583, 1, 1),
(273257528, 'Siniša', 'Lah', 'S. Lah', 'siniša', 'n/a', 'sinisalah11@gmail.com', 846025583, 11, 1),
(280393522, 'Damir', 'Gobec', 'D. Gobec', 'damir', 'n/a', 'damirgobec@gmail.com', 846025583, 12, 1),
(295918891, 'Ana', 'Beblek', 'A. Beblek', 'ana', 'n/a', 'beblek@gmail.com', 846025583, 4, 1),
(310908224, 'Goran', 'Vodopija', 'G. Vodopija', 'goran', '$2y$10$dyzQhbSymuXAWcMHsbwoIOJCYIcoR4hPv/spJd9wwF6QE6tjln9LC', 'logo.cg@gmail.com', 846025583, 5, 1),
(326907555, 'Tomislav', 'Meštrović', 'T. Meštrović', 'tomislav', 'n/a', 'tompa.mestrovic@gmail.com', 846025583, 5, 1),
(328119997, 'Franjo', 'Budi', 'F. Budi', 'franjo', 'n/a', 'franjo.budi@zg.t-com.hr', 846025583, 3, 1),
(345218303, 'Maja', 'Cvitković', 'M. Cvitković', 'maja', 'n/a', 'macvitkovic@gmail.com', 846025583, 12, 1),
(409744956, 'Domagoj', 'Pavlin', 'D. Pavlin', 'domagoj', 'n/a', 'domagoj.pavlin@gmail.com', 846025583, 12, 1),
(470642355, 'Karlo', 'Gobec', 'K. Gobec', 'karlo', '$2y$10$LslOCNW/ZNdcKFQD55p06eJPgYDmxhsbPpz/5S49yaftx8iSefM7C', 'karlo.gobec@gmail.com', 572321572, 12, 1),
(557699598, 'Petra', 'Plevnik', 'P. Plevnik', 'petra', 'n/a', 'seleyah@gmail.com', 846025583, 1, 1),
(625292874, 'Ivo', 'Tišljar', 'I. Tišljar', 'ivo', '$2y$10$BbeJjx/1/kdUoOYzlvEqkOw4amsQX47UPRh8UBk5pYUrZ1S1F7OXO', 'ivo.tisljar@gmail.com', 314727413, 8, 1),
(630218833, 'Matija', 'Razum', 'M. Razum', 'matija', '$2y$10$a2HH70cv3U9JiLYxdb6fBO0v.kbjLE8fi/Dye3ziMuuVHP5Smkl9i', 'matijar33@gmail.com', 846025583, 3, 1),
(664548145, 'Slobodan', 'Sokolović', 'S. Sokolović', 'slobodan', 'n/a', 'ssokolovic@gmail.com', 846025583, 1, 1),
(690593473, 'Karmen', 'Holenda', 'K. Holenda', 'karmen', 'n/a', 'karmen.holenda@gmail.com', 846025583, 11, 1),
(741617154, 'Ivan', 'Šeperić-Grdiša', 'I. Šeperić', 'ivan', '$2y$10$firuuShl3UuJvK5cgOjA5udTICC2EHX6VERyBYg9TvUCXRRHCZbX.', 'seperic@gmail.com', 846025583, 4, 1),
(788899286, 'Frane', 'Marković', 'F. Marković', 'frane', 'n/a', 'frane.markovic@gmail.com', 572321572, 3, 1),
(845868351, 'Tomislav', 'Kaniški', 'T. Kaniški', 'tomo', 'n/a', 'tome.kaniski@gmail.com', 314727413, 6, 1),
(982647186, 'Vladimir', 'Tkalec', 'V. Tkalec', 'vladimir', 'n/a', 'vladimir.tkalec.ck@gmail.com', 846025583, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik_hash`
--

CREATE TABLE `korisnik_hash` (
  `id` int(11) NOT NULL,
  `korisnik_id` int(11) NOT NULL,
  `hash` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `trenutak` datetime NOT NULL,
  `uspjeh` tinyint(1) NOT NULL,
  `brojklikova` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `korisnik_hash`
--

INSERT INTO `korisnik_hash` (`id`, `korisnik_id`, `hash`, `trenutak`, `uspjeh`, `brojklikova`) VALUES
(1, 625292874, '959c735334da62540f901a6beed5ce88c33e21610a22bfea3b2d1a0e357f5302', '2021-04-02 20:07:34', 0, 1),
(2, 470642355, '0b4a8ce2ce31b45a390f6e55d9a648f9ab294841dee00f8b7589b77c06ba4aa1', '2021-04-02 20:34:38', 0, 1),
(3, 470642355, '03874f596c29b8f8ff7621ea73132c3b40c7c2e82169bd499eac67512525a4c0', '2021-04-02 20:39:40', 0, 0),
(4, 470642355, '5f515312130f6493fd5e58629ec71823a1508f4bbfa8fe0ce56ac6d6873190f0', '2021-04-02 20:41:40', 0, 1),
(5, 630218833, '83b60a364aac392b7e93e25daee90ca3fc9c2140743472b88d9743db729c94b6', '2021-04-02 23:34:53', 0, 1),
(6, 310908224, '61159ffb16572de83a09f2ca4af70a7cfa8f24a173b97dbdfc350ef726cdcae4', '2021-04-02 23:34:54', 0, 1),
(7, 741617154, 'cc734e2ed10477107f0f947923669e55fd3f8127cdb37ce63ceaff70f14f940a', '2021-04-03 01:10:05', 0, 1),
(8, 741617154, '15e3b817ce015bcfecf730ed503d564e2d7ca331dee0a099413e2356c7289cdb', '2021-04-03 01:11:13', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik_log`
--

CREATE TABLE `korisnik_log` (
  `id` int(11) NOT NULL,
  `ime` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `prezime` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `iprezime` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `kor_ime` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lozinka` varchar(80) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `eposta` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vrstakor_id` int(11) NOT NULL,
  `klub_id` smallint(6) DEFAULT NULL,
  `aktivan` tinyint(1) NOT NULL,
  `dnevnik_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `korisnik_log`
--

INSERT INTO `korisnik_log` (`id`, `ime`, `prezime`, `iprezime`, `kor_ime`, `lozinka`, `eposta`, `vrstakor_id`, `klub_id`, `aktivan`, `dnevnik_id`) VALUES
(625292874, 'Ivo', 'Tišljar', 'I. Tišljar', 'ivo', '$2y$10$e5cOUNmG0Yoppj.I4k8GU.CopgeZBxtZheZLcjjHwMrzO31bi/4kG', 'ivo.tisljar@gmail.com', 314727413, 8, 1, 1),
(625292874, 'Ivo', 'Tišljar', 'I. Tišljar', 'ivo', '$2y$10$BbeJjx/1/kdUoOYzlvEqkOw4amsQX47UPRh8UBk5pYUrZ1S1F7OXO', 'ivo.tisljar@gmail.com', 314727413, 8, 1, 2),
(845868351, 'Tomislav', 'Kaniški', 'T. Kaniški', 'tomo', 'n/a', 'tome.kaniski@gmail.com', 314727413, 6, 1, 3),
(470642355, 'Karlo', 'Gobec', 'K. Gobec', 'karlo', 'n/a', 'karlo.gobec', 846025583, NULL, 1, 4),
(470642355, 'Karlo', 'Gobec', 'K. Gobec', 'karlo', 'n/a', 'karlo.gobec@gmail.com', 572321572, 12, 1, 5),
(470642355, 'Karlo', 'Gobec', 'K. Gobec', 'karlo', '$2y$10$LslOCNW/ZNdcKFQD55p06eJPgYDmxhsbPpz/5S49yaftx8iSefM7C', 'karlo.gobec@gmail.com', 572321572, 12, 1, 6),
(140796323, 'Fabiana', 'Cini', 'F. Cini', 'fabiana', 'n/a', 'fabcini@yahoo.com', 846025583, 6, 1, 8),
(280393522, 'Damir', 'Gobec', 'D. Gobec', 'damir', 'n/a', 'damirgobec@gmail.com', 846025583, 12, 1, 9),
(409744956, 'Domagoj', 'Pavlin', 'D. Pavlin', 'domagoj', 'n/a', 'domagoj.pavlin@gmail.com', 846025583, 12, 1, 10),
(345218303, 'Maja', 'Cvitković', 'M. Cvitković', 'maja', 'n/a', 'macvitkovic@gmail.com', 846025583, 12, 1, 11),
(788899286, 'Frane', 'Marković', 'F. Marković', 'frane', 'n/a', 'frane.markovic@gmail.com', 572321572, 3, 1, 12),
(326907555, 'Tomislav', 'Meštrović', 'T. Meštrović', 'tomislav', 'n/a', 'tompa.mestrovic@gmail.com', 846025583, 5, 1, 13),
(310908224, 'Goran', 'Vodopija', 'G. Vodopija', 'goran', 'n/a', 'logo.cg@gmail.com', 846025583, 5, 1, 14),
(295918891, 'Ana', 'Beblek', 'A. Beblek', 'ana', 'n/a', 'beblek@gmail.com', 846025583, 4, 1, 15),
(741617154, 'Ivan', 'Šeperić-Grdiša', 'I. Šeperić', 'ivan', 'n/a', 'seperic@gmail.com', 846025583, 4, 1, 16),
(273257528, 'Siniša', 'Lah', 'S. Lah', 'siniša', 'n/a', 'sinisalah11@gmail.com', 846025583, 11, 1, 23),
(690593473, 'Karmen', 'Holenda', 'K. Holenda', 'karmen', 'n/a', 'karmen.holenda@gmail.com', 846025583, 11, 1, 24),
(557699598, 'Petra', 'Plevnik', 'P. Plevnik', 'petra', 'n/a', 'seleyah@gmail.com', 846025583, 1, 1, 25),
(664548145, 'Slobodan', 'Sokolović', 'S. Sokolović', 'slobodan', 'n/a', 'ssokolovic@gmail.com', 846025583, 1, 1, 26),
(142228715, 'Vedran Bijelić', 'Bijelić', 'V. Bijelić', 'vedran', 'n/a', 'vedran.bijelic@gmail.com', 846025583, 1, 1, 27),
(203108644, 'Željko', 'Belaj', 'Ž. Belaj', 'željko', 'n/a', 'zeljko.belaj@bj.t-com.hr', 846025583, 1, 1, 28),
(982647186, 'Vladimir', 'Tkalec', 'V. Tkalec', 'vladimir', 'n/a', 'vladimir.tkalec.ck@gmail.com', 846025583, 7, 1, 29),
(630218833, 'Matija', 'Razum', 'M. Razum', 'matija', 'n/a', 'matijar33@gmail.com', 846025583, 3, 1, 31),
(328119997, 'Franjo', 'Budi', 'F. Budi', 'franjo', 'n/a', 'franjo.budi@zg.t-com.hr', 846025583, 3, 1, 32),
(190316148, 'Dario', 'Štambuk', 'D. Štambuk', 'dario', 'n/a', 'dr.stambuk@gmail.com', 846025583, 2, 1, 33),
(310908224, 'Goran', 'Vodopija', 'G. Vodopija', 'goran', '$2y$10$dyzQhbSymuXAWcMHsbwoIOJCYIcoR4hPv/spJd9wwF6QE6tjln9LC', 'logo.cg@gmail.com', 846025583, 5, 1, 34),
(630218833, 'Matija', 'Razum', 'M. Razum', 'matija', '$2y$10$a2HH70cv3U9JiLYxdb6fBO0v.kbjLE8fi/Dye3ziMuuVHP5Smkl9i', 'matijar33@gmail.com', 846025583, 3, 1, 35),
(741617154, 'Ivan', 'Šeperić-Grdiša', 'I. Šeperić', 'ivan', '$2y$10$firuuShl3UuJvK5cgOjA5udTICC2EHX6VERyBYg9TvUCXRRHCZbX.', 'seperic@gmail.com', 846025583, 4, 1, 162);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik_session`
--

CREATE TABLE `korisnik_session` (
  `id` int(11) NOT NULL,
  `korisnik_id` int(11) NOT NULL,
  `ip_adresa` varchar(24) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_agent` varchar(300) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `login_hash` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `start` datetime NOT NULL,
  `aktivan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `korisnik_session`
--

INSERT INTO `korisnik_session` (`id`, `korisnik_id`, `ip_adresa`, `session_id`, `user_agent`, `login_hash`, `start`, `aktivan`) VALUES
(1, 625292874, '78.2.10.221', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '9a4727dacf560eb663a5105f1c6e7782893b0c8db2ab79a91be91f5a68dc5a48', '2021-04-02 20:15:08', '2021-04-02 21:07:40'),
(2, 470642355, '213.149.51.3', 'ri7kpkr5h8avshlgd9ffq646h7', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'e71472dd7df3d6c8bb88d4f42aff8353b73b0bf53c47dc89190ef089b1a55373', '2021-04-02 20:43:15', '2021-04-02 21:04:23'),
(3, 625292874, '78.2.10.221', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '97d269200495a67b6259532dcc48b59165c5c6938771839b30007075c63756dd', '2021-04-02 21:53:49', '2021-04-02 23:56:03'),
(4, 470642355, '213.149.51.3', 'ri7kpkr5h8avshlgd9ffq646h7', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '34d23b678a98d5e735de27ee3cb05a531d9d7351a2686e3c448b72c14832273f', '2021-04-02 21:58:15', '2021-04-02 21:59:53'),
(5, 470642355, '213.149.51.3', 'ri7kpkr5h8avshlgd9ffq646h7', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '46df087f36b419211bef1b3cf5dea02ffec092b60211a4fce6c57dd41691a009', '2021-04-02 22:40:03', '2021-04-02 22:55:10'),
(6, 310908224, '89.172.46.7', '3mmcb63o7t34ahh7a12mbde400', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'f4870312998aa6fd7e46512caeb0e250fc5d1c38d0505f477fd33da11844da00', '2021-04-02 23:35:49', '2021-04-03 01:35:05'),
(7, 630218833, '93.138.159.60', 'eaq5sg4f6lmdr9357v4cu5lkv3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0', 'e0ea2dce9e1810037d7ae2093a0629bab0b89c3a4fc9b72d1c20c42b954a23fd', '2021-04-02 23:35:49', '2021-04-03 00:13:42'),
(8, 630218833, '93.138.159.60', 'eaq5sg4f6lmdr9357v4cu5lkv3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0', '83158f52b6a9dc4b3449b6a67aef15232430dd567f724a1bfaafe26d01bd6f3b', '2021-04-03 00:14:48', '2021-04-03 00:37:18'),
(9, 625292874, '78.2.10.221', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'e2d75f0da51a13cd30b8f05dfc99116bfffd0f9feac0a896eff9a1e9dfb4f6b7', '2021-04-03 00:38:26', '2021-04-03 00:38:30'),
(10, 741617154, '95.178.231.19', 'cvhc1c2ckdr3mspq8j13l89qj5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '4fd0b75e7ba98d06231c99d167f6aeb244debf696389b2f17abf836cd654d890', '2021-04-03 01:12:06', '2021-04-03 01:14:25'),
(11, 625292874, '78.2.10.221', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '7415af384805cb5a9c2a8093c26d0994ffbafcf53d81eb6191aefb0eb1193e20', '2021-04-03 03:48:53', '2021-04-03 04:08:20'),
(12, 625292874, '78.2.10.221', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'fa05b524e80d8d84e8a0fe146f503d57080b8106e3e320ac58c8405eaf3f9c77', '2021-04-03 04:43:28', '2021-04-03 05:00:18');

-- --------------------------------------------------------

--
-- Table structure for table `liga`
--

CREATE TABLE `liga` (
  `id` smallint(6) NOT NULL,
  `vrstalige_id` tinyint(4) NOT NULL,
  `godina` smallint(6) NOT NULL,
  `rbr` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `liga`
--

INSERT INTO `liga` (`id`, `vrstalige_id`, `godina`, `rbr`) VALUES
(101, 51, 2021, 1),
(102, 52, 2021, 2),
(103, 61, 2021, 3),
(104, 71, 2021, 4);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `trenutak` datetime NOT NULL,
  `ip_adresa` varchar(24) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `korisnik_id` int(11) DEFAULT NULL,
  `kor_ime` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `eposta` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `vrstalogina_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `trenutak`, `ip_adresa`, `korisnik_id`, `kor_ime`, `eposta`, `vrstalogina_id`) VALUES
(1, '2021-04-02 20:07:34', '78.2.10.221', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(2, '2021-04-02 20:11:14', '78.2.10.221', 625292874, '', '', 45),
(3, '2021-04-02 20:11:14', '78.2.10.221', 625292874, '', '', 60),
(4, '2021-04-02 20:15:08', '78.2.10.221', 625292874, '', '', 45),
(5, '2021-04-02 20:15:08', '78.2.10.221', 625292874, '', '', 31),
(6, '2021-04-02 20:15:08', '78.2.10.221', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 31),
(7, '2021-04-02 20:34:38', '213.149.51.3', 470642355, '', 'karlo.gobec@gmail.com', 30),
(8, '2021-04-02 20:35:52', '213.149.51.3', 470642355, '', '', 45),
(9, '2021-04-02 20:35:52', '213.149.51.3', 470642355, '', '', 60),
(10, '2021-04-02 20:37:18', '213.149.51.3', 470642355, '', '', 45),
(11, '2021-04-02 20:37:18', '213.149.51.3', NULL, '', '', 51),
(12, '2021-04-02 20:37:31', '213.149.51.3', 470642355, '', '', 42),
(13, '2021-04-02 20:38:07', '213.149.51.3', NULL, '', 'karlo.gobec@gmail.com', 33),
(14, '2021-04-02 20:39:40', '213.149.51.3', 470642355, '', 'karlo.gobec@gmail.com', 30),
(15, '2021-04-02 20:40:05', '213.149.51.3', 470642355, '', '', 42),
(16, '2021-04-02 20:40:17', '213.149.51.3', 470642355, '', '', 42),
(17, '2021-04-02 20:40:26', '213.149.51.3', 470642355, '', '', 42),
(18, '2021-04-02 20:40:53', '213.149.51.3', 470642355, '', '', 42),
(19, '2021-04-02 20:41:40', '213.149.51.3', 470642355, '', 'karlo.gobec@gmail.com', 30),
(20, '2021-04-02 20:42:09', '213.149.51.3', 470642355, '', '', 45),
(21, '2021-04-02 20:42:09', '213.149.51.3', 470642355, '', '', 60),
(22, '2021-04-02 20:43:15', '213.149.51.3', 470642355, '', '', 45),
(23, '2021-04-02 20:43:15', '213.149.51.3', 470642355, '', '', 31),
(24, '2021-04-02 20:43:15', '213.149.51.3', 470642355, 'karlo', 'karlo.gobec@gmail.com', 31),
(25, '2021-04-02 21:07:45', '78.2.10.221', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 11),
(26, '2021-04-02 21:53:49', '78.2.10.221', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 10),
(27, '2021-04-02 21:58:15', '213.149.51.3', 470642355, 'karlo', 'karlo.gobec@gmail.com', 10),
(28, '2021-04-02 22:40:03', '213.149.51.3', 470642355, 'karlo', 'karlo.gobec@gmail.com', 10),
(29, '2021-04-02 22:56:00', '213.149.51.3', 470642355, 'karlo', 'karlo.gobec@gmail.com', 11),
(30, '2021-04-02 23:34:53', '93.138.159.60', 630218833, '', 'matijar33@gmail.com', 30),
(31, '2021-04-02 23:34:54', '89.172.46.7', 310908224, '', 'logo.cg@gmail.com', 30),
(32, '2021-04-02 23:35:15', '93.138.159.60', 630218833, '', '', 45),
(33, '2021-04-02 23:35:15', '93.138.159.60', 630218833, '', '', 60),
(34, '2021-04-02 23:35:18', '89.172.46.7', 310908224, '', '', 45),
(35, '2021-04-02 23:35:18', '89.172.46.7', 310908224, '', '', 60),
(36, '2021-04-02 23:35:49', '89.172.46.7', 310908224, '', '', 45),
(37, '2021-04-02 23:35:49', '89.172.46.7', 310908224, '', '', 31),
(38, '2021-04-02 23:35:49', '89.172.46.7', 310908224, 'goran', 'logo.cg@gmail.com', 31),
(39, '2021-04-02 23:35:49', '93.138.159.60', 630218833, '', '', 45),
(40, '2021-04-02 23:35:49', '93.138.159.60', 630218833, '', '', 31),
(41, '2021-04-02 23:35:49', '93.138.159.60', 630218833, 'matija', 'matijar33@gmail.com', 31),
(42, '2021-04-03 00:13:48', '93.138.159.60', 630218833, 'matija', 'matijar33@gmail.com', 11),
(43, '2021-04-03 00:13:56', '93.138.159.60', NULL, '', '', 85),
(44, '2021-04-03 00:13:56', '93.138.159.60', NULL, '', '', 85),
(45, '2021-04-03 00:13:56', '93.138.159.60', NULL, '', '', 85),
(46, '2021-04-03 00:13:56', '93.138.159.60', NULL, '', '', 85),
(47, '2021-04-03 00:13:56', '93.138.159.60', NULL, '', '', 85),
(48, '2021-04-03 00:13:56', '93.138.159.60', NULL, '', '', 85),
(49, '2021-04-03 00:13:56', '93.138.159.60', NULL, '', '', 85),
(50, '2021-04-03 00:13:56', '93.138.159.60', NULL, '', '', 85),
(51, '2021-04-03 00:13:56', '93.138.159.60', NULL, '', '', 85),
(52, '2021-04-03 00:13:56', '93.138.159.60', NULL, '', '', 85),
(53, '2021-04-03 00:13:56', '93.138.159.60', NULL, '', '', 85),
(54, '2021-04-03 00:13:56', '93.138.159.60', NULL, '', '', 85),
(55, '2021-04-03 00:13:56', '93.138.159.60', NULL, '', '', 85),
(56, '2021-04-03 00:14:06', '93.138.159.60', NULL, '', '', 85),
(57, '2021-04-03 00:14:06', '93.138.159.60', NULL, '', '', 85),
(58, '2021-04-03 00:14:06', '93.138.159.60', NULL, '', '', 85),
(59, '2021-04-03 00:14:06', '93.138.159.60', NULL, '', '', 85),
(60, '2021-04-03 00:14:06', '93.138.159.60', NULL, '', '', 85),
(61, '2021-04-03 00:14:06', '93.138.159.60', NULL, '', '', 85),
(62, '2021-04-03 00:14:06', '93.138.159.60', NULL, '', '', 85),
(63, '2021-04-03 00:14:06', '93.138.159.60', NULL, '', '', 85),
(64, '2021-04-03 00:14:06', '93.138.159.60', NULL, '', '', 85),
(65, '2021-04-03 00:14:06', '93.138.159.60', NULL, '', '', 85),
(66, '2021-04-03 00:14:06', '93.138.159.60', NULL, '', '', 85),
(67, '2021-04-03 00:14:06', '93.138.159.60', NULL, '', '', 85),
(68, '2021-04-03 00:14:06', '93.138.159.60', NULL, '', '', 85),
(69, '2021-04-03 00:14:24', '93.138.159.60', NULL, '', '', 85),
(70, '2021-04-03 00:14:24', '93.138.159.60', NULL, '', '', 85),
(71, '2021-04-03 00:14:24', '93.138.159.60', NULL, '', '', 85),
(72, '2021-04-03 00:14:24', '93.138.159.60', NULL, '', '', 85),
(73, '2021-04-03 00:14:24', '93.138.159.60', NULL, '', '', 85),
(74, '2021-04-03 00:14:48', '93.138.159.60', 630218833, 'matija', 'matijar33@gmail.com', 10),
(75, '2021-04-03 00:37:23', '93.138.159.60', 630218833, 'matija', 'matijar33@gmail.com', 11),
(76, '2021-04-03 00:37:42', '93.138.159.60', NULL, '', '', 85),
(77, '2021-04-03 00:37:42', '93.138.159.60', NULL, '', '', 85),
(78, '2021-04-03 00:37:42', '93.138.159.60', NULL, '', '', 85),
(79, '2021-04-03 00:37:42', '93.138.159.60', NULL, '', '', 85),
(80, '2021-04-03 00:37:42', '93.138.159.60', NULL, '', '', 85),
(81, '2021-04-03 00:37:42', '93.138.159.60', NULL, '', '', 85),
(82, '2021-04-03 00:37:42', '93.138.159.60', NULL, '', '', 85),
(83, '2021-04-03 00:37:42', '93.138.159.60', NULL, '', '', 85),
(84, '2021-04-03 00:37:42', '93.138.159.60', NULL, '', '', 85),
(85, '2021-04-03 00:37:42', '93.138.159.60', NULL, '', '', 85),
(86, '2021-04-03 00:37:42', '93.138.159.60', NULL, '', '', 85),
(87, '2021-04-03 00:37:42', '93.138.159.60', NULL, '', '', 85),
(88, '2021-04-03 00:37:42', '93.138.159.60', NULL, '', '', 85),
(89, '2021-04-03 00:38:26', '78.2.10.221', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 10),
(90, '2021-04-03 01:00:08', '89.172.46.7', NULL, '', '', 90),
(91, '2021-04-03 01:00:14', '89.172.46.7', NULL, '', '', 90),
(92, '2021-04-03 01:04:12', '89.172.46.7', NULL, '', '', 90),
(93, '2021-04-03 01:04:16', '89.172.46.7', NULL, '', '', 90),
(94, '2021-04-03 01:05:55', '66.220.149.16', NULL, '', '', 71),
(95, '2021-04-03 01:10:05', '95.178.231.19', 741617154, '', 'seperic@gmail.com', 30),
(96, '2021-04-03 01:10:36', '95.178.231.19', 741617154, '', '', 45),
(97, '2021-04-03 01:10:36', '95.178.231.19', 741617154, '', '', 60),
(98, '2021-04-03 01:11:00', '95.178.231.19', 741617154, '', '', 45),
(99, '2021-04-03 01:11:00', '95.178.231.19', NULL, '', '', 51),
(100, '2021-04-03 01:11:13', '95.178.231.19', 741617154, '', 'seperic@gmail.com', 30),
(101, '2021-04-03 01:11:43', '95.178.231.19', 741617154, '', '', 45),
(102, '2021-04-03 01:11:43', '95.178.231.19', 741617154, '', '', 60),
(103, '2021-04-03 01:12:06', '95.178.231.19', 741617154, '', '', 45),
(104, '2021-04-03 01:12:06', '95.178.231.19', 741617154, '', '', 31),
(105, '2021-04-03 01:12:06', '95.178.231.19', 741617154, 'ivan', 'seperic@gmail.com', 31),
(106, '2021-04-03 01:35:12', '89.172.46.7', 310908224, 'goran', 'logo.cg@gmail.com', 11),
(107, '2021-04-03 01:35:24', '89.172.46.7', NULL, '', '', 85),
(108, '2021-04-03 01:35:24', '89.172.46.7', NULL, '', '', 85),
(109, '2021-04-03 01:35:24', '89.172.46.7', NULL, '', '', 85),
(110, '2021-04-03 01:35:24', '89.172.46.7', NULL, '', '', 85),
(111, '2021-04-03 01:35:24', '89.172.46.7', NULL, '', '', 85),
(112, '2021-04-03 01:35:24', '89.172.46.7', NULL, '', '', 85),
(113, '2021-04-03 01:35:24', '89.172.46.7', NULL, '', '', 85),
(114, '2021-04-03 01:35:24', '89.172.46.7', NULL, '', '', 85),
(115, '2021-04-03 01:35:24', '89.172.46.7', NULL, '', '', 85),
(116, '2021-04-03 01:35:24', '89.172.46.7', NULL, '', '', 85),
(117, '2021-04-03 01:35:24', '89.172.46.7', NULL, '', '', 85),
(118, '2021-04-03 01:35:24', '89.172.46.7', NULL, '', '', 85),
(119, '2021-04-03 01:35:24', '89.172.46.7', NULL, '', '', 85),
(120, '2021-04-03 03:48:53', '78.2.10.221', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 10),
(121, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(122, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(123, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(124, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(125, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(126, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(127, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(128, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(129, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(130, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(131, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(132, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(133, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(134, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(135, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(136, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(137, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(138, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(139, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(140, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(141, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(142, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(143, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(144, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(145, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(146, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(147, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(148, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(149, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(150, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(151, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(152, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(153, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(154, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(155, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(156, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(157, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(158, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(159, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(160, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(161, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(162, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(163, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(164, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(165, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(166, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(167, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(168, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(169, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(170, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(171, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(172, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(173, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(174, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(175, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(176, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(177, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(178, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(179, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(180, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(181, '2021-04-03 04:43:18', '78.2.10.221', NULL, '', '', 85),
(182, '2021-04-03 04:43:28', '78.2.10.221', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 10);

-- --------------------------------------------------------

--
-- Table structure for table `osoba`
--

CREATE TABLE `osoba` (
  `id` int(11) NOT NULL,
  `reg_broj` int(11) DEFAULT NULL,
  `oib` char(11) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `spol_id` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dat_rodjenja` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `osoba`
--

INSERT INTO `osoba` (`id`, `reg_broj`, `oib`, `spol_id`, `dat_rodjenja`) VALUES
(1001, 3001, NULL, 'M', '1983-07-16'),
(1002, 3002, NULL, 'M', NULL),
(1003, 3003, NULL, 'M', '1971-06-07'),
(1004, 3004, NULL, 'Ž', '2004-01-03'),
(1005, 3005, NULL, 'Ž', NULL),
(1006, 3006, NULL, 'Ž', NULL),
(1007, 3007, NULL, 'Ž', NULL),
(1008, 3008, NULL, 'Ž', '1973-11-15'),
(1009, 3009, NULL, 'Ž', NULL),
(1010, 3010, NULL, 'Ž', '1984-01-29'),
(1011, 3011, NULL, 'M', '1970-07-04'),
(1012, 3012, NULL, 'M', NULL),
(1013, 3013, NULL, 'M', '1991-05-24'),
(1014, 3014, NULL, 'M', '1956-07-16'),
(1015, 3015, NULL, 'M', NULL),
(1016, 3016, NULL, 'M', '1977-02-15'),
(1017, 3017, NULL, 'M', '1982-06-23'),
(1018, 3018, NULL, 'Ž', '1978-10-31'),
(1019, 3019, '00746183517', 'Ž', '1962-03-19'),
(1020, 3020, NULL, 'M', '1976-08-19'),
(1021, 3021, NULL, 'Ž', NULL),
(1022, 3022, NULL, 'M', '2011-02-16'),
(1023, 3023, NULL, 'Ž', '1949-07-25'),
(1024, 3024, NULL, 'Ž', '2002-01-05'),
(1025, 3025, NULL, 'Ž', '2006-01-11'),
(1026, 3026, NULL, 'Ž', '1979-12-04'),
(1027, 3027, NULL, 'Ž', '1976-10-09'),
(1028, 3028, NULL, 'M', '2012-11-17'),
(1029, 3029, NULL, 'Ž', '2006-01-11'),
(1030, 3030, NULL, 'Ž', '1982-12-15'),
(1031, 3031, NULL, 'M', '1991-09-22'),
(1032, 3032, '24892836714', 'Ž', '1980-01-03'),
(1033, 3033, NULL, 'Ž', '1980-03-04'),
(1034, 3034, NULL, 'M', '1984-06-09'),
(1035, 3035, NULL, 'M', NULL),
(1036, 3036, NULL, 'M', '1965-09-06'),
(1037, 3037, NULL, 'Ž', '1984-03-28'),
(1038, 3038, NULL, 'M', '1963-05-10'),
(1039, 3039, '00676731732', 'Ž', '1991-02-04'),
(1040, 3040, '00921941970', 'M', '1998-01-03'),
(1041, 3041, '01021815512', 'Ž', '2005-07-11'),
(1042, 3042, '01232322356', 'Ž', '2007-03-31'),
(1043, 3043, '01415167897', 'Ž', '1967-01-21'),
(1044, 3044, '01650989844', 'M', '1952-05-14'),
(1045, 3045, '01697685371', 'Ž', '1972-11-24'),
(1046, 3046, '02287493964', 'Ž', '2004-07-21'),
(1047, 3047, '02449205795', 'Ž', '2007-10-25'),
(1048, 3048, '02623215344', 'Ž', '1985-04-26'),
(1049, 3049, '02950236907', 'Ž', '1985-10-12'),
(1050, 3050, '03006951751', 'M', '2008-06-27'),
(1051, 3051, '03023930333', 'Ž', NULL),
(1052, 3052, '03091353961', 'M', '1982-02-21'),
(1053, 3053, '03460520788', 'Ž', '1967-04-17'),
(1054, 3054, '03616450111', 'M', '2007-09-24'),
(1055, 3055, '03619694945', 'Ž', '2009-06-25'),
(1056, 3056, '03854232487', 'M', '1974-10-24'),
(1057, 3057, '03943619746', 'M', NULL),
(1058, 3058, '04282481038', 'M', '1965-08-05'),
(1059, 3059, '04488947301', 'Ž', '1986-02-16'),
(1060, 3060, '04654512678', 'M', '1944-04-19'),
(1061, 3061, '04735895159', 'M', '1967-03-28'),
(1062, 3062, '04811072367', 'Ž', '1977-12-06'),
(1063, 3063, '05270634843', 'Ž', '1980-12-10'),
(1064, 3064, '05373167260', 'M', NULL),
(1065, 3065, '05486915242', 'Ž', '1973-06-02'),
(1066, 3066, '05525223298', 'M', '2009-05-13'),
(1067, 3067, '05874945965', 'Ž', '1972-10-12'),
(1068, 3068, '06130055177', 'M', '2005-05-25'),
(1069, 3069, '06277613592', 'M', '1971-11-01'),
(1070, 3070, '06792527558', 'Ž', '1975-01-05'),
(1071, 3071, '06902217034', 'M', '1986-10-24'),
(1072, 3072, '06916410751', 'M', '1973-12-23'),
(1073, 3073, '07259297872', 'M', NULL),
(1074, 3074, '07396129862', 'Ž', '1972-12-15'),
(1075, 3075, '07405005295', 'M', '1972-02-10'),
(1076, 3076, '07407873343', 'Ž', '1971-03-23'),
(1077, 3077, '07471023697', 'M', NULL),
(1078, 3078, '07553652019', 'M', '1973-09-12'),
(1079, 3079, '07837660489', 'M', '2002-05-16'),
(1080, 3080, '07946817139', 'Ž', '1971-05-06'),
(1081, 3081, '08194392100', 'M', '1984-07-27'),
(1082, 3082, '08396511994', 'M', NULL),
(1083, 3083, '08566425233', 'M', '2009-09-22'),
(1084, 3084, '08670653988', 'Ž', '1973-10-28'),
(1085, 3085, '08759304832', 'M', NULL),
(1086, 3086, '09217009568', 'Ž', '1979-04-17'),
(1087, 3087, '09673763306', 'Ž', '1971-12-06'),
(1088, 3088, '09918322681', 'M', '2009-03-26'),
(1089, 3089, '10036323630', 'M', '2003-10-23'),
(1090, 3090, '10061795607', 'M', '1974-09-07'),
(1091, 3091, '10099192843', 'M', NULL),
(1092, 3092, '10486270721', 'Ž', '1980-02-19'),
(1093, 3093, '11036671206', 'Ž', NULL),
(1094, 3094, '11052666287', 'Ž', '1983-06-13'),
(1095, 3095, '11080584362', 'M', '2007-03-05'),
(1096, 3096, '11128942314', 'M', '1965-07-27'),
(1097, 3097, '11156938615', 'Ž', '1973-03-25'),
(1098, 3098, '11322935453', 'M', '2013-06-23'),
(1099, 3099, '11387102018', 'M', '1981-11-05'),
(1100, 3100, '11786617930', 'Ž', '1980-12-16'),
(1101, 3101, '12084664088', 'Ž', NULL),
(1102, 3102, NULL, 'M', NULL),
(1103, 3103, NULL, 'M', NULL),
(1104, 3104, NULL, 'M', '2002-06-18'),
(1105, 3105, '12697721333', 'M', '2001-07-24'),
(1106, 3106, '13052963748', 'M', NULL),
(1107, 3107, '13336301698', 'M', NULL),
(1108, 3108, '13399865904', 'M', '2008-01-18'),
(1109, 3109, '13716311000', 'M', '1962-06-04'),
(1110, 3110, '13724177447', 'M', NULL),
(1111, 3111, '13814648834', 'M', '1983-01-08'),
(1112, 3112, '14465654185', 'M', '1976-09-05'),
(1113, 3113, '14510142438', 'Ž', NULL),
(1114, 3114, '14539252268', 'M', '2000-07-01'),
(1115, 3115, '14774614049', 'M', NULL),
(1116, 3116, '14909998285', 'M', '2004-09-25'),
(1117, 3117, '15196499749', 'Ž', '1993-07-27'),
(1118, 3118, '15359167673', 'M', '2005-12-30'),
(1119, 3119, '15397338459', 'M', NULL),
(1120, 3120, '15411007814', 'M', NULL),
(1121, 3121, '15648404668', 'Ž', '2004-10-11'),
(1122, 3122, '15843759835', 'M', NULL),
(1123, 3123, '15962222732', 'Ž', '1974-07-17'),
(1124, 3124, '15978732936', 'M', '2001-08-26'),
(1125, 3125, '16104477400', 'M', '1982-05-09'),
(1126, 3126, '16109613181', 'M', '1971-09-05'),
(1127, 3127, '16313104251', 'M', NULL),
(1128, 3128, '16401667801', 'Ž', '1966-10-12'),
(1129, 3129, '16748289166', 'Ž', NULL),
(1130, 3130, '16980714909', 'M', '1991-04-21'),
(1131, 3131, '17157160013', 'M', NULL),
(1132, 3132, '17376968139', 'M', NULL),
(1133, 3133, '17392577011', 'M', '1962-09-02'),
(1134, 3134, NULL, 'M', '1968-08-01'),
(1135, 3135, '17556672591', 'Ž', '1979-02-06'),
(1136, 3136, '17903056323', 'Ž', '1989-04-17'),
(1137, 3137, '18019509580', 'Ž', '1967-02-22'),
(1138, 3138, '18571449013', 'M', '1970-11-22'),
(1139, 3139, '18740189143', 'M', '1985-11-09'),
(1140, 3140, '19022782993', 'Ž', '1987-02-22'),
(1141, 3141, '19108491700', 'Ž', '1972-05-07'),
(1142, 3142, '19369338999', 'M', '1975-01-04'),
(1143, 3143, '19500028291', 'M', '1999-04-13'),
(1144, 3144, '19510320121', 'M', '1972-05-26'),
(1145, 3145, '19544659880', 'M', '1955-10-14'),
(1146, 3146, '19661247495', 'Ž', '1972-11-11'),
(1147, 3147, '19873421967', 'M', NULL),
(1148, 3148, '20012570180', 'Ž', '1978-12-25'),
(1149, 3149, '20299268545', 'Ž', NULL),
(1150, 3150, '20436083300', 'M', NULL),
(1151, 3151, '20627712172', 'M', '1973-09-04'),
(1152, 3152, '20682170878', 'Ž', '1973-12-28'),
(1153, 3153, '20828208578', 'M', '1999-01-02'),
(1154, 3154, '20932532967', 'Ž', '1974-06-20'),
(1155, 3155, '21106557050', 'M', '2005-12-05'),
(1156, 3156, '21106901450', 'Ž', '2009-05-27'),
(1157, 3157, '21626226581', 'M', '1997-07-07'),
(1158, 3158, '21813594719', 'Ž', '1991-07-09'),
(1159, 3159, '21947637307', 'M', '2005-01-13'),
(1160, 3160, '22026225430', 'Ž', '2000-04-21'),
(1161, 3161, '22031498464', 'M', '1985-01-11'),
(1162, 3162, '22212936088', 'M', NULL),
(1163, 3163, '22326784517', 'M', '1976-10-19'),
(1164, 3164, '22336957390', 'M', '1983-08-26'),
(1165, 3165, '22609077133', 'M', '2007-02-14'),
(1166, 3166, '22921156749', 'Ž', '1959-11-04'),
(1167, 3167, '23076596294', 'M', '1987-06-29'),
(1168, 3168, '23353344617', 'Ž', '2012-05-05'),
(1169, 3169, '23626573008', 'M', '2006-10-11'),
(1170, 3170, '23627932197', 'M', '2006-12-04'),
(1171, 3171, '24120340948', 'M', '1997-08-26'),
(1172, 3172, '24233680100', 'M', '2001-01-18'),
(1173, 3173, '24295178959', 'M', NULL),
(1174, 3174, '24345537988', 'M', '2009-09-17'),
(1175, 3175, '24435632833', 'Ž', '1980-06-13'),
(1176, 3176, '24472333162', 'M', NULL),
(1177, 3177, '24505022974', 'Ž', '1970-04-23'),
(1178, 3178, '24995283096', 'Ž', '2007-03-15'),
(1179, 3179, '25295948001', 'M', NULL),
(1180, 3180, '25390803156', 'M', NULL),
(1181, 3181, '25780862766', 'Ž', '1985-06-24'),
(1182, 3182, '25813971407', 'Ž', '2007-07-21'),
(1183, 3183, '25976690449', 'M', '1973-03-25'),
(1184, 3184, '26144165730', 'Ž', '1985-04-12'),
(1185, 3185, '26862989701', 'M', '1998-11-18'),
(1186, 3186, '26913110650', 'Ž', NULL),
(1187, 3187, '26934227253', 'Ž', '2004-12-02'),
(1188, 3188, '27173542770', 'M', '1953-10-02'),
(1189, 3189, '27374847310', 'Ž', '1971-12-08'),
(1190, 3190, '27837987427', 'Ž', '1984-09-19'),
(1191, 3191, '28217056515', 'M', '2002-02-26'),
(1192, 3192, '28315898271', 'M', '1992-08-23'),
(1193, 3193, '28536948768', 'Ž', '1982-04-25'),
(1194, 3194, '28680242273', 'Ž', '1979-04-12'),
(1195, 3195, '28954681898', 'M', '1983-09-26'),
(1196, 3196, '29196578842', 'M', NULL),
(1197, 3197, '29233052670', 'Ž', NULL),
(1198, 3198, '29587646072', 'Ž', '2001-06-06'),
(1199, 3199, '29740733797', 'Ž', NULL),
(1200, 3200, '30220233630', 'Ž', '1969-01-09'),
(1201, 3201, '30332962290', 'M', '1987-02-03'),
(1202, 3202, '30434316451', 'Ž', NULL),
(1203, 3203, '30868263164', 'Ž', '1998-03-19'),
(1204, 3204, '30884390696', 'Ž', '2006-04-28'),
(1205, 3205, '31051425059', 'M', '1979-08-18'),
(1206, 3206, '31479732158', 'M', '1977-10-10'),
(1207, 3207, '32062453958', 'M', '2010-09-08'),
(1208, 3208, '32312871087', 'M', '1951-05-07'),
(1209, 3209, '32374115878', 'M', '1972-11-04'),
(1210, 3210, '32462097010', 'M', '2004-10-25'),
(1211, 3211, '32469507314', 'M', '1968-07-12'),
(1212, 3212, '32813390566', 'Ž', '1979-11-20'),
(1213, 3213, '33212740736', 'M', '2010-01-10'),
(1214, 3214, '33347617911', 'Ž', '1988-05-04'),
(1215, 3215, '34334003296', 'Ž', '2003-10-23'),
(1216, 3216, '34724442837', 'Ž', '1982-11-23'),
(1217, 3217, '34881884916', 'Ž', '1969-03-26'),
(1218, 3218, '34909391509', 'Ž', '1986-07-15'),
(1219, 3219, '35069384057', 'M', '1961-04-13'),
(1220, 3220, '35205964568', 'Ž', '1979-07-18'),
(1221, 3221, '35219593766', 'M', NULL),
(1222, 3222, '35402699573', 'Ž', '1981-12-08'),
(1223, 3223, '35560019268', 'M', '1992-04-12'),
(1224, 3224, '35697925268', 'M', NULL),
(1225, 3225, '35704436788', 'Ž', '1967-05-29'),
(1226, 3226, '35827742621', 'Ž', '2003-01-14'),
(1227, 3227, '35832557588', 'Ž', '1949-01-04'),
(1228, 3228, '35936249385', 'Ž', '1968-03-05'),
(1229, 3229, '36029682003', 'Ž', '2006-10-26'),
(1230, 3230, '36054335922', 'Ž', '1974-01-26'),
(1231, 3231, '36083907210', 'Ž', '1955-12-22'),
(1232, 3232, '36333245134', 'Ž', '1968-11-18'),
(1233, 3233, '36650750155', 'M', '1977-06-01'),
(1234, 3234, '36926300415', 'M', '1974-09-21'),
(1235, 3235, '37233935552', 'Ž', NULL),
(1236, 3236, '37620332922', 'Ž', '2001-01-05'),
(1237, 3237, '37961289996', 'M', '1973-02-28'),
(1238, 3238, '38062825126', 'M', '1984-08-21'),
(1239, 3239, '38080134608', 'M', NULL),
(1240, 3240, '38743035086', 'Ž', '1970-07-10'),
(1241, 3241, '38840254260', 'Ž', NULL),
(1242, 3242, '39231799187', 'M', '2001-04-30'),
(1243, 3243, '39374328193', 'Ž', '2006-03-28'),
(1244, 3244, '39408831783', 'Ž', NULL),
(1245, 3245, '39586348040', 'Ž', NULL),
(1246, 3246, '40126283977', 'M', NULL),
(1247, 3247, '40462932794', 'M', '1999-05-05'),
(1248, 3248, '40539938462', 'Ž', '1983-04-21'),
(1249, 3249, '40604516037', 'M', '1965-05-25'),
(1250, 3250, '40931009134', 'M', '1953-04-18'),
(1251, 3251, '41118091789', 'M', NULL),
(1252, 3252, '41186433002', 'M', '2009-11-05'),
(1253, 3253, '41405640950', 'M', '1963-01-26'),
(1254, 3254, '41557932540', 'M', '1979-04-27'),
(1255, 3255, '41826284943', 'Ž', '1993-06-25'),
(1256, 3256, '42280317187', 'M', NULL),
(1257, 3257, '42896694548', 'M', '1966-01-23'),
(1258, 3258, '43072086887', 'Ž', '2008-08-05'),
(1259, 3259, '43269743600', 'Ž', '2005-11-28'),
(1260, 3260, '43538309728', 'Ž', '1979-11-28'),
(1261, 3261, '43781126062', 'Ž', '1986-10-14'),
(1262, 3262, '44062027614', 'Ž', '1981-04-07'),
(1263, 3263, '44557294962', 'M', '2001-08-26'),
(1264, 3264, '44619123747', 'M', '1985-02-14'),
(1265, 3265, '44643549204', 'Ž', '1992-01-22'),
(1266, 3266, '44761792952', 'M', '1975-04-28'),
(1267, 3267, '45051065130', 'Ž', '1976-10-07'),
(1268, 3268, '45344117831', 'Ž', '1971-08-16'),
(1269, 3269, '45625870473', 'Ž', '1977-11-04'),
(1270, 3270, '45628408565', 'Ž', NULL),
(1271, 3271, '45675450471', 'M', '1954-02-12'),
(1272, 3272, '45956869115', 'Ž', NULL),
(1273, 3273, '46017388462', 'Ž', '1974-06-24'),
(1274, 3274, '46841108798', 'M', '1966-11-03'),
(1275, 3275, '46913243858', 'Ž', '1979-12-17'),
(1276, 3276, '47076631442', 'Ž', '2000-02-05'),
(1277, 3277, '47413759627', 'M', '1982-03-20'),
(1278, 3278, '47810325005', 'Ž', NULL),
(1279, 3279, '47939431864', 'Ž', '1950-05-05'),
(1280, 3280, '47989942080', 'M', '1967-04-03'),
(1281, 3281, '48174813779', 'Ž', NULL),
(1282, 3282, '48429489225', 'M', '1983-02-24'),
(1283, 3283, '48758459374', 'M', '2006-03-14'),
(1284, 3284, '49029995600', 'M', NULL),
(1285, 3285, '49558333476', 'M', '2007-04-06'),
(1286, 3286, '49992042354', 'Ž', '1969-02-23'),
(1287, 3287, '50033321167', 'Ž', '1975-09-07'),
(1288, 3288, '50530439438', 'M', '1988-04-15'),
(1289, 3289, '50670231138', 'M', '1978-07-08'),
(1290, 3290, '50746794401', 'Ž', NULL),
(1291, 3291, '50786732072', 'Ž', '1997-09-15'),
(1292, 3292, '50910710641', 'Ž', '1997-02-11'),
(1293, 3293, '51079175589', 'M', NULL),
(1294, 3294, '51510915151', 'M', '1990-11-10'),
(1295, 3295, '51961716954', 'M', '1974-12-27'),
(1296, 3296, '52135495671', 'Ž', '1963-04-26'),
(1297, 3297, '52257485318', 'M', '2000-07-22'),
(1298, 3298, '52264017635', 'Ž', '2000-06-15'),
(1299, 3299, '52532693829', 'M', '1955-01-31'),
(1300, 3300, '52633338179', 'M', '1985-08-03'),
(1301, 3301, '52912132731', 'Ž', '2005-07-31'),
(1302, 3302, '53020441144', 'M', '1973-02-21'),
(1303, 3303, '53236769254', 'M', '1999-07-03'),
(1304, 3304, '53579724139', 'M', '2008-08-29'),
(1305, 3305, '53789892698', 'Ž', '2010-05-10'),
(1306, 3306, '53859730433', 'M', '1957-08-22'),
(1307, 3307, '53909182185', 'M', '2010-03-01'),
(1308, 3308, '54071252894', 'M', NULL),
(1309, 3309, '54209061672', 'Ž', '1973-02-08'),
(1310, 3310, '54429651003', 'M', '1978-10-05'),
(1311, 3311, '54475969682', 'M', '2002-02-02'),
(1312, 3312, '54826208442', 'M', '1975-06-29'),
(1313, 3313, '55134514219', 'M', '1972-02-25'),
(1314, 3314, '55214207403', 'M', '1970-08-13'),
(1315, 3315, '55305019772', 'M', '2010-03-26'),
(1316, 3316, '55586705914', 'Ž', '1976-11-23'),
(1317, 3317, '55633784892', 'M', '2008-11-04'),
(1318, 3318, '55974168423', 'M', '1963-03-11'),
(1319, 3319, '56064541267', 'Ž', '1977-07-30'),
(1320, 3320, '56152676653', 'Ž', '1969-11-22'),
(1321, 3321, '56522180624', 'M', NULL),
(1322, 3322, NULL, 'Ž', '1980-05-17'),
(1323, 3323, '56810095985', 'M', '1972-12-02'),
(1324, 3324, '56851937082', 'Ž', NULL),
(1325, 3325, '56989465091', 'M', '1971-10-18'),
(1326, 3326, '57081523157', 'Ž', '1980-04-06'),
(1327, 3327, '57298273182', 'M', NULL),
(1328, 3328, '57366273530', 'M', '1986-02-09'),
(1329, 3329, '57789111404', 'Ž', '2005-11-15'),
(1330, 3330, '57797625091', 'Ž', '1979-02-03'),
(1331, 3331, '58002194743', 'Ž', '1980-02-06'),
(1332, 3332, '58327960209', 'Ž', '1964-01-29'),
(1333, 3333, '58383460625', 'M', '1981-04-23'),
(1334, 3334, '58389659985', 'M', '1974-07-15'),
(1335, 3335, '58498243166', 'M', NULL),
(1336, 3336, '58878840282', 'M', '1991-04-09'),
(1337, 3337, '58990460969', 'Ž', '2001-08-16'),
(1338, 3338, '59337987550', 'Ž', NULL),
(1339, 3339, '59496094693', 'M', '1989-05-25'),
(1340, 3340, '59755243333', 'Ž', '1972-09-10'),
(1341, 3341, '59863755713', 'M', NULL),
(1342, 3342, '59971669146', 'M', '2008-06-27'),
(1343, 3343, '59994083188', 'M', '1973-06-10'),
(1344, 3344, '60046528834', 'Ž', '1988-03-27'),
(1345, 3345, '60097015941', 'Ž', '1987-01-21'),
(1346, 3346, '60204640600', 'Ž', '1974-06-04'),
(1347, 3347, '60231827443', 'Ž', '1993-02-07'),
(1348, 3348, '60428009128', 'M', '1980-12-22'),
(1349, 3349, '60582470653', 'M', '1992-06-30'),
(1350, 3350, '61069602908', 'M', '1980-09-07'),
(1351, 3351, '61352433253', 'Ž', '2004-05-05'),
(1352, 3352, '61484010326', 'M', '1982-09-01'),
(1353, 3353, '61533470374', 'Ž', '1979-01-26'),
(1354, 3354, '61747190819', 'M', '1941-10-29'),
(1355, 3355, '61812906585', 'M', NULL),
(1356, 3356, '61880821497', 'M', NULL),
(1357, 3357, '61896132256', 'Ž', '1977-07-06'),
(1358, 3358, '62089514192', 'M', '1965-12-27'),
(1359, 3359, '62202252507', 'M', '1989-03-21'),
(1360, 3360, '62519835741', 'Ž', '1997-06-25'),
(1361, 3361, '62779857099', 'Ž', '1976-12-29'),
(1362, 3362, '63250225131', 'M', NULL),
(1363, 3363, '63337493903', 'M', '1962-02-10'),
(1364, 3364, '63388766066', 'Ž', NULL),
(1365, 3365, '63531792553', 'M', '1974-11-11'),
(1366, 3366, '63862863439', 'M', '1967-05-05'),
(1367, 3367, '64109461556', 'M', '1975-08-08'),
(1368, 3368, '64386819033', 'Ž', '1975-12-22'),
(1369, 3369, '64501772260', 'Ž', '1989-08-19'),
(1370, 3370, '64843811798', 'M', '1978-06-08'),
(1371, 3371, '65237301828', 'Ž', '2005-02-05'),
(1372, 3372, '65254800461', 'Ž', '1971-06-12'),
(1373, 3373, '65320169790', 'M', '2010-05-06'),
(1374, 3374, '65444771490', 'M', '1982-04-06'),
(1375, 3375, '65846196140', 'Ž', '1977-10-15'),
(1376, 3376, '65941965647', 'Ž', '1981-09-14'),
(1377, 3377, '66356186392', 'M', NULL),
(1378, 3378, '66368989385', 'Ž', '2005-08-20'),
(1379, 3379, '66392738770', 'M', NULL),
(1380, 3380, NULL, 'Ž', '1994-07-25'),
(1381, 3381, '66456667739', 'Ž', NULL),
(1382, 3382, '66473571232', 'M', '2005-02-20'),
(1383, 3383, '66690256233', 'Ž', '1995-10-09'),
(1384, 3384, '66690460453', 'Ž', '1968-02-19'),
(1385, 3385, '66716894774', 'M', '1977-08-10'),
(1386, 3386, '66809196032', 'M', '1976-03-17'),
(1387, 3387, NULL, 'M', NULL),
(1388, 3388, '67398806144', 'M', '1960-07-20'),
(1389, 3389, '67398973288', 'Ž', '1974-10-28'),
(1390, 3390, '67525500215', 'Ž', '1985-10-21'),
(1391, 3391, '67541005613', 'Ž', '1968-11-13'),
(1392, 3392, '67781271620', 'Ž', '2001-03-18'),
(1393, 3393, '68015115308', 'M', '1940-07-21'),
(1394, 3394, '68070051322', 'M', '1961-04-04'),
(1395, 3395, '68118892747', 'M', NULL),
(1396, 3396, '68213351635', 'M', NULL),
(1397, 3397, '68426227089', 'Ž', '1975-01-04'),
(1398, 3398, '68580565520', 'M', '1972-03-06'),
(1399, 3399, NULL, 'M', NULL),
(1400, 3400, '68875636664', 'M', NULL),
(1401, 3401, '68898026867', 'Ž', NULL),
(1402, 3402, '70226575665', 'Ž', NULL),
(1403, 3403, '71065746493', 'Ž', '1965-12-05'),
(1404, 3404, '71086394939', 'Ž', NULL),
(1405, 3405, '71101262934', 'Ž', '1979-12-08'),
(1406, 3406, '71147567007', 'Ž', NULL),
(1407, 3407, '71153078817', 'M', '1969-07-11'),
(1408, 3408, '71421666953', 'M', '2008-09-28'),
(1409, 3409, '71442663634', 'M', '1975-08-14'),
(1410, 3410, '71586042144', 'Ž', '2005-09-22'),
(1411, 3411, '71628587236', 'M', '2012-07-06'),
(1412, 3412, '71714392375', 'Ž', '1990-12-18'),
(1413, 3413, '71866595118', 'Ž', '2001-03-27'),
(1414, 3414, '71967092580', 'Ž', '1967-11-22'),
(1415, 3415, '72035662525', 'M', '1985-09-05'),
(1416, 3416, '72065621448', 'M', '1986-04-10'),
(1417, 3417, '72119320965', 'Ž', '1967-09-24'),
(1418, 3418, '72335019912', 'M', '1982-06-18'),
(1419, 3419, '72472833937', 'M', '2002-04-02'),
(1420, 3420, '72505467937', 'M', '1969-05-08'),
(1421, 3421, '72615022313', 'Ž', '1981-07-06'),
(1422, 3422, '72786487608', 'M', '2001-02-20'),
(1423, 3423, '73288484763', 'M', '1979-01-11'),
(1424, 3424, '73363967967', 'Ž', '2004-10-04'),
(1425, 3425, '73498374598', 'Ž', '2011-01-17'),
(1426, 3426, '73560613404', 'M', '1983-01-01'),
(1427, 3427, '73840733470', 'M', '1962-05-01'),
(1428, 3428, '74199816154', 'M', NULL),
(1429, 3429, '74542672168', 'Ž', '1964-05-28'),
(1430, 3430, '74686901328', 'M', '1965-12-06'),
(1431, 3431, '74687978483', 'Ž', '2003-10-23'),
(1432, 3432, '74714950643', 'M', NULL),
(1433, 3433, '75051099254', 'M', '1971-09-26'),
(1434, 3434, '75056004512', 'M', '2005-04-30'),
(1435, 3435, '75466119409', 'Ž', NULL),
(1436, 3436, '75472725239', 'Ž', '1976-02-23'),
(1437, 3437, '75616687491', 'Ž', '2003-03-01'),
(1438, 3438, '75959844685', 'Ž', '2006-07-15'),
(1439, 3439, '76064942863', 'Ž', '2004-12-28'),
(1440, 3440, '76396565532', 'Ž', '2010-06-11'),
(1441, 3441, '76528111731', 'Ž', '2005-03-12'),
(1442, 3442, '76688267441', 'Ž', '2005-01-04'),
(1443, 3443, '77161078346', 'M', NULL),
(1444, 3444, '77276966106', 'M', '1961-08-19'),
(1445, 3445, '77608358345', 'Ž', '1972-07-12'),
(1446, 3446, '77716072137', 'M', '1982-08-28'),
(1447, 3447, '77854921510', 'M', '1973-06-29'),
(1448, 3448, '77867187198', 'M', '1977-11-29'),
(1449, 3449, '77975634732', 'M', '2000-12-17'),
(1450, 3450, '78064267110', 'M', '1973-02-04'),
(1451, 3451, '78131769272', 'M', '2005-12-12'),
(1452, 3452, '78385867358', 'Ž', NULL),
(1453, 3453, '78460905165', 'M', '1969-08-25'),
(1454, 3454, '78537717235', 'Ž', '1975-08-19'),
(1455, 3455, '78898885218', 'M', '2002-04-13'),
(1456, 3456, '79716497096', 'Ž', NULL),
(1457, 3457, '79933434685', 'Ž', '1965-10-31'),
(1458, 3458, '80042560821', 'Ž', '2009-01-02'),
(1459, 3459, '80190754122', 'M', '1993-01-06'),
(1460, 3460, '80345419193', 'Ž', '1977-05-26'),
(1461, 3461, '80532668041', 'M', NULL),
(1462, 3462, '80738898422', 'Ž', NULL),
(1463, 3463, '80808544741', 'Ž', '1968-06-23'),
(1464, 3464, '80899853015', 'M', NULL),
(1465, 3465, NULL, 'Ž', '2003-02-11'),
(1466, 3466, '81220486034', 'Ž', '1979-10-10'),
(1467, 3467, '81271007787', 'Ž', '2008-05-05'),
(1468, 3468, '81454246321', 'M', NULL),
(1469, 3469, '82017533463', 'Ž', '2002-05-31'),
(1470, 3470, '82212854367', 'Ž', '1968-10-16'),
(1471, 3471, '82820763143', 'M', '1975-05-13'),
(1472, 3472, '83145532588', 'Ž', '1983-08-26'),
(1473, 3473, '83292504777', 'Ž', '1975-10-04'),
(1474, 3474, '83311511890', 'M', '1997-02-23'),
(1475, 3475, '83348034109', 'M', '1974-06-23'),
(1476, 3476, '83436430160', 'Ž', '1981-02-14'),
(1477, 3477, '83484954968', 'Ž', '2004-11-07'),
(1478, 3478, '83505242604', 'Ž', '1969-07-11'),
(1479, 3479, '83985987741', 'M', '1966-01-04'),
(1480, 3480, '84000129856', 'M', '1971-08-24'),
(1481, 3481, '84082892685', 'M', '2005-11-22'),
(1482, 3482, '84254034539', 'M', '1961-07-13'),
(1483, 3483, '84396624341', 'Ž', '1987-11-02'),
(1484, 3484, '84737502207', 'M', '1950-08-10'),
(1485, 3485, '85039200494', 'Ž', NULL),
(1486, 3486, '85089291629', 'M', '1969-10-23'),
(1487, 3487, '85164048262', 'M', '1975-11-08'),
(1488, 3488, '85731960285', 'Ž', '1975-08-27'),
(1489, 3489, '85821249277', 'M', '1999-08-30'),
(1490, 3490, '85829691394', 'M', '1962-04-30'),
(1491, 3491, '85863307422', 'Ž', NULL),
(1492, 3492, '85936270274', 'M', '1971-09-11'),
(1493, 3493, '85965013664', 'Ž', '2006-01-26'),
(1494, 3494, '86110374862', 'M', '1963-09-26'),
(1495, 3495, '86395373356', 'M', NULL),
(1496, 3496, '86446560654', 'M', '1976-01-31'),
(1497, 3497, '86458055733', 'M', '2002-12-24'),
(1498, 3498, '86759392695', 'M', '1975-12-30'),
(1499, 3499, '87160334977', 'M', '1982-04-13'),
(1500, 3500, '87187633317', 'M', '1974-04-11'),
(1501, 3501, '87330425513', 'Ž', '1942-08-28'),
(1502, 3502, '87438357167', 'Ž', '1984-04-01'),
(1503, 3503, '87684016089', 'M', '2006-04-10'),
(1504, 3504, '87766401164', 'Ž', '1974-01-30'),
(1505, 3505, '88094502291', 'M', '1967-12-02'),
(1506, 3506, '88232475559', 'M', '1975-07-23'),
(1507, 3507, '88675722876', 'M', '1994-04-13'),
(1508, 3508, '88741499021', 'Ž', '1996-07-02'),
(1509, 3509, '88846313496', 'M', NULL),
(1510, 3510, '88875080156', 'Ž', '1993-01-05'),
(1511, 3511, '88933294447', 'M', NULL),
(1512, 3512, '88962822870', 'Ž', '2004-11-07'),
(1513, 3513, '89729091985', 'Ž', NULL),
(1514, 3514, '89807512160', 'M', '1988-04-21'),
(1515, 3515, '89888504470', 'Ž', '1967-07-09'),
(1516, 3516, '90136246538', 'M', '1975-05-22'),
(1517, 3517, '90171960238', 'M', '1987-09-25'),
(1518, 3518, '90231088710', 'Ž', '1964-10-18'),
(1519, 3519, '90384573071', 'M', '1987-12-09'),
(1520, 3520, '90877803254', 'M', '1970-02-22'),
(1521, 3521, '91246488962', 'M', '2004-07-03'),
(1522, 3522, '91422201542', 'M', '2002-05-13'),
(1523, 3523, '91445307642', 'Ž', '1977-08-05'),
(1524, 3524, '91512256782', 'M', '2005-02-21'),
(1525, 3525, '91684966202', 'Ž', '1985-03-27'),
(1526, 3526, '92158576936', 'Ž', '1985-11-25'),
(1527, 3527, '92209659472', 'Ž', NULL),
(1528, 3528, '92249462107', 'Ž', NULL),
(1529, 3529, '92422982264', 'Ž', '1975-08-14'),
(1530, 3530, '92664964959', 'Ž', '2007-06-25'),
(1531, 3531, '92686621065', 'M', '1954-02-13'),
(1532, 3532, '92780707475', 'Ž', '1999-07-27'),
(1533, 3533, '92865257546', 'M', '1958-05-18'),
(1534, 3534, '92866906868', 'M', '1975-01-06'),
(1535, 3535, '92990285705', 'M', '1998-04-14'),
(1536, 3536, '93187953209', 'M', '1990-07-17'),
(1537, 3537, '93189601117', 'M', '1983-09-02'),
(1538, 3538, '93247282622', 'Ž', '2009-11-12'),
(1539, 3539, '93337015311', 'M', '2006-06-29'),
(1540, 3540, '93530740134', 'M', '1980-03-25'),
(1541, 3541, '93551238639', 'Ž', '1984-08-28'),
(1542, 3542, '93568117624', 'Ž', NULL),
(1543, 3543, '93898416456', 'Ž', '1977-03-11'),
(1544, 3544, '94670637595', 'Ž', '1961-06-28'),
(1545, 3545, '94907380447', 'M', NULL),
(1546, 3546, '95108413896', 'M', '1980-01-17'),
(1547, 3547, '95477248348', 'Ž', '2005-05-19'),
(1548, 3548, '96088103649', 'M', '1952-01-19'),
(1549, 3549, '96291344266', 'Ž', '1983-06-25'),
(1550, 3550, '96497601631', 'Ž', '1977-04-20'),
(1551, 3551, '96706731836', 'Ž', '1958-12-23'),
(1552, 3552, '96850542645', 'Ž', '1971-03-29'),
(1553, 3553, '97311480820', 'M', '2008-03-23'),
(1554, 3554, '97481262062', 'M', '1972-10-16'),
(1555, 3555, '97751216277', 'M', NULL),
(1556, 3556, '97790942665', 'M', '1951-10-24'),
(1557, 3557, '97958505968', 'M', '2008-02-22'),
(1558, 3558, '97977318756', 'M', '1968-12-13'),
(1559, 3559, '98137259128', 'M', '1968-04-10'),
(1560, 3560, '98285055196', 'Ž', '1979-11-08'),
(1561, 3561, '98314383145', 'Ž', '1977-01-27'),
(1562, 3562, '98482944803', 'M', '1963-03-14'),
(1563, 3563, '98576632169', 'M', '1959-11-07'),
(1564, 3564, '99373942223', 'Ž', NULL),
(1565, 3565, '99498512567', 'Ž', '1977-02-10'),
(1566, 3566, '99585010753', 'M', '1999-06-03'),
(1567, 3567, '99736165691', 'M', '1979-02-15'),
(1568, 3568, '99737718751', 'M', '1946-03-23'),
(1569, 3569, '02920260067', 'Ž', NULL),
(1570, 3570, '01315481485', 'M', '1995-06-18'),
(1571, 3571, NULL, 'M', '2006-03-15'),
(1572, 3572, '01553427633', 'M', '1992-06-27'),
(1573, 3573, '02208380491', 'M', NULL),
(1574, 3574, '04332386597', 'M', '1992-09-15'),
(1575, 3575, '04445914081', 'M', '1999-03-10'),
(1576, 3576, '05842771490', 'M', '1975-05-26'),
(1577, 3577, '07438758537', 'M', NULL),
(1578, 3578, '07814883746', 'Ž', NULL),
(1579, 3579, '08813620463', 'M', '1991-09-12'),
(1580, 3580, '10742344363', 'M', '1995-03-26'),
(1581, 3581, '10800361285', 'M', '1982-12-02'),
(1582, 3582, '10818114818', 'M', '1995-12-29'),
(1583, 3583, '11598238117', 'M', '2002-02-12'),
(1584, 3584, '12590796359', 'M', '2007-11-12'),
(1585, 3585, '13469240310', 'M', '1994-04-01'),
(1586, 3586, '14108761783', 'M', '1974-06-18'),
(1587, 3587, '15628536862', 'Ž', '1982-03-19'),
(1588, 3588, '15755602768', 'M', '1990-08-03'),
(1589, 3589, '16769614993', 'Ž', '1999-11-23'),
(1590, 3590, '17284331829', 'M', '1974-09-16'),
(1591, 3591, '19927448401', 'Ž', NULL),
(1592, 3592, '20695816925', 'M', '1957-04-07'),
(1593, 3593, '22636002822', 'M', '2005-03-12'),
(1594, 3594, '23089346849', 'M', '1995-03-18'),
(1595, 3595, '24179910060', 'Ž', '1999-08-02'),
(1596, 3596, '24297966003', 'M', '1983-04-09'),
(1597, 3597, '28089132752', 'M', '2004-04-02'),
(1598, 3598, NULL, 'M', '1995-09-08'),
(1599, 3599, '30427466474', 'M', '1974-06-15'),
(1600, 3600, '31269657018', 'Ž', '2001-02-23'),
(1601, 3601, '33382372256', 'M', '2006-05-18'),
(1602, 3602, '34583327367', 'M', '2005-07-19'),
(1603, 3603, '35226565162', 'M', '1981-06-12'),
(1604, 3604, '36344646432', 'M', '1995-03-04'),
(1605, 3605, '39172084402', 'M', '1972-03-31'),
(1606, 3606, '39746944972', 'Ž', '2001-01-24'),
(1607, 3607, '43924749311', 'Ž', '1974-05-07'),
(1608, 3608, '44000618477', 'M', '2005-02-01'),
(1609, 3609, '46077375998', 'M', '1973-01-01'),
(1610, 3610, '46590669073', 'M', '1979-04-10'),
(1611, 3611, '47427646265', 'M', '1994-12-27'),
(1612, 3612, '47682508460', 'M', '1993-04-08'),
(1613, 3613, '50704276410', 'Ž', '1994-08-12'),
(1614, 3614, '51625274381', 'Ž', '1980-02-14'),
(1615, 3615, '52688179029', 'M', '2005-11-26'),
(1616, 3616, '53701879940', 'M', '1993-12-11'),
(1617, 3617, '54682050280', 'Ž', '2005-02-04'),
(1618, 3618, '55778213359', 'Ž', '2005-01-31'),
(1619, 3619, '56433082331', 'Ž', '2004-07-19'),
(1620, 3620, '56504355095', 'M', '1995-11-21'),
(1621, 3621, '57771061546', 'Ž', NULL),
(1622, 3622, '57984384223', 'Ž', '1982-09-11'),
(1623, 3623, '58537787690', 'Ž', '1985-06-26'),
(1624, 3624, '60014316918', 'M', NULL),
(1625, 3625, NULL, 'M', NULL),
(1626, 3626, '62082079561', 'M', NULL),
(1627, 3627, NULL, 'M', NULL),
(1628, 3628, '65756277005', 'M', NULL),
(1629, 3629, '68945031756', 'M', '1990-09-10'),
(1630, 3630, '69892043702', 'M', NULL),
(1631, 3631, '70426508123', 'Ž', '2000-12-31'),
(1632, 3632, '72124292206', 'Ž', NULL),
(1633, 3633, '72428445711', 'M', NULL),
(1634, 3634, '72852704243', 'Ž', '2004-01-15'),
(1635, 3635, '74871836041', 'M', '1997-04-07'),
(1636, 3636, '74895381615', 'M', '1995-09-22'),
(1637, 3637, '75061939808', 'M', NULL),
(1638, 3638, '78616476262', 'M', '1993-04-18'),
(1639, 3639, '78887398735', 'M', '1995-08-10'),
(1640, 3640, NULL, 'Ž', '1995-06-19'),
(1641, 3641, '81401617290', 'M', '1965-06-15'),
(1642, 3642, '81497630670', 'M', '1972-12-19'),
(1643, 3643, '82647351208', 'M', '1977-03-18'),
(1644, 3644, '82656654403', 'M', '2005-02-25'),
(1645, 3645, '83514657403', 'Ž', '1984-11-16'),
(1646, 3646, '85131681377', 'Ž', '2004-05-18'),
(1647, 3647, '85767800162', 'M', '1991-11-15'),
(1648, 3648, '85856305411', 'Ž', '1991-07-10'),
(1649, 3649, '93622651664', 'Ž', '2005-03-31'),
(1650, 3650, NULL, 'M', '1973-07-03'),
(1651, 3651, '95327445051', 'Ž', '1990-12-23'),
(1652, 3652, '96246569382', 'Ž', '2005-02-11'),
(1653, 3653, '96955044379', 'Ž', '2003-12-30'),
(1654, 3654, '98273668572', 'M', '1995-12-29'),
(1655, 3655, NULL, 'Ž', '1953-09-05'),
(1656, 3656, '80445590881', 'Ž', '1987-09-13'),
(1657, 3657, NULL, 'Ž', '2007-01-31'),
(1658, 3658, NULL, 'Ž', '2006-08-21'),
(1659, 3659, NULL, 'Ž', '1977-10-15'),
(1660, 3660, NULL, 'M', '2003-03-14'),
(1661, 3661, NULL, 'Ž', '1973-05-06'),
(1662, 3662, NULL, 'M', '1981-06-28'),
(1663, 3663, NULL, 'Ž', '2006-01-03'),
(1664, 3664, NULL, 'M', '1984-07-30'),
(1665, 3665, '60772474032', 'M', '2005-10-30'),
(1666, 3666, '24652956936', 'Ž', '2007-09-06'),
(1667, 3667, '21188660865', 'Ž', '2001-08-03'),
(1668, 3668, '28823350855', 'M', '2004-09-01'),
(1669, 3669, '23139879024', 'M', '2005-03-31'),
(1670, 3670, '12166405004', 'Ž', '1985-08-09'),
(1671, 3671, '01649603904', 'M', '1991-06-19'),
(1672, 3672, '00470815521', 'M', '1964-10-08'),
(1673, 3673, '67318181448', 'M', '1990-11-03'),
(1674, 3674, NULL, 'M', '1992-10-31'),
(1675, 3675, '56917495983', 'M', '1976-09-07'),
(1676, 3676, '40056995483', 'Ž', '1994-01-05'),
(1677, 3677, '08777042776', 'M', '1962-09-17'),
(1678, 3678, '03139145517', 'M', '1993-06-19'),
(1679, 3679, '90811876700', 'M', '1987-09-15'),
(1680, 3680, '30030850797', 'Ž', '1975-09-26'),
(1681, 3681, '04014720142', 'Ž', '1996-08-08'),
(1682, 3682, '85247717882', 'M', '1998-05-17'),
(1683, 3683, '56684335456', 'Ž', '1998-04-28'),
(1684, 3684, '20649012988', 'Ž', '1999-07-26'),
(1685, 3685, '91286130674', 'M', '1999-08-29'),
(1686, 3686, '57852322294', 'M', '2001-08-31'),
(1687, 3687, '88241251832', 'M', '2002-01-08'),
(1688, 3688, '67407669491', 'M', '2005-07-29'),
(1689, 3689, '16465959102', 'M', '1970-09-13'),
(1690, 3690, NULL, 'Ž', '1974-02-02'),
(1691, 3691, NULL, 'M', '1976-01-06'),
(1692, 3692, NULL, 'M', '2009-08-14'),
(1693, 3693, NULL, 'M', '2005-06-27'),
(1694, 3694, NULL, 'Ž', '2010-12-18'),
(1695, 3695, NULL, 'M', '1982-05-02'),
(1696, 3696, '44983721043', 'M', '1968-03-11'),
(1697, 3697, NULL, 'M', '1964-02-15'),
(1698, 3698, NULL, 'M', '1978-03-21'),
(1699, 3699, NULL, 'Ž', '1971-11-06'),
(1700, 3700, NULL, 'M', '1971-07-25'),
(1701, 3701, NULL, 'M', '1970-11-03'),
(1702, 3702, NULL, 'Ž', '2008-02-10'),
(1703, 3703, NULL, 'M', '2002-10-07'),
(1704, 3704, NULL, 'M', '2006-08-13'),
(1705, 3705, NULL, 'Ž', '1978-10-26'),
(1706, 3706, NULL, 'M', '2011-07-01'),
(1707, 3707, NULL, 'M', '1982-08-14'),
(1708, 3708, NULL, 'Ž', '1993-11-26'),
(1709, 3709, NULL, 'Ž', '1982-10-29'),
(1710, 3710, NULL, 'M', '1975-06-09'),
(1711, 3711, NULL, 'Ž', '1973-08-13'),
(1712, 3712, NULL, 'M', '2006-09-05'),
(1713, 3713, NULL, 'M', '2008-06-06'),
(1714, 3714, NULL, 'M', '1975-07-12'),
(1715, 3715, NULL, 'M', '2005-09-21'),
(1716, 3716, NULL, 'Ž', '2007-11-26'),
(1717, 3717, NULL, 'Ž', '1990-05-09'),
(1718, 3718, NULL, 'M', '2005-02-11'),
(1719, 3719, NULL, 'Ž', '1976-11-13'),
(1720, 3720, NULL, 'M', '1976-05-04'),
(1721, 3721, NULL, 'Ž', '2007-11-20'),
(1722, 3722, NULL, 'M', '2010-11-29'),
(1723, 3723, '66960943009', 'M', '2007-10-29'),
(1724, 3724, NULL, 'Ž', '1978-01-20'),
(1725, 3725, NULL, 'Ž', '1975-05-31'),
(1726, 3726, NULL, 'M', '1984-04-07'),
(1727, 3727, NULL, 'M', '1995-05-24'),
(1728, 3728, NULL, 'Ž', '1995-01-27'),
(1729, 3729, NULL, 'M', '1991-08-19'),
(1730, 3730, NULL, 'M', '1993-10-05'),
(1731, 3731, NULL, 'Ž', '1996-10-03'),
(1732, 3732, NULL, 'Ž', '1996-06-12'),
(1733, 3733, NULL, 'M', '1997-02-23'),
(1734, 3734, NULL, 'M', '1996-08-01'),
(1735, 3735, NULL, 'M', '1991-04-13'),
(1736, 3736, NULL, 'M', '1996-10-08'),
(1737, 3737, NULL, 'M', '1995-08-24'),
(1738, 3738, NULL, 'M', '1995-04-24'),
(1739, 3739, NULL, 'Ž', '1995-01-17'),
(1740, 3740, NULL, 'Ž', '1997-02-01'),
(1741, 3741, NULL, 'M', '1993-08-31'),
(1742, 3742, NULL, 'M', '1993-01-01'),
(1743, 3743, NULL, 'Ž', '1992-01-26'),
(1744, 3744, NULL, 'M', '2005-07-12'),
(1745, 3745, NULL, 'M', '1991-11-25'),
(1746, 3746, NULL, 'Ž', '1993-03-31'),
(1747, 3747, NULL, 'Ž', '1972-07-14'),
(1748, 3748, NULL, 'Ž', '1989-03-01'),
(1749, 3749, NULL, 'Ž', '1988-04-13'),
(1750, 3750, NULL, 'Ž', '1989-01-31'),
(1751, 3751, NULL, 'Ž', '1983-03-13'),
(1752, 3752, NULL, 'M', '2010-01-14'),
(1753, 3753, NULL, 'Ž', '2003-08-17'),
(1754, 3754, NULL, 'Ž', '2001-10-11'),
(1755, 3755, NULL, 'M', '2003-05-15'),
(1756, 3756, NULL, 'Ž', '2002-08-02'),
(1757, 3757, NULL, 'M', '2004-10-21'),
(1758, 3758, NULL, 'M', '2008-01-21'),
(1759, 3759, NULL, 'Ž', '2005-03-27'),
(1760, 3760, NULL, 'Ž', '2002-10-18'),
(1761, 3761, '17791432414', 'M', '1999-02-19'),
(1762, 3762, '07852830345', 'Ž', '2000-08-17'),
(1763, 3763, NULL, 'Ž', '2003-09-19'),
(1764, 3764, '04097156461', 'M', '1999-09-10'),
(1765, 3765, NULL, 'M', '2003-04-11'),
(1766, 3766, NULL, 'M', '2009-08-21'),
(1767, 3767, NULL, 'Ž', '2003-06-18'),
(1768, 3768, NULL, 'Ž', '2005-11-16'),
(1769, 3769, NULL, 'M', '2004-01-20'),
(1770, 3770, NULL, 'M', '2004-02-02'),
(1771, 3771, NULL, 'M', '1968-08-02'),
(1772, 3772, NULL, 'M', '2005-01-28'),
(1773, 3773, NULL, 'M', '1993-01-28'),
(1774, 3774, NULL, 'M', '1983-06-18'),
(1775, 3775, NULL, 'M', '1978-12-26'),
(1776, 3776, '11008721899', 'M', '1977-09-14'),
(1777, 3777, '15797551981', 'Ž', '1986-10-31'),
(1778, 3778, '72860967214', 'M', '1970-09-19'),
(1779, 3779, '66099920904', 'Ž', '2002-12-21'),
(1780, 3780, '77706982373', 'M', '2000-05-25'),
(1781, 3781, NULL, 'M', '1977-05-18'),
(1782, 3782, '55198818120', 'Ž', '1980-08-23'),
(1783, 3783, NULL, 'M', '1998-12-18'),
(1784, 3784, '24300472529', 'Ž', '1974-07-13'),
(1785, 3785, '74844993403', 'Ž', '1985-12-31'),
(1786, 3786, '59695081204', 'Ž', '1987-11-12'),
(1787, 3787, '41299510075', 'M', '1973-03-14'),
(1788, 3788, '64621194333', 'M', '1972-02-02'),
(1789, 3789, NULL, 'M', '1998-12-22'),
(1790, 3790, '97441583506', 'M', '1972-07-28'),
(1791, 3791, '87526716056', 'Ž', '1986-06-29'),
(1792, 3792, NULL, 'Ž', '1984-09-10'),
(1793, 3793, '04550514619', 'M', '1989-07-06'),
(1794, 3794, '35471456162', 'Ž', '1984-09-29'),
(1795, 3795, '22087503789', 'Ž', '1999-07-02'),
(1796, 3796, '82084135191', 'Ž', '1995-09-26'),
(1797, 3797, '37664729727', 'Ž', '1972-05-09'),
(1798, 3798, NULL, 'Ž', '1973-02-01'),
(1799, 3799, '40219040329', 'Ž', '2002-10-15'),
(1800, 3800, '77973930349', 'M', '2001-03-26'),
(1801, 3801, '61515926600', 'Ž', '1999-09-05'),
(1802, 3802, '53194563197', 'M', '2003-11-09'),
(1803, 3803, '75011140603', 'M', '1997-06-01'),
(1804, 3804, '62611538933', 'M', '2005-10-24'),
(1805, 3805, NULL, 'M', '1990-11-26'),
(1806, 3806, '45724896092', 'Ž', '1980-05-21'),
(1807, 3807, '34389687409', 'M', '2004-12-08'),
(1808, 3808, '87786397083', 'M', '1996-07-17'),
(1809, 3809, NULL, 'Ž', '1972-10-09'),
(1810, 3810, NULL, 'M', '2006-02-05'),
(1811, 3811, NULL, 'Ž', '1988-05-18'),
(1812, 3812, NULL, 'Ž', '1969-07-25'),
(1813, 3813, NULL, 'Ž', '1984-08-06'),
(1814, 3814, NULL, 'Ž', '1996-10-19'),
(1815, 3815, NULL, 'M', '1966-09-11'),
(1816, 3816, NULL, 'Ž', '1977-03-11'),
(1817, 3817, NULL, 'M', '1973-05-21'),
(1818, 3818, NULL, 'M', '1967-11-12'),
(1819, 3819, NULL, 'M', '2001-04-20'),
(1820, 3820, NULL, 'M', '1997-11-27'),
(1821, 3821, NULL, 'M', '1975-10-01'),
(1822, 3822, NULL, 'M', '2000-09-18'),
(1823, 3823, NULL, 'M', '1952-01-28'),
(1824, 3824, NULL, 'M', '1992-03-08'),
(1825, 3825, NULL, 'M', '1992-08-31'),
(1826, 3826, '89130453398', 'Ž', NULL),
(1827, 3827, '52165863177', 'M', '1982-08-20'),
(1828, 3828, '24309454384', 'Ž', '1981-07-09'),
(1829, 3829, '61002550396', 'Ž', '1993-12-15'),
(1830, 3830, '57538619064', 'M', NULL),
(1831, 3831, '23679370551', 'Ž', NULL),
(1832, 3832, '10540579995', 'M', NULL),
(1833, 3833, '74171633607', 'M', NULL),
(1834, 3834, NULL, 'M', NULL),
(1835, 3835, '47413054980', 'M', NULL),
(1836, 3836, '93173470967', 'M', '1968-06-24'),
(1837, 3837, '48320936698', 'M', '1968-05-21'),
(1838, 3838, '14953284981', 'Ž', NULL),
(1839, 3839, '51175667265', 'M', '1993-10-02'),
(1840, 3840, '14938750009', 'Ž', '2012-01-27'),
(1841, 3841, '92554535890', 'Ž', '2009-07-29'),
(1842, 3842, '22166328412', 'Ž', '2012-06-14'),
(1843, 3843, '06834214265', 'Ž', '2010-03-06'),
(1844, 3844, '67345151790', 'Ž', '2011-09-22'),
(1845, 3845, '26604525791', 'M', '2014-01-23'),
(1846, 3846, '72389060702', 'Ž', '2007-12-16'),
(1847, 3847, '81186353889', 'Ž', '2010-01-20'),
(1848, 3848, '06062174219', 'M', '1979-09-21'),
(1849, 3849, '37898893385', 'Ž', '2012-10-14'),
(1850, 3850, '94187316933', 'Ž', '2007-01-25'),
(1851, 3851, '85609834327', 'M', '1984-08-04'),
(1852, 3852, '51829126095', 'Ž', '2007-01-25'),
(1853, 3853, '61772243617', 'Ž', '2011-07-08'),
(1854, 3854, '88276295632', 'M', '2010-09-13'),
(1855, 3855, '55984859741', 'M', '2009-05-25'),
(1856, 3856, '11056627526', 'Ž', '1982-06-17'),
(1857, 3857, '32983236207', 'M', '1997-03-20'),
(1858, 3858, '28007594721', 'M', '1997-03-20'),
(1859, 3859, '27845113648', 'Ž', '1970-10-28'),
(1860, 3860, '92920056634', 'M', '1983-10-04'),
(1861, 3861, '48804937090', 'Ž', '2001-09-01'),
(1862, 3862, '94707790169', 'Ž', '2004-09-19'),
(1863, 3863, '43009397672', 'Ž', '2006-06-05'),
(1864, 3864, '20077956851', 'Ž', '1968-11-07'),
(1865, 3865, '75114802285', 'Ž', '1991-05-21'),
(1866, 3866, '35339104205', 'Ž', '1971-10-13'),
(1867, 3867, '72605443785', 'M', '1966-09-28'),
(1868, 3868, '48971910847', 'Ž', '1984-03-26'),
(1869, 3869, '75555769822', 'Ž', '1983-08-24'),
(1870, 3870, '64632450047', 'M', '1986-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `osoba_log`
--

CREATE TABLE `osoba_log` (
  `id` int(11) NOT NULL,
  `reg_broj` int(11) DEFAULT NULL,
  `oib` char(11) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `spol_id` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dat_rodjenja` date DEFAULT NULL,
  `dnevnik_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `osoba_log`
--

INSERT INTO `osoba_log` (`id`, `reg_broj`, `oib`, `spol_id`, `dat_rodjenja`, `dnevnik_id`) VALUES
(1001, 3001, NULL, 'M', '1983-07-16', 1),
(1002, 3002, NULL, 'M', NULL, 1),
(1003, 3003, NULL, 'M', '1971-06-07', 1),
(1004, 3004, NULL, 'Ž', '2004-01-03', 1),
(1005, 3005, NULL, 'Ž', NULL, 1),
(1006, 3006, NULL, 'Ž', NULL, 1),
(1007, 3007, NULL, 'Ž', NULL, 1),
(1008, 3008, NULL, 'Ž', '1973-11-15', 1),
(1009, 3009, NULL, 'Ž', NULL, 1),
(1010, 3010, NULL, 'Ž', '1984-01-29', 1),
(1011, 3011, NULL, 'M', '1970-07-04', 1),
(1012, 3012, NULL, 'M', NULL, 1),
(1013, 3013, NULL, 'M', '1991-05-24', 1),
(1014, 3014, NULL, 'M', '1956-07-16', 1),
(1015, 3015, NULL, 'M', NULL, 1),
(1016, 3016, NULL, 'M', '1977-02-15', 1),
(1017, 3017, NULL, 'M', '1982-06-23', 1),
(1018, 3018, NULL, 'Ž', '1978-10-31', 1),
(1019, 3019, NULL, 'Ž', NULL, 1),
(1020, 3020, NULL, 'M', '1976-08-19', 1),
(1021, 3021, NULL, 'Ž', NULL, 1),
(1022, 3022, NULL, 'M', '2011-02-16', 1),
(1023, 3023, NULL, 'Ž', '1949-07-25', 1),
(1024, 3024, NULL, 'Ž', '2002-01-05', 1),
(1025, 3025, NULL, 'Ž', '2006-01-11', 1),
(1026, 3026, NULL, 'Ž', '1979-12-04', 1),
(1027, 3027, NULL, 'Ž', '1976-10-09', 1),
(1028, 3028, NULL, 'M', '2012-11-17', 1),
(1029, 3029, NULL, 'Ž', '2006-01-11', 1),
(1030, 3030, NULL, 'Ž', '1982-12-15', 1),
(1031, 3031, NULL, 'M', '1991-09-22', 1),
(1032, 3032, '24892836714', 'Ž', NULL, 1),
(1033, 3033, NULL, 'Ž', '1980-03-04', 1),
(1034, 3034, NULL, 'M', '1984-06-09', 1),
(1035, 3035, NULL, 'M', NULL, 1),
(1036, 3036, NULL, 'M', '1965-09-06', 1),
(1037, 3037, NULL, 'Ž', '1984-03-28', 1),
(1038, 3038, NULL, 'M', '1963-05-10', 1),
(1039, 3039, '00676731732', 'Ž', '1991-02-04', 1),
(1040, 3040, '00921941970', 'M', '1998-01-03', 1),
(1041, 3041, '01021815512', 'Ž', '2005-07-11', 1),
(1042, 3042, '01232322356', 'Ž', '2007-03-31', 1),
(1043, 3043, '01415167897', 'Ž', '1967-01-21', 1),
(1044, 3044, '01650989844', 'M', '1952-05-14', 1),
(1045, 3045, '01697685371', 'Ž', '1972-11-24', 1),
(1046, 3046, '02287493964', 'Ž', '2004-07-21', 1),
(1047, 3047, '02449205795', 'Ž', '2007-10-25', 1),
(1048, 3048, '02623215344', 'Ž', '1985-04-26', 1),
(1049, 3049, '02950236907', 'Ž', '1985-10-12', 1),
(1050, 3050, '03006951751', 'M', '2008-06-27', 1),
(1051, 3051, '03023930333', 'Ž', NULL, 1),
(1052, 3052, '03091353961', 'M', '1982-02-21', 1),
(1053, 3053, '03460520788', 'Ž', '1967-04-17', 1),
(1054, 3054, '03616450111', 'M', '2007-09-24', 1),
(1055, 3055, '03619694945', 'Ž', '2009-06-25', 1),
(1056, 3056, '03854232487', 'M', '1974-10-24', 1),
(1057, 3057, '03943619746', 'M', NULL, 1),
(1058, 3058, '04282481038', 'M', '1965-08-05', 1),
(1059, 3059, '04488947301', 'Ž', '1986-02-16', 1),
(1060, 3060, '04654512678', 'M', '1944-04-19', 1),
(1061, 3061, '04735895159', 'M', NULL, 1),
(1062, 3062, '04811072367', 'Ž', '1977-12-06', 1),
(1063, 3063, '05270634843', 'Ž', '1980-12-10', 1),
(1064, 3064, '05373167260', 'M', NULL, 1),
(1065, 3065, '05486915242', 'Ž', '1973-06-02', 1),
(1066, 3066, '05525223298', 'M', '2009-05-13', 1),
(1067, 3067, '05874945965', 'Ž', '1972-10-12', 1),
(1068, 3068, '06130055177', 'M', '2005-05-25', 1),
(1069, 3069, '06277613592', 'M', '1971-11-01', 1),
(1070, 3070, '06792527558', 'Ž', '1975-01-05', 1),
(1071, 3071, '06902217034', 'M', '1986-10-24', 1),
(1072, 3072, '06916410751', 'M', NULL, 1),
(1073, 3073, '07259297872', 'M', NULL, 1),
(1074, 3074, '07396129862', 'Ž', '1972-12-15', 1),
(1075, 3075, '07405005295', 'M', '1972-02-10', 1),
(1076, 3076, '07407873343', 'Ž', '1971-03-23', 1),
(1077, 3077, '07471023697', 'M', NULL, 1),
(1078, 3078, '07553652019', 'M', '1973-09-12', 1),
(1079, 3079, '07837660489', 'M', '2002-05-16', 1),
(1080, 3080, '07946817139', 'Ž', '1971-05-06', 1),
(1081, 3081, '08194392100', 'M', '1984-07-27', 1),
(1082, 3082, '08396511994', 'M', NULL, 1),
(1083, 3083, '08566425233', 'M', NULL, 1),
(1084, 3084, '08670653988', 'Ž', '1973-10-28', 1),
(1085, 3085, '08759304832', 'M', NULL, 1),
(1086, 3086, '09217009568', 'Ž', '1979-04-17', 1),
(1087, 3087, '09673763306', 'Ž', NULL, 1),
(1088, 3088, '09918322681', 'M', NULL, 1),
(1089, 3089, '10036323630', 'M', NULL, 1),
(1090, 3090, '10061795607', 'M', '1974-09-07', 1),
(1091, 3091, '10099192843', 'M', NULL, 1),
(1092, 3092, '10486270721', 'Ž', NULL, 1),
(1093, 3093, '11036671206', 'Ž', NULL, 1),
(1094, 3094, '11052666287', 'Ž', '1983-06-13', 1),
(1095, 3095, '11080584362', 'M', NULL, 1),
(1096, 3096, '11128942314', 'M', '1965-07-27', 1),
(1097, 3097, '11156938615', 'Ž', '1973-03-25', 1),
(1098, 3098, '11322935453', 'M', '2013-06-23', 1),
(1099, 3099, '11387102018', 'M', '1981-11-05', 1),
(1100, 3100, '11786617930', 'Ž', '1980-12-16', 1),
(1101, 3101, '12084664088', 'Ž', NULL, 1),
(1102, 3102, NULL, 'M', NULL, 1),
(1103, 3103, NULL, 'M', NULL, 1),
(1104, 3104, NULL, 'M', '2002-06-18', 1),
(1105, 3105, '12697721333', 'M', '2001-07-24', 1),
(1106, 3106, '13052963748', 'M', NULL, 1),
(1107, 3107, '13336301698', 'M', NULL, 1),
(1108, 3108, '13399865904', 'M', '2008-01-18', 1),
(1109, 3109, '13716311000', 'M', '1962-06-04', 1),
(1110, 3110, '13724177447', 'M', NULL, 1),
(1111, 3111, '13814648834', 'M', '1983-01-08', 1),
(1112, 3112, '14465654185', 'M', '1976-09-05', 1),
(1113, 3113, '14510142438', 'Ž', NULL, 1),
(1114, 3114, '14539252268', 'M', '2000-07-01', 1),
(1115, 3115, '14774614049', 'M', NULL, 1),
(1116, 3116, '14909998285', 'M', '2004-09-25', 1),
(1117, 3117, '15196499749', 'Ž', '1993-07-27', 1),
(1118, 3118, '15359167673', 'M', '2005-12-30', 1),
(1119, 3119, '15397338459', 'M', NULL, 1),
(1120, 3120, '15411007814', 'M', NULL, 1),
(1121, 3121, '15648404668', 'Ž', '2004-10-11', 1),
(1122, 3122, '15843759835', 'M', NULL, 1),
(1123, 3123, '15962222732', 'Ž', '1974-07-17', 1),
(1124, 3124, '15978732936', 'M', '2001-08-26', 1),
(1125, 3125, '16104477400', 'M', '1982-05-09', 1),
(1126, 3126, '16109613181', 'M', '1971-09-05', 1),
(1127, 3127, '16313104251', 'M', NULL, 1),
(1128, 3128, '16401667801', 'Ž', NULL, 1),
(1129, 3129, '16748289166', 'Ž', NULL, 1),
(1130, 3130, '16980714909', 'M', '1991-04-21', 1),
(1131, 3131, '17157160013', 'M', NULL, 1),
(1132, 3132, '17376968139', 'M', NULL, 1),
(1133, 3133, '17392577011', 'M', '1962-09-02', 1),
(1134, 3134, NULL, 'M', '1968-08-01', 1),
(1135, 3135, '17556672591', 'Ž', '1979-02-06', 1),
(1136, 3136, '17903056323', 'Ž', '1989-04-17', 1),
(1137, 3137, '18019509580', 'Ž', '1967-02-22', 1),
(1138, 3138, '18571449013', 'M', '1970-11-22', 1),
(1139, 3139, '18740189143', 'M', '1985-11-09', 1),
(1140, 3140, '19022782993', 'Ž', '1987-02-22', 1),
(1141, 3141, '19108491700', 'Ž', '1972-05-07', 1),
(1142, 3142, '19369338999', 'M', '1975-01-04', 1),
(1143, 3143, '19500028291', 'M', '1999-04-13', 1),
(1144, 3144, '19510320121', 'M', '1972-05-26', 1),
(1145, 3145, '19544659880', 'M', '1955-10-14', 1),
(1146, 3146, '19661247495', 'Ž', '1972-11-11', 1),
(1147, 3147, '19873421967', 'M', NULL, 1),
(1148, 3148, '20012570180', 'Ž', '1978-12-25', 1),
(1149, 3149, '20299268545', 'Ž', NULL, 1),
(1150, 3150, '20436083300', 'M', NULL, 1),
(1151, 3151, '20627712172', 'M', '1973-09-04', 1),
(1152, 3152, '20682170878', 'Ž', '1973-12-28', 1),
(1153, 3153, '20828208578', 'M', '1999-01-02', 1),
(1154, 3154, '20932532967', 'Ž', '1974-06-20', 1),
(1155, 3155, '21106557050', 'M', '2005-12-05', 1),
(1156, 3156, '21106901450', 'Ž', '2009-05-27', 1),
(1157, 3157, '21626226581', 'M', '1997-07-07', 1),
(1158, 3158, '21813594719', 'Ž', '1991-07-09', 1),
(1159, 3159, '21947637307', 'M', NULL, 1),
(1160, 3160, '22026225430', 'Ž', '2000-04-21', 1),
(1161, 3161, '22031498464', 'M', '1985-01-11', 1),
(1162, 3162, '22212936088', 'M', NULL, 1),
(1163, 3163, '22326784517', 'M', '1976-10-19', 1),
(1164, 3164, '22336957390', 'M', '1983-08-26', 1),
(1165, 3165, '22609077133', 'M', '2007-02-14', 1),
(1166, 3166, '22921156749', 'Ž', '1959-11-04', 1),
(1167, 3167, '23076596294', 'M', '1987-06-29', 1),
(1168, 3168, '23353344617', 'Ž', '2012-05-05', 1),
(1169, 3169, '23626573008', 'M', NULL, 1),
(1170, 3170, '23627932197', 'M', '2006-12-04', 1),
(1171, 3171, '24120340948', 'M', '1997-08-26', 1),
(1172, 3172, '24233680100', 'M', '2001-01-18', 1),
(1173, 3173, '24295178959', 'M', NULL, 1),
(1174, 3174, '24345537988', 'M', '2009-09-17', 1),
(1175, 3175, '24435632833', 'Ž', '1980-06-13', 1),
(1176, 3176, '24472333162', 'M', NULL, 1),
(1177, 3177, '24505022974', 'Ž', '1970-04-23', 1),
(1178, 3178, '24995283096', 'Ž', '2007-03-15', 1),
(1179, 3179, '25295948001', 'M', NULL, 1),
(1180, 3180, '25390803156', 'M', NULL, 1),
(1181, 3181, '25780862766', 'Ž', '1985-06-24', 1),
(1182, 3182, '25813971407', 'Ž', '2007-07-21', 1),
(1183, 3183, '25976690449', 'M', '1973-03-25', 1),
(1184, 3184, '26144165730', 'Ž', '1985-04-12', 1),
(1185, 3185, '26862989701', 'M', '1998-11-18', 1),
(1186, 3186, '26913110650', 'Ž', NULL, 1),
(1187, 3187, '26934227253', 'Ž', '2004-12-02', 1),
(1188, 3188, '27173542770', 'M', '1953-10-02', 1),
(1189, 3189, '27374847310', 'Ž', '1971-12-08', 1),
(1190, 3190, '27837987427', 'Ž', '1984-09-19', 1),
(1191, 3191, '28217056515', 'M', '2002-02-26', 1),
(1192, 3192, '28315898271', 'M', '1992-08-23', 1),
(1193, 3193, '28536948768', 'Ž', NULL, 1),
(1194, 3194, '28680242273', 'Ž', '1979-04-12', 1),
(1195, 3195, '28954681898', 'M', '1983-09-26', 1),
(1196, 3196, '29196578842', 'M', NULL, 1),
(1197, 3197, '29233052670', 'Ž', NULL, 1),
(1198, 3198, '29587646072', 'Ž', '2001-06-06', 1),
(1199, 3199, '29740733797', 'Ž', NULL, 1),
(1200, 3200, '30220233630', 'Ž', NULL, 1),
(1201, 3201, '30332962290', 'M', '1987-02-03', 1),
(1202, 3202, '30434316451', 'Ž', NULL, 1),
(1203, 3203, '30868263164', 'Ž', '1998-03-19', 1),
(1204, 3204, '30884390696', 'Ž', '2006-04-28', 1),
(1205, 3205, '31051425059', 'M', '1979-08-18', 1),
(1206, 3206, '31479732158', 'M', '1977-10-10', 1),
(1207, 3207, '32062453958', 'M', '2010-09-08', 1),
(1208, 3208, '32312871087', 'M', '1951-05-07', 1),
(1209, 3209, '32374115878', 'M', '1972-11-04', 1),
(1210, 3210, '32462097010', 'M', '2004-10-25', 1),
(1211, 3211, '32469507314', 'M', '1968-07-12', 1),
(1212, 3212, '32813390566', 'Ž', NULL, 1),
(1213, 3213, '33212740736', 'M', '2010-01-10', 1),
(1214, 3214, '33347617911', 'Ž', '1988-05-04', 1),
(1215, 3215, '34334003296', 'Ž', '2003-10-23', 1),
(1216, 3216, '34724442837', 'Ž', '1982-11-23', 1),
(1217, 3217, '34881884916', 'Ž', '1969-03-26', 1),
(1218, 3218, '34909391509', 'Ž', '1986-07-15', 1),
(1219, 3219, '35069384057', 'M', '1961-04-13', 1),
(1220, 3220, '35205964568', 'Ž', '1979-07-18', 1),
(1221, 3221, '35219593766', 'M', NULL, 1),
(1222, 3222, '35402699573', 'Ž', NULL, 1),
(1223, 3223, '35560019268', 'M', '1992-04-12', 1),
(1224, 3224, '35697925268', 'M', NULL, 1),
(1225, 3225, '35704436788', 'Ž', '1967-05-29', 1),
(1226, 3226, '35827742621', 'Ž', '2003-01-14', 1),
(1227, 3227, '35832557588', 'Ž', '1949-01-04', 1),
(1228, 3228, '35936249385', 'Ž', '1968-03-05', 1),
(1229, 3229, '36029682003', 'Ž', '2006-10-26', 1),
(1230, 3230, '36054335922', 'Ž', '1974-01-26', 1),
(1231, 3231, '36083907210', 'Ž', '1955-12-22', 1),
(1232, 3232, '36333245134', 'Ž', NULL, 1),
(1233, 3233, '36650750155', 'M', '1977-06-01', 1),
(1234, 3234, '36926300415', 'M', '1974-09-21', 1),
(1235, 3235, '37233935552', 'Ž', NULL, 1),
(1236, 3236, '37620332922', 'Ž', '2001-01-05', 1),
(1237, 3237, '37961289996', 'M', '1973-02-28', 1),
(1238, 3238, '38062825126', 'M', '1984-08-21', 1),
(1239, 3239, '38080134608', 'M', NULL, 1),
(1240, 3240, '38743035086', 'Ž', '1970-07-10', 1),
(1241, 3241, '38840254260', 'Ž', NULL, 1),
(1242, 3242, '39231799187', 'M', '2001-04-30', 1),
(1243, 3243, '39374328193', 'Ž', NULL, 1),
(1244, 3244, '39408831783', 'Ž', NULL, 1),
(1245, 3245, '39586348040', 'Ž', NULL, 1),
(1246, 3246, '40126283977', 'M', NULL, 1),
(1247, 3247, '40462932794', 'M', '1999-05-05', 1),
(1248, 3248, '40539938462', 'Ž', '1983-04-21', 1),
(1249, 3249, '40604516037', 'M', '1965-05-25', 1),
(1250, 3250, '40931009134', 'M', '1953-04-18', 1),
(1251, 3251, '41118091789', 'M', NULL, 1),
(1252, 3252, '41186433002', 'M', '2009-11-05', 1),
(1253, 3253, '41405640950', 'M', '1963-01-26', 1),
(1254, 3254, '41557932540', 'M', '1979-04-27', 1),
(1255, 3255, '41826284943', 'Ž', '1993-06-25', 1),
(1256, 3256, '42280317187', 'M', NULL, 1),
(1257, 3257, '42896694548', 'M', '1966-01-23', 1),
(1258, 3258, '43072086887', 'Ž', '2008-08-05', 1),
(1259, 3259, '43269743600', 'Ž', '2005-11-28', 1),
(1260, 3260, '43538309728', 'Ž', '1979-11-28', 1),
(1261, 3261, '43781126062', 'Ž', NULL, 1),
(1262, 3262, '44062027614', 'Ž', '1981-04-07', 1),
(1263, 3263, '44557294962', 'M', '2001-08-26', 1),
(1264, 3264, '44619123747', 'M', '1985-02-14', 1),
(1265, 3265, '44643549204', 'Ž', NULL, 1),
(1266, 3266, '44761792952', 'M', '1975-04-28', 1),
(1267, 3267, '45051065130', 'Ž', '1976-10-07', 1),
(1268, 3268, '45344117831', 'Ž', '1971-08-16', 1),
(1269, 3269, '45625870473', 'Ž', '1977-11-04', 1),
(1270, 3270, '45628408565', 'Ž', NULL, 1),
(1271, 3271, '45675450471', 'M', '1954-02-12', 1),
(1272, 3272, '45956869115', 'Ž', NULL, 1),
(1273, 3273, '46017388462', 'Ž', '1974-06-24', 1),
(1274, 3274, '46841108798', 'M', '1966-11-03', 1),
(1275, 3275, '46913243858', 'Ž', '1979-12-17', 1),
(1276, 3276, '47076631442', 'Ž', '2000-02-05', 1),
(1277, 3277, '47413759627', 'M', '1982-03-20', 1),
(1278, 3278, '47810325005', 'Ž', NULL, 1),
(1279, 3279, '47939431864', 'Ž', '1950-05-05', 1),
(1280, 3280, '47989942080', 'M', '1967-04-03', 1),
(1281, 3281, '48174813779', 'Ž', NULL, 1),
(1282, 3282, '48429489225', 'M', '1983-02-24', 1),
(1283, 3283, '48758459374', 'M', '2006-03-14', 1),
(1284, 3284, '49029995600', 'M', NULL, 1),
(1285, 3285, '49558333476', 'M', '2007-04-06', 1),
(1286, 3286, '49992042354', 'Ž', '1969-02-23', 1),
(1287, 3287, '50033321167', 'Ž', '1975-09-07', 1),
(1288, 3288, '50530439438', 'M', '1988-04-15', 1),
(1289, 3289, '50670231138', 'M', '1978-07-08', 1),
(1290, 3290, '50746794401', 'Ž', NULL, 1),
(1291, 3291, '50786732072', 'Ž', '1997-09-15', 1),
(1292, 3292, '50910710641', 'Ž', '1997-02-11', 1),
(1293, 3293, '51079175589', 'M', NULL, 1),
(1294, 3294, '51510915151', 'M', '1990-11-10', 1),
(1295, 3295, '51961716954', 'M', '1974-12-27', 1),
(1296, 3296, '52135495671', 'Ž', '1963-04-26', 1),
(1297, 3297, '52257485318', 'M', '2000-07-22', 1),
(1298, 3298, '52264017635', 'Ž', '2000-06-15', 1),
(1299, 3299, '52532693829', 'M', '1955-01-31', 1),
(1300, 3300, '52633338179', 'M', '1985-08-03', 1),
(1301, 3301, '52912132731', 'Ž', '2005-07-31', 1),
(1302, 3302, '53020441144', 'M', '1973-02-21', 1),
(1303, 3303, '53236769254', 'M', '1999-07-03', 1),
(1304, 3304, '53579724139', 'M', '2008-08-29', 1),
(1305, 3305, '53789892698', 'Ž', NULL, 1),
(1306, 3306, '53859730433', 'M', '1957-08-22', 1),
(1307, 3307, '53909182185', 'M', NULL, 1),
(1308, 3308, '54071252894', 'M', NULL, 1),
(1309, 3309, '54209061672', 'Ž', '1973-02-08', 1),
(1310, 3310, '54429651003', 'M', '1978-10-05', 1),
(1311, 3311, '54475969682', 'M', '2002-02-02', 1),
(1312, 3312, '54826208442', 'M', '1975-06-29', 1),
(1313, 3313, '55134514219', 'M', '1972-02-25', 1),
(1314, 3314, '55214207403', 'M', '1970-08-13', 1),
(1315, 3315, '55305019772', 'M', NULL, 1),
(1316, 3316, '55586705914', 'Ž', '1976-11-23', 1),
(1317, 3317, '55633784892', 'M', '2008-11-04', 1),
(1318, 3318, '55974168423', 'M', '1963-03-11', 1),
(1319, 3319, '56064541267', 'Ž', '1977-07-30', 1),
(1320, 3320, '56152676653', 'Ž', '1969-11-22', 1),
(1321, 3321, '56522180624', 'M', NULL, 1),
(1322, 3322, NULL, 'Ž', '1980-05-17', 1),
(1323, 3323, '56810095985', 'M', NULL, 1),
(1324, 3324, '56851937082', 'Ž', NULL, 1),
(1325, 3325, '56989465091', 'M', '1971-10-18', 1),
(1326, 3326, '57081523157', 'Ž', '1980-04-06', 1),
(1327, 3327, '57298273182', 'M', NULL, 1),
(1328, 3328, '57366273530', 'M', '1986-02-09', 1),
(1329, 3329, '57789111404', 'Ž', '2005-11-15', 1),
(1330, 3330, '57797625091', 'Ž', '1979-02-03', 1),
(1331, 3331, '58002194743', 'Ž', NULL, 1),
(1332, 3332, '58327960209', 'Ž', '1964-01-29', 1),
(1333, 3333, '58383460625', 'M', '1981-04-23', 1),
(1334, 3334, '58389659985', 'M', '1974-07-15', 1),
(1335, 3335, '58498243166', 'M', NULL, 1),
(1336, 3336, '58878840282', 'M', '1991-04-09', 1),
(1337, 3337, '58990460969', 'Ž', '2001-08-16', 1),
(1338, 3338, '59337987550', 'Ž', NULL, 1),
(1339, 3339, '59496094693', 'M', '1989-05-25', 1),
(1340, 3340, '59755243333', 'Ž', '1972-09-10', 1),
(1341, 3341, '59863755713', 'M', NULL, 1),
(1342, 3342, '59971669146', 'M', '2008-06-27', 1),
(1343, 3343, '59994083188', 'M', '1973-06-10', 1),
(1344, 3344, '60046528834', 'Ž', '1988-03-27', 1),
(1345, 3345, '60097015941', 'Ž', '1987-01-21', 1),
(1346, 3346, '60204640600', 'Ž', '1974-06-04', 1),
(1347, 3347, '60231827443', 'Ž', '1993-02-07', 1),
(1348, 3348, '60428009128', 'M', NULL, 1),
(1349, 3349, '60582470653', 'M', '1992-06-30', 1),
(1350, 3350, '61069602908', 'M', NULL, 1),
(1351, 3351, '61352433253', 'Ž', '2004-05-05', 1),
(1352, 3352, '61484010326', 'M', '1982-09-01', 1),
(1353, 3353, '61533470374', 'Ž', '1979-01-26', 1),
(1354, 3354, '61747190819', 'M', '1941-10-29', 1),
(1355, 3355, '61812906585', 'M', NULL, 1),
(1356, 3356, '61880821497', 'M', NULL, 1),
(1357, 3357, '61896132256', 'Ž', '1977-07-06', 1),
(1358, 3358, '62089514192', 'M', '1965-12-27', 1),
(1359, 3359, '62202252507', 'M', '1989-03-21', 1),
(1360, 3360, '62519835741', 'Ž', '1997-06-25', 1),
(1361, 3361, '62779857099', 'Ž', '1976-12-29', 1),
(1362, 3362, '63250225131', 'M', NULL, 1),
(1363, 3363, '63337493903', 'M', '1962-02-10', 1),
(1364, 3364, '63388766066', 'Ž', NULL, 1),
(1365, 3365, '63531792553', 'M', '1974-11-11', 1),
(1366, 3366, '63862863439', 'M', '1967-05-05', 1),
(1367, 3367, '64109461556', 'M', '1975-08-08', 1),
(1368, 3368, '64386819033', 'Ž', '1975-12-22', 1),
(1369, 3369, '64501772260', 'Ž', '1989-08-19', 1),
(1370, 3370, '64843811798', 'M', '1978-06-08', 1),
(1371, 3371, '65237301828', 'Ž', '2005-02-05', 1),
(1372, 3372, '65254800461', 'Ž', '1971-06-12', 1),
(1373, 3373, '65320169790', 'M', '2010-05-06', 1),
(1374, 3374, '65444771490', 'M', '1982-04-06', 1),
(1375, 3375, '65846196140', 'Ž', '1977-10-15', 1),
(1376, 3376, '65941965647', 'Ž', '1981-09-14', 1),
(1377, 3377, '66356186392', 'M', NULL, 1),
(1378, 3378, '66368989385', 'Ž', NULL, 1),
(1379, 3379, '66392738770', 'M', NULL, 1),
(1380, 3380, NULL, 'Ž', '1994-07-25', 1),
(1381, 3381, '66456667739', 'Ž', NULL, 1),
(1382, 3382, '66473571232', 'M', '2005-02-20', 1),
(1383, 3383, '66690256233', 'Ž', '1995-10-09', 1),
(1384, 3384, '66690460453', 'Ž', '1968-02-19', 1),
(1385, 3385, '66716894774', 'M', '1977-08-10', 1),
(1386, 3386, '66809196032', 'M', '1976-03-17', 1),
(1387, 3387, NULL, 'M', NULL, 1),
(1388, 3388, '67398806144', 'M', '1960-07-20', 1),
(1389, 3389, '67398973288', 'Ž', '1974-10-28', 1),
(1390, 3390, '67525500215', 'Ž', '1985-10-21', 1),
(1391, 3391, '67541005613', 'Ž', '1968-11-13', 1),
(1392, 3392, '67781271620', 'Ž', '2001-03-18', 1),
(1393, 3393, '68015115308', 'M', '1940-07-21', 1),
(1394, 3394, '68070051322', 'M', '1961-04-04', 1),
(1395, 3395, '68118892747', 'M', NULL, 1),
(1396, 3396, '68213351635', 'M', NULL, 1),
(1397, 3397, '68426227089', 'Ž', '1975-01-04', 1),
(1398, 3398, '68580565520', 'M', '1972-03-06', 1),
(1399, 3399, NULL, 'M', NULL, 1),
(1400, 3400, '68875636664', 'M', NULL, 1),
(1401, 3401, '68898026867', 'Ž', NULL, 1),
(1402, 3402, '70226575665', 'Ž', NULL, 1),
(1403, 3403, '71065746493', 'Ž', '1965-12-05', 1),
(1404, 3404, '71086394939', 'Ž', NULL, 1),
(1405, 3405, '71101262934', 'Ž', '1979-12-08', 1),
(1406, 3406, '71147567007', 'Ž', NULL, 1),
(1407, 3407, '71153078817', 'M', '1969-07-11', 1),
(1408, 3408, '71421666953', 'M', '2008-09-28', 1),
(1409, 3409, '71442663634', 'M', '1975-08-14', 1),
(1410, 3410, '71586042144', 'Ž', '2005-09-22', 1),
(1411, 3411, '71628587236', 'M', '2012-07-06', 1),
(1412, 3412, '71714392375', 'Ž', '1990-12-18', 1),
(1413, 3413, '71866595118', 'Ž', '2001-03-27', 1),
(1414, 3414, '71967092580', 'Ž', '1967-11-22', 1),
(1415, 3415, '72035662525', 'M', '1985-09-05', 1),
(1416, 3416, '72065621448', 'M', '1986-04-10', 1),
(1417, 3417, '72119320965', 'Ž', '1967-09-24', 1),
(1418, 3418, '72335019912', 'M', '1982-06-18', 1),
(1419, 3419, '72472833937', 'M', '2002-04-02', 1),
(1420, 3420, '72505467937', 'M', '1969-05-08', 1),
(1421, 3421, '72615022313', 'Ž', '1981-07-06', 1),
(1422, 3422, '72786487608', 'M', '2001-02-20', 1),
(1423, 3423, '73288484763', 'M', '1979-01-11', 1),
(1424, 3424, '73363967967', 'Ž', '2004-10-04', 1),
(1425, 3425, '73498374598', 'Ž', '2011-01-17', 1),
(1426, 3426, '73560613404', 'M', '1983-01-01', 1),
(1427, 3427, '73840733470', 'M', '1962-05-01', 1),
(1428, 3428, '74199816154', 'M', NULL, 1),
(1429, 3429, '74542672168', 'Ž', '1964-05-28', 1),
(1430, 3430, '74686901328', 'M', NULL, 1),
(1431, 3431, '74687978483', 'Ž', '2003-10-23', 1),
(1432, 3432, '74714950643', 'M', NULL, 1),
(1433, 3433, '75051099254', 'M', '1971-09-26', 1),
(1434, 3434, '75056004512', 'M', NULL, 1),
(1435, 3435, '75466119409', 'Ž', NULL, 1),
(1436, 3436, '75472725239', 'Ž', '1976-02-23', 1),
(1437, 3437, '75616687491', 'Ž', '2003-03-01', 1),
(1438, 3438, '75959844685', 'Ž', '2006-07-15', 1),
(1439, 3439, '76064942863', 'Ž', '2004-12-28', 1),
(1440, 3440, '76396565532', 'Ž', '2010-06-11', 1),
(1441, 3441, '76528111731', 'Ž', '2005-03-12', 1),
(1442, 3442, '76688267441', 'Ž', '2005-01-04', 1),
(1443, 3443, '77161078346', 'M', NULL, 1),
(1444, 3444, '77276966106', 'M', '1961-08-19', 1),
(1445, 3445, '77608358345', 'Ž', '1972-07-12', 1),
(1446, 3446, '77716072137', 'M', '1982-08-28', 1),
(1447, 3447, '77854921510', 'M', '1973-06-29', 1),
(1448, 3448, '77867187198', 'M', '1977-11-29', 1),
(1449, 3449, '77975634732', 'M', '2000-12-17', 1),
(1450, 3450, '78064267110', 'M', NULL, 1),
(1451, 3451, '78131769272', 'M', '2005-12-12', 1),
(1452, 3452, '78385867358', 'Ž', NULL, 1),
(1453, 3453, '78460905165', 'M', '1969-08-25', 1),
(1454, 3454, '78537717235', 'Ž', '1975-08-19', 1),
(1455, 3455, '78898885218', 'M', '2002-04-13', 1),
(1456, 3456, '79716497096', 'Ž', NULL, 1),
(1457, 3457, '79933434685', 'Ž', '1965-10-31', 1),
(1458, 3458, '80042560821', 'Ž', '2009-01-02', 1),
(1459, 3459, '80190754122', 'M', '1993-01-06', 1),
(1460, 3460, '80345419193', 'Ž', '1977-05-26', 1),
(1461, 3461, '80532668041', 'M', NULL, 1),
(1462, 3462, '80738898422', 'Ž', NULL, 1),
(1463, 3463, '80808544741', 'Ž', '1968-06-23', 1),
(1464, 3464, '80899853015', 'M', NULL, 1),
(1465, 3465, NULL, 'Ž', '2003-02-11', 1),
(1466, 3466, '81220486034', 'Ž', '1979-10-10', 1),
(1467, 3467, '81271007787', 'Ž', '2008-05-05', 1),
(1468, 3468, '81454246321', 'M', NULL, 1),
(1469, 3469, '82017533463', 'Ž', '2002-05-31', 1),
(1470, 3470, '82212854367', 'Ž', '1968-10-16', 1),
(1471, 3471, '82820763143', 'M', '1975-05-13', 1),
(1472, 3472, '83145532588', 'Ž', '1983-08-26', 1),
(1473, 3473, '83292504777', 'Ž', '1975-10-04', 1),
(1474, 3474, '83311511890', 'M', '1997-02-23', 1),
(1475, 3475, '83348034109', 'M', '1974-06-23', 1),
(1476, 3476, '83436430160', 'Ž', '1981-02-14', 1),
(1477, 3477, '83484954968', 'Ž', '2004-11-07', 1),
(1478, 3478, '83505242604', 'Ž', '1969-07-11', 1),
(1479, 3479, '83985987741', 'M', '1966-01-04', 1),
(1480, 3480, '84000129856', 'M', '1971-08-24', 1),
(1481, 3481, '84082892685', 'M', NULL, 1),
(1482, 3482, '84254034539', 'M', '1961-07-13', 1),
(1483, 3483, '84396624341', 'Ž', '1987-11-02', 1),
(1484, 3484, '84737502207', 'M', '1950-08-10', 1),
(1485, 3485, '85039200494', 'Ž', NULL, 1),
(1486, 3486, '85089291629', 'M', '1969-10-23', 1),
(1487, 3487, '85164048262', 'M', '1975-11-08', 1),
(1488, 3488, '85731960285', 'Ž', '1975-08-27', 1),
(1489, 3489, '85821249277', 'M', '1999-08-30', 1),
(1490, 3490, '85829691394', 'M', '1962-04-30', 1),
(1491, 3491, '85863307422', 'Ž', NULL, 1),
(1492, 3492, '85936270274', 'M', '1971-09-11', 1),
(1493, 3493, '85965013664', 'Ž', '2006-01-26', 1),
(1494, 3494, '86110374862', 'M', '1963-09-26', 1),
(1495, 3495, '86395373356', 'M', NULL, 1),
(1496, 3496, '86446560654', 'M', '1976-01-31', 1),
(1497, 3497, '86458055733', 'M', '2002-12-24', 1),
(1498, 3498, '86759392695', 'M', '1975-12-30', 1),
(1499, 3499, '87160334977', 'M', '1982-04-13', 1),
(1500, 3500, '87187633317', 'M', NULL, 1),
(1501, 3501, '87330425513', 'Ž', '1942-08-28', 1),
(1502, 3502, '87438357167', 'Ž', '1984-04-01', 1),
(1503, 3503, '87684016089', 'M', '2006-04-10', 1),
(1504, 3504, '87766401164', 'Ž', '1974-01-30', 1),
(1505, 3505, '88094502291', 'M', '1967-12-02', 1),
(1506, 3506, '88232475559', 'M', '1975-07-23', 1),
(1507, 3507, '88675722876', 'M', '1994-04-13', 1),
(1508, 3508, '88741499021', 'Ž', '1996-07-02', 1),
(1509, 3509, '88846313496', 'M', NULL, 1),
(1510, 3510, '88875080156', 'Ž', '1993-01-05', 1),
(1511, 3511, '88933294447', 'M', NULL, 1),
(1512, 3512, '88962822870', 'Ž', '2004-11-07', 1),
(1513, 3513, '89729091985', 'Ž', NULL, 1),
(1514, 3514, '89807512160', 'M', '1988-04-21', 1),
(1515, 3515, '89888504470', 'Ž', '1967-07-09', 1),
(1516, 3516, '90136246538', 'M', '1975-05-22', 1),
(1517, 3517, '90171960238', 'M', '1987-09-25', 1),
(1518, 3518, '90231088710', 'Ž', '1964-10-18', 1),
(1519, 3519, '90384573071', 'M', '1987-12-09', 1),
(1520, 3520, '90877803254', 'M', '1970-02-22', 1),
(1521, 3521, '91246488962', 'M', '2004-07-03', 1),
(1522, 3522, '91422201542', 'M', '2002-05-13', 1),
(1523, 3523, '91445307642', 'Ž', '1977-08-05', 1),
(1524, 3524, '91512256782', 'M', '2005-02-21', 1),
(1525, 3525, '91684966202', 'Ž', NULL, 1),
(1526, 3526, '92158576936', 'Ž', '1985-11-25', 1),
(1527, 3527, '92209659472', 'Ž', NULL, 1),
(1528, 3528, '92249462107', 'Ž', NULL, 1),
(1529, 3529, '92422982264', 'Ž', '1975-08-14', 1),
(1530, 3530, '92664964959', 'Ž', '2007-06-25', 1),
(1531, 3531, '92686621065', 'M', '1954-02-13', 1),
(1532, 3532, '92780707475', 'Ž', '1999-07-27', 1),
(1533, 3533, '92865257546', 'M', '1958-05-18', 1),
(1534, 3534, '92866906868', 'M', '1975-01-06', 1),
(1535, 3535, '92990285705', 'M', '1998-04-14', 1),
(1536, 3536, '93187953209', 'M', '1990-07-17', 1),
(1537, 3537, '93189601117', 'M', '1983-09-02', 1),
(1538, 3538, '93247282622', 'Ž', '2009-11-12', 1),
(1539, 3539, '93337015311', 'M', '2006-06-29', 1),
(1540, 3540, '93530740134', 'M', '1980-03-25', 1),
(1541, 3541, '93551238639', 'Ž', '1984-08-28', 1),
(1542, 3542, '93568117624', 'Ž', NULL, 1),
(1543, 3543, '93898416456', 'Ž', '1977-03-11', 1),
(1544, 3544, '94670637595', 'Ž', '1961-06-28', 1),
(1545, 3545, '94907380447', 'M', NULL, 1),
(1546, 3546, '95108413896', 'M', '1980-01-17', 1),
(1547, 3547, '95477248348', 'Ž', '2005-05-19', 1),
(1548, 3548, '96088103649', 'M', '1952-01-19', 1),
(1549, 3549, '96291344266', 'Ž', '1983-06-25', 1),
(1550, 3550, '96497601631', 'Ž', '1977-04-20', 1),
(1551, 3551, '96706731836', 'Ž', '1958-12-23', 1),
(1552, 3552, '96850542645', 'Ž', '1971-03-29', 1),
(1553, 3553, '97311480820', 'M', NULL, 1),
(1554, 3554, '97481262062', 'M', NULL, 1),
(1555, 3555, '97751216277', 'M', NULL, 1),
(1556, 3556, '97790942665', 'M', '1951-10-24', 1),
(1557, 3557, '97958505968', 'M', '2008-02-22', 1),
(1558, 3558, '97977318756', 'M', '1968-12-13', 1),
(1559, 3559, '98137259128', 'M', '1968-04-10', 1),
(1560, 3560, '98285055196', 'Ž', NULL, 1),
(1561, 3561, '98314383145', 'Ž', '1977-01-27', 1),
(1562, 3562, '98482944803', 'M', '1963-03-14', 1),
(1563, 3563, '98576632169', 'M', '1959-11-07', 1),
(1564, 3564, '99373942223', 'Ž', NULL, 1),
(1565, 3565, '99498512567', 'Ž', '1977-02-10', 1),
(1566, 3566, '99585010753', 'M', '1999-06-03', 1),
(1567, 3567, '99736165691', 'M', '1979-02-15', 1),
(1568, 3568, '99737718751', 'M', '1946-03-23', 1),
(1569, 3569, '02920260067', 'Ž', NULL, 1),
(1570, 3570, '01315481485', 'M', '1995-06-18', 1),
(1571, 3571, NULL, 'M', '2006-03-15', 1),
(1572, 3572, '01553427633', 'M', '1992-06-27', 1),
(1573, 3573, '02208380491', 'M', NULL, 1),
(1574, 3574, '04332386597', 'M', '1992-09-15', 1),
(1575, 3575, '04445914081', 'M', '1999-03-10', 1),
(1576, 3576, '05842771490', 'M', '1975-05-26', 1),
(1577, 3577, '07438758537', 'M', NULL, 1),
(1578, 3578, '07814883746', 'Ž', NULL, 1),
(1579, 3579, '08813620463', 'M', '1991-09-12', 1),
(1580, 3580, '10742344363', 'M', '1995-03-26', 1),
(1581, 3581, '10800361285', 'M', '1982-12-02', 1),
(1582, 3582, '10818114818', 'M', '1995-12-29', 1),
(1583, 3583, '11598238117', 'M', '2002-02-12', 1),
(1584, 3584, '12590796359', 'M', NULL, 1),
(1585, 3585, '13469240310', 'M', '1994-04-01', 1),
(1586, 3586, '14108761783', 'M', '1974-06-18', 1),
(1587, 3587, '15628536862', 'Ž', '1982-03-19', 1),
(1588, 3588, '15755602768', 'M', '1990-08-03', 1),
(1589, 3589, '16769614993', 'Ž', '1999-11-23', 1),
(1590, 3590, '17284331829', 'M', '1974-09-16', 1),
(1591, 3591, '19927448401', 'Ž', NULL, 1),
(1592, 3592, '20695816925', 'M', '1957-04-07', 1),
(1593, 3593, '22636002822', 'M', '2005-03-12', 1),
(1594, 3594, '23089346849', 'M', '1995-03-18', 1),
(1595, 3595, '24179910060', 'Ž', '1999-08-02', 1),
(1596, 3596, '24297966003', 'M', '1983-04-09', 1),
(1597, 3597, '28089132752', 'M', '2004-04-02', 1),
(1598, 3598, NULL, 'M', '1995-09-08', 1),
(1599, 3599, '30427466474', 'M', '1974-06-15', 1),
(1600, 3600, '31269657018', 'Ž', '2001-02-23', 1),
(1601, 3601, '33382372256', 'M', '2006-05-18', 1),
(1602, 3602, '34583327367', 'M', '2005-07-19', 1),
(1603, 3603, '35226565162', 'M', '1981-06-12', 1),
(1604, 3604, '36344646432', 'M', '1995-03-04', 1),
(1605, 3605, '39172084402', 'M', '1972-03-31', 1),
(1606, 3606, '39746944972', 'Ž', '2001-01-24', 1),
(1607, 3607, '43924749311', 'Ž', '1974-05-07', 1),
(1608, 3608, '44000618477', 'M', '2005-02-01', 1),
(1609, 3609, '46077375998', 'M', '1973-01-01', 1),
(1610, 3610, '46590669073', 'M', '1979-04-10', 1),
(1611, 3611, '47427646265', 'M', '1994-12-27', 1),
(1612, 3612, '47682508460', 'M', '1993-04-08', 1),
(1613, 3613, '50704276410', 'Ž', '1994-08-12', 1),
(1614, 3614, '51625274381', 'Ž', '1980-02-14', 1),
(1615, 3615, '52688179029', 'M', '2005-11-26', 1),
(1616, 3616, '53701879940', 'M', '1993-12-11', 1),
(1617, 3617, '54682050280', 'Ž', '2005-02-04', 1),
(1618, 3618, '55778213359', 'Ž', '2005-01-31', 1),
(1619, 3619, '56433082331', 'Ž', '2004-07-19', 1),
(1620, 3620, '56504355095', 'M', '1995-11-21', 1),
(1621, 3621, '57771061546', 'Ž', NULL, 1),
(1622, 3622, '57984384223', 'Ž', '1982-09-11', 1),
(1623, 3623, '58537787690', 'Ž', '1985-06-26', 1),
(1624, 3624, '60014316918', 'M', NULL, 1),
(1625, 3625, NULL, 'M', NULL, 1),
(1626, 3626, '62082079561', 'M', NULL, 1),
(1627, 3627, NULL, 'M', NULL, 1),
(1628, 3628, '65756277005', 'M', NULL, 1),
(1629, 3629, '68945031756', 'M', '1990-09-10', 1),
(1630, 3630, '69892043702', 'M', NULL, 1),
(1631, 3631, '70426508123', 'Ž', '2000-12-31', 1),
(1632, 3632, '72124292206', 'Ž', NULL, 1),
(1633, 3633, '72428445711', 'M', NULL, 1),
(1634, 3634, '72852704243', 'Ž', '2004-01-15', 1),
(1635, 3635, '74871836041', 'M', '1997-04-07', 1),
(1636, 3636, '74895381615', 'M', '1995-09-22', 1),
(1637, 3637, '75061939808', 'M', NULL, 1),
(1638, 3638, '78616476262', 'M', '1993-04-18', 1),
(1639, 3639, '78887398735', 'M', '1995-08-10', 1),
(1640, 3640, NULL, 'Ž', '1995-06-19', 1),
(1641, 3641, '81401617290', 'M', '1965-06-15', 1),
(1642, 3642, '81497630670', 'M', '1972-12-19', 1),
(1643, 3643, '82647351208', 'M', '1977-03-18', 1),
(1644, 3644, '82656654403', 'M', '2005-02-25', 1),
(1645, 3645, '83514657403', 'Ž', '1984-11-16', 1),
(1646, 3646, '85131681377', 'Ž', '2004-05-18', 1),
(1647, 3647, '85767800162', 'M', '1991-11-15', 1),
(1648, 3648, '85856305411', 'Ž', '1991-07-10', 1),
(1649, 3649, '93622651664', 'Ž', '2005-03-31', 1),
(1650, 3650, NULL, 'M', '1973-07-03', 1),
(1651, 3651, '95327445051', 'Ž', '1990-12-23', 1),
(1652, 3652, '96246569382', 'Ž', '2005-02-11', 1),
(1653, 3653, '96955044379', 'Ž', '2003-12-30', 1),
(1654, 3654, '98273668572', 'M', '1995-12-29', 1),
(1655, 3655, NULL, 'Ž', '1953-09-05', 1),
(1656, 3656, '80445590881', 'Ž', '1987-09-13', 1),
(1657, 3657, NULL, 'Ž', '2007-01-31', 1),
(1658, 3658, NULL, 'Ž', '2006-08-21', 1),
(1659, 3659, NULL, 'Ž', '1977-10-15', 1),
(1660, 3660, NULL, 'M', '2003-03-14', 1),
(1661, 3661, NULL, 'Ž', '1973-05-06', 1),
(1662, 3662, NULL, 'M', '1981-06-28', 1),
(1663, 3663, NULL, 'Ž', '2006-01-03', 1),
(1664, 3664, NULL, 'M', '1984-07-30', 1),
(1665, 3665, '60772474032', 'M', '2005-10-30', 1),
(1666, 3666, '24652956936', 'Ž', '2007-09-06', 1),
(1667, 3667, '21188660865', 'Ž', '2001-08-03', 1),
(1668, 3668, '28823350855', 'M', '2004-09-01', 1),
(1669, 3669, '23139879024', 'M', '2005-03-31', 1),
(1670, 3670, NULL, 'Ž', '1985-08-09', 1),
(1671, 3671, '01649603904', 'M', '1991-06-19', 1),
(1672, 3672, '00470815521', 'M', '1964-10-08', 1),
(1673, 3673, '67318181448', 'M', '1990-11-03', 1),
(1674, 3674, NULL, 'M', '1992-10-31', 1),
(1675, 3675, '56917495983', 'M', '1976-09-07', 1),
(1676, 3676, '40056995483', 'Ž', '1994-01-05', 1),
(1677, 3677, '08777042776', 'M', '1962-09-17', 1),
(1678, 3678, '03139145517', 'M', '1993-06-19', 1),
(1679, 3679, '90811876700', 'M', '1987-09-15', 1),
(1680, 3680, '30030850797', 'Ž', '1975-09-26', 1),
(1681, 3681, '04014720142', 'Ž', '1996-08-08', 1),
(1682, 3682, '85247717882', 'M', '1998-05-17', 1),
(1683, 3683, '56684335456', 'Ž', '1998-04-28', 1),
(1684, 3684, '20649012988', 'Ž', '1999-07-26', 1),
(1685, 3685, '91286130674', 'M', '1999-08-29', 1),
(1686, 3686, '57852322294', 'M', '2001-08-31', 1),
(1687, 3687, '88241251832', 'M', '2002-01-08', 1),
(1688, 3688, '67407669491', 'M', '2005-07-29', 1),
(1689, 3689, '16465959102', 'M', '1970-09-13', 1),
(1690, 3690, NULL, 'Ž', '1974-02-02', 1),
(1691, 3691, NULL, 'M', '1976-01-06', 1),
(1692, 3692, NULL, 'M', '2009-08-14', 1),
(1693, 3693, NULL, 'M', '2005-06-27', 1),
(1694, 3694, NULL, 'Ž', '2010-12-18', 1),
(1695, 3695, NULL, 'M', '1982-05-02', 1),
(1696, 3696, '44983721043', 'M', '1968-03-11', 1),
(1697, 3697, NULL, 'M', '1964-02-15', 1),
(1698, 3698, NULL, 'M', '1978-03-21', 1),
(1699, 3699, NULL, 'Ž', '1971-11-06', 1),
(1700, 3700, NULL, 'M', '1971-07-25', 1),
(1701, 3701, NULL, 'M', '1970-11-03', 1),
(1702, 3702, NULL, 'Ž', '2008-02-10', 1),
(1703, 3703, NULL, 'M', '2002-10-07', 1),
(1704, 3704, NULL, 'M', '2006-08-13', 1),
(1705, 3705, NULL, 'Ž', '1978-10-26', 1),
(1706, 3706, NULL, 'M', '2011-07-01', 1),
(1707, 3707, NULL, 'M', '1982-08-14', 1),
(1708, 3708, NULL, 'Ž', '1993-11-26', 1),
(1709, 3709, NULL, 'Ž', '1982-10-29', 1),
(1710, 3710, NULL, 'M', '1975-06-09', 1),
(1711, 3711, NULL, 'Ž', '1973-08-13', 1),
(1712, 3712, NULL, 'M', '2006-09-05', 1),
(1713, 3713, NULL, 'M', '2008-06-06', 1),
(1714, 3714, NULL, 'M', '1975-07-12', 1),
(1715, 3715, NULL, 'M', '2005-09-21', 1),
(1716, 3716, NULL, 'Ž', '2007-11-26', 1),
(1717, 3717, NULL, 'Ž', '1990-05-09', 1),
(1718, 3718, NULL, 'M', '2005-02-11', 1),
(1719, 3719, NULL, 'Ž', '1976-11-13', 1),
(1720, 3720, NULL, 'M', '1976-05-04', 1),
(1721, 3721, NULL, 'Ž', '2007-11-20', 1),
(1722, 3722, NULL, 'M', '2010-11-29', 1),
(1723, 3723, '66960943009', 'M', '2007-10-29', 1),
(1724, 3724, NULL, 'Ž', '1978-01-20', 1),
(1725, 3725, NULL, 'Ž', '1975-05-31', 1),
(1726, 3726, NULL, 'M', '1984-04-07', 1),
(1727, 3727, NULL, 'M', '1995-05-24', 1),
(1728, 3728, NULL, 'Ž', '1995-01-27', 1),
(1729, 3729, NULL, 'M', '1991-08-19', 1),
(1730, 3730, NULL, 'M', '1993-10-05', 1),
(1731, 3731, NULL, 'Ž', '1996-10-03', 1),
(1732, 3732, NULL, 'Ž', '1996-06-12', 1),
(1733, 3733, NULL, 'M', '1997-02-23', 1),
(1734, 3734, NULL, 'M', '1996-08-01', 1),
(1735, 3735, NULL, 'M', '1991-04-13', 1),
(1736, 3736, NULL, 'M', '1996-10-08', 1),
(1737, 3737, NULL, 'M', '1995-08-24', 1),
(1738, 3738, NULL, 'M', '1995-04-24', 1),
(1739, 3739, NULL, 'Ž', '1995-01-17', 1),
(1740, 3740, NULL, 'Ž', '1997-02-01', 1),
(1741, 3741, NULL, 'M', '1993-08-31', 1),
(1742, 3742, NULL, 'M', '1993-01-01', 1),
(1743, 3743, NULL, 'Ž', '1992-01-26', 1),
(1744, 3744, NULL, 'M', '2005-07-12', 1),
(1745, 3745, NULL, 'M', '1991-11-25', 1),
(1746, 3746, NULL, 'Ž', '1993-03-31', 1),
(1747, 3747, NULL, 'Ž', '1972-07-14', 1),
(1748, 3748, NULL, 'Ž', '1989-03-01', 1),
(1749, 3749, NULL, 'Ž', '1988-04-13', 1),
(1750, 3750, NULL, 'Ž', '1989-01-31', 1),
(1751, 3751, NULL, 'Ž', '1983-03-13', 1),
(1752, 3752, NULL, 'M', '2010-01-14', 1),
(1753, 3753, NULL, 'Ž', '2003-08-17', 1),
(1754, 3754, NULL, 'Ž', '2001-10-11', 1),
(1755, 3755, NULL, 'M', '2003-05-15', 1),
(1756, 3756, NULL, 'Ž', '2002-08-02', 1),
(1757, 3757, NULL, 'M', '2004-10-21', 1),
(1758, 3758, NULL, 'M', '2008-01-21', 1),
(1759, 3759, NULL, 'Ž', '2005-03-27', 1),
(1760, 3760, NULL, 'Ž', '2002-10-18', 1),
(1761, 3761, '17791432414', 'M', '1999-02-19', 1),
(1762, 3762, '07852830345', 'Ž', '2000-08-17', 1),
(1763, 3763, NULL, 'Ž', '2003-09-19', 1),
(1764, 3764, '04097156461', 'M', '1999-09-10', 1),
(1765, 3765, NULL, 'M', '2003-04-11', 1),
(1766, 3766, NULL, 'M', '2009-08-21', 1),
(1767, 3767, NULL, 'Ž', '2003-06-18', 1),
(1768, 3768, NULL, 'Ž', '2005-11-16', 1),
(1769, 3769, NULL, 'M', '2004-01-20', 1),
(1770, 3770, NULL, 'M', '2004-02-02', 1),
(1771, 3771, NULL, 'M', '1968-08-02', 1),
(1772, 3772, NULL, 'M', '2005-01-28', 1),
(1773, 3773, NULL, 'M', '1993-01-28', 1),
(1774, 3774, NULL, 'M', '1983-06-18', 1),
(1775, 3775, NULL, 'M', '1978-12-26', 1),
(1776, 3776, '11008721899', 'M', '1977-09-14', 1),
(1777, 3777, '15797551981', 'Ž', '1986-10-31', 1),
(1778, 3778, '72860967214', 'M', '1970-09-19', 1),
(1779, 3779, '66099920904', 'Ž', '2002-12-21', 1),
(1780, 3780, '77706982373', 'M', '2000-05-25', 1),
(1781, 3781, NULL, 'M', '1977-05-18', 1),
(1782, 3782, '55198818120', 'Ž', '1980-08-23', 1),
(1783, 3783, NULL, 'M', '1998-12-18', 1),
(1784, 3784, '24300472529', 'Ž', '1974-07-13', 1),
(1785, 3785, '74844993403', 'Ž', '1985-12-31', 1),
(1786, 3786, NULL, 'Ž', '1987-11-12', 1),
(1787, 3787, '41299510075', 'M', '1973-03-14', 1),
(1788, 3788, '64621194333', 'M', '1972-02-02', 1),
(1789, 3789, NULL, 'M', '1998-12-22', 1),
(1790, 3790, '97441583506', 'M', '1972-07-28', 1),
(1791, 3791, '87526716056', 'Ž', '1986-06-29', 1),
(1792, 3792, NULL, 'Ž', '1984-09-10', 1),
(1793, 3793, '04550514619', 'M', '1989-07-06', 1),
(1794, 3794, '35471456162', 'Ž', '1984-09-29', 1),
(1795, 3795, '22087503789', 'Ž', '1999-07-02', 1),
(1796, 3796, '82084135191', 'Ž', '1995-09-26', 1),
(1797, 3797, '37664729727', 'Ž', '1972-05-09', 1),
(1798, 3798, NULL, 'Ž', '1973-02-01', 1),
(1799, 3799, '40219040329', 'Ž', '2002-10-15', 1),
(1800, 3800, '77973930349', 'M', '2001-03-26', 1),
(1801, 3801, '61515926600', 'Ž', '1999-09-05', 1),
(1802, 3802, '53194563197', 'M', '2003-11-09', 1),
(1803, 3803, '75011140603', 'M', '1997-06-01', 1),
(1804, 3804, '62611538933', 'M', '2005-10-24', 1),
(1805, 3805, NULL, 'M', '1990-11-26', 1),
(1806, 3806, '45724896092', 'Ž', '1980-05-21', 1),
(1807, 3807, '34389687409', 'M', '2004-12-08', 1),
(1808, 3808, '87786397083', 'M', '1996-07-17', 1),
(1809, 3809, NULL, 'Ž', '1972-10-09', 1),
(1810, 3810, NULL, 'M', '2006-02-05', 1),
(1811, 3811, NULL, 'Ž', '1988-05-18', 1),
(1812, 3812, NULL, 'Ž', '1969-07-25', 1),
(1813, 3813, NULL, 'Ž', '1984-08-06', 1),
(1814, 3814, NULL, 'Ž', '1996-10-19', 1),
(1815, 3815, NULL, 'M', '1966-09-11', 1),
(1816, 3816, NULL, 'Ž', '1977-03-11', 1),
(1817, 3817, NULL, 'M', '1973-05-21', 1),
(1818, 3818, NULL, 'M', '1967-11-12', 1),
(1819, 3819, NULL, 'M', '2001-04-20', 1),
(1820, 3820, NULL, 'M', '1997-11-27', 1),
(1821, 3821, NULL, 'M', '1975-10-01', 1),
(1822, 3822, NULL, 'M', '2000-09-18', 1),
(1823, 3823, NULL, 'M', '1952-01-28', 1),
(1824, 3824, NULL, 'M', '1992-03-08', 1),
(1825, 3825, NULL, 'M', '1992-08-31', 1),
(1826, 3826, '89130453398', 'Ž', NULL, 1),
(1827, 3827, '52165863177', 'M', '1982-08-20', 1),
(1828, 3828, '24309454384', 'Ž', '1981-07-09', 1),
(1829, 3829, '61002550396', 'Ž', '1993-12-15', 1),
(1830, 3830, '57538619064', 'M', NULL, 1),
(1831, 3831, '23679370551', 'Ž', NULL, 1),
(1832, 3832, '10540579995', 'M', NULL, 1),
(1833, 3833, '74171633607', 'M', NULL, 1),
(1834, 3834, NULL, 'M', NULL, 1),
(1835, 3835, '47413054980', 'M', NULL, 1),
(1836, 3836, '93173470967', 'M', '1968-06-24', 1),
(1837, 3837, '48320936698', 'M', '1968-05-21', 1),
(1838, 3838, '14953284981', 'Ž', NULL, 1),
(1839, 3839, '51175667265', 'M', '1993-10-02', 1),
(1032, 3032, '24892836714', 'Ž', '1980-01-03', 36),
(1200, 3200, '30220233630', 'Ž', '1969-01-09', 37),
(1305, 3305, '53789892698', 'Ž', '2010-05-10', 38),
(1315, 3315, '55305019772', 'M', '2010-03-26', 39),
(1169, 3169, '23626573008', 'M', '2006-10-11', 40),
(1095, 3095, '11080584362', 'M', '2007-03-05', 41),
(1553, 3553, '97311480820', 'M', '2008-03-23', 42),
(1434, 3434, '75056004512', 'M', '2005-04-30', 43),
(1088, 3088, '09918322681', 'M', '2009-03-26', 44),
(1584, 3584, '12590796359', 'M', '2007-11-12', 45),
(1450, 3450, '78064267110', 'M', '1973-02-04', 46),
(1481, 3481, '84082892685', 'M', '2005-11-22', 47),
(1307, 3307, '53909182185', 'M', '2010-03-01', 48),
(1159, 3159, '21947637307', 'M', '2005-01-13', 49),
(1554, 3554, '97481262062', 'M', '1972-10-16', 50),
(1323, 3323, '56810095985', 'M', '1972-12-02', 51),
(1430, 3430, '74686901328', 'M', '1965-12-06', 52),
(1500, 3500, '87187633317', 'M', '1974-04-11', 53),
(1089, 3089, '10036323630', 'M', '2003-10-23', 54),
(1350, 3350, '61069602908', 'M', '1980-09-07', 63),
(1348, 3348, '60428009128', 'M', '1980-12-22', 65),
(1072, 3072, '06916410751', 'M', '1973-12-23', 66),
(1083, 3083, '08566425233', 'M', '2009-09-22', 67),
(1061, 3061, '04735895159', 'M', '1967-03-28', 68),
(1670, 3670, '12166405004', 'Ž', '1985-08-09', 75),
(1786, 3786, '59695081204', 'Ž', '1987-11-12', 77),
(1087, 3087, '09673763306', 'Ž', '1971-12-06', 94),
(1193, 3193, '28536948768', 'Ž', '1982-04-25', 95),
(1261, 3261, '43781126062', 'Ž', '1986-10-14', 96),
(1378, 3378, '66368989385', 'Ž', '2005-08-20', 97),
(1128, 3128, '16401667801', 'Ž', '1966-10-12', 98),
(1232, 3232, '36333245134', 'Ž', '1968-11-18', 99),
(1331, 3331, '58002194743', 'Ž', '1980-02-06', 100),
(1265, 3265, '44643549204', 'Ž', '1992-01-22', 101),
(1840, 3840, '14938750009', 'Ž', '2012-01-27', 102),
(1525, 3525, '91684966202', 'Ž', '1985-03-27', 103),
(1092, 3092, '10486270721', 'Ž', '1980-02-19', 104),
(1243, 3243, '39374328193', 'Ž', '2006-03-28', 105),
(1212, 3212, '32813390566', 'Ž', '1979-11-20', 106),
(1560, 3560, '98285055196', 'Ž', '1979-11-08', 107),
(1222, 3222, '35402699573', 'Ž', '1981-12-08', 108),
(1841, 3841, '92554535890', 'Ž', '2009-07-29', 109),
(1842, 3842, '22166328412', 'Ž', '2012-06-14', 110),
(1843, 3843, '06834214265', 'Ž', '2010-03-06', 111),
(1844, 3844, '67345151790', 'Ž', '2011-09-22', 112),
(1845, 3845, '26604525791', 'M', '2014-01-23', 113),
(1846, 3846, '72389060702', 'Ž', '2007-12-16', 114),
(1847, 3847, '81186353889', 'Ž', '2010-01-20', 115),
(1848, 3848, '06062174219', 'M', '1979-09-21', 116),
(1849, 3849, '37898893385', 'Ž', '2012-10-14', 117),
(1850, 3850, '94187316933', 'Ž', '2007-01-25', 118),
(1851, 3851, '85609834327', 'M', '1984-08-04', 119),
(1852, 3852, '51829126095', 'Ž', '2007-01-25', 120),
(1853, 3853, '61772243617', 'Ž', '2011-07-08', 121),
(1854, 3854, '88276295632', 'M', '2010-09-13', 122),
(1855, 3855, '55984859741', 'M', '2009-05-25', 123),
(1856, 3856, '11056627526', 'Ž', '1982-06-17', 124),
(1857, 3857, '32983236207', 'M', '1997-03-20', 125),
(1858, 3858, '28007594721', 'M', '1997-03-20', 126),
(1859, 3859, '27845113648', 'Ž', '1970-10-28', 127),
(1860, 3860, '92920056634', 'M', '1983-10-04', 128),
(1861, 3861, '48804937090', 'Ž', '2001-09-01', 129),
(1862, 3862, '94707790169', 'Ž', '2004-09-19', 130),
(1863, 3863, '43009397672', 'Ž', '2006-06-05', 131),
(1864, 3864, '20077956851', 'Ž', '1968-11-07', 132),
(1019, 3019, '00746183517', 'Ž', '1962-03-19', 141),
(1865, 3865, '75114802285', 'Ž', '1991-05-21', 154),
(1866, 3866, '35339104205', 'Ž', '1971-10-13', 157),
(1867, 3867, '72605443785', 'M', '1966-09-28', 158),
(1868, 3868, '48971910847', 'Ž', '1984-03-26', 159),
(1869, 3869, '75555769822', 'Ž', '1983-08-24', 160),
(1870, 3870, '64632450047', 'M', '1986-01-19', 161);

-- --------------------------------------------------------

--
-- Table structure for table `registar`
--

CREATE TABLE `registar` (
  `id` int(11) NOT NULL,
  `imeprezime_id` int(11) NOT NULL,
  `kategorijaliga_id` int(11) NOT NULL,
  `datum_od` date NOT NULL,
  `datum_do` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `registar`
--

INSERT INTO `registar` (`id`, `imeprezime_id`, `kategorijaliga_id`, `datum_od`, `datum_do`) VALUES
(1, 1494, 1005, '2021-04-07', NULL),
(2, 1494, 1034, '2021-04-07', NULL),
(3, 1494, 1063, '2021-04-07', NULL),
(4, 1297, 1008, '2021-04-07', NULL),
(5, 1297, 1031, '2021-04-07', NULL),
(6, 1297, 1051, '2021-04-07', NULL),
(7, 1297, 1065, '2021-04-07', NULL),
(8, 1320, 1016, '2021-04-07', NULL),
(9, 1320, 1042, '2021-04-07', NULL),
(10, 1320, 1064, '2021-04-07', NULL),
(11, 1203, 1002, '2021-04-07', NULL),
(12, 1203, 1032, '2021-04-07', NULL),
(13, 1203, 1051, '2021-04-07', NULL),
(14, 1203, 1062, '2021-04-07', NULL),
(15, 1301, 1020, '2021-04-07', NULL),
(16, 1301, 1045, '2021-04-07', NULL),
(17, 1301, 1054, '2021-04-07', NULL),
(18, 1301, 1069, '2021-04-07', NULL),
(19, 1393, 1003, '2021-04-07', NULL),
(20, 1393, 1033, '2021-04-07', NULL),
(21, 1393, 1052, '2021-04-07', NULL),
(22, 1393, 1063, '2021-04-07', NULL),
(23, 1501, 1013, '2021-04-07', NULL),
(24, 1501, 1040, '2021-04-07', NULL),
(25, 1501, 1052, '2021-04-07', NULL),
(26, 1501, 1064, '2021-04-07', NULL),
(27, 1459, 1001, '2021-04-07', NULL),
(28, 1459, 1031, '2021-04-07', NULL),
(29, 1459, 1051, '2021-04-07', NULL),
(30, 1540, 1007, '2021-04-07', NULL),
(31, 1540, 1036, '2021-04-07', NULL),
(32, 1323, 1006, '2021-04-07', NULL),
(33, 1323, 1035, '2021-04-07', NULL),
(34, 1206, 1007, '2021-04-07', NULL),
(35, 1206, 1036, '2021-04-07', NULL),
(36, 1506, 1001, '2021-04-07', NULL),
(37, 1506, 1031, '2021-04-07', NULL),
(38, 1370, 1001, '2021-04-07', NULL),
(39, 1370, 1036, '2021-04-07', NULL),
(40, 1139, 1001, '2021-04-07', NULL),
(41, 1139, 1031, '2021-04-07', NULL),
(42, 1484, 1004, '2021-04-07', NULL),
(43, 1484, 1033, '2021-04-07', NULL),
(44, 1543, 1017, '2021-04-07', NULL),
(45, 1543, 1043, '2021-04-07', NULL),
(46, 1039, 1002, '2021-04-07', NULL),
(47, 1039, 1032, '2021-04-07', NULL),
(48, 1231, 1015, '2021-04-07', NULL),
(49, 1231, 1041, '2021-04-07', NULL),
(50, 1200, 1016, '2021-04-07', NULL),
(51, 1200, 1042, '2021-04-07', NULL),
(52, 1247, 1001, '2021-04-07', NULL),
(53, 1247, 1031, '2021-04-07', NULL),
(54, 1469, 1019, '2021-04-07', NULL),
(55, 1469, 1044, '2021-04-07', NULL),
(56, 1566, 1008, '2021-04-07', NULL),
(57, 1566, 1031, '2021-04-07', NULL),
(58, 1233, 1007, '2021-04-07', NULL),
(59, 1233, 1036, '2021-04-07', NULL),
(60, 1233, 1051, '2021-04-07', NULL),
(61, 1478, 1016, '2021-04-07', NULL),
(62, 1478, 1042, '2021-04-07', NULL),
(63, 1370, 1061, '2021-04-07', NULL),
(64, 1451, 1010, '2021-04-07', NULL),
(65, 1451, 1038, '2021-04-07', NULL),
(66, 1292, 1002, '2021-04-07', NULL),
(67, 1292, 1032, '2021-04-07', NULL),
(68, 1217, 1016, '2021-04-07', NULL),
(69, 1217, 1042, '2021-04-07', NULL),
(70, 1470, 1016, '2021-04-07', NULL),
(71, 1470, 1042, '2021-04-07', NULL),
(72, 1169, 1010, '2021-04-07', NULL),
(73, 1169, 1038, '2021-04-07', NULL),
(74, 1159, 1010, '2021-04-07', NULL),
(75, 1159, 1038, '2021-04-07', NULL),
(76, 1305, 1022, '2021-04-07', NULL),
(77, 1305, 1046, '2021-04-07', NULL),
(78, 1088, 1012, '2021-04-07', NULL),
(79, 1088, 1039, '2021-04-07', NULL),
(80, 1315, 1012, '2021-04-07', NULL),
(81, 1315, 1039, '2021-04-07', NULL),
(82, 1095, 1011, '2021-04-08', NULL),
(83, 1095, 1038, '2021-04-08', NULL),
(84, 1553, 1011, '2021-04-08', NULL),
(85, 1553, 1038, '2021-04-08', NULL),
(86, 1434, 1010, '2021-04-08', NULL),
(87, 1434, 1038, '2021-04-08', NULL),
(88, 1665, 1010, '2021-04-08', NULL),
(89, 1665, 1038, '2021-04-08', NULL),
(90, 1576, 1006, '2021-04-08', NULL),
(91, 1576, 1035, '2021-04-08', NULL),
(92, 1841, 1022, '2021-04-08', NULL),
(93, 1841, 1046, '2021-04-08', NULL),
(94, 1842, 1022, '2021-04-08', NULL),
(95, 1842, 1046, '2021-04-08', NULL),
(96, 1843, 1022, '2021-04-08', NULL),
(97, 1843, 1046, '2021-04-08', NULL),
(98, 1844, 1022, '2021-04-08', NULL),
(99, 1844, 1046, '2021-04-08', NULL),
(100, 1845, 1022, '2021-04-08', NULL),
(101, 1845, 1046, '2021-04-08', NULL),
(102, 1846, 1012, '2021-04-08', NULL),
(103, 1846, 1039, '2021-04-08', NULL),
(104, 1858, 1001, '2021-04-08', NULL),
(105, 1858, 1031, '2021-04-08', NULL),
(106, 1859, 1001, '2021-04-08', NULL),
(107, 1859, 1031, '2021-04-08', NULL),
(108, 1847, 1021, '2021-04-08', NULL),
(109, 1847, 1045, '2021-04-08', NULL),
(110, 1848, 1022, '2021-04-08', NULL),
(111, 1848, 1046, '2021-04-08', NULL),
(112, 1850, 1022, '2021-04-08', NULL),
(113, 1850, 1046, '2021-04-08', NULL),
(114, 1851, 1021, '2021-04-08', NULL),
(115, 1851, 1045, '2021-04-08', NULL),
(116, 1853, 1021, '2021-04-08', NULL),
(117, 1853, 1045, '2021-04-08', NULL),
(118, 1854, 1022, '2021-04-08', NULL),
(119, 1854, 1046, '2021-04-08', NULL),
(120, 1855, 1012, '2021-04-08', NULL),
(121, 1855, 1039, '2021-04-08', NULL),
(122, 1856, 1012, '2021-04-08', NULL),
(123, 1856, 1039, '2021-04-08', NULL),
(124, 1860, 1016, '2021-04-08', NULL),
(125, 1860, 1042, '2021-04-08', NULL),
(126, 1864, 1020, '2021-04-08', NULL),
(127, 1864, 1045, '2021-04-08', NULL),
(128, 1863, 1019, '2021-04-08', NULL),
(129, 1863, 1044, '2021-04-08', NULL),
(130, 1862, 1019, '2021-04-08', NULL),
(131, 1862, 1044, '2021-04-08', NULL),
(132, 1478, 1052, '2021-04-08', NULL),
(133, 1084, 1002, '2021-04-08', NULL),
(134, 1084, 1032, '2021-04-08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registar_log`
--

CREATE TABLE `registar_log` (
  `id` int(11) NOT NULL,
  `imeprezime_id` int(11) NOT NULL,
  `kategorijaliga_id` int(11) NOT NULL,
  `datum_od` date NOT NULL,
  `datum_do` date DEFAULT NULL,
  `dnevnik_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `registar_log`
--

INSERT INTO `registar_log` (`id`, `imeprezime_id`, `kategorijaliga_id`, `datum_od`, `datum_do`, `dnevnik_id`) VALUES
(1, 1494, 1005, '2021-04-07', NULL, 7),
(2, 1494, 1034, '2021-04-07', NULL, 7),
(3, 1494, 1063, '2021-04-07', NULL, 7),
(4, 1297, 1008, '2021-04-07', NULL, 17),
(5, 1297, 1031, '2021-04-07', NULL, 17),
(6, 1297, 1051, '2021-04-07', NULL, 17),
(7, 1297, 1065, '2021-04-07', NULL, 17),
(8, 1320, 1016, '2021-04-07', NULL, 18),
(9, 1320, 1042, '2021-04-07', NULL, 18),
(10, 1320, 1064, '2021-04-07', NULL, 18),
(11, 1203, 1002, '2021-04-07', NULL, 19),
(12, 1203, 1032, '2021-04-07', NULL, 19),
(13, 1203, 1051, '2021-04-07', NULL, 19),
(14, 1203, 1062, '2021-04-07', NULL, 19),
(15, 1301, 1020, '2021-04-07', NULL, 20),
(16, 1301, 1045, '2021-04-07', NULL, 20),
(17, 1301, 1054, '2021-04-07', NULL, 20),
(18, 1301, 1069, '2021-04-07', NULL, 20),
(19, 1393, 1003, '2021-04-07', NULL, 21),
(20, 1393, 1033, '2021-04-07', NULL, 21),
(21, 1393, 1052, '2021-04-07', NULL, 21),
(22, 1393, 1063, '2021-04-07', NULL, 21),
(23, 1501, 1013, '2021-04-07', NULL, 22),
(24, 1501, 1040, '2021-04-07', NULL, 22),
(25, 1501, 1052, '2021-04-07', NULL, 22),
(26, 1501, 1064, '2021-04-07', NULL, 22),
(27, 1459, 1001, '2021-04-07', NULL, 55),
(28, 1459, 1031, '2021-04-07', NULL, 55),
(29, 1459, 1051, '2021-04-07', NULL, 55),
(30, 1540, 1007, '2021-04-07', NULL, 56),
(31, 1540, 1036, '2021-04-07', NULL, 56),
(32, 1323, 1006, '2021-04-07', NULL, 57),
(33, 1323, 1035, '2021-04-07', NULL, 57),
(34, 1206, 1007, '2021-04-07', NULL, 58),
(35, 1206, 1036, '2021-04-07', NULL, 58),
(36, 1506, 1001, '2021-04-07', NULL, 59),
(37, 1506, 1031, '2021-04-07', NULL, 59),
(38, 1370, 1001, '2021-04-07', NULL, 60),
(39, 1370, 1036, '2021-04-07', NULL, 60),
(40, 1139, 1001, '2021-04-07', NULL, 61),
(41, 1139, 1031, '2021-04-07', NULL, 61),
(42, 1484, 1004, '2021-04-07', NULL, 62),
(43, 1484, 1033, '2021-04-07', NULL, 62),
(44, 1543, 1017, '2021-04-07', NULL, 64),
(45, 1543, 1043, '2021-04-07', NULL, 64),
(46, 1039, 1002, '2021-04-07', NULL, 69),
(47, 1039, 1032, '2021-04-07', NULL, 69),
(48, 1231, 1015, '2021-04-07', NULL, 70),
(49, 1231, 1041, '2021-04-07', NULL, 70),
(50, 1200, 1016, '2021-04-07', NULL, 71),
(51, 1200, 1042, '2021-04-07', NULL, 71),
(52, 1247, 1001, '2021-04-07', NULL, 72),
(53, 1247, 1031, '2021-04-07', NULL, 72),
(54, 1469, 1019, '2021-04-07', NULL, 73),
(55, 1469, 1044, '2021-04-07', NULL, 73),
(56, 1566, 1008, '2021-04-07', NULL, 74),
(57, 1566, 1031, '2021-04-07', NULL, 74),
(58, 1233, 1007, '2021-04-07', NULL, 76),
(59, 1233, 1036, '2021-04-07', NULL, 76),
(60, 1233, 1051, '2021-04-07', NULL, 76),
(61, 1478, 1016, '2021-04-07', NULL, 78),
(62, 1478, 1042, '2021-04-07', NULL, 78),
(63, 1370, 1061, '2021-04-07', NULL, 79),
(64, 1451, 1010, '2021-04-07', NULL, 80),
(65, 1451, 1038, '2021-04-07', NULL, 80),
(66, 1292, 1002, '2021-04-07', NULL, 81),
(67, 1292, 1032, '2021-04-07', NULL, 81),
(68, 1217, 1016, '2021-04-07', NULL, 82),
(69, 1217, 1042, '2021-04-07', NULL, 82),
(70, 1470, 1016, '2021-04-07', NULL, 83),
(71, 1470, 1042, '2021-04-07', NULL, 83),
(72, 1169, 1010, '2021-04-07', NULL, 84),
(73, 1169, 1038, '2021-04-07', NULL, 84),
(74, 1159, 1010, '2021-04-07', NULL, 85),
(75, 1159, 1038, '2021-04-07', NULL, 85),
(76, 1305, 1022, '2021-04-07', NULL, 86),
(77, 1305, 1046, '2021-04-07', NULL, 86),
(78, 1088, 1012, '2021-04-07', NULL, 87),
(79, 1088, 1039, '2021-04-07', NULL, 87),
(80, 1315, 1012, '2021-04-07', NULL, 88),
(81, 1315, 1039, '2021-04-07', NULL, 88),
(82, 1095, 1011, '2021-04-08', NULL, 89),
(83, 1095, 1038, '2021-04-08', NULL, 89),
(84, 1553, 1011, '2021-04-08', NULL, 90),
(85, 1553, 1038, '2021-04-08', NULL, 90),
(86, 1434, 1010, '2021-04-08', NULL, 91),
(87, 1434, 1038, '2021-04-08', NULL, 91),
(88, 1665, 1010, '2021-04-08', NULL, 92),
(89, 1665, 1038, '2021-04-08', NULL, 92),
(90, 1576, 1006, '2021-04-08', NULL, 93),
(91, 1576, 1035, '2021-04-08', NULL, 93),
(92, 1841, 1022, '2021-04-08', NULL, 133),
(93, 1841, 1046, '2021-04-08', NULL, 133),
(94, 1842, 1022, '2021-04-08', NULL, 134),
(95, 1842, 1046, '2021-04-08', NULL, 134),
(96, 1843, 1022, '2021-04-08', NULL, 135),
(97, 1843, 1046, '2021-04-08', NULL, 135),
(98, 1844, 1022, '2021-04-08', NULL, 136),
(99, 1844, 1046, '2021-04-08', NULL, 136),
(100, 1845, 1022, '2021-04-08', NULL, 137),
(101, 1845, 1046, '2021-04-08', NULL, 137),
(102, 1846, 1012, '2021-04-08', NULL, 138),
(103, 1846, 1039, '2021-04-08', NULL, 138),
(104, 1858, 1001, '2021-04-08', NULL, 139),
(105, 1858, 1031, '2021-04-08', NULL, 139),
(106, 1859, 1001, '2021-04-08', NULL, 140),
(107, 1859, 1031, '2021-04-08', NULL, 140),
(108, 1847, 1021, '2021-04-08', NULL, 142),
(109, 1847, 1045, '2021-04-08', NULL, 142),
(110, 1848, 1022, '2021-04-08', NULL, 143),
(111, 1848, 1046, '2021-04-08', NULL, 143),
(112, 1850, 1022, '2021-04-08', NULL, 144),
(113, 1850, 1046, '2021-04-08', NULL, 144),
(114, 1851, 1021, '2021-04-08', NULL, 145),
(115, 1851, 1045, '2021-04-08', NULL, 145),
(116, 1853, 1021, '2021-04-08', NULL, 146),
(117, 1853, 1045, '2021-04-08', NULL, 146),
(118, 1854, 1022, '2021-04-08', NULL, 147),
(119, 1854, 1046, '2021-04-08', NULL, 147),
(120, 1855, 1012, '2021-04-08', NULL, 148),
(121, 1855, 1039, '2021-04-08', NULL, 148),
(122, 1856, 1012, '2021-04-08', NULL, 149),
(123, 1856, 1039, '2021-04-08', NULL, 149),
(124, 1860, 1016, '2021-04-08', NULL, 150),
(125, 1860, 1042, '2021-04-08', NULL, 150),
(126, 1864, 1020, '2021-04-08', NULL, 151),
(127, 1864, 1045, '2021-04-08', NULL, 151),
(128, 1863, 1019, '2021-04-08', NULL, 152),
(129, 1863, 1044, '2021-04-08', NULL, 152),
(130, 1862, 1019, '2021-04-08', NULL, 153),
(131, 1862, 1044, '2021-04-08', NULL, 153),
(132, 1478, 1052, '2021-04-08', NULL, 155),
(133, 1084, 1002, '2021-04-08', NULL, 156),
(134, 1084, 1032, '2021-04-08', NULL, 156);

-- --------------------------------------------------------

--
-- Table structure for table `sintaksa`
--

CREATE TABLE `sintaksa` (
  `id` tinyint(4) NOT NULL,
  `oznaka` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `naziv` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `sintaksa`
--

INSERT INTO `sintaksa` (`id`, `oznaka`, `naziv`) VALUES
(1, 'hr', 'Hrvatski standard'),
(2, 'van de', 'Nizozemski prefix &quot;van de&quot;');

-- --------------------------------------------------------

--
-- Table structure for table `spol`
--

CREATE TABLE `spol` (
  `id` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `opis` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `spol`
--

INSERT INTO `spol` (`id`, `opis`) VALUES
('-', 'neodređeno'),
('M', 'muškarci'),
('Ž', 'žene');

-- --------------------------------------------------------

--
-- Table structure for table `vrsta_korisnika`
--

CREATE TABLE `vrsta_korisnika` (
  `id` int(11) NOT NULL,
  `naziv` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `oznaka` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `vrsta_korisnika`
--

INSERT INTO `vrsta_korisnika` (`id`, `naziv`, `oznaka`) VALUES
(314727413, 'superadmin', 'sa'),
(572321572, 'admin', 'ad'),
(846025583, 'voditelj', 'vo');

-- --------------------------------------------------------

--
-- Table structure for table `vrsta_lige`
--

CREATE TABLE `vrsta_lige` (
  `id` tinyint(4) NOT NULL,
  `naziv` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `oznaka` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `grana_id` tinyint(4) NOT NULL,
  `registracija` bit(1) NOT NULL,
  `aktivna` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `vrsta_lige`
--

INSERT INTO `vrsta_lige` (`id`, `naziv`, `oznaka`, `grana_id`, `registracija`, `aktivna`) VALUES
(11, 'Prvenstvo Hrvatske na dugim stazama', 'PH duge', 1, b'0', b'1'),
(12, 'Prvenstvo Hrvatske na srednjim stazama', 'PH srednje', 1, b'0', b'1'),
(13, 'Prvenstvo Hrvatske u sprintu', 'PH sprint', 1, b'0', b'1'),
(51, 'Kup Hrvatske', 'Kup HR', 1, b'1', b'1'),
(52, 'Sprint kup Hrvatske', 'Sprint kup HR', 1, b'1', b'1'),
(61, 'Kup Hrvatske u preciznoj orijentaciji', 'PreO kup HR', 2, b'1', b'1'),
(71, 'Kup Hrvatske u orijentaciji brdskim biciklima', 'MtbO kup HR', 3, b'1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `vrsta_logina`
--

CREATE TABLE `vrsta_logina` (
  `id` tinyint(4) NOT NULL,
  `oznaka` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `opis` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `vrsta_logina`
--

INSERT INTO `vrsta_logina` (`id`, `oznaka`, `opis`) VALUES
(0, 'impossible', 'ovo se ne smije dogoditi - dobar hash, a nema korisnika'),
(10, 'login_ok', 'uspješna prijava'),
(11, 'logout', 'odjava korisnika'),
(20, 'fail-user-pass-incomplete', 'neuspješna prijava - nedostaje korisnik ili lozinka'),
(21, 'fail-user-pass-bad', 'neuspješna prijava - neispravan par korisnik-lozinka'),
(22, 'fail-user-pass-captcha', 'neuspješna prijava - loša captcha'),
(30, 'pass-update-request', 'zahtjev za promjenu lozinke'),
(31, 'pass-update-sucess', 'uspješna promjena lozinke'),
(32, 'pass-upd-req-invalid-email', 'neuspješan zahtjev za promjenu lozinke - loša adresa e-pošte'),
(33, 'pass-upd-req-invalid-captcha', 'neuspješan zahtjev za promjenu lozinke - loša captcha'),
(34, 'pass-upd-req-sess-timeout', 'neuspješan zahtjev za promjenu lozinke - istekla sesija'),
(35, 'pass-upd-req-invalid-referer', 'neuspješan zahtjev za promjenu lozinke - neispravan referer'),
(40, 'pass-upd-hash-invalid-length', 'hash za promjenu lozinke - hash nema točno 80 znakova'),
(41, 'pass-upd-hash-invalid', 'hash za promjenu lozinke - ne postoji takav hash'),
(42, 'pass-upd-hash-used', 'hash za promjenu lozinke - postoji hash, ali je iskorišten'),
(43, 'pass-upd-hash-obsolete', 'hash za promjenu lozinke - hash je zastario, postoji noviji'),
(44, 'pass-upd-hash-timeout', 'hash za promjenu lozinke - hash je istekao'),
(45, 'pass-upd-hash-ok', 'hash za promjenu lozinke - hash je OK'),
(50, 'login-pass-upd-failure', 'neuspješan upis nove lozinke u bazu podataka'),
(51, 'login-pass-upd-poor-complexity', 'nedovoljna kompleksnost nove lozinke ili nedozvoljeni nizovi'),
(52, 'login-pass-upd-inv-pass-copy', 'ponovljena lozinka se razlikuje od nove lozinke'),
(53, 'login-pass-upd-pass-too-short', 'nova lozinka je prekratka'),
(54, 'login-pass-upd-invalid-captcha', 'neispravna captcha pri upisu nove lozinke'),
(55, 'login-pass-upd-incompl-request', 'nepotpuno upisana promjena lozinka'),
(60, 'pass-upd-open-update-form', 'otvara se forma za upis nove lozinke'),
(70, 'get-too-many-params', 'upisano je 2 ili više GET parametara'),
(71, 'get-invalid-param-name', 'u adresu stranice je upisan GET parametar koji nije \'id\''),
(80, 'operater-bad-user-agent', 'promijenjen user agent operatera'),
(81, 'operater-bad-session-id', 'promijenjen session id  operatera'),
(82, 'operater-bad-ip-address', 'promijenjena ip adresa operatera'),
(83, 'operater-timeout', 'istekla prijava operatera'),
(84, 'operater-bad-hash', 'loš hash operatera'),
(85, 'operater-hash-not-set', 'hash operatera nije postavljen'),
(90, 'login-access-denied-4-insert', 'pokušaj upisa u bazu podataka bez prijave'),
(91, 'login-access-denied-4-update', 'pokušaj promjene baze podataka bez prijave'),
(92, 'login-not-authorized-4-insert', 'korisnik nema potrebno ovlaštenje za upis podataka'),
(93, 'login-not-authorized-4-update', 'korisnik nema potrebno ovlaštenje za promjenu podataka');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_dnevnik`
-- (See below for the actual view)
--
CREATE TABLE `v_dnevnik` (
`id` int(11)
,`trenutak` datetime
,`korisnik_id` int(11)
,`iprezime` varchar(30)
,`aktivnost_id` tinyint(4)
,`objekt` varchar(20)
,`akcija` varchar(20)
,`opis` varchar(120)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_kategorija_liga`
-- (See below for the actual view)
--
CREATE TABLE `v_kategorija_liga` (
`id` int(11)
,`kategorija_id` smallint(6)
,`liga_id` smallint(6)
,`godina` smallint(6)
,`liga_rbr` tinyint(4)
,`vrstalige_oznaka` varchar(20)
,`grana_oznaka` varchar(4)
,`oznaka` varchar(20)
,`naziv` varchar(40)
,`spol` char(1)
,`min_dob` tinyint(4)
,`max_dob` tinyint(4)
,`granica` varchar(20)
,`dob_oznaka` varchar(10)
,`kategorija_rbr` tinyint(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_kategorija_registracija`
-- (See below for the actual view)
--
CREATE TABLE `v_kategorija_registracija` (
`vrstalige_id` tinyint(4)
,`vrstalige_oznaka` varchar(20)
,`liga_id` smallint(6)
,`kategorijaliga_id` int(11)
,`naj_dobna` bit(1)
,`kategorija_rbr` tinyint(4)
,`kategorija_id` smallint(6)
,`kategorija_oznaka` varchar(20)
,`spol` char(1)
,`min_dob` tinyint(4)
,`max_dob` tinyint(4)
,`dob_id` tinyint(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_klub`
-- (See below for the actual view)
--
CREATE TABLE `v_klub` (
`id` smallint(6)
,`naziv` varchar(30)
,`oib` varchar(11)
,`drzava` varchar(30)
,`drzava_id` tinyint(4)
,`eposta` varchar(40)
,`web` varchar(40)
,`aktivan_txt` varchar(2)
,`aktivan` tinyint(1)
,`klub_sort` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_korisnik`
-- (See below for the actual view)
--
CREATE TABLE `v_korisnik` (
`id` bigint(11)
,`ime` varchar(20)
,`prezime` varchar(30)
,`iprezime` varchar(30)
,`kor_ime` varchar(20)
,`lozinka` varchar(2)
,`eposta` varchar(40)
,`vrsta_kor` varchar(10)
,`klub` varchar(30)
,`aktivan_txt` varchar(2)
,`vrstakor_id` int(11)
,`aktivan` tinyint(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_korisnik_log`
-- (See below for the actual view)
--
CREATE TABLE `v_korisnik_log` (
`id` bigint(11)
,`dnevnik_id` int(11)
,`trenutak` datetime
,`operater` varchar(30)
,`ime` varchar(40)
,`prezime` varchar(30)
,`iprezime` varchar(30)
,`kor_ime` varchar(20)
,`lozinka` varchar(2)
,`eposta` varchar(40)
,`vrsta_kor` varchar(2)
,`klub` varchar(30)
,`aktivan_txt` varchar(2)
,`akcija` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_liga`
-- (See below for the actual view)
--
CREATE TABLE `v_liga` (
`id` smallint(6)
,`godina` smallint(6)
,`rbr` tinyint(4)
,`vrstalige_id` tinyint(4)
,`vrstalige_naziv` varchar(60)
,`vrstalige_oznaka` varchar(20)
,`grana_id` tinyint(4)
,`grana_oznaka` varchar(4)
,`grana_naziv` varchar(30)
,`registracija_txt` varchar(2)
,`registracija` bit(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_login`
-- (See below for the actual view)
--
CREATE TABLE `v_login` (
`id` int(11)
,`trenutak` datetime
,`ip_adresa` varchar(24)
,`korisnik_id` int(11)
,`iprezime` varchar(30)
,`kor_ime` varchar(20)
,`eposta` varchar(40)
,`vrstalogina_id` tinyint(4)
,`oznaka` varchar(30)
,`opis` varchar(60)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_natjecatelj`
-- (See below for the actual view)
--
CREATE TABLE `v_natjecatelj` (
`imeprezime_id` int(11)
,`ime` varchar(20)
,`prezime` varchar(30)
,`oib` char(11)
,`spol_id` char(1)
,`dob` int(5)
,`dat_rodjenja` date
,`reg_broj` int(11)
,`klub_id` smallint(6)
,`klub` varchar(30)
,`info` varchar(120)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_natjecatelj_edit`
-- (See below for the actual view)
--
CREATE TABLE `v_natjecatelj_edit` (
`imeprezime_id` int(11)
,`osoba_id` int(11)
,`rbr` tinyint(4)
,`ime` varchar(20)
,`prezime` varchar(30)
,`oib` char(11)
,`spol_id` char(1)
,`dat_rodjenja` date
,`dob` int(5)
,`reg_broj` int(11)
,`klub_id` smallint(6)
,`klub` varchar(30)
,`info` varchar(120)
,`sintaksa_id` tinyint(4)
,`identitet_id` tinyint(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_natjecatelj_log`
-- (See below for the actual view)
--
CREATE TABLE `v_natjecatelj_log` (
`dnevnik_id` int(11)
,`trenutak` datetime
,`osoba_id` int(11)
,`reg_broj` int(11)
,`oib` char(11)
,`spol_id` char(1)
,`dat_rodjenja` date
,`imeprezime_id` int(11)
,`ip_osoba_id` int(11)
,`rbr` tinyint(4)
,`ime` varchar(20)
,`prezime` varchar(30)
,`klub_id` smallint(6)
,`klub` varchar(30)
,`info` varchar(120)
,`sintaksa` varchar(10)
,`identitet` varchar(10)
,`akcija` varchar(20)
,`operater` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_natjecatelj_registar`
-- (See below for the actual view)
--
CREATE TABLE `v_natjecatelj_registar` (
`imeprezime_id` int(11)
,`ime` varchar(20)
,`prezime` varchar(30)
,`spol_id` char(1)
,`dob` int(5)
,`klub_id` smallint(6)
,`klub` varchar(30)
,`registarkup_id` int(11)
,`registarkup_kategorijaid` int(11)
,`registarkup_kategorija` varchar(20)
,`registarkup_datumod` date
,`registarspr_id` int(11)
,`registarspr_kategorijaid` int(11)
,`registarspr_kategorija` varchar(20)
,`registarspr_datumod` date
,`registarpre_id` int(11)
,`registarpre_kategorijaid` int(11)
,`registarpre_kategorija` varchar(20)
,`registarpre_datumod` date
,`registarmtb_id` int(11)
,`registarmtb_kategorijaid` int(11)
,`registarmtb_kategorija` varchar(20)
,`registarmtb_datumod` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_operater`
-- (See below for the actual view)
--
CREATE TABLE `v_operater` (
`operater_id` int(11)
,`iprezime` varchar(30)
,`kor_ime` varchar(20)
,`eposta` varchar(40)
,`klub_id` smallint(6)
,`vrsta_kor` varchar(10)
,`aktivan` datetime
,`ip_adresa` varchar(24)
,`login_hash` varchar(64)
,`session_id` varchar(40)
,`user_agent` varchar(300)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_registar`
-- (See below for the actual view)
--
CREATE TABLE `v_registar` (
`registar_id` int(11)
,`imeprezime_id` int(11)
,`liga_id` smallint(6)
,`kategorijaliga_id` int(11)
,`kategorija_id` smallint(6)
,`kategorija` varchar(20)
,`datum_od` date
,`datum_do` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_registracija`
-- (See below for the actual view)
--
CREATE TABLE `v_registracija` (
`imeprezime_id` int(11)
,`ime` varchar(20)
,`prezime` varchar(30)
,`oib` char(11)
,`spol_id` char(1)
,`dat_rodjenja` date
,`dob` int(5)
,`klub_id` smallint(6)
,`liga_id` smallint(6)
,`registar_id` int(11)
,`kategorijaliga_id` int(11)
,`kategorija` varchar(20)
,`datum_od` date
,`datum_do` date
);

-- --------------------------------------------------------

--
-- Structure for view `v_dnevnik`
--
DROP TABLE IF EXISTS `v_dnevnik`;

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_dnevnik`  AS  select `dnevnik`.`id` AS `id`,`dnevnik`.`trenutak` AS `trenutak`,`dnevnik`.`korisnik_id` AS `korisnik_id`,`korisnik`.`iprezime` AS `iprezime`,`dnevnik`.`aktivnost_id` AS `aktivnost_id`,`aktivnost`.`objekt` AS `objekt`,`aktivnost`.`akcija` AS `akcija`,`aktivnost`.`opis` AS `opis` from ((`dnevnik` left join `korisnik` on((`korisnik`.`id` = `dnevnik`.`korisnik_id`))) left join `aktivnost` on((`aktivnost`.`id` = `dnevnik`.`aktivnost_id`))) order by `dnevnik`.`id` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v_kategorija_liga`
--
DROP TABLE IF EXISTS `v_kategorija_liga`;

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_kategorija_liga`  AS  select `kategorija_liga`.`id` AS `id`,`kategorija_liga`.`kategorija_id` AS `kategorija_id`,`kategorija_liga`.`liga_id` AS `liga_id`,`liga`.`godina` AS `godina`,`liga`.`rbr` AS `liga_rbr`,`vrsta_lige`.`oznaka` AS `vrstalige_oznaka`,`grana`.`oznaka` AS `grana_oznaka`,`kategorija`.`oznaka` AS `oznaka`,`kategorija`.`naziv` AS `naziv`,`kategorija`.`spol` AS `spol`,`kategorija`.`min_dob` AS `min_dob`,`kategorija`.`max_dob` AS `max_dob`,`dob`.`granica` AS `granica`,`dob`.`oznaka` AS `dob_oznaka`,`kategorija_liga`.`rbr` AS `kategorija_rbr` from (((((`kategorija_liga` left join `kategorija` on((`kategorija`.`id` = `kategorija_liga`.`kategorija_id`))) left join `dob` on((`dob`.`id` = `kategorija`.`dob_id`))) left join `liga` on((`liga`.`id` = `kategorija_liga`.`liga_id`))) left join `vrsta_lige` on((`vrsta_lige`.`id` = `liga`.`vrstalige_id`))) left join `grana` on((`grana`.`id` = `vrsta_lige`.`grana_id`))) order by `liga`.`godina` desc,`liga`.`rbr`,`kategorija_liga`.`rbr` ;

-- --------------------------------------------------------

--
-- Structure for view `v_kategorija_registracija`
--
DROP TABLE IF EXISTS `v_kategorija_registracija`;

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_kategorija_registracija`  AS  select `vrsta_lige`.`id` AS `vrstalige_id`,`vrsta_lige`.`oznaka` AS `vrstalige_oznaka`,`liga`.`id` AS `liga_id`,`kategorija_liga`.`id` AS `kategorijaliga_id`,`kategorija_liga`.`naj_dobna` AS `naj_dobna`,`kategorija_liga`.`rbr` AS `kategorija_rbr`,`kategorija`.`id` AS `kategorija_id`,`kategorija`.`oznaka` AS `kategorija_oznaka`,`kategorija`.`spol` AS `spol`,`kategorija`.`min_dob` AS `min_dob`,`kategorija`.`max_dob` AS `max_dob`,`kategorija`.`dob_id` AS `dob_id` from (((`vrsta_lige` left join `liga` on((`liga`.`vrstalige_id` = `vrsta_lige`.`id`))) left join `kategorija_liga` on((`kategorija_liga`.`liga_id` = `liga`.`id`))) left join `kategorija` on((`kategorija`.`id` = `kategorija_liga`.`kategorija_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_klub`
--
DROP TABLE IF EXISTS `v_klub`;

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_klub`  AS  select `klub`.`id` AS `id`,`klub`.`naziv` AS `naziv`,ifnull(`klub`.`oib`,'-') AS `oib`,`drzava`.`naziv` AS `drzava`,`drzava`.`id` AS `drzava_id`,ifnull(`klub`.`eposta`,'-') AS `eposta`,ifnull(`klub`.`web`,'-') AS `web`,(case when (`klub`.`aktivan` = 0) then '-' else 'da' end) AS `aktivan_txt`,`klub`.`aktivan` AS `aktivan`,(case when (`drzava`.`id` = 1) then 'Aaa' else `klub`.`naziv` end) AS `klub_sort` from (`klub` left join `drzava` on((`drzava`.`id` = `klub`.`drzava_id`))) order by `klub`.`aktivan` desc,(case when (`drzava`.`id` = 1) then 'Aaa' else `klub`.`naziv` end),`klub`.`naziv` ;

-- --------------------------------------------------------

--
-- Structure for view `v_korisnik`
--
DROP TABLE IF EXISTS `v_korisnik`;

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_korisnik`  AS  select (`korisnik`.`id` % 10000) AS `id`,`korisnik`.`ime` AS `ime`,`korisnik`.`prezime` AS `prezime`,`korisnik`.`iprezime` AS `iprezime`,`korisnik`.`kor_ime` AS `kor_ime`,(case when (`korisnik`.`lozinka` = 'n/a') then '-' else 'da' end) AS `lozinka`,`korisnik`.`eposta` AS `eposta`,`vrsta_korisnika`.`naziv` AS `vrsta_kor`,ifnull(`klub`.`naziv`,'-') AS `klub`,(case when (`korisnik`.`aktivan` = 0) then '-' else 'da' end) AS `aktivan_txt`,`korisnik`.`vrstakor_id` AS `vrstakor_id`,`korisnik`.`aktivan` AS `aktivan` from ((`korisnik` left join `vrsta_korisnika` on((`vrsta_korisnika`.`id` = `korisnik`.`vrstakor_id`))) left join `klub` on((`klub`.`id` = `korisnik`.`klub_id`))) order by `korisnik`.`aktivan` desc,`korisnik`.`vrstakor_id`,`korisnik`.`prezime` ;

-- --------------------------------------------------------

--
-- Structure for view `v_korisnik_log`
--
DROP TABLE IF EXISTS `v_korisnik_log`;

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_korisnik_log`  AS  select (`korisnik_log`.`id` % 10000) AS `id`,`dnevnik`.`id` AS `dnevnik_id`,`dnevnik`.`trenutak` AS `trenutak`,`korisnik`.`iprezime` AS `operater`,`korisnik_log`.`ime` AS `ime`,`korisnik_log`.`prezime` AS `prezime`,`korisnik_log`.`iprezime` AS `iprezime`,`korisnik_log`.`kor_ime` AS `kor_ime`,(case when (`korisnik_log`.`lozinka` = 'n/a') then '-' else 'da' end) AS `lozinka`,`korisnik_log`.`eposta` AS `eposta`,`vrsta_korisnika`.`oznaka` AS `vrsta_kor`,ifnull(`klub`.`naziv`,'-') AS `klub`,(case when (`korisnik_log`.`aktivan` = 0) then '-' else 'da' end) AS `aktivan_txt`,`aktivnost`.`akcija` AS `akcija` from (((((`korisnik_log` left join `vrsta_korisnika` on((`vrsta_korisnika`.`id` = `korisnik_log`.`vrstakor_id`))) left join `klub` on((`klub`.`id` = `korisnik_log`.`klub_id`))) left join `dnevnik` on((`dnevnik`.`id` = `korisnik_log`.`dnevnik_id`))) left join `korisnik` on((`korisnik`.`id` = `dnevnik`.`korisnik_id`))) left join `aktivnost` on((`aktivnost`.`id` = `dnevnik`.`aktivnost_id`))) order by `dnevnik`.`id` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v_liga`
--
DROP TABLE IF EXISTS `v_liga`;

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_liga`  AS  select `liga`.`id` AS `id`,`liga`.`godina` AS `godina`,`liga`.`rbr` AS `rbr`,`liga`.`vrstalige_id` AS `vrstalige_id`,`vrsta_lige`.`naziv` AS `vrstalige_naziv`,`vrsta_lige`.`oznaka` AS `vrstalige_oznaka`,`vrsta_lige`.`grana_id` AS `grana_id`,`grana`.`oznaka` AS `grana_oznaka`,`grana`.`naziv` AS `grana_naziv`,(case when (`vrsta_lige`.`registracija` = 0) then '-' else 'da' end) AS `registracija_txt`,`vrsta_lige`.`registracija` AS `registracija` from ((`liga` left join `vrsta_lige` on((`vrsta_lige`.`id` = `liga`.`vrstalige_id`))) left join `grana` on((`grana`.`id` = `vrsta_lige`.`grana_id`))) order by `liga`.`godina` desc,`liga`.`rbr` ;

-- --------------------------------------------------------

--
-- Structure for view `v_login`
--
DROP TABLE IF EXISTS `v_login`;

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_login`  AS  select `login`.`id` AS `id`,`login`.`trenutak` AS `trenutak`,`login`.`ip_adresa` AS `ip_adresa`,`login`.`korisnik_id` AS `korisnik_id`,`korisnik`.`iprezime` AS `iprezime`,`login`.`kor_ime` AS `kor_ime`,`login`.`eposta` AS `eposta`,`login`.`vrstalogina_id` AS `vrstalogina_id`,`vrsta_logina`.`oznaka` AS `oznaka`,`vrsta_logina`.`opis` AS `opis` from ((`login` left join `korisnik` on((`korisnik`.`id` = `login`.`korisnik_id`))) left join `vrsta_logina` on((`vrsta_logina`.`id` = `login`.`vrstalogina_id`))) order by `login`.`id` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v_natjecatelj`
--
DROP TABLE IF EXISTS `v_natjecatelj`;

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_natjecatelj`  AS  select `imeprezime`.`id` AS `imeprezime_id`,`imeprezime`.`ime` AS `ime`,`imeprezime`.`prezime` AS `prezime`,`osoba`.`oib` AS `oib`,`osoba`.`spol_id` AS `spol_id`,(year(curdate()) - year(`osoba`.`dat_rodjenja`)) AS `dob`,`osoba`.`dat_rodjenja` AS `dat_rodjenja`,`osoba`.`reg_broj` AS `reg_broj`,`imeprezime`.`klub_id` AS `klub_id`,`klub`.`naziv` AS `klub`,`imeprezime`.`info` AS `info` from ((`imeprezime` left join `osoba` on((`osoba`.`id` = `imeprezime`.`osoba_id`))) left join `klub` on((`klub`.`id` = `imeprezime`.`klub_id`))) where (`imeprezime`.`aktivno` = 1) order by `klub`.`naziv`,`imeprezime`.`prezime` ;

-- --------------------------------------------------------

--
-- Structure for view `v_natjecatelj_edit`
--
DROP TABLE IF EXISTS `v_natjecatelj_edit`;

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_natjecatelj_edit`  AS  select `imeprezime`.`id` AS `imeprezime_id`,`imeprezime`.`osoba_id` AS `osoba_id`,`imeprezime`.`rbr` AS `rbr`,`imeprezime`.`ime` AS `ime`,`imeprezime`.`prezime` AS `prezime`,`osoba`.`oib` AS `oib`,`osoba`.`spol_id` AS `spol_id`,`osoba`.`dat_rodjenja` AS `dat_rodjenja`,(year(curdate()) - year(`osoba`.`dat_rodjenja`)) AS `dob`,`osoba`.`reg_broj` AS `reg_broj`,`imeprezime`.`klub_id` AS `klub_id`,`klub`.`naziv` AS `klub`,`imeprezime`.`info` AS `info`,`imeprezime`.`sintaksa_id` AS `sintaksa_id`,`imeprezime`.`identitet_id` AS `identitet_id` from ((`imeprezime` left join `osoba` on((`osoba`.`id` = `imeprezime`.`osoba_id`))) left join `klub` on((`klub`.`id` = `imeprezime`.`klub_id`))) where (`imeprezime`.`aktivno` = 1) order by `klub`.`naziv`,`imeprezime`.`prezime` ;

-- --------------------------------------------------------

--
-- Structure for view `v_natjecatelj_log`
--
DROP TABLE IF EXISTS `v_natjecatelj_log`;

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_natjecatelj_log`  AS  select `dnevnik`.`id` AS `dnevnik_id`,`dnevnik`.`trenutak` AS `trenutak`,`osoba_log`.`id` AS `osoba_id`,`osoba_log`.`reg_broj` AS `reg_broj`,`osoba_log`.`oib` AS `oib`,`osoba_log`.`spol_id` AS `spol_id`,`osoba_log`.`dat_rodjenja` AS `dat_rodjenja`,`imeprezime`.`id` AS `imeprezime_id`,`imeprezime`.`osoba_id` AS `ip_osoba_id`,`imeprezime`.`rbr` AS `rbr`,`imeprezime`.`ime` AS `ime`,`imeprezime`.`prezime` AS `prezime`,`imeprezime`.`klub_id` AS `klub_id`,`klub`.`naziv` AS `klub`,`imeprezime`.`info` AS `info`,`sintaksa`.`oznaka` AS `sintaksa`,`identitet`.`oznaka` AS `identitet`,`aktivnost`.`akcija` AS `akcija`,`korisnik`.`iprezime` AS `operater` from (((((((`dnevnik` left join `osoba_log` on((`osoba_log`.`dnevnik_id` = `dnevnik`.`id`))) left join `imeprezime` on((`imeprezime`.`dnevnik_id` = `dnevnik`.`id`))) left join `klub` on((`klub`.`id` = `imeprezime`.`klub_id`))) left join `sintaksa` on((`sintaksa`.`id` = `imeprezime`.`sintaksa_id`))) left join `identitet` on((`identitet`.`id` = `imeprezime`.`identitet_id`))) left join `korisnik` on((`korisnik`.`id` = `dnevnik`.`korisnik_id`))) left join `aktivnost` on((`aktivnost`.`id` = `dnevnik`.`aktivnost_id`))) where `dnevnik`.`id` in (select `so`.`dnevnik_id` from `osoba_log` `so` where (`so`.`id` = ifnull(`osoba_log`.`id`,`imeprezime`.`osoba_id`)) union select `si`.`dnevnik_id` from `imeprezime` `si` where (`si`.`osoba_id` = ifnull(`osoba_log`.`id`,`imeprezime`.`osoba_id`))) order by `dnevnik`.`trenutak` ;

-- --------------------------------------------------------

--
-- Structure for view `v_natjecatelj_registar`
--
DROP TABLE IF EXISTS `v_natjecatelj_registar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_natjecatelj_registar`  AS  select `imeprezime`.`id` AS `imeprezime_id`,`imeprezime`.`ime` AS `ime`,`imeprezime`.`prezime` AS `prezime`,`osoba`.`spol_id` AS `spol_id`,(year(curdate()) - year(`osoba`.`dat_rodjenja`)) AS `dob`,`imeprezime`.`klub_id` AS `klub_id`,`klub`.`naziv` AS `klub`,`registar_kup`.`registar_id` AS `registarkup_id`,`registar_kup`.`kategorijaliga_id` AS `registarkup_kategorijaid`,`registar_kup`.`kategorija` AS `registarkup_kategorija`,`registar_kup`.`datum_od` AS `registarkup_datumod`,`registar_spr`.`registar_id` AS `registarspr_id`,`registar_spr`.`kategorijaliga_id` AS `registarspr_kategorijaid`,`registar_spr`.`kategorija` AS `registarspr_kategorija`,`registar_spr`.`datum_od` AS `registarspr_datumod`,`registar_pre`.`registar_id` AS `registarpre_id`,`registar_pre`.`kategorijaliga_id` AS `registarpre_kategorijaid`,`registar_pre`.`kategorija` AS `registarpre_kategorija`,`registar_pre`.`datum_od` AS `registarpre_datumod`,`registar_mtb`.`registar_id` AS `registarmtb_id`,`registar_mtb`.`kategorijaliga_id` AS `registarmtb_kategorijaid`,`registar_mtb`.`kategorija` AS `registarmtb_kategorija`,`registar_mtb`.`datum_od` AS `registarmtb_datumod` from ((((((`imeprezime` left join `osoba` on((`osoba`.`id` = `imeprezime`.`osoba_id`))) left join `klub` on((`klub`.`id` = `imeprezime`.`klub_id`))) left join `v_registar` `registar_kup` on(((`registar_kup`.`imeprezime_id` = `imeprezime`.`id`) and (`registar_kup`.`liga_id` = 101) and isnull(`registar_kup`.`datum_do`)))) left join `v_registar` `registar_spr` on(((`registar_spr`.`imeprezime_id` = `imeprezime`.`id`) and (`registar_spr`.`liga_id` = 102) and isnull(`registar_spr`.`datum_do`)))) left join `v_registar` `registar_pre` on(((`registar_pre`.`imeprezime_id` = `imeprezime`.`id`) and (`registar_pre`.`liga_id` = 103) and isnull(`registar_pre`.`datum_do`)))) left join `v_registar` `registar_mtb` on(((`registar_mtb`.`imeprezime_id` = `imeprezime`.`id`) and (`registar_mtb`.`liga_id` = 104) and isnull(`registar_mtb`.`datum_do`)))) where (`imeprezime`.`aktivno` = 1) order by `klub`.`naziv`,`imeprezime`.`prezime`,`imeprezime`.`ime` ;

-- --------------------------------------------------------

--
-- Structure for view `v_operater`
--
DROP TABLE IF EXISTS `v_operater`;

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_operater`  AS  select `korisnik`.`id` AS `operater_id`,`korisnik`.`iprezime` AS `iprezime`,`korisnik`.`kor_ime` AS `kor_ime`,`korisnik`.`eposta` AS `eposta`,`korisnik`.`klub_id` AS `klub_id`,`vrsta_korisnika`.`naziv` AS `vrsta_kor`,`korisnik_session`.`aktivan` AS `aktivan`,`korisnik_session`.`ip_adresa` AS `ip_adresa`,`korisnik_session`.`login_hash` AS `login_hash`,`korisnik_session`.`session_id` AS `session_id`,`korisnik_session`.`user_agent` AS `user_agent` from ((`korisnik_session` left join `korisnik` on((`korisnik`.`id` = `korisnik_session`.`korisnik_id`))) left join `vrsta_korisnika` on((`vrsta_korisnika`.`id` = `korisnik`.`vrstakor_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_registar`
--
DROP TABLE IF EXISTS `v_registar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_registar`  AS  select `registar`.`id` AS `registar_id`,`registar`.`imeprezime_id` AS `imeprezime_id`,`kategorija_liga`.`liga_id` AS `liga_id`,`registar`.`kategorijaliga_id` AS `kategorijaliga_id`,`kategorija_liga`.`kategorija_id` AS `kategorija_id`,`kategorija`.`oznaka` AS `kategorija`,`registar`.`datum_od` AS `datum_od`,`registar`.`datum_do` AS `datum_do` from ((`registar` left join `kategorija_liga` on((`kategorija_liga`.`id` = `registar`.`kategorijaliga_id`))) left join `kategorija` on((`kategorija`.`id` = `kategorija_liga`.`kategorija_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_registracija`
--
DROP TABLE IF EXISTS `v_registracija`;

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_registracija`  AS  select `imeprezime`.`id` AS `imeprezime_id`,`imeprezime`.`ime` AS `ime`,`imeprezime`.`prezime` AS `prezime`,`osoba`.`oib` AS `oib`,`osoba`.`spol_id` AS `spol_id`,`osoba`.`dat_rodjenja` AS `dat_rodjenja`,(year(curdate()) - year(`osoba`.`dat_rodjenja`)) AS `dob`,`imeprezime`.`klub_id` AS `klub_id`,`v_registar`.`liga_id` AS `liga_id`,`v_registar`.`registar_id` AS `registar_id`,`v_registar`.`kategorijaliga_id` AS `kategorijaliga_id`,`v_registar`.`kategorija` AS `kategorija`,`v_registar`.`datum_od` AS `datum_od`,`v_registar`.`datum_do` AS `datum_do` from (((`imeprezime` left join `osoba` on((`osoba`.`id` = `imeprezime`.`osoba_id`))) left join `klub` on((`klub`.`id` = `imeprezime`.`klub_id`))) left join `v_registar` on((`v_registar`.`imeprezime_id` = `imeprezime`.`id`))) where (`imeprezime`.`aktivno` = 1) order by `klub`.`naziv`,`imeprezime`.`prezime`,`imeprezime`.`ime` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktivnost`
--
ALTER TABLE `aktivnost`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_aktivnost_objekt_akcija` (`objekt`,`akcija`) USING BTREE;

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_captcha_pitanje` (`pitanje`) USING BTREE;

--
-- Indexes for table `dnevnik`
--
ALTER TABLE `dnevnik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_dnevnik_korisnik` (`korisnik_id`) USING BTREE,
  ADD KEY `i_dnevnik_aktivnost` (`aktivnost_id`) USING BTREE;

--
-- Indexes for table `dob`
--
ALTER TABLE `dob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drzava`
--
ALTER TABLE `drzava`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_drzava_naziv` (`naziv`) USING BTREE,
  ADD UNIQUE KEY `u_drzava_oznaka` (`oznaka`) USING BTREE;

--
-- Indexes for table `grana`
--
ALTER TABLE `grana`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identitet`
--
ALTER TABLE `identitet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imeprezime`
--
ALTER TABLE `imeprezime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_imeprezime_osoba` (`osoba_id`),
  ADD KEY `i_imeprezime_sintaksa` (`sintaksa_id`),
  ADD KEY `i_imeprezime_identitet` (`identitet_id`) USING BTREE,
  ADD KEY `i_imeprezime_klub` (`klub_id`) USING BTREE,
  ADD KEY `i_imeprezime_dnevnik` (`dnevnik_id`) USING BTREE;

--
-- Indexes for table `kategorija`
--
ALTER TABLE `kategorija`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_kategorija_dob` (`dob_id`) USING BTREE,
  ADD KEY `i_kategorija_spol` (`spol`) USING BTREE,
  ADD KEY `i_kategorija_grana` (`grana_id`) USING BTREE;

--
-- Indexes for table `kategorija_liga`
--
ALTER TABLE `kategorija_liga`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_kategorijaliga_kategorija_liga` (`kategorija_id`,`liga_id`) USING BTREE,
  ADD KEY `i_kategorijaliga_kategorija` (`kategorija_id`) USING BTREE,
  ADD KEY `i_kategorijaliga_liga` (`liga_id`) USING BTREE;

--
-- Indexes for table `klub`
--
ALTER TABLE `klub`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_klub_naziv` (`naziv`),
  ADD UNIQUE KEY `u_klub_oib` (`oib`),
  ADD KEY `i_klub_drzava` (`drzava_id`) USING BTREE;

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_korisnik_iprezime` (`iprezime`) USING BTREE,
  ADD UNIQUE KEY `u_korisnik_eposta` (`eposta`) USING BTREE,
  ADD UNIQUE KEY `u_korisnik_ime_prezime` (`ime`,`prezime`) USING BTREE,
  ADD UNIQUE KEY `u_korisnik_korime` (`kor_ime`) USING BTREE,
  ADD KEY `i_korisnik_vrstakor` (`vrstakor_id`) USING BTREE,
  ADD KEY `i_korisnik_klub` (`klub_id`) USING BTREE;

--
-- Indexes for table `korisnik_hash`
--
ALTER TABLE `korisnik_hash`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_korisnikhash_korisnik` (`korisnik_id`) USING BTREE;

--
-- Indexes for table `korisnik_log`
--
ALTER TABLE `korisnik_log`
  ADD KEY `i_korisniklog_dnevnik` (`dnevnik_id`);

--
-- Indexes for table `korisnik_session`
--
ALTER TABLE `korisnik_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_korisniksession_korisnik` (`korisnik_id`) USING BTREE;

--
-- Indexes for table `liga`
--
ALTER TABLE `liga`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_liga_godina_rbr` (`godina`,`rbr`) USING BTREE,
  ADD UNIQUE KEY `u_liga_vrstalige_godina` (`vrstalige_id`,`godina`) USING BTREE,
  ADD KEY `i_liga_vrstalige` (`vrstalige_id`) USING BTREE;

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_login_korisnik` (`korisnik_id`) USING BTREE,
  ADD KEY `i_login_vrstalogina` (`vrstalogina_id`) USING BTREE;

--
-- Indexes for table `osoba`
--
ALTER TABLE `osoba`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_osoba_oib` (`oib`) USING BTREE,
  ADD UNIQUE KEY `u_osoba_regbroj` (`reg_broj`) USING BTREE,
  ADD KEY `i_osoba_spol` (`spol_id`) USING BTREE;

--
-- Indexes for table `osoba_log`
--
ALTER TABLE `osoba_log`
  ADD KEY `i_id` (`id`) USING BTREE,
  ADD KEY `i_osobalog_dnevnik` (`dnevnik_id`) USING BTREE;

--
-- Indexes for table `registar`
--
ALTER TABLE `registar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_registar_imeprezime` (`imeprezime_id`) USING BTREE,
  ADD KEY `i_registar_kategorijaliga` (`kategorijaliga_id`) USING BTREE;

--
-- Indexes for table `registar_log`
--
ALTER TABLE `registar_log`
  ADD KEY `i_imeprezime` (`imeprezime_id`) USING BTREE,
  ADD KEY `i_registarlog_dnevnik` (`dnevnik_id`) USING BTREE;

--
-- Indexes for table `sintaksa`
--
ALTER TABLE `sintaksa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spol`
--
ALTER TABLE `spol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vrsta_korisnika`
--
ALTER TABLE `vrsta_korisnika`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vrsta_lige`
--
ALTER TABLE `vrsta_lige`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_vrstalige_grana_naziv` (`grana_id`,`naziv`) USING BTREE,
  ADD UNIQUE KEY `u_vrstalige_grana_oznaka` (`grana_id`,`oznaka`) USING BTREE,
  ADD KEY `i_vrstalige_grana` (`grana_id`) USING BTREE;

--
-- Indexes for table `vrsta_logina`
--
ALTER TABLE `vrsta_logina`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktivnost`
--
ALTER TABLE `aktivnost`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `dnevnik`
--
ALTER TABLE `dnevnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `drzava`
--
ALTER TABLE `drzava`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `identitet`
--
ALTER TABLE `identitet`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `imeprezime`
--
ALTER TABLE `imeprezime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1872;

--
-- AUTO_INCREMENT for table `kategorija`
--
ALTER TABLE `kategorija`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT for table `kategorija_liga`
--
ALTER TABLE `kategorija_liga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1071;

--
-- AUTO_INCREMENT for table `klub`
--
ALTER TABLE `klub`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `korisnik_hash`
--
ALTER TABLE `korisnik_hash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `korisnik_session`
--
ALTER TABLE `korisnik_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `liga`
--
ALTER TABLE `liga`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `osoba`
--
ALTER TABLE `osoba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1871;

--
-- AUTO_INCREMENT for table `registar`
--
ALTER TABLE `registar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `sintaksa`
--
ALTER TABLE `sintaksa`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vrsta_lige`
--
ALTER TABLE `vrsta_lige`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dnevnik`
--
ALTER TABLE `dnevnik`
  ADD CONSTRAINT `r_dnevnik_aktivnost` FOREIGN KEY (`aktivnost_id`) REFERENCES `aktivnost` (`id`),
  ADD CONSTRAINT `r_dnevnik_korisnik` FOREIGN KEY (`korisnik_id`) REFERENCES `korisnik` (`id`);

--
-- Constraints for table `imeprezime`
--
ALTER TABLE `imeprezime`
  ADD CONSTRAINT `r_imeprezime_dnevnik` FOREIGN KEY (`dnevnik_id`) REFERENCES `dnevnik` (`id`),
  ADD CONSTRAINT `r_imeprezime_identitet` FOREIGN KEY (`identitet_id`) REFERENCES `identitet` (`id`),
  ADD CONSTRAINT `r_imeprezime_klub` FOREIGN KEY (`klub_id`) REFERENCES `klub` (`id`),
  ADD CONSTRAINT `r_imeprezime_osoba` FOREIGN KEY (`osoba_id`) REFERENCES `osoba` (`id`),
  ADD CONSTRAINT `r_imeprezime_sintaksa` FOREIGN KEY (`sintaksa_id`) REFERENCES `sintaksa` (`id`);

--
-- Constraints for table `kategorija`
--
ALTER TABLE `kategorija`
  ADD CONSTRAINT `r_kategorija_dob` FOREIGN KEY (`dob_id`) REFERENCES `dob` (`id`),
  ADD CONSTRAINT `r_kategorija_grana` FOREIGN KEY (`grana_id`) REFERENCES `grana` (`id`),
  ADD CONSTRAINT `r_kategorija_spol` FOREIGN KEY (`spol`) REFERENCES `spol` (`id`);

--
-- Constraints for table `kategorija_liga`
--
ALTER TABLE `kategorija_liga`
  ADD CONSTRAINT `r_kategorijaliga_kategorija` FOREIGN KEY (`kategorija_id`) REFERENCES `kategorija` (`id`),
  ADD CONSTRAINT `r_kategorijaliga_liga` FOREIGN KEY (`liga_id`) REFERENCES `liga` (`id`);

--
-- Constraints for table `klub`
--
ALTER TABLE `klub`
  ADD CONSTRAINT `r_klub_drzava` FOREIGN KEY (`drzava_id`) REFERENCES `drzava` (`id`);

--
-- Constraints for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD CONSTRAINT `r_korisnik_klub` FOREIGN KEY (`klub_id`) REFERENCES `klub` (`id`),
  ADD CONSTRAINT `r_korisnik_vrstakor` FOREIGN KEY (`vrstakor_id`) REFERENCES `vrsta_korisnika` (`id`);

--
-- Constraints for table `korisnik_hash`
--
ALTER TABLE `korisnik_hash`
  ADD CONSTRAINT `r_korisnikhash_korisnik` FOREIGN KEY (`korisnik_id`) REFERENCES `korisnik` (`id`);

--
-- Constraints for table `korisnik_log`
--
ALTER TABLE `korisnik_log`
  ADD CONSTRAINT `r_korisniklog_dnevnik` FOREIGN KEY (`dnevnik_id`) REFERENCES `dnevnik` (`id`);

--
-- Constraints for table `korisnik_session`
--
ALTER TABLE `korisnik_session`
  ADD CONSTRAINT `r_korisniksession_korisnik` FOREIGN KEY (`korisnik_id`) REFERENCES `korisnik` (`id`);

--
-- Constraints for table `liga`
--
ALTER TABLE `liga`
  ADD CONSTRAINT `r_liga_vrstalige` FOREIGN KEY (`vrstalige_id`) REFERENCES `vrsta_lige` (`id`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `r_login_korisnik` FOREIGN KEY (`korisnik_id`) REFERENCES `korisnik` (`id`),
  ADD CONSTRAINT `r_login_vrstalogina` FOREIGN KEY (`vrstalogina_id`) REFERENCES `vrsta_logina` (`id`);

--
-- Constraints for table `osoba`
--
ALTER TABLE `osoba`
  ADD CONSTRAINT `r_osoba_spol` FOREIGN KEY (`spol_id`) REFERENCES `spol` (`id`);

--
-- Constraints for table `osoba_log`
--
ALTER TABLE `osoba_log`
  ADD CONSTRAINT `r_osobalog_dnevnik` FOREIGN KEY (`dnevnik_id`) REFERENCES `dnevnik` (`id`);

--
-- Constraints for table `registar`
--
ALTER TABLE `registar`
  ADD CONSTRAINT `r_registar_imeprezime` FOREIGN KEY (`imeprezime_id`) REFERENCES `imeprezime` (`id`),
  ADD CONSTRAINT `r_registar_kategorijaliga` FOREIGN KEY (`kategorijaliga_id`) REFERENCES `kategorija_liga` (`id`);

--
-- Constraints for table `registar_log`
--
ALTER TABLE `registar_log`
  ADD CONSTRAINT `r_registarlog_dnevnik` FOREIGN KEY (`dnevnik_id`) REFERENCES `dnevnik` (`id`);

--
-- Constraints for table `vrsta_lige`
--
ALTER TABLE `vrsta_lige`
  ADD CONSTRAINT `r_vrstalige_grana` FOREIGN KEY (`grana_id`) REFERENCES `grana` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
