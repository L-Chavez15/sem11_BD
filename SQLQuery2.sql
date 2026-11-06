--CONSULTAS SQL
USE Comercial

--VISUALIZAR LA TABLA
SELECT * FROM Productos

USE Comercial;
GO

/* ==========================================
   1. EMPLEADOS
   ========================================== */

INSERT INTO dbo.Empleados
(Apellido, Nombre, Cargo, Tratamiento, FechaNacimiento,
 FechaContratacion, Direccion, Ciudad, Region, CodigoPostal,
 Pais, Telefono, Extension, ReportaA)
VALUES
(N'García', N'Carlos', N'Director comercial', N'Sr.', '1975-03-12', '2015-01-10', N'Calle Mayor 10', N'Madrid', N'Madrid', N'28001', N'España', N'910100101', N'101', NULL),
(N'López', N'María', N'Gerente de ventas', N'Sra.', '1980-05-20', '2017-04-15', N'Gran Vía 20', N'Madrid', N'Madrid', N'28013', N'España', N'910100102', N'102', 1),
(N'Martínez', N'Juan', N'Representante de ventas', N'Sr.', '1985-07-18', '2019-06-01', N'Calle Sol 15', N'Barcelona', N'Cataluña', N'08001', N'España', N'930100103', N'103', 2),
(N'Fernández', N'Ana', N'Representante de ventas', N'Sra.', '1988-09-22', '2020-02-10', N'Calle Luna 8', N'Valencia', N'Valencia', N'46001', N'España', N'960100104', N'104', 2),
(N'Rodríguez', N'Pedro', N'Contable', N'Sr.', '1979-11-05', '2018-03-20', N'Calle Real 30', N'Sevilla', N'Andalucía', N'41001', N'España', N'950100105', N'105', 1);
GO

/* ==========================================
   2. CATEGORÍAS
   ========================================== */

INSERT INTO dbo.Categorias (NombreCategoria, Descripcion)
VALUES
(N'Bebidas', N'Bebidas naturales, refrescos y zumos.'),
(N'Condimentos', N'Especias y condimentos alimenticios.'),
(N'Repostería', N'Productos para elaborar postres.'),
(N'Lácteos', N'Leche, queso y derivados.'),
(N'Granos', N'Arroz, cereales y legumbres.'),
(N'Carnes', N'Productos cárnicos.'),
(N'Frutas', N'Frutas frescas y conservadas.'),
(N'Pescados', N'Pescados y mariscos.');
GO

/* ==========================================
   3. CLIENTES
   ========================================== */

INSERT INTO dbo.Clientes
(IdCliente, NombreEmpresa, NombreContacto, CargoContacto,
 Direccion, Ciudad, Region, CodigoPostal, Pais, Telefono, Fax)
VALUES
(N'CL001', N'Distribuciones Sol', N'Laura Pérez', N'Gerente', N'Calle Sol 12', N'Madrid', N'Madrid', N'28001', N'España', N'911111111', NULL),
(N'CL002', N'Alimentos del Norte', N'Pedro Gómez', N'Comprador', N'Calle Norte 25', N'Bilbao', N'País Vasco', N'48001', N'España', N'944111111', NULL),
(N'CL003', N'Supermercados Luna', N'Ana Torres', N'Directora', N'Av. Central 30', N'Barcelona', N'Cataluña', N'08001', N'España', N'931111111', NULL),
(N'CL004', N'Comercial Mediterráneo', N'Luis Díaz', N'Gerente', N'Calle Mar 18', N'Valencia', N'Valencia', N'46001', N'España', N'961111111', NULL),
(N'CL005', N'Productos Sevilla', N'Marta Ruiz', N'Administradora', N'Calle Feria 14', N'Sevilla', N'Andalucía', N'41001', N'España', N'954111111', NULL),
(N'CL006', N'Bodega Central', N'José Martín', N'Comprador', N'Calle Vino 5', N'Málaga', N'Andalucía', N'29001', N'España', N'951111111', NULL),
(N'CL007', N'Comercial Aragón', N'Elena Castro', N'Gerente', N'Calle Pilar 8', N'Zaragoza', N'Aragón', N'50001', N'España', N'976111111', NULL),
(N'CL008', N'Distribuciones Galicia', N'Pablo Vega', N'Director', N'Calle Atlántico 7', N'Vigo', N'Galicia', N'36201', N'España', N'986111111', NULL),
(N'CL009', N'Mercado Castellano', N'Sonia León', N'Compradora', N'Calle Mayor 19', N'Valladolid', N'Castilla y León', N'47001', N'España', N'983111111', NULL),
(N'CL010', N'Comercial Canarias', N'Carlos Mora', N'Gerente', N'Calle Palmeras 4', N'Las Palmas', N'Canarias', N'35001', N'España', N'928111111', NULL);
GO

