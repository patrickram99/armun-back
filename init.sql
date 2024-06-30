USE armun;

-- Insert Paises
INSERT INTO pais (nombre) VALUES 
('Estados Unidos'),
('Reino Unido'),
('Francia'),
('China'),
('Rusia'),
('Brasil'),
('México'),
('Alemania'),
('Japón'),
('India');

-- Insert Directores
INSERT INTO directors (nombre, apellido, correo, telefono) VALUES 
('Juan', 'Pérez', 'juan.perez@armun.com', '1234567890'),
('Ana', 'García', 'ana.garcia@armun.com', '1234567891'),
('Carlos', 'Rodríguez', 'carlos.rodriguez@armun.com', '1234567892'),
('Marta', 'López', 'marta.lopez@armun.com', '1234567893'),
('José', 'Martínez', 'jose.martinez@armun.com', '1234567894');

-- Insert DAdjuntos
INSERT INTO d_adjuntos (nombre, apellido, correo, telefono) VALUES 
('Pedro', 'Fernández', 'pedro.fernandez@armun.com', '1234567800'),
('Sofía', 'Ruiz', 'sofia.ruiz@armun.com', '1234567801'),
('Diego', 'Gómez', 'diego.gomez@armun.com', '1234567802'),
('Isabel', 'Díaz', 'isabel.diaz@armun.com', '1234567803'),
('Sergio', 'Morales', 'sergio.morales@armun.com', '1234567804');

-- Insert Moderadores
INSERT INTO moderadors (nombre, apellido, correo, telefono) VALUES 
('Fernando', 'Castro', 'fernando.castro@armun.com', '1234567810'),
('Cristina', 'Mendoza', 'cristina.mendoza@armun.com', '1234567811'),
('Raúl', 'Reyes', 'raul.reyes@armun.com', '1234567812'),
('Valentina', 'Herrera', 'valentina.herrera@armun.com', '1234567813'),
('Santiago', 'Núñez', 'santiago.nunez@armun.com', '1234567814');

-- Insert Mesas
INSERT INTO mesas (director_id, d_adjunto_id, moderador_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- Insert Comites
INSERT INTO comites (topico, comite_onu, paje_nombre, mesa_id) VALUES
('Desarme Nuclear', 'Consejo de Seguridad', 'Nicolás', 1),
('Cambio Climático', 'Asamblea General', 'María', 2),
('Derechos Humanos', 'Consejo de Derechos Humanos', 'Julia', 3),
('Economía Global', 'ECOSOC', 'Carlos', 4),
('Igualdad de Género', 'UN Women', 'Andrea', 5);

-- Insert Delegados
INSERT INTO delegados (nombre, apellido, delegacion, pais_id, comite_id) VALUES 
('Gabriel', 'López', 'Estados Unidos', 1, 1),
('Sofía', 'Martínez', 'Reino Unido', 2, 2),
('Emilio', 'García', 'Francia', 3, 3),
('Mariana', 'Hernández', 'China', 4, 4),
('Alonso', 'Gómez', 'Rusia', 5, 5);

-- Insert Secretariados
INSERT INTO secretariados (nombre, apellido, telefono, correo, rol) VALUES 
('Luis', 'Navarro', '5551234560', 'luis.navarro@armun.com', 'Coordinador General'),
('Paula', 'Rojas', '5551234561', 'paula.rojas@armun.com', 'Subcoordinadora General'),
('Carlos', 'Vargas', '5551234562', 'carlos.vargas@armun.com', 'Coordinador de Logística'),
('Diana', 'Campos', '5551234563', 'diana.campos@armun.com', 'Coordinadora de Finanzas'),
('José', 'Ramos', '5551234564', 'jose.ramos@armun.com', 'Coordinador de Comunicación');

-- Insert Mociones
INSERT INTO mocions (topico, tiempo_del, cant_del, tiempo_total, sesion, fecha, delegado_id, comite_id) VALUES 
('Desarme Nuclear', 10, 5, 50, 'Sesión 1', '2024-06-01', 1, 1),
('Cambio Climático', 15, 6, 90, 'Sesión 2', '2024-06-02', 2, 2),
('Derechos Humanos', 12, 4, 48, 'Sesión 1', '2024-06-03', 3, 3),
('Economía Global', 8, 3, 24, 'Sesión 2', '2024-06-04', 4, 4),
('Igualdad de Género', 20, 7, 140, 'Sesión 1', '2024-06-05', 5, 5);

-- Insert Voluntarios
INSERT INTO voluntarios (nombre, apellido, telefono, secretariado_id) VALUES 
('Daniel', 'Lopez', '5551234570', 1),
('Natalia', 'Martinez', '5551234571', 2),
('Lucas', 'Gomez', '5551234572', 3),
('Sara', 'Diaz', '5551234573', 4),
('Mateo', 'Morales', '5551234574', 5);

-- Insert Podios
INSERT INTO podios (best, outs, honorifica, verbal, comite_id) VALUES 
('Gabriel Lopez', 'Emilio Garcia', 'Mariana Hernandez', 'Alonso Gomez', 1),
('Sofia Martinez', 'Carolina Torres', 'Carmen Morales', 'Fernando Ortega', 2),
('Valentina Ruiz', 'Ricardo Perez', 'Diego Reyes', 'Sergio Alvarez', 3),
('Andrea Jimenez', 'Laura Romero', 'Lucia Castro', 'Miguel Fernandez', 4),
('Lucia Gonzalez', 'David Ramirez', 'Elena Mendoza', 'Patricia Romero', 5);

-- Insert Premios
INSERT INTO premios (nombre, mesa_id) VALUES 
('Mejor Delegado', 1),
('Delegado Sobresaliente', 2),
('Mención Honorífica', 3),
('Mejor Posición', 4),
('Mejor Discurso', 5);

-- Insert Charlas
-- INSERT INTO charlas (sesion, ponente, tema, delegado_id, fecha, hora) VALUES 
-- ('Sesión 1', 'Juan Perez', 'La importancia del desarme nuclear', 1, '2024-06-01', '09:00:00'),
-- ('Sesión 2', 'Ana Garcia', 'El cambio climático y su impacto', 2, '2024-06-02', '10:00:00');

-- INSERT INTO charlas (sesion, ponente, tema, delegado_id, fecha, hora) VALUES
-- ('Sesión 1', 'Juan Perez', 'La importancia del desarme nuclear', 1, '2024-06-01', '09:00:00'),
-- ('Sesión 2', 'Ana Garcia', 'El cambio climático y su impacto', 2, '2024-06-02', '10:00:00');
