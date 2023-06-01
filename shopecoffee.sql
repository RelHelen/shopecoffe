-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 01 2023 г., 17:48
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shopecoffee`
--

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_group`
--

CREATE TABLE `attribute_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `attribute_group`
--

INSERT INTO `attribute_group` (`id`, `title`) VALUES
(1, 'Механизм'),
(5, 'Индикация'),
(6, 'Бренды');

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_product`
--

CREATE TABLE `attribute_product` (
  `attr_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `attribute_product`
--

INSERT INTO `attribute_product` (`attr_id`, `product_id`) VALUES
(1, 1),
(2, 4),
(2, 5),
(2, 11),
(2, 15),
(2, 16),
(2, 17),
(2, 20),
(2, 21),
(2, 22),
(3, 12),
(3, 23),
(3, 24),
(3, 25),
(3, 26),
(4, 2),
(4, 3),
(4, 27),
(4, 28),
(5, 1),
(5, 4),
(5, 5),
(5, 12),
(5, 13),
(6, 2),
(6, 29),
(6, 30),
(6, 31),
(6, 32),
(6, 33),
(7, 3),
(7, 6),
(8, 1),
(9, 2),
(9, 14),
(10, 4),
(10, 5),
(10, 13),
(11, 7),
(11, 8),
(11, 9),
(11, 10),
(12, 1),
(14, 3),
(16, 1),
(16, 4),
(16, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `attr_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attr_group_id`) VALUES
(1, 'Механика с автоподзаводом', 1),
(2, 'Механика с ручным заводом', 1),
(3, 'Кварцевый от батарейки', 1),
(4, 'Кварцевый от солнечного аккумулятора', 1),
(5, 'Сапфировое', 2),
(6, 'Минеральное', 2),
(7, 'Полимерное', 2),
(8, 'Стальной', 3),
(9, 'Кожаный', 3),
(10, 'Каучуковый', 3),
(11, 'Полимерный', 3),
(12, 'Нержавеющая сталь', 4),
(13, 'Титановый сплав', 4),
(14, 'Латунь', 4),
(15, 'Полимер', 4),
(16, 'Керамика', 4),
(17, 'Алюминий', 4),
(18, 'Аналоговые', 5),
(19, 'Цифровые', 5),
(20, 'Casio', 6),
(21, 'Citizen', 6),
(22, 'Royal London', 6),
(23, 'Seiko', 6),
(24, 'Diesel', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

CREATE TABLE `brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'brand_no_image.jpg',
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`id`, `title`, `alias`, `img`, `description`) VALUES
(1, 'Выпечка', 'b1', 'bb2.jpg', ' '),
(2, 'Десерты', 'b2', 'bb1.jpg', ' '),
(3, 'Пироги', 'b3', 'p-10.jpeg', ' '),
(4, 'Торты', 'd4', 't-1.jpg', NULL),
(5, 'Сладости', 'b5', 'ss-1.jpg', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `parent_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`, `alias`, `parent_id`, `keywords`, `description`) VALUES
(1, 'Выпечка', 'bakery', 0, 'bakery', 'bakery'),
(2, 'Десерты', 'dessert', 0, 'dessert', 'dessert'),
(3, 'Пироги', 'pies', 0, 'pies', 'pies'),
(4, 'Хлеб', 'tort', 0, 'tort', 'tort'),
(5, 'Сладости', 'sweets', 0, 'sweets', 'sweets'),
(20, 'Кулинария', 'kul', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `currency`
--

CREATE TABLE `currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(10) NOT NULL,
  `symbol_right` varchar(10) NOT NULL,
  `value` float(15,2) NOT NULL,
  `base` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `currency`
--

INSERT INTO `currency` (`id`, `title`, `code`, `symbol_left`, `symbol_right`, `value`, `base`) VALUES
(3, 'Рубль', 'Руб', '', 'руб.', 1.00, '0');

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `product_id`, `img`) VALUES
(1, 2, 's-1.jpg'),
(2, 2, 's-2.jpg'),
(3, 2, 's-3.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `modification`
--

CREATE TABLE `modification` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modification`
--

INSERT INTO `modification` (`id`, `product_id`, `title`, `price`) VALUES
(1, 1, 'Silver', 300),
(2, 1, 'Black', 300),
(3, 1, 'Dark Black', 305),
(4, 1, 'Red', 310),
(5, 2, 'Silver', 80),
(6, 2, 'Red', 70);

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL,
  `currency` varchar(10) NOT NULL,
  `note` text DEFAULT NULL,
  `sum` float NOT NULL DEFAULT 0,
  `delivery` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `user_id`, `status`, `date`, `update_at`, `currency`, `note`, `sum`, `delivery`) VALUES
