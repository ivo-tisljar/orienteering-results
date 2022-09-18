-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2021 at 09:59 AM
-- Server version: 5.7.33-cll-lve
-- PHP Version: 7.3.6

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
  `id` int(11) NOT NULL,
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
(14, 'klub', 'registracija', 'registriranje kluba za godinu');

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `id` int(11) NOT NULL,
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
  `aktivnost_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dnevnik`
--

INSERT INTO `dnevnik` (`id`, `trenutak`, `korisnik_id`, `aktivnost_id`) VALUES
(11, '2021-02-26 00:16:12', 625292874, 7),
(12, '2021-02-28 12:06:45', 625292874, 7),
(13, '2021-02-28 14:09:26', 625292874, 7),
(14, '2021-02-28 14:23:10', 625292874, 7),
(15, '2021-02-28 21:32:09', 625292874, 7),
(16, '2021-03-01 17:00:49', 625292874, 7),
(17, '2021-03-01 17:03:51', 625292874, 7),
(18, '2021-03-01 17:12:53', 625292874, 7),
(19, '2021-03-01 17:52:33', 625292874, 7),
(20, '2021-03-01 18:02:03', 625292874, 7),
(21, '2021-03-01 18:04:14', 625292874, 7),
(22, '2021-03-01 18:08:44', 625292874, 7),
(23, '2021-03-01 18:18:25', 625292874, 7),
(24, '2021-03-01 18:32:51', 625292874, 7),
(25, '2021-03-01 18:41:58', 625292874, 7),
(26, '2021-03-01 18:48:35', 625292874, 7),
(27, '2021-03-01 20:00:39', 625292874, 7),
(28, '2021-03-01 20:02:45', 625292874, 7),
(29, '2021-03-01 20:05:13', 625292874, 7),
(30, '2021-03-01 21:18:06', 625292874, 7),
(31, '2021-03-01 21:27:31', 625292874, 7),
(32, '2021-03-01 22:07:49', 625292874, 7),
(33, '2021-03-14 15:47:29', 625292874, 7),
(34, '2021-03-17 20:21:00', 625292874, 2),
(35, '2021-03-17 20:21:54', 625292874, 2),
(36, '2021-03-17 20:22:58', 625292874, 2),
(37, '2021-03-17 20:28:24', 268912300, 7),
(38, '2021-03-17 20:53:07', 625292874, 2),
(39, '2021-03-17 21:00:58', 880781626, 7),
(40, '2021-03-17 21:03:09', 268912300, 3),
(41, '2021-03-17 21:44:21', 625292874, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dob`
--

CREATE TABLE `dob` (
  `id` tinyint(4) NOT NULL,
  `naziv` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `granica` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `oznaka` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dob`
--

INSERT INTO `dob` (`id`, `naziv`, `granica`, `oznaka`) VALUES
(1, 'seniori/ke', 'slobodno', '-'),
(2, 'juniori/ke', 'gornja', 'max'),
(3, 'veterani/ke', 'donja', 'min');

-- --------------------------------------------------------

--
-- Table structure for table `drzava`
--

CREATE TABLE `drzava` (
  `id` int(11) NOT NULL,
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
  `id` int(11) NOT NULL,
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
-- Table structure for table `imeprezime`
--

CREATE TABLE `imeprezime` (
  `id` int(11) NOT NULL,
  `osoba_id` int(11) DEFAULT NULL,
  `rbr` tinyint(4) NOT NULL,
  `ime` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `prezime` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `klub_id` int(11) DEFAULT NULL,
  `aktivno` bit(1) NOT NULL,
  `idcheck_id` int(11) DEFAULT NULL,
  `sintaksa_id` tinyint(4) NOT NULL,
  `info` varchar(120) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `imeprezime`
--

INSERT INTO `imeprezime` (`id`, `osoba_id`, `rbr`, `ime`, `prezime`, `klub_id`, `aktivno`, `idcheck_id`, `sintaksa_id`, `info`) VALUES
(1001, 1001, 1, 'Alberto', 'Selandari', 12, b'1', NULL, 1, NULL),
(1002, 1002, 1, 'Aleks', 'Ivanov', 12, b'1', NULL, 1, NULL),
(1003, 1003, 1, 'Aleksandar', 'Brborović', 12, b'1', NULL, 1, NULL),
(1004, 1004, 1, 'Aleksandra', 'Žagar', 12, b'1', NULL, 1, NULL),
(1005, 1005, 1, 'Alma', 'Cacan', 12, b'1', NULL, 1, NULL),
(1006, 1006, 1, 'Anamarija', 'Artić', 12, b'1', NULL, 1, NULL),
(1007, 1007, 1, 'Andrea', 'Jambrosić Sakoman', 12, b'1', NULL, 1, NULL),
(1008, 1008, 1, 'Anđelka', 'Stih', 12, b'1', NULL, 1, NULL),
(1009, 1009, 1, 'Anita', 'Bilandžić', 12, b'1', NULL, 1, NULL),
(1010, 1010, 1, 'Anita', 'Kristian', 12, b'1', NULL, 1, NULL),
(1011, 1011, 1, 'Damir', 'Žagar', 12, b'1', NULL, 1, NULL),
(1012, 1012, 1, 'Dejan', 'Šimičević', 12, b'1', NULL, 1, NULL),
(1013, 1013, 1, 'Domagoj', 'Levanić', 12, b'1', NULL, 1, NULL),
(1014, 1014, 1, 'Gerrit', 'Riet, van de', 6, b'1', NULL, 1, 'NL-093482747'),
(1015, 1015, 1, 'Goran', 'Ferić', 12, b'1', NULL, 1, NULL),
(1016, 1016, 1, 'Goran', 'Marović', 12, b'1', NULL, 1, NULL),
(1017, 1017, 1, 'Goran', 'Novak', 12, b'1', NULL, 1, NULL),
(1018, 1018, 1, 'Jelena', 'Manzin Ištvanović', 12, b'1', NULL, 1, NULL),
(1019, 1019, 1, 'Jelena', 'Perić', 5, b'1', NULL, 1, NULL),
(1020, 1020, 1, 'Jorge', 'Salgado', 12, b'1', NULL, 1, '2321742 - os.isk'),
(1021, 1021, 1, 'Maja', 'Flajsig', 12, b'1', NULL, 1, NULL),
(1022, 1022, 1, 'Max', 'Omerzu', 12, b'1', NULL, 1, NULL),
(1023, 1023, 1, 'Mirjana', 'Čavlina', 12, b'1', NULL, 1, NULL),
(1024, 1024, 1, 'Nika', 'Hajak', 12, b'1', NULL, 1, NULL),
(1025, 1025, 1, 'Nika', 'Jurić', 12, b'1', NULL, 1, NULL),
(1026, 1026, 1, 'Nina', 'Kale', 12, b'1', NULL, 1, NULL),
(1027, 1027, 1, 'Nives', 'Špoljar', 12, b'1', NULL, 1, NULL),
(1028, 1028, 1, 'Oliver', 'Skočić', 12, b'1', NULL, 1, NULL),
(1029, 1029, 1, 'Petra', 'Laškarin', 12, b'1', NULL, 1, NULL),
(1030, 1030, 1, 'Silvija', 'Perak', 12, b'1', NULL, 1, NULL),
(1031, 1031, 1, 'Stjepan', 'Sučić', 12, b'1', NULL, 1, NULL),
(1032, 1032, 1, 'Suzana', 'Stanić', 5, b'1', NULL, 1, NULL),
(1033, 1033, 1, 'Tina', 'Sojat', 12, b'1', NULL, 1, NULL),
(1034, 1034, 1, 'Tomislav', 'Lopandić', 12, b'1', NULL, 1, NULL),
(1035, 1035, 1, 'Tony', 'Udris', 11, b'1', NULL, 1, 'Broj putovnice: 531685850'),
(1036, 1036, 1, 'Valentino', 'Stipčević', 12, b'1', NULL, 1, NULL),
(1037, 1037, 1, 'Vesna', 'Žarak', 12, b'1', NULL, 1, NULL),
(1038, 1038, 1, 'Zoran', 'Pajnić', 12, b'1', NULL, 1, NULL),
(1039, 1039, 1, 'Mirja', 'Pavić', 3, b'1', NULL, 1, NULL),
(1040, 1040, 1, 'Borna', 'Miljković', 12, b'1', NULL, 1, NULL),
(1041, 1041, 1, 'Marta', 'Nikolić', 12, b'1', NULL, 1, NULL),
(1042, 1042, 1, 'Ema', 'Tutić', 12, b'1', NULL, 1, NULL),
(1043, 1043, 1, 'Senija', 'Zadravec-Kermek', 2, b'1', NULL, 1, NULL),
(1044, 1044, 1, 'Zlatko', 'Pap', 11, b'1', NULL, 1, NULL),
(1045, 1045, 1, 'Mirjana', 'Gojmerac', 2, b'1', NULL, 1, NULL),
(1046, 1046, 1, 'Ana', 'Smuđ', 11, b'1', NULL, 1, NULL),
(1047, 1047, 1, 'Paola', 'Rako', 12, b'1', NULL, 1, NULL),
(1048, 1048, 1, 'Kristina', 'Beljan', 12, b'1', NULL, 1, NULL),
(1049, 1049, 1, 'Jelena', 'Slijepčević', 12, b'1', NULL, 1, NULL),
(1050, 1050, 1, 'Adam', 'Anadolac', 11, b'1', NULL, 1, NULL),
(1051, 1051, 1, 'Antonela', 'Vidović', 11, b'1', NULL, 1, NULL),
(1052, 1052, 1, 'Tihomir', 'Dugi', 5, b'1', NULL, 1, NULL),
(1053, 1053, 1, 'Srebrenka', 'Vuk', 5, b'1', NULL, 1, NULL),
(1054, 1054, 1, 'Matko', 'Nikolić', 12, b'1', NULL, 1, NULL),
(1055, 1055, 1, 'Luna', 'Bajrektarević', 12, b'1', NULL, 1, NULL),
(1056, 1056, 1, 'Vedran', 'Berković', 5, b'1', NULL, 1, NULL),
(1057, 1057, 1, 'Mikula', 'Mazić', 12, b'1', NULL, 1, '2007.'),
(1058, 1058, 1, 'Zlatko', 'Sirovec', 12, b'1', NULL, 1, NULL),
(1059, 1059, 1, 'Višnja', 'Dukić', 5, b'1', NULL, 1, NULL),
(1060, 1060, 1, 'Radovan', 'Čepelak', 6, b'1', NULL, 1, NULL),
(1061, 1061, 1, 'Vladimir', 'Ževrnja', 5, b'1', NULL, 1, NULL),
(1062, 1062, 1, 'Fabiana', 'Cini', 6, b'1', NULL, 1, NULL),
(1063, 1063, 1, 'Lovorka', 'Čaja', 12, b'1', NULL, 1, NULL),
(1064, 1064, 1, 'Predrag', 'Markulinčić', 7, b'1', NULL, 1, NULL),
(1065, 1065, 1, 'Željka', 'Miljković', 12, b'1', NULL, 1, NULL),
(1066, 1066, 1, 'Ante', 'Radoš', 12, b'1', NULL, 1, NULL),
(1067, 1067, 1, 'Davorka', 'Srebačić', 11, b'1', NULL, 1, NULL),
(1068, 1068, 1, 'Marin', 'Rogulj', 12, b'1', NULL, 1, NULL),
(1069, 1069, 1, 'Boris', 'Kukec', 12, b'1', NULL, 1, NULL),
(1070, 1070, 1, 'Nataša', 'Kolarek', 12, b'1', NULL, 1, NULL),
(1071, 1071, 1, 'Oleg', 'Celić', 12, b'1', NULL, 1, NULL),
(1072, 1072, 1, 'Vlatko', 'Tounec', 5, b'1', NULL, 1, NULL),
(1073, 1073, 1, 'Nino', 'Piskač', 11, b'1', NULL, 1, NULL),
(1074, 1074, 1, 'Anita', 'Radoš', 12, b'1', NULL, 1, NULL),
(1075, 1075, 1, 'Mladen', 'Vukmanović', 5, b'1', NULL, 1, NULL),
(1076, 1076, 1, 'Nevena', 'Letica', 12, b'1', NULL, 1, NULL),
(1077, 1077, 1, 'Slobodan', 'Sokolović', 1, b'1', NULL, 1, NULL),
(1078, 1078, 1, 'Željko', 'Antolić', 7, b'1', NULL, 1, NULL),
(1079, 1079, 1, 'Ivan', 'Pasquino', 11, b'1', NULL, 1, NULL),
(1080, 1080, 1, 'Darinka', 'Lovrec', 12, b'1', NULL, 1, NULL),
(1081, 1081, 1, 'Vedran', 'Kaldi', 5, b'1', NULL, 1, NULL),
(1082, 1082, 1, 'Miran', 'Košćica', 4, b'1', NULL, 1, NULL),
(1083, 1083, 1, 'Fabijan', 'Vidaković', 5, b'1', NULL, 1, NULL),
(1084, 1084, 1, 'Eva', 'Ocvirk', 3, b'1', NULL, 1, NULL),
(1085, 1085, 1, 'Teo', 'Friščić', 11, b'1', NULL, 1, NULL),
(1086, 1086, 1, 'Matea', 'Sršen', 12, b'1', NULL, 1, NULL),
(1087, 1087, 1, 'Nada', 'Baturina', 5, b'1', NULL, 1, NULL),
(1088, 1088, 1, 'Fran', 'Juriša', 3, b'1', NULL, 1, NULL),
(1089, 1089, 1, 'Dario', 'Vodopija', 5, b'1', NULL, 1, NULL),
(1090, 1090, 1, 'Vladimir', 'Tkalec', 7, b'1', NULL, 1, NULL),
(1091, 1091, 1, 'Roko', 'Vukić', 6, b'1', NULL, 1, NULL),
(1092, 1092, 1, 'Lucija', 'Milas', 5, b'1', NULL, 1, NULL),
(1093, 1093, 1, 'Elena', 'Košćak', 11, b'1', NULL, 1, NULL),
(1094, 1094, 1, 'Vinka', 'Vukmanović', 5, b'1', NULL, 1, NULL),
(1095, 1095, 1, 'Teo', 'Mahović', 3, b'1', NULL, 1, NULL),
(1096, 1096, 1, 'Miro', 'Borček', 11, b'1', NULL, 1, NULL),
(1097, 1097, 1, 'Sanja', 'Ostroški', 11, b'1', NULL, 1, NULL),
(1098, 1098, 1, 'Jure', 'Rako', 12, b'1', NULL, 1, NULL),
(1099, 1099, 1, 'Krunoslav', 'Canjuga', 11, b'1', NULL, 1, NULL),
(1100, 1100, 1, 'Martina', 'Triplat Horvat', 12, b'1', NULL, 1, NULL),
(1101, 1101, 1, 'Petra', 'Vučinić', 4, b'1', NULL, 1, NULL),
(1102, 1102, 1, 'Ivan', 'Salgado Vinter', 12, b'1', NULL, 1, '2005.'),
(1103, 1103, 1, 'Mario', 'Salgado Vinter', 12, b'1', NULL, 1, '2011.'),
(1104, 1104, 1, 'Tomo', 'Smital', 12, b'1', NULL, 1, NULL),
(1105, 1105, 1, 'Jura', 'Kukec', 12, b'1', NULL, 1, NULL),
(1106, 1106, 1, 'Filip', 'Anadolac', 11, b'1', NULL, 1, NULL),
(1107, 1107, 1, 'Goran', 'Žalac', 4, b'1', NULL, 1, NULL),
(1108, 1108, 1, 'Martin', 'Meštrović', 5, b'1', NULL, 1, NULL),
(1109, 1109, 1, 'Saša', 'Horvat', 6, b'1', NULL, 1, NULL),
(1110, 1110, 1, 'Luka', 'Oslaković', 4, b'1', NULL, 1, NULL),
(1111, 1111, 1, 'Ivan', 'Šeperić-Grdiša', 4, b'1', NULL, 1, NULL),
(1112, 1112, 1, 'Alex', 'Gulta', 12, b'1', NULL, 1, NULL),
(1113, 1113, 1, 'Barbara', 'Arbanas', 12, b'1', NULL, 1, NULL),
(1114, 1114, 1, 'Karlo', 'Težak', 12, b'1', NULL, 1, NULL),
(1115, 1115, 1, 'Zdravko', 'Novosel', 4, b'1', NULL, 1, NULL),
(1116, 1116, 1, 'Ozren', 'Pevec', 11, b'1', NULL, 1, NULL),
(1117, 1117, 1, 'Marija', 'Štambuk', 2, b'1', NULL, 1, NULL),
(1118, 1118, 1, 'Viktor', 'Pavić', 12, b'1', NULL, 1, NULL),
(1119, 1119, 1, 'Marko', 'Tanković', 4, b'1', NULL, 1, NULL),
(1120, 1120, 1, 'Igor', 'Vukmirović', 4, b'1', NULL, 1, NULL),
(1121, 1121, 1, 'Morana', 'Ćuzela', 5, b'1', NULL, 1, NULL),
(1122, 1122, 1, 'Ranko', 'Orehovec', 7, b'1', NULL, 1, NULL),
(1123, 1123, 1, 'Magdalena', 'Čečura', 12, b'1', NULL, 1, NULL),
(1124, 1124, 1, 'Tin', 'Kodba', 12, b'1', NULL, 1, NULL),
(1125, 1125, 1, 'Ivan', 'Bublić', 5, b'1', NULL, 1, NULL),
(1126, 1126, 1, 'Vladimir', 'Trivunović', 5, b'1', NULL, 1, NULL),
(1127, 1127, 1, 'Dražen', 'Henc', 7, b'1', NULL, 1, NULL),
(1128, 1128, 1, 'Marija', 'Jazvić Mioković', 5, b'1', NULL, 1, NULL),
(1129, 1129, 1, 'Dora', 'Miljković', 4, b'1', NULL, 1, NULL),
(1130, 1130, 1, 'Lobel', 'Horvat', 6, b'1', NULL, 1, NULL),
(1131, 1131, 1, 'Tadej', 'Lešnjak', 11, b'1', NULL, 1, NULL),
(1132, 1132, 1, 'Borna', 'Košćak', 11, b'1', NULL, 1, NULL),
(1133, 1133, 1, 'Miroslav', 'Besten', 4, b'1', NULL, 1, NULL),
(1134, 1134, 1, 'Andrej', 'Smerke', 6, b'1', NULL, 1, NULL),
(1135, 1135, 1, 'Slađana', 'Lučić', 5, b'1', NULL, 1, NULL),
(1136, 1136, 1, 'Maša', 'Mesić', 12, b'1', NULL, 1, NULL),
(1137, 1137, 1, 'Dunja', 'Riet, van de', 6, b'1', NULL, 1, NULL),
(1138, 1138, 1, 'Tomislav', 'Kaniški', 6, b'1', NULL, 1, NULL),
(1139, 1139, 1, 'Frane', 'Marković', 3, b'1', NULL, 1, NULL),
(1140, 1140, 1, 'Petra', 'Plevnik', 1, b'1', NULL, 1, NULL),
(1141, 1141, 1, 'Melita', 'Sučić', 12, b'1', NULL, 1, NULL),
(1142, 1142, 1, 'Željko', 'Vinšćak', 4, b'1', NULL, 1, NULL),
(1143, 1143, 1, 'Andro Vladimir', 'Štambuk', 6, b'1', NULL, 1, NULL),
(1144, 1144, 1, 'Ivan', 'Bilić', 2, b'1', NULL, 1, NULL),
(1145, 1145, 1, 'Tomislav', 'Pavić', 12, b'1', NULL, 1, NULL),
(1146, 1146, 1, 'Antonija', 'Hodak', 12, b'1', NULL, 1, NULL),
(1147, 1147, 1, 'Emanuel', 'Rožić', 11, b'1', NULL, 1, NULL),
(1148, 1148, 1, 'Iva', 'Tatić', 12, b'1', NULL, 1, NULL),
(1149, 1149, 1, 'Ivan', 'Šantek', 11, b'1', NULL, 1, NULL),
(1150, 1150, 1, 'Dragan', 'Kovačević', 5, b'1', NULL, 1, NULL),
(1151, 1151, 1, 'Miroslav', 'Hainž', 11, b'1', NULL, 1, NULL),
(1152, 1152, 1, 'Jasna', 'Mandac', 12, b'1', NULL, 1, NULL),
(1153, 1153, 1, 'Filip', 'Gašparević', 12, b'1', NULL, 1, NULL),
(1154, 1154, 1, 'Martina', 'Tutić', 12, b'1', NULL, 1, NULL),
(1155, 1155, 1, 'Mirko', 'Tišljar', 8, b'1', NULL, 1, NULL),
(1156, 1156, 1, 'Tonka', 'Rogulj', 12, b'1', NULL, 1, NULL),
(1157, 1157, 1, 'Karlo', 'Filek', 12, b'1', NULL, 1, NULL),
(1158, 1158, 1, 'Iva', 'Štambuk', 6, b'1', NULL, 1, NULL),
(1159, 1159, 1, 'Grga', 'Fernežir', 3, b'1', NULL, 1, NULL),
(1160, 1160, 1, 'Hana', 'Škugor', 3, b'1', NULL, 1, NULL),
(1161, 1161, 1, 'Marko', 'Leljak', 7, b'1', NULL, 1, NULL),
(1162, 1162, 1, 'Marin', 'Tanković', 4, b'1', NULL, 1, NULL),
(1163, 1163, 1, 'Igor', 'Dorotić', 12, b'1', NULL, 1, NULL),
(1164, 1164, 1, 'Dalibor', 'Stankovski', 4, b'1', NULL, 1, NULL),
(1165, 1165, 1, 'Vibor', 'Strmečki', 6, b'1', NULL, 1, NULL),
(1166, 1166, 1, 'Mladenka', 'Čuljak Gross', 5, b'1', NULL, 1, NULL),
(1167, 1167, 1, 'Matija', 'Mesić', 12, b'1', NULL, 1, NULL),
(1168, 1168, 1, 'Ines', 'Ostajmer', 12, b'1', NULL, 1, NULL),
(1169, 1169, 1, 'Patrick', 'Milković', 3, b'1', NULL, 1, NULL),
(1170, 1170, 1, 'Juraj', 'Vukelić', 6, b'1', NULL, 1, NULL),
(1171, 1171, 1, 'Gregor', 'Janžek', 7, b'1', NULL, 1, NULL),
(1172, 1172, 1, 'Karlo', 'Požgaj', 12, b'1', NULL, 1, NULL),
(1173, 1173, 1, 'Noa', 'Kelc', 4, b'1', NULL, 1, NULL),
(1174, 1174, 1, 'Mario', 'Lah', 11, b'1', NULL, 1, NULL),
(1175, 1175, 1, 'Sandra', 'Bergant Vidaković', 5, b'1', NULL, 1, NULL),
(1176, 1176, 1, 'Dominik', 'Klasić', 6, b'1', NULL, 1, NULL),
(1177, 1177, 1, 'Tamara', 'Radulić Butorac', 12, b'1', NULL, 1, NULL),
(1178, 1178, 1, 'Melissa', 'Drobić', 5, b'1', NULL, 1, NULL),
(1179, 1179, 1, 'Emil', 'Anadolac', 11, b'1', NULL, 1, NULL),
(1180, 1180, 1, 'Jan', 'Turković', 11, b'1', NULL, 1, NULL),
(1181, 1181, 1, 'Nevija', 'Frajzman', 4, b'1', NULL, 1, NULL),
(1182, 1182, 1, 'Ana', 'Krajnović', 12, b'1', NULL, 1, NULL),
(1183, 1183, 1, 'Siniša', 'Mareković', 12, b'1', NULL, 1, NULL),
(1184, 1184, 1, 'Irena', 'Kasaš Spasić', 5, b'1', NULL, 1, NULL),
(1185, 1185, 1, 'Leonard', 'Požgaj', 12, b'1', NULL, 1, NULL),
(1186, 1186, 1, 'Ema', 'Juričan', 11, b'1', NULL, 1, NULL),
(1187, 1187, 1, 'Kira', 'Sršen Delgado', 12, b'1', NULL, 1, NULL),
(1188, 1188, 1, 'Mladen', 'Jelić', 5, b'1', NULL, 1, NULL),
(1189, 1189, 1, 'Ana-Marija', 'Pavić', 12, b'1', NULL, 1, NULL),
(1190, 1190, 1, 'Ana', 'Markulin', 12, b'1', NULL, 1, NULL),
(1191, 1191, 1, 'Noa', 'Kolarek', 12, b'1', NULL, 1, NULL),
(1192, 1192, 1, 'Luka', 'Bahun', 7, b'1', NULL, 1, NULL),
(1193, 1193, 1, 'Željka', 'Fištrek', 5, b'1', NULL, 1, NULL),
(1194, 1194, 1, 'Lidija', 'Detić', 11, b'1', NULL, 1, NULL),
(1195, 1195, 1, 'Luka', 'Filetin', 5, b'1', NULL, 1, NULL),
(1196, 1196, 1, 'Robert', 'Belović', 7, b'1', NULL, 1, NULL),
(1197, 1197, 1, 'Ivana', 'Zagrajski', 11, b'1', NULL, 1, NULL),
(1198, 1198, 1, 'Iva', 'Jakopec', 3, b'1', NULL, 1, NULL),
(1199, 1199, 1, 'Aleksandra', 'Brezovečki Biđin', 12, b'1', NULL, 1, NULL),
(1200, 1200, 1, 'Mirjana', 'Mandić', 3, b'1', NULL, 1, NULL),
(1201, 1201, 1, 'Vedran', 'Papa', 4, b'1', NULL, 1, NULL),
(1202, 1202, 1, 'Margaux Marthe Marie', 'Grioche', 6, b'1', NULL, 1, NULL),
(1203, 1203, 1, 'Lea Katarina', 'Gobec', 12, b'1', NULL, 1, NULL),
(1204, 1204, 1, 'Wanda', 'Kovač', 5, b'1', NULL, 1, NULL),
(1205, 1205, 1, 'Ivan', 'Gverić', 5, b'1', NULL, 1, NULL),
(1206, 1206, 1, 'Branimir', 'Pongrac', 3, b'1', NULL, 1, NULL),
(1207, 1207, 1, 'Teo', 'Mance', 12, b'1', NULL, 1, NULL),
(1208, 1208, 1, 'Željko', 'Belaj', 1, b'1', NULL, 1, NULL),
(1209, 1209, 1, 'Damir', 'Gobec', 12, b'1', NULL, 1, NULL),
(1210, 1210, 1, 'Bruno', 'Vodopija', 11, b'1', NULL, 1, NULL),
(1211, 1211, 1, 'Ivan Ivo', 'Penić', 5, b'1', NULL, 1, NULL),
(1212, 1212, 1, 'Olga', 'Pajnić', 5, b'1', NULL, 1, NULL),
(1213, 1213, 1, 'Luka', 'Požgaj', 12, b'1', NULL, 1, NULL),
(1214, 1214, 1, 'Monika Martina', 'Sipina Halper', 4, b'1', NULL, 1, NULL),
(1215, 1215, 1, 'Marta', 'Gojmerac', 2, b'1', NULL, 1, NULL),
(1216, 1216, 1, 'Sanja', 'Krš', 12, b'1', NULL, 1, NULL),
(1217, 1217, 1, 'Gabrijela', 'Baburek', 3, b'1', NULL, 1, NULL),
(1218, 1218, 1, 'Ana', 'Rumiha', 12, b'1', NULL, 1, NULL),
(1219, 1219, 1, 'Branko', 'Bernardić', 5, b'1', NULL, 1, NULL),
(1220, 1220, 1, 'Tanja', 'Potrebica', 11, b'1', NULL, 1, NULL),
(1221, 1221, 1, 'Vjeko', 'Mazić', 12, b'1', NULL, 1, '2009.'),
(1222, 1222, 1, 'Antea', 'Popović', 5, b'1', NULL, 1, NULL),
(1223, 1223, 1, 'Vjeran', 'Horvat', 6, b'1', NULL, 1, NULL),
(1224, 1224, 1, 'Marijan', 'Mirković', 12, b'1', NULL, 1, NULL),
(1225, 1225, 1, 'Evelyn', 'Kraintz', 6, b'1', NULL, 1, NULL),
(1226, 1226, 1, 'Rea', 'Boban', 2, b'1', NULL, 1, NULL),
(1227, 1227, 1, 'Emilija', 'Ebenspanger', 5, b'1', NULL, 1, NULL),
(1228, 1228, 1, 'Višnja', 'Kabalin Borenić', 6, b'1', NULL, 1, NULL),
(1229, 1229, 1, 'Leire', 'Sršen Delgado', 12, b'1', NULL, 1, NULL),
(1230, 1230, 1, 'Tea', 'Đurek', 12, b'1', NULL, 1, NULL),
(1231, 1231, 1, 'Branka', 'Fabek', 3, b'1', NULL, 1, NULL),
(1232, 1232, 1, 'Tamara', 'Kefeček', 5, b'1', NULL, 1, NULL),
(1233, 1233, 1, 'Luka', 'Kosić', 3, b'1', NULL, 1, NULL),
(1234, 1234, 1, 'Tomislav', 'Marjanović', 12, b'1', NULL, 1, NULL),
(1235, 1235, 1, 'Julijana', 'Dolenc', 11, b'1', NULL, 1, NULL),
(1236, 1236, 1, 'Lucija', 'Gojmerac', 2, b'1', NULL, 1, NULL),
(1237, 1237, 1, 'Domagoj', 'Pavlin', 12, b'1', NULL, 1, NULL),
(1238, 1238, 1, 'Dražen', 'Gadžić', 5, b'1', NULL, 1, NULL),
(1239, 1239, 1, 'Hrvoje', 'Mirković', 12, b'1', NULL, 1, NULL),
(1240, 1240, 1, 'Jasminka', 'Vlahović', 12, b'1', NULL, 1, NULL),
(1241, 1241, 1, 'Petra', 'Martak', 11, b'1', NULL, 1, NULL),
(1242, 1242, 1, 'Luka', 'Relić', 12, b'1', NULL, 1, NULL),
(1243, 1243, 1, 'Nina', 'Mioković', 5, b'1', NULL, 1, NULL),
(1244, 1244, 1, 'VIKTORIA', 'ŠANTIĆ', 1, b'1', NULL, 1, NULL),
(1245, 1245, 1, 'Rea', 'Vodopija', 11, b'1', NULL, 1, NULL),
(1246, 1246, 1, 'Emerik', 'Večerić', 7, b'1', NULL, 1, NULL),
(1247, 1247, 1, 'Filip', 'Cvetković', 3, b'1', NULL, 1, NULL),
(1248, 1248, 1, 'Jelka', 'Penić', 12, b'1', NULL, 1, NULL),
(1249, 1249, 1, 'Ivo', 'Tišljar', 8, b'1', NULL, 1, NULL),
(1250, 1250, 1, 'Antun Zoran', 'Krivokapić', 6, b'1', NULL, 1, NULL),
(1251, 1251, 1, 'Lovre', 'Mazić', 12, b'1', NULL, 1, '2011.'),
(1252, 1252, 1, 'Viktor Ignjat', 'Ivezić', 12, b'1', NULL, 1, NULL),
(1253, 1253, 1, 'Zdravko', 'Crnković', 12, b'1', NULL, 1, NULL),
(1254, 1254, 1, 'Daniel', 'Fabijanić', 4, b'1', NULL, 1, NULL),
(1255, 1255, 1, 'Petra', 'Abramović', 12, b'1', NULL, 1, NULL),
(1256, 1256, 1, 'Gabriel', 'Šiljevinac', 4, b'1', NULL, 1, NULL),
(1257, 1257, 1, 'Petar', 'Strmečki', 6, b'1', NULL, 1, NULL),
(1258, 1258, 1, 'Anja Vita', 'Ogorelec', 5, b'1', NULL, 1, NULL),
(1259, 1259, 1, 'Majda', 'Vidaković', 5, b'1', NULL, 1, NULL),
(1260, 1260, 1, 'Marta', 'Kiš', 12, b'1', NULL, 1, NULL),
(1261, 1261, 1, 'Lana', 'Gerjević', 5, b'1', NULL, 1, NULL),
(1262, 1262, 1, 'Vlatka', 'Stupalo', 12, b'1', NULL, 1, NULL),
(1263, 1263, 1, 'Vid', 'Kodba', 12, b'1', NULL, 1, NULL),
(1264, 1264, 1, 'Marko', 'Košturić', 4, b'1', NULL, 1, NULL),
(1265, 1265, 1, 'Dorotea', 'Kutleša', 5, b'1', NULL, 1, NULL),
(1266, 1266, 1, 'Domagoj', 'Šantić', 1, b'1', NULL, 1, NULL),
(1267, 1267, 1, 'Jasminka', 'Cindrić Perković', 7, b'1', NULL, 1, NULL),
(1268, 1268, 1, 'Marija', 'Gradečak Galović', 5, b'1', NULL, 1, NULL),
(1269, 1269, 1, 'Antonija', 'Orlić', 1, b'1', NULL, 1, NULL),
(1270, 1270, 1, 'Marija', 'Schubert', 11, b'1', NULL, 1, NULL),
(1271, 1271, 1, 'Josip', 'Matijašić', 12, b'1', NULL, 1, NULL),
(1272, 1272, 1, 'Nera', 'Krečak', 11, b'1', NULL, 1, NULL),
(1273, 1273, 1, 'Anita', 'Sem', 12, b'1', NULL, 1, NULL),
(1274, 1274, 1, 'Predrag', 'Labaš', 11, b'1', NULL, 1, NULL),
(1275, 1275, 1, 'Marijana', 'Žgela Putniković', 5, b'1', NULL, 1, NULL),
(1276, 1276, 1, 'Ana', 'Tišljar', 6, b'1', NULL, 1, NULL),
(1277, 1277, 1, 'Jerko', 'Penić', 12, b'1', NULL, 1, NULL),
(1278, 1278, 1, 'Lana', 'Žnidarić', 7, b'1', NULL, 1, NULL),
(1279, 1279, 1, 'Vera', 'Franc', 5, b'1', NULL, 1, NULL),
(1280, 1280, 1, 'Robert', 'Težak', 12, b'1', NULL, 1, NULL),
(1281, 1281, 1, 'Vida', 'Rak', 11, b'1', NULL, 1, NULL),
(1282, 1282, 1, 'Vladimir', 'Spasić', 5, b'1', NULL, 1, NULL),
(1283, 1283, 1, 'Petar', 'Jurač', 12, b'1', NULL, 1, NULL),
(1284, 1284, 1, 'Bože', 'Đipalo', 1, b'1', NULL, 1, NULL),
(1285, 1285, 1, 'Luka', 'Gojmerac', 2, b'1', NULL, 1, NULL),
(1286, 1286, 1, 'Tajana', 'Holjevac-Gagulić', 6, b'1', NULL, 1, NULL),
(1287, 1287, 1, 'Ivana', 'Šestan Krajnović', 12, b'1', NULL, 1, NULL),
(1288, 1288, 1, 'Dražen', 'Dervišević', 12, b'1', NULL, 1, NULL),
(1289, 1289, 1, 'Tomislav', 'Varnica', 12, b'1', NULL, 1, NULL),
(1290, 1290, 1, 'Jana', 'Markulinčić', 7, b'1', NULL, 1, NULL),
(1291, 1291, 1, 'Dora', 'Težak', 12, b'1', NULL, 1, NULL),
(1292, 1292, 1, 'Nola', 'Jandrečić', 3, b'1', NULL, 1, NULL),
(1293, 1293, 1, 'Domagoj', 'Novosel', 4, b'1', NULL, 1, NULL),
(1294, 1294, 1, 'Krunoslav', 'Peh', 5, b'1', NULL, 1, NULL),
(1295, 1295, 1, 'Ivo', 'Krajnović', 12, b'1', NULL, 1, NULL),
(1296, 1296, 1, 'Maja', 'Cvitković', 12, b'1', NULL, 1, NULL),
(1297, 1297, 1, 'Timo Vilim', 'Gobec', 12, b'1', NULL, 1, NULL),
(1298, 1298, 1, 'Tara', 'Sirovec', 12, b'1', NULL, 1, NULL),
(1299, 1299, 1, 'Zvonko', 'Vodopija', 11, b'1', NULL, 1, NULL),
(1300, 1300, 1, 'Domagoj', 'Delimar', 5, b'1', NULL, 1, NULL),
(1301, 1301, 1, 'Kimi Maria', 'Gobec', 12, b'1', NULL, 1, NULL),
(1302, 1302, 1, 'Domagoj', 'Malović', 5, b'1', NULL, 1, NULL),
(1303, 1303, 1, 'Petar', 'Gojmerac', 2, b'1', NULL, 1, NULL),
(1304, 1304, 1, 'Luka', 'Sučić', 12, b'1', NULL, 1, NULL),
(1305, 1305, 1, 'Ana', 'Budi', 3, b'1', NULL, 1, NULL),
(1306, 1306, 1, 'Vladimir', 'Vinko', 7, b'1', NULL, 1, NULL),
(1307, 1307, 1, 'Sanjin', 'Drobić', 5, b'1', NULL, 1, NULL),
(1308, 1308, 1, 'Noa', 'Turk', 7, b'1', NULL, 1, NULL),
(1309, 1309, 1, 'Ivana', 'Gobec', 12, b'1', NULL, 1, NULL),
(1310, 1310, 1, 'Siniša', 'Lah', 11, b'1', NULL, 1, NULL),
(1311, 1311, 1, 'Antonio', 'Cindrić', 4, b'1', NULL, 1, NULL),
(1312, 1312, 1, 'Franko', 'Bajlo', 5, b'1', NULL, 1, NULL),
(1313, 1313, 1, 'Bojan', 'Vukelić', 6, b'1', NULL, 1, NULL),
(1314, 1314, 1, 'Damir', 'Miljković', 4, b'1', NULL, 1, NULL),
(1315, 1315, 1, 'Lovro', 'Pinjušić', 3, b'1', NULL, 1, NULL),
(1316, 1316, 1, 'Daniela', 'Popović Budi', 3, b'1', NULL, 1, NULL),
(1317, 1317, 1, 'Niko', 'Savović', 12, b'1', NULL, 1, NULL),
(1318, 1318, 1, 'Dražen', 'Janžek', 7, b'1', NULL, 1, NULL),
(1319, 1319, 1, 'Ivana', 'Ulrich Cvenić', 5, b'1', NULL, 1, NULL),
(1320, 1320, 1, 'Neda', 'Punek Gobec', 12, b'1', NULL, 1, NULL),
(1321, 1321, 1, 'Petar', 'Kaniški', 6, b'1', NULL, 1, NULL),
(1322, 1322, 1, 'Sabina', 'Rako', 12, b'1', NULL, 1, NULL),
(1323, 1323, 1, 'Zvonimir', 'Fernežir', 3, b'1', NULL, 1, NULL),
(1324, 1324, 1, 'Biserka', 'Horvat-Nikšić', 12, b'1', NULL, 1, NULL),
(1325, 1325, 1, 'Tomislav', 'Gojmerac', 2, b'1', NULL, 1, NULL),
(1326, 1326, 1, 'Bernardica', 'Stipić', 12, b'1', NULL, 1, NULL),
(1327, 1327, 1, 'Nikola', 'Petković', 7, b'1', NULL, 1, NULL),
(1328, 1328, 1, 'Gordan', 'Mlinarić', 12, b'1', NULL, 1, NULL),
(1329, 1329, 1, 'Magdalena', 'Težak', 12, b'1', NULL, 1, NULL),
(1330, 1330, 1, 'Violeta', 'Čalić', 12, b'1', NULL, 1, NULL),
(1331, 1331, 1, 'Aida', 'Krkić Drobić', 5, b'1', NULL, 1, NULL),
(1332, 1332, 1, 'Žana', 'Rajić', 12, b'1', NULL, 1, NULL),
(1333, 1333, 1, 'Ivica', 'Bertol', 12, b'1', NULL, 1, NULL),
(1334, 1334, 1, 'Dalibor', 'Perković', 7, b'1', NULL, 1, NULL),
(1335, 1335, 1, 'Stjepan', 'Canjuga', 11, b'1', NULL, 1, NULL),
(1336, 1336, 1, 'Marijan', 'Turkalj', 12, b'1', NULL, 1, NULL),
(1337, 1337, 1, 'Kyra', 'Krahenbuhl', 6, b'1', NULL, 1, NULL),
(1338, 1338, 1, 'Dora', 'Delić', 4, b'1', NULL, 1, NULL),
(1339, 1339, 1, 'Filip', 'Cesar', 12, b'1', NULL, 1, NULL),
(1340, 1340, 1, 'Sanja', 'Penc', 12, b'1', NULL, 1, NULL),
(1341, 1341, 1, 'Tomislav', 'Milašinčić', 4, b'1', NULL, 1, NULL),
(1342, 1342, 1, 'Jakov', 'Boban', 2, b'1', NULL, 1, NULL),
(1343, 1343, 1, 'Francisco', 'Delgado', 12, b'1', NULL, 1, NULL),
(1344, 1344, 1, 'Helena', 'Dukić', 12, b'1', NULL, 1, NULL),
(1345, 1345, 1, 'Tena', 'Sakar Vukić', 6, b'1', NULL, 1, NULL),
(1346, 1346, 1, 'Ivana', 'Dolenac', 12, b'1', NULL, 1, NULL),
(1347, 1347, 1, 'Nela', 'Gross', 5, b'1', NULL, 1, NULL),
(1348, 1348, 1, 'Bruno', 'Stanković', 5, b'1', NULL, 1, NULL),
(1349, 1349, 1, 'Mario', 'Štambuk', 6, b'1', NULL, 1, NULL),
(1350, 1350, 1, 'Branimir', 'Putniković', 5, b'1', NULL, 1, NULL),
(1351, 1351, 1, 'Lorena', 'Orešković', 6, b'1', NULL, 1, NULL),
(1352, 1352, 1, 'Bruno', 'Blažinč', 12, b'1', NULL, 1, NULL),
(1353, 1353, 1, 'Ines', 'Mance', 12, b'1', NULL, 1, NULL),
(1354, 1354, 1, 'Mladen', 'Debić', 6, b'1', NULL, 1, NULL),
(1355, 1355, 1, 'Damir', 'Tubin', 4, b'1', NULL, 1, NULL),
(1356, 1356, 1, 'Luka', 'Novak', 7, b'1', NULL, 1, NULL),
(1357, 1357, 1, 'Saša', 'Glagolić', 5, b'1', NULL, 1, NULL),
(1358, 1358, 1, 'Krešo', 'Špoljar', 5, b'1', NULL, 1, NULL),
(1359, 1359, 1, 'Danko', 'Pleše', 12, b'1', NULL, 1, NULL),
(1360, 1360, 1, 'Iva', 'Lovrec', 12, b'1', NULL, 1, NULL),
(1361, 1361, 1, 'Mihaela Marija', 'Perković', 12, b'1', NULL, 1, NULL),
(1362, 1362, 1, 'Dorijan', 'Habek', 11, b'1', NULL, 1, NULL),
(1363, 1363, 1, 'Darko', 'Raškaj', 5, b'1', NULL, 1, NULL),
(1364, 1364, 1, 'VERONIKA', 'ŠANTIĆ', 1, b'1', NULL, 1, NULL),
(1365, 1365, 1, 'Željko', 'Koščak', 7, b'1', NULL, 1, NULL),
(1366, 1366, 1, 'Valter', 'Sučić', 12, b'1', NULL, 1, NULL),
(1367, 1367, 1, 'Tomislav', 'Meštrović', 5, b'1', NULL, 1, NULL),
(1368, 1368, 1, 'Sanda', 'Berženji', 5, b'1', NULL, 1, NULL),
(1369, 1369, 1, 'Doroteja', 'Držaić', 6, b'1', NULL, 1, NULL),
(1370, 1370, 1, 'Lino', 'Legac', 3, b'1', NULL, 1, NULL),
(1371, 1371, 1, 'Mirta', 'Hodak', 12, b'1', NULL, 1, NULL),
(1372, 1372, 1, 'Mirka', 'Jakšić', 6, b'1', NULL, 1, NULL),
(1373, 1373, 1, 'Maks', 'Bjelajac', 12, b'1', NULL, 1, NULL),
(1374, 1374, 1, 'Duje', 'Rako', 12, b'1', NULL, 1, NULL),
(1375, 1375, 1, 'Maja', 'Kušt', 12, b'1', NULL, 1, NULL),
(1376, 1376, 1, 'Jelena', 'Brezak', 5, b'1', NULL, 1, NULL),
(1377, 1377, 1, 'Ante', 'Jović', 7, b'1', NULL, 1, NULL),
(1378, 1378, 1, 'Mare', 'Gršković', 5, b'1', NULL, 1, NULL),
(1379, 1379, 1, 'Petar', 'Barulek', 11, b'1', NULL, 1, NULL),
(1380, 1380, 1, 'Ana', 'Batinović', 12, b'1', NULL, 1, NULL),
(1381, 1381, 1, 'Sabina', 'Seražin Korper', 4, b'1', NULL, 1, NULL),
(1382, 1382, 1, 'Bepo', 'Željem', 5, b'1', NULL, 1, NULL),
(1383, 1383, 1, 'Nika', 'Sakar', 6, b'1', NULL, 1, NULL),
(1384, 1384, 1, 'Smiljana', 'Janžek', 7, b'1', NULL, 1, NULL),
(1385, 1385, 1, 'Franjo', 'Budi', 3, b'1', NULL, 1, NULL),
(1386, 1386, 1, 'Edo', 'Krš', 12, b'1', NULL, 1, NULL),
(1387, 1387, 1, 'Vladimir', 'Grgesina', 12, b'1', NULL, 1, NULL),
(1388, 1388, 1, 'Robert', 'Vuk', 5, b'1', NULL, 1, NULL),
(1389, 1389, 1, 'Irena', 'Požgaj', 12, b'1', NULL, 1, NULL),
(1390, 1390, 1, 'Lorena', 'Malec', 12, b'1', NULL, 1, NULL),
(1391, 1391, 1, 'Daliborka', 'Pavlin', 12, b'1', NULL, 1, NULL),
(1392, 1392, 1, 'Dora', 'Kermek', 2, b'1', NULL, 1, NULL),
(1393, 1393, 1, 'Željko', 'Gobec', 12, b'1', NULL, 1, NULL),
(1394, 1394, 1, 'Dragan', 'Janković', 12, b'1', NULL, 1, NULL),
(1395, 1395, 1, 'Zvonimir', 'Mirković', 12, b'1', NULL, 1, NULL),
(1396, 1396, 1, 'Marko', 'Omazić', 2, b'1', NULL, 1, NULL),
(1397, 1397, 1, 'Karolina', 'Kukec', 12, b'1', NULL, 1, NULL),
(1398, 1398, 1, 'Zvonko', 'Vidaković', 5, b'1', NULL, 1, NULL),
(1399, 1399, 1, 'Saša', 'Horvat', 7, b'1', NULL, 1, NULL),
(1400, 1400, 1, 'Tomislav', 'Kelemen', 7, b'1', NULL, 1, NULL),
(1401, 1401, 1, 'Nika', 'Juričan', 11, b'1', NULL, 1, NULL),
(1402, 1402, 1, 'Eva', 'Šantek', 11, b'1', NULL, 1, NULL),
(1403, 1403, 1, 'Karmen', 'Holenda', 11, b'1', NULL, 1, NULL),
(1404, 1404, 1, 'Greta', 'Kaniški', 6, b'1', NULL, 1, NULL),
(1405, 1405, 1, 'Ana', 'Kovačić', 12, b'1', NULL, 1, NULL),
(1406, 1406, 1, 'Ivana', 'Zeljko', 7, b'1', NULL, 1, NULL),
(1407, 1407, 1, 'Milivoj', 'Uroić', 6, b'1', NULL, 1, NULL),
(1408, 1408, 1, 'Filip', 'Marendić', 12, b'1', NULL, 1, NULL),
(1409, 1409, 1, 'Goran', 'Habjanec', 12, b'1', NULL, 1, NULL),
(1410, 1410, 1, 'Ira', 'Mareković', 12, b'1', NULL, 1, NULL),
(1411, 1411, 1, 'Bruno', 'Mance', 12, b'1', NULL, 1, NULL),
(1412, 1412, 1, 'Iva', 'Žulić', 12, b'1', NULL, 1, NULL),
(1413, 1413, 1, 'Ana', 'Srebačić', 2, b'1', NULL, 1, NULL),
(1414, 1414, 1, 'Mirta', 'Boban', 2, b'1', NULL, 1, NULL),
(1415, 1415, 1, 'Nikica', 'Jokić', 12, b'1', NULL, 1, NULL),
(1416, 1416, 1, 'Dragutin', 'Mulig', 4, b'1', NULL, 1, NULL),
(1417, 1417, 1, 'Marina', 'Šojat', 5, b'1', NULL, 1, NULL),
(1418, 1418, 1, 'Petar', 'Delić', 6, b'1', NULL, 1, NULL),
(1419, 1419, 1, 'Luka', 'Kocijan', 11, b'1', NULL, 1, NULL),
(1420, 1420, 1, 'Zdravko', 'Tonković', 5, b'1', NULL, 1, NULL),
(1421, 1421, 1, 'Marijeta', 'Radman', 12, b'1', NULL, 1, NULL),
(1422, 1422, 1, 'Tomislav', 'Mikić', 12, b'1', NULL, 1, NULL),
(1423, 1423, 1, 'Eduard', 'Kožul', 12, b'1', NULL, 1, NULL),
(1424, 1424, 1, 'Zdenka Petra', 'Štambuk', 2, b'1', NULL, 1, NULL),
(1425, 1425, 1, 'Lucija', 'Detić', 11, b'1', NULL, 1, NULL),
(1426, 1426, 1, 'Luka', 'Karavidović', 12, b'1', NULL, 1, NULL),
(1427, 1427, 1, 'Mile', 'Boban', 2, b'1', NULL, 1, NULL),
(1428, 1428, 1, 'Boris', 'Mazić', 12, b'1', NULL, 1, '1971.'),
(1429, 1429, 1, 'Alida', 'Sokolović', 1, b'1', NULL, 1, NULL),
(1430, 1430, 1, 'Mile', 'Mioković', 5, b'1', NULL, 1, NULL),
(1431, 1431, 1, 'Paula', 'Pavlin', 12, b'1', NULL, 1, NULL),
(1432, 1432, 1, 'Marin', 'Mihinjač', 11, b'1', NULL, 1, NULL),
(1433, 1433, 1, 'Alan', 'Požgaj', 12, b'1', NULL, 1, NULL),
(1434, 1434, 1, 'Jakov', 'Lesjak', 3, b'1', NULL, 1, NULL),
(1435, 1435, 1, 'Jelena', 'Gojmerac', 2, b'1', NULL, 1, NULL),
(1436, 1436, 1, 'Ivana', 'Težak', 12, b'1', NULL, 1, NULL),
(1437, 1437, 1, 'Pia', 'Hercigonja', 5, b'1', NULL, 1, NULL),
(1438, 1438, 1, 'Petra', 'Dasović', 5, b'1', NULL, 1, NULL),
(1439, 1439, 1, 'Laura', 'Kaniški', 6, b'1', NULL, 1, NULL),
(1440, 1440, 1, 'Ema', 'Jurač', 12, b'1', NULL, 1, NULL),
(1441, 1441, 1, 'Ema', 'Potrebica', 11, b'1', NULL, 1, NULL),
(1442, 1442, 1, 'Dora', 'Vukelić', 6, b'1', NULL, 1, NULL),
(1443, 1443, 1, 'Vladimir', 'Miovec', 4, b'1', NULL, 1, NULL),
(1444, 1444, 1, 'Patrick', 'Burton', 12, b'1', NULL, 1, NULL),
(1445, 1445, 1, 'Bojana', 'Nikolić', 12, b'1', NULL, 1, NULL),
(1446, 1446, 1, 'Boško', 'Opalić', 12, b'1', NULL, 1, NULL),
(1447, 1447, 1, 'Dražen', 'Tutić', 12, b'1', NULL, 1, NULL),
(1448, 1448, 1, 'Tomislav', 'Vuk', 12, b'1', NULL, 1, NULL),
(1449, 1449, 1, 'Roko', 'Željem', 5, b'1', NULL, 1, NULL),
(1450, 1450, 1, 'Hrvoje', 'Dasović', 5, b'1', NULL, 1, NULL),
(1451, 1451, 1, 'Borna', 'Kuzmanić', 3, b'1', NULL, 1, NULL),
(1452, 1452, 1, 'Ivana', 'Tkalec', 7, b'1', NULL, 1, NULL),
(1453, 1453, 1, 'Robert', 'Orehoci', 1, b'1', NULL, 1, NULL),
(1454, 1454, 1, 'Kristina', 'Zubin', 12, b'1', NULL, 1, NULL),
(1455, 1455, 1, 'Teo', 'Tutić', 12, b'1', NULL, 1, NULL),
(1456, 1456, 1, 'Beatrice', 'Velimirović', 6, b'1', NULL, 1, NULL),
(1457, 1457, 1, 'Marija', 'Sirovec', 12, b'1', NULL, 1, NULL),
(1458, 1458, 1, 'Iva', 'Detić', 11, b'1', NULL, 1, NULL),
(1459, 1459, 1, 'Matija', 'Razum', 3, b'1', NULL, 1, NULL),
(1460, 1460, 1, 'Aleksandra', 'Miličević', 12, b'1', NULL, 1, NULL),
(1461, 1461, 1, 'Gabrijel', 'Solenički', 4, b'1', NULL, 1, NULL),
(1462, 1462, 1, 'Helena', 'Ćubela', 4, b'1', NULL, 1, NULL),
(1463, 1463, 1, 'Melanija', 'Majer', 11, b'1', NULL, 1, NULL),
(1464, 1464, 1, 'Luka', 'Hofman', 11, b'1', NULL, 1, NULL),
(1465, 1465, 1, 'Olga', 'Jerković Perić', 5, b'1', NULL, 1, NULL),
(1466, 1466, 1, 'Nikolina', 'Šantić', 1, b'1', NULL, 1, NULL),
(1467, 1467, 1, 'Lucija', 'Hercigonja', 5, b'1', NULL, 1, NULL),
(1468, 1468, 1, 'Ivor', 'Novosel', 12, b'1', NULL, 1, NULL),
(1469, 1469, 1, 'Jelena', 'Lesjak', 3, b'1', NULL, 1, NULL),
(1470, 1470, 1, 'Zvjezdana', 'Govedarica', 3, b'1', NULL, 1, NULL),
(1471, 1471, 1, 'Davor', 'Čapeta', 5, b'1', NULL, 1, NULL),
(1472, 1472, 1, 'Ana', 'Beblek', 4, b'1', NULL, 1, NULL),
(1473, 1473, 1, 'Martina', 'Bedeković Tanković', 4, b'1', NULL, 1, NULL),
(1474, 1474, 1, 'Karlo', 'Borisavljević', 12, b'1', NULL, 1, NULL),
(1475, 1475, 1, 'Robert', 'Kaniški', 6, b'1', NULL, 1, NULL),
(1476, 1476, 1, 'Sandra', 'Latinger', 5, b'1', NULL, 1, NULL),
(1477, 1477, 1, 'Nika', 'Kolarek', 12, b'1', NULL, 1, NULL),
(1478, 1478, 1, 'Ivana', 'Kuzmanić', 3, b'1', NULL, 1, NULL),
(1479, 1479, 1, 'Dario', 'Sekušak', 5, b'1', NULL, 1, NULL),
(1480, 1480, 1, 'Zdenko', 'Horjan', 12, b'1', NULL, 1, NULL),
(1481, 1481, 1, 'Ivano', 'Črep', 3, b'1', NULL, 1, NULL),
(1482, 1482, 1, 'Nenad', 'Lovrec', 12, b'1', NULL, 1, NULL),
(1483, 1483, 1, 'Ines', 'Kos', 5, b'1', NULL, 1, NULL),
(1484, 1484, 1, 'Ivan', 'Pongrac', 3, b'1', NULL, 1, NULL),
(1485, 1485, 1, 'Vittoria', 'Velimirović', 6, b'1', NULL, 1, NULL),
(1486, 1486, 1, 'Krešimir', 'Tušek', 12, b'1', NULL, 1, NULL),
(1487, 1487, 1, 'Darko', 'Surjan', 5, b'1', NULL, 1, NULL),
(1488, 1488, 1, 'Ana', 'Mandić', 5, b'1', NULL, 1, NULL),
(1489, 1489, 1, 'Matija', 'Kučinac', 12, b'1', NULL, 1, NULL),
(1490, 1490, 1, 'Milan', 'Radočaj', 1, b'1', NULL, 1, NULL),
(1491, 1491, 1, 'Iva', 'Derdić', 4, b'1', NULL, 1, NULL),
(1492, 1492, 1, 'Kristijan', 'Šivak', 12, b'1', NULL, 1, NULL),
(1493, 1493, 1, 'Lucija Marijela', 'Štambuk', 2, b'1', NULL, 1, NULL),
(1494, 1494, 1, 'Karlo', 'Gobec', 12, b'1', NULL, 1, NULL),
(1495, 1495, 1, 'Miroslav', 'Kralj', 12, b'1', NULL, 1, NULL),
(1496, 1496, 1, 'Ivan', 'Habuš', 12, b'1', NULL, 1, NULL),
(1497, 1497, 1, 'Luka', 'Krajnović', 12, b'1', NULL, 1, NULL),
(1498, 1498, 1, 'Goran', 'Vodopija', 5, b'1', NULL, 1, NULL),
(1499, 1499, 1, 'Vanja', 'Suhina', 5, b'1', NULL, 1, NULL),
(1500, 1500, 1, 'Ivan', 'Posinjak', 5, b'1', NULL, 1, NULL),
(1501, 1501, 1, 'Marija', 'Gobec', 12, b'1', NULL, 1, NULL),
(1502, 1502, 1, 'Vedrana', 'Radić', 12, b'1', NULL, 1, NULL),
(1503, 1503, 1, 'Mika', 'Smital', 12, b'1', NULL, 1, NULL),
(1504, 1504, 1, 'Željka', 'Gajdek', 4, b'1', NULL, 1, NULL),
(1505, 1505, 1, 'Zdravko', 'Šaflin', 4, b'1', NULL, 1, NULL),
(1506, 1506, 1, 'Edi', 'Ocvirk', 3, b'1', NULL, 1, NULL),
(1507, 1507, 1, 'Lovro', 'Janžek', 7, b'1', NULL, 1, NULL),
(1508, 1508, 1, 'Paula', 'Prpić', 12, b'1', NULL, 1, NULL),
(1509, 1509, 1, 'Borna', 'Miljković', 4, b'1', NULL, 1, NULL),
(1510, 1510, 1, 'Tina', 'Katić', 12, b'1', NULL, 1, NULL),
(1511, 1511, 1, 'Jakov', 'Grabar', 11, b'1', NULL, 1, NULL),
(1512, 1512, 1, 'Marta', 'Kukec', 12, b'1', NULL, 1, NULL),
(1513, 1513, 1, 'Una Beata', 'Pevec', 11, b'1', NULL, 1, NULL),
(1514, 1514, 1, 'Ivor', 'Jelić', 5, b'1', NULL, 1, NULL),
(1515, 1515, 1, 'Mirjana', 'Horvat', 6, b'1', NULL, 1, NULL),
(1516, 1516, 1, 'Mario', 'Nimac', 5, b'1', NULL, 1, NULL),
(1517, 1517, 1, 'Marijan', 'Mulig', 4, b'1', NULL, 1, NULL),
(1518, 1518, 1, 'Marinka', 'Mak', 11, b'1', NULL, 1, NULL),
(1519, 1519, 1, 'Josip', 'Odžić', 4, b'1', NULL, 1, NULL),
(1520, 1520, 1, 'Radenko', 'Romanović', 6, b'1', NULL, 1, NULL),
(1521, 1521, 1, 'Marko', 'Jurač', 12, b'1', NULL, 1, NULL),
(1522, 1522, 1, 'Jan', 'Gobec', 12, b'1', NULL, 1, NULL),
(1523, 1523, 1, 'Ivana', 'Horbec', 12, b'1', NULL, 1, NULL),
(1524, 1524, 1, 'Petar', 'Korlaet', 12, b'1', NULL, 1, NULL),
(1525, 1525, 1, 'Ivana', 'Mahečić', 5, b'1', NULL, 1, NULL),
(1526, 1526, 1, 'Nikolina', 'Miovec', 4, b'1', NULL, 1, NULL),
(1527, 1527, 1, 'Petra', 'Turk', 7, b'1', NULL, 1, NULL),
(1528, 1528, 1, 'Sara', 'Delić', 4, b'1', NULL, 1, NULL),
(1529, 1529, 1, 'Ivana', 'Varga Horjan', 12, b'1', NULL, 1, NULL),
(1530, 1530, 1, 'Monika', 'Pavić', 12, b'1', NULL, 1, NULL),
(1531, 1531, 1, 'Srećko', 'Radulović', 11, b'1', NULL, 1, NULL),
(1532, 1532, 1, 'Mia', 'Lovrec', 12, b'1', NULL, 1, NULL),
(1533, 1533, 1, 'Nenad', 'Mihaljević', 12, b'1', NULL, 1, NULL),
(1534, 1534, 1, 'Marko', 'Gamberger', 12, b'1', NULL, 1, NULL),
(1535, 1535, 1, 'Dominik', 'Kirin', 6, b'1', NULL, 1, NULL),
(1536, 1536, 1, 'Nino', 'Stančić Vidrač', 12, b'1', NULL, 1, NULL),
(1537, 1537, 1, 'Vedran', 'Bijelić', 1, b'1', NULL, 1, NULL),
(1538, 1538, 1, 'Nika', 'Kuzmanić', 11, b'1', NULL, 1, NULL),
(1539, 1539, 1, 'Fran', 'Zagrajski', 11, b'1', NULL, 1, NULL),
(1540, 1540, 1, 'Nikola', 'Tot', 3, b'1', NULL, 1, NULL),
(1541, 1541, 1, 'Monika', 'Kovaljesko', 5, b'1', NULL, 1, NULL),
(1542, 1542, 1, 'Gloria', 'Šantić', 1, b'1', NULL, 1, NULL),
(1543, 1543, 1, 'Sonja', 'Lesjak', 3, b'1', NULL, 1, NULL),
(1544, 1544, 1, 'Teodora', 'Kučinac', 12, b'1', NULL, 1, NULL),
(1545, 1545, 1, 'Miodrag', 'Truhlaž', 1, b'1', NULL, 1, NULL),
(1546, 1546, 1, 'Goran', 'Rihter', 5, b'1', NULL, 1, NULL),
(1547, 1547, 1, 'Ivana', 'Radoš', 12, b'1', NULL, 1, NULL),
(1548, 1548, 1, 'Ivica', 'Mesić', 12, b'1', NULL, 1, NULL),
(1549, 1549, 1, 'Ana', 'Delić', 4, b'1', NULL, 1, NULL),
(1550, 1550, 1, 'Ines', 'Jurač', 12, b'1', NULL, 1, NULL),
(1551, 1551, 1, 'Biserka', 'Vodopija', 11, b'1', NULL, 1, NULL),
(1552, 1552, 1, 'Paula', 'Vrdoljak', 12, b'1', NULL, 1, NULL),
(1553, 1553, 1, 'Karlo', 'Lesjak', 3, b'1', NULL, 1, NULL),
(1554, 1554, 1, 'Damir', 'Hercigonja', 5, b'1', NULL, 1, NULL),
(1555, 1555, 1, 'Branko', 'Crljenica', 7, b'1', NULL, 1, NULL),
(1556, 1556, 1, 'Željko', 'Ulip', 6, b'1', NULL, 1, NULL),
(1557, 1557, 1, 'Janko', 'Hodak', 12, b'1', NULL, 1, NULL),
(1558, 1558, 1, 'Darko', 'Duhović', 7, b'1', NULL, 1, NULL),
(1559, 1559, 1, 'Marijan', 'Bogović', 4, b'1', NULL, 1, NULL),
(1560, 1560, 1, 'Maja', 'Pirija', 5, b'1', NULL, 1, NULL),
(1561, 1561, 1, 'Irena', 'Čorko Meštrović', 5, b'1', NULL, 1, NULL),
(1562, 1562, 1, 'Darko', 'Merunka', 6, b'1', NULL, 1, NULL),
(1563, 1563, 1, 'Dario', 'Štambuk', 2, b'1', NULL, 1, NULL),
(1564, 1564, 1, 'Mihaela', 'Kočila Petković', 7, b'1', NULL, 1, NULL),
(1565, 1565, 1, 'Ivana', 'Sertić', 5, b'1', NULL, 1, NULL),
(1566, 1566, 1, 'Kristijan', 'Verović', 3, b'1', NULL, 1, NULL),
(1567, 1567, 1, 'Tomislav', 'Jurač', 12, b'1', NULL, 1, NULL),
(1568, 1568, 1, 'Milan', 'Turkalj', 11, b'1', NULL, 1, NULL),
(1569, 1569, 1, 'Elizabeta', 'Bilić', 2, b'1', NULL, 1, NULL),
(1570, 1570, 1, 'Nebojša', 'Čubra', 10, b'1', NULL, 1, NULL),
(1571, 1571, 1, 'Sven', 'Divjak', 11, b'1', NULL, 1, NULL),
(1572, 1572, 1, 'Filip', 'Zadrović', 10, b'1', NULL, 1, NULL),
(1573, 1573, 1, 'Karlo', 'Kadović', 11, b'1', NULL, 1, NULL),
(1574, 1574, 1, 'Dario', 'Kostrić', 10, b'1', NULL, 1, NULL),
(1575, 1575, 1, 'Roko', 'Puharić', 3, b'1', NULL, 1, NULL),
(1576, 1576, 1, 'Hrvoje', 'Jelinić', 3, b'1', NULL, 1, NULL),
(1577, 1577, 1, 'Damir', 'Klobučarić', 1, b'1', NULL, 1, NULL),
(1578, 1578, 1, 'Lara', 'Možanić', 11, b'1', NULL, 1, NULL),
(1579, 1579, 1, 'Željko', 'Plentaj', 10, b'1', NULL, 1, NULL),
(1580, 1580, 1, 'Matej', 'Štambuk', 2, b'1', NULL, 1, NULL),
(1581, 1581, 1, 'Nikola', 'Škorić', 5, b'1', NULL, 1, NULL),
(1582, 1582, 1, 'Šime', 'Šarić', 10, b'1', NULL, 1, NULL),
(1583, 1583, 1, 'Despot', 'Matijević', 10, b'1', NULL, 1, NULL),
(1584, 1584, 1, 'Vid', 'Hovorka', 3, b'1', NULL, 1, NULL),
(1585, 1585, 1, 'Ivan', 'Maršić', 10, b'1', NULL, 1, NULL),
(1586, 1586, 1, 'Predrag', 'Mađarić', 2, b'1', NULL, 1, NULL),
(1587, 1587, 1, 'Marina', 'Kopjar', 2, b'1', NULL, 1, NULL),
(1588, 1588, 1, 'Ivan', 'Čurić', 10, b'1', NULL, 1, NULL),
(1589, 1589, 1, 'Nastasia', 'Melmajer', 10, b'1', NULL, 1, NULL),
(1590, 1590, 1, 'Dalibor', 'Sovilj', 10, b'1', NULL, 1, NULL),
(1591, 1591, 1, 'Hana', 'Uranić', 11, b'1', NULL, 1, NULL),
(1592, 1592, 1, 'Franjo', 'Magušić', 10, b'1', NULL, 1, NULL),
(1593, 1593, 1, 'Matej', 'Čović', 6, b'1', NULL, 1, NULL),
(1594, 1594, 1, 'Andrej', 'Biro', 10, b'1', NULL, 1, NULL),
(1595, 1595, 1, 'Pia', 'Ocvirk', 3, b'1', NULL, 1, NULL),
(1596, 1596, 1, 'Nenad', 'Zdjelar', 4, b'1', NULL, 1, NULL),
(1597, 1597, 1, 'Janik', 'Martinčević', 11, b'1', NULL, 1, NULL),
(1598, 1598, 1, 'Marko', 'Vrabec', 10, b'1', NULL, 1, NULL),
(1599, 1599, 1, 'Antonio', 'Martinović', 10, b'1', NULL, 1, NULL),
(1600, 1600, 1, 'Sara', 'Peter', 10, b'1', NULL, 1, NULL),
(1601, 1601, 1, 'Filip', 'Juraga', 11, b'1', NULL, 1, NULL),
(1602, 1602, 1, 'Karlo', 'Kobijak', 10, b'1', NULL, 1, NULL),
(1603, 1603, 1, 'Mario', 'Gotal', 10, b'1', NULL, 1, NULL),
(1604, 1604, 1, 'Mario', 'Gabrić', 10, b'1', NULL, 1, NULL),
(1605, 1605, 1, 'Davor', 'Šćuric', 4, b'1', NULL, 1, NULL),
(1606, 1606, 1, 'Lana', 'Pajčin', 10, b'1', NULL, 1, NULL),
(1607, 1607, 1, 'Draženka', 'Birkić', 4, b'1', NULL, 1, NULL),
(1608, 1608, 1, 'Alan', 'Omerčić', 6, b'1', NULL, 1, NULL),
(1609, 1609, 1, 'Miroslav', 'Smuđ', 11, b'1', NULL, 1, NULL),
(1610, 1610, 1, 'Ivan', 'Draušnik', 1, b'1', NULL, 1, NULL),
(1611, 1611, 1, 'Josip', 'Župarić', 10, b'1', NULL, 1, NULL),
(1612, 1612, 1, 'Eni', 'Nikolić', 10, b'1', NULL, 1, NULL),
(1613, 1613, 1, 'Ana', 'Kovačević', 10, b'1', NULL, 1, NULL),
(1614, 1614, 1, 'Sandra', 'Stinčić Clarke', 4, b'1', NULL, 1, NULL),
(1615, 1615, 1, 'Dan', 'Kobasić', 4, b'1', NULL, 1, NULL),
(1616, 1616, 1, 'Ivan', 'Jukić', 10, b'1', NULL, 1, NULL),
(1617, 1617, 1, 'Helena', 'Omerčić', 6, b'1', NULL, 1, NULL),
(1618, 1618, 1, 'Hanna', 'Fejzić', 6, b'1', NULL, 1, NULL),
(1619, 1619, 1, 'Sara', 'Vugrek', 11, b'1', NULL, 1, NULL),
(1620, 1620, 1, 'Jakov', 'Kamenicki', 10, b'1', NULL, 1, NULL),
(1621, 1621, 1, 'Vita', 'Putarek', 11, b'1', NULL, 1, NULL),
(1622, 1622, 1, 'Dolores', 'Pajčin', 10, b'1', NULL, 1, NULL),
(1623, 1623, 1, 'Tea', 'Tot', 3, b'1', NULL, 1, NULL),
(1624, 1624, 1, 'Martin', 'Grivić', 11, b'1', NULL, 1, NULL),
(1625, 1625, 1, 'Roman', 'Petak', 11, b'1', NULL, 1, NULL),
(1626, 1626, 1, 'Samuel', 'Spretnjak', 4, b'1', NULL, 1, NULL),
(1627, 1627, 1, 'Eduard', 'Perković', 1, b'1', NULL, 1, NULL),
(1628, 1628, 1, 'Predrag', 'Martinčević', 11, b'1', NULL, 1, NULL),
(1629, 1629, 1, 'Matjaž', 'Štanfel', 10, b'1', NULL, 1, NULL),
(1630, 1630, 1, 'Kristijan', 'Grivić', 11, b'1', NULL, 1, NULL),
(1631, 1631, 1, 'Sara', 'Ivković', 10, b'1', NULL, 1, NULL),
(1632, 1632, 1, 'Iva', 'Balaban', 10, b'1', NULL, 1, NULL),
(1633, 1633, 1, 'Karlo', 'Bartolić', 11, b'1', NULL, 1, NULL),
(1634, 1634, 1, 'Ana', 'Balaban', 10, b'1', NULL, 1, NULL),
(1635, 1635, 1, 'Luka', 'Ivković', 10, b'1', NULL, 1, NULL),
(1636, 1636, 1, 'Mateo', 'Bojo', 10, b'1', NULL, 1, NULL),
(1637, 1637, 1, 'Jakov', 'Pravica', 11, b'1', NULL, 1, NULL),
(1638, 1638, 1, 'Armin', 'Mehinović', 10, b'1', NULL, 1, NULL),
(1639, 1639, 1, 'Hrvoje', 'Grginov', 10, b'1', NULL, 1, NULL),
(1640, 1640, 1, 'Tamara', 'Filipović', 10, b'1', NULL, 1, NULL),
(1641, 1641, 1, 'Miroslav', 'Priher', 2, b'1', NULL, 1, NULL),
(1642, 1642, 1, 'Nikola', 'Pajčin', 10, b'1', NULL, 1, NULL),
(1643, 1643, 1, 'Josip', 'Leovac', 3, b'1', NULL, 1, NULL),
(1644, 1644, 1, 'Mislav', 'Putarek', 11, b'1', NULL, 1, NULL),
(1645, 1645, 1, 'Maja', 'Pongrac', 3, b'1', NULL, 1, NULL),
(1646, 1646, 1, 'Anja', 'Martinez', 11, b'1', NULL, 1, NULL),
(1647, 1647, 1, 'Krunoslav', 'Kokoš', 10, b'1', NULL, 1, NULL),
(1648, 1648, 1, 'Marijana', 'Čerkezović', 10, b'1', NULL, 1, NULL),
(1649, 1649, 1, 'Jana', 'Kovačić', 11, b'1', NULL, 1, NULL),
(1650, 1650, 1, 'Miodrag', 'Truhlaž', 10, b'1', NULL, 1, NULL),
(1651, 1651, 1, 'Diana', 'Buzov', 10, b'1', NULL, 1, NULL),
(1652, 1652, 1, 'Dora', 'Rodeš', 11, b'1', NULL, 1, NULL),
(1653, 1653, 1, 'Stela', 'Peter', 10, b'1', NULL, 1, NULL),
(1654, 1654, 1, 'Tihomir', 'Topalović', 10, b'1', NULL, 1, NULL),
(1655, 1655, 1, 'Mirjana', 'Marchiotti', 6, b'1', NULL, 1, NULL),
(1656, 1656, 1, 'Sanja', 'Benaković', 6, b'1', NULL, 1, NULL),
(1657, 1657, 1, 'Hiba', 'Amaneh', 11, b'1', NULL, 1, NULL),
(1658, 1658, 1, 'Lucija', 'Jertec', 11, b'1', NULL, 1, NULL),
(1659, 1659, 1, 'Marija', 'Kirić', 11, b'1', NULL, 1, NULL),
(1660, 1660, 1, 'Sven Ivor', 'Lebinac', 11, b'1', NULL, 1, NULL),
(1661, 1661, 1, 'Vesna', 'Pascuttini-Juraga', 11, b'1', NULL, 1, NULL),
(1662, 1662, 1, 'Neven', 'Vodopija', 11, b'1', NULL, 1, NULL),
(1663, 1663, 1, 'Maja', 'Srebačić', 2, b'1', NULL, 1, NULL),
(1664, 1664, 1, 'Damir', 'Popović', 2, b'1', NULL, 1, NULL),
(1665, 1665, 1, 'Mark', 'Jelinić', 3, b'1', NULL, 1, NULL),
(1666, 1666, 1, 'Una', 'Jelinić', 3, b'1', NULL, 1, NULL),
(1667, 1667, 1, 'Eva', 'Magdić Govedarica', 3, b'1', NULL, 1, NULL),
(1668, 1668, 1, 'Zvonimir', 'Guliš', 3, b'1', NULL, 1, NULL),
(1669, 1669, 1, 'David', 'Skopljak', 3, b'1', NULL, 1, NULL),
(1670, 1670, 1, 'Slađana', 'Ovčarić', 5, b'1', NULL, 1, NULL),
(1671, 1671, 1, 'Igor', 'Acketa', 4, b'1', NULL, 1, NULL),
(1672, 1672, 1, 'Ivan', 'Đanić', 4, b'1', NULL, 1, NULL),
(1673, 1673, 1, 'Marko', 'Mlinac', 4, b'1', NULL, 1, NULL),
(1674, 1674, 1, 'Mijat', 'Perić', 4, b'1', NULL, 1, NULL),
(1675, 1675, 1, 'Drago', 'Rusan', 4, b'1', NULL, 1, NULL),
(1676, 1676, 1, 'Hana', 'Sokolović', 1, b'1', NULL, 1, NULL),
(1677, 1677, 1, 'Mladen', 'Perica', 1, b'1', NULL, 1, NULL),
(1678, 1678, 1, 'Petar', 'Perica', 1, b'1', NULL, 1, NULL),
(1679, 1679, 1, 'Siniša', 'Muhtić', 1, b'1', NULL, 1, NULL),
(1680, 1680, 1, 'Nikolina', 'Renić', 8, b'1', NULL, 1, NULL),
(1681, 1681, 1, 'Marija', 'Tišljar', 8, b'1', NULL, 1, NULL),
(1682, 1682, 1, 'Antun', 'Tišljar', 8, b'1', NULL, 1, NULL),
(1683, 1683, 1, 'Iva', 'Renić', 8, b'1', NULL, 1, NULL),
(1684, 1684, 1, 'Lucia Gianna', 'Bašić', 8, b'1', NULL, 1, NULL),
(1685, 1685, 1, 'Marko', 'Renić', 8, b'1', NULL, 1, NULL),
(1686, 1686, 1, 'Antonio', 'Kralj', 8, b'1', NULL, 1, NULL),
(1687, 1687, 1, 'Borna', 'Bašić', 8, b'1', NULL, 1, NULL),
(1688, 1688, 1, 'Niko', 'Renić', 8, b'1', NULL, 1, NULL),
(1689, 1689, 1, 'Petar', 'Renić', 8, b'1', NULL, 1, NULL),
(1690, 1690, 1, 'Kristina', 'Babić', 12, b'1', NULL, 1, NULL),
(1691, 1691, 1, 'Goran', 'Babić', 12, b'1', NULL, 1, NULL),
(1692, 1692, 1, 'Stjepan', 'Babić', 12, b'1', NULL, 1, NULL),
(1693, 1693, 1, 'Frane', 'Baće', 12, b'1', NULL, 1, NULL),
(1694, 1694, 1, 'Luna', 'Đokić', 12, b'1', NULL, 1, NULL),
(1695, 1695, 1, 'Siniša', 'Đukić', 12, b'1', NULL, 1, NULL),
(1696, 1696, 1, 'Josip', 'Gojević', 12, b'1', NULL, 1, NULL),
(1697, 1697, 1, 'Tomislav', 'Grguric', 12, b'1', NULL, 1, NULL),
(1698, 1698, 1, 'Bernard', 'Ivezic', 12, b'1', NULL, 1, NULL),
(1699, 1699, 1, 'Mirela', 'Josipović', 12, b'1', NULL, 1, NULL),
(1700, 1700, 1, 'Darko', 'Josipović', 12, b'1', NULL, 1, NULL),
(1701, 1701, 1, 'Eugen', 'Jurković', 12, b'1', NULL, 1, NULL),
(1702, 1702, 1, 'Mia', 'Kamenjarin', 12, b'1', NULL, 1, NULL),
(1703, 1703, 1, 'Fran', 'Karlović', 12, b'1', NULL, 1, NULL),
(1704, 1704, 1, 'Bartol', 'Kekić', 12, b'1', NULL, 1, NULL),
(1705, 1705, 1, 'Karla', 'Kiš Kamenjarin', 12, b'1', NULL, 1, NULL),
(1706, 1706, 1, 'Roko', 'Kolar', 12, b'1', NULL, 1, NULL),
(1707, 1707, 1, 'Antonio', 'Kolar', 12, b'1', NULL, 1, NULL),
(1708, 1708, 1, 'Matea', 'Kulušić', 12, b'1', NULL, 1, NULL),
(1709, 1709, 1, 'Ana', 'Medved', 12, b'1', NULL, 1, NULL),
(1710, 1710, 1, 'Bojan', 'Mihaljević', 12, b'1', NULL, 1, NULL),
(1711, 1711, 1, 'Nataša', 'Odak', 12, b'1', NULL, 1, NULL),
(1712, 1712, 1, 'Jakov', 'Odak', 12, b'1', NULL, 1, NULL),
(1713, 1713, 1, 'Toni', 'Odak', 12, b'1', NULL, 1, NULL),
(1714, 1714, 1, 'Danijel', 'Odak', 12, b'1', NULL, 1, NULL),
(1715, 1715, 1, 'Leonard', 'Pajk', 12, b'1', NULL, 1, NULL),
(1716, 1716, 1, 'Barbara', 'Pajk', 12, b'1', NULL, 1, NULL),
(1717, 1717, 1, 'Ana', 'Pavin', 12, b'1', NULL, 1, NULL),
(1718, 1718, 1, 'Leon', 'Pavliša', 12, b'1', NULL, 1, NULL),
(1719, 1719, 1, 'Martina', 'Ružić', 12, b'1', NULL, 1, NULL),
(1720, 1720, 1, 'Zoran', 'Ružić', 12, b'1', NULL, 1, NULL),
(1721, 1721, 1, 'Tonka', 'Ružić', 12, b'1', NULL, 1, NULL),
(1722, 1722, 1, 'Rok', 'Ružić', 12, b'1', NULL, 1, NULL),
(1723, 1723, 1, 'Paul', 'Skobe', 12, b'1', NULL, 1, NULL),
(1724, 1724, 1, 'Roberta', 'Valai', 12, b'1', NULL, 1, NULL),
(1725, 1725, 1, 'Romana', 'Večerić', 12, b'1', NULL, 1, NULL),
(1726, 1726, 1, 'Marko', 'Žabčić', 12, b'1', NULL, 1, NULL),
(1727, 1727, 1, 'Doris', 'Vunić', 10, b'1', NULL, 1, NULL),
(1728, 1728, 1, 'Kristina', 'Martinčević', 10, b'1', NULL, 1, NULL),
(1729, 1729, 1, 'Branimir', 'Kelava', 10, b'1', NULL, 1, NULL),
(1730, 1730, 1, 'Ante', 'Tipurić', 10, b'1', NULL, 1, NULL),
(1731, 1731, 1, 'Silvija', 'Balent', 10, b'1', NULL, 1, NULL),
(1732, 1732, 1, 'Antonija', 'Damjanović', 10, b'1', NULL, 1, NULL),
(1733, 1733, 1, 'Marko', 'Mirković', 10, b'1', NULL, 1, NULL),
(1734, 1734, 1, 'Ivan', 'Pavlović', 10, b'1', NULL, 1, NULL),
(1735, 1735, 1, 'Tomislav', 'Čulina', 10, b'1', NULL, 1, NULL),
(1736, 1736, 1, 'Sven', 'Brkanić', 10, b'1', NULL, 1, NULL),
(1737, 1737, 1, 'Ante', 'Perić', 10, b'1', NULL, 1, NULL),
(1738, 1738, 1, 'Nikola', 'Bićanić', 10, b'1', NULL, 1, NULL),
(1739, 1739, 1, 'Antonela', 'Žderić', 10, b'1', NULL, 1, NULL),
(1740, 1740, 1, 'Manuela', 'Crnković', 10, b'1', NULL, 1, NULL),
(1741, 1741, 1, 'Stipan', 'Marinčić', 10, b'1', NULL, 1, NULL),
(1742, 1742, 1, 'Marko', 'Luketić', 10, b'1', NULL, 1, NULL),
(1743, 1743, 1, 'Iva', 'Baržić', 10, b'1', NULL, 1, NULL),
(1744, 1744, 1, 'Ema', 'Mihaljević', 10, b'1', NULL, 1, NULL),
(1745, 1745, 1, 'Franjo', 'Radošević', 12, b'1', NULL, 1, NULL),
(1746, 1746, 1, 'Maja', 'Duvnjak', 12, b'1', NULL, 1, NULL),
(1747, 1747, 1, 'Iva', 'Drganc', 12, b'1', NULL, 1, NULL),
(1748, 1748, 1, 'Filipa', 'Beroš', 12, b'1', NULL, 1, NULL),
(1749, 1749, 1, 'Martina', 'Knezović', 12, b'1', NULL, 1, NULL),
(1750, 1750, 1, 'Barbara', 'Fumić', 12, b'1', NULL, 1, NULL),
(1751, 1751, 1, 'Marija', 'Herceg', 12, b'1', NULL, 1, NULL),
(1752, 1752, 1, 'Zvonimir', 'Džapo', 5, b'1', NULL, 1, NULL),
(1753, 1753, 1, 'Paola', 'Fumić', 5, b'1', NULL, 1, NULL),
(1754, 1754, 1, 'Ira', 'Miličević', 5, b'1', NULL, 1, NULL),
(1755, 1755, 1, 'Asmir', 'Mašić', 6, b'1', NULL, 1, NULL),
(1756, 1756, 1, 'Noa', 'Stančić', 11, b'1', NULL, 1, NULL),
(1757, 1757, 1, 'Emanuel', 'Vukovac', 11, b'1', NULL, 1, NULL),
(1758, 1758, 1, 'Andrej', 'Martinez', 11, b'1', NULL, 1, NULL),
(1759, 1759, 1, 'Nina', 'Veseljak', 11, b'1', NULL, 1, NULL),
(1760, 1760, 1, 'Irena', 'Detić', 2, b'1', NULL, 1, NULL),
(1761, 1761, 1, 'Filip', 'Jurak', 2, b'1', NULL, 1, NULL),
(1762, 1762, 1, 'Iva', 'Mađarić', 2, b'1', NULL, 1, NULL),
(1763, 1763, 1, 'Marta', 'Petak', 2, b'1', NULL, 1, NULL),
(1764, 1764, 1, 'Šimun', 'Ilčić', 2, b'1', NULL, 1, NULL),
(1765, 1765, 1, 'Vanja', 'Radovanović', 2, b'1', NULL, 1, NULL),
(1766, 1766, 1, 'Mislav', 'Radovanović', 2, b'1', NULL, 1, NULL),
(1767, 1767, 1, 'Ema', 'Kovačić', 2, b'1', NULL, 1, NULL),
(1768, 1768, 1, 'Mia', 'Kovačić', 2, b'1', NULL, 1, NULL),
(1769, 1769, 1, 'David', 'Lazar', 2, b'1', NULL, 1, NULL),
(1770, 1770, 1, 'Bruno', 'Marić', 2, b'1', NULL, 1, NULL),
(1771, 1771, 1, 'Tomislav', 'Hlad', 2, b'1', NULL, 1, NULL),
(1772, 1772, 1, 'Leon', 'Hlad', 2, b'1', NULL, 1, NULL),
(1773, 1773, 1, 'Matija', 'Hlad', 2, b'1', NULL, 1, NULL),
(1774, 1774, 1, 'Igor', 'Milinković', 2, b'1', NULL, 1, NULL),
(1775, 1775, 1, 'Žarko', 'Radovanović', 2, b'1', NULL, 1, NULL),
(1776, 1776, 1, 'Damir', 'Suban', 3, b'1', NULL, 1, NULL),
(1777, 1777, 1, 'Ivana', 'Tkalčić Suban', 3, b'1', NULL, 1, NULL),
(1778, 1778, 1, 'Robert', 'Cvetković', 3, b'1', NULL, 1, NULL),
(1779, 1779, 1, 'Eli', 'Tadić', 3, b'1', NULL, 1, NULL),
(1780, 1780, 1, 'Dominik', 'Mihaljević', 3, b'1', NULL, 1, NULL),
(1781, 1781, 1, 'Dražen', 'Perković', 3, b'1', NULL, 1, NULL),
(1782, 1782, 1, 'Nada', 'Bilobrk', 5, b'1', NULL, 1, NULL),
(1783, 1783, 1, 'Hrvoje', 'Bolešić', 5, b'1', NULL, 1, NULL),
(1784, 1784, 1, 'Liliana', 'Božić', 5, b'1', NULL, 1, NULL),
(1785, 1785, 1, 'Asja', 'Dubravčić', 5, b'1', NULL, 1, NULL),
(1786, 1786, 1, 'Ivana', 'Mikulinjak', 5, b'1', NULL, 1, NULL),
(1787, 1787, 1, 'Silvije', 'Nosić', 5, b'1', NULL, 1, NULL),
(1788, 1788, 1, 'Dario', 'Rocco', 5, b'1', NULL, 1, NULL),
(1789, 1789, 1, 'Dominik', 'Sabljak', 5, b'1', NULL, 1, NULL),
(1790, 1790, 1, 'Vedran', 'Sabljić', 5, b'1', NULL, 1, NULL),
(1791, 1791, 1, 'Ana', 'Simon', 5, b'1', NULL, 1, NULL),
(1792, 1792, 1, 'Ružica', 'Jakopec', 5, b'1', NULL, 1, NULL),
(1793, 1793, 1, 'Tihomir', 'Despetović', 1, b'1', NULL, 1, NULL),
(1794, 1794, 1, 'Željka', 'Krupka', 1, b'1', NULL, 1, NULL),
(1795, 1795, 1, 'Julia', 'Artyushenko', 12, b'1', NULL, 1, NULL),
(1796, 1796, 1, 'Anna', 'Artyushenko', 12, b'1', NULL, 1, NULL),
(1797, 1797, 1, 'Irina', 'Artyushenko', 12, b'1', NULL, 1, NULL),
(1798, 1798, 1, 'Ivana', 'Gojević', 12, b'1', NULL, 1, NULL),
(1799, 1799, 1, 'Timea', 'Gojević', 12, b'1', NULL, 1, NULL),
(1800, 1800, 1, 'Adrian', 'Gojević', 12, b'1', NULL, 1, NULL),
(1801, 1801, 1, 'Petra', 'Gojević', 12, b'1', NULL, 1, NULL),
(1802, 1802, 1, 'Mihej', 'Ivančan', 12, b'1', NULL, 1, NULL),
(1803, 1803, 1, 'Šimun', 'Matešić', 12, b'1', NULL, 1, NULL),
(1804, 1804, 1, 'Lucas', 'Nežić', 12, b'1', NULL, 1, NULL),
(1805, 1805, 1, 'Ivan', 'Papak', 12, b'1', NULL, 1, NULL),
(1806, 1806, 1, 'Valentina', 'Skobe', 12, b'1', NULL, 1, NULL),
(1807, 1807, 1, 'Tymothy', 'Skobe', 12, b'1', NULL, 1, NULL),
(1808, 1808, 1, 'Ivan', 'Žufić', 12, b'1', NULL, 1, NULL),
(1809, 1809, 1, 'Smiljana', 'Čuka Husnjak', 12, b'1', NULL, 1, NULL),
(1810, 1810, 1, 'Fran', 'Fran Husnjak', 12, b'1', NULL, 1, NULL),
(1811, 1811, 1, 'Antonija', 'Banovic', 12, b'1', NULL, 1, NULL),
(1812, 1812, 1, 'Mirna', 'Grgurić', 12, b'1', NULL, 1, NULL),
(1813, 1813, 1, 'Margareta', 'Pavić', 12, b'1', NULL, 1, NULL),
(1814, 1814, 1, 'Vesna', 'Ciglar Kovač', 12, b'1', NULL, 1, NULL),
(1815, 1815, 1, 'Nediljko', 'Kovač', 12, b'1', NULL, 1, NULL),
(1816, 1816, 1, 'Alena', 'Detan Karlović', 12, b'1', NULL, 1, NULL),
(1817, 1817, 1, 'Branko', 'Polanec', 7, b'1', NULL, 1, NULL),
(1818, 1818, 1, 'Darko', 'Klarić', 7, b'1', NULL, 1, NULL),
(1819, 1819, 1, 'Marko', 'Klarić', 7, b'1', NULL, 1, NULL),
(1820, 1820, 1, 'Nikola', 'Tkalec', 7, b'1', NULL, 1, NULL),
(1821, 1821, 1, 'Robert', 'Tkalec', 7, b'1', NULL, 1, NULL),
(1822, 1822, 1, 'Vedran', 'Tkalec', 7, b'1', NULL, 1, NULL),
(1823, 1823, 1, 'Branimir', 'Vinko', 7, b'1', NULL, 1, NULL),
(1824, 1824, 1, 'Matej', 'Drmanović', 1, b'1', NULL, 1, NULL),
(1825, 1825, 1, 'Mihael', 'Grgić', 1, b'1', NULL, 1, NULL),
(1826, 1826, 1, 'Marija', 'Kaučić Perković', 1, b'1', NULL, 1, NULL),
(1827, 1827, 1, 'Goran', 'Grbac', 9, b'1', NULL, 1, NULL),
(1828, 1828, 1, 'Ivana', 'Herceg', 4, b'1', NULL, 1, NULL),
(1829, 1829, 1, 'Marija', 'Vida', 10, b'1', NULL, 1, NULL);
INSERT INTO `imeprezime` (`id`, `osoba_id`, `rbr`, `ime`, `prezime`, `klub_id`, `aktivno`, `idcheck_id`, `sintaksa_id`, `info`) VALUES
(1830, 1830, 1, 'Toni', 'Nikola', 9, b'1', NULL, 1, NULL),
(1831, 1831, 1, 'Patricija', 'Urbanc', 9, b'1', NULL, 1, NULL),
(1832, 1832, 1, 'Tihon', 'Salopek', 9, b'1', NULL, 1, NULL),
(1833, 1833, 1, 'Andrej', 'Šubat', 9, b'1', NULL, 1, NULL),
(1834, 1834, 1, 'Filip', 'Mlinarić', 7, b'1', NULL, 1, NULL),
(1835, 1835, 1, 'Tihomir', 'Salopek', 9, b'1', NULL, 1, NULL),
(1836, 1836, 1, 'Vladimir', 'Jurić', 4, b'1', NULL, 1, NULL),
(1837, 1837, 1, 'Franjo', 'Benjak', 2, b'1', NULL, 1, NULL),
(1838, 1838, 1, 'Ana', 'Grbac', 9, b'1', NULL, 1, NULL),
(1839, 1839, 1, 'Mario', 'Bilandžija', 10, b'1', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategorija`
--

CREATE TABLE `kategorija` (
  `id` int(11) NOT NULL,
  `oznaka` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `naziv` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `spol` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `min_dob` tinyint(4) NOT NULL,
  `max_dob` tinyint(4) NOT NULL,
  `dob_id` tinyint(4) NOT NULL,
  `grana_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kategorija`
--

INSERT INTO `kategorija` (`id`, `oznaka`, `naziv`, `spol`, `min_dob`, `max_dob`, `dob_id`, `grana_id`) VALUES
(101, 'M21A', 'seniori', 'M', 21, 34, 1, 1),
(102, 'Ž21A', 'seniorke', 'Ž', 21, 34, 1, 1),
(103, 'M70', 'veterani V', 'M', 70, 74, 3, 1),
(104, 'M65', 'veterani IV', 'M', 65, 69, 3, 1),
(105, 'M55', 'veterani III', 'M', 55, 59, 3, 1),
(106, 'M45', 'veterani II', 'M', 45, 49, 3, 1),
(107, 'M35', 'veterani I', 'M', 35, 39, 3, 1),
(108, 'M21B', 'seniori B', 'M', 21, 34, 1, 1),
(109, 'M20', 'juniori', 'M', 19, 20, 2, 1),
(110, 'M18', 'ml. juniori', 'M', 17, 18, 2, 1),
(111, 'M16', 'kadeti', 'M', 15, 16, 2, 1),
(112, 'M14', 'ml. kadeti', 'M', 13, 14, 2, 1),
(113, 'M12', 'dječaci', 'M', 11, 12, 2, 1),
(114, 'Ž70', 'veteranke V', 'Ž', 70, 74, 3, 1),
(115, 'Ž65', 'veteranke IV', 'Ž', 65, 69, 3, 1),
(116, 'Ž55', 'veteranke III', 'Ž', 55, 59, 3, 1),
(117, 'Ž45', 'veteranke II', 'Ž', 45, 49, 3, 1),
(118, 'Ž35', 'veteranke I', 'Ž', 35, 39, 3, 1),
(119, 'Ž21B', 'seniorke B', 'Ž', 21, 34, 1, 1),
(120, 'Ž20', 'juniorke', 'Ž', 19, 20, 2, 1),
(121, 'Ž18', 'ml. juniorke', 'Ž', 17, 18, 2, 1),
(122, 'Ž16', 'kadetkinje', 'Ž', 15, 16, 2, 1),
(123, 'Ž14', 'ml. kadetkinje', 'Ž', 13, 14, 2, 1),
(124, 'Ž12', 'djevojčice', 'Ž', 11, 12, 2, 1),
(201, 'M21', 'seniori', 'M', 21, 34, 1, 1),
(202, 'Ž21', 'seniorke', 'Ž', 21, 34, 1, 1),
(301, 'Open E', NULL, '-', 21, 34, 1, 2),
(302, 'Open A', NULL, '-', 21, 34, 1, 2),
(303, 'Paralimpic E', NULL, '-', 21, 34, 1, 2),
(304, 'Junior E', NULL, '-', 11, 20, 2, 2),
(401, 'ME', NULL, 'M', 21, 34, 1, 3),
(402, 'ŽE', NULL, 'Ž', 21, 34, 1, 3),
(403, 'M45', NULL, 'M', 45, 49, 3, 3),
(404, 'Ž45', NULL, 'Ž', 45, 49, 3, 3),
(405, 'M kratka', NULL, 'M', 21, 34, 1, 3),
(406, 'M15-18', NULL, 'M', 17, 18, 2, 3),
(407, 'M14', NULL, 'M', 13, 14, 2, 3),
(408, 'Ž kratka', NULL, 'Ž', 21, 34, 1, 3),
(409, 'Ž15-18', NULL, 'Ž', 17, 18, 2, 3),
(410, 'Ž14', NULL, 'Ž', 13, 14, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kategorija_liga`
--

CREATE TABLE `kategorija_liga` (
  `id` int(11) NOT NULL,
  `kategorija_id` int(11) NOT NULL,
  `liga_id` int(11) NOT NULL,
  `najjaca` bit(1) NOT NULL,
  `naj_dobna` bit(1) NOT NULL,
  `naj_juniori` bit(1) NOT NULL,
  `rbr` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kategorija_liga`
--

INSERT INTO `kategorija_liga` (`id`, `kategorija_id`, `liga_id`, `najjaca`, `naj_dobna`, `naj_juniori`, `rbr`) VALUES
(1, 101, 1, b'1', b'1', b'0', 1),
(2, 102, 1, b'1', b'1', b'0', 2),
(3, 103, 1, b'0', b'1', b'0', 3),
(4, 104, 1, b'0', b'1', b'0', 4),
(5, 105, 1, b'0', b'1', b'0', 5),
(6, 106, 1, b'0', b'1', b'0', 6),
(7, 107, 1, b'0', b'1', b'0', 7),
(8, 108, 1, b'0', b'0', b'0', 8),
(9, 109, 1, b'0', b'1', b'1', 9),
(10, 110, 1, b'0', b'1', b'0', 10),
(11, 111, 1, b'0', b'1', b'0', 11),
(12, 112, 1, b'0', b'1', b'0', 12),
(13, 113, 1, b'0', b'1', b'0', 13),
(14, 114, 1, b'0', b'1', b'0', 14),
(15, 115, 1, b'0', b'1', b'0', 15),
(16, 116, 1, b'0', b'1', b'0', 16),
(17, 117, 1, b'0', b'1', b'0', 17),
(18, 118, 1, b'0', b'1', b'0', 18),
(19, 119, 1, b'0', b'0', b'0', 19),
(20, 120, 1, b'0', b'1', b'1', 20),
(21, 121, 1, b'0', b'1', b'0', 21),
(22, 122, 1, b'0', b'1', b'0', 22),
(23, 123, 1, b'0', b'1', b'0', 23),
(24, 124, 1, b'0', b'1', b'0', 24),
(25, 201, 2, b'1', b'1', b'0', 25),
(26, 202, 2, b'1', b'1', b'0', 26),
(27, 104, 2, b'0', b'1', b'0', 27),
(28, 105, 2, b'0', b'1', b'0', 28),
(29, 106, 2, b'0', b'1', b'0', 29),
(30, 107, 2, b'0', b'1', b'0', 30),
(31, 109, 2, b'0', b'1', b'1', 31),
(32, 111, 2, b'0', b'1', b'0', 32),
(33, 113, 2, b'0', b'1', b'0', 33),
(34, 115, 2, b'0', b'1', b'0', 34),
(35, 116, 2, b'0', b'1', b'0', 35),
(36, 117, 2, b'0', b'1', b'0', 36),
(37, 118, 2, b'0', b'1', b'0', 37),
(38, 120, 2, b'0', b'1', b'1', 38),
(39, 122, 2, b'0', b'1', b'0', 39),
(40, 124, 2, b'0', b'1', b'0', 40),
(41, 301, 3, b'1', b'1', b'0', 41),
(42, 302, 3, b'0', b'0', b'0', 42),
(43, 303, 3, b'0', b'0', b'0', 43),
(44, 304, 3, b'0', b'1', b'1', 44),
(45, 401, 4, b'1', b'1', b'0', 45),
(46, 402, 4, b'1', b'1', b'0', 46),
(47, 403, 4, b'0', b'1', b'0', 47),
(48, 404, 4, b'0', b'1', b'0', 48),
(49, 405, 4, b'0', b'0', b'0', 49),
(50, 406, 4, b'0', b'1', b'1', 50),
(51, 407, 4, b'0', b'1', b'0', 51),
(52, 408, 4, b'0', b'0', b'0', 52),
(53, 409, 4, b'0', b'1', b'1', 53),
(54, 410, 4, b'0', b'1', b'0', 54);

-- --------------------------------------------------------

--
-- Table structure for table `klub`
--

CREATE TABLE `klub` (
  `id` int(11) NOT NULL,
  `naziv` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `oib` char(11) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `drzava_id` int(11) NOT NULL,
  `eposta` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `web` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `aktivan` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `klub`
--

INSERT INTO `klub` (`id`, `naziv`, `oib`, `drzava_id`, `eposta`, `web`, `aktivan`) VALUES
(1, 'OK Bjelovar', NULL, 1, NULL, NULL, 1),
(2, 'OK Ivan Merz', NULL, 1, NULL, NULL, 1),
(3, 'OK Japetić', NULL, 1, NULL, NULL, 1),
(4, 'OK Jelen', NULL, 1, NULL, NULL, 1),
(5, 'OK Kapela', NULL, 1, NULL, NULL, 1),
(6, 'OK Maksimir', NULL, 1, NULL, NULL, 1),
(7, 'OK Međimurje', NULL, 1, NULL, NULL, 1),
(8, 'OK Orion', NULL, 1, NULL, NULL, 1),
(9, 'OK Ris', NULL, 1, NULL, NULL, 0),
(10, 'OK Sova', NULL, 1, NULL, NULL, 1),
(11, 'OK Varaždin', NULL, 1, NULL, NULL, 1),
(12, 'OK Vihor', NULL, 1, NULL, NULL, 1),
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
  `klub_id` int(11) DEFAULT NULL,
  `aktivan` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `iprezime`, `kor_ime`, `lozinka`, `eposta`, `vrstakor_id`, `klub_id`, `aktivan`) VALUES
(268912300, 'Jura', 'Jurić', 'J. Jurić', 'jura', '$2y$10$uSP9PKTm2JgQ2dsi39fh1.EQDOUHx6Eae.DLDk9oh3/1ywG3MeieS', 'ivo.tisljar@rrif.hr', 572321572, 10, 1),
(401393366, 'Tomislav', 'Kaniški', 'T. Kaniški', 'tomo', 'n/a', 'tome.kaniski@gmail.com', 314727413, 6, 1),
(625292874, 'Ivo', 'Tišljar', 'I. Tišljar', 'ivo', '$2y$10$e5cOUNmG0Yoppj.I4k8GU.CopgeZBxtZheZLcjjHwMrzO31bi/4kG', 'ivo.tisljar@gmail.com', 314727413, 8, 1),
(639949959, 'Karlo', 'Gobec', 'K. Gobec', 'karlo', 'n/a', 'karlo.gobec@gmail.com', 572321572, 12, 1),
(762228583, 'Ante', 'Antić', 'A. Antić', 'ante', 'n/a', 'ivo.tisljar@zg.t-com.hr', 846025583, NULL, 1),
(880781626, 'Pero', 'Perić r', 'P. Perić', 'pero', '$2y$10$.GeG1z0Da8XS0avKdRkcNe1fyn6YT/HZ3BHp7V.C/u/A3Icj4s94q', 'ivo@rrif.hr', 846025583, 7, 1);

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
(58, 625292874, 'a69ac54d224fd8b4d7170cdbaef4b3ac42d8e2d4f6bae5c0e0e678639220e84d', '2021-02-25 22:29:41', 0, 0),
(59, 625292874, 'b3a2be7f844db0330fe21c388d9980e0c2733b4d99a430d54e95345b778b72d5', '2021-02-26 00:09:03', 0, 1),
(60, 625292874, '98721aa4d797603d457984a4e3c55e924c88e4af76ee80482fe5d53125c2ed28', '2021-02-28 01:02:54', 0, 1),
(61, 625292874, '51219566aa1366066f75e2b24ed8f92abc0f060fd0843a2e60b3c648012f61fc', '2021-02-28 01:11:02', 0, 1),
(62, 625292874, '01887e78ecb699e1b3f08df63a20dd21e44f8b64ee8dc1ff2b3ff93a43613f8b', '2021-02-28 10:03:48', 0, 1),
(63, 625292874, 'da572c3874742ab4d26975c9cd2dc2be21f7c7122e7086e259551677007bbb14', '2021-02-28 10:35:33', 0, 1),
(64, 625292874, 'eab16063fdcb6b98ef41e976bf33769953b0943165866caa61139215090f76cf', '2021-02-28 10:43:19', 0, 1),
(65, 625292874, '5e84be9bc284cbd4cc3bd5fad37a8522d9c0807148cad960a8ccab80de53063a', '2021-02-28 10:47:21', 0, 1),
(66, 625292874, 'e5e5668fda0b86e0b4010cd3c1b0f1d5487a8cc1eb758e80ec61b64d16b23f26', '2021-02-28 11:36:22', 0, 1),
(67, 625292874, 'ea9ebf6ebe0edd359f8601dc4e9a0baf36dea4b589a55ae709f267481324b241', '2021-02-28 11:38:51', 0, 1),
(68, 625292874, '9f3cc6da4c80d1efd9f51862f7b2a4ab18cef65360f102fef8d1b05c6dbf1560', '2021-02-28 12:04:05', 0, 1),
(69, 625292874, '9d7a05b847033ef9c1bd951dc84891780498e9051d786bb67ac01b814bd5cf2d', '2021-02-28 12:32:57', 0, 1),
(70, 625292874, '351dc1702562ac8283a83f172bc763bdeb962205a31304beabd460d3c4d10aef', '2021-02-28 12:39:25', 0, 1),
(71, 625292874, 'cb7525af2f76da2fa8f0c68478567d2f8e27653a22e7a5eef63523c4defd3eb7', '2021-02-28 12:44:34', 0, 1),
(72, 625292874, 'a9794f1c3d68d4d4cbd9dc35c1945d31f85bc4cde5b16deb9fa4260af6acd947', '2021-02-28 13:58:29', 0, 1),
(73, 625292874, '1b8d2594362e397a2f79273d5a810495d1b494ba613c76f2d25b878a332e3634', '2021-02-28 14:00:17', 0, 0),
(74, 625292874, '948a5cba4cf022a15ea922bf98770f480dffd6e61cfbe09762eb92abb0899653', '2021-02-28 14:08:50', 0, 1),
(75, 625292874, 'd00888e2eb38ef7afc04aed30342f0f8432b066c617356239b4616642103a33b', '2021-02-28 14:09:49', 0, 1),
(76, 625292874, '154d379a2257c8e179c94dc8ba650c918af6ce6cb3317fca79ba0f0792a17a08', '2021-02-28 14:14:14', 0, 1),
(77, 625292874, '1d66a5c5a8bdb1fd8052c1a88342cfa0f6497e2e520ebc1ce8537344963dc9c2', '2021-02-28 14:20:32', 0, 1),
(78, 625292874, 'be3295bc7fbb66a588b207d55b1293cf4230c54e21c8cece4c5ecbcaaa5d3128', '2021-02-28 14:22:18', 0, 1),
(79, 625292874, '7292d8b736b345f2439906867db2ab5fe65c66fb421c2ba1a2ff8eb2df1a80c9', '2021-02-28 21:18:59', 0, 1),
(80, 625292874, 'be8c97bbb2230af99ff757ee7ffe0b55bfaaad4fd1626947daa350cefe5daa6b', '2021-02-28 21:31:16', 0, 1),
(81, 625292874, '4f8b1f0f95bfdd42440be4650e429a919fa5939315f08bd7a84c918ab90f93bc', '2021-03-01 16:51:34', 0, 1),
(82, 625292874, 'a3d8644c5b02917bcb8060a8092f5a877a2efb326fc56fcade2b5315e157a3e9', '2021-03-01 17:03:12', 0, 1),
(83, 625292874, 'a0aa122b2e537889f9c39ea8ff764f487f6672abc9002497a5fddced2f9a27d4', '2021-03-01 17:09:58', 0, 1),
(84, 625292874, '82334bc39e29faae0324458b93eab99eca33417d7d7787950e1481a7605b7c1a', '2021-03-01 17:11:54', 0, 1),
(85, 625292874, '345f2db6dd0071d9bee228e857654eb1cb4d7ce1358645c0349eb42ca5daeef8', '2021-03-01 17:16:58', 0, 1),
(86, 625292874, '01577e2b8ed46322cc4a6262a14f3eee421340a4f7baecf956feef58848d6e82', '2021-03-01 17:32:57', 0, 0),
(87, 625292874, '46eac165be549e7de18085e5a6f386d751aa02034b181b092a1765b62ffada44', '2021-03-01 17:51:50', 0, 1),
(88, 625292874, '8b04752319413aeb0373d1a7b9adf610d390fb629aa9dcac1d13a8ed75224418', '2021-03-01 17:55:09', 0, 1),
(89, 625292874, 'f71f949331535406d23b91f760d405773bafdf57988902135cc2d8163ceafb52', '2021-03-01 18:01:23', 0, 1),
(90, 625292874, '440853479298cd784f934dc29df61970d00bbf8ac5f1c0b4772e6308aa1526ec', '2021-03-01 18:03:36', 0, 1),
(91, 625292874, '3ce41ee0a55868ace531626829b1f5e53d190b9add590936883ad6a03e66c581', '2021-03-01 18:07:51', 0, 1),
(92, 625292874, '261dc276b97ed8347bf37b9e5f077703cde93c486f8553014e05328aa717386b', '2021-03-01 18:16:58', 0, 1),
(93, 625292874, '42d3fdc68547baa517a864fb32ac44558b21043618284b82c6ce1b1f10e4c5a5', '2021-03-01 18:25:56', 0, 1),
(94, 625292874, 'd1b7f20a673d829453e298a788bce2cabff1ec49e70747e2c7d5a2074d7a77fc', '2021-03-01 18:29:18', 0, 1),
(95, 625292874, '61bf9debcef048aad62d40d3242323b551fd81cca1a8fca6dce3542223eb3913', '2021-03-01 18:32:09', 0, 1),
(96, 625292874, 'eec681dbcb35277971161987a1bf5e92986b005d228dc458c955c65d596e07e9', '2021-03-01 18:40:44', 0, 1),
(97, 625292874, '46a7a994a3a8569e4cb62517a662fd78ddead69a78eb4dd59d4a673fad4417f5', '2021-03-01 18:47:56', 0, 1),
(98, 625292874, 'a98dd6b18662be8f72d9bc78495719d12fae0699dd726c5f8a349b194370b1a8', '2021-03-01 19:58:24', 0, 1),
(99, 625292874, '828c8d9e01e8657423848fed2897b3154670eb824f46cf1e0db197d0b158b1d2', '2021-03-01 20:02:17', 0, 1),
(100, 625292874, '5d98ba4cffddb57f306e8bfaa9d1960999e7f0a8d3c51082848bbb59a698bfaf', '2021-03-01 20:04:47', 0, 1),
(101, 625292874, '0843fa258659c4c2427846e9da46ba7f7e78d683cce4c6264a617f676df29ab5', '2021-03-01 21:15:26', 0, 1),
(102, 625292874, '92c7c0fa4215af37e865af1d7826e34954854c6e890b5947ae2ca6e08894e962', '2021-03-01 21:20:04', 0, 1),
(103, 625292874, '3d9b2dfa3b39ace8bf31fead3a1b99b2f2973903b1a2c39113e1af39ab37dcc9', '2021-03-01 21:26:26', 0, 1),
(104, 625292874, '310b0fca286e1463a0433e523e00251b8179e20fac4efff2dac2012877cbf97f', '2021-03-01 22:07:13', 0, 1),
(105, 625292874, 'cb614c4599cc2ff3dc040d964741a472ded177090ddd3a231a2b3122dced29dc', '2021-03-14 15:46:26', 0, 1),
(106, 625292874, '70f4e8a85e8eefe11e510ef7e36994e8e25a728722ccf222cdd358e7b8e33282', '2021-03-16 21:34:57', 0, 0),
(107, 268912300, '317bc981b169b4f82f6d7ef1c7c84e95c2e745dadc6b1ace8b81d8f30915c3a4', '2021-03-17 20:26:12', 0, 1),
(108, 880781626, '6633b005113e6f3e27a0bef431ac4817cac24f477ddfb26ce629a262ca4e8f50', '2021-03-17 20:55:13', 0, 1),
(109, 880781626, '8b13722d7dc7977b43756621fb3921e413663e156de43129de454b6fe5472b28', '2021-03-17 21:00:07', 0, 1);

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
  `klub_id` int(11) DEFAULT NULL,
  `aktivan` tinyint(1) NOT NULL,
  `dnevnik_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `korisnik_log`
--

INSERT INTO `korisnik_log` (`id`, `ime`, `prezime`, `iprezime`, `kor_ime`, `lozinka`, `eposta`, `vrstakor_id`, `klub_id`, `aktivan`, `dnevnik_id`) VALUES
(625292874, 'Ivo', 'Tišljar', 'I. Tišljar', 'ivo', '$2y$10$e5cOUNmG0Yoppj.I4k8GU.CopgeZBxtZheZLcjjHwMrzO31bi/4kG', 'ivo.tisljar@gmail.com', 314727413, 8, 1, 33),
(880781626, 'Pero', 'Perić', 'P. Perić', 'pero', 'n/a', 'ivo@rrif.hr', 846025583, 7, 1, 34),
(268912300, 'Jura', 'Jurić', 'J. Jurić', 'jura', 'n/a', 'ivo.tisljar@rrif.hr', 572321572, 10, 1, 35),
(762228583, 'Ante', 'Antić', 'A. Antić', 'ante', 'n/a', 'ivo.tisljar@zg.t-com.hr', 846025583, NULL, 1, 36),
(268912300, 'Jura', 'Jurić', 'J. Jurić', 'jura', '$2y$10$uSP9PKTm2JgQ2dsi39fh1.EQDOUHx6Eae.DLDk9oh3/1ywG3MeieS', 'ivo.tisljar@rrif.hr', 572321572, 10, 1, 37),
(401393366, 'Tomislav', 'Kaniški', 'T. Kaniški', 'tomo', 'n/a', 'tome.kaniski@gmail.com', 314727413, 6, 1, 38),
(880781626, 'Pero', 'Perić', 'P. Perić', 'pero', '$2y$10$.GeG1z0Da8XS0avKdRkcNe1fyn6YT/HZ3BHp7V.C/u/A3Icj4s94q', 'ivo@rrif.hr', 846025583, 7, 1, 39),
(880781626, 'Pero', 'Perić r', 'P. Perić', 'pero', '$2y$10$.GeG1z0Da8XS0avKdRkcNe1fyn6YT/HZ3BHp7V.C/u/A3Icj4s94q', 'ivo@rrif.hr', 846025583, 7, 1, 40),
(639949959, 'Karlo', 'Gobec', 'K. Gobec', 'karlo', 'n/a', 'karlo.gobec@gmail.com', 572321572, 12, 1, 41);

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
(1, 625292874, '93.141.42.1', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '53f2ce22f766b2bfc54c4e204fc7fa88641b9e2d77233fc2776aa668724d9cf0', '2021-02-28 21:32:09', '2021-02-28 21:32:09'),
(2, 625292874, '93.141.42.1', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '1feadf59c0b44a5a2e85546cd1298dd03950c0ccf72076e2415a4ba2c552671a', '2021-02-28 21:52:28', '2021-02-28 21:53:38'),
(3, 625292874, '93.141.42.1', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '62f4e7381319d6d67298173e23924eab580af5874f9197ce39e643faf85a5c1d', '2021-02-28 21:55:16', '2021-02-28 21:56:05'),
(4, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '7c2aeb9d580acfe208463d11161af91eb1f497537a19a815070afb3bb29b8bef', '2021-03-01 08:32:20', '2021-03-01 08:33:32'),
(5, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '85aa7fc1481f9ac943037ac0f681eb453cd1a04623f877719e093e587cf841ef', '2021-03-01 17:00:49', '2021-03-01 17:00:49'),
(6, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'e402255ba3749c29ff3472e7166d7751414bb73f3d1953848529d482da8426d3', '2021-03-01 17:03:51', '2021-03-01 17:04:35'),
(7, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'a1d39d83259a6e87b0b632e56c076c8ee725b44137b365d00e4f583c0c6accc9', '2021-03-01 17:06:31', '2021-03-01 17:06:31'),
(8, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'ae8105594205fb82765181bb7361120ec8e4bbd6a7b3537220600e62fae770b5', '2021-03-01 17:12:54', '2021-03-01 17:12:54'),
(9, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'd070993b78957ad928c2c9c13a5aebc7571e9c5c21f3101687ac16e22eaf93c4', '2021-03-01 17:52:33', '2021-03-01 17:52:33'),
(10, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '59487965c3720a1a9b84c17ed4bfa03ea15c594004ed0522778662bb65126fa7', '2021-03-01 18:02:03', '2021-03-01 18:02:03'),
(11, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '2932abd0cbfe78e0493bd34043cb92db22bf6f85c7612713f90dd1c9a77f10f8', '2021-03-01 18:04:14', '2021-03-01 18:05:43'),
(12, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'c841c88cadb167429e3a912a1522f33371d0b8aa4d57cb5ec75b74df06edd812', '2021-03-01 18:08:44', '2021-03-01 18:08:44'),
(13, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '0f4ae8da3b78980b56a8bb8b5687d5130493539867dd2c7995f8ca0a7cd2d5bb', '2021-03-01 18:18:25', '2021-03-01 18:18:25'),
(14, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '29b516bdc9789a1fdff0fd84fc397633e3aeadaacee9ecf9dfa9e11d70db1b41', '2021-03-01 18:32:51', '2021-03-01 18:34:08'),
(15, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '9f156bbcbd8fa4eb6a40a2f3c5aba8530c305b6e2448f2892cb1468f8aff26e1', '2021-03-01 18:41:58', '2021-03-01 18:41:58'),
(16, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'deffcb98859384a5ec4eb8c5c7bc8a7f6c3bc0ce05af793cbd42c0cf67dc9033', '2021-03-01 18:48:35', '2021-03-01 18:49:36'),
(17, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'd35ce343c600cbaca39bf7358b3b99f9c0b92507757b75aae34bc35d52dea4b9', '2021-03-01 20:00:39', '2021-03-01 20:00:47'),
(18, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'cb2d642b76b4efec13bc750f4f27c8c4e63a2577a85675de71939c734cbc7838', '2021-03-01 20:02:45', '2021-03-01 20:03:24'),
(19, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'b67a6ad8caf803417ec69e22f77066d0d9a56e9bf186f033efe3ce62c6f365d0', '2021-03-01 20:05:13', '2021-03-01 20:05:13'),
(20, 625292874, '93.141.42.1', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'b23f418db504be4018a8993d2b335ed4a580c0a8c9e8e2c38ea70de957af2032', '2021-03-01 21:18:06', '2021-03-01 21:18:06'),
(21, 625292874, '93.141.42.1', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'e53bcda1f88701972b472b91979dccceda00ad1de6c9bccad5f1205ebefe9844', '2021-03-01 21:27:31', '2021-03-01 21:28:14'),
(22, 625292874, '93.141.42.1', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'f69b9c40c3e8f99a7af6bf2c64271be3bc5e4d72d950eb729f219ba56a7885be', '2021-03-01 22:07:49', '2021-03-01 22:09:14'),
(23, 625292874, '93.141.42.1', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '7de9af1006aa77a16be39d91b07cbb133c6e9c688e54ecab153ee8dcd569ee96', '2021-03-01 22:14:51', '2021-03-01 22:14:51'),
(24, 625292874, '93.141.42.1', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '262d21de137b39646fd1a8993eb0ffee40800c7147b3783b7a1af79b2500fc3b', '2021-03-01 22:18:46', '2021-03-01 22:19:15'),
(25, 625292874, '93.141.42.1', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '635ca0441a649933f87a84df9b4e556e8e959651206ec37c5f05da1f163d07cd', '2021-03-01 22:19:36', '2021-03-01 22:19:36'),
(26, 625292874, '93.141.42.1', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '7078ea8ae4d4118bdd305afb576c00a154de70e674335844149c48758ec1dda6', '2021-03-01 22:49:10', '2021-03-01 22:49:10'),
(27, 625292874, '93.141.42.1', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'b4ac8502a12d9e8b880765d0d846a55ccbc45b6c46c41acc9d9f924e9e63cdf7', '2021-03-01 22:59:42', '2021-03-01 22:59:42'),
(28, 625292874, '93.141.42.1', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'd384cad4b1b8048c640bec602236f4a52fc0387a29fb4cbf31d20e661a8c9287', '2021-03-01 23:13:31', '2021-03-01 23:13:31'),
(29, 625292874, '93.141.101.119', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '649aca13b14cb6bbe7b633fc741f91b3e38fc1f75099ed797febd232d0722766', '2021-03-04 21:03:33', '2021-03-04 21:03:33'),
(30, 625292874, '93.141.43.56', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'be37feb88d3127d229b2708d359d9312804707eea2a01b3d49335ebccea38b0a', '2021-03-07 23:51:53', '2021-03-07 23:51:53'),
(31, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'eab05e4d8c844ef6083acd58c3bece1b80d8510745ac713cf1db2c8ddf8c5ec5', '2021-03-09 14:18:03', '2021-03-09 14:18:20'),
(32, 625292874, '195.29.138.18', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'fae3603e542d905f0d0704c1237ca3d0af0cade039c083e6846119b58c61f0e3', '2021-03-09 14:18:38', '2021-03-09 14:18:38'),
(33, 625292874, '78.2.19.225', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '132222f1c6def90ffb009f031c3688feb7375484d5da6430ba29cee265fcc68f', '2021-03-14 15:47:29', '2021-03-14 15:47:29'),
(34, 625292874, '78.2.19.225', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'f649e83bc8e5d93186decc33ea3bdd74e911c3bcf6aade4bef268131fa966bf2', '2021-03-14 15:57:18', '2021-03-14 15:57:18'),
(35, 625292874, '93.141.63.214', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'ee8aeeee94a3b89cc6f9faf4e9fe05bb70768388a948433a63aa7c2537cff7c2', '2021-03-17 20:20:10', '2021-03-17 20:25:00'),
(36, 268912300, '93.137.67.137', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '6e4131c6dc7fdb0b95a639dd62f16b27e46712c2f0146fb0898fccc67be37e4e', '2021-03-17 20:28:24', '2021-03-17 20:33:55'),
(37, 625292874, '93.137.67.137', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '1aca4ae19c09df31c3e2da21b6c168c6faf87aeb0266ae2085630df449c0bc67', '2021-03-17 20:52:04', '2021-03-17 20:53:10'),
(38, 880781626, '93.137.67.137', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '752af1bf8b1717046649a0d894e88cf06505cd795cecc9c2cdc318afedacf3e4', '2021-03-17 21:00:58', '2021-03-17 21:01:53'),
(39, 268912300, '93.137.67.137', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '463e5d2473a0f74478d629534e098acbe3892a4c93d741f33658186115b95b19', '2021-03-17 21:02:55', '2021-03-17 21:42:34'),
(40, 625292874, '93.137.67.137', '66nr0igqenc18mffbfc38ikvm3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '0b5f8a32574d05780565b5981d591b6bc414ead29795d6f186744b59a4e47690', '2021-03-17 21:42:45', '2021-03-17 21:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `liga`
--

CREATE TABLE `liga` (
  `id` int(11) NOT NULL,
  `vrstalige_id` int(11) NOT NULL,
  `godina` int(11) NOT NULL,
  `rbr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `liga`
--

INSERT INTO `liga` (`id`, `vrstalige_id`, `godina`, `rbr`) VALUES
(1, 4, 2021, 4),
(2, 5, 2021, 5),
(3, 6, 2021, 6),
(4, 7, 2021, 7),
(5, 1, 2021, 1),
(6, 2, 2021, 2),
(7, 3, 2021, 3);

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
  `vrstalogina_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `trenutak`, `ip_adresa`, `korisnik_id`, `kor_ime`, `eposta`, `vrstalogina_id`) VALUES
(224, '2021-02-28 13:58:29', '93.141.42.1', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(225, '2021-02-28 13:59:01', '93.141.42.1', 625292874, '', '', 45),
(226, '2021-02-28 13:59:01', '93.141.42.1', 625292874, '', '', 60),
(227, '2021-02-28 13:59:24', '93.141.42.1', 625292874, '', '', 45),
(228, '2021-02-28 13:59:24', '93.141.42.1', NULL, '', '', 51),
(229, '2021-02-28 14:00:17', '93.141.42.1', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(230, '2021-02-28 14:08:50', '93.141.42.1', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(231, '2021-02-28 14:09:10', '93.141.42.1', 625292874, '', '', 45),
(232, '2021-02-28 14:09:10', '93.141.42.1', 625292874, '', '', 60),
(233, '2021-02-28 14:09:26', '93.141.42.1', 625292874, '', '', 45),
(234, '2021-02-28 14:09:26', '93.141.42.1', 625292874, '', '', 31),
(235, '2021-02-28 14:09:49', '93.141.42.1', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(236, '2021-02-28 14:10:06', '93.141.42.1', 625292874, '', '', 45),
(237, '2021-02-28 14:10:06', '93.141.42.1', 625292874, '', '', 60),
(238, '2021-02-28 14:10:39', '93.141.42.1', NULL, '', '', 54),
(239, '2021-02-28 14:14:14', '93.141.42.1', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(240, '2021-02-28 14:14:29', '93.141.42.1', 625292874, '', '', 45),
(241, '2021-02-28 14:14:29', '93.141.42.1', 625292874, '', '', 60),
(242, '2021-02-28 14:19:33', '93.141.42.1', NULL, '', '', 54),
(243, '2021-02-28 14:20:14', '93.141.42.1', NULL, '', 'ivo.tisljar@gmail.com', 33),
(244, '2021-02-28 14:20:32', '93.141.42.1', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(245, '2021-02-28 14:21:07', '93.141.42.1', 625292874, '', '', 45),
(246, '2021-02-28 14:21:07', '93.141.42.1', 625292874, '', '', 60),
(247, '2021-02-28 14:21:47', '93.141.42.1', 625292874, '', '', 45),
(248, '2021-02-28 14:21:47', '93.141.42.1', NULL, '', '', 51),
(249, '2021-02-28 14:22:18', '93.141.42.1', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(250, '2021-02-28 14:22:30', '93.141.42.1', 625292874, '', '', 42),
(251, '2021-02-28 14:22:54', '93.141.42.1', 625292874, '', '', 45),
(252, '2021-02-28 14:22:54', '93.141.42.1', 625292874, '', '', 60),
(253, '2021-02-28 14:23:10', '93.141.42.1', 625292874, '', '', 45),
(254, '2021-02-28 14:23:10', '93.141.42.1', 625292874, '', '', 31),
(255, '2021-02-28 21:18:59', '93.141.42.1', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(256, '2021-02-28 21:19:46', '93.141.42.1', 625292874, '', '', 45),
(257, '2021-02-28 21:19:46', '93.141.42.1', 625292874, '', '', 60),
(258, '2021-02-28 21:20:03', '93.141.42.1', 625292874, '', '', 42),
(259, '2021-02-28 21:31:16', '93.141.42.1', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(260, '2021-02-28 21:31:43', '93.141.42.1', 625292874, '', '', 45),
(261, '2021-02-28 21:31:43', '93.141.42.1', 625292874, '', '', 60),
(262, '2021-02-28 21:32:09', '93.141.42.1', 625292874, '', '', 45),
(263, '2021-02-28 21:32:09', '93.141.42.1', 625292874, '', '', 31),
(264, '2021-03-01 16:51:34', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(265, '2021-03-01 17:00:29', '195.29.138.18', 625292874, '', '', 45),
(266, '2021-03-01 17:00:29', '195.29.138.18', 625292874, '', '', 60),
(267, '2021-03-01 17:00:49', '195.29.138.18', 625292874, '', '', 45),
(268, '2021-03-01 17:00:49', '195.29.138.18', 625292874, '', '', 31),
(269, '2021-03-01 17:03:12', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(270, '2021-03-01 17:03:33', '195.29.138.18', 625292874, '', '', 45),
(271, '2021-03-01 17:03:33', '195.29.138.18', 625292874, '', '', 60),
(272, '2021-03-01 17:03:50', '195.29.138.18', 625292874, '', '', 45),
(273, '2021-03-01 17:03:51', '195.29.138.18', 625292874, '', '', 31),
(274, '2021-03-01 17:09:58', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(275, '2021-03-01 17:10:18', '195.29.138.18', 625292874, '', '', 45),
(276, '2021-03-01 17:10:18', '195.29.138.18', 625292874, '', '', 60),
(277, '2021-03-01 17:10:53', '195.29.138.18', 625292874, '', '', 45),
(278, '2021-03-01 17:10:53', '195.29.138.18', NULL, '', '', 51),
(279, '2021-03-01 17:11:54', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(280, '2021-03-01 17:12:14', '195.29.138.18', 625292874, '', '', 45),
(281, '2021-03-01 17:12:14', '195.29.138.18', 625292874, '', '', 60),
(282, '2021-03-01 17:12:53', '195.29.138.18', 625292874, '', '', 45),
(283, '2021-03-01 17:12:54', '195.29.138.18', 625292874, '', '', 31),
(284, '2021-03-01 17:16:58', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(285, '2021-03-01 17:17:32', '195.29.138.18', 625292874, '', '', 45),
(286, '2021-03-01 17:17:32', '195.29.138.18', 625292874, '', '', 60),
(287, '2021-03-01 17:18:03', '195.29.138.18', 625292874, '', '', 45),
(288, '2021-03-01 17:18:03', '195.29.138.18', NULL, '', '', 51),
(289, '2021-03-01 17:32:57', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(290, '2021-03-01 17:51:27', '195.29.138.18', NULL, '', 'ivo.tisljar@gmail.com', 33),
(291, '2021-03-01 17:51:50', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(292, '2021-03-01 17:52:10', '195.29.138.18', 625292874, '', '', 45),
(293, '2021-03-01 17:52:10', '195.29.138.18', 625292874, '', '', 60),
(294, '2021-03-01 17:52:33', '195.29.138.18', 625292874, '', '', 45),
(295, '2021-03-01 17:52:33', '195.29.138.18', 625292874, '', '', 31),
(296, '2021-03-01 17:55:09', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(297, '2021-03-01 17:55:49', '195.29.138.18', 625292874, '', '', 45),
(298, '2021-03-01 17:55:49', '195.29.138.18', 625292874, '', '', 60),
(299, '2021-03-01 17:56:22', '195.29.138.18', 625292874, '', '', 45),
(300, '2021-03-01 17:56:22', '195.29.138.18', NULL, '', '', 51),
(301, '2021-03-01 18:00:43', '195.29.138.18', NULL, '', '', 54),
(302, '2021-03-01 18:00:53', '195.29.138.18', NULL, '', '', 54),
(303, '2021-03-01 18:01:23', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(304, '2021-03-01 18:01:42', '195.29.138.18', 625292874, '', '', 45),
(305, '2021-03-01 18:01:42', '195.29.138.18', 625292874, '', '', 60),
(306, '2021-03-01 18:02:03', '195.29.138.18', 625292874, '', '', 45),
(307, '2021-03-01 18:02:03', '195.29.138.18', 625292874, '', '', 31),
(308, '2021-03-01 18:03:36', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(309, '2021-03-01 18:03:59', '195.29.138.18', 625292874, '', '', 45),
(310, '2021-03-01 18:03:59', '195.29.138.18', 625292874, '', '', 60),
(311, '2021-03-01 18:04:13', '195.29.138.18', 625292874, '', '', 45),
(312, '2021-03-01 18:04:14', '195.29.138.18', 625292874, '', '', 31),
(313, '2021-03-01 18:07:51', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(314, '2021-03-01 18:08:23', '195.29.138.18', 625292874, '', '', 45),
(315, '2021-03-01 18:08:23', '195.29.138.18', 625292874, '', '', 60),
(316, '2021-03-01 18:08:44', '195.29.138.18', 625292874, '', '', 45),
(317, '2021-03-01 18:08:44', '195.29.138.18', 625292874, '', '', 31),
(318, '2021-03-01 18:16:58', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(319, '2021-03-01 18:18:08', '195.29.138.18', 625292874, '', '', 45),
(320, '2021-03-01 18:18:08', '195.29.138.18', 625292874, '', '', 60),
(321, '2021-03-01 18:18:24', '195.29.138.18', 625292874, '', '', 45),
(322, '2021-03-01 18:18:25', '195.29.138.18', 625292874, '', '', 31),
(323, '2021-03-01 18:20:56', '195.29.138.18', NULL, '', '', 21),
(324, '2021-03-01 18:21:14', '195.29.138.18', NULL, 'sdfs', '', 21),
(325, '2021-03-01 18:25:56', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(326, '2021-03-01 18:26:29', '195.29.138.18', 625292874, '', '', 45),
(327, '2021-03-01 18:26:29', '195.29.138.18', 625292874, '', '', 60),
(328, '2021-03-01 18:26:58', '195.29.138.18', 625292874, '', '', 45),
(329, '2021-03-01 18:26:58', '195.29.138.18', NULL, '', '', 51),
(330, '2021-03-01 18:29:18', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(331, '2021-03-01 18:29:53', '195.29.138.18', 625292874, '', '', 45),
(332, '2021-03-01 18:29:53', '195.29.138.18', 625292874, '', '', 60),
(333, '2021-03-01 18:30:23', '195.29.138.18', NULL, '', '', 54),
(334, '2021-03-01 18:32:09', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(335, '2021-03-01 18:32:34', '195.29.138.18', 625292874, '', '', 45),
(336, '2021-03-01 18:32:34', '195.29.138.18', 625292874, '', '', 60),
(337, '2021-03-01 18:32:51', '195.29.138.18', 625292874, '', '', 45),
(338, '2021-03-01 18:32:51', '195.29.138.18', 625292874, '', '', 31),
(339, '2021-03-01 18:40:44', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(340, '2021-03-01 18:41:34', '195.29.138.18', 625292874, '', '', 45),
(341, '2021-03-01 18:41:34', '195.29.138.18', 625292874, '', '', 60),
(342, '2021-03-01 18:41:58', '195.29.138.18', 625292874, '', '', 45),
(343, '2021-03-01 18:41:58', '195.29.138.18', 625292874, '', '', 31),
(344, '2021-03-01 18:47:56', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(345, '2021-03-01 18:48:19', '195.29.138.18', 625292874, '', '', 45),
(346, '2021-03-01 18:48:19', '195.29.138.18', 625292874, '', '', 60),
(347, '2021-03-01 18:48:35', '195.29.138.18', 625292874, '', '', 45),
(348, '2021-03-01 18:48:35', '195.29.138.18', 625292874, '', '', 31),
(349, '2021-03-01 19:58:24', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(350, '2021-03-01 20:00:31', '195.29.138.18', 625292874, '', '', 45),
(351, '2021-03-01 20:00:31', '195.29.138.18', 625292874, '', '', 60),
(352, '2021-03-01 20:00:39', '195.29.138.18', 625292874, '', '', 45),
(353, '2021-03-01 20:00:39', '195.29.138.18', 625292874, '', '', 31),
(354, '2021-03-01 20:02:17', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(355, '2021-03-01 20:02:37', '195.29.138.18', 625292874, '', '', 45),
(356, '2021-03-01 20:02:37', '195.29.138.18', 625292874, '', '', 60),
(357, '2021-03-01 20:02:45', '195.29.138.18', 625292874, '', '', 45),
(358, '2021-03-01 20:02:45', '195.29.138.18', 625292874, '', '', 31),
(359, '2021-03-01 20:04:47', '195.29.138.18', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(360, '2021-03-01 20:05:06', '195.29.138.18', 625292874, '', '', 45),
(361, '2021-03-01 20:05:06', '195.29.138.18', 625292874, '', '', 60),
(362, '2021-03-01 20:05:12', '195.29.138.18', 625292874, '', '', 45),
(363, '2021-03-01 20:05:13', '195.29.138.18', 625292874, '', '', 31),
(364, '2021-03-01 21:15:26', '93.141.42.1', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(365, '2021-03-01 21:17:57', '93.141.42.1', 625292874, '', '', 45),
(366, '2021-03-01 21:17:57', '93.141.42.1', 625292874, '', '', 60),
(367, '2021-03-01 21:18:06', '93.141.42.1', 625292874, '', '', 45),
(368, '2021-03-01 21:18:06', '93.141.42.1', 625292874, '', '', 31),
(369, '2021-03-01 21:20:04', '93.141.42.1', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(370, '2021-03-01 21:20:32', '93.141.42.1', 625292874, '', '', 45),
(371, '2021-03-01 21:20:32', '93.141.42.1', 625292874, '', '', 60),
(372, '2021-03-01 21:21:16', '93.141.42.1', 625292874, '', '', 42),
(373, '2021-03-01 21:26:26', '93.141.42.1', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(374, '2021-03-01 21:27:17', '93.141.42.1', 625292874, '', '', 45),
(375, '2021-03-01 21:27:17', '93.141.42.1', 625292874, '', '', 60),
(376, '2021-03-01 21:27:31', '93.141.42.1', 625292874, '', '', 45),
(377, '2021-03-01 21:27:31', '93.141.42.1', 625292874, '', '', 31),
(378, '2021-03-01 22:07:13', '93.141.42.1', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(379, '2021-03-01 22:07:34', '93.141.42.1', 625292874, '', '', 45),
(380, '2021-03-01 22:07:34', '93.141.42.1', 625292874, '', '', 60),
(381, '2021-03-01 22:07:49', '93.141.42.1', 625292874, '', '', 45),
(382, '2021-03-01 22:07:49', '93.141.42.1', 625292874, '', '', 31),
(383, '2021-03-01 22:49:10', '93.141.42.1', NULL, 'ivo', 'ivo.tisljar@gmail.com', 10),
(385, '2021-03-01 22:59:42', '93.141.42.1', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 10),
(387, '2021-03-01 23:13:31', '93.141.42.1', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 10),
(388, '2021-03-01 23:13:37', '93.141.42.1', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 11),
(389, '2021-03-04 21:03:33', '93.141.101.119', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 10),
(390, '2021-03-07 23:51:53', '93.141.43.56', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 10),
(391, '2021-03-08 02:06:30', '93.141.43.56', NULL, '', '', 40),
(392, '2021-03-08 02:07:03', '93.141.43.56', NULL, '', '', 40),
(393, '2021-03-08 02:07:09', '93.141.43.56', NULL, '', '', 40),
(394, '2021-03-08 02:07:22', '93.141.43.56', NULL, '', '', 40),
(395, '2021-03-08 02:34:48', '93.141.43.56', NULL, '', '', 40),
(396, '2021-03-08 02:35:03', '93.141.43.56', NULL, '', '', 40),
(397, '2021-03-08 02:35:58', '93.141.43.56', NULL, '', '', 40),
(398, '2021-03-08 02:36:01', '93.141.43.56', NULL, '', '', 40),
(399, '2021-03-08 02:36:28', '93.141.43.56', NULL, '', '', 40),
(400, '2021-03-08 02:36:29', '93.141.43.56', NULL, '', '', 40),
(401, '2021-03-09 14:18:03', '195.29.138.18', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 10),
(402, '2021-03-09 14:18:25', '195.29.138.18', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 11),
(403, '2021-03-09 14:18:38', '195.29.138.18', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 10),
(404, '2021-03-14 15:46:26', '78.2.19.225', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(405, '2021-03-14 15:46:55', '78.2.19.225', 625292874, '', '', 45),
(406, '2021-03-14 15:46:55', '78.2.19.225', 625292874, '', '', 60),
(407, '2021-03-14 15:47:29', '78.2.19.225', 625292874, '', '', 45),
(408, '2021-03-14 15:47:29', '78.2.19.225', 625292874, '', '', 31),
(409, '2021-03-14 15:47:29', '78.2.19.225', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 31),
(410, '2021-03-14 15:57:18', '78.2.19.225', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 10),
(411, '2021-03-14 15:57:24', '78.2.19.225', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 11),
(415, '2021-03-16 21:24:23', '93.141.63.214', NULL, '', '', 90),
(416, '2021-03-16 21:34:57', '93.141.63.214', 625292874, '', 'ivo.tisljar@gmail.com', 30),
(418, '2021-03-17 20:20:02', '93.141.63.214', NULL, '', '', 90),
(419, '2021-03-17 20:20:10', '93.141.63.214', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 10),
(420, '2021-03-17 20:25:49', '93.137.67.137', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 11),
(421, '2021-03-17 20:26:12', '93.137.67.137', 268912300, '', 'ivo.tisljar@rrif.hr', 30),
(422, '2021-03-17 20:28:00', '93.137.67.137', 268912300, '', '', 45),
(423, '2021-03-17 20:28:00', '93.137.67.137', 268912300, '', '', 60),
(424, '2021-03-17 20:28:24', '93.137.67.137', 268912300, '', '', 45),
(425, '2021-03-17 20:28:24', '93.137.67.137', 268912300, '', '', 31),
(426, '2021-03-17 20:28:24', '93.137.67.137', 268912300, 'jura', 'ivo.tisljar@rrif.hr', 31),
(427, '2021-03-17 20:34:14', '93.137.67.137', 268912300, 'jura', 'ivo.tisljar@rrif.hr', 11),
(429, '2021-03-17 20:51:27', '93.137.67.137', NULL, '', '', 90),
(431, '2021-03-17 20:51:42', '93.137.67.137', NULL, '', '', 91),
(432, '2021-03-17 20:52:04', '93.137.67.137', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 10),
(433, '2021-03-17 20:53:54', '93.137.67.137', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 11),
(434, '2021-03-17 20:54:30', '93.137.67.137', NULL, '', 'ivo@rrif.hr', 33),
(435, '2021-03-17 20:55:13', '93.137.67.137', 880781626, '', 'ivo@rrif.hr', 30),
(436, '2021-03-17 20:56:00', '93.137.67.137', 880781626, '', '', 45),
(437, '2021-03-17 20:56:00', '93.137.67.137', 880781626, '', '', 60),
(438, '2021-03-17 20:59:33', '93.137.67.137', NULL, '', '', 54),
(439, '2021-03-17 21:00:07', '93.137.67.137', 880781626, '', 'ivo@rrif.hr', 30),
(440, '2021-03-17 21:00:41', '93.137.67.137', 880781626, '', '', 45),
(441, '2021-03-17 21:00:41', '93.137.67.137', 880781626, '', '', 60),
(442, '2021-03-17 21:00:58', '93.137.67.137', 880781626, '', '', 45),
(443, '2021-03-17 21:00:58', '93.137.67.137', 880781626, '', '', 31),
(444, '2021-03-17 21:00:58', '93.137.67.137', 880781626, 'pero', 'ivo@rrif.hr', 31),
(445, '2021-03-17 21:01:49', '93.137.67.137', 880781626, 'pero', 'ivo@rrif.hr', 93),
(446, '2021-03-17 21:02:06', '93.137.67.137', 880781626, 'pero', 'ivo@rrif.hr', 11),
(447, '2021-03-17 21:02:26', '93.137.67.137', NULL, 'jure', '', 21),
(449, '2021-03-17 21:02:40', '93.137.67.137', NULL, '', '', 91),
(450, '2021-03-17 21:02:55', '93.137.67.137', 268912300, 'jura', 'ivo.tisljar@rrif.hr', 10),
(451, '2021-03-17 21:42:38', '93.137.67.137', 268912300, 'jura', 'ivo.tisljar@rrif.hr', 11),
(452, '2021-03-17 21:42:45', '93.137.67.137', 625292874, 'ivo', 'ivo.tisljar@gmail.com', 10);

-- --------------------------------------------------------

--
-- Table structure for table `osoba`
--

CREATE TABLE `osoba` (
  `id` int(11) NOT NULL,
  `reg_broj` int(11) DEFAULT NULL,
  `oib` char(11) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `spol` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dat_rodjenja` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `osoba`
--

INSERT INTO `osoba` (`id`, `reg_broj`, `oib`, `spol`, `dat_rodjenja`) VALUES
(1001, 1001, NULL, 'M', '1983-07-16'),
(1002, 1002, NULL, 'M', NULL),
(1003, 1003, NULL, 'M', '1971-06-07'),
(1004, 1004, NULL, 'Ž', '2004-01-03'),
(1005, 1005, NULL, 'Ž', NULL),
(1006, 1006, NULL, 'Ž', NULL),
(1007, 1007, NULL, 'Ž', NULL),
(1008, 1008, NULL, 'Ž', '1973-11-15'),
(1009, 1009, NULL, 'Ž', NULL),
(1010, 1010, NULL, 'Ž', '1984-01-29'),
(1011, 1011, NULL, 'M', '1970-07-04'),
(1012, 1012, NULL, 'M', NULL),
(1013, 1013, NULL, 'M', '1991-05-24'),
(1014, 1014, NULL, 'M', '1956-07-16'),
(1015, 1015, NULL, 'M', NULL),
(1016, 1016, NULL, 'M', '1977-02-15'),
(1017, 1017, NULL, 'M', '1982-06-23'),
(1018, 1018, NULL, 'Ž', '1978-10-31'),
(1019, 1019, NULL, 'Ž', NULL),
(1020, 1020, NULL, 'M', '1976-08-19'),
(1021, 1021, NULL, 'Ž', NULL),
(1022, 1022, NULL, 'M', '2011-02-16'),
(1023, 1023, NULL, 'Ž', '1949-07-25'),
(1024, 1024, NULL, 'Ž', '2002-01-05'),
(1025, 1025, NULL, 'Ž', '2006-01-11'),
(1026, 1026, NULL, 'Ž', '1979-12-04'),
(1027, 1027, NULL, 'Ž', '1976-10-09'),
(1028, 1028, NULL, 'M', '2012-11-17'),
(1029, 1029, NULL, 'Ž', '2006-01-11'),
(1030, 1030, NULL, 'Ž', '1982-12-15'),
(1031, 1031, NULL, 'M', '1991-09-22'),
(1032, 1032, '24892836714', 'Ž', NULL),
(1033, 1033, NULL, 'Ž', '1980-03-04'),
(1034, 1034, NULL, 'M', '1984-06-09'),
(1035, 1035, NULL, 'M', NULL),
(1036, 1036, NULL, 'M', '1965-09-06'),
(1037, 1037, NULL, 'Ž', '1984-03-28'),
(1038, 1038, NULL, 'M', '1963-05-10'),
(1039, 1039, '00676731732', 'Ž', '1991-02-04'),
(1040, 1040, '00921941970', 'M', '1998-01-03'),
(1041, 1041, '01021815512', 'Ž', '2005-07-11'),
(1042, 1042, '01232322356', 'Ž', '2007-03-31'),
(1043, 1043, '01415167897', 'Ž', '1967-01-21'),
(1044, 1044, '01650989844', 'M', '1952-05-14'),
(1045, 1045, '01697685371', 'Ž', '1972-11-24'),
(1046, 1046, '02287493964', 'Ž', '2004-07-21'),
(1047, 1047, '02449205795', 'Ž', '2007-10-25'),
(1048, 1048, '02623215344', 'Ž', '1985-04-26'),
(1049, 1049, '02950236907', 'Ž', '1985-10-12'),
(1050, 1050, '03006951751', 'M', '2008-06-27'),
(1051, 1051, '03023930333', 'Ž', NULL),
(1052, 1052, '03091353961', 'M', '1982-02-21'),
(1053, 1053, '03460520788', 'Ž', '1967-04-17'),
(1054, 1054, '03616450111', 'M', '2007-09-24'),
(1055, 1055, '03619694945', 'Ž', '2009-06-25'),
(1056, 1056, '03854232487', 'M', '1974-10-24'),
(1057, 1057, '03943619746', 'M', NULL),
(1058, 1058, '04282481038', 'M', '1965-08-05'),
(1059, 1059, '04488947301', 'Ž', '1986-02-16'),
(1060, 1060, '04654512678', 'M', '1944-04-19'),
(1061, 1061, '04735895159', 'M', NULL),
(1062, 1062, '04811072367', 'Ž', '1977-12-06'),
(1063, 1063, '05270634843', 'Ž', '1980-12-10'),
(1064, 1064, '05373167260', 'M', NULL),
(1065, 1065, '05486915242', 'Ž', '1973-06-02'),
(1066, 1066, '05525223298', 'M', '2009-05-13'),
(1067, 1067, '05874945965', 'Ž', '1972-10-12'),
(1068, 1068, '06130055177', 'M', '2005-05-25'),
(1069, 1069, '06277613592', 'M', '1971-11-01'),
(1070, 1070, '06792527558', 'Ž', '1975-01-05'),
(1071, 1071, '06902217034', 'M', '1986-10-24'),
(1072, 1072, '06916410751', 'M', NULL),
(1073, 1073, '07259297872', 'M', NULL),
(1074, 1074, '07396129862', 'Ž', '1972-12-15'),
(1075, 1075, '07405005295', 'M', '1972-02-10'),
(1076, 1076, '07407873343', 'Ž', '1971-03-23'),
(1077, 1077, '07471023697', 'M', NULL),
(1078, 1078, '07553652019', 'M', '1973-09-12'),
(1079, 1079, '07837660489', 'M', '2002-05-16'),
(1080, 1080, '07946817139', 'Ž', '1971-05-06'),
(1081, 1081, '08194392100', 'M', '1984-07-27'),
(1082, 1082, '08396511994', 'M', NULL),
(1083, 1083, '08566425233', 'M', NULL),
(1084, 1084, '08670653988', 'Ž', '1973-10-28'),
(1085, 1085, '08759304832', 'M', NULL),
(1086, 1086, '09217009568', 'Ž', '1979-04-17'),
(1087, 1087, '09673763306', 'Ž', NULL),
(1088, 1088, '09918322681', 'M', NULL),
(1089, 1089, '10036323630', 'M', NULL),
(1090, 1090, '10061795607', 'M', '1974-09-07'),
(1091, 1091, '10099192843', 'M', NULL),
(1092, 1092, '10486270721', 'Ž', NULL),
(1093, 1093, '11036671206', 'Ž', NULL),
(1094, 1094, '11052666287', 'Ž', '1983-06-13'),
(1095, 1095, '11080584362', 'M', NULL),
(1096, 1096, '11128942314', 'M', '1965-07-27'),
(1097, 1097, '11156938615', 'Ž', '1973-03-25'),
(1098, 1098, '11322935453', 'M', '2013-06-23'),
(1099, 1099, '11387102018', 'M', '1981-11-05'),
(1100, 1100, '11786617930', 'Ž', '1980-12-16'),
(1101, 1101, '12084664088', 'Ž', NULL),
(1102, 1102, NULL, 'M', NULL),
(1103, 1103, NULL, 'M', NULL),
(1104, 1104, NULL, 'M', '2002-06-18'),
(1105, 1105, '12697721333', 'M', '2001-07-24'),
(1106, 1106, '13052963748', 'M', NULL),
(1107, 1107, '13336301698', 'M', NULL),
(1108, 1108, '13399865904', 'M', '2008-01-18'),
(1109, 1109, '13716311000', 'M', '1962-06-04'),
(1110, 1110, '13724177447', 'M', NULL),
(1111, 1111, '13814648834', 'M', '1983-01-08'),
(1112, 1112, '14465654185', 'M', '1976-09-05'),
(1113, 1113, '14510142438', 'Ž', NULL),
(1114, 1114, '14539252268', 'M', '2000-07-01'),
(1115, 1115, '14774614049', 'M', NULL),
(1116, 1116, '14909998285', 'M', '2004-09-25'),
(1117, 1117, '15196499749', 'Ž', '1993-07-27'),
(1118, 1118, '15359167673', 'M', '2005-12-30'),
(1119, 1119, '15397338459', 'M', NULL),
(1120, 1120, '15411007814', 'M', NULL),
(1121, 1121, '15648404668', 'Ž', '2004-10-11'),
(1122, 1122, '15843759835', 'M', NULL),
(1123, 1123, '15962222732', 'Ž', '1974-07-17'),
(1124, 1124, '15978732936', 'M', '2001-08-26'),
(1125, 1125, '16104477400', 'M', '1982-05-09'),
(1126, 1126, '16109613181', 'M', '1971-09-05'),
(1127, 1127, '16313104251', 'M', NULL),
(1128, 1128, '16401667801', 'Ž', NULL),
(1129, 1129, '16748289166', 'Ž', NULL),
(1130, 1130, '16980714909', 'M', '1991-04-21'),
(1131, 1131, '17157160013', 'M', NULL),
(1132, 1132, '17376968139', 'M', NULL),
(1133, 1133, '17392577011', 'M', '1962-09-02'),
(1134, 1134, NULL, 'M', '1968-08-01'),
(1135, 1135, '17556672591', 'Ž', '1979-02-06'),
(1136, 1136, '17903056323', 'Ž', '1989-04-17'),
(1137, 1137, '18019509580', 'Ž', '1967-02-22'),
(1138, 1138, '18571449013', 'M', '1970-11-22'),
(1139, 1139, '18740189143', 'M', '1985-11-09'),
(1140, 1140, '19022782993', 'Ž', '1987-02-22'),
(1141, 1141, '19108491700', 'Ž', '1972-05-07'),
(1142, 1142, '19369338999', 'M', '1975-01-04'),
(1143, 1143, '19500028291', 'M', '1999-04-13'),
(1144, 1144, '19510320121', 'M', '1972-05-26'),
(1145, 1145, '19544659880', 'M', '1955-10-14'),
(1146, 1146, '19661247495', 'Ž', '1972-11-11'),
(1147, 1147, '19873421967', 'M', NULL),
(1148, 1148, '20012570180', 'Ž', '1978-12-25'),
(1149, 1149, '20299268545', 'Ž', NULL),
(1150, 1150, '20436083300', 'M', NULL),
(1151, 1151, '20627712172', 'M', '1973-09-04'),
(1152, 1152, '20682170878', 'Ž', '1973-12-28'),
(1153, 1153, '20828208578', 'M', '1999-01-02'),
(1154, 1154, '20932532967', 'Ž', '1974-06-20'),
(1155, 1155, '21106557050', 'M', '2005-12-05'),
(1156, 1156, '21106901450', 'Ž', '2009-05-27'),
(1157, 1157, '21626226581', 'M', '1997-07-07'),
(1158, 1158, '21813594719', 'Ž', '1991-07-09'),
(1159, 1159, '21947637307', 'M', NULL),
(1160, 1160, '22026225430', 'Ž', '2000-04-21'),
(1161, 1161, '22031498464', 'M', '1985-01-11'),
(1162, 1162, '22212936088', 'M', NULL),
(1163, 1163, '22326784517', 'M', '1976-10-19'),
(1164, 1164, '22336957390', 'M', '1983-08-26'),
(1165, 1165, '22609077133', 'M', '2007-02-14'),
(1166, 1166, '22921156749', 'Ž', '1959-11-04'),
(1167, 1167, '23076596294', 'M', '1987-06-29'),
(1168, 1168, '23353344617', 'Ž', '2012-05-05'),
(1169, 1169, '23626573008', 'M', NULL),
(1170, 1170, '23627932197', 'M', '2006-12-04'),
(1171, 1171, '24120340948', 'M', '1997-08-26'),
(1172, 1172, '24233680100', 'M', '2001-01-18'),
(1173, 1173, '24295178959', 'M', NULL),
(1174, 1174, '24345537988', 'M', '2009-09-17'),
(1175, 1175, '24435632833', 'Ž', '1980-06-13'),
(1176, 1176, '24472333162', 'M', NULL),
(1177, 1177, '24505022974', 'Ž', '1970-04-23'),
(1178, 1178, '24995283096', 'Ž', '2007-03-15'),
(1179, 1179, '25295948001', 'M', NULL),
(1180, 1180, '25390803156', 'M', NULL),
(1181, 1181, '25780862766', 'Ž', '1985-06-24'),
(1182, 1182, '25813971407', 'Ž', '2007-07-21'),
(1183, 1183, '25976690449', 'M', '1973-03-25'),
(1184, 1184, '26144165730', 'Ž', '1985-04-12'),
(1185, 1185, '26862989701', 'M', '1998-11-18'),
(1186, 1186, '26913110650', 'Ž', NULL),
(1187, 1187, '26934227253', 'Ž', '2004-12-02'),
(1188, 1188, '27173542770', 'M', '1953-10-02'),
(1189, 1189, '27374847310', 'Ž', '1971-12-08'),
(1190, 1190, '27837987427', 'Ž', '1984-09-19'),
(1191, 1191, '28217056515', 'M', '2002-02-26'),
(1192, 1192, '28315898271', 'M', '1992-08-23'),
(1193, 1193, '28536948768', 'Ž', NULL),
(1194, 1194, '28680242273', 'Ž', '1979-04-12'),
(1195, 1195, '28954681898', 'M', '1983-09-26'),
(1196, 1196, '29196578842', 'M', NULL),
(1197, 1197, '29233052670', 'Ž', NULL),
(1198, 1198, '29587646072', 'Ž', '2001-06-06'),
(1199, 1199, '29740733797', 'Ž', NULL),
(1200, 1200, '30220233630', 'Ž', NULL),
(1201, 1201, '30332962290', 'M', '1987-02-03'),
(1202, 1202, '30434316451', 'Ž', NULL),
(1203, 1203, '30868263164', 'Ž', '1998-03-19'),
(1204, 1204, '30884390696', 'Ž', '2006-04-28'),
(1205, 1205, '31051425059', 'M', '1979-08-18'),
(1206, 1206, '31479732158', 'M', '1977-10-10'),
(1207, 1207, '32062453958', 'M', '2010-09-08'),
(1208, 1208, '32312871087', 'M', '1951-05-07'),
(1209, 1209, '32374115878', 'M', '1972-11-04'),
(1210, 1210, '32462097010', 'M', '2004-10-25'),
(1211, 1211, '32469507314', 'M', '1968-07-12'),
(1212, 1212, '32813390566', 'Ž', NULL),
(1213, 1213, '33212740736', 'M', '2010-01-10'),
(1214, 1214, '33347617911', 'Ž', '1988-05-04'),
(1215, 1215, '34334003296', 'Ž', '2003-10-23'),
(1216, 1216, '34724442837', 'Ž', '1982-11-23'),
(1217, 1217, '34881884916', 'Ž', '1969-03-26'),
(1218, 1218, '34909391509', 'Ž', '1986-07-15'),
(1219, 1219, '35069384057', 'M', '1961-04-13'),
(1220, 1220, '35205964568', 'Ž', '1979-07-18'),
(1221, 1221, '35219593766', 'M', NULL),
(1222, 1222, '35402699573', 'Ž', NULL),
(1223, 1223, '35560019268', 'M', '1992-04-12'),
(1224, 1224, '35697925268', 'M', NULL),
(1225, 1225, '35704436788', 'Ž', '1967-05-29'),
(1226, 1226, '35827742621', 'Ž', '2003-01-14'),
(1227, 1227, '35832557588', 'Ž', '1949-01-04'),
(1228, 1228, '35936249385', 'Ž', '1968-03-05'),
(1229, 1229, '36029682003', 'Ž', '2006-10-26'),
(1230, 1230, '36054335922', 'Ž', '1974-01-26'),
(1231, 1231, '36083907210', 'Ž', '1955-12-22'),
(1232, 1232, '36333245134', 'Ž', NULL),
(1233, 1233, '36650750155', 'M', '1977-06-01'),
(1234, 1234, '36926300415', 'M', '1974-09-21'),
(1235, 1235, '37233935552', 'Ž', NULL),
(1236, 1236, '37620332922', 'Ž', '2001-01-05'),
(1237, 1237, '37961289996', 'M', '1973-02-28'),
(1238, 1238, '38062825126', 'M', '1984-08-21'),
(1239, 1239, '38080134608', 'M', NULL),
(1240, 1240, '38743035086', 'Ž', '1970-07-10'),
(1241, 1241, '38840254260', 'Ž', NULL),
(1242, 1242, '39231799187', 'M', '2001-04-30'),
(1243, 1243, '39374328193', 'Ž', NULL),
(1244, 1244, '39408831783', 'Ž', NULL),
(1245, 1245, '39586348040', 'Ž', NULL),
(1246, 1246, '40126283977', 'M', NULL),
(1247, 1247, '40462932794', 'M', '1999-05-05'),
(1248, 1248, '40539938462', 'Ž', '1983-04-21'),
(1249, 1249, '40604516037', 'M', '1965-05-25'),
(1250, 1250, '40931009134', 'M', '1953-04-18'),
(1251, 1251, '41118091789', 'M', NULL),
(1252, 1252, '41186433002', 'M', '2009-11-05'),
(1253, 1253, '41405640950', 'M', '1963-01-26'),
(1254, 1254, '41557932540', 'M', '1979-04-27'),
(1255, 1255, '41826284943', 'Ž', '1993-06-25'),
(1256, 1256, '42280317187', 'M', NULL),
(1257, 1257, '42896694548', 'M', '1966-01-23'),
(1258, 1258, '43072086887', 'Ž', '2008-08-05'),
(1259, 1259, '43269743600', 'Ž', '2005-11-28'),
(1260, 1260, '43538309728', 'Ž', '1979-11-28'),
(1261, 1261, '43781126062', 'Ž', NULL),
(1262, 1262, '44062027614', 'Ž', '1981-04-07'),
(1263, 1263, '44557294962', 'M', '2001-08-26'),
(1264, 1264, '44619123747', 'M', '1985-02-14'),
(1265, 1265, '44643549204', 'Ž', NULL),
(1266, 1266, '44761792952', 'M', '1975-04-28'),
(1267, 1267, '45051065130', 'Ž', '1976-10-07'),
(1268, 1268, '45344117831', 'Ž', '1971-08-16'),
(1269, 1269, '45625870473', 'Ž', '1977-11-04'),
(1270, 1270, '45628408565', 'Ž', NULL),
(1271, 1271, '45675450471', 'M', '1954-02-12'),
(1272, 1272, '45956869115', 'Ž', NULL),
(1273, 1273, '46017388462', 'Ž', '1974-06-24'),
(1274, 1274, '46841108798', 'M', '1966-11-03'),
(1275, 1275, '46913243858', 'Ž', '1979-12-17'),
(1276, 1276, '47076631442', 'Ž', '2000-02-05'),
(1277, 1277, '47413759627', 'M', '1982-03-20'),
(1278, 1278, '47810325005', 'Ž', NULL),
(1279, 1279, '47939431864', 'Ž', '1950-05-05'),
(1280, 1280, '47989942080', 'M', '1967-04-03'),
(1281, 1281, '48174813779', 'Ž', NULL),
(1282, 1282, '48429489225', 'M', '1983-02-24'),
(1283, 1283, '48758459374', 'M', '2006-03-14'),
(1284, 1284, '49029995600', 'M', NULL),
(1285, 1285, '49558333476', 'M', '2007-04-06'),
(1286, 1286, '49992042354', 'Ž', '1969-02-23'),
(1287, 1287, '50033321167', 'Ž', '1975-09-07'),
(1288, 1288, '50530439438', 'M', '1988-04-15'),
(1289, 1289, '50670231138', 'M', '1978-07-08'),
(1290, 1290, '50746794401', 'Ž', NULL),
(1291, 1291, '50786732072', 'Ž', '1997-09-15'),
(1292, 1292, '50910710641', 'Ž', '1997-02-11'),
(1293, 1293, '51079175589', 'M', NULL),
(1294, 1294, '51510915151', 'M', '1990-11-10'),
(1295, 1295, '51961716954', 'M', '1974-12-27'),
(1296, 1296, '52135495671', 'Ž', '1963-04-26'),
(1297, 1297, '52257485318', 'M', '2000-07-22'),
(1298, 1298, '52264017635', 'Ž', '2000-06-15'),
(1299, 1299, '52532693829', 'M', '1955-01-31'),
(1300, 1300, '52633338179', 'M', '1985-08-03'),
(1301, 1301, '52912132731', 'Ž', '2005-07-31'),
(1302, 1302, '53020441144', 'M', '1973-02-21'),
(1303, 1303, '53236769254', 'M', '1999-07-03'),
(1304, 1304, '53579724139', 'M', '2008-08-29'),
(1305, 1305, '53789892698', 'Ž', NULL),
(1306, 1306, '53859730433', 'M', '1957-08-22'),
(1307, 1307, '53909182185', 'M', NULL),
(1308, 1308, '54071252894', 'M', NULL),
(1309, 1309, '54209061672', 'Ž', '1973-02-08'),
(1310, 1310, '54429651003', 'M', '1978-10-05'),
(1311, 1311, '54475969682', 'M', '2002-02-02'),
(1312, 1312, '54826208442', 'M', '1975-06-29'),
(1313, 1313, '55134514219', 'M', '1972-02-25'),
(1314, 1314, '55214207403', 'M', '1970-08-13'),
(1315, 1315, '55305019772', 'M', NULL),
(1316, 1316, '55586705914', 'Ž', '1976-11-23'),
(1317, 1317, '55633784892', 'M', '2008-11-04'),
(1318, 1318, '55974168423', 'M', '1963-03-11'),
(1319, 1319, '56064541267', 'Ž', '1977-07-30'),
(1320, 1320, '56152676653', 'Ž', '1969-11-22'),
(1321, 1321, '56522180624', 'M', NULL),
(1322, 1322, NULL, 'Ž', '1980-05-17'),
(1323, 1323, '56810095985', 'M', NULL),
(1324, 1324, '56851937082', 'Ž', NULL),
(1325, 1325, '56989465091', 'M', '1971-10-18'),
(1326, 1326, '57081523157', 'Ž', '1980-04-06'),
(1327, 1327, '57298273182', 'M', NULL),
(1328, 1328, '57366273530', 'M', '1986-02-09'),
(1329, 1329, '57789111404', 'Ž', '2005-11-15'),
(1330, 1330, '57797625091', 'Ž', '1979-02-03'),
(1331, 1331, '58002194743', 'Ž', NULL),
(1332, 1332, '58327960209', 'Ž', '1964-01-29'),
(1333, 1333, '58383460625', 'M', '1981-04-23'),
(1334, 1334, '58389659985', 'M', '1974-07-15'),
(1335, 1335, '58498243166', 'M', NULL),
(1336, 1336, '58878840282', 'M', '1991-04-09'),
(1337, 1337, '58990460969', 'Ž', '2001-08-16'),
(1338, 1338, '59337987550', 'Ž', NULL),
(1339, 1339, '59496094693', 'M', '1989-05-25'),
(1340, 1340, '59755243333', 'Ž', '1972-09-10'),
(1341, 1341, '59863755713', 'M', NULL),
(1342, 1342, '59971669146', 'M', '2008-06-27'),
(1343, 1343, '59994083188', 'M', '1973-06-10'),
(1344, 1344, '60046528834', 'Ž', '1988-03-27'),
(1345, 1345, '60097015941', 'Ž', '1987-01-21'),
(1346, 1346, '60204640600', 'Ž', '1974-06-04'),
(1347, 1347, '60231827443', 'Ž', '1993-02-07'),
(1348, 1348, '60428009128', 'M', NULL),
(1349, 1349, '60582470653', 'M', '1992-06-30'),
(1350, 1350, '61069602908', 'M', NULL),
(1351, 1351, '61352433253', 'Ž', '2004-05-05'),
(1352, 1352, '61484010326', 'M', '1982-09-01'),
(1353, 1353, '61533470374', 'Ž', '1979-01-26'),
(1354, 1354, '61747190819', 'M', '1941-10-29'),
(1355, 1355, '61812906585', 'M', NULL),
(1356, 1356, '61880821497', 'M', NULL),
(1357, 1357, '61896132256', 'Ž', '1977-07-06'),
(1358, 1358, '62089514192', 'M', '1965-12-27'),
(1359, 1359, '62202252507', 'M', '1989-03-21'),
(1360, 1360, '62519835741', 'Ž', '1997-06-25'),
(1361, 1361, '62779857099', 'Ž', '1976-12-29'),
(1362, 1362, '63250225131', 'M', NULL),
(1363, 1363, '63337493903', 'M', '1962-02-10'),
(1364, 1364, '63388766066', 'Ž', NULL),
(1365, 1365, '63531792553', 'M', '1974-11-11'),
(1366, 1366, '63862863439', 'M', '1967-05-05'),
(1367, 1367, '64109461556', 'M', '1975-08-08'),
(1368, 1368, '64386819033', 'Ž', '1975-12-22'),
(1369, 1369, '64501772260', 'Ž', '1989-08-19'),
(1370, 1370, '64843811798', 'M', '1978-06-08'),
(1371, 1371, '65237301828', 'Ž', '2005-02-05'),
(1372, 1372, '65254800461', 'Ž', '1971-06-12'),
(1373, 1373, '65320169790', 'M', '2010-05-06'),
(1374, 1374, '65444771490', 'M', '1982-04-06'),
(1375, 1375, '65846196140', 'Ž', '1977-10-15'),
(1376, 1376, '65941965647', 'Ž', '1981-09-14'),
(1377, 1377, '66356186392', 'M', NULL),
(1378, 1378, '66368989385', 'Ž', NULL),
(1379, 1379, '66392738770', 'M', NULL),
(1380, 1380, NULL, 'Ž', '1994-07-25'),
(1381, 1381, '66456667739', 'Ž', NULL),
(1382, 1382, '66473571232', 'M', '2005-02-20'),
(1383, 1383, '66690256233', 'Ž', '1995-10-09'),
(1384, 1384, '66690460453', 'Ž', '1968-02-19'),
(1385, 1385, '66716894774', 'M', '1977-08-10'),
(1386, 1386, '66809196032', 'M', '1976-03-17'),
(1387, 1387, NULL, 'M', NULL),
(1388, 1388, '67398806144', 'M', '1960-07-20'),
(1389, 1389, '67398973288', 'Ž', '1974-10-28'),
(1390, 1390, '67525500215', 'Ž', '1985-10-21'),
(1391, 1391, '67541005613', 'Ž', '1968-11-13'),
(1392, 1392, '67781271620', 'Ž', '2001-03-18'),
(1393, 1393, '68015115308', 'M', '1940-07-21'),
(1394, 1394, '68070051322', 'M', '1961-04-04'),
(1395, 1395, '68118892747', 'M', NULL),
(1396, 1396, '68213351635', 'M', NULL),
(1397, 1397, '68426227089', 'Ž', '1975-01-04'),
(1398, 1398, '68580565520', 'M', '1972-03-06'),
(1399, 1399, NULL, 'M', NULL),
(1400, 1400, '68875636664', 'M', NULL),
(1401, 1401, '68898026867', 'Ž', NULL),
(1402, 1402, '70226575665', 'Ž', NULL),
(1403, 1403, '71065746493', 'Ž', '1965-12-05'),
(1404, 1404, '71086394939', 'Ž', NULL),
(1405, 1405, '71101262934', 'Ž', '1979-12-08'),
(1406, 1406, '71147567007', 'Ž', NULL),
(1407, 1407, '71153078817', 'M', '1969-07-11'),
(1408, 1408, '71421666953', 'M', '2008-09-28'),
(1409, 1409, '71442663634', 'M', '1975-08-14'),
(1410, 1410, '71586042144', 'Ž', '2005-09-22'),
(1411, 1411, '71628587236', 'M', '2012-07-06'),
(1412, 1412, '71714392375', 'Ž', '1990-12-18'),
(1413, 1413, '71866595118', 'Ž', '2001-03-27'),
(1414, 1414, '71967092580', 'Ž', '1967-11-22'),
(1415, 1415, '72035662525', 'M', '1985-09-05'),
(1416, 1416, '72065621448', 'M', '1986-04-10'),
(1417, 1417, '72119320965', 'Ž', '1967-09-24'),
(1418, 1418, '72335019912', 'M', '1982-06-18'),
(1419, 1419, '72472833937', 'M', '2002-04-02'),
(1420, 1420, '72505467937', 'M', '1969-05-08'),
(1421, 1421, '72615022313', 'Ž', '1981-07-06'),
(1422, 1422, '72786487608', 'M', '2001-02-20'),
(1423, 1423, '73288484763', 'M', '1979-01-11'),
(1424, 1424, '73363967967', 'Ž', '2004-10-04'),
(1425, 1425, '73498374598', 'Ž', '2011-01-17'),
(1426, 1426, '73560613404', 'M', '1983-01-01'),
(1427, 1427, '73840733470', 'M', '1962-05-01'),
(1428, 1428, '74199816154', 'M', NULL),
(1429, 1429, '74542672168', 'Ž', '1964-05-28'),
(1430, 1430, '74686901328', 'M', NULL),
(1431, 1431, '74687978483', 'Ž', '2003-10-23'),
(1432, 1432, '74714950643', 'M', NULL),
(1433, 1433, '75051099254', 'M', '1971-09-26'),
(1434, 1434, '75056004512', 'M', NULL),
(1435, 1435, '75466119409', 'Ž', NULL),
(1436, 1436, '75472725239', 'Ž', '1976-02-23'),
(1437, 1437, '75616687491', 'Ž', '2003-03-01'),
(1438, 1438, '75959844685', 'Ž', '2006-07-15'),
(1439, 1439, '76064942863', 'Ž', '2004-12-28'),
(1440, 1440, '76396565532', 'Ž', '2010-06-11'),
(1441, 1441, '76528111731', 'Ž', '2005-03-12'),
(1442, 1442, '76688267441', 'Ž', '2005-01-04'),
(1443, 1443, '77161078346', 'M', NULL),
(1444, 1444, '77276966106', 'M', '1961-08-19'),
(1445, 1445, '77608358345', 'Ž', '1972-07-12'),
(1446, 1446, '77716072137', 'M', '1982-08-28'),
(1447, 1447, '77854921510', 'M', '1973-06-29'),
(1448, 1448, '77867187198', 'M', '1977-11-29'),
(1449, 1449, '77975634732', 'M', '2000-12-17'),
(1450, 1450, '78064267110', 'M', NULL),
(1451, 1451, '78131769272', 'M', '2005-12-12'),
(1452, 1452, '78385867358', 'Ž', NULL),
(1453, 1453, '78460905165', 'M', '1969-08-25'),
(1454, 1454, '78537717235', 'Ž', '1975-08-19'),
(1455, 1455, '78898885218', 'M', '2002-04-13'),
(1456, 1456, '79716497096', 'Ž', NULL),
(1457, 1457, '79933434685', 'Ž', '1965-10-31'),
(1458, 1458, '80042560821', 'Ž', '2009-01-02'),
(1459, 1459, '80190754122', 'M', '1993-01-06'),
(1460, 1460, '80345419193', 'Ž', '1977-05-26'),
(1461, 1461, '80532668041', 'M', NULL),
(1462, 1462, '80738898422', 'Ž', NULL),
(1463, 1463, '80808544741', 'Ž', '1968-06-23'),
(1464, 1464, '80899853015', 'M', NULL),
(1465, 1465, NULL, 'Ž', '2003-02-11'),
(1466, 1466, '81220486034', 'Ž', '1979-10-10'),
(1467, 1467, '81271007787', 'Ž', '2008-05-05'),
(1468, 1468, '81454246321', 'M', NULL),
(1469, 1469, '82017533463', 'Ž', '2002-05-31'),
(1470, 1470, '82212854367', 'Ž', '1968-10-16'),
(1471, 1471, '82820763143', 'M', '1975-05-13'),
(1472, 1472, '83145532588', 'Ž', '1983-08-26'),
(1473, 1473, '83292504777', 'Ž', '1975-10-04'),
(1474, 1474, '83311511890', 'M', '1997-02-23'),
(1475, 1475, '83348034109', 'M', '1974-06-23'),
(1476, 1476, '83436430160', 'Ž', '1981-02-14'),
(1477, 1477, '83484954968', 'Ž', '2004-11-07'),
(1478, 1478, '83505242604', 'Ž', '1969-07-11'),
(1479, 1479, '83985987741', 'M', '1966-01-04'),
(1480, 1480, '84000129856', 'M', '1971-08-24'),
(1481, 1481, '84082892685', 'M', NULL),
(1482, 1482, '84254034539', 'M', '1961-07-13'),
(1483, 1483, '84396624341', 'Ž', '1987-11-02'),
(1484, 1484, '84737502207', 'M', '1950-08-10'),
(1485, 1485, '85039200494', 'Ž', NULL),
(1486, 1486, '85089291629', 'M', '1969-10-23'),
(1487, 1487, '85164048262', 'M', '1975-11-08'),
(1488, 1488, '85731960285', 'Ž', '1975-08-27'),
(1489, 1489, '85821249277', 'M', '1999-08-30'),
(1490, 1490, '85829691394', 'M', '1962-04-30'),
(1491, 1491, '85863307422', 'Ž', NULL),
(1492, 1492, '85936270274', 'M', '1971-09-11'),
(1493, 1493, '85965013664', 'Ž', '2006-01-26'),
(1494, 1494, '86110374862', 'M', '1963-09-26'),
(1495, 1495, '86395373356', 'M', NULL),
(1496, 1496, '86446560654', 'M', '1976-01-31'),
(1497, 1497, '86458055733', 'M', '2002-12-24'),
(1498, 1498, '86759392695', 'M', '1975-12-30'),
(1499, 1499, '87160334977', 'M', '1982-04-13'),
(1500, 1500, '87187633317', 'M', NULL),
(1501, 1501, '87330425513', 'Ž', '1942-08-28'),
(1502, 1502, '87438357167', 'Ž', '1984-04-01'),
(1503, 1503, '87684016089', 'M', '2006-04-10'),
(1504, 1504, '87766401164', 'Ž', '1974-01-30'),
(1505, 1505, '88094502291', 'M', '1967-12-02'),
(1506, 1506, '88232475559', 'M', '1975-07-23'),
(1507, 1507, '88675722876', 'M', '1994-04-13'),
(1508, 1508, '88741499021', 'Ž', '1996-07-02'),
(1509, 1509, '88846313496', 'M', NULL),
(1510, 1510, '88875080156', 'Ž', '1993-01-05'),
(1511, 1511, '88933294447', 'M', NULL),
(1512, 1512, '88962822870', 'Ž', '2004-11-07'),
(1513, 1513, '89729091985', 'Ž', NULL),
(1514, 1514, '89807512160', 'M', '1988-04-21'),
(1515, 1515, '89888504470', 'Ž', '1967-07-09'),
(1516, 1516, '90136246538', 'M', '1975-05-22'),
(1517, 1517, '90171960238', 'M', '1987-09-25'),
(1518, 1518, '90231088710', 'Ž', '1964-10-18'),
(1519, 1519, '90384573071', 'M', '1987-12-09'),
(1520, 1520, '90877803254', 'M', '1970-02-22'),
(1521, 1521, '91246488962', 'M', '2004-07-03'),
(1522, 1522, '91422201542', 'M', '2002-05-13'),
(1523, 1523, '91445307642', 'Ž', '1977-08-05'),
(1524, 1524, '91512256782', 'M', '2005-02-21'),
(1525, 1525, '91684966202', 'Ž', NULL),
(1526, 1526, '92158576936', 'Ž', '1985-11-25'),
(1527, 1527, '92209659472', 'Ž', NULL),
(1528, 1528, '92249462107', 'Ž', NULL),
(1529, 1529, '92422982264', 'Ž', '1975-08-14'),
(1530, 1530, '92664964959', 'Ž', '2007-06-25'),
(1531, 1531, '92686621065', 'M', '1954-02-13'),
(1532, 1532, '92780707475', 'Ž', '1999-07-27'),
(1533, 1533, '92865257546', 'M', '1958-05-18'),
(1534, 1534, '92866906868', 'M', '1975-01-06'),
(1535, 1535, '92990285705', 'M', '1998-04-14'),
(1536, 1536, '93187953209', 'M', '1990-07-17'),
(1537, 1537, '93189601117', 'M', '1983-09-02'),
(1538, 1538, '93247282622', 'Ž', '2009-11-12'),
(1539, 1539, '93337015311', 'M', '2006-06-29'),
(1540, 1540, '93530740134', 'M', '1980-03-25'),
(1541, 1541, '93551238639', 'Ž', '1984-08-28'),
(1542, 1542, '93568117624', 'Ž', NULL),
(1543, 1543, '93898416456', 'Ž', '1977-03-11'),
(1544, 1544, '94670637595', 'Ž', '1961-06-28'),
(1545, 1545, '94907380447', 'M', NULL),
(1546, 1546, '95108413896', 'M', '1980-01-17'),
(1547, 1547, '95477248348', 'Ž', '2005-05-19'),
(1548, 1548, '96088103649', 'M', '1952-01-19'),
(1549, 1549, '96291344266', 'Ž', '1983-06-25'),
(1550, 1550, '96497601631', 'Ž', '1977-04-20'),
(1551, 1551, '96706731836', 'Ž', '1958-12-23'),
(1552, 1552, '96850542645', 'Ž', '1971-03-29'),
(1553, 1553, '97311480820', 'M', NULL),
(1554, 1554, '97481262062', 'M', NULL),
(1555, 1555, '97751216277', 'M', NULL),
(1556, 1556, '97790942665', 'M', '1951-10-24'),
(1557, 1557, '97958505968', 'M', '2008-02-22'),
(1558, 1558, '97977318756', 'M', '1968-12-13'),
(1559, 1559, '98137259128', 'M', '1968-04-10'),
(1560, 1560, '98285055196', 'Ž', NULL),
(1561, 1561, '98314383145', 'Ž', '1977-01-27'),
(1562, 1562, '98482944803', 'M', '1963-03-14'),
(1563, 1563, '98576632169', 'M', '1959-11-07'),
(1564, 1564, '99373942223', 'Ž', NULL),
(1565, 1565, '99498512567', 'Ž', '1977-02-10'),
(1566, 1566, '99585010753', 'M', '1999-06-03'),
(1567, 1567, '99736165691', 'M', '1979-02-15'),
(1568, 1568, '99737718751', 'M', '1946-03-23'),
(1569, 1569, '02920260067', 'Ž', NULL),
(1570, 1570, '01315481485', 'M', '1995-06-18'),
(1571, 1571, NULL, 'M', '2006-03-15'),
(1572, 1572, '01553427633', 'M', '1992-06-27'),
(1573, 1573, '02208380491', 'M', NULL),
(1574, 1574, '04332386597', 'M', '1992-09-15'),
(1575, 1575, '04445914081', 'M', '1999-03-10'),
(1576, 1576, '05842771490', 'M', '1975-05-26'),
(1577, 1577, '07438758537', 'M', NULL),
(1578, 1578, '07814883746', 'Ž', NULL),
(1579, 1579, '08813620463', 'M', '1991-09-12'),
(1580, 1580, '10742344363', 'M', '1995-03-26'),
(1581, 1581, '10800361285', 'M', '1982-12-02'),
(1582, 1582, '10818114818', 'M', '1995-12-29'),
(1583, 1583, '11598238117', 'M', '2002-02-12'),
(1584, 1584, '12590796359', 'M', NULL),
(1585, 1585, '13469240310', 'M', '1994-04-01'),
(1586, 1586, '14108761783', 'M', '1974-06-18'),
(1587, 1587, '15628536862', 'Ž', '1982-03-19'),
(1588, 1588, '15755602768', 'M', '1990-08-03'),
(1589, 1589, '16769614993', 'Ž', '1999-11-23'),
(1590, 1590, '17284331829', 'M', '1974-09-16'),
(1591, 1591, '19927448401', 'Ž', NULL),
(1592, 1592, '20695816925', 'M', '1957-04-07'),
(1593, 1593, '22636002822', 'M', '2005-03-12'),
(1594, 1594, '23089346849', 'M', '1995-03-18'),
(1595, 1595, '24179910060', 'Ž', '1999-08-02'),
(1596, 1596, '24297966003', 'M', '1983-04-09'),
(1597, 1597, '28089132752', 'M', '2004-04-02'),
(1598, 1598, NULL, 'M', '1995-09-08'),
(1599, 1599, '30427466474', 'M', '1974-06-15'),
(1600, 1600, '31269657018', 'Ž', '2001-02-23'),
(1601, 1601, '33382372256', 'M', '2006-05-18'),
(1602, 1602, '34583327367', 'M', '2005-07-19'),
(1603, 1603, '35226565162', 'M', '1981-06-12'),
(1604, 1604, '36344646432', 'M', '1995-03-04'),
(1605, 1605, '39172084402', 'M', '1972-03-31'),
(1606, 1606, '39746944972', 'Ž', '2001-01-24'),
(1607, 1607, '43924749311', 'Ž', '1974-05-07'),
(1608, 1608, '44000618477', 'M', '2005-02-01'),
(1609, 1609, '46077375998', 'M', '1973-01-01'),
(1610, 1610, '46590669073', 'M', '1979-04-10'),
(1611, 1611, '47427646265', 'M', '1994-12-27'),
(1612, 1612, '47682508460', 'M', '1993-04-08'),
(1613, 1613, '50704276410', 'Ž', '1994-08-12'),
(1614, 1614, '51625274381', 'Ž', '1980-02-14'),
(1615, 1615, '52688179029', 'M', '2005-11-26'),
(1616, 1616, '53701879940', 'M', '1993-12-11'),
(1617, 1617, '54682050280', 'Ž', '2005-02-04'),
(1618, 1618, '55778213359', 'Ž', '2005-01-31'),
(1619, 1619, '56433082331', 'Ž', '2004-07-19'),
(1620, 1620, '56504355095', 'M', '1995-11-21'),
(1621, 1621, '57771061546', 'Ž', NULL),
(1622, 1622, '57984384223', 'Ž', '1982-09-11'),
(1623, 1623, '58537787690', 'Ž', '1985-06-26'),
(1624, 1624, '60014316918', 'M', NULL),
(1625, 1625, NULL, 'M', NULL),
(1626, 1626, '62082079561', 'M', NULL),
(1627, 1627, NULL, 'M', NULL),
(1628, 1628, '65756277005', 'M', NULL),
(1629, 1629, '68945031756', 'M', '1990-09-10'),
(1630, 1630, '69892043702', 'M', NULL),
(1631, 1631, '70426508123', 'Ž', '2000-12-31'),
(1632, 1632, '72124292206', 'Ž', NULL),
(1633, 1633, '72428445711', 'M', NULL),
(1634, 1634, '72852704243', 'Ž', '2004-01-15'),
(1635, 1635, '74871836041', 'M', '1997-04-07'),
(1636, 1636, '74895381615', 'M', '1995-09-22'),
(1637, 1637, '75061939808', 'M', NULL),
(1638, 1638, '78616476262', 'M', '1993-04-18'),
(1639, 1639, '78887398735', 'M', '1995-08-10'),
(1640, 1640, NULL, 'Ž', '1995-06-19'),
(1641, 1641, '81401617290', 'M', '1965-06-15'),
(1642, 1642, '81497630670', 'M', '1972-12-19'),
(1643, 1643, '82647351208', 'M', '1977-03-18'),
(1644, 1644, '82656654403', 'M', '2005-02-25'),
(1645, 1645, '83514657403', 'Ž', '1984-11-16'),
(1646, 1646, '85131681377', 'Ž', '2004-05-18'),
(1647, 1647, '85767800162', 'M', '1991-11-15'),
(1648, 1648, '85856305411', 'Ž', '1991-07-10'),
(1649, 1649, '93622651664', 'Ž', '2005-03-31'),
(1650, 1650, NULL, 'M', '1973-07-03'),
(1651, 1651, '95327445051', 'Ž', '1990-12-23'),
(1652, 1652, '96246569382', 'Ž', '2005-02-11'),
(1653, 1653, '96955044379', 'Ž', '2003-12-30'),
(1654, 1654, '98273668572', 'M', '1995-12-29'),
(1655, 1655, NULL, 'Ž', '1953-09-05'),
(1656, 1656, '80445590881', 'Ž', '1987-09-13'),
(1657, 1657, NULL, 'Ž', '2007-01-31'),
(1658, 1658, NULL, 'Ž', '2006-08-21'),
(1659, 1659, NULL, 'Ž', '1977-10-15'),
(1660, 1660, NULL, 'M', '2003-03-14'),
(1661, 1661, NULL, 'Ž', '1973-05-06'),
(1662, 1662, NULL, 'M', '1981-06-28'),
(1663, 1663, NULL, 'Ž', '2006-01-03'),
(1664, 1664, NULL, 'M', '1984-07-30'),
(1665, 1665, '60772474032', 'M', '2005-10-30'),
(1666, 1666, '24652956936', 'Ž', '2007-09-06'),
(1667, 1667, '21188660865', 'Ž', '2001-08-03'),
(1668, 1668, '28823350855', 'M', '2004-09-01'),
(1669, 1669, '23139879024', 'M', '2005-03-31'),
(1670, 1670, NULL, 'Ž', '1985-08-09'),
(1671, 1671, '01649603904', 'M', '1991-06-19'),
(1672, 1672, '00470815521', 'M', '1964-10-08'),
(1673, 1673, '67318181448', 'M', '1990-11-03'),
(1674, 1674, NULL, 'M', '1992-10-31'),
(1675, 1675, '56917495983', 'M', '1976-09-07'),
(1676, 1676, '40056995483', 'Ž', '1994-01-05'),
(1677, 1677, '08777042776', 'M', '1962-09-17'),
(1678, 1678, '03139145517', 'M', '1993-06-19'),
(1679, 1679, '90811876700', 'M', '1987-09-15'),
(1680, 1680, '30030850797', 'Ž', '1975-09-26'),
(1681, 1681, '04014720142', 'Ž', '1996-08-08'),
(1682, 1682, '85247717882', 'M', '1998-05-17'),
(1683, 1683, '56684335456', 'Ž', '1998-04-28'),
(1684, 1684, '20649012988', 'Ž', '1999-07-26'),
(1685, 1685, '91286130674', 'M', '1999-08-29'),
(1686, 1686, '57852322294', 'M', '2001-08-31'),
(1687, 1687, '88241251832', 'M', '2002-01-08'),
(1688, 1688, '67407669491', 'M', '2005-07-29'),
(1689, 1689, '16465959102', 'M', '1970-09-13'),
(1690, 1690, NULL, 'Ž', '1974-02-02'),
(1691, 1691, NULL, 'M', '1976-01-06'),
(1692, 1692, NULL, 'M', '2009-08-14'),
(1693, 1693, NULL, 'M', '2005-06-27'),
(1694, 1694, NULL, 'Ž', '2010-12-18'),
(1695, 1695, NULL, 'M', '1982-05-02'),
(1696, 1696, '44983721043', 'M', '1968-03-11'),
(1697, 1697, NULL, 'M', '1964-02-15'),
(1698, 1698, NULL, 'M', '1978-03-21'),
(1699, 1699, NULL, 'Ž', '1971-11-06'),
(1700, 1700, NULL, 'M', '1971-07-25'),
(1701, 1701, NULL, 'M', '1970-11-03'),
(1702, 1702, NULL, 'Ž', '2008-02-10'),
(1703, 1703, NULL, 'M', '2002-10-07'),
(1704, 1704, NULL, 'M', '2006-08-13'),
(1705, 1705, NULL, 'Ž', '1978-10-26'),
(1706, 1706, NULL, 'M', '2011-07-01'),
(1707, 1707, NULL, 'M', '1982-08-14'),
(1708, 1708, NULL, 'Ž', '1993-11-26'),
(1709, 1709, NULL, 'Ž', '1982-10-29'),
(1710, 1710, NULL, 'M', '1975-06-09'),
(1711, 1711, NULL, 'Ž', '1973-08-13'),
(1712, 1712, NULL, 'M', '2006-09-05'),
(1713, 1713, NULL, 'M', '2008-06-06'),
(1714, 1714, NULL, 'M', '1975-07-12'),
(1715, 1715, NULL, 'M', '2005-09-21'),
(1716, 1716, NULL, 'Ž', '2007-11-26'),
(1717, 1717, NULL, 'Ž', '1990-05-09'),
(1718, 1718, NULL, 'M', '2005-02-11'),
(1719, 1719, NULL, 'Ž', '1976-11-13'),
(1720, 1720, NULL, 'M', '1976-05-04'),
(1721, 1721, NULL, 'Ž', '2007-11-20'),
(1722, 1722, NULL, 'M', '2010-11-29'),
(1723, 1723, '66960943009', 'M', '2007-10-29'),
(1724, 1724, NULL, 'Ž', '1978-01-20'),
(1725, 1725, NULL, 'Ž', '1975-05-31'),
(1726, 1726, NULL, 'M', '1984-04-07'),
(1727, 1727, NULL, 'M', '1995-05-24'),
(1728, 1728, NULL, 'Ž', '1995-01-27'),
(1729, 1729, NULL, 'M', '1991-08-19'),
(1730, 1730, NULL, 'M', '1993-10-05'),
(1731, 1731, NULL, 'Ž', '1996-10-03'),
(1732, 1732, NULL, 'Ž', '1996-06-12'),
(1733, 1733, NULL, 'M', '1997-02-23'),
(1734, 1734, NULL, 'M', '1996-08-01'),
(1735, 1735, NULL, 'M', '1991-04-13'),
(1736, 1736, NULL, 'M', '1996-10-08'),
(1737, 1737, NULL, 'M', '1995-08-24'),
(1738, 1738, NULL, 'M', '1995-04-24'),
(1739, 1739, NULL, 'Ž', '1995-01-17'),
(1740, 1740, NULL, 'Ž', '1997-02-01'),
(1741, 1741, NULL, 'M', '1993-08-31'),
(1742, 1742, NULL, 'M', '1993-01-01'),
(1743, 1743, NULL, 'Ž', '1992-01-26'),
(1744, 1744, NULL, 'M', '2005-07-12'),
(1745, 1745, NULL, 'M', '1991-11-25'),
(1746, 1746, NULL, 'Ž', '1993-03-31'),
(1747, 1747, NULL, 'Ž', '1972-07-14'),
(1748, 1748, NULL, 'Ž', '1989-03-01'),
(1749, 1749, NULL, 'Ž', '1988-04-13'),
(1750, 1750, NULL, 'Ž', '1989-01-31'),
(1751, 1751, NULL, 'Ž', '1983-03-13'),
(1752, 1752, NULL, 'M', '2010-01-14'),
(1753, 1753, NULL, 'Ž', '2003-08-17'),
(1754, 1754, NULL, 'Ž', '2001-10-11'),
(1755, 1755, NULL, 'M', '2003-05-15'),
(1756, 1756, NULL, 'Ž', '2002-08-02'),
(1757, 1757, NULL, 'M', '2004-10-21'),
(1758, 1758, NULL, 'M', '2008-01-21'),
(1759, 1759, NULL, 'Ž', '2005-03-27'),
(1760, 1760, NULL, 'Ž', '2002-10-18'),
(1761, 1761, '17791432414', 'M', '1999-02-19'),
(1762, 1762, '07852830345', 'Ž', '2000-08-17'),
(1763, 1763, NULL, 'Ž', '2003-09-19'),
(1764, 1764, '04097156461', 'M', '1999-09-10'),
(1765, 1765, NULL, 'M', '2003-04-11'),
(1766, 1766, NULL, 'M', '2009-08-21'),
(1767, 1767, NULL, 'Ž', '2003-06-18'),
(1768, 1768, NULL, 'Ž', '2005-11-16'),
(1769, 1769, NULL, 'M', '2004-01-20'),
(1770, 1770, NULL, 'M', '2004-02-02'),
(1771, 1771, NULL, 'M', '1968-08-02'),
(1772, 1772, NULL, 'M', '2005-01-28'),
(1773, 1773, NULL, 'M', '1993-01-28'),
(1774, 1774, NULL, 'M', '1983-06-18'),
(1775, 1775, NULL, 'M', '1978-12-26'),
(1776, 1776, '11008721899', 'M', '1977-09-14'),
(1777, 1777, '15797551981', 'Ž', '1986-10-31'),
(1778, 1778, '72860967214', 'M', '1970-09-19'),
(1779, 1779, '66099920904', 'Ž', '2002-12-21'),
(1780, 1780, '77706982373', 'M', '2000-05-25'),
(1781, 1781, NULL, 'M', '1977-05-18'),
(1782, 1782, '55198818120', 'Ž', '1980-08-23'),
(1783, 1783, NULL, 'M', '1998-12-18'),
(1784, 1784, '24300472529', 'Ž', '1974-07-13'),
(1785, 1785, '74844993403', 'Ž', '1985-12-31'),
(1786, 1786, NULL, 'Ž', '1987-11-12'),
(1787, 1787, '41299510075', 'M', '1973-03-14'),
(1788, 1788, '64621194333', 'M', '1972-02-02'),
(1789, 1789, NULL, 'M', '1998-12-22'),
(1790, 1790, '97441583506', 'M', '1972-07-28'),
(1791, 1791, '87526716056', 'Ž', '1986-06-29'),
(1792, 1792, NULL, 'Ž', '1984-09-10'),
(1793, 1793, '04550514619', 'M', '1989-07-06'),
(1794, 1794, '35471456162', 'Ž', '1984-09-29'),
(1795, 1795, '22087503789', 'Ž', '1999-07-02'),
(1796, 1796, '82084135191', 'Ž', '1995-09-26'),
(1797, 1797, '37664729727', 'Ž', '1972-05-09'),
(1798, 1798, NULL, 'Ž', '1973-02-01'),
(1799, 1799, '40219040329', 'Ž', '2002-10-15'),
(1800, 1800, '77973930349', 'M', '2001-03-26'),
(1801, 1801, '61515926600', 'Ž', '1999-09-05'),
(1802, 1802, '53194563197', 'M', '2003-11-09'),
(1803, 1803, '75011140603', 'M', '1997-06-01'),
(1804, 1804, '62611538933', 'M', '2005-10-24'),
(1805, 1805, NULL, 'M', '1990-11-26'),
(1806, 1806, '45724896092', 'Ž', '1980-05-21'),
(1807, 1807, '34389687409', 'M', '2004-12-08'),
(1808, 1808, '87786397083', 'M', '1996-07-17'),
(1809, 1809, NULL, 'Ž', '1972-10-09'),
(1810, 1810, NULL, 'M', '2006-02-05'),
(1811, 1811, NULL, 'Ž', '1988-05-18'),
(1812, 1812, NULL, 'Ž', '1969-07-25'),
(1813, 1813, NULL, 'Ž', '1984-08-06'),
(1814, 1814, NULL, 'Ž', '1996-10-19'),
(1815, 1815, NULL, 'M', '1966-09-11'),
(1816, 1816, NULL, 'Ž', '1977-03-11'),
(1817, 1817, NULL, 'M', '1973-05-21'),
(1818, 1818, NULL, 'M', '1967-11-12'),
(1819, 1819, NULL, 'M', '2001-04-20'),
(1820, 1820, NULL, 'M', '1997-11-27'),
(1821, 1821, NULL, 'M', '1975-10-01'),
(1822, 1822, NULL, 'M', '2000-09-18'),
(1823, 1823, NULL, 'M', '1952-01-28'),
(1824, 1824, NULL, 'M', '1992-03-08'),
(1825, 1825, NULL, 'M', '1992-08-31'),
(1826, 1826, '89130453398', 'Ž', NULL),
(1827, 1827, '52165863177', 'M', '1982-08-20'),
(1828, 1828, '24309454384', 'Ž', '1981-07-09'),
(1829, 1829, '61002550396', 'Ž', '1993-12-15'),
(1830, 1830, '57538619064', 'M', NULL),
(1831, 1831, '23679370551', 'Ž', NULL),
(1832, 1832, '10540579995', 'M', NULL),
(1833, 1833, '74171633607', 'M', NULL),
(1834, 1834, NULL, 'M', NULL),
(1835, 1835, '47413054980', 'M', NULL),
(1836, 1836, '93173470967', 'M', '1968-06-24'),
(1837, 1837, '48320936698', 'M', '1968-05-21'),
(1838, 1838, '14953284981', 'Ž', NULL),
(1839, 1839, '51175667265', 'M', '1993-10-02');

-- --------------------------------------------------------

--
-- Table structure for table `osoba_log`
--

CREATE TABLE `osoba_log` (
  `id` int(11) NOT NULL,
  `reg_broj` int(11) DEFAULT NULL,
  `oib` char(11) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `spol` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dat_rodjenja` date DEFAULT NULL,
  `dnevnik_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sintaksa`
--

CREATE TABLE `sintaksa` (
  `id` tinyint(4) NOT NULL,
  `oznaka` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `naziv` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `sintaksa`
--

INSERT INTO `sintaksa` (`id`, `oznaka`, `naziv`) VALUES
(1, 'HR', 'Hrvatski standard'),
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
  `id` int(11) NOT NULL,
  `naziv` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `oznaka` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `grana_id` int(11) NOT NULL,
  `registracija` bit(1) NOT NULL,
  `aktivna` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `vrsta_lige`
--

INSERT INTO `vrsta_lige` (`id`, `naziv`, `oznaka`, `grana_id`, `registracija`, `aktivna`) VALUES
(1, 'Prvenstvo Hrvatske na dugim stazama', 'PH duge', 1, b'0', b'1'),
(2, 'Prvenstvo Hrvatske na srednjim stazama', 'PH srednje', 1, b'0', b'1'),
(3, 'Prvenstvo Hrvatske u sprintu', 'PH sprint', 1, b'0', b'1'),
(4, 'Kup Hrvatske', 'Kup HR', 1, b'1', b'1'),
(5, 'Sprint kup Hrvatske', 'Sprint kup HR', 1, b'1', b'1'),
(6, 'Kup Hrvatske u preciznoj orijentaciji', 'Kup HR', 2, b'1', b'1'),
(7, 'Kup Hrvatske u orijentaciji brdskim biciklima', 'Kup HR', 3, b'1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `vrsta_logina`
--

CREATE TABLE `vrsta_logina` (
  `id` int(11) NOT NULL,
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
,`aktivnost_id` int(11)
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
,`kategorija_id` int(11)
,`liga_id` int(11)
,`godina` int(11)
,`liga_rbr` int(11)
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
-- Stand-in structure for view `v_klub`
-- (See below for the actual view)
--
CREATE TABLE `v_klub` (
`id` int(11)
,`naziv` varchar(30)
,`oib` varchar(11)
,`drzava` varchar(30)
,`drzava_id` int(11)
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
`id` int(11)
,`godina` int(11)
,`rbr` int(11)
,`vrstalige_id` int(11)
,`vrstalige_naziv` varchar(60)
,`vrstalige_oznaka` varchar(20)
,`grana_id` int(11)
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
,`vrstalogina_id` int(11)
,`oznaka` varchar(30)
,`opis` varchar(60)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_natjecatelj`
-- (See below for the actual view)
--
CREATE TABLE `v_natjecatelj` (
`id` int(11)
,`ime` varchar(20)
,`prezime` varchar(30)
,`oib` char(11)
,`spol` char(1)
,`dat_rodjenja` date
,`reg_broj` int(11)
,`klub` varchar(30)
,`info` varchar(120)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_operater`
-- (See below for the actual view)
--
CREATE TABLE `v_operater` (
`operater_id` int(11)
,`kor_ime` varchar(20)
,`eposta` varchar(40)
,`klub_id` int(11)
,`vrsta_kor` varchar(10)
,`aktivan` datetime
,`ip_adresa` varchar(24)
,`login_hash` varchar(64)
,`session_id` varchar(40)
,`user_agent` varchar(300)
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

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_natjecatelj`  AS  select `imeprezime`.`id` AS `id`,`imeprezime`.`ime` AS `ime`,`imeprezime`.`prezime` AS `prezime`,`osoba`.`oib` AS `oib`,`osoba`.`spol` AS `spol`,`osoba`.`dat_rodjenja` AS `dat_rodjenja`,`osoba`.`reg_broj` AS `reg_broj`,`klub`.`naziv` AS `klub`,`imeprezime`.`info` AS `info` from ((`imeprezime` left join `osoba` on((`osoba`.`id` = `imeprezime`.`osoba_id`))) left join `klub` on((`klub`.`id` = `imeprezime`.`klub_id`))) order by `klub`.`naziv`,`imeprezime`.`prezime` ;

-- --------------------------------------------------------

--
-- Structure for view `v_operater`
--
DROP TABLE IF EXISTS `v_operater`;

CREATE ALGORITHM=UNDEFINED DEFINER=`orientee`@`localhost` SQL SECURITY DEFINER VIEW `v_operater`  AS  select `korisnik`.`id` AS `operater_id`,`korisnik`.`kor_ime` AS `kor_ime`,`korisnik`.`eposta` AS `eposta`,`korisnik`.`klub_id` AS `klub_id`,`vrsta_korisnika`.`naziv` AS `vrsta_kor`,`korisnik_session`.`aktivan` AS `aktivan`,`korisnik_session`.`ip_adresa` AS `ip_adresa`,`korisnik_session`.`login_hash` AS `login_hash`,`korisnik_session`.`session_id` AS `session_id`,`korisnik_session`.`user_agent` AS `user_agent` from ((`korisnik_session` left join `korisnik` on((`korisnik`.`id` = `korisnik_session`.`korisnik_id`))) left join `vrsta_korisnika` on((`vrsta_korisnika`.`id` = `korisnik`.`vrstakor_id`))) ;

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
  ADD KEY `i_dnevnik_aktivnost` (`aktivnost_id`),
  ADD KEY `i_dnevnik_korisnik` (`korisnik_id`) USING BTREE;

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
-- Indexes for table `imeprezime`
--
ALTER TABLE `imeprezime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_imeprezime_osoba` (`osoba_id`),
  ADD KEY `i_imeprezime_klub` (`klub_id`),
  ADD KEY `i_imeprezime_korisnik` (`idcheck_id`),
  ADD KEY `i_imeprezime_sintaksa` (`sintaksa_id`);

--
-- Indexes for table `kategorija`
--
ALTER TABLE `kategorija`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_kategorija_oznaka_grana` (`oznaka`,`grana_id`) USING BTREE,
  ADD KEY `i_kategorija_grana` (`grana_id`) USING BTREE,
  ADD KEY `i_kategorija_dob` (`dob_id`) USING BTREE,
  ADD KEY `i_kategorija_spol` (`spol`) USING BTREE;

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
  ADD KEY `i_korisnik_klub` (`klub_id`) USING BTREE,
  ADD KEY `i_korisnik_vrstakor` (`vrstakor_id`) USING BTREE;

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
  ADD UNIQUE KEY `u_liga_vrstalige_godina` (`vrstalige_id`,`godina`) USING BTREE,
  ADD UNIQUE KEY `u_liga_godina_rbr` (`godina`,`rbr`) USING BTREE,
  ADD KEY `i_liga_vrstalige` (`vrstalige_id`) USING BTREE;

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_login_vrstalogina` (`vrstalogina_id`),
  ADD KEY `i_login_korisnik` (`korisnik_id`) USING BTREE;

--
-- Indexes for table `osoba`
--
ALTER TABLE `osoba`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_oib` (`oib`),
  ADD UNIQUE KEY `u_regbroj` (`reg_broj`),
  ADD KEY `i_osoba_spol` (`spol`) USING BTREE;

--
-- Indexes for table `osoba_log`
--
ALTER TABLE `osoba_log`
  ADD KEY `i_id` (`id`) USING BTREE,
  ADD KEY `i_osobalog_dnevnik` (`dnevnik_id`) USING BTREE;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `dnevnik`
--
ALTER TABLE `dnevnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `drzava`
--
ALTER TABLE `drzava`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `imeprezime`
--
ALTER TABLE `imeprezime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1840;

--
-- AUTO_INCREMENT for table `kategorija`
--
ALTER TABLE `kategorija`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT for table `kategorija_liga`
--
ALTER TABLE `kategorija_liga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `klub`
--
ALTER TABLE `klub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `korisnik_hash`
--
ALTER TABLE `korisnik_hash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `korisnik_session`
--
ALTER TABLE `korisnik_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `liga`
--
ALTER TABLE `liga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT for table `osoba`
--
ALTER TABLE `osoba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1840;

--
-- AUTO_INCREMENT for table `sintaksa`
--
ALTER TABLE `sintaksa`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vrsta_lige`
--
ALTER TABLE `vrsta_lige`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  ADD CONSTRAINT `r_imeprezime_klub` FOREIGN KEY (`klub_id`) REFERENCES `klub` (`id`),
  ADD CONSTRAINT `r_imeprezime_korisnik` FOREIGN KEY (`idcheck_id`) REFERENCES `korisnik` (`id`),
  ADD CONSTRAINT `r_imeprezime_osoba` FOREIGN KEY (`osoba_id`) REFERENCES `osoba` (`id`);

--
-- Constraints for table `kategorija`
--
ALTER TABLE `kategorija`
  ADD CONSTRAINT `r_kategorija_dob` FOREIGN KEY (`dob_id`) REFERENCES `dob` (`id`),
  ADD CONSTRAINT `r_kategorija_grana` FOREIGN KEY (`grana_id`) REFERENCES `grana` (`id`),
  ADD CONSTRAINT `r_kategorija_spol` FOREIGN KEY (`spol`) REFERENCES `spol` (`id`);

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
  ADD CONSTRAINT `r_osoba_spol` FOREIGN KEY (`spol`) REFERENCES `spol` (`id`);

--
-- Constraints for table `osoba_log`
--
ALTER TABLE `osoba_log`
  ADD CONSTRAINT `r_osobalog_dnevnik` FOREIGN KEY (`dnevnik_id`) REFERENCES `dnevnik` (`id`);

--
-- Constraints for table `vrsta_lige`
--
ALTER TABLE `vrsta_lige`
  ADD CONSTRAINT `r_vrstalige_grana` FOREIGN KEY (`grana_id`) REFERENCES `grana` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
