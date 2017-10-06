]<%-- 
    Document   : adminServicios
    Created on : 06-10-2017, 18:52:16
    Author     : CETECOM
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

        <title>JSP Servicios</title>
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand">Administracion de Usurios</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a data-toggle="tab" href="#listaUsuarios">Listar Servicios</a></li>
                    <li><a data-toggle="tab" href="#agregarUsuario">Agregar servicio</a></li>
                    <li><a href="adminHome.jsp">Volver a home</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">                  
                    <li><a href="login.jsp"><span class="glyphicon glyphicon-log-out"></span> Cerrar Session</a></li>
                </ul>
            </div >
        </nav>


        <div class="container">
            <div class="tab-content">
                <div id="listaUsuarios" class="tab-pane fade in active">
                    <h2 class="text-center">Lista de Servicios</h2>
                       <div class="container">
                        <div class="panel panel-body">
                            <table class="table table-responsive table-bordered">
                                <tr class="danger">
                                    <th>ID Servicio</th>
                                    <th>Descripcion</th>
                                    

                                </tr>
                                <tr>
                                   
                                    <td>           </td>
                                    <td>           </td>

                                </tr>                       
                            </table>
                        </div>
                    </div>  
                    <button type="submit"  class="btn btn-success col-lg-12">Modificar</button>
                     <button type="submit" class="btn btn-danger col-lg-12">Eliminar</button>
                </div>
            
        </div>

    




    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
    integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>
