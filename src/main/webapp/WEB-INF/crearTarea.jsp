<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Crear Nueva Tarea</title>
</head>
<body>
<h2>Crear Nueva Tarea</h2>
<form action="TareaServlet" method="post">
    <label for="descripcion">Descripción:</label>
    <input type="text" id="descripcion" name="descripcion" required><br><br>
    
    <label for="estado">Estado:</label>
    <select id="estado" name="estado">
        <option value="pendiente">Pendiente</option>
        <option value="en progreso">En Progreso</option>
        <option value="completada">Completada</option>
    </select><br><br>
    
    <button type="submit">Crear Tarea</button>
</form>
<a href="TareaServlet">Volver a la Lista de Tareas</a>
</body>
</html>