/* ==========================================
   4. TRANSPORTISTAS
   ========================================== */

INSERT INTO dbo.Transportistas (NombreEmpresa, Telefono)
VALUES
(N'Transportes Rápidos', N'900100001'),
(N'Logística Nacional', N'900100002'),
(N'Envíos Express', N'900100003');
GO

/* ==========================================
   5. PROVEEDORES
   ========================================== */

INSERT INTO dbo.Proveedores
(NombreEmpresa, NombreContacto, CargoContacto, Direccion,
 Ciudad, Region, CodigoPostal, Pais, Telefono, Fax, PaginaWeb)
VALUES
(N'Bebidas del Sur', N'Antonio Gil', N'Vendedor', N'Calle Agua 10', N'Sevilla', N'Andalucía', N'41002', N'España', N'954200001', NULL, N'https://proveedor1.example'),
(N'Lácteos García', N'Rosa Martín', N'Gerente', N'Calle Leche 20', N'Madrid', N'Madrid', N'28002', N'España', N'912200002', NULL, N'https://proveedor2.example'),
(N'Conservas del Mar', N'Pedro Salas', N'Comercial', N'Puerto 15', N'Vigo', N'Galicia', N'36202', N'España', N'986200003', NULL, N'https://proveedor3.example'),
(N'Dulces España', N'Lucía Ramos', N'Directora', N'Calle Azúcar 8', N'Valencia', N'Valencia', N'46002', N'España', N'963200004', NULL, N'https://proveedor4.example'),
(N'Carnes Selectas', N'Javier León', N'Vendedor', N'Calle Carne 5', N'Burgos', N'Castilla y León', N'09001', N'España', N'947200005', NULL, N'https://proveedor5.example');
GO

/* ==========================================
   6. PRODUCTOS
   ========================================== */

INSERT INTO dbo.Productos
(NombreProducto, IdProveedor, IdCategoria, CantidadPorUnidad,
 PrecioUnitario, UnidadesEnExistencia, UnidadesEnPedido,
 NivelReposicion, Descontinuado)
VALUES
(N'Agua mineral', 1, 1, N'12 botellas', 5.50, 100, 20, 30, 0),
(N'Zumo de naranja', 1, 1, N'6 botellas', 12.00, 80, 10, 20, 0),
(N'Leche entera', 2, 4, N'12 litros', 15.00, 60, 15, 20, 0),
(N'Queso curado', 2, 4, N'5 unidades', 25.00, 40, 5, 10, 0),
(N'Atún en conserva', 3, 8, N'24 latas', 30.00, 50, 10, 15, 0),
(N'Sardinas', 3, 8, N'12 latas', 18.00, 70, 10, 20, 0),
(N'Galletas dulces', 4, 3, N'20 paquetes', 10.00, 90, 20, 25, 0),
(N'Chocolate negro', 4, 3, N'10 tabletas', 14.50, 75, 10, 20, 0),
(N'Jamón serrano', 5, 6, N'2 piezas', 45.00, 30, 5, 10, 0),
(N'Chorizo ibérico', 5, 6, N'5 piezas', 32.00, 35, 5, 10, 0),
(N'Arroz blanco', 1, 5, N'10 paquetes', 20.00, 100, 15, 30, 0),
(N'Lentejas', 1, 5, N'10 paquetes', 16.00, 85, 10, 20, 0),
(N'Canela molida', 4, 2, N'12 botes', 8.00, 60, 10, 15, 0),
(N'Pimienta negra', 4, 2, N'12 botes', 9.50, 55, 10, 15, 0),
(N'Manzanas', 2, 7, N'10 kilos', 18.00, 45, 5, 15, 0);
GO

