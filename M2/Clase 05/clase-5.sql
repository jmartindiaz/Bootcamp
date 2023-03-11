-- DDL
CREATE database henry;

CREATE TABLE alumno (
	cedulaIdentidad INT NOT NULL auto_increment,
    nombre VARCHAR(20),
    apellido VARCHAR(20),
    fechaInicio DATE,
    primary key (cedulaIdentidad) -- siempre tiene que tener un dato no nulo
);
-- como buena practica conviene siempre seleccionar lo que queremos ejecutar
-- y luego ejecutamos, si ejecutamos todo junto nos puede traer problemas.

ALTER TABLE alumno;
add direccion VARCHAR(20);

drop table alumno; -- borro tabla dentro de base de datos
drop database henry; -- borro base de datos

-- es distinto a DELETE, este ultimo se usa para borrar REGISTROS

