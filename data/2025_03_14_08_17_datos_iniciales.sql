-- INSERTS PARA ROLES
INSERT INTO roles (nombre, tasa_interes) VALUES 
  ('Socio', 12.00),
  ('Directiva', 12.00),
  ('Socio Temporal', 14.00);

-- INSERTS PARA USUARIOS
INSERT INTO usuarios (nombre_completo, username, contrasenia, correo_recuperacion, nit, dpi, direccion_vivienda, telefono) VALUES
  ('Juan Perez', 'jperez', 'hash1', 'juan@example.com', 123456789, 1234567890123, 'Calle 123, Ciudad', '1234567890'),
  ('Maria Gomez', 'mgomez', 'hash2', 'maria@example.com', 987654321, 9876543210123, 'Avenida 456, Ciudad', '0987654321'),
  ('Carlos Rodriguez', 'crodriguez', 'hash3', 'carlos@example.com', 111222333, 1112223334445, 'Boulevard 789, Ciudad', '1122334455'),
  ('Ana Martinez', 'amartinez', 'hash4', 'ana@example.com', 222333444, 2223334445556, 'Calle 101, Ciudad', '2233445566'),
  ('Luis Hernandez', 'lhernandez', 'hash5', 'luis@example.com', 333444555, 3334445556667, 'Avenida 202, Ciudad', '3344556677'),
  ('Marta Ruiz', 'mruiz', 'hash6', 'marta@example.com', 444555666, 4445556667778, 'Calle 303, Ciudad', '4455667788'),
  ('Pedro Alvarez', 'palvarez', 'hash7', 'pedro@example.com', 555666777, 5556667778889, 'Avenida 404, Ciudad', '5566778899'),
  ('Sofia Lopez', 'slopez', 'hash8', 'sofia@example.com', 666777888, 6667778889990, 'Boulevard 505, Ciudad', '6677889900'),
  ('Diego Sanchez', 'dsanchez', 'hash9', 'diego@example.com', 777888999, 7778889990001, 'Calle 606, Ciudad', '7788990011'),
  ('Elena Cruz', 'ecruz', 'hash10', 'elena@example.com', 888999000, 8889990001112, 'Avenida 707, Ciudad', '8899001122');

-- INSERTS PARA USUARIOS_ROLES
INSERT INTO usuarios_roles (usuario_id, rol_id) VALUES
  (1, 1),
  (2, 3),
  (3, 2),
  (4, 1),
  (5, 1),
  (6, 3),
  (7, 1),
  (8, 2),
  (9, 1),
  (10, 1);

-- INSERTS PARA TIPOS_PAGO
INSERT INTO tipos_pago (nombre) VALUES
  ('Cuota Ordinaria'),
  ('Cuota Extraordinaria'),
  ('Pago Préstamo'),
  ('Multa');

-- INSERTS PARA PAGOS (20 registros iniciales)
INSERT INTO pagos (usuario_id, fecha_pago) VALUES
  (1, '2023-03-05'),
  (2, '2023-03-05'),
  (3, '2023-03-06'),
  (4, '2023-03-06'),
  (5, '2023-03-07'),
  (6, '2023-03-07'),
  (7, '2023-03-08'),
  (8, '2023-03-08'),
  (9, '2023-03-09'),
  (10, '2023-03-09'),
  (1, '2023-04-05'),
  (2, '2023-04-05'),
  (3, '2023-04-06'),
  (4, '2023-04-06'),
  (5, '2023-04-07'),
  (6, '2023-04-07'),
  (7, '2023-04-08'),
  (8, '2023-04-08'),
  (9, '2023-04-09'),
  (10, '2023-04-09'),
  (3, '2023-05-05'),
  (4, '2023-05-05'),
  (6, '2023-05-06'),
  (8, '2023-05-06'),
  (10, '2023-05-07'),
  (3, '2023-05-08'),
  (4, '2023-05-08'),
  (6, '2023-05-09'),
  (8, '2023-05-09'),
  (10, '2023-05-10');

-- INSERTS PARA ESTADOS
INSERT INTO estados (nombre) VALUES
  ('pendiente'),
  ('aprobado'),
  ('rechazado');

