-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-03-2025 a las 12:42:15
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel_master`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `image_id` int(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `image_id`, `content`, `created_at`, `updated_at`) VALUES
(16, 12, 18, 'palo', '2024-02-17 20:16:27', '2024-02-17 20:16:27'),
(19, 7, 18, 'Hola', '2024-02-21 10:20:08', '2024-02-21 10:20:08'),
(20, 4, 20, 'Buena foto', '2024-02-22 08:55:49', '2024-02-22 08:55:49'),
(22, 4, 13, 'buena foto', '2025-03-04 11:24:09', '2025-03-04 11:24:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `followers`
--

CREATE TABLE `followers` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `followed_user_id` int(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `followers`
--

INSERT INTO `followers` (`id`, `user_id`, `followed_user_id`, `created_at`, `updated_at`) VALUES
(1, 7, 8, '2024-02-18 15:23:25', '2024-02-18 15:23:25'),
(2, 8, 7, '2024-02-18 15:38:22', '2024-02-18 15:38:22'),
(3, 7, 10, '2024-02-18 15:39:40', '2024-02-18 15:39:40'),
(8, 12, 7, '2024-02-19 10:16:01', '2024-02-19 10:16:01'),
(32, 7, 4, '2024-02-22 08:56:38', '2024-02-22 08:56:38'),
(33, 4, 7, '2025-03-04 11:12:55', '2025-03-04 11:12:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `image_path` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `user_id`, `image_path`, `description`, `created_at`, `updated_at`) VALUES
(11, 4, '1706185708descarga.jpg', 'Imagen de Albert Einstein', '2024-01-25 12:28:28', '2024-01-30 09:53:33'),
(13, 7, '1706185994cultura_229239353_38694509_1706x1280.jpg', 'hola', '2024-01-25 12:33:14', '2024-01-25 12:33:14'),
(17, 4, '1706609054Los-5-personajes-Disney-más-conocidos-mickey.jpg', 'Mickey edit', '2024-01-30 10:04:14', '2024-01-30 10:05:05'),
(18, 4, '1706609208pinocho.jpg', 'prueba examen', '2024-01-30 10:06:48', '2024-02-22 08:54:29'),
(20, 4, '1708592138f.elconfidencial.com_original_408_873_588_4088735888f8e441cac1a672ad7aad10.jpg', 'Pablo motos', '2024-02-22 08:55:38', '2024-02-22 08:55:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likes`
--

