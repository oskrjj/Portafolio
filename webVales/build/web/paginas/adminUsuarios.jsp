<%-- 
    Document   : adminUsuarios
    Created on : 27-sep-2017, 11:56:49
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
  
   String Empleados = dto.ListaEmpleados();
  
%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="../css/bootstrap.css"/>
        <link rel="stylesheet" href="../css/estilo.css"/>
        <script src="../js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="../js/ListaCMB.js"> </script>
        <script src="../js/listaEmpleados.js"> </script>
        
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
                    <a class="navbar-brand"><%
                      if (nombre!=null) { %>
                      <% out.print(" Bienvenido: "+ nombre+""); %>
                          <%}
 
                    %></a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a data-toggle="tab" href="#listaUsuarios">Lista de usuarios</a></li>
                    <li><a data-toggle="tab" href="#buscarUsuario">Buscar usuario</a></li>
                    <li><a data-toggle="tab" href="#agregarUsuario">Agregar usuario</a></li>
                    <li><a href="/WebVales/paginas/adminHome.jsp">Volver a home</a></li>
                    
                </ul>
                
                <ul class="nav navbar-nav navbar-right">     
                    
                    <li><a href="/WebVales/paginas/login.jsp"><span class="glyphicon glyphicon-log-out"></span> Cerrar Session</a></li>
                </ul>
            </div>
        </nav>

        <div class="container">

            <div class="tab-content">
                <div id="listaUsuarios" class="tab-pane fade in active">
                    <Strong>Lista de Usuario</strong>
                    <div class="container">
                        <div class="panel panel-body">
                            <table class="table table-responsive table-bordered" id="TablaEmpleados">
                                <tr class="danger" >
                                    <th>Rut</th>
                                    <th>Nombre Usuario</th>
                                    <th>Correo</th>
                                    <th>Seleccione</th>
                                </tr> 
                            </table>
                        </div>
                    </div>  

                </div>




                <!--------------------------------------------------------------------->
                <div id="buscarUsuario" class="tab-pane fade">
                    <Strong>Buscar por rut</Strong>
                    <br>
                    <form class="navbar-form navbar-left" role="Buscar por rut">
                        <div class="form-group" >
                            <input type="text" class="form-control" placeholder="Busca por rut">
                        </div>
                        <button type="submit" class="btn btn-default">Buscar</button>
                    </form>

                    <div class="container">
                        <div class="panel panel-body">
                            <table class="table table-responsive table-bordered">
                                <tr class="danger">

                                    <th>Nombre Usuario</th>
                                    <th>Rut</th>
                                    <th>Cargo</th>


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

                <!-------------------------------------------------------------------------------------->
                <div id="agregarUsuario" class="tab-pane fade">
                    <Strong>Datos Usuarios</Strong>
                    <form action="/WebVales/NuevoUser" method="POST"  >
                        <div class="form-horizontal">
                            
                            <div class="col-sm-10">
                                  <label class="text-info"for="inputNombreCompleto" class="col-xs-3">Nombre completo</label>
                                  <input type="text" class="form-control" name="txtNombre" placeholder="ej: Bruno Matias Diaz Gomez">
                            </div>
                            <div class="col-sm-10">
                                <label class="text-info bg-primary"for="inputRut" class="col-xs-3">Rut</label>
                                <input type="text" class="form-control" name="txtRut" placeholder="Rut">
                            </div>
                            <div class="col-sm-10">
                                <label class="text-info bg-primary" for="inputPassword" class="col-xs-3">Contraseña</label>
                                <input type="password" class="form-control" name="txtPassword" placeholder="password">
                            </div>
                             <div class="col-sm-10">
                                <label class="text-info bg-primary" for="inputPassword" class="col-xs-3">Repita Contraseña </label>
                                <input type="password" class="form-control" name="txtPassword2" placeholder="password">
                            </div>
                            <div class="col-sm-10">
                                <label class="text-info bg-primary" for="inputCorreo" class="col-xs-3">Correo</label>
                                <input type="email" class="form-control" name="txtCorreo" placeholder="Correo">
                            </div>
                        </div>

                        <div class="col-sm-5">
                            <label class="text-info bg-primary" for="inputCorreo" class="col-xs-3">Tipo Usuario</label>
                                <select name="ddl_tipo" class="select2" data-allow-clear="true" data-placeholder="" id="ddl_sexo" style="display: block;
                                width: 100%;
                                height: 34px;
                                padding: 6px 12px;
                                font-size: 14px;
                                line-height: 1.42857143;
                                color: #555;
                                background-color: #fff;
                                background-image: none;
                                border: 1px solid #ccc;
                                border-radius: 4px;">
                                <option value=""> -- Seleccione Tipo de Usuario -- </option>
                                
                        </select>

                        </div>
                        <div class="col-sm-5">
                            <label class="text-info bg-primary" for="inputCorreo" class="col-xs-3">Turno</label>
                                <select name="ddl_turno" class="select2" data-allow-clear="true" data-placeholder="" id="ddl_sexo" style="display: block;
                                width: 100%;
                                height: 34px;
                                padding: 6px 12px;
                                font-size: 14px;
                                line-height: 1.42857143;
                                color: #555;
                                background-color: #fff;
                                background-image: none;
                                border: 1px solid #ccc;
                                border-radius: 4px;">
                                <option value=""> -- Seleccione Turno Usuario  -- </option>
                                                                                        
                            </select>

                        </div>
                        <div class="col-sm-5">
                            <label class="text-info bg-primary" for="inputCorreo" class="col-xs-3">Cargo Empleado</label>
                                <select name="ddl_cargo" class="select2" data-allow-clear="true" data-placeholder="" id="ddl_sexo" style="display: block;
                                width: 100%;
                                height: 34px;
                                padding: 6px 12px;
                                font-size: 14px;
                                line-height: 1.42857143;
                                color: #555;
                                background-color: #fff;
                                background-image: none;
                                border: 1px solid #ccc;
                                border-radius: 4px;">
                                <option value=" "> -- Seleccione Cargo -- </option>
                                
                                                            
                                                        </select>

                        </div>
                        <div class="col-sm-5">
                            <label class="text-info bg-primary" for="inputCorreo" class="col-xs-3">Tipo comensal</label>
                                <select name="ddl_comensal" class="select2" data-allow-clear="true" data-placeholder="" id="ddl_sexo" style="display: block;
                                width: 100%;
                                height: 34px;
                                padding: 6px 12px;
                                font-size: 14px;
                                line-height: 1.42857143;
                                color: #555;
                                background-color: #fff;
                                background-image: none;
                                border: 1px solid #ccc;
                                border-radius: 4px;">
                                <option value=""> -- Seleccione Tipo Comensal  -- </option>
                               
                                
                                
                                                            
                                                        </select>

                        </div>


                        <!--   <div class="col-sm-10">
                               <label class="text-info" for="inputEmail" class="col-xs-3" >Email</label>
                               <input type="email" class="form-control" id="txtEmail" placeholder="Email">
                           </div> -->
                        <div class="col-sm-10">
                            <input class="btn btn-success btn btn-primary col-sm-8" type="submit" value="Agregar"/>
                            <button type="reset" class="btn btn-info col-sm-8">Limpiar</button>
                        </div>

                    </form>

                </div>
