# Tu Primera Petición: ¡Hola API!

Vamos a realizar nuestra primera interacción real para obtener la lista de productos de tu tienda.

## 1. La Petición GET
- **URL:** `{{baseUrl}}/products`
- **Método:** `GET`
- **Auth:** `Basic Auth` (usando tus llaves).

### ¿Qué sucede al hacer clic en SEND?
1. El cartero (HTTP) lleva tu Consumer Key/Secret al servidor.
2. WordPress verifica si esos datos coinciden.
3. El motor de WooCommerce busca en la tabla `wp_posts` todos los que sean de tipo `product`.
4. Devuelve la lista en formato JSON.

## 2. Entendiendo la Respuesta (JSON)
Recibirás un array de objetos. Cada objeto producto tiene cientos de campos, pero los más importantes ahora son:
- `"id"`: El identificador único.
- `"name"`: El título.
- `"price"`: El precio actual.
- `"status"`: Si está publicado o en borrador.

## 3. Headers de Respuesta (La letra pequeña)
Mira la pestaña **Headers** en Postman tras recibir la respuesta. Busca:
- `X-WP-Total`: Te dice cuántos productos hay en total en la tienda.
- `X-WP-TotalPages`: Cuántas páginas de resultados existen.

---
*¿Listo para el reto? [Ir al Proyecto Práctico 2](../04-proyecto-practico-2/guia.md)*
