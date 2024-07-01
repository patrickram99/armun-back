USE armun;

DROP FUNCTION IF EXISTS TotalNumberOfCommittees

DELIMITER $$

CREATE FUNCTION TotalNumberOfCommittees() RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM comites;
    RETURN total;
END$$

DELIMITER ;

SELECT TotalNumberOfCommittees() AS 'Numero de comites';

