# Proyecto: Sincronización PostgreSQL + WooCommerce

Este proyecto tiene como objetivo integrar los datos de una tienda WooCommerce con una base de datos PostgreSQL.

## 🎯 Objetivos
1.  **Sincronización de Datos:** Espejar productos, pedidos y clientes desde Woo a Postgres.
2.  **Análisis Avanzado:** Utilizar SQL potente de Postgres para generar reportes que WooCommerce no ofrece de forma nativa.
3.  **Persistencia Externa:** Mantener un histórico de datos fuera de WordPress.

## 🚀 Configuración Inicial
1.  **PostgreSQL:** Se recomienda usar el `docker-compose.yml` adjunto para levantar el servicio.
2.  **API de WooCommerce:** Configurar las claves API (Consumer Key/Secret) en un archivo `.env` (no incluido por seguridad).

## 🛠️ Herramientas
- **Node.js / Python:** (Por decidir) para el script de sincronización.
- **Docker:** Para la base de datos PostgreSQL.
- **REST API de WooCommerce:** Fuente de datos.