-- INSERTS PARA PRESTAMOS (10 registros)
INSERT INTO prestamos (solicitante_id, nombre, monto, motivo, estado, tasa_interes, fecha_solicitud, plazo_meses) VALUES
  (2, 'Préstamo para Vivienda', 60000.00, 'Compra de casa', 1, 14.00, '2023-03-05 10:00:00', 12),
  (1, 'Préstamo para Auto', 40000.00, 'Compra de auto', 1, 12.00, '2023-03-10 09:00:00', 24),
  (5, 'Préstamo para Educación', 20000.00, 'Estudios', 2, 12.00, '2023-03-15 14:00:00', 18),
  (7, 'Préstamo para Negocio', 80000.00, 'Inversión en negocio', 1, 12.00, '2023-03-20 16:00:00', 36),
  (9, 'Préstamo para Salud', 30000.00, 'Cirugía', 3, 12.00, '2023-03-25 11:00:00', 12),
  (3, 'Préstamo para Remodelación', 50000.00, 'Remodelación de vivienda', 1, 12.00, '2023-03-30 12:00:00', 18),
  (4, 'Préstamo para Mobiliario', 15000.00, 'Compra de muebles', 2, 12.00, '2023-04-01 08:30:00', 12),
  (6, 'Préstamo para Emergencia', 25000.00, 'Gastos médicos', 1, 14.00, '2023-04-02 15:00:00', 12),
  (8, 'Préstamo para Viaje', 10000.00, 'Vacaciones', 2, 12.00, '2023-04-03 10:00:00', 6),
  (10, 'Préstamo para Reparaciones', 35000.00, 'Reparación de vivienda', 1, 12.00, '2023-04-04 09:00:00', 24);

-- INSERTS PARA DETALLES_PAGO (30 registros iniciales)
INSERT INTO detalles_pago (pago_id, tipo_pago_id, pago_usuario, monto, prestamo_id, fecha_vencimiento) VALUES
  (1, 1, 1, 250.00, NULL, '2023-03-05'),
  (2, 3, NULL, 5000.00, 1, '2023-04-05'),
  (3, 1, 3, 250.00, NULL, '2023-03-06'),
  (4, 2, 4, 1000.00, NULL, '2023-03-06'),
  (5, 1, 5, 250.00, NULL, '2023-03-07'),
  (6, 4, 6, 50.00, NULL, '2023-03-07'),
  (7, 3, NULL, 7000.00, 4, '2023-03-08'),
  (8, 1, 8, 250.00, NULL, '2023-03-08'),
  (9, 1, 9, 250.00, NULL, '2023-03-09'),
  (10, 1, 10, 250.00, NULL, '2023-03-09'),
  (11, 1, 1, 250.00, NULL, '2023-04-05'),
  (12, 3, NULL, 5000.00, 1, '2023-04-05'),
  (13, 1, 3, 250.00, NULL, '2023-04-06'),
  (14, 4, 4, 100.00, NULL, '2023-04-06'),
  (15, 2, 5, 1000.00, NULL, '2023-04-07'),
  (16, 1, 6, 250.00, NULL, '2023-04-07'),
  (17, 3, NULL, 8000.00, 4, '2023-04-08'),
  (18, 1, 8, 250.00, NULL, '2023-04-08'),
  (19, 1, 9, 250.00, NULL, '2023-04-09'),
  (20, 1, 10, 250.00, NULL, '2023-04-09'),
  (21, 3, NULL, 4500.00, 6, '2023-06-05'),
  (22, 1, 4, 250.00, NULL, '2023-05-05'),
  (23, 3, NULL, 3000.00, 8, '2023-06-06'),
  (24, 1, 8, 250.00, NULL, '2023-05-06'),
  (25, 3, NULL, 3500.00, 10, '2023-06-07'),
  (26, 1, 3, 250.00, NULL, '2023-05-08'),
  (27, 3, NULL, 4000.00, 7, '2023-06-08'),
  (28, 1, 4, 250.00, NULL, '2023-05-08'),
  (29, 3, NULL, 2800.00, 9, '2023-06-09'),
  (30, 1, 10, 250.00, NULL, '2023-05-10');

