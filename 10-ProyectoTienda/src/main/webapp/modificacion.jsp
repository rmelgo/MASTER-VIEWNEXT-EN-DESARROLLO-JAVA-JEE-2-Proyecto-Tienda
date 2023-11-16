<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario modificacion</title>
<style>

body {
	font-family: Arial, sans-serif;
	backgorund-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

form {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	width: 300px;
}

label {
	display: block;
	margin-bottom: 8px;
}

button {
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

<form action="Modificacion" method="post">

	<label for="nombre">Introduce el nombre del producto que se desea modificar:</label>
	<input type="text" id="nombre" name="nombre" required></br>
	
	<label for="precio">Introduce el nuevo precio del producto:</label>
	<input type="number" id="precio" name="precio" min="0" step="0.01" required></br></br>
	
	<button type="submit">Modificar Producto</button>

</form>

</body>
</html>