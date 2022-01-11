-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 11 2022 г., 02:58
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kdl`
--

-- --------------------------------------------------------

--
-- Структура таблицы `analyzes`
--

CREATE TABLE `analyzes` (
  `id` int NOT NULL,
  `image` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_bolezni` int NOT NULL,
  `opisanie` varchar(200) NOT NULL,
  `cost` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `analyzes`
--

INSERT INTO `analyzes` (`id`, `image`, `name`, `id_bolezni`, `opisanie`, `cost`) VALUES
(1, 'photo/an1.png', 'Анализ 1', 1, 'какое-то описание', 760),
(2, 'photo/an2.png', 'Анализ 2', 2, 'какое-то описание', 800),
(3, 'photo/an3.png', 'Анализ 3', 3, 'какое-то описание', 950),
(4, 'photo/an4.png', 'Анализ 4', 4, 'какое-то описание', 860),
(5, 'photo/an5.png', 'Анализ 5', 5, 'какое-то описание', 1000),
(6, 'photo/an6.png', 'Анализ 6', 6, 'какое-то описание', 720),
(7, 'photo/an7.png', 'Анализ 7', 7, 'какое-то описание', 710),
(8, 'photo/an8.png', 'Анализ 8', 8, 'какое-то описание', 590);

-- --------------------------------------------------------

--
-- Структура таблицы `bolezni`
--

