USE armun;

DROP FUNCTION IF EXISTS ganador_x_comite
DELIMITER //

CREATE FUNCTION ganador_x_comite(comite_id INT)
RETURNS VARCHAR(101)
DETERMINISTIC
BEGIN
    DECLARE ganador VARCHAR(101);

    SELECT CONCAT(d.nombre, ' ', d.apellido) INTO ganador
    FROM delegados d
    JOIN mocions m ON d.id = m.delegado_id
    WHERE d.comite_id = comite_id
    GROUP BY d.id
    ORDER BY COUNT(m.id) DESC
    LIMIT 1;

    RETURN ganador;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE list_all_committee_winners()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE _comite_id INT;
    DECLARE _comite VARCHAR(255);
    DECLARE _ganador VARCHAR(101);

    -- Cursor to iterate over all committees
    DECLARE cur_committee CURSOR FOR 
        SELECT id, comite_onu FROM comites;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    CREATE TEMPORARY TABLE IF NOT EXISTS winner_results (
        comite_id INT,
        comite VARCHAR(255),
        ganador VARCHAR(101)
    );

    OPEN cur_committee;

    committee_loop: LOOP
        FETCH cur_committee INTO _comite_id, _comite;
        IF done THEN
            LEAVE committee_loop;
        END IF;

        -- Obtener ganbador de cada comite usando la funcion
        SET _ganador = ganador_x_comite(_comite_id);
        INSERT INTO winner_results (comite_id, comite, ganador)
        VALUES (_comite_id, _comite, _ganador);

    END LOOP;

    -- Cerrar cursor
    CLOSE cur_committee;

    -- Mostrar resultados
    SELECT comite_id, comite, ganador
    FROM winner_results
    ORDER BY comite_id;

    -- ELiminar tabla temporal
    DROP TEMPORARY TABLE IF EXISTS winner_results;

END //

DELIMITER ;
CALL list_all_committee_winners();


