<%-- 
    Document   : prueba
    Created on : 04-nov-2017, 13:35:37
    Author     : Oskll
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String rut = request.getParameter("txtServicioEliminar".trim());
            %>
            <%
                out.println("Su rut es : " + rut );
                %>
                
                <a href="adminUsuarios.jsp">Volver</a>
    </body>
</html>
