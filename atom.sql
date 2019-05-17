-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2019 at 12:05 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atom`
--

-- --------------------------------------------------------

--
-- Table structure for table `atom_feeds`
--

CREATE TABLE `atom_feeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` blob NOT NULL,
  `pub_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atom_feeds`
--

INSERT INTO `atom_feeds` (`id`, `feed_id`, `title`, `url`, `content`, `pub_date`, `created_at`, `updated_at`) VALUES
(37, 'https://xkcd.com/2140/', 'Reinvent the Wheel', 'https://xkcd.com/2140/', 0x3c696d67207372633d2268747470733a2f2f696d67732e786b63642e636f6d2f636f6d6963732f7265696e76656e745f7468655f776865656c2e706e6722207469746c653d225269676874206e6f77206974277320612062696379636c6520776865656c2c20736f2077652776652068616420746f206d6f766520746f206c6967687465722076656869636c65732c20627574207468652072656475636564206f7665726865616420697320776f7274682069742e20546865726520776173206f6e65207765656b207768656e206120776865656c206f662063686565736520676f742064616e6765726f75736c7920636c6f736520746f2074686520666972737420706167652c2074686f7567682e2220616c743d225269676874206e6f77206974277320612062696379636c6520776865656c2c20736f2077652776652068616420746f206d6f766520746f206c6967687465722076656869636c65732c20627574207468652072656475636564206f7665726865616420697320776f7274682069742e20546865726520776173206f6e65207765656b207768656e206120776865656c206f662063686565736520676f742064616e6765726f75736c7920636c6f736520746f2074686520666972737420706167652c2074686f7567682e223e, 'Mon, 22 Apr 2019 00:00:00 +0000', '2019-04-24 04:25:35', '2019-04-24 04:25:35'),
(38, 'https://xkcd.com/2139/', 'Email Settings', 'https://xkcd.com/2139/', 0x3c696d67207372633d2268747470733a2f2f696d67732e786b63642e636f6d2f636f6d6963732f656d61696c5f73657474696e67732e706e6722207469746c653d22576861742061726520616c6c207468657365206c6573732d7468616e207369676e733f2057686174277320616e20485245463f204c6f6f6b2c207765206b6e6f7720796f75206c69766520696e20612066616e63792066757475726973746963207465636820776f726c642c20627574206e6f7420616c6c206f66207573206861766520757067726164656420746f20746865206c61746573742066726f6d2053756e204d6963726f73797374656d732e2220616c743d22576861742061726520616c6c207468657365206c6573732d7468616e207369676e733f2057686174277320616e20485245463f204c6f6f6b2c207765206b6e6f7720796f75206c69766520696e20612066616e63792066757475726973746963207465636820776f726c642c20627574206e6f7420616c6c206f66207573206861766520757067726164656420746f20746865206c61746573742066726f6d2053756e204d6963726f73797374656d732e223e, 'Fri, 19 Apr 2019 00:00:00 +0000', '2019-04-24 04:25:36', '2019-04-24 04:25:36'),
(39, 'https://xkcd.com/2138/', 'Wanna See the Code?', 'https://xkcd.com/2138/', 0x3c696d67207372633d2268747470733a2f2f696d67732e786b63642e636f6d2f636f6d6963732f77616e6e615f7365655f7468655f636f64652e706e6722207469746c653d22416e64206265636175736520696620796f75206a757374206c656176652069742074686572652c206974277320676f696e6720746f20737461727420636f6e74616d696e6174696e67207468696e677320646f776e73747265616d206576656e206966206e6f206f6e6520746f7563686573206974206469726563746c792e2220616c743d22416e64206265636175736520696620796f75206a757374206c656176652069742074686572652c206974277320676f696e6720746f20737461727420636f6e74616d696e6174696e67207468696e677320646f776e73747265616d206576656e206966206e6f206f6e6520746f7563686573206974206469726563746c792e223e, 'Wed, 17 Apr 2019 00:00:00 +0000', '2019-04-24 04:25:36', '2019-04-24 04:25:36'),
(40, 'https://xkcd.com/2137/', 'Text Entry', 'https://xkcd.com/2137/', 0x3c696d67207372633d2268747470733a2f2f696d67732e786b63642e636f6d2f636f6d6963732f746578745f656e7472792e706e6722207469746c653d2249206c696b6520746f207468696e6b207468617420736f6d657768657265206f75742074686572652c207468657265277320736f6d656f6e652077686f736520706572736f6e616c207175657374206973206c6f626279696e672054562070726f76696465727320746f2061646420616e206f7074696f6e20746f20737769746368207468656972206f6e2d73637265656e206b6579626f6172647320746f2044766f72616b2e2220616c743d2249206c696b6520746f207468696e6b207468617420736f6d657768657265206f75742074686572652c207468657265277320736f6d656f6e652077686f736520706572736f6e616c207175657374206973206c6f626279696e672054562070726f76696465727320746f2061646420616e206f7074696f6e20746f20737769746368207468656972206f6e2d73637265656e206b6579626f6172647320746f2044766f72616b2e223e, 'Mon, 15 Apr 2019 00:00:00 +0000', '2019-04-24 04:25:36', '2019-04-24 04:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_21_122841_create_atom_feeds_table', 1),
(4, '2019_04_22_072154_create_ratings_table', 1),
(5, '2019_04_24_064530_create_user_links_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` int(11) NOT NULL,
  `feedID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `userID`, `feedID`, `rating`, `created_at`, `updated_at`) VALUES
(36, 1, 'Reinvent the Wheel', 5, '2019-04-24 06:38:22', '2019-04-24 06:38:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Adrian Juma', 'sheerikie@gmail.com', NULL, '$2y$10$VW/AEU194ytRpn364kK7JehvDbqZvHL4F/fu9WnFa.kdwChOvKsiS', NULL, '2019-04-23 04:21:15', '2019-04-23 04:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_links`
--

