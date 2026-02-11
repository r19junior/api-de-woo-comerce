# Fase 4: Desarrollo Personalizado

Extendiendo WooCommerce para necesidades específicas del negocio.

## Objetivos
- [ ] **Custom Endpoints:** Registrar una nueva ruta en el namespace `wc/v3` usando `register_rest_route`.
- [ ] **Seguridad:** Implementar protección CORS y headers de seguridad.
- [ ] **Integración Móvil:** Configurar autenticación basada en tokens (JWT) para apps móviles.

## Guía de Extensibilidad
WooCommerce es "hookable". Usa `add_filter` para modificar la respuesta de la API antes de que salga del servidor.

## Reto Práctico
Crea un endpoint que devuelva el total de ventas del día actual sin requerir una consulta compleja a todos los pedidos.
