USE armun;

DROP VIEW IF EXISTS ViewDelegatesByCountry;
CREATE VIEW ViewDelegatesByCountry AS
SELECT 
    p.id AS PaisID,
    p.nombre AS PaisNombre,
    COUNT(d.id) AS NumeroDelegados
FROM 
    pais p
LEFT JOIN delegados d ON p.id = d.pais_id
GROUP BY p.id, p.nombre;

DROP FUNCTION IF EXISTS GetDelegationStatus;

DELIMITER $$

DROP FUNCTION IF EXISTS GetDelegationStatus;

DELIMITER $$

CREATE FUNCTION GetDelegationStatus(paisID INT) RETURNS VARCHAR(64)
DETERMINISTIC
BEGIN
    DECLARE numDelegados INT DEFAULT 0;
    
    SELECT IFNULL(dc.NumeroDelegados, 0) INTO numDelegados
    FROM (
        SELECT 
            p.id AS PaisID,
            COUNT(d.id) AS NumeroDelegados
        FROM 
            pais p
        LEFT JOIN delegados d ON p.id = d.pais_id
        GROUP BY p.id
    ) AS dc
    WHERE dc.PaisID = paisID;
    
    IF numDelegados = 0 THEN
        RETURN 'País no encontrado o sin delegados';
    ELSEIF numDelegados >= 10 THEN
        RETURN 'Gran delegación';
    ELSEIF numDelegados >= 5 THEN
        RETURN 'Delegación moderada';
    ELSE
        RETURN 'Pequeña delegación';
    END IF;
END$$

DELIMITER ;

-- Ahora, ejecuta la consulta para ver los resultados
SELECT p.id, p.nombre, GetDelegationStatus(p.id) AS StatusDelegacion
FROM pais p;



