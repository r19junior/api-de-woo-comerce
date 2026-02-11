# Configuración de WordPress para la API

Antes de disparar peticiones, debemos asegurar que la base de operaciones (WordPress) esté configurada correctamente.

## 1. El Gran Error: Permalinks (Enlaces Permanentes)
Si tus enlaces permanentes están en modo "Simple" (`?p=123`), la API **NO FUNCIONARÁ**. El servidor devolverá un error 404 porque no puede encontrar las rutas de la API.

### Solución:
1. Ve a **Ajustes > Enlaces permanentes**.
2. Selecciona **Nombre de la entrada**.
3. Haz clic en **Guardar cambios**. Esto regenera el archivo `.htaccess` y habilita las rutas amigables que la API necesita.

## 2. HTTPS y SSL
La API de WooCommerce requiere HTTPS para funcionar de forma segura. 
- **En Local (LocalWP):** Ve a la pestaña "SSL" de tu sitio en LocalWP y haz clic en **Trust**. Esto simulará un certificado seguro.
- **Sin HTTPS:** Si estás en un entorno sin SSL, tendrás que activar la opción `query_string_auth` en tus peticiones, pero esto no es recomendado para sitios reales.

## 3. Comprobación de Salud
Entra a `http://tu-sitio.local/wp-json/wc/v3`.
- Si ves un JSON con información, ¡la configuración es correcta!
- Si ves un error de "Forbidden" o "401", revisa tus claves.
- Si ves un "404", revisa los Permalinks.

---
*Próximo paso: [Tu Primera Petición](../03-primera-peticion/readme.md)*
