# Gestión Legal de Clientes · Aquavita

Tablero de seguimiento de clientes en gestión legal: carta documento, juicio ejecutivo y sentencia.

- Se publica con GitHub Pages desde la rama `main`.
- Los datos viven en `data/datos.enc.json`, **cifrados** (AES-256-GCM con clave derivada de la contraseña de acceso, PBKDF2-SHA256 600.000 iteraciones). Sin la contraseña el archivo es ilegible.
- `data/acceso.enc.json` guarda, cifrado con la misma contraseña, el token de GitHub que usa la página para guardar los cambios.
- La sincronización con SWS, la generación de tickets y las alertas por correo corren como tareas programadas de Claude y escriben sobre el mismo archivo cifrado.

El repositorio es público: no subir contraseñas, tokens ni datos sin cifrar.
