SELECT
    voluntarios.nombre AS voluntario_nombre,
    voluntarios.apellido AS voluntario_apellido,
    voluntarios.telefono AS voluntario_telefono,
    secretariados.nombre AS secretariado_nombre,
    secretariados.apellido AS secretariado_apellido,
    secretariados.telefono AS secretariado_telefono,
    secretariados.correo AS secretariado_correo,
    secretariados.rol AS secretariado_rol
FROM
    voluntarios
INNER JOIN
    secretariados ON voluntarios.secretariado_id = secretariados.id
WHERE secretariados.nombre = ? ;