(17, 1, '2', '2023-05-31 20:42:04', '2023-06-01 05:37:43', 'Руб', '', 1930, ''),
(18, 1, '2', '2023-05-31 20:50:41', NULL, 'Руб', '', 80, '0'),
(19, 1, '0', '2023-05-31 20:53:04', NULL, 'Руб', '', 1300, NULL),
(20, 1, '0', '2023-06-01 06:36:51', NULL, 'Руб', '', 3080, NULL),
(21, 2, '0', '2023-06-01 06:44:57', NULL, 'руб.', NULL, 1300, '0');

-- --------------------------------------------------------

--
-- Структура таблицы `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `qty`, `title`, `price`) VALUES
(21, 17, 1, 3, 'Эчпочмак с говядиной', 80),
(22, 17, 34, 3, 'БЭККЭН С ЯЙЦОМ, РИСОМ И ЗЕЛЕНЫМ ЛУКОМ', 130),
(23, 17, 35, 1, 'БЭЛИШ С БЕЛЫМИ ГРИБАМИ И КАРТОФЕЛЕМ', 1300),
(24, 18, 1, 1, 'Эчпочмак с говядиной', 80),
(25, 19, 35, 1, 'БЭЛИШ С БЕЛЫМИ ГРИБАМИ И КАРТОФЕЛЕМ', 1300),
(26, 21, 35, 1, 'БЭЛИШ С БЕЛЫМИ ГРИБАМИ И КАРТОФЕЛЕМ', 1300),
(27, 20, 1, 1, 'Эчпочмак с говядиной', 80),
(28, 20, 38, 1, 'ЗУР БЭЛИШ С ГОВЯДИНОЙ', 1700);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` tinyint(3) UNSIGNED NOT NULL,
  `brand_id` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `old_price` float NOT NULL DEFAULT 0,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no_image.jpg',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `brand_id`, `title`, `alias`, `content`, `price`, `old_price`, `status`, `keywords`, `description`, `img`, `hit`, `sale`) VALUES
