-- ETL

-- Normalizacion de los campos

-- Primero voy a crear una tabla autogenerada llamada calendario:

SET GLOBAL log_bin_trust_function_creators = 1 ; -- hailita el modo para crear funciones

ALTER TABLE `canal_de_venta` CHANGE `codigo` `Codigo`  INT NOT NULL; -- me tira un warning de que el tamaño de Integers no se podra cambiar en versiones futuras
ALTER TABLE canal_de_venta MODIFY codigo INT; -- por eso aqui modificamos el tipo de dato de esta columna y solo le ponemos INT, no especificamos tamaño
ALTER TABLE clientes RENAME COLUMN ID to Id_Cliente; 
ALTER TABLE compra RENAME COLUMN IdCompra to Id_Compra;
ALTER TABLE compra RENAME COLUMN IdProducto to Id_Producto;
ALTER TABLE compra RENAME COLUMN IdProveedor to Id_Proveedor;
ALTER TABLE empleados RENAME COLUMN ID_empleado to Id_Empleado;
ALTER TABLE gasto RENAME COLUMN IdGasto to Id_Gasto;
ALTER TABLE gasto RENAME COLUMN IdSucursal to Id_Sucursal;
ALTER TABLE gasto RENAME COLUMN IdTipoGasto to Id_Tipo_Gasto;
ALTER TABLE productos RENAME COLUMN ID_PRODUCTO to Id_Producto;
ALTER TABLE proveedores RENAME COLUMN IDProveedor to Id_Proveedor;
ALTER TABLE proveedores RENAME COLUMN departament to Departamento;
ALTER TABLE proveedores RENAME COLUMN Address to Direccion;
ALTER TABLE proveedores RENAME COLUMN City to Ciudad;
ALTER TABLE proveedores RENAME COLUMN State to Provincia;
ALTER TABLE proveedores RENAME COLUMN Country to Pais;
ALTER TABLE sucursales RENAME COLUMN ID to Id_Sucursal;
ALTER TABLE tipo_de_gasto RENAME COLUMN IdTipoGasto TO Id_Tipo_Gasto;
ALTER TABLE venta RENAME COLUMN IdVenta TO Id_Venta;
ALTER TABLE venta RENAME COLUMN IdCanal TO Id_Canal;
ALTER TABLE venta RENAME COLUMN IdCliente TO Id_Cliente;
ALTER TABLE venta RENAME COLUMN IdSucursal TO Id_Sucursal;
ALTER TABLE venta RENAME COLUMN IdEmpleado TO Id_Empleado;
ALTER TABLE venta RENAME COLUMN IdProducto TO Id_Producto;

-- aqui ya tengo mi base de datos con todas sus COLUMNS normalizadas

UPDATE proveedores
SET Nombre='Sin nombre'
WHERE Nombre=''; -- podria especificarle que TRIM(Nombre)='' para asegurarme, TRIM quita todos los espacios

SELECT COUNT(Tipo) 
FROM henry_m3.productos
WHERE Tipo is null OR TRIM(Tipo)='';-- esta condicion la vamos a utilizar para updatear

UPDATE henry_m3.productos
SET Tipo='Sin especificar'
WHERE Tipo is null OR TRIM(Tipo)=''; -- aca reemplazo algunos datos nulos de la tabla

SELECT COUNT(Precio) 
FROM henry_m3.productos
WHERE Precio=0; -- Para que borraria estos datos? Si tuviese una tabla que controle el stock estaria perjudicandola con este borrado de registros
-- esto no se debe borrar

SELECT count(Precio) 
FROM henry_m3.venta
WHERE TRIM(Precio)=''; -- en primera instancia vamos a notar que en precio tenemos datos vacios
-- vamos a corregirlos de la siguiente forma

UPDATE venta
SET Precio=0
WHERE TRIM(Precio)=''; -- con esto colocamos 0 en donde hay celdas vacias

UPDATE henry_m3.venta
SET Cantidad=0
WHERE Cantidad =0; -- llenamos espacios vacios con 0

ALTER TABLE henry_m3.venta
MODIFY Cantidad decimal(15,2); -- antes no me modificaba el tipo de dato xq habia celdas vacias, ahora si papa