/* ==========================================
   7. PEDIDOS
   ========================================== */

INSERT INTO dbo.Pedidos
(IdCliente, IdEmpleado, FechaPedido, FechaRequerida,
 FechaEnvio, EnviadoPor, Flete, NombreDestinatario,
 DireccionDestino, CiudadDestino, RegionDestino,
 CodigoPostalDestino, PaisDestino)
VALUES
(N'CL001', 2, '2026-01-05', '2026-01-10', '2026-01-08', 1, 15.00, N'Distribuciones Sol', N'Calle Sol 12', N'Madrid', N'Madrid', N'28001', N'España'),
(N'CL002', 3, '2026-01-08', '2026-01-15', '2026-01-12', 2, 20.00, N'Alimentos del Norte', N'Calle Norte 25', N'Bilbao', N'País Vasco', N'48001', N'España'),
(N'CL003', 4, '2026-01-12', '2026-01-18', '2026-01-15', 3, 12.00, N'Supermercados Luna', N'Av. Central 30', N'Barcelona', N'Cataluña', N'08001', N'España'),
(N'CL004', 2, '2026-01-15', '2026-01-22', '2026-01-20', 1, 18.00, N'Comercial Mediterráneo', N'Calle Mar 18', N'Valencia', N'Valencia', N'46001', N'España'),
(N'CL005', 3, '2026-01-20', '2026-01-25', '2026-01-23', 2, 10.00, N'Productos Sevilla', N'Calle Feria 14', N'Sevilla', N'Andalucía', N'41001', N'España'),
(N'CL006', 4, '2026-02-01', '2026-02-08', '2026-02-05', 3, 22.00, N'Bodega Central', N'Calle Vino 5', N'Málaga', N'Andalucía', N'29001', N'España'),
(N'CL007', 2, '2026-02-05', '2026-02-12', '2026-02-09', 1, 14.00, N'Comercial Aragón', N'Calle Pilar 8', N'Zaragoza', N'Aragón', N'50001', N'España'),
(N'CL008', 3, '2026-02-10', '2026-02-17', '2026-02-14', 2, 16.00, N'Distribuciones Galicia', N'Calle Atlántico 7', N'Vigo', N'Galicia', N'36201', N'España'),
(N'CL009', 4, '2026-02-15', '2026-02-20', '2026-02-18', 3, 11.00, N'Mercado Castellano', N'Calle Mayor 19', N'Valladolid', N'Castilla y León', N'47001', N'España'),
(N'CL010', 2, '2026-02-20', '2026-02-28', '2026-02-25', 1, 25.00, N'Comercial Canarias', N'Calle Palmeras 4', N'Las Palmas', N'Canarias', N'35001', N'España');
GO

/* ==========================================
   8. DETALLES DE PEDIDOS
   ========================================== */

INSERT INTO dbo.DetallesPedidos
(IdPedido, IdProducto, PrecioUnitario, Cantidad, Descuento)
VALUES
(1, 1, 5.50, 10, 0),
(1, 3, 15.00, 5, 0.05),
(2, 5, 30.00, 4, 0),
(2, 7, 10.00, 10, 0.10),
(3, 2, 12.00, 8, 0),
(3, 4, 25.00, 3, 0.05),
(4, 9, 45.00, 2, 0),
(4, 10, 32.00, 4, 0.10),
(5, 11, 20.00, 5, 0),
(5, 12, 16.00, 6, 0.05),
(6, 6, 18.00, 10, 0),
(6, 8, 14.50, 5, 0),
(7, 13, 8.00, 12, 0),
(7, 14, 9.50, 10, 0.05),
(8, 15, 18.00, 8, 0),
(8, 1, 5.50, 15, 0),
(9, 3, 15.00, 10, 0.10),
(9, 5, 30.00, 3, 0),
(10, 9, 45.00, 2, 0.05),
(10, 11, 20.00, 8, 0);
GO

