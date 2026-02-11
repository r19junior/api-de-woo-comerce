# Mini-Proyecto 1.0: El Detective de Datos

¡Es hora de ensuciarse las manos! No necesitas programar aún, vamos a usar tus ojos y una herramienta sencilla.

## Objetivo
Entender cómo están guardados los datos en tu WordPress local antes de intentar tocarlos con la API.

## Paso 1: El Inspector de WordPress
1.  Entra a tu WordPress local.
2.  Crea un Producto llamado "Producto de Prueba". Ponle un precio de `9.99` y un SKU `TEST-001`.
3.  Ahora, ve a la URL de tu sitio y añade esto al final: `?p=ID_DE_TU_PRODUCTO` (puedes ver el ID al editar el producto).

## Paso 2: El Vistazo Técnico
Si instalas un plugin llamado "Show Me Meta" o simplemente miras la base de datos (vía phpMyAdmin en LocalWP), busca la tabla `wp_postmeta`.
- Deberías ver filas con `meta_key` como `_price` y `_sku`.
- **Conclusión:** ¡Ahí es donde WooCommerce guarda los datos que la API leerá después!

## Paso 3: Tu Primera Llamada (Sin claves aún)
Prueba a entrar en esta URL: `tu-sitio.local/wp-json/`.
- Verás un montón de texto raro (JSON).
- Eso es el "Mapa de la API". Si ves eso, ¡tu WordPress está listo para hablar con el mundo!

## Reto de la Fase 1
Encuentra el ID numérico de tu producto y anótalo. Lo necesitaremos para la **Fase 2**.

---
*Cuando completes esto, marca la Fase 1 como leída en tu [Estado de Lectura](../../progreso/estado_lectura.md).*
