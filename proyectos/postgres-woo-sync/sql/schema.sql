-- Esquema inicial para datos de WooCommerce

CREATE TABLE IF NOT EXISTS productos (
    id SERIAL PRIMARY KEY,
    woo_id INTEGER UNIQUE NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    sku VARCHAR(100),
    precio DECIMAL(10, 2),
    stock INTEGER,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS pedidos (
    id SERIAL PRIMARY KEY,
    woo_id INTEGER UNIQUE NOT NULL,
    cliente_id INTEGER,
    total DECIMAL(10, 2),
    estado VARCHAR(50),
    fecha_pedido TIMESTAMP
);