/* ==========================================
   9. DEMOGRAFÍA DE CLIENTES
   ========================================== */

INSERT INTO dbo.DemografiaClientes
(IdTipoCliente, Descripcion)
VALUES
(N'EMPRESA', N'Clientes de tipo empresa.'),
(N'MINORISTA', N'Clientes minoristas.'),
(N'MAYORISTA', N'Clientes mayoristas.');
GO

/* ==========================================
   10. REGIONES
   ========================================== */

INSERT INTO dbo.Regiones (IdRegion, DescripcionRegion)
VALUES
(1, N'Norte'),
(2, N'Sur'),
(3, N'Este'),
(4, N'Oeste'),
(5, N'Centro');
GO

/* ==========================================
   11. TERRITORIOS
   ========================================== */

INSERT INTO dbo.Territorios
(IdTerritorio, DescripcionTerritorio, IdRegion)
VALUES
(N'MAD001', N'Madrid centro', 5),
(N'MAD002', N'Madrid norte', 5),
(N'BCN001', N'Barcelona ciudad', 3),
(N'VAL001', N'Valencia ciudad', 3),
(N'SEV001', N'Sevilla ciudad', 2),
(N'BIL001', N'Bilbao ciudad', 1),
(N'ZAR001', N'Zaragoza ciudad', 3),
(N'VIG001', N'Vigo ciudad', 4),
(N'MAL001', N'Málaga ciudad', 2),
(N'VLL001', N'Valladolid ciudad', 5);
GO

/* ==========================================
   12. TIPOS DE CLIENTES
   ========================================== */

INSERT INTO dbo.ClientesTipos (IdCliente, IdTipoCliente)
VALUES
(N'CL001', N'EMPRESA'),
(N'CL002', N'MAYORISTA'),
(N'CL003', N'MINORISTA'),
(N'CL004', N'EMPRESA'),
(N'CL005', N'MAYORISTA'),
(N'CL006', N'MINORISTA'),
(N'CL007', N'EMPRESA'),
(N'CL008', N'MAYORISTA'),
(N'CL009', N'MINORISTA'),
(N'CL010', N'EMPRESA');
GO

/* ==========================================
   13. EMPLEADOS Y TERRITORIOS
   ========================================== */

INSERT INTO dbo.EmpleadosTerritorios (IdEmpleado, IdTerritorio)
VALUES
(1, N'MAD001'),
(1, N'MAD002'),
(2, N'BCN001'),
(2, N'VAL001'),
(3, N'SEV001'),
(3, N'MAL001'),
(4, N'BIL001'),
(4, N'ZAR001'),
(5, N'VIG001'),
(5, N'VLL001');
GO

/* ==========================================
   14. CONSULTAS DE VERIFICACIÓN
   ========================================== */

SELECT 'Empleados' AS Tabla, COUNT(*) AS Total FROM dbo.Empleados
UNION ALL
SELECT 'Categorias', COUNT(*) FROM dbo.Categorias
UNION ALL
SELECT 'Clientes', COUNT(*) FROM dbo.Clientes
UNION ALL
SELECT 'Transportistas', COUNT(*) FROM dbo.Transportistas
UNION ALL
SELECT 'Proveedores', COUNT(*) FROM dbo.Proveedores
UNION ALL
SELECT 'Productos', COUNT(*) FROM dbo.Productos
UNION ALL
SELECT 'Pedidos', COUNT(*) FROM dbo.Pedidos
UNION ALL
SELECT 'DetallesPedidos', COUNT(*) FROM dbo.DetallesPedidos
UNION ALL
SELECT 'DemografiaClientes', COUNT(*) FROM dbo.DemografiaClientes
UNION ALL
SELECT 'Regiones', COUNT(*) FROM dbo.Regiones
UNION ALL
SELECT 'Territorios', COUNT(*) FROM dbo.Territorios
UNION ALL
SELECT 'ClientesTipos', COUNT(*) FROM dbo.ClientesTipos
UNION ALL
SELECT 'EmpleadosTerritorios', COUNT(*) FROM dbo.EmpleadosTerritorios;
GO

