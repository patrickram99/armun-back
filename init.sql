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
('Italia'),
('España'),
('Canadá'),
('Australia'),
('Sudáfrica');

-- Insert Directores
INSERT INTO directors (nombre, apellido, correo, telefono) VALUES 
('Juan', 'Pérez', 'juan.perez@armun.com', '1234567890'),
('Ana', 'García', 'ana.garcia@armun.com', '1234567891'),
('Carlos', 'Rodríguez', 'carlos.rodriguez@armun.com', '1234567892'),
('Marta', 'López', 'marta.lopez@armun.com', '1234567893'),
('José', 'Martínez', 'jose.martinez@armun.com', '1234567894');
('Luis', 'Martín', 'luis.martin@armun.com', '1234567990'),
('Sara', 'Ortiz', 'sara.ortiz@armun.com', '1234567981'),
('Iván', 'Fernández', 'ivan.fernandez@armun.com', '1234567972');

-- Insert DAdjuntos
INSERT INTO d_adjuntos (nombre, apellido, correo, telefono) VALUES 
('Pedro', 'Fernández', 'pedro.fernandez@armun.com', '1234567800'),
('Sofía', 'Ruiz', 'sofia.ruiz@armun.com', '1234567801'),
('Diego', 'Gómez', 'diego.gomez@armun.com', '1234567802'),
('Isabel', 'Díaz', 'isabel.diaz@armun.com', '1234567803'),
('Sergio', 'Morales', 'sergio.morales@armun.com', '1234567804');
('Mario', 'Sánchez', 'mario.sanchez@armun.com', '1234567895'),
('Laura', 'Molina', 'laura.molina@armun.com', '1234567860');