CREATE TABLE `likes` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `image_id` int(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `image_id`, `content`, `created_at`, `updated_at`) VALUES
(34, 7, 13, NULL, '2024-01-29 11:37:01', '2024-01-29 11:37:01'),
(36, 7, 11, NULL, '2024-01-29 11:37:06', '2024-01-29 11:37:06'),
(52, 4, 11, NULL, '2024-01-30 09:55:53', '2024-01-30 09:55:53'),
(55, 4, 17, NULL, '2024-01-30 11:56:20', '2024-01-30 11:56:20'),
(60, 12, 13, NULL, '2024-02-17 20:18:25', '2024-02-17 20:18:25'),
(89, 12, 18, NULL, '2024-02-19 11:08:34', '2024-02-19 11:08:34'),
(91, 7, 18, NULL, '2024-02-21 10:17:37', '2024-02-21 10:17:37'),
(92, 7, 17, NULL, '2024-02-21 10:47:47', '2024-02-21 10:47:47'),
(93, 4, 18, NULL, '2024-02-22 08:54:56', '2024-02-22 08:54:56'),
(94, 4, 20, NULL, '2024-02-22 08:55:42', '2024-02-22 08:55:42'),
(95, 7, 20, NULL, '2024-02-22 08:56:06', '2024-02-22 08:56:06'),
(96, 13, 20, NULL, '2025-03-04 11:06:29', '2025-03-04 11:06:29'),
(97, 4, 13, NULL, '2025-03-04 11:09:04', '2025-03-04 11:09:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `table_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `action`, `ip`, `table_name`, `table_id`, `created_at`, `updated_at`) VALUES
(1, 4, 'Eliminar imagen', '127.0.0.1', 'images', 9, '2024-02-22 07:46:37', '2024-02-22 07:46:37'),
(2, 4, 'Actualizar imagen', '127.0.0.1', 'images', 18, '2024-02-22 07:50:30', '2024-02-22 07:50:30'),
(3, 4, 'Eliminar imagen', '127.0.0.1', 'images', 10, '2024-02-22 07:54:06', '2024-02-22 07:54:06'),
(4, 4, 'Actualizar imagen', '127.0.0.1', 'images', 18, '2024-02-22 07:54:29', '2024-02-22 07:54:29'),
(5, 4, 'Eliminar imagen', '127.0.0.1', 'images', 21, '2025-03-04 10:34:01', '2025-03-04 10:34:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(200) DEFAULT NULL,
  `nick` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `surname`, `nick`, `email`, `password`, `image`, `created_at`, `updated_at`, `remember_token`) VALUES
(4, 'admin', 'admin', 'admin', 'superadmin', 'admin@admin.com', '$2y$12$NGyazIlzGtwASKIv.PmLfeesjA3IoDdR/i3L88GRhqdR9y1bGyCGC', '1704448160cultura_229239353_38694509_1706x1280.jpg', '2024-01-04 11:39:02', '2024-01-05 13:59:40', 'Y59nM8IYoabz7kr1iF622XdzmQIXvEhstpK1sJbWxC31qCCxjNNy350L3upf'),
(7, 'user', 'Roseta', 'Beneyto', 'Ro', 'ro@ro.com', '$2y$12$Td2MGCser5w5xODfb2qA9.6NeclntG1PEgXV.OJtGuFawgkLU5x2y', '170617821816497656011831.jpg', '2024-01-25 10:22:38', '2024-01-25 10:23:38', NULL),
(8, 'user', 'prueba', 'DSADSAD', 'DASDAD', 'dsada@dsada.com', '$2y$12$W0U6wBg0993bblY0EwOVjedmCtY44oUN0YtCx6KsWwOW7dhNr3KOi', NULL, '2024-01-25 10:24:26', '2024-01-25 10:24:26', NULL),
(10, 'user', 'admin', 'daad', 'dadadadd', 'dasdsadad@dsdasda.com', '$2y$12$5i921QSHGpSmq29mnq9kXOJwFXWzi7dGnL0vPY3aRXyGMjVZ6DXwu', NULL, '2024-01-25 11:03:03', '2024-01-25 11:03:03', NULL),
(11, 'user', 'dsadsadsada', 'dsdsadada', 'Ro', 'dsdada@dadasdasdsdad.com', '$2y$12$iKnKIgyROF66NBgEoWv7su0u5laeutF413yYZTKjEz7NGJ7D2C7v.', NULL, '2024-01-25 11:03:39', '2024-01-25 11:03:39', NULL),
(12, 'user', 'Roseta', 'Beneyto', 'roseeta', 'rosetabeneyto7@gmail.com', '$2y$12$dRAkAESYJpsK70dFIRBPhOZf3WyccdpvcoZkf8hk8.r4HSCbOxYnW', '1708201066GettyImages-517397806.webp', '2024-02-17 20:15:56', '2024-02-17 20:17:46', NULL),
(13, 'user', 'david', 'prueba', 'daviiddd', 'admindavid@gmail.com', '$2y$12$Ditw9189v17yUTJ7x3tH1ezCJFAx39lvq8qtnaxOfoS.4Z5lWDWl2', NULL, '2025-03-04 11:06:20', '2025-03-04 11:06:20', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comments_users` (`user_id`),
  ADD KEY `fk_comments_images` (`image_id`);

--
-- Indices de la tabla `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_follow` (`user_id`,`followed_user_id`),
  ADD KEY `fk_followers_followed_users` (`followed_user_id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_images_users` (`user_id`);

--
-- Indices de la tabla `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_likes_users` (`user_id`),
  ADD KEY `fk_likes_images` (`image_id`);

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comments_images` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `fk_comments_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `fk_followers_followed_users` FOREIGN KEY (`followed_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_followers_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fk_images_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `fk_likes_images` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `fk_likes_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
