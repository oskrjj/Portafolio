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
      
 
         <style>
           
            body {background-color:  #000\9;}
            h1   {color: buttonface;}
           
        </style>
        <title>JSP Admin Home</title>
    </head>
    <div id="divcabezera">
        
        <div id="tituloAdmin">
          <h1 style="text-align:center;">Menu Administrador</h1>  
        </div> 
    <body
                <ul class="nav nav-tabs">
            <li style="text-align:center;" class="active"><a href="#"><span class="glyphicon glyphicon-home"></span>Home</a></li>
            <li style="text-align:center;"><a href="#">
               <span class="glyphicon glyphicon-user"></span> Perfil</a></li>
            <li style="text-align:center;"><a href="#">
               <span class="glyphicon glyphicon glyphicon-log-in"></span> Cerrar Session</a></li>
                </ul>
    </div>
    <br>
     
          <div class="container" >
            <div class="panel panel-default">
                <div class="panel-body">
                    
                    <div id="adminPersonal" class="divMenu">
                        <button type="button" class="btn btn-primary btn-lg btn-block">Admistrar Usuarios</button>
                    </div>
                    <div id="adminVales" class="divMenu">
                        <button type="button" class="btn btn-primary btn-lg btn-block">Admistrar Vales</button>
                    </div>
                    <div id="adminMenu" class="divMenu">
                         <button type="button" class="btn btn-primary btn-lg btn-block">Admistrar Menú</button>
                    </div>
                    
                    <div id="adminTurnos" class="divMenu">
                         <button type="button" class="btn btn-primary btn-lg btn-block">Admistrar Turnos</button>
                    </div>
                 
                </div>
            </div>                                     
        </div>   
   
    </body>
</html>
