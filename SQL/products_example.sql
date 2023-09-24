-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-11-2020 a las 10:40:50
-- Versión del servidor: 10.1.41-MariaDB-0+deb9u1
-- Versión de PHP: 7.0.33-0+deb9u6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `products_example`
--
CREATE DATABASE IF NOT EXISTS `products_example` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `products_example`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `imageUrl` varchar(200) NOT NULL,
  `rating` smallint(6) NOT NULL DEFAULT '0',
  `price` decimal(8,2) NOT NULL,
  `description` varchar(200) NOT NULL,
  `available` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `imageUrl`, `rating`, `price`, `description`, `available`) VALUES
(2, 'img/motherboard.jpg', 4, '123.00', 'X570 Motherboard', '2020-11-26 13:32:00'),
(3, 'img/ram.jpg', 3, '199.95', 'DDR4 RAM 32GB', '2019-12-11 14:32:00'),
(7, 'img/ssd.jpg', 2, '45.50', 'SSD 256GB', '2019-12-11 14:32:00'),
(38, 'img/hdd.jpg', 2, '42.00', 'Hard Drive 1TB', '2019-03-02 18:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
