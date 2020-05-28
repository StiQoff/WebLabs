-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Май 20 2020 г., 15:56
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `college`
--

-- --------------------------------------------------------

--
-- Структура таблицы `gurkov_classroom`
--

CREATE TABLE `gurkov_classroom` (
  `classroom_id` int(50) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gurkov_classroom`
--

INSERT INTO `gurkov_classroom` (`classroom_id`, `name`) VALUES
(1, '2442'),
(2, '3221'),
(3, '5332'),
(4, '3223'),
(5, '5432'),
(6, '1223');

-- --------------------------------------------------------

--
-- Структура таблицы `gurkov_course`
--

CREATE TABLE `gurkov_course` (
  `course_id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `special_id` int(11) NOT NULL,
  `hours` smallint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gurkov_course`
--

INSERT INTO `gurkov_course` (`course_id`, `name`, `special_id`, `hours`) VALUES
(1, 3, 1, 24),
(2, 2, 2, 55),
(3, 1, 3, 22),
(4, 3, 4, 60),
(5, 2, 5, 67),
(6, 1, 6, 54);

-- --------------------------------------------------------

--
-- Структура таблицы `gurkov_day`
--

CREATE TABLE `gurkov_day` (
  `day_id` tinyint(50) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gurkov_day`
--

INSERT INTO `gurkov_day` (`day_id`, `name`) VALUES
(1, 'Понедельник'),
(2, 'Вторник'),
(3, 'Среда'),
(4, 'Четверг'),
(5, 'Пятница'),
(6, 'Суббота'),
(7, 'Воскресенье');

-- --------------------------------------------------------

--
-- Структура таблицы `gurkov_gender`
--

CREATE TABLE `gurkov_gender` (
  `gender_id` tinyint(50) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gurkov_gender`
--

INSERT INTO `gurkov_gender` (`gender_id`, `name`) VALUES
(1, 'Мужской'),
(2, 'Женский');

-- --------------------------------------------------------

--
-- Структура таблицы `gurkov_graduate`
--

CREATE TABLE `gurkov_graduate` (
  `graduate_id` int(50) NOT NULL,
  `gruppa_id` int(50) NOT NULL,
  `course_id` int(50) NOT NULL,
  `user_id` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gurkov_graduate`
--

INSERT INTO `gurkov_graduate` (`graduate_id`, `gruppa_id`, `course_id`, `user_id`) VALUES
(1, 1, 2, 1),
(4, 1, 2, 4),
(3, 1, 3, 3),
(5, 2, 1, 5),
(2, 2, 3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `gurkov_graduate_time`
--

CREATE TABLE `gurkov_graduate_time` (
  `graduate_time_id` int(50) NOT NULL,
  `graduate_id` int(50) NOT NULL,
  `day_id` tinyint(50) NOT NULL,
  `lesson_num_id` int(50) NOT NULL,
  `classroom_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gurkov_graduate_time`
--

INSERT INTO `gurkov_graduate_time` (`graduate_time_id`, `graduate_id`, `day_id`, `lesson_num_id`, `classroom_id`) VALUES
(1, 1, 3, 1, 2),
(2, 2, 5, 2, 3),
(3, 3, 4, 5, 4),
(4, 4, 1, 3, 6),
(5, 5, 2, 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `gurkov_gruppa`
--

CREATE TABLE `gurkov_gruppa` (
  `gruppa_id` int(50) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_id` int(50) NOT NULL,
  `date_begin` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gurkov_gruppa`
--

INSERT INTO `gurkov_gruppa` (`gruppa_id`, `name`, `special_id`, `date_begin`, `date_end`) VALUES
(1, '101 ИС', 1, '2016-09-01', '2020-07-01'),
(2, '102 ИС', 3, '2016-09-01', '2020-07-01'),
(3, '302 ИС', 1, '2014-09-01', '2018-07-01'),
(4, '302 АС', 3, '2014-09-01', '2018-07-01');

-- --------------------------------------------------------

--
-- Структура таблицы `gurkov_lesson_num`
--

CREATE TABLE `gurkov_lesson_num` (
  `lesson_num_id` int(50) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_lesson` time(6) NOT NULL,
  `year_lesson` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gurkov_lesson_num`
--

INSERT INTO `gurkov_lesson_num` (`lesson_num_id`, `name`, `time_lesson`, `year_lesson`) VALUES
(1, 'Программирование', '12:17:11.000000', 2019),
(2, 'Физика', '13:18:11.000000', 2019),
(3, 'ОС И ПО', '21:14:36.000000', 2019),
(4, 'Техническое обслуживание', '09:19:05.000000', 2019),
(5, 'Математика', '08:19:24.000000', 2019);

-- --------------------------------------------------------

--
-- Структура таблицы `gurkov_otdel`
--

CREATE TABLE `gurkov_otdel` (
  `otdel_id` smallint(50) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gurkov_otdel`
--

INSERT INTO `gurkov_otdel` (`otdel_id`, `name`) VALUES
(1, 'Информационные системы'),
(2, 'Технические специальности'),
(3, 'Автоматизация и управление');

-- --------------------------------------------------------

--
-- Структура таблицы `gurkov_special`
--

CREATE TABLE `gurkov_special` (
  `special_id` int(50) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otdel_id` smallint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gurkov_special`
--

INSERT INTO `gurkov_special` (`special_id`, `name`, `otdel_id`) VALUES
(3, 'Автоматизация и управление', 3),
(1, 'Информационные системы', 1),
(2, 'Нефтегазовое дело', 2),
(5, 'Программное обеспечение ВТ и ПО', 1),
(6, 'Строительство и эксплуатация зданий и сооружений', 2),
(4, 'Электроснабжение', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `gurkov_student`
--

CREATE TABLE `gurkov_student` (
  `user_id` bigint(50) NOT NULL,
  `gruppa_id` int(50) NOT NULL,
  `num_zach` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gurkov_student`
--

INSERT INTO `gurkov_student` (`user_id`, `gruppa_id`, `num_zach`) VALUES
(1, 1, '2445224'),
(2, 2, '5554235'),
(3, 1, '5435345362'),
(4, 1, '23523511'),
(5, 2, '23423141234');

-- --------------------------------------------------------

--
-- Структура таблицы `gurkov_teacher`
--

CREATE TABLE `gurkov_teacher` (
  `user_id` bigint(50) NOT NULL,
  `otdel_id` smallint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gurkov_teacher`
--

INSERT INTO `gurkov_teacher` (`user_id`, `otdel_id`) VALUES
(1, 1),
(3, 1),
(4, 1),
(2, 3),
(5, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `gurkov_user`
--

CREATE TABLE `gurkov_user` (
  `user_id` bigint(50) NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronomic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_id` tinyint(50) NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gurkov_user`
--

INSERT INTO `gurkov_user` (`user_id`, `lastname`, `firstname`, `patronomic`, `login`, `pass`, `gender_id`, `birthday`) VALUES
(1, 'Иванов', 'Иван', 'Иванович', 'ivan', '123456', 1, '2001-06-01'),
(2, 'Петрова', 'Ольга', 'Олеговна', 'olgaog', '44444552221', 2, '2001-04-02'),
(3, 'Эстаозус', 'Чэшкош', 'Провирович', '600604949', '00002929929', 1, '2001-04-22'),
(4, 'Орбитова', 'Джулли', 'Провторовна', 'ooofos', '5995940', 2, '2001-07-30'),
(5, 'Штормиц', 'Зигфрид', 'Логфридович', 'zzridzz', '20202020454', 1, '2001-06-26');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gurkov_classroom`
--
ALTER TABLE `gurkov_classroom`
  ADD PRIMARY KEY (`classroom_id`);

--
-- Индексы таблицы `gurkov_course`
--
ALTER TABLE `gurkov_course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `special_id` (`special_id`);

--
-- Индексы таблицы `gurkov_day`
--
ALTER TABLE `gurkov_day`
  ADD PRIMARY KEY (`day_id`);

--
-- Индексы таблицы `gurkov_gender`
--
ALTER TABLE `gurkov_gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Индексы таблицы `gurkov_graduate`
--
ALTER TABLE `gurkov_graduate`
  ADD PRIMARY KEY (`graduate_id`),
  ADD KEY `gruppa_id` (`gruppa_id`,`course_id`,`user_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `gurkov_graduate_time`
--
ALTER TABLE `gurkov_graduate_time`
  ADD PRIMARY KEY (`graduate_time_id`),
  ADD KEY `graduate_id` (`graduate_id`,`day_id`,`lesson_num_id`,`classroom_id`),
  ADD KEY `classroom_id` (`classroom_id`),
  ADD KEY `day_id` (`day_id`),
  ADD KEY `lesson_num_id` (`lesson_num_id`);

--
-- Индексы таблицы `gurkov_gruppa`
--
ALTER TABLE `gurkov_gruppa`
  ADD PRIMARY KEY (`gruppa_id`),
  ADD KEY `special_id` (`special_id`);

--
-- Индексы таблицы `gurkov_lesson_num`
--
ALTER TABLE `gurkov_lesson_num`
  ADD PRIMARY KEY (`lesson_num_id`);

--
-- Индексы таблицы `gurkov_otdel`
--
ALTER TABLE `gurkov_otdel`
  ADD PRIMARY KEY (`otdel_id`);

--
-- Индексы таблицы `gurkov_special`
--
ALTER TABLE `gurkov_special`
  ADD PRIMARY KEY (`special_id`),
  ADD KEY `name` (`name`,`otdel_id`),
  ADD KEY `otdel_id` (`otdel_id`);

--
-- Индексы таблицы `gurkov_student`
--
ALTER TABLE `gurkov_student`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `gruppa_id` (`gruppa_id`);

--
-- Индексы таблицы `gurkov_teacher`
--
ALTER TABLE `gurkov_teacher`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `otdel_id` (`otdel_id`);

--
-- Индексы таблицы `gurkov_user`
--
ALTER TABLE `gurkov_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `gender_id` (`gender_id`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `gurkov_course`
--
ALTER TABLE `gurkov_course`
  ADD CONSTRAINT `gurkov_course_ibfk_1` FOREIGN KEY (`special_id`) REFERENCES `gurkov_special` (`special_id`);

--
-- Ограничения внешнего ключа таблицы `gurkov_graduate`
--
ALTER TABLE `gurkov_graduate`
  ADD CONSTRAINT `gurkov_graduate_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `gurkov_course` (`course_id`),
  ADD CONSTRAINT `gurkov_graduate_ibfk_2` FOREIGN KEY (`gruppa_id`) REFERENCES `gurkov_gruppa` (`gruppa_id`),
  ADD CONSTRAINT `gurkov_graduate_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `gurkov_teacher` (`user_id`);

--
-- Ограничения внешнего ключа таблицы `gurkov_graduate_time`
--
ALTER TABLE `gurkov_graduate_time`
  ADD CONSTRAINT `gurkov_graduate_time_ibfk_1` FOREIGN KEY (`classroom_id`) REFERENCES `gurkov_classroom` (`classroom_id`),
  ADD CONSTRAINT `gurkov_graduate_time_ibfk_2` FOREIGN KEY (`day_id`) REFERENCES `gurkov_day` (`day_id`),
  ADD CONSTRAINT `gurkov_graduate_time_ibfk_3` FOREIGN KEY (`graduate_id`) REFERENCES `gurkov_graduate` (`graduate_id`),
  ADD CONSTRAINT `gurkov_graduate_time_ibfk_4` FOREIGN KEY (`lesson_num_id`) REFERENCES `gurkov_lesson_num` (`lesson_num_id`);

--
-- Ограничения внешнего ключа таблицы `gurkov_gruppa`
--
ALTER TABLE `gurkov_gruppa`
  ADD CONSTRAINT `gurkov_gruppa_ibfk_1` FOREIGN KEY (`special_id`) REFERENCES `gurkov_special` (`special_id`);

--
-- Ограничения внешнего ключа таблицы `gurkov_special`
--
ALTER TABLE `gurkov_special`
  ADD CONSTRAINT `gurkov_special_ibfk_1` FOREIGN KEY (`otdel_id`) REFERENCES `gurkov_otdel` (`otdel_id`);

--
-- Ограничения внешнего ключа таблицы `gurkov_student`
--
ALTER TABLE `gurkov_student`
  ADD CONSTRAINT `gurkov_student_ibfk_1` FOREIGN KEY (`gruppa_id`) REFERENCES `gurkov_gruppa` (`gruppa_id`),
  ADD CONSTRAINT `gurkov_student_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `gurkov_user` (`user_id`);

--
-- Ограничения внешнего ключа таблицы `gurkov_teacher`
--
ALTER TABLE `gurkov_teacher`
  ADD CONSTRAINT `gurkov_teacher_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `gurkov_user` (`user_id`),
  ADD CONSTRAINT `gurkov_teacher_ibfk_2` FOREIGN KEY (`otdel_id`) REFERENCES `gurkov_otdel` (`otdel_id`);

--
-- Ограничения внешнего ключа таблицы `gurkov_user`
--
ALTER TABLE `gurkov_user`
  ADD CONSTRAINT `gurkov_user_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `gurkov_gender` (`gender_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
