-- M3
select @@global.secure_file_priv;

create database henry_M3;
use henry_M3;

-- crear tablas

-- creamos tabla gasto
create table if not exists gasto
(
IdGasto INTEGER,
IdSucursal integer,
IdTipoGasto integer,
Fechas date,
Monto decimal(10,2) -- que tenga hasta 10 cifras y hasta 2 decimales
);

-- cargamos tabla gasto
load data infile 'Gasto.csv'
into table gasto
fields terminated by ',' -- enclosed by ''
lines terminated by '\n' ignore 1 -- ignoramos el encabezado
lines;
-- TABLA CARGADA CORRECTAMENTE

-- creamos tabla canal_de_venta
create table if not exists canal_de_venta
(
Codigo integer,
Descripcion varchar(20)
);

-- la cargamos
load data infile 'CanalDeVenta.csv'
into table canal_de_venta
-- character set latin1 NO HIZO FALTA YA VINO DE DIEZ DESDE PANDAS
fields terminated by ',' -- enclosed by '' NO HIZO FALTA
lines terminated by '\n' ignore 1 lines; -- ignoramos el encabezado

select * from canal_de_venta;
-- TABLA CARGADA CORRECTAMENTE

create table if not exists compra
(
IdCompra integer,
Fecha date,
IdProducto integer,
Cantidad integer,
Precio decimal(10,2),
IdProveedor integer
);

-- cargamos tabla compra
load data infile 'Compra.csv'
into table compra
fields terminated by ',' -- enclosed by '' NO HIZO FALTA
lines terminated by '\n' ignore 1 -- ignoramos el encabezado
lines;

-- TABLA CARGADA CORRECTAMENTE

-- creamos tabla venta
create table if not exists venta
(
IdVenta integer,
Fecha date,
Fecha_Entrega date,
IdCanal integer,
IdCliente integer,
IdSucursal integer,
IdEmpleado integer,
IdProducto integer,
Precio varchar(20),  -- si la miramos en pandas vamos a ver que hay muchas celdas de 'Precio' que estan vacias por lo tanto vamos a colocar a precio como varchar
Cantidad varchar(20)
);

-- cargamos tabla venta
load data infile 'Venta.csv'
into table venta
fields terminated by ',' -- enclosed by '' NO HIZO FALTA
lines terminated by '\n' ignore 1 -- ignoramos el encabezado
lines;
-- TABLA CARGADA CORRECTAMENTE

-- creamos tabla sucursales
create table if not exists sucursales
(
ID integer,
Sucursal varchar(50),
Direccion varchar(150),
Localidad varchar(100),
Provincia varchar(50),
Latitud varchar(50),
Longitud varchar(50)
);
-- cargamos tabla sucursales

load data infile 'Sucursales.csv'
into table sucursales
-- character set latin1 -- soluciono el tema de los acentos, aca no lo ejecuto porque ya modifique el encoding en pandas
fields terminated by ',' -- enclosed by ''
lines terminated by '\n' ignore 1 -- ignoramos el encabezado 
lines;

-- TABLA CARGADA CORRECTAMENTE

-- creamos tabla clientes
create table if not exists clientes
(
ID integer,
Provincia varchar(50),
Nombre_y_Apellido varchar(100),
Domicilio varchar(150),
Telefono varchar(50),
Edad integer,
Localidad varchar(200),
X varchar(50),
Y varchar(50),
Fecha_Alta date,
Usuario_Alta varchar(20),
Fecha_Ultima_Modificacion date,
Usuario_Ultima_Modificacion varchar(20),
Marca_Baja integer
);

-- cargamos tabla clientes
load data infile 'Clientes.csv'
into table clientes
-- character set latin1
fields terminated by ',' enclosed by '"'
lines terminated by '\n' ignore 1 lines;-- ignoramos el encabezado
-- TABLA CARGADA CORRECTAMENTE

select * from clientes;

-- creamos tabla empleados
create table if not exists empleados
(
ID_empleado integer,
Apellido varchar(20),
Nombre varchar(20),
Sucursal VARCHAR(20),
Sector VARCHAR(20),
Cargo VARCHAR(20),
Salario decimal(10,2)
);

-- cargamos tabla empleados
load data infile 'Empleados.csv'
into table empleados
fields terminated by ',' -- enclosed by ''
lines terminated by '\n' ignore 1 lines; -- ignoramos el encabezado

-- TABLA CARGADA CORRECTAMENTE
select * from empleados;

-- creamos tabla productos
create table if not exists productos
(
ID_PRODUCTO integer,
Concepto varchar(150),
Tipo varchar(50),
Precio decimal(11,2) -- OJO CON LA CANTIDAD DE CIFRAS CON LA QUE LIMITAMOS AL DATO
);

drop table productos;

-- cargamos tabla productos
load data infile 'Productos.csv'
into table productos
fields terminated by ',' -- enclosed by ''
lines terminated by '\n' ignore 1 lines; -- ignoramos el encabezado
-- TABLA CARGADA CORRECTAMENTE
select * from productos;


-- creamos tabla proveedores
create table if not exists proveedores
(
IDProveedor integer,
Nombre varchar(50),
Address varchar(50),
City varchar (50),
State varchar(50),
Country varchar(50),
departament varchar(50)
);

DROP TABLE proveedores;

-- cargamos tabla proveedores
load data infile 'Proveedores.csv'
into table proveedores
fields terminated by ',' -- enclosed by ''
lines terminated by '\n' ignore 1 lines; -- ignoramos el encabezado

-- TABLA CARGADA CORRECTAMENTE
SELECT * FROM proveedores;

-- creamos tabla tipo_de_gasto
create table if not exists tipo_de_gasto
(
IdTipoGasto integer,
Descripcion varchar(50),
Monto_Aproximado decimal
);

-- cargamos tabla tipo_de_gasto
load data infile 'TiposDeGasto.csv'
into table tipo_de_gasto
fields terminated by ',' -- enclosed by ''
lines terminated by '\n' ignore 1 -- ignoramos el encabezado
lines;
-- TABLA CARGADA CORRECTAMENTE
SELECT * FROM tipo_de_gasto;


SELECT * FROM canal_de_venta; -- se ve perfecto
SELECT * FROM clientes; -- se ve perfecto
SELECT * FROM compra; -- se ve perfecto
SELECT * FROM empleados; -- se ve perfecto
SELECT * FROM gasto; -- se ve perfecto
SELECT * FROM proveedores; -- se ve perfecto
SELECT * FROM productos; -- se ve perfecto
SELECT * FROM tipo_de_gasto; -- se ve perfecto
SELECT * FROM venta;  -- se ve perfecto


-- set SQL_SAFE_UPDATE=0; -- desactivo el modo seguro de guardado para poder borrar datos de tablas
-- delete from sucursales;




