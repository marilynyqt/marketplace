<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="shorcut icon" href="img/logo.png">
<script src="../js/productos.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
	crossorigin="anonymous"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<link href="../css/principal.css" rel="stylesheet">

<link href="../css/productos2.css" rel="stylesheet">
<title>MARKETPLACE - UTP</title>

</head>
<body>
	<header class="full-width NavBarP">
		<div class="full-width NavBarP-Logo">MARKETPLACE</div>
		<nav class="full-width NavBarP-Nav">
			<ul class="full-width list-unstyled">
				<li><a href="../index.jsp">INICIO</a></li>
				
				<li><a href="<%=request.getContextPath()%>/ControladorPersonas"> PERSONA</a></li>
				<li><a href="<%=request.getContextPath()%>/ControladorProductos">VALIDAR PRODUCTO</a></li>
						

			</ul>
		</nav>
		<i class="fa fa-bars visible-xs btn-menuMobile ShowMenuMobile"
			aria-hidden="true"></i>
	</header>

	<div class="account-info"></div>
	<div class="app-content">
		<div class="app-content-header">
			<h1 class="app-content-headerText">Products</h1>
			<button class="mode-switch" title="Switch Theme"></button>
			<a href="nuevoProducto.jsp">ADD PRODUCT</a>
		</div>
		<div class="app-content-actions">
			<input class="search-bar" placeholder="Search..." type="text">

			<div class="app-content-actions-wrapper"></div>
		</div>
		<div class="products-area-wrapper tableView">
		<div class="products-header">
			<div class="product-cell image">ID</div>
			<div class="product-cell category">
				NOMBRE				
			</div>
			<div class="product-cell status-cell">
				MARCA				
			</div>
			<div class="product-cell sales">
				DESCRIPCION	
			</div>
			<div class="product-cell stock">
				PRECIO				
			</div>
			
			
			<div class="product-cell price">
				EDITAR				
			</div>
			<div class="product-cell price">
				ELIMINAR				
			</div>
		</div>
		
		<c:forEach items="${lstProducto}" var="c">
		<section>
		<div class="products-row">
				
			
				
			<div class="product-cell image"><c:out value="${c.codigo}"></c:out>
			</div>
			<div class="product-cell category">
				<c:out value="${c.nombre}"></c:out>
			</div>
			
			<div class="product-cell sales">
				<c:out value="${c.especificacion}"></c:out>
			</div>
			<div class="product-cell stock">
				<c:out value="${c.marca}"></c:out>
			</div>
			<div class="product-cell stock">
				<c:out value="${c.precio}"></c:out>
			</div>
			
			<div class="product-cell stock">
			<a href="<%=request.getContextPath() %>/ControladorProductoEditar?id=${c.codigo}">
							Editar </a></div>
			<div class="product-cell stock">
			<a href="<%=request.getContextPath() %>/ControladorProductoEliminar?id=${c.codigo}">
							Eliminar </a></div>
			</section></c:forEach>
		</div>

	</div>

</body>
</html>