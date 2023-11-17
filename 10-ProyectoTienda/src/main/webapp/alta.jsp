<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario Alta</title>
<style>

body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

form {
	max-width: 400px;
	margin: 20px auto;
	background: #fff;
	padding: 20px;
	border-radius: 8px;
}

label {
	display: block;
	margin-bottom: 8px;
	color: #555;
}

input, textarea {
	width: 100%;
	padding: 8px;
	margin-bottom: 16px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

button {
	background-color: #4caf50;
	color: #fff;
	padding: 10px 15px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #45a049;
}

.boton {
	margin-top: 10px;
	text-align: center;
}

</style>
</head>
<body>

<form action="Alta" method="post">

	<label for="nombre">Nombre:</label>
	<input type="text" id="nombre" name="nombre" required><br>
	
	<label for="seccion">Seccion:</label>
	<input type="text" id="seccion" name="seccion" required><br>
	
	<label for="precio">Precio:</label>
	<input type="number" id="precio" name="precio" min="0" step="0.01" required><br>
	
	<label for="stock">Stock:</label>
	<input type="number" id="stock" name="stock" min="0" required><br>

	<div class="boton">
		<button type="submit">Guardar Producto</button>
	</div>
</form>

</body>
</html>