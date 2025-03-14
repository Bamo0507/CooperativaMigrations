CREATE TABLE roles (
  id_rol SERIAL PRIMARY KEY NOT NULL,
  nombre VARCHAR(20) NOT NULL UNIQUE,
  tasa_interes DECIMAL(5,2) NOT NULL DEFAULT 12.00
);

CREATE TABLE usuarios (
  id_usuario SERIAL PRIMARY KEY NOT NULL,
  nombre_completo VARCHAR(100) NOT NULL,
  username VARCHAR(50) NOT NULL UNIQUE,
  contrasenia VARCHAR(100) NOT NULL,
  correo_recuperacion VARCHAR(100) NOT NULL
);

CREATE TABLE usuarios_roles (
  id_usarioRol SERIAL PRIMARY KEY NOT NULL,
  usuario_id INT NOT NULL REFERENCES usuarios(id_usuario),
  rol_id INT NOT NULL REFERENCES roles(id_rol)
);

CREATE TABLE tipos_pago (
  id_tipoPago SERIAL PRIMARY KEY NOT NULL,
  nombre VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE pagos (
  id_pago SERIAL PRIMARY KEY NOT NULL,
  usuario_id INT NOT NULL REFERENCES usuarios(id_usuario),
  fecha_pago DATE NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE estados (
  id_estado SERIAL PRIMARY KEY,
  nombre VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE prestamos (
  id_prestamo SERIAL PRIMARY KEY NOT NULL,
  solicitante_id INT NOT NULL REFERENCES usuarios(id_usuario),
  nombre VARCHAR(100) NOT NULL,
  monto NUMERIC(12,2) NOT NULL CHECK (monto > 0),
  motivo VARCHAR(255) NOT NULL,
  estado INT NOT NULL DEFAULT 1 REFERENCES estados(id_estado),
  tasa_interes DECIMAL(5,2) NOT NULL DEFAULT 12.00,
  fecha_solicitud TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  plazo_meses INT NOT NULL
);

CREATE TABLE detalles_pago (
  id_detalle SERIAL PRIMARY KEY NOT NULL,
  pago_id INT NOT NULL REFERENCES pagos(id_pago),
  tipo_pago_id INT NOT NULL REFERENCES tipos_pago(id_tipoPago),
  pago_usuario INT NULL REFERENCES usuarios(id_usuario),
  monto NUMERIC(10,2) NOT NULL CHECK (monto >= 0),
  prestamo_id INT NULL REFERENCES prestamos(id_prestamo),
  fecha_vencimiento DATE NOT NULL
);

CREATE TABLE prestamo_codeudores (
  id_prestamoCodeudor SERIAL PRIMARY KEY NOT NULL,
  prestamo_id INT NOT NULL REFERENCES prestamos(id_prestamo),
  usuario_id INT NULL,
  nombre_externo VARCHAR(100) NULL,
  contacto_externo VARCHAR(12) NULL,
  CHECK (
    (usuario_id IS NOT NULL AND nombre_externo IS NULL) OR 
    (usuario_id IS NULL AND nombre_externo IS NOT NULL)
  )
);

CREATE TABLE comprobantes_pago (
  id_comprobante SERIAL PRIMARY KEY NOT NULL,
  pago_id INT NOT NULL REFERENCES pagos(id_pago),
  llave_comprobante VARCHAR(255) NOT NULL
);

CREATE TABLE pagares (
  id_pagare SERIAL PRIMARY KEY NOT NULL,
  prestamo_id INT NOT NULL REFERENCES prestamos(id_prestamo),
  llave_pagare VARCHAR(255) NOT NULL,
  estado_id INT NOT NULL REFERENCES estados(id_estado),
  comentarios_rechazo VARCHAR(255)
);

CREATE TABLE tokens_recuperacion (
  token UUID PRIMARY KEY,
  usuario_id INT NOT NULL REFERENCES usuarios(id_usuario),
  fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  fecha_expiracion TIMESTAMP NOT NULL DEFAULT (CURRENT_TIMESTAMP + INTERVAL '24 hours'),
  usado BOOLEAN NOT NULL DEFAULT FALSE
);