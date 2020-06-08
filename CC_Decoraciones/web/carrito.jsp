<%-- 
    Document   : carrito
    Created on : 8/06/2020, 10:56:32 AM
    Author     : Equipo
--%>
<%@page import="clases.Productos"%>
<%@page import="controlador.ControladorProductos"%>
<%@page import="clases.Articulo"%>
<%@page import="java.util.*"%>
<%
    HttpSession sesion = request.getSession(true);
    ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito de Compras - Tienda de Articulos </title>
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
                                    <li><a href="">Cuenta</a></li>
                                    <li><a href="carrito.jsp">Carrito</a></li>
                                    <li><a href="registrar.jsp">Registrarse</a></li>
                                    <li><a href="iniciarsesion.jsp">Iniciar sesion</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <section id="cart_items">
            <div class="container">
                <div class="table-responsive cart_info" id="cart-container">
                    <table class="table table-condensed" id="shop-table">
                        <thead>
                            <tr class="cart_menu">
                                <td class="image">Numero</td>
                                <td class="description"></td>
                                <td class="price">Precio</td>
                                <td class="quantity">Unidades</td>
                                <td class="total">Total</td>
                                <td></td>
                            </tr>
                        </thead>
                        <tbody>


                            <%
                                ControladorProductos cp = new ControladorProductos();
                                double total = 0;
                                if (articulos != null) {
                                    for (Articulo a : articulos) {
                                        Productos producto = cp.getProducto(a.getIdProducto());
                                        total += a.getCantidad() * producto.getPrecio_Producto();


                            %>

                            <tr>
                                <td class="cart_product">
                                    <a href=""><img src="<%= producto.getImg_Producto()%>" alt="" width="120"></a>
                                </td>
                                <td class="cart_description">
                                    <h4><a href=""><%= producto.getNombre_Producto()%></a></h4>
                                    <p>Web ID: <%= producto.getIdProducto()%></p>
                                </td>
                                <td class="cart_price">
                                    <p>$<%= producto.getPrecio_Producto()%></p>
                                </td>
                                <td class="cart_quantity">
                                    <div class="cart_quantity_button">
                                        <a class="cart_quantity_up" href=""> + </a>
                                        <input class="cart_quantity_input" type="text" name="quantity" value="<%= a.getCantidad()%>" autocomplete="off" size="2">
                                        <a class="cart_quantity_down" href=""> - </a>
                                    </div>
                                </td>
                                <td class="cart_total">
                                    <p class="cart_total_price">$<%= Math.round(producto.getPrecio_Producto() * a.getCantidad() * 100.0) / 100.0%></p>
                                </td>
                                <td class="cart_delete">
                                    <span id="idarticulo" style="display:none;"><%= producto.getIdProducto()%></span>
                                    <a class="cart_quantity_delete" href="" id="deleteitem"><i class="fa fa-times"></i></a>
                                </td>
                            </tr>

                            <%}
                                }%>

                        </tbody>
                    </table>
                    <% if (articulos == null) {%>
                    <h4>No hay Articulos en el carro</h4>
                    <%}%>
                </div> 
                <a href="javascript:window.history.go(-2);">Seguir Comprando</a>
            </div>
        </section> 

        <section id="do_action">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="total_area">
                            <ul>
                                <li>SubTotal <span id="txt-subtotal">$<%= Math.round(total * 100.0) / 100.0%></span></li>
                                <li>Total <span id="txt-total"><%= Math.round(total * 100.0) / 100.0%></span></li>
                            </ul>
                            <a class="btn btn-default update" href="">Factura</a>
                            <a class="btn btn-default check_out" href="">Pagar</a>
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
