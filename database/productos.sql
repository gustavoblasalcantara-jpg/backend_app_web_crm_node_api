-- Ejecutar en Neon → SQL Editor
-- Reemplaza TU_ENDPOINT por el endpoint de tu bucket (Object storage → productos)
CREATE TABLE IF NOT EXISTS productos (
  id          SERIAL PRIMARY KEY,
  nombre      VARCHAR(80)  NOT NULL,
  descripcion VARCHAR(200) NOT NULL,
  precio      NUMERIC(8,2) NOT NULL CHECK (precio > 0),
  imagen_url  VARCHAR(400),
  activo      BOOLEAN DEFAULT TRUE
);

-- Ejecútalo UNA sola vez (si lo repites, duplica los productos)
INSERT INTO productos (nombre, descripcion, precio, imagen_url) VALUES
  ('TORTA DE CHOCOLATE DE 18 PORCIONES', 'INSUMOS DE CALIDAD', 120.00, 'https://TU_ENDPOINT/productos/Torta_Chocolate.jpg'),
  ('TORTA TRES LECHES', 'BIZCOCHO HÚMEDO CON TRES LECHES Y MERENGUE', 55.00, 'https://TU_ENDPOINT/productos/Torta_3_Leches.jpg'),
  ('PIONONO', 'ENROLLADO DE MANJAR BLANCO', 35.00, 'https://TU_ENDPOINT/productos/Pionono.jpg'),
  ('PYE DE LIMÓN', 'MASA CROCANTE, CREMA DE LIMÓN Y MERENGUE', 45.00, 'https://TU_ENDPOINT/productos/Pye_Limon.jpg');

SELECT id, nombre, precio, imagen_url FROM productos ORDER BY id;
