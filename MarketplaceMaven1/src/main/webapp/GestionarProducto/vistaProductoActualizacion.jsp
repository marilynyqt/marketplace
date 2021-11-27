<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>I SEE RED</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<link rel="apple-touch-icon" type="image/png"
	href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png">
<meta name="apple-mobile-web-app-title" content="CodePen">
<link rel="shortcut icon" type="image/x-icon" href=""">
<link rel="mask-icon" type=""
	href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg"
	color="#111">
<link
	href="https://fonts.googleapis.com/css2?family=EB+Garamond:ital@0;1&amp;family=Playfair+Display+SC:wght@900&amp;family=Playfair+Display:ital,wght@0,800;1,800&amp;family=Manrope:wght@800&amp;display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/principal.css">
</head>
<body>
	<header class="full-width NavBarP">
		<div class="full-width NavBarP-Logo">MARKETPLACE</div>
		<nav class="full-width NavBarP-Nav">
			<ul class="full-width list-unstyled">
				<li><a href="../index.jsp">INICIO</a></li>
				<li><a href="tiendas.jsp">TIENDAS</a></li>
				<li><a href="productos.jsp">PRODUCTOS</a></li>
			</ul>
		</nav>
		<i class="fa fa-bars visible-xs btn-menuMobile ShowMenuMobile"
			aria-hidden="true"></i>
	</header>

<form action="<%=request.getContextPath() %>/ControladorProductoActualizar" method="post">
	<table>
	<tr>
	<td>ID:</td><td> <c:out value="${cursoActual.codigo}" /> <input type="hidden" name="codigo" value="${cursoActual.codigo}"> </td>
	</tr>
	<tr>
	<td>Nombre:</td><td> <input type="text" name="nombre" value="${cursoActual.nombre}"/> </td>
	</tr>
	<tr>
	<td>Descripcion:</td><td> <input type="text" name="especificacion" value="${cursoActual.especificacion}"/> </td>
	</tr>
	<tr>
	<td>Marca:</td><td> <input type="text" name="marca" value="${cursoActual.marca}"/> </td>
	</tr>
	<tr>
	<tr>
	<td>Precio:</td><td> <input type="text" name="precio" value="${cursoActual.precio}"/> </td>
	</tr>
	<tr>
	<td></td><td> <input type="submit" value="Actualizar Producto"> </td>
	</tr>
	</table>
</form>	
<br/>
<a href="<%=request.getContextPath() %>/ControladorProductos">
	Listado de Personas
</a>
</body>
</html>