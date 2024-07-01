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
('Tratado de No Proliferación Nuclear', 12, 6, 72, 'Sesión 3', '2024-06-06', 1, 1),
('Reducción de arsenales nucleares', 10, 5, 50, 'Sesión 4', '2024-06-07', 1, 1),
('Zonas libres de armas nucleares', 15, 7, 105, 'Sesión 5', '2024-06-08', 1, 1),
('Energía nuclear con fines pacíficos', 8, 4, 32, 'Sesión 6', '2024-06-09', 1, 1),
('Acuerdo de París sobre el clima', 10, 5, 50, 'Sesión 3', '2024-06-06', 2, 2),
('Emisiones de gases de efecto invernadero', 12, 6, 72, 'Sesión 4', '2024-06-07', 2, 2),
('Energías renovables y desarrollo sostenible', 15, 7, 105, 'Sesión 5', '2024-06-08', 2, 2),
('Adaptación al cambio climático', 8, 4, 32, 'Sesión 6', '2024-06-09', 2, 2),
('Derechos de los refugiados', 10, 5, 50, 'Sesión 2', '2024-06-04', 3, 3),
('Libertad de expresión en la era digital', 12, 6, 72, 'Sesión 3', '2024-06-05', 3, 3),
('Derechos de los pueblos indígenas', 15, 7, 105, 'Sesión 4', '2024-06-06', 3, 3),
('Lucha contra la discriminación', 8, 4, 32, 'Sesión 5', '2024-06-07', 3, 3),
('Comercio internacional justo', 10, 5, 50, 'Sesión 3', '2024-06-05', 4, 4),
('Regulación de criptomonedas', 12, 6, 72, 'Sesión 4', '2024-06-06', 4, 4),
('Desigualdad económica global', 15, 7, 105, 'Sesión 5', '2024-06-07', 4, 4),
('Desarrollo económico sostenible', 8, 4, 32, 'Sesión 6', '2024-06-08', 4, 4),
('Educación y empoderamiento de mujeres', 10, 5, 50, 'Sesión 2', '2024-06-06', 5, 5),
('Violencia de género', 12, 6, 72, 'Sesión 3', '2024-06-07', 5, 5),
('Igualdad salarial', 15, 7, 105, 'Sesión 4', '2024-06-08', 5, 5),
('Participación política de las mujeres', 8, 4, 32, 'Sesión 5', '2024-06-09', 5, 5),
('Desarme de armas convencionales', 10, 5, 50, 'Sesión 7', '2024-06-10', 1, 1),
('Prevención de conflictos armados', 12, 6, 72, 'Sesión 8', '2024-06-11', 1, 1),
('Biodiversidad y conservación', 15, 7, 105, 'Sesión 7', '2024-06-10', 2, 2),
('Gestión sostenible del agua', 8, 4, 32, 'Sesión 8', '2024-06-11', 2, 2),
('Derechos laborales internacionales', 10, 5, 50, 'Sesión 6', '2024-06-08', 3, 3),
('Trata de personas', 12, 6, 72, 'Sesión 7', '2024-06-09', 3, 3),
('Regulación de empresas multinacionales', 15, 7, 105, 'Sesión 7', '2024-06-09', 4, 4),
('Deuda externa de países en desarrollo', 8, 4, 32, 'Sesión 8', '2024-06-10', 4, 4),
('Derechos reproductivos', 10, 5, 50, 'Sesión 6', '2024-06-10', 5, 5),
('Mujeres en ciencia y tecnología', 12, 6, 72, 'Sesión 7', '2024-06-11', 5, 5),
('Control de armas biológicas', 15, 7, 105, 'Sesión 9', '2024-06-12', 1, 1),
('Seguridad cibernética internacional', 8, 4, 32, 'Sesión 10', '2024-06-13', 1, 1),
('Economía circular y residuos', 10, 5, 50, 'Sesión 9', '2024-06-12', 2, 2),
('Protección de ecosistemas marinos', 12, 6, 72, 'Sesión 10', '2024-06-13', 2, 2),
('Libertad religiosa', 15, 7, 105, 'Sesión 8', '2024-06-10', 3, 3),
('Derechos de las personas con discapacidad', 8, 4, 32, 'Sesión 9', '2024-06-11', 3, 3),
('Inteligencia artificial y economía', 10, 5, 50, 'Sesión 9', '2024-06-11', 4, 4),
('Cooperación económica Sur-Sur', 12, 6, 72, 'Sesión 10', '2024-06-12', 4, 4),
('Liderazgo femenino en el sector privado', 15, 7, 105, 'Sesión 8', '2024-06-12', 5, 5),
('Mujeres en operaciones de paz', 8, 4, 32, 'Sesión 9', '2024-06-13', 5, 5);

-- Insert Voluntarios
INSERT INTO voluntarios (nombre, apellido, telefono, secretariado_id) VALUES
('Alejandro', 'Sánchez', '5551234575', 3),
('Valentina', 'Rodríguez', '5551234576', 1),
('Javier', 'Fernández', '5551234577', 4),
('Camila', 'Torres', '5551234578', 2),
('Andrés', 'Vargas', '5551234579', 5),
('Isabella', 'Ortiz', '5551234580', 1),
('Santiago', 'Jiménez', '5551234581', 3),
('Sofía', 'Castro', '5551234582', 2),
('Diego', 'Herrera', '5551234583', 4),
('Valeria', 'Medina', '5551234584', 5),
('Emilio', 'Mendoza', '5551234585', 1),
('Luciana', 'Ríos', '5551234586', 3),
('Matías', 'Silva', '5551234587', 2),
('Renata', 'Flores', '5551234588', 4),
('Sebastián', 'Navarro', '5551234589', 5),
('Mariana', 'Rojas', '5551234590', 1),
('Nicolás', 'Acosta', '5551234591', 3),
('Paula', 'Peña', '5551234592', 2),
('Joaquín', 'Molina', '5551234593', 4),
('Antonella', 'Delgado', '5551234594', 5),
('Felipe', 'Guzmán', '5551234595', 1),
('Catalina', '5551234596', '5551234596', 3),
('Tomás', 'Ramos', '5551234597', 2),
('Abril', 'Vega', '5551234598', 4),
('Benjamín', 'Cárdenas', '5551234599', 5),
('Martina', 'Cortés', '5551234600', 1),
('Emiliano', 'Guerrero', '5551234601', 3),
('Julieta', 'Parra', '5551234602', 2),
('Maximiliano', 'Contreras', '5551234603', 4),
('Daniela', 'Fuentes', '5551234604', 5);

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

INSERT INTO charlas (sesion, ponente, tema, delegado_id, fecha) VALUES
('Sesión 1', 'Juan Perez', 'La importancia del desarme nuclear', 1, '2024-06-01'),
('Sesión 2', 'Ana Garcia', 'El cambio climático y su impacto', 2, '2024-06-02');