CREATE TABLE `bolezni` (
  `id` int NOT NULL,
  `name` varchar(25) NOT NULL,
  `opisanie` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `bolezni`
--

INSERT INTO `bolezni` (`id`, `name`, `opisanie`) VALUES
(1, 'Кариес', 'какое-то описание'),
(2, 'Аритмия сердца', 'какое-то описание'),
(3, 'Дерматит', 'какое-то описание'),
(4, 'Диабет', 'какое-то описание'),
(5, 'Грыжа диска', 'какое-то описание'),
(6, 'Растяжение', 'какое-то описание'),
(7, 'Мерцательная аритмия', 'какое-то описание'),
(8, 'Пародонтит', 'какое-то описание'),
(9, 'Кариес', 'какое-то описание'),
(10, 'Аритмия сердца', 'какое-то описание'),
(11, 'Дерматит', 'какое-то описание'),
(12, 'Диабет', 'какое-то описание'),
(13, 'Грыжа диска', 'какое-то описание'),
(14, 'Растяжение', 'какое-то описание'),
(15, 'Мерцательная аритмия', 'какое-то описание'),
(16, 'Пародонтит', 'какое-то описание');

-- --------------------------------------------------------

--
-- Структура таблицы `doctors`
--

CREATE TABLE `doctors` (
  `id` int NOT NULL,
  `photo` varchar(25) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `date_of_birth` date NOT NULL,
  `specialization` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `doctors`
--

INSERT INTO `doctors` (`id`, `photo`, `first_name`, `last_name`, `date_of_birth`, `specialization`) VALUES
(1, 'photo/doc1.png', 'Ирина', 'Чекунова', '1976-08-25', 'Стоматолог'),
(2, 'photo/doc2.png', 'Екатерина', 'Деева', '1981-06-15', 'Кардиолог'),
(3, 'photo/doc3.png', 'Алла', 'Крюкова', '1987-08-25', 'Дерматолог'),
(4, 'photo/doc4.png', 'Анастасия', 'Дьяченко', '1989-05-27', 'Диетолог'),
(5, 'photo/doc5.png', 'Парвина', 'Альтовская', '1971-10-05', 'Невролог'),
(6, 'photo/doc6.png', 'Алена', 'Стурова', '1985-07-17', 'Хирург'),
(7, 'photo/doc7.png', 'Ксения', 'Шпилевая', '1976-08-05', 'Кардиолог'),
(8, 'photo/doc8.png', 'Полина', 'Садчикова', '1970-02-07', 'Стоматолог'),
(9, 'photo/doc1.png', 'Ирина', 'Чекунова', '1976-08-25', 'Стоматолог'),
(10, 'photo/doc2.png', 'Екатерина', 'Деева', '1981-06-15', 'Кардиолог'),
(11, 'photo/doc3.png', 'Алла', 'Крюкова', '1987-08-25', 'Дерматолог'),
(12, 'photo/doc4.png', 'Анастасия', 'Дьяченко', '1989-05-27', 'Диетолог'),
(13, 'photo/doc5.png', 'Парвина', 'Альтовская', '1971-10-05', 'Невролог'),
(14, 'photo/doc6.png', 'Алена', 'Стурова', '1985-07-17', 'Хирург'),
(15, 'photo/doc7.png', 'Ксения', 'Шпилевая', '1976-08-05', 'Кардиолог'),
(16, 'photo/doc8.png', 'Полина', 'Садчикова', '1970-02-07', 'Стоматолог');

-- --------------------------------------------------------

--
-- Структура таблицы `palati`
--

CREATE TABLE `palati` (
  `id` int NOT NULL,
  `id_doctor` int DEFAULT NULL,
  `kolichestvo_mest` int NOT NULL,
  `m_or_w` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `palati`
--

INSERT INTO `palati` (`id`, `id_doctor`, `kolichestvo_mest`, `m_or_w`) VALUES
(1, 1, 2, 'm'),
(2, 2, 2, 'w'),
(3, 3, 4, 'm'),
(4, 4, 4, 'w'),
(5, 5, 1, 'm'),
(6, 6, 1, 'w'),
(7, 7, 2, 'm'),
(8, 8, 2, 'w'),
(9, 1, 4, 'm'),
(10, 2, 4, 'w'),
(11, 1, 2, 'm'),
(12, 2, 2, 'w'),
(13, 3, 4, 'm'),
(14, 4, 4, 'w'),
(15, 5, 1, 'm'),
(16, 6, 1, 'w'),
(17, 7, 2, 'm'),
(18, 8, 2, 'w'),
(19, 1, 4, 'm'),
(20, 2, 4, 'w');

-- --------------------------------------------------------

--
-- Структура таблицы `patients`
--

CREATE TABLE `patients` (
  `id` int NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `phone` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `patients`
--

INSERT INTO `patients` (`id`, `first_name`, `last_name`, `phone`) VALUES
(1, 'Сания', 'Хадынова', '89728528847'),
(2, 'Ульяна', 'Попова', '89610625569'),
(3, 'Алена', 'Багачюк', '89738516648'),
(4, 'Екатерина', 'Попова', '89620615539'),
(5, 'Елена', 'Астахова', '89640628847'),
(6, 'Мария', 'Самсоник', '89640639418'),
(7, 'Анастасия', 'Пуликова', '89640639716'),
(8, 'Тамара', 'Попова', '89610637926'),
(9, 'Сания', 'Хадынова', '89728528847'),
(10, 'Ульяна', 'Попова', '89610625569'),
(11, 'Алена', 'Багачюк', '89738516648'),
(12, 'Екатерина', 'Попова', '89620615539'),
(13, 'Елена', 'Астахова', '89640628847'),
(14, 'Мария', 'Самсоник', '89640639418'),
(15, 'Анастасия', 'Пуликова', '89640639716'),
(16, 'Тамара', 'Попова', '89610637926');

-- --------------------------------------------------------

--
-- Структура таблицы `sicklist`
--

CREATE TABLE `sicklist` (
  `id` int NOT NULL,
  `id_patient` int NOT NULL,
  `id_doctor` int NOT NULL,
  `id_bolezni` int NOT NULL,
  `data_zabolevania` date NOT NULL,
  `data_visdorovlenia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `sicklist`
--

INSERT INTO `sicklist` (`id`, `id_patient`, `id_doctor`, `id_bolezni`, `data_zabolevania`, `data_visdorovlenia`) VALUES
(1, 1, 1, 1, '2021-11-27', '2021-12-05'),
(2, 2, 2, 2, '2021-10-27', '2021-10-05'),
(3, 3, 3, 3, '2021-09-27', '2021-09-05'),
(4, 4, 4, 4, '2021-11-07', '2021-11-17'),
(5, 5, 5, 5, '2021-06-27', '2021-07-05'),
(6, 6, 6, 6, '2021-05-27', '2021-06-05'),
(7, 7, 7, 7, '2021-11-15', '2021-11-30'),
(8, 8, 8, 8, '2021-10-27', '2021-11-07');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `analyzes`
--
ALTER TABLE `analyzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bolezni` (`id_bolezni`);

--
-- Индексы таблицы `bolezni`
--
ALTER TABLE `bolezni`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `palati`
--
ALTER TABLE `palati`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_doctor` (`id_doctor`);

--
-- Индексы таблицы `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sicklist`
--
ALTER TABLE `sicklist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_patient` (`id_patient`),
  ADD KEY `id_doctor` (`id_doctor`),
  ADD KEY `id_bolezni` (`id_bolezni`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `analyzes`
--
ALTER TABLE `analyzes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `bolezni`
--
ALTER TABLE `bolezni`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `palati`
--
ALTER TABLE `palati`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `sicklist`
--
ALTER TABLE `sicklist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `analyzes`
--
ALTER TABLE `analyzes`
  ADD CONSTRAINT `analyzes_ibfk_1` FOREIGN KEY (`id_bolezni`) REFERENCES `bolezni` (`id`);

--
-- Ограничения внешнего ключа таблицы `palati`
--
ALTER TABLE `palati`
  ADD CONSTRAINT `palati_ibfk_1` FOREIGN KEY (`id_doctor`) REFERENCES `doctors` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `sicklist`
--
ALTER TABLE `sicklist`
  ADD CONSTRAINT `sicklist_ibfk_1` FOREIGN KEY (`id_patient`) REFERENCES `patients` (`id`),
  ADD CONSTRAINT `sicklist_ibfk_2` FOREIGN KEY (`id_doctor`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `sicklist_ibfk_3` FOREIGN KEY (`id_bolezni`) REFERENCES `bolezni` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
