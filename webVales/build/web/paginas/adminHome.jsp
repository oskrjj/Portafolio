<%-- 
    Document   : adminHome
    Created on : 24-sep-2017, 23:10:16
    Author     : Malandragem
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.io.File"%>

<%@page import="java.util.List"%>

<%@page import="Dto.EmpleadoDto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession ss = request.getSession();
    String rut = (String) ss.getAttribute("sesionRut");
    EmpleadoDto dto = new EmpleadoDto();
    String nombre;
    nombre = dto.ObtenerNombre(rut);
    //String nombre = (String) ss.getAttribute("sesionNombre");
    ss.setAttribute("rut", rut);

%>
<!DOCTYPE html>
<html>
    <head>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-theme.min.css" media="screen">
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/estilo.css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <div id="divcabezera">

        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand"><%                            if (nombre != null) { %>
                        <% out.print(" Bienvenido: " + nombre + ""); %>
                        <%}

                        %>
                    </a>
                </div>

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/WebVales/paginas/login.jsp"id="logout" 
                           onclick="Logout()"><span class="glyphicon glyphicon-log-out">
                            </span> Cerrar Session</a>
                    </li>
                </ul>
            </div>
        </nav>    
    </div>
</head>
<div id="tituloAdmin">
    <h1 class="text-danger"style="text-align:center; ">
        Menu Administrador
    </h1>  
</div>  
<body>

    <div class="container" >
        <div class="panel panel-default">
            <div id="carruselImagenes" class="carousel slide" data-ride="carousel">
           
                <ol class="carousel-indicators">
                    <li data-target="#carruselImagenes" data-slide-to="0" ></li>
                    <li data-target="#carruselImagenes" data-slide-to="1"></li>
                    <li data-target="#carruselImagenes" data-slide-to="2"></li>
                </ol>

                
                <div class="carousel-inner active" role="listbox" >
                    <div class="item active">
                        <img src="../imagenes/pitza.jpg" alt="Editorial"  class="img-responsive"
                             style="height:400px; width:100%;">
                        <div class="carousel-caption">
                            <h3>  <a href="/WebVales/paginas/adminServicios.jsp"type="button">Administrar Servicios</a></h3>                     
                        </div>
                    </div>

                    <div class="item">
                        <img src="../imagenes/editogato.jpg" alt="Servicios colacion" class="img-responsive"
                             style="width:100%; height:400px" >                       
                        <div class="carousel-caption">
                            <h3> <a href="/WebVales/paginas/adminUsuarios.jsp"type="button">Administrar Usuarios</a></h3>                         
                        </div>
                    </div>

                    <div class="item">
                        <img src="../imagenes/gallery-img4.jpg" alt="Disfruta" class="img-responsive"
                             style="height:400px; width:100%;">   
                        <div class="carousel-caption">
                            <h3> <a href="/WebVales/paginas/adminVales.jsp"type="button">Administrar Vales</a></h3>
                         
                        </div>
                    </div>

                </div>
  
                <a class="left carousel-control" href="#carruselImagenes" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carruselImagenes" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

        </div>  
    </div>   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
    integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script>
        <script>
    $(document).ready(function(){
        $('.carruselImagenes').carousel()
    });
</script>
    </script>
        
</body>
</html>
