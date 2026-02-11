# Documentación Oficial: Cliente de la API de WooCommerce para PHP

Esta librería permite interactuar con la REST API de WooCommerce de forma sencilla utilizando PHP. Es la herramienta oficial recomendada para integrar aplicaciones con tiendas WooCommerce.

## 1. Requisitos Técnicos
*   **PHP:** Versión 7.4 o superior.
*   **WooCommerce:** Versión 3.5 o superior.
*   **WordPress:** Versión 4.4 o superior.

## 2. Instalación
La instalación se realiza a través de **Composer**. Ejecuta este comando en la raíz de tu proyecto:

```bash
composer require automattic/woocommerce
```

## 3. Configuración Inicial (Setup)
Para conectar con tu tienda, necesitas instanciar el cliente con la URL de tu sitio, tu **Consumer Key** y tu **Consumer Secret**.

```php
require __DIR__ . '/vendor/autoload.php';

use Automattic\WooCommerce\Client;

$woocommerce = new Client(
    'https://tu-tienda.com', 
    'ck_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 
    'cs_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
    [
        'version' => 'wc/v3', 
        'wp_api' => true,      
        'verify_ssl' => true,
    ]
);
```

## 4. Ejemplos de Uso (CRUD)

### Obtener Información (GET)
```php
// Listar todos los productos
$productos = $woocommerce->get('products');

// Obtener un pedido específico por ID
$pedido = $woocommerce->get('orders/123');
```

### Crear Recursos (POST)
```php
$data = [
    'name' => 'Camiseta de Prueba',
    'type' => 'simple',
    'regular_price' => '19.99'
];
$resultado = $woocommerce->post('products', $data);
```

### Actualizar Recursos (PUT)
```php
$data = ['regular_price' => '15.50'];
$woocommerce->put('products/727', $data);
```

### Eliminar Recursos (DELETE)
```php
$woocommerce->delete('products/727', ['force' => true]);
```

## 5. Manejo de Errores
```php
try {
    $results = $woocommerce->get('customers');
} catch (HttpClientException $e) {
    echo "Error: " . $e->getMessage();
    $e->getRequest();  // Datos de la petición
    $e->getResponse(); // Datos de la respuesta
}
```

---
*Fuente original: [github.com/woocommerce/wc-api-php](https://github.com/woocommerce/wc-api-php)*
