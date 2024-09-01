# Aplicación de Gestión de Tareas

Este proyecto es una aplicación de gestión de tareas desarrollada utilizando Java EE. La aplicación permite a los usuarios crear, asignar, actualizar y completar tareas, así como generar informes sobre el progreso del proyecto.

## Tecnologías Utilizadas

- **Java EE**: Para el desarrollo del backend.
- **Servlets**: Para manejar las solicitudes HTTP.
- **Session Beans**: Para la lógica de negocio.
- **JPA (Java Persistence API)**: Para la persistencia de datos.
- **JSP (JavaServer Pages)**: Para la interfaz de usuario.
- **MySQL**: Como base de datos para persistir los datos.

## Estructura del Proyecto

- `src/main/java`: Contiene el código fuente Java del proyecto.
  - **entidades**: Contiene las clases de entidad JPA (`Usuario.java`, `Tarea.java`).
  - **ejb**: Contiene los Session Beans (`TareaBean.java`).
  - **servlets**: Contiene los Servlets (`TareaServlet.java`).
- `src/main/webapp`: Contiene los archivos JSP para la interfaz de usuario (`listarTareas.jsp`, `crearTarea.jsp`).

## Configuración del Entorno

### Prerrequisitos

- **Java SE Development Kit (JDK) 8** o superior.
- **Apache Maven**: Para la gestión de dependencias y construcción del proyecto.
- **Servidor de Aplicaciones Java EE**: Como Apache TomEE, WildFly, GlassFish, etc.
- **MySQL**: Para la base de datos.

### Configuración de la Base de Datos

1. Instala y configura MySQL.
2. Crea una base de datos llamada `gestion_tareas`.
3. Crea las tablas necesarias utilizando las siguientes sentencias SQL:

```sql
CREATE TABLE Usuario (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255)
);

CREATE TABLE Tarea (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255),
    estado VARCHAR(50),
    usuario_id BIGINT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id)
);
