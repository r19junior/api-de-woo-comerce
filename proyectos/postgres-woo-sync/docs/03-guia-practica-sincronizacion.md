# Guía Práctica: Sincronizando Woo con Postgres

Aquí verás cómo pasar de la teoría a la práctica.

## Paso 1: Obtener los datos (El Puente)
Usamos la API de WooCommerce. Un ejemplo de petición GET a `/products` nos devuelve un JSON.

## Paso 2: Transformar y Guardar
Necesitamos un pequeño script (en Node.js, Python o PHP) que haga lo siguiente:
1. Haga una petición a WooCommerce.
2. Reciba el JSON.
3. Lo convierta en una sentencia `INSERT` o `UPDATE` para PostgreSQL.

## Ejemplo de lógica (Pseudocódigo)
```javascript
// 1. Pedir productos a Woo
const wooProducts = await api.get('products');

// 2. Por cada producto, guardar en Postgres
for (const p of wooProducts) {
    await db.query(
        'INSERT INTO productos (woo_id, nombre, precio) VALUES ($1, $2, $3) ON CONFLICT (woo_id) DO UPDATE...',
        [p.id, p.name, p.price]
    );
}
```

## Paso 3: Automatización
Puedes usar **Cron Jobs** o **Webhooks** para que cada vez que se cree un pedido en WordPress, se envíe automáticamente a tu base de datos PostgreSQL.
