<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.curso.service.TiendaService" %>
   	<%@ page import="com.curso.model.Producto" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tienda</title>

<style>

body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

header {
	background-color: #333;
	padding: 20px;
	color: #fff;
	text-align: center;
}

nav {
	background-color: #444;
	padding: 10px;
	display: flex;
	justify-content: center;
}

nav a {
	color: #fff;
	text-decoration: none;
	padding: 10px 20px;
	margin: 0 10px;
	border-radius: 5px;
}

</style>

</head>
<body>

<% 
	RequestDispatcher rd=request.getRequestDispatcher("PaginaInicial");  
	rd.include(request, response);  
%>

<header>
	<h1>Pagina Tienda</h1>
</header>

<nav>
	<a href="busqueda.jsp">Busquedas</a>
	<a href="alta.jsp">Altas</a>
	<a href="eliminacion.jsp">Eliminacion</a>
	<a href="modificacion.jsp">Modificacion</a>
</nav>

</body>
</html>

