USE armun;
DROP PROCEDURE IF EXISTS GetDelegadosPorPais;

DELIMITER //

CREATE PROCEDURE GetDelegadosPorPais(IN pais_id INT)
BEGIN
    SELECT d.nombre, d.apellido, d.delegacion, p.nombre AS pais, c.comite_onu
    FROM delegados d
    JOIN pais p ON d.pais_id = p.id
    JOIN comites c ON d.comite_id = c.id
    WHERE d.pais_id = pais_id;
END //

DELIMITER ;

-- Uso del procedimiento
CALL GetDelegadosPorPais(1);
