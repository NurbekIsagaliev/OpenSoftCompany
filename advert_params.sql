-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 22 2022 г., 17:25
-- Версия сервера: 10.4.25-MariaDB
-- Версия PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `advert_params`
--

CREATE TABLE `advert_params` (
  `advert_id` int(11) NOT NULL,
  `param_id` int(11) NOT NULL,
  `value` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `advert_params`
--

INSERT INTO `advert_params` (`advert_id`, `param_id`, `value`) VALUES
(1, 1, 'черный'),
(1, 2, '5000'),
(1, 3, 'да'),
(2, 1, 'черный'),
(2, 2, '10000'),
(2, 3, 'да'),
(3, 1, 'белый'),
(3, 2, '5000'),
(3, 3, 'да'),
(4, 1, 'черный');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `advert_params`
--
ALTER TABLE `advert_params`
  ADD PRIMARY KEY (`advert_id`,`param_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `advert_params`
--
ALTER TABLE `advert_params`
  MODIFY `advert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
