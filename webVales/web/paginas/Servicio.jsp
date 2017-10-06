<%-- 
    Document   : Servicio
    Created on : 29-sep-2017, 20:16:00
    Author     : Oskll
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="/WebVales/ServicioNuevo" method="POST" >
            <div>
                ID Servicio
                <input type="text" name="idServicio">
            </div>
            <div>
                Descripcion Servicio 
                <input type="text" name="descriocionServicio">
            </div>
            <div>
                <input type="submit" name="agregar" value="Agregar Servicio">
            </div>
        </form>
    </body>
</html>
