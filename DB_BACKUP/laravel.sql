-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 18, 2018 at 05:11 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_10_27_141258_create_tasks_table', 1),
('2018_01_18_140942_create_products_table', 2),
('2018_01_18_140953_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `products` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dsousa.dev@gmail.com', '89458831644676489084dd8dbe04bdffcbeba95d1194327ad0ed370a19f8b929', '2018-01-18 13:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `slug`, `image`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'lisbon_7_days', '/images/Lisbon.jpg', 'Visit Lisbon in 7 Days', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend sit amet purus quis rhoncus. Fusce hendrerit placerat nulla. Vestibulum non dignissim arcu. Maecenas interdum, augue ut bibendum elementum, nisl augue tristique nisi, a imperdiet orci tellus at turpis. Sed pulvinar augue ut dignissim tincidunt. In scelerisque felis non porta venenatis. Vivamus in elementum enim. Duis lorem mauris, pharetra sed tempor vitae, efficitur elementum neque. Aliquam lacinia lectus orci, ut posuere augue accumsan vel. Sed nec porta nunc. Duis id efficitur massa. Nullam lacinia quis augue a pulvinar. Nunc pharetra eu velit ac lacinia. Integer facilisis dictum tellus. Nullam molestie urna luctus, ultrices dolor in, eleifend neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 530, NULL, NULL),
(2, 'malta_in_the_spring', '/images/malta.jpg', 'Enjoy the traditional spring partys in Malta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend sit amet purus quis rhoncus. Fusce hendrerit placerat nulla. Vestibulum non dignissim arcu. Maecenas interdum, augue ut bibendum elementum, nisl augue tristique nisi, a imperdiet orci tellus at turpis. Sed pulvinar augue ut dignissim tincidunt. In scelerisque felis non porta venenatis. Vivamus in elementum enim. Duis lorem mauris, pharetra sed tempor vitae, efficitur elementum neque. Aliquam lacinia lectus orci, ut posuere augue accumsan vel. Sed nec porta nunc. Duis id efficitur massa. Nullam lacinia quis augue a pulvinar. Nunc pharetra eu velit ac lacinia. Integer facilisis dictum tellus. Nullam molestie urna luctus, ultrices dolor in, eleifend neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 240, NULL, NULL),
(3, 'paris_by_night', '/images/paris.jpg', 'The magic of Paris night', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend sit amet purus quis rhoncus. Fusce hendrerit placerat nulla. Vestibulum non dignissim arcu. Maecenas interdum, augue ut bibendum elementum, nisl augue tristique nisi, a imperdiet orci tellus at turpis. Sed pulvinar augue ut dignissim tincidunt. In scelerisque felis non porta venenatis. Vivamus in elementum enim. Duis lorem mauris, pharetra sed tempor vitae, efficitur elementum neque. Aliquam lacinia lectus orci, ut posuere augue accumsan vel. Sed nec porta nunc. Duis id efficitur massa. Nullam lacinia quis augue a pulvinar. Nunc pharetra eu velit ac lacinia. Integer facilisis dictum tellus. Nullam molestie urna luctus, ultrices dolor in, eleifend neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 1950, NULL, NULL),
(4, 'snow_in_stockholm', '/images/stock.jpg', 'Have you ever seen the snow?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend sit amet purus quis rhoncus. Fusce hendrerit placerat nulla. Vestibulum non dignissim arcu. Maecenas interdum, augue ut bibendum elementum, nisl augue tristique nisi, a imperdiet orci tellus at turpis. Sed pulvinar augue ut dignissim tincidunt. In scelerisque felis non porta venenatis. Vivamus in elementum enim. Duis lorem mauris, pharetra sed tempor vitae, efficitur elementum neque. Aliquam lacinia lectus orci, ut posuere augue accumsan vel. Sed nec porta nunc. Duis id efficitur massa. Nullam lacinia quis augue a pulvinar. Nunc pharetra eu velit ac lacinia. Integer facilisis dictum tellus. Nullam molestie urna luctus, ultrices dolor in, eleifend neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 400, NULL, NULL),
(5, 'myanmar_before', '/images/myanmar.jpg', 'Quick before it becomes a warzone', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend sit amet purus quis rhoncus. Fusce hendrerit placerat nulla. Vestibulum non dignissim arcu. Maecenas interdum, augue ut bibendum elementum, nisl augue tristique nisi, a imperdiet orci tellus at turpis. Sed pulvinar augue ut dignissim tincidunt. In scelerisque felis non porta venenatis. Vivamus in elementum enim. Duis lorem mauris, pharetra sed tempor vitae, efficitur elementum neque. Aliquam lacinia lectus orci, ut posuere augue accumsan vel. Sed nec porta nunc. Duis id efficitur massa. Nullam lacinia quis augue a pulvinar. Nunc pharetra eu velit ac lacinia. Integer facilisis dictum tellus. Nullam molestie urna luctus, ultrices dolor in, eleifend neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 80, NULL, NULL),
(6, 'sweet_thailand', '/images/thai.jpg', 'Sun, sand and water. Visit Thailand.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend sit amet purus quis rhoncus. Fusce hendrerit placerat nulla. Vestibulum non dignissim arcu. Maecenas interdum, augue ut bibendum elementum, nisl augue tristique nisi, a imperdiet orci tellus at turpis. Sed pulvinar augue ut dignissim tincidunt. In scelerisque felis non porta venenatis. Vivamus in elementum enim. Duis lorem mauris, pharetra sed tempor vitae, efficitur elementum neque. Aliquam lacinia lectus orci, ut posuere augue accumsan vel. Sed nec porta nunc. Duis id efficitur massa. Nullam lacinia quis augue a pulvinar. Nunc pharetra eu velit ac lacinia. Integer facilisis dictum tellus. Nullam molestie urna luctus, ultrices dolor in, eleifend neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 4940, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Daniel Sousa', 'dsousa.dev@gmail.com', '$2y$10$YEzb5FlbxhMB5pDUz/eecOxHiJ2VygnUprPJH5qRIU9vj96UeHAxq', 'e8YscMqJe59FNRH6tN1hQx2fCHKwS6SSmX1uWQcUWmKcWw6fqifdKI8cUFOc', '2018-01-18 11:52:20', '2018-01-18 15:07:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
