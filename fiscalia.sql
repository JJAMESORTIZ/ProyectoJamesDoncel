-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2017 a las 00:40:40
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fiscalia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL COMMENT 'Upload Date',
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Unblock, 0=Block'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id`, `file_name`, `created`, `modified`, `status`) VALUES
(1, 'AUTONOMIA.jpg', '2017-11-04 23:20:48', '2017-11-04 23:20:48', 1),
(2, 'DONANTES_FALLECIDOS.jpg', '2017-11-04 23:26:03', '2017-11-04 23:26:03', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionarios`
--

CREATE TABLE `funcionarios` (
  `ID` int(11) NOT NULL,
  `CEDULA` varchar(55) NOT NULL,
  `NOMBRE` varchar(55) NOT NULL,
  `APELLIDO` varchar(55) NOT NULL,
  `EMAIL` varchar(55) NOT NULL,
  `FECHA_REGISTRO` date NOT NULL,
  `CARGO` varchar(55) NOT NULL,
  `ESTATUS` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `funcionarios`
--

INSERT INTO `funcionarios` (`ID`, `CEDULA`, `NOMBRE`, `APELLIDO`, `EMAIL`, `FECHA_REGISTRO`, `CARGO`, `ESTATUS`) VALUES
(1, '988', 'hhhg', 'ddd', 'jhon.doncel@ucp.edu.co', '2017-10-25', 'TECNICO', 0),
(2, '12345678', 'Valentina', 'Vargas', 'valentina@gmail.com', '2017-10-11', 'Fiscal', 0),
(4, '78844', 'IOIOIO', 'FDSFF', 'DFDFDFF@JO.COM', '2017-10-26', 'dswddfs', 0),
(5, '8888888', 'DSFDSF', 'GDFGDF', 'BVBBVBV@VVDFV.COM', '2017-10-26', 'CDSVDFV', 0),
(6, '888898999', 'yaaaa', 'olaa', 'ola@hotma.com', '2017-10-26', 'fdsgfg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_sistema`
--

CREATE TABLE `menu_sistema` (
  `ID` int(11) NOT NULL,
  `DESCRIPCION` varchar(50) NOT NULL,
  `IMAGEN` varchar(50) NOT NULL DEFAULT 'imagenes/not_found.png',
  `URL` varchar(50) DEFAULT NULL,
  `TITULO` varchar(50) NOT NULL,
  `ORDENAMIENTO` int(11) NOT NULL DEFAULT '0',
  `ESTATUS` int(11) NOT NULL DEFAULT '0',
  `COLOR` varchar(128) NOT NULL,
  `ICON` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu_sistema`
--

INSERT INTO `menu_sistema` (`ID`, `DESCRIPCION`, `IMAGEN`, `URL`, `TITULO`, `ORDENAMIENTO`, `ESTATUS`, `COLOR`, `ICON`) VALUES
(1, 'Retornar al Menu Principal', 'imagenes/Customer.png', '#', 'Inicio', 1, 0, 'small-box bg-red', 'fa fa-home'),
(3, 'Gestionar Usuarios', 'imagenes/Product.png', '/usuarios', 'Usuarios', 2, 0, 'small-box bg-blue', '	fa fa-user-plus'),
(4, 'Historiales Laborales', 'imagenes/not_found.png', '/usuarios/cargar', 'Funcionarios', 6, 0, 'small-box bg-orange', '	fa fa-inbox'),
(5, 'Gestionar Funcionarios', 'imagenes/not_found.png', '/funcionarios', '', 3, 0, 'small-box bg-aqua', '	fa fa-user-plus');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisosmenu`
--

CREATE TABLE `permisosmenu` (
  `ID` int(11) NOT NULL,
  `ID_USUARIO` int(25) NOT NULL,
  `ID_MENU` int(11) NOT NULL,
  `ESTATUS` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `permisosmenu`
--

INSERT INTO `permisosmenu` (`ID`, `ID_USUARIO`, `ID_MENU`, `ESTATUS`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 1, 5, 1),
(5, 2, 1, 0),
(6, 2, 3, 0),
(7, 2, 2, 1),
(8, 3, 1, 0),
(9, 3, 3, 1),
(10, 3, 2, 1),
(11, 3, 4, 0),
(12, 3, 5, 1),
(13, 3, 6, 1),
(14, 4, 1, 0),
(15, 4, 3, 0),
(16, 4, 5, 0),
(17, 1, 5, 1),
(18, 1, 6, 0),
(19, 1, 4, 0),
(20, 1, 5, 1),
(21, 1, 5, 1),
(22, 1, 5, 1),
(23, 1, 5, 1),
(24, 1, 5, 1),
(25, 1, 5, 1),
(26, 1, 5, 1),
(27, 1, 5, 1),
(28, 1, 5, 1),
(29, 1, 5, 1),
(30, 1, 5, 1),
(31, 1, 5, 1),
(32, 1, 5, 1),
(33, 1, 5, 1),
(34, 1, 5, 1),
(35, 1, 5, 0),
(36, 4, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `USUARIO` varchar(50) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDOS` varchar(100) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `FECHA_REGISTRO` varchar(20) NOT NULL,
  `ESTATUS` int(11) NOT NULL DEFAULT '0',
  `TIPO` varchar(20) NOT NULL DEFAULT 'Invitado',
  `PASSWORD` varchar(50) DEFAULT '123'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `USUARIO`, `NOMBRE`, `APELLIDOS`, `EMAIL`, `FECHA_REGISTRO`, `ESTATUS`, `TIPO`, `PASSWORD`) VALUES
(1, 'logan420', 'John James', 'Ortiz Rios', 'john.ortiz@ucp.edu.co', '2014-07-30', 0, 'Administrador', 'c2a4aa195457ed974544ef997ba7f57f'),
(4, 'Jhonson', 'Jhon', 'Doncel', 'jhon.doncel@ucp.edu.co', '2017-10-30 03:52:57', 0, 'Administrador', '78a48209c441a4ce97a600156bebddea');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `menu_sistema`
--
ALTER TABLE `menu_sistema`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `permisosmenu`
--
ALTER TABLE `permisosmenu`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `menu_sistema`
--
ALTER TABLE `menu_sistema`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `permisosmenu`
--
ALTER TABLE `permisosmenu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
