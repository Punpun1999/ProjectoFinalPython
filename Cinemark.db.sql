BEGIN TRANSACTION;
DROP TABLE IF EXISTS "usuarios";
CREATE TABLE IF NOT EXISTS "usuarios" (
	"id"	INTEGER NOT NULL,
	"nombre"	TEXT(30) NOT NULL,
	"apellido"	TEXT(30) NOT NULL,
	"dni"	INTEGER NOT NULL,
	"usuario"	TEXT NOT NULL UNIQUE,
	"contraseña"	TEXT NOT NULL UNIQUE,
	"correo"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "Productos";
CREATE TABLE IF NOT EXISTS "Productos" (
	"IdProducto"	INTEGER NOT NULL UNIQUE,
	"IdSala"	INTEGER UNIQUE,
	"IdButaca"	INTEGER UNIQUE,
	"IdPelicula"	INTEGER UNIQUE,
	"Cantidad"	INTEGER,
	"Precio"	NUMERIC NOT NULL,
	"IdHorario"	INTEGER NOT NULL UNIQUE,
	PRIMARY KEY("IdProducto" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "Horarios";
CREATE TABLE IF NOT EXISTS "Horarios" (
	"IdHorario"	INTEGER NOT NULL UNIQUE,
	"IdPelicula"	INTEGER UNIQUE,
	"IdSala"	INTEGER UNIQUE,
	"Fecha"	INTEGER,
	"Hora"	INTEGER,
	PRIMARY KEY("IdHorario")
);
DROP TABLE IF EXISTS "Pelicula";
CREATE TABLE IF NOT EXISTS "Pelicula" (
	"IdPelicula"	INTEGER NOT NULL UNIQUE,
	"Duracion"	INTEGER NOT NULL,
	"Genero"	TEXT NOT NULL,
	"Descripcion"	TEXT NOT NULL,
	PRIMARY KEY("IdPelicula" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "Sala";
CREATE TABLE IF NOT EXISTS "Sala" (
	"IdSala"	INTEGER NOT NULL UNIQUE,
	"IdButaca"	INTEGER NOT NULL UNIQUE,
	"2d-3d"	BLOB,
	"vip"	BLOB,
	"IdPelicula"	INTEGER NOT NULL,
	PRIMARY KEY("IdSala" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "Boleto";
CREATE TABLE IF NOT EXISTS "Boleto" (
	"NumeroBoleto"	INTEGER NOT NULL UNIQUE,
	"IdCliente"	INTEGER NOT NULL,
	"Nombre_Cliente"	INTEGER NOT NULL,
	"IdProducto"	INTEGER NOT NULL UNIQUE,
	"IdSala"	INTEGER NOT NULL UNIQUE,
	"IdButaca"	INTEGER NOT NULL UNIQUE,
	PRIMARY KEY("NumeroBoleto" AUTOINCREMENT)
);
INSERT INTO "usuarios" ("id","nombre","apellido","dni","usuario","contraseña","correo") VALUES (2,'asdas','sadasd','asdasdas','sadasdasd','asdasdsa','asdsadasdasdqwed'),
 (3,'','',0,'','','');
DROP VIEW IF EXISTS "a";
CREATE VIEW "a" AS SELECT * FROM "main"."usuarios" WHERE "id" LIKE '%1%' ESCAPE '\' AND "nombre" LIKE '%facundo%' ESCAPE '\' AND "apellido" LIKE '%pereyra%' ESCAPE '\' AND "dni" LIKE '%123123214%' ESCAPE '\' AND "usuario" LIKE '%facundo123%' ESCAPE '\' AND "contraseña" LIKE '%popo1111%' ESCAPE '\' AND "correo" LIKE '%mota- 231q@gmail.com%' ESCAPE '\' ORDER BY "apellido" DESC;
COMMIT;
