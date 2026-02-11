# Proyecto Práctico 2: El Explorador de Productos

Ya no solo vamos a leer, vamos a **filtrar**. El objetivo es aprender a usar parámetros en la URL para obtener exactamente lo que queremos.

## Escenario
Imagina que tienes 100 productos, pero solo quieres ver los que están en oferta o los que pertenecen a una categoría específica.

## Paso 1: Usar Parámetros de Filtro
Prueba estas variaciones en Postman:

1. **Filtrar por Búsqueda:**
   `{{baseUrl}}/products?search=Camiseta`
   *Muestra solo los productos que tengan la palabra "Camiseta" en su nombre.*

2. **Limitar Resultados:**
   `{{baseUrl}}/products?per_page=5`
   *Muestra solo 5 productos por página.*

3. **Filtrar por Estado de Stock:**
   `{{baseUrl}}/products?stock_status=instock`
   *Muestra solo lo que tienes disponible.*

## Reto de la Fase 2
1. Crea un nuevo producto manualmente en WordPress y ponle una categoría llamada "Investigación".
2. Usa la API para listar **solo** los productos de esa categoría.
   *(Pista: Primero deberás obtener el ID de la categoría consultando el endpoint `/products/categories`).*

---
*Cuando completes este reto, estarás listo para la **Fase 3: CRUD y Lógica de Negocio**. No olvides marcar tu progreso en el [Estado de Lectura](../../progreso/estado_lectura.md).*
