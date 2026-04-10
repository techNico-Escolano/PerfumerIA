-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-04-2026 a las 02:44:53
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
-- Base de datos: `perfumeria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colecciones`
--

CREATE TABLE `colecciones` (
  `id_coleccion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_perfume` int(11) NOT NULL,
  `estado` enum('Lo tengo','Lo tuve','Lo quiero','Mi firma') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `colecciones`
--

INSERT INTO `colecciones` (`id_coleccion`, `id_usuario`, `id_perfume`, `estado`) VALUES
(1, 2, 1, 'Lo tengo'),
(2, 2, 3, 'Lo quiero'),
(3, 3, 1, 'Lo tuve'),
(4, 3, 14, 'Mi firma');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familias_olfativas`
--

CREATE TABLE `familias_olfativas` (
  `id_famolf` int(11) NOT NULL,
  `salida` varchar(50) NOT NULL,
  `bases` varchar(50) NOT NULL,
  `corazon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `familias_olfativas`
--

INSERT INTO `familias_olfativas` (`id_famolf`, `salida`, `bases`, `corazon`) VALUES
(1, 'Bergamota y Limón', 'Pachulí y Vetiver', 'Rosa y Jazmín'),
(2, 'Mandarina y Pera', 'Vainilla y Praliné', 'Flor de Azahar'),
(3, 'Pimienta Rosa y Pomelo', 'Cuero y Tabaco', 'Canela y Azafrán'),
(4, 'Notas Marinas', 'Musgo de Roble y Cedro', 'Romero y Lavanda'),
(5, 'Manzana Verde y Menta', 'Madera de Cedro y Vainilla', 'Haba Tonka y Geranio'),
(6, 'Aldehídos y Neroli', 'Sándalo y Almizcle', 'Ylang-Ylang y Lirio'),
(7, 'Grosella Negra', 'Vainilla y Notas Amaderadas', 'Fresia y Rosa de Mayo'),
(8, 'Piña y Bergamota', 'Ámbar Gris y Musgo', 'Abedul y Pachulí'),
(9, 'Almendra y Café', 'Cacao y Haba Tonka', 'Nardos y Jazmín'),
(10, 'Lavanda y Limón', 'Cedro y Pachulí', 'Flor de Naranjo'),
(11, 'Pera y Melón', 'Almizcle y Zarzamora', 'Magnolia y Lirio'),
(12, 'Pimienta Negra', 'Incienso y Benjuí', 'Iris y Clavo'),
(13, 'Limón Siciliano', 'Madera de Cedro y Ládano', 'Jazmín de Agua'),
(14, 'Naranja Sanguina', 'Pachulí y Cera de Abejas', 'Miel y Gardenia'),
(15, 'Melocotón y Albaricoque', 'Sándalo y Almizcle Blanco', 'Osmanto'),
(16, 'Toronja y Cilantro', 'Tabaco y Ámbar', 'Cardamomo y Jengibre'),
(17, 'Menta y Lavanda', 'Vainilla y Cedro', 'Canela y Comino'),
(18, 'Frambuesa y Lichi', 'Akigalawood y Benjuí', 'Rosa Damascena'),
(19, 'Hoja de Higuera', 'Madera de Higuera', 'Higo Negro'),
(20, 'Azafrán y Jazmín', 'Resina de Abeto y Cedro', 'Amberwood');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `descripcion` text NOT NULL,
  `origen` varchar(50) NOT NULL,
  `modelos` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `nombre`, `descripcion`, `origen`, `modelos`) VALUES
