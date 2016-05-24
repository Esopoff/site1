-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 24 2016 г., 04:58
-- Версия сервера: 5.5.25
-- Версия PHP: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `avto`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `url`) VALUES
(1, 'микроавтомобили', 'microchip2'),
(2, 'малые автомобили', 'transitransistor'),
(3, 'средний класс', 'sredniy-class'),
(4, 'большие семейные автомобили', 'bolshie-semeinye'),
(5, 'бизнес-класс', 'business-class'),
(6, 'спорткупе', 'sport-kupe'),
(7, 'минивэны', 'miniweny');

-- --------------------------------------------------------

--
-- Структура таблицы `gorod`
--

CREATE TABLE IF NOT EXISTS `gorod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `gorod`
--

INSERT INTO `gorod` (`id`, `name`, `url`) VALUES
(1, 'Москва', 'moskva'),
(2, 'Санкт-Петербург', 'spb');

-- --------------------------------------------------------

--
-- Структура таблицы `information`
--

CREATE TABLE IF NOT EXISTS `information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_gorod` int(11) NOT NULL,
  `number` int(20) NOT NULL,
  `faks` int(20) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `opisanie` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `information`
--

INSERT INTO `information` (`id`, `id_gorod`, `number`, `faks`, `adress`, `opisanie`) VALUES
(1, 1, 2147483647, 0, 'ст.м.Таганская, ул. Воронцовская, д.6', 'ададада'),
(2, 2, 2147483647, 0, 'ст.м.Международная, ул. Белы Куна, д.10', 'адададад'),
(3, 3, 2147483647, 0, 'ул. Тимирязева, д. 25', 'вдвдввд');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `characteristics` text NOT NULL COMMENT 'Описание товара',
  `price` float NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_category` (`id_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `id_category`, `name`, `characteristics`, `price`) VALUES
(1, 1, '7701', 'Модель микроавтомобиля 7701', 157000),
(2, 1, '7702', 'Модель микроавтомобиля 7702', 180000),
(3, 2, 'i101', 'Модель малого автомобиля i101', 135000),
(11, 3, 'G505', 'Автомобиль среднего класса модель G505', 360000),
(12, 3, 'G507', 'Автомобиль среднего класса модель G505', 288000),
(13, 4, 'FF11', 'Большой семейный автомобиль модели FF11', 456000),
(14, 4, 'FF1', 'Большой семейный автомобиль модели FF1', 555000),
(15, 5, 'B1 ', 'Автомобиль бизнес-класса модели B1', 600000),
(16, 5, 'B2 Silver', 'Автомобиль бизнес-класса модели B2 Silver', 650000),
(17, 6, 'Sp11C', 'Спорткупе модели Sp11C', 1300000),
(18, 7, 'MiniSilver M1', 'Минивэн модели MiniSilver M1', 570000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
