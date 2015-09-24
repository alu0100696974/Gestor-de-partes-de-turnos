-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2015 a las 12:49:03
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `estacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `name`) VALUES
(1, 'enteros'),
(2, 'textos'),
(3, 'reales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enteros`
--

CREATE TABLE IF NOT EXISTS `enteros` (
  `name` varchar(45) NOT NULL,
  `inicial` varchar(45) NOT NULL,
  `final` varchar(45) NOT NULL,
  `entrada` varchar(45) NOT NULL,
  `salida` varchar(45) NOT NULL,
  `created` date NOT NULL,
  `modificado` date NOT NULL,
  `parte_id` int(11) DEFAULT NULL,
  `workflowpaso_id` int(11) DEFAULT NULL,
  `tipocampos_tipoparte_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `enteros`
--

INSERT INTO `enteros` (`name`, `inicial`, `final`, `entrada`, `salida`, `created`, `modificado`, `parte_id`, `workflowpaso_id`, `tipocampos_tipoparte_id`, `id`) VALUES
('', '', '', '', '', '0000-00-00', '0000-00-00', 63, 1, 2, 38),
('', '', '', '', '', '0000-00-00', '0000-00-00', 63, 1, 6, 39),
('', '1', '2', '', '', '0000-00-00', '0000-00-00', 64, 1, 2, 40),
('', '5', '8', '6', '7', '0000-00-00', '0000-00-00', 64, 1, 6, 41),
('', '', '', '', '', '2015-07-25', '0000-00-00', 67, 1, 2, 43),
('', '', '', '', '', '2015-07-25', '0000-00-00', 67, 1, 6, 44),
('', '519', '578', '', '', '2015-07-25', '0000-00-00', 68, 1, 2, 45),
('', '215', '237', '60', '38', '2015-07-25', '0000-00-00', 68, 1, 6, 46),
('', '519', '578', '', '', '2015-07-25', '0000-00-00', 68, 2, 2, 47),
('', '215', '237', '60', '38', '2015-07-25', '0000-00-00', 68, 2, 6, 48),
('', '519', '578', '', '', '2015-07-25', '0000-00-00', 68, 2, 2, 49),
('', '518', '578', '', '', '2015-07-25', '0000-00-00', 68, 2, 2, 50),
('', '215', '237', '60', '38', '2015-07-25', '0000-00-00', 68, 2, 6, 51),
('', '215', '237', '60', '38', '2015-07-25', '0000-00-00', 68, 2, 6, 52),
('', '1', '2', '', '', '2015-08-08', '0000-00-00', 64, 2, 2, 53),
('', '5', '8', '6', '7', '2015-08-08', '0000-00-00', 64, 2, 6, 54),
('Surtidor', '', '', '', '', '2015-09-03', '0000-00-00', 69, 1, 2, 55),
('Caja', '', '', '', '', '2015-09-03', '0000-00-00', 69, 1, 6, 56),
('Surtidor', '', '', '', '', '2015-09-03', '0000-00-00', 69, 2, 2, 57),
('Caja', '', '', '', '', '2015-09-03', '0000-00-00', 69, 2, 6, 58);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `name`) VALUES
(1, 'Creada'),
(2, 'Asignada'),
(3, 'Finalizada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL,
  `event_type_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `all_day` tinyint(1) NOT NULL DEFAULT '1',
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Scheduled',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `event_type_id`, `title`, `details`, `start`, `end`, `all_day`, `status`, `active`, `created`, `modified`) VALUES
(5, 1, 'hola', '', '2015-05-27 13:22:00', '2015-05-27 13:22:00', 1, 'Scheduled', 1, '2015-05-27', '2015-05-27'),
(6, 1, 'hola', '', '2015-07-07 14:00:00', '1970-01-01 00:00:00', 0, 'Scheduled', 1, '2015-07-06', '2015-07-06'),
(7, 1, 'Prueba', '', '2015-07-25 21:20:00', '2015-07-25 21:20:00', 0, 'Scheduled', 1, '2015-07-25', '2015-07-25'),
(8, 1, 'reuniÃ³n de personal', '', '2015-08-10 17:30:00', '2015-08-10 19:30:00', 0, 'Scheduled', 1, '2015-08-08', '2015-08-08'),
(9, 3, 'ReuniÃ³n de vendedores', '', '2015-09-21 20:53:00', '2015-09-20 20:53:00', 1, 'Scheduled', 1, '2015-09-20', '2015-09-20'),
(10, 1, 'ReuniÃ³n de gerentes', '', '2015-09-22 09:30:00', '2015-09-22 10:30:00', 0, 'Scheduled', 1, '2015-09-20', '2015-09-20'),
(11, 3, 'ReuniÃ³n vendedores.', '', '2015-09-25 12:00:00', '2015-09-25 15:00:00', 0, 'Scheduled', 1, '2015-09-20', '2015-09-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_types`
--

CREATE TABLE IF NOT EXISTS `event_types` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `event_types`
--

INSERT INTO `event_types` (`id`, `name`, `color`) VALUES
(1, 'Recursos', 'Blue'),
(3, 'ReuniÃ³n', 'Red');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencias`
--

CREATE TABLE IF NOT EXISTS `incidencias` (
  `id` int(11) NOT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `prioridad` varchar(45) DEFAULT NULL,
  `observaciones` text NOT NULL,
  `descripcion` text NOT NULL,
  `name` varchar(45) NOT NULL,
  `usuario_creador` int(11) DEFAULT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `incidencias`
--

INSERT INTO `incidencias` (`id`, `estado_id`, `prioridad`, `observaciones`, `descripcion`, `name`, `usuario_creador`, `created`) VALUES
(46, 3, '1', '', 'Defecto', 'Defecto', 5, '2015-07-01'),
(60, 1, NULL, '', '', '', 6, '2015-07-01'),
(61, 1, NULL, '', '', '', 12, '2015-07-04'),
(62, 3, 'MÃ­nima', '', 'Prueba', 'Prueba', 6, '2015-07-25'),
(63, 3, 'MÃ­nima', '', '', 'ValidaciÃ³n de partes de turno nÃºmero: 68', 12, '2015-07-25'),
(65, 3, 'Media', 'solucionado', 'Se ha detectado un fallo en el surtidor nÃºmero 1.', 'Fallo surtidor 1', 6, '2015-07-25'),
(66, 2, 'MÃ­nima', '', '', 'ValidaciÃ³n de partes de turno nÃºmero: 64', 12, '2015-08-08'),
(67, 2, 'MÃ­nima', '', '09/08/2015 ', 'reuniÃ³n empresa', 12, '2015-08-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencias_users`
--

CREATE TABLE IF NOT EXISTS `incidencias_users` (
  `user_id` int(11) DEFAULT NULL,
  `incidencia_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `incidencias_users`
--

INSERT INTO `incidencias_users` (`user_id`, `incidencia_id`) VALUES
(5, '62'),
(6, '62'),
(6, '66'),
(12, '65'),
(12, '67'),
(6, '67'),
(13, '67');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partes`
--

CREATE TABLE IF NOT EXISTS `partes` (
  `id` int(11) NOT NULL,
  `usuariovendedor` int(11) DEFAULT NULL,
  `usuariogestor` int(11) DEFAULT NULL,
  `incidencia_id` int(11) DEFAULT NULL,
  `validado` smallint(1) NOT NULL,
  `created` date NOT NULL,
  `tipoparte_id` int(11) DEFAULT NULL,
  `firmado` smallint(1) NOT NULL,
  `copiado` tinyint(1) NOT NULL,
  `modificado` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `partes`
--

INSERT INTO `partes` (`id`, `usuariovendedor`, `usuariogestor`, `incidencia_id`, `validado`, `created`, `tipoparte_id`, `firmado`, `copiado`, `modificado`) VALUES
(63, NULL, NULL, NULL, 0, '2015-07-01', NULL, 0, 0, 0),
(64, 6, 12, 46, 1, '2015-07-01', 3, 1, 1, 1),
(65, NULL, NULL, NULL, 0, '2015-07-25', NULL, 0, 0, 0),
(66, NULL, NULL, NULL, 0, '2015-07-25', NULL, 0, 0, 0),
(67, 6, NULL, 46, 0, '2015-07-25', 3, 0, 0, 0),
(68, 6, 12, 46, 1, '2015-07-25', 3, 1, 1, 1),
(69, 6, 12, 46, 1, '2015-09-03', 3, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reales`
--

CREATE TABLE IF NOT EXISTS `reales` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `inicial` double NOT NULL,
  `final` double NOT NULL,
  `entrada` double NOT NULL,
  `salida` double NOT NULL,
  `created` date NOT NULL,
  `modificado` date NOT NULL,
  `parte_id` int(11) DEFAULT NULL,
  `workflowpaso_id` int(11) DEFAULT NULL,
  `tipocampos_tipoparte_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reales`
--

INSERT INTO `reales` (`id`, `name`, `inicial`, `final`, `entrada`, `salida`, `created`, `modificado`, `parte_id`, `workflowpaso_id`, `tipocampos_tipoparte_id`) VALUES
(19, 'Lavado', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 63, 1, 1),
(21, 'Lavado', 0, 0, 3, 4, '0000-00-00', '0000-00-00', 64, 1, 1),
(23, 'Lavado', 0, 0, 0, 0, '2015-07-25', '0000-00-00', 66, 1, 1),
(24, 'Lavado', 0, 0, 0, 0, '2015-07-25', '0000-00-00', 67, 1, 1),
(25, 'Lavado', 0, 0, 3, 4, '2015-07-25', '0000-00-00', 68, 1, 1),
(26, 'Lavado', 0, 0, 3, 4, '2015-07-25', '0000-00-00', 68, 2, 1),
(27, 'Lavado', 0, 0, 3, 4, '2015-07-25', '0000-00-00', 68, 2, 1),
(28, 'Lavado', 0, 0, 3, 4, '2015-07-25', '0000-00-00', 68, 2, 1),
(29, 'Lavado', 0, 0, 2, 5, '2015-08-08', '0000-00-00', 64, 2, 1),
(30, 'Lavado', 0, 0, 0, 0, '2015-09-03', '0000-00-00', 69, 1, 1),
(31, 'Lavado', 0, 0, 0, 0, '2015-09-03', '0000-00-00', 69, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(2, 'Gerente'),
(3, 'Vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `textos`
--

CREATE TABLE IF NOT EXISTS `textos` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `inicial` varchar(45) NOT NULL,
  `final` varchar(45) NOT NULL,
  `entrada` varchar(45) NOT NULL,
  `salida` varchar(45) NOT NULL,
  `created` date NOT NULL,
  `modificado` date NOT NULL,
  `parte_id` int(11) DEFAULT NULL,
  `tipocampos_tipoparte_id` int(11) DEFAULT NULL,
  `workflowpaso_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `textos`
--

INSERT INTO `textos` (`id`, `name`, `inicial`, `final`, `entrada`, `salida`, `created`, `modificado`, `parte_id`, `tipocampos_tipoparte_id`, `workflowpaso_id`) VALUES
(20, 'Incidencias', '', '', '', '', '0000-00-00', '0000-00-00', 63, 7, 1),
(21, 'Incidencias', '', 'dfs', '', '', '0000-00-00', '0000-00-00', 64, 7, 1),
(22, 'Incidencias', '', '', '', '', '2015-07-25', '0000-00-00', 67, 7, 1),
(23, 'Incidencias', '', 'No se han detectado incidencias', '', '', '2015-07-25', '0000-00-00', 68, 7, 1),
(24, 'Incidencias', '', 'No se han detectado incidencias', '', '', '2015-07-25', '0000-00-00', 68, 7, 2),
(25, 'Incidencias', '', 'No se han detectado incidencias', '', '', '2015-07-25', '0000-00-00', 68, 7, 2),
(26, 'Incidencias', '', 'No se han detectado incidencias', '', '', '2015-07-25', '0000-00-00', 68, 7, 2),
(27, 'Incidencias', '', 'dfs', '', '', '2015-08-08', '0000-00-00', 64, 7, 2),
(28, 'Incidencias', '', '', '', '', '2015-09-03', '0000-00-00', 69, 7, 1),
(29, 'Incidencias', '', '', '', '', '2015-09-03', '0000-00-00', 69, 7, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocampos`
--

CREATE TABLE IF NOT EXISTS `tipocampos` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `editable` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipocampos`
--

INSERT INTO `tipocampos` (`id`, `name`, `descripcion`, `editable`) VALUES
(1, 'Incidencias', '', 1),
(2, 'Lavado', '', 1),
(3, 'Surtidor', '', 1),
(4, 'Total', '', 1),
(5, 'Caja', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocampos_tipopartes`
--

CREATE TABLE IF NOT EXISTS `tipocampos_tipopartes` (
  `id` int(11) NOT NULL,
  `tipocampo_id` int(11) DEFAULT NULL,
  `tipoparte_id` int(11) DEFAULT NULL,
  `tipofamilia_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipocampos_tipopartes`
--

INSERT INTO `tipocampos_tipopartes` (`id`, `tipocampo_id`, `tipoparte_id`, `tipofamilia_id`, `categoria_id`, `orden`) VALUES
(1, 2, 3, 1, 3, NULL),
(2, 3, 3, 2, 1, NULL),
(6, 5, 3, 4, 1, NULL),
(7, 1, 3, 3, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipofamilias`
--

CREATE TABLE IF NOT EXISTS `tipofamilias` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipofamilias`
--

INSERT INTO `tipofamilias` (`id`, `name`) VALUES
(1, 'TÃºneles de  lavado'),
(2, 'Surtidores'),
(3, 'Incidencias'),
(4, 'Caja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopartes`
--

CREATE TABLE IF NOT EXISTS `tipopartes` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `plantilla` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipopartes`
--

INSERT INTO `tipopartes` (`id`, `name`, `plantilla`) VALUES
(3, 'Defecto', 'plantilla2014');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `password` char(50) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `role_id`, `password`, `created`) VALUES
(5, 'maria', 2, '4079cdc5afda00cdc7c75f6d1c6165ca276a31b2', '2015-07-01'),
(6, 'jose', 3, '51194aee8ddd7e0cac0d2bde9cb00751e04c665b', '2015-07-01'),
(12, 'pablo', 2, '51194aee8ddd7e0cac0d2bde9cb00751e04c665b', '2015-07-01'),
(13, 'Lucia', 3, '8b60b485908b1361fd7f599ba92c9015e30e31ee', '2015-07-25'),
(15, 'Mau', 2, '82d616f4c25b2c9b356a5256e89ae85ec2639614', '2015-07-25'),
(16, 'mau', 2, '3aa0a63b2b8d3326810f1a5d044f522ddd843320', '2015-07-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoresdefectos`
--

CREATE TABLE IF NOT EXISTS `valoresdefectos` (
  `id` int(11) NOT NULL,
  `tipoparte_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `valoresdefectos`
--

INSERT INTO `valoresdefectos` (`id`, `tipoparte_id`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `workflowpasos`
--

CREATE TABLE IF NOT EXISTS `workflowpasos` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `workflowpasos`
--

INSERT INTO `workflowpasos` (`id`, `name`) VALUES
(1, '1'),
(2, '2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enteros`
--
ALTER TABLE `enteros`
  ADD PRIMARY KEY (`id`), ADD KEY `tipocampos_tipoparte_id_idx` (`tipocampos_tipoparte_id`), ADD KEY `parte_id2_idx` (`parte_id`), ADD KEY `workflow2_idx` (`workflowpaso_id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `event_types`
--
ALTER TABLE `event_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  ADD PRIMARY KEY (`id`), ADD KEY `estado_id_idx` (`estado_id`), ADD KEY `usuario_creador_idx` (`usuario_creador`);

--
-- Indices de la tabla `partes`
--
ALTER TABLE `partes`
  ADD PRIMARY KEY (`id`), ADD KEY `tipoparte_id_idx` (`tipoparte_id`), ADD KEY `usuariogestor_idx` (`usuariogestor`), ADD KEY `usuariovendedor_idx` (`usuariovendedor`), ADD KEY `incidencias_id_idx` (`incidencia_id`);

--
-- Indices de la tabla `reales`
--
ALTER TABLE `reales`
  ADD PRIMARY KEY (`id`), ADD KEY `parte_id_idx` (`parte_id`), ADD KEY `tipocampos_tipoparte_idr_idx` (`tipocampos_tipoparte_id`), ADD KEY `workflow1_idx` (`workflowpaso_id`), ADD KEY `workflow11_idx` (`workflowpaso_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `textos`
--
ALTER TABLE `textos`
  ADD PRIMARY KEY (`id`), ADD KEY `parte_id_idx` (`parte_id`), ADD KEY `workflow_id_idx` (`tipocampos_tipoparte_id`), ADD KEY `workflow1_idx` (`workflowpaso_id`);

--
-- Indices de la tabla `tipocampos`
--
ALTER TABLE `tipocampos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipocampos_tipopartes`
--
ALTER TABLE `tipocampos_tipopartes`
  ADD PRIMARY KEY (`id`), ADD KEY `tipocampo_id_idx` (`tipocampo_id`), ADD KEY `tipoparte_id_idx` (`tipoparte_id`), ADD KEY `tipofamilia_id_idx` (`tipofamilia_id`), ADD KEY `categoria_id_idx` (`categoria_id`);

--
-- Indices de la tabla `tipofamilias`
--
ALTER TABLE `tipofamilias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipopartes`
--
ALTER TABLE `tipopartes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD KEY `rol_id_idx` (`role_id`);

--
-- Indices de la tabla `valoresdefectos`
--
ALTER TABLE `valoresdefectos`
  ADD PRIMARY KEY (`id`), ADD KEY `tipoparte_id_idx` (`tipoparte_id`);

--
-- Indices de la tabla `workflowpasos`
--
ALTER TABLE `workflowpasos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `enteros`
--
ALTER TABLE `enteros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `event_types`
--
ALTER TABLE `event_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT de la tabla `partes`
--
ALTER TABLE `partes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT de la tabla `reales`
--
ALTER TABLE `reales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `textos`
--
ALTER TABLE `textos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `tipocampos`
--
ALTER TABLE `tipocampos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tipocampos_tipopartes`
--
ALTER TABLE `tipocampos_tipopartes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `tipofamilias`
--
ALTER TABLE `tipofamilias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tipopartes`
--
ALTER TABLE `tipopartes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `valoresdefectos`
--
ALTER TABLE `valoresdefectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `workflowpasos`
--
ALTER TABLE `workflowpasos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `enteros`
--
ALTER TABLE `enteros`
ADD CONSTRAINT `parte_id2` FOREIGN KEY (`parte_id`) REFERENCES `partes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `tipocampos_tipoparte_id` FOREIGN KEY (`tipocampos_tipoparte_id`) REFERENCES `tipocampos_tipopartes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `workflows2` FOREIGN KEY (`workflowpaso_id`) REFERENCES `workflowpasos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `incidencias`
--
ALTER TABLE `incidencias`
ADD CONSTRAINT `estado_id` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `usuario_creador` FOREIGN KEY (`usuario_creador`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `partes`
--
ALTER TABLE `partes`
ADD CONSTRAINT `incidencia_idss` FOREIGN KEY (`incidencia_id`) REFERENCES `incidencias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `usuariogestor` FOREIGN KEY (`usuariogestor`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `reales`
--
ALTER TABLE `reales`
ADD CONSTRAINT `parte_id1` FOREIGN KEY (`parte_id`) REFERENCES `partes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `tipocampos_tipoparte_idr` FOREIGN KEY (`tipocampos_tipoparte_id`) REFERENCES `tipocampos_tipopartes` (`id`),
ADD CONSTRAINT `workflow11` FOREIGN KEY (`workflowpaso_id`) REFERENCES `workflowpasos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `textos`
--
ALTER TABLE `textos`
ADD CONSTRAINT `parte_id3` FOREIGN KEY (`parte_id`) REFERENCES `partes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `tipocampos_tipoparte_id1` FOREIGN KEY (`tipocampos_tipoparte_id`) REFERENCES `tipocampos_tipopartes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `workflow1` FOREIGN KEY (`workflowpaso_id`) REFERENCES `workflowpasos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipocampos_tipopartes`
--
ALTER TABLE `tipocampos_tipopartes`
ADD CONSTRAINT `tipocampo_id` FOREIGN KEY (`tipocampo_id`) REFERENCES `tipocampos` (`id`),
ADD CONSTRAINT `tipofamilia_id` FOREIGN KEY (`tipofamilia_id`) REFERENCES `tipofamilias` (`id`),
ADD CONSTRAINT `tipoparte_id` FOREIGN KEY (`tipoparte_id`) REFERENCES `tipopartes` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `role_idp` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `valoresdefectos`
--
ALTER TABLE `valoresdefectos`
ADD CONSTRAINT `tipoparte_idv` FOREIGN KEY (`tipoparte_id`) REFERENCES `tipopartes` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
