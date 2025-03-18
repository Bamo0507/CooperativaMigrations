-- Roles (3 registros fijos)
INSERT INTO roles (nombre, tasa_interes) VALUES 
  ('Socio', 12.00),
  ('Directiva', 12.00),
  ('Socio Temporal', 14.00);

-- Estados (3 registros fijos)
INSERT INTO estados (nombre) VALUES
  ('pendiente'),
  ('aprobado'),
  ('rechazado');

-- Formas de Pago (3 registros fijos)
INSERT INTO formas_pago (nombre) VALUES
  ('Depósito'),
  ('Cash'),
  ('Online');

-- INSERTS PARA USUARIOS (20 registros)
INSERT INTO usuarios (nombre_completo, username, contrasenia, correo_recuperacion, nit, dpi, direccion_vivienda, telefono) VALUES
('Juan Perez', 'jperez', 'hash1', 'juan.perez@example.com', 111111111, 1111111111111, 'Calle 1 #100', '555000100'),
('Maria Lopez', 'mlopez', 'hash2', 'maria.lopez@example.com', 222222222, 2222222222222, 'Calle 2 #200', '555000200'),
('Carlos Rodriguez', 'crodriguez', 'hash3', 'carlos.rodriguez@example.com', 333333333, 3333333333333, 'Calle 3 #300', '555000300'),
('Ana Martinez', 'amartinez', 'hash4', 'ana.martinez@example.com', 444444444, 4444444444444, 'Calle 4 #400', '555000400'),
('Luis Hernandez', 'lhernandez', 'hash5', 'luis.hernandez@example.com', 555555555, 5555555555555, 'Calle 5 #500', '555000500'),
('Marta Ruiz', 'mruiz', 'hash6', 'marta.ruiz@example.com', 666666666, 6666666666666, 'Calle 6 #600', '555000600'),
('Pedro Alvarez', 'palvarez', 'hash7', 'pedro.alvarez@example.com', 777777777, 7777777777777, 'Calle 7 #700', '555000700'),
('Sofia Lopez', 'slopez', 'hash8', 'sofia.lopez@example.com', 888888888, 8888888888888, 'Calle 8 #800', '555000800'),
('Diego Sanchez', 'dsanchez', 'hash9', 'diego.sanchez@example.com', 999999999, 9999999999999, 'Calle 9 #900', '555000900'),
('Elena Cruz', 'ecruz', 'hash10', 'elena.cruz@example.com', 101010101, 1010101010101, 'Calle 10 #1000', '555001000'),
('Andres Morales', 'amorales', 'hash11', 'andres.morales@example.com', 111111112, 1111111121111, 'Avenida 1 #101', '555001101'),
('Laura Rojas', 'lrojas', 'hash12', 'laura.rojas@example.com', 121212121, 1212121211212, 'Avenida 2 #202', '555002202'),
('Roberto Diaz', 'rdiaz', 'hash13', 'roberto.diaz@example.com', 131313131, 1313131311313, 'Avenida 3 #303', '555003303'),
('Claudia Flores', 'cflores', 'hash14', 'claudia.flores@example.com', 141414141, 1414141411414, 'Avenida 4 #404', '555004404'),
('Sergio Castillo', 'scastillo', 'hash15', 'sergio.castillo@example.com', 151515151, 1515151511515, 'Avenida 5 #505', '555005505'),
('Paola Ramirez', 'pramirez', 'hash16', 'paola.ramirez@example.com', 161616161, 1616161611616, 'Calle 11 #1100', '555006606'),
('Miguel Torres', 'mtorres', 'hash17', 'miguel.torres@example.com', 171717171, 1717171711717, 'Calle 12 #1200', '555007707'),
('Veronica Garcia', 'vgarcia', 'hash18', 'veronica.garcia@example.com', 181818181, 1818181811818, 'Calle 13 #1300', '555008808'),
('Ricardo Jimenez', 'rjimenez', 'hash19', 'ricardo.jimenez@example.com', 191919191, 1919191911919, 'Calle 14 #1400', '555009909'),
('Isabel Moreno', 'imoreno', 'hash20', 'isabel.moreno@example.com', 202020202, 2020202022020, 'Calle 15 #1500', '555010010');

