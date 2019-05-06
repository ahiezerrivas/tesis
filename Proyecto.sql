-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2019 a las 17:47:54
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `idcargos` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Usuarios_idUsuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `idDepartamento` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`idDepartamento`, `Nombre`, `Descripcion`) VALUES
(1, 'ventas', 'vender');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Numerotelefono` varchar(45) NOT NULL,
  `CorreoElectronico` varchar(45) NOT NULL,
  `Contraseña` varchar(45) NOT NULL,
  `Departamento_idDepartamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `Nombre`, `Apellido`, `Numerotelefono`, `CorreoElectronico`, `Contraseña`, `Departamento_idDepartamento`) VALUES
(2, 'ahiezer', 'rivas', '04125686862', 'ahiezerrivas@gmail.com', 'z619477.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videonoencontrados`
--

CREATE TABLE `videonoencontrados` (
  `idVideoNoEncontrados` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Usuarios_idUsuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videosencontrados`
--

CREATE TABLE `videosencontrados` (
  `idvideosencontrados` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Url` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `videosencontrados`
--

INSERT INTO `videosencontrados` (`idvideosencontrados`, `Nombre`, `Url`) VALUES
(1, 'abogado', 'abogado.mp4'),
(2, 'abrazadera', 'abrazadera.mp4'),
(3, 'agua', 'agua.mp4'),
(4, 'alambre', 'alambre.mp4'),
(5, 'alambre', 'alambre.mp4'),
(6, 'albañil', 'albañil.mp4'),
(7, 'alicate', 'alicate.mp4'),
(8, 'amable', 'amable.mp4'),
(9, 'andamio', 'andamio.mp4'),
(10, 'animales', 'animales.mp4'),
(11, 'arandela', 'arandela.mp4'),
(12, 'arcilla', 'arcilla.mp4'),
(13, 'autopista', 'autopista.mp4'),
(14, 'bailarina', 'bailarina.mp4'),
(15, 'barbero', 'barbero.mp4'),
(16, 'barrendero', 'barrendero.mp4'),
(17, 'barrio', 'barrio.mp4'),
(18, 'basura', 'basura.mp4'),
(19, 'biodisel', 'biodisel.mp4'),
(20, 'bombero', 'bombero.mp4'),
(21, 'bosques', 'bosques.mp4'),
(22, 'brocha', 'brocha.mp4'),
(23, 'cabillas', 'cabillas.mp4'),
(24, 'cable', 'cable.mp4'),
(25, 'caja de herramientas', 'caja de herramientas.mp4'),
(26, 'canillas', 'canillas.mp4'),
(27, 'carpintero', 'carpintero.mp4'),
(28, 'carretillas', 'carretillas.mp4'),
(29, 'casa', 'casa.mp4'),
(30, 'cemento blanco', 'cemento blanco.mp4'),
(31, 'cemento gris', 'cemento gris.mp4'),
(32, 'cepillo', 'cepillo.mp4'),
(33, 'cerca', 'cerca.mp4'),
(34, 'cerca', 'cerca.mp4'),
(35, 'cerca', 'cerca.mp4'),
(36, 'chofer', 'chofer.mp4'),
(37, 'chofer', 'chofer.mp4'),
(38, 'cientifico', 'cientifico.mp4'),
(39, 'cincel', 'cincel.mp4'),
(40, 'cinta metrica', 'cinta metrica.mp4'),
(41, 'clavo', 'clavo.mp4'),
(42, 'cocinero', 'cocinero.mp4'),
(43, 'cocinero', 'cocinero.mp4'),
(44, 'codo', 'codo.mp4'),
(45, 'comerciante', 'comerciante.mp4'),
(46, 'comerciante', 'comerciante.mp4'),
(47, 'conservar', 'conservar.mp4'),
(48, 'consumo', 'consumo.mp4'),
(49, 'cuadra', 'cuadra.mp4'),
(50, 'cuerda', 'cuerda.mp4'),
(51, 'destornillador de estrias', 'destornillador de estrias.mp4'),
(52, 'destornillador', 'destornillador.mp4'),
(53, 'ecosistema', 'ecosistema.mp4'),
(54, 'edificio', 'edificio.mp4'),
(55, 'tuerca', 'tuerca.mp4'),
(56, 'tubo', 'tubo.mp4'),
(57, 'tornillo', 'tornillo.mp4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videosvistos`
--

CREATE TABLE `videosvistos` (
  `idVideos_Vistos` int(11) NOT NULL,
  `videosencontrados_idvideosencontrados` int(11) NOT NULL,
  `Usuarios_idUsuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `videosvistos`
--

INSERT INTO `videosvistos` (`idVideos_Vistos`, `videosencontrados_idvideosencontrados`, `Usuarios_idUsuarios`) VALUES
(1, 1, 2),
(2, 1, 2),
(3, 1, 2),
(4, 1, 2),
(5, 1, 2),
(6, 1, 2),
(7, 1, 2),
(8, 1, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`idcargos`),
  ADD KEY `fk_cargos_Usuarios1_idx` (`Usuarios_idUsuarios`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`idDepartamento`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`),
  ADD KEY `fk_Usuarios_Departamento1_idx` (`Departamento_idDepartamento`);

--
-- Indices de la tabla `videonoencontrados`
--
ALTER TABLE `videonoencontrados`
  ADD PRIMARY KEY (`idVideoNoEncontrados`),
  ADD KEY `fk_Videonoencontrados_Usuarios1_idx` (`Usuarios_idUsuarios`);

--
-- Indices de la tabla `videosencontrados`
--
ALTER TABLE `videosencontrados`
  ADD PRIMARY KEY (`idvideosencontrados`);

--
-- Indices de la tabla `videosvistos`
--
ALTER TABLE `videosvistos`
  ADD PRIMARY KEY (`idVideos_Vistos`),
  ADD KEY `fk_Videos Vistos_videosencontrados1_idx` (`videosencontrados_idvideosencontrados`),
  ADD KEY `fk_VideosVistos_Usuarios1_idx` (`Usuarios_idUsuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `idcargos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `idDepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `videonoencontrados`
--
ALTER TABLE `videonoencontrados`
  MODIFY `idVideoNoEncontrados` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `videosencontrados`
--
ALTER TABLE `videosencontrados`
  MODIFY `idvideosencontrados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `videosvistos`
--
ALTER TABLE `videosvistos`
  MODIFY `idVideos_Vistos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD CONSTRAINT `fk_cargos_Usuarios1` FOREIGN KEY (`Usuarios_idUsuarios`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_Usuarios_Departamento1` FOREIGN KEY (`Departamento_idDepartamento`) REFERENCES `departamento` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `videonoencontrados`
--
ALTER TABLE `videonoencontrados`
  ADD CONSTRAINT `fk_Videonoencontrados_Usuarios1` FOREIGN KEY (`Usuarios_idUsuarios`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `videosvistos`
--
ALTER TABLE `videosvistos`
  ADD CONSTRAINT `fk_Videos Vistos_videosencontrados1` FOREIGN KEY (`videosencontrados_idvideosencontrados`) REFERENCES `videosencontrados` (`idvideosencontrados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_VideosVistos_Usuarios1` FOREIGN KEY (`Usuarios_idUsuarios`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
