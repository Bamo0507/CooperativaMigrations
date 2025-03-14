ALTER TABLE usuarios
  ADD COLUMN nit numeric(9,0) NOT NULL,
  ADD COLUMN dpi numeric(13,0) NOT NULL,
  ADD COLUMN direccion_vivienda varchar(200) NOT NULL,
  ADD COLUMN telefono varchar(12) NOT NULL;

ALTER TABLE prestamo_codeudores
  ADD COLUMN dpi_externo numeric(13,0),
  ADD COLUMN direccion_externo varchar(200),
  ADD COLUMN nit_externo numeric(9,0);