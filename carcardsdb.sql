-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Gép: 192.168.255.103
-- Létrehozás ideje: 2026. Ápr 28. 12:28
-- Kiszolgáló verziója: 11.4.7-MariaDB-log
-- PHP verzió: 8.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `carcardsdb`
--
CREATE DATABASE IF NOT EXISTS `carcardsdb` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `carcardsdb`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cards`
--

DROP TABLE IF EXISTS `cards`;
CREATE TABLE `cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  `fuel` varchar(255) NOT NULL,
  `gearbox` varchar(255) NOT NULL,
  `engine` varchar(255) NOT NULL,
  `horsepower` varchar(255) NOT NULL,
  `torque` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL,
  `top_speed` varchar(255) NOT NULL,
  `acceleration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `cards`
--

INSERT INTO `cards` (`id`, `name`, `manufacturer`, `image_url`, `fuel`, `gearbox`, `engine`, `horsepower`, `torque`, `weight`, `length`, `top_speed`, `acceleration`) VALUES
(1, '316i (E30)', 'BMW', 'kep1_e30.jpg', 'petrol', '5 speed manual', '1.6 | Inline 4', '101', '143', '1105', '432', '182', '12.1'),
(2, 'Corsa C 1.4', 'Opel', 'kep2_corsa.jpg', 'petrol', '5 speed manual', '1.4 | Inline 4', '90', '125', '1053', '384', '179', '11.5'),
(3, '911 GT3 RS', 'Porsche', 'kep3_gt3rs.jpg', 'petrol', '7 speed automatic', '4.0 | Boxer', '518', '465', '1450', '457', '296', '3.2'),
(4, '320Ci (E46)', 'BMW', 'kep4_e46.jpg', 'petrol', '5 speed manual', '2.2 | Inline 6', '170', '210', '1390', '449', '226', '8.4'),
(5, 'e220 (W210)', 'Mercedes', 'kep5_w210.jpg', 'diesel', '5 speed automatic', '2.1 | Inline 4', '125', '300', '1540', '480', '196', '11.2'),
(6, '530d (E60)', 'BMW', 'kep6_e60.jpg', 'diesel', '6 speed automatic', '3.0 | Inline 6', '218', '500', '1610', '484', '243', '7.3'),
(7, 'Yaris GR', 'Toyota', 'kep7_yaris.jpg', 'petrol', '6 speed manual', '1.6 | Inline 3', '261', '360', '1280', '395', '230', '5.5'),
(8, 'Golf 7 GTI', 'Volkswagen', 'kep8_7gti.jpg', 'petrol', '6 speed automatic', '2.0 | Inline 4', '230', '350', '1306', '426', '248', '6.4'),
(9, 'Golf 5', 'Volkswagen', 'kep9_golf5.png', 'petrol', '5 speed manual', '1.4 | Inline 4', '80', '132', '1189', '420', '168', '13.9'),
(10, 'Transporter T4', 'Volkswagen', 'kep10_transporter.jpg', 'diesel', '5 speed manual', '2.5 | Inline 5', '102', '250', '1780', '510', '150', '19.5'),
(11, '120d (E87)', 'BMW', 'kep11_e87.jpg', 'diesel', '6 speed manual', '2.0 | Inline 4', '177', '350', '1350', '424', '228', '7.6'),
(12, 'Raptor', 'Ford', 'kep12_raptor.jpg', 'petrol', '6 speed automatic', '5.0 | V8', '385', '525', '2100', '589', '210', '7'),
(13, 'GT', 'Ford', 'kep13_fordgt.jpg', 'petrol', '5 speed manual', '4.7 | V8', '385', '447', '910', '406', '257', '5.5'),
(14, '528i (E39)', 'BMW', 'kep14_e39.jpg', 'petrol', '5 speed manual', '2.8 | Inline 6', '193', '280', '1440', '477', '236', '7.5'),
(15, 'Civic 5gen', 'Honda', 'kep15_5gen.jpg', 'petrol', '5 speed manual', '1.6 | Inline 4', '160', '150', '1080', '408', '215', '7.3'),
(16, 'CRX ', 'Honda', 'kep16_crx.jpg', 'petrol', '5 speed manual', '1.6 | Inline 4', '130', '143', '910', '375', '212', '7.5'),
(17, 'Integra Type R', 'Honda', 'kep17_integra.jpg', 'petrol', '5 speed manual', '1.8 | Inline 4', '190', '178', '1120', '440', '233', '6.7'),
(18, 'Supra MK4', 'Toyota', 'kep18_supramk4.jpg', 'petrol', '6 speed manual', '3.0 | Inline 6', '330', '441', '1615', '451', '250', '5.1'),
(19, 'Supra GR MK5', 'Toyota', 'kep19_supramk5.jpg', 'petrol', '6 speed manual', '3.0 | Inline 6', '340', '500', '1495', '437', '250', '4.6'),
(20, 'Calibra', 'Opel', 'kep20_calibra.png', 'petrol', '5 speed manual', '2.5 | V6', '170', '228', '1355', '449', '237', '7.8'),
(21, 'Kadett E GSI', 'Opel', 'kep21_kadett.jpg', 'petrol', '5 speed manual', '2.0 | Inline 4', '150', '203', '990', '399', '220', '7.7'),
(22, 'Speedster', 'Opel', 'kep22_speedster.jpg', 'petrol', '5 speed manual', '2.0 | Inline 4', '200', '250', '1005', '378', '243', '4.9'),
(23, 'M4 Competition (F32)', 'BMW', 'kep23_m4f32.jpg', 'petrol', '7 speed automatic', '3.0 | Inline 6', '450', '550', '1570', '467', '280', '4'),
(24, 'M5 Competition (F90)', 'BMW', 'kep24_m5f90.jpg', 'petrol', '8 speed automatic', '4.4 | V8', '625', '750', '1865', '496', '305', '3.3'),
(25, 'AMG GT', 'Mercedes', 'kep25_amggt.jpg', 'petrol', '7 speed automatic', '4.0 | V8', '530', '670', '1723', '454', '312', '3.8'),
(26, 'BRZ', 'Subaru', 'kep26_brz.jpg', 'petrol', '6 speed manual', '2.0 | Inline 4', '200', '205', '1314', '424', '226', '7.6'),
(27, 'Impreza WRX STI', 'Subaru', 'kep27_impreza.jpg', 'petrol', '6 speed manual', '2.0 | Boxer', '265', '343', '1425', '440', '238', '5.5'),
(28, 'Quattro', 'Audi', 'kep28_quattro.jpg', 'petrol', '5 speed manual', '2.2 | Inline 5', '220', '309', '1380', '440', '230', '6.3'),
(29, 'Gallardo', 'Lamborghini', 'kep29_gallardo.jpg', 'petrol', '6 speed manual', '5.0 | V10', '519', '510', '1430', '430', '315', '4'),
(30, 'Cayanne S', 'Porsche', 'kep30_cayenne.jpg', 'diesel', '8 speed automatic', '4.1 | V8', '385', '850', '2290', '485', '252', '5.4'),
(31, '488 Spider', 'Ferrari', 'kep31_488spider.jpg', 'petrol', '7 speed automatic', '3.9 | V8', '670', '760', '1525', '456', '325', '3'),
(32, 'F8 Tributo', 'Ferrari', 'kep32_f8tributo.jpg', 'petrol', '7 speed automatic', '3.9 | V8', '720', '770', '1435', '461', '340', '2.9'),
(33, 'Giulia Veloce Q4', 'Alfa Romeo', 'kep33_giulia.jpg', 'petrol', '8 speed automatic', '2.0 | Inline 4', '280', '400', '1605', '464', '240', '5.2'),
(34, 'GT R', 'Nissan', 'kep34_gtr.jpg', 'petrol', '6 speed automatic', '3.8 | V6', '549', '632', '1815', '467', '315', '2.8'),
(35, 'Focus RS', 'Ford', 'kep35_focusrs.jpg', 'petrol', '6 speed manual', '2.5 | Inline 5', '305', '440', '1468', '440', '263', '5.9'),
(36, '2107', 'Lada', 'kep36_lada2107.jpg', 'petrol', '4 speed manual', '1.5 | Inline 4', '75', '103', '1035', '414', '150', '17'),
(37, 'R8', 'Audi', 'kep37_r8.jpg', 'petrol', '7 speed automatic', '5.2 | V10', '612', '580', '1690', '442', '331', '3.1'),
(38, 'RS7', 'Audi', 'kep38_rs7.jpg', 'petrol', '8 speed automatic', '4.0 | V8', '600', '800', '2065', '501', '250', '3.6'),
(39, 'Espirit', 'Lotus', 'kep39_espirit.jpg', 'petrol', '5 speed manual', '2.2 | Inline 4', '210', '271', '1220', '419', '245', '5.8'),
(40, 'Challenger', 'Dodge', 'kep40_challenger.jpg', 'petrol', '6 speed manual', '6.2 | V8', '717', '889', '2003', '501', '320', '3.6'),
(41, 'C63 AMG', 'Mercedes', 'kep41_c63.jpg', 'petrol', '9 speed automatic', '4.0 | V8', '470', '650', '1828', '468', '250', '4'),
(42, 'G63 AMG', 'Mercedes', 'kep42_g63.jpg', 'petrol', '9 speed automatic', '4.0 | V8', '577', '850', '2600', '487', '220', '4.5'),
(43, 'Coupe', 'Hyundai', 'kep43_hyundai.jpg', 'petrol', '5 speed manual', '2.0 | Inline 4', '143', '186', '1287', '439', '208', '9.1'),
(44, 'Octavia VRS', 'Skoda', 'kep44_vrs.jpg', 'petrol', '5 speed manual', '1.8 | Inline 4', '180', '235', '1300', '451', '235', '7.9'),
(45, '595', 'Abarth', 'kep45_abarth.jpg', 'petrol', '5 speed manual', '1.4 | Inline 4', '180', '250', '1045', '366', '225', '6.7'),
(46, 'Lancer EVO 6', 'Mitsubishi', 'kep46_evo6.jpg', 'petrol', '5 speed manual', '2.0 | Inline 4', '280', '373', '1360', '435', '250', '4.9'),
(47, 'Continental GT', 'Bentley', 'kep47_continentalgt.jpg', 'petrol', '8 speed automatic', '4.0 | V8', '522', '680', '2370', '480', '309', '4.5'),
(48, 'DBS', 'Aston Martin', 'kep48_dbs.jpg', 'petrol', '6 speed manual', '6.0 | V12', '510', '570', '1770', '472', '307', '4.3'),
(49, 'RC F', 'Lexus', 'kep49_rcf.jpg', 'petrol', '8 speed automatic', '5.0 | V8', '471', '530', '1860', '470', '270', '4.5'),
(50, '765 LT', 'McLaren', 'kep50_765lt.jpg', 'petrol', '7 speed automatic', '4.0 | V8', '755', '800', '1350', '460', '330', '2.8');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `market_listings`
--

DROP TABLE IF EXISTS `market_listings`;
CREATE TABLE `market_listings` (
  `id` int(11) NOT NULL,
  `user_card_id` int(11) NOT NULL,
  `status` enum('active','traded','cancelled') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `market_listings`
--

INSERT INTO `market_listings` (`id`, `user_card_id`, `status`) VALUES
(59, 173, 'traded'),
(62, 182, 'cancelled');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `market_offers`
--

DROP TABLE IF EXISTS `market_offers`;
CREATE TABLE `market_offers` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `offered_user_card_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `status` enum('pending','accepted','rejected') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `related_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `type`, `title`, `message`, `related_id`, `is_read`, `created_at`) VALUES
(1, 2, 'incoming_offer', 'New Offer Received!', 'asd offered their Ford Focus RS for your Mercedes G63 AMG', 10, 1, '2026-03-22 16:06:21'),
(2, 1, 'offer_accepted', 'Your Offer Was Accepted!', 'Your offer was accepted! You received Mercedes G63 AMG in exchange for your Audi RS7', 9, 1, '2026-03-22 16:10:20'),
(3, 2, 'incoming_offer', 'New Offer Received!', 'asd offered their Ferrari F8 Tributo for your Mercedes C63 AMG', 11, 1, '2026-03-23 16:36:43'),
(4, 2, 'incoming_offer', 'New Offer Received!', 'asd offered their Lada 2107 for your Audi RS7', 12, 1, '2026-03-23 17:35:28'),
(5, 1, 'offer_accepted', 'Your Offer Was Accepted!', 'Your offer was accepted! You received Audi RS7 in exchange for your Lada 2107', 12, 1, '2026-03-23 17:35:57'),
(6, 1, 'offer_accepted', 'Your Offer Was Accepted!', 'Your offer was accepted! You received Mercedes C63 AMG in exchange for your Ferrari F8 Tributo', 11, 1, '2026-03-23 17:36:06'),
(7, 2, 'incoming_offer', 'New Offer Received!', 'asd offered their Honda Integra Type R for your Lada 2107', 13, 1, '2026-03-23 22:05:06'),
(8, 1, 'offer_accepted', 'Your Offer Was Accepted!', 'Your offer was accepted! You received Lada 2107 in exchange for your Honda Integra Type R', 13, 1, '2026-03-23 22:05:39'),
(9, 2, 'incoming_offer', 'New Offer Received!', 'asd offered their Audi RS7 for your Abarth 595', 14, 1, '2026-03-23 22:06:48'),
(10, 1, 'offer_accepted', 'Your Offer Was Accepted!', 'Your offer was accepted! You received Abarth 595 in exchange for your Audi RS7', 14, 0, '2026-03-23 22:07:24'),
(11, 5, 'incoming_offer', 'New Offer Received!', 'fasz offered their BMW M5 Competition (F90) for your BMW 530d (E60)', 15, 0, '2026-04-15 22:55:44'),
(17, 8, 'offer_accepted', 'Your Offer Was Accepted!', 'Your offer was accepted! You received Honda Civic 5gen in exchange for your Porsche Cayanne S', 17, 1, '2026-04-17 07:03:34'),
(23, 8, 'offer_accepted', 'Your Offer Was Accepted!', 'Your offer was accepted! You received BMW M5 Competition (F90) in exchange for your Mercedes AMG GT', 20, 1, '2026-04-17 07:05:42'),
(26, 8, 'incoming_offer', 'New Offer Received!', 'fasz offered their Toyota Supra MK4 for your Lamborghini Gallardo', 23, 1, '2026-04-17 07:06:25'),
(35, 11, 'offer_accepted', 'Your Offer Was Accepted!', 'Your offer was accepted! You received Porsche Cayanne S in exchange for your BMW M4 Competition (F32)', 26, 0, '2026-04-19 15:09:18'),
(38, 5, 'incoming_offer', 'New Offer Received!', 'fasz offered their Ford Focus RS for your Toyota Supra MK4', 29, 0, '2026-04-19 15:28:18'),
(41, 5, 'incoming_offer', 'New Offer Received!', 'z offered their Ford Focus RS for your BMW 530d (E60)', 32, 0, '2026-04-20 09:04:32'),
(56, 29, 'incoming_offer', 'New Offer Received!', 'teszt offered their Opel Calibra for your Ford Focus RS', 44, 1, '2026-04-28 07:05:06'),
(59, 32, 'offer_accepted', 'Your Offer Was Accepted!', 'Your offer was accepted! You received Ford Focus RS in exchange for your Opel Calibra', 44, 1, '2026-04-28 07:39:55'),
(62, 29, 'incoming_offer', 'New Offer Received!', 'teszt offered their Ford Focus RS for your Opel Calibra', 47, 1, '2026-04-28 07:40:40'),
(65, 29, 'incoming_offer', 'New Offer Received!', 'teszt offered their Ford Focus RS for your BMW M4 Competition (F32)', 50, 1, '2026-04-28 07:52:35'),
(68, 29, 'incoming_offer', 'New Offer Received!', 'teszt offered their Ford Focus RS for your BMW M4 Competition (F32)', 53, 1, '2026-04-28 07:52:45'),
(71, 32, 'offer_accepted', 'Your Offer Was Accepted!', 'Your offer was accepted! You received BMW M4 Competition (F32) in exchange for your Ford Focus RS', 53, 1, '2026-04-28 07:52:57'),
(74, 32, 'incoming_offer', 'New Offer Received!', 'gyula1 offered their BMW M5 Competition (F90) for your Dodge Challenger', 56, 1, '2026-04-28 08:14:13'),
(77, 29, 'offer_rejected', 'Your Offer Was Rejected', 'Your offer for Dodge Challenger was rejected.', 56, 1, '2026-04-28 08:14:21'),
(80, 29, 'incoming_offer', 'New Offer Received!', 'teszt offered their Dodge Challenger for your Mercedes G63 AMG', 59, 1, '2026-04-28 08:14:57'),
(83, 32, 'offer_rejected', 'Your Offer Was Rejected', 'Your offer for Mercedes G63 AMG was rejected.', 59, 1, '2026-04-28 08:15:11');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`) VALUES
(32, 'teszt@gmail.com', '$2b$10$Qh1/2kM4g7E2ifmtZO5txO9x5jtguLoDJ438l6HRhT27bpSjhY4pi', 'teszt');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_cards`
--

DROP TABLE IF EXISTS `user_cards`;
CREATE TABLE `user_cards` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `card_id` int(10) UNSIGNED NOT NULL,
  `acquired_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `user_cards`
