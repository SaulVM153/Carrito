<%-- 
    Document   : iniciarsesion
    Created on : 8/06/2020, 11:45:50 AM
    Author     : Equipo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de Sesion - Tienda de Articulos de Decoracion</title>
        <link rel="stylesheet" href="css/estilologin.css">
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
                <h1>Iniciar Sesion</h1>
                <form name="formulario" method="post" action="VerificarClienteCCS">
                    <label for="username">Usuario</label>
                    <input type="text" id="txtUser" placeholder="Usuario" maxlength="20" ondrop="drop(event)" ondragover="allowDrop(event)">
                    <label for="password">Contraseña</label>
                    <input type="password" id="txtPassword" placeholder="Contraseña" maxlength="20" ondrop="drop(event)" ondragover="allowDrop(event)">
                    <input type="submit" value="Entrar" onclick="VerificarClienteCCS">
                    
                    <p>¿Aun no tienes cuenta? <a href="registrar.jsp">Registrate</a></p>
                    <p>¿Eres administrador? <a href="registrar.jsp">Iniciar Sesion como Administrador</a></p>
                    <p><a href="tiendacliente.jsp">Volver al Inicio</a>
                </form>  
            </div>
    </body>
</html>
