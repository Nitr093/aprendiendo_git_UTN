-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 24-08-2025 a las 17:28:51
-- Versión del servidor: 9.1.0
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cerveceria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) COLLATE utf8mb3_unicode_ci NOT NULL,
  `subtitulo` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `cuerpo` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `img_id` varchar(250) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(2, 'Provincia de Buenos Aires: quién lidera en cada sección electoral a un mes de las elecciones', 'La consultora Proyección realizó una encuesta de cara a las elecciones legislativas de la provincia de Buenos Aires. Se midió la intención de voto en todas las secciones electorales. El estudio muestra una fuerte polarización entre La Libertad Avanza y el Frente Patria.', 'En términos generales, La Libertad Avanza se impondría en la primera, quinta, sexta y séptima sección, mientras que Fuerza Patria lideraría en la tercera. Las secciones con empate virtual, donde los indecisos podrían inclinar la balanza, son la segunda, cuarta y octava.\r\n\r\nCabe recordar que en estas elecciones, a celebrarse el 7 de septiembre, la Cámara de Diputados renovará 46 bancas (50%) y en el Senado se renovará 23 bancas (también el 50%).', NULL),
(3, 'Fentanilo contaminado (MODIFICANDO TITULO)', '                    Fentanilo contaminado\r\n                    ', '                    Se trata de más de 100 mil ampollas adulteradas con las bacterias Ralstonia pikettii y Klebsiella pneumoniae que fueron secuestradas y las cuales no se le aplicó a ningún paciente. De esta manera, ya ningún hospital tendría el opioide contaminado.\r\n                    ', NULL),
(14, 'Probando otra carga desde usuario AGUSTIN', 'Probando otra carga desde usuario AGUSTIN', 'Probando otra carga desde usuario AGUSTIN', NULL),
(13, 'Probando carga con usuario FLORENCIA', 'Probando carga con usuario FLORENCIA', 'Probando carga con usuario FLORENCIA\r\nSe observa en consola que usuario flavia es 1, agustin es 2, por lo que FLORENCIA deberia figurar 3.', NULL),
(15, 'CARGANDO NUEVAMENTE NOVEDAD NUEVA', 'Subtitulo de nueva novedad', 'PROBANDOOOOOOOOOO', NULL),
(16, 'Prueba subiendo IMG', 'Prueba subiendo IMG', 'Prueba subiendo IMG', 'rozjuoc2ru4agfcpbqf7'),
(20, 'probando nuevamente subir img', 'probando nuevamente subir img', 'probando nuevamente subir img', 'mb2aoajqwe8le9u9bgj3'),
(22, 'probando otra imagen', 'probando otra imagen\r\n                    ', 'probando otra imagen\r\n                    \r\n                    \r\n                    \r\n                    \r\n                    ', 'fkokjdjw0rzlvcqataqy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'flavia', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'agustin', '25f9e794323b453885f5181f1b624d0b'),
(3, 'FLORENCIA', '9a7582cf9868b776efa9c1b5daee1f7d');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
