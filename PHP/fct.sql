-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 05-06-2022 a las 15:31:40
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fct`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--
CREATE DATABASE fct;
USE fct;

CREATE TABLE `alumnos` (
  `NOMBRE` varchar(15) NOT NULL,
  `APELLIDOS` varchar(40) NOT NULL,
  `DNI` varchar(9) NOT NULL,
  `COD_ALUMNO` int(4) NOT NULL,
  `DIRECCION` varchar(20) NOT NULL,
  `POBLACION` varchar(20) NOT NULL,
  `PROVINCIA` varchar(20) NOT NULL,
  `TELEFONO` varchar(9) NOT NULL,
  `EMAIL` varchar(70) NOT NULL,
  `COD_PROFE` int(4) DEFAULT NULL,
  `GRUPO` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`NOMBRE`, `APELLIDOS`, `DNI`, `COD_ALUMNO`, `DIRECCION`, `POBLACION`, `PROVINCIA`, `TELEFONO`, `EMAIL`, `COD_PROFE`, `GRUPO`) VALUES
('Alejandro', 'Sánchez', '2222224A', 1, 'C/ CALLE 1', 'TALAVERA', 'TOLEDO', '418277671', 'alejandrosanchezsantos.asir2020@riberadeltajo.es', 1000, 'ASIR'),
('Alberto', 'Cabrera', '3222224A', 2, 'C/ CALLE 2', 'TALAVERA', 'TOLEDO', '475738205', 'albertocabreragil.asir2020@riberadeltajo.es', 1000, 'ASIR'),
('Carlos', 'Romo', '4625645A', 3, 'C/ CALLE 3', 'TALAVERA', 'TOLEDO', '150712248', 'carlosromodelallave.asir2020@riberadeltajo.es', 1000, 'ASIR'),
('Carlos', 'Vázquez', '4994913A', 4, 'C/ CALLE 4', 'TALAVERA', 'TOLEDO', '198137499', 'carlosvazquezlopez.asir2020@riberadeltajo.es', 1000, 'ASIR'),
('Daniel', 'Balmaseda', '9356794A', 5, 'C/ CALLE 5', 'TALAVERA', 'TOLEDO', '540091131', 'danielbalmasedaconejo.asir2020@riberadeltajo.es ', 1000, 'ASIR'),
('Daniel', 'Granados', '3273154A', 6, 'C/ CALLE 5', 'TALAVERA', 'TOLEDO', '819388628', 'danielgranadosrodriguez.asir2020@riberadeltajo.es ', 1000, 'ASIR'),
('Denis', 'Pogacias', '3662113A', 7, 'C/ CALLE 5', 'TALAVERA', 'TOLEDO', '363924972', 'denisalexandrupogacias.asir2020@riberadeltajo.es', 1000, 'ASIR'),
('Diego', 'Rubio', '6406311A', 8, 'C/ CALLE 5', 'TALAVERA', 'TOLEDO', '158710958', 'diegorubio_asir20@riberadeltajo.es', 1000, 'ASIR'),
('Eduardo', 'Romero', '3908847A', 9, 'C/ CALLE 5', 'TALAVERA', 'TOLEDO', '994228367', 'eduardoromero.asir2020@riberadeltajo.es', 1000, 'ASIR'),
('Paco', 'Hormigos', '2771526A', 10, 'C/ CALLE 5', 'TALAVERA', 'TOLEDO', '663919472', 'franciscohormigosbaltasar.asir2020@riberadeltajo.es', 1000, 'ASIR'),
('Francisco', 'De la Cruz', '6530971A', 11, 'C/ CALLE 5', 'TALAVERA', 'TOLEDO', '331948086', 'franciscojuliandelacruzruiz.asir2020@riberadeltajo.es', 1000, 'ASIR'),
('Francisco', 'Pardo', '8312705A', 12, 'C/ CALLE 6', 'TALAVERA', 'TOLEDO', '784420817', 'franciscopardocabeza.asir2020@riberadeltajo.es', 1000, 'ASIR'),
('Jaime', 'Villalba', '7453991A', 13, 'C/ CALLE 7', 'TALAVERA', 'TOLEDO', '740552486', 'jaimevillalbaruiz.asir2020@riberadeltajo.es', 1001, 'ASIR'),
('Jesús', 'Ocampos', '9898990A', 15, 'C/ CALLE 9', 'TALAVERA', 'TOLEDO', '771667126', 'jesusocamposjimenez.asir2020@riberadeltajo.es', 1001, 'ASIR'),
('Nabil', 'Koussal', '4378399A', 16, 'C/ CALLE 10', 'TALAVERA', 'TOLEDO', '376441786', 'nabilkoussal.asir2020@riberadeltajo.es', 1002, 'ASIR'),
('Naomi', 'Vilchez', '4679235A', 17, 'C/ CALLE 11', 'TALAVERA', 'TOLEDO', '582270658', 'naomifernandavilchezloayza.asir2020@riberadeltajo.es', 1002, 'ASIR'),
('Oscar', 'Muñoz', '8862255A', 18, 'C/ CALLE 12', 'TALAVERA', 'TOLEDO', '223677059', 'oscarmunozherrero.asir2020@riberadeltajo.es', 1002, 'ASIR'),
('Raúl', 'Gómez', '8444895A', 19, 'C/ CALLE 13', 'TALAVERA', 'TOLEDO', '963096337', 'raulgomez_asir20@riberadeltajo.es', 1002, 'ASIR'),
('Roberto', 'Martín', '6690874A', 20, 'C/ CALLE 14', 'TALAVERA', 'TOLEDO', '304943342', 'robertomartinparra.asir2020@riberadeltajo.es', 1002, 'ASIR'),
('Unai', 'Herrero', '9172737A', 21, 'C/ CALLE 15', 'TALAVERA', 'TOLEDO', '399830478', 'unaiherreromartin.asir2020@riberadeltajo.es', 1002, 'ASIR'),
('Victor', 'Sánchez', '3473947A', 22, 'C/ CALLE 16', 'TALAVERA', 'TOLEDO', '631007325', 'victorsanchez_asir20@riberadeltajo.es', 1002, 'ASIR'),
('Javier', 'Recuero', '7047994A', 24, 'C/ CALLE 8', 'TALAVERA', 'TOLEDO', '943795545', 'javierrecuerorueda.asir2020@riberadeltajo.es', 1001, 'ASIR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignar`
--

