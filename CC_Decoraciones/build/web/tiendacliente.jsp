<%-- 
    Document   : tiendacliente
    Created on : 8/06/2020, 09:42:25 AM
    Author     : Equipo
--%>
<%@page import="controlador.ControladorProductos"%>
<%
    ControladorProductos cp = new ControladorProductos();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda de Articulos de Decoracion</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">    
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    </head>
    <body>
        <header id="header">
            <div class="header-middle">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8">
                            <div class="shop-menu pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="tiendacliente.jsp">Inicio</a></li>
                                    <li><a href="">Cuenta</a></li>
                                    <li><a href="carrito.jsp">Carrito</a></li>
                                    <li><a href="registrocliente.jsp">Registrar</a></li>
                                    <li><a href="iniciarsesion.jsp">Iniciar sesion</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-9 padding-right">
                        <div class="features_items">
                            <h2 class="title text-center">Producto a la venta</h2>

                            <%= cp.getProductos()%>

                            <ul class="pagination">
                                <li class="active"><a href="">1</a></li>
                                <li><a href="">2</a></li>
                                <li><a href="">3</a></li>
                                <li><a href="">&raquo;</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <footer id="footer">
            <div class="footer-widget">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Servicios</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="">Ayuda</a></li>
                                    <li><a href="">Contacto</a></li>
                                    <li><a href="">Estatus</a></li>
                                    <li><a href="">ubicacion</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>SObre nosotros</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="">Informacion</a></li>
                                    <li><a href="">Historial</a></li>
                                    <li><a href="">Copyright</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <script src="js/jquery.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
