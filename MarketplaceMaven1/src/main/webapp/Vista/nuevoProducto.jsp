<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shorcut icon" href="img/logo.png">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<link href="../css/login.css" rel="stylesheet">
<title>MARKETPLACE - UTP</title>
<link href="../css/principal.css" rel="stylesheet">
</head>
<body>
	<header class="full-width NavBarP">
		<div class="full-width NavBarP-Logo">MARKETPLACE</div>
		<nav class="full-width NavBarP-Nav">
			<ul class="full-width list-unstyled">
				<li><a href="../index.jsp">INICIO</a></li>
				<li><a href="login.jsp">LOGIN</a></li>
			</ul>
		</nav>
		<i class="fa fa-bars visible-xs btn-menuMobile ShowMenuMobile"
			aria-hidden="true"></i>
	</header>

	<div class="overlay">
		<!-- LOGN IN FORM by Omar Dsoky -->
		<form action="<%=request.getContextPath()%>/ServletPostProductosNuevo"
			method="post">
			
			<div class="con">
				<!--     Start  header Content  -->
				<header class="head-form">
					<h2>Registro de Producto</h2>

					<p>Ingresa tus datos</p>
				

				
					<table>

				<tr>
					<td>NOMBRE:</td>
					<td><input class="controls" type="text" name="nombre"></td>
				</tr>
				<tr>
					<td>MARCA:</td>
					<td><input class="controls" type="text"
						name="marca"></td>
				</tr>
				<tr>
					<td>ESPECIFICACION:</td>
					<td><input class="controls" type="text"
						name="especificacion"></td>
				</tr>
				<tr>
					<td>PRECIO:</td>
					<td><input class="controls" type="text" name="precio"></td>
				</tr>
				<tr>
					<td>IMAGEN:</td>
					<td><input class="controls" type="text" name="foto"></td>
				</tr>
				
				
			</table>

				</div>								
				<button href="productos.jsp" class="btn submits sign-up">
					Registrate</button>
		</form>
		
	</div>
	<script src="../js/login.js"></script>
</body>
</html>