<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.curso.service.TiendaService" %>
   	<%@ page import="com.curso.model.Producto" %>
   	<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Busqueda</title>
<style>

body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

table {
	width: 80%;
	border-collapse: collapse;
	margin: 20px auto;
	background-color: #fff;
}

th, td {
	padding: 12px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #333;
	color: #fff;
}

a {
	background-color: #4caf50;
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
	text-align: center;
	text-decoration: none;
}

.enlacevuelta {
	margin-top: 30px;
	text-align: center;
}

</style>
</head>
<body>


<% 
HttpSession s = request.getSession(true);
TiendaService ts = (TiendaService) s.getAttribute("tienda");
List<Producto> lista_productos = ts.obtenerListaProductos();

%>

<table>
<thead>
	<tr>
		<th>Nombre</th>
		<th>Seccion</th>
		<th>Precio</th>
		<th>Stock</th>
	</tr>
</thead>

<tbody>
	<% for (int i = 0; i < lista_productos.size(); i++) {%>
		<tr>
			<td><%=lista_productos.get(i).getNombre()%></td>
			<td><%=lista_productos.get(i).getSeccion()%></td>
			<td><%=lista_productos.get(i).getPrecio()%></td>
			<td><%=lista_productos.get(i).getStock()%></td>
		</tr>
		<%} %>
	<tr>
		
	</tr>
</tbody>

</table>

<div class="enlacevuelta">
	<a href="paginaInicial.jsp">Volver al menu principal</a>
</div>

</body>
</html>