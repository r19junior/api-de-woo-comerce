# Recursos y Documentación de WooCommerce

¡Hola! En este archivo encontrarás una guía clara sobre qué es WooCommerce y exactamente dónde encontrar la información técnica oficial para profundizar en tu investigación.

## 🛒 ¿Qué es WooCommerce?
**WooCommerce** no es un software independiente, sino un plugin gratuito de código abierto diseñado específicamente para **WordPress**. Su función es transformar un sitio web convencional en una tienda en línea completamente funcional.

### ¿Para qué sirve?
- **Gestión de Inventarios:** Control total de stock.
- **Procesamiento de Pagos:** Integración con Stripe, PayPal, etc.
- **Envíos e Impuestos:** Configuración automática de logística y tributación.
- **Flexibilidad:** Permite vender productos físicos, digitales, suscripciones, membresías o reservas.

---

## ⚙️ ¿Qué es la API de WooCommerce?
La **REST API** es la "puerta trasera" que permite que aplicaciones externas (como una app móvil, un software de facturación o una web externa) hablen con tu tienda.

Con ella puedes realizar operaciones **CRUD** (Crear, Leer, Actualizar y Eliminar) sobre tus productos, pedidos, clientes y más, sin necesidad de entrar al panel de administración de WordPress.

---

## 📚 ¿Dónde encontrar información oficial?
Para aprender a usarla, los mejores recursos son los sitios oficiales de desarrollo:

### 1. Documentación para Desarrolladores (Oficial)
Es el lugar principal para entender los conceptos técnicos y ver ejemplos de código.
- **Sitio:** [WooCommerce Developer Docs](https://developer.woocommerce.com/)
- **Qué encontrarás:** Guías de autenticación, requisitos del servidor y cómo hacer tu primera petición.

### 2. Referencia de la API (Endpoints)
Si necesitas saber exactamente qué datos enviar para crear un producto o actualizar un pedido, este es el manual de referencia.
- **Sitio:** [WooCommerce REST API Documentation (GitHub)](https://woocommerce.github.io/woocommerce-rest-api-docs/)
- **Contenido:** Listado detallado de todos los endpoints (rutas) disponibles, como `/wp-json/wc/v3/products`.

### 3. Tutoriales Prácticos
Sitios como **Hostinger**, **IONOS** o blogs especializados como **Code Tuts+** tienen artículos muy claros en español sobre cómo configurar herramientas como **Postman** para probar la API.

---

## 🚀 Pasos rápidos para empezar
1.  **Habilitar la API:** En tu WordPress, ve a `WooCommerce > Ajustes > Avanzado > API REST`.
2.  **Generar Claves:** Haz clic en "Añadir clave". Obtendrás una **Consumer Key** (Clave de cliente) y una **Consumer Secret** (Clave secreta).
3.  **Probar:** Descarga una herramienta como **Postman** e intenta hacer un `GET` a `tudominio.com/wp-json/wc/v3/orders` usando tus claves.

---
*Este documento ha sido generado como parte del repositorio de estudio de la API de WooCommerce.*
