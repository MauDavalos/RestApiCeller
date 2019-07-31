-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 31-07-2019 a las 16:56:57
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id10193737_celler2019`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(11) NOT NULL,
  `categoria_nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `categoria_descripcion` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`, `categoria_descripcion`) VALUES
(1, 'Celular', 'Este es un celular'),
(2, 'Tablet', 'Esta es una tablet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `compra_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `precioAcordado` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`compra_id`, `usuario_id`, `producto_id`, `precioAcordado`) VALUES
(1, 1, 1, 270);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `direccion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `provincia` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `callePrincipal` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `calleSecundaria` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `referencia` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `zipCode` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`direccion_id`, `usuario_id`, `provincia`, `ciudad`, `callePrincipal`, `calleSecundaria`, `referencia`, `zipCode`) VALUES
(1, 1, 'Pichincha', 'Quito', 'Mariano U', 'Joaquin P', 'Casa 3 pisos', '2010'),
(2, 2, 'Chimborazo', 'Latacunga', 'Nogales', 'Roldós', 'Centro de Salud', '6789'),
(3, 2, 'Chimborazo', 'Latacunga', 'Nogales', 'Roldós', 'Centro de Salud', '6789'),
(4, 2, 'Chimborazo', 'Latacunga', 'Nogales', 'Roldós', 'Centro de Salud', '6789'),
(5, 3, 'haha', 'jsbs', 'sbbs', 'sbbs', 'dbsb', '7272'),
(6, 3, 'Tungurahua', 'Ambato', 'Ficoa', 'Av.Guaytambos', 'Las Acacias', '180101'),
(7, 15, 'patata', 'patata1', 'patata2', 'patata3', 'pataton', '123'),
(8, 17, 'Cotopaxi', 'Latacunga', 'Av. Rumiñahui', 'Gabriela Mistral', 'León de piedra', '05001'),
(9, 3, 'ed', 'ff', 'ff', 'ff', 'ff', '33'),
(10, 3, 'gagags', 'hshdhd', 'bdbdb', 'bdbd', 'vdvdv', '1234'),
(11, 3, 'lata', 'lata', 'lata', 'lata', 'lata', '123'),
(12, 3, 'Tungurahua', 'Ambato', 'Ficoa', 'Av. Guaytambos', 'Las Acacias', '180101');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `estado_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `enciende` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `ilumina` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `funciona` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `raspon` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `trizado` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`estado_id`, `producto_id`, `enciende`, `ilumina`, `funciona`, `raspon`, `trizado`) VALUES
(1, 1, '1', '1', '1', '0', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `producto_marca` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `producto_modelo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `producto_color` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `producto_almacenamiento` int(11) NOT NULL,
  `producto_valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `categoria_id`, `producto_marca`, `producto_modelo`, `producto_color`, `producto_almacenamiento`, `producto_valor`) VALUES