CREATE TABLE `asignar` (
  `COD_ESA` varchar(9) NOT NULL,
  `COD_ALUMNO` int(4) NOT NULL,
  `HORAS` int(3) NOT NULL,
  `FECHA_INI` date NOT NULL,
  `FECHA_FIN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `CIF` varchar(9) NOT NULL,
  `RAZON` varchar(20) NOT NULL,
  `TELEFONO` int(9) NOT NULL,
  `DIRECCION` varchar(40) NOT NULL,
  `POBLACION` varchar(40) NOT NULL,
  `PROVINCIA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`CIF`, `RAZON`, `TELEFONO`, `DIRECCION`, `POBLACION`, `PROVINCIA`) VALUES
('A58814598', 'QUETEL S.A.', 916559991, 'C/lopez de Hoyos 32', 'MADRID', 'MADRID\r\n'),
('A58818501', 'TELECOM S.L.', 925333455, 'C/Comercio 45', 'TALAVERA', 'TOLEDO\r\n'),
('C58818444', 'DEVELOPERS S.A. ', 925111334, 'c/ Templarios 201', 'TALAVERA', 'TOLEDO\r\n'),
('D58818555', 'ROOM S.L. ', 654789243, 'Avda. Pio XII 23', 'TALAVERA', 'TOLEDO\r\n'),
('F58818588', 'ADVANTAGE S.A. ', 670347801, 'Avda. Fco. Aguirre 2', 'TALAVERA', 'TOLEDO\r\n'),
('H58818999', 'SANIT S.L.', 546789635, 'Avda. Madrid 23', 'MADRD', 'MADRID\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutores_esa`
--

CREATE TABLE `tutores_esa` (
  `NOMBRE` varchar(15) NOT NULL,
  `APELLIDOS` varchar(30) NOT NULL,
  `DNI` varchar(9) NOT NULL,
  `ESPECIALIDAD` varchar(20) NOT NULL,
  `TELEFONO` varchar(9) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `CIF` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tutores_esa`
--

INSERT INTO `tutores_esa` (`NOMBRE`, `APELLIDOS`, `DNI`, `ESPECIALIDAD`, `TELEFONO`, `EMAIL`, `CIF`) VALUES
('LUCAS', 'BALTASAR DOMINGUEZ', '2222222A', 'SANIDAD', '925673459', 'lucasbaltasar@gmail.com', 'H58818999'),
('ROSARIO ', 'AMOR CARAVINA', '7777777A', 'INFORMATICA', '654789654', 'rosariolopez@gmail.com', 'C58818444'),
('JAVIER ', 'LOPEZ CUMBREROS', '8888888A', 'INFORMATICA', '768987987', 'javierlopez@gmail.com', 'A58818501'),
('IVAN ', 'LOZANO MANRIQUE', '8888888B', 'ADMINISTRACION', '654789713', 'ivanlozano@gmial.com', 'D58818555'),
('FRANCISCO', 'MORADO GOMEZ', '9999999C', 'ADMINISTRACION', '789567312', 'franmorado@gmail.com', 'F58818588');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutores_ies`
--

CREATE TABLE `tutores_ies` (
  `NOMBRE` varchar(20) NOT NULL,
  `APELLIDOS` varchar(40) NOT NULL,
  `COD_PROFE` int(4) NOT NULL,
  `PASSWORD` varchar(12) NOT NULL,
  `EMAIL` varchar(40) NOT NULL,
  `GRUPO` varchar(6) NOT NULL,
  `TELEFONO` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tutores_ies`
--

INSERT INTO `tutores_ies` (`NOMBRE`, `APELLIDOS`, `COD_PROFE`, `PASSWORD`, `EMAIL`, `GRUPO`, `TELEFONO`) VALUES
('', '', 0, '', '', '', '\r\n'),
('LIDIA', 'AMOR PINTADO', 1000, 'lidia', 'marialidiaamor@riberadeltajo.es', 'ASIR', '234567890'),
('VICTOR ', 'CÓRDOBA GARCÍA', 1001, 'victor', 'victorcordoba@riberadeltajo.es', 'SMR', '123654987'),
('MAMEN ', 'GARCIA LOPEZ', 1002, 'mamen', 'mamengarcia@riberadeltajo.es', 'DAW', '765987234'),
('NORMA ', 'ESTRADA ORTEGA', 1003, 'norma', 'normaortega@riberadeltajo.es', 'DAM', '333444555'),
('CARMEN', 'BARGUEÑO', 1004, 'carmen', 'carmenbargueño@riberadeltajo.es', 'ADE', '456781987');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(0, 'unai', '$2y$10$icbupPKJuBHNZIPGNfZDue6HMYYdxgdjTwpXprjxMTQlFFoKHBhpu', '2022-06-05 11:56:02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`COD_ALUMNO`),
  ADD KEY `COD_PROFE` (`COD_PROFE`);

--
-- Indices de la tabla `asignar`
--
ALTER TABLE `asignar`
  ADD PRIMARY KEY (`COD_ESA`,`COD_ALUMNO`),
  ADD KEY `COD_ESA` (`COD_ESA`),
  ADD KEY `COD_ALUMNO` (`COD_ALUMNO`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`CIF`);

--
-- Indices de la tabla `tutores_esa`
--
ALTER TABLE `tutores_esa`
  ADD PRIMARY KEY (`DNI`),
  ADD KEY `CIF` (`CIF`);

--
-- Indices de la tabla `tutores_ies`
--
ALTER TABLE `tutores_ies`
  ADD PRIMARY KEY (`COD_PROFE`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`COD_PROFE`) REFERENCES `tutores_ies` (`COD_PROFE`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `asignar`
--
ALTER TABLE `asignar`
  ADD CONSTRAINT `asignar_ibfk_2` FOREIGN KEY (`COD_ESA`) REFERENCES `empresas` (`CIF`) ON UPDATE CASCADE,
  ADD CONSTRAINT `asignar_ibfk_3` FOREIGN KEY (`COD_ALUMNO`) REFERENCES `alumnos` (`COD_ALUMNO`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tutores_esa`
--
ALTER TABLE `tutores_esa`
  ADD CONSTRAINT `tutores_esa_ibfk_1` FOREIGN KEY (`CIF`) REFERENCES `empresas` (`CIF`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
