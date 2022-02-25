-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2022 a las 03:03:43
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `latiendita`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `idadministradores` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidopaterno` varchar(45) NOT NULL,
  `apellidomaterno` varchar(45) DEFAULT NULL,
  `fotoperfil` varchar(100) DEFAULT NULL,
  `fechanacimiento` date NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `direccion` varchar(250) NOT NULL,
  `codigopostal` char(5) NOT NULL,
  `telcelular` varchar(20) NOT NULL,
  `telcasa` varchar(20) DEFAULT NULL,
  `tipousuario` char(4) NOT NULL COMMENT 'SA = Superadministrador\nA = Administrador',
  `email` varchar(150) NOT NULL,
  `passw` varchar(270) NOT NULL,
  `nombreusuario` varchar(45) NOT NULL,
  `fecharegistro` datetime NOT NULL,
  `fechaactualizacion` datetime DEFAULT NULL,
  `estado` char(1) NOT NULL COMMENT 'E = Eliminado\nA = Activo',
  `idusuarioregistro` int(11) NOT NULL,
  `idusuarioelimino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`idadministradores`, `nombre`, `apellidopaterno`, `apellidomaterno`, `fotoperfil`, `fechanacimiento`, `edad`, `direccion`, `codigopostal`, `telcelular`, `telcasa`, `tipousuario`, `email`, `passw`, `nombreusuario`, `fecharegistro`, `fechaactualizacion`, `estado`, `idusuarioregistro`, `idusuarioelimino`) VALUES