(1, 1, 'Apple', 'Iphone XS', 'Negro', 32, 1000),
(2, 2, 'Samsung', 'Galaxy S5e', 'Gris', 32, 400),
(3, 1, 'Xiaomi', 'Redmi Note 7', 'Azul', 32, 186),
(4, 1, 'Apple', 'Iphone XR Max', 'Negro', 64, 1200),
(5, 1, 'Samsung', 'S10+', 'Negro', 32, 950),
(6, 2, 'Apple', 'Ipad Pro', 'Gris', 64, 999),
(8, 1, 'Samsung', 'S7', 'Gris', 64, 700),
(9, 1, 'Samsung', 'S7', 'Gris', 64, 700),
(10, 1, 'Apple', 'iPhone XS Max', 'Silver', 512, 1449),
(11, 1, 'Apple', 'iPhone XS Max', 'Space Gray', 512, 1449),
(12, 1, 'Apple', 'iPhone XS Max', 'Gold', 512, 1449),
(13, 1, 'Apple', 'iPhone XS Max', 'Silver', 256, 1249),
(14, 1, 'Apple', 'iPhone XS Max', 'Space Gray', 256, 1249),
(15, 1, 'Apple', 'iPhone XS Max', 'Gold', 256, 1249),
(16, 1, 'Apple', 'iPhone XS Max', 'Silver', 64, 1099),
(17, 1, 'Apple', 'iPhone XS Max', 'Space Gray', 64, 1099),
(18, 1, 'Apple', 'iPhone XS Max', 'Gold', 64, 1099),
(19, 1, 'Apple', 'iPhone XS', 'Silver', 512, 1349),
(20, 1, 'Apple', 'iPhone XS', 'Space Gray', 512, 1349),
(21, 1, 'Apple', 'iPhone XS', 'Gold', 512, 1349),
(22, 1, 'Apple', 'iPhone XS', 'Gold', 256, 1149),
(23, 1, 'Apple', 'iPhone XS', 'Space Gray', 256, 1149),
(24, 1, 'Apple', 'iPhone XS', 'Gold', 256, 1149),
(25, 1, 'Apple', 'iPhone XR', 'White', 256, 899),
(26, 1, 'Apple', 'iPhone XS', 'Space Gray', 256, 1149),
(27, 1, 'Apple', 'iPhone XS', 'Silver', 256, 1149),
(28, 1, 'Apple', 'iPhone XS', 'Gold', 256, 1149),
(29, 1, 'Apple', 'iPhone XS', 'Gold', 64, 999),
(30, 1, 'Apple', 'iPhone XS', 'Space Gray', 64, 999),
(31, 1, 'Apple', 'iPhone XS', 'Silver', 64, 999),
(32, 1, 'Apple', 'iPhone XS', 'Silver', 64, 999),
(33, 1, 'Apple', 'iPhone XR', 'White', 256, 899),
(34, 1, 'Apple', 'iPhone XR', 'Black', 256, 899),
(35, 1, 'Apple', 'iPhone XR', 'Blue', 256, 899),
(36, 1, 'Apple', 'iPhone XR', 'Yellow', 256, 899),
(37, 1, 'Apple', 'iPhone XR', 'Coral', 256, 899),
(38, 1, 'Apple', 'iPhone XR', 'Red', 256, 899),
(39, 1, 'Apple', 'iPhone XR', 'Red', 128, 799),
(40, 1, 'Apple', 'iPhone XR', 'Coral', 128, 799),
(41, 1, 'Apple', 'iPhone XR', 'Yellow', 128, 799),
(42, 1, 'Apple', 'iPhone XR', 'Blue', 128, 799),
(43, 1, 'Apple', 'iPhone XR', 'Black', 128, 799),
(44, 1, 'Apple', 'iPhone XR', 'White', 128, 799),
(45, 1, 'Apple', 'iPhone XR', 'White', 64, 749),
(46, 1, 'Apple', 'iPhone XR', 'Black', 64, 749),
(47, 1, 'Apple', 'iPhone XR', 'Blue', 64, 749),
(48, 1, 'Apple', 'iPhone XR', 'Yellow', 64, 749),
(49, 1, 'Apple', 'iPhone XR', 'Coral', 64, 749),
(50, 1, 'Apple', 'iPhone XR', 'Red', 64, 749),
(51, 1, 'Apple', 'iPhone X', 'Silver', 256, 1099),
(52, 1, 'Apple', 'iPhone X', 'Space Gray', 256, 1099),
(53, 1, 'Apple', 'iPhone X', 'Space Gray', 64, 899),
(54, 1, 'Apple', 'iPhone X', 'Silver', 64, 899),
(55, 1, 'Apple', 'iPhone 8 Plus', 'Silver', 64, 699),
(56, 1, 'Apple', 'iPhone 8 Plus', 'Space Gray', 64, 699),
(57, 1, 'Apple', 'iPhone 8 Plus', 'Gold', 64, 699),
(58, 1, 'Apple', 'iPhone 8 Plus', 'Gold', 256, 849),
(59, 1, 'Apple', 'iPhone 8 Plus', 'Space Gray', 256, 849),
(60, 1, 'Apple', 'iPhone 8 Plus', 'Silver', 256, 849),
(61, 1, 'Apple', 'iPhone 8', 'Silver', 256, 749),
(62, 1, 'Apple', 'iPhone 8', 'Space Gray', 256, 749),
(63, 1, 'Apple', 'iPhone 8', 'Gold', 256, 749),
(64, 1, 'Apple', 'iPhone 8', 'Gold', 64, 599),
(65, 1, 'Apple', 'iPhone 8', 'Space Gray', 64, 599),
(66, 1, 'Apple', 'iPhone 8', 'Space Gray', 64, 599),
(67, 2, 'Apple', 'iPad Pro', 'Space Gray', 1024, 1749),
(68, 2, 'Apple', 'iPad Pro', 'Silver', 1024, 1749),
(69, 2, 'Apple', 'iPad Pro', 'Silver', 512, 1349),
(70, 2, 'Apple', 'iPad Pro', 'Space Gray', 512, 1349),
(71, 2, 'Apple', 'iPad Pro', 'Space Gray', 256, 1149),
(72, 2, 'Apple', 'iPad Pro', 'Silver', 256, 1149),
(73, 2, 'Apple', 'iPad Pro', 'Silver', 64, 999),
(74, 2, 'Apple', 'iPad Pro', 'Space Gray', 64, 999),
(75, 2, 'Apple', 'iPad Air', 'Silver', 256, 649),
(76, 2, 'Apple', 'iPad Air', 'Space Gray', 256, 649),
(77, 2, 'Apple', 'iPad Air', 'Gold', 256, 649),
(78, 2, 'Apple', 'iPad Air', 'Gold', 64, 499),
(79, 2, 'Apple', 'iPad Air', 'Silver', 64, 499),
(80, 2, 'Apple', 'iPad Air', 'Space Gray', 64, 499),
(81, 2, 'Samsung', 'TAB S', 'Silver', 128, 739),
(82, 2, 'Samsung', 'TAB S', 'Black', 128, 739),
(83, 2, 'Samsung', 'TAB S', 'Black', 64, 699),
(84, 2, 'Samsung', 'TAB S', 'Silver', 64, 699),
(85, 2, 'Samsung', 'TAB A', 'Black', 64, 255),
(86, 2, 'Samsung', 'TAB E', 'Black', 64, 225),
(87, 1, 'Samsung', 'S10 ', 'Black', 1024, 1299),
(88, 1, 'Samsung', 'S10 ', 'White', 1024, 1299),
(89, 1, 'Samsung', 'S10 ', 'Green', 1024, 1299),
(90, 1, 'Samsung', 'S10 ', 'Green', 512, 1149),
(91, 1, 'Samsung', 'S10 ', 'White', 512, 1149),
(92, 1, 'Samsung', 'S10 ', 'Black', 512, 1149),
(93, 1, 'Samsung', 'S10 ', 'Black', 128, 999),
(94, 1, 'Samsung', 'S10 ', 'White', 128, 999),
(95, 1, 'Samsung', 'S10 ', 'Green', 128, 999),
(96, 1, 'Samsung', 'S10', 'Green', 256, 929),
(97, 1, 'Samsung', 'S10', 'White', 256, 929),
(98, 1, 'Samsung', 'S10', 'Black', 256, 929),
(99, 1, 'Samsung', 'S10', 'Black', 128, 849),
(100, 1, 'Samsung', 'S10', 'White', 128, 849),
(101, 1, 'Samsung', 'S10', 'White', 128, 849),
(102, 1, 'Samsung', 'S10', 'Green', 128, 849),
(103, 1, 'Samsung', 'S10e', 'Green', 128, 749),
(104, 1, 'Samsung', 'S10e', 'Yellow', 128, 749),
(105, 1, 'Samsung', 'S10e', 'White', 128, 749),
(106, 1, 'Samsung', 'S10e', 'Black', 128, 749),
(107, 1, 'Samsung', 'S10e', 'Black', 128, 749),
(108, 1, 'Samsung', 'S9 ', 'Black', 128, 719),
(109, 1, 'Samsung', 'S9 ', 'Gray', 128, 719),
(110, 1, 'Samsung', 'S9 ', 'Purple', 128, 719),
(111, 1, 'Samsung', 'S9 ', 'Purple', 64, 669),
(112, 1, 'Samsung', 'S9 ', 'Gray', 64, 669),
(113, 1, 'Samsung', 'S9', 'Gray', 64, 599),
(114, 1, 'Samsung', 'S9', 'Black', 64, 599),
(115, 1, 'Samsung', 'S9', 'Purple', 64, 599),
(116, 1, 'Samsung', 'S9', 'Purple', 128, 629),
(117, 1, 'Samsung', 'S9', 'Gray', 128, 629),
(118, 1, 'Samsung', 'S9', 'Black', 128, 629),
(119, 1, 'Samsung', 'S9', 'Black', 128, 629),
(120, 1, 'Xiaomi', 'Mi 9T', 'Carbon Black', 128, 399),
(121, 1, 'Xiaomi', 'Mi 9T', 'Carbon Black', 64, 369),
(122, 1, 'Xiaomi', 'Mi 9T', 'Flame Red', 64, 369),
(123, 1, 'Xiaomi', 'Mi 9T', 'Glacier Blue', 64, 369),
(124, 1, 'Xiaomi', 'Mi 9T', 'Glacier Blue', 128, 399),
(125, 1, 'Xiaomi', 'Mi 9T', 'Flame Red', 128, 399),
(126, 1, 'Xiaomi', 'Mi 9 SE', 'Ocean Blue', 128, 319),
(127, 1, 'Xiaomi', 'Mi 9 SE', 'Lavender Violet', 128, 319),
(128, 1, 'Xiaomi', 'Mi 9 SE', 'Piano Black', 128, 319),
(129, 1, 'Xiaomi', 'Mi 8', 'Black', 128, 349),
(130, 1, 'Xiaomi', 'Mi 8', 'White', 128, 349),
(131, 1, 'Xiaomi', 'Mi 8', 'Gold', 128, 349),
(132, 1, 'Xiaomi', 'Mi 8', 'Blue', 128, 349),
(133, 1, 'Xiaomi', 'Pocophone', 'Blue', 128, 339),
(134, 1, 'Xiaomi', 'Pocophone', 'Black', 128, 339),
(135, 1, 'Xiaomi', 'Pocophone', 'Red', 128, 339),
(136, 1, 'Xiaomi', 'Pocophone', 'Carbon', 128, 339),
(137, 1, 'Xiaomi', 'Pocophone', 'Carbon', 64, 299),
(138, 1, 'Xiaomi', 'Pocophone', 'Red', 64, 299),
(139, 1, 'Xiaomi', 'Pocophone', 'Blue', 64, 299),
(140, 1, 'Xiaomi', 'Pocophone', 'Blue', 64, 299),
(141, 1, 'Xiaomi', 'Pocophone', 'Black', 64, 299),
(142, 1, 'Xiaomi', 'Redmi 7', 'Eclipse Black', 64, 189),
(143, 1, 'Xiaomi', 'Redmi 7', 'Lunar Red', 64, 189),
(144, 1, 'Xiaomi', 'Redmi 7', 'Lunar Red', 64, 189),
(145, 1, 'Xiaomi', 'Redmi 7', 'Comet Blue', 64, 189),
(146, 1, 'Xiaomi', 'Redmi 7', 'Comet Blue', 32, 149),
(147, 1, 'Xiaomi', 'Redmi 7', 'Lunar Red', 32, 149),
(148, 1, 'Xiaomi', 'Redmi 7', 'Eclipse Black', 32, 149),
(149, 1, 'Xiaomi', 'Redmi 7', 'Eclipse Black', 16, 119),
(150, 1, 'Xiaomi', 'Redmi 7', 'Lunar Red', 16, 119),
(151, 1, 'Xiaomi', 'Redmi 7', 'Comet Blue', 16, 119);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL,
  `usuarioNombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `usuarioApellido` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `usuarioMail` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `usuarioTelefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `usuarioPassword` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuarioNombre`, `usuarioApellido`, `usuarioMail`, `usuarioTelefono`, `usuarioPassword`) VALUES
(1, 'Mauricio', 'Davalos', 'maudavalos97@hotmail.com', '0983344522', 'mau10'),
(2, 'Mau', 'Davalos', 'mau', '1236', 'p1'),
(3, 'Darex', 'Leon', 'darexleon@gmail.com', '0987638245', '123abc'),
(4, 'Jonathan', 'Franco', 'jonas', '093281418', 'qwer'),
(5, '', '', '', '', ''),
(14, 'Hernan', 'Espinoza', 'jespinoza@hotmail.com', '0986352565', '12345'),
(15, 'Benjamin', 'Sanchez', 'benjamin@gmail.com', '0987189323', 'open11'),
(16, 'Hernan', 'Andrade', 'jh@espe', '09956235', '123'),
(17, 'Ruben', 'Lopez', 'edrulopez@hotmail.com', '0996767410', '101010');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`compra_id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`direccion_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`estado_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `usuarioMail` (`usuarioMail`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `compra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `direccion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `estado_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`);

--
-- Filtros para la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `direccion_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estado`
--
ALTER TABLE `estado`
  ADD CONSTRAINT `estado_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