-- INSERTS PARA USUARIOS_ROLES (20 registros)
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
(10, 1),
(11, 1),
(12, 1),
(13, 2),
(14, 1),
(15, 1),
(16, 3),
(17, 1),
(18, 1),
(19, 2),
(20, 1);

-- INSERTS PARA PAGOS (40 registros)
INSERT INTO pagos (usuario_id, forma_pago_id, monto_total, fecha_pago, num_boleta) VALUES
(1, 1, 215.00, '2024-01-05', 1001),
(2, 1, 215.00, '2024-01-05', 1002),
(3, 2, 215.00, '2024-01-06', NULL),
(4, 1, 215.00, '2024-01-06', 1003),
(5, 3, 215.00, '2024-01-07', NULL),
(6, 1, 215.00, '2024-01-07', 1004),
(7, 2, 215.00, '2024-01-08', NULL),
(8, 1, 215.00, '2024-01-08', 1005),
(9, 1, 215.00, '2024-01-09', 1006),
(10, 1, 215.00, '2024-01-09', 1007),
(11, 1, 250.00, '2024-02-05', 1011),
(12, 1, 250.00, '2024-02-05', 1012),
(13, 2, 250.00, '2024-02-06', NULL),
(14, 1, 250.00, '2024-02-06', 1013),
(15, 1, 250.00, '2024-02-07', 1014),
(16, 3, 250.00, '2024-02-07', NULL),
(17, 1, 250.00, '2024-02-08', 1015),
(18, 1, 250.00, '2024-02-08', 1016),
(19, 2, 250.00, '2024-02-09', NULL),
(20, 1, 250.00, '2024-02-09', 1017),
(1, 1, 300.00, '2024-03-05', 1021),
(2, 1, 300.00, '2024-03-05', 1022),
(3, 2, 300.00, '2024-03-06', NULL),
(4, 1, 300.00, '2024-03-06', 1023),
(5, 3, 300.00, '2024-03-07', NULL),
(6, 1, 300.00, '2024-03-07', 1024),
(7, 2, 300.00, '2024-03-08', NULL),
(8, 1, 300.00, '2024-03-08', 1025),
(9, 1, 300.00, '2024-03-09', 1026),
(10, 1, 300.00, '2024-03-09', 1027),
(11, 1, 500.00, '2024-04-05', 1031),
(12, 1, 500.00, '2024-04-05', 1032),
(13, 2, 500.00, '2024-04-06', NULL),
(14, 1, 500.00, '2024-04-06', 1033),
(15, 1, 500.00, '2024-04-07', 1034),
(16, 3, 500.00, '2024-04-07', NULL),
(17, 1, 500.00, '2024-04-08', 1035),
(18, 1, 500.00, '2024-04-08', 1036),
(19, 2, 500.00, '2024-04-09', NULL),
(20, 1, 500.00, '2024-04-09', 1037);

-- INSERTS PARA COMPROBANTES_PAGO (10 registros)
INSERT INTO comprobantes_pago (pago_id, llave_comprobante) VALUES
(1, 'https://storage.example.com/comprobantes/comp1.jpg'),
(2, 'https://storage.example.com/comprobantes/comp2.jpg'),
(4, 'https://storage.example.com/comprobantes/comp4.jpg'),
(6, 'https://storage.example.com/comprobantes/comp6.jpg'),
(8, 'https://storage.example.com/comprobantes/comp8.jpg'),
(10, 'https://storage.example.com/comprobantes/comp10.jpg'),
(11, 'https://storage.example.com/comprobantes/comp11.jpg'),
(12, 'https://storage.example.com/comprobantes/comp12.jpg'),
(14, 'https://storage.example.com/comprobantes/comp14.jpg'),
(15, 'https://storage.example.com/comprobantes/comp15.jpg');