(1, 'Super', 'Administrador', 'Administrador', NULL, '2022-02-23', NULL, 'Colonia cloud 0101', '01011', '0101010101', '0101010100', 'SA', '127.0.0.1@gmail.com', '$2y$10$rePjS8ou8auTYanPfWcq6.nlNN/aGATUd4WZZ8Idi.6bAK06Luj/u', 'superadmin', '2022-02-24 02:40:55', '2022-02-25 01:39:17', 'A', 1, NULL),
(14, 'Ramiro', 'Gonzales', 'Perez', NULL, '1984-10-24', NULL, 'Col. conocida 2', '10101', '7531110111', NULL, 'SA', 'ramirto@gmail.com', '', '', '2022-02-24 04:23:52', '2022-02-24 04:12:55', 'A', 1, 1),
(15, 'Ofelia', 'Cruz', 'Chavez', NULL, '1969-10-28', NULL, 'Col. conocida 3', '11111', '7531111111', '7531111110', 'SA', 'ofe@gmail.com', '', '', '2022-02-24 02:43:05', '2022-02-24 04:13:40', 'A', 1, 1),
(16, 'Briseyda', 'Martínez', 'Cruz', NULL, '1990-12-14', NULL, 'Col. lomas del mar', '11111', '7411011111', '7411010011', 'A', 'bris@hotmail.com', '', '', '2022-02-24 05:03:44', '2022-02-24 05:03:58', 'E', 1, 1),
(17, 'Juan', 'Perez', 'Gomez', NULL, '1785-10-25', NULL, 'Col. lomas del mar', '11100', '7141111111', NULL, 'A', 'juan@gmail.com', '', '', '2022-02-24 05:04:58', NULL, 'A', 1, NULL),
(18, 'Ramón', 'Martínez', '', NULL, '1993-11-28', NULL, 'Col. lomas del mar', '00001', '7531011111', NULL, 'A', 'ramcruz1993@gmail.com', '$2y$10$7nhJHXsDYLstV2etBXmg/.U57ZLcDm9mXmwExWBYR4vjcIUArXSC6', 'ramon', '2022-02-24 06:59:48', '2022-02-25 01:21:14', 'A', 1, NULL),
(19, 'Gerardo', 'Gomez', 'López', NULL, '1968-10-25', NULL, 'Col. lomas del mar 23', '10110', '7521011111', '7521011110', 'A', 'gerado@outlook.com', '$2y$10$YouWb6exHHedEODpGTeJ9OT3CjismI0XFHNgfa2RcIZJmyYrq.uDe', 'gerardo', '2022-02-25 00:51:36', '2022-02-25 01:14:29', 'A', 1, NULL),
(21, 'Daniel', 'Huerta', '', NULL, '1987-10-25', NULL, 'Col. nueva vista 12', '44444', '7541110111', NULL, 'SA', 'daniel@gmail.com', '$2y$10$NvY6afHRf5wHE2L6/NdvXux84mzCxevnd.yzulVU.uwE/DG9C5F3.', 'daniel', '2022-02-25 01:19:50', '2022-02-25 01:41:20', 'A', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores_permisos`
--

CREATE TABLE `administradores_permisos` (
  `idadministradoresfk` int(11) NOT NULL,
  `idpermisosfk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idcategorias` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `fecharegistro` datetime NOT NULL,
  `fechaactualizacion` datetime DEFAULT NULL,
  `estado` char(1) NOT NULL,
  `idusuarioregistro` int(11) NOT NULL,
  `idusuarioelimino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idcategorias`, `nombre`, `descripcion`, `fecharegistro`, `fechaactualizacion`, `estado`, `idusuarioregistro`, `idusuarioelimino`) VALUES
(2, 'Lacteos', 'Encuentre una gran variedad de lácteos.', '2022-02-24 07:10:39', '2022-02-24 08:21:58', 'A', 1, 1),
(3, 'Bebés', 'Encuentre todo para su bebé, desde ropa hasta calzado.', '2022-02-24 07:55:13', '2022-02-24 08:21:06', 'A', 1, 1),
(4, 'Tecnología', 'Encuentre todo lo que necesita en este departamento.', '2022-02-24 08:23:28', '2022-02-24 08:25:17', 'A', 1, NULL),
(5, 'Hogar', 'Encuentre una gran variedad de productos para la limpieza de su hogar.', '2022-02-24 22:35:15', NULL, 'A', 1, NULL),
(6, 'Ropa dama', 'Ropa para dama', '2022-02-24 23:08:42', '2022-02-24 23:13:51', 'A', 1, NULL),
(7, 'Juguetes', 'En este departamento podrá encontrar todo para su pequeño / pequeña.', '2022-02-24 23:55:14', NULL, 'A', 1, NULL),
(8, 'Herramientas', 'Encuentre todo para su hogar y mantengala bonita y estable.', '2022-02-25 00:14:51', NULL, 'A', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenesproductos`
--

CREATE TABLE `imagenesproductos` (
  `idimagenesproductos` int(11) NOT NULL,
  `idproductos_categorias` int(11) NOT NULL,
  `nombreimagen` varchar(150) NOT NULL,
  `tipoimagen` varchar(10) NOT NULL,
  `fecharegistro` datetime NOT NULL,
  `fechaactualizacion` datetime DEFAULT NULL,
  `estado` char(1) NOT NULL,
  `idusuarioregistro` int(11) NOT NULL,
  `idusuarioelimino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermisos` int(11) NOT NULL,
  `permiso` char(1) NOT NULL COMMENT 'E = Eliminar\nQ = Consultar\nA = Actualizar\nC = Crear',
  `fecharegistro` datetime NOT NULL,
  `fechaactualizacion` datetime DEFAULT NULL,
  `estado` char(1) NOT NULL COMMENT 'E = Eliminado\nA = Ac',
  `idusuarioregistro` int(11) NOT NULL,
  `idusuarioelimino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pivotetable`
--

CREATE TABLE `pivotetable` (
  `idpivotetable` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL,
  `fechaactualizacion` datetime DEFAULT NULL,
  `estado` char(1) NOT NULL,
  `idusuarioregistro` int(11) NOT NULL,
  `idusuarioelimino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idproductos` int(11) NOT NULL,
  `idadministradoresfk` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcionespecifica` varchar(150) NOT NULL,
  `descripciongeneral` varchar(1000) NOT NULL,
  `estadoproducto` varchar(25) NOT NULL,
  `precio` double NOT NULL,
  `descuento` int(11) DEFAULT 0 COMMENT '0% a 100%',
  `stock` int(11) DEFAULT 0,
  `likes` int(11) DEFAULT 0,
  `fecharegistro` datetime NOT NULL,
  `fechaactualizacion` datetime DEFAULT NULL,
  `estado` char(1) NOT NULL,
  `idusuarioregistro` int(11) NOT NULL,
  `idusuarioelimino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idproductos`, `idadministradoresfk`, `nombre`, `descripcionespecifica`, `descripciongeneral`, `estadoproducto`, `precio`, `descuento`, `stock`, `likes`, `fecharegistro`, `fechaactualizacion`, `estado`, `idusuarioregistro`, `idusuarioelimino`) VALUES
(8, 1, 'Computadora Gamer Ryzen 12', 'Disfrute de sus videojuegos favoritos sin lag y con una súper calidad en HD.', 'Disfrute de sus videojuegos favoritos sin lag y con una súper calidad en HD.', 'udo', 14500, 0, 5, 0, '2022-02-24 21:16:14', '2022-02-24 23:50:17', 'A', 1, 1),
(11, 1, 'Jabón', 'Jabón blanqueador de 1kg a precio especial.', 'Jabón blanqueador de 1kg a precio especial.', 'nvo', 25.5, 15, 25, 0, '2022-02-24 22:16:25', '2022-02-24 23:50:08', 'A', 1, 1),
(13, 1, 'TV Roku 100\"', 'Viva la magia de la televisión y el internet disfrutando de sus series favorita.', 'Viva la magia de la televisión y el internet disfrutando de sus series favorita.', 'nvo', 25000, 14, 10, 0, '2022-02-24 22:24:20', '2022-02-24 23:50:01', 'A', 1, 1),
(14, 1, 'Smartphone', 'Full HD con cámara ultra sensible.', 'Full HD con cámara ultra sensible.', 'nvo', 4500, 0, 0, 0, '2022-02-24 22:52:18', '2022-02-24 23:49:52', 'A', 1, 1),
(15, 1, 'Vestido', 'Vestido de gala para la ocasión.', 'Vestido de gala para la ocasión.', 'nvo', 1500, 0, 20, 0, '2022-02-24 23:07:53', '2022-02-24 23:48:31', 'A', 1, 1),
(16, 1, 'Back to The Future Time Machine', 'Función de iluminación de coche fundido a presión.', 'Juguetes para niños y adultos.', 'nvo', 250, 0, 10, 0, '2022-02-25 00:17:56', '2022-02-25 00:19:47', 'A', 1, NULL),
(17, 1, 'Carrito a contról remoto', 'Horas de diversión con el nuevo carrito a control remoto.', 'Horas de diversión con el nuevo carrito a control remoto.', 'nvo', 520, 15, 15, 0, '2022-02-25 00:49:37', '2022-02-25 01:42:42', 'A', 21, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_categorias`
--

CREATE TABLE `productos_categorias` (
  `idproductos_categorias` int(11) NOT NULL,
  `idproductosfk` int(11) NOT NULL,
  `idcategoriasfk` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL,
  `fechaactualizacion` datetime DEFAULT NULL,
  `estado` char(1) NOT NULL,
  `idusuarioregistro` int(11) NOT NULL,
  `idusuarioelimino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos_categorias`
--

INSERT INTO `productos_categorias` (`idproductos_categorias`, `idproductosfk`, `idcategoriasfk`, `fecharegistro`, `fechaactualizacion`, `estado`, `idusuarioregistro`, `idusuarioelimino`) VALUES
(1, 8, 4, '2022-02-24 21:16:14', '2022-02-24 23:50:17', 'A', 1, 1),
(4, 11, 5, '2022-02-24 22:16:25', '2022-02-24 23:50:08', 'A', 1, 1),
(6, 13, 4, '2022-02-24 22:24:20', '2022-02-24 23:50:01', 'A', 1, 1),
(7, 14, 4, '2022-02-24 22:52:18', '2022-02-24 23:49:52', 'A', 1, 1),
(8, 15, 6, '2022-02-24 23:07:53', '2022-02-24 23:48:31', 'A', 1, 1),
(9, 16, 7, '2022-02-25 00:17:56', '2022-02-25 00:19:47', 'A', 1, NULL),
(10, 17, 7, '2022-02-25 00:49:37', '2022-02-25 01:42:42', 'A', 21, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`idadministradores`);

--
-- Indices de la tabla `administradores_permisos`
--
ALTER TABLE `administradores_permisos`
  ADD KEY `fk_administradores_has_permisos_permisos1_idx` (`idpermisosfk`),
  ADD KEY `fk_administradores_has_permisos_administradores1_idx` (`idadministradoresfk`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategorias`);

--
-- Indices de la tabla `imagenesproductos`
--
ALTER TABLE `imagenesproductos`
  ADD PRIMARY KEY (`idimagenesproductos`),
  ADD KEY `fk_imagenesproductos_productos_categorias1_idx` (`idproductos_categorias`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermisos`);

--
-- Indices de la tabla `pivotetable`
--
ALTER TABLE `pivotetable`
  ADD PRIMARY KEY (`idpivotetable`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idproductos`),
  ADD KEY `fk_productos_administradores1_idx` (`idadministradoresfk`);

--
-- Indices de la tabla `productos_categorias`
--
ALTER TABLE `productos_categorias`
  ADD PRIMARY KEY (`idproductos_categorias`),
  ADD KEY `fk_productos_categorias_productos1_idx` (`idproductosfk`),
  ADD KEY `fk_productos_categorias_categorias1_idx` (`idcategoriasfk`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `idadministradores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcategorias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `imagenesproductos`
--
ALTER TABLE `imagenesproductos`
  MODIFY `idimagenesproductos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermisos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pivotetable`
--
ALTER TABLE `pivotetable`
  MODIFY `idpivotetable` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idproductos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `productos_categorias`
--
ALTER TABLE `productos_categorias`
  MODIFY `idproductos_categorias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administradores_permisos`
--
ALTER TABLE `administradores_permisos`
  ADD CONSTRAINT `fk_administradores_has_permisos_administradores1` FOREIGN KEY (`idadministradoresfk`) REFERENCES `administradores` (`idadministradores`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_administradores_has_permisos_permisos1` FOREIGN KEY (`idpermisosfk`) REFERENCES `permisos` (`idpermisos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `imagenesproductos`
--
ALTER TABLE `imagenesproductos`
  ADD CONSTRAINT `fk_imagenesproductos_productos_categorias1` FOREIGN KEY (`idproductos_categorias`) REFERENCES `productos_categorias` (`idproductos_categorias`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_productos_administradores1` FOREIGN KEY (`idadministradoresfk`) REFERENCES `administradores` (`idadministradores`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productos_categorias`
--
ALTER TABLE `productos_categorias`
  ADD CONSTRAINT `fk_productos_categorias_categorias1` FOREIGN KEY (`idcategoriasfk`) REFERENCES `categorias` (`idcategorias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_productos_categorias_productos1` FOREIGN KEY (`idproductosfk`) REFERENCES `productos` (`idproductos`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
