-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2024 a las 00:54:08
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tecmarket`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `trabajador` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `id_producto`, `cantidad`, `trabajador`) VALUES
(1, 1, 5, 'RPierre'),
(2, 2, 2, '1'),
(4, 1, 1, 'RPierre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `detalle_bodega` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`codigo`, `nombre`, `detalle_bodega`) VALUES
(1, 'Cereales', NULL),
(2, 'Frutas enlatadas', NULL),
(3, 'Postres', NULL),
(4, 'Pastas', NULL),
(5, 'Condimentos', NULL),
(6, 'Vinos y licores', NULL),
(7, 'Bebidas no alcohólicas', NULL),
(8, 'Productos lácteos', NULL),
(9, 'Productos de panadería', NULL),
(10, 'Snacks', NULL),
(11, 'Carnes y embutidos', NULL),
(12, 'Mariscos', NULL),
(13, 'Sopas y caldos', NULL),
(14, 'Aceites y grasas', NULL),
(15, 'Comidas preparadas', NULL),
(16, 'Especias', NULL),
(17, 'Verduras enlatadas', NULL),
(18, 'Productos congelados', NULL),
(19, 'Comida para mascotas', NULL),
(20, 'Pan', NULL),
(21, 'Aguas minerales', NULL),
(22, 'Café y té', NULL),
(23, 'Salsas', NULL),
(24, 'Frutas frescas', NULL),
(25, 'Verduras frescas', NULL),
(26, 'Huevos', NULL),
(27, 'Cereales de desayuno', NULL),
(28, 'Conservas', NULL),
(29, 'Harinas y masas', NULL),
(30, 'Chocolates y dulces', NULL),
(31, 'Arroz y legumbres', NULL),
(32, 'Miel y mermeladas', NULL),
(33, 'Bebidas artesanales', NULL),
(34, 'Productos locales', NULL),
(35, 'Verduras orgánicas', NULL),
(36, 'Frutas secas', NULL),
(37, 'Hierbas medicinales', NULL),
(38, 'Productos de limpieza', NULL),
(39, 'Abarrotes', NULL),
(40, 'Productos sin azúcar', NULL),
(41, 'Cremas y mantequillas', NULL),
(42, 'Galletas y bizcochos', NULL),
(43, 'Productos integrales', NULL),
(44, 'Embutidos caseros', NULL),
(45, 'Salsas caseras', NULL),
(46, 'Conservas artesanales', NULL),
(47, 'Quesos artesanales', NULL),
(48, 'Yogures caseros', NULL),
(49, 'Bebidas fermentadas', NULL),
(50, 'Productos gourmet', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_bodega`
--

