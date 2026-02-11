# JSON & HTTP: El Idioma de la API

Para que tu código hable con WooCommerce, necesitan un idioma común. Ese idioma es **JSON** y el medio de transporte es **HTTP**.

## 1. ¿Qué es HTTP? (El cartero)
HTTP es el protocolo que usamos para navegar por la web. Tiene "verbos" que indican qué queremos hacer:

| Verbo | Acción | Analogía |
| :--- | :--- | :--- |
| **GET** | Leer | Pedir un libro en la biblioteca. |
| **POST** | Crear | Rellenar un formulario de registro. |
| **PUT/PATCH** | Actualizar | Editar tu perfil de usuario. |
| **DELETE** | Borrar | Tirar algo a la basura. |

## 2. ¿Qué es JSON? (La carta)
JSON es un formato de texto para guardar datos de forma organizada que tanto humanos como máquinas pueden leer.

### Ejemplo de JSON de un producto:
```json
{
  "id": 101,
  "nombre": "Café Colombiano",
  "precio": "15.00",
  "stock": 50,
  "categorias": ["Bebidas", "Premium"]
}
```
Representa la información mediante **llaves** `{ }` y pares de **clave: valor**.

## 3. Cabeceras (Headers)
Son "notas adhesivas" que van por fuera del sobre. La más importante para nosotros es:
- `Content-Type: application/json`: Le dice al servidor que lo que va dentro es un JSON.

---
*Próximo paso: [Autenticación](../03-autenticacion/readme.md)*
