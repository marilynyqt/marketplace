<%@page import="integrador.Entidades.Carrito"%>
<%@page import="integrador.Entidades.Productos"%>
<%@page import="integrador.Modelo.DaoProducto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<script src="../js/productos.js"></script>
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

<link href="css/principal.css" rel="stylesheet">

<title>MARKETPLACE - UTP</title>
</head>
<body>

	<header class="full-width NavBarP">
		<div class="full-width NavBarP-Logo">MARKETPLACE</div>
		<nav class="full-width NavBarP-Nav">
			<ul class="full-width list-unstyled">
			
				<li><a
					href="<%=request.getContextPath() %>/ServletCarrito?accion=Carrito"><i
						class="fas fa-cart-plus">(<label style="color: orange">${contador}</label>)
					</i> CARRITO</a></li>
				<li><a href="index.jsp">INICIO</a></li>
				<li><a href="Vista/login.jsp">LOGIN</a></li>

			</ul>
		</nav>
		<i class="fa fa-bars visible-xs btn-menuMobile ShowMenuMobile"
			aria-hidden="true"></i>
	</header>

	<div class="container mt-4">
		<div class="row">
			<%@ page import="integrador.*"%>
			<%@ page import="java.util.List"%>
			<%@ page import="java.util.Iterator"%>
			<%
			DaoProducto dao = new DaoProducto();
		List<Productos> list = dao.listar();
		Iterator<Productos> iter = list.iterator();
		Productos per = null;
		while (iter.hasNext()) {
			per = iter.next();
		%>
			
				<div class="col-sm-4">
					<div class="card">
						<div class="card-header">
							<label><%=per.getNombre()%></label>
						</div>
						<div class="card-body">
							<label>S/<%=per.getPrecio()%></label> 
							<img src="<%=request.getContextPath() %>/ServletImagen?id=<%=per.getId()%>"
								width="140" height="170">
						</div>
						<div class="card-footer text-center">
							<label><%=per.getEspecificacion()%></label>
							<div>
								<a
									href="<%=request.getContextPath() %>/ServletCarrito?accion=AgregarCarrito&id=${c.getId()}"
									class="btn btn-outline-info">AGREGAR CARRITO</a> <a
									href="<%=request.getContextPath() %>/ServletCarrito?accion=Comprar&id=${c.getId()}"
									class="btn btn-danger">COMPRA </a>
							</div>
						</div>
					</div>
				</div>			
			<%} %>
			<br>

		</div>
	</div>

	<script src="../js/app.js"></script>
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>