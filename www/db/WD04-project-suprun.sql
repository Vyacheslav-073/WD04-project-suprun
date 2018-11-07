-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 08 2018 г., 00:41
-- Версия сервера: 5.5.58-log
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `WD04-project-suprun`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `photo` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`, `photo`) VALUES
(1, 'Вячеслав, Супрун', '<p>Я начинающий веб разработчик из Ростова на Дону.&nbsp; &nbsp;</p>\r\n\r\n<h2>Что я умею</h2>\r\n\r\n<p>Прошёл два курса в школе веб разработки - &quot;Webcademy.ru&quot;.</p>\r\n\r\n<p>Курс по вёрстке и веб разработке. В данном проекте вы найдёте ссылку&nbsp;на мой Git Hub репозиторий, а так же познакомитесь с работами, реализованными в рамках онлайн обучения, в школе &quot;Webcademy.ru&quot;.</p>\r\n', '957502053.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(1, ' Мои путешествия'),
(11, 'Новости'),
(12, 'Игры'),
(13, 'Техника'),
(14, 'Технологии'),
(15, 'Веб разработка');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(1, 27, 20, 'Первые электробусы должны выйти на столичные дороги осенью 2018 г. К концу 2019 г. в Москве будет курсировать около 600 электробусов.', '2018-10-20 12:52:41'),
(3, 24, 19, 'информации с помощью сервисов, разделяющих нашу идеологию по сохранению приватности.', '2018-10-20 18:59:09'),
(4, 24, 20, 'Заметки с использованием Markdown-разметки', '2018-10-20 19:22:33'),
(7, 23, 20, 'Еще одной интересной чертой мультиплеера является &laquo;Штаб&raquo;.', '2018-10-20 19:45:21'),
(10, 23, 20, 'идея мультиплеера Call of Duty', '2018-10-20 19:56:21');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `secondname` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  `vk` varchar(191) DEFAULT NULL,
  `fb` varchar(191) DEFAULT NULL,
  `github` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `phone`, `address`, `name`, `secondname`, `skype`, `vk`, `fb`, `github`, `twitter`) VALUES
(1, 'viacheslav.suprun@yandex.ru', '+7 928 1273228', 'Ростов на Дону', 'Вячеслав', 'Супрун', '+7 928 1273228', 'https://vk.com/id372948519', 'https://Facebook.com', 'https://github.com/Vyacheslav-073', 'https://Twitter.com');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `description`, `period`) VALUES
(6, 'Студент', 'Обучение на курсе &quot;Web-dev&quot;, в школе онлайн обучения &quot;Webcademy.ru&quot;.', 'Август - ноябрь 2018г.'),
(7, 'Студент', 'Обучение на курсе &quot;Верстальщик&quot;, в школе онлайн обучения &quot;Webcademy.ru&quot;.', 'Май - Август 2018г.');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_file_name_original` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `email`, `name`, `message`, `message_file_name_original`, `message_file`, `date_time`) VALUES
(10, 'info3@mail.com', 'Tony ', 'Hello!!!', 'Post-1.png', '-115407193.png', '2018-10-23 19:26:16'),
(11, 'info2@mail.com', 'Алёна', 'Привет!!!', 'Post-3.png', '636453545.png', '2018-10-23 19:27:12'),
(12, 'vyacheslavsuprun@mail.ru', 'Емельян', 'Hello!!!', NULL, NULL, '2018-11-06 19:37:19');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `cat` int(11) UNSIGNED DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `date_time`, `post_img`, `post_img_small`, `author_id`, `cat`, `update_time`) VALUES
(19, 'Самоуправляемые автомобили на дорогах ', 'Samsung стал первым производителем электроники, в мае получившим разрешение властей Южной Кореи на тестирование беспилотных автомобилей, но 19-й компанией в общей сложности. Первой была Hyundai Motor, именно для ее автомобилей Samsung готовит свои сенсоры и технологии, а также планирует разработать алгоритм беспилотного вождения, «которому можно будет доверять и в плохую погоду» ', '2018-10-13 12:30:31', '-166404924.jpg', '320--166404924.jpg', 20, 13, NULL),
(20, 'Компания &quot;Такском&quot; запустила для своих клиентов новый сервис &quot;Личный кабинет&quot;', 'Новый сервис будет полезен при подготовке к сдаче налоговой и бухгалтерской отчетности и при взаимодействии с оператором электронного документооборота. \r\nУже 15 лет компания \"Такском\", как оператор электронного документооборота (Паспорт ФНС России о присоединении к Cети доверенных операторов электронного документооборота № 0001) предоставляет своим клиентам защищенные каналы документальной, юридически-значимой связи в сети Интернет с применением электронной подписи. При этом, предоставляемые компанией \"Такском\" технологии могут работать по разным регламентам, учитывающим как требования законодательства, так и корпоративные бизнес-правила.\r\nПрошло чуть больше квартала, как компания \"Такском\" предоставила своим пользователям новые сервисы \"Конвертер\" и \"Сверься!\". Сервис \"Конвертер\" позволяет включить сведения в формате Excel из книг покупок, продаж и журналов учета выставленных и полученных счетов-фактур  в декларацию по НДС формат XML, а сервис \"Сверься! \" помогает выявлять разногласия в книгах покупок и книгах продаж любой организации с книгами покупок и продаж ее контрагентов, что очень важно для любого бухгалтера. \r\nИ вот теперь уверенно можно говорить и об еще одном сервисе – \"Личный кабинет\". Сервис начал разрабатываться около года тому назад. На текущий момент по результатам проведенного тестирования более 90% респондентов оценивают удобство и  функциональность сервиса \"Личного кабинета\" на \"хорошо\" и \"отлично\". \r\nЗа это время в \"Личный кабинет\" было добавлено много необходимых и полезных функций, а интерфейс стал понятнее и удобнее. Этот сервис помогает бухгалтерам самостоятельно решать задачи, возникающие в процессе сдачи отчетности в государственные контролирующие органы. В современном ритме жизни нет лишней минуты на звонки или отправку письменных запросов в службу технической поддержки, поэтому Клиенты предпочитают самостоятельно, в режиме онлайн, получать информацию и управлять своими услугами. \r\nС помощью сервиса \"Личный кабинет\" можно легко и быстро решить множество задач. Если бухгалтеру нужно: \r\n— подключить или отключить направления обмена с ФНС, ФСС, ПФР, Росстатом и Росприроднадзором, \r\n— отправить отчетность в Росалкогольрегулирование, \r\n— получить уведомления о поступлении требований из ФНС, о вводе деклараций в систему электронной обработки данных, об отказе в принятии декларации, об уточнении декларации на свой электронный почтовый ящик или телефон,\r\n— сделать \"Запрос в ЕГРЮЛ\" и получить сведения о своих контрагентах, \r\n— проверить баланс, запросить акт сверки и расчетные документы в компании \"Такском\", \r\n— отправить любые вопросы, связанные с использованием программных продуктов и услуг компании \"Такском\",\r\n— обновить собственную контактную информацию, \r\nэто все это можно сделать со своего рабочего места, зайдя в \"Личный кабинет\" и найдя там простое решение.', '2018-10-13 12:40:52', '333254243.jpg', '320-333254243.jpg', 20, 11, NULL),
(22, 'Android будет переименован', 'Последние слухи утверждают, что Android как бренд исчезнет или будет переименован. Текстовая расшифровка и стенограмма презентации новых смартфонов Pixel 3 и Pixel 3 XL не содержат упоминания бренда Android, что также косвенно подтверждает данные слухи. \r\nДля сравнения, в 2016 году, когда Google впервые представил смартфоны Pixel, компания упомянула Android не менее чем 8 раз, превознося достоинства последней версии своей мобильной ОС, Android 7.0 Nougat, и быстрых обновлений, которые пользователи получат с помощью устройств Google.\r\n\r\nСовсем другая картина ждет нас на презентации Pixel 3. Если просмотреть запись презентации или прочитать текстовую расшифровку, которая растянулась на десятки страниц, то можно встретить много интересных слов, но среди них нет заветного слова «Android». То есть название операционной системы, на котором работают новые смартфоны Pixel 3, вообще не упоминается. Трудно представить, что на презентации iPhone ни разу не будет упомянут iOS.\r\n\r\nВ последние годы Google запустил множество новых продуктов и сервисов, названия которых связаны с такими словами как Pixel, Slate, Home, Messages, Assistant и, конечно же, Chrome OS и Google, но Android не находится в данном списке.\r\nЭксперты по маркетинговой стратегии Google считают, что бренд Android оказался «неэффективным» для ориентированных на конечного пользователя устройств и сервисов, которые в течение последних нескольких лет продвигает поисковый гигант.\r\nПоэтому, как утверждают слухи, компания вовсю обсуждает идею поэтапного отказа от бренда Android для таких продуктов, даже несмотря на то, что она имеет дело с возражениями сотрудников Google, которые эмоционально привязаны к нему.\r\nЕще одним косвенным фактом стало недавнее переименование «Android Messages» в просто «Messages» («Сообщения»). После первоначального запуска в качестве «Messenger», которое можно было легко спутать с Facebook Messenger, почти два года назад Google переименовал SMS-приложение по умолчанию в «Android Messages». ', '2018-10-13 12:53:40', '632599066.jpg', '320-632599066.jpg', 20, 14, NULL),
(23, 'Все, что известно о мультиплеере Call of Duty: WWII', ' идея мультиплеера Call of Duty: WWII заключается в возвращении к истокам. Это будет совершенно чистый мультиплеерный опыт, соответствующий сеттингу и лишенный двойных прыжков, экзоскелетов и прочих новомодных элементов.\r\nНовым способом создания и отслеживания мультиплеерной карьеры станут «Подразделения». Первоначальная принадлежность к тому или иному подразделению поможет вам создать персонажа и определить его класс, набор экипировки и мультиплеерную роль.\r\n«Война» — новый игровой режим, который привносит сюжетный элемент в классический командный дезматч. Ключевой чертой станут асимметричные карты, на которых у каждой команды будут особые цели. Например, штурм или защита пляжа Омаха.\r\nЕще одной интересной чертой мультиплеера является «Штаб». Это, по сути, мультиплеерный хаб наподобие того, что есть в Destiny, когда игроки перед матчами могут свободно перемещаться по зоне, взаимодействовать между собой и социализироваться.\r\nПо последней информации, одновременно в «Штабе» смогут находиться до 48 игроков.', '2018-10-13 12:58:33', '791166430.jpg', '320-791166430.jpg', 20, 12, NULL),
(24, 'Вышел браузер Vivaldi 2.0 ', 'Сегодня компания Vivaldi выпускает финальную версию своего браузера Vivaldi 2.0, предоставляющего новые возможности продуктивной работы для каждого пользователя.\r\nПользователи могут адаптировать браузер к своим потребностям, изменяя не только внешний вид браузера, но и расположение его элементов без каких-либо ограничений. Настройки Vivaldi предоставляют огромное разнообразие возможностей, включая:\r\nРасположение панели вкладок по вертикали, перенос адресной строки вниз (или её полное отключение)\r\nРегулировка масштаба интерфейса и веб-страниц, а также режим чтения для более комфортного отображения текста\r\nАдаптивное изменение цветовых тем в зависимости от просматриваемых веб-сайтов\r\nИспользование различных тем оформления по расписанию\r\nНастраиваемая Экспресс-панель и фоновый рисунок окна\r\nVivaldi отныне позволяет легко и надёжно синхронизировать данные пользователя между несколькими установленными на разных компьютерах версиями браузера. Эти данные включают в себя закладки и Экспресс-панель, сохранённые пароли и данные автозаполнения форм, историю введённых адресов, расширения и заметки.\r\nВсе синхронизированные данные, включая пароли пользователя, защищены шифрованием и не пересылаются между браузерами Vivaldi в открытом виде. В целях ещё большей защищённости данных, для их хранения используются только собственные серверы Vivaldi.\r\nДолгожданная синхронизация данных может быть активирована пользователем или в настройках Vivaldi, или с помощью кнопки с облаком в панели состояния браузера.\r\nДля оптимального использования экранного пространства и упрощения работы, браузер Vivaldi предлагает боковую панель – расширяемый, многофункциональный инструмент, включающий панели Загрузки, Закладки, Историю, Веб-панели, Панель окна и Заметки.\r\nВеб-панели позволяют пользователям размещать любимые веб-приложения или веб-сайты на специальной боковой панели одновременно с просмотром основного окна. Начиная с данной версии браузера, эти панели могут “плавать” поверх основной страницы, не прибегая к переформатированию содержимого окна при открытии. Также теперь появились иконки рекомендованных веб-панелей из числа популярных веб-сервисов, соцсетей и часто посещаемых веб-сайтов.\r\nVivaldi обладает широкими возможностями управления вкладками, включая их группировку, переименование и поиск, а также закрепление вкладок, перетаскивание, выгрузка вкладок из памяти компьютера, отключение звука на вкладках при необходимости. Также пользователи имеют несколько способов доступа к данным функциям. Адаптация к привычкам пользователей – это одна из ключевых задач разработчиков браузера Vivaldi.\r\nОдна из наиболее популярных функций, Размещение вкладок — открытие нескольких вкладок одновременно в одном окне — теперь предлагает возможность менять размер отображаемых страниц простым перетаскиванием границ. При этом состояние изменённых страниц остаётся прежним даже после перезагрузки браузера и при открытии сохранённой сессии.\r\nТакже популярная функция визуальной прокрутки открытых страниц получила новую опцию просмотра списка заголовков страниц, что позволяет ещё быстрее найти нужную вкладку.\r\nОдин из самых популярных инструментов в браузере сегодня – это История просмотра. Vivaldi предлагает очень мощный инструмент. Пользователи могут исследовать свои собственные привычки, используя статистику и визуальную графику, представленные в новой уникальной истории просмотров.\r\nVivaldi обладает интуитивным интерфейсом, работать с которым можно ещё быстрее, используя настраиваемые комбинации Быстрых клавиш и Жесты мышью. В новой версии браузера появилась возможность открывать недавно закрытые вкладки используя кнопки Назад и Вперёд одновременно с клавишей-модификатором (Cmd или Ctrl) или кликом средней кнопки мыши.\r\nВстроенные инструменты Vivaldi помогают пользователям работать в сети проще и быстрее. Можно делать скриншоты страниц и делиться ими с другими пользователями с помощью функции Снимок экрана, создавать Заметки с использованием Markdown-разметки, а также подробно изучать Свойства изображений.\r\nГибкие настройки Vivaldi позволяют пользователям работать в Приватном окне и осуществлять в нём поиск информации с помощью сервисов, разделяющих нашу идеологию по сохранению приватности.', '2018-10-13 13:00:22', '256164649.jpg', '320-256164649.jpg', 20, 14, NULL),
(27, '&laquo;Яндекс&raquo; договорился с властями Москвы развивать беспилотный транспорт ', '<p>&laquo;Яндекс&raquo; подписал соглашение с правительством Москвы о сотрудничестве в развитии беспилотного транспорта. Об этом &laquo;Ведомостям&raquo; сообщила пресс-служба компании. Детали договоренностей стороны будут обсуждать позднее, уточнил собеседник &laquo;Ведомостей&raquo;. В соглашении также участвуют группа ГАЗ, ФГУП &laquo;НАМИ&raquo; и &laquo;Камаз&raquo;. Совместная работа с властями поможет подготовить законодательную базу для внедрения беспилотных технологий на улицах Москвы, надеется &laquo;Яндекс&raquo;. Испытания в реальных условиях (с водителем за рулем), в свою очередь, позволят быстрее обучить беспилотные автомобили и повысить конкурентоспособность российских технологий на мировом уровне, считает гендиректор &laquo;Яндекса&raquo; в России Елена Бунина. &laquo;Мы надеемся, что к 2030 г. беспилотные машины станут привычным явлением на дорогах Москвы, но впереди еще много работы, и мы рассчитываем, что сегодняшнее соглашение позволит ускорить разработку и внедрение беспилотников в России&raquo;, &ndash; отметила пресс-служба &laquo;Яндекса&raquo;. В будущем компания планирует также договариваться об испытаниях в других городах и регионах России. Беспилотник &laquo;Яндекса&raquo; доехал по трассе до Казани &laquo;Яндекс&raquo; отмечает, что инвестирует в развитие технологии беспилотных автомобилей, поскольку видит в них будущее. &laquo;Мы уверены, что в ближайшие 12 лет беспилотные технологии изменят городскую транспортную систему и сотрут грань между такси, каршерингом, личным и общественным транспортом&raquo;, &ndash; уточняет пресс-служба компании. &laquo;Яндекс&raquo; работает над технологией беспилотного управления автомобилем с 2016 г. Беспилотная машина компании впервые проехала по улицам Москвы после снегопада в феврале. В июне беспилотный автомобиль &laquo;Яндекса&raquo; преодолел 789 км, доехав от Москвы до Казани. &laquo;Во всех испытаниях за рулем находился опытный водитель, который контролировал ситуацию&raquo;, &ndash; подчеркивает пресс-служба компании. На Горьковском автозаводе на платформе электромобилей созданы несколько образцов беспилотников, говорится в сообщении ГАЗа. В июне &laquo;Камаз&raquo; показал в Казани беспилотный электробус &laquo;КамАЗ-1221&raquo;, разработанный совместно с НАМИ. C 2021 г. власти Москвы перестанут закупать дизельные автобусы для использования на городских пассажирских маршрутах и сконцентрируются на приобретении электробусов. В мае 2018 г. ГАЗ и &laquo;Камаз&raquo; получили контракт на поставку для ГУП &laquo;Мосгортранс&raquo; 200 электробусов с инфраструктурой и обслуживанием на 12,7 млрд руб. Первые электробусы должны выйти на столичные дороги осенью 2018 г. К концу 2019 г. в Москве будет курсировать около 600 электробусов.</p>\r\n', '2018-10-16 17:53:08', NULL, NULL, 19, 11, '2018-10-28 11:13:01');

