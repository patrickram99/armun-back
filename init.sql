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
('Laura', 'Morales', 'Alemania', 8, 8),
('Carlos', 'Sanchez', 'India', 9, 9),
('Alicia', 'Fernandez', 'Japón', 10, 10),
('David', 'Ramirez', 'Australia', 11, 11),
('Elena', 'Lopez', 'Canadá', 12, 12),
('Ricardo', 'Alvarez', 'Sudáfrica', 13, 13),
('Patricia', 'Gutierrez', 'Brasil', 14, 14),
('Jorge', 'Navarro', 'México', 15, 15),
('Carmen', 'Ruiz', 'Noruega', 16, 16),
('Felipe', 'Moreno', 'Suecia', 17, 17),
('Daniela', 'Vargas', 'Finlandia', 18, 18),
('Lucas', 'Martinez', 'Dinamarca', 19, 19),
('María', 'Jimenez', 'Nueva Zelanda', 20, 20),
('Nicolás', 'Castro', 'Portugal', 21, 21),
('Cristina', 'Garcia', 'Irlanda', 22, 22),
('Sergio', 'Lorenzo', 'Bélgica', 23, 23),
('Ana', 'Pérez', 'Países Bajos', 24, 24),
('Iván', 'Santos', 'Suiza', 25, 25),
('Monica', 'Romero', 'Austria', 26, 26),
('Esteban', 'Ortiz', 'Polonia', 27, 27),
('Verónica', 'Mendez', 'Grecia', 28, 28),
('Fernando', 'Herrera', 'Hungría', 29, 29),
('Beatriz', 'Gonzalez', 'República Checa', 30, 30),
('Alberto', 'Molina', 'Eslovaquia', 31, 31),
('Silvia', 'Campos', 'Luxemburgo', 32, 32),
('Omar', 'Díaz', 'Croacia', 33, 33),
('Sonia', 'Blanco', 'Rumania', 34, 34),
('Julio', 'Serrano', 'Bulgaria', 35, 35),
('Marta', 'Torres', 'Serbia', 36, 36),
('Andrés', 'Domínguez', 'Montenegro', 37, 37),
('Lorena', 'Reyes', 'Bosnia y Herzegovina', 38, 38),
('Gustavo', 'Rojo', 'Albania', 39, 39),
('Natalia', 'Vidal', 'Macedonia del Norte', 40, 40),
('Hugo', 'Castaño', 'Estonia', 41, 41),
('Clara', 'Muñoz', 'Letonia', 42, 42),
('Rubén', 'Iglesias', 'Lituania', 43, 43),
('Raquel', 'Ferreira', 'Belarús', 44, 44),
('Pablo', 'Garrido', 'Ucrania', 45, 45),
('Isabel', 'Correa', 'Moldavia', 46, 46),
('Antonio', 'Prieto', 'Armenia', 47, 47);
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
('Desafíos de la Educación en África', 11, 4, 44, 'Sesión 1', '2024-06-26', 28, 8),
('Transparencia Gubernamental y Corrupción', 9, 3, 27, 'Sesión 2', '2024-06-27', 29, 9),
('Gestión Sostenible de los Océanos', 12, 5, 60, 'Sesión 3', '2024-06-28', 30, 10),
('La Inteligencia Artificial en la Salud', 14, 6, 84, 'Sesión 4', '2024-06-29', 31, 11),
('Derechos Humanos en Medio Oriente', 16, 7, 112, 'Sesión 1', '2024-06-30', 32, 12),
('Innovación en Infraestructura y Transporte', 10, 3, 30, 'Sesión 2', '2024-07-01', 33, 13),
('Desarrollo de Políticas de Bienestar Social', 18, 8, 144, 'Sesión 3', '2024-07-02', 34, 14),
('El Rol de las ONGs en la Política Global', 15, 6, 90, 'Sesión 4', '2024-07-03', 35, 15),
('Protección de Endemismos y Biodiversidad', 7, 2, 14, 'Sesión 1', '2024-07-04', 36, 16),
('Impacto Social de las Redes Sociales', 13, 5, 65, 'Sesión 2', '2024-07-05', 37, 17),
('Desafíos de la Inclusión Financiera', 17, 8, 136, 'Sesión 3', '2024-07-06', 38, 18),
('Reforma de la Seguridad Global', 20, 9, 180, 'Sesión 4', '2024-07-07', 39, 19),
('Tensiones Geopolíticas en Asia', 15, 7, 105, 'Sesión 1', '2024-07-08', 40, 20),
('Normativas Internacionales del Espacio', 12, 6, 72, 'Sesión 2', '2024-07-09', 41, 21),
('Adopción Global de Energías Alternativas', 14, 7, 98, 'Sesión 3', '2024-07-10', 42, 22),
('Iniciativas de Paz en Zonas de Conflicto', 11, 5, 55, 'Sesión 4', '2024-07-11', 43, 23),
('La Ética en la Experimentación Científica', 19, 8, 152, 'Sesión 1', '2024-07-12', 44, 24),
('Juventud y Política', 13, 4, 52, 'Sesión 2', '2024-07-13', 45, 25),
('Impacto de la Pandemia en el Comercio Global', 10, 3, 30, 'Sesión 3', '2024-07-14', 46, 26),
('Estrategias contra el Cambio Climático', 20, 10, 200, 'Sesión 4', '2024-07-15', 47, 27);
-- Insert Voluntarios
INSERT INTO voluntarios (nombre, apellido, telefono, secretariado_id) VALUES 
('Daniel', 'Lopez', '976481546', 1),
('Natalia', 'Martinez', '965714236', 2),
('Lucas', 'Gomez', '969754811', 3),
('Sara', 'Diaz', '999784610', 4),
('Mateo', 'Morales', '900134625', 5);
('Ana', 'Torres', '963796727', 6),
('Manuel', 'Gomez', '983128687', 7);
('Elena', 'Prieto', '920784612', 8),
('Iván', 'Moreno', '920184623', 9),
('Carla', 'Nuñez', '920584634', 10),
('Miguel', 'Ortega', '920384645', 11),
('Laura', 'Pérez', '920484656', 12),
('Oscar', 'Ruiz', '920384667', 13),
('Teresa', 'Sanz', '920284678', 14),
('Javier', 'Quintana', '920784689', 15),
('Alicia', 'Ramirez', '920684690', 16),
('Fernando', 'Soto', '920584601', 17),
('Carmen', 'Torres', '920384612', 18),
('Francisco', 'Velasco', '920184623', 19),
('Sofía', 'Zamora', '920984634', 20),
('Carlos', 'Arias', '920784645', 21),
('Patricia', 'Blanco', '920684656', 22),
('Luis', 'Campos', '920584667', 23),
('Diana', 'Domínguez', '920384678', 24),
('Álvaro', 'Escobar', '920184689', 25),
('Gloria', 'Fuentes', '920984690', 26),
('Héctor', 'Guerrero', '920884601', 27),
('Isabel', 'Herrera', '920784612', 28),
('Jorge', 'Ibáñez', '920684623', 29),
('Claudia', 'Jiménez', '920584634', 30),
('Kevin', 'Lara', '920384645', 31),
('Mónica', 'Molina', '920184656', 32),
('Néstor', 'Navarro', '920984667', 33),
('Olivia', 'Ocampo', '920784678', 34),
('Pablo', 'Pardo', '920684689', 35),
('Quintín', 'Quezada', '920584690', 36),
('Raquel', 'Ramos', '920384601', 37),
('Samuel', 'Solano', '920184612', 38),
('Tamara', 'Toro', '920984623', 39),
('Ubaldo', 'Urrutia', '920784634', 40),
('Valeria', 'Vega', '920684645', 41),
('Waldo', 'Wagner', '920584656', 42),
('Ximena', 'Xavier', '920384667', 43),
('Yolanda', 'Yáñez', '920184678', 44),
('Zacarías', 'Zaragoza', '920984689', 45),
('Adrián', 'Alvarez', '920784690', 46),
('Beatriz', 'Bustos', '920684601', 47);
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
