-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2022 a las 19:34:12
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db-news`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news_db`
--

CREATE TABLE `news_db` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `cuerpo` text NOT NULL,
  `seccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `news_db`
--

INSERT INTO `news_db` (`id`, `titulo`, `descripcion`, `cuerpo`, `seccion`) VALUES
(18, 'Balón de Oro 2022, en vivo: la elección de los mejores futbolistas de la temporada europea', 'Desde las 15.30, en París, se elegirá a los jugadores más destacados según la revista France Football', 'En esa posición el futbolista seleccionado fue Sebastien Haller. El ex Ajax fue adquirido por Borussia Dortmund en el mercado de pases de verano para reemplazar a Erling Haaland, pero a los pocos días de su arribo se le diagnosticó un tumor testicular. A partir de allí, el club alemán pidió “que se respete la vida privada del jugador y de su familia y que no se pregunte” por esta cuestión, al mismo tiempo que se prometió comunicar más novedades “en cuanto haya más informaciones y luego de las consultas con el jugador”. Haller, de 28 años, fue adquirido en 35 millones de euros, después de anotar 34 goles en 43 partidos en la temporada pasada en Ajax.', 6),
(19, 'Marcelo Gallardo, el constructor: estadísticas demoledoras, números históricos y jugadores que construyeron el legado', 'Desde de su desembarco en 2014 sus logros lo convirtieron en el entrenador más exitoso de la historia millonaria', 'El día que tomó la determinación de aceptar el desafío tenía la ilusión de dejar una huella. Todos piensan en grande, porque cuando se trata de una empresa tan importante no hay lugar para deseos pequeños. Pero ni en sueños podía imaginar que su paso dejaría un legado de esos que se graban a fuego, que su ruta se iba a convertir en la más gloriosa, que se trataría de un ciclo demoledor, histórico, determinante, influyente... En definitiva, un proceso de esos en los que ya nada es igual después de vivirlos. Es que el proyecto Marcelo Gallardo en River será eterno y cada detalle de sus casi ocho años y medios en Núñez permiten dimensionar cuán grande es el tesoro que dejará tras su último baile en el Monumental.', 6),
(20, 'El policía que baleó a Chano, sobreseído por \"legítima defensa\"', 'Facundo Amendolara (29) quedó sobreseído y la mamá del músico anticipó que no apelará la medida.', 'El policía que hirió de un balazo al músico Santiago \"Chano\" Moreno Charpentier en julio de 2021, cuando el músico estaba bajo una crisis psiquiátrica en su casa de Exaltación de la Cruz, fue sobreseído por la Justicia de Zárate-Campana, que consideró que actuó en \"legítima defensa\".  Fuentes judiciales informaron que Julio Andrés Grassi, a cargo del Juzgado de Garantías 2 de Zárate-Campana, dictó el sobreseimiento total del agente de la Bonaerense Facundo Amendolara (29).', 7),
(21, 'Mató a un adolescente de un tiro en la cabeza porque su perro lo mordió', 'El homicidio ocurrió en la ciudad de Santa Fe y la víctima tenía 18 años.', 'Un adolescente de 18 años fue asesinado de un balazo en la cabeza luego de una discusión entre vecinos de un barrio de la ciudad de Santa Fe por la mordedura de un perro, informaron fuentes policiales.  La víctima fue identificada como Axel Eduardo Ferreyra, quien murió este lunes mientras era atendido en el nuevo hospital Iturraspe, donde había sido ingresado el domingo a la madrugada en estado crítico.', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion_db`
--

CREATE TABLE `seccion_db` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `seccion_db`
--

INSERT INTO `seccion_db` (`id`, `nombre`) VALUES
(6, 'Deportes'),
(7, 'Policiales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_db`
--

CREATE TABLE `users_db` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contraseña` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users_db`
--

INSERT INTO `users_db` (`id`, `email`, `contraseña`) VALUES
(2, 'pepitoalonso@hotmail.com', '$2a$12$y/jkxLCnBeFnqCO7okPmnOyTfu1nUkpV2W2ksE1zAQuHTcufh2Pbe');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `news_db`
--
ALTER TABLE `news_db`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seccion` (`seccion`);

--
-- Indices de la tabla `seccion_db`
--
ALTER TABLE `seccion_db`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_db`
--
ALTER TABLE `users_db`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `news_db`
--
ALTER TABLE `news_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `seccion_db`
--
ALTER TABLE `seccion_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `users_db`
--
ALTER TABLE `users_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `news_db`
--
ALTER TABLE `news_db`
  ADD CONSTRAINT `news_db_ibfk_1` FOREIGN KEY (`seccion`) REFERENCES `seccion_db` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