-- --------------------------------------------------------

--
-- Структура таблицы `skills`
--

CREATE TABLE `skills` (
  `id` int(11) UNSIGNED NOT NULL,
  `html` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `js` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jquery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `php` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mysql` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `git` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gulp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npm` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yarn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `skills`
--

INSERT INTO `skills` (`id`, `html`, `css`, `js`, `jquery`, `php`, `mysql`, `git`, `gulp`, `npm`, `yarn`) VALUES
(1, '85', '85', '45', '45', '50', '50', '85', '85', '85', '85');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recovery_code_times` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `name`, `secondname`, `city`, `country`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(19, 'viacheslav.suprun@yandex.ru', '$2y$10$v6Fwcj6exG963KaTTl6c/O2nbOsQtSbYFfu/ihsnAfAI50dkC6oSK', 'admin', 'Вячеслав', 'Супрун', 'Ростов на Дону', 'Россия', '204040224.jpg', '48-204040224.jpg', NULL, NULL),
(20, 'info2@mail.com', '$2y$10$pyvOHpduKEIwxVCg1/VBE.0YIM8ipW/QHCoFQwsghMOwkGFcsWgQK', 'user', 'Алёна', 'Иванова', 'Ростов на Дону', 'Россия', '554560677.jpg', '48-554560677.jpg', NULL, NULL),
(21, 'info3@mail.com', '$2y$10$x/mlQ.N9g3YG3TgyZn8zQeXJ4wEMJ8jnY/gzQC.qLlPVQSp1aRkJO', 'user', 'Tony ', 'Stark', 'Канзас', 'USA', '181862141.jpg', '48-181862141.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  `link_github` varchar(255) NOT NULL,
  `link_work` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `author_id` varchar(255) NOT NULL,
  `work_image` varchar(255) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `technology` varchar(191) DEFAULT NULL,
  `date` int(11) UNSIGNED DEFAULT NULL,
  `work_image_small` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `works`
--

INSERT INTO `works` (`id`, `title`, `date_time`, `link_github`, `link_work`, `result`, `description`, `author_id`, `work_image`, `cat`, `technology`, `date`, `work_image_small`) VALUES
(2, 'Apollo', '2018-11-06 23:45:53', 'https://github.com/Vyacheslav-073/Apollo', 'http://winch.zzz.com.ua/Apollo-footer/', 'Работа реализована.', '<p>Верстка лендинга по psd макету.</p>\r\n', '19', '822120867.png', '15', 'Адаптивная верстка.', 1541537153, '320-822120867.png'),
(3, 'Organic', '2018-11-06 23:38:09', 'https://github.com/Vyacheslav-073/Organic', 'http://winch.zzz.com.ua/Organic-2/', 'Работа реализована.', '<p>Верстка одностраничника по psd макету.</p>\r\n', '19', '-573556578.png', '14', 'Обычная верска без использования адаптивности.', 1541536689, '320--573556578.png'),
(4, 'Портфолио', '2018-11-06 23:21:45', 'https://github.com/Vyacheslav-073/portfolio', 'http://winch.zzz.com.ua/personal/', 'Работа реализована.', '<p>Это мой первый сайт портфолио, сверстанный за время прохождения курса - &quot;Верстальщик&quot; в школе онлайн обучения &quot;Webcademy.ru&quot;.</p>\r\n', '19', '937992456.png', '14', 'CSS, HTML, JS, PHP.', 1541535705, '320-937992456.png');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
