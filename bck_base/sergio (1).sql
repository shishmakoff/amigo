-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 10 2018 г., 17:03
-- Версия сервера: 5.7.20
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sergio`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Админ', '2', 1527166594),
('Пользователь', '1', 1527166581),
('РедСвой', '1', 1527168942),
('Управление пользователями', '2', 1527166670);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/itable/*', 2, NULL, NULL, NULL, 1527166265, 1527166265),
('/itable/add-new', 2, NULL, NULL, NULL, 1527166273, 1527166273),
('/itable/delete', 2, NULL, NULL, NULL, 1527166277, 1527166277),
('/itable/index', 2, NULL, NULL, NULL, 1527166314, 1527166314),
('/itable/update', 2, NULL, NULL, NULL, 1527166275, 1527166275),
('/rbac/*', 2, NULL, NULL, NULL, 1527166246, 1527166246),
('/site/about', 2, NULL, NULL, NULL, 1526989778, 1526989778),
('/site/contact', 2, NULL, NULL, NULL, 1526990028, 1526990028),
('Админ', 1, 'Админ', NULL, NULL, 1527166551, 1527166551),
('Добавление', 2, 'Добавление записи', NULL, NULL, 1527166089, 1527166379),
('доступ1', 2, 'достур', NULL, NULL, 1526990046, 1526990046),
('Изменение', 2, 'Изменение записей', NULL, NULL, 1527166399, 1527166399),
('Пользователь', 1, 'Обычный поллзватель', NULL, NULL, 1527166528, 1527166528),
('РедСвой', 2, 'Редактирование своего поста', 'app\\components\\AuthorRule', NULL, 1527168870, 1527168870),
('роль 2', 1, 'роль2', NULL, NULL, 1526991012, 1526991012),
('Роль1', 1, 'роль', NULL, NULL, 1526990989, 1526990989),
('Удаление', 2, 'Удаление записи', NULL, NULL, 1527166479, 1527166479),
('Управление пользователями', 2, 'Управление пользователями', NULL, NULL, 1527166656, 1527166656);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Добавление', '/itable/add-new'),
('Удаление', '/itable/delete'),
('Добавление', '/itable/index'),
('Изменение', '/itable/index'),
('Удаление', '/itable/index'),
('Изменение', '/itable/update'),
('Управление пользователями', '/rbac/*'),
('доступ1', '/site/about'),
('Роль1', '/site/about'),
('роль 2', '/site/contact'),
('Пользователь', 'Добавление'),
('роль 2', 'доступ1'),
('Пользователь', 'Изменение'),
('РедСвой', 'Изменение'),
('Админ', 'Пользователь'),
('Админ', 'Удаление');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_rule`
--

INSERT INTO `auth_rule` (`name`, `data`, `created_at`, `updated_at`) VALUES
('app\\components\\AuthorRule', 0x4f3a32353a226170705c636f6d706f6e656e74735c417574686f7252756c65223a333a7b733a343a226e616d65223b733a32353a226170705c636f6d706f6e656e74735c417574686f7252756c65223b733a393a22637265617465644174223b693a313532373136383837303b733a393a22757064617465644174223b693a313532373136383837303b7d, 1527168870, 1527168870),
('тест', 0x4f3a32353a226170705c636f6d706f6e656e74735c417574686f7252756c65223a333a7b733a343a226e616d65223b733a383a22d182d0b5d181d182223b733a393a22637265617465644174223b693a313532363939363438393b733a393a22757064617465644174223b693a313532363939363438393b7d, 1526996489, 1526996489);

-- --------------------------------------------------------

--
-- Структура таблицы `fcode`
--

