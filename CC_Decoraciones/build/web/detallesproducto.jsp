<%-- 
    Document   : detallesproducto
    Created on : 8/06/2020, 10:28:38 AM
    Author     : Equipo
--%>

<%@page import="controlador.ControladorProductos"%>
<%@page import="clases.Productos"%>

<% int id = Integer.parseInt(request.getParameter("IdProducto"));
    Productos producto = new ControladorProductos().getProducto(id);
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
        <link rel="shortcut icon" href="images/ico/favicon.ico">
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
                                    <li><a href=""><i class="fa fa-user"></i>Cuenta</a></li>
                                    <li><a href="checkout.html">Carrito</a></li>
                                    <li><a href="cart.html">Registrar</a></li>
                                    <li><a href="login.html">Iniciar sesion</a></li>
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
                        <div class="product-details">
                            <div class="col-sm-5">
                                <div class="view-product">
                                    <img src="<%= producto.getImg_Producto()%>" alt="" />
                                </div>
                                <div id="similar-product" class="carousel slide" data-ride="carousel">
                                    <a class="left item-control" href="#similar-product" data-slide="prev">
                                        <i class="fa fa-angle-left"></i>
                                    </a>
                                    <a class="right item-control" href="#similar-product" data-slide="next">
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>

                            </div>
                            <div class="col-sm-7">
                                <div class="product-information">
                                    <img src="images/product-details/new.jpg" class="newarrival" alt="" />
                                    <h2><%= producto.getNombre_Producto()%></h2>
                                    <p>Web ID: <%= producto.getIdProducto()%></p>
                                    <img src="images/product-details/rating.png" alt="" />
                                    <form action="agregarproducto" method="post">
                                        <span>
                                            <span>US $<%= producto.getPrecio_Producto()%></span>
                                            <label>Quantity:</label>
                                            <input type="hidden" value="<%= producto.getIdProducto()%>" name="idproducto">
                                            <input type="text" value="1" id="txt-cantidad" name="cantidad"/>
                                            <button type="submit" class="btn btn-fefault cart">
                                                <i class="fa fa-shopping-cart"></i>
                                                Agregar al carrito
                                            </button>
                                        </span>
                                    </form>
                                    <p><b>Availability:</b> In Stock</p>
                                    <p><b>Condition:</b> New</p>
                                    <p><b>Brand:</b> E-SHOPPER</p>
                                    <a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
                                </div>
                            </div>
                        </div>

                        <div class="category-tab shop-details-tab">
                            <div class="col-sm-12">
                                <ul class="nav nav-tabs">
                                    <li><a href="#details" data-toggle="tab">Details</a></li>
                                    <li><a href="#companyprofile" data-toggle="tab">Company Profile</a></li>
                                    <li><a href="#tag" data-toggle="tab">Tag</a></li>
                                    <li class="active"><a href="#reviews" data-toggle="tab">Reviews (5)</a></li>
                                </ul>
                            </div>
                            <div class="tab-pane fade active in" id="reviews" >
                                <div class="col-sm-12">
                                    <ul>
                                        <li><a href=""><i class="fa fa-user"></i>EUGEN</a></li>
                                        <li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
                                        <li><a href=""><i class="fa fa-calendar-o"></i>31 DEC 2014</a></li>
                                    </ul>
                                </div>
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
                                <h2>Service</h2>
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
                                <h2>About Shopper</h2>
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
    </body>
</html>
