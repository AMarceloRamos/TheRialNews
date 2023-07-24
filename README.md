# README

# TheRialNews

TheRialNews es un sitio de noticias satíricas que ofrece una perspectiva humorística sobre eventos de actualidad.

## Instalación

1. Clona este repositorio.
2. Instala las dependencias con `bundle install`.
3. Configura la base de datos con `rails db:migrate`.
4. Inicia el servidor con `rails server`.

## Uso

Visita el sitio en tu navegador y disfruta de las noticias satíricas más divertidas del momento.

## Características

- Noticias satíricas actualizadas regularmente.
- Comentarios divertidos y sarcásticos de los usuarios.
- Administradores que supervisan y eliminan comentarios inapropiados.

## Contribución

¡Nos encantaría que contribuyeras a TheRialNews! Por favor, sigue las pautas de contribución en [CONTRIBUTING.md](link-to-contributing-file).

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE](link-to-license-file) para más detalles.

## Actualizaciones / Cambios Recientes

- Agregado Bootstrap para estilos y componentes en la aplicación.
- Modificado el nombre del archivo `application.css` a `application.scss` y agregado el siguiente contenido:

@import "bootstrap";

- Añadidos los paquetes `jquery-rails` y `popper` para trabajar con selectores y funcionalidades en JavaScript.

### En `application.js`

Agregado el siguiente contenido al archivo `application.js`:

import "popper"
import "bootstrap"


### En `app/assets/config/manifest.js`

Agregado el siguiente contenido:

//= link bootstrap.min.js

### En la carpeta `config/importmap.rb`

Agregado el siguiente contenido:

pin "popper", to: 'popper.js', preload: true
pin "bootstrap", to: 'bootstrap.min.js', preload: true

### En `config/initializers/asset.rb`

Agregado el siguiente contenido:

Rails.application.config.assets.precompile += %w(application.scss bootstrap.min.js popper.js)

- Agrege la funcionalidad de Inicio y Cierre de Sesión para los usuarios.
- Implemente un Navbar desde Bootstrap para una mejor experiencia de navegación.

### Ruta Root y Controlador Nuevo

Creamos una nueva ruta raíz y un controlador llamado "home" con la acción "index". Esto nos permitirá tener una página de inicio personalizada para el sitio.

### Formatos Navegacionales de Devise

Modificamos los formatos navegacionales de Devise en 'config/initializers/devise.rb', descomentando la línea 266. Esta configuración nos permite manejar de manera adecuada las respuestas en distintos formatos, incluyendo HTML y Turbo Stream.

### Navbar con Opciones de Sesión

Agregamos un Navbar utilizando Bootstrap, que incluye opciones para 'Iniciar sesión', 'Registrarse' y 'Cerrar sesión'. Además, las opciones se muestran o ocultan según el estado del usuario: si está conectado, solo se muestra 'Cerrar sesión'; si no está conectado, se muestran 'Iniciar sesión' y 'Registrarse'.

### Saludo al Usuario Conectado

En el Navbar, ahora mostramos un saludo personalizado al usuario si está conectado, y lo invitamos a registrarse o conectarse si no lo está.




* Ruby version : ruby 3.1.1p18 (2022-02-18 revision 53f5fc4236) [x86_64-linux]

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# M6_TheRialNews