(1, 'Chanel', 'Elegancia parisina y alta costura.', 'Francia', 'No.5, Bleu, Coco Mademoiselle'),
(2, 'Dior', 'Lujo, sofisticación y vanguardia.', 'Francia', 'Sauvage, J\'adore, Miss Dior'),
(3, 'Tom Ford', 'Perfumería nicho audaz y provocativa.', 'EEUU', 'Black Orchid, Oud Wood, Ombré Leather'),
(4, 'Giorgio Armani', 'Estilo y elegancia atemporal italiana.', 'Italia', 'Acqua di Giò, Sì, Armani Code'),
(5, 'Yves Saint Laurent', 'Juventud, rebeldía y libertad.', 'Francia', 'Black Opium, Y, Libre'),
(6, 'Paco Rabanne', 'Innovación, metal y atrevimiento.', 'España', '1 Million, Invictus, Fame'),
(7, 'Carolina Herrera', 'Elegancia y frescura neoyorquina.', 'EEUU', 'Good Girl, Bad Boy, 212 VIP'),
(8, 'Hugo Boss', 'Estilo clásico, moderno y masculino.', 'Alemania', 'Boss Bottled, The Scent, Hugo'),
(9, 'Versace', 'Glamour, exuberancia y mitología.', 'Italia', 'Eros, Bright Crystal, Dylan Blue'),
(10, 'Calvin Klein', 'Minimalismo, frescura y juventud.', 'EEUU', 'CK One, Euphoria, Defy'),
(11, 'Bvlgari', 'Joyas olfativas inspiradas en gemas.', 'Italia', 'Omnia, Man In Black, Aqva'),
(12, 'Givenchy', 'Aristocracia francesa con un toque rebelde.', 'Francia', 'L\'Interdit, Gentleman, Irresistible'),
(13, 'Lancôme', 'Celebración de la belleza y feminidad.', 'Francia', 'La Vie Est Belle, Idôle, Trésor'),
(14, 'Jean Paul Gaultier', 'Inconformismo, sensualidad e ironía.', 'Francia', 'Le Male, Classique, Scandal'),
(15, 'Prada', 'Vanguardia intelectual y minimalista.', 'Italia', 'Luna Rossa, Paradoxe, Candy'),
(16, 'Hermès', 'Artesanía de lujo y naturaleza.', 'Francia', 'Terre d\'Hermès, Twilly, Un Jardin'),
(17, 'Creed', 'Alta perfumería nicho de tradición familiar.', 'Reino Unido', 'Aventus, Silver Mountain Water'),
(18, 'Jo Malone', 'Elegancia británica y combinaciones únicas.', 'Reino Unido', 'Wood Sage, English Pear, Peony'),
(19, 'Narciso Rodriguez', 'La sensualidad del almizcle puro.', 'EEUU', 'For Her, For Him, Bleu Noir'),
(20, 'Guerlain', 'Historia, majestuosidad y la famosa \"Guerlinade\".', 'Francia', 'Shalimar, Mon Guerlain, Habit Rouge');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfumes`
--

CREATE TABLE `perfumes` (
  `id_perfume` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `precio` float NOT NULL,
  `stock` int(11) NOT NULL,
  `reseña` text DEFAULT NULL,
  `id_famolf` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perfumes`
--

