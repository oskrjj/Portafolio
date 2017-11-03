<%-- 
    Document   : RecuperarContraseña
    Created on : 20-10-2017, 9:03:59
    Author     : CETECOM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <script src="../js/jquery-3.2.1.min.js" ></script>
        <link rel="stylesheet" href="../css/estilo.css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>JSP Recuperar Contraseña</title>
    </head>
    <body>


        <div style="text-align:center;" class="container  " >
            <h2 class="lowercase">Ingresa tu correo</h2>
            <div class="form-group col-md-offset-4 " >
                <form class="navbar-form navbar-left" role="recuperarC">
                    <div class="input-group" >
                        <span class="input-group-addon">@</span> 
                        <input type="text" class="form-control" placeholder="Email">
                    </div>
                    <button type="submit" class="btn btn-danger">Enviar</button>  
                    <a href="login.jsp"type="button" class="btn btn-success">Volver</a>
                </form>
            </div>
        </div>





    </body>
</html>
