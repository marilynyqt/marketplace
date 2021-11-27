<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<script src="../js/nav.js"></script>
<link rel="shorcut icon" href="img/logo.png">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="css/principal.css" rel="stylesheet">
<title>MARKETPLACE - UTP</title>
</head>
<body>

	<header class="full-width NavBarP">
		<div class="full-width NavBarP-Logo">MARKETPLACE</div>
		<nav class="full-width NavBarP-Nav">
			<ul class="full-width list-unstyled">
				<li><a href="../index.jsp">INICIO</a></li>
				<li><a href="tiendas.jsp">TIENDAS</a></li>
				<li><a
					href="<%=request.getContextPath()%>/ServletControladorProductos?accion=home">SERGUIR
						COMPRANDO</a></li>
			</ul>
		</nav>
	</header>

	<div class="container mt-4">
		<h3>CARRITO</h3>
		<br>
		<div class="row">
			<div class="col-sm-8">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>NOMBRE</th>
							<th>DESCRIPCION</th>
							<th>PRECIO</th>
							<th>CANTIDAD</th>
							<th>SUBTOTAL</th>
							<th>ACCION</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="car" items="${carrito }">
							
							<tr>
								<td>${car.getItem() }</td>
								<td>${car.getNombres() }</td>
								<td>${car.getDescripcion() }</td>
								<td>${car.getPrecioCompra() }</td>
								<td><input type="number" id="Cantidad"
									value="${car.getCantidad() }" class="form-control text-center"
									min="1"></td>
								<td>${car.getSubTotal() }</td>
								<td><input type="hidden" id="idp"
									value="${car.getIdProducto() }"> <a
									href="<%=request.getContextPath() %>/ServletCarrito?accion=Eliminar&idp=${car.getIdProducto()}"
									id="btnDelete">Eliminar</a> <a href="Editar"></a></td>
							</tr>
						</c:forEach>
						
					</tbody>
				</table>
			</div>
			<div class="col-sm-4">
				<div class="car">
					<div class="car-header">
						<h3>Generar Compra</h3>
					</div>
					<div class="car-body">
						<label>SubTotal</label> <input type="text"
							value="S/. ${ totalPagar-(totalPagar*0.18)}" readonly=""
							class="form-control"> <label>Descuento</label> <input
							type="text" readonly="" value="S/. 0.00" class="form-control">
						<label>Total Pagar</label> <input type="text"
							value="S/. ${totalPagar }" readonly="" class="form-control">
					</div>
					<div class="car-footer">

						<a class="btn btn-danger btn-block">Generar Compra</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="sweetalert2.min.js"></script>
	<script src="js/carrito.js"></script>
	<link rel="stylesheet" href="sweetalert2.min.css">

</body>
</html>