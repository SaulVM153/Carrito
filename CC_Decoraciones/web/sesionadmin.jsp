<%-- 
    Document   : sesionadmin
    Created on : 8/06/2020, 12:14:10 PM
    Author     : Equipo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de Sesion - Tienda de Articulos de Decoracion</title>
        <style type="text/css">
            header{
                background-color: #F6AE2D;
                background-position: center;
                width: 1000px;
                height: 80px;
                margin: auto;
            }
            body{
                background-color: #86BBD8;
                margin: 0;
                padding: 0;
                font-family: Arial;
            }
            .logindiv {
                width: 320px;
                height: 420px;
                background: black;
                color: white;
                top: 50%;
                left: 50%;
                position: absolute;
                transform: translate(50%, 50%);
            }
            .logindiv h1{
                margin: 0;
                padding: 0 0 20px;
                text-align: center;
                font-size: 22px;
            }
            .logindiv label{
                margin: 0;
                padding: 0;
                font-weight: bold;
                display: block;
            }
            .logindiv input{
                width: 100%;
                margin-bottom: 20px;               
            }
            .logindiv input[type="text"],
            .logindiv input[type="password"]{
                border: none;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                height: 40px;
                color: #fff;
                font-size: 16px;
            }
            .login box input[type="submit"]{
                border: none;
                outline: none;
                height: 40px;
                background: red;
                color: #fff;
                font-size: 10px;
                border-radius: 20px;               
            }
            .logindiv a{
                text-decoration: none;
                font-size: 12px;
                line-height: 20px;
                color: darkblue;
            }
        </style>
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
        <header>
            <table>
                <tr>
                    <td style=" width: 250px; text-align:left; "><a href="principal.jsp"><img src="img/Icono_inicio.png" width="80"></a></td>
                    <td style=" width: 750px; text-align: right;">
                        <a href="principal.jsp"><button name="botones">Volver al Inicio</button></a>
                </tr>
            </table>    
        </header>
        <section>
            <div class="logindiv">
                <h1>Iniciar Sesion</h1>
                <form name="formulario" method="post" action="VerificarClienteCCS">
                    <label for="username">Usuario</label>
                    <input type="text" id="txtUser" placeholder="Usuario" pattern="[a-zA-Z][0-9]{1,20}" maxlength="20" ondrop="drop(event)" ondragover="allowDrop(event)">
                    <label for="password">Contraseña</label>
                    <input type="password" id="txtPassword" placeholder="Contraseña" pattern="[a-zA-Z][0-9]{1,20}" maxlength="20" ondrop="drop(event)" ondragover="allowDrop(event)">
                    <input type="submit" value="Entrar" onclick="VerificarClienteCCS">
                    
                    ¿Aun no tienes cuenta? <a href="registrar.jsp">Registrate</a>
                    ¿Eres administrador? <a href="registrar.jsp">Iniciar Sesion como Administrador</a>

                </form>  
            </div>
        </section>
    </body>
</html>