<% String mensaje = (String)request.getAttribute("mensaje");
                if(mensaje!=null) {%>
                <script>
                    alert("<%=mensaje%>");
                </script>
             <%}%>
            </div>
        </div>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {

                $("#add").click(function () {

                    var tds = $("#tabla tr:first td").length;
                            /
                var trs=$("#tabla tr").length;
                    var nuevaFila = "<tr>";
                    for (var i = 0; i < tds; i++) {
                        // añadimos las columnas
                        nuevaFila += "<td>columna " + (i + 1) + " Añadida con jquery</td>";
                    }
                    // Añadimos una columna con el numero total de columnas.
                    // Añadimos uno al total, ya que cuando cargamos los valores para la
                    // columna, todavia no esta añadida
                    nuevaFila += "<td>" + (trs + 1) + " columnas";
                    nuevaFila += "</tr>";
                    $("#tabla").append(nuevaFila);
                });

                /**
                 * Funcion para eliminar la ultima columna de la tabla.
                 */
                $("#del").click(function () {
                    // Obtenemos el total de columnas (tr) del id "tabla"
                    var trs = $("#tabla tr").length;
                    if (trs > 1)
                    {
                        // Eliminamos la ultima columna
                        $("#tabla tr:last").remove();
                    }
                });
            });


        </script>



    </body>
</html>
