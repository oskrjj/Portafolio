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
    String nombre;
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
        <script src="../js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <link href="../css/vendor/bootstrap.min.css" type="text/css" rel="stylesheet">
        <link href="../css/jquery.bdt.css" type="text/css" rel="stylesheet">
        <script src="http://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="../js/listaServicios.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


    </head>
    <title>
        Administracion Servicios
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
                            <span class="glyphicon glyphicon-blackboard">
                            </span> Opciones Servicios </a>
                        <ul>
                            <li class="active"><a data-toggle="tab" href="#listaServicios">
                                    <span class="glyphicon glyphicon-ok">
                                    </span> Lista de Servicios  </a></li>
                            <li><a data-toggle="tab" href="#agregarServicios">
                                    <span class="glyphicon glyphicon-floppy-open">
                                    </span> Agregar Servicios   </a></li>
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
        <!------------------------------------------------------------------------------------------------------>
        <div class="container">
            <div class="tab-content">
                <div id="listaServicios" class="tab-pane fade in active text-danger">
                    <Strong>Lista de Servicios</strong>
                    <div class="container">
                        <div class="panel panel-body">
                            <table class="table table-hover" id="TablaServicios">
                                <tr class="danger">
                                    <th>ID Servicio</th>
                                    <th>Descripción</th>
                                    <th>Seleccione</th>
                                </tr>                      
                            </table>
                        </div>
                    </div>  
                    <form class="navbar-form navbar-left" role="Buscar por rut">
                        <div class="form-group" >
                            <input type="txtBuscarPorId" class="form-control" placeholder="Filtrar por ID">
                        </div>
                        <button type="submit" class="btn btn-default">Buscar</button>
                        <button type="submit" class="btn btn-success">Modificar</button>
                        <button type="submit" class="btn btn-danger ">Eliminar</button>
                    </form>
                </div>


                <!----------------------------------------------------------------------------------------->
                <div id="agregarServicios" class="tab-pane fade">
                    <Strong class="text-danger">Datos de Servicios</Strong>
                    <form method="POST" action="/WebVales/ServicioNuevo" >
                        <div  class="form-row">
                            <div class="col-sm-10">
                                <label style="color: #ff0"for="inputDescripcion" 
                                       Descripcion servicio</label>
                                <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
                                <input type="text" class="form-control"name="descripcionServicio" placeholder=" descripcion">
                            </div>
                            <div class="col-sm-10">
                                <label style="color: #ff0"for="inputIdServicio" 
                                       ID Servicio</label>
                                <span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
                                <input type="text" class="form-control" name="idServicio" placeholder="ID Servicio">
                            </div>                        
                            <input type="submit" class="btn btn-success col-lg-3 col-lg-offset-2" value="Agregar">
                            <button type="reset" class="btn btn-danger col-lg-3 col-lg-offset-0">Limpiar</button>
                        </div>

                    </form>
                </div>

                <% String mensajee = (String) request.getAttribute("mensaje");
                    if (mensajee != null) {%>
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
