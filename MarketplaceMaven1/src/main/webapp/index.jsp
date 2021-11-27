<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Marketplace</title>
    <link href="css/principal.css" rel="stylesheet" >    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
    <header class="full-width NavBarP">
        <div class="full-width NavBarP-Logo">MARKETPLACE</div>
        <nav class="full-width NavBarP-Nav">
            <ul class="full-width list-unstyled">
                <li><a href="Vista/login.jsp">LOGIN</a></li>                
                <li><a href="Vista/map.jsp">MAPA</a></li>                
                <li><a href="<%=request.getContextPath() %>/ControladorPersonas?accion=Listar">per</a></li>                
                
            </ul>
        </nav>
        <i class="fa fa-bars visible-xs btn-menuMobile ShowMenuMobile" aria-hidden="true"></i>
    </header>

    <section class="banner">
        <div class="banner-content">
            <h1>Bienvenido a Marketplace UTP</h1>
            <a href="<%=request.getContextPath() %>/ControladorProductos?accion=Listar">Ver articulos</a>   
        </div>
    
    <script src="js/jquery-3.1.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>