CREATE TABLE `user_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` int(11) NOT NULL,
  `links` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_links`
--

INSERT INTO `user_links` (`id`, `userID`, `links`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:05:49', '2019-04-24 04:05:49'),
(2, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:25:35', '2019-04-24 04:25:35'),
(3, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:30:01', '2019-04-24 04:30:01'),
(4, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:31:37', '2019-04-24 04:31:37'),
(5, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:33:12', '2019-04-24 04:33:12'),
(6, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:34:03', '2019-04-24 04:34:03'),
(7, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:37:30', '2019-04-24 04:37:30'),
(8, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:38:15', '2019-04-24 04:38:15'),
(9, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:38:58', '2019-04-24 04:38:58'),
(10, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:39:23', '2019-04-24 04:39:23'),
(11, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:41:34', '2019-04-24 04:41:34'),
(12, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:44:21', '2019-04-24 04:44:21'),
(13, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:46:23', '2019-04-24 04:46:23'),
(14, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:47:52', '2019-04-24 04:47:52'),
(15, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:48:34', '2019-04-24 04:48:34'),
(16, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:49:43', '2019-04-24 04:49:43'),
(17, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:54:07', '2019-04-24 04:54:07'),
(18, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:54:14', '2019-04-24 04:54:14'),
(19, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:55:12', '2019-04-24 04:55:12'),
(20, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:55:54', '2019-04-24 04:55:54'),
(21, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:57:58', '2019-04-24 04:57:58'),
(22, 1, 'https://xkcd.com/atom.xml', '2019-04-24 04:59:40', '2019-04-24 04:59:40'),
(23, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:00:11', '2019-04-24 05:00:11'),
(24, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:02:33', '2019-04-24 05:02:33'),
(25, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:02:34', '2019-04-24 05:02:34'),
(26, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:03:34', '2019-04-24 05:03:34'),
(27, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:05:29', '2019-04-24 05:05:29'),
(28, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:09:24', '2019-04-24 05:09:24'),
(29, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:10:30', '2019-04-24 05:10:30'),
(30, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:11:18', '2019-04-24 05:11:18'),
(31, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:16:35', '2019-04-24 05:16:35'),
(32, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:24:11', '2019-04-24 05:24:11'),
(33, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:24:30', '2019-04-24 05:24:30'),
(34, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:25:24', '2019-04-24 05:25:24'),
(35, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:25:58', '2019-04-24 05:25:58'),
(36, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:26:57', '2019-04-24 05:26:57'),
(37, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:28:50', '2019-04-24 05:28:50'),
(38, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:29:32', '2019-04-24 05:29:32'),
(39, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:31:35', '2019-04-24 05:31:35'),
(40, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:36:08', '2019-04-24 05:36:08'),
(41, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:37:32', '2019-04-24 05:37:32'),
(42, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:38:07', '2019-04-24 05:38:07'),
(43, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:40:01', '2019-04-24 05:40:01'),
(44, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:40:49', '2019-04-24 05:40:49'),
(45, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:41:27', '2019-04-24 05:41:27'),
(46, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:44:03', '2019-04-24 05:44:03'),
(47, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:47:28', '2019-04-24 05:47:28'),
(48, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:48:06', '2019-04-24 05:48:06'),
(49, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:53:47', '2019-04-24 05:53:47'),
(50, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:54:52', '2019-04-24 05:54:52'),
(51, 1, 'https://xkcd.com/atom.xml', '2019-04-24 05:59:26', '2019-04-24 05:59:26'),
(52, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:00:40', '2019-04-24 06:00:40'),
(53, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:03:12', '2019-04-24 06:03:12'),
(54, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:04:39', '2019-04-24 06:04:39'),
(55, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:05:51', '2019-04-24 06:05:51'),
(56, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:06:03', '2019-04-24 06:06:03'),
(57, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:07:03', '2019-04-24 06:07:03'),
(58, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:07:57', '2019-04-24 06:07:57'),
(59, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:10:10', '2019-04-24 06:10:10'),
(60, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:11:39', '2019-04-24 06:11:39'),
(61, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:13:01', '2019-04-24 06:13:01'),
(62, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:14:40', '2019-04-24 06:14:40'),
(63, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:15:02', '2019-04-24 06:15:02'),
(64, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:15:19', '2019-04-24 06:15:19'),
(65, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:15:58', '2019-04-24 06:15:58'),
(66, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:16:28', '2019-04-24 06:16:28'),
(67, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:16:57', '2019-04-24 06:16:57'),
(68, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:19:24', '2019-04-24 06:19:24'),
(69, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:27:38', '2019-04-24 06:27:38'),
(70, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:33:31', '2019-04-24 06:33:31'),
(71, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:34:47', '2019-04-24 06:34:47'),
(72, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:38:13', '2019-04-24 06:38:13'),
(73, 1, 'https://xkcd.com/atom.xml', '2019-04-24 06:38:40', '2019-04-24 06:38:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atom_feeds`
--
ALTER TABLE `atom_feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_links`
--
ALTER TABLE `user_links`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atom_feeds`
--
ALTER TABLE `atom_feeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_links`
--
ALTER TABLE `user_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
