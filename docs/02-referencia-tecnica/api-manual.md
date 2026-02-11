# WooCommerce REST API v3: Referencia Detallada

Esta guía sirve como material de estudio para dominar los parámetros, recursos y estructuras de la API de WooCommerce.

## 1. Conceptos Globales de Peticiones

### URL Base
`https://tusitio.com/wp-json/wc/v3/`

### Parámetros de Consulta Comunes (Query Parameters)
Cualquier endpoint que devuelva una lista (productos, pedidos, etc.) acepta estos parámetros:

| Parámetro | Tipo | Descripción |
| :--- | :--- | :--- |
| `context` | string | `view` (defecto) o `edit` (devuelve más datos técnicos). |
| `page` | integer | Número de página de resultados (ej. `2`). |
| `per_page` | integer | Resultados por página (1-100). Defecto: `10`. |
| `search` | string | Busca por una cadena de texto específica. |
| `after` | string | Limita resultados a después de una fecha ISO8601. |
| `before` | string | Limita resultados a antes de una fecha ISO8601. |
| `order` | string | `asc` (ascendente) o `desc` (descendente). |
| `orderby` | string | Ordenar por: `date`, `id`, `include`, `title`, `slug`, `price`. |

---

## 2. Recurso: Productos (`/products`)

### Parámetros de Filtrado Específicos
- `featured`: `true` o `false`.
- `category`: ID de la categoría.
- `tag`: ID de la etiqueta.
- `shipping_class`: ID de la clase de envío.
- `attribute`: Nombre del atributo (ej. `pa_color`).
- `attribute_term`: Término del atributo (ej. ID de `Rojo`).
- `min_price` / `max_price`: Filtrar por rango de precio.
- `stock_status`: `instock`, `outofstock`, `onbackorder`.

### Campos Clave del Producto
- `id`: Único (solo lectura).
- `name`: Nombre del producto.
- `type`: `simple`, `grouped`, `external`, `variable`.
- `status`: `publish`, `draft`, `pending`, `private`.
- `regular_price`: Precio sin descuento (string).
- `sale_price`: Precio con descuento.
- `manage_stock`: `true` / `false`.
- `stock_quantity`: Cantidad disponible.

---

## 3. Recurso: Pedidos (`/orders`)

### Parámetros de Filtrado
- `customer`: ID del cliente.
- `status`: `any`, `pending`, `processing`, `on-hold`, `completed`, `cancelled`, `refunded`, `failed`.

### Estructura de un Pedido (Campos Críticos)
- `id`: ID del pedido.
- `number`: Número de pedido (puede ser distinto al ID).
- `status`: Estado actual.
- `currency`: Moneda (ej. `USD`, `EUR`).
- `total`: Monto total cobrado.
- `billing`: Objeto con dirección de facturación (`first_name`, `last_name`, `address_1`, `email`, etc.).
- `shipping`: Objeto con dirección de envío.
- `line_items`: Array de productos comprados (incluye `product_id`, `quantity`, `subtotal`).

---

## 4. Recurso: Clientes (`/customers`)

### Parámetros de Filtrado
- `role`: `all`, `administrator`, `editor`, `author`, `contributor`, `subscriber`, `customer`, `shop_manager`.
- `email`: Buscar por correo exacto.

---

## 5. Webhooks (`/webhooks`)
Los webhooks permiten que WooCommerce "envíe" información a tu servidor cuando algo sucede.

- **Topic (Tópicos):**
    - `coupon.created`, `coupon.updated`, `coupon.deleted`
    - `customer.created`, `customer.updated`, `customer.deleted`
    - `order.created`, `order.updated`, `order.deleted`
    - `product.created`, `product.updated`, `product.deleted`

---

## 6. Manejo de Respuestas y Cabeceras (HTTP Headers)

La API devuelve información útil en las cabeceras de la respuesta:
- `X-WP-Total`: Número total de registros existentes.
- `X-WP-TotalPages`: Total de páginas disponibles.

### Códigos de Estado Comunes
- `200 OK`: Petición exitosa.
- `201 Created`: Recurso creado con éxito (POST).
- `400 Bad Request`: Error en los parámetros enviados.
- `401 Unauthorized`: Error de autenticación (Key/Secret incorrectos).
- `404 Not Found`: El recurso no existe.

---
*Tip de Estudio: Usa la cabecera `?_fields=id,name,price` para que la API devuelva solo los campos que necesitas y sea más rápida.*
