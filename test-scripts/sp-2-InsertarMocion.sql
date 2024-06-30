USE armun;

DROP PROCEDURE IF EXISTS InsertarMocion;

DELIMITER //

CREATE PROCEDURE InsertarMocion(
    IN topico VARCHAR(255),
    IN tiempo_del INT,
    IN cant_del INT,
    IN tiempo_total INT,
    IN sesion VARCHAR(100),
    IN fecha DATE,
    IN delegado_id INT,
    IN comite_id INT
)
BEGIN
    INSERT INTO mocions (topico, tiempo_del, cant_del, tiempo_total, sesion, fecha, delegado_id, comite_id)
    VALUES (topico, tiempo_del, cant_del, tiempo_total, sesion, fecha, delegado_id, comite_id);
END //

DELIMITER ;

-- Uso del procedimiento
CALL InsertarMocion('Cambio Climático', 2, 5, 10, 'Sesión 1', '2023-05-15', 1, 1);
