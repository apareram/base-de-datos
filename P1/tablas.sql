CREATE TABLE P1_usuario (
  idUsuario INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255),
  apellido VARCHAR(255),
  nombreUsuario VARCHAR(255),
  contrasena VARCHAR(255),
  email VARCHAR(255),
  telefono VARCHAR(20)
);

CREATE TABLE P1_conductores (
  idConductor INT PRIMARY KEY,
  nombreConductor VARCHAR(255),
  apellidoConductor VARCHAR(255)
);

CREATE TABLE P1_vehiculos (
  idVehiculo INT PRIMARY KEY,
  modelo VARCHAR(255),
  ano INT,
  placas VARCHAR(255),
  marca VARCHAR(255)
);

CREATE TABLE P1_sitios (
  idSitio INT PRIMARY KEY,
  direccion TEXT,
  latitud DECIMAL(9,6),
  longitud DECIMAL(9,6)
);

CREATE TABLE P1_destinos (
  idDestino INT PRIMARY KEY,
  calle VARCHAR(255),
  colonia VARCHAR(255),
  numero INT,
  codigoPostal VARCHAR(20),
  municipio_ciudad VARCHAR(255),
  ciudad VARCHAR(255)
);

CREATE TABLE P1_viajes (
  idViaje INT AUTO_INCREMENT PRIMARY KEY,
  idVehiculo INT,
  idUsuario INT,
  idSitio INT,
  idDestino INT,
  costo DECIMAL(10, 2),
  fecha DATE,
  horaPartida TIME,
  horaLlegada TIME,
  FOREIGN KEY (idVehiculo) REFERENCES P1_vehiculos(idVehiculo),
  FOREIGN KEY (idUsuario) REFERENCES P1_usuario(idUsuario),
  FOREIGN KEY (idSitio) REFERENCES P1_sitios(idSitio),
  FOREIGN KEY (idDestino) REFERENCES P1_destinos(idDestino)
);

CREATE TABLE P1_contacto_de_emerg (
  idContrato INT AUTO_INCREMENT PRIMARY KEY,
  idUsuario INT,
  nombreContacto VARCHAR(255),
  apellidoContacto VARCHAR(255),
  telefonoContacto VARCHAR(20),
  FOREIGN KEY (idUsuario) REFERENCES P1_usuario(idUsuario)
);

CREATE TABLE P1_conductor_sitio (
  idConSitio INT AUTO_INCREMENT PRIMARY KEY,
  idConductor INT,
  idSitio INT,
  FOREIGN KEY (idConductor) REFERENCES P1_conductores(idConductor),
  FOREIGN KEY (idSitio) REFERENCES P1_sitios(idSitio)
);

CREATE TABLE P1_vehiculo_conductor (
  idVeCon INT AUTO_INCREMENT PRIMARY KEY,
  idVehiculo INT,
  idConductor INT,
  fechaAsignacion DATETIME,
  FOREIGN KEY (idVehiculo) REFERENCES P1_vehiculos(idVehiculo),
  FOREIGN KEY (idConductor) REFERENCES P1_conductores(idConductor)
);