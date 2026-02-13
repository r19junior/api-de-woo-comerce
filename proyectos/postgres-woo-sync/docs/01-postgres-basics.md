# Guía Básica: Mi primer encuentro con PostgreSQL

PostgreSQL es una base de datos relacional extremadamente potente. A diferencia de MySQL (que usa WordPress), Postgres destaca en integridad de datos y consultas complejas.

## 1. Conceptos Básicos
- **Base de Datos:** Un contenedor de tablas.
- **Tabla:** Donde guardamos los datos (como productos o pedidos).
- **Esquema:** Define la estructura de las tablas.
- **SQL (Structured Query Language):** El lenguaje para hablar con la base de datos.

## 2. Comandos Esenciales (SQL)
Si usas `psql` (la terminal de Postgres) o herramientas como DBeaver/pgAdmin:

### Crear una Tabla
```sql
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100) UNIQUE
);
```

### Insertar Datos
```sql
INSERT INTO usuarios (nombre, email) 
VALUES ('Juan Perez', 'juan@example.com');
```

### Consultar Datos
```sql
SELECT * FROM usuarios WHERE nombre = 'Juan Perez';
```

## 3. ¿Por qué usar Docker para Postgres?
Es la forma más limpia de usarlo. No instalas nada en tu sistema, solo levantas un contenedor.
```bash
docker-compose up -d
```
Esto creará el contenedor basado en el archivo `docker-compose.yml` que ya creamos.
