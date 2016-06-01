-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-04-2016 a las 18:31:12
-- Versión del servidor: 5.7.9
-- Versión de PHP: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `studentland`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas_conocimiento`
--

DROP TABLE IF EXISTS `areas_conocimiento`;
CREATE TABLE IF NOT EXISTS `areas_conocimiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `areas_conocimiento`
--

INSERT INTO `areas_conocimiento` (`id`, `Nombre`) VALUES
(1, 'Agronomía, Veterinaria y afines'),
(2, 'Bellas Artes'),
(3, 'Ciencias de la Educación'),
(4, 'Ciencias de la Salud'),
(5, 'Ciencias Sociales y Humanas'),
(6, 'Economía, Administración, Contaduría y afines'),
(7, 'Ingeniería, Arquitectura, Urbanismo y afines'),
(8, 'Matemáticas y Ciencia Naturales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracter`
--

DROP TABLE IF EXISTS `caracter`;
CREATE TABLE IF NOT EXISTS `caracter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Caracter_institucion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `caracter`
--

INSERT INTO `caracter` (`id`, `Caracter_institucion`) VALUES
(1, 'Publica'),
(2, 'Privada'),
(3, 'Mixta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
CREATE TABLE IF NOT EXISTS `ciudades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Departamento` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `llf_ciudades` (`Departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id`, `Nombre`, `Departamento`) VALUES
(1, 'Apartadó', 2),
(2, 'Arauca', 3),
(3, 'Armenia', 24),
(4, 'Barbosa', 27),
(5, 'Barrancabermeja', 27),
(6, 'Barranquilla', 4),
(7, 'Bello', 2),
(8, 'Bogotá', 33),
(9, 'Bucaramanga', 27),
(10, 'Buenaventura', 30),
(11, 'Buga', 30),
(12, 'Cucuta', 22),
(13, 'Cali', 30),
(14, 'Cartagena', 5),
(15, 'Cartago', 30),
(16, 'Circasia', 24),
(17, 'Duitama', 6),
(18, 'El espinal', 29),
(19, 'Girardot', 14),
(20, 'Ibague', 29),
(21, 'Leticia', 1),
(22, 'Malaga', 27),
(23, 'Manizales', 7),
(24, 'Medellin', 2),
(25, 'Monteria', 13),
(26, 'Neiva', 18),
(27, 'Palmira', 30),
(28, 'Pasto', 21),
(29, 'Pereira', 25),
(30, 'Popayan', 10),
(31, 'Puerto Colombia', 4),
(32, 'Quibdo', 12),
(33, 'Riohacha', 16),
(34, 'Rionegro', 2),
(35, 'Roldanillo', 30),
(36, 'Santa Marta', 19),
(37, 'Sincelejo', 28),
(38, 'Socorro', 27),
(39, 'Tunja', 6),
(40, 'Valledupar', 11),
(41, 'Villavicencio', 20),
(42, 'Pamplona', 22),
(43, 'Florencia', 8),
(44, 'Fusagasuga', 14),
(45, 'Caucasia', 2),
(46, 'Puerto Berrio', 2),
(47, 'Segovia', 2),
(48, 'Yarumal', 2),
(49, 'El Carmen de Viboral', 2),
(50, 'Andes', 2),
(51, 'Santa Fe de Antioquia', 2),
(52, 'Piedecuesta', 27),
(53, 'San Andres', 26),
(54, 'Tumaco', 21),
(55, 'Guapi', 10),
(56, 'Puerto Asis', 23),
(57, 'La chorrera', 1),
(58, 'Sutatenza', 6),
(59, 'Sogamoso', 6),
(60, 'Chiquinquira', 6),
(61, 'Yopal', 9),
(62, 'Ocaña', 22),
(63, 'Sopó', 14),
(64, 'Villa del Rosario', 20),
(65, 'Chia', 14),
(66, 'Garzon', 18),
(67, 'La Plata', 18),
(68, 'Pitalito', 18),
(69, 'Aguachica', 11),
(70, 'Agustín Codazzi', 11),
(71, 'Cajica', 14),
(72, 'Floridablanca', 27),
(73, 'Envigado', 2),
(74, 'Dosquebradas', 25),
(75, 'Ubaté', 14),
(76, 'Chocontá', 14),
(77, 'Facatativá', 14),
(78, 'Soacha', 14),
(79, 'Zipaquirá', 14),
(80, 'Turbo', 2),
(81, 'Madrid', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE IF NOT EXISTS `departamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `Nombre`) VALUES
(1, 'Amazonas'),
(2, 'Antioquia'),
(3, 'Arauca'),
(4, 'Atlántico'),
(5, 'Bolívar'),
(6, 'Boyacá'),
(7, 'Caldas'),
(8, 'Caquetá'),
(9, 'Casanare'),
(10, 'Cauca'),
(11, 'Cesar'),
(12, 'Chocó'),
(13, 'Córdoba'),
(14, 'Cundinamarca'),
(15, 'Guainía'),
(16, 'Guajira'),
(17, 'Guaviare'),
(18, 'Huila'),
(19, 'Magdalena'),
(20, 'Meta'),
(21, 'Nariño'),
(22, 'Norte de Santander'),
(23, 'Putumayo'),
(24, 'Quindío'),
(25, 'Risaralda'),
(26, 'San Andrés y Providencia'),
(27, 'Santander'),
(28, 'Sucre'),
(29, 'Tolima'),
(30, 'Valle del Cauca'),
(31, 'Vaupés'),
(32, 'Vichada'),
(33, 'Bogotá D.C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas`
--

DROP TABLE IF EXISTS `jornadas`;
CREATE TABLE IF NOT EXISTS `jornadas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Jornada` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jornadas`
--

INSERT INTO `jornadas` (`id`, `Jornada`) VALUES
(1, 'Diurna'),
(2, 'Nocturna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidades`
--

DROP TABLE IF EXISTS `modalidades`;
CREATE TABLE IF NOT EXISTS `modalidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modalidad` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modalidades`
--

INSERT INTO `modalidades` (`id`, `modalidad`) VALUES
(1, 'Presencial'),
(2, 'semi-presencial'),
(3, 'virtual'),
(4, 'a distancia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles_formacion`
--

DROP TABLE IF EXISTS `niveles_formacion`;
CREATE TABLE IF NOT EXISTS `niveles_formacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nivel_formacion` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `niveles_formacion`
--

INSERT INTO `niveles_formacion` (`id`, `nivel_formacion`) VALUES
(1, 'Técnico profesional'),
(2, 'Tecnológico '),
(3, 'Profesional'),
(4, 'Especialización'),
(5, 'Maestría '),
(6, 'Doctorado'),
(7, 'Especialización Tecnica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nucleos_basicos_conocimiento`
--

DROP TABLE IF EXISTS `nucleos_basicos_conocimiento`;
CREATE TABLE IF NOT EXISTS `nucleos_basicos_conocimiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_conocimiento` int(11) NOT NULL,
  `nucleo_basico_conocimiento` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lf_nucleos_areas` (`area_conocimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nucleos_basicos_conocimiento`
--

INSERT INTO `nucleos_basicos_conocimiento` (`id`, `area_conocimiento`, `nucleo_basico_conocimiento`) VALUES
(1, 1, 'Agronomia'),
(2, 1, 'Zootecnia'),
(3, 1, 'Medicina veterinaria'),
(4, 2, 'Artes plasticas, visuales y afines'),
(5, 2, 'Otros programas asociados a bellas artes'),
(6, 2, 'Musica'),
(7, 2, 'Artes representativas'),
(8, 2, 'Publicidad y afines'),
(9, 2, 'Disenio'),
(12, 3, 'Educacion'),
(13, 4, 'Bacteriologia'),
(14, 4, 'Odontologia'),
(15, 4, 'Salud publica'),
(16, 4, 'Optometria, otros programas de ciencs de la salud'),
(17, 4, 'Nutricion y dietetica'),
(18, 4, 'Enfermeria'),
(19, 4, 'Terapias'),
(20, 4, 'Medicina'),
(21, 4, 'Instrumentacion quirurgica'),
(22, 5, 'Antropologia, artes liberales'),
(23, 5, 'Geografia, historia'),
(24, 5, 'Sociologia, trabajo social y afines'),
(25, 5, 'Filosofia, teologia y afines'),
(26, 5, 'Psicologia'),
(27, 5, 'Lenguas modernas, literatura, linguistica y afines'),
(28, 5, 'Formacion relacionada con el campo militar o pol.'),
(29, 5, 'Bibliotecologia, otros de ciencias sociales y hum.'),
(30, 5, 'Comunicación social, periodismo y afines'),
(31, 5, 'Deportes, educacion fisica y recreacion'),
(32, 5, 'Derecho y afines'),
(33, 5, 'Ciencia politica, relaciones internacionales'),
(34, 6, 'Administracion'),
(35, 6, 'Contaduria publica'),
(36, 6, 'Economia'),
(37, 7, 'Arquitectura'),
(38, 7, 'Ingenieria agronomica, pecuaria y afines'),
(39, 7, 'Ingenieria de minas, metalurgia y afines'),
(40, 7, 'Otras ingenierias'),
(41, 7, 'Ingenieria quimica y afines'),
(42, 7, 'Ingenieria mecanica y afines'),
(43, 7, 'Ingenieria industrial y afines'),
(44, 7, 'Ingenieria electronica, telecomunicaciones y afin'),
(45, 7, 'Ingenieria electrica y afines'),
(46, 7, 'Ingenieria de sistemas, telematica y afines'),
(47, 7, 'Ingenieria civil y afines'),
(48, 7, 'Ingenieria agroindustrial, alimentos y afines'),
(49, 7, 'Ingenieria biomedica y afines'),
(50, 7, 'Ingenieria ambiental, sanitaria y afines'),
(51, 7, 'Ingenieria agricola, forestal y afines'),
(52, 7, 'Ingenieria admnistrativa y afines'),
(53, 8, 'Biologia, microbiologia y afines'),
(54, 8, 'Fisica'),
(55, 8, 'Geologia, otros programas de ciencias naturales'),
(56, 8, 'Quimica y afines'),
(57, 8, 'Matematicas, estadistica y afines');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programas`
--

DROP TABLE IF EXISTS `programas`;
CREATE TABLE IF NOT EXISTS `programas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Universidad` int(11) NOT NULL,
  `Sede` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `codigo_SNIES` varchar(50) NOT NULL,
  `nucleo_basico_conocimiento` int(11) NOT NULL,
  `nivel_formacion` int(11) NOT NULL,
  `costos` double DEFAULT NULL,
  `numero_semestres` int(11) DEFAULT NULL,
  `modalidad` int(11) NOT NULL,
  `Jornada` int(11) NOT NULL,
  `fecha_admisiones` date DEFAULT NULL,
  `Correo_contacto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lf_programas_universidades` (`Universidad`),
  KEY `llf_universidades_sedes` (`Sede`),
  KEY `llf_universidades_nivel` (`nivel_formacion`),
  KEY `llf_universidades_modalidades` (`modalidad`),
  KEY `llf_universidades_jornadas` (`Jornada`),
  KEY `llf_programas_nucleos` (`nucleo_basico_conocimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

DROP TABLE IF EXISTS `sedes`;
CREATE TABLE IF NOT EXISTS `sedes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `universidad` int(11) NOT NULL,
  `ciudad` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `llf_sedes_universidad` (`universidad`),
  KEY `llf_sedes_ciudades` (`ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=412 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`id`, `universidad`, `ciudad`, `Nombre`, `Direccion`) VALUES
(1, 1, 8, 'Sede Claustro', 'Calle 12c No 6- 25'),
(2, 1, 8, 'Quinta de Mutis', 'Carrera 24 N° 63C-69'),
(3, 1, 8, 'Sede Norte', 'Calle 200 entre Autopista Norte y Cra 7ma.'),
(4, 1, 8, 'Red Hospitalaria Méderi', 'Calle 24 No. 29 -45'),
(5, 2, 8, 'SECTOR CAMPUS DE LOS CERROS', 'Avda. Circunvalar No. 20-53'),
(6, 2, 8, 'SECTOR HISTÓRICO DE LA CANDELARIA', 'Cll. 10 # 6-44'),
(7, 2, 8, 'SECTOR NORTE', 'Calle 106 No. 19-18'),
(10, 3, 24, 'Medellín', 'calle 67 No. 53 - 108'),
(13, 3, 45, 'Bajo Cauca', 'Calle 22, No. 20-84 - Entrada contigua al Vivero Municipal.'),
(14, 3, 46, 'Magdalena Medio', 'Barrio el Cacique Antiguo Campamento de Obras Públicas, vía salida a Medellín.'),
(15, 3, 47, 'Nordeste', 'Unidad Educativa Escuela La Salada'),
(16, 3, 48, 'Norte', 'Carrera 21 # 19-21 '),
(17, 3, 51, 'Occidente', 'Calle 9 Nº 7-36'),
(18, 3, 49, 'Oriente', 'Km 6, vía Rionegro - La Ceja '),
(19, 3, 50, 'Suroeste', 'Km. 4, salida hacia Medellín, vereda Campamento'),
(20, 3, 1, 'Urabá', 'vía Apartadó – Carepa Km 1'),
(21, 4, 8, ' Sede Principal', 'Carrera 4 # 22-61'),
(22, 4, 14, 'Seccional Caribe', 'Calle de la Chichería # 38-42'),
(23, 4, 14, 'Cartagena - Campus', ' Kilómetro 13 Anillo Vial'),
(24, 4, 36, 'Santa Marta', 'Carrera 2 # 11 - 68 Edificio Mundo Marino'),
(25, 5, 6, 'Sede centro', 'carrera 43 entre calles 50 y 51'),
(26, 5, 6, 'Sede Facultad de Bellas Artes', 'calle 68 entre carrera 53 y carrera 54'),
(27, 5, 6, 'Ciudadela universitaria - Sede norte', ' km 7 antigua vía Puerto Colombia'),
(28, 6, 23, 'Sede principal', 'Calle 65 #26-10'),
(29, 6, 23, 'Sede Bellas Artes', 'Carrera 21 No 13-02 Av 12 de Octubre'),
(30, 6, 23, 'Sede Palogrande', 'Carrera 23 No 58-65'),
(31, 6, 23, 'Sede Sancancio', 'Carrera 35 No 62-160'),
(32, 6, 23, 'Sede Versalles', 'Carrera 25 No 48-57'),
(33, 7, 14, 'Claustro de San Agustín', 'Centro Cra. 6 # 36-100'),
(34, 7, 14, 'Campus Piedra de Bolívar', 'Cll. 30 # 49b-142'),
(35, 7, 14, 'Campus de Zaragocilla', 'Carrera 50 No. 29 - 11'),
(36, 7, 14, 'Campus de San Pablo', ''),
(37, 7, 14, 'Campus Claustro La Merced', ''),
(38, 8, 30, 'Claustro de Santo Domingo', 'carrera 5ª entre calles 4ª y 5ª'),
(39, 8, 30, 'Campus del Tulcán', ''),
(40, 8, 30, ' Claustro del Carmen', 'calle 4ª Nº 3-56'),
(41, 8, 30, 'Facultad de Artes', 'carrera 6ª con calle 3ª'),
(43, 9, 24, 'Ciudadela universitaria de Belén los Alpes', ' Carrera 87 N° 30 - 65'),
(44, 10, 28, ' Ciudad Universitaria Torobajo ', 'Clle 18 Cr 50'),
(45, 10, 28, 'Sede las Acacias', 'Carrera 36 No. 5-121 Las Acacias '),
(46, 11, 20, 'Sede Central', 'Barrio Santa Helena Parte Alta'),
(47, 11, 20, 'Sede Sur', 'Barrio Miramar'),
(48, 12, 13, 'Ciudad Universitaria Meléndez', 'Calle 13 No 100-00'),
(49, 12, 13, 'Sede San Fernando', 'Calle 4B No 36-00'),
(50, 13, 8, 'Sede Central', 'Carrera 7 No. 40B - 53'),
(51, 13, 8, 'Sede Macarena A', 'Carrera 3 No. 26 A - 40 '),
(52, 13, 8, 'Macarena B', 'Carrera 4 No. 26 B - 54'),
(53, 13, 8, 'Sede Tecnológica', 'Calle 68D Bis A Sur No. 49F-70'),
(54, 13, 8, 'Sede el Vivero', 'Carrera 5 Este No 15-82'),
(55, 13, 8, 'Sede Posgrados de Ciencias y Educación', 'Calle 64 A No 30-05'),
(56, 13, 8, 'Facultad De Artes ASAB', 'Carrera 13 No. 14 - 69'),
(57, 13, 8, 'Sede Academia Luis A. Calvo - ALAC', 'Carrera 9 No. 52 - 52'),
(58, 13, 8, 'Sede calle 34', 'Cll 34 No. 13 - 15'),
(59, 14, 8, 'El Externado de Colombia', 'Calle 12 n.° 1-17 Este'),
(60, 15, 8, 'Sede central Bogotá', 'Cra. 6 No. 12 B 40'),
(61, 15, 3, 'Sede Central Armenia', 'Avenida Bolívar No 7 - 46'),
(62, 15, 8, 'Sede de Ingeniería', 'Calle 42 A N° 8 - 10 '),
(63, 15, 3, 'Sede Campus', 'Km. 7 vía Armenia - La Tebaida'),
(64, 15, 3, 'Sede Norte', 'Cra 14 # 5 - 29  Tel: 7462646'),
(65, 15, 8, 'INGENIERÍA CIVIL', 'Carrera 9 Nº. 42 a -22 '),
(66, 15, 8, 'CAMPUS SANTA MÁRIA ', 'Km. 23 Autopista Norte via Sopó'),
(67, 85, 9, 'Campus Principal', 'Cra 27 Calle 9 Ciudad Universitaria'),
(68, 85, 9, 'Facultad de Salud ', ' Carrera 32'),
(69, 85, 9, 'Sede Bucarica', 'Carrera 27-680002'),
(70, 85, 4, 'Sede Barbosa', 'Kilómetro 1 vía antigua al corregimiento de Cite\r\n'),
(71, 85, 5, 'Sede Barrancabermeja', 'Carrera 28 #62-50'),
(72, 85, 22, 'Sede Malaga', 'Malaga, santander'),
(73, 85, 38, 'Sede Socorro', 'UIS socorro'),
(74, 85, 52, 'Sede Piedecuesta', 'Parque Tecnológico de Guatiguará '),
(85, 16, 6, 'Sede Principal Barranquilla', 'Km. 7 Antigua Via a Puerto Colombia'),
(86, 16, 6, 'Sede Centro ', 'Carrera 46 No.48-170'),
(87, 16, 8, 'Sede Bogotá', 'Calle 8a No. 5-80'),
(88, 16, 13, 'Sede Cali', 'Diagonal 37A No. 3 -29'),
(89, 16, 14, 'Sede Cartagena', 'Pie de la Popa, Calle Real N° 20 - 177'),
(90, 16, 12, 'Sede Cucuta', 'venida 4ta 12N-81 El Bosque'),
(91, 16, 29, 'Sede centro', 'Calle 40 # 7 - 30'),
(92, 16, 29, 'Campus Universitario', 'Belmonte Avenida Las Américas'),
(93, 16, 38, 'Sede Socorro', 'Socorro, Santander'),
(94, 17, 8, 'Sede Bogota', 'Dirección: Cra 45, Bogotá'),
(95, 17, 21, 'Sede Amazonia', 'Avenida Vasquez Cobo'),
(96, 17, 23, 'Sede Manizales', 'Cra 27 # 64-60'),
(97, 17, 24, 'Sede Medellin', 'Calle 59 A N 63-20'),
(98, 17, 2, 'Sede Orinoquia', 'Kilómetro 9 vía a Caño Limón '),
(99, 17, 27, 'Sede Palmira', 'Carrera 32 No 12 - 00 Chapinero, Vía Candelaria'),
(100, 17, 53, 'Sede Caribe', 'Carr. circulv. San Luis Feetown # 52-44'),
(101, 17, 54, 'Sede Tumaco', 'Tumaco'),
(102, 18, 8, 'Sede Principal', ' Calle 72 No. 11-86'),
(103, 18, 58, 'Valle de Tenza', 'Carrera 5 No. 2 - 57'),
(104, 18, 55, 'Guapi', 'Normal superior La Inmaculada de Guapi'),
(105, 18, 57, 'La chorrera', 'Colegio Indígena Casa del Conocimiento, La Chorrera Predio Putumayo. Amazonas'),
(106, 18, 56, 'Puerto Asís', 'Puerto Asís Putumayo'),
(107, 19, 8, 'Casa Bogotá  ', 'Carrera 14 No. 44-51 '),
(108, 19, 17, 'Sede Duitama', 'Carrera18 con Calle 22 '),
(109, 19, 59, 'Sede Sogamoso', 'Calle 4 Sur No.15 -134 '),
(110, 19, 60, 'Sede Chiquinquira', 'Calle 14 A Nº 2-37'),
(111, 19, 39, 'Sede Central ', 'Avenida Central del Norte 39-115 '),
(112, 20, 8, 'Sede Principal', 'Carrera 7 No. 40 - 62'),
(113, 20, 13, 'Sede Cali', 'calle 18 No 118-250 '),
(114, 21, 24, 'Campus Laureles', 'Circular 1 No. 70-01'),
(115, 21, 24, 'Campus Robledo', 'Calle 78b No. 72a-109'),
(116, 21, 24, 'Campus El Poblado ', 'Carrera 43 C # 5-173'),
(117, 21, 9, 'Sede Bucaramanga', 'Km. 7 via Piedecuesta'),
(118, 21, 25, 'Sede Monteria', 'Cra. 6 No. 97 A - 99 '),
(119, 21, 27, 'Sede Palmira', 'Kilometro 1 Vía Tienda Nueva'),
(120, 21, 8, 'Sede Bogota', 'Avenida Boyacá # 169 D - 75, San José de Bavaria'),
(121, 22, 13, 'Campus Pampalinda', 'Calle 5 # 62-00 Barrio Pampalinda'),
(122, 22, 13, 'Sede Centro ', 'Carrera 8 # 8-17 Barrio Santa Rosa'),
(123, 22, 27, 'Seccional Palmira', 'Carrera 30 con Calle 38 esquina Barrio Alfonso López\r\n'),
(124, 23, 29, 'UTP', 'Carrera 27 #10-02 Barrio Alamos'),
(125, 24, 25, 'UNICORDOBA', 'Km. 3 via Cereté'),
(126, 25, 35, 'UNIMAGDALENA', 'Carrera 32 No 22 - 08'),
(127, 26, 3, 'Ciudad Universitaria de Armenia', 'Carrera 15 Calle 12 Norte'),
(128, 27, 8, 'Sede Candelaria', 'Carrera 2 #10-70'),
(129, 27, 8, 'Sede Chapinero', 'Carrera 5 #59a-44'),
(130, 27, 8, 'Sede Norte', 'Cra. 7 No-172-85'),
(131, 27, 61, 'Sede Utopia', ''),
(132, 28, 8, 'Sede Principal', 'Carrera 9 No. 51 - 11'),
(133, 28, 8, 'Sede de Lourdes', 'Carrera 9A No. 63 - 28'),
(134, 28, 8, 'Campus San Alberto Magno', 'Autopista Norte, Av. los Arrayanes Km. 1.6'),
(135, 28, 9, 'Campus Bucaramanga', 'Cra. 18 #9-27'),
(136, 28, 9, 'Campus Floridablanca', 'Cl. 197 #180 - 385'),
(137, 28, 9, 'Campus el Limonal', 'Km 14 via piedecuesta'),
(140, 28, 24, 'Sede Medellin', 'Cl. 77bb #80-56'),
(141, 28, 39, 'Sede Centro', 'Cll. 19 Nº 11 - 64 '),
(142, 28, 39, 'Sede Campus', 'Av. Universitaria Cll. 48 No. 1-235 este.'),
(143, 28, 41, 'Campus Aguas Claras', ' Carrera 22 con Calle 1a Vía Puerto López. '),
(144, 28, 41, 'Campus Loma Linda ', 'Carrera 48 N° 19 - 05 Sur Vía Acacías'),
(145, 29, 12, 'Sede Cucuta', 'Avenida Gran Colombia #12E-96'),
(146, 29, 12, 'Campos  Elisios', 'Vía Los Patios'),
(147, 29, 12, 'Finca San  Pablo', 'Corregimiento el Diamante, Vereda Urengue, Municipio Chinácota'),
(148, 29, 62, 'Seccional  Ocaña', 'Vía Acolsure, Sede el Algodonal Ocaña'),
(149, 30, 24, 'Campus Medellin', 'Carrera 49 # 7 sur 50.'),
(150, 30, 8, 'EAFIT Bogota', 'Carrera 16 # 93-46'),
(151, 30, 29, 'EAFIT Pereira', 'Carrera 19 #12-70'),
(152, 30, 34, 'EAFIT Llanogrande', 'Km 3.5 vía Don Diego'),
(153, 31, 8, 'SEDE BOGOTÁ', 'Carrera 13 No. 24-15 '),
(154, 31, 14, 'SEDE CARTAGENA', 'Calle 30 # 18B-17 Pie del Cerro'),
(155, 31, 63, 'SEDE SOPO', 'Calle 1 No. 2-49'),
(156, 31, 40, 'SEDE FUSAGASUGA', 'Trv. 12 No. 16bis-56 Barrio Balmoral'),
(157, 32, 6, 'Campus Ciudad', 'Km.5 Vía Puerto Colombia'),
(158, 33, 42, 'Campus Pamplona', 'Ciudad Universitaria'),
(159, 33, 12, 'Campus Cúcuta', 'Calle 5 No. 2-38 Barrio Latino'),
(160, 33, 64, 'Campus Villa del Rosario', 'Ciudad Universitaria de la Frontera Autopista Internacional Vía Los Álamos Villa Antigua'),
(161, 34, 8, 'USB Bogotá', 'Carrera 8 H n 172-20'),
(162, 34, 24, 'USB Medellin', 'Carrera 56C N° 51-110 Centro'),
(163, 34, 7, 'USB Campus Universitario', 'Calle 45 N° 61-40 Barrio Salento'),
(164, 34, 13, 'USB Cali', 'Avenida 10 de Mayo, La Umbría, Vía a Pance'),
(165, 34, 14, 'USB Cartagena', 'Calle Real de Ternera No. 30-966'),
(166, 35, 14, 'Escuela Naval de Cadetes "Almirante Padilla"', 'Barrio Bosque, Sector Manzanillo'),
(167, 36, 65, 'Campus del Puente del Común', 'Km. 7, Autopista Norte de Bogotá'),
(168, 37, 26, 'Subsede Central', 'Avenida Pastrana Borrero - Carrera 1'),
(169, 37, 26, 'Subsede Torre Administrativa y Postgrados', 'Cra.5 No. 23-40'),
(170, 37, 26, 'Subsede Salud', 'Calle 9 carrera 4'),
(171, 37, 66, 'Sede Garzón', 'Carrera 3 No.1-31 vía Las Termitas'),
(172, 37, 67, 'Sede La Plata', 'Kilómetro 1 vía a Fátima'),
(173, 37, 68, 'Sede Pitalito', 'Km 1 vía Vereda El Macal'),
(174, 38, 8, 'Sede Centro', 'calle 21 n.º 4-40'),
(175, 38, 8, 'Sede Norte', 'calle 75 N.º 16-03'),
(176, 39, 28, 'UNIVERSIDAD MARIANA', 'Calle 18 # 34 - 104'),
(177, 40, 6, 'Sede Barranquilla', 'Calle 90 #46-112'),
(178, 40, 62, 'Sede Ocaña', 'Calle 12 # 9-77'),
(179, 41, 29, 'Universidad Católica de Pereira', 'Carrera 21 No. 49-95 Av. de las Américas'),
(180, 42, 23, 'Universidad de Manizales', 'Cra 9a # 19-03 Campo Hermoso'),
(181, 43, 14, 'Campus Casa Lemaitre', 'Calle del Bouquet Cra. 21 No 25-92, barrio Manga'),
(182, 43, 14, 'Campus Tecnologico', 'Parque Industrial y Tecnológico Carlos Vélez Pombo, Km 1 Vía Turbaco'),
(189, 44, 40, 'Sede Campus Sabanas', 'Balneario Hurtado Vía a Patillal'),
(190, 44, 69, 'Seccional Aguachica', 'Kra. 40 Vía al mar'),
(191, 45, 8, 'El Nogal', 'Cl. 79 nº. 11 - 45'),
(192, 45, 8, 'Av. Chile', 'Cl. 71 nº. 9 - 84'),
(193, 46, 13, 'Universidad Icesi', 'Calle 18 No. 122-135 Pance'),
(194, 47, 8, 'SEDE PRINCIPAL ', 'CALLE 28 No. 5B-02'),
(195, 47, 8, 'SEDE II - CURSOS DE EXTENSIÓN', 'Carrera 20 No. 37-53'),
(196, 47, 8, 'SEDE III - FACULTAD DE DERECHO ', 'Calle 34 No. 6-56'),
(197, 47, 8, 'SEDE IV FACULTAD INGENIERíA Y ARQUITECTURA ', 'Calle 34 No. 5-45'),
(198, 47, 8, 'SEDE VII POSGRADOS ', 'Calle 34 N. 5-71'),
(199, 47, 19, 'SEDE GIRARDOT ', 'Kilómetro 3 Carretera Girardor - Bogotá'),
(200, 48, 8, 'Sede calle 100 ', 'Carrera 11 No.101-80'),
(201, 48, 8, 'Sede Facultad de Medicina', 'Transversal 3ra. No 49-00'),
(202, 48, 71, 'Campus Nueva Granada', 'Kilometro 2 Vía Cajicá-Zipaquira, Costado Oriental'),
(203, 49, 9, 'Campus El Jardin', ' Avenida 42 No 48 - 11 Altos de Cabecera'),
(204, 49, 72, 'Campus El Bosque', 'Calle 157 No. 14 - 55'),
(205, 49, 9, 'Centro de Servicios Universitarios - CSU', 'Carrera 47 # 53-78 Barrio Terrazas'),
(206, 49, 9, 'Campus El Tejar', 'Circunvalar 35 No.92-135 Tejar Moderno'),
(207, 50, 23, 'Universidad Católica de Manizales', 'Carrera 23 No. 60 - 63 '),
(208, 51, 13, 'Campus Valle del Lilí ', 'Cll 25# 115-85 Km 2 vía Cali-Jamundí'),
(209, 52, 20, 'Sede Principal', 'Carrera 22 Calle 67 B/Ambalá'),
(210, 52, 20, 'Sede Centro Técnico y Tecnológico San José', 'Carrera 5 No. 18 - 55 B/ El Carmen'),
(211, 53, 8, 'Escuela de Cadetes de Policía General Santander', 'Avenida NQS entre la carrera 48 y transversal 42'),
(212, 54, 8, 'Casa de Cuervo', 'Calle 10 N. 4-69'),
(213, 54, 65, 'Hacienda Yerbabuena-Casa Marroquín', 'Autopista Norte. Kilómetro 9 más 300 metros'),
(214, 55, 8, 'Sede Bogotá ', 'Carrera 9 No. 45A - 44'),
(215, 55, 19, 'Seccional Alto Magdalena', 'Carrera 19 No. 17 - 23'),
(216, 56, 24, 'Campus El Poblado ', 'Calle 10 A No. 22 - 04'),
(217, 56, 8, 'Sede Bogotá', 'Carrera 15 N° 93-75'),
(218, 56, 73, 'Sede Envigado', 'Calle 36 D Sur Km 4'),
(249, 57, 8, 'Sede Las Torres ', 'Avenida Caracas # 46 – 72'),
(250, 57, 8, 'Sede 4 ', 'Carrera 13 # 47 – 30'),
(251, 57, 8, 'Sede Claustro ', 'Diagonal 46 A # 15 B – 10'),
(252, 57, 8, 'Sede Carrera 13 ', 'Carrera 13 # 47 – 49'),
(253, 57, 8, 'Casa Extensión ', 'Diagonal 46 # 15 B 18'),
(254, 57, 8, 'Facultad de Derecho Consultorio jurídico', 'Carrera 13 # 46 – 61'),
(255, 57, 8, 'Unidad de Servicios Psicológicos', 'Calle 35 # 20 – 32'),
(256, 57, 8, 'Facultad de Psicología', 'Avenida Caracas # 46 – 22\r\n'),
(257, 57, 20, 'Sede Ibagué ', 'Carrera 4 # 7 – 26 local 1, edificio El Edén, barrio La Pola.'),
(258, 57, 26, 'Sede Neiva ', 'Calle 10 # 6 – 61.'),
(259, 58, 41, 'Campus sede Barcelona', 'Kilómetro 12 via a Puerto López Vereda Barcelona'),
(260, 58, 41, 'Campus sede San Antonio', 'Calle 37 No. 41-02 Barzal'),
(261, 58, 41, 'Campus sede El Emporio', 'Calle 40 A No. 28-32 Emporio'),
(262, 59, 39, 'Campus Universitario Tunja', 'Carrera 2ª Este No. 64 - 169'),
(263, 59, 59, 'Sede Sogamoso', 'Carrera 11 No. 26 - 18'),
(264, 59, 61, 'Sede Yopal', 'Carrera 19 No. 7 - 44'),
(265, 59, 60, 'Sede Chiquinquira', 'Carrera 6 No. 9 – 58'),
(266, 60, 8, 'Campus Norte ', 'Calle 222 No. 55-37'),
(267, 60, 8, 'Sede Avenida Boyacá ', 'Avenida Boyacá No. 66 A – 61'),
(268, 60, 8, 'Sede calle 72 ', 'Calle 72 No. 14 – 20'),
(269, 60, 14, 'Sede Cartagena ', 'Avenida Pedro de Heredia Calle 31 No. 18b – 17'),
(270, 61, 8, 'Campus Bogota', 'Av. Cra 9 No. 131 A - 02 Usaquen'),
(271, 61, 65, 'Campus Chia', 'Km. 20 Autopista Norte - Costado Occidental '),
(272, 62, 41, ' CAMPUS SAN FERNANDO', 'Carrera 32 # 34B-26 San Fernando'),
(273, 63, 43, 'Sede Centro', 'Calle 5b #14a-1 a 14a-101'),
(274, 63, 43, 'Sede principal', 'Calle 17 Diagonal 17 con Carrera 3F - Barrio Porvenir'),
(275, 63, 43, 'Sede Social', 'Via Charcoazul'),
(276, 63, 43, 'Granja Experimental Santo Domingo', ''),
(277, 63, 43, 'Centro de Investigaciones Macagual', ''),
(278, 63, 21, 'Sede Leticia', 'Carrera 3 #10-2 a 10-192'),
(279, 64, 8, 'Sede Nacional ', 'Calle 44 No 53-37 CAN'),
(280, 64, 24, 'Sede Medellin', 'Cl 57 No. 45 – 83'),
(281, 64, 6, 'Sede Barranquilla', 'Cra 50 No. 55-128'),
(282, 64, 14, 'Sede Cartagena', 'Avda Pedro de Heredia, Sector el Espinal\r\nCll 32 No. 18C 192 (Antigua Sede Electrocosta)'),
(283, 64, 39, 'Sede Tunja', 'Av Oriental 9-13'),
(284, 64, 23, 'Sede Manizales', 'Cl 64 No. 30 – 29 Vía Fátima'),
(285, 64, 30, 'Sede Popayan', 'Carrera 5 No. 53N – 249'),
(286, 64, 44, 'Sede Fusagasuga', 'Cra 2 No. 20 – 02'),
(287, 64, 26, 'Sede Neiva', 'Calle 18 5ª – 15'),
(288, 64, 41, 'Sede Villavicencio', 'Cra 31 A No. 34 A – 23 San Fernando'),
(291, 64, 28, 'Sede Pasto', 'Calle 14 número 24-42'),
(292, 64, 12, 'Sede Cucuta', 'Avenida 12E Calle 1N Quinta Oriental'),
(293, 64, 74, 'Sede Pereira', 'Cra 7 No. 9 – 64  Sector la Badea '),
(294, 64, 9, 'Sede Bucaramanga', 'Cra 28 No. 31 – 07'),
(295, 64, 20, 'Sede Ibague', 'Cl 33 No. 8 – 142 Barrio Gaitán'),
(296, 64, 13, 'Sede Cali', 'Avda 2 Bis No. 24AN – 25 y 31'),
(297, 65, 8, 'Sede Sur  ', 'Calle 22 Sur No. 12D-81'),
(298, 65, 8, 'Sede Federmán ', 'Calle 58A # 37-94'),
(299, 65, 8, 'Sede Circunvalar ', 'Carrera 3 Este # 47A - 15'),
(300, 65, 8, 'Sede Ibérica ', 'Carrera 7 # 16-75'),
(301, 65, 3, 'Sede Armenia ', 'Avenida Bolívar 49 Norte 30'),
(302, 65, 9, 'Sede Bucaramanga  ', 'Calle 32 # 27-63'),
(303, 65, 10, 'Sede Buenaventura', 'Av. Simón Bolívar 47c-70 casa de Encuentro Heriberto Yepes “Bagnoregio” entrada por el seminario'),
(304, 65, 11, 'Sede Buga', 'Callejón Lechugas Salida Norte Buga - Tuluá'),
(305, 65, 13, 'Sede Norte ', 'Calle 15 N # 6N-36'),
(306, 65, 13, 'Sede Sur ', 'Kilómetro 18 vía Jamundí'),
(307, 65, 14, 'Sede Cartagena ', 'Avenida Crisanto Luque Diagonal 22 # 48A-64'),
(308, 65, 15, 'Sede Cartago ', 'Calle 11 # 2-33'),
(309, 65, 12, 'Cúcuta ', 'Avenida 4 # 15-88 La Playa'),
(310, 65, 17, 'Duitama ', 'Transversal 29 No 9C-46/56'),
(311, 65, 20, 'Sede Ibagué ', 'Carrera 10 # 17-35 barrio Ancón'),
(312, 65, 21, 'Sede Leticia ', 'Carrera 11 # 5-92'),
(313, 65, 23, 'Sede Manizales ', 'Kilómetro 4 antigua Vía a Chinchiná'),
(314, 65, 24, 'Sede Medellín ', 'Calle 52 # 40-88 Avenida La Playa'),
(315, 65, 26, 'Sede Buganviles ', 'Calle 19 entre 42 y 43'),
(316, 65, 26, 'Sede Altico ', 'Calle 7 # 13-27'),
(317, 65, 27, 'Sede Palmira ', 'Avenida 46 con carrera 47 Campus Universitario'),
(318, 65, 28, 'Sede Pasto ', 'Carrera 22B # 5 sur A – 15 barrio Agualongo'),
(319, 65, 29, 'Sede Pereira ', 'Calle 17 # 26-41'),
(320, 65, 30, 'Sede Popayán ', 'Calle 53 # 9N – 35'),
(321, 65, 31, 'Sede Puerto Colombia ', 'Carrera 51B Kilómetro 7'),
(322, 65, 32, 'Sede Quibdó', 'Carrera 1 # 30-64 frente al parque Manuel Mosquera Garcés'),
(323, 65, 30, 'Sede Riohacha ', 'Kilómetro 1 vía Maicao'),
(324, 65, 35, 'Sede Roldanillo ', 'Glorieta Principal vía Zarzal – Roldanillo'),
(325, 65, 36, 'Santa Marta ', 'Avenida Libertador # 13-55'),
(326, 65, 39, 'Sed Tunja ', 'Carrera 7 # 21-84'),
(327, 65, 40, 'Sede Valledupar ', 'Avenida Azúcar Buena diagonal al Pabellón de la Popa'),
(328, 65, 41, 'Sede Villavicencio ', 'Kilómetro 1 vía Puerto López vereda La Cecilia'),
(329, 66, 6, 'Unimetro', 'Calle 76 No 42-78 '),
(330, 67, 8, 'Sede Bogota', 'CALLE 74 # 14-14'),
(331, 67, 36, 'Campus Centro ', 'Calle 18 # 14 A – 18'),
(332, 67, 36, 'Campus Rodrigo Noguera Laborde ', 'Carrera 29 D # 30 - 207'),
(333, 67, 6, 'Sede Barranquilla', 'CRA. 58 # 68 – 91 BARRIO EL PRADO'),
(334, 68, 23, 'Campus UAM', 'Antigua Estación del Ferrocarril'),
(335, 69, 44, 'Sede Principal Fusagasugá', 'Diagonal 18 No. 20-29'),
(336, 69, 19, 'Seccional Girardot', 'Diag. 18 No. 20-29'),
(337, 69, 75, 'Seccional Ubaté', 'Calle 6 No. 9-80'),
(338, 69, 65, 'Estensión Chia', 'Vereda Bojacá-Diosa'),
(339, 69, 76, 'Extensión Chocontá', 'Cra 3 No. 5-71'),
(340, 69, 77, 'Extensión Facatativá', 'Calle 14 Avnda. 15'),
(341, 69, 78, 'Extensión Soacha', 'Diag. 6 BIS. No. 5-95'),
(342, 69, 79, 'Extensión Zipaquirá', 'Cra. 7 No. 1-31'),
(343, 70, 6, 'Sede Principal ', 'Carrera 59 No. 59-92'),
(344, 70, 6, 'Sede Posgrados ', 'Carrera 54 No. 64-222'),
(345, 70, 12, 'Extensión Cúcuta ', 'Av 3 No. 13-34 La Play'),
(346, 71, 8, 'Escuela Colombiana de Ingenieria Julio Garavito', 'AK.45 No.205-59 (Autopista Norte)'),
(347, 72, 73, 'Sede de Las Palmas', 'km 2 + 200 Vía al Aeropuerto José María Córdova'),
(348, 72, 73, 'Sede de Zúñiga', 'Calle 25 Sur 42-73'),
(349, 73, 8, 'Sede Bogota- Candelaria', 'Calle 12B No. 4 - 31'),
(350, 73, 36, 'Sede Santa Marta', 'Avenida del Libertador'),
(351, 74, 25, 'Campus Elías Bechara Zainúm ', 'Cra. 1w No. 38-153, 4536534, Barrio Juan XXIII'),
(352, 74, 14, 'Plaza Colón  ', 'Avenida al Bosque transversal 54 N° 30 - 729 '),
(353, 74, 14, 'Campus Santillana ', 'Avenida al Bosque transversal 54 No 30 - 453'),
(354, 74, 14, 'Pie de la Popa ', 'Pie de la popa, Cll 30 N° 20 - 88'),
(355, 74, 14, 'Clínica Odontológica Cartagena de Indias  ', 'Av. Pedro de Heredia, Sector Maria Auxiliadora Cll 30 No 39 - 175 Barrio Amberes '),
(356, 74, 8, 'Extensión Bogotá', 'Carrera 6 # 118 - 60 parque de Usaquén'),
(357, 75, 9, 'Campus Lagos del Cacique', 'Calle 70 Lagos del cacique'),
(358, 76, 13, 'Escuela Militar de Aviación "Marco Fidel Suarez"', 'Cra 8 No. 58-67 Barrio La Base'),
(359, 77, 24, 'Sede Central Poblado', 'Carrera 48 # 7-151 El Poblado'),
(360, 77, 34, 'Centro regional Oriente', 'Carrera 48 # 7-151 El Poblado'),
(361, 77, 1, 'Centro regional Urabá', 'Vereda El Reposo'),
(362, 78, 8, 'Sede Nacional', 'Calle 14 Sur No. 14 - 23'),
(363, 79, 32, 'Ciudadela Universitaría', 'Cra. 22 No 18B-10 B/ Nicolás Medrano '),
(364, 80, 8, 'Sede Bogotá', 'Cra 14A #70A-34, Bogotá'),
(365, 80, 29, 'Sede Pereira', 'Calle 24 N° 8-55, Risaralda'),
(366, 80, 24, 'Sede Medellin', 'Carrera 81 # 35 - 96'),
(367, 80, 40, 'Sede Valledupar', 'Transv 22 Bis #4-105'),
(368, 81, 8, 'Sede Norte', 'Carrera 54 No.67A - 80'),
(369, 81, 8, 'Sede Centro', 'Cra 19 No. 8A - 32'),
(370, 81, 71, 'Sede Cajicá  ', 'Cajicá kilómetro 2 vía Cajicá a Zipaquirá'),
(371, 81, 8, ' Sede Castellana', ' Cra 49 No. 95 - 79'),
(372, 81, 12, 'Sede Cúcuta', 'Av. 1E No. 5 - 97 Barrio La Ceiba'),
(373, 82, 7, 'Seccional Bello', 'Carrera 45 N° 22D - 25'),
(374, 82, 7, 'Seccional Bello - Centro Regional Aburrá sur ', 'Carrera 52 #48-12 Colegio El Rosario'),
(375, 82, 23, 'Satélite Neira', 'Carrera 9 Local 1 '),
(376, 82, 29, 'Centro Regional Pereira', 'Carrera 9 No. 20-54'),
(377, 82, 1, 'Centro Regional Urabá sede Apartadó', 'Diagonal 106 No. 110ª – 670'),
(378, 82, 80, 'Centro Regional Urabá sede Turbo', 'Calle 102 No. 14-49'),
(379, 82, 41, 'Sede Parque de los periodistas', 'Parque Infantil'),
(380, 82, 13, 'Centro Alterno Mayor Santiago de Cali', 'Calle 35 No. 10 - 20'),
(381, 82, 11, 'Centro Regional Buga ', 'Calle 21 sur, carrera 12 costado sur-occidenta'),
(382, 82, 10, 'Centro Regional Buenaventura ', 'Avenida Simón Bolívar Km 9 -  Colegio San Vicente'),
(383, 82, 6, 'Colegio Sagrada Familia', 'Cra 38 con calle 73'),
(384, 82, 6, 'Centro Regional Atlántico Instituto La Salle', 'Cl 47 41-33 Barranquilla, Colombia'),
(385, 82, 6, 'Centro Regional Atlántico Colegio María Inmaculada', 'Cra. 29 #70B-60, Atlántico'),
(386, 82, 12, 'Centro Regional Cúcuta', 'Avenida 5, Calle 15 esquina centro'),
(387, 82, 8, 'Sede Calle 90', 'Cl. 89'),
(388, 82, 8, 'Laboratorios de la Facultad de Ingeniería', 'Cl. 81 #92-51'),
(389, 82, 8, 'Sede Principal Uniminuto', 'Calle 81B Nº 72 B - 70, Barrio Minuto de Dios'),
(390, 82, 79, 'Centro Regional Zipaquirá', 'Av. 15 No. 1 - 22 sur, La fragüita'),
(391, 82, 78, 'Centro Regional Soacha', 'Parque Principal Soacha, Carrera 7 No. 12 - 24'),
(392, 82, 19, 'Centro Regional Girardot', 'Carrera 10 No. 36 -106, Rosablanca'),
(393, 82, 81, 'Centro Regional Madrid', 'URI Fiscalia, Cra 7A No. 8- 52 '),
(394, 82, 9, 'Centro Regional Bucaramanga', 'Calle 28 # 21 - 41 - Colegio Las Pachas'),
(395, 82, 8, 'Bogotá Sur - Sede Bosa', 'Cra. 88F bis No. 51C-01 Sur'),
(396, 82, 8, 'Sede Rafael Uribe Uribe', 'Cll 22 Sur (Av. 1º de mayo) No. 11B-51'),
(401, 82, 8, 'San Juan de Dios, Sosiego ', ' Calle 17 sur # 7 - 15 - Instituto San Juan de Dios (Barrio Sosiego)'),
(402, 82, 28, 'Universidad UNIMINUTO Pasto ', 'Cra. 27 #18-26'),
(403, 82, 26, 'Uniminuto Nevia', 'CLL 15 No. 5 - 71'),
(404, 82, 68, 'Uniminuto Pitalito', 'CLL 8 No. 4 - 63'),
(405, 82, 20, 'Uniminuto en Ibagué', 'Cll 17 # 2 - 51 Centro'),
(406, 83, 6, 'UNIVERSIDAD DE LA COSTA, CUC', 'Calle 58 # 55 - 66 '),
(407, 83, 14, 'Extensión Cartagena', ''),
(408, 83, 25, 'Extensión Monteria', ''),
(409, 83, 28, 'Extensión San Juan de Pasto', ''),
(410, 83, 41, 'Extensión Villavicencio', 'Cr 35 N. 35-23'),
(411, 84, 34, 'UCO', 'Sector 3, cra. 46 No. 40B 50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universidades`
--

DROP TABLE IF EXISTS `universidades`;
CREATE TABLE IF NOT EXISTS `universidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Ciudad` int(11) NOT NULL,
  `acreditacion_institucional` int(11) NOT NULL DEFAULT '0',
  `Caracter_institucion` int(11) NOT NULL,
  `Direccion` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `llf_universidades_ciudades` (`Ciudad`),
  KEY `llf_universidades_caracter` (`Caracter_institucion`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `universidades`
--

INSERT INTO `universidades` (`id`, `Nombre`, `Ciudad`, `acreditacion_institucional`, `Caracter_institucion`, `Direccion`) VALUES
(1, 'UNIVERSIDAD DEL ROSARIO', 8, 1, 2, 'Calle 14 No. 5-82'),
(2, 'FUNDACIÓN UNIVERSIDAD DE AMÉRICA', 8, 0, 2, 'Avenida Circunvalar No. 20-70'),
(3, 'UNIVERSIDAD DE ANTIOQUIA', 24, 0, 1, 'Calle 67 No. 53-108 '),
(4, 'FUNDACIÓN UNIVERSIDAD DE BOGOTÁ JORGE TADEO LOZANO', 8, 0, 2, 'Carrera 4ª. N° 22- 40 Piso 5°'),
(5, 'UNIVERSIDAD DEL ATLÁNTICO', 6, 0, 1, 'Km. 7 Vía a Puerto Colombia'),
(6, 'UNIVERSIDAD DE CALDAS', 23, 0, 1, 'Calle 65 No. 26-10'),
(7, 'UNIVERSIDAD DE CARTAGENA', 14, 0, 1, 'Cra. 6a No. 36-100'),
(8, 'UNIVERSIDAD DEL CAUCA', 30, 0, 1, 'Calle 5 No. 4-70'),
(9, 'UNIVERSIDAD DE MEDELLIN', 24, 0, 2, 'Cra. 87 No. 30-65 Los Alpes'),
(10, 'UNIVERSIDAD DE NARIÑO', 28, 0, 1, 'Cra. 22 No. 18-109'),
(11, 'UNIVERSIDAD DEL TOLIMA', 20, 0, 1, 'Santa Helena'),
(12, 'UNIVERSIDAD DEL VALLE', 13, 0, 1, 'Calle 13 No. 100-00'),
(13, 'UNIVERSIDAD DISTRITAL FRANCISCO JOSÉ DE CALDAS', 8, 0, 1, 'Cra. 7 No. 40-53'),
(14, '\r\nFUNDACIÓN UNIVERSIDAD EXTERNADO DE COLOMBIA', 8, 0, 2, 'Calle 12 No. 1-17 Este'),
(15, 'UNIVERSIDAD LA GRAN COLOMBIA', 8, 0, 2, 'Cra. 6 No. 13-12'),
(16, 'UNIVERSIDAD LIBRE', 8, 0, 2, 'Calle 8 No. 5-80'),
(17, 'UNIVERSIDAD NACIONAL DE COLOMBIA', 8, 0, 1, 'Carrera 45 No. 26-85 '),
(18, 'UNIVERSIDAD PEDAGÓGICA NACIONAL', 8, 0, 1, 'Calle 72 No. 11-73'),
(19, 'UNIVERSIDAD PEDAGÓGICA Y TECNOLÓGICA DE COLOMBIA', 39, 0, 1, 'Carretera Central del Norte'),
(20, 'PONTIFICIA UNIVERSIDAD JAVERIANA', 8, 0, 2, 'Cra. 7 No. 40-62'),
(21, 'UNIVERSIDAD PONTIFICIA BOLIVARIANA', 24, 1, 2, 'Circular 1ª. No. 70-01'),
(22, 'UNIVERSIDAD SANTIAGO DE CALI', 13, 0, 2, 'Calle 5a. Carrera 62'),
(23, 'UNIVERSIDAD TECNOLÓGICA DE PEREIRA', 29, 0, 1, 'La Julita'),
(24, 'UNIVERSIDAD DE CÓRDOBA', 25, 0, 1, 'Cra. 6 No. 76-103'),
(25, 'UNIVERSIDAD DEL MAGDALENA', 36, 0, 1, 'Carrera 32 No. 22-08 '),
(26, 'UNIVERSIDAD DEL QUINDÍO', 3, 0, 1, 'Carrera 15 Calle 12'),
(27, 'UNIVERSIDAD DE LA SALLE', 8, 0, 2, 'Cra. 5 No. 59 A 44'),
(28, 'UNIVERSIDAD SANTO TOMÁS', 8, 0, 2, 'Cra. 9 No. 51-11     '),
(29, 'UNIVERSIDAD FRANCISCO DE PAULA SANTANDER', 12, 0, 1, 'Av Gran Colombia No. 12 E 96'),
(30, 'UNIVERSIDAD EAFIT', 24, 0, 2, 'Cra. 49 No. 7 Sur 50 '),
(31, 'UNIVERSIDAD INCCA DE COLOMBIA', 8, 0, 2, 'Cra. 13 No. 24-15'),
(32, 'UNIVERSIDAD DEL NORTE', 6, 0, 2, 'Km. 5 via a Puerto Colombia'),
(33, 'UNIVERSIDAD DE PAMPLONA', 42, 0, 1, 'Km. 1 Vía a Bucaramanga '),
(34, 'UNIVERSIDAD DE SAN BUENAVENTURA', 8, 0, 2, 'Av. Carrera 9 # 123–76 '),
(35, 'ESCUELA NAVAL DE CADETES ALMIRANTE PADILLA', 14, 0, 1, 'Bosque Manzanillo'),
(36, 'UNIVERSIDAD DE LA SABANA', 8, 0, 2, 'Puente del Común vía a Chía'),
(37, 'UNIVERSIDAD SURCOLOMBIANA', 26, 0, 1, 'Carrera 5ª No. 23-40'),
(38, 'UNIVERSIDAD CENTRAL', 8, 0, 2, 'Cra. 5 No. 21-38'),
(39, 'UNIVERSIDAD MARIANA', 28, 0, 2, 'Calle 18 No. 34-104'),
(40, 'UNIVERSIDAD AUTÓNOMA DEL CARIBE', 6, 0, 2, 'Calle 90 No. 46-112'),
(41, 'UNIVERSIDAD CATOLICA DE PEREIRA', 29, 0, 2, 'Carrera 21 Nº 49-95 '),
(42, 'UNIVERSIDAD DE MANIZALES', 23, 0, 2, 'Cra. 9 No. 19-03'),
(43, 'UNIVERSIDAD TECNOLÓGICA DE BOLÍVAR', 14, 0, 2, 'Cra. 21 No. 25-92'),
(44, 'UNIVERSIDAD POPULAR DEL CESAR', 40, 0, 1, 'Vía Patillal salida Hurtado'),
(45, 'UNIVERSIDAD EAN', 8, 0, 2, 'Carrera 11 No. 78-47'),
(46, 'UNIVERSIDAD ICESI', 13, 0, 2, 'Calle 18 No. 122-135 Pance'),
(47, 'UNIVERSIDAD COLEGIO MAYOR DE CUNDINAMARCA', 8, 0, 1, 'Calle 28 No. 6-02'),
(48, 'UNIVERSIDAD MILITAR NUEVA GRANADA', 8, 0, 1, 'Cra. 11 No. 101-80'),
(49, 'UNIVERSIDAD AUTÓNOMA DE BUCARAMANGA', 9, 0, 2, 'Avenida 42 No. 48-11'),
(50, 'UNIVERSIDAD CATOLICA DE MANIZALES', 23, 0, 2, 'Cra. 23 No. 60-63'),
(51, 'UNIVERSIDAD AUTÓNOMA DE OCCIDENTE', 13, 0, 2, 'Calle 25 No. 115 -85 km. 2'),
(52, 'UNIVERSIDAD DE IBAGUE', 20, 0, 2, 'Carrera 22 Calle 67'),
(53, 'ESCUELA DE CADETES DE POLICIA GENERAL SANTANDER', 8, 0, 1, 'Transve. 33 No. 47 A 35 Sur '),
(54, 'INSTITUTO CARO Y CUERVO', 8, 0, 2, 'Calle 10 No. 4-69'),
(55, 'UNIVERSIDAD PILOTO DE COLOMBIA', 8, 0, 2, 'Cra. 9 No. 45 A 44'),
(56, 'UNIVERSIDAD CES', 24, 0, 2, 'Calle 10 A No. 22-04'),
(57, 'UNIVERSIDAD CATÓLICA DE COLOMBIA', 8, 0, 2, 'Avenida Caracas No. 46-72'),
(58, 'UNIVERSIDAD DE LOS LLANOS', 41, 0, 1, 'Km. 11 Vía a Puerto López'),
(59, 'UNIVERSIDAD DE BOYACÁ', 39, 0, 2, 'Carrera 2a. Este No. 64-169'),
(60, 'UNIVERSIDAD DE CIENCIAS APLICADAS Y AMBIENTALES', 8, 0, 2, 'Calle 222 No. 54-25'),
(61, 'UNIVERSIDAD EL BOSQUE', 8, 0, 2, 'Cra. 7 B Bis No. 132-11'),
(62, 'CORPORACIÓN UNIVERSITARIA DEL META\r\n', 41, 0, 2, 'Cra. 32 No. 34 B 26'),
(63, 'UNIVERSIDAD DE LA AMAZONIA', 43, 0, 1, 'Av Circunvalación El Porvenir'),
(64, 'ESCUELA SUPERIOR DE ADMINISTRACIÓN PÚBLICA', 8, 0, 1, 'Diagonal 40 No. 46 A 37 CAN'),
(65, 'UNIVERSIDAD ANTONIO NARIÑO', 8, 0, 2, 'Carrera 38 No. 58 A 77'),
(66, 'UNIVERSIDAD METROPOLITANA', 6, 0, 2, 'Cra. 42F No. 75 B 169'),
(67, 'UNIVERSIDAD SERGIO ARBOLEDA', 8, 0, 2, 'Calle 74 No. 14-14'),
(68, 'UNIVERSIDAD AUTÓNOMA DE MANIZALES', 23, 0, 2, 'Antigua Est. del Ferrocarríl'),
(69, 'UNIVERSIDAD DE CUNDINAMARCA', 44, 0, 1, 'Diagonal 18 No. 20-29'),
(70, 'UNIVERSIDAD SIMÓN BOLIVAR', 6, 0, 2, 'Carrera 59 No. 59—65 Sede 3'),
(71, 'ESCUELA COLOMBIANA DE INGENIERÍA JULIO GARAVITO ', 8, 0, 2, 'Autopista Norte Kilómetro 13'),
(72, ' UNIVERSIDAD EIA', 24, 0, 2, 'Calle 25 Sur No. 42-73'),
(73, 'UNIVERSIDAD AUTÓNOMA DE COLOMBIA', 8, 0, 2, 'Calle 12 B No. 4-30'),
(74, 'UNIVERSIDAD DEL SINÚ ELÍAS BECHARA ZAINUM', 25, 0, 2, 'Calle 38 No. 1 W '),
(75, 'UNIVERSIDAD DE SANTANDER', 9, 0, 2, 'Calle 70 No. 55-210'),
(76, 'ESCUELA MILITAR DE AVIACION MARCO FIDEL SUÁREZ', 13, 0, 1, 'Carrera 8 No. 58-67'),
(77, 'POLITÉCNICO COLOMBIANO JAIME ISAZA CADAVID', 24, 0, 1, 'Carrera 48 No. 7-151'),
(78, 'UNIVERSIDAD NACIONAL ABIERTA Y A DISTANCIA', 8, 0, 1, 'Calle 14 Sur No. 14-23'),
(79, 'UNIVERSIDAD TECNOLÓGICA DEL CHOCÓ DIEGO LUIS CÓRDOBA', 32, 0, 1, 'Barrio Nicolás Medrano'),
(80, 'FUNDACIÓN UNIVERSITARIA DEL ÁREA ANDINA', 8, 0, 2, 'Calle 71 No.13-21'),
(81, 'FUNDACIÓN UNIVERSITARIA DE CIENCIAS DE LA SALUD', 8, 0, 2, 'Carrera 19 No. 8 A 32'),
(82, 'CORPORACIÓN UNIVERSITARIA MINUTO DE DIOS', 8, 0, 2, 'Calle 81 C No. 72 B 50'),
(83, 'CORPORACIÓN UNIVERSIDAD DE LA COSTA', 6, 0, 2, 'Calle 58 No. 55-66'),
(84, 'UNIVERSIDAD CATÓLICA DE ORIENTE ', 24, 0, 2, 'Carrera 46 No. 40 B 50'),
(85, 'UNIVERSIDAD INDUSTRIAL DE SANTANDER', 9, 0, 1, 'Ciudad Universitaria');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `llf_ciudades` FOREIGN KEY (`Departamento`) REFERENCES `departamentos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `nucleos_basicos_conocimiento`
--
ALTER TABLE `nucleos_basicos_conocimiento`
  ADD CONSTRAINT `lf_nucleos_areas` FOREIGN KEY (`area_conocimiento`) REFERENCES `areas_conocimiento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `programas`
--
ALTER TABLE `programas`
  ADD CONSTRAINT `lf_programas_universidades` FOREIGN KEY (`Universidad`) REFERENCES `universidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `llf_programas_nucleos` FOREIGN KEY (`nucleo_basico_conocimiento`) REFERENCES `nucleos_basicos_conocimiento` (`id`),
  ADD CONSTRAINT `llf_universidades_jornadas` FOREIGN KEY (`Jornada`) REFERENCES `jornadas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `llf_universidades_modalidades` FOREIGN KEY (`modalidad`) REFERENCES `modalidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `llf_universidades_nivel` FOREIGN KEY (`nivel_formacion`) REFERENCES `niveles_formacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `llf_universidades_sedes` FOREIGN KEY (`Sede`) REFERENCES `sedes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD CONSTRAINT `llf_sedes_ciudades` FOREIGN KEY (`ciudad`) REFERENCES `ciudades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `llf_sedes_universidad` FOREIGN KEY (`universidad`) REFERENCES `universidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `universidades`
--
ALTER TABLE `universidades`
  ADD CONSTRAINT `llf_universidades_caracter` FOREIGN KEY (`Caracter_institucion`) REFERENCES `caracter` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `llf_universidades_ciudades` FOREIGN KEY (`Ciudad`) REFERENCES `ciudades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
