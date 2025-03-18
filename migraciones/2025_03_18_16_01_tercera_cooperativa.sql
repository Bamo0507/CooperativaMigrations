CREATE TABLE formas_pago (
  id_forma SERIAL PRIMARY KEY NOT NULL,
  nombre VARCHAR(30) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS pagos CASCADE;

CREATE TABLE pagos (
  id_pago SERIAL PRIMARY KEY NOT NULL,
  usuario_id INT NOT NULL REFERENCES usuarios(id_usuario),
  forma_pago_id INT NOT NULL REFERENCES formas_pago(id_forma),
  monto_total NUMERIC(10,2) NOT NULL DEFAULT 0,
  fecha_pago DATE NOT NULL DEFAULT CURRENT_DATE,
  num_boleta INT
);

-- Ya no se utiliza
DROP TABLE IF EXISTS tipos_pago CASCADE;

CREATE TABLE cuotas (
  id_cuota SERIAL PRIMARY KEY NOT NULL,
  usuario_id INT NOT NULL REFERENCES usuarios(id_usuario),
  monto_cuota NUMERIC(10,2) NOT NULL CHECK (monto_cuota >= 0),
  fecha_vencimiento DATE NOT NULL,  -- Ej.: el 5 de cada mes
  monto_pagado NUMERIC(10,2) NOT NULL DEFAULT 0,
  multa NUMERIC(10,2) NOT NULL DEFAULT 0
);

CREATE TABLE detalles_pago_cuota (
  id_detalle SERIAL PRIMARY KEY NOT NULL,
  pago_id INT NOT NULL REFERENCES pagos(id_pago),
  cuota_id INT NOT NULL REFERENCES cuotas(id_cuota),
  monto_abonado NUMERIC(10,2) NOT NULL CHECK (monto_abonado >= 0),
  multa_aplicada NUMERIC(10,2) NOT NULL DEFAULT 0
);

CREATE TABLE prestamo_detalles (
  id_detalle SERIAL PRIMARY KEY NOT NULL,
  prestamo_id INT NOT NULL REFERENCES prestamos(id_prestamo),
  numero_cuota INT NOT NULL,  -- Secuencia de cuotas (1, 2, 3, ...)
  monto_cuota NUMERIC(10,2) NOT NULL CHECK (monto_cuota >= 0),
  fecha_vencimiento DATE NOT NULL,
  monto_pagado NUMERIC(10,2) NOT NULL DEFAULT 0,
  multa NUMERIC(10,2) NOT NULL DEFAULT 0
);

CREATE TABLE detalles_pago_prestamo (
  id_detalle SERIAL PRIMARY KEY NOT NULL,
  pago_id INT NOT NULL REFERENCES pagos(id_pago),
  prestamo_detalle_id INT NOT NULL REFERENCES prestamo_detalles(id_detalle),
  monto_abonado NUMERIC(10,2) NOT NULL CHECK (monto_abonado >= 0),
  multa_aplicada NUMERIC(10,2) NOT NULL DEFAULT 0
);