CREATE TABLE `detalle_bodega` (
  `id` int(11) NOT NULL,
  `ruc` varchar(255) DEFAULT NULL,
  `logo_bodega` varchar(255) DEFAULT NULL,
  `nombre_bodega` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_bodega`
--

INSERT INTO `detalle_bodega` (`id`, `ruc`, `logo_bodega`, `nombre_bodega`) VALUES
(1, '1234567890', 'logo_buen_sabor.png', 'Bodega El Buen Sabor'),
(2, '0987654321', 'logo_la_esquina.png', 'Bodega La Esquina'),
(3, '1122334455', 'logo_san_juan.png', 'Bodega San Juan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empaque`
--

CREATE TABLE `empaque` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `detalle_bodega` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empaque`
--

INSERT INTO `empaque` (`codigo`, `nombre`, `detalle_bodega`) VALUES
(1, 'Bolsa', NULL),
(2, 'Lata', NULL),
(3, 'Botella', NULL),
(4, 'Doypack', NULL),
(5, 'Caja', NULL),
(6, 'Unidad', NULL),
(7, 'Frasco', NULL),
(8, 'Tetra Pak', NULL),
(9, 'Sobre', NULL),
(10, 'Paquete', NULL),
(11, 'Tarro', NULL),
(12, 'Blíster', NULL),
(13, 'Cartón', NULL),
(14, 'Envase de vidrio', NULL),
(15, 'Envase de plástico', NULL),
(16, 'Bidón', NULL),
(17, 'Saco', NULL),
(18, 'Estuche', NULL),
(19, 'Canasta', NULL),
(20, 'Tubo', NULL),
(21, 'Ampolla', NULL),
(22, 'Jarra', NULL),
(23, 'Cubo', NULL),
(24, 'Bolsa resellable', NULL),
(25, 'Cajita', NULL),
(26, 'Botellón', NULL),
(27, 'Envase biodegradable', NULL),
(28, 'Bolsa de papel', NULL),
(29, 'Blister pack', NULL),
(30, 'Vaso', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `detalle_bodega` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`codigo`, `nombre`, `detalle_bodega`) VALUES
(1, 'Angel', NULL),
(2, 'Arica', NULL),
(3, 'Compass', NULL),
(4, 'Universal', NULL),
(5, 'Bells', NULL),
(6, 'Molitalia', NULL),
(7, 'Marco Polo', NULL),
(8, 'Frotello', NULL),
(9, 'Pringles', NULL),
(10, 'Santiago Queirolo', NULL),
(11, 'Finca La Colonia', NULL),
(12, 'Estancia Mendoza', NULL),
(13, 'Tabernero', NULL),
(14, 'Sabor De Oro', NULL),
(15, 'Fanta', NULL),
(16, '3 Ositos', NULL),
(17, 'Quaker', NULL),
(18, 'Ecco', NULL),
(19, 'Nescafe', NULL),
(20, 'Gloria', NULL),
(21, 'Bimbo', NULL),
(22, 'Danlac', NULL),
(23, 'Vakimu', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moneda`
--

CREATE TABLE `moneda` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `detalle_bodega` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `Codigo_producto` varchar(255) DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL,
  `Existencia_minima` int(11) DEFAULT NULL,
  `Precio_compra` decimal(10,2) DEFAULT NULL,
  `Precio_venta` decimal(10,2) DEFAULT NULL,
  `Precio_venta_mayor` decimal(10,2) DEFAULT NULL,
  `Ganancia` decimal(10,2) DEFAULT NULL,
  `Moneda_id` int(11) DEFAULT NULL,
  `Fecha_lote` date DEFAULT NULL,
  `Fecha_vencimiento` date DEFAULT NULL,
  `Categoria_id` int(11) DEFAULT NULL,
  `Marca_id` int(11) DEFAULT NULL,
  `Empaque_id` int(11) DEFAULT NULL,
  `Peso` decimal(10,2) DEFAULT NULL,
  `Unidades_id` int(11) DEFAULT NULL,
  `Proveedor_id` int(11) DEFAULT NULL,
  `detalle_bodega_id` int(11) DEFAULT NULL,
  `Imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `Codigo_producto`, `Nombre`, `Stock`, `Existencia_minima`, `Precio_compra`, `Precio_venta`, `Precio_venta_mayor`, `Ganancia`, `Moneda_id`, `Fecha_lote`, `Fecha_vencimiento`, `Categoria_id`, `Marca_id`, `Empaque_id`, `Peso`, `Unidades_id`, `Proveedor_id`, `detalle_bodega_id`, `Imagen`) VALUES
(1, '7759826002837', 'Angel Cereal Copix Chocolate', 100, NULL, NULL, 12.00, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 380.00, 1, NULL, 1, NULL),
(2, '7759826000024', 'Angel Cerea Zuck', 100, NULL, NULL, 12.00, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 500.00, 1, NULL, 1, NULL),
(3, '7759826002882', 'Angel Cereal Copix Chocolate', 100, NULL, NULL, 12.00, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 750.00, 1, NULL, NULL, NULL),
(4, '7751087000393', 'Arica Cocktail De Frutas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 2, 850.00, 1, NULL, 1, NULL),
(5, '7751158046299', 'Compass Duraznos En Mitades', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 2, 820.00, 1, NULL, NULL, NULL),
(6, '7752230004350', 'Universal Gelatina Fresa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1, 38.00, 1, NULL, NULL, NULL),
(7, '0000009856721', 'Bells Gelatina Fresa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1, 180.00, 1, NULL, NULL, NULL),
(8, '2200201810004', 'Bells Pudin De Vainilla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1, 100.00, 1, NULL, NULL, NULL),
(9, '7750885021043', 'Molitalia Fideo Spaghetti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 1, 950.00, 1, NULL, NULL, NULL),
(10, '7750885022767', 'Molitalia Fusilli Tricolor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 1, 235.00, 1, NULL, NULL, NULL),
(11, '7750885022132', 'Marco Polo Tallarin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 1, 450.00, 1, NULL, NULL, NULL),
(12, '2200000179081', 'Bells Bicarbonato De Sodio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 1, 25.00, 1, NULL, NULL, NULL),
(13, '7750811005338', 'Frotello Bicarbonato De Sodi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 1, 10.00, 1, NULL, NULL, NULL),
(14, '7896004009582', 'Pringles Original', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, 104.00, 1, NULL, NULL, NULL),
(15, '7896004009605', 'Pringles Queso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, 109.00, 1, NULL, NULL, NULL),
(16, '7758218195911', 'Santiago Queirolo Sauv Blanc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, 3, 750.00, 2, NULL, NULL, NULL),
(17, '7792319008206', 'Finca La Colonia Vino Malbec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, 3, 750.00, 2, NULL, NULL, NULL),
(18, '7790314056598', 'Estancia Mendoza Cabernet Malb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, 3, 750.00, 2, NULL, NULL, NULL),
(19, '7750533017770', 'Tabernero Blanco De Blancos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, 3, 750.00, 2, NULL, NULL, NULL),
(20, '7750670018401', 'Sabor De Oro Gaseosa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, 3, 1035.00, 3, NULL, NULL, NULL),
(21, '7750182002394', 'Fanta Kola Inglesa Gaseosa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, 3, 3.00, 3, NULL, NULL, NULL),
(22, '7750885022460', '3 Ositos Avena Clasica', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 500.00, 1, NULL, NULL, NULL),
(23, '2200203855997', 'Bells Avena', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 500.00, 1, NULL, NULL, NULL),
(24, '2200000251343', 'Bells Avena Precocida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 380.00, 1, NULL, NULL, NULL),
(25, '7758574002816', 'Quaker Avena Tradicional Original', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, NULL, 1, 900.00, 1, NULL, NULL, NULL),
(26, '8445290286239', 'Ecco Bebida Instant Cebada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, 4, 250.00, 1, NULL, NULL, NULL),
(27, '8445290286291', 'Nescafe Tradicion Cafe Instant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, 4, 150.00, 1, NULL, NULL, NULL),
(28, '7751271019545', 'Gloria Leche Uht Entera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, 5, 1.00, 3, NULL, NULL, NULL),
(29, '7751271019972', 'Gloria Leche Uht Entera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, 5, 1.00, 3, NULL, NULL, NULL),
(30, '7750727003275', 'Bimbo Tortilla Wraps', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, 1, 6.00, 4, NULL, NULL, NULL),
(31, '7750727558980', 'Bimbo Tortillas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, 1, 12.00, 4, NULL, NULL, NULL),
(32, '7750020609549', 'Bells Miel De Abeja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 6, 600.00, 1, NULL, NULL, NULL),
(33, '7751271032315', 'Gloria Griego Yog Batido Maracuy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, 1, 800.00, 1, NULL, NULL, NULL),
(34, '7750632005111', 'Danlac Yogurt Griego Natural', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, 7, 160.00, 1, NULL, NULL, NULL),
(35, '7751271028400', 'Gloria Leche Uht Entera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, 1, 900.00, 2, NULL, NULL, NULL),
(36, '7756305000292', 'Vakimu Leche Pasteurizada Choco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, 3, 900.00, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `detalle_bodega` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repositorio`
--

CREATE TABLE `repositorio` (
  `id` int(11) NOT NULL,
  `Codigo_producto` varchar(255) DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Marca_id` int(11) DEFAULT NULL,
  `Empaque_id` int(11) DEFAULT NULL,
  `Peso` decimal(10,2) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `repositorio`
--

INSERT INTO `repositorio` (`id`, `Codigo_producto`, `Nombre`, `Marca_id`, `Empaque_id`, `Peso`, `imagen`) VALUES
(1, '7759826002837', 'Angel Cereal Copix Chocolate', 1, 1, 380.00, NULL),
(2, '7759826000024', 'Angel Cerea Zuck', 1, 1, 500.00, NULL),
(3, '7759826002882', 'Angel Cereal Copix Chocolate', 1, 1, 750.00, NULL),
(4, '7751087000393', 'Arica Cocktail De Frutas', 2, 2, 850.00, NULL),
(5, '7751158046299', 'Compass Duraznos En Mitades', 3, 2, 820.00, NULL),
(6, '7752230004350', 'Universal Gelatina Fresa', 4, 1, 38.00, NULL),
(7, '0000009856721', 'Bells Gelatina Fresa', 5, 1, 180.00, NULL),
(8, '2200201810004', 'Bells Pudin De Vainilla', 5, 1, 100.00, NULL),
(9, '7750885021043', 'Molitalia Fideo Spaghetti', 6, 1, 950.00, NULL),
(10, '7750885022767', 'Molitalia Fusilli Tricolor', 6, 1, 235.00, NULL),
(11, '7750885022132', 'Marco Polo Tallarin', 7, 1, 450.00, NULL),
(12, '2200000179081', 'Bells Bicarbonato De Sodio', 5, 1, 25.00, NULL),
(13, '7750811005338', 'Frotello Bicarbonato De Sodi', 8, 1, 10.00, NULL),
(14, '7896004009582', 'Pringles Original', 9, 2, 104.00, NULL),
(15, '7896004009605', 'Pringles Queso', 9, 2, 109.00, NULL),
(16, '7758218195911', 'Santiago Queirolo Sauv Blanc', 10, 3, 750.00, NULL),
(17, '7792319008206', 'Finca La Colonia Vino Malbec', 11, 3, 750.00, NULL),
(18, '7790314056598', 'Estancia Mendoza Cabernet Malb', 12, 3, 750.00, NULL),
(19, '7750533017770', 'Tabernero Blanco De Blancos', 13, 3, 750.00, NULL),
(20, '7750670018401', 'Sabor De Oro Gaseosa', 14, 3, 1035.00, NULL),
(21, '7750182002394', 'Fanta Kola Inglesa Gaseosa', 15, 3, 3.00, NULL),
(22, '7750885022460', '3 Ositos Avena Clasica', 16, 1, 500.00, NULL),
(23, '2200203855997', 'Bells Avena', 5, 1, 500.00, NULL),
(24, '2200000251343', 'Bells Avena Precocida', 5, 1, 380.00, NULL),
(25, '7758574002816', 'Quaker Avena Tradicional Original', 17, 1, 900.00, NULL),
(26, '8445290286239', 'Ecco Bebida Instant Cebada', 18, 4, 250.00, NULL),
(27, '8445290286291', 'Nescafe Tradicion Cafe Instant', 19, 4, 150.00, NULL),
(28, '7751271019545', 'Gloria Leche Uht Entera', 20, 5, 1.00, NULL),
(29, '7751271019972', 'Gloria Leche Uht Entera', 20, 5, 1.00, NULL),
(30, '7750727003275', 'Bimbo Tortilla Wraps', 21, 1, 6.00, NULL),
(31, '7750727558980', 'Bimbo Tortillas', 21, 1, 12.00, NULL),
(32, '7750020609549', 'Bells Miel De Abeja', 5, 6, 600.00, NULL),
(33, '7751271032315', 'Gloria Griego Yog Batido Maracuy', 20, 1, 800.00, NULL),
(34, '7750632005111', 'Danlac Yogurt Griego Natural', 22, 7, 160.00, NULL),
(35, '7751271028400', 'Gloria Leche Uht Entera', 20, 1, 900.00, NULL),
(36, '7756305000292', 'Vakimu Leche Pasteurizada Choco', 23, 3, 900.00, NULL);

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
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `fotografia` varchar(255) DEFAULT NULL,
  `bodega_detalle_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `cargo`, `nombre`, `fotografia`, `bodega_detalle_id`) VALUES
(1, 'RPierre', 'RPierre', 'Administrador', 'Pierre Agustin Ramos Huaracha', '../img/Perfil.jpg', 1),
(2, 'fiorella', 'fiorella', 'Administrador', 'Fiorella Estrada Vargas', '../img/perfilmeme.jpg', 2),
(4, 'RLuiggi', 'RLuiggi', 'Administrador', 'Pierre Luiggi Ramirez', '../img/Invitado.jpg', 1),
(5, 'SLindbergh', 'SLindbergh', 'Administrador', 'Lindbergh Danilo Santa Cruz Ramos', '../img/Invitado.jpg', 1),
(6, 'invitado3', 'invitado3', 'Empleado', 'invitado3', '../img/Invitado.jpg', 3);

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
-- Indices de la tabla `empaque`
--
ALTER TABLE `empaque`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `moneda`
--
ALTER TABLE `moneda`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Unidades_id` (`Unidades_id`),
  ADD KEY `Proveedor_id` (`Proveedor_id`),
  ADD KEY `Empaque_id` (`Empaque_id`),
  ADD KEY `Categoria_id` (`Categoria_id`),
  ADD KEY `Moneda_id` (`Moneda_id`),
  ADD KEY `detalle_bodega_id` (`detalle_bodega_id`),
  ADD KEY `Marca_id` (`Marca_id`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `repositorio`
--
ALTER TABLE `repositorio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Empaque_id` (`Empaque_id`),
  ADD KEY `Marca_id` (`Marca_id`);

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
  ADD KEY `bodega_detalle_id` (`bodega_detalle_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `detalle_bodega`
--
ALTER TABLE `detalle_bodega`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empaque`
--
ALTER TABLE `empaque`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `moneda`
--
ALTER TABLE `moneda`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `repositorio`
--
ALTER TABLE `repositorio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `unidades`
--
ALTER TABLE `unidades`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`Unidades_id`) REFERENCES `unidades` (`codigo`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`Proveedor_id`) REFERENCES `proveedor` (`codigo`),
  ADD CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`Empaque_id`) REFERENCES `empaque` (`codigo`),
  ADD CONSTRAINT `productos_ibfk_4` FOREIGN KEY (`Categoria_id`) REFERENCES `categoria` (`codigo`),
  ADD CONSTRAINT `productos_ibfk_5` FOREIGN KEY (`Moneda_id`) REFERENCES `moneda` (`codigo`),
  ADD CONSTRAINT `productos_ibfk_6` FOREIGN KEY (`detalle_bodega_id`) REFERENCES `detalle_bodega` (`id`),
  ADD CONSTRAINT `productos_ibfk_7` FOREIGN KEY (`Marca_id`) REFERENCES `marca` (`codigo`);

--
-- Filtros para la tabla `repositorio`
--
ALTER TABLE `repositorio`
  ADD CONSTRAINT `repositorio_ibfk_1` FOREIGN KEY (`Empaque_id`) REFERENCES `empaque` (`codigo`),
  ADD CONSTRAINT `repositorio_ibfk_2` FOREIGN KEY (`Marca_id`) REFERENCES `marca` (`codigo`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`bodega_detalle_id`) REFERENCES `detalle_bodega` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