-- INSERTS PARA PRESTAMOS (10 registros)
INSERT INTO prestamos (solicitante_id, nombre, monto, motivo, estado, tasa_interes, fecha_solicitud, plazo_meses) VALUES
(1, 'Préstamo para Auto', 12000.00, 'Compra de auto', 2, 12.00, '2024-01-10 09:00:00', 12),
(2, 'Préstamo para Vivienda', 60000.00, 'Compra de casa', 2, 14.00, '2024-01-15 10:00:00', 12),
(3, 'Préstamo para Educación', 20000.00, 'Estudios', 2, 12.00, '2024-01-20 11:00:00', 18),
(4, 'Préstamo para Negocio', 80000.00, 'Inversión en negocio', 1, 12.00, '2024-01-25 12:00:00', 24),
(5, 'Préstamo para Salud', 30000.00, 'Cirugía', 3, 12.00, '2024-02-01 13:00:00', 12),
(6, 'Préstamo para Remodelación', 50000.00, 'Remodelación de vivienda', 2, 12.00, '2024-02-05 14:00:00', 18),
(7, 'Préstamo para Mobiliario', 15000.00, 'Compra de muebles', 2, 12.00, '2024-02-10 15:00:00', 12),
(8, 'Préstamo para Emergencia', 25000.00, 'Gastos médicos', 1, 14.00, '2024-02-15 16:00:00', 12),
(9, 'Préstamo para Viaje', 10000.00, 'Vacaciones', 2, 12.00, '2024-02-20 17:00:00', 6),
(10, 'Préstamo para Reparaciones', 35000.00, 'Reparación de vivienda', 2, 12.00, '2024-02-25 18:00:00', 24);

-- INSERTS PARA PRESTAMO_DETALLES (30 registros, 3 cuotas por préstamo)
INSERT INTO prestamo_detalles (prestamo_id, numero_cuota, monto_cuota, fecha_vencimiento) VALUES
(1, 1, 1000.00, '2024-02-10'),
(1, 2, 1000.00, '2024-03-10'),
(1, 3, 1000.00, '2024-04-10'),

(2, 1, 5000.00, '2024-02-15'),
(2, 2, 5000.00, '2024-03-15'),
(2, 3, 5000.00, '2024-04-15'),

(3, 1, 666.67, '2024-02-20'),
(3, 2, 666.67, '2024-03-20'),
(3, 3, 666.66, '2024-04-20'),

(4, 1, 3333.33, '2024-02-25'),
(4, 2, 3333.33, '2024-03-25'),
(4, 3, 3333.34, '2024-04-25'),

(5, 1, 1000.00, '2024-03-01'),
(5, 2, 1000.00, '2024-04-01'),
(5, 3, 1000.00, '2024-05-01'),

(6, 1, 1666.67, '2024-03-05'),
(6, 2, 1666.67, '2024-04-05'),
(6, 3, 1666.66, '2024-05-05'),

(7, 1, 1250.00, '2024-03-10'),
(7, 2, 1250.00, '2024-04-10'),
(7, 3, 1250.00, '2024-05-10'),

(8, 1, 2083.33, '2024-03-15'),
(8, 2, 2083.33, '2024-04-15'),
(8, 3, 2083.34, '2024-05-15'),

(9, 1, 1666.67, '2024-03-20'),
(9, 2, 1666.67, '2024-04-20'),
(9, 3, 1666.66, '2024-05-20'),

(10, 1, 1458.33, '2024-03-25'),
(10, 2, 1458.33, '2024-04-25'),
(10, 3, 1458.34, '2024-05-25');

-- INSERTS PARA CUOTAS (Obligación mensual de socios) (15 registros)
INSERT INTO cuotas (usuario_id, monto_cuota, fecha_vencimiento) VALUES
(1, 215.00, '2024-01-05'),
(1, 215.00, '2024-02-05'),
(1, 215.00, '2024-03-05'),
(2, 215.00, '2024-01-05'),
(2, 215.00, '2024-02-05'),
(2, 215.00, '2024-03-05'),
(3, 215.00, '2024-01-06'),
(3, 215.00, '2024-02-06'),
(3, 215.00, '2024-03-06'),
(4, 215.00, '2024-01-06'),
(4, 215.00, '2024-02-06'),
(4, 215.00, '2024-03-06'),
(5, 215.00, '2024-01-07'),
(5, 215.00, '2024-02-07'),
(5, 215.00, '2024-03-07');

