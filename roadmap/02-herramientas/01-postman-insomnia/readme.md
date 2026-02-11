# Postman & Insomnia: Tus Herramientas de Prueba

Para trabajar con APIs, no usamos un navegador común; usamos herramientas diseñadas para enviar y recibir peticiones HTTP de forma profesional.

## 1. Postman vs Insomnia
Ambas son excelentes. 
- **Postman:** Más completa, con muchas funciones de automatización.
- **Insomnia:** Más ligera y rápida, ideal para empezar.

## 2. Configuración de Entornos (Environments)
**⚠️ NUNCA** escribas tus claves directamente en la URL. Usa variables de entorno.

### Pasos en Postman:
1. Crea un nuevo **Environment** llamado "WooCommerce Local".
2. Añade estas variables:
   - `baseUrl`: `http://tu-sitio.local/wp-json/wc/v3`
   - `consumerKey`: `ck_xxxxxx...`
   - `consumerSecret`: `cs_xxxxxx...`
3. Selecciona el entorno en la esquina superior derecha.

## 3. Autenticación (Auth)
En la pestaña **Authorization** de tu petición:
- Tipo: **Basic Auth**.
- Username: `{{consumerKey}}`.
- Password: `{{consumerSecret}}`.

## 4. Importar la Colección Oficial
WooCommerce tiene una colección oficial de Postman que puedes importar para tener todos los endpoints listos para usar sin tener que escribirlos uno a uno.
- [WooCommerce Postman Collection](https://github.com/woocommerce/woocommerce-postman-collection)

---
*Próximo paso: [Configuración de WordPress](../02-configuracion-wordpress/readme.md)*
