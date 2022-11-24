CREATE TABLE `Boleto` (
  `NumeroBoleto` INTENGER,
  `IdPelicula` Tipo,
  `IdCliente` INTEGER,
  `IdSala` INTEGER,
  `IdButaca` INTEGER,
  `IdProducto` INTEGER,
  `Nombre_Cliente` TEXT,
  PRIMARY KEY (`NumeroBoleto`),
  KEY `Clave` (`Nombre_Cliente`)
);

CREATE TABLE `Sala` (
  `IdSala` INTEGER,
  `IdButaca` INTEGER,
  `VIP` BLOB,
  `3D/2D` BLOB,
  PRIMARY KEY (`IdSala`),
  KEY `Clave` (`VIP`, `3D/2D`)
);

CREATE TABLE `Producto` (
  `IdProductos` INTEGER,
  `IdSala` INTEGER,
  `IdButaca` INTEGER,
  `IdHorario` INTEGER,
  `NumeroBoleto` INTEGER,
  `Precio` NUMERIC,
  `Descripcion` TEXT,
  PRIMARY KEY (`IdProductos`),
  KEY `Clave` (`Precio`, `Descripcion`)
);

CREATE TABLE `Horario` (
  `IdHorario` INTEGER,
  `IdPelicula` INTEGER,
  `IdSala` INTEGER,
  `Fecha` Tipo,
  `Hora` Tipo,
  PRIMARY KEY (`IdHorario`),
  KEY `Clave` (`Fecha`, `Hora`)
);

CREATE TABLE `Pelicula` (
  `IdPelicula` INTEGER,
  `Duracion` INTEGER,
  `Genero` TEXT,
  `Descripcion` TEXT,
  PRIMARY KEY (`IdPelicula`),
  KEY `Clave` (`Duracion`, `Genero`, `Descripcion`)
);

CREATE TABLE `Clientes` (
  `IdClientes` INTEGER,
  `Usuario` TEXT,
  `Contraseña` TEXT,
  `Nombre` TEXT,
  `Apellido` TEXT,
  `DNI` INTEGER,
  PRIMARY KEY (`IdClientes`),
  KEY `Clave` (`Usuario`, `Contraseña`, `Nombre`, `Apellido`, `DNI`)
);

CREATE TABLE `Vendedor` (
  `IdVendedor` INTEGER,
  `Nombre` TEXT,
  `Apellido` TEXT,
  `DNI` INTEGER,
  `Domicilio ` TEXT
);
