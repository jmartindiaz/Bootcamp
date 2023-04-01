-- ALTER TABLE mytable ADD PRIMARY KEY (column_primary_key)

-- si ya tenemos FK no INDEXAMOS

-- Toda PK es INDEX
-- Creamos indices para hacer mas eficiente la query

-- Herramientas para optimizar nuestras querys:
-- index (TODA PK ES UN INDEX)
-- constraints
-- foreign keys

-- si generamos relaciones y no generamos index, podriamos tener una query muy lenta

-- si añadimos CONSTRAINT la cosa se pone lenta, ademas de eso debemos agregar INDEX
-- si se hace un constraint es recomendable especificar la FK como index para reducir los tiempos de ejecucion

-- para que nuestros joins sean rapidos debemos definir previamente las relaciones y los index(siempre refiriendonos a BBDD relacionales)