USE armun;

DELIMITER //

CREATE FUNCTION get_mociones_x_delegado(delegate_id INT) 
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE motion_count INT;
    DECLARE rate VARCHAR(10);
    DECLARE result VARCHAR(255);

    SELECT COUNT(*) INTO motion_count
    FROM mocions
    WHERE delegado_id = delegate_id;

    IF motion_count > 20 THEN
        SET rate = 'Alto';
    ELSEIF motion_count >= 10 AND motion_count <= 20 THEN
        SET rate = 'Medio';
    ELSE
        SET rate = 'Bajo';
    END IF;

    -- Combine the count and rate into a single string
    SET result = CONCAT(motion_count, ' (', rate, ')');

    RETURN result;
END //

DELIMITER ;

SELECT d.id, d.nombre, d.apellido, get_mociones_x_delegado(d.id) as 'Nivel'
FROM delegados d;