CREATE TABLE `fcode` (
  `fcode` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `itog` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fcode`
--

INSERT INTO `fcode` (`fcode`, `name`, `itog`) VALUES
('0813050', 'Пільгове медичне обслуговування осіб, які постраждали внаслідок Чорнобильської катастрофи', 0),
('0813090', 'Видатки на поховання учасників бойових дій та осіб з інвалідністю внаслідок війни', 0),
('0813100', 'Надання соціальних та реабілітаційних послуг громадянам похилого віку, інвалідам, дітям-інвалідам в установах соціального обслуговування', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `isi_tabl`
--

CREATE TABLE `isi_tabl` (
  `id` int(11) NOT NULL,
  `pole` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `isi_tabl`
--

INSERT INTO `isi_tabl` (`id`, `pole`) VALUES
(1, '[\r\n	{\"headerName\": \"<span class=\'ag-theme-fresh ag-header\' style=\'overflow: visible; display: inline-block; text-align: center; text-overflow: clip; white-space: normal;font: 400 10pt Times New Roman;\'>Пример большой текстовой строки, которая не помещается в поле заголовка в одну строку</span>\", \r\n		\"cellRenderer\": \"group\",\r\n		\"cellStyle\": \"@F@statusCheck(1)\",\r\n		\"children\": [\r\n			{\"headerName\":\"<span class=\'ag-theme-fresh ag-header\' style=\'overflow: visible; display: inline-block; text-align: center; text-overflow: clip; white-space: normal;font: 400 10pt Times New Roman;\'>1</span>\",\r\n				\"children\": [\r\n			{\"headerName\":\"1\", \"field\": \"nam\", \"width\":150, \r\n		\"pinned\": \"left\", \"lockPinned\": true,\"cellClass\": \"lock-pinned\"\r\n		}]}]\r\n	},\r\n	{\"headerName\": \"КЕКВ та/або ККК\",\r\n	 	\"children\": [\r\n		{\"headerName\":\"<span class=\'ag-theme-fresh ag-header\' \'>1</span>\",\"field\": \"kekb\", \"width\":100, \"headerComponentParams\": \"{menuIcon: \'fa-cog\'}\",\"lockPinned\": true, \"cellClass\": \"lock-pinned\",\"pinned\": \"left\"\r\n		}]\r\n	},\r\n	{\"headerName\": \"Код рядка\",\r\n	 	\"children\": [\r\n		{\"headerName\":\"3\",\"field\": \"id\", \"width\":150,\"lockPinned\": true,\"cellClass\": \"lock-pinned\", \"pinned\": \"left\" \r\n		}]\r\n	},\r\n	{\"headerName\": \"Затверджено на звітний рік\",\r\n	   	\"children\": [\r\n			{\"headerName\":\"4\", \"field\": \"F_4\", \"width\":150, \"valueFormatter\": \"@F@currencyFormatter\", \r\n			\"type\": \"numericColumn\", \"cellClass\": \"text-right\", \"editable\": true,  \r\n			\"cellStyle\": \"@F@function(params){var ns = params.data.id; if(ns === \'010\') {background = \'#B70000\'} else if(ns === \'020\' || ns === \'030\') { background = \'#FF8400\' } else if (ns === \'040\' || ns === \'050\') { background = \'#FFF700\' } else if (ns === \'060\' || ns === \'070\') {background = \'#CEFF00\'} else if(ns === \'080\') {background = \'#05CC00\'} else { background = \'#fff\' } return {background: background }}\"\r\n			}]\r\n			\r\n	},\r\n	{\"headerName\": \"Затверджено на звітний період (рік)1\", \r\n		\"children\": [\r\n			{\"headerName\":\"5\",\"field\": \"F_5\", \"width\":150, \"type\": \"numericColumn\", \"cellClass\": \"text-right\",\r\n	 		\"editable\": \"@F@function(params){var ns = params.data.id; if (ns === \'010\') { return false } else if(ns === \'020\' || ns === \'030\') { return true } else if (ns === \'040\' || ns === \'050\') { return false } else if (ns === \'060\' || ns === \'070\') { return true } else if(ns === \'080\') { return false } else { return true }}\"\r\n	}]\r\n	},\r\n	{\"headerName\": \"Залишок на початок звітного року\",\r\n		\"children\": [\r\n			{\"headerName\":\"6\",\"field\": \"F_6\", \"type\": \"numericColumn\",\"cellClass\": \"text-right\", \r\n			 \"editable\": true, \"valueFormatter\": \"@F@currencyFormatter\"\r\n		}]\r\n	},\r\n	{\"headerName\": \"Надійшло коштів за звітний період (рік)\",\r\n		\"children\": [\r\n			{\"headerName\":\"7\",\"field\": \"F_7\", \"type\": \"numericColumn\", \"cellClass\": \"text-right\",\r\n			 \"editable\": true, \"valueFormatter\": \"@F@currencyFormatter\"\r\n			}]\r\n	},\r\n	{\"headerName\": \"Касові за звітний період (рік)\",\r\n		\"children\": [\r\n			{\"headerName\":\"8\",\"field\": \"F_8\", \"type\": \"numericColumn\", \"cellClass\": \"text-right\", \r\n			 \"editable\": false, \"valueFormatter\": \"@F@currencyFormatter\",\r\n			 \"valueGetter\": \"@F@myvalueGetter\"\r\n			}]\r\n	},\r\n	{\"headerName\": \"Фактичні за звітний період (рік)\",\r\n		\"children\": [\r\n			{\"headerName\":\"9\",\"field\": \"F_9\", \"type\": \"numericColumn\",\"cellClass\": \"text-right\",\"editable\": false\r\n			}]\r\n	},\r\n	{\"headerName\": \"Залишок на кінець звітного періоду (року)\",\r\n		\"children\": [\r\n			{\"headerName\":\"10\",\"field\": \"F_10\", \"colSpan\": \"@F@function(params){return params.data.F_10===0 ? 1 : 1;}\",\r\n			\"type\": \"numericColumn\", \"width\": 120, \r\n    		\"valueGetter\": \"Math.round(data.F_6*100)/100+Math.round(data.F_7*100)/100-Math.round(data.F_8*100)/100\", \r\n			\"valueFormatter\": \"@F@currencyFormatter\",\r\n			\"cellStyle\": \"@F@function(params){background = \'#05CC00\'; return {background: background}}\"\r\n		}]\r\n	}\r\n]\r\n  ');

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1526910005),
('m140506_102106_rbac_init', 1526910045),
('m140602_111327_create_menu_table', 1526910009),
('m160312_050000_create_user', 1526910009);

-- --------------------------------------------------------

--
-- Структура таблицы `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `fio` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `phonebook`
--

CREATE TABLE `phonebook` (
  `id_fio` int(11) NOT NULL,
  `id_phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `phones`
--

CREATE TABLE `phones` (
  `id` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `plan`
--

CREATE TABLE `plan` (
  `kmb` varchar(11) NOT NULL,
  `fcode` varchar(7) NOT NULL,
  `kekv` int(4) NOT NULL,
  `m1` decimal(10,2) NOT NULL,
  `m2` decimal(10,2) NOT NULL,
  `m3` decimal(10,2) NOT NULL,
  `m4` decimal(10,2) NOT NULL,
  `m5` decimal(10,2) NOT NULL,
  `m6` decimal(10,2) NOT NULL,
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `plan`
--

INSERT INTO `plan` (`kmb`, `fcode`, `kekv`, `m1`, `m2`, `m3`, `m4`, `m5`, `m6`, `id`, `user_id`) VALUES
('0400000000', '0813100', 2111, '89.00', '778.00', '0.04', '0.00', '0.00', '0.00', 17, 0),
('0400000000', '0813050', 2111, '6767.00', '0.00', '0.00', '0.00', '0.00', '0.00', 18, 0),
('0400000000', '0813050', 2111, '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', 19, 0),
('0400000000', '0813050', 21111, '656.00', '0.00', '0.00', '0.00', '25.00', '344.00', 20, 2),
('0400000000', '0813100', 2111345, '499.00', '2.00', '0.00', '0.00', '1.00', '45.00', 21, 1),
('0400000000', '0813090', 2111, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 22, 1),
('0400000000', '0813050', 2111, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 23, 1),
('0400000000', '0813090', 2111, '0.00', '0.00', '545.00', '545.00', '323.00', '0.00', 24, 1),
('0400000000', '0813050', 2111, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 25, 1),
('0400000000', '0813050', 2111, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 26, 1),
('0400000000', '0813050', 2111, '0.00', '33.00', '0.00', '0.00', '0.00', '0.00', 27, 1),
('0400000000', '0813050', 2111, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 28, 1),
('0400000000', '0813050', 2111, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 29, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'user1', '4jMRQeB-sUqZvZiYrl0Rhw8zkeX27u4L', '$2y$13$5PeWoF4q5BBgG0d8iilKXOM2ebV9S5kv.uoUrFtE4pIA4nVK02V12', 'GeMSxitVHRda1XdFhMjUDkEpQQxPUgWa_1526991419', 'user@mail.ru', 10, 1526988171, 1526991419),
(2, 'admin', 'RB1FXggLR-8XgNn5ChQZZKdFlvWpAxTO', '$2y$13$KuloNQl7EzyKT.P3kCc89eOdIcMYi2yX5WPTqls7GDZtTw4dce8Ve', NULL, '1@asd.dsd', 10, 1527160839, 1527160839),
(3, 'user10', 'tO-AVAVVwN65tLotfjF_VtL9QpxbR_OE', '$2y$13$7fMAMeCO0R.tf5VhmSA0KuzTQbkBA1tlrTueSOuZ2Ad2spsM0QKNC', NULL, 'sdd@sdf.ru', 10, 1533733578, 1533733578);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Индексы таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Индексы таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Индексы таблицы `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `fcode`
--
ALTER TABLE `fcode`
  ADD PRIMARY KEY (`fcode`);

--
-- Индексы таблицы `isi_tabl`
--
ALTER TABLE `isi_tabl`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `phonebook`
--
ALTER TABLE `phonebook`
  ADD UNIQUE KEY `phonebook` (`id_fio`,`id_phone`),
  ADD KEY `id_phone` (`id_phone`);

--
-- Индексы таблицы `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `isi_tabl`
--
ALTER TABLE `isi_tabl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `phones`
--
ALTER TABLE `phones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `phonebook`
--
ALTER TABLE `phonebook`
  ADD CONSTRAINT `phonebook_ibfk_1` FOREIGN KEY (`id_fio`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `phonebook_ibfk_2` FOREIGN KEY (`id_phone`) REFERENCES `phones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
