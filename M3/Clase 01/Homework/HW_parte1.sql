-- Homework 2
-- 1- para esta consigna vamos a ordenar cada una de las tablas en forma DESCENDENTE por fecha para saber que tan actualizadas se encuentran

SELECT * FROM clientes
ORDER BY Fecha_Alta DESC;

SELECT * FROM compra
ORDER BY Fecha DESC;

SELECT * FROM gasto
ORDER BY Fechas DESC;

SELECT * FROM venta
ORDER BY Fecha DESC;

SELECT * FROM venta
ORDER BY Fecha_Entrega DESC;

-- 2 vamos a ver si los datos estan completos en todas las tablas:

SELECT COUNT(ID)
FROM clientes 
WHERE Marca_Baja IS NULL or Provincia IS NULL or Nombre_y_Apellido IS NULL; -- probamos con todas las columnas y la tabla no posee datos nulos

SELECT COUNT(IdCompra)
FROM compra
WHERE IdProducto=''
or Fecha IS NULL
or Cantidad=''
or Precio=''
or IdProveedor=''; -- La tabla no posee datos vacios o nulos


SELECT COUNT(ID_empleado)
FROM empleados
WHERE Apellido=''
or Nombre=''
or Sucursal=''
or Sector=''
or Cargo=''
or Salario=''; -- La tabla no posee datos vacios o nulos

SELECT COUNT(ID_empleado)
FROM empleados
WHERE Apellido=''
or Nombre=''
or Sucursal=''
or Sector=''
or Cargo=''
or Salario='';-- La tabla no posee datos vacios o nulos

SELECT COUNT(IdGasto)
FROM gasto
WHERE IdSucursal=''
or IdTipoGasto=''
or Fechas is null
or Monto='';-- La tabla no posee datos vacios o nulos

SELECT COUNT(IDProveedor)
FROM proveedores
WHERE Nombre=''
or Address=''
or City=''
or State=''
or Country=''
or departament=''; -- La tabla posee 2 datos vacios

SELECT COUNT(ID_PRODUCTO)
FROM productos
WHERE Concepto=''
or Tipo=''
or Precio=''; -- La tabla posee 12 datos vacios

SELECT COUNT(IdVenta)
FROM venta
WHERE Fecha is null
or Fecha_Entrega is null
or IdCanal=''
or IdCliente=''
or IdSucursal=''
or IdEmpleado=''
or IdProducto=''
or Precio=''
or Cantidad=''; 

SELECT * FROM venta;  -- se ve perfecto