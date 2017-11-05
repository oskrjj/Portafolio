<%-- 
    Document   : UserHHome
    Created on : 28-sep-2017, 20:15:19
    Author     : Malandragem
--%>
<%@page import="sun.security.krb5.internal.Ticket"%>
<%@page import="java.util.Calendar"%>
<%@page import="Dto.UsuarioDto"%>
<%@page import="Dto.CargoDto"%>
<%@page import="Dto.EmpleadoDto"%>
<%@page import="java.util.Date" %>
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
  String idComensal = userdto.RetornoIdComensal(rut);

  
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
        <link rel="stylesheet" href="../css/Modal.css"/>
        <script src="../js/ListarCMB.js" type="text/javascript"></script>
        <script src="../js/jquery-3.2.1.js" type="text/javascript"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>
            Administracion Usuario
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
            <nav class="navbar navbar-default">
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
         <h1 style="text-align:center;"><strong class="text-danger">Ticket</strong></h1>  
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
                <form  method="POST" action="/WebVales/AgregarTicket" name="formVale">
                    <input type="text" name="txtRut" value="<%=rut%>"  hidden="true">
                    <input type="text" name="txtNombre" value="<%=nombre%>"  hidden="true">
                    <input type="text" name="txtValor" value="<%=valor%>" hidden="true">
                    <input type="text" name="txtComensal" value="<%=idComensal%>" hidden="true" >
                <table class="table table-responsive table-bordered">
                    <tr class="danger">
                        <th>Servicios</th>
                        <th id="ServiciosEspeciales" hidden="true">Servicios Especiales</th>
                        
                    </tr>
       
                    <% if(idComensal.equals("2")){%>
                        <script>
                            $("#ServiciosEspeciales").show()
                        </script>
                    <%}%>
                        <<%if (turno.equals("1")) {%>
                            <tr>
                                <td>
                                    <select name="ddl_servicioB">
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
                                        <option value="b"> -- Seleccione Servicio Base  -- </option>
                                        <option value="Desayuno 1">  Desayuno 1   </option>
                                        <option value="Almuerzo">  Almuerzo   </option>
                                    </select>
                                </td>
                                
                             </tr>  
                            
                        <%}%>
                        <%if (turno.equals("2")) {%>
                        <td>
                                    <select name="ddl_servicioB">
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
                                        <option value="b"> -- Seleccione Servicio Base  -- </option>
                                        <option value="Cena  1">  Cena  1   </option>
                                        
                                    </select>
                                </td>
                        <%}%>
                        <%if (turno.equals("3")) {%>
                        <td>
                                    <select name="ddl_servicioB">
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
                                        <option value="b"> -- Seleccione Servicio Base  -- </option>
                                        <option value="Cena  2">  Cena  2   </option>
                                        <option value="Desayuno   2">  Desayuno   2   </option>
                                    </select>
                                </td>
                        <%}%>
                        <%if(idComensal.equals("2")){%>
                            <td>
                                <select name="ddl_servicios" >
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
                                        <option value="e"> -- Seleccione Servicio Especial -- </option>
                                    </select>
                            </td>   
                        <%}%>
                        <td>
                                <select name="ddl_servicios" hidden ="true" id="ServiciosEspeciales">
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
                                        <option value="e"> -- Seleccione Servicio Especial -- </option>
                                    </select>
                            </td> 
                        <td>
                            <input  class="btn btn-danger" type="submit" value="Generar vale"/>
                        
                        </td>
         </table>
                        
       </form>
            </div>
        </div>  
               
        <center>
            <input type="submit" class="btn btn-danger" value="Retirar Vale" onclick="AbrirModal()">
            
        </center>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>
   
</html>
