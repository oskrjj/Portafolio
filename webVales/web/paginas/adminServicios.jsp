<%-- 
    Document   : adminServicios
    Created on : 08-oct-2017, 19:19:59
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
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

         <title>Administracion Vales|
            <%
                if (rut != null) {
                        out.print(nombre);
                    }else{
                    response.sendRedirect("login.jsp");
                }
                %>
        </title>
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand">Administracion de Servicios</a>
                </div>
                <div class="navbar-header">
                    <a class="navbar-brand"><%
                      if (nombre!=null) { %>
                      <% out.print(" Bienvenido: "+ nombre+""); %>
                          <%}
 
                    %></a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a data-toggle="tab" href="#listaServicios">Lista de servicios</a></li>
                    <li><a data-toggle="tab" href="#buscarServicios">Buscar </a></li>
                    <li><a data-toggle="tab" href="#agregarServicios">Agregar </a></li>
                    <li><a href="/WebVales/paginas/adminHome.jsp">Volver a home</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">                  
                   <li><a href="/WebVales/paginas/login.jsp"><span class="glyphicon glyphicon-log-out"></span> Cerrar Session</a></li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <div class="tab-content">
                <div id="listaServicios" class="tab-pane fade in active">
                    <Strong>Lista de Servicios</strong>
                    <div class="container">
                        <div class="panel panel-body">
                            <table class="table table-responsive table-bordered">
                                <tr class="danger">
                                    <th>ID Servicio</th>
                                    <th>Descripción</th>
                                    <th>ID Turno</th>

                                </tr>
                                <tr>

                                    <td>    </td>
                                    <td>    </td>
                                    <td>    </td>

                                </tr>                       
                            </table>
                        </div>
                    </div>  

                </div>

                <div id="buscarServicios" class="tab-pane fade">
                    <Strong>Buscar por ID Servicio</Strong>
                    <div class="container"
                         <form class="navbar-form navbar-left" role="Buscar por rut">
                            <div class="form-inline" >
                                <input type="text" class="form-control" required 
                                       name="txtBuscarPorId" placeholder="Busca por ID">
                            </div>
                            <button type="submit" class="btn btn-default">Buscar</button>
                        </form>
                    </div>

                    <div class="container">
                        <div class="panel panel-body">
                            <table class="table table-responsive table-bordered">
                                <tr class="danger">
                                    <th>ID Servicio</th>
                                    <th>Descripción</th>
                                    <th>ID Turno</th>

                                </tr>
                                <tr>
                                    <td>    </td>
                                    <td>    </td>
                                    <td>    </td>

                                </tr>                       
                            </table>
                        </div>
                    </div> 
                    <button type="submit" class="btn btn-success col-lg-12">Modificar</button>
                    <button type="submit" class="btn btn-danger col-lg-12">Eliminar</button>
                </div>

                <!----------------------------------------------------------------------------------------->
                <div id="agregarServicios" class="tab-pane fade">
                    <Strong>Datos de Servicios</Strong>
                    <form method="POST" action="/WebVales/ServicioNuevo" >
                        <div style="text-align:center;" class="form-row">
                            <div class="col-sm-10">
                                <label class="text-info"for="inputDescripcion" >Descripcion servicio</label>
                                <input type="text" class="form-control"name="descripcionServicio" placeholder=" descripcion">
                            </div>
                            <div class="col-sm-10">
                                <label class="text-info" for="inputIdServicio" class="">ID Servicio</label>
                                <input type="text" class="form-control" name="idServicio" placeholder="ID Servicio">
                            </div>                        
                        <input type="submit" class="btn btn-success col-sm-10" value="Agregar">
                        <button type="reset" class="btn btn-danger col-sm-10">Limpiar</button>
                        </div>

                    </form>
                </div>

<% String mensajee = (String)request.getAttribute("mensaje");
                if(mensajee!=null) {%>
                <script>
                    alert("<%=mensajee%>");
                </script>
             <%}%>

            </div>
        </div>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script src="http://code.jquery.com/jquery-latest.js"></script>

    </body>
</html>
