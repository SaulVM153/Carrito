<%-- 
    Document   : cerrarsesion
    Created on : 30/05/2020, 08:38:17 PM
    Author     : Equipo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<% HttpSession sesionOk = request.getSession();sesionOk.invalidate();%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cerrar Sesion - Tienda de Articulos de Decoracion</title>
    </head>
    <body>
        <jsp:forward page="iniciarsesion.jsp"/>
    </body>
</html>
