# WordPress Core: El Corazón de WooCommerce

Si no entiendes WordPress, no entenderás WooCommerce. Aquí te explico por qué.

## 1. ¿Qué es un "Post" en WordPress?
En WordPress, casi todo es un "Post". Una entrada de blog es un post, una página es un post. Pero WordPress permite crear tipos de posts personalizados llamados **Custom Post Types (CPTs)**.

### WooCommerce usa CPTs para todo:
- **Productos:** Son un CPT llamado `product`.
- **Pedidos:** Son un CPT llamado `shop_order`.
- **Cupones:** Son un CPT llamado `shop_coupon`.

## 2. La Base de Datos (Simplificada)
WordPress guarda la información en dos tablas principales (para lo que nos interesa):
1.  **`wp_posts`**: Guarda el "qué" (título, contenido, fecha, tipo de post).
2.  **`wp_postmeta`**: Guarda los "detalles" (precio, stock, SKU, dirección de envío).

> [!IMPORTANT]
> Cuando usas la API para cambiar el precio de un producto, en realidad estás cambiando un valor en la tabla `wp_postmeta`.

## 3. ¿Qué es un "Hook"? (Ganchos)
WordPress funciona con eventos. 
- **Action Hooks:** Permiten "hacer algo" cuando pasa algo (ej: enviar un correo cuando se crea un pedido).
- **Filter Hooks:** Permiten "cambiar algo" antes de que se guarde o se muestre (ej: añadir un texto al final de todos los precios).

## Conclusión
WooCommerce no es algo "separado", es un conjunto de reglas que le dicen a WordPress: "Trata a estos posts como productos y a estos otros como ventas".

---
*Próximo paso: [Aprender JSON y HTTP](../02-json-http/readme.md)*