--

INSERT INTO `user_cards` (`id`, `user_id`, `card_id`, `acquired_at`) VALUES
(173, 32, 23, '2026-04-28 06:44:13'),
(182, 32, 40, '2026-04-28 07:54:46');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_packs`
--

DROP TABLE IF EXISTS `user_packs`;
CREATE TABLE `user_packs` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `acquired_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `user_packs`
--

INSERT INTO `user_packs` (`id`, `user_id`, `acquired_at`) VALUES
(278, 32, '2026-04-28 07:04:49'),
(281, 32, '2026-04-28 07:04:49'),
(284, 32, '2026-04-28 07:04:49'),
(287, 32, '2026-04-28 07:04:49'),
(290, 32, '2026-04-28 07:04:49'),
(293, 32, '2026-04-28 07:04:49'),
(296, 32, '2026-04-28 07:04:49'),
(299, 32, '2026-04-28 07:04:49');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `market_listings`
--
ALTER TABLE `market_listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `market_listings_status_index` (`status`),
  ADD KEY `market_listings_user_card_id_foreign` (`user_card_id`);

--
-- A tábla indexei `market_offers`
--
ALTER TABLE `market_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `market_offers_status_index` (`status`),
  ADD KEY `market_offers_offered_user_card_id_foreign` (`offered_user_card_id`),
  ADD KEY `market_offers_listing_id_foreign` (`listing_id`);

