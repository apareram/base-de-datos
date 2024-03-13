SELECT P1_sitios.direccion AS sitio, COUNT(*) AS total_viajes
FROM P1_viajes
JOIN P1_sitios ON P1_viajes.idSitio = P1_sitios.idSitio
GROUP BY P1_viajes.idSitio
HAVING total_viajes = (
    SELECT COUNT(*) AS total_viajes
    FROM P1_viajes
    GROUP BY idSitio
    ORDER BY total_viajes DESC
    LIMIT 1
)
ORDER BY total_viajes DESC;

SELECT P1_usuario.nombre, P1_usuario.apellido, COUNT(*) AS total_viajes
FROM P1_viajes
JOIN P1_usuario ON P1_viajes.idUsuario = P1_usuario.idUsuario
GROUP BY P1_viajes.idUsuario
HAVING total_viajes = (
    SELECT COUNT(*) AS total_viajes
    FROM P1_viajes
    GROUP BY idUsuario
    ORDER BY total_viajes ASC
    LIMIT 1
)
ORDER BY total_viajes DESC;

SELECT P1_destinos.calle AS destino, COUNT(*) AS total_viajes
FROM P1_viajes
JOIN P1_destinos ON P1_viajes.idDestino = P1_destinos.idDestino
GROUP BY P1_viajes.idDestino
HAVING total_viajes = (
    SELECT COUNT(*) AS total_viajes
    FROM P1_viajes
    GROUP BY idDestino
    ORDER BY total_viajes DESC
    LIMIT 1
)
ORDER BY total_viajes DESC;

SELECT 
    P1_conductores.nombreConductor,
    P1_vehiculos.modelo,
    SUM(TIMESTAMPDIFF(MINUTE, P1_viajes.horaPartida, P1_viajes.horaLlegada)) AS tiempo_total_enero
FROM P1_viajes
JOIN P1_vehiculo_conductor ON P1_viajes.idVehiculo = P1_vehiculo_conductor.idVehiculo
JOIN P1_conductores ON P1_vehiculo_conductor.idConductor = P1_conductores.idConductor
JOIN P1_vehiculos ON P1_viajes.idVehiculo = P1_vehiculos.idVehiculo
WHERE P1_viajes.fecha BETWEEN '2023-01-01' AND '2023-01-31'
GROUP BY P1_conductores.nombreConductor, P1_vehiculos.modelo
ORDER BY tiempo_total_enero DESC;

SELECT idSitio, COUNT(*) AS total_viajes
FROM P1_viajes
GROUP BY idSitio
ORDER BY total_viajes DESC
LIMIT 1;

SELECT AVG(TIMESTAMPDIFF(MINUTE, horaPartida, horaLlegada)) AS tiempo_promedio
FROM P1_viajes;

SELECT COUNT(*) AS total_viajes
FROM P1_viajes
WHERE MONTH(fecha) = 1 AND YEAR(fecha) = 2023;

SELECT idConductor, SUM(costo) AS total_facturado
FROM P1_viajes
GROUP BY idConductor
HAVING = (
    SELECT COUNT(*) idConductor
    FROM P1_viajes
    GROUP BY idConductor
    LIMIT 1
)
ORDER BY total_facturado DESC;

SELECT 
    P1_conductores.nombreConductor,
    SUM(P1_viajes.costo) AS total_facturado
FROM P1_viajes
JOIN P1_vehiculo_conductor ON P1_viajes.idVehiculo = P1_vehiculo_conductor.idVehiculo
JOIN P1_conductores ON P1_vehiculo_conductor.idConductor = P1_conductores.idConductor
GROUP BY P1_conductores.idConductor
HAVING total_facturado = (
    SELECT 
        MAX(total_facturado)
    FROM (
        SELECT 
            SUM(P1_viajes.costo) AS total_facturado
        FROM P1_viajes
        JOIN P1_vehiculo_conductor ON P1_viajes.idVehiculo = P1_vehiculo_conductor.idVehiculo
        GROUP BY P1_vehiculo_conductor.idConductor
    ) AS subquery
)
ORDER BY total_facturado DESC;

SELECT 
    P1_conductores.nombreConductor,
    SUM(P1_viajes.costo) AS facturacion_mensual
FROM P1_viajes
JOIN P1_vehiculo_conductor ON P1_viajes.idVehiculo = P1_vehiculo_conductor.idVehiculo
JOIN P1_conductores ON P1_vehiculo_conductor.idConductor = P1_conductores.idConductor
WHERE P1_vehiculo_conductor.idConductor = 3 AND MONTH(P1_viajes.fecha) = 1 AND YEAR(P1_viajes.fecha) = 2023
GROUP BY P1_vehiculo_conductor.idConductor;

SELECT 
    P1_vehiculos.idVehiculo,
    P1_vehiculos.modelo,
    P1_vehiculos.marca,
    P1_vehiculos.ano,
    P1_vehiculos.placas,
    MAX(TIMESTAMPDIFF(MINUTE, P1_viajes.horaPartida, P1_viajes.horaLlegada)) AS duracion_maxima
FROM P1_viajes
JOIN P1_vehiculos ON P1_viajes.idVehiculo = P1_vehiculos.idVehiculo
GROUP BY P1_vehiculos.idVehiculo
HAVING duracion_maxima = (
    SELECT MAX(duracion_maxima) FROM (
        SELECT MAX(TIMESTAMPDIFF(MINUTE, horaPartida, horaLlegada)) AS duracion_maxima
        FROM P1_viajes
        GROUP BY idVehiculo
    ) AS subquery
)
ORDER BY duracion_maxima DESC;
