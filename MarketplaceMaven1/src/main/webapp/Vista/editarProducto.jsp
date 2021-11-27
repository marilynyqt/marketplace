<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<script src="../js/nav.js"></script>
<link rel="shorcut icon" href="img/logo.png">
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
	fill="currentColor" class="bi bi-shop" viewBox="0 0 16 16">
  <path
		d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h1v-5a1 1 0 0 1 1-1h3a1 1 0 0 1 1 1v5h6V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zM4 15h3v-5H4v5zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1v-3zm3 0h-2v3h2v-3z" />
</svg>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="../css/login.css" rel="stylesheet">
<link href="../css/principal.css" rel="stylesheet">
<title>MARKETPLACE - UTP</title>
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
	<%@ page import="java.util.List"%>
	<%
		DaoProducto dao = new DaoProducto();
	int id = Integer.parseInt((String) request.getAttribute("id"));
	//Productos u=new Productos();
	Productos u = (Productos) dao.listarID(id);
	%>
	<form action="<%=request.getContextPath()%>/controladorProductos">
		<table class="table table-dark table-striped">

			Nombre:
			<br>
			<input type="text" name="nombre" value="<%=u.getNombre()%>">
			</br> Marca:
			<br>
			<input type="text" name="marca" value="<%=u.getMarca()%>">
			</br> Especificacion:
			<br>
			<input type="text" name="especificacion"
				value="<%=u.getEspecificacion()%>">
			</br> Precio:
			<br>
			<input type="text" name="precio" value="<%=u.getPrecio()%>">
			</br>
			<input type="hidden" name="txtid" value="<%=u.getId()%>">
			<br>
			<input type="submit" name="accion" value="Actualizar">
			</br>
			<a
				href="<%=request.getContextPath()%>/controladorProductos?accion=listar"
				class="button">Regresar </a>

		</table>
	</form>
	<%@ page import="integrador.Modelo.*"%>
	<%@ page import="integrador.Entidades.Productos"%>
	
</body>
</html>