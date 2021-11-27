<%@page import="integrador.Modelo.DaoPersona"%>
<%@page import="integrador.Entidades.Persona"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MARKETPLACE</title>
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

<link rel="stylesheet" href="css/principal.css">
<link rel="stylesheet" href="css/productos2.css">
</head>

<header class="full-width NavBarP">
	<div class="full-width NavBarP-Logo">MARKETPLACE</div>
	<nav class="full-width NavBarP-Nav">
		<ul class="full-width list-unstyled">
			<li><a href="index.jsp">INICIO</a></li>

			<li><a href="<%=request.getContextPath()%>/ControladorProductos">PRODUCTOS</a></li>
		</ul>
	</nav>
	<i class="fa fa-bars visible-xs btn-menuMobile ShowMenuMobile"
		aria-hidden="true"></i>
</header>

<body>

	<div class="products-area-wrapper tableView">
		<div class="products-header">
			<div class="product-cell image">ID</div>
			<div class="product-cell category">NOMBRE</div>
			<div class="product-cell status-cell">APELLIDO PATERNO</div>
			<div class="product-cell sales">APELLIDO MATERNO</div>
			<div class="product-cell stock">CORREO</div>
			<div class="product-cell price">PASSWORD</div>
			<div class="product-cell price">TELEFONO</div>
			<div class="product-cell price">DIRECCION</div>
			<div class="product-cell price">DNI</div>
			<div class="product-cell price">EDITAR</div>
			<div class="product-cell price">ELIMINAR</div>
		</div>
		<%@ page import="integrador.*"%>
		<%@ page import="java.util.List"%>
		<%@ page import="java.util.Iterator"%>
		<%
			DaoPersona dao = new DaoPersona();
		List<Persona> list = dao.listar();
		Iterator<Persona> iter = list.iterator();
		Persona per = null;
		while (iter.hasNext()) {
			per = iter.next();
		%>
		<section>
			<div class="products-row">

				<div class="product-cell image"><%=per.getId()%></div>
				<div class="product-cell category">
					<%=per.getNombre()%></div>
				<div class="product-cell status-cell">
					<span class="cell-label">Status:</span>
					<%=per.getApellido_paterno()%>
				</div>
				<div class="product-cell sales">
					<span class="cell-label">Sales:</span>
					<%=per.getApellido_materno()%>
				</div>
				<div class="product-cell stock">
					<span class="cell-label">Stock:</span>
					<%=per.getCorreo()%>
				</div>
				<div class="product-cell stock">
					<span class="cell-label">Stock:</span>
					<%=per.getPassword()%>
				</div>
				<div class="product-cell stock">
					<span class="cell-label">Stock:</span>
					<%=per.getTelefono()%>
				</div>
				<div class="product-cell stock">
					<span class="cell-label">Stock:</span>
					<%=per.getDireccion()%>
				</div>
				<div class="product-cell stock">
					<span class="cell-label">Stock:</span>
					<%=per.getDni()%>
				</div>
				<div class="product-cell stock">
					<a
						href="<%=request.getContextPath() %>/ControladorPersonaEditar?id=${c.id}">
						Editar </a>
				</div>
				<div class="product-cell stock">
					<a
						href="<%=request.getContextPath() %>/ControladorPersonaEliminar?id=${c.id}">
						Eliminar </a>
				</div>

			</div>
		</section>
		<%
			}
		%>



		<a href="Vista/Registrar.jsp"> AGREGAR </a>
</body>
</html>