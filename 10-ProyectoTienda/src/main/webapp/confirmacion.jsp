<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Informacion</title>
<style>

body {
	font-family: Arial, sans-serif;
	backgorund-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

a {
	background-color: #4caf50;
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
}

</style>
</head>
<body>

<%String mensaje = request.getAttribute("mensaje").toString();%>

<h1>
<%=mensaje%>
</h1>

<a href="paginaInicial.jsp">Volver al menu principal</a>

</body>
</html>