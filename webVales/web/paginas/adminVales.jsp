<%-- 
    Document   : adminVales
    Created on : 27-sep-2017, 11:59:49
    Author     : Malandragem
--%>

<%@page import="Dto.EmpleadoDto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

  HttpSession ss = request.getSession();
  String rut = (String) ss.getAttribute("sesionRut");
  EmpleadoDto dto = new EmpleadoDto();
  String nombre ;
  nombre = dto.ObtenerNombre(rut);
  //String nombre = (String) ss.getAttribute("sesionNombre");
  ss.setAttribute("rut", rut);
  

  
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/estilo.css"/>
        <script src="../js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="../js/listarVales.js"> </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    
    </head>
    
    <title>
        Administracion Vales
        <%                if (rut != null) {
                out.print(nombre);
            } else {
                response.sendRedirect("login.jsp");
            }
        %>
    </title>
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand">
                        <%
                        if (nombre != null) { %>
                        <% out.print(" Bienvenido: " + nombre + ""); %>
                        <%}

                        %></a>
                </div>
                 <ul class="nav navbar-nav" id="menu_gral">
                    <li><a href="#">    
                                <span class="glyphicon glyphicon-cutlery">
                            </span> Información de Vales </a>
                        <ul>
                                   <li><a href="/WebVales/paginas/adminHome.jsp">
                                    <span class="glyphicon glyphicon-home">
                                    </span>  Volver a home </a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">     
                    <li><a href="/WebVales/paginas/login.jsp">
                            <span class="glyphicon glyphicon-log-out"></span>
                            Cerrar Session</a></li>
                </ul>
            </div>
        </nav>
<!---------------------------------------------------------------------------------------->
            <div class="container">
                <div class="tab-content">
                    <div id="listaVales" class="tab-pane fade in active">
                        <Strong class="text-danger">Lista de Servicios</strong>
                        <div class="container">
                            <div class="panel panel-body" >
                                <table class="table table-responsive table-bordered" id="TablaTickets">
                                    <tr class="danger">
                                        <th>ID Vale</th>
                                        <th>Rut Empleado</th>
                                        <th>Nombre Empleado</th>
                                        <th>Hora    </th>
                                        <th>Servicio</th>
                                        <th>Valor</th>
                                        <th>Fecha Emision</th>
                                    </tr>                     
                                </table>
                            </div>
                        </div>  

                    </div>

                </div>


                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
                integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
                </body>
                </html>
