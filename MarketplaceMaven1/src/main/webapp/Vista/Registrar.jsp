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
		<form action="<%=request.getContextPath()%>/RegistrarPersonas"
			method="post">

			<div class="con">
				<!--     Start  header Content  -->
				<header class="head-form">
					<h2>Registro</h2>

					<p>Ingresa tus datos</p>



					<table>

						<tr>
							<td>NOMBRE:</td>
							<td><input required class="controls" type="text" name="nombre"></td>
						</tr>
						<tr>
							<td>APELLIDO PATERNO:</td>
							<td><input class="controls" type="text" required
								name="apellido-paterno"></td>
						</tr>
						<tr>
							<td>APELLIDO MATERNO:</td>
							<td><input class="controls" type="text" required
								name="apellido-materno"></td>
						</tr>
						<tr>
							<td>DNI:</td>
							<td><input required class="controls" type="text" name="dni"></td>
						</tr>
						<tr>
							<td>ROL:</td>
							<td><select name="rol">

							<option>Cliente</option>

							<option>Vendedor</option>
							

						</select></td>
						</tr>
						<tr>
							<td>DISTRITO:</td>
							<td><select name="distrito">

							<option>Cerro Colorado</option>
							<option>Hunter</option>
							<option>Cayma</option>
							<option>Miraflores</option>
							<option>Yura</option>
							<option>Yanahuara</option>
							<option>La Joya</option>
							<option>Alto Selva Alegre</option>
							<option>Mariano Melgar</option>

						</select></td>
						</tr>
						<tr>
							<td>TELEFONO:</td>
							<td><input class="controls" type="text" name="telefono"></td>
						</tr>
						<tr>
							<td>DIRECCION:</td>
							<td><input required class="controls" type="text" name="direccion"></td>
						</tr>
						<tr>
							<td>CORREO:</td>
							<td><input required class="controls" type="text" name="correo"></td>
						</tr>
						<tr>
							<td>PASSWOD:</td>
							<td><input required class="controls" type="password" name="password"></td>
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