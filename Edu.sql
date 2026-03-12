-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2026 at 11:48 AM
-- Server version: 12.2.2-MariaDB
-- PHP Version: 8.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Edu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`) VALUES
(1, 'admin@admin.com', '$2y$12$w2AN.bGlaDWLCS8pL9Z8O.fzzgmrwOj8FLaGzjj8f0oi6a9LSlm4y'),
(2, '123@123.com', '$2y$12$QoJls.9WzT88NjO36ZRDLu7PCPqnDnFj5OUuXYagIvKyf.tP0KN0W'),
(3, 'superadmin@eduplatform.com', '$2y$12$LQvBcP6hKqJxR3nYzWtXpO7mNkIjFgHjKlQwErTyUiOpAsDfGhJkL');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `img`, `start_date`, `end_date`, `price`) VALUES
(1, 'Python для начинающих', 'Изучите основы программирования на Python с нуля', 'python.jpg', '2026-03-15', '2026-05-15', 149.99),
(2, 'Веб-разработка полного цикла', 'HTML, CSS, JavaScript, React, Node.js', 'js.jpg', '2026-04-01', '2026-08-01', 399.99),
(3, 'UI/UX дизайн', 'Основы дизайна интерфейсов и пользовательского опыта', 'ux.jpg', '2026-03-20', '2026-06-20', 249.99),
(4, 'Английский для IT специалистов', 'Профессиональный английский для работы в IT', '7053232.jpg', '2026-03-10', '2026-07-10', 199.99),
(5, 'Data Science и машинное обучение', 'Анализ данных, pandas, scikit-learn, нейросети', 'python.jpg', '2026-05-01', '2026-09-01', 499.99),
(6, 'iOS разработка на Swift', 'Создание приложений для iPhone и iPad', '7053232.jpg', '2026-04-15', '2026-08-15', 349.99),
(7, 'Android разработка на Kotlin', 'Создание приложений для Android', 'go.jpg', '2026-04-10', '2026-08-10', 349.99),
(8, 'DevOps инженер', 'Docker, Kubernetes, CI/CD, облачные технологии', 'devops.jpg', '2026-05-20', '2026-10-20', 599.99),
(9, 'Frontend разработка', 'HTML, CSS, JavaScript, React, Vue', 'react.jpg', '2026-03-25', '2026-07-25', 299.99),
(10, 'Backend разработка на PHP', 'PHP, Laravel, MySQL, REST API', '7053232.jpg', '2026-04-05', '2026-08-05', 329.99),
(11, 'Кибербезопасность', 'Защита информации, этичный хакинг, шифрование', 'devops.jpg', '2026-06-01', '2026-09-01', 449.99),
(12, 'Adobe Photoshop с нуля', 'Обработка фотографий, дизайн, ретушь', '7053232.jpg', '2026-03-18', '2026-06-18', 179.99),
(13, 'Microsoft Excel для бизнеса', 'Анализ данных, сводные таблицы, макросы', '7053232.jpg', '2026-03-12', '2026-05-12', 129.99),
(14, '1С Предприятие', 'Конфигурирование и программирование', '7053232.jpg', '2026-04-22', '2026-07-22', 399.99),
(15, 'Digital маркетинг', 'SEO, SMM, контекстная реклама, аналитика', '7053232.jpg', '2026-04-08', '2026-07-08', 279.99),
(16, 'Графический дизайн', 'Adobe Illustrator, CorelDRAW, типографика', 'ux.jpg', '2026-03-28', '2026-06-28', 259.99),
(17, 'SQL для начинающих', 'Основы баз данных, запросы, оптимизация', '7053232.jpg', '2026-03-05', '2026-05-05', 139.99),
(18, 'Java разработка', 'Java Core, Spring, Hibernate', 'go.jpg', '2026-05-10', '2026-09-10', 399.99),
(19, 'JavaScript продвинутый уровень', 'Замыкания, прототипы, асинхронность', 'js.jpg', '2026-04-12', '2026-06-12', 229.99),
(20, 'Python для анализа данных', 'Pandas, NumPy, Matplotlib, Seaborn', 'python.jpg', '2026-04-18', '2026-07-18', 299.99),
(21, 'Немецкий язык для начинающих', 'Уровень A1-A2, разговорная практика', '7053232.jpg', '2026-03-08', '2026-07-08', 189.99),
(22, 'Французский язык', 'Уровень A1-B1, грамматика, произношение', '7053232.jpg', '2026-03-22', '2026-07-22', 199.99),
(23, 'Китайский язык', 'Иероглифика, тоны, разговорный', '7053232.jpg', '2026-05-05', '2026-10-05', 249.99),
(24, 'Управление проектами (PM)', 'Agile, Scrum, Kanban, Jira', '7053232.jpg', '2026-04-25', '2026-07-25', 329.99),
(25, 'Продажи и переговоры', 'Техники продаж, скрипты, возражения', '7053232.jpg', '2026-12-16', '2026-12-24', 199.99),
(26, 'React.js с нуля', 'Компоненты, хуки, Redux, Next.js', 'react.jpg', '2026-05-15', '2026-08-15', 279.99),
(27, 'Vue.js разработка', 'Vue 3, Vuex, Vue Router, Composition API', 'js.jpg', '2026-04-28', '2026-07-28', 259.99),
(28, 'Node.js backend', 'Express, MongoDB, JWT, WebSockets', 'js.jpg', '2026-05-08', '2026-08-08', 319.99),
(29, 'Django веб-фреймворк', 'Django, DRF, ORM, админка', 'python.jpg', '2026-03-18', '2026-06-18', 269.99),
(30, 'Flask для веб-разработки', 'Микрофреймворк, REST API, шаблоны', 'python.jpg', '2026-04-02', '2026-06-02', 189.99),
(31, 'Linux для начинающих', 'Командная строка, администрирование', 'devops.jpg', '2026-03-14', '2026-05-14', 169.99),
(32, 'Базы данных PostgreSQL', 'SQL, индексы, транзакции, настройка', '7053232.jpg', '2026-04-20', '2026-06-20', 229.99),
(33, 'NoSQL базы данных', 'MongoDB, Redis, Cassandra', '7053232.jpg', '2026-05-12', '2026-07-12', 249.99),
(34, 'Тестирование ПО (QA)', 'Ручное тестирование, автотесты, Selenium', '7053232.jpg', '2026-04-15', '2026-07-15', 239.99),
(35, '3D моделирование в Blender', 'Моделирование, текстуры, анимация', '7053232.jpg', '2026-06-01', '2026-09-01', 329.99),
(36, 'Видеомонтаж в Adobe Premiere', 'Монтаж, цветокоррекция, эффекты', '7053232.jpg', '2026-03-25', '2026-06-25', 219.99),
(37, 'Мобильная фотография', 'Съемка на смартфон, обработка, композиция', '7053232.jpg', '2026-03-10', '2026-05-10', 129.99),
(38, 'Финансовая грамотность', 'Личные финансы, инвестиции, бюджетирование', '7053232.jpg', '2026-04-05', '2026-06-05', 159.99),
(39, 'Публичные выступления', 'Ораторское искусство, работа с аудиторией', '7053232.jpg', '2026-05-18', '2026-07-18', 199.99),
(40, 'Тайм-менеджмент', 'Управление временем, продуктивность', '7053232.jpg', '2026-03-28', '2026-05-28', 119.99),
(41, 'C++ для начинающих', 'Основы языка, ООП, STL', 'go.jpg', '2026-06-10', '2026-09-10', 279.99),
(42, 'C# и .NET разработка', 'C#, .NET Core, ASP.NET, Entity Framework', 'go.jpg', '2026-05-22', '2026-09-22', 369.99),
(43, 'Go (Golang) разработка', 'Синтаксис, горутины, каналы, веб-сервисы', 'go.jpg', '2026-04-08', '2026-07-08', 299.99),
(44, 'Rust программирование', 'Системное программирование, безопасность', 'go.jpg', '2026-07-01', '2026-10-01', 349.99),
(45, 'Блокчейн и криптовалюты', 'Технология блокчейн, смарт-контракты', '7053232.jpg', '2026-05-25', '2026-08-25', 449.99),
(46, 'Искусственный интеллект', 'Нейросети, глубокое обучение, TensorFlow', 'python.jpg', '2026-06-15', '2026-09-15', 599.99),
(47, 'Big Data инженерия', 'Hadoop, Spark, Kafka, обработка данных', 'devops.jpg', '2026-07-10', '2026-11-10', 649.99),
(48, 'SMM продвижение', 'ВКонтакте, Instagram, Telegram, таргет', '7053232.jpg', '2026-04-12', '2026-06-12', 179.99),
(49, 'Копирайтинг и контент', 'Написание текстов, редактура, контент-план', '7053232.jpg', '2026-03-20', '2026-05-20', 149.99),
(50, 'AutoCAD для проектирования', '2D и 3D чертежи, проектная документация', '7053232.jpg', '2026-05-05', '2026-08-05', 259.99),
(51, 'Продажи и переговоры', 'Техники продаж, скрипты, возражения', '7053232.jpg', '2027-04-02', '2027-05-28', 199.99),
(60, '12312', '123123', '1773050492-Screenshot_20260227_165810.png', '2026-12-12', '2027-12-12', 34234.00);

-- --------------------------------------------------------

--
-- Table structure for table `course_students`
--

CREATE TABLE `course_students` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `students_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_status` enum('failed','success','pending','') NOT NULL DEFAULT 'pending',
  `certificate_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_students`
--

INSERT INTO `course_students` (`order_id`, `course_id`, `students_id`, `order_date`, `payment_status`, `certificate_number`) VALUES
(1, 1, 1, '2026-03-01 04:30:00', 'success', 'CERT-2026-001'),
(2, 2, 1, '2026-03-15 06:15:00', 'success', 'CERT-2026-002'),
(3, 5, 1, '2026-04-02 10:20:00', 'pending', NULL),
(4, 1, 2, '2026-02-28 05:45:00', 'success', 'CERT-2026-003'),
(5, 3, 2, '2026-03-10 07:30:00', 'success', 'CERT-2026-004'),
(6, 9, 2, '2026-03-20 09:15:00', 'success', 'CERT-2026-005'),
(7, 4, 3, '2026-03-05 08:00:00', 'success', 'CERT-2026-006'),
(8, 8, 3, '2026-04-10 12:30:00', 'failed', NULL),
(9, 10, 3, '2026-04-15 04:45:00', 'pending', NULL),
(10, 6, 4, '2026-03-18 11:20:00', 'success', 'CERT-2026-007'),
(11, 7, 4, '2026-03-25 05:10:00', 'success', 'CERT-2026-008'),
(12, 15, 4, '2026-04-05 07:40:00', 'pending', NULL),
(13, 11, 5, '2026-04-20 06:30:00', 'success', 'CERT-2026-009'),
(14, 13, 5, '2026-03-22 10:50:00', 'success', 'CERT-2026-010'),
(15, 17, 5, '2026-03-30 04:15:00', 'success', 'CERT-2026-011'),
(16, 12, 6, '2026-03-12 09:40:00', 'success', 'CERT-2026-012'),
(17, 16, 6, '2026-03-28 11:30:00', 'success', 'CERT-2026-013'),
(18, 20, 6, '2026-04-18 05:20:00', 'pending', NULL),
(19, 18, 7, '2026-04-08 07:15:00', 'success', 'CERT-2026-014'),
(20, 19, 7, '2026-04-12 12:45:00', 'pending', NULL),
(21, 14, 8, '2026-04-22 04:30:00', 'pending', NULL),
(22, 21, 8, '2026-03-08 06:00:00', 'success', 'CERT-2026-015'),
(23, 22, 8, '2026-03-22 08:30:00', 'success', 'CERT-2026-016'),
(24, 23, 9, '2026-05-05 05:45:00', 'pending', NULL),
(25, 24, 9, '2026-04-25 10:20:00', 'pending', NULL),
(26, 25, 9, '2026-03-30 12:10:00', 'success', 'CERT-2026-017'),
(27, 26, 10, '2026-05-15 07:30:00', 'pending', NULL),
(28, 27, 10, '2026-04-28 09:45:00', 'pending', NULL),
(29, 28, 10, '2026-05-08 11:20:00', 'success', 'CERT-2026-018'),
(30, 2, 5, '2026-04-01 04:00:00', 'success', 'CERT-2026-019'),
(31, 9, 7, '2026-03-25 06:30:00', 'success', 'CERT-2026-020'),
(32, 11, 3, '2026-04-20 10:15:00', 'pending', NULL),
(33, 4, 1, '2026-03-10 05:00:00', 'success', 'CERT-2026-021'),
(34, 7, 2, '2026-04-10 08:45:00', 'pending', NULL),
(35, 8, 4, '2026-04-10 12:00:00', 'success', 'CERT-2026-022'),
(36, 10, 6, '2026-04-15 04:30:00', 'success', 'CERT-2026-023'),
(37, 13, 9, '2026-03-22 07:20:00', 'success', 'CERT-2026-024'),
(38, 15, 1, '2026-04-08 09:50:00', 'pending', NULL),
(39, 17, 3, '2026-03-30 11:40:00', 'success', 'CERT-2026-025'),
(40, 19, 5, '2026-04-12 05:15:00', 'success', 'CERT-2026-026'),
(41, 1, 6, '2026-03-07 15:41:17', 'pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `hours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `name`, `description`, `video_link`, `hours`) VALUES
(1, 1, 'Введение в Python', 'Установка Python, IDE, первая программа', 'https://youtu.be/python_intro', 2),
(2, 1, 'Переменные и типы данных', 'Числа, строки, списки, кортежи', 'https://youtu.be/python_vars', 3),
(3, 1, 'Условные операторы', 'if, elif, else, логические операции', 'https://youtu.be/python_if', 2),
(4, 1, 'Циклы for и while', 'Итерации, range, break, continue', 'https://youtu.be/python_loops', 2),
(5, 2, 'Основы HTML', 'Теги, атрибуты, структура документа', 'https://youtu.be/html_basics', 3),
(6, 2, 'CSS стилизация', 'Селекторы, свойства, Flexbox, Grid', 'https://youtu.be/css_styles', 4),
(7, 2, 'JavaScript основы', 'Переменные, функции, события', 'https://youtu.be/js_basics', 4),
(8, 2, 'React компоненты', 'Функциональные компоненты, props, state', 'https://youtu.be/react_components', 3),
(9, 3, 'Основы композиции', 'Правила композиции, сетки, баланс', 'https://youtu.be/composition', 2),
(10, 3, 'Цвет и типографика', 'Цветовые схемы, шрифты, иерархия', 'https://youtu.be/color_typography', 3),
(11, 4, 'IT терминология', 'Основные термины в IT на английском', 'https://youtu.be/it_english', 2),
(12, 4, 'Технические собеседования', 'Подготовка к интервью на английском', 'https://youtu.be/tech_interview', 3),
(13, 5, 'Введение в Data Science', 'Что такое Data Science, задачи, инструменты', 'https://youtu.be/ds_intro', 2),
(14, 5, 'Pandas для анализа данных', 'DataFrame, Series, загрузка данных', 'https://youtu.be/pandas', 3),
(15, 6, 'Swift основы', 'Синтаксис, переменные, функции', 'https://youtu.be/swift_basics', 3),
(16, 6, 'UIKit основы', 'Работа с интерфейсом, контроллеры', 'https://youtu.be/uikit', 4),
(17, 7, 'Kotlin синтаксис', 'Основы языка, null safety, функции', 'https://youtu.be/kotlin', 3),
(18, 7, 'Android Studio', 'Создание проекта, эмулятор, layout', 'https://youtu.be/android_studio', 4),
(19, 8, 'Docker контейнеры', 'Установка, образы, контейнеры, Dockerfile', 'https://youtu.be/docker', 3),
(20, 8, 'Kubernetes оркестрация', 'Pods, deployments, сервисы', 'https://youtu.be/kubernetes', 4),
(21, 9, 'HTML5 и семантика', 'Семантические теги, аудио, видео', 'https://youtu.be/html5', 2),
(22, 9, 'CSS3 анимации', 'Трансформации, transitions, keyframes', 'https://youtu.be/css3', 3),
(23, 10, 'PHP основы', 'Синтаксис, переменные, массивы', 'https://youtu.be/php_basics', 3),
(24, 10, 'Laravel MVC', 'Маршрутизация, контроллеры, шаблоны', 'https://youtu.be/laravel', 4),
(25, 11, 'Основы безопасности', 'Угрозы, уязвимости, защита', 'https://youtu.be/security_basics', 2),
(26, 11, 'Криптография', 'Шифрование, хеширование, SSL/TLS', 'https://youtu.be/crypto', 3),
(27, 12, 'Интерфейс Photoshop', 'Панели, инструменты, настройки', 'https://youtu.be/photoshop_ui', 2),
(28, 12, 'Слои и маски', 'Работа со слоями, маски, корректирующие слои', 'https://youtu.be/layers_masks', 3),
(29, 13, 'Основы Excel', 'Ячейки, формулы, функции', 'https://youtu.be/excel_basics', 2),
(30, 13, 'Сводные таблицы', 'Создание, настройка, анализ', 'https://youtu.be/pivot_tables', 2),
(31, 14, '1С интерфейс', 'Основные объекты, конфигурация', 'https://youtu.be/1c_interface', 3),
(32, 14, 'Запросы в 1С', 'Язык запросов, конструктор', 'https://youtu.be/1c_queries', 3),
(33, 15, 'SEO оптимизация', 'Внутренняя и внешняя оптимизация', 'https://youtu.be/seo', 3),
(34, 15, 'Контекстная реклама', 'Яндекс.Директ, Google Ads', 'https://youtu.be/context_ads', 3),
(35, 16, 'Adobe Illustrator', 'Работа с вектором, инструменты', 'https://youtu.be/illustrator', 3),
(36, 16, 'Создание логотипов', 'Процесс разработки, тренды', 'https://youtu.be/logodesign', 2),
(37, 17, 'SELECT запросы', 'Выборка данных, WHERE, JOIN', 'https://youtu.be/sql_select', 2),
(38, 17, 'Группировка данных', 'GROUP BY, HAVING, агрегатные функции', 'https://youtu.be/sql_group', 2),
(39, 18, 'Java Core', 'ООП, коллекции, исключения', 'https://youtu.be/java_core', 4),
(40, 18, 'Spring Framework', 'IoC, DI, Spring MVC', 'https://youtu.be/spring', 4),
(41, 19, 'Замыкания и scope', 'Область видимости, замыкания, hoisting', 'https://youtu.be/js_closures', 2),
(42, 19, 'Асинхронность', 'Promise, async/await, event loop', 'https://youtu.be/js_async', 3),
(43, 20, 'NumPy массивы', 'Создание, операции, индексация', 'https://youtu.be/numpy', 2),
(44, 20, 'Визуализация данных', 'Matplotlib, Seaborn, графики', 'https://youtu.be/visualization', 3),
(45, 21, 'Немецкий алфавит', 'Произношение, правила чтения', 'https://youtu.be/german_alphabet', 2),
(46, 21, 'Первые диалоги', 'Приветствие, знакомство', 'https://youtu.be/german_dialogues', 2),
(47, 22, 'Французское произношение', 'Носовые звуки, связывание', 'https://youtu.be/french_pronounce', 3),
(48, 22, 'Грамматика: времена', 'Présent, passé composé, futur', 'https://youtu.be/french_tenses', 3),
(49, 23, 'Тоны в китайском', '4 тона, практика', 'https://youtu.be/chinese_tones', 2),
(50, 23, 'Иероглифика', 'Ключи, порядок черт', 'https://youtu.be/chinese_characters', 3),
(51, 24, 'Agile методология', 'Принципы, ценности, скрам', 'https://youtu.be/agile', 2),
(52, 24, 'Jira для PM', 'Проекты, задачи, дашборды', 'https://youtu.be/jira_pm', 2),
(54, 25, 'Работа с возражениями', 'Типы возражений, обработка', 'https://youtu.be/objections', 2),
(55, 26, 'React хуки', 'useState, useEffect, useContext', 'https://youtu.be/react_hooks', 3),
(56, 26, 'Redux управление состоянием', 'Store, actions, reducers', 'https://youtu.be/redux', 3),
(57, 27, 'Vue 3 основы', 'Composition API, reactivity', 'https://youtu.be/vue3', 3),
(58, 27, 'Vue Router', 'Маршрутизация, навигация', 'https://youtu.be/vue_router', 2),
(59, 28, 'Express.js', 'Маршруты, middleware', 'https://youtu.be/express', 3),
(60, 28, 'MongoDB и Mongoose', 'Модели, запросы, схемы', 'https://youtu.be/mongoose', 3),
(61, 29, 'Django ORM', 'Модели, запросы, связи', 'https://youtu.be/django_orm', 3),
(62, 29, 'Django REST Framework', 'Сериализаторы, вьюхи, аутентификация', 'https://youtu.be/drf', 3),
(63, 30, 'Flask основы', 'Маршруты, шаблоны, формы', 'https://youtu.be/flask', 2),
(64, 30, 'Flask расширения', 'Flask-SQLAlchemy, Flask-Login', 'https://youtu.be/flask_ext', 2),
(65, 31, 'Командная строка Linux', 'Основные команды, навигация', 'https://youtu.be/linux_cli', 2),
(66, 31, 'Пользователи и права', 'Управление пользователями, chmod', 'https://youtu.be/linux_users', 2),
(67, 32, 'Индексы в PostgreSQL', 'Типы индексов, оптимизация', 'https://youtu.be/postgres_index', 3),
(68, 32, 'Транзакции', 'ACID, уровни изоляции', 'https://youtu.be/transactions', 2),
(69, 33, 'MongoDB агрегации', 'Pipeline, операции', 'https://youtu.be/mongo_aggregate', 3),
(70, 33, 'Redis кеширование', 'Типы данных, кеширование', 'https://youtu.be/redis', 2),
(71, 34, 'Тест-дизайн', 'Техники тест-дизайна', 'https://youtu.be/test_design', 3),
(72, 34, 'Selenium WebDriver', 'Автоматизация браузера', 'https://youtu.be/selenium', 3),
(73, 35, 'Моделирование в Blender', 'Базовые формы, модификаторы', 'https://youtu.be/blender_model', 3),
(74, 35, 'Текстурирование', 'UV развертка, шейдеры', 'https://youtu.be/blender_texture', 3),
(75, 36, 'Монтаж в Premiere', 'Таймлайн, переходы, эффекты', 'https://youtu.be/premiere_edit', 3),
(76, 36, 'Цветокоррекция', 'Lumetri, цветовые круги', 'https://youtu.be/color_grading', 2),
(77, 37, 'Композиция в фото', 'Правило третей, ракурсы', 'https://youtu.be/photo_composition', 2),
(78, 37, 'Обработка в Snapseed', 'Инструменты, фильтры', 'https://youtu.be/snapseed', 1),
(79, 38, 'Личный бюджет', 'Доходы, расходы, планирование', 'https://youtu.be/personal_budget', 2),
(80, 38, 'Инвестиции для начинающих', 'Акции, облигации, ETF', 'https://youtu.be/investments', 3),
(81, 39, 'Страх публичных выступлений', 'Как побороть волнение', 'https://youtu.be/stage_fear', 2),
(82, 39, 'Работа с голосом', 'Дикция, интонация, тембр', 'https://youtu.be/voice', 2),
(83, 40, 'Матрица Эйзенхауэра', 'Приоритеты, срочность, важность', 'https://youtu.be/eisenhower', 1),
(84, 40, 'Pomodoro техника', 'Тайм-менеджмент, фокус', 'https://youtu.be/pomodoro', 1),
(85, 41, 'Указатели в C++', 'Работа с памятью, ссылки', 'https://youtu.be/cpp_pointers', 3),
(86, 41, 'ООП в C++', 'Классы, наследование, полиморфизм', 'https://youtu.be/cpp_oop', 3),
(87, 42, 'LINQ запросы', 'Language Integrated Query', 'https://youtu.be/linq', 2),
(88, 42, 'Entity Framework', 'ORM, Code First, миграции', 'https://youtu.be/efcore', 3),
(89, 43, 'Горутины в Go', 'Конкурентность, каналы', 'https://youtu.be/goroutines', 3),
(90, 43, 'Go веб-сервер', 'HTTP сервер, маршрутизация', 'https://youtu.be/go_web', 2),
(91, 44, 'Система владения в Rust', 'Заимствование, времена жизни', 'https://youtu.be/rust_ownership', 3),
(92, 44, 'Обработка ошибок', 'Result, Option, unwrap', 'https://youtu.be/rust_errors', 2),
(93, 45, 'Смарт-контракты', 'Solidity, Ethereum', 'https://youtu.be/smart_contracts', 3),
(94, 45, 'DeFi протоколы', 'Децентрализованные финансы', 'https://youtu.be/defi', 2),
(95, 46, 'Нейронные сети', 'Перцептрон, функции активации', 'https://youtu.be/nn_basics', 3),
(96, 46, 'TensorFlow', 'Создание моделей, обучение', 'https://youtu.be/tensorflow', 3),
(97, 47, 'Hadoop экосистема', 'HDFS, MapReduce, YARN', 'https://youtu.be/hadoop', 3),
(98, 47, 'Apache Spark', 'RDD, DataFrame, SQL', 'https://youtu.be/spark', 3),
(99, 48, 'Таргетинг в Instagram', 'Настройка рекламы, аудитории', 'https://youtu.be/insta_target', 2),
(100, 49, 'Структура текста', 'Заголовки, лиды, абзацы', 'https://youtu.be/text_structure', 2),
(101, 51, 'Структура текста', 'Заголовки, лиды, абзацы', 'https://youtu.be/text_structure', 2),
(102, 51, 'Работа с возражениями', 'Типы возражений, обработка', 'https://youtu.be/objections', 2),
(109, 51, '2342', '4324234', NULL, 3),
(110, 51, '12312', '3424', NULL, 1),
(111, 44, 'qwq', '324234', NULL, 3),
(114, 17, '1123', '34234', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2026_02_27_061909_create_courses_table', 1),
(5, '2026_02_27_061922_create_students_table', 1),
(6, '2026_02_27_061944_create_lessons_table', 1),
(7, '2026_02_27_062020_create_course_students_table', 1),
(8, '2026_02_27_070501_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Admin', 1, 'admin', 'f4757e180db476bccf1253714bae6d3dce768049589133326a60a0b6c4201500', '[\"*\"]', '2026-03-02 03:05:08', NULL, '2026-02-27 00:05:06', '2026-03-02 03:05:08'),
(3, 'App\\Models\\Admin', 3, 'admin', '797b55fc1ge95b33ce53e51317a4374e778cc2dfb99e3300d9f1f03c7d6e1589', '[\"*\"]', NULL, NULL, '2026-03-02 04:15:00', '2026-03-02 04:15:00'),
(4, 'App\\Models\\Students', 1, 'student', '1111111111111111111111111111111111111111111111111111111111111111', '[\"*\"]', '2026-03-02 03:44:47', NULL, '2026-02-27 01:23:01', '2026-02-27 03:44:47'),
(5, 'App\\Models\\Students', 2, 'student', '2222222222222222222222222222222222222222222222222222222222222222', '[\"*\"]', NULL, NULL, '2026-02-27 01:23:01', '2026-02-27 01:23:01'),
(6, 'App\\Models\\Students', 3, 'student', '3333333333333333333333333333333333333333333333333333333333333333', '[\"*\"]', NULL, NULL, '2026-02-27 01:23:01', '2026-02-27 01:23:01'),
(7, 'App\\Models\\Students', 4, 'student', '4444444444444444444444444444444444444444444444444444444444444444', '[\"*\"]', NULL, NULL, '2026-02-27 01:23:01', '2026-02-27 01:23:01'),
(8, 'App\\Models\\Students', 5, 'student', '5555555555555555555555555555555555555555555555555555555555555555', '[\"*\"]', NULL, NULL, '2026-02-27 01:23:01', '2026-02-27 01:23:01'),
(9, 'App\\Models\\Students', 6, 'student', '6666666666666666666666666666666666666666666666666666666666666666', '[\"*\"]', NULL, NULL, '2026-02-27 01:23:01', '2026-02-27 01:23:01'),
(10, 'App\\Models\\Students', 7, 'student', '7777777777777777777777777777777777777777777777777777777777777777', '[\"*\"]', NULL, NULL, '2026-02-27 01:23:01', '2026-02-27 01:23:01'),
(11, 'App\\Models\\Students', 8, 'student', '8888888888888888888888888888888888888888888888888888888888888888', '[\"*\"]', NULL, NULL, '2026-02-27 01:23:01', '2026-02-27 01:23:01'),
(12, 'App\\Models\\Students', 9, 'student', '9999999999999999999999999999999999999999999999999999999999999999', '[\"*\"]', NULL, NULL, '2026-02-27 01:23:01', '2026-02-27 01:23:01'),
(13, 'App\\Models\\Students', 10, 'student', '1010101010101010101010101010101010101010101010101010101010101010', '[\"*\"]', NULL, NULL, '2026-02-27 01:23:01', '2026-02-27 01:23:01'),
(39, 'App\\Models\\Admin', 2, 'admin', '0e2ebe8ef7e62bc31b31702bd642b6af92edc1165a41958a3351e93d9b128a30', '[\"*\"]', '2026-03-12 07:01:32', NULL, '2026-03-11 13:44:42', '2026-03-12 07:01:32');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`) VALUES
(1, 'Иван Петров', 'ivan.petrov@example.com', '$2y$12$F1/wJNQWkY4LHPpLIuJz4.Gbj6HjRBp5tvdtuPSgQy9.r/DY/Pp96'),
(2, 'Елена Смирнова', 'elena.smirnova@example.com', '$2y$12$F1/wJNQWkY4LHPpLIuJz4.Gbj6HjRBp5tvdtuPSgQy9.r/DY/Pp96'),
(3, 'Алексей Козлов', 'alexey.kozlov@example.com', '$2y$12$F1/wJNQWkY4LHPpLIuJz4.Gbj6HjRBp5tvdtuPSgQy9.r/DY/Pp96'),
(4, 'Мария Иванова', 'maria.ivanova@example.com', '$2y$12$F1/wJNQWkY4LHPpLIuJz4.Gbj6HjRBp5tvdtuPSgQy9.r/DY/Pp96'),
(5, 'Дмитрий Соколов', 'dmitry.sokolov@example.com', '$2y$12$F1/wJNQWkY4LHPpLIuJz4.Gbj6HjRBp5tvdtuPSgQy9.r/DY/Pp96'),
(6, 'Анна Попова', 'anna.popova@example.com', '$2y$12$F1/wJNQWkY4LHPpLIuJz4.Gbj6HjRBp5tvdtuPSgQy9.r/DY/Pp96'),
(7, 'Сергей Михайлов', 'sergey.mikhaylov@example.com', '$2y$12$F1/wJNQWkY4LHPpLIuJz4.Gbj6HjRBp5tvdtuPSgQy9.r/DY/Pp96'),
(8, 'Ольга Новикова', 'olga.novikova@example.com', '$2y$12$F1/wJNQWkY4LHPpLIuJz4.Gbj6HjRBp5tvdtuPSgQy9.r/DY/Pp96'),
(9, 'Павел Морозов', 'pavel.morozov@example.com', '$2y$12$F1/wJNQWkY4LHPpLIuJz4.Gbj6HjRBp5tvdtuPSgQy9.r/DY/Pp96'),
(10, 'Наталья Волкова', 'natalia.volkova@example.com', '$2y$12$F1/wJNQWkY4LHPpLIuJz4.Gbj6HjRBp5tvdtuPSgQy9.r/DY/Pp96');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_students`
--
ALTER TABLE `course_students`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `course_students_course_id_foreign` (`course_id`),
  ADD KEY `course_students_students_id_foreign` (`students_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_course_id_foreign` (`course_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `course_students`
--
ALTER TABLE `course_students`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_students`
--
ALTER TABLE `course_students`
  ADD CONSTRAINT `course_students_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_students_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