-- INSERTS PARA DETALLES DE PAGO A CUOTAS (10 registros)
INSERT INTO detalles_pago_cuota (pago_id, cuota_id, monto_abonado, multa_aplicada) VALUES
(1, 1, 215.00, 0),
(2, 2, 215.00, 5),
(3, 3, 215.00, 0),
(4, 4, 215.00, 0),
(5, 5, 215.00, 0),
(6, 6, 215.00, 0),
(7, 7, 215.00, 10),
(8, 8, 215.00, 0),
(9, 9, 215.00, 0),
(10, 10, 215.00, 0);

-- INSERTS PARA DETALLES DE PAGO A PRÉSTAMOS (10 registros)
INSERT INTO detalles_pago_prestamo (pago_id, prestamo_detalle_id, monto_abonado, multa_aplicada) VALUES
(11, 1, 1000.00, 0),
(12, 2, 1000.00, 0),
(13, 3, 1000.00, 0),
(14, 4, 2500.00, 50.00),
(15, 5, 2500.00, 0),
(16, 6, 2500.00, 0),
(17, 7, 1250.00, 0),
(18, 8, 1250.00, 0),
(19, 9, 1250.00, 0),
(20, 10, 1250.00, 0);

-- INSERTS PARA PRESTAMO_CODEUDORES (6 registros)
INSERT INTO prestamo_codeudores (prestamo_id, usuario_id, nombre_externo, contacto_externo, dpi_externo, direccion_externo, nit_externo) VALUES
(1, 3, NULL, NULL, NULL, NULL, NULL),
(2, NULL, 'Pedro Juarez', '55112233', 1112223334445, 'Calle Externa 1', 111222333),
(3, 5, NULL, NULL, NULL, NULL, NULL),
(4, NULL, 'Laura Jimenez', '5553334444', 9876543210987, 'Avenida Siempre Viva 742', 987654321),
(5, 7, NULL, NULL, NULL, NULL, NULL),
(6, NULL, 'Ricardo Lopez', '5555556666', 1122334455667, 'Calle Los Pinos 456', 112233445);

-- INSERTS PARA PAGARES (10 registros)
INSERT INTO pagares (prestamo_id, llave_pagare, estado_id, comentarios_rechazo) VALUES
(1, 'https://storage.example.com/pagares/pag1.pdf', 2, NULL),
(2, 'https://storage.example.com/pagares/pag2.pdf', 2, NULL),
(3, 'https://storage.example.com/pagares/pag3.pdf', 2, NULL),
(4, 'https://storage.example.com/pagares/pag4.pdf', 1, NULL),
(5, 'https://storage.example.com/pagares/pag5.pdf', 3, 'Documentos incompletos'),
(6, 'https://storage.example.com/pagares/pag6.pdf', 2, NULL),
(7, 'https://storage.example.com/pagares/pag7.pdf', 2, NULL),
(8, 'https://storage.example.com/pagares/pag8.pdf', 1, NULL),
(9, 'https://storage.example.com/pagares/pag9.pdf', 1, NULL),
(10, 'https://storage.example.com/pagares/pag10.pdf', 3, 'Falta documentación');

-- INSERTS PARA TOKENS_RECUPERACION (10 registros)
INSERT INTO tokens_recuperacion (token, usuario_id, fecha_creacion, fecha_expiracion, usado) VALUES
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', false),
('b1eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', false),
('c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', false),
('d3eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', false),
('e4eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', false),
('f5eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', false),
('a6eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', false),
('a7eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', false),
('a8eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', false),
('a9eebc99-9c0b-4ef8-bb6d-6bb9bd380a20', 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '24 hours', false);