-- INSERTS PARA PRESTAMO_CODEUDORES (10 registros)
INSERT INTO prestamo_codeudores (prestamo_id, usuario_id, nombre_externo, contacto_externo, dpi_externo, direccion_externo, nit_externo) VALUES
  (1, NULL, 'Pedro Alvarez', '5551234567', 1234567890123, 'Calle Falsa 123, Ciudad', 123456789),
  (1, 3, NULL, NULL, NULL, NULL, NULL),
  (4, NULL, 'Laura Jimenez', '5559876543', 9876543210987, 'Avenida Siempre Viva 742, Ciudad', 987654321),
  (4, 5, NULL, NULL, NULL, NULL, NULL),
  (2, NULL, 'Ricardo Lopez', '5551122334', 1122334455667, 'Calle Los Pinos 456, Ciudad', 112233445),
  (6, NULL, 'Fernando Torres', '5553344556', 1122334455667, 'Calle Nueva 789, Ciudad', 998877665),
  (7, NULL, 'Gabriela Rios', '5556677889', 2233445566778, 'Avenida Central 321, Ciudad', 887766554),
  (8, 2, NULL, NULL, NULL, NULL, NULL),
  (9, NULL, 'Mariana Diaz', '5557788990', 3344556677889, 'Calle Sol 111, Ciudad', 776655443),
  (10, 5, NULL, NULL, NULL, NULL, NULL);

-- INSERTS PARA COMPROBANTES_PAGO (20 registros)
INSERT INTO comprobantes_pago (pago_id, llave_comprobante) VALUES
  (1, 'https://storage.example.com/comprobantes/comp1.jpg'),
  (2, 'https://storage.example.com/comprobantes/comp2.jpg'),
  (3, 'https://storage.example.com/comprobantes/comp3.jpg'),
  (4, 'https://storage.example.com/comprobantes/comp4.jpg'),
  (5, 'https://storage.example.com/comprobantes/comp5.jpg'),
  (6, 'https://storage.example.com/comprobantes/comp6.jpg'),
  (7, 'https://storage.example.com/comprobantes/comp7.jpg'),
  (8, 'https://storage.example.com/comprobantes/comp8.jpg'),
  (9, 'https://storage.example.com/comprobantes/comp9.jpg'),
  (10, 'https://storage.example.com/comprobantes/comp10.jpg'),
  (21, 'https://storage.example.com/comprobantes/comp21.jpg'),
  (22, 'https://storage.example.com/comprobantes/comp22.jpg'),
  (23, 'https://storage.example.com/comprobantes/comp23.jpg'),
  (24, 'https://storage.example.com/comprobantes/comp24.jpg'),
  (25, 'https://storage.example.com/comprobantes/comp25.jpg'),
  (26, 'https://storage.example.com/comprobantes/comp26.jpg'),
  (27, 'https://storage.example.com/comprobantes/comp27.jpg'),
  (28, 'https://storage.example.com/comprobantes/comp28.jpg'),
  (29, 'https://storage.example.com/comprobantes/comp29.jpg'),
  (30, 'https://storage.example.com/comprobantes/comp30.jpg');

-- INSERTS PARA PAGARES (10 registros)
INSERT INTO pagares (prestamo_id, llave_pagare, estado_id, comentarios_rechazo) VALUES
  (1, 'https://storage.example.com/pagares/pag1.pdf', 1, NULL),
  (2, 'https://storage.example.com/pagares/pag2.pdf', 2, NULL),
  (3, 'https://storage.example.com/pagares/pag3.pdf', 1, NULL),
  (4, 'https://storage.example.com/pagares/pag4.pdf', 1, NULL),
  (5, 'https://storage.example.com/pagares/pag5.pdf', 3, 'Documentos incompletos'),
  (6, 'https://storage.example.com/pagares/pag6.pdf', 1, NULL),
  (7, 'https://storage.example.com/pagares/pag7.pdf', 2, NULL),
  (8, 'https://storage.example.com/pagares/pag8.pdf', 1, NULL),
  (9, 'https://storage.example.com/pagares/pag9.pdf', 1, NULL),
  (10, 'https://storage.example.com/pagares/pag10.pdf', 3, 'Falta documentación');

-- INSERTS PARA TOKENS_RECUPERACION (10 registros)
INSERT INTO tokens_recuperacion (token, usuario_id, fecha_creacion, fecha_expiracion, usado) VALUES
  ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', FALSE),
  ('b1eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', FALSE),
  ('c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', FALSE),
  ('d3eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', FALSE),
  ('e4eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', FALSE),
  ('f5eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', FALSE),
  ('a6eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', FALSE),
  ('a7eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', FALSE),
  ('a8eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', FALSE),
  ('a9eebc99-9c0b-4ef8-bb6d-6bb9bd380a20', 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', FALSE);