-- Insert Moderadores
INSERT INTO moderadors (nombre, apellido, correo, telefono) VALUES 
('Fernando', 'Castro', 'fernando.castro@armun.com', '957645123'),
('Cristina', 'Mendoza', 'cristina.mendoza@armun.com', ' 949129297'),
('Raúl', 'Reyes', 'raul.reyes@armun.com', '958121672'),
('Valentina', 'Herrera', 'valentina.herrera@armun.com', ' 958951162'),
('Santiago', 'Núñez', 'santiago.nunez@armun.com', '963628133');
('Natalia', 'García', 'natalia.garcia@armun.com', '959160247'),
('Patty', 'Lopez', 'Patty.lopez@armun.com', '926770008');
-- Insert Mesas
INSERT INTO mesas (director_id, d_adjunto_id, moderador_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);
(6, 6, 6),
(7, 7, 7);
-- Insert Comites
INSERT INTO comites (topico, comite_onu, paje_nombre, mesa_id) VALUES
('Desarme Nuclear', 'Consejo de Seguridad', 'Nicolás', 1),
('Cambio Climático', 'Asamblea General', 'María', 2),
('Derechos Humanos', 'Consejo de Derechos Humanos', 'Julia', 3),
('Economía Global', 'ECOSOC', 'Carlos', 4),
('Igualdad de Género', 'UN Women', 'Andrea', 5);
('Tecnología y Seguridad', 'Comisión de Ciencia y Tecnología', 'Pedro', 6),
('Salud Global', 'Organización Mundial de la Salud', 'Lucía', 7);
-- Insert Delegados
INSERT INTO delegados (nombre, apellido, delegacion, pais_id, comite_id) VALUES 
('Gabriel', 'López', 'Estados Unidos', 1, 1),
('Sofía', 'Martínez', 'Reino Unido', 2, 2),
('Emilio', 'García', 'Francia', 3, 3),
('Mariana', 'Hernández', 'China', 4, 4),
('Alonso', 'Gómez', 'Rusia', 5, 5);
('Claudia', 'Vega', 'Italia', 6, 6),
('Oscar', 'Jiménez', 'España', 7, 7);
-- Insert Secretariados
INSERT INTO secretariados (nombre, apellido, telefono, correo, rol) VALUES 
('Luis', 'Navarro', '973230517', 'luis.navarro@armun.com', 'Coordinador General'),
('Paula', 'Rojas', '958327325', 'paula.rojas@armun.com', 'Subcoordinadora General'),
('Carlos', 'Vargas', '975132456', 'carlos.vargas@armun.com', 'Coordinador de Logística'),
('Diana', 'Campos', '931346578', 'diana.campos@armun.com', 'Coordinadora de Finanzas'),
('José', 'Ramos', '998764135', 'jose.ramos@armun.com', 'Coordinador de Comunicación');
('Elena', 'Prieto', '989746121', 'elena.prieto@armun.com', 'Coordinadora de Eventos'),
('Marcos', 'Duarte', '974413256', 'marcos.duarte@armun.com', 'Asistente General');
-- Insert Mociones
INSERT INTO mocions (topico, tiempo_del, cant_del, tiempo_total, sesion, fecha, delegado_id, comite_id) VALUES 
('Politicas internaciones de legislación nuclear', 10, 5, 50, 'Sesión 1', '2024-06-01', 1, 1),
('ODS numero 17', 15, 6, 90, 'Sesión 2', '2024-06-02', 2, 2),
('Revisitar la Declaracion Universal de Derechos Humanos', 12, 4, 48, 'Sesión 1', '2024-06-03', 3, 3),
('Analizar facultades de la OIT', 8, 3, 24, 'Sesión 2', '2024-06-04', 4, 4),
('Evaluar lenguaje inclusivo', 20, 7, 140, 'Sesión 1', '2024-06-05', 5, 5);
('Innovación en Educación', 18, 4, 72, 'Sesión 3', '2024-06-03', 6, 6),
('Crisis Climática', 20, 7, 140, 'Sesión 4', '2024-06-04', 7, 7);
-- Insert Voluntarios
INSERT INTO voluntarios (nombre, apellido, telefono, secretariado_id) VALUES 
('Daniel', 'Lopez', '976481546', 1),
('Natalia', 'Martinez', '965714236', 2),
('Lucas', 'Gomez', '969754811', 3),
('Sara', 'Diaz', '999784610', 4),
('Mateo', 'Morales', '900134625', 5);
('Ana', 'Torres', '963796727', 6),
('Manuel', 'Gomez', '983128687', 7);
-- Insert Podios
INSERT INTO podios (best, outs, honorifica, verbal, comite_id) VALUES 
('Gabriel Lopez', 'Emilio Garcia', 'Mariana Hernandez', 'Alonso Gomez', 1),
('Sofia Martinez', 'Carolina Torres', 'Carmen Morales', 'Fernando Ortega', 2),
('Valentina Ruiz', 'Ricardo Perez', 'Diego Reyes', 'Sergio Alvarez', 3),
('Andrea Jimenez', 'Laura Romero', 'Lucia Castro', 'Miguel Fernandez', 4),
('Lucia Gonzalez', 'David Ramirez', 'Elena Mendoza', 'Patricia Romero', 5);
('Claudia Vega', 'Oscar Jiménez', 'Laura Molina', 'Mario Sánchez', 6),
('Sara Ortiz', 'Roberto Silva', 'Iván Fernández', 'Luis Martín', 7);
-- Insert Premios
INSERT INTO premios (nombre, mesa_id) VALUES 
('Mejor Delegado', 1),
('Delegado Sobresaliente', 2),
('Mención Honorífica', 3),
('Mejor Posición', 4),
('Mejor Discurso', 5);
('Mejor Innovación', 6),
('Liderazgo en Crisis', 7);
-- Insert Charlas
-- INSERT INTO charlas (sesion, ponente, tema, delegado_id, fecha, hora) VALUES 
-- ('Sesión 1', 'Juan Perez', 'La importancia del desarme nuclear', 1, '2024-06-01', '09:00:00'),
-- ('Sesión 2', 'Ana Garcia', 'El cambio climático y su impacto', 2, '2024-06-02', '10:00:00');

INSERT INTO charlas (sesion, ponente, tema, delegado_id, fecha) VALUES
('Sesión 1', 'Juan Perez', 'La importancia del desarme nuclear', 1, '2024-06-01'),
('Sesión 2', 'Ana Garcia', 'El cambio climático y su impacto', 2, '2024-06-02');
('Sesión 3', 'Luis Martín', 'Futuro de la Inteligencia Artificial', 6, '2024-06-03'),
('Sesión 4', 'Sara Ortiz', 'Avances en la Medicina Moderna', 7, '2024-06-04');
