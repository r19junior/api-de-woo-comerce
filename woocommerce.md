# WooCommerce: Guía Completa

![WooCommerce Logo](https://woocommerce.com/wp-content/themes/woo/images/logo-woocommerce.svg)

## ¿Qué es WooCommerce?
WooCommerce es el plugin de comercio electrónico de código abierto más popular para **WordPress**. Lanzado en 2011, permite a cualquier persona convertir un sitio web estándar de WordPress en una tienda online totalmente funcional.

### Características Principales
- **Flexibilidad:** Puedes vender productos físicos, digitales, suscripciones, membresías y más.
- **Control Total:** Al ser de código abierto, eres dueño de tus datos y puedes personalizar cada aspecto de tu tienda.
- **Ecosistema Gigante:** Miles de extensiones (gratuitas y de pago) para añadir funcionalidades como pasarelas de pago, envíos y marketing.
- **Optimizado para SEO:** Hereda las capacidades de SEO de WordPress.

## ¿Cómo funciona con WordPress?
WooCommerce se integra perfectamente con WordPress. Utiliza los mismos tipos de posts, usuarios y taxonomías, lo que facilita la curva de aprendizaje si ya conoces WordPress.

### Requisitos Básicos
1. **Instalación de WordPress.**
2. **Activación del Plugin WooCommerce.**
3. **Configuración de Permalinks:** Es crucial para que las APIs funcionen (Configuración > Enlaces permanentes > Nombre de la entrada).

## Arquitectura de Datos de WooCommerce
WooCommerce extiende la base de datos de WordPress utilizando Tablas personalizadas y Metadatos.

- **Productos:** Almacenados como `product` (Post Type) con metadatos para precio, SKU y stock.
- **Pedidos:** Almacenados como `shop_order` (Post Type).
- **Clientes:** Basados en el sistema de usuarios de WordPress con el rol `customer`.

## REST API: Uso Técnico
La API vive en el endpoint `/wp-json/wc/v3/`. Requiere autenticación via HTTPS (Basic Auth con Key/Secret).

### Ejemplo de Objeto Producto (JSON)
```json
{
  "name": "Camiseta de Algodón",
  "type": "simple",
  "regular_price": "25.00",
  "description": "Una camiseta cómoda y duradera.",
  "categories": [
    { "id": 9 }
  ],
  "images": [
    { "src": "http://example.com/wp-content/uploads/shirt.jpg" }
  ]
}
```

### Endpoints Principales
| Recurso | Método | Endpoint | Descripción |
| :--- | :--- | :--- | :--- |
| **Productos** | GET | `/products` | Listar todos los productos |
| **Productos** | POST | `/products` | Crear un nuevo producto |
| **Pedidos** | GET | `/orders` | Listar pedidos recientes |
| **Stock** | PUT | `/products/<id>` | Actualizar cantidad de stock |

## Requisitos del Servidor
Para un rendimiento óptimo de la API:
- **PHP:** 7.4 o superior (Recomendado 8.1+).
- **MySQL:** 5.7 o superior.
- **Memory Limit:** Mínimo 256MB.
- **HTTPS:** Obligatorio para Basic Auth fuera de entornos locales.

---
*Esta guía es parte del proyecto de investigación sobre integraciones de e-commerce.*