(1, 1, 1, 'Эчпочмак с говядиной', 'echpochmak', 'Бездрожжевое тесто, говядина, картофель, лук, масло сливочное, перец, сол', 80, 0, '1', NULL, 'Бездрожжевое тесто, говядина, картофель, лук, масло сливочное, перец, сол', 'v-1.jpg', '1', '0'),
(2, 1, 1, 'Эчпочмак с бараниной\r\n  ', 'ech-2', 'Бездрожжевое тесто, ,баранина, картофель, лук, масло сливочное, перец, соль\r\n', 80, 0, '1', NULL, 'Бездрожжевое тесто, ,баранина, картофель, лук, масло сливочное, перец, соль', 'v-2.jpeg', '0', '0'),
(34, 1, 1, 'БЭККЭН С ЯЙЦОМ, РИСОМ И ЗЕЛЕНЫМ ЛУКОМ', '', 'Состав: пресное тесто, лук зеленый, рис, яйцо, соль, перец\r\n<p>120г</p>', 130, 0, '1', NULL, 'пресное тесто, лук зеленый, рис, яйцо, соль, перец', 'v-3.jpg', '1', '0'),
(35, 3, 0, 'БЭЛИШ С БЕЛЫМИ ГРИБАМИ И КАРТОФЕЛЕМ', 'belish1', 'Состав: тесто пресное (бездрожжевое), грибы белые, картофель, соль, перец\r\n<p>1100г</p>', 1300, 0, '1', NULL, 'тесто пресное (бездрожжевое), грибы белые, картофель, соль, перец', 'p-1.jpg', '1', '0'),
(36, 3, 1, 'БЭЛИШ С ЗЕЛЕНЫМ ЛУКОМ И ЯЙЦОМ', 'bel2', 'Состав: тесто пресное (бездрожжевое), лук зеленый, яйцо, масло сливочное, соль, перец\r\n\r\n<p>1100г</p>', 1200, 0, '1', NULL, 'тесто пресное (бездрожжевое), лук зеленый, яйцо, масло сливочное, соль, перец', 'p-2.jpg', '0', '0'),
(37, 3, 1, 'БЭЛИШ С ГОВЯЖЬИМ ФАРШЕМ', 'bel3', 'Состав: тесто пресное, говядина «Халяль», лук репчатый, соль, перец.\r\n\r\n<p>1000г</p>', 1200, 0, '1', NULL, 'тесто пресное, говядина «Халяль», лук репчатый, соль, перец.', 'p-3.jpg', '0', '0'),
(38, 3, 0, 'ЗУР БЭЛИШ С ГОВЯДИНОЙ', 'bel4', 'Состав: Тесто бездрожжевое, говядина рубленая “Халяль”, бульон говяжий, картофель, лук, соль и перец.\r\n\r\n<p>2000г</p>', 1700, 0, '1', NULL, 'Тесто бездрожжевое, говядина рубленая “Халяль”, бульон говяжий, картофель, лук, соль и перец.', 'p-4.jpg', '1', '0'),
(39, 3, 1, 'СМЕТАННИК С МАЛИНОЙ', 'pir5', 'Состав: Тесто песочно-дрожжевое, сметана, яйца, сахар, малина.\r\n\r\n<p>1300г</p>', 1300, 0, '1', NULL, NULL, 'p-5.jpg', '0', '0'),
(40, 3, 1, 'БЭЛИШ “ВОСТОЧНЫЙ”', 'bel6', 'Состав: Тесто песочно-дрожжевое, свежие лимоны, курага, чернослив, сахар, сливочное масло\r\n\r\n<p>1300г</p>', 1200, 0, '1', NULL, 'Тесто песочно-дрожжевое, свежие лимоны, курага, чернослив, сахар, сливочное масло', 'p-6.jpg', '0', '0'),
(41, 3, 1, 'СМЕТАННИК С КЛЮКВОЙ', 'pis7', 'Состав: Тесто песочно-дрожжевое, сметана, яйца, сахар, клюква.\r\n\r\n1300г', 1200, 0, '1', NULL, 'есто песочно-дрожжевое, сметана, яйца, сахар, клюква.', 'p-5-1.jpg', '0', '0'),
(46, 5, 1, 'Пахлава медовая с грецким орехом', 'pah1', 'Бездрожжевое слоенное тесто,орехи, мед, лук ,яйцо, масло сливочное, кардамон, корица', 200, 0, '1', NULL, 'Бездрожжевое слоенное тесто,орехи, мед, лук ,яйцо, масло сливочное, кардамон, корица', 's-1.png', '0', '0'),
(48, 5, 1, 'Пахлава с фисташками', 'pahs7', 'Сладкая игра вкуса нежного воздушного теста, фисташковых орехов и цветочного меда.\r\n200гр', 600, 0, '1', NULL, 'Сладкая игра вкуса нежного воздушного теста, фисташковых орехов и цветочного меда.', 's-3.jpg', '0', '1'),
(49, 5, 1, 'Халва самаркандская белая', 'halva', 'молоко, сахар сливочное масло, ванилин, какао, арахис, фисташки, грецкий орех, миндаль, кешью\r\n400гр', 400, 0, '1', NULL, 'молоко, сахар сливочное масло, ванилин, какао, арахис, фисташки, грецкий орех, миндаль, кешью', 's-4.jpg', '0', '1'),
(51, 5, 1, 'ЧАК-ЧАК', 'chak', 'Состав: Тесто бездрожжевое, мед, сахар.\r\n\r\n250г', 400, 0, '1', NULL, 'тесто бездрожжевое, мед, сахар', 's-8.jpg', '0', '0'),
(52, 5, 1, 'Рахат-лукум с медом и фисташками', 'rah11', 'Рахат-лукум с медом и фисташками - отличный десерт, который сочетает в себе вкус традиционного рахат-лукума с совершенной гармонией арахиса, придавая самый близкий вкус традиционному рахат-лукуму с сегодняшним вкусом.\r\n400гр', 300, 0, '1', NULL, 'Рахат-лукум с медом и фисташками', 'r-1.jpg', '0', '1'),
(54, 5, 1, 'Рахат-лукум с гранатом', 'rach113', 'Рахат-лукум с гранатом', 400, 0, '1', NULL, NULL, 'r-2.png', '0', '0'),
(55, 5, 1, 'Рахат-лукум с барбарисом', 'rah23', 'Рахат-лукум с барбарисом', 400, 0, '1', NULL, 'Рахат-лукум с барбарисом', 'r-3.jpg', '0', '0'),
(57, 5, 1, 'Рахат-лукум в миндале', 'rah34', 'Рахат-лукум в миндале', 400, 0, '1', NULL, 'Рахат-лукум в миндале', 'r-4.jpg', '0', '0'),
(58, 5, 1, 'Рахат-лукум Премиум Брауни', 'rah51', 'Турецкая версия всемирно известного десерта. Какао-ролл с шоколадно-ореховой начинкой и цельным фундуком в кокосовой стружке.\r\n300гр', 500, 0, '1', NULL, 'Турецкая версия всемирно известного десерта. Какао-ролл с шоколадно-ореховой начинкой и цельным фундуком в кокосовой стружке.', 'r-5.jpg', '0', '1'),
(60, 3, 1, 'Пирог с мясом без дрожжей', 'per9', 'мясной бездрожжевой пирог я пеку и к праздникам, и к простому домашнему чаепитию.', 1200, 0, '1', NULL, 'мясной бездрожжевой пирог я пеку и к праздникам, и к простому домашнему чаепитию.', 'p-9.jpg', '0', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `related_product`
--

CREATE TABLE `related_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `related_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `related_product`
--

INSERT INTO `related_product` (`product_id`, `related_id`) VALUES
(1, 34),
(1, 46),
(2, 5),
(2, 7),
(5, 1),
(5, 7),
(5, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `email`, `name`, `address`, `tel`, `role`) VALUES
(1, 'user1', '$2y$10$4ZUuveY/k2ShcjOKMQSMJu8zKTMffFRNfoHXYv/SRGhTdJxo.Kkpy', 'marFgQ2@gmail.com', 'Елизавета Сергеевна Минская', 'Варфаломеево, д23, кв.55', '8-928-77845412', 'user'),
(2, 'testaltrp', '$2y$10$BlsmcSy/at983gpJ8P57HuYrPV7cwMfshVCGgKuCHlze7MptBqIBW', 'test21@altrp.ru', 'Екатерина Сомина', 'Ростов-на-Дону, ул Лелюшекно 5, кв21', '89384567585', 'user'),
(3, 'admin', '$2y$10$Uukej3MHEaRH8DV7wkVXr.YGs2ubDPOpNihssj4iKYZOjtUjK5rDK', 'admin@pekar.ru', 'Коля', 'test ', '', 'admin'),
(4, 'sRfdW23', '$2y$10$J18mhc6FOiNtgv2J1M3xPu/MD/o9ntK9cGW9.gwSN915rkPTyDtWq', 'sRfdW23@mail.ru', 'Полина Николаевна Варшева', 'Ростов-на-Дону, ул Российская 4, кв5', '89384561425', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `attribute_group`
--
ALTER TABLE `attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD PRIMARY KEY (`attr_id`,`product_id`);

--
-- Индексы таблицы `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `value` (`value`),
  ADD KEY `attr_group_id` (`attr_group_id`);

--
-- Индексы таблицы `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Индексы таблицы `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modification`
--
ALTER TABLE `modification`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `category_id` (`category_id`,`brand_id`),
  ADD KEY `hit` (`hit`);

--
-- Индексы таблицы `related_product`
--
ALTER TABLE `related_product`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `attribute_group`
--
ALTER TABLE `attribute_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modification`
--
ALTER TABLE `modification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
