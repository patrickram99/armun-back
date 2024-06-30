USE armun;

DROP PROCEDURE IF EXISTS InsertarDelegado;

DELIMITER //

CREATE PROCEDURE InsertarDelegado(
    IN p_nombre VARCHAR(50),
    IN p_apellido VARCHAR(50),
    IN p_delegacion VARCHAR(100),
    IN p_pos_paper LONGBLOB,
    IN p_pais_id INT,
    IN p_comite_id INT
)
BEGIN
    DECLARE exit handler for sqlexception
    BEGIN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error en la inserción del delegado';
    END;

    START TRANSACTION;

    -- Verificar que los campos requeridos no sean nulos
    IF p_nombre IS NULL OR p_apellido IS NULL OR p_delegacion IS NULL OR p_pais_id IS NULL OR p_comite_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Todos los campos son requeridos excepto pos_paper';
    END IF;

    -- Verificar la longitud de los campos string
    IF LENGTH(p_nombre) > 50 OR LENGTH(p_apellido) > 50 OR LENGTH(p_delegacion) > 100 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La longitud de uno o más campos excede el límite permitido';
    END IF;

    -- Verificar que el país y el comité existen
    IF NOT EXISTS (SELECT 1 FROM pais WHERE id = p_pais_id) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El país especificado no existe';
    END IF;

    IF NOT EXISTS (SELECT 1 FROM comites WHERE id = p_comite_id) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El comité especificado no existe';
    END IF;

    -- Insertar el nuevo delegado
    INSERT INTO delegados (nombre, apellido, delegacion, pos_paper, pais_id, comite_id, created_at, updated_at)
    VALUES (p_nombre, p_apellido, p_delegacion, p_pos_paper, p_pais_id, p_comite_id, NOW(), NOW());

    COMMIT;

    SELECT LAST_INSERT_ID() AS nuevo_delegado_id;
END //

DELIMITER ;

-- Uso del procedimiento (ejemplo)
CALL InsertarDelegado('Juan', 'Pérez', 'Delegación A', NULL, 1, 1);
