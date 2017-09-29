<%-- 
    Document   : CajeroHome
    Created on : 28-sep-2017, 20:17:33
    Author     : Malandragem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">  
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/estilo.css"/>
        <title>JSP Cajero</title>
    </head>
      <div id=" divcabezera    ">
        
        <div id="tituloAdmin">
          <h1 style="text-align:center;">Menu Usuario</h1>  
        </div> 
        <body>
        
            <div id="menu1"
             <ul class="nav nav-tabs">
          
            <li style="text-align:center;"><a href="#">
            <li class="glyphicon glyphicon-user"></span> Perfil</a></li>
            <li style="text-align:center;"><a href="#">
            <li class="glyphicon glyphicon glyphicon-log-in"></span> Cerrar Session</a></li>
            </ul>
            </div>
    </div>
    <br>
    
        <div  id="CuerpoPag">
        <h3 style="text-align:center;">Ya estás adentro</h3>
        <div id="idTransparente" class="index1 container"></div>
          <form action="/WebVales/ServCajero" method="POST">
                    <div  class="form-group container-fluid">
                         <label>Infomación Sucursal </label>
                        
                        
                    </div>
           </form>
        </div>
    </body>
</html>
