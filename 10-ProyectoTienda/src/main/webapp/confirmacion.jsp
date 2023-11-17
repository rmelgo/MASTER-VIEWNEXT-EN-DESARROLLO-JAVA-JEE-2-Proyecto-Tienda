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

.correcto {
	background-color: #4caf50;
	color: #fff;
	padding: 20px;
	border-radius: 8px;
	text-align: center;
}

.incorrecto {
	background-color: #f44336;
	color: #fff;
	padding: 20px;
	border-radius: 8px;
	text-align: center;
}

a {
	background-color: #4caf50;
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
	text-decoration: none;
}

.enlacevuelta {
	margin-top: 30px;
	text-align: center;
}

</style>
</head>
<body>

<%String mensaje = request.getAttribute("mensaje").toString();%>

<%if (Boolean.parseBoolean(request.getAttribute("correcto").toString())) {%>
	<h1 class="correcto">
		<%=mensaje%>
	</h1>
<%} else {%>
	<h1 class="incorrecto">
	<%=mensaje%>
</h1>
<%} %>

<div class="enlacevuelta">
	<a href="paginaInicial.jsp">Volver al menu principal</a>
</div>

</body>
</html>