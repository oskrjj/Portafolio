<%-- 
    Document   : adminHome
    Created on : 24-sep-2017, 23:10:16
    Author     : Malandragem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/estilo.css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">




        <style>

            body {background-color:  #000\9;}
            h1   {color: buttonface;}

        </style>
        <title>JSP Admin Home</title>


        <div id="divcabezera">

            <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <li class="navbar-brand" >Servicio de Vales</li>
                </div> 
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="login.jsp"><span class="glyphicon glyphicon-out"></span> Cerrar Session</a></li>
                </ul>
            </div>
            </nav>    
        </div>
    </head>
        <div id="tituloAdmin">
            <h1 style="text-align:center;">Menu Administrador</h1>  
        </div> 
<body>

    <div class="container" >
        <div class="panel panel-default">


            <div id="adminPersonal" class="divMenu">
                <a href="/WebVales/paginas/adminUsuarios.jsp" type="button" class="btn btn-warning btn-lg btn-block">Admistrar Usuarios</a>
            </div>
            <div id="adminVales" class="divMenu">
                <a href="/WebVales/paginas/adminVales.jsp"type="button" class="btn btn-warning btn-lg btn-block">Admistrar Vales</a>
            </div>
            <!--  <div id="adminMenu" class="divMenu">
                  <a href=type="button" class="btn btn-warning btn-lg btn-block">Admistrar Menú</a>
              </div>
            -->

            <div id="adminTurnos" class="divMenu">
                <a href="adminTurnos.jsp"type="button" class="btn btn-warning btn-lg btn-block">Admistrar Turnos</a>
            </div>


        </div>                                     
    </div>   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
    integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>
