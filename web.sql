-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 11 2018 г., 17:04
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `web`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Articles`
--

CREATE TABLE `Articles` (
  `id` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Description` text NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Articles`
--

INSERT INTO `Articles` (`id`, `Title`, `Description`, `created_at`, `updated_at`) VALUES
(2, 'Lorem Ipsum Second', ' Phasellus imperdiet felis ac tellus pharetra tincidunt. Maecenas scelerisque mollis posuere. Integer sed aliquam sapien, nec viverra metus. Nullam odio est, suscipit in quam eget, bibendum dictum nisi. Mauris tincidunt urna libero, eget aliquam neque feugiat euismod. Aenean ultrices, diam in dictum aliquam, est lorem sollicitudin nibh, at maximus felis lorem sit amet nulla. Aenean luctus nec orci non tempus. Mauris pellentesque lectus eros, vehicula congue nisi luctus a. Sed iaculis aliquet condimentum.\r\n\r\nNam ultrices aliquam mauris, eu sodales lorem imperdiet quis. Etiam varius egestas magna, eu consequat elit. Donec ultrices varius mi quis mattis. In faucibus magna eu suscipit tempus. Vivamus eros neque, malesuada et turpis in, iaculis sagittis nisi. Duis condimentum quam a felis gravida, molestie tristique diam pulvinar. Pellentesque urna odio, commodo quis fringilla feugiat, tincidunt id dui. Nulla feugiat justo risus, commodo pulvinar sem imperdiet ut. Nullam eu ultrices nisi. Praesent sodales ex ut nisl viverra, eget auctor augue facilisis. Integer commodo bibendum varius. Pellentesque nec ultrices purus, et egestas dui. Pellentesque dictum, mauris nec porta egestas, lorem leo auctor purus, vitae pellentesque elit dolor et nunc. Donec dignissim odio at porttitor egestas. Aliquam erat volutpat. ', NULL, NULL),
(6, 'Lorem Ipsum', 'Phasellus imperdiet felis ac tellus pharetra tincidunt. Maecenas scelerisque mollis posuere. Integer sed aliquam sapien, nec viverra metus. Nullam odio est, suscipit in quam eget, bibendum dictum nisi. Mauris tincidunt urna libero, eget aliquam neque feugiat euismod. Aenean ultrices, diam in dictum aliquam, est lorem sollicitudin nibh, at maximus felis lorem sit amet nulla. Aenean luctus nec orci non tempus. Mauris pellentesque lectus eros, vehicula congue nisi luctus a. Sed iaculis aliquet condimentum. Nam ultrices aliquam mauris, eu sodales lorem imperdiet quis. Etiam varius egestas magna, eu consequat elit. Donec ultrices varius mi quis mattis. In faucibus magna eu suscipit tempus. Vivamus eros neque, malesuada et turpis in, iaculis sagittis nisi. Duis condimentum quam a felis gravida, molestie tristique diam pulvinar. Pellentesque urna odio, commodo quis fringilla feugiat, tincidunt id dui. Nulla feugiat justo risus, commodo pulvinar sem imperdiet ut. Nullam eu ultrices nisi. Praesent sodales ex ut nisl viverra, eget auctor augue facilisis. Integer commodo bibendum varius. Pellentesque nec ultrices purus, et egestas dui. Pellentesque dictum, mauris nec porta egestas, lorem leo auctor purus, vitae pellentesque elit dolor et nunc. Donec dignissim odio at porttitor egestas. Aliquam erat volutpat.', '2018-03-11', '2018-03-11');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_11_114400_create_roles_table', 1),
(4, '2018_03_11_114858_create_user_role_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `created_at`, `updated_at`, `name`, `description`) VALUES
(1, '2018-03-11 10:33:34', '2018-03-11 10:33:34', 'User', 'A normal User'),
(2, '2018-03-11 10:33:34', '2018-03-11 10:33:34', 'Author', 'An Author'),
(3, '2018-03-11 10:33:34', '2018-03-11 10:33:34', 'Admin', 'A Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Visitor', 'visitor@web.loc', '$2y$10$8ZcC95t9a4nRKeyjkqzPnOQI5BJSW3O4GZHN0h60C3cn2mZZBP5NG', 'JiCxDVKxPmw4kjo2moFiL04znGlrj4A6baSClqbLOdK7MCssnwUhetfvGcwj', '2018-03-11 10:33:35', '2018-03-11 10:33:35'),
(2, 'Admin', 'admin@web.loc', '$2y$10$ABSXty2CyTqf/uhF7LaIm.GjvII.uPxc59dApC6yAKXJrnGcj03YS', 'jiVvhL6SjwoMb31gqtHmP3B3IwtthwJBAYHUYljYLCJbqIX1CVpbxMfKNe8U', '2018-03-11 10:33:35', '2018-03-11 10:33:35'),
(3, 'Author', 'author@web.loc', '$2y$10$giWqLxSq3kFdkmtFkoxoTe1r.1nDzSWZpf6O5TI49XR.3QDSK4oPK', 'coqO2I2xZWWKkOxK8y8ooslmoWlxtKeeJkgdJxS8F8t6GYknor9isPmkvemC', '2018-03-11 10:33:35', '2018-03-11 10:33:35');

-- --------------------------------------------------------

--
-- Структура таблицы `user_role`
--

CREATE TABLE `user_role` (
  `id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_role`
--

INSERT INTO `user_role` (`id`, `created_at`, `updated_at`, `user_id`, `role_id`) VALUES
(1, NULL, NULL, 1, 1),
(2, NULL, NULL, 2, 3),
(3, NULL, NULL, 3, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Articles`
--
ALTER TABLE `Articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Articles`
--
ALTER TABLE `Articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
