-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-08-2025 a las 19:18:05
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'La justicia de Estados Unidos define qué pasará en el juicio millonario por YPF', 'Este martes 12 de agosto, la Corte de Apelaciones de Nueva York resolverá si acepta el pedido presentado por la Argentina para se mantenga en suspenso el fallo, o si obliga a la Argentina a depositar ese activo, u otros.', 'Este martes 12 de agosto constituye una fecha que genera grandes expectativas en el caso por el juicio millonario por la expropiación de la petrolera argentina YPF en tanto se espera que la Corte de Apelaciones de Nueva York resuelva si efectivamente mantiene en suspenso la orden de la jueza Loretta Preska de que la Argentina entregue las acciones de la petrolera YPF como pago por la expropiación “mal realizada” por Cristina Kirchner en el 2012, o si obliga a nuestro país a depositar ese activo, u otros.'),
(2, 'Provincia de Buenos Aires: quién lidera en cada sección electoral a un mes de las elecciones', 'La consultora Proyección realizó una encuesta de cara a las elecciones legislativas de la provincia de Buenos Aires. Se midió la intención de voto en todas las secciones electorales. El estudio muestra una fuerte polarización entre La Libertad Avanza y el Frente Patria.', 'En términos generales, La Libertad Avanza se impondría en la primera, quinta, sexta y séptima sección, mientras que Fuerza Patria lideraría en la tercera. Las secciones con empate virtual, donde los indecisos podrían inclinar la balanza, son la segunda, cuarta y octava.\r\n\r\nCabe recordar que en estas elecciones, a celebrarse el 7 de septiembre, la Cámara de Diputados renovará 46 bancas (50%) y en el Senado se renovará 23 bancas (también el 50%).'),
(3, 'Fentanilo contaminado (MODIFICANDO TITULO)', '                    Fentanilo contaminado\r\n                    ', '                    Se trata de más de 100 mil ampollas adulteradas con las bacterias Ralstonia pikettii y Klebsiella pneumoniae que fueron secuestradas y las cuales no se le aplicó a ningún paciente. De esta manera, ya ningún hospital tendría el opioide contaminado.\r\n                    '),
(14, 'Probando otra carga desde usuario AGUSTIN', 'Probando otra carga desde usuario AGUSTIN', 'Probando otra carga desde usuario AGUSTIN'),
(13, 'Probando carga con usuario FLORENCIA', 'Probando carga con usuario FLORENCIA', 'Probando carga con usuario FLORENCIA\r\nSe observa en consola que usuario flavia es 1, agustin es 2, por lo que FLORENCIA deberia figurar 3.'),
(15, 'CARGANDO NUEVAMENTE NOVEDAD NUEVA', 'Subtitulo de nueva novedad', 'PROBANDOOOOOOOOOO');

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
