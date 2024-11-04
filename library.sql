-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 04. 10:55
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mark`
--

CREATE TABLE `mark` (
  `Id` char(36) NOT NULL,
  `MarkNumber` tinyint(4) DEFAULT NULL,
  `MarkText` varchar(30) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedTime` datetime DEFAULT NULL,
  `StudentId` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `mark`
--

INSERT INTO `mark` (`Id`, `MarkNumber`, `MarkText`, `Description`, `CreatedTime`, `UpdatedTime`, `StudentId`) VALUES
('638f683d-729b-4b75-b591-902ed4de9445', 5, 'jeles', 'Informatika', '2024-11-04 10:21:32', '2024-11-04 10:21:32', '2f5ddff7-5012-4a35-ae89-0ffecd414c7c'),
('800472f0-2e50-4287-a217-59c66105065c', 4, 'jó', 'Matematika', '2024-11-04 10:21:59', '2024-11-04 10:21:59', '2f5ddff7-5012-4a35-ae89-0ffecd414c7c'),
('dfa7dd2d-560d-4e27-b8e7-fd8d6e6c5ebd', 4, 'jó', 'Történelem', '2024-11-04 10:34:28', '2024-11-04 10:34:28', '4edc1afd-438e-41bf-96ea-ccc40c0d3954'),
('fa51c272-ad68-4dd2-bd58-fb656c3ece67', 3, 'közepes', 'Ének', '2024-11-04 10:22:12', '2024-11-04 10:22:12', '2f5ddff7-5012-4a35-ae89-0ffecd414c7c');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `student`
--

CREATE TABLE `student` (
  `Id` char(36) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Age` tinyint(4) DEFAULT NULL,
  `Email` text DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `student`
--

INSERT INTO `student` (`Id`, `Name`, `Age`, `Email`, `CreatedTime`) VALUES
('2f5ddff7-5012-4a35-ae89-0ffecd414c7c', 'Kiss András', 18, 'kissandras@gmail.com', '2024-11-04 10:08:57'),
('4edc1afd-438e-41bf-96ea-ccc40c0d3954', 'NagyAndrás', 17, 'nagyandras@gmail.com', '2024-11-04 10:10:38');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `StudentId` (`StudentId`);

--
-- A tábla indexei `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Id`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `mark`
--
ALTER TABLE `mark`
  ADD CONSTRAINT `mark_ibfk_1` FOREIGN KEY (`StudentId`) REFERENCES `student` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
