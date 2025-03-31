DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `EG - Actualizar Tel Empleado 1`(IN `update telefono` INT)
UPDATE empleado_general SET telefono = '4556789900' WHERE id = 1$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `EG - Buscar Alejandro Pineda`(IN `alejandro pineda` INT)
SELECT * FROM empleado_general WHERE nombre = 'Alejandro Pineda'$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `EG - Empleados de 40 o mas`(IN `empleados de 40 o mas` INT)
SELECT * FROM empleado_general WHERE edad > 40$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `EG - Obtener Empleados`(IN `todos los empleados` INT)
SELECT * FROM empleado_general$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `EG - Primeros 6 empleados`(IN `primeros 6 id` INT)
SELECT * FROM empleado_general WHERE id < 7$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `M - Actualizar producto 11`(IN `update producto` INT)
UPDATE miscelanea SET marca = 'Vigor' WHERE id = 11$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `M - Buscar Galletas`(IN `producto` INT)
SELECT * FROM miscelanea WHERE id = 4$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `M - Productos con Mas Ventas`(IN `mas ventas` INT)
SELECT * FROM miscelanea WHERE ventas > 21$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `M - Ver Miscelanea`(IN `miscelanea` INT)
SELECT * FROM miscelanea$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `M - Ver Productos Menos Cantidad`(IN `menos cantidad` INT)
SELECT * FROM miscelanea WHERE cantidad < 11$$
DELIMITER ;
