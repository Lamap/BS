-- phpMyAdmin SQL Dump
-- version 3.1.3
-- http://www.phpmyadmin.net
--
-- Hoszt: localhost
-- Létrehozás ideje: 2013. okt. 01. 14:47
-- Szerver verzió: 5.1.32
-- PHP verzió: 5.2.9-1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `bs_2013`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet: `structure`
--

CREATE TABLE IF NOT EXISTS `structure` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `PARENT` int(5) NOT NULL,
  `NAME_HUN` text CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `NAME_ENG` text NOT NULL,
  `TEXT_CONTENT_HUN` text CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `IMAGES` text NOT NULL,
  `LABELS` text NOT NULL,
  `ORDERNUM` int(5) DEFAULT NULL,
  `TEXT_CONTENT_ENG` text NOT NULL,
  `LEVEL` int(5) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- A tábla adatainak kiíratása `structure`
--

INSERT INTO `structure` (`ID`, `PARENT`, `NAME_HUN`, `NAME_ENG`, `TEXT_CONTENT_HUN`, `IMAGES`, `LABELS`, `ORDERNUM`, `TEXT_CONTENT_ENG`, `LEVEL`) VALUES
(44, 38, 'nÃ©vtelen2', 'unnamed2', '', '', '', 2, '', 0),
(43, 38, 'nÃ©vtelen1', 'unnamed1', '', 'kocsma14.jpg', '', 1, '', 0),
(41, 38, 'kismanÃ³', 'highFive', '', '', '', 0, '', 0),
(47, 41, 'nÃ©vtelen0', 'unnamed0', '', '', '', 0, '', 0),
(48, 41, 'nÃ©vtelen1', 'unnamed1', '', '', '', 1, '', 0),
(49, 41, 'nÃ©vtelen2', 'unnamed2', '', '', '', 2, '', 0),
(50, 42, 'nÃ©vtelen0', 'unnamed0', '', '', '', 0, '', 0),
(51, 42, 'nÃ©vtelen1', 'unnamed1', '', '', '', 1, '', 0),
(52, 45, 'nÃ©vtelen0', 'unnamed0', '', '', '', 0, '', 0),
(53, 45, 'nÃ©vtelen1', 'unnamed1', '', '', '', 1, '', 0),
(54, 46, 'nÃ©vtelen0', 'unnamed0', '', '', '', 0, '', 0),
(56, 55, 'nÃ©vtelen0', 'unnamed0', '', '', '', 0, '', 0),
(57, 47, 'nÃ©vtelen0', 'unnamed0', '', '', '', 0, '', 0),
(58, 57, 'nÃ©vtelen0', 'unnamed0', '', '', '', 0, '', 0),
(60, 38, 'nÃ©vtelen3', 'unnamed3', '', '', '', 3, '', 2),
(62, 61, 'hahÃ³', 'gehhhhes', '', 'Auetuil_avtr.jpg,m03.jpg', '', 0, '', 2),
(63, 61, 'ffffff', 'unnamed1', '', '', '', 1, '', 2),
(68, 0, 'mainMenus', 'mainMenus', '', '', '', 0, '', 1),
(69, 0, 'subMenus', 'subMenus', '', '', '', 1, '', 1),
(70, 0, 'mainPageImages', 'mainPageImages', '', 'Szuster.jpg,bsV4.jpg,cleese.jpg', '', 2, '', 1),
(71, 68, 'KiÃ­rÃ¡s', 'Bulletin1', 'PHA+YXNkZnNhZGY8L3A+CjxwPnNkZjwvcD4KPHA+c2RmPC9wPgo8cD5zZmQ8L3A+', '', '', 0, 'PHAgYWxpZ249ImNlbnRlciI+PHN0cm9uZz5CdWRhU3ByaW50IDIwMTM8L3N0cm9uZz48L3A+CjxwIGFsaWduPSJjZW50ZXIiPjxzdHJvbmc+Jm5ic3A7PC9zdHJvbmc+PC9wPgo8cCBhbGlnbj0iY2VudGVyIj48c3Ryb25nPkJ1bGxldGluMTwvc3Ryb25nPjwvcD4KPHA+Jm5ic3A7PC9wPgo8cD48c3Ryb25nPkRhdGU6PC9zdHJvbmc+Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IDFzdCBvZiBOb3ZlbWJlciAyMDEzPC9wPgo8cD48c3Ryb25nPk9yZ2FpbmV6ZXI6Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IDwvc3Ryb25nPkhpZGVnayZ1YWN1dGU7dGkgU3BhcnRhY3VzIFNLRTwvcD4KPHA+PHN0cm9uZz5PcmcuIGNvbWl0dGU6Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IDwvc3Ryb25nPkNoYWlybWFuOiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBMZW5rZWkgR3kmQXJpbmc7wpF6JkFyaW5nO8KRPC9wPgo8cD4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgU2VjcmV0YXJ5OiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBIb3J2JmFhY3V0ZTt0aSBSJmVhY3V0ZTtrYTwvcD4KPHA+Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IENvdXJzZSBzZXR0ZXI6Jm5ic3A7Jm5ic3A7ICZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBMZW5rZWkgJkFhY3V0ZTtrb3M8L3A+CjxwPiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBFdmVudCBjb250cm9sbGVyOiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBCb3omYWFjdXRlO24gR3kmb3VtbDtyZ3k8L3A+CjxwPiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBTdGFydDombmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IFN6JkFyaW5nOyZwbHVzbW47Y3MgQi4gTGV2ZW50ZTwvcD4KPHA+Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IEZpbmlzaDombmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IFZpemkgVGlib3I8L3A+CjxwPiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBTSSBzeXN0ZW06Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7ICZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBSaWN6ZWwgWnN1enNhICZlYWN1dGU7cyBKJm9hY3V0ZTt6c2EgRyZhYWN1dGU7Ym9yPC9wPgo8cD4mbmJzcDs8L3A+CjxwPjxzdHJvbmc+RXZlbnQgZm9ybWF0OiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyA8L3N0cm9uZz4xIGRheSBjb21wZXRpdGlvbiwgaW5kaXZpZHVhbCwgbWlkZGxlIGRpc3RhbmNlLjwvcD4KPHA+PHN0cm9uZz5Mb2NhdGlvbjombmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgPC9zdHJvbmc+QnVkYXBlc3QsIGFyZWEgb2YgQnVkYSBDYXN0bGUsIHBhcnQgb2YgV29ybGQgaGVyaXRhZ2UuPC9wPgo8cD48c3Ryb25nPkV2ZW50IGNlbnRlcjo8L3N0cm9uZz4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgQnVkYXBlc3RpIEVneWV0ZW1pIEthdG9saWt1cyBHaW1uJmFhY3V0ZTt6aXVtICZlYWN1dGU7cyBLb2xsJmVhY3V0ZTtnaXVtPC9wPgo8cD48c3Ryb25nPiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyA8L3N0cm9uZz4xMDE1IEJ1cGFwZXN0LCBTemFiJm9hY3V0ZTsgSWxvbmthIHV0Y2EgMS00LjwvcD4KPHA+PHN0cm9uZz5UZXJyYWluOiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyA8L3N0cm9uZz5XYWxrd2F5cyBpbiBwYXJrcywgaGlzdG9yaWNhbCBzdHJlZXRzLjwvcD4KPHA+PHN0cm9uZz5NYXA6Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IDwvc3Ryb25nPlN1cGVydmlzZWQgaW4gMjAxMyBhbmQgZXh0ZW5kZWQgbWFwIG9mIHRoZSBCdWRhaSBWJmFhY3V0ZTtyLiBUaGUgcHJldmlvdXMgbWFwcyBjYW4gYmUgd2F0Y2hlZCBvbiB0aGUgZXZlbnQmcnNxdW87cyB3ZWJzaXRlLjwvcD4KPHA+PHN0cm9uZz5DYXRlZ29yaWVzOiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyA8L3N0cm9uZz5XL00gMTJDLCAxNS0xOEMsIDE0QiwgMTZCLCAxOEIsIDIxQSwgMzUsIDQwLCA0NSwgNTAsIDU1LCA2MCwgNjUsIDcwLCBPcGVuIHNob3J0LCBPcGVuIGxvbmc8L3A+CjxwPjxzdHJvbmc+Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IDwvc3Ryb25nPkluIGNhc2Ugb2YgbGVzcyBlbnRyeSB0aGVuIDUgd2Ugd2lsbCBtYXNzIGNhdGVnb3JpZXMgdG9nZXRoZXIuPC9wPgo8cD48c3Ryb25nPkVudHJ5IGRlYWRsaW5lczombmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgPC9zdHJvbmc+MXN0IGRlYWRsaW5lJm5ic3A7IDIwdGggb2Ygb2N0b2Jlci48L3A+CjxwPiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyAybmQgZGVhZGxpbmUgMjd0aCBvZiBvY3RvYmVyLjwvcD4KPHA+PHN0cm9uZz5FbnRyeTombmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgPC9zdHJvbmc+VmlhTVRGU1ogRU5UUlkgc3lzdGVtOiA8YSBocmVmPSJodHRwOi8vZW50cnkubXRmc3ouaHUvaW5kZXgucGhwIj5odHRwOi8vZW50cnkubXRmc3ouaHUvaW5kZXgucGhwPC9hPiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOzwvcD4KPHA+Jm5ic3A7PC9wPgo8cD4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgSW4gY2FzZSBvZiBwcm9ibGVtIHdpdGggdGhlIHBvc3NpYmlsaXR5IGFib3ZlIGVudHJ5IGJ5IGVtYWlsOjwvcD4KPHA+Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IDxhIGhyZWY9Im1haWx0bzpidWRhc3ByaW50MjAxMUBnbWFpbC5jb20iPmJ1ZGFzcHJpbnQyMDExQGdtYWlsLmNvbTwvYT48L3A+CjxwIHN0eWxlPSJtYXJnaW4tbGVmdDogMTIwcHg7Ij4oV2Ugd2lsbCBnaXZlIHlvdSBmZWVkYmFjayB3aXRoaW4gMiBkYXlzLCBvdGhlcnN3aXNlIHBsZWFzZSByZXBlYXQgdGhlIGVudHJ5Lik8L3A+CjxwIHN0eWxlPSJtYXJnaW4tbGVmdDogOTBweDsiPlRoZSBjb21wZXRpdGlvbiBpcyBvcmdhbml6ZWQgYnkmbmJzcDsgdGhlIFNQT1JUaWRlbnQgc3lzdGVtLiBQbGVhc2UgZG9uJnJzcXVvO3QgZm9yZ2V0Jm5ic3A7IHlvdXIgbmFtZSwgU0kgY2FyZCBudW1iZXIgYW5kIGtsdWIuPC9wPgo8cD48c3Ryb25nPiZuYnNwOyBFbnRyeSBmZWU6Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IDwvc3Ryb25nPlRvIGJlIHBhaWQgb24gZXZlbnQgY2VudGVyLjwvcD4KPHA+PHN0cm9uZz4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgPC9zdHJvbmc+dGlsbDFzdCBkZWFkbGluZSZuYnNwOyAyMHRoIG9mIG9jdG9iZXI6Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7PC9wPgo8cD4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgVy9NIDEyQywgMTUtMThDLCA2NSwgNzAsJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7ICZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyAmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgODAwIEZ0PC9wPgo8cD4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgVy9NIDE0QiAmbmRhc2g7IEZONjA6Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7ICZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyAxMjAwIEZ0PC9wPgo8cD4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgT3BlbnMgJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7ICZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyA4MDAgRnQ8L3A+CjxwPiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyB0aWxsIDJuZCBkZWFkbGluZSAyN3RoIG9mIG9jdG9iZXI6Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7PC9wPgo8cD4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgVy9NIDEyQywgMTUtMThDLCA2NSwgNzAsJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7ICZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyAmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgMTIwMCBGdDwvcD4KPHA+Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IFcvTSA0QSAmbmRhc2g7IEZONjA6Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7ICZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyAxNjAwIEZ0PC9wPgo8cD4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgT3BlbnMmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7ICZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyA4MDAgRnQ8L3A+CjxwPiZuYnNwOzwvcD4KPHA+Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IEFmdGVyIGxhc3QgZGVhZGxpbmUgeW91IGNhbiBlbnRyeSBhdCB0aGUgZXZlbnQgY2VudGVyIGJ5IHBheWluZyA0MDAgSFVGIGV4dHJhIGZlZSBhcyBsb25nIGFzIHRoZXJlIGFyZSBlbXB0eSBwbGFjZXMgaW4gdGhlIHN0YXJ0bGlzdC4gSW4gb3BlbiBjYXRlZ29yeSB0aGVyZSBpcyBubyBleHRyYSBmZWUuPC9wPgo8cD4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgU0kgY2FyZCByZW50aW5nIGlzIDIwMCBIVUYuPC9wPgo8cD4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDs8L3A+CjxwPjxzdHJvbmc+UGxhbm5lZCBmaXJzdCBzdGFydDogPC9zdHJvbmc+MTQ6MDAgQ0VUPC9wPgo8cD48c3Ryb25nPlByaXplczombmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgPC9zdHJvbmc+SW4gZWFjaCBjYXRlZ29yeSB0aGUgdG9wIHRocmVlIHdpbGwgYmUgZ2l2ZW4gYSBtZWRhbC48L3A+CjxwPjxzdHJvbmc+RnVydGhlciBpbmZvOjwvc3Ryb25nPiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyA8YSBocmVmPSJodHRwczovL3d3dy5mYWNlYm9vay5jb20vZXZlbnRzLzIzMDkzMTc2MDM5Njk2NC8iPmh0dHBzOi8vd3d3LmZhY2Vib29rLmNvbS9ldmVudHMvMjMwOTMxNzYwMzk2OTY0LzwvYT48L3A+CjxwPjxzdHJvbmc+T3RoZXI6Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IDwvc3Ryb25nPlRoZSBidWxsZXRpbjIgd2lsbCBiZSByZXZlYWxlZCBvbiAyN3RoIG9mIE9jdG9iZXIgb24gdGhlIHdlYnNpdGUgb2YgdGhlIGNvbXBldGl0aW9uLjwvcD4KPHA+PHN0cm9uZz4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgPC9zdHJvbmc+RXZlcnkgY29tcGV0aXRvciB0YWtlcyBwYXJ0IGF0IGhlci9oaXMgb3duIHJpc2suPC9wPgo8cD4mbmJzcDs8L3A+', 2),
(73, 68, 'NevezÃ©s', 'Entry', 'PHA+Jm5ic3A7PC9wPgo8cD4mbmJzcDs8L3A+CjxwPiZuYnNwOzwvcD4KPHA+TmV2ZXomZWFjdXRlO3MgYXogbXRmc3ogRU5UUlkgcmVuZHN6ZXImZWFjdXRlO2JlbjogPGEgaHJlZj0iaHR0cDovL2VudHJ5Lm10ZnN6Lmh1LyI+aHR0cDovL2VudHJ5Lm10ZnN6Lmh1LzwvYT4uPC9wPg==', '', '', 1, 'PHA+Jm5ic3A7PC9wPgo8cD4mbmJzcDs8L3A+CjxwPiZuYnNwOzwvcD4KPHA+UGxlYXNlIHJlZ2lzdGVyIGluIHRoZSBvbmxpbmUgZW50cnkgc3lzdGVtOiA8YSBocmVmPSJodHRwOi8vZW50cnkubXRmc3ouaHUvIj5odHRwOi8vZW50cnkubXRmc3ouaHUvPC9hPi48L3A+', 2),
(75, 68, 'Startlista', 'Startlist', 'PHA+Jm5ic3A7PC9wPgo8cD4mbmJzcDs8L3A+CjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+SyZlYWN1dGU7c8WRYmIuPC9zcGFuPjwvcD4=', '', '', 2, 'PHA+Jm5ic3A7PC9wPgo8cD4mbmJzcDs8L3A+CjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+TGF0ZXIuPC9zcGFuPjwvcD4=', 2),
(76, 68, 'EredmÃ©nyek', 'Results', 'PHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4mbmJzcDs8L3NwYW4+PC9wPgo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlZlcnNlbnkgdSAmbmJzcDsgJm5ic3A7IGJ2bnZuYnZudmJudCZhYWN1dGU7bi48L3NwYW4+PC9wPg==', '', '', 3, 'PHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4mbmJzcDs8L3NwYW4+PC9wPgo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkFmdGVyIGNvbXBldGl0aW9uLjwvc3Bhbj48L3A+', 2),
(77, 69, 'TÃ©rkÃ©pek', 'The Castle on maps', '', 'cleese (1).jpg,bsV4 (1).jpg,2.jpg,14.jpg', '', 0, '', 2),
(78, 69, 'KÃ©pek', 'The Castle on Pictures', '', 'idle.jpg,kezetmos.jpg,cleese2.JPG,13.jpg,1.jpg,5.jpg,6.jpg,8.jpg,12.jpg', '', 1, '', 2),
(79, 69, 'MegkÃ¶zelÃ­tÃ©s', 'How to get there', 'PHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbWVkaXVtOyI+Jm5ic3A7PC9zcGFuPjwvcD4KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbWVkaXVtOyI+TWluZGomYWFjdXRlO3J0IGVsbWFneWFyJmFhY3V0ZTt6b20uLi4gOik8L3NwYW4+PC9wPg==', '', '', 2, 'PHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbWVkaXVtOyI+Jm5ic3A7PC9zcGFuPjwvcD4KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbWVkaXVtOyI+T2theSwgbGV0IG1lIGV4cGxhaW4uLi48L3NwYW4+PC9wPg==', 2),
(80, 69, 'Linkek', 'Links', 'PHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogc21hbGw7Ij4mbmJzcDs8L3NwYW4+PC9wPgo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBzbWFsbDsiPlRhYiZhYWN1dGU7biBhdGxhc3o8L3NwYW4+PC9wPgo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBzbWFsbDsiPjxhIGhyZWY9Imh0dHA6Ly9hdGxhc3oudGFiYW5tdXpldW0uaHUvIj5odHRwOi8vYXRsYXN6LnRhYmFubXV6ZXVtLmh1LzwvYT48L3NwYW4+PC9wPg==', '', '', 3, 'PHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogc21hbGw7Ij4mbmJzcDs8L3NwYW4+PC9wPgo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBzbWFsbDsiPkF0bGFzIG9mIHRoZSBhbmNpZW50IFRhYiZhYWN1dGU7biZuYnNwOzwvc3Bhbj48L3A+CjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IHNtYWxsOyI+PGEgaHJlZj0iaHR0cDovL2F0bGFzei50YWJhbm11emV1bS5odS8iPmh0dHA6Ly9hdGxhc3oudGFiYW5tdXpldW0uaHUvPC9hPjwvc3Bhbj48L3A+', 2);
