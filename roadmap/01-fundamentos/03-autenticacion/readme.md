# Autenticación: La Llave de tu Tienda

La API no está abierta al público (por seguridad). Necesitas identificarte para que WooCommerce sepa quién eres y qué puedes hacer.

## 1. Consumer Key y Consumer Secret
Son como tu "Nombre de usuario" y "Contraseña" para aplicaciones.
- **Consumer Key (ck_...):** Identifica quién eres.
- **Consumer Secret (cs_...):** Firma digital para probar que realmente eres tú.

## 2. Niveles de Permiso
Al crear las llaves, puedes elegir:
1.  **Lectura:** Solo puedes ver datos (productos, pedidos). No puedes romper nada.
2.  **Escritura:** Puedes crear y borrar. **¡Ten cuidado!**
3.  **Lectura/Escritura:** Control total. Recomendado para desarrollo.

## 3. Seguridad Crítica
- **NUNCA** compartas tu `Consumer Secret` públicamente (ej: en GitHub).
- **SSL (HTTPS):** WooCommerce requiere que tu sitio use HTTPS para enviar las llaves de forma segura. En local (LocalWP), esto se simula fácilmente.

## 4. ¿Cómo lo usa la API?
La forma más común es **Basic Auth**. Se envían las llaves codificadas en el encabezado de la petición HTTP.

---
*¿Listo para practicar? [Ir al Proyecto de Práctica](../04-proyecto-practico/guia.md)*
