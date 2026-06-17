-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2026 a las 23:54:30
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
-- Base de datos: `skn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Cedula_cliente` int(20) NOT NULL,
  `Nombre_cliente` varchar(100) DEFAULT NULL,
  `Apellido_Cliente` varchar(100) DEFAULT NULL,
  `Correo_cliente` varchar(100) DEFAULT NULL,
  `id_encuesta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Cedula_cliente`, `Nombre_cliente`, `Apellido_Cliente`, `Correo_cliente`, `id_encuesta`) VALUES
(1094049390, 'Diego', 'Gonzales', 'diegoandresbohorquezperez@gmail.com', 1),
(1094049396, 'Diego', 'Perez', 'diegoandresbohorquezperez@gmail.com', 2),
(1094049397, 'Andres', 'Perez', 'diegoandresbohorquezperez@gmail.com', 3),
(1094049398, 'Luis', 'Perez', 'andresbohorquezperez@gmail.com', 4),
(1094049399, 'Gonzalo', 'Perez', 'diegoandresbohorquezperez@gmail.com', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `Numero_identificacion` int(20) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `Correo` varchar(100) DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`Numero_identificacion`, `Nombre`, `Apellido`, `telefono`, `Correo`) VALUES
(1010401010, 'Asid', 'Carton', '2147483647', 'asid3047845@gmail.com'),
(1010401011, 'Eric', 'Allin', '2147483647', 'eric3047845@gmail.com'),
(1010401012, 'Milena', 'Sabin', '2147483647', 'milena3047845@gmail.com'),
(1010401013, 'Omar', 'Sabin', '2147483647', 'omar3047845@gmail.com'),
(1010401014, 'Raul', 'Lamin', '2147483647', 'raul3047845@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE `encuesta` (
  `id_encuesta` int(11) NOT NULL,
  `Nombre_encuesta` varchar(100) DEFAULT NULL,
  `Novedad` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `encuesta`
--

INSERT INTO `encuesta` (`id_encuesta`, `Nombre_encuesta`, `Novedad`) VALUES
(1, 'Control calidad servicio', 'Ninguna'),
(2, 'Control calidad servicio', 'Mal servicio'),
(3, 'Control calidad servicio', 'Excelente servicio'),
(4, 'Control calidad servicio', 'Mal'),
(5, 'Control calidad servicio', 'Ninguna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadistica`
--

CREATE TABLE `estadistica` (
  `id_estadistica` int(11) NOT NULL,
  `tipo_grafico` varchar(100) DEFAULT NULL,
  `id_Pago` int(11) DEFAULT NULL,
  `id_Reporte` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estadistica`
--

INSERT INTO `estadistica` (`id_estadistica`, `tipo_grafico`, `id_Pago`, `id_Reporte`) VALUES
(1, 'Barra', 1, 1),
(2, 'Circular', 2, 2),
(3, 'Lineal', 3, 3),
(4, 'Torta', 4, 4),
(5, 'Dispersión', 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id_Horario` int(11) NOT NULL,
  `Tipo_horario` varchar(100) DEFAULT NULL,
  `Periodo` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`id_Horario`, `Tipo_horario`, `Periodo`) VALUES
(1, 'Diurno', '2026-05-14 05:00:00'),
(2, 'Diurno', '2026-05-14 12:00:00'),
(3, 'Diurno', '2026-05-14 13:00:00'),
(4, 'Nocturno', '2026-05-14 18:00:00'),
(5, 'Nocturno', '2026-05-14 22:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id_Pago` int(11) NOT NULL,
  `total_pagos` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id_Pago`, `total_pagos`) VALUES
(1, 1900000.00),
(2, 3000000.00),
(3, 1300000.00),
(4, 85000.00),
(5, 275700.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `id_reporte` int(11) NOT NULL,
  `tipo_fallas` varchar(100) DEFAULT NULL,
  `Numero_identificacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reportes`
--

INSERT INTO `reportes` (`id_reporte`, `tipo_fallas`, `Numero_identificacion`) VALUES
(1, 'Excusa medica', 1010401010),
(2, 'Inasistencia', 1010401011),
(3, 'Llegada tarde', 1010401012),
(4, 'Excusa', 1010401013),
(5, 'Permiso', 1010401014);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_Rol` int(11) NOT NULL,
  `Nombre_rol` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_Rol`, `Nombre_rol`) VALUES
(1, 'Administrador'),
(2, 'Empleado'),
(3, 'Empleado'),
(4, 'Administrador'),
(5, 'Empleado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_labor` int(11) NOT NULL,
  `nombre_servicio` varchar(100) DEFAULT NULL,
  `labor_servicio` varchar(100) DEFAULT NULL,
  `Horas_labor` int(100) DEFAULT NULL,
  `Cantidad_servicios` int(100) DEFAULT NULL,
  `id_encuesta` int(11) DEFAULT NULL,
  `id_Pago` int(11) DEFAULT NULL,
  `id_estadistica` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_labor`, `nombre_servicio`, `labor_servicio`, `Horas_labor`, `Cantidad_servicios`, `id_encuesta`, `id_Pago`, `id_estadistica`) VALUES
(1, 'Mantenimiento', 'Revisión técnica', 4, 10, 1, 1, 1),
(2, 'Limpieza', 'Lavado general', 2, 25, 2, 2, 2),
(3, 'Reparación', 'Cambio de repuestos', 6, 5, 3, 3, 3),
(4, 'Instalación', 'Montaje de sistemas', 5, 8, 4, 4, 4),
(5, 'Asesoría', 'Soporte al cliente', 1, 30, 5, 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_empleados`
--

CREATE TABLE `servicio_empleados` (
  `Numero_identificacion` int(11) NOT NULL,
  `id_labor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio_empleados`
--

INSERT INTO `servicio_empleados` (`Numero_identificacion`, `id_labor`) VALUES
(1010401010, 1),
(1010401011, 2),
(1010401012, 3),
(1010401013, 4),
(1010401014, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE `turnos` (
  `id_Turno` int(11) NOT NULL,
  `Tipo_turno` varchar(100) DEFAULT NULL,
  `Fechas_turno` datetime DEFAULT NULL,
  `Jornada` varchar(100) DEFAULT NULL,
  `id_horario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turnos`
--

INSERT INTO `turnos` (`id_Turno`, `Tipo_turno`, `Fechas_turno`, `Jornada`, `id_horario`) VALUES
(1, 'Mañana', '2026-05-15 06:00:00', 'Completa', 1),
(2, 'Tarde', '2026-05-15 14:00:00', 'Completa', 2),
(3, 'Noche', '2026-05-15 22:00:00', 'Completa', 3),
(4, 'Fin de Semana', '2026-05-16 08:00:00', 'Parcial', 4),
(5, 'Festivo', '2026-05-17 08:00:00', 'Parcial', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos_empleados`
--

CREATE TABLE `turnos_empleados` (
  `Numero_identificacion` int(11) NOT NULL,
  `id_turno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turnos_empleados`
--

INSERT INTO `turnos_empleados` (`Numero_identificacion`, `id_turno`) VALUES
(1010401010, 1),
(1010401011, 2),
(1010401012, 3),
(1010401013, 4),
(1010401014, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_Usuario` int(11) NOT NULL,
  `Usuario` varchar(20) DEFAULT NULL,
  `Contraseña` varchar(20) DEFAULT NULL,
  `numero_identificacion` int(11) DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_Usuario`, `Usuario`, `Contraseña`, `numero_identificacion`, `id_rol`) VALUES
(1, 'diego.perez', 'Admin2026*', 1010401010, 1),
(2, 'andres.b', 'Sena3230985', 1010401011, 2),
(3, 'luis.p', 'User12345', 1010401012, 2),
(4, 'gonzalo.p', 'PassSecure99', 1010401013, 2),
(5, 'admin_skn', 'SknMaster20', 1010401014, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `Placa_vehiculo` varchar(20) NOT NULL,
  `Tipo_Vehiculo` varchar(100) DEFAULT NULL,
  `id_labor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`Placa_vehiculo`, `Tipo_Vehiculo`, `id_labor`) VALUES
('123456', 'Particular / Carro', 1),
('345678', 'Camioneta', 2),
('567890', 'Particular / Carro', 3),
('789012', 'Motocicleta', 4),
('901234', 'Carga Pesada', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Cedula_cliente`),
  ADD KEY `fk_id_encuesta` (`id_encuesta`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`Numero_identificacion`);

--
-- Indices de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  ADD PRIMARY KEY (`id_encuesta`);

--
-- Indices de la tabla `estadistica`
--
ALTER TABLE `estadistica`
  ADD PRIMARY KEY (`id_estadistica`),
  ADD KEY `fk_id_Pagos` (`id_Pago`),
  ADD KEY `fk_id_reporte` (`id_Reporte`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id_Horario`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id_Pago`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id_reporte`),
  ADD KEY `fk_reporte_empleado` (`Numero_identificacion`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_Rol`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_labor`),
  ADD KEY `fk_id_encuestas` (`id_encuesta`),
  ADD KEY `fk_id_Pago` (`id_Pago`),
  ADD KEY `fk_id_estadistica` (`id_estadistica`);

--
-- Indices de la tabla `servicio_empleados`
--
ALTER TABLE `servicio_empleados`
  ADD PRIMARY KEY (`Numero_identificacion`,`id_labor`),
  ADD KEY `fk_labor_servicio1` (`id_labor`);

--
-- Indices de la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id_Turno`),
  ADD KEY `fk_id_horario` (`id_horario`);

--
-- Indices de la tabla `turnos_empleados`
--
ALTER TABLE `turnos_empleados`
  ADD PRIMARY KEY (`Numero_identificacion`,`id_turno`),
  ADD KEY `fk_turno_empleado1` (`id_turno`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_Usuario`),
  ADD KEY `fk_numero_identificacion` (`numero_identificacion`),
  ADD KEY `fk_id_rol` (`id_rol`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`Placa_vehiculo`),
  ADD KEY `fk_id_labor` (`id_labor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estadistica`
--
ALTER TABLE `estadistica`
  MODIFY `id_estadistica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id_Horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id_Pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_labor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `turnos`
--
ALTER TABLE `turnos`
  MODIFY `id_Turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_id_encuesta` FOREIGN KEY (`id_encuesta`) REFERENCES `encuesta` (`id_encuesta`);

--
-- Filtros para la tabla `estadistica`
--
ALTER TABLE `estadistica`
  ADD CONSTRAINT `fk_id_Pagos` FOREIGN KEY (`id_Pago`) REFERENCES `pagos` (`id_Pago`),
  ADD CONSTRAINT `fk_id_reporte` FOREIGN KEY (`id_Reporte`) REFERENCES `reportes` (`id_reporte`);

--
-- Filtros para la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD CONSTRAINT `fk_reporte_empleado` FOREIGN KEY (`Numero_identificacion`) REFERENCES `empleados` (`Numero_identificacion`);

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `fk_id_Pago` FOREIGN KEY (`id_Pago`) REFERENCES `pagos` (`id_Pago`),
  ADD CONSTRAINT `fk_id_encuestas` FOREIGN KEY (`id_encuesta`) REFERENCES `encuesta` (`id_encuesta`),
  ADD CONSTRAINT `fk_id_estadistica` FOREIGN KEY (`id_estadistica`) REFERENCES `estadistica` (`id_estadistica`);

--
-- Filtros para la tabla `servicio_empleados`
--
ALTER TABLE `servicio_empleados`
  ADD CONSTRAINT `fk_empleado_servicio1` FOREIGN KEY (`Numero_identificacion`) REFERENCES `empleados` (`Numero_identificacion`),
  ADD CONSTRAINT `fk_labor_servicio1` FOREIGN KEY (`id_labor`) REFERENCES `servicios` (`id_labor`);

--
-- Filtros para la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD CONSTRAINT `fk_id_horario` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`id_Horario`);

--
-- Filtros para la tabla `turnos_empleados`
--
ALTER TABLE `turnos_empleados`
  ADD CONSTRAINT `fk_empleado_turno1` FOREIGN KEY (`Numero_identificacion`) REFERENCES `empleados` (`Numero_identificacion`),
  ADD CONSTRAINT `fk_turno_empleado1` FOREIGN KEY (`id_turno`) REFERENCES `turnos` (`id_Turno`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_id_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_Rol`),
  ADD CONSTRAINT `fk_numero_identificacion` FOREIGN KEY (`numero_identificacion`) REFERENCES `empleados` (`Numero_identificacion`);

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `fk_id_labor` FOREIGN KEY (`id_labor`) REFERENCES `servicios` (`id_labor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
