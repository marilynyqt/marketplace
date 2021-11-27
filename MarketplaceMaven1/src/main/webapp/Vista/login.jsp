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
<link href="../css/principal.css" rel="stylesheet">
<script src="login.js"></script>
<title>MARKETPLACE - UTP</title>
</head>
<body>

	<header class="full-width NavBarP">
		<div class="full-width NavBarP-Logo">MARKETPLACE</div>
		<nav class="full-width NavBarP-Nav">
			<ul class="full-width list-unstyled">
				<li><a href="../index.jsp">INICIO</a></li>
				<li><a href="Registrar.jsp">REGISTRARSE</a></li>

			</ul>
		</nav>
		<i class="fa fa-bars visible-xs btn-menuMobile ShowMenuMobile"
			aria-hidden="true"></i>
	</header>
	<div class="overlay">
		<!-- LOGN IN FORM by Omar Dsoky -->
		<form>
			<!--   con = Container  for items in the form-->
			<div class="con">
				<!--     Start  header Content  -->
				<header class="head-form">
					<h2>Log In</h2>
					<!--     A welcome message or an explanation of the login form -->
					<p>Inicia secion con correo y password</p>
				</header>
				<!--     End  header Content  -->
				<br>
				<div class="field-set">

					<!--   user name -->
					
					<!--   user name Input-->
					<input class="form-input" id="usuario" type="text"
						placeholder="@Correo" > <br>

					<!--   Password -->

					
					<!--   Password Input-->
					<input class="form-input" type="password" placeholder="Contraseña"
						id="contraseña" name="password"> <br>
					<input type="button" value="Iniciar Sesion" id="boton" onclick="login()" >
				</div>

				<!--   other buttons -->
				<div class="other">
					
					<!--      Forgot Password button-->
					<button class="btn submits frgt-pass">Olvide Contraseña</button>
					<!--     Sign Up button -->

					<!--      End Other the Division -->

				</div>

				<!--   End Conrainer  -->
			</div>

			<!-- End Form -->
		</form>
</div>
		<a href="persona?accion=Listar">MENU PRINCIPAL</a>
		<form action="persona" method="post">

			<table>
				<tr>
					<td><input class="botons" mane="accion" type="submit"
						value="Listar"></td>

				</tr>
			</table>
		</form>

		
	
	<script src="login.js"></script>
</body>
</html>