INSERT INTO `perfumes` (`id_perfume`, `nombre`, `id_marca`, `precio`, `stock`, `reseña`, `id_famolf`) VALUES
(1, 'Chanel No. 5', 1, 135.5, 100, 'El clásico atemporal, floral y aldehídico.', 6),
(2, 'Bleu de Chanel', 1, 110, 130, 'Elegancia masculina, amaderado y fresco.', 4),
(3, 'Sauvage', 2, 95, 119, 'Fresco, crudo y noble al mismo tiempo.', 1),
(4, 'J\'adore', 2, 125, 45, 'Feminidad absoluta en un bouquet floral.', 2),
(5, 'Black Orchid', 3, 160, 30, 'Oscuro, seductor y lujoso.', 9),
(6, 'Oud Wood', 3, 220, 15, 'Misterio amaderado, intenso y exótico.', 3),
(7, 'Acqua di Giò', 4, 85, 100, 'La frescura y brisa del mar Mediterráneo.', 4),
(8, 'Sì', 4, 98, 60, 'Elegancia italiana, dulce y sofisticado.', 7),
(9, 'Black Opium', 5, 105, 75, 'Adicción al café y vainilla, muy nocturno.', 9),
(10, 'Libre', 5, 115, 65, 'El grito de libertad, lavanda y azahar.', 10),
(11, '1 Million', 6, 80, 150, 'El lingote de oro, especiado y llamativo.', 3),
(12, 'Good Girl', 7, 120, 90, 'Sensualidad en frasco de tacón, haba tonka.', 2),
(13, 'Boss Bottled', 8, 75, 110, 'El hombre de éxito, manzana y canela.', 5),
(14, 'Eros', 9, 85, 85, 'Pasión mitológica, menta y vainilla.', 5),
(15, 'CK One', 10, 45, 200, 'Revolución unisex, fresco y cítrico.', 1),
(16, 'Omnia Crystalline', 11, 88, 40, 'Pureza de la flor de loto y bambú.', 13),
(17, 'L\'Interdit', 12, 112, 55, 'Atrévete a lo prohibido, nardos y vetiver.', 2),
(18, 'La Vie Est Belle', 13, 99, 130, 'La felicidad embotellada, iris y praliné.', 7),
(19, 'Le Male', 14, 78, 95, 'El marinero seductor, lavanda y menta.', 17),
(20, 'Prada L\'Homme', 15, 105, 51, 'Limpieza y sofisticación absoluta, iris.', 12),
(21, 'Terre d\'Hermès', 16, 118, 70, 'Tierra y cielo, naranja y vetiver.', 16),
(22, 'Aventus', 17, 295, 20, 'El rey de los perfumes nicho, piña y abedul.', 8),
(23, 'Wood Sage & Sea Salt', 18, 130, 35, 'Paseo por el acantilado británico.', 4),
(24, 'For Her', 19, 102, 60, 'El almizcle más puro y elegante.', 6),
(25, 'Shalimar', 20, 140, 25, 'La primera fragancia oriental de la historia.', 12),
(28, 'Poción Mágica IA', 1, 89.5, 100, 'El primer perfume creado directamente desde el backend.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resenas`
--

CREATE TABLE `resenas` (
  `id_resena` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_perfume` int(11) NOT NULL,
  `calificacion` int(11) DEFAULT NULL CHECK (`calificacion` >= 1 and `calificacion` <= 5),
  `comentario` text NOT NULL,
  `fecha_publicacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `resenas`
--

INSERT INTO `resenas` (`id_resena`, `id_usuario`, `id_perfume`, `calificacion`, `comentario`, `fecha_publicacion`) VALUES
(1, 2, 1, 5, 'Un clásico absoluto. Huele a elegancia pura, aunque puede ser un poco pesado en verano.', '2026-03-30 07:46:07'),
(2, 3, 1, 3, 'Reconozco su historia, pero en mi piel huele demasiado a jabón antiguo.', '2026-03-30 07:46:07'),
(3, 2, 3, 4, 'Rendimiento bestial. Te lo echas por la mañana y por la noche sigue ahí.', '2026-03-30 07:46:07'),
(4, 2, 3, 1, 'Me decepcionó muchísimo, huele demasiado fuerte para mi gusto y marea.', '2026-04-06 15:21:36'),
(5, 2, 2, 4, '¡Espectacular! Compré Bleu de Chanel a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(6, 2, 4, 4, '¡Espectacular! Compré J\'adore a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(7, 2, 5, 4, '¡Espectacular! Compré Black Orchid a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(8, 2, 6, 4, '¡Espectacular! Compré Oud Wood a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(9, 2, 7, 4, '¡Espectacular! Compré Acqua di Giò a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(10, 2, 8, 4, '¡Espectacular! Compré Sì a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(11, 2, 9, 4, '¡Espectacular! Compré Black Opium a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(12, 2, 10, 4, '¡Espectacular! Compré Libre a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(13, 2, 11, 4, '¡Espectacular! Compré 1 Million a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(14, 2, 12, 4, '¡Espectacular! Compré Good Girl a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(15, 2, 13, 4, '¡Espectacular! Compré Boss Bottled a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(16, 2, 14, 4, '¡Espectacular! Compré Eros a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(17, 2, 15, 4, '¡Espectacular! Compré CK One a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(18, 2, 16, 4, '¡Espectacular! Compré Omnia Crystalline a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(19, 2, 17, 4, '¡Espectacular! Compré L\'Interdit a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(20, 2, 18, 4, '¡Espectacular! Compré La Vie Est Belle a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(21, 2, 19, 4, '¡Espectacular! Compré Le Male a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(22, 2, 20, 4, '¡Espectacular! Compré Prada L\'Homme a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(23, 2, 21, 4, '¡Espectacular! Compré Terre d\'Hermès a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(24, 2, 22, 4, '¡Espectacular! Compré Aventus a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(25, 2, 23, 4, '¡Espectacular! Compré Wood Sage & Sea Salt a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(26, 2, 24, 4, '¡Espectacular! Compré For Her a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(27, 2, 25, 4, '¡Espectacular! Compré Shalimar a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(28, 2, 28, 4, '¡Espectacular! Compré Poción Mágica IA a ciegas y ha sido todo un acierto. Tiene una estela increíble.', '2026-04-06 15:31:00'),
(36, 3, 2, 5, 'Una auténtica obra de arte olfativa. Se ha convertido en mi firma personal, 100% recomendado.', '2026-04-06 15:31:00'),
(37, 3, 28, 5, 'Una auténtica obra de arte olfativa. Se ha convertido en mi firma personal, 100% recomendado.', '2026-04-06 15:31:00'),
(38, 3, 4, 5, 'Una auténtica obra de arte olfativa. Se ha convertido en mi firma personal, 100% recomendado.', '2026-04-06 15:31:00'),
(39, 3, 6, 5, 'Una auténtica obra de arte olfativa. Se ha convertido en mi firma personal, 100% recomendado.', '2026-04-06 15:31:00'),
(40, 3, 8, 5, 'Una auténtica obra de arte olfativa. Se ha convertido en mi firma personal, 100% recomendado.', '2026-04-06 15:31:00'),
(41, 3, 10, 5, 'Una auténtica obra de arte olfativa. Se ha convertido en mi firma personal, 100% recomendado.', '2026-04-06 15:31:00'),
(42, 3, 12, 5, 'Una auténtica obra de arte olfativa. Se ha convertido en mi firma personal, 100% recomendado.', '2026-04-06 15:31:00'),
(43, 3, 14, 5, 'Una auténtica obra de arte olfativa. Se ha convertido en mi firma personal, 100% recomendado.', '2026-04-06 15:31:00'),
(44, 3, 16, 5, 'Una auténtica obra de arte olfativa. Se ha convertido en mi firma personal, 100% recomendado.', '2026-04-06 15:31:00'),
(45, 3, 18, 5, 'Una auténtica obra de arte olfativa. Se ha convertido en mi firma personal, 100% recomendado.', '2026-04-06 15:31:00'),
(46, 3, 20, 5, 'Una auténtica obra de arte olfativa. Se ha convertido en mi firma personal, 100% recomendado.', '2026-04-06 15:31:00'),
(47, 3, 22, 5, 'Una auténtica obra de arte olfativa. Se ha convertido en mi firma personal, 100% recomendado.', '2026-04-06 15:31:00'),
(48, 3, 24, 5, 'Una auténtica obra de arte olfativa. Se ha convertido en mi firma personal, 100% recomendado.', '2026-04-06 15:31:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `rol` enum('admin','miembro') DEFAULT 'miembro',
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `username`, `email`, `password_hash`, `rol`, `fecha_registro`) VALUES
(1, 'PerfumerIA_Admin', 'admin@perfumeria.com', '123456', 'admin', '2026-03-30 07:46:07'),
(2, 'ScentLover99', 'scent@gmail.com', '123456', 'miembro', '2026-03-30 07:46:07'),
(3, 'NoseBlind', 'nose@hotmail.com', '123456', 'miembro', '2026-03-30 07:46:07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colecciones`
--
ALTER TABLE `colecciones`
  ADD PRIMARY KEY (`id_coleccion`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`,`id_perfume`),
  ADD KEY `id_perfume` (`id_perfume`);

--
-- Indices de la tabla `familias_olfativas`
--
ALTER TABLE `familias_olfativas`
  ADD PRIMARY KEY (`id_famolf`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `perfumes`
--
ALTER TABLE `perfumes`
  ADD PRIMARY KEY (`id_perfume`),
  ADD KEY `id_marca` (`id_marca`),
  ADD KEY `id_famolf` (`id_famolf`);

--
-- Indices de la tabla `resenas`
--
ALTER TABLE `resenas`
  ADD PRIMARY KEY (`id_resena`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_perfume` (`id_perfume`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `colecciones`
--
ALTER TABLE `colecciones`
  MODIFY `id_coleccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `familias_olfativas`
--
ALTER TABLE `familias_olfativas`
  MODIFY `id_famolf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `perfumes`
--
ALTER TABLE `perfumes`
  MODIFY `id_perfume` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `resenas`
--
ALTER TABLE `resenas`
  MODIFY `id_resena` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `colecciones`
--
ALTER TABLE `colecciones`
  ADD CONSTRAINT `colecciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE,
  ADD CONSTRAINT `colecciones_ibfk_2` FOREIGN KEY (`id_perfume`) REFERENCES `perfumes` (`id_perfume`) ON DELETE CASCADE;

--
-- Filtros para la tabla `perfumes`
--
ALTER TABLE `perfumes`
  ADD CONSTRAINT `perfumes_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`),
  ADD CONSTRAINT `perfumes_ibfk_2` FOREIGN KEY (`id_famolf`) REFERENCES `familias_olfativas` (`id_famolf`);

--
-- Filtros para la tabla `resenas`
--
ALTER TABLE `resenas`
  ADD CONSTRAINT `resenas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE,
  ADD CONSTRAINT `resenas_ibfk_2` FOREIGN KEY (`id_perfume`) REFERENCES `perfumes` (`id_perfume`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
