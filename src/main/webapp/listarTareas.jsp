<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista de Tareas</title>
</head>
<body>
<h2>Lista de Tareas</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Descripción</th>
        <th>Estado</th>
    </tr>
    <c:forEach var="tarea" items="${tareas}">
        <tr>
            <td>${tarea.id}</td>
            <td>${tarea.descripcion}</td>
            <td>${tarea.estado}</td>
        </tr>
    </c:forEach>
</table>
<a href="crearTarea.jsp">Agregar Nueva Tarea</a>
</body>
</html>
