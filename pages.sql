-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 23 2018 г., 17:04
-- Версия сервера: 10.1.31-MariaDB
-- Версия PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pages`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20180722114049');

-- --------------------------------------------------------

--
-- Структура таблицы `page_content`
--

CREATE TABLE `page_content` (
  `id` int(11) NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_info` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_additional_info` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `page_content`
--

INSERT INTO `page_content` (`id`, `page_name`, `title`, `about_content`, `additional_info`, `show_additional_info`, `updated_at`) VALUES
(1, 'First', 'First page', 'Each time you make a change to your schema, \r\n        run these two commands to generate the migration and then execute it. \r\n        Be sure to commit the migration files and execute them when you deploy.', 'tel:044-330-12-15; email:example@gmail.com', 1, '2017-12-12 17:30:30'),
(2, 'Second', 'Second page', 'Each time you make a change to your schema, \r\n        run these two commands to generate the migration and then execute it. \r\n        Be sure to commit the migration files and execute them when you deploy.', 'tel:044-330-12-15; email:example@gmail.com', 0, '2018-01-12 17:30:30'),
(3, 'Third', 'Third page', 'Each time you make a change to your schema, \r\n        run these two commands to generate the migration and then execute it. \r\n        Be sure to commit the migration files and execute them when you deploy.', 'tel:044-330-12-15; email:example@gmail.com', 1, '2018-02-12 17:30:30'),
(4, 'Four', 'Fourth page', 'Each time you make a change to your schema, \r\n        run these two commands to generate the migration and then execute it. \r\n        Be sure to commit the migration files and execute them when you deploy.', 'tel:044-330-12-15; email:example@gmail.com', 1, '2018-03-12 17:30:30'),
(5, 'Five', 'Five page', 'Each time you make a change to your schema, \r\n        run these two commands to generate the migration and then execute it. \r\n        Be sure to commit the migration files and execute them when you deploy.', 'tel:044-330-12-15; email:example@gmail.com', 0, '2018-04-12 17:30:30'),
(6, 'Six', 'Six page', 'Each time you make a change to your schema, \r\n        run these two commands to generate the migration and then execute it. \r\n        Be sure to commit the migration files and execute them when you deploy.', 'tel:044-330-12-15; email:example@gmail.com', 1, '2018-05-12 17:30:30'),
(7, 'Seven', 'Seven page', 'Each time you make a change to your schema, \r\n        run these two commands to generate the migration and then execute it. \r\n        Be sure to commit the migration files and execute them when you deploy.', 'tel:044-330-12-15; email:example@gmail.com', 0, '2018-07-23 12:07:52'),
(8, 'Eight', 'Eight', 'Each time you make a change to your schema, \r\n        run these two commands to generate the migration and then execute it. \r\n        Be sure to commit the migration files and execute them when you deploy.', 'tel:044-330-12-15; email:example@gmail.com', 0, '2018-07-23 13:12:20'),
(9, 'Nine', 'Nine page', 'Each time you make a change to your schema, \r\n        run these two commands to generate the migration and then execute it. \r\n        Be sure to commit the migration files and execute them when you deploy.', 'tel:044-330-12-15; email:example@gmail.com', 0, '2018-07-23 13:16:11');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `page_content`
--
ALTER TABLE `page_content`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `page_content`
--
ALTER TABLE `page_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
