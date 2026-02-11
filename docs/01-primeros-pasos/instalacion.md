# Guía de Instalación de WordPress: Paso a Paso

Esta guía detalla cómo configurar un entorno local de WordPress para el desarrollo con la API de WooCommerce.

## 1. Requisitos Previos
Para ejecutar WordPress localmente, necesitas un servidor web (Apache/Nginx), PHP y una base de datos (MySQL/MariaDB).

**Opciones Recomendadas:**
- **LocalWP (Más fácil):** [localwp.com](https://localwp.com/) - Herramienta optimizada para WordPress.
- **XAMPP (Clásico):** Incluye Apache, MySQL y PHP.

---

## 2. Instalación con LocalWP (Recomendado)
LocalWP automatiza casi todo el proceso.

1.  **Descargar e Instalar:** Ve a [localwp.com](https://localwp.com/) y descarga la versión para Windows.
2.  **Crear Nuevo Sitio:**
    - Haz clic en el botón `+` (Create a new site).
    - Elige "Create a new site" y dale un nombre (ej. `woolab`).
3.  **Configuración del Entorno:**
    - Selecciona "Preferred" para usar la configuración recomendada.
4.  **Credenciales de WordPress:**
    - Ingresa un usuario, contraseña y correo electrónico (ej. admin / password).
5.  **Finalizar:** Haz clic en "Add Site". LocalWP configurará el servidor y la base de datos automáticamente.

---

## 3. Instalación con XAMPP (Manual)
Si prefieres tener más control, usa XAMPP.

1.  **Descargar:** [apachefriends.org](https://www.apachefriends.org/).
2.  **Iniciar Servicios:** Abre el Panel de Control de XAMPP e inicia **Apache** y **MySQL**.
3.  **Descargar WordPress:** Obtén el `.zip` de [es.wordpress.org](https://es.wordpress.org/download/).
4.  **Extraer:** Descomprime los archivos en `C:\xampp\htdocs\woolab`.
5.  **Crear Base de Datos:**
    - Ve a `http://localhost/phpmyadmin`.
    - Crea una base de datos llamada `db_woolab`.
6.  **Instalador Web:**
    - Ve a `http://localhost/woolab`.
    - Selecciona el idioma y llena los datos de la base de datos:
        - DB Name: `db_woolab`
        - User: `root`
        - Password: (vacío por defecto en XAMPP)
        - Host: `localhost`

---

## 4. Configuración Post-Instalación
Una vez dentro del escritorio de WordPress (`/wp-admin`):

### Instalar WooCommerce
1.  Ve a **Plugins > Añadir nuevo**.
2.  Busca "WooCommerce" e instálalo.
3.  Sigue el asistente de configuración básica.

### Configurar Enlaces Permanentes (CRÍTICO para la API)
1.  Ve a **Ajustes > Enlaces permanentes**.
2.  Selecciona **Nombre de la entrada**.
3.  Haz clic en "Guardar cambios". *Sin esto, los endpoints de la API devolverán errores 404.*

### Generar Claves de API
1.  Ve a **WooCommerce > Ajustes > Avanzado > REST API**.
2.  Haz clic en **Añadir clave**.
3.  Descripción: `Desarrollo API`.
4.  Permisos: `Lectura/Escritura`.
5.  Guarda la **Consumer Key** y **Consumer Secret** en un lugar seguro.
