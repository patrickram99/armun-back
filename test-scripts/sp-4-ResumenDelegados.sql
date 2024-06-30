USE armun;

DELIMITER XD

CREATE PROCEDURE AnalisisGlobalMocionesDelegados()
BEGIN
    -- Crear tabla temporal para almacenar resultados
    DROP TEMPORARY TABLE IF EXISTS temp_analisis_mociones;
    CREATE TEMPORARY TABLE temp_analisis_mociones (
        delegado_id INT,
        nombre_completo VARCHAR(101),
        delegacion VARCHAR(100),
        num_mociones INT,
        categoria VARCHAR(20)
    );
    
    -- Insertar resultados en la tabla temporal
    INSERT INTO temp_analisis_mociones
    SELECT 
        d.id AS delegado_id,
        CONCAT(d.nombre, ' ', d.apellido) AS nombre_completo,
        d.delegacion,
        COUNT(m.id) AS num_mociones,
        CASE
            WHEN COUNT(m.id) = 0 THEN 'Inactivo'
            WHEN COUNT(m.id) BETWEEN 1 AND 3 THEN 'Poco Activo'
            WHEN COUNT(m.id) BETWEEN 4 AND 7 THEN 'Activo'
            ELSE 'Muy Activo'
        END AS categoria
    FROM delegados d
    LEFT JOIN mocions m ON d.id = m.delegado_id
    GROUP BY d.id, d.nombre, d.apellido, d.delegacion;
    
    -- Mostrar resultados detallados
    SELECT 
        delegado_id,
        nombre_completo,
        delegacion,
        num_mociones,
        categoria
    FROM temp_analisis_mociones
    ORDER BY num_mociones DESC;
    
    -- Mostrar resumen por categoría
    SELECT 
        categoria,
        COUNT(*) AS total_delegados,
        SUM(num_mociones) AS total_mociones
    FROM temp_analisis_mociones
    GROUP BY categoria
    ORDER BY 
        CASE categoria
            WHEN 'Muy Activo' THEN 1
            WHEN 'Activo' THEN 2
            WHEN 'Poco Activo' THEN 3
            WHEN 'Inactivo' THEN 4
        END;
    
    -- Mostrar estadísticas globales
    SELECT 
        COUNT(DISTINCT delegado_id) AS total_delegados,
        SUM(num_mociones) AS total_mociones,
        AVG(num_mociones) AS promedio_mociones,
        MAX(num_mociones) AS max_mociones,
        MIN(num_mociones) AS min_mociones
    FROM temp_analisis_mociones;
    
    -- Limpiar la tabla temporal
    DROP TEMPORARY TABLE IF EXISTS temp_analisis_mociones;
END XD

DELIMITER ;

-- Uso del procedimiento
CALL AnalisisGlobalMocionesDelegados();

