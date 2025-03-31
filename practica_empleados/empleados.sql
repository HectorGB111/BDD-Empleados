-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-03-2025 a las 03:55:58
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
-- Base de datos: `empleados`
--

DELIMITER $$
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `EG - Actualizar Tel Empleado 1`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `EG - Actualizar Tel Empleado 1` (IN `update telefono` INT)   UPDATE empleado_general SET telefono = '4556789900' WHERE id = 1$$

DROP PROCEDURE IF EXISTS `EG - Buscar Alejandro Pineda`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `EG - Buscar Alejandro Pineda` (IN `alejandro pineda` INT)   SELECT * FROM empleado_general WHERE nombre = 'Alejandro Pineda'$$

DROP PROCEDURE IF EXISTS `EG - Empleados de 40 o mas`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `EG - Empleados de 40 o mas` (IN `empleados de 40 o mas` INT)   SELECT * FROM empleado_general WHERE edad > 40$$

DROP PROCEDURE IF EXISTS `EG - Obtener Empleados`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `EG - Obtener Empleados` (IN `todos los empleados` INT)   SELECT * FROM empleado_general$$

DROP PROCEDURE IF EXISTS `EG - Primeros 6 empleados`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `EG - Primeros 6 empleados` (IN `primeros 6 id` INT)   SELECT * FROM empleado_general WHERE id < 7$$

DROP PROCEDURE IF EXISTS `M - Actualizar producto 11`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `M - Actualizar producto 11` (IN `update producto` INT)   UPDATE miscelanea SET marca = 'Vigor' WHERE id = 11$$

DROP PROCEDURE IF EXISTS `M - Buscar Galletas`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `M - Buscar Galletas` (IN `producto` INT)   SELECT * FROM miscelanea WHERE id = 4$$

DROP PROCEDURE IF EXISTS `M - Productos con Mas Ventas`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `M - Productos con Mas Ventas` (IN `mas ventas` INT)   SELECT * FROM miscelanea WHERE ventas > 21$$

DROP PROCEDURE IF EXISTS `M - Ver Miscelanea`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `M - Ver Miscelanea` (IN `miscelanea` INT)   SELECT * FROM miscelanea$$

DROP PROCEDURE IF EXISTS `M - Ver Productos Menos Cantidad`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `M - Ver Productos Menos Cantidad` (IN `menos cantidad` INT)   SELECT * FROM miscelanea WHERE cantidad < 11$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_general`
--

DROP TABLE IF EXISTS `empleado_general`;
CREATE TABLE IF NOT EXISTS `empleado_general` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `edad` varchar(80) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `direccion` varchar(80) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `telefono` varchar(80) COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Volcado de datos para la tabla `empleado_general`
--

INSERT INTO `empleado_general` (`id`, `nombre`, `edad`, `direccion`, `telefono`) VALUES
(1, 'Alberto Garcia', '34 años', 'Av. Sec. 3', '4811203344'),
(2, 'Gerardo Martínez', '40 años', 'C. Porfirio Diaz', '4817764345'),
(3, 'Francisco Hernández', '34 años', 'C. Reforma', '4811234477'),
(4, 'Alejandro Pineda', '45 años', 'C. Salazar ', '4815565776'),
(5, 'Julieta Hernandez', '38 años', 'Av. Sec. 3', '4811113232'),
(6, 'Pedro Olvera', '33 años', 'C. Escontria', '4811445566'),
(7, 'José Rodríguez', '47 años', 'C. Av. Ej. Mx.', '4816554433'),
(8, 'Samuel García', '45 años', 'Col. Mirador', '4812443366'),
(9, 'Fernando Estrada', '44 años', 'C. Faricio ', '4816778899'),
(10, 'Sergio Florida', '33 años', 'C. Rotarios', '4812245667');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `miscelanea`
--

DROP TABLE IF EXISTS `miscelanea`;
CREATE TABLE IF NOT EXISTS `miscelanea` (
  `id` int NOT NULL AUTO_INCREMENT,
  `producto` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `marca` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `cantidad` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `precio` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `ventas` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Volcado de datos para la tabla `miscelanea`
--

INSERT INTO `miscelanea` (`id`, `producto`, `marca`, `cantidad`, `precio`, `ventas`) VALUES
(1, 'Cereal', 'Kelloggs', '10', '$55', '2'),
(2, 'Leche', 'Marsella', '30', '$25', '7'),
(3, 'Refresco', 'Escuis', '13', '$20', '10'),
(4, 'Galletas', 'Marias', '15', '$17', '12'),
(5, 'Jabon', 'Axion', '11', '$23', '6'),
(6, 'Pasta', 'Colgate', '33', '$30', '9'),
(7, 'Rollos', 'Petalo', '12', '$45', '5'),
(8, 'Lapiceros', 'PepperMatte', '23', '$12', '24'),
(9, 'Yogurt', 'Lala', '33', '$23', '22'),
(10, 'Alimento', 'Whiskas', '6', '$12', '7'),
(11, 'Jugo', 'Jumex', '40', '$10', '45'),
(12, 'Crema', 'Nuvel', '20', '$34', '9'),
(13, 'Sabritas', 'Doritos', '33', '$19', '40'),
(14, 'Pan', 'Bimbo', '13', '$45', '8'),
(15, 'Shampoo', 'Palmolive', '18', '$28', '13');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