--CONSULTAS
--CONSULTA 1. MOSTRAR LOS REGISTROS DE LA TABLA PRODUCTOS
SELECT * FROM Productos
--ALTERANDO LA ESTRUCTURA PARA AÑADIR UN ATRIBUTO MARGENUTILIDAD
ALTER TABLE PRODUCTOS
ADD MargenUtilidad DECIMAL(5,2) NOT NULL DEFAULT 0
--COMPROBAMOS EL RESULTADO
SELECT * FROM Productos
--CONSULTA 4. QUIERO QUE EL MARGEN DE UTILIDAD AHORA CAMBIA A UN VALOR DIFERENTE A 1.5 PARA TODOS
UPDATE Productos
SET MargenUtilidad = 1.5

--CONSULTA 5. MUESTRAME LOS PRODUCTOS CON SUS RESPECTIVAS ORDENES
SELECT P.IdProducto, P.NombreProducto, DP.PrecioUnitario, DP.Cantidad, PE.FechaEnvio, PE.NombreDestinatario
FROM Productos AS P
INNER JOIN DetallesPedidos AS DP
ON P.IdProducto = DP.IdProducto
INNER JOIN Pedidos AS PE
ON PE.IdPedido = PE.IdPedido

--CONSULTA 6.
SELECT * FROM Productos
--CONSULTA 7. MOSTRAR LOS PRODUCTOS CUYO PRECIO SEA SUPERIOR A 17 SOLES
SELECT * FROM Productos
WHERE PrecioUnitario > 17

--CONSULTA 8. MOSTRAR LOS PRODUCTOS CUYAS EXISTENCIAS SE ENCUENTREN ENTRE 30 Y 100 UNIDADES EXISTENCIA
SELECT * FROM Productos
WHERE UnidadesEnExistencia BETWEEN 30 AND 100 --TAMBIÉN SE PUEDE UTILIZAR AND

--CONSULTA 9. CAMBIAR EL PRECIO DE JAMON SERRANO A 72
UPDATE Productos
SET PrecioUnitario = 72
WHERE IdProducto = 9

--CONSULTA 10. MOSTRAR TODOS LOS PROVEEDORES ORDENADOS POR EL NOMBRE DE LA EMPRESA EN FORMA ASCENDENTE
SELECT * FROM Proveedores
ORDER BY NombreEmpresa ASC

--CONSULTA 11. ORDENAR LOS TERRITORIOS DE FORMA DESCENDENTE AL NOMBRE DESCRIPCION 
SELECT * FROM Territorios
ORDER BY DescripcionTerritorio DESC

--VISTA 1: CREAR UNA VISTA QUE MUESTRE LOS PEDIDOS, LOS PRODUCTOS Y LOS CLIENTES QUE COMPRARON
GO
CREATE VIEW DETAPEDIDOS
AS
SELECT C.IdCliente, C.NombreContacto, C.NombreEmpresa, P.IdProducto, P.NombreProducto, DP.PrecioUnitario, DP.Cantidad, PE.FechaEnvio, PE.NombreDestinatario
FROM Clientes AS C
INNER JOIN Pedidos AS PE
ON C.IdCliente = PE.IdCliente
INNER JOIN DetallesPedidos AS DP
ON PE.IdPedido = DP.IdPedido
INNER JOIN Productos AS P
ON DP.IdProducto = P.IdProducto

SELECT * FROM Clientes

CREATE VIEW CLIENTESVIEW
AS SELECT * FROM Clientes

--MOSTRAR LA VISTA
SELECT * FROM CLIENTESVIEW