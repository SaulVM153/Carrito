<%-- 
    Document   : registrarAdmin
    Created on : 30/05/2020, 07:45:06 PM
    Author     : Equipo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Administrador - Tienda de Articulos de Decoracion</title>
        <link rel="stylesheet" href="css/estiloregistro.css">
        <script>
            function dragStart(event) {
                event.dataTransfer.setData("Text", event.target.id);
                document.getElementById("demo").innerHTML = "Started to drag the p element";
            }

            function allowDrop(event) {
                event.preventDefault();
            }

            function drop(event) {
                event.preventDefault();
                var data = event.dataTransfer.getData("Text");
                event.target.appendChild(document.getElementById(data));
                document.getElementById("demo").innerHTML = "The p element was dropped";
            }
        </script>
    </head>
    <body>
        <div class="logindiv">
            <br>
            <h1>Registro de Administrador</h1>
            <form name="formulario" method="post" action="VerificarClienteCCS">
                <input type="text" id="nombrecliente" placeholder="Nombre" pattern="[a-zA-Z]{1,20}" maxlength="20" ondrop="drop(event)" ondragover="allowDrop(event)">
                <input type="text" id="apellidocliente" placeholder="Apellido" pattern="[a-zA-Z]{1,30}" maxlength="30" ondrop="drop(event)" ondragover="allowDrop(event)">
                <input type="text" id="usercliente" placeholder="Usuario" pattern="{1,20}" maxlength="20" ondrop="drop(event)" ondragover="allowDrop(event)">
                <input type="password" id="passwordcliente" placeholder="Contraseña" pattern="{1,20}" maxlength="20" ondrop="drop(event)" ondragover="allowDrop(event)">
                <input type="date" id="fechanacliente"> 
                <input type="submit" id="enviardatos" value="Registrar" onclick="Cliente">
                <input type="reset" id="enviardatos" value="Restablecer">                    
                <p><a href="registrarAdmin.jsp">Registrarse como Cliente</a></p>
                <p><a href="tiendacliente.jsp">Volver al Inicio</a>

            </form>  
        </div>
    </body>
</html>
