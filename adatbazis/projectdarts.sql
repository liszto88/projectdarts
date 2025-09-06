-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2025. Sze 06. 13:22
-- Kiszolgáló verziója: 9.1.0
-- PHP verzió: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `darts`
--
CREATE DATABASE IF NOT EXISTS `darts` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `darts`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

DROP TABLE IF EXISTS `felhasznalok`;
CREATE TABLE IF NOT EXISTS `felhasznalok` (
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `nicknev` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `jelszo` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `nem` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `szul_ido` date NOT NULL,
  `aktiv` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `torolve` datetime DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`email`, `nicknev`, `jelszo`, `nem`, `szul_ido`, `aktiv`, `torolve`) VALUES
('ku@tya.hu', 'kutya', '419e62f951f17f71343f7b4e19999b60', 'f', '2025-08-28', 'r', NULL),
('cica@mica.hu', 'cica', 'b9abdd7e4f97f9cd3c43c72f0d45e10e', 'n', '2025-07-17', 'r', NULL),
('most@vagysoha.hu', 'most', 'f7c0a09108cdf26287c1bc5af2ed1f93', 'f', '2025-04-18', 'r', NULL),
('peter@pal.hu', 'peti', 'ee465671cf0cf54ee42b2bbefce03f54', 'f', '2025-06-03', 'r', NULL),
('kutyam@majom.hu', 'kutyamajom', '3a9484c1593323de67ac25272408ee9a', 'f', '2025-01-31', 'r', NULL),
('szan@csengo.hu', 'karacsony', 'c963c07a5c9677c16938ab14a8271a39', 'f', '2025-07-20', 'r', NULL),
('mobil@telefon.hu', 'mobil', '5b0bdabac6b05c2e37cd904ce2c6fadf', 'n', '2025-06-14', 'r', NULL),
('macs@ka.hu', 'macska', 'e069ba3f1820d6d9de5d0e40c37b701d', 'n', '2024-01-06', 'r', NULL),
('teve@klub.hu', 'teve', 'ad10c1c1025283f30e45f244f6fa7d02', 'f', '2025-01-10', 'r', NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kiszallok`
--

DROP TABLE IF EXISTS `kiszallok`;
CREATE TABLE IF NOT EXISTS `kiszallok` (
  `ertek` varchar(10) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `kiszallo` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `kiszallok`
--

INSERT INTO `kiszallok` (`ertek`, `kiszallo`) VALUES
('2', 'D1'),
('3', '1 D1'),
('4', 'D2'),
('2', 'D1'),
('3', '1 D1'),
('4', 'D2'),
('5', '1 D2'),
('6', 'D3'),
('7', '3 D2'),
('8', 'D4'),
('9', '1 D4'),
('10', 'D5'),
('11', '3 D4'),
('12', 'D6'),
('13', '5 D4'),
('14', 'D7'),
('15', '7 D4'),
('16', 'D8'),
('17', '1 D8'),
('18', 'D9'),
('19', '3 D8'),
('20', 'D10'),
('21', '5 D8'),
('22', 'D11'),
('23', '7 D8'),
('24', 'D12'),
('25', '9 D8'),
('26', 'D13'),
('27', '13 D8'),
('28', 'D14'),
('29', '13 D8'),
('30', 'D15'),
('31', '15 D8'),
('32', 'D16'),
('33', '1 D16'),
('34', 'D17'),
('35', '3 D16'),
('36', 'D18'),
('37', '5 D16'),
('38', 'D19'),
('39', '7 D16'),
('40', 'D20'),
('41', '9 D16'),
('42', '10 D16'),
('43', '11 D16'),
('44', '12 D16'),
('45', '13 D16'),
('46', '14 D16'),
('47', '15 D16'),
('48', '16 D16'),
('49', '17 D16'),
('50', 'BULL'),
('51', '19 D16'),
('52', '20 D16'),
('53', '13 D20'),
('54', '14 D20'),
('55', '15 D20'),
('56', '16 D20'),
('57', '17 D20'),
('58', '18 D20'),
('59', '19 D20'),
('60', '20 D20'),
('61', 'T15 D8'),
('62', 'T10 D16'),
('63', 'T13 D12'),
('64', 'T16 D8'),
('65', '25 D20'),
('66', 'BULL D8'),
('67', 'T17 D8'),
('68', 'T20 D4'),
('69', 'T19 D6'),
('70', 'T18 D8'),
('71', 'T13 D16'),
('72', 'T20 D6'),
('73', 'T19 D8'),
('74', 'T14 D16'),
('75', 'T17 D12'),
('76', 'T20 D8'),
('77', 'T19 D10'),
('78', 'T18 D12'),
('79', 'T19 D11'),
('80', 'T20 D10'),
('81', 'T19 D12'),
('82', 'BULL D16'),
('83', 'T17 D16'),
('84', 'T20 D12'),
('85', 'T19 D14'),
('86', 'T18 D16'),
('87', 'T17 D18'),
('88', 'T20 D14'),
('89', 'T19 D16'),
('90', 'T20 D15'),
('91', 'BULL 9 D16'),
('92', 'BULL 10 D16'),
('93', 'BULL 11 D16'),
('94', 'BULL 12 D16'),
('95', 'BULL 13 D16'),
('96', 'T20 D18'),
('97', 'T19 D20'),
('98', 'T20 D19'),
('99', 'T17 16 D16'),
('100', 'T20 D20'),
('101', 'T19 12 D16'),
('102', 'T20 10 D16'),
('103', 'T20 11 D16'),
('104', 'T20 12 D16'),
('105', 'T19 16 D16'),
('106', 'T20 14 D16'),
('107', 'T19 18 D16'),
('108', 'T19 19 D16'),
('109', 'T20 17 D16'),
('110', 'T20 18 D16'),
('111', 'T19 14 D20'),
('112', 'T20 20 D16'),
('113', 'T20 13 D20'),
('114', 'T20 14 D20'),
('115', 'T20 15 D20'),
('116', 'T20 16 D20'),
('117', 'T20 17 D20'),
('118', 'T20 18 D20'),
('119', 'T20 19 D20'),
('120', 'T20 20 D20'),
('121', 'T20 T11 D14'),
('122', 'T18 T18 D7'),
('123', 'T19 T16 D9'),
('124', 'T20 T14 D11'),
('125', '25 T20 D20'),
('126', 'T19 T19 D6'),
('127', 'T20 T17 D8'),
('128', 'T18 T14 D16'),
('129', 'T19 T20 D6'),
('130', 'T20 T20 D5'),
('131', 'T20 T13 D16'),
('132', 'BULL BULL D16'),
('133', 'T20 T19 D8'),
('134', 'T20 T14 D16'),
('135', 'BULL T19 D14'),
('136', 'T20 T20 D8'),
('137', 'T20 T19 D10'),
('138', 'T20 T18 D12'),
('139', 'T19 BULL D16'),
('140', 'T20 T20 D10'),
('141', 'T20 T19 D12'),
('142', 'T20 BULL D16'),
('143', 'T20 T17 D16'),
('144', 'T20 T20 D12'),
('145', 'T20 T19 D14'),
('146', 'T19 T19 D16'),
('147', 'T20 T17 D18'),
('148', 'T20 T20 D14'),
('149', 'T20 T19 D16'),
('150', 'T20 T20 D15'),
('151', 'T20 T17 D20'),
('152', 'T20 T20 D16'),
('153', 'T20 T19 D18'),
('154', 'T20 T18 D20'),
('155', 'T20 T19 D19'),
('156', 'T20 T20 D18'),
('157', 'T20 T19 D20'),
('158', 'T20 T20 D19'),
('160', 'T20 T20 D20'),
('161', 'T20 T17 BULL'),
('164', 'T20 T18 BULL'),
('167', 'T20 T19 BULL'),
('170', 'T20 T20 BULL');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `statisztika`
--

DROP TABLE IF EXISTS `statisztika`;
CREATE TABLE IF NOT EXISTS `statisztika` (
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `atlag` double NOT NULL,
  `maxpont` double NOT NULL,
  `maxkiszallo` double NOT NULL,
  `osszjatek` int NOT NULL,
  `nyertjatek` int NOT NULL,
  `vesztettjatek` int NOT NULL,
  `osszleg` int NOT NULL,
  `nyertleg` int NOT NULL,
  `vesztettleg` int NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
