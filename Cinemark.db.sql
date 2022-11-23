CREATE TABLE `Horario` (
  `IdHorario` INTEGER,
  `IdPelicula` INTEGER,
  `IdSala` INTEGER,
  `Fecha` Tipo,
  `Hora` Tipo
);

CREATE TABLE `Sala` (
  `IdSala` INTEGER,
  `IdButaca` INTEGER,
  `VIP` BLOB,
  `3D/2D` BLOB,
  PRIMARY KEY (`IdSala`),
  KEY `Clave` (`VIP`, `3D/2D`)
);

CREATE TABLE `Boleto` (
  `NumeroBoleto` INTENGER,
  `IdPelicula` Tipo,
  `IdCliente` INTEGER,
  `IdSala` INTEGER,
  `IdButaca` INTEGER,
  `IdProducto` INTEGER,
  `Nombre_Cliente` TEXT,
  PRIMARY KEY (`NumeroBoleto`),
  FOREIGN KEY (`IdSala`) REFERENCES `Sala`(`IdSala`),
  FOREIGN KEY (`IdButaca`) REFERENCES `Sala`(`IdButaca`),
  KEY `Clave` (`Nombre_Cliente`)
);

CREATE TABLE `Clientes` (
  `IdClientes` INTEGER,
  `Usuario` TEXT,
  `Contraseña` TEXT,
  `Nombre` TEXT,
  `Apellido` TEXT,
  `DNI` INTEGER,
  FOREIGN KEY (`IdClientes`) REFERENCES `Boleto`(`IdCliente`)
);

CREATE TABLE `Peliculas` (
  `IdPelicula` INTEGER,
  `Duracion` INTEGER,
  `Genero` TEXT,
  `Descripcion` TEXT,
  FOREIGN KEY (`IdPelicula`) REFERENCES `Boleto`(`IdPelicula`)
);

CREATE TABLE `Producto` (
  `IdProductos` INTEGER,
  `IdSala` INTEGER,
  `Precio` NUMERIC,
  `Descripcion` TEXT,
  `IdHorario` INTEGER,
  `NumeroBoleto` INTEGER,
  `IdButaca` INTEGER,
  `IdHorario` INTEGER,
  FOREIGN KEY (`Descripcion`) REFERENCES `Peliculas`(`IdPelicula`),
  FOREIGN KEY (`IdSala`) REFERENCES `Sala`(`IdSala`),
  FOREIGN KEY (`IdButaca`) REFERENCES `Sala`(`IdButaca`),
  FOREIGN KEY (`NumeroBoleto`) REFERENCES `Boleto`(`NumeroBoleto`),
  FOREIGN KEY (`IdProductos`) REFERENCES `Boleto`(`IdProducto`)
);

CREATE TABLE `Vendedor` (
  `IdVendedor` INTEGER,
  `Nombre` TEXT,
  `Apellido` TEXT,
  `DNI` INTEGER,
  `Domicilio ` TEXT
);