--
-- A tábla indexei `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_read` (`user_id`,`is_read`),
  ADD KEY `idx_created` (`created_at`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A tábla indexei `user_cards`
--
ALTER TABLE `user_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_cards_user_id_index` (`user_id`),
  ADD KEY `user_cards_card_id_index` (`card_id`);

--
-- A tábla indexei `user_packs`
--
ALTER TABLE `user_packs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_packs_user_id_foreign` (`user_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT a táblához `market_listings`
--
ALTER TABLE `market_listings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT a táblához `market_offers`
--
ALTER TABLE `market_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT a táblához `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT a táblához `user_cards`
--
ALTER TABLE `user_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT a táblához `user_packs`
--
ALTER TABLE `user_packs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `market_listings`
--
ALTER TABLE `market_listings`
  ADD CONSTRAINT `market_listings_user_card_id_foreign` FOREIGN KEY (`user_card_id`) REFERENCES `user_cards` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `market_offers`
--
ALTER TABLE `market_offers`
  ADD CONSTRAINT `market_offers_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `market_listings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `market_offers_offered_user_card_id_foreign` FOREIGN KEY (`offered_user_card_id`) REFERENCES `user_cards` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `user_cards`
--
ALTER TABLE `user_cards`
  ADD CONSTRAINT `user_cards_card_id_foreign` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_cards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `user_packs`
--
ALTER TABLE `user_packs`
  ADD CONSTRAINT `user_packs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
