# Gestión Legal de Clientes · Aquavita

Tablero de seguimiento de clientes en gestión legal: carta documento, juicio ejecutivo y sentencia.

- Página: publicada con GitHub Pages desde la rama `main`.
- Datos e ingreso: Supabase (tablas `casos` y `config`, ver `supabase/schema.sql`).
- Los usuarios se crean en Supabase › Authentication › Users.
- La sincronización con SWS y la generación de tickets corren como tareas programadas de Claude.

El repositorio es público: no subir contraseñas ni claves secretas. `config.js` solo lleva la URL del proyecto y la clave pública (anon).
