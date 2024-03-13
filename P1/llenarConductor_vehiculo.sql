-- Paso 1: Crear una tabla temporal para las fechas
CREATE TEMPORARY TABLE IF NOT EXISTS temp_dates (
    date DATE
);

-- Paso 2: Procedimiento para poblar la tabla temporal con fechas
DELIMITER //
CREATE PROCEDURE fill_dates(start_date DATE, end_date DATE)
BEGIN
    DECLARE current_date DATE;
    SET current_date = start_date;
    WHILE current_date <= end_date DO
        INSERT INTO temp_dates (date) VALUES (current_date);
        SET current_date = DATE_ADD(current_date, INTERVAL 1 DAY);
    END WHILE;
END //
DELIMITER ;

-- Paso 3: Procedimiento para asignar vehículos y conductores
DELIMITER //
CREATE PROCEDURE assign_vehicles()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE current_date DATE;
    DECLARE vehicle_id INT;
    DECLARE conductor_id INT;
    DECLARE date_cursor CURSOR FOR SELECT date FROM temp_dates;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN date_cursor;

    read_loop: LOOP
        FETCH date_cursor INTO current_date;
        IF done THEN
            LEAVE read_loop;
        END IF;

        SET vehicle_id = (SELECT idVehiculo FROM P1_vehiculos ORDER BY RAND() LIMIT 1);
        SET conductor_id = (SELECT idConductor FROM P1_conductores ORDER BY RAND() LIMIT 1);

        INSERT INTO P1_vehiculo_conductor (idVehiculo, idConductor, fechaAsignacion) VALUES (vehicle_id, conductor_id, current_date);
    END LOOP;

    CLOSE date_cursor;
END //
DELIMITER ;