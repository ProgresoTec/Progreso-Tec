-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2024 a las 08:17:04
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `scanmarket`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `trabajador` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `id_producto`, `cantidad`, `precio`, `trabajador`) VALUES
(183, 11, 1, 28, 'BODEGA00pierre'),
(184, 4, 1, 24, 'BODEGA00pierre'),
(185, 27, 1, 27, 'BODEGA00pierre'),
(195, 1, 0, 0, 'pierre'),
(196, 1, 0, 0, 'pierre'),
(197, 1, 0, 0, 'pierre'),
(198, 25, 1, 22, 'pierre'),
(199, 3, 0, 0, 'pierre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`codigo`, `nombre`) VALUES
(1, 'Cereales'),
(2, 'Frutas enlatadas'),
(3, 'Postres'),
(4, 'Pastas'),
(5, 'Condimentos'),
(6, 'Vinos y licores'),
(7, 'Bebidas no alcohólicas'),
(8, 'Productos lácteos'),
(9, 'Productos de panadería'),
(10, 'Snacks'),
(11, 'Carnes y embutidos'),
(12, 'Mariscos'),
(13, 'Sopas y caldos'),
(14, 'Aceites y grasas'),
(15, 'Comidas preparadas'),
(16, 'Especias'),
(17, 'Verduras enlatadas'),
(18, 'Productos congelados'),
(19, 'Comida para mascotas'),
(20, 'Pan'),
(21, 'Aguas minerales'),
(22, 'Café y té'),
(23, 'Salsas'),
(24, 'Frutas frescas'),
(25, 'Verduras frescas'),
(26, 'Huevos'),
(27, 'Cereales de desayuno'),
(28, 'Conservas'),
(29, 'Harinas y masas'),
(30, 'Chocolates y dulces'),
(31, 'Arroz y legumbres'),
(32, 'Miel y mermeladas'),
(33, 'Bebidas artesanales'),
(34, 'Productos locales'),
(35, 'Verduras orgánicas'),
(36, 'Frutas secas'),
(37, 'Hierbas medicinales'),
(38, 'Productos de limpieza'),
(39, 'Abarrotes'),
(40, 'Productos sin azúcar'),
(41, 'Cremas y mantequillas'),
(42, 'Galletas y bizcochos'),
(43, 'Productos integrales'),
(44, 'Embutidos caseros'),
(45, 'Salsas caseras'),
(46, 'Conservas artesanales'),
(47, 'Quesos artesanales'),
(48, 'Yogures caseros'),
(49, 'Bebidas fermentadas'),
(50, 'Productos gourmet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_bodega`
--

CREATE TABLE `detalle_bodega` (
  `id` int(11) NOT NULL,
  `nombre_bodega` varchar(250) DEFAULT NULL,
  `logo_bodega` varchar(250) DEFAULT NULL,
  `ruc` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_bodega`
--

INSERT INTO `detalle_bodega` (`id`, `nombre_bodega`, `logo_bodega`, `ruc`) VALUES
(1, 'Bodega El Buen Sabor', 'logo_buen_sabor.png', '1234567890'),
(2, 'Bodega La Esquina', 'logo_la_esquina.png', '0987654321'),
(3, 'Bodega San Juan', 'logo_san_juan.png', '1122334455'),
(4, 'Bodega Doña Rosa', 'logo_dona_rosa.png', '2233445566'),
(5, 'Bodega Los Amigos', 'logo_los_amigos.png', '3344556677'),
(6, 'Bodega El Campesino', 'logo_el_campesino.png', '4455667788'),
(7, 'Bodega Mi Tienda', 'logo_mi_tienda.png', '5566778899'),
(8, 'Bodega La Familia', 'logo_la_familia.png', '6677889900'),
(9, 'Bodega El Progreso', 'logo_el_progreso.png', '7788990011'),
(10, 'Bodega La Esperanza', 'logo_la_esperanza.png', '8899001122');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_producto`
--

CREATE TABLE `detalle_producto` (
  `id` int(11) NOT NULL,
  `Codigo` varchar(20) DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Empaque` int(11) DEFAULT NULL,
  `Peso` decimal(10,3) DEFAULT NULL,
  `Unidades` int(11) DEFAULT NULL,
  `Categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_producto`
--

INSERT INTO `detalle_producto` (`id`, `Codigo`, `Nombre`, `Empaque`, `Peso`, `Unidades`, `Categoria`) VALUES
(1, '7759826002837', 'Angel Cereal Copix Chocolate', 1, 380.000, 1, 1),
(2, '7759826000024', 'Angel Cerea Zuck', 1, 500.000, 1, 1),
(3, '7759826002882', 'Angel Cereal Copix Chocolate', 1, 750.000, 1, 1),
(4, '7751087000393', 'Arica Cocktail De Frutas', 2, 850.000, 1, 2),
(5, '7751158046299', 'Compass Duraznos En Mitades', 2, 820.000, 1, 2),
(6, '7752230004350', 'Universal Gelatina Fresa', 1, 38.000, 1, 3),
(7, '0000009856721', 'Bells Gelatina Fresa', 1, 180.000, 1, 3),
(8, '2200201810004', 'Bells Pudin De Vainilla', 1, 100.000, 1, 3),
(9, '7750885021043', 'Molitalia Fideo Spaghetti', 1, 950.000, 1, 4),
(10, '7750885022767', 'Molitalia Fusilli Tricolor', 1, 235.000, 1, 4),
(11, '7750885022132', 'Marco Polo Tallarin', 1, 450.000, 1, 4),
(12, '2200000179081', 'Bells Bicarbonato De Sodio', 1, 25.000, 1, 5),
(13, '7750811005338', 'Frotello Bicarbonato De Sodi', 1, 10.000, 1, 5),
(14, '7896004009582', 'Pringles Original', 2, 104.000, 1, 1),
(15, '7896004009605', 'Pringles Queso', 2, 109.000, 1, 1),
(16, '7758218195911', 'Santiago Queirolo Sauv Blanc', 3, 750.000, 2, 6),
(17, '7792319008206', 'Finca La Colonia Vino Malbec', 3, 750.000, 2, 6),
(18, '7790314056598', 'Estancia Mendoza Cabernet Malb', 3, 750.000, 2, 6),
(19, '7750533017770', 'Tabernero Blanco De Blancos', 3, 750.000, 2, 6),
(20, '7750670018401', 'Sabor De Oro Gaseosa', 3, 1035.000, 3, 7),
(21, '7750182002394', 'Fanta Kola Inglesa Gaseosa', 3, 3.000, 3, 7),
(22, '7750885022460', '3 Ositos Avena Clasica', 1, 500.000, 1, 1),
(23, '2200203855997', 'Bells Avena', 1, 500.000, 1, 1),
(24, '2200000251343', 'Bells Avena Precocida', 1, 380.000, 1, 1),
(25, '7758574002816', 'Quaker Avena Tradicional Original', 1, 900.000, 1, 25),
(26, '8445290286239', 'Ecco Bebida Instant Cebada', 4, 250.000, 1, 7),
(27, '8445290286291', 'Nescafe Tradicion Cafe Instant', 4, 150.000, 1, 7),
(28, '7751271019545', 'Gloria Leche Uht Entera', 5, 1.000, 3, 8),
(29, '7751271019972', 'Gloria Leche Uht Entera', 5, 1.000, 3, 8),
(30, '7750727003275', 'Bimbo Tortilla Wraps', 1, 6.000, 4, 9),
(31, '7750727558980', 'Bimbo Tortillas', 1, 12.000, 4, 9),
(32, '7750020609549', 'Bells Miel De Abeja', 6, 600.000, 1, 5),
(33, '7751271032315', 'Gloria Griego Yog Batido Maracuy', 1, 800.000, 1, 8),
(34, '7750632005111', 'Danlac Yogurt Griego Natural', 7, 160.000, 1, 8),
(35, '7751271028400', 'Gloria Leche Uht Entera', 1, 900.000, 2, 8),
(36, '7756305000292', 'Vakimu Leche Pasteurizada Choco', 3, 900.000, 2, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empaque`
--

CREATE TABLE `empaque` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empaque`
--

INSERT INTO `empaque` (`codigo`, `nombre`) VALUES
(1, 'Bolsa'),
(2, 'Lata'),
(3, 'Botella'),
(4, 'Doypack'),
(5, 'Caja'),
(6, 'Unidad'),
(7, 'Frasco'),
(8, 'Tetra Pak'),
(9, 'Sobre'),
(10, 'Paquete'),
(11, 'Tarro'),
(12, 'Blíster'),
(13, 'Cartón'),
(14, 'Envase de vidrio'),
(15, 'Envase de plástico'),
(16, 'Bidón'),
(17, 'Saco'),
(18, 'Estuche'),
(19, 'Canasta'),
(20, 'Tubo'),
(21, 'Ampolla'),
(22, 'Jarra'),
(23, 'Cubo'),
(24, 'Bolsa resellable'),
(25, 'Cajita'),
(26, 'Botellón'),
(27, 'Envase biodegradable'),
(28, 'Bolsa de papel'),
(29, 'Blister pack'),
(30, 'Vaso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `Stock` int(11) DEFAULT NULL,
  `FechaVencimiento` date DEFAULT NULL,
  `PrecioCompra` decimal(10,2) DEFAULT NULL,
  `PrecioVenta` decimal(10,2) DEFAULT NULL,
  `Ganancia` decimal(10,2) DEFAULT NULL,
  `detalle_bodega_id` int(11) DEFAULT NULL,
  `detalle_producto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `Stock`, `FechaVencimiento`, `PrecioCompra`, `PrecioVenta`, `Ganancia`, `detalle_bodega_id`, `detalle_producto_id`) VALUES
(1, 22, '2024-06-14', 17.00, 27.00, 10.00, 1, 1),
(2, 30, '2024-07-06', 17.00, 26.00, 9.00, 1, 2),
(3, 48, '2024-05-16', 18.00, 29.00, 11.00, 1, 3),
(4, 49, '2024-05-17', 18.00, 24.00, 6.00, 1, 4),
(5, 43, '2024-06-29', 13.00, 25.00, 12.00, 2, 5),
(6, 47, '2024-07-03', 14.00, 24.00, 10.00, 2, 6),
(7, 50, '2024-05-12', 10.00, 29.00, 19.00, 2, 7),
(8, 43, '2024-07-08', 14.00, 26.00, 12.00, 1, 8),
(9, 29, '2024-05-21', 13.00, 25.00, 12.00, 2, 9),
(10, 16, '2024-06-11', 17.00, 21.00, 4.00, 2, 10),
(11, 28, '2024-06-28', 20.00, 28.00, 8.00, 1, 11),
(12, 33, '2024-05-28', 18.00, 24.00, 6.00, 2, 12),
(13, 24, '2024-06-09', 20.00, 26.00, 6.00, 2, 13),
(14, 36, '2024-06-01', 19.00, 30.00, 11.00, 1, 14),
(15, 40, '2024-06-24', 14.00, 25.00, 11.00, 2, 15),
(16, 11, '2024-07-08', 20.00, 29.00, 9.00, 2, 16),
(17, 50, '2024-06-09', 17.00, 25.00, 8.00, 1, 17),
(18, 44, '2024-06-26', 17.00, 29.00, 12.00, 1, 18),
(19, 37, '2024-05-12', 11.00, 26.00, 15.00, 3, 19),
(20, 33, '2024-07-01', 14.00, 30.00, 16.00, 2, 20),
(21, 32, '2024-06-23', 16.00, 24.00, 8.00, 3, 21),
(22, 20, '2024-05-28', 12.00, 27.00, 15.00, 1, 22),
(23, 11, '2024-05-13', 11.00, 24.00, 13.00, 3, 23),
(24, 41, '2024-07-07', 10.00, 30.00, 20.00, 1, 24),
(25, 29, '2024-06-27', 14.00, 22.00, 8.00, 1, 25),
(26, 41, '2024-07-10', 18.00, 27.00, 9.00, 2, 26),
(27, 11, '2024-06-07', 20.00, 27.00, 7.00, 1, 27),
(28, 46, '2024-06-12', 12.00, 25.00, 13.00, 2, 28),
(29, 47, '2024-05-27', 20.00, 29.00, 9.00, 2, 29),
(30, 21, '2024-06-24', 15.00, 21.00, 6.00, 1, 30),
(31, 16, '2024-05-18', 14.00, 25.00, 11.00, 1, 31),
(33, 34, '2024-07-07', 20.00, 27.00, 7.00, 2, 32),
(34, 20, '2024-06-13', 14.00, 24.00, 10.00, 1, 33),
(35, 16, '2024-06-25', 19.00, 23.00, 4.00, 2, 34),
(36, 37, '2024-07-06', 14.00, 26.00, 12.00, 1, 35),
(37, 10, '2024-07-05', 14.00, 30.00, 16.00, 2, 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE `unidades` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `unidades`
--

INSERT INTO `unidades` (`codigo`, `nombre`) VALUES
(1, 'Gramos'),
(2, 'Mililitros'),
(3, 'Litro'),
(4, 'Unidad'),
(5, 'Kilogramos'),
(6, 'Centímetros cúbicos'),
(7, 'Onzas'),
(8, 'Libras'),
(9, 'Piezas'),
(10, 'Paquete'),
(11, 'Docena'),
(12, 'Metro'),
(13, 'Centímetro'),
(14, 'Milímetro'),
(15, 'Galón'),
(16, 'Barril'),
(17, 'Tonelada'),
(18, 'Cuarto de galón'),
(19, 'Pinta'),
(20, 'Cuarto de libra'),
(21, 'Kilómetro'),
(22, 'Jarra'),
(23, 'Taza'),
(24, 'Cucharada'),
(25, 'Cucharadita'),
(26, 'Pliego'),
(27, 'Caja'),
(28, 'Bolsa'),
(29, 'Frasco'),
(30, 'Lata');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `fotografia` varchar(255) DEFAULT NULL,
  `bodega_detalle_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `cargo`, `nombre`, `fotografia`, `bodega_detalle_id`) VALUES
(1, 'pierre', 'pierre', 'Administrador', 'Pierre Ramos Huaracha', 'img/Perfil.jpg', 1),
(2, 'fiorella', 'fiorella', 'Empleado', 'Fiorella Estrada Vargas', 'img/perfilmeme.jpg', 2),
(3, 'agustin', 'agustin', 'Empleado', 'Agustin Ramos Cornelio', 'img/Agustin.jpg', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `detalle_bodega`
--
ALTER TABLE `detalle_bodega`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_producto`
--
ALTER TABLE `detalle_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Empaque` (`Empaque`),
  ADD KEY `Unidades` (`Unidades`),
  ADD KEY `Categoria` (`Categoria`);

--
-- Indices de la tabla `empaque`
--
ALTER TABLE `empaque`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detalle_bodega` (`detalle_bodega_id`),
  ADD KEY `fk_detalle_producto` (`detalle_producto_id`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bodega_detalle` (`bodega_detalle_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT de la tabla `detalle_producto`
--
ALTER TABLE `detalle_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `detalle_producto`
--
ALTER TABLE `detalle_producto`
  ADD CONSTRAINT `detalle_producto_ibfk_1` FOREIGN KEY (`Empaque`) REFERENCES `empaque` (`codigo`),
  ADD CONSTRAINT `detalle_producto_ibfk_2` FOREIGN KEY (`Unidades`) REFERENCES `unidades` (`codigo`),
  ADD CONSTRAINT `detalle_producto_ibfk_3` FOREIGN KEY (`Categoria`) REFERENCES `categoria` (`codigo`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_detalle_bodega` FOREIGN KEY (`detalle_bodega_id`) REFERENCES `detalle_bodega` (`id`),
  ADD CONSTRAINT `fk_detalle_producto` FOREIGN KEY (`detalle_producto_id`) REFERENCES `detalle_producto` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_bodega_detalle` FOREIGN KEY (`bodega_detalle_id`) REFERENCES `detalle_bodega` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
