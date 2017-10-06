<%-- 
    Document   : adminUsuarios
    Created on : 27-sep-2017, 11:56:49
    Author     : Malandragem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <title>JSP Administracion de usuarios</title>
    </head>
    <body>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand">Administracion de Usurios</a>
                </div>
                <ul class="nav navbar-nav">
                     <li class="active"><a data-toggle="tab" href="#listaUsuarios">Lista de usuarios</a></li>
                    <li><a data-toggle="tab" href="#buscarUsuario">Buscar usuario</a></li>
                    <li><a data-toggle="tab" href="#agregarUsuario">Agregar usuario</a></li>
                    <li><a href="adminHome.jsp">Volver a home</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">                  
                    <li><a href="login.jsp"><span class="glyphicon glyphicon-log-out"></span> Cerrar Session</a></li>
                </ul>
            </div>
        </nav>

        <div class="container">

            <div class="tab-content">
                <div id="listaUsuarios" class="tab-pane fade in active">
                    <Strong>Lista de Usuario</strong>
                       <div class="container">
                        <div class="panel panel-body">
                            <table class="table table-responsive table-bordered">
                                <tr class="danger">
                                    <th>Rut</th>
                                    <th>Nombre Usuario</th>
                                    <th>Cargo</th>

                                </tr>
                                <tr>
                                    <td>"           "</td>
                                    <td>"           "</td>
                                    <td>"           "</td>

                                </tr>                       
                            </table>
                        </div>
                    </div>  
                    <button type="submit" class="btn btn-default">Modificar</button>
                     <button type="submit" class="btn btn-default">Eliminar</button>
                </div>
                <div id="buscarUsuario" class="tab-pane fade">
                    <Strong>Buscar por rut</Strong>
                    <br>
                    <form class="navbar-form navbar-left" role="Buscar por rut">
                        <div class="form-group" >
                            <input type="text" class="form-control" placeholder="Busca por rut">
                        </div>
                    </form>
                    <br>
                    <button type="submit" class="btn btn-default">Buscar</button>
                    <div class="container">
                        <div class="panel panel-body">
                            <table class="table table-responsive table-bordered">
                                <tr class="danger">
                                    <th>Rut</th>
                                    <th>Nombre Usuario</th>
                                    <th>Cargo</th>
                                    <th>Email</th>

                                </tr>
                                <tr>
                                    <td>"           "</td>
                                    <td>"           "</td>
                                    <td>"           "</td>

                                </tr>                       
                            </table>
                        </div>
                    </div>  
                </div>
                <div id="agregarUsuario" class="tab-pane fade">
                    <Strong>Datos Usuarios</Strong>
                    <form method="POST" name="datosUsuario" id="datosUsuario" action="./" >
                        <div class="form-row">
                            <div class="">
                                <label class="text-info"for="inputEmail4" class="">Nombre</label>
                                <input type="text" class="form-control" id="txtNombre" placeholder="Nombre">
                            </div>
                            <div class="">
                                <label class="text-info" for="inputApellido" class="">Apellido</label>
                                <input type="text" class="form-control" id="inputPassword4" placeholder="Apellido">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="text-info" for="inputApel">Cargo</label>
                            <input type="text" class="form-control" id="txtCargo" placeholder="Cargo">
                        </div>
                        <div class="from-group">
                            <label class="text-info" for="inputApel" >Email</label>
                            <input type="email" class="form-control" id="txtEmail" placeholder="Email">
                        </div>
                        
                    </form>
                     <input class="btn btn-success" type="submit" value="Agregar"/>
                </div>

            </div>
        </div>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
     
        $("#add").click(function(){
          
            var tds=$("#tabla tr:first td").length;
            /
            var trs=$("#tabla tr").length;
            var nuevaFila="<tr>";
            for(var i=0;i<tds;i++){
                // añadimos las columnas
                nuevaFila+="<td>columna "+(i+1)+" Añadida con jquery</td>";
            }
            // Añadimos una columna con el numero total de columnas.
            // Añadimos uno al total, ya que cuando cargamos los valores para la
            // columna, todavia no esta añadida
            nuevaFila+="<td>"+(trs+1)+" columnas";
            nuevaFila+="</tr>";
            $("#tabla").append(nuevaFila);
        });
 
        /**
         * Funcion para eliminar la ultima columna de la tabla.
         */
        $("#del").click(function(){
            // Obtenemos el total de columnas (tr) del id "tabla"
            var trs=$("#tabla tr").length;
            if(trs>1)
            {
                // Eliminamos la ultima columna
                $("#tabla tr:last").remove();
            }
        });
    });
    </script>
    </body>
</html>
