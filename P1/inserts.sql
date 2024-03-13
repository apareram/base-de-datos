INSERT INTO P1_usuario (nombre, apellido, nombreUsuario, contrasena, email, telefono) VALUES
('Roberto', 'Hernández', 'rhernandez', 'contraseña3', 'rhernandez@email.com', '5512345680'),
('Laura', 'García', 'lgarcia', 'contraseña4', 'lgarcia@email.com', '5512345681'),
('Alejandro', 'Martínez', 'amartinez', 'contraseña5', 'amartinez@email.com', '5512345682'),
('Carmen', 'Rodríguez', 'crodriguez', 'contraseña6', 'crodriguez@email.com', '5512345683'),
('Ricardo', 'Gómez', 'rgomez', 'contraseña7', 'rgomez@email.com', '5512345684'),
('Sofía', 'López', 'slopez', 'contraseña8', 'slopez@email.com', '5512345685'),
('Jorge', 'Sánchez', 'jsanchez', 'contraseña9', 'jsanchez@email.com', '5512345686'),
('Patricia', 'Díaz', 'pdiaz', 'contraseña10', 'pdiaz@email.com', '5512345687'),
('Adriana', 'VasquezColmenares', 'avasquezc', '123', 'adrivcc@gmail.com', '4494848558'),
('Andrés', 'Tortolero', 'atorto', 'basesDdatos', 'p26393@correo.uia.mx', '5512998144'),
('Xavier', 'Tortolero', 'xtorto', 'dinamicaDproceso', 'p8387@correo.uia.mx', '5534546673');

INSERT INTO P1_conductores (idConductor, nombreConductor, apellidoConductor) VALUES
(1, 'Carlos', 'González'),
(2, 'Luis', 'Martínez'),
(3, 'Alejandro', 'Gómez'),
(4, 'Alberto', 'Parera');

INSERT INTO P1_viajes (idVehiculo, idUsuario, idSitio, idDestino, costo, fecha, horaPartida, horaLlegada) VALUES
(2, 3, 2, 2, 200.00, '2023-01-01', '09:00:00', '09:30:00'),
(3, 4, 3, 3, 250.00, '2023-01-02', '10:00:00', '10:45:00'),
(4, 5, 4, 4, 180.00, '2023-01-03', '11:00:00', '11:20:00'),
(5, 6, 5, 5, 220.00, '2023-01-04', '12:00:00', '12:30:00'),
(1, 7, 6, 6, 150.00, '2023-01-05', '13:00:00', '13:25:00'),
(2, 8, 7, 7, 200.00, '2023-01-06', '14:00:00', '14:35:00'),
(3, 9, 8, 8, 250.00, '2023-01-07', '15:00:00', '15:50:00'),
(4, 10, 9, 9, 180.00, '2023-01-08', '16:00:00', '16:30:00'),
(5, 11, 10, 10, 220.00, '2023-01-09', '17:00:00', '17:40:00'),
(1, 2, 11, 11, 150.00, '2023-01-10', '18:00:00', '18:30:00'),
(2, 3, 1, 1, 200.00, '2023-01-11', '19:00:00', '19:30:00'),
(3, 4, 2, 2, 250.00, '2023-01-12', '20:00:00', '20:45:00'),
(4, 5, 3, 3, 180.00, '2023-01-13', '21:00:00', '21:20:00'),
(5, 6, 4, 4, 220.00, '2023-01-14', '22:00:00', '22:30:00'),
(1, 7, 5, 5, 150.00, '2023-01-15', '23:00:00', '23:25:00'),
(2, 8, 6, 6, 200.00, '2023-01-16', '00:00:00', '00:35:00'),
(3, 9, 7, 7, 250.00, '2023-01-17', '01:00:00', '01:50:00'),
(4, 10, 8, 8, 180.00, '2023-01-18', '02:00:00', '02:30:00'),
(5, 11, 9, 9, 220.00, '2023-01-19', '03:00:00', '03:40:00');

INSERT INTO P1_sitios (idSitio, direccion, latitud, longitud) VALUES
(1, 'Calle Falsa 123, Ciudad de México', 19.432608, -99.133209),
(2, 'Avenida Siempreviva 456, Guadalajara', 20.659698, -103.349609),
(3, 'Paseo de la Reforma 789, Ciudad de México', 19.435201, -99.146862),
(4, 'Calle Independencia 101, Monterrey', 25.671341, -100.309201),
(5, 'Boulevard Kukulcán Km. 8.5, Cancún', 21.134186, -86.744629),
(6, 'Avenida Universidad 1000, Querétaro', 20.588818, -100.389888),
(7, 'Calle 60 No. 456, Mérida', 20.967370, -89.592586),
(8, 'Avenida Revolución 333, Tijuana', 32.514947, -117.038247),
(9, 'Calle Hidalgo 77, Puebla', 19.041440, -98.206273),
(10, 'Avenida Juárez 1234, Guanajuato', 21.019015, -101.257359),
(11, 'Paseo Montejo 456, Mérida', 20.984973, -89.616959);

INSERT INTO P1_vehiculos (idVehiculo, modelo, ano, placas, marca) VALUES
(1, 'Corolla', 2020, 'MEX-001', 'Toyota'),
(2, 'Civic', 2019, 'MEX-002', 'Honda'),
(3, 'Jetta', 2018, 'MEX-003', 'Volkswagen'),
(4, 'Mazda3', 2021, 'MEX-004', 'Mazda'),
(5, 'Sentra', 2017, 'MEX-005', 'Nissan');

INSERT INTO P1_contacto_de_emerg (idUsuario, nombreContacto, apellidoContacto, telefonoContacto) VALUES
(1, 'Roberto', 'Gómez', '5567891234'),
(2, 'Luisa', 'Martínez', '5543216789'),
(3, 'Miguel', 'Hernández', '5523456789'),
(4, 'Andrea', 'Ramírez', '5534567891'),
(5, 'Jorge', 'López', '5512345678'),
(6, 'Sandra', 'Pérez', '5598765432'),
(7, 'Ricardo', 'García', '5587654321'),
(8, 'Carmen', 'Torres', '5576543210'),
(9, 'Fernando', 'Cruz', '5565432109'),
(10, 'Patricia', 'González', '5554321098'),
(11, 'Alejandro', 'Ruiz', '5543210987');

INSERT INTO P1_conductor_sitio (idConductor, idSitio) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 11),
(5, 1),
(5, 2),
(5, 3);

INSERT INTO P1_destinos (idDestino, calle, colonia, numero, codigoPostal, municipio_ciudad) VALUES
(1, 'Avenida Reforma', 'Centro', 123, '06050', 'Ciudad de México'),
(2, 'Calle Juárez', 'Zona Rosa', 456, '06600', 'Ciudad de México'),
(3, 'Boulevard Kukulcán', 'Zona Hotelera', 789, '77500', 'Cancún'),
(4, 'Avenida Constitución', 'Centro', 101, '64000', 'Monterrey'),
(5, 'Calle Independencia', 'Centro', 202, '44100', 'Guadalajara'),
(6, 'Avenida Universidad', 'Norte', 303, '76000', 'Querétaro'),
(7, 'Paseo de Montejo', 'Centro', 404, '97000', 'Mérida'),
(8, 'Avenida Revolución', 'Zona Centro', 505, '22000', 'Tijuana'),
(9, 'Calle 16 de Septiembre', 'Centro', 606, '72000', 'Puebla'),
(10, 'Avenida Juárez', 'Centro', 707, '36000', 'Guanajuato'),
(11, 'Calle 60', 'Centro', 808, '97000', 'Mérida');