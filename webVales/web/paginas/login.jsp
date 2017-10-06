<%-- 
    Document   : login
    Created on : 24-sep-2017, 23:09:23
    Author     : Malandragem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
   
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 
       
    
     <title>JSP Inicio</title>
    </head>
    
    <body>
   
        <div style="text-align:center;"class=" container boxlogin" text->
            <div class="row"
             <div id="tituloAdmin">
                 <h1 style="text-align:center;" class="text-success "><Strong>Bienvenido</Strong></h1>  
                </div> 
            <form action="/WebVales/Login" method="POST">
               
                <div class="input-group">
                    
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input id="rutUsuario" type="text" class="form-control" required 
                           name="txtRutUsuario" placeholder="Rut">
                   
                </div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input id="password" type="password" class="form-control" name="password" placeholder="Password">
                </div>
                <input class="btn btn-danger" type="submit" value="Entrar"/>

            </form>
            <a id="link" href="">¿Recuperar contraseña?</a>

            </div>
        </div>

        <style>
            
            .boxlogin
            {

                height: 200px;
                width: 30%;
              


            }
        </style>
     
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
    integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </body>
 </html>


