<%-- 
    Document   : UserHHome
    Created on : 28-sep-2017, 20:15:19
    Author     : Malandragem
--%>
<%@page import="java.util.Calendar"%>
<%@page import="Dto.UsuarioDto"%>
<%@page import="Dto.CargoDto"%>
<%@page import="Dto.EmpleadoDto"%>
<%@page import="java.util.Date" %>@
<%@page import="java.util.GregorianCalendar" %>
<%

  HttpSession ss = request.getSession();
  String rut = (String) ss.getAttribute("sesionRut");
  EmpleadoDto dtoempleado = new EmpleadoDto();
  CargoDto dtocargo = new CargoDto();
  UsuarioDto userdto = new UsuarioDto();
  int valor = dtocargo.obtenerValor(dtoempleado.obtenerCargoID(rut));
  String turno = dtoempleado.obtenerTurno(rut);
  String nombre ;
  nombre = dtoempleado.ObtenerNombre(rut);
  //String nombre = (String) ss.getAttribute("sesionNombre");
  ss.setAttribute("rut", rut);
  

  
%>
<%
   Calendar fecha = new GregorianCalendar();
   int day = fecha.get(Calendar.DATE);
   int month = fecha.get(Calendar.MONTH)+1;
   int years = fecha.get(Calendar.YEAR);
   String date = day + " / " + month + " / " + years; 
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="../css/bootstrap.css"/>
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
    
        <style>
           
            <%-- body {background-color:  #000\9;} --%>
            h1   {color: #0f0f0f;}
            li {color: black;}
            li {font-size: large}
           
        </style>
        
        <div id="divcabezera">
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" >Servicio de Vales</a>
                    </div> 
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/WebVales/paginas/login.jsp"><span class="glyphicon glyphicon-log-out"></span> Cerrar Session</a></li>
                    </ul>
                </div>
            </nav>
           
        </div>
      
    </head>
    <body>  
         <h1 style="text-align:center;"><strong>Ticket</strong></h1>  
        <div class="container">
            <div class="panel panel-body">
        <table class="table table-responsive table-bordered">
                    <tr class="danger">
                        <th>Rut</th>
                        <th>Nombre Usuario</th>
                        <th>Valor vale</th>
                        <th>Fecha<th>
                    </tr>
       
                    <tr>
                        
                        <td> <% out.print(rut); %>   </td>
                        
                        <td> <% out.print(nombre); %>  </td>
                        
                        <td> <% out.print(valor);%>  </td>
                        
                        <td> <% out.print(date);%>  </td>
                        
                        
                    </tr>                       
        </table>
            </div>
        </div>  
         
        <div class="container">
            <div class="panel panel-body">
                <form  method="POST" action="ServAdminVale.java" name="formVale">
        <table class="table table-responsive table-bordered">
                    <tr class="danger">
                        <th>Turno</th>
                        <th>Servicios</th>
                        <th>Seleccione</th>
                    </tr>
       
                   
                        <%if (turno.equals("1")) {%>
                            <tr>
                                <td> Turno 1   </td>
                                <td> Desayuno 1  </td>
                                <td><input type="radio" name="servicio" value="servicio" ></td>
                             </tr>  
                             <tr>
                                <td> Turno 1   </td>
                                <td> Almuerzo   </td>
                                <td><input type="radio" name="servicio" value="servicio" ></td>
                             </tr>
                        <%}%>
                        <%if (turno.equals("2")) {%>
                            <tr>
                                <td> Turno 2   </td>
                                <td> Cena 1  </td>
                                <td><input type="radio" name="servicio" value="servicio" ></td>
                             </tr>  
                             
                        <%}%>
                        <%if (turno.equals("3")) {%>
                            <tr>
                                <td> Turno 3   </td>
                                <td> Cena 2  </td>
                                <td><input type="radio" name="servicio" value="servicio" ></td>
                             </tr>  
                             <tr>
                                <td> Turno 3   </td>
                                <td> Desayuno 2   </td>
                                <td><input type="radio" name="servicio" value="servicio" ></td>
                             </tr>
                        <%}%>
                        
                                                   
        </table>
       </form>
            </div>
        </div>  
        <center>
            <input class="btn btn-danger" type="submit" value="Generar vale"/>
        </center>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>
   
</html>
