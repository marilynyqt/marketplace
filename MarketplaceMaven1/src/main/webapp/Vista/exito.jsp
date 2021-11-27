<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usuario Nuevo</title>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<link href="../css/exito.css" rel="stylesheet">
</head>
<body>
	
	<div class="background"></div>
<div class="container">
	<div class="row">
		<div class="modalbox success col-sm-8 col-md-6 col-lg-5 center animate">
			<div class="icon">
				<span class="glyphicon glyphicon-ok"></span>
			</div>
			<!--/.icon-->
			<h1>Success!</h1>
			<p>We've sent a confirmation to your e-mail
				<br>for verification.
			</p>
			<button type="button" class="redo btn">Ok</button>
			<span class="change">-- Click to see opposite state --</span>
		</div>
		<!--/.success-->
	</div>
	<!--/.row-->
	<div class="row">
		<div class="modalbox error col-sm-8 col-md-6 col-lg-5 center animate" style="display: none;">
			<div class="icon">
				<span class="glyphicon glyphicon-thumbs-down"></span>
			</div>
			<!--/.icon-->
			<h1>Oh no!</h1>
			<p>Oops! Something went wrong,
				<br> you should try again.
			</p>
			<button type="button" class="redo btn">Try again</button>
			<span class="change">-- Click to see opposite state --</span>
		</div>
		<!--/.success-->
	</div>
	<!--/.row-->
</div>
	<button href="Registrar.jsp" class="btn submits sign-up">
				REGRESAR</button>
<!--/.container-->
<script src="../js/exito.js"></script>
